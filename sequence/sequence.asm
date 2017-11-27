msg1: .asciiz "Enter a number.\n"
msg2: .asciiz "Reached 1\n"
msg3: .asciiz "No. of steps taken is "
sp: .asciiz " "
lf: .asciiz "\n"
.text
.globl main

main:
	addi $t0, $0, 0
	addi $t1, $0, 1
	addi $t4, $0, 2

	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	or $t2, $0, $v0

loop:
	beg $t2, $t1, Exit
	addi $t5, $t5, 1
	andi $t3, $t2, 1
	beg $t3, 0, even
	beg $t3, 1, odd

	even:
		div $t2, $t4
		mflo $t2
		li $v0, 1
		add $a0, $0, $t2
		syscall
		li $v0, 4
		syscall
		bne $t2, $0, loop

	odd:
		add $t3, $t2, $t2
		add $t3, $t3, $t2
		add $t3, $t3, $t1
		add $t2, $t3, $0
		li $v0, 1
		add $a0, $0, $t2
		syscall
		li $v0, 4
		la $a0, lf
		syscall
		bne $t2, $0, loop

	Exit:
		li $v0, 4
		la $a0, msg2
		syscall
		li $v0, 4
		la $a0, msg3
		syscall
		li $v0, 1
		add $a0, $0, $t5

li $v0, 10
syscall