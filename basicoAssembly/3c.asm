.data 
	num1: .word 12 #limitador
	num2: .word 3 #multiplicador
.text
	lw $s0, num1
	lw $s1, num2
	j start
start:
	#$a0 = 0;
	li $a0, 0
	j for
for:
	#$s0<$a0;
	beq $s0, $a0, end
	#{
	mul $s2, $a0, $s1
	#}
	#$a0++;
	add $a0, $a0, 1
	j for
end:
