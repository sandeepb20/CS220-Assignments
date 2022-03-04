`timescale 1ns/1ns
`include "graycode.v"

module testbench;
reg clk;
wire [2:0] count;

graycode uut(clk,count);

always #5 clk=~clk;

initial begin
    clk=1'b0;
    #100 $finish;
end

initial begin
    $dumpfile("graycode_tb.vcd");
    $dumpvars(0,testbench);
    $monitor("%0d count = %b", $time,count);
end

endmodule