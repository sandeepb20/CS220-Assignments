`timescale 1ps/1ps
module FA (sum, Cout, A, B, Cin);
    input A,B,Cin;
    output sum,Cout;
    wire A,B,Cin;
    wire Cout,sum;

    //for sum
    and g1(o1, nA, B, nCin);
    and g2(o2, A, nB, nCin);
    and g3(o3, nA, nB, Cin);
    and g4(o4, A, B, Cin);

    and g5(o5, nA, B, Cin);
    and g6(o6, A, nB, Cin);
    and g7(o7, A, B, nCin);

    not g8(nA, A);
    not g9(nB, B);
    not g10(nCin, Cin);

    or g11(sum, o1, o2, o3, o4);
    or g12(Cout, o5, o6, o7, o4);

endmodule