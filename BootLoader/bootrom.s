
boot.elf:     file format elf32-tradlittlemips
boot.elf

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
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:36
bfc00050:	3c0bff00 	lui	t3,0xff00
bfc00054:	356b0001 	ori	t3,t3,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:37
bfc00058:	112a002e 	beq	t1,t2,bfc00114 <flash2ram>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:38
bfc0005c:	ae0b0010 	sw	t3,16(s0)

bfc00060 <uart_cmd>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:41
bfc00060:	3c080008 	lui	t0,0x8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:42
bfc00064:	ae080010 	sw	t0,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:44
bfc00068:	0ff0008a 	jal	bfc00228 <check_rx>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:45
bfc0006c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:47
bfc00070:	00408825 	move	s1,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:49
bfc00074:	2a290030 	slti	t1,s1,48
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:50
bfc00078:	15200020 	bnez	t1,bfc000fc <bad_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:51
bfc0007c:	24090035 	li	t1,53
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:52
bfc00080:	0131482a 	slt	t1,t1,s1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:53
bfc00084:	1520001d 	bnez	t1,bfc000fc <bad_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:54
bfc00088:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:55
bfc0008c:	2404007e 	li	a0,126
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:56
bfc00090:	0ff00092 	jal	bfc00248 <putbyte>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:57
bfc00094:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:59
bfc00098:	24080035 	li	t0,53
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:60
bfc0009c:	1228001f 	beq	s1,t0,bfc0011c <uart2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:61
bfc000a0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:64
bfc000a4:	0ff0009a 	jal	bfc00268 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:65
bfc000a8:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:66
bfc000ac:	00409025 	move	s2,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:69
bfc000b0:	24080034 	li	t0,52
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:70
bfc000b4:	12280015 	beq	s1,t0,bfc0010c <run>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:71
bfc000b8:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:74
bfc000bc:	0ff0009a 	jal	bfc00268 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:75
bfc000c0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:76
bfc000c4:	1040ffe6 	beqz	v0,bfc00060 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:77
bfc000c8:	00409825 	move	s3,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:79
bfc000cc:	24080030 	li	t0,48
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:80
bfc000d0:	1228001a 	beq	s1,t0,bfc0013c <uart2ram>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:81
bfc000d4:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:82
bfc000d8:	24080031 	li	t0,49
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:83
bfc000dc:	12280022 	beq	s1,t0,bfc00168 <ram2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:84
bfc000e0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:85
bfc000e4:	24080032 	li	t0,50
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:86
bfc000e8:	1228002a 	beq	s1,t0,bfc00194 <uart2flash>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:87
bfc000ec:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:88
bfc000f0:	24080033 	li	t0,51
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:89
bfc000f4:	1228003c 	beq	s1,t0,bfc001e8 <flash2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:90
bfc000f8:	00000000 	nop

bfc000fc <bad_cmd>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:92
bfc000fc:	3c088000 	lui	t0,0x8000
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:93
bfc00100:	ae080010 	sw	t0,16(s0)

bfc00104 <stop>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:95
bfc00104:	1000ffff 	b	bfc00104 <stop>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:96
bfc00108:	00000000 	nop

bfc0010c <run>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:99
bfc0010c:	02400008 	jr	s2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:100
bfc00110:	00000000 	nop

bfc00114 <flash2ram>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:103
bfc00114:	10000070 	b	bfc002d8 <load_elf>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:104
bfc00118:	00000000 	nop

bfc0011c <uart2uart>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:107
bfc0011c:	0ff0009a 	jal	bfc00268 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:108
bfc00120:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:109
bfc00124:	00022025 	or	a0,zero,v0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:110
bfc00128:	ae020010 	sw	v0,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:111
bfc0012c:	0ff000a9 	jal	bfc002a4 <putword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:112
bfc00130:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:113
bfc00134:	1000fff9 	b	bfc0011c <uart2uart>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:114
bfc00138:	00000000 	nop

bfc0013c <uart2ram>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:117
bfc0013c:	00139880 	sll	s3,s3,0x2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:118
bfc00140:	02729821 	addu	s3,s3,s2

bfc00144 <uart2ram_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:120
bfc00144:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:121
bfc00148:	0ff0009a 	jal	bfc00268 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:122
bfc0014c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:123
bfc00150:	ae420000 	sw	v0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:124
bfc00154:	26520004 	addiu	s2,s2,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:125
bfc00158:	1672fffa 	bne	s3,s2,bfc00144 <uart2ram_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:126
bfc0015c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:127
bfc00160:	1000ffbf 	b	bfc00060 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:128
bfc00164:	00000000 	nop

bfc00168 <ram2uart>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:131
bfc00168:	00139880 	sll	s3,s3,0x2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:132
bfc0016c:	02729821 	addu	s3,s3,s2

