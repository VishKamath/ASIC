module fa(a,b,cin,sum,cout);
input wire a,b,cin;
output reg sum,cout;
always @(*) begin
	sum =a ^b^cin;
	cout=(a & b) | (b & cin) | (cin & a);
  end
endmodule
