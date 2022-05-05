module gcd(A_in,B_in,hcf);
parameter len = 8;
input [len-1:0] A_in,B_in;
reg [len-1:0] A,B;
output reg [len-1:0] hcf;
integer count;
always @(A_in,B_in) begin
    A=A_in;
    B=B_in;
    count=0;
    while (A!=B) begin
        if(A[0]==0 && B[0]==0) begin
            A=A>>1;
            B=B>>1;
            count=count+1;
        end
        else if(A[0]==1 && B[0]==0) begin
            B=B>>1;
        end
        else if(A[0]==0 && B[0]==1) begin
            A=A>>1;
        end
        else if(A>=B) begin
            A=(A-B)>>1;
        end
        else begin
            B=(B-A)>>1;
        end
    end
    while (count>0) begin
        A=A<<1;
        count=count-1;
    end
    hcf=A;
end

endmodule