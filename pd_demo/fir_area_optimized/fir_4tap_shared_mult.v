module fir_4tap_shared_mult (
    input clk,
    input rst,
    input sample_valid,
    output sample_ready,
    input [7:0] xin,
    output yout_valid,
    output reg [17:0] yout
);
 
reg [7:0] x1, x2, x3;
reg [7:0] s0, s1, s2, s3;
reg [17:0] acc;
reg valid_reg;
reg [2:0] state;
 
parameter IDLE = 3'b000;
parameter T0   = 3'b001;
parameter T1   = 3'b010;
parameter T2   = 3'b011;
parameter T3   = 3'b100;
parameter OUT  = 3'b101;
 
assign sample_ready = (state == IDLE);
assign yout_valid   = valid_reg;
 
always @(posedge clk or posedge rst) begin
    if (rst) begin
        x1        <= 8'd0;
        x2        <= 8'd0;
        x3        <= 8'd0;
        s0        <= 8'd0;
        s1        <= 8'd0;
        s2        <= 8'd0;
        s3        <= 8'd0;
        acc       <= 18'd0;
        yout      <= 18'd0;
        valid_reg <= 1'b0;
        state     <= IDLE;
    end else begin
        valid_reg <= 1'b0;
 
        case (state)
            IDLE: begin
                if (sample_valid) begin
                    s0    <= xin;
                    s1    <= x1;
                    s2    <= x2;
                    s3    <= x3;
                    x3    <= x2;
                    x2    <= x1;
                    x1    <= xin;
                    acc   <= 18'd0;
                    state <= T0;
                end
            end
 
            T0: begin
                // 4 * x[n]
                acc   <= (s0[7] == 1'b0) ? (s0 * 4) : ((s0 - 256) * 4);
                state <= T1;
            end
 
            T1: begin
                // 3 * x[n-1]
                acc   <= (s1[7] == 1'b0) ? (acc + (s1 * 3)) : (acc + ((s1 - 256) * 3));
                state <= T2;
            end
 
            T2: begin
                // -1 * x[n-2]
                acc   <= (s2[7] == 1'b0) ? (acc - s2) : (acc - (s2 - 256));
                state <= T3;
            end
 
            T3: begin
                // -2 * x[n-3]
                acc   <= (s3[7] == 1'b0) ? (acc - (s3 * 2)) : (acc - ((s3 - 256) * 2));
                state <= OUT;
            end
 
            OUT: begin
                yout      <= acc;
                valid_reg <= 1'b1;
                state     <= IDLE;
            end
 
            default: state <= IDLE;
        endcase
    end
end
 
endmodule
 
