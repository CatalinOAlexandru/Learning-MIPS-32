addi $t0, $0, 20 # Add the integer 20 inside register $t0
addi $t1, $0, 35 # Add the integer 35 inside register $t1

mult $t0, $t1 # Multiply the value inside $t0 and $t1
mflo $t2 # Save the lower 32 bit of the result here
mfhi $t3 # Save the higher 32 bit of the result here

li $v0, 1
or $a0, $0, $t2
syscall # output the value from $t2
li $v0, 1
or $a0, $0, $t3
syscall # output the value from $t3

or $v0, $0, 10 # Sets 10 inside $v0 and the program will exit when executed
syscall # Exit