.data
	num1: .float 10.0
	num2: .float 3.0
.text
	lwc1 $f0, num1
	lwc1 $f1, num2
	div.s  $f2, $f0, $f1
	syscall 
