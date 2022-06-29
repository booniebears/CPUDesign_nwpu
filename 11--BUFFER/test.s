
main.elf:     file format elf32-tradlittlemips
main.elf


Disassembly of section .text:

bfc00000 <_ftext>:
/home/csy/func/start.S:24
bfc00000:	3c1bbfb0 	lui	k1,0xbfb0
bfc00004:	af608ffc 	sw	zero,-28676(k1)
bfc00008:	af608ffc 	sw	zero,-28676(k1)
bfc0000c:	af60fff8 	sw	zero,-8(k1)
bfc00010:	af608ffc 	sw	zero,-28676(k1)
bfc00014:	af608ffc 	sw	zero,-28676(k1)
bfc00018:	8f608ffc 	lw	zero,-28676(k1)
bfc0001c:	8f7bfff8 	lw	k1,-8(k1)
/home/csy/func/start.S:25
bfc00020:	0bf00158 	j	bfc00560 <locate>
bfc00024:	00000000 	nop
/home/csy/func/start.S:26
bfc00028:	00000000 	nop
/home/csy/func/start.S:29
bfc0002c:	3c088000 	lui	t0,0x8000
/home/csy/func/start.S:30
bfc00030:	25290001 	addiu	t1,t1,1
/home/csy/func/start.S:31
bfc00034:	01005025 	move	t2,t0
/home/csy/func/start.S:32
bfc00038:	01ae5821 	addu	t3,t5,t6
/home/csy/func/start.S:33
bfc0003c:	8d0c0000 	lw	t4,0(t0)
	...
/home/csy/func/start.S:38
bfc000e8:	3c088000 	lui	t0,0x8000
/home/csy/func/start.S:39
bfc000ec:	25290001 	addiu	t1,t1,1
/home/csy/func/start.S:40
bfc000f0:	01005025 	move	t2,t0
/home/csy/func/start.S:41
bfc000f4:	01ae5821 	addu	t3,t5,t6
/home/csy/func/start.S:42
bfc000f8:	8d0c0000 	lw	t4,0(t0)
/home/csy/func/start.S:43
bfc000fc:	00000000 	nop

bfc00100 <test_finish>:
/home/csy/func/start.S:46
bfc00100:	1000ffff 	b	bfc00100 <test_finish>
/home/csy/func/start.S:47
bfc00104:	25080001 	addiu	t0,t0,1
/home/csy/func/start.S:48
bfc00108:	00000000 	nop
/home/csy/func/start.S:50
bfc0010c:	3c088000 	lui	t0,0x8000
/home/csy/func/start.S:51
bfc00110:	25290001 	addiu	t1,t1,1
/home/csy/func/start.S:52
bfc00114:	01005025 	move	t2,t0
/home/csy/func/start.S:53
bfc00118:	01ae5821 	addu	t3,t5,t6
/home/csy/func/start.S:54
bfc0011c:	8d0c0000 	lw	t4,0(t0)
	...

bfc00200 <tlb_refill>:
/home/csy/func/start.S:60
bfc00200:	401a6800 	mfc0	k0,c0_cause
bfc00204:	00000000 	nop
/home/csy/func/start.S:61
bfc00208:	335a007c 	andi	k0,k0,0x7c
/home/csy/func/start.S:62
bfc0020c:	241b0001 	li	k1,1
/home/csy/func/start.S:63
bfc00210:	125b000c 	beq	s2,k1,bfc00244 <load_refill_ex>
bfc00214:	00000000 	nop
/home/csy/func/start.S:64
bfc00218:	00000000 	nop
/home/csy/func/start.S:65
bfc0021c:	241b0002 	li	k1,2
/home/csy/func/start.S:66
bfc00220:	125b001d 	beq	s2,k1,bfc00298 <store_refill_ex>
bfc00224:	00000000 	nop
/home/csy/func/start.S:67
bfc00228:	00000000 	nop
/home/csy/func/start.S:68
bfc0022c:	241b0003 	li	k1,3
/home/csy/func/start.S:69
bfc00230:	125b002e 	beq	s2,k1,bfc002ec <fetch_refill_ex>
bfc00234:	00000000 	nop
/home/csy/func/start.S:70
bfc00238:	100000c4 	b	bfc0054c <tlb_fail>
/home/csy/func/start.S:71
bfc0023c:	00000000 	nop
/home/csy/func/start.S:72
bfc00240:	00000000 	nop

bfc00244 <load_refill_ex>:
/home/csy/func/start.S:74
bfc00244:	241b0008 	li	k1,8
/home/csy/func/start.S:75
bfc00248:	175b00c0 	bne	k0,k1,bfc0054c <tlb_fail>
bfc0024c:	00000000 	nop
/home/csy/func/start.S:76
bfc00250:	00000000 	nop
/home/csy/func/start.S:77
bfc00254:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:78
bfc00258:	3c1bbfc0 	lui	k1,0xbfc0
bfc0025c:	277b0c18 	addiu	k1,k1,3096
/home/csy/func/start.S:79
bfc00260:	175b00ba 	bne	k0,k1,bfc0054c <tlb_fail>
bfc00264:	00000000 	nop
/home/csy/func/start.S:80
bfc00268:	00000000 	nop
/home/csy/func/start.S:81
bfc0026c:	3c090023 	lui	t1,0x23
bfc00270:	35294500 	ori	t1,t1,0x4500
/home/csy/func/start.S:82
bfc00274:	40891000 	mtc0	t1,c0_entrylo
/home/csy/func/start.S:83
bfc00278:	3c0a0078 	lui	t2,0x78
bfc0027c:	354a9a00 	ori	t2,t2,0x9a00
/home/csy/func/start.S:84
bfc00280:	408a1800 	mtc0	t2,$3
/home/csy/func/start.S:85
bfc00284:	240b0001 	li	t3,1
/home/csy/func/start.S:86
bfc00288:	408b0000 	mtc0	t3,c0_index
/home/csy/func/start.S:87
bfc0028c:	42000002 	tlbwi
/home/csy/func/start.S:88
bfc00290:	00000000 	nop
/home/csy/func/start.S:90
bfc00294:	42000018 	c0	0x18

bfc00298 <store_refill_ex>:
/home/csy/func/start.S:93
bfc00298:	241b000c 	li	k1,12
/home/csy/func/start.S:94
bfc0029c:	175b00ab 	bne	k0,k1,bfc0054c <tlb_fail>
bfc002a0:	00000000 	nop
/home/csy/func/start.S:95
bfc002a4:	00000000 	nop
/home/csy/func/start.S:96
bfc002a8:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:97
bfc002ac:	3c1bbfc0 	lui	k1,0xbfc0
bfc002b0:	277b07d4 	addiu	k1,k1,2004
/home/csy/func/start.S:98
bfc002b4:	175b00a5 	bne	k0,k1,bfc0054c <tlb_fail>
bfc002b8:	00000000 	nop
/home/csy/func/start.S:99
bfc002bc:	00000000 	nop
/home/csy/func/start.S:100
bfc002c0:	3c090023 	lui	t1,0x23
bfc002c4:	35294500 	ori	t1,t1,0x4500
/home/csy/func/start.S:101
bfc002c8:	40891000 	mtc0	t1,c0_entrylo
/home/csy/func/start.S:102
bfc002cc:	3c0a0078 	lui	t2,0x78
bfc002d0:	354a9a00 	ori	t2,t2,0x9a00
/home/csy/func/start.S:103
bfc002d4:	408a1800 	mtc0	t2,$3
/home/csy/func/start.S:104
bfc002d8:	240b0002 	li	t3,2
/home/csy/func/start.S:105
bfc002dc:	408b0000 	mtc0	t3,c0_index
/home/csy/func/start.S:106
bfc002e0:	42000002 	tlbwi
/home/csy/func/start.S:107
bfc002e4:	00000000 	nop
/home/csy/func/start.S:109
bfc002e8:	42000018 	c0	0x18

bfc002ec <fetch_refill_ex>:
/home/csy/func/start.S:112
bfc002ec:	241b0008 	li	k1,8
/home/csy/func/start.S:113
bfc002f0:	175b0096 	bne	k0,k1,bfc0054c <tlb_fail>
bfc002f4:	00000000 	nop
/home/csy/func/start.S:114
bfc002f8:	00000000 	nop
/home/csy/func/start.S:115
bfc002fc:	3c1bbfc0 	lui	k1,0xbfc0
bfc00300:	277b0afc 	addiu	k1,k1,2812
/home/csy/func/start.S:116
bfc00304:	337b0fff 	andi	k1,k1,0xfff
/home/csy/func/start.S:117
bfc00308:	3c1a3333 	lui	k0,0x3333
bfc0030c:	375a3000 	ori	k0,k0,0x3000
/home/csy/func/start.S:118
bfc00310:	037ad825 	or	k1,k1,k0
/home/csy/func/start.S:119
bfc00314:	401a7000 	mfc0	k0,c0_epc
bfc00318:	00000000 	nop
/home/csy/func/start.S:120
bfc0031c:	175b008b 	bne	k0,k1,bfc0054c <tlb_fail>
bfc00320:	00000000 	nop
/home/csy/func/start.S:121
bfc00324:	00000000 	nop
/home/csy/func/start.S:122
bfc00328:	3c090023 	lui	t1,0x23
bfc0032c:	35294500 	ori	t1,t1,0x4500
/home/csy/func/start.S:123
bfc00330:	40891000 	mtc0	t1,c0_entrylo
/home/csy/func/start.S:124
bfc00334:	3c0a0078 	lui	t2,0x78
bfc00338:	354a9a00 	ori	t2,t2,0x9a00
/home/csy/func/start.S:125
bfc0033c:	408a1800 	mtc0	t2,$3
/home/csy/func/start.S:126
bfc00340:	240b0003 	li	t3,3
/home/csy/func/start.S:127
bfc00344:	408b0000 	mtc0	t3,c0_index
/home/csy/func/start.S:128
bfc00348:	42000002 	tlbwi
/home/csy/func/start.S:129
bfc0034c:	00000000 	nop
/home/csy/func/start.S:131
bfc00350:	42000018 	c0	0x18
	...
/home/csy/func/start.S:135
bfc00380:	401a6800 	mfc0	k0,c0_cause
bfc00384:	00000000 	nop
/home/csy/func/start.S:136
bfc00388:	335a007c 	andi	k0,k0,0x7c
/home/csy/func/start.S:137
bfc0038c:	241b0001 	li	k1,1
/home/csy/func/start.S:138
bfc00390:	125b000c 	beq	s2,k1,bfc003c4 <load_inv_ex>
bfc00394:	00000000 	nop
/home/csy/func/start.S:139
bfc00398:	00000000 	nop
/home/csy/func/start.S:140
bfc0039c:	241b0002 	li	k1,2
/home/csy/func/start.S:141
bfc003a0:	125b0020 	beq	s2,k1,bfc00424 <store_inv_mod_ex>
bfc003a4:	00000000 	nop
/home/csy/func/start.S:142
bfc003a8:	00000000 	nop
/home/csy/func/start.S:143
bfc003ac:	241b0003 	li	k1,3
/home/csy/func/start.S:144
bfc003b0:	125b0046 	beq	s2,k1,bfc004cc <fetch_inv_ex>
bfc003b4:	00000000 	nop
/home/csy/func/start.S:145
bfc003b8:	10000064 	b	bfc0054c <tlb_fail>
/home/csy/func/start.S:146
bfc003bc:	00000000 	nop
/home/csy/func/start.S:147
bfc003c0:	00000000 	nop

bfc003c4 <load_inv_ex>:
/home/csy/func/start.S:149
bfc003c4:	241b0008 	li	k1,8
/home/csy/func/start.S:150
bfc003c8:	135b0004 	beq	k0,k1,bfc003dc <load_tlb_invalid>
bfc003cc:	00000000 	nop
/home/csy/func/start.S:151
bfc003d0:	1000005e 	b	bfc0054c <tlb_fail>
/home/csy/func/start.S:152
bfc003d4:	00000000 	nop
/home/csy/func/start.S:153
bfc003d8:	00000000 	nop

bfc003dc <load_tlb_invalid>:
/home/csy/func/start.S:155
bfc003dc:	42000008 	tlbp
/home/csy/func/start.S:156
bfc003e0:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:157
bfc003e4:	3c1bbfc0 	lui	k1,0xbfc0
bfc003e8:	277b0c18 	addiu	k1,k1,3096
/home/csy/func/start.S:158
bfc003ec:	175b0057 	bne	k0,k1,bfc0054c <tlb_fail>
bfc003f0:	00000000 	nop
/home/csy/func/start.S:159
bfc003f4:	00000000 	nop
/home/csy/func/start.S:160
bfc003f8:	275a0008 	addiu	k0,k0,8
/home/csy/func/start.S:161
bfc003fc:	409a7000 	mtc0	k0,c0_epc
/home/csy/func/start.S:162
bfc00400:	3c1a02ff 	lui	k0,0x2ff
bfc00404:	375a37d2 	ori	k0,k0,0x37d2
/home/csy/func/start.S:163
bfc00408:	409a1000 	mtc0	k0,c0_entrylo
/home/csy/func/start.S:164
bfc0040c:	3c1b02ff 	lui	k1,0x2ff
bfc00410:	377b3412 	ori	k1,k1,0x3412
/home/csy/func/start.S:165
bfc00414:	409b1800 	mtc0	k1,$3
/home/csy/func/start.S:166
bfc00418:	42000002 	tlbwi
/home/csy/func/start.S:167
bfc0041c:	24121111 	li	s2,4369
/home/csy/func/start.S:169
bfc00420:	42000018 	c0	0x18