bfc00170 <ram2uart_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:134
bfc00170:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:135
bfc00174:	8e440000 	lw	a0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:136
bfc00178:	0ff000a9 	jal	bfc002a4 <putword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:137
bfc0017c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:138
bfc00180:	26520004 	addiu	s2,s2,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:139
bfc00184:	1672fffa 	bne	s3,s2,bfc00170 <ram2uart_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:140
bfc00188:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:141
bfc0018c:	1000ffb4 	b	bfc00060 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:142
bfc00190:	00000000 	nop

bfc00194 <uart2flash>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:145
bfc00194:	00139840 	sll	s3,s3,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:146
bfc00198:	02729821 	addu	s3,s3,s2

bfc0019c <uart2flash_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:148
bfc0019c:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:149
bfc001a0:	0ff0009a 	jal	bfc00268 <getword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:150
bfc001a4:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:151
bfc001a8:	24080040 	li	t0,64
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:152
bfc001ac:	a6480000 	sh	t0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:153
bfc001b0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:154
bfc001b4:	a6420000 	sh	v0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:156
bfc001b8:	24080070 	li	t0,112

bfc001bc <wait_write>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:158
bfc001bc:	a6480000 	sh	t0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:159
bfc001c0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:160
bfc001c4:	96490000 	lhu	t1,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:161
bfc001c8:	31290080 	andi	t1,t1,0x80
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:162
bfc001cc:	1120fffb 	beqz	t1,bfc001bc <wait_write>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:163
bfc001d0:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:164
bfc001d4:	26520002 	addiu	s2,s2,2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:165
bfc001d8:	1672fff0 	bne	s3,s2,bfc0019c <uart2flash_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:166
bfc001dc:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:167
bfc001e0:	1000ff9f 	b	bfc00060 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:168
bfc001e4:	00000000 	nop

bfc001e8 <flash2uart>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:172
bfc001e8:	240800ff 	li	t0,255
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:173
bfc001ec:	a6480000 	sh	t0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:174
bfc001f0:	00139880 	sll	s3,s3,0x2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:175
bfc001f4:	02729821 	addu	s3,s3,s2

