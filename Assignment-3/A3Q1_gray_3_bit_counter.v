module counter(clk, rst, q);

input clk, rst;
output [2:0]q;

reg [2:0]q;
initial begin
    q=3'b000;
    q=q+3'b001;
    
end

initial begin
    $display("%b",q);
end

endmodule