// defining module for 1-bit full adder
module FA (sum, Cout, A, B, Cin);

    // defining inputs and outputs
    input A,B,Cin;
    output sum,Cout;

    wire A,B,Cin;
    wire Cout,sum;
    
    // assigning sum and cout
    assign sum = A^B^Cin ;
    assign Cout = (A & B)|(A & Cin)|(B & Cin) ;

endmodule