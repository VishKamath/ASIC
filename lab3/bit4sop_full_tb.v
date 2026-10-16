module bit4sop_full_tb;

reg [3:0] a, b, c, d;
wire y;

bit4sop uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .y(y)
);
initial begin
    a = 4'b1111; b = 4'b1111; c = 4'b1111; d = 4'b0000; #10;
    a = 4'b0000; b = 4'b0000; c = 4'b0000; d = 4'b0000; #10;
    a = 4'b0000; b = 4'b1111; c = 4'b1111; d = 4'b1111; #10;
    a = 4'b1111; b = 4'b0000; c = 4'b1111; d = 4'b0000; #10;
    a = 4'b1111; b = 4'b1111; c = 4'b0000; d = 4'b1111; #10;
    $finish;
end

endmodule

