`timescale 1ns/1ns
`include "j_ctr.v"

module j_ctr_tb;

reg clk=0,clr=0;
wire [7:0] q;

j_ctr uut(clk,clr,q);

always begin
    clk=~clk;
    #5;
end

initial begin
    $dumpfile("j_ctr_tb.vcd");
    $dumpvars(0,j_ctr_tb);
    $monitor("T=%0t q=%b", $time, q);  
    repeat (2) @(posedge clk);  
    clr <= 0;  
    repeat (15) @(posedge clk);
    $finish;  
end  

endmodule