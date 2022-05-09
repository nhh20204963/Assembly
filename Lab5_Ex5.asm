.data
input: .space 20
output: .space 20
output1: .asciiz "\n"
.text
.globl main
main:
	li 	$v0, 8
	la	$a0, input	#store the string in input
	li	$a1, 21
	syscall
	
	jal 	strlen
	add 	$t1, $zero, $v0 
	add 	$t2, $zero, $a0		#save input string to t2
	add 	$a0, $zero, $v0
	
reverse:
	li	$t0, 0
	li	$t3, 0
	
	reverse_loop:
		add	$t3, $t2, $t0
		lb	$t4, 0($t3)
		beqz	$t4, exit		#exit when see the null byte
		sb 	$t4, output($t1)
		subi 	$t1, $t1, 1		#reduce string length by 1
		addi	$t0, $t0, 1		#i++
		j 	reverse_loop

exit:
#print the reverse string
	li	$v0, 4
	la	$a0, output1
	syscall
	
	li	$v0, 4
	la 	$a0, output
	syscall
	
	li	$v0, 10			#exit
	syscall

strlen:
	li	$t0, 0
	li	$t2, 0
	
	strlen_loop:
		add	$t2, $a0, $t0
		lb	$t1, 0($t2)
		beqz	$t1, strlen_exit
		addiu	$t0, $t0, 1
		j	strlen_loop
		
	strlen_exit:
		subi	$t0, $t0, 1
		add 	$v0, $zero, $t0
		add	$t0, $zero, $zero
		jr 	$ra
	
	
		