bfc00424 <store_inv_mod_ex>:
/home/csy/func/start.S:173
bfc00424:	241b000c 	li	k1,12
/home/csy/func/start.S:174
bfc00428:	135b0008 	beq	k0,k1,bfc0044c <store_tlb_invalid>
bfc0042c:	00000000 	nop
/home/csy/func/start.S:175
bfc00430:	00000000 	nop
/home/csy/func/start.S:176
bfc00434:	241b0004 	li	k1,4
/home/csy/func/start.S:177
bfc00438:	135b0013 	beq	k0,k1,bfc00488 <store_tlb_modified>
bfc0043c:	00000000 	nop
/home/csy/func/start.S:178
bfc00440:	10000042 	b	bfc0054c <tlb_fail>
/home/csy/func/start.S:179
bfc00444:	00000000 	nop
/home/csy/func/start.S:180
bfc00448:	00000000 	nop

bfc0044c <store_tlb_invalid>:
/home/csy/func/start.S:182
bfc0044c:	42000008 	tlbp
/home/csy/func/start.S:183
bfc00450:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:184
bfc00454:	3c1bbfc0 	lui	k1,0xbfc0
bfc00458:	277b07d4 	addiu	k1,k1,2004
/home/csy/func/start.S:185
bfc0045c:	175b003b 	bne	k0,k1,bfc0054c <tlb_fail>
bfc00460:	00000000 	nop
/home/csy/func/start.S:186
bfc00464:	00000000 	nop
/home/csy/func/start.S:187
bfc00468:	3c1a02ff 	lui	k0,0x2ff
bfc0046c:	375a3452 	ori	k0,k0,0x3452
/home/csy/func/start.S:188
bfc00470:	409a1000 	mtc0	k0,c0_entrylo
/home/csy/func/start.S:189
bfc00474:	3c1b02ff 	lui	k1,0x2ff
bfc00478:	377b0812 	ori	k1,k1,0x812
/home/csy/func/start.S:190
bfc0047c:	409b1800 	mtc0	k1,$3
/home/csy/func/start.S:191
bfc00480:	42000002 	tlbwi
/home/csy/func/start.S:193
bfc00484:	42000018 	c0	0x18

bfc00488 <store_tlb_modified>:
/home/csy/func/start.S:196
bfc00488:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:197
bfc0048c:	3c1bbfc0 	lui	k1,0xbfc0
bfc00490:	277b07d4 	addiu	k1,k1,2004
/home/csy/func/start.S:198
bfc00494:	175b002d 	bne	k0,k1,bfc0054c <tlb_fail>
bfc00498:	00000000 	nop
/home/csy/func/start.S:199
bfc0049c:	00000000 	nop
/home/csy/func/start.S:200
bfc004a0:	275a0008 	addiu	k0,k0,8
/home/csy/func/start.S:201
bfc004a4:	409a7000 	mtc0	k0,c0_epc
/home/csy/func/start.S:202
bfc004a8:	3c1a02ff 	lui	k0,0x2ff
bfc004ac:	375a3456 	ori	k0,k0,0x3456
/home/csy/func/start.S:203
bfc004b0:	409a1000 	mtc0	k0,c0_entrylo
/home/csy/func/start.S:204
bfc004b4:	3c1b02ff 	lui	k1,0x2ff
bfc004b8:	377b0812 	ori	k1,k1,0x812
/home/csy/func/start.S:205
bfc004bc:	409b1800 	mtc0	k1,$3
/home/csy/func/start.S:206
bfc004c0:	42000002 	tlbwi
/home/csy/func/start.S:207
bfc004c4:	24122222 	li	s2,8738
/home/csy/func/start.S:209
bfc004c8:	42000018 	c0	0x18

bfc004cc <fetch_inv_ex>:
/home/csy/func/start.S:213
bfc004cc:	241b0008 	li	k1,8
/home/csy/func/start.S:214
bfc004d0:	135b0004 	beq	k0,k1,bfc004e4 <fetch_tlb_invalid>
bfc004d4:	00000000 	nop
/home/csy/func/start.S:215
bfc004d8:	1000001c 	b	bfc0054c <tlb_fail>
/home/csy/func/start.S:216
bfc004dc:	00000000 	nop
/home/csy/func/start.S:217
bfc004e0:	00000000 	nop

bfc004e4 <fetch_tlb_invalid>:
/home/csy/func/start.S:219
bfc004e4:	42000008 	tlbp
/home/csy/func/start.S:220
bfc004e8:	3c1bbfc0 	lui	k1,0xbfc0
bfc004ec:	277b0afc 	addiu	k1,k1,2812
/home/csy/func/start.S:221
bfc004f0:	337b0fff 	andi	k1,k1,0xfff
/home/csy/func/start.S:222
bfc004f4:	3c1a3333 	lui	k0,0x3333
bfc004f8:	375a3000 	ori	k0,k0,0x3000
/home/csy/func/start.S:223
bfc004fc:	037ad825 	or	k1,k1,k0
/home/csy/func/start.S:224
bfc00500:	401a7000 	mfc0	k0,c0_epc
bfc00504:	00000000 	nop
/home/csy/func/start.S:225
bfc00508:	175b0010 	bne	k0,k1,bfc0054c <tlb_fail>
bfc0050c:	00000000 	nop
/home/csy/func/start.S:226
bfc00510:	00000000 	nop
/home/csy/func/start.S:227
bfc00514:	3c1a02ff 	lui	k0,0x2ff
bfc00518:	375a37d2 	ori	k0,k0,0x37d2
/home/csy/func/start.S:228
bfc0051c:	409a1000 	mtc0	k0,c0_entrylo
/home/csy/func/start.S:229
bfc00520:	3c1bbfc0 	lui	k1,0xbfc0
bfc00524:	277b0afc 	addiu	k1,k1,2812
/home/csy/func/start.S:230
bfc00528:	001bdb02 	srl	k1,k1,0xc
/home/csy/func/start.S:231
bfc0052c:	001bd980 	sll	k1,k1,0x6
/home/csy/func/start.S:232
bfc00530:	377b0012 	ori	k1,k1,0x12
/home/csy/func/start.S:233
bfc00534:	409b1800 	mtc0	k1,$3
/home/csy/func/start.S:234
bfc00538:	42000002 	tlbwi
	...
/home/csy/func/start.S:237
bfc00544:	24123333 	li	s2,13107
/home/csy/func/start.S:239
bfc00548:	42000018 	c0	0x18

bfc0054c <tlb_fail>:
/home/csy/func/start.S:243
bfc0054c:	00104e00 	sll	t1,s0,0x18
/home/csy/func/start.S:244
bfc00550:	01334025 	or	t0,t1,s3
/home/csy/func/start.S:245
bfc00554:	03e00008 	jr	ra
/home/csy/func/start.S:246
bfc00558:	ae280000 	sw	t0,0(s1)
/home/csy/func/start.S:247
bfc0055c:	00000000 	nop

bfc00560 <locate>:
/home/csy/func/start.S:252
bfc00560:	3c04bfb0 	lui	a0,0xbfb0
bfc00564:	2484f008 	addiu	a0,a0,-4088
/home/csy/func/start.S:253
bfc00568:	3c05bfb0 	lui	a1,0xbfb0
bfc0056c:	24a5f004 	addiu	a1,a1,-4092
/home/csy/func/start.S:254
bfc00570:	3c06bfb0 	lui	a2,0xbfb0
bfc00574:	24c6f000 	addiu	a2,a2,-4096
/home/csy/func/start.S:255
bfc00578:	3c11bfb0 	lui	s1,0xbfb0
bfc0057c:	2631f010 	addiu	s1,s1,-4080
/home/csy/func/start.S:257
bfc00580:	3c090000 	lui	t1,0x0
bfc00584:	25290002 	addiu	t1,t1,2
/home/csy/func/start.S:258
bfc00588:	3c0a0000 	lui	t2,0x0
bfc0058c:	254a0001 	addiu	t2,t2,1
/home/csy/func/start.S:259
bfc00590:	3c0b0001 	lui	t3,0x1
bfc00594:	256bffff 	addiu	t3,t3,-1
/home/csy/func/start.S:260
bfc00598:	3c130000 	lui	s3,0x0
/home/csy/func/start.S:262
bfc0059c:	ac890000 	sw	t1,0(a0)
/home/csy/func/start.S:263
bfc005a0:	acaa0000 	sw	t2,0(a1)
/home/csy/func/start.S:264
bfc005a4:	accb0000 	sw	t3,0(a2)
/home/csy/func/start.S:265
bfc005a8:	ae330000 	sw	s3,0(s1)
/home/csy/func/start.S:266
bfc005ac:	3c100000 	lui	s0,0x0

bfc005b0 <inst_test>:
/home/csy/func/start.S:268
bfc005b0:	0ff001c0 	jal	bfc00700 <n1_index_test>
/home/csy/func/start.S:269
bfc005b4:	00000000 	nop
/home/csy/func/start.S:270
bfc005b8:	0ff001ab 	jal	bfc006ac <wait_1s>
/home/csy/func/start.S:271
bfc005bc:	00000000 	nop
/home/csy/func/start.S:272
bfc005c0:	0ff00344 	jal	bfc00d10 <n2_entryhi_test>
/home/csy/func/start.S:273
bfc005c4:	00000000 	nop
/home/csy/func/start.S:274
bfc005c8:	0ff001ab 	jal	bfc006ac <wait_1s>
/home/csy/func/start.S:275
bfc005cc:	00000000 	nop
/home/csy/func/start.S:276
bfc005d0:	0ff002d0 	jal	bfc00b40 <n3_entrylo0_test>
/home/csy/func/start.S:277
bfc005d4:	00000000 	nop
/home/csy/func/start.S:278
bfc005d8:	0ff001ab 	jal	bfc006ac <wait_1s>
/home/csy/func/start.S:279
bfc005dc:	00000000 	nop
/home/csy/func/start.S:280
bfc005e0:	0ff00318 	jal	bfc00c60 <n4_entrylo1_test>
/home/csy/func/start.S:281
bfc005e4:	00000000 	nop
/home/csy/func/start.S:282
bfc005e8:	0ff001ab 	jal	bfc006ac <wait_1s>
/home/csy/func/start.S:283
bfc005ec:	00000000 	nop
/home/csy/func/start.S:284
bfc005f0:	0ff00208 	jal	bfc00820 <n5_tlbwi_tlbr_test>
/home/csy/func/start.S:285
bfc005f4:	00000000 	nop
/home/csy/func/start.S:286
bfc005f8:	0ff001ab 	jal	bfc006ac <wait_1s>
/home/csy/func/start.S:287
bfc005fc:	00000000 	nop
/home/csy/func/start.S:288
bfc00600:	0ff0028c 	jal	bfc00a30 <n6_tlbp_test>
/home/csy/func/start.S:289
bfc00604:	00000000 	nop
/home/csy/func/start.S:290
bfc00608:	0ff001ab 	jal	bfc006ac <wait_1s>
/home/csy/func/start.S:291
bfc0060c:	00000000 	nop
/home/csy/func/start.S:293
bfc00610:	0ff002fc 	jal	bfc00bf0 <n7_load_tlb_ex_test>
/home/csy/func/start.S:294
bfc00614:	00000000 	nop
/home/csy/func/start.S:295
bfc00618:	0ff001ab 	jal	bfc006ac <wait_1s>
/home/csy/func/start.S:296
bfc0061c:	00000000 	nop
/home/csy/func/start.S:297
bfc00620:	0ff001ec 	jal	bfc007b0 <n8_store_tlb_ex_test>
/home/csy/func/start.S:298
bfc00624:	00000000 	nop
/home/csy/func/start.S:299
bfc00628:	0ff001ab 	jal	bfc006ac <wait_1s>
/home/csy/func/start.S:300
bfc0062c:	00000000 	nop
/home/csy/func/start.S:301
bfc00630:	0ff002b4 	jal	bfc00ad0 <n9_fetch_tlb_ex_test>
/home/csy/func/start.S:302
bfc00634:	00000000 	nop
/home/csy/func/start.S:303
bfc00638:	0ff001ab 	jal	bfc006ac <wait_1s>
/home/csy/func/start.S:304
bfc0063c:	00000000 	nop

