.data
i: .word 2
j: .word 1 
x: .word 5
y: .word 5
z: .word 5
.text
	lw $s1, i
	lw $s2, j
	lw $t1, x
	lw $t2, y
	lw $t3, z
start:
	slt $t0,$s2,$s1 	# j<i
	bne $t0,$zero,else 	# branch to else if j<i	
	addi $t1,$t1,1 		# then part: x=x+1
	addi $t3,$zero,1 	# z=1
	j endif 		# skip “else” part	
else: 	addi $t2, $t2, -1	#begin else part: y=y-1
	add $t3, $t3, $t3	#z=2*z
endif: