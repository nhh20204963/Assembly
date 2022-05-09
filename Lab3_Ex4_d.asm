# i + j > m + n
.data 
i: .word 1
j: .word 2
m: .word 3
n: .word 4
x: .word 5
y: .word 7
z: .word 8
.text
	lw 	$s1, i			
	lw 	$s2, j	
	lw	$s3, m
	lw 	$s4, n
	lw 	$t1, x
	lw 	$t2, y
	lw	$t3, z		
start: 
	add 	$s5, $s1, $s2		# sum = i + j
	add 	$s6, $s3, $s4		# sum = m + n
	slt 	$t0, $s5, $s6	
	bne 	$t0, $zero, else	
	addi 	$t1, $t1, 1		#x=x+1
	addi 	$t3, $zero, 1		#z=1
	j 	endif			#else
else:	addi 	$t2, $t2, -1		#y=y-1
	add 	$t3, $t3, $t3		#z-2*z
endif:
	