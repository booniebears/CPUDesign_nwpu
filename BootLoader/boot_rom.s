
boot.rom.elf:     file format elf32-tradlittlemips
boot.rom.elf

Disassembly of section .text:

bfc00000 <__start>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:5
bfc00000:	3c10bfd0 	lui	s0,0xbfd0
bfc00004:	36103000 	ori	s0,s0,0x3000
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:6
bfc00008:	ae000008 	sw	zero,8(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:7
bfc0000c:	24090080 	li	t1,128
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:8
bfc00010:	ae09000c 	sw	t1,12(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:10
bfc00014:	24090036 	li	t1,54
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:11
bfc00018:	ae090000 	sw	t1,0(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:12
bfc0001c:	ae000004 	sw	zero,4(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:14
bfc00020:	24090003 	li	t1,3
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:15
bfc00024:	ae09000c 	sw	t1,12(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:17
bfc00028:	ae000004 	sw	zero,4(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:18
bfc0002c:	ae000010 	sw	zero,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:20
bfc00030:	3c10bfd0 	lui	s0,0xbfd0
bfc00034:	3610f000 	ori	s0,s0,0xf000
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:22
bfc00038:	8e0a0020 	lw	t2,32(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:23
bfc0003c:	24090001 	li	t1,1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:24
bfc00040:	01495024 	and	t2,t2,t1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:25
bfc00044:	3c0bff00 	lui	t3,0xff00
bfc00048:	356b0001 	ori	t3,t3,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:26
bfc0004c:	112a002e 	beq	t1,t2,bfc00108 <flash2ram>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:27
bfc00050:	ae0b0010 	sw	t3,16(s0)

bfc00054 <uart_cmd>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:30
bfc00054:	3c080008 	lui	t0,0x8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:31
bfc00058:	ae080010 	sw	t0,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:33
bfc0005c:	0ff00087 	jal	bfc0021c <chk_rx>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:34
bfc00060:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:36
bfc00064:	00408825 	move	s1,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:38
bfc00068:	2a290030 	slti	t1,s1,48
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:39
bfc0006c:	15200020 	bnez	t1,bfc000f0 <bad_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:40
bfc00070:	24090035 	li	t1,53
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:41
bfc00074:	0131482a 	slt	t1,t1,s1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:42
bfc00078:	1520001d 	bnez	t1,bfc000f0 <bad_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:43
bfc0007c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:44
bfc00080:	2404007e 	li	a0,126
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:45
bfc00084:	0ff00090 	jal	bfc00240 <putbyte>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:46
bfc00088:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:48
bfc0008c:	24080035 	li	t0,53
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:49
bfc00090:	1228001f 	beq	s1,t0,bfc00110 <uart2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:50
bfc00094:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:53
bfc00098:	0ff00098 	jal	bfc00260 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:54
bfc0009c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:55
bfc000a0:	00409025 	move	s2,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:58
bfc000a4:	24080034 	li	t0,52
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:59
bfc000a8:	12280015 	beq	s1,t0,bfc00100 <run>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:60
bfc000ac:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:63
bfc000b0:	0ff00098 	jal	bfc00260 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:64
bfc000b4:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:65
bfc000b8:	1040ffe6 	beqz	v0,bfc00054 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:66
bfc000bc:	00409825 	move	s3,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:68
bfc000c0:	24080030 	li	t0,48
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:69
bfc000c4:	1228001a 	beq	s1,t0,bfc00130 <uart2ram>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:70
bfc000c8:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:71
bfc000cc:	24080031 	li	t0,49
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:72
bfc000d0:	12280022 	beq	s1,t0,bfc0015c <ram2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:73
bfc000d4:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:74
bfc000d8:	24080032 	li	t0,50
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:75
bfc000dc:	1228002a 	beq	s1,t0,bfc00188 <uart2flash>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:76
bfc000e0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:77
bfc000e4:	24080033 	li	t0,51
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:78
bfc000e8:	1228003c 	beq	s1,t0,bfc001dc <flash2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:79
bfc000ec:	00000000 	nop

bfc000f0 <bad_cmd>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:81
bfc000f0:	3c088000 	lui	t0,0x8000
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:82
bfc000f4:	ae080010 	sw	t0,16(s0)

bfc000f8 <stop>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:84
bfc000f8:	1000ffff 	b	bfc000f8 <stop>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:85
bfc000fc:	00000000 	nop

bfc00100 <run>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:88
bfc00100:	02400008 	jr	s2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:89
bfc00104:	00000000 	nop

bfc00108 <flash2ram>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:92
bfc00108:	10000073 	b	bfc002d8 <load_elf>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:93
bfc0010c:	00000000 	nop

bfc00110 <uart2uart>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:96
bfc00110:	0ff00098 	jal	bfc00260 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:97
bfc00114:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:98
bfc00118:	00022025 	or	a0,zero,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:99
bfc0011c:	ae020010 	sw	v0,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:100
bfc00120:	0ff000a8 	jal	bfc002a0 <putword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:101
bfc00124:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:102
bfc00128:	1000fff9 	b	bfc00110 <uart2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:103
bfc0012c:	00000000 	nop

bfc00130 <uart2ram>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:106
bfc00130:	00139880 	sll	s3,s3,0x2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:107
bfc00134:	02729821 	addu	s3,s3,s2

bfc00138 <uart2ram_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:109
bfc00138:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:110
bfc0013c:	0ff00098 	jal	bfc00260 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:111
bfc00140:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:112
bfc00144:	ae420000 	sw	v0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:113
bfc00148:	26520004 	addiu	s2,s2,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:114
bfc0014c:	1672fffa 	bne	s3,s2,bfc00138 <uart2ram_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:115
bfc00150:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:116
bfc00154:	1000ffbf 	b	bfc00054 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:117
bfc00158:	00000000 	nop

bfc0015c <ram2uart>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:120
bfc0015c:	00139880 	sll	s3,s3,0x2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:121
bfc00160:	02729821 	addu	s3,s3,s2

bfc00164 <ram2uart_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:123
bfc00164:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:124
bfc00168:	8e440000 	lw	a0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:125
bfc0016c:	0ff000a8 	jal	bfc002a0 <putword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:126
bfc00170:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:127
bfc00174:	26520004 	addiu	s2,s2,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:128
bfc00178:	1672fffa 	bne	s3,s2,bfc00164 <ram2uart_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:129
bfc0017c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:130
bfc00180:	1000ffb4 	b	bfc00054 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:131
bfc00184:	00000000 	nop

bfc00188 <uart2flash>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:134
bfc00188:	00139840 	sll	s3,s3,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:135
bfc0018c:	02729821 	addu	s3,s3,s2

bfc00190 <uart2flash_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:137
bfc00190:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:138
bfc00194:	0ff00098 	jal	bfc00260 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:139
bfc00198:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:140
bfc0019c:	24080040 	li	t0,64
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:141
bfc001a0:	a6480000 	sh	t0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:142
bfc001a4:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:143
bfc001a8:	a6420000 	sh	v0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:145
bfc001ac:	24080070 	li	t0,112

bfc001b0 <wait_write>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:147
bfc001b0:	a6480000 	sh	t0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:148
bfc001b4:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:149
bfc001b8:	96490000 	lhu	t1,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:150
bfc001bc:	31290080 	andi	t1,t1,0x80
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:151
bfc001c0:	1120fffb 	beqz	t1,bfc001b0 <wait_write>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:152
bfc001c4:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:153
bfc001c8:	26520002 	addiu	s2,s2,2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:154
bfc001cc:	1672fff0 	bne	s3,s2,bfc00190 <uart2flash_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:155
bfc001d0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:156
bfc001d4:	1000ff9f 	b	bfc00054 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:157
bfc001d8:	00000000 	nop

bfc001dc <flash2uart>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:161
bfc001dc:	240800ff 	li	t0,255
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:162
bfc001e0:	a6480000 	sh	t0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:163
bfc001e4:	00139880 	sll	s3,s3,0x2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:164
bfc001e8:	02729821 	addu	s3,s3,s2

bfc001ec <flash2uart_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:166
bfc001ec:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:167
bfc001f0:	96440000 	lhu	a0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:168
bfc001f4:	96480002 	lhu	t0,2(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:169
bfc001f8:	00084400 	sll	t0,t0,0x10
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:170
bfc001fc:	00882025 	or	a0,a0,t0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:171
bfc00200:	0ff000a8 	jal	bfc002a0 <putword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:172
bfc00204:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:173
bfc00208:	26520004 	addiu	s2,s2,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:174
bfc0020c:	1672fff7 	bne	s3,s2,bfc001ec <flash2uart_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:175
bfc00210:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:176
bfc00214:	1000ff8f 	b	bfc00054 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:177
bfc00218:	00000000 	nop

bfc0021c <chk_rx>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:181
bfc0021c:	3c08bfd0 	lui	t0,0xbfd0
bfc00220:	35083000 	ori	t0,t0,0x3000
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:182
bfc00224:	8d090014 	lw	t1,20(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:183
bfc00228:	31290001 	andi	t1,t1,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:184
bfc0022c:	1120fffb 	beqz	t1,bfc0021c <chk_rx>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:185
bfc00230:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:186
bfc00234:	8d020000 	lw	v0,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:187
bfc00238:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:189
bfc0023c:	00000000 	nop

bfc00240 <putbyte>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:192
bfc00240:	3c08bfd0 	lui	t0,0xbfd0
bfc00244:	35083000 	ori	t0,t0,0x3000

bfc00248 <chk_tx>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:194
bfc00248:	8d090014 	lw	t1,20(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:195
bfc0024c:	31290020 	andi	t1,t1,0x20
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:196
bfc00250:	1120fffd 	beqz	t1,bfc00248 <chk_tx>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:197
bfc00254:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:198
bfc00258:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:199
bfc0025c:	ad040000 	sw	a0,0(t0)

bfc00260 <getword>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:202
bfc00260:	240c0008 	li	t4,8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:203
bfc00264:	3c08bfd0 	lui	t0,0xbfd0
bfc00268:	35083000 	ori	t0,t0,0x3000

bfc0026c <chk_rx_w>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:205
bfc0026c:	8d090014 	lw	t1,20(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:206
bfc00270:	31290001 	andi	t1,t1,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:207
bfc00274:	1120fffd 	beqz	t1,bfc0026c <chk_rx_w>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:208
bfc00278:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:209
bfc0027c:	8d0a0000 	lw	t2,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:212
bfc00280:	000a5600 	sll	t2,t2,0x18
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:213
bfc00284:	00021202 	srl	v0,v0,0x8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:214
bfc00288:	004a1025 	or	v0,v0,t2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:216
bfc0028c:	000c6042 	srl	t4,t4,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:217
bfc00290:	1580fff6 	bnez	t4,bfc0026c <chk_rx_w>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:218
bfc00294:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:220
bfc00298:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:221
bfc0029c:	00000000 	nop

bfc002a0 <putword>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:224
bfc002a0:	240c0008 	li	t4,8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:225
bfc002a4:	3c08bfd0 	lui	t0,0xbfd0
bfc002a8:	35083000 	ori	t0,t0,0x3000

bfc002ac <chk_tx_w>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:227
bfc002ac:	8d090014 	lw	t1,20(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:228
bfc002b0:	31290020 	andi	t1,t1,0x20
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:229
bfc002b4:	1120fffd 	beqz	t1,bfc002ac <chk_tx_w>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:230
bfc002b8:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:231
bfc002bc:	ad040000 	sw	a0,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:232
bfc002c0:	00042202 	srl	a0,a0,0x8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:233
bfc002c4:	000c6042 	srl	t4,t4,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:234
bfc002c8:	1580fff8 	bnez	t4,bfc002ac <chk_tx_w>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:235
bfc002cc:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:237
bfc002d0:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:238
bfc002d4:	00000000 	nop

bfc002d8 <load_elf>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:30
bfc002d8:	3c10ba80 	lui	s0,0xba80
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:31
bfc002dc:	240f0000 	li	t7,0
bfc002e0:	020f7821 	addu	t7,s0,t7
bfc002e4:	8de90000 	lw	t1,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:32
bfc002e8:	240f0000 	li	t7,0
bfc002ec:	020f7821 	addu	t7,s0,t7
bfc002f0:	8de90000 	lw	t1,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:33
bfc002f4:	240f0000 	li	t7,0
bfc002f8:	020f7821 	addu	t7,s0,t7
bfc002fc:	8de90000 	lw	t1,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:35
bfc00300:	240f0000 	li	t7,0
bfc00304:	020f7821 	addu	t7,s0,t7
bfc00308:	8de90000 	lw	t1,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:36
bfc0030c:	3c08464c 	lui	t0,0x464c
bfc00310:	3508457f 	ori	t0,t0,0x457f
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:37
bfc00314:	11090003 	beq	t0,t1,bfc00324 <load_elf+0x4c>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:38
bfc00318:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:39
bfc0031c:	1000002c 	b	bfc003d0 <bad>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:40
bfc00320:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:43
bfc00324:	240f001c 	li	t7,28
bfc00328:	020f7821 	addu	t7,s0,t7
bfc0032c:	8df10000 	lw	s1,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:45
bfc00330:	240f002c 	li	t7,44
bfc00334:	020f7821 	addu	t7,s0,t7
bfc00338:	8df20000 	lw	s2,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:46
bfc0033c:	3252ffff 	andi	s2,s2,0xffff
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:49
bfc00340:	240f0018 	li	t7,24
bfc00344:	020f7821 	addu	t7,s0,t7
bfc00348:	8df30000 	lw	s3,0(t7)

bfc0034c <next_sec>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:54
bfc0034c:	262f0008 	addiu	t7,s1,8
bfc00350:	020f7821 	addu	t7,s0,t7
bfc00354:	8df40000 	lw	s4,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:56
bfc00358:	262f0010 	addiu	t7,s1,16
bfc0035c:	020f7821 	addu	t7,s0,t7
bfc00360:	8df50000 	lw	s5,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:58
bfc00364:	262f0004 	addiu	t7,s1,4
bfc00368:	020f7821 	addu	t7,s0,t7
bfc0036c:	8df60000 	lw	s6,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:60
bfc00370:	001447c2 	srl	t0,s4,0x1f
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:61
bfc00374:	1100000e 	beqz	t0,bfc003b0 <copy_sec+0x24>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:62
bfc00378:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:63
bfc0037c:	12a0000c 	beqz	s5,bfc003b0 <copy_sec+0x24>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:64
bfc00380:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:66
bfc00384:	3c08a000 	lui	t0,0xa000
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:67
bfc00388:	0288a025 	or	s4,s4,t0

bfc0038c <copy_sec>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:71
bfc0038c:	26cf0000 	addiu	t7,s6,0
bfc00390:	020f7821 	addu	t7,s0,t7
bfc00394:	8de80000 	lw	t0,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:72
bfc00398:	ae880000 	sw	t0,0(s4)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:73
bfc0039c:	26d60004 	addiu	s6,s6,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:74
bfc003a0:	26940004 	addiu	s4,s4,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:75
bfc003a4:	26b5fffc 	addiu	s5,s5,-4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:76
bfc003a8:	1ea0fff8 	bgtz	s5,bfc0038c <copy_sec>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:77
bfc003ac:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:80
bfc003b0:	26310020 	addiu	s1,s1,32
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:81
bfc003b4:	2652ffff 	addiu	s2,s2,-1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:82
bfc003b8:	1e40ffe4 	bgtz	s2,bfc0034c <next_sec>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:83
bfc003bc:	00000000 	nop

bfc003c0 <done>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:87
bfc003c0:	02600008 	jr	s3
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:88
bfc003c4:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:89
bfc003c8:	1000ffff 	b	bfc003c8 <done+0x8>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:90
bfc003cc:	00000000 	nop

bfc003d0 <bad>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:93
bfc003d0:	1000ffff 	b	bfc003d0 <bad>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:94
bfc003d4:	00000000 	nop
Disassembly of section .reginfo:

00400054 <.reginfo>:
  400054:	807f9f14 	lb	ra,-24812(v1)
	...
  400068:	bfc183d0 	cache	0x1,-31792(s8)
Disassembly of section .debug_aranges:

00000000 <_fdata-0xbfc103d8>:
   0:	0000001c 	0x1c
   4:	00000002 	srl	zero,zero,0x0
   8:	00040000 	sll	zero,a0,0x0
   c:	00000000 	nop
  10:	bfc00000 	cache	0x0,0(s8)
  14:	000003d8 	0x3d8
	...
Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000005f 	0x5f
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000000 	nop
  10:	bfc00000 	cache	0x0,0(s8)
  14:	bfc003d8 	cache	0x0,984(s8)
  18:	746f6f62 	jalx	1bdbd88 <__start-0xbe024278>
  1c:	2f00732e 	sltiu	zero,t8,29486
  20:	656d6f68 	0x656d6f68
  24:	7973632f 	0x7973632f
  28:	6f6f422f 	0x6f6f422f
  2c:	616f4c74 	0x616f4c74
  30:	2f726564 	sltiu	s2,k1,25956
  34:	65737361 	0x65737361
  38:	796c626d 	0x796c626d
  3c:	69616e2d 	0x69616e2d
  40:	696d6576 	0x696d6576
  44:	622d7370 	0x622d7370
  48:	4e2d6472 	c3	0x2d6472
  4c:	43534353 	c0	0x1534353
  50:	4e470043 	c3	0x470043
  54:	53412055 	beql	k0,at,81ac <__start-0xbfbf7e54>
  58:	312e3220 	andi	t6,t1,0x3220
  5c:	30352e38 	andi	s5,at,0x2e38
  60:	Address 0x0000000000000060 is out of bounds.

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	10001101 	b	4408 <__start-0xbfbfbbf8>
   4:	12011106 	beq	s0,at,4420 <__start-0xbfbfbbe0>
   8:	1b080301 	0x1b080301
   c:	13082508 	beq	t8,t0,9430 <__start-0xbfbf6bd0>
  10:	00000005 	0x5
Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000119 	0x119
   4:	002a0002 	ror	zero,t2,0x0
   8:	01010000 	0x1010000
   c:	000d0efb 	0xd0efb
  10:	01010101 	0x1010101
  14:	01000000 	0x1000000
  18:	00010000 	sll	zero,at,0x0
  1c:	746f6f62 	jalx	1bdbd88 <__start-0xbe024278>
  20:	0000732e 	0x732e
  24:	6f620000 	0x6f620000
  28:	7361746f 	0x7361746f
  2c:	00532e6d 	0x532e6d
  30:	00000000 	nop
  34:	00020500 	sll	zero,v0,0x14
  38:	16bfc000 	bne	s5,ra,ffff003c <_gp+0x403d7c6c>
  3c:	4c4b4b83 	0x4c4b4b83
  40:	4b4c4b4b 	c2	0x14c4b4b
  44:	844c4b4c 	lh	t4,19276(v0)
  48:	834b4b4b 	lb	t3,19275(k0)
  4c:	4c4b4d4b 	0x4c4b4d4b
  50:	4b4c4c4b 	c2	0x14c4c4b
  54:	4b4b4b4b 	c2	0x14b4b4b
  58:	4c4b4b4b 	0x4c4b4b4b
  5c:	4b4d4b4b 	c2	0x14d4b4b
  60:	4b4b4d4b 	c2	0x14b4d4b
  64:	4b4b4b4d 	c2	0x14b4b4d
  68:	4b4b4b4c 	c2	0x14b4b4c
  6c:	4b4b4b4b 	c2	0x14b4b4b
  70:	4b4b4b4b 	c2	0x14b4b4b
  74:	4b4c4b4c 	c2	0x14c4b4c
  78:	4b4d4b4d 	c2	0x14d4b4d
  7c:	4b4b4b4d 	c2	0x14b4b4d
  80:	4b4b4b4b 	c2	0x14b4b4b
  84:	4b4c4b4d 	c2	0x14c4b4d
  88:	4b4b4b4b 	c2	0x14b4b4b
  8c:	4d4b4b4b 	0x4d4b4b4b
  90:	4b4b4c4b 	c2	0x14b4c4b
  94:	4b4b4b4b 	c2	0x14b4b4b
  98:	4b4d4b4b 	c2	0x14d4b4b
  9c:	4b4b4b4c 	c2	0x14b4b4c
  a0:	4c4b4b4b 	0x4c4b4b4b
  a4:	4b4b4b4c 	c2	0x14b4b4c
  a8:	4b4b4b4b 	c2	0x14b4b4b
  ac:	4e4b4b4b 	c3	0x4b4b4b
  b0:	4c4b4b4b 	0x4c4b4b4b
  b4:	4b4b4b4b 	c2	0x14b4b4b
  b8:	4b4b4b4b 	c2	0x14b4b4b
  bc:	4e4b4b4b 	c3	0x4b4b4b
  c0:	4b4b4b83 	c2	0x14b4b83
  c4:	4d4c4b4b 	0x4d4c4b4b
  c8:	4b4b4b84 	c2	0x14b4b84
  cc:	4b4d4b4b 	c2	0x14d4b4b
  d0:	4b4b4b84 	c2	0x14b4b84
  d4:	4b4b4d4b 	c2	0x14b4d4b
  d8:	4c4b4b4c 	0x4c4b4b4c
  dc:	844b4d4b 	lh	t3,19787(v0)
  e0:	4b4b4b4b 	c2	0x14b4b4b
  e4:	4b4b4b4b 	c2	0x14b4b4b
  e8:	02044b4c 	syscall	0x8112d
  ec:	4a7eb003 	c2	0x7eb003
  f0:	bcbbbb4b 	cache	0x1b,-17589(a1)
  f4:	4b4b83bb 	c2	0x14b83bb
  f8:	bbbc4d4b 	swr	gp,19787(sp)
  fc:	bcbcbf4d 	cache	0x1c,-16563(a1)
 100:	4b4b4bbc 	c2	0x14b4bbc
 104:	4e4b4c4b 	c3	0x4b4c4b
 108:	4b4b4bbb 	c2	0x14b4bbb
 10c:	4b4d4b4b 	c2	0x14d4b4b
 110:	4b4e4b4b 	c2	0x14e4b4b
 114:	4b4d4b4b 	c2	0x14d4b4b
 118:	01000402 	0x1000402
 11c:	Address 0x000000000000011c is out of bounds.


