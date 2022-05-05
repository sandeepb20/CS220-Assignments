`timescale 1ns/1ns
`include "A4Q2_eightBit.v"

// initialising test bench
module test_bench();

reg [7:0] A,B;
reg opcode;
wire [7:0] res;
wire cout, flag;

// calling the eight bit adder
eightbit ok(A,B,opcode,res,cout,flag);

//<------------------------------------------------------------------------ displaying output -------------------------------------------------------------------------------------------->
always #5 begin
    if(flag == 1'b1) begin
        // if overflow occured
        if(res[7] == 1'b1) begin
            // resultant is negative
            if(A[7] == 1'b1) begin 
                // first input is negative
                if(B[7] == 1'b1) begin
                    // second input is negative
                    if(opcode == 1'b1) $display("(-%d) - (-%d) = -%d  *** Overflow Occured ",{1'b0, (~A[6:0] + 1'b1)},{1'b0, (~B[6:0] + 1'b1)},{1'b0, (~res[6:0] + 1'b1)}); // subtraction
                    else $display("(-%d) + (-%d) = -%d  *** Overflow Occured ",{1'b0, (~A[6:0] + 1'b1)},{1'b0, (~B[6:0] + 1'b1)},{1'b0, (~res[6:0] + 1'b1)}); // addition
                end
                else begin
                    // second input is positive
                    if(opcode == 1'b1) $display("(-%d) - (%d) = -%d  *** Overflow Occured ",{1'b0, (~A[6:0] + 1'b1)},B,{1'b0, (~res[6:0] + 1'b1)}); // subtraction
                    else $display("(-%d) + (%d) = -%d  *** Overflow Occured ",{1'b0, (~A[6:0] + 1'b1)},B,{1'b0, (~res[6:0] + 1'b1)}); // addition
                end
            end
            else begin
                // first input is positive
                if(B[7] == 1'b1) begin
                    // second input is negative
                    if(opcode == 1'b1) $display("(%d) - (-%d) = -%d  *** Overflow Occured ",A,{1'b0, (~B[6:0] + 1'b1)},{1'b0, (~res[6:0] + 1'b1)}); // subtraction
                    else $display("(%d) + (-%d) = -%d  *** Overflow Occured ",A,{1'b0, (~B[6:0] + 1'b1)},{1'b0, (~res[6:0] + 1'b1)}); // addition
                end
                else begin
                    // second input is positive
                    if(opcode == 1'b1) $display("(%d) - (%d) = -%d  *** Overflow Occured ",A,B,{1'b0, (~res[6:0] + 1'b1)}); // subtraction
                    else $display("(%d) + (%d) = -%d  *** Overflow Occured ",A,B,{1'b0, (~res[6:0] + 1'b1)}); // addition
                end
            end
        end
        else begin
            // resultant is positive
            if(A[7] == 1'b1) begin 
                // first input is negative
                if(B[7] == 1'b1) begin
                    // second input is negative
                    if(opcode == 1'b1) $display("(-%d) - (-%d) = %d",{1'b0, (~A[6:0] + 1'b1)},{1'b0, (~B[6:0] + 1'b1)},res); // subtraction
                    else $display("(-%d) + (-%d) = %d",{1'b0, (~A[6:0] + 1'b1)},{1'b0, (~B[6:0] + 1'b1)},res); // addition
                end
                else begin
                    // second input is positive
                    if(opcode == 1'b1) $display("(-%d) - (%d) = %d",{1'b0, (~A[6:0] + 1'b1)},B,res); // subtraction
                    else $display("(-%d) + (%d) = %d",{1'b0, (~A[6:0] + 1'b1)},B,res); // addition
                end
            end
            else begin
                // first input is positive
                if(B[7] == 1'b1) begin
                    // second input is negative
                    if(opcode == 1'b1) $display("(%d) - (-%d) = %d",A,{1'b0, (~B[6:0] + 1'b1)},res); // subtraction
                    else $display("(%d) + (-%d) = %d",A,{1'b0, (~B[6:0] + 1'b1)},res); // addition
                end
                else begin
                    // second input is positive
                    if(opcode == 1'b1) $display("(%d) - (%d) = %d",A,B,res); // subtraction
                    else $display("(%d) + (%d) = %d",A,B,res); // addition
                end
            end
        end
    end
    else begin
        // no overflow
        if(res[7] == 1'b1) begin
            // resultant is negative
            if(A[7] == 1'b1) begin 
                // first input is negative
                if(B[7] == 1'b1) begin
                    // second input is negative
                    if(opcode == 1'b1) $display("(-%d) - (-%d) = -%d",{1'b0, (~A[6:0] + 1'b1)},{1'b0, (~B[6:0] + 1'b1)},{1'b0, (~res[6:0] + 1'b1)}); // subtraction
                    else $display("(-%d) + (-%d) = -%d",{1'b0, (~A[6:0] + 1'b1)},{1'b0, (~B[6:0] + 1'b1)},{1'b0, (~res[6:0] + 1'b1)}); // addition
                end
                else begin
                    // second input is positive
                    if(opcode == 1'b1) $display("(-%d) - (%d) = -%d",{1'b0, (~A[6:0] + 1'b1)},B,{1'b0, (~res[6:0] + 1'b1)}); // subtraction
                    else $display("(-%d) + (%d) = -%d",{1'b0, (~A[6:0] + 1'b1)},B,{1'b0, (~res[6:0] + 1'b1)}); // addition
                end
            end
            else begin
                // first input is positive
                if(B[7] == 1'b1) begin
                    // second input is negative
                    if(opcode == 1'b1) $display("(%d) - (-%d) = -%d",A,{1'b0, (~B[6:0] + 1'b1)},{1'b0, (~res[6:0] + 1'b1)}); // subtraction
                    else $display("(%d) + (-%d) = -%d",A,{1'b0, (~B[6:0] + 1'b1)},{1'b0, (~res[6:0] + 1'b1)}); // addition
                end
                else begin
                    // second input is positive
                    if(opcode == 1'b1) $display("(%d) - (%d) = -%d",A,B,{1'b0, (~res[6:0] + 1'b1)}); // subtraction
                    else $display("(%d) + (%d) = -%d",A,B,{1'b0, (~res[6:0] + 1'b1)}); // addition
                end
            end
        end
        else begin
            // resultant is positive
            if(A[7] == 1'b1) begin 
                // first input is negative
                if(B[7] == 1'b1) begin
                    // second input is negative
                    if(opcode == 1'b1) $display("(-%d) - (-%d) = %d",{1'b0, (~A[6:0] + 1'b1)},{1'b0, (~B[6:0] + 1'b1)},res); // subtraction
                    else $display("(-%d) + (-%d) = %d",{1'b0, (~A[6:0] + 1'b1)},{1'b0, (~B[6:0] + 1'b1)},res); // addition
                end
                else begin
                    // second input is positive
                    if(opcode == 1'b1) $display("(-%d) - (%d) = %d",{1'b0, (~A[6:0] + 1'b1)},B,res); // subtraction
                    else $display("(-%d) + (%d) = %d",{1'b0, (~A[6:0] + 1'b1)},B,res); // addition
                end
            end
            else begin
                // first input is positive
                if(B[7] == 1'b1) begin
                    // second input is negative
                    if(opcode == 1'b1) $display("(%d) - (-%d) = %d",A,{1'b0, (~B[6:0] + 1'b1)},res); // subtraction
                    else $display("(%d) + (-%d) = %d",A,{1'b0, (~B[6:0] + 1'b1)},res); // addition
                end
                else begin
                    // second input is positive
                    if(opcode == 1'b1) $display("(%d) - (%d) = %d",A,B,res); // subtraction
                    else $display("(%d) + (%d) = %d",A,B,res); // addition
                end
            end
        end

    end
    $display("\n");
end
//<-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

// test cases
initial begin
    $dumpfile("A4Q2_eightBit_tb.vcd");
    $dumpvars(0,test_bench);
    opcode=0;
    A = 50 ; B = 10 ; opcode = 1; #5
    
    A = 0 ; B = 0 ; opcode = 1; #5;
    A = 5 ; B = 15  ; opcode = 1; #5;
    A = 7 ; B = 20  ; opcode = 1; #5;
    A = 10; B = 30  ; opcode = 0; #5;
    A = 15; B = 40  ; opcode = 1; #5;
    A = 20; B = 50  ; opcode = 1; #5;
    A = 25; B = 60  ; opcode = 1; #5;
    A = 26; B = 70  ; opcode = 0; #5;
    A = 31; B = 80  ; opcode = 1; #5;
    A = 13; B = 90  ; opcode = 1; #5;
    A = 37; B = 100 ; opcode = 1; #5;
    A = 40; B = 110 ; opcode = 0; #5;
    A = 50; B = 120 ; opcode = 1; #5;
    A = 53; B = 130 ; opcode = 1; #5;
    A = 65; B = 140 ; opcode = 0; #5;
    A = 80; B = 150 ; opcode = 1; #5;
    A = 150; B = 1; opcode = 0; #5;
    A = 5; B = 10; opcode = 1; #5;
    $finish;
end
initial begin
    $monitor("1st input = %b , 2nd input = %b , opcode = %b, resultant = %b, Overflow occured ? = %b",A,B,opcode,res,flag);
end

endmodule