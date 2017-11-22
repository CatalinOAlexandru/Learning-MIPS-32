.data 
msg1: .asciiz "Enter a number: "
lf:  .asciiz "\n"
.text

do:
      li $v0, 5
      syscall

      li $v0, 5
      or $t2, $0, $v0 # Register $t2 gets input 
      syscall # add the input into register t2

      li $v0, 5
      lw $t0, 0
      syscall # set t0 as integer 0

      li $v0, 5
      add $t1, $t1, $t2
      syscall # make a sum with the t2 and the current sum t1

while:
      beq $t2, $t0,exit # loop end if $t0 is 0
      j do
      
exit:
      li $v0, 1
      or $a0, $0, $t1 
      syscall # print t1 after the loop ends

      li $v0, 10
      syscall # make the program exit
