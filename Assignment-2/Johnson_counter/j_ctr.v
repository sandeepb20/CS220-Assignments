`include "D_flip_flop.v"
module j_ctr(q,clr, clk);
    input clk,clr;
    output reg[7:0] q;
    reg[7:0] d;
    initial begin
        d = q;
    end
    dff dff_1(q[1],d[0], clr, clk);
    dff dff_2(q[2],d[1], clr, clk);
    dff dff_3(q[3],d[2], clr, clk);
    dff dff_4(q[4],d[3], clr, clk);
    dff dff_5(q[5],d[4], clr, clk);
    dff dff_6(q[6],d[5], clr, clk);
    dff dff_7(q[7],d[6], clr, clk);
    dff dff_8(q[0],~d[7], clr, clk);
    
endmodule