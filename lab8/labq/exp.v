module exp_comb (
    input  wire [7:0]  A,
    input  wire [7:0]  B,
    input  wire [7:0]  C,
    input  wire [7:0]  D,
    output wire [16:0] y
);

    assign y = (A * B) + (C * D);

endmodule
