module seq_detector_101(
    input wire clk,
    input wire reset,
    input wire din,
    output reg dout
);

    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;

    reg [1:0] state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    always @(*) begin
        case (state)
            S0: begin
                dout = 1'b0;
                if (din) next_state = S1;
                else     next_state = S0;
            end
            S1: begin
                dout = 1'b0;
                if (din) next_state = S1;
                else     next_state = S2;
            end
            S2: begin
                if (din) begin
                    dout = 1'b1;
                    next_state = S1;
                end else begin
                    dout = 1'b0;
                    next_state = S0;
                end
            end
            default: begin
                dout = 1'b0;
                next_state = S0;
            end
        endcase
    end

endmodule
 
