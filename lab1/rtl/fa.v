module fa(a,b,cin,sum,cout);
input a,b,c,in;
output sum,cout;
assign sum=(a^b^cin);
assign cout=((a&b)|(b&cin)|(c&a));
endmodule
