`include "odd_parity.v"
`timescale 1ns / 1ns

module odd_parity_tb;
	reg clk;
	reg[1:0] state;
	parameter size=(4*(4));
	reg[(size)*8-1:0] in;
	reg[7:0] in_bit;
	wire out_bit;
	integer i;
	odd_parity i1(clk,in_bit,out_bit);
	always #14 clk= ~clk;
	initial begin
		clk<=0;
		in="000 001 011 111 ";
		$display("input :%s",in);
		#17;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);
		#5;
		in="000 001 011 101 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);

		in="000 001 011 100 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);
		#5;

		in="000 001 011 110 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);
		#5;

		in="000 001 101 011 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);
		#5;

		in="000 001 110 011 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);
		#5;

		in="000 001 110 010 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);
		#5;

		in="010 001 011 111 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);
		#5;

		in="101 001 011 111 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);
		#5;

		in="100 101 011 111 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);
		#5;

		in="111 101 011 001 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);
		#5;

		in="001 101 000 111 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;

		$display("output:%s\n",in);
		#5;

		in="100 101 111 110 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;

		$display("output:%s\n",in);
		#5;

		in="111 011 001 000 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		// if (out_bit==1'b0) in[0-:8]=8'b00110000;
		// 		else in[0-:8]=8'b00110001;
		$display("output:%s\n",in);
		#5;

		in="000 101 000 011 ";
		$display("input :%s",in);
		#5;
		for (i = size*8-1; i >0; i=i-8) 
		begin
			in_bit<=in[i-:8];
			#28;
			if (in[i-:8]==8'b00100000)
			begin
				if (out_bit==1'b0) in[i-:8]=8'b00110000;
				else in[i-:8]=8'b00110001;
			end
		end
		#2;
		$display("output:%s\n",in);
		#5;

	#5 $finish;
	end

endmodule