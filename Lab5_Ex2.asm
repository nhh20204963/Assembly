.data
a: .asciiz "The sum of " 
b: .asciiz " and "
c: .asciiz " is "
.text
	addi	$s0, $zero, 2
	addi	$s1, $zero, 3
	add 	$s2, $s0, $s1
	li 	$v0, 4
	la 	$a0, a
	syscall
	li 	$v0, 1
	la	$a0, ($s0)
	syscall
	li 	$v0, 4
	la 	$a0, b
	syscall
	li 	$v0, 1
	la 	$a0, ($s1)
	syscall
	li 	$v0, 4
	la 	$a0, c
	syscall
	li 	$v0, 1
	la 	$a0, ($s2)
	syscall
	
	
	