module seqdetector_full_tb;

    reg clk;
    reg reset;
    reg din;
    wire dout;

    seqdetector uut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .dout(dout)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        reset = 1;
        din = 0;
        #15;
        
        reset = 0;
        #10;
        
        din = 0; #10;
        din = 1; #10;
        din = 1; #10;
        din = 0; #10;
        din = 1; #10;
        din = 0; #10;
        din = 0; #10;
        
        #20;
        $finish;
    end

endmodule

