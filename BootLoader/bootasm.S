/* 
  Bootloader for MIPS32S
  Chen Yuheng
  2012/07/16
 */

/* start address of program payload in spi flash FLASH_START存疑?? */
#define FLASH_START 0xBA800000
#define ELF_MAGIC 0x464C457F

/* off = offset from s0 */
/* load a 32bit word from Flash, 
 * off is byte-addressed */
#define LOAD_WORD_I(dst, off) \
  la $t7, off; \
  addu $t7, $s0, $t7; \
  lw dst, 0($t7);

#define LOAD_WORD_R(dst, off, base) \
  addiu $t7, base, off;\
  addu $t7, $s0, $t7; \
  lw dst, 0($t7);
   
#assume file base == FLASH_START



load_elf:
  #addr of elfheader, s0
  la $s0, FLASH_START
  LOAD_WORD_I($t1, 0) #dummy read
  LOAD_WORD_I($t1, 0) #dummy read
  LOAD_WORD_I($t1, 0) #dummy read
  #e_magic
  LOAD_WORD_I($t1, 0)
  # 此处ELF_MAGIC就是ELF的magic number 其值于U-boot,LINUX相同 注意readelf时是小端序
  la $t0, ELF_MAGIC # 读ELF头的magic number 匹配则跳转
  beq $t0, $t1, 1f
  nop
  b bad
  nop
1:
  #e_phoff 文件中程序头表的偏移（bytes）
  LOAD_WORD_I($s1, 28)
  #e_phnum 程序头表中的项数
  LOAD_WORD_I($s2, 44)
  andi $s2, $s2, 0xFFFF

  #e_entry 程序的虚拟入口地址
  LOAD_WORD_I($s3, 24)

next_sec:
  #s1, addr proghdr
  #s4, p_va 段的第一个字节将被映射到到内存中的虚拟地址
  LOAD_WORD_R($s4, 8, $s1)
  #s5, p_filesz 段在文件映像中所占的字节数
  LOAD_WORD_R($s5, 16, $s1)
  #s6, p_offset 当前段相对于文件起始位置的偏移量
  LOAD_WORD_R($s6, 4, $s1)

  srl  $t0, $s4, 31
  beq  $t0, $zero, 3f #check if MSB is 1
  nop
  beq  $s5, $zero, 3f
  nop

  lui  $t0, 0xa000
  or   $s4, $s4, $t0

#copy from file_base+p_offset to p_va copy_sec+next_sec用一个二重循环把所有段的数据copy到RAM中(利用sw指令)
copy_sec:
  LOAD_WORD_R($t0, 0, $s6)
  sw $t0, 0($s4)
  addiu $s6, $s6, 4
  addiu $s4, $s4, 4
  addiu $s5, $s5, -4
  bgtz  $s5, copy_sec
  nop

3:
  addiu $s1, $s1, 32
  addiu $s2, $s2, -1
  bgtz  $s2, next_sec
  nop

done:
#jump to kernel
  jr $s3
  nop
  b .
  nop

bad:
  b bad 
  nop

