`timescale 1ns/1ns
`include "A2Q2_johnson_counter.v"

module j_ctr_tb;

reg clk=0,clr;
wire [7:0] q;

j_ctr uut(clk,clr,q);

always begin
    clk=~clk;        //clock inititiation
    #5;
end

initial begin
    clr=1;
    $dumpfile("A2Q2_johnson_counter.vcd");
    $dumpvars(0,j_ctr_tb);
    $monitor("T=%0t q=%b", $time, q);  // prininting all the test cases
    repeat (2) @(posedge clk);  
    clr <= 0;  
    repeat (15) @(posedge clk);
    $finish;  
end  

endmodule