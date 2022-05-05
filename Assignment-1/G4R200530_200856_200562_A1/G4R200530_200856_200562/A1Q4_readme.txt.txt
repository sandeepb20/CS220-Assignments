-------------------- Question 4 --------------------
------------- 8-to-3 priority encoder --------------

The file A1Q4_eight_to_three_priority_encoder.v defines the module which will be 
used for encoding the input. enc8to3_tb.v is the test
bench containing six test cases.

enc8to3 module is expected to give output as the given
table showcase

00000000      ---->     xxx
xxxxxxx1      ---->     000
xxxxxx10      ---->     001
xxxxx100      ---->     010
xxxx1000      ---->     011
xxx10000      ---->     100
xx100000      ---->     101
x1000000      ---->     110
10000000      ---->     111
where x can be either 0 or 1

So, this module checks the position of least significant
1 present in the input, that is from the right side and
gives output as that position.