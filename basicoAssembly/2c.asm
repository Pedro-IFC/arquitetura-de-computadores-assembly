.data
	num1: .word 3
	num2: .word -3
.text
	lw $s0, num1
	lw $s1, num2
	li $s2, 0
	li $s3, 0
	j loop
loop:
	beq $s0, $s2 end
	bltz $s0, subtrair
	bgtz $s0, somar
somar:
	add $s3, $s3, $s1
	j iteratorAll
subtrair:
	sub $s3, $s3, $s1
	j iteratorAll
iteratorAll:
	bltz $s0, iteratorN
	bgtz $s0, iteratorP
iteratorN:
	sub $s2, $s2, 1
	j loop
iteratorP:
	add $s2, $s2, 1
	j loop
end:
