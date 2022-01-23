`timescale 1ps/1ps
module onebitcomparator(a,b,gr,eq,le);
input a,b;
output reg gr,eq,le;
always @(*) begin
    gr=a & ~b;
    eq= ~(a^b);
    le=~a & b;
end
endmodule