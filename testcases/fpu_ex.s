	.org 0x0
	.global _start
	.set noreorder
	.set nomacro
	.set noat
_start:
	lwc1	$f0,9084($23)  # ans: $f0=0x3e4ccccd
	lui $8,0x1234
	addiu $8, $8, 0x5678

.org 0x380
	# exception handler
	# return to next instruction
	la	 $30, 0x1234	#initial reg 
	mfc0 $30, $13 ,0       # skip
	lui $8,0xbfc0
	addiu $8, $8, 0x0100
	jr  $8
	


