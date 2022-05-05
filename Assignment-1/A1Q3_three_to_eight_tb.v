`timescale 1ns/1ns
`include "A1Q3_three_to_eight.v"
`include "A1Q3_two_to_four.v"

// defining the test bench for the 3-to-8 decoder
module _3to8_tb;

reg [2:0] a;
wire [7:0] d;

// instatiating 3-to-8 decoder module
_3to8 uut(a,d);

initial begin
    $dumpfile("A1Q3_three_to_eight.vcd");
    $dumpvars(0,_3to8_tb);

    // test cases
    a=3'b000;#5;
    a=3'b001;#5;
    a=3'b010;#5;
    a=3'b011;#5;
    a=3'b100;#5;
    a=3'b101;#5;
    a=3'b110;#5;
    a=3'b111;#5;
    
end
initial begin
    // displaying the output
    $monitor("Input = %b , gives output = %b",a,d);
end
endmodule
