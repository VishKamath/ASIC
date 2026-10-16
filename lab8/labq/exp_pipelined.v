module exp_pipelined (
    input  wire        clk,
    input  wire        rst_in,
    input  wire [7:0]  A, B, C, D,
    output reg  [16:0] y
);
    reg [15:0] prod1;
    reg [15:0] prod2;

    always @(posedge clk or negedge rst_in) begin
        if (!rst_in) begin
            prod1 <= 16'd0;
            prod2 <= 16'd0;
            y     <= 17'd0;
        end else begin

            prod1 <= A * B;
            prod2 <= C * D;


            y     <= prod1 + prod2;
        end
    end
endmodule
