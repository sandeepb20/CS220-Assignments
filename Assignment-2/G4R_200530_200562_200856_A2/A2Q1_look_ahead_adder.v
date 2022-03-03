module CLAA(sum,A,B);
    input[7:0] A,B;
    output [7:0] sum;

    wire [7:0] P,Q;  //wires for storing the generator and 
    assign P=A&B;    //propogator values
    assign Q=A^B;
    reg[8:0] carry;  // register to store the carry values of each bit
    integer i;
    always @(*) begin
        carry[0]=0;
        for(i = 0; i < 8; i = i+1) begin
            carry[i+1] = P[i] | (Q[i] & carry[i]); //implenting the formula for
        end                                        //each carry bit
    end
    assign sum=(Q)^carry;     //final step for sum registers (A^B)^Carry
endmodule