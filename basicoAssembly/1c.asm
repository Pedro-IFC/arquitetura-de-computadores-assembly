.data
	num1: .word 2
	num2: .word 3
.text
	lw $v0, num1
	lw $v1, num2
	mul $s0, $v0, $v1
	li $v0, 0
	li $v1, 0 
	syscall