bfc00640 <test_end>:
/home/csy/func/start.S:308
bfc00640:	3c100000 	lui	s0,0x0
bfc00644:	26100009 	addiu	s0,s0,9
/home/csy/func/start.S:309
bfc00648:	1213000e 	beq	s0,s3,bfc00684 <test_end+0x44>
/home/csy/func/start.S:310
bfc0064c:	00000000 	nop
/home/csy/func/start.S:312
bfc00650:	3c04bfb0 	lui	a0,0xbfb0
bfc00654:	2484f000 	addiu	a0,a0,-4096
/home/csy/func/start.S:313
bfc00658:	3c05bfb0 	lui	a1,0xbfb0
bfc0065c:	24a5f008 	addiu	a1,a1,-4088
/home/csy/func/start.S:314
bfc00660:	3c06bfb0 	lui	a2,0xbfb0
bfc00664:	24c6f004 	addiu	a2,a2,-4092
/home/csy/func/start.S:316
bfc00668:	3c090000 	lui	t1,0x0
bfc0066c:	25290002 	addiu	t1,t1,2
/home/csy/func/start.S:318
bfc00670:	ac800000 	sw	zero,0(a0)
/home/csy/func/start.S:319
bfc00674:	aca90000 	sw	t1,0(a1)
/home/csy/func/start.S:320
bfc00678:	acc90000 	sw	t1,0(a2)
/home/csy/func/start.S:321
bfc0067c:	10000009 	b	bfc006a4 <test_end+0x64>
/home/csy/func/start.S:322
bfc00680:	00000000 	nop
/home/csy/func/start.S:324
bfc00684:	3c090000 	lui	t1,0x0
bfc00688:	25290001 	addiu	t1,t1,1
/home/csy/func/start.S:325
bfc0068c:	3c04bfb0 	lui	a0,0xbfb0
bfc00690:	2484f008 	addiu	a0,a0,-4088
/home/csy/func/start.S:326
bfc00694:	3c05bfb0 	lui	a1,0xbfb0
bfc00698:	24a5f004 	addiu	a1,a1,-4092
/home/csy/func/start.S:327
bfc0069c:	ac890000 	sw	t1,0(a0)
/home/csy/func/start.S:328
bfc006a0:	aca90000 	sw	t1,0(a1)
/home/csy/func/start.S:331
bfc006a4:	0bf00040 	j	bfc00100 <test_finish>
/home/csy/func/start.S:332
bfc006a8:	00000000 	nop

bfc006ac <wait_1s>:
/home/csy/func/start.S:335
bfc006ac:	3c09bfb0 	lui	t1,0xbfb0
bfc006b0:	2529fff4 	addiu	t1,t1,-12
/home/csy/func/start.S:336
bfc006b4:	3c080000 	lui	t0,0x0
/home/csy/func/start.S:337
bfc006b8:	8d2a0000 	lw	t2,0(t1)
/home/csy/func/start.S:338
bfc006bc:	15400008 	bnez	t2,bfc006e0 <wait_1s+0x34>
/home/csy/func/start.S:339
bfc006c0:	00000000 	nop
/home/csy/func/start.S:340
bfc006c4:	3c08bfb0 	lui	t0,0xbfb0
bfc006c8:	2508f020 	addiu	t0,t0,-4064
/home/csy/func/start.S:341
bfc006cc:	8d080000 	lw	t0,0(t0)
/home/csy/func/start.S:342
bfc006d0:	3c090000 	lui	t1,0x0
bfc006d4:	252900ff 	addiu	t1,t1,255
/home/csy/func/start.S:343
bfc006d8:	01094026 	xor	t0,t0,t1
/home/csy/func/start.S:344
bfc006dc:	00084400 	sll	t0,t0,0x10
/home/csy/func/start.S:346
bfc006e0:	25080001 	addiu	t0,t0,1
/home/csy/func/start.S:348
bfc006e4:	2508ffff 	addiu	t0,t0,-1
/home/csy/func/start.S:349
bfc006e8:	1500fffe 	bnez	t0,bfc006e4 <wait_1s+0x38>
/home/csy/func/start.S:350
bfc006ec:	00000000 	nop
/home/csy/func/start.S:351
bfc006f0:	03e00008 	jr	ra
/home/csy/func/start.S:352
bfc006f4:	00000000 	nop
	...

bfc00700 <n1_index_test>:
/home/csy/func/inst/n1_index.S:6
bfc00700:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n1_index.S:7
bfc00704:	24120000 	li	s2,0
/home/csy/func/inst/n1_index.S:8
bfc00708:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n1_index.S:11
bfc0070c:	24090003 	li	t1,3
/home/csy/func/inst/n1_index.S:12
bfc00710:	240a0000 	li	t2,0
/home/csy/func/inst/n1_index.S:13
bfc00714:	40890000 	mtc0	t1,c0_index
/home/csy/func/inst/n1_index.S:14
bfc00718:	00000000 	nop
/home/csy/func/inst/n1_index.S:15
bfc0071c:	400a0000 	mfc0	t2,c0_index
/home/csy/func/inst/n1_index.S:16
bfc00720:	152a001c 	bne	t1,t2,bfc00794 <inst_error>
/home/csy/func/inst/n1_index.S:17
bfc00724:	00000000 	nop
/home/csy/func/inst/n1_index.S:18
bfc00728:	2409001f 	li	t1,31
/home/csy/func/inst/n1_index.S:19
bfc0072c:	240a0000 	li	t2,0
/home/csy/func/inst/n1_index.S:20
bfc00730:	40890000 	mtc0	t1,c0_index
/home/csy/func/inst/n1_index.S:21
bfc00734:	00000000 	nop
/home/csy/func/inst/n1_index.S:22
bfc00738:	400a0000 	mfc0	t2,c0_index
/home/csy/func/inst/n1_index.S:23
bfc0073c:	2409000f 	li	t1,15
/home/csy/func/inst/n1_index.S:24
bfc00740:	152a0014 	bne	t1,t2,bfc00794 <inst_error>
/home/csy/func/inst/n1_index.S:25
bfc00744:	00000000 	nop
/home/csy/func/inst/n1_index.S:26
bfc00748:	2409003a 	li	t1,58
/home/csy/func/inst/n1_index.S:27
bfc0074c:	240a0000 	li	t2,0
/home/csy/func/inst/n1_index.S:28
bfc00750:	40890000 	mtc0	t1,c0_index
/home/csy/func/inst/n1_index.S:29
bfc00754:	00000000 	nop
/home/csy/func/inst/n1_index.S:30
bfc00758:	400a0000 	mfc0	t2,c0_index
/home/csy/func/inst/n1_index.S:31
bfc0075c:	2409000a 	li	t1,10
/home/csy/func/inst/n1_index.S:32
bfc00760:	152a000c 	bne	t1,t2,bfc00794 <inst_error>
/home/csy/func/inst/n1_index.S:33
bfc00764:	00000000 	nop
/home/csy/func/inst/n1_index.S:34
bfc00768:	2409fff0 	li	t1,-16
/home/csy/func/inst/n1_index.S:35
bfc0076c:	240a000a 	li	t2,10
/home/csy/func/inst/n1_index.S:36
bfc00770:	40890000 	mtc0	t1,c0_index
/home/csy/func/inst/n1_index.S:37
bfc00774:	00000000 	nop
/home/csy/func/inst/n1_index.S:38
bfc00778:	400a0000 	mfc0	t2,c0_index
/home/csy/func/inst/n1_index.S:39
bfc0077c:	24090000 	li	t1,0
/home/csy/func/inst/n1_index.S:40
bfc00780:	152a0004 	bne	t1,t2,bfc00794 <inst_error>
/home/csy/func/inst/n1_index.S:42
bfc00784:	00000000 	nop
/home/csy/func/inst/n1_index.S:44
bfc00788:	16400002 	bnez	s2,bfc00794 <inst_error>
/home/csy/func/inst/n1_index.S:45
bfc0078c:	00000000 	nop
/home/csy/func/inst/n1_index.S:47
bfc00790:	26730001 	addiu	s3,s3,1

bfc00794 <inst_error>:
/home/csy/func/inst/n1_index.S:50
bfc00794:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n1_index.S:51
bfc00798:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n1_index.S:52
bfc0079c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n1_index.S:53
bfc007a0:	03e00008 	jr	ra
/home/csy/func/inst/n1_index.S:54
bfc007a4:	00000000 	nop
	...

bfc007b0 <n8_store_tlb_ex_test>:
/home/csy/func/inst/n8_store_tlb_ex.S:6
bfc007b0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n8_store_tlb_ex.S:7
bfc007b4:	24120002 	li	s2,2
/home/csy/func/inst/n8_store_tlb_ex.S:8
bfc007b8:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n8_store_tlb_ex.S:12
bfc007bc:	3c082345 	lui	t0,0x2345
bfc007c0:	35086789 	ori	t0,t0,0x6789
/home/csy/func/inst/n8_store_tlb_ex.S:13
bfc007c4:	3c04bfcd 	lui	a0,0xbfcd
bfc007c8:	34841040 	ori	a0,a0,0x1040
/home/csy/func/inst/n8_store_tlb_ex.S:14
bfc007cc:	3c052222 	lui	a1,0x2222
bfc007d0:	34a52040 	ori	a1,a1,0x2040

bfc007d4 <store_tlb_pc_1>:
/home/csy/func/inst/n8_store_tlb_ex.S:17
bfc007d4:	aca80000 	sw	t0,0(a1)
/home/csy/func/inst/n8_store_tlb_ex.S:18
bfc007d8:	1000000b 	b	bfc00808 <inst_error>
/home/csy/func/inst/n8_store_tlb_ex.S:19
bfc007dc:	00000000 	nop
/home/csy/func/inst/n8_store_tlb_ex.S:20
bfc007e0:	aca80000 	sw	t0,0(a1)
/home/csy/func/inst/n8_store_tlb_ex.S:21
bfc007e4:	00000000 	nop
/home/csy/func/inst/n8_store_tlb_ex.S:22
bfc007e8:	8c890000 	lw	t1,0(a0)
/home/csy/func/inst/n8_store_tlb_ex.S:23
bfc007ec:	15280006 	bne	t1,t0,bfc00808 <inst_error>
/home/csy/func/inst/n8_store_tlb_ex.S:24
bfc007f0:	00000000 	nop
/home/csy/func/inst/n8_store_tlb_ex.S:26
bfc007f4:	00000000 	nop
/home/csy/func/inst/n8_store_tlb_ex.S:28
bfc007f8:	24092222 	li	t1,8738
/home/csy/func/inst/n8_store_tlb_ex.S:29
bfc007fc:	16490002 	bne	s2,t1,bfc00808 <inst_error>
/home/csy/func/inst/n8_store_tlb_ex.S:30
bfc00800:	00000000 	nop
/home/csy/func/inst/n8_store_tlb_ex.S:32
bfc00804:	26730001 	addiu	s3,s3,1

bfc00808 <inst_error>:
/home/csy/func/inst/n8_store_tlb_ex.S:35
bfc00808:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n8_store_tlb_ex.S:36
bfc0080c:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n8_store_tlb_ex.S:37
bfc00810:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n8_store_tlb_ex.S:38
bfc00814:	03e00008 	jr	ra
/home/csy/func/inst/n8_store_tlb_ex.S:39
bfc00818:	00000000 	nop
inst_error():
bfc0081c:	00000000 	nop

