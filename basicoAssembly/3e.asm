.data 
	num1: .word 12 
	num2: .word 3 
.text
	lw $s0, num1
	lw $s1, num2
	j start
start:
	#$a0 = 0;
	li $a0, 1
	li $a1, 1
	j repeat
repeat:
	#$a0 == true / $a0 = 1 / $s2<$s0
	bne $a0, 1, end
	#{
	mul $s2, $a1, $s1
	add $a1, $a1, 1
	bgt $s2, $s0, condicaoParada
	#}
	j repeat
condicaoParada:
	li $a0, 0
	j repeat
end:
