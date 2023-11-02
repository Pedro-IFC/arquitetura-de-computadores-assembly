
.data 
	num1: .word 12 #dividendo
	num2: .word 3 #divisor
.text
	lw $s0, num1
	lw $s1, num2
	li $v0, 1
	li $s2, 0
	li $s3, -1
	j dividir
dividir:
	bltz $s0, valRNS0 # coloca em módulo
	bltz $s1, valRNS1 # coloca em módulo
	j loop
valRNS0: 
	sub $a0, $s0, $s0
	sub $a0, $a0, $s0
	move $s0, $a0
	li $a0, 0
	bltz $v0, inverterV0P
	bgtz $v0, inverterV0N
valRNS1: 
	sub $a0, $s1, $s1
	sub $a0, $a0, $s1
	move $s1, $a0
	li $a0, 0
	bltz $v0, inverterV0P
	bgtz $v0, inverterV0N
inverterV0P:
	li $v0, 1
	j dividir
inverterV0N:
	li $v0, -1
	j dividir
loop:
	beq, $s0, $s2, finaleira
	j interacaoM
interacaoM:
	add $s3, $s3, 1
	mul $s2, $s3, $s1
	j loop
finaleira:
	bltz $v0, inverterS3
	move $v1, $s3
	j end
inverterS3:
	sub $a0, $s3, $s3
	sub $a0, $a0, $s3
	move $s3, $a0
	move $v1, $s3
	li $a0, 0
	j end	
end:
