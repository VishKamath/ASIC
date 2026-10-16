module alu_good #(
    parameter DATA_WIDTH = 4,
    parameter OP_WIDTH   = 2
)(
    input  wire [DATA_WIDTH-1:0] a,
    input  wire [DATA_WIDTH-1:0] b,
    input  wire [OP_WIDTH-1:0]   op,
    output reg  [DATA_WIDTH-1:0] y
);
 
    always @(*) begin : ALU_PROC
        case (op)
            2'b00: y = (a + b)[3:0]; // Explicit truncation prevents overflow warning (POIASG)
            2'b01: y = a - b;
            2'b10: y = a & b;
            default: y = a | b;      // Covers 2'b11 and handles all remaining states
        endcase
    end
 
endmodule
