module odd_parity(clk,in,out);
	input clk;
	input[7:0] in;
	output reg out;
	parameter a=2'b01,b=2'b10,IDLE=2'b00;
	reg[1:0] state;
	reg[1:0] nextstate;
	initial begin
		state =IDLE;
		nextstate=IDLE;
	end
	always @(in or state) begin

		case (state)
			a : if (in==8'b00110000) nextstate = a;
				else if (in==8'b00110001) nextstate =b;
				else nextstate =IDLE;

			b : if (in==8'b00110000) nextstate = b;
				else if(in==8'b00110001) nextstate =a;
				else nextstate = IDLE;

			IDLE :  if (in==8'b00110000) nextstate = b;
					else if (in==8'b00110001) nextstate =a;
					else nextstate =IDLE;
		
			default : nextstate=IDLE;
		endcase	
	end
	always @(posedge clk) begin
		state <= nextstate;
		case (state)
			a : out<= 1'b0;
			b : out<= 1'b1;
			default : out<= 1'b1;
		endcase
	end

endmodule // odd_parity