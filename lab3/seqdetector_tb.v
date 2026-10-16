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
        
        din = 1; #10; // Transitions IDLE -> GOT_1
        din = 1; #10; // Transitions GOT_1 -> GOT_1
        din = 0; #10; // Transitions GOT_1 -> GOT_10
        din = 1; #10; // Transitions GOT_10 -> GOT_1 (Hits pattern, dout=1)
        din = 0; #10; // Transitions GOT_1 -> GOT_10
        din = 0; #10; // Transitions GOT_10 -> IDLE
        din = 0; #10; // Transitions IDLE -> IDLE
        
        #20;
        $finish;
    end

endmodule
