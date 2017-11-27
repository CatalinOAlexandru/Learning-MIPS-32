.data 
msg: .asciiz "value is "
lf:  .asciiz "\n"
.text
.globl main
main: 
      li $v0, 5
      syscall # add the input into register t2
      add $t0, $0, $v0
      add $t2, $
      div $t0, 
      beq $t1, $0, isEven

isEven:
      li $v0, 1
      or $a0, $0, $t1  
      syscall

isOdd:
      li


      li $v0, 10
      syscall
