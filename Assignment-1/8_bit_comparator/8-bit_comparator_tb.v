`timescale 1ns/1ns
`include "8-bit_comparator.v"

module eightbitcomparator_tb;

reg [7:0]a,b;
wire gr,eq,le;

eightbitcomparator uut(a,b,gr,eq,le);
initial begin
    $dumpfile("eightbitcomparator_tb.vcd");
    $dumpvars(0,eightbitcomparator_tb);
    a=8'd255;b=8'd255;#5;
    a=8'd201;b=8'd200;#5;
    a=8'd15;b=8'd15;#5;
    a=8'd0;b=8'd1;#5;
    a=8'd32;b=8'd64;#5;
    a=8'd245;b=8'd145;#5;
    a=8'd45;b=8'd45;#5;
    $display("end of test");
end
endmodule
