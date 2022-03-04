module graycode(clk,count);
input clk;
output reg [2:0] count;
parameter S0=0,S1=1,S2=2,S3=3,S4=4,S5=5,S6=6,S7=7;
parameter X0=3'b000,X1=3'b001,X2=3'b011,X3=3'b010,X4=3'b110,X5=3'b111,X6=3'b101,X7=3'b100;
reg [2:0] state;
always @(posedge clk) begin
    case(state)
    S0:begin
        count<=X1;
        state<=S1;
    end
    S1:begin
        count<=X2;
        state<=S2;
    end
    S2:begin
        count<=X3;
        state<=S3;
    end
    S3:begin
        count<=X4;
        state<=S4;
    end
    S4:begin
        count<=X5;
        state<=S5;
    end
    S5:begin
        count<=X6;
        state<=S6;
    end
    S6:begin
        count<=X7;
        state<=S7;
    end
    S7:begin
        count<=X0;
        state<=S0;
    end
    default: begin
        count<=X0;
        state<=S0;
    end 
    endcase
end
endmodule