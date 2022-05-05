// defining module for 1-bit comparison
module onebitcomparator(a,b,gr,eq,le);

// defing input and output
input a,b;
output reg gr,eq,le;

// assigning gr, eq, le 0 or 1 according to the relation between a and b 
always @(*) begin
    gr=a & ~b;
    eq= ~(a^b);
    le=~a & b;
end
endmodule