`timescale 1ns/1ns
`include "3to8_decoder.v"

module _3to8_tb;

reg [2:0] a;
wire [7:0] d;

_3to8 uut(a,d);

initial begin
    $dumpfile("3to8_deocder_tb.vcd");
    $dumpvars(0,_3to8_tb);
    a=3'b000;#5;
    a=3'b001;#5;
    a=3'b010;#5;
    a=3'b011;#5;
    a=3'b100;#5;
    a=3'b101;#5;
    a=3'b110;#5;
    a=3'b111;#5;
    $display("end of test");
end
initial begin
    $monitor("Input = %b , gives output = %b",a,d);
end
endmodule
