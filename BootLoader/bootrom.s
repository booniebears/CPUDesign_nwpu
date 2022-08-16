
boot.rom.elf:     file format elf32-tradlittlemips
boot.rom.elf


Disassembly of section .text:

bfc00000 <__start>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:7
bfc00000:	3c08bfe4 	lui	t0,0xbfe4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:9
bfc00004:	24090007 	li	t1,7
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:10
bfc00008:	a1090002 	sb	t1,2(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:14
bfc0000c:	24090080 	li	t1,128
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:15
bfc00010:	a1090003 	sb	t1,3(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:17
bfc00014:	24090023 	li	t1,35
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:18
bfc00018:	a1090000 	sb	t1,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:19
bfc0001c:	00094a02 	srl	t1,t1,0x8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:20
bfc00020:	a1090001 	sb	t1,1(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:22
bfc00024:	24090003 	li	t1,3
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:23
bfc00028:	a1090003 	sb	t1,3(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:24
bfc0002c:	24090003 	li	t1,3
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:25
bfc00030:	a1090004 	sb	t1,4(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:26
bfc00034:	24090001 	li	t1,1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:27
bfc00038:	a1090001 	sb	t1,1(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:31
bfc0003c:	3c10bfd0 	lui	s0,0xbfd0
bfc00040:	3610f000 	ori	s0,s0,0xf000
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:33
bfc00044:	8e0a0020 	lw	t2,32(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:34
bfc00048:	24090001 	li	t1,1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:35
bfc0004c:	01495024 	and	t2,t2,t1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:37
bfc00050:	112a002c 	beq	t1,t2,bfc00104 <flash2ram>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:38
bfc00054:	00000000 	nop

bfc00058 <uart_cmd>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:45
bfc00058:	0ff00086 	jal	bfc00218 <check_rx>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:46
bfc0005c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:48
bfc00060:	00408825 	move	s1,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:50
bfc00064:	2a290030 	slti	t1,s1,48
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:51
bfc00068:	15200020 	bnez	t1,bfc000ec <bad_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:52
bfc0006c:	24090035 	li	t1,53
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:53
bfc00070:	0131482a 	slt	t1,t1,s1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:54
bfc00074:	1520001d 	bnez	t1,bfc000ec <bad_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:55
bfc00078:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:56
bfc0007c:	2404007e 	li	a0,126
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:57
bfc00080:	0ff0008e 	jal	bfc00238 <putbyte>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:58
bfc00084:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:60
bfc00088:	24080035 	li	t0,53
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:61
bfc0008c:	1228001f 	beq	s1,t0,bfc0010c <uart2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:62
bfc00090:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:65
bfc00094:	0ff00096 	jal	bfc00258 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:66
bfc00098:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:67
bfc0009c:	00409025 	move	s2,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:70
bfc000a0:	24080034 	li	t0,52
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:71
bfc000a4:	12280015 	beq	s1,t0,bfc000fc <run>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:72
bfc000a8:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:75
bfc000ac:	0ff00096 	jal	bfc00258 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:76
bfc000b0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:77
bfc000b4:	1040ffe8 	beqz	v0,bfc00058 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:78
bfc000b8:	00409825 	move	s3,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:80
bfc000bc:	24080030 	li	t0,48
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:81
bfc000c0:	1228001a 	beq	s1,t0,bfc0012c <uart2ram>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:82
bfc000c4:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:83
bfc000c8:	24080031 	li	t0,49
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:84
bfc000cc:	12280022 	beq	s1,t0,bfc00158 <ram2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:85
bfc000d0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:86
bfc000d4:	24080032 	li	t0,50
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:87
bfc000d8:	1228002a 	beq	s1,t0,bfc00184 <uart2flash>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:88
bfc000dc:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:89
bfc000e0:	24080033 	li	t0,51
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:90
bfc000e4:	1228003c 	beq	s1,t0,bfc001d8 <flash2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:91
bfc000e8:	00000000 	nop

bfc000ec <bad_cmd>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:93
bfc000ec:	3c088000 	lui	t0,0x8000
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:94
bfc000f0:	ae080010 	sw	t0,16(s0)

bfc000f4 <stop>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:96
bfc000f4:	1000ffff 	b	bfc000f4 <stop>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:97
bfc000f8:	00000000 	nop

bfc000fc <run>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:100
bfc000fc:	02400008 	jr	s2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:101
bfc00100:	00000000 	nop

bfc00104 <flash2ram>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:104
bfc00104:	10000070 	b	bfc002c8 <load_elf>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:105
bfc00108:	00000000 	nop

bfc0010c <uart2uart>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:108
bfc0010c:	0ff00096 	jal	bfc00258 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:109
bfc00110:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:110
bfc00114:	00022025 	or	a0,zero,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:111
bfc00118:	ae020010 	sw	v0,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:112
bfc0011c:	0ff000a5 	jal	bfc00294 <putword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:113
bfc00120:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:114
bfc00124:	1000fff9 	b	bfc0010c <uart2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:115
bfc00128:	00000000 	nop

bfc0012c <uart2ram>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:118
bfc0012c:	00139880 	sll	s3,s3,0x2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:119
bfc00130:	02729821 	addu	s3,s3,s2

bfc00134 <uart2ram_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:121
bfc00134:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:122
bfc00138:	0ff00096 	jal	bfc00258 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:123
bfc0013c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:124
bfc00140:	ae420000 	sw	v0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:125
bfc00144:	26520004 	addiu	s2,s2,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:126
bfc00148:	1672fffa 	bne	s3,s2,bfc00134 <uart2ram_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:127
bfc0014c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:128
bfc00150:	1000ffc1 	b	bfc00058 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:129
bfc00154:	00000000 	nop

bfc00158 <ram2uart>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:132
bfc00158:	00139880 	sll	s3,s3,0x2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:133
bfc0015c:	02729821 	addu	s3,s3,s2

bfc00160 <ram2uart_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:135
bfc00160:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:136
bfc00164:	8e440000 	lw	a0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:137
bfc00168:	0ff000a5 	jal	bfc00294 <putword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:138
bfc0016c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:139
bfc00170:	26520004 	addiu	s2,s2,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:140
bfc00174:	1672fffa 	bne	s3,s2,bfc00160 <ram2uart_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:141
bfc00178:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:142
bfc0017c:	1000ffb6 	b	bfc00058 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:143
bfc00180:	00000000 	nop

bfc00184 <uart2flash>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:146
bfc00184:	00139840 	sll	s3,s3,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:147
bfc00188:	02729821 	addu	s3,s3,s2

bfc0018c <uart2flash_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:149
bfc0018c:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:150
bfc00190:	0ff00096 	jal	bfc00258 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:151
bfc00194:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:152
bfc00198:	24080040 	li	t0,64
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:153
bfc0019c:	a6480000 	sh	t0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:154
bfc001a0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:155
bfc001a4:	a6420000 	sh	v0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:157
bfc001a8:	24080070 	li	t0,112

bfc001ac <wait_write>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:159
bfc001ac:	a6480000 	sh	t0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:160
bfc001b0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:161
bfc001b4:	96490000 	lhu	t1,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:162
bfc001b8:	31290080 	andi	t1,t1,0x80
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:163
bfc001bc:	1120fffb 	beqz	t1,bfc001ac <wait_write>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:164
bfc001c0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:165
bfc001c4:	26520002 	addiu	s2,s2,2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:166
bfc001c8:	1672fff0 	bne	s3,s2,bfc0018c <uart2flash_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:167
bfc001cc:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:168
bfc001d0:	1000ffa1 	b	bfc00058 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:169
bfc001d4:	00000000 	nop

bfc001d8 <flash2uart>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:173
bfc001d8:	240800ff 	li	t0,255
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:174
bfc001dc:	a6480000 	sh	t0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:175
bfc001e0:	00139880 	sll	s3,s3,0x2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:176
bfc001e4:	02729821 	addu	s3,s3,s2

bfc001e8 <flash2uart_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:178
bfc001e8:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:179
bfc001ec:	96440000 	lhu	a0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:180
bfc001f0:	96480002 	lhu	t0,2(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:181
bfc001f4:	00084400 	sll	t0,t0,0x10
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:182
bfc001f8:	00882025 	or	a0,a0,t0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:183
bfc001fc:	0ff000a5 	jal	bfc00294 <putword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:184
bfc00200:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:185
bfc00204:	26520004 	addiu	s2,s2,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:186
bfc00208:	1672fff7 	bne	s3,s2,bfc001e8 <flash2uart_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:187
bfc0020c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:188
bfc00210:	1000ff91 	b	bfc00058 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:189
bfc00214:	00000000 	nop

bfc00218 <check_rx>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:193
bfc00218:	3c08bfe4 	lui	t0,0xbfe4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:194
bfc0021c:	81090005 	lb	t1,5(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:195
bfc00220:	31290001 	andi	t1,t1,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:196
bfc00224:	1120fffc 	beqz	t1,bfc00218 <check_rx>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:197
bfc00228:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:198
bfc0022c:	81020000 	lb	v0,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:199
bfc00230:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:200
bfc00234:	00000000 	nop

bfc00238 <putbyte>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:203
bfc00238:	3c08bfe4 	lui	t0,0xbfe4

bfc0023c <check_tx>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:205
bfc0023c:	81090005 	lb	t1,5(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:206
bfc00240:	31290020 	andi	t1,t1,0x20
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:207
bfc00244:	1120fffd 	beqz	t1,bfc0023c <check_tx>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:208
bfc00248:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:209
bfc0024c:	a1040000 	sb	a0,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:210
bfc00250:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:211
bfc00254:	00000000 	nop

bfc00258 <getword>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:214
bfc00258:	240c0008 	li	t4,8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:215
bfc0025c:	3c08bfe4 	lui	t0,0xbfe4

bfc00260 <check_rx_word>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:217
bfc00260:	81090005 	lb	t1,5(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:218
bfc00264:	31290001 	andi	t1,t1,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:219
bfc00268:	1120fffd 	beqz	t1,bfc00260 <check_rx_word>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:220
bfc0026c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:221
bfc00270:	810a0000 	lb	t2,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:224
bfc00274:	000a5600 	sll	t2,t2,0x18
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:225
bfc00278:	00021202 	srl	v0,v0,0x8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:226
bfc0027c:	004a1025 	or	v0,v0,t2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:228
bfc00280:	000c6042 	srl	t4,t4,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:229
bfc00284:	1580fff6 	bnez	t4,bfc00260 <check_rx_word>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:230
bfc00288:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:232
bfc0028c:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:233
bfc00290:	00000000 	nop

bfc00294 <putword>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:236
bfc00294:	240c0008 	li	t4,8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:237
bfc00298:	3c08bfe4 	lui	t0,0xbfe4

bfc0029c <check_tx_word>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:239
bfc0029c:	81090005 	lb	t1,5(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:240
bfc002a0:	31290020 	andi	t1,t1,0x20
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:241
bfc002a4:	1120fffd 	beqz	t1,bfc0029c <check_tx_word>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:242
bfc002a8:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:243
bfc002ac:	a1040000 	sb	a0,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:244
bfc002b0:	00042202 	srl	a0,a0,0x8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:245
bfc002b4:	000c6042 	srl	t4,t4,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:246
bfc002b8:	1580fff8 	bnez	t4,bfc0029c <check_tx_word>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:247
bfc002bc:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:249
bfc002c0:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:250
bfc002c4:	00000000 	nop

bfc002c8 <load_elf>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:30
bfc002c8:	3c10bfa0 	lui	s0,0xbfa0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:31
bfc002cc:	240f0000 	li	t7,0
bfc002d0:	020f7821 	addu	t7,s0,t7
bfc002d4:	8de90000 	lw	t1,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:32
bfc002d8:	240f0000 	li	t7,0
bfc002dc:	020f7821 	addu	t7,s0,t7
bfc002e0:	8de90000 	lw	t1,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:33
bfc002e4:	240f0000 	li	t7,0
bfc002e8:	020f7821 	addu	t7,s0,t7
bfc002ec:	8de90000 	lw	t1,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:35
bfc002f0:	240f0000 	li	t7,0
bfc002f4:	020f7821 	addu	t7,s0,t7
bfc002f8:	8de90000 	lw	t1,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:36
bfc002fc:	3c08464c 	lui	t0,0x464c
bfc00300:	3508457f 	ori	t0,t0,0x457f
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:37
bfc00304:	11090003 	beq	t0,t1,bfc00314 <load_elf+0x4c>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:38
bfc00308:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:39
bfc0030c:	1000002c 	b	bfc003c0 <bad>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:40
bfc00310:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:43
bfc00314:	240f001c 	li	t7,28
bfc00318:	020f7821 	addu	t7,s0,t7
bfc0031c:	8df10000 	lw	s1,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:45
bfc00320:	240f002c 	li	t7,44
bfc00324:	020f7821 	addu	t7,s0,t7
bfc00328:	8df20000 	lw	s2,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:46
bfc0032c:	3252ffff 	andi	s2,s2,0xffff
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:49
bfc00330:	240f0018 	li	t7,24
bfc00334:	020f7821 	addu	t7,s0,t7
bfc00338:	8df30000 	lw	s3,0(t7)

bfc0033c <next_sec>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:54
bfc0033c:	262f0008 	addiu	t7,s1,8
bfc00340:	020f7821 	addu	t7,s0,t7
bfc00344:	8df40000 	lw	s4,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:56
bfc00348:	262f0010 	addiu	t7,s1,16
bfc0034c:	020f7821 	addu	t7,s0,t7
bfc00350:	8df50000 	lw	s5,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:58
bfc00354:	262f0004 	addiu	t7,s1,4
bfc00358:	020f7821 	addu	t7,s0,t7
bfc0035c:	8df60000 	lw	s6,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:60
bfc00360:	001447c2 	srl	t0,s4,0x1f
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:61
bfc00364:	1100000e 	beqz	t0,bfc003a0 <copy_sec+0x24>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:62
bfc00368:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:63
bfc0036c:	12a0000c 	beqz	s5,bfc003a0 <copy_sec+0x24>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:64
bfc00370:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:66
bfc00374:	3c08a000 	lui	t0,0xa000
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:67
bfc00378:	0288a025 	or	s4,s4,t0

bfc0037c <copy_sec>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:71
bfc0037c:	26cf0000 	addiu	t7,s6,0
bfc00380:	020f7821 	addu	t7,s0,t7
bfc00384:	8de80000 	lw	t0,0(t7)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:72
bfc00388:	ae880000 	sw	t0,0(s4)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:73
bfc0038c:	26d60004 	addiu	s6,s6,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:74
bfc00390:	26940004 	addiu	s4,s4,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:75
bfc00394:	26b5fffc 	addiu	s5,s5,-4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:76
bfc00398:	1ea0fff8 	bgtz	s5,bfc0037c <copy_sec>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:77
bfc0039c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:80
bfc003a0:	26310020 	addiu	s1,s1,32
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:81
bfc003a4:	2652ffff 	addiu	s2,s2,-1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:82
bfc003a8:	1e40ffe4 	bgtz	s2,bfc0033c <next_sec>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:83
bfc003ac:	00000000 	nop

bfc003b0 <done>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:87
bfc003b0:	02600008 	jr	s3
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:88
bfc003b4:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:89
bfc003b8:	1000ffff 	b	bfc003b8 <done+0x8>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:90
bfc003bc:	00000000 	nop

bfc003c0 <bad>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:93
bfc003c0:	1000ffff 	b	bfc003c0 <bad>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:94
bfc003c4:	00000000 	nop

Disassembly of section .reginfo:

00400054 <.reginfo>:
  400054:	807f9714 	lb	ra,-26860(v1)
	...
  400068:	bfc183c0 	cache	0x1,-31808(s8)

Disassembly of section .debug_aranges:

00000000 <_fdata-0xbfc103c8>:
   0:	0000001c 	0x1c
   4:	00000002 	srl	zero,zero,0x0
   8:	00040000 	sll	zero,a0,0x0
   c:	00000000 	nop
  10:	bfc00000 	cache	0x0,0(s8)
  14:	000003c8 	0x3c8
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000005f 	0x5f
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000000 	nop
  10:	bfc00000 	cache	0x0,0(s8)
  14:	bfc003c8 	cache	0x0,968(s8)
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
   0:	0000011b 	0x11b
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
  38:	18bfc000 	0x18bfc000
  3c:	4b4e4b4c 	c2	0x14e4b4c
  40:	4b4b4b4c 	c2	0x14b4b4c
  44:	4b4b4b4c 	c2	0x14b4b4c
  48:	844e4b4b 	lh	t6,19275(v0)
  4c:	4b4c4b4b 	c2	0x14c4b4b
  50:	4c4c4b51 	0x4c4c4b51
  54:	4b4b4b4b 	c2	0x14b4b4b
  58:	4b4b4b4b 	c2	0x14b4b4b
  5c:	4d4b4b4c 	0x4d4b4b4c
  60:	4b4d4b4b 	c2	0x14d4b4b
  64:	4b4b4d4b 	c2	0x14b4d4b
  68:	4b4b4c4b 	c2	0x14b4c4b
  6c:	4b4b4b4b 	c2	0x14b4b4b
  70:	4b4b4b4b 	c2	0x14b4b4b
  74:	4c4b4c4b 	0x4c4b4c4b
  78:	4d4b4d4b 	0x4d4b4d4b
  7c:	4b4b4d4b 	c2	0x14b4d4b
  80:	4b4b4b4b 	c2	0x14b4b4b
  84:	4c4b4d4b 	0x4c4b4d4b
  88:	4b4b4b4b 	c2	0x14b4b4b
  8c:	4b4b4b4b 	c2	0x14b4b4b
  90:	4b4c4b4d 	c2	0x14c4b4d
  94:	4b4b4b4b 	c2	0x14b4b4b
  98:	4d4b4b4b 	0x4d4b4b4b
  9c:	4b4b4c4b 	c2	0x14b4c4b
  a0:	4b4b4b4b 	c2	0x14b4b4b
  a4:	4b4b4c4c 	c2	0x14b4c4c
  a8:	4b4b4b4b 	c2	0x14b4b4b
  ac:	4b4b4b4b 	c2	0x14b4b4b
  b0:	4b4b4b4e 	c2	0x14b4b4e
  b4:	4b4b4b4c 	c2	0x14b4b4c
  b8:	4b4b4b4b 	c2	0x14b4b4b
  bc:	4b4b4b4b 	c2	0x14b4b4b
  c0:	4b4b4b4e 	c2	0x14b4b4e
  c4:	4b4b4b4b 	c2	0x14b4b4b
  c8:	4b4b4c4d 	c2	0x14b4c4d
  cc:	4b4b4b4b 	c2	0x14b4b4b
  d0:	4b4c4b4d 	c2	0x14c4b4d
  d4:	4d4b4b4b 	0x4d4b4b4b
  d8:	4b4c4b4b 	c2	0x14c4b4b
  dc:	4d4b4c4b 	0x4d4b4c4b
  e0:	4b4b4c4b 	c2	0x14b4c4b
  e4:	4b4b4b4b 	c2	0x14b4b4b
  e8:	4b4c4b4b 	c2	0x14c4b4b
  ec:	a4030204 	sh	v1,516(zero)
  f0:	bb4b4a7e 	swr	t3,19070(k0)
  f4:	83bbbcbb 	lb	k1,-17221(sp)
  f8:	4d4b4b4b 	0x4d4b4b4b
  fc:	bf4dbbbc 	cache	0xd,-17476(k0)
 100:	4bbcbcbc 	c2	0x1bcbcbc
 104:	4c4b4b4b 	0x4c4b4b4b
 108:	4bbb4e4b 	c2	0x1bb4e4b
 10c:	4b4b4b4b 	c2	0x14b4b4b
 110:	4b4b4b4d 	c2	0x14b4b4d
 114:	4b4b4b4e 	c2	0x14b4b4e
 118:	04024b4d 	bltzl	zero,12e50 <__start-0xbfbed1b0>
 11c:	Address 0x000000000000011c is out of bounds.

