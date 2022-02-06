-------------------- Question 1 --------------------
----------- eight-bit ripple carry adder -----------

The files A1Q1_one_bit_full_adder.v and A1Q1_eight_bit_full_adder.v contains
module defination for 1-bit full adder and 8-bit ripple
adder. RippleAdd_tb.v contains test bench for 8-bit
ripple adder.

1-bit adder works on finding xor(A, B, Cin) which gives
the value of the Sum and (A & B)|(A & Cin)|(B & Cin) which
gives the value of carry (Cout). 8-bit adder uses this to
calculate bitwise these carry and sum using a loop.

The program gives output as shown below

1st Input =   0 , 2nd input =   0, Sum of inputs =   0, Carry = 0
1st Input =   1 , 2nd input =  10, Sum of inputs =  11, Carry = 0
1st Input =   5 , 2nd input =  15, Sum of inputs =  20, Carry = 0
1st Input =   7 , 2nd input =  20, Sum of inputs =  27, Carry = 0
1st Input =  10 , 2nd input =  30, Sum of inputs =  40, Carry = 0
1st Input =  15 , 2nd input =  40, Sum of inputs =  55, Carry = 0
1st Input =  20 , 2nd input =  50, Sum of inputs =  70, Carry = 0
1st Input =  25 , 2nd input =  60, Sum of inputs =  85, Carry = 0
1st Input =  26 , 2nd input =  70, Sum of inputs =  96, Carry = 0
1st Input =  31 , 2nd input =  80, Sum of inputs = 111, Carry = 0
1st Input =  34 , 2nd input =  90, Sum of inputs = 124, Carry = 0
1st Input =  37 , 2nd input = 100, Sum of inputs = 137, Carry = 0
1st Input =  40 , 2nd input = 110, Sum of inputs = 150, Carry = 0
1st Input =  50 , 2nd input = 120, Sum of inputs = 170, Carry = 0
1st Input =  53 , 2nd input = 130, Sum of inputs = 183, Carry = 0
1st Input =  65 , 2nd input = 140, Sum of inputs = 205, Carry = 0
1st Input =  80 , 2nd input = 150, Sum of inputs = 230, Carry = 0
1st Input = 100 , 2nd input = 155, Sum of inputs = 255, Carry = 0
1st Input = 100 , 2nd input = 200, Sum of inputs =  44, Carry = 1

Whenever, there will be an overflow, Carry will show 1. Like in the
last test case.