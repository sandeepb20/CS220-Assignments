module CLAA(sum,A,B);
    input[7:0] A,B;
    output [7:0] sum;
    wire [7:0] P,Q; // 
    assign P=A&B; // P is array of 'bitwise and' of input arrays A and B
    assign Q=A^B; // Q is array of 'bitwise XOR' of input arrays A and B
    reg[8:0] carry; // Carry out 
    integer i;
    always @(*) begin
        carry[0]=0;
        for(i = 0; i < 8; i = i+1) begin
            carry[i+1] = P[i] | (Q[i] & carry[i]); 
        end
    end
    assign sum=(Q)^carry;
endmodule