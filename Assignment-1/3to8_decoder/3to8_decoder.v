`include "2to4_decoder.v"
module _3to8 (a,d);
input [2:0] a;

output [7:0] d;
wire [7:0] w;
_2to4 c(.a(a[1:0]),.en(a[2]),.d(w[7:4]));
_2to4 e(.a(a[1:0]),.en(~a[2]),.d(w[3:0]));

assign d=w;

endmodule