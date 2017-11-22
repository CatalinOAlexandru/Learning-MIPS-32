.data 
msg: .asciiz "Total is  "
lf:  .asciiz "\n"
.text
.globl main
      
main: 
     
     
loop: 
      li $v0, 5
      syscall 
      or $t2, $0, $v0 # Register $t2 gets input 1
      add $t4, $t2,$t4  # Register $t4 gets $t2 + $t2
      beq $t2, $0, end
      j loop
      
end:
      li $v0, 1
      or $a0, $0, $t4  
      syscall
      or $v0, $0, 10 # Sets $v0 to "10" so when syscall is executed, program will exit.
      syscall # Exit.
