module seq_alu(
    input clk, rst,
    input [1:0] op,
    input [3:0] a, b,
    output reg [3:0] out,
    output reg carry
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            out <= 4'b0;
            carry <= 1'b0;
        end else begin
            case (op)
                2'b00: {carry, out} <= a + b;         // ADD
                2'b01: {carry, out} <= a - b;         // SUB
                2'b10: begin out <= a & b; carry <= 0; end // AND
                2'b11: begin out <= a | b; carry <= 0; end // OR
            endcase
        end
    end
endmodule
