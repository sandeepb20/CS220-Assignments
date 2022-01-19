module enc8to3 (x_out, a_in);

    output [2:0] x_out;
    input [7:0] a_in;
    reg [2:0] x_out;
    always @(a_in)
    begin
        
        if(a_in[0]==1) x_out = 3'b000;
        else if(a_in[1]==1) x_out = 3'b001;
        else if(a_in[2]==1) x_out = 3'b010;
        else if(a_in[3]==1) x_out = 3'b011;
        else if(a_in[4]==1) x_out = 3'b100;
        else if(a_in[5]==1) x_out = 3'b101;
        else if(a_in[6]==1) x_out = 3'b110;
        else if(a_in[7]==1) x_out = 3'b111;
        else x_out = 3'bx;

    end
endmodule