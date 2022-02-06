module CLAA(sum,A,B);
    input[7:0] A,B;
    output [7:0] sum;
    wire [7:0] P,Q;
    assign P=A&B;
    assign Q=A^B;
    reg[8:0] carry;
    integer i;
    always @(*) begin
        carry[0]=0;
        for(i = 0; i < 8; i = i+1) begin
            carry[i+1] = P[i] | (Q[i] & carry[i]);
        end
    end
    assign sum=(Q)^carry;
endmodule