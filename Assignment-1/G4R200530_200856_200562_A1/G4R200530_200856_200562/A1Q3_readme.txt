------------------------ Question 3 --------------------------
---------------------- 3-to-8 decoder ------------------------

Files _2to4.v and _3to8.v contains the module defination
for 2-to-4 decoder and 3-to-8 decoder respectively. _3to8_tb.v
contains the test bench for the simulation. 3-to-8 decoder is
built using 2-to-4 decoder which are called twice, to generate
the required output.
We are using the enable of the 2 to 4 decoder for obtaining a
3 to 8 decoder, the enable of the first 2 to 4 decoder indicates 
bit the of register 'a' the other two inputs are the first and second
bits of register 'a'. The enable of the second  2 to 4 decoder indicates
the not of the third bit of register 'a' and the other two inputs are
same as before.

table for 2-to-4 decoder
00  --->  0001
01  --->  0010
10  --->  0100
11  --->  1000

table for 3-to-8 decoder
000  --->  00000001
001  --->  00000010
010  --->  00000100
011  --->  00001000
100  --->  00010000
101  --->  00100000
110  --->  01000000
111  --->  10000000