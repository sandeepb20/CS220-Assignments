`timescale 1ns/1ns
`include "j_ctr.v"

module j_ctr_tb;

reg clk=0,clr=0;
wire [7:0] q;

j_ctr uut(q, clr, clk);

always begin
    clk=~clk;
    #5;
end

initial begin
    $dumpfile("j_ctr_tb.vcd");
    $dumpvars(0,j_ctr_tb);
    $monitor("T=%0t q=%b", $time, q);  
    clk = 0;
    clr = 0;
    #20 clr = 1;
    #12 clr = 0;
    #10
    $finish;  
end  

endmodule