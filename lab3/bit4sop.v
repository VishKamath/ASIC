module bit4sop(a,b,c,d,y);
input wire [3:0] a,b,c,d;
output wire [3:0] y;
assign y=(a&b&c) | (b&c&d);
endmodule
