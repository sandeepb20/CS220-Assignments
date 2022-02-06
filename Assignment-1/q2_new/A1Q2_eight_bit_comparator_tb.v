`timescale 1ns/1ns
`include "A1Q2_one_bit_comparator.v"
`include "A1Q2_eight_bit_comparator.v"

// defining the test bench for 8-bit comparator
module eightbitcomparator_tb;

reg [7:0]a,b;
wire gr,eq,le;

// instantiate the module block
eightbitcomparator uut(a,b,gr,eq,le);
initial begin
    $dumpfile("A1Q2_eight_bit_comparator_tb.vcd");
    $dumpvars(0,eightbitcomparator_tb);
    // test cases
    a=8'd255;b=8'd255;#5;
    a=8'd201;b=8'd200;#5;
    a=8'd15;b=8'd15;#5;
    a=8'd0;b=8'd1;#5;
    a=8'd32;b=8'd64;#5;
    a=8'd245;b=8'd145;#5;
    a=8'd45;b=8'd45;#5;
    $finish;

    
end
initial begin
    // displaying the comparision
    $display("  a   b     g e l");
    $monitor("%d %d     %b %b %b", a, b, gr, eq, le);
end
endmodule
