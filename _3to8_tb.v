`timescale 1ns/1ns
`include "_3to8.v"

module _3to8_tb;

reg [2:0] a;
wire [7:0] d;
reg en;

_3to8 uut(a,en,d);

initial begin
    $dumpfile("_3to8_tb.vcd");
    $dumpvars(0,_3to8_tb);
    en=1;
    a=3'b000;#20;
    a=3'b001;#20;
    a=3'b010;#20;
    a=3'b011;#20;
    a=3'b100;#20;
    a=3'b101;#20;
    a=3'b110;#20;
    a=3'b111;#20;
    $display("end of test");
end
endmodule