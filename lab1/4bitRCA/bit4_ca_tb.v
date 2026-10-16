module bit4_ca_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;

    wire [3:0] Sum;
    wire Cout;

    bit4_ca uut (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .Sum(Sum), 
        .Cout(Cout)
    );
	initial begin
        $monitor("Time=%0d ns | A=%b (%d) | B=%b (%d) | Cin=%b || Sum=%b (%d) | Cout=%b", 
                 $time, A, A, B, B, Cin, Sum, Sum, Cout);

        A = 4'b0000; B = 4'b0000; Cin = 1'b0;
        #10;
        
        A = 4'd5;    B = 4'd3;    Cin = 1'b0;
        #10;
 
        A = 4'd5;    B = 4'd3;    Cin = 1'b1;
        #10;
 
        A = 4'b0111; B = 4'b0001; Cin = 1'b0;
        #10;
        A = 4'b1111; B = 4'b1111; Cin = 1'b1;
        #10;
        
        A = 4'd12;   B = 4'd5;    Cin = 1'b0;
        #10;

        $finish;
    end
      
endmodule
