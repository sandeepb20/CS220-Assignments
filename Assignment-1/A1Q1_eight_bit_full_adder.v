// defining the module for Ripple adder
module Ripple_Add (S,Cout,A,B);

    // defining input and output
    input wire[7:0] A,B;
    output wire[7:0] S;
    output wire Cout;
    wire Carry[8:0];
    assign Carry[0]=1'b0;

    generate
        genvar i;
        for(i = 0; i < 8; i = i+1) begin
            FA fa1(S[i], Carry[i + 1], A[i], B[i],Carry[i]);
        end
    endgenerate
        
    assign Cout = Carry[8];
    
endmodule

