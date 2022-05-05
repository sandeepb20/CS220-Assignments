// defining module for 8-bit comparision
// using predefined 1-bit comparator
module eightbitcomparator(a,b,gr,eq,le);

// defining input and output
input [7:0] a,b;
output reg gr,eq,le;

wire [7:0] g,e,l;

// comparison for individual bits of the two numbers
// and assigning g e and l wires accordingly
onebitcomparator U7(a[7],b[7],g[7],e[7],l[7]);
onebitcomparator U6(a[6],b[6],g[6],e[6],l[6]);
onebitcomparator U5(a[5],b[5],g[5],e[5],l[5]);
onebitcomparator U4(a[4],b[4],g[4],e[4],l[4]);
onebitcomparator U3(a[3],b[3],g[3],e[3],l[3]);
onebitcomparator U2(a[2],b[2],g[2],e[2],l[2]);
onebitcomparator U1(a[1],b[1],g[1],e[1],l[1]);
onebitcomparator U0(a[0],b[0],g[0],e[0],l[0]);

// if at any point bits are found not to be equal
// gr, eq and le are set and loop is terminated
always @(*) begin
    gr=0;eq=1;le=0;
    for(integer i=7;i>=0;i=i-1) begin
        if(e[i]==0) begin
            gr=g[i];
            eq=0;
            le=l[i];
            i=-1;
        end
    end
end
endmodule