bfc00820 <n5_tlbwi_tlbr_test>:
/home/csy/func/inst/n5_tlbwi_tlbr.S:6
bfc00820:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n5_tlbwi_tlbr.S:7
bfc00824:	24120000 	li	s2,0
/home/csy/func/inst/n5_tlbwi_tlbr.S:8
bfc00828:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n5_tlbwi_tlbr.S:11
bfc0082c:	3c090023 	lui	t1,0x23
bfc00830:	35294500 	ori	t1,t1,0x4500
/home/csy/func/inst/n5_tlbwi_tlbr.S:12
bfc00834:	40891000 	mtc0	t1,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:13
bfc00838:	3c0a0078 	lui	t2,0x78
bfc0083c:	354a9a00 	ori	t2,t2,0x9a00
/home/csy/func/inst/n5_tlbwi_tlbr.S:14
bfc00840:	408a1800 	mtc0	t2,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:15
bfc00844:	24020000 	li	v0,0
/home/csy/func/inst/n5_tlbwi_tlbr.S:16
bfc00848:	2403000d 	li	v1,13
/home/csy/func/inst/n5_tlbwi_tlbr.S:17
bfc0084c:	3c08bfc0 	lui	t0,0xbfc0
bfc00850:	35080010 	ori	t0,t0,0x10
/home/csy/func/inst/n5_tlbwi_tlbr.S:20
bfc00854:	40885000 	mtc0	t0,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:21
bfc00858:	40820000 	mtc0	v0,c0_index
/home/csy/func/inst/n5_tlbwi_tlbr.S:22
bfc0085c:	42000002 	tlbwi
/home/csy/func/inst/n5_tlbwi_tlbr.S:23
bfc00860:	240bffff 	li	t3,-1
/home/csy/func/inst/n5_tlbwi_tlbr.S:24
bfc00864:	408b5000 	mtc0	t3,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:25
bfc00868:	408b1000 	mtc0	t3,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:26
bfc0086c:	408b1800 	mtc0	t3,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:27
bfc00870:	42000001 	tlbr
/home/csy/func/inst/n5_tlbwi_tlbr.S:28
bfc00874:	40045000 	mfc0	a0,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:29
bfc00878:	40051000 	mfc0	a1,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:30
bfc0087c:	40061800 	mfc0	a2,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:31
bfc00880:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:32
bfc00884:	14880062 	bne	a0,t0,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:33
bfc00888:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:34
bfc0088c:	14a90060 	bne	a1,t1,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:35
bfc00890:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:36
bfc00894:	14ca005e 	bne	a2,t2,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:37
bfc00898:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:38
bfc0089c:	24420001 	addiu	v0,v0,1
/home/csy/func/inst/n5_tlbwi_tlbr.S:39
bfc008a0:	25082000 	addiu	t0,t0,8192
/home/csy/func/inst/n5_tlbwi_tlbr.S:40
bfc008a4:	1443ffeb 	bne	v0,v1,bfc00854 <n5_tlbwi_tlbr_test+0x34>
/home/csy/func/inst/n5_tlbwi_tlbr.S:41
bfc008a8:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:43
bfc008ac:	3c090023 	lui	t1,0x23
bfc008b0:	35294500 	ori	t1,t1,0x4500
/home/csy/func/inst/n5_tlbwi_tlbr.S:44
bfc008b4:	40891000 	mtc0	t1,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:45
bfc008b8:	3c0a0078 	lui	t2,0x78
bfc008bc:	354a9a01 	ori	t2,t2,0x9a01
/home/csy/func/inst/n5_tlbwi_tlbr.S:46
bfc008c0:	408a1800 	mtc0	t2,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:47
bfc008c4:	3c0a0078 	lui	t2,0x78
bfc008c8:	354a9a00 	ori	t2,t2,0x9a00
/home/csy/func/inst/n5_tlbwi_tlbr.S:48
bfc008cc:	40885000 	mtc0	t0,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:49
bfc008d0:	40820000 	mtc0	v0,c0_index
/home/csy/func/inst/n5_tlbwi_tlbr.S:50
bfc008d4:	42000002 	tlbwi
/home/csy/func/inst/n5_tlbwi_tlbr.S:51
bfc008d8:	240bffff 	li	t3,-1
/home/csy/func/inst/n5_tlbwi_tlbr.S:52
bfc008dc:	408b5000 	mtc0	t3,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:53
bfc008e0:	408b1000 	mtc0	t3,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:54
bfc008e4:	408b1800 	mtc0	t3,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:55
bfc008e8:	42000001 	tlbr
/home/csy/func/inst/n5_tlbwi_tlbr.S:56
bfc008ec:	40045000 	mfc0	a0,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:57
bfc008f0:	40051000 	mfc0	a1,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:58
bfc008f4:	40061800 	mfc0	a2,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:59
bfc008f8:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:60
bfc008fc:	14880044 	bne	a0,t0,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:61
bfc00900:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:62
bfc00904:	14a90042 	bne	a1,t1,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:63
bfc00908:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:64
bfc0090c:	14ca0040 	bne	a2,t2,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:65
bfc00910:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:66
bfc00914:	24420001 	addiu	v0,v0,1
/home/csy/func/inst/n5_tlbwi_tlbr.S:67
bfc00918:	25082000 	addiu	t0,t0,8192
/home/csy/func/inst/n5_tlbwi_tlbr.S:68
bfc0091c:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:70
bfc00920:	3c090023 	lui	t1,0x23
bfc00924:	35294501 	ori	t1,t1,0x4501
/home/csy/func/inst/n5_tlbwi_tlbr.S:71
bfc00928:	40891000 	mtc0	t1,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:72
bfc0092c:	3c090023 	lui	t1,0x23
bfc00930:	35294500 	ori	t1,t1,0x4500
/home/csy/func/inst/n5_tlbwi_tlbr.S:73
bfc00934:	3c0a0078 	lui	t2,0x78
bfc00938:	354a9a1c 	ori	t2,t2,0x9a1c
/home/csy/func/inst/n5_tlbwi_tlbr.S:74
bfc0093c:	408a1800 	mtc0	t2,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:75
bfc00940:	40885000 	mtc0	t0,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:76
bfc00944:	40820000 	mtc0	v0,c0_index
/home/csy/func/inst/n5_tlbwi_tlbr.S:77
bfc00948:	42000002 	tlbwi
/home/csy/func/inst/n5_tlbwi_tlbr.S:78
bfc0094c:	240bffff 	li	t3,-1
/home/csy/func/inst/n5_tlbwi_tlbr.S:79
bfc00950:	408b5000 	mtc0	t3,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:80
bfc00954:	408b1000 	mtc0	t3,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:81
bfc00958:	408b1800 	mtc0	t3,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:82
bfc0095c:	42000001 	tlbr
/home/csy/func/inst/n5_tlbwi_tlbr.S:83
bfc00960:	40045000 	mfc0	a0,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:84
bfc00964:	40051000 	mfc0	a1,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:85
bfc00968:	40061800 	mfc0	a2,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:86
bfc0096c:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:87
bfc00970:	14880027 	bne	a0,t0,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:88
bfc00974:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:89
bfc00978:	14a90025 	bne	a1,t1,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:90
bfc0097c:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:91
bfc00980:	14ca0023 	bne	a2,t2,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:92
bfc00984:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:93
bfc00988:	24420001 	addiu	v0,v0,1
/home/csy/func/inst/n5_tlbwi_tlbr.S:94
bfc0098c:	25082000 	addiu	t0,t0,8192
/home/csy/func/inst/n5_tlbwi_tlbr.S:95
bfc00990:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:97
bfc00994:	3c090023 	lui	t1,0x23
bfc00998:	35294505 	ori	t1,t1,0x4505
/home/csy/func/inst/n5_tlbwi_tlbr.S:98
bfc0099c:	40891000 	mtc0	t1,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:99
bfc009a0:	3c0a0078 	lui	t2,0x78
bfc009a4:	354a9a11 	ori	t2,t2,0x9a11
/home/csy/func/inst/n5_tlbwi_tlbr.S:100
bfc009a8:	408a1800 	mtc0	t2,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:101
bfc009ac:	40885000 	mtc0	t0,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:102
bfc009b0:	40820000 	mtc0	v0,c0_index
/home/csy/func/inst/n5_tlbwi_tlbr.S:103
bfc009b4:	42000002 	tlbwi
/home/csy/func/inst/n5_tlbwi_tlbr.S:104
bfc009b8:	240bffff 	li	t3,-1
/home/csy/func/inst/n5_tlbwi_tlbr.S:105
bfc009bc:	408b5000 	mtc0	t3,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:106
bfc009c0:	408b1000 	mtc0	t3,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:107
bfc009c4:	408b1800 	mtc0	t3,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:108
bfc009c8:	42000001 	tlbr
/home/csy/func/inst/n5_tlbwi_tlbr.S:109
bfc009cc:	40045000 	mfc0	a0,c0_entryhi
/home/csy/func/inst/n5_tlbwi_tlbr.S:110
bfc009d0:	40051000 	mfc0	a1,c0_entrylo
/home/csy/func/inst/n5_tlbwi_tlbr.S:111
bfc009d4:	40061800 	mfc0	a2,$3
/home/csy/func/inst/n5_tlbwi_tlbr.S:112
bfc009d8:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:113
bfc009dc:	1488000c 	bne	a0,t0,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:114
bfc009e0:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:115
bfc009e4:	14a9000a 	bne	a1,t1,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:116
bfc009e8:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:117
bfc009ec:	14ca0008 	bne	a2,t2,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:118
bfc009f0:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:119
bfc009f4:	24420001 	addiu	v0,v0,1
/home/csy/func/inst/n5_tlbwi_tlbr.S:120
bfc009f8:	25082000 	addiu	t0,t0,8192
	...
/home/csy/func/inst/n5_tlbwi_tlbr.S:125
bfc00a04:	16400002 	bnez	s2,bfc00a10 <inst_error>
/home/csy/func/inst/n5_tlbwi_tlbr.S:126
bfc00a08:	00000000 	nop
/home/csy/func/inst/n5_tlbwi_tlbr.S:128
bfc00a0c:	26730001 	addiu	s3,s3,1

bfc00a10 <inst_error>:
/home/csy/func/inst/n5_tlbwi_tlbr.S:131
bfc00a10:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n5_tlbwi_tlbr.S:132
bfc00a14:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n5_tlbwi_tlbr.S:133
bfc00a18:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n5_tlbwi_tlbr.S:134
bfc00a1c:	03e00008 	jr	ra
/home/csy/func/inst/n5_tlbwi_tlbr.S:135
bfc00a20:	00000000 	nop
	...

bfc00a30 <n6_tlbp_test>:
/home/csy/func/inst/n6_tlbp.S:6
bfc00a30:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n6_tlbp.S:7
bfc00a34:	24120000 	li	s2,0
/home/csy/func/inst/n6_tlbp.S:8
bfc00a38:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n6_tlbp.S:12
bfc00a3c:	40800000 	mtc0	zero,c0_index
/home/csy/func/inst/n6_tlbp.S:13
bfc00a40:	3c08bfc0 	lui	t0,0xbfc0
bfc00a44:	35084010 	ori	t0,t0,0x4010
/home/csy/func/inst/n6_tlbp.S:14
bfc00a48:	40885000 	mtc0	t0,c0_entryhi
/home/csy/func/inst/n6_tlbp.S:15
bfc00a4c:	42000008 	tlbp
/home/csy/func/inst/n6_tlbp.S:16
bfc00a50:	40040000 	mfc0	a0,c0_index
/home/csy/func/inst/n6_tlbp.S:17
bfc00a54:	24080002 	li	t0,2
/home/csy/func/inst/n6_tlbp.S:18
bfc00a58:	15040018 	bne	t0,a0,bfc00abc <inst_error>
/home/csy/func/inst/n6_tlbp.S:19
bfc00a5c:	00000000 	nop
/home/csy/func/inst/n6_tlbp.S:21
bfc00a60:	40800000 	mtc0	zero,c0_index
/home/csy/func/inst/n6_tlbp.S:22
bfc00a64:	3c08bfc1 	lui	t0,0xbfc1
bfc00a68:	3508e011 	ori	t0,t0,0xe011
/home/csy/func/inst/n6_tlbp.S:23
bfc00a6c:	40885000 	mtc0	t0,c0_entryhi
/home/csy/func/inst/n6_tlbp.S:24
bfc00a70:	42000008 	tlbp
/home/csy/func/inst/n6_tlbp.S:25
bfc00a74:	40040000 	mfc0	a0,c0_index
/home/csy/func/inst/n6_tlbp.S:26
bfc00a78:	2408000f 	li	t0,15
/home/csy/func/inst/n6_tlbp.S:27
bfc00a7c:	1504000f 	bne	t0,a0,bfc00abc <inst_error>
/home/csy/func/inst/n6_tlbp.S:28
bfc00a80:	00000000 	nop
/home/csy/func/inst/n6_tlbp.S:30
bfc00a84:	40800000 	mtc0	zero,c0_index
/home/csy/func/inst/n6_tlbp.S:31
bfc00a88:	3c08bfc3 	lui	t0,0xbfc3
bfc00a8c:	3508c013 	ori	t0,t0,0xc013
/home/csy/func/inst/n6_tlbp.S:32
bfc00a90:	40885000 	mtc0	t0,c0_entryhi
/home/csy/func/inst/n6_tlbp.S:33
bfc00a94:	42000008 	tlbp
/home/csy/func/inst/n6_tlbp.S:34
bfc00a98:	40040000 	mfc0	a0,c0_index
/home/csy/func/inst/n6_tlbp.S:35
bfc00a9c:	000427c2 	srl	a0,a0,0x1f
/home/csy/func/inst/n6_tlbp.S:36
bfc00aa0:	24080001 	li	t0,1
/home/csy/func/inst/n6_tlbp.S:37
bfc00aa4:	15040005 	bne	t0,a0,bfc00abc <inst_error>
/home/csy/func/inst/n6_tlbp.S:38
bfc00aa8:	00000000 	nop
/home/csy/func/inst/n6_tlbp.S:40
bfc00aac:	00000000 	nop
/home/csy/func/inst/n6_tlbp.S:42
bfc00ab0:	16400002 	bnez	s2,bfc00abc <inst_error>
/home/csy/func/inst/n6_tlbp.S:43
bfc00ab4:	00000000 	nop
/home/csy/func/inst/n6_tlbp.S:45
bfc00ab8:	26730001 	addiu	s3,s3,1

bfc00abc <inst_error>:
/home/csy/func/inst/n6_tlbp.S:48
bfc00abc:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n6_tlbp.S:49
bfc00ac0:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n6_tlbp.S:50
bfc00ac4:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n6_tlbp.S:51
bfc00ac8:	03e00008 	jr	ra
/home/csy/func/inst/n6_tlbp.S:52
bfc00acc:	00000000 	nop

