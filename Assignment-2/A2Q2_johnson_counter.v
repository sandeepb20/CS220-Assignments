module j_ctr(clk,clr,q);
input clk,clr;
output reg [0:7] q;
always @(posedge clk) begin
    if(clr) begin
        q=00000000;
    end
else begin
        q[7] <= q[6];
        q[6] <= q[5];
        q[5] <= q[4];
        q[4] <= q[3];
        q[3] <= q[2];
        q[2] <= q[1];
        q[1] <= q[0];
        q[0] <= ~q[7];
    end
end
endmodule