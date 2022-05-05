// defining module enc8to3 which will be an 8-to-3 priority encoder
module enc8to3 (x_out, a_in);

    // defining input and output
    output [2:0] x_out;
    input [7:0] a_in;
    
    reg [2:0] x_out;

    // program runs whenever there is a valid input containing atleast one 1
    always @(a_in)
    begin
        
        // this part checks the position of least significant 1 present in the input
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