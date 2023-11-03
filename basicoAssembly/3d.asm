.data 
	num1: .word 12 
	num2: .word 3 
.text
	lw $s0, num1
	lw $s1, num2
	j start
start:
	li $a1, 1
	j while
while:
	#while s2<s0
	bgt $s2, $s0, end
	#{
	mul $s2, $a1, $s1
	add $a1, $a1, 1
	#}
	j while
end:
