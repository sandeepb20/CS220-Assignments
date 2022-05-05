`timescale 1ns/1ns
`include "A1Q1_one_bit_full_adder.v"
`include "A1Q1_eight_bit_full_adder.v"

// defining the test bench for Ripple adder
module test_bench();
    reg[7:0] A,B;
    wire[7:0] S;
    wire Cout;

    // instantiate the module block
    Ripple_Add ra(S, Cout, A, B);
    initial 
    begin
        $dumpfile("A1Q1_eigth_bit_full_adder.vcd");
        $dumpvars(0,test_bench);

        // test cases
        A = 8'd0;
        B = 8'd0;
       
        #5; A = 1; B = 10 ;
        #5; A = 5; B = 15 ;
        #5; A = 7; B =  20;
        #5; A = 10; B = 30 ;
        #5; A = 15; B = 40 ;
        #5; A = 20; B = 50 ;
        #5; A = 25; B = 60 ;
        #5; A = 26; B = 70 ;
        #5; A = 31; B = 80 ;
        #5; A = 34; B = 90 ;
        #5; A = 37; B = 100 ;
        #5; A = 40; B = 110 ;
        #5; A = 50; B = 120 ;
        #5; A = 53; B = 130 ;
        #5; A = 65; B = 140 ;
        #5; A = 80; B = 150 ;
        #5; A = 100; B =  155;
        #5; A = 100; B = 200;
        #5;
        $finish;

    end
    initial begin
        // displaying the result
        $monitor("1st Input = %d , 2nd input = %d, Sum of inputs = %d, Carry = %d",A,B,S,Cout);
    end

endmodule

