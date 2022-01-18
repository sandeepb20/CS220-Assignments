`timescale 1ps/1ps
`include "RippleAdd.v"

module tb();
    reg[7:0] A,B;
    wire[7:0] S;
    wire Cout;
    Ripple_Add ra(S, Cout, A, B);
    initial 
    begin
        $dumpfile("RippleAdd_tb.vcd");
        $dumpvars(0,tb);
        A = 8'd0;
        B = 8'd0;
       // #10 B = 8'b0001;
        #5; A = 1; 
        #5; B = 1;
        #10; A = 2;
        #10; B = 2;
        #10; B = 3;
        #10; A = 4;
        #10; A = 5;
        #10; B = 4;
        #10; B = 5;
        #10; A = 6;
        #10; B = 6;
        #10; A = 7;
        #10; B = 7;
        #10; A = 8;
        #10; B = 8;
        #10; A = 30;
        #10; B = 30;
        #10;
        $finish;

    end

endmodule