bfc00ad0 <n9_fetch_tlb_ex_test>:
/home/csy/func/inst/n9_fetch_tlb_ex.S:6
bfc00ad0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n9_fetch_tlb_ex.S:7
bfc00ad4:	24120003 	li	s2,3
/home/csy/func/inst/n9_fetch_tlb_ex.S:8
bfc00ad8:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n9_fetch_tlb_ex.S:12
bfc00adc:	3c08bfc0 	lui	t0,0xbfc0
bfc00ae0:	25080afc 	addiu	t0,t0,2812
/home/csy/func/inst/n9_fetch_tlb_ex.S:13
bfc00ae4:	31040fff 	andi	a0,t0,0xfff
/home/csy/func/inst/n9_fetch_tlb_ex.S:14
bfc00ae8:	3c053333 	lui	a1,0x3333
bfc00aec:	34a53000 	ori	a1,a1,0x3000
/home/csy/func/inst/n9_fetch_tlb_ex.S:15
bfc00af0:	00a42825 	or	a1,a1,a0
/home/csy/func/inst/n9_fetch_tlb_ex.S:16
bfc00af4:	00a00008 	jr	a1
/home/csy/func/inst/n9_fetch_tlb_ex.S:17
bfc00af8:	00000000 	nop

bfc00afc <fetch_tlb_pc_2>:
/home/csy/func/inst/n9_fetch_tlb_ex.S:20
bfc00afc:	3c09bfc0 	lui	t1,0xbfc0
bfc00b00:	25290b14 	addiu	t1,t1,2836
/home/csy/func/inst/n9_fetch_tlb_ex.S:21
bfc00b04:	01200008 	jr	t1
/home/csy/func/inst/n9_fetch_tlb_ex.S:22
bfc00b08:	00000000 	nop
/home/csy/func/inst/n9_fetch_tlb_ex.S:23
bfc00b0c:	10000006 	b	bfc00b28 <inst_error>
/home/csy/func/inst/n9_fetch_tlb_ex.S:24
bfc00b10:	00000000 	nop

bfc00b14 <fetch_tlb_pc_3>:
/home/csy/func/inst/n9_fetch_tlb_ex.S:27
bfc00b14:	00000000 	nop
/home/csy/func/inst/n9_fetch_tlb_ex.S:29
bfc00b18:	24093333 	li	t1,13107
/home/csy/func/inst/n9_fetch_tlb_ex.S:30
bfc00b1c:	16490002 	bne	s2,t1,bfc00b28 <inst_error>
/home/csy/func/inst/n9_fetch_tlb_ex.S:31
bfc00b20:	00000000 	nop
/home/csy/func/inst/n9_fetch_tlb_ex.S:33
bfc00b24:	26730001 	addiu	s3,s3,1

bfc00b28 <inst_error>:
/home/csy/func/inst/n9_fetch_tlb_ex.S:36
bfc00b28:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n9_fetch_tlb_ex.S:37
bfc00b2c:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n9_fetch_tlb_ex.S:38
bfc00b30:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n9_fetch_tlb_ex.S:39
bfc00b34:	03e00008 	jr	ra
/home/csy/func/inst/n9_fetch_tlb_ex.S:40
bfc00b38:	00000000 	nop
bfc00b3c:	00000000 	nop

bfc00b40 <n3_entrylo0_test>:
/home/csy/func/inst/n3_entrylo0.S:6
bfc00b40:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n3_entrylo0.S:7
bfc00b44:	24120000 	li	s2,0
/home/csy/func/inst/n3_entrylo0.S:8
bfc00b48:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n3_entrylo0.S:11
bfc00b4c:	3c0903ff 	lui	t1,0x3ff
bfc00b50:	3529ffff 	ori	t1,t1,0xffff
/home/csy/func/inst/n3_entrylo0.S:12
bfc00b54:	240a0000 	li	t2,0
/home/csy/func/inst/n3_entrylo0.S:13
bfc00b58:	40891000 	mtc0	t1,c0_entrylo
/home/csy/func/inst/n3_entrylo0.S:14
bfc00b5c:	00000000 	nop
/home/csy/func/inst/n3_entrylo0.S:15
bfc00b60:	400a1000 	mfc0	t2,c0_entrylo
/home/csy/func/inst/n3_entrylo0.S:16
bfc00b64:	152a001c 	bne	t1,t2,bfc00bd8 <inst_error>
/home/csy/func/inst/n3_entrylo0.S:17
bfc00b68:	00000000 	nop
/home/csy/func/inst/n3_entrylo0.S:18
bfc00b6c:	2409001f 	li	t1,31
/home/csy/func/inst/n3_entrylo0.S:19
bfc00b70:	240a0000 	li	t2,0
/home/csy/func/inst/n3_entrylo0.S:20
bfc00b74:	40891000 	mtc0	t1,c0_entrylo
/home/csy/func/inst/n3_entrylo0.S:21
bfc00b78:	00000000 	nop
/home/csy/func/inst/n3_entrylo0.S:22
bfc00b7c:	400a1000 	mfc0	t2,c0_entrylo
/home/csy/func/inst/n3_entrylo0.S:23
bfc00b80:	152a0015 	bne	t1,t2,bfc00bd8 <inst_error>
/home/csy/func/inst/n3_entrylo0.S:24
bfc00b84:	00000000 	nop
/home/csy/func/inst/n3_entrylo0.S:25
bfc00b88:	2409ffff 	li	t1,-1
/home/csy/func/inst/n3_entrylo0.S:26
bfc00b8c:	240a0000 	li	t2,0
/home/csy/func/inst/n3_entrylo0.S:27
bfc00b90:	40891000 	mtc0	t1,c0_entrylo
/home/csy/func/inst/n3_entrylo0.S:28
bfc00b94:	00000000 	nop
/home/csy/func/inst/n3_entrylo0.S:29
bfc00b98:	400a1000 	mfc0	t2,c0_entrylo
/home/csy/func/inst/n3_entrylo0.S:30
bfc00b9c:	3c0903ff 	lui	t1,0x3ff
bfc00ba0:	3529ffff 	ori	t1,t1,0xffff
/home/csy/func/inst/n3_entrylo0.S:31
bfc00ba4:	152a000c 	bne	t1,t2,bfc00bd8 <inst_error>
/home/csy/func/inst/n3_entrylo0.S:32
bfc00ba8:	00000000 	nop
/home/csy/func/inst/n3_entrylo0.S:33
bfc00bac:	3c09fc00 	lui	t1,0xfc00
/home/csy/func/inst/n3_entrylo0.S:34
bfc00bb0:	240a0001 	li	t2,1
/home/csy/func/inst/n3_entrylo0.S:35
bfc00bb4:	40891000 	mtc0	t1,c0_entrylo
/home/csy/func/inst/n3_entrylo0.S:36
bfc00bb8:	00000000 	nop
/home/csy/func/inst/n3_entrylo0.S:37
bfc00bbc:	400a1000 	mfc0	t2,c0_entrylo
/home/csy/func/inst/n3_entrylo0.S:38
bfc00bc0:	24090000 	li	t1,0
/home/csy/func/inst/n3_entrylo0.S:39
bfc00bc4:	152a0004 	bne	t1,t2,bfc00bd8 <inst_error>
/home/csy/func/inst/n3_entrylo0.S:41
bfc00bc8:	00000000 	nop
/home/csy/func/inst/n3_entrylo0.S:43
bfc00bcc:	16400002 	bnez	s2,bfc00bd8 <inst_error>
/home/csy/func/inst/n3_entrylo0.S:44
bfc00bd0:	00000000 	nop
/home/csy/func/inst/n3_entrylo0.S:46
bfc00bd4:	26730001 	addiu	s3,s3,1

bfc00bd8 <inst_error>:
/home/csy/func/inst/n3_entrylo0.S:49
bfc00bd8:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n3_entrylo0.S:50
bfc00bdc:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n3_entrylo0.S:51
bfc00be0:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n3_entrylo0.S:52
bfc00be4:	03e00008 	jr	ra
/home/csy/func/inst/n3_entrylo0.S:53
bfc00be8:	00000000 	nop
bfc00bec:	00000000 	nop

bfc00bf0 <n7_load_tlb_ex_test>:
/home/csy/func/inst/n7_load_tlb_ex.S:6
bfc00bf0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n7_load_tlb_ex.S:7
bfc00bf4:	24120001 	li	s2,1
/home/csy/func/inst/n7_load_tlb_ex.S:8
bfc00bf8:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n7_load_tlb_ex.S:12
bfc00bfc:	3c081234 	lui	t0,0x1234
bfc00c00:	35085678 	ori	t0,t0,0x5678
/home/csy/func/inst/n7_load_tlb_ex.S:13
bfc00c04:	3c04bfcd 	lui	a0,0xbfcd
bfc00c08:	34840080 	ori	a0,a0,0x80
/home/csy/func/inst/n7_load_tlb_ex.S:14
bfc00c0c:	3c051111 	lui	a1,0x1111
bfc00c10:	34a51080 	ori	a1,a1,0x1080
/home/csy/func/inst/n7_load_tlb_ex.S:15
bfc00c14:	ac880000 	sw	t0,0(a0)

bfc00c18 <load_tlb_pc_1>:
/home/csy/func/inst/n7_load_tlb_ex.S:18
bfc00c18:	8ca90000 	lw	t1,0(a1)
/home/csy/func/inst/n7_load_tlb_ex.S:19
bfc00c1c:	10000009 	b	bfc00c44 <inst_error>
/home/csy/func/inst/n7_load_tlb_ex.S:20
bfc00c20:	00000000 	nop
/home/csy/func/inst/n7_load_tlb_ex.S:21
bfc00c24:	8ca90000 	lw	t1,0(a1)
/home/csy/func/inst/n7_load_tlb_ex.S:22
bfc00c28:	15280006 	bne	t1,t0,bfc00c44 <inst_error>
/home/csy/func/inst/n7_load_tlb_ex.S:23
bfc00c2c:	00000000 	nop
/home/csy/func/inst/n7_load_tlb_ex.S:25
bfc00c30:	00000000 	nop
/home/csy/func/inst/n7_load_tlb_ex.S:27
bfc00c34:	24091111 	li	t1,4369
/home/csy/func/inst/n7_load_tlb_ex.S:28
bfc00c38:	16490002 	bne	s2,t1,bfc00c44 <inst_error>
/home/csy/func/inst/n7_load_tlb_ex.S:29
bfc00c3c:	00000000 	nop
/home/csy/func/inst/n7_load_tlb_ex.S:31
bfc00c40:	26730001 	addiu	s3,s3,1

bfc00c44 <inst_error>:
/home/csy/func/inst/n7_load_tlb_ex.S:34
bfc00c44:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n7_load_tlb_ex.S:35
bfc00c48:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n7_load_tlb_ex.S:36
bfc00c4c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n7_load_tlb_ex.S:37
bfc00c50:	03e00008 	jr	ra
/home/csy/func/inst/n7_load_tlb_ex.S:38
bfc00c54:	00000000 	nop
	...

bfc00c60 <n4_entrylo1_test>:
/home/csy/func/inst/n4_entrylo1.S:6
bfc00c60:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n4_entrylo1.S:7
bfc00c64:	24120000 	li	s2,0
/home/csy/func/inst/n4_entrylo1.S:8
bfc00c68:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n4_entrylo1.S:11
bfc00c6c:	3c0903ff 	lui	t1,0x3ff
bfc00c70:	3529ffff 	ori	t1,t1,0xffff
/home/csy/func/inst/n4_entrylo1.S:12
bfc00c74:	240a0000 	li	t2,0
/home/csy/func/inst/n4_entrylo1.S:13
bfc00c78:	40891800 	mtc0	t1,$3
/home/csy/func/inst/n4_entrylo1.S:14
bfc00c7c:	00000000 	nop
/home/csy/func/inst/n4_entrylo1.S:15
bfc00c80:	400a1800 	mfc0	t2,$3
/home/csy/func/inst/n4_entrylo1.S:16
bfc00c84:	152a001c 	bne	t1,t2,bfc00cf8 <inst_error>
/home/csy/func/inst/n4_entrylo1.S:17
bfc00c88:	00000000 	nop
/home/csy/func/inst/n4_entrylo1.S:18
bfc00c8c:	2409001f 	li	t1,31
/home/csy/func/inst/n4_entrylo1.S:19
bfc00c90:	240a0000 	li	t2,0
/home/csy/func/inst/n4_entrylo1.S:20
bfc00c94:	40891800 	mtc0	t1,$3
/home/csy/func/inst/n4_entrylo1.S:21
bfc00c98:	00000000 	nop
/home/csy/func/inst/n4_entrylo1.S:22
bfc00c9c:	400a1800 	mfc0	t2,$3
/home/csy/func/inst/n4_entrylo1.S:23
bfc00ca0:	152a0015 	bne	t1,t2,bfc00cf8 <inst_error>
/home/csy/func/inst/n4_entrylo1.S:24
bfc00ca4:	00000000 	nop
/home/csy/func/inst/n4_entrylo1.S:25
bfc00ca8:	2409ffff 	li	t1,-1
/home/csy/func/inst/n4_entrylo1.S:26
bfc00cac:	240a0000 	li	t2,0
/home/csy/func/inst/n4_entrylo1.S:27
bfc00cb0:	40891800 	mtc0	t1,$3
/home/csy/func/inst/n4_entrylo1.S:28
bfc00cb4:	00000000 	nop
/home/csy/func/inst/n4_entrylo1.S:29
bfc00cb8:	400a1800 	mfc0	t2,$3
/home/csy/func/inst/n4_entrylo1.S:30
bfc00cbc:	3c0903ff 	lui	t1,0x3ff
bfc00cc0:	3529ffff 	ori	t1,t1,0xffff
/home/csy/func/inst/n4_entrylo1.S:31
bfc00cc4:	152a000c 	bne	t1,t2,bfc00cf8 <inst_error>
/home/csy/func/inst/n4_entrylo1.S:32
bfc00cc8:	00000000 	nop
/home/csy/func/inst/n4_entrylo1.S:33
bfc00ccc:	3c09fc00 	lui	t1,0xfc00
/home/csy/func/inst/n4_entrylo1.S:34
bfc00cd0:	240a0001 	li	t2,1
/home/csy/func/inst/n4_entrylo1.S:35
bfc00cd4:	40891800 	mtc0	t1,$3
/home/csy/func/inst/n4_entrylo1.S:36
bfc00cd8:	00000000 	nop
/home/csy/func/inst/n4_entrylo1.S:37
bfc00cdc:	400a1800 	mfc0	t2,$3
/home/csy/func/inst/n4_entrylo1.S:38
bfc00ce0:	24090000 	li	t1,0
/home/csy/func/inst/n4_entrylo1.S:39
bfc00ce4:	152a0004 	bne	t1,t2,bfc00cf8 <inst_error>
/home/csy/func/inst/n4_entrylo1.S:41
bfc00ce8:	00000000 	nop
/home/csy/func/inst/n4_entrylo1.S:43
bfc00cec:	16400002 	bnez	s2,bfc00cf8 <inst_error>
/home/csy/func/inst/n4_entrylo1.S:44
bfc00cf0:	00000000 	nop
/home/csy/func/inst/n4_entrylo1.S:46
bfc00cf4:	26730001 	addiu	s3,s3,1

