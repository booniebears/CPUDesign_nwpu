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
	li	$t1, 0x23     #modify Baut 57600
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

  li $s0,0xbfd0f000

  lw $t2,0x20($s0) #read DIP switch; SWITCH_ADDR=0xbfd0f020
  li $t1,1
  and $t2,$t2,$t1
  li $t3, 0xff000001
  beq $t1,$t2,flash2ram  #SW0 is high, FlashToRam mode
  sw $t3,0x10($s0)

uart_cmd:
  li $t0,0x80000
  sw $t0,0x10($s0) #LED indicates wait state
  #get cmd
  jal getbyte
  nop

  or $s1,$v0,$zero
  #check cmd 0x30<=s1<=0x35 对应于数字0-5
  slti $t1,$s1,0x30
  bne $t1,$zero,bad_cmd
  li $t1,0x35
  slt $t1,$t1,$s1
  bne $t1,$zero,bad_cmd
  nop
  li $a0,0x7e
  jal putbyte
  nop

  li $t0,0x35
  beq $s1,$t0,uart2uart
  nop

  #get start address
  jal getword
  nop
  or $s2,$v0,$zero

  #cmd: run
  li $t0,0x34
  beq $s1,$t0,run
  nop

  #get word count
  jal getword
  nop
  beq $v0,$zero,uart_cmd #nothing to do
  or $s3,$v0,$zero

  li $t0,0x30
  beq $s1,$t0,uart2ram
  nop
  li $t0,0x31
  beq $s1,$t0,ram2uart
  nop
  li $t0,0x32
  beq $s1,$t0,uart2flash
  nop
  li $t0,0x33
  beq $s1,$t0,flash2uart
  nop
bad_cmd:
  li $t0,0x80000000
  sw $t0,0x10($s0) #LED indicates unknown command
stop:
  b stop
  nop

run:
  jr $s2
  nop

flash2ram:
  b load_elf  #implemented in bootasm.S
  nop

uart2uart:
  jal getword
  nop
  or $a0,$zero,$v0
  sw $v0,0x10($s0) #LED indicates data
  jal putword
  nop
  b uart2uart
  nop

uart2ram:
  sll $s3,$s3,2
  addu $s3,$s3,$s2
uart2ram_next:
  sw $s2,0x10($s0) #LED indicates current address
  jal getword
  nop
  sw $v0,0($s2)
  addiu $s2,$s2,4
  bne $s3,$s2,uart2ram_next
  nop
  b uart_cmd
  nop

ram2uart:
  sll $s3,$s3,2
  addu $s3,$s3,$s2
ram2uart_next:
  sw $s2,0x10($s0) #LED indicates current address
  lw $a0,0($s2)
  jal putword
  nop
  addiu $s2,$s2,4
  bne $s3,$s2,ram2uart_next
  nop
  b uart_cmd
  nop

uart2flash:
  sll $s3,$s3,1
  addu $s3,$s3,$s2
uart2flash_next:
  sw $s2,0x10($s0) #LED indicates current address
  jal getword
  nop
  li $t0,0x40
  sh $t0,0($s2)
  nop
  sh $v0,0($s2)

  li $t0,0x70
wait_write:
  sh $t0,0($s2) #Command: read status
  nop
  lhu $t1,0($s2)
  andi $t1,$t1,0x80
  beq $t1,$zero,wait_write
  nop
  addiu $s2,$s2,2
  bne $s3,$s2,uart2flash_next
  nop
  b uart_cmd
  nop


flash2uart:
  li  $t0, 0xff
  sh  $t0, 0($s2)
  sll $s3,$s3,2
  addu $s3,$s3,$s2
flash2uart_next:
  sw $s2,0x10($s0) # LED indicates current address
  lhu $a0,0($s2) # 16-bit instruction is required for flash read
  lhu $t0,2($s2)
  sll $t0, $t0, 16
  or $a0, $a0, $t0
  jal putword
  nop
  addiu $s2,$s2,4
  bne $s3,$s2,flash2uart_next
  nop
  b uart_cmd
  nop

getbyte:
check_rx:
  li $t0,0xbfe40000
  lb $t1,0x5($t0)  # 查看串口状态, LSR
  andi $t1,$t1,1   # 截取接收FIFO控制位，若为1表明在FIFO中有数据
  beq $t1,$0,check_rx
  nop
  lb $v0,0x0($t0)  # 读出data
  jr $ra
  nop

putbyte:
  li $t0,0xbfe40000
check_tx:
  lb $t1,0x5($t0)   # 查看串口状态, LSR
  andi $t1,$t1,0x20 # 截取传输FIFO控制位,若为1表示当前FIFO为空
  beq $t1,$0,check_tx
  nop
  sb $a0,0x0($t0)   # 写入data
  jr $ra
  nop

getword:
  li $t4,8
  li $t0,0xbfe40000
check_rx_word:
  lb $t1,0x5($t0)   # 查看串口状态, LSR
  andi $t1,$t1,1    # 截取接收FIFO控制位，若为1表明在FIFO中有数据
  beq $t1,$0,check_rx_word
  nop
  lb $t2,0x0($t0)

### 下面这一段 将四个byte整合为一个word
  sll $t2,$t2,24
  srl $v0,$v0,8
  or $v0,$v0,$t2 # v0是最终的读出结果

  srl $t4,$t4,1 # srl控制循环四次
  bne $t4,$zero,check_rx_word
  nop

  jr $ra
  nop

putword:
  li $t4,8
  li $t0,0xbfe40000
check_tx_word:
  lb $t1,0x5($t0)   # 查看串口状态, LSR
  andi $t1,$t1,0x20 # 截取传输FIFO控制位,若为1表示当前FIFO为空
  beq $t1,$0,check_tx_word
  nop
  sb $a0,0x0($t0)
  srl $a0,$a0,8 # a0的四个byte依次存入UART_DAT寄存器
  srl $t4,$t4,1 # srl控制循环四次
  bne $t4,$zero,check_tx_word
  nop

  jr $ra
  nop

#include "bootasm.S"
