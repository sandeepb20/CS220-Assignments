module j_ctr(clk,clr,q);
input clk,clr;
output reg [0:7] q;
always @(posedge clk) begin
    if(clr) begin
        q=00000000; //if clr is true/high then we assign q to zero
    end
else begin
        q[7] <= q[6]; //if clr if false/low then we shift the registers to the left
        q[6] <= q[5]; //and the first bit is assigned the negation of the last bit
        q[5] <= q[4];
        q[4] <= q[3];
        q[3] <= q[2];
        q[2] <= q[1];
        q[1] <= q[0];
        q[0] <= ~q[7]; //important not to forget the negation
    end
end
endmodule