bfc00cf8 <inst_error>:
/home/csy/func/inst/n4_entrylo1.S:49
bfc00cf8:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n4_entrylo1.S:50
bfc00cfc:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n4_entrylo1.S:51
bfc00d00:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n4_entrylo1.S:52
bfc00d04:	03e00008 	jr	ra
/home/csy/func/inst/n4_entrylo1.S:53
bfc00d08:	00000000 	nop
bfc00d0c:	00000000 	nop

bfc00d10 <n2_entryhi_test>:
/home/csy/func/inst/n2_entryhi.S:6
bfc00d10:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n2_entryhi.S:7
bfc00d14:	24120000 	li	s2,0
/home/csy/func/inst/n2_entryhi.S:8
bfc00d18:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n2_entryhi.S:11
bfc00d1c:	2409e0ff 	li	t1,-7937
/home/csy/func/inst/n2_entryhi.S:12
bfc00d20:	240a0000 	li	t2,0
/home/csy/func/inst/n2_entryhi.S:13
bfc00d24:	40895000 	mtc0	t1,c0_entryhi
/home/csy/func/inst/n2_entryhi.S:14
bfc00d28:	00000000 	nop
/home/csy/func/inst/n2_entryhi.S:15
bfc00d2c:	400a5000 	mfc0	t2,c0_entryhi
/home/csy/func/inst/n2_entryhi.S:16
bfc00d30:	152a001c 	bne	t1,t2,bfc00da4 <inst_error>
/home/csy/func/inst/n2_entryhi.S:17
bfc00d34:	00000000 	nop
/home/csy/func/inst/n2_entryhi.S:18
bfc00d38:	3c091000 	lui	t1,0x1000
bfc00d3c:	35290001 	ori	t1,t1,0x1
/home/csy/func/inst/n2_entryhi.S:19
bfc00d40:	240a0000 	li	t2,0
/home/csy/func/inst/n2_entryhi.S:20
bfc00d44:	40895000 	mtc0	t1,c0_entryhi
/home/csy/func/inst/n2_entryhi.S:21
bfc00d48:	00000000 	nop
/home/csy/func/inst/n2_entryhi.S:22
bfc00d4c:	400a5000 	mfc0	t2,c0_entryhi
/home/csy/func/inst/n2_entryhi.S:23
bfc00d50:	152a0014 	bne	t1,t2,bfc00da4 <inst_error>
/home/csy/func/inst/n2_entryhi.S:24
bfc00d54:	00000000 	nop
/home/csy/func/inst/n2_entryhi.S:25
bfc00d58:	2409ffff 	li	t1,-1
/home/csy/func/inst/n2_entryhi.S:26
bfc00d5c:	240a0000 	li	t2,0
/home/csy/func/inst/n2_entryhi.S:27
bfc00d60:	40895000 	mtc0	t1,c0_entryhi
/home/csy/func/inst/n2_entryhi.S:28
bfc00d64:	00000000 	nop
/home/csy/func/inst/n2_entryhi.S:29
bfc00d68:	400a5000 	mfc0	t2,c0_entryhi
/home/csy/func/inst/n2_entryhi.S:30
bfc00d6c:	2409e0ff 	li	t1,-7937
/home/csy/func/inst/n2_entryhi.S:31
bfc00d70:	152a000c 	bne	t1,t2,bfc00da4 <inst_error>
/home/csy/func/inst/n2_entryhi.S:32
bfc00d74:	00000000 	nop
/home/csy/func/inst/n2_entryhi.S:33
bfc00d78:	24091f00 	li	t1,7936
/home/csy/func/inst/n2_entryhi.S:34
bfc00d7c:	240a0001 	li	t2,1
/home/csy/func/inst/n2_entryhi.S:35
bfc00d80:	40895000 	mtc0	t1,c0_entryhi
/home/csy/func/inst/n2_entryhi.S:36
bfc00d84:	00000000 	nop
/home/csy/func/inst/n2_entryhi.S:37
bfc00d88:	400a5000 	mfc0	t2,c0_entryhi
/home/csy/func/inst/n2_entryhi.S:38
bfc00d8c:	24090000 	li	t1,0
/home/csy/func/inst/n2_entryhi.S:39
bfc00d90:	152a0004 	bne	t1,t2,bfc00da4 <inst_error>
/home/csy/func/inst/n2_entryhi.S:41
bfc00d94:	00000000 	nop
/home/csy/func/inst/n2_entryhi.S:43
bfc00d98:	16400002 	bnez	s2,bfc00da4 <inst_error>
/home/csy/func/inst/n2_entryhi.S:44
bfc00d9c:	00000000 	nop
/home/csy/func/inst/n2_entryhi.S:46
bfc00da0:	26730001 	addiu	s3,s3,1

bfc00da4 <inst_error>:
/home/csy/func/inst/n2_entryhi.S:49
bfc00da4:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n2_entryhi.S:50
bfc00da8:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n2_entryhi.S:51
bfc00dac:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n2_entryhi.S:52
bfc00db0:	03e00008 	jr	ra
/home/csy/func/inst/n2_entryhi.S:53
bfc00db4:	00000000 	nop
	...
bfc00dc0:	9c0f7f70 	0x9c0f7f70
	...

Disassembly of section .data:

80000000 <__CTOR_LIST__>:
	...

