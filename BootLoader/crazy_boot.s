.set noreorder
.set noat
.globl __start
__start:
###################串口初始化###################

	li	$t0, 0xbfe40000  #COM1_BASE_ADDR:0xbfe40000
	        #FIFO_ENABLE|FIFO_RCV_RST|FIFO_XMT_RST|FIFO_TRIGGER_1
	li	$t1, 0x1|0x2|0x4|0x0 
	sb	$t1, 2($t0)   #FIFO
  ########
  ##set baud rate
  ########
	li	$t1, 0x80     #LCR_DLAB = 1, divisor latch
	sb	$t1, 3($t0)   #LCR
 	# li	$t1, 33000000HZ/(16*CONS_BAUD)
	li	$t1, 0x11     #modify Baut 115200
	sb	$t1, 0($t0)   #TLL
	srl	$t1, 8
	sb	$t1, 1($t0)   #IER = 0
   
	li	$t1, 0x3      #LCR_DLAB = 0, LCR_8BITS
	sb	$t1, 3($t0)   #LCR
	li	$t1, 0x1|0x2  #MCR_DTR|MCR_RTS 
	sb	$t1, 4($t0)   #MCR
	li	$t1, 0x1      #IRxE
	sb	$t1, 1($t0)   #IER

###################串口初始化###################

###################CP0初始化###################
	mtc0 $zero,c0_cause
	mtc0 $zero,c0_status
###################CP0初始化###################

	li $s0, 0xbfd0f000
	li $t3, 0xff000001
	sw $t3,0x10($s0)
	li $t1,0x802041f0 # linux kernel entry
	jr  $t1
	nop
	b .
	nop
