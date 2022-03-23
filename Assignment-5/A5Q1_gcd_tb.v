`timescale 1ns/1ns
`include "A5Q1_gcd.v"

module gcd_tb;

reg [7:0] A_in;
reg [7:0] B_in;
wire [7:0] hcf;


gcd uut(A_in,B_in,hcf);

//ensure that B_in!=0_in and A_in!=0
initial begin
    $dumpfile("A5Q1_gcd_tb.vcd");
    $dumpvars(0,gcd_tb);

  
    A_in=8'd64;B_in=8'd32;#5;
    A_in=8'd13;B_in=8'd26;#5;
    A_in=8'd49;B_in=8'd33;#5;
    A_in=8'd31;B_in=8'd148;#5;
    A_in=8'd74;B_in=8'd68;#5;
    A_in=8'd177;B_in=8'd142;#5;
    A_in=8'd180;B_in=8'd84;#5;
    A_in=8'd145;B_in=8'd133;#5;
    A_in=8'd67;B_in=8'd128;#5;
    A_in=8'd37;B_in=8'd59;#5;
    A_in=8'd56;B_in=8'd31;#5;
    A_in=8'd100;B_in=8'd70;#5;
    A_in=8'd174;B_in=8'd58;#5;
    A_in=8'd62;B_in=8'd161;#5;
    $finish;
end

initial begin
    $monitor("hcf of %d and %d is :%d",A_in,B_in,hcf);
end

endmodule