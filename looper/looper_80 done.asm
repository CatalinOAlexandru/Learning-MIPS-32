.data 
msg: .asciiz "Enter a number: "
lf:  .asciiz "\n"
.text

      lw $t0, 0
      li $v0, 5
      syscall # set t0 as integer 0

      li $v0, 5
do:
      syscall
      or $t2, $0, $v0 # Register $t2 gets input 
      li $v0, 5
      syscall # add the input into register t2

      add $t1, $t1, $t2
      li $v0, 5
      syscall # make a sum with the t2 and the current sum t1

while:
      beq $t0 $t2 loop # loop end if $t0 is 0
      or $a0, 1, $t1 
      syscall # print t1 after the loop ends

exit:
      li $v0, 10
      syscall # make the program exit
