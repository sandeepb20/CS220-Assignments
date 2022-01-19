`timescale 1ns/1ns
`include "enc8to3.v"

module stimulus;
    
    reg [7:0] a_in_;
    wire [2:0] x_out_;

    enc8to3 e1 (x_out_, a_in_);

    initial begin
        $dumpfile("enc8to3.vcd");
        $dumpvars;
        a_in_ = 8'b10100011;
        #5;
        a_in_ = 8'b10100010;
        #5;
        a_in_ = 8'b11000000;
        #5;
        a_in_ = 8'b00000111;
        #5;
        a_in_ = 8'b00000000;
        #5;
        a_in_ = 8'b11111111;
        #5;
        $finish;
    end

    initial begin
        $monitor ("%b encodes to %b", a_in_, x_out_);
        //$monitor ("%b %b %b %b %b %b %b %b",a_in_[7], a_in_[6],a_in_[5],a_in_[4],a_in_[3],a_in_[2],a_in_[1],a_in_[0]);
    end
    

endmodule