80000008 <__CTOR_END__>:
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x1c
   4:	00000002 	srl	zero,zero,0x0
   8:	00040000 	sll	zero,a0,0x0
   c:	00000000 	nop
  10:	bfc00000 	0xbfc00000
  14:	000006f8 	0x6f8
	...
  20:	0000001c 	0x1c
  24:	00400002 	0x400002
  28:	00040000 	sll	zero,a0,0x0
  2c:	00000000 	nop
  30:	bfc00700 	0xbfc00700
  34:	000000a8 	0xa8
	...
  40:	0000001c 	0x1c
  44:	00880002 	0x880002
  48:	00040000 	sll	zero,a0,0x0
  4c:	00000000 	nop
  50:	bfc007b0 	0xbfc007b0
  54:	0000006c 	0x6c
	...
  60:	0000001c 	0x1c
  64:	00d70002 	0xd70002
  68:	00040000 	sll	zero,a0,0x0
  6c:	00000000 	nop
  70:	bfc00820 	0xbfc00820
  74:	00000204 	0x204
	...
  80:	0000001c 	0x1c
  84:	01240002 	0x1240002
  88:	00040000 	sll	zero,a0,0x0
  8c:	00000000 	nop
  90:	bfc00a30 	0xbfc00a30
  94:	000000a0 	0xa0
	...
  a0:	0000001c 	0x1c
  a4:	016b0002 	0x16b0002
  a8:	00040000 	sll	zero,a0,0x0
  ac:	00000000 	nop
  b0:	bfc00ad0 	0xbfc00ad0
  b4:	0000006c 	0x6c
	...
  c0:	0000001c 	0x1c
  c4:	01ba0002 	0x1ba0002
  c8:	00040000 	sll	zero,a0,0x0
  cc:	00000000 	nop
  d0:	bfc00b40 	0xbfc00b40
  d4:	000000ac 	0xac
	...
  e0:	0000001c 	0x1c
  e4:	02050002 	0x2050002
  e8:	00040000 	sll	zero,a0,0x0
  ec:	00000000 	nop
  f0:	bfc00bf0 	0xbfc00bf0
  f4:	00000068 	0x68
	...
 100:	0000001c 	0x1c
 104:	02530002 	0x2530002
 108:	00040000 	sll	zero,a0,0x0
 10c:	00000000 	nop
 110:	bfc00c60 	0xbfc00c60
 114:	000000ac 	0xac
	...
 120:	0000001c 	0x1c
 124:	029e0002 	0x29e0002
 128:	00040000 	sll	zero,a0,0x0
 12c:	00000000 	nop
 130:	bfc00d10 	0xbfc00d10
 134:	000000a8 	0xa8
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	bfc00700 	0xbfc00700
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	bfc007b0 	0xbfc007b0
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	bfc00820 	0xbfc00820
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	bfc00a30 	0xbfc00a30
	...
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	bfc00ad0 	0xbfc00ad0
	...
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	bfc00b40 	0xbfc00b40
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	bfc00bf0 	0xbfc00bf0
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f
  e0:	bfc00c60 	0xbfc00c60
	...
  f8:	0000001d 	0x1d
  fc:	0000001f 	0x1f
 100:	bfc00d10 	0xbfc00d10
	...
 118:	0000001d 	0x1d
 11c:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000144 	0x144
   4:	001e0002 	srl	zero,s8,0x0
   8:	01010000 	0x1010000
   c:	000d0efb 	0xd0efb
  10:	01010101 	0x1010101
  14:	01000000 	0x1000000
  18:	00010000 	sll	zero,at,0x0
  1c:	72617473 	0x72617473
  20:	00532e74 	0x532e74
  24:	00000000 	nop
  28:	00020500 	sll	zero,v0,0x14
  2c:	03bfc000 	0x3bfc000
  30:	e5080117 	swc1	$f8,279(t0)
  34:	4b4b4d83 	c2	0x14b4d83
  38:	024b4b4b 	0x24b4b4b
  3c:	4b1601a8 	c2	0x11601a8
  40:	4b4b4b4b 	c2	0x14b4b4b
  44:	4c4b4b4d 	0x4c4b4b4d
  48:	4b4b4b4b 	c2	0x14b4b4b
  4c:	1801e402 	0x1801e402
  50:	834b4b83 	lb	t3,19331(k0)
  54:	4b834b4b 	c2	0x1834b4b
  58:	4b4b834b 	c2	0x14b834b
  5c:	4b834b4c 	c2	0x1834b4c
  60:	4b83834b 	c2	0x183834b
  64:	4b834b83 	c2	0x1834b83
  68:	4c4b4b4b 	0x4c4b4b4b
  6c:	4b834b4d 	c2	0x1834b4d
  70:	4b83834b 	c2	0x183834b
  74:	4b834b83 	c2	0x1834b83
  78:	4c4b4b4b 	0x4c4b4b4b
  7c:	4b834b4d 	c2	0x1834b4d
  80:	4b834b83 	c2	0x1834b83
  84:	834b8383 	lb	t3,-31869(k0)
  88:	4b4b834b 	c2	0x14b834b
  8c:	024c4b4b 	0x24c4b4b
  90:	4b831630 	c2	0x1831630
  94:	4b4b834b 	c2	0x14b834b
  98:	834b4b83 	lb	t3,19331(k0)
  9c:	4b4c4b4b 	c2	0x14c4b4b
  a0:	4c4b4b83 	0x4c4b4b83
  a4:	83834b4b 	lb	v1,19275(gp)
  a8:	834b4b4b 	lb	t3,19275(k0)
  ac:	4b4b834b 	c2	0x14b834b
  b0:	834b4e4c 	lb	t3,20044(k0)
  b4:	4b834b4b 	c2	0x1834b4b
  b8:	4b4b4c4b 	c2	0x14b4c4b
  bc:	834b8383 	lb	t3,-31869(k0)
  c0:	4c4b834b 	0x4c4b834b
  c4:	83834b4d 	lb	v1,19277(gp)
  c8:	834b4b4b 	lb	t3,19275(k0)
  cc:	4b4b834b 	c2	0x14b834b
  d0:	834b4e4c 	lb	t3,20044(k0)
  d4:	4b4c4b4b 	c2	0x14c4b4b
  d8:	4b834b83 	c2	0x1834b83
  dc:	834b8383 	lb	t3,-31869(k0)
  e0:	4b4b834b 	c2	0x14b834b
  e4:	4b4b4b4b 	c2	0x14b4b4b
  e8:	4b4e4c4b 	c2	0x14e4c4b
  ec:	4f4b4b4b 	c3	0x14b4b4b
  f0:	84838383 	lh	v1,-31869(a0)
  f4:	4c838383 	0x4c838383
  f8:	4b4b4b4b 	c2	0x14b4b4b
  fc:	4b4b4b4c 	c2	0x14b4b4c
 100:	4b4b4b4b 	c2	0x14b4b4b
 104:	4b4b4b4b 	c2	0x14b4b4b
 108:	4b4b4b4b 	c2	0x14b4b4b
 10c:	4b4b4b4b 	c2	0x14b4b4b
 110:	4b4b4b4b 	c2	0x14b4b4b
 114:	4b4b4b4c 	c2	0x14b4b4c
 118:	4b4b4b4b 	c2	0x14b4b4b
 11c:	4b4b4b4b 	c2	0x14b4b4b
 120:	4c4b834e 	0x4c4b834e
 124:	84848383 	lh	a0,-31869(a0)
 128:	4b4b4b4b 	c2	0x14b4b4b
 12c:	8383834c 	lb	v1,-31924(gp)
 130:	4d4b4d4b 	0x4d4b4d4b
 134:	4b4b4b83 	c2	0x14b4b83
 138:	834b834b 	lb	t3,-31925(k0)
 13c:	4b4c4c4b 	c2	0x14c4c4b
 140:	024b4b4b 	0x24b4b4b
 144:	01010004 	sllv	zero,at,t0
 148:	0000005d 	0x5d
 14c:	00210002 	0x210002
 150:	01010000 	0x1010000
 154:	000d0efb 	0xd0efb
 158:	01010101 	0x1010101
 15c:	01000000 	0x1000000
 160:	00010000 	sll	zero,at,0x0
 164:	695f316e 	0x695f316e
 168:	7865646e 	0x7865646e
 16c:	0000532e 	0x532e
 170:	00000000 	nop
 174:	07000205 	bltz	t8,98c <data_size+0x97c>
 178:	4b17bfc0 	c2	0x117bfc0
 17c:	4b4b4d4b 	c2	0x14b4d4b
 180:	4b4b4b4b 	c2	0x14b4b4b
 184:	4b4b4b4b 	c2	0x14b4b4b
 188:	4b4b4b4b 	c2	0x14b4b4b
 18c:	4b4b4b4b 	c2	0x14b4b4b
 190:	4b4b4b4b 	c2	0x14b4b4b
 194:	4b4b4b4b 	c2	0x14b4b4b
 198:	4c4b4b4b 	0x4c4b4b4b
 19c:	4d4c4b4c 	0x4d4c4b4c
 1a0:	4b4b4b4b 	c2	0x14b4b4b
 1a4:	01000402 	0x1000402
 1a8:	00005201 	0x5201
 1ac:	28000200 	slti	zero,zero,512
 1b0:	01000000 	0x1000000
 1b4:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 1b8:	01010100 	0x1010100
 1bc:	00000001 	0x1
 1c0:	01000001 	0x1000001
 1c4:	5f386e00 	0x5f386e00
 1c8:	726f7473 	0x726f7473
 1cc:	6c745f65 	0x6c745f65
 1d0:	78655f62 	0x78655f62
 1d4:	0000532e 	0x532e
 1d8:	00000000 	nop
 1dc:	07b00205 	bltzal	sp,9f4 <data_size+0x9e4>
 1e0:	4b17bfc0 	c2	0x117bfc0
 1e4:	83834e4b 	lb	v1,20043(gp)
 1e8:	4b4b4b85 	c2	0x14b4b85
 1ec:	4b4b4b4b 	c2	0x14b4b4b
 1f0:	4b4b4c4c 	c2	0x14b4c4c
 1f4:	4b4b4d4c 	c2	0x14b4d4c
 1f8:	04024b4b 	0x4024b4b
 1fc:	ae010100 	sw	at,256(s0)
 200:	02000000 	0x2000000
 204:	00002600 	sll	a0,zero,0x18
 208:	fb010100 	0xfb010100
 20c:	01000d0e 	0x1000d0e
 210:	00010101 	0x10101
 214:	00010000 	sll	zero,at,0x0
 218:	6e000100 	0x6e000100
 21c:	6c745f35 	0x6c745f35
 220:	5f697762 	0x5f697762
 224:	72626c74 	0x72626c74
 228:	0000532e 	0x532e
 22c:	00000000 	nop
 230:	08200205 	j	800814 <data_size+0x800804>
 234:	4b17bfc0 	c2	0x117bfc0
 238:	4b834d4b 	c2	0x1834d4b
 23c:	4b4b4b83 	c2	0x14b4b83
 240:	4b4b4b85 	c2	0x14b4b85
 244:	4b4b4b4b 	c2	0x14b4b4b
 248:	4b4b4b4b 	c2	0x14b4b4b
 24c:	4b4b4b4b 	c2	0x14b4b4b
 250:	4b4b4b4b 	c2	0x14b4b4b
 254:	834c4b4b 	lb	t4,19275(k0)
 258:	834b834b 	lb	t3,-31925(k0)
 25c:	4b4b4b4b 	c2	0x14b4b4b
 260:	4b4b4b4b 	c2	0x14b4b4b
 264:	4b4b4b4b 	c2	0x14b4b4b
 268:	4b4b4b4b 	c2	0x14b4b4b
 26c:	4b4b4b4b 	c2	0x14b4b4b
 270:	834b834c 	lb	t3,-31924(k0)
 274:	4b4b4b83 	c2	0x14b4b83
 278:	4b4b4b4b 	c2	0x14b4b4b
 27c:	4b4b4b4b 	c2	0x14b4b4b
 280:	4b4b4b4b 	c2	0x14b4b4b
 284:	4b4b4b4b 	c2	0x14b4b4b
 288:	834c4b4b 	lb	t4,19275(k0)
 28c:	4b4b834b 	c2	0x14b834b
 290:	4b4b4b4b 	c2	0x14b4b4b
 294:	4b4b4b4b 	c2	0x14b4b4b
 298:	4b4b4b4b 	c2	0x14b4b4b
 29c:	4b4b4b4b 	c2	0x14b4b4b
 2a0:	4c4b4b4b 	0x4c4b4b4b
 2a4:	4d4c4b4c 	0x4d4c4b4c
 2a8:	4b4b4b4b 	c2	0x14b4b4b
 2ac:	01000402 	0x1000402
 2b0:	00005701 	0x5701
 2b4:	20000200 	addi	zero,zero,512
 2b8:	01000000 	0x1000000
 2bc:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 2c0:	01010100 	0x1010100
 2c4:	00000001 	0x1
 2c8:	01000001 	0x1000001
 2cc:	5f366e00 	0x5f366e00
 2d0:	70626c74 	0x70626c74
 2d4:	0000532e 	0x532e
 2d8:	00000000 	nop
 2dc:	0a300205 	j	8c00814 <data_size+0x8c00804>
 2e0:	4b17bfc0 	c2	0x117bfc0
 2e4:	834b4e4b 	lb	t3,20043(k0)
 2e8:	4b4b4b4b 	c2	0x14b4b4b
 2ec:	834b4c4b 	lb	t3,19531(k0)
 2f0:	4b4b4b4b 	c2	0x14b4b4b
 2f4:	834b4c4b 	lb	t3,19531(k0)
 2f8:	4b4b4b4b 	c2	0x14b4b4b
 2fc:	4c4c4b4b 	0x4c4c4b4b
 300:	4b4d4c4b 	c2	0x14d4c4b
 304:	024b4b4b 	0x24b4b4b
 308:	01010004 	sllv	zero,at,t0
 30c:	00000052 	0x52
 310:	00280002 	0x280002
 314:	01010000 	0x1010000
 318:	000d0efb 	0xd0efb
 31c:	01010101 	0x1010101
 320:	01000000 	0x1000000
 324:	00010000 	sll	zero,at,0x0
 328:	665f396e 	0x665f396e
 32c:	68637465 	0x68637465
 330:	626c745f 	0x626c745f
 334:	2e78655f 	sltiu	t8,s3,25951
 338:	00000053 	0x53
 33c:	05000000 	bltz	t0,340 <data_size+0x330>
 340:	c00ad002 	lwc0	$10,-12286(zero)
 344:	4b4b17bf 	c2	0x14b17bf
 348:	834b834e 	lb	t3,-31922(k0)
 34c:	834d4b4b 	lb	t5,19275(k0)
 350:	4d4b4b4b 	0x4d4b4b4b
 354:	4c4b4b4c 	0x4c4b4b4c
 358:	4b4b4b4d 	c2	0x14b4b4d
 35c:	0004024b 	0x4024b
 360:	005f0101 	0x5f0101
 364:	00020000 	sll	zero,v0,0x0
 368:	00000024 	and	zero,zero,zero
 36c:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
 370:	0101000d 	break	0x101
 374:	00000101 	0x101
 378:	00000100 	sll	zero,zero,0x4
 37c:	336e0001 	andi	t6,k1,0x1
 380:	746e655f 	jalx	1b9957c <data_size+0x1b9956c>
 384:	6f6c7972 	0x6f6c7972
 388:	00532e30 	0x532e30
 38c:	00000000 	nop
 390:	40020500 	0x40020500
 394:	17bfc00b 	bne	sp,ra,ffff03c4 <_etext+0x403ef5ec>
 398:	834d4b4b 	lb	t5,19275(k0)
 39c:	4b4b4b4b 	c2	0x14b4b4b
 3a0:	4b4b4b4b 	c2	0x14b4b4b
 3a4:	4b4b4b4b 	c2	0x14b4b4b
 3a8:	4b4b4b4b 	c2	0x14b4b4b
 3ac:	4b834b4b 	c2	0x1834b4b
 3b0:	4b4b4b4b 	c2	0x14b4b4b
 3b4:	4c4b4b4b 	0x4c4b4b4b
 3b8:	4d4c4b4c 	0x4d4c4b4c
 3bc:	4b4b4b4b 	c2	0x14b4b4b
 3c0:	01000402 	0x1000402
 3c4:	00005001 	0x5001
 3c8:	27000200 	addiu	zero,t8,512
 3cc:	01000000 	0x1000000
 3d0:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 3d4:	01010100 	0x1010100
 3d8:	00000001 	0x1
 3dc:	01000001 	0x1000001
 3e0:	5f376e00 	0x5f376e00
 3e4:	64616f6c 	0x64616f6c
 3e8:	626c745f 	0x626c745f
 3ec:	2e78655f 	sltiu	t8,s3,25951
 3f0:	00000053 	0x53
 3f4:	05000000 	bltz	t0,3f8 <data_size+0x3e8>
 3f8:	c00bf002 	lwc0	$11,-4094(zero)
 3fc:	4b4b17bf 	c2	0x14b17bf
 400:	8383834e 	lb	v1,-31922(gp)
 404:	4b4b4b4d 	c2	0x14b4b4d
 408:	4c4c4b4b 	0x4c4c4b4b
 40c:	4d4c4b4b 	0x4d4c4b4b
 410:	4b4b4b4b 	c2	0x14b4b4b
 414:	01000402 	0x1000402
 418:	00005f01 	0x5f01
 41c:	24000200 	li	zero,512
 420:	01000000 	0x1000000
 424:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 428:	01010100 	0x1010100
 42c:	00000001 	0x1
 430:	01000001 	0x1000001
 434:	5f346e00 	0x5f346e00
 438:	72746e65 	0x72746e65
 43c:	316f6c79 	andi	t7,t3,0x6c79
 440:	0000532e 	0x532e
 444:	00000000 	nop
 448:	0c600205 	jal	1800814 <data_size+0x1800804>
 44c:	4b17bfc0 	c2	0x117bfc0
 450:	4b834d4b 	c2	0x1834d4b
 454:	4b4b4b4b 	c2	0x14b4b4b
 458:	4b4b4b4b 	c2	0x14b4b4b
 45c:	4b4b4b4b 	c2	0x14b4b4b
 460:	4b4b4b4b 	c2	0x14b4b4b
 464:	4b4b834b 	c2	0x14b834b
 468:	4b4b4b4b 	c2	0x14b4b4b
 46c:	4c4c4b4b 	0x4c4c4b4b
 470:	4b4d4c4b 	c2	0x14d4c4b
 474:	024b4b4b 	0x24b4b4b
 478:	01010004 	sllv	zero,at,t0
 47c:	0000005e 	0x5e
 480:	00230002 	0x230002
 484:	01010000 	0x1010000
 488:	000d0efb 	0xd0efb
 48c:	01010101 	0x1010101
 490:	01000000 	0x1000000
 494:	00010000 	sll	zero,at,0x0
 498:	655f326e 	0x655f326e
 49c:	7972746e 	0x7972746e
 4a0:	532e6968 	0x532e6968
 4a4:	00000000 	nop
 4a8:	02050000 	0x2050000
 4ac:	bfc00d10 	0xbfc00d10
 4b0:	4d4b4b17 	0x4d4b4b17
 4b4:	4b4b4b4b 	c2	0x14b4b4b
 4b8:	834b4b4b 	lb	t3,19275(k0)
 4bc:	4b4b4b4b 	c2	0x14b4b4b
 4c0:	4b4b4b4b 	c2	0x14b4b4b
 4c4:	4b4b4b4b 	c2	0x14b4b4b
 4c8:	4b4b4b4b 	c2	0x14b4b4b
 4cc:	4b4b4b4b 	c2	0x14b4b4b
 4d0:	4c4b4c4c 	0x4c4b4c4c
 4d4:	4b4b4b4d 	c2	0x14b4b4d
 4d8:	0004024b 	0x4024b
 4dc:	Address 0x00000000000004dc is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000003c 	0x3c
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000000 	nop
  10:	bfc00000 	0xbfc00000
  14:	bfc006f8 	0xbfc006f8
  18:	72617473 	0x72617473
  1c:	00532e74 	0x532e74
  20:	6d6f682f 	0x6d6f682f
  24:	73632f65 	0x73632f65
  28:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
  2c:	4700636e 	c1	0x100636e
  30:	4120554e 	0x4120554e
  34:	2e322053 	sltiu	s2,s1,8275
  38:	352e3831 	ori	t6,t1,0x3831
  3c:	80010030 	lb	at,48(zero)
  40:	00000044 	0x44
  44:	00140002 	srl	zero,s4,0x0
  48:	01040000 	0x1040000
  4c:	00000148 	0x148
  50:	bfc00700 	0xbfc00700
  54:	bfc007a8 	0xbfc007a8
  58:	695f316e 	0x695f316e
  5c:	7865646e 	0x7865646e
  60:	2f00532e 	sltiu	zero,t8,21294
  64:	656d6f68 	0x656d6f68
  68:	7973632f 	0x7973632f
  6c:	6e75662f 	0x6e75662f
  70:	6e692f63 	0x6e692f63
  74:	47007473 	c1	0x1007473
  78:	4120554e 	0x4120554e
  7c:	2e322053 	sltiu	s2,s1,8275
  80:	352e3831 	ori	t6,t1,0x3831
  84:	80010030 	lb	at,48(zero)
  88:	0000004b 	0x4b
  8c:	00280002 	0x280002
  90:	01040000 	0x1040000
  94:	000001a9 	0x1a9
  98:	bfc007b0 	0xbfc007b0
  9c:	bfc0081c 	0xbfc0081c
  a0:	735f386e 	0x735f386e
  a4:	65726f74 	0x65726f74
  a8:	626c745f 	0x626c745f
  ac:	2e78655f 	sltiu	t8,s3,25951
  b0:	682f0053 	0x682f0053
  b4:	2f656d6f 	sltiu	a1,k1,28015
  b8:	2f797363 	sltiu	t9,k1,29539
  bc:	636e7566 	0x636e7566
  c0:	736e692f 	0x736e692f
  c4:	4e470074 	c3	0x470074
  c8:	53412055 	0x53412055
  cc:	312e3220 	andi	t6,t1,0x3220
  d0:	30352e38 	andi	s5,at,0x2e38
  d4:	49800100 	0x49800100
  d8:	02000000 	0x2000000
  dc:	00003c00 	sll	a3,zero,0x10
  e0:	ff010400 	0xff010400
  e4:	20000001 	addi	zero,zero,1
  e8:	24bfc008 	addiu	ra,a1,-16376
  ec:	6ebfc00a 	0x6ebfc00a
  f0:	6c745f35 	0x6c745f35
  f4:	5f697762 	0x5f697762
  f8:	72626c74 	0x72626c74
  fc:	2f00532e 	sltiu	zero,t8,21294
 100:	656d6f68 	0x656d6f68
 104:	7973632f 	0x7973632f
 108:	6e75662f 	0x6e75662f
 10c:	6e692f63 	0x6e692f63
 110:	47007473 	c1	0x1007473
 114:	4120554e 	0x4120554e
 118:	2e322053 	sltiu	s2,s1,8275
 11c:	352e3831 	ori	t6,t1,0x3831
 120:	80010030 	lb	at,48(zero)
 124:	00000043 	sra	zero,zero,0x1
 128:	00500002 	0x500002
 12c:	01040000 	0x1040000
 130:	000002b1 	0x2b1
 134:	bfc00a30 	0xbfc00a30
 138:	bfc00ad0 	0xbfc00ad0
 13c:	745f366e 	jalx	17cd9b8 <data_size+0x17cd9a8>
 140:	2e70626c 	sltiu	s0,s3,25196
 144:	682f0053 	0x682f0053
 148:	2f656d6f 	sltiu	a1,k1,28015
 14c:	2f797363 	sltiu	t9,k1,29539
 150:	636e7566 	0x636e7566
 154:	736e692f 	0x736e692f
 158:	4e470074 	c3	0x470074
 15c:	53412055 	0x53412055
 160:	312e3220 	andi	t6,t1,0x3220
 164:	30352e38 	andi	s5,at,0x2e38
 168:	4b800100 	c2	0x1800100
 16c:	02000000 	0x2000000
 170:	00006400 	sll	t4,zero,0x10
 174:	0c010400 	jal	41000 <data_size+0x40ff0>
 178:	d0000003 	0xd0000003
 17c:	3cbfc00a 	0x3cbfc00a
 180:	6ebfc00b 	0x6ebfc00b
 184:	65665f39 	0x65665f39
 188:	5f686374 	0x5f686374
 18c:	5f626c74 	0x5f626c74
 190:	532e7865 	0x532e7865
 194:	6f682f00 	0x6f682f00
 198:	632f656d 	0x632f656d
 19c:	662f7973 	0x662f7973
 1a0:	2f636e75 	sltiu	v1,k1,28277
 1a4:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 1a8:	554e4700 	0x554e4700
 1ac:	20534120 	addi	s3,v0,16672
 1b0:	38312e32 	xori	s1,at,0x2e32
 1b4:	0030352e 	0x30352e
 1b8:	00478001 	0x478001
 1bc:	00020000 	sll	zero,v0,0x0
 1c0:	00000078 	0x78
 1c4:	03620104 	0x3620104
 1c8:	0b400000 	j	d000000 <data_size+0xcfffff0>
 1cc:	0becbfc0 	j	fb2ff00 <data_size+0xfb2fef0>
 1d0:	336ebfc0 	andi	t6,k1,0xbfc0
 1d4:	746e655f 	jalx	1b9957c <data_size+0x1b9956c>
 1d8:	6f6c7972 	0x6f6c7972
 1dc:	00532e30 	0x532e30
 1e0:	6d6f682f 	0x6d6f682f
 1e4:	73632f65 	0x73632f65
 1e8:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 1ec:	692f636e 	0x692f636e
 1f0:	0074736e 	0x74736e
 1f4:	20554e47 	addi	s5,v0,20039
 1f8:	32205341 	andi	zero,s1,0x5341
 1fc:	2e38312e 	sltiu	t8,s1,12590
 200:	01003035 	0x1003035
 204:	00004a80 	sll	t1,zero,0xa
 208:	8c000200 	lw	zero,512(zero)
 20c:	04000000 	bltz	zero,210 <data_size+0x200>
 210:	0003c501 	0x3c501
 214:	c00bf000 	lwc0	$11,-4096(zero)
 218:	c00c58bf 	lwc0	$12,22719(zero)
 21c:	5f376ebf 	0x5f376ebf
 220:	64616f6c 	0x64616f6c
 224:	626c745f 	0x626c745f
 228:	2e78655f 	sltiu	t8,s3,25951
 22c:	682f0053 	0x682f0053
 230:	2f656d6f 	sltiu	a1,k1,28015
 234:	2f797363 	sltiu	t9,k1,29539
 238:	636e7566 	0x636e7566
 23c:	736e692f 	0x736e692f
 240:	4e470074 	c3	0x470074
 244:	53412055 	0x53412055
 248:	312e3220 	andi	t6,t1,0x3220
 24c:	30352e38 	andi	s5,at,0x2e38
 250:	47800100 	c1	0x1800100
 254:	02000000 	0x2000000
 258:	0000a000 	sll	s4,zero,0x0
 25c:	19010400 	0x19010400
 260:	60000004 	0x60000004
 264:	0cbfc00c 	jal	2ff0030 <data_size+0x2ff0020>
 268:	6ebfc00d 	0x6ebfc00d
 26c:	6e655f34 	0x6e655f34
 270:	6c797274 	0x6c797274
 274:	532e316f 	0x532e316f
 278:	6f682f00 	0x6f682f00
 27c:	632f656d 	0x632f656d
 280:	662f7973 	0x662f7973
 284:	2f636e75 	sltiu	v1,k1,28277
 288:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 28c:	554e4700 	0x554e4700
 290:	20534120 	addi	s3,v0,16672
 294:	38312e32 	xori	s1,at,0x2e32
 298:	0030352e 	0x30352e
 29c:	00468001 	0x468001
 2a0:	00020000 	sll	zero,v0,0x0
 2a4:	000000b4 	0xb4
 2a8:	047c0104 	0x47c0104
 2ac:	0d100000 	jal	4400000 <data_size+0x43ffff0>
 2b0:	0db8bfc0 	jal	6e2ff00 <data_size+0x6e2fef0>
 2b4:	326ebfc0 	andi	t6,s3,0xbfc0
 2b8:	746e655f 	jalx	1b9957c <data_size+0x1b9956c>
 2bc:	69687972 	0x69687972
 2c0:	2f00532e 	sltiu	zero,t8,21294
 2c4:	656d6f68 	0x656d6f68
 2c8:	7973632f 	0x7973632f
 2cc:	6e75662f 	0x6e75662f
 2d0:	6e692f63 	0x6e692f63
 2d4:	47007473 	c1	0x1007473
 2d8:	4120554e 	0x4120554e
 2dc:	2e322053 	sltiu	s2,s1,8275
 2e0:	352e3831 	ori	t6,t1,0x3831
 2e4:	80010030 	lb	at,48(zero)

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	10001101 	b	4408 <data_size+0x43f8>
   4:	12011106 	beq	s0,at,4420 <data_size+0x4410>
   8:	1b080301 	0x1b080301
   c:	13082508 	beq	t8,t0,9430 <data_size+0x9420>
  10:	00000005 	0x5
  14:	10001101 	b	441c <data_size+0x440c>
  18:	12011106 	beq	s0,at,4434 <data_size+0x4424>
  1c:	1b080301 	0x1b080301
  20:	13082508 	beq	t8,t0,9444 <data_size+0x9434>
  24:	00000005 	0x5
  28:	10001101 	b	4430 <data_size+0x4420>
  2c:	12011106 	beq	s0,at,4448 <data_size+0x4438>
  30:	1b080301 	0x1b080301
  34:	13082508 	beq	t8,t0,9458 <data_size+0x9448>
  38:	00000005 	0x5
  3c:	10001101 	b	4444 <data_size+0x4434>
  40:	12011106 	beq	s0,at,445c <data_size+0x444c>
  44:	1b080301 	0x1b080301
  48:	13082508 	beq	t8,t0,946c <data_size+0x945c>
  4c:	00000005 	0x5
  50:	10001101 	b	4458 <data_size+0x4448>
  54:	12011106 	beq	s0,at,4470 <data_size+0x4460>
  58:	1b080301 	0x1b080301
  5c:	13082508 	beq	t8,t0,9480 <data_size+0x9470>
  60:	00000005 	0x5
  64:	10001101 	b	446c <data_size+0x445c>
  68:	12011106 	beq	s0,at,4484 <data_size+0x4474>
  6c:	1b080301 	0x1b080301
  70:	13082508 	beq	t8,t0,9494 <data_size+0x9484>
  74:	00000005 	0x5
  78:	10001101 	b	4480 <data_size+0x4470>
  7c:	12011106 	beq	s0,at,4498 <data_size+0x4488>
  80:	1b080301 	0x1b080301
  84:	13082508 	beq	t8,t0,94a8 <data_size+0x9498>
  88:	00000005 	0x5
  8c:	10001101 	b	4494 <data_size+0x4484>
  90:	12011106 	beq	s0,at,44ac <data_size+0x449c>
  94:	1b080301 	0x1b080301
  98:	13082508 	beq	t8,t0,94bc <data_size+0x94ac>
  9c:	00000005 	0x5
  a0:	10001101 	b	44a8 <data_size+0x4498>
  a4:	12011106 	beq	s0,at,44c0 <data_size+0x44b0>
  a8:	1b080301 	0x1b080301
  ac:	13082508 	beq	t8,t0,94d0 <data_size+0x94c0>
  b0:	00000005 	0x5
  b4:	10001101 	b	44bc <data_size+0x44ac>
  b8:	12011106 	beq	s0,at,44d4 <data_size+0x44c4>
  bc:	1b080301 	0x1b080301
  c0:	13082508 	beq	t8,t0,94e4 <data_size+0x94d4>
  c4:	00000005 	0x5
