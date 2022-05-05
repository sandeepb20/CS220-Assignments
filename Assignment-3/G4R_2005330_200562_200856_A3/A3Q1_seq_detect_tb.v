`timescale 1ps/1ps
`include "A3Q1_seq_detect.v"

module testbench;

    reg clk=0;
    reg in;
    wire out;

    seq_detect uut(clk,in,out);

    always #5 clk=~clk;
    initial begin
        $dumpfile("A3Q1_seq_detect.vcd");
        $dumpvars(0,testbench);
        in=1;#5;
        $display("After processing one bit from input stream out = %b",out);
        in=1;#5;
        $display("After processing one bit from input stream out = %b",out);
        in=0;#5;
        $display("After processing one bit from input stream out = %b",out);
        in=1;#5;
        $display("After processing one bit from input stream out = %b",out);
        in=0;#5;
        $display("After processing one bit from input stream out = %b",out);
        in=1;#5;
        $display("After processing one bit from input stream out = %b",out);
        in=0;#5;
        $display("After processing one bit from input stream out = %b",out);
        in=1;#5;
        $display("After processing one bit from input stream out = %b",out);
        in=0;#5;
        $display("After processing one bit from input stream out = %b",out);
        in=1;#5;
        $display("After processing one bit from input stream out = %b",out);
        in=1;#5;
        $display("After processing one bit from input stream out = %b",out);
        $display("end of test and open gtkwave");
        $finish;
    end
endmodule