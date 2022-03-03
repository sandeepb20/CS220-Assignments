`timescale 1ns/1ns
`include "twocomp.v"

module testbench;

reg [7:0] A,B;
reg opcode;
wire [7:0] res;
wire cout, flag;

eightbit uut(A,B,opcode,res,cout,flag);

initial begin
    $dumpfile("twocomp_tb.vcd");
    $dumpvars(0,testbench);
    opcode=0;
    A = 8'd0;B = 8'd0;#5
    A = 8'd1; B = 8'd10 ;#5;
    A = 5; B = 15 ;#5;
    A = 7; B =  20;#5;
    A = 10; B = 30 ;#5;
    A = 15; B = 40 ;#5;
    A = 20; B = 50 ;#5;
    A = 25; B = 60 ;#5;
    A = 26; B = 70 ;#5;
    A = 31; B = 80 ;#5;
    A = 34; B = 90 ;#5;
    A = 37; B = 100 ;#5;
    A = 40; B = 110 ;#5;
    A = 50; B = 120 ;#5;
    A = 53; B = 130 ;#5;
    A = 65; B = 140 ;#5;
    A = 80; B = 150 ;#5;
    A = 100; B = 155;#5;
    A = 100; B = 200;#5;
    #5;
    $finish;
end
initial begin
    $monitor("1st Input = %b , 2nd input = %b, Sum of inputs = %b, Carry Out = %d, Overflow Occured ? %b",A,B,res,cout,flag);
end

endmodule