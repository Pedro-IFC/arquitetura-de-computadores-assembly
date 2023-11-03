
.data 
	num1: .word 4 #dividendo
.text
	# o códio abaixo faz um switch para valores x e transforma em algum outro valor em Hexadecimal
	lw $s0, num1
	j start
start:
	beq $s0, 1, caseO
	beq $s0, 2, caseTw
	beq $s0, 3, caseTh
	beq $s0, 4, caseFo
	beq $s0, 5, caseFi
	beq $s0, 6, caseS
	j caseS
caseO:
	li $s1, 0xA
	j end
caseTw:
	li $s1, 0xB
	j end
caseTh:
	li $s1, 0xC
	j end
caseFo:
	li $s1, 0xD
	j end
caseFi:
	li $s1, 0xE
	j end
caseS:
	li $s1, 0xF
	j end
end: