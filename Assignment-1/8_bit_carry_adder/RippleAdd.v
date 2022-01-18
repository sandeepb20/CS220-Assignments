`timescale 1ps/1ps
`include "1-bit_fullAdder.v"
module Ripple_Add (S,Cout,A,B);
    input wire[7:0] A,B;
    output wire[7:0] S;
    output wire Cout;
    wire Cin = 0;
    wire c0,c1,c2,c3,c4,c5,c6;
    FA fa1(S[0], c0, A[0], B[0], Cin);
    FA fa2(S[1], c1, A[1], B[1], c0);
    FA fa3(S[2], c2, A[2], B[2], c1);
    FA fa4(S[3], c3, A[3], B[3], c2);
    FA fa5(S[4], c4, A[4], B[4], c3);
    FA fa6(S[5], c5, A[5], B[5], c4);
    FA fa7(S[6], c6, A[6], B[6], c5);
    FA fa8(S[7], Cout, A[7], B[7], c6);
endmodule