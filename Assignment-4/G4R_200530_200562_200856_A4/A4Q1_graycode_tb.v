`timescale 1ns/1ns
`include "A4Q1_graycode.v"

module testbench;
reg clk;
wire [2:0] count;

graycode uut(clk,count);

always #5 clk=~clk;   // clock changes in 5 unit time

initial begin
    // initialising the clock
    clk=1'b0;
    #100 $finish;
end

initial begin
    // output
    $dumpfile("A4Q1_graycode_tb.vcd");
    $dumpvars(0,testbench);
    // counter works at the posedge of the clock
    $monitor("%0d count = %b", $time,count);
end

endmodule