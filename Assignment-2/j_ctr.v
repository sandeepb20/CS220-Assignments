module j_ctr(clk,clr,q);
input clk,clr;
output reg [7:0] q;
always @(posedge clk) begin
    if(clr) begin
        q=00000000;
    end
    else begin
        q={~q[0],q[7:1]};
    end
end
endmodule