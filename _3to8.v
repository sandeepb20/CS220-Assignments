module _2to4 (a,en,d);
input [1:0] a;
input en;
output [3:0] d;
assign d[0]=en & ~a[0] & ~a[1];
assign d[1]=en & a[0] & ~a[1];
assign d[2]=en & ~a[0] & a[1];
assign d[3]=en & a[0] & a[1];
endmodule

module _3to8 (a,en,d);
input [2:0] a;
input en;
output [7:0] d;
wire [7:0] w;
_2to4 c(.a(a[1:0]),.en(a[2]),.d(w[7:4]));
_2to4 e(.a(a[1:0]),.en(~a[2]),.d(w[3:0]));

assign d=w;

endmodule