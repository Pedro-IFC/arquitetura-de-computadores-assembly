.data 
	num1: .word 12 #dividendo
	num2: .word 3 #divisor
.text
	lw $s0, num1
	lw $s1, num2
	#IF S0<S1
	blt $s0, $s1, menorQue
	#else if S0==S1
	beq $s0, $s1, igualA
	#else
	j maiorQue
menorQue:
	#armazena o menor em s2
	lw $s2, num1
igualA:
	#armazena qualquer um dos 2 em s2
	lw $s2, num1
maiorQue:
	#armazena o menor em s2
	lw $s2, num2