`timescale 1ps/1ps
`include "odd-parity-generator.v"
`timescale 1ns/1ns
module Q2_tb;
reg din,clk,reset;
wire y;
three_bit_odd_parity_gen m1(din, reset, clk, y);
initial begin
$dumpfile("Q2_tb.vcd");
$dumpvars(0, Q2_tb);
$monitor($time, , ,"y=%b",y,,"d=%b",din);
reset=0   ;clk=0; din=1;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=0;
#10 din=1;

end
always
#5 clk=~clk;
initial
#70 $finish ;
endmodule