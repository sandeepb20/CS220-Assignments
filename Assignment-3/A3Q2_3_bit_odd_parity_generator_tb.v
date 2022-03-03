`timescale 1ns/1ns
`include "A3Q2_3_bit_odd_parity_generator.v"

module testbench();
reg clock,reset,in;
wire x;
fsm_3_bit_odd_parity_generator f2(clock,reset,in,x);
always #0.5 clock=~clock;
initial begin
    $dumpfile("A3Q2_3_bit_odd_parity_generator_tb.vcd");
    $dumpvars(0,testbench);
    clock=0;
    reset=0;
    

    #1 in =1'b0;
    #1 in =1'b1;
    #1 in =1'b1;
    #5 in =1'b0;
    #1 in =1'b1;
    #1 in =1'b0;
    #5 in =1'b1;
    #1 in =1'b0;

    #1 in = 1'b0;
    #5 in = 1'b1;
    #1 in = 1'b0;
    #1 in = 1'b1;
    #5 in = 1'b1;
    #1 in = 1'b1;
    #1 in = 1'b1;
    #5 in = 1'b0;
    #1 in = 1'b1;
    #1 in = 1'b0;
    #5 in = 1'b1;
    #1 in = 1'b0;
    #1 in = 1'b1;
    
    #5;$finish;
end

always @(negedge clock) begin
    $display("output equals %b at time = ", x ,$time );
end

endmodule