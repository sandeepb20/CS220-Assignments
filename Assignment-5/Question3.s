     .data
# for adding space between numbers     
space: .asciiz " "
prompt: .asciiz "Fibonacci numbers less than 500 :- \n"
# please update the first and second term in line 16 and 17
# to get a different fibonacci series


# instructions
     .text
     .globl main
main:

# initialising the fibonacci sequence
     li $s0, 0
     li $s1, 1
     li $s2, 1

# printing the first element
     li $v0, 4
     la $a0, prompt
     syscall  
     li $v0, 1
     addi $a0, $s1, 0
     syscall

# adding a space
     li $v0, 4
     la $a0, space
     syscall

# function for other elements
loop:

# updating $s1 with the new term
     add $s1, $s0, $s1
     sub $s0, $s1, $s0

# check if the element is less than 500
     slti $t0, $s1, 500
     bne $t0, $s2, exit

# printing those elements
     li $v0, 1
     addi $a0, $s1, 0
     syscall

# printing spaces
     li $v0, 4
     la $a0, space
     syscall

# re-iteration
     j loop
     
exit:
     jr $ra
