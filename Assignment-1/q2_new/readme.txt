-------------------- Question 2 --------------------
------------- 8-to-3 priority encoder --------------

The file A1Q2_one_bit_comparator.v and A1Q2_eight_bit_comparator.v
defines the module which will be used for comparing
1-bit numbers and 8-bit numbers respectively. 8-bit
comparator calls 1-bit comparator for comparing each
bit and then outputs accordingly.

A loop runs and checks whether at a point bits are
different or not, if they are, it uses there greater
or lesser comparision from 1-bit comparator and tells
finally whether a is greater/ equals/ lesser than b.

The code is expected to give output as the given
table showcase

  a   b     g e l
255 255     0 1 0
201 200     1 0 0
 15  15     0 1 0
  0   1     0 0 1
 32  64     0 0 1
245 145     1 0 0
 45  45     0 1 0

 if g = 1 then a>b
 if e = 1 then a=b
 if l = 1 then a<b