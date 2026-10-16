module bit4_ca (A,B,Cin,Sum,Cout);
input [3:0] A;
input [3:0] B;
input Cin;
output [3:0] Sum;
output Cout;
wire C1,C2,C3;
fa fa0 (.a(A[0]),.b(B[0]),.cin(Cin),.sum(Sum[0]),.cout(C1));
fa fa1 (.a(A[1]),.b(B[1]),.cin(C1),.sum(Sum[1]),.cout(C2));
fa fa2 (.a(A[2]),.b(B[2]),.cin(C2),.sum(Sum[2]),.cout(C3));
fa fa3 (.a(A[3]),.b(B[3]),.cin(C3),.sum(Sum[3]),.cout(Cout));
endmodule

