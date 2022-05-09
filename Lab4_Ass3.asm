.data
X: .word 5
.text
	lw 	$s4, X
	li	$s0, -10
	abs	$s1, $s0
	move 	$s2, $s0 
	not	$s3, $s0
	ble 	$s0, $s4, X
	
	