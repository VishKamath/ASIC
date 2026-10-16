module fa_tb_expression;
reg a,b,cin;
wire sum,cout;
fa uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin 
$monitor("%0t ns a=%0b b=%0b cin=%0b sum=%0b cout=%0b",$time,a,b,cin,sum,cout);
a=1'b0;b=1'b0;cin=1'b0;#10;
a=1'b0;b=1'b0;cin=1'b1;#10;
a=1'b0;b=1'b1;cin=1'b0;#10;
a=1'b0;b=1'b1;cin=1'b1;#10;
a=1'b1;b=1'b0;cin=1'b0;#10;
a=1'b1;b=1'b0;cin=1'b1;#10;
a=1'b1;b=1'b1;cin=1'b0;#10;
a=1'b1;b=1'b1;cin=1'b1;#10;
$finish;
end
endmodule