bfc001f8 <flash2uart_next>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:177
bfc001f8:	ae120010 	sw	s2,16(s0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:178
bfc001fc:	96440000 	lhu	a0,0(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:179
bfc00200:	96480002 	lhu	t0,2(s2)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:180
bfc00204:	00084400 	sll	t0,t0,0x10
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:181
bfc00208:	00882025 	or	a0,a0,t0
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:182
bfc0020c:	0ff000a9 	jal	bfc002a4 <putword>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:183
bfc00210:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:184
bfc00214:	26520004 	addiu	s2,s2,4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:185
bfc00218:	1672fff7 	bne	s3,s2,bfc001f8 <flash2uart_next>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:186
bfc0021c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:187
bfc00220:	1000ff8f 	b	bfc00060 <uart_cmd>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:188
bfc00224:	00000000 	nop

bfc00228 <check_rx>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:192
bfc00228:	3c08bfe4 	lui	t0,0xbfe4
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:193
bfc0022c:	81090005 	lb	t1,5(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:194
bfc00230:	31290001 	andi	t1,t1,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:195
bfc00234:	1120fffc 	beqz	t1,bfc00228 <check_rx>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:196
bfc00238:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:197
bfc0023c:	81020000 	lb	v0,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:198
bfc00240:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:199
bfc00244:	00000000 	nop

bfc00248 <putbyte>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:202
bfc00248:	3c08bfe4 	lui	t0,0xbfe4

bfc0024c <check_tx>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:204
bfc0024c:	81090005 	lb	t1,5(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:205
bfc00250:	31290020 	andi	t1,t1,0x20
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:206
bfc00254:	1120fffd 	beqz	t1,bfc0024c <check_tx>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:207
bfc00258:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:208
bfc0025c:	a1040000 	sb	a0,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:209
bfc00260:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:210
bfc00264:	00000000 	nop

bfc00268 <getword>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:213
bfc00268:	240c0008 	li	t4,8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:214
bfc0026c:	3c08bfe4 	lui	t0,0xbfe4

bfc00270 <check_rx_word>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:216
bfc00270:	81090005 	lb	t1,5(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:217
bfc00274:	31290001 	andi	t1,t1,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:218
bfc00278:	1120fffd 	beqz	t1,bfc00270 <check_rx_word>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:219
bfc0027c:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:220
bfc00280:	810a0000 	lb	t2,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:223
bfc00284:	000a5600 	sll	t2,t2,0x18
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:224
bfc00288:	00021202 	srl	v0,v0,0x8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:225
bfc0028c:	004a1025 	or	v0,v0,t2
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:227
bfc00290:	000c6042 	srl	t4,t4,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:228
bfc00294:	1580fff6 	bnez	t4,bfc00270 <check_rx_word>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:229
bfc00298:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:231
bfc0029c:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:232
bfc002a0:	00000000 	nop

bfc002a4 <putword>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:235
bfc002a4:	240c0008 	li	t4,8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:236
bfc002a8:	3c08bfe4 	lui	t0,0xbfe4

bfc002ac <check_tx_word>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:238
bfc002ac:	81090005 	lb	t1,5(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:239
bfc002b0:	31290020 	andi	t1,t1,0x20
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:240
bfc002b4:	1120fffd 	beqz	t1,bfc002ac <check_tx_word>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:241
bfc002b8:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:242
bfc002bc:	a1040000 	sb	a0,0(t0)
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:243
bfc002c0:	00042202 	srl	a0,a0,0x8
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:244
bfc002c4:	000c6042 	srl	t4,t4,0x1
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:245
bfc002c8:	1580fff8 	bnez	t4,bfc002ac <check_tx_word>
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:246
bfc002cc:	00000000 	nop
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:248
bfc002d0:	03e00008 	jr	ra
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/boot.s:249
bfc002d4:	00000000 	nop

bfc002d8 <load_elf>:
/home/csy/BootLoader/assembly-naivemips-brd-NSCSCC/bootasm.S:30
bfc002d8:	3c10bfa0 	lui	s0,0xbfa0
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
   0:	0000011e 	0x11e
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
  4c:	834b4b4b 	lb	t3,19275(k0)
  50:	4c4b4d4b 	0x4c4b4d4b
  54:	4b4c4c4b 	c2	0x14c4c4b
  58:	4b4b4b4b 	c2	0x14b4b4b
  5c:	4c4b4b4b 	0x4c4b4b4b
  60:	4b4d4b4b 	c2	0x14d4b4b
  64:	4b4b4d4b 	c2	0x14b4d4b
  68:	4b4b4b4d 	c2	0x14b4b4d
  6c:	4b4b4b4c 	c2	0x14b4b4c
  70:	4b4b4b4b 	c2	0x14b4b4b
  74:	4b4b4b4b 	c2	0x14b4b4b
  78:	4b4c4b4c 	c2	0x14c4b4c
  7c:	4b4d4b4d 	c2	0x14d4b4d
  80:	4b4b4b4d 	c2	0x14b4b4d
  84:	4b4b4b4b 	c2	0x14b4b4b
  88:	4b4c4b4d 	c2	0x14c4b4d
  8c:	4b4b4b4b 	c2	0x14b4b4b
  90:	4d4b4b4b 	0x4d4b4b4b
  94:	4b4b4c4b 	c2	0x14b4c4b
  98:	4b4b4b4b 	c2	0x14b4b4b
  9c:	4b4d4b4b 	c2	0x14d4b4b
  a0:	4b4b4b4c 	c2	0x14b4b4c
  a4:	4c4b4b4b 	0x4c4b4b4b
  a8:	4b4b4b4c 	c2	0x14b4b4c
  ac:	4b4b4b4b 	c2	0x14b4b4b
  b0:	4e4b4b4b 	c3	0x4b4b4b
  b4:	4c4b4b4b 	0x4c4b4b4b
  b8:	4b4b4b4b 	c2	0x14b4b4b
  bc:	4b4b4b4b 	c2	0x14b4b4b
  c0:	4e4b4b4b 	c3	0x4b4b4b
  c4:	4b4b4b4b 	c2	0x14b4b4b
  c8:	4d4b4b4b 	0x4d4b4b4b
  cc:	4b4b4b4c 	c2	0x14b4b4c
  d0:	4d4b4b4b 	0x4d4b4b4b
  d4:	4b4b4c4b 	c2	0x14b4c4b
  d8:	4b4d4b4b 	c2	0x14d4b4b
  dc:	4b4b4c4b 	c2	0x14b4c4b
  e0:	4b4d4b4c 	c2	0x14d4b4c
  e4:	4b4b4b4c 	c2	0x14b4b4c
  e8:	4b4b4b4b 	c2	0x14b4b4b
  ec:	044b4c4b 	tltiu	v0,19531
  f0:	7ea50302 	0x7ea50302
  f4:	bbbb4b4a 	swr	k1,19274(sp)
  f8:	4b83bbbc 	c2	0x183bbbc
  fc:	bc4d4b4b 	cache	0xd,19275(v0)
 100:	bcbf4dbb 	cache	0x1f,19899(a1)
 104:	4b4bbcbc 	c2	0x14bbcbc
 108:	4b4c4b4b 	c2	0x14c4b4b
 10c:	4b4bbb4e 	c2	0x14bbb4e
 110:	4d4b4b4b 	0x4d4b4b4b
 114:	4e4b4b4b 	c3	0x4b4b4b
 118:	4d4b4b4b 	0x4d4b4b4b
 11c:	0004024b 	0x4024b
 120:	Address 0x0000000000000120 is out of bounds.

