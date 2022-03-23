.data
    num1: .float 0.0
    num2: .float 1.0
    prompt: .asciiz "Enter the value of p: "
    nums: .asciiz "Enter the value of number(s): "
.text
.globl main
main:
    # reading the value of p
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    addi $t0, $v0, 0
    # t0 holds the value of p

    # $f12 holds the value of sum
    l.s $f12, num1
    # $f1 will hold 1 or -1 alternatively
    l.s $f1, num2
    
while:
    beq $t0, 0, exit
    # taking float point number as input
    li $v0, 4
    la $a0, nums
    syscall 
    li $v0, 6
    syscall
    # calculate (-1)^i.bi
    mul.s $f0, $f0, $f1
    # switching $f0 to -$f0
    neg.s $f1, $f1
    # calculating sum
    add.s $f12, $f12, $f0
    # update
    addi $t0, $t0, -1
    j while
exit:
    # printing the final sum
    li $v0, 2
    syscall
    j $ra
