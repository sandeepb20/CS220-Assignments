`timescale 1ns/1ns
`include "A1Q4_eight_to_three_priority_encoder.v"

// defining the testbench for 8-to3 priority encoder
module stimulus;
    
    reg [7:0] a_in_;
    wire [2:0] x_out_;

    // instantiate the module block
    enc8to3 e1 (x_out_, a_in_);

    initial begin
        $dumpfile("A1Q4_eight_to_three_priority_encoder_tb.vcd");
        $dumpvars;
        // test cases
        a_in_ = 8'b10100011;
        #5;
        a_in_ = 8'b10100010;
        #5;
        a_in_ = 8'b11000000;
        #5;
        a_in_ = 8'b00000111;
        #5;
        a_in_ = 8'b00000000;   // as there is no 1 present, this is not a valid
                               // input according to predefined constraints
        #5;                    // so it will give xxx as output
        
        a_in_ = 8'b11111111;
        #5;
        $finish;
    end

    initial begin
        // displaying the encoding
        $monitor ("%b      ---->     %b", a_in_, x_out_);
    end
    

endmodule