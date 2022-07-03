
main.elf:     file format elf32-tradlittlemips
main.elf


Disassembly of section .text:

bfc00000 <_ftext>:
/home/csy/func/start.S:19
bfc00000:	2408ffff 	li	t0,-1
/home/csy/func/start.S:20
bfc00004:	2408ffff 	li	t0,-1
/home/csy/func/start.S:21
bfc00008:	100001a8 	b	bfc006ac <locate>
/home/csy/func/start.S:22
bfc0000c:	00000000 	nop
/home/csy/func/start.S:25
bfc00010:	3c088000 	lui	t0,0x8000
/home/csy/func/start.S:26
bfc00014:	25290001 	addiu	t1,t1,1
/home/csy/func/start.S:27
bfc00018:	01005025 	move	t2,t0
/home/csy/func/start.S:28
bfc0001c:	01ae5821 	addu	t3,t5,t6
/home/csy/func/start.S:29
bfc00020:	8d0c0000 	lw	t4,0(t0)
	...
/home/csy/func/start.S:34
bfc000ec:	3c088000 	lui	t0,0x8000
/home/csy/func/start.S:35
bfc000f0:	25290001 	addiu	t1,t1,1
/home/csy/func/start.S:36
bfc000f4:	01005025 	move	t2,t0
/home/csy/func/start.S:37
bfc000f8:	01ae5821 	addu	t3,t5,t6
/home/csy/func/start.S:38
bfc000fc:	8d0c0000 	lw	t4,0(t0)

bfc00100 <test_finish>:
/home/csy/func/start.S:41
bfc00100:	25080001 	addiu	t0,t0,1
/home/csy/func/start.S:42
bfc00104:	240900ff 	li	t1,255
/home/csy/func/start.S:43
bfc00108:	3c0abfaf 	lui	t2,0xbfaf
bfc0010c:	354afff0 	ori	t2,t2,0xfff0
/home/csy/func/start.S:44
bfc00110:	ad490000 	sw	t1,0(t2)
/home/csy/func/start.S:45
bfc00114:	1000fffa 	b	bfc00100 <test_finish>
/home/csy/func/start.S:46
bfc00118:	00000000 	nop
/home/csy/func/start.S:48
bfc0011c:	3c088000 	lui	t0,0x8000
/home/csy/func/start.S:49
bfc00120:	25290001 	addiu	t1,t1,1
/home/csy/func/start.S:50
bfc00124:	01005025 	move	t2,t0
/home/csy/func/start.S:51
bfc00128:	01ae5821 	addu	t3,t5,t6
/home/csy/func/start.S:52
bfc0012c:	8d0c0000 	lw	t4,0(t0)
	...
/home/csy/func/start.S:58
bfc00380:	0000d010 	mfhi	k0
/home/csy/func/start.S:59
bfc00384:	0000d812 	mflo	k1
/home/csy/func/start.S:60
bfc00388:	3c1a800d 	lui	k0,0x800d
/home/csy/func/start.S:61
bfc0038c:	8f5b0000 	lw	k1,0(k0)
/home/csy/func/start.S:62
bfc00390:	241a0001 	li	k0,1
/home/csy/func/start.S:63
bfc00394:	137a0016 	beq	k1,k0,bfc003f0 <syscall_ex>
/home/csy/func/start.S:64
bfc00398:	00000000 	nop
/home/csy/func/start.S:65
bfc0039c:	241a0002 	li	k0,2
/home/csy/func/start.S:66
bfc003a0:	137a0024 	beq	k1,k0,bfc00434 <break_ex>
/home/csy/func/start.S:67
bfc003a4:	00000000 	nop
/home/csy/func/start.S:68
bfc003a8:	241a0003 	li	k0,3
/home/csy/func/start.S:69
bfc003ac:	137a0032 	beq	k1,k0,bfc00478 <overflow_ex>
/home/csy/func/start.S:70
bfc003b0:	00000000 	nop
/home/csy/func/start.S:71
bfc003b4:	241a0004 	li	k0,4
/home/csy/func/start.S:72
bfc003b8:	137a003f 	beq	k1,k0,bfc004b8 <adel_load_ex>
/home/csy/func/start.S:73
bfc003bc:	00000000 	nop
/home/csy/func/start.S:74
bfc003c0:	241a0005 	li	k0,5
/home/csy/func/start.S:75
bfc003c4:	137a004d 	beq	k1,k0,bfc004fc <ades_ex>
/home/csy/func/start.S:76
bfc003c8:	00000000 	nop
/home/csy/func/start.S:77
bfc003cc:	241a0006 	li	k0,6
/home/csy/func/start.S:78
bfc003d0:	137a005b 	beq	k1,k0,bfc00540 <adel_if_ex>
/home/csy/func/start.S:79
bfc003d4:	00000000 	nop
/home/csy/func/start.S:80
bfc003d8:	241a0007 	li	k0,7
/home/csy/func/start.S:81
bfc003dc:	137a006a 	beq	k1,k0,bfc00588 <reserved_inst_ex>
/home/csy/func/start.S:82
bfc003e0:	00000000 	nop
/home/csy/func/start.S:83
bfc003e4:	241a0008 	li	k0,8
/home/csy/func/start.S:84
bfc003e8:	137a0078 	beq	k1,k0,bfc005cc <int_ex>
/home/csy/func/start.S:85
bfc003ec:	00000000 	nop

bfc003f0 <syscall_ex>:
/home/csy/func/start.S:88
bfc003f0:	00009021 	move	s2,zero
/home/csy/func/start.S:89
bfc003f4:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:90
bfc003f8:	1754009d 	bne	k0,s4,bfc00670 <ex_finish>
/home/csy/func/start.S:91
bfc003fc:	00000000 	nop
/home/csy/func/start.S:92
bfc00400:	401a6800 	mfc0	k0,c0_cause
/home/csy/func/start.S:93
bfc00404:	335a007c 	andi	k0,k0,0x7c
/home/csy/func/start.S:94
bfc00408:	241b0020 	li	k1,32
/home/csy/func/start.S:95
bfc0040c:	175b0098 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:96
bfc00410:	00000000 	nop
/home/csy/func/start.S:97
bfc00414:	401a6000 	mfc0	k0,c0_status
/home/csy/func/start.S:98
bfc00418:	335a0002 	andi	k0,k0,0x2
/home/csy/func/start.S:99
bfc0041c:	241b0002 	li	k1,2
/home/csy/func/start.S:100
bfc00420:	175b0093 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:101
bfc00424:	00000000 	nop
/home/csy/func/start.S:102
bfc00428:	3c120001 	lui	s2,0x1
/home/csy/func/start.S:103
bfc0042c:	10000090 	b	bfc00670 <ex_finish>
/home/csy/func/start.S:104
bfc00430:	00000000 	nop

bfc00434 <break_ex>:
/home/csy/func/start.S:107
bfc00434:	00009021 	move	s2,zero
/home/csy/func/start.S:108
bfc00438:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:109
bfc0043c:	1754008c 	bne	k0,s4,bfc00670 <ex_finish>
/home/csy/func/start.S:110
bfc00440:	00000000 	nop
/home/csy/func/start.S:111
bfc00444:	401a6800 	mfc0	k0,c0_cause
/home/csy/func/start.S:112
bfc00448:	335a007c 	andi	k0,k0,0x7c
/home/csy/func/start.S:113
bfc0044c:	241b0024 	li	k1,36
/home/csy/func/start.S:114
bfc00450:	175b0087 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:115
bfc00454:	00000000 	nop
/home/csy/func/start.S:116
bfc00458:	401a6000 	mfc0	k0,c0_status
/home/csy/func/start.S:117
bfc0045c:	335a0002 	andi	k0,k0,0x2
/home/csy/func/start.S:118
bfc00460:	241b0002 	li	k1,2
/home/csy/func/start.S:119
bfc00464:	175b0082 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:120
bfc00468:	00000000 	nop
/home/csy/func/start.S:121
bfc0046c:	3c120002 	lui	s2,0x2
/home/csy/func/start.S:122
bfc00470:	1000007f 	b	bfc00670 <ex_finish>
/home/csy/func/start.S:123
bfc00474:	00000000 	nop

bfc00478 <overflow_ex>:
/home/csy/func/start.S:126
bfc00478:	00009021 	move	s2,zero
/home/csy/func/start.S:127
bfc0047c:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:128
bfc00480:	1754007b 	bne	k0,s4,bfc00670 <ex_finish>
/home/csy/func/start.S:129
bfc00484:	401a6800 	mfc0	k0,c0_cause
/home/csy/func/start.S:130
bfc00488:	335a007c 	andi	k0,k0,0x7c
/home/csy/func/start.S:131
bfc0048c:	241b0030 	li	k1,48
/home/csy/func/start.S:132
bfc00490:	175b0077 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:133
bfc00494:	00000000 	nop
/home/csy/func/start.S:134
bfc00498:	401a6000 	mfc0	k0,c0_status
/home/csy/func/start.S:135
bfc0049c:	335a0002 	andi	k0,k0,0x2
/home/csy/func/start.S:136
bfc004a0:	241b0002 	li	k1,2
/home/csy/func/start.S:137
bfc004a4:	175b0072 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:138
bfc004a8:	00000000 	nop
/home/csy/func/start.S:139
bfc004ac:	3c120003 	lui	s2,0x3
/home/csy/func/start.S:140
bfc004b0:	1000006f 	b	bfc00670 <ex_finish>
/home/csy/func/start.S:141
bfc004b4:	00000000 	nop

bfc004b8 <adel_load_ex>:
/home/csy/func/start.S:144
bfc004b8:	00009021 	move	s2,zero
/home/csy/func/start.S:145
bfc004bc:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:146
bfc004c0:	1754006b 	bne	k0,s4,bfc00670 <ex_finish>
/home/csy/func/start.S:147
bfc004c4:	00000000 	nop
/home/csy/func/start.S:148
bfc004c8:	401a6800 	mfc0	k0,c0_cause
/home/csy/func/start.S:149
bfc004cc:	335a007c 	andi	k0,k0,0x7c
/home/csy/func/start.S:150
bfc004d0:	241b0010 	li	k1,16
/home/csy/func/start.S:151
bfc004d4:	175b0066 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:152
bfc004d8:	00000000 	nop
/home/csy/func/start.S:153
bfc004dc:	401a6000 	mfc0	k0,c0_status
/home/csy/func/start.S:154
bfc004e0:	335a0002 	andi	k0,k0,0x2
/home/csy/func/start.S:155
bfc004e4:	241b0002 	li	k1,2
/home/csy/func/start.S:156
bfc004e8:	175b0061 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:157
bfc004ec:	00000000 	nop
/home/csy/func/start.S:158
bfc004f0:	3c120004 	lui	s2,0x4
/home/csy/func/start.S:159
bfc004f4:	1000005e 	b	bfc00670 <ex_finish>
/home/csy/func/start.S:160
bfc004f8:	00000000 	nop

bfc004fc <ades_ex>:
/home/csy/func/start.S:163
bfc004fc:	00009021 	move	s2,zero
/home/csy/func/start.S:164
bfc00500:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:165
bfc00504:	1754005a 	bne	k0,s4,bfc00670 <ex_finish>
/home/csy/func/start.S:166
bfc00508:	00000000 	nop
/home/csy/func/start.S:167
bfc0050c:	401a6800 	mfc0	k0,c0_cause
/home/csy/func/start.S:168
bfc00510:	335a007c 	andi	k0,k0,0x7c
/home/csy/func/start.S:169
bfc00514:	241b0014 	li	k1,20
/home/csy/func/start.S:170
bfc00518:	175b0055 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:171
bfc0051c:	00000000 	nop
/home/csy/func/start.S:172
bfc00520:	401a6000 	mfc0	k0,c0_status
/home/csy/func/start.S:173
bfc00524:	335a0002 	andi	k0,k0,0x2
/home/csy/func/start.S:174
bfc00528:	241b0002 	li	k1,2
/home/csy/func/start.S:175
bfc0052c:	175b0050 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:176
bfc00530:	00000000 	nop
/home/csy/func/start.S:177
bfc00534:	3c120005 	lui	s2,0x5
/home/csy/func/start.S:178
bfc00538:	1000004d 	b	bfc00670 <ex_finish>
/home/csy/func/start.S:179
bfc0053c:	00000000 	nop

bfc00540 <adel_if_ex>:
/home/csy/func/start.S:182
bfc00540:	00009021 	move	s2,zero
/home/csy/func/start.S:183
bfc00544:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:184
bfc00548:	17540049 	bne	k0,s4,bfc00670 <ex_finish>
/home/csy/func/start.S:185
bfc0054c:	00000000 	nop
/home/csy/func/start.S:186
bfc00550:	40957000 	mtc0	s5,c0_epc
/home/csy/func/start.S:187
bfc00554:	401a6800 	mfc0	k0,c0_cause
/home/csy/func/start.S:188
bfc00558:	335a007c 	andi	k0,k0,0x7c
/home/csy/func/start.S:189
bfc0055c:	241b0010 	li	k1,16
/home/csy/func/start.S:190
bfc00560:	175b0043 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:191
bfc00564:	00000000 	nop
/home/csy/func/start.S:192
bfc00568:	401a6000 	mfc0	k0,c0_status
/home/csy/func/start.S:193
bfc0056c:	335a0002 	andi	k0,k0,0x2
/home/csy/func/start.S:194
bfc00570:	241b0002 	li	k1,2
/home/csy/func/start.S:195
bfc00574:	175b003e 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:196
bfc00578:	00000000 	nop
/home/csy/func/start.S:197
bfc0057c:	3c120006 	lui	s2,0x6
/home/csy/func/start.S:198
bfc00580:	1000003b 	b	bfc00670 <ex_finish>
/home/csy/func/start.S:199
bfc00584:	00000000 	nop

bfc00588 <reserved_inst_ex>:
/home/csy/func/start.S:202
bfc00588:	00009021 	move	s2,zero
/home/csy/func/start.S:203
bfc0058c:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:204
bfc00590:	17540037 	bne	k0,s4,bfc00670 <ex_finish>
/home/csy/func/start.S:205
bfc00594:	00000000 	nop
/home/csy/func/start.S:206
bfc00598:	401a6800 	mfc0	k0,c0_cause
/home/csy/func/start.S:207
bfc0059c:	335a007c 	andi	k0,k0,0x7c
/home/csy/func/start.S:208
bfc005a0:	241b0028 	li	k1,40
/home/csy/func/start.S:209
bfc005a4:	175b0032 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:210
bfc005a8:	00000000 	nop
/home/csy/func/start.S:211
bfc005ac:	401a6000 	mfc0	k0,c0_status
/home/csy/func/start.S:212
bfc005b0:	335a0002 	andi	k0,k0,0x2
/home/csy/func/start.S:213
bfc005b4:	241b0002 	li	k1,2
/home/csy/func/start.S:214
bfc005b8:	175b002d 	bne	k0,k1,bfc00670 <ex_finish>
/home/csy/func/start.S:215
bfc005bc:	00000000 	nop
/home/csy/func/start.S:216
bfc005c0:	3c120007 	lui	s2,0x7
/home/csy/func/start.S:217
bfc005c4:	1000002a 	b	bfc00670 <ex_finish>
/home/csy/func/start.S:218
bfc005c8:	00000000 	nop

bfc005cc <int_ex>:
/home/csy/func/start.S:221
bfc005cc:	00009021 	move	s2,zero
/home/csy/func/start.S:222
bfc005d0:	401a7000 	mfc0	k0,c0_epc
/home/csy/func/start.S:223
bfc005d4:	17540026 	bne	k0,s4,bfc00670 <ex_finish>
/home/csy/func/start.S:224
bfc005d8:	00000000 	nop
/home/csy/func/start.S:225
bfc005dc:	275a0008 	addiu	k0,k0,8
/home/csy/func/start.S:226
bfc005e0:	409a7000 	mtc0	k0,c0_epc
/home/csy/func/start.S:227
bfc005e4:	3c1bbfb0 	lui	k1,0xbfb0
bfc005e8:	af608ffc 	sw	zero,-28676(k1)
bfc005ec:	af608ffc 	sw	zero,-28676(k1)
bfc005f0:	af60fff8 	sw	zero,-8(k1)
bfc005f4:	af608ffc 	sw	zero,-28676(k1)
bfc005f8:	af608ffc 	sw	zero,-28676(k1)
bfc005fc:	8f608ffc 	lw	zero,-28676(k1)
bfc00600:	8f7bfff8 	lw	k1,-8(k1)
/home/csy/func/start.S:228
bfc00604:	401a6800 	mfc0	k0,c0_cause
/home/csy/func/start.S:229
bfc00608:	3c1bbfb0 	lui	k1,0xbfb0
bfc0060c:	af608ffc 	sw	zero,-28676(k1)
bfc00610:	af608ffc 	sw	zero,-28676(k1)
bfc00614:	af7bfff8 	sw	k1,-8(k1)
bfc00618:	af608ffc 	sw	zero,-28676(k1)
bfc0061c:	af608ffc 	sw	zero,-28676(k1)
bfc00620:	8f608ffc 	lw	zero,-28676(k1)
bfc00624:	8f7bfff8 	lw	k1,-8(k1)
/home/csy/func/start.S:230
bfc00628:	335a007c 	andi	k0,k0,0x7c
/home/csy/func/start.S:231
bfc0062c:	241b0000 	li	k1,0
/home/csy/func/start.S:232
bfc00630:	175b000f 	bne	k0,k1,bfc00670 <ex_finish>
bfc00634:	00000000 	nop
/home/csy/func/start.S:233
bfc00638:	00000000 	nop
/home/csy/func/start.S:234
bfc0063c:	401a6000 	mfc0	k0,c0_status
/home/csy/func/start.S:235
bfc00640:	335a0002 	andi	k0,k0,0x2
/home/csy/func/start.S:236
bfc00644:	241b0002 	li	k1,2
/home/csy/func/start.S:237
bfc00648:	175b0009 	bne	k0,k1,bfc00670 <ex_finish>
bfc0064c:	00000000 	nop
/home/csy/func/start.S:238
bfc00650:	00000000 	nop
/home/csy/func/start.S:239
bfc00654:	241affff 	li	k0,-1
/home/csy/func/start.S:240
bfc00658:	241b0000 	li	k1,0
/home/csy/func/start.S:241
bfc0065c:	409a5800 	mtc0	k0,c0_compare
/home/csy/func/start.S:242
bfc00660:	409b6800 	mtc0	k1,c0_cause
/home/csy/func/start.S:243
bfc00664:	1000000f 	b	bfc006a4 <ex_ret>
/home/csy/func/start.S:244
bfc00668:	3c120008 	lui	s2,0x8
/home/csy/func/start.S:245
bfc0066c:	00000000 	nop

bfc00670 <ex_finish>:
/home/csy/func/start.S:248
bfc00670:	401a6800 	mfc0	k0,c0_cause
/home/csy/func/start.S:249
bfc00674:	3c1b8000 	lui	k1,0x8000
/home/csy/func/start.S:250
bfc00678:	035bd024 	and	k0,k0,k1
/home/csy/func/start.S:251
bfc0067c:	401b7000 	mfc0	k1,c0_epc
/home/csy/func/start.S:252
bfc00680:	13400003 	beqz	k0,bfc00690 <ex_finish+0x20>
/home/csy/func/start.S:253
bfc00684:	277b0004 	addiu	k1,k1,4
/home/csy/func/start.S:254
bfc00688:	00000000 	nop
/home/csy/func/start.S:255
bfc0068c:	277b0004 	addiu	k1,k1,4
/home/csy/func/start.S:257
bfc00690:	409b7000 	mtc0	k1,c0_epc
/home/csy/func/start.S:258
bfc00694:	16400003 	bnez	s2,bfc006a4 <ex_ret>
/home/csy/func/start.S:259
bfc00698:	00000000 	nop
/home/csy/func/start.S:260
bfc0069c:	00000000 	nop
/home/csy/func/start.S:261
bfc006a0:	3c12ffff 	lui	s2,0xffff

bfc006a4 <ex_ret>:
/home/csy/func/start.S:264
bfc006a4:	42000018 	eret
/home/csy/func/start.S:266
bfc006a8:	00000000 	nop

bfc006ac <locate>:
/home/csy/func/start.S:271
bfc006ac:	3c04bfaf 	lui	a0,0xbfaf
bfc006b0:	3484f008 	ori	a0,a0,0xf008
/home/csy/func/start.S:272
bfc006b4:	3c05bfaf 	lui	a1,0xbfaf
bfc006b8:	34a5f004 	ori	a1,a1,0xf004
/home/csy/func/start.S:273
bfc006bc:	3c11bfaf 	lui	s1,0xbfaf
bfc006c0:	3631f010 	ori	s1,s1,0xf010
/home/csy/func/start.S:275
bfc006c4:	24090002 	li	t1,2
/home/csy/func/start.S:276
bfc006c8:	240a0001 	li	t2,1
/home/csy/func/start.S:277
bfc006cc:	3c130000 	lui	s3,0x0
/home/csy/func/start.S:279
bfc006d0:	ac890000 	sw	t1,0(a0)
/home/csy/func/start.S:280
bfc006d4:	acaa0000 	sw	t2,0(a1)
/home/csy/func/start.S:281
bfc006d8:	ae330000 	sw	s3,0(s1)
/home/csy/func/start.S:283
bfc006dc:	3c100000 	lui	s0,0x0
/home/csy/func/start.S:285
bfc006e0:	3c09bfc0 	lui	t1,0xbfc0
bfc006e4:	252906f8 	addiu	t1,t1,1784
/home/csy/func/start.S:286
bfc006e8:	3c0a2000 	lui	t2,0x2000
/home/csy/func/start.S:287
bfc006ec:	012ac823 	subu	t9,t1,t2
/home/csy/func/start.S:288
bfc006f0:	03200008 	jr	t9
/home/csy/func/start.S:289
bfc006f4:	00000000 	nop

bfc006f8 <inst_test>:
/home/csy/func/start.S:292
bfc006f8:	0ff0330c 	jal	bfc0cc30 <n1_lui_test>
/home/csy/func/start.S:293
bfc006fc:	00000000 	nop
/home/csy/func/start.S:294
bfc00700:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:295
bfc00704:	00000000 	nop
/home/csy/func/start.S:297
bfc00708:	3c19bfc0 	lui	t9,0xbfc0
bfc0070c:	27390718 	addiu	t9,t9,1816
/home/csy/func/start.S:298
bfc00710:	03200008 	jr	t9
/home/csy/func/start.S:299
bfc00714:	00000000 	nop

bfc00718 <kseg0_kseg1>:
/home/csy/func/start.S:318
bfc00718:	0ff01398 	jal	bfc04e60 <n6_lw_test>
/home/csy/func/start.S:319
bfc0071c:	00000000 	nop
/home/csy/func/start.S:320
bfc00720:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:321
bfc00724:	00000000 	nop
/home/csy/func/start.S:342
bfc00728:	0ff00238 	jal	bfc008e0 <n12_sw_test>
/home/csy/func/start.S:343
bfc0072c:	00000000 	nop
/home/csy/func/start.S:344
bfc00730:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:345
bfc00734:	00000000 	nop
/home/csy/func/start.S:530
bfc00738:	0ff01898 	jal	bfc06260 <n59_lb_test>
/home/csy/func/start.S:531
bfc0073c:	00000000 	nop
/home/csy/func/start.S:532
bfc00740:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:533
bfc00744:	00000000 	nop
/home/csy/func/start.S:534
bfc00748:	0ff04044 	jal	bfc10110 <n60_lbu_test>
/home/csy/func/start.S:535
bfc0074c:	00000000 	nop
/home/csy/func/start.S:536
bfc00750:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:537
bfc00754:	00000000 	nop
/home/csy/func/start.S:538
bfc00758:	0ff02184 	jal	bfc08610 <n61_lh_test>
/home/csy/func/start.S:539
bfc0075c:	00000000 	nop
/home/csy/func/start.S:540
bfc00760:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:541
bfc00764:	00000000 	nop
/home/csy/func/start.S:542
bfc00768:	0ff037a4 	jal	bfc0de90 <n62_lhu_test>
/home/csy/func/start.S:543
bfc0076c:	00000000 	nop
/home/csy/func/start.S:544
bfc00770:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:545
bfc00774:	00000000 	nop
/home/csy/func/start.S:546
bfc00778:	0ff00898 	jal	bfc02260 <n63_sb_test>
/home/csy/func/start.S:547
bfc0077c:	00000000 	nop
/home/csy/func/start.S:548
bfc00780:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:549
bfc00784:	00000000 	nop
/home/csy/func/start.S:550
bfc00788:	0ff02898 	jal	bfc0a260 <n64_sh_test>
/home/csy/func/start.S:551
bfc0078c:	00000000 	nop
/home/csy/func/start.S:552
bfc00790:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:553
bfc00794:	00000000 	nop
/home/csy/func/start.S:574
bfc00798:	0ff0324c 	jal	bfc0c930 <n70_lw_adel_ex_test>
/home/csy/func/start.S:575
bfc0079c:	00000000 	nop
/home/csy/func/start.S:576
bfc007a0:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:577
bfc007a4:	00000000 	nop
/home/csy/func/start.S:578
bfc007a8:	0ff049d0 	jal	bfc12740 <n71_lh_adel_ex_test>
/home/csy/func/start.S:579
bfc007ac:	00000000 	nop
/home/csy/func/start.S:580
bfc007b0:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:581
bfc007b4:	00000000 	nop
/home/csy/func/start.S:582
bfc007b8:	0ff007d8 	jal	bfc01f60 <n72_lhu_adel_ex_test>
/home/csy/func/start.S:583
bfc007bc:	00000000 	nop
/home/csy/func/start.S:584
bfc007c0:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:585
bfc007c4:	00000000 	nop
/home/csy/func/start.S:586
bfc007c8:	0ff012d8 	jal	bfc04b60 <n73_sw_ades_ex_test>
/home/csy/func/start.S:587
bfc007cc:	00000000 	nop
/home/csy/func/start.S:588
bfc007d0:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:589
bfc007d4:	00000000 	nop
/home/csy/func/start.S:590
bfc007d8:	0ff03f84 	jal	bfc0fe10 <n74_sh_ades_ex_test>
/home/csy/func/start.S:591
bfc007dc:	00000000 	nop
/home/csy/func/start.S:592
bfc007e0:	0ff00224 	jal	bfc00890 <wait_1s>
/home/csy/func/start.S:593
bfc007e4:	00000000 	nop
/home/csy/func/start.S:655
bfc007e8:	3c04bfaf 	lui	a0,0xbfaf
bfc007ec:	3484ffec 	ori	a0,a0,0xffec
/home/csy/func/start.S:656
bfc007f0:	24081234 	li	t0,4660
/home/csy/func/start.S:657
bfc007f4:	ac880000 	sw	t0,0(a0)
/home/csy/func/start.S:658
bfc007f8:	8c890000 	lw	t1,0(a0)
/home/csy/func/start.S:659
bfc007fc:	00084400 	sll	t0,t0,0x10
/home/csy/func/start.S:660
bfc00800:	15090009 	bne	t0,t1,bfc00828 <io_err>
/home/csy/func/start.S:661
bfc00804:	00000000 	nop
/home/csy/func/start.S:663
bfc00808:	3c085678 	lui	t0,0x5678
/home/csy/func/start.S:664
bfc0080c:	ac880000 	sw	t0,0(a0)
/home/csy/func/start.S:665
bfc00810:	00084402 	srl	t0,t0,0x10
/home/csy/func/start.S:666
bfc00814:	8c890000 	lw	t1,0(a0)
/home/csy/func/start.S:667
bfc00818:	15090003 	bne	t0,t1,bfc00828 <io_err>
/home/csy/func/start.S:668
bfc0081c:	00000000 	nop
/home/csy/func/start.S:669
bfc00820:	10000003 	b	bfc00830 <test_end>
/home/csy/func/start.S:670
bfc00824:	00000000 	nop

bfc00828 <io_err>:
/home/csy/func/start.S:672
bfc00828:	26100001 	addiu	s0,s0,1
/home/csy/func/start.S:673
bfc0082c:	ae300000 	sw	s0,0(s1)

bfc00830 <test_end>:
/home/csy/func/start.S:676
bfc00830:	2410000e 	li	s0,14
/home/csy/func/start.S:677
bfc00834:	1213000d 	beq	s0,s3,bfc0086c <test_end+0x3c>
/home/csy/func/start.S:678
bfc00838:	00000000 	nop
/home/csy/func/start.S:680
bfc0083c:	3c04bfaf 	lui	a0,0xbfaf
bfc00840:	3484f000 	ori	a0,a0,0xf000
/home/csy/func/start.S:681
bfc00844:	3c05bfaf 	lui	a1,0xbfaf
bfc00848:	34a5f008 	ori	a1,a1,0xf008
/home/csy/func/start.S:682
bfc0084c:	3c06bfaf 	lui	a2,0xbfaf
bfc00850:	34c6f004 	ori	a2,a2,0xf004
/home/csy/func/start.S:684
bfc00854:	24090002 	li	t1,2
/home/csy/func/start.S:686
bfc00858:	ac800000 	sw	zero,0(a0)
/home/csy/func/start.S:687
bfc0085c:	aca90000 	sw	t1,0(a1)
/home/csy/func/start.S:688
bfc00860:	acc90000 	sw	t1,0(a2)
/home/csy/func/start.S:689
bfc00864:	10000008 	b	bfc00888 <test_end+0x58>
/home/csy/func/start.S:690
bfc00868:	00000000 	nop
/home/csy/func/start.S:692
bfc0086c:	24090001 	li	t1,1
/home/csy/func/start.S:693
bfc00870:	3c04bfaf 	lui	a0,0xbfaf
bfc00874:	3484f008 	ori	a0,a0,0xf008
/home/csy/func/start.S:694
bfc00878:	3c05bfaf 	lui	a1,0xbfaf
bfc0087c:	34a5f004 	ori	a1,a1,0xf004
/home/csy/func/start.S:695
bfc00880:	ac890000 	sw	t1,0(a0)
/home/csy/func/start.S:696
bfc00884:	aca90000 	sw	t1,0(a1)
/home/csy/func/start.S:699
bfc00888:	0ff00040 	jal	bfc00100 <test_finish>
/home/csy/func/start.S:700
bfc0088c:	00000000 	nop

bfc00890 <wait_1s>:
/home/csy/func/start.S:703
bfc00890:	3c08bfaf 	lui	t0,0xbfaf
bfc00894:	3508f02c 	ori	t0,t0,0xf02c
/home/csy/func/start.S:704
bfc00898:	3409aaaa 	li	t1,0xaaaa
/home/csy/func/start.S:707
bfc0089c:	8d0a0000 	lw	t2,0(t0)
/home/csy/func/start.S:708
bfc008a0:	01495026 	xor	t2,t2,t1
/home/csy/func/start.S:709
bfc008a4:	000a5a40 	sll	t3,t2,0x9
/home/csy/func/start.S:710
bfc008a8:	256b0001 	addiu	t3,t3,1

bfc008ac <sub1>:
/home/csy/func/start.S:713
bfc008ac:	256bffff 	addiu	t3,t3,-1
/home/csy/func/start.S:716
bfc008b0:	8d0a0000 	lw	t2,0(t0)
/home/csy/func/start.S:717
bfc008b4:	01495026 	xor	t2,t2,t1
/home/csy/func/start.S:718
bfc008b8:	000a5240 	sll	t2,t2,0x9
/home/csy/func/start.S:719
bfc008bc:	016a602b 	sltu	t4,t3,t2
/home/csy/func/start.S:720
bfc008c0:	15800002 	bnez	t4,bfc008cc <sub1+0x20>
/home/csy/func/start.S:721
bfc008c4:	00000000 	nop
/home/csy/func/start.S:722
bfc008c8:	254b0000 	addiu	t3,t2,0
/home/csy/func/start.S:724
bfc008cc:	1560fff7 	bnez	t3,bfc008ac <sub1>
/home/csy/func/start.S:725
bfc008d0:	00000000 	nop
/home/csy/func/start.S:726
bfc008d4:	03e00008 	jr	ra
/home/csy/func/start.S:727
bfc008d8:	00000000 	nop
sub1():
bfc008dc:	00000000 	nop

bfc008e0 <n12_sw_test>:
/home/csy/func/inst/n12_sw.S:7
bfc008e0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n12_sw.S:8
bfc008e4:	24120000 	li	s2,0
/home/csy/func/inst/n12_sw.S:10
bfc008e8:	3c096175 	lui	t1,0x6175
bfc008ec:	35294443 	ori	t1,t1,0x4443
bfc008f0:	3c08800d 	lui	t0,0x800d
bfc008f4:	350877a0 	ori	t0,t0,0x77a0
bfc008f8:	3c036175 	lui	v1,0x6175
bfc008fc:	34634443 	ori	v1,v1,0x4443
bfc00900:	ad097b14 	sw	t1,31508(t0)
bfc00904:	25040004 	addiu	a0,t0,4
bfc00908:	2505fffc 	addiu	a1,t0,-4
bfc0090c:	ac847b14 	sw	a0,31508(a0)
bfc00910:	aca57b14 	sw	a1,31508(a1)
bfc00914:	8d027b14 	lw	v0,31508(t0)
bfc00918:	8c867b14 	lw	a2,31508(a0)
bfc0091c:	8ca47b14 	lw	a0,31508(a1)
bfc00920:	8ca67b14 	lw	a2,31508(a1)
bfc00924:	14430587 	bne	v0,v1,bfc01f44 <inst_error>
bfc00928:	00000000 	nop
/home/csy/func/inst/n12_sw.S:11
bfc0092c:	3c095c4f 	lui	t1,0x5c4f
bfc00930:	3529b45a 	ori	t1,t1,0xb45a
bfc00934:	3c08800d 	lui	t0,0x800d
bfc00938:	35084aac 	ori	t0,t0,0x4aac
bfc0093c:	3c035c4f 	lui	v1,0x5c4f
bfc00940:	3463b45a 	ori	v1,v1,0xb45a
bfc00944:	ad09776c 	sw	t1,30572(t0)
bfc00948:	25040004 	addiu	a0,t0,4
bfc0094c:	2505fffc 	addiu	a1,t0,-4
bfc00950:	ac84776c 	sw	a0,30572(a0)
bfc00954:	aca5776c 	sw	a1,30572(a1)
bfc00958:	8d02776c 	lw	v0,30572(t0)
bfc0095c:	8c86776c 	lw	a2,30572(a0)
bfc00960:	8ca4776c 	lw	a0,30572(a1)
bfc00964:	8ca6776c 	lw	a2,30572(a1)
bfc00968:	14430576 	bne	v0,v1,bfc01f44 <inst_error>
bfc0096c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:12
bfc00970:	3c091490 	lui	t1,0x1490
bfc00974:	35298300 	ori	t1,t1,0x8300
bfc00978:	3c08800d 	lui	t0,0x800d
bfc0097c:	35084ae8 	ori	t0,t0,0x4ae8
bfc00980:	3c031490 	lui	v1,0x1490
bfc00984:	34638300 	ori	v1,v1,0x8300
bfc00988:	ad095bd8 	sw	t1,23512(t0)
bfc0098c:	25040004 	addiu	a0,t0,4
bfc00990:	2505fffc 	addiu	a1,t0,-4
bfc00994:	ac845bd8 	sw	a0,23512(a0)
bfc00998:	aca55bd8 	sw	a1,23512(a1)
bfc0099c:	8d025bd8 	lw	v0,23512(t0)
bfc009a0:	8c865bd8 	lw	a2,23512(a0)
bfc009a4:	8ca45bd8 	lw	a0,23512(a1)
bfc009a8:	8ca65bd8 	lw	a2,23512(a1)
bfc009ac:	14430565 	bne	v0,v1,bfc01f44 <inst_error>
bfc009b0:	00000000 	nop
/home/csy/func/inst/n12_sw.S:13
bfc009b4:	3c09516d 	lui	t1,0x516d
bfc009b8:	3529a739 	ori	t1,t1,0xa739
bfc009bc:	3c08800d 	lui	t0,0x800d
bfc009c0:	350860cc 	ori	t0,t0,0x60cc
bfc009c4:	3c03516d 	lui	v1,0x516d
bfc009c8:	3463a739 	ori	v1,v1,0xa739
bfc009cc:	3c010001 	lui	at,0x1
bfc009d0:	00280821 	addu	at,at,t0
bfc009d4:	ac298950 	sw	t1,-30384(at)
bfc009d8:	25040004 	addiu	a0,t0,4
bfc009dc:	2505fffc 	addiu	a1,t0,-4
bfc009e0:	3c010001 	lui	at,0x1
bfc009e4:	00240821 	addu	at,at,a0
bfc009e8:	ac248950 	sw	a0,-30384(at)
bfc009ec:	3c010001 	lui	at,0x1
bfc009f0:	00250821 	addu	at,at,a1
bfc009f4:	ac258950 	sw	a1,-30384(at)
bfc009f8:	3c020001 	lui	v0,0x1
bfc009fc:	00481021 	addu	v0,v0,t0
bfc00a00:	8c428950 	lw	v0,-30384(v0)
bfc00a04:	3c060001 	lui	a2,0x1
bfc00a08:	00c43021 	addu	a2,a2,a0
bfc00a0c:	8cc68950 	lw	a2,-30384(a2)
bfc00a10:	3c040001 	lui	a0,0x1
bfc00a14:	00852021 	addu	a0,a0,a1
bfc00a18:	8c848950 	lw	a0,-30384(a0)
bfc00a1c:	3c060001 	lui	a2,0x1
bfc00a20:	00c53021 	addu	a2,a2,a1
bfc00a24:	8cc68950 	lw	a2,-30384(a2)
bfc00a28:	14430546 	bne	v0,v1,bfc01f44 <inst_error>
bfc00a2c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:14
bfc00a30:	3c098567 	lui	t1,0x8567
bfc00a34:	35295a34 	ori	t1,t1,0x5a34
bfc00a38:	3c08800d 	lui	t0,0x800d
bfc00a3c:	35085510 	ori	t0,t0,0x5510
bfc00a40:	3c038567 	lui	v1,0x8567
bfc00a44:	34635a34 	ori	v1,v1,0x5a34
bfc00a48:	ad0930b0 	sw	t1,12464(t0)
bfc00a4c:	25040004 	addiu	a0,t0,4
bfc00a50:	2505fffc 	addiu	a1,t0,-4
bfc00a54:	ac8430b0 	sw	a0,12464(a0)
bfc00a58:	aca530b0 	sw	a1,12464(a1)
bfc00a5c:	8d0230b0 	lw	v0,12464(t0)
bfc00a60:	8c8630b0 	lw	a2,12464(a0)
bfc00a64:	8ca430b0 	lw	a0,12464(a1)
bfc00a68:	8ca630b0 	lw	a2,12464(a1)
bfc00a6c:	14430535 	bne	v0,v1,bfc01f44 <inst_error>
bfc00a70:	00000000 	nop
/home/csy/func/inst/n12_sw.S:15
bfc00a74:	3c090e4d 	lui	t1,0xe4d
bfc00a78:	3529ac98 	ori	t1,t1,0xac98
bfc00a7c:	3c08800d 	lui	t0,0x800d
bfc00a80:	3508b040 	ori	t0,t0,0xb040
bfc00a84:	3c030e4d 	lui	v1,0xe4d
bfc00a88:	3463ac98 	ori	v1,v1,0xac98
bfc00a8c:	ad094000 	sw	t1,16384(t0)
bfc00a90:	25040004 	addiu	a0,t0,4
bfc00a94:	2505fffc 	addiu	a1,t0,-4
bfc00a98:	ac844000 	sw	a0,16384(a0)
bfc00a9c:	aca54000 	sw	a1,16384(a1)
bfc00aa0:	8d024000 	lw	v0,16384(t0)
bfc00aa4:	8c864000 	lw	a2,16384(a0)
bfc00aa8:	8ca44000 	lw	a0,16384(a1)
bfc00aac:	8ca64000 	lw	a2,16384(a1)
bfc00ab0:	14430524 	bne	v0,v1,bfc01f44 <inst_error>
bfc00ab4:	00000000 	nop
/home/csy/func/inst/n12_sw.S:16
bfc00ab8:	3c09d9c6 	lui	t1,0xd9c6
bfc00abc:	3529eddb 	ori	t1,t1,0xeddb
bfc00ac0:	3c08800d 	lui	t0,0x800d
bfc00ac4:	35087180 	ori	t0,t0,0x7180
bfc00ac8:	3c03d9c6 	lui	v1,0xd9c6
bfc00acc:	3463eddb 	ori	v1,v1,0xeddb
bfc00ad0:	ad0922e0 	sw	t1,8928(t0)
bfc00ad4:	25040004 	addiu	a0,t0,4
bfc00ad8:	2505fffc 	addiu	a1,t0,-4
bfc00adc:	ac8422e0 	sw	a0,8928(a0)
bfc00ae0:	aca522e0 	sw	a1,8928(a1)
bfc00ae4:	8d0222e0 	lw	v0,8928(t0)
bfc00ae8:	8c8622e0 	lw	a2,8928(a0)
bfc00aec:	8ca422e0 	lw	a0,8928(a1)
bfc00af0:	8ca622e0 	lw	a2,8928(a1)
bfc00af4:	14430513 	bne	v0,v1,bfc01f44 <inst_error>
bfc00af8:	00000000 	nop
/home/csy/func/inst/n12_sw.S:17
bfc00afc:	3c095753 	lui	t1,0x5753
bfc00b00:	3529dd01 	ori	t1,t1,0xdd01
bfc00b04:	3c08800d 	lui	t0,0x800d
bfc00b08:	35082ca0 	ori	t0,t0,0x2ca0
bfc00b0c:	3c035753 	lui	v1,0x5753
bfc00b10:	3463dd01 	ori	v1,v1,0xdd01
bfc00b14:	ad092780 	sw	t1,10112(t0)
bfc00b18:	25040004 	addiu	a0,t0,4
bfc00b1c:	2505fffc 	addiu	a1,t0,-4
bfc00b20:	ac842780 	sw	a0,10112(a0)
bfc00b24:	aca52780 	sw	a1,10112(a1)
bfc00b28:	8d022780 	lw	v0,10112(t0)
bfc00b2c:	8c862780 	lw	a2,10112(a0)
bfc00b30:	8ca42780 	lw	a0,10112(a1)
bfc00b34:	8ca62780 	lw	a2,10112(a1)
bfc00b38:	14430502 	bne	v0,v1,bfc01f44 <inst_error>
bfc00b3c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:18
bfc00b40:	3c09e543 	lui	t1,0xe543
bfc00b44:	3529b9f3 	ori	t1,t1,0xb9f3
bfc00b48:	3c08800d 	lui	t0,0x800d
bfc00b4c:	3508331c 	ori	t0,t0,0x331c
bfc00b50:	3c03e543 	lui	v1,0xe543
bfc00b54:	3463b9f3 	ori	v1,v1,0xb9f3
bfc00b58:	ad0969b8 	sw	t1,27064(t0)
bfc00b5c:	25040004 	addiu	a0,t0,4
bfc00b60:	2505fffc 	addiu	a1,t0,-4
bfc00b64:	ac8469b8 	sw	a0,27064(a0)
bfc00b68:	aca569b8 	sw	a1,27064(a1)
bfc00b6c:	8d0269b8 	lw	v0,27064(t0)
bfc00b70:	8c8669b8 	lw	a2,27064(a0)
bfc00b74:	8ca469b8 	lw	a0,27064(a1)
bfc00b78:	8ca669b8 	lw	a2,27064(a1)
bfc00b7c:	144304f1 	bne	v0,v1,bfc01f44 <inst_error>
bfc00b80:	00000000 	nop
/home/csy/func/inst/n12_sw.S:19
bfc00b84:	3c094726 	lui	t1,0x4726
bfc00b88:	3529aca2 	ori	t1,t1,0xaca2
bfc00b8c:	3c08800d 	lui	t0,0x800d
bfc00b90:	35086cf8 	ori	t0,t0,0x6cf8
bfc00b94:	3c034726 	lui	v1,0x4726
bfc00b98:	3463aca2 	ori	v1,v1,0xaca2
bfc00b9c:	ad095b70 	sw	t1,23408(t0)
bfc00ba0:	25040004 	addiu	a0,t0,4
bfc00ba4:	2505fffc 	addiu	a1,t0,-4
bfc00ba8:	ac845b70 	sw	a0,23408(a0)
bfc00bac:	aca55b70 	sw	a1,23408(a1)
bfc00bb0:	8d025b70 	lw	v0,23408(t0)
bfc00bb4:	8c865b70 	lw	a2,23408(a0)
bfc00bb8:	8ca45b70 	lw	a0,23408(a1)
bfc00bbc:	8ca65b70 	lw	a2,23408(a1)
bfc00bc0:	144304e0 	bne	v0,v1,bfc01f44 <inst_error>
bfc00bc4:	00000000 	nop
/home/csy/func/inst/n12_sw.S:20
bfc00bc8:	3c09b022 	lui	t1,0xb022
bfc00bcc:	3529040a 	ori	t1,t1,0x40a
bfc00bd0:	3c08800d 	lui	t0,0x800d
bfc00bd4:	35080800 	ori	t0,t0,0x800
bfc00bd8:	3c03b022 	lui	v1,0xb022
bfc00bdc:	3463040a 	ori	v1,v1,0x40a
bfc00be0:	3c010001 	lui	at,0x1
bfc00be4:	00280821 	addu	at,at,t0
bfc00be8:	ac29aa6c 	sw	t1,-21908(at)
bfc00bec:	25040004 	addiu	a0,t0,4
bfc00bf0:	2505fffc 	addiu	a1,t0,-4
bfc00bf4:	3c010001 	lui	at,0x1
bfc00bf8:	00240821 	addu	at,at,a0
bfc00bfc:	ac24aa6c 	sw	a0,-21908(at)
bfc00c00:	3c010001 	lui	at,0x1
bfc00c04:	00250821 	addu	at,at,a1
bfc00c08:	ac25aa6c 	sw	a1,-21908(at)
bfc00c0c:	3c020001 	lui	v0,0x1
bfc00c10:	00481021 	addu	v0,v0,t0
bfc00c14:	8c42aa6c 	lw	v0,-21908(v0)
bfc00c18:	3c060001 	lui	a2,0x1
bfc00c1c:	00c43021 	addu	a2,a2,a0
bfc00c20:	8cc6aa6c 	lw	a2,-21908(a2)
bfc00c24:	3c040001 	lui	a0,0x1
bfc00c28:	00852021 	addu	a0,a0,a1
bfc00c2c:	8c84aa6c 	lw	a0,-21908(a0)
bfc00c30:	3c060001 	lui	a2,0x1
bfc00c34:	00c53021 	addu	a2,a2,a1
bfc00c38:	8cc6aa6c 	lw	a2,-21908(a2)
bfc00c3c:	144304c1 	bne	v0,v1,bfc01f44 <inst_error>
bfc00c40:	00000000 	nop
/home/csy/func/inst/n12_sw.S:21
bfc00c44:	3c095ca0 	lui	t1,0x5ca0
bfc00c48:	3529fd00 	ori	t1,t1,0xfd00
bfc00c4c:	3c08800d 	lui	t0,0x800d
bfc00c50:	35089834 	ori	t0,t0,0x9834
bfc00c54:	3c035ca0 	lui	v1,0x5ca0
bfc00c58:	3463fd00 	ori	v1,v1,0xfd00
bfc00c5c:	ad095070 	sw	t1,20592(t0)
bfc00c60:	25040004 	addiu	a0,t0,4
bfc00c64:	2505fffc 	addiu	a1,t0,-4
bfc00c68:	ac845070 	sw	a0,20592(a0)
bfc00c6c:	aca55070 	sw	a1,20592(a1)
bfc00c70:	8d025070 	lw	v0,20592(t0)
bfc00c74:	8c865070 	lw	a2,20592(a0)
bfc00c78:	8ca45070 	lw	a0,20592(a1)
bfc00c7c:	8ca65070 	lw	a2,20592(a1)
bfc00c80:	144304b0 	bne	v0,v1,bfc01f44 <inst_error>
bfc00c84:	00000000 	nop
/home/csy/func/inst/n12_sw.S:22
bfc00c88:	3c09063b 	lui	t1,0x63b
bfc00c8c:	3529a000 	ori	t1,t1,0xa000
bfc00c90:	3c08800d 	lui	t0,0x800d
bfc00c94:	35081c64 	ori	t0,t0,0x1c64
bfc00c98:	3c03063b 	lui	v1,0x63b
bfc00c9c:	3463a000 	ori	v1,v1,0xa000
bfc00ca0:	ad0945fc 	sw	t1,17916(t0)
bfc00ca4:	25040004 	addiu	a0,t0,4
bfc00ca8:	2505fffc 	addiu	a1,t0,-4
bfc00cac:	ac8445fc 	sw	a0,17916(a0)
bfc00cb0:	aca545fc 	sw	a1,17916(a1)
bfc00cb4:	8d0245fc 	lw	v0,17916(t0)
bfc00cb8:	8c8645fc 	lw	a2,17916(a0)
bfc00cbc:	8ca445fc 	lw	a0,17916(a1)
bfc00cc0:	8ca645fc 	lw	a2,17916(a1)
bfc00cc4:	1443049f 	bne	v0,v1,bfc01f44 <inst_error>
bfc00cc8:	00000000 	nop
/home/csy/func/inst/n12_sw.S:23
bfc00ccc:	3c09c226 	lui	t1,0xc226
bfc00cd0:	35298cfe 	ori	t1,t1,0x8cfe
bfc00cd4:	3c08800d 	lui	t0,0x800d
bfc00cd8:	350881e8 	ori	t0,t0,0x81e8
bfc00cdc:	3c03c226 	lui	v1,0xc226
bfc00ce0:	34638cfe 	ori	v1,v1,0x8cfe
bfc00ce4:	ad095c54 	sw	t1,23636(t0)
bfc00ce8:	25040004 	addiu	a0,t0,4
bfc00cec:	2505fffc 	addiu	a1,t0,-4
bfc00cf0:	ac845c54 	sw	a0,23636(a0)
bfc00cf4:	aca55c54 	sw	a1,23636(a1)
bfc00cf8:	8d025c54 	lw	v0,23636(t0)
bfc00cfc:	8c865c54 	lw	a2,23636(a0)
bfc00d00:	8ca45c54 	lw	a0,23636(a1)
bfc00d04:	8ca65c54 	lw	a2,23636(a1)
bfc00d08:	1443048e 	bne	v0,v1,bfc01f44 <inst_error>
bfc00d0c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:24
bfc00d10:	3c091611 	lui	t1,0x1611
bfc00d14:	3529444c 	ori	t1,t1,0x444c
bfc00d18:	3c08800d 	lui	t0,0x800d
bfc00d1c:	35080484 	ori	t0,t0,0x484
bfc00d20:	3c031611 	lui	v1,0x1611
bfc00d24:	3463444c 	ori	v1,v1,0x444c
bfc00d28:	3c010001 	lui	at,0x1
bfc00d2c:	00280821 	addu	at,at,t0
bfc00d30:	ac29ec90 	sw	t1,-4976(at)
bfc00d34:	25040004 	addiu	a0,t0,4
bfc00d38:	2505fffc 	addiu	a1,t0,-4
bfc00d3c:	3c010001 	lui	at,0x1
bfc00d40:	00240821 	addu	at,at,a0
bfc00d44:	ac24ec90 	sw	a0,-4976(at)
bfc00d48:	3c010001 	lui	at,0x1
bfc00d4c:	00250821 	addu	at,at,a1
bfc00d50:	ac25ec90 	sw	a1,-4976(at)
bfc00d54:	3c020001 	lui	v0,0x1
bfc00d58:	00481021 	addu	v0,v0,t0
bfc00d5c:	8c42ec90 	lw	v0,-4976(v0)
bfc00d60:	3c060001 	lui	a2,0x1
bfc00d64:	00c43021 	addu	a2,a2,a0
bfc00d68:	8cc6ec90 	lw	a2,-4976(a2)
bfc00d6c:	3c040001 	lui	a0,0x1
bfc00d70:	00852021 	addu	a0,a0,a1
bfc00d74:	8c84ec90 	lw	a0,-4976(a0)
bfc00d78:	3c060001 	lui	a2,0x1
bfc00d7c:	00c53021 	addu	a2,a2,a1
bfc00d80:	8cc6ec90 	lw	a2,-4976(a2)
bfc00d84:	1443046f 	bne	v0,v1,bfc01f44 <inst_error>
bfc00d88:	00000000 	nop
/home/csy/func/inst/n12_sw.S:25
bfc00d8c:	3c0933cc 	lui	t1,0x33cc
bfc00d90:	35296f2a 	ori	t1,t1,0x6f2a
bfc00d94:	3c08800d 	lui	t0,0x800d
bfc00d98:	350871dc 	ori	t0,t0,0x71dc
bfc00d9c:	3c0333cc 	lui	v1,0x33cc
bfc00da0:	34636f2a 	ori	v1,v1,0x6f2a
bfc00da4:	ad092e30 	sw	t1,11824(t0)
bfc00da8:	25040004 	addiu	a0,t0,4
bfc00dac:	2505fffc 	addiu	a1,t0,-4
bfc00db0:	ac842e30 	sw	a0,11824(a0)
bfc00db4:	aca52e30 	sw	a1,11824(a1)
bfc00db8:	8d022e30 	lw	v0,11824(t0)
bfc00dbc:	8c862e30 	lw	a2,11824(a0)
bfc00dc0:	8ca42e30 	lw	a0,11824(a1)
bfc00dc4:	8ca62e30 	lw	a2,11824(a1)
bfc00dc8:	1443045e 	bne	v0,v1,bfc01f44 <inst_error>
bfc00dcc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:26
bfc00dd0:	3c09c2b4 	lui	t1,0xc2b4
bfc00dd4:	35296f21 	ori	t1,t1,0x6f21
bfc00dd8:	3c08800d 	lui	t0,0x800d
bfc00ddc:	35081388 	ori	t0,t0,0x1388
bfc00de0:	3c03c2b4 	lui	v1,0xc2b4
bfc00de4:	34636f21 	ori	v1,v1,0x6f21
bfc00de8:	ad096264 	sw	t1,25188(t0)
bfc00dec:	25040004 	addiu	a0,t0,4
bfc00df0:	2505fffc 	addiu	a1,t0,-4
bfc00df4:	ac846264 	sw	a0,25188(a0)
bfc00df8:	aca56264 	sw	a1,25188(a1)
bfc00dfc:	8d026264 	lw	v0,25188(t0)
bfc00e00:	8c866264 	lw	a2,25188(a0)
bfc00e04:	8ca46264 	lw	a0,25188(a1)
bfc00e08:	8ca66264 	lw	a2,25188(a1)
bfc00e0c:	1443044d 	bne	v0,v1,bfc01f44 <inst_error>
bfc00e10:	00000000 	nop
/home/csy/func/inst/n12_sw.S:27
bfc00e14:	3c0963a8 	lui	t1,0x63a8
bfc00e18:	35296040 	ori	t1,t1,0x6040
bfc00e1c:	3c08800d 	lui	t0,0x800d
bfc00e20:	350802a8 	ori	t0,t0,0x2a8
bfc00e24:	3c0363a8 	lui	v1,0x63a8
bfc00e28:	34636040 	ori	v1,v1,0x6040
bfc00e2c:	3c010001 	lui	at,0x1
bfc00e30:	00280821 	addu	at,at,t0
bfc00e34:	ac29bab0 	sw	t1,-17744(at)
bfc00e38:	25040004 	addiu	a0,t0,4
bfc00e3c:	2505fffc 	addiu	a1,t0,-4
bfc00e40:	3c010001 	lui	at,0x1
bfc00e44:	00240821 	addu	at,at,a0
bfc00e48:	ac24bab0 	sw	a0,-17744(at)
bfc00e4c:	3c010001 	lui	at,0x1
bfc00e50:	00250821 	addu	at,at,a1
bfc00e54:	ac25bab0 	sw	a1,-17744(at)
bfc00e58:	3c020001 	lui	v0,0x1
bfc00e5c:	00481021 	addu	v0,v0,t0
bfc00e60:	8c42bab0 	lw	v0,-17744(v0)
bfc00e64:	3c060001 	lui	a2,0x1
bfc00e68:	00c43021 	addu	a2,a2,a0
bfc00e6c:	8cc6bab0 	lw	a2,-17744(a2)
bfc00e70:	3c040001 	lui	a0,0x1
bfc00e74:	00852021 	addu	a0,a0,a1
bfc00e78:	8c84bab0 	lw	a0,-17744(a0)
bfc00e7c:	3c060001 	lui	a2,0x1
bfc00e80:	00c53021 	addu	a2,a2,a1
bfc00e84:	8cc6bab0 	lw	a2,-17744(a2)
bfc00e88:	1443042e 	bne	v0,v1,bfc01f44 <inst_error>
bfc00e8c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:28
bfc00e90:	3c09e08d 	lui	t1,0xe08d
bfc00e94:	352945d0 	ori	t1,t1,0x45d0
bfc00e98:	3c08800d 	lui	t0,0x800d
bfc00e9c:	35081d14 	ori	t0,t0,0x1d14
bfc00ea0:	3c03e08d 	lui	v1,0xe08d
bfc00ea4:	346345d0 	ori	v1,v1,0x45d0
bfc00ea8:	3c010001 	lui	at,0x1
bfc00eac:	00280821 	addu	at,at,t0
bfc00eb0:	ac29daac 	sw	t1,-9556(at)
bfc00eb4:	25040004 	addiu	a0,t0,4
bfc00eb8:	2505fffc 	addiu	a1,t0,-4
bfc00ebc:	3c010001 	lui	at,0x1
bfc00ec0:	00240821 	addu	at,at,a0
bfc00ec4:	ac24daac 	sw	a0,-9556(at)
bfc00ec8:	3c010001 	lui	at,0x1
bfc00ecc:	00250821 	addu	at,at,a1
bfc00ed0:	ac25daac 	sw	a1,-9556(at)
bfc00ed4:	3c020001 	lui	v0,0x1
bfc00ed8:	00481021 	addu	v0,v0,t0
bfc00edc:	8c42daac 	lw	v0,-9556(v0)
bfc00ee0:	3c060001 	lui	a2,0x1
bfc00ee4:	00c43021 	addu	a2,a2,a0
bfc00ee8:	8cc6daac 	lw	a2,-9556(a2)
bfc00eec:	3c040001 	lui	a0,0x1
bfc00ef0:	00852021 	addu	a0,a0,a1
bfc00ef4:	8c84daac 	lw	a0,-9556(a0)
bfc00ef8:	3c060001 	lui	a2,0x1
bfc00efc:	00c53021 	addu	a2,a2,a1
bfc00f00:	8cc6daac 	lw	a2,-9556(a2)
bfc00f04:	1443040f 	bne	v0,v1,bfc01f44 <inst_error>
bfc00f08:	00000000 	nop
/home/csy/func/inst/n12_sw.S:29
bfc00f0c:	3c09f383 	lui	t1,0xf383
bfc00f10:	35299208 	ori	t1,t1,0x9208
bfc00f14:	3c08800d 	lui	t0,0x800d
bfc00f18:	35085308 	ori	t0,t0,0x5308
bfc00f1c:	3c03f383 	lui	v1,0xf383
bfc00f20:	34639208 	ori	v1,v1,0x9208
bfc00f24:	ad09066c 	sw	t1,1644(t0)
bfc00f28:	25040004 	addiu	a0,t0,4
bfc00f2c:	2505fffc 	addiu	a1,t0,-4
bfc00f30:	ac84066c 	sw	a0,1644(a0)
bfc00f34:	aca5066c 	sw	a1,1644(a1)
bfc00f38:	8d02066c 	lw	v0,1644(t0)
bfc00f3c:	8c86066c 	lw	a2,1644(a0)
bfc00f40:	8ca4066c 	lw	a0,1644(a1)
bfc00f44:	8ca6066c 	lw	a2,1644(a1)
bfc00f48:	144303fe 	bne	v0,v1,bfc01f44 <inst_error>
bfc00f4c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:30
bfc00f50:	3c094268 	lui	t1,0x4268
bfc00f54:	3529fd38 	ori	t1,t1,0xfd38
bfc00f58:	3c08800d 	lui	t0,0x800d
bfc00f5c:	35083f00 	ori	t0,t0,0x3f00
bfc00f60:	3c034268 	lui	v1,0x4268
bfc00f64:	3463fd38 	ori	v1,v1,0xfd38
bfc00f68:	ad0903c0 	sw	t1,960(t0)
bfc00f6c:	25040004 	addiu	a0,t0,4
bfc00f70:	2505fffc 	addiu	a1,t0,-4
bfc00f74:	ac8403c0 	sw	a0,960(a0)
bfc00f78:	aca503c0 	sw	a1,960(a1)
bfc00f7c:	8d0203c0 	lw	v0,960(t0)
bfc00f80:	8c8603c0 	lw	a2,960(a0)
bfc00f84:	8ca403c0 	lw	a0,960(a1)
bfc00f88:	8ca603c0 	lw	a2,960(a1)
bfc00f8c:	144303ed 	bne	v0,v1,bfc01f44 <inst_error>
bfc00f90:	00000000 	nop
/home/csy/func/inst/n12_sw.S:31
bfc00f94:	3c091281 	lui	t1,0x1281
bfc00f98:	35296280 	ori	t1,t1,0x6280
bfc00f9c:	3c08800d 	lui	t0,0x800d
bfc00fa0:	35081b94 	ori	t0,t0,0x1b94
bfc00fa4:	3c031281 	lui	v1,0x1281
bfc00fa8:	34636280 	ori	v1,v1,0x6280
bfc00fac:	3c010001 	lui	at,0x1
bfc00fb0:	00280821 	addu	at,at,t0
bfc00fb4:	ac298aa0 	sw	t1,-30048(at)
bfc00fb8:	25040004 	addiu	a0,t0,4
bfc00fbc:	2505fffc 	addiu	a1,t0,-4
bfc00fc0:	3c010001 	lui	at,0x1
bfc00fc4:	00240821 	addu	at,at,a0
bfc00fc8:	ac248aa0 	sw	a0,-30048(at)
bfc00fcc:	3c010001 	lui	at,0x1
bfc00fd0:	00250821 	addu	at,at,a1
bfc00fd4:	ac258aa0 	sw	a1,-30048(at)
bfc00fd8:	3c020001 	lui	v0,0x1
bfc00fdc:	00481021 	addu	v0,v0,t0
bfc00fe0:	8c428aa0 	lw	v0,-30048(v0)
bfc00fe4:	3c060001 	lui	a2,0x1
bfc00fe8:	00c43021 	addu	a2,a2,a0
bfc00fec:	8cc68aa0 	lw	a2,-30048(a2)
bfc00ff0:	3c040001 	lui	a0,0x1
bfc00ff4:	00852021 	addu	a0,a0,a1
bfc00ff8:	8c848aa0 	lw	a0,-30048(a0)
bfc00ffc:	3c060001 	lui	a2,0x1
bfc01000:	00c53021 	addu	a2,a2,a1
bfc01004:	8cc68aa0 	lw	a2,-30048(a2)
bfc01008:	144303ce 	bne	v0,v1,bfc01f44 <inst_error>
bfc0100c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:32
bfc01010:	3c095404 	lui	t1,0x5404
bfc01014:	3529b496 	ori	t1,t1,0xb496
bfc01018:	3c08800d 	lui	t0,0x800d
bfc0101c:	35081698 	ori	t0,t0,0x1698
bfc01020:	3c035404 	lui	v1,0x5404
bfc01024:	3463b496 	ori	v1,v1,0xb496
bfc01028:	3c010001 	lui	at,0x1
bfc0102c:	00280821 	addu	at,at,t0
bfc01030:	ac29e188 	sw	t1,-7800(at)
bfc01034:	25040004 	addiu	a0,t0,4
bfc01038:	2505fffc 	addiu	a1,t0,-4
bfc0103c:	3c010001 	lui	at,0x1
bfc01040:	00240821 	addu	at,at,a0
bfc01044:	ac24e188 	sw	a0,-7800(at)
bfc01048:	3c010001 	lui	at,0x1
bfc0104c:	00250821 	addu	at,at,a1
bfc01050:	ac25e188 	sw	a1,-7800(at)
bfc01054:	3c020001 	lui	v0,0x1
bfc01058:	00481021 	addu	v0,v0,t0
bfc0105c:	8c42e188 	lw	v0,-7800(v0)
bfc01060:	3c060001 	lui	a2,0x1
bfc01064:	00c43021 	addu	a2,a2,a0
bfc01068:	8cc6e188 	lw	a2,-7800(a2)
bfc0106c:	3c040001 	lui	a0,0x1
bfc01070:	00852021 	addu	a0,a0,a1
bfc01074:	8c84e188 	lw	a0,-7800(a0)
bfc01078:	3c060001 	lui	a2,0x1
bfc0107c:	00c53021 	addu	a2,a2,a1
bfc01080:	8cc6e188 	lw	a2,-7800(a2)
bfc01084:	144303af 	bne	v0,v1,bfc01f44 <inst_error>
bfc01088:	00000000 	nop
/home/csy/func/inst/n12_sw.S:33
bfc0108c:	3c09f11c 	lui	t1,0xf11c
bfc01090:	35291c02 	ori	t1,t1,0x1c02
bfc01094:	3c08800d 	lui	t0,0x800d
bfc01098:	35081de0 	ori	t0,t0,0x1de0
bfc0109c:	3c03f11c 	lui	v1,0xf11c
bfc010a0:	34631c02 	ori	v1,v1,0x1c02
bfc010a4:	3c010001 	lui	at,0x1
bfc010a8:	00280821 	addu	at,at,t0
bfc010ac:	ac29b4c8 	sw	t1,-19256(at)
bfc010b0:	25040004 	addiu	a0,t0,4
bfc010b4:	2505fffc 	addiu	a1,t0,-4
bfc010b8:	3c010001 	lui	at,0x1
bfc010bc:	00240821 	addu	at,at,a0
bfc010c0:	ac24b4c8 	sw	a0,-19256(at)
bfc010c4:	3c010001 	lui	at,0x1
bfc010c8:	00250821 	addu	at,at,a1
bfc010cc:	ac25b4c8 	sw	a1,-19256(at)
bfc010d0:	3c020001 	lui	v0,0x1
bfc010d4:	00481021 	addu	v0,v0,t0
bfc010d8:	8c42b4c8 	lw	v0,-19256(v0)
bfc010dc:	3c060001 	lui	a2,0x1
bfc010e0:	00c43021 	addu	a2,a2,a0
bfc010e4:	8cc6b4c8 	lw	a2,-19256(a2)
bfc010e8:	3c040001 	lui	a0,0x1
bfc010ec:	00852021 	addu	a0,a0,a1
bfc010f0:	8c84b4c8 	lw	a0,-19256(a0)
bfc010f4:	3c060001 	lui	a2,0x1
bfc010f8:	00c53021 	addu	a2,a2,a1
bfc010fc:	8cc6b4c8 	lw	a2,-19256(a2)
bfc01100:	14430390 	bne	v0,v1,bfc01f44 <inst_error>
bfc01104:	00000000 	nop
/home/csy/func/inst/n12_sw.S:34
bfc01108:	3c093109 	lui	t1,0x3109
bfc0110c:	35290da2 	ori	t1,t1,0xda2
bfc01110:	3c08800d 	lui	t0,0x800d
bfc01114:	35089400 	ori	t0,t0,0x9400
bfc01118:	3c033109 	lui	v1,0x3109
bfc0111c:	34630da2 	ori	v1,v1,0xda2
bfc01120:	ad091150 	sw	t1,4432(t0)
bfc01124:	25040004 	addiu	a0,t0,4
bfc01128:	2505fffc 	addiu	a1,t0,-4
bfc0112c:	ac841150 	sw	a0,4432(a0)
bfc01130:	aca51150 	sw	a1,4432(a1)
bfc01134:	8d021150 	lw	v0,4432(t0)
bfc01138:	8c861150 	lw	a2,4432(a0)
bfc0113c:	8ca41150 	lw	a0,4432(a1)
bfc01140:	8ca61150 	lw	a2,4432(a1)
bfc01144:	1443037f 	bne	v0,v1,bfc01f44 <inst_error>
bfc01148:	00000000 	nop
/home/csy/func/inst/n12_sw.S:35
bfc0114c:	3c099480 	lui	t1,0x9480
bfc01150:	35299b50 	ori	t1,t1,0x9b50
bfc01154:	3c08800d 	lui	t0,0x800d
bfc01158:	350827c8 	ori	t0,t0,0x27c8
bfc0115c:	3c039480 	lui	v1,0x9480
bfc01160:	34639b50 	ori	v1,v1,0x9b50
bfc01164:	ad0924c0 	sw	t1,9408(t0)
bfc01168:	25040004 	addiu	a0,t0,4
bfc0116c:	2505fffc 	addiu	a1,t0,-4
bfc01170:	ac8424c0 	sw	a0,9408(a0)
bfc01174:	aca524c0 	sw	a1,9408(a1)
bfc01178:	8d0224c0 	lw	v0,9408(t0)
bfc0117c:	8c8624c0 	lw	a2,9408(a0)
bfc01180:	8ca424c0 	lw	a0,9408(a1)
bfc01184:	8ca624c0 	lw	a2,9408(a1)
bfc01188:	1443036e 	bne	v0,v1,bfc01f44 <inst_error>
bfc0118c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:36
bfc01190:	3c09ff1e 	lui	t1,0xff1e
bfc01194:	3529d37c 	ori	t1,t1,0xd37c
bfc01198:	3c08800d 	lui	t0,0x800d
bfc0119c:	35081488 	ori	t0,t0,0x1488
bfc011a0:	3c03ff1e 	lui	v1,0xff1e
bfc011a4:	3463d37c 	ori	v1,v1,0xd37c
bfc011a8:	3c010001 	lui	at,0x1
bfc011ac:	00280821 	addu	at,at,t0
bfc011b0:	ac29d664 	sw	t1,-10652(at)
bfc011b4:	25040004 	addiu	a0,t0,4
bfc011b8:	2505fffc 	addiu	a1,t0,-4
bfc011bc:	3c010001 	lui	at,0x1
bfc011c0:	00240821 	addu	at,at,a0
bfc011c4:	ac24d664 	sw	a0,-10652(at)
bfc011c8:	3c010001 	lui	at,0x1
bfc011cc:	00250821 	addu	at,at,a1
bfc011d0:	ac25d664 	sw	a1,-10652(at)
bfc011d4:	3c020001 	lui	v0,0x1
bfc011d8:	00481021 	addu	v0,v0,t0
bfc011dc:	8c42d664 	lw	v0,-10652(v0)
bfc011e0:	3c060001 	lui	a2,0x1
bfc011e4:	00c43021 	addu	a2,a2,a0
bfc011e8:	8cc6d664 	lw	a2,-10652(a2)
bfc011ec:	3c040001 	lui	a0,0x1
bfc011f0:	00852021 	addu	a0,a0,a1
bfc011f4:	8c84d664 	lw	a0,-10652(a0)
bfc011f8:	3c060001 	lui	a2,0x1
bfc011fc:	00c53021 	addu	a2,a2,a1
bfc01200:	8cc6d664 	lw	a2,-10652(a2)
bfc01204:	1443034f 	bne	v0,v1,bfc01f44 <inst_error>
bfc01208:	00000000 	nop
/home/csy/func/inst/n12_sw.S:37
bfc0120c:	3c095e23 	lui	t1,0x5e23
bfc01210:	3529d200 	ori	t1,t1,0xd200
bfc01214:	3c08800d 	lui	t0,0x800d
bfc01218:	3508a074 	ori	t0,t0,0xa074
bfc0121c:	3c035e23 	lui	v1,0x5e23
bfc01220:	3463d200 	ori	v1,v1,0xd200
bfc01224:	ad092558 	sw	t1,9560(t0)
bfc01228:	25040004 	addiu	a0,t0,4
bfc0122c:	2505fffc 	addiu	a1,t0,-4
bfc01230:	ac842558 	sw	a0,9560(a0)
bfc01234:	aca52558 	sw	a1,9560(a1)
bfc01238:	8d022558 	lw	v0,9560(t0)
bfc0123c:	8c862558 	lw	a2,9560(a0)
bfc01240:	8ca42558 	lw	a0,9560(a1)
bfc01244:	8ca62558 	lw	a2,9560(a1)
bfc01248:	1443033e 	bne	v0,v1,bfc01f44 <inst_error>
bfc0124c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:38
bfc01250:	3c096883 	lui	t1,0x6883
bfc01254:	35291248 	ori	t1,t1,0x1248
bfc01258:	3c08800d 	lui	t0,0x800d
bfc0125c:	350863ec 	ori	t0,t0,0x63ec
bfc01260:	3c036883 	lui	v1,0x6883
bfc01264:	34631248 	ori	v1,v1,0x1248
bfc01268:	ad095f40 	sw	t1,24384(t0)
bfc0126c:	25040004 	addiu	a0,t0,4
bfc01270:	2505fffc 	addiu	a1,t0,-4
bfc01274:	ac845f40 	sw	a0,24384(a0)
bfc01278:	aca55f40 	sw	a1,24384(a1)
bfc0127c:	8d025f40 	lw	v0,24384(t0)
bfc01280:	8c865f40 	lw	a2,24384(a0)
bfc01284:	8ca45f40 	lw	a0,24384(a1)
bfc01288:	8ca65f40 	lw	a2,24384(a1)
bfc0128c:	1443032d 	bne	v0,v1,bfc01f44 <inst_error>
bfc01290:	00000000 	nop
/home/csy/func/inst/n12_sw.S:39
bfc01294:	3c094558 	lui	t1,0x4558
bfc01298:	3529e910 	ori	t1,t1,0xe910
bfc0129c:	3c08800d 	lui	t0,0x800d
bfc012a0:	35080cc0 	ori	t0,t0,0xcc0
bfc012a4:	3c034558 	lui	v1,0x4558
bfc012a8:	3463e910 	ori	v1,v1,0xe910
bfc012ac:	ad093d8c 	sw	t1,15756(t0)
bfc012b0:	25040004 	addiu	a0,t0,4
bfc012b4:	2505fffc 	addiu	a1,t0,-4
bfc012b8:	ac843d8c 	sw	a0,15756(a0)
bfc012bc:	aca53d8c 	sw	a1,15756(a1)
bfc012c0:	8d023d8c 	lw	v0,15756(t0)
bfc012c4:	8c863d8c 	lw	a2,15756(a0)
bfc012c8:	8ca43d8c 	lw	a0,15756(a1)
bfc012cc:	8ca63d8c 	lw	a2,15756(a1)
bfc012d0:	1443031c 	bne	v0,v1,bfc01f44 <inst_error>
bfc012d4:	00000000 	nop
/home/csy/func/inst/n12_sw.S:40
bfc012d8:	3c09c983 	lui	t1,0xc983
bfc012dc:	352927b0 	ori	t1,t1,0x27b0
bfc012e0:	3c08800d 	lui	t0,0x800d
bfc012e4:	350804e0 	ori	t0,t0,0x4e0
bfc012e8:	3c03c983 	lui	v1,0xc983
bfc012ec:	346327b0 	ori	v1,v1,0x27b0
bfc012f0:	3c010001 	lui	at,0x1
bfc012f4:	00280821 	addu	at,at,t0
bfc012f8:	ac29a808 	sw	t1,-22520(at)
bfc012fc:	25040004 	addiu	a0,t0,4
bfc01300:	2505fffc 	addiu	a1,t0,-4
bfc01304:	3c010001 	lui	at,0x1
bfc01308:	00240821 	addu	at,at,a0
bfc0130c:	ac24a808 	sw	a0,-22520(at)
bfc01310:	3c010001 	lui	at,0x1
bfc01314:	00250821 	addu	at,at,a1
bfc01318:	ac25a808 	sw	a1,-22520(at)
bfc0131c:	3c020001 	lui	v0,0x1
bfc01320:	00481021 	addu	v0,v0,t0
bfc01324:	8c42a808 	lw	v0,-22520(v0)
bfc01328:	3c060001 	lui	a2,0x1
bfc0132c:	00c43021 	addu	a2,a2,a0
bfc01330:	8cc6a808 	lw	a2,-22520(a2)
bfc01334:	3c040001 	lui	a0,0x1
bfc01338:	00852021 	addu	a0,a0,a1
bfc0133c:	8c84a808 	lw	a0,-22520(a0)
bfc01340:	3c060001 	lui	a2,0x1
bfc01344:	00c53021 	addu	a2,a2,a1
bfc01348:	8cc6a808 	lw	a2,-22520(a2)
bfc0134c:	144302fd 	bne	v0,v1,bfc01f44 <inst_error>
bfc01350:	00000000 	nop
/home/csy/func/inst/n12_sw.S:41
bfc01354:	3c09fea2 	lui	t1,0xfea2
bfc01358:	3529f1ad 	ori	t1,t1,0xf1ad
bfc0135c:	3c08800d 	lui	t0,0x800d
bfc01360:	35081b68 	ori	t0,t0,0x1b68
bfc01364:	3c03fea2 	lui	v1,0xfea2
bfc01368:	3463f1ad 	ori	v1,v1,0xf1ad
bfc0136c:	3c010001 	lui	at,0x1
bfc01370:	00280821 	addu	at,at,t0
bfc01374:	ac29adec 	sw	t1,-21012(at)
bfc01378:	25040004 	addiu	a0,t0,4
bfc0137c:	2505fffc 	addiu	a1,t0,-4
bfc01380:	3c010001 	lui	at,0x1
bfc01384:	00240821 	addu	at,at,a0
bfc01388:	ac24adec 	sw	a0,-21012(at)
bfc0138c:	3c010001 	lui	at,0x1
bfc01390:	00250821 	addu	at,at,a1
bfc01394:	ac25adec 	sw	a1,-21012(at)
bfc01398:	3c020001 	lui	v0,0x1
bfc0139c:	00481021 	addu	v0,v0,t0
bfc013a0:	8c42adec 	lw	v0,-21012(v0)
bfc013a4:	3c060001 	lui	a2,0x1
bfc013a8:	00c43021 	addu	a2,a2,a0
bfc013ac:	8cc6adec 	lw	a2,-21012(a2)
bfc013b0:	3c040001 	lui	a0,0x1
bfc013b4:	00852021 	addu	a0,a0,a1
bfc013b8:	8c84adec 	lw	a0,-21012(a0)
bfc013bc:	3c060001 	lui	a2,0x1
bfc013c0:	00c53021 	addu	a2,a2,a1
bfc013c4:	8cc6adec 	lw	a2,-21012(a2)
bfc013c8:	144302de 	bne	v0,v1,bfc01f44 <inst_error>
bfc013cc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:42
bfc013d0:	3c09ac52 	lui	t1,0xac52
bfc013d4:	3529b354 	ori	t1,t1,0xb354
bfc013d8:	3c08800d 	lui	t0,0x800d
bfc013dc:	3c03ac52 	lui	v1,0xac52
bfc013e0:	3463b354 	ori	v1,v1,0xb354
bfc013e4:	3c010001 	lui	at,0x1
bfc013e8:	00280821 	addu	at,at,t0
bfc013ec:	ac29c3dc 	sw	t1,-15396(at)
bfc013f0:	25040004 	addiu	a0,t0,4
bfc013f4:	2505fffc 	addiu	a1,t0,-4
bfc013f8:	3c010001 	lui	at,0x1
bfc013fc:	00240821 	addu	at,at,a0
bfc01400:	ac24c3dc 	sw	a0,-15396(at)
bfc01404:	3c010001 	lui	at,0x1
bfc01408:	00250821 	addu	at,at,a1
bfc0140c:	ac25c3dc 	sw	a1,-15396(at)
bfc01410:	3c020001 	lui	v0,0x1
bfc01414:	00481021 	addu	v0,v0,t0
bfc01418:	8c42c3dc 	lw	v0,-15396(v0)
bfc0141c:	3c060001 	lui	a2,0x1
bfc01420:	00c43021 	addu	a2,a2,a0
bfc01424:	8cc6c3dc 	lw	a2,-15396(a2)
bfc01428:	3c040001 	lui	a0,0x1
bfc0142c:	00852021 	addu	a0,a0,a1
bfc01430:	8c84c3dc 	lw	a0,-15396(a0)
bfc01434:	3c060001 	lui	a2,0x1
bfc01438:	00c53021 	addu	a2,a2,a1
bfc0143c:	8cc6c3dc 	lw	a2,-15396(a2)
bfc01440:	144302c0 	bne	v0,v1,bfc01f44 <inst_error>
bfc01444:	00000000 	nop
/home/csy/func/inst/n12_sw.S:43
bfc01448:	3c094f61 	lui	t1,0x4f61
bfc0144c:	35292db4 	ori	t1,t1,0x2db4
bfc01450:	3c08800d 	lui	t0,0x800d
bfc01454:	3c034f61 	lui	v1,0x4f61
bfc01458:	34632db4 	ori	v1,v1,0x2db4
bfc0145c:	ad094a74 	sw	t1,19060(t0)
bfc01460:	25040004 	addiu	a0,t0,4
bfc01464:	2505fffc 	addiu	a1,t0,-4
bfc01468:	ac844a74 	sw	a0,19060(a0)
bfc0146c:	aca54a74 	sw	a1,19060(a1)
bfc01470:	8d024a74 	lw	v0,19060(t0)
bfc01474:	8c864a74 	lw	a2,19060(a0)
bfc01478:	8ca44a74 	lw	a0,19060(a1)
bfc0147c:	8ca64a74 	lw	a2,19060(a1)
bfc01480:	144302b0 	bne	v0,v1,bfc01f44 <inst_error>
bfc01484:	00000000 	nop
/home/csy/func/inst/n12_sw.S:44
bfc01488:	3c0981e4 	lui	t1,0x81e4
bfc0148c:	3529a52c 	ori	t1,t1,0xa52c
bfc01490:	3c08800d 	lui	t0,0x800d
bfc01494:	3c0381e4 	lui	v1,0x81e4
bfc01498:	3463a52c 	ori	v1,v1,0xa52c
bfc0149c:	ad093370 	sw	t1,13168(t0)
bfc014a0:	25040004 	addiu	a0,t0,4
bfc014a4:	2505fffc 	addiu	a1,t0,-4
bfc014a8:	ac843370 	sw	a0,13168(a0)
bfc014ac:	aca53370 	sw	a1,13168(a1)
bfc014b0:	8d023370 	lw	v0,13168(t0)
bfc014b4:	8c863370 	lw	a2,13168(a0)
bfc014b8:	8ca43370 	lw	a0,13168(a1)
bfc014bc:	8ca63370 	lw	a2,13168(a1)
bfc014c0:	144302a0 	bne	v0,v1,bfc01f44 <inst_error>
bfc014c4:	00000000 	nop
/home/csy/func/inst/n12_sw.S:45
bfc014c8:	3c096b61 	lui	t1,0x6b61
bfc014cc:	35295254 	ori	t1,t1,0x5254
bfc014d0:	3c08800d 	lui	t0,0x800d
bfc014d4:	3c036b61 	lui	v1,0x6b61
bfc014d8:	34635254 	ori	v1,v1,0x5254
bfc014dc:	ad09729c 	sw	t1,29340(t0)
bfc014e0:	25040004 	addiu	a0,t0,4
bfc014e4:	2505fffc 	addiu	a1,t0,-4
bfc014e8:	ac84729c 	sw	a0,29340(a0)
bfc014ec:	aca5729c 	sw	a1,29340(a1)
bfc014f0:	8d02729c 	lw	v0,29340(t0)
bfc014f4:	8c86729c 	lw	a2,29340(a0)
bfc014f8:	8ca4729c 	lw	a0,29340(a1)
bfc014fc:	8ca6729c 	lw	a2,29340(a1)
bfc01500:	14430290 	bne	v0,v1,bfc01f44 <inst_error>
bfc01504:	00000000 	nop
/home/csy/func/inst/n12_sw.S:46
bfc01508:	3c092447 	lui	t1,0x2447
bfc0150c:	3529d85d 	ori	t1,t1,0xd85d
bfc01510:	3c08800d 	lui	t0,0x800d
bfc01514:	3c032447 	lui	v1,0x2447
bfc01518:	3463d85d 	ori	v1,v1,0xd85d
bfc0151c:	ad097490 	sw	t1,29840(t0)
bfc01520:	25040004 	addiu	a0,t0,4
bfc01524:	2505fffc 	addiu	a1,t0,-4
bfc01528:	ac847490 	sw	a0,29840(a0)
bfc0152c:	aca57490 	sw	a1,29840(a1)
bfc01530:	8d027490 	lw	v0,29840(t0)
bfc01534:	8c867490 	lw	a2,29840(a0)
bfc01538:	8ca47490 	lw	a0,29840(a1)
bfc0153c:	8ca67490 	lw	a2,29840(a1)
bfc01540:	14430280 	bne	v0,v1,bfc01f44 <inst_error>
bfc01544:	00000000 	nop
/home/csy/func/inst/n12_sw.S:47
bfc01548:	3c098dde 	lui	t1,0x8dde
bfc0154c:	35291c20 	ori	t1,t1,0x1c20
bfc01550:	3c08800d 	lui	t0,0x800d
bfc01554:	3c038dde 	lui	v1,0x8dde
bfc01558:	34631c20 	ori	v1,v1,0x1c20
bfc0155c:	ad09307c 	sw	t1,12412(t0)
bfc01560:	25040004 	addiu	a0,t0,4
bfc01564:	2505fffc 	addiu	a1,t0,-4
bfc01568:	ac84307c 	sw	a0,12412(a0)
bfc0156c:	aca5307c 	sw	a1,12412(a1)
bfc01570:	8d02307c 	lw	v0,12412(t0)
bfc01574:	8c86307c 	lw	a2,12412(a0)
bfc01578:	8ca4307c 	lw	a0,12412(a1)
bfc0157c:	8ca6307c 	lw	a2,12412(a1)
bfc01580:	14430270 	bne	v0,v1,bfc01f44 <inst_error>
bfc01584:	00000000 	nop
/home/csy/func/inst/n12_sw.S:48
bfc01588:	3c09cf30 	lui	t1,0xcf30
bfc0158c:	35294a09 	ori	t1,t1,0x4a09
bfc01590:	3c08800d 	lui	t0,0x800d
bfc01594:	3c03cf30 	lui	v1,0xcf30
bfc01598:	34634a09 	ori	v1,v1,0x4a09
bfc0159c:	3c010001 	lui	at,0x1
bfc015a0:	00280821 	addu	at,at,t0
bfc015a4:	ac29fba0 	sw	t1,-1120(at)
bfc015a8:	25040004 	addiu	a0,t0,4
bfc015ac:	2505fffc 	addiu	a1,t0,-4
bfc015b0:	3c010001 	lui	at,0x1
bfc015b4:	00240821 	addu	at,at,a0
bfc015b8:	ac24fba0 	sw	a0,-1120(at)
bfc015bc:	3c010001 	lui	at,0x1
bfc015c0:	00250821 	addu	at,at,a1
bfc015c4:	ac25fba0 	sw	a1,-1120(at)
bfc015c8:	3c020001 	lui	v0,0x1
bfc015cc:	00481021 	addu	v0,v0,t0
bfc015d0:	8c42fba0 	lw	v0,-1120(v0)
bfc015d4:	3c060001 	lui	a2,0x1
bfc015d8:	00c43021 	addu	a2,a2,a0
bfc015dc:	8cc6fba0 	lw	a2,-1120(a2)
bfc015e0:	3c040001 	lui	a0,0x1
bfc015e4:	00852021 	addu	a0,a0,a1
bfc015e8:	8c84fba0 	lw	a0,-1120(a0)
bfc015ec:	3c060001 	lui	a2,0x1
bfc015f0:	00c53021 	addu	a2,a2,a1
bfc015f4:	8cc6fba0 	lw	a2,-1120(a2)
bfc015f8:	14430252 	bne	v0,v1,bfc01f44 <inst_error>
bfc015fc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:49
bfc01600:	3c09431f 	lui	t1,0x431f
bfc01604:	352945e2 	ori	t1,t1,0x45e2
bfc01608:	3c08800d 	lui	t0,0x800d
bfc0160c:	3c03431f 	lui	v1,0x431f
bfc01610:	346345e2 	ori	v1,v1,0x45e2
bfc01614:	3c010001 	lui	at,0x1
bfc01618:	00280821 	addu	at,at,t0
bfc0161c:	ac29ca58 	sw	t1,-13736(at)
bfc01620:	25040004 	addiu	a0,t0,4
bfc01624:	2505fffc 	addiu	a1,t0,-4
bfc01628:	3c010001 	lui	at,0x1
bfc0162c:	00240821 	addu	at,at,a0
bfc01630:	ac24ca58 	sw	a0,-13736(at)
bfc01634:	3c010001 	lui	at,0x1
bfc01638:	00250821 	addu	at,at,a1
bfc0163c:	ac25ca58 	sw	a1,-13736(at)
bfc01640:	3c020001 	lui	v0,0x1
bfc01644:	00481021 	addu	v0,v0,t0
bfc01648:	8c42ca58 	lw	v0,-13736(v0)
bfc0164c:	3c060001 	lui	a2,0x1
bfc01650:	00c43021 	addu	a2,a2,a0
bfc01654:	8cc6ca58 	lw	a2,-13736(a2)
bfc01658:	3c040001 	lui	a0,0x1
bfc0165c:	00852021 	addu	a0,a0,a1
bfc01660:	8c84ca58 	lw	a0,-13736(a0)
bfc01664:	3c060001 	lui	a2,0x1
bfc01668:	00c53021 	addu	a2,a2,a1
bfc0166c:	8cc6ca58 	lw	a2,-13736(a2)
bfc01670:	14430234 	bne	v0,v1,bfc01f44 <inst_error>
bfc01674:	00000000 	nop
/home/csy/func/inst/n12_sw.S:50
bfc01678:	3c0999db 	lui	t1,0x99db
bfc0167c:	35299a50 	ori	t1,t1,0x9a50
bfc01680:	3c08800d 	lui	t0,0x800d
bfc01684:	3c0399db 	lui	v1,0x99db
bfc01688:	34639a50 	ori	v1,v1,0x9a50
bfc0168c:	ad093248 	sw	t1,12872(t0)
bfc01690:	25040004 	addiu	a0,t0,4
bfc01694:	2505fffc 	addiu	a1,t0,-4
bfc01698:	ac843248 	sw	a0,12872(a0)
bfc0169c:	aca53248 	sw	a1,12872(a1)
bfc016a0:	8d023248 	lw	v0,12872(t0)
bfc016a4:	8c863248 	lw	a2,12872(a0)
bfc016a8:	8ca43248 	lw	a0,12872(a1)
bfc016ac:	8ca63248 	lw	a2,12872(a1)
bfc016b0:	14430224 	bne	v0,v1,bfc01f44 <inst_error>
bfc016b4:	00000000 	nop
/home/csy/func/inst/n12_sw.S:51
bfc016b8:	3c09e73f 	lui	t1,0xe73f
bfc016bc:	35290fdc 	ori	t1,t1,0xfdc
bfc016c0:	3c08800d 	lui	t0,0x800d
bfc016c4:	3c03e73f 	lui	v1,0xe73f
bfc016c8:	34630fdc 	ori	v1,v1,0xfdc
bfc016cc:	3c010001 	lui	at,0x1
bfc016d0:	00280821 	addu	at,at,t0
bfc016d4:	ac298718 	sw	t1,-30952(at)
bfc016d8:	25040004 	addiu	a0,t0,4
bfc016dc:	2505fffc 	addiu	a1,t0,-4
bfc016e0:	3c010001 	lui	at,0x1
bfc016e4:	00240821 	addu	at,at,a0
bfc016e8:	ac248718 	sw	a0,-30952(at)
bfc016ec:	3c010001 	lui	at,0x1
bfc016f0:	00250821 	addu	at,at,a1
bfc016f4:	ac258718 	sw	a1,-30952(at)
bfc016f8:	3c020001 	lui	v0,0x1
bfc016fc:	00481021 	addu	v0,v0,t0
bfc01700:	8c428718 	lw	v0,-30952(v0)
bfc01704:	3c060001 	lui	a2,0x1
bfc01708:	00c43021 	addu	a2,a2,a0
bfc0170c:	8cc68718 	lw	a2,-30952(a2)
bfc01710:	3c040001 	lui	a0,0x1
bfc01714:	00852021 	addu	a0,a0,a1
bfc01718:	8c848718 	lw	a0,-30952(a0)
bfc0171c:	3c060001 	lui	a2,0x1
bfc01720:	00c53021 	addu	a2,a2,a1
bfc01724:	8cc68718 	lw	a2,-30952(a2)
bfc01728:	14430206 	bne	v0,v1,bfc01f44 <inst_error>
bfc0172c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:52
bfc01730:	3c09450b 	lui	t1,0x450b
bfc01734:	3529bdc0 	ori	t1,t1,0xbdc0
bfc01738:	3c08800d 	lui	t0,0x800d
bfc0173c:	3c03450b 	lui	v1,0x450b
bfc01740:	3463bdc0 	ori	v1,v1,0xbdc0
bfc01744:	ad095128 	sw	t1,20776(t0)
bfc01748:	25040004 	addiu	a0,t0,4
bfc0174c:	2505fffc 	addiu	a1,t0,-4
bfc01750:	ac845128 	sw	a0,20776(a0)
bfc01754:	aca55128 	sw	a1,20776(a1)
bfc01758:	8d025128 	lw	v0,20776(t0)
bfc0175c:	8c865128 	lw	a2,20776(a0)
bfc01760:	8ca45128 	lw	a0,20776(a1)
bfc01764:	8ca65128 	lw	a2,20776(a1)
bfc01768:	144301f6 	bne	v0,v1,bfc01f44 <inst_error>
bfc0176c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:53
bfc01770:	3c09c0c7 	lui	t1,0xc0c7
bfc01774:	3529c830 	ori	t1,t1,0xc830
bfc01778:	3c08800d 	lui	t0,0x800d
bfc0177c:	3c03c0c7 	lui	v1,0xc0c7
bfc01780:	3463c830 	ori	v1,v1,0xc830
bfc01784:	3c010001 	lui	at,0x1
bfc01788:	00280821 	addu	at,at,t0
bfc0178c:	ac298980 	sw	t1,-30336(at)
bfc01790:	25040004 	addiu	a0,t0,4
bfc01794:	2505fffc 	addiu	a1,t0,-4
bfc01798:	3c010001 	lui	at,0x1
bfc0179c:	00240821 	addu	at,at,a0
bfc017a0:	ac248980 	sw	a0,-30336(at)
bfc017a4:	3c010001 	lui	at,0x1
bfc017a8:	00250821 	addu	at,at,a1
bfc017ac:	ac258980 	sw	a1,-30336(at)
bfc017b0:	3c020001 	lui	v0,0x1
bfc017b4:	00481021 	addu	v0,v0,t0
bfc017b8:	8c428980 	lw	v0,-30336(v0)
bfc017bc:	3c060001 	lui	a2,0x1
bfc017c0:	00c43021 	addu	a2,a2,a0
bfc017c4:	8cc68980 	lw	a2,-30336(a2)
bfc017c8:	3c040001 	lui	a0,0x1
bfc017cc:	00852021 	addu	a0,a0,a1
bfc017d0:	8c848980 	lw	a0,-30336(a0)
bfc017d4:	3c060001 	lui	a2,0x1
bfc017d8:	00c53021 	addu	a2,a2,a1
bfc017dc:	8cc68980 	lw	a2,-30336(a2)
bfc017e0:	144301d8 	bne	v0,v1,bfc01f44 <inst_error>
bfc017e4:	00000000 	nop
/home/csy/func/inst/n12_sw.S:54
bfc017e8:	3c098006 	lui	t1,0x8006
bfc017ec:	3529ca23 	ori	t1,t1,0xca23
bfc017f0:	3c08800d 	lui	t0,0x800d
bfc017f4:	3c038006 	lui	v1,0x8006
bfc017f8:	3463ca23 	ori	v1,v1,0xca23
bfc017fc:	ad095430 	sw	t1,21552(t0)
bfc01800:	25040004 	addiu	a0,t0,4
bfc01804:	2505fffc 	addiu	a1,t0,-4
bfc01808:	ac845430 	sw	a0,21552(a0)
bfc0180c:	aca55430 	sw	a1,21552(a1)
bfc01810:	8d025430 	lw	v0,21552(t0)
bfc01814:	8c865430 	lw	a2,21552(a0)
bfc01818:	8ca45430 	lw	a0,21552(a1)
bfc0181c:	8ca65430 	lw	a2,21552(a1)
bfc01820:	144301c8 	bne	v0,v1,bfc01f44 <inst_error>
bfc01824:	00000000 	nop
/home/csy/func/inst/n12_sw.S:55
bfc01828:	3c094004 	lui	t1,0x4004
bfc0182c:	35297d98 	ori	t1,t1,0x7d98
bfc01830:	3c08800d 	lui	t0,0x800d
bfc01834:	3c034004 	lui	v1,0x4004
bfc01838:	34637d98 	ori	v1,v1,0x7d98
bfc0183c:	3c010001 	lui	at,0x1
bfc01840:	00280821 	addu	at,at,t0
bfc01844:	ac29a5e8 	sw	t1,-23064(at)
bfc01848:	25040004 	addiu	a0,t0,4
bfc0184c:	2505fffc 	addiu	a1,t0,-4
bfc01850:	3c010001 	lui	at,0x1
bfc01854:	00240821 	addu	at,at,a0
bfc01858:	ac24a5e8 	sw	a0,-23064(at)
bfc0185c:	3c010001 	lui	at,0x1
bfc01860:	00250821 	addu	at,at,a1
bfc01864:	ac25a5e8 	sw	a1,-23064(at)
bfc01868:	3c020001 	lui	v0,0x1
bfc0186c:	00481021 	addu	v0,v0,t0
bfc01870:	8c42a5e8 	lw	v0,-23064(v0)
bfc01874:	3c060001 	lui	a2,0x1
bfc01878:	00c43021 	addu	a2,a2,a0
bfc0187c:	8cc6a5e8 	lw	a2,-23064(a2)
bfc01880:	3c040001 	lui	a0,0x1
bfc01884:	00852021 	addu	a0,a0,a1
bfc01888:	8c84a5e8 	lw	a0,-23064(a0)
bfc0188c:	3c060001 	lui	a2,0x1
bfc01890:	00c53021 	addu	a2,a2,a1
bfc01894:	8cc6a5e8 	lw	a2,-23064(a2)
bfc01898:	144301aa 	bne	v0,v1,bfc01f44 <inst_error>
bfc0189c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:56
bfc018a0:	3c09c95d 	lui	t1,0xc95d
bfc018a4:	3529e720 	ori	t1,t1,0xe720
bfc018a8:	3c08800d 	lui	t0,0x800d
bfc018ac:	3c03c95d 	lui	v1,0xc95d
bfc018b0:	3463e720 	ori	v1,v1,0xe720
bfc018b4:	ad097c80 	sw	t1,31872(t0)
bfc018b8:	25040004 	addiu	a0,t0,4
bfc018bc:	2505fffc 	addiu	a1,t0,-4
bfc018c0:	ac847c80 	sw	a0,31872(a0)
bfc018c4:	aca57c80 	sw	a1,31872(a1)
bfc018c8:	8d027c80 	lw	v0,31872(t0)
bfc018cc:	8c867c80 	lw	a2,31872(a0)
bfc018d0:	8ca47c80 	lw	a0,31872(a1)
bfc018d4:	8ca67c80 	lw	a2,31872(a1)
bfc018d8:	1443019a 	bne	v0,v1,bfc01f44 <inst_error>
bfc018dc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:57
bfc018e0:	3c09d047 	lui	t1,0xd047
bfc018e4:	35296900 	ori	t1,t1,0x6900
bfc018e8:	3c08800d 	lui	t0,0x800d
bfc018ec:	3c03d047 	lui	v1,0xd047
bfc018f0:	34636900 	ori	v1,v1,0x6900
bfc018f4:	3c010001 	lui	at,0x1
bfc018f8:	00280821 	addu	at,at,t0
bfc018fc:	ac29c2e0 	sw	t1,-15648(at)
bfc01900:	25040004 	addiu	a0,t0,4
bfc01904:	2505fffc 	addiu	a1,t0,-4
bfc01908:	3c010001 	lui	at,0x1
bfc0190c:	00240821 	addu	at,at,a0
bfc01910:	ac24c2e0 	sw	a0,-15648(at)
bfc01914:	3c010001 	lui	at,0x1
bfc01918:	00250821 	addu	at,at,a1
bfc0191c:	ac25c2e0 	sw	a1,-15648(at)
bfc01920:	3c020001 	lui	v0,0x1
bfc01924:	00481021 	addu	v0,v0,t0
bfc01928:	8c42c2e0 	lw	v0,-15648(v0)
bfc0192c:	3c060001 	lui	a2,0x1
bfc01930:	00c43021 	addu	a2,a2,a0
bfc01934:	8cc6c2e0 	lw	a2,-15648(a2)
bfc01938:	3c040001 	lui	a0,0x1
bfc0193c:	00852021 	addu	a0,a0,a1
bfc01940:	8c84c2e0 	lw	a0,-15648(a0)
bfc01944:	3c060001 	lui	a2,0x1
bfc01948:	00c53021 	addu	a2,a2,a1
bfc0194c:	8cc6c2e0 	lw	a2,-15648(a2)
bfc01950:	1443017c 	bne	v0,v1,bfc01f44 <inst_error>
bfc01954:	00000000 	nop
/home/csy/func/inst/n12_sw.S:58
bfc01958:	3c09873f 	lui	t1,0x873f
bfc0195c:	3529383a 	ori	t1,t1,0x383a
bfc01960:	3c08800d 	lui	t0,0x800d
bfc01964:	3c03873f 	lui	v1,0x873f
bfc01968:	3463383a 	ori	v1,v1,0x383a
bfc0196c:	ad0947b8 	sw	t1,18360(t0)
bfc01970:	25040004 	addiu	a0,t0,4
bfc01974:	2505fffc 	addiu	a1,t0,-4
bfc01978:	ac8447b8 	sw	a0,18360(a0)
bfc0197c:	aca547b8 	sw	a1,18360(a1)
bfc01980:	8d0247b8 	lw	v0,18360(t0)
bfc01984:	8c8647b8 	lw	a2,18360(a0)
bfc01988:	8ca447b8 	lw	a0,18360(a1)
bfc0198c:	8ca647b8 	lw	a2,18360(a1)
bfc01990:	1443016c 	bne	v0,v1,bfc01f44 <inst_error>
bfc01994:	00000000 	nop
/home/csy/func/inst/n12_sw.S:59
bfc01998:	3c0950d5 	lui	t1,0x50d5
bfc0199c:	35294ce0 	ori	t1,t1,0x4ce0
bfc019a0:	3c08800d 	lui	t0,0x800d
bfc019a4:	3c0350d5 	lui	v1,0x50d5
bfc019a8:	34634ce0 	ori	v1,v1,0x4ce0
bfc019ac:	3c010001 	lui	at,0x1
bfc019b0:	00280821 	addu	at,at,t0
bfc019b4:	ac298320 	sw	t1,-31968(at)
bfc019b8:	25040004 	addiu	a0,t0,4
bfc019bc:	2505fffc 	addiu	a1,t0,-4
bfc019c0:	3c010001 	lui	at,0x1
bfc019c4:	00240821 	addu	at,at,a0
bfc019c8:	ac248320 	sw	a0,-31968(at)
bfc019cc:	3c010001 	lui	at,0x1
bfc019d0:	00250821 	addu	at,at,a1
bfc019d4:	ac258320 	sw	a1,-31968(at)
bfc019d8:	3c020001 	lui	v0,0x1
bfc019dc:	00481021 	addu	v0,v0,t0
bfc019e0:	8c428320 	lw	v0,-31968(v0)
bfc019e4:	3c060001 	lui	a2,0x1
bfc019e8:	00c43021 	addu	a2,a2,a0
bfc019ec:	8cc68320 	lw	a2,-31968(a2)
bfc019f0:	3c040001 	lui	a0,0x1
bfc019f4:	00852021 	addu	a0,a0,a1
bfc019f8:	8c848320 	lw	a0,-31968(a0)
bfc019fc:	3c060001 	lui	a2,0x1
bfc01a00:	00c53021 	addu	a2,a2,a1
bfc01a04:	8cc68320 	lw	a2,-31968(a2)
bfc01a08:	1443014e 	bne	v0,v1,bfc01f44 <inst_error>
bfc01a0c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:60
bfc01a10:	3c098502 	lui	t1,0x8502
bfc01a14:	3529ea18 	ori	t1,t1,0xea18
bfc01a18:	3c08800d 	lui	t0,0x800d
bfc01a1c:	3c038502 	lui	v1,0x8502
bfc01a20:	3463ea18 	ori	v1,v1,0xea18
bfc01a24:	3c010001 	lui	at,0x1
bfc01a28:	00280821 	addu	at,at,t0
bfc01a2c:	ac29f2f0 	sw	t1,-3344(at)
bfc01a30:	25040004 	addiu	a0,t0,4
bfc01a34:	2505fffc 	addiu	a1,t0,-4
bfc01a38:	3c010001 	lui	at,0x1
bfc01a3c:	00240821 	addu	at,at,a0
bfc01a40:	ac24f2f0 	sw	a0,-3344(at)
bfc01a44:	3c010001 	lui	at,0x1
bfc01a48:	00250821 	addu	at,at,a1
bfc01a4c:	ac25f2f0 	sw	a1,-3344(at)
bfc01a50:	3c020001 	lui	v0,0x1
bfc01a54:	00481021 	addu	v0,v0,t0
bfc01a58:	8c42f2f0 	lw	v0,-3344(v0)
bfc01a5c:	3c060001 	lui	a2,0x1
bfc01a60:	00c43021 	addu	a2,a2,a0
bfc01a64:	8cc6f2f0 	lw	a2,-3344(a2)
bfc01a68:	3c040001 	lui	a0,0x1
bfc01a6c:	00852021 	addu	a0,a0,a1
bfc01a70:	8c84f2f0 	lw	a0,-3344(a0)
bfc01a74:	3c060001 	lui	a2,0x1
bfc01a78:	00c53021 	addu	a2,a2,a1
bfc01a7c:	8cc6f2f0 	lw	a2,-3344(a2)
bfc01a80:	14430130 	bne	v0,v1,bfc01f44 <inst_error>
bfc01a84:	00000000 	nop
/home/csy/func/inst/n12_sw.S:61
bfc01a88:	3c0909f2 	lui	t1,0x9f2
bfc01a8c:	3529b630 	ori	t1,t1,0xb630
bfc01a90:	3c08800d 	lui	t0,0x800d
bfc01a94:	3c0309f2 	lui	v1,0x9f2
bfc01a98:	3463b630 	ori	v1,v1,0xb630
bfc01a9c:	3c010001 	lui	at,0x1
bfc01aa0:	00280821 	addu	at,at,t0
bfc01aa4:	ac29aa24 	sw	t1,-21980(at)
bfc01aa8:	25040004 	addiu	a0,t0,4
bfc01aac:	2505fffc 	addiu	a1,t0,-4
bfc01ab0:	3c010001 	lui	at,0x1
bfc01ab4:	00240821 	addu	at,at,a0
bfc01ab8:	ac24aa24 	sw	a0,-21980(at)
bfc01abc:	3c010001 	lui	at,0x1
bfc01ac0:	00250821 	addu	at,at,a1
bfc01ac4:	ac25aa24 	sw	a1,-21980(at)
bfc01ac8:	3c020001 	lui	v0,0x1
bfc01acc:	00481021 	addu	v0,v0,t0
bfc01ad0:	8c42aa24 	lw	v0,-21980(v0)
bfc01ad4:	3c060001 	lui	a2,0x1
bfc01ad8:	00c43021 	addu	a2,a2,a0
bfc01adc:	8cc6aa24 	lw	a2,-21980(a2)
bfc01ae0:	3c040001 	lui	a0,0x1
bfc01ae4:	00852021 	addu	a0,a0,a1
bfc01ae8:	8c84aa24 	lw	a0,-21980(a0)
bfc01aec:	3c060001 	lui	a2,0x1
bfc01af0:	00c53021 	addu	a2,a2,a1
bfc01af4:	8cc6aa24 	lw	a2,-21980(a2)
bfc01af8:	14430112 	bne	v0,v1,bfc01f44 <inst_error>
bfc01afc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:62
bfc01b00:	3c09e807 	lui	t1,0xe807
bfc01b04:	35299b47 	ori	t1,t1,0x9b47
bfc01b08:	3c08800d 	lui	t0,0x800d
bfc01b0c:	3c03e807 	lui	v1,0xe807
bfc01b10:	34639b47 	ori	v1,v1,0x9b47
bfc01b14:	ad0941e0 	sw	t1,16864(t0)
bfc01b18:	25040004 	addiu	a0,t0,4
bfc01b1c:	2505fffc 	addiu	a1,t0,-4
bfc01b20:	ac8441e0 	sw	a0,16864(a0)
bfc01b24:	aca541e0 	sw	a1,16864(a1)
bfc01b28:	8d0241e0 	lw	v0,16864(t0)
bfc01b2c:	8c8641e0 	lw	a2,16864(a0)
bfc01b30:	8ca441e0 	lw	a0,16864(a1)
bfc01b34:	8ca641e0 	lw	a2,16864(a1)
bfc01b38:	14430102 	bne	v0,v1,bfc01f44 <inst_error>
bfc01b3c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:63
bfc01b40:	3c095de6 	lui	t1,0x5de6
bfc01b44:	3529e330 	ori	t1,t1,0xe330
bfc01b48:	3c08800d 	lui	t0,0x800d
bfc01b4c:	3c035de6 	lui	v1,0x5de6
bfc01b50:	3463e330 	ori	v1,v1,0xe330
bfc01b54:	ad090000 	sw	t1,0(t0)
bfc01b58:	25040004 	addiu	a0,t0,4
bfc01b5c:	2505fffc 	addiu	a1,t0,-4
bfc01b60:	ac840000 	sw	a0,0(a0)
bfc01b64:	aca50000 	sw	a1,0(a1)
bfc01b68:	8d020000 	lw	v0,0(t0)
bfc01b6c:	8c860000 	lw	a2,0(a0)
bfc01b70:	8ca40000 	lw	a0,0(a1)
bfc01b74:	8ca60000 	lw	a2,0(a1)
bfc01b78:	144300f2 	bne	v0,v1,bfc01f44 <inst_error>
bfc01b7c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:64
bfc01b80:	3c09bf63 	lui	t1,0xbf63
bfc01b84:	35297404 	ori	t1,t1,0x7404
bfc01b88:	3c08800d 	lui	t0,0x800d
bfc01b8c:	3c03bf63 	lui	v1,0xbf63
bfc01b90:	34637404 	ori	v1,v1,0x7404
bfc01b94:	ad090000 	sw	t1,0(t0)
bfc01b98:	25040004 	addiu	a0,t0,4
bfc01b9c:	2505fffc 	addiu	a1,t0,-4
bfc01ba0:	ac840000 	sw	a0,0(a0)
bfc01ba4:	aca50000 	sw	a1,0(a1)
bfc01ba8:	8d020000 	lw	v0,0(t0)
bfc01bac:	8c860000 	lw	a2,0(a0)
bfc01bb0:	8ca40000 	lw	a0,0(a1)
bfc01bb4:	8ca60000 	lw	a2,0(a1)
bfc01bb8:	144300e2 	bne	v0,v1,bfc01f44 <inst_error>
bfc01bbc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:65
bfc01bc0:	3c099922 	lui	t1,0x9922
bfc01bc4:	35297ac0 	ori	t1,t1,0x7ac0
bfc01bc8:	3c08800d 	lui	t0,0x800d
bfc01bcc:	3c039922 	lui	v1,0x9922
bfc01bd0:	34637ac0 	ori	v1,v1,0x7ac0
bfc01bd4:	ad090000 	sw	t1,0(t0)
bfc01bd8:	25040004 	addiu	a0,t0,4
bfc01bdc:	2505fffc 	addiu	a1,t0,-4
bfc01be0:	ac840000 	sw	a0,0(a0)
bfc01be4:	aca50000 	sw	a1,0(a1)
bfc01be8:	8d020000 	lw	v0,0(t0)
bfc01bec:	8c860000 	lw	a2,0(a0)
bfc01bf0:	8ca40000 	lw	a0,0(a1)
bfc01bf4:	8ca60000 	lw	a2,0(a1)
bfc01bf8:	144300d2 	bne	v0,v1,bfc01f44 <inst_error>
bfc01bfc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:66
bfc01c00:	3c09ddec 	lui	t1,0xddec
bfc01c04:	3529d270 	ori	t1,t1,0xd270
bfc01c08:	3c08800d 	lui	t0,0x800d
bfc01c0c:	3c03ddec 	lui	v1,0xddec
bfc01c10:	3463d270 	ori	v1,v1,0xd270
bfc01c14:	ad090000 	sw	t1,0(t0)
bfc01c18:	25040004 	addiu	a0,t0,4
bfc01c1c:	2505fffc 	addiu	a1,t0,-4
bfc01c20:	ac840000 	sw	a0,0(a0)
bfc01c24:	aca50000 	sw	a1,0(a1)
bfc01c28:	8d020000 	lw	v0,0(t0)
bfc01c2c:	8c860000 	lw	a2,0(a0)
bfc01c30:	8ca40000 	lw	a0,0(a1)
bfc01c34:	8ca60000 	lw	a2,0(a1)
bfc01c38:	144300c2 	bne	v0,v1,bfc01f44 <inst_error>
bfc01c3c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:67
bfc01c40:	3c0906a0 	lui	t1,0x6a0
bfc01c44:	35296018 	ori	t1,t1,0x6018
bfc01c48:	3c08800d 	lui	t0,0x800d
bfc01c4c:	3c0306a0 	lui	v1,0x6a0
bfc01c50:	34636018 	ori	v1,v1,0x6018
bfc01c54:	ad090000 	sw	t1,0(t0)
bfc01c58:	25040004 	addiu	a0,t0,4
bfc01c5c:	2505fffc 	addiu	a1,t0,-4
bfc01c60:	ac840000 	sw	a0,0(a0)
bfc01c64:	aca50000 	sw	a1,0(a1)
bfc01c68:	8d020000 	lw	v0,0(t0)
bfc01c6c:	8c860000 	lw	a2,0(a0)
bfc01c70:	8ca40000 	lw	a0,0(a1)
bfc01c74:	8ca60000 	lw	a2,0(a1)
bfc01c78:	144300b2 	bne	v0,v1,bfc01f44 <inst_error>
bfc01c7c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:68
bfc01c80:	3c09f428 	lui	t1,0xf428
bfc01c84:	3529d0c8 	ori	t1,t1,0xd0c8
bfc01c88:	3c08800d 	lui	t0,0x800d
bfc01c8c:	3c03f428 	lui	v1,0xf428
bfc01c90:	3463d0c8 	ori	v1,v1,0xd0c8
bfc01c94:	ad090000 	sw	t1,0(t0)
bfc01c98:	25040004 	addiu	a0,t0,4
bfc01c9c:	2505fffc 	addiu	a1,t0,-4
bfc01ca0:	ac840000 	sw	a0,0(a0)
bfc01ca4:	aca50000 	sw	a1,0(a1)
bfc01ca8:	8d020000 	lw	v0,0(t0)
bfc01cac:	8c860000 	lw	a2,0(a0)
bfc01cb0:	8ca40000 	lw	a0,0(a1)
bfc01cb4:	8ca60000 	lw	a2,0(a1)
bfc01cb8:	144300a2 	bne	v0,v1,bfc01f44 <inst_error>
bfc01cbc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:69
bfc01cc0:	3c09a6ce 	lui	t1,0xa6ce
bfc01cc4:	352933ec 	ori	t1,t1,0x33ec
bfc01cc8:	3c08800d 	lui	t0,0x800d
bfc01ccc:	3c03a6ce 	lui	v1,0xa6ce
bfc01cd0:	346333ec 	ori	v1,v1,0x33ec
bfc01cd4:	ad090000 	sw	t1,0(t0)
bfc01cd8:	25040004 	addiu	a0,t0,4
bfc01cdc:	2505fffc 	addiu	a1,t0,-4
bfc01ce0:	ac840000 	sw	a0,0(a0)
bfc01ce4:	aca50000 	sw	a1,0(a1)
bfc01ce8:	8d020000 	lw	v0,0(t0)
bfc01cec:	8c860000 	lw	a2,0(a0)
bfc01cf0:	8ca40000 	lw	a0,0(a1)
bfc01cf4:	8ca60000 	lw	a2,0(a1)
bfc01cf8:	14430092 	bne	v0,v1,bfc01f44 <inst_error>
bfc01cfc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:70
bfc01d00:	3c09a781 	lui	t1,0xa781
bfc01d04:	35293bc0 	ori	t1,t1,0x3bc0
bfc01d08:	3c08800d 	lui	t0,0x800d
bfc01d0c:	3c03a781 	lui	v1,0xa781
bfc01d10:	34633bc0 	ori	v1,v1,0x3bc0
bfc01d14:	ad090000 	sw	t1,0(t0)
bfc01d18:	25040004 	addiu	a0,t0,4
bfc01d1c:	2505fffc 	addiu	a1,t0,-4
bfc01d20:	ac840000 	sw	a0,0(a0)
bfc01d24:	aca50000 	sw	a1,0(a1)
bfc01d28:	8d020000 	lw	v0,0(t0)
bfc01d2c:	8c860000 	lw	a2,0(a0)
bfc01d30:	8ca40000 	lw	a0,0(a1)
bfc01d34:	8ca60000 	lw	a2,0(a1)
bfc01d38:	14430082 	bne	v0,v1,bfc01f44 <inst_error>
bfc01d3c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:71
bfc01d40:	3c097244 	lui	t1,0x7244
bfc01d44:	35290e8c 	ori	t1,t1,0xe8c
bfc01d48:	3c08800d 	lui	t0,0x800d
bfc01d4c:	3c037244 	lui	v1,0x7244
bfc01d50:	34630e8c 	ori	v1,v1,0xe8c
bfc01d54:	ad090000 	sw	t1,0(t0)
bfc01d58:	25040004 	addiu	a0,t0,4
bfc01d5c:	2505fffc 	addiu	a1,t0,-4
bfc01d60:	ac840000 	sw	a0,0(a0)
bfc01d64:	aca50000 	sw	a1,0(a1)
bfc01d68:	8d020000 	lw	v0,0(t0)
bfc01d6c:	8c860000 	lw	a2,0(a0)
bfc01d70:	8ca40000 	lw	a0,0(a1)
bfc01d74:	8ca60000 	lw	a2,0(a1)
bfc01d78:	14430072 	bne	v0,v1,bfc01f44 <inst_error>
bfc01d7c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:72
bfc01d80:	3c09a413 	lui	t1,0xa413
bfc01d84:	35290340 	ori	t1,t1,0x340
bfc01d88:	3c08800d 	lui	t0,0x800d
bfc01d8c:	3c03a413 	lui	v1,0xa413
bfc01d90:	34630340 	ori	v1,v1,0x340
bfc01d94:	ad090000 	sw	t1,0(t0)
bfc01d98:	25040004 	addiu	a0,t0,4
bfc01d9c:	2505fffc 	addiu	a1,t0,-4
bfc01da0:	ac840000 	sw	a0,0(a0)
bfc01da4:	aca50000 	sw	a1,0(a1)
bfc01da8:	8d020000 	lw	v0,0(t0)
bfc01dac:	8c860000 	lw	a2,0(a0)
bfc01db0:	8ca40000 	lw	a0,0(a1)
bfc01db4:	8ca60000 	lw	a2,0(a1)
bfc01db8:	14430062 	bne	v0,v1,bfc01f44 <inst_error>
bfc01dbc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:73
bfc01dc0:	3c09b6ca 	lui	t1,0xb6ca
bfc01dc4:	35290800 	ori	t1,t1,0x800
bfc01dc8:	3c08800d 	lui	t0,0x800d
bfc01dcc:	3c03b6ca 	lui	v1,0xb6ca
bfc01dd0:	34630800 	ori	v1,v1,0x800
bfc01dd4:	ad090000 	sw	t1,0(t0)
bfc01dd8:	25040004 	addiu	a0,t0,4
bfc01ddc:	2505fffc 	addiu	a1,t0,-4
bfc01de0:	ac840000 	sw	a0,0(a0)
bfc01de4:	aca50000 	sw	a1,0(a1)
bfc01de8:	8d020000 	lw	v0,0(t0)
bfc01dec:	8c860000 	lw	a2,0(a0)
bfc01df0:	8ca40000 	lw	a0,0(a1)
bfc01df4:	8ca60000 	lw	a2,0(a1)
bfc01df8:	14430052 	bne	v0,v1,bfc01f44 <inst_error>
bfc01dfc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:74
bfc01e00:	3c091733 	lui	t1,0x1733
bfc01e04:	35291928 	ori	t1,t1,0x1928
bfc01e08:	3c08800d 	lui	t0,0x800d
bfc01e0c:	3c031733 	lui	v1,0x1733
bfc01e10:	34631928 	ori	v1,v1,0x1928
bfc01e14:	ad090000 	sw	t1,0(t0)
bfc01e18:	25040004 	addiu	a0,t0,4
bfc01e1c:	2505fffc 	addiu	a1,t0,-4
bfc01e20:	ac840000 	sw	a0,0(a0)
bfc01e24:	aca50000 	sw	a1,0(a1)
bfc01e28:	8d020000 	lw	v0,0(t0)
bfc01e2c:	8c860000 	lw	a2,0(a0)
bfc01e30:	8ca40000 	lw	a0,0(a1)
bfc01e34:	8ca60000 	lw	a2,0(a1)
bfc01e38:	14430042 	bne	v0,v1,bfc01f44 <inst_error>
bfc01e3c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:75
bfc01e40:	3c090953 	lui	t1,0x953
bfc01e44:	35297c5f 	ori	t1,t1,0x7c5f
bfc01e48:	3c08800d 	lui	t0,0x800d
bfc01e4c:	3c030953 	lui	v1,0x953
bfc01e50:	34637c5f 	ori	v1,v1,0x7c5f
bfc01e54:	ad090000 	sw	t1,0(t0)
bfc01e58:	25040004 	addiu	a0,t0,4
bfc01e5c:	2505fffc 	addiu	a1,t0,-4
bfc01e60:	ac840000 	sw	a0,0(a0)
bfc01e64:	aca50000 	sw	a1,0(a1)
bfc01e68:	8d020000 	lw	v0,0(t0)
bfc01e6c:	8c860000 	lw	a2,0(a0)
bfc01e70:	8ca40000 	lw	a0,0(a1)
bfc01e74:	8ca60000 	lw	a2,0(a1)
bfc01e78:	14430032 	bne	v0,v1,bfc01f44 <inst_error>
bfc01e7c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:76
bfc01e80:	3c093696 	lui	t1,0x3696
bfc01e84:	35294fd0 	ori	t1,t1,0x4fd0
bfc01e88:	3c08800d 	lui	t0,0x800d
bfc01e8c:	3c033696 	lui	v1,0x3696
bfc01e90:	34634fd0 	ori	v1,v1,0x4fd0
bfc01e94:	ad090000 	sw	t1,0(t0)
bfc01e98:	25040004 	addiu	a0,t0,4
bfc01e9c:	2505fffc 	addiu	a1,t0,-4
bfc01ea0:	ac840000 	sw	a0,0(a0)
bfc01ea4:	aca50000 	sw	a1,0(a1)
bfc01ea8:	8d020000 	lw	v0,0(t0)
bfc01eac:	8c860000 	lw	a2,0(a0)
bfc01eb0:	8ca40000 	lw	a0,0(a1)
bfc01eb4:	8ca60000 	lw	a2,0(a1)
bfc01eb8:	14430022 	bne	v0,v1,bfc01f44 <inst_error>
bfc01ebc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:77
bfc01ec0:	3c09e67b 	lui	t1,0xe67b
bfc01ec4:	35291aa6 	ori	t1,t1,0x1aa6
bfc01ec8:	3c08800d 	lui	t0,0x800d
bfc01ecc:	3c03e67b 	lui	v1,0xe67b
bfc01ed0:	34631aa6 	ori	v1,v1,0x1aa6
bfc01ed4:	ad090000 	sw	t1,0(t0)
bfc01ed8:	25040004 	addiu	a0,t0,4
bfc01edc:	2505fffc 	addiu	a1,t0,-4
bfc01ee0:	ac840000 	sw	a0,0(a0)
bfc01ee4:	aca50000 	sw	a1,0(a1)
bfc01ee8:	8d020000 	lw	v0,0(t0)
bfc01eec:	8c860000 	lw	a2,0(a0)
bfc01ef0:	8ca40000 	lw	a0,0(a1)
bfc01ef4:	8ca60000 	lw	a2,0(a1)
bfc01ef8:	14430012 	bne	v0,v1,bfc01f44 <inst_error>
bfc01efc:	00000000 	nop
/home/csy/func/inst/n12_sw.S:78
bfc01f00:	24090000 	li	t1,0
bfc01f04:	3c08800d 	lui	t0,0x800d
bfc01f08:	24030000 	li	v1,0
bfc01f0c:	ad090000 	sw	t1,0(t0)
bfc01f10:	25040004 	addiu	a0,t0,4
bfc01f14:	2505fffc 	addiu	a1,t0,-4
bfc01f18:	ac840000 	sw	a0,0(a0)
bfc01f1c:	aca50000 	sw	a1,0(a1)
bfc01f20:	8d020000 	lw	v0,0(t0)
bfc01f24:	8c860000 	lw	a2,0(a0)
bfc01f28:	8ca40000 	lw	a0,0(a1)
bfc01f2c:	8ca60000 	lw	a2,0(a1)
bfc01f30:	14430004 	bne	v0,v1,bfc01f44 <inst_error>
bfc01f34:	00000000 	nop
/home/csy/func/inst/n12_sw.S:81
bfc01f38:	16400002 	bnez	s2,bfc01f44 <inst_error>
/home/csy/func/inst/n12_sw.S:82
bfc01f3c:	00000000 	nop
/home/csy/func/inst/n12_sw.S:84
bfc01f40:	26730001 	addiu	s3,s3,1

bfc01f44 <inst_error>:
/home/csy/func/inst/n12_sw.S:87
bfc01f44:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n12_sw.S:88
bfc01f48:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n12_sw.S:89
bfc01f4c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n12_sw.S:90
bfc01f50:	03e00008 	jr	ra
/home/csy/func/inst/n12_sw.S:91
bfc01f54:	00000000 	nop
	...

bfc01f60 <n72_lhu_adel_ex_test>:
/home/csy/func/inst/n72_lhu_adel_ex.S:7
bfc01f60:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n72_lhu_adel_ex.S:8
bfc01f64:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n72_lhu_adel_ex.S:9
bfc01f68:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:10
bfc01f6c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:12
bfc01f70:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n72_lhu_adel_ex.S:13
bfc01f74:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n72_lhu_adel_ex.S:14
bfc01f78:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n72_lhu_adel_ex.S:15
bfc01f7c:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:16
bfc01f80:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n72_lhu_adel_ex.S:19
bfc01f84:	3c028003 	lui	v0,0x8003
bfc01f88:	34420514 	ori	v0,v0,0x514
bfc01f8c:	3c038003 	lui	v1,0x8003
bfc01f90:	34630514 	ori	v1,v1,0x514
bfc01f94:	3c04800d 	lui	a0,0x800d
bfc01f98:	34840514 	ori	a0,a0,0x514
bfc01f9c:	3c050dc5 	lui	a1,0xdc5
bfc01fa0:	34a5e542 	ori	a1,a1,0xe542
bfc01fa4:	2487b239 	addiu	a3,a0,-19911
bfc01fa8:	3c010001 	lui	at,0x1
bfc01fac:	00240821 	addu	at,at,a0
bfc01fb0:	ac25b238 	sw	a1,-19912(at)
/home/csy/func/inst/n72_lhu_adel_ex.S:20
bfc01fb4:	3c14bfc0 	lui	s4,0xbfc0
bfc01fb8:	26941fbc 	addiu	s4,s4,8124
/home/csy/func/inst/n72_lhu_adel_ex.S:21
bfc01fbc:	9482b239 	lhu	v0,-19911(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:22
bfc01fc0:	1657009f 	bne	s2,s7,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:23
bfc01fc4:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:24
bfc01fc8:	1443009d 	bne	v0,v1,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:25
bfc01fcc:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:26
bfc01fd0:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:27
bfc01fd4:	14f6009a 	bne	a3,s6,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:28
bfc01fd8:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:30
bfc01fdc:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:31
bfc01fe0:	3c028003 	lui	v0,0x8003
bfc01fe4:	34422fbc 	ori	v0,v0,0x2fbc
bfc01fe8:	3c038003 	lui	v1,0x8003
bfc01fec:	34632fbc 	ori	v1,v1,0x2fbc
bfc01ff0:	3c04800d 	lui	a0,0x800d
bfc01ff4:	34842fbc 	ori	a0,a0,0x2fbc
bfc01ff8:	3c05f781 	lui	a1,0xf781
bfc01ffc:	34a52ae2 	ori	a1,a1,0x2ae2
bfc02000:	24879c35 	addiu	a3,a0,-25547
bfc02004:	3c010001 	lui	at,0x1
bfc02008:	00240821 	addu	at,at,a0
bfc0200c:	ac259c34 	sw	a1,-25548(at)
/home/csy/func/inst/n72_lhu_adel_ex.S:32
bfc02010:	3c14bfc0 	lui	s4,0xbfc0
bfc02014:	26942020 	addiu	s4,s4,8224
/home/csy/func/inst/n72_lhu_adel_ex.S:33
bfc02018:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:34
bfc0201c:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:35
bfc02020:	94829c35 	lhu	v0,-25547(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:36
bfc02024:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:37
bfc02028:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:38
bfc0202c:	15340084 	bne	t1,s4,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:39
bfc02030:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:40
bfc02034:	16570082 	bne	s2,s7,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:41
bfc02038:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:42
bfc0203c:	14430080 	bne	v0,v1,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:43
bfc02040:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:44
bfc02044:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:45
bfc02048:	14f6007d 	bne	a3,s6,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:46
bfc0204c:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:47
bfc02050:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:48
bfc02054:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:50
bfc02058:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:51
bfc0205c:	3c029134 	lui	v0,0x9134
bfc02060:	3442bbd0 	ori	v0,v0,0xbbd0
bfc02064:	3c039134 	lui	v1,0x9134
bfc02068:	3463bbd0 	ori	v1,v1,0xbbd0
bfc0206c:	3c04800d 	lui	a0,0x800d
bfc02070:	34847fa6 	ori	a0,a0,0x7fa6
bfc02074:	3c059ef6 	lui	a1,0x9ef6
bfc02078:	34a55910 	ori	a1,a1,0x5910
bfc0207c:	2487537f 	addiu	a3,a0,21375
bfc02080:	ac85537e 	sw	a1,21374(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:52
bfc02084:	3c14bfc0 	lui	s4,0xbfc0
bfc02088:	26942094 	addiu	s4,s4,8340
/home/csy/func/inst/n72_lhu_adel_ex.S:53
bfc0208c:	01000011 	mthi	t0
/home/csy/func/inst/n72_lhu_adel_ex.S:54
bfc02090:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n72_lhu_adel_ex.S:55
bfc02094:	9482537f 	lhu	v0,21375(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:56
bfc02098:	00004810 	mfhi	t1
/home/csy/func/inst/n72_lhu_adel_ex.S:57
bfc0209c:	11280068 	beq	t1,t0,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:58
bfc020a0:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:59
bfc020a4:	16570066 	bne	s2,s7,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:60
bfc020a8:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:61
bfc020ac:	14430064 	bne	v0,v1,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:62
bfc020b0:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:63
bfc020b4:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:64
bfc020b8:	14f60061 	bne	a3,s6,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:65
bfc020bc:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:67
bfc020c0:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:68
bfc020c4:	3c02fe29 	lui	v0,0xfe29
bfc020c8:	3442b934 	ori	v0,v0,0xb934
bfc020cc:	3c03fe29 	lui	v1,0xfe29
bfc020d0:	3463b934 	ori	v1,v1,0xb934
bfc020d4:	3c04800d 	lui	a0,0x800d
bfc020d8:	3484628c 	ori	a0,a0,0x628c
bfc020dc:	3c05a15a 	lui	a1,0xa15a
bfc020e0:	34a50146 	ori	a1,a1,0x146
bfc020e4:	248756cf 	addiu	a3,a0,22223
bfc020e8:	ac8556cc 	sw	a1,22220(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:69
bfc020ec:	3c14bfc0 	lui	s4,0xbfc0
bfc020f0:	269420f4 	addiu	s4,s4,8436
/home/csy/func/inst/n72_lhu_adel_ex.S:70
bfc020f4:	948256cf 	lhu	v0,22223(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:71
bfc020f8:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n72_lhu_adel_ex.S:72
bfc020fc:	16570050 	bne	s2,s7,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:73
bfc02100:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:74
bfc02104:	1443004e 	bne	v0,v1,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:75
bfc02108:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:76
bfc0210c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:77
bfc02110:	14f6004b 	bne	a3,s6,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:78
bfc02114:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:80
bfc02118:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:81
bfc0211c:	3c028003 	lui	v0,0x8003
bfc02120:	344224b4 	ori	v0,v0,0x24b4
bfc02124:	3c038003 	lui	v1,0x8003
bfc02128:	346324b4 	ori	v1,v1,0x24b4
bfc0212c:	3c04800d 	lui	a0,0x800d
bfc02130:	348424b4 	ori	a0,a0,0x24b4
bfc02134:	3c05566d 	lui	a1,0x566d
bfc02138:	34a5adc2 	ori	a1,a1,0xadc2
bfc0213c:	2487d5c3 	addiu	a3,a0,-10813
bfc02140:	3c010001 	lui	at,0x1
bfc02144:	00240821 	addu	at,at,a0
bfc02148:	ac25d5c0 	sw	a1,-10816(at)
/home/csy/func/inst/n72_lhu_adel_ex.S:82
bfc0214c:	3c14bfc0 	lui	s4,0xbfc0
bfc02150:	2694215c 	addiu	s4,s4,8540
/home/csy/func/inst/n72_lhu_adel_ex.S:83
bfc02154:	01000013 	mtlo	t0
/home/csy/func/inst/n72_lhu_adel_ex.S:84
bfc02158:	01100019 	multu	t0,s0
/home/csy/func/inst/n72_lhu_adel_ex.S:85
bfc0215c:	9482d5c3 	lhu	v0,-10813(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:86
bfc02160:	00004810 	mfhi	t1
/home/csy/func/inst/n72_lhu_adel_ex.S:87
bfc02164:	11280036 	beq	t1,t0,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:88
bfc02168:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:89
bfc0216c:	16570034 	bne	s2,s7,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:90
bfc02170:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:91
bfc02174:	14430032 	bne	v0,v1,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:92
bfc02178:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:93
bfc0217c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:94
bfc02180:	14f6002f 	bne	a3,s6,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:95
bfc02184:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:97
bfc02188:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:98
bfc0218c:	3c0252b9 	lui	v0,0x52b9
bfc02190:	3442c98a 	ori	v0,v0,0xc98a
bfc02194:	3c0352b9 	lui	v1,0x52b9
bfc02198:	3463c98a 	ori	v1,v1,0xc98a
bfc0219c:	3c04800d 	lui	a0,0x800d
bfc021a0:	34846024 	ori	a0,a0,0x6024
bfc021a4:	3c05038f 	lui	a1,0x38f
bfc021a8:	34a518a2 	ori	a1,a1,0x18a2
bfc021ac:	24870765 	addiu	a3,a0,1893
bfc021b0:	ac850764 	sw	a1,1892(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:99
bfc021b4:	3c14bfc0 	lui	s4,0xbfc0
bfc021b8:	269421bc 	addiu	s4,s4,8636
/home/csy/func/inst/n72_lhu_adel_ex.S:100
bfc021bc:	94820765 	lhu	v0,1893(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:101
bfc021c0:	01120019 	multu	t0,s2
/home/csy/func/inst/n72_lhu_adel_ex.S:102
bfc021c4:	1657001e 	bne	s2,s7,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:103
bfc021c8:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:104
bfc021cc:	1443001c 	bne	v0,v1,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:105
bfc021d0:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:106
bfc021d4:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:107
bfc021d8:	14f60019 	bne	a3,s6,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:108
bfc021dc:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:110
bfc021e0:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:111
bfc021e4:	3c022b77 	lui	v0,0x2b77
bfc021e8:	34421238 	ori	v0,v0,0x1238
bfc021ec:	3c032b77 	lui	v1,0x2b77
bfc021f0:	34631238 	ori	v1,v1,0x1238
bfc021f4:	3c04800d 	lui	a0,0x800d
bfc021f8:	34848294 	ori	a0,a0,0x8294
bfc021fc:	3c05cd7a 	lui	a1,0xcd7a
bfc02200:	34a5b654 	ori	a1,a1,0xb654
bfc02204:	248779f5 	addiu	a3,a0,31221
bfc02208:	ac8579f4 	sw	a1,31220(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:112
bfc0220c:	3c14bfc0 	lui	s4,0xbfc0
bfc02210:	26942218 	addiu	s4,s4,8728
/home/csy/func/inst/n72_lhu_adel_ex.S:113
bfc02214:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n72_lhu_adel_ex.S:114
bfc02218:	948279f5 	lhu	v0,31221(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:115
bfc0221c:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n72_lhu_adel_ex.S:116
bfc02220:	16570007 	bne	s2,s7,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:117
bfc02224:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:118
bfc02228:	14430005 	bne	v0,v1,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:119
bfc0222c:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:120
bfc02230:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:121
bfc02234:	14f60002 	bne	a3,s6,bfc02240 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:122
bfc02238:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:124
bfc0223c:	26730001 	addiu	s3,s3,1

bfc02240 <inst_error>:
/home/csy/func/inst/n72_lhu_adel_ex.S:127
bfc02240:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n72_lhu_adel_ex.S:128
bfc02244:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n72_lhu_adel_ex.S:129
bfc02248:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n72_lhu_adel_ex.S:130
bfc0224c:	03e00008 	jr	ra
/home/csy/func/inst/n72_lhu_adel_ex.S:131
bfc02250:	00000000 	nop
	...

bfc02260 <n63_sb_test>:
/home/csy/func/inst/n63_sb.S:7
bfc02260:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n63_sb.S:8
bfc02264:	24120000 	li	s2,0
/home/csy/func/inst/n63_sb.S:10
bfc02268:	3c0ab4f0 	lui	t2,0xb4f0
bfc0226c:	354a0930 	ori	t2,t2,0x930
bfc02270:	3c097955 	lui	t1,0x7955
bfc02274:	3529c40a 	ori	t1,t1,0xc40a
bfc02278:	3c08800d 	lui	t0,0x800d
bfc0227c:	350816ec 	ori	t0,t0,0x16ec
bfc02280:	3c03b4f0 	lui	v1,0xb4f0
bfc02284:	3463090a 	ori	v1,v1,0x90a
bfc02288:	ad0a61ec 	sw	t2,25068(t0)
bfc0228c:	a10961ec 	sb	t1,25068(t0)
bfc02290:	25040004 	addiu	a0,t0,4
bfc02294:	2505fffc 	addiu	a1,t0,-4
bfc02298:	ac8461ec 	sw	a0,25068(a0)
bfc0229c:	aca561ec 	sw	a1,25068(a1)
bfc022a0:	8d0261ec 	lw	v0,25068(t0)
bfc022a4:	8ca461ec 	lw	a0,25068(a1)
bfc022a8:	8c8561ec 	lw	a1,25068(a0)
bfc022ac:	8ca661ec 	lw	a2,25068(a1)
bfc022b0:	14430a24 	bne	v0,v1,bfc04b44 <inst_error>
bfc022b4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:11
bfc022b8:	3c0a1943 	lui	t2,0x1943
bfc022bc:	354a31ca 	ori	t2,t2,0x31ca
bfc022c0:	3c094765 	lui	t1,0x4765
bfc022c4:	35297e06 	ori	t1,t1,0x7e06
bfc022c8:	3c08800d 	lui	t0,0x800d
bfc022cc:	35085068 	ori	t0,t0,0x5068
bfc022d0:	3c031943 	lui	v1,0x1943
bfc022d4:	34633106 	ori	v1,v1,0x3106
bfc022d8:	ad0a6868 	sw	t2,26728(t0)
bfc022dc:	a1096868 	sb	t1,26728(t0)
bfc022e0:	25040004 	addiu	a0,t0,4
bfc022e4:	2505fffc 	addiu	a1,t0,-4
bfc022e8:	ac846868 	sw	a0,26728(a0)
bfc022ec:	aca56868 	sw	a1,26728(a1)
bfc022f0:	8d026868 	lw	v0,26728(t0)
bfc022f4:	8ca46868 	lw	a0,26728(a1)
bfc022f8:	8c856868 	lw	a1,26728(a0)
bfc022fc:	8ca66868 	lw	a2,26728(a1)
bfc02300:	14430a10 	bne	v0,v1,bfc04b44 <inst_error>
bfc02304:	00000000 	nop
/home/csy/func/inst/n63_sb.S:12
bfc02308:	3c0a9efa 	lui	t2,0x9efa
bfc0230c:	354afca8 	ori	t2,t2,0xfca8
bfc02310:	3c092547 	lui	t1,0x2547
bfc02314:	35294bf0 	ori	t1,t1,0x4bf0
bfc02318:	3c08800d 	lui	t0,0x800d
bfc0231c:	35089f20 	ori	t0,t0,0x9f20
bfc02320:	3c039ef0 	lui	v1,0x9ef0
bfc02324:	3463fca8 	ori	v1,v1,0xfca8
bfc02328:	ad0a3660 	sw	t2,13920(t0)
bfc0232c:	a1093662 	sb	t1,13922(t0)
bfc02330:	25040004 	addiu	a0,t0,4
bfc02334:	2505fffc 	addiu	a1,t0,-4
bfc02338:	ac843660 	sw	a0,13920(a0)
bfc0233c:	aca53660 	sw	a1,13920(a1)
bfc02340:	8d023660 	lw	v0,13920(t0)
bfc02344:	8ca43660 	lw	a0,13920(a1)
bfc02348:	8c853660 	lw	a1,13920(a0)
bfc0234c:	8ca63660 	lw	a2,13920(a1)
bfc02350:	144309fc 	bne	v0,v1,bfc04b44 <inst_error>
bfc02354:	00000000 	nop
/home/csy/func/inst/n63_sb.S:13
bfc02358:	3c0a9648 	lui	t2,0x9648
bfc0235c:	354aec44 	ori	t2,t2,0xec44
bfc02360:	3c092516 	lui	t1,0x2516
bfc02364:	35295c46 	ori	t1,t1,0x5c46
bfc02368:	3c08800d 	lui	t0,0x800d
bfc0236c:	350894a4 	ori	t0,t0,0x94a4
bfc02370:	3c039648 	lui	v1,0x9648
bfc02374:	3463ec46 	ori	v1,v1,0xec46
bfc02378:	ad0a01fc 	sw	t2,508(t0)
bfc0237c:	a10901fc 	sb	t1,508(t0)
bfc02380:	25040004 	addiu	a0,t0,4
bfc02384:	2505fffc 	addiu	a1,t0,-4
bfc02388:	ac8401fc 	sw	a0,508(a0)
bfc0238c:	aca501fc 	sw	a1,508(a1)
bfc02390:	8d0201fc 	lw	v0,508(t0)
bfc02394:	8ca401fc 	lw	a0,508(a1)
bfc02398:	8c8501fc 	lw	a1,508(a0)
bfc0239c:	8ca601fc 	lw	a2,508(a1)
bfc023a0:	144309e8 	bne	v0,v1,bfc04b44 <inst_error>
bfc023a4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:14
bfc023a8:	3c0ac93c 	lui	t2,0xc93c
bfc023ac:	354a8d07 	ori	t2,t2,0x8d07
bfc023b0:	3c096070 	lui	t1,0x6070
bfc023b4:	352947b4 	ori	t1,t1,0x47b4
bfc023b8:	3c08800d 	lui	t0,0x800d
bfc023bc:	3508f8f0 	ori	t0,t0,0xf8f0
bfc023c0:	3c03b43c 	lui	v1,0xb43c
bfc023c4:	34638d07 	ori	v1,v1,0x8d07
bfc023c8:	ad0a00f8 	sw	t2,248(t0)
bfc023cc:	a10900fb 	sb	t1,251(t0)
bfc023d0:	25040004 	addiu	a0,t0,4
bfc023d4:	2505fffc 	addiu	a1,t0,-4
bfc023d8:	ac8400f8 	sw	a0,248(a0)
bfc023dc:	aca500f8 	sw	a1,248(a1)
bfc023e0:	8d0200f8 	lw	v0,248(t0)
bfc023e4:	8ca400f8 	lw	a0,248(a1)
bfc023e8:	8c8500f8 	lw	a1,248(a0)
bfc023ec:	8ca600f8 	lw	a2,248(a1)
bfc023f0:	144309d4 	bne	v0,v1,bfc04b44 <inst_error>
bfc023f4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:15
bfc023f8:	3c0a2a18 	lui	t2,0x2a18
bfc023fc:	354abf86 	ori	t2,t2,0xbf86
bfc02400:	3c0933e9 	lui	t1,0x33e9
bfc02404:	35294a7c 	ori	t1,t1,0x4a7c
bfc02408:	3c08800d 	lui	t0,0x800d
bfc0240c:	350854b4 	ori	t0,t0,0x54b4
bfc02410:	3c032a18 	lui	v1,0x2a18
bfc02414:	3463bf7c 	ori	v1,v1,0xbf7c
bfc02418:	ad0a5210 	sw	t2,21008(t0)
bfc0241c:	a1095210 	sb	t1,21008(t0)
bfc02420:	25040004 	addiu	a0,t0,4
bfc02424:	2505fffc 	addiu	a1,t0,-4
bfc02428:	ac845210 	sw	a0,21008(a0)
bfc0242c:	aca55210 	sw	a1,21008(a1)
bfc02430:	8d025210 	lw	v0,21008(t0)
bfc02434:	8ca45210 	lw	a0,21008(a1)
bfc02438:	8c855210 	lw	a1,21008(a0)
bfc0243c:	8ca65210 	lw	a2,21008(a1)
bfc02440:	144309c0 	bne	v0,v1,bfc04b44 <inst_error>
bfc02444:	00000000 	nop
/home/csy/func/inst/n63_sb.S:16
bfc02448:	3c0a4283 	lui	t2,0x4283
bfc0244c:	354abdfc 	ori	t2,t2,0xbdfc
bfc02450:	3c094852 	lui	t1,0x4852
bfc02454:	35294d98 	ori	t1,t1,0x4d98
bfc02458:	3c08800d 	lui	t0,0x800d
bfc0245c:	35084c20 	ori	t0,t0,0x4c20
bfc02460:	3c034298 	lui	v1,0x4298
bfc02464:	3463bdfc 	ori	v1,v1,0xbdfc
bfc02468:	ad0a5c54 	sw	t2,23636(t0)
bfc0246c:	a1095c56 	sb	t1,23638(t0)
bfc02470:	25040004 	addiu	a0,t0,4
bfc02474:	2505fffc 	addiu	a1,t0,-4
bfc02478:	ac845c54 	sw	a0,23636(a0)
bfc0247c:	aca55c54 	sw	a1,23636(a1)
bfc02480:	8d025c54 	lw	v0,23636(t0)
bfc02484:	8ca45c54 	lw	a0,23636(a1)
bfc02488:	8c855c54 	lw	a1,23636(a0)
bfc0248c:	8ca65c54 	lw	a2,23636(a1)
bfc02490:	144309ac 	bne	v0,v1,bfc04b44 <inst_error>
bfc02494:	00000000 	nop
/home/csy/func/inst/n63_sb.S:17
bfc02498:	3c0af950 	lui	t2,0xf950
bfc0249c:	354abe60 	ori	t2,t2,0xbe60
bfc024a0:	3c09132a 	lui	t1,0x132a
bfc024a4:	35299383 	ori	t1,t1,0x9383
bfc024a8:	3c08800d 	lui	t0,0x800d
bfc024ac:	35085b10 	ori	t0,t0,0x5b10
bfc024b0:	3c03f950 	lui	v1,0xf950
bfc024b4:	3463be83 	ori	v1,v1,0xbe83
bfc024b8:	ad0a2ca8 	sw	t2,11432(t0)
bfc024bc:	a1092ca8 	sb	t1,11432(t0)
bfc024c0:	25040004 	addiu	a0,t0,4
bfc024c4:	2505fffc 	addiu	a1,t0,-4
bfc024c8:	ac842ca8 	sw	a0,11432(a0)
bfc024cc:	aca52ca8 	sw	a1,11432(a1)
bfc024d0:	8d022ca8 	lw	v0,11432(t0)
bfc024d4:	8ca42ca8 	lw	a0,11432(a1)
bfc024d8:	8c852ca8 	lw	a1,11432(a0)
bfc024dc:	8ca62ca8 	lw	a2,11432(a1)
bfc024e0:	14430998 	bne	v0,v1,bfc04b44 <inst_error>
bfc024e4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:18
bfc024e8:	3c0a7123 	lui	t2,0x7123
bfc024ec:	354a68e3 	ori	t2,t2,0x68e3
bfc024f0:	3c09a6a8 	lui	t1,0xa6a8
bfc024f4:	35298b20 	ori	t1,t1,0x8b20
bfc024f8:	3c08800d 	lui	t0,0x800d
bfc024fc:	35089db0 	ori	t0,t0,0x9db0
bfc02500:	3c037123 	lui	v1,0x7123
bfc02504:	34636820 	ori	v1,v1,0x6820
bfc02508:	ad0a3970 	sw	t2,14704(t0)
bfc0250c:	a1093970 	sb	t1,14704(t0)
bfc02510:	25040004 	addiu	a0,t0,4
bfc02514:	2505fffc 	addiu	a1,t0,-4
bfc02518:	ac843970 	sw	a0,14704(a0)
bfc0251c:	aca53970 	sw	a1,14704(a1)
bfc02520:	8d023970 	lw	v0,14704(t0)
bfc02524:	8ca43970 	lw	a0,14704(a1)
bfc02528:	8c853970 	lw	a1,14704(a0)
bfc0252c:	8ca63970 	lw	a2,14704(a1)
bfc02530:	14430984 	bne	v0,v1,bfc04b44 <inst_error>
bfc02534:	00000000 	nop
/home/csy/func/inst/n63_sb.S:19
bfc02538:	3c0ad1b0 	lui	t2,0xd1b0
bfc0253c:	354aab60 	ori	t2,t2,0xab60
bfc02540:	3c093384 	lui	t1,0x3384
bfc02544:	3529462f 	ori	t1,t1,0x462f
bfc02548:	3c08800d 	lui	t0,0x800d
bfc0254c:	3508a420 	ori	t0,t0,0xa420
bfc02550:	3c03d1b0 	lui	v1,0xd1b0
bfc02554:	3463ab2f 	ori	v1,v1,0xab2f
bfc02558:	ad0a1560 	sw	t2,5472(t0)
bfc0255c:	a1091560 	sb	t1,5472(t0)
bfc02560:	25040004 	addiu	a0,t0,4
bfc02564:	2505fffc 	addiu	a1,t0,-4
bfc02568:	ac841560 	sw	a0,5472(a0)
bfc0256c:	aca51560 	sw	a1,5472(a1)
bfc02570:	8d021560 	lw	v0,5472(t0)
bfc02574:	8ca41560 	lw	a0,5472(a1)
bfc02578:	8c851560 	lw	a1,5472(a0)
bfc0257c:	8ca61560 	lw	a2,5472(a1)
bfc02580:	14430970 	bne	v0,v1,bfc04b44 <inst_error>
bfc02584:	00000000 	nop
/home/csy/func/inst/n63_sb.S:20
bfc02588:	3c0a06d2 	lui	t2,0x6d2
bfc0258c:	354ab531 	ori	t2,t2,0xb531
bfc02590:	3c09093c 	lui	t1,0x93c
bfc02594:	35292180 	ori	t1,t1,0x2180
bfc02598:	3c08800d 	lui	t0,0x800d
bfc0259c:	35086f20 	ori	t0,t0,0x6f20
bfc025a0:	3c030680 	lui	v1,0x680
bfc025a4:	3463b531 	ori	v1,v1,0xb531
bfc025a8:	ad0a67dc 	sw	t2,26588(t0)
bfc025ac:	a10967de 	sb	t1,26590(t0)
bfc025b0:	25040004 	addiu	a0,t0,4
bfc025b4:	2505fffc 	addiu	a1,t0,-4
bfc025b8:	ac8467dc 	sw	a0,26588(a0)
bfc025bc:	aca567dc 	sw	a1,26588(a1)
bfc025c0:	8d0267dc 	lw	v0,26588(t0)
bfc025c4:	8ca467dc 	lw	a0,26588(a1)
bfc025c8:	8c8567dc 	lw	a1,26588(a0)
bfc025cc:	8ca667dc 	lw	a2,26588(a1)
bfc025d0:	1443095c 	bne	v0,v1,bfc04b44 <inst_error>
bfc025d4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:21
bfc025d8:	3c0abc5e 	lui	t2,0xbc5e
bfc025dc:	354a8270 	ori	t2,t2,0x8270
bfc025e0:	3c09c97f 	lui	t1,0xc97f
bfc025e4:	35294716 	ori	t1,t1,0x4716
bfc025e8:	3c08800d 	lui	t0,0x800d
bfc025ec:	35081c3c 	ori	t0,t0,0x1c3c
bfc025f0:	3c03bc16 	lui	v1,0xbc16
bfc025f4:	34638270 	ori	v1,v1,0x8270
bfc025f8:	ad0a52e4 	sw	t2,21220(t0)
bfc025fc:	a10952e6 	sb	t1,21222(t0)
bfc02600:	25040004 	addiu	a0,t0,4
bfc02604:	2505fffc 	addiu	a1,t0,-4
bfc02608:	ac8452e4 	sw	a0,21220(a0)
bfc0260c:	aca552e4 	sw	a1,21220(a1)
bfc02610:	8d0252e4 	lw	v0,21220(t0)
bfc02614:	8ca452e4 	lw	a0,21220(a1)
bfc02618:	8c8552e4 	lw	a1,21220(a0)
bfc0261c:	8ca652e4 	lw	a2,21220(a1)
bfc02620:	14430948 	bne	v0,v1,bfc04b44 <inst_error>
bfc02624:	00000000 	nop
/home/csy/func/inst/n63_sb.S:22
bfc02628:	3c0a6754 	lui	t2,0x6754
bfc0262c:	354a4f88 	ori	t2,t2,0x4f88
bfc02630:	3c094de1 	lui	t1,0x4de1
bfc02634:	35296970 	ori	t1,t1,0x6970
bfc02638:	3c08800d 	lui	t0,0x800d
bfc0263c:	35080770 	ori	t0,t0,0x770
bfc02640:	3c036754 	lui	v1,0x6754
bfc02644:	34637088 	ori	v1,v1,0x7088
bfc02648:	ad0a4570 	sw	t2,17776(t0)
bfc0264c:	a1094571 	sb	t1,17777(t0)
bfc02650:	25040004 	addiu	a0,t0,4
bfc02654:	2505fffc 	addiu	a1,t0,-4
bfc02658:	ac844570 	sw	a0,17776(a0)
bfc0265c:	aca54570 	sw	a1,17776(a1)
bfc02660:	8d024570 	lw	v0,17776(t0)
bfc02664:	8ca44570 	lw	a0,17776(a1)
bfc02668:	8c854570 	lw	a1,17776(a0)
bfc0266c:	8ca64570 	lw	a2,17776(a1)
bfc02670:	14430934 	bne	v0,v1,bfc04b44 <inst_error>
bfc02674:	00000000 	nop
/home/csy/func/inst/n63_sb.S:23
bfc02678:	3c0a9a91 	lui	t2,0x9a91
bfc0267c:	354a63f0 	ori	t2,t2,0x63f0
bfc02680:	3c091204 	lui	t1,0x1204
bfc02684:	35293778 	ori	t1,t1,0x3778
bfc02688:	3c08800d 	lui	t0,0x800d
bfc0268c:	35089718 	ori	t0,t0,0x9718
bfc02690:	3c039a91 	lui	v1,0x9a91
bfc02694:	346378f0 	ori	v1,v1,0x78f0
bfc02698:	ad0a0120 	sw	t2,288(t0)
bfc0269c:	a1090121 	sb	t1,289(t0)
bfc026a0:	25040004 	addiu	a0,t0,4
bfc026a4:	2505fffc 	addiu	a1,t0,-4
bfc026a8:	ac840120 	sw	a0,288(a0)
bfc026ac:	aca50120 	sw	a1,288(a1)
bfc026b0:	8d020120 	lw	v0,288(t0)
bfc026b4:	8ca40120 	lw	a0,288(a1)
bfc026b8:	8c850120 	lw	a1,288(a0)
bfc026bc:	8ca60120 	lw	a2,288(a1)
bfc026c0:	14430920 	bne	v0,v1,bfc04b44 <inst_error>
bfc026c4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:24
bfc026c8:	3c0ae9a7 	lui	t2,0xe9a7
bfc026cc:	354a36d0 	ori	t2,t2,0x36d0
bfc026d0:	3c090264 	lui	t1,0x264
bfc026d4:	35290360 	ori	t1,t1,0x360
bfc026d8:	3c08800d 	lui	t0,0x800d
bfc026dc:	35081e24 	ori	t0,t0,0x1e24
bfc026e0:	3c03e9a7 	lui	v1,0xe9a7
bfc026e4:	34633660 	ori	v1,v1,0x3660
bfc026e8:	ad0a0f28 	sw	t2,3880(t0)
bfc026ec:	a1090f28 	sb	t1,3880(t0)
bfc026f0:	25040004 	addiu	a0,t0,4
bfc026f4:	2505fffc 	addiu	a1,t0,-4
bfc026f8:	ac840f28 	sw	a0,3880(a0)
bfc026fc:	aca50f28 	sw	a1,3880(a1)
bfc02700:	8d020f28 	lw	v0,3880(t0)
bfc02704:	8ca40f28 	lw	a0,3880(a1)
bfc02708:	8c850f28 	lw	a1,3880(a0)
bfc0270c:	8ca60f28 	lw	a2,3880(a1)
bfc02710:	1443090c 	bne	v0,v1,bfc04b44 <inst_error>
bfc02714:	00000000 	nop
/home/csy/func/inst/n63_sb.S:25
bfc02718:	3c0aebf1 	lui	t2,0xebf1
bfc0271c:	354ac120 	ori	t2,t2,0xc120
bfc02720:	3c0923cf 	lui	t1,0x23cf
bfc02724:	3529ed10 	ori	t1,t1,0xed10
bfc02728:	3c08800d 	lui	t0,0x800d
bfc0272c:	3508d340 	ori	t0,t0,0xd340
bfc02730:	3c03ebf1 	lui	v1,0xebf1
bfc02734:	3463c110 	ori	v1,v1,0xc110
bfc02738:	ad0a1de4 	sw	t2,7652(t0)
bfc0273c:	a1091de4 	sb	t1,7652(t0)
bfc02740:	25040004 	addiu	a0,t0,4
bfc02744:	2505fffc 	addiu	a1,t0,-4
bfc02748:	ac841de4 	sw	a0,7652(a0)
bfc0274c:	aca51de4 	sw	a1,7652(a1)
bfc02750:	8d021de4 	lw	v0,7652(t0)
bfc02754:	8ca41de4 	lw	a0,7652(a1)
bfc02758:	8c851de4 	lw	a1,7652(a0)
bfc0275c:	8ca61de4 	lw	a2,7652(a1)
bfc02760:	144308f8 	bne	v0,v1,bfc04b44 <inst_error>
bfc02764:	00000000 	nop
/home/csy/func/inst/n63_sb.S:26
bfc02768:	3c0a5854 	lui	t2,0x5854
bfc0276c:	354a9334 	ori	t2,t2,0x9334
bfc02770:	3c091b55 	lui	t1,0x1b55
bfc02774:	35297440 	ori	t1,t1,0x7440
bfc02778:	3c08800d 	lui	t0,0x800d
bfc0277c:	350856f0 	ori	t0,t0,0x56f0
bfc02780:	3c035840 	lui	v1,0x5840
bfc02784:	34639334 	ori	v1,v1,0x9334
bfc02788:	ad0a4308 	sw	t2,17160(t0)
bfc0278c:	a109430a 	sb	t1,17162(t0)
bfc02790:	25040004 	addiu	a0,t0,4
bfc02794:	2505fffc 	addiu	a1,t0,-4
bfc02798:	ac844308 	sw	a0,17160(a0)
bfc0279c:	aca54308 	sw	a1,17160(a1)
bfc027a0:	8d024308 	lw	v0,17160(t0)
bfc027a4:	8ca44308 	lw	a0,17160(a1)
bfc027a8:	8c854308 	lw	a1,17160(a0)
bfc027ac:	8ca64308 	lw	a2,17160(a1)
bfc027b0:	144308e4 	bne	v0,v1,bfc04b44 <inst_error>
bfc027b4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:27
bfc027b8:	3c0a0a1f 	lui	t2,0xa1f
bfc027bc:	354a3a0d 	ori	t2,t2,0x3a0d
bfc027c0:	3c099705 	lui	t1,0x9705
bfc027c4:	3529c818 	ori	t1,t1,0xc818
bfc027c8:	3c08800d 	lui	t0,0x800d
bfc027cc:	3508869c 	ori	t0,t0,0x869c
bfc027d0:	3c030a18 	lui	v1,0xa18
bfc027d4:	34633a0d 	ori	v1,v1,0x3a0d
bfc027d8:	ad0a197c 	sw	t2,6524(t0)
bfc027dc:	a109197e 	sb	t1,6526(t0)
bfc027e0:	25040004 	addiu	a0,t0,4
bfc027e4:	2505fffc 	addiu	a1,t0,-4
bfc027e8:	ac84197c 	sw	a0,6524(a0)
bfc027ec:	aca5197c 	sw	a1,6524(a1)
bfc027f0:	8d02197c 	lw	v0,6524(t0)
bfc027f4:	8ca4197c 	lw	a0,6524(a1)
bfc027f8:	8c85197c 	lw	a1,6524(a0)
bfc027fc:	8ca6197c 	lw	a2,6524(a1)
bfc02800:	144308d0 	bne	v0,v1,bfc04b44 <inst_error>
bfc02804:	00000000 	nop
/home/csy/func/inst/n63_sb.S:28
bfc02808:	3c0ac545 	lui	t2,0xc545
bfc0280c:	354aeb10 	ori	t2,t2,0xeb10
bfc02810:	3c09e26f 	lui	t1,0xe26f
bfc02814:	3529d0dc 	ori	t1,t1,0xd0dc
bfc02818:	3c08800d 	lui	t0,0x800d
bfc0281c:	3508d4a0 	ori	t0,t0,0xd4a0
bfc02820:	3c03c545 	lui	v1,0xc545
bfc02824:	3463ebdc 	ori	v1,v1,0xebdc
bfc02828:	ad0a01f4 	sw	t2,500(t0)
bfc0282c:	a10901f4 	sb	t1,500(t0)
bfc02830:	25040004 	addiu	a0,t0,4
bfc02834:	2505fffc 	addiu	a1,t0,-4
bfc02838:	ac8401f4 	sw	a0,500(a0)
bfc0283c:	aca501f4 	sw	a1,500(a1)
bfc02840:	8d0201f4 	lw	v0,500(t0)
bfc02844:	8ca401f4 	lw	a0,500(a1)
bfc02848:	8c8501f4 	lw	a1,500(a0)
bfc0284c:	8ca601f4 	lw	a2,500(a1)
bfc02850:	144308bc 	bne	v0,v1,bfc04b44 <inst_error>
bfc02854:	00000000 	nop
/home/csy/func/inst/n63_sb.S:29
bfc02858:	3c0a2495 	lui	t2,0x2495
bfc0285c:	354aa82c 	ori	t2,t2,0xa82c
bfc02860:	3c092b6d 	lui	t1,0x2b6d
bfc02864:	35299dcc 	ori	t1,t1,0x9dcc
bfc02868:	3c08800d 	lui	t0,0x800d
bfc0286c:	35085654 	ori	t0,t0,0x5654
bfc02870:	3c03cc95 	lui	v1,0xcc95
bfc02874:	3463a82c 	ori	v1,v1,0xa82c
bfc02878:	ad0a46ac 	sw	t2,18092(t0)
bfc0287c:	a10946af 	sb	t1,18095(t0)
bfc02880:	25040004 	addiu	a0,t0,4
bfc02884:	2505fffc 	addiu	a1,t0,-4
bfc02888:	ac8446ac 	sw	a0,18092(a0)
bfc0288c:	aca546ac 	sw	a1,18092(a1)
bfc02890:	8d0246ac 	lw	v0,18092(t0)
bfc02894:	8ca446ac 	lw	a0,18092(a1)
bfc02898:	8c8546ac 	lw	a1,18092(a0)
bfc0289c:	8ca646ac 	lw	a2,18092(a1)
bfc028a0:	144308a8 	bne	v0,v1,bfc04b44 <inst_error>
bfc028a4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:30
bfc028a8:	3c0ad155 	lui	t2,0xd155
bfc028ac:	354a26cc 	ori	t2,t2,0x26cc
bfc028b0:	3c097285 	lui	t1,0x7285
bfc028b4:	352925c0 	ori	t1,t1,0x25c0
bfc028b8:	3c08800d 	lui	t0,0x800d
bfc028bc:	35082538 	ori	t0,t0,0x2538
bfc028c0:	3c03d155 	lui	v1,0xd155
bfc028c4:	346326c0 	ori	v1,v1,0x26c0
bfc028c8:	ad0a0d04 	sw	t2,3332(t0)
bfc028cc:	a1090d04 	sb	t1,3332(t0)
bfc028d0:	25040004 	addiu	a0,t0,4
bfc028d4:	2505fffc 	addiu	a1,t0,-4
bfc028d8:	ac840d04 	sw	a0,3332(a0)
bfc028dc:	aca50d04 	sw	a1,3332(a1)
bfc028e0:	8d020d04 	lw	v0,3332(t0)
bfc028e4:	8ca40d04 	lw	a0,3332(a1)
bfc028e8:	8c850d04 	lw	a1,3332(a0)
bfc028ec:	8ca60d04 	lw	a2,3332(a1)
bfc028f0:	14430894 	bne	v0,v1,bfc04b44 <inst_error>
bfc028f4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:31
bfc028f8:	3c0a4995 	lui	t2,0x4995
bfc028fc:	354a521e 	ori	t2,t2,0x521e
bfc02900:	3c0909c0 	lui	t1,0x9c0
bfc02904:	3529dd47 	ori	t1,t1,0xdd47
bfc02908:	3c08800d 	lui	t0,0x800d
bfc0290c:	35082400 	ori	t0,t0,0x2400
bfc02910:	3c034995 	lui	v1,0x4995
bfc02914:	3463471e 	ori	v1,v1,0x471e
bfc02918:	3c010001 	lui	at,0x1
bfc0291c:	00280821 	addu	at,at,t0
bfc02920:	ac2abd3c 	sw	t2,-17092(at)
bfc02924:	3c010001 	lui	at,0x1
bfc02928:	00280821 	addu	at,at,t0
bfc0292c:	a029bd3d 	sb	t1,-17091(at)
bfc02930:	25040004 	addiu	a0,t0,4
bfc02934:	2505fffc 	addiu	a1,t0,-4
bfc02938:	3c010001 	lui	at,0x1
bfc0293c:	00240821 	addu	at,at,a0
bfc02940:	ac24bd3c 	sw	a0,-17092(at)
bfc02944:	3c010001 	lui	at,0x1
bfc02948:	00250821 	addu	at,at,a1
bfc0294c:	ac25bd3c 	sw	a1,-17092(at)
bfc02950:	3c020001 	lui	v0,0x1
bfc02954:	00481021 	addu	v0,v0,t0
bfc02958:	8c42bd3c 	lw	v0,-17092(v0)
bfc0295c:	3c040001 	lui	a0,0x1
bfc02960:	00852021 	addu	a0,a0,a1
bfc02964:	8c84bd3c 	lw	a0,-17092(a0)
bfc02968:	3c050001 	lui	a1,0x1
bfc0296c:	00a42821 	addu	a1,a1,a0
bfc02970:	8ca5bd3c 	lw	a1,-17092(a1)
bfc02974:	3c060001 	lui	a2,0x1
bfc02978:	00c53021 	addu	a2,a2,a1
bfc0297c:	8cc6bd3c 	lw	a2,-17092(a2)
bfc02980:	14430870 	bne	v0,v1,bfc04b44 <inst_error>
bfc02984:	00000000 	nop
/home/csy/func/inst/n63_sb.S:32
bfc02988:	3c0ae68f 	lui	t2,0xe68f
bfc0298c:	354aa3cb 	ori	t2,t2,0xa3cb
bfc02990:	3c09b7dc 	lui	t1,0xb7dc
bfc02994:	3529b7de 	ori	t1,t1,0xb7de
bfc02998:	3c08800d 	lui	t0,0x800d
bfc0299c:	35085324 	ori	t0,t0,0x5324
bfc029a0:	3c03e68f 	lui	v1,0xe68f
bfc029a4:	3463a3de 	ori	v1,v1,0xa3de
bfc029a8:	ad0a15a8 	sw	t2,5544(t0)
bfc029ac:	a10915a8 	sb	t1,5544(t0)
bfc029b0:	25040004 	addiu	a0,t0,4
bfc029b4:	2505fffc 	addiu	a1,t0,-4
bfc029b8:	ac8415a8 	sw	a0,5544(a0)
bfc029bc:	aca515a8 	sw	a1,5544(a1)
bfc029c0:	8d0215a8 	lw	v0,5544(t0)
bfc029c4:	8ca415a8 	lw	a0,5544(a1)
bfc029c8:	8c8515a8 	lw	a1,5544(a0)
bfc029cc:	8ca615a8 	lw	a2,5544(a1)
bfc029d0:	1443085c 	bne	v0,v1,bfc04b44 <inst_error>
bfc029d4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:33
bfc029d8:	3c0aa1d5 	lui	t2,0xa1d5
bfc029dc:	354a08e8 	ori	t2,t2,0x8e8
bfc029e0:	3c09fd28 	lui	t1,0xfd28
bfc029e4:	352982a4 	ori	t1,t1,0x82a4
bfc029e8:	3c08800d 	lui	t0,0x800d
bfc029ec:	3508bb68 	ori	t0,t0,0xbb68
bfc029f0:	3c03a1d5 	lui	v1,0xa1d5
bfc029f4:	346308a4 	ori	v1,v1,0x8a4
bfc029f8:	ad0a3d18 	sw	t2,15640(t0)
bfc029fc:	a1093d18 	sb	t1,15640(t0)
bfc02a00:	25040004 	addiu	a0,t0,4
bfc02a04:	2505fffc 	addiu	a1,t0,-4
bfc02a08:	ac843d18 	sw	a0,15640(a0)
bfc02a0c:	aca53d18 	sw	a1,15640(a1)
bfc02a10:	8d023d18 	lw	v0,15640(t0)
bfc02a14:	8ca43d18 	lw	a0,15640(a1)
bfc02a18:	8c853d18 	lw	a1,15640(a0)
bfc02a1c:	8ca63d18 	lw	a2,15640(a1)
bfc02a20:	14430848 	bne	v0,v1,bfc04b44 <inst_error>
bfc02a24:	00000000 	nop
/home/csy/func/inst/n63_sb.S:34
bfc02a28:	3c0a1951 	lui	t2,0x1951
bfc02a2c:	354a5bd9 	ori	t2,t2,0x5bd9
bfc02a30:	3c09d5fc 	lui	t1,0xd5fc
bfc02a34:	35298620 	ori	t1,t1,0x8620
bfc02a38:	3c08800d 	lui	t0,0x800d
bfc02a3c:	35082b20 	ori	t0,t0,0x2b20
bfc02a40:	3c032051 	lui	v1,0x2051
bfc02a44:	34635bd9 	ori	v1,v1,0x5bd9
bfc02a48:	3c010001 	lui	at,0x1
bfc02a4c:	00280821 	addu	at,at,t0
bfc02a50:	ac2ab794 	sw	t2,-18540(at)
bfc02a54:	3c010001 	lui	at,0x1
bfc02a58:	00280821 	addu	at,at,t0
bfc02a5c:	a029b797 	sb	t1,-18537(at)
bfc02a60:	25040004 	addiu	a0,t0,4
bfc02a64:	2505fffc 	addiu	a1,t0,-4
bfc02a68:	3c010001 	lui	at,0x1
bfc02a6c:	00240821 	addu	at,at,a0
bfc02a70:	ac24b794 	sw	a0,-18540(at)
bfc02a74:	3c010001 	lui	at,0x1
bfc02a78:	00250821 	addu	at,at,a1
bfc02a7c:	ac25b794 	sw	a1,-18540(at)
bfc02a80:	3c020001 	lui	v0,0x1
bfc02a84:	00481021 	addu	v0,v0,t0
bfc02a88:	8c42b794 	lw	v0,-18540(v0)
bfc02a8c:	3c040001 	lui	a0,0x1
bfc02a90:	00852021 	addu	a0,a0,a1
bfc02a94:	8c84b794 	lw	a0,-18540(a0)
bfc02a98:	3c050001 	lui	a1,0x1
bfc02a9c:	00a42821 	addu	a1,a1,a0
bfc02aa0:	8ca5b794 	lw	a1,-18540(a1)
bfc02aa4:	3c060001 	lui	a2,0x1
bfc02aa8:	00c53021 	addu	a2,a2,a1
bfc02aac:	8cc6b794 	lw	a2,-18540(a2)
bfc02ab0:	14430824 	bne	v0,v1,bfc04b44 <inst_error>
bfc02ab4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:35
bfc02ab8:	3c0a431f 	lui	t2,0x431f
bfc02abc:	354a36bc 	ori	t2,t2,0x36bc
bfc02ac0:	3c098de3 	lui	t1,0x8de3
bfc02ac4:	3529033d 	ori	t1,t1,0x33d
bfc02ac8:	3c08800d 	lui	t0,0x800d
bfc02acc:	350883d4 	ori	t0,t0,0x83d4
bfc02ad0:	3c03431f 	lui	v1,0x431f
bfc02ad4:	3463363d 	ori	v1,v1,0x363d
bfc02ad8:	ad0a4d0c 	sw	t2,19724(t0)
bfc02adc:	a1094d0c 	sb	t1,19724(t0)
bfc02ae0:	25040004 	addiu	a0,t0,4
bfc02ae4:	2505fffc 	addiu	a1,t0,-4
bfc02ae8:	ac844d0c 	sw	a0,19724(a0)
bfc02aec:	aca54d0c 	sw	a1,19724(a1)
bfc02af0:	8d024d0c 	lw	v0,19724(t0)
bfc02af4:	8ca44d0c 	lw	a0,19724(a1)
bfc02af8:	8c854d0c 	lw	a1,19724(a0)
bfc02afc:	8ca64d0c 	lw	a2,19724(a1)
bfc02b00:	14430810 	bne	v0,v1,bfc04b44 <inst_error>
bfc02b04:	00000000 	nop
/home/csy/func/inst/n63_sb.S:36
bfc02b08:	3c0a3232 	lui	t2,0x3232
bfc02b0c:	354a9da6 	ori	t2,t2,0x9da6
bfc02b10:	3c093eb8 	lui	t1,0x3eb8
bfc02b14:	3529314c 	ori	t1,t1,0x314c
bfc02b18:	3c08800d 	lui	t0,0x800d
bfc02b1c:	3508e3a8 	ori	t0,t0,0xe3a8
bfc02b20:	3c033232 	lui	v1,0x3232
bfc02b24:	34634ca6 	ori	v1,v1,0x4ca6
bfc02b28:	ad0a0ae4 	sw	t2,2788(t0)
bfc02b2c:	a1090ae5 	sb	t1,2789(t0)
bfc02b30:	25040004 	addiu	a0,t0,4
bfc02b34:	2505fffc 	addiu	a1,t0,-4
bfc02b38:	ac840ae4 	sw	a0,2788(a0)
bfc02b3c:	aca50ae4 	sw	a1,2788(a1)
bfc02b40:	8d020ae4 	lw	v0,2788(t0)
bfc02b44:	8ca40ae4 	lw	a0,2788(a1)
bfc02b48:	8c850ae4 	lw	a1,2788(a0)
bfc02b4c:	8ca60ae4 	lw	a2,2788(a1)
bfc02b50:	144307fc 	bne	v0,v1,bfc04b44 <inst_error>
bfc02b54:	00000000 	nop
/home/csy/func/inst/n63_sb.S:37
bfc02b58:	3c0ac12c 	lui	t2,0xc12c
bfc02b5c:	354ac3cc 	ori	t2,t2,0xc3cc
bfc02b60:	3c09cb6e 	lui	t1,0xcb6e
bfc02b64:	3529a900 	ori	t1,t1,0xa900
bfc02b68:	3c08800d 	lui	t0,0x800d
bfc02b6c:	35084550 	ori	t0,t0,0x4550
bfc02b70:	3c03c100 	lui	v1,0xc100
bfc02b74:	3463c3cc 	ori	v1,v1,0xc3cc
bfc02b78:	ad0a66a4 	sw	t2,26276(t0)
bfc02b7c:	a10966a6 	sb	t1,26278(t0)
bfc02b80:	25040004 	addiu	a0,t0,4
bfc02b84:	2505fffc 	addiu	a1,t0,-4
bfc02b88:	ac8466a4 	sw	a0,26276(a0)
bfc02b8c:	aca566a4 	sw	a1,26276(a1)
bfc02b90:	8d0266a4 	lw	v0,26276(t0)
bfc02b94:	8ca466a4 	lw	a0,26276(a1)
bfc02b98:	8c8566a4 	lw	a1,26276(a0)
bfc02b9c:	8ca666a4 	lw	a2,26276(a1)
bfc02ba0:	144307e8 	bne	v0,v1,bfc04b44 <inst_error>
bfc02ba4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:38
bfc02ba8:	3c0a4c48 	lui	t2,0x4c48
bfc02bac:	354aff70 	ori	t2,t2,0xff70
bfc02bb0:	3c09e9ff 	lui	t1,0xe9ff
bfc02bb4:	3529efab 	ori	t1,t1,0xefab
bfc02bb8:	3c08800d 	lui	t0,0x800d
bfc02bbc:	350882b4 	ori	t0,t0,0x82b4
bfc02bc0:	3c034c48 	lui	v1,0x4c48
bfc02bc4:	3463ffab 	ori	v1,v1,0xffab
bfc02bc8:	ad0a41f4 	sw	t2,16884(t0)
bfc02bcc:	a10941f4 	sb	t1,16884(t0)
bfc02bd0:	25040004 	addiu	a0,t0,4
bfc02bd4:	2505fffc 	addiu	a1,t0,-4
bfc02bd8:	ac8441f4 	sw	a0,16884(a0)
bfc02bdc:	aca541f4 	sw	a1,16884(a1)
bfc02be0:	8d0241f4 	lw	v0,16884(t0)
bfc02be4:	8ca441f4 	lw	a0,16884(a1)
bfc02be8:	8c8541f4 	lw	a1,16884(a0)
bfc02bec:	8ca641f4 	lw	a2,16884(a1)
bfc02bf0:	144307d4 	bne	v0,v1,bfc04b44 <inst_error>
bfc02bf4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:39
bfc02bf8:	3c0a9100 	lui	t2,0x9100
bfc02bfc:	354a6168 	ori	t2,t2,0x6168
bfc02c00:	3c090bcb 	lui	t1,0xbcb
bfc02c04:	35297118 	ori	t1,t1,0x7118
bfc02c08:	3c08800d 	lui	t0,0x800d
bfc02c0c:	35084fdc 	ori	t0,t0,0x4fdc
bfc02c10:	3c039100 	lui	v1,0x9100
bfc02c14:	34636118 	ori	v1,v1,0x6118
bfc02c18:	ad0a2f0c 	sw	t2,12044(t0)
bfc02c1c:	a1092f0c 	sb	t1,12044(t0)
bfc02c20:	25040004 	addiu	a0,t0,4
bfc02c24:	2505fffc 	addiu	a1,t0,-4
bfc02c28:	ac842f0c 	sw	a0,12044(a0)
bfc02c2c:	aca52f0c 	sw	a1,12044(a1)
bfc02c30:	8d022f0c 	lw	v0,12044(t0)
bfc02c34:	8ca42f0c 	lw	a0,12044(a1)
bfc02c38:	8c852f0c 	lw	a1,12044(a0)
bfc02c3c:	8ca62f0c 	lw	a2,12044(a1)
bfc02c40:	144307c0 	bne	v0,v1,bfc04b44 <inst_error>
bfc02c44:	00000000 	nop
/home/csy/func/inst/n63_sb.S:40
bfc02c48:	3c0a8fe7 	lui	t2,0x8fe7
bfc02c4c:	354a39a2 	ori	t2,t2,0x39a2
bfc02c50:	3c097d4a 	lui	t1,0x7d4a
bfc02c54:	35296bb6 	ori	t1,t1,0x6bb6
bfc02c58:	3c08800d 	lui	t0,0x800d
bfc02c5c:	3508635c 	ori	t0,t0,0x635c
bfc02c60:	3c038fb6 	lui	v1,0x8fb6
bfc02c64:	346339a2 	ori	v1,v1,0x39a2
bfc02c68:	ad0a1b7c 	sw	t2,7036(t0)
bfc02c6c:	a1091b7e 	sb	t1,7038(t0)
bfc02c70:	25040004 	addiu	a0,t0,4
bfc02c74:	2505fffc 	addiu	a1,t0,-4
bfc02c78:	ac841b7c 	sw	a0,7036(a0)
bfc02c7c:	aca51b7c 	sw	a1,7036(a1)
bfc02c80:	8d021b7c 	lw	v0,7036(t0)
bfc02c84:	8ca41b7c 	lw	a0,7036(a1)
bfc02c88:	8c851b7c 	lw	a1,7036(a0)
bfc02c8c:	8ca61b7c 	lw	a2,7036(a1)
bfc02c90:	144307ac 	bne	v0,v1,bfc04b44 <inst_error>
bfc02c94:	00000000 	nop
/home/csy/func/inst/n63_sb.S:41
bfc02c98:	3c0a4be1 	lui	t2,0x4be1
bfc02c9c:	354a5cd4 	ori	t2,t2,0x5cd4
bfc02ca0:	3c09ff48 	lui	t1,0xff48
bfc02ca4:	35291820 	ori	t1,t1,0x1820
bfc02ca8:	3c08800d 	lui	t0,0x800d
bfc02cac:	3508d9e8 	ori	t0,t0,0xd9e8
bfc02cb0:	3c034be1 	lui	v1,0x4be1
bfc02cb4:	34635c20 	ori	v1,v1,0x5c20
bfc02cb8:	ad0a06e8 	sw	t2,1768(t0)
bfc02cbc:	a10906e8 	sb	t1,1768(t0)
bfc02cc0:	25040004 	addiu	a0,t0,4
bfc02cc4:	2505fffc 	addiu	a1,t0,-4
bfc02cc8:	ac8406e8 	sw	a0,1768(a0)
bfc02ccc:	aca506e8 	sw	a1,1768(a1)
bfc02cd0:	8d0206e8 	lw	v0,1768(t0)
bfc02cd4:	8ca406e8 	lw	a0,1768(a1)
bfc02cd8:	8c8506e8 	lw	a1,1768(a0)
bfc02cdc:	8ca606e8 	lw	a2,1768(a1)
bfc02ce0:	14430798 	bne	v0,v1,bfc04b44 <inst_error>
bfc02ce4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:42
bfc02ce8:	3c0aab84 	lui	t2,0xab84
bfc02cec:	354aef36 	ori	t2,t2,0xef36
bfc02cf0:	3c09229f 	lui	t1,0x229f
bfc02cf4:	3529a36c 	ori	t1,t1,0xa36c
bfc02cf8:	3c08800d 	lui	t0,0x800d
bfc02cfc:	35080f70 	ori	t0,t0,0xf70
bfc02d00:	3c03ab84 	lui	v1,0xab84
bfc02d04:	3463ef6c 	ori	v1,v1,0xef6c
bfc02d08:	ad0a4c50 	sw	t2,19536(t0)
bfc02d0c:	a1094c50 	sb	t1,19536(t0)
bfc02d10:	25040004 	addiu	a0,t0,4
bfc02d14:	2505fffc 	addiu	a1,t0,-4
bfc02d18:	ac844c50 	sw	a0,19536(a0)
bfc02d1c:	aca54c50 	sw	a1,19536(a1)
bfc02d20:	8d024c50 	lw	v0,19536(t0)
bfc02d24:	8ca44c50 	lw	a0,19536(a1)
bfc02d28:	8c854c50 	lw	a1,19536(a0)
bfc02d2c:	8ca64c50 	lw	a2,19536(a1)
bfc02d30:	14430784 	bne	v0,v1,bfc04b44 <inst_error>
bfc02d34:	00000000 	nop
/home/csy/func/inst/n63_sb.S:43
bfc02d38:	3c0a0ab4 	lui	t2,0xab4
bfc02d3c:	354a30f0 	ori	t2,t2,0x30f0
bfc02d40:	3c099c60 	lui	t1,0x9c60
bfc02d44:	35295140 	ori	t1,t1,0x5140
bfc02d48:	3c08800d 	lui	t0,0x800d
bfc02d4c:	35081bb4 	ori	t0,t0,0x1bb4
bfc02d50:	3c030ab4 	lui	v1,0xab4
bfc02d54:	34633040 	ori	v1,v1,0x3040
bfc02d58:	3c010001 	lui	at,0x1
bfc02d5c:	00280821 	addu	at,at,t0
bfc02d60:	ac2abc54 	sw	t2,-17324(at)
bfc02d64:	3c010001 	lui	at,0x1
bfc02d68:	00280821 	addu	at,at,t0
bfc02d6c:	a029bc54 	sb	t1,-17324(at)
bfc02d70:	25040004 	addiu	a0,t0,4
bfc02d74:	2505fffc 	addiu	a1,t0,-4
bfc02d78:	3c010001 	lui	at,0x1
bfc02d7c:	00240821 	addu	at,at,a0
bfc02d80:	ac24bc54 	sw	a0,-17324(at)
bfc02d84:	3c010001 	lui	at,0x1
bfc02d88:	00250821 	addu	at,at,a1
bfc02d8c:	ac25bc54 	sw	a1,-17324(at)
bfc02d90:	3c020001 	lui	v0,0x1
bfc02d94:	00481021 	addu	v0,v0,t0
bfc02d98:	8c42bc54 	lw	v0,-17324(v0)
bfc02d9c:	3c040001 	lui	a0,0x1
bfc02da0:	00852021 	addu	a0,a0,a1
bfc02da4:	8c84bc54 	lw	a0,-17324(a0)
bfc02da8:	3c050001 	lui	a1,0x1
bfc02dac:	00a42821 	addu	a1,a1,a0
bfc02db0:	8ca5bc54 	lw	a1,-17324(a1)
bfc02db4:	3c060001 	lui	a2,0x1
bfc02db8:	00c53021 	addu	a2,a2,a1
bfc02dbc:	8cc6bc54 	lw	a2,-17324(a2)
bfc02dc0:	14430760 	bne	v0,v1,bfc04b44 <inst_error>
bfc02dc4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:44
bfc02dc8:	3c0ac9df 	lui	t2,0xc9df
bfc02dcc:	354a3d10 	ori	t2,t2,0x3d10
bfc02dd0:	3c092943 	lui	t1,0x2943
bfc02dd4:	352937c4 	ori	t1,t1,0x37c4
bfc02dd8:	3c08800d 	lui	t0,0x800d
bfc02ddc:	35083a28 	ori	t0,t0,0x3a28
bfc02de0:	3c03c9c4 	lui	v1,0xc9c4
bfc02de4:	34633d10 	ori	v1,v1,0x3d10
bfc02de8:	3c010001 	lui	at,0x1
bfc02dec:	00280821 	addu	at,at,t0
bfc02df0:	ac2aa530 	sw	t2,-23248(at)
bfc02df4:	3c010001 	lui	at,0x1
bfc02df8:	00280821 	addu	at,at,t0
bfc02dfc:	a029a532 	sb	t1,-23246(at)
bfc02e00:	25040004 	addiu	a0,t0,4
bfc02e04:	2505fffc 	addiu	a1,t0,-4
bfc02e08:	3c010001 	lui	at,0x1
bfc02e0c:	00240821 	addu	at,at,a0
bfc02e10:	ac24a530 	sw	a0,-23248(at)
bfc02e14:	3c010001 	lui	at,0x1
bfc02e18:	00250821 	addu	at,at,a1
bfc02e1c:	ac25a530 	sw	a1,-23248(at)
bfc02e20:	3c020001 	lui	v0,0x1
bfc02e24:	00481021 	addu	v0,v0,t0
bfc02e28:	8c42a530 	lw	v0,-23248(v0)
bfc02e2c:	3c040001 	lui	a0,0x1
bfc02e30:	00852021 	addu	a0,a0,a1
bfc02e34:	8c84a530 	lw	a0,-23248(a0)
bfc02e38:	3c050001 	lui	a1,0x1
bfc02e3c:	00a42821 	addu	a1,a1,a0
bfc02e40:	8ca5a530 	lw	a1,-23248(a1)
bfc02e44:	3c060001 	lui	a2,0x1
bfc02e48:	00c53021 	addu	a2,a2,a1
bfc02e4c:	8cc6a530 	lw	a2,-23248(a2)
bfc02e50:	1443073c 	bne	v0,v1,bfc04b44 <inst_error>
bfc02e54:	00000000 	nop
/home/csy/func/inst/n63_sb.S:45
bfc02e58:	3c0a8e71 	lui	t2,0x8e71
bfc02e5c:	354ab1bc 	ori	t2,t2,0xb1bc
bfc02e60:	3c095471 	lui	t1,0x5471
bfc02e64:	3529d562 	ori	t1,t1,0xd562
bfc02e68:	3c08800d 	lui	t0,0x800d
bfc02e6c:	3508383c 	ori	t0,t0,0x383c
bfc02e70:	3c038e62 	lui	v1,0x8e62
bfc02e74:	3463b1bc 	ori	v1,v1,0xb1bc
bfc02e78:	ad0a2270 	sw	t2,8816(t0)
bfc02e7c:	a1092272 	sb	t1,8818(t0)
bfc02e80:	25040004 	addiu	a0,t0,4
bfc02e84:	2505fffc 	addiu	a1,t0,-4
bfc02e88:	ac842270 	sw	a0,8816(a0)
bfc02e8c:	aca52270 	sw	a1,8816(a1)
bfc02e90:	8d022270 	lw	v0,8816(t0)
bfc02e94:	8ca42270 	lw	a0,8816(a1)
bfc02e98:	8c852270 	lw	a1,8816(a0)
bfc02e9c:	8ca62270 	lw	a2,8816(a1)
bfc02ea0:	14430728 	bne	v0,v1,bfc04b44 <inst_error>
bfc02ea4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:46
bfc02ea8:	3c0a03aa 	lui	t2,0x3aa
bfc02eac:	354ae560 	ori	t2,t2,0xe560
bfc02eb0:	3c0919ea 	lui	t1,0x19ea
bfc02eb4:	35296d90 	ori	t1,t1,0x6d90
bfc02eb8:	3c08800d 	lui	t0,0x800d
bfc02ebc:	3c0390aa 	lui	v1,0x90aa
bfc02ec0:	3463e560 	ori	v1,v1,0xe560
bfc02ec4:	3c010001 	lui	at,0x1
bfc02ec8:	00280821 	addu	at,at,t0
bfc02ecc:	ac2af7a8 	sw	t2,-2136(at)
bfc02ed0:	3c010001 	lui	at,0x1
bfc02ed4:	00280821 	addu	at,at,t0
bfc02ed8:	a029f7ab 	sb	t1,-2133(at)
bfc02edc:	25040004 	addiu	a0,t0,4
bfc02ee0:	2505fffc 	addiu	a1,t0,-4
bfc02ee4:	3c010001 	lui	at,0x1
bfc02ee8:	00240821 	addu	at,at,a0
bfc02eec:	ac24f7a8 	sw	a0,-2136(at)
bfc02ef0:	3c010001 	lui	at,0x1
bfc02ef4:	00250821 	addu	at,at,a1
bfc02ef8:	ac25f7a8 	sw	a1,-2136(at)
bfc02efc:	3c020001 	lui	v0,0x1
bfc02f00:	00481021 	addu	v0,v0,t0
bfc02f04:	8c42f7a8 	lw	v0,-2136(v0)
bfc02f08:	3c040001 	lui	a0,0x1
bfc02f0c:	00852021 	addu	a0,a0,a1
bfc02f10:	8c84f7a8 	lw	a0,-2136(a0)
bfc02f14:	3c050001 	lui	a1,0x1
bfc02f18:	00a42821 	addu	a1,a1,a0
bfc02f1c:	8ca5f7a8 	lw	a1,-2136(a1)
bfc02f20:	3c060001 	lui	a2,0x1
bfc02f24:	00c53021 	addu	a2,a2,a1
bfc02f28:	8cc6f7a8 	lw	a2,-2136(a2)
bfc02f2c:	14430705 	bne	v0,v1,bfc04b44 <inst_error>
bfc02f30:	00000000 	nop
/home/csy/func/inst/n63_sb.S:47
bfc02f34:	3c0a4983 	lui	t2,0x4983
bfc02f38:	354a7840 	ori	t2,t2,0x7840
bfc02f3c:	3c092a0a 	lui	t1,0x2a0a
bfc02f40:	3529711c 	ori	t1,t1,0x711c
bfc02f44:	3c08800d 	lui	t0,0x800d
bfc02f48:	3c034983 	lui	v1,0x4983
bfc02f4c:	3463781c 	ori	v1,v1,0x781c
bfc02f50:	ad0a3a40 	sw	t2,14912(t0)
bfc02f54:	a1093a40 	sb	t1,14912(t0)
bfc02f58:	25040004 	addiu	a0,t0,4
bfc02f5c:	2505fffc 	addiu	a1,t0,-4
bfc02f60:	ac843a40 	sw	a0,14912(a0)
bfc02f64:	aca53a40 	sw	a1,14912(a1)
bfc02f68:	8d023a40 	lw	v0,14912(t0)
bfc02f6c:	8ca43a40 	lw	a0,14912(a1)
bfc02f70:	8c853a40 	lw	a1,14912(a0)
bfc02f74:	8ca63a40 	lw	a2,14912(a1)
bfc02f78:	144306f2 	bne	v0,v1,bfc04b44 <inst_error>
bfc02f7c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:48
bfc02f80:	3c0a8508 	lui	t2,0x8508
bfc02f84:	354a13af 	ori	t2,t2,0x13af
bfc02f88:	3c096e98 	lui	t1,0x6e98
bfc02f8c:	3529ee40 	ori	t1,t1,0xee40
bfc02f90:	3c08800d 	lui	t0,0x800d
bfc02f94:	3c038540 	lui	v1,0x8540
bfc02f98:	346313af 	ori	v1,v1,0x13af
bfc02f9c:	ad0a2968 	sw	t2,10600(t0)
bfc02fa0:	a109296a 	sb	t1,10602(t0)
bfc02fa4:	25040004 	addiu	a0,t0,4
bfc02fa8:	2505fffc 	addiu	a1,t0,-4
bfc02fac:	ac842968 	sw	a0,10600(a0)
bfc02fb0:	aca52968 	sw	a1,10600(a1)
bfc02fb4:	8d022968 	lw	v0,10600(t0)
bfc02fb8:	8ca42968 	lw	a0,10600(a1)
bfc02fbc:	8c852968 	lw	a1,10600(a0)
bfc02fc0:	8ca62968 	lw	a2,10600(a1)
bfc02fc4:	144306df 	bne	v0,v1,bfc04b44 <inst_error>
bfc02fc8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:49
bfc02fcc:	3c0a8b01 	lui	t2,0x8b01
bfc02fd0:	354af0c8 	ori	t2,t2,0xf0c8
bfc02fd4:	3c09490a 	lui	t1,0x490a
bfc02fd8:	35290f90 	ori	t1,t1,0xf90
bfc02fdc:	3c08800d 	lui	t0,0x800d
bfc02fe0:	3c039001 	lui	v1,0x9001
bfc02fe4:	3463f0c8 	ori	v1,v1,0xf0c8
bfc02fe8:	ad0a15a4 	sw	t2,5540(t0)
bfc02fec:	a10915a7 	sb	t1,5543(t0)
bfc02ff0:	25040004 	addiu	a0,t0,4
bfc02ff4:	2505fffc 	addiu	a1,t0,-4
bfc02ff8:	ac8415a4 	sw	a0,5540(a0)
bfc02ffc:	aca515a4 	sw	a1,5540(a1)
bfc03000:	8d0215a4 	lw	v0,5540(t0)
bfc03004:	8ca415a4 	lw	a0,5540(a1)
bfc03008:	8c8515a4 	lw	a1,5540(a0)
bfc0300c:	8ca615a4 	lw	a2,5540(a1)
bfc03010:	144306cc 	bne	v0,v1,bfc04b44 <inst_error>
bfc03014:	00000000 	nop
/home/csy/func/inst/n63_sb.S:50
bfc03018:	3c0a553f 	lui	t2,0x553f
bfc0301c:	354a5c64 	ori	t2,t2,0x5c64
bfc03020:	3c092012 	lui	t1,0x2012
bfc03024:	35299920 	ori	t1,t1,0x9920
bfc03028:	3c08800d 	lui	t0,0x800d
bfc0302c:	3c03553f 	lui	v1,0x553f
bfc03030:	34635c20 	ori	v1,v1,0x5c20
bfc03034:	ad0a730c 	sw	t2,29452(t0)
bfc03038:	a109730c 	sb	t1,29452(t0)
bfc0303c:	25040004 	addiu	a0,t0,4
bfc03040:	2505fffc 	addiu	a1,t0,-4
bfc03044:	ac84730c 	sw	a0,29452(a0)
bfc03048:	aca5730c 	sw	a1,29452(a1)
bfc0304c:	8d02730c 	lw	v0,29452(t0)
bfc03050:	8ca4730c 	lw	a0,29452(a1)
bfc03054:	8c85730c 	lw	a1,29452(a0)
bfc03058:	8ca6730c 	lw	a2,29452(a1)
bfc0305c:	144306b9 	bne	v0,v1,bfc04b44 <inst_error>
bfc03060:	00000000 	nop
/home/csy/func/inst/n63_sb.S:51
bfc03064:	3c0acf71 	lui	t2,0xcf71
bfc03068:	354ab130 	ori	t2,t2,0xb130
bfc0306c:	3c099b0a 	lui	t1,0x9b0a
bfc03070:	35294e5c 	ori	t1,t1,0x4e5c
bfc03074:	3c08800d 	lui	t0,0x800d
bfc03078:	3c03cf5c 	lui	v1,0xcf5c
bfc0307c:	3463b130 	ori	v1,v1,0xb130
bfc03080:	ad0a1b00 	sw	t2,6912(t0)
bfc03084:	a1091b02 	sb	t1,6914(t0)
bfc03088:	25040004 	addiu	a0,t0,4
bfc0308c:	2505fffc 	addiu	a1,t0,-4
bfc03090:	ac841b00 	sw	a0,6912(a0)
bfc03094:	aca51b00 	sw	a1,6912(a1)
bfc03098:	8d021b00 	lw	v0,6912(t0)
bfc0309c:	8ca41b00 	lw	a0,6912(a1)
bfc030a0:	8c851b00 	lw	a1,6912(a0)
bfc030a4:	8ca61b00 	lw	a2,6912(a1)
bfc030a8:	144306a6 	bne	v0,v1,bfc04b44 <inst_error>
bfc030ac:	00000000 	nop
/home/csy/func/inst/n63_sb.S:52
bfc030b0:	3c0adfc9 	lui	t2,0xdfc9
bfc030b4:	354a8d18 	ori	t2,t2,0x8d18
bfc030b8:	3c09f64d 	lui	t1,0xf64d
bfc030bc:	3529eefc 	ori	t1,t1,0xeefc
bfc030c0:	3c08800d 	lui	t0,0x800d
bfc030c4:	3c03dfc9 	lui	v1,0xdfc9
bfc030c8:	34638dfc 	ori	v1,v1,0x8dfc
bfc030cc:	3c010001 	lui	at,0x1
bfc030d0:	00280821 	addu	at,at,t0
bfc030d4:	ac2a9150 	sw	t2,-28336(at)
bfc030d8:	3c010001 	lui	at,0x1
bfc030dc:	00280821 	addu	at,at,t0
bfc030e0:	a0299150 	sb	t1,-28336(at)
bfc030e4:	25040004 	addiu	a0,t0,4
bfc030e8:	2505fffc 	addiu	a1,t0,-4
bfc030ec:	3c010001 	lui	at,0x1
bfc030f0:	00240821 	addu	at,at,a0
bfc030f4:	ac249150 	sw	a0,-28336(at)
bfc030f8:	3c010001 	lui	at,0x1
bfc030fc:	00250821 	addu	at,at,a1
bfc03100:	ac259150 	sw	a1,-28336(at)
bfc03104:	3c020001 	lui	v0,0x1
bfc03108:	00481021 	addu	v0,v0,t0
bfc0310c:	8c429150 	lw	v0,-28336(v0)
bfc03110:	3c040001 	lui	a0,0x1
bfc03114:	00852021 	addu	a0,a0,a1
bfc03118:	8c849150 	lw	a0,-28336(a0)
bfc0311c:	3c050001 	lui	a1,0x1
bfc03120:	00a42821 	addu	a1,a1,a0
bfc03124:	8ca59150 	lw	a1,-28336(a1)
bfc03128:	3c060001 	lui	a2,0x1
bfc0312c:	00c53021 	addu	a2,a2,a1
bfc03130:	8cc69150 	lw	a2,-28336(a2)
bfc03134:	14430683 	bne	v0,v1,bfc04b44 <inst_error>
bfc03138:	00000000 	nop
/home/csy/func/inst/n63_sb.S:53
bfc0313c:	3c0a5f92 	lui	t2,0x5f92
bfc03140:	354aa4bd 	ori	t2,t2,0xa4bd
bfc03144:	3c0953ab 	lui	t1,0x53ab
bfc03148:	3529798c 	ori	t1,t1,0x798c
bfc0314c:	3c08800d 	lui	t0,0x800d
bfc03150:	3c035f8c 	lui	v1,0x5f8c
bfc03154:	3463a4bd 	ori	v1,v1,0xa4bd
bfc03158:	3c010001 	lui	at,0x1
bfc0315c:	00280821 	addu	at,at,t0
bfc03160:	ac2abe78 	sw	t2,-16776(at)
bfc03164:	3c010001 	lui	at,0x1
bfc03168:	00280821 	addu	at,at,t0
bfc0316c:	a029be7a 	sb	t1,-16774(at)
bfc03170:	25040004 	addiu	a0,t0,4
bfc03174:	2505fffc 	addiu	a1,t0,-4
bfc03178:	3c010001 	lui	at,0x1
bfc0317c:	00240821 	addu	at,at,a0
bfc03180:	ac24be78 	sw	a0,-16776(at)
bfc03184:	3c010001 	lui	at,0x1
bfc03188:	00250821 	addu	at,at,a1
bfc0318c:	ac25be78 	sw	a1,-16776(at)
bfc03190:	3c020001 	lui	v0,0x1
bfc03194:	00481021 	addu	v0,v0,t0
bfc03198:	8c42be78 	lw	v0,-16776(v0)
bfc0319c:	3c040001 	lui	a0,0x1
bfc031a0:	00852021 	addu	a0,a0,a1
bfc031a4:	8c84be78 	lw	a0,-16776(a0)
bfc031a8:	3c050001 	lui	a1,0x1
bfc031ac:	00a42821 	addu	a1,a1,a0
bfc031b0:	8ca5be78 	lw	a1,-16776(a1)
bfc031b4:	3c060001 	lui	a2,0x1
bfc031b8:	00c53021 	addu	a2,a2,a1
bfc031bc:	8cc6be78 	lw	a2,-16776(a2)
bfc031c0:	14430660 	bne	v0,v1,bfc04b44 <inst_error>
bfc031c4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:54
bfc031c8:	3c0a8bb6 	lui	t2,0x8bb6
bfc031cc:	354aa77b 	ori	t2,t2,0xa77b
bfc031d0:	3c09f7b8 	lui	t1,0xf7b8
bfc031d4:	35296140 	ori	t1,t1,0x6140
bfc031d8:	3c08800d 	lui	t0,0x800d
bfc031dc:	3c038b40 	lui	v1,0x8b40
bfc031e0:	3463a77b 	ori	v1,v1,0xa77b
bfc031e4:	ad0a1374 	sw	t2,4980(t0)
bfc031e8:	a1091376 	sb	t1,4982(t0)
bfc031ec:	25040004 	addiu	a0,t0,4
bfc031f0:	2505fffc 	addiu	a1,t0,-4
bfc031f4:	ac841374 	sw	a0,4980(a0)
bfc031f8:	aca51374 	sw	a1,4980(a1)
bfc031fc:	8d021374 	lw	v0,4980(t0)
bfc03200:	8ca41374 	lw	a0,4980(a1)
bfc03204:	8c851374 	lw	a1,4980(a0)
bfc03208:	8ca61374 	lw	a2,4980(a1)
bfc0320c:	1443064d 	bne	v0,v1,bfc04b44 <inst_error>
bfc03210:	00000000 	nop
/home/csy/func/inst/n63_sb.S:55
bfc03214:	3c0ab10c 	lui	t2,0xb10c
bfc03218:	354a9e34 	ori	t2,t2,0x9e34
bfc0321c:	3c09b3ce 	lui	t1,0xb3ce
bfc03220:	35296a64 	ori	t1,t1,0x6a64
bfc03224:	3c08800d 	lui	t0,0x800d
bfc03228:	3c03b10c 	lui	v1,0xb10c
bfc0322c:	34639e64 	ori	v1,v1,0x9e64
bfc03230:	3c010001 	lui	at,0x1
bfc03234:	00280821 	addu	at,at,t0
bfc03238:	ac2a9b60 	sw	t2,-25760(at)
bfc0323c:	3c010001 	lui	at,0x1
bfc03240:	00280821 	addu	at,at,t0
bfc03244:	a0299b60 	sb	t1,-25760(at)
bfc03248:	25040004 	addiu	a0,t0,4
bfc0324c:	2505fffc 	addiu	a1,t0,-4
bfc03250:	3c010001 	lui	at,0x1
bfc03254:	00240821 	addu	at,at,a0
bfc03258:	ac249b60 	sw	a0,-25760(at)
bfc0325c:	3c010001 	lui	at,0x1
bfc03260:	00250821 	addu	at,at,a1
bfc03264:	ac259b60 	sw	a1,-25760(at)
bfc03268:	3c020001 	lui	v0,0x1
bfc0326c:	00481021 	addu	v0,v0,t0
bfc03270:	8c429b60 	lw	v0,-25760(v0)
bfc03274:	3c040001 	lui	a0,0x1
bfc03278:	00852021 	addu	a0,a0,a1
bfc0327c:	8c849b60 	lw	a0,-25760(a0)
bfc03280:	3c050001 	lui	a1,0x1
bfc03284:	00a42821 	addu	a1,a1,a0
bfc03288:	8ca59b60 	lw	a1,-25760(a1)
bfc0328c:	3c060001 	lui	a2,0x1
bfc03290:	00c53021 	addu	a2,a2,a1
bfc03294:	8cc69b60 	lw	a2,-25760(a2)
bfc03298:	1443062a 	bne	v0,v1,bfc04b44 <inst_error>
bfc0329c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:56
bfc032a0:	3c0a6c79 	lui	t2,0x6c79
bfc032a4:	354addc8 	ori	t2,t2,0xddc8
bfc032a8:	3c09d8f2 	lui	t1,0xd8f2
bfc032ac:	3529d0f0 	ori	t1,t1,0xd0f0
bfc032b0:	3c08800d 	lui	t0,0x800d
bfc032b4:	3c036cf0 	lui	v1,0x6cf0
bfc032b8:	3463ddc8 	ori	v1,v1,0xddc8
bfc032bc:	3c010001 	lui	at,0x1
bfc032c0:	00280821 	addu	at,at,t0
bfc032c4:	ac2ac340 	sw	t2,-15552(at)
bfc032c8:	3c010001 	lui	at,0x1
bfc032cc:	00280821 	addu	at,at,t0
bfc032d0:	a029c342 	sb	t1,-15550(at)
bfc032d4:	25040004 	addiu	a0,t0,4
bfc032d8:	2505fffc 	addiu	a1,t0,-4
bfc032dc:	3c010001 	lui	at,0x1
bfc032e0:	00240821 	addu	at,at,a0
bfc032e4:	ac24c340 	sw	a0,-15552(at)
bfc032e8:	3c010001 	lui	at,0x1
bfc032ec:	00250821 	addu	at,at,a1
bfc032f0:	ac25c340 	sw	a1,-15552(at)
bfc032f4:	3c020001 	lui	v0,0x1
bfc032f8:	00481021 	addu	v0,v0,t0
bfc032fc:	8c42c340 	lw	v0,-15552(v0)
bfc03300:	3c040001 	lui	a0,0x1
bfc03304:	00852021 	addu	a0,a0,a1
bfc03308:	8c84c340 	lw	a0,-15552(a0)
bfc0330c:	3c050001 	lui	a1,0x1
bfc03310:	00a42821 	addu	a1,a1,a0
bfc03314:	8ca5c340 	lw	a1,-15552(a1)
bfc03318:	3c060001 	lui	a2,0x1
bfc0331c:	00c53021 	addu	a2,a2,a1
bfc03320:	8cc6c340 	lw	a2,-15552(a2)
bfc03324:	14430607 	bne	v0,v1,bfc04b44 <inst_error>
bfc03328:	00000000 	nop
/home/csy/func/inst/n63_sb.S:57
bfc0332c:	3c0a9ff6 	lui	t2,0x9ff6
bfc03330:	354a2c5a 	ori	t2,t2,0x2c5a
bfc03334:	3c09da5c 	lui	t1,0xda5c
bfc03338:	35299528 	ori	t1,t1,0x9528
bfc0333c:	3c08800d 	lui	t0,0x800d
bfc03340:	3c039ff6 	lui	v1,0x9ff6
bfc03344:	34632c28 	ori	v1,v1,0x2c28
bfc03348:	3c010001 	lui	at,0x1
bfc0334c:	00280821 	addu	at,at,t0
bfc03350:	ac2ad92c 	sw	t2,-9940(at)
bfc03354:	3c010001 	lui	at,0x1
bfc03358:	00280821 	addu	at,at,t0
bfc0335c:	a029d92c 	sb	t1,-9940(at)
bfc03360:	25040004 	addiu	a0,t0,4
bfc03364:	2505fffc 	addiu	a1,t0,-4
bfc03368:	3c010001 	lui	at,0x1
bfc0336c:	00240821 	addu	at,at,a0
bfc03370:	ac24d92c 	sw	a0,-9940(at)
bfc03374:	3c010001 	lui	at,0x1
bfc03378:	00250821 	addu	at,at,a1
bfc0337c:	ac25d92c 	sw	a1,-9940(at)
bfc03380:	3c020001 	lui	v0,0x1
bfc03384:	00481021 	addu	v0,v0,t0
bfc03388:	8c42d92c 	lw	v0,-9940(v0)
bfc0338c:	3c040001 	lui	a0,0x1
bfc03390:	00852021 	addu	a0,a0,a1
bfc03394:	8c84d92c 	lw	a0,-9940(a0)
bfc03398:	3c050001 	lui	a1,0x1
bfc0339c:	00a42821 	addu	a1,a1,a0
bfc033a0:	8ca5d92c 	lw	a1,-9940(a1)
bfc033a4:	3c060001 	lui	a2,0x1
bfc033a8:	00c53021 	addu	a2,a2,a1
bfc033ac:	8cc6d92c 	lw	a2,-9940(a2)
bfc033b0:	144305e4 	bne	v0,v1,bfc04b44 <inst_error>
bfc033b4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:58
bfc033b8:	3c0a8d23 	lui	t2,0x8d23
bfc033bc:	354aef7b 	ori	t2,t2,0xef7b
bfc033c0:	3c09e20e 	lui	t1,0xe20e
bfc033c4:	3529e422 	ori	t1,t1,0xe422
bfc033c8:	3c08800d 	lui	t0,0x800d
bfc033cc:	3c038d22 	lui	v1,0x8d22
bfc033d0:	3463ef7b 	ori	v1,v1,0xef7b
bfc033d4:	ad0a3f1c 	sw	t2,16156(t0)
bfc033d8:	a1093f1e 	sb	t1,16158(t0)
bfc033dc:	25040004 	addiu	a0,t0,4
bfc033e0:	2505fffc 	addiu	a1,t0,-4
bfc033e4:	ac843f1c 	sw	a0,16156(a0)
bfc033e8:	aca53f1c 	sw	a1,16156(a1)
bfc033ec:	8d023f1c 	lw	v0,16156(t0)
bfc033f0:	8ca43f1c 	lw	a0,16156(a1)
bfc033f4:	8c853f1c 	lw	a1,16156(a0)
bfc033f8:	8ca63f1c 	lw	a2,16156(a1)
bfc033fc:	144305d1 	bne	v0,v1,bfc04b44 <inst_error>
bfc03400:	00000000 	nop
/home/csy/func/inst/n63_sb.S:59
bfc03404:	3c0a021a 	lui	t2,0x21a
bfc03408:	354a8000 	ori	t2,t2,0x8000
bfc0340c:	3c09ab92 	lui	t1,0xab92
bfc03410:	35292c0e 	ori	t1,t1,0x2c0e
bfc03414:	3c08800d 	lui	t0,0x800d
bfc03418:	3c030e1a 	lui	v1,0xe1a
bfc0341c:	34638000 	ori	v1,v1,0x8000
bfc03420:	ad0a669c 	sw	t2,26268(t0)
bfc03424:	a109669f 	sb	t1,26271(t0)
bfc03428:	25040004 	addiu	a0,t0,4
bfc0342c:	2505fffc 	addiu	a1,t0,-4
bfc03430:	ac84669c 	sw	a0,26268(a0)
bfc03434:	aca5669c 	sw	a1,26268(a1)
bfc03438:	8d02669c 	lw	v0,26268(t0)
bfc0343c:	8ca4669c 	lw	a0,26268(a1)
bfc03440:	8c85669c 	lw	a1,26268(a0)
bfc03444:	8ca6669c 	lw	a2,26268(a1)
bfc03448:	144305be 	bne	v0,v1,bfc04b44 <inst_error>
bfc0344c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:60
bfc03450:	3c0a2b32 	lui	t2,0x2b32
bfc03454:	354a3168 	ori	t2,t2,0x3168
bfc03458:	3c09b481 	lui	t1,0xb481
bfc0345c:	35290280 	ori	t1,t1,0x280
bfc03460:	3c08800d 	lui	t0,0x800d
bfc03464:	3c032b80 	lui	v1,0x2b80
bfc03468:	34633168 	ori	v1,v1,0x3168
bfc0346c:	3c010001 	lui	at,0x1
bfc03470:	00280821 	addu	at,at,t0
bfc03474:	ac2a94b0 	sw	t2,-27472(at)
bfc03478:	3c010001 	lui	at,0x1
bfc0347c:	00280821 	addu	at,at,t0
bfc03480:	a02994b2 	sb	t1,-27470(at)
bfc03484:	25040004 	addiu	a0,t0,4
bfc03488:	2505fffc 	addiu	a1,t0,-4
bfc0348c:	3c010001 	lui	at,0x1
bfc03490:	00240821 	addu	at,at,a0
bfc03494:	ac2494b0 	sw	a0,-27472(at)
bfc03498:	3c010001 	lui	at,0x1
bfc0349c:	00250821 	addu	at,at,a1
bfc034a0:	ac2594b0 	sw	a1,-27472(at)
bfc034a4:	3c020001 	lui	v0,0x1
bfc034a8:	00481021 	addu	v0,v0,t0
bfc034ac:	8c4294b0 	lw	v0,-27472(v0)
bfc034b0:	3c040001 	lui	a0,0x1
bfc034b4:	00852021 	addu	a0,a0,a1
bfc034b8:	8c8494b0 	lw	a0,-27472(a0)
bfc034bc:	3c050001 	lui	a1,0x1
bfc034c0:	00a42821 	addu	a1,a1,a0
bfc034c4:	8ca594b0 	lw	a1,-27472(a1)
bfc034c8:	3c060001 	lui	a2,0x1
bfc034cc:	00c53021 	addu	a2,a2,a1
bfc034d0:	8cc694b0 	lw	a2,-27472(a2)
bfc034d4:	1443059b 	bne	v0,v1,bfc04b44 <inst_error>
bfc034d8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:61
bfc034dc:	3c0afa0a 	lui	t2,0xfa0a
bfc034e0:	354a8cc8 	ori	t2,t2,0x8cc8
bfc034e4:	3c091ab8 	lui	t1,0x1ab8
bfc034e8:	35293286 	ori	t1,t1,0x3286
bfc034ec:	3c08800d 	lui	t0,0x800d
bfc034f0:	3c03fa86 	lui	v1,0xfa86
bfc034f4:	34638cc8 	ori	v1,v1,0x8cc8
bfc034f8:	3c010001 	lui	at,0x1
bfc034fc:	00280821 	addu	at,at,t0
bfc03500:	ac2a9a0c 	sw	t2,-26100(at)
bfc03504:	3c010001 	lui	at,0x1
bfc03508:	00280821 	addu	at,at,t0
bfc0350c:	a0299a0e 	sb	t1,-26098(at)
bfc03510:	25040004 	addiu	a0,t0,4
bfc03514:	2505fffc 	addiu	a1,t0,-4
bfc03518:	3c010001 	lui	at,0x1
bfc0351c:	00240821 	addu	at,at,a0
bfc03520:	ac249a0c 	sw	a0,-26100(at)
bfc03524:	3c010001 	lui	at,0x1
bfc03528:	00250821 	addu	at,at,a1
bfc0352c:	ac259a0c 	sw	a1,-26100(at)
bfc03530:	3c020001 	lui	v0,0x1
bfc03534:	00481021 	addu	v0,v0,t0
bfc03538:	8c429a0c 	lw	v0,-26100(v0)
bfc0353c:	3c040001 	lui	a0,0x1
bfc03540:	00852021 	addu	a0,a0,a1
bfc03544:	8c849a0c 	lw	a0,-26100(a0)
bfc03548:	3c050001 	lui	a1,0x1
bfc0354c:	00a42821 	addu	a1,a1,a0
bfc03550:	8ca59a0c 	lw	a1,-26100(a1)
bfc03554:	3c060001 	lui	a2,0x1
bfc03558:	00c53021 	addu	a2,a2,a1
bfc0355c:	8cc69a0c 	lw	a2,-26100(a2)
bfc03560:	14430578 	bne	v0,v1,bfc04b44 <inst_error>
bfc03564:	00000000 	nop
/home/csy/func/inst/n63_sb.S:62
bfc03568:	3c0afba3 	lui	t2,0xfba3
bfc0356c:	354a5550 	ori	t2,t2,0x5550
bfc03570:	3c095f6c 	lui	t1,0x5f6c
bfc03574:	3529f2b0 	ori	t1,t1,0xf2b0
bfc03578:	3c08800d 	lui	t0,0x800d
bfc0357c:	3c03fba3 	lui	v1,0xfba3
bfc03580:	346355b0 	ori	v1,v1,0x55b0
bfc03584:	3c010001 	lui	at,0x1
bfc03588:	00280821 	addu	at,at,t0
bfc0358c:	ac2a8c40 	sw	t2,-29632(at)
bfc03590:	3c010001 	lui	at,0x1
bfc03594:	00280821 	addu	at,at,t0
bfc03598:	a0298c40 	sb	t1,-29632(at)
bfc0359c:	25040004 	addiu	a0,t0,4
bfc035a0:	2505fffc 	addiu	a1,t0,-4
bfc035a4:	3c010001 	lui	at,0x1
bfc035a8:	00240821 	addu	at,at,a0
bfc035ac:	ac248c40 	sw	a0,-29632(at)
bfc035b0:	3c010001 	lui	at,0x1
bfc035b4:	00250821 	addu	at,at,a1
bfc035b8:	ac258c40 	sw	a1,-29632(at)
bfc035bc:	3c020001 	lui	v0,0x1
bfc035c0:	00481021 	addu	v0,v0,t0
bfc035c4:	8c428c40 	lw	v0,-29632(v0)
bfc035c8:	3c040001 	lui	a0,0x1
bfc035cc:	00852021 	addu	a0,a0,a1
bfc035d0:	8c848c40 	lw	a0,-29632(a0)
bfc035d4:	3c050001 	lui	a1,0x1
bfc035d8:	00a42821 	addu	a1,a1,a0
bfc035dc:	8ca58c40 	lw	a1,-29632(a1)
bfc035e0:	3c060001 	lui	a2,0x1
bfc035e4:	00c53021 	addu	a2,a2,a1
bfc035e8:	8cc68c40 	lw	a2,-29632(a2)
bfc035ec:	14430555 	bne	v0,v1,bfc04b44 <inst_error>
bfc035f0:	00000000 	nop
/home/csy/func/inst/n63_sb.S:63
bfc035f4:	3c0accdc 	lui	t2,0xccdc
bfc035f8:	354a0930 	ori	t2,t2,0x930
bfc035fc:	3c0920dc 	lui	t1,0x20dc
bfc03600:	3529cff4 	ori	t1,t1,0xcff4
bfc03604:	3c08800d 	lui	t0,0x800d
bfc03608:	3c03ccdc 	lui	v1,0xccdc
bfc0360c:	346309f4 	ori	v1,v1,0x9f4
bfc03610:	3c010001 	lui	at,0x1
bfc03614:	00280821 	addu	at,at,t0
bfc03618:	ac2aaae8 	sw	t2,-21784(at)
bfc0361c:	3c010001 	lui	at,0x1
bfc03620:	00280821 	addu	at,at,t0
bfc03624:	a029aae8 	sb	t1,-21784(at)
bfc03628:	25040004 	addiu	a0,t0,4
bfc0362c:	2505fffc 	addiu	a1,t0,-4
bfc03630:	3c010001 	lui	at,0x1
bfc03634:	00240821 	addu	at,at,a0
bfc03638:	ac24aae8 	sw	a0,-21784(at)
bfc0363c:	3c010001 	lui	at,0x1
bfc03640:	00250821 	addu	at,at,a1
bfc03644:	ac25aae8 	sw	a1,-21784(at)
bfc03648:	3c020001 	lui	v0,0x1
bfc0364c:	00481021 	addu	v0,v0,t0
bfc03650:	8c42aae8 	lw	v0,-21784(v0)
bfc03654:	3c040001 	lui	a0,0x1
bfc03658:	00852021 	addu	a0,a0,a1
bfc0365c:	8c84aae8 	lw	a0,-21784(a0)
bfc03660:	3c050001 	lui	a1,0x1
bfc03664:	00a42821 	addu	a1,a1,a0
bfc03668:	8ca5aae8 	lw	a1,-21784(a1)
bfc0366c:	3c060001 	lui	a2,0x1
bfc03670:	00c53021 	addu	a2,a2,a1
bfc03674:	8cc6aae8 	lw	a2,-21784(a2)
bfc03678:	14430532 	bne	v0,v1,bfc04b44 <inst_error>
bfc0367c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:64
bfc03680:	3c0a50ef 	lui	t2,0x50ef
bfc03684:	354ae178 	ori	t2,t2,0xe178
bfc03688:	3c0900f8 	lui	t1,0xf8
bfc0368c:	3529ce7a 	ori	t1,t1,0xce7a
bfc03690:	3c08800d 	lui	t0,0x800d
bfc03694:	3c0350ef 	lui	v1,0x50ef
bfc03698:	3463e17a 	ori	v1,v1,0xe17a
bfc0369c:	ad0a1e5c 	sw	t2,7772(t0)
bfc036a0:	a1091e5c 	sb	t1,7772(t0)
bfc036a4:	25040004 	addiu	a0,t0,4
bfc036a8:	2505fffc 	addiu	a1,t0,-4
bfc036ac:	ac841e5c 	sw	a0,7772(a0)
bfc036b0:	aca51e5c 	sw	a1,7772(a1)
bfc036b4:	8d021e5c 	lw	v0,7772(t0)
bfc036b8:	8ca41e5c 	lw	a0,7772(a1)
bfc036bc:	8c851e5c 	lw	a1,7772(a0)
bfc036c0:	8ca61e5c 	lw	a2,7772(a1)
bfc036c4:	1443051f 	bne	v0,v1,bfc04b44 <inst_error>
bfc036c8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:65
bfc036cc:	3c0ac894 	lui	t2,0xc894
bfc036d0:	354a6b68 	ori	t2,t2,0x6b68
bfc036d4:	3c091e1f 	lui	t1,0x1e1f
bfc036d8:	3529cf80 	ori	t1,t1,0xcf80
bfc036dc:	3c08800d 	lui	t0,0x800d
bfc036e0:	3c03c894 	lui	v1,0xc894
bfc036e4:	34636b80 	ori	v1,v1,0x6b80
bfc036e8:	ad0a5cac 	sw	t2,23724(t0)
bfc036ec:	a1095cac 	sb	t1,23724(t0)
bfc036f0:	25040004 	addiu	a0,t0,4
bfc036f4:	2505fffc 	addiu	a1,t0,-4
bfc036f8:	ac845cac 	sw	a0,23724(a0)
bfc036fc:	aca55cac 	sw	a1,23724(a1)
bfc03700:	8d025cac 	lw	v0,23724(t0)
bfc03704:	8ca45cac 	lw	a0,23724(a1)
bfc03708:	8c855cac 	lw	a1,23724(a0)
bfc0370c:	8ca65cac 	lw	a2,23724(a1)
bfc03710:	1443050c 	bne	v0,v1,bfc04b44 <inst_error>
bfc03714:	00000000 	nop
/home/csy/func/inst/n63_sb.S:66
bfc03718:	3c0a9e0e 	lui	t2,0x9e0e
bfc0371c:	354afce6 	ori	t2,t2,0xfce6
bfc03720:	3c096b0a 	lui	t1,0x6b0a
bfc03724:	3529b578 	ori	t1,t1,0xb578
bfc03728:	3c08800d 	lui	t0,0x800d
bfc0372c:	3c039e0e 	lui	v1,0x9e0e
bfc03730:	3463fc78 	ori	v1,v1,0xfc78
bfc03734:	ad0a5c18 	sw	t2,23576(t0)
bfc03738:	a1095c18 	sb	t1,23576(t0)
bfc0373c:	25040004 	addiu	a0,t0,4
bfc03740:	2505fffc 	addiu	a1,t0,-4
bfc03744:	ac845c18 	sw	a0,23576(a0)
bfc03748:	aca55c18 	sw	a1,23576(a1)
bfc0374c:	8d025c18 	lw	v0,23576(t0)
bfc03750:	8ca45c18 	lw	a0,23576(a1)
bfc03754:	8c855c18 	lw	a1,23576(a0)
bfc03758:	8ca65c18 	lw	a2,23576(a1)
bfc0375c:	144304f9 	bne	v0,v1,bfc04b44 <inst_error>
bfc03760:	00000000 	nop
/home/csy/func/inst/n63_sb.S:67
bfc03764:	3c0a55b3 	lui	t2,0x55b3
bfc03768:	354a2c78 	ori	t2,t2,0x2c78
bfc0376c:	3c094395 	lui	t1,0x4395
bfc03770:	35295964 	ori	t1,t1,0x5964
bfc03774:	3c08800d 	lui	t0,0x800d
bfc03778:	3c035564 	lui	v1,0x5564
bfc0377c:	34632c78 	ori	v1,v1,0x2c78
bfc03780:	3c010001 	lui	at,0x1
bfc03784:	00280821 	addu	at,at,t0
bfc03788:	ac2ae5d0 	sw	t2,-6704(at)
bfc0378c:	3c010001 	lui	at,0x1
bfc03790:	00280821 	addu	at,at,t0
bfc03794:	a029e5d2 	sb	t1,-6702(at)
bfc03798:	25040004 	addiu	a0,t0,4
bfc0379c:	2505fffc 	addiu	a1,t0,-4
bfc037a0:	3c010001 	lui	at,0x1
bfc037a4:	00240821 	addu	at,at,a0
bfc037a8:	ac24e5d0 	sw	a0,-6704(at)
bfc037ac:	3c010001 	lui	at,0x1
bfc037b0:	00250821 	addu	at,at,a1
bfc037b4:	ac25e5d0 	sw	a1,-6704(at)
bfc037b8:	3c020001 	lui	v0,0x1
bfc037bc:	00481021 	addu	v0,v0,t0
bfc037c0:	8c42e5d0 	lw	v0,-6704(v0)
bfc037c4:	3c040001 	lui	a0,0x1
bfc037c8:	00852021 	addu	a0,a0,a1
bfc037cc:	8c84e5d0 	lw	a0,-6704(a0)
bfc037d0:	3c050001 	lui	a1,0x1
bfc037d4:	00a42821 	addu	a1,a1,a0
bfc037d8:	8ca5e5d0 	lw	a1,-6704(a1)
bfc037dc:	3c060001 	lui	a2,0x1
bfc037e0:	00c53021 	addu	a2,a2,a1
bfc037e4:	8cc6e5d0 	lw	a2,-6704(a2)
bfc037e8:	144304d6 	bne	v0,v1,bfc04b44 <inst_error>
bfc037ec:	00000000 	nop
/home/csy/func/inst/n63_sb.S:68
bfc037f0:	3c0af2e0 	lui	t2,0xf2e0
bfc037f4:	354a2444 	ori	t2,t2,0x2444
bfc037f8:	3c09385c 	lui	t1,0x385c
bfc037fc:	35290602 	ori	t1,t1,0x602
bfc03800:	3c08800d 	lui	t0,0x800d
bfc03804:	3c03f202 	lui	v1,0xf202
bfc03808:	34632444 	ori	v1,v1,0x2444
bfc0380c:	3c010001 	lui	at,0x1
bfc03810:	00280821 	addu	at,at,t0
bfc03814:	ac2aa2e4 	sw	t2,-23836(at)
bfc03818:	3c010001 	lui	at,0x1
bfc0381c:	00280821 	addu	at,at,t0
bfc03820:	a029a2e6 	sb	t1,-23834(at)
bfc03824:	25040004 	addiu	a0,t0,4
bfc03828:	2505fffc 	addiu	a1,t0,-4
bfc0382c:	3c010001 	lui	at,0x1
bfc03830:	00240821 	addu	at,at,a0
bfc03834:	ac24a2e4 	sw	a0,-23836(at)
bfc03838:	3c010001 	lui	at,0x1
bfc0383c:	00250821 	addu	at,at,a1
bfc03840:	ac25a2e4 	sw	a1,-23836(at)
bfc03844:	3c020001 	lui	v0,0x1
bfc03848:	00481021 	addu	v0,v0,t0
bfc0384c:	8c42a2e4 	lw	v0,-23836(v0)
bfc03850:	3c040001 	lui	a0,0x1
bfc03854:	00852021 	addu	a0,a0,a1
bfc03858:	8c84a2e4 	lw	a0,-23836(a0)
bfc0385c:	3c050001 	lui	a1,0x1
bfc03860:	00a42821 	addu	a1,a1,a0
bfc03864:	8ca5a2e4 	lw	a1,-23836(a1)
bfc03868:	3c060001 	lui	a2,0x1
bfc0386c:	00c53021 	addu	a2,a2,a1
bfc03870:	8cc6a2e4 	lw	a2,-23836(a2)
bfc03874:	144304b3 	bne	v0,v1,bfc04b44 <inst_error>
bfc03878:	00000000 	nop
/home/csy/func/inst/n63_sb.S:69
bfc0387c:	3c0aa34c 	lui	t2,0xa34c
bfc03880:	354af9ae 	ori	t2,t2,0xf9ae
bfc03884:	3c09befc 	lui	t1,0xbefc
bfc03888:	35299708 	ori	t1,t1,0x9708
bfc0388c:	3c08800d 	lui	t0,0x800d
bfc03890:	3c03a308 	lui	v1,0xa308
bfc03894:	3463f9ae 	ori	v1,v1,0xf9ae
bfc03898:	ad0a1474 	sw	t2,5236(t0)
bfc0389c:	a1091476 	sb	t1,5238(t0)
bfc038a0:	25040004 	addiu	a0,t0,4
bfc038a4:	2505fffc 	addiu	a1,t0,-4
bfc038a8:	ac841474 	sw	a0,5236(a0)
bfc038ac:	aca51474 	sw	a1,5236(a1)
bfc038b0:	8d021474 	lw	v0,5236(t0)
bfc038b4:	8ca41474 	lw	a0,5236(a1)
bfc038b8:	8c851474 	lw	a1,5236(a0)
bfc038bc:	8ca61474 	lw	a2,5236(a1)
bfc038c0:	144304a0 	bne	v0,v1,bfc04b44 <inst_error>
bfc038c4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:70
bfc038c8:	3c0adea4 	lui	t2,0xdea4
bfc038cc:	354afad0 	ori	t2,t2,0xfad0
bfc038d0:	3c097313 	lui	t1,0x7313
bfc038d4:	3529e200 	ori	t1,t1,0xe200
bfc038d8:	3c08800d 	lui	t0,0x800d
bfc038dc:	3c03dea4 	lui	v1,0xdea4
bfc038e0:	3463fa00 	ori	v1,v1,0xfa00
bfc038e4:	3c010001 	lui	at,0x1
bfc038e8:	00280821 	addu	at,at,t0
bfc038ec:	ac2a9b0c 	sw	t2,-25844(at)
bfc038f0:	3c010001 	lui	at,0x1
bfc038f4:	00280821 	addu	at,at,t0
bfc038f8:	a0299b0c 	sb	t1,-25844(at)
bfc038fc:	25040004 	addiu	a0,t0,4
bfc03900:	2505fffc 	addiu	a1,t0,-4
bfc03904:	3c010001 	lui	at,0x1
bfc03908:	00240821 	addu	at,at,a0
bfc0390c:	ac249b0c 	sw	a0,-25844(at)
bfc03910:	3c010001 	lui	at,0x1
bfc03914:	00250821 	addu	at,at,a1
bfc03918:	ac259b0c 	sw	a1,-25844(at)
bfc0391c:	3c020001 	lui	v0,0x1
bfc03920:	00481021 	addu	v0,v0,t0
bfc03924:	8c429b0c 	lw	v0,-25844(v0)
bfc03928:	3c040001 	lui	a0,0x1
bfc0392c:	00852021 	addu	a0,a0,a1
bfc03930:	8c849b0c 	lw	a0,-25844(a0)
bfc03934:	3c050001 	lui	a1,0x1
bfc03938:	00a42821 	addu	a1,a1,a0
bfc0393c:	8ca59b0c 	lw	a1,-25844(a1)
bfc03940:	3c060001 	lui	a2,0x1
bfc03944:	00c53021 	addu	a2,a2,a1
bfc03948:	8cc69b0c 	lw	a2,-25844(a2)
bfc0394c:	1443047d 	bne	v0,v1,bfc04b44 <inst_error>
bfc03950:	00000000 	nop
/home/csy/func/inst/n63_sb.S:71
bfc03954:	3c0abcdf 	lui	t2,0xbcdf
bfc03958:	354a3620 	ori	t2,t2,0x3620
bfc0395c:	3c099a6d 	lui	t1,0x9a6d
bfc03960:	3529a064 	ori	t1,t1,0xa064
bfc03964:	3c08800d 	lui	t0,0x800d
bfc03968:	3c03bcdf 	lui	v1,0xbcdf
bfc0396c:	34633664 	ori	v1,v1,0x3664
bfc03970:	3c010001 	lui	at,0x1
bfc03974:	00280821 	addu	at,at,t0
bfc03978:	ac2a8a00 	sw	t2,-30208(at)
bfc0397c:	3c010001 	lui	at,0x1
bfc03980:	00280821 	addu	at,at,t0
bfc03984:	a0298a00 	sb	t1,-30208(at)
bfc03988:	25040004 	addiu	a0,t0,4
bfc0398c:	2505fffc 	addiu	a1,t0,-4
bfc03990:	3c010001 	lui	at,0x1
bfc03994:	00240821 	addu	at,at,a0
bfc03998:	ac248a00 	sw	a0,-30208(at)
bfc0399c:	3c010001 	lui	at,0x1
bfc039a0:	00250821 	addu	at,at,a1
bfc039a4:	ac258a00 	sw	a1,-30208(at)
bfc039a8:	3c020001 	lui	v0,0x1
bfc039ac:	00481021 	addu	v0,v0,t0
bfc039b0:	8c428a00 	lw	v0,-30208(v0)
bfc039b4:	3c040001 	lui	a0,0x1
bfc039b8:	00852021 	addu	a0,a0,a1
bfc039bc:	8c848a00 	lw	a0,-30208(a0)
bfc039c0:	3c050001 	lui	a1,0x1
bfc039c4:	00a42821 	addu	a1,a1,a0
bfc039c8:	8ca58a00 	lw	a1,-30208(a1)
bfc039cc:	3c060001 	lui	a2,0x1
bfc039d0:	00c53021 	addu	a2,a2,a1
bfc039d4:	8cc68a00 	lw	a2,-30208(a2)
bfc039d8:	1443045a 	bne	v0,v1,bfc04b44 <inst_error>
bfc039dc:	00000000 	nop
/home/csy/func/inst/n63_sb.S:72
bfc039e0:	3c0aa3ed 	lui	t2,0xa3ed
bfc039e4:	354aa870 	ori	t2,t2,0xa870
bfc039e8:	3c0980f6 	lui	t1,0x80f6
bfc039ec:	3529ff70 	ori	t1,t1,0xff70
bfc039f0:	3c08800d 	lui	t0,0x800d
bfc039f4:	3c03a3ed 	lui	v1,0xa3ed
bfc039f8:	3463a870 	ori	v1,v1,0xa870
bfc039fc:	ad0a6410 	sw	t2,25616(t0)
bfc03a00:	a1096410 	sb	t1,25616(t0)
bfc03a04:	25040004 	addiu	a0,t0,4
bfc03a08:	2505fffc 	addiu	a1,t0,-4
bfc03a0c:	ac846410 	sw	a0,25616(a0)
bfc03a10:	aca56410 	sw	a1,25616(a1)
bfc03a14:	8d026410 	lw	v0,25616(t0)
bfc03a18:	8ca46410 	lw	a0,25616(a1)
bfc03a1c:	8c856410 	lw	a1,25616(a0)
bfc03a20:	8ca66410 	lw	a2,25616(a1)
bfc03a24:	14430447 	bne	v0,v1,bfc04b44 <inst_error>
bfc03a28:	00000000 	nop
/home/csy/func/inst/n63_sb.S:73
bfc03a2c:	3c0a2779 	lui	t2,0x2779
bfc03a30:	354ad654 	ori	t2,t2,0xd654
bfc03a34:	3c09b41c 	lui	t1,0xb41c
bfc03a38:	35297810 	ori	t1,t1,0x7810
bfc03a3c:	3c08800d 	lui	t0,0x800d
bfc03a40:	3c032779 	lui	v1,0x2779
bfc03a44:	3463d610 	ori	v1,v1,0xd610
bfc03a48:	3c010001 	lui	at,0x1
bfc03a4c:	00280821 	addu	at,at,t0
bfc03a50:	ac2ace98 	sw	t2,-12648(at)
bfc03a54:	3c010001 	lui	at,0x1
bfc03a58:	00280821 	addu	at,at,t0
bfc03a5c:	a029ce98 	sb	t1,-12648(at)
bfc03a60:	25040004 	addiu	a0,t0,4
bfc03a64:	2505fffc 	addiu	a1,t0,-4
bfc03a68:	3c010001 	lui	at,0x1
bfc03a6c:	00240821 	addu	at,at,a0
bfc03a70:	ac24ce98 	sw	a0,-12648(at)
bfc03a74:	3c010001 	lui	at,0x1
bfc03a78:	00250821 	addu	at,at,a1
bfc03a7c:	ac25ce98 	sw	a1,-12648(at)
bfc03a80:	3c020001 	lui	v0,0x1
bfc03a84:	00481021 	addu	v0,v0,t0
bfc03a88:	8c42ce98 	lw	v0,-12648(v0)
bfc03a8c:	3c040001 	lui	a0,0x1
bfc03a90:	00852021 	addu	a0,a0,a1
bfc03a94:	8c84ce98 	lw	a0,-12648(a0)
bfc03a98:	3c050001 	lui	a1,0x1
bfc03a9c:	00a42821 	addu	a1,a1,a0
bfc03aa0:	8ca5ce98 	lw	a1,-12648(a1)
bfc03aa4:	3c060001 	lui	a2,0x1
bfc03aa8:	00c53021 	addu	a2,a2,a1
bfc03aac:	8cc6ce98 	lw	a2,-12648(a2)
bfc03ab0:	14430424 	bne	v0,v1,bfc04b44 <inst_error>
bfc03ab4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:74
bfc03ab8:	3c0ade63 	lui	t2,0xde63
bfc03abc:	354aec11 	ori	t2,t2,0xec11
bfc03ac0:	3c09c22d 	lui	t1,0xc22d
bfc03ac4:	35298e54 	ori	t1,t1,0x8e54
bfc03ac8:	3c08800d 	lui	t0,0x800d
bfc03acc:	3c03de63 	lui	v1,0xde63
bfc03ad0:	34635411 	ori	v1,v1,0x5411
bfc03ad4:	ad0a4788 	sw	t2,18312(t0)
bfc03ad8:	a1094789 	sb	t1,18313(t0)
bfc03adc:	25040004 	addiu	a0,t0,4
bfc03ae0:	2505fffc 	addiu	a1,t0,-4
bfc03ae4:	ac844788 	sw	a0,18312(a0)
bfc03ae8:	aca54788 	sw	a1,18312(a1)
bfc03aec:	8d024788 	lw	v0,18312(t0)
bfc03af0:	8ca44788 	lw	a0,18312(a1)
bfc03af4:	8c854788 	lw	a1,18312(a0)
bfc03af8:	8ca64788 	lw	a2,18312(a1)
bfc03afc:	14430411 	bne	v0,v1,bfc04b44 <inst_error>
bfc03b00:	00000000 	nop
/home/csy/func/inst/n63_sb.S:75
bfc03b04:	3c0a98bf 	lui	t2,0x98bf
bfc03b08:	354ac55c 	ori	t2,t2,0xc55c
bfc03b0c:	3c0912d8 	lui	t1,0x12d8
bfc03b10:	3529a1d8 	ori	t1,t1,0xa1d8
bfc03b14:	3c08800d 	lui	t0,0x800d
bfc03b18:	3c0398d8 	lui	v1,0x98d8
bfc03b1c:	3463c55c 	ori	v1,v1,0xc55c
bfc03b20:	ad0a5374 	sw	t2,21364(t0)
bfc03b24:	a1095376 	sb	t1,21366(t0)
bfc03b28:	25040004 	addiu	a0,t0,4
bfc03b2c:	2505fffc 	addiu	a1,t0,-4
bfc03b30:	ac845374 	sw	a0,21364(a0)
bfc03b34:	aca55374 	sw	a1,21364(a1)
bfc03b38:	8d025374 	lw	v0,21364(t0)
bfc03b3c:	8ca45374 	lw	a0,21364(a1)
bfc03b40:	8c855374 	lw	a1,21364(a0)
bfc03b44:	8ca65374 	lw	a2,21364(a1)
bfc03b48:	144303fe 	bne	v0,v1,bfc04b44 <inst_error>
bfc03b4c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:76
bfc03b50:	3c0a95b2 	lui	t2,0x95b2
bfc03b54:	354ab736 	ori	t2,t2,0xb736
bfc03b58:	3c0930a7 	lui	t1,0x30a7
bfc03b5c:	3529f300 	ori	t1,t1,0xf300
bfc03b60:	3c08800d 	lui	t0,0x800d
bfc03b64:	3c0395b2 	lui	v1,0x95b2
bfc03b68:	3463b700 	ori	v1,v1,0xb700
bfc03b6c:	ad0a1e7c 	sw	t2,7804(t0)
bfc03b70:	a1091e7c 	sb	t1,7804(t0)
bfc03b74:	25040004 	addiu	a0,t0,4
bfc03b78:	2505fffc 	addiu	a1,t0,-4
bfc03b7c:	ac841e7c 	sw	a0,7804(a0)
bfc03b80:	aca51e7c 	sw	a1,7804(a1)
bfc03b84:	8d021e7c 	lw	v0,7804(t0)
bfc03b88:	8ca41e7c 	lw	a0,7804(a1)
bfc03b8c:	8c851e7c 	lw	a1,7804(a0)
bfc03b90:	8ca61e7c 	lw	a2,7804(a1)
bfc03b94:	144303eb 	bne	v0,v1,bfc04b44 <inst_error>
bfc03b98:	00000000 	nop
/home/csy/func/inst/n63_sb.S:77
bfc03b9c:	3c0a408e 	lui	t2,0x408e
bfc03ba0:	354a7440 	ori	t2,t2,0x7440
bfc03ba4:	3c09a0b5 	lui	t1,0xa0b5
bfc03ba8:	35293160 	ori	t1,t1,0x3160
bfc03bac:	3c08800d 	lui	t0,0x800d
bfc03bb0:	3c03608e 	lui	v1,0x608e
bfc03bb4:	34637440 	ori	v1,v1,0x7440
bfc03bb8:	ad0a3a84 	sw	t2,14980(t0)
bfc03bbc:	a1093a87 	sb	t1,14983(t0)
bfc03bc0:	25040004 	addiu	a0,t0,4
bfc03bc4:	2505fffc 	addiu	a1,t0,-4
bfc03bc8:	ac843a84 	sw	a0,14980(a0)
bfc03bcc:	aca53a84 	sw	a1,14980(a1)
bfc03bd0:	8d023a84 	lw	v0,14980(t0)
bfc03bd4:	8ca43a84 	lw	a0,14980(a1)
bfc03bd8:	8c853a84 	lw	a1,14980(a0)
bfc03bdc:	8ca63a84 	lw	a2,14980(a1)
bfc03be0:	144303d8 	bne	v0,v1,bfc04b44 <inst_error>
bfc03be4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:78
bfc03be8:	3c0a2d9b 	lui	t2,0x2d9b
bfc03bec:	354a8c36 	ori	t2,t2,0x8c36
bfc03bf0:	3c09077d 	lui	t1,0x77d
bfc03bf4:	35296f24 	ori	t1,t1,0x6f24
bfc03bf8:	3c08800d 	lui	t0,0x800d
bfc03bfc:	3c032d9b 	lui	v1,0x2d9b
bfc03c00:	34638c24 	ori	v1,v1,0x8c24
bfc03c04:	3c010001 	lui	at,0x1
bfc03c08:	00280821 	addu	at,at,t0
bfc03c0c:	ac2afccc 	sw	t2,-820(at)
bfc03c10:	3c010001 	lui	at,0x1
bfc03c14:	00280821 	addu	at,at,t0
bfc03c18:	a029fccc 	sb	t1,-820(at)
bfc03c1c:	25040004 	addiu	a0,t0,4
bfc03c20:	2505fffc 	addiu	a1,t0,-4
bfc03c24:	3c010001 	lui	at,0x1
bfc03c28:	00240821 	addu	at,at,a0
bfc03c2c:	ac24fccc 	sw	a0,-820(at)
bfc03c30:	3c010001 	lui	at,0x1
bfc03c34:	00250821 	addu	at,at,a1
bfc03c38:	ac25fccc 	sw	a1,-820(at)
bfc03c3c:	3c020001 	lui	v0,0x1
bfc03c40:	00481021 	addu	v0,v0,t0
bfc03c44:	8c42fccc 	lw	v0,-820(v0)
bfc03c48:	3c040001 	lui	a0,0x1
bfc03c4c:	00852021 	addu	a0,a0,a1
bfc03c50:	8c84fccc 	lw	a0,-820(a0)
bfc03c54:	3c050001 	lui	a1,0x1
bfc03c58:	00a42821 	addu	a1,a1,a0
bfc03c5c:	8ca5fccc 	lw	a1,-820(a1)
bfc03c60:	3c060001 	lui	a2,0x1
bfc03c64:	00c53021 	addu	a2,a2,a1
bfc03c68:	8cc6fccc 	lw	a2,-820(a2)
bfc03c6c:	144303b5 	bne	v0,v1,bfc04b44 <inst_error>
bfc03c70:	00000000 	nop
/home/csy/func/inst/n63_sb.S:79
bfc03c74:	3c0ac31b 	lui	t2,0xc31b
bfc03c78:	354ac4fa 	ori	t2,t2,0xc4fa
bfc03c7c:	3c098026 	lui	t1,0x8026
bfc03c80:	35294e9e 	ori	t1,t1,0x4e9e
bfc03c84:	3c08800d 	lui	t0,0x800d
bfc03c88:	3c039e1b 	lui	v1,0x9e1b
bfc03c8c:	3463c4fa 	ori	v1,v1,0xc4fa
bfc03c90:	3c010001 	lui	at,0x1
bfc03c94:	00280821 	addu	at,at,t0
bfc03c98:	ac2ae9cc 	sw	t2,-5684(at)
bfc03c9c:	3c010001 	lui	at,0x1
bfc03ca0:	00280821 	addu	at,at,t0
bfc03ca4:	a029e9cf 	sb	t1,-5681(at)
bfc03ca8:	25040004 	addiu	a0,t0,4
bfc03cac:	2505fffc 	addiu	a1,t0,-4
bfc03cb0:	3c010001 	lui	at,0x1
bfc03cb4:	00240821 	addu	at,at,a0
bfc03cb8:	ac24e9cc 	sw	a0,-5684(at)
bfc03cbc:	3c010001 	lui	at,0x1
bfc03cc0:	00250821 	addu	at,at,a1
bfc03cc4:	ac25e9cc 	sw	a1,-5684(at)
bfc03cc8:	3c020001 	lui	v0,0x1
bfc03ccc:	00481021 	addu	v0,v0,t0
bfc03cd0:	8c42e9cc 	lw	v0,-5684(v0)
bfc03cd4:	3c040001 	lui	a0,0x1
bfc03cd8:	00852021 	addu	a0,a0,a1
bfc03cdc:	8c84e9cc 	lw	a0,-5684(a0)
bfc03ce0:	3c050001 	lui	a1,0x1
bfc03ce4:	00a42821 	addu	a1,a1,a0
bfc03ce8:	8ca5e9cc 	lw	a1,-5684(a1)
bfc03cec:	3c060001 	lui	a2,0x1
bfc03cf0:	00c53021 	addu	a2,a2,a1
bfc03cf4:	8cc6e9cc 	lw	a2,-5684(a2)
bfc03cf8:	14430392 	bne	v0,v1,bfc04b44 <inst_error>
bfc03cfc:	00000000 	nop
/home/csy/func/inst/n63_sb.S:80
bfc03d00:	3c0a0ae2 	lui	t2,0xae2
bfc03d04:	354ab41c 	ori	t2,t2,0xb41c
bfc03d08:	3c09f394 	lui	t1,0xf394
bfc03d0c:	35290600 	ori	t1,t1,0x600
bfc03d10:	3c08800d 	lui	t0,0x800d
bfc03d14:	3c030a00 	lui	v1,0xa00
bfc03d18:	3463b41c 	ori	v1,v1,0xb41c
bfc03d1c:	3c010001 	lui	at,0x1
bfc03d20:	00280821 	addu	at,at,t0
bfc03d24:	ac2ab6bc 	sw	t2,-18756(at)
bfc03d28:	3c010001 	lui	at,0x1
bfc03d2c:	00280821 	addu	at,at,t0
bfc03d30:	a029b6be 	sb	t1,-18754(at)
bfc03d34:	25040004 	addiu	a0,t0,4
bfc03d38:	2505fffc 	addiu	a1,t0,-4
bfc03d3c:	3c010001 	lui	at,0x1
bfc03d40:	00240821 	addu	at,at,a0
bfc03d44:	ac24b6bc 	sw	a0,-18756(at)
bfc03d48:	3c010001 	lui	at,0x1
bfc03d4c:	00250821 	addu	at,at,a1
bfc03d50:	ac25b6bc 	sw	a1,-18756(at)
bfc03d54:	3c020001 	lui	v0,0x1
bfc03d58:	00481021 	addu	v0,v0,t0
bfc03d5c:	8c42b6bc 	lw	v0,-18756(v0)
bfc03d60:	3c040001 	lui	a0,0x1
bfc03d64:	00852021 	addu	a0,a0,a1
bfc03d68:	8c84b6bc 	lw	a0,-18756(a0)
bfc03d6c:	3c050001 	lui	a1,0x1
bfc03d70:	00a42821 	addu	a1,a1,a0
bfc03d74:	8ca5b6bc 	lw	a1,-18756(a1)
bfc03d78:	3c060001 	lui	a2,0x1
bfc03d7c:	00c53021 	addu	a2,a2,a1
bfc03d80:	8cc6b6bc 	lw	a2,-18756(a2)
bfc03d84:	1443036f 	bne	v0,v1,bfc04b44 <inst_error>
bfc03d88:	00000000 	nop
/home/csy/func/inst/n63_sb.S:81
bfc03d8c:	3c0ad672 	lui	t2,0xd672
bfc03d90:	354a125e 	ori	t2,t2,0x125e
bfc03d94:	3c09f54f 	lui	t1,0xf54f
bfc03d98:	35296e10 	ori	t1,t1,0x6e10
bfc03d9c:	3c08800d 	lui	t0,0x800d
bfc03da0:	3c03d610 	lui	v1,0xd610
bfc03da4:	3463125e 	ori	v1,v1,0x125e
bfc03da8:	ad0a33e4 	sw	t2,13284(t0)
bfc03dac:	a10933e6 	sb	t1,13286(t0)
bfc03db0:	25040004 	addiu	a0,t0,4
bfc03db4:	2505fffc 	addiu	a1,t0,-4
bfc03db8:	ac8433e4 	sw	a0,13284(a0)
bfc03dbc:	aca533e4 	sw	a1,13284(a1)
bfc03dc0:	8d0233e4 	lw	v0,13284(t0)
bfc03dc4:	8ca433e4 	lw	a0,13284(a1)
bfc03dc8:	8c8533e4 	lw	a1,13284(a0)
bfc03dcc:	8ca633e4 	lw	a2,13284(a1)
bfc03dd0:	1443035c 	bne	v0,v1,bfc04b44 <inst_error>
bfc03dd4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:82
bfc03dd8:	3c0a16df 	lui	t2,0x16df
bfc03ddc:	354a9976 	ori	t2,t2,0x9976
bfc03de0:	3c09b0be 	lui	t1,0xb0be
bfc03de4:	35294800 	ori	t1,t1,0x4800
bfc03de8:	3c08800d 	lui	t0,0x800d
bfc03dec:	3c031600 	lui	v1,0x1600
bfc03df0:	34639976 	ori	v1,v1,0x9976
bfc03df4:	3c010001 	lui	at,0x1
bfc03df8:	00280821 	addu	at,at,t0
bfc03dfc:	ac2afc04 	sw	t2,-1020(at)
bfc03e00:	3c010001 	lui	at,0x1
bfc03e04:	00280821 	addu	at,at,t0
bfc03e08:	a029fc06 	sb	t1,-1018(at)
bfc03e0c:	25040004 	addiu	a0,t0,4
bfc03e10:	2505fffc 	addiu	a1,t0,-4
bfc03e14:	3c010001 	lui	at,0x1
bfc03e18:	00240821 	addu	at,at,a0
bfc03e1c:	ac24fc04 	sw	a0,-1020(at)
bfc03e20:	3c010001 	lui	at,0x1
bfc03e24:	00250821 	addu	at,at,a1
bfc03e28:	ac25fc04 	sw	a1,-1020(at)
bfc03e2c:	3c020001 	lui	v0,0x1
bfc03e30:	00481021 	addu	v0,v0,t0
bfc03e34:	8c42fc04 	lw	v0,-1020(v0)
bfc03e38:	3c040001 	lui	a0,0x1
bfc03e3c:	00852021 	addu	a0,a0,a1
bfc03e40:	8c84fc04 	lw	a0,-1020(a0)
bfc03e44:	3c050001 	lui	a1,0x1
bfc03e48:	00a42821 	addu	a1,a1,a0
bfc03e4c:	8ca5fc04 	lw	a1,-1020(a1)
bfc03e50:	3c060001 	lui	a2,0x1
bfc03e54:	00c53021 	addu	a2,a2,a1
bfc03e58:	8cc6fc04 	lw	a2,-1020(a2)
bfc03e5c:	14430339 	bne	v0,v1,bfc04b44 <inst_error>
bfc03e60:	00000000 	nop
/home/csy/func/inst/n63_sb.S:83
bfc03e64:	3c0a9d36 	lui	t2,0x9d36
bfc03e68:	354a01ce 	ori	t2,t2,0x1ce
bfc03e6c:	3c097964 	lui	t1,0x7964
bfc03e70:	35295dd6 	ori	t1,t1,0x5dd6
bfc03e74:	3c08800d 	lui	t0,0x800d
bfc03e78:	3c039d36 	lui	v1,0x9d36
bfc03e7c:	346301d6 	ori	v1,v1,0x1d6
bfc03e80:	3c010001 	lui	at,0x1
bfc03e84:	00280821 	addu	at,at,t0
bfc03e88:	ac2ab998 	sw	t2,-18024(at)
bfc03e8c:	3c010001 	lui	at,0x1
bfc03e90:	00280821 	addu	at,at,t0
bfc03e94:	a029b998 	sb	t1,-18024(at)
bfc03e98:	25040004 	addiu	a0,t0,4
bfc03e9c:	2505fffc 	addiu	a1,t0,-4
bfc03ea0:	3c010001 	lui	at,0x1
bfc03ea4:	00240821 	addu	at,at,a0
bfc03ea8:	ac24b998 	sw	a0,-18024(at)
bfc03eac:	3c010001 	lui	at,0x1
bfc03eb0:	00250821 	addu	at,at,a1
bfc03eb4:	ac25b998 	sw	a1,-18024(at)
bfc03eb8:	3c020001 	lui	v0,0x1
bfc03ebc:	00481021 	addu	v0,v0,t0
bfc03ec0:	8c42b998 	lw	v0,-18024(v0)
bfc03ec4:	3c040001 	lui	a0,0x1
bfc03ec8:	00852021 	addu	a0,a0,a1
bfc03ecc:	8c84b998 	lw	a0,-18024(a0)
bfc03ed0:	3c050001 	lui	a1,0x1
bfc03ed4:	00a42821 	addu	a1,a1,a0
bfc03ed8:	8ca5b998 	lw	a1,-18024(a1)
bfc03edc:	3c060001 	lui	a2,0x1
bfc03ee0:	00c53021 	addu	a2,a2,a1
bfc03ee4:	8cc6b998 	lw	a2,-18024(a2)
bfc03ee8:	14430316 	bne	v0,v1,bfc04b44 <inst_error>
bfc03eec:	00000000 	nop
/home/csy/func/inst/n63_sb.S:84
bfc03ef0:	3c0af085 	lui	t2,0xf085
bfc03ef4:	354a81f4 	ori	t2,t2,0x81f4
bfc03ef8:	3c092de5 	lui	t1,0x2de5
bfc03efc:	3529ab28 	ori	t1,t1,0xab28
bfc03f00:	3c08800d 	lui	t0,0x800d
bfc03f04:	3c03f085 	lui	v1,0xf085
bfc03f08:	34638128 	ori	v1,v1,0x8128
bfc03f0c:	ad0a15f4 	sw	t2,5620(t0)
bfc03f10:	a10915f4 	sb	t1,5620(t0)
bfc03f14:	25040004 	addiu	a0,t0,4
bfc03f18:	2505fffc 	addiu	a1,t0,-4
bfc03f1c:	ac8415f4 	sw	a0,5620(a0)
bfc03f20:	aca515f4 	sw	a1,5620(a1)
bfc03f24:	8d0215f4 	lw	v0,5620(t0)
bfc03f28:	8ca415f4 	lw	a0,5620(a1)
bfc03f2c:	8c8515f4 	lw	a1,5620(a0)
bfc03f30:	8ca615f4 	lw	a2,5620(a1)
bfc03f34:	14430303 	bne	v0,v1,bfc04b44 <inst_error>
bfc03f38:	00000000 	nop
/home/csy/func/inst/n63_sb.S:85
bfc03f3c:	3c0a52c8 	lui	t2,0x52c8
bfc03f40:	354a82b0 	ori	t2,t2,0x82b0
bfc03f44:	3c090bbc 	lui	t1,0xbbc
bfc03f48:	3529d41c 	ori	t1,t1,0xd41c
bfc03f4c:	3c08800d 	lui	t0,0x800d
bfc03f50:	3c03521c 	lui	v1,0x521c
bfc03f54:	346382b0 	ori	v1,v1,0x82b0
bfc03f58:	ad0a7eac 	sw	t2,32428(t0)
bfc03f5c:	a1097eae 	sb	t1,32430(t0)
bfc03f60:	25040004 	addiu	a0,t0,4
bfc03f64:	2505fffc 	addiu	a1,t0,-4
bfc03f68:	ac847eac 	sw	a0,32428(a0)
bfc03f6c:	aca57eac 	sw	a1,32428(a1)
bfc03f70:	8d027eac 	lw	v0,32428(t0)
bfc03f74:	8ca47eac 	lw	a0,32428(a1)
bfc03f78:	8c857eac 	lw	a1,32428(a0)
bfc03f7c:	8ca67eac 	lw	a2,32428(a1)
bfc03f80:	144302f0 	bne	v0,v1,bfc04b44 <inst_error>
bfc03f84:	00000000 	nop
/home/csy/func/inst/n63_sb.S:86
bfc03f88:	3c0a1817 	lui	t2,0x1817
bfc03f8c:	354a8fb0 	ori	t2,t2,0x8fb0
bfc03f90:	3c09b008 	lui	t1,0xb008
bfc03f94:	3529d7c8 	ori	t1,t1,0xd7c8
bfc03f98:	3c08800d 	lui	t0,0x800d
bfc03f9c:	3c031817 	lui	v1,0x1817
bfc03fa0:	34638fc8 	ori	v1,v1,0x8fc8
bfc03fa4:	3c010001 	lui	at,0x1
bfc03fa8:	00280821 	addu	at,at,t0
bfc03fac:	ac2ac514 	sw	t2,-15084(at)
bfc03fb0:	3c010001 	lui	at,0x1
bfc03fb4:	00280821 	addu	at,at,t0
bfc03fb8:	a029c514 	sb	t1,-15084(at)
bfc03fbc:	25040004 	addiu	a0,t0,4
bfc03fc0:	2505fffc 	addiu	a1,t0,-4
bfc03fc4:	3c010001 	lui	at,0x1
bfc03fc8:	00240821 	addu	at,at,a0
bfc03fcc:	ac24c514 	sw	a0,-15084(at)
bfc03fd0:	3c010001 	lui	at,0x1
bfc03fd4:	00250821 	addu	at,at,a1
bfc03fd8:	ac25c514 	sw	a1,-15084(at)
bfc03fdc:	3c020001 	lui	v0,0x1
bfc03fe0:	00481021 	addu	v0,v0,t0
bfc03fe4:	8c42c514 	lw	v0,-15084(v0)
bfc03fe8:	3c040001 	lui	a0,0x1
bfc03fec:	00852021 	addu	a0,a0,a1
bfc03ff0:	8c84c514 	lw	a0,-15084(a0)
bfc03ff4:	3c050001 	lui	a1,0x1
bfc03ff8:	00a42821 	addu	a1,a1,a0
bfc03ffc:	8ca5c514 	lw	a1,-15084(a1)
bfc04000:	3c060001 	lui	a2,0x1
bfc04004:	00c53021 	addu	a2,a2,a1
bfc04008:	8cc6c514 	lw	a2,-15084(a2)
bfc0400c:	144302cd 	bne	v0,v1,bfc04b44 <inst_error>
bfc04010:	00000000 	nop
/home/csy/func/inst/n63_sb.S:87
bfc04014:	3c0ac195 	lui	t2,0xc195
bfc04018:	354a8740 	ori	t2,t2,0x8740
bfc0401c:	3c0944c6 	lui	t1,0x44c6
bfc04020:	35290618 	ori	t1,t1,0x618
bfc04024:	3c08800d 	lui	t0,0x800d
bfc04028:	3c03c195 	lui	v1,0xc195
bfc0402c:	34638718 	ori	v1,v1,0x8718
bfc04030:	3c010001 	lui	at,0x1
bfc04034:	00280821 	addu	at,at,t0
bfc04038:	ac2aae68 	sw	t2,-20888(at)
bfc0403c:	3c010001 	lui	at,0x1
bfc04040:	00280821 	addu	at,at,t0
bfc04044:	a029ae68 	sb	t1,-20888(at)
bfc04048:	25040004 	addiu	a0,t0,4
bfc0404c:	2505fffc 	addiu	a1,t0,-4
bfc04050:	3c010001 	lui	at,0x1
bfc04054:	00240821 	addu	at,at,a0
bfc04058:	ac24ae68 	sw	a0,-20888(at)
bfc0405c:	3c010001 	lui	at,0x1
bfc04060:	00250821 	addu	at,at,a1
bfc04064:	ac25ae68 	sw	a1,-20888(at)
bfc04068:	3c020001 	lui	v0,0x1
bfc0406c:	00481021 	addu	v0,v0,t0
bfc04070:	8c42ae68 	lw	v0,-20888(v0)
bfc04074:	3c040001 	lui	a0,0x1
bfc04078:	00852021 	addu	a0,a0,a1
bfc0407c:	8c84ae68 	lw	a0,-20888(a0)
bfc04080:	3c050001 	lui	a1,0x1
bfc04084:	00a42821 	addu	a1,a1,a0
bfc04088:	8ca5ae68 	lw	a1,-20888(a1)
bfc0408c:	3c060001 	lui	a2,0x1
bfc04090:	00c53021 	addu	a2,a2,a1
bfc04094:	8cc6ae68 	lw	a2,-20888(a2)
bfc04098:	144302aa 	bne	v0,v1,bfc04b44 <inst_error>
bfc0409c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:88
bfc040a0:	3c0a9ca3 	lui	t2,0x9ca3
bfc040a4:	354ae13c 	ori	t2,t2,0xe13c
bfc040a8:	3c0953cc 	lui	t1,0x53cc
bfc040ac:	3529f0e9 	ori	t1,t1,0xf0e9
bfc040b0:	3c08800d 	lui	t0,0x800d
bfc040b4:	3c039ca3 	lui	v1,0x9ca3
bfc040b8:	3463e1e9 	ori	v1,v1,0xe1e9
bfc040bc:	3c010001 	lui	at,0x1
bfc040c0:	00280821 	addu	at,at,t0
bfc040c4:	ac2ae150 	sw	t2,-7856(at)
bfc040c8:	3c010001 	lui	at,0x1
bfc040cc:	00280821 	addu	at,at,t0
bfc040d0:	a029e150 	sb	t1,-7856(at)
bfc040d4:	25040004 	addiu	a0,t0,4
bfc040d8:	2505fffc 	addiu	a1,t0,-4
bfc040dc:	3c010001 	lui	at,0x1
bfc040e0:	00240821 	addu	at,at,a0
bfc040e4:	ac24e150 	sw	a0,-7856(at)
bfc040e8:	3c010001 	lui	at,0x1
bfc040ec:	00250821 	addu	at,at,a1
bfc040f0:	ac25e150 	sw	a1,-7856(at)
bfc040f4:	3c020001 	lui	v0,0x1
bfc040f8:	00481021 	addu	v0,v0,t0
bfc040fc:	8c42e150 	lw	v0,-7856(v0)
bfc04100:	3c040001 	lui	a0,0x1
bfc04104:	00852021 	addu	a0,a0,a1
bfc04108:	8c84e150 	lw	a0,-7856(a0)
bfc0410c:	3c050001 	lui	a1,0x1
bfc04110:	00a42821 	addu	a1,a1,a0
bfc04114:	8ca5e150 	lw	a1,-7856(a1)
bfc04118:	3c060001 	lui	a2,0x1
bfc0411c:	00c53021 	addu	a2,a2,a1
bfc04120:	8cc6e150 	lw	a2,-7856(a2)
bfc04124:	14430287 	bne	v0,v1,bfc04b44 <inst_error>
bfc04128:	00000000 	nop
/home/csy/func/inst/n63_sb.S:89
bfc0412c:	3c0a3a0d 	lui	t2,0x3a0d
bfc04130:	354a9754 	ori	t2,t2,0x9754
bfc04134:	3c09e204 	lui	t1,0xe204
bfc04138:	3529a4bd 	ori	t1,t1,0xa4bd
bfc0413c:	3c08800d 	lui	t0,0x800d
bfc04140:	3c033a0d 	lui	v1,0x3a0d
bfc04144:	346397bd 	ori	v1,v1,0x97bd
bfc04148:	ad0a5e50 	sw	t2,24144(t0)
bfc0414c:	a1095e50 	sb	t1,24144(t0)
bfc04150:	25040004 	addiu	a0,t0,4
bfc04154:	2505fffc 	addiu	a1,t0,-4
bfc04158:	ac845e50 	sw	a0,24144(a0)
bfc0415c:	aca55e50 	sw	a1,24144(a1)
bfc04160:	8d025e50 	lw	v0,24144(t0)
bfc04164:	8ca45e50 	lw	a0,24144(a1)
bfc04168:	8c855e50 	lw	a1,24144(a0)
bfc0416c:	8ca65e50 	lw	a2,24144(a1)
bfc04170:	14430274 	bne	v0,v1,bfc04b44 <inst_error>
bfc04174:	00000000 	nop
/home/csy/func/inst/n63_sb.S:90
bfc04178:	3c0ac17b 	lui	t2,0xc17b
bfc0417c:	354aa750 	ori	t2,t2,0xa750
bfc04180:	3c099d1b 	lui	t1,0x9d1b
bfc04184:	3529a87b 	ori	t1,t1,0xa87b
bfc04188:	3c08800d 	lui	t0,0x800d
bfc0418c:	3c037b7b 	lui	v1,0x7b7b
bfc04190:	3463a750 	ori	v1,v1,0xa750
bfc04194:	ad0a5c84 	sw	t2,23684(t0)
bfc04198:	a1095c87 	sb	t1,23687(t0)
bfc0419c:	25040004 	addiu	a0,t0,4
bfc041a0:	2505fffc 	addiu	a1,t0,-4
bfc041a4:	ac845c84 	sw	a0,23684(a0)
bfc041a8:	aca55c84 	sw	a1,23684(a1)
bfc041ac:	8d025c84 	lw	v0,23684(t0)
bfc041b0:	8ca45c84 	lw	a0,23684(a1)
bfc041b4:	8c855c84 	lw	a1,23684(a0)
bfc041b8:	8ca65c84 	lw	a2,23684(a1)
bfc041bc:	14430261 	bne	v0,v1,bfc04b44 <inst_error>
bfc041c0:	00000000 	nop
/home/csy/func/inst/n63_sb.S:91
bfc041c4:	3c0a3df6 	lui	t2,0x3df6
bfc041c8:	354ad256 	ori	t2,t2,0xd256
bfc041cc:	3c095e9b 	lui	t1,0x5e9b
bfc041d0:	35296298 	ori	t1,t1,0x6298
bfc041d4:	3c08800d 	lui	t0,0x800d
bfc041d8:	3c033df6 	lui	v1,0x3df6
bfc041dc:	34639856 	ori	v1,v1,0x9856
bfc041e0:	ad0a0000 	sw	t2,0(t0)
bfc041e4:	a1090001 	sb	t1,1(t0)
bfc041e8:	25040004 	addiu	a0,t0,4
bfc041ec:	2505fffc 	addiu	a1,t0,-4
bfc041f0:	ac840000 	sw	a0,0(a0)
bfc041f4:	aca50000 	sw	a1,0(a1)
bfc041f8:	8d020000 	lw	v0,0(t0)
bfc041fc:	8ca40000 	lw	a0,0(a1)
bfc04200:	8c850000 	lw	a1,0(a0)
bfc04204:	8ca60000 	lw	a2,0(a1)
bfc04208:	1443024e 	bne	v0,v1,bfc04b44 <inst_error>
bfc0420c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:92
bfc04210:	3c0a5f50 	lui	t2,0x5f50
bfc04214:	354ab378 	ori	t2,t2,0xb378
bfc04218:	3c09d156 	lui	t1,0xd156
bfc0421c:	35293c04 	ori	t1,t1,0x3c04
bfc04220:	3c08800d 	lui	t0,0x800d
bfc04224:	3c035f04 	lui	v1,0x5f04
bfc04228:	3463b378 	ori	v1,v1,0xb378
bfc0422c:	ad0a0000 	sw	t2,0(t0)
bfc04230:	a1090002 	sb	t1,2(t0)
bfc04234:	25040004 	addiu	a0,t0,4
bfc04238:	2505fffc 	addiu	a1,t0,-4
bfc0423c:	ac840000 	sw	a0,0(a0)
bfc04240:	aca50000 	sw	a1,0(a1)
bfc04244:	8d020000 	lw	v0,0(t0)
bfc04248:	8ca40000 	lw	a0,0(a1)
bfc0424c:	8c850000 	lw	a1,0(a0)
bfc04250:	8ca60000 	lw	a2,0(a1)
bfc04254:	1443023b 	bne	v0,v1,bfc04b44 <inst_error>
bfc04258:	00000000 	nop
/home/csy/func/inst/n63_sb.S:93
bfc0425c:	3c0a036b 	lui	t2,0x36b
bfc04260:	354ab8b0 	ori	t2,t2,0xb8b0
bfc04264:	3c091093 	lui	t1,0x1093
bfc04268:	352956f8 	ori	t1,t1,0x56f8
bfc0426c:	3c08800d 	lui	t0,0x800d
bfc04270:	3c03036b 	lui	v1,0x36b
bfc04274:	3463f8b0 	ori	v1,v1,0xf8b0
bfc04278:	ad0a0000 	sw	t2,0(t0)
bfc0427c:	a1090001 	sb	t1,1(t0)
bfc04280:	25040004 	addiu	a0,t0,4
bfc04284:	2505fffc 	addiu	a1,t0,-4
bfc04288:	ac840000 	sw	a0,0(a0)
bfc0428c:	aca50000 	sw	a1,0(a1)
bfc04290:	8d020000 	lw	v0,0(t0)
bfc04294:	8ca40000 	lw	a0,0(a1)
bfc04298:	8c850000 	lw	a1,0(a0)
bfc0429c:	8ca60000 	lw	a2,0(a1)
bfc042a0:	14430228 	bne	v0,v1,bfc04b44 <inst_error>
bfc042a4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:94
bfc042a8:	3c0a8d12 	lui	t2,0x8d12
bfc042ac:	354a10b8 	ori	t2,t2,0x10b8
bfc042b0:	3c09bd99 	lui	t1,0xbd99
bfc042b4:	352940a5 	ori	t1,t1,0x40a5
bfc042b8:	3c08800d 	lui	t0,0x800d
bfc042bc:	3c038d12 	lui	v1,0x8d12
bfc042c0:	346310a5 	ori	v1,v1,0x10a5
bfc042c4:	ad0a0000 	sw	t2,0(t0)
bfc042c8:	a1090000 	sb	t1,0(t0)
bfc042cc:	25040004 	addiu	a0,t0,4
bfc042d0:	2505fffc 	addiu	a1,t0,-4
bfc042d4:	ac840000 	sw	a0,0(a0)
bfc042d8:	aca50000 	sw	a1,0(a1)
bfc042dc:	8d020000 	lw	v0,0(t0)
bfc042e0:	8ca40000 	lw	a0,0(a1)
bfc042e4:	8c850000 	lw	a1,0(a0)
bfc042e8:	8ca60000 	lw	a2,0(a1)
bfc042ec:	14430215 	bne	v0,v1,bfc04b44 <inst_error>
bfc042f0:	00000000 	nop
/home/csy/func/inst/n63_sb.S:95
bfc042f4:	3c0aae1f 	lui	t2,0xae1f
bfc042f8:	354a4651 	ori	t2,t2,0x4651
bfc042fc:	3c09d53d 	lui	t1,0xd53d
bfc04300:	3529d416 	ori	t1,t1,0xd416
bfc04304:	3c08800d 	lui	t0,0x800d
bfc04308:	3c03ae1f 	lui	v1,0xae1f
bfc0430c:	34631651 	ori	v1,v1,0x1651
bfc04310:	ad0a0000 	sw	t2,0(t0)
bfc04314:	a1090001 	sb	t1,1(t0)
bfc04318:	25040004 	addiu	a0,t0,4
bfc0431c:	2505fffc 	addiu	a1,t0,-4
bfc04320:	ac840000 	sw	a0,0(a0)
bfc04324:	aca50000 	sw	a1,0(a1)
bfc04328:	8d020000 	lw	v0,0(t0)
bfc0432c:	8ca40000 	lw	a0,0(a1)
bfc04330:	8c850000 	lw	a1,0(a0)
bfc04334:	8ca60000 	lw	a2,0(a1)
bfc04338:	14430202 	bne	v0,v1,bfc04b44 <inst_error>
bfc0433c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:96
bfc04340:	3c0a76f9 	lui	t2,0x76f9
bfc04344:	354a942c 	ori	t2,t2,0x942c
bfc04348:	3c095eb1 	lui	t1,0x5eb1
bfc0434c:	3529d1e8 	ori	t1,t1,0xd1e8
bfc04350:	3c08800d 	lui	t0,0x800d
bfc04354:	3c0376e8 	lui	v1,0x76e8
bfc04358:	3463942c 	ori	v1,v1,0x942c
bfc0435c:	ad0a0000 	sw	t2,0(t0)
bfc04360:	a1090002 	sb	t1,2(t0)
bfc04364:	25040004 	addiu	a0,t0,4
bfc04368:	2505fffc 	addiu	a1,t0,-4
bfc0436c:	ac840000 	sw	a0,0(a0)
bfc04370:	aca50000 	sw	a1,0(a1)
bfc04374:	8d020000 	lw	v0,0(t0)
bfc04378:	8ca40000 	lw	a0,0(a1)
bfc0437c:	8c850000 	lw	a1,0(a0)
bfc04380:	8ca60000 	lw	a2,0(a1)
bfc04384:	144301ef 	bne	v0,v1,bfc04b44 <inst_error>
bfc04388:	00000000 	nop
/home/csy/func/inst/n63_sb.S:97
bfc0438c:	3c0afb19 	lui	t2,0xfb19
bfc04390:	354a2df2 	ori	t2,t2,0x2df2
bfc04394:	3c094cdb 	lui	t1,0x4cdb
bfc04398:	3529d878 	ori	t1,t1,0xd878
bfc0439c:	3c08800d 	lui	t0,0x800d
bfc043a0:	3c03fb19 	lui	v1,0xfb19
bfc043a4:	34632d78 	ori	v1,v1,0x2d78
bfc043a8:	ad0a0000 	sw	t2,0(t0)
bfc043ac:	a1090000 	sb	t1,0(t0)
bfc043b0:	25040004 	addiu	a0,t0,4
bfc043b4:	2505fffc 	addiu	a1,t0,-4
bfc043b8:	ac840000 	sw	a0,0(a0)
bfc043bc:	aca50000 	sw	a1,0(a1)
bfc043c0:	8d020000 	lw	v0,0(t0)
bfc043c4:	8ca40000 	lw	a0,0(a1)
bfc043c8:	8c850000 	lw	a1,0(a0)
bfc043cc:	8ca60000 	lw	a2,0(a1)
bfc043d0:	144301dc 	bne	v0,v1,bfc04b44 <inst_error>
bfc043d4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:98
bfc043d8:	3c0a7854 	lui	t2,0x7854
bfc043dc:	354a532e 	ori	t2,t2,0x532e
bfc043e0:	3c09895b 	lui	t1,0x895b
bfc043e4:	3529bb88 	ori	t1,t1,0xbb88
bfc043e8:	3c08800d 	lui	t0,0x800d
bfc043ec:	3c037888 	lui	v1,0x7888
bfc043f0:	3463532e 	ori	v1,v1,0x532e
bfc043f4:	ad0a0000 	sw	t2,0(t0)
bfc043f8:	a1090002 	sb	t1,2(t0)
bfc043fc:	25040004 	addiu	a0,t0,4
bfc04400:	2505fffc 	addiu	a1,t0,-4
bfc04404:	ac840000 	sw	a0,0(a0)
bfc04408:	aca50000 	sw	a1,0(a1)
bfc0440c:	8d020000 	lw	v0,0(t0)
bfc04410:	8ca40000 	lw	a0,0(a1)
bfc04414:	8c850000 	lw	a1,0(a0)
bfc04418:	8ca60000 	lw	a2,0(a1)
bfc0441c:	144301c9 	bne	v0,v1,bfc04b44 <inst_error>
bfc04420:	00000000 	nop
/home/csy/func/inst/n63_sb.S:99
bfc04424:	3c0ae918 	lui	t2,0xe918
bfc04428:	354aba4c 	ori	t2,t2,0xba4c
bfc0442c:	3c09d1c9 	lui	t1,0xd1c9
bfc04430:	35299748 	ori	t1,t1,0x9748
bfc04434:	3c08800d 	lui	t0,0x800d
bfc04438:	3c03e948 	lui	v1,0xe948
bfc0443c:	3463ba4c 	ori	v1,v1,0xba4c
bfc04440:	ad0a0000 	sw	t2,0(t0)
bfc04444:	a1090002 	sb	t1,2(t0)
bfc04448:	25040004 	addiu	a0,t0,4
bfc0444c:	2505fffc 	addiu	a1,t0,-4
bfc04450:	ac840000 	sw	a0,0(a0)
bfc04454:	aca50000 	sw	a1,0(a1)
bfc04458:	8d020000 	lw	v0,0(t0)
bfc0445c:	8ca40000 	lw	a0,0(a1)
bfc04460:	8c850000 	lw	a1,0(a0)
bfc04464:	8ca60000 	lw	a2,0(a1)
bfc04468:	144301b6 	bne	v0,v1,bfc04b44 <inst_error>
bfc0446c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:100
bfc04470:	3c0a9cdf 	lui	t2,0x9cdf
bfc04474:	354ab200 	ori	t2,t2,0xb200
bfc04478:	3c0985af 	lui	t1,0x85af
bfc0447c:	35291f1e 	ori	t1,t1,0x1f1e
bfc04480:	3c08800d 	lui	t0,0x800d
bfc04484:	3c039cdf 	lui	v1,0x9cdf
bfc04488:	34631e00 	ori	v1,v1,0x1e00
bfc0448c:	ad0a0000 	sw	t2,0(t0)
bfc04490:	a1090001 	sb	t1,1(t0)
bfc04494:	25040004 	addiu	a0,t0,4
bfc04498:	2505fffc 	addiu	a1,t0,-4
bfc0449c:	ac840000 	sw	a0,0(a0)
bfc044a0:	aca50000 	sw	a1,0(a1)
bfc044a4:	8d020000 	lw	v0,0(t0)
bfc044a8:	8ca40000 	lw	a0,0(a1)
bfc044ac:	8c850000 	lw	a1,0(a0)
bfc044b0:	8ca60000 	lw	a2,0(a1)
bfc044b4:	144301a3 	bne	v0,v1,bfc04b44 <inst_error>
bfc044b8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:101
bfc044bc:	3c0a9a16 	lui	t2,0x9a16
bfc044c0:	354a3388 	ori	t2,t2,0x3388
bfc044c4:	3c097ba8 	lui	t1,0x7ba8
bfc044c8:	3529c8a0 	ori	t1,t1,0xc8a0
bfc044cc:	3c08800d 	lui	t0,0x800d
bfc044d0:	3c03a016 	lui	v1,0xa016
bfc044d4:	34633388 	ori	v1,v1,0x3388
bfc044d8:	ad0a0000 	sw	t2,0(t0)
bfc044dc:	a1090003 	sb	t1,3(t0)
bfc044e0:	25040004 	addiu	a0,t0,4
bfc044e4:	2505fffc 	addiu	a1,t0,-4
bfc044e8:	ac840000 	sw	a0,0(a0)
bfc044ec:	aca50000 	sw	a1,0(a1)
bfc044f0:	8d020000 	lw	v0,0(t0)
bfc044f4:	8ca40000 	lw	a0,0(a1)
bfc044f8:	8c850000 	lw	a1,0(a0)
bfc044fc:	8ca60000 	lw	a2,0(a1)
bfc04500:	14430190 	bne	v0,v1,bfc04b44 <inst_error>
bfc04504:	00000000 	nop
/home/csy/func/inst/n63_sb.S:102
bfc04508:	3c0a0676 	lui	t2,0x676
bfc0450c:	354ac233 	ori	t2,t2,0xc233
bfc04510:	3c099daf 	lui	t1,0x9daf
bfc04514:	3529dbd4 	ori	t1,t1,0xdbd4
bfc04518:	3c08800d 	lui	t0,0x800d
bfc0451c:	3c03d476 	lui	v1,0xd476
bfc04520:	3463c233 	ori	v1,v1,0xc233
bfc04524:	ad0a0000 	sw	t2,0(t0)
bfc04528:	a1090003 	sb	t1,3(t0)
bfc0452c:	25040004 	addiu	a0,t0,4
bfc04530:	2505fffc 	addiu	a1,t0,-4
bfc04534:	ac840000 	sw	a0,0(a0)
bfc04538:	aca50000 	sw	a1,0(a1)
bfc0453c:	8d020000 	lw	v0,0(t0)
bfc04540:	8ca40000 	lw	a0,0(a1)
bfc04544:	8c850000 	lw	a1,0(a0)
bfc04548:	8ca60000 	lw	a2,0(a1)
bfc0454c:	1443017d 	bne	v0,v1,bfc04b44 <inst_error>
bfc04550:	00000000 	nop
/home/csy/func/inst/n63_sb.S:103
bfc04554:	3c0ad52c 	lui	t2,0xd52c
bfc04558:	354a0b08 	ori	t2,t2,0xb08
bfc0455c:	3c0948d7 	lui	t1,0x48d7
bfc04560:	35292a28 	ori	t1,t1,0x2a28
bfc04564:	3c08800d 	lui	t0,0x800d
bfc04568:	3c03d52c 	lui	v1,0xd52c
bfc0456c:	34630b28 	ori	v1,v1,0xb28
bfc04570:	ad0a0000 	sw	t2,0(t0)
bfc04574:	a1090000 	sb	t1,0(t0)
bfc04578:	25040004 	addiu	a0,t0,4
bfc0457c:	2505fffc 	addiu	a1,t0,-4
bfc04580:	ac840000 	sw	a0,0(a0)
bfc04584:	aca50000 	sw	a1,0(a1)
bfc04588:	8d020000 	lw	v0,0(t0)
bfc0458c:	8ca40000 	lw	a0,0(a1)
bfc04590:	8c850000 	lw	a1,0(a0)
bfc04594:	8ca60000 	lw	a2,0(a1)
bfc04598:	1443016a 	bne	v0,v1,bfc04b44 <inst_error>
bfc0459c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:104
bfc045a0:	3c0ac47f 	lui	t2,0xc47f
bfc045a4:	354a87c8 	ori	t2,t2,0x87c8
bfc045a8:	3c09b57c 	lui	t1,0xb57c
bfc045ac:	3529c36c 	ori	t1,t1,0xc36c
bfc045b0:	3c08800d 	lui	t0,0x800d
bfc045b4:	3c03c47f 	lui	v1,0xc47f
bfc045b8:	3463876c 	ori	v1,v1,0x876c
bfc045bc:	ad0a0000 	sw	t2,0(t0)
bfc045c0:	a1090000 	sb	t1,0(t0)
bfc045c4:	25040004 	addiu	a0,t0,4
bfc045c8:	2505fffc 	addiu	a1,t0,-4
bfc045cc:	ac840000 	sw	a0,0(a0)
bfc045d0:	aca50000 	sw	a1,0(a1)
bfc045d4:	8d020000 	lw	v0,0(t0)
bfc045d8:	8ca40000 	lw	a0,0(a1)
bfc045dc:	8c850000 	lw	a1,0(a0)
bfc045e0:	8ca60000 	lw	a2,0(a1)
bfc045e4:	14430157 	bne	v0,v1,bfc04b44 <inst_error>
bfc045e8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:105
bfc045ec:	3c0a4416 	lui	t2,0x4416
bfc045f0:	354adbe6 	ori	t2,t2,0xdbe6
bfc045f4:	3c09ea61 	lui	t1,0xea61
bfc045f8:	352970e8 	ori	t1,t1,0x70e8
bfc045fc:	3c08800d 	lui	t0,0x800d
bfc04600:	3c034416 	lui	v1,0x4416
bfc04604:	3463dbe8 	ori	v1,v1,0xdbe8
bfc04608:	ad0a0000 	sw	t2,0(t0)
bfc0460c:	a1090000 	sb	t1,0(t0)
bfc04610:	25040004 	addiu	a0,t0,4
bfc04614:	2505fffc 	addiu	a1,t0,-4
bfc04618:	ac840000 	sw	a0,0(a0)
bfc0461c:	aca50000 	sw	a1,0(a1)
bfc04620:	8d020000 	lw	v0,0(t0)
bfc04624:	8ca40000 	lw	a0,0(a1)
bfc04628:	8c850000 	lw	a1,0(a0)
bfc0462c:	8ca60000 	lw	a2,0(a1)
bfc04630:	14430144 	bne	v0,v1,bfc04b44 <inst_error>
bfc04634:	00000000 	nop
/home/csy/func/inst/n63_sb.S:106
bfc04638:	3c0aa6a8 	lui	t2,0xa6a8
bfc0463c:	354a2196 	ori	t2,t2,0x2196
bfc04640:	3c093fe8 	lui	t1,0x3fe8
bfc04644:	3529f8a2 	ori	t1,t1,0xf8a2
bfc04648:	3c08800d 	lui	t0,0x800d
bfc0464c:	3c03a6a8 	lui	v1,0xa6a8
bfc04650:	346321a2 	ori	v1,v1,0x21a2
bfc04654:	ad0a0000 	sw	t2,0(t0)
bfc04658:	a1090000 	sb	t1,0(t0)
bfc0465c:	25040004 	addiu	a0,t0,4
bfc04660:	2505fffc 	addiu	a1,t0,-4
bfc04664:	ac840000 	sw	a0,0(a0)
bfc04668:	aca50000 	sw	a1,0(a1)
bfc0466c:	8d020000 	lw	v0,0(t0)
bfc04670:	8ca40000 	lw	a0,0(a1)
bfc04674:	8c850000 	lw	a1,0(a0)
bfc04678:	8ca60000 	lw	a2,0(a1)
bfc0467c:	14430131 	bne	v0,v1,bfc04b44 <inst_error>
bfc04680:	00000000 	nop
/home/csy/func/inst/n63_sb.S:107
bfc04684:	3c0a0971 	lui	t2,0x971
bfc04688:	354af49e 	ori	t2,t2,0xf49e
bfc0468c:	3c09caed 	lui	t1,0xcaed
bfc04690:	3529fd56 	ori	t1,t1,0xfd56
bfc04694:	3c08800d 	lui	t0,0x800d
bfc04698:	3c030956 	lui	v1,0x956
bfc0469c:	3463f49e 	ori	v1,v1,0xf49e
bfc046a0:	ad0a0000 	sw	t2,0(t0)
bfc046a4:	a1090002 	sb	t1,2(t0)
bfc046a8:	25040004 	addiu	a0,t0,4
bfc046ac:	2505fffc 	addiu	a1,t0,-4
bfc046b0:	ac840000 	sw	a0,0(a0)
bfc046b4:	aca50000 	sw	a1,0(a1)
bfc046b8:	8d020000 	lw	v0,0(t0)
bfc046bc:	8ca40000 	lw	a0,0(a1)
bfc046c0:	8c850000 	lw	a1,0(a0)
bfc046c4:	8ca60000 	lw	a2,0(a1)
bfc046c8:	1443011e 	bne	v0,v1,bfc04b44 <inst_error>
bfc046cc:	00000000 	nop
/home/csy/func/inst/n63_sb.S:108
bfc046d0:	3c0a06eb 	lui	t2,0x6eb
bfc046d4:	354afb12 	ori	t2,t2,0xfb12
bfc046d8:	3c09ee54 	lui	t1,0xee54
bfc046dc:	3529a808 	ori	t1,t1,0xa808
bfc046e0:	3c08800d 	lui	t0,0x800d
bfc046e4:	3c0306eb 	lui	v1,0x6eb
bfc046e8:	34630812 	ori	v1,v1,0x812
bfc046ec:	ad0a0000 	sw	t2,0(t0)
bfc046f0:	a1090001 	sb	t1,1(t0)
bfc046f4:	25040004 	addiu	a0,t0,4
bfc046f8:	2505fffc 	addiu	a1,t0,-4
bfc046fc:	ac840000 	sw	a0,0(a0)
bfc04700:	aca50000 	sw	a1,0(a1)
bfc04704:	8d020000 	lw	v0,0(t0)
bfc04708:	8ca40000 	lw	a0,0(a1)
bfc0470c:	8c850000 	lw	a1,0(a0)
bfc04710:	8ca60000 	lw	a2,0(a1)
bfc04714:	1443010b 	bne	v0,v1,bfc04b44 <inst_error>
bfc04718:	00000000 	nop
/home/csy/func/inst/n63_sb.S:109
bfc0471c:	3c0acc67 	lui	t2,0xcc67
bfc04720:	354a595e 	ori	t2,t2,0x595e
bfc04724:	3c09c374 	lui	t1,0xc374
bfc04728:	35296cb0 	ori	t1,t1,0x6cb0
bfc0472c:	3c08800d 	lui	t0,0x800d
bfc04730:	3c03cc67 	lui	v1,0xcc67
bfc04734:	346359b0 	ori	v1,v1,0x59b0
bfc04738:	ad0a0000 	sw	t2,0(t0)
bfc0473c:	a1090000 	sb	t1,0(t0)
bfc04740:	25040004 	addiu	a0,t0,4
bfc04744:	2505fffc 	addiu	a1,t0,-4
bfc04748:	ac840000 	sw	a0,0(a0)
bfc0474c:	aca50000 	sw	a1,0(a1)
bfc04750:	8d020000 	lw	v0,0(t0)
bfc04754:	8ca40000 	lw	a0,0(a1)
bfc04758:	8c850000 	lw	a1,0(a0)
bfc0475c:	8ca60000 	lw	a2,0(a1)
bfc04760:	144300f8 	bne	v0,v1,bfc04b44 <inst_error>
bfc04764:	00000000 	nop
/home/csy/func/inst/n63_sb.S:110
bfc04768:	3c0a3b4e 	lui	t2,0x3b4e
bfc0476c:	354a02ac 	ori	t2,t2,0x2ac
bfc04770:	3c099486 	lui	t1,0x9486
bfc04774:	35292c00 	ori	t1,t1,0x2c00
bfc04778:	3c08800d 	lui	t0,0x800d
bfc0477c:	3c033b00 	lui	v1,0x3b00
bfc04780:	346302ac 	ori	v1,v1,0x2ac
bfc04784:	ad0a0000 	sw	t2,0(t0)
bfc04788:	a1090002 	sb	t1,2(t0)
bfc0478c:	25040004 	addiu	a0,t0,4
bfc04790:	2505fffc 	addiu	a1,t0,-4
bfc04794:	ac840000 	sw	a0,0(a0)
bfc04798:	aca50000 	sw	a1,0(a1)
bfc0479c:	8d020000 	lw	v0,0(t0)
bfc047a0:	8ca40000 	lw	a0,0(a1)
bfc047a4:	8c850000 	lw	a1,0(a0)
bfc047a8:	8ca60000 	lw	a2,0(a1)
bfc047ac:	144300e5 	bne	v0,v1,bfc04b44 <inst_error>
bfc047b0:	00000000 	nop
/home/csy/func/inst/n63_sb.S:111
bfc047b4:	3c0ae21e 	lui	t2,0xe21e
bfc047b8:	354a9e40 	ori	t2,t2,0x9e40
bfc047bc:	3c0903ad 	lui	t1,0x3ad
bfc047c0:	352975f4 	ori	t1,t1,0x75f4
bfc047c4:	3c08800d 	lui	t0,0x800d
bfc047c8:	3c03e21e 	lui	v1,0xe21e
bfc047cc:	34639ef4 	ori	v1,v1,0x9ef4
bfc047d0:	ad0a0000 	sw	t2,0(t0)
bfc047d4:	a1090000 	sb	t1,0(t0)
bfc047d8:	25040004 	addiu	a0,t0,4
bfc047dc:	2505fffc 	addiu	a1,t0,-4
bfc047e0:	ac840000 	sw	a0,0(a0)
bfc047e4:	aca50000 	sw	a1,0(a1)
bfc047e8:	8d020000 	lw	v0,0(t0)
bfc047ec:	8ca40000 	lw	a0,0(a1)
bfc047f0:	8c850000 	lw	a1,0(a0)
bfc047f4:	8ca60000 	lw	a2,0(a1)
bfc047f8:	144300d2 	bne	v0,v1,bfc04b44 <inst_error>
bfc047fc:	00000000 	nop
/home/csy/func/inst/n63_sb.S:112
bfc04800:	3c0a2a4f 	lui	t2,0x2a4f
bfc04804:	354a1a28 	ori	t2,t2,0x1a28
bfc04808:	3c091a25 	lui	t1,0x1a25
bfc0480c:	35291802 	ori	t1,t1,0x1802
bfc04810:	3c08800d 	lui	t0,0x800d
bfc04814:	3c032a4f 	lui	v1,0x2a4f
bfc04818:	34631a02 	ori	v1,v1,0x1a02
bfc0481c:	ad0a0000 	sw	t2,0(t0)
bfc04820:	a1090000 	sb	t1,0(t0)
bfc04824:	25040004 	addiu	a0,t0,4
bfc04828:	2505fffc 	addiu	a1,t0,-4
bfc0482c:	ac840000 	sw	a0,0(a0)
bfc04830:	aca50000 	sw	a1,0(a1)
bfc04834:	8d020000 	lw	v0,0(t0)
bfc04838:	8ca40000 	lw	a0,0(a1)
bfc0483c:	8c850000 	lw	a1,0(a0)
bfc04840:	8ca60000 	lw	a2,0(a1)
bfc04844:	144300bf 	bne	v0,v1,bfc04b44 <inst_error>
bfc04848:	00000000 	nop
/home/csy/func/inst/n63_sb.S:113
bfc0484c:	3c0a2de3 	lui	t2,0x2de3
bfc04850:	354ab624 	ori	t2,t2,0xb624
bfc04854:	3c09394a 	lui	t1,0x394a
bfc04858:	35296480 	ori	t1,t1,0x6480
bfc0485c:	3c08800d 	lui	t0,0x800d
bfc04860:	3c032d80 	lui	v1,0x2d80
bfc04864:	3463b624 	ori	v1,v1,0xb624
bfc04868:	ad0a0000 	sw	t2,0(t0)
bfc0486c:	a1090002 	sb	t1,2(t0)
bfc04870:	25040004 	addiu	a0,t0,4
bfc04874:	2505fffc 	addiu	a1,t0,-4
bfc04878:	ac840000 	sw	a0,0(a0)
bfc0487c:	aca50000 	sw	a1,0(a1)
bfc04880:	8d020000 	lw	v0,0(t0)
bfc04884:	8ca40000 	lw	a0,0(a1)
bfc04888:	8c850000 	lw	a1,0(a0)
bfc0488c:	8ca60000 	lw	a2,0(a1)
bfc04890:	144300ac 	bne	v0,v1,bfc04b44 <inst_error>
bfc04894:	00000000 	nop
/home/csy/func/inst/n63_sb.S:114
bfc04898:	3c0a163a 	lui	t2,0x163a
bfc0489c:	354a9c0e 	ori	t2,t2,0x9c0e
bfc048a0:	3c099829 	lui	t1,0x9829
bfc048a4:	35295f3e 	ori	t1,t1,0x5f3e
bfc048a8:	3c08800d 	lui	t0,0x800d
bfc048ac:	3c03163a 	lui	v1,0x163a
bfc048b0:	34639c3e 	ori	v1,v1,0x9c3e
bfc048b4:	ad0a0000 	sw	t2,0(t0)
bfc048b8:	a1090000 	sb	t1,0(t0)
bfc048bc:	25040004 	addiu	a0,t0,4
bfc048c0:	2505fffc 	addiu	a1,t0,-4
bfc048c4:	ac840000 	sw	a0,0(a0)
bfc048c8:	aca50000 	sw	a1,0(a1)
bfc048cc:	8d020000 	lw	v0,0(t0)
bfc048d0:	8ca40000 	lw	a0,0(a1)
bfc048d4:	8c850000 	lw	a1,0(a0)
bfc048d8:	8ca60000 	lw	a2,0(a1)
bfc048dc:	14430099 	bne	v0,v1,bfc04b44 <inst_error>
bfc048e0:	00000000 	nop
/home/csy/func/inst/n63_sb.S:115
bfc048e4:	3c0a4e95 	lui	t2,0x4e95
bfc048e8:	354ab5e6 	ori	t2,t2,0xb5e6
bfc048ec:	3c09ab39 	lui	t1,0xab39
bfc048f0:	3529a0f1 	ori	t1,t1,0xa0f1
bfc048f4:	3c08800d 	lui	t0,0x800d
bfc048f8:	3c03f195 	lui	v1,0xf195
bfc048fc:	3463b5e6 	ori	v1,v1,0xb5e6
bfc04900:	ad0a0000 	sw	t2,0(t0)
bfc04904:	a1090003 	sb	t1,3(t0)
bfc04908:	25040004 	addiu	a0,t0,4
bfc0490c:	2505fffc 	addiu	a1,t0,-4
bfc04910:	ac840000 	sw	a0,0(a0)
bfc04914:	aca50000 	sw	a1,0(a1)
bfc04918:	8d020000 	lw	v0,0(t0)
bfc0491c:	8ca40000 	lw	a0,0(a1)
bfc04920:	8c850000 	lw	a1,0(a0)
bfc04924:	8ca60000 	lw	a2,0(a1)
bfc04928:	14430086 	bne	v0,v1,bfc04b44 <inst_error>
bfc0492c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:116
bfc04930:	3c0a72a0 	lui	t2,0x72a0
bfc04934:	354a13f3 	ori	t2,t2,0x13f3
bfc04938:	3c09920b 	lui	t1,0x920b
bfc0493c:	35296b7c 	ori	t1,t1,0x6b7c
bfc04940:	3c08800d 	lui	t0,0x800d
bfc04944:	3c037ca0 	lui	v1,0x7ca0
bfc04948:	346313f3 	ori	v1,v1,0x13f3
bfc0494c:	ad0a0000 	sw	t2,0(t0)
bfc04950:	a1090003 	sb	t1,3(t0)
bfc04954:	25040004 	addiu	a0,t0,4
bfc04958:	2505fffc 	addiu	a1,t0,-4
bfc0495c:	ac840000 	sw	a0,0(a0)
bfc04960:	aca50000 	sw	a1,0(a1)
bfc04964:	8d020000 	lw	v0,0(t0)
bfc04968:	8ca40000 	lw	a0,0(a1)
bfc0496c:	8c850000 	lw	a1,0(a0)
bfc04970:	8ca60000 	lw	a2,0(a1)
bfc04974:	14430073 	bne	v0,v1,bfc04b44 <inst_error>
bfc04978:	00000000 	nop
/home/csy/func/inst/n63_sb.S:117
bfc0497c:	3c0a5ff7 	lui	t2,0x5ff7
bfc04980:	354a8063 	ori	t2,t2,0x8063
bfc04984:	3c09b3be 	lui	t1,0xb3be
bfc04988:	352948f8 	ori	t1,t1,0x48f8
bfc0498c:	3c08800d 	lui	t0,0x800d
bfc04990:	3c03f8f7 	lui	v1,0xf8f7
bfc04994:	34638063 	ori	v1,v1,0x8063
bfc04998:	ad0a0000 	sw	t2,0(t0)
bfc0499c:	a1090003 	sb	t1,3(t0)
bfc049a0:	25040004 	addiu	a0,t0,4
bfc049a4:	2505fffc 	addiu	a1,t0,-4
bfc049a8:	ac840000 	sw	a0,0(a0)
bfc049ac:	aca50000 	sw	a1,0(a1)
bfc049b0:	8d020000 	lw	v0,0(t0)
bfc049b4:	8ca40000 	lw	a0,0(a1)
bfc049b8:	8c850000 	lw	a1,0(a0)
bfc049bc:	8ca60000 	lw	a2,0(a1)
bfc049c0:	14430060 	bne	v0,v1,bfc04b44 <inst_error>
bfc049c4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:118
bfc049c8:	3c0a857c 	lui	t2,0x857c
bfc049cc:	354a8744 	ori	t2,t2,0x8744
bfc049d0:	3c09bd04 	lui	t1,0xbd04
bfc049d4:	35296514 	ori	t1,t1,0x6514
bfc049d8:	3c08800d 	lui	t0,0x800d
bfc049dc:	3c03857c 	lui	v1,0x857c
bfc049e0:	34638714 	ori	v1,v1,0x8714
bfc049e4:	ad0a0000 	sw	t2,0(t0)
bfc049e8:	a1090000 	sb	t1,0(t0)
bfc049ec:	25040004 	addiu	a0,t0,4
bfc049f0:	2505fffc 	addiu	a1,t0,-4
bfc049f4:	ac840000 	sw	a0,0(a0)
bfc049f8:	aca50000 	sw	a1,0(a1)
bfc049fc:	8d020000 	lw	v0,0(t0)
bfc04a00:	8ca40000 	lw	a0,0(a1)
bfc04a04:	8c850000 	lw	a1,0(a0)
bfc04a08:	8ca60000 	lw	a2,0(a1)
bfc04a0c:	1443004d 	bne	v0,v1,bfc04b44 <inst_error>
bfc04a10:	00000000 	nop
/home/csy/func/inst/n63_sb.S:119
bfc04a14:	3c0a387f 	lui	t2,0x387f
bfc04a18:	354adade 	ori	t2,t2,0xdade
bfc04a1c:	3c09542f 	lui	t1,0x542f
bfc04a20:	352967c0 	ori	t1,t1,0x67c0
bfc04a24:	3c08800d 	lui	t0,0x800d
bfc04a28:	3c03387f 	lui	v1,0x387f
bfc04a2c:	3463c0de 	ori	v1,v1,0xc0de
bfc04a30:	ad0a0000 	sw	t2,0(t0)
bfc04a34:	a1090001 	sb	t1,1(t0)
bfc04a38:	25040004 	addiu	a0,t0,4
bfc04a3c:	2505fffc 	addiu	a1,t0,-4
bfc04a40:	ac840000 	sw	a0,0(a0)
bfc04a44:	aca50000 	sw	a1,0(a1)
bfc04a48:	8d020000 	lw	v0,0(t0)
bfc04a4c:	8ca40000 	lw	a0,0(a1)
bfc04a50:	8c850000 	lw	a1,0(a0)
bfc04a54:	8ca60000 	lw	a2,0(a1)
bfc04a58:	1443003a 	bne	v0,v1,bfc04b44 <inst_error>
bfc04a5c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:120
bfc04a60:	3c0af96b 	lui	t2,0xf96b
bfc04a64:	354a1db0 	ori	t2,t2,0x1db0
bfc04a68:	3c09c78f 	lui	t1,0xc78f
bfc04a6c:	3529ac20 	ori	t1,t1,0xac20
bfc04a70:	3c08800d 	lui	t0,0x800d
bfc04a74:	3c03f96b 	lui	v1,0xf96b
bfc04a78:	346320b0 	ori	v1,v1,0x20b0
bfc04a7c:	ad0a0000 	sw	t2,0(t0)
bfc04a80:	a1090001 	sb	t1,1(t0)
bfc04a84:	25040004 	addiu	a0,t0,4
bfc04a88:	2505fffc 	addiu	a1,t0,-4
bfc04a8c:	ac840000 	sw	a0,0(a0)
bfc04a90:	aca50000 	sw	a1,0(a1)
bfc04a94:	8d020000 	lw	v0,0(t0)
bfc04a98:	8ca40000 	lw	a0,0(a1)
bfc04a9c:	8c850000 	lw	a1,0(a0)
bfc04aa0:	8ca60000 	lw	a2,0(a1)
bfc04aa4:	14430027 	bne	v0,v1,bfc04b44 <inst_error>
bfc04aa8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:121
bfc04aac:	3c0ada28 	lui	t2,0xda28
bfc04ab0:	354a716c 	ori	t2,t2,0x716c
bfc04ab4:	3c096e6d 	lui	t1,0x6e6d
bfc04ab8:	352940e0 	ori	t1,t1,0x40e0
bfc04abc:	3c08800d 	lui	t0,0x800d
bfc04ac0:	3c03da28 	lui	v1,0xda28
bfc04ac4:	346371e0 	ori	v1,v1,0x71e0
bfc04ac8:	ad0a0000 	sw	t2,0(t0)
bfc04acc:	a1090000 	sb	t1,0(t0)
bfc04ad0:	25040004 	addiu	a0,t0,4
bfc04ad4:	2505fffc 	addiu	a1,t0,-4
bfc04ad8:	ac840000 	sw	a0,0(a0)
bfc04adc:	aca50000 	sw	a1,0(a1)
bfc04ae0:	8d020000 	lw	v0,0(t0)
bfc04ae4:	8ca40000 	lw	a0,0(a1)
bfc04ae8:	8c850000 	lw	a1,0(a0)
bfc04aec:	8ca60000 	lw	a2,0(a1)
bfc04af0:	14430014 	bne	v0,v1,bfc04b44 <inst_error>
bfc04af4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:122
bfc04af8:	240a0000 	li	t2,0
bfc04afc:	24090000 	li	t1,0
bfc04b00:	3c08800d 	lui	t0,0x800d
bfc04b04:	24030000 	li	v1,0
bfc04b08:	ad0a0000 	sw	t2,0(t0)
bfc04b0c:	a1090000 	sb	t1,0(t0)
bfc04b10:	25040004 	addiu	a0,t0,4
bfc04b14:	2505fffc 	addiu	a1,t0,-4
bfc04b18:	ac840000 	sw	a0,0(a0)
bfc04b1c:	aca50000 	sw	a1,0(a1)
bfc04b20:	8d020000 	lw	v0,0(t0)
bfc04b24:	8ca40000 	lw	a0,0(a1)
bfc04b28:	8c850000 	lw	a1,0(a0)
bfc04b2c:	8ca60000 	lw	a2,0(a1)
bfc04b30:	14430004 	bne	v0,v1,bfc04b44 <inst_error>
bfc04b34:	00000000 	nop
/home/csy/func/inst/n63_sb.S:124
bfc04b38:	16400002 	bnez	s2,bfc04b44 <inst_error>
/home/csy/func/inst/n63_sb.S:125
bfc04b3c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:127
bfc04b40:	26730001 	addiu	s3,s3,1

bfc04b44 <inst_error>:
/home/csy/func/inst/n63_sb.S:130
bfc04b44:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n63_sb.S:131
bfc04b48:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n63_sb.S:132
bfc04b4c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n63_sb.S:133
bfc04b50:	03e00008 	jr	ra
/home/csy/func/inst/n63_sb.S:134
bfc04b54:	00000000 	nop
	...

bfc04b60 <n73_sw_ades_ex_test>:
/home/csy/func/inst/n73_sw_ades_ex.S:7
bfc04b60:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n73_sw_ades_ex.S:8
bfc04b64:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n73_sw_ades_ex.S:9
bfc04b68:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:10
bfc04b6c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:12
bfc04b70:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n73_sw_ades_ex.S:13
bfc04b74:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n73_sw_ades_ex.S:14
bfc04b78:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n73_sw_ades_ex.S:15
bfc04b7c:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:16
bfc04b80:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n73_sw_ades_ex.S:19
bfc04b84:	3c02b189 	lui	v0,0xb189
bfc04b88:	3442c470 	ori	v0,v0,0xc470
bfc04b8c:	3c03b189 	lui	v1,0xb189
bfc04b90:	3463c470 	ori	v1,v1,0xc470
bfc04b94:	3c04800d 	lui	a0,0x800d
bfc04b98:	34847bd1 	ori	a0,a0,0x7bd1
bfc04b9c:	3c05b189 	lui	a1,0xb189
bfc04ba0:	34a5c470 	ori	a1,a1,0xc470
bfc04ba4:	24877974 	addiu	a3,a0,31092
bfc04ba8:	ac827973 	sw	v0,31091(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:20
bfc04bac:	3c14bfc0 	lui	s4,0xbfc0
bfc04bb0:	26944bb4 	addiu	s4,s4,19380
/home/csy/func/inst/n73_sw_ades_ex.S:21
bfc04bb4:	ac857974 	sw	a1,31092(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:22
bfc04bb8:	165700a2 	bne	s2,s7,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:23
bfc04bbc:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:24
bfc04bc0:	8c827973 	lw	v0,31091(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:25
bfc04bc4:	1443009f 	bne	v0,v1,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:26
bfc04bc8:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:27
bfc04bcc:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:28
bfc04bd0:	14f6009c 	bne	a3,s6,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:29
bfc04bd4:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:31
bfc04bd8:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:32
bfc04bdc:	3c02c052 	lui	v0,0xc052
bfc04be0:	3442b3f0 	ori	v0,v0,0xb3f0
bfc04be4:	3c03c052 	lui	v1,0xc052
bfc04be8:	3463b3f0 	ori	v1,v1,0xb3f0
bfc04bec:	3c04800d 	lui	a0,0x800d
bfc04bf0:	348423d4 	ori	a0,a0,0x23d4
bfc04bf4:	3c05c052 	lui	a1,0xc052
bfc04bf8:	34a5b3f0 	ori	a1,a1,0xb3f0
bfc04bfc:	248764a2 	addiu	a3,a0,25762
bfc04c00:	ac8264a0 	sw	v0,25760(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:33
bfc04c04:	3c14bfc0 	lui	s4,0xbfc0
bfc04c08:	26944c14 	addiu	s4,s4,19476
/home/csy/func/inst/n73_sw_ades_ex.S:34
bfc04c0c:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:35
bfc04c10:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:36
bfc04c14:	ac8564a2 	sw	a1,25762(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:37
bfc04c18:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:38
bfc04c1c:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:39
bfc04c20:	15340088 	bne	t1,s4,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:40
bfc04c24:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:41
bfc04c28:	16570086 	bne	s2,s7,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:42
bfc04c2c:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:43
bfc04c30:	8c8264a0 	lw	v0,25760(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:44
bfc04c34:	14430083 	bne	v0,v1,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:45
bfc04c38:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:46
bfc04c3c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:47
bfc04c40:	14f60080 	bne	a3,s6,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:48
bfc04c44:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:49
bfc04c48:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:50
bfc04c4c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:52
bfc04c50:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:53
bfc04c54:	3c02a10f 	lui	v0,0xa10f
bfc04c58:	3442ebaf 	ori	v0,v0,0xebaf
bfc04c5c:	3c03a10f 	lui	v1,0xa10f
bfc04c60:	3463ebaf 	ori	v1,v1,0xebaf
bfc04c64:	3c04800d 	lui	a0,0x800d
bfc04c68:	34848850 	ori	a0,a0,0x8850
bfc04c6c:	3c05994c 	lui	a1,0x994c
bfc04c70:	34a50280 	ori	a1,a1,0x280
bfc04c74:	2487418b 	addiu	a3,a0,16779
bfc04c78:	ac824188 	sw	v0,16776(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:54
bfc04c7c:	3c14bfc0 	lui	s4,0xbfc0
bfc04c80:	26944c8c 	addiu	s4,s4,19596
/home/csy/func/inst/n73_sw_ades_ex.S:55
bfc04c84:	01000011 	mthi	t0
/home/csy/func/inst/n73_sw_ades_ex.S:56
bfc04c88:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n73_sw_ades_ex.S:57
bfc04c8c:	ac85418b 	sw	a1,16779(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:58
bfc04c90:	00004810 	mfhi	t1
/home/csy/func/inst/n73_sw_ades_ex.S:59
bfc04c94:	1128006b 	beq	t1,t0,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:60
bfc04c98:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:61
bfc04c9c:	16570069 	bne	s2,s7,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:62
bfc04ca0:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:63
bfc04ca4:	8c824188 	lw	v0,16776(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:64
bfc04ca8:	14430066 	bne	v0,v1,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:65
bfc04cac:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:66
bfc04cb0:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:67
bfc04cb4:	14f60063 	bne	a3,s6,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:68
bfc04cb8:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:70
bfc04cbc:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:71
bfc04cc0:	3c02eb54 	lui	v0,0xeb54
bfc04cc4:	3442b87c 	ori	v0,v0,0xb87c
bfc04cc8:	3c03eb54 	lui	v1,0xeb54
bfc04ccc:	3463b87c 	ori	v1,v1,0xb87c
bfc04cd0:	3c04800d 	lui	a0,0x800d
bfc04cd4:	3484a256 	ori	a0,a0,0xa256
bfc04cd8:	3c05eb54 	lui	a1,0xeb54
bfc04cdc:	34a5b87c 	ori	a1,a1,0xb87c
bfc04ce0:	248700c3 	addiu	a3,a0,195
bfc04ce4:	ac8200c2 	sw	v0,194(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:72
bfc04ce8:	3c14bfc0 	lui	s4,0xbfc0
bfc04cec:	26944cf0 	addiu	s4,s4,19696
/home/csy/func/inst/n73_sw_ades_ex.S:73
bfc04cf0:	ac8500c3 	sw	a1,195(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:74
bfc04cf4:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n73_sw_ades_ex.S:75
bfc04cf8:	16570052 	bne	s2,s7,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:76
bfc04cfc:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:77
bfc04d00:	8c8200c2 	lw	v0,194(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:78
bfc04d04:	1443004f 	bne	v0,v1,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:79
bfc04d08:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:80
bfc04d0c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:81
bfc04d10:	14f6004c 	bne	a3,s6,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:82
bfc04d14:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:84
bfc04d18:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:85
bfc04d1c:	3c028003 	lui	v0,0x8003
bfc04d20:	34422066 	ori	v0,v0,0x2066
bfc04d24:	3c038003 	lui	v1,0x8003
bfc04d28:	34632066 	ori	v1,v1,0x2066
bfc04d2c:	3c04800d 	lui	a0,0x800d
bfc04d30:	3484206c 	ori	a0,a0,0x206c
bfc04d34:	3c05ebdc 	lui	a1,0xebdc
bfc04d38:	34a58860 	ori	a1,a1,0x8860
bfc04d3c:	2487ccc2 	addiu	a3,a0,-13118
bfc04d40:	ac82ccc0 	sw	v0,-13120(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:86
bfc04d44:	3c14bfc0 	lui	s4,0xbfc0
bfc04d48:	26944d54 	addiu	s4,s4,19796
/home/csy/func/inst/n73_sw_ades_ex.S:87
bfc04d4c:	01000013 	mtlo	t0
/home/csy/func/inst/n73_sw_ades_ex.S:88
bfc04d50:	01100019 	multu	t0,s0
/home/csy/func/inst/n73_sw_ades_ex.S:89
bfc04d54:	ac85ccc2 	sw	a1,-13118(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:90
bfc04d58:	00004810 	mfhi	t1
/home/csy/func/inst/n73_sw_ades_ex.S:91
bfc04d5c:	11280039 	beq	t1,t0,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:92
bfc04d60:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:93
bfc04d64:	16570037 	bne	s2,s7,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:94
bfc04d68:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:95
bfc04d6c:	8c82ccc0 	lw	v0,-13120(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:96
bfc04d70:	14430034 	bne	v0,v1,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:97
bfc04d74:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:98
bfc04d78:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:99
bfc04d7c:	14f60031 	bne	a3,s6,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:100
bfc04d80:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:102
bfc04d84:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:103
bfc04d88:	3c026348 	lui	v0,0x6348
bfc04d8c:	344258c8 	ori	v0,v0,0x58c8
bfc04d90:	3c036348 	lui	v1,0x6348
bfc04d94:	346358c8 	ori	v1,v1,0x58c8
bfc04d98:	3c04800d 	lui	a0,0x800d
bfc04d9c:	348482d8 	ori	a0,a0,0x82d8
bfc04da0:	3c050c41 	lui	a1,0xc41
bfc04da4:	34a5f5e8 	ori	a1,a1,0xf5e8
bfc04da8:	24878889 	addiu	a3,a0,-30583
bfc04dac:	ac828888 	sw	v0,-30584(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:104
bfc04db0:	3c14bfc0 	lui	s4,0xbfc0
bfc04db4:	26944db8 	addiu	s4,s4,19896
/home/csy/func/inst/n73_sw_ades_ex.S:105
bfc04db8:	ac858889 	sw	a1,-30583(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:106
bfc04dbc:	01120019 	multu	t0,s2
/home/csy/func/inst/n73_sw_ades_ex.S:107
bfc04dc0:	16570020 	bne	s2,s7,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:108
bfc04dc4:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:109
bfc04dc8:	8c828888 	lw	v0,-30584(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:110
bfc04dcc:	1443001d 	bne	v0,v1,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:111
bfc04dd0:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:112
bfc04dd4:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:113
bfc04dd8:	14f6001a 	bne	a3,s6,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:114
bfc04ddc:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:116
bfc04de0:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:117
bfc04de4:	3c028003 	lui	v0,0x8003
bfc04de8:	34421751 	ori	v0,v0,0x1751
bfc04dec:	3c038003 	lui	v1,0x8003
bfc04df0:	34631751 	ori	v1,v1,0x1751
bfc04df4:	3c04800d 	lui	a0,0x800d
bfc04df8:	34841750 	ori	a0,a0,0x1750
bfc04dfc:	3c05cb09 	lui	a1,0xcb09
bfc04e00:	34a5da60 	ori	a1,a1,0xda60
bfc04e04:	24879b27 	addiu	a3,a0,-25817
bfc04e08:	ac829b24 	sw	v0,-25820(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:118
bfc04e0c:	3c14bfc0 	lui	s4,0xbfc0
bfc04e10:	26944e18 	addiu	s4,s4,19992
/home/csy/func/inst/n73_sw_ades_ex.S:119
bfc04e14:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n73_sw_ades_ex.S:120
bfc04e18:	ac859b27 	sw	a1,-25817(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:121
bfc04e1c:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n73_sw_ades_ex.S:122
bfc04e20:	16570008 	bne	s2,s7,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:123
bfc04e24:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:124
bfc04e28:	8c829b24 	lw	v0,-25820(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:125
bfc04e2c:	14430005 	bne	v0,v1,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:126
bfc04e30:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:127
bfc04e34:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:128
bfc04e38:	14f60002 	bne	a3,s6,bfc04e44 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:129
bfc04e3c:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:131
bfc04e40:	26730001 	addiu	s3,s3,1

bfc04e44 <inst_error>:
/home/csy/func/inst/n73_sw_ades_ex.S:134
bfc04e44:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n73_sw_ades_ex.S:135
bfc04e48:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n73_sw_ades_ex.S:136
bfc04e4c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n73_sw_ades_ex.S:137
bfc04e50:	03e00008 	jr	ra
/home/csy/func/inst/n73_sw_ades_ex.S:138
bfc04e54:	00000000 	nop
	...

bfc04e60 <n6_lw_test>:
/home/csy/func/inst/n6_lw.S:7
bfc04e60:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n6_lw.S:8
bfc04e64:	24120000 	li	s2,0
/home/csy/func/inst/n6_lw.S:10
bfc04e68:	3c09c822 	lui	t1,0xc822
bfc04e6c:	3529c7e8 	ori	t1,t1,0xc7e8
bfc04e70:	3c08800d 	lui	t0,0x800d
bfc04e74:	350834c0 	ori	t0,t0,0x34c0
bfc04e78:	3c03c822 	lui	v1,0xc822
bfc04e7c:	3463c7e8 	ori	v1,v1,0xc7e8
bfc04e80:	ad0966a8 	sw	t1,26280(t0)
bfc04e84:	25040004 	addiu	a0,t0,4
bfc04e88:	2505fff8 	addiu	a1,t0,-8
bfc04e8c:	ac8466a8 	sw	a0,26280(a0)
bfc04e90:	aca566a8 	sw	a1,26280(a1)
bfc04e94:	8d0266a8 	lw	v0,26280(t0)
bfc04e98:	8c8666a8 	lw	a2,26280(a0)
bfc04e9c:	8ca466a8 	lw	a0,26280(a1)
bfc04ea0:	8ca666a8 	lw	a2,26280(a1)
bfc04ea4:	144304e8 	bne	v0,v1,bfc06248 <inst_error>
bfc04ea8:	00000000 	nop
/home/csy/func/inst/n6_lw.S:11
bfc04eac:	3c097173 	lui	t1,0x7173
bfc04eb0:	35297c10 	ori	t1,t1,0x7c10
bfc04eb4:	3c08800d 	lui	t0,0x800d
bfc04eb8:	3508f660 	ori	t0,t0,0xf660
bfc04ebc:	3c037173 	lui	v1,0x7173
bfc04ec0:	34637c10 	ori	v1,v1,0x7c10
bfc04ec4:	ad0902e4 	sw	t1,740(t0)
bfc04ec8:	25040004 	addiu	a0,t0,4
bfc04ecc:	2505fff8 	addiu	a1,t0,-8
bfc04ed0:	ac8402e4 	sw	a0,740(a0)
bfc04ed4:	aca502e4 	sw	a1,740(a1)
bfc04ed8:	8d0202e4 	lw	v0,740(t0)
bfc04edc:	8c8602e4 	lw	a2,740(a0)
bfc04ee0:	8ca402e4 	lw	a0,740(a1)
bfc04ee4:	8ca602e4 	lw	a2,740(a1)
bfc04ee8:	144304d7 	bne	v0,v1,bfc06248 <inst_error>
bfc04eec:	00000000 	nop
/home/csy/func/inst/n6_lw.S:12
bfc04ef0:	3c090368 	lui	t1,0x368
bfc04ef4:	35292420 	ori	t1,t1,0x2420
bfc04ef8:	3c08800d 	lui	t0,0x800d
bfc04efc:	350824e4 	ori	t0,t0,0x24e4
bfc04f00:	3c030368 	lui	v1,0x368
bfc04f04:	34632420 	ori	v1,v1,0x2420
bfc04f08:	ad091680 	sw	t1,5760(t0)
bfc04f0c:	25040004 	addiu	a0,t0,4
bfc04f10:	2505fff8 	addiu	a1,t0,-8
bfc04f14:	ac841680 	sw	a0,5760(a0)
bfc04f18:	aca51680 	sw	a1,5760(a1)
bfc04f1c:	8d021680 	lw	v0,5760(t0)
bfc04f20:	8c861680 	lw	a2,5760(a0)
bfc04f24:	8ca41680 	lw	a0,5760(a1)
bfc04f28:	8ca61680 	lw	a2,5760(a1)
bfc04f2c:	144304c6 	bne	v0,v1,bfc06248 <inst_error>
bfc04f30:	00000000 	nop
/home/csy/func/inst/n6_lw.S:13
bfc04f34:	3c096f59 	lui	t1,0x6f59
bfc04f38:	3529f5d3 	ori	t1,t1,0xf5d3
bfc04f3c:	3c08800d 	lui	t0,0x800d
bfc04f40:	3508abdc 	ori	t0,t0,0xabdc
bfc04f44:	3c036f59 	lui	v1,0x6f59
bfc04f48:	3463f5d3 	ori	v1,v1,0xf5d3
bfc04f4c:	ad0901b0 	sw	t1,432(t0)
bfc04f50:	25040004 	addiu	a0,t0,4
bfc04f54:	2505fff8 	addiu	a1,t0,-8
bfc04f58:	ac8401b0 	sw	a0,432(a0)
bfc04f5c:	aca501b0 	sw	a1,432(a1)
bfc04f60:	8d0201b0 	lw	v0,432(t0)
bfc04f64:	8c8601b0 	lw	a2,432(a0)
bfc04f68:	8ca401b0 	lw	a0,432(a1)
bfc04f6c:	8ca601b0 	lw	a2,432(a1)
bfc04f70:	144304b5 	bne	v0,v1,bfc06248 <inst_error>
bfc04f74:	00000000 	nop
/home/csy/func/inst/n6_lw.S:14
bfc04f78:	3c0956d9 	lui	t1,0x56d9
bfc04f7c:	35290696 	ori	t1,t1,0x696
bfc04f80:	3c08800d 	lui	t0,0x800d
bfc04f84:	350828b4 	ori	t0,t0,0x28b4
bfc04f88:	3c0356d9 	lui	v1,0x56d9
bfc04f8c:	34630696 	ori	v1,v1,0x696
bfc04f90:	ad091cf4 	sw	t1,7412(t0)
bfc04f94:	25040004 	addiu	a0,t0,4
bfc04f98:	2505fff8 	addiu	a1,t0,-8
bfc04f9c:	ac841cf4 	sw	a0,7412(a0)
bfc04fa0:	aca51cf4 	sw	a1,7412(a1)
bfc04fa4:	8d021cf4 	lw	v0,7412(t0)
bfc04fa8:	8c861cf4 	lw	a2,7412(a0)
bfc04fac:	8ca41cf4 	lw	a0,7412(a1)
bfc04fb0:	8ca61cf4 	lw	a2,7412(a1)
bfc04fb4:	144304a4 	bne	v0,v1,bfc06248 <inst_error>
bfc04fb8:	00000000 	nop
/home/csy/func/inst/n6_lw.S:15
bfc04fbc:	3c09eda5 	lui	t1,0xeda5
bfc04fc0:	35292048 	ori	t1,t1,0x2048
bfc04fc4:	3c08800d 	lui	t0,0x800d
bfc04fc8:	35084ea8 	ori	t0,t0,0x4ea8
bfc04fcc:	3c03eda5 	lui	v1,0xeda5
bfc04fd0:	34632048 	ori	v1,v1,0x2048
bfc04fd4:	ad092db0 	sw	t1,11696(t0)
bfc04fd8:	25040004 	addiu	a0,t0,4
bfc04fdc:	2505fff8 	addiu	a1,t0,-8
bfc04fe0:	ac842db0 	sw	a0,11696(a0)
bfc04fe4:	aca52db0 	sw	a1,11696(a1)
bfc04fe8:	8d022db0 	lw	v0,11696(t0)
bfc04fec:	8c862db0 	lw	a2,11696(a0)
bfc04ff0:	8ca42db0 	lw	a0,11696(a1)
bfc04ff4:	8ca62db0 	lw	a2,11696(a1)
bfc04ff8:	14430493 	bne	v0,v1,bfc06248 <inst_error>
bfc04ffc:	00000000 	nop
/home/csy/func/inst/n6_lw.S:16
bfc05000:	3c09383e 	lui	t1,0x383e
bfc05004:	35298970 	ori	t1,t1,0x8970
bfc05008:	3c08800d 	lui	t0,0x800d
bfc0500c:	35088ae4 	ori	t0,t0,0x8ae4
bfc05010:	3c03383e 	lui	v1,0x383e
bfc05014:	34638970 	ori	v1,v1,0x8970
bfc05018:	ad096d88 	sw	t1,28040(t0)
bfc0501c:	25040004 	addiu	a0,t0,4
bfc05020:	2505fff8 	addiu	a1,t0,-8
bfc05024:	ac846d88 	sw	a0,28040(a0)
bfc05028:	aca56d88 	sw	a1,28040(a1)
bfc0502c:	8d026d88 	lw	v0,28040(t0)
bfc05030:	8c866d88 	lw	a2,28040(a0)
bfc05034:	8ca46d88 	lw	a0,28040(a1)
bfc05038:	8ca66d88 	lw	a2,28040(a1)
bfc0503c:	14430482 	bne	v0,v1,bfc06248 <inst_error>
bfc05040:	00000000 	nop
/home/csy/func/inst/n6_lw.S:17
bfc05044:	3c0928c9 	lui	t1,0x28c9
bfc05048:	35290aca 	ori	t1,t1,0xaca
bfc0504c:	3c08800d 	lui	t0,0x800d
bfc05050:	35083840 	ori	t0,t0,0x3840
bfc05054:	3c0328c9 	lui	v1,0x28c9
bfc05058:	34630aca 	ori	v1,v1,0xaca
bfc0505c:	3c010001 	lui	at,0x1
bfc05060:	00280821 	addu	at,at,t0
bfc05064:	ac29b058 	sw	t1,-20392(at)
bfc05068:	25040004 	addiu	a0,t0,4
bfc0506c:	2505fff8 	addiu	a1,t0,-8
bfc05070:	3c010001 	lui	at,0x1
bfc05074:	00240821 	addu	at,at,a0
bfc05078:	ac24b058 	sw	a0,-20392(at)
bfc0507c:	3c010001 	lui	at,0x1
bfc05080:	00250821 	addu	at,at,a1
bfc05084:	ac25b058 	sw	a1,-20392(at)
bfc05088:	3c020001 	lui	v0,0x1
bfc0508c:	00481021 	addu	v0,v0,t0
bfc05090:	8c42b058 	lw	v0,-20392(v0)
bfc05094:	3c060001 	lui	a2,0x1
bfc05098:	00c43021 	addu	a2,a2,a0
bfc0509c:	8cc6b058 	lw	a2,-20392(a2)
bfc050a0:	3c040001 	lui	a0,0x1
bfc050a4:	00852021 	addu	a0,a0,a1
bfc050a8:	8c84b058 	lw	a0,-20392(a0)
bfc050ac:	3c060001 	lui	a2,0x1
bfc050b0:	00c53021 	addu	a2,a2,a1
bfc050b4:	8cc6b058 	lw	a2,-20392(a2)
bfc050b8:	14430463 	bne	v0,v1,bfc06248 <inst_error>
bfc050bc:	00000000 	nop
/home/csy/func/inst/n6_lw.S:18
bfc050c0:	3c0954ac 	lui	t1,0x54ac
bfc050c4:	3529a118 	ori	t1,t1,0xa118
bfc050c8:	3c08800d 	lui	t0,0x800d
bfc050cc:	350806c0 	ori	t0,t0,0x6c0
bfc050d0:	3c0354ac 	lui	v1,0x54ac
bfc050d4:	3463a118 	ori	v1,v1,0xa118
bfc050d8:	3c010001 	lui	at,0x1
bfc050dc:	00280821 	addu	at,at,t0
bfc050e0:	ac29a6e4 	sw	t1,-22812(at)
bfc050e4:	25040004 	addiu	a0,t0,4
bfc050e8:	2505fff8 	addiu	a1,t0,-8
bfc050ec:	3c010001 	lui	at,0x1
bfc050f0:	00240821 	addu	at,at,a0
bfc050f4:	ac24a6e4 	sw	a0,-22812(at)
bfc050f8:	3c010001 	lui	at,0x1
bfc050fc:	00250821 	addu	at,at,a1
bfc05100:	ac25a6e4 	sw	a1,-22812(at)
bfc05104:	3c020001 	lui	v0,0x1
bfc05108:	00481021 	addu	v0,v0,t0
bfc0510c:	8c42a6e4 	lw	v0,-22812(v0)
bfc05110:	3c060001 	lui	a2,0x1
bfc05114:	00c43021 	addu	a2,a2,a0
bfc05118:	8cc6a6e4 	lw	a2,-22812(a2)
bfc0511c:	3c040001 	lui	a0,0x1
bfc05120:	00852021 	addu	a0,a0,a1
bfc05124:	8c84a6e4 	lw	a0,-22812(a0)
bfc05128:	3c060001 	lui	a2,0x1
bfc0512c:	00c53021 	addu	a2,a2,a1
bfc05130:	8cc6a6e4 	lw	a2,-22812(a2)
bfc05134:	14430444 	bne	v0,v1,bfc06248 <inst_error>
bfc05138:	00000000 	nop
/home/csy/func/inst/n6_lw.S:19
bfc0513c:	3c09909e 	lui	t1,0x909e
bfc05140:	352934d2 	ori	t1,t1,0x34d2
bfc05144:	3c08800d 	lui	t0,0x800d
bfc05148:	350837c0 	ori	t0,t0,0x37c0
bfc0514c:	3c03909e 	lui	v1,0x909e
bfc05150:	346334d2 	ori	v1,v1,0x34d2
bfc05154:	3c010001 	lui	at,0x1
bfc05158:	00280821 	addu	at,at,t0
bfc0515c:	ac29a8cc 	sw	t1,-22324(at)
bfc05160:	25040004 	addiu	a0,t0,4
bfc05164:	2505fff8 	addiu	a1,t0,-8
bfc05168:	3c010001 	lui	at,0x1
bfc0516c:	00240821 	addu	at,at,a0
bfc05170:	ac24a8cc 	sw	a0,-22324(at)
bfc05174:	3c010001 	lui	at,0x1
bfc05178:	00250821 	addu	at,at,a1
bfc0517c:	ac25a8cc 	sw	a1,-22324(at)
bfc05180:	3c020001 	lui	v0,0x1
bfc05184:	00481021 	addu	v0,v0,t0
bfc05188:	8c42a8cc 	lw	v0,-22324(v0)
bfc0518c:	3c060001 	lui	a2,0x1
bfc05190:	00c43021 	addu	a2,a2,a0
bfc05194:	8cc6a8cc 	lw	a2,-22324(a2)
bfc05198:	3c040001 	lui	a0,0x1
bfc0519c:	00852021 	addu	a0,a0,a1
bfc051a0:	8c84a8cc 	lw	a0,-22324(a0)
bfc051a4:	3c060001 	lui	a2,0x1
bfc051a8:	00c53021 	addu	a2,a2,a1
bfc051ac:	8cc6a8cc 	lw	a2,-22324(a2)
bfc051b0:	14430425 	bne	v0,v1,bfc06248 <inst_error>
bfc051b4:	00000000 	nop
/home/csy/func/inst/n6_lw.S:20
bfc051b8:	3c09c4b1 	lui	t1,0xc4b1
bfc051bc:	3529feb0 	ori	t1,t1,0xfeb0
bfc051c0:	3c08800d 	lui	t0,0x800d
bfc051c4:	35080cf8 	ori	t0,t0,0xcf8
bfc051c8:	3c03c4b1 	lui	v1,0xc4b1
bfc051cc:	3463feb0 	ori	v1,v1,0xfeb0
bfc051d0:	ad091288 	sw	t1,4744(t0)
bfc051d4:	25040004 	addiu	a0,t0,4
bfc051d8:	2505fff8 	addiu	a1,t0,-8
bfc051dc:	ac841288 	sw	a0,4744(a0)
bfc051e0:	aca51288 	sw	a1,4744(a1)
bfc051e4:	8d021288 	lw	v0,4744(t0)
bfc051e8:	8c861288 	lw	a2,4744(a0)
bfc051ec:	8ca41288 	lw	a0,4744(a1)
bfc051f0:	8ca61288 	lw	a2,4744(a1)
bfc051f4:	14430414 	bne	v0,v1,bfc06248 <inst_error>
bfc051f8:	00000000 	nop
/home/csy/func/inst/n6_lw.S:21
bfc051fc:	3c09cb6c 	lui	t1,0xcb6c
bfc05200:	3529d8c0 	ori	t1,t1,0xd8c0
bfc05204:	3c08800d 	lui	t0,0x800d
bfc05208:	35086db8 	ori	t0,t0,0x6db8
bfc0520c:	3c03cb6c 	lui	v1,0xcb6c
bfc05210:	3463d8c0 	ori	v1,v1,0xd8c0
bfc05214:	ad092050 	sw	t1,8272(t0)
bfc05218:	25040004 	addiu	a0,t0,4
bfc0521c:	2505fff8 	addiu	a1,t0,-8
bfc05220:	ac842050 	sw	a0,8272(a0)
bfc05224:	aca52050 	sw	a1,8272(a1)
bfc05228:	8d022050 	lw	v0,8272(t0)
bfc0522c:	8c862050 	lw	a2,8272(a0)
bfc05230:	8ca42050 	lw	a0,8272(a1)
bfc05234:	8ca62050 	lw	a2,8272(a1)
bfc05238:	14430403 	bne	v0,v1,bfc06248 <inst_error>
bfc0523c:	00000000 	nop
/home/csy/func/inst/n6_lw.S:22
bfc05240:	3c096639 	lui	t1,0x6639
bfc05244:	35294aee 	ori	t1,t1,0x4aee
bfc05248:	3c08800d 	lui	t0,0x800d
bfc0524c:	3508522c 	ori	t0,t0,0x522c
bfc05250:	3c036639 	lui	v1,0x6639
bfc05254:	34634aee 	ori	v1,v1,0x4aee
bfc05258:	3c010001 	lui	at,0x1
bfc0525c:	00280821 	addu	at,at,t0
bfc05260:	ac2994e4 	sw	t1,-27420(at)
bfc05264:	25040004 	addiu	a0,t0,4
bfc05268:	2505fff8 	addiu	a1,t0,-8
bfc0526c:	3c010001 	lui	at,0x1
bfc05270:	00240821 	addu	at,at,a0
bfc05274:	ac2494e4 	sw	a0,-27420(at)
bfc05278:	3c010001 	lui	at,0x1
bfc0527c:	00250821 	addu	at,at,a1
bfc05280:	ac2594e4 	sw	a1,-27420(at)
bfc05284:	3c020001 	lui	v0,0x1
bfc05288:	00481021 	addu	v0,v0,t0
bfc0528c:	8c4294e4 	lw	v0,-27420(v0)
bfc05290:	3c060001 	lui	a2,0x1
bfc05294:	00c43021 	addu	a2,a2,a0
bfc05298:	8cc694e4 	lw	a2,-27420(a2)
bfc0529c:	3c040001 	lui	a0,0x1
bfc052a0:	00852021 	addu	a0,a0,a1
bfc052a4:	8c8494e4 	lw	a0,-27420(a0)
bfc052a8:	3c060001 	lui	a2,0x1
bfc052ac:	00c53021 	addu	a2,a2,a1
bfc052b0:	8cc694e4 	lw	a2,-27420(a2)
bfc052b4:	144303e4 	bne	v0,v1,bfc06248 <inst_error>
bfc052b8:	00000000 	nop
/home/csy/func/inst/n6_lw.S:23
bfc052bc:	3c0948d3 	lui	t1,0x48d3
bfc052c0:	352955e4 	ori	t1,t1,0x55e4
bfc052c4:	3c08800d 	lui	t0,0x800d
bfc052c8:	35086b90 	ori	t0,t0,0x6b90
bfc052cc:	3c0348d3 	lui	v1,0x48d3
bfc052d0:	346355e4 	ori	v1,v1,0x55e4
bfc052d4:	ad094af0 	sw	t1,19184(t0)
bfc052d8:	25040004 	addiu	a0,t0,4
bfc052dc:	2505fff8 	addiu	a1,t0,-8
bfc052e0:	ac844af0 	sw	a0,19184(a0)
bfc052e4:	aca54af0 	sw	a1,19184(a1)
bfc052e8:	8d024af0 	lw	v0,19184(t0)
bfc052ec:	8c864af0 	lw	a2,19184(a0)
bfc052f0:	8ca44af0 	lw	a0,19184(a1)
bfc052f4:	8ca64af0 	lw	a2,19184(a1)
bfc052f8:	144303d3 	bne	v0,v1,bfc06248 <inst_error>
bfc052fc:	00000000 	nop
/home/csy/func/inst/n6_lw.S:24
bfc05300:	3c091bb4 	lui	t1,0x1bb4
bfc05304:	35290b48 	ori	t1,t1,0xb48
bfc05308:	3c08800d 	lui	t0,0x800d
bfc0530c:	35082e6c 	ori	t0,t0,0x2e6c
bfc05310:	3c031bb4 	lui	v1,0x1bb4
bfc05314:	34630b48 	ori	v1,v1,0xb48
bfc05318:	3c010001 	lui	at,0x1
bfc0531c:	00280821 	addu	at,at,t0
bfc05320:	ac299a68 	sw	t1,-26008(at)
bfc05324:	25040004 	addiu	a0,t0,4
bfc05328:	2505fff8 	addiu	a1,t0,-8
bfc0532c:	3c010001 	lui	at,0x1
bfc05330:	00240821 	addu	at,at,a0
bfc05334:	ac249a68 	sw	a0,-26008(at)
bfc05338:	3c010001 	lui	at,0x1
bfc0533c:	00250821 	addu	at,at,a1
bfc05340:	ac259a68 	sw	a1,-26008(at)
bfc05344:	3c020001 	lui	v0,0x1
bfc05348:	00481021 	addu	v0,v0,t0
bfc0534c:	8c429a68 	lw	v0,-26008(v0)
bfc05350:	3c060001 	lui	a2,0x1
bfc05354:	00c43021 	addu	a2,a2,a0
bfc05358:	8cc69a68 	lw	a2,-26008(a2)
bfc0535c:	3c040001 	lui	a0,0x1
bfc05360:	00852021 	addu	a0,a0,a1
bfc05364:	8c849a68 	lw	a0,-26008(a0)
bfc05368:	3c060001 	lui	a2,0x1
bfc0536c:	00c53021 	addu	a2,a2,a1
bfc05370:	8cc69a68 	lw	a2,-26008(a2)
bfc05374:	144303b4 	bne	v0,v1,bfc06248 <inst_error>
bfc05378:	00000000 	nop
/home/csy/func/inst/n6_lw.S:25
bfc0537c:	3c092a74 	lui	t1,0x2a74
bfc05380:	35298b22 	ori	t1,t1,0x8b22
bfc05384:	3c08800d 	lui	t0,0x800d
bfc05388:	35087160 	ori	t0,t0,0x7160
bfc0538c:	3c032a74 	lui	v1,0x2a74
bfc05390:	34638b22 	ori	v1,v1,0x8b22
bfc05394:	3c010001 	lui	at,0x1
bfc05398:	00280821 	addu	at,at,t0
bfc0539c:	ac2981f0 	sw	t1,-32272(at)
bfc053a0:	25040004 	addiu	a0,t0,4
bfc053a4:	2505fff8 	addiu	a1,t0,-8
bfc053a8:	3c010001 	lui	at,0x1
bfc053ac:	00240821 	addu	at,at,a0
bfc053b0:	ac2481f0 	sw	a0,-32272(at)
bfc053b4:	3c010001 	lui	at,0x1
bfc053b8:	00250821 	addu	at,at,a1
bfc053bc:	ac2581f0 	sw	a1,-32272(at)
bfc053c0:	3c020001 	lui	v0,0x1
bfc053c4:	00481021 	addu	v0,v0,t0
bfc053c8:	8c4281f0 	lw	v0,-32272(v0)
bfc053cc:	3c060001 	lui	a2,0x1
bfc053d0:	00c43021 	addu	a2,a2,a0
bfc053d4:	8cc681f0 	lw	a2,-32272(a2)
bfc053d8:	3c040001 	lui	a0,0x1
bfc053dc:	00852021 	addu	a0,a0,a1
bfc053e0:	8c8481f0 	lw	a0,-32272(a0)
bfc053e4:	3c060001 	lui	a2,0x1
bfc053e8:	00c53021 	addu	a2,a2,a1
bfc053ec:	8cc681f0 	lw	a2,-32272(a2)
bfc053f0:	14430395 	bne	v0,v1,bfc06248 <inst_error>
bfc053f4:	00000000 	nop
/home/csy/func/inst/n6_lw.S:26
bfc053f8:	3c09d5cf 	lui	t1,0xd5cf
bfc053fc:	3529b394 	ori	t1,t1,0xb394
bfc05400:	3c08800d 	lui	t0,0x800d
bfc05404:	35087f00 	ori	t0,t0,0x7f00
bfc05408:	3c03d5cf 	lui	v1,0xd5cf
bfc0540c:	3463b394 	ori	v1,v1,0xb394
bfc05410:	ad090514 	sw	t1,1300(t0)
bfc05414:	25040004 	addiu	a0,t0,4
bfc05418:	2505fff8 	addiu	a1,t0,-8
bfc0541c:	ac840514 	sw	a0,1300(a0)
bfc05420:	aca50514 	sw	a1,1300(a1)
bfc05424:	8d020514 	lw	v0,1300(t0)
bfc05428:	8c860514 	lw	a2,1300(a0)
bfc0542c:	8ca40514 	lw	a0,1300(a1)
bfc05430:	8ca60514 	lw	a2,1300(a1)
bfc05434:	14430384 	bne	v0,v1,bfc06248 <inst_error>
bfc05438:	00000000 	nop
/home/csy/func/inst/n6_lw.S:27
bfc0543c:	3c097244 	lui	t1,0x7244
bfc05440:	35295ce0 	ori	t1,t1,0x5ce0
bfc05444:	3c08800d 	lui	t0,0x800d
bfc05448:	350859e4 	ori	t0,t0,0x59e4
bfc0544c:	3c037244 	lui	v1,0x7244
bfc05450:	34635ce0 	ori	v1,v1,0x5ce0
bfc05454:	3c010001 	lui	at,0x1
bfc05458:	00280821 	addu	at,at,t0
bfc0545c:	ac299f14 	sw	t1,-24812(at)
bfc05460:	25040004 	addiu	a0,t0,4
bfc05464:	2505fff8 	addiu	a1,t0,-8
bfc05468:	3c010001 	lui	at,0x1
bfc0546c:	00240821 	addu	at,at,a0
bfc05470:	ac249f14 	sw	a0,-24812(at)
bfc05474:	3c010001 	lui	at,0x1
bfc05478:	00250821 	addu	at,at,a1
bfc0547c:	ac259f14 	sw	a1,-24812(at)
bfc05480:	3c020001 	lui	v0,0x1
bfc05484:	00481021 	addu	v0,v0,t0
bfc05488:	8c429f14 	lw	v0,-24812(v0)
bfc0548c:	3c060001 	lui	a2,0x1
bfc05490:	00c43021 	addu	a2,a2,a0
bfc05494:	8cc69f14 	lw	a2,-24812(a2)
bfc05498:	3c040001 	lui	a0,0x1
bfc0549c:	00852021 	addu	a0,a0,a1
bfc054a0:	8c849f14 	lw	a0,-24812(a0)
bfc054a4:	3c060001 	lui	a2,0x1
bfc054a8:	00c53021 	addu	a2,a2,a1
bfc054ac:	8cc69f14 	lw	a2,-24812(a2)
bfc054b0:	14430365 	bne	v0,v1,bfc06248 <inst_error>
bfc054b4:	00000000 	nop
/home/csy/func/inst/n6_lw.S:28
bfc054b8:	3c09c017 	lui	t1,0xc017
bfc054bc:	352902ce 	ori	t1,t1,0x2ce
bfc054c0:	3c08800d 	lui	t0,0x800d
bfc054c4:	350802d8 	ori	t0,t0,0x2d8
bfc054c8:	3c03c017 	lui	v1,0xc017
bfc054cc:	346302ce 	ori	v1,v1,0x2ce
bfc054d0:	ad097cd4 	sw	t1,31956(t0)
bfc054d4:	25040004 	addiu	a0,t0,4
bfc054d8:	2505fff8 	addiu	a1,t0,-8
bfc054dc:	ac847cd4 	sw	a0,31956(a0)
bfc054e0:	aca57cd4 	sw	a1,31956(a1)
bfc054e4:	8d027cd4 	lw	v0,31956(t0)
bfc054e8:	8c867cd4 	lw	a2,31956(a0)
bfc054ec:	8ca47cd4 	lw	a0,31956(a1)
bfc054f0:	8ca67cd4 	lw	a2,31956(a1)
bfc054f4:	14430354 	bne	v0,v1,bfc06248 <inst_error>
bfc054f8:	00000000 	nop
/home/csy/func/inst/n6_lw.S:29
bfc054fc:	3c09a616 	lui	t1,0xa616
bfc05500:	3529d1be 	ori	t1,t1,0xd1be
bfc05504:	3c08800d 	lui	t0,0x800d
bfc05508:	350807f0 	ori	t0,t0,0x7f0
bfc0550c:	3c03a616 	lui	v1,0xa616
bfc05510:	3463d1be 	ori	v1,v1,0xd1be
bfc05514:	ad090ac4 	sw	t1,2756(t0)
bfc05518:	25040004 	addiu	a0,t0,4
bfc0551c:	2505fff8 	addiu	a1,t0,-8
bfc05520:	ac840ac4 	sw	a0,2756(a0)
bfc05524:	aca50ac4 	sw	a1,2756(a1)
bfc05528:	8d020ac4 	lw	v0,2756(t0)
bfc0552c:	8c860ac4 	lw	a2,2756(a0)
bfc05530:	8ca40ac4 	lw	a0,2756(a1)
bfc05534:	8ca60ac4 	lw	a2,2756(a1)
bfc05538:	14430343 	bne	v0,v1,bfc06248 <inst_error>
bfc0553c:	00000000 	nop
/home/csy/func/inst/n6_lw.S:30
bfc05540:	3c09f145 	lui	t1,0xf145
bfc05544:	35296d95 	ori	t1,t1,0x6d95
bfc05548:	3c08800d 	lui	t0,0x800d
bfc0554c:	35087754 	ori	t0,t0,0x7754
bfc05550:	3c03f145 	lui	v1,0xf145
bfc05554:	34636d95 	ori	v1,v1,0x6d95
bfc05558:	ad091358 	sw	t1,4952(t0)
bfc0555c:	25040004 	addiu	a0,t0,4
bfc05560:	2505fff8 	addiu	a1,t0,-8
bfc05564:	ac841358 	sw	a0,4952(a0)
bfc05568:	aca51358 	sw	a1,4952(a1)
bfc0556c:	8d021358 	lw	v0,4952(t0)
bfc05570:	8c861358 	lw	a2,4952(a0)
bfc05574:	8ca41358 	lw	a0,4952(a1)
bfc05578:	8ca61358 	lw	a2,4952(a1)
bfc0557c:	14430332 	bne	v0,v1,bfc06248 <inst_error>
bfc05580:	00000000 	nop
/home/csy/func/inst/n6_lw.S:31
bfc05584:	3c09b98a 	lui	t1,0xb98a
bfc05588:	35290778 	ori	t1,t1,0x778
bfc0558c:	3c08800d 	lui	t0,0x800d
bfc05590:	35081a74 	ori	t0,t0,0x1a74
bfc05594:	3c03b98a 	lui	v1,0xb98a
bfc05598:	34630778 	ori	v1,v1,0x778
bfc0559c:	ad093408 	sw	t1,13320(t0)
bfc055a0:	25040004 	addiu	a0,t0,4
bfc055a4:	2505fff8 	addiu	a1,t0,-8
bfc055a8:	ac843408 	sw	a0,13320(a0)
bfc055ac:	aca53408 	sw	a1,13320(a1)
bfc055b0:	8d023408 	lw	v0,13320(t0)
bfc055b4:	8c863408 	lw	a2,13320(a0)
bfc055b8:	8ca43408 	lw	a0,13320(a1)
bfc055bc:	8ca63408 	lw	a2,13320(a1)
bfc055c0:	14430321 	bne	v0,v1,bfc06248 <inst_error>
bfc055c4:	00000000 	nop
/home/csy/func/inst/n6_lw.S:32
bfc055c8:	3c097685 	lui	t1,0x7685
bfc055cc:	35292c0e 	ori	t1,t1,0x2c0e
bfc055d0:	3c08800d 	lui	t0,0x800d
bfc055d4:	3508788c 	ori	t0,t0,0x788c
bfc055d8:	3c037685 	lui	v1,0x7685
bfc055dc:	34632c0e 	ori	v1,v1,0x2c0e
bfc055e0:	ad090dfc 	sw	t1,3580(t0)
bfc055e4:	25040004 	addiu	a0,t0,4
bfc055e8:	2505fff8 	addiu	a1,t0,-8
bfc055ec:	ac840dfc 	sw	a0,3580(a0)
bfc055f0:	aca50dfc 	sw	a1,3580(a1)
bfc055f4:	8d020dfc 	lw	v0,3580(t0)
bfc055f8:	8c860dfc 	lw	a2,3580(a0)
bfc055fc:	8ca40dfc 	lw	a0,3580(a1)
bfc05600:	8ca60dfc 	lw	a2,3580(a1)
bfc05604:	14430310 	bne	v0,v1,bfc06248 <inst_error>
bfc05608:	00000000 	nop
/home/csy/func/inst/n6_lw.S:33
bfc0560c:	3c093a4e 	lui	t1,0x3a4e
bfc05610:	35296338 	ori	t1,t1,0x6338
bfc05614:	3c08800d 	lui	t0,0x800d
bfc05618:	3c033a4e 	lui	v1,0x3a4e
bfc0561c:	34636338 	ori	v1,v1,0x6338
bfc05620:	3c010001 	lui	at,0x1
bfc05624:	00280821 	addu	at,at,t0
bfc05628:	ac29eba8 	sw	t1,-5208(at)
bfc0562c:	25040004 	addiu	a0,t0,4
bfc05630:	2505fff8 	addiu	a1,t0,-8
bfc05634:	3c010001 	lui	at,0x1
bfc05638:	00240821 	addu	at,at,a0
bfc0563c:	ac24eba8 	sw	a0,-5208(at)
bfc05640:	3c010001 	lui	at,0x1
bfc05644:	00250821 	addu	at,at,a1
bfc05648:	ac25eba8 	sw	a1,-5208(at)
bfc0564c:	3c020001 	lui	v0,0x1
bfc05650:	00481021 	addu	v0,v0,t0
bfc05654:	8c42eba8 	lw	v0,-5208(v0)
bfc05658:	3c060001 	lui	a2,0x1
bfc0565c:	00c43021 	addu	a2,a2,a0
bfc05660:	8cc6eba8 	lw	a2,-5208(a2)
bfc05664:	3c040001 	lui	a0,0x1
bfc05668:	00852021 	addu	a0,a0,a1
bfc0566c:	8c84eba8 	lw	a0,-5208(a0)
bfc05670:	3c060001 	lui	a2,0x1
bfc05674:	00c53021 	addu	a2,a2,a1
bfc05678:	8cc6eba8 	lw	a2,-5208(a2)
bfc0567c:	144302f2 	bne	v0,v1,bfc06248 <inst_error>
bfc05680:	00000000 	nop
/home/csy/func/inst/n6_lw.S:34
bfc05684:	3c098625 	lui	t1,0x8625
bfc05688:	3529f42c 	ori	t1,t1,0xf42c
bfc0568c:	3c08800d 	lui	t0,0x800d
bfc05690:	3c038625 	lui	v1,0x8625
bfc05694:	3463f42c 	ori	v1,v1,0xf42c
bfc05698:	3c010001 	lui	at,0x1
bfc0569c:	00280821 	addu	at,at,t0
bfc056a0:	ac29fac0 	sw	t1,-1344(at)
bfc056a4:	25040004 	addiu	a0,t0,4
bfc056a8:	2505fff8 	addiu	a1,t0,-8
bfc056ac:	3c010001 	lui	at,0x1
bfc056b0:	00240821 	addu	at,at,a0
bfc056b4:	ac24fac0 	sw	a0,-1344(at)
bfc056b8:	3c010001 	lui	at,0x1
bfc056bc:	00250821 	addu	at,at,a1
bfc056c0:	ac25fac0 	sw	a1,-1344(at)
bfc056c4:	3c020001 	lui	v0,0x1
bfc056c8:	00481021 	addu	v0,v0,t0
bfc056cc:	8c42fac0 	lw	v0,-1344(v0)
bfc056d0:	3c060001 	lui	a2,0x1
bfc056d4:	00c43021 	addu	a2,a2,a0
bfc056d8:	8cc6fac0 	lw	a2,-1344(a2)
bfc056dc:	3c040001 	lui	a0,0x1
bfc056e0:	00852021 	addu	a0,a0,a1
bfc056e4:	8c84fac0 	lw	a0,-1344(a0)
bfc056e8:	3c060001 	lui	a2,0x1
bfc056ec:	00c53021 	addu	a2,a2,a1
bfc056f0:	8cc6fac0 	lw	a2,-1344(a2)
bfc056f4:	144302d4 	bne	v0,v1,bfc06248 <inst_error>
bfc056f8:	00000000 	nop
/home/csy/func/inst/n6_lw.S:35
bfc056fc:	3c091624 	lui	t1,0x1624
bfc05700:	35290da0 	ori	t1,t1,0xda0
bfc05704:	3c08800d 	lui	t0,0x800d
bfc05708:	3c031624 	lui	v1,0x1624
bfc0570c:	34630da0 	ori	v1,v1,0xda0
bfc05710:	3c010001 	lui	at,0x1
bfc05714:	00280821 	addu	at,at,t0
bfc05718:	ac29fec4 	sw	t1,-316(at)
bfc0571c:	25040004 	addiu	a0,t0,4
bfc05720:	2505fff8 	addiu	a1,t0,-8
bfc05724:	3c010001 	lui	at,0x1
bfc05728:	00240821 	addu	at,at,a0
bfc0572c:	ac24fec4 	sw	a0,-316(at)
bfc05730:	3c010001 	lui	at,0x1
bfc05734:	00250821 	addu	at,at,a1
bfc05738:	ac25fec4 	sw	a1,-316(at)
bfc0573c:	3c020001 	lui	v0,0x1
bfc05740:	00481021 	addu	v0,v0,t0
bfc05744:	8c42fec4 	lw	v0,-316(v0)
bfc05748:	3c060001 	lui	a2,0x1
bfc0574c:	00c43021 	addu	a2,a2,a0
bfc05750:	8cc6fec4 	lw	a2,-316(a2)
bfc05754:	3c040001 	lui	a0,0x1
bfc05758:	00852021 	addu	a0,a0,a1
bfc0575c:	8c84fec4 	lw	a0,-316(a0)
bfc05760:	3c060001 	lui	a2,0x1
bfc05764:	00c53021 	addu	a2,a2,a1
bfc05768:	8cc6fec4 	lw	a2,-316(a2)
bfc0576c:	144302b6 	bne	v0,v1,bfc06248 <inst_error>
bfc05770:	00000000 	nop
/home/csy/func/inst/n6_lw.S:36
bfc05774:	3c09325a 	lui	t1,0x325a
bfc05778:	352952cc 	ori	t1,t1,0x52cc
bfc0577c:	3c08800d 	lui	t0,0x800d
bfc05780:	3c03325a 	lui	v1,0x325a
bfc05784:	346352cc 	ori	v1,v1,0x52cc
bfc05788:	ad091310 	sw	t1,4880(t0)
bfc0578c:	25040004 	addiu	a0,t0,4
bfc05790:	2505fff8 	addiu	a1,t0,-8
bfc05794:	ac841310 	sw	a0,4880(a0)
bfc05798:	aca51310 	sw	a1,4880(a1)
bfc0579c:	8d021310 	lw	v0,4880(t0)
bfc057a0:	8c861310 	lw	a2,4880(a0)
bfc057a4:	8ca41310 	lw	a0,4880(a1)
bfc057a8:	8ca61310 	lw	a2,4880(a1)
bfc057ac:	144302a6 	bne	v0,v1,bfc06248 <inst_error>
bfc057b0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:37
bfc057b4:	3c09848c 	lui	t1,0x848c
bfc057b8:	3529badf 	ori	t1,t1,0xbadf
bfc057bc:	3c08800d 	lui	t0,0x800d
bfc057c0:	3c03848c 	lui	v1,0x848c
bfc057c4:	3463badf 	ori	v1,v1,0xbadf
bfc057c8:	ad090828 	sw	t1,2088(t0)
bfc057cc:	25040004 	addiu	a0,t0,4
bfc057d0:	2505fff8 	addiu	a1,t0,-8
bfc057d4:	ac840828 	sw	a0,2088(a0)
bfc057d8:	aca50828 	sw	a1,2088(a1)
bfc057dc:	8d020828 	lw	v0,2088(t0)
bfc057e0:	8c860828 	lw	a2,2088(a0)
bfc057e4:	8ca40828 	lw	a0,2088(a1)
bfc057e8:	8ca60828 	lw	a2,2088(a1)
bfc057ec:	14430296 	bne	v0,v1,bfc06248 <inst_error>
bfc057f0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:38
bfc057f4:	3c099569 	lui	t1,0x9569
bfc057f8:	35296380 	ori	t1,t1,0x6380
bfc057fc:	3c08800d 	lui	t0,0x800d
bfc05800:	3c039569 	lui	v1,0x9569
bfc05804:	34636380 	ori	v1,v1,0x6380
bfc05808:	3c010001 	lui	at,0x1
bfc0580c:	00280821 	addu	at,at,t0
bfc05810:	ac29e620 	sw	t1,-6624(at)
bfc05814:	25040004 	addiu	a0,t0,4
bfc05818:	2505fff8 	addiu	a1,t0,-8
bfc0581c:	3c010001 	lui	at,0x1
bfc05820:	00240821 	addu	at,at,a0
bfc05824:	ac24e620 	sw	a0,-6624(at)
bfc05828:	3c010001 	lui	at,0x1
bfc0582c:	00250821 	addu	at,at,a1
bfc05830:	ac25e620 	sw	a1,-6624(at)
bfc05834:	3c020001 	lui	v0,0x1
bfc05838:	00481021 	addu	v0,v0,t0
bfc0583c:	8c42e620 	lw	v0,-6624(v0)
bfc05840:	3c060001 	lui	a2,0x1
bfc05844:	00c43021 	addu	a2,a2,a0
bfc05848:	8cc6e620 	lw	a2,-6624(a2)
bfc0584c:	3c040001 	lui	a0,0x1
bfc05850:	00852021 	addu	a0,a0,a1
bfc05854:	8c84e620 	lw	a0,-6624(a0)
bfc05858:	3c060001 	lui	a2,0x1
bfc0585c:	00c53021 	addu	a2,a2,a1
bfc05860:	8cc6e620 	lw	a2,-6624(a2)
bfc05864:	14430278 	bne	v0,v1,bfc06248 <inst_error>
bfc05868:	00000000 	nop
/home/csy/func/inst/n6_lw.S:39
bfc0586c:	3c09cf5f 	lui	t1,0xcf5f
bfc05870:	35297ec0 	ori	t1,t1,0x7ec0
bfc05874:	3c08800d 	lui	t0,0x800d
bfc05878:	3c03cf5f 	lui	v1,0xcf5f
bfc0587c:	34637ec0 	ori	v1,v1,0x7ec0
bfc05880:	3c010001 	lui	at,0x1
bfc05884:	00280821 	addu	at,at,t0
bfc05888:	ac29d68c 	sw	t1,-10612(at)
bfc0588c:	25040004 	addiu	a0,t0,4
bfc05890:	2505fff8 	addiu	a1,t0,-8
bfc05894:	3c010001 	lui	at,0x1
bfc05898:	00240821 	addu	at,at,a0
bfc0589c:	ac24d68c 	sw	a0,-10612(at)
bfc058a0:	3c010001 	lui	at,0x1
bfc058a4:	00250821 	addu	at,at,a1
bfc058a8:	ac25d68c 	sw	a1,-10612(at)
bfc058ac:	3c020001 	lui	v0,0x1
bfc058b0:	00481021 	addu	v0,v0,t0
bfc058b4:	8c42d68c 	lw	v0,-10612(v0)
bfc058b8:	3c060001 	lui	a2,0x1
bfc058bc:	00c43021 	addu	a2,a2,a0
bfc058c0:	8cc6d68c 	lw	a2,-10612(a2)
bfc058c4:	3c040001 	lui	a0,0x1
bfc058c8:	00852021 	addu	a0,a0,a1
bfc058cc:	8c84d68c 	lw	a0,-10612(a0)
bfc058d0:	3c060001 	lui	a2,0x1
bfc058d4:	00c53021 	addu	a2,a2,a1
bfc058d8:	8cc6d68c 	lw	a2,-10612(a2)
bfc058dc:	1443025a 	bne	v0,v1,bfc06248 <inst_error>
bfc058e0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:40
bfc058e4:	3c0982ae 	lui	t1,0x82ae
bfc058e8:	352970d0 	ori	t1,t1,0x70d0
bfc058ec:	3c08800d 	lui	t0,0x800d
bfc058f0:	3c0382ae 	lui	v1,0x82ae
bfc058f4:	346370d0 	ori	v1,v1,0x70d0
bfc058f8:	ad092524 	sw	t1,9508(t0)
bfc058fc:	25040004 	addiu	a0,t0,4
bfc05900:	2505fff8 	addiu	a1,t0,-8
bfc05904:	ac842524 	sw	a0,9508(a0)
bfc05908:	aca52524 	sw	a1,9508(a1)
bfc0590c:	8d022524 	lw	v0,9508(t0)
bfc05910:	8c862524 	lw	a2,9508(a0)
bfc05914:	8ca42524 	lw	a0,9508(a1)
bfc05918:	8ca62524 	lw	a2,9508(a1)
bfc0591c:	1443024a 	bne	v0,v1,bfc06248 <inst_error>
bfc05920:	00000000 	nop
/home/csy/func/inst/n6_lw.S:41
bfc05924:	3c09c354 	lui	t1,0xc354
bfc05928:	3529a660 	ori	t1,t1,0xa660
bfc0592c:	3c08800d 	lui	t0,0x800d
bfc05930:	3c03c354 	lui	v1,0xc354
bfc05934:	3463a660 	ori	v1,v1,0xa660
bfc05938:	ad096cf0 	sw	t1,27888(t0)
bfc0593c:	25040004 	addiu	a0,t0,4
bfc05940:	2505fff8 	addiu	a1,t0,-8
bfc05944:	ac846cf0 	sw	a0,27888(a0)
bfc05948:	aca56cf0 	sw	a1,27888(a1)
bfc0594c:	8d026cf0 	lw	v0,27888(t0)
bfc05950:	8c866cf0 	lw	a2,27888(a0)
bfc05954:	8ca46cf0 	lw	a0,27888(a1)
bfc05958:	8ca66cf0 	lw	a2,27888(a1)
bfc0595c:	1443023a 	bne	v0,v1,bfc06248 <inst_error>
bfc05960:	00000000 	nop
/home/csy/func/inst/n6_lw.S:42
bfc05964:	3c0966a3 	lui	t1,0x66a3
bfc05968:	35298db4 	ori	t1,t1,0x8db4
bfc0596c:	3c08800d 	lui	t0,0x800d
bfc05970:	3c0366a3 	lui	v1,0x66a3
bfc05974:	34638db4 	ori	v1,v1,0x8db4
bfc05978:	ad092530 	sw	t1,9520(t0)
bfc0597c:	25040004 	addiu	a0,t0,4
bfc05980:	2505fff8 	addiu	a1,t0,-8
bfc05984:	ac842530 	sw	a0,9520(a0)
bfc05988:	aca52530 	sw	a1,9520(a1)
bfc0598c:	8d022530 	lw	v0,9520(t0)
bfc05990:	8c862530 	lw	a2,9520(a0)
bfc05994:	8ca42530 	lw	a0,9520(a1)
bfc05998:	8ca62530 	lw	a2,9520(a1)
bfc0599c:	1443022a 	bne	v0,v1,bfc06248 <inst_error>
bfc059a0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:43
bfc059a4:	3c091364 	lui	t1,0x1364
bfc059a8:	35299030 	ori	t1,t1,0x9030
bfc059ac:	3c08800d 	lui	t0,0x800d
bfc059b0:	3c031364 	lui	v1,0x1364
bfc059b4:	34639030 	ori	v1,v1,0x9030
bfc059b8:	ad095bc4 	sw	t1,23492(t0)
bfc059bc:	25040004 	addiu	a0,t0,4
bfc059c0:	2505fff8 	addiu	a1,t0,-8
bfc059c4:	ac845bc4 	sw	a0,23492(a0)
bfc059c8:	aca55bc4 	sw	a1,23492(a1)
bfc059cc:	8d025bc4 	lw	v0,23492(t0)
bfc059d0:	8c865bc4 	lw	a2,23492(a0)
bfc059d4:	8ca45bc4 	lw	a0,23492(a1)
bfc059d8:	8ca65bc4 	lw	a2,23492(a1)
bfc059dc:	1443021a 	bne	v0,v1,bfc06248 <inst_error>
bfc059e0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:44
bfc059e4:	3c09b7f6 	lui	t1,0xb7f6
bfc059e8:	35296e24 	ori	t1,t1,0x6e24
bfc059ec:	3c08800d 	lui	t0,0x800d
bfc059f0:	3c03b7f6 	lui	v1,0xb7f6
bfc059f4:	34636e24 	ori	v1,v1,0x6e24
bfc059f8:	ad0928b0 	sw	t1,10416(t0)
bfc059fc:	25040004 	addiu	a0,t0,4
bfc05a00:	2505fff8 	addiu	a1,t0,-8
bfc05a04:	ac8428b0 	sw	a0,10416(a0)
bfc05a08:	aca528b0 	sw	a1,10416(a1)
bfc05a0c:	8d0228b0 	lw	v0,10416(t0)
bfc05a10:	8c8628b0 	lw	a2,10416(a0)
bfc05a14:	8ca428b0 	lw	a0,10416(a1)
bfc05a18:	8ca628b0 	lw	a2,10416(a1)
bfc05a1c:	1443020a 	bne	v0,v1,bfc06248 <inst_error>
bfc05a20:	00000000 	nop
/home/csy/func/inst/n6_lw.S:45
bfc05a24:	3c09c268 	lui	t1,0xc268
bfc05a28:	3529a414 	ori	t1,t1,0xa414
bfc05a2c:	3c08800d 	lui	t0,0x800d
bfc05a30:	3c03c268 	lui	v1,0xc268
bfc05a34:	3463a414 	ori	v1,v1,0xa414
bfc05a38:	ad0959c0 	sw	t1,22976(t0)
bfc05a3c:	25040004 	addiu	a0,t0,4
bfc05a40:	2505fff8 	addiu	a1,t0,-8
bfc05a44:	ac8459c0 	sw	a0,22976(a0)
bfc05a48:	aca559c0 	sw	a1,22976(a1)
bfc05a4c:	8d0259c0 	lw	v0,22976(t0)
bfc05a50:	8c8659c0 	lw	a2,22976(a0)
bfc05a54:	8ca459c0 	lw	a0,22976(a1)
bfc05a58:	8ca659c0 	lw	a2,22976(a1)
bfc05a5c:	144301fa 	bne	v0,v1,bfc06248 <inst_error>
bfc05a60:	00000000 	nop
/home/csy/func/inst/n6_lw.S:46
bfc05a64:	3c091020 	lui	t1,0x1020
bfc05a68:	352944e3 	ori	t1,t1,0x44e3
bfc05a6c:	3c08800d 	lui	t0,0x800d
bfc05a70:	3c031020 	lui	v1,0x1020
bfc05a74:	346344e3 	ori	v1,v1,0x44e3
bfc05a78:	ad093d0c 	sw	t1,15628(t0)
bfc05a7c:	25040004 	addiu	a0,t0,4
bfc05a80:	2505fff8 	addiu	a1,t0,-8
bfc05a84:	ac843d0c 	sw	a0,15628(a0)
bfc05a88:	aca53d0c 	sw	a1,15628(a1)
bfc05a8c:	8d023d0c 	lw	v0,15628(t0)
bfc05a90:	8c863d0c 	lw	a2,15628(a0)
bfc05a94:	8ca43d0c 	lw	a0,15628(a1)
bfc05a98:	8ca63d0c 	lw	a2,15628(a1)
bfc05a9c:	144301ea 	bne	v0,v1,bfc06248 <inst_error>
bfc05aa0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:47
bfc05aa4:	3c09ff0f 	lui	t1,0xff0f
bfc05aa8:	3529205f 	ori	t1,t1,0x205f
bfc05aac:	3c08800d 	lui	t0,0x800d
bfc05ab0:	3c03ff0f 	lui	v1,0xff0f
bfc05ab4:	3463205f 	ori	v1,v1,0x205f
bfc05ab8:	ad097be0 	sw	t1,31712(t0)
bfc05abc:	25040004 	addiu	a0,t0,4
bfc05ac0:	2505fff8 	addiu	a1,t0,-8
bfc05ac4:	ac847be0 	sw	a0,31712(a0)
bfc05ac8:	aca57be0 	sw	a1,31712(a1)
bfc05acc:	8d027be0 	lw	v0,31712(t0)
bfc05ad0:	8c867be0 	lw	a2,31712(a0)
bfc05ad4:	8ca47be0 	lw	a0,31712(a1)
bfc05ad8:	8ca67be0 	lw	a2,31712(a1)
bfc05adc:	144301da 	bne	v0,v1,bfc06248 <inst_error>
bfc05ae0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:48
bfc05ae4:	3c09e394 	lui	t1,0xe394
bfc05ae8:	3529e882 	ori	t1,t1,0xe882
bfc05aec:	3c08800d 	lui	t0,0x800d
bfc05af0:	3c03e394 	lui	v1,0xe394
bfc05af4:	3463e882 	ori	v1,v1,0xe882
bfc05af8:	ad093f00 	sw	t1,16128(t0)
bfc05afc:	25040004 	addiu	a0,t0,4
bfc05b00:	2505fff8 	addiu	a1,t0,-8
bfc05b04:	ac843f00 	sw	a0,16128(a0)
bfc05b08:	aca53f00 	sw	a1,16128(a1)
bfc05b0c:	8d023f00 	lw	v0,16128(t0)
bfc05b10:	8c863f00 	lw	a2,16128(a0)
bfc05b14:	8ca43f00 	lw	a0,16128(a1)
bfc05b18:	8ca63f00 	lw	a2,16128(a1)
bfc05b1c:	144301ca 	bne	v0,v1,bfc06248 <inst_error>
bfc05b20:	00000000 	nop
/home/csy/func/inst/n6_lw.S:49
bfc05b24:	3c096b53 	lui	t1,0x6b53
bfc05b28:	3529ef5a 	ori	t1,t1,0xef5a
bfc05b2c:	3c08800d 	lui	t0,0x800d
bfc05b30:	3c036b53 	lui	v1,0x6b53
bfc05b34:	3463ef5a 	ori	v1,v1,0xef5a
bfc05b38:	ad0931d0 	sw	t1,12752(t0)
bfc05b3c:	25040004 	addiu	a0,t0,4
bfc05b40:	2505fff8 	addiu	a1,t0,-8
bfc05b44:	ac8431d0 	sw	a0,12752(a0)
bfc05b48:	aca531d0 	sw	a1,12752(a1)
bfc05b4c:	8d0231d0 	lw	v0,12752(t0)
bfc05b50:	8c8631d0 	lw	a2,12752(a0)
bfc05b54:	8ca431d0 	lw	a0,12752(a1)
bfc05b58:	8ca631d0 	lw	a2,12752(a1)
bfc05b5c:	144301ba 	bne	v0,v1,bfc06248 <inst_error>
bfc05b60:	00000000 	nop
/home/csy/func/inst/n6_lw.S:50
bfc05b64:	3c09d3ad 	lui	t1,0xd3ad
bfc05b68:	35295b32 	ori	t1,t1,0x5b32
bfc05b6c:	3c08800d 	lui	t0,0x800d
bfc05b70:	3c03d3ad 	lui	v1,0xd3ad
bfc05b74:	34635b32 	ori	v1,v1,0x5b32
bfc05b78:	3c010001 	lui	at,0x1
bfc05b7c:	00280821 	addu	at,at,t0
bfc05b80:	ac29d870 	sw	t1,-10128(at)
bfc05b84:	25040004 	addiu	a0,t0,4
bfc05b88:	2505fff8 	addiu	a1,t0,-8
bfc05b8c:	3c010001 	lui	at,0x1
bfc05b90:	00240821 	addu	at,at,a0
bfc05b94:	ac24d870 	sw	a0,-10128(at)
bfc05b98:	3c010001 	lui	at,0x1
bfc05b9c:	00250821 	addu	at,at,a1
bfc05ba0:	ac25d870 	sw	a1,-10128(at)
bfc05ba4:	3c020001 	lui	v0,0x1
bfc05ba8:	00481021 	addu	v0,v0,t0
bfc05bac:	8c42d870 	lw	v0,-10128(v0)
bfc05bb0:	3c060001 	lui	a2,0x1
bfc05bb4:	00c43021 	addu	a2,a2,a0
bfc05bb8:	8cc6d870 	lw	a2,-10128(a2)
bfc05bbc:	3c040001 	lui	a0,0x1
bfc05bc0:	00852021 	addu	a0,a0,a1
bfc05bc4:	8c84d870 	lw	a0,-10128(a0)
bfc05bc8:	3c060001 	lui	a2,0x1
bfc05bcc:	00c53021 	addu	a2,a2,a1
bfc05bd0:	8cc6d870 	lw	a2,-10128(a2)
bfc05bd4:	1443019c 	bne	v0,v1,bfc06248 <inst_error>
bfc05bd8:	00000000 	nop
/home/csy/func/inst/n6_lw.S:51
bfc05bdc:	3c090e61 	lui	t1,0xe61
bfc05be0:	3529fb40 	ori	t1,t1,0xfb40
bfc05be4:	3c08800d 	lui	t0,0x800d
bfc05be8:	3c030e61 	lui	v1,0xe61
bfc05bec:	3463fb40 	ori	v1,v1,0xfb40
bfc05bf0:	3c010001 	lui	at,0x1
bfc05bf4:	00280821 	addu	at,at,t0
bfc05bf8:	ac2989e4 	sw	t1,-30236(at)
bfc05bfc:	25040004 	addiu	a0,t0,4
bfc05c00:	2505fff8 	addiu	a1,t0,-8
bfc05c04:	3c010001 	lui	at,0x1
bfc05c08:	00240821 	addu	at,at,a0
bfc05c0c:	ac2489e4 	sw	a0,-30236(at)
bfc05c10:	3c010001 	lui	at,0x1
bfc05c14:	00250821 	addu	at,at,a1
bfc05c18:	ac2589e4 	sw	a1,-30236(at)
bfc05c1c:	3c020001 	lui	v0,0x1
bfc05c20:	00481021 	addu	v0,v0,t0
bfc05c24:	8c4289e4 	lw	v0,-30236(v0)
bfc05c28:	3c060001 	lui	a2,0x1
bfc05c2c:	00c43021 	addu	a2,a2,a0
bfc05c30:	8cc689e4 	lw	a2,-30236(a2)
bfc05c34:	3c040001 	lui	a0,0x1
bfc05c38:	00852021 	addu	a0,a0,a1
bfc05c3c:	8c8489e4 	lw	a0,-30236(a0)
bfc05c40:	3c060001 	lui	a2,0x1
bfc05c44:	00c53021 	addu	a2,a2,a1
bfc05c48:	8cc689e4 	lw	a2,-30236(a2)
bfc05c4c:	1443017e 	bne	v0,v1,bfc06248 <inst_error>
bfc05c50:	00000000 	nop
/home/csy/func/inst/n6_lw.S:52
bfc05c54:	3c09cb58 	lui	t1,0xcb58
bfc05c58:	3529118c 	ori	t1,t1,0x118c
bfc05c5c:	3c08800d 	lui	t0,0x800d
bfc05c60:	3c03cb58 	lui	v1,0xcb58
bfc05c64:	3463118c 	ori	v1,v1,0x118c
bfc05c68:	3c010001 	lui	at,0x1
bfc05c6c:	00280821 	addu	at,at,t0
bfc05c70:	ac29a130 	sw	t1,-24272(at)
bfc05c74:	25040004 	addiu	a0,t0,4
bfc05c78:	2505fff8 	addiu	a1,t0,-8
bfc05c7c:	3c010001 	lui	at,0x1
bfc05c80:	00240821 	addu	at,at,a0
bfc05c84:	ac24a130 	sw	a0,-24272(at)
bfc05c88:	3c010001 	lui	at,0x1
bfc05c8c:	00250821 	addu	at,at,a1
bfc05c90:	ac25a130 	sw	a1,-24272(at)
bfc05c94:	3c020001 	lui	v0,0x1
bfc05c98:	00481021 	addu	v0,v0,t0
bfc05c9c:	8c42a130 	lw	v0,-24272(v0)
bfc05ca0:	3c060001 	lui	a2,0x1
bfc05ca4:	00c43021 	addu	a2,a2,a0
bfc05ca8:	8cc6a130 	lw	a2,-24272(a2)
bfc05cac:	3c040001 	lui	a0,0x1
bfc05cb0:	00852021 	addu	a0,a0,a1
bfc05cb4:	8c84a130 	lw	a0,-24272(a0)
bfc05cb8:	3c060001 	lui	a2,0x1
bfc05cbc:	00c53021 	addu	a2,a2,a1
bfc05cc0:	8cc6a130 	lw	a2,-24272(a2)
bfc05cc4:	14430160 	bne	v0,v1,bfc06248 <inst_error>
bfc05cc8:	00000000 	nop
/home/csy/func/inst/n6_lw.S:53
bfc05ccc:	3c09e56f 	lui	t1,0xe56f
bfc05cd0:	3529b3a8 	ori	t1,t1,0xb3a8
bfc05cd4:	3c08800d 	lui	t0,0x800d
bfc05cd8:	3c03e56f 	lui	v1,0xe56f
bfc05cdc:	3463b3a8 	ori	v1,v1,0xb3a8
bfc05ce0:	ad0972ec 	sw	t1,29420(t0)
bfc05ce4:	25040004 	addiu	a0,t0,4
bfc05ce8:	2505fff8 	addiu	a1,t0,-8
bfc05cec:	ac8472ec 	sw	a0,29420(a0)
bfc05cf0:	aca572ec 	sw	a1,29420(a1)
bfc05cf4:	8d0272ec 	lw	v0,29420(t0)
bfc05cf8:	8c8672ec 	lw	a2,29420(a0)
bfc05cfc:	8ca472ec 	lw	a0,29420(a1)
bfc05d00:	8ca672ec 	lw	a2,29420(a1)
bfc05d04:	14430150 	bne	v0,v1,bfc06248 <inst_error>
bfc05d08:	00000000 	nop
/home/csy/func/inst/n6_lw.S:54
bfc05d0c:	3c096661 	lui	t1,0x6661
bfc05d10:	3529617c 	ori	t1,t1,0x617c
bfc05d14:	3c08800d 	lui	t0,0x800d
bfc05d18:	3c036661 	lui	v1,0x6661
bfc05d1c:	3463617c 	ori	v1,v1,0x617c
bfc05d20:	ad094650 	sw	t1,18000(t0)
bfc05d24:	25040004 	addiu	a0,t0,4
bfc05d28:	2505fff8 	addiu	a1,t0,-8
bfc05d2c:	ac844650 	sw	a0,18000(a0)
bfc05d30:	aca54650 	sw	a1,18000(a1)
bfc05d34:	8d024650 	lw	v0,18000(t0)
bfc05d38:	8c864650 	lw	a2,18000(a0)
bfc05d3c:	8ca44650 	lw	a0,18000(a1)
bfc05d40:	8ca64650 	lw	a2,18000(a1)
bfc05d44:	14430140 	bne	v0,v1,bfc06248 <inst_error>
bfc05d48:	00000000 	nop
/home/csy/func/inst/n6_lw.S:55
bfc05d4c:	3c095f7c 	lui	t1,0x5f7c
bfc05d50:	352908b0 	ori	t1,t1,0x8b0
bfc05d54:	3c08800d 	lui	t0,0x800d
bfc05d58:	3c035f7c 	lui	v1,0x5f7c
bfc05d5c:	346308b0 	ori	v1,v1,0x8b0
bfc05d60:	3c010001 	lui	at,0x1
bfc05d64:	00280821 	addu	at,at,t0
bfc05d68:	ac298524 	sw	t1,-31452(at)
bfc05d6c:	25040004 	addiu	a0,t0,4
bfc05d70:	2505fff8 	addiu	a1,t0,-8
bfc05d74:	3c010001 	lui	at,0x1
bfc05d78:	00240821 	addu	at,at,a0
bfc05d7c:	ac248524 	sw	a0,-31452(at)
bfc05d80:	3c010001 	lui	at,0x1
bfc05d84:	00250821 	addu	at,at,a1
bfc05d88:	ac258524 	sw	a1,-31452(at)
bfc05d8c:	3c020001 	lui	v0,0x1
bfc05d90:	00481021 	addu	v0,v0,t0
bfc05d94:	8c428524 	lw	v0,-31452(v0)
bfc05d98:	3c060001 	lui	a2,0x1
bfc05d9c:	00c43021 	addu	a2,a2,a0
bfc05da0:	8cc68524 	lw	a2,-31452(a2)
bfc05da4:	3c040001 	lui	a0,0x1
bfc05da8:	00852021 	addu	a0,a0,a1
bfc05dac:	8c848524 	lw	a0,-31452(a0)
bfc05db0:	3c060001 	lui	a2,0x1
bfc05db4:	00c53021 	addu	a2,a2,a1
bfc05db8:	8cc68524 	lw	a2,-31452(a2)
bfc05dbc:	14430122 	bne	v0,v1,bfc06248 <inst_error>
bfc05dc0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:56
bfc05dc4:	3c092b1e 	lui	t1,0x2b1e
bfc05dc8:	3529a090 	ori	t1,t1,0xa090
bfc05dcc:	3c08800d 	lui	t0,0x800d
bfc05dd0:	3c032b1e 	lui	v1,0x2b1e
bfc05dd4:	3463a090 	ori	v1,v1,0xa090
bfc05dd8:	ad090000 	sw	t1,0(t0)
bfc05ddc:	25040004 	addiu	a0,t0,4
bfc05de0:	2505fff8 	addiu	a1,t0,-8
bfc05de4:	ac840000 	sw	a0,0(a0)
bfc05de8:	aca50000 	sw	a1,0(a1)
bfc05dec:	8d020000 	lw	v0,0(t0)
bfc05df0:	8c860000 	lw	a2,0(a0)
bfc05df4:	8ca40000 	lw	a0,0(a1)
bfc05df8:	8ca60000 	lw	a2,0(a1)
bfc05dfc:	14430112 	bne	v0,v1,bfc06248 <inst_error>
bfc05e00:	00000000 	nop
/home/csy/func/inst/n6_lw.S:57
bfc05e04:	3c09e4a9 	lui	t1,0xe4a9
bfc05e08:	3529ee00 	ori	t1,t1,0xee00
bfc05e0c:	3c08800d 	lui	t0,0x800d
bfc05e10:	3c03e4a9 	lui	v1,0xe4a9
bfc05e14:	3463ee00 	ori	v1,v1,0xee00
bfc05e18:	ad090000 	sw	t1,0(t0)
bfc05e1c:	25040004 	addiu	a0,t0,4
bfc05e20:	2505fff8 	addiu	a1,t0,-8
bfc05e24:	ac840000 	sw	a0,0(a0)
bfc05e28:	aca50000 	sw	a1,0(a1)
bfc05e2c:	8d020000 	lw	v0,0(t0)
bfc05e30:	8c860000 	lw	a2,0(a0)
bfc05e34:	8ca40000 	lw	a0,0(a1)
bfc05e38:	8ca60000 	lw	a2,0(a1)
bfc05e3c:	14430102 	bne	v0,v1,bfc06248 <inst_error>
bfc05e40:	00000000 	nop
/home/csy/func/inst/n6_lw.S:58
bfc05e44:	3c096472 	lui	t1,0x6472
bfc05e48:	3529d096 	ori	t1,t1,0xd096
bfc05e4c:	3c08800d 	lui	t0,0x800d
bfc05e50:	3c036472 	lui	v1,0x6472
bfc05e54:	3463d096 	ori	v1,v1,0xd096
bfc05e58:	ad090000 	sw	t1,0(t0)
bfc05e5c:	25040004 	addiu	a0,t0,4
bfc05e60:	2505fff8 	addiu	a1,t0,-8
bfc05e64:	ac840000 	sw	a0,0(a0)
bfc05e68:	aca50000 	sw	a1,0(a1)
bfc05e6c:	8d020000 	lw	v0,0(t0)
bfc05e70:	8c860000 	lw	a2,0(a0)
bfc05e74:	8ca40000 	lw	a0,0(a1)
bfc05e78:	8ca60000 	lw	a2,0(a1)
bfc05e7c:	144300f2 	bne	v0,v1,bfc06248 <inst_error>
bfc05e80:	00000000 	nop
/home/csy/func/inst/n6_lw.S:59
bfc05e84:	3c09c60d 	lui	t1,0xc60d
bfc05e88:	3529fd1c 	ori	t1,t1,0xfd1c
bfc05e8c:	3c08800d 	lui	t0,0x800d
bfc05e90:	3c03c60d 	lui	v1,0xc60d
bfc05e94:	3463fd1c 	ori	v1,v1,0xfd1c
bfc05e98:	ad090000 	sw	t1,0(t0)
bfc05e9c:	25040004 	addiu	a0,t0,4
bfc05ea0:	2505fff8 	addiu	a1,t0,-8
bfc05ea4:	ac840000 	sw	a0,0(a0)
bfc05ea8:	aca50000 	sw	a1,0(a1)
bfc05eac:	8d020000 	lw	v0,0(t0)
bfc05eb0:	8c860000 	lw	a2,0(a0)
bfc05eb4:	8ca40000 	lw	a0,0(a1)
bfc05eb8:	8ca60000 	lw	a2,0(a1)
bfc05ebc:	144300e2 	bne	v0,v1,bfc06248 <inst_error>
bfc05ec0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:60
bfc05ec4:	3c09aaa5 	lui	t1,0xaaa5
bfc05ec8:	35294652 	ori	t1,t1,0x4652
bfc05ecc:	3c08800d 	lui	t0,0x800d
bfc05ed0:	3c03aaa5 	lui	v1,0xaaa5
bfc05ed4:	34634652 	ori	v1,v1,0x4652
bfc05ed8:	ad090000 	sw	t1,0(t0)
bfc05edc:	25040004 	addiu	a0,t0,4
bfc05ee0:	2505fff8 	addiu	a1,t0,-8
bfc05ee4:	ac840000 	sw	a0,0(a0)
bfc05ee8:	aca50000 	sw	a1,0(a1)
bfc05eec:	8d020000 	lw	v0,0(t0)
bfc05ef0:	8c860000 	lw	a2,0(a0)
bfc05ef4:	8ca40000 	lw	a0,0(a1)
bfc05ef8:	8ca60000 	lw	a2,0(a1)
bfc05efc:	144300d2 	bne	v0,v1,bfc06248 <inst_error>
bfc05f00:	00000000 	nop
/home/csy/func/inst/n6_lw.S:61
bfc05f04:	3c09fd47 	lui	t1,0xfd47
bfc05f08:	3529929c 	ori	t1,t1,0x929c
bfc05f0c:	3c08800d 	lui	t0,0x800d
bfc05f10:	3c03fd47 	lui	v1,0xfd47
bfc05f14:	3463929c 	ori	v1,v1,0x929c
bfc05f18:	ad090000 	sw	t1,0(t0)
bfc05f1c:	25040004 	addiu	a0,t0,4
bfc05f20:	2505fff8 	addiu	a1,t0,-8
bfc05f24:	ac840000 	sw	a0,0(a0)
bfc05f28:	aca50000 	sw	a1,0(a1)
bfc05f2c:	8d020000 	lw	v0,0(t0)
bfc05f30:	8c860000 	lw	a2,0(a0)
bfc05f34:	8ca40000 	lw	a0,0(a1)
bfc05f38:	8ca60000 	lw	a2,0(a1)
bfc05f3c:	144300c2 	bne	v0,v1,bfc06248 <inst_error>
bfc05f40:	00000000 	nop
/home/csy/func/inst/n6_lw.S:62
bfc05f44:	3c09e40e 	lui	t1,0xe40e
bfc05f48:	35290b9e 	ori	t1,t1,0xb9e
bfc05f4c:	3c08800d 	lui	t0,0x800d
bfc05f50:	3c03e40e 	lui	v1,0xe40e
bfc05f54:	34630b9e 	ori	v1,v1,0xb9e
bfc05f58:	ad090000 	sw	t1,0(t0)
bfc05f5c:	25040004 	addiu	a0,t0,4
bfc05f60:	2505fff8 	addiu	a1,t0,-8
bfc05f64:	ac840000 	sw	a0,0(a0)
bfc05f68:	aca50000 	sw	a1,0(a1)
bfc05f6c:	8d020000 	lw	v0,0(t0)
bfc05f70:	8c860000 	lw	a2,0(a0)
bfc05f74:	8ca40000 	lw	a0,0(a1)
bfc05f78:	8ca60000 	lw	a2,0(a1)
bfc05f7c:	144300b2 	bne	v0,v1,bfc06248 <inst_error>
bfc05f80:	00000000 	nop
/home/csy/func/inst/n6_lw.S:63
bfc05f84:	3c096bcb 	lui	t1,0x6bcb
bfc05f88:	352955b4 	ori	t1,t1,0x55b4
bfc05f8c:	3c08800d 	lui	t0,0x800d
bfc05f90:	3c036bcb 	lui	v1,0x6bcb
bfc05f94:	346355b4 	ori	v1,v1,0x55b4
bfc05f98:	ad090000 	sw	t1,0(t0)
bfc05f9c:	25040004 	addiu	a0,t0,4
bfc05fa0:	2505fff8 	addiu	a1,t0,-8
bfc05fa4:	ac840000 	sw	a0,0(a0)
bfc05fa8:	aca50000 	sw	a1,0(a1)
bfc05fac:	8d020000 	lw	v0,0(t0)
bfc05fb0:	8c860000 	lw	a2,0(a0)
bfc05fb4:	8ca40000 	lw	a0,0(a1)
bfc05fb8:	8ca60000 	lw	a2,0(a1)
bfc05fbc:	144300a2 	bne	v0,v1,bfc06248 <inst_error>
bfc05fc0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:64
bfc05fc4:	3c09e6cb 	lui	t1,0xe6cb
bfc05fc8:	35292590 	ori	t1,t1,0x2590
bfc05fcc:	3c08800d 	lui	t0,0x800d
bfc05fd0:	3c03e6cb 	lui	v1,0xe6cb
bfc05fd4:	34632590 	ori	v1,v1,0x2590
bfc05fd8:	ad090000 	sw	t1,0(t0)
bfc05fdc:	25040004 	addiu	a0,t0,4
bfc05fe0:	2505fff8 	addiu	a1,t0,-8
bfc05fe4:	ac840000 	sw	a0,0(a0)
bfc05fe8:	aca50000 	sw	a1,0(a1)
bfc05fec:	8d020000 	lw	v0,0(t0)
bfc05ff0:	8c860000 	lw	a2,0(a0)
bfc05ff4:	8ca40000 	lw	a0,0(a1)
bfc05ff8:	8ca60000 	lw	a2,0(a1)
bfc05ffc:	14430092 	bne	v0,v1,bfc06248 <inst_error>
bfc06000:	00000000 	nop
/home/csy/func/inst/n6_lw.S:65
bfc06004:	3c093d91 	lui	t1,0x3d91
bfc06008:	35291cb8 	ori	t1,t1,0x1cb8
bfc0600c:	3c08800d 	lui	t0,0x800d
bfc06010:	3c033d91 	lui	v1,0x3d91
bfc06014:	34631cb8 	ori	v1,v1,0x1cb8
bfc06018:	ad090000 	sw	t1,0(t0)
bfc0601c:	25040004 	addiu	a0,t0,4
bfc06020:	2505fff8 	addiu	a1,t0,-8
bfc06024:	ac840000 	sw	a0,0(a0)
bfc06028:	aca50000 	sw	a1,0(a1)
bfc0602c:	8d020000 	lw	v0,0(t0)
bfc06030:	8c860000 	lw	a2,0(a0)
bfc06034:	8ca40000 	lw	a0,0(a1)
bfc06038:	8ca60000 	lw	a2,0(a1)
bfc0603c:	14430082 	bne	v0,v1,bfc06248 <inst_error>
bfc06040:	00000000 	nop
/home/csy/func/inst/n6_lw.S:66
bfc06044:	3c09e658 	lui	t1,0xe658
bfc06048:	352974bd 	ori	t1,t1,0x74bd
bfc0604c:	3c08800d 	lui	t0,0x800d
bfc06050:	3c03e658 	lui	v1,0xe658
bfc06054:	346374bd 	ori	v1,v1,0x74bd
bfc06058:	ad090000 	sw	t1,0(t0)
bfc0605c:	25040004 	addiu	a0,t0,4
bfc06060:	2505fff8 	addiu	a1,t0,-8
bfc06064:	ac840000 	sw	a0,0(a0)
bfc06068:	aca50000 	sw	a1,0(a1)
bfc0606c:	8d020000 	lw	v0,0(t0)
bfc06070:	8c860000 	lw	a2,0(a0)
bfc06074:	8ca40000 	lw	a0,0(a1)
bfc06078:	8ca60000 	lw	a2,0(a1)
bfc0607c:	14430072 	bne	v0,v1,bfc06248 <inst_error>
bfc06080:	00000000 	nop
/home/csy/func/inst/n6_lw.S:67
bfc06084:	3c093a3c 	lui	t1,0x3a3c
bfc06088:	35299edc 	ori	t1,t1,0x9edc
bfc0608c:	3c08800d 	lui	t0,0x800d
bfc06090:	3c033a3c 	lui	v1,0x3a3c
bfc06094:	34639edc 	ori	v1,v1,0x9edc
bfc06098:	ad090000 	sw	t1,0(t0)
bfc0609c:	25040004 	addiu	a0,t0,4
bfc060a0:	2505fff8 	addiu	a1,t0,-8
bfc060a4:	ac840000 	sw	a0,0(a0)
bfc060a8:	aca50000 	sw	a1,0(a1)
bfc060ac:	8d020000 	lw	v0,0(t0)
bfc060b0:	8c860000 	lw	a2,0(a0)
bfc060b4:	8ca40000 	lw	a0,0(a1)
bfc060b8:	8ca60000 	lw	a2,0(a1)
bfc060bc:	14430062 	bne	v0,v1,bfc06248 <inst_error>
bfc060c0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:68
bfc060c4:	3c09bddd 	lui	t1,0xbddd
bfc060c8:	3529406e 	ori	t1,t1,0x406e
bfc060cc:	3c08800d 	lui	t0,0x800d
bfc060d0:	3c03bddd 	lui	v1,0xbddd
bfc060d4:	3463406e 	ori	v1,v1,0x406e
bfc060d8:	ad090000 	sw	t1,0(t0)
bfc060dc:	25040004 	addiu	a0,t0,4
bfc060e0:	2505fff8 	addiu	a1,t0,-8
bfc060e4:	ac840000 	sw	a0,0(a0)
bfc060e8:	aca50000 	sw	a1,0(a1)
bfc060ec:	8d020000 	lw	v0,0(t0)
bfc060f0:	8c860000 	lw	a2,0(a0)
bfc060f4:	8ca40000 	lw	a0,0(a1)
bfc060f8:	8ca60000 	lw	a2,0(a1)
bfc060fc:	14430052 	bne	v0,v1,bfc06248 <inst_error>
bfc06100:	00000000 	nop
/home/csy/func/inst/n6_lw.S:69
bfc06104:	3c09fe6f 	lui	t1,0xfe6f
bfc06108:	3529b690 	ori	t1,t1,0xb690
bfc0610c:	3c08800d 	lui	t0,0x800d
bfc06110:	3c03fe6f 	lui	v1,0xfe6f
bfc06114:	3463b690 	ori	v1,v1,0xb690
bfc06118:	ad090000 	sw	t1,0(t0)
bfc0611c:	25040004 	addiu	a0,t0,4
bfc06120:	2505fff8 	addiu	a1,t0,-8
bfc06124:	ac840000 	sw	a0,0(a0)
bfc06128:	aca50000 	sw	a1,0(a1)
bfc0612c:	8d020000 	lw	v0,0(t0)
bfc06130:	8c860000 	lw	a2,0(a0)
bfc06134:	8ca40000 	lw	a0,0(a1)
bfc06138:	8ca60000 	lw	a2,0(a1)
bfc0613c:	14430042 	bne	v0,v1,bfc06248 <inst_error>
bfc06140:	00000000 	nop
/home/csy/func/inst/n6_lw.S:70
bfc06144:	3c09941b 	lui	t1,0x941b
bfc06148:	3529c8b2 	ori	t1,t1,0xc8b2
bfc0614c:	3c08800d 	lui	t0,0x800d
bfc06150:	3c03941b 	lui	v1,0x941b
bfc06154:	3463c8b2 	ori	v1,v1,0xc8b2
bfc06158:	ad090000 	sw	t1,0(t0)
bfc0615c:	25040004 	addiu	a0,t0,4
bfc06160:	2505fff8 	addiu	a1,t0,-8
bfc06164:	ac840000 	sw	a0,0(a0)
bfc06168:	aca50000 	sw	a1,0(a1)
bfc0616c:	8d020000 	lw	v0,0(t0)
bfc06170:	8c860000 	lw	a2,0(a0)
bfc06174:	8ca40000 	lw	a0,0(a1)
bfc06178:	8ca60000 	lw	a2,0(a1)
bfc0617c:	14430032 	bne	v0,v1,bfc06248 <inst_error>
bfc06180:	00000000 	nop
/home/csy/func/inst/n6_lw.S:71
bfc06184:	3c099393 	lui	t1,0x9393
bfc06188:	3529289c 	ori	t1,t1,0x289c
bfc0618c:	3c08800d 	lui	t0,0x800d
bfc06190:	3c039393 	lui	v1,0x9393
bfc06194:	3463289c 	ori	v1,v1,0x289c
bfc06198:	ad090000 	sw	t1,0(t0)
bfc0619c:	25040004 	addiu	a0,t0,4
bfc061a0:	2505fff8 	addiu	a1,t0,-8
bfc061a4:	ac840000 	sw	a0,0(a0)
bfc061a8:	aca50000 	sw	a1,0(a1)
bfc061ac:	8d020000 	lw	v0,0(t0)
bfc061b0:	8c860000 	lw	a2,0(a0)
bfc061b4:	8ca40000 	lw	a0,0(a1)
bfc061b8:	8ca60000 	lw	a2,0(a1)
bfc061bc:	14430022 	bne	v0,v1,bfc06248 <inst_error>
bfc061c0:	00000000 	nop
/home/csy/func/inst/n6_lw.S:72
bfc061c4:	3c0929b2 	lui	t1,0x29b2
bfc061c8:	3529c02d 	ori	t1,t1,0xc02d
bfc061cc:	3c08800d 	lui	t0,0x800d
bfc061d0:	3c0329b2 	lui	v1,0x29b2
bfc061d4:	3463c02d 	ori	v1,v1,0xc02d
bfc061d8:	ad090000 	sw	t1,0(t0)
bfc061dc:	25040004 	addiu	a0,t0,4
bfc061e0:	2505fff8 	addiu	a1,t0,-8
bfc061e4:	ac840000 	sw	a0,0(a0)
bfc061e8:	aca50000 	sw	a1,0(a1)
bfc061ec:	8d020000 	lw	v0,0(t0)
bfc061f0:	8c860000 	lw	a2,0(a0)
bfc061f4:	8ca40000 	lw	a0,0(a1)
bfc061f8:	8ca60000 	lw	a2,0(a1)
bfc061fc:	14430012 	bne	v0,v1,bfc06248 <inst_error>
bfc06200:	00000000 	nop
/home/csy/func/inst/n6_lw.S:73
bfc06204:	24090000 	li	t1,0
bfc06208:	3c08800d 	lui	t0,0x800d
bfc0620c:	24030000 	li	v1,0
bfc06210:	ad090000 	sw	t1,0(t0)
bfc06214:	25040004 	addiu	a0,t0,4
bfc06218:	2505fff8 	addiu	a1,t0,-8
bfc0621c:	ac840000 	sw	a0,0(a0)
bfc06220:	aca50000 	sw	a1,0(a1)
bfc06224:	8d020000 	lw	v0,0(t0)
bfc06228:	8c860000 	lw	a2,0(a0)
bfc0622c:	8ca40000 	lw	a0,0(a1)
bfc06230:	8ca60000 	lw	a2,0(a1)
bfc06234:	14430004 	bne	v0,v1,bfc06248 <inst_error>
bfc06238:	00000000 	nop
/home/csy/func/inst/n6_lw.S:75
bfc0623c:	16400002 	bnez	s2,bfc06248 <inst_error>
/home/csy/func/inst/n6_lw.S:76
bfc06240:	00000000 	nop
/home/csy/func/inst/n6_lw.S:78
bfc06244:	26730001 	addiu	s3,s3,1

bfc06248 <inst_error>:
/home/csy/func/inst/n6_lw.S:81
bfc06248:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n6_lw.S:82
bfc0624c:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n6_lw.S:83
bfc06250:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n6_lw.S:84
bfc06254:	03e00008 	jr	ra
/home/csy/func/inst/n6_lw.S:85
bfc06258:	00000000 	nop
inst_error():
bfc0625c:	00000000 	nop

bfc06260 <n59_lb_test>:
/home/csy/func/inst/n59_lb.S:7
bfc06260:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n59_lb.S:8
bfc06264:	24120000 	li	s2,0
/home/csy/func/inst/n59_lb.S:10
bfc06268:	3c09c83b 	lui	t1,0xc83b
bfc0626c:	35290be0 	ori	t1,t1,0xbe0
bfc06270:	3c08800d 	lui	t0,0x800d
bfc06274:	35086760 	ori	t0,t0,0x6760
bfc06278:	2403000b 	li	v1,11
bfc0627c:	ad0937a0 	sw	t1,14240(t0)
bfc06280:	25040004 	addiu	a0,t0,4
bfc06284:	2505fff8 	addiu	a1,t0,-8
bfc06288:	ac8437a0 	sw	a0,14240(a0)
bfc0628c:	aca537a0 	sw	a1,14240(a1)
bfc06290:	810237a1 	lb	v0,14241(t0)
bfc06294:	8c8537a0 	lw	a1,14240(a0)
bfc06298:	8ca437a0 	lw	a0,14240(a1)
bfc0629c:	8ca637a0 	lw	a2,14240(a1)
bfc062a0:	144308d5 	bne	v0,v1,bfc085f8 <inst_error>
bfc062a4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:11
bfc062a8:	3c091eec 	lui	t1,0x1eec
bfc062ac:	3529280c 	ori	t1,t1,0x280c
bfc062b0:	3c08800d 	lui	t0,0x800d
bfc062b4:	35084598 	ori	t0,t0,0x4598
bfc062b8:	2403000c 	li	v1,12
bfc062bc:	3c010001 	lui	at,0x1
bfc062c0:	00280821 	addu	at,at,t0
bfc062c4:	ac29980c 	sw	t1,-26612(at)
bfc062c8:	25040004 	addiu	a0,t0,4
bfc062cc:	2505fff8 	addiu	a1,t0,-8
bfc062d0:	3c010001 	lui	at,0x1
bfc062d4:	00240821 	addu	at,at,a0
bfc062d8:	ac24980c 	sw	a0,-26612(at)
bfc062dc:	3c010001 	lui	at,0x1
bfc062e0:	00250821 	addu	at,at,a1
bfc062e4:	ac25980c 	sw	a1,-26612(at)
bfc062e8:	3c020001 	lui	v0,0x1
bfc062ec:	00481021 	addu	v0,v0,t0
bfc062f0:	8042980c 	lb	v0,-26612(v0)
bfc062f4:	3c050001 	lui	a1,0x1
bfc062f8:	00a42821 	addu	a1,a1,a0
bfc062fc:	8ca5980c 	lw	a1,-26612(a1)
bfc06300:	3c040001 	lui	a0,0x1
bfc06304:	00852021 	addu	a0,a0,a1
bfc06308:	8c84980c 	lw	a0,-26612(a0)
bfc0630c:	3c060001 	lui	a2,0x1
bfc06310:	00c53021 	addu	a2,a2,a1
bfc06314:	8cc6980c 	lw	a2,-26612(a2)
bfc06318:	144308b7 	bne	v0,v1,bfc085f8 <inst_error>
bfc0631c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:12
bfc06320:	3c09a0af 	lui	t1,0xa0af
bfc06324:	3529ed52 	ori	t1,t1,0xed52
bfc06328:	3c08800d 	lui	t0,0x800d
bfc0632c:	35084590 	ori	t0,t0,0x4590
bfc06330:	2403ffaf 	li	v1,-81
bfc06334:	3c010001 	lui	at,0x1
bfc06338:	00280821 	addu	at,at,t0
bfc0633c:	ac298a80 	sw	t1,-30080(at)
bfc06340:	25040004 	addiu	a0,t0,4
bfc06344:	2505fff8 	addiu	a1,t0,-8
bfc06348:	3c010001 	lui	at,0x1
bfc0634c:	00240821 	addu	at,at,a0
bfc06350:	ac248a80 	sw	a0,-30080(at)
bfc06354:	3c010001 	lui	at,0x1
bfc06358:	00250821 	addu	at,at,a1
bfc0635c:	ac258a80 	sw	a1,-30080(at)
bfc06360:	3c020001 	lui	v0,0x1
bfc06364:	00481021 	addu	v0,v0,t0
bfc06368:	80428a82 	lb	v0,-30078(v0)
bfc0636c:	3c050001 	lui	a1,0x1
bfc06370:	00a42821 	addu	a1,a1,a0
bfc06374:	8ca58a80 	lw	a1,-30080(a1)
bfc06378:	3c040001 	lui	a0,0x1
bfc0637c:	00852021 	addu	a0,a0,a1
bfc06380:	8c848a80 	lw	a0,-30080(a0)
bfc06384:	3c060001 	lui	a2,0x1
bfc06388:	00c53021 	addu	a2,a2,a1
bfc0638c:	8cc68a80 	lw	a2,-30080(a2)
bfc06390:	14430899 	bne	v0,v1,bfc085f8 <inst_error>
bfc06394:	00000000 	nop
/home/csy/func/inst/n59_lb.S:13
bfc06398:	3c091eb6 	lui	t1,0x1eb6
bfc0639c:	352937c7 	ori	t1,t1,0x37c7
bfc063a0:	3c08800d 	lui	t0,0x800d
bfc063a4:	3508165c 	ori	t0,t0,0x165c
bfc063a8:	2403ffb6 	li	v1,-74
bfc063ac:	ad096a98 	sw	t1,27288(t0)
bfc063b0:	25040004 	addiu	a0,t0,4
bfc063b4:	2505fff8 	addiu	a1,t0,-8
bfc063b8:	ac846a98 	sw	a0,27288(a0)
bfc063bc:	aca56a98 	sw	a1,27288(a1)
bfc063c0:	81026a9a 	lb	v0,27290(t0)
bfc063c4:	8c856a98 	lw	a1,27288(a0)
bfc063c8:	8ca46a98 	lw	a0,27288(a1)
bfc063cc:	8ca66a98 	lw	a2,27288(a1)
bfc063d0:	14430889 	bne	v0,v1,bfc085f8 <inst_error>
bfc063d4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:14
bfc063d8:	3c098541 	lui	t1,0x8541
bfc063dc:	35295fbc 	ori	t1,t1,0x5fbc
bfc063e0:	3c08800d 	lui	t0,0x800d
bfc063e4:	35081430 	ori	t0,t0,0x1430
bfc063e8:	2403ffbc 	li	v1,-68
bfc063ec:	ad095e48 	sw	t1,24136(t0)
bfc063f0:	25040004 	addiu	a0,t0,4
bfc063f4:	2505fff8 	addiu	a1,t0,-8
bfc063f8:	ac845e48 	sw	a0,24136(a0)
bfc063fc:	aca55e48 	sw	a1,24136(a1)
bfc06400:	81025e48 	lb	v0,24136(t0)
bfc06404:	8c855e48 	lw	a1,24136(a0)
bfc06408:	8ca45e48 	lw	a0,24136(a1)
bfc0640c:	8ca65e48 	lw	a2,24136(a1)
bfc06410:	14430879 	bne	v0,v1,bfc085f8 <inst_error>
bfc06414:	00000000 	nop
/home/csy/func/inst/n59_lb.S:15
bfc06418:	3c09499d 	lui	t1,0x499d
bfc0641c:	35297dd4 	ori	t1,t1,0x7dd4
bfc06420:	3c08800d 	lui	t0,0x800d
bfc06424:	35084974 	ori	t0,t0,0x4974
bfc06428:	2403ffd4 	li	v1,-44
bfc0642c:	ad090edc 	sw	t1,3804(t0)
bfc06430:	25040004 	addiu	a0,t0,4
bfc06434:	2505fff8 	addiu	a1,t0,-8
bfc06438:	ac840edc 	sw	a0,3804(a0)
bfc0643c:	aca50edc 	sw	a1,3804(a1)
bfc06440:	81020edc 	lb	v0,3804(t0)
bfc06444:	8c850edc 	lw	a1,3804(a0)
bfc06448:	8ca40edc 	lw	a0,3804(a1)
bfc0644c:	8ca60edc 	lw	a2,3804(a1)
bfc06450:	14430869 	bne	v0,v1,bfc085f8 <inst_error>
bfc06454:	00000000 	nop
/home/csy/func/inst/n59_lb.S:16
bfc06458:	3c09c6e3 	lui	t1,0xc6e3
bfc0645c:	35291856 	ori	t1,t1,0x1856
bfc06460:	3c08800d 	lui	t0,0x800d
bfc06464:	3508d704 	ori	t0,t0,0xd704
bfc06468:	24030056 	li	v1,86
bfc0646c:	ad091e9c 	sw	t1,7836(t0)
bfc06470:	25040004 	addiu	a0,t0,4
bfc06474:	2505fff8 	addiu	a1,t0,-8
bfc06478:	ac841e9c 	sw	a0,7836(a0)
bfc0647c:	aca51e9c 	sw	a1,7836(a1)
bfc06480:	81021e9c 	lb	v0,7836(t0)
bfc06484:	8c851e9c 	lw	a1,7836(a0)
bfc06488:	8ca41e9c 	lw	a0,7836(a1)
bfc0648c:	8ca61e9c 	lw	a2,7836(a1)
bfc06490:	14430859 	bne	v0,v1,bfc085f8 <inst_error>
bfc06494:	00000000 	nop
/home/csy/func/inst/n59_lb.S:17
bfc06498:	3c095ad9 	lui	t1,0x5ad9
bfc0649c:	35299018 	ori	t1,t1,0x9018
bfc064a0:	3c08800d 	lui	t0,0x800d
bfc064a4:	350868f0 	ori	t0,t0,0x68f0
bfc064a8:	24030018 	li	v1,24
bfc064ac:	ad097ba4 	sw	t1,31652(t0)
bfc064b0:	25040004 	addiu	a0,t0,4
bfc064b4:	2505fff8 	addiu	a1,t0,-8
bfc064b8:	ac847ba4 	sw	a0,31652(a0)
bfc064bc:	aca57ba4 	sw	a1,31652(a1)
bfc064c0:	81027ba4 	lb	v0,31652(t0)
bfc064c4:	8c857ba4 	lw	a1,31652(a0)
bfc064c8:	8ca47ba4 	lw	a0,31652(a1)
bfc064cc:	8ca67ba4 	lw	a2,31652(a1)
bfc064d0:	14430849 	bne	v0,v1,bfc085f8 <inst_error>
bfc064d4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:18
bfc064d8:	3c094404 	lui	t1,0x4404
bfc064dc:	352911ac 	ori	t1,t1,0x11ac
bfc064e0:	3c08800d 	lui	t0,0x800d
bfc064e4:	350874e8 	ori	t0,t0,0x74e8
bfc064e8:	2403ffac 	li	v1,-84
bfc064ec:	ad092240 	sw	t1,8768(t0)
bfc064f0:	25040004 	addiu	a0,t0,4
bfc064f4:	2505fff8 	addiu	a1,t0,-8
bfc064f8:	ac842240 	sw	a0,8768(a0)
bfc064fc:	aca52240 	sw	a1,8768(a1)
bfc06500:	81022240 	lb	v0,8768(t0)
bfc06504:	8c852240 	lw	a1,8768(a0)
bfc06508:	8ca42240 	lw	a0,8768(a1)
bfc0650c:	8ca62240 	lw	a2,8768(a1)
bfc06510:	14430839 	bne	v0,v1,bfc085f8 <inst_error>
bfc06514:	00000000 	nop
/home/csy/func/inst/n59_lb.S:19
bfc06518:	3c09e556 	lui	t1,0xe556
bfc0651c:	35297fd6 	ori	t1,t1,0x7fd6
bfc06520:	3c08800d 	lui	t0,0x800d
bfc06524:	35085f60 	ori	t0,t0,0x5f60
bfc06528:	2403ffd6 	li	v1,-42
bfc0652c:	3c010001 	lui	at,0x1
bfc06530:	00280821 	addu	at,at,t0
bfc06534:	ac299418 	sw	t1,-27624(at)
bfc06538:	25040004 	addiu	a0,t0,4
bfc0653c:	2505fff8 	addiu	a1,t0,-8
bfc06540:	3c010001 	lui	at,0x1
bfc06544:	00240821 	addu	at,at,a0
bfc06548:	ac249418 	sw	a0,-27624(at)
bfc0654c:	3c010001 	lui	at,0x1
bfc06550:	00250821 	addu	at,at,a1
bfc06554:	ac259418 	sw	a1,-27624(at)
bfc06558:	3c020001 	lui	v0,0x1
bfc0655c:	00481021 	addu	v0,v0,t0
bfc06560:	80429418 	lb	v0,-27624(v0)
bfc06564:	3c050001 	lui	a1,0x1
bfc06568:	00a42821 	addu	a1,a1,a0
bfc0656c:	8ca59418 	lw	a1,-27624(a1)
bfc06570:	3c040001 	lui	a0,0x1
bfc06574:	00852021 	addu	a0,a0,a1
bfc06578:	8c849418 	lw	a0,-27624(a0)
bfc0657c:	3c060001 	lui	a2,0x1
bfc06580:	00c53021 	addu	a2,a2,a1
bfc06584:	8cc69418 	lw	a2,-27624(a2)
bfc06588:	1443081b 	bne	v0,v1,bfc085f8 <inst_error>
bfc0658c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:20
bfc06590:	3c092ede 	lui	t1,0x2ede
bfc06594:	35298ae6 	ori	t1,t1,0x8ae6
bfc06598:	3c08800d 	lui	t0,0x800d
bfc0659c:	35083bdc 	ori	t0,t0,0x3bdc
bfc065a0:	2403ff8a 	li	v1,-118
bfc065a4:	ad097c2c 	sw	t1,31788(t0)
bfc065a8:	25040004 	addiu	a0,t0,4
bfc065ac:	2505fff8 	addiu	a1,t0,-8
bfc065b0:	ac847c2c 	sw	a0,31788(a0)
bfc065b4:	aca57c2c 	sw	a1,31788(a1)
bfc065b8:	81027c2d 	lb	v0,31789(t0)
bfc065bc:	8c857c2c 	lw	a1,31788(a0)
bfc065c0:	8ca47c2c 	lw	a0,31788(a1)
bfc065c4:	8ca67c2c 	lw	a2,31788(a1)
bfc065c8:	1443080b 	bne	v0,v1,bfc085f8 <inst_error>
bfc065cc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:21
bfc065d0:	3c096488 	lui	t1,0x6488
bfc065d4:	35291a10 	ori	t1,t1,0x1a10
bfc065d8:	3c08800d 	lui	t0,0x800d
bfc065dc:	3508cd7c 	ori	t0,t0,0xcd7c
bfc065e0:	2403ff88 	li	v1,-120
bfc065e4:	ad090484 	sw	t1,1156(t0)
bfc065e8:	25040004 	addiu	a0,t0,4
bfc065ec:	2505fff8 	addiu	a1,t0,-8
bfc065f0:	ac840484 	sw	a0,1156(a0)
bfc065f4:	aca50484 	sw	a1,1156(a1)
bfc065f8:	81020486 	lb	v0,1158(t0)
bfc065fc:	8c850484 	lw	a1,1156(a0)
bfc06600:	8ca40484 	lw	a0,1156(a1)
bfc06604:	8ca60484 	lw	a2,1156(a1)
bfc06608:	144307fb 	bne	v0,v1,bfc085f8 <inst_error>
bfc0660c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:22
bfc06610:	3c0948fc 	lui	t1,0x48fc
bfc06614:	35293566 	ori	t1,t1,0x3566
bfc06618:	3c08800d 	lui	t0,0x800d
bfc0661c:	350859f4 	ori	t0,t0,0x59f4
bfc06620:	2403fffc 	li	v1,-4
bfc06624:	ad095c50 	sw	t1,23632(t0)
bfc06628:	25040004 	addiu	a0,t0,4
bfc0662c:	2505fff8 	addiu	a1,t0,-8
bfc06630:	ac845c50 	sw	a0,23632(a0)
bfc06634:	aca55c50 	sw	a1,23632(a1)
bfc06638:	81025c52 	lb	v0,23634(t0)
bfc0663c:	8c855c50 	lw	a1,23632(a0)
bfc06640:	8ca45c50 	lw	a0,23632(a1)
bfc06644:	8ca65c50 	lw	a2,23632(a1)
bfc06648:	144307eb 	bne	v0,v1,bfc085f8 <inst_error>
bfc0664c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:23
bfc06650:	3c09d933 	lui	t1,0xd933
bfc06654:	35294400 	ori	t1,t1,0x4400
bfc06658:	3c08800d 	lui	t0,0x800d
bfc0665c:	35086648 	ori	t0,t0,0x6648
bfc06660:	24030000 	li	v1,0
bfc06664:	ad097054 	sw	t1,28756(t0)
bfc06668:	25040004 	addiu	a0,t0,4
bfc0666c:	2505fff8 	addiu	a1,t0,-8
bfc06670:	ac847054 	sw	a0,28756(a0)
bfc06674:	aca57054 	sw	a1,28756(a1)
bfc06678:	81027054 	lb	v0,28756(t0)
bfc0667c:	8c857054 	lw	a1,28756(a0)
bfc06680:	8ca47054 	lw	a0,28756(a1)
bfc06684:	8ca67054 	lw	a2,28756(a1)
bfc06688:	144307db 	bne	v0,v1,bfc085f8 <inst_error>
bfc0668c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:24
bfc06690:	3c09751c 	lui	t1,0x751c
bfc06694:	35296a16 	ori	t1,t1,0x6a16
bfc06698:	3c08800d 	lui	t0,0x800d
bfc0669c:	3508278c 	ori	t0,t0,0x278c
bfc066a0:	2403006a 	li	v1,106
bfc066a4:	ad097124 	sw	t1,28964(t0)
bfc066a8:	25040004 	addiu	a0,t0,4
bfc066ac:	2505fff8 	addiu	a1,t0,-8
bfc066b0:	ac847124 	sw	a0,28964(a0)
bfc066b4:	aca57124 	sw	a1,28964(a1)
bfc066b8:	81027125 	lb	v0,28965(t0)
bfc066bc:	8c857124 	lw	a1,28964(a0)
bfc066c0:	8ca47124 	lw	a0,28964(a1)
bfc066c4:	8ca67124 	lw	a2,28964(a1)
bfc066c8:	144307cb 	bne	v0,v1,bfc085f8 <inst_error>
bfc066cc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:25
bfc066d0:	3c0959ea 	lui	t1,0x59ea
bfc066d4:	35296680 	ori	t1,t1,0x6680
bfc066d8:	3c08800d 	lui	t0,0x800d
bfc066dc:	35089b48 	ori	t0,t0,0x9b48
bfc066e0:	2403ffea 	li	v1,-22
bfc066e4:	ad090f40 	sw	t1,3904(t0)
bfc066e8:	25040004 	addiu	a0,t0,4
bfc066ec:	2505fff8 	addiu	a1,t0,-8
bfc066f0:	ac840f40 	sw	a0,3904(a0)
bfc066f4:	aca50f40 	sw	a1,3904(a1)
bfc066f8:	81020f42 	lb	v0,3906(t0)
bfc066fc:	8c850f40 	lw	a1,3904(a0)
bfc06700:	8ca40f40 	lw	a0,3904(a1)
bfc06704:	8ca60f40 	lw	a2,3904(a1)
bfc06708:	144307bb 	bne	v0,v1,bfc085f8 <inst_error>
bfc0670c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:26
bfc06710:	3c09fb87 	lui	t1,0xfb87
bfc06714:	3529edd4 	ori	t1,t1,0xedd4
bfc06718:	3c08800d 	lui	t0,0x800d
bfc0671c:	35083f18 	ori	t0,t0,0x3f18
bfc06720:	2403ffd4 	li	v1,-44
bfc06724:	ad092f00 	sw	t1,12032(t0)
bfc06728:	25040004 	addiu	a0,t0,4
bfc0672c:	2505fff8 	addiu	a1,t0,-8
bfc06730:	ac842f00 	sw	a0,12032(a0)
bfc06734:	aca52f00 	sw	a1,12032(a1)
bfc06738:	81022f00 	lb	v0,12032(t0)
bfc0673c:	8c852f00 	lw	a1,12032(a0)
bfc06740:	8ca42f00 	lw	a0,12032(a1)
bfc06744:	8ca62f00 	lw	a2,12032(a1)
bfc06748:	144307ab 	bne	v0,v1,bfc085f8 <inst_error>
bfc0674c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:27
bfc06750:	3c09dca5 	lui	t1,0xdca5
bfc06754:	35292840 	ori	t1,t1,0x2840
bfc06758:	3c08800d 	lui	t0,0x800d
bfc0675c:	35083960 	ori	t0,t0,0x3960
bfc06760:	24030040 	li	v1,64
bfc06764:	ad092efc 	sw	t1,12028(t0)
bfc06768:	25040004 	addiu	a0,t0,4
bfc0676c:	2505fff8 	addiu	a1,t0,-8
bfc06770:	ac842efc 	sw	a0,12028(a0)
bfc06774:	aca52efc 	sw	a1,12028(a1)
bfc06778:	81022efc 	lb	v0,12028(t0)
bfc0677c:	8c852efc 	lw	a1,12028(a0)
bfc06780:	8ca42efc 	lw	a0,12028(a1)
bfc06784:	8ca62efc 	lw	a2,12028(a1)
bfc06788:	1443079b 	bne	v0,v1,bfc085f8 <inst_error>
bfc0678c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:28
bfc06790:	3c094cdd 	lui	t1,0x4cdd
bfc06794:	352943c8 	ori	t1,t1,0x43c8
bfc06798:	3c08800d 	lui	t0,0x800d
bfc0679c:	3508a6e0 	ori	t0,t0,0xa6e0
bfc067a0:	2403ffc8 	li	v1,-56
bfc067a4:	ad09213c 	sw	t1,8508(t0)
bfc067a8:	25040004 	addiu	a0,t0,4
bfc067ac:	2505fff8 	addiu	a1,t0,-8
bfc067b0:	ac84213c 	sw	a0,8508(a0)
bfc067b4:	aca5213c 	sw	a1,8508(a1)
bfc067b8:	8102213c 	lb	v0,8508(t0)
bfc067bc:	8c85213c 	lw	a1,8508(a0)
bfc067c0:	8ca4213c 	lw	a0,8508(a1)
bfc067c4:	8ca6213c 	lw	a2,8508(a1)
bfc067c8:	1443078b 	bne	v0,v1,bfc085f8 <inst_error>
bfc067cc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:29
bfc067d0:	3c096d3d 	lui	t1,0x6d3d
bfc067d4:	3529ceb8 	ori	t1,t1,0xceb8
bfc067d8:	3c08800d 	lui	t0,0x800d
bfc067dc:	35080c90 	ori	t0,t0,0xc90
bfc067e0:	2403ffb8 	li	v1,-72
bfc067e4:	ad090338 	sw	t1,824(t0)
bfc067e8:	25040004 	addiu	a0,t0,4
bfc067ec:	2505fff8 	addiu	a1,t0,-8
bfc067f0:	ac840338 	sw	a0,824(a0)
bfc067f4:	aca50338 	sw	a1,824(a1)
bfc067f8:	81020338 	lb	v0,824(t0)
bfc067fc:	8c850338 	lw	a1,824(a0)
bfc06800:	8ca40338 	lw	a0,824(a1)
bfc06804:	8ca60338 	lw	a2,824(a1)
bfc06808:	1443077b 	bne	v0,v1,bfc085f8 <inst_error>
bfc0680c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:30
bfc06810:	3c09e838 	lui	t1,0xe838
bfc06814:	352914f0 	ori	t1,t1,0x14f0
bfc06818:	3c08800d 	lui	t0,0x800d
bfc0681c:	350844e8 	ori	t0,t0,0x44e8
bfc06820:	2403fff0 	li	v1,-16
bfc06824:	ad092174 	sw	t1,8564(t0)
bfc06828:	25040004 	addiu	a0,t0,4
bfc0682c:	2505fff8 	addiu	a1,t0,-8
bfc06830:	ac842174 	sw	a0,8564(a0)
bfc06834:	aca52174 	sw	a1,8564(a1)
bfc06838:	81022174 	lb	v0,8564(t0)
bfc0683c:	8c852174 	lw	a1,8564(a0)
bfc06840:	8ca42174 	lw	a0,8564(a1)
bfc06844:	8ca62174 	lw	a2,8564(a1)
bfc06848:	1443076b 	bne	v0,v1,bfc085f8 <inst_error>
bfc0684c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:31
bfc06850:	3c09bb62 	lui	t1,0xbb62
bfc06854:	3529f9ba 	ori	t1,t1,0xf9ba
bfc06858:	3c08800d 	lui	t0,0x800d
bfc0685c:	35081408 	ori	t0,t0,0x1408
bfc06860:	2403ffba 	li	v1,-70
bfc06864:	ad093c40 	sw	t1,15424(t0)
bfc06868:	25040004 	addiu	a0,t0,4
bfc0686c:	2505fff8 	addiu	a1,t0,-8
bfc06870:	ac843c40 	sw	a0,15424(a0)
bfc06874:	aca53c40 	sw	a1,15424(a1)
bfc06878:	81023c40 	lb	v0,15424(t0)
bfc0687c:	8c853c40 	lw	a1,15424(a0)
bfc06880:	8ca43c40 	lw	a0,15424(a1)
bfc06884:	8ca63c40 	lw	a2,15424(a1)
bfc06888:	1443075b 	bne	v0,v1,bfc085f8 <inst_error>
bfc0688c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:32
bfc06890:	3c099eb5 	lui	t1,0x9eb5
bfc06894:	35292b80 	ori	t1,t1,0x2b80
bfc06898:	3c08800d 	lui	t0,0x800d
bfc0689c:	3508d46c 	ori	t0,t0,0xd46c
bfc068a0:	2403ffb5 	li	v1,-75
bfc068a4:	ad0902ac 	sw	t1,684(t0)
bfc068a8:	25040004 	addiu	a0,t0,4
bfc068ac:	2505fff8 	addiu	a1,t0,-8
bfc068b0:	ac8402ac 	sw	a0,684(a0)
bfc068b4:	aca502ac 	sw	a1,684(a1)
bfc068b8:	810202ae 	lb	v0,686(t0)
bfc068bc:	8c8502ac 	lw	a1,684(a0)
bfc068c0:	8ca402ac 	lw	a0,684(a1)
bfc068c4:	8ca602ac 	lw	a2,684(a1)
bfc068c8:	1443074b 	bne	v0,v1,bfc085f8 <inst_error>
bfc068cc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:33
bfc068d0:	3c093fe8 	lui	t1,0x3fe8
bfc068d4:	35296b54 	ori	t1,t1,0x6b54
bfc068d8:	3c08800d 	lui	t0,0x800d
bfc068dc:	35082424 	ori	t0,t0,0x2424
bfc068e0:	2403003f 	li	v1,63
bfc068e4:	3c010001 	lui	at,0x1
bfc068e8:	00280821 	addu	at,at,t0
bfc068ec:	ac29a6f4 	sw	t1,-22796(at)
bfc068f0:	25040004 	addiu	a0,t0,4
bfc068f4:	2505fff8 	addiu	a1,t0,-8
bfc068f8:	3c010001 	lui	at,0x1
bfc068fc:	00240821 	addu	at,at,a0
bfc06900:	ac24a6f4 	sw	a0,-22796(at)
bfc06904:	3c010001 	lui	at,0x1
bfc06908:	00250821 	addu	at,at,a1
bfc0690c:	ac25a6f4 	sw	a1,-22796(at)
bfc06910:	3c020001 	lui	v0,0x1
bfc06914:	00481021 	addu	v0,v0,t0
bfc06918:	8042a6f7 	lb	v0,-22793(v0)
bfc0691c:	3c050001 	lui	a1,0x1
bfc06920:	00a42821 	addu	a1,a1,a0
bfc06924:	8ca5a6f4 	lw	a1,-22796(a1)
bfc06928:	3c040001 	lui	a0,0x1
bfc0692c:	00852021 	addu	a0,a0,a1
bfc06930:	8c84a6f4 	lw	a0,-22796(a0)
bfc06934:	3c060001 	lui	a2,0x1
bfc06938:	00c53021 	addu	a2,a2,a1
bfc0693c:	8cc6a6f4 	lw	a2,-22796(a2)
bfc06940:	1443072d 	bne	v0,v1,bfc085f8 <inst_error>
bfc06944:	00000000 	nop
/home/csy/func/inst/n59_lb.S:34
bfc06948:	3c09bbd2 	lui	t1,0xbbd2
bfc0694c:	3529dc3c 	ori	t1,t1,0xdc3c
bfc06950:	3c08800d 	lui	t0,0x800d
bfc06954:	35084040 	ori	t0,t0,0x4040
bfc06958:	2403003c 	li	v1,60
bfc0695c:	ad097528 	sw	t1,29992(t0)
bfc06960:	25040004 	addiu	a0,t0,4
bfc06964:	2505fff8 	addiu	a1,t0,-8
bfc06968:	ac847528 	sw	a0,29992(a0)
bfc0696c:	aca57528 	sw	a1,29992(a1)
bfc06970:	81027528 	lb	v0,29992(t0)
bfc06974:	8c857528 	lw	a1,29992(a0)
bfc06978:	8ca47528 	lw	a0,29992(a1)
bfc0697c:	8ca67528 	lw	a2,29992(a1)
bfc06980:	1443071d 	bne	v0,v1,bfc085f8 <inst_error>
bfc06984:	00000000 	nop
/home/csy/func/inst/n59_lb.S:35
bfc06988:	3c09dc0d 	lui	t1,0xdc0d
bfc0698c:	35299270 	ori	t1,t1,0x9270
bfc06990:	3c08800d 	lui	t0,0x800d
bfc06994:	35084e40 	ori	t0,t0,0x4e40
bfc06998:	24030070 	li	v1,112
bfc0699c:	ad096c98 	sw	t1,27800(t0)
bfc069a0:	25040004 	addiu	a0,t0,4
bfc069a4:	2505fff8 	addiu	a1,t0,-8
bfc069a8:	ac846c98 	sw	a0,27800(a0)
bfc069ac:	aca56c98 	sw	a1,27800(a1)
bfc069b0:	81026c98 	lb	v0,27800(t0)
bfc069b4:	8c856c98 	lw	a1,27800(a0)
bfc069b8:	8ca46c98 	lw	a0,27800(a1)
bfc069bc:	8ca66c98 	lw	a2,27800(a1)
bfc069c0:	1443070d 	bne	v0,v1,bfc085f8 <inst_error>
bfc069c4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:36
bfc069c8:	3c09946b 	lui	t1,0x946b
bfc069cc:	35299d00 	ori	t1,t1,0x9d00
bfc069d0:	3c08800d 	lui	t0,0x800d
bfc069d4:	35082ba8 	ori	t0,t0,0x2ba8
bfc069d8:	24030000 	li	v1,0
bfc069dc:	3c010001 	lui	at,0x1
bfc069e0:	00280821 	addu	at,at,t0
bfc069e4:	ac298d40 	sw	t1,-29376(at)
bfc069e8:	25040004 	addiu	a0,t0,4
bfc069ec:	2505fff8 	addiu	a1,t0,-8
bfc069f0:	3c010001 	lui	at,0x1
bfc069f4:	00240821 	addu	at,at,a0
bfc069f8:	ac248d40 	sw	a0,-29376(at)
bfc069fc:	3c010001 	lui	at,0x1
bfc06a00:	00250821 	addu	at,at,a1
bfc06a04:	ac258d40 	sw	a1,-29376(at)
bfc06a08:	3c020001 	lui	v0,0x1
bfc06a0c:	00481021 	addu	v0,v0,t0
bfc06a10:	80428d40 	lb	v0,-29376(v0)
bfc06a14:	3c050001 	lui	a1,0x1
bfc06a18:	00a42821 	addu	a1,a1,a0
bfc06a1c:	8ca58d40 	lw	a1,-29376(a1)
bfc06a20:	3c040001 	lui	a0,0x1
bfc06a24:	00852021 	addu	a0,a0,a1
bfc06a28:	8c848d40 	lw	a0,-29376(a0)
bfc06a2c:	3c060001 	lui	a2,0x1
bfc06a30:	00c53021 	addu	a2,a2,a1
bfc06a34:	8cc68d40 	lw	a2,-29376(a2)
bfc06a38:	144306ef 	bne	v0,v1,bfc085f8 <inst_error>
bfc06a3c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:37
bfc06a40:	3c09be6d 	lui	t1,0xbe6d
bfc06a44:	35299734 	ori	t1,t1,0x9734
bfc06a48:	3c08800d 	lui	t0,0x800d
bfc06a4c:	3508a6d4 	ori	t0,t0,0xa6d4
bfc06a50:	24030034 	li	v1,52
bfc06a54:	ad0918f0 	sw	t1,6384(t0)
bfc06a58:	25040004 	addiu	a0,t0,4
bfc06a5c:	2505fff8 	addiu	a1,t0,-8
bfc06a60:	ac8418f0 	sw	a0,6384(a0)
bfc06a64:	aca518f0 	sw	a1,6384(a1)
bfc06a68:	810218f0 	lb	v0,6384(t0)
bfc06a6c:	8c8518f0 	lw	a1,6384(a0)
bfc06a70:	8ca418f0 	lw	a0,6384(a1)
bfc06a74:	8ca618f0 	lw	a2,6384(a1)
bfc06a78:	144306df 	bne	v0,v1,bfc085f8 <inst_error>
bfc06a7c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:38
bfc06a80:	3c0916e0 	lui	t1,0x16e0
bfc06a84:	3529b3c0 	ori	t1,t1,0xb3c0
bfc06a88:	3c08800d 	lui	t0,0x800d
bfc06a8c:	350880ac 	ori	t0,t0,0x80ac
bfc06a90:	24030016 	li	v1,22
bfc06a94:	ad096fe8 	sw	t1,28648(t0)
bfc06a98:	25040004 	addiu	a0,t0,4
bfc06a9c:	2505fff8 	addiu	a1,t0,-8
bfc06aa0:	ac846fe8 	sw	a0,28648(a0)
bfc06aa4:	aca56fe8 	sw	a1,28648(a1)
bfc06aa8:	81026feb 	lb	v0,28651(t0)
bfc06aac:	8c856fe8 	lw	a1,28648(a0)
bfc06ab0:	8ca46fe8 	lw	a0,28648(a1)
bfc06ab4:	8ca66fe8 	lw	a2,28648(a1)
bfc06ab8:	144306cf 	bne	v0,v1,bfc085f8 <inst_error>
bfc06abc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:39
bfc06ac0:	3c096bc4 	lui	t1,0x6bc4
bfc06ac4:	35299d90 	ori	t1,t1,0x9d90
bfc06ac8:	3c08800d 	lui	t0,0x800d
bfc06acc:	3508b9dc 	ori	t0,t0,0xb9dc
bfc06ad0:	2403ffc4 	li	v1,-60
bfc06ad4:	ad0925b8 	sw	t1,9656(t0)
bfc06ad8:	25040004 	addiu	a0,t0,4
bfc06adc:	2505fff8 	addiu	a1,t0,-8
bfc06ae0:	ac8425b8 	sw	a0,9656(a0)
bfc06ae4:	aca525b8 	sw	a1,9656(a1)
bfc06ae8:	810225ba 	lb	v0,9658(t0)
bfc06aec:	8c8525b8 	lw	a1,9656(a0)
bfc06af0:	8ca425b8 	lw	a0,9656(a1)
bfc06af4:	8ca625b8 	lw	a2,9656(a1)
bfc06af8:	144306bf 	bne	v0,v1,bfc085f8 <inst_error>
bfc06afc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:40
bfc06b00:	3c096346 	lui	t1,0x6346
bfc06b04:	3529f980 	ori	t1,t1,0xf980
bfc06b08:	3c08800d 	lui	t0,0x800d
bfc06b0c:	35087f2c 	ori	t0,t0,0x7f2c
bfc06b10:	2403ff80 	li	v1,-128
bfc06b14:	ad094c38 	sw	t1,19512(t0)
bfc06b18:	25040004 	addiu	a0,t0,4
bfc06b1c:	2505fff8 	addiu	a1,t0,-8
bfc06b20:	ac844c38 	sw	a0,19512(a0)
bfc06b24:	aca54c38 	sw	a1,19512(a1)
bfc06b28:	81024c38 	lb	v0,19512(t0)
bfc06b2c:	8c854c38 	lw	a1,19512(a0)
bfc06b30:	8ca44c38 	lw	a0,19512(a1)
bfc06b34:	8ca64c38 	lw	a2,19512(a1)
bfc06b38:	144306af 	bne	v0,v1,bfc085f8 <inst_error>
bfc06b3c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:41
bfc06b40:	3c09c1a4 	lui	t1,0xc1a4
bfc06b44:	35296720 	ori	t1,t1,0x6720
bfc06b48:	3c08800d 	lui	t0,0x800d
bfc06b4c:	350858f4 	ori	t0,t0,0x58f4
bfc06b50:	2403ffa4 	li	v1,-92
bfc06b54:	3c010001 	lui	at,0x1
bfc06b58:	00280821 	addu	at,at,t0
bfc06b5c:	ac2997a4 	sw	t1,-26716(at)
bfc06b60:	25040004 	addiu	a0,t0,4
bfc06b64:	2505fff8 	addiu	a1,t0,-8
bfc06b68:	3c010001 	lui	at,0x1
bfc06b6c:	00240821 	addu	at,at,a0
bfc06b70:	ac2497a4 	sw	a0,-26716(at)
bfc06b74:	3c010001 	lui	at,0x1
bfc06b78:	00250821 	addu	at,at,a1
bfc06b7c:	ac2597a4 	sw	a1,-26716(at)
bfc06b80:	3c020001 	lui	v0,0x1
bfc06b84:	00481021 	addu	v0,v0,t0
bfc06b88:	804297a6 	lb	v0,-26714(v0)
bfc06b8c:	3c050001 	lui	a1,0x1
bfc06b90:	00a42821 	addu	a1,a1,a0
bfc06b94:	8ca597a4 	lw	a1,-26716(a1)
bfc06b98:	3c040001 	lui	a0,0x1
bfc06b9c:	00852021 	addu	a0,a0,a1
bfc06ba0:	8c8497a4 	lw	a0,-26716(a0)
bfc06ba4:	3c060001 	lui	a2,0x1
bfc06ba8:	00c53021 	addu	a2,a2,a1
bfc06bac:	8cc697a4 	lw	a2,-26716(a2)
bfc06bb0:	14430691 	bne	v0,v1,bfc085f8 <inst_error>
bfc06bb4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:42
bfc06bb8:	3c0964ce 	lui	t1,0x64ce
bfc06bbc:	3529f3ac 	ori	t1,t1,0xf3ac
bfc06bc0:	3c08800d 	lui	t0,0x800d
bfc06bc4:	35081498 	ori	t0,t0,0x1498
bfc06bc8:	2403ffac 	li	v1,-84
bfc06bcc:	ad09729c 	sw	t1,29340(t0)
bfc06bd0:	25040004 	addiu	a0,t0,4
bfc06bd4:	2505fff8 	addiu	a1,t0,-8
bfc06bd8:	ac84729c 	sw	a0,29340(a0)
bfc06bdc:	aca5729c 	sw	a1,29340(a1)
bfc06be0:	8102729c 	lb	v0,29340(t0)
bfc06be4:	8c85729c 	lw	a1,29340(a0)
bfc06be8:	8ca4729c 	lw	a0,29340(a1)
bfc06bec:	8ca6729c 	lw	a2,29340(a1)
bfc06bf0:	14430681 	bne	v0,v1,bfc085f8 <inst_error>
bfc06bf4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:43
bfc06bf8:	3c09a730 	lui	t1,0xa730
bfc06bfc:	3529cfc0 	ori	t1,t1,0xcfc0
bfc06c00:	3c08800d 	lui	t0,0x800d
bfc06c04:	35081b80 	ori	t0,t0,0x1b80
bfc06c08:	2403ffa7 	li	v1,-89
bfc06c0c:	ad09254c 	sw	t1,9548(t0)
bfc06c10:	25040004 	addiu	a0,t0,4
bfc06c14:	2505fff8 	addiu	a1,t0,-8
bfc06c18:	ac84254c 	sw	a0,9548(a0)
bfc06c1c:	aca5254c 	sw	a1,9548(a1)
bfc06c20:	8102254f 	lb	v0,9551(t0)
bfc06c24:	8c85254c 	lw	a1,9548(a0)
bfc06c28:	8ca4254c 	lw	a0,9548(a1)
bfc06c2c:	8ca6254c 	lw	a2,9548(a1)
bfc06c30:	14430671 	bne	v0,v1,bfc085f8 <inst_error>
bfc06c34:	00000000 	nop
/home/csy/func/inst/n59_lb.S:44
bfc06c38:	3c093824 	lui	t1,0x3824
bfc06c3c:	35290a20 	ori	t1,t1,0xa20
bfc06c40:	3c08800d 	lui	t0,0x800d
bfc06c44:	35083280 	ori	t0,t0,0x3280
bfc06c48:	24030038 	li	v1,56
bfc06c4c:	3c010001 	lui	at,0x1
bfc06c50:	00280821 	addu	at,at,t0
bfc06c54:	ac2999d0 	sw	t1,-26160(at)
bfc06c58:	25040004 	addiu	a0,t0,4
bfc06c5c:	2505fff8 	addiu	a1,t0,-8
bfc06c60:	3c010001 	lui	at,0x1
bfc06c64:	00240821 	addu	at,at,a0
bfc06c68:	ac2499d0 	sw	a0,-26160(at)
bfc06c6c:	3c010001 	lui	at,0x1
bfc06c70:	00250821 	addu	at,at,a1
bfc06c74:	ac2599d0 	sw	a1,-26160(at)
bfc06c78:	3c020001 	lui	v0,0x1
bfc06c7c:	00481021 	addu	v0,v0,t0
bfc06c80:	804299d3 	lb	v0,-26157(v0)
bfc06c84:	3c050001 	lui	a1,0x1
bfc06c88:	00a42821 	addu	a1,a1,a0
bfc06c8c:	8ca599d0 	lw	a1,-26160(a1)
bfc06c90:	3c040001 	lui	a0,0x1
bfc06c94:	00852021 	addu	a0,a0,a1
bfc06c98:	8c8499d0 	lw	a0,-26160(a0)
bfc06c9c:	3c060001 	lui	a2,0x1
bfc06ca0:	00c53021 	addu	a2,a2,a1
bfc06ca4:	8cc699d0 	lw	a2,-26160(a2)
bfc06ca8:	14430653 	bne	v0,v1,bfc085f8 <inst_error>
bfc06cac:	00000000 	nop
/home/csy/func/inst/n59_lb.S:45
bfc06cb0:	3c09a6f3 	lui	t1,0xa6f3
bfc06cb4:	3529c710 	ori	t1,t1,0xc710
bfc06cb8:	3c08800d 	lui	t0,0x800d
bfc06cbc:	35080344 	ori	t0,t0,0x344
bfc06cc0:	24030010 	li	v1,16
bfc06cc4:	3c010001 	lui	at,0x1
bfc06cc8:	00280821 	addu	at,at,t0
bfc06ccc:	ac29e3b0 	sw	t1,-7248(at)
bfc06cd0:	25040004 	addiu	a0,t0,4
bfc06cd4:	2505fff8 	addiu	a1,t0,-8
bfc06cd8:	3c010001 	lui	at,0x1
bfc06cdc:	00240821 	addu	at,at,a0
bfc06ce0:	ac24e3b0 	sw	a0,-7248(at)
bfc06ce4:	3c010001 	lui	at,0x1
bfc06ce8:	00250821 	addu	at,at,a1
bfc06cec:	ac25e3b0 	sw	a1,-7248(at)
bfc06cf0:	3c020001 	lui	v0,0x1
bfc06cf4:	00481021 	addu	v0,v0,t0
bfc06cf8:	8042e3b0 	lb	v0,-7248(v0)
bfc06cfc:	3c050001 	lui	a1,0x1
bfc06d00:	00a42821 	addu	a1,a1,a0
bfc06d04:	8ca5e3b0 	lw	a1,-7248(a1)
bfc06d08:	3c040001 	lui	a0,0x1
bfc06d0c:	00852021 	addu	a0,a0,a1
bfc06d10:	8c84e3b0 	lw	a0,-7248(a0)
bfc06d14:	3c060001 	lui	a2,0x1
bfc06d18:	00c53021 	addu	a2,a2,a1
bfc06d1c:	8cc6e3b0 	lw	a2,-7248(a2)
bfc06d20:	14430635 	bne	v0,v1,bfc085f8 <inst_error>
bfc06d24:	00000000 	nop
/home/csy/func/inst/n59_lb.S:46
bfc06d28:	3c0969cd 	lui	t1,0x69cd
bfc06d2c:	35296980 	ori	t1,t1,0x6980
bfc06d30:	3c08800d 	lui	t0,0x800d
bfc06d34:	350873a8 	ori	t0,t0,0x73a8
bfc06d38:	2403ffcd 	li	v1,-51
bfc06d3c:	ad09559c 	sw	t1,21916(t0)
bfc06d40:	25040004 	addiu	a0,t0,4
bfc06d44:	2505fff8 	addiu	a1,t0,-8
bfc06d48:	ac84559c 	sw	a0,21916(a0)
bfc06d4c:	aca5559c 	sw	a1,21916(a1)
bfc06d50:	8102559e 	lb	v0,21918(t0)
bfc06d54:	8c85559c 	lw	a1,21916(a0)
bfc06d58:	8ca4559c 	lw	a0,21916(a1)
bfc06d5c:	8ca6559c 	lw	a2,21916(a1)
bfc06d60:	14430625 	bne	v0,v1,bfc085f8 <inst_error>
bfc06d64:	00000000 	nop
/home/csy/func/inst/n59_lb.S:47
bfc06d68:	3c097aec 	lui	t1,0x7aec
bfc06d6c:	3529b546 	ori	t1,t1,0xb546
bfc06d70:	3c08800d 	lui	t0,0x800d
bfc06d74:	35088730 	ori	t0,t0,0x8730
bfc06d78:	24030046 	li	v1,70
bfc06d7c:	ad096b60 	sw	t1,27488(t0)
bfc06d80:	25040004 	addiu	a0,t0,4
bfc06d84:	2505fff8 	addiu	a1,t0,-8
bfc06d88:	ac846b60 	sw	a0,27488(a0)
bfc06d8c:	aca56b60 	sw	a1,27488(a1)
bfc06d90:	81026b60 	lb	v0,27488(t0)
bfc06d94:	8c856b60 	lw	a1,27488(a0)
bfc06d98:	8ca46b60 	lw	a0,27488(a1)
bfc06d9c:	8ca66b60 	lw	a2,27488(a1)
bfc06da0:	14430615 	bne	v0,v1,bfc085f8 <inst_error>
bfc06da4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:48
bfc06da8:	3c099c24 	lui	t1,0x9c24
bfc06dac:	35294870 	ori	t1,t1,0x4870
bfc06db0:	3c08800d 	lui	t0,0x800d
bfc06db4:	35082bd0 	ori	t0,t0,0x2bd0
bfc06db8:	24030070 	li	v1,112
bfc06dbc:	ad094344 	sw	t1,17220(t0)
bfc06dc0:	25040004 	addiu	a0,t0,4
bfc06dc4:	2505fff8 	addiu	a1,t0,-8
bfc06dc8:	ac844344 	sw	a0,17220(a0)
bfc06dcc:	aca54344 	sw	a1,17220(a1)
bfc06dd0:	81024344 	lb	v0,17220(t0)
bfc06dd4:	8c854344 	lw	a1,17220(a0)
bfc06dd8:	8ca44344 	lw	a0,17220(a1)
bfc06ddc:	8ca64344 	lw	a2,17220(a1)
bfc06de0:	14430605 	bne	v0,v1,bfc085f8 <inst_error>
bfc06de4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:49
bfc06de8:	3c091dd2 	lui	t1,0x1dd2
bfc06dec:	3529d522 	ori	t1,t1,0xd522
bfc06df0:	3c08800d 	lui	t0,0x800d
bfc06df4:	350806d8 	ori	t0,t0,0x6d8
bfc06df8:	2403ffd2 	li	v1,-46
bfc06dfc:	ad092374 	sw	t1,9076(t0)
bfc06e00:	25040004 	addiu	a0,t0,4
bfc06e04:	2505fff8 	addiu	a1,t0,-8
bfc06e08:	ac842374 	sw	a0,9076(a0)
bfc06e0c:	aca52374 	sw	a1,9076(a1)
bfc06e10:	81022376 	lb	v0,9078(t0)
bfc06e14:	8c852374 	lw	a1,9076(a0)
bfc06e18:	8ca42374 	lw	a0,9076(a1)
bfc06e1c:	8ca62374 	lw	a2,9076(a1)
bfc06e20:	144305f5 	bne	v0,v1,bfc085f8 <inst_error>
bfc06e24:	00000000 	nop
/home/csy/func/inst/n59_lb.S:50
bfc06e28:	3c09fca7 	lui	t1,0xfca7
bfc06e2c:	35291dcc 	ori	t1,t1,0x1dcc
bfc06e30:	3c08800d 	lui	t0,0x800d
bfc06e34:	350823a8 	ori	t0,t0,0x23a8
bfc06e38:	2403001d 	li	v1,29
bfc06e3c:	3c010001 	lui	at,0x1
bfc06e40:	00280821 	addu	at,at,t0
bfc06e44:	ac29b4dc 	sw	t1,-19236(at)
bfc06e48:	25040004 	addiu	a0,t0,4
bfc06e4c:	2505fff8 	addiu	a1,t0,-8
bfc06e50:	3c010001 	lui	at,0x1
bfc06e54:	00240821 	addu	at,at,a0
bfc06e58:	ac24b4dc 	sw	a0,-19236(at)
bfc06e5c:	3c010001 	lui	at,0x1
bfc06e60:	00250821 	addu	at,at,a1
bfc06e64:	ac25b4dc 	sw	a1,-19236(at)
bfc06e68:	3c020001 	lui	v0,0x1
bfc06e6c:	00481021 	addu	v0,v0,t0
bfc06e70:	8042b4dd 	lb	v0,-19235(v0)
bfc06e74:	3c050001 	lui	a1,0x1
bfc06e78:	00a42821 	addu	a1,a1,a0
bfc06e7c:	8ca5b4dc 	lw	a1,-19236(a1)
bfc06e80:	3c040001 	lui	a0,0x1
bfc06e84:	00852021 	addu	a0,a0,a1
bfc06e88:	8c84b4dc 	lw	a0,-19236(a0)
bfc06e8c:	3c060001 	lui	a2,0x1
bfc06e90:	00c53021 	addu	a2,a2,a1
bfc06e94:	8cc6b4dc 	lw	a2,-19236(a2)
bfc06e98:	144305d7 	bne	v0,v1,bfc085f8 <inst_error>
bfc06e9c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:51
bfc06ea0:	3c098b31 	lui	t1,0x8b31
bfc06ea4:	35297ee0 	ori	t1,t1,0x7ee0
bfc06ea8:	3c08800d 	lui	t0,0x800d
bfc06eac:	35080ca4 	ori	t0,t0,0xca4
bfc06eb0:	2403ffe0 	li	v1,-32
bfc06eb4:	3c010001 	lui	at,0x1
bfc06eb8:	00280821 	addu	at,at,t0
bfc06ebc:	ac29d47c 	sw	t1,-11140(at)
bfc06ec0:	25040004 	addiu	a0,t0,4
bfc06ec4:	2505fff8 	addiu	a1,t0,-8
bfc06ec8:	3c010001 	lui	at,0x1
bfc06ecc:	00240821 	addu	at,at,a0
bfc06ed0:	ac24d47c 	sw	a0,-11140(at)
bfc06ed4:	3c010001 	lui	at,0x1
bfc06ed8:	00250821 	addu	at,at,a1
bfc06edc:	ac25d47c 	sw	a1,-11140(at)
bfc06ee0:	3c020001 	lui	v0,0x1
bfc06ee4:	00481021 	addu	v0,v0,t0
bfc06ee8:	8042d47c 	lb	v0,-11140(v0)
bfc06eec:	3c050001 	lui	a1,0x1
bfc06ef0:	00a42821 	addu	a1,a1,a0
bfc06ef4:	8ca5d47c 	lw	a1,-11140(a1)
bfc06ef8:	3c040001 	lui	a0,0x1
bfc06efc:	00852021 	addu	a0,a0,a1
bfc06f00:	8c84d47c 	lw	a0,-11140(a0)
bfc06f04:	3c060001 	lui	a2,0x1
bfc06f08:	00c53021 	addu	a2,a2,a1
bfc06f0c:	8cc6d47c 	lw	a2,-11140(a2)
bfc06f10:	144305b9 	bne	v0,v1,bfc085f8 <inst_error>
bfc06f14:	00000000 	nop
/home/csy/func/inst/n59_lb.S:52
bfc06f18:	3c0930b7 	lui	t1,0x30b7
bfc06f1c:	35293214 	ori	t1,t1,0x3214
bfc06f20:	3c08800d 	lui	t0,0x800d
bfc06f24:	3508076c 	ori	t0,t0,0x76c
bfc06f28:	2403ffb7 	li	v1,-73
bfc06f2c:	ad095b48 	sw	t1,23368(t0)
bfc06f30:	25040004 	addiu	a0,t0,4
bfc06f34:	2505fff8 	addiu	a1,t0,-8
bfc06f38:	ac845b48 	sw	a0,23368(a0)
bfc06f3c:	aca55b48 	sw	a1,23368(a1)
bfc06f40:	81025b4a 	lb	v0,23370(t0)
bfc06f44:	8c855b48 	lw	a1,23368(a0)
bfc06f48:	8ca45b48 	lw	a0,23368(a1)
bfc06f4c:	8ca65b48 	lw	a2,23368(a1)
bfc06f50:	144305a9 	bne	v0,v1,bfc085f8 <inst_error>
bfc06f54:	00000000 	nop
/home/csy/func/inst/n59_lb.S:53
bfc06f58:	3c09ef77 	lui	t1,0xef77
bfc06f5c:	35298c1c 	ori	t1,t1,0x8c1c
bfc06f60:	3c08800d 	lui	t0,0x800d
bfc06f64:	3508a97c 	ori	t0,t0,0xa97c
bfc06f68:	2403001c 	li	v1,28
bfc06f6c:	ad092df8 	sw	t1,11768(t0)
bfc06f70:	25040004 	addiu	a0,t0,4
bfc06f74:	2505fff8 	addiu	a1,t0,-8
bfc06f78:	ac842df8 	sw	a0,11768(a0)
bfc06f7c:	aca52df8 	sw	a1,11768(a1)
bfc06f80:	81022df8 	lb	v0,11768(t0)
bfc06f84:	8c852df8 	lw	a1,11768(a0)
bfc06f88:	8ca42df8 	lw	a0,11768(a1)
bfc06f8c:	8ca62df8 	lw	a2,11768(a1)
bfc06f90:	14430599 	bne	v0,v1,bfc085f8 <inst_error>
bfc06f94:	00000000 	nop
/home/csy/func/inst/n59_lb.S:54
bfc06f98:	3c09c4aa 	lui	t1,0xc4aa
bfc06f9c:	352918c0 	ori	t1,t1,0x18c0
bfc06fa0:	3c08800d 	lui	t0,0x800d
bfc06fa4:	35083af8 	ori	t0,t0,0x3af8
bfc06fa8:	2403ffc0 	li	v1,-64
bfc06fac:	3c010001 	lui	at,0x1
bfc06fb0:	00280821 	addu	at,at,t0
bfc06fb4:	ac29c2ac 	sw	t1,-15700(at)
bfc06fb8:	25040004 	addiu	a0,t0,4
bfc06fbc:	2505fff8 	addiu	a1,t0,-8
bfc06fc0:	3c010001 	lui	at,0x1
bfc06fc4:	00240821 	addu	at,at,a0
bfc06fc8:	ac24c2ac 	sw	a0,-15700(at)
bfc06fcc:	3c010001 	lui	at,0x1
bfc06fd0:	00250821 	addu	at,at,a1
bfc06fd4:	ac25c2ac 	sw	a1,-15700(at)
bfc06fd8:	3c020001 	lui	v0,0x1
bfc06fdc:	00481021 	addu	v0,v0,t0
bfc06fe0:	8042c2ac 	lb	v0,-15700(v0)
bfc06fe4:	3c050001 	lui	a1,0x1
bfc06fe8:	00a42821 	addu	a1,a1,a0
bfc06fec:	8ca5c2ac 	lw	a1,-15700(a1)
bfc06ff0:	3c040001 	lui	a0,0x1
bfc06ff4:	00852021 	addu	a0,a0,a1
bfc06ff8:	8c84c2ac 	lw	a0,-15700(a0)
bfc06ffc:	3c060001 	lui	a2,0x1
bfc07000:	00c53021 	addu	a2,a2,a1
bfc07004:	8cc6c2ac 	lw	a2,-15700(a2)
bfc07008:	1443057b 	bne	v0,v1,bfc085f8 <inst_error>
bfc0700c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:55
bfc07010:	3c09fe4b 	lui	t1,0xfe4b
bfc07014:	35297514 	ori	t1,t1,0x7514
bfc07018:	3c08800d 	lui	t0,0x800d
bfc0701c:	3508e080 	ori	t0,t0,0xe080
bfc07020:	24030014 	li	v1,20
bfc07024:	ad0907c8 	sw	t1,1992(t0)
bfc07028:	25040004 	addiu	a0,t0,4
bfc0702c:	2505fff8 	addiu	a1,t0,-8
bfc07030:	ac8407c8 	sw	a0,1992(a0)
bfc07034:	aca507c8 	sw	a1,1992(a1)
bfc07038:	810207c8 	lb	v0,1992(t0)
bfc0703c:	8c8507c8 	lw	a1,1992(a0)
bfc07040:	8ca407c8 	lw	a0,1992(a1)
bfc07044:	8ca607c8 	lw	a2,1992(a1)
bfc07048:	1443056b 	bne	v0,v1,bfc085f8 <inst_error>
bfc0704c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:56
bfc07050:	3c0943fc 	lui	t1,0x43fc
bfc07054:	352933e8 	ori	t1,t1,0x33e8
bfc07058:	3c08800d 	lui	t0,0x800d
bfc0705c:	35086478 	ori	t0,t0,0x6478
bfc07060:	2403fffc 	li	v1,-4
bfc07064:	3c010001 	lui	at,0x1
bfc07068:	00280821 	addu	at,at,t0
bfc0706c:	ac29827c 	sw	t1,-32132(at)
bfc07070:	25040004 	addiu	a0,t0,4
bfc07074:	2505fff8 	addiu	a1,t0,-8
bfc07078:	3c010001 	lui	at,0x1
bfc0707c:	00240821 	addu	at,at,a0
bfc07080:	ac24827c 	sw	a0,-32132(at)
bfc07084:	3c010001 	lui	at,0x1
bfc07088:	00250821 	addu	at,at,a1
bfc0708c:	ac25827c 	sw	a1,-32132(at)
bfc07090:	3c020001 	lui	v0,0x1
bfc07094:	00481021 	addu	v0,v0,t0
bfc07098:	8042827e 	lb	v0,-32130(v0)
bfc0709c:	3c050001 	lui	a1,0x1
bfc070a0:	00a42821 	addu	a1,a1,a0
bfc070a4:	8ca5827c 	lw	a1,-32132(a1)
bfc070a8:	3c040001 	lui	a0,0x1
bfc070ac:	00852021 	addu	a0,a0,a1
bfc070b0:	8c84827c 	lw	a0,-32132(a0)
bfc070b4:	3c060001 	lui	a2,0x1
bfc070b8:	00c53021 	addu	a2,a2,a1
bfc070bc:	8cc6827c 	lw	a2,-32132(a2)
bfc070c0:	1443054d 	bne	v0,v1,bfc085f8 <inst_error>
bfc070c4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:57
bfc070c8:	3c09a1e3 	lui	t1,0xa1e3
bfc070cc:	35290564 	ori	t1,t1,0x564
bfc070d0:	3c08800d 	lui	t0,0x800d
bfc070d4:	35085e8c 	ori	t0,t0,0x5e8c
bfc070d8:	24030005 	li	v1,5
bfc070dc:	ad091f44 	sw	t1,8004(t0)
bfc070e0:	25040004 	addiu	a0,t0,4
bfc070e4:	2505fff8 	addiu	a1,t0,-8
bfc070e8:	ac841f44 	sw	a0,8004(a0)
bfc070ec:	aca51f44 	sw	a1,8004(a1)
bfc070f0:	81021f45 	lb	v0,8005(t0)
bfc070f4:	8c851f44 	lw	a1,8004(a0)
bfc070f8:	8ca41f44 	lw	a0,8004(a1)
bfc070fc:	8ca61f44 	lw	a2,8004(a1)
bfc07100:	1443053d 	bne	v0,v1,bfc085f8 <inst_error>
bfc07104:	00000000 	nop
/home/csy/func/inst/n59_lb.S:58
bfc07108:	3c099abb 	lui	t1,0x9abb
bfc0710c:	35293880 	ori	t1,t1,0x3880
bfc07110:	3c08800d 	lui	t0,0x800d
bfc07114:	35081de0 	ori	t0,t0,0x1de0
bfc07118:	2403ffbb 	li	v1,-69
bfc0711c:	3c010001 	lui	at,0x1
bfc07120:	00280821 	addu	at,at,t0
bfc07124:	ac29de68 	sw	t1,-8600(at)
bfc07128:	25040004 	addiu	a0,t0,4
bfc0712c:	2505fff8 	addiu	a1,t0,-8
bfc07130:	3c010001 	lui	at,0x1
bfc07134:	00240821 	addu	at,at,a0
bfc07138:	ac24de68 	sw	a0,-8600(at)
bfc0713c:	3c010001 	lui	at,0x1
bfc07140:	00250821 	addu	at,at,a1
bfc07144:	ac25de68 	sw	a1,-8600(at)
bfc07148:	3c020001 	lui	v0,0x1
bfc0714c:	00481021 	addu	v0,v0,t0
bfc07150:	8042de6a 	lb	v0,-8598(v0)
bfc07154:	3c050001 	lui	a1,0x1
bfc07158:	00a42821 	addu	a1,a1,a0
bfc0715c:	8ca5de68 	lw	a1,-8600(a1)
bfc07160:	3c040001 	lui	a0,0x1
bfc07164:	00852021 	addu	a0,a0,a1
bfc07168:	8c84de68 	lw	a0,-8600(a0)
bfc0716c:	3c060001 	lui	a2,0x1
bfc07170:	00c53021 	addu	a2,a2,a1
bfc07174:	8cc6de68 	lw	a2,-8600(a2)
bfc07178:	1443051f 	bne	v0,v1,bfc085f8 <inst_error>
bfc0717c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:59
bfc07180:	3c094653 	lui	t1,0x4653
bfc07184:	3529e630 	ori	t1,t1,0xe630
bfc07188:	3c08800d 	lui	t0,0x800d
bfc0718c:	3508244c 	ori	t0,t0,0x244c
bfc07190:	24030030 	li	v1,48
bfc07194:	ad095878 	sw	t1,22648(t0)
bfc07198:	25040004 	addiu	a0,t0,4
bfc0719c:	2505fff8 	addiu	a1,t0,-8
bfc071a0:	ac845878 	sw	a0,22648(a0)
bfc071a4:	aca55878 	sw	a1,22648(a1)
bfc071a8:	81025878 	lb	v0,22648(t0)
bfc071ac:	8c855878 	lw	a1,22648(a0)
bfc071b0:	8ca45878 	lw	a0,22648(a1)
bfc071b4:	8ca65878 	lw	a2,22648(a1)
bfc071b8:	1443050f 	bne	v0,v1,bfc085f8 <inst_error>
bfc071bc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:60
bfc071c0:	3c09dfd3 	lui	t1,0xdfd3
bfc071c4:	35292410 	ori	t1,t1,0x2410
bfc071c8:	3c08800d 	lui	t0,0x800d
bfc071cc:	3508833c 	ori	t0,t0,0x833c
bfc071d0:	24030010 	li	v1,16
bfc071d4:	ad09403c 	sw	t1,16444(t0)
bfc071d8:	25040004 	addiu	a0,t0,4
bfc071dc:	2505fff8 	addiu	a1,t0,-8
bfc071e0:	ac84403c 	sw	a0,16444(a0)
bfc071e4:	aca5403c 	sw	a1,16444(a1)
bfc071e8:	8102403c 	lb	v0,16444(t0)
bfc071ec:	8c85403c 	lw	a1,16444(a0)
bfc071f0:	8ca4403c 	lw	a0,16444(a1)
bfc071f4:	8ca6403c 	lw	a2,16444(a1)
bfc071f8:	144304ff 	bne	v0,v1,bfc085f8 <inst_error>
bfc071fc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:61
bfc07200:	3c09eb7c 	lui	t1,0xeb7c
bfc07204:	35295500 	ori	t1,t1,0x5500
bfc07208:	3c08800d 	lui	t0,0x800d
bfc0720c:	35085aac 	ori	t0,t0,0x5aac
bfc07210:	24030000 	li	v1,0
bfc07214:	ad095df0 	sw	t1,24048(t0)
bfc07218:	25040004 	addiu	a0,t0,4
bfc0721c:	2505fff8 	addiu	a1,t0,-8
bfc07220:	ac845df0 	sw	a0,24048(a0)
bfc07224:	aca55df0 	sw	a1,24048(a1)
bfc07228:	81025df0 	lb	v0,24048(t0)
bfc0722c:	8c855df0 	lw	a1,24048(a0)
bfc07230:	8ca45df0 	lw	a0,24048(a1)
bfc07234:	8ca65df0 	lw	a2,24048(a1)
bfc07238:	144304ef 	bne	v0,v1,bfc085f8 <inst_error>
bfc0723c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:62
bfc07240:	3c09e410 	lui	t1,0xe410
bfc07244:	35296bd0 	ori	t1,t1,0x6bd0
bfc07248:	3c08800d 	lui	t0,0x800d
bfc0724c:	35083dc4 	ori	t0,t0,0x3dc4
bfc07250:	2403ffd0 	li	v1,-48
bfc07254:	ad09712c 	sw	t1,28972(t0)
bfc07258:	25040004 	addiu	a0,t0,4
bfc0725c:	2505fff8 	addiu	a1,t0,-8
bfc07260:	ac84712c 	sw	a0,28972(a0)
bfc07264:	aca5712c 	sw	a1,28972(a1)
bfc07268:	8102712c 	lb	v0,28972(t0)
bfc0726c:	8c85712c 	lw	a1,28972(a0)
bfc07270:	8ca4712c 	lw	a0,28972(a1)
bfc07274:	8ca6712c 	lw	a2,28972(a1)
bfc07278:	144304df 	bne	v0,v1,bfc085f8 <inst_error>
bfc0727c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:63
bfc07280:	3c09ead2 	lui	t1,0xead2
bfc07284:	352986f4 	ori	t1,t1,0x86f4
bfc07288:	3c08800d 	lui	t0,0x800d
bfc0728c:	350850c4 	ori	t0,t0,0x50c4
bfc07290:	2403ffd2 	li	v1,-46
bfc07294:	ad092220 	sw	t1,8736(t0)
bfc07298:	25040004 	addiu	a0,t0,4
bfc0729c:	2505fff8 	addiu	a1,t0,-8
bfc072a0:	ac842220 	sw	a0,8736(a0)
bfc072a4:	aca52220 	sw	a1,8736(a1)
bfc072a8:	81022222 	lb	v0,8738(t0)
bfc072ac:	8c852220 	lw	a1,8736(a0)
bfc072b0:	8ca42220 	lw	a0,8736(a1)
bfc072b4:	8ca62220 	lw	a2,8736(a1)
bfc072b8:	144304cf 	bne	v0,v1,bfc085f8 <inst_error>
bfc072bc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:64
bfc072c0:	3c09e9f4 	lui	t1,0xe9f4
bfc072c4:	35299570 	ori	t1,t1,0x9570
bfc072c8:	3c08800d 	lui	t0,0x800d
bfc072cc:	35081d40 	ori	t0,t0,0x1d40
bfc072d0:	24030070 	li	v1,112
bfc072d4:	ad095724 	sw	t1,22308(t0)
bfc072d8:	25040004 	addiu	a0,t0,4
bfc072dc:	2505fff8 	addiu	a1,t0,-8
bfc072e0:	ac845724 	sw	a0,22308(a0)
bfc072e4:	aca55724 	sw	a1,22308(a1)
bfc072e8:	81025724 	lb	v0,22308(t0)
bfc072ec:	8c855724 	lw	a1,22308(a0)
bfc072f0:	8ca45724 	lw	a0,22308(a1)
bfc072f4:	8ca65724 	lw	a2,22308(a1)
bfc072f8:	144304bf 	bne	v0,v1,bfc085f8 <inst_error>
bfc072fc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:65
bfc07300:	3c09e395 	lui	t1,0xe395
bfc07304:	3529f2c0 	ori	t1,t1,0xf2c0
bfc07308:	3c08800d 	lui	t0,0x800d
bfc0730c:	3508bbb8 	ori	t0,t0,0xbbb8
bfc07310:	2403ff95 	li	v1,-107
bfc07314:	ad093960 	sw	t1,14688(t0)
bfc07318:	25040004 	addiu	a0,t0,4
bfc0731c:	2505fff8 	addiu	a1,t0,-8
bfc07320:	ac843960 	sw	a0,14688(a0)
bfc07324:	aca53960 	sw	a1,14688(a1)
bfc07328:	81023962 	lb	v0,14690(t0)
bfc0732c:	8c853960 	lw	a1,14688(a0)
bfc07330:	8ca43960 	lw	a0,14688(a1)
bfc07334:	8ca63960 	lw	a2,14688(a1)
bfc07338:	144304af 	bne	v0,v1,bfc085f8 <inst_error>
bfc0733c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:66
bfc07340:	3c096c9c 	lui	t1,0x6c9c
bfc07344:	3529aac0 	ori	t1,t1,0xaac0
bfc07348:	3c08800d 	lui	t0,0x800d
bfc0734c:	35084dc4 	ori	t0,t0,0x4dc4
bfc07350:	2403ffaa 	li	v1,-86
bfc07354:	ad092648 	sw	t1,9800(t0)
bfc07358:	25040004 	addiu	a0,t0,4
bfc0735c:	2505fff8 	addiu	a1,t0,-8
bfc07360:	ac842648 	sw	a0,9800(a0)
bfc07364:	aca52648 	sw	a1,9800(a1)
bfc07368:	81022649 	lb	v0,9801(t0)
bfc0736c:	8c852648 	lw	a1,9800(a0)
bfc07370:	8ca42648 	lw	a0,9800(a1)
bfc07374:	8ca62648 	lw	a2,9800(a1)
bfc07378:	1443049f 	bne	v0,v1,bfc085f8 <inst_error>
bfc0737c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:67
bfc07380:	3c0911e6 	lui	t1,0x11e6
bfc07384:	3529af20 	ori	t1,t1,0xaf20
bfc07388:	3c08800d 	lui	t0,0x800d
bfc0738c:	24030020 	li	v1,32
bfc07390:	3c010001 	lui	at,0x1
bfc07394:	00280821 	addu	at,at,t0
bfc07398:	ac29bb0c 	sw	t1,-17652(at)
bfc0739c:	25040004 	addiu	a0,t0,4
bfc073a0:	2505fff8 	addiu	a1,t0,-8
bfc073a4:	3c010001 	lui	at,0x1
bfc073a8:	00240821 	addu	at,at,a0
bfc073ac:	ac24bb0c 	sw	a0,-17652(at)
bfc073b0:	3c010001 	lui	at,0x1
bfc073b4:	00250821 	addu	at,at,a1
bfc073b8:	ac25bb0c 	sw	a1,-17652(at)
bfc073bc:	3c020001 	lui	v0,0x1
bfc073c0:	00481021 	addu	v0,v0,t0
bfc073c4:	8042bb0c 	lb	v0,-17652(v0)
bfc073c8:	3c050001 	lui	a1,0x1
bfc073cc:	00a42821 	addu	a1,a1,a0
bfc073d0:	8ca5bb0c 	lw	a1,-17652(a1)
bfc073d4:	3c040001 	lui	a0,0x1
bfc073d8:	00852021 	addu	a0,a0,a1
bfc073dc:	8c84bb0c 	lw	a0,-17652(a0)
bfc073e0:	3c060001 	lui	a2,0x1
bfc073e4:	00c53021 	addu	a2,a2,a1
bfc073e8:	8cc6bb0c 	lw	a2,-17652(a2)
bfc073ec:	14430482 	bne	v0,v1,bfc085f8 <inst_error>
bfc073f0:	00000000 	nop
/home/csy/func/inst/n59_lb.S:68
bfc073f4:	3c098799 	lui	t1,0x8799
bfc073f8:	35297498 	ori	t1,t1,0x7498
bfc073fc:	3c08800d 	lui	t0,0x800d
bfc07400:	2403ff98 	li	v1,-104
bfc07404:	ad090b00 	sw	t1,2816(t0)
bfc07408:	25040004 	addiu	a0,t0,4
bfc0740c:	2505fff8 	addiu	a1,t0,-8
bfc07410:	ac840b00 	sw	a0,2816(a0)
bfc07414:	aca50b00 	sw	a1,2816(a1)
bfc07418:	81020b00 	lb	v0,2816(t0)
bfc0741c:	8c850b00 	lw	a1,2816(a0)
bfc07420:	8ca40b00 	lw	a0,2816(a1)
bfc07424:	8ca60b00 	lw	a2,2816(a1)
bfc07428:	14430473 	bne	v0,v1,bfc085f8 <inst_error>
bfc0742c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:69
bfc07430:	3c0915ab 	lui	t1,0x15ab
bfc07434:	3529b120 	ori	t1,t1,0xb120
bfc07438:	3c08800d 	lui	t0,0x800d
bfc0743c:	24030020 	li	v1,32
bfc07440:	3c010001 	lui	at,0x1
bfc07444:	00280821 	addu	at,at,t0
bfc07448:	ac29b278 	sw	t1,-19848(at)
bfc0744c:	25040004 	addiu	a0,t0,4
bfc07450:	2505fff8 	addiu	a1,t0,-8
bfc07454:	3c010001 	lui	at,0x1
bfc07458:	00240821 	addu	at,at,a0
bfc0745c:	ac24b278 	sw	a0,-19848(at)
bfc07460:	3c010001 	lui	at,0x1
bfc07464:	00250821 	addu	at,at,a1
bfc07468:	ac25b278 	sw	a1,-19848(at)
bfc0746c:	3c020001 	lui	v0,0x1
bfc07470:	00481021 	addu	v0,v0,t0
bfc07474:	8042b278 	lb	v0,-19848(v0)
bfc07478:	3c050001 	lui	a1,0x1
bfc0747c:	00a42821 	addu	a1,a1,a0
bfc07480:	8ca5b278 	lw	a1,-19848(a1)
bfc07484:	3c040001 	lui	a0,0x1
bfc07488:	00852021 	addu	a0,a0,a1
bfc0748c:	8c84b278 	lw	a0,-19848(a0)
bfc07490:	3c060001 	lui	a2,0x1
bfc07494:	00c53021 	addu	a2,a2,a1
bfc07498:	8cc6b278 	lw	a2,-19848(a2)
bfc0749c:	14430456 	bne	v0,v1,bfc085f8 <inst_error>
bfc074a0:	00000000 	nop
/home/csy/func/inst/n59_lb.S:70
bfc074a4:	3c09833d 	lui	t1,0x833d
bfc074a8:	3529d7d0 	ori	t1,t1,0xd7d0
bfc074ac:	3c08800d 	lui	t0,0x800d
bfc074b0:	2403ffd0 	li	v1,-48
bfc074b4:	3c010001 	lui	at,0x1
bfc074b8:	00280821 	addu	at,at,t0
bfc074bc:	ac29c380 	sw	t1,-15488(at)
bfc074c0:	25040004 	addiu	a0,t0,4
bfc074c4:	2505fff8 	addiu	a1,t0,-8
bfc074c8:	3c010001 	lui	at,0x1
bfc074cc:	00240821 	addu	at,at,a0
bfc074d0:	ac24c380 	sw	a0,-15488(at)
bfc074d4:	3c010001 	lui	at,0x1
bfc074d8:	00250821 	addu	at,at,a1
bfc074dc:	ac25c380 	sw	a1,-15488(at)
bfc074e0:	3c020001 	lui	v0,0x1
bfc074e4:	00481021 	addu	v0,v0,t0
bfc074e8:	8042c380 	lb	v0,-15488(v0)
bfc074ec:	3c050001 	lui	a1,0x1
bfc074f0:	00a42821 	addu	a1,a1,a0
bfc074f4:	8ca5c380 	lw	a1,-15488(a1)
bfc074f8:	3c040001 	lui	a0,0x1
bfc074fc:	00852021 	addu	a0,a0,a1
bfc07500:	8c84c380 	lw	a0,-15488(a0)
bfc07504:	3c060001 	lui	a2,0x1
bfc07508:	00c53021 	addu	a2,a2,a1
bfc0750c:	8cc6c380 	lw	a2,-15488(a2)
bfc07510:	14430439 	bne	v0,v1,bfc085f8 <inst_error>
bfc07514:	00000000 	nop
/home/csy/func/inst/n59_lb.S:71
bfc07518:	3c097f44 	lui	t1,0x7f44
bfc0751c:	3529e290 	ori	t1,t1,0xe290
bfc07520:	3c08800d 	lui	t0,0x800d
bfc07524:	2403ff90 	li	v1,-112
bfc07528:	ad0911d0 	sw	t1,4560(t0)
bfc0752c:	25040004 	addiu	a0,t0,4
bfc07530:	2505fff8 	addiu	a1,t0,-8
bfc07534:	ac8411d0 	sw	a0,4560(a0)
bfc07538:	aca511d0 	sw	a1,4560(a1)
bfc0753c:	810211d0 	lb	v0,4560(t0)
bfc07540:	8c8511d0 	lw	a1,4560(a0)
bfc07544:	8ca411d0 	lw	a0,4560(a1)
bfc07548:	8ca611d0 	lw	a2,4560(a1)
bfc0754c:	1443042a 	bne	v0,v1,bfc085f8 <inst_error>
bfc07550:	00000000 	nop
/home/csy/func/inst/n59_lb.S:72
bfc07554:	3c09992d 	lui	t1,0x992d
bfc07558:	3529268f 	ori	t1,t1,0x268f
bfc0755c:	3c08800d 	lui	t0,0x800d
bfc07560:	2403ff99 	li	v1,-103
bfc07564:	ad097b2c 	sw	t1,31532(t0)
bfc07568:	25040004 	addiu	a0,t0,4
bfc0756c:	2505fff8 	addiu	a1,t0,-8
bfc07570:	ac847b2c 	sw	a0,31532(a0)
bfc07574:	aca57b2c 	sw	a1,31532(a1)
bfc07578:	81027b2f 	lb	v0,31535(t0)
bfc0757c:	8c857b2c 	lw	a1,31532(a0)
bfc07580:	8ca47b2c 	lw	a0,31532(a1)
bfc07584:	8ca67b2c 	lw	a2,31532(a1)
bfc07588:	1443041b 	bne	v0,v1,bfc085f8 <inst_error>
bfc0758c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:73
bfc07590:	3c091599 	lui	t1,0x1599
bfc07594:	35296bf7 	ori	t1,t1,0x6bf7
bfc07598:	3c08800d 	lui	t0,0x800d
bfc0759c:	2403ff99 	li	v1,-103
bfc075a0:	ad093488 	sw	t1,13448(t0)
bfc075a4:	25040004 	addiu	a0,t0,4
bfc075a8:	2505fff8 	addiu	a1,t0,-8
bfc075ac:	ac843488 	sw	a0,13448(a0)
bfc075b0:	aca53488 	sw	a1,13448(a1)
bfc075b4:	8102348a 	lb	v0,13450(t0)
bfc075b8:	8c853488 	lw	a1,13448(a0)
bfc075bc:	8ca43488 	lw	a0,13448(a1)
bfc075c0:	8ca63488 	lw	a2,13448(a1)
bfc075c4:	1443040c 	bne	v0,v1,bfc085f8 <inst_error>
bfc075c8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:74
bfc075cc:	3c092da0 	lui	t1,0x2da0
bfc075d0:	35292d90 	ori	t1,t1,0x2d90
bfc075d4:	3c08800d 	lui	t0,0x800d
bfc075d8:	2403ff90 	li	v1,-112
bfc075dc:	ad095c10 	sw	t1,23568(t0)
bfc075e0:	25040004 	addiu	a0,t0,4
bfc075e4:	2505fff8 	addiu	a1,t0,-8
bfc075e8:	ac845c10 	sw	a0,23568(a0)
bfc075ec:	aca55c10 	sw	a1,23568(a1)
bfc075f0:	81025c10 	lb	v0,23568(t0)
bfc075f4:	8c855c10 	lw	a1,23568(a0)
bfc075f8:	8ca45c10 	lw	a0,23568(a1)
bfc075fc:	8ca65c10 	lw	a2,23568(a1)
bfc07600:	144303fd 	bne	v0,v1,bfc085f8 <inst_error>
bfc07604:	00000000 	nop
/home/csy/func/inst/n59_lb.S:75
bfc07608:	3c0924da 	lui	t1,0x24da
bfc0760c:	3529c600 	ori	t1,t1,0xc600
bfc07610:	3c08800d 	lui	t0,0x800d
bfc07614:	2403ffda 	li	v1,-38
bfc07618:	ad0970d8 	sw	t1,28888(t0)
bfc0761c:	25040004 	addiu	a0,t0,4
bfc07620:	2505fff8 	addiu	a1,t0,-8
bfc07624:	ac8470d8 	sw	a0,28888(a0)
bfc07628:	aca570d8 	sw	a1,28888(a1)
bfc0762c:	810270da 	lb	v0,28890(t0)
bfc07630:	8c8570d8 	lw	a1,28888(a0)
bfc07634:	8ca470d8 	lw	a0,28888(a1)
bfc07638:	8ca670d8 	lw	a2,28888(a1)
bfc0763c:	144303ee 	bne	v0,v1,bfc085f8 <inst_error>
bfc07640:	00000000 	nop
/home/csy/func/inst/n59_lb.S:76
bfc07644:	3c09c59c 	lui	t1,0xc59c
bfc07648:	3529d73c 	ori	t1,t1,0xd73c
bfc0764c:	3c08800d 	lui	t0,0x800d
bfc07650:	2403003c 	li	v1,60
bfc07654:	ad095fd8 	sw	t1,24536(t0)
bfc07658:	25040004 	addiu	a0,t0,4
bfc0765c:	2505fff8 	addiu	a1,t0,-8
bfc07660:	ac845fd8 	sw	a0,24536(a0)
bfc07664:	aca55fd8 	sw	a1,24536(a1)
bfc07668:	81025fd8 	lb	v0,24536(t0)
bfc0766c:	8c855fd8 	lw	a1,24536(a0)
bfc07670:	8ca45fd8 	lw	a0,24536(a1)
bfc07674:	8ca65fd8 	lw	a2,24536(a1)
bfc07678:	144303df 	bne	v0,v1,bfc085f8 <inst_error>
bfc0767c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:77
bfc07680:	3c09994a 	lui	t1,0x994a
bfc07684:	35297300 	ori	t1,t1,0x7300
bfc07688:	3c08800d 	lui	t0,0x800d
bfc0768c:	2403004a 	li	v1,74
bfc07690:	ad0972c8 	sw	t1,29384(t0)
bfc07694:	25040004 	addiu	a0,t0,4
bfc07698:	2505fff8 	addiu	a1,t0,-8
bfc0769c:	ac8472c8 	sw	a0,29384(a0)
bfc076a0:	aca572c8 	sw	a1,29384(a1)
bfc076a4:	810272ca 	lb	v0,29386(t0)
bfc076a8:	8c8572c8 	lw	a1,29384(a0)
bfc076ac:	8ca472c8 	lw	a0,29384(a1)
bfc076b0:	8ca672c8 	lw	a2,29384(a1)
bfc076b4:	144303d0 	bne	v0,v1,bfc085f8 <inst_error>
bfc076b8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:78
bfc076bc:	3c097e40 	lui	t1,0x7e40
bfc076c0:	352951cd 	ori	t1,t1,0x51cd
bfc076c4:	3c08800d 	lui	t0,0x800d
bfc076c8:	24030040 	li	v1,64
bfc076cc:	3c010001 	lui	at,0x1
bfc076d0:	00280821 	addu	at,at,t0
bfc076d4:	ac29acd8 	sw	t1,-21288(at)
bfc076d8:	25040004 	addiu	a0,t0,4
bfc076dc:	2505fff8 	addiu	a1,t0,-8
bfc076e0:	3c010001 	lui	at,0x1
bfc076e4:	00240821 	addu	at,at,a0
bfc076e8:	ac24acd8 	sw	a0,-21288(at)
bfc076ec:	3c010001 	lui	at,0x1
bfc076f0:	00250821 	addu	at,at,a1
bfc076f4:	ac25acd8 	sw	a1,-21288(at)
bfc076f8:	3c020001 	lui	v0,0x1
bfc076fc:	00481021 	addu	v0,v0,t0
bfc07700:	8042acda 	lb	v0,-21286(v0)
bfc07704:	3c050001 	lui	a1,0x1
bfc07708:	00a42821 	addu	a1,a1,a0
bfc0770c:	8ca5acd8 	lw	a1,-21288(a1)
bfc07710:	3c040001 	lui	a0,0x1
bfc07714:	00852021 	addu	a0,a0,a1
bfc07718:	8c84acd8 	lw	a0,-21288(a0)
bfc0771c:	3c060001 	lui	a2,0x1
bfc07720:	00c53021 	addu	a2,a2,a1
bfc07724:	8cc6acd8 	lw	a2,-21288(a2)
bfc07728:	144303b3 	bne	v0,v1,bfc085f8 <inst_error>
bfc0772c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:79
bfc07730:	3c09ba9f 	lui	t1,0xba9f
bfc07734:	3529b840 	ori	t1,t1,0xb840
bfc07738:	3c08800d 	lui	t0,0x800d
bfc0773c:	24030040 	li	v1,64
bfc07740:	ad096b8c 	sw	t1,27532(t0)
bfc07744:	25040004 	addiu	a0,t0,4
bfc07748:	2505fff8 	addiu	a1,t0,-8
bfc0774c:	ac846b8c 	sw	a0,27532(a0)
bfc07750:	aca56b8c 	sw	a1,27532(a1)
bfc07754:	81026b8c 	lb	v0,27532(t0)
bfc07758:	8c856b8c 	lw	a1,27532(a0)
bfc0775c:	8ca46b8c 	lw	a0,27532(a1)
bfc07760:	8ca66b8c 	lw	a2,27532(a1)
bfc07764:	144303a4 	bne	v0,v1,bfc085f8 <inst_error>
bfc07768:	00000000 	nop
/home/csy/func/inst/n59_lb.S:80
bfc0776c:	3c097d10 	lui	t1,0x7d10
bfc07770:	35299500 	ori	t1,t1,0x9500
bfc07774:	3c08800d 	lui	t0,0x800d
bfc07778:	2403007d 	li	v1,125
bfc0777c:	3c010001 	lui	at,0x1
bfc07780:	00280821 	addu	at,at,t0
bfc07784:	ac29d8f4 	sw	t1,-9996(at)
bfc07788:	25040004 	addiu	a0,t0,4
bfc0778c:	2505fff8 	addiu	a1,t0,-8
bfc07790:	3c010001 	lui	at,0x1
bfc07794:	00240821 	addu	at,at,a0
bfc07798:	ac24d8f4 	sw	a0,-9996(at)
bfc0779c:	3c010001 	lui	at,0x1
bfc077a0:	00250821 	addu	at,at,a1
bfc077a4:	ac25d8f4 	sw	a1,-9996(at)
bfc077a8:	3c020001 	lui	v0,0x1
bfc077ac:	00481021 	addu	v0,v0,t0
bfc077b0:	8042d8f7 	lb	v0,-9993(v0)
bfc077b4:	3c050001 	lui	a1,0x1
bfc077b8:	00a42821 	addu	a1,a1,a0
bfc077bc:	8ca5d8f4 	lw	a1,-9996(a1)
bfc077c0:	3c040001 	lui	a0,0x1
bfc077c4:	00852021 	addu	a0,a0,a1
bfc077c8:	8c84d8f4 	lw	a0,-9996(a0)
bfc077cc:	3c060001 	lui	a2,0x1
bfc077d0:	00c53021 	addu	a2,a2,a1
bfc077d4:	8cc6d8f4 	lw	a2,-9996(a2)
bfc077d8:	14430387 	bne	v0,v1,bfc085f8 <inst_error>
bfc077dc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:81
bfc077e0:	3c09da70 	lui	t1,0xda70
bfc077e4:	35299060 	ori	t1,t1,0x9060
bfc077e8:	3c08800d 	lui	t0,0x800d
bfc077ec:	24030060 	li	v1,96
bfc077f0:	3c010001 	lui	at,0x1
bfc077f4:	00280821 	addu	at,at,t0
bfc077f8:	ac298780 	sw	t1,-30848(at)
bfc077fc:	25040004 	addiu	a0,t0,4
bfc07800:	2505fff8 	addiu	a1,t0,-8
bfc07804:	3c010001 	lui	at,0x1
bfc07808:	00240821 	addu	at,at,a0
bfc0780c:	ac248780 	sw	a0,-30848(at)
bfc07810:	3c010001 	lui	at,0x1
bfc07814:	00250821 	addu	at,at,a1
bfc07818:	ac258780 	sw	a1,-30848(at)
bfc0781c:	3c020001 	lui	v0,0x1
bfc07820:	00481021 	addu	v0,v0,t0
bfc07824:	80428780 	lb	v0,-30848(v0)
bfc07828:	3c050001 	lui	a1,0x1
bfc0782c:	00a42821 	addu	a1,a1,a0
bfc07830:	8ca58780 	lw	a1,-30848(a1)
bfc07834:	3c040001 	lui	a0,0x1
bfc07838:	00852021 	addu	a0,a0,a1
bfc0783c:	8c848780 	lw	a0,-30848(a0)
bfc07840:	3c060001 	lui	a2,0x1
bfc07844:	00c53021 	addu	a2,a2,a1
bfc07848:	8cc68780 	lw	a2,-30848(a2)
bfc0784c:	1443036a 	bne	v0,v1,bfc085f8 <inst_error>
bfc07850:	00000000 	nop
/home/csy/func/inst/n59_lb.S:82
bfc07854:	3c09a59f 	lui	t1,0xa59f
bfc07858:	35299eb8 	ori	t1,t1,0x9eb8
bfc0785c:	3c08800d 	lui	t0,0x800d
bfc07860:	2403ffb8 	li	v1,-72
bfc07864:	ad095590 	sw	t1,21904(t0)
bfc07868:	25040004 	addiu	a0,t0,4
bfc0786c:	2505fff8 	addiu	a1,t0,-8
bfc07870:	ac845590 	sw	a0,21904(a0)
bfc07874:	aca55590 	sw	a1,21904(a1)
bfc07878:	81025590 	lb	v0,21904(t0)
bfc0787c:	8c855590 	lw	a1,21904(a0)
bfc07880:	8ca45590 	lw	a0,21904(a1)
bfc07884:	8ca65590 	lw	a2,21904(a1)
bfc07888:	1443035b 	bne	v0,v1,bfc085f8 <inst_error>
bfc0788c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:83
bfc07890:	3c091b9b 	lui	t1,0x1b9b
bfc07894:	35299d20 	ori	t1,t1,0x9d20
bfc07898:	3c08800d 	lui	t0,0x800d
bfc0789c:	24030020 	li	v1,32
bfc078a0:	3c010001 	lui	at,0x1
bfc078a4:	00280821 	addu	at,at,t0
bfc078a8:	ac29b958 	sw	t1,-18088(at)
bfc078ac:	25040004 	addiu	a0,t0,4
bfc078b0:	2505fff8 	addiu	a1,t0,-8
bfc078b4:	3c010001 	lui	at,0x1
bfc078b8:	00240821 	addu	at,at,a0
bfc078bc:	ac24b958 	sw	a0,-18088(at)
bfc078c0:	3c010001 	lui	at,0x1
bfc078c4:	00250821 	addu	at,at,a1
bfc078c8:	ac25b958 	sw	a1,-18088(at)
bfc078cc:	3c020001 	lui	v0,0x1
bfc078d0:	00481021 	addu	v0,v0,t0
bfc078d4:	8042b958 	lb	v0,-18088(v0)
bfc078d8:	3c050001 	lui	a1,0x1
bfc078dc:	00a42821 	addu	a1,a1,a0
bfc078e0:	8ca5b958 	lw	a1,-18088(a1)
bfc078e4:	3c040001 	lui	a0,0x1
bfc078e8:	00852021 	addu	a0,a0,a1
bfc078ec:	8c84b958 	lw	a0,-18088(a0)
bfc078f0:	3c060001 	lui	a2,0x1
bfc078f4:	00c53021 	addu	a2,a2,a1
bfc078f8:	8cc6b958 	lw	a2,-18088(a2)
bfc078fc:	1443033e 	bne	v0,v1,bfc085f8 <inst_error>
bfc07900:	00000000 	nop
/home/csy/func/inst/n59_lb.S:84
bfc07904:	3c09e945 	lui	t1,0xe945
bfc07908:	3529cba3 	ori	t1,t1,0xcba3
bfc0790c:	3c08800d 	lui	t0,0x800d
bfc07910:	2403ffa3 	li	v1,-93
bfc07914:	3c010001 	lui	at,0x1
bfc07918:	00280821 	addu	at,at,t0
bfc0791c:	ac29ebbc 	sw	t1,-5188(at)
bfc07920:	25040004 	addiu	a0,t0,4
bfc07924:	2505fff8 	addiu	a1,t0,-8
bfc07928:	3c010001 	lui	at,0x1
bfc0792c:	00240821 	addu	at,at,a0
bfc07930:	ac24ebbc 	sw	a0,-5188(at)
bfc07934:	3c010001 	lui	at,0x1
bfc07938:	00250821 	addu	at,at,a1
bfc0793c:	ac25ebbc 	sw	a1,-5188(at)
bfc07940:	3c020001 	lui	v0,0x1
bfc07944:	00481021 	addu	v0,v0,t0
bfc07948:	8042ebbc 	lb	v0,-5188(v0)
bfc0794c:	3c050001 	lui	a1,0x1
bfc07950:	00a42821 	addu	a1,a1,a0
bfc07954:	8ca5ebbc 	lw	a1,-5188(a1)
bfc07958:	3c040001 	lui	a0,0x1
bfc0795c:	00852021 	addu	a0,a0,a1
bfc07960:	8c84ebbc 	lw	a0,-5188(a0)
bfc07964:	3c060001 	lui	a2,0x1
bfc07968:	00c53021 	addu	a2,a2,a1
bfc0796c:	8cc6ebbc 	lw	a2,-5188(a2)
bfc07970:	14430321 	bne	v0,v1,bfc085f8 <inst_error>
bfc07974:	00000000 	nop
/home/csy/func/inst/n59_lb.S:85
bfc07978:	3c096122 	lui	t1,0x6122
bfc0797c:	3529f40e 	ori	t1,t1,0xf40e
bfc07980:	3c08800d 	lui	t0,0x800d
bfc07984:	24030022 	li	v1,34
bfc07988:	3c010001 	lui	at,0x1
bfc0798c:	00280821 	addu	at,at,t0
bfc07990:	ac29e378 	sw	t1,-7304(at)
bfc07994:	25040004 	addiu	a0,t0,4
bfc07998:	2505fff8 	addiu	a1,t0,-8
bfc0799c:	3c010001 	lui	at,0x1
bfc079a0:	00240821 	addu	at,at,a0
bfc079a4:	ac24e378 	sw	a0,-7304(at)
bfc079a8:	3c010001 	lui	at,0x1
bfc079ac:	00250821 	addu	at,at,a1
bfc079b0:	ac25e378 	sw	a1,-7304(at)
bfc079b4:	3c020001 	lui	v0,0x1
bfc079b8:	00481021 	addu	v0,v0,t0
bfc079bc:	8042e37a 	lb	v0,-7302(v0)
bfc079c0:	3c050001 	lui	a1,0x1
bfc079c4:	00a42821 	addu	a1,a1,a0
bfc079c8:	8ca5e378 	lw	a1,-7304(a1)
bfc079cc:	3c040001 	lui	a0,0x1
bfc079d0:	00852021 	addu	a0,a0,a1
bfc079d4:	8c84e378 	lw	a0,-7304(a0)
bfc079d8:	3c060001 	lui	a2,0x1
bfc079dc:	00c53021 	addu	a2,a2,a1
bfc079e0:	8cc6e378 	lw	a2,-7304(a2)
bfc079e4:	14430304 	bne	v0,v1,bfc085f8 <inst_error>
bfc079e8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:86
bfc079ec:	3c09066c 	lui	t1,0x66c
bfc079f0:	3529dae8 	ori	t1,t1,0xdae8
bfc079f4:	3c08800d 	lui	t0,0x800d
bfc079f8:	2403006c 	li	v1,108
bfc079fc:	ad095d14 	sw	t1,23828(t0)
bfc07a00:	25040004 	addiu	a0,t0,4
bfc07a04:	2505fff8 	addiu	a1,t0,-8
bfc07a08:	ac845d14 	sw	a0,23828(a0)
bfc07a0c:	aca55d14 	sw	a1,23828(a1)
bfc07a10:	81025d16 	lb	v0,23830(t0)
bfc07a14:	8c855d14 	lw	a1,23828(a0)
bfc07a18:	8ca45d14 	lw	a0,23828(a1)
bfc07a1c:	8ca65d14 	lw	a2,23828(a1)
bfc07a20:	144302f5 	bne	v0,v1,bfc085f8 <inst_error>
bfc07a24:	00000000 	nop
/home/csy/func/inst/n59_lb.S:87
bfc07a28:	3c0931ce 	lui	t1,0x31ce
bfc07a2c:	35294d3c 	ori	t1,t1,0x4d3c
bfc07a30:	3c08800d 	lui	t0,0x800d
bfc07a34:	2403003c 	li	v1,60
bfc07a38:	3c010001 	lui	at,0x1
bfc07a3c:	00280821 	addu	at,at,t0
bfc07a40:	ac29df28 	sw	t1,-8408(at)
bfc07a44:	25040004 	addiu	a0,t0,4
bfc07a48:	2505fff8 	addiu	a1,t0,-8
bfc07a4c:	3c010001 	lui	at,0x1
bfc07a50:	00240821 	addu	at,at,a0
bfc07a54:	ac24df28 	sw	a0,-8408(at)
bfc07a58:	3c010001 	lui	at,0x1
bfc07a5c:	00250821 	addu	at,at,a1
bfc07a60:	ac25df28 	sw	a1,-8408(at)
bfc07a64:	3c020001 	lui	v0,0x1
bfc07a68:	00481021 	addu	v0,v0,t0
bfc07a6c:	8042df28 	lb	v0,-8408(v0)
bfc07a70:	3c050001 	lui	a1,0x1
bfc07a74:	00a42821 	addu	a1,a1,a0
bfc07a78:	8ca5df28 	lw	a1,-8408(a1)
bfc07a7c:	3c040001 	lui	a0,0x1
bfc07a80:	00852021 	addu	a0,a0,a1
bfc07a84:	8c84df28 	lw	a0,-8408(a0)
bfc07a88:	3c060001 	lui	a2,0x1
bfc07a8c:	00c53021 	addu	a2,a2,a1
bfc07a90:	8cc6df28 	lw	a2,-8408(a2)
bfc07a94:	144302d8 	bne	v0,v1,bfc085f8 <inst_error>
bfc07a98:	00000000 	nop
/home/csy/func/inst/n59_lb.S:88
bfc07a9c:	3c09e95b 	lui	t1,0xe95b
bfc07aa0:	3529473a 	ori	t1,t1,0x473a
bfc07aa4:	3c08800d 	lui	t0,0x800d
bfc07aa8:	2403003a 	li	v1,58
bfc07aac:	3c010001 	lui	at,0x1
bfc07ab0:	00280821 	addu	at,at,t0
bfc07ab4:	ac299c80 	sw	t1,-25472(at)
bfc07ab8:	25040004 	addiu	a0,t0,4
bfc07abc:	2505fff8 	addiu	a1,t0,-8
bfc07ac0:	3c010001 	lui	at,0x1
bfc07ac4:	00240821 	addu	at,at,a0
bfc07ac8:	ac249c80 	sw	a0,-25472(at)
bfc07acc:	3c010001 	lui	at,0x1
bfc07ad0:	00250821 	addu	at,at,a1
bfc07ad4:	ac259c80 	sw	a1,-25472(at)
bfc07ad8:	3c020001 	lui	v0,0x1
bfc07adc:	00481021 	addu	v0,v0,t0
bfc07ae0:	80429c80 	lb	v0,-25472(v0)
bfc07ae4:	3c050001 	lui	a1,0x1
bfc07ae8:	00a42821 	addu	a1,a1,a0
bfc07aec:	8ca59c80 	lw	a1,-25472(a1)
bfc07af0:	3c040001 	lui	a0,0x1
bfc07af4:	00852021 	addu	a0,a0,a1
bfc07af8:	8c849c80 	lw	a0,-25472(a0)
bfc07afc:	3c060001 	lui	a2,0x1
bfc07b00:	00c53021 	addu	a2,a2,a1
bfc07b04:	8cc69c80 	lw	a2,-25472(a2)
bfc07b08:	144302bb 	bne	v0,v1,bfc085f8 <inst_error>
bfc07b0c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:89
bfc07b10:	3c0927a2 	lui	t1,0x27a2
bfc07b14:	3529d01c 	ori	t1,t1,0xd01c
bfc07b18:	3c08800d 	lui	t0,0x800d
bfc07b1c:	24030027 	li	v1,39
bfc07b20:	ad094d24 	sw	t1,19748(t0)
bfc07b24:	25040004 	addiu	a0,t0,4
bfc07b28:	2505fff8 	addiu	a1,t0,-8
bfc07b2c:	ac844d24 	sw	a0,19748(a0)
bfc07b30:	aca54d24 	sw	a1,19748(a1)
bfc07b34:	81024d27 	lb	v0,19751(t0)
bfc07b38:	8c854d24 	lw	a1,19748(a0)
bfc07b3c:	8ca44d24 	lw	a0,19748(a1)
bfc07b40:	8ca64d24 	lw	a2,19748(a1)
bfc07b44:	144302ac 	bne	v0,v1,bfc085f8 <inst_error>
bfc07b48:	00000000 	nop
/home/csy/func/inst/n59_lb.S:90
bfc07b4c:	3c09d3db 	lui	t1,0xd3db
bfc07b50:	3529cfc8 	ori	t1,t1,0xcfc8
bfc07b54:	3c08800d 	lui	t0,0x800d
bfc07b58:	2403ffdb 	li	v1,-37
bfc07b5c:	3c010001 	lui	at,0x1
bfc07b60:	00280821 	addu	at,at,t0
bfc07b64:	ac29f20c 	sw	t1,-3572(at)
bfc07b68:	25040004 	addiu	a0,t0,4
bfc07b6c:	2505fff8 	addiu	a1,t0,-8
bfc07b70:	3c010001 	lui	at,0x1
bfc07b74:	00240821 	addu	at,at,a0
bfc07b78:	ac24f20c 	sw	a0,-3572(at)
bfc07b7c:	3c010001 	lui	at,0x1
bfc07b80:	00250821 	addu	at,at,a1
bfc07b84:	ac25f20c 	sw	a1,-3572(at)
bfc07b88:	3c020001 	lui	v0,0x1
bfc07b8c:	00481021 	addu	v0,v0,t0
bfc07b90:	8042f20e 	lb	v0,-3570(v0)
bfc07b94:	3c050001 	lui	a1,0x1
bfc07b98:	00a42821 	addu	a1,a1,a0
bfc07b9c:	8ca5f20c 	lw	a1,-3572(a1)
bfc07ba0:	3c040001 	lui	a0,0x1
bfc07ba4:	00852021 	addu	a0,a0,a1
bfc07ba8:	8c84f20c 	lw	a0,-3572(a0)
bfc07bac:	3c060001 	lui	a2,0x1
bfc07bb0:	00c53021 	addu	a2,a2,a1
bfc07bb4:	8cc6f20c 	lw	a2,-3572(a2)
bfc07bb8:	1443028f 	bne	v0,v1,bfc085f8 <inst_error>
bfc07bbc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:91
bfc07bc0:	3c09604f 	lui	t1,0x604f
bfc07bc4:	3529bdca 	ori	t1,t1,0xbdca
bfc07bc8:	3c08800d 	lui	t0,0x800d
bfc07bcc:	2403ffca 	li	v1,-54
bfc07bd0:	3c010001 	lui	at,0x1
bfc07bd4:	00280821 	addu	at,at,t0
bfc07bd8:	ac29c604 	sw	t1,-14844(at)
bfc07bdc:	25040004 	addiu	a0,t0,4
bfc07be0:	2505fff8 	addiu	a1,t0,-8
bfc07be4:	3c010001 	lui	at,0x1
bfc07be8:	00240821 	addu	at,at,a0
bfc07bec:	ac24c604 	sw	a0,-14844(at)
bfc07bf0:	3c010001 	lui	at,0x1
bfc07bf4:	00250821 	addu	at,at,a1
bfc07bf8:	ac25c604 	sw	a1,-14844(at)
bfc07bfc:	3c020001 	lui	v0,0x1
bfc07c00:	00481021 	addu	v0,v0,t0
bfc07c04:	8042c604 	lb	v0,-14844(v0)
bfc07c08:	3c050001 	lui	a1,0x1
bfc07c0c:	00a42821 	addu	a1,a1,a0
bfc07c10:	8ca5c604 	lw	a1,-14844(a1)
bfc07c14:	3c040001 	lui	a0,0x1
bfc07c18:	00852021 	addu	a0,a0,a1
bfc07c1c:	8c84c604 	lw	a0,-14844(a0)
bfc07c20:	3c060001 	lui	a2,0x1
bfc07c24:	00c53021 	addu	a2,a2,a1
bfc07c28:	8cc6c604 	lw	a2,-14844(a2)
bfc07c2c:	14430272 	bne	v0,v1,bfc085f8 <inst_error>
bfc07c30:	00000000 	nop
/home/csy/func/inst/n59_lb.S:92
bfc07c34:	3c09d319 	lui	t1,0xd319
bfc07c38:	3529d84e 	ori	t1,t1,0xd84e
bfc07c3c:	3c08800d 	lui	t0,0x800d
bfc07c40:	2403004e 	li	v1,78
bfc07c44:	ad094a74 	sw	t1,19060(t0)
bfc07c48:	25040004 	addiu	a0,t0,4
bfc07c4c:	2505fff8 	addiu	a1,t0,-8
bfc07c50:	ac844a74 	sw	a0,19060(a0)
bfc07c54:	aca54a74 	sw	a1,19060(a1)
bfc07c58:	81024a74 	lb	v0,19060(t0)
bfc07c5c:	8c854a74 	lw	a1,19060(a0)
bfc07c60:	8ca44a74 	lw	a0,19060(a1)
bfc07c64:	8ca64a74 	lw	a2,19060(a1)
bfc07c68:	14430263 	bne	v0,v1,bfc085f8 <inst_error>
bfc07c6c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:93
bfc07c70:	3c096506 	lui	t1,0x6506
bfc07c74:	35292d8d 	ori	t1,t1,0x2d8d
bfc07c78:	3c08800d 	lui	t0,0x800d
bfc07c7c:	2403ff8d 	li	v1,-115
bfc07c80:	ad0910bc 	sw	t1,4284(t0)
bfc07c84:	25040004 	addiu	a0,t0,4
bfc07c88:	2505fff8 	addiu	a1,t0,-8
bfc07c8c:	ac8410bc 	sw	a0,4284(a0)
bfc07c90:	aca510bc 	sw	a1,4284(a1)
bfc07c94:	810210bc 	lb	v0,4284(t0)
bfc07c98:	8c8510bc 	lw	a1,4284(a0)
bfc07c9c:	8ca410bc 	lw	a0,4284(a1)
bfc07ca0:	8ca610bc 	lw	a2,4284(a1)
bfc07ca4:	14430254 	bne	v0,v1,bfc085f8 <inst_error>
bfc07ca8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:94
bfc07cac:	3c096b30 	lui	t1,0x6b30
bfc07cb0:	3529c710 	ori	t1,t1,0xc710
bfc07cb4:	3c08800d 	lui	t0,0x800d
bfc07cb8:	24030030 	li	v1,48
bfc07cbc:	3c010001 	lui	at,0x1
bfc07cc0:	00280821 	addu	at,at,t0
bfc07cc4:	ac29eee0 	sw	t1,-4384(at)
bfc07cc8:	25040004 	addiu	a0,t0,4
bfc07ccc:	2505fff8 	addiu	a1,t0,-8
bfc07cd0:	3c010001 	lui	at,0x1
bfc07cd4:	00240821 	addu	at,at,a0
bfc07cd8:	ac24eee0 	sw	a0,-4384(at)
bfc07cdc:	3c010001 	lui	at,0x1
bfc07ce0:	00250821 	addu	at,at,a1
bfc07ce4:	ac25eee0 	sw	a1,-4384(at)
bfc07ce8:	3c020001 	lui	v0,0x1
bfc07cec:	00481021 	addu	v0,v0,t0
bfc07cf0:	8042eee2 	lb	v0,-4382(v0)
bfc07cf4:	3c050001 	lui	a1,0x1
bfc07cf8:	00a42821 	addu	a1,a1,a0
bfc07cfc:	8ca5eee0 	lw	a1,-4384(a1)
bfc07d00:	3c040001 	lui	a0,0x1
bfc07d04:	00852021 	addu	a0,a0,a1
bfc07d08:	8c84eee0 	lw	a0,-4384(a0)
bfc07d0c:	3c060001 	lui	a2,0x1
bfc07d10:	00c53021 	addu	a2,a2,a1
bfc07d14:	8cc6eee0 	lw	a2,-4384(a2)
bfc07d18:	14430237 	bne	v0,v1,bfc085f8 <inst_error>
bfc07d1c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:95
bfc07d20:	3c090fa4 	lui	t1,0xfa4
bfc07d24:	35295c2f 	ori	t1,t1,0x5c2f
bfc07d28:	3c08800d 	lui	t0,0x800d
bfc07d2c:	2403ffa4 	li	v1,-92
bfc07d30:	3c010001 	lui	at,0x1
bfc07d34:	00280821 	addu	at,at,t0
bfc07d38:	ac29dd24 	sw	t1,-8924(at)
bfc07d3c:	25040004 	addiu	a0,t0,4
bfc07d40:	2505fff8 	addiu	a1,t0,-8
bfc07d44:	3c010001 	lui	at,0x1
bfc07d48:	00240821 	addu	at,at,a0
bfc07d4c:	ac24dd24 	sw	a0,-8924(at)
bfc07d50:	3c010001 	lui	at,0x1
bfc07d54:	00250821 	addu	at,at,a1
bfc07d58:	ac25dd24 	sw	a1,-8924(at)
bfc07d5c:	3c020001 	lui	v0,0x1
bfc07d60:	00481021 	addu	v0,v0,t0
bfc07d64:	8042dd26 	lb	v0,-8922(v0)
bfc07d68:	3c050001 	lui	a1,0x1
bfc07d6c:	00a42821 	addu	a1,a1,a0
bfc07d70:	8ca5dd24 	lw	a1,-8924(a1)
bfc07d74:	3c040001 	lui	a0,0x1
bfc07d78:	00852021 	addu	a0,a0,a1
bfc07d7c:	8c84dd24 	lw	a0,-8924(a0)
bfc07d80:	3c060001 	lui	a2,0x1
bfc07d84:	00c53021 	addu	a2,a2,a1
bfc07d88:	8cc6dd24 	lw	a2,-8924(a2)
bfc07d8c:	1443021a 	bne	v0,v1,bfc085f8 <inst_error>
bfc07d90:	00000000 	nop
/home/csy/func/inst/n59_lb.S:96
bfc07d94:	3c097904 	lui	t1,0x7904
bfc07d98:	3529ca38 	ori	t1,t1,0xca38
bfc07d9c:	3c08800d 	lui	t0,0x800d
bfc07da0:	24030079 	li	v1,121
bfc07da4:	ad093fd8 	sw	t1,16344(t0)
bfc07da8:	25040004 	addiu	a0,t0,4
bfc07dac:	2505fff8 	addiu	a1,t0,-8
bfc07db0:	ac843fd8 	sw	a0,16344(a0)
bfc07db4:	aca53fd8 	sw	a1,16344(a1)
bfc07db8:	81023fdb 	lb	v0,16347(t0)
bfc07dbc:	8c853fd8 	lw	a1,16344(a0)
bfc07dc0:	8ca43fd8 	lw	a0,16344(a1)
bfc07dc4:	8ca63fd8 	lw	a2,16344(a1)
bfc07dc8:	1443020b 	bne	v0,v1,bfc085f8 <inst_error>
bfc07dcc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:97
bfc07dd0:	3c094811 	lui	t1,0x4811
bfc07dd4:	35291e40 	ori	t1,t1,0x1e40
bfc07dd8:	3c08800d 	lui	t0,0x800d
bfc07ddc:	24030040 	li	v1,64
bfc07de0:	3c010001 	lui	at,0x1
bfc07de4:	00280821 	addu	at,at,t0
bfc07de8:	ac29bd34 	sw	t1,-17100(at)
bfc07dec:	25040004 	addiu	a0,t0,4
bfc07df0:	2505fff8 	addiu	a1,t0,-8
bfc07df4:	3c010001 	lui	at,0x1
bfc07df8:	00240821 	addu	at,at,a0
bfc07dfc:	ac24bd34 	sw	a0,-17100(at)
bfc07e00:	3c010001 	lui	at,0x1
bfc07e04:	00250821 	addu	at,at,a1
bfc07e08:	ac25bd34 	sw	a1,-17100(at)
bfc07e0c:	3c020001 	lui	v0,0x1
bfc07e10:	00481021 	addu	v0,v0,t0
bfc07e14:	8042bd34 	lb	v0,-17100(v0)
bfc07e18:	3c050001 	lui	a1,0x1
bfc07e1c:	00a42821 	addu	a1,a1,a0
bfc07e20:	8ca5bd34 	lw	a1,-17100(a1)
bfc07e24:	3c040001 	lui	a0,0x1
bfc07e28:	00852021 	addu	a0,a0,a1
bfc07e2c:	8c84bd34 	lw	a0,-17100(a0)
bfc07e30:	3c060001 	lui	a2,0x1
bfc07e34:	00c53021 	addu	a2,a2,a1
bfc07e38:	8cc6bd34 	lw	a2,-17100(a2)
bfc07e3c:	144301ee 	bne	v0,v1,bfc085f8 <inst_error>
bfc07e40:	00000000 	nop
/home/csy/func/inst/n59_lb.S:98
bfc07e44:	3c098b11 	lui	t1,0x8b11
bfc07e48:	35290828 	ori	t1,t1,0x828
bfc07e4c:	3c08800d 	lui	t0,0x800d
bfc07e50:	24030011 	li	v1,17
bfc07e54:	3c010001 	lui	at,0x1
bfc07e58:	00280821 	addu	at,at,t0
bfc07e5c:	ac29b4bc 	sw	t1,-19268(at)
bfc07e60:	25040004 	addiu	a0,t0,4
bfc07e64:	2505fff8 	addiu	a1,t0,-8
bfc07e68:	3c010001 	lui	at,0x1
bfc07e6c:	00240821 	addu	at,at,a0
bfc07e70:	ac24b4bc 	sw	a0,-19268(at)
bfc07e74:	3c010001 	lui	at,0x1
bfc07e78:	00250821 	addu	at,at,a1
bfc07e7c:	ac25b4bc 	sw	a1,-19268(at)
bfc07e80:	3c020001 	lui	v0,0x1
bfc07e84:	00481021 	addu	v0,v0,t0
bfc07e88:	8042b4be 	lb	v0,-19266(v0)
bfc07e8c:	3c050001 	lui	a1,0x1
bfc07e90:	00a42821 	addu	a1,a1,a0
bfc07e94:	8ca5b4bc 	lw	a1,-19268(a1)
bfc07e98:	3c040001 	lui	a0,0x1
bfc07e9c:	00852021 	addu	a0,a0,a1
bfc07ea0:	8c84b4bc 	lw	a0,-19268(a0)
bfc07ea4:	3c060001 	lui	a2,0x1
bfc07ea8:	00c53021 	addu	a2,a2,a1
bfc07eac:	8cc6b4bc 	lw	a2,-19268(a2)
bfc07eb0:	144301d1 	bne	v0,v1,bfc085f8 <inst_error>
bfc07eb4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:99
bfc07eb8:	3c09366c 	lui	t1,0x366c
bfc07ebc:	35293980 	ori	t1,t1,0x3980
bfc07ec0:	3c08800d 	lui	t0,0x800d
bfc07ec4:	2403ff80 	li	v1,-128
bfc07ec8:	3c010001 	lui	at,0x1
bfc07ecc:	00280821 	addu	at,at,t0
bfc07ed0:	ac298eb8 	sw	t1,-29000(at)
bfc07ed4:	25040004 	addiu	a0,t0,4
bfc07ed8:	2505fff8 	addiu	a1,t0,-8
bfc07edc:	3c010001 	lui	at,0x1
bfc07ee0:	00240821 	addu	at,at,a0
bfc07ee4:	ac248eb8 	sw	a0,-29000(at)
bfc07ee8:	3c010001 	lui	at,0x1
bfc07eec:	00250821 	addu	at,at,a1
bfc07ef0:	ac258eb8 	sw	a1,-29000(at)
bfc07ef4:	3c020001 	lui	v0,0x1
bfc07ef8:	00481021 	addu	v0,v0,t0
bfc07efc:	80428eb8 	lb	v0,-29000(v0)
bfc07f00:	3c050001 	lui	a1,0x1
bfc07f04:	00a42821 	addu	a1,a1,a0
bfc07f08:	8ca58eb8 	lw	a1,-29000(a1)
bfc07f0c:	3c040001 	lui	a0,0x1
bfc07f10:	00852021 	addu	a0,a0,a1
bfc07f14:	8c848eb8 	lw	a0,-29000(a0)
bfc07f18:	3c060001 	lui	a2,0x1
bfc07f1c:	00c53021 	addu	a2,a2,a1
bfc07f20:	8cc68eb8 	lw	a2,-29000(a2)
bfc07f24:	144301b4 	bne	v0,v1,bfc085f8 <inst_error>
bfc07f28:	00000000 	nop
/home/csy/func/inst/n59_lb.S:100
bfc07f2c:	3c09afa6 	lui	t1,0xafa6
bfc07f30:	35293c10 	ori	t1,t1,0x3c10
bfc07f34:	3c08800d 	lui	t0,0x800d
bfc07f38:	24030010 	li	v1,16
bfc07f3c:	ad0913e8 	sw	t1,5096(t0)
bfc07f40:	25040004 	addiu	a0,t0,4
bfc07f44:	2505fff8 	addiu	a1,t0,-8
bfc07f48:	ac8413e8 	sw	a0,5096(a0)
bfc07f4c:	aca513e8 	sw	a1,5096(a1)
bfc07f50:	810213e8 	lb	v0,5096(t0)
bfc07f54:	8c8513e8 	lw	a1,5096(a0)
bfc07f58:	8ca413e8 	lw	a0,5096(a1)
bfc07f5c:	8ca613e8 	lw	a2,5096(a1)
bfc07f60:	144301a5 	bne	v0,v1,bfc085f8 <inst_error>
bfc07f64:	00000000 	nop
/home/csy/func/inst/n59_lb.S:101
bfc07f68:	3c09305d 	lui	t1,0x305d
bfc07f6c:	352945e5 	ori	t1,t1,0x45e5
bfc07f70:	3c08800d 	lui	t0,0x800d
bfc07f74:	2403005d 	li	v1,93
bfc07f78:	3c010001 	lui	at,0x1
bfc07f7c:	00280821 	addu	at,at,t0
bfc07f80:	ac29bc3c 	sw	t1,-17348(at)
bfc07f84:	25040004 	addiu	a0,t0,4
bfc07f88:	2505fff8 	addiu	a1,t0,-8
bfc07f8c:	3c010001 	lui	at,0x1
bfc07f90:	00240821 	addu	at,at,a0
bfc07f94:	ac24bc3c 	sw	a0,-17348(at)
bfc07f98:	3c010001 	lui	at,0x1
bfc07f9c:	00250821 	addu	at,at,a1
bfc07fa0:	ac25bc3c 	sw	a1,-17348(at)
bfc07fa4:	3c020001 	lui	v0,0x1
bfc07fa8:	00481021 	addu	v0,v0,t0
bfc07fac:	8042bc3e 	lb	v0,-17346(v0)
bfc07fb0:	3c050001 	lui	a1,0x1
bfc07fb4:	00a42821 	addu	a1,a1,a0
bfc07fb8:	8ca5bc3c 	lw	a1,-17348(a1)
bfc07fbc:	3c040001 	lui	a0,0x1
bfc07fc0:	00852021 	addu	a0,a0,a1
bfc07fc4:	8c84bc3c 	lw	a0,-17348(a0)
bfc07fc8:	3c060001 	lui	a2,0x1
bfc07fcc:	00c53021 	addu	a2,a2,a1
bfc07fd0:	8cc6bc3c 	lw	a2,-17348(a2)
bfc07fd4:	14430188 	bne	v0,v1,bfc085f8 <inst_error>
bfc07fd8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:102
bfc07fdc:	3c09e165 	lui	t1,0xe165
bfc07fe0:	3529f7e0 	ori	t1,t1,0xf7e0
bfc07fe4:	3c08800d 	lui	t0,0x800d
bfc07fe8:	24030065 	li	v1,101
bfc07fec:	3c010001 	lui	at,0x1
bfc07ff0:	00280821 	addu	at,at,t0
bfc07ff4:	ac298f3c 	sw	t1,-28868(at)
bfc07ff8:	25040004 	addiu	a0,t0,4
bfc07ffc:	2505fff8 	addiu	a1,t0,-8
bfc08000:	3c010001 	lui	at,0x1
bfc08004:	00240821 	addu	at,at,a0
bfc08008:	ac248f3c 	sw	a0,-28868(at)
bfc0800c:	3c010001 	lui	at,0x1
bfc08010:	00250821 	addu	at,at,a1
bfc08014:	ac258f3c 	sw	a1,-28868(at)
bfc08018:	3c020001 	lui	v0,0x1
bfc0801c:	00481021 	addu	v0,v0,t0
bfc08020:	80428f3e 	lb	v0,-28866(v0)
bfc08024:	3c050001 	lui	a1,0x1
bfc08028:	00a42821 	addu	a1,a1,a0
bfc0802c:	8ca58f3c 	lw	a1,-28868(a1)
bfc08030:	3c040001 	lui	a0,0x1
bfc08034:	00852021 	addu	a0,a0,a1
bfc08038:	8c848f3c 	lw	a0,-28868(a0)
bfc0803c:	3c060001 	lui	a2,0x1
bfc08040:	00c53021 	addu	a2,a2,a1
bfc08044:	8cc68f3c 	lw	a2,-28868(a2)
bfc08048:	1443016b 	bne	v0,v1,bfc085f8 <inst_error>
bfc0804c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:103
bfc08050:	3c09f282 	lui	t1,0xf282
bfc08054:	352995e8 	ori	t1,t1,0x95e8
bfc08058:	3c08800d 	lui	t0,0x800d
bfc0805c:	2403ff95 	li	v1,-107
bfc08060:	ad0925fc 	sw	t1,9724(t0)
bfc08064:	25040004 	addiu	a0,t0,4
bfc08068:	2505fff8 	addiu	a1,t0,-8
bfc0806c:	ac8425fc 	sw	a0,9724(a0)
bfc08070:	aca525fc 	sw	a1,9724(a1)
bfc08074:	810225fd 	lb	v0,9725(t0)
bfc08078:	8c8525fc 	lw	a1,9724(a0)
bfc0807c:	8ca425fc 	lw	a0,9724(a1)
bfc08080:	8ca625fc 	lw	a2,9724(a1)
bfc08084:	1443015c 	bne	v0,v1,bfc085f8 <inst_error>
bfc08088:	00000000 	nop
/home/csy/func/inst/n59_lb.S:104
bfc0808c:	3c097bcc 	lui	t1,0x7bcc
bfc08090:	35290898 	ori	t1,t1,0x898
bfc08094:	3c08800d 	lui	t0,0x800d
bfc08098:	24030008 	li	v1,8
bfc0809c:	ad094c74 	sw	t1,19572(t0)
bfc080a0:	25040004 	addiu	a0,t0,4
bfc080a4:	2505fff8 	addiu	a1,t0,-8
bfc080a8:	ac844c74 	sw	a0,19572(a0)
bfc080ac:	aca54c74 	sw	a1,19572(a1)
bfc080b0:	81024c75 	lb	v0,19573(t0)
bfc080b4:	8c854c74 	lw	a1,19572(a0)
bfc080b8:	8ca44c74 	lw	a0,19572(a1)
bfc080bc:	8ca64c74 	lw	a2,19572(a1)
bfc080c0:	1443014d 	bne	v0,v1,bfc085f8 <inst_error>
bfc080c4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:105
bfc080c8:	3c09eaa1 	lui	t1,0xeaa1
bfc080cc:	352965b4 	ori	t1,t1,0x65b4
bfc080d0:	3c08800d 	lui	t0,0x800d
bfc080d4:	2403ffea 	li	v1,-22
bfc080d8:	ad096378 	sw	t1,25464(t0)
bfc080dc:	25040004 	addiu	a0,t0,4
bfc080e0:	2505fff8 	addiu	a1,t0,-8
bfc080e4:	ac846378 	sw	a0,25464(a0)
bfc080e8:	aca56378 	sw	a1,25464(a1)
bfc080ec:	8102637b 	lb	v0,25467(t0)
bfc080f0:	8c856378 	lw	a1,25464(a0)
bfc080f4:	8ca46378 	lw	a0,25464(a1)
bfc080f8:	8ca66378 	lw	a2,25464(a1)
bfc080fc:	1443013e 	bne	v0,v1,bfc085f8 <inst_error>
bfc08100:	00000000 	nop
/home/csy/func/inst/n59_lb.S:106
bfc08104:	3c093ff5 	lui	t1,0x3ff5
bfc08108:	35297a80 	ori	t1,t1,0x7a80
bfc0810c:	3c08800d 	lui	t0,0x800d
bfc08110:	2403003f 	li	v1,63
bfc08114:	ad090f00 	sw	t1,3840(t0)
bfc08118:	25040004 	addiu	a0,t0,4
bfc0811c:	2505fff8 	addiu	a1,t0,-8
bfc08120:	ac840f00 	sw	a0,3840(a0)
bfc08124:	aca50f00 	sw	a1,3840(a1)
bfc08128:	81020f03 	lb	v0,3843(t0)
bfc0812c:	8c850f00 	lw	a1,3840(a0)
bfc08130:	8ca40f00 	lw	a0,3840(a1)
bfc08134:	8ca60f00 	lw	a2,3840(a1)
bfc08138:	1443012f 	bne	v0,v1,bfc085f8 <inst_error>
bfc0813c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:107
bfc08140:	3c09300e 	lui	t1,0x300e
bfc08144:	35298840 	ori	t1,t1,0x8840
bfc08148:	3c08800d 	lui	t0,0x800d
bfc0814c:	24030040 	li	v1,64
bfc08150:	ad091b04 	sw	t1,6916(t0)
bfc08154:	25040004 	addiu	a0,t0,4
bfc08158:	2505fff8 	addiu	a1,t0,-8
bfc0815c:	ac841b04 	sw	a0,6916(a0)
bfc08160:	aca51b04 	sw	a1,6916(a1)
bfc08164:	81021b04 	lb	v0,6916(t0)
bfc08168:	8c851b04 	lw	a1,6916(a0)
bfc0816c:	8ca41b04 	lw	a0,6916(a1)
bfc08170:	8ca61b04 	lw	a2,6916(a1)
bfc08174:	14430120 	bne	v0,v1,bfc085f8 <inst_error>
bfc08178:	00000000 	nop
/home/csy/func/inst/n59_lb.S:108
bfc0817c:	3c09fb63 	lui	t1,0xfb63
bfc08180:	3529b448 	ori	t1,t1,0xb448
bfc08184:	3c08800d 	lui	t0,0x800d
bfc08188:	24030048 	li	v1,72
bfc0818c:	ad090000 	sw	t1,0(t0)
bfc08190:	25040004 	addiu	a0,t0,4
bfc08194:	2505fff8 	addiu	a1,t0,-8
bfc08198:	ac840000 	sw	a0,0(a0)
bfc0819c:	aca50000 	sw	a1,0(a1)
bfc081a0:	81020000 	lb	v0,0(t0)
bfc081a4:	8c850000 	lw	a1,0(a0)
bfc081a8:	8ca40000 	lw	a0,0(a1)
bfc081ac:	8ca60000 	lw	a2,0(a1)
bfc081b0:	14430111 	bne	v0,v1,bfc085f8 <inst_error>
bfc081b4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:109
bfc081b8:	3c09358c 	lui	t1,0x358c
bfc081bc:	35298a40 	ori	t1,t1,0x8a40
bfc081c0:	3c08800d 	lui	t0,0x800d
bfc081c4:	2403ff8c 	li	v1,-116
bfc081c8:	ad090000 	sw	t1,0(t0)
bfc081cc:	25040004 	addiu	a0,t0,4
bfc081d0:	2505fff8 	addiu	a1,t0,-8
bfc081d4:	ac840000 	sw	a0,0(a0)
bfc081d8:	aca50000 	sw	a1,0(a1)
bfc081dc:	81020002 	lb	v0,2(t0)
bfc081e0:	8c850000 	lw	a1,0(a0)
bfc081e4:	8ca40000 	lw	a0,0(a1)
bfc081e8:	8ca60000 	lw	a2,0(a1)
bfc081ec:	14430102 	bne	v0,v1,bfc085f8 <inst_error>
bfc081f0:	00000000 	nop
/home/csy/func/inst/n59_lb.S:110
bfc081f4:	3c095e90 	lui	t1,0x5e90
bfc081f8:	35293520 	ori	t1,t1,0x3520
bfc081fc:	3c08800d 	lui	t0,0x800d
bfc08200:	24030020 	li	v1,32
bfc08204:	ad090000 	sw	t1,0(t0)
bfc08208:	25040004 	addiu	a0,t0,4
bfc0820c:	2505fff8 	addiu	a1,t0,-8
bfc08210:	ac840000 	sw	a0,0(a0)
bfc08214:	aca50000 	sw	a1,0(a1)
bfc08218:	81020000 	lb	v0,0(t0)
bfc0821c:	8c850000 	lw	a1,0(a0)
bfc08220:	8ca40000 	lw	a0,0(a1)
bfc08224:	8ca60000 	lw	a2,0(a1)
bfc08228:	144300f3 	bne	v0,v1,bfc085f8 <inst_error>
bfc0822c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:111
bfc08230:	3c098383 	lui	t1,0x8383
bfc08234:	35292cc2 	ori	t1,t1,0x2cc2
bfc08238:	3c08800d 	lui	t0,0x800d
bfc0823c:	2403002c 	li	v1,44
bfc08240:	ad090000 	sw	t1,0(t0)
bfc08244:	25040004 	addiu	a0,t0,4
bfc08248:	2505fff8 	addiu	a1,t0,-8
bfc0824c:	ac840000 	sw	a0,0(a0)
bfc08250:	aca50000 	sw	a1,0(a1)
bfc08254:	81020001 	lb	v0,1(t0)
bfc08258:	8c850000 	lw	a1,0(a0)
bfc0825c:	8ca40000 	lw	a0,0(a1)
bfc08260:	8ca60000 	lw	a2,0(a1)
bfc08264:	144300e4 	bne	v0,v1,bfc085f8 <inst_error>
bfc08268:	00000000 	nop
/home/csy/func/inst/n59_lb.S:112
bfc0826c:	3c094554 	lui	t1,0x4554
bfc08270:	3529da80 	ori	t1,t1,0xda80
bfc08274:	3c08800d 	lui	t0,0x800d
bfc08278:	24030054 	li	v1,84
bfc0827c:	ad090000 	sw	t1,0(t0)
bfc08280:	25040004 	addiu	a0,t0,4
bfc08284:	2505fff8 	addiu	a1,t0,-8
bfc08288:	ac840000 	sw	a0,0(a0)
bfc0828c:	aca50000 	sw	a1,0(a1)
bfc08290:	81020002 	lb	v0,2(t0)
bfc08294:	8c850000 	lw	a1,0(a0)
bfc08298:	8ca40000 	lw	a0,0(a1)
bfc0829c:	8ca60000 	lw	a2,0(a1)
bfc082a0:	144300d5 	bne	v0,v1,bfc085f8 <inst_error>
bfc082a4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:113
bfc082a8:	3c098e31 	lui	t1,0x8e31
bfc082ac:	35290700 	ori	t1,t1,0x700
bfc082b0:	3c08800d 	lui	t0,0x800d
bfc082b4:	24030007 	li	v1,7
bfc082b8:	ad090000 	sw	t1,0(t0)
bfc082bc:	25040004 	addiu	a0,t0,4
bfc082c0:	2505fff8 	addiu	a1,t0,-8
bfc082c4:	ac840000 	sw	a0,0(a0)
bfc082c8:	aca50000 	sw	a1,0(a1)
bfc082cc:	81020001 	lb	v0,1(t0)
bfc082d0:	8c850000 	lw	a1,0(a0)
bfc082d4:	8ca40000 	lw	a0,0(a1)
bfc082d8:	8ca60000 	lw	a2,0(a1)
bfc082dc:	144300c6 	bne	v0,v1,bfc085f8 <inst_error>
bfc082e0:	00000000 	nop
/home/csy/func/inst/n59_lb.S:114
bfc082e4:	3c09f152 	lui	t1,0xf152
bfc082e8:	3529d038 	ori	t1,t1,0xd038
bfc082ec:	3c08800d 	lui	t0,0x800d
bfc082f0:	2403ffd0 	li	v1,-48
bfc082f4:	ad090000 	sw	t1,0(t0)
bfc082f8:	25040004 	addiu	a0,t0,4
bfc082fc:	2505fff8 	addiu	a1,t0,-8
bfc08300:	ac840000 	sw	a0,0(a0)
bfc08304:	aca50000 	sw	a1,0(a1)
bfc08308:	81020001 	lb	v0,1(t0)
bfc0830c:	8c850000 	lw	a1,0(a0)
bfc08310:	8ca40000 	lw	a0,0(a1)
bfc08314:	8ca60000 	lw	a2,0(a1)
bfc08318:	144300b7 	bne	v0,v1,bfc085f8 <inst_error>
bfc0831c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:115
bfc08320:	3c09a100 	lui	t1,0xa100
bfc08324:	3529c498 	ori	t1,t1,0xc498
bfc08328:	3c08800d 	lui	t0,0x800d
bfc0832c:	24030000 	li	v1,0
bfc08330:	ad090000 	sw	t1,0(t0)
bfc08334:	25040004 	addiu	a0,t0,4
bfc08338:	2505fff8 	addiu	a1,t0,-8
bfc0833c:	ac840000 	sw	a0,0(a0)
bfc08340:	aca50000 	sw	a1,0(a1)
bfc08344:	81020002 	lb	v0,2(t0)
bfc08348:	8c850000 	lw	a1,0(a0)
bfc0834c:	8ca40000 	lw	a0,0(a1)
bfc08350:	8ca60000 	lw	a2,0(a1)
bfc08354:	144300a8 	bne	v0,v1,bfc085f8 <inst_error>
bfc08358:	00000000 	nop
/home/csy/func/inst/n59_lb.S:116
bfc0835c:	3c09ea4a 	lui	t1,0xea4a
bfc08360:	35299128 	ori	t1,t1,0x9128
bfc08364:	3c08800d 	lui	t0,0x800d
bfc08368:	2403ffea 	li	v1,-22
bfc0836c:	ad090000 	sw	t1,0(t0)
bfc08370:	25040004 	addiu	a0,t0,4
bfc08374:	2505fff8 	addiu	a1,t0,-8
bfc08378:	ac840000 	sw	a0,0(a0)
bfc0837c:	aca50000 	sw	a1,0(a1)
bfc08380:	81020003 	lb	v0,3(t0)
bfc08384:	8c850000 	lw	a1,0(a0)
bfc08388:	8ca40000 	lw	a0,0(a1)
bfc0838c:	8ca60000 	lw	a2,0(a1)
bfc08390:	14430099 	bne	v0,v1,bfc085f8 <inst_error>
bfc08394:	00000000 	nop
/home/csy/func/inst/n59_lb.S:117
bfc08398:	3c098941 	lui	t1,0x8941
bfc0839c:	3529eeb0 	ori	t1,t1,0xeeb0
bfc083a0:	3c08800d 	lui	t0,0x800d
bfc083a4:	2403ffb0 	li	v1,-80
bfc083a8:	ad090000 	sw	t1,0(t0)
bfc083ac:	25040004 	addiu	a0,t0,4
bfc083b0:	2505fff8 	addiu	a1,t0,-8
bfc083b4:	ac840000 	sw	a0,0(a0)
bfc083b8:	aca50000 	sw	a1,0(a1)
bfc083bc:	81020000 	lb	v0,0(t0)
bfc083c0:	8c850000 	lw	a1,0(a0)
bfc083c4:	8ca40000 	lw	a0,0(a1)
bfc083c8:	8ca60000 	lw	a2,0(a1)
bfc083cc:	1443008a 	bne	v0,v1,bfc085f8 <inst_error>
bfc083d0:	00000000 	nop
/home/csy/func/inst/n59_lb.S:118
bfc083d4:	3c091b28 	lui	t1,0x1b28
bfc083d8:	35299e0c 	ori	t1,t1,0x9e0c
bfc083dc:	3c08800d 	lui	t0,0x800d
bfc083e0:	24030028 	li	v1,40
bfc083e4:	ad090000 	sw	t1,0(t0)
bfc083e8:	25040004 	addiu	a0,t0,4
bfc083ec:	2505fff8 	addiu	a1,t0,-8
bfc083f0:	ac840000 	sw	a0,0(a0)
bfc083f4:	aca50000 	sw	a1,0(a1)
bfc083f8:	81020002 	lb	v0,2(t0)
bfc083fc:	8c850000 	lw	a1,0(a0)
bfc08400:	8ca40000 	lw	a0,0(a1)
bfc08404:	8ca60000 	lw	a2,0(a1)
bfc08408:	1443007b 	bne	v0,v1,bfc085f8 <inst_error>
bfc0840c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:119
bfc08410:	3c09333c 	lui	t1,0x333c
bfc08414:	35297a70 	ori	t1,t1,0x7a70
bfc08418:	3c08800d 	lui	t0,0x800d
bfc0841c:	2403003c 	li	v1,60
bfc08420:	ad090000 	sw	t1,0(t0)
bfc08424:	25040004 	addiu	a0,t0,4
bfc08428:	2505fff8 	addiu	a1,t0,-8
bfc0842c:	ac840000 	sw	a0,0(a0)
bfc08430:	aca50000 	sw	a1,0(a1)
bfc08434:	81020002 	lb	v0,2(t0)
bfc08438:	8c850000 	lw	a1,0(a0)
bfc0843c:	8ca40000 	lw	a0,0(a1)
bfc08440:	8ca60000 	lw	a2,0(a1)
bfc08444:	1443006c 	bne	v0,v1,bfc085f8 <inst_error>
bfc08448:	00000000 	nop
/home/csy/func/inst/n59_lb.S:120
bfc0844c:	3c09865e 	lui	t1,0x865e
bfc08450:	3529faf0 	ori	t1,t1,0xfaf0
bfc08454:	3c08800d 	lui	t0,0x800d
bfc08458:	2403005e 	li	v1,94
bfc0845c:	ad090000 	sw	t1,0(t0)
bfc08460:	25040004 	addiu	a0,t0,4
bfc08464:	2505fff8 	addiu	a1,t0,-8
bfc08468:	ac840000 	sw	a0,0(a0)
bfc0846c:	aca50000 	sw	a1,0(a1)
bfc08470:	81020002 	lb	v0,2(t0)
bfc08474:	8c850000 	lw	a1,0(a0)
bfc08478:	8ca40000 	lw	a0,0(a1)
bfc0847c:	8ca60000 	lw	a2,0(a1)
bfc08480:	1443005d 	bne	v0,v1,bfc085f8 <inst_error>
bfc08484:	00000000 	nop
/home/csy/func/inst/n59_lb.S:121
bfc08488:	3c09ac40 	lui	t1,0xac40
bfc0848c:	3529eea4 	ori	t1,t1,0xeea4
bfc08490:	3c08800d 	lui	t0,0x800d
bfc08494:	24030040 	li	v1,64
bfc08498:	ad090000 	sw	t1,0(t0)
bfc0849c:	25040004 	addiu	a0,t0,4
bfc084a0:	2505fff8 	addiu	a1,t0,-8
bfc084a4:	ac840000 	sw	a0,0(a0)
bfc084a8:	aca50000 	sw	a1,0(a1)
bfc084ac:	81020002 	lb	v0,2(t0)
bfc084b0:	8c850000 	lw	a1,0(a0)
bfc084b4:	8ca40000 	lw	a0,0(a1)
bfc084b8:	8ca60000 	lw	a2,0(a1)
bfc084bc:	1443004e 	bne	v0,v1,bfc085f8 <inst_error>
bfc084c0:	00000000 	nop
/home/csy/func/inst/n59_lb.S:122
bfc084c4:	3c0924b5 	lui	t1,0x24b5
bfc084c8:	3529e96a 	ori	t1,t1,0xe96a
bfc084cc:	3c08800d 	lui	t0,0x800d
bfc084d0:	2403ffb5 	li	v1,-75
bfc084d4:	ad090000 	sw	t1,0(t0)
bfc084d8:	25040004 	addiu	a0,t0,4
bfc084dc:	2505fff8 	addiu	a1,t0,-8
bfc084e0:	ac840000 	sw	a0,0(a0)
bfc084e4:	aca50000 	sw	a1,0(a1)
bfc084e8:	81020002 	lb	v0,2(t0)
bfc084ec:	8c850000 	lw	a1,0(a0)
bfc084f0:	8ca40000 	lw	a0,0(a1)
bfc084f4:	8ca60000 	lw	a2,0(a1)
bfc084f8:	1443003f 	bne	v0,v1,bfc085f8 <inst_error>
bfc084fc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:123
bfc08500:	3c0931aa 	lui	t1,0x31aa
bfc08504:	3529938c 	ori	t1,t1,0x938c
bfc08508:	3c08800d 	lui	t0,0x800d
bfc0850c:	2403ffaa 	li	v1,-86
bfc08510:	ad090000 	sw	t1,0(t0)
bfc08514:	25040004 	addiu	a0,t0,4
bfc08518:	2505fff8 	addiu	a1,t0,-8
bfc0851c:	ac840000 	sw	a0,0(a0)
bfc08520:	aca50000 	sw	a1,0(a1)
bfc08524:	81020002 	lb	v0,2(t0)
bfc08528:	8c850000 	lw	a1,0(a0)
bfc0852c:	8ca40000 	lw	a0,0(a1)
bfc08530:	8ca60000 	lw	a2,0(a1)
bfc08534:	14430030 	bne	v0,v1,bfc085f8 <inst_error>
bfc08538:	00000000 	nop
/home/csy/func/inst/n59_lb.S:124
bfc0853c:	3c090661 	lui	t1,0x661
bfc08540:	3529cc00 	ori	t1,t1,0xcc00
bfc08544:	3c08800d 	lui	t0,0x800d
bfc08548:	24030006 	li	v1,6
bfc0854c:	ad090000 	sw	t1,0(t0)
bfc08550:	25040004 	addiu	a0,t0,4
bfc08554:	2505fff8 	addiu	a1,t0,-8
bfc08558:	ac840000 	sw	a0,0(a0)
bfc0855c:	aca50000 	sw	a1,0(a1)
bfc08560:	81020003 	lb	v0,3(t0)
bfc08564:	8c850000 	lw	a1,0(a0)
bfc08568:	8ca40000 	lw	a0,0(a1)
bfc0856c:	8ca60000 	lw	a2,0(a1)
bfc08570:	14430021 	bne	v0,v1,bfc085f8 <inst_error>
bfc08574:	00000000 	nop
/home/csy/func/inst/n59_lb.S:125
bfc08578:	3c097eb8 	lui	t1,0x7eb8
bfc0857c:	352995a4 	ori	t1,t1,0x95a4
bfc08580:	3c08800d 	lui	t0,0x800d
bfc08584:	2403ff95 	li	v1,-107
bfc08588:	ad090000 	sw	t1,0(t0)
bfc0858c:	25040004 	addiu	a0,t0,4
bfc08590:	2505fff8 	addiu	a1,t0,-8
bfc08594:	ac840000 	sw	a0,0(a0)
bfc08598:	aca50000 	sw	a1,0(a1)
bfc0859c:	81020001 	lb	v0,1(t0)
bfc085a0:	8c850000 	lw	a1,0(a0)
bfc085a4:	8ca40000 	lw	a0,0(a1)
bfc085a8:	8ca60000 	lw	a2,0(a1)
bfc085ac:	14430012 	bne	v0,v1,bfc085f8 <inst_error>
bfc085b0:	00000000 	nop
/home/csy/func/inst/n59_lb.S:126
bfc085b4:	24090000 	li	t1,0
bfc085b8:	3c08800d 	lui	t0,0x800d
bfc085bc:	24030000 	li	v1,0
bfc085c0:	ad090000 	sw	t1,0(t0)
bfc085c4:	25040004 	addiu	a0,t0,4
bfc085c8:	2505fff8 	addiu	a1,t0,-8
bfc085cc:	ac840000 	sw	a0,0(a0)
bfc085d0:	aca50000 	sw	a1,0(a1)
bfc085d4:	81020000 	lb	v0,0(t0)
bfc085d8:	8c850000 	lw	a1,0(a0)
bfc085dc:	8ca40000 	lw	a0,0(a1)
bfc085e0:	8ca60000 	lw	a2,0(a1)
bfc085e4:	14430004 	bne	v0,v1,bfc085f8 <inst_error>
bfc085e8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:128
bfc085ec:	16400002 	bnez	s2,bfc085f8 <inst_error>
/home/csy/func/inst/n59_lb.S:129
bfc085f0:	00000000 	nop
/home/csy/func/inst/n59_lb.S:131
bfc085f4:	26730001 	addiu	s3,s3,1

bfc085f8 <inst_error>:
/home/csy/func/inst/n59_lb.S:134
bfc085f8:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n59_lb.S:135
bfc085fc:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n59_lb.S:136
bfc08600:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n59_lb.S:137
bfc08604:	03e00008 	jr	ra
/home/csy/func/inst/n59_lb.S:138
bfc08608:	00000000 	nop
bfc0860c:	00000000 	nop

bfc08610 <n61_lh_test>:
/home/csy/func/inst/n61_lh.S:7
bfc08610:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n61_lh.S:8
bfc08614:	24120000 	li	s2,0
/home/csy/func/inst/n61_lh.S:10
bfc08618:	3c095184 	lui	t1,0x5184
bfc0861c:	35292560 	ori	t1,t1,0x2560
bfc08620:	3c08800d 	lui	t0,0x800d
bfc08624:	35082bc4 	ori	t0,t0,0x2bc4
bfc08628:	24032560 	li	v1,9568
bfc0862c:	ad09127c 	sw	t1,4732(t0)
bfc08630:	25040004 	addiu	a0,t0,4
bfc08634:	2505fff8 	addiu	a1,t0,-8
bfc08638:	ac84127c 	sw	a0,4732(a0)
bfc0863c:	aca5127c 	sw	a1,4732(a1)
bfc08640:	8502127c 	lh	v0,4732(t0)
bfc08644:	8c85127c 	lw	a1,4732(a0)
bfc08648:	8ca4127c 	lw	a0,4732(a1)
bfc0864c:	8ca6127c 	lw	a2,4732(a1)
bfc08650:	144306fe 	bne	v0,v1,bfc0a24c <inst_error>
bfc08654:	00000000 	nop
/home/csy/func/inst/n61_lh.S:11
bfc08658:	3c092516 	lui	t1,0x2516
bfc0865c:	3529116e 	ori	t1,t1,0x116e
bfc08660:	3c08800d 	lui	t0,0x800d
bfc08664:	35082220 	ori	t0,t0,0x2220
bfc08668:	2403116e 	li	v1,4462
bfc0866c:	3c010001 	lui	at,0x1
bfc08670:	00280821 	addu	at,at,t0
bfc08674:	ac29a890 	sw	t1,-22384(at)
bfc08678:	25040004 	addiu	a0,t0,4
bfc0867c:	2505fff8 	addiu	a1,t0,-8
bfc08680:	3c010001 	lui	at,0x1
bfc08684:	00240821 	addu	at,at,a0
bfc08688:	ac24a890 	sw	a0,-22384(at)
bfc0868c:	3c010001 	lui	at,0x1
bfc08690:	00250821 	addu	at,at,a1
bfc08694:	ac25a890 	sw	a1,-22384(at)
bfc08698:	3c020001 	lui	v0,0x1
bfc0869c:	00481021 	addu	v0,v0,t0
bfc086a0:	8442a890 	lh	v0,-22384(v0)
bfc086a4:	3c050001 	lui	a1,0x1
bfc086a8:	00a42821 	addu	a1,a1,a0
bfc086ac:	8ca5a890 	lw	a1,-22384(a1)
bfc086b0:	3c040001 	lui	a0,0x1
bfc086b4:	00852021 	addu	a0,a0,a1
bfc086b8:	8c84a890 	lw	a0,-22384(a0)
bfc086bc:	3c060001 	lui	a2,0x1
bfc086c0:	00c53021 	addu	a2,a2,a1
bfc086c4:	8cc6a890 	lw	a2,-22384(a2)
bfc086c8:	144306e0 	bne	v0,v1,bfc0a24c <inst_error>
bfc086cc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:12
bfc086d0:	3c094932 	lui	t1,0x4932
bfc086d4:	3529330c 	ori	t1,t1,0x330c
bfc086d8:	3c08800d 	lui	t0,0x800d
bfc086dc:	35083810 	ori	t0,t0,0x3810
bfc086e0:	24034932 	li	v1,18738
bfc086e4:	3c010001 	lui	at,0x1
bfc086e8:	00280821 	addu	at,at,t0
bfc086ec:	ac298524 	sw	t1,-31452(at)
bfc086f0:	25040004 	addiu	a0,t0,4
bfc086f4:	2505fff8 	addiu	a1,t0,-8
bfc086f8:	3c010001 	lui	at,0x1
bfc086fc:	00240821 	addu	at,at,a0
bfc08700:	ac248524 	sw	a0,-31452(at)
bfc08704:	3c010001 	lui	at,0x1
bfc08708:	00250821 	addu	at,at,a1
bfc0870c:	ac258524 	sw	a1,-31452(at)
bfc08710:	3c020001 	lui	v0,0x1
bfc08714:	00481021 	addu	v0,v0,t0
bfc08718:	84428526 	lh	v0,-31450(v0)
bfc0871c:	3c050001 	lui	a1,0x1
bfc08720:	00a42821 	addu	a1,a1,a0
bfc08724:	8ca58524 	lw	a1,-31452(a1)
bfc08728:	3c040001 	lui	a0,0x1
bfc0872c:	00852021 	addu	a0,a0,a1
bfc08730:	8c848524 	lw	a0,-31452(a0)
bfc08734:	3c060001 	lui	a2,0x1
bfc08738:	00c53021 	addu	a2,a2,a1
bfc0873c:	8cc68524 	lw	a2,-31452(a2)
bfc08740:	144306c2 	bne	v0,v1,bfc0a24c <inst_error>
bfc08744:	00000000 	nop
/home/csy/func/inst/n61_lh.S:13
bfc08748:	3c09be4d 	lui	t1,0xbe4d
bfc0874c:	35299ac8 	ori	t1,t1,0x9ac8
bfc08750:	3c08800d 	lui	t0,0x800d
bfc08754:	3508ac60 	ori	t0,t0,0xac60
bfc08758:	2403be4d 	li	v1,-16819
bfc0875c:	ad090090 	sw	t1,144(t0)
bfc08760:	25040004 	addiu	a0,t0,4
bfc08764:	2505fff8 	addiu	a1,t0,-8
bfc08768:	ac840090 	sw	a0,144(a0)
bfc0876c:	aca50090 	sw	a1,144(a1)
bfc08770:	85020092 	lh	v0,146(t0)
bfc08774:	8c850090 	lw	a1,144(a0)
bfc08778:	8ca40090 	lw	a0,144(a1)
bfc0877c:	8ca60090 	lw	a2,144(a1)
bfc08780:	144306b2 	bne	v0,v1,bfc0a24c <inst_error>
bfc08784:	00000000 	nop
/home/csy/func/inst/n61_lh.S:14
bfc08788:	3c095f0c 	lui	t1,0x5f0c
bfc0878c:	35290856 	ori	t1,t1,0x856
bfc08790:	3c08800d 	lui	t0,0x800d
bfc08794:	35081800 	ori	t0,t0,0x1800
bfc08798:	24030856 	li	v1,2134
bfc0879c:	3c010001 	lui	at,0x1
bfc087a0:	00280821 	addu	at,at,t0
bfc087a4:	ac298964 	sw	t1,-30364(at)
bfc087a8:	25040004 	addiu	a0,t0,4
bfc087ac:	2505fff8 	addiu	a1,t0,-8
bfc087b0:	3c010001 	lui	at,0x1
bfc087b4:	00240821 	addu	at,at,a0
bfc087b8:	ac248964 	sw	a0,-30364(at)
bfc087bc:	3c010001 	lui	at,0x1
bfc087c0:	00250821 	addu	at,at,a1
bfc087c4:	ac258964 	sw	a1,-30364(at)
bfc087c8:	3c020001 	lui	v0,0x1
bfc087cc:	00481021 	addu	v0,v0,t0
bfc087d0:	84428964 	lh	v0,-30364(v0)
bfc087d4:	3c050001 	lui	a1,0x1
bfc087d8:	00a42821 	addu	a1,a1,a0
bfc087dc:	8ca58964 	lw	a1,-30364(a1)
bfc087e0:	3c040001 	lui	a0,0x1
bfc087e4:	00852021 	addu	a0,a0,a1
bfc087e8:	8c848964 	lw	a0,-30364(a0)
bfc087ec:	3c060001 	lui	a2,0x1
bfc087f0:	00c53021 	addu	a2,a2,a1
bfc087f4:	8cc68964 	lw	a2,-30364(a2)
bfc087f8:	14430694 	bne	v0,v1,bfc0a24c <inst_error>
bfc087fc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:15
bfc08800:	3c09bfa5 	lui	t1,0xbfa5
bfc08804:	3529bc80 	ori	t1,t1,0xbc80
bfc08808:	3c08800d 	lui	t0,0x800d
bfc0880c:	35089ca0 	ori	t0,t0,0x9ca0
bfc08810:	2403bc80 	li	v1,-17280
bfc08814:	ad092950 	sw	t1,10576(t0)
bfc08818:	25040004 	addiu	a0,t0,4
bfc0881c:	2505fff8 	addiu	a1,t0,-8
bfc08820:	ac842950 	sw	a0,10576(a0)
bfc08824:	aca52950 	sw	a1,10576(a1)
bfc08828:	85022950 	lh	v0,10576(t0)
bfc0882c:	8c852950 	lw	a1,10576(a0)
bfc08830:	8ca42950 	lw	a0,10576(a1)
bfc08834:	8ca62950 	lw	a2,10576(a1)
bfc08838:	14430684 	bne	v0,v1,bfc0a24c <inst_error>
bfc0883c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:16
bfc08840:	3c0967b0 	lui	t1,0x67b0
bfc08844:	3529ca80 	ori	t1,t1,0xca80
bfc08848:	3c08800d 	lui	t0,0x800d
bfc0884c:	3508b258 	ori	t0,t0,0xb258
bfc08850:	2403ca80 	li	v1,-13696
bfc08854:	ad092f74 	sw	t1,12148(t0)
bfc08858:	25040004 	addiu	a0,t0,4
bfc0885c:	2505fff8 	addiu	a1,t0,-8
bfc08860:	ac842f74 	sw	a0,12148(a0)
bfc08864:	aca52f74 	sw	a1,12148(a1)
bfc08868:	85022f74 	lh	v0,12148(t0)
bfc0886c:	8c852f74 	lw	a1,12148(a0)
bfc08870:	8ca42f74 	lw	a0,12148(a1)
bfc08874:	8ca62f74 	lw	a2,12148(a1)
bfc08878:	14430674 	bne	v0,v1,bfc0a24c <inst_error>
bfc0887c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:17
bfc08880:	3c09b0c4 	lui	t1,0xb0c4
bfc08884:	3529ee88 	ori	t1,t1,0xee88
bfc08888:	3c08800d 	lui	t0,0x800d
bfc0888c:	35080a08 	ori	t0,t0,0xa08
bfc08890:	2403ee88 	li	v1,-4472
bfc08894:	ad0929d4 	sw	t1,10708(t0)
bfc08898:	25040004 	addiu	a0,t0,4
bfc0889c:	2505fff8 	addiu	a1,t0,-8
bfc088a0:	ac8429d4 	sw	a0,10708(a0)
bfc088a4:	aca529d4 	sw	a1,10708(a1)
bfc088a8:	850229d4 	lh	v0,10708(t0)
bfc088ac:	8c8529d4 	lw	a1,10708(a0)
bfc088b0:	8ca429d4 	lw	a0,10708(a1)
bfc088b4:	8ca629d4 	lw	a2,10708(a1)
bfc088b8:	14430664 	bne	v0,v1,bfc0a24c <inst_error>
bfc088bc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:18
bfc088c0:	3c09a28f 	lui	t1,0xa28f
bfc088c4:	3529bedc 	ori	t1,t1,0xbedc
bfc088c8:	3c08800d 	lui	t0,0x800d
bfc088cc:	3508130c 	ori	t0,t0,0x130c
bfc088d0:	2403bedc 	li	v1,-16676
bfc088d4:	3c010001 	lui	at,0x1
bfc088d8:	00280821 	addu	at,at,t0
bfc088dc:	ac29cf28 	sw	t1,-12504(at)
bfc088e0:	25040004 	addiu	a0,t0,4
bfc088e4:	2505fff8 	addiu	a1,t0,-8
bfc088e8:	3c010001 	lui	at,0x1
bfc088ec:	00240821 	addu	at,at,a0
bfc088f0:	ac24cf28 	sw	a0,-12504(at)
bfc088f4:	3c010001 	lui	at,0x1
bfc088f8:	00250821 	addu	at,at,a1
bfc088fc:	ac25cf28 	sw	a1,-12504(at)
bfc08900:	3c020001 	lui	v0,0x1
bfc08904:	00481021 	addu	v0,v0,t0
bfc08908:	8442cf28 	lh	v0,-12504(v0)
bfc0890c:	3c050001 	lui	a1,0x1
bfc08910:	00a42821 	addu	a1,a1,a0
bfc08914:	8ca5cf28 	lw	a1,-12504(a1)
bfc08918:	3c040001 	lui	a0,0x1
bfc0891c:	00852021 	addu	a0,a0,a1
bfc08920:	8c84cf28 	lw	a0,-12504(a0)
bfc08924:	3c060001 	lui	a2,0x1
bfc08928:	00c53021 	addu	a2,a2,a1
bfc0892c:	8cc6cf28 	lw	a2,-12504(a2)
bfc08930:	14430646 	bne	v0,v1,bfc0a24c <inst_error>
bfc08934:	00000000 	nop
/home/csy/func/inst/n61_lh.S:19
bfc08938:	3c090158 	lui	t1,0x158
bfc0893c:	35299400 	ori	t1,t1,0x9400
bfc08940:	3c08800d 	lui	t0,0x800d
bfc08944:	35083568 	ori	t0,t0,0x3568
bfc08948:	24030158 	li	v1,344
bfc0894c:	3c010001 	lui	at,0x1
bfc08950:	00280821 	addu	at,at,t0
bfc08954:	ac299f34 	sw	t1,-24780(at)
bfc08958:	25040004 	addiu	a0,t0,4
bfc0895c:	2505fff8 	addiu	a1,t0,-8
bfc08960:	3c010001 	lui	at,0x1
bfc08964:	00240821 	addu	at,at,a0
bfc08968:	ac249f34 	sw	a0,-24780(at)
bfc0896c:	3c010001 	lui	at,0x1
bfc08970:	00250821 	addu	at,at,a1
bfc08974:	ac259f34 	sw	a1,-24780(at)
bfc08978:	3c020001 	lui	v0,0x1
bfc0897c:	00481021 	addu	v0,v0,t0
bfc08980:	84429f36 	lh	v0,-24778(v0)
bfc08984:	3c050001 	lui	a1,0x1
bfc08988:	00a42821 	addu	a1,a1,a0
bfc0898c:	8ca59f34 	lw	a1,-24780(a1)
bfc08990:	3c040001 	lui	a0,0x1
bfc08994:	00852021 	addu	a0,a0,a1
bfc08998:	8c849f34 	lw	a0,-24780(a0)
bfc0899c:	3c060001 	lui	a2,0x1
bfc089a0:	00c53021 	addu	a2,a2,a1
bfc089a4:	8cc69f34 	lw	a2,-24780(a2)
bfc089a8:	14430628 	bne	v0,v1,bfc0a24c <inst_error>
bfc089ac:	00000000 	nop
/home/csy/func/inst/n61_lh.S:20
bfc089b0:	3c092048 	lui	t1,0x2048
bfc089b4:	35293e02 	ori	t1,t1,0x3e02
bfc089b8:	3c08800d 	lui	t0,0x800d
bfc089bc:	3508d600 	ori	t0,t0,0xd600
bfc089c0:	24033e02 	li	v1,15874
bfc089c4:	ad091e7c 	sw	t1,7804(t0)
bfc089c8:	25040004 	addiu	a0,t0,4
bfc089cc:	2505fff8 	addiu	a1,t0,-8
bfc089d0:	ac841e7c 	sw	a0,7804(a0)
bfc089d4:	aca51e7c 	sw	a1,7804(a1)
bfc089d8:	85021e7c 	lh	v0,7804(t0)
bfc089dc:	8c851e7c 	lw	a1,7804(a0)
bfc089e0:	8ca41e7c 	lw	a0,7804(a1)
bfc089e4:	8ca61e7c 	lw	a2,7804(a1)
bfc089e8:	14430618 	bne	v0,v1,bfc0a24c <inst_error>
bfc089ec:	00000000 	nop
/home/csy/func/inst/n61_lh.S:21
bfc089f0:	3c096171 	lui	t1,0x6171
bfc089f4:	35298b00 	ori	t1,t1,0x8b00
bfc089f8:	3c08800d 	lui	t0,0x800d
bfc089fc:	35088550 	ori	t0,t0,0x8550
bfc08a00:	24038b00 	li	v1,-29952
bfc08a04:	ad0924e0 	sw	t1,9440(t0)
bfc08a08:	25040004 	addiu	a0,t0,4
bfc08a0c:	2505fff8 	addiu	a1,t0,-8
bfc08a10:	ac8424e0 	sw	a0,9440(a0)
bfc08a14:	aca524e0 	sw	a1,9440(a1)
bfc08a18:	850224e0 	lh	v0,9440(t0)
bfc08a1c:	8c8524e0 	lw	a1,9440(a0)
bfc08a20:	8ca424e0 	lw	a0,9440(a1)
bfc08a24:	8ca624e0 	lw	a2,9440(a1)
bfc08a28:	14430608 	bne	v0,v1,bfc0a24c <inst_error>
bfc08a2c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:22
bfc08a30:	3c09b204 	lui	t1,0xb204
bfc08a34:	35294740 	ori	t1,t1,0x4740
bfc08a38:	3c08800d 	lui	t0,0x800d
bfc08a3c:	35081a30 	ori	t0,t0,0x1a30
bfc08a40:	24034740 	li	v1,18240
bfc08a44:	ad096d88 	sw	t1,28040(t0)
bfc08a48:	25040004 	addiu	a0,t0,4
bfc08a4c:	2505fff8 	addiu	a1,t0,-8
bfc08a50:	ac846d88 	sw	a0,28040(a0)
bfc08a54:	aca56d88 	sw	a1,28040(a1)
bfc08a58:	85026d88 	lh	v0,28040(t0)
bfc08a5c:	8c856d88 	lw	a1,28040(a0)
bfc08a60:	8ca46d88 	lw	a0,28040(a1)
bfc08a64:	8ca66d88 	lw	a2,28040(a1)
bfc08a68:	144305f8 	bne	v0,v1,bfc0a24c <inst_error>
bfc08a6c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:23
bfc08a70:	3c096dbe 	lui	t1,0x6dbe
bfc08a74:	352993b6 	ori	t1,t1,0x93b6
bfc08a78:	3c08800d 	lui	t0,0x800d
bfc08a7c:	35082a08 	ori	t0,t0,0x2a08
bfc08a80:	240393b6 	li	v1,-27722
bfc08a84:	ad0913e0 	sw	t1,5088(t0)
bfc08a88:	25040004 	addiu	a0,t0,4
bfc08a8c:	2505fff8 	addiu	a1,t0,-8
bfc08a90:	ac8413e0 	sw	a0,5088(a0)
bfc08a94:	aca513e0 	sw	a1,5088(a1)
bfc08a98:	850213e0 	lh	v0,5088(t0)
bfc08a9c:	8c8513e0 	lw	a1,5088(a0)
bfc08aa0:	8ca413e0 	lw	a0,5088(a1)
bfc08aa4:	8ca613e0 	lw	a2,5088(a1)
bfc08aa8:	144305e8 	bne	v0,v1,bfc0a24c <inst_error>
bfc08aac:	00000000 	nop
/home/csy/func/inst/n61_lh.S:24
bfc08ab0:	3c09e96e 	lui	t1,0xe96e
bfc08ab4:	35297db0 	ori	t1,t1,0x7db0
bfc08ab8:	3c08800d 	lui	t0,0x800d
bfc08abc:	350825e8 	ori	t0,t0,0x25e8
bfc08ac0:	2403e96e 	li	v1,-5778
bfc08ac4:	3c010001 	lui	at,0x1
bfc08ac8:	00280821 	addu	at,at,t0
bfc08acc:	ac29b508 	sw	t1,-19192(at)
bfc08ad0:	25040004 	addiu	a0,t0,4
bfc08ad4:	2505fff8 	addiu	a1,t0,-8
bfc08ad8:	3c010001 	lui	at,0x1
bfc08adc:	00240821 	addu	at,at,a0
bfc08ae0:	ac24b508 	sw	a0,-19192(at)
bfc08ae4:	3c010001 	lui	at,0x1
bfc08ae8:	00250821 	addu	at,at,a1
bfc08aec:	ac25b508 	sw	a1,-19192(at)
bfc08af0:	3c020001 	lui	v0,0x1
bfc08af4:	00481021 	addu	v0,v0,t0
bfc08af8:	8442b50a 	lh	v0,-19190(v0)
bfc08afc:	3c050001 	lui	a1,0x1
bfc08b00:	00a42821 	addu	a1,a1,a0
bfc08b04:	8ca5b508 	lw	a1,-19192(a1)
bfc08b08:	3c040001 	lui	a0,0x1
bfc08b0c:	00852021 	addu	a0,a0,a1
bfc08b10:	8c84b508 	lw	a0,-19192(a0)
bfc08b14:	3c060001 	lui	a2,0x1
bfc08b18:	00c53021 	addu	a2,a2,a1
bfc08b1c:	8cc6b508 	lw	a2,-19192(a2)
bfc08b20:	144305ca 	bne	v0,v1,bfc0a24c <inst_error>
bfc08b24:	00000000 	nop
/home/csy/func/inst/n61_lh.S:25
bfc08b28:	3c096737 	lui	t1,0x6737
bfc08b2c:	3529a118 	ori	t1,t1,0xa118
bfc08b30:	3c08800d 	lui	t0,0x800d
bfc08b34:	35084f78 	ori	t0,t0,0x4f78
bfc08b38:	24036737 	li	v1,26423
bfc08b3c:	ad094fac 	sw	t1,20396(t0)
bfc08b40:	25040004 	addiu	a0,t0,4
bfc08b44:	2505fff8 	addiu	a1,t0,-8
bfc08b48:	ac844fac 	sw	a0,20396(a0)
bfc08b4c:	aca54fac 	sw	a1,20396(a1)
bfc08b50:	85024fae 	lh	v0,20398(t0)
bfc08b54:	8c854fac 	lw	a1,20396(a0)
bfc08b58:	8ca44fac 	lw	a0,20396(a1)
bfc08b5c:	8ca64fac 	lw	a2,20396(a1)
bfc08b60:	144305ba 	bne	v0,v1,bfc0a24c <inst_error>
bfc08b64:	00000000 	nop
/home/csy/func/inst/n61_lh.S:26
bfc08b68:	3c092fec 	lui	t1,0x2fec
bfc08b6c:	35297a40 	ori	t1,t1,0x7a40
bfc08b70:	3c08800d 	lui	t0,0x800d
bfc08b74:	35085228 	ori	t0,t0,0x5228
bfc08b78:	24032fec 	li	v1,12268
bfc08b7c:	3c010001 	lui	at,0x1
bfc08b80:	00280821 	addu	at,at,t0
bfc08b84:	ac29a464 	sw	t1,-23452(at)
bfc08b88:	25040004 	addiu	a0,t0,4
bfc08b8c:	2505fff8 	addiu	a1,t0,-8
bfc08b90:	3c010001 	lui	at,0x1
bfc08b94:	00240821 	addu	at,at,a0
bfc08b98:	ac24a464 	sw	a0,-23452(at)
bfc08b9c:	3c010001 	lui	at,0x1
bfc08ba0:	00250821 	addu	at,at,a1
bfc08ba4:	ac25a464 	sw	a1,-23452(at)
bfc08ba8:	3c020001 	lui	v0,0x1
bfc08bac:	00481021 	addu	v0,v0,t0
bfc08bb0:	8442a466 	lh	v0,-23450(v0)
bfc08bb4:	3c050001 	lui	a1,0x1
bfc08bb8:	00a42821 	addu	a1,a1,a0
bfc08bbc:	8ca5a464 	lw	a1,-23452(a1)
bfc08bc0:	3c040001 	lui	a0,0x1
bfc08bc4:	00852021 	addu	a0,a0,a1
bfc08bc8:	8c84a464 	lw	a0,-23452(a0)
bfc08bcc:	3c060001 	lui	a2,0x1
bfc08bd0:	00c53021 	addu	a2,a2,a1
bfc08bd4:	8cc6a464 	lw	a2,-23452(a2)
bfc08bd8:	1443059c 	bne	v0,v1,bfc0a24c <inst_error>
bfc08bdc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:27
bfc08be0:	3c095805 	lui	t1,0x5805
bfc08be4:	3529df3d 	ori	t1,t1,0xdf3d
bfc08be8:	3c08800d 	lui	t0,0x800d
bfc08bec:	3508e870 	ori	t0,t0,0xe870
bfc08bf0:	2403df3d 	li	v1,-8387
bfc08bf4:	ad090454 	sw	t1,1108(t0)
bfc08bf8:	25040004 	addiu	a0,t0,4
bfc08bfc:	2505fff8 	addiu	a1,t0,-8
bfc08c00:	ac840454 	sw	a0,1108(a0)
bfc08c04:	aca50454 	sw	a1,1108(a1)
bfc08c08:	85020454 	lh	v0,1108(t0)
bfc08c0c:	8c850454 	lw	a1,1108(a0)
bfc08c10:	8ca40454 	lw	a0,1108(a1)
bfc08c14:	8ca60454 	lw	a2,1108(a1)
bfc08c18:	1443058c 	bne	v0,v1,bfc0a24c <inst_error>
bfc08c1c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:28
bfc08c20:	3c094ea0 	lui	t1,0x4ea0
bfc08c24:	3529d20c 	ori	t1,t1,0xd20c
bfc08c28:	3c08800d 	lui	t0,0x800d
bfc08c2c:	35082194 	ori	t0,t0,0x2194
bfc08c30:	2403d20c 	li	v1,-11764
bfc08c34:	3c010001 	lui	at,0x1
bfc08c38:	00280821 	addu	at,at,t0
bfc08c3c:	ac29d7c8 	sw	t1,-10296(at)
bfc08c40:	25040004 	addiu	a0,t0,4
bfc08c44:	2505fff8 	addiu	a1,t0,-8
bfc08c48:	3c010001 	lui	at,0x1
bfc08c4c:	00240821 	addu	at,at,a0
bfc08c50:	ac24d7c8 	sw	a0,-10296(at)
bfc08c54:	3c010001 	lui	at,0x1
bfc08c58:	00250821 	addu	at,at,a1
bfc08c5c:	ac25d7c8 	sw	a1,-10296(at)
bfc08c60:	3c020001 	lui	v0,0x1
bfc08c64:	00481021 	addu	v0,v0,t0
bfc08c68:	8442d7c8 	lh	v0,-10296(v0)
bfc08c6c:	3c050001 	lui	a1,0x1
bfc08c70:	00a42821 	addu	a1,a1,a0
bfc08c74:	8ca5d7c8 	lw	a1,-10296(a1)
bfc08c78:	3c040001 	lui	a0,0x1
bfc08c7c:	00852021 	addu	a0,a0,a1
bfc08c80:	8c84d7c8 	lw	a0,-10296(a0)
bfc08c84:	3c060001 	lui	a2,0x1
bfc08c88:	00c53021 	addu	a2,a2,a1
bfc08c8c:	8cc6d7c8 	lw	a2,-10296(a2)
bfc08c90:	1443056e 	bne	v0,v1,bfc0a24c <inst_error>
bfc08c94:	00000000 	nop
/home/csy/func/inst/n61_lh.S:29
bfc08c98:	3c097bf8 	lui	t1,0x7bf8
bfc08c9c:	3529d942 	ori	t1,t1,0xd942
bfc08ca0:	3c08800d 	lui	t0,0x800d
bfc08ca4:	35085d50 	ori	t0,t0,0x5d50
bfc08ca8:	2403d942 	li	v1,-9918
bfc08cac:	3c010001 	lui	at,0x1
bfc08cb0:	00280821 	addu	at,at,t0
bfc08cb4:	ac29a000 	sw	t1,-24576(at)
bfc08cb8:	25040004 	addiu	a0,t0,4
bfc08cbc:	2505fff8 	addiu	a1,t0,-8
bfc08cc0:	3c010001 	lui	at,0x1
bfc08cc4:	00240821 	addu	at,at,a0
bfc08cc8:	ac24a000 	sw	a0,-24576(at)
bfc08ccc:	3c010001 	lui	at,0x1
bfc08cd0:	00250821 	addu	at,at,a1
bfc08cd4:	ac25a000 	sw	a1,-24576(at)
bfc08cd8:	3c020001 	lui	v0,0x1
bfc08cdc:	00481021 	addu	v0,v0,t0
bfc08ce0:	8442a000 	lh	v0,-24576(v0)
bfc08ce4:	3c050001 	lui	a1,0x1
bfc08ce8:	00a42821 	addu	a1,a1,a0
bfc08cec:	8ca5a000 	lw	a1,-24576(a1)
bfc08cf0:	3c040001 	lui	a0,0x1
bfc08cf4:	00852021 	addu	a0,a0,a1
bfc08cf8:	8c84a000 	lw	a0,-24576(a0)
bfc08cfc:	3c060001 	lui	a2,0x1
bfc08d00:	00c53021 	addu	a2,a2,a1
bfc08d04:	8cc6a000 	lw	a2,-24576(a2)
bfc08d08:	14430550 	bne	v0,v1,bfc0a24c <inst_error>
bfc08d0c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:30
bfc08d10:	3c0937ee 	lui	t1,0x37ee
bfc08d14:	3529910e 	ori	t1,t1,0x910e
bfc08d18:	3c08800d 	lui	t0,0x800d
bfc08d1c:	350897f0 	ori	t0,t0,0x97f0
bfc08d20:	2403910e 	li	v1,-28402
bfc08d24:	ad090174 	sw	t1,372(t0)
bfc08d28:	25040004 	addiu	a0,t0,4
bfc08d2c:	2505fff8 	addiu	a1,t0,-8
bfc08d30:	ac840174 	sw	a0,372(a0)
bfc08d34:	aca50174 	sw	a1,372(a1)
bfc08d38:	85020174 	lh	v0,372(t0)
bfc08d3c:	8c850174 	lw	a1,372(a0)
bfc08d40:	8ca40174 	lw	a0,372(a1)
bfc08d44:	8ca60174 	lw	a2,372(a1)
bfc08d48:	14430540 	bne	v0,v1,bfc0a24c <inst_error>
bfc08d4c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:31
bfc08d50:	3c090259 	lui	t1,0x259
bfc08d54:	35293920 	ori	t1,t1,0x3920
bfc08d58:	3c08800d 	lui	t0,0x800d
bfc08d5c:	350823b8 	ori	t0,t0,0x23b8
bfc08d60:	24033920 	li	v1,14624
bfc08d64:	3c010001 	lui	at,0x1
bfc08d68:	00280821 	addu	at,at,t0
bfc08d6c:	ac29b00c 	sw	t1,-20468(at)
bfc08d70:	25040004 	addiu	a0,t0,4
bfc08d74:	2505fff8 	addiu	a1,t0,-8
bfc08d78:	3c010001 	lui	at,0x1
bfc08d7c:	00240821 	addu	at,at,a0
bfc08d80:	ac24b00c 	sw	a0,-20468(at)
bfc08d84:	3c010001 	lui	at,0x1
bfc08d88:	00250821 	addu	at,at,a1
bfc08d8c:	ac25b00c 	sw	a1,-20468(at)
bfc08d90:	3c020001 	lui	v0,0x1
bfc08d94:	00481021 	addu	v0,v0,t0
bfc08d98:	8442b00c 	lh	v0,-20468(v0)
bfc08d9c:	3c050001 	lui	a1,0x1
bfc08da0:	00a42821 	addu	a1,a1,a0
bfc08da4:	8ca5b00c 	lw	a1,-20468(a1)
bfc08da8:	3c040001 	lui	a0,0x1
bfc08dac:	00852021 	addu	a0,a0,a1
bfc08db0:	8c84b00c 	lw	a0,-20468(a0)
bfc08db4:	3c060001 	lui	a2,0x1
bfc08db8:	00c53021 	addu	a2,a2,a1
bfc08dbc:	8cc6b00c 	lw	a2,-20468(a2)
bfc08dc0:	14430522 	bne	v0,v1,bfc0a24c <inst_error>
bfc08dc4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:32
bfc08dc8:	3c09b7e2 	lui	t1,0xb7e2
bfc08dcc:	35291268 	ori	t1,t1,0x1268
bfc08dd0:	3c08800d 	lui	t0,0x800d
bfc08dd4:	3508cba8 	ori	t0,t0,0xcba8
bfc08dd8:	24031268 	li	v1,4712
bfc08ddc:	ad09221c 	sw	t1,8732(t0)
bfc08de0:	25040004 	addiu	a0,t0,4
bfc08de4:	2505fff8 	addiu	a1,t0,-8
bfc08de8:	ac84221c 	sw	a0,8732(a0)
bfc08dec:	aca5221c 	sw	a1,8732(a1)
bfc08df0:	8502221c 	lh	v0,8732(t0)
bfc08df4:	8c85221c 	lw	a1,8732(a0)
bfc08df8:	8ca4221c 	lw	a0,8732(a1)
bfc08dfc:	8ca6221c 	lw	a2,8732(a1)
bfc08e00:	14430512 	bne	v0,v1,bfc0a24c <inst_error>
bfc08e04:	00000000 	nop
/home/csy/func/inst/n61_lh.S:33
bfc08e08:	3c090074 	lui	t1,0x74
bfc08e0c:	3529b9d0 	ori	t1,t1,0xb9d0
bfc08e10:	3c08800d 	lui	t0,0x800d
bfc08e14:	350817a8 	ori	t0,t0,0x17a8
bfc08e18:	2403b9d0 	li	v1,-17968
bfc08e1c:	3c010001 	lui	at,0x1
bfc08e20:	00280821 	addu	at,at,t0
bfc08e24:	ac29c28c 	sw	t1,-15732(at)
bfc08e28:	25040004 	addiu	a0,t0,4
bfc08e2c:	2505fff8 	addiu	a1,t0,-8
bfc08e30:	3c010001 	lui	at,0x1
bfc08e34:	00240821 	addu	at,at,a0
bfc08e38:	ac24c28c 	sw	a0,-15732(at)
bfc08e3c:	3c010001 	lui	at,0x1
bfc08e40:	00250821 	addu	at,at,a1
bfc08e44:	ac25c28c 	sw	a1,-15732(at)
bfc08e48:	3c020001 	lui	v0,0x1
bfc08e4c:	00481021 	addu	v0,v0,t0
bfc08e50:	8442c28c 	lh	v0,-15732(v0)
bfc08e54:	3c050001 	lui	a1,0x1
bfc08e58:	00a42821 	addu	a1,a1,a0
bfc08e5c:	8ca5c28c 	lw	a1,-15732(a1)
bfc08e60:	3c040001 	lui	a0,0x1
bfc08e64:	00852021 	addu	a0,a0,a1
bfc08e68:	8c84c28c 	lw	a0,-15732(a0)
bfc08e6c:	3c060001 	lui	a2,0x1
bfc08e70:	00c53021 	addu	a2,a2,a1
bfc08e74:	8cc6c28c 	lw	a2,-15732(a2)
bfc08e78:	144304f4 	bne	v0,v1,bfc0a24c <inst_error>
bfc08e7c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:34
bfc08e80:	3c091326 	lui	t1,0x1326
bfc08e84:	3529e800 	ori	t1,t1,0xe800
bfc08e88:	3c08800d 	lui	t0,0x800d
bfc08e8c:	35080848 	ori	t0,t0,0x848
bfc08e90:	24031326 	li	v1,4902
bfc08e94:	3c010001 	lui	at,0x1
bfc08e98:	00280821 	addu	at,at,t0
bfc08e9c:	ac29816c 	sw	t1,-32404(at)
bfc08ea0:	25040004 	addiu	a0,t0,4
bfc08ea4:	2505fff8 	addiu	a1,t0,-8
bfc08ea8:	3c010001 	lui	at,0x1
bfc08eac:	00240821 	addu	at,at,a0
bfc08eb0:	ac24816c 	sw	a0,-32404(at)
bfc08eb4:	3c010001 	lui	at,0x1
bfc08eb8:	00250821 	addu	at,at,a1
bfc08ebc:	ac25816c 	sw	a1,-32404(at)
bfc08ec0:	3c020001 	lui	v0,0x1
bfc08ec4:	00481021 	addu	v0,v0,t0
bfc08ec8:	8442816e 	lh	v0,-32402(v0)
bfc08ecc:	3c050001 	lui	a1,0x1
bfc08ed0:	00a42821 	addu	a1,a1,a0
bfc08ed4:	8ca5816c 	lw	a1,-32404(a1)
bfc08ed8:	3c040001 	lui	a0,0x1
bfc08edc:	00852021 	addu	a0,a0,a1
bfc08ee0:	8c84816c 	lw	a0,-32404(a0)
bfc08ee4:	3c060001 	lui	a2,0x1
bfc08ee8:	00c53021 	addu	a2,a2,a1
bfc08eec:	8cc6816c 	lw	a2,-32404(a2)
bfc08ef0:	144304d6 	bne	v0,v1,bfc0a24c <inst_error>
bfc08ef4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:35
bfc08ef8:	3c09b42e 	lui	t1,0xb42e
bfc08efc:	35295a40 	ori	t1,t1,0x5a40
bfc08f00:	3c08800d 	lui	t0,0x800d
bfc08f04:	35083b34 	ori	t0,t0,0x3b34
bfc08f08:	24035a40 	li	v1,23104
bfc08f0c:	ad0914d8 	sw	t1,5336(t0)
bfc08f10:	25040004 	addiu	a0,t0,4
bfc08f14:	2505fff8 	addiu	a1,t0,-8
bfc08f18:	ac8414d8 	sw	a0,5336(a0)
bfc08f1c:	aca514d8 	sw	a1,5336(a1)
bfc08f20:	850214d8 	lh	v0,5336(t0)
bfc08f24:	8c8514d8 	lw	a1,5336(a0)
bfc08f28:	8ca414d8 	lw	a0,5336(a1)
bfc08f2c:	8ca614d8 	lw	a2,5336(a1)
bfc08f30:	144304c6 	bne	v0,v1,bfc0a24c <inst_error>
bfc08f34:	00000000 	nop
/home/csy/func/inst/n61_lh.S:36
bfc08f38:	3c09783e 	lui	t1,0x783e
bfc08f3c:	35290a00 	ori	t1,t1,0xa00
bfc08f40:	3c08800d 	lui	t0,0x800d
bfc08f44:	35087838 	ori	t0,t0,0x7838
bfc08f48:	24030a00 	li	v1,2560
bfc08f4c:	ad092c3c 	sw	t1,11324(t0)
bfc08f50:	25040004 	addiu	a0,t0,4
bfc08f54:	2505fff8 	addiu	a1,t0,-8
bfc08f58:	ac842c3c 	sw	a0,11324(a0)
bfc08f5c:	aca52c3c 	sw	a1,11324(a1)
bfc08f60:	85022c3c 	lh	v0,11324(t0)
bfc08f64:	8c852c3c 	lw	a1,11324(a0)
bfc08f68:	8ca42c3c 	lw	a0,11324(a1)
bfc08f6c:	8ca62c3c 	lw	a2,11324(a1)
bfc08f70:	144304b6 	bne	v0,v1,bfc0a24c <inst_error>
bfc08f74:	00000000 	nop
/home/csy/func/inst/n61_lh.S:37
bfc08f78:	3c09d694 	lui	t1,0xd694
bfc08f7c:	35292958 	ori	t1,t1,0x2958
bfc08f80:	3c08800d 	lui	t0,0x800d
bfc08f84:	350853a8 	ori	t0,t0,0x53a8
bfc08f88:	2403d694 	li	v1,-10604
bfc08f8c:	ad095648 	sw	t1,22088(t0)
bfc08f90:	25040004 	addiu	a0,t0,4
bfc08f94:	2505fff8 	addiu	a1,t0,-8
bfc08f98:	ac845648 	sw	a0,22088(a0)
bfc08f9c:	aca55648 	sw	a1,22088(a1)
bfc08fa0:	8502564a 	lh	v0,22090(t0)
bfc08fa4:	8c855648 	lw	a1,22088(a0)
bfc08fa8:	8ca45648 	lw	a0,22088(a1)
bfc08fac:	8ca65648 	lw	a2,22088(a1)
bfc08fb0:	144304a6 	bne	v0,v1,bfc0a24c <inst_error>
bfc08fb4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:38
bfc08fb8:	3c099d23 	lui	t1,0x9d23
bfc08fbc:	35297d60 	ori	t1,t1,0x7d60
bfc08fc0:	3c08800d 	lui	t0,0x800d
bfc08fc4:	35080600 	ori	t0,t0,0x600
bfc08fc8:	24037d60 	li	v1,32096
bfc08fcc:	ad09590c 	sw	t1,22796(t0)
bfc08fd0:	25040004 	addiu	a0,t0,4
bfc08fd4:	2505fff8 	addiu	a1,t0,-8
bfc08fd8:	ac84590c 	sw	a0,22796(a0)
bfc08fdc:	aca5590c 	sw	a1,22796(a1)
bfc08fe0:	8502590c 	lh	v0,22796(t0)
bfc08fe4:	8c85590c 	lw	a1,22796(a0)
bfc08fe8:	8ca4590c 	lw	a0,22796(a1)
bfc08fec:	8ca6590c 	lw	a2,22796(a1)
bfc08ff0:	14430496 	bne	v0,v1,bfc0a24c <inst_error>
bfc08ff4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:39
bfc08ff8:	3c09098f 	lui	t1,0x98f
bfc08ffc:	35292730 	ori	t1,t1,0x2730
bfc09000:	3c08800d 	lui	t0,0x800d
bfc09004:	35081b58 	ori	t0,t0,0x1b58
bfc09008:	24032730 	li	v1,10032
bfc0900c:	3c010001 	lui	at,0x1
bfc09010:	00280821 	addu	at,at,t0
bfc09014:	ac2988a8 	sw	t1,-30552(at)
bfc09018:	25040004 	addiu	a0,t0,4
bfc0901c:	2505fff8 	addiu	a1,t0,-8
bfc09020:	3c010001 	lui	at,0x1
bfc09024:	00240821 	addu	at,at,a0
bfc09028:	ac2488a8 	sw	a0,-30552(at)
bfc0902c:	3c010001 	lui	at,0x1
bfc09030:	00250821 	addu	at,at,a1
bfc09034:	ac2588a8 	sw	a1,-30552(at)
bfc09038:	3c020001 	lui	v0,0x1
bfc0903c:	00481021 	addu	v0,v0,t0
bfc09040:	844288a8 	lh	v0,-30552(v0)
bfc09044:	3c050001 	lui	a1,0x1
bfc09048:	00a42821 	addu	a1,a1,a0
bfc0904c:	8ca588a8 	lw	a1,-30552(a1)
bfc09050:	3c040001 	lui	a0,0x1
bfc09054:	00852021 	addu	a0,a0,a1
bfc09058:	8c8488a8 	lw	a0,-30552(a0)
bfc0905c:	3c060001 	lui	a2,0x1
bfc09060:	00c53021 	addu	a2,a2,a1
bfc09064:	8cc688a8 	lw	a2,-30552(a2)
bfc09068:	14430478 	bne	v0,v1,bfc0a24c <inst_error>
bfc0906c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:40
bfc09070:	3c092ab8 	lui	t1,0x2ab8
bfc09074:	3529ce90 	ori	t1,t1,0xce90
bfc09078:	3c08800d 	lui	t0,0x800d
bfc0907c:	350831ec 	ori	t0,t0,0x31ec
bfc09080:	2403ce90 	li	v1,-12656
bfc09084:	ad0938d0 	sw	t1,14544(t0)
bfc09088:	25040004 	addiu	a0,t0,4
bfc0908c:	2505fff8 	addiu	a1,t0,-8
bfc09090:	ac8438d0 	sw	a0,14544(a0)
bfc09094:	aca538d0 	sw	a1,14544(a1)
bfc09098:	850238d0 	lh	v0,14544(t0)
bfc0909c:	8c8538d0 	lw	a1,14544(a0)
bfc090a0:	8ca438d0 	lw	a0,14544(a1)
bfc090a4:	8ca638d0 	lw	a2,14544(a1)
bfc090a8:	14430468 	bne	v0,v1,bfc0a24c <inst_error>
bfc090ac:	00000000 	nop
/home/csy/func/inst/n61_lh.S:41
bfc090b0:	3c0937fd 	lui	t1,0x37fd
bfc090b4:	3529bec8 	ori	t1,t1,0xbec8
bfc090b8:	3c08800d 	lui	t0,0x800d
bfc090bc:	35084890 	ori	t0,t0,0x4890
bfc090c0:	240337fd 	li	v1,14333
bfc090c4:	ad095bd0 	sw	t1,23504(t0)
bfc090c8:	25040004 	addiu	a0,t0,4
bfc090cc:	2505fff8 	addiu	a1,t0,-8
bfc090d0:	ac845bd0 	sw	a0,23504(a0)
bfc090d4:	aca55bd0 	sw	a1,23504(a1)
bfc090d8:	85025bd2 	lh	v0,23506(t0)
bfc090dc:	8c855bd0 	lw	a1,23504(a0)
bfc090e0:	8ca45bd0 	lw	a0,23504(a1)
bfc090e4:	8ca65bd0 	lw	a2,23504(a1)
bfc090e8:	14430458 	bne	v0,v1,bfc0a24c <inst_error>
bfc090ec:	00000000 	nop
/home/csy/func/inst/n61_lh.S:42
bfc090f0:	3c0934fc 	lui	t1,0x34fc
bfc090f4:	352933ac 	ori	t1,t1,0x33ac
bfc090f8:	3c08800d 	lui	t0,0x800d
bfc090fc:	35085448 	ori	t0,t0,0x5448
bfc09100:	240334fc 	li	v1,13564
bfc09104:	ad0916d0 	sw	t1,5840(t0)
bfc09108:	25040004 	addiu	a0,t0,4
bfc0910c:	2505fff8 	addiu	a1,t0,-8
bfc09110:	ac8416d0 	sw	a0,5840(a0)
bfc09114:	aca516d0 	sw	a1,5840(a1)
bfc09118:	850216d2 	lh	v0,5842(t0)
bfc0911c:	8c8516d0 	lw	a1,5840(a0)
bfc09120:	8ca416d0 	lw	a0,5840(a1)
bfc09124:	8ca616d0 	lw	a2,5840(a1)
bfc09128:	14430448 	bne	v0,v1,bfc0a24c <inst_error>
bfc0912c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:43
bfc09130:	3c09dcc1 	lui	t1,0xdcc1
bfc09134:	352944c8 	ori	t1,t1,0x44c8
bfc09138:	3c08800d 	lui	t0,0x800d
bfc0913c:	35086940 	ori	t0,t0,0x6940
bfc09140:	240344c8 	li	v1,17608
bfc09144:	ad09673c 	sw	t1,26428(t0)
bfc09148:	25040004 	addiu	a0,t0,4
bfc0914c:	2505fff8 	addiu	a1,t0,-8
bfc09150:	ac84673c 	sw	a0,26428(a0)
bfc09154:	aca5673c 	sw	a1,26428(a1)
bfc09158:	8502673c 	lh	v0,26428(t0)
bfc0915c:	8c85673c 	lw	a1,26428(a0)
bfc09160:	8ca4673c 	lw	a0,26428(a1)
bfc09164:	8ca6673c 	lw	a2,26428(a1)
bfc09168:	14430438 	bne	v0,v1,bfc0a24c <inst_error>
bfc0916c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:44
bfc09170:	3c093354 	lui	t1,0x3354
bfc09174:	3529e5b4 	ori	t1,t1,0xe5b4
bfc09178:	3c08800d 	lui	t0,0x800d
bfc0917c:	35085834 	ori	t0,t0,0x5834
bfc09180:	24033354 	li	v1,13140
bfc09184:	ad093924 	sw	t1,14628(t0)
bfc09188:	25040004 	addiu	a0,t0,4
bfc0918c:	2505fff8 	addiu	a1,t0,-8
bfc09190:	ac843924 	sw	a0,14628(a0)
bfc09194:	aca53924 	sw	a1,14628(a1)
bfc09198:	85023926 	lh	v0,14630(t0)
bfc0919c:	8c853924 	lw	a1,14628(a0)
bfc091a0:	8ca43924 	lw	a0,14628(a1)
bfc091a4:	8ca63924 	lw	a2,14628(a1)
bfc091a8:	14430428 	bne	v0,v1,bfc0a24c <inst_error>
bfc091ac:	00000000 	nop
/home/csy/func/inst/n61_lh.S:45
bfc091b0:	3c09b5e7 	lui	t1,0xb5e7
bfc091b4:	3529da8e 	ori	t1,t1,0xda8e
bfc091b8:	3c08800d 	lui	t0,0x800d
bfc091bc:	3508cc78 	ori	t0,t0,0xcc78
bfc091c0:	2403da8e 	li	v1,-9586
bfc091c4:	ad090800 	sw	t1,2048(t0)
bfc091c8:	25040004 	addiu	a0,t0,4
bfc091cc:	2505fff8 	addiu	a1,t0,-8
bfc091d0:	ac840800 	sw	a0,2048(a0)
bfc091d4:	aca50800 	sw	a1,2048(a1)
bfc091d8:	85020800 	lh	v0,2048(t0)
bfc091dc:	8c850800 	lw	a1,2048(a0)
bfc091e0:	8ca40800 	lw	a0,2048(a1)
bfc091e4:	8ca60800 	lw	a2,2048(a1)
bfc091e8:	14430418 	bne	v0,v1,bfc0a24c <inst_error>
bfc091ec:	00000000 	nop
/home/csy/func/inst/n61_lh.S:46
bfc091f0:	3c098c87 	lui	t1,0x8c87
bfc091f4:	3529a650 	ori	t1,t1,0xa650
bfc091f8:	3c08800d 	lui	t0,0x800d
bfc091fc:	35082d9c 	ori	t0,t0,0x2d9c
bfc09200:	2403a650 	li	v1,-22960
bfc09204:	ad096440 	sw	t1,25664(t0)
bfc09208:	25040004 	addiu	a0,t0,4
bfc0920c:	2505fff8 	addiu	a1,t0,-8
bfc09210:	ac846440 	sw	a0,25664(a0)
bfc09214:	aca56440 	sw	a1,25664(a1)
bfc09218:	85026440 	lh	v0,25664(t0)
bfc0921c:	8c856440 	lw	a1,25664(a0)
bfc09220:	8ca46440 	lw	a0,25664(a1)
bfc09224:	8ca66440 	lw	a2,25664(a1)
bfc09228:	14430408 	bne	v0,v1,bfc0a24c <inst_error>
bfc0922c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:47
bfc09230:	3c093df2 	lui	t1,0x3df2
bfc09234:	35299bc0 	ori	t1,t1,0x9bc0
bfc09238:	3c08800d 	lui	t0,0x800d
bfc0923c:	24033df2 	li	v1,15858
bfc09240:	3c010001 	lui	at,0x1
bfc09244:	00280821 	addu	at,at,t0
bfc09248:	ac29834c 	sw	t1,-31924(at)
bfc0924c:	25040004 	addiu	a0,t0,4
bfc09250:	2505fff8 	addiu	a1,t0,-8
bfc09254:	3c010001 	lui	at,0x1
bfc09258:	00240821 	addu	at,at,a0
bfc0925c:	ac24834c 	sw	a0,-31924(at)
bfc09260:	3c010001 	lui	at,0x1
bfc09264:	00250821 	addu	at,at,a1
bfc09268:	ac25834c 	sw	a1,-31924(at)
bfc0926c:	3c020001 	lui	v0,0x1
bfc09270:	00481021 	addu	v0,v0,t0
bfc09274:	8442834e 	lh	v0,-31922(v0)
bfc09278:	3c050001 	lui	a1,0x1
bfc0927c:	00a42821 	addu	a1,a1,a0
bfc09280:	8ca5834c 	lw	a1,-31924(a1)
bfc09284:	3c040001 	lui	a0,0x1
bfc09288:	00852021 	addu	a0,a0,a1
bfc0928c:	8c84834c 	lw	a0,-31924(a0)
bfc09290:	3c060001 	lui	a2,0x1
bfc09294:	00c53021 	addu	a2,a2,a1
bfc09298:	8cc6834c 	lw	a2,-31924(a2)
bfc0929c:	144303eb 	bne	v0,v1,bfc0a24c <inst_error>
bfc092a0:	00000000 	nop
/home/csy/func/inst/n61_lh.S:48
bfc092a4:	3c09975c 	lui	t1,0x975c
bfc092a8:	35293a5c 	ori	t1,t1,0x3a5c
bfc092ac:	3c08800d 	lui	t0,0x800d
bfc092b0:	24033a5c 	li	v1,14940
bfc092b4:	3c010001 	lui	at,0x1
bfc092b8:	00280821 	addu	at,at,t0
bfc092bc:	ac29e8cc 	sw	t1,-5940(at)
bfc092c0:	25040004 	addiu	a0,t0,4
bfc092c4:	2505fff8 	addiu	a1,t0,-8
bfc092c8:	3c010001 	lui	at,0x1
bfc092cc:	00240821 	addu	at,at,a0
bfc092d0:	ac24e8cc 	sw	a0,-5940(at)
bfc092d4:	3c010001 	lui	at,0x1
bfc092d8:	00250821 	addu	at,at,a1
bfc092dc:	ac25e8cc 	sw	a1,-5940(at)
bfc092e0:	3c020001 	lui	v0,0x1
bfc092e4:	00481021 	addu	v0,v0,t0
bfc092e8:	8442e8cc 	lh	v0,-5940(v0)
bfc092ec:	3c050001 	lui	a1,0x1
bfc092f0:	00a42821 	addu	a1,a1,a0
bfc092f4:	8ca5e8cc 	lw	a1,-5940(a1)
bfc092f8:	3c040001 	lui	a0,0x1
bfc092fc:	00852021 	addu	a0,a0,a1
bfc09300:	8c84e8cc 	lw	a0,-5940(a0)
bfc09304:	3c060001 	lui	a2,0x1
bfc09308:	00c53021 	addu	a2,a2,a1
bfc0930c:	8cc6e8cc 	lw	a2,-5940(a2)
bfc09310:	144303ce 	bne	v0,v1,bfc0a24c <inst_error>
bfc09314:	00000000 	nop
/home/csy/func/inst/n61_lh.S:49
bfc09318:	3c0929ab 	lui	t1,0x29ab
bfc0931c:	352953d6 	ori	t1,t1,0x53d6
bfc09320:	3c08800d 	lui	t0,0x800d
bfc09324:	240353d6 	li	v1,21462
bfc09328:	3c010001 	lui	at,0x1
bfc0932c:	00280821 	addu	at,at,t0
bfc09330:	ac2989e8 	sw	t1,-30232(at)
bfc09334:	25040004 	addiu	a0,t0,4
bfc09338:	2505fff8 	addiu	a1,t0,-8
bfc0933c:	3c010001 	lui	at,0x1
bfc09340:	00240821 	addu	at,at,a0
bfc09344:	ac2489e8 	sw	a0,-30232(at)
bfc09348:	3c010001 	lui	at,0x1
bfc0934c:	00250821 	addu	at,at,a1
bfc09350:	ac2589e8 	sw	a1,-30232(at)
bfc09354:	3c020001 	lui	v0,0x1
bfc09358:	00481021 	addu	v0,v0,t0
bfc0935c:	844289e8 	lh	v0,-30232(v0)
bfc09360:	3c050001 	lui	a1,0x1
bfc09364:	00a42821 	addu	a1,a1,a0
bfc09368:	8ca589e8 	lw	a1,-30232(a1)
bfc0936c:	3c040001 	lui	a0,0x1
bfc09370:	00852021 	addu	a0,a0,a1
bfc09374:	8c8489e8 	lw	a0,-30232(a0)
bfc09378:	3c060001 	lui	a2,0x1
bfc0937c:	00c53021 	addu	a2,a2,a1
bfc09380:	8cc689e8 	lw	a2,-30232(a2)
bfc09384:	144303b1 	bne	v0,v1,bfc0a24c <inst_error>
bfc09388:	00000000 	nop
/home/csy/func/inst/n61_lh.S:50
bfc0938c:	3c09763b 	lui	t1,0x763b
bfc09390:	35292600 	ori	t1,t1,0x2600
bfc09394:	3c08800d 	lui	t0,0x800d
bfc09398:	24032600 	li	v1,9728
bfc0939c:	ad093e7c 	sw	t1,15996(t0)
bfc093a0:	25040004 	addiu	a0,t0,4
bfc093a4:	2505fff8 	addiu	a1,t0,-8
bfc093a8:	ac843e7c 	sw	a0,15996(a0)
bfc093ac:	aca53e7c 	sw	a1,15996(a1)
bfc093b0:	85023e7c 	lh	v0,15996(t0)
bfc093b4:	8c853e7c 	lw	a1,15996(a0)
bfc093b8:	8ca43e7c 	lw	a0,15996(a1)
bfc093bc:	8ca63e7c 	lw	a2,15996(a1)
bfc093c0:	144303a2 	bne	v0,v1,bfc0a24c <inst_error>
bfc093c4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:51
bfc093c8:	3c09774e 	lui	t1,0x774e
bfc093cc:	3529d370 	ori	t1,t1,0xd370
bfc093d0:	3c08800d 	lui	t0,0x800d
bfc093d4:	2403d370 	li	v1,-11408
bfc093d8:	3c010001 	lui	at,0x1
bfc093dc:	00280821 	addu	at,at,t0
bfc093e0:	ac29a760 	sw	t1,-22688(at)
bfc093e4:	25040004 	addiu	a0,t0,4
bfc093e8:	2505fff8 	addiu	a1,t0,-8
bfc093ec:	3c010001 	lui	at,0x1
bfc093f0:	00240821 	addu	at,at,a0
bfc093f4:	ac24a760 	sw	a0,-22688(at)
bfc093f8:	3c010001 	lui	at,0x1
bfc093fc:	00250821 	addu	at,at,a1
bfc09400:	ac25a760 	sw	a1,-22688(at)
bfc09404:	3c020001 	lui	v0,0x1
bfc09408:	00481021 	addu	v0,v0,t0
bfc0940c:	8442a760 	lh	v0,-22688(v0)
bfc09410:	3c050001 	lui	a1,0x1
bfc09414:	00a42821 	addu	a1,a1,a0
bfc09418:	8ca5a760 	lw	a1,-22688(a1)
bfc0941c:	3c040001 	lui	a0,0x1
bfc09420:	00852021 	addu	a0,a0,a1
bfc09424:	8c84a760 	lw	a0,-22688(a0)
bfc09428:	3c060001 	lui	a2,0x1
bfc0942c:	00c53021 	addu	a2,a2,a1
bfc09430:	8cc6a760 	lw	a2,-22688(a2)
bfc09434:	14430385 	bne	v0,v1,bfc0a24c <inst_error>
bfc09438:	00000000 	nop
/home/csy/func/inst/n61_lh.S:52
bfc0943c:	3c098e24 	lui	t1,0x8e24
bfc09440:	3529d680 	ori	t1,t1,0xd680
bfc09444:	3c08800d 	lui	t0,0x800d
bfc09448:	2403d680 	li	v1,-10624
bfc0944c:	3c010001 	lui	at,0x1
bfc09450:	00280821 	addu	at,at,t0
bfc09454:	ac29ffe0 	sw	t1,-32(at)
bfc09458:	25040004 	addiu	a0,t0,4
bfc0945c:	2505fff8 	addiu	a1,t0,-8
bfc09460:	3c010001 	lui	at,0x1
bfc09464:	00240821 	addu	at,at,a0
bfc09468:	ac24ffe0 	sw	a0,-32(at)
bfc0946c:	3c010001 	lui	at,0x1
bfc09470:	00250821 	addu	at,at,a1
bfc09474:	ac25ffe0 	sw	a1,-32(at)
bfc09478:	3c020001 	lui	v0,0x1
bfc0947c:	00481021 	addu	v0,v0,t0
bfc09480:	8442ffe0 	lh	v0,-32(v0)
bfc09484:	3c050001 	lui	a1,0x1
bfc09488:	00a42821 	addu	a1,a1,a0
bfc0948c:	8ca5ffe0 	lw	a1,-32(a1)
bfc09490:	3c040001 	lui	a0,0x1
bfc09494:	00852021 	addu	a0,a0,a1
bfc09498:	8c84ffe0 	lw	a0,-32(a0)
bfc0949c:	3c060001 	lui	a2,0x1
bfc094a0:	00c53021 	addu	a2,a2,a1
bfc094a4:	8cc6ffe0 	lw	a2,-32(a2)
bfc094a8:	14430368 	bne	v0,v1,bfc0a24c <inst_error>
bfc094ac:	00000000 	nop
/home/csy/func/inst/n61_lh.S:53
bfc094b0:	3c09fe39 	lui	t1,0xfe39
bfc094b4:	352936cb 	ori	t1,t1,0x36cb
bfc094b8:	3c08800d 	lui	t0,0x800d
bfc094bc:	240336cb 	li	v1,14027
bfc094c0:	ad0917b0 	sw	t1,6064(t0)
bfc094c4:	25040004 	addiu	a0,t0,4
bfc094c8:	2505fff8 	addiu	a1,t0,-8
bfc094cc:	ac8417b0 	sw	a0,6064(a0)
bfc094d0:	aca517b0 	sw	a1,6064(a1)
bfc094d4:	850217b0 	lh	v0,6064(t0)
bfc094d8:	8c8517b0 	lw	a1,6064(a0)
bfc094dc:	8ca417b0 	lw	a0,6064(a1)
bfc094e0:	8ca617b0 	lw	a2,6064(a1)
bfc094e4:	14430359 	bne	v0,v1,bfc0a24c <inst_error>
bfc094e8:	00000000 	nop
/home/csy/func/inst/n61_lh.S:54
bfc094ec:	3c090b89 	lui	t1,0xb89
bfc094f0:	35292a40 	ori	t1,t1,0x2a40
bfc094f4:	3c08800d 	lui	t0,0x800d
bfc094f8:	24030b89 	li	v1,2953
bfc094fc:	3c010001 	lui	at,0x1
bfc09500:	00280821 	addu	at,at,t0
bfc09504:	ac29b038 	sw	t1,-20424(at)
bfc09508:	25040004 	addiu	a0,t0,4
bfc0950c:	2505fff8 	addiu	a1,t0,-8
bfc09510:	3c010001 	lui	at,0x1
bfc09514:	00240821 	addu	at,at,a0
bfc09518:	ac24b038 	sw	a0,-20424(at)
bfc0951c:	3c010001 	lui	at,0x1
bfc09520:	00250821 	addu	at,at,a1
bfc09524:	ac25b038 	sw	a1,-20424(at)
bfc09528:	3c020001 	lui	v0,0x1
bfc0952c:	00481021 	addu	v0,v0,t0
bfc09530:	8442b03a 	lh	v0,-20422(v0)
bfc09534:	3c050001 	lui	a1,0x1
bfc09538:	00a42821 	addu	a1,a1,a0
bfc0953c:	8ca5b038 	lw	a1,-20424(a1)
bfc09540:	3c040001 	lui	a0,0x1
bfc09544:	00852021 	addu	a0,a0,a1
bfc09548:	8c84b038 	lw	a0,-20424(a0)
bfc0954c:	3c060001 	lui	a2,0x1
bfc09550:	00c53021 	addu	a2,a2,a1
bfc09554:	8cc6b038 	lw	a2,-20424(a2)
bfc09558:	1443033c 	bne	v0,v1,bfc0a24c <inst_error>
bfc0955c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:55
bfc09560:	3c09d92f 	lui	t1,0xd92f
bfc09564:	3529e108 	ori	t1,t1,0xe108
bfc09568:	3c08800d 	lui	t0,0x800d
bfc0956c:	2403e108 	li	v1,-7928
bfc09570:	ad095d48 	sw	t1,23880(t0)
bfc09574:	25040004 	addiu	a0,t0,4
bfc09578:	2505fff8 	addiu	a1,t0,-8
bfc0957c:	ac845d48 	sw	a0,23880(a0)
bfc09580:	aca55d48 	sw	a1,23880(a1)
bfc09584:	85025d48 	lh	v0,23880(t0)
bfc09588:	8c855d48 	lw	a1,23880(a0)
bfc0958c:	8ca45d48 	lw	a0,23880(a1)
bfc09590:	8ca65d48 	lw	a2,23880(a1)
bfc09594:	1443032d 	bne	v0,v1,bfc0a24c <inst_error>
bfc09598:	00000000 	nop
/home/csy/func/inst/n61_lh.S:56
bfc0959c:	3c094c4b 	lui	t1,0x4c4b
bfc095a0:	3529c954 	ori	t1,t1,0xc954
bfc095a4:	3c08800d 	lui	t0,0x800d
bfc095a8:	2403c954 	li	v1,-13996
bfc095ac:	ad092258 	sw	t1,8792(t0)
bfc095b0:	25040004 	addiu	a0,t0,4
bfc095b4:	2505fff8 	addiu	a1,t0,-8
bfc095b8:	ac842258 	sw	a0,8792(a0)
bfc095bc:	aca52258 	sw	a1,8792(a1)
bfc095c0:	85022258 	lh	v0,8792(t0)
bfc095c4:	8c852258 	lw	a1,8792(a0)
bfc095c8:	8ca42258 	lw	a0,8792(a1)
bfc095cc:	8ca62258 	lw	a2,8792(a1)
bfc095d0:	1443031e 	bne	v0,v1,bfc0a24c <inst_error>
bfc095d4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:57
bfc095d8:	3c09b7ba 	lui	t1,0xb7ba
bfc095dc:	3529ba40 	ori	t1,t1,0xba40
bfc095e0:	3c08800d 	lui	t0,0x800d
bfc095e4:	2403b7ba 	li	v1,-18502
bfc095e8:	3c010001 	lui	at,0x1
bfc095ec:	00280821 	addu	at,at,t0
bfc095f0:	ac29a104 	sw	t1,-24316(at)
bfc095f4:	25040004 	addiu	a0,t0,4
bfc095f8:	2505fff8 	addiu	a1,t0,-8
bfc095fc:	3c010001 	lui	at,0x1
bfc09600:	00240821 	addu	at,at,a0
bfc09604:	ac24a104 	sw	a0,-24316(at)
bfc09608:	3c010001 	lui	at,0x1
bfc0960c:	00250821 	addu	at,at,a1
bfc09610:	ac25a104 	sw	a1,-24316(at)
bfc09614:	3c020001 	lui	v0,0x1
bfc09618:	00481021 	addu	v0,v0,t0
bfc0961c:	8442a106 	lh	v0,-24314(v0)
bfc09620:	3c050001 	lui	a1,0x1
bfc09624:	00a42821 	addu	a1,a1,a0
bfc09628:	8ca5a104 	lw	a1,-24316(a1)
bfc0962c:	3c040001 	lui	a0,0x1
bfc09630:	00852021 	addu	a0,a0,a1
bfc09634:	8c84a104 	lw	a0,-24316(a0)
bfc09638:	3c060001 	lui	a2,0x1
bfc0963c:	00c53021 	addu	a2,a2,a1
bfc09640:	8cc6a104 	lw	a2,-24316(a2)
bfc09644:	14430301 	bne	v0,v1,bfc0a24c <inst_error>
bfc09648:	00000000 	nop
/home/csy/func/inst/n61_lh.S:58
bfc0964c:	3c098a75 	lui	t1,0x8a75
bfc09650:	35294a34 	ori	t1,t1,0x4a34
bfc09654:	3c08800d 	lui	t0,0x800d
bfc09658:	24034a34 	li	v1,18996
bfc0965c:	ad0953a8 	sw	t1,21416(t0)
bfc09660:	25040004 	addiu	a0,t0,4
bfc09664:	2505fff8 	addiu	a1,t0,-8
bfc09668:	ac8453a8 	sw	a0,21416(a0)
bfc0966c:	aca553a8 	sw	a1,21416(a1)
bfc09670:	850253a8 	lh	v0,21416(t0)
bfc09674:	8c8553a8 	lw	a1,21416(a0)
bfc09678:	8ca453a8 	lw	a0,21416(a1)
bfc0967c:	8ca653a8 	lw	a2,21416(a1)
bfc09680:	144302f2 	bne	v0,v1,bfc0a24c <inst_error>
bfc09684:	00000000 	nop
/home/csy/func/inst/n61_lh.S:59
bfc09688:	3c09062c 	lui	t1,0x62c
bfc0968c:	35290990 	ori	t1,t1,0x990
bfc09690:	3c08800d 	lui	t0,0x800d
bfc09694:	24030990 	li	v1,2448
bfc09698:	3c010001 	lui	at,0x1
bfc0969c:	00280821 	addu	at,at,t0
bfc096a0:	ac29b7c0 	sw	t1,-18496(at)
bfc096a4:	25040004 	addiu	a0,t0,4
bfc096a8:	2505fff8 	addiu	a1,t0,-8
bfc096ac:	3c010001 	lui	at,0x1
bfc096b0:	00240821 	addu	at,at,a0
bfc096b4:	ac24b7c0 	sw	a0,-18496(at)
bfc096b8:	3c010001 	lui	at,0x1
bfc096bc:	00250821 	addu	at,at,a1
bfc096c0:	ac25b7c0 	sw	a1,-18496(at)
bfc096c4:	3c020001 	lui	v0,0x1
bfc096c8:	00481021 	addu	v0,v0,t0
bfc096cc:	8442b7c0 	lh	v0,-18496(v0)
bfc096d0:	3c050001 	lui	a1,0x1
bfc096d4:	00a42821 	addu	a1,a1,a0
bfc096d8:	8ca5b7c0 	lw	a1,-18496(a1)
bfc096dc:	3c040001 	lui	a0,0x1
bfc096e0:	00852021 	addu	a0,a0,a1
bfc096e4:	8c84b7c0 	lw	a0,-18496(a0)
bfc096e8:	3c060001 	lui	a2,0x1
bfc096ec:	00c53021 	addu	a2,a2,a1
bfc096f0:	8cc6b7c0 	lw	a2,-18496(a2)
bfc096f4:	144302d5 	bne	v0,v1,bfc0a24c <inst_error>
bfc096f8:	00000000 	nop
/home/csy/func/inst/n61_lh.S:60
bfc096fc:	3c09f3c0 	lui	t1,0xf3c0
bfc09700:	3529fc50 	ori	t1,t1,0xfc50
bfc09704:	3c08800d 	lui	t0,0x800d
bfc09708:	2403f3c0 	li	v1,-3136
bfc0970c:	3c010001 	lui	at,0x1
bfc09710:	00280821 	addu	at,at,t0
bfc09714:	ac29e690 	sw	t1,-6512(at)
bfc09718:	25040004 	addiu	a0,t0,4
bfc0971c:	2505fff8 	addiu	a1,t0,-8
bfc09720:	3c010001 	lui	at,0x1
bfc09724:	00240821 	addu	at,at,a0
bfc09728:	ac24e690 	sw	a0,-6512(at)
bfc0972c:	3c010001 	lui	at,0x1
bfc09730:	00250821 	addu	at,at,a1
bfc09734:	ac25e690 	sw	a1,-6512(at)
bfc09738:	3c020001 	lui	v0,0x1
bfc0973c:	00481021 	addu	v0,v0,t0
bfc09740:	8442e692 	lh	v0,-6510(v0)
bfc09744:	3c050001 	lui	a1,0x1
bfc09748:	00a42821 	addu	a1,a1,a0
bfc0974c:	8ca5e690 	lw	a1,-6512(a1)
bfc09750:	3c040001 	lui	a0,0x1
bfc09754:	00852021 	addu	a0,a0,a1
bfc09758:	8c84e690 	lw	a0,-6512(a0)
bfc0975c:	3c060001 	lui	a2,0x1
bfc09760:	00c53021 	addu	a2,a2,a1
bfc09764:	8cc6e690 	lw	a2,-6512(a2)
bfc09768:	144302b8 	bne	v0,v1,bfc0a24c <inst_error>
bfc0976c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:61
bfc09770:	3c09941e 	lui	t1,0x941e
bfc09774:	35291b70 	ori	t1,t1,0x1b70
bfc09778:	3c08800d 	lui	t0,0x800d
bfc0977c:	24031b70 	li	v1,7024
bfc09780:	3c010001 	lui	at,0x1
bfc09784:	00280821 	addu	at,at,t0
bfc09788:	ac299544 	sw	t1,-27324(at)
bfc0978c:	25040004 	addiu	a0,t0,4
bfc09790:	2505fff8 	addiu	a1,t0,-8
bfc09794:	3c010001 	lui	at,0x1
bfc09798:	00240821 	addu	at,at,a0
bfc0979c:	ac249544 	sw	a0,-27324(at)
bfc097a0:	3c010001 	lui	at,0x1
bfc097a4:	00250821 	addu	at,at,a1
bfc097a8:	ac259544 	sw	a1,-27324(at)
bfc097ac:	3c020001 	lui	v0,0x1
bfc097b0:	00481021 	addu	v0,v0,t0
bfc097b4:	84429544 	lh	v0,-27324(v0)
bfc097b8:	3c050001 	lui	a1,0x1
bfc097bc:	00a42821 	addu	a1,a1,a0
bfc097c0:	8ca59544 	lw	a1,-27324(a1)
bfc097c4:	3c040001 	lui	a0,0x1
bfc097c8:	00852021 	addu	a0,a0,a1
bfc097cc:	8c849544 	lw	a0,-27324(a0)
bfc097d0:	3c060001 	lui	a2,0x1
bfc097d4:	00c53021 	addu	a2,a2,a1
bfc097d8:	8cc69544 	lw	a2,-27324(a2)
bfc097dc:	1443029b 	bne	v0,v1,bfc0a24c <inst_error>
bfc097e0:	00000000 	nop
/home/csy/func/inst/n61_lh.S:62
bfc097e4:	3c0906a8 	lui	t1,0x6a8
bfc097e8:	3529f600 	ori	t1,t1,0xf600
bfc097ec:	3c08800d 	lui	t0,0x800d
bfc097f0:	240306a8 	li	v1,1704
bfc097f4:	3c010001 	lui	at,0x1
bfc097f8:	00280821 	addu	at,at,t0
bfc097fc:	ac29c14c 	sw	t1,-16052(at)
bfc09800:	25040004 	addiu	a0,t0,4
bfc09804:	2505fff8 	addiu	a1,t0,-8
bfc09808:	3c010001 	lui	at,0x1
bfc0980c:	00240821 	addu	at,at,a0
bfc09810:	ac24c14c 	sw	a0,-16052(at)
bfc09814:	3c010001 	lui	at,0x1
bfc09818:	00250821 	addu	at,at,a1
bfc0981c:	ac25c14c 	sw	a1,-16052(at)
bfc09820:	3c020001 	lui	v0,0x1
bfc09824:	00481021 	addu	v0,v0,t0
bfc09828:	8442c14e 	lh	v0,-16050(v0)
bfc0982c:	3c050001 	lui	a1,0x1
bfc09830:	00a42821 	addu	a1,a1,a0
bfc09834:	8ca5c14c 	lw	a1,-16052(a1)
bfc09838:	3c040001 	lui	a0,0x1
bfc0983c:	00852021 	addu	a0,a0,a1
bfc09840:	8c84c14c 	lw	a0,-16052(a0)
bfc09844:	3c060001 	lui	a2,0x1
bfc09848:	00c53021 	addu	a2,a2,a1
bfc0984c:	8cc6c14c 	lw	a2,-16052(a2)
bfc09850:	1443027e 	bne	v0,v1,bfc0a24c <inst_error>
bfc09854:	00000000 	nop
/home/csy/func/inst/n61_lh.S:63
bfc09858:	3c09f0c9 	lui	t1,0xf0c9
bfc0985c:	3529f8c0 	ori	t1,t1,0xf8c0
bfc09860:	3c08800d 	lui	t0,0x800d
bfc09864:	2403f0c9 	li	v1,-3895
bfc09868:	ad094154 	sw	t1,16724(t0)
bfc0986c:	25040004 	addiu	a0,t0,4
bfc09870:	2505fff8 	addiu	a1,t0,-8
bfc09874:	ac844154 	sw	a0,16724(a0)
bfc09878:	aca54154 	sw	a1,16724(a1)
bfc0987c:	85024156 	lh	v0,16726(t0)
bfc09880:	8c854154 	lw	a1,16724(a0)
bfc09884:	8ca44154 	lw	a0,16724(a1)
bfc09888:	8ca64154 	lw	a2,16724(a1)
bfc0988c:	1443026f 	bne	v0,v1,bfc0a24c <inst_error>
bfc09890:	00000000 	nop
/home/csy/func/inst/n61_lh.S:64
bfc09894:	3c096d67 	lui	t1,0x6d67
bfc09898:	3529df7c 	ori	t1,t1,0xdf7c
bfc0989c:	3c08800d 	lui	t0,0x800d
bfc098a0:	24036d67 	li	v1,28007
bfc098a4:	ad091ce4 	sw	t1,7396(t0)
bfc098a8:	25040004 	addiu	a0,t0,4
bfc098ac:	2505fff8 	addiu	a1,t0,-8
bfc098b0:	ac841ce4 	sw	a0,7396(a0)
bfc098b4:	aca51ce4 	sw	a1,7396(a1)
bfc098b8:	85021ce6 	lh	v0,7398(t0)
bfc098bc:	8c851ce4 	lw	a1,7396(a0)
bfc098c0:	8ca41ce4 	lw	a0,7396(a1)
bfc098c4:	8ca61ce4 	lw	a2,7396(a1)
bfc098c8:	14430260 	bne	v0,v1,bfc0a24c <inst_error>
bfc098cc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:65
bfc098d0:	3c097b5c 	lui	t1,0x7b5c
bfc098d4:	35298c40 	ori	t1,t1,0x8c40
bfc098d8:	3c08800d 	lui	t0,0x800d
bfc098dc:	24038c40 	li	v1,-29632
bfc098e0:	3c010001 	lui	at,0x1
bfc098e4:	00280821 	addu	at,at,t0
bfc098e8:	ac29a170 	sw	t1,-24208(at)
bfc098ec:	25040004 	addiu	a0,t0,4
bfc098f0:	2505fff8 	addiu	a1,t0,-8
bfc098f4:	3c010001 	lui	at,0x1
bfc098f8:	00240821 	addu	at,at,a0
bfc098fc:	ac24a170 	sw	a0,-24208(at)
bfc09900:	3c010001 	lui	at,0x1
bfc09904:	00250821 	addu	at,at,a1
bfc09908:	ac25a170 	sw	a1,-24208(at)
bfc0990c:	3c020001 	lui	v0,0x1
bfc09910:	00481021 	addu	v0,v0,t0
bfc09914:	8442a170 	lh	v0,-24208(v0)
bfc09918:	3c050001 	lui	a1,0x1
bfc0991c:	00a42821 	addu	a1,a1,a0
bfc09920:	8ca5a170 	lw	a1,-24208(a1)
bfc09924:	3c040001 	lui	a0,0x1
bfc09928:	00852021 	addu	a0,a0,a1
bfc0992c:	8c84a170 	lw	a0,-24208(a0)
bfc09930:	3c060001 	lui	a2,0x1
bfc09934:	00c53021 	addu	a2,a2,a1
bfc09938:	8cc6a170 	lw	a2,-24208(a2)
bfc0993c:	14430243 	bne	v0,v1,bfc0a24c <inst_error>
bfc09940:	00000000 	nop
/home/csy/func/inst/n61_lh.S:66
bfc09944:	3c09a01d 	lui	t1,0xa01d
bfc09948:	352988d6 	ori	t1,t1,0x88d6
bfc0994c:	3c08800d 	lui	t0,0x800d
bfc09950:	2403a01d 	li	v1,-24547
bfc09954:	3c010001 	lui	at,0x1
bfc09958:	00280821 	addu	at,at,t0
bfc0995c:	ac29f234 	sw	t1,-3532(at)
bfc09960:	25040004 	addiu	a0,t0,4
bfc09964:	2505fff8 	addiu	a1,t0,-8
bfc09968:	3c010001 	lui	at,0x1
bfc0996c:	00240821 	addu	at,at,a0
bfc09970:	ac24f234 	sw	a0,-3532(at)
bfc09974:	3c010001 	lui	at,0x1
bfc09978:	00250821 	addu	at,at,a1
bfc0997c:	ac25f234 	sw	a1,-3532(at)
bfc09980:	3c020001 	lui	v0,0x1
bfc09984:	00481021 	addu	v0,v0,t0
bfc09988:	8442f236 	lh	v0,-3530(v0)
bfc0998c:	3c050001 	lui	a1,0x1
bfc09990:	00a42821 	addu	a1,a1,a0
bfc09994:	8ca5f234 	lw	a1,-3532(a1)
bfc09998:	3c040001 	lui	a0,0x1
bfc0999c:	00852021 	addu	a0,a0,a1
bfc099a0:	8c84f234 	lw	a0,-3532(a0)
bfc099a4:	3c060001 	lui	a2,0x1
bfc099a8:	00c53021 	addu	a2,a2,a1
bfc099ac:	8cc6f234 	lw	a2,-3532(a2)
bfc099b0:	14430226 	bne	v0,v1,bfc0a24c <inst_error>
bfc099b4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:67
bfc099b8:	3c09bb91 	lui	t1,0xbb91
bfc099bc:	3529715e 	ori	t1,t1,0x715e
bfc099c0:	3c08800d 	lui	t0,0x800d
bfc099c4:	2403bb91 	li	v1,-17519
bfc099c8:	3c010001 	lui	at,0x1
bfc099cc:	00280821 	addu	at,at,t0
bfc099d0:	ac29ea5c 	sw	t1,-5540(at)
bfc099d4:	25040004 	addiu	a0,t0,4
bfc099d8:	2505fff8 	addiu	a1,t0,-8
bfc099dc:	3c010001 	lui	at,0x1
bfc099e0:	00240821 	addu	at,at,a0
bfc099e4:	ac24ea5c 	sw	a0,-5540(at)
bfc099e8:	3c010001 	lui	at,0x1
bfc099ec:	00250821 	addu	at,at,a1
bfc099f0:	ac25ea5c 	sw	a1,-5540(at)
bfc099f4:	3c020001 	lui	v0,0x1
bfc099f8:	00481021 	addu	v0,v0,t0
bfc099fc:	8442ea5e 	lh	v0,-5538(v0)
bfc09a00:	3c050001 	lui	a1,0x1
bfc09a04:	00a42821 	addu	a1,a1,a0
bfc09a08:	8ca5ea5c 	lw	a1,-5540(a1)
bfc09a0c:	3c040001 	lui	a0,0x1
bfc09a10:	00852021 	addu	a0,a0,a1
bfc09a14:	8c84ea5c 	lw	a0,-5540(a0)
bfc09a18:	3c060001 	lui	a2,0x1
bfc09a1c:	00c53021 	addu	a2,a2,a1
bfc09a20:	8cc6ea5c 	lw	a2,-5540(a2)
bfc09a24:	14430209 	bne	v0,v1,bfc0a24c <inst_error>
bfc09a28:	00000000 	nop
/home/csy/func/inst/n61_lh.S:68
bfc09a2c:	3c09a208 	lui	t1,0xa208
bfc09a30:	35296268 	ori	t1,t1,0x6268
bfc09a34:	3c08800d 	lui	t0,0x800d
bfc09a38:	24036268 	li	v1,25192
bfc09a3c:	3c010001 	lui	at,0x1
bfc09a40:	00280821 	addu	at,at,t0
bfc09a44:	ac29ae6c 	sw	t1,-20884(at)
bfc09a48:	25040004 	addiu	a0,t0,4
bfc09a4c:	2505fff8 	addiu	a1,t0,-8
bfc09a50:	3c010001 	lui	at,0x1
bfc09a54:	00240821 	addu	at,at,a0
bfc09a58:	ac24ae6c 	sw	a0,-20884(at)
bfc09a5c:	3c010001 	lui	at,0x1
bfc09a60:	00250821 	addu	at,at,a1
bfc09a64:	ac25ae6c 	sw	a1,-20884(at)
bfc09a68:	3c020001 	lui	v0,0x1
bfc09a6c:	00481021 	addu	v0,v0,t0
bfc09a70:	8442ae6c 	lh	v0,-20884(v0)
bfc09a74:	3c050001 	lui	a1,0x1
bfc09a78:	00a42821 	addu	a1,a1,a0
bfc09a7c:	8ca5ae6c 	lw	a1,-20884(a1)
bfc09a80:	3c040001 	lui	a0,0x1
bfc09a84:	00852021 	addu	a0,a0,a1
bfc09a88:	8c84ae6c 	lw	a0,-20884(a0)
bfc09a8c:	3c060001 	lui	a2,0x1
bfc09a90:	00c53021 	addu	a2,a2,a1
bfc09a94:	8cc6ae6c 	lw	a2,-20884(a2)
bfc09a98:	144301ec 	bne	v0,v1,bfc0a24c <inst_error>
bfc09a9c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:69
bfc09aa0:	3c09c16e 	lui	t1,0xc16e
bfc09aa4:	35297fd2 	ori	t1,t1,0x7fd2
bfc09aa8:	3c08800d 	lui	t0,0x800d
bfc09aac:	24037fd2 	li	v1,32722
bfc09ab0:	ad0910e4 	sw	t1,4324(t0)
bfc09ab4:	25040004 	addiu	a0,t0,4
bfc09ab8:	2505fff8 	addiu	a1,t0,-8
bfc09abc:	ac8410e4 	sw	a0,4324(a0)
bfc09ac0:	aca510e4 	sw	a1,4324(a1)
bfc09ac4:	850210e4 	lh	v0,4324(t0)
bfc09ac8:	8c8510e4 	lw	a1,4324(a0)
bfc09acc:	8ca410e4 	lw	a0,4324(a1)
bfc09ad0:	8ca610e4 	lw	a2,4324(a1)
bfc09ad4:	144301dd 	bne	v0,v1,bfc0a24c <inst_error>
bfc09ad8:	00000000 	nop
/home/csy/func/inst/n61_lh.S:70
bfc09adc:	3c09f26f 	lui	t1,0xf26f
bfc09ae0:	35290540 	ori	t1,t1,0x540
bfc09ae4:	3c08800d 	lui	t0,0x800d
bfc09ae8:	24030540 	li	v1,1344
bfc09aec:	ad097fb8 	sw	t1,32696(t0)
bfc09af0:	25040004 	addiu	a0,t0,4
bfc09af4:	2505fff8 	addiu	a1,t0,-8
bfc09af8:	ac847fb8 	sw	a0,32696(a0)
bfc09afc:	aca57fb8 	sw	a1,32696(a1)
bfc09b00:	85027fb8 	lh	v0,32696(t0)
bfc09b04:	8c857fb8 	lw	a1,32696(a0)
bfc09b08:	8ca47fb8 	lw	a0,32696(a1)
bfc09b0c:	8ca67fb8 	lw	a2,32696(a1)
bfc09b10:	144301ce 	bne	v0,v1,bfc0a24c <inst_error>
bfc09b14:	00000000 	nop
/home/csy/func/inst/n61_lh.S:71
bfc09b18:	3c095df5 	lui	t1,0x5df5
bfc09b1c:	3529b227 	ori	t1,t1,0xb227
bfc09b20:	3c08800d 	lui	t0,0x800d
bfc09b24:	24035df5 	li	v1,24053
bfc09b28:	ad092b54 	sw	t1,11092(t0)
bfc09b2c:	25040004 	addiu	a0,t0,4
bfc09b30:	2505fff8 	addiu	a1,t0,-8
bfc09b34:	ac842b54 	sw	a0,11092(a0)
bfc09b38:	aca52b54 	sw	a1,11092(a1)
bfc09b3c:	85022b56 	lh	v0,11094(t0)
bfc09b40:	8c852b54 	lw	a1,11092(a0)
bfc09b44:	8ca42b54 	lw	a0,11092(a1)
bfc09b48:	8ca62b54 	lw	a2,11092(a1)
bfc09b4c:	144301bf 	bne	v0,v1,bfc0a24c <inst_error>
bfc09b50:	00000000 	nop
/home/csy/func/inst/n61_lh.S:72
bfc09b54:	3c0917cb 	lui	t1,0x17cb
bfc09b58:	35292286 	ori	t1,t1,0x2286
bfc09b5c:	3c08800d 	lui	t0,0x800d
bfc09b60:	24032286 	li	v1,8838
bfc09b64:	3c010001 	lui	at,0x1
bfc09b68:	00280821 	addu	at,at,t0
bfc09b6c:	ac29a610 	sw	t1,-23024(at)
bfc09b70:	25040004 	addiu	a0,t0,4
bfc09b74:	2505fff8 	addiu	a1,t0,-8
bfc09b78:	3c010001 	lui	at,0x1
bfc09b7c:	00240821 	addu	at,at,a0
bfc09b80:	ac24a610 	sw	a0,-23024(at)
bfc09b84:	3c010001 	lui	at,0x1
bfc09b88:	00250821 	addu	at,at,a1
bfc09b8c:	ac25a610 	sw	a1,-23024(at)
bfc09b90:	3c020001 	lui	v0,0x1
bfc09b94:	00481021 	addu	v0,v0,t0
bfc09b98:	8442a610 	lh	v0,-23024(v0)
bfc09b9c:	3c050001 	lui	a1,0x1
bfc09ba0:	00a42821 	addu	a1,a1,a0
bfc09ba4:	8ca5a610 	lw	a1,-23024(a1)
bfc09ba8:	3c040001 	lui	a0,0x1
bfc09bac:	00852021 	addu	a0,a0,a1
bfc09bb0:	8c84a610 	lw	a0,-23024(a0)
bfc09bb4:	3c060001 	lui	a2,0x1
bfc09bb8:	00c53021 	addu	a2,a2,a1
bfc09bbc:	8cc6a610 	lw	a2,-23024(a2)
bfc09bc0:	144301a2 	bne	v0,v1,bfc0a24c <inst_error>
bfc09bc4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:73
bfc09bc8:	3c09cc5b 	lui	t1,0xcc5b
bfc09bcc:	35292bee 	ori	t1,t1,0x2bee
bfc09bd0:	3c08800d 	lui	t0,0x800d
bfc09bd4:	2403cc5b 	li	v1,-13221
bfc09bd8:	3c010001 	lui	at,0x1
bfc09bdc:	00280821 	addu	at,at,t0
bfc09be0:	ac29ba30 	sw	t1,-17872(at)
bfc09be4:	25040004 	addiu	a0,t0,4
bfc09be8:	2505fff8 	addiu	a1,t0,-8
bfc09bec:	3c010001 	lui	at,0x1
bfc09bf0:	00240821 	addu	at,at,a0
bfc09bf4:	ac24ba30 	sw	a0,-17872(at)
bfc09bf8:	3c010001 	lui	at,0x1
bfc09bfc:	00250821 	addu	at,at,a1
bfc09c00:	ac25ba30 	sw	a1,-17872(at)
bfc09c04:	3c020001 	lui	v0,0x1
bfc09c08:	00481021 	addu	v0,v0,t0
bfc09c0c:	8442ba32 	lh	v0,-17870(v0)
bfc09c10:	3c050001 	lui	a1,0x1
bfc09c14:	00a42821 	addu	a1,a1,a0
bfc09c18:	8ca5ba30 	lw	a1,-17872(a1)
bfc09c1c:	3c040001 	lui	a0,0x1
bfc09c20:	00852021 	addu	a0,a0,a1
bfc09c24:	8c84ba30 	lw	a0,-17872(a0)
bfc09c28:	3c060001 	lui	a2,0x1
bfc09c2c:	00c53021 	addu	a2,a2,a1
bfc09c30:	8cc6ba30 	lw	a2,-17872(a2)
bfc09c34:	14430185 	bne	v0,v1,bfc0a24c <inst_error>
bfc09c38:	00000000 	nop
/home/csy/func/inst/n61_lh.S:74
bfc09c3c:	3c09f148 	lui	t1,0xf148
bfc09c40:	3529bba0 	ori	t1,t1,0xbba0
bfc09c44:	3c08800d 	lui	t0,0x800d
bfc09c48:	2403f148 	li	v1,-3768
bfc09c4c:	3c010001 	lui	at,0x1
bfc09c50:	00280821 	addu	at,at,t0
bfc09c54:	ac29a0d0 	sw	t1,-24368(at)
bfc09c58:	25040004 	addiu	a0,t0,4
bfc09c5c:	2505fff8 	addiu	a1,t0,-8
bfc09c60:	3c010001 	lui	at,0x1
bfc09c64:	00240821 	addu	at,at,a0
bfc09c68:	ac24a0d0 	sw	a0,-24368(at)
bfc09c6c:	3c010001 	lui	at,0x1
bfc09c70:	00250821 	addu	at,at,a1
bfc09c74:	ac25a0d0 	sw	a1,-24368(at)
bfc09c78:	3c020001 	lui	v0,0x1
bfc09c7c:	00481021 	addu	v0,v0,t0
bfc09c80:	8442a0d2 	lh	v0,-24366(v0)
bfc09c84:	3c050001 	lui	a1,0x1
bfc09c88:	00a42821 	addu	a1,a1,a0
bfc09c8c:	8ca5a0d0 	lw	a1,-24368(a1)
bfc09c90:	3c040001 	lui	a0,0x1
bfc09c94:	00852021 	addu	a0,a0,a1
bfc09c98:	8c84a0d0 	lw	a0,-24368(a0)
bfc09c9c:	3c060001 	lui	a2,0x1
bfc09ca0:	00c53021 	addu	a2,a2,a1
bfc09ca4:	8cc6a0d0 	lw	a2,-24368(a2)
bfc09ca8:	14430168 	bne	v0,v1,bfc0a24c <inst_error>
bfc09cac:	00000000 	nop
/home/csy/func/inst/n61_lh.S:75
bfc09cb0:	3c093377 	lui	t1,0x3377
bfc09cb4:	352925a6 	ori	t1,t1,0x25a6
bfc09cb8:	3c08800d 	lui	t0,0x800d
bfc09cbc:	24033377 	li	v1,13175
bfc09cc0:	ad09762c 	sw	t1,30252(t0)
bfc09cc4:	25040004 	addiu	a0,t0,4
bfc09cc8:	2505fff8 	addiu	a1,t0,-8
bfc09ccc:	ac84762c 	sw	a0,30252(a0)
bfc09cd0:	aca5762c 	sw	a1,30252(a1)
bfc09cd4:	8502762e 	lh	v0,30254(t0)
bfc09cd8:	8c85762c 	lw	a1,30252(a0)
bfc09cdc:	8ca4762c 	lw	a0,30252(a1)
bfc09ce0:	8ca6762c 	lw	a2,30252(a1)
bfc09ce4:	14430159 	bne	v0,v1,bfc0a24c <inst_error>
bfc09ce8:	00000000 	nop
/home/csy/func/inst/n61_lh.S:76
bfc09cec:	3c092982 	lui	t1,0x2982
bfc09cf0:	3529116c 	ori	t1,t1,0x116c
bfc09cf4:	3c08800d 	lui	t0,0x800d
bfc09cf8:	2403116c 	li	v1,4460
bfc09cfc:	3c010001 	lui	at,0x1
bfc09d00:	00280821 	addu	at,at,t0
bfc09d04:	ac29b980 	sw	t1,-18048(at)
bfc09d08:	25040004 	addiu	a0,t0,4
bfc09d0c:	2505fff8 	addiu	a1,t0,-8
bfc09d10:	3c010001 	lui	at,0x1
bfc09d14:	00240821 	addu	at,at,a0
bfc09d18:	ac24b980 	sw	a0,-18048(at)
bfc09d1c:	3c010001 	lui	at,0x1
bfc09d20:	00250821 	addu	at,at,a1
bfc09d24:	ac25b980 	sw	a1,-18048(at)
bfc09d28:	3c020001 	lui	v0,0x1
bfc09d2c:	00481021 	addu	v0,v0,t0
bfc09d30:	8442b980 	lh	v0,-18048(v0)
bfc09d34:	3c050001 	lui	a1,0x1
bfc09d38:	00a42821 	addu	a1,a1,a0
bfc09d3c:	8ca5b980 	lw	a1,-18048(a1)
bfc09d40:	3c040001 	lui	a0,0x1
bfc09d44:	00852021 	addu	a0,a0,a1
bfc09d48:	8c84b980 	lw	a0,-18048(a0)
bfc09d4c:	3c060001 	lui	a2,0x1
bfc09d50:	00c53021 	addu	a2,a2,a1
bfc09d54:	8cc6b980 	lw	a2,-18048(a2)
bfc09d58:	1443013c 	bne	v0,v1,bfc0a24c <inst_error>
bfc09d5c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:77
bfc09d60:	3c09f335 	lui	t1,0xf335
bfc09d64:	3529ae26 	ori	t1,t1,0xae26
bfc09d68:	3c08800d 	lui	t0,0x800d
bfc09d6c:	2403ae26 	li	v1,-20954
bfc09d70:	3c010001 	lui	at,0x1
bfc09d74:	00280821 	addu	at,at,t0
bfc09d78:	ac29de14 	sw	t1,-8684(at)
bfc09d7c:	25040004 	addiu	a0,t0,4
bfc09d80:	2505fff8 	addiu	a1,t0,-8
bfc09d84:	3c010001 	lui	at,0x1
bfc09d88:	00240821 	addu	at,at,a0
bfc09d8c:	ac24de14 	sw	a0,-8684(at)
bfc09d90:	3c010001 	lui	at,0x1
bfc09d94:	00250821 	addu	at,at,a1
bfc09d98:	ac25de14 	sw	a1,-8684(at)
bfc09d9c:	3c020001 	lui	v0,0x1
bfc09da0:	00481021 	addu	v0,v0,t0
bfc09da4:	8442de14 	lh	v0,-8684(v0)
bfc09da8:	3c050001 	lui	a1,0x1
bfc09dac:	00a42821 	addu	a1,a1,a0
bfc09db0:	8ca5de14 	lw	a1,-8684(a1)
bfc09db4:	3c040001 	lui	a0,0x1
bfc09db8:	00852021 	addu	a0,a0,a1
bfc09dbc:	8c84de14 	lw	a0,-8684(a0)
bfc09dc0:	3c060001 	lui	a2,0x1
bfc09dc4:	00c53021 	addu	a2,a2,a1
bfc09dc8:	8cc6de14 	lw	a2,-8684(a2)
bfc09dcc:	1443011f 	bne	v0,v1,bfc0a24c <inst_error>
bfc09dd0:	00000000 	nop
/home/csy/func/inst/n61_lh.S:78
bfc09dd4:	3c091cea 	lui	t1,0x1cea
bfc09dd8:	35293011 	ori	t1,t1,0x3011
bfc09ddc:	3c08800d 	lui	t0,0x800d
bfc09de0:	24033011 	li	v1,12305
bfc09de4:	ad094610 	sw	t1,17936(t0)
bfc09de8:	25040004 	addiu	a0,t0,4
bfc09dec:	2505fff8 	addiu	a1,t0,-8
bfc09df0:	ac844610 	sw	a0,17936(a0)
bfc09df4:	aca54610 	sw	a1,17936(a1)
bfc09df8:	85024610 	lh	v0,17936(t0)
bfc09dfc:	8c854610 	lw	a1,17936(a0)
bfc09e00:	8ca44610 	lw	a0,17936(a1)
bfc09e04:	8ca64610 	lw	a2,17936(a1)
bfc09e08:	14430110 	bne	v0,v1,bfc0a24c <inst_error>
bfc09e0c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:79
bfc09e10:	3c095288 	lui	t1,0x5288
bfc09e14:	3529a4be 	ori	t1,t1,0xa4be
bfc09e18:	3c08800d 	lui	t0,0x800d
bfc09e1c:	2403a4be 	li	v1,-23362
bfc09e20:	ad0920e0 	sw	t1,8416(t0)
bfc09e24:	25040004 	addiu	a0,t0,4
bfc09e28:	2505fff8 	addiu	a1,t0,-8
bfc09e2c:	ac8420e0 	sw	a0,8416(a0)
bfc09e30:	aca520e0 	sw	a1,8416(a1)
bfc09e34:	850220e0 	lh	v0,8416(t0)
bfc09e38:	8c8520e0 	lw	a1,8416(a0)
bfc09e3c:	8ca420e0 	lw	a0,8416(a1)
bfc09e40:	8ca620e0 	lw	a2,8416(a1)
bfc09e44:	14430101 	bne	v0,v1,bfc0a24c <inst_error>
bfc09e48:	00000000 	nop
/home/csy/func/inst/n61_lh.S:80
bfc09e4c:	3c09aba5 	lui	t1,0xaba5
bfc09e50:	35298c80 	ori	t1,t1,0x8c80
bfc09e54:	3c08800d 	lui	t0,0x800d
bfc09e58:	24038c80 	li	v1,-29568
bfc09e5c:	3c010001 	lui	at,0x1
bfc09e60:	00280821 	addu	at,at,t0
bfc09e64:	ac29cecc 	sw	t1,-12596(at)
bfc09e68:	25040004 	addiu	a0,t0,4
bfc09e6c:	2505fff8 	addiu	a1,t0,-8
bfc09e70:	3c010001 	lui	at,0x1
bfc09e74:	00240821 	addu	at,at,a0
bfc09e78:	ac24cecc 	sw	a0,-12596(at)
bfc09e7c:	3c010001 	lui	at,0x1
bfc09e80:	00250821 	addu	at,at,a1
bfc09e84:	ac25cecc 	sw	a1,-12596(at)
bfc09e88:	3c020001 	lui	v0,0x1
bfc09e8c:	00481021 	addu	v0,v0,t0
bfc09e90:	8442cecc 	lh	v0,-12596(v0)
bfc09e94:	3c050001 	lui	a1,0x1
bfc09e98:	00a42821 	addu	a1,a1,a0
bfc09e9c:	8ca5cecc 	lw	a1,-12596(a1)
bfc09ea0:	3c040001 	lui	a0,0x1
bfc09ea4:	00852021 	addu	a0,a0,a1
bfc09ea8:	8c84cecc 	lw	a0,-12596(a0)
bfc09eac:	3c060001 	lui	a2,0x1
bfc09eb0:	00c53021 	addu	a2,a2,a1
bfc09eb4:	8cc6cecc 	lw	a2,-12596(a2)
bfc09eb8:	144300e4 	bne	v0,v1,bfc0a24c <inst_error>
bfc09ebc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:81
bfc09ec0:	3c098780 	lui	t1,0x8780
bfc09ec4:	352918c0 	ori	t1,t1,0x18c0
bfc09ec8:	3c08800d 	lui	t0,0x800d
bfc09ecc:	240318c0 	li	v1,6336
bfc09ed0:	ad091a08 	sw	t1,6664(t0)
bfc09ed4:	25040004 	addiu	a0,t0,4
bfc09ed8:	2505fff8 	addiu	a1,t0,-8
bfc09edc:	ac841a08 	sw	a0,6664(a0)
bfc09ee0:	aca51a08 	sw	a1,6664(a1)
bfc09ee4:	85021a08 	lh	v0,6664(t0)
bfc09ee8:	8c851a08 	lw	a1,6664(a0)
bfc09eec:	8ca41a08 	lw	a0,6664(a1)
bfc09ef0:	8ca61a08 	lw	a2,6664(a1)
bfc09ef4:	144300d5 	bne	v0,v1,bfc0a24c <inst_error>
bfc09ef8:	00000000 	nop
/home/csy/func/inst/n61_lh.S:82
bfc09efc:	3c09dcfe 	lui	t1,0xdcfe
bfc09f00:	35297908 	ori	t1,t1,0x7908
bfc09f04:	3c08800d 	lui	t0,0x800d
bfc09f08:	2403dcfe 	li	v1,-8962
bfc09f0c:	ad090000 	sw	t1,0(t0)
bfc09f10:	25040004 	addiu	a0,t0,4
bfc09f14:	2505fff8 	addiu	a1,t0,-8
bfc09f18:	ac840000 	sw	a0,0(a0)
bfc09f1c:	aca50000 	sw	a1,0(a1)
bfc09f20:	85020002 	lh	v0,2(t0)
bfc09f24:	8c850000 	lw	a1,0(a0)
bfc09f28:	8ca40000 	lw	a0,0(a1)
bfc09f2c:	8ca60000 	lw	a2,0(a1)
bfc09f30:	144300c6 	bne	v0,v1,bfc0a24c <inst_error>
bfc09f34:	00000000 	nop
/home/csy/func/inst/n61_lh.S:83
bfc09f38:	3c09ca7e 	lui	t1,0xca7e
bfc09f3c:	35292534 	ori	t1,t1,0x2534
bfc09f40:	3c08800d 	lui	t0,0x800d
bfc09f44:	24032534 	li	v1,9524
bfc09f48:	ad090000 	sw	t1,0(t0)
bfc09f4c:	25040004 	addiu	a0,t0,4
bfc09f50:	2505fff8 	addiu	a1,t0,-8
bfc09f54:	ac840000 	sw	a0,0(a0)
bfc09f58:	aca50000 	sw	a1,0(a1)
bfc09f5c:	85020000 	lh	v0,0(t0)
bfc09f60:	8c850000 	lw	a1,0(a0)
bfc09f64:	8ca40000 	lw	a0,0(a1)
bfc09f68:	8ca60000 	lw	a2,0(a1)
bfc09f6c:	144300b7 	bne	v0,v1,bfc0a24c <inst_error>
bfc09f70:	00000000 	nop
/home/csy/func/inst/n61_lh.S:84
bfc09f74:	3c093a5f 	lui	t1,0x3a5f
bfc09f78:	35295000 	ori	t1,t1,0x5000
bfc09f7c:	3c08800d 	lui	t0,0x800d
bfc09f80:	24035000 	li	v1,20480
bfc09f84:	ad090000 	sw	t1,0(t0)
bfc09f88:	25040004 	addiu	a0,t0,4
bfc09f8c:	2505fff8 	addiu	a1,t0,-8
bfc09f90:	ac840000 	sw	a0,0(a0)
bfc09f94:	aca50000 	sw	a1,0(a1)
bfc09f98:	85020000 	lh	v0,0(t0)
bfc09f9c:	8c850000 	lw	a1,0(a0)
bfc09fa0:	8ca40000 	lw	a0,0(a1)
bfc09fa4:	8ca60000 	lw	a2,0(a1)
bfc09fa8:	144300a8 	bne	v0,v1,bfc0a24c <inst_error>
bfc09fac:	00000000 	nop
/home/csy/func/inst/n61_lh.S:85
bfc09fb0:	3c09c087 	lui	t1,0xc087
bfc09fb4:	3529931c 	ori	t1,t1,0x931c
bfc09fb8:	3c08800d 	lui	t0,0x800d
bfc09fbc:	2403931c 	li	v1,-27876
bfc09fc0:	ad090000 	sw	t1,0(t0)
bfc09fc4:	25040004 	addiu	a0,t0,4
bfc09fc8:	2505fff8 	addiu	a1,t0,-8
bfc09fcc:	ac840000 	sw	a0,0(a0)
bfc09fd0:	aca50000 	sw	a1,0(a1)
bfc09fd4:	85020000 	lh	v0,0(t0)
bfc09fd8:	8c850000 	lw	a1,0(a0)
bfc09fdc:	8ca40000 	lw	a0,0(a1)
bfc09fe0:	8ca60000 	lw	a2,0(a1)
bfc09fe4:	14430099 	bne	v0,v1,bfc0a24c <inst_error>
bfc09fe8:	00000000 	nop
/home/csy/func/inst/n61_lh.S:86
bfc09fec:	3c090352 	lui	t1,0x352
bfc09ff0:	3529c2b4 	ori	t1,t1,0xc2b4
bfc09ff4:	3c08800d 	lui	t0,0x800d
bfc09ff8:	24030352 	li	v1,850
bfc09ffc:	ad090000 	sw	t1,0(t0)
bfc0a000:	25040004 	addiu	a0,t0,4
bfc0a004:	2505fff8 	addiu	a1,t0,-8
bfc0a008:	ac840000 	sw	a0,0(a0)
bfc0a00c:	aca50000 	sw	a1,0(a1)
bfc0a010:	85020002 	lh	v0,2(t0)
bfc0a014:	8c850000 	lw	a1,0(a0)
bfc0a018:	8ca40000 	lw	a0,0(a1)
bfc0a01c:	8ca60000 	lw	a2,0(a1)
bfc0a020:	1443008a 	bne	v0,v1,bfc0a24c <inst_error>
bfc0a024:	00000000 	nop
/home/csy/func/inst/n61_lh.S:87
bfc0a028:	3c096742 	lui	t1,0x6742
bfc0a02c:	352936b0 	ori	t1,t1,0x36b0
bfc0a030:	3c08800d 	lui	t0,0x800d
bfc0a034:	240336b0 	li	v1,14000
bfc0a038:	ad090000 	sw	t1,0(t0)
bfc0a03c:	25040004 	addiu	a0,t0,4
bfc0a040:	2505fff8 	addiu	a1,t0,-8
bfc0a044:	ac840000 	sw	a0,0(a0)
bfc0a048:	aca50000 	sw	a1,0(a1)
bfc0a04c:	85020000 	lh	v0,0(t0)
bfc0a050:	8c850000 	lw	a1,0(a0)
bfc0a054:	8ca40000 	lw	a0,0(a1)
bfc0a058:	8ca60000 	lw	a2,0(a1)
bfc0a05c:	1443007b 	bne	v0,v1,bfc0a24c <inst_error>
bfc0a060:	00000000 	nop
/home/csy/func/inst/n61_lh.S:88
bfc0a064:	3c09b800 	lui	t1,0xb800
bfc0a068:	35298adc 	ori	t1,t1,0x8adc
bfc0a06c:	3c08800d 	lui	t0,0x800d
bfc0a070:	2403b800 	li	v1,-18432
bfc0a074:	ad090000 	sw	t1,0(t0)
bfc0a078:	25040004 	addiu	a0,t0,4
bfc0a07c:	2505fff8 	addiu	a1,t0,-8
bfc0a080:	ac840000 	sw	a0,0(a0)
bfc0a084:	aca50000 	sw	a1,0(a1)
bfc0a088:	85020002 	lh	v0,2(t0)
bfc0a08c:	8c850000 	lw	a1,0(a0)
bfc0a090:	8ca40000 	lw	a0,0(a1)
bfc0a094:	8ca60000 	lw	a2,0(a1)
bfc0a098:	1443006c 	bne	v0,v1,bfc0a24c <inst_error>
bfc0a09c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:89
bfc0a0a0:	3c099368 	lui	t1,0x9368
bfc0a0a4:	3529c576 	ori	t1,t1,0xc576
bfc0a0a8:	3c08800d 	lui	t0,0x800d
bfc0a0ac:	2403c576 	li	v1,-14986
bfc0a0b0:	ad090000 	sw	t1,0(t0)
bfc0a0b4:	25040004 	addiu	a0,t0,4
bfc0a0b8:	2505fff8 	addiu	a1,t0,-8
bfc0a0bc:	ac840000 	sw	a0,0(a0)
bfc0a0c0:	aca50000 	sw	a1,0(a1)
bfc0a0c4:	85020000 	lh	v0,0(t0)
bfc0a0c8:	8c850000 	lw	a1,0(a0)
bfc0a0cc:	8ca40000 	lw	a0,0(a1)
bfc0a0d0:	8ca60000 	lw	a2,0(a1)
bfc0a0d4:	1443005d 	bne	v0,v1,bfc0a24c <inst_error>
bfc0a0d8:	00000000 	nop
/home/csy/func/inst/n61_lh.S:90
bfc0a0dc:	3c09fba1 	lui	t1,0xfba1
bfc0a0e0:	3529ce40 	ori	t1,t1,0xce40
bfc0a0e4:	3c08800d 	lui	t0,0x800d
bfc0a0e8:	2403ce40 	li	v1,-12736
bfc0a0ec:	ad090000 	sw	t1,0(t0)
bfc0a0f0:	25040004 	addiu	a0,t0,4
bfc0a0f4:	2505fff8 	addiu	a1,t0,-8
bfc0a0f8:	ac840000 	sw	a0,0(a0)
bfc0a0fc:	aca50000 	sw	a1,0(a1)
bfc0a100:	85020000 	lh	v0,0(t0)
bfc0a104:	8c850000 	lw	a1,0(a0)
bfc0a108:	8ca40000 	lw	a0,0(a1)
bfc0a10c:	8ca60000 	lw	a2,0(a1)
bfc0a110:	1443004e 	bne	v0,v1,bfc0a24c <inst_error>
bfc0a114:	00000000 	nop
/home/csy/func/inst/n61_lh.S:91
bfc0a118:	3c09585c 	lui	t1,0x585c
bfc0a11c:	35295e30 	ori	t1,t1,0x5e30
bfc0a120:	3c08800d 	lui	t0,0x800d
bfc0a124:	24035e30 	li	v1,24112
bfc0a128:	ad090000 	sw	t1,0(t0)
bfc0a12c:	25040004 	addiu	a0,t0,4
bfc0a130:	2505fff8 	addiu	a1,t0,-8
bfc0a134:	ac840000 	sw	a0,0(a0)
bfc0a138:	aca50000 	sw	a1,0(a1)
bfc0a13c:	85020000 	lh	v0,0(t0)
bfc0a140:	8c850000 	lw	a1,0(a0)
bfc0a144:	8ca40000 	lw	a0,0(a1)
bfc0a148:	8ca60000 	lw	a2,0(a1)
bfc0a14c:	1443003f 	bne	v0,v1,bfc0a24c <inst_error>
bfc0a150:	00000000 	nop
/home/csy/func/inst/n61_lh.S:92
bfc0a154:	3c099915 	lui	t1,0x9915
bfc0a158:	3529f89c 	ori	t1,t1,0xf89c
bfc0a15c:	3c08800d 	lui	t0,0x800d
bfc0a160:	2403f89c 	li	v1,-1892
bfc0a164:	ad090000 	sw	t1,0(t0)
bfc0a168:	25040004 	addiu	a0,t0,4
bfc0a16c:	2505fff8 	addiu	a1,t0,-8
bfc0a170:	ac840000 	sw	a0,0(a0)
bfc0a174:	aca50000 	sw	a1,0(a1)
bfc0a178:	85020000 	lh	v0,0(t0)
bfc0a17c:	8c850000 	lw	a1,0(a0)
bfc0a180:	8ca40000 	lw	a0,0(a1)
bfc0a184:	8ca60000 	lw	a2,0(a1)
bfc0a188:	14430030 	bne	v0,v1,bfc0a24c <inst_error>
bfc0a18c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:93
bfc0a190:	3c098aef 	lui	t1,0x8aef
bfc0a194:	3529a220 	ori	t1,t1,0xa220
bfc0a198:	3c08800d 	lui	t0,0x800d
bfc0a19c:	24038aef 	li	v1,-29969
bfc0a1a0:	ad090000 	sw	t1,0(t0)
bfc0a1a4:	25040004 	addiu	a0,t0,4
bfc0a1a8:	2505fff8 	addiu	a1,t0,-8
bfc0a1ac:	ac840000 	sw	a0,0(a0)
bfc0a1b0:	aca50000 	sw	a1,0(a1)
bfc0a1b4:	85020002 	lh	v0,2(t0)
bfc0a1b8:	8c850000 	lw	a1,0(a0)
bfc0a1bc:	8ca40000 	lw	a0,0(a1)
bfc0a1c0:	8ca60000 	lw	a2,0(a1)
bfc0a1c4:	14430021 	bne	v0,v1,bfc0a24c <inst_error>
bfc0a1c8:	00000000 	nop
/home/csy/func/inst/n61_lh.S:94
bfc0a1cc:	3c0942cc 	lui	t1,0x42cc
bfc0a1d0:	3529ca62 	ori	t1,t1,0xca62
bfc0a1d4:	3c08800d 	lui	t0,0x800d
bfc0a1d8:	2403ca62 	li	v1,-13726
bfc0a1dc:	ad090000 	sw	t1,0(t0)
bfc0a1e0:	25040004 	addiu	a0,t0,4
bfc0a1e4:	2505fff8 	addiu	a1,t0,-8
bfc0a1e8:	ac840000 	sw	a0,0(a0)
bfc0a1ec:	aca50000 	sw	a1,0(a1)
bfc0a1f0:	85020000 	lh	v0,0(t0)
bfc0a1f4:	8c850000 	lw	a1,0(a0)
bfc0a1f8:	8ca40000 	lw	a0,0(a1)
bfc0a1fc:	8ca60000 	lw	a2,0(a1)
bfc0a200:	14430012 	bne	v0,v1,bfc0a24c <inst_error>
bfc0a204:	00000000 	nop
/home/csy/func/inst/n61_lh.S:95
bfc0a208:	24090000 	li	t1,0
bfc0a20c:	3c08800d 	lui	t0,0x800d
bfc0a210:	24030000 	li	v1,0
bfc0a214:	ad090000 	sw	t1,0(t0)
bfc0a218:	25040004 	addiu	a0,t0,4
bfc0a21c:	2505fff8 	addiu	a1,t0,-8
bfc0a220:	ac840000 	sw	a0,0(a0)
bfc0a224:	aca50000 	sw	a1,0(a1)
bfc0a228:	85020000 	lh	v0,0(t0)
bfc0a22c:	8c850000 	lw	a1,0(a0)
bfc0a230:	8ca40000 	lw	a0,0(a1)
bfc0a234:	8ca60000 	lw	a2,0(a1)
bfc0a238:	14430004 	bne	v0,v1,bfc0a24c <inst_error>
bfc0a23c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:97
bfc0a240:	16400002 	bnez	s2,bfc0a24c <inst_error>
/home/csy/func/inst/n61_lh.S:98
bfc0a244:	00000000 	nop
/home/csy/func/inst/n61_lh.S:100
bfc0a248:	26730001 	addiu	s3,s3,1

bfc0a24c <inst_error>:
/home/csy/func/inst/n61_lh.S:103
bfc0a24c:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n61_lh.S:104
bfc0a250:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n61_lh.S:105
bfc0a254:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n61_lh.S:106
bfc0a258:	03e00008 	jr	ra
/home/csy/func/inst/n61_lh.S:107
bfc0a25c:	00000000 	nop

bfc0a260 <n64_sh_test>:
/home/csy/func/inst/n64_sh.S:7
bfc0a260:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n64_sh.S:8
bfc0a264:	24120000 	li	s2,0
/home/csy/func/inst/n64_sh.S:10
bfc0a268:	3c0ae15f 	lui	t2,0xe15f
bfc0a26c:	354a8848 	ori	t2,t2,0x8848
bfc0a270:	3c090e1a 	lui	t1,0xe1a
bfc0a274:	35293600 	ori	t1,t1,0x3600
bfc0a278:	3c08800d 	lui	t0,0x800d
bfc0a27c:	350852a4 	ori	t0,t0,0x52a4
bfc0a280:	3c033600 	lui	v1,0x3600
bfc0a284:	34638848 	ori	v1,v1,0x8848
bfc0a288:	ad0a3adc 	sw	t2,15068(t0)
bfc0a28c:	a5093ade 	sh	t1,15070(t0)
bfc0a290:	25040004 	addiu	a0,t0,4
bfc0a294:	2505fffc 	addiu	a1,t0,-4
bfc0a298:	ac843adc 	sw	a0,15068(a0)
bfc0a29c:	aca53adc 	sw	a1,15068(a1)
bfc0a2a0:	8d023adc 	lw	v0,15068(t0)
bfc0a2a4:	8ca43adc 	lw	a0,15068(a1)
bfc0a2a8:	8c853adc 	lw	a1,15068(a0)
bfc0a2ac:	8ca63adc 	lw	a2,15068(a1)
bfc0a2b0:	14430999 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a2b4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:11
bfc0a2b8:	3c0a0410 	lui	t2,0x410
bfc0a2bc:	354a5cf0 	ori	t2,t2,0x5cf0
bfc0a2c0:	3c09b64d 	lui	t1,0xb64d
bfc0a2c4:	35295300 	ori	t1,t1,0x5300
bfc0a2c8:	3c08800d 	lui	t0,0x800d
bfc0a2cc:	35083f6c 	ori	t0,t0,0x3f6c
bfc0a2d0:	3c035300 	lui	v1,0x5300
bfc0a2d4:	34635cf0 	ori	v1,v1,0x5cf0
bfc0a2d8:	ad0a1568 	sw	t2,5480(t0)
bfc0a2dc:	a509156a 	sh	t1,5482(t0)
bfc0a2e0:	25040004 	addiu	a0,t0,4
bfc0a2e4:	2505fffc 	addiu	a1,t0,-4
bfc0a2e8:	ac841568 	sw	a0,5480(a0)
bfc0a2ec:	aca51568 	sw	a1,5480(a1)
bfc0a2f0:	8d021568 	lw	v0,5480(t0)
bfc0a2f4:	8ca41568 	lw	a0,5480(a1)
bfc0a2f8:	8c851568 	lw	a1,5480(a0)
bfc0a2fc:	8ca61568 	lw	a2,5480(a1)
bfc0a300:	14430985 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a304:	00000000 	nop
/home/csy/func/inst/n64_sh.S:12
bfc0a308:	3c0ad187 	lui	t2,0xd187
bfc0a30c:	354abd18 	ori	t2,t2,0xbd18
bfc0a310:	3c09a1cf 	lui	t1,0xa1cf
bfc0a314:	3529708e 	ori	t1,t1,0x708e
bfc0a318:	3c08800d 	lui	t0,0x800d
bfc0a31c:	3508b7a0 	ori	t0,t0,0xb7a0
bfc0a320:	3c03d187 	lui	v1,0xd187
bfc0a324:	3463708e 	ori	v1,v1,0x708e
bfc0a328:	ad0a0bf4 	sw	t2,3060(t0)
bfc0a32c:	a5090bf4 	sh	t1,3060(t0)
bfc0a330:	25040004 	addiu	a0,t0,4
bfc0a334:	2505fffc 	addiu	a1,t0,-4
bfc0a338:	ac840bf4 	sw	a0,3060(a0)
bfc0a33c:	aca50bf4 	sw	a1,3060(a1)
bfc0a340:	8d020bf4 	lw	v0,3060(t0)
bfc0a344:	8ca40bf4 	lw	a0,3060(a1)
bfc0a348:	8c850bf4 	lw	a1,3060(a0)
bfc0a34c:	8ca60bf4 	lw	a2,3060(a1)
bfc0a350:	14430971 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a354:	00000000 	nop
/home/csy/func/inst/n64_sh.S:13
bfc0a358:	3c0ab5ab 	lui	t2,0xb5ab
bfc0a35c:	354acbf4 	ori	t2,t2,0xcbf4
bfc0a360:	3c09ee02 	lui	t1,0xee02
bfc0a364:	3529bbc2 	ori	t1,t1,0xbbc2
bfc0a368:	3c08800d 	lui	t0,0x800d
bfc0a36c:	35086188 	ori	t0,t0,0x6188
bfc0a370:	3c03b5ab 	lui	v1,0xb5ab
bfc0a374:	3463bbc2 	ori	v1,v1,0xbbc2
bfc0a378:	ad0a2e44 	sw	t2,11844(t0)
bfc0a37c:	a5092e44 	sh	t1,11844(t0)
bfc0a380:	25040004 	addiu	a0,t0,4
bfc0a384:	2505fffc 	addiu	a1,t0,-4
bfc0a388:	ac842e44 	sw	a0,11844(a0)
bfc0a38c:	aca52e44 	sw	a1,11844(a1)
bfc0a390:	8d022e44 	lw	v0,11844(t0)
bfc0a394:	8ca42e44 	lw	a0,11844(a1)
bfc0a398:	8c852e44 	lw	a1,11844(a0)
bfc0a39c:	8ca62e44 	lw	a2,11844(a1)
bfc0a3a0:	1443095d 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a3a4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:14
bfc0a3a8:	3c0a6b04 	lui	t2,0x6b04
bfc0a3ac:	354abf60 	ori	t2,t2,0xbf60
bfc0a3b0:	3c093069 	lui	t1,0x3069
bfc0a3b4:	352960f0 	ori	t1,t1,0x60f0
bfc0a3b8:	3c08800d 	lui	t0,0x800d
bfc0a3bc:	35088d40 	ori	t0,t0,0x8d40
bfc0a3c0:	3c036b04 	lui	v1,0x6b04
bfc0a3c4:	346360f0 	ori	v1,v1,0x60f0
bfc0a3c8:	ad0a6580 	sw	t2,25984(t0)
bfc0a3cc:	a5096580 	sh	t1,25984(t0)
bfc0a3d0:	25040004 	addiu	a0,t0,4
bfc0a3d4:	2505fffc 	addiu	a1,t0,-4
bfc0a3d8:	ac846580 	sw	a0,25984(a0)
bfc0a3dc:	aca56580 	sw	a1,25984(a1)
bfc0a3e0:	8d026580 	lw	v0,25984(t0)
bfc0a3e4:	8ca46580 	lw	a0,25984(a1)
bfc0a3e8:	8c856580 	lw	a1,25984(a0)
bfc0a3ec:	8ca66580 	lw	a2,25984(a1)
bfc0a3f0:	14430949 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a3f4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:15
bfc0a3f8:	3c0a2532 	lui	t2,0x2532
bfc0a3fc:	354ad240 	ori	t2,t2,0xd240
bfc0a400:	3c09fe00 	lui	t1,0xfe00
bfc0a404:	3529ebf6 	ori	t1,t1,0xebf6
bfc0a408:	3c08800d 	lui	t0,0x800d
bfc0a40c:	35087090 	ori	t0,t0,0x7090
bfc0a410:	3c03ebf6 	lui	v1,0xebf6
bfc0a414:	3463d240 	ori	v1,v1,0xd240
bfc0a418:	ad0a2084 	sw	t2,8324(t0)
bfc0a41c:	a5092086 	sh	t1,8326(t0)
bfc0a420:	25040004 	addiu	a0,t0,4
bfc0a424:	2505fffc 	addiu	a1,t0,-4
bfc0a428:	ac842084 	sw	a0,8324(a0)
bfc0a42c:	aca52084 	sw	a1,8324(a1)
bfc0a430:	8d022084 	lw	v0,8324(t0)
bfc0a434:	8ca42084 	lw	a0,8324(a1)
bfc0a438:	8c852084 	lw	a1,8324(a0)
bfc0a43c:	8ca62084 	lw	a2,8324(a1)
bfc0a440:	14430935 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a444:	00000000 	nop
/home/csy/func/inst/n64_sh.S:16
bfc0a448:	3c0a2b61 	lui	t2,0x2b61
bfc0a44c:	354aec90 	ori	t2,t2,0xec90
bfc0a450:	3c0928bd 	lui	t1,0x28bd
bfc0a454:	3529e000 	ori	t1,t1,0xe000
bfc0a458:	3c08800d 	lui	t0,0x800d
bfc0a45c:	350824e0 	ori	t0,t0,0x24e0
bfc0a460:	3c03e000 	lui	v1,0xe000
bfc0a464:	3463ec90 	ori	v1,v1,0xec90
bfc0a468:	ad0a24d4 	sw	t2,9428(t0)
bfc0a46c:	a50924d6 	sh	t1,9430(t0)
bfc0a470:	25040004 	addiu	a0,t0,4
bfc0a474:	2505fffc 	addiu	a1,t0,-4
bfc0a478:	ac8424d4 	sw	a0,9428(a0)
bfc0a47c:	aca524d4 	sw	a1,9428(a1)
bfc0a480:	8d0224d4 	lw	v0,9428(t0)
bfc0a484:	8ca424d4 	lw	a0,9428(a1)
bfc0a488:	8c8524d4 	lw	a1,9428(a0)
bfc0a48c:	8ca624d4 	lw	a2,9428(a1)
bfc0a490:	14430921 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a494:	00000000 	nop
/home/csy/func/inst/n64_sh.S:17
bfc0a498:	3c0aa52d 	lui	t2,0xa52d
bfc0a49c:	354ae360 	ori	t2,t2,0xe360
bfc0a4a0:	3c09f569 	lui	t1,0xf569
bfc0a4a4:	35299820 	ori	t1,t1,0x9820
bfc0a4a8:	3c08800d 	lui	t0,0x800d
bfc0a4ac:	35083b4c 	ori	t0,t0,0x3b4c
bfc0a4b0:	3c03a52d 	lui	v1,0xa52d
bfc0a4b4:	34639820 	ori	v1,v1,0x9820
bfc0a4b8:	ad0a5e50 	sw	t2,24144(t0)
bfc0a4bc:	a5095e50 	sh	t1,24144(t0)
bfc0a4c0:	25040004 	addiu	a0,t0,4
bfc0a4c4:	2505fffc 	addiu	a1,t0,-4
bfc0a4c8:	ac845e50 	sw	a0,24144(a0)
bfc0a4cc:	aca55e50 	sw	a1,24144(a1)
bfc0a4d0:	8d025e50 	lw	v0,24144(t0)
bfc0a4d4:	8ca45e50 	lw	a0,24144(a1)
bfc0a4d8:	8c855e50 	lw	a1,24144(a0)
bfc0a4dc:	8ca65e50 	lw	a2,24144(a1)
bfc0a4e0:	1443090d 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a4e4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:18
bfc0a4e8:	3c0a7978 	lui	t2,0x7978
bfc0a4ec:	354aaff8 	ori	t2,t2,0xaff8
bfc0a4f0:	3c09a69f 	lui	t1,0xa69f
bfc0a4f4:	35293ca0 	ori	t1,t1,0x3ca0
bfc0a4f8:	3c08800d 	lui	t0,0x800d
bfc0a4fc:	35082968 	ori	t0,t0,0x2968
bfc0a500:	3c037978 	lui	v1,0x7978
bfc0a504:	34633ca0 	ori	v1,v1,0x3ca0
bfc0a508:	ad0a5364 	sw	t2,21348(t0)
bfc0a50c:	a5095364 	sh	t1,21348(t0)
bfc0a510:	25040004 	addiu	a0,t0,4
bfc0a514:	2505fffc 	addiu	a1,t0,-4
bfc0a518:	ac845364 	sw	a0,21348(a0)
bfc0a51c:	aca55364 	sw	a1,21348(a1)
bfc0a520:	8d025364 	lw	v0,21348(t0)
bfc0a524:	8ca45364 	lw	a0,21348(a1)
bfc0a528:	8c855364 	lw	a1,21348(a0)
bfc0a52c:	8ca65364 	lw	a2,21348(a1)
bfc0a530:	144308f9 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a534:	00000000 	nop
/home/csy/func/inst/n64_sh.S:19
bfc0a538:	3c0ac4dd 	lui	t2,0xc4dd
bfc0a53c:	354ac7df 	ori	t2,t2,0xc7df
bfc0a540:	3c090a66 	lui	t1,0xa66
bfc0a544:	3529bf0c 	ori	t1,t1,0xbf0c
bfc0a548:	3c08800d 	lui	t0,0x800d
bfc0a54c:	3508ad70 	ori	t0,t0,0xad70
bfc0a550:	3c03c4dd 	lui	v1,0xc4dd
bfc0a554:	3463bf0c 	ori	v1,v1,0xbf0c
bfc0a558:	ad0a02bc 	sw	t2,700(t0)
bfc0a55c:	a50902bc 	sh	t1,700(t0)
bfc0a560:	25040004 	addiu	a0,t0,4
bfc0a564:	2505fffc 	addiu	a1,t0,-4
bfc0a568:	ac8402bc 	sw	a0,700(a0)
bfc0a56c:	aca502bc 	sw	a1,700(a1)
bfc0a570:	8d0202bc 	lw	v0,700(t0)
bfc0a574:	8ca402bc 	lw	a0,700(a1)
bfc0a578:	8c8502bc 	lw	a1,700(a0)
bfc0a57c:	8ca602bc 	lw	a2,700(a1)
bfc0a580:	144308e5 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a584:	00000000 	nop
/home/csy/func/inst/n64_sh.S:20
bfc0a588:	3c0ad6ef 	lui	t2,0xd6ef
bfc0a58c:	354a145e 	ori	t2,t2,0x145e
bfc0a590:	3c0927d4 	lui	t1,0x27d4
bfc0a594:	3529869c 	ori	t1,t1,0x869c
bfc0a598:	3c08800d 	lui	t0,0x800d
bfc0a59c:	35081500 	ori	t0,t0,0x1500
bfc0a5a0:	3c03869c 	lui	v1,0x869c
bfc0a5a4:	3463145e 	ori	v1,v1,0x145e
bfc0a5a8:	ad0a48b4 	sw	t2,18612(t0)
bfc0a5ac:	a50948b6 	sh	t1,18614(t0)
bfc0a5b0:	25040004 	addiu	a0,t0,4
bfc0a5b4:	2505fffc 	addiu	a1,t0,-4
bfc0a5b8:	ac8448b4 	sw	a0,18612(a0)
bfc0a5bc:	aca548b4 	sw	a1,18612(a1)
bfc0a5c0:	8d0248b4 	lw	v0,18612(t0)
bfc0a5c4:	8ca448b4 	lw	a0,18612(a1)
bfc0a5c8:	8c8548b4 	lw	a1,18612(a0)
bfc0a5cc:	8ca648b4 	lw	a2,18612(a1)
bfc0a5d0:	144308d1 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a5d4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:21
bfc0a5d8:	3c0ae57c 	lui	t2,0xe57c
bfc0a5dc:	354a6800 	ori	t2,t2,0x6800
bfc0a5e0:	3c09a1fc 	lui	t1,0xa1fc
bfc0a5e4:	35296927 	ori	t1,t1,0x6927
bfc0a5e8:	3c08800d 	lui	t0,0x800d
bfc0a5ec:	35082f30 	ori	t0,t0,0x2f30
bfc0a5f0:	3c03e57c 	lui	v1,0xe57c
bfc0a5f4:	34636927 	ori	v1,v1,0x6927
bfc0a5f8:	ad0a693c 	sw	t2,26940(t0)
bfc0a5fc:	a509693c 	sh	t1,26940(t0)
bfc0a600:	25040004 	addiu	a0,t0,4
bfc0a604:	2505fffc 	addiu	a1,t0,-4
bfc0a608:	ac84693c 	sw	a0,26940(a0)
bfc0a60c:	aca5693c 	sw	a1,26940(a1)
bfc0a610:	8d02693c 	lw	v0,26940(t0)
bfc0a614:	8ca4693c 	lw	a0,26940(a1)
bfc0a618:	8c85693c 	lw	a1,26940(a0)
bfc0a61c:	8ca6693c 	lw	a2,26940(a1)
bfc0a620:	144308bd 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a624:	00000000 	nop
/home/csy/func/inst/n64_sh.S:22
bfc0a628:	3c0aa645 	lui	t2,0xa645
bfc0a62c:	354a0915 	ori	t2,t2,0x915
bfc0a630:	3c094c8f 	lui	t1,0x4c8f
bfc0a634:	3529b6e6 	ori	t1,t1,0xb6e6
bfc0a638:	3c08800d 	lui	t0,0x800d
bfc0a63c:	35082728 	ori	t0,t0,0x2728
bfc0a640:	3c03a645 	lui	v1,0xa645
bfc0a644:	3463b6e6 	ori	v1,v1,0xb6e6
bfc0a648:	ad0a22b8 	sw	t2,8888(t0)
bfc0a64c:	a50922b8 	sh	t1,8888(t0)
bfc0a650:	25040004 	addiu	a0,t0,4
bfc0a654:	2505fffc 	addiu	a1,t0,-4
bfc0a658:	ac8422b8 	sw	a0,8888(a0)
bfc0a65c:	aca522b8 	sw	a1,8888(a1)
bfc0a660:	8d0222b8 	lw	v0,8888(t0)
bfc0a664:	8ca422b8 	lw	a0,8888(a1)
bfc0a668:	8c8522b8 	lw	a1,8888(a0)
bfc0a66c:	8ca622b8 	lw	a2,8888(a1)
bfc0a670:	144308a9 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a674:	00000000 	nop
/home/csy/func/inst/n64_sh.S:23
bfc0a678:	3c0a3937 	lui	t2,0x3937
bfc0a67c:	354a8cfc 	ori	t2,t2,0x8cfc
bfc0a680:	3c09ec7b 	lui	t1,0xec7b
bfc0a684:	35292b18 	ori	t1,t1,0x2b18
bfc0a688:	3c08800d 	lui	t0,0x800d
bfc0a68c:	3508e270 	ori	t0,t0,0xe270
bfc0a690:	3c033937 	lui	v1,0x3937
bfc0a694:	34632b18 	ori	v1,v1,0x2b18
bfc0a698:	ad0a05f4 	sw	t2,1524(t0)
bfc0a69c:	a50905f4 	sh	t1,1524(t0)
bfc0a6a0:	25040004 	addiu	a0,t0,4
bfc0a6a4:	2505fffc 	addiu	a1,t0,-4
bfc0a6a8:	ac8405f4 	sw	a0,1524(a0)
bfc0a6ac:	aca505f4 	sw	a1,1524(a1)
bfc0a6b0:	8d0205f4 	lw	v0,1524(t0)
bfc0a6b4:	8ca405f4 	lw	a0,1524(a1)
bfc0a6b8:	8c8505f4 	lw	a1,1524(a0)
bfc0a6bc:	8ca605f4 	lw	a2,1524(a1)
bfc0a6c0:	14430895 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a6c4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:24
bfc0a6c8:	3c0a4171 	lui	t2,0x4171
bfc0a6cc:	354ab083 	ori	t2,t2,0xb083
bfc0a6d0:	3c0958c1 	lui	t1,0x58c1
bfc0a6d4:	3529d2c8 	ori	t1,t1,0xd2c8
bfc0a6d8:	3c08800d 	lui	t0,0x800d
bfc0a6dc:	35083098 	ori	t0,t0,0x3098
bfc0a6e0:	3c034171 	lui	v1,0x4171
bfc0a6e4:	3463d2c8 	ori	v1,v1,0xd2c8
bfc0a6e8:	ad0a004c 	sw	t2,76(t0)
bfc0a6ec:	a509004c 	sh	t1,76(t0)
bfc0a6f0:	25040004 	addiu	a0,t0,4
bfc0a6f4:	2505fffc 	addiu	a1,t0,-4
bfc0a6f8:	ac84004c 	sw	a0,76(a0)
bfc0a6fc:	aca5004c 	sw	a1,76(a1)
bfc0a700:	8d02004c 	lw	v0,76(t0)
bfc0a704:	8ca4004c 	lw	a0,76(a1)
bfc0a708:	8c85004c 	lw	a1,76(a0)
bfc0a70c:	8ca6004c 	lw	a2,76(a1)
bfc0a710:	14430881 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a714:	00000000 	nop
/home/csy/func/inst/n64_sh.S:25
bfc0a718:	3c0a7616 	lui	t2,0x7616
bfc0a71c:	354a56b0 	ori	t2,t2,0x56b0
bfc0a720:	3c0902f5 	lui	t1,0x2f5
bfc0a724:	35293f68 	ori	t1,t1,0x3f68
bfc0a728:	3c08800d 	lui	t0,0x800d
bfc0a72c:	35083c40 	ori	t0,t0,0x3c40
bfc0a730:	3c037616 	lui	v1,0x7616
bfc0a734:	34633f68 	ori	v1,v1,0x3f68
bfc0a738:	3c010001 	lui	at,0x1
bfc0a73c:	00280821 	addu	at,at,t0
bfc0a740:	ac2a85dc 	sw	t2,-31268(at)
bfc0a744:	3c010001 	lui	at,0x1
bfc0a748:	00280821 	addu	at,at,t0
bfc0a74c:	a42985dc 	sh	t1,-31268(at)
bfc0a750:	25040004 	addiu	a0,t0,4
bfc0a754:	2505fffc 	addiu	a1,t0,-4
bfc0a758:	3c010001 	lui	at,0x1
bfc0a75c:	00240821 	addu	at,at,a0
bfc0a760:	ac2485dc 	sw	a0,-31268(at)
bfc0a764:	3c010001 	lui	at,0x1
bfc0a768:	00250821 	addu	at,at,a1
bfc0a76c:	ac2585dc 	sw	a1,-31268(at)
bfc0a770:	3c020001 	lui	v0,0x1
bfc0a774:	00481021 	addu	v0,v0,t0
bfc0a778:	8c4285dc 	lw	v0,-31268(v0)
bfc0a77c:	3c040001 	lui	a0,0x1
bfc0a780:	00852021 	addu	a0,a0,a1
bfc0a784:	8c8485dc 	lw	a0,-31268(a0)
bfc0a788:	3c050001 	lui	a1,0x1
bfc0a78c:	00a42821 	addu	a1,a1,a0
bfc0a790:	8ca585dc 	lw	a1,-31268(a1)
bfc0a794:	3c060001 	lui	a2,0x1
bfc0a798:	00c53021 	addu	a2,a2,a1
bfc0a79c:	8cc685dc 	lw	a2,-31268(a2)
bfc0a7a0:	1443085d 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a7a4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:26
bfc0a7a8:	3c0ae249 	lui	t2,0xe249
bfc0a7ac:	354aae52 	ori	t2,t2,0xae52
bfc0a7b0:	3c098d75 	lui	t1,0x8d75
bfc0a7b4:	3529b188 	ori	t1,t1,0xb188
bfc0a7b8:	3c08800d 	lui	t0,0x800d
bfc0a7bc:	35080a20 	ori	t0,t0,0xa20
bfc0a7c0:	3c03b188 	lui	v1,0xb188
bfc0a7c4:	3463ae52 	ori	v1,v1,0xae52
bfc0a7c8:	3c010001 	lui	at,0x1
bfc0a7cc:	00280821 	addu	at,at,t0
bfc0a7d0:	ac2ad0d8 	sw	t2,-12072(at)
bfc0a7d4:	3c010001 	lui	at,0x1
bfc0a7d8:	00280821 	addu	at,at,t0
bfc0a7dc:	a429d0da 	sh	t1,-12070(at)
bfc0a7e0:	25040004 	addiu	a0,t0,4
bfc0a7e4:	2505fffc 	addiu	a1,t0,-4
bfc0a7e8:	3c010001 	lui	at,0x1
bfc0a7ec:	00240821 	addu	at,at,a0
bfc0a7f0:	ac24d0d8 	sw	a0,-12072(at)
bfc0a7f4:	3c010001 	lui	at,0x1
bfc0a7f8:	00250821 	addu	at,at,a1
bfc0a7fc:	ac25d0d8 	sw	a1,-12072(at)
bfc0a800:	3c020001 	lui	v0,0x1
bfc0a804:	00481021 	addu	v0,v0,t0
bfc0a808:	8c42d0d8 	lw	v0,-12072(v0)
bfc0a80c:	3c040001 	lui	a0,0x1
bfc0a810:	00852021 	addu	a0,a0,a1
bfc0a814:	8c84d0d8 	lw	a0,-12072(a0)
bfc0a818:	3c050001 	lui	a1,0x1
bfc0a81c:	00a42821 	addu	a1,a1,a0
bfc0a820:	8ca5d0d8 	lw	a1,-12072(a1)
bfc0a824:	3c060001 	lui	a2,0x1
bfc0a828:	00c53021 	addu	a2,a2,a1
bfc0a82c:	8cc6d0d8 	lw	a2,-12072(a2)
bfc0a830:	14430839 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a834:	00000000 	nop
/home/csy/func/inst/n64_sh.S:27
bfc0a838:	3c0aaa82 	lui	t2,0xaa82
bfc0a83c:	354a73e0 	ori	t2,t2,0x73e0
bfc0a840:	3c094ad4 	lui	t1,0x4ad4
bfc0a844:	35294d00 	ori	t1,t1,0x4d00
bfc0a848:	3c08800d 	lui	t0,0x800d
bfc0a84c:	35089cf0 	ori	t0,t0,0x9cf0
bfc0a850:	3c03aa82 	lui	v1,0xaa82
bfc0a854:	34634d00 	ori	v1,v1,0x4d00
bfc0a858:	ad0a3ecc 	sw	t2,16076(t0)
bfc0a85c:	a5093ecc 	sh	t1,16076(t0)
bfc0a860:	25040004 	addiu	a0,t0,4
bfc0a864:	2505fffc 	addiu	a1,t0,-4
bfc0a868:	ac843ecc 	sw	a0,16076(a0)
bfc0a86c:	aca53ecc 	sw	a1,16076(a1)
bfc0a870:	8d023ecc 	lw	v0,16076(t0)
bfc0a874:	8ca43ecc 	lw	a0,16076(a1)
bfc0a878:	8c853ecc 	lw	a1,16076(a0)
bfc0a87c:	8ca63ecc 	lw	a2,16076(a1)
bfc0a880:	14430825 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a884:	00000000 	nop
/home/csy/func/inst/n64_sh.S:28
bfc0a888:	3c0a98dd 	lui	t2,0x98dd
bfc0a88c:	354a412e 	ori	t2,t2,0x412e
bfc0a890:	3c09c3e1 	lui	t1,0xc3e1
bfc0a894:	3529f538 	ori	t1,t1,0xf538
bfc0a898:	3c08800d 	lui	t0,0x800d
bfc0a89c:	350833d4 	ori	t0,t0,0x33d4
bfc0a8a0:	3c0398dd 	lui	v1,0x98dd
bfc0a8a4:	3463f538 	ori	v1,v1,0xf538
bfc0a8a8:	ad0a6888 	sw	t2,26760(t0)
bfc0a8ac:	a5096888 	sh	t1,26760(t0)
bfc0a8b0:	25040004 	addiu	a0,t0,4
bfc0a8b4:	2505fffc 	addiu	a1,t0,-4
bfc0a8b8:	ac846888 	sw	a0,26760(a0)
bfc0a8bc:	aca56888 	sw	a1,26760(a1)
bfc0a8c0:	8d026888 	lw	v0,26760(t0)
bfc0a8c4:	8ca46888 	lw	a0,26760(a1)
bfc0a8c8:	8c856888 	lw	a1,26760(a0)
bfc0a8cc:	8ca66888 	lw	a2,26760(a1)
bfc0a8d0:	14430811 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a8d4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:29
bfc0a8d8:	3c0af705 	lui	t2,0xf705
bfc0a8dc:	354a1708 	ori	t2,t2,0x1708
bfc0a8e0:	3c092612 	lui	t1,0x2612
bfc0a8e4:	3529cae7 	ori	t1,t1,0xcae7
bfc0a8e8:	3c08800d 	lui	t0,0x800d
bfc0a8ec:	3508910c 	ori	t0,t0,0x910c
bfc0a8f0:	3c03cae7 	lui	v1,0xcae7
bfc0a8f4:	34631708 	ori	v1,v1,0x1708
bfc0a8f8:	ad0a6588 	sw	t2,25992(t0)
bfc0a8fc:	a509658a 	sh	t1,25994(t0)
bfc0a900:	25040004 	addiu	a0,t0,4
bfc0a904:	2505fffc 	addiu	a1,t0,-4
bfc0a908:	ac846588 	sw	a0,25992(a0)
bfc0a90c:	aca56588 	sw	a1,25992(a1)
bfc0a910:	8d026588 	lw	v0,25992(t0)
bfc0a914:	8ca46588 	lw	a0,25992(a1)
bfc0a918:	8c856588 	lw	a1,25992(a0)
bfc0a91c:	8ca66588 	lw	a2,25992(a1)
bfc0a920:	144307fd 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a924:	00000000 	nop
/home/csy/func/inst/n64_sh.S:30
bfc0a928:	3c0af649 	lui	t2,0xf649
bfc0a92c:	354ab700 	ori	t2,t2,0xb700
bfc0a930:	3c09d674 	lui	t1,0xd674
bfc0a934:	3529f530 	ori	t1,t1,0xf530
bfc0a938:	3c08800d 	lui	t0,0x800d
bfc0a93c:	350843f4 	ori	t0,t0,0x43f4
bfc0a940:	3c03f649 	lui	v1,0xf649
bfc0a944:	3463f530 	ori	v1,v1,0xf530
bfc0a948:	ad0a7ae0 	sw	t2,31456(t0)
bfc0a94c:	a5097ae0 	sh	t1,31456(t0)
bfc0a950:	25040004 	addiu	a0,t0,4
bfc0a954:	2505fffc 	addiu	a1,t0,-4
bfc0a958:	ac847ae0 	sw	a0,31456(a0)
bfc0a95c:	aca57ae0 	sw	a1,31456(a1)
bfc0a960:	8d027ae0 	lw	v0,31456(t0)
bfc0a964:	8ca47ae0 	lw	a0,31456(a1)
bfc0a968:	8c857ae0 	lw	a1,31456(a0)
bfc0a96c:	8ca67ae0 	lw	a2,31456(a1)
bfc0a970:	144307e9 	bne	v0,v1,bfc0c918 <inst_error>
bfc0a974:	00000000 	nop
/home/csy/func/inst/n64_sh.S:31
bfc0a978:	3c0a0080 	lui	t2,0x80
bfc0a97c:	354a4f26 	ori	t2,t2,0x4f26
bfc0a980:	3c0923b1 	lui	t1,0x23b1
bfc0a984:	3529f91c 	ori	t1,t1,0xf91c
bfc0a988:	3c08800d 	lui	t0,0x800d
bfc0a98c:	35082b58 	ori	t0,t0,0x2b58
bfc0a990:	3c03f91c 	lui	v1,0xf91c
bfc0a994:	34634f26 	ori	v1,v1,0x4f26
bfc0a998:	3c010001 	lui	at,0x1
bfc0a99c:	00280821 	addu	at,at,t0
bfc0a9a0:	ac2ac824 	sw	t2,-14300(at)
bfc0a9a4:	3c010001 	lui	at,0x1
bfc0a9a8:	00280821 	addu	at,at,t0
bfc0a9ac:	a429c826 	sh	t1,-14298(at)
bfc0a9b0:	25040004 	addiu	a0,t0,4
bfc0a9b4:	2505fffc 	addiu	a1,t0,-4
bfc0a9b8:	3c010001 	lui	at,0x1
bfc0a9bc:	00240821 	addu	at,at,a0
bfc0a9c0:	ac24c824 	sw	a0,-14300(at)
bfc0a9c4:	3c010001 	lui	at,0x1
bfc0a9c8:	00250821 	addu	at,at,a1
bfc0a9cc:	ac25c824 	sw	a1,-14300(at)
bfc0a9d0:	3c020001 	lui	v0,0x1
bfc0a9d4:	00481021 	addu	v0,v0,t0
bfc0a9d8:	8c42c824 	lw	v0,-14300(v0)
bfc0a9dc:	3c040001 	lui	a0,0x1
bfc0a9e0:	00852021 	addu	a0,a0,a1
bfc0a9e4:	8c84c824 	lw	a0,-14300(a0)
bfc0a9e8:	3c050001 	lui	a1,0x1
bfc0a9ec:	00a42821 	addu	a1,a1,a0
bfc0a9f0:	8ca5c824 	lw	a1,-14300(a1)
bfc0a9f4:	3c060001 	lui	a2,0x1
bfc0a9f8:	00c53021 	addu	a2,a2,a1
bfc0a9fc:	8cc6c824 	lw	a2,-14300(a2)
bfc0aa00:	144307c5 	bne	v0,v1,bfc0c918 <inst_error>
bfc0aa04:	00000000 	nop
/home/csy/func/inst/n64_sh.S:32
bfc0aa08:	3c0a82ca 	lui	t2,0x82ca
bfc0aa0c:	354a8844 	ori	t2,t2,0x8844
bfc0aa10:	3c09b7b6 	lui	t1,0xb7b6
bfc0aa14:	3529d134 	ori	t1,t1,0xd134
bfc0aa18:	3c08800d 	lui	t0,0x800d
bfc0aa1c:	3508065c 	ori	t0,t0,0x65c
bfc0aa20:	3c0382ca 	lui	v1,0x82ca
bfc0aa24:	3463d134 	ori	v1,v1,0xd134
bfc0aa28:	ad0a1508 	sw	t2,5384(t0)
bfc0aa2c:	a5091508 	sh	t1,5384(t0)
bfc0aa30:	25040004 	addiu	a0,t0,4
bfc0aa34:	2505fffc 	addiu	a1,t0,-4
bfc0aa38:	ac841508 	sw	a0,5384(a0)
bfc0aa3c:	aca51508 	sw	a1,5384(a1)
bfc0aa40:	8d021508 	lw	v0,5384(t0)
bfc0aa44:	8ca41508 	lw	a0,5384(a1)
bfc0aa48:	8c851508 	lw	a1,5384(a0)
bfc0aa4c:	8ca61508 	lw	a2,5384(a1)
bfc0aa50:	144307b1 	bne	v0,v1,bfc0c918 <inst_error>
bfc0aa54:	00000000 	nop
/home/csy/func/inst/n64_sh.S:33
bfc0aa58:	3c0a74b5 	lui	t2,0x74b5
bfc0aa5c:	354a6c00 	ori	t2,t2,0x6c00
bfc0aa60:	3c09c125 	lui	t1,0xc125
bfc0aa64:	35290920 	ori	t1,t1,0x920
bfc0aa68:	3c08800d 	lui	t0,0x800d
bfc0aa6c:	35084370 	ori	t0,t0,0x4370
bfc0aa70:	3c030920 	lui	v1,0x920
bfc0aa74:	34636c00 	ori	v1,v1,0x6c00
bfc0aa78:	3c010001 	lui	at,0x1
bfc0aa7c:	00280821 	addu	at,at,t0
bfc0aa80:	ac2a8a90 	sw	t2,-30064(at)
bfc0aa84:	3c010001 	lui	at,0x1
bfc0aa88:	00280821 	addu	at,at,t0
bfc0aa8c:	a4298a92 	sh	t1,-30062(at)
bfc0aa90:	25040004 	addiu	a0,t0,4
bfc0aa94:	2505fffc 	addiu	a1,t0,-4
bfc0aa98:	3c010001 	lui	at,0x1
bfc0aa9c:	00240821 	addu	at,at,a0
bfc0aaa0:	ac248a90 	sw	a0,-30064(at)
bfc0aaa4:	3c010001 	lui	at,0x1
bfc0aaa8:	00250821 	addu	at,at,a1
bfc0aaac:	ac258a90 	sw	a1,-30064(at)
bfc0aab0:	3c020001 	lui	v0,0x1
bfc0aab4:	00481021 	addu	v0,v0,t0
bfc0aab8:	8c428a90 	lw	v0,-30064(v0)
bfc0aabc:	3c040001 	lui	a0,0x1
bfc0aac0:	00852021 	addu	a0,a0,a1
bfc0aac4:	8c848a90 	lw	a0,-30064(a0)
bfc0aac8:	3c050001 	lui	a1,0x1
bfc0aacc:	00a42821 	addu	a1,a1,a0
bfc0aad0:	8ca58a90 	lw	a1,-30064(a1)
bfc0aad4:	3c060001 	lui	a2,0x1
bfc0aad8:	00c53021 	addu	a2,a2,a1
bfc0aadc:	8cc68a90 	lw	a2,-30064(a2)
bfc0aae0:	1443078d 	bne	v0,v1,bfc0c918 <inst_error>
bfc0aae4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:34
bfc0aae8:	3c0ab99f 	lui	t2,0xb99f
bfc0aaec:	354aef40 	ori	t2,t2,0xef40
bfc0aaf0:	3c09d537 	lui	t1,0xd537
bfc0aaf4:	35297a44 	ori	t1,t1,0x7a44
bfc0aaf8:	3c08800d 	lui	t0,0x800d
bfc0aafc:	35080144 	ori	t0,t0,0x144
bfc0ab00:	3c03b99f 	lui	v1,0xb99f
bfc0ab04:	34637a44 	ori	v1,v1,0x7a44
bfc0ab08:	3c010001 	lui	at,0x1
bfc0ab0c:	00280821 	addu	at,at,t0
bfc0ab10:	ac2ac640 	sw	t2,-14784(at)
bfc0ab14:	3c010001 	lui	at,0x1
bfc0ab18:	00280821 	addu	at,at,t0
bfc0ab1c:	a429c640 	sh	t1,-14784(at)
bfc0ab20:	25040004 	addiu	a0,t0,4
bfc0ab24:	2505fffc 	addiu	a1,t0,-4
bfc0ab28:	3c010001 	lui	at,0x1
bfc0ab2c:	00240821 	addu	at,at,a0
bfc0ab30:	ac24c640 	sw	a0,-14784(at)
bfc0ab34:	3c010001 	lui	at,0x1
bfc0ab38:	00250821 	addu	at,at,a1
bfc0ab3c:	ac25c640 	sw	a1,-14784(at)
bfc0ab40:	3c020001 	lui	v0,0x1
bfc0ab44:	00481021 	addu	v0,v0,t0
bfc0ab48:	8c42c640 	lw	v0,-14784(v0)
bfc0ab4c:	3c040001 	lui	a0,0x1
bfc0ab50:	00852021 	addu	a0,a0,a1
bfc0ab54:	8c84c640 	lw	a0,-14784(a0)
bfc0ab58:	3c050001 	lui	a1,0x1
bfc0ab5c:	00a42821 	addu	a1,a1,a0
bfc0ab60:	8ca5c640 	lw	a1,-14784(a1)
bfc0ab64:	3c060001 	lui	a2,0x1
bfc0ab68:	00c53021 	addu	a2,a2,a1
bfc0ab6c:	8cc6c640 	lw	a2,-14784(a2)
bfc0ab70:	14430769 	bne	v0,v1,bfc0c918 <inst_error>
bfc0ab74:	00000000 	nop
/home/csy/func/inst/n64_sh.S:35
bfc0ab78:	3c0abf9b 	lui	t2,0xbf9b
bfc0ab7c:	354a8ef0 	ori	t2,t2,0x8ef0
bfc0ab80:	3c09868b 	lui	t1,0x868b
bfc0ab84:	35291930 	ori	t1,t1,0x1930
bfc0ab88:	3c08800d 	lui	t0,0x800d
bfc0ab8c:	35085920 	ori	t0,t0,0x5920
bfc0ab90:	3c031930 	lui	v1,0x1930
bfc0ab94:	34638ef0 	ori	v1,v1,0x8ef0
bfc0ab98:	ad0a3fd4 	sw	t2,16340(t0)
bfc0ab9c:	a5093fd6 	sh	t1,16342(t0)
bfc0aba0:	25040004 	addiu	a0,t0,4
bfc0aba4:	2505fffc 	addiu	a1,t0,-4
bfc0aba8:	ac843fd4 	sw	a0,16340(a0)
bfc0abac:	aca53fd4 	sw	a1,16340(a1)
bfc0abb0:	8d023fd4 	lw	v0,16340(t0)
bfc0abb4:	8ca43fd4 	lw	a0,16340(a1)
bfc0abb8:	8c853fd4 	lw	a1,16340(a0)
bfc0abbc:	8ca63fd4 	lw	a2,16340(a1)
bfc0abc0:	14430755 	bne	v0,v1,bfc0c918 <inst_error>
bfc0abc4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:36
bfc0abc8:	3c0a7da1 	lui	t2,0x7da1
bfc0abcc:	354aadef 	ori	t2,t2,0xadef
bfc0abd0:	3c097d70 	lui	t1,0x7d70
bfc0abd4:	352908a0 	ori	t1,t1,0x8a0
bfc0abd8:	3c08800d 	lui	t0,0x800d
bfc0abdc:	35082020 	ori	t0,t0,0x2020
bfc0abe0:	3c037da1 	lui	v1,0x7da1
bfc0abe4:	346308a0 	ori	v1,v1,0x8a0
bfc0abe8:	ad0a4cc0 	sw	t2,19648(t0)
bfc0abec:	a5094cc0 	sh	t1,19648(t0)
bfc0abf0:	25040004 	addiu	a0,t0,4
bfc0abf4:	2505fffc 	addiu	a1,t0,-4
bfc0abf8:	ac844cc0 	sw	a0,19648(a0)
bfc0abfc:	aca54cc0 	sw	a1,19648(a1)
bfc0ac00:	8d024cc0 	lw	v0,19648(t0)
bfc0ac04:	8ca44cc0 	lw	a0,19648(a1)
bfc0ac08:	8c854cc0 	lw	a1,19648(a0)
bfc0ac0c:	8ca64cc0 	lw	a2,19648(a1)
bfc0ac10:	14430741 	bne	v0,v1,bfc0c918 <inst_error>
bfc0ac14:	00000000 	nop
/home/csy/func/inst/n64_sh.S:37
bfc0ac18:	3c0af233 	lui	t2,0xf233
bfc0ac1c:	354a47d4 	ori	t2,t2,0x47d4
bfc0ac20:	3c092140 	lui	t1,0x2140
bfc0ac24:	352970c6 	ori	t1,t1,0x70c6
bfc0ac28:	3c08800d 	lui	t0,0x800d
bfc0ac2c:	35080b58 	ori	t0,t0,0xb58
bfc0ac30:	3c03f233 	lui	v1,0xf233
bfc0ac34:	346370c6 	ori	v1,v1,0x70c6
bfc0ac38:	3c010001 	lui	at,0x1
bfc0ac3c:	00280821 	addu	at,at,t0
bfc0ac40:	ac2ac83c 	sw	t2,-14276(at)
bfc0ac44:	3c010001 	lui	at,0x1
bfc0ac48:	00280821 	addu	at,at,t0
bfc0ac4c:	a429c83c 	sh	t1,-14276(at)
bfc0ac50:	25040004 	addiu	a0,t0,4
bfc0ac54:	2505fffc 	addiu	a1,t0,-4
bfc0ac58:	3c010001 	lui	at,0x1
bfc0ac5c:	00240821 	addu	at,at,a0
bfc0ac60:	ac24c83c 	sw	a0,-14276(at)
bfc0ac64:	3c010001 	lui	at,0x1
bfc0ac68:	00250821 	addu	at,at,a1
bfc0ac6c:	ac25c83c 	sw	a1,-14276(at)
bfc0ac70:	3c020001 	lui	v0,0x1
bfc0ac74:	00481021 	addu	v0,v0,t0
bfc0ac78:	8c42c83c 	lw	v0,-14276(v0)
bfc0ac7c:	3c040001 	lui	a0,0x1
bfc0ac80:	00852021 	addu	a0,a0,a1
bfc0ac84:	8c84c83c 	lw	a0,-14276(a0)
bfc0ac88:	3c050001 	lui	a1,0x1
bfc0ac8c:	00a42821 	addu	a1,a1,a0
bfc0ac90:	8ca5c83c 	lw	a1,-14276(a1)
bfc0ac94:	3c060001 	lui	a2,0x1
bfc0ac98:	00c53021 	addu	a2,a2,a1
bfc0ac9c:	8cc6c83c 	lw	a2,-14276(a2)
bfc0aca0:	1443071d 	bne	v0,v1,bfc0c918 <inst_error>
bfc0aca4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:38
bfc0aca8:	3c0ab54f 	lui	t2,0xb54f
bfc0acac:	354a5ca2 	ori	t2,t2,0x5ca2
bfc0acb0:	3c098937 	lui	t1,0x8937
bfc0acb4:	352935c8 	ori	t1,t1,0x35c8
bfc0acb8:	3c08800d 	lui	t0,0x800d
bfc0acbc:	350823a4 	ori	t0,t0,0x23a4
bfc0acc0:	3c03b54f 	lui	v1,0xb54f
bfc0acc4:	346335c8 	ori	v1,v1,0x35c8
bfc0acc8:	ad0a5048 	sw	t2,20552(t0)
bfc0accc:	a5095048 	sh	t1,20552(t0)
bfc0acd0:	25040004 	addiu	a0,t0,4
bfc0acd4:	2505fffc 	addiu	a1,t0,-4
bfc0acd8:	ac845048 	sw	a0,20552(a0)
bfc0acdc:	aca55048 	sw	a1,20552(a1)
bfc0ace0:	8d025048 	lw	v0,20552(t0)
bfc0ace4:	8ca45048 	lw	a0,20552(a1)
bfc0ace8:	8c855048 	lw	a1,20552(a0)
bfc0acec:	8ca65048 	lw	a2,20552(a1)
bfc0acf0:	14430709 	bne	v0,v1,bfc0c918 <inst_error>
bfc0acf4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:39
bfc0acf8:	3c0af829 	lui	t2,0xf829
bfc0acfc:	354a69ad 	ori	t2,t2,0x69ad
bfc0ad00:	3c090121 	lui	t1,0x121
bfc0ad04:	3529c94c 	ori	t1,t1,0xc94c
bfc0ad08:	3c08800d 	lui	t0,0x800d
bfc0ad0c:	350824b8 	ori	t0,t0,0x24b8
bfc0ad10:	3c03f829 	lui	v1,0xf829
bfc0ad14:	3463c94c 	ori	v1,v1,0xc94c
bfc0ad18:	ad0a2ad0 	sw	t2,10960(t0)
bfc0ad1c:	a5092ad0 	sh	t1,10960(t0)
bfc0ad20:	25040004 	addiu	a0,t0,4
bfc0ad24:	2505fffc 	addiu	a1,t0,-4
bfc0ad28:	ac842ad0 	sw	a0,10960(a0)
bfc0ad2c:	aca52ad0 	sw	a1,10960(a1)
bfc0ad30:	8d022ad0 	lw	v0,10960(t0)
bfc0ad34:	8ca42ad0 	lw	a0,10960(a1)
bfc0ad38:	8c852ad0 	lw	a1,10960(a0)
bfc0ad3c:	8ca62ad0 	lw	a2,10960(a1)
bfc0ad40:	144306f5 	bne	v0,v1,bfc0c918 <inst_error>
bfc0ad44:	00000000 	nop
/home/csy/func/inst/n64_sh.S:40
bfc0ad48:	3c0aeca9 	lui	t2,0xeca9
bfc0ad4c:	354a6c00 	ori	t2,t2,0x6c00
bfc0ad50:	3c0950bc 	lui	t1,0x50bc
bfc0ad54:	35299348 	ori	t1,t1,0x9348
bfc0ad58:	3c08800d 	lui	t0,0x800d
bfc0ad5c:	35081584 	ori	t0,t0,0x1584
bfc0ad60:	3c03eca9 	lui	v1,0xeca9
bfc0ad64:	34639348 	ori	v1,v1,0x9348
bfc0ad68:	ad0a4ca8 	sw	t2,19624(t0)
bfc0ad6c:	a5094ca8 	sh	t1,19624(t0)
bfc0ad70:	25040004 	addiu	a0,t0,4
bfc0ad74:	2505fffc 	addiu	a1,t0,-4
bfc0ad78:	ac844ca8 	sw	a0,19624(a0)
bfc0ad7c:	aca54ca8 	sw	a1,19624(a1)
bfc0ad80:	8d024ca8 	lw	v0,19624(t0)
bfc0ad84:	8ca44ca8 	lw	a0,19624(a1)
bfc0ad88:	8c854ca8 	lw	a1,19624(a0)
bfc0ad8c:	8ca64ca8 	lw	a2,19624(a1)
bfc0ad90:	144306e1 	bne	v0,v1,bfc0c918 <inst_error>
bfc0ad94:	00000000 	nop
/home/csy/func/inst/n64_sh.S:41
bfc0ad98:	3c0ab731 	lui	t2,0xb731
bfc0ad9c:	354ae211 	ori	t2,t2,0xe211
bfc0ada0:	3c09097e 	lui	t1,0x97e
bfc0ada4:	352993b8 	ori	t1,t1,0x93b8
bfc0ada8:	3c08800d 	lui	t0,0x800d
bfc0adac:	35081a8c 	ori	t0,t0,0x1a8c
bfc0adb0:	3c03b731 	lui	v1,0xb731
bfc0adb4:	346393b8 	ori	v1,v1,0x93b8
bfc0adb8:	ad0a514c 	sw	t2,20812(t0)
bfc0adbc:	a509514c 	sh	t1,20812(t0)
bfc0adc0:	25040004 	addiu	a0,t0,4
bfc0adc4:	2505fffc 	addiu	a1,t0,-4
bfc0adc8:	ac84514c 	sw	a0,20812(a0)
bfc0adcc:	aca5514c 	sw	a1,20812(a1)
bfc0add0:	8d02514c 	lw	v0,20812(t0)
bfc0add4:	8ca4514c 	lw	a0,20812(a1)
bfc0add8:	8c85514c 	lw	a1,20812(a0)
bfc0addc:	8ca6514c 	lw	a2,20812(a1)
bfc0ade0:	144306cd 	bne	v0,v1,bfc0c918 <inst_error>
bfc0ade4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:42
bfc0ade8:	3c0ae4e4 	lui	t2,0xe4e4
bfc0adec:	354a2ad0 	ori	t2,t2,0x2ad0
bfc0adf0:	3c095f45 	lui	t1,0x5f45
bfc0adf4:	3529347c 	ori	t1,t1,0x347c
bfc0adf8:	3c08800d 	lui	t0,0x800d
bfc0adfc:	350854d8 	ori	t0,t0,0x54d8
bfc0ae00:	3c03e4e4 	lui	v1,0xe4e4
bfc0ae04:	3463347c 	ori	v1,v1,0x347c
bfc0ae08:	ad0a4284 	sw	t2,17028(t0)
bfc0ae0c:	a5094284 	sh	t1,17028(t0)
bfc0ae10:	25040004 	addiu	a0,t0,4
bfc0ae14:	2505fffc 	addiu	a1,t0,-4
bfc0ae18:	ac844284 	sw	a0,17028(a0)
bfc0ae1c:	aca54284 	sw	a1,17028(a1)
bfc0ae20:	8d024284 	lw	v0,17028(t0)
bfc0ae24:	8ca44284 	lw	a0,17028(a1)
bfc0ae28:	8c854284 	lw	a1,17028(a0)
bfc0ae2c:	8ca64284 	lw	a2,17028(a1)
bfc0ae30:	144306b9 	bne	v0,v1,bfc0c918 <inst_error>
bfc0ae34:	00000000 	nop
/home/csy/func/inst/n64_sh.S:43
bfc0ae38:	3c0a4aa5 	lui	t2,0x4aa5
bfc0ae3c:	354ac058 	ori	t2,t2,0xc058
bfc0ae40:	3c095e83 	lui	t1,0x5e83
bfc0ae44:	3529e8d0 	ori	t1,t1,0xe8d0
bfc0ae48:	3c08800d 	lui	t0,0x800d
bfc0ae4c:	350828c0 	ori	t0,t0,0x28c0
bfc0ae50:	3c03e8d0 	lui	v1,0xe8d0
bfc0ae54:	3463c058 	ori	v1,v1,0xc058
bfc0ae58:	3c010001 	lui	at,0x1
bfc0ae5c:	00280821 	addu	at,at,t0
bfc0ae60:	ac2ab0c8 	sw	t2,-20280(at)
bfc0ae64:	3c010001 	lui	at,0x1
bfc0ae68:	00280821 	addu	at,at,t0
bfc0ae6c:	a429b0ca 	sh	t1,-20278(at)
bfc0ae70:	25040004 	addiu	a0,t0,4
bfc0ae74:	2505fffc 	addiu	a1,t0,-4
bfc0ae78:	3c010001 	lui	at,0x1
bfc0ae7c:	00240821 	addu	at,at,a0
bfc0ae80:	ac24b0c8 	sw	a0,-20280(at)
bfc0ae84:	3c010001 	lui	at,0x1
bfc0ae88:	00250821 	addu	at,at,a1
bfc0ae8c:	ac25b0c8 	sw	a1,-20280(at)
bfc0ae90:	3c020001 	lui	v0,0x1
bfc0ae94:	00481021 	addu	v0,v0,t0
bfc0ae98:	8c42b0c8 	lw	v0,-20280(v0)
bfc0ae9c:	3c040001 	lui	a0,0x1
bfc0aea0:	00852021 	addu	a0,a0,a1
bfc0aea4:	8c84b0c8 	lw	a0,-20280(a0)
bfc0aea8:	3c050001 	lui	a1,0x1
bfc0aeac:	00a42821 	addu	a1,a1,a0
bfc0aeb0:	8ca5b0c8 	lw	a1,-20280(a1)
bfc0aeb4:	3c060001 	lui	a2,0x1
bfc0aeb8:	00c53021 	addu	a2,a2,a1
bfc0aebc:	8cc6b0c8 	lw	a2,-20280(a2)
bfc0aec0:	14430695 	bne	v0,v1,bfc0c918 <inst_error>
bfc0aec4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:44
bfc0aec8:	3c0a1054 	lui	t2,0x1054
bfc0aecc:	354a6b60 	ori	t2,t2,0x6b60
bfc0aed0:	3c099492 	lui	t1,0x9492
bfc0aed4:	352920de 	ori	t1,t1,0x20de
bfc0aed8:	3c08800d 	lui	t0,0x800d
bfc0aedc:	3508eb88 	ori	t0,t0,0xeb88
bfc0aee0:	3c031054 	lui	v1,0x1054
bfc0aee4:	346320de 	ori	v1,v1,0x20de
bfc0aee8:	ad0a1084 	sw	t2,4228(t0)
bfc0aeec:	a5091084 	sh	t1,4228(t0)
bfc0aef0:	25040004 	addiu	a0,t0,4
bfc0aef4:	2505fffc 	addiu	a1,t0,-4
bfc0aef8:	ac841084 	sw	a0,4228(a0)
bfc0aefc:	aca51084 	sw	a1,4228(a1)
bfc0af00:	8d021084 	lw	v0,4228(t0)
bfc0af04:	8ca41084 	lw	a0,4228(a1)
bfc0af08:	8c851084 	lw	a1,4228(a0)
bfc0af0c:	8ca61084 	lw	a2,4228(a1)
bfc0af10:	14430681 	bne	v0,v1,bfc0c918 <inst_error>
bfc0af14:	00000000 	nop
/home/csy/func/inst/n64_sh.S:45
bfc0af18:	3c0a54c8 	lui	t2,0x54c8
bfc0af1c:	354a7bb0 	ori	t2,t2,0x7bb0
bfc0af20:	3c09ac9f 	lui	t1,0xac9f
bfc0af24:	35291540 	ori	t1,t1,0x1540
bfc0af28:	3c08800d 	lui	t0,0x800d
bfc0af2c:	35088964 	ori	t0,t0,0x8964
bfc0af30:	3c031540 	lui	v1,0x1540
bfc0af34:	34637bb0 	ori	v1,v1,0x7bb0
bfc0af38:	ad0a3c7c 	sw	t2,15484(t0)
bfc0af3c:	a5093c7e 	sh	t1,15486(t0)
bfc0af40:	25040004 	addiu	a0,t0,4
bfc0af44:	2505fffc 	addiu	a1,t0,-4
bfc0af48:	ac843c7c 	sw	a0,15484(a0)
bfc0af4c:	aca53c7c 	sw	a1,15484(a1)
bfc0af50:	8d023c7c 	lw	v0,15484(t0)
bfc0af54:	8ca43c7c 	lw	a0,15484(a1)
bfc0af58:	8c853c7c 	lw	a1,15484(a0)
bfc0af5c:	8ca63c7c 	lw	a2,15484(a1)
bfc0af60:	1443066d 	bne	v0,v1,bfc0c918 <inst_error>
bfc0af64:	00000000 	nop
/home/csy/func/inst/n64_sh.S:46
bfc0af68:	3c0a2061 	lui	t2,0x2061
bfc0af6c:	354a2be0 	ori	t2,t2,0x2be0
bfc0af70:	3c097623 	lui	t1,0x7623
bfc0af74:	35291aa0 	ori	t1,t1,0x1aa0
bfc0af78:	3c08800d 	lui	t0,0x800d
bfc0af7c:	3508a4a4 	ori	t0,t0,0xa4a4
bfc0af80:	3c031aa0 	lui	v1,0x1aa0
bfc0af84:	34632be0 	ori	v1,v1,0x2be0
bfc0af88:	ad0a3118 	sw	t2,12568(t0)
bfc0af8c:	a509311a 	sh	t1,12570(t0)
bfc0af90:	25040004 	addiu	a0,t0,4
bfc0af94:	2505fffc 	addiu	a1,t0,-4
bfc0af98:	ac843118 	sw	a0,12568(a0)
bfc0af9c:	aca53118 	sw	a1,12568(a1)
bfc0afa0:	8d023118 	lw	v0,12568(t0)
bfc0afa4:	8ca43118 	lw	a0,12568(a1)
bfc0afa8:	8c853118 	lw	a1,12568(a0)
bfc0afac:	8ca63118 	lw	a2,12568(a1)
bfc0afb0:	14430659 	bne	v0,v1,bfc0c918 <inst_error>
bfc0afb4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:47
bfc0afb8:	3c0a2393 	lui	t2,0x2393
bfc0afbc:	354a8928 	ori	t2,t2,0x8928
bfc0afc0:	3c095976 	lui	t1,0x5976
bfc0afc4:	3529c160 	ori	t1,t1,0xc160
bfc0afc8:	3c08800d 	lui	t0,0x800d
bfc0afcc:	3508c7c8 	ori	t0,t0,0xc7c8
bfc0afd0:	3c03c160 	lui	v1,0xc160
bfc0afd4:	34638928 	ori	v1,v1,0x8928
bfc0afd8:	ad0a00d0 	sw	t2,208(t0)
bfc0afdc:	a50900d2 	sh	t1,210(t0)
bfc0afe0:	25040004 	addiu	a0,t0,4
bfc0afe4:	2505fffc 	addiu	a1,t0,-4
bfc0afe8:	ac8400d0 	sw	a0,208(a0)
bfc0afec:	aca500d0 	sw	a1,208(a1)
bfc0aff0:	8d0200d0 	lw	v0,208(t0)
bfc0aff4:	8ca400d0 	lw	a0,208(a1)
bfc0aff8:	8c8500d0 	lw	a1,208(a0)
bfc0affc:	8ca600d0 	lw	a2,208(a1)
bfc0b000:	14430645 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b004:	00000000 	nop
/home/csy/func/inst/n64_sh.S:48
bfc0b008:	3c0a042a 	lui	t2,0x42a
bfc0b00c:	354a28c0 	ori	t2,t2,0x28c0
bfc0b010:	3c09f84b 	lui	t1,0xf84b
bfc0b014:	3529893f 	ori	t1,t1,0x893f
bfc0b018:	3c08800d 	lui	t0,0x800d
bfc0b01c:	350812f8 	ori	t0,t0,0x12f8
bfc0b020:	3c03893f 	lui	v1,0x893f
bfc0b024:	346328c0 	ori	v1,v1,0x28c0
bfc0b028:	ad0a31ec 	sw	t2,12780(t0)
bfc0b02c:	a50931ee 	sh	t1,12782(t0)
bfc0b030:	25040004 	addiu	a0,t0,4
bfc0b034:	2505fffc 	addiu	a1,t0,-4
bfc0b038:	ac8431ec 	sw	a0,12780(a0)
bfc0b03c:	aca531ec 	sw	a1,12780(a1)
bfc0b040:	8d0231ec 	lw	v0,12780(t0)
bfc0b044:	8ca431ec 	lw	a0,12780(a1)
bfc0b048:	8c8531ec 	lw	a1,12780(a0)
bfc0b04c:	8ca631ec 	lw	a2,12780(a1)
bfc0b050:	14430631 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b054:	00000000 	nop
/home/csy/func/inst/n64_sh.S:49
bfc0b058:	3c0a4b50 	lui	t2,0x4b50
bfc0b05c:	354a9c68 	ori	t2,t2,0x9c68
bfc0b060:	3c090630 	lui	t1,0x630
bfc0b064:	3529b104 	ori	t1,t1,0xb104
bfc0b068:	3c08800d 	lui	t0,0x800d
bfc0b06c:	35084f80 	ori	t0,t0,0x4f80
bfc0b070:	3c034b50 	lui	v1,0x4b50
bfc0b074:	3463b104 	ori	v1,v1,0xb104
bfc0b078:	3c010001 	lui	at,0x1
bfc0b07c:	00280821 	addu	at,at,t0
bfc0b080:	ac2aadbc 	sw	t2,-21060(at)
bfc0b084:	3c010001 	lui	at,0x1
bfc0b088:	00280821 	addu	at,at,t0
bfc0b08c:	a429adbc 	sh	t1,-21060(at)
bfc0b090:	25040004 	addiu	a0,t0,4
bfc0b094:	2505fffc 	addiu	a1,t0,-4
bfc0b098:	3c010001 	lui	at,0x1
bfc0b09c:	00240821 	addu	at,at,a0
bfc0b0a0:	ac24adbc 	sw	a0,-21060(at)
bfc0b0a4:	3c010001 	lui	at,0x1
bfc0b0a8:	00250821 	addu	at,at,a1
bfc0b0ac:	ac25adbc 	sw	a1,-21060(at)
bfc0b0b0:	3c020001 	lui	v0,0x1
bfc0b0b4:	00481021 	addu	v0,v0,t0
bfc0b0b8:	8c42adbc 	lw	v0,-21060(v0)
bfc0b0bc:	3c040001 	lui	a0,0x1
bfc0b0c0:	00852021 	addu	a0,a0,a1
bfc0b0c4:	8c84adbc 	lw	a0,-21060(a0)
bfc0b0c8:	3c050001 	lui	a1,0x1
bfc0b0cc:	00a42821 	addu	a1,a1,a0
bfc0b0d0:	8ca5adbc 	lw	a1,-21060(a1)
bfc0b0d4:	3c060001 	lui	a2,0x1
bfc0b0d8:	00c53021 	addu	a2,a2,a1
bfc0b0dc:	8cc6adbc 	lw	a2,-21060(a2)
bfc0b0e0:	1443060d 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b0e4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:50
bfc0b0e8:	3c0a7ea7 	lui	t2,0x7ea7
bfc0b0ec:	354a4858 	ori	t2,t2,0x4858
bfc0b0f0:	3c098943 	lui	t1,0x8943
bfc0b0f4:	3529216c 	ori	t1,t1,0x216c
bfc0b0f8:	3c08800d 	lui	t0,0x800d
bfc0b0fc:	3c037ea7 	lui	v1,0x7ea7
bfc0b100:	3463216c 	ori	v1,v1,0x216c
bfc0b104:	3c010001 	lui	at,0x1
bfc0b108:	00280821 	addu	at,at,t0
bfc0b10c:	ac2a84f0 	sw	t2,-31504(at)
bfc0b110:	3c010001 	lui	at,0x1
bfc0b114:	00280821 	addu	at,at,t0
bfc0b118:	a42984f0 	sh	t1,-31504(at)
bfc0b11c:	25040004 	addiu	a0,t0,4
bfc0b120:	2505fffc 	addiu	a1,t0,-4
bfc0b124:	3c010001 	lui	at,0x1
bfc0b128:	00240821 	addu	at,at,a0
bfc0b12c:	ac2484f0 	sw	a0,-31504(at)
bfc0b130:	3c010001 	lui	at,0x1
bfc0b134:	00250821 	addu	at,at,a1
bfc0b138:	ac2584f0 	sw	a1,-31504(at)
bfc0b13c:	3c020001 	lui	v0,0x1
bfc0b140:	00481021 	addu	v0,v0,t0
bfc0b144:	8c4284f0 	lw	v0,-31504(v0)
bfc0b148:	3c040001 	lui	a0,0x1
bfc0b14c:	00852021 	addu	a0,a0,a1
bfc0b150:	8c8484f0 	lw	a0,-31504(a0)
bfc0b154:	3c050001 	lui	a1,0x1
bfc0b158:	00a42821 	addu	a1,a1,a0
bfc0b15c:	8ca584f0 	lw	a1,-31504(a1)
bfc0b160:	3c060001 	lui	a2,0x1
bfc0b164:	00c53021 	addu	a2,a2,a1
bfc0b168:	8cc684f0 	lw	a2,-31504(a2)
bfc0b16c:	144305ea 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b170:	00000000 	nop
/home/csy/func/inst/n64_sh.S:51
bfc0b174:	3c0afd4d 	lui	t2,0xfd4d
bfc0b178:	354afbaa 	ori	t2,t2,0xfbaa
bfc0b17c:	3c09fc37 	lui	t1,0xfc37
bfc0b180:	35290cd0 	ori	t1,t1,0xcd0
bfc0b184:	3c08800d 	lui	t0,0x800d
bfc0b188:	3c030cd0 	lui	v1,0xcd0
bfc0b18c:	3463fbaa 	ori	v1,v1,0xfbaa
bfc0b190:	ad0a5b60 	sw	t2,23392(t0)
bfc0b194:	a5095b62 	sh	t1,23394(t0)
bfc0b198:	25040004 	addiu	a0,t0,4
bfc0b19c:	2505fffc 	addiu	a1,t0,-4
bfc0b1a0:	ac845b60 	sw	a0,23392(a0)
bfc0b1a4:	aca55b60 	sw	a1,23392(a1)
bfc0b1a8:	8d025b60 	lw	v0,23392(t0)
bfc0b1ac:	8ca45b60 	lw	a0,23392(a1)
bfc0b1b0:	8c855b60 	lw	a1,23392(a0)
bfc0b1b4:	8ca65b60 	lw	a2,23392(a1)
bfc0b1b8:	144305d7 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b1bc:	00000000 	nop
/home/csy/func/inst/n64_sh.S:52
bfc0b1c0:	3c0aef7b 	lui	t2,0xef7b
bfc0b1c4:	354a46c8 	ori	t2,t2,0x46c8
bfc0b1c8:	3c09ba1d 	lui	t1,0xba1d
bfc0b1cc:	352906fc 	ori	t1,t1,0x6fc
bfc0b1d0:	3c08800d 	lui	t0,0x800d
bfc0b1d4:	3c03ef7b 	lui	v1,0xef7b
bfc0b1d8:	346306fc 	ori	v1,v1,0x6fc
bfc0b1dc:	ad0a5848 	sw	t2,22600(t0)
bfc0b1e0:	a5095848 	sh	t1,22600(t0)
bfc0b1e4:	25040004 	addiu	a0,t0,4
bfc0b1e8:	2505fffc 	addiu	a1,t0,-4
bfc0b1ec:	ac845848 	sw	a0,22600(a0)
bfc0b1f0:	aca55848 	sw	a1,22600(a1)
bfc0b1f4:	8d025848 	lw	v0,22600(t0)
bfc0b1f8:	8ca45848 	lw	a0,22600(a1)
bfc0b1fc:	8c855848 	lw	a1,22600(a0)
bfc0b200:	8ca65848 	lw	a2,22600(a1)
bfc0b204:	144305c4 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b208:	00000000 	nop
/home/csy/func/inst/n64_sh.S:53
bfc0b20c:	3c0a151b 	lui	t2,0x151b
bfc0b210:	354a86df 	ori	t2,t2,0x86df
bfc0b214:	3c0995fa 	lui	t1,0x95fa
bfc0b218:	3529ec5f 	ori	t1,t1,0xec5f
bfc0b21c:	3c08800d 	lui	t0,0x800d
bfc0b220:	3c03151b 	lui	v1,0x151b
bfc0b224:	3463ec5f 	ori	v1,v1,0xec5f
bfc0b228:	ad0a02c0 	sw	t2,704(t0)
bfc0b22c:	a50902c0 	sh	t1,704(t0)
bfc0b230:	25040004 	addiu	a0,t0,4
bfc0b234:	2505fffc 	addiu	a1,t0,-4
bfc0b238:	ac8402c0 	sw	a0,704(a0)
bfc0b23c:	aca502c0 	sw	a1,704(a1)
bfc0b240:	8d0202c0 	lw	v0,704(t0)
bfc0b244:	8ca402c0 	lw	a0,704(a1)
bfc0b248:	8c8502c0 	lw	a1,704(a0)
bfc0b24c:	8ca602c0 	lw	a2,704(a1)
bfc0b250:	144305b1 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b254:	00000000 	nop
/home/csy/func/inst/n64_sh.S:54
bfc0b258:	3c0a1266 	lui	t2,0x1266
bfc0b25c:	354a4cbb 	ori	t2,t2,0x4cbb
bfc0b260:	3c0968ff 	lui	t1,0x68ff
bfc0b264:	35297500 	ori	t1,t1,0x7500
bfc0b268:	3c08800d 	lui	t0,0x800d
bfc0b26c:	3c031266 	lui	v1,0x1266
bfc0b270:	34637500 	ori	v1,v1,0x7500
bfc0b274:	ad0a51ec 	sw	t2,20972(t0)
bfc0b278:	a50951ec 	sh	t1,20972(t0)
bfc0b27c:	25040004 	addiu	a0,t0,4
bfc0b280:	2505fffc 	addiu	a1,t0,-4
bfc0b284:	ac8451ec 	sw	a0,20972(a0)
bfc0b288:	aca551ec 	sw	a1,20972(a1)
bfc0b28c:	8d0251ec 	lw	v0,20972(t0)
bfc0b290:	8ca451ec 	lw	a0,20972(a1)
bfc0b294:	8c8551ec 	lw	a1,20972(a0)
bfc0b298:	8ca651ec 	lw	a2,20972(a1)
bfc0b29c:	1443059e 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b2a0:	00000000 	nop
/home/csy/func/inst/n64_sh.S:55
bfc0b2a4:	3c0a7383 	lui	t2,0x7383
bfc0b2a8:	354a76f0 	ori	t2,t2,0x76f0
bfc0b2ac:	3c097abd 	lui	t1,0x7abd
bfc0b2b0:	3529fe92 	ori	t1,t1,0xfe92
bfc0b2b4:	3c08800d 	lui	t0,0x800d
bfc0b2b8:	3c037383 	lui	v1,0x7383
bfc0b2bc:	3463fe92 	ori	v1,v1,0xfe92
bfc0b2c0:	ad0a010c 	sw	t2,268(t0)
bfc0b2c4:	a509010c 	sh	t1,268(t0)
bfc0b2c8:	25040004 	addiu	a0,t0,4
bfc0b2cc:	2505fffc 	addiu	a1,t0,-4
bfc0b2d0:	ac84010c 	sw	a0,268(a0)
bfc0b2d4:	aca5010c 	sw	a1,268(a1)
bfc0b2d8:	8d02010c 	lw	v0,268(t0)
bfc0b2dc:	8ca4010c 	lw	a0,268(a1)
bfc0b2e0:	8c85010c 	lw	a1,268(a0)
bfc0b2e4:	8ca6010c 	lw	a2,268(a1)
bfc0b2e8:	1443058b 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b2ec:	00000000 	nop
/home/csy/func/inst/n64_sh.S:56
bfc0b2f0:	3c0aa818 	lui	t2,0xa818
bfc0b2f4:	354a59c0 	ori	t2,t2,0x59c0
bfc0b2f8:	3c09eedf 	lui	t1,0xeedf
bfc0b2fc:	35291820 	ori	t1,t1,0x1820
bfc0b300:	3c08800d 	lui	t0,0x800d
bfc0b304:	3c03a818 	lui	v1,0xa818
bfc0b308:	34631820 	ori	v1,v1,0x1820
bfc0b30c:	3c010001 	lui	at,0x1
bfc0b310:	00280821 	addu	at,at,t0
bfc0b314:	ac2abedc 	sw	t2,-16676(at)
bfc0b318:	3c010001 	lui	at,0x1
bfc0b31c:	00280821 	addu	at,at,t0
bfc0b320:	a429bedc 	sh	t1,-16676(at)
bfc0b324:	25040004 	addiu	a0,t0,4
bfc0b328:	2505fffc 	addiu	a1,t0,-4
bfc0b32c:	3c010001 	lui	at,0x1
bfc0b330:	00240821 	addu	at,at,a0
bfc0b334:	ac24bedc 	sw	a0,-16676(at)
bfc0b338:	3c010001 	lui	at,0x1
bfc0b33c:	00250821 	addu	at,at,a1
bfc0b340:	ac25bedc 	sw	a1,-16676(at)
bfc0b344:	3c020001 	lui	v0,0x1
bfc0b348:	00481021 	addu	v0,v0,t0
bfc0b34c:	8c42bedc 	lw	v0,-16676(v0)
bfc0b350:	3c040001 	lui	a0,0x1
bfc0b354:	00852021 	addu	a0,a0,a1
bfc0b358:	8c84bedc 	lw	a0,-16676(a0)
bfc0b35c:	3c050001 	lui	a1,0x1
bfc0b360:	00a42821 	addu	a1,a1,a0
bfc0b364:	8ca5bedc 	lw	a1,-16676(a1)
bfc0b368:	3c060001 	lui	a2,0x1
bfc0b36c:	00c53021 	addu	a2,a2,a1
bfc0b370:	8cc6bedc 	lw	a2,-16676(a2)
bfc0b374:	14430568 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b378:	00000000 	nop
/home/csy/func/inst/n64_sh.S:57
bfc0b37c:	3c0abf96 	lui	t2,0xbf96
bfc0b380:	354a25c0 	ori	t2,t2,0x25c0
bfc0b384:	3c09b775 	lui	t1,0xb775
bfc0b388:	35291ea0 	ori	t1,t1,0x1ea0
bfc0b38c:	3c08800d 	lui	t0,0x800d
bfc0b390:	3c03bf96 	lui	v1,0xbf96
bfc0b394:	34631ea0 	ori	v1,v1,0x1ea0
bfc0b398:	3c010001 	lui	at,0x1
bfc0b39c:	00280821 	addu	at,at,t0
bfc0b3a0:	ac2ac894 	sw	t2,-14188(at)
bfc0b3a4:	3c010001 	lui	at,0x1
bfc0b3a8:	00280821 	addu	at,at,t0
bfc0b3ac:	a429c894 	sh	t1,-14188(at)
bfc0b3b0:	25040004 	addiu	a0,t0,4
bfc0b3b4:	2505fffc 	addiu	a1,t0,-4
bfc0b3b8:	3c010001 	lui	at,0x1
bfc0b3bc:	00240821 	addu	at,at,a0
bfc0b3c0:	ac24c894 	sw	a0,-14188(at)
bfc0b3c4:	3c010001 	lui	at,0x1
bfc0b3c8:	00250821 	addu	at,at,a1
bfc0b3cc:	ac25c894 	sw	a1,-14188(at)
bfc0b3d0:	3c020001 	lui	v0,0x1
bfc0b3d4:	00481021 	addu	v0,v0,t0
bfc0b3d8:	8c42c894 	lw	v0,-14188(v0)
bfc0b3dc:	3c040001 	lui	a0,0x1
bfc0b3e0:	00852021 	addu	a0,a0,a1
bfc0b3e4:	8c84c894 	lw	a0,-14188(a0)
bfc0b3e8:	3c050001 	lui	a1,0x1
bfc0b3ec:	00a42821 	addu	a1,a1,a0
bfc0b3f0:	8ca5c894 	lw	a1,-14188(a1)
bfc0b3f4:	3c060001 	lui	a2,0x1
bfc0b3f8:	00c53021 	addu	a2,a2,a1
bfc0b3fc:	8cc6c894 	lw	a2,-14188(a2)
bfc0b400:	14430545 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b404:	00000000 	nop
/home/csy/func/inst/n64_sh.S:58
bfc0b408:	3c0a8a0b 	lui	t2,0x8a0b
bfc0b40c:	354a0e78 	ori	t2,t2,0xe78
bfc0b410:	3c09aea1 	lui	t1,0xaea1
bfc0b414:	35290357 	ori	t1,t1,0x357
bfc0b418:	3c08800d 	lui	t0,0x800d
bfc0b41c:	3c038a0b 	lui	v1,0x8a0b
bfc0b420:	34630357 	ori	v1,v1,0x357
bfc0b424:	3c010001 	lui	at,0x1
bfc0b428:	00280821 	addu	at,at,t0
bfc0b42c:	ac2ae5e8 	sw	t2,-6680(at)
bfc0b430:	3c010001 	lui	at,0x1
bfc0b434:	00280821 	addu	at,at,t0
bfc0b438:	a429e5e8 	sh	t1,-6680(at)
bfc0b43c:	25040004 	addiu	a0,t0,4
bfc0b440:	2505fffc 	addiu	a1,t0,-4
bfc0b444:	3c010001 	lui	at,0x1
bfc0b448:	00240821 	addu	at,at,a0
bfc0b44c:	ac24e5e8 	sw	a0,-6680(at)
bfc0b450:	3c010001 	lui	at,0x1
bfc0b454:	00250821 	addu	at,at,a1
bfc0b458:	ac25e5e8 	sw	a1,-6680(at)
bfc0b45c:	3c020001 	lui	v0,0x1
bfc0b460:	00481021 	addu	v0,v0,t0
bfc0b464:	8c42e5e8 	lw	v0,-6680(v0)
bfc0b468:	3c040001 	lui	a0,0x1
bfc0b46c:	00852021 	addu	a0,a0,a1
bfc0b470:	8c84e5e8 	lw	a0,-6680(a0)
bfc0b474:	3c050001 	lui	a1,0x1
bfc0b478:	00a42821 	addu	a1,a1,a0
bfc0b47c:	8ca5e5e8 	lw	a1,-6680(a1)
bfc0b480:	3c060001 	lui	a2,0x1
bfc0b484:	00c53021 	addu	a2,a2,a1
bfc0b488:	8cc6e5e8 	lw	a2,-6680(a2)
bfc0b48c:	14430522 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b490:	00000000 	nop
/home/csy/func/inst/n64_sh.S:59
bfc0b494:	3c0a38c0 	lui	t2,0x38c0
bfc0b498:	354afeb0 	ori	t2,t2,0xfeb0
bfc0b49c:	3c092552 	lui	t1,0x2552
bfc0b4a0:	3529c584 	ori	t1,t1,0xc584
bfc0b4a4:	3c08800d 	lui	t0,0x800d
bfc0b4a8:	3c0338c0 	lui	v1,0x38c0
bfc0b4ac:	3463c584 	ori	v1,v1,0xc584
bfc0b4b0:	3c010001 	lui	at,0x1
bfc0b4b4:	00280821 	addu	at,at,t0
bfc0b4b8:	ac2a9968 	sw	t2,-26264(at)
bfc0b4bc:	3c010001 	lui	at,0x1
bfc0b4c0:	00280821 	addu	at,at,t0
bfc0b4c4:	a4299968 	sh	t1,-26264(at)
bfc0b4c8:	25040004 	addiu	a0,t0,4
bfc0b4cc:	2505fffc 	addiu	a1,t0,-4
bfc0b4d0:	3c010001 	lui	at,0x1
bfc0b4d4:	00240821 	addu	at,at,a0
bfc0b4d8:	ac249968 	sw	a0,-26264(at)
bfc0b4dc:	3c010001 	lui	at,0x1
bfc0b4e0:	00250821 	addu	at,at,a1
bfc0b4e4:	ac259968 	sw	a1,-26264(at)
bfc0b4e8:	3c020001 	lui	v0,0x1
bfc0b4ec:	00481021 	addu	v0,v0,t0
bfc0b4f0:	8c429968 	lw	v0,-26264(v0)
bfc0b4f4:	3c040001 	lui	a0,0x1
bfc0b4f8:	00852021 	addu	a0,a0,a1
bfc0b4fc:	8c849968 	lw	a0,-26264(a0)
bfc0b500:	3c050001 	lui	a1,0x1
bfc0b504:	00a42821 	addu	a1,a1,a0
bfc0b508:	8ca59968 	lw	a1,-26264(a1)
bfc0b50c:	3c060001 	lui	a2,0x1
bfc0b510:	00c53021 	addu	a2,a2,a1
bfc0b514:	8cc69968 	lw	a2,-26264(a2)
bfc0b518:	144304ff 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b51c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:60
bfc0b520:	3c0a09de 	lui	t2,0x9de
bfc0b524:	354a6ee8 	ori	t2,t2,0x6ee8
bfc0b528:	3c09e427 	lui	t1,0xe427
bfc0b52c:	35299110 	ori	t1,t1,0x9110
bfc0b530:	3c08800d 	lui	t0,0x800d
bfc0b534:	3c0309de 	lui	v1,0x9de
bfc0b538:	34639110 	ori	v1,v1,0x9110
bfc0b53c:	3c010001 	lui	at,0x1
bfc0b540:	00280821 	addu	at,at,t0
bfc0b544:	ac2aa6a0 	sw	t2,-22880(at)
bfc0b548:	3c010001 	lui	at,0x1
bfc0b54c:	00280821 	addu	at,at,t0
bfc0b550:	a429a6a0 	sh	t1,-22880(at)
bfc0b554:	25040004 	addiu	a0,t0,4
bfc0b558:	2505fffc 	addiu	a1,t0,-4
bfc0b55c:	3c010001 	lui	at,0x1
bfc0b560:	00240821 	addu	at,at,a0
bfc0b564:	ac24a6a0 	sw	a0,-22880(at)
bfc0b568:	3c010001 	lui	at,0x1
bfc0b56c:	00250821 	addu	at,at,a1
bfc0b570:	ac25a6a0 	sw	a1,-22880(at)
bfc0b574:	3c020001 	lui	v0,0x1
bfc0b578:	00481021 	addu	v0,v0,t0
bfc0b57c:	8c42a6a0 	lw	v0,-22880(v0)
bfc0b580:	3c040001 	lui	a0,0x1
bfc0b584:	00852021 	addu	a0,a0,a1
bfc0b588:	8c84a6a0 	lw	a0,-22880(a0)
bfc0b58c:	3c050001 	lui	a1,0x1
bfc0b590:	00a42821 	addu	a1,a1,a0
bfc0b594:	8ca5a6a0 	lw	a1,-22880(a1)
bfc0b598:	3c060001 	lui	a2,0x1
bfc0b59c:	00c53021 	addu	a2,a2,a1
bfc0b5a0:	8cc6a6a0 	lw	a2,-22880(a2)
bfc0b5a4:	144304dc 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b5a8:	00000000 	nop
/home/csy/func/inst/n64_sh.S:61
bfc0b5ac:	3c0affeb 	lui	t2,0xffeb
bfc0b5b0:	354a3340 	ori	t2,t2,0x3340
bfc0b5b4:	3c098950 	lui	t1,0x8950
bfc0b5b8:	3529f9f6 	ori	t1,t1,0xf9f6
bfc0b5bc:	3c08800d 	lui	t0,0x800d
bfc0b5c0:	3c03ffeb 	lui	v1,0xffeb
bfc0b5c4:	3463f9f6 	ori	v1,v1,0xf9f6
bfc0b5c8:	ad0a3408 	sw	t2,13320(t0)
bfc0b5cc:	a5093408 	sh	t1,13320(t0)
bfc0b5d0:	25040004 	addiu	a0,t0,4
bfc0b5d4:	2505fffc 	addiu	a1,t0,-4
bfc0b5d8:	ac843408 	sw	a0,13320(a0)
bfc0b5dc:	aca53408 	sw	a1,13320(a1)
bfc0b5e0:	8d023408 	lw	v0,13320(t0)
bfc0b5e4:	8ca43408 	lw	a0,13320(a1)
bfc0b5e8:	8c853408 	lw	a1,13320(a0)
bfc0b5ec:	8ca63408 	lw	a2,13320(a1)
bfc0b5f0:	144304c9 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b5f4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:62
bfc0b5f8:	3c0a8f70 	lui	t2,0x8f70
bfc0b5fc:	354a24be 	ori	t2,t2,0x24be
bfc0b600:	3c095c89 	lui	t1,0x5c89
bfc0b604:	3529cd7a 	ori	t1,t1,0xcd7a
bfc0b608:	3c08800d 	lui	t0,0x800d
bfc0b60c:	3c038f70 	lui	v1,0x8f70
bfc0b610:	3463cd7a 	ori	v1,v1,0xcd7a
bfc0b614:	3c010001 	lui	at,0x1
bfc0b618:	00280821 	addu	at,at,t0
bfc0b61c:	ac2a8c00 	sw	t2,-29696(at)
bfc0b620:	3c010001 	lui	at,0x1
bfc0b624:	00280821 	addu	at,at,t0
bfc0b628:	a4298c00 	sh	t1,-29696(at)
bfc0b62c:	25040004 	addiu	a0,t0,4
bfc0b630:	2505fffc 	addiu	a1,t0,-4
bfc0b634:	3c010001 	lui	at,0x1
bfc0b638:	00240821 	addu	at,at,a0
bfc0b63c:	ac248c00 	sw	a0,-29696(at)
bfc0b640:	3c010001 	lui	at,0x1
bfc0b644:	00250821 	addu	at,at,a1
bfc0b648:	ac258c00 	sw	a1,-29696(at)
bfc0b64c:	3c020001 	lui	v0,0x1
bfc0b650:	00481021 	addu	v0,v0,t0
bfc0b654:	8c428c00 	lw	v0,-29696(v0)
bfc0b658:	3c040001 	lui	a0,0x1
bfc0b65c:	00852021 	addu	a0,a0,a1
bfc0b660:	8c848c00 	lw	a0,-29696(a0)
bfc0b664:	3c050001 	lui	a1,0x1
bfc0b668:	00a42821 	addu	a1,a1,a0
bfc0b66c:	8ca58c00 	lw	a1,-29696(a1)
bfc0b670:	3c060001 	lui	a2,0x1
bfc0b674:	00c53021 	addu	a2,a2,a1
bfc0b678:	8cc68c00 	lw	a2,-29696(a2)
bfc0b67c:	144304a6 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b680:	00000000 	nop
/home/csy/func/inst/n64_sh.S:63
bfc0b684:	3c0aeb29 	lui	t2,0xeb29
bfc0b688:	354a2500 	ori	t2,t2,0x2500
bfc0b68c:	3c09ac47 	lui	t1,0xac47
bfc0b690:	35296c50 	ori	t1,t1,0x6c50
bfc0b694:	3c08800d 	lui	t0,0x800d
bfc0b698:	3c036c50 	lui	v1,0x6c50
bfc0b69c:	34632500 	ori	v1,v1,0x2500
bfc0b6a0:	3c010001 	lui	at,0x1
bfc0b6a4:	00280821 	addu	at,at,t0
bfc0b6a8:	ac2aad48 	sw	t2,-21176(at)
bfc0b6ac:	3c010001 	lui	at,0x1
bfc0b6b0:	00280821 	addu	at,at,t0
bfc0b6b4:	a429ad4a 	sh	t1,-21174(at)
bfc0b6b8:	25040004 	addiu	a0,t0,4
bfc0b6bc:	2505fffc 	addiu	a1,t0,-4
bfc0b6c0:	3c010001 	lui	at,0x1
bfc0b6c4:	00240821 	addu	at,at,a0
bfc0b6c8:	ac24ad48 	sw	a0,-21176(at)
bfc0b6cc:	3c010001 	lui	at,0x1
bfc0b6d0:	00250821 	addu	at,at,a1
bfc0b6d4:	ac25ad48 	sw	a1,-21176(at)
bfc0b6d8:	3c020001 	lui	v0,0x1
bfc0b6dc:	00481021 	addu	v0,v0,t0
bfc0b6e0:	8c42ad48 	lw	v0,-21176(v0)
bfc0b6e4:	3c040001 	lui	a0,0x1
bfc0b6e8:	00852021 	addu	a0,a0,a1
bfc0b6ec:	8c84ad48 	lw	a0,-21176(a0)
bfc0b6f0:	3c050001 	lui	a1,0x1
bfc0b6f4:	00a42821 	addu	a1,a1,a0
bfc0b6f8:	8ca5ad48 	lw	a1,-21176(a1)
bfc0b6fc:	3c060001 	lui	a2,0x1
bfc0b700:	00c53021 	addu	a2,a2,a1
bfc0b704:	8cc6ad48 	lw	a2,-21176(a2)
bfc0b708:	14430483 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b70c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:64
bfc0b710:	3c0af85d 	lui	t2,0xf85d
bfc0b714:	354a3b84 	ori	t2,t2,0x3b84
bfc0b718:	3c09d58d 	lui	t1,0xd58d
bfc0b71c:	35297eb8 	ori	t1,t1,0x7eb8
bfc0b720:	3c08800d 	lui	t0,0x800d
bfc0b724:	3c03f85d 	lui	v1,0xf85d
bfc0b728:	34637eb8 	ori	v1,v1,0x7eb8
bfc0b72c:	ad0a3c38 	sw	t2,15416(t0)
bfc0b730:	a5093c38 	sh	t1,15416(t0)
bfc0b734:	25040004 	addiu	a0,t0,4
bfc0b738:	2505fffc 	addiu	a1,t0,-4
bfc0b73c:	ac843c38 	sw	a0,15416(a0)
bfc0b740:	aca53c38 	sw	a1,15416(a1)
bfc0b744:	8d023c38 	lw	v0,15416(t0)
bfc0b748:	8ca43c38 	lw	a0,15416(a1)
bfc0b74c:	8c853c38 	lw	a1,15416(a0)
bfc0b750:	8ca63c38 	lw	a2,15416(a1)
bfc0b754:	14430470 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b758:	00000000 	nop
/home/csy/func/inst/n64_sh.S:65
bfc0b75c:	3c0a2b14 	lui	t2,0x2b14
bfc0b760:	354a20e8 	ori	t2,t2,0x20e8
bfc0b764:	3c09b061 	lui	t1,0xb061
bfc0b768:	35298d2c 	ori	t1,t1,0x8d2c
bfc0b76c:	3c08800d 	lui	t0,0x800d
bfc0b770:	3c032b14 	lui	v1,0x2b14
bfc0b774:	34638d2c 	ori	v1,v1,0x8d2c
bfc0b778:	ad0a4b18 	sw	t2,19224(t0)
bfc0b77c:	a5094b18 	sh	t1,19224(t0)
bfc0b780:	25040004 	addiu	a0,t0,4
bfc0b784:	2505fffc 	addiu	a1,t0,-4
bfc0b788:	ac844b18 	sw	a0,19224(a0)
bfc0b78c:	aca54b18 	sw	a1,19224(a1)
bfc0b790:	8d024b18 	lw	v0,19224(t0)
bfc0b794:	8ca44b18 	lw	a0,19224(a1)
bfc0b798:	8c854b18 	lw	a1,19224(a0)
bfc0b79c:	8ca64b18 	lw	a2,19224(a1)
bfc0b7a0:	1443045d 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b7a4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:66
bfc0b7a8:	3c0a9e68 	lui	t2,0x9e68
bfc0b7ac:	354a7728 	ori	t2,t2,0x7728
bfc0b7b0:	3c091e59 	lui	t1,0x1e59
bfc0b7b4:	3529b179 	ori	t1,t1,0xb179
bfc0b7b8:	3c08800d 	lui	t0,0x800d
bfc0b7bc:	3c039e68 	lui	v1,0x9e68
bfc0b7c0:	3463b179 	ori	v1,v1,0xb179
bfc0b7c4:	ad0a3880 	sw	t2,14464(t0)
bfc0b7c8:	a5093880 	sh	t1,14464(t0)
bfc0b7cc:	25040004 	addiu	a0,t0,4
bfc0b7d0:	2505fffc 	addiu	a1,t0,-4
bfc0b7d4:	ac843880 	sw	a0,14464(a0)
bfc0b7d8:	aca53880 	sw	a1,14464(a1)
bfc0b7dc:	8d023880 	lw	v0,14464(t0)
bfc0b7e0:	8ca43880 	lw	a0,14464(a1)
bfc0b7e4:	8c853880 	lw	a1,14464(a0)
bfc0b7e8:	8ca63880 	lw	a2,14464(a1)
bfc0b7ec:	1443044a 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b7f0:	00000000 	nop
/home/csy/func/inst/n64_sh.S:67
bfc0b7f4:	3c0a2611 	lui	t2,0x2611
bfc0b7f8:	354aa63a 	ori	t2,t2,0xa63a
bfc0b7fc:	3c091b8e 	lui	t1,0x1b8e
bfc0b800:	3529eb80 	ori	t1,t1,0xeb80
bfc0b804:	3c08800d 	lui	t0,0x800d
bfc0b808:	3c03eb80 	lui	v1,0xeb80
bfc0b80c:	3463a63a 	ori	v1,v1,0xa63a
bfc0b810:	3c010001 	lui	at,0x1
bfc0b814:	00280821 	addu	at,at,t0
bfc0b818:	ac2a8d70 	sw	t2,-29328(at)
bfc0b81c:	3c010001 	lui	at,0x1
bfc0b820:	00280821 	addu	at,at,t0
bfc0b824:	a4298d72 	sh	t1,-29326(at)
bfc0b828:	25040004 	addiu	a0,t0,4
bfc0b82c:	2505fffc 	addiu	a1,t0,-4
bfc0b830:	3c010001 	lui	at,0x1
bfc0b834:	00240821 	addu	at,at,a0
bfc0b838:	ac248d70 	sw	a0,-29328(at)
bfc0b83c:	3c010001 	lui	at,0x1
bfc0b840:	00250821 	addu	at,at,a1
bfc0b844:	ac258d70 	sw	a1,-29328(at)
bfc0b848:	3c020001 	lui	v0,0x1
bfc0b84c:	00481021 	addu	v0,v0,t0
bfc0b850:	8c428d70 	lw	v0,-29328(v0)
bfc0b854:	3c040001 	lui	a0,0x1
bfc0b858:	00852021 	addu	a0,a0,a1
bfc0b85c:	8c848d70 	lw	a0,-29328(a0)
bfc0b860:	3c050001 	lui	a1,0x1
bfc0b864:	00a42821 	addu	a1,a1,a0
bfc0b868:	8ca58d70 	lw	a1,-29328(a1)
bfc0b86c:	3c060001 	lui	a2,0x1
bfc0b870:	00c53021 	addu	a2,a2,a1
bfc0b874:	8cc68d70 	lw	a2,-29328(a2)
bfc0b878:	14430427 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b87c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:68
bfc0b880:	3c0a1ccb 	lui	t2,0x1ccb
bfc0b884:	354a4da8 	ori	t2,t2,0x4da8
bfc0b888:	3c09e897 	lui	t1,0xe897
bfc0b88c:	35292ef0 	ori	t1,t1,0x2ef0
bfc0b890:	3c08800d 	lui	t0,0x800d
bfc0b894:	3c031ccb 	lui	v1,0x1ccb
bfc0b898:	34632ef0 	ori	v1,v1,0x2ef0
bfc0b89c:	3c010001 	lui	at,0x1
bfc0b8a0:	00280821 	addu	at,at,t0
bfc0b8a4:	ac2aed84 	sw	t2,-4732(at)
bfc0b8a8:	3c010001 	lui	at,0x1
bfc0b8ac:	00280821 	addu	at,at,t0
bfc0b8b0:	a429ed84 	sh	t1,-4732(at)
bfc0b8b4:	25040004 	addiu	a0,t0,4
bfc0b8b8:	2505fffc 	addiu	a1,t0,-4
bfc0b8bc:	3c010001 	lui	at,0x1
bfc0b8c0:	00240821 	addu	at,at,a0
bfc0b8c4:	ac24ed84 	sw	a0,-4732(at)
bfc0b8c8:	3c010001 	lui	at,0x1
bfc0b8cc:	00250821 	addu	at,at,a1
bfc0b8d0:	ac25ed84 	sw	a1,-4732(at)
bfc0b8d4:	3c020001 	lui	v0,0x1
bfc0b8d8:	00481021 	addu	v0,v0,t0
bfc0b8dc:	8c42ed84 	lw	v0,-4732(v0)
bfc0b8e0:	3c040001 	lui	a0,0x1
bfc0b8e4:	00852021 	addu	a0,a0,a1
bfc0b8e8:	8c84ed84 	lw	a0,-4732(a0)
bfc0b8ec:	3c050001 	lui	a1,0x1
bfc0b8f0:	00a42821 	addu	a1,a1,a0
bfc0b8f4:	8ca5ed84 	lw	a1,-4732(a1)
bfc0b8f8:	3c060001 	lui	a2,0x1
bfc0b8fc:	00c53021 	addu	a2,a2,a1
bfc0b900:	8cc6ed84 	lw	a2,-4732(a2)
bfc0b904:	14430404 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b908:	00000000 	nop
/home/csy/func/inst/n64_sh.S:69
bfc0b90c:	3c0a720c 	lui	t2,0x720c
bfc0b910:	354a51f4 	ori	t2,t2,0x51f4
bfc0b914:	3c091c42 	lui	t1,0x1c42
bfc0b918:	3529a1e0 	ori	t1,t1,0xa1e0
bfc0b91c:	3c08800d 	lui	t0,0x800d
bfc0b920:	3c03a1e0 	lui	v1,0xa1e0
bfc0b924:	346351f4 	ori	v1,v1,0x51f4
bfc0b928:	3c010001 	lui	at,0x1
bfc0b92c:	00280821 	addu	at,at,t0
bfc0b930:	ac2aed84 	sw	t2,-4732(at)
bfc0b934:	3c010001 	lui	at,0x1
bfc0b938:	00280821 	addu	at,at,t0
bfc0b93c:	a429ed86 	sh	t1,-4730(at)
bfc0b940:	25040004 	addiu	a0,t0,4
bfc0b944:	2505fffc 	addiu	a1,t0,-4
bfc0b948:	3c010001 	lui	at,0x1
bfc0b94c:	00240821 	addu	at,at,a0
bfc0b950:	ac24ed84 	sw	a0,-4732(at)
bfc0b954:	3c010001 	lui	at,0x1
bfc0b958:	00250821 	addu	at,at,a1
bfc0b95c:	ac25ed84 	sw	a1,-4732(at)
bfc0b960:	3c020001 	lui	v0,0x1
bfc0b964:	00481021 	addu	v0,v0,t0
bfc0b968:	8c42ed84 	lw	v0,-4732(v0)
bfc0b96c:	3c040001 	lui	a0,0x1
bfc0b970:	00852021 	addu	a0,a0,a1
bfc0b974:	8c84ed84 	lw	a0,-4732(a0)
bfc0b978:	3c050001 	lui	a1,0x1
bfc0b97c:	00a42821 	addu	a1,a1,a0
bfc0b980:	8ca5ed84 	lw	a1,-4732(a1)
bfc0b984:	3c060001 	lui	a2,0x1
bfc0b988:	00c53021 	addu	a2,a2,a1
bfc0b98c:	8cc6ed84 	lw	a2,-4732(a2)
bfc0b990:	144303e1 	bne	v0,v1,bfc0c918 <inst_error>
bfc0b994:	00000000 	nop
/home/csy/func/inst/n64_sh.S:70
bfc0b998:	3c0add72 	lui	t2,0xdd72
bfc0b99c:	354ad0b0 	ori	t2,t2,0xd0b0
bfc0b9a0:	3c09a115 	lui	t1,0xa115
bfc0b9a4:	35294920 	ori	t1,t1,0x4920
bfc0b9a8:	3c08800d 	lui	t0,0x800d
bfc0b9ac:	3c03dd72 	lui	v1,0xdd72
bfc0b9b0:	34634920 	ori	v1,v1,0x4920
bfc0b9b4:	3c010001 	lui	at,0x1
bfc0b9b8:	00280821 	addu	at,at,t0
bfc0b9bc:	ac2ae740 	sw	t2,-6336(at)
bfc0b9c0:	3c010001 	lui	at,0x1
bfc0b9c4:	00280821 	addu	at,at,t0
bfc0b9c8:	a429e740 	sh	t1,-6336(at)
bfc0b9cc:	25040004 	addiu	a0,t0,4
bfc0b9d0:	2505fffc 	addiu	a1,t0,-4
bfc0b9d4:	3c010001 	lui	at,0x1
bfc0b9d8:	00240821 	addu	at,at,a0
bfc0b9dc:	ac24e740 	sw	a0,-6336(at)
bfc0b9e0:	3c010001 	lui	at,0x1
bfc0b9e4:	00250821 	addu	at,at,a1
bfc0b9e8:	ac25e740 	sw	a1,-6336(at)
bfc0b9ec:	3c020001 	lui	v0,0x1
bfc0b9f0:	00481021 	addu	v0,v0,t0
bfc0b9f4:	8c42e740 	lw	v0,-6336(v0)
bfc0b9f8:	3c040001 	lui	a0,0x1
bfc0b9fc:	00852021 	addu	a0,a0,a1
bfc0ba00:	8c84e740 	lw	a0,-6336(a0)
bfc0ba04:	3c050001 	lui	a1,0x1
bfc0ba08:	00a42821 	addu	a1,a1,a0
bfc0ba0c:	8ca5e740 	lw	a1,-6336(a1)
bfc0ba10:	3c060001 	lui	a2,0x1
bfc0ba14:	00c53021 	addu	a2,a2,a1
bfc0ba18:	8cc6e740 	lw	a2,-6336(a2)
bfc0ba1c:	144303be 	bne	v0,v1,bfc0c918 <inst_error>
bfc0ba20:	00000000 	nop
/home/csy/func/inst/n64_sh.S:71
bfc0ba24:	3c0a8882 	lui	t2,0x8882
bfc0ba28:	354a040c 	ori	t2,t2,0x40c
bfc0ba2c:	3c09f8e0 	lui	t1,0xf8e0
bfc0ba30:	35297e80 	ori	t1,t1,0x7e80
bfc0ba34:	3c08800d 	lui	t0,0x800d
bfc0ba38:	3c038882 	lui	v1,0x8882
bfc0ba3c:	34637e80 	ori	v1,v1,0x7e80
bfc0ba40:	ad0a13d8 	sw	t2,5080(t0)
bfc0ba44:	a50913d8 	sh	t1,5080(t0)
bfc0ba48:	25040004 	addiu	a0,t0,4
bfc0ba4c:	2505fffc 	addiu	a1,t0,-4
bfc0ba50:	ac8413d8 	sw	a0,5080(a0)
bfc0ba54:	aca513d8 	sw	a1,5080(a1)
bfc0ba58:	8d0213d8 	lw	v0,5080(t0)
bfc0ba5c:	8ca413d8 	lw	a0,5080(a1)
bfc0ba60:	8c8513d8 	lw	a1,5080(a0)
bfc0ba64:	8ca613d8 	lw	a2,5080(a1)
bfc0ba68:	144303ab 	bne	v0,v1,bfc0c918 <inst_error>
bfc0ba6c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:72
bfc0ba70:	3c0af854 	lui	t2,0xf854
bfc0ba74:	354a84f0 	ori	t2,t2,0x84f0
bfc0ba78:	3c092056 	lui	t1,0x2056
bfc0ba7c:	3529abbc 	ori	t1,t1,0xabbc
bfc0ba80:	3c08800d 	lui	t0,0x800d
bfc0ba84:	3c03abbc 	lui	v1,0xabbc
bfc0ba88:	346384f0 	ori	v1,v1,0x84f0
bfc0ba8c:	3c010001 	lui	at,0x1
bfc0ba90:	00280821 	addu	at,at,t0
bfc0ba94:	ac2ac038 	sw	t2,-16328(at)
bfc0ba98:	3c010001 	lui	at,0x1
bfc0ba9c:	00280821 	addu	at,at,t0
bfc0baa0:	a429c03a 	sh	t1,-16326(at)
bfc0baa4:	25040004 	addiu	a0,t0,4
bfc0baa8:	2505fffc 	addiu	a1,t0,-4
bfc0baac:	3c010001 	lui	at,0x1
bfc0bab0:	00240821 	addu	at,at,a0
bfc0bab4:	ac24c038 	sw	a0,-16328(at)
bfc0bab8:	3c010001 	lui	at,0x1
bfc0babc:	00250821 	addu	at,at,a1
bfc0bac0:	ac25c038 	sw	a1,-16328(at)
bfc0bac4:	3c020001 	lui	v0,0x1
bfc0bac8:	00481021 	addu	v0,v0,t0
bfc0bacc:	8c42c038 	lw	v0,-16328(v0)
bfc0bad0:	3c040001 	lui	a0,0x1
bfc0bad4:	00852021 	addu	a0,a0,a1
bfc0bad8:	8c84c038 	lw	a0,-16328(a0)
bfc0badc:	3c050001 	lui	a1,0x1
bfc0bae0:	00a42821 	addu	a1,a1,a0
bfc0bae4:	8ca5c038 	lw	a1,-16328(a1)
bfc0bae8:	3c060001 	lui	a2,0x1
bfc0baec:	00c53021 	addu	a2,a2,a1
bfc0baf0:	8cc6c038 	lw	a2,-16328(a2)
bfc0baf4:	14430388 	bne	v0,v1,bfc0c918 <inst_error>
bfc0baf8:	00000000 	nop
/home/csy/func/inst/n64_sh.S:73
bfc0bafc:	3c0a5eb1 	lui	t2,0x5eb1
bfc0bb00:	354a9438 	ori	t2,t2,0x9438
bfc0bb04:	3c093ec8 	lui	t1,0x3ec8
bfc0bb08:	35298830 	ori	t1,t1,0x8830
bfc0bb0c:	3c08800d 	lui	t0,0x800d
bfc0bb10:	3c038830 	lui	v1,0x8830
bfc0bb14:	34639438 	ori	v1,v1,0x9438
bfc0bb18:	3c010001 	lui	at,0x1
bfc0bb1c:	00280821 	addu	at,at,t0
bfc0bb20:	ac2af610 	sw	t2,-2544(at)
bfc0bb24:	3c010001 	lui	at,0x1
bfc0bb28:	00280821 	addu	at,at,t0
bfc0bb2c:	a429f612 	sh	t1,-2542(at)
bfc0bb30:	25040004 	addiu	a0,t0,4
bfc0bb34:	2505fffc 	addiu	a1,t0,-4
bfc0bb38:	3c010001 	lui	at,0x1
bfc0bb3c:	00240821 	addu	at,at,a0
bfc0bb40:	ac24f610 	sw	a0,-2544(at)
bfc0bb44:	3c010001 	lui	at,0x1
bfc0bb48:	00250821 	addu	at,at,a1
bfc0bb4c:	ac25f610 	sw	a1,-2544(at)
bfc0bb50:	3c020001 	lui	v0,0x1
bfc0bb54:	00481021 	addu	v0,v0,t0
bfc0bb58:	8c42f610 	lw	v0,-2544(v0)
bfc0bb5c:	3c040001 	lui	a0,0x1
bfc0bb60:	00852021 	addu	a0,a0,a1
bfc0bb64:	8c84f610 	lw	a0,-2544(a0)
bfc0bb68:	3c050001 	lui	a1,0x1
bfc0bb6c:	00a42821 	addu	a1,a1,a0
bfc0bb70:	8ca5f610 	lw	a1,-2544(a1)
bfc0bb74:	3c060001 	lui	a2,0x1
bfc0bb78:	00c53021 	addu	a2,a2,a1
bfc0bb7c:	8cc6f610 	lw	a2,-2544(a2)
bfc0bb80:	14430365 	bne	v0,v1,bfc0c918 <inst_error>
bfc0bb84:	00000000 	nop
/home/csy/func/inst/n64_sh.S:74
bfc0bb88:	3c0a4c34 	lui	t2,0x4c34
bfc0bb8c:	354aa5a0 	ori	t2,t2,0xa5a0
bfc0bb90:	3c0941f8 	lui	t1,0x41f8
bfc0bb94:	3529c4b0 	ori	t1,t1,0xc4b0
bfc0bb98:	3c08800d 	lui	t0,0x800d
bfc0bb9c:	3c03c4b0 	lui	v1,0xc4b0
bfc0bba0:	3463a5a0 	ori	v1,v1,0xa5a0
bfc0bba4:	3c010001 	lui	at,0x1
bfc0bba8:	00280821 	addu	at,at,t0
bfc0bbac:	ac2af1e4 	sw	t2,-3612(at)
bfc0bbb0:	3c010001 	lui	at,0x1
bfc0bbb4:	00280821 	addu	at,at,t0
bfc0bbb8:	a429f1e6 	sh	t1,-3610(at)
bfc0bbbc:	25040004 	addiu	a0,t0,4
bfc0bbc0:	2505fffc 	addiu	a1,t0,-4
bfc0bbc4:	3c010001 	lui	at,0x1
bfc0bbc8:	00240821 	addu	at,at,a0
bfc0bbcc:	ac24f1e4 	sw	a0,-3612(at)
bfc0bbd0:	3c010001 	lui	at,0x1
bfc0bbd4:	00250821 	addu	at,at,a1
bfc0bbd8:	ac25f1e4 	sw	a1,-3612(at)
bfc0bbdc:	3c020001 	lui	v0,0x1
bfc0bbe0:	00481021 	addu	v0,v0,t0
bfc0bbe4:	8c42f1e4 	lw	v0,-3612(v0)
bfc0bbe8:	3c040001 	lui	a0,0x1
bfc0bbec:	00852021 	addu	a0,a0,a1
bfc0bbf0:	8c84f1e4 	lw	a0,-3612(a0)
bfc0bbf4:	3c050001 	lui	a1,0x1
bfc0bbf8:	00a42821 	addu	a1,a1,a0
bfc0bbfc:	8ca5f1e4 	lw	a1,-3612(a1)
bfc0bc00:	3c060001 	lui	a2,0x1
bfc0bc04:	00c53021 	addu	a2,a2,a1
bfc0bc08:	8cc6f1e4 	lw	a2,-3612(a2)
bfc0bc0c:	14430342 	bne	v0,v1,bfc0c918 <inst_error>
bfc0bc10:	00000000 	nop
/home/csy/func/inst/n64_sh.S:75
bfc0bc14:	3c0a9bc0 	lui	t2,0x9bc0
bfc0bc18:	354a0fe8 	ori	t2,t2,0xfe8
bfc0bc1c:	3c0919fb 	lui	t1,0x19fb
bfc0bc20:	3529b8d6 	ori	t1,t1,0xb8d6
bfc0bc24:	3c08800d 	lui	t0,0x800d
bfc0bc28:	3c03b8d6 	lui	v1,0xb8d6
bfc0bc2c:	34630fe8 	ori	v1,v1,0xfe8
bfc0bc30:	ad0a0acc 	sw	t2,2764(t0)
bfc0bc34:	a5090ace 	sh	t1,2766(t0)
bfc0bc38:	25040004 	addiu	a0,t0,4
bfc0bc3c:	2505fffc 	addiu	a1,t0,-4
bfc0bc40:	ac840acc 	sw	a0,2764(a0)
bfc0bc44:	aca50acc 	sw	a1,2764(a1)
bfc0bc48:	8d020acc 	lw	v0,2764(t0)
bfc0bc4c:	8ca40acc 	lw	a0,2764(a1)
bfc0bc50:	8c850acc 	lw	a1,2764(a0)
bfc0bc54:	8ca60acc 	lw	a2,2764(a1)
bfc0bc58:	1443032f 	bne	v0,v1,bfc0c918 <inst_error>
bfc0bc5c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:76
bfc0bc60:	3c0ae293 	lui	t2,0xe293
bfc0bc64:	354aa67e 	ori	t2,t2,0xa67e
bfc0bc68:	3c09cc73 	lui	t1,0xcc73
bfc0bc6c:	35290080 	ori	t1,t1,0x80
bfc0bc70:	3c08800d 	lui	t0,0x800d
bfc0bc74:	3c03e293 	lui	v1,0xe293
bfc0bc78:	34630080 	ori	v1,v1,0x80
bfc0bc7c:	ad0a51b0 	sw	t2,20912(t0)
bfc0bc80:	a50951b0 	sh	t1,20912(t0)
bfc0bc84:	25040004 	addiu	a0,t0,4
bfc0bc88:	2505fffc 	addiu	a1,t0,-4
bfc0bc8c:	ac8451b0 	sw	a0,20912(a0)
bfc0bc90:	aca551b0 	sw	a1,20912(a1)
bfc0bc94:	8d0251b0 	lw	v0,20912(t0)
bfc0bc98:	8ca451b0 	lw	a0,20912(a1)
bfc0bc9c:	8c8551b0 	lw	a1,20912(a0)
bfc0bca0:	8ca651b0 	lw	a2,20912(a1)
bfc0bca4:	1443031c 	bne	v0,v1,bfc0c918 <inst_error>
bfc0bca8:	00000000 	nop
/home/csy/func/inst/n64_sh.S:77
bfc0bcac:	3c0a93c7 	lui	t2,0x93c7
bfc0bcb0:	354ad5b0 	ori	t2,t2,0xd5b0
bfc0bcb4:	3c09c0c9 	lui	t1,0xc0c9
bfc0bcb8:	35299855 	ori	t1,t1,0x9855
bfc0bcbc:	3c08800d 	lui	t0,0x800d
bfc0bcc0:	3c0393c7 	lui	v1,0x93c7
bfc0bcc4:	34639855 	ori	v1,v1,0x9855
bfc0bcc8:	3c010001 	lui	at,0x1
bfc0bccc:	00280821 	addu	at,at,t0
bfc0bcd0:	ac2ab540 	sw	t2,-19136(at)
bfc0bcd4:	3c010001 	lui	at,0x1
bfc0bcd8:	00280821 	addu	at,at,t0
bfc0bcdc:	a429b540 	sh	t1,-19136(at)
bfc0bce0:	25040004 	addiu	a0,t0,4
bfc0bce4:	2505fffc 	addiu	a1,t0,-4
bfc0bce8:	3c010001 	lui	at,0x1
bfc0bcec:	00240821 	addu	at,at,a0
bfc0bcf0:	ac24b540 	sw	a0,-19136(at)
bfc0bcf4:	3c010001 	lui	at,0x1
bfc0bcf8:	00250821 	addu	at,at,a1
bfc0bcfc:	ac25b540 	sw	a1,-19136(at)
bfc0bd00:	3c020001 	lui	v0,0x1
bfc0bd04:	00481021 	addu	v0,v0,t0
bfc0bd08:	8c42b540 	lw	v0,-19136(v0)
bfc0bd0c:	3c040001 	lui	a0,0x1
bfc0bd10:	00852021 	addu	a0,a0,a1
bfc0bd14:	8c84b540 	lw	a0,-19136(a0)
bfc0bd18:	3c050001 	lui	a1,0x1
bfc0bd1c:	00a42821 	addu	a1,a1,a0
bfc0bd20:	8ca5b540 	lw	a1,-19136(a1)
bfc0bd24:	3c060001 	lui	a2,0x1
bfc0bd28:	00c53021 	addu	a2,a2,a1
bfc0bd2c:	8cc6b540 	lw	a2,-19136(a2)
bfc0bd30:	144302f9 	bne	v0,v1,bfc0c918 <inst_error>
bfc0bd34:	00000000 	nop
/home/csy/func/inst/n64_sh.S:78
bfc0bd38:	3c0a5a4a 	lui	t2,0x5a4a
bfc0bd3c:	354a07f6 	ori	t2,t2,0x7f6
bfc0bd40:	3c090421 	lui	t1,0x421
bfc0bd44:	35299ef4 	ori	t1,t1,0x9ef4
bfc0bd48:	3c08800d 	lui	t0,0x800d
bfc0bd4c:	3c039ef4 	lui	v1,0x9ef4
bfc0bd50:	346307f6 	ori	v1,v1,0x7f6
bfc0bd54:	ad0a48b0 	sw	t2,18608(t0)
bfc0bd58:	a50948b2 	sh	t1,18610(t0)
bfc0bd5c:	25040004 	addiu	a0,t0,4
bfc0bd60:	2505fffc 	addiu	a1,t0,-4
bfc0bd64:	ac8448b0 	sw	a0,18608(a0)
bfc0bd68:	aca548b0 	sw	a1,18608(a1)
bfc0bd6c:	8d0248b0 	lw	v0,18608(t0)
bfc0bd70:	8ca448b0 	lw	a0,18608(a1)
bfc0bd74:	8c8548b0 	lw	a1,18608(a0)
bfc0bd78:	8ca648b0 	lw	a2,18608(a1)
bfc0bd7c:	144302e6 	bne	v0,v1,bfc0c918 <inst_error>
bfc0bd80:	00000000 	nop
/home/csy/func/inst/n64_sh.S:79
bfc0bd84:	3c0a0cb8 	lui	t2,0xcb8
bfc0bd88:	354a09e4 	ori	t2,t2,0x9e4
bfc0bd8c:	3c098cfc 	lui	t1,0x8cfc
bfc0bd90:	3529f2c0 	ori	t1,t1,0xf2c0
bfc0bd94:	3c08800d 	lui	t0,0x800d
bfc0bd98:	3c030cb8 	lui	v1,0xcb8
bfc0bd9c:	3463f2c0 	ori	v1,v1,0xf2c0
bfc0bda0:	ad0a5e60 	sw	t2,24160(t0)
bfc0bda4:	a5095e60 	sh	t1,24160(t0)
bfc0bda8:	25040004 	addiu	a0,t0,4
bfc0bdac:	2505fffc 	addiu	a1,t0,-4
bfc0bdb0:	ac845e60 	sw	a0,24160(a0)
bfc0bdb4:	aca55e60 	sw	a1,24160(a1)
bfc0bdb8:	8d025e60 	lw	v0,24160(t0)
bfc0bdbc:	8ca45e60 	lw	a0,24160(a1)
bfc0bdc0:	8c855e60 	lw	a1,24160(a0)
bfc0bdc4:	8ca65e60 	lw	a2,24160(a1)
bfc0bdc8:	144302d3 	bne	v0,v1,bfc0c918 <inst_error>
bfc0bdcc:	00000000 	nop
/home/csy/func/inst/n64_sh.S:80
bfc0bdd0:	3c0ab596 	lui	t2,0xb596
bfc0bdd4:	354aca6a 	ori	t2,t2,0xca6a
bfc0bdd8:	3c098df9 	lui	t1,0x8df9
bfc0bddc:	3529423c 	ori	t1,t1,0x423c
bfc0bde0:	3c08800d 	lui	t0,0x800d
bfc0bde4:	3c03423c 	lui	v1,0x423c
bfc0bde8:	3463ca6a 	ori	v1,v1,0xca6a
bfc0bdec:	3c010001 	lui	at,0x1
bfc0bdf0:	00280821 	addu	at,at,t0
bfc0bdf4:	ac2abe9c 	sw	t2,-16740(at)
bfc0bdf8:	3c010001 	lui	at,0x1
bfc0bdfc:	00280821 	addu	at,at,t0
bfc0be00:	a429be9e 	sh	t1,-16738(at)
bfc0be04:	25040004 	addiu	a0,t0,4
bfc0be08:	2505fffc 	addiu	a1,t0,-4
bfc0be0c:	3c010001 	lui	at,0x1
bfc0be10:	00240821 	addu	at,at,a0
bfc0be14:	ac24be9c 	sw	a0,-16740(at)
bfc0be18:	3c010001 	lui	at,0x1
bfc0be1c:	00250821 	addu	at,at,a1
bfc0be20:	ac25be9c 	sw	a1,-16740(at)
bfc0be24:	3c020001 	lui	v0,0x1
bfc0be28:	00481021 	addu	v0,v0,t0
bfc0be2c:	8c42be9c 	lw	v0,-16740(v0)
bfc0be30:	3c040001 	lui	a0,0x1
bfc0be34:	00852021 	addu	a0,a0,a1
bfc0be38:	8c84be9c 	lw	a0,-16740(a0)
bfc0be3c:	3c050001 	lui	a1,0x1
bfc0be40:	00a42821 	addu	a1,a1,a0
bfc0be44:	8ca5be9c 	lw	a1,-16740(a1)
bfc0be48:	3c060001 	lui	a2,0x1
bfc0be4c:	00c53021 	addu	a2,a2,a1
bfc0be50:	8cc6be9c 	lw	a2,-16740(a2)
bfc0be54:	144302b0 	bne	v0,v1,bfc0c918 <inst_error>
bfc0be58:	00000000 	nop
/home/csy/func/inst/n64_sh.S:81
bfc0be5c:	3c0aa84a 	lui	t2,0xa84a
bfc0be60:	354a74a8 	ori	t2,t2,0x74a8
bfc0be64:	3c094cc9 	lui	t1,0x4cc9
bfc0be68:	3529d636 	ori	t1,t1,0xd636
bfc0be6c:	3c08800d 	lui	t0,0x800d
bfc0be70:	3c03a84a 	lui	v1,0xa84a
bfc0be74:	3463d636 	ori	v1,v1,0xd636
bfc0be78:	3c010001 	lui	at,0x1
bfc0be7c:	00280821 	addu	at,at,t0
bfc0be80:	ac2aaecc 	sw	t2,-20788(at)
bfc0be84:	3c010001 	lui	at,0x1
bfc0be88:	00280821 	addu	at,at,t0
bfc0be8c:	a429aecc 	sh	t1,-20788(at)
bfc0be90:	25040004 	addiu	a0,t0,4
bfc0be94:	2505fffc 	addiu	a1,t0,-4
bfc0be98:	3c010001 	lui	at,0x1
bfc0be9c:	00240821 	addu	at,at,a0
bfc0bea0:	ac24aecc 	sw	a0,-20788(at)
bfc0bea4:	3c010001 	lui	at,0x1
bfc0bea8:	00250821 	addu	at,at,a1
bfc0beac:	ac25aecc 	sw	a1,-20788(at)
bfc0beb0:	3c020001 	lui	v0,0x1
bfc0beb4:	00481021 	addu	v0,v0,t0
bfc0beb8:	8c42aecc 	lw	v0,-20788(v0)
bfc0bebc:	3c040001 	lui	a0,0x1
bfc0bec0:	00852021 	addu	a0,a0,a1
bfc0bec4:	8c84aecc 	lw	a0,-20788(a0)
bfc0bec8:	3c050001 	lui	a1,0x1
bfc0becc:	00a42821 	addu	a1,a1,a0
bfc0bed0:	8ca5aecc 	lw	a1,-20788(a1)
bfc0bed4:	3c060001 	lui	a2,0x1
bfc0bed8:	00c53021 	addu	a2,a2,a1
bfc0bedc:	8cc6aecc 	lw	a2,-20788(a2)
bfc0bee0:	1443028d 	bne	v0,v1,bfc0c918 <inst_error>
bfc0bee4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:82
bfc0bee8:	3c0aaa5e 	lui	t2,0xaa5e
bfc0beec:	354a6ea0 	ori	t2,t2,0x6ea0
bfc0bef0:	3c09a81b 	lui	t1,0xa81b
bfc0bef4:	35299980 	ori	t1,t1,0x9980
bfc0bef8:	3c08800d 	lui	t0,0x800d
bfc0befc:	3c03aa5e 	lui	v1,0xaa5e
bfc0bf00:	34639980 	ori	v1,v1,0x9980
bfc0bf04:	ad0a2cc8 	sw	t2,11464(t0)
bfc0bf08:	a5092cc8 	sh	t1,11464(t0)
bfc0bf0c:	25040004 	addiu	a0,t0,4
bfc0bf10:	2505fffc 	addiu	a1,t0,-4
bfc0bf14:	ac842cc8 	sw	a0,11464(a0)
bfc0bf18:	aca52cc8 	sw	a1,11464(a1)
bfc0bf1c:	8d022cc8 	lw	v0,11464(t0)
bfc0bf20:	8ca42cc8 	lw	a0,11464(a1)
bfc0bf24:	8c852cc8 	lw	a1,11464(a0)
bfc0bf28:	8ca62cc8 	lw	a2,11464(a1)
bfc0bf2c:	1443027a 	bne	v0,v1,bfc0c918 <inst_error>
bfc0bf30:	00000000 	nop
/home/csy/func/inst/n64_sh.S:83
bfc0bf34:	3c0ab266 	lui	t2,0xb266
bfc0bf38:	354aaf70 	ori	t2,t2,0xaf70
bfc0bf3c:	3c09ad2f 	lui	t1,0xad2f
bfc0bf40:	35298b20 	ori	t1,t1,0x8b20
bfc0bf44:	3c08800d 	lui	t0,0x800d
bfc0bf48:	3c038b20 	lui	v1,0x8b20
bfc0bf4c:	3463af70 	ori	v1,v1,0xaf70
bfc0bf50:	3c010001 	lui	at,0x1
bfc0bf54:	00280821 	addu	at,at,t0
bfc0bf58:	ac2aad08 	sw	t2,-21240(at)
bfc0bf5c:	3c010001 	lui	at,0x1
bfc0bf60:	00280821 	addu	at,at,t0
bfc0bf64:	a429ad0a 	sh	t1,-21238(at)
bfc0bf68:	25040004 	addiu	a0,t0,4
bfc0bf6c:	2505fffc 	addiu	a1,t0,-4
bfc0bf70:	3c010001 	lui	at,0x1
bfc0bf74:	00240821 	addu	at,at,a0
bfc0bf78:	ac24ad08 	sw	a0,-21240(at)
bfc0bf7c:	3c010001 	lui	at,0x1
bfc0bf80:	00250821 	addu	at,at,a1
bfc0bf84:	ac25ad08 	sw	a1,-21240(at)
bfc0bf88:	3c020001 	lui	v0,0x1
bfc0bf8c:	00481021 	addu	v0,v0,t0
bfc0bf90:	8c42ad08 	lw	v0,-21240(v0)
bfc0bf94:	3c040001 	lui	a0,0x1
bfc0bf98:	00852021 	addu	a0,a0,a1
bfc0bf9c:	8c84ad08 	lw	a0,-21240(a0)
bfc0bfa0:	3c050001 	lui	a1,0x1
bfc0bfa4:	00a42821 	addu	a1,a1,a0
bfc0bfa8:	8ca5ad08 	lw	a1,-21240(a1)
bfc0bfac:	3c060001 	lui	a2,0x1
bfc0bfb0:	00c53021 	addu	a2,a2,a1
bfc0bfb4:	8cc6ad08 	lw	a2,-21240(a2)
bfc0bfb8:	14430257 	bne	v0,v1,bfc0c918 <inst_error>
bfc0bfbc:	00000000 	nop
/home/csy/func/inst/n64_sh.S:84
bfc0bfc0:	3c0a40d3 	lui	t2,0x40d3
bfc0bfc4:	354ab176 	ori	t2,t2,0xb176
bfc0bfc8:	3c09e431 	lui	t1,0xe431
bfc0bfcc:	35291540 	ori	t1,t1,0x1540
bfc0bfd0:	3c08800d 	lui	t0,0x800d
bfc0bfd4:	3c0340d3 	lui	v1,0x40d3
bfc0bfd8:	34631540 	ori	v1,v1,0x1540
bfc0bfdc:	ad0a4ff0 	sw	t2,20464(t0)
bfc0bfe0:	a5094ff0 	sh	t1,20464(t0)
bfc0bfe4:	25040004 	addiu	a0,t0,4
bfc0bfe8:	2505fffc 	addiu	a1,t0,-4
bfc0bfec:	ac844ff0 	sw	a0,20464(a0)
bfc0bff0:	aca54ff0 	sw	a1,20464(a1)
bfc0bff4:	8d024ff0 	lw	v0,20464(t0)
bfc0bff8:	8ca44ff0 	lw	a0,20464(a1)
bfc0bffc:	8c854ff0 	lw	a1,20464(a0)
bfc0c000:	8ca64ff0 	lw	a2,20464(a1)
bfc0c004:	14430244 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c008:	00000000 	nop
/home/csy/func/inst/n64_sh.S:85
bfc0c00c:	3c0a80b3 	lui	t2,0x80b3
bfc0c010:	354a7e6c 	ori	t2,t2,0x7e6c
bfc0c014:	3c0955d5 	lui	t1,0x55d5
bfc0c018:	3529b870 	ori	t1,t1,0xb870
bfc0c01c:	3c08800d 	lui	t0,0x800d
bfc0c020:	3c0380b3 	lui	v1,0x80b3
bfc0c024:	3463b870 	ori	v1,v1,0xb870
bfc0c028:	3c010001 	lui	at,0x1
bfc0c02c:	00280821 	addu	at,at,t0
bfc0c030:	ac2a9400 	sw	t2,-27648(at)
bfc0c034:	3c010001 	lui	at,0x1
bfc0c038:	00280821 	addu	at,at,t0
bfc0c03c:	a4299400 	sh	t1,-27648(at)
bfc0c040:	25040004 	addiu	a0,t0,4
bfc0c044:	2505fffc 	addiu	a1,t0,-4
bfc0c048:	3c010001 	lui	at,0x1
bfc0c04c:	00240821 	addu	at,at,a0
bfc0c050:	ac249400 	sw	a0,-27648(at)
bfc0c054:	3c010001 	lui	at,0x1
bfc0c058:	00250821 	addu	at,at,a1
bfc0c05c:	ac259400 	sw	a1,-27648(at)
bfc0c060:	3c020001 	lui	v0,0x1
bfc0c064:	00481021 	addu	v0,v0,t0
bfc0c068:	8c429400 	lw	v0,-27648(v0)
bfc0c06c:	3c040001 	lui	a0,0x1
bfc0c070:	00852021 	addu	a0,a0,a1
bfc0c074:	8c849400 	lw	a0,-27648(a0)
bfc0c078:	3c050001 	lui	a1,0x1
bfc0c07c:	00a42821 	addu	a1,a1,a0
bfc0c080:	8ca59400 	lw	a1,-27648(a1)
bfc0c084:	3c060001 	lui	a2,0x1
bfc0c088:	00c53021 	addu	a2,a2,a1
bfc0c08c:	8cc69400 	lw	a2,-27648(a2)
bfc0c090:	14430221 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c094:	00000000 	nop
/home/csy/func/inst/n64_sh.S:86
bfc0c098:	3c0aed52 	lui	t2,0xed52
bfc0c09c:	354a58d8 	ori	t2,t2,0x58d8
bfc0c0a0:	3c099fdd 	lui	t1,0x9fdd
bfc0c0a4:	352923a8 	ori	t1,t1,0x23a8
bfc0c0a8:	3c08800d 	lui	t0,0x800d
bfc0c0ac:	3c03ed52 	lui	v1,0xed52
bfc0c0b0:	346323a8 	ori	v1,v1,0x23a8
bfc0c0b4:	3c010001 	lui	at,0x1
bfc0c0b8:	00280821 	addu	at,at,t0
bfc0c0bc:	ac2afbe0 	sw	t2,-1056(at)
bfc0c0c0:	3c010001 	lui	at,0x1
bfc0c0c4:	00280821 	addu	at,at,t0
bfc0c0c8:	a429fbe0 	sh	t1,-1056(at)
bfc0c0cc:	25040004 	addiu	a0,t0,4
bfc0c0d0:	2505fffc 	addiu	a1,t0,-4
bfc0c0d4:	3c010001 	lui	at,0x1
bfc0c0d8:	00240821 	addu	at,at,a0
bfc0c0dc:	ac24fbe0 	sw	a0,-1056(at)
bfc0c0e0:	3c010001 	lui	at,0x1
bfc0c0e4:	00250821 	addu	at,at,a1
bfc0c0e8:	ac25fbe0 	sw	a1,-1056(at)
bfc0c0ec:	3c020001 	lui	v0,0x1
bfc0c0f0:	00481021 	addu	v0,v0,t0
bfc0c0f4:	8c42fbe0 	lw	v0,-1056(v0)
bfc0c0f8:	3c040001 	lui	a0,0x1
bfc0c0fc:	00852021 	addu	a0,a0,a1
bfc0c100:	8c84fbe0 	lw	a0,-1056(a0)
bfc0c104:	3c050001 	lui	a1,0x1
bfc0c108:	00a42821 	addu	a1,a1,a0
bfc0c10c:	8ca5fbe0 	lw	a1,-1056(a1)
bfc0c110:	3c060001 	lui	a2,0x1
bfc0c114:	00c53021 	addu	a2,a2,a1
bfc0c118:	8cc6fbe0 	lw	a2,-1056(a2)
bfc0c11c:	144301fe 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c120:	00000000 	nop
/home/csy/func/inst/n64_sh.S:87
bfc0c124:	3c0a3974 	lui	t2,0x3974
bfc0c128:	354ab6f0 	ori	t2,t2,0xb6f0
bfc0c12c:	3c0948a0 	lui	t1,0x48a0
bfc0c130:	35291f4e 	ori	t1,t1,0x1f4e
bfc0c134:	3c08800d 	lui	t0,0x800d
bfc0c138:	3c033974 	lui	v1,0x3974
bfc0c13c:	34631f4e 	ori	v1,v1,0x1f4e
bfc0c140:	3c010001 	lui	at,0x1
bfc0c144:	00280821 	addu	at,at,t0
bfc0c148:	ac2aae00 	sw	t2,-20992(at)
bfc0c14c:	3c010001 	lui	at,0x1
bfc0c150:	00280821 	addu	at,at,t0
bfc0c154:	a429ae00 	sh	t1,-20992(at)
bfc0c158:	25040004 	addiu	a0,t0,4
bfc0c15c:	2505fffc 	addiu	a1,t0,-4
bfc0c160:	3c010001 	lui	at,0x1
bfc0c164:	00240821 	addu	at,at,a0
bfc0c168:	ac24ae00 	sw	a0,-20992(at)
bfc0c16c:	3c010001 	lui	at,0x1
bfc0c170:	00250821 	addu	at,at,a1
bfc0c174:	ac25ae00 	sw	a1,-20992(at)
bfc0c178:	3c020001 	lui	v0,0x1
bfc0c17c:	00481021 	addu	v0,v0,t0
bfc0c180:	8c42ae00 	lw	v0,-20992(v0)
bfc0c184:	3c040001 	lui	a0,0x1
bfc0c188:	00852021 	addu	a0,a0,a1
bfc0c18c:	8c84ae00 	lw	a0,-20992(a0)
bfc0c190:	3c050001 	lui	a1,0x1
bfc0c194:	00a42821 	addu	a1,a1,a0
bfc0c198:	8ca5ae00 	lw	a1,-20992(a1)
bfc0c19c:	3c060001 	lui	a2,0x1
bfc0c1a0:	00c53021 	addu	a2,a2,a1
bfc0c1a4:	8cc6ae00 	lw	a2,-20992(a2)
bfc0c1a8:	144301db 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c1ac:	00000000 	nop
/home/csy/func/inst/n64_sh.S:88
bfc0c1b0:	3c0a77dd 	lui	t2,0x77dd
bfc0c1b4:	354af4e0 	ori	t2,t2,0xf4e0
bfc0c1b8:	3c09e28a 	lui	t1,0xe28a
bfc0c1bc:	3529eb00 	ori	t1,t1,0xeb00
bfc0c1c0:	3c08800d 	lui	t0,0x800d
bfc0c1c4:	3c0377dd 	lui	v1,0x77dd
bfc0c1c8:	3463eb00 	ori	v1,v1,0xeb00
bfc0c1cc:	ad0a1700 	sw	t2,5888(t0)
bfc0c1d0:	a5091700 	sh	t1,5888(t0)
bfc0c1d4:	25040004 	addiu	a0,t0,4
bfc0c1d8:	2505fffc 	addiu	a1,t0,-4
bfc0c1dc:	ac841700 	sw	a0,5888(a0)
bfc0c1e0:	aca51700 	sw	a1,5888(a1)
bfc0c1e4:	8d021700 	lw	v0,5888(t0)
bfc0c1e8:	8ca41700 	lw	a0,5888(a1)
bfc0c1ec:	8c851700 	lw	a1,5888(a0)
bfc0c1f0:	8ca61700 	lw	a2,5888(a1)
bfc0c1f4:	144301c8 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c1f8:	00000000 	nop
/home/csy/func/inst/n64_sh.S:89
bfc0c1fc:	3c0a1865 	lui	t2,0x1865
bfc0c200:	354add7c 	ori	t2,t2,0xdd7c
bfc0c204:	3c09a83f 	lui	t1,0xa83f
bfc0c208:	35298680 	ori	t1,t1,0x8680
bfc0c20c:	3c08800d 	lui	t0,0x800d
bfc0c210:	3c031865 	lui	v1,0x1865
bfc0c214:	34638680 	ori	v1,v1,0x8680
bfc0c218:	ad0a0000 	sw	t2,0(t0)
bfc0c21c:	a5090000 	sh	t1,0(t0)
bfc0c220:	25040004 	addiu	a0,t0,4
bfc0c224:	2505fffc 	addiu	a1,t0,-4
bfc0c228:	ac840000 	sw	a0,0(a0)
bfc0c22c:	aca50000 	sw	a1,0(a1)
bfc0c230:	8d020000 	lw	v0,0(t0)
bfc0c234:	8ca40000 	lw	a0,0(a1)
bfc0c238:	8c850000 	lw	a1,0(a0)
bfc0c23c:	8ca60000 	lw	a2,0(a1)
bfc0c240:	144301b5 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c244:	00000000 	nop
/home/csy/func/inst/n64_sh.S:90
bfc0c248:	3c0a3dc1 	lui	t2,0x3dc1
bfc0c24c:	354a31bc 	ori	t2,t2,0x31bc
bfc0c250:	3c09051e 	lui	t1,0x51e
bfc0c254:	352907d1 	ori	t1,t1,0x7d1
bfc0c258:	3c08800d 	lui	t0,0x800d
bfc0c25c:	3c0307d1 	lui	v1,0x7d1
bfc0c260:	346331bc 	ori	v1,v1,0x31bc
bfc0c264:	ad0a0000 	sw	t2,0(t0)
bfc0c268:	a5090002 	sh	t1,2(t0)
bfc0c26c:	25040004 	addiu	a0,t0,4
bfc0c270:	2505fffc 	addiu	a1,t0,-4
bfc0c274:	ac840000 	sw	a0,0(a0)
bfc0c278:	aca50000 	sw	a1,0(a1)
bfc0c27c:	8d020000 	lw	v0,0(t0)
bfc0c280:	8ca40000 	lw	a0,0(a1)
bfc0c284:	8c850000 	lw	a1,0(a0)
bfc0c288:	8ca60000 	lw	a2,0(a1)
bfc0c28c:	144301a2 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c290:	00000000 	nop
/home/csy/func/inst/n64_sh.S:91
bfc0c294:	3c0a58e1 	lui	t2,0x58e1
bfc0c298:	354a32b2 	ori	t2,t2,0x32b2
bfc0c29c:	3c093baa 	lui	t1,0x3baa
bfc0c2a0:	35293c68 	ori	t1,t1,0x3c68
bfc0c2a4:	3c08800d 	lui	t0,0x800d
bfc0c2a8:	3c0358e1 	lui	v1,0x58e1
bfc0c2ac:	34633c68 	ori	v1,v1,0x3c68
bfc0c2b0:	ad0a0000 	sw	t2,0(t0)
bfc0c2b4:	a5090000 	sh	t1,0(t0)
bfc0c2b8:	25040004 	addiu	a0,t0,4
bfc0c2bc:	2505fffc 	addiu	a1,t0,-4
bfc0c2c0:	ac840000 	sw	a0,0(a0)
bfc0c2c4:	aca50000 	sw	a1,0(a1)
bfc0c2c8:	8d020000 	lw	v0,0(t0)
bfc0c2cc:	8ca40000 	lw	a0,0(a1)
bfc0c2d0:	8c850000 	lw	a1,0(a0)
bfc0c2d4:	8ca60000 	lw	a2,0(a1)
bfc0c2d8:	1443018f 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c2dc:	00000000 	nop
/home/csy/func/inst/n64_sh.S:92
bfc0c2e0:	3c0a498c 	lui	t2,0x498c
bfc0c2e4:	354ac104 	ori	t2,t2,0xc104
bfc0c2e8:	3c090c55 	lui	t1,0xc55
bfc0c2ec:	352952e2 	ori	t1,t1,0x52e2
bfc0c2f0:	3c08800d 	lui	t0,0x800d
bfc0c2f4:	3c03498c 	lui	v1,0x498c
bfc0c2f8:	346352e2 	ori	v1,v1,0x52e2
bfc0c2fc:	ad0a0000 	sw	t2,0(t0)
bfc0c300:	a5090000 	sh	t1,0(t0)
bfc0c304:	25040004 	addiu	a0,t0,4
bfc0c308:	2505fffc 	addiu	a1,t0,-4
bfc0c30c:	ac840000 	sw	a0,0(a0)
bfc0c310:	aca50000 	sw	a1,0(a1)
bfc0c314:	8d020000 	lw	v0,0(t0)
bfc0c318:	8ca40000 	lw	a0,0(a1)
bfc0c31c:	8c850000 	lw	a1,0(a0)
bfc0c320:	8ca60000 	lw	a2,0(a1)
bfc0c324:	1443017c 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c328:	00000000 	nop
/home/csy/func/inst/n64_sh.S:93
bfc0c32c:	3c0a906f 	lui	t2,0x906f
bfc0c330:	354ac250 	ori	t2,t2,0xc250
bfc0c334:	3c09d942 	lui	t1,0xd942
bfc0c338:	3529b23c 	ori	t1,t1,0xb23c
bfc0c33c:	3c08800d 	lui	t0,0x800d
bfc0c340:	3c03906f 	lui	v1,0x906f
bfc0c344:	3463b23c 	ori	v1,v1,0xb23c
bfc0c348:	ad0a0000 	sw	t2,0(t0)
bfc0c34c:	a5090000 	sh	t1,0(t0)
bfc0c350:	25040004 	addiu	a0,t0,4
bfc0c354:	2505fffc 	addiu	a1,t0,-4
bfc0c358:	ac840000 	sw	a0,0(a0)
bfc0c35c:	aca50000 	sw	a1,0(a1)
bfc0c360:	8d020000 	lw	v0,0(t0)
bfc0c364:	8ca40000 	lw	a0,0(a1)
bfc0c368:	8c850000 	lw	a1,0(a0)
bfc0c36c:	8ca60000 	lw	a2,0(a1)
bfc0c370:	14430169 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c374:	00000000 	nop
/home/csy/func/inst/n64_sh.S:94
bfc0c378:	3c0a110e 	lui	t2,0x110e
bfc0c37c:	354ad930 	ori	t2,t2,0xd930
bfc0c380:	3c09c287 	lui	t1,0xc287
bfc0c384:	35296832 	ori	t1,t1,0x6832
bfc0c388:	3c08800d 	lui	t0,0x800d
bfc0c38c:	3c036832 	lui	v1,0x6832
bfc0c390:	3463d930 	ori	v1,v1,0xd930
bfc0c394:	ad0a0000 	sw	t2,0(t0)
bfc0c398:	a5090002 	sh	t1,2(t0)
bfc0c39c:	25040004 	addiu	a0,t0,4
bfc0c3a0:	2505fffc 	addiu	a1,t0,-4
bfc0c3a4:	ac840000 	sw	a0,0(a0)
bfc0c3a8:	aca50000 	sw	a1,0(a1)
bfc0c3ac:	8d020000 	lw	v0,0(t0)
bfc0c3b0:	8ca40000 	lw	a0,0(a1)
bfc0c3b4:	8c850000 	lw	a1,0(a0)
bfc0c3b8:	8ca60000 	lw	a2,0(a1)
bfc0c3bc:	14430156 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c3c0:	00000000 	nop
/home/csy/func/inst/n64_sh.S:95
bfc0c3c4:	3c0ac390 	lui	t2,0xc390
bfc0c3c8:	354a96a4 	ori	t2,t2,0x96a4
bfc0c3cc:	3c09a568 	lui	t1,0xa568
bfc0c3d0:	3529a9e0 	ori	t1,t1,0xa9e0
bfc0c3d4:	3c08800d 	lui	t0,0x800d
bfc0c3d8:	3c03c390 	lui	v1,0xc390
bfc0c3dc:	3463a9e0 	ori	v1,v1,0xa9e0
bfc0c3e0:	ad0a0000 	sw	t2,0(t0)
bfc0c3e4:	a5090000 	sh	t1,0(t0)
bfc0c3e8:	25040004 	addiu	a0,t0,4
bfc0c3ec:	2505fffc 	addiu	a1,t0,-4
bfc0c3f0:	ac840000 	sw	a0,0(a0)
bfc0c3f4:	aca50000 	sw	a1,0(a1)
bfc0c3f8:	8d020000 	lw	v0,0(t0)
bfc0c3fc:	8ca40000 	lw	a0,0(a1)
bfc0c400:	8c850000 	lw	a1,0(a0)
bfc0c404:	8ca60000 	lw	a2,0(a1)
bfc0c408:	14430143 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c40c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:96
bfc0c410:	3c0afe04 	lui	t2,0xfe04
bfc0c414:	354a34c1 	ori	t2,t2,0x34c1
bfc0c418:	3c09e286 	lui	t1,0xe286
bfc0c41c:	3529dc78 	ori	t1,t1,0xdc78
bfc0c420:	3c08800d 	lui	t0,0x800d
bfc0c424:	3c03fe04 	lui	v1,0xfe04
bfc0c428:	3463dc78 	ori	v1,v1,0xdc78
bfc0c42c:	ad0a0000 	sw	t2,0(t0)
bfc0c430:	a5090000 	sh	t1,0(t0)
bfc0c434:	25040004 	addiu	a0,t0,4
bfc0c438:	2505fffc 	addiu	a1,t0,-4
bfc0c43c:	ac840000 	sw	a0,0(a0)
bfc0c440:	aca50000 	sw	a1,0(a1)
bfc0c444:	8d020000 	lw	v0,0(t0)
bfc0c448:	8ca40000 	lw	a0,0(a1)
bfc0c44c:	8c850000 	lw	a1,0(a0)
bfc0c450:	8ca60000 	lw	a2,0(a1)
bfc0c454:	14430130 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c458:	00000000 	nop
/home/csy/func/inst/n64_sh.S:97
bfc0c45c:	3c0a4345 	lui	t2,0x4345
bfc0c460:	354a056c 	ori	t2,t2,0x56c
bfc0c464:	3c096e34 	lui	t1,0x6e34
bfc0c468:	3529bc70 	ori	t1,t1,0xbc70
bfc0c46c:	3c08800d 	lui	t0,0x800d
bfc0c470:	3c034345 	lui	v1,0x4345
bfc0c474:	3463bc70 	ori	v1,v1,0xbc70
bfc0c478:	ad0a0000 	sw	t2,0(t0)
bfc0c47c:	a5090000 	sh	t1,0(t0)
bfc0c480:	25040004 	addiu	a0,t0,4
bfc0c484:	2505fffc 	addiu	a1,t0,-4
bfc0c488:	ac840000 	sw	a0,0(a0)
bfc0c48c:	aca50000 	sw	a1,0(a1)
bfc0c490:	8d020000 	lw	v0,0(t0)
bfc0c494:	8ca40000 	lw	a0,0(a1)
bfc0c498:	8c850000 	lw	a1,0(a0)
bfc0c49c:	8ca60000 	lw	a2,0(a1)
bfc0c4a0:	1443011d 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c4a4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:98
bfc0c4a8:	3c0a3d48 	lui	t2,0x3d48
bfc0c4ac:	354a9f5f 	ori	t2,t2,0x9f5f
bfc0c4b0:	3c09fe2d 	lui	t1,0xfe2d
bfc0c4b4:	3529c400 	ori	t1,t1,0xc400
bfc0c4b8:	3c08800d 	lui	t0,0x800d
bfc0c4bc:	3c03c400 	lui	v1,0xc400
bfc0c4c0:	34639f5f 	ori	v1,v1,0x9f5f
bfc0c4c4:	ad0a0000 	sw	t2,0(t0)
bfc0c4c8:	a5090002 	sh	t1,2(t0)
bfc0c4cc:	25040004 	addiu	a0,t0,4
bfc0c4d0:	2505fffc 	addiu	a1,t0,-4
bfc0c4d4:	ac840000 	sw	a0,0(a0)
bfc0c4d8:	aca50000 	sw	a1,0(a1)
bfc0c4dc:	8d020000 	lw	v0,0(t0)
bfc0c4e0:	8ca40000 	lw	a0,0(a1)
bfc0c4e4:	8c850000 	lw	a1,0(a0)
bfc0c4e8:	8ca60000 	lw	a2,0(a1)
bfc0c4ec:	1443010a 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c4f0:	00000000 	nop
/home/csy/func/inst/n64_sh.S:99
bfc0c4f4:	3c0a46e6 	lui	t2,0x46e6
bfc0c4f8:	354a0202 	ori	t2,t2,0x202
bfc0c4fc:	3c09d456 	lui	t1,0xd456
bfc0c500:	3529f5e0 	ori	t1,t1,0xf5e0
bfc0c504:	3c08800d 	lui	t0,0x800d
bfc0c508:	3c03f5e0 	lui	v1,0xf5e0
bfc0c50c:	34630202 	ori	v1,v1,0x202
bfc0c510:	ad0a0000 	sw	t2,0(t0)
bfc0c514:	a5090002 	sh	t1,2(t0)
bfc0c518:	25040004 	addiu	a0,t0,4
bfc0c51c:	2505fffc 	addiu	a1,t0,-4
bfc0c520:	ac840000 	sw	a0,0(a0)
bfc0c524:	aca50000 	sw	a1,0(a1)
bfc0c528:	8d020000 	lw	v0,0(t0)
bfc0c52c:	8ca40000 	lw	a0,0(a1)
bfc0c530:	8c850000 	lw	a1,0(a0)
bfc0c534:	8ca60000 	lw	a2,0(a1)
bfc0c538:	144300f7 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c53c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:100
bfc0c540:	3c0a3d44 	lui	t2,0x3d44
bfc0c544:	354a363a 	ori	t2,t2,0x363a
bfc0c548:	3c091013 	lui	t1,0x1013
bfc0c54c:	3529b676 	ori	t1,t1,0xb676
bfc0c550:	3c08800d 	lui	t0,0x800d
bfc0c554:	3c033d44 	lui	v1,0x3d44
bfc0c558:	3463b676 	ori	v1,v1,0xb676
bfc0c55c:	ad0a0000 	sw	t2,0(t0)
bfc0c560:	a5090000 	sh	t1,0(t0)
bfc0c564:	25040004 	addiu	a0,t0,4
bfc0c568:	2505fffc 	addiu	a1,t0,-4
bfc0c56c:	ac840000 	sw	a0,0(a0)
bfc0c570:	aca50000 	sw	a1,0(a1)
bfc0c574:	8d020000 	lw	v0,0(t0)
bfc0c578:	8ca40000 	lw	a0,0(a1)
bfc0c57c:	8c850000 	lw	a1,0(a0)
bfc0c580:	8ca60000 	lw	a2,0(a1)
bfc0c584:	144300e4 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c588:	00000000 	nop
/home/csy/func/inst/n64_sh.S:101
bfc0c58c:	3c0a8108 	lui	t2,0x8108
bfc0c590:	3c0930c0 	lui	t1,0x30c0
bfc0c594:	35296a40 	ori	t1,t1,0x6a40
bfc0c598:	3c08800d 	lui	t0,0x800d
bfc0c59c:	3c038108 	lui	v1,0x8108
bfc0c5a0:	34636a40 	ori	v1,v1,0x6a40
bfc0c5a4:	ad0a0000 	sw	t2,0(t0)
bfc0c5a8:	a5090000 	sh	t1,0(t0)
bfc0c5ac:	25040004 	addiu	a0,t0,4
bfc0c5b0:	2505fffc 	addiu	a1,t0,-4
bfc0c5b4:	ac840000 	sw	a0,0(a0)
bfc0c5b8:	aca50000 	sw	a1,0(a1)
bfc0c5bc:	8d020000 	lw	v0,0(t0)
bfc0c5c0:	8ca40000 	lw	a0,0(a1)
bfc0c5c4:	8c850000 	lw	a1,0(a0)
bfc0c5c8:	8ca60000 	lw	a2,0(a1)
bfc0c5cc:	144300d2 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c5d0:	00000000 	nop
/home/csy/func/inst/n64_sh.S:102
bfc0c5d4:	3c0a7e38 	lui	t2,0x7e38
bfc0c5d8:	354a6f48 	ori	t2,t2,0x6f48
bfc0c5dc:	3c096dfd 	lui	t1,0x6dfd
bfc0c5e0:	3529dc50 	ori	t1,t1,0xdc50
bfc0c5e4:	3c08800d 	lui	t0,0x800d
bfc0c5e8:	3c03dc50 	lui	v1,0xdc50
bfc0c5ec:	34636f48 	ori	v1,v1,0x6f48
bfc0c5f0:	ad0a0000 	sw	t2,0(t0)
bfc0c5f4:	a5090002 	sh	t1,2(t0)
bfc0c5f8:	25040004 	addiu	a0,t0,4
bfc0c5fc:	2505fffc 	addiu	a1,t0,-4
bfc0c600:	ac840000 	sw	a0,0(a0)
bfc0c604:	aca50000 	sw	a1,0(a1)
bfc0c608:	8d020000 	lw	v0,0(t0)
bfc0c60c:	8ca40000 	lw	a0,0(a1)
bfc0c610:	8c850000 	lw	a1,0(a0)
bfc0c614:	8ca60000 	lw	a2,0(a1)
bfc0c618:	144300bf 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c61c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:103
bfc0c620:	3c0add5f 	lui	t2,0xdd5f
bfc0c624:	354acc66 	ori	t2,t2,0xcc66
bfc0c628:	3c098f70 	lui	t1,0x8f70
bfc0c62c:	3529aaa6 	ori	t1,t1,0xaaa6
bfc0c630:	3c08800d 	lui	t0,0x800d
bfc0c634:	3c03aaa6 	lui	v1,0xaaa6
bfc0c638:	3463cc66 	ori	v1,v1,0xcc66
bfc0c63c:	ad0a0000 	sw	t2,0(t0)
bfc0c640:	a5090002 	sh	t1,2(t0)
bfc0c644:	25040004 	addiu	a0,t0,4
bfc0c648:	2505fffc 	addiu	a1,t0,-4
bfc0c64c:	ac840000 	sw	a0,0(a0)
bfc0c650:	aca50000 	sw	a1,0(a1)
bfc0c654:	8d020000 	lw	v0,0(t0)
bfc0c658:	8ca40000 	lw	a0,0(a1)
bfc0c65c:	8c850000 	lw	a1,0(a0)
bfc0c660:	8ca60000 	lw	a2,0(a1)
bfc0c664:	144300ac 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c668:	00000000 	nop
/home/csy/func/inst/n64_sh.S:104
bfc0c66c:	3c0af5d0 	lui	t2,0xf5d0
bfc0c670:	354acd30 	ori	t2,t2,0xcd30
bfc0c674:	3c098fb8 	lui	t1,0x8fb8
bfc0c678:	35291998 	ori	t1,t1,0x1998
bfc0c67c:	3c08800d 	lui	t0,0x800d
bfc0c680:	3c031998 	lui	v1,0x1998
bfc0c684:	3463cd30 	ori	v1,v1,0xcd30
bfc0c688:	ad0a0000 	sw	t2,0(t0)
bfc0c68c:	a5090002 	sh	t1,2(t0)
bfc0c690:	25040004 	addiu	a0,t0,4
bfc0c694:	2505fffc 	addiu	a1,t0,-4
bfc0c698:	ac840000 	sw	a0,0(a0)
bfc0c69c:	aca50000 	sw	a1,0(a1)
bfc0c6a0:	8d020000 	lw	v0,0(t0)
bfc0c6a4:	8ca40000 	lw	a0,0(a1)
bfc0c6a8:	8c850000 	lw	a1,0(a0)
bfc0c6ac:	8ca60000 	lw	a2,0(a1)
bfc0c6b0:	14430099 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c6b4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:105
bfc0c6b8:	3c0a19d5 	lui	t2,0x19d5
bfc0c6bc:	354ae812 	ori	t2,t2,0xe812
bfc0c6c0:	3c0925ed 	lui	t1,0x25ed
bfc0c6c4:	35295b7f 	ori	t1,t1,0x5b7f
bfc0c6c8:	3c08800d 	lui	t0,0x800d
bfc0c6cc:	3c035b7f 	lui	v1,0x5b7f
bfc0c6d0:	3463e812 	ori	v1,v1,0xe812
bfc0c6d4:	ad0a0000 	sw	t2,0(t0)
bfc0c6d8:	a5090002 	sh	t1,2(t0)
bfc0c6dc:	25040004 	addiu	a0,t0,4
bfc0c6e0:	2505fffc 	addiu	a1,t0,-4
bfc0c6e4:	ac840000 	sw	a0,0(a0)
bfc0c6e8:	aca50000 	sw	a1,0(a1)
bfc0c6ec:	8d020000 	lw	v0,0(t0)
bfc0c6f0:	8ca40000 	lw	a0,0(a1)
bfc0c6f4:	8c850000 	lw	a1,0(a0)
bfc0c6f8:	8ca60000 	lw	a2,0(a1)
bfc0c6fc:	14430086 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c700:	00000000 	nop
/home/csy/func/inst/n64_sh.S:106
bfc0c704:	3c0a4b17 	lui	t2,0x4b17
bfc0c708:	354a9300 	ori	t2,t2,0x9300
bfc0c70c:	3c09a5a0 	lui	t1,0xa5a0
bfc0c710:	3529ecb4 	ori	t1,t1,0xecb4
bfc0c714:	3c08800d 	lui	t0,0x800d
bfc0c718:	3c034b17 	lui	v1,0x4b17
bfc0c71c:	3463ecb4 	ori	v1,v1,0xecb4
bfc0c720:	ad0a0000 	sw	t2,0(t0)
bfc0c724:	a5090000 	sh	t1,0(t0)
bfc0c728:	25040004 	addiu	a0,t0,4
bfc0c72c:	2505fffc 	addiu	a1,t0,-4
bfc0c730:	ac840000 	sw	a0,0(a0)
bfc0c734:	aca50000 	sw	a1,0(a1)
bfc0c738:	8d020000 	lw	v0,0(t0)
bfc0c73c:	8ca40000 	lw	a0,0(a1)
bfc0c740:	8c850000 	lw	a1,0(a0)
bfc0c744:	8ca60000 	lw	a2,0(a1)
bfc0c748:	14430073 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c74c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:107
bfc0c750:	3c0ae00d 	lui	t2,0xe00d
bfc0c754:	354afa00 	ori	t2,t2,0xfa00
bfc0c758:	3c0978d7 	lui	t1,0x78d7
bfc0c75c:	3529370c 	ori	t1,t1,0x370c
bfc0c760:	3c08800d 	lui	t0,0x800d
bfc0c764:	3c03370c 	lui	v1,0x370c
bfc0c768:	3463fa00 	ori	v1,v1,0xfa00
bfc0c76c:	ad0a0000 	sw	t2,0(t0)
bfc0c770:	a5090002 	sh	t1,2(t0)
bfc0c774:	25040004 	addiu	a0,t0,4
bfc0c778:	2505fffc 	addiu	a1,t0,-4
bfc0c77c:	ac840000 	sw	a0,0(a0)
bfc0c780:	aca50000 	sw	a1,0(a1)
bfc0c784:	8d020000 	lw	v0,0(t0)
bfc0c788:	8ca40000 	lw	a0,0(a1)
bfc0c78c:	8c850000 	lw	a1,0(a0)
bfc0c790:	8ca60000 	lw	a2,0(a1)
bfc0c794:	14430060 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c798:	00000000 	nop
/home/csy/func/inst/n64_sh.S:108
bfc0c79c:	3c0ab704 	lui	t2,0xb704
bfc0c7a0:	354afce8 	ori	t2,t2,0xfce8
bfc0c7a4:	3c0952ec 	lui	t1,0x52ec
bfc0c7a8:	3529d998 	ori	t1,t1,0xd998
bfc0c7ac:	3c08800d 	lui	t0,0x800d
bfc0c7b0:	3c03d998 	lui	v1,0xd998
bfc0c7b4:	3463fce8 	ori	v1,v1,0xfce8
bfc0c7b8:	ad0a0000 	sw	t2,0(t0)
bfc0c7bc:	a5090002 	sh	t1,2(t0)
bfc0c7c0:	25040004 	addiu	a0,t0,4
bfc0c7c4:	2505fffc 	addiu	a1,t0,-4
bfc0c7c8:	ac840000 	sw	a0,0(a0)
bfc0c7cc:	aca50000 	sw	a1,0(a1)
bfc0c7d0:	8d020000 	lw	v0,0(t0)
bfc0c7d4:	8ca40000 	lw	a0,0(a1)
bfc0c7d8:	8c850000 	lw	a1,0(a0)
bfc0c7dc:	8ca60000 	lw	a2,0(a1)
bfc0c7e0:	1443004d 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c7e4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:109
bfc0c7e8:	3c0a0207 	lui	t2,0x207
bfc0c7ec:	354a5c00 	ori	t2,t2,0x5c00
bfc0c7f0:	3c093cab 	lui	t1,0x3cab
bfc0c7f4:	3529c304 	ori	t1,t1,0xc304
bfc0c7f8:	3c08800d 	lui	t0,0x800d
bfc0c7fc:	3c030207 	lui	v1,0x207
bfc0c800:	3463c304 	ori	v1,v1,0xc304
bfc0c804:	ad0a0000 	sw	t2,0(t0)
bfc0c808:	a5090000 	sh	t1,0(t0)
bfc0c80c:	25040004 	addiu	a0,t0,4
bfc0c810:	2505fffc 	addiu	a1,t0,-4
bfc0c814:	ac840000 	sw	a0,0(a0)
bfc0c818:	aca50000 	sw	a1,0(a1)
bfc0c81c:	8d020000 	lw	v0,0(t0)
bfc0c820:	8ca40000 	lw	a0,0(a1)
bfc0c824:	8c850000 	lw	a1,0(a0)
bfc0c828:	8ca60000 	lw	a2,0(a1)
bfc0c82c:	1443003a 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c830:	00000000 	nop
/home/csy/func/inst/n64_sh.S:110
bfc0c834:	3c0a896c 	lui	t2,0x896c
bfc0c838:	354a92c0 	ori	t2,t2,0x92c0
bfc0c83c:	3c09f81c 	lui	t1,0xf81c
bfc0c840:	35294fea 	ori	t1,t1,0x4fea
bfc0c844:	3c08800d 	lui	t0,0x800d
bfc0c848:	3c03896c 	lui	v1,0x896c
bfc0c84c:	34634fea 	ori	v1,v1,0x4fea
bfc0c850:	ad0a0000 	sw	t2,0(t0)
bfc0c854:	a5090000 	sh	t1,0(t0)
bfc0c858:	25040004 	addiu	a0,t0,4
bfc0c85c:	2505fffc 	addiu	a1,t0,-4
bfc0c860:	ac840000 	sw	a0,0(a0)
bfc0c864:	aca50000 	sw	a1,0(a1)
bfc0c868:	8d020000 	lw	v0,0(t0)
bfc0c86c:	8ca40000 	lw	a0,0(a1)
bfc0c870:	8c850000 	lw	a1,0(a0)
bfc0c874:	8ca60000 	lw	a2,0(a1)
bfc0c878:	14430027 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c87c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:111
bfc0c880:	3c0aabc0 	lui	t2,0xabc0
bfc0c884:	354a3313 	ori	t2,t2,0x3313
bfc0c888:	3c096840 	lui	t1,0x6840
bfc0c88c:	35293610 	ori	t1,t1,0x3610
bfc0c890:	3c08800d 	lui	t0,0x800d
bfc0c894:	3c033610 	lui	v1,0x3610
bfc0c898:	34633313 	ori	v1,v1,0x3313
bfc0c89c:	ad0a0000 	sw	t2,0(t0)
bfc0c8a0:	a5090002 	sh	t1,2(t0)
bfc0c8a4:	25040004 	addiu	a0,t0,4
bfc0c8a8:	2505fffc 	addiu	a1,t0,-4
bfc0c8ac:	ac840000 	sw	a0,0(a0)
bfc0c8b0:	aca50000 	sw	a1,0(a1)
bfc0c8b4:	8d020000 	lw	v0,0(t0)
bfc0c8b8:	8ca40000 	lw	a0,0(a1)
bfc0c8bc:	8c850000 	lw	a1,0(a0)
bfc0c8c0:	8ca60000 	lw	a2,0(a1)
bfc0c8c4:	14430014 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c8c8:	00000000 	nop
/home/csy/func/inst/n64_sh.S:112
bfc0c8cc:	240a0000 	li	t2,0
bfc0c8d0:	24090000 	li	t1,0
bfc0c8d4:	3c08800d 	lui	t0,0x800d
bfc0c8d8:	24030000 	li	v1,0
bfc0c8dc:	ad0a0000 	sw	t2,0(t0)
bfc0c8e0:	a5090000 	sh	t1,0(t0)
bfc0c8e4:	25040004 	addiu	a0,t0,4
bfc0c8e8:	2505fffc 	addiu	a1,t0,-4
bfc0c8ec:	ac840000 	sw	a0,0(a0)
bfc0c8f0:	aca50000 	sw	a1,0(a1)
bfc0c8f4:	8d020000 	lw	v0,0(t0)
bfc0c8f8:	8ca40000 	lw	a0,0(a1)
bfc0c8fc:	8c850000 	lw	a1,0(a0)
bfc0c900:	8ca60000 	lw	a2,0(a1)
bfc0c904:	14430004 	bne	v0,v1,bfc0c918 <inst_error>
bfc0c908:	00000000 	nop
/home/csy/func/inst/n64_sh.S:114
bfc0c90c:	16400002 	bnez	s2,bfc0c918 <inst_error>
/home/csy/func/inst/n64_sh.S:115
bfc0c910:	00000000 	nop
/home/csy/func/inst/n64_sh.S:117
bfc0c914:	26730001 	addiu	s3,s3,1

bfc0c918 <inst_error>:
/home/csy/func/inst/n64_sh.S:120
bfc0c918:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n64_sh.S:121
bfc0c91c:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n64_sh.S:122
bfc0c920:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n64_sh.S:123
bfc0c924:	03e00008 	jr	ra
/home/csy/func/inst/n64_sh.S:124
bfc0c928:	00000000 	nop
bfc0c92c:	00000000 	nop

bfc0c930 <n70_lw_adel_ex_test>:
/home/csy/func/inst/n70_lw_adel_ex.S:7
bfc0c930:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n70_lw_adel_ex.S:8
bfc0c934:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n70_lw_adel_ex.S:9
bfc0c938:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:10
bfc0c93c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:12
bfc0c940:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n70_lw_adel_ex.S:13
bfc0c944:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n70_lw_adel_ex.S:14
bfc0c948:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n70_lw_adel_ex.S:15
bfc0c94c:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:16
bfc0c950:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n70_lw_adel_ex.S:19
bfc0c954:	3c023958 	lui	v0,0x3958
bfc0c958:	3442f252 	ori	v0,v0,0xf252
bfc0c95c:	3c033958 	lui	v1,0x3958
bfc0c960:	3463f252 	ori	v1,v1,0xf252
bfc0c964:	3c04800d 	lui	a0,0x800d
bfc0c968:	3484759c 	ori	a0,a0,0x759c
bfc0c96c:	3c05b27f 	lui	a1,0xb27f
bfc0c970:	34a59788 	ori	a1,a1,0x9788
bfc0c974:	24878845 	addiu	a3,a0,-30651
bfc0c978:	3c010001 	lui	at,0x1
bfc0c97c:	00240821 	addu	at,at,a0
bfc0c980:	ac258844 	sw	a1,-30652(at)
/home/csy/func/inst/n70_lw_adel_ex.S:20
bfc0c984:	3c14bfc1 	lui	s4,0xbfc1
bfc0c988:	2694c98c 	addiu	s4,s4,-13940
/home/csy/func/inst/n70_lw_adel_ex.S:21
bfc0c98c:	8c828845 	lw	v0,-30651(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:22
bfc0c990:	1657009f 	bne	s2,s7,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:23
bfc0c994:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:24
bfc0c998:	1443009d 	bne	v0,v1,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:25
bfc0c99c:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:26
bfc0c9a0:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:27
bfc0c9a4:	14f6009a 	bne	a3,s6,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:28
bfc0c9a8:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:30
bfc0c9ac:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:31
bfc0c9b0:	3c02c044 	lui	v0,0xc044
bfc0c9b4:	34422bd0 	ori	v0,v0,0x2bd0
bfc0c9b8:	3c03c044 	lui	v1,0xc044
bfc0c9bc:	34632bd0 	ori	v1,v1,0x2bd0
bfc0c9c0:	3c04800d 	lui	a0,0x800d
bfc0c9c4:	34847748 	ori	a0,a0,0x7748
bfc0c9c8:	3c053101 	lui	a1,0x3101
bfc0c9cc:	34a5bbec 	ori	a1,a1,0xbbec
bfc0c9d0:	24870ea2 	addiu	a3,a0,3746
bfc0c9d4:	ac850ea0 	sw	a1,3744(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:32
bfc0c9d8:	3c14bfc1 	lui	s4,0xbfc1
bfc0c9dc:	2694c9e8 	addiu	s4,s4,-13848
/home/csy/func/inst/n70_lw_adel_ex.S:33
bfc0c9e0:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:34
bfc0c9e4:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:35
bfc0c9e8:	8c820ea2 	lw	v0,3746(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:36
bfc0c9ec:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:37
bfc0c9f0:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:38
bfc0c9f4:	15340086 	bne	t1,s4,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:39
bfc0c9f8:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:40
bfc0c9fc:	16570084 	bne	s2,s7,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:41
bfc0ca00:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:42
bfc0ca04:	14430082 	bne	v0,v1,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:43
bfc0ca08:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:44
bfc0ca0c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:45
bfc0ca10:	14f6007f 	bne	a3,s6,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:46
bfc0ca14:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:47
bfc0ca18:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:48
bfc0ca1c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:50
bfc0ca20:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:51
bfc0ca24:	3c026892 	lui	v0,0x6892
bfc0ca28:	34429b5c 	ori	v0,v0,0x9b5c
bfc0ca2c:	3c036892 	lui	v1,0x6892
bfc0ca30:	34639b5c 	ori	v1,v1,0x9b5c
bfc0ca34:	3c04800d 	lui	a0,0x800d
bfc0ca38:	348459dc 	ori	a0,a0,0x59dc
bfc0ca3c:	3c0594a1 	lui	a1,0x94a1
bfc0ca40:	34a5ade4 	ori	a1,a1,0xade4
bfc0ca44:	24877cee 	addiu	a3,a0,31982
bfc0ca48:	ac857cec 	sw	a1,31980(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:52
bfc0ca4c:	3c14bfc1 	lui	s4,0xbfc1
bfc0ca50:	2694ca5c 	addiu	s4,s4,-13732
/home/csy/func/inst/n70_lw_adel_ex.S:53
bfc0ca54:	01000011 	mthi	t0
/home/csy/func/inst/n70_lw_adel_ex.S:54
bfc0ca58:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n70_lw_adel_ex.S:55
bfc0ca5c:	8c827cee 	lw	v0,31982(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:56
bfc0ca60:	00004810 	mfhi	t1
/home/csy/func/inst/n70_lw_adel_ex.S:57
bfc0ca64:	1128006a 	beq	t1,t0,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:58
bfc0ca68:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:59
bfc0ca6c:	16570068 	bne	s2,s7,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:60
bfc0ca70:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:61
bfc0ca74:	14430066 	bne	v0,v1,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:62
bfc0ca78:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:63
bfc0ca7c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:64
bfc0ca80:	14f60063 	bne	a3,s6,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:65
bfc0ca84:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:67
bfc0ca88:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:68
bfc0ca8c:	3c027423 	lui	v0,0x7423
bfc0ca90:	3442d85f 	ori	v0,v0,0xd85f
bfc0ca94:	3c037423 	lui	v1,0x7423
bfc0ca98:	3463d85f 	ori	v1,v1,0xd85f
bfc0ca9c:	3c04800d 	lui	a0,0x800d
bfc0caa0:	34847748 	ori	a0,a0,0x7748
bfc0caa4:	3c05e2b0 	lui	a1,0xe2b0
bfc0caa8:	34a5a2c0 	ori	a1,a1,0xa2c0
bfc0caac:	24874973 	addiu	a3,a0,18803
bfc0cab0:	ac854970 	sw	a1,18800(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:69
bfc0cab4:	3c14bfc1 	lui	s4,0xbfc1
bfc0cab8:	2694cabc 	addiu	s4,s4,-13636
/home/csy/func/inst/n70_lw_adel_ex.S:70
bfc0cabc:	8c824973 	lw	v0,18803(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:71
bfc0cac0:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n70_lw_adel_ex.S:72
bfc0cac4:	16570052 	bne	s2,s7,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:73
bfc0cac8:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:74
bfc0cacc:	14430050 	bne	v0,v1,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:75
bfc0cad0:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:76
bfc0cad4:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:77
bfc0cad8:	14f6004d 	bne	a3,s6,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:78
bfc0cadc:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:80
bfc0cae0:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:81
bfc0cae4:	3c02dd06 	lui	v0,0xdd06
bfc0cae8:	34424458 	ori	v0,v0,0x4458
bfc0caec:	3c03dd06 	lui	v1,0xdd06
bfc0caf0:	34634458 	ori	v1,v1,0x4458
bfc0caf4:	3c04800d 	lui	a0,0x800d
bfc0caf8:	34845bac 	ori	a0,a0,0x5bac
bfc0cafc:	3c050f9e 	lui	a1,0xf9e
bfc0cb00:	34a5dafa 	ori	a1,a1,0xdafa
bfc0cb04:	2487003e 	addiu	a3,a0,62
bfc0cb08:	ac85003c 	sw	a1,60(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:82
bfc0cb0c:	3c14bfc1 	lui	s4,0xbfc1
bfc0cb10:	2694cb1c 	addiu	s4,s4,-13540
/home/csy/func/inst/n70_lw_adel_ex.S:83
bfc0cb14:	01000013 	mtlo	t0
/home/csy/func/inst/n70_lw_adel_ex.S:84
bfc0cb18:	01100019 	multu	t0,s0
/home/csy/func/inst/n70_lw_adel_ex.S:85
bfc0cb1c:	8c82003e 	lw	v0,62(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:86
bfc0cb20:	00004810 	mfhi	t1
/home/csy/func/inst/n70_lw_adel_ex.S:87
bfc0cb24:	1128003a 	beq	t1,t0,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:88
bfc0cb28:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:89
bfc0cb2c:	16570038 	bne	s2,s7,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:90
bfc0cb30:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:91
bfc0cb34:	14430036 	bne	v0,v1,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:92
bfc0cb38:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:93
bfc0cb3c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:94
bfc0cb40:	14f60033 	bne	a3,s6,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:95
bfc0cb44:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:97
bfc0cb48:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:98
bfc0cb4c:	3c021514 	lui	v0,0x1514
bfc0cb50:	34428b6c 	ori	v0,v0,0x8b6c
bfc0cb54:	3c031514 	lui	v1,0x1514
bfc0cb58:	34638b6c 	ori	v1,v1,0x8b6c
bfc0cb5c:	3c04800d 	lui	a0,0x800d
bfc0cb60:	34840704 	ori	a0,a0,0x704
bfc0cb64:	3c055077 	lui	a1,0x5077
bfc0cb68:	34a5f320 	ori	a1,a1,0xf320
bfc0cb6c:	2487e53f 	addiu	a3,a0,-6849
bfc0cb70:	3c010001 	lui	at,0x1
bfc0cb74:	00240821 	addu	at,at,a0
bfc0cb78:	ac25e53c 	sw	a1,-6852(at)
/home/csy/func/inst/n70_lw_adel_ex.S:99
bfc0cb7c:	3c14bfc1 	lui	s4,0xbfc1
bfc0cb80:	2694cb84 	addiu	s4,s4,-13436
/home/csy/func/inst/n70_lw_adel_ex.S:100
bfc0cb84:	8c82e53f 	lw	v0,-6849(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:101
bfc0cb88:	01120019 	multu	t0,s2
/home/csy/func/inst/n70_lw_adel_ex.S:102
bfc0cb8c:	16570020 	bne	s2,s7,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:103
bfc0cb90:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:104
bfc0cb94:	1443001e 	bne	v0,v1,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:105
bfc0cb98:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:106
bfc0cb9c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:107
bfc0cba0:	14f6001b 	bne	a3,s6,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:108
bfc0cba4:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:110
bfc0cba8:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:111
bfc0cbac:	3c023958 	lui	v0,0x3958
bfc0cbb0:	3442f252 	ori	v0,v0,0xf252
bfc0cbb4:	3c033958 	lui	v1,0x3958
bfc0cbb8:	3463f252 	ori	v1,v1,0xf252
bfc0cbbc:	3c04800d 	lui	a0,0x800d
bfc0cbc0:	3484759c 	ori	a0,a0,0x759c
bfc0cbc4:	3c05b27f 	lui	a1,0xb27f
bfc0cbc8:	34a59788 	ori	a1,a1,0x9788
bfc0cbcc:	24878845 	addiu	a3,a0,-30651
bfc0cbd0:	3c010001 	lui	at,0x1
bfc0cbd4:	00240821 	addu	at,at,a0
bfc0cbd8:	ac258844 	sw	a1,-30652(at)
/home/csy/func/inst/n70_lw_adel_ex.S:112
bfc0cbdc:	3c14bfc1 	lui	s4,0xbfc1
bfc0cbe0:	2694cbe8 	addiu	s4,s4,-13336
/home/csy/func/inst/n70_lw_adel_ex.S:113
bfc0cbe4:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n70_lw_adel_ex.S:114
bfc0cbe8:	8c828845 	lw	v0,-30651(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:115
bfc0cbec:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n70_lw_adel_ex.S:116
bfc0cbf0:	16570007 	bne	s2,s7,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:117
bfc0cbf4:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:118
bfc0cbf8:	14430005 	bne	v0,v1,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:119
bfc0cbfc:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:120
bfc0cc00:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:121
bfc0cc04:	14f60002 	bne	a3,s6,bfc0cc10 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:122
bfc0cc08:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:124
bfc0cc0c:	26730001 	addiu	s3,s3,1

bfc0cc10 <inst_error>:
/home/csy/func/inst/n70_lw_adel_ex.S:127
bfc0cc10:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n70_lw_adel_ex.S:128
bfc0cc14:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n70_lw_adel_ex.S:129
bfc0cc18:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n70_lw_adel_ex.S:130
bfc0cc1c:	03e00008 	jr	ra
/home/csy/func/inst/n70_lw_adel_ex.S:131
bfc0cc20:	00000000 	nop
	...

bfc0cc30 <n1_lui_test>:
/home/csy/func/inst/n1_lui.S:7
bfc0cc30:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n1_lui.S:8
bfc0cc34:	24120000 	li	s2,0
/home/csy/func/inst/n1_lui.S:9
bfc0cc38:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n1_lui.S:11
bfc0cc3c:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:12
bfc0cc40:	3c040000 	lui	a0,0x0
bfc0cc44:	3c080000 	lui	t0,0x0
bfc0cc48:	00892021 	addu	a0,a0,t1
bfc0cc4c:	012a4821 	addu	t1,t1,t2
bfc0cc50:	15040489 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cc54:	00000000 	nop
/home/csy/func/inst/n1_lui.S:13
bfc0cc58:	3c040000 	lui	a0,0x0
bfc0cc5c:	3c080001 	lui	t0,0x1
bfc0cc60:	00892021 	addu	a0,a0,t1
bfc0cc64:	012a4821 	addu	t1,t1,t2
bfc0cc68:	15040483 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cc6c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:14
bfc0cc70:	3c040000 	lui	a0,0x0
bfc0cc74:	3c080002 	lui	t0,0x2
bfc0cc78:	00892021 	addu	a0,a0,t1
bfc0cc7c:	012a4821 	addu	t1,t1,t2
bfc0cc80:	1504047d 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cc84:	00000000 	nop
/home/csy/func/inst/n1_lui.S:15
bfc0cc88:	3c040000 	lui	a0,0x0
bfc0cc8c:	3c080003 	lui	t0,0x3
bfc0cc90:	00892021 	addu	a0,a0,t1
bfc0cc94:	012a4821 	addu	t1,t1,t2
bfc0cc98:	15040477 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cc9c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:16
bfc0cca0:	3c040000 	lui	a0,0x0
bfc0cca4:	3c080004 	lui	t0,0x4
bfc0cca8:	00892021 	addu	a0,a0,t1
bfc0ccac:	012a4821 	addu	t1,t1,t2
bfc0ccb0:	15040471 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ccb4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:17
bfc0ccb8:	3c040000 	lui	a0,0x0
bfc0ccbc:	3c080005 	lui	t0,0x5
bfc0ccc0:	00892021 	addu	a0,a0,t1
bfc0ccc4:	012a4821 	addu	t1,t1,t2
bfc0ccc8:	1504046b 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cccc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:18
bfc0ccd0:	3c040000 	lui	a0,0x0
bfc0ccd4:	3c080006 	lui	t0,0x6
bfc0ccd8:	00892021 	addu	a0,a0,t1
bfc0ccdc:	012a4821 	addu	t1,t1,t2
bfc0cce0:	15040465 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cce4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:19
bfc0cce8:	3c040000 	lui	a0,0x0
bfc0ccec:	3c080007 	lui	t0,0x7
bfc0ccf0:	00892021 	addu	a0,a0,t1
bfc0ccf4:	012a4821 	addu	t1,t1,t2
bfc0ccf8:	1504045f 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ccfc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:20
bfc0cd00:	3c040000 	lui	a0,0x0
bfc0cd04:	3c080008 	lui	t0,0x8
bfc0cd08:	00892021 	addu	a0,a0,t1
bfc0cd0c:	012a4821 	addu	t1,t1,t2
bfc0cd10:	15040459 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cd14:	00000000 	nop
/home/csy/func/inst/n1_lui.S:21
bfc0cd18:	3c040000 	lui	a0,0x0
bfc0cd1c:	3c080009 	lui	t0,0x9
bfc0cd20:	00892021 	addu	a0,a0,t1
bfc0cd24:	012a4821 	addu	t1,t1,t2
bfc0cd28:	15040453 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cd2c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:22
bfc0cd30:	3c040000 	lui	a0,0x0
bfc0cd34:	3c08000a 	lui	t0,0xa
bfc0cd38:	00892021 	addu	a0,a0,t1
bfc0cd3c:	012a4821 	addu	t1,t1,t2
bfc0cd40:	1504044d 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cd44:	00000000 	nop
/home/csy/func/inst/n1_lui.S:23
bfc0cd48:	3c040000 	lui	a0,0x0
bfc0cd4c:	3c08000b 	lui	t0,0xb
bfc0cd50:	00892021 	addu	a0,a0,t1
bfc0cd54:	012a4821 	addu	t1,t1,t2
bfc0cd58:	15040447 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cd5c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:24
bfc0cd60:	3c040000 	lui	a0,0x0
bfc0cd64:	3c08000c 	lui	t0,0xc
bfc0cd68:	00892021 	addu	a0,a0,t1
bfc0cd6c:	012a4821 	addu	t1,t1,t2
bfc0cd70:	15040441 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cd74:	00000000 	nop
/home/csy/func/inst/n1_lui.S:25
bfc0cd78:	3c040000 	lui	a0,0x0
bfc0cd7c:	3c08000d 	lui	t0,0xd
bfc0cd80:	00892021 	addu	a0,a0,t1
bfc0cd84:	012a4821 	addu	t1,t1,t2
bfc0cd88:	1504043b 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cd8c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:26
bfc0cd90:	3c040000 	lui	a0,0x0
bfc0cd94:	3c08000e 	lui	t0,0xe
bfc0cd98:	00892021 	addu	a0,a0,t1
bfc0cd9c:	012a4821 	addu	t1,t1,t2
bfc0cda0:	15040435 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cda4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:27
bfc0cda8:	3c040000 	lui	a0,0x0
bfc0cdac:	3c08000f 	lui	t0,0xf
bfc0cdb0:	00892021 	addu	a0,a0,t1
bfc0cdb4:	012a4821 	addu	t1,t1,t2
bfc0cdb8:	1504042f 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cdbc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:28
bfc0cdc0:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:29
bfc0cdc4:	3c041010 	lui	a0,0x1010
bfc0cdc8:	3c081010 	lui	t0,0x1010
bfc0cdcc:	00892021 	addu	a0,a0,t1
bfc0cdd0:	012a4821 	addu	t1,t1,t2
bfc0cdd4:	15040428 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cdd8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:30
bfc0cddc:	3c041010 	lui	a0,0x1010
bfc0cde0:	3c081011 	lui	t0,0x1011
bfc0cde4:	00892021 	addu	a0,a0,t1
bfc0cde8:	012a4821 	addu	t1,t1,t2
bfc0cdec:	15040422 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cdf0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:31
bfc0cdf4:	3c041010 	lui	a0,0x1010
bfc0cdf8:	3c081012 	lui	t0,0x1012
bfc0cdfc:	00892021 	addu	a0,a0,t1
bfc0ce00:	012a4821 	addu	t1,t1,t2
bfc0ce04:	1504041c 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ce08:	00000000 	nop
/home/csy/func/inst/n1_lui.S:32
bfc0ce0c:	3c041010 	lui	a0,0x1010
bfc0ce10:	3c081013 	lui	t0,0x1013
bfc0ce14:	00892021 	addu	a0,a0,t1
bfc0ce18:	012a4821 	addu	t1,t1,t2
bfc0ce1c:	15040416 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ce20:	00000000 	nop
/home/csy/func/inst/n1_lui.S:33
bfc0ce24:	3c041010 	lui	a0,0x1010
bfc0ce28:	3c081014 	lui	t0,0x1014
bfc0ce2c:	00892021 	addu	a0,a0,t1
bfc0ce30:	012a4821 	addu	t1,t1,t2
bfc0ce34:	15040410 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ce38:	00000000 	nop
/home/csy/func/inst/n1_lui.S:34
bfc0ce3c:	3c041010 	lui	a0,0x1010
bfc0ce40:	3c081015 	lui	t0,0x1015
bfc0ce44:	00892021 	addu	a0,a0,t1
bfc0ce48:	012a4821 	addu	t1,t1,t2
bfc0ce4c:	1504040a 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ce50:	00000000 	nop
/home/csy/func/inst/n1_lui.S:35
bfc0ce54:	3c041010 	lui	a0,0x1010
bfc0ce58:	3c081016 	lui	t0,0x1016
bfc0ce5c:	00892021 	addu	a0,a0,t1
bfc0ce60:	012a4821 	addu	t1,t1,t2
bfc0ce64:	15040404 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ce68:	00000000 	nop
/home/csy/func/inst/n1_lui.S:36
bfc0ce6c:	3c041010 	lui	a0,0x1010
bfc0ce70:	3c081017 	lui	t0,0x1017
bfc0ce74:	00892021 	addu	a0,a0,t1
bfc0ce78:	012a4821 	addu	t1,t1,t2
bfc0ce7c:	150403fe 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ce80:	00000000 	nop
/home/csy/func/inst/n1_lui.S:37
bfc0ce84:	3c041010 	lui	a0,0x1010
bfc0ce88:	3c081018 	lui	t0,0x1018
bfc0ce8c:	00892021 	addu	a0,a0,t1
bfc0ce90:	012a4821 	addu	t1,t1,t2
bfc0ce94:	150403f8 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ce98:	00000000 	nop
/home/csy/func/inst/n1_lui.S:38
bfc0ce9c:	3c041010 	lui	a0,0x1010
bfc0cea0:	3c081019 	lui	t0,0x1019
bfc0cea4:	00892021 	addu	a0,a0,t1
bfc0cea8:	012a4821 	addu	t1,t1,t2
bfc0ceac:	150403f2 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ceb0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:39
bfc0ceb4:	3c041010 	lui	a0,0x1010
bfc0ceb8:	3c08101a 	lui	t0,0x101a
bfc0cebc:	00892021 	addu	a0,a0,t1
bfc0cec0:	012a4821 	addu	t1,t1,t2
bfc0cec4:	150403ec 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cec8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:40
bfc0cecc:	3c041010 	lui	a0,0x1010
bfc0ced0:	3c08101b 	lui	t0,0x101b
bfc0ced4:	00892021 	addu	a0,a0,t1
bfc0ced8:	012a4821 	addu	t1,t1,t2
bfc0cedc:	150403e6 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cee0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:41
bfc0cee4:	3c041010 	lui	a0,0x1010
bfc0cee8:	3c08101c 	lui	t0,0x101c
bfc0ceec:	00892021 	addu	a0,a0,t1
bfc0cef0:	012a4821 	addu	t1,t1,t2
bfc0cef4:	150403e0 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cef8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:42
bfc0cefc:	3c041010 	lui	a0,0x1010
bfc0cf00:	3c08101d 	lui	t0,0x101d
bfc0cf04:	00892021 	addu	a0,a0,t1
bfc0cf08:	012a4821 	addu	t1,t1,t2
bfc0cf0c:	150403da 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cf10:	00000000 	nop
/home/csy/func/inst/n1_lui.S:43
bfc0cf14:	3c041010 	lui	a0,0x1010
bfc0cf18:	3c08101e 	lui	t0,0x101e
bfc0cf1c:	00892021 	addu	a0,a0,t1
bfc0cf20:	012a4821 	addu	t1,t1,t2
bfc0cf24:	150403d4 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cf28:	00000000 	nop
/home/csy/func/inst/n1_lui.S:44
bfc0cf2c:	3c041010 	lui	a0,0x1010
bfc0cf30:	3c08101f 	lui	t0,0x101f
bfc0cf34:	00892021 	addu	a0,a0,t1
bfc0cf38:	012a4821 	addu	t1,t1,t2
bfc0cf3c:	150403ce 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cf40:	00000000 	nop
/home/csy/func/inst/n1_lui.S:45
bfc0cf44:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:46
bfc0cf48:	3c042020 	lui	a0,0x2020
bfc0cf4c:	3c082020 	lui	t0,0x2020
bfc0cf50:	00892021 	addu	a0,a0,t1
bfc0cf54:	012a4821 	addu	t1,t1,t2
bfc0cf58:	150403c7 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cf5c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:47
bfc0cf60:	3c042020 	lui	a0,0x2020
bfc0cf64:	3c082021 	lui	t0,0x2021
bfc0cf68:	00892021 	addu	a0,a0,t1
bfc0cf6c:	012a4821 	addu	t1,t1,t2
bfc0cf70:	150403c1 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cf74:	00000000 	nop
/home/csy/func/inst/n1_lui.S:48
bfc0cf78:	3c042020 	lui	a0,0x2020
bfc0cf7c:	3c082022 	lui	t0,0x2022
bfc0cf80:	00892021 	addu	a0,a0,t1
bfc0cf84:	012a4821 	addu	t1,t1,t2
bfc0cf88:	150403bb 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cf8c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:49
bfc0cf90:	3c042020 	lui	a0,0x2020
bfc0cf94:	3c082023 	lui	t0,0x2023
bfc0cf98:	00892021 	addu	a0,a0,t1
bfc0cf9c:	012a4821 	addu	t1,t1,t2
bfc0cfa0:	150403b5 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cfa4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:50
bfc0cfa8:	3c042020 	lui	a0,0x2020
bfc0cfac:	3c082024 	lui	t0,0x2024
bfc0cfb0:	00892021 	addu	a0,a0,t1
bfc0cfb4:	012a4821 	addu	t1,t1,t2
bfc0cfb8:	150403af 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cfbc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:51
bfc0cfc0:	3c042020 	lui	a0,0x2020
bfc0cfc4:	3c082025 	lui	t0,0x2025
bfc0cfc8:	00892021 	addu	a0,a0,t1
bfc0cfcc:	012a4821 	addu	t1,t1,t2
bfc0cfd0:	150403a9 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cfd4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:52
bfc0cfd8:	3c042020 	lui	a0,0x2020
bfc0cfdc:	3c082026 	lui	t0,0x2026
bfc0cfe0:	00892021 	addu	a0,a0,t1
bfc0cfe4:	012a4821 	addu	t1,t1,t2
bfc0cfe8:	150403a3 	bne	t0,a0,bfc0de78 <inst_error>
bfc0cfec:	00000000 	nop
/home/csy/func/inst/n1_lui.S:53
bfc0cff0:	3c042020 	lui	a0,0x2020
bfc0cff4:	3c082027 	lui	t0,0x2027
bfc0cff8:	00892021 	addu	a0,a0,t1
bfc0cffc:	012a4821 	addu	t1,t1,t2
bfc0d000:	1504039d 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d004:	00000000 	nop
/home/csy/func/inst/n1_lui.S:54
bfc0d008:	3c042020 	lui	a0,0x2020
bfc0d00c:	3c082028 	lui	t0,0x2028
bfc0d010:	00892021 	addu	a0,a0,t1
bfc0d014:	012a4821 	addu	t1,t1,t2
bfc0d018:	15040397 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d01c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:55
bfc0d020:	3c042020 	lui	a0,0x2020
bfc0d024:	3c082029 	lui	t0,0x2029
bfc0d028:	00892021 	addu	a0,a0,t1
bfc0d02c:	012a4821 	addu	t1,t1,t2
bfc0d030:	15040391 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d034:	00000000 	nop
/home/csy/func/inst/n1_lui.S:56
bfc0d038:	3c042020 	lui	a0,0x2020
bfc0d03c:	3c08202a 	lui	t0,0x202a
bfc0d040:	00892021 	addu	a0,a0,t1
bfc0d044:	012a4821 	addu	t1,t1,t2
bfc0d048:	1504038b 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d04c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:57
bfc0d050:	3c042020 	lui	a0,0x2020
bfc0d054:	3c08202b 	lui	t0,0x202b
bfc0d058:	00892021 	addu	a0,a0,t1
bfc0d05c:	012a4821 	addu	t1,t1,t2
bfc0d060:	15040385 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d064:	00000000 	nop
/home/csy/func/inst/n1_lui.S:58
bfc0d068:	3c042020 	lui	a0,0x2020
bfc0d06c:	3c08202c 	lui	t0,0x202c
bfc0d070:	00892021 	addu	a0,a0,t1
bfc0d074:	012a4821 	addu	t1,t1,t2
bfc0d078:	1504037f 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d07c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:59
bfc0d080:	3c042020 	lui	a0,0x2020
bfc0d084:	3c08202d 	lui	t0,0x202d
bfc0d088:	00892021 	addu	a0,a0,t1
bfc0d08c:	012a4821 	addu	t1,t1,t2
bfc0d090:	15040379 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d094:	00000000 	nop
/home/csy/func/inst/n1_lui.S:60
bfc0d098:	3c042020 	lui	a0,0x2020
bfc0d09c:	3c08202e 	lui	t0,0x202e
bfc0d0a0:	00892021 	addu	a0,a0,t1
bfc0d0a4:	012a4821 	addu	t1,t1,t2
bfc0d0a8:	15040373 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d0ac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:61
bfc0d0b0:	3c042020 	lui	a0,0x2020
bfc0d0b4:	3c08202f 	lui	t0,0x202f
bfc0d0b8:	00892021 	addu	a0,a0,t1
bfc0d0bc:	012a4821 	addu	t1,t1,t2
bfc0d0c0:	1504036d 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d0c4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:62
bfc0d0c8:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:63
bfc0d0cc:	3c043030 	lui	a0,0x3030
bfc0d0d0:	3c083030 	lui	t0,0x3030
bfc0d0d4:	00892021 	addu	a0,a0,t1
bfc0d0d8:	012a4821 	addu	t1,t1,t2
bfc0d0dc:	15040366 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d0e0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:64
bfc0d0e4:	3c043030 	lui	a0,0x3030
bfc0d0e8:	3c083031 	lui	t0,0x3031
bfc0d0ec:	00892021 	addu	a0,a0,t1
bfc0d0f0:	012a4821 	addu	t1,t1,t2
bfc0d0f4:	15040360 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d0f8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:65
bfc0d0fc:	3c043030 	lui	a0,0x3030
bfc0d100:	3c083032 	lui	t0,0x3032
bfc0d104:	00892021 	addu	a0,a0,t1
bfc0d108:	012a4821 	addu	t1,t1,t2
bfc0d10c:	1504035a 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d110:	00000000 	nop
/home/csy/func/inst/n1_lui.S:66
bfc0d114:	3c043030 	lui	a0,0x3030
bfc0d118:	3c083033 	lui	t0,0x3033
bfc0d11c:	00892021 	addu	a0,a0,t1
bfc0d120:	012a4821 	addu	t1,t1,t2
bfc0d124:	15040354 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d128:	00000000 	nop
/home/csy/func/inst/n1_lui.S:67
bfc0d12c:	3c043030 	lui	a0,0x3030
bfc0d130:	3c083034 	lui	t0,0x3034
bfc0d134:	00892021 	addu	a0,a0,t1
bfc0d138:	012a4821 	addu	t1,t1,t2
bfc0d13c:	1504034e 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d140:	00000000 	nop
/home/csy/func/inst/n1_lui.S:68
bfc0d144:	3c043030 	lui	a0,0x3030
bfc0d148:	3c083035 	lui	t0,0x3035
bfc0d14c:	00892021 	addu	a0,a0,t1
bfc0d150:	012a4821 	addu	t1,t1,t2
bfc0d154:	15040348 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d158:	00000000 	nop
/home/csy/func/inst/n1_lui.S:69
bfc0d15c:	3c043030 	lui	a0,0x3030
bfc0d160:	3c083036 	lui	t0,0x3036
bfc0d164:	00892021 	addu	a0,a0,t1
bfc0d168:	012a4821 	addu	t1,t1,t2
bfc0d16c:	15040342 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d170:	00000000 	nop
/home/csy/func/inst/n1_lui.S:70
bfc0d174:	3c043030 	lui	a0,0x3030
bfc0d178:	3c083037 	lui	t0,0x3037
bfc0d17c:	00892021 	addu	a0,a0,t1
bfc0d180:	012a4821 	addu	t1,t1,t2
bfc0d184:	1504033c 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d188:	00000000 	nop
/home/csy/func/inst/n1_lui.S:71
bfc0d18c:	3c043030 	lui	a0,0x3030
bfc0d190:	3c083038 	lui	t0,0x3038
bfc0d194:	00892021 	addu	a0,a0,t1
bfc0d198:	012a4821 	addu	t1,t1,t2
bfc0d19c:	15040336 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d1a0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:72
bfc0d1a4:	3c043030 	lui	a0,0x3030
bfc0d1a8:	3c083039 	lui	t0,0x3039
bfc0d1ac:	00892021 	addu	a0,a0,t1
bfc0d1b0:	012a4821 	addu	t1,t1,t2
bfc0d1b4:	15040330 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d1b8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:73
bfc0d1bc:	3c043030 	lui	a0,0x3030
bfc0d1c0:	3c08303a 	lui	t0,0x303a
bfc0d1c4:	00892021 	addu	a0,a0,t1
bfc0d1c8:	012a4821 	addu	t1,t1,t2
bfc0d1cc:	1504032a 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d1d0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:74
bfc0d1d4:	3c043030 	lui	a0,0x3030
bfc0d1d8:	3c08303b 	lui	t0,0x303b
bfc0d1dc:	00892021 	addu	a0,a0,t1
bfc0d1e0:	012a4821 	addu	t1,t1,t2
bfc0d1e4:	15040324 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d1e8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:75
bfc0d1ec:	3c043030 	lui	a0,0x3030
bfc0d1f0:	3c08303c 	lui	t0,0x303c
bfc0d1f4:	00892021 	addu	a0,a0,t1
bfc0d1f8:	012a4821 	addu	t1,t1,t2
bfc0d1fc:	1504031e 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d200:	00000000 	nop
/home/csy/func/inst/n1_lui.S:76
bfc0d204:	3c043030 	lui	a0,0x3030
bfc0d208:	3c08303d 	lui	t0,0x303d
bfc0d20c:	00892021 	addu	a0,a0,t1
bfc0d210:	012a4821 	addu	t1,t1,t2
bfc0d214:	15040318 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d218:	00000000 	nop
/home/csy/func/inst/n1_lui.S:77
bfc0d21c:	3c043030 	lui	a0,0x3030
bfc0d220:	3c08303e 	lui	t0,0x303e
bfc0d224:	00892021 	addu	a0,a0,t1
bfc0d228:	012a4821 	addu	t1,t1,t2
bfc0d22c:	15040312 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d230:	00000000 	nop
/home/csy/func/inst/n1_lui.S:78
bfc0d234:	3c043030 	lui	a0,0x3030
bfc0d238:	3c08303f 	lui	t0,0x303f
bfc0d23c:	00892021 	addu	a0,a0,t1
bfc0d240:	012a4821 	addu	t1,t1,t2
bfc0d244:	1504030c 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d248:	00000000 	nop
/home/csy/func/inst/n1_lui.S:79
bfc0d24c:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:80
bfc0d250:	3c044040 	lui	a0,0x4040
bfc0d254:	3c084040 	lui	t0,0x4040
bfc0d258:	00892021 	addu	a0,a0,t1
bfc0d25c:	012a4821 	addu	t1,t1,t2
bfc0d260:	15040305 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d264:	00000000 	nop
/home/csy/func/inst/n1_lui.S:81
bfc0d268:	3c044040 	lui	a0,0x4040
bfc0d26c:	3c084041 	lui	t0,0x4041
bfc0d270:	00892021 	addu	a0,a0,t1
bfc0d274:	012a4821 	addu	t1,t1,t2
bfc0d278:	150402ff 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d27c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:82
bfc0d280:	3c044040 	lui	a0,0x4040
bfc0d284:	3c084042 	lui	t0,0x4042
bfc0d288:	00892021 	addu	a0,a0,t1
bfc0d28c:	012a4821 	addu	t1,t1,t2
bfc0d290:	150402f9 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d294:	00000000 	nop
/home/csy/func/inst/n1_lui.S:83
bfc0d298:	3c044040 	lui	a0,0x4040
bfc0d29c:	3c084043 	lui	t0,0x4043
bfc0d2a0:	00892021 	addu	a0,a0,t1
bfc0d2a4:	012a4821 	addu	t1,t1,t2
bfc0d2a8:	150402f3 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d2ac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:84
bfc0d2b0:	3c044040 	lui	a0,0x4040
bfc0d2b4:	3c084044 	lui	t0,0x4044
bfc0d2b8:	00892021 	addu	a0,a0,t1
bfc0d2bc:	012a4821 	addu	t1,t1,t2
bfc0d2c0:	150402ed 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d2c4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:85
bfc0d2c8:	3c044040 	lui	a0,0x4040
bfc0d2cc:	3c084045 	lui	t0,0x4045
bfc0d2d0:	00892021 	addu	a0,a0,t1
bfc0d2d4:	012a4821 	addu	t1,t1,t2
bfc0d2d8:	150402e7 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d2dc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:86
bfc0d2e0:	3c044040 	lui	a0,0x4040
bfc0d2e4:	3c084046 	lui	t0,0x4046
bfc0d2e8:	00892021 	addu	a0,a0,t1
bfc0d2ec:	012a4821 	addu	t1,t1,t2
bfc0d2f0:	150402e1 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d2f4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:87
bfc0d2f8:	3c044040 	lui	a0,0x4040
bfc0d2fc:	3c084047 	lui	t0,0x4047
bfc0d300:	00892021 	addu	a0,a0,t1
bfc0d304:	012a4821 	addu	t1,t1,t2
bfc0d308:	150402db 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d30c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:88
bfc0d310:	3c044040 	lui	a0,0x4040
bfc0d314:	3c084048 	lui	t0,0x4048
bfc0d318:	00892021 	addu	a0,a0,t1
bfc0d31c:	012a4821 	addu	t1,t1,t2
bfc0d320:	150402d5 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d324:	00000000 	nop
/home/csy/func/inst/n1_lui.S:89
bfc0d328:	3c044040 	lui	a0,0x4040
bfc0d32c:	3c084049 	lui	t0,0x4049
bfc0d330:	00892021 	addu	a0,a0,t1
bfc0d334:	012a4821 	addu	t1,t1,t2
bfc0d338:	150402cf 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d33c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:90
bfc0d340:	3c044040 	lui	a0,0x4040
bfc0d344:	3c08404a 	lui	t0,0x404a
bfc0d348:	00892021 	addu	a0,a0,t1
bfc0d34c:	012a4821 	addu	t1,t1,t2
bfc0d350:	150402c9 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d354:	00000000 	nop
/home/csy/func/inst/n1_lui.S:91
bfc0d358:	3c044040 	lui	a0,0x4040
bfc0d35c:	3c08404b 	lui	t0,0x404b
bfc0d360:	00892021 	addu	a0,a0,t1
bfc0d364:	012a4821 	addu	t1,t1,t2
bfc0d368:	150402c3 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d36c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:92
bfc0d370:	3c044040 	lui	a0,0x4040
bfc0d374:	3c08404c 	lui	t0,0x404c
bfc0d378:	00892021 	addu	a0,a0,t1
bfc0d37c:	012a4821 	addu	t1,t1,t2
bfc0d380:	150402bd 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d384:	00000000 	nop
/home/csy/func/inst/n1_lui.S:93
bfc0d388:	3c044040 	lui	a0,0x4040
bfc0d38c:	3c08404d 	lui	t0,0x404d
bfc0d390:	00892021 	addu	a0,a0,t1
bfc0d394:	012a4821 	addu	t1,t1,t2
bfc0d398:	150402b7 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d39c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:94
bfc0d3a0:	3c044040 	lui	a0,0x4040
bfc0d3a4:	3c08404e 	lui	t0,0x404e
bfc0d3a8:	00892021 	addu	a0,a0,t1
bfc0d3ac:	012a4821 	addu	t1,t1,t2
bfc0d3b0:	150402b1 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d3b4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:95
bfc0d3b8:	3c044040 	lui	a0,0x4040
bfc0d3bc:	3c08404f 	lui	t0,0x404f
bfc0d3c0:	00892021 	addu	a0,a0,t1
bfc0d3c4:	012a4821 	addu	t1,t1,t2
bfc0d3c8:	150402ab 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d3cc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:96
bfc0d3d0:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:97
bfc0d3d4:	3c045040 	lui	a0,0x5040
bfc0d3d8:	3c085040 	lui	t0,0x5040
bfc0d3dc:	00892021 	addu	a0,a0,t1
bfc0d3e0:	012a4821 	addu	t1,t1,t2
bfc0d3e4:	150402a4 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d3e8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:98
bfc0d3ec:	3c045040 	lui	a0,0x5040
bfc0d3f0:	3c085041 	lui	t0,0x5041
bfc0d3f4:	00892021 	addu	a0,a0,t1
bfc0d3f8:	012a4821 	addu	t1,t1,t2
bfc0d3fc:	1504029e 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d400:	00000000 	nop
/home/csy/func/inst/n1_lui.S:99
bfc0d404:	3c045040 	lui	a0,0x5040
bfc0d408:	3c085042 	lui	t0,0x5042
bfc0d40c:	00892021 	addu	a0,a0,t1
bfc0d410:	012a4821 	addu	t1,t1,t2
bfc0d414:	15040298 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d418:	00000000 	nop
/home/csy/func/inst/n1_lui.S:100
bfc0d41c:	3c045040 	lui	a0,0x5040
bfc0d420:	3c085043 	lui	t0,0x5043
bfc0d424:	00892021 	addu	a0,a0,t1
bfc0d428:	012a4821 	addu	t1,t1,t2
bfc0d42c:	15040292 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d430:	00000000 	nop
/home/csy/func/inst/n1_lui.S:101
bfc0d434:	3c045040 	lui	a0,0x5040
bfc0d438:	3c085044 	lui	t0,0x5044
bfc0d43c:	00892021 	addu	a0,a0,t1
bfc0d440:	012a4821 	addu	t1,t1,t2
bfc0d444:	1504028c 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d448:	00000000 	nop
/home/csy/func/inst/n1_lui.S:102
bfc0d44c:	3c045040 	lui	a0,0x5040
bfc0d450:	3c085045 	lui	t0,0x5045
bfc0d454:	00892021 	addu	a0,a0,t1
bfc0d458:	012a4821 	addu	t1,t1,t2
bfc0d45c:	15040286 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d460:	00000000 	nop
/home/csy/func/inst/n1_lui.S:103
bfc0d464:	3c045040 	lui	a0,0x5040
bfc0d468:	3c085046 	lui	t0,0x5046
bfc0d46c:	00892021 	addu	a0,a0,t1
bfc0d470:	012a4821 	addu	t1,t1,t2
bfc0d474:	15040280 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d478:	00000000 	nop
/home/csy/func/inst/n1_lui.S:104
bfc0d47c:	3c045040 	lui	a0,0x5040
bfc0d480:	3c085047 	lui	t0,0x5047
bfc0d484:	00892021 	addu	a0,a0,t1
bfc0d488:	012a4821 	addu	t1,t1,t2
bfc0d48c:	1504027a 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d490:	00000000 	nop
/home/csy/func/inst/n1_lui.S:105
bfc0d494:	3c045040 	lui	a0,0x5040
bfc0d498:	3c085048 	lui	t0,0x5048
bfc0d49c:	00892021 	addu	a0,a0,t1
bfc0d4a0:	012a4821 	addu	t1,t1,t2
bfc0d4a4:	15040274 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d4a8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:106
bfc0d4ac:	3c045040 	lui	a0,0x5040
bfc0d4b0:	3c085049 	lui	t0,0x5049
bfc0d4b4:	00892021 	addu	a0,a0,t1
bfc0d4b8:	012a4821 	addu	t1,t1,t2
bfc0d4bc:	1504026e 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d4c0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:107
bfc0d4c4:	3c045040 	lui	a0,0x5040
bfc0d4c8:	3c08504a 	lui	t0,0x504a
bfc0d4cc:	00892021 	addu	a0,a0,t1
bfc0d4d0:	012a4821 	addu	t1,t1,t2
bfc0d4d4:	15040268 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d4d8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:108
bfc0d4dc:	3c045040 	lui	a0,0x5040
bfc0d4e0:	3c08504b 	lui	t0,0x504b
bfc0d4e4:	00892021 	addu	a0,a0,t1
bfc0d4e8:	012a4821 	addu	t1,t1,t2
bfc0d4ec:	15040262 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d4f0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:109
bfc0d4f4:	3c045040 	lui	a0,0x5040
bfc0d4f8:	3c08504c 	lui	t0,0x504c
bfc0d4fc:	00892021 	addu	a0,a0,t1
bfc0d500:	012a4821 	addu	t1,t1,t2
bfc0d504:	1504025c 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d508:	00000000 	nop
/home/csy/func/inst/n1_lui.S:110
bfc0d50c:	3c045040 	lui	a0,0x5040
bfc0d510:	3c08504d 	lui	t0,0x504d
bfc0d514:	00892021 	addu	a0,a0,t1
bfc0d518:	012a4821 	addu	t1,t1,t2
bfc0d51c:	15040256 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d520:	00000000 	nop
/home/csy/func/inst/n1_lui.S:111
bfc0d524:	3c045040 	lui	a0,0x5040
bfc0d528:	3c08504e 	lui	t0,0x504e
bfc0d52c:	00892021 	addu	a0,a0,t1
bfc0d530:	012a4821 	addu	t1,t1,t2
bfc0d534:	15040250 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d538:	00000000 	nop
/home/csy/func/inst/n1_lui.S:112
bfc0d53c:	3c045040 	lui	a0,0x5040
bfc0d540:	3c08504f 	lui	t0,0x504f
bfc0d544:	00892021 	addu	a0,a0,t1
bfc0d548:	012a4821 	addu	t1,t1,t2
bfc0d54c:	1504024a 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d550:	00000000 	nop
/home/csy/func/inst/n1_lui.S:113
bfc0d554:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:114
bfc0d558:	3c046050 	lui	a0,0x6050
bfc0d55c:	3c086050 	lui	t0,0x6050
bfc0d560:	00892021 	addu	a0,a0,t1
bfc0d564:	012a4821 	addu	t1,t1,t2
bfc0d568:	15040243 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d56c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:115
bfc0d570:	3c046050 	lui	a0,0x6050
bfc0d574:	3c086051 	lui	t0,0x6051
bfc0d578:	00892021 	addu	a0,a0,t1
bfc0d57c:	012a4821 	addu	t1,t1,t2
bfc0d580:	1504023d 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d584:	00000000 	nop
/home/csy/func/inst/n1_lui.S:116
bfc0d588:	3c046050 	lui	a0,0x6050
bfc0d58c:	3c086052 	lui	t0,0x6052
bfc0d590:	00892021 	addu	a0,a0,t1
bfc0d594:	012a4821 	addu	t1,t1,t2
bfc0d598:	15040237 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d59c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:117
bfc0d5a0:	3c046050 	lui	a0,0x6050
bfc0d5a4:	3c086053 	lui	t0,0x6053
bfc0d5a8:	00892021 	addu	a0,a0,t1
bfc0d5ac:	012a4821 	addu	t1,t1,t2
bfc0d5b0:	15040231 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d5b4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:118
bfc0d5b8:	3c046050 	lui	a0,0x6050
bfc0d5bc:	3c086054 	lui	t0,0x6054
bfc0d5c0:	00892021 	addu	a0,a0,t1
bfc0d5c4:	012a4821 	addu	t1,t1,t2
bfc0d5c8:	1504022b 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d5cc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:119
bfc0d5d0:	3c046050 	lui	a0,0x6050
bfc0d5d4:	3c086055 	lui	t0,0x6055
bfc0d5d8:	00892021 	addu	a0,a0,t1
bfc0d5dc:	012a4821 	addu	t1,t1,t2
bfc0d5e0:	15040225 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d5e4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:120
bfc0d5e8:	3c046050 	lui	a0,0x6050
bfc0d5ec:	3c086056 	lui	t0,0x6056
bfc0d5f0:	00892021 	addu	a0,a0,t1
bfc0d5f4:	012a4821 	addu	t1,t1,t2
bfc0d5f8:	1504021f 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d5fc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:121
bfc0d600:	3c046050 	lui	a0,0x6050
bfc0d604:	3c086057 	lui	t0,0x6057
bfc0d608:	00892021 	addu	a0,a0,t1
bfc0d60c:	012a4821 	addu	t1,t1,t2
bfc0d610:	15040219 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d614:	00000000 	nop
/home/csy/func/inst/n1_lui.S:122
bfc0d618:	3c046050 	lui	a0,0x6050
bfc0d61c:	3c086058 	lui	t0,0x6058
bfc0d620:	00892021 	addu	a0,a0,t1
bfc0d624:	012a4821 	addu	t1,t1,t2
bfc0d628:	15040213 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d62c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:123
bfc0d630:	3c046050 	lui	a0,0x6050
bfc0d634:	3c086059 	lui	t0,0x6059
bfc0d638:	00892021 	addu	a0,a0,t1
bfc0d63c:	012a4821 	addu	t1,t1,t2
bfc0d640:	1504020d 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d644:	00000000 	nop
/home/csy/func/inst/n1_lui.S:124
bfc0d648:	3c046050 	lui	a0,0x6050
bfc0d64c:	3c08605a 	lui	t0,0x605a
bfc0d650:	00892021 	addu	a0,a0,t1
bfc0d654:	012a4821 	addu	t1,t1,t2
bfc0d658:	15040207 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d65c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:125
bfc0d660:	3c046050 	lui	a0,0x6050
bfc0d664:	3c08605b 	lui	t0,0x605b
bfc0d668:	00892021 	addu	a0,a0,t1
bfc0d66c:	012a4821 	addu	t1,t1,t2
bfc0d670:	15040201 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d674:	00000000 	nop
/home/csy/func/inst/n1_lui.S:126
bfc0d678:	3c046050 	lui	a0,0x6050
bfc0d67c:	3c08605c 	lui	t0,0x605c
bfc0d680:	00892021 	addu	a0,a0,t1
bfc0d684:	012a4821 	addu	t1,t1,t2
bfc0d688:	150401fb 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d68c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:127
bfc0d690:	3c046050 	lui	a0,0x6050
bfc0d694:	3c08605d 	lui	t0,0x605d
bfc0d698:	00892021 	addu	a0,a0,t1
bfc0d69c:	012a4821 	addu	t1,t1,t2
bfc0d6a0:	150401f5 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d6a4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:128
bfc0d6a8:	3c046050 	lui	a0,0x6050
bfc0d6ac:	3c08605e 	lui	t0,0x605e
bfc0d6b0:	00892021 	addu	a0,a0,t1
bfc0d6b4:	012a4821 	addu	t1,t1,t2
bfc0d6b8:	150401ef 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d6bc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:129
bfc0d6c0:	3c046050 	lui	a0,0x6050
bfc0d6c4:	3c08605f 	lui	t0,0x605f
bfc0d6c8:	00892021 	addu	a0,a0,t1
bfc0d6cc:	012a4821 	addu	t1,t1,t2
bfc0d6d0:	150401e9 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d6d4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:130
bfc0d6d8:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:131
bfc0d6dc:	3c048060 	lui	a0,0x8060
bfc0d6e0:	3c088060 	lui	t0,0x8060
bfc0d6e4:	00892021 	addu	a0,a0,t1
bfc0d6e8:	012a4821 	addu	t1,t1,t2
bfc0d6ec:	150401e2 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d6f0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:132
bfc0d6f4:	3c048060 	lui	a0,0x8060
bfc0d6f8:	3c088061 	lui	t0,0x8061
bfc0d6fc:	00892021 	addu	a0,a0,t1
bfc0d700:	012a4821 	addu	t1,t1,t2
bfc0d704:	150401dc 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d708:	00000000 	nop
/home/csy/func/inst/n1_lui.S:133
bfc0d70c:	3c048060 	lui	a0,0x8060
bfc0d710:	3c088062 	lui	t0,0x8062
bfc0d714:	00892021 	addu	a0,a0,t1
bfc0d718:	012a4821 	addu	t1,t1,t2
bfc0d71c:	150401d6 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d720:	00000000 	nop
/home/csy/func/inst/n1_lui.S:134
bfc0d724:	3c048060 	lui	a0,0x8060
bfc0d728:	3c088063 	lui	t0,0x8063
bfc0d72c:	00892021 	addu	a0,a0,t1
bfc0d730:	012a4821 	addu	t1,t1,t2
bfc0d734:	150401d0 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d738:	00000000 	nop
/home/csy/func/inst/n1_lui.S:135
bfc0d73c:	3c048060 	lui	a0,0x8060
bfc0d740:	3c088064 	lui	t0,0x8064
bfc0d744:	00892021 	addu	a0,a0,t1
bfc0d748:	012a4821 	addu	t1,t1,t2
bfc0d74c:	150401ca 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d750:	00000000 	nop
/home/csy/func/inst/n1_lui.S:136
bfc0d754:	3c048060 	lui	a0,0x8060
bfc0d758:	3c088065 	lui	t0,0x8065
bfc0d75c:	00892021 	addu	a0,a0,t1
bfc0d760:	012a4821 	addu	t1,t1,t2
bfc0d764:	150401c4 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d768:	00000000 	nop
/home/csy/func/inst/n1_lui.S:137
bfc0d76c:	3c048060 	lui	a0,0x8060
bfc0d770:	3c088066 	lui	t0,0x8066
bfc0d774:	00892021 	addu	a0,a0,t1
bfc0d778:	012a4821 	addu	t1,t1,t2
bfc0d77c:	150401be 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d780:	00000000 	nop
/home/csy/func/inst/n1_lui.S:138
bfc0d784:	3c048060 	lui	a0,0x8060
bfc0d788:	3c088067 	lui	t0,0x8067
bfc0d78c:	00892021 	addu	a0,a0,t1
bfc0d790:	012a4821 	addu	t1,t1,t2
bfc0d794:	150401b8 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d798:	00000000 	nop
/home/csy/func/inst/n1_lui.S:139
bfc0d79c:	3c048060 	lui	a0,0x8060
bfc0d7a0:	3c088068 	lui	t0,0x8068
bfc0d7a4:	00892021 	addu	a0,a0,t1
bfc0d7a8:	012a4821 	addu	t1,t1,t2
bfc0d7ac:	150401b2 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d7b0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:140
bfc0d7b4:	3c048060 	lui	a0,0x8060
bfc0d7b8:	3c088069 	lui	t0,0x8069
bfc0d7bc:	00892021 	addu	a0,a0,t1
bfc0d7c0:	012a4821 	addu	t1,t1,t2
bfc0d7c4:	150401ac 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d7c8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:141
bfc0d7cc:	3c048060 	lui	a0,0x8060
bfc0d7d0:	3c08806a 	lui	t0,0x806a
bfc0d7d4:	00892021 	addu	a0,a0,t1
bfc0d7d8:	012a4821 	addu	t1,t1,t2
bfc0d7dc:	150401a6 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d7e0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:142
bfc0d7e4:	3c048060 	lui	a0,0x8060
bfc0d7e8:	3c08806b 	lui	t0,0x806b
bfc0d7ec:	00892021 	addu	a0,a0,t1
bfc0d7f0:	012a4821 	addu	t1,t1,t2
bfc0d7f4:	150401a0 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d7f8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:143
bfc0d7fc:	3c048060 	lui	a0,0x8060
bfc0d800:	3c08806c 	lui	t0,0x806c
bfc0d804:	00892021 	addu	a0,a0,t1
bfc0d808:	012a4821 	addu	t1,t1,t2
bfc0d80c:	1504019a 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d810:	00000000 	nop
/home/csy/func/inst/n1_lui.S:144
bfc0d814:	3c048060 	lui	a0,0x8060
bfc0d818:	3c08806d 	lui	t0,0x806d
bfc0d81c:	00892021 	addu	a0,a0,t1
bfc0d820:	012a4821 	addu	t1,t1,t2
bfc0d824:	15040194 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d828:	00000000 	nop
/home/csy/func/inst/n1_lui.S:145
bfc0d82c:	3c048060 	lui	a0,0x8060
bfc0d830:	3c08806e 	lui	t0,0x806e
bfc0d834:	00892021 	addu	a0,a0,t1
bfc0d838:	012a4821 	addu	t1,t1,t2
bfc0d83c:	1504018e 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d840:	00000000 	nop
/home/csy/func/inst/n1_lui.S:146
bfc0d844:	3c048060 	lui	a0,0x8060
bfc0d848:	3c08806f 	lui	t0,0x806f
bfc0d84c:	00892021 	addu	a0,a0,t1
bfc0d850:	012a4821 	addu	t1,t1,t2
bfc0d854:	15040188 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d858:	00000000 	nop
/home/csy/func/inst/n1_lui.S:147
bfc0d85c:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:148
bfc0d860:	3c04a070 	lui	a0,0xa070
bfc0d864:	3c08a070 	lui	t0,0xa070
bfc0d868:	00892021 	addu	a0,a0,t1
bfc0d86c:	012a4821 	addu	t1,t1,t2
bfc0d870:	15040181 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d874:	00000000 	nop
/home/csy/func/inst/n1_lui.S:149
bfc0d878:	3c04a070 	lui	a0,0xa070
bfc0d87c:	3c08a071 	lui	t0,0xa071
bfc0d880:	00892021 	addu	a0,a0,t1
bfc0d884:	012a4821 	addu	t1,t1,t2
bfc0d888:	1504017b 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d88c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:150
bfc0d890:	3c04a070 	lui	a0,0xa070
bfc0d894:	3c08a072 	lui	t0,0xa072
bfc0d898:	00892021 	addu	a0,a0,t1
bfc0d89c:	012a4821 	addu	t1,t1,t2
bfc0d8a0:	15040175 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d8a4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:151
bfc0d8a8:	3c04a070 	lui	a0,0xa070
bfc0d8ac:	3c08a073 	lui	t0,0xa073
bfc0d8b0:	00892021 	addu	a0,a0,t1
bfc0d8b4:	012a4821 	addu	t1,t1,t2
bfc0d8b8:	1504016f 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d8bc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:152
bfc0d8c0:	3c04a070 	lui	a0,0xa070
bfc0d8c4:	3c08a074 	lui	t0,0xa074
bfc0d8c8:	00892021 	addu	a0,a0,t1
bfc0d8cc:	012a4821 	addu	t1,t1,t2
bfc0d8d0:	15040169 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d8d4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:153
bfc0d8d8:	3c04a070 	lui	a0,0xa070
bfc0d8dc:	3c08a075 	lui	t0,0xa075
bfc0d8e0:	00892021 	addu	a0,a0,t1
bfc0d8e4:	012a4821 	addu	t1,t1,t2
bfc0d8e8:	15040163 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d8ec:	00000000 	nop
/home/csy/func/inst/n1_lui.S:154
bfc0d8f0:	3c04a070 	lui	a0,0xa070
bfc0d8f4:	3c08a076 	lui	t0,0xa076
bfc0d8f8:	00892021 	addu	a0,a0,t1
bfc0d8fc:	012a4821 	addu	t1,t1,t2
bfc0d900:	1504015d 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d904:	00000000 	nop
/home/csy/func/inst/n1_lui.S:155
bfc0d908:	3c04a070 	lui	a0,0xa070
bfc0d90c:	3c08a077 	lui	t0,0xa077
bfc0d910:	00892021 	addu	a0,a0,t1
bfc0d914:	012a4821 	addu	t1,t1,t2
bfc0d918:	15040157 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d91c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:156
bfc0d920:	3c04a070 	lui	a0,0xa070
bfc0d924:	3c08a078 	lui	t0,0xa078
bfc0d928:	00892021 	addu	a0,a0,t1
bfc0d92c:	012a4821 	addu	t1,t1,t2
bfc0d930:	15040151 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d934:	00000000 	nop
/home/csy/func/inst/n1_lui.S:157
bfc0d938:	3c04a070 	lui	a0,0xa070
bfc0d93c:	3c08a079 	lui	t0,0xa079
bfc0d940:	00892021 	addu	a0,a0,t1
bfc0d944:	012a4821 	addu	t1,t1,t2
bfc0d948:	1504014b 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d94c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:158
bfc0d950:	3c04a070 	lui	a0,0xa070
bfc0d954:	3c08a07a 	lui	t0,0xa07a
bfc0d958:	00892021 	addu	a0,a0,t1
bfc0d95c:	012a4821 	addu	t1,t1,t2
bfc0d960:	15040145 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d964:	00000000 	nop
/home/csy/func/inst/n1_lui.S:159
bfc0d968:	3c04a070 	lui	a0,0xa070
bfc0d96c:	3c08a07b 	lui	t0,0xa07b
bfc0d970:	00892021 	addu	a0,a0,t1
bfc0d974:	012a4821 	addu	t1,t1,t2
bfc0d978:	1504013f 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d97c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:160
bfc0d980:	3c04a070 	lui	a0,0xa070
bfc0d984:	3c08a07c 	lui	t0,0xa07c
bfc0d988:	00892021 	addu	a0,a0,t1
bfc0d98c:	012a4821 	addu	t1,t1,t2
bfc0d990:	15040139 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d994:	00000000 	nop
/home/csy/func/inst/n1_lui.S:161
bfc0d998:	3c04a070 	lui	a0,0xa070
bfc0d99c:	3c08a07d 	lui	t0,0xa07d
bfc0d9a0:	00892021 	addu	a0,a0,t1
bfc0d9a4:	012a4821 	addu	t1,t1,t2
bfc0d9a8:	15040133 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d9ac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:162
bfc0d9b0:	3c04a070 	lui	a0,0xa070
bfc0d9b4:	3c08a07e 	lui	t0,0xa07e
bfc0d9b8:	00892021 	addu	a0,a0,t1
bfc0d9bc:	012a4821 	addu	t1,t1,t2
bfc0d9c0:	1504012d 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d9c4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:163
bfc0d9c8:	3c04a070 	lui	a0,0xa070
bfc0d9cc:	3c08a07f 	lui	t0,0xa07f
bfc0d9d0:	00892021 	addu	a0,a0,t1
bfc0d9d4:	012a4821 	addu	t1,t1,t2
bfc0d9d8:	15040127 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d9dc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:164
bfc0d9e0:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:165
bfc0d9e4:	3c04c080 	lui	a0,0xc080
bfc0d9e8:	3c08c080 	lui	t0,0xc080
bfc0d9ec:	00892021 	addu	a0,a0,t1
bfc0d9f0:	012a4821 	addu	t1,t1,t2
bfc0d9f4:	15040120 	bne	t0,a0,bfc0de78 <inst_error>
bfc0d9f8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:166
bfc0d9fc:	3c04c080 	lui	a0,0xc080
bfc0da00:	3c08c081 	lui	t0,0xc081
bfc0da04:	00892021 	addu	a0,a0,t1
bfc0da08:	012a4821 	addu	t1,t1,t2
bfc0da0c:	1504011a 	bne	t0,a0,bfc0de78 <inst_error>
bfc0da10:	00000000 	nop
/home/csy/func/inst/n1_lui.S:167
bfc0da14:	3c04c080 	lui	a0,0xc080
bfc0da18:	3c08c082 	lui	t0,0xc082
bfc0da1c:	00892021 	addu	a0,a0,t1
bfc0da20:	012a4821 	addu	t1,t1,t2
bfc0da24:	15040114 	bne	t0,a0,bfc0de78 <inst_error>
bfc0da28:	00000000 	nop
/home/csy/func/inst/n1_lui.S:168
bfc0da2c:	3c04c080 	lui	a0,0xc080
bfc0da30:	3c08c083 	lui	t0,0xc083
bfc0da34:	00892021 	addu	a0,a0,t1
bfc0da38:	012a4821 	addu	t1,t1,t2
bfc0da3c:	1504010e 	bne	t0,a0,bfc0de78 <inst_error>
bfc0da40:	00000000 	nop
/home/csy/func/inst/n1_lui.S:169
bfc0da44:	3c04c080 	lui	a0,0xc080
bfc0da48:	3c08c084 	lui	t0,0xc084
bfc0da4c:	00892021 	addu	a0,a0,t1
bfc0da50:	012a4821 	addu	t1,t1,t2
bfc0da54:	15040108 	bne	t0,a0,bfc0de78 <inst_error>
bfc0da58:	00000000 	nop
/home/csy/func/inst/n1_lui.S:170
bfc0da5c:	3c04c080 	lui	a0,0xc080
bfc0da60:	3c08c085 	lui	t0,0xc085
bfc0da64:	00892021 	addu	a0,a0,t1
bfc0da68:	012a4821 	addu	t1,t1,t2
bfc0da6c:	15040102 	bne	t0,a0,bfc0de78 <inst_error>
bfc0da70:	00000000 	nop
/home/csy/func/inst/n1_lui.S:171
bfc0da74:	3c04c080 	lui	a0,0xc080
bfc0da78:	3c08c086 	lui	t0,0xc086
bfc0da7c:	00892021 	addu	a0,a0,t1
bfc0da80:	012a4821 	addu	t1,t1,t2
bfc0da84:	150400fc 	bne	t0,a0,bfc0de78 <inst_error>
bfc0da88:	00000000 	nop
/home/csy/func/inst/n1_lui.S:172
bfc0da8c:	3c04c080 	lui	a0,0xc080
bfc0da90:	3c08c087 	lui	t0,0xc087
bfc0da94:	00892021 	addu	a0,a0,t1
bfc0da98:	012a4821 	addu	t1,t1,t2
bfc0da9c:	150400f6 	bne	t0,a0,bfc0de78 <inst_error>
bfc0daa0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:173
bfc0daa4:	3c04c080 	lui	a0,0xc080
bfc0daa8:	3c08c088 	lui	t0,0xc088
bfc0daac:	00892021 	addu	a0,a0,t1
bfc0dab0:	012a4821 	addu	t1,t1,t2
bfc0dab4:	150400f0 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dab8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:174
bfc0dabc:	3c04c080 	lui	a0,0xc080
bfc0dac0:	3c08c089 	lui	t0,0xc089
bfc0dac4:	00892021 	addu	a0,a0,t1
bfc0dac8:	012a4821 	addu	t1,t1,t2
bfc0dacc:	150400ea 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dad0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:175
bfc0dad4:	3c04c080 	lui	a0,0xc080
bfc0dad8:	3c08c08a 	lui	t0,0xc08a
bfc0dadc:	00892021 	addu	a0,a0,t1
bfc0dae0:	012a4821 	addu	t1,t1,t2
bfc0dae4:	150400e4 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dae8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:176
bfc0daec:	3c04c080 	lui	a0,0xc080
bfc0daf0:	3c08c08b 	lui	t0,0xc08b
bfc0daf4:	00892021 	addu	a0,a0,t1
bfc0daf8:	012a4821 	addu	t1,t1,t2
bfc0dafc:	150400de 	bne	t0,a0,bfc0de78 <inst_error>
bfc0db00:	00000000 	nop
/home/csy/func/inst/n1_lui.S:177
bfc0db04:	3c04c080 	lui	a0,0xc080
bfc0db08:	3c08c08c 	lui	t0,0xc08c
bfc0db0c:	00892021 	addu	a0,a0,t1
bfc0db10:	012a4821 	addu	t1,t1,t2
bfc0db14:	150400d8 	bne	t0,a0,bfc0de78 <inst_error>
bfc0db18:	00000000 	nop
/home/csy/func/inst/n1_lui.S:178
bfc0db1c:	3c04c080 	lui	a0,0xc080
bfc0db20:	3c08c08d 	lui	t0,0xc08d
bfc0db24:	00892021 	addu	a0,a0,t1
bfc0db28:	012a4821 	addu	t1,t1,t2
bfc0db2c:	150400d2 	bne	t0,a0,bfc0de78 <inst_error>
bfc0db30:	00000000 	nop
/home/csy/func/inst/n1_lui.S:179
bfc0db34:	3c04c080 	lui	a0,0xc080
bfc0db38:	3c08c08e 	lui	t0,0xc08e
bfc0db3c:	00892021 	addu	a0,a0,t1
bfc0db40:	012a4821 	addu	t1,t1,t2
bfc0db44:	150400cc 	bne	t0,a0,bfc0de78 <inst_error>
bfc0db48:	00000000 	nop
/home/csy/func/inst/n1_lui.S:180
bfc0db4c:	3c04c080 	lui	a0,0xc080
bfc0db50:	3c08c08f 	lui	t0,0xc08f
bfc0db54:	00892021 	addu	a0,a0,t1
bfc0db58:	012a4821 	addu	t1,t1,t2
bfc0db5c:	150400c6 	bne	t0,a0,bfc0de78 <inst_error>
bfc0db60:	00000000 	nop
/home/csy/func/inst/n1_lui.S:181
bfc0db64:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:182
bfc0db68:	3c04e090 	lui	a0,0xe090
bfc0db6c:	3c08e090 	lui	t0,0xe090
bfc0db70:	00892021 	addu	a0,a0,t1
bfc0db74:	012a4821 	addu	t1,t1,t2
bfc0db78:	150400bf 	bne	t0,a0,bfc0de78 <inst_error>
bfc0db7c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:183
bfc0db80:	3c04e090 	lui	a0,0xe090
bfc0db84:	3c08e091 	lui	t0,0xe091
bfc0db88:	00892021 	addu	a0,a0,t1
bfc0db8c:	012a4821 	addu	t1,t1,t2
bfc0db90:	150400b9 	bne	t0,a0,bfc0de78 <inst_error>
bfc0db94:	00000000 	nop
/home/csy/func/inst/n1_lui.S:184
bfc0db98:	3c04e090 	lui	a0,0xe090
bfc0db9c:	3c08e092 	lui	t0,0xe092
bfc0dba0:	00892021 	addu	a0,a0,t1
bfc0dba4:	012a4821 	addu	t1,t1,t2
bfc0dba8:	150400b3 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dbac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:185
bfc0dbb0:	3c04e090 	lui	a0,0xe090
bfc0dbb4:	3c08e093 	lui	t0,0xe093
bfc0dbb8:	00892021 	addu	a0,a0,t1
bfc0dbbc:	012a4821 	addu	t1,t1,t2
bfc0dbc0:	150400ad 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dbc4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:186
bfc0dbc8:	3c04e090 	lui	a0,0xe090
bfc0dbcc:	3c08e094 	lui	t0,0xe094
bfc0dbd0:	00892021 	addu	a0,a0,t1
bfc0dbd4:	012a4821 	addu	t1,t1,t2
bfc0dbd8:	150400a7 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dbdc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:187
bfc0dbe0:	3c04e090 	lui	a0,0xe090
bfc0dbe4:	3c08e095 	lui	t0,0xe095
bfc0dbe8:	00892021 	addu	a0,a0,t1
bfc0dbec:	012a4821 	addu	t1,t1,t2
bfc0dbf0:	150400a1 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dbf4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:188
bfc0dbf8:	3c04e090 	lui	a0,0xe090
bfc0dbfc:	3c08e096 	lui	t0,0xe096
bfc0dc00:	00892021 	addu	a0,a0,t1
bfc0dc04:	012a4821 	addu	t1,t1,t2
bfc0dc08:	1504009b 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dc0c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:189
bfc0dc10:	3c04e090 	lui	a0,0xe090
bfc0dc14:	3c08e097 	lui	t0,0xe097
bfc0dc18:	00892021 	addu	a0,a0,t1
bfc0dc1c:	012a4821 	addu	t1,t1,t2
bfc0dc20:	15040095 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dc24:	00000000 	nop
/home/csy/func/inst/n1_lui.S:190
bfc0dc28:	3c04e090 	lui	a0,0xe090
bfc0dc2c:	3c08e098 	lui	t0,0xe098
bfc0dc30:	00892021 	addu	a0,a0,t1
bfc0dc34:	012a4821 	addu	t1,t1,t2
bfc0dc38:	1504008f 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dc3c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:191
bfc0dc40:	3c04e090 	lui	a0,0xe090
bfc0dc44:	3c08e099 	lui	t0,0xe099
bfc0dc48:	00892021 	addu	a0,a0,t1
bfc0dc4c:	012a4821 	addu	t1,t1,t2
bfc0dc50:	15040089 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dc54:	00000000 	nop
/home/csy/func/inst/n1_lui.S:192
bfc0dc58:	3c04e090 	lui	a0,0xe090
bfc0dc5c:	3c08e09a 	lui	t0,0xe09a
bfc0dc60:	00892021 	addu	a0,a0,t1
bfc0dc64:	012a4821 	addu	t1,t1,t2
bfc0dc68:	15040083 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dc6c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:193
bfc0dc70:	3c04e090 	lui	a0,0xe090
bfc0dc74:	3c08e09b 	lui	t0,0xe09b
bfc0dc78:	00892021 	addu	a0,a0,t1
bfc0dc7c:	012a4821 	addu	t1,t1,t2
bfc0dc80:	1504007d 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dc84:	00000000 	nop
/home/csy/func/inst/n1_lui.S:194
bfc0dc88:	3c04e090 	lui	a0,0xe090
bfc0dc8c:	3c08e09c 	lui	t0,0xe09c
bfc0dc90:	00892021 	addu	a0,a0,t1
bfc0dc94:	012a4821 	addu	t1,t1,t2
bfc0dc98:	15040077 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dc9c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:195
bfc0dca0:	3c04e090 	lui	a0,0xe090
bfc0dca4:	3c08e09d 	lui	t0,0xe09d
bfc0dca8:	00892021 	addu	a0,a0,t1
bfc0dcac:	012a4821 	addu	t1,t1,t2
bfc0dcb0:	15040071 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dcb4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:196
bfc0dcb8:	3c04e090 	lui	a0,0xe090
bfc0dcbc:	3c08e09e 	lui	t0,0xe09e
bfc0dcc0:	00892021 	addu	a0,a0,t1
bfc0dcc4:	012a4821 	addu	t1,t1,t2
bfc0dcc8:	1504006b 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dccc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:197
bfc0dcd0:	3c04e090 	lui	a0,0xe090
bfc0dcd4:	3c08e09f 	lui	t0,0xe09f
bfc0dcd8:	00892021 	addu	a0,a0,t1
bfc0dcdc:	012a4821 	addu	t1,t1,t2
bfc0dce0:	15040065 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dce4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:198
bfc0dce8:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:199
bfc0dcec:	3c04f0a0 	lui	a0,0xf0a0
bfc0dcf0:	3c08f0a0 	lui	t0,0xf0a0
bfc0dcf4:	00892021 	addu	a0,a0,t1
bfc0dcf8:	012a4821 	addu	t1,t1,t2
bfc0dcfc:	1504005e 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dd00:	00000000 	nop
/home/csy/func/inst/n1_lui.S:200
bfc0dd04:	3c04f0a0 	lui	a0,0xf0a0
bfc0dd08:	3c08f0a1 	lui	t0,0xf0a1
bfc0dd0c:	00892021 	addu	a0,a0,t1
bfc0dd10:	012a4821 	addu	t1,t1,t2
bfc0dd14:	15040058 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dd18:	00000000 	nop
/home/csy/func/inst/n1_lui.S:201
bfc0dd1c:	3c04f0a0 	lui	a0,0xf0a0
bfc0dd20:	3c08f0a2 	lui	t0,0xf0a2
bfc0dd24:	00892021 	addu	a0,a0,t1
bfc0dd28:	012a4821 	addu	t1,t1,t2
bfc0dd2c:	15040052 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dd30:	00000000 	nop
/home/csy/func/inst/n1_lui.S:202
bfc0dd34:	3c04f0a0 	lui	a0,0xf0a0
bfc0dd38:	3c08f0a3 	lui	t0,0xf0a3
bfc0dd3c:	00892021 	addu	a0,a0,t1
bfc0dd40:	012a4821 	addu	t1,t1,t2
bfc0dd44:	1504004c 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dd48:	00000000 	nop
/home/csy/func/inst/n1_lui.S:203
bfc0dd4c:	3c04f0a0 	lui	a0,0xf0a0
bfc0dd50:	3c08f0a4 	lui	t0,0xf0a4
bfc0dd54:	00892021 	addu	a0,a0,t1
bfc0dd58:	012a4821 	addu	t1,t1,t2
bfc0dd5c:	15040046 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dd60:	00000000 	nop
/home/csy/func/inst/n1_lui.S:204
bfc0dd64:	3c04f0a0 	lui	a0,0xf0a0
bfc0dd68:	3c08f0a5 	lui	t0,0xf0a5
bfc0dd6c:	00892021 	addu	a0,a0,t1
bfc0dd70:	012a4821 	addu	t1,t1,t2
bfc0dd74:	15040040 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dd78:	00000000 	nop
/home/csy/func/inst/n1_lui.S:205
bfc0dd7c:	3c04f0a0 	lui	a0,0xf0a0
bfc0dd80:	3c08f0a6 	lui	t0,0xf0a6
bfc0dd84:	00892021 	addu	a0,a0,t1
bfc0dd88:	012a4821 	addu	t1,t1,t2
bfc0dd8c:	1504003a 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dd90:	00000000 	nop
/home/csy/func/inst/n1_lui.S:206
bfc0dd94:	3c04f0a0 	lui	a0,0xf0a0
bfc0dd98:	3c08f0a7 	lui	t0,0xf0a7
bfc0dd9c:	00892021 	addu	a0,a0,t1
bfc0dda0:	012a4821 	addu	t1,t1,t2
bfc0dda4:	15040034 	bne	t0,a0,bfc0de78 <inst_error>
bfc0dda8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:207
bfc0ddac:	3c04f0a0 	lui	a0,0xf0a0
bfc0ddb0:	3c08f0a8 	lui	t0,0xf0a8
bfc0ddb4:	00892021 	addu	a0,a0,t1
bfc0ddb8:	012a4821 	addu	t1,t1,t2
bfc0ddbc:	1504002e 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ddc0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:208
bfc0ddc4:	3c04f0a0 	lui	a0,0xf0a0
bfc0ddc8:	3c08f0a9 	lui	t0,0xf0a9
bfc0ddcc:	00892021 	addu	a0,a0,t1
bfc0ddd0:	012a4821 	addu	t1,t1,t2
bfc0ddd4:	15040028 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ddd8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:209
bfc0dddc:	3c04f0a0 	lui	a0,0xf0a0
bfc0dde0:	3c08f0aa 	lui	t0,0xf0aa
bfc0dde4:	00892021 	addu	a0,a0,t1
bfc0dde8:	012a4821 	addu	t1,t1,t2
bfc0ddec:	15040022 	bne	t0,a0,bfc0de78 <inst_error>
bfc0ddf0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:210
bfc0ddf4:	3c04f0a0 	lui	a0,0xf0a0
bfc0ddf8:	3c08f0ab 	lui	t0,0xf0ab
bfc0ddfc:	00892021 	addu	a0,a0,t1
bfc0de00:	012a4821 	addu	t1,t1,t2
bfc0de04:	1504001c 	bne	t0,a0,bfc0de78 <inst_error>
bfc0de08:	00000000 	nop
/home/csy/func/inst/n1_lui.S:211
bfc0de0c:	3c04f0a0 	lui	a0,0xf0a0
bfc0de10:	3c08f0ac 	lui	t0,0xf0ac
bfc0de14:	00892021 	addu	a0,a0,t1
bfc0de18:	012a4821 	addu	t1,t1,t2
bfc0de1c:	15040016 	bne	t0,a0,bfc0de78 <inst_error>
bfc0de20:	00000000 	nop
/home/csy/func/inst/n1_lui.S:212
bfc0de24:	3c04f0a0 	lui	a0,0xf0a0
bfc0de28:	3c08f0ad 	lui	t0,0xf0ad
bfc0de2c:	00892021 	addu	a0,a0,t1
bfc0de30:	012a4821 	addu	t1,t1,t2
bfc0de34:	15040010 	bne	t0,a0,bfc0de78 <inst_error>
bfc0de38:	00000000 	nop
/home/csy/func/inst/n1_lui.S:213
bfc0de3c:	3c04f0a0 	lui	a0,0xf0a0
bfc0de40:	3c08f0ae 	lui	t0,0xf0ae
bfc0de44:	00892021 	addu	a0,a0,t1
bfc0de48:	012a4821 	addu	t1,t1,t2
bfc0de4c:	1504000a 	bne	t0,a0,bfc0de78 <inst_error>
bfc0de50:	00000000 	nop
/home/csy/func/inst/n1_lui.S:214
bfc0de54:	3c04f0a0 	lui	a0,0xf0a0
bfc0de58:	3c08f0af 	lui	t0,0xf0af
bfc0de5c:	00892021 	addu	a0,a0,t1
bfc0de60:	012a4821 	addu	t1,t1,t2
bfc0de64:	15040004 	bne	t0,a0,bfc0de78 <inst_error>
bfc0de68:	00000000 	nop
/home/csy/func/inst/n1_lui.S:216
bfc0de6c:	16400002 	bnez	s2,bfc0de78 <inst_error>
/home/csy/func/inst/n1_lui.S:217
bfc0de70:	00000000 	nop
/home/csy/func/inst/n1_lui.S:219
bfc0de74:	26730001 	addiu	s3,s3,1

bfc0de78 <inst_error>:
/home/csy/func/inst/n1_lui.S:222
bfc0de78:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n1_lui.S:223
bfc0de7c:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n1_lui.S:224
bfc0de80:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n1_lui.S:225
bfc0de84:	03e00008 	jr	ra
/home/csy/func/inst/n1_lui.S:226
bfc0de88:	00000000 	nop
bfc0de8c:	00000000 	nop

bfc0de90 <n62_lhu_test>:
/home/csy/func/inst/n62_lhu.S:7
bfc0de90:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n62_lhu.S:8
bfc0de94:	24120000 	li	s2,0
/home/csy/func/inst/n62_lhu.S:10
bfc0de98:	3c09c5e0 	lui	t1,0xc5e0
bfc0de9c:	3529fd00 	ori	t1,t1,0xfd00
bfc0dea0:	3c08800d 	lui	t0,0x800d
bfc0dea4:	35081dfc 	ori	t0,t0,0x1dfc
bfc0dea8:	3403c5e0 	li	v1,0xc5e0
bfc0deac:	3c010001 	lui	at,0x1
bfc0deb0:	00280821 	addu	at,at,t0
bfc0deb4:	ac29b55c 	sw	t1,-19108(at)
bfc0deb8:	25040004 	addiu	a0,t0,4
bfc0debc:	2505fff8 	addiu	a1,t0,-8
bfc0dec0:	3c010001 	lui	at,0x1
bfc0dec4:	00240821 	addu	at,at,a0
bfc0dec8:	ac24b55c 	sw	a0,-19108(at)
bfc0decc:	3c010001 	lui	at,0x1
bfc0ded0:	00250821 	addu	at,at,a1
bfc0ded4:	ac25b55c 	sw	a1,-19108(at)
bfc0ded8:	3c020001 	lui	v0,0x1
bfc0dedc:	00481021 	addu	v0,v0,t0
bfc0dee0:	9442b55e 	lhu	v0,-19106(v0)
bfc0dee4:	3c050001 	lui	a1,0x1
bfc0dee8:	00a42821 	addu	a1,a1,a0
bfc0deec:	8ca5b55c 	lw	a1,-19108(a1)
bfc0def0:	3c040001 	lui	a0,0x1
bfc0def4:	00852021 	addu	a0,a0,a1
bfc0def8:	8c84b55c 	lw	a0,-19108(a0)
bfc0defc:	3c060001 	lui	a2,0x1
bfc0df00:	00c53021 	addu	a2,a2,a1
bfc0df04:	8cc6b55c 	lw	a2,-19108(a2)
bfc0df08:	144307ba 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0df0c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:11
bfc0df10:	3c092587 	lui	t1,0x2587
bfc0df14:	352907b2 	ori	t1,t1,0x7b2
bfc0df18:	3c08800d 	lui	t0,0x800d
bfc0df1c:	3508bd8c 	ori	t0,t0,0xbd8c
bfc0df20:	240307b2 	li	v1,1970
bfc0df24:	ad091c34 	sw	t1,7220(t0)
bfc0df28:	25040004 	addiu	a0,t0,4
bfc0df2c:	2505fff8 	addiu	a1,t0,-8
bfc0df30:	ac841c34 	sw	a0,7220(a0)
bfc0df34:	aca51c34 	sw	a1,7220(a1)
bfc0df38:	95021c34 	lhu	v0,7220(t0)
bfc0df3c:	8c851c34 	lw	a1,7220(a0)
bfc0df40:	8ca41c34 	lw	a0,7220(a1)
bfc0df44:	8ca61c34 	lw	a2,7220(a1)
bfc0df48:	144307aa 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0df4c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:12
bfc0df50:	3c09263a 	lui	t1,0x263a
bfc0df54:	3529a087 	ori	t1,t1,0xa087
bfc0df58:	3c08800d 	lui	t0,0x800d
bfc0df5c:	35086920 	ori	t0,t0,0x6920
bfc0df60:	2403263a 	li	v1,9786
bfc0df64:	ad096418 	sw	t1,25624(t0)
bfc0df68:	25040004 	addiu	a0,t0,4
bfc0df6c:	2505fff8 	addiu	a1,t0,-8
bfc0df70:	ac846418 	sw	a0,25624(a0)
bfc0df74:	aca56418 	sw	a1,25624(a1)
bfc0df78:	9502641a 	lhu	v0,25626(t0)
bfc0df7c:	8c856418 	lw	a1,25624(a0)
bfc0df80:	8ca46418 	lw	a0,25624(a1)
bfc0df84:	8ca66418 	lw	a2,25624(a1)
bfc0df88:	1443079a 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0df8c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:13
bfc0df90:	3c09b5e1 	lui	t1,0xb5e1
bfc0df94:	35291b1a 	ori	t1,t1,0x1b1a
bfc0df98:	3c08800d 	lui	t0,0x800d
bfc0df9c:	35083a6c 	ori	t0,t0,0x3a6c
bfc0dfa0:	24031b1a 	li	v1,6938
bfc0dfa4:	ad095164 	sw	t1,20836(t0)
bfc0dfa8:	25040004 	addiu	a0,t0,4
bfc0dfac:	2505fff8 	addiu	a1,t0,-8
bfc0dfb0:	ac845164 	sw	a0,20836(a0)
bfc0dfb4:	aca55164 	sw	a1,20836(a1)
bfc0dfb8:	95025164 	lhu	v0,20836(t0)
bfc0dfbc:	8c855164 	lw	a1,20836(a0)
bfc0dfc0:	8ca45164 	lw	a0,20836(a1)
bfc0dfc4:	8ca65164 	lw	a2,20836(a1)
bfc0dfc8:	1443078a 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0dfcc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:14
bfc0dfd0:	3c09c972 	lui	t1,0xc972
bfc0dfd4:	3529f764 	ori	t1,t1,0xf764
bfc0dfd8:	3c08800d 	lui	t0,0x800d
bfc0dfdc:	350814a0 	ori	t0,t0,0x14a0
bfc0dfe0:	3403f764 	li	v1,0xf764
bfc0dfe4:	ad0902cc 	sw	t1,716(t0)
bfc0dfe8:	25040004 	addiu	a0,t0,4
bfc0dfec:	2505fff8 	addiu	a1,t0,-8
bfc0dff0:	ac8402cc 	sw	a0,716(a0)
bfc0dff4:	aca502cc 	sw	a1,716(a1)
bfc0dff8:	950202cc 	lhu	v0,716(t0)
bfc0dffc:	8c8502cc 	lw	a1,716(a0)
bfc0e000:	8ca402cc 	lw	a0,716(a1)
bfc0e004:	8ca602cc 	lw	a2,716(a1)
bfc0e008:	1443077a 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e00c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:15
bfc0e010:	3c099cc8 	lui	t1,0x9cc8
bfc0e014:	35294d98 	ori	t1,t1,0x4d98
bfc0e018:	3c08800d 	lui	t0,0x800d
bfc0e01c:	35080160 	ori	t0,t0,0x160
bfc0e020:	24034d98 	li	v1,19864
bfc0e024:	ad091268 	sw	t1,4712(t0)
bfc0e028:	25040004 	addiu	a0,t0,4
bfc0e02c:	2505fff8 	addiu	a1,t0,-8
bfc0e030:	ac841268 	sw	a0,4712(a0)
bfc0e034:	aca51268 	sw	a1,4712(a1)
bfc0e038:	95021268 	lhu	v0,4712(t0)
bfc0e03c:	8c851268 	lw	a1,4712(a0)
bfc0e040:	8ca41268 	lw	a0,4712(a1)
bfc0e044:	8ca61268 	lw	a2,4712(a1)
bfc0e048:	1443076a 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e04c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:16
bfc0e050:	3c0975e3 	lui	t1,0x75e3
bfc0e054:	352913d0 	ori	t1,t1,0x13d0
bfc0e058:	3c08800d 	lui	t0,0x800d
bfc0e05c:	3508993c 	ori	t0,t0,0x993c
bfc0e060:	240313d0 	li	v1,5072
bfc0e064:	ad09456c 	sw	t1,17772(t0)
bfc0e068:	25040004 	addiu	a0,t0,4
bfc0e06c:	2505fff8 	addiu	a1,t0,-8
bfc0e070:	ac84456c 	sw	a0,17772(a0)
bfc0e074:	aca5456c 	sw	a1,17772(a1)
bfc0e078:	9502456c 	lhu	v0,17772(t0)
bfc0e07c:	8c85456c 	lw	a1,17772(a0)
bfc0e080:	8ca4456c 	lw	a0,17772(a1)
bfc0e084:	8ca6456c 	lw	a2,17772(a1)
bfc0e088:	1443075a 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e08c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:17
bfc0e090:	3c096d19 	lui	t1,0x6d19
bfc0e094:	3529e13e 	ori	t1,t1,0xe13e
bfc0e098:	3c08800d 	lui	t0,0x800d
bfc0e09c:	3508b968 	ori	t0,t0,0xb968
bfc0e0a0:	24036d19 	li	v1,27929
bfc0e0a4:	ad0935dc 	sw	t1,13788(t0)
bfc0e0a8:	25040004 	addiu	a0,t0,4
bfc0e0ac:	2505fff8 	addiu	a1,t0,-8
bfc0e0b0:	ac8435dc 	sw	a0,13788(a0)
bfc0e0b4:	aca535dc 	sw	a1,13788(a1)
bfc0e0b8:	950235de 	lhu	v0,13790(t0)
bfc0e0bc:	8c8535dc 	lw	a1,13788(a0)
bfc0e0c0:	8ca435dc 	lw	a0,13788(a1)
bfc0e0c4:	8ca635dc 	lw	a2,13788(a1)
bfc0e0c8:	1443074a 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e0cc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:18
bfc0e0d0:	3c094a1e 	lui	t1,0x4a1e
bfc0e0d4:	3529fc6c 	ori	t1,t1,0xfc6c
bfc0e0d8:	3c08800d 	lui	t0,0x800d
bfc0e0dc:	35085a08 	ori	t0,t0,0x5a08
bfc0e0e0:	3403fc6c 	li	v1,0xfc6c
bfc0e0e4:	3c010001 	lui	at,0x1
bfc0e0e8:	00280821 	addu	at,at,t0
bfc0e0ec:	ac29a2f0 	sw	t1,-23824(at)
bfc0e0f0:	25040004 	addiu	a0,t0,4
bfc0e0f4:	2505fff8 	addiu	a1,t0,-8
bfc0e0f8:	3c010001 	lui	at,0x1
bfc0e0fc:	00240821 	addu	at,at,a0
bfc0e100:	ac24a2f0 	sw	a0,-23824(at)
bfc0e104:	3c010001 	lui	at,0x1
bfc0e108:	00250821 	addu	at,at,a1
bfc0e10c:	ac25a2f0 	sw	a1,-23824(at)
bfc0e110:	3c020001 	lui	v0,0x1
bfc0e114:	00481021 	addu	v0,v0,t0
bfc0e118:	9442a2f0 	lhu	v0,-23824(v0)
bfc0e11c:	3c050001 	lui	a1,0x1
bfc0e120:	00a42821 	addu	a1,a1,a0
bfc0e124:	8ca5a2f0 	lw	a1,-23824(a1)
bfc0e128:	3c040001 	lui	a0,0x1
bfc0e12c:	00852021 	addu	a0,a0,a1
bfc0e130:	8c84a2f0 	lw	a0,-23824(a0)
bfc0e134:	3c060001 	lui	a2,0x1
bfc0e138:	00c53021 	addu	a2,a2,a1
bfc0e13c:	8cc6a2f0 	lw	a2,-23824(a2)
bfc0e140:	1443072c 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e144:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:19
bfc0e148:	3c0932e3 	lui	t1,0x32e3
bfc0e14c:	352921c0 	ori	t1,t1,0x21c0
bfc0e150:	3c08800d 	lui	t0,0x800d
bfc0e154:	350841d4 	ori	t0,t0,0x41d4
bfc0e158:	240321c0 	li	v1,8640
bfc0e15c:	ad096844 	sw	t1,26692(t0)
bfc0e160:	25040004 	addiu	a0,t0,4
bfc0e164:	2505fff8 	addiu	a1,t0,-8
bfc0e168:	ac846844 	sw	a0,26692(a0)
bfc0e16c:	aca56844 	sw	a1,26692(a1)
bfc0e170:	95026844 	lhu	v0,26692(t0)
bfc0e174:	8c856844 	lw	a1,26692(a0)
bfc0e178:	8ca46844 	lw	a0,26692(a1)
bfc0e17c:	8ca66844 	lw	a2,26692(a1)
bfc0e180:	1443071c 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e184:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:20
bfc0e188:	3c097977 	lui	t1,0x7977
bfc0e18c:	3529fa5c 	ori	t1,t1,0xfa5c
bfc0e190:	3c08800d 	lui	t0,0x800d
bfc0e194:	35084e38 	ori	t0,t0,0x4e38
bfc0e198:	3403fa5c 	li	v1,0xfa5c
bfc0e19c:	ad093380 	sw	t1,13184(t0)
bfc0e1a0:	25040004 	addiu	a0,t0,4
bfc0e1a4:	2505fff8 	addiu	a1,t0,-8
bfc0e1a8:	ac843380 	sw	a0,13184(a0)
bfc0e1ac:	aca53380 	sw	a1,13184(a1)
bfc0e1b0:	95023380 	lhu	v0,13184(t0)
bfc0e1b4:	8c853380 	lw	a1,13184(a0)
bfc0e1b8:	8ca43380 	lw	a0,13184(a1)
bfc0e1bc:	8ca63380 	lw	a2,13184(a1)
bfc0e1c0:	1443070c 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e1c4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:21
bfc0e1c8:	3c094310 	lui	t1,0x4310
bfc0e1cc:	35296c00 	ori	t1,t1,0x6c00
bfc0e1d0:	3c08800d 	lui	t0,0x800d
bfc0e1d4:	35087bf8 	ori	t0,t0,0x7bf8
bfc0e1d8:	24034310 	li	v1,17168
bfc0e1dc:	ad0978c8 	sw	t1,30920(t0)
bfc0e1e0:	25040004 	addiu	a0,t0,4
bfc0e1e4:	2505fff8 	addiu	a1,t0,-8
bfc0e1e8:	ac8478c8 	sw	a0,30920(a0)
bfc0e1ec:	aca578c8 	sw	a1,30920(a1)
bfc0e1f0:	950278ca 	lhu	v0,30922(t0)
bfc0e1f4:	8c8578c8 	lw	a1,30920(a0)
bfc0e1f8:	8ca478c8 	lw	a0,30920(a1)
bfc0e1fc:	8ca678c8 	lw	a2,30920(a1)
bfc0e200:	144306fc 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e204:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:22
bfc0e208:	3c0943ab 	lui	t1,0x43ab
bfc0e20c:	3529d100 	ori	t1,t1,0xd100
bfc0e210:	3c08800d 	lui	t0,0x800d
bfc0e214:	35087718 	ori	t0,t0,0x7718
bfc0e218:	240343ab 	li	v1,17323
bfc0e21c:	ad096cd4 	sw	t1,27860(t0)
bfc0e220:	25040004 	addiu	a0,t0,4
bfc0e224:	2505fff8 	addiu	a1,t0,-8
bfc0e228:	ac846cd4 	sw	a0,27860(a0)
bfc0e22c:	aca56cd4 	sw	a1,27860(a1)
bfc0e230:	95026cd6 	lhu	v0,27862(t0)
bfc0e234:	8c856cd4 	lw	a1,27860(a0)
bfc0e238:	8ca46cd4 	lw	a0,27860(a1)
bfc0e23c:	8ca66cd4 	lw	a2,27860(a1)
bfc0e240:	144306ec 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e244:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:23
bfc0e248:	3c09dd8d 	lui	t1,0xdd8d
bfc0e24c:	3529afc0 	ori	t1,t1,0xafc0
bfc0e250:	3c08800d 	lui	t0,0x800d
bfc0e254:	350866c0 	ori	t0,t0,0x66c0
bfc0e258:	3403afc0 	li	v1,0xafc0
bfc0e25c:	ad095b08 	sw	t1,23304(t0)
bfc0e260:	25040004 	addiu	a0,t0,4
bfc0e264:	2505fff8 	addiu	a1,t0,-8
bfc0e268:	ac845b08 	sw	a0,23304(a0)
bfc0e26c:	aca55b08 	sw	a1,23304(a1)
bfc0e270:	95025b08 	lhu	v0,23304(t0)
bfc0e274:	8c855b08 	lw	a1,23304(a0)
bfc0e278:	8ca45b08 	lw	a0,23304(a1)
bfc0e27c:	8ca65b08 	lw	a2,23304(a1)
bfc0e280:	144306dc 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e284:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:24
bfc0e288:	3c0946df 	lui	t1,0x46df
bfc0e28c:	3529a15e 	ori	t1,t1,0xa15e
bfc0e290:	3c08800d 	lui	t0,0x800d
bfc0e294:	3508086c 	ori	t0,t0,0x86c
bfc0e298:	3403a15e 	li	v1,0xa15e
bfc0e29c:	ad095220 	sw	t1,21024(t0)
bfc0e2a0:	25040004 	addiu	a0,t0,4
bfc0e2a4:	2505fff8 	addiu	a1,t0,-8
bfc0e2a8:	ac845220 	sw	a0,21024(a0)
bfc0e2ac:	aca55220 	sw	a1,21024(a1)
bfc0e2b0:	95025220 	lhu	v0,21024(t0)
bfc0e2b4:	8c855220 	lw	a1,21024(a0)
bfc0e2b8:	8ca45220 	lw	a0,21024(a1)
bfc0e2bc:	8ca65220 	lw	a2,21024(a1)
bfc0e2c0:	144306cc 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e2c4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:25
bfc0e2c8:	3c095928 	lui	t1,0x5928
bfc0e2cc:	352910c0 	ori	t1,t1,0x10c0
bfc0e2d0:	3c08800d 	lui	t0,0x800d
bfc0e2d4:	35081438 	ori	t0,t0,0x1438
bfc0e2d8:	240310c0 	li	v1,4288
bfc0e2dc:	3c010001 	lui	at,0x1
bfc0e2e0:	00280821 	addu	at,at,t0
bfc0e2e4:	ac29e178 	sw	t1,-7816(at)
bfc0e2e8:	25040004 	addiu	a0,t0,4
bfc0e2ec:	2505fff8 	addiu	a1,t0,-8
bfc0e2f0:	3c010001 	lui	at,0x1
bfc0e2f4:	00240821 	addu	at,at,a0
bfc0e2f8:	ac24e178 	sw	a0,-7816(at)
bfc0e2fc:	3c010001 	lui	at,0x1
bfc0e300:	00250821 	addu	at,at,a1
bfc0e304:	ac25e178 	sw	a1,-7816(at)
bfc0e308:	3c020001 	lui	v0,0x1
bfc0e30c:	00481021 	addu	v0,v0,t0
bfc0e310:	9442e178 	lhu	v0,-7816(v0)
bfc0e314:	3c050001 	lui	a1,0x1
bfc0e318:	00a42821 	addu	a1,a1,a0
bfc0e31c:	8ca5e178 	lw	a1,-7816(a1)
bfc0e320:	3c040001 	lui	a0,0x1
bfc0e324:	00852021 	addu	a0,a0,a1
bfc0e328:	8c84e178 	lw	a0,-7816(a0)
bfc0e32c:	3c060001 	lui	a2,0x1
bfc0e330:	00c53021 	addu	a2,a2,a1
bfc0e334:	8cc6e178 	lw	a2,-7816(a2)
bfc0e338:	144306ae 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e33c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:26
bfc0e340:	3c09b8f4 	lui	t1,0xb8f4
bfc0e344:	3529f244 	ori	t1,t1,0xf244
bfc0e348:	3c08800d 	lui	t0,0x800d
bfc0e34c:	350830d0 	ori	t0,t0,0x30d0
bfc0e350:	3403f244 	li	v1,0xf244
bfc0e354:	ad091944 	sw	t1,6468(t0)
bfc0e358:	25040004 	addiu	a0,t0,4
bfc0e35c:	2505fff8 	addiu	a1,t0,-8
bfc0e360:	ac841944 	sw	a0,6468(a0)
bfc0e364:	aca51944 	sw	a1,6468(a1)
bfc0e368:	95021944 	lhu	v0,6468(t0)
bfc0e36c:	8c851944 	lw	a1,6468(a0)
bfc0e370:	8ca41944 	lw	a0,6468(a1)
bfc0e374:	8ca61944 	lw	a2,6468(a1)
bfc0e378:	1443069e 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e37c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:27
bfc0e380:	3c09a326 	lui	t1,0xa326
bfc0e384:	352905e0 	ori	t1,t1,0x5e0
bfc0e388:	3c08800d 	lui	t0,0x800d
bfc0e38c:	35086c44 	ori	t0,t0,0x6c44
bfc0e390:	240305e0 	li	v1,1504
bfc0e394:	ad090a88 	sw	t1,2696(t0)
bfc0e398:	25040004 	addiu	a0,t0,4
bfc0e39c:	2505fff8 	addiu	a1,t0,-8
bfc0e3a0:	ac840a88 	sw	a0,2696(a0)
bfc0e3a4:	aca50a88 	sw	a1,2696(a1)
bfc0e3a8:	95020a88 	lhu	v0,2696(t0)
bfc0e3ac:	8c850a88 	lw	a1,2696(a0)
bfc0e3b0:	8ca40a88 	lw	a0,2696(a1)
bfc0e3b4:	8ca60a88 	lw	a2,2696(a1)
bfc0e3b8:	1443068e 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e3bc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:28
bfc0e3c0:	3c09644a 	lui	t1,0x644a
bfc0e3c4:	3529b840 	ori	t1,t1,0xb840
bfc0e3c8:	3c08800d 	lui	t0,0x800d
bfc0e3cc:	35080200 	ori	t0,t0,0x200
bfc0e3d0:	2403644a 	li	v1,25674
bfc0e3d4:	3c010001 	lui	at,0x1
bfc0e3d8:	00280821 	addu	at,at,t0
bfc0e3dc:	ac29fbec 	sw	t1,-1044(at)
bfc0e3e0:	25040004 	addiu	a0,t0,4
bfc0e3e4:	2505fff8 	addiu	a1,t0,-8
bfc0e3e8:	3c010001 	lui	at,0x1
bfc0e3ec:	00240821 	addu	at,at,a0
bfc0e3f0:	ac24fbec 	sw	a0,-1044(at)
bfc0e3f4:	3c010001 	lui	at,0x1
bfc0e3f8:	00250821 	addu	at,at,a1
bfc0e3fc:	ac25fbec 	sw	a1,-1044(at)
bfc0e400:	3c020001 	lui	v0,0x1
bfc0e404:	00481021 	addu	v0,v0,t0
bfc0e408:	9442fbee 	lhu	v0,-1042(v0)
bfc0e40c:	3c050001 	lui	a1,0x1
bfc0e410:	00a42821 	addu	a1,a1,a0
bfc0e414:	8ca5fbec 	lw	a1,-1044(a1)
bfc0e418:	3c040001 	lui	a0,0x1
bfc0e41c:	00852021 	addu	a0,a0,a1
bfc0e420:	8c84fbec 	lw	a0,-1044(a0)
bfc0e424:	3c060001 	lui	a2,0x1
bfc0e428:	00c53021 	addu	a2,a2,a1
bfc0e42c:	8cc6fbec 	lw	a2,-1044(a2)
bfc0e430:	14430670 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e434:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:29
bfc0e438:	3c09c9b5 	lui	t1,0xc9b5
bfc0e43c:	3529aa10 	ori	t1,t1,0xaa10
bfc0e440:	3c08800d 	lui	t0,0x800d
bfc0e444:	35086b08 	ori	t0,t0,0x6b08
bfc0e448:	3403aa10 	li	v1,0xaa10
bfc0e44c:	ad092200 	sw	t1,8704(t0)
bfc0e450:	25040004 	addiu	a0,t0,4
bfc0e454:	2505fff8 	addiu	a1,t0,-8
bfc0e458:	ac842200 	sw	a0,8704(a0)
bfc0e45c:	aca52200 	sw	a1,8704(a1)
bfc0e460:	95022200 	lhu	v0,8704(t0)
bfc0e464:	8c852200 	lw	a1,8704(a0)
bfc0e468:	8ca42200 	lw	a0,8704(a1)
bfc0e46c:	8ca62200 	lw	a2,8704(a1)
bfc0e470:	14430660 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e474:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:30
bfc0e478:	3c0997bd 	lui	t1,0x97bd
bfc0e47c:	3529e956 	ori	t1,t1,0xe956
bfc0e480:	3c08800d 	lui	t0,0x800d
bfc0e484:	35085160 	ori	t0,t0,0x5160
bfc0e488:	3403e956 	li	v1,0xe956
bfc0e48c:	ad0919d0 	sw	t1,6608(t0)
bfc0e490:	25040004 	addiu	a0,t0,4
bfc0e494:	2505fff8 	addiu	a1,t0,-8
bfc0e498:	ac8419d0 	sw	a0,6608(a0)
bfc0e49c:	aca519d0 	sw	a1,6608(a1)
bfc0e4a0:	950219d0 	lhu	v0,6608(t0)
bfc0e4a4:	8c8519d0 	lw	a1,6608(a0)
bfc0e4a8:	8ca419d0 	lw	a0,6608(a1)
bfc0e4ac:	8ca619d0 	lw	a2,6608(a1)
bfc0e4b0:	14430650 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e4b4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:31
bfc0e4b8:	3c098915 	lui	t1,0x8915
bfc0e4bc:	3529acea 	ori	t1,t1,0xacea
bfc0e4c0:	3c08800d 	lui	t0,0x800d
bfc0e4c4:	35080210 	ori	t0,t0,0x210
bfc0e4c8:	34038915 	li	v1,0x8915
bfc0e4cc:	ad097a2c 	sw	t1,31276(t0)
bfc0e4d0:	25040004 	addiu	a0,t0,4
bfc0e4d4:	2505fff8 	addiu	a1,t0,-8
bfc0e4d8:	ac847a2c 	sw	a0,31276(a0)
bfc0e4dc:	aca57a2c 	sw	a1,31276(a1)
bfc0e4e0:	95027a2e 	lhu	v0,31278(t0)
bfc0e4e4:	8c857a2c 	lw	a1,31276(a0)
bfc0e4e8:	8ca47a2c 	lw	a0,31276(a1)
bfc0e4ec:	8ca67a2c 	lw	a2,31276(a1)
bfc0e4f0:	14430640 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e4f4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:32
bfc0e4f8:	3c097952 	lui	t1,0x7952
bfc0e4fc:	3529a818 	ori	t1,t1,0xa818
bfc0e500:	3c08800d 	lui	t0,0x800d
bfc0e504:	350835d4 	ori	t0,t0,0x35d4
bfc0e508:	24037952 	li	v1,31058
bfc0e50c:	3c010001 	lui	at,0x1
bfc0e510:	00280821 	addu	at,at,t0
bfc0e514:	ac29b39c 	sw	t1,-19556(at)
bfc0e518:	25040004 	addiu	a0,t0,4
bfc0e51c:	2505fff8 	addiu	a1,t0,-8
bfc0e520:	3c010001 	lui	at,0x1
bfc0e524:	00240821 	addu	at,at,a0
bfc0e528:	ac24b39c 	sw	a0,-19556(at)
bfc0e52c:	3c010001 	lui	at,0x1
bfc0e530:	00250821 	addu	at,at,a1
bfc0e534:	ac25b39c 	sw	a1,-19556(at)
bfc0e538:	3c020001 	lui	v0,0x1
bfc0e53c:	00481021 	addu	v0,v0,t0
bfc0e540:	9442b39e 	lhu	v0,-19554(v0)
bfc0e544:	3c050001 	lui	a1,0x1
bfc0e548:	00a42821 	addu	a1,a1,a0
bfc0e54c:	8ca5b39c 	lw	a1,-19556(a1)
bfc0e550:	3c040001 	lui	a0,0x1
bfc0e554:	00852021 	addu	a0,a0,a1
bfc0e558:	8c84b39c 	lw	a0,-19556(a0)
bfc0e55c:	3c060001 	lui	a2,0x1
bfc0e560:	00c53021 	addu	a2,a2,a1
bfc0e564:	8cc6b39c 	lw	a2,-19556(a2)
bfc0e568:	14430622 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e56c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:33
bfc0e570:	3c09457f 	lui	t1,0x457f
bfc0e574:	35290d3d 	ori	t1,t1,0xd3d
bfc0e578:	3c08800d 	lui	t0,0x800d
bfc0e57c:	35086044 	ori	t0,t0,0x6044
bfc0e580:	24030d3d 	li	v1,3389
bfc0e584:	ad0959e0 	sw	t1,23008(t0)
bfc0e588:	25040004 	addiu	a0,t0,4
bfc0e58c:	2505fff8 	addiu	a1,t0,-8
bfc0e590:	ac8459e0 	sw	a0,23008(a0)
bfc0e594:	aca559e0 	sw	a1,23008(a1)
bfc0e598:	950259e0 	lhu	v0,23008(t0)
bfc0e59c:	8c8559e0 	lw	a1,23008(a0)
bfc0e5a0:	8ca459e0 	lw	a0,23008(a1)
bfc0e5a4:	8ca659e0 	lw	a2,23008(a1)
bfc0e5a8:	14430612 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e5ac:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:34
bfc0e5b0:	3c0981a3 	lui	t1,0x81a3
bfc0e5b4:	3529f580 	ori	t1,t1,0xf580
bfc0e5b8:	3c08800d 	lui	t0,0x800d
bfc0e5bc:	35087588 	ori	t0,t0,0x7588
bfc0e5c0:	3403f580 	li	v1,0xf580
bfc0e5c4:	ad090ab4 	sw	t1,2740(t0)
bfc0e5c8:	25040004 	addiu	a0,t0,4
bfc0e5cc:	2505fff8 	addiu	a1,t0,-8
bfc0e5d0:	ac840ab4 	sw	a0,2740(a0)
bfc0e5d4:	aca50ab4 	sw	a1,2740(a1)
bfc0e5d8:	95020ab4 	lhu	v0,2740(t0)
bfc0e5dc:	8c850ab4 	lw	a1,2740(a0)
bfc0e5e0:	8ca40ab4 	lw	a0,2740(a1)
bfc0e5e4:	8ca60ab4 	lw	a2,2740(a1)
bfc0e5e8:	14430602 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e5ec:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:35
bfc0e5f0:	3c09e9fd 	lui	t1,0xe9fd
bfc0e5f4:	3529e394 	ori	t1,t1,0xe394
bfc0e5f8:	3c08800d 	lui	t0,0x800d
bfc0e5fc:	35081870 	ori	t0,t0,0x1870
bfc0e600:	3403e9fd 	li	v1,0xe9fd
bfc0e604:	ad097950 	sw	t1,31056(t0)
bfc0e608:	25040004 	addiu	a0,t0,4
bfc0e60c:	2505fff8 	addiu	a1,t0,-8
bfc0e610:	ac847950 	sw	a0,31056(a0)
bfc0e614:	aca57950 	sw	a1,31056(a1)
bfc0e618:	95027952 	lhu	v0,31058(t0)
bfc0e61c:	8c857950 	lw	a1,31056(a0)
bfc0e620:	8ca47950 	lw	a0,31056(a1)
bfc0e624:	8ca67950 	lw	a2,31056(a1)
bfc0e628:	144305f2 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e62c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:36
bfc0e630:	3c09bbf8 	lui	t1,0xbbf8
bfc0e634:	3529bfa0 	ori	t1,t1,0xbfa0
bfc0e638:	3c08800d 	lui	t0,0x800d
bfc0e63c:	35082c9c 	ori	t0,t0,0x2c9c
bfc0e640:	3403bbf8 	li	v1,0xbbf8
bfc0e644:	ad0966d8 	sw	t1,26328(t0)
bfc0e648:	25040004 	addiu	a0,t0,4
bfc0e64c:	2505fff8 	addiu	a1,t0,-8
bfc0e650:	ac8466d8 	sw	a0,26328(a0)
bfc0e654:	aca566d8 	sw	a1,26328(a1)
bfc0e658:	950266da 	lhu	v0,26330(t0)
bfc0e65c:	8c8566d8 	lw	a1,26328(a0)
bfc0e660:	8ca466d8 	lw	a0,26328(a1)
bfc0e664:	8ca666d8 	lw	a2,26328(a1)
bfc0e668:	144305e2 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e66c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:37
bfc0e670:	3c091db2 	lui	t1,0x1db2
bfc0e674:	35298a00 	ori	t1,t1,0x8a00
bfc0e678:	3c08800d 	lui	t0,0x800d
bfc0e67c:	3508ae60 	ori	t0,t0,0xae60
bfc0e680:	24031db2 	li	v1,7602
bfc0e684:	ad0947e8 	sw	t1,18408(t0)
bfc0e688:	25040004 	addiu	a0,t0,4
bfc0e68c:	2505fff8 	addiu	a1,t0,-8
bfc0e690:	ac8447e8 	sw	a0,18408(a0)
bfc0e694:	aca547e8 	sw	a1,18408(a1)
bfc0e698:	950247ea 	lhu	v0,18410(t0)
bfc0e69c:	8c8547e8 	lw	a1,18408(a0)
bfc0e6a0:	8ca447e8 	lw	a0,18408(a1)
bfc0e6a4:	8ca647e8 	lw	a2,18408(a1)
bfc0e6a8:	144305d2 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e6ac:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:38
bfc0e6b0:	3c095d6b 	lui	t1,0x5d6b
bfc0e6b4:	35290e7c 	ori	t1,t1,0xe7c
bfc0e6b8:	3c08800d 	lui	t0,0x800d
bfc0e6bc:	35080c48 	ori	t0,t0,0xc48
bfc0e6c0:	24035d6b 	li	v1,23915
bfc0e6c4:	ad0927bc 	sw	t1,10172(t0)
bfc0e6c8:	25040004 	addiu	a0,t0,4
bfc0e6cc:	2505fff8 	addiu	a1,t0,-8
bfc0e6d0:	ac8427bc 	sw	a0,10172(a0)
bfc0e6d4:	aca527bc 	sw	a1,10172(a1)
bfc0e6d8:	950227be 	lhu	v0,10174(t0)
bfc0e6dc:	8c8527bc 	lw	a1,10172(a0)
bfc0e6e0:	8ca427bc 	lw	a0,10172(a1)
bfc0e6e4:	8ca627bc 	lw	a2,10172(a1)
bfc0e6e8:	144305c2 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e6ec:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:39
bfc0e6f0:	3c0957fe 	lui	t1,0x57fe
bfc0e6f4:	35298940 	ori	t1,t1,0x8940
bfc0e6f8:	3c08800d 	lui	t0,0x800d
bfc0e6fc:	35082030 	ori	t0,t0,0x2030
bfc0e700:	34038940 	li	v1,0x8940
bfc0e704:	ad091770 	sw	t1,6000(t0)
bfc0e708:	25040004 	addiu	a0,t0,4
bfc0e70c:	2505fff8 	addiu	a1,t0,-8
bfc0e710:	ac841770 	sw	a0,6000(a0)
bfc0e714:	aca51770 	sw	a1,6000(a1)
bfc0e718:	95021770 	lhu	v0,6000(t0)
bfc0e71c:	8c851770 	lw	a1,6000(a0)
bfc0e720:	8ca41770 	lw	a0,6000(a1)
bfc0e724:	8ca61770 	lw	a2,6000(a1)
bfc0e728:	144305b2 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e72c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:40
bfc0e730:	3c098003 	lui	t1,0x8003
bfc0e734:	35290460 	ori	t1,t1,0x460
bfc0e738:	3c08800d 	lui	t0,0x800d
bfc0e73c:	35082878 	ori	t0,t0,0x2878
bfc0e740:	34038003 	li	v1,0x8003
bfc0e744:	ad093b90 	sw	t1,15248(t0)
bfc0e748:	25040004 	addiu	a0,t0,4
bfc0e74c:	2505fff8 	addiu	a1,t0,-8
bfc0e750:	ac843b90 	sw	a0,15248(a0)
bfc0e754:	aca53b90 	sw	a1,15248(a1)
bfc0e758:	95023b92 	lhu	v0,15250(t0)
bfc0e75c:	8c853b90 	lw	a1,15248(a0)
bfc0e760:	8ca43b90 	lw	a0,15248(a1)
bfc0e764:	8ca63b90 	lw	a2,15248(a1)
bfc0e768:	144305a2 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e76c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:41
bfc0e770:	3c099d11 	lui	t1,0x9d11
bfc0e774:	352955b8 	ori	t1,t1,0x55b8
bfc0e778:	3c08800d 	lui	t0,0x800d
bfc0e77c:	3508432c 	ori	t0,t0,0x432c
bfc0e780:	240355b8 	li	v1,21944
bfc0e784:	ad095da8 	sw	t1,23976(t0)
bfc0e788:	25040004 	addiu	a0,t0,4
bfc0e78c:	2505fff8 	addiu	a1,t0,-8
bfc0e790:	ac845da8 	sw	a0,23976(a0)
bfc0e794:	aca55da8 	sw	a1,23976(a1)
bfc0e798:	95025da8 	lhu	v0,23976(t0)
bfc0e79c:	8c855da8 	lw	a1,23976(a0)
bfc0e7a0:	8ca45da8 	lw	a0,23976(a1)
bfc0e7a4:	8ca65da8 	lw	a2,23976(a1)
bfc0e7a8:	14430592 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e7ac:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:42
bfc0e7b0:	3c0993af 	lui	t1,0x93af
bfc0e7b4:	35292e4a 	ori	t1,t1,0x2e4a
bfc0e7b8:	3c08800d 	lui	t0,0x800d
bfc0e7bc:	3508444c 	ori	t0,t0,0x444c
bfc0e7c0:	340393af 	li	v1,0x93af
bfc0e7c4:	ad094b78 	sw	t1,19320(t0)
bfc0e7c8:	25040004 	addiu	a0,t0,4
bfc0e7cc:	2505fff8 	addiu	a1,t0,-8
bfc0e7d0:	ac844b78 	sw	a0,19320(a0)
bfc0e7d4:	aca54b78 	sw	a1,19320(a1)
bfc0e7d8:	95024b7a 	lhu	v0,19322(t0)
bfc0e7dc:	8c854b78 	lw	a1,19320(a0)
bfc0e7e0:	8ca44b78 	lw	a0,19320(a1)
bfc0e7e4:	8ca64b78 	lw	a2,19320(a1)
bfc0e7e8:	14430582 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e7ec:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:43
bfc0e7f0:	3c0964e9 	lui	t1,0x64e9
bfc0e7f4:	35293438 	ori	t1,t1,0x3438
bfc0e7f8:	3c08800d 	lui	t0,0x800d
bfc0e7fc:	240364e9 	li	v1,25833
bfc0e800:	3c010001 	lui	at,0x1
bfc0e804:	00280821 	addu	at,at,t0
bfc0e808:	ac29cf1c 	sw	t1,-12516(at)
bfc0e80c:	25040004 	addiu	a0,t0,4
bfc0e810:	2505fff8 	addiu	a1,t0,-8
bfc0e814:	3c010001 	lui	at,0x1
bfc0e818:	00240821 	addu	at,at,a0
bfc0e81c:	ac24cf1c 	sw	a0,-12516(at)
bfc0e820:	3c010001 	lui	at,0x1
bfc0e824:	00250821 	addu	at,at,a1
bfc0e828:	ac25cf1c 	sw	a1,-12516(at)
bfc0e82c:	3c020001 	lui	v0,0x1
bfc0e830:	00481021 	addu	v0,v0,t0
bfc0e834:	9442cf1e 	lhu	v0,-12514(v0)
bfc0e838:	3c050001 	lui	a1,0x1
bfc0e83c:	00a42821 	addu	a1,a1,a0
bfc0e840:	8ca5cf1c 	lw	a1,-12516(a1)
bfc0e844:	3c040001 	lui	a0,0x1
bfc0e848:	00852021 	addu	a0,a0,a1
bfc0e84c:	8c84cf1c 	lw	a0,-12516(a0)
bfc0e850:	3c060001 	lui	a2,0x1
bfc0e854:	00c53021 	addu	a2,a2,a1
bfc0e858:	8cc6cf1c 	lw	a2,-12516(a2)
bfc0e85c:	14430565 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e860:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:44
bfc0e864:	3c09855e 	lui	t1,0x855e
bfc0e868:	35292566 	ori	t1,t1,0x2566
bfc0e86c:	3c08800d 	lui	t0,0x800d
bfc0e870:	3403855e 	li	v1,0x855e
bfc0e874:	ad095370 	sw	t1,21360(t0)
bfc0e878:	25040004 	addiu	a0,t0,4
bfc0e87c:	2505fff8 	addiu	a1,t0,-8
bfc0e880:	ac845370 	sw	a0,21360(a0)
bfc0e884:	aca55370 	sw	a1,21360(a1)
bfc0e888:	95025372 	lhu	v0,21362(t0)
bfc0e88c:	8c855370 	lw	a1,21360(a0)
bfc0e890:	8ca45370 	lw	a0,21360(a1)
bfc0e894:	8ca65370 	lw	a2,21360(a1)
bfc0e898:	14430556 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e89c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:45
bfc0e8a0:	3c0968e8 	lui	t1,0x68e8
bfc0e8a4:	3529f220 	ori	t1,t1,0xf220
bfc0e8a8:	3c08800d 	lui	t0,0x800d
bfc0e8ac:	3403f220 	li	v1,0xf220
bfc0e8b0:	ad092060 	sw	t1,8288(t0)
bfc0e8b4:	25040004 	addiu	a0,t0,4
bfc0e8b8:	2505fff8 	addiu	a1,t0,-8
bfc0e8bc:	ac842060 	sw	a0,8288(a0)
bfc0e8c0:	aca52060 	sw	a1,8288(a1)
bfc0e8c4:	95022060 	lhu	v0,8288(t0)
bfc0e8c8:	8c852060 	lw	a1,8288(a0)
bfc0e8cc:	8ca42060 	lw	a0,8288(a1)
bfc0e8d0:	8ca62060 	lw	a2,8288(a1)
bfc0e8d4:	14430547 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e8d8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:46
bfc0e8dc:	3c09155b 	lui	t1,0x155b
bfc0e8e0:	35296e78 	ori	t1,t1,0x6e78
bfc0e8e4:	3c08800d 	lui	t0,0x800d
bfc0e8e8:	24036e78 	li	v1,28280
bfc0e8ec:	ad094da8 	sw	t1,19880(t0)
bfc0e8f0:	25040004 	addiu	a0,t0,4
bfc0e8f4:	2505fff8 	addiu	a1,t0,-8
bfc0e8f8:	ac844da8 	sw	a0,19880(a0)
bfc0e8fc:	aca54da8 	sw	a1,19880(a1)
bfc0e900:	95024da8 	lhu	v0,19880(t0)
bfc0e904:	8c854da8 	lw	a1,19880(a0)
bfc0e908:	8ca44da8 	lw	a0,19880(a1)
bfc0e90c:	8ca64da8 	lw	a2,19880(a1)
bfc0e910:	14430538 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e914:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:47
bfc0e918:	3c09e171 	lui	t1,0xe171
bfc0e91c:	3529e238 	ori	t1,t1,0xe238
bfc0e920:	3c08800d 	lui	t0,0x800d
bfc0e924:	3403e171 	li	v1,0xe171
bfc0e928:	3c010001 	lui	at,0x1
bfc0e92c:	00280821 	addu	at,at,t0
bfc0e930:	ac29f290 	sw	t1,-3440(at)
bfc0e934:	25040004 	addiu	a0,t0,4
bfc0e938:	2505fff8 	addiu	a1,t0,-8
bfc0e93c:	3c010001 	lui	at,0x1
bfc0e940:	00240821 	addu	at,at,a0
bfc0e944:	ac24f290 	sw	a0,-3440(at)
bfc0e948:	3c010001 	lui	at,0x1
bfc0e94c:	00250821 	addu	at,at,a1
bfc0e950:	ac25f290 	sw	a1,-3440(at)
bfc0e954:	3c020001 	lui	v0,0x1
bfc0e958:	00481021 	addu	v0,v0,t0
bfc0e95c:	9442f292 	lhu	v0,-3438(v0)
bfc0e960:	3c050001 	lui	a1,0x1
bfc0e964:	00a42821 	addu	a1,a1,a0
bfc0e968:	8ca5f290 	lw	a1,-3440(a1)
bfc0e96c:	3c040001 	lui	a0,0x1
bfc0e970:	00852021 	addu	a0,a0,a1
bfc0e974:	8c84f290 	lw	a0,-3440(a0)
bfc0e978:	3c060001 	lui	a2,0x1
bfc0e97c:	00c53021 	addu	a2,a2,a1
bfc0e980:	8cc6f290 	lw	a2,-3440(a2)
bfc0e984:	1443051b 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e988:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:48
bfc0e98c:	3c092d81 	lui	t1,0x2d81
bfc0e990:	3529ef10 	ori	t1,t1,0xef10
bfc0e994:	3c08800d 	lui	t0,0x800d
bfc0e998:	3403ef10 	li	v1,0xef10
bfc0e99c:	3c010001 	lui	at,0x1
bfc0e9a0:	00280821 	addu	at,at,t0
bfc0e9a4:	ac29f260 	sw	t1,-3488(at)
bfc0e9a8:	25040004 	addiu	a0,t0,4
bfc0e9ac:	2505fff8 	addiu	a1,t0,-8
bfc0e9b0:	3c010001 	lui	at,0x1
bfc0e9b4:	00240821 	addu	at,at,a0
bfc0e9b8:	ac24f260 	sw	a0,-3488(at)
bfc0e9bc:	3c010001 	lui	at,0x1
bfc0e9c0:	00250821 	addu	at,at,a1
bfc0e9c4:	ac25f260 	sw	a1,-3488(at)
bfc0e9c8:	3c020001 	lui	v0,0x1
bfc0e9cc:	00481021 	addu	v0,v0,t0
bfc0e9d0:	9442f260 	lhu	v0,-3488(v0)
bfc0e9d4:	3c050001 	lui	a1,0x1
bfc0e9d8:	00a42821 	addu	a1,a1,a0
bfc0e9dc:	8ca5f260 	lw	a1,-3488(a1)
bfc0e9e0:	3c040001 	lui	a0,0x1
bfc0e9e4:	00852021 	addu	a0,a0,a1
bfc0e9e8:	8c84f260 	lw	a0,-3488(a0)
bfc0e9ec:	3c060001 	lui	a2,0x1
bfc0e9f0:	00c53021 	addu	a2,a2,a1
bfc0e9f4:	8cc6f260 	lw	a2,-3488(a2)
bfc0e9f8:	144304fe 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0e9fc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:49
bfc0ea00:	3c091824 	lui	t1,0x1824
bfc0ea04:	35293d74 	ori	t1,t1,0x3d74
bfc0ea08:	3c08800d 	lui	t0,0x800d
bfc0ea0c:	24033d74 	li	v1,15732
bfc0ea10:	3c010001 	lui	at,0x1
bfc0ea14:	00280821 	addu	at,at,t0
bfc0ea18:	ac29b988 	sw	t1,-18040(at)
bfc0ea1c:	25040004 	addiu	a0,t0,4
bfc0ea20:	2505fff8 	addiu	a1,t0,-8
bfc0ea24:	3c010001 	lui	at,0x1
bfc0ea28:	00240821 	addu	at,at,a0
bfc0ea2c:	ac24b988 	sw	a0,-18040(at)
bfc0ea30:	3c010001 	lui	at,0x1
bfc0ea34:	00250821 	addu	at,at,a1
bfc0ea38:	ac25b988 	sw	a1,-18040(at)
bfc0ea3c:	3c020001 	lui	v0,0x1
bfc0ea40:	00481021 	addu	v0,v0,t0
bfc0ea44:	9442b988 	lhu	v0,-18040(v0)
bfc0ea48:	3c050001 	lui	a1,0x1
bfc0ea4c:	00a42821 	addu	a1,a1,a0
bfc0ea50:	8ca5b988 	lw	a1,-18040(a1)
bfc0ea54:	3c040001 	lui	a0,0x1
bfc0ea58:	00852021 	addu	a0,a0,a1
bfc0ea5c:	8c84b988 	lw	a0,-18040(a0)
bfc0ea60:	3c060001 	lui	a2,0x1
bfc0ea64:	00c53021 	addu	a2,a2,a1
bfc0ea68:	8cc6b988 	lw	a2,-18040(a2)
bfc0ea6c:	144304e1 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0ea70:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:50
bfc0ea74:	3c09d9a5 	lui	t1,0xd9a5
bfc0ea78:	35293a80 	ori	t1,t1,0x3a80
bfc0ea7c:	3c08800d 	lui	t0,0x800d
bfc0ea80:	3403d9a5 	li	v1,0xd9a5
bfc0ea84:	ad097864 	sw	t1,30820(t0)
bfc0ea88:	25040004 	addiu	a0,t0,4
bfc0ea8c:	2505fff8 	addiu	a1,t0,-8
bfc0ea90:	ac847864 	sw	a0,30820(a0)
bfc0ea94:	aca57864 	sw	a1,30820(a1)
bfc0ea98:	95027866 	lhu	v0,30822(t0)
bfc0ea9c:	8c857864 	lw	a1,30820(a0)
bfc0eaa0:	8ca47864 	lw	a0,30820(a1)
bfc0eaa4:	8ca67864 	lw	a2,30820(a1)
bfc0eaa8:	144304d2 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0eaac:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:51
bfc0eab0:	3c09560c 	lui	t1,0x560c
bfc0eab4:	3529e2f8 	ori	t1,t1,0xe2f8
bfc0eab8:	3c08800d 	lui	t0,0x800d
bfc0eabc:	2403560c 	li	v1,22028
bfc0eac0:	3c010001 	lui	at,0x1
bfc0eac4:	00280821 	addu	at,at,t0
bfc0eac8:	ac29cec0 	sw	t1,-12608(at)
bfc0eacc:	25040004 	addiu	a0,t0,4
bfc0ead0:	2505fff8 	addiu	a1,t0,-8
bfc0ead4:	3c010001 	lui	at,0x1
bfc0ead8:	00240821 	addu	at,at,a0
bfc0eadc:	ac24cec0 	sw	a0,-12608(at)
bfc0eae0:	3c010001 	lui	at,0x1
bfc0eae4:	00250821 	addu	at,at,a1
bfc0eae8:	ac25cec0 	sw	a1,-12608(at)
bfc0eaec:	3c020001 	lui	v0,0x1
bfc0eaf0:	00481021 	addu	v0,v0,t0
bfc0eaf4:	9442cec2 	lhu	v0,-12606(v0)
bfc0eaf8:	3c050001 	lui	a1,0x1
bfc0eafc:	00a42821 	addu	a1,a1,a0
bfc0eb00:	8ca5cec0 	lw	a1,-12608(a1)
bfc0eb04:	3c040001 	lui	a0,0x1
bfc0eb08:	00852021 	addu	a0,a0,a1
bfc0eb0c:	8c84cec0 	lw	a0,-12608(a0)
bfc0eb10:	3c060001 	lui	a2,0x1
bfc0eb14:	00c53021 	addu	a2,a2,a1
bfc0eb18:	8cc6cec0 	lw	a2,-12608(a2)
bfc0eb1c:	144304b5 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0eb20:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:52
bfc0eb24:	3c095f5c 	lui	t1,0x5f5c
bfc0eb28:	35297885 	ori	t1,t1,0x7885
bfc0eb2c:	3c08800d 	lui	t0,0x800d
bfc0eb30:	24037885 	li	v1,30853
bfc0eb34:	ad096040 	sw	t1,24640(t0)
bfc0eb38:	25040004 	addiu	a0,t0,4
bfc0eb3c:	2505fff8 	addiu	a1,t0,-8
bfc0eb40:	ac846040 	sw	a0,24640(a0)
bfc0eb44:	aca56040 	sw	a1,24640(a1)
bfc0eb48:	95026040 	lhu	v0,24640(t0)
bfc0eb4c:	8c856040 	lw	a1,24640(a0)
bfc0eb50:	8ca46040 	lw	a0,24640(a1)
bfc0eb54:	8ca66040 	lw	a2,24640(a1)
bfc0eb58:	144304a6 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0eb5c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:53
bfc0eb60:	3c094490 	lui	t1,0x4490
bfc0eb64:	3529a4d6 	ori	t1,t1,0xa4d6
bfc0eb68:	3c08800d 	lui	t0,0x800d
bfc0eb6c:	3403a4d6 	li	v1,0xa4d6
bfc0eb70:	3c010001 	lui	at,0x1
bfc0eb74:	00280821 	addu	at,at,t0
bfc0eb78:	ac29b7dc 	sw	t1,-18468(at)
bfc0eb7c:	25040004 	addiu	a0,t0,4
bfc0eb80:	2505fff8 	addiu	a1,t0,-8
bfc0eb84:	3c010001 	lui	at,0x1
bfc0eb88:	00240821 	addu	at,at,a0
bfc0eb8c:	ac24b7dc 	sw	a0,-18468(at)
bfc0eb90:	3c010001 	lui	at,0x1
bfc0eb94:	00250821 	addu	at,at,a1
bfc0eb98:	ac25b7dc 	sw	a1,-18468(at)
bfc0eb9c:	3c020001 	lui	v0,0x1
bfc0eba0:	00481021 	addu	v0,v0,t0
bfc0eba4:	9442b7dc 	lhu	v0,-18468(v0)
bfc0eba8:	3c050001 	lui	a1,0x1
bfc0ebac:	00a42821 	addu	a1,a1,a0
bfc0ebb0:	8ca5b7dc 	lw	a1,-18468(a1)
bfc0ebb4:	3c040001 	lui	a0,0x1
bfc0ebb8:	00852021 	addu	a0,a0,a1
bfc0ebbc:	8c84b7dc 	lw	a0,-18468(a0)
bfc0ebc0:	3c060001 	lui	a2,0x1
bfc0ebc4:	00c53021 	addu	a2,a2,a1
bfc0ebc8:	8cc6b7dc 	lw	a2,-18468(a2)
bfc0ebcc:	14430489 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0ebd0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:54
bfc0ebd4:	3c093773 	lui	t1,0x3773
bfc0ebd8:	3529e260 	ori	t1,t1,0xe260
bfc0ebdc:	3c08800d 	lui	t0,0x800d
bfc0ebe0:	24033773 	li	v1,14195
bfc0ebe4:	3c010001 	lui	at,0x1
bfc0ebe8:	00280821 	addu	at,at,t0
bfc0ebec:	ac29e7ac 	sw	t1,-6228(at)
bfc0ebf0:	25040004 	addiu	a0,t0,4
bfc0ebf4:	2505fff8 	addiu	a1,t0,-8
bfc0ebf8:	3c010001 	lui	at,0x1
bfc0ebfc:	00240821 	addu	at,at,a0
bfc0ec00:	ac24e7ac 	sw	a0,-6228(at)
bfc0ec04:	3c010001 	lui	at,0x1
bfc0ec08:	00250821 	addu	at,at,a1
bfc0ec0c:	ac25e7ac 	sw	a1,-6228(at)
bfc0ec10:	3c020001 	lui	v0,0x1
bfc0ec14:	00481021 	addu	v0,v0,t0
bfc0ec18:	9442e7ae 	lhu	v0,-6226(v0)
bfc0ec1c:	3c050001 	lui	a1,0x1
bfc0ec20:	00a42821 	addu	a1,a1,a0
bfc0ec24:	8ca5e7ac 	lw	a1,-6228(a1)
bfc0ec28:	3c040001 	lui	a0,0x1
bfc0ec2c:	00852021 	addu	a0,a0,a1
bfc0ec30:	8c84e7ac 	lw	a0,-6228(a0)
bfc0ec34:	3c060001 	lui	a2,0x1
bfc0ec38:	00c53021 	addu	a2,a2,a1
bfc0ec3c:	8cc6e7ac 	lw	a2,-6228(a2)
bfc0ec40:	1443046c 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0ec44:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:55
bfc0ec48:	3c09c030 	lui	t1,0xc030
bfc0ec4c:	3529663c 	ori	t1,t1,0x663c
bfc0ec50:	3c08800d 	lui	t0,0x800d
bfc0ec54:	2403663c 	li	v1,26172
bfc0ec58:	3c010001 	lui	at,0x1
bfc0ec5c:	00280821 	addu	at,at,t0
bfc0ec60:	ac2987c0 	sw	t1,-30784(at)
bfc0ec64:	25040004 	addiu	a0,t0,4
bfc0ec68:	2505fff8 	addiu	a1,t0,-8
bfc0ec6c:	3c010001 	lui	at,0x1
bfc0ec70:	00240821 	addu	at,at,a0
bfc0ec74:	ac2487c0 	sw	a0,-30784(at)
bfc0ec78:	3c010001 	lui	at,0x1
bfc0ec7c:	00250821 	addu	at,at,a1
bfc0ec80:	ac2587c0 	sw	a1,-30784(at)
bfc0ec84:	3c020001 	lui	v0,0x1
bfc0ec88:	00481021 	addu	v0,v0,t0
bfc0ec8c:	944287c0 	lhu	v0,-30784(v0)
bfc0ec90:	3c050001 	lui	a1,0x1
bfc0ec94:	00a42821 	addu	a1,a1,a0
bfc0ec98:	8ca587c0 	lw	a1,-30784(a1)
bfc0ec9c:	3c040001 	lui	a0,0x1
bfc0eca0:	00852021 	addu	a0,a0,a1
bfc0eca4:	8c8487c0 	lw	a0,-30784(a0)
bfc0eca8:	3c060001 	lui	a2,0x1
bfc0ecac:	00c53021 	addu	a2,a2,a1
bfc0ecb0:	8cc687c0 	lw	a2,-30784(a2)
bfc0ecb4:	1443044f 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0ecb8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:56
bfc0ecbc:	3c091ae3 	lui	t1,0x1ae3
bfc0ecc0:	35293eb0 	ori	t1,t1,0x3eb0
bfc0ecc4:	3c08800d 	lui	t0,0x800d
bfc0ecc8:	24033eb0 	li	v1,16048
bfc0eccc:	3c010001 	lui	at,0x1
bfc0ecd0:	00280821 	addu	at,at,t0
bfc0ecd4:	ac29fad8 	sw	t1,-1320(at)
bfc0ecd8:	25040004 	addiu	a0,t0,4
bfc0ecdc:	2505fff8 	addiu	a1,t0,-8
bfc0ece0:	3c010001 	lui	at,0x1
bfc0ece4:	00240821 	addu	at,at,a0
bfc0ece8:	ac24fad8 	sw	a0,-1320(at)
bfc0ecec:	3c010001 	lui	at,0x1
bfc0ecf0:	00250821 	addu	at,at,a1
bfc0ecf4:	ac25fad8 	sw	a1,-1320(at)
bfc0ecf8:	3c020001 	lui	v0,0x1
bfc0ecfc:	00481021 	addu	v0,v0,t0
bfc0ed00:	9442fad8 	lhu	v0,-1320(v0)
bfc0ed04:	3c050001 	lui	a1,0x1
bfc0ed08:	00a42821 	addu	a1,a1,a0
bfc0ed0c:	8ca5fad8 	lw	a1,-1320(a1)
bfc0ed10:	3c040001 	lui	a0,0x1
bfc0ed14:	00852021 	addu	a0,a0,a1
bfc0ed18:	8c84fad8 	lw	a0,-1320(a0)
bfc0ed1c:	3c060001 	lui	a2,0x1
bfc0ed20:	00c53021 	addu	a2,a2,a1
bfc0ed24:	8cc6fad8 	lw	a2,-1320(a2)
bfc0ed28:	14430432 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0ed2c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:57
bfc0ed30:	3c0998b6 	lui	t1,0x98b6
bfc0ed34:	3529446a 	ori	t1,t1,0x446a
bfc0ed38:	3c08800d 	lui	t0,0x800d
bfc0ed3c:	2403446a 	li	v1,17514
bfc0ed40:	ad094a54 	sw	t1,19028(t0)
bfc0ed44:	25040004 	addiu	a0,t0,4
bfc0ed48:	2505fff8 	addiu	a1,t0,-8
bfc0ed4c:	ac844a54 	sw	a0,19028(a0)
bfc0ed50:	aca54a54 	sw	a1,19028(a1)
bfc0ed54:	95024a54 	lhu	v0,19028(t0)
bfc0ed58:	8c854a54 	lw	a1,19028(a0)
bfc0ed5c:	8ca44a54 	lw	a0,19028(a1)
bfc0ed60:	8ca64a54 	lw	a2,19028(a1)
bfc0ed64:	14430423 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0ed68:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:58
bfc0ed6c:	3c097140 	lui	t1,0x7140
bfc0ed70:	35298da5 	ori	t1,t1,0x8da5
bfc0ed74:	3c08800d 	lui	t0,0x800d
bfc0ed78:	24037140 	li	v1,28992
bfc0ed7c:	ad091550 	sw	t1,5456(t0)
bfc0ed80:	25040004 	addiu	a0,t0,4
bfc0ed84:	2505fff8 	addiu	a1,t0,-8
bfc0ed88:	ac841550 	sw	a0,5456(a0)
bfc0ed8c:	aca51550 	sw	a1,5456(a1)
bfc0ed90:	95021552 	lhu	v0,5458(t0)
bfc0ed94:	8c851550 	lw	a1,5456(a0)
bfc0ed98:	8ca41550 	lw	a0,5456(a1)
bfc0ed9c:	8ca61550 	lw	a2,5456(a1)
bfc0eda0:	14430414 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0eda4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:59
bfc0eda8:	3c09f770 	lui	t1,0xf770
bfc0edac:	3529e08c 	ori	t1,t1,0xe08c
bfc0edb0:	3c08800d 	lui	t0,0x800d
bfc0edb4:	3403e08c 	li	v1,0xe08c
bfc0edb8:	ad094f5c 	sw	t1,20316(t0)
bfc0edbc:	25040004 	addiu	a0,t0,4
bfc0edc0:	2505fff8 	addiu	a1,t0,-8
bfc0edc4:	ac844f5c 	sw	a0,20316(a0)
bfc0edc8:	aca54f5c 	sw	a1,20316(a1)
bfc0edcc:	95024f5c 	lhu	v0,20316(t0)
bfc0edd0:	8c854f5c 	lw	a1,20316(a0)
bfc0edd4:	8ca44f5c 	lw	a0,20316(a1)
bfc0edd8:	8ca64f5c 	lw	a2,20316(a1)
bfc0eddc:	14430405 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0ede0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:60
bfc0ede4:	3c0985d9 	lui	t1,0x85d9
bfc0ede8:	3529af84 	ori	t1,t1,0xaf84
bfc0edec:	3c08800d 	lui	t0,0x800d
bfc0edf0:	340385d9 	li	v1,0x85d9
bfc0edf4:	3c010001 	lui	at,0x1
bfc0edf8:	00280821 	addu	at,at,t0
bfc0edfc:	ac2998ec 	sw	t1,-26388(at)
bfc0ee00:	25040004 	addiu	a0,t0,4
bfc0ee04:	2505fff8 	addiu	a1,t0,-8
bfc0ee08:	3c010001 	lui	at,0x1
bfc0ee0c:	00240821 	addu	at,at,a0
bfc0ee10:	ac2498ec 	sw	a0,-26388(at)
bfc0ee14:	3c010001 	lui	at,0x1
bfc0ee18:	00250821 	addu	at,at,a1
bfc0ee1c:	ac2598ec 	sw	a1,-26388(at)
bfc0ee20:	3c020001 	lui	v0,0x1
bfc0ee24:	00481021 	addu	v0,v0,t0
bfc0ee28:	944298ee 	lhu	v0,-26386(v0)
bfc0ee2c:	3c050001 	lui	a1,0x1
bfc0ee30:	00a42821 	addu	a1,a1,a0
bfc0ee34:	8ca598ec 	lw	a1,-26388(a1)
bfc0ee38:	3c040001 	lui	a0,0x1
bfc0ee3c:	00852021 	addu	a0,a0,a1
bfc0ee40:	8c8498ec 	lw	a0,-26388(a0)
bfc0ee44:	3c060001 	lui	a2,0x1
bfc0ee48:	00c53021 	addu	a2,a2,a1
bfc0ee4c:	8cc698ec 	lw	a2,-26388(a2)
bfc0ee50:	144303e8 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0ee54:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:61
bfc0ee58:	3c096c75 	lui	t1,0x6c75
bfc0ee5c:	35291620 	ori	t1,t1,0x1620
bfc0ee60:	3c08800d 	lui	t0,0x800d
bfc0ee64:	24031620 	li	v1,5664
bfc0ee68:	ad094540 	sw	t1,17728(t0)
bfc0ee6c:	25040004 	addiu	a0,t0,4
bfc0ee70:	2505fff8 	addiu	a1,t0,-8
bfc0ee74:	ac844540 	sw	a0,17728(a0)
bfc0ee78:	aca54540 	sw	a1,17728(a1)
bfc0ee7c:	95024540 	lhu	v0,17728(t0)
bfc0ee80:	8c854540 	lw	a1,17728(a0)
bfc0ee84:	8ca44540 	lw	a0,17728(a1)
bfc0ee88:	8ca64540 	lw	a2,17728(a1)
bfc0ee8c:	144303d9 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0ee90:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:62
bfc0ee94:	3c093ee7 	lui	t1,0x3ee7
bfc0ee98:	3529efac 	ori	t1,t1,0xefac
bfc0ee9c:	3c08800d 	lui	t0,0x800d
bfc0eea0:	3403efac 	li	v1,0xefac
bfc0eea4:	ad092f20 	sw	t1,12064(t0)
bfc0eea8:	25040004 	addiu	a0,t0,4
bfc0eeac:	2505fff8 	addiu	a1,t0,-8
bfc0eeb0:	ac842f20 	sw	a0,12064(a0)
bfc0eeb4:	aca52f20 	sw	a1,12064(a1)
bfc0eeb8:	95022f20 	lhu	v0,12064(t0)
bfc0eebc:	8c852f20 	lw	a1,12064(a0)
bfc0eec0:	8ca42f20 	lw	a0,12064(a1)
bfc0eec4:	8ca62f20 	lw	a2,12064(a1)
bfc0eec8:	144303ca 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0eecc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:63
bfc0eed0:	3c094ff9 	lui	t1,0x4ff9
bfc0eed4:	352944b5 	ori	t1,t1,0x44b5
bfc0eed8:	3c08800d 	lui	t0,0x800d
bfc0eedc:	24034ff9 	li	v1,20473
bfc0eee0:	3c010001 	lui	at,0x1
bfc0eee4:	00280821 	addu	at,at,t0
bfc0eee8:	ac29e73c 	sw	t1,-6340(at)
bfc0eeec:	25040004 	addiu	a0,t0,4
bfc0eef0:	2505fff8 	addiu	a1,t0,-8
bfc0eef4:	3c010001 	lui	at,0x1
bfc0eef8:	00240821 	addu	at,at,a0
bfc0eefc:	ac24e73c 	sw	a0,-6340(at)
bfc0ef00:	3c010001 	lui	at,0x1
bfc0ef04:	00250821 	addu	at,at,a1
bfc0ef08:	ac25e73c 	sw	a1,-6340(at)
bfc0ef0c:	3c020001 	lui	v0,0x1
bfc0ef10:	00481021 	addu	v0,v0,t0
bfc0ef14:	9442e73e 	lhu	v0,-6338(v0)
bfc0ef18:	3c050001 	lui	a1,0x1
bfc0ef1c:	00a42821 	addu	a1,a1,a0
bfc0ef20:	8ca5e73c 	lw	a1,-6340(a1)
bfc0ef24:	3c040001 	lui	a0,0x1
bfc0ef28:	00852021 	addu	a0,a0,a1
bfc0ef2c:	8c84e73c 	lw	a0,-6340(a0)
bfc0ef30:	3c060001 	lui	a2,0x1
bfc0ef34:	00c53021 	addu	a2,a2,a1
bfc0ef38:	8cc6e73c 	lw	a2,-6340(a2)
bfc0ef3c:	144303ad 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0ef40:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:64
bfc0ef44:	3c0917f3 	lui	t1,0x17f3
bfc0ef48:	3529a4e0 	ori	t1,t1,0xa4e0
bfc0ef4c:	3c08800d 	lui	t0,0x800d
bfc0ef50:	3403a4e0 	li	v1,0xa4e0
bfc0ef54:	ad096cfc 	sw	t1,27900(t0)
bfc0ef58:	25040004 	addiu	a0,t0,4
bfc0ef5c:	2505fff8 	addiu	a1,t0,-8
bfc0ef60:	ac846cfc 	sw	a0,27900(a0)
bfc0ef64:	aca56cfc 	sw	a1,27900(a1)
bfc0ef68:	95026cfc 	lhu	v0,27900(t0)
bfc0ef6c:	8c856cfc 	lw	a1,27900(a0)
bfc0ef70:	8ca46cfc 	lw	a0,27900(a1)
bfc0ef74:	8ca66cfc 	lw	a2,27900(a1)
bfc0ef78:	1443039e 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0ef7c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:65
bfc0ef80:	3c09ff75 	lui	t1,0xff75
bfc0ef84:	352914e0 	ori	t1,t1,0x14e0
bfc0ef88:	3c08800d 	lui	t0,0x800d
bfc0ef8c:	3403ff75 	li	v1,0xff75
bfc0ef90:	ad094460 	sw	t1,17504(t0)
bfc0ef94:	25040004 	addiu	a0,t0,4
bfc0ef98:	2505fff8 	addiu	a1,t0,-8
bfc0ef9c:	ac844460 	sw	a0,17504(a0)
bfc0efa0:	aca54460 	sw	a1,17504(a1)
bfc0efa4:	95024462 	lhu	v0,17506(t0)
bfc0efa8:	8c854460 	lw	a1,17504(a0)
bfc0efac:	8ca44460 	lw	a0,17504(a1)
bfc0efb0:	8ca64460 	lw	a2,17504(a1)
bfc0efb4:	1443038f 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0efb8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:66
bfc0efbc:	3c09343a 	lui	t1,0x343a
bfc0efc0:	35293fd0 	ori	t1,t1,0x3fd0
bfc0efc4:	3c08800d 	lui	t0,0x800d
bfc0efc8:	24033fd0 	li	v1,16336
bfc0efcc:	ad094b00 	sw	t1,19200(t0)
bfc0efd0:	25040004 	addiu	a0,t0,4
bfc0efd4:	2505fff8 	addiu	a1,t0,-8
bfc0efd8:	ac844b00 	sw	a0,19200(a0)
bfc0efdc:	aca54b00 	sw	a1,19200(a1)
bfc0efe0:	95024b00 	lhu	v0,19200(t0)
bfc0efe4:	8c854b00 	lw	a1,19200(a0)
bfc0efe8:	8ca44b00 	lw	a0,19200(a1)
bfc0efec:	8ca64b00 	lw	a2,19200(a1)
bfc0eff0:	14430380 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0eff4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:67
bfc0eff8:	3c09dde8 	lui	t1,0xdde8
bfc0effc:	35294990 	ori	t1,t1,0x4990
bfc0f000:	3c08800d 	lui	t0,0x800d
bfc0f004:	3403dde8 	li	v1,0xdde8
bfc0f008:	3c010001 	lui	at,0x1
bfc0f00c:	00280821 	addu	at,at,t0
bfc0f010:	ac29dcd4 	sw	t1,-9004(at)
bfc0f014:	25040004 	addiu	a0,t0,4
bfc0f018:	2505fff8 	addiu	a1,t0,-8
bfc0f01c:	3c010001 	lui	at,0x1
bfc0f020:	00240821 	addu	at,at,a0
bfc0f024:	ac24dcd4 	sw	a0,-9004(at)
bfc0f028:	3c010001 	lui	at,0x1
bfc0f02c:	00250821 	addu	at,at,a1
bfc0f030:	ac25dcd4 	sw	a1,-9004(at)
bfc0f034:	3c020001 	lui	v0,0x1
bfc0f038:	00481021 	addu	v0,v0,t0
bfc0f03c:	9442dcd6 	lhu	v0,-9002(v0)
bfc0f040:	3c050001 	lui	a1,0x1
bfc0f044:	00a42821 	addu	a1,a1,a0
bfc0f048:	8ca5dcd4 	lw	a1,-9004(a1)
bfc0f04c:	3c040001 	lui	a0,0x1
bfc0f050:	00852021 	addu	a0,a0,a1
bfc0f054:	8c84dcd4 	lw	a0,-9004(a0)
bfc0f058:	3c060001 	lui	a2,0x1
bfc0f05c:	00c53021 	addu	a2,a2,a1
bfc0f060:	8cc6dcd4 	lw	a2,-9004(a2)
bfc0f064:	14430363 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f068:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:68
bfc0f06c:	3c0963ea 	lui	t1,0x63ea
bfc0f070:	3529e1b4 	ori	t1,t1,0xe1b4
bfc0f074:	3c08800d 	lui	t0,0x800d
bfc0f078:	3403e1b4 	li	v1,0xe1b4
bfc0f07c:	3c010001 	lui	at,0x1
bfc0f080:	00280821 	addu	at,at,t0
bfc0f084:	ac29fc1c 	sw	t1,-996(at)
bfc0f088:	25040004 	addiu	a0,t0,4
bfc0f08c:	2505fff8 	addiu	a1,t0,-8
bfc0f090:	3c010001 	lui	at,0x1
bfc0f094:	00240821 	addu	at,at,a0
bfc0f098:	ac24fc1c 	sw	a0,-996(at)
bfc0f09c:	3c010001 	lui	at,0x1
bfc0f0a0:	00250821 	addu	at,at,a1
bfc0f0a4:	ac25fc1c 	sw	a1,-996(at)
bfc0f0a8:	3c020001 	lui	v0,0x1
bfc0f0ac:	00481021 	addu	v0,v0,t0
bfc0f0b0:	9442fc1c 	lhu	v0,-996(v0)
bfc0f0b4:	3c050001 	lui	a1,0x1
bfc0f0b8:	00a42821 	addu	a1,a1,a0
bfc0f0bc:	8ca5fc1c 	lw	a1,-996(a1)
bfc0f0c0:	3c040001 	lui	a0,0x1
bfc0f0c4:	00852021 	addu	a0,a0,a1
bfc0f0c8:	8c84fc1c 	lw	a0,-996(a0)
bfc0f0cc:	3c060001 	lui	a2,0x1
bfc0f0d0:	00c53021 	addu	a2,a2,a1
bfc0f0d4:	8cc6fc1c 	lw	a2,-996(a2)
bfc0f0d8:	14430346 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f0dc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:69
bfc0f0e0:	3c09b899 	lui	t1,0xb899
bfc0f0e4:	352937ac 	ori	t1,t1,0x37ac
bfc0f0e8:	3c08800d 	lui	t0,0x800d
bfc0f0ec:	240337ac 	li	v1,14252
bfc0f0f0:	ad090f28 	sw	t1,3880(t0)
bfc0f0f4:	25040004 	addiu	a0,t0,4
bfc0f0f8:	2505fff8 	addiu	a1,t0,-8
bfc0f0fc:	ac840f28 	sw	a0,3880(a0)
bfc0f100:	aca50f28 	sw	a1,3880(a1)
bfc0f104:	95020f28 	lhu	v0,3880(t0)
bfc0f108:	8c850f28 	lw	a1,3880(a0)
bfc0f10c:	8ca40f28 	lw	a0,3880(a1)
bfc0f110:	8ca60f28 	lw	a2,3880(a1)
bfc0f114:	14430337 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f118:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:70
bfc0f11c:	3c095b12 	lui	t1,0x5b12
bfc0f120:	3529d590 	ori	t1,t1,0xd590
bfc0f124:	3c08800d 	lui	t0,0x800d
bfc0f128:	24035b12 	li	v1,23314
bfc0f12c:	ad0906cc 	sw	t1,1740(t0)
bfc0f130:	25040004 	addiu	a0,t0,4
bfc0f134:	2505fff8 	addiu	a1,t0,-8
bfc0f138:	ac8406cc 	sw	a0,1740(a0)
bfc0f13c:	aca506cc 	sw	a1,1740(a1)
bfc0f140:	950206ce 	lhu	v0,1742(t0)
bfc0f144:	8c8506cc 	lw	a1,1740(a0)
bfc0f148:	8ca406cc 	lw	a0,1740(a1)
bfc0f14c:	8ca606cc 	lw	a2,1740(a1)
bfc0f150:	14430328 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f154:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:71
bfc0f158:	3c099246 	lui	t1,0x9246
bfc0f15c:	35299cd8 	ori	t1,t1,0x9cd8
bfc0f160:	3c08800d 	lui	t0,0x800d
bfc0f164:	34039cd8 	li	v1,0x9cd8
bfc0f168:	3c010001 	lui	at,0x1
bfc0f16c:	00280821 	addu	at,at,t0
bfc0f170:	ac29cde0 	sw	t1,-12832(at)
bfc0f174:	25040004 	addiu	a0,t0,4
bfc0f178:	2505fff8 	addiu	a1,t0,-8
bfc0f17c:	3c010001 	lui	at,0x1
bfc0f180:	00240821 	addu	at,at,a0
bfc0f184:	ac24cde0 	sw	a0,-12832(at)
bfc0f188:	3c010001 	lui	at,0x1
bfc0f18c:	00250821 	addu	at,at,a1
bfc0f190:	ac25cde0 	sw	a1,-12832(at)
bfc0f194:	3c020001 	lui	v0,0x1
bfc0f198:	00481021 	addu	v0,v0,t0
bfc0f19c:	9442cde0 	lhu	v0,-12832(v0)
bfc0f1a0:	3c050001 	lui	a1,0x1
bfc0f1a4:	00a42821 	addu	a1,a1,a0
bfc0f1a8:	8ca5cde0 	lw	a1,-12832(a1)
bfc0f1ac:	3c040001 	lui	a0,0x1
bfc0f1b0:	00852021 	addu	a0,a0,a1
bfc0f1b4:	8c84cde0 	lw	a0,-12832(a0)
bfc0f1b8:	3c060001 	lui	a2,0x1
bfc0f1bc:	00c53021 	addu	a2,a2,a1
bfc0f1c0:	8cc6cde0 	lw	a2,-12832(a2)
bfc0f1c4:	1443030b 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f1c8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:72
bfc0f1cc:	3c09f9f1 	lui	t1,0xf9f1
bfc0f1d0:	352957b4 	ori	t1,t1,0x57b4
bfc0f1d4:	3c08800d 	lui	t0,0x800d
bfc0f1d8:	3403f9f1 	li	v1,0xf9f1
bfc0f1dc:	ad09026c 	sw	t1,620(t0)
bfc0f1e0:	25040004 	addiu	a0,t0,4
bfc0f1e4:	2505fff8 	addiu	a1,t0,-8
bfc0f1e8:	ac84026c 	sw	a0,620(a0)
bfc0f1ec:	aca5026c 	sw	a1,620(a1)
bfc0f1f0:	9502026e 	lhu	v0,622(t0)
bfc0f1f4:	8c85026c 	lw	a1,620(a0)
bfc0f1f8:	8ca4026c 	lw	a0,620(a1)
bfc0f1fc:	8ca6026c 	lw	a2,620(a1)
bfc0f200:	144302fc 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f204:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:73
bfc0f208:	3c098ef2 	lui	t1,0x8ef2
bfc0f20c:	35294670 	ori	t1,t1,0x4670
bfc0f210:	3c08800d 	lui	t0,0x800d
bfc0f214:	24034670 	li	v1,18032
bfc0f218:	ad0972c4 	sw	t1,29380(t0)
bfc0f21c:	25040004 	addiu	a0,t0,4
bfc0f220:	2505fff8 	addiu	a1,t0,-8
bfc0f224:	ac8472c4 	sw	a0,29380(a0)
bfc0f228:	aca572c4 	sw	a1,29380(a1)
bfc0f22c:	950272c4 	lhu	v0,29380(t0)
bfc0f230:	8c8572c4 	lw	a1,29380(a0)
bfc0f234:	8ca472c4 	lw	a0,29380(a1)
bfc0f238:	8ca672c4 	lw	a2,29380(a1)
bfc0f23c:	144302ed 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f240:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:74
bfc0f244:	3c09d21d 	lui	t1,0xd21d
bfc0f248:	3529d8d4 	ori	t1,t1,0xd8d4
bfc0f24c:	3c08800d 	lui	t0,0x800d
bfc0f250:	3403d8d4 	li	v1,0xd8d4
bfc0f254:	ad090e6c 	sw	t1,3692(t0)
bfc0f258:	25040004 	addiu	a0,t0,4
bfc0f25c:	2505fff8 	addiu	a1,t0,-8
bfc0f260:	ac840e6c 	sw	a0,3692(a0)
bfc0f264:	aca50e6c 	sw	a1,3692(a1)
bfc0f268:	95020e6c 	lhu	v0,3692(t0)
bfc0f26c:	8c850e6c 	lw	a1,3692(a0)
bfc0f270:	8ca40e6c 	lw	a0,3692(a1)
bfc0f274:	8ca60e6c 	lw	a2,3692(a1)
bfc0f278:	144302de 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f27c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:75
bfc0f280:	3c094a81 	lui	t1,0x4a81
bfc0f284:	35297048 	ori	t1,t1,0x7048
bfc0f288:	3c08800d 	lui	t0,0x800d
bfc0f28c:	24037048 	li	v1,28744
bfc0f290:	3c010001 	lui	at,0x1
bfc0f294:	00280821 	addu	at,at,t0
bfc0f298:	ac29ada0 	sw	t1,-21088(at)
bfc0f29c:	25040004 	addiu	a0,t0,4
bfc0f2a0:	2505fff8 	addiu	a1,t0,-8
bfc0f2a4:	3c010001 	lui	at,0x1
bfc0f2a8:	00240821 	addu	at,at,a0
bfc0f2ac:	ac24ada0 	sw	a0,-21088(at)
bfc0f2b0:	3c010001 	lui	at,0x1
bfc0f2b4:	00250821 	addu	at,at,a1
bfc0f2b8:	ac25ada0 	sw	a1,-21088(at)
bfc0f2bc:	3c020001 	lui	v0,0x1
bfc0f2c0:	00481021 	addu	v0,v0,t0
bfc0f2c4:	9442ada0 	lhu	v0,-21088(v0)
bfc0f2c8:	3c050001 	lui	a1,0x1
bfc0f2cc:	00a42821 	addu	a1,a1,a0
bfc0f2d0:	8ca5ada0 	lw	a1,-21088(a1)
bfc0f2d4:	3c040001 	lui	a0,0x1
bfc0f2d8:	00852021 	addu	a0,a0,a1
bfc0f2dc:	8c84ada0 	lw	a0,-21088(a0)
bfc0f2e0:	3c060001 	lui	a2,0x1
bfc0f2e4:	00c53021 	addu	a2,a2,a1
bfc0f2e8:	8cc6ada0 	lw	a2,-21088(a2)
bfc0f2ec:	144302c1 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f2f0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:76
bfc0f2f4:	3c09c724 	lui	t1,0xc724
bfc0f2f8:	352984d3 	ori	t1,t1,0x84d3
bfc0f2fc:	3c08800d 	lui	t0,0x800d
bfc0f300:	340384d3 	li	v1,0x84d3
bfc0f304:	3c010001 	lui	at,0x1
bfc0f308:	00280821 	addu	at,at,t0
bfc0f30c:	ac29e128 	sw	t1,-7896(at)
bfc0f310:	25040004 	addiu	a0,t0,4
bfc0f314:	2505fff8 	addiu	a1,t0,-8
bfc0f318:	3c010001 	lui	at,0x1
bfc0f31c:	00240821 	addu	at,at,a0
bfc0f320:	ac24e128 	sw	a0,-7896(at)
bfc0f324:	3c010001 	lui	at,0x1
bfc0f328:	00250821 	addu	at,at,a1
bfc0f32c:	ac25e128 	sw	a1,-7896(at)
bfc0f330:	3c020001 	lui	v0,0x1
bfc0f334:	00481021 	addu	v0,v0,t0
bfc0f338:	9442e128 	lhu	v0,-7896(v0)
bfc0f33c:	3c050001 	lui	a1,0x1
bfc0f340:	00a42821 	addu	a1,a1,a0
bfc0f344:	8ca5e128 	lw	a1,-7896(a1)
bfc0f348:	3c040001 	lui	a0,0x1
bfc0f34c:	00852021 	addu	a0,a0,a1
bfc0f350:	8c84e128 	lw	a0,-7896(a0)
bfc0f354:	3c060001 	lui	a2,0x1
bfc0f358:	00c53021 	addu	a2,a2,a1
bfc0f35c:	8cc6e128 	lw	a2,-7896(a2)
bfc0f360:	144302a4 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f364:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:77
bfc0f368:	3c093c69 	lui	t1,0x3c69
bfc0f36c:	3529df38 	ori	t1,t1,0xdf38
bfc0f370:	3c08800d 	lui	t0,0x800d
bfc0f374:	24033c69 	li	v1,15465
bfc0f378:	ad0961a8 	sw	t1,25000(t0)
bfc0f37c:	25040004 	addiu	a0,t0,4
bfc0f380:	2505fff8 	addiu	a1,t0,-8
bfc0f384:	ac8461a8 	sw	a0,25000(a0)
bfc0f388:	aca561a8 	sw	a1,25000(a1)
bfc0f38c:	950261aa 	lhu	v0,25002(t0)
bfc0f390:	8c8561a8 	lw	a1,25000(a0)
bfc0f394:	8ca461a8 	lw	a0,25000(a1)
bfc0f398:	8ca661a8 	lw	a2,25000(a1)
bfc0f39c:	14430295 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f3a0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:78
bfc0f3a4:	3c0940bb 	lui	t1,0x40bb
bfc0f3a8:	35291d20 	ori	t1,t1,0x1d20
bfc0f3ac:	3c08800d 	lui	t0,0x800d
bfc0f3b0:	24031d20 	li	v1,7456
bfc0f3b4:	3c010001 	lui	at,0x1
bfc0f3b8:	00280821 	addu	at,at,t0
bfc0f3bc:	ac29cd88 	sw	t1,-12920(at)
bfc0f3c0:	25040004 	addiu	a0,t0,4
bfc0f3c4:	2505fff8 	addiu	a1,t0,-8
bfc0f3c8:	3c010001 	lui	at,0x1
bfc0f3cc:	00240821 	addu	at,at,a0
bfc0f3d0:	ac24cd88 	sw	a0,-12920(at)
bfc0f3d4:	3c010001 	lui	at,0x1
bfc0f3d8:	00250821 	addu	at,at,a1
bfc0f3dc:	ac25cd88 	sw	a1,-12920(at)
bfc0f3e0:	3c020001 	lui	v0,0x1
bfc0f3e4:	00481021 	addu	v0,v0,t0
bfc0f3e8:	9442cd88 	lhu	v0,-12920(v0)
bfc0f3ec:	3c050001 	lui	a1,0x1
bfc0f3f0:	00a42821 	addu	a1,a1,a0
bfc0f3f4:	8ca5cd88 	lw	a1,-12920(a1)
bfc0f3f8:	3c040001 	lui	a0,0x1
bfc0f3fc:	00852021 	addu	a0,a0,a1
bfc0f400:	8c84cd88 	lw	a0,-12920(a0)
bfc0f404:	3c060001 	lui	a2,0x1
bfc0f408:	00c53021 	addu	a2,a2,a1
bfc0f40c:	8cc6cd88 	lw	a2,-12920(a2)
bfc0f410:	14430278 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f414:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:79
bfc0f418:	3c096fd0 	lui	t1,0x6fd0
bfc0f41c:	352977e8 	ori	t1,t1,0x77e8
bfc0f420:	3c08800d 	lui	t0,0x800d
bfc0f424:	24036fd0 	li	v1,28624
bfc0f428:	3c010001 	lui	at,0x1
bfc0f42c:	00280821 	addu	at,at,t0
bfc0f430:	ac29bef0 	sw	t1,-16656(at)
bfc0f434:	25040004 	addiu	a0,t0,4
bfc0f438:	2505fff8 	addiu	a1,t0,-8
bfc0f43c:	3c010001 	lui	at,0x1
bfc0f440:	00240821 	addu	at,at,a0
bfc0f444:	ac24bef0 	sw	a0,-16656(at)
bfc0f448:	3c010001 	lui	at,0x1
bfc0f44c:	00250821 	addu	at,at,a1
bfc0f450:	ac25bef0 	sw	a1,-16656(at)
bfc0f454:	3c020001 	lui	v0,0x1
bfc0f458:	00481021 	addu	v0,v0,t0
bfc0f45c:	9442bef2 	lhu	v0,-16654(v0)
bfc0f460:	3c050001 	lui	a1,0x1
bfc0f464:	00a42821 	addu	a1,a1,a0
bfc0f468:	8ca5bef0 	lw	a1,-16656(a1)
bfc0f46c:	3c040001 	lui	a0,0x1
bfc0f470:	00852021 	addu	a0,a0,a1
bfc0f474:	8c84bef0 	lw	a0,-16656(a0)
bfc0f478:	3c060001 	lui	a2,0x1
bfc0f47c:	00c53021 	addu	a2,a2,a1
bfc0f480:	8cc6bef0 	lw	a2,-16656(a2)
bfc0f484:	1443025b 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f488:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:80
bfc0f48c:	3c093065 	lui	t1,0x3065
bfc0f490:	35295800 	ori	t1,t1,0x5800
bfc0f494:	3c08800d 	lui	t0,0x800d
bfc0f498:	24033065 	li	v1,12389
bfc0f49c:	ad093cf4 	sw	t1,15604(t0)
bfc0f4a0:	25040004 	addiu	a0,t0,4
bfc0f4a4:	2505fff8 	addiu	a1,t0,-8
bfc0f4a8:	ac843cf4 	sw	a0,15604(a0)
bfc0f4ac:	aca53cf4 	sw	a1,15604(a1)
bfc0f4b0:	95023cf6 	lhu	v0,15606(t0)
bfc0f4b4:	8c853cf4 	lw	a1,15604(a0)
bfc0f4b8:	8ca43cf4 	lw	a0,15604(a1)
bfc0f4bc:	8ca63cf4 	lw	a2,15604(a1)
bfc0f4c0:	1443024c 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f4c4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:81
bfc0f4c8:	3c09a6da 	lui	t1,0xa6da
bfc0f4cc:	3529d5ca 	ori	t1,t1,0xd5ca
bfc0f4d0:	3c08800d 	lui	t0,0x800d
bfc0f4d4:	3403d5ca 	li	v1,0xd5ca
bfc0f4d8:	ad094bb8 	sw	t1,19384(t0)
bfc0f4dc:	25040004 	addiu	a0,t0,4
bfc0f4e0:	2505fff8 	addiu	a1,t0,-8
bfc0f4e4:	ac844bb8 	sw	a0,19384(a0)
bfc0f4e8:	aca54bb8 	sw	a1,19384(a1)
bfc0f4ec:	95024bb8 	lhu	v0,19384(t0)
bfc0f4f0:	8c854bb8 	lw	a1,19384(a0)
bfc0f4f4:	8ca44bb8 	lw	a0,19384(a1)
bfc0f4f8:	8ca64bb8 	lw	a2,19384(a1)
bfc0f4fc:	1443023d 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f500:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:82
bfc0f504:	3c090eaa 	lui	t1,0xeaa
bfc0f508:	35290400 	ori	t1,t1,0x400
bfc0f50c:	3c08800d 	lui	t0,0x800d
bfc0f510:	24030400 	li	v1,1024
bfc0f514:	ad091250 	sw	t1,4688(t0)
bfc0f518:	25040004 	addiu	a0,t0,4
bfc0f51c:	2505fff8 	addiu	a1,t0,-8
bfc0f520:	ac841250 	sw	a0,4688(a0)
bfc0f524:	aca51250 	sw	a1,4688(a1)
bfc0f528:	95021250 	lhu	v0,4688(t0)
bfc0f52c:	8c851250 	lw	a1,4688(a0)
bfc0f530:	8ca41250 	lw	a0,4688(a1)
bfc0f534:	8ca61250 	lw	a2,4688(a1)
bfc0f538:	1443022e 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f53c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:83
bfc0f540:	3c09eaf4 	lui	t1,0xeaf4
bfc0f544:	35297838 	ori	t1,t1,0x7838
bfc0f548:	3c08800d 	lui	t0,0x800d
bfc0f54c:	24037838 	li	v1,30776
bfc0f550:	ad092d30 	sw	t1,11568(t0)
bfc0f554:	25040004 	addiu	a0,t0,4
bfc0f558:	2505fff8 	addiu	a1,t0,-8
bfc0f55c:	ac842d30 	sw	a0,11568(a0)
bfc0f560:	aca52d30 	sw	a1,11568(a1)
bfc0f564:	95022d30 	lhu	v0,11568(t0)
bfc0f568:	8c852d30 	lw	a1,11568(a0)
bfc0f56c:	8ca42d30 	lw	a0,11568(a1)
bfc0f570:	8ca62d30 	lw	a2,11568(a1)
bfc0f574:	1443021f 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f578:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:84
bfc0f57c:	3c099f61 	lui	t1,0x9f61
bfc0f580:	35297ab8 	ori	t1,t1,0x7ab8
bfc0f584:	3c08800d 	lui	t0,0x800d
bfc0f588:	24037ab8 	li	v1,31416
bfc0f58c:	ad090000 	sw	t1,0(t0)
bfc0f590:	25040004 	addiu	a0,t0,4
bfc0f594:	2505fff8 	addiu	a1,t0,-8
bfc0f598:	ac840000 	sw	a0,0(a0)
bfc0f59c:	aca50000 	sw	a1,0(a1)
bfc0f5a0:	95020000 	lhu	v0,0(t0)
bfc0f5a4:	8c850000 	lw	a1,0(a0)
bfc0f5a8:	8ca40000 	lw	a0,0(a1)
bfc0f5ac:	8ca60000 	lw	a2,0(a1)
bfc0f5b0:	14430210 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f5b4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:85
bfc0f5b8:	3c094d02 	lui	t1,0x4d02
bfc0f5bc:	3529ec52 	ori	t1,t1,0xec52
bfc0f5c0:	3c08800d 	lui	t0,0x800d
bfc0f5c4:	24034d02 	li	v1,19714
bfc0f5c8:	ad090000 	sw	t1,0(t0)
bfc0f5cc:	25040004 	addiu	a0,t0,4
bfc0f5d0:	2505fff8 	addiu	a1,t0,-8
bfc0f5d4:	ac840000 	sw	a0,0(a0)
bfc0f5d8:	aca50000 	sw	a1,0(a1)
bfc0f5dc:	95020002 	lhu	v0,2(t0)
bfc0f5e0:	8c850000 	lw	a1,0(a0)
bfc0f5e4:	8ca40000 	lw	a0,0(a1)
bfc0f5e8:	8ca60000 	lw	a2,0(a1)
bfc0f5ec:	14430201 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f5f0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:86
bfc0f5f4:	3c09f9af 	lui	t1,0xf9af
bfc0f5f8:	3529c020 	ori	t1,t1,0xc020
bfc0f5fc:	3c08800d 	lui	t0,0x800d
bfc0f600:	3403f9af 	li	v1,0xf9af
bfc0f604:	ad090000 	sw	t1,0(t0)
bfc0f608:	25040004 	addiu	a0,t0,4
bfc0f60c:	2505fff8 	addiu	a1,t0,-8
bfc0f610:	ac840000 	sw	a0,0(a0)
bfc0f614:	aca50000 	sw	a1,0(a1)
bfc0f618:	95020002 	lhu	v0,2(t0)
bfc0f61c:	8c850000 	lw	a1,0(a0)
bfc0f620:	8ca40000 	lw	a0,0(a1)
bfc0f624:	8ca60000 	lw	a2,0(a1)
bfc0f628:	144301f2 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f62c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:87
bfc0f630:	3c09dfc9 	lui	t1,0xdfc9
bfc0f634:	3529f4d0 	ori	t1,t1,0xf4d0
bfc0f638:	3c08800d 	lui	t0,0x800d
bfc0f63c:	3403dfc9 	li	v1,0xdfc9
bfc0f640:	ad090000 	sw	t1,0(t0)
bfc0f644:	25040004 	addiu	a0,t0,4
bfc0f648:	2505fff8 	addiu	a1,t0,-8
bfc0f64c:	ac840000 	sw	a0,0(a0)
bfc0f650:	aca50000 	sw	a1,0(a1)
bfc0f654:	95020002 	lhu	v0,2(t0)
bfc0f658:	8c850000 	lw	a1,0(a0)
bfc0f65c:	8ca40000 	lw	a0,0(a1)
bfc0f660:	8ca60000 	lw	a2,0(a1)
bfc0f664:	144301e3 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f668:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:88
bfc0f66c:	3c095d92 	lui	t1,0x5d92
bfc0f670:	3529570c 	ori	t1,t1,0x570c
bfc0f674:	3c08800d 	lui	t0,0x800d
bfc0f678:	2403570c 	li	v1,22284
bfc0f67c:	ad090000 	sw	t1,0(t0)
bfc0f680:	25040004 	addiu	a0,t0,4
bfc0f684:	2505fff8 	addiu	a1,t0,-8
bfc0f688:	ac840000 	sw	a0,0(a0)
bfc0f68c:	aca50000 	sw	a1,0(a1)
bfc0f690:	95020000 	lhu	v0,0(t0)
bfc0f694:	8c850000 	lw	a1,0(a0)
bfc0f698:	8ca40000 	lw	a0,0(a1)
bfc0f69c:	8ca60000 	lw	a2,0(a1)
bfc0f6a0:	144301d4 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f6a4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:89
bfc0f6a8:	3c09b450 	lui	t1,0xb450
bfc0f6ac:	3529b400 	ori	t1,t1,0xb400
bfc0f6b0:	3c08800d 	lui	t0,0x800d
bfc0f6b4:	3403b450 	li	v1,0xb450
bfc0f6b8:	ad090000 	sw	t1,0(t0)
bfc0f6bc:	25040004 	addiu	a0,t0,4
bfc0f6c0:	2505fff8 	addiu	a1,t0,-8
bfc0f6c4:	ac840000 	sw	a0,0(a0)
bfc0f6c8:	aca50000 	sw	a1,0(a1)
bfc0f6cc:	95020002 	lhu	v0,2(t0)
bfc0f6d0:	8c850000 	lw	a1,0(a0)
bfc0f6d4:	8ca40000 	lw	a0,0(a1)
bfc0f6d8:	8ca60000 	lw	a2,0(a1)
bfc0f6dc:	144301c5 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f6e0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:90
bfc0f6e4:	3c0995fd 	lui	t1,0x95fd
bfc0f6e8:	3529c700 	ori	t1,t1,0xc700
bfc0f6ec:	3c08800d 	lui	t0,0x800d
bfc0f6f0:	3403c700 	li	v1,0xc700
bfc0f6f4:	ad090000 	sw	t1,0(t0)
bfc0f6f8:	25040004 	addiu	a0,t0,4
bfc0f6fc:	2505fff8 	addiu	a1,t0,-8
bfc0f700:	ac840000 	sw	a0,0(a0)
bfc0f704:	aca50000 	sw	a1,0(a1)
bfc0f708:	95020000 	lhu	v0,0(t0)
bfc0f70c:	8c850000 	lw	a1,0(a0)
bfc0f710:	8ca40000 	lw	a0,0(a1)
bfc0f714:	8ca60000 	lw	a2,0(a1)
bfc0f718:	144301b6 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f71c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:91
bfc0f720:	3c091364 	lui	t1,0x1364
bfc0f724:	3529eca0 	ori	t1,t1,0xeca0
bfc0f728:	3c08800d 	lui	t0,0x800d
bfc0f72c:	24031364 	li	v1,4964
bfc0f730:	ad090000 	sw	t1,0(t0)
bfc0f734:	25040004 	addiu	a0,t0,4
bfc0f738:	2505fff8 	addiu	a1,t0,-8
bfc0f73c:	ac840000 	sw	a0,0(a0)
bfc0f740:	aca50000 	sw	a1,0(a1)
bfc0f744:	95020002 	lhu	v0,2(t0)
bfc0f748:	8c850000 	lw	a1,0(a0)
bfc0f74c:	8ca40000 	lw	a0,0(a1)
bfc0f750:	8ca60000 	lw	a2,0(a1)
bfc0f754:	144301a7 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f758:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:92
bfc0f75c:	3c09a207 	lui	t1,0xa207
bfc0f760:	352908ef 	ori	t1,t1,0x8ef
bfc0f764:	3c08800d 	lui	t0,0x800d
bfc0f768:	3403a207 	li	v1,0xa207
bfc0f76c:	ad090000 	sw	t1,0(t0)
bfc0f770:	25040004 	addiu	a0,t0,4
bfc0f774:	2505fff8 	addiu	a1,t0,-8
bfc0f778:	ac840000 	sw	a0,0(a0)
bfc0f77c:	aca50000 	sw	a1,0(a1)
bfc0f780:	95020002 	lhu	v0,2(t0)
bfc0f784:	8c850000 	lw	a1,0(a0)
bfc0f788:	8ca40000 	lw	a0,0(a1)
bfc0f78c:	8ca60000 	lw	a2,0(a1)
bfc0f790:	14430198 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f794:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:93
bfc0f798:	3c09029d 	lui	t1,0x29d
bfc0f79c:	35297ff0 	ori	t1,t1,0x7ff0
bfc0f7a0:	3c08800d 	lui	t0,0x800d
bfc0f7a4:	2403029d 	li	v1,669
bfc0f7a8:	ad090000 	sw	t1,0(t0)
bfc0f7ac:	25040004 	addiu	a0,t0,4
bfc0f7b0:	2505fff8 	addiu	a1,t0,-8
bfc0f7b4:	ac840000 	sw	a0,0(a0)
bfc0f7b8:	aca50000 	sw	a1,0(a1)
bfc0f7bc:	95020002 	lhu	v0,2(t0)
bfc0f7c0:	8c850000 	lw	a1,0(a0)
bfc0f7c4:	8ca40000 	lw	a0,0(a1)
bfc0f7c8:	8ca60000 	lw	a2,0(a1)
bfc0f7cc:	14430189 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f7d0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:94
bfc0f7d4:	3c09c513 	lui	t1,0xc513
bfc0f7d8:	3529af92 	ori	t1,t1,0xaf92
bfc0f7dc:	3c08800d 	lui	t0,0x800d
bfc0f7e0:	3403c513 	li	v1,0xc513
bfc0f7e4:	ad090000 	sw	t1,0(t0)
bfc0f7e8:	25040004 	addiu	a0,t0,4
bfc0f7ec:	2505fff8 	addiu	a1,t0,-8
bfc0f7f0:	ac840000 	sw	a0,0(a0)
bfc0f7f4:	aca50000 	sw	a1,0(a1)
bfc0f7f8:	95020002 	lhu	v0,2(t0)
bfc0f7fc:	8c850000 	lw	a1,0(a0)
bfc0f800:	8ca40000 	lw	a0,0(a1)
bfc0f804:	8ca60000 	lw	a2,0(a1)
bfc0f808:	1443017a 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f80c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:95
bfc0f810:	3c0917d8 	lui	t1,0x17d8
bfc0f814:	3529be62 	ori	t1,t1,0xbe62
bfc0f818:	3c08800d 	lui	t0,0x800d
bfc0f81c:	3403be62 	li	v1,0xbe62
bfc0f820:	ad090000 	sw	t1,0(t0)
bfc0f824:	25040004 	addiu	a0,t0,4
bfc0f828:	2505fff8 	addiu	a1,t0,-8
bfc0f82c:	ac840000 	sw	a0,0(a0)
bfc0f830:	aca50000 	sw	a1,0(a1)
bfc0f834:	95020000 	lhu	v0,0(t0)
bfc0f838:	8c850000 	lw	a1,0(a0)
bfc0f83c:	8ca40000 	lw	a0,0(a1)
bfc0f840:	8ca60000 	lw	a2,0(a1)
bfc0f844:	1443016b 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f848:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:96
bfc0f84c:	3c09bcc5 	lui	t1,0xbcc5
bfc0f850:	3529cb24 	ori	t1,t1,0xcb24
bfc0f854:	3c08800d 	lui	t0,0x800d
bfc0f858:	3403bcc5 	li	v1,0xbcc5
bfc0f85c:	ad090000 	sw	t1,0(t0)
bfc0f860:	25040004 	addiu	a0,t0,4
bfc0f864:	2505fff8 	addiu	a1,t0,-8
bfc0f868:	ac840000 	sw	a0,0(a0)
bfc0f86c:	aca50000 	sw	a1,0(a1)
bfc0f870:	95020002 	lhu	v0,2(t0)
bfc0f874:	8c850000 	lw	a1,0(a0)
bfc0f878:	8ca40000 	lw	a0,0(a1)
bfc0f87c:	8ca60000 	lw	a2,0(a1)
bfc0f880:	1443015c 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f884:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:97
bfc0f888:	3c0944e5 	lui	t1,0x44e5
bfc0f88c:	3529ce74 	ori	t1,t1,0xce74
bfc0f890:	3c08800d 	lui	t0,0x800d
bfc0f894:	3403ce74 	li	v1,0xce74
bfc0f898:	ad090000 	sw	t1,0(t0)
bfc0f89c:	25040004 	addiu	a0,t0,4
bfc0f8a0:	2505fff8 	addiu	a1,t0,-8
bfc0f8a4:	ac840000 	sw	a0,0(a0)
bfc0f8a8:	aca50000 	sw	a1,0(a1)
bfc0f8ac:	95020000 	lhu	v0,0(t0)
bfc0f8b0:	8c850000 	lw	a1,0(a0)
bfc0f8b4:	8ca40000 	lw	a0,0(a1)
bfc0f8b8:	8ca60000 	lw	a2,0(a1)
bfc0f8bc:	1443014d 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f8c0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:98
bfc0f8c4:	3c09870f 	lui	t1,0x870f
bfc0f8c8:	35295910 	ori	t1,t1,0x5910
bfc0f8cc:	3c08800d 	lui	t0,0x800d
bfc0f8d0:	24035910 	li	v1,22800
bfc0f8d4:	ad090000 	sw	t1,0(t0)
bfc0f8d8:	25040004 	addiu	a0,t0,4
bfc0f8dc:	2505fff8 	addiu	a1,t0,-8
bfc0f8e0:	ac840000 	sw	a0,0(a0)
bfc0f8e4:	aca50000 	sw	a1,0(a1)
bfc0f8e8:	95020000 	lhu	v0,0(t0)
bfc0f8ec:	8c850000 	lw	a1,0(a0)
bfc0f8f0:	8ca40000 	lw	a0,0(a1)
bfc0f8f4:	8ca60000 	lw	a2,0(a1)
bfc0f8f8:	1443013e 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f8fc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:99
bfc0f900:	3c09a322 	lui	t1,0xa322
bfc0f904:	3529c100 	ori	t1,t1,0xc100
bfc0f908:	3c08800d 	lui	t0,0x800d
bfc0f90c:	3403a322 	li	v1,0xa322
bfc0f910:	ad090000 	sw	t1,0(t0)
bfc0f914:	25040004 	addiu	a0,t0,4
bfc0f918:	2505fff8 	addiu	a1,t0,-8
bfc0f91c:	ac840000 	sw	a0,0(a0)
bfc0f920:	aca50000 	sw	a1,0(a1)
bfc0f924:	95020002 	lhu	v0,2(t0)
bfc0f928:	8c850000 	lw	a1,0(a0)
bfc0f92c:	8ca40000 	lw	a0,0(a1)
bfc0f930:	8ca60000 	lw	a2,0(a1)
bfc0f934:	1443012f 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f938:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:100
bfc0f93c:	3c09e648 	lui	t1,0xe648
bfc0f940:	352919f0 	ori	t1,t1,0x19f0
bfc0f944:	3c08800d 	lui	t0,0x800d
bfc0f948:	3403e648 	li	v1,0xe648
bfc0f94c:	ad090000 	sw	t1,0(t0)
bfc0f950:	25040004 	addiu	a0,t0,4
bfc0f954:	2505fff8 	addiu	a1,t0,-8
bfc0f958:	ac840000 	sw	a0,0(a0)
bfc0f95c:	aca50000 	sw	a1,0(a1)
bfc0f960:	95020002 	lhu	v0,2(t0)
bfc0f964:	8c850000 	lw	a1,0(a0)
bfc0f968:	8ca40000 	lw	a0,0(a1)
bfc0f96c:	8ca60000 	lw	a2,0(a1)
bfc0f970:	14430120 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f974:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:101
bfc0f978:	3c09bd84 	lui	t1,0xbd84
bfc0f97c:	352927c0 	ori	t1,t1,0x27c0
bfc0f980:	3c08800d 	lui	t0,0x800d
bfc0f984:	240327c0 	li	v1,10176
bfc0f988:	ad090000 	sw	t1,0(t0)
bfc0f98c:	25040004 	addiu	a0,t0,4
bfc0f990:	2505fff8 	addiu	a1,t0,-8
bfc0f994:	ac840000 	sw	a0,0(a0)
bfc0f998:	aca50000 	sw	a1,0(a1)
bfc0f99c:	95020000 	lhu	v0,0(t0)
bfc0f9a0:	8c850000 	lw	a1,0(a0)
bfc0f9a4:	8ca40000 	lw	a0,0(a1)
bfc0f9a8:	8ca60000 	lw	a2,0(a1)
bfc0f9ac:	14430111 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f9b0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:102
bfc0f9b4:	3c09c513 	lui	t1,0xc513
bfc0f9b8:	35297e48 	ori	t1,t1,0x7e48
bfc0f9bc:	3c08800d 	lui	t0,0x800d
bfc0f9c0:	3403c513 	li	v1,0xc513
bfc0f9c4:	ad090000 	sw	t1,0(t0)
bfc0f9c8:	25040004 	addiu	a0,t0,4
bfc0f9cc:	2505fff8 	addiu	a1,t0,-8
bfc0f9d0:	ac840000 	sw	a0,0(a0)
bfc0f9d4:	aca50000 	sw	a1,0(a1)
bfc0f9d8:	95020002 	lhu	v0,2(t0)
bfc0f9dc:	8c850000 	lw	a1,0(a0)
bfc0f9e0:	8ca40000 	lw	a0,0(a1)
bfc0f9e4:	8ca60000 	lw	a2,0(a1)
bfc0f9e8:	14430102 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0f9ec:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:103
bfc0f9f0:	3c095d98 	lui	t1,0x5d98
bfc0f9f4:	352904c0 	ori	t1,t1,0x4c0
bfc0f9f8:	3c08800d 	lui	t0,0x800d
bfc0f9fc:	24035d98 	li	v1,23960
bfc0fa00:	ad090000 	sw	t1,0(t0)
bfc0fa04:	25040004 	addiu	a0,t0,4
bfc0fa08:	2505fff8 	addiu	a1,t0,-8
bfc0fa0c:	ac840000 	sw	a0,0(a0)
bfc0fa10:	aca50000 	sw	a1,0(a1)
bfc0fa14:	95020002 	lhu	v0,2(t0)
bfc0fa18:	8c850000 	lw	a1,0(a0)
bfc0fa1c:	8ca40000 	lw	a0,0(a1)
bfc0fa20:	8ca60000 	lw	a2,0(a1)
bfc0fa24:	144300f3 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fa28:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:104
bfc0fa2c:	3c09f04c 	lui	t1,0xf04c
bfc0fa30:	3529a5a8 	ori	t1,t1,0xa5a8
bfc0fa34:	3c08800d 	lui	t0,0x800d
bfc0fa38:	3403a5a8 	li	v1,0xa5a8
bfc0fa3c:	ad090000 	sw	t1,0(t0)
bfc0fa40:	25040004 	addiu	a0,t0,4
bfc0fa44:	2505fff8 	addiu	a1,t0,-8
bfc0fa48:	ac840000 	sw	a0,0(a0)
bfc0fa4c:	aca50000 	sw	a1,0(a1)
bfc0fa50:	95020000 	lhu	v0,0(t0)
bfc0fa54:	8c850000 	lw	a1,0(a0)
bfc0fa58:	8ca40000 	lw	a0,0(a1)
bfc0fa5c:	8ca60000 	lw	a2,0(a1)
bfc0fa60:	144300e4 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fa64:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:105
bfc0fa68:	3c09be9c 	lui	t1,0xbe9c
bfc0fa6c:	35290a40 	ori	t1,t1,0xa40
bfc0fa70:	3c08800d 	lui	t0,0x800d
bfc0fa74:	24030a40 	li	v1,2624
bfc0fa78:	ad090000 	sw	t1,0(t0)
bfc0fa7c:	25040004 	addiu	a0,t0,4
bfc0fa80:	2505fff8 	addiu	a1,t0,-8
bfc0fa84:	ac840000 	sw	a0,0(a0)
bfc0fa88:	aca50000 	sw	a1,0(a1)
bfc0fa8c:	95020000 	lhu	v0,0(t0)
bfc0fa90:	8c850000 	lw	a1,0(a0)
bfc0fa94:	8ca40000 	lw	a0,0(a1)
bfc0fa98:	8ca60000 	lw	a2,0(a1)
bfc0fa9c:	144300d5 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0faa0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:106
bfc0faa4:	3c091998 	lui	t1,0x1998
bfc0faa8:	35299770 	ori	t1,t1,0x9770
bfc0faac:	3c08800d 	lui	t0,0x800d
bfc0fab0:	24031998 	li	v1,6552
bfc0fab4:	ad090000 	sw	t1,0(t0)
bfc0fab8:	25040004 	addiu	a0,t0,4
bfc0fabc:	2505fff8 	addiu	a1,t0,-8
bfc0fac0:	ac840000 	sw	a0,0(a0)
bfc0fac4:	aca50000 	sw	a1,0(a1)
bfc0fac8:	95020002 	lhu	v0,2(t0)
bfc0facc:	8c850000 	lw	a1,0(a0)
bfc0fad0:	8ca40000 	lw	a0,0(a1)
bfc0fad4:	8ca60000 	lw	a2,0(a1)
bfc0fad8:	144300c6 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fadc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:107
bfc0fae0:	3c09a98e 	lui	t1,0xa98e
bfc0fae4:	35294e64 	ori	t1,t1,0x4e64
bfc0fae8:	3c08800d 	lui	t0,0x800d
bfc0faec:	3403a98e 	li	v1,0xa98e
bfc0faf0:	ad090000 	sw	t1,0(t0)
bfc0faf4:	25040004 	addiu	a0,t0,4
bfc0faf8:	2505fff8 	addiu	a1,t0,-8
bfc0fafc:	ac840000 	sw	a0,0(a0)
bfc0fb00:	aca50000 	sw	a1,0(a1)
bfc0fb04:	95020002 	lhu	v0,2(t0)
bfc0fb08:	8c850000 	lw	a1,0(a0)
bfc0fb0c:	8ca40000 	lw	a0,0(a1)
bfc0fb10:	8ca60000 	lw	a2,0(a1)
bfc0fb14:	144300b7 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fb18:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:108
bfc0fb1c:	3c09bde4 	lui	t1,0xbde4
bfc0fb20:	35292a40 	ori	t1,t1,0x2a40
bfc0fb24:	3c08800d 	lui	t0,0x800d
bfc0fb28:	24032a40 	li	v1,10816
bfc0fb2c:	ad090000 	sw	t1,0(t0)
bfc0fb30:	25040004 	addiu	a0,t0,4
bfc0fb34:	2505fff8 	addiu	a1,t0,-8
bfc0fb38:	ac840000 	sw	a0,0(a0)
bfc0fb3c:	aca50000 	sw	a1,0(a1)
bfc0fb40:	95020000 	lhu	v0,0(t0)
bfc0fb44:	8c850000 	lw	a1,0(a0)
bfc0fb48:	8ca40000 	lw	a0,0(a1)
bfc0fb4c:	8ca60000 	lw	a2,0(a1)
bfc0fb50:	144300a8 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fb54:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:109
bfc0fb58:	3c09b6a2 	lui	t1,0xb6a2
bfc0fb5c:	35294340 	ori	t1,t1,0x4340
bfc0fb60:	3c08800d 	lui	t0,0x800d
bfc0fb64:	3403b6a2 	li	v1,0xb6a2
bfc0fb68:	ad090000 	sw	t1,0(t0)
bfc0fb6c:	25040004 	addiu	a0,t0,4
bfc0fb70:	2505fff8 	addiu	a1,t0,-8
bfc0fb74:	ac840000 	sw	a0,0(a0)
bfc0fb78:	aca50000 	sw	a1,0(a1)
bfc0fb7c:	95020002 	lhu	v0,2(t0)
bfc0fb80:	8c850000 	lw	a1,0(a0)
bfc0fb84:	8ca40000 	lw	a0,0(a1)
bfc0fb88:	8ca60000 	lw	a2,0(a1)
bfc0fb8c:	14430099 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fb90:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:110
bfc0fb94:	3c09adcf 	lui	t1,0xadcf
bfc0fb98:	352971e4 	ori	t1,t1,0x71e4
bfc0fb9c:	3c08800d 	lui	t0,0x800d
bfc0fba0:	240371e4 	li	v1,29156
bfc0fba4:	ad090000 	sw	t1,0(t0)
bfc0fba8:	25040004 	addiu	a0,t0,4
bfc0fbac:	2505fff8 	addiu	a1,t0,-8
bfc0fbb0:	ac840000 	sw	a0,0(a0)
bfc0fbb4:	aca50000 	sw	a1,0(a1)
bfc0fbb8:	95020000 	lhu	v0,0(t0)
bfc0fbbc:	8c850000 	lw	a1,0(a0)
bfc0fbc0:	8ca40000 	lw	a0,0(a1)
bfc0fbc4:	8ca60000 	lw	a2,0(a1)
bfc0fbc8:	1443008a 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fbcc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:111
bfc0fbd0:	3c094362 	lui	t1,0x4362
bfc0fbd4:	3529a106 	ori	t1,t1,0xa106
bfc0fbd8:	3c08800d 	lui	t0,0x800d
bfc0fbdc:	24034362 	li	v1,17250
bfc0fbe0:	ad090000 	sw	t1,0(t0)
bfc0fbe4:	25040004 	addiu	a0,t0,4
bfc0fbe8:	2505fff8 	addiu	a1,t0,-8
bfc0fbec:	ac840000 	sw	a0,0(a0)
bfc0fbf0:	aca50000 	sw	a1,0(a1)
bfc0fbf4:	95020002 	lhu	v0,2(t0)
bfc0fbf8:	8c850000 	lw	a1,0(a0)
bfc0fbfc:	8ca40000 	lw	a0,0(a1)
bfc0fc00:	8ca60000 	lw	a2,0(a1)
bfc0fc04:	1443007b 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fc08:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:112
bfc0fc0c:	3c0942f7 	lui	t1,0x42f7
bfc0fc10:	35297dee 	ori	t1,t1,0x7dee
bfc0fc14:	3c08800d 	lui	t0,0x800d
bfc0fc18:	240342f7 	li	v1,17143
bfc0fc1c:	ad090000 	sw	t1,0(t0)
bfc0fc20:	25040004 	addiu	a0,t0,4
bfc0fc24:	2505fff8 	addiu	a1,t0,-8
bfc0fc28:	ac840000 	sw	a0,0(a0)
bfc0fc2c:	aca50000 	sw	a1,0(a1)
bfc0fc30:	95020002 	lhu	v0,2(t0)
bfc0fc34:	8c850000 	lw	a1,0(a0)
bfc0fc38:	8ca40000 	lw	a0,0(a1)
bfc0fc3c:	8ca60000 	lw	a2,0(a1)
bfc0fc40:	1443006c 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fc44:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:113
bfc0fc48:	3c098def 	lui	t1,0x8def
bfc0fc4c:	352996d0 	ori	t1,t1,0x96d0
bfc0fc50:	3c08800d 	lui	t0,0x800d
bfc0fc54:	340396d0 	li	v1,0x96d0
bfc0fc58:	ad090000 	sw	t1,0(t0)
bfc0fc5c:	25040004 	addiu	a0,t0,4
bfc0fc60:	2505fff8 	addiu	a1,t0,-8
bfc0fc64:	ac840000 	sw	a0,0(a0)
bfc0fc68:	aca50000 	sw	a1,0(a1)
bfc0fc6c:	95020000 	lhu	v0,0(t0)
bfc0fc70:	8c850000 	lw	a1,0(a0)
bfc0fc74:	8ca40000 	lw	a0,0(a1)
bfc0fc78:	8ca60000 	lw	a2,0(a1)
bfc0fc7c:	1443005d 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fc80:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:114
bfc0fc84:	3c09cf08 	lui	t1,0xcf08
bfc0fc88:	35293100 	ori	t1,t1,0x3100
bfc0fc8c:	3c08800d 	lui	t0,0x800d
bfc0fc90:	3403cf08 	li	v1,0xcf08
bfc0fc94:	ad090000 	sw	t1,0(t0)
bfc0fc98:	25040004 	addiu	a0,t0,4
bfc0fc9c:	2505fff8 	addiu	a1,t0,-8
bfc0fca0:	ac840000 	sw	a0,0(a0)
bfc0fca4:	aca50000 	sw	a1,0(a1)
bfc0fca8:	95020002 	lhu	v0,2(t0)
bfc0fcac:	8c850000 	lw	a1,0(a0)
bfc0fcb0:	8ca40000 	lw	a0,0(a1)
bfc0fcb4:	8ca60000 	lw	a2,0(a1)
bfc0fcb8:	1443004e 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fcbc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:115
bfc0fcc0:	3c09ace8 	lui	t1,0xace8
bfc0fcc4:	35294af0 	ori	t1,t1,0x4af0
bfc0fcc8:	3c08800d 	lui	t0,0x800d
bfc0fccc:	24034af0 	li	v1,19184
bfc0fcd0:	ad090000 	sw	t1,0(t0)
bfc0fcd4:	25040004 	addiu	a0,t0,4
bfc0fcd8:	2505fff8 	addiu	a1,t0,-8
bfc0fcdc:	ac840000 	sw	a0,0(a0)
bfc0fce0:	aca50000 	sw	a1,0(a1)
bfc0fce4:	95020000 	lhu	v0,0(t0)
bfc0fce8:	8c850000 	lw	a1,0(a0)
bfc0fcec:	8ca40000 	lw	a0,0(a1)
bfc0fcf0:	8ca60000 	lw	a2,0(a1)
bfc0fcf4:	1443003f 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fcf8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:116
bfc0fcfc:	3c09c5d1 	lui	t1,0xc5d1
bfc0fd00:	3529d550 	ori	t1,t1,0xd550
bfc0fd04:	3c08800d 	lui	t0,0x800d
bfc0fd08:	3403c5d1 	li	v1,0xc5d1
bfc0fd0c:	ad090000 	sw	t1,0(t0)
bfc0fd10:	25040004 	addiu	a0,t0,4
bfc0fd14:	2505fff8 	addiu	a1,t0,-8
bfc0fd18:	ac840000 	sw	a0,0(a0)
bfc0fd1c:	aca50000 	sw	a1,0(a1)
bfc0fd20:	95020002 	lhu	v0,2(t0)
bfc0fd24:	8c850000 	lw	a1,0(a0)
bfc0fd28:	8ca40000 	lw	a0,0(a1)
bfc0fd2c:	8ca60000 	lw	a2,0(a1)
bfc0fd30:	14430030 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fd34:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:117
bfc0fd38:	3c09fade 	lui	t1,0xfade
bfc0fd3c:	35291c80 	ori	t1,t1,0x1c80
bfc0fd40:	3c08800d 	lui	t0,0x800d
bfc0fd44:	24031c80 	li	v1,7296
bfc0fd48:	ad090000 	sw	t1,0(t0)
bfc0fd4c:	25040004 	addiu	a0,t0,4
bfc0fd50:	2505fff8 	addiu	a1,t0,-8
bfc0fd54:	ac840000 	sw	a0,0(a0)
bfc0fd58:	aca50000 	sw	a1,0(a1)
bfc0fd5c:	95020000 	lhu	v0,0(t0)
bfc0fd60:	8c850000 	lw	a1,0(a0)
bfc0fd64:	8ca40000 	lw	a0,0(a1)
bfc0fd68:	8ca60000 	lw	a2,0(a1)
bfc0fd6c:	14430021 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fd70:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:118
bfc0fd74:	3c092579 	lui	t1,0x2579
bfc0fd78:	3529310c 	ori	t1,t1,0x310c
bfc0fd7c:	3c08800d 	lui	t0,0x800d
bfc0fd80:	24032579 	li	v1,9593
bfc0fd84:	ad090000 	sw	t1,0(t0)
bfc0fd88:	25040004 	addiu	a0,t0,4
bfc0fd8c:	2505fff8 	addiu	a1,t0,-8
bfc0fd90:	ac840000 	sw	a0,0(a0)
bfc0fd94:	aca50000 	sw	a1,0(a1)
bfc0fd98:	95020002 	lhu	v0,2(t0)
bfc0fd9c:	8c850000 	lw	a1,0(a0)
bfc0fda0:	8ca40000 	lw	a0,0(a1)
bfc0fda4:	8ca60000 	lw	a2,0(a1)
bfc0fda8:	14430012 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fdac:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:119
bfc0fdb0:	24090000 	li	t1,0
bfc0fdb4:	3c08800d 	lui	t0,0x800d
bfc0fdb8:	24030000 	li	v1,0
bfc0fdbc:	ad090000 	sw	t1,0(t0)
bfc0fdc0:	25040004 	addiu	a0,t0,4
bfc0fdc4:	2505fff8 	addiu	a1,t0,-8
bfc0fdc8:	ac840000 	sw	a0,0(a0)
bfc0fdcc:	aca50000 	sw	a1,0(a1)
bfc0fdd0:	95020000 	lhu	v0,0(t0)
bfc0fdd4:	8c850000 	lw	a1,0(a0)
bfc0fdd8:	8ca40000 	lw	a0,0(a1)
bfc0fddc:	8ca60000 	lw	a2,0(a1)
bfc0fde0:	14430004 	bne	v0,v1,bfc0fdf4 <inst_error>
bfc0fde4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:121
bfc0fde8:	16400002 	bnez	s2,bfc0fdf4 <inst_error>
/home/csy/func/inst/n62_lhu.S:122
bfc0fdec:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:124
bfc0fdf0:	26730001 	addiu	s3,s3,1

bfc0fdf4 <inst_error>:
/home/csy/func/inst/n62_lhu.S:127
bfc0fdf4:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n62_lhu.S:128
bfc0fdf8:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n62_lhu.S:129
bfc0fdfc:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n62_lhu.S:130
bfc0fe00:	03e00008 	jr	ra
/home/csy/func/inst/n62_lhu.S:131
bfc0fe04:	00000000 	nop
	...

bfc0fe10 <n74_sh_ades_ex_test>:
/home/csy/func/inst/n74_sh_ades_ex.S:7
bfc0fe10:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n74_sh_ades_ex.S:8
bfc0fe14:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n74_sh_ades_ex.S:9
bfc0fe18:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:10
bfc0fe1c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:12
bfc0fe20:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n74_sh_ades_ex.S:13
bfc0fe24:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n74_sh_ades_ex.S:14
bfc0fe28:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n74_sh_ades_ex.S:15
bfc0fe2c:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:16
bfc0fe30:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n74_sh_ades_ex.S:19
bfc0fe34:	3c028003 	lui	v0,0x8003
bfc0fe38:	3442602a 	ori	v0,v0,0x602a
bfc0fe3c:	3c038003 	lui	v1,0x8003
bfc0fe40:	3463602a 	ori	v1,v1,0x602a
bfc0fe44:	3c04800d 	lui	a0,0x800d
bfc0fe48:	3484602a 	ori	a0,a0,0x602a
bfc0fe4c:	3c0547cd 	lui	a1,0x47cd
bfc0fe50:	34a5f6da 	ori	a1,a1,0xf6da
bfc0fe54:	24878c35 	addiu	a3,a0,-29643
bfc0fe58:	ac828c32 	sw	v0,-29646(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:20
bfc0fe5c:	3c14bfc1 	lui	s4,0xbfc1
bfc0fe60:	2694fe64 	addiu	s4,s4,-412
/home/csy/func/inst/n74_sh_ades_ex.S:21
bfc0fe64:	a4858c35 	sh	a1,-29643(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:22
bfc0fe68:	165700a2 	bne	s2,s7,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:23
bfc0fe6c:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:24
bfc0fe70:	8c828c32 	lw	v0,-29646(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:25
bfc0fe74:	1443009f 	bne	v0,v1,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:26
bfc0fe78:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:27
bfc0fe7c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:28
bfc0fe80:	14f6009c 	bne	a3,s6,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:29
bfc0fe84:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:31
bfc0fe88:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:32
bfc0fe8c:	3c026e9c 	lui	v0,0x6e9c
bfc0fe90:	3442e24e 	ori	v0,v0,0xe24e
bfc0fe94:	3c036e9c 	lui	v1,0x6e9c
bfc0fe98:	3463e24e 	ori	v1,v1,0xe24e
bfc0fe9c:	3c04800d 	lui	a0,0x800d
bfc0fea0:	34842c08 	ori	a0,a0,0x2c08
bfc0fea4:	3c056e9c 	lui	a1,0x6e9c
bfc0fea8:	34a5e24e 	ori	a1,a1,0xe24e
bfc0feac:	2487098b 	addiu	a3,a0,2443
bfc0feb0:	ac820988 	sw	v0,2440(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:33
bfc0feb4:	3c14bfc1 	lui	s4,0xbfc1
bfc0feb8:	2694fec4 	addiu	s4,s4,-316
/home/csy/func/inst/n74_sh_ades_ex.S:34
bfc0febc:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:35
bfc0fec0:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:36
bfc0fec4:	a485098b 	sh	a1,2443(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:37
bfc0fec8:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:38
bfc0fecc:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:39
bfc0fed0:	15340088 	bne	t1,s4,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:40
bfc0fed4:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:41
bfc0fed8:	16570086 	bne	s2,s7,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:42
bfc0fedc:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:43
bfc0fee0:	8c820988 	lw	v0,2440(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:44
bfc0fee4:	14430083 	bne	v0,v1,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:45
bfc0fee8:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:46
bfc0feec:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:47
bfc0fef0:	14f60080 	bne	a3,s6,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:48
bfc0fef4:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:49
bfc0fef8:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:50
bfc0fefc:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:52
bfc0ff00:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:53
bfc0ff04:	3c02419f 	lui	v0,0x419f
bfc0ff08:	34429f3b 	ori	v0,v0,0x9f3b
bfc0ff0c:	3c03419f 	lui	v1,0x419f
bfc0ff10:	34639f3b 	ori	v1,v1,0x9f3b
bfc0ff14:	3c04800d 	lui	a0,0x800d
bfc0ff18:	34841356 	ori	a0,a0,0x1356
bfc0ff1c:	3c05bb1a 	lui	a1,0xbb1a
bfc0ff20:	34a5fce8 	ori	a1,a1,0xfce8
bfc0ff24:	24871dd3 	addiu	a3,a0,7635
bfc0ff28:	ac821dd2 	sw	v0,7634(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:54
bfc0ff2c:	3c14bfc1 	lui	s4,0xbfc1
bfc0ff30:	2694ff3c 	addiu	s4,s4,-196
/home/csy/func/inst/n74_sh_ades_ex.S:55
bfc0ff34:	01000011 	mthi	t0
/home/csy/func/inst/n74_sh_ades_ex.S:56
bfc0ff38:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n74_sh_ades_ex.S:57
bfc0ff3c:	a4851dd3 	sh	a1,7635(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:58
bfc0ff40:	00004810 	mfhi	t1
/home/csy/func/inst/n74_sh_ades_ex.S:59
bfc0ff44:	1128006b 	beq	t1,t0,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:60
bfc0ff48:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:61
bfc0ff4c:	16570069 	bne	s2,s7,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:62
bfc0ff50:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:63
bfc0ff54:	8c821dd2 	lw	v0,7634(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:64
bfc0ff58:	14430066 	bne	v0,v1,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:65
bfc0ff5c:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:66
bfc0ff60:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:67
bfc0ff64:	14f60063 	bne	a3,s6,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:68
bfc0ff68:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:70
bfc0ff6c:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:71
bfc0ff70:	3c028003 	lui	v0,0x8003
bfc0ff74:	34423729 	ori	v0,v0,0x3729
bfc0ff78:	3c038003 	lui	v1,0x8003
bfc0ff7c:	34633729 	ori	v1,v1,0x3729
bfc0ff80:	3c04800d 	lui	a0,0x800d
bfc0ff84:	3484372c 	ori	a0,a0,0x372c
bfc0ff88:	3c05190a 	lui	a1,0x190a
bfc0ff8c:	34a565ca 	ori	a1,a1,0x65ca
bfc0ff90:	248786f1 	addiu	a3,a0,-30991
bfc0ff94:	ac8286f0 	sw	v0,-30992(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:72
bfc0ff98:	3c14bfc1 	lui	s4,0xbfc1
bfc0ff9c:	2694ffa0 	addiu	s4,s4,-96
/home/csy/func/inst/n74_sh_ades_ex.S:73
bfc0ffa0:	a48586f1 	sh	a1,-30991(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:74
bfc0ffa4:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n74_sh_ades_ex.S:75
bfc0ffa8:	16570052 	bne	s2,s7,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:76
bfc0ffac:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:77
bfc0ffb0:	8c8286f0 	lw	v0,-30992(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:78
bfc0ffb4:	1443004f 	bne	v0,v1,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:79
bfc0ffb8:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:80
bfc0ffbc:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:81
bfc0ffc0:	14f6004c 	bne	a3,s6,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:82
bfc0ffc4:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:84
bfc0ffc8:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:85
bfc0ffcc:	3c028003 	lui	v0,0x8003
bfc0ffd0:	34421ff3 	ori	v0,v0,0x1ff3
bfc0ffd4:	3c038003 	lui	v1,0x8003
bfc0ffd8:	34631ff3 	ori	v1,v1,0x1ff3
bfc0ffdc:	3c04800d 	lui	a0,0x800d
bfc0ffe0:	34841ff0 	ori	a0,a0,0x1ff0
bfc0ffe4:	3c059fcc 	lui	a1,0x9fcc
bfc0ffe8:	34a54ca0 	ori	a1,a1,0x4ca0
bfc0ffec:	2487b663 	addiu	a3,a0,-18845
bfc0fff0:	ac82b660 	sw	v0,-18848(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:86
bfc0fff4:	3c14bfc1 	lui	s4,0xbfc1
bfc0fff8:	26940004 	addiu	s4,s4,4
/home/csy/func/inst/n74_sh_ades_ex.S:87
bfc0fffc:	01000013 	mtlo	t0
/home/csy/func/inst/n74_sh_ades_ex.S:88
bfc10000:	01100019 	multu	t0,s0
/home/csy/func/inst/n74_sh_ades_ex.S:89
bfc10004:	a485b663 	sh	a1,-18845(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:90
bfc10008:	00004810 	mfhi	t1
/home/csy/func/inst/n74_sh_ades_ex.S:91
bfc1000c:	11280039 	beq	t1,t0,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:92
bfc10010:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:93
bfc10014:	16570037 	bne	s2,s7,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:94
bfc10018:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:95
bfc1001c:	8c82b660 	lw	v0,-18848(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:96
bfc10020:	14430034 	bne	v0,v1,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:97
bfc10024:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:98
bfc10028:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:99
bfc1002c:	14f60031 	bne	a3,s6,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:100
bfc10030:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:102
bfc10034:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:103
bfc10038:	3c0273b3 	lui	v0,0x73b3
bfc1003c:	34425a2b 	ori	v0,v0,0x5a2b
bfc10040:	3c0373b3 	lui	v1,0x73b3
bfc10044:	34635a2b 	ori	v1,v1,0x5a2b
bfc10048:	3c04800d 	lui	a0,0x800d
bfc1004c:	3484351b 	ori	a0,a0,0x351b
bfc10050:	3c05bd6f 	lui	a1,0xbd6f
bfc10054:	34a5420a 	ori	a1,a1,0x420a
bfc10058:	248764f2 	addiu	a3,a0,25842
bfc1005c:	ac8264f1 	sw	v0,25841(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:104
bfc10060:	3c14bfc1 	lui	s4,0xbfc1
bfc10064:	26940068 	addiu	s4,s4,104
/home/csy/func/inst/n74_sh_ades_ex.S:105
bfc10068:	a48564f2 	sh	a1,25842(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:106
bfc1006c:	01120019 	multu	t0,s2
/home/csy/func/inst/n74_sh_ades_ex.S:107
bfc10070:	16570020 	bne	s2,s7,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:108
bfc10074:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:109
bfc10078:	8c8264f1 	lw	v0,25841(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:110
bfc1007c:	1443001d 	bne	v0,v1,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:111
bfc10080:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:112
bfc10084:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:113
bfc10088:	14f6001a 	bne	a3,s6,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:114
bfc1008c:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:116
bfc10090:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:117
bfc10094:	3c02a521 	lui	v0,0xa521
bfc10098:	34420b0a 	ori	v0,v0,0xb0a
bfc1009c:	3c03a521 	lui	v1,0xa521
bfc100a0:	34630b0a 	ori	v1,v1,0xb0a
bfc100a4:	3c04800d 	lui	a0,0x800d
bfc100a8:	348463d7 	ori	a0,a0,0x63d7
bfc100ac:	3c0500e9 	lui	a1,0xe9
bfc100b0:	34a55990 	ori	a1,a1,0x5990
bfc100b4:	24877fc6 	addiu	a3,a0,32710
bfc100b8:	ac827fc5 	sw	v0,32709(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:118
bfc100bc:	3c14bfc1 	lui	s4,0xbfc1
bfc100c0:	269400c8 	addiu	s4,s4,200
/home/csy/func/inst/n74_sh_ades_ex.S:119
bfc100c4:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n74_sh_ades_ex.S:120
bfc100c8:	a4857fc6 	sh	a1,32710(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:121
bfc100cc:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n74_sh_ades_ex.S:122
bfc100d0:	16570008 	bne	s2,s7,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:123
bfc100d4:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:124
bfc100d8:	8c827fc5 	lw	v0,32709(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:125
bfc100dc:	14430005 	bne	v0,v1,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:126
bfc100e0:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:127
bfc100e4:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:128
bfc100e8:	14f60002 	bne	a3,s6,bfc100f4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:129
bfc100ec:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:131
bfc100f0:	26730001 	addiu	s3,s3,1

bfc100f4 <inst_error>:
/home/csy/func/inst/n74_sh_ades_ex.S:134
bfc100f4:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n74_sh_ades_ex.S:135
bfc100f8:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n74_sh_ades_ex.S:136
bfc100fc:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n74_sh_ades_ex.S:137
bfc10100:	03e00008 	jr	ra
/home/csy/func/inst/n74_sh_ades_ex.S:138
bfc10104:	00000000 	nop
	...

bfc10110 <n60_lbu_test>:
/home/csy/func/inst/n60_lbu.S:7
bfc10110:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n60_lbu.S:8
bfc10114:	24120000 	li	s2,0
/home/csy/func/inst/n60_lbu.S:10
bfc10118:	3c0979db 	lui	t1,0x79db
bfc1011c:	3529f0ff 	ori	t1,t1,0xf0ff
bfc10120:	3c08800d 	lui	t0,0x800d
bfc10124:	35085498 	ori	t0,t0,0x5498
bfc10128:	240300ff 	li	v1,255
bfc1012c:	ad091408 	sw	t1,5128(t0)
bfc10130:	25040004 	addiu	a0,t0,4
bfc10134:	2505fff8 	addiu	a1,t0,-8
bfc10138:	ac841408 	sw	a0,5128(a0)
bfc1013c:	aca51408 	sw	a1,5128(a1)
bfc10140:	91021408 	lbu	v0,5128(t0)
bfc10144:	8c851408 	lw	a1,5128(a0)
bfc10148:	8ca41408 	lw	a0,5128(a1)
bfc1014c:	8ca61408 	lw	a2,5128(a1)
bfc10150:	14430974 	bne	v0,v1,bfc12724 <inst_error>
bfc10154:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:11
bfc10158:	3c099b5b 	lui	t1,0x9b5b
bfc1015c:	3529ab6c 	ori	t1,t1,0xab6c
bfc10160:	3c08800d 	lui	t0,0x800d
bfc10164:	35084430 	ori	t0,t0,0x4430
bfc10168:	2403005b 	li	v1,91
bfc1016c:	ad09252c 	sw	t1,9516(t0)
bfc10170:	25040004 	addiu	a0,t0,4
bfc10174:	2505fff8 	addiu	a1,t0,-8
bfc10178:	ac84252c 	sw	a0,9516(a0)
bfc1017c:	aca5252c 	sw	a1,9516(a1)
bfc10180:	9102252e 	lbu	v0,9518(t0)
bfc10184:	8c85252c 	lw	a1,9516(a0)
bfc10188:	8ca4252c 	lw	a0,9516(a1)
bfc1018c:	8ca6252c 	lw	a2,9516(a1)
bfc10190:	14430964 	bne	v0,v1,bfc12724 <inst_error>
bfc10194:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:12
bfc10198:	3c09d156 	lui	t1,0xd156
bfc1019c:	3529f470 	ori	t1,t1,0xf470
bfc101a0:	3c08800d 	lui	t0,0x800d
bfc101a4:	350845d8 	ori	t0,t0,0x45d8
bfc101a8:	240300d1 	li	v1,209
bfc101ac:	ad097608 	sw	t1,30216(t0)
bfc101b0:	25040004 	addiu	a0,t0,4
bfc101b4:	2505fff8 	addiu	a1,t0,-8
bfc101b8:	ac847608 	sw	a0,30216(a0)
bfc101bc:	aca57608 	sw	a1,30216(a1)
bfc101c0:	9102760b 	lbu	v0,30219(t0)
bfc101c4:	8c857608 	lw	a1,30216(a0)
bfc101c8:	8ca47608 	lw	a0,30216(a1)
bfc101cc:	8ca67608 	lw	a2,30216(a1)
bfc101d0:	14430954 	bne	v0,v1,bfc12724 <inst_error>
bfc101d4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:13
bfc101d8:	3c094d85 	lui	t1,0x4d85
bfc101dc:	352964c0 	ori	t1,t1,0x64c0
bfc101e0:	3c08800d 	lui	t0,0x800d
bfc101e4:	3508abac 	ori	t0,t0,0xabac
bfc101e8:	240300c0 	li	v1,192
bfc101ec:	ad095180 	sw	t1,20864(t0)
bfc101f0:	25040004 	addiu	a0,t0,4
bfc101f4:	2505fff8 	addiu	a1,t0,-8
bfc101f8:	ac845180 	sw	a0,20864(a0)
bfc101fc:	aca55180 	sw	a1,20864(a1)
bfc10200:	91025180 	lbu	v0,20864(t0)
bfc10204:	8c855180 	lw	a1,20864(a0)
bfc10208:	8ca45180 	lw	a0,20864(a1)
bfc1020c:	8ca65180 	lw	a2,20864(a1)
bfc10210:	14430944 	bne	v0,v1,bfc12724 <inst_error>
bfc10214:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:14
bfc10218:	3c09927c 	lui	t1,0x927c
bfc1021c:	35299930 	ori	t1,t1,0x9930
bfc10220:	3c08800d 	lui	t0,0x800d
bfc10224:	3508ae00 	ori	t0,t0,0xae00
bfc10228:	24030030 	li	v1,48
bfc1022c:	ad094a28 	sw	t1,18984(t0)
bfc10230:	25040004 	addiu	a0,t0,4
bfc10234:	2505fff8 	addiu	a1,t0,-8
bfc10238:	ac844a28 	sw	a0,18984(a0)
bfc1023c:	aca54a28 	sw	a1,18984(a1)
bfc10240:	91024a28 	lbu	v0,18984(t0)
bfc10244:	8c854a28 	lw	a1,18984(a0)
bfc10248:	8ca44a28 	lw	a0,18984(a1)
bfc1024c:	8ca64a28 	lw	a2,18984(a1)
bfc10250:	14430934 	bne	v0,v1,bfc12724 <inst_error>
bfc10254:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:15
bfc10258:	3c099ec5 	lui	t1,0x9ec5
bfc1025c:	3529966a 	ori	t1,t1,0x966a
bfc10260:	3c08800d 	lui	t0,0x800d
bfc10264:	350872b8 	ori	t0,t0,0x72b8
bfc10268:	2403006a 	li	v1,106
bfc1026c:	ad091e9c 	sw	t1,7836(t0)
bfc10270:	25040004 	addiu	a0,t0,4
bfc10274:	2505fff8 	addiu	a1,t0,-8
bfc10278:	ac841e9c 	sw	a0,7836(a0)
bfc1027c:	aca51e9c 	sw	a1,7836(a1)
bfc10280:	91021e9c 	lbu	v0,7836(t0)
bfc10284:	8c851e9c 	lw	a1,7836(a0)
bfc10288:	8ca41e9c 	lw	a0,7836(a1)
bfc1028c:	8ca61e9c 	lw	a2,7836(a1)
bfc10290:	14430924 	bne	v0,v1,bfc12724 <inst_error>
bfc10294:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:16
bfc10298:	3c0913f9 	lui	t1,0x13f9
bfc1029c:	35291e58 	ori	t1,t1,0x1e58
bfc102a0:	3c08800d 	lui	t0,0x800d
bfc102a4:	35081f30 	ori	t0,t0,0x1f30
bfc102a8:	24030058 	li	v1,88
bfc102ac:	3c010001 	lui	at,0x1
bfc102b0:	00280821 	addu	at,at,t0
bfc102b4:	ac29b600 	sw	t1,-18944(at)
bfc102b8:	25040004 	addiu	a0,t0,4
bfc102bc:	2505fff8 	addiu	a1,t0,-8
bfc102c0:	3c010001 	lui	at,0x1
bfc102c4:	00240821 	addu	at,at,a0
bfc102c8:	ac24b600 	sw	a0,-18944(at)
bfc102cc:	3c010001 	lui	at,0x1
bfc102d0:	00250821 	addu	at,at,a1
bfc102d4:	ac25b600 	sw	a1,-18944(at)
bfc102d8:	3c020001 	lui	v0,0x1
bfc102dc:	00481021 	addu	v0,v0,t0
bfc102e0:	9042b600 	lbu	v0,-18944(v0)
bfc102e4:	3c050001 	lui	a1,0x1
bfc102e8:	00a42821 	addu	a1,a1,a0
bfc102ec:	8ca5b600 	lw	a1,-18944(a1)
bfc102f0:	3c040001 	lui	a0,0x1
bfc102f4:	00852021 	addu	a0,a0,a1
bfc102f8:	8c84b600 	lw	a0,-18944(a0)
bfc102fc:	3c060001 	lui	a2,0x1
bfc10300:	00c53021 	addu	a2,a2,a1
bfc10304:	8cc6b600 	lw	a2,-18944(a2)
bfc10308:	14430906 	bne	v0,v1,bfc12724 <inst_error>
bfc1030c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:17
bfc10310:	3c090249 	lui	t1,0x249
bfc10314:	3529eebd 	ori	t1,t1,0xeebd
bfc10318:	3c08800d 	lui	t0,0x800d
bfc1031c:	35083d28 	ori	t0,t0,0x3d28
bfc10320:	240300bd 	li	v1,189
bfc10324:	ad097e74 	sw	t1,32372(t0)
bfc10328:	25040004 	addiu	a0,t0,4
bfc1032c:	2505fff8 	addiu	a1,t0,-8
bfc10330:	ac847e74 	sw	a0,32372(a0)
bfc10334:	aca57e74 	sw	a1,32372(a1)
bfc10338:	91027e74 	lbu	v0,32372(t0)
bfc1033c:	8c857e74 	lw	a1,32372(a0)
bfc10340:	8ca47e74 	lw	a0,32372(a1)
bfc10344:	8ca67e74 	lw	a2,32372(a1)
bfc10348:	144308f6 	bne	v0,v1,bfc12724 <inst_error>
bfc1034c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:18
bfc10350:	3c094d40 	lui	t1,0x4d40
bfc10354:	3529dd0e 	ori	t1,t1,0xdd0e
bfc10358:	3c08800d 	lui	t0,0x800d
bfc1035c:	35082c50 	ori	t0,t0,0x2c50
bfc10360:	24030040 	li	v1,64
bfc10364:	3c010001 	lui	at,0x1
bfc10368:	00280821 	addu	at,at,t0
bfc1036c:	ac29c2d0 	sw	t1,-15664(at)
bfc10370:	25040004 	addiu	a0,t0,4
bfc10374:	2505fff8 	addiu	a1,t0,-8
bfc10378:	3c010001 	lui	at,0x1
bfc1037c:	00240821 	addu	at,at,a0
bfc10380:	ac24c2d0 	sw	a0,-15664(at)
bfc10384:	3c010001 	lui	at,0x1
bfc10388:	00250821 	addu	at,at,a1
bfc1038c:	ac25c2d0 	sw	a1,-15664(at)
bfc10390:	3c020001 	lui	v0,0x1
bfc10394:	00481021 	addu	v0,v0,t0
bfc10398:	9042c2d2 	lbu	v0,-15662(v0)
bfc1039c:	3c050001 	lui	a1,0x1
bfc103a0:	00a42821 	addu	a1,a1,a0
bfc103a4:	8ca5c2d0 	lw	a1,-15664(a1)
bfc103a8:	3c040001 	lui	a0,0x1
bfc103ac:	00852021 	addu	a0,a0,a1
bfc103b0:	8c84c2d0 	lw	a0,-15664(a0)
bfc103b4:	3c060001 	lui	a2,0x1
bfc103b8:	00c53021 	addu	a2,a2,a1
bfc103bc:	8cc6c2d0 	lw	a2,-15664(a2)
bfc103c0:	144308d8 	bne	v0,v1,bfc12724 <inst_error>
bfc103c4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:19
bfc103c8:	3c091dd0 	lui	t1,0x1dd0
bfc103cc:	352943a8 	ori	t1,t1,0x43a8
bfc103d0:	3c08800d 	lui	t0,0x800d
bfc103d4:	35086a7c 	ori	t0,t0,0x6a7c
bfc103d8:	240300a8 	li	v1,168
bfc103dc:	ad0930f8 	sw	t1,12536(t0)
bfc103e0:	25040004 	addiu	a0,t0,4
bfc103e4:	2505fff8 	addiu	a1,t0,-8
bfc103e8:	ac8430f8 	sw	a0,12536(a0)
bfc103ec:	aca530f8 	sw	a1,12536(a1)
bfc103f0:	910230f8 	lbu	v0,12536(t0)
bfc103f4:	8c8530f8 	lw	a1,12536(a0)
bfc103f8:	8ca430f8 	lw	a0,12536(a1)
bfc103fc:	8ca630f8 	lw	a2,12536(a1)
bfc10400:	144308c8 	bne	v0,v1,bfc12724 <inst_error>
bfc10404:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:20
bfc10408:	3c09ed11 	lui	t1,0xed11
bfc1040c:	35291118 	ori	t1,t1,0x1118
bfc10410:	3c08800d 	lui	t0,0x800d
bfc10414:	350842b4 	ori	t0,t0,0x42b4
bfc10418:	24030018 	li	v1,24
bfc1041c:	ad092b60 	sw	t1,11104(t0)
bfc10420:	25040004 	addiu	a0,t0,4
bfc10424:	2505fff8 	addiu	a1,t0,-8
bfc10428:	ac842b60 	sw	a0,11104(a0)
bfc1042c:	aca52b60 	sw	a1,11104(a1)
bfc10430:	91022b60 	lbu	v0,11104(t0)
bfc10434:	8c852b60 	lw	a1,11104(a0)
bfc10438:	8ca42b60 	lw	a0,11104(a1)
bfc1043c:	8ca62b60 	lw	a2,11104(a1)
bfc10440:	144308b8 	bne	v0,v1,bfc12724 <inst_error>
bfc10444:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:21
bfc10448:	3c096937 	lui	t1,0x6937
bfc1044c:	3529c000 	ori	t1,t1,0xc000
bfc10450:	3c08800d 	lui	t0,0x800d
bfc10454:	3508e7f0 	ori	t0,t0,0xe7f0
bfc10458:	240300c0 	li	v1,192
bfc1045c:	ad090748 	sw	t1,1864(t0)
bfc10460:	25040004 	addiu	a0,t0,4
bfc10464:	2505fff8 	addiu	a1,t0,-8
bfc10468:	ac840748 	sw	a0,1864(a0)
bfc1046c:	aca50748 	sw	a1,1864(a1)
bfc10470:	91020749 	lbu	v0,1865(t0)
bfc10474:	8c850748 	lw	a1,1864(a0)
bfc10478:	8ca40748 	lw	a0,1864(a1)
bfc1047c:	8ca60748 	lw	a2,1864(a1)
bfc10480:	144308a8 	bne	v0,v1,bfc12724 <inst_error>
bfc10484:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:22
bfc10488:	3c09e4f7 	lui	t1,0xe4f7
bfc1048c:	35296a00 	ori	t1,t1,0x6a00
bfc10490:	3c08800d 	lui	t0,0x800d
bfc10494:	3508a130 	ori	t0,t0,0xa130
bfc10498:	24030000 	li	v1,0
bfc1049c:	ad090768 	sw	t1,1896(t0)
bfc104a0:	25040004 	addiu	a0,t0,4
bfc104a4:	2505fff8 	addiu	a1,t0,-8
bfc104a8:	ac840768 	sw	a0,1896(a0)
bfc104ac:	aca50768 	sw	a1,1896(a1)
bfc104b0:	91020768 	lbu	v0,1896(t0)
bfc104b4:	8c850768 	lw	a1,1896(a0)
bfc104b8:	8ca40768 	lw	a0,1896(a1)
bfc104bc:	8ca60768 	lw	a2,1896(a1)
bfc104c0:	14430898 	bne	v0,v1,bfc12724 <inst_error>
bfc104c4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:23
bfc104c8:	3c09ee33 	lui	t1,0xee33
bfc104cc:	3529dcd0 	ori	t1,t1,0xdcd0
bfc104d0:	3c08800d 	lui	t0,0x800d
bfc104d4:	3508bc2c 	ori	t0,t0,0xbc2c
bfc104d8:	240300d0 	li	v1,208
bfc104dc:	ad091868 	sw	t1,6248(t0)
bfc104e0:	25040004 	addiu	a0,t0,4
bfc104e4:	2505fff8 	addiu	a1,t0,-8
bfc104e8:	ac841868 	sw	a0,6248(a0)
bfc104ec:	aca51868 	sw	a1,6248(a1)
bfc104f0:	91021868 	lbu	v0,6248(t0)
bfc104f4:	8c851868 	lw	a1,6248(a0)
bfc104f8:	8ca41868 	lw	a0,6248(a1)
bfc104fc:	8ca61868 	lw	a2,6248(a1)
bfc10500:	14430888 	bne	v0,v1,bfc12724 <inst_error>
bfc10504:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:24
bfc10508:	3c09a6a6 	lui	t1,0xa6a6
bfc1050c:	35297232 	ori	t1,t1,0x7232
bfc10510:	3c08800d 	lui	t0,0x800d
bfc10514:	35088b40 	ori	t0,t0,0x8b40
bfc10518:	240300a6 	li	v1,166
bfc1051c:	ad092f04 	sw	t1,12036(t0)
bfc10520:	25040004 	addiu	a0,t0,4
bfc10524:	2505fff8 	addiu	a1,t0,-8
bfc10528:	ac842f04 	sw	a0,12036(a0)
bfc1052c:	aca52f04 	sw	a1,12036(a1)
bfc10530:	91022f07 	lbu	v0,12039(t0)
bfc10534:	8c852f04 	lw	a1,12036(a0)
bfc10538:	8ca42f04 	lw	a0,12036(a1)
bfc1053c:	8ca62f04 	lw	a2,12036(a1)
bfc10540:	14430878 	bne	v0,v1,bfc12724 <inst_error>
bfc10544:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:25
bfc10548:	3c092c62 	lui	t1,0x2c62
bfc1054c:	3529e6d4 	ori	t1,t1,0xe6d4
bfc10550:	3c08800d 	lui	t0,0x800d
bfc10554:	35083cd4 	ori	t0,t0,0x3cd4
bfc10558:	240300d4 	li	v1,212
bfc1055c:	ad090270 	sw	t1,624(t0)
bfc10560:	25040004 	addiu	a0,t0,4
bfc10564:	2505fff8 	addiu	a1,t0,-8
bfc10568:	ac840270 	sw	a0,624(a0)
bfc1056c:	aca50270 	sw	a1,624(a1)
bfc10570:	91020270 	lbu	v0,624(t0)
bfc10574:	8c850270 	lw	a1,624(a0)
bfc10578:	8ca40270 	lw	a0,624(a1)
bfc1057c:	8ca60270 	lw	a2,624(a1)
bfc10580:	14430868 	bne	v0,v1,bfc12724 <inst_error>
bfc10584:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:26
bfc10588:	3c09dbe7 	lui	t1,0xdbe7
bfc1058c:	35295a30 	ori	t1,t1,0x5a30
bfc10590:	3c08800d 	lui	t0,0x800d
bfc10594:	35082854 	ori	t0,t0,0x2854
bfc10598:	240300e7 	li	v1,231
bfc1059c:	ad090664 	sw	t1,1636(t0)
bfc105a0:	25040004 	addiu	a0,t0,4
bfc105a4:	2505fff8 	addiu	a1,t0,-8
bfc105a8:	ac840664 	sw	a0,1636(a0)
bfc105ac:	aca50664 	sw	a1,1636(a1)
bfc105b0:	91020666 	lbu	v0,1638(t0)
bfc105b4:	8c850664 	lw	a1,1636(a0)
bfc105b8:	8ca40664 	lw	a0,1636(a1)
bfc105bc:	8ca60664 	lw	a2,1636(a1)
bfc105c0:	14430858 	bne	v0,v1,bfc12724 <inst_error>
bfc105c4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:27
bfc105c8:	3c09d220 	lui	t1,0xd220
bfc105cc:	35291348 	ori	t1,t1,0x1348
bfc105d0:	3c08800d 	lui	t0,0x800d
bfc105d4:	35088b40 	ori	t0,t0,0x8b40
bfc105d8:	24030013 	li	v1,19
bfc105dc:	ad092bc0 	sw	t1,11200(t0)
bfc105e0:	25040004 	addiu	a0,t0,4
bfc105e4:	2505fff8 	addiu	a1,t0,-8
bfc105e8:	ac842bc0 	sw	a0,11200(a0)
bfc105ec:	aca52bc0 	sw	a1,11200(a1)
bfc105f0:	91022bc1 	lbu	v0,11201(t0)
bfc105f4:	8c852bc0 	lw	a1,11200(a0)
bfc105f8:	8ca42bc0 	lw	a0,11200(a1)
bfc105fc:	8ca62bc0 	lw	a2,11200(a1)
bfc10600:	14430848 	bne	v0,v1,bfc12724 <inst_error>
bfc10604:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:28
bfc10608:	3c09bc50 	lui	t1,0xbc50
bfc1060c:	35299f3c 	ori	t1,t1,0x9f3c
bfc10610:	3c08800d 	lui	t0,0x800d
bfc10614:	35080910 	ori	t0,t0,0x910
bfc10618:	240300bc 	li	v1,188
bfc1061c:	3c010001 	lui	at,0x1
bfc10620:	00280821 	addu	at,at,t0
bfc10624:	ac2981c0 	sw	t1,-32320(at)
bfc10628:	25040004 	addiu	a0,t0,4
bfc1062c:	2505fff8 	addiu	a1,t0,-8
bfc10630:	3c010001 	lui	at,0x1
bfc10634:	00240821 	addu	at,at,a0
bfc10638:	ac2481c0 	sw	a0,-32320(at)
bfc1063c:	3c010001 	lui	at,0x1
bfc10640:	00250821 	addu	at,at,a1
bfc10644:	ac2581c0 	sw	a1,-32320(at)
bfc10648:	3c020001 	lui	v0,0x1
bfc1064c:	00481021 	addu	v0,v0,t0
bfc10650:	904281c3 	lbu	v0,-32317(v0)
bfc10654:	3c050001 	lui	a1,0x1
bfc10658:	00a42821 	addu	a1,a1,a0
bfc1065c:	8ca581c0 	lw	a1,-32320(a1)
bfc10660:	3c040001 	lui	a0,0x1
bfc10664:	00852021 	addu	a0,a0,a1
bfc10668:	8c8481c0 	lw	a0,-32320(a0)
bfc1066c:	3c060001 	lui	a2,0x1
bfc10670:	00c53021 	addu	a2,a2,a1
bfc10674:	8cc681c0 	lw	a2,-32320(a2)
bfc10678:	1443082a 	bne	v0,v1,bfc12724 <inst_error>
bfc1067c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:29
bfc10680:	3c09d03b 	lui	t1,0xd03b
bfc10684:	3529b99a 	ori	t1,t1,0xb99a
bfc10688:	3c08800d 	lui	t0,0x800d
bfc1068c:	35082a84 	ori	t0,t0,0x2a84
bfc10690:	2403009a 	li	v1,154
bfc10694:	ad093780 	sw	t1,14208(t0)
bfc10698:	25040004 	addiu	a0,t0,4
bfc1069c:	2505fff8 	addiu	a1,t0,-8
bfc106a0:	ac843780 	sw	a0,14208(a0)
bfc106a4:	aca53780 	sw	a1,14208(a1)
bfc106a8:	91023780 	lbu	v0,14208(t0)
bfc106ac:	8c853780 	lw	a1,14208(a0)
bfc106b0:	8ca43780 	lw	a0,14208(a1)
bfc106b4:	8ca63780 	lw	a2,14208(a1)
bfc106b8:	1443081a 	bne	v0,v1,bfc12724 <inst_error>
bfc106bc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:30
bfc106c0:	3c09c1da 	lui	t1,0xc1da
bfc106c4:	35293a60 	ori	t1,t1,0x3a60
bfc106c8:	3c08800d 	lui	t0,0x800d
bfc106cc:	350891c0 	ori	t0,t0,0x91c0
bfc106d0:	24030060 	li	v1,96
bfc106d4:	ad0954d0 	sw	t1,21712(t0)
bfc106d8:	25040004 	addiu	a0,t0,4
bfc106dc:	2505fff8 	addiu	a1,t0,-8
bfc106e0:	ac8454d0 	sw	a0,21712(a0)
bfc106e4:	aca554d0 	sw	a1,21712(a1)
bfc106e8:	910254d0 	lbu	v0,21712(t0)
bfc106ec:	8c8554d0 	lw	a1,21712(a0)
bfc106f0:	8ca454d0 	lw	a0,21712(a1)
bfc106f4:	8ca654d0 	lw	a2,21712(a1)
bfc106f8:	1443080a 	bne	v0,v1,bfc12724 <inst_error>
bfc106fc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:31
bfc10700:	3c092c56 	lui	t1,0x2c56
bfc10704:	3529dcf0 	ori	t1,t1,0xdcf0
bfc10708:	3c08800d 	lui	t0,0x800d
bfc1070c:	35086094 	ori	t0,t0,0x6094
bfc10710:	24030056 	li	v1,86
bfc10714:	ad094c84 	sw	t1,19588(t0)
bfc10718:	25040004 	addiu	a0,t0,4
bfc1071c:	2505fff8 	addiu	a1,t0,-8
bfc10720:	ac844c84 	sw	a0,19588(a0)
bfc10724:	aca54c84 	sw	a1,19588(a1)
bfc10728:	91024c86 	lbu	v0,19590(t0)
bfc1072c:	8c854c84 	lw	a1,19588(a0)
bfc10730:	8ca44c84 	lw	a0,19588(a1)
bfc10734:	8ca64c84 	lw	a2,19588(a1)
bfc10738:	144307fa 	bne	v0,v1,bfc12724 <inst_error>
bfc1073c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:32
bfc10740:	3c09f4a5 	lui	t1,0xf4a5
bfc10744:	35293d22 	ori	t1,t1,0x3d22
bfc10748:	3c08800d 	lui	t0,0x800d
bfc1074c:	35080384 	ori	t0,t0,0x384
bfc10750:	240300a5 	li	v1,165
bfc10754:	ad095324 	sw	t1,21284(t0)
bfc10758:	25040004 	addiu	a0,t0,4
bfc1075c:	2505fff8 	addiu	a1,t0,-8
bfc10760:	ac845324 	sw	a0,21284(a0)
bfc10764:	aca55324 	sw	a1,21284(a1)
bfc10768:	91025326 	lbu	v0,21286(t0)
bfc1076c:	8c855324 	lw	a1,21284(a0)
bfc10770:	8ca45324 	lw	a0,21284(a1)
bfc10774:	8ca65324 	lw	a2,21284(a1)
bfc10778:	144307ea 	bne	v0,v1,bfc12724 <inst_error>
bfc1077c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:33
bfc10780:	3c0944b6 	lui	t1,0x44b6
bfc10784:	35296444 	ori	t1,t1,0x6444
bfc10788:	3c08800d 	lui	t0,0x800d
bfc1078c:	35089c48 	ori	t0,t0,0x9c48
bfc10790:	24030044 	li	v1,68
bfc10794:	ad093580 	sw	t1,13696(t0)
bfc10798:	25040004 	addiu	a0,t0,4
bfc1079c:	2505fff8 	addiu	a1,t0,-8
bfc107a0:	ac843580 	sw	a0,13696(a0)
bfc107a4:	aca53580 	sw	a1,13696(a1)
bfc107a8:	91023580 	lbu	v0,13696(t0)
bfc107ac:	8c853580 	lw	a1,13696(a0)
bfc107b0:	8ca43580 	lw	a0,13696(a1)
bfc107b4:	8ca63580 	lw	a2,13696(a1)
bfc107b8:	144307da 	bne	v0,v1,bfc12724 <inst_error>
bfc107bc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:34
bfc107c0:	3c092982 	lui	t1,0x2982
bfc107c4:	3529f7ac 	ori	t1,t1,0xf7ac
bfc107c8:	3c08800d 	lui	t0,0x800d
bfc107cc:	35080a18 	ori	t0,t0,0xa18
bfc107d0:	240300ac 	li	v1,172
bfc107d4:	ad091208 	sw	t1,4616(t0)
bfc107d8:	25040004 	addiu	a0,t0,4
bfc107dc:	2505fff8 	addiu	a1,t0,-8
bfc107e0:	ac841208 	sw	a0,4616(a0)
bfc107e4:	aca51208 	sw	a1,4616(a1)
bfc107e8:	91021208 	lbu	v0,4616(t0)
bfc107ec:	8c851208 	lw	a1,4616(a0)
bfc107f0:	8ca41208 	lw	a0,4616(a1)
bfc107f4:	8ca61208 	lw	a2,4616(a1)
bfc107f8:	144307ca 	bne	v0,v1,bfc12724 <inst_error>
bfc107fc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:35
bfc10800:	3c099089 	lui	t1,0x9089
bfc10804:	35295498 	ori	t1,t1,0x5498
bfc10808:	3c08800d 	lui	t0,0x800d
bfc1080c:	35086210 	ori	t0,t0,0x6210
bfc10810:	24030098 	li	v1,152
bfc10814:	ad09759c 	sw	t1,30108(t0)
bfc10818:	25040004 	addiu	a0,t0,4
bfc1081c:	2505fff8 	addiu	a1,t0,-8
bfc10820:	ac84759c 	sw	a0,30108(a0)
bfc10824:	aca5759c 	sw	a1,30108(a1)
bfc10828:	9102759c 	lbu	v0,30108(t0)
bfc1082c:	8c85759c 	lw	a1,30108(a0)
bfc10830:	8ca4759c 	lw	a0,30108(a1)
bfc10834:	8ca6759c 	lw	a2,30108(a1)
bfc10838:	144307ba 	bne	v0,v1,bfc12724 <inst_error>
bfc1083c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:36
bfc10840:	3c0971d0 	lui	t1,0x71d0
bfc10844:	35294400 	ori	t1,t1,0x4400
bfc10848:	3c08800d 	lui	t0,0x800d
bfc1084c:	35081d08 	ori	t0,t0,0x1d08
bfc10850:	24030071 	li	v1,113
bfc10854:	ad096fac 	sw	t1,28588(t0)
bfc10858:	25040004 	addiu	a0,t0,4
bfc1085c:	2505fff8 	addiu	a1,t0,-8
bfc10860:	ac846fac 	sw	a0,28588(a0)
bfc10864:	aca56fac 	sw	a1,28588(a1)
bfc10868:	91026faf 	lbu	v0,28591(t0)
bfc1086c:	8c856fac 	lw	a1,28588(a0)
bfc10870:	8ca46fac 	lw	a0,28588(a1)
bfc10874:	8ca66fac 	lw	a2,28588(a1)
bfc10878:	144307aa 	bne	v0,v1,bfc12724 <inst_error>
bfc1087c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:37
bfc10880:	3c09244f 	lui	t1,0x244f
bfc10884:	35292870 	ori	t1,t1,0x2870
bfc10888:	3c08800d 	lui	t0,0x800d
bfc1088c:	35081f50 	ori	t0,t0,0x1f50
bfc10890:	24030028 	li	v1,40
bfc10894:	3c010001 	lui	at,0x1
bfc10898:	00280821 	addu	at,at,t0
bfc1089c:	ac29a4c8 	sw	t1,-23352(at)
bfc108a0:	25040004 	addiu	a0,t0,4
bfc108a4:	2505fff8 	addiu	a1,t0,-8
bfc108a8:	3c010001 	lui	at,0x1
bfc108ac:	00240821 	addu	at,at,a0
bfc108b0:	ac24a4c8 	sw	a0,-23352(at)
bfc108b4:	3c010001 	lui	at,0x1
bfc108b8:	00250821 	addu	at,at,a1
bfc108bc:	ac25a4c8 	sw	a1,-23352(at)
bfc108c0:	3c020001 	lui	v0,0x1
bfc108c4:	00481021 	addu	v0,v0,t0
bfc108c8:	9042a4c9 	lbu	v0,-23351(v0)
bfc108cc:	3c050001 	lui	a1,0x1
bfc108d0:	00a42821 	addu	a1,a1,a0
bfc108d4:	8ca5a4c8 	lw	a1,-23352(a1)
bfc108d8:	3c040001 	lui	a0,0x1
bfc108dc:	00852021 	addu	a0,a0,a1
bfc108e0:	8c84a4c8 	lw	a0,-23352(a0)
bfc108e4:	3c060001 	lui	a2,0x1
bfc108e8:	00c53021 	addu	a2,a2,a1
bfc108ec:	8cc6a4c8 	lw	a2,-23352(a2)
bfc108f0:	1443078c 	bne	v0,v1,bfc12724 <inst_error>
bfc108f4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:38
bfc108f8:	3c0960bd 	lui	t1,0x60bd
bfc108fc:	3529b8c0 	ori	t1,t1,0xb8c0
bfc10900:	3c08800d 	lui	t0,0x800d
bfc10904:	350860e0 	ori	t0,t0,0x60e0
bfc10908:	240300c0 	li	v1,192
bfc1090c:	3c010001 	lui	at,0x1
bfc10910:	00280821 	addu	at,at,t0
bfc10914:	ac299944 	sw	t1,-26300(at)
bfc10918:	25040004 	addiu	a0,t0,4
bfc1091c:	2505fff8 	addiu	a1,t0,-8
bfc10920:	3c010001 	lui	at,0x1
bfc10924:	00240821 	addu	at,at,a0
bfc10928:	ac249944 	sw	a0,-26300(at)
bfc1092c:	3c010001 	lui	at,0x1
bfc10930:	00250821 	addu	at,at,a1
bfc10934:	ac259944 	sw	a1,-26300(at)
bfc10938:	3c020001 	lui	v0,0x1
bfc1093c:	00481021 	addu	v0,v0,t0
bfc10940:	90429944 	lbu	v0,-26300(v0)
bfc10944:	3c050001 	lui	a1,0x1
bfc10948:	00a42821 	addu	a1,a1,a0
bfc1094c:	8ca59944 	lw	a1,-26300(a1)
bfc10950:	3c040001 	lui	a0,0x1
bfc10954:	00852021 	addu	a0,a0,a1
bfc10958:	8c849944 	lw	a0,-26300(a0)
bfc1095c:	3c060001 	lui	a2,0x1
bfc10960:	00c53021 	addu	a2,a2,a1
bfc10964:	8cc69944 	lw	a2,-26300(a2)
bfc10968:	1443076e 	bne	v0,v1,bfc12724 <inst_error>
bfc1096c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:39
bfc10970:	3c09952b 	lui	t1,0x952b
bfc10974:	3529094a 	ori	t1,t1,0x94a
bfc10978:	3c08800d 	lui	t0,0x800d
bfc1097c:	35084a94 	ori	t0,t0,0x4a94
bfc10980:	2403004a 	li	v1,74
bfc10984:	ad095700 	sw	t1,22272(t0)
bfc10988:	25040004 	addiu	a0,t0,4
bfc1098c:	2505fff8 	addiu	a1,t0,-8
bfc10990:	ac845700 	sw	a0,22272(a0)
bfc10994:	aca55700 	sw	a1,22272(a1)
bfc10998:	91025700 	lbu	v0,22272(t0)
bfc1099c:	8c855700 	lw	a1,22272(a0)
bfc109a0:	8ca45700 	lw	a0,22272(a1)
bfc109a4:	8ca65700 	lw	a2,22272(a1)
bfc109a8:	1443075e 	bne	v0,v1,bfc12724 <inst_error>
bfc109ac:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:40
bfc109b0:	3c09407a 	lui	t1,0x407a
bfc109b4:	35298b80 	ori	t1,t1,0x8b80
bfc109b8:	3c08800d 	lui	t0,0x800d
bfc109bc:	3508bb68 	ori	t0,t0,0xbb68
bfc109c0:	24030080 	li	v1,128
bfc109c4:	ad093d78 	sw	t1,15736(t0)
bfc109c8:	25040004 	addiu	a0,t0,4
bfc109cc:	2505fff8 	addiu	a1,t0,-8
bfc109d0:	ac843d78 	sw	a0,15736(a0)
bfc109d4:	aca53d78 	sw	a1,15736(a1)
bfc109d8:	91023d78 	lbu	v0,15736(t0)
bfc109dc:	8c853d78 	lw	a1,15736(a0)
bfc109e0:	8ca43d78 	lw	a0,15736(a1)
bfc109e4:	8ca63d78 	lw	a2,15736(a1)
bfc109e8:	1443074e 	bne	v0,v1,bfc12724 <inst_error>
bfc109ec:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:41
bfc109f0:	3c091ca9 	lui	t1,0x1ca9
bfc109f4:	35293e6d 	ori	t1,t1,0x3e6d
bfc109f8:	3c08800d 	lui	t0,0x800d
bfc109fc:	35080c60 	ori	t0,t0,0xc60
bfc10a00:	2403006d 	li	v1,109
bfc10a04:	ad097e14 	sw	t1,32276(t0)
bfc10a08:	25040004 	addiu	a0,t0,4
bfc10a0c:	2505fff8 	addiu	a1,t0,-8
bfc10a10:	ac847e14 	sw	a0,32276(a0)
bfc10a14:	aca57e14 	sw	a1,32276(a1)
bfc10a18:	91027e14 	lbu	v0,32276(t0)
bfc10a1c:	8c857e14 	lw	a1,32276(a0)
bfc10a20:	8ca47e14 	lw	a0,32276(a1)
bfc10a24:	8ca67e14 	lw	a2,32276(a1)
bfc10a28:	1443073e 	bne	v0,v1,bfc12724 <inst_error>
bfc10a2c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:42
bfc10a30:	3c09cbb3 	lui	t1,0xcbb3
bfc10a34:	35295de0 	ori	t1,t1,0x5de0
bfc10a38:	3c08800d 	lui	t0,0x800d
bfc10a3c:	35082358 	ori	t0,t0,0x2358
bfc10a40:	240300e0 	li	v1,224
bfc10a44:	ad0924e0 	sw	t1,9440(t0)
bfc10a48:	25040004 	addiu	a0,t0,4
bfc10a4c:	2505fff8 	addiu	a1,t0,-8
bfc10a50:	ac8424e0 	sw	a0,9440(a0)
bfc10a54:	aca524e0 	sw	a1,9440(a1)
bfc10a58:	910224e0 	lbu	v0,9440(t0)
bfc10a5c:	8c8524e0 	lw	a1,9440(a0)
bfc10a60:	8ca424e0 	lw	a0,9440(a1)
bfc10a64:	8ca624e0 	lw	a2,9440(a1)
bfc10a68:	1443072e 	bne	v0,v1,bfc12724 <inst_error>
bfc10a6c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:43
bfc10a70:	3c098bc6 	lui	t1,0x8bc6
bfc10a74:	35290e3a 	ori	t1,t1,0xe3a
bfc10a78:	3c08800d 	lui	t0,0x800d
bfc10a7c:	35082aa0 	ori	t0,t0,0x2aa0
bfc10a80:	240300c6 	li	v1,198
bfc10a84:	ad093548 	sw	t1,13640(t0)
bfc10a88:	25040004 	addiu	a0,t0,4
bfc10a8c:	2505fff8 	addiu	a1,t0,-8
bfc10a90:	ac843548 	sw	a0,13640(a0)
bfc10a94:	aca53548 	sw	a1,13640(a1)
bfc10a98:	9102354a 	lbu	v0,13642(t0)
bfc10a9c:	8c853548 	lw	a1,13640(a0)
bfc10aa0:	8ca43548 	lw	a0,13640(a1)
bfc10aa4:	8ca63548 	lw	a2,13640(a1)
bfc10aa8:	1443071e 	bne	v0,v1,bfc12724 <inst_error>
bfc10aac:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:44
bfc10ab0:	3c099502 	lui	t1,0x9502
bfc10ab4:	35290f1e 	ori	t1,t1,0xf1e
bfc10ab8:	3c08800d 	lui	t0,0x800d
bfc10abc:	35082008 	ori	t0,t0,0x2008
bfc10ac0:	2403000f 	li	v1,15
bfc10ac4:	ad09320c 	sw	t1,12812(t0)
bfc10ac8:	25040004 	addiu	a0,t0,4
bfc10acc:	2505fff8 	addiu	a1,t0,-8
bfc10ad0:	ac84320c 	sw	a0,12812(a0)
bfc10ad4:	aca5320c 	sw	a1,12812(a1)
bfc10ad8:	9102320d 	lbu	v0,12813(t0)
bfc10adc:	8c85320c 	lw	a1,12812(a0)
bfc10ae0:	8ca4320c 	lw	a0,12812(a1)
bfc10ae4:	8ca6320c 	lw	a2,12812(a1)
bfc10ae8:	1443070e 	bne	v0,v1,bfc12724 <inst_error>
bfc10aec:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:45
bfc10af0:	3c094c60 	lui	t1,0x4c60
bfc10af4:	352982f4 	ori	t1,t1,0x82f4
bfc10af8:	3c08800d 	lui	t0,0x800d
bfc10afc:	350829e8 	ori	t0,t0,0x29e8
bfc10b00:	240300f4 	li	v1,244
bfc10b04:	ad0959ec 	sw	t1,23020(t0)
bfc10b08:	25040004 	addiu	a0,t0,4
bfc10b0c:	2505fff8 	addiu	a1,t0,-8
bfc10b10:	ac8459ec 	sw	a0,23020(a0)
bfc10b14:	aca559ec 	sw	a1,23020(a1)
bfc10b18:	910259ec 	lbu	v0,23020(t0)
bfc10b1c:	8c8559ec 	lw	a1,23020(a0)
bfc10b20:	8ca459ec 	lw	a0,23020(a1)
bfc10b24:	8ca659ec 	lw	a2,23020(a1)
bfc10b28:	144306fe 	bne	v0,v1,bfc12724 <inst_error>
bfc10b2c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:46
bfc10b30:	3c09e8c2 	lui	t1,0xe8c2
bfc10b34:	35299c44 	ori	t1,t1,0x9c44
bfc10b38:	3c08800d 	lui	t0,0x800d
bfc10b3c:	350841e4 	ori	t0,t0,0x41e4
bfc10b40:	240300c2 	li	v1,194
bfc10b44:	ad0930c8 	sw	t1,12488(t0)
bfc10b48:	25040004 	addiu	a0,t0,4
bfc10b4c:	2505fff8 	addiu	a1,t0,-8
bfc10b50:	ac8430c8 	sw	a0,12488(a0)
bfc10b54:	aca530c8 	sw	a1,12488(a1)
bfc10b58:	910230ca 	lbu	v0,12490(t0)
bfc10b5c:	8c8530c8 	lw	a1,12488(a0)
bfc10b60:	8ca430c8 	lw	a0,12488(a1)
bfc10b64:	8ca630c8 	lw	a2,12488(a1)
bfc10b68:	144306ee 	bne	v0,v1,bfc12724 <inst_error>
bfc10b6c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:47
bfc10b70:	3c097dd8 	lui	t1,0x7dd8
bfc10b74:	35299185 	ori	t1,t1,0x9185
bfc10b78:	3c08800d 	lui	t0,0x800d
bfc10b7c:	3508c0a8 	ori	t0,t0,0xc0a8
bfc10b80:	24030085 	li	v1,133
bfc10b84:	ad093184 	sw	t1,12676(t0)
bfc10b88:	25040004 	addiu	a0,t0,4
bfc10b8c:	2505fff8 	addiu	a1,t0,-8
bfc10b90:	ac843184 	sw	a0,12676(a0)
bfc10b94:	aca53184 	sw	a1,12676(a1)
bfc10b98:	91023184 	lbu	v0,12676(t0)
bfc10b9c:	8c853184 	lw	a1,12676(a0)
bfc10ba0:	8ca43184 	lw	a0,12676(a1)
bfc10ba4:	8ca63184 	lw	a2,12676(a1)
bfc10ba8:	144306de 	bne	v0,v1,bfc12724 <inst_error>
bfc10bac:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:48
bfc10bb0:	3c09f2ef 	lui	t1,0xf2ef
bfc10bb4:	35292428 	ori	t1,t1,0x2428
bfc10bb8:	3c08800d 	lui	t0,0x800d
bfc10bbc:	35084478 	ori	t0,t0,0x4478
bfc10bc0:	24030028 	li	v1,40
bfc10bc4:	3c010001 	lui	at,0x1
bfc10bc8:	00280821 	addu	at,at,t0
bfc10bcc:	ac29b5bc 	sw	t1,-19012(at)
bfc10bd0:	25040004 	addiu	a0,t0,4
bfc10bd4:	2505fff8 	addiu	a1,t0,-8
bfc10bd8:	3c010001 	lui	at,0x1
bfc10bdc:	00240821 	addu	at,at,a0
bfc10be0:	ac24b5bc 	sw	a0,-19012(at)
bfc10be4:	3c010001 	lui	at,0x1
bfc10be8:	00250821 	addu	at,at,a1
bfc10bec:	ac25b5bc 	sw	a1,-19012(at)
bfc10bf0:	3c020001 	lui	v0,0x1
bfc10bf4:	00481021 	addu	v0,v0,t0
bfc10bf8:	9042b5bc 	lbu	v0,-19012(v0)
bfc10bfc:	3c050001 	lui	a1,0x1
bfc10c00:	00a42821 	addu	a1,a1,a0
bfc10c04:	8ca5b5bc 	lw	a1,-19012(a1)
bfc10c08:	3c040001 	lui	a0,0x1
bfc10c0c:	00852021 	addu	a0,a0,a1
bfc10c10:	8c84b5bc 	lw	a0,-19012(a0)
bfc10c14:	3c060001 	lui	a2,0x1
bfc10c18:	00c53021 	addu	a2,a2,a1
bfc10c1c:	8cc6b5bc 	lw	a2,-19012(a2)
bfc10c20:	144306c0 	bne	v0,v1,bfc12724 <inst_error>
bfc10c24:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:49
bfc10c28:	3c092789 	lui	t1,0x2789
bfc10c2c:	3529e735 	ori	t1,t1,0xe735
bfc10c30:	3c08800d 	lui	t0,0x800d
bfc10c34:	35088088 	ori	t0,t0,0x8088
bfc10c38:	24030035 	li	v1,53
bfc10c3c:	ad09187c 	sw	t1,6268(t0)
bfc10c40:	25040004 	addiu	a0,t0,4
bfc10c44:	2505fff8 	addiu	a1,t0,-8
bfc10c48:	ac84187c 	sw	a0,6268(a0)
bfc10c4c:	aca5187c 	sw	a1,6268(a1)
bfc10c50:	9102187c 	lbu	v0,6268(t0)
bfc10c54:	8c85187c 	lw	a1,6268(a0)
bfc10c58:	8ca4187c 	lw	a0,6268(a1)
bfc10c5c:	8ca6187c 	lw	a2,6268(a1)
bfc10c60:	144306b0 	bne	v0,v1,bfc12724 <inst_error>
bfc10c64:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:50
bfc10c68:	3c095761 	lui	t1,0x5761
bfc10c6c:	35293900 	ori	t1,t1,0x3900
bfc10c70:	3c08800d 	lui	t0,0x800d
bfc10c74:	35086434 	ori	t0,t0,0x6434
bfc10c78:	24030000 	li	v1,0
bfc10c7c:	3c010001 	lui	at,0x1
bfc10c80:	00280821 	addu	at,at,t0
bfc10c84:	ac2980c8 	sw	t1,-32568(at)
bfc10c88:	25040004 	addiu	a0,t0,4
bfc10c8c:	2505fff8 	addiu	a1,t0,-8
bfc10c90:	3c010001 	lui	at,0x1
bfc10c94:	00240821 	addu	at,at,a0
bfc10c98:	ac2480c8 	sw	a0,-32568(at)
bfc10c9c:	3c010001 	lui	at,0x1
bfc10ca0:	00250821 	addu	at,at,a1
bfc10ca4:	ac2580c8 	sw	a1,-32568(at)
bfc10ca8:	3c020001 	lui	v0,0x1
bfc10cac:	00481021 	addu	v0,v0,t0
bfc10cb0:	904280c8 	lbu	v0,-32568(v0)
bfc10cb4:	3c050001 	lui	a1,0x1
bfc10cb8:	00a42821 	addu	a1,a1,a0
bfc10cbc:	8ca580c8 	lw	a1,-32568(a1)
bfc10cc0:	3c040001 	lui	a0,0x1
bfc10cc4:	00852021 	addu	a0,a0,a1
bfc10cc8:	8c8480c8 	lw	a0,-32568(a0)
bfc10ccc:	3c060001 	lui	a2,0x1
bfc10cd0:	00c53021 	addu	a2,a2,a1
bfc10cd4:	8cc680c8 	lw	a2,-32568(a2)
bfc10cd8:	14430692 	bne	v0,v1,bfc12724 <inst_error>
bfc10cdc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:51
bfc10ce0:	3c09f831 	lui	t1,0xf831
bfc10ce4:	3529d258 	ori	t1,t1,0xd258
bfc10ce8:	3c08800d 	lui	t0,0x800d
bfc10cec:	3508b5f0 	ori	t0,t0,0xb5f0
bfc10cf0:	24030058 	li	v1,88
bfc10cf4:	ad0912cc 	sw	t1,4812(t0)
bfc10cf8:	25040004 	addiu	a0,t0,4
bfc10cfc:	2505fff8 	addiu	a1,t0,-8
bfc10d00:	ac8412cc 	sw	a0,4812(a0)
bfc10d04:	aca512cc 	sw	a1,4812(a1)
bfc10d08:	910212cc 	lbu	v0,4812(t0)
bfc10d0c:	8c8512cc 	lw	a1,4812(a0)
bfc10d10:	8ca412cc 	lw	a0,4812(a1)
bfc10d14:	8ca612cc 	lw	a2,4812(a1)
bfc10d18:	14430682 	bne	v0,v1,bfc12724 <inst_error>
bfc10d1c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:52
bfc10d20:	3c099476 	lui	t1,0x9476
bfc10d24:	35298ba0 	ori	t1,t1,0x8ba0
bfc10d28:	3c08800d 	lui	t0,0x800d
bfc10d2c:	35089ef8 	ori	t0,t0,0x9ef8
bfc10d30:	240300a0 	li	v1,160
bfc10d34:	ad093d84 	sw	t1,15748(t0)
bfc10d38:	25040004 	addiu	a0,t0,4
bfc10d3c:	2505fff8 	addiu	a1,t0,-8
bfc10d40:	ac843d84 	sw	a0,15748(a0)
bfc10d44:	aca53d84 	sw	a1,15748(a1)
bfc10d48:	91023d84 	lbu	v0,15748(t0)
bfc10d4c:	8c853d84 	lw	a1,15748(a0)
bfc10d50:	8ca43d84 	lw	a0,15748(a1)
bfc10d54:	8ca63d84 	lw	a2,15748(a1)
bfc10d58:	14430672 	bne	v0,v1,bfc12724 <inst_error>
bfc10d5c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:53
bfc10d60:	3c096f5a 	lui	t1,0x6f5a
bfc10d64:	3529b393 	ori	t1,t1,0xb393
bfc10d68:	3c08800d 	lui	t0,0x800d
bfc10d6c:	350823d0 	ori	t0,t0,0x23d0
bfc10d70:	24030093 	li	v1,147
bfc10d74:	ad0961b8 	sw	t1,25016(t0)
bfc10d78:	25040004 	addiu	a0,t0,4
bfc10d7c:	2505fff8 	addiu	a1,t0,-8
bfc10d80:	ac8461b8 	sw	a0,25016(a0)
bfc10d84:	aca561b8 	sw	a1,25016(a1)
bfc10d88:	910261b8 	lbu	v0,25016(t0)
bfc10d8c:	8c8561b8 	lw	a1,25016(a0)
bfc10d90:	8ca461b8 	lw	a0,25016(a1)
bfc10d94:	8ca661b8 	lw	a2,25016(a1)
bfc10d98:	14430662 	bne	v0,v1,bfc12724 <inst_error>
bfc10d9c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:54
bfc10da0:	3c09d734 	lui	t1,0xd734
bfc10da4:	352983da 	ori	t1,t1,0x83da
bfc10da8:	3c08800d 	lui	t0,0x800d
bfc10dac:	35087a70 	ori	t0,t0,0x7a70
bfc10db0:	24030083 	li	v1,131
bfc10db4:	ad095008 	sw	t1,20488(t0)
bfc10db8:	25040004 	addiu	a0,t0,4
bfc10dbc:	2505fff8 	addiu	a1,t0,-8
bfc10dc0:	ac845008 	sw	a0,20488(a0)
bfc10dc4:	aca55008 	sw	a1,20488(a1)
bfc10dc8:	91025009 	lbu	v0,20489(t0)
bfc10dcc:	8c855008 	lw	a1,20488(a0)
bfc10dd0:	8ca45008 	lw	a0,20488(a1)
bfc10dd4:	8ca65008 	lw	a2,20488(a1)
bfc10dd8:	14430652 	bne	v0,v1,bfc12724 <inst_error>
bfc10ddc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:55
bfc10de0:	3c094ab1 	lui	t1,0x4ab1
bfc10de4:	3529c5a6 	ori	t1,t1,0xc5a6
bfc10de8:	3c08800d 	lui	t0,0x800d
bfc10dec:	35086ea8 	ori	t0,t0,0x6ea8
bfc10df0:	240300a6 	li	v1,166
bfc10df4:	ad0961a0 	sw	t1,24992(t0)
bfc10df8:	25040004 	addiu	a0,t0,4
bfc10dfc:	2505fff8 	addiu	a1,t0,-8
bfc10e00:	ac8461a0 	sw	a0,24992(a0)
bfc10e04:	aca561a0 	sw	a1,24992(a1)
bfc10e08:	910261a0 	lbu	v0,24992(t0)
bfc10e0c:	8c8561a0 	lw	a1,24992(a0)
bfc10e10:	8ca461a0 	lw	a0,24992(a1)
bfc10e14:	8ca661a0 	lw	a2,24992(a1)
bfc10e18:	14430642 	bne	v0,v1,bfc12724 <inst_error>
bfc10e1c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:56
bfc10e20:	3c09d4b6 	lui	t1,0xd4b6
bfc10e24:	3529c948 	ori	t1,t1,0xc948
bfc10e28:	3c08800d 	lui	t0,0x800d
bfc10e2c:	35085864 	ori	t0,t0,0x5864
bfc10e30:	240300d4 	li	v1,212
bfc10e34:	ad096d0c 	sw	t1,27916(t0)
bfc10e38:	25040004 	addiu	a0,t0,4
bfc10e3c:	2505fff8 	addiu	a1,t0,-8
bfc10e40:	ac846d0c 	sw	a0,27916(a0)
bfc10e44:	aca56d0c 	sw	a1,27916(a1)
bfc10e48:	91026d0f 	lbu	v0,27919(t0)
bfc10e4c:	8c856d0c 	lw	a1,27916(a0)
bfc10e50:	8ca46d0c 	lw	a0,27916(a1)
bfc10e54:	8ca66d0c 	lw	a2,27916(a1)
bfc10e58:	14430632 	bne	v0,v1,bfc12724 <inst_error>
bfc10e5c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:57
bfc10e60:	3c091b18 	lui	t1,0x1b18
bfc10e64:	35299c1c 	ori	t1,t1,0x9c1c
bfc10e68:	3c08800d 	lui	t0,0x800d
bfc10e6c:	35082564 	ori	t0,t0,0x2564
bfc10e70:	24030018 	li	v1,24
bfc10e74:	ad09317c 	sw	t1,12668(t0)
bfc10e78:	25040004 	addiu	a0,t0,4
bfc10e7c:	2505fff8 	addiu	a1,t0,-8
bfc10e80:	ac84317c 	sw	a0,12668(a0)
bfc10e84:	aca5317c 	sw	a1,12668(a1)
bfc10e88:	9102317e 	lbu	v0,12670(t0)
bfc10e8c:	8c85317c 	lw	a1,12668(a0)
bfc10e90:	8ca4317c 	lw	a0,12668(a1)
bfc10e94:	8ca6317c 	lw	a2,12668(a1)
bfc10e98:	14430622 	bne	v0,v1,bfc12724 <inst_error>
bfc10e9c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:58
bfc10ea0:	3c09861b 	lui	t1,0x861b
bfc10ea4:	35293d98 	ori	t1,t1,0x3d98
bfc10ea8:	3c08800d 	lui	t0,0x800d
bfc10eac:	35085df8 	ori	t0,t0,0x5df8
bfc10eb0:	24030098 	li	v1,152
bfc10eb4:	3c010001 	lui	at,0x1
bfc10eb8:	00280821 	addu	at,at,t0
bfc10ebc:	ac2989a0 	sw	t1,-30304(at)
bfc10ec0:	25040004 	addiu	a0,t0,4
bfc10ec4:	2505fff8 	addiu	a1,t0,-8
bfc10ec8:	3c010001 	lui	at,0x1
bfc10ecc:	00240821 	addu	at,at,a0
bfc10ed0:	ac2489a0 	sw	a0,-30304(at)
bfc10ed4:	3c010001 	lui	at,0x1
bfc10ed8:	00250821 	addu	at,at,a1
bfc10edc:	ac2589a0 	sw	a1,-30304(at)
bfc10ee0:	3c020001 	lui	v0,0x1
bfc10ee4:	00481021 	addu	v0,v0,t0
bfc10ee8:	904289a0 	lbu	v0,-30304(v0)
bfc10eec:	3c050001 	lui	a1,0x1
bfc10ef0:	00a42821 	addu	a1,a1,a0
bfc10ef4:	8ca589a0 	lw	a1,-30304(a1)
bfc10ef8:	3c040001 	lui	a0,0x1
bfc10efc:	00852021 	addu	a0,a0,a1
bfc10f00:	8c8489a0 	lw	a0,-30304(a0)
bfc10f04:	3c060001 	lui	a2,0x1
bfc10f08:	00c53021 	addu	a2,a2,a1
bfc10f0c:	8cc689a0 	lw	a2,-30304(a2)
bfc10f10:	14430604 	bne	v0,v1,bfc12724 <inst_error>
bfc10f14:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:59
bfc10f18:	3c091f87 	lui	t1,0x1f87
bfc10f1c:	35296f58 	ori	t1,t1,0x6f58
bfc10f20:	3c08800d 	lui	t0,0x800d
bfc10f24:	350810e0 	ori	t0,t0,0x10e0
bfc10f28:	24030058 	li	v1,88
bfc10f2c:	ad0946bc 	sw	t1,18108(t0)
bfc10f30:	25040004 	addiu	a0,t0,4
bfc10f34:	2505fff8 	addiu	a1,t0,-8
bfc10f38:	ac8446bc 	sw	a0,18108(a0)
bfc10f3c:	aca546bc 	sw	a1,18108(a1)
bfc10f40:	910246bc 	lbu	v0,18108(t0)
bfc10f44:	8c8546bc 	lw	a1,18108(a0)
bfc10f48:	8ca446bc 	lw	a0,18108(a1)
bfc10f4c:	8ca646bc 	lw	a2,18108(a1)
bfc10f50:	144305f4 	bne	v0,v1,bfc12724 <inst_error>
bfc10f54:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:60
bfc10f58:	3c093b20 	lui	t1,0x3b20
bfc10f5c:	35297858 	ori	t1,t1,0x7858
bfc10f60:	3c08800d 	lui	t0,0x800d
bfc10f64:	350814a4 	ori	t0,t0,0x14a4
bfc10f68:	24030020 	li	v1,32
bfc10f6c:	ad091cf4 	sw	t1,7412(t0)
bfc10f70:	25040004 	addiu	a0,t0,4
bfc10f74:	2505fff8 	addiu	a1,t0,-8
bfc10f78:	ac841cf4 	sw	a0,7412(a0)
bfc10f7c:	aca51cf4 	sw	a1,7412(a1)
bfc10f80:	91021cf6 	lbu	v0,7414(t0)
bfc10f84:	8c851cf4 	lw	a1,7412(a0)
bfc10f88:	8ca41cf4 	lw	a0,7412(a1)
bfc10f8c:	8ca61cf4 	lw	a2,7412(a1)
bfc10f90:	144305e4 	bne	v0,v1,bfc12724 <inst_error>
bfc10f94:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:61
bfc10f98:	3c0967c1 	lui	t1,0x67c1
bfc10f9c:	3529dd18 	ori	t1,t1,0xdd18
bfc10fa0:	3c08800d 	lui	t0,0x800d
bfc10fa4:	3508d370 	ori	t0,t0,0xd370
bfc10fa8:	240300c1 	li	v1,193
bfc10fac:	ad092324 	sw	t1,8996(t0)
bfc10fb0:	25040004 	addiu	a0,t0,4
bfc10fb4:	2505fff8 	addiu	a1,t0,-8
bfc10fb8:	ac842324 	sw	a0,8996(a0)
bfc10fbc:	aca52324 	sw	a1,8996(a1)
bfc10fc0:	91022326 	lbu	v0,8998(t0)
bfc10fc4:	8c852324 	lw	a1,8996(a0)
bfc10fc8:	8ca42324 	lw	a0,8996(a1)
bfc10fcc:	8ca62324 	lw	a2,8996(a1)
bfc10fd0:	144305d4 	bne	v0,v1,bfc12724 <inst_error>
bfc10fd4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:62
bfc10fd8:	3c097066 	lui	t1,0x7066
bfc10fdc:	352969a8 	ori	t1,t1,0x69a8
bfc10fe0:	3c08800d 	lui	t0,0x800d
bfc10fe4:	350823dc 	ori	t0,t0,0x23dc
bfc10fe8:	240300a8 	li	v1,168
bfc10fec:	ad093fb0 	sw	t1,16304(t0)
bfc10ff0:	25040004 	addiu	a0,t0,4
bfc10ff4:	2505fff8 	addiu	a1,t0,-8
bfc10ff8:	ac843fb0 	sw	a0,16304(a0)
bfc10ffc:	aca53fb0 	sw	a1,16304(a1)
bfc11000:	91023fb0 	lbu	v0,16304(t0)
bfc11004:	8c853fb0 	lw	a1,16304(a0)
bfc11008:	8ca43fb0 	lw	a0,16304(a1)
bfc1100c:	8ca63fb0 	lw	a2,16304(a1)
bfc11010:	144305c4 	bne	v0,v1,bfc12724 <inst_error>
bfc11014:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:63
bfc11018:	3c090e43 	lui	t1,0xe43
bfc1101c:	352983c0 	ori	t1,t1,0x83c0
bfc11020:	3c08800d 	lui	t0,0x800d
bfc11024:	24030083 	li	v1,131
bfc11028:	ad0944a8 	sw	t1,17576(t0)
bfc1102c:	25040004 	addiu	a0,t0,4
bfc11030:	2505fff8 	addiu	a1,t0,-8
bfc11034:	ac8444a8 	sw	a0,17576(a0)
bfc11038:	aca544a8 	sw	a1,17576(a1)
bfc1103c:	910244a9 	lbu	v0,17577(t0)
bfc11040:	8c8544a8 	lw	a1,17576(a0)
bfc11044:	8ca444a8 	lw	a0,17576(a1)
bfc11048:	8ca644a8 	lw	a2,17576(a1)
bfc1104c:	144305b5 	bne	v0,v1,bfc12724 <inst_error>
bfc11050:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:64
bfc11054:	3c09d9c8 	lui	t1,0xd9c8
bfc11058:	352961cc 	ori	t1,t1,0x61cc
bfc1105c:	3c08800d 	lui	t0,0x800d
bfc11060:	240300c8 	li	v1,200
bfc11064:	ad095d3c 	sw	t1,23868(t0)
bfc11068:	25040004 	addiu	a0,t0,4
bfc1106c:	2505fff8 	addiu	a1,t0,-8
bfc11070:	ac845d3c 	sw	a0,23868(a0)
bfc11074:	aca55d3c 	sw	a1,23868(a1)
bfc11078:	91025d3e 	lbu	v0,23870(t0)
bfc1107c:	8c855d3c 	lw	a1,23868(a0)
bfc11080:	8ca45d3c 	lw	a0,23868(a1)
bfc11084:	8ca65d3c 	lw	a2,23868(a1)
bfc11088:	144305a6 	bne	v0,v1,bfc12724 <inst_error>
bfc1108c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:65
bfc11090:	3c09fecf 	lui	t1,0xfecf
bfc11094:	352979cc 	ori	t1,t1,0x79cc
bfc11098:	3c08800d 	lui	t0,0x800d
bfc1109c:	240300cc 	li	v1,204
bfc110a0:	ad096c20 	sw	t1,27680(t0)
bfc110a4:	25040004 	addiu	a0,t0,4
bfc110a8:	2505fff8 	addiu	a1,t0,-8
bfc110ac:	ac846c20 	sw	a0,27680(a0)
bfc110b0:	aca56c20 	sw	a1,27680(a1)
bfc110b4:	91026c20 	lbu	v0,27680(t0)
bfc110b8:	8c856c20 	lw	a1,27680(a0)
bfc110bc:	8ca46c20 	lw	a0,27680(a1)
bfc110c0:	8ca66c20 	lw	a2,27680(a1)
bfc110c4:	14430597 	bne	v0,v1,bfc12724 <inst_error>
bfc110c8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:66
bfc110cc:	3c0962ea 	lui	t1,0x62ea
bfc110d0:	3529b940 	ori	t1,t1,0xb940
bfc110d4:	3c08800d 	lui	t0,0x800d
bfc110d8:	240300b9 	li	v1,185
bfc110dc:	3c010001 	lui	at,0x1
bfc110e0:	00280821 	addu	at,at,t0
bfc110e4:	ac29cfe0 	sw	t1,-12320(at)
bfc110e8:	25040004 	addiu	a0,t0,4
bfc110ec:	2505fff8 	addiu	a1,t0,-8
bfc110f0:	3c010001 	lui	at,0x1
bfc110f4:	00240821 	addu	at,at,a0
bfc110f8:	ac24cfe0 	sw	a0,-12320(at)
bfc110fc:	3c010001 	lui	at,0x1
bfc11100:	00250821 	addu	at,at,a1
bfc11104:	ac25cfe0 	sw	a1,-12320(at)
bfc11108:	3c020001 	lui	v0,0x1
bfc1110c:	00481021 	addu	v0,v0,t0
bfc11110:	9042cfe1 	lbu	v0,-12319(v0)
bfc11114:	3c050001 	lui	a1,0x1
bfc11118:	00a42821 	addu	a1,a1,a0
bfc1111c:	8ca5cfe0 	lw	a1,-12320(a1)
bfc11120:	3c040001 	lui	a0,0x1
bfc11124:	00852021 	addu	a0,a0,a1
bfc11128:	8c84cfe0 	lw	a0,-12320(a0)
bfc1112c:	3c060001 	lui	a2,0x1
bfc11130:	00c53021 	addu	a2,a2,a1
bfc11134:	8cc6cfe0 	lw	a2,-12320(a2)
bfc11138:	1443057a 	bne	v0,v1,bfc12724 <inst_error>
bfc1113c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:67
bfc11140:	3c09c5f7 	lui	t1,0xc5f7
bfc11144:	35291c93 	ori	t1,t1,0x1c93
bfc11148:	3c08800d 	lui	t0,0x800d
bfc1114c:	24030093 	li	v1,147
bfc11150:	ad0903ac 	sw	t1,940(t0)
bfc11154:	25040004 	addiu	a0,t0,4
bfc11158:	2505fff8 	addiu	a1,t0,-8
bfc1115c:	ac8403ac 	sw	a0,940(a0)
bfc11160:	aca503ac 	sw	a1,940(a1)
bfc11164:	910203ac 	lbu	v0,940(t0)
bfc11168:	8c8503ac 	lw	a1,940(a0)
bfc1116c:	8ca403ac 	lw	a0,940(a1)
bfc11170:	8ca603ac 	lw	a2,940(a1)
bfc11174:	1443056b 	bne	v0,v1,bfc12724 <inst_error>
bfc11178:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:68
bfc1117c:	3c09dc99 	lui	t1,0xdc99
bfc11180:	35290bc0 	ori	t1,t1,0xbc0
bfc11184:	3c08800d 	lui	t0,0x800d
bfc11188:	24030099 	li	v1,153
bfc1118c:	ad094630 	sw	t1,17968(t0)
bfc11190:	25040004 	addiu	a0,t0,4
bfc11194:	2505fff8 	addiu	a1,t0,-8
bfc11198:	ac844630 	sw	a0,17968(a0)
bfc1119c:	aca54630 	sw	a1,17968(a1)
bfc111a0:	91024632 	lbu	v0,17970(t0)
bfc111a4:	8c854630 	lw	a1,17968(a0)
bfc111a8:	8ca44630 	lw	a0,17968(a1)
bfc111ac:	8ca64630 	lw	a2,17968(a1)
bfc111b0:	1443055c 	bne	v0,v1,bfc12724 <inst_error>
bfc111b4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:69
bfc111b8:	3c09ffa8 	lui	t1,0xffa8
bfc111bc:	352921b0 	ori	t1,t1,0x21b0
bfc111c0:	3c08800d 	lui	t0,0x800d
bfc111c4:	240300a8 	li	v1,168
bfc111c8:	ad090478 	sw	t1,1144(t0)
bfc111cc:	25040004 	addiu	a0,t0,4
bfc111d0:	2505fff8 	addiu	a1,t0,-8
bfc111d4:	ac840478 	sw	a0,1144(a0)
bfc111d8:	aca50478 	sw	a1,1144(a1)
bfc111dc:	9102047a 	lbu	v0,1146(t0)
bfc111e0:	8c850478 	lw	a1,1144(a0)
bfc111e4:	8ca40478 	lw	a0,1144(a1)
bfc111e8:	8ca60478 	lw	a2,1144(a1)
bfc111ec:	1443054d 	bne	v0,v1,bfc12724 <inst_error>
bfc111f0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:70
bfc111f4:	3c09669c 	lui	t1,0x669c
bfc111f8:	3529b8f8 	ori	t1,t1,0xb8f8
bfc111fc:	3c08800d 	lui	t0,0x800d
bfc11200:	240300f8 	li	v1,248
bfc11204:	ad095dc8 	sw	t1,24008(t0)
bfc11208:	25040004 	addiu	a0,t0,4
bfc1120c:	2505fff8 	addiu	a1,t0,-8
bfc11210:	ac845dc8 	sw	a0,24008(a0)
bfc11214:	aca55dc8 	sw	a1,24008(a1)
bfc11218:	91025dc8 	lbu	v0,24008(t0)
bfc1121c:	8c855dc8 	lw	a1,24008(a0)
bfc11220:	8ca45dc8 	lw	a0,24008(a1)
bfc11224:	8ca65dc8 	lw	a2,24008(a1)
bfc11228:	1443053e 	bne	v0,v1,bfc12724 <inst_error>
bfc1122c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:71
bfc11230:	3c09d965 	lui	t1,0xd965
bfc11234:	35290b98 	ori	t1,t1,0xb98
bfc11238:	3c08800d 	lui	t0,0x800d
bfc1123c:	24030065 	li	v1,101
bfc11240:	3c010001 	lui	at,0x1
bfc11244:	00280821 	addu	at,at,t0
bfc11248:	ac29d200 	sw	t1,-11776(at)
bfc1124c:	25040004 	addiu	a0,t0,4
bfc11250:	2505fff8 	addiu	a1,t0,-8
bfc11254:	3c010001 	lui	at,0x1
bfc11258:	00240821 	addu	at,at,a0
bfc1125c:	ac24d200 	sw	a0,-11776(at)
bfc11260:	3c010001 	lui	at,0x1
bfc11264:	00250821 	addu	at,at,a1
bfc11268:	ac25d200 	sw	a1,-11776(at)
bfc1126c:	3c020001 	lui	v0,0x1
bfc11270:	00481021 	addu	v0,v0,t0
bfc11274:	9042d202 	lbu	v0,-11774(v0)
bfc11278:	3c050001 	lui	a1,0x1
bfc1127c:	00a42821 	addu	a1,a1,a0
bfc11280:	8ca5d200 	lw	a1,-11776(a1)
bfc11284:	3c040001 	lui	a0,0x1
bfc11288:	00852021 	addu	a0,a0,a1
bfc1128c:	8c84d200 	lw	a0,-11776(a0)
bfc11290:	3c060001 	lui	a2,0x1
bfc11294:	00c53021 	addu	a2,a2,a1
bfc11298:	8cc6d200 	lw	a2,-11776(a2)
bfc1129c:	14430521 	bne	v0,v1,bfc12724 <inst_error>
bfc112a0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:72
bfc112a4:	3c09845c 	lui	t1,0x845c
bfc112a8:	352979fc 	ori	t1,t1,0x79fc
bfc112ac:	3c08800d 	lui	t0,0x800d
bfc112b0:	240300fc 	li	v1,252
bfc112b4:	3c010001 	lui	at,0x1
bfc112b8:	00280821 	addu	at,at,t0
bfc112bc:	ac29f504 	sw	t1,-2812(at)
bfc112c0:	25040004 	addiu	a0,t0,4
bfc112c4:	2505fff8 	addiu	a1,t0,-8
bfc112c8:	3c010001 	lui	at,0x1
bfc112cc:	00240821 	addu	at,at,a0
bfc112d0:	ac24f504 	sw	a0,-2812(at)
bfc112d4:	3c010001 	lui	at,0x1
bfc112d8:	00250821 	addu	at,at,a1
bfc112dc:	ac25f504 	sw	a1,-2812(at)
bfc112e0:	3c020001 	lui	v0,0x1
bfc112e4:	00481021 	addu	v0,v0,t0
bfc112e8:	9042f504 	lbu	v0,-2812(v0)
bfc112ec:	3c050001 	lui	a1,0x1
bfc112f0:	00a42821 	addu	a1,a1,a0
bfc112f4:	8ca5f504 	lw	a1,-2812(a1)
bfc112f8:	3c040001 	lui	a0,0x1
bfc112fc:	00852021 	addu	a0,a0,a1
bfc11300:	8c84f504 	lw	a0,-2812(a0)
bfc11304:	3c060001 	lui	a2,0x1
bfc11308:	00c53021 	addu	a2,a2,a1
bfc1130c:	8cc6f504 	lw	a2,-2812(a2)
bfc11310:	14430504 	bne	v0,v1,bfc12724 <inst_error>
bfc11314:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:73
bfc11318:	3c09a7ed 	lui	t1,0xa7ed
bfc1131c:	35299420 	ori	t1,t1,0x9420
bfc11320:	3c08800d 	lui	t0,0x800d
bfc11324:	24030020 	li	v1,32
bfc11328:	3c010001 	lui	at,0x1
bfc1132c:	00280821 	addu	at,at,t0
bfc11330:	ac29e5e8 	sw	t1,-6680(at)
bfc11334:	25040004 	addiu	a0,t0,4
bfc11338:	2505fff8 	addiu	a1,t0,-8
bfc1133c:	3c010001 	lui	at,0x1
bfc11340:	00240821 	addu	at,at,a0
bfc11344:	ac24e5e8 	sw	a0,-6680(at)
bfc11348:	3c010001 	lui	at,0x1
bfc1134c:	00250821 	addu	at,at,a1
bfc11350:	ac25e5e8 	sw	a1,-6680(at)
bfc11354:	3c020001 	lui	v0,0x1
bfc11358:	00481021 	addu	v0,v0,t0
bfc1135c:	9042e5e8 	lbu	v0,-6680(v0)
bfc11360:	3c050001 	lui	a1,0x1
bfc11364:	00a42821 	addu	a1,a1,a0
bfc11368:	8ca5e5e8 	lw	a1,-6680(a1)
bfc1136c:	3c040001 	lui	a0,0x1
bfc11370:	00852021 	addu	a0,a0,a1
bfc11374:	8c84e5e8 	lw	a0,-6680(a0)
bfc11378:	3c060001 	lui	a2,0x1
bfc1137c:	00c53021 	addu	a2,a2,a1
bfc11380:	8cc6e5e8 	lw	a2,-6680(a2)
bfc11384:	144304e7 	bne	v0,v1,bfc12724 <inst_error>
bfc11388:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:74
bfc1138c:	3c09a458 	lui	t1,0xa458
bfc11390:	3529f1f2 	ori	t1,t1,0xf1f2
bfc11394:	3c08800d 	lui	t0,0x800d
bfc11398:	240300f1 	li	v1,241
bfc1139c:	3c010001 	lui	at,0x1
bfc113a0:	00280821 	addu	at,at,t0
bfc113a4:	ac299124 	sw	t1,-28380(at)
bfc113a8:	25040004 	addiu	a0,t0,4
bfc113ac:	2505fff8 	addiu	a1,t0,-8
bfc113b0:	3c010001 	lui	at,0x1
bfc113b4:	00240821 	addu	at,at,a0
bfc113b8:	ac249124 	sw	a0,-28380(at)
bfc113bc:	3c010001 	lui	at,0x1
bfc113c0:	00250821 	addu	at,at,a1
bfc113c4:	ac259124 	sw	a1,-28380(at)
bfc113c8:	3c020001 	lui	v0,0x1
bfc113cc:	00481021 	addu	v0,v0,t0
bfc113d0:	90429125 	lbu	v0,-28379(v0)
bfc113d4:	3c050001 	lui	a1,0x1
bfc113d8:	00a42821 	addu	a1,a1,a0
bfc113dc:	8ca59124 	lw	a1,-28380(a1)
bfc113e0:	3c040001 	lui	a0,0x1
bfc113e4:	00852021 	addu	a0,a0,a1
bfc113e8:	8c849124 	lw	a0,-28380(a0)
bfc113ec:	3c060001 	lui	a2,0x1
bfc113f0:	00c53021 	addu	a2,a2,a1
bfc113f4:	8cc69124 	lw	a2,-28380(a2)
bfc113f8:	144304ca 	bne	v0,v1,bfc12724 <inst_error>
bfc113fc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:75
bfc11400:	3c09ad33 	lui	t1,0xad33
bfc11404:	3529ad20 	ori	t1,t1,0xad20
bfc11408:	3c08800d 	lui	t0,0x800d
bfc1140c:	24030033 	li	v1,51
bfc11410:	3c010001 	lui	at,0x1
bfc11414:	00280821 	addu	at,at,t0
bfc11418:	ac29db18 	sw	t1,-9448(at)
bfc1141c:	25040004 	addiu	a0,t0,4
bfc11420:	2505fff8 	addiu	a1,t0,-8
bfc11424:	3c010001 	lui	at,0x1
bfc11428:	00240821 	addu	at,at,a0
bfc1142c:	ac24db18 	sw	a0,-9448(at)
bfc11430:	3c010001 	lui	at,0x1
bfc11434:	00250821 	addu	at,at,a1
bfc11438:	ac25db18 	sw	a1,-9448(at)
bfc1143c:	3c020001 	lui	v0,0x1
bfc11440:	00481021 	addu	v0,v0,t0
bfc11444:	9042db1a 	lbu	v0,-9446(v0)
bfc11448:	3c050001 	lui	a1,0x1
bfc1144c:	00a42821 	addu	a1,a1,a0
bfc11450:	8ca5db18 	lw	a1,-9448(a1)
bfc11454:	3c040001 	lui	a0,0x1
bfc11458:	00852021 	addu	a0,a0,a1
bfc1145c:	8c84db18 	lw	a0,-9448(a0)
bfc11460:	3c060001 	lui	a2,0x1
bfc11464:	00c53021 	addu	a2,a2,a1
bfc11468:	8cc6db18 	lw	a2,-9448(a2)
bfc1146c:	144304ad 	bne	v0,v1,bfc12724 <inst_error>
bfc11470:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:76
bfc11474:	3c09bd74 	lui	t1,0xbd74
bfc11478:	35293318 	ori	t1,t1,0x3318
bfc1147c:	3c08800d 	lui	t0,0x800d
bfc11480:	24030018 	li	v1,24
bfc11484:	3c010001 	lui	at,0x1
bfc11488:	00280821 	addu	at,at,t0
bfc1148c:	ac29c2f8 	sw	t1,-15624(at)
bfc11490:	25040004 	addiu	a0,t0,4
bfc11494:	2505fff8 	addiu	a1,t0,-8
bfc11498:	3c010001 	lui	at,0x1
bfc1149c:	00240821 	addu	at,at,a0
bfc114a0:	ac24c2f8 	sw	a0,-15624(at)
bfc114a4:	3c010001 	lui	at,0x1
bfc114a8:	00250821 	addu	at,at,a1
bfc114ac:	ac25c2f8 	sw	a1,-15624(at)
bfc114b0:	3c020001 	lui	v0,0x1
bfc114b4:	00481021 	addu	v0,v0,t0
bfc114b8:	9042c2f8 	lbu	v0,-15624(v0)
bfc114bc:	3c050001 	lui	a1,0x1
bfc114c0:	00a42821 	addu	a1,a1,a0
bfc114c4:	8ca5c2f8 	lw	a1,-15624(a1)
bfc114c8:	3c040001 	lui	a0,0x1
bfc114cc:	00852021 	addu	a0,a0,a1
bfc114d0:	8c84c2f8 	lw	a0,-15624(a0)
bfc114d4:	3c060001 	lui	a2,0x1
bfc114d8:	00c53021 	addu	a2,a2,a1
bfc114dc:	8cc6c2f8 	lw	a2,-15624(a2)
bfc114e0:	14430490 	bne	v0,v1,bfc12724 <inst_error>
bfc114e4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:77
bfc114e8:	3c09ec31 	lui	t1,0xec31
bfc114ec:	35295702 	ori	t1,t1,0x5702
bfc114f0:	3c08800d 	lui	t0,0x800d
bfc114f4:	24030002 	li	v1,2
bfc114f8:	ad090230 	sw	t1,560(t0)
bfc114fc:	25040004 	addiu	a0,t0,4
bfc11500:	2505fff8 	addiu	a1,t0,-8
bfc11504:	ac840230 	sw	a0,560(a0)
bfc11508:	aca50230 	sw	a1,560(a1)
bfc1150c:	91020230 	lbu	v0,560(t0)
bfc11510:	8c850230 	lw	a1,560(a0)
bfc11514:	8ca40230 	lw	a0,560(a1)
bfc11518:	8ca60230 	lw	a2,560(a1)
bfc1151c:	14430481 	bne	v0,v1,bfc12724 <inst_error>
bfc11520:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:78
bfc11524:	3c097b43 	lui	t1,0x7b43
bfc11528:	35293429 	ori	t1,t1,0x3429
bfc1152c:	3c08800d 	lui	t0,0x800d
bfc11530:	24030029 	li	v1,41
bfc11534:	ad090ae0 	sw	t1,2784(t0)
bfc11538:	25040004 	addiu	a0,t0,4
bfc1153c:	2505fff8 	addiu	a1,t0,-8
bfc11540:	ac840ae0 	sw	a0,2784(a0)
bfc11544:	aca50ae0 	sw	a1,2784(a1)
bfc11548:	91020ae0 	lbu	v0,2784(t0)
bfc1154c:	8c850ae0 	lw	a1,2784(a0)
bfc11550:	8ca40ae0 	lw	a0,2784(a1)
bfc11554:	8ca60ae0 	lw	a2,2784(a1)
bfc11558:	14430472 	bne	v0,v1,bfc12724 <inst_error>
bfc1155c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:79
bfc11560:	3c093455 	lui	t1,0x3455
bfc11564:	352992f0 	ori	t1,t1,0x92f0
bfc11568:	3c08800d 	lui	t0,0x800d
bfc1156c:	240300f0 	li	v1,240
bfc11570:	3c010001 	lui	at,0x1
bfc11574:	00280821 	addu	at,at,t0
bfc11578:	ac29d080 	sw	t1,-12160(at)
bfc1157c:	25040004 	addiu	a0,t0,4
bfc11580:	2505fff8 	addiu	a1,t0,-8
bfc11584:	3c010001 	lui	at,0x1
bfc11588:	00240821 	addu	at,at,a0
bfc1158c:	ac24d080 	sw	a0,-12160(at)
bfc11590:	3c010001 	lui	at,0x1
bfc11594:	00250821 	addu	at,at,a1
bfc11598:	ac25d080 	sw	a1,-12160(at)
bfc1159c:	3c020001 	lui	v0,0x1
bfc115a0:	00481021 	addu	v0,v0,t0
bfc115a4:	9042d080 	lbu	v0,-12160(v0)
bfc115a8:	3c050001 	lui	a1,0x1
bfc115ac:	00a42821 	addu	a1,a1,a0
bfc115b0:	8ca5d080 	lw	a1,-12160(a1)
bfc115b4:	3c040001 	lui	a0,0x1
bfc115b8:	00852021 	addu	a0,a0,a1
bfc115bc:	8c84d080 	lw	a0,-12160(a0)
bfc115c0:	3c060001 	lui	a2,0x1
bfc115c4:	00c53021 	addu	a2,a2,a1
bfc115c8:	8cc6d080 	lw	a2,-12160(a2)
bfc115cc:	14430455 	bne	v0,v1,bfc12724 <inst_error>
bfc115d0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:80
bfc115d4:	3c0915fe 	lui	t1,0x15fe
bfc115d8:	3529c970 	ori	t1,t1,0xc970
bfc115dc:	3c08800d 	lui	t0,0x800d
bfc115e0:	24030070 	li	v1,112
bfc115e4:	3c010001 	lui	at,0x1
bfc115e8:	00280821 	addu	at,at,t0
bfc115ec:	ac29a6d0 	sw	t1,-22832(at)
bfc115f0:	25040004 	addiu	a0,t0,4
bfc115f4:	2505fff8 	addiu	a1,t0,-8
bfc115f8:	3c010001 	lui	at,0x1
bfc115fc:	00240821 	addu	at,at,a0
bfc11600:	ac24a6d0 	sw	a0,-22832(at)
bfc11604:	3c010001 	lui	at,0x1
bfc11608:	00250821 	addu	at,at,a1
bfc1160c:	ac25a6d0 	sw	a1,-22832(at)
bfc11610:	3c020001 	lui	v0,0x1
bfc11614:	00481021 	addu	v0,v0,t0
bfc11618:	9042a6d0 	lbu	v0,-22832(v0)
bfc1161c:	3c050001 	lui	a1,0x1
bfc11620:	00a42821 	addu	a1,a1,a0
bfc11624:	8ca5a6d0 	lw	a1,-22832(a1)
bfc11628:	3c040001 	lui	a0,0x1
bfc1162c:	00852021 	addu	a0,a0,a1
bfc11630:	8c84a6d0 	lw	a0,-22832(a0)
bfc11634:	3c060001 	lui	a2,0x1
bfc11638:	00c53021 	addu	a2,a2,a1
bfc1163c:	8cc6a6d0 	lw	a2,-22832(a2)
bfc11640:	14430438 	bne	v0,v1,bfc12724 <inst_error>
bfc11644:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:81
bfc11648:	3c09483e 	lui	t1,0x483e
bfc1164c:	3529c7ee 	ori	t1,t1,0xc7ee
bfc11650:	3c08800d 	lui	t0,0x800d
bfc11654:	240300ee 	li	v1,238
bfc11658:	3c010001 	lui	at,0x1
bfc1165c:	00280821 	addu	at,at,t0
bfc11660:	ac298570 	sw	t1,-31376(at)
bfc11664:	25040004 	addiu	a0,t0,4
bfc11668:	2505fff8 	addiu	a1,t0,-8
bfc1166c:	3c010001 	lui	at,0x1
bfc11670:	00240821 	addu	at,at,a0
bfc11674:	ac248570 	sw	a0,-31376(at)
bfc11678:	3c010001 	lui	at,0x1
bfc1167c:	00250821 	addu	at,at,a1
bfc11680:	ac258570 	sw	a1,-31376(at)
bfc11684:	3c020001 	lui	v0,0x1
bfc11688:	00481021 	addu	v0,v0,t0
bfc1168c:	90428570 	lbu	v0,-31376(v0)
bfc11690:	3c050001 	lui	a1,0x1
bfc11694:	00a42821 	addu	a1,a1,a0
bfc11698:	8ca58570 	lw	a1,-31376(a1)
bfc1169c:	3c040001 	lui	a0,0x1
bfc116a0:	00852021 	addu	a0,a0,a1
bfc116a4:	8c848570 	lw	a0,-31376(a0)
bfc116a8:	3c060001 	lui	a2,0x1
bfc116ac:	00c53021 	addu	a2,a2,a1
bfc116b0:	8cc68570 	lw	a2,-31376(a2)
bfc116b4:	1443041b 	bne	v0,v1,bfc12724 <inst_error>
bfc116b8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:82
bfc116bc:	3c09ca82 	lui	t1,0xca82
bfc116c0:	3529fc00 	ori	t1,t1,0xfc00
bfc116c4:	3c08800d 	lui	t0,0x800d
bfc116c8:	24030082 	li	v1,130
bfc116cc:	ad095cfc 	sw	t1,23804(t0)
bfc116d0:	25040004 	addiu	a0,t0,4
bfc116d4:	2505fff8 	addiu	a1,t0,-8
bfc116d8:	ac845cfc 	sw	a0,23804(a0)
bfc116dc:	aca55cfc 	sw	a1,23804(a1)
bfc116e0:	91025cfe 	lbu	v0,23806(t0)
bfc116e4:	8c855cfc 	lw	a1,23804(a0)
bfc116e8:	8ca45cfc 	lw	a0,23804(a1)
bfc116ec:	8ca65cfc 	lw	a2,23804(a1)
bfc116f0:	1443040c 	bne	v0,v1,bfc12724 <inst_error>
bfc116f4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:83
bfc116f8:	3c092595 	lui	t1,0x2595
bfc116fc:	35293f20 	ori	t1,t1,0x3f20
bfc11700:	3c08800d 	lui	t0,0x800d
bfc11704:	24030025 	li	v1,37
bfc11708:	3c010001 	lui	at,0x1
bfc1170c:	00280821 	addu	at,at,t0
bfc11710:	ac29d0c0 	sw	t1,-12096(at)
bfc11714:	25040004 	addiu	a0,t0,4
bfc11718:	2505fff8 	addiu	a1,t0,-8
bfc1171c:	3c010001 	lui	at,0x1
bfc11720:	00240821 	addu	at,at,a0
bfc11724:	ac24d0c0 	sw	a0,-12096(at)
bfc11728:	3c010001 	lui	at,0x1
bfc1172c:	00250821 	addu	at,at,a1
bfc11730:	ac25d0c0 	sw	a1,-12096(at)
bfc11734:	3c020001 	lui	v0,0x1
bfc11738:	00481021 	addu	v0,v0,t0
bfc1173c:	9042d0c3 	lbu	v0,-12093(v0)
bfc11740:	3c050001 	lui	a1,0x1
bfc11744:	00a42821 	addu	a1,a1,a0
bfc11748:	8ca5d0c0 	lw	a1,-12096(a1)
bfc1174c:	3c040001 	lui	a0,0x1
bfc11750:	00852021 	addu	a0,a0,a1
bfc11754:	8c84d0c0 	lw	a0,-12096(a0)
bfc11758:	3c060001 	lui	a2,0x1
bfc1175c:	00c53021 	addu	a2,a2,a1
bfc11760:	8cc6d0c0 	lw	a2,-12096(a2)
bfc11764:	144303ef 	bne	v0,v1,bfc12724 <inst_error>
bfc11768:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:84
bfc1176c:	3c09c718 	lui	t1,0xc718
bfc11770:	35294dde 	ori	t1,t1,0x4dde
bfc11774:	3c08800d 	lui	t0,0x800d
bfc11778:	240300de 	li	v1,222
bfc1177c:	ad095558 	sw	t1,21848(t0)
bfc11780:	25040004 	addiu	a0,t0,4
bfc11784:	2505fff8 	addiu	a1,t0,-8
bfc11788:	ac845558 	sw	a0,21848(a0)
bfc1178c:	aca55558 	sw	a1,21848(a1)
bfc11790:	91025558 	lbu	v0,21848(t0)
bfc11794:	8c855558 	lw	a1,21848(a0)
bfc11798:	8ca45558 	lw	a0,21848(a1)
bfc1179c:	8ca65558 	lw	a2,21848(a1)
bfc117a0:	144303e0 	bne	v0,v1,bfc12724 <inst_error>
bfc117a4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:85
bfc117a8:	3c09899b 	lui	t1,0x899b
bfc117ac:	3529e100 	ori	t1,t1,0xe100
bfc117b0:	3c08800d 	lui	t0,0x800d
bfc117b4:	24030000 	li	v1,0
bfc117b8:	3c010001 	lui	at,0x1
bfc117bc:	00280821 	addu	at,at,t0
bfc117c0:	ac29f0c4 	sw	t1,-3900(at)
bfc117c4:	25040004 	addiu	a0,t0,4
bfc117c8:	2505fff8 	addiu	a1,t0,-8
bfc117cc:	3c010001 	lui	at,0x1
bfc117d0:	00240821 	addu	at,at,a0
bfc117d4:	ac24f0c4 	sw	a0,-3900(at)
bfc117d8:	3c010001 	lui	at,0x1
bfc117dc:	00250821 	addu	at,at,a1
bfc117e0:	ac25f0c4 	sw	a1,-3900(at)
bfc117e4:	3c020001 	lui	v0,0x1
bfc117e8:	00481021 	addu	v0,v0,t0
bfc117ec:	9042f0c4 	lbu	v0,-3900(v0)
bfc117f0:	3c050001 	lui	a1,0x1
bfc117f4:	00a42821 	addu	a1,a1,a0
bfc117f8:	8ca5f0c4 	lw	a1,-3900(a1)
bfc117fc:	3c040001 	lui	a0,0x1
bfc11800:	00852021 	addu	a0,a0,a1
bfc11804:	8c84f0c4 	lw	a0,-3900(a0)
bfc11808:	3c060001 	lui	a2,0x1
bfc1180c:	00c53021 	addu	a2,a2,a1
bfc11810:	8cc6f0c4 	lw	a2,-3900(a2)
bfc11814:	144303c3 	bne	v0,v1,bfc12724 <inst_error>
bfc11818:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:86
bfc1181c:	3c094629 	lui	t1,0x4629
bfc11820:	3529ad14 	ori	t1,t1,0xad14
bfc11824:	3c08800d 	lui	t0,0x800d
bfc11828:	24030014 	li	v1,20
bfc1182c:	3c010001 	lui	at,0x1
bfc11830:	00280821 	addu	at,at,t0
bfc11834:	ac29f550 	sw	t1,-2736(at)
bfc11838:	25040004 	addiu	a0,t0,4
bfc1183c:	2505fff8 	addiu	a1,t0,-8
bfc11840:	3c010001 	lui	at,0x1
bfc11844:	00240821 	addu	at,at,a0
bfc11848:	ac24f550 	sw	a0,-2736(at)
bfc1184c:	3c010001 	lui	at,0x1
bfc11850:	00250821 	addu	at,at,a1
bfc11854:	ac25f550 	sw	a1,-2736(at)
bfc11858:	3c020001 	lui	v0,0x1
bfc1185c:	00481021 	addu	v0,v0,t0
bfc11860:	9042f550 	lbu	v0,-2736(v0)
bfc11864:	3c050001 	lui	a1,0x1
bfc11868:	00a42821 	addu	a1,a1,a0
bfc1186c:	8ca5f550 	lw	a1,-2736(a1)
bfc11870:	3c040001 	lui	a0,0x1
bfc11874:	00852021 	addu	a0,a0,a1
bfc11878:	8c84f550 	lw	a0,-2736(a0)
bfc1187c:	3c060001 	lui	a2,0x1
bfc11880:	00c53021 	addu	a2,a2,a1
bfc11884:	8cc6f550 	lw	a2,-2736(a2)
bfc11888:	144303a6 	bne	v0,v1,bfc12724 <inst_error>
bfc1188c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:87
bfc11890:	3c09b741 	lui	t1,0xb741
bfc11894:	3529c3b2 	ori	t1,t1,0xc3b2
bfc11898:	3c08800d 	lui	t0,0x800d
bfc1189c:	240300b2 	li	v1,178
bfc118a0:	3c010001 	lui	at,0x1
bfc118a4:	00280821 	addu	at,at,t0
bfc118a8:	ac299370 	sw	t1,-27792(at)
bfc118ac:	25040004 	addiu	a0,t0,4
bfc118b0:	2505fff8 	addiu	a1,t0,-8
bfc118b4:	3c010001 	lui	at,0x1
bfc118b8:	00240821 	addu	at,at,a0
bfc118bc:	ac249370 	sw	a0,-27792(at)
bfc118c0:	3c010001 	lui	at,0x1
bfc118c4:	00250821 	addu	at,at,a1
bfc118c8:	ac259370 	sw	a1,-27792(at)
bfc118cc:	3c020001 	lui	v0,0x1
bfc118d0:	00481021 	addu	v0,v0,t0
bfc118d4:	90429370 	lbu	v0,-27792(v0)
bfc118d8:	3c050001 	lui	a1,0x1
bfc118dc:	00a42821 	addu	a1,a1,a0
bfc118e0:	8ca59370 	lw	a1,-27792(a1)
bfc118e4:	3c040001 	lui	a0,0x1
bfc118e8:	00852021 	addu	a0,a0,a1
bfc118ec:	8c849370 	lw	a0,-27792(a0)
bfc118f0:	3c060001 	lui	a2,0x1
bfc118f4:	00c53021 	addu	a2,a2,a1
bfc118f8:	8cc69370 	lw	a2,-27792(a2)
bfc118fc:	14430389 	bne	v0,v1,bfc12724 <inst_error>
bfc11900:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:88
bfc11904:	3c093b7a 	lui	t1,0x3b7a
bfc11908:	35298198 	ori	t1,t1,0x8198
bfc1190c:	3c08800d 	lui	t0,0x800d
bfc11910:	24030081 	li	v1,129
bfc11914:	ad092dc4 	sw	t1,11716(t0)
bfc11918:	25040004 	addiu	a0,t0,4
bfc1191c:	2505fff8 	addiu	a1,t0,-8
bfc11920:	ac842dc4 	sw	a0,11716(a0)
bfc11924:	aca52dc4 	sw	a1,11716(a1)
bfc11928:	91022dc5 	lbu	v0,11717(t0)
bfc1192c:	8c852dc4 	lw	a1,11716(a0)
bfc11930:	8ca42dc4 	lw	a0,11716(a1)
bfc11934:	8ca62dc4 	lw	a2,11716(a1)
bfc11938:	1443037a 	bne	v0,v1,bfc12724 <inst_error>
bfc1193c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:89
bfc11940:	3c09c5e5 	lui	t1,0xc5e5
bfc11944:	352941f6 	ori	t1,t1,0x41f6
bfc11948:	3c08800d 	lui	t0,0x800d
bfc1194c:	240300f6 	li	v1,246
bfc11950:	ad093560 	sw	t1,13664(t0)
bfc11954:	25040004 	addiu	a0,t0,4
bfc11958:	2505fff8 	addiu	a1,t0,-8
bfc1195c:	ac843560 	sw	a0,13664(a0)
bfc11960:	aca53560 	sw	a1,13664(a1)
bfc11964:	91023560 	lbu	v0,13664(t0)
bfc11968:	8c853560 	lw	a1,13664(a0)
bfc1196c:	8ca43560 	lw	a0,13664(a1)
bfc11970:	8ca63560 	lw	a2,13664(a1)
bfc11974:	1443036b 	bne	v0,v1,bfc12724 <inst_error>
bfc11978:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:90
bfc1197c:	3c09df5b 	lui	t1,0xdf5b
bfc11980:	35291a0a 	ori	t1,t1,0x1a0a
bfc11984:	3c08800d 	lui	t0,0x800d
bfc11988:	2403000a 	li	v1,10
bfc1198c:	3c010001 	lui	at,0x1
bfc11990:	00280821 	addu	at,at,t0
bfc11994:	ac29d8c0 	sw	t1,-10048(at)
bfc11998:	25040004 	addiu	a0,t0,4
bfc1199c:	2505fff8 	addiu	a1,t0,-8
bfc119a0:	3c010001 	lui	at,0x1
bfc119a4:	00240821 	addu	at,at,a0
bfc119a8:	ac24d8c0 	sw	a0,-10048(at)
bfc119ac:	3c010001 	lui	at,0x1
bfc119b0:	00250821 	addu	at,at,a1
bfc119b4:	ac25d8c0 	sw	a1,-10048(at)
bfc119b8:	3c020001 	lui	v0,0x1
bfc119bc:	00481021 	addu	v0,v0,t0
bfc119c0:	9042d8c0 	lbu	v0,-10048(v0)
bfc119c4:	3c050001 	lui	a1,0x1
bfc119c8:	00a42821 	addu	a1,a1,a0
bfc119cc:	8ca5d8c0 	lw	a1,-10048(a1)
bfc119d0:	3c040001 	lui	a0,0x1
bfc119d4:	00852021 	addu	a0,a0,a1
bfc119d8:	8c84d8c0 	lw	a0,-10048(a0)
bfc119dc:	3c060001 	lui	a2,0x1
bfc119e0:	00c53021 	addu	a2,a2,a1
bfc119e4:	8cc6d8c0 	lw	a2,-10048(a2)
bfc119e8:	1443034e 	bne	v0,v1,bfc12724 <inst_error>
bfc119ec:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:91
bfc119f0:	3c099e06 	lui	t1,0x9e06
bfc119f4:	3529fab8 	ori	t1,t1,0xfab8
bfc119f8:	3c08800d 	lui	t0,0x800d
bfc119fc:	24030006 	li	v1,6
bfc11a00:	ad0904c8 	sw	t1,1224(t0)
bfc11a04:	25040004 	addiu	a0,t0,4
bfc11a08:	2505fff8 	addiu	a1,t0,-8
bfc11a0c:	ac8404c8 	sw	a0,1224(a0)
bfc11a10:	aca504c8 	sw	a1,1224(a1)
bfc11a14:	910204ca 	lbu	v0,1226(t0)
bfc11a18:	8c8504c8 	lw	a1,1224(a0)
bfc11a1c:	8ca404c8 	lw	a0,1224(a1)
bfc11a20:	8ca604c8 	lw	a2,1224(a1)
bfc11a24:	1443033f 	bne	v0,v1,bfc12724 <inst_error>
bfc11a28:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:92
bfc11a2c:	3c0970df 	lui	t1,0x70df
bfc11a30:	35295f2c 	ori	t1,t1,0x5f2c
bfc11a34:	3c08800d 	lui	t0,0x800d
bfc11a38:	240300df 	li	v1,223
bfc11a3c:	3c010001 	lui	at,0x1
bfc11a40:	00280821 	addu	at,at,t0
bfc11a44:	ac29b6b8 	sw	t1,-18760(at)
bfc11a48:	25040004 	addiu	a0,t0,4
bfc11a4c:	2505fff8 	addiu	a1,t0,-8
bfc11a50:	3c010001 	lui	at,0x1
bfc11a54:	00240821 	addu	at,at,a0
bfc11a58:	ac24b6b8 	sw	a0,-18760(at)
bfc11a5c:	3c010001 	lui	at,0x1
bfc11a60:	00250821 	addu	at,at,a1
bfc11a64:	ac25b6b8 	sw	a1,-18760(at)
bfc11a68:	3c020001 	lui	v0,0x1
bfc11a6c:	00481021 	addu	v0,v0,t0
bfc11a70:	9042b6ba 	lbu	v0,-18758(v0)
bfc11a74:	3c050001 	lui	a1,0x1
bfc11a78:	00a42821 	addu	a1,a1,a0
bfc11a7c:	8ca5b6b8 	lw	a1,-18760(a1)
bfc11a80:	3c040001 	lui	a0,0x1
bfc11a84:	00852021 	addu	a0,a0,a1
bfc11a88:	8c84b6b8 	lw	a0,-18760(a0)
bfc11a8c:	3c060001 	lui	a2,0x1
bfc11a90:	00c53021 	addu	a2,a2,a1
bfc11a94:	8cc6b6b8 	lw	a2,-18760(a2)
bfc11a98:	14430322 	bne	v0,v1,bfc12724 <inst_error>
bfc11a9c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:93
bfc11aa0:	3c095717 	lui	t1,0x5717
bfc11aa4:	3529a104 	ori	t1,t1,0xa104
bfc11aa8:	3c08800d 	lui	t0,0x800d
bfc11aac:	24030017 	li	v1,23
bfc11ab0:	3c010001 	lui	at,0x1
bfc11ab4:	00280821 	addu	at,at,t0
bfc11ab8:	ac29edc0 	sw	t1,-4672(at)
bfc11abc:	25040004 	addiu	a0,t0,4
bfc11ac0:	2505fff8 	addiu	a1,t0,-8
bfc11ac4:	3c010001 	lui	at,0x1
bfc11ac8:	00240821 	addu	at,at,a0
bfc11acc:	ac24edc0 	sw	a0,-4672(at)
bfc11ad0:	3c010001 	lui	at,0x1
bfc11ad4:	00250821 	addu	at,at,a1
bfc11ad8:	ac25edc0 	sw	a1,-4672(at)
bfc11adc:	3c020001 	lui	v0,0x1
bfc11ae0:	00481021 	addu	v0,v0,t0
bfc11ae4:	9042edc2 	lbu	v0,-4670(v0)
bfc11ae8:	3c050001 	lui	a1,0x1
bfc11aec:	00a42821 	addu	a1,a1,a0
bfc11af0:	8ca5edc0 	lw	a1,-4672(a1)
bfc11af4:	3c040001 	lui	a0,0x1
bfc11af8:	00852021 	addu	a0,a0,a1
bfc11afc:	8c84edc0 	lw	a0,-4672(a0)
bfc11b00:	3c060001 	lui	a2,0x1
bfc11b04:	00c53021 	addu	a2,a2,a1
bfc11b08:	8cc6edc0 	lw	a2,-4672(a2)
bfc11b0c:	14430305 	bne	v0,v1,bfc12724 <inst_error>
bfc11b10:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:94
bfc11b14:	3c0991f2 	lui	t1,0x91f2
bfc11b18:	3529f789 	ori	t1,t1,0xf789
bfc11b1c:	3c08800d 	lui	t0,0x800d
bfc11b20:	240300f2 	li	v1,242
bfc11b24:	3c010001 	lui	at,0x1
bfc11b28:	00280821 	addu	at,at,t0
bfc11b2c:	ac29cf84 	sw	t1,-12412(at)
bfc11b30:	25040004 	addiu	a0,t0,4
bfc11b34:	2505fff8 	addiu	a1,t0,-8
bfc11b38:	3c010001 	lui	at,0x1
bfc11b3c:	00240821 	addu	at,at,a0
bfc11b40:	ac24cf84 	sw	a0,-12412(at)
bfc11b44:	3c010001 	lui	at,0x1
bfc11b48:	00250821 	addu	at,at,a1
bfc11b4c:	ac25cf84 	sw	a1,-12412(at)
bfc11b50:	3c020001 	lui	v0,0x1
bfc11b54:	00481021 	addu	v0,v0,t0
bfc11b58:	9042cf86 	lbu	v0,-12410(v0)
bfc11b5c:	3c050001 	lui	a1,0x1
bfc11b60:	00a42821 	addu	a1,a1,a0
bfc11b64:	8ca5cf84 	lw	a1,-12412(a1)
bfc11b68:	3c040001 	lui	a0,0x1
bfc11b6c:	00852021 	addu	a0,a0,a1
bfc11b70:	8c84cf84 	lw	a0,-12412(a0)
bfc11b74:	3c060001 	lui	a2,0x1
bfc11b78:	00c53021 	addu	a2,a2,a1
bfc11b7c:	8cc6cf84 	lw	a2,-12412(a2)
bfc11b80:	144302e8 	bne	v0,v1,bfc12724 <inst_error>
bfc11b84:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:95
bfc11b88:	3c0948f3 	lui	t1,0x48f3
bfc11b8c:	3529e380 	ori	t1,t1,0xe380
bfc11b90:	3c08800d 	lui	t0,0x800d
bfc11b94:	24030080 	li	v1,128
bfc11b98:	ad097b7c 	sw	t1,31612(t0)
bfc11b9c:	25040004 	addiu	a0,t0,4
bfc11ba0:	2505fff8 	addiu	a1,t0,-8
bfc11ba4:	ac847b7c 	sw	a0,31612(a0)
bfc11ba8:	aca57b7c 	sw	a1,31612(a1)
bfc11bac:	91027b7c 	lbu	v0,31612(t0)
bfc11bb0:	8c857b7c 	lw	a1,31612(a0)
bfc11bb4:	8ca47b7c 	lw	a0,31612(a1)
bfc11bb8:	8ca67b7c 	lw	a2,31612(a1)
bfc11bbc:	144302d9 	bne	v0,v1,bfc12724 <inst_error>
bfc11bc0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:96
bfc11bc4:	3c09804e 	lui	t1,0x804e
bfc11bc8:	35290100 	ori	t1,t1,0x100
bfc11bcc:	3c08800d 	lui	t0,0x800d
bfc11bd0:	24030000 	li	v1,0
bfc11bd4:	3c010001 	lui	at,0x1
bfc11bd8:	00280821 	addu	at,at,t0
bfc11bdc:	ac29ce00 	sw	t1,-12800(at)
bfc11be0:	25040004 	addiu	a0,t0,4
bfc11be4:	2505fff8 	addiu	a1,t0,-8
bfc11be8:	3c010001 	lui	at,0x1
bfc11bec:	00240821 	addu	at,at,a0
bfc11bf0:	ac24ce00 	sw	a0,-12800(at)
bfc11bf4:	3c010001 	lui	at,0x1
bfc11bf8:	00250821 	addu	at,at,a1
bfc11bfc:	ac25ce00 	sw	a1,-12800(at)
bfc11c00:	3c020001 	lui	v0,0x1
bfc11c04:	00481021 	addu	v0,v0,t0
bfc11c08:	9042ce00 	lbu	v0,-12800(v0)
bfc11c0c:	3c050001 	lui	a1,0x1
bfc11c10:	00a42821 	addu	a1,a1,a0
bfc11c14:	8ca5ce00 	lw	a1,-12800(a1)
bfc11c18:	3c040001 	lui	a0,0x1
bfc11c1c:	00852021 	addu	a0,a0,a1
bfc11c20:	8c84ce00 	lw	a0,-12800(a0)
bfc11c24:	3c060001 	lui	a2,0x1
bfc11c28:	00c53021 	addu	a2,a2,a1
bfc11c2c:	8cc6ce00 	lw	a2,-12800(a2)
bfc11c30:	144302bc 	bne	v0,v1,bfc12724 <inst_error>
bfc11c34:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:97
bfc11c38:	3c092763 	lui	t1,0x2763
bfc11c3c:	35295fe4 	ori	t1,t1,0x5fe4
bfc11c40:	3c08800d 	lui	t0,0x800d
bfc11c44:	240300e4 	li	v1,228
bfc11c48:	3c010001 	lui	at,0x1
bfc11c4c:	00280821 	addu	at,at,t0
bfc11c50:	ac29f2e0 	sw	t1,-3360(at)
bfc11c54:	25040004 	addiu	a0,t0,4
bfc11c58:	2505fff8 	addiu	a1,t0,-8
bfc11c5c:	3c010001 	lui	at,0x1
bfc11c60:	00240821 	addu	at,at,a0
bfc11c64:	ac24f2e0 	sw	a0,-3360(at)
bfc11c68:	3c010001 	lui	at,0x1
bfc11c6c:	00250821 	addu	at,at,a1
bfc11c70:	ac25f2e0 	sw	a1,-3360(at)
bfc11c74:	3c020001 	lui	v0,0x1
bfc11c78:	00481021 	addu	v0,v0,t0
bfc11c7c:	9042f2e0 	lbu	v0,-3360(v0)
bfc11c80:	3c050001 	lui	a1,0x1
bfc11c84:	00a42821 	addu	a1,a1,a0
bfc11c88:	8ca5f2e0 	lw	a1,-3360(a1)
bfc11c8c:	3c040001 	lui	a0,0x1
bfc11c90:	00852021 	addu	a0,a0,a1
bfc11c94:	8c84f2e0 	lw	a0,-3360(a0)
bfc11c98:	3c060001 	lui	a2,0x1
bfc11c9c:	00c53021 	addu	a2,a2,a1
bfc11ca0:	8cc6f2e0 	lw	a2,-3360(a2)
bfc11ca4:	1443029f 	bne	v0,v1,bfc12724 <inst_error>
bfc11ca8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:98
bfc11cac:	3c09ffcb 	lui	t1,0xffcb
bfc11cb0:	3529e970 	ori	t1,t1,0xe970
bfc11cb4:	3c08800d 	lui	t0,0x800d
bfc11cb8:	240300cb 	li	v1,203
bfc11cbc:	ad0959ac 	sw	t1,22956(t0)
bfc11cc0:	25040004 	addiu	a0,t0,4
bfc11cc4:	2505fff8 	addiu	a1,t0,-8
bfc11cc8:	ac8459ac 	sw	a0,22956(a0)
bfc11ccc:	aca559ac 	sw	a1,22956(a1)
bfc11cd0:	910259ae 	lbu	v0,22958(t0)
bfc11cd4:	8c8559ac 	lw	a1,22956(a0)
bfc11cd8:	8ca459ac 	lw	a0,22956(a1)
bfc11cdc:	8ca659ac 	lw	a2,22956(a1)
bfc11ce0:	14430290 	bne	v0,v1,bfc12724 <inst_error>
bfc11ce4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:99
bfc11ce8:	3c095a3c 	lui	t1,0x5a3c
bfc11cec:	3529ef6e 	ori	t1,t1,0xef6e
bfc11cf0:	3c08800d 	lui	t0,0x800d
bfc11cf4:	240300ef 	li	v1,239
bfc11cf8:	3c010001 	lui	at,0x1
bfc11cfc:	00280821 	addu	at,at,t0
bfc11d00:	ac29a604 	sw	t1,-23036(at)
bfc11d04:	25040004 	addiu	a0,t0,4
bfc11d08:	2505fff8 	addiu	a1,t0,-8
bfc11d0c:	3c010001 	lui	at,0x1
bfc11d10:	00240821 	addu	at,at,a0
bfc11d14:	ac24a604 	sw	a0,-23036(at)
bfc11d18:	3c010001 	lui	at,0x1
bfc11d1c:	00250821 	addu	at,at,a1
bfc11d20:	ac25a604 	sw	a1,-23036(at)
bfc11d24:	3c020001 	lui	v0,0x1
bfc11d28:	00481021 	addu	v0,v0,t0
bfc11d2c:	9042a605 	lbu	v0,-23035(v0)
bfc11d30:	3c050001 	lui	a1,0x1
bfc11d34:	00a42821 	addu	a1,a1,a0
bfc11d38:	8ca5a604 	lw	a1,-23036(a1)
bfc11d3c:	3c040001 	lui	a0,0x1
bfc11d40:	00852021 	addu	a0,a0,a1
bfc11d44:	8c84a604 	lw	a0,-23036(a0)
bfc11d48:	3c060001 	lui	a2,0x1
bfc11d4c:	00c53021 	addu	a2,a2,a1
bfc11d50:	8cc6a604 	lw	a2,-23036(a2)
bfc11d54:	14430273 	bne	v0,v1,bfc12724 <inst_error>
bfc11d58:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:100
bfc11d5c:	3c09ef7b 	lui	t1,0xef7b
bfc11d60:	35295e90 	ori	t1,t1,0x5e90
bfc11d64:	3c08800d 	lui	t0,0x800d
bfc11d68:	2403007b 	li	v1,123
bfc11d6c:	3c010001 	lui	at,0x1
bfc11d70:	00280821 	addu	at,at,t0
bfc11d74:	ac298894 	sw	t1,-30572(at)
bfc11d78:	25040004 	addiu	a0,t0,4
bfc11d7c:	2505fff8 	addiu	a1,t0,-8
bfc11d80:	3c010001 	lui	at,0x1
bfc11d84:	00240821 	addu	at,at,a0
bfc11d88:	ac248894 	sw	a0,-30572(at)
bfc11d8c:	3c010001 	lui	at,0x1
bfc11d90:	00250821 	addu	at,at,a1
bfc11d94:	ac258894 	sw	a1,-30572(at)
bfc11d98:	3c020001 	lui	v0,0x1
bfc11d9c:	00481021 	addu	v0,v0,t0
bfc11da0:	90428896 	lbu	v0,-30570(v0)
bfc11da4:	3c050001 	lui	a1,0x1
bfc11da8:	00a42821 	addu	a1,a1,a0
bfc11dac:	8ca58894 	lw	a1,-30572(a1)
bfc11db0:	3c040001 	lui	a0,0x1
bfc11db4:	00852021 	addu	a0,a0,a1
bfc11db8:	8c848894 	lw	a0,-30572(a0)
bfc11dbc:	3c060001 	lui	a2,0x1
bfc11dc0:	00c53021 	addu	a2,a2,a1
bfc11dc4:	8cc68894 	lw	a2,-30572(a2)
bfc11dc8:	14430256 	bne	v0,v1,bfc12724 <inst_error>
bfc11dcc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:101
bfc11dd0:	3c09262a 	lui	t1,0x262a
bfc11dd4:	35295e90 	ori	t1,t1,0x5e90
bfc11dd8:	3c08800d 	lui	t0,0x800d
bfc11ddc:	24030026 	li	v1,38
bfc11de0:	3c010001 	lui	at,0x1
bfc11de4:	00280821 	addu	at,at,t0
bfc11de8:	ac29f96c 	sw	t1,-1684(at)
bfc11dec:	25040004 	addiu	a0,t0,4
bfc11df0:	2505fff8 	addiu	a1,t0,-8
bfc11df4:	3c010001 	lui	at,0x1
bfc11df8:	00240821 	addu	at,at,a0
bfc11dfc:	ac24f96c 	sw	a0,-1684(at)
bfc11e00:	3c010001 	lui	at,0x1
bfc11e04:	00250821 	addu	at,at,a1
bfc11e08:	ac25f96c 	sw	a1,-1684(at)
bfc11e0c:	3c020001 	lui	v0,0x1
bfc11e10:	00481021 	addu	v0,v0,t0
bfc11e14:	9042f96f 	lbu	v0,-1681(v0)
bfc11e18:	3c050001 	lui	a1,0x1
bfc11e1c:	00a42821 	addu	a1,a1,a0
bfc11e20:	8ca5f96c 	lw	a1,-1684(a1)
bfc11e24:	3c040001 	lui	a0,0x1
bfc11e28:	00852021 	addu	a0,a0,a1
bfc11e2c:	8c84f96c 	lw	a0,-1684(a0)
bfc11e30:	3c060001 	lui	a2,0x1
bfc11e34:	00c53021 	addu	a2,a2,a1
bfc11e38:	8cc6f96c 	lw	a2,-1684(a2)
bfc11e3c:	14430239 	bne	v0,v1,bfc12724 <inst_error>
bfc11e40:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:102
bfc11e44:	3c09a267 	lui	t1,0xa267
bfc11e48:	352901e8 	ori	t1,t1,0x1e8
bfc11e4c:	3c08800d 	lui	t0,0x800d
bfc11e50:	24030001 	li	v1,1
bfc11e54:	3c010001 	lui	at,0x1
bfc11e58:	00280821 	addu	at,at,t0
bfc11e5c:	ac299398 	sw	t1,-27752(at)
bfc11e60:	25040004 	addiu	a0,t0,4
bfc11e64:	2505fff8 	addiu	a1,t0,-8
bfc11e68:	3c010001 	lui	at,0x1
bfc11e6c:	00240821 	addu	at,at,a0
bfc11e70:	ac249398 	sw	a0,-27752(at)
bfc11e74:	3c010001 	lui	at,0x1
bfc11e78:	00250821 	addu	at,at,a1
bfc11e7c:	ac259398 	sw	a1,-27752(at)
bfc11e80:	3c020001 	lui	v0,0x1
bfc11e84:	00481021 	addu	v0,v0,t0
bfc11e88:	90429399 	lbu	v0,-27751(v0)
bfc11e8c:	3c050001 	lui	a1,0x1
bfc11e90:	00a42821 	addu	a1,a1,a0
bfc11e94:	8ca59398 	lw	a1,-27752(a1)
bfc11e98:	3c040001 	lui	a0,0x1
bfc11e9c:	00852021 	addu	a0,a0,a1
bfc11ea0:	8c849398 	lw	a0,-27752(a0)
bfc11ea4:	3c060001 	lui	a2,0x1
bfc11ea8:	00c53021 	addu	a2,a2,a1
bfc11eac:	8cc69398 	lw	a2,-27752(a2)
bfc11eb0:	1443021c 	bne	v0,v1,bfc12724 <inst_error>
bfc11eb4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:103
bfc11eb8:	3c092f2f 	lui	t1,0x2f2f
bfc11ebc:	352973f0 	ori	t1,t1,0x73f0
bfc11ec0:	3c08800d 	lui	t0,0x800d
bfc11ec4:	240300f0 	li	v1,240
bfc11ec8:	3c010001 	lui	at,0x1
bfc11ecc:	00280821 	addu	at,at,t0
bfc11ed0:	ac29ea14 	sw	t1,-5612(at)
bfc11ed4:	25040004 	addiu	a0,t0,4
bfc11ed8:	2505fff8 	addiu	a1,t0,-8
bfc11edc:	3c010001 	lui	at,0x1
bfc11ee0:	00240821 	addu	at,at,a0
bfc11ee4:	ac24ea14 	sw	a0,-5612(at)
bfc11ee8:	3c010001 	lui	at,0x1
bfc11eec:	00250821 	addu	at,at,a1
bfc11ef0:	ac25ea14 	sw	a1,-5612(at)
bfc11ef4:	3c020001 	lui	v0,0x1
bfc11ef8:	00481021 	addu	v0,v0,t0
bfc11efc:	9042ea14 	lbu	v0,-5612(v0)
bfc11f00:	3c050001 	lui	a1,0x1
bfc11f04:	00a42821 	addu	a1,a1,a0
bfc11f08:	8ca5ea14 	lw	a1,-5612(a1)
bfc11f0c:	3c040001 	lui	a0,0x1
bfc11f10:	00852021 	addu	a0,a0,a1
bfc11f14:	8c84ea14 	lw	a0,-5612(a0)
bfc11f18:	3c060001 	lui	a2,0x1
bfc11f1c:	00c53021 	addu	a2,a2,a1
bfc11f20:	8cc6ea14 	lw	a2,-5612(a2)
bfc11f24:	144301ff 	bne	v0,v1,bfc12724 <inst_error>
bfc11f28:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:104
bfc11f2c:	3c0938ce 	lui	t1,0x38ce
bfc11f30:	35294640 	ori	t1,t1,0x4640
bfc11f34:	3c08800d 	lui	t0,0x800d
bfc11f38:	240300ce 	li	v1,206
bfc11f3c:	ad095780 	sw	t1,22400(t0)
bfc11f40:	25040004 	addiu	a0,t0,4
bfc11f44:	2505fff8 	addiu	a1,t0,-8
bfc11f48:	ac845780 	sw	a0,22400(a0)
bfc11f4c:	aca55780 	sw	a1,22400(a1)
bfc11f50:	91025782 	lbu	v0,22402(t0)
bfc11f54:	8c855780 	lw	a1,22400(a0)
bfc11f58:	8ca45780 	lw	a0,22400(a1)
bfc11f5c:	8ca65780 	lw	a2,22400(a1)
bfc11f60:	144301f0 	bne	v0,v1,bfc12724 <inst_error>
bfc11f64:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:105
bfc11f68:	3c09bb69 	lui	t1,0xbb69
bfc11f6c:	3529c800 	ori	t1,t1,0xc800
bfc11f70:	3c08800d 	lui	t0,0x800d
bfc11f74:	24030069 	li	v1,105
bfc11f78:	ad090b44 	sw	t1,2884(t0)
bfc11f7c:	25040004 	addiu	a0,t0,4
bfc11f80:	2505fff8 	addiu	a1,t0,-8
bfc11f84:	ac840b44 	sw	a0,2884(a0)
bfc11f88:	aca50b44 	sw	a1,2884(a1)
bfc11f8c:	91020b46 	lbu	v0,2886(t0)
bfc11f90:	8c850b44 	lw	a1,2884(a0)
bfc11f94:	8ca40b44 	lw	a0,2884(a1)
bfc11f98:	8ca60b44 	lw	a2,2884(a1)
bfc11f9c:	144301e1 	bne	v0,v1,bfc12724 <inst_error>
bfc11fa0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:106
bfc11fa4:	3c097b9d 	lui	t1,0x7b9d
bfc11fa8:	3529a800 	ori	t1,t1,0xa800
bfc11fac:	3c08800d 	lui	t0,0x800d
bfc11fb0:	2403009d 	li	v1,157
bfc11fb4:	3c010001 	lui	at,0x1
bfc11fb8:	00280821 	addu	at,at,t0
bfc11fbc:	ac29f048 	sw	t1,-4024(at)
bfc11fc0:	25040004 	addiu	a0,t0,4
bfc11fc4:	2505fff8 	addiu	a1,t0,-8
bfc11fc8:	3c010001 	lui	at,0x1
bfc11fcc:	00240821 	addu	at,at,a0
bfc11fd0:	ac24f048 	sw	a0,-4024(at)
bfc11fd4:	3c010001 	lui	at,0x1
bfc11fd8:	00250821 	addu	at,at,a1
bfc11fdc:	ac25f048 	sw	a1,-4024(at)
bfc11fe0:	3c020001 	lui	v0,0x1
bfc11fe4:	00481021 	addu	v0,v0,t0
bfc11fe8:	9042f04a 	lbu	v0,-4022(v0)
bfc11fec:	3c050001 	lui	a1,0x1
bfc11ff0:	00a42821 	addu	a1,a1,a0
bfc11ff4:	8ca5f048 	lw	a1,-4024(a1)
bfc11ff8:	3c040001 	lui	a0,0x1
bfc11ffc:	00852021 	addu	a0,a0,a1
bfc12000:	8c84f048 	lw	a0,-4024(a0)
bfc12004:	3c060001 	lui	a2,0x1
bfc12008:	00c53021 	addu	a2,a2,a1
bfc1200c:	8cc6f048 	lw	a2,-4024(a2)
bfc12010:	144301c4 	bne	v0,v1,bfc12724 <inst_error>
bfc12014:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:107
bfc12018:	3c095568 	lui	t1,0x5568
bfc1201c:	3529c260 	ori	t1,t1,0xc260
bfc12020:	3c08800d 	lui	t0,0x800d
bfc12024:	24030060 	li	v1,96
bfc12028:	ad0972e0 	sw	t1,29408(t0)
bfc1202c:	25040004 	addiu	a0,t0,4
bfc12030:	2505fff8 	addiu	a1,t0,-8
bfc12034:	ac8472e0 	sw	a0,29408(a0)
bfc12038:	aca572e0 	sw	a1,29408(a1)
bfc1203c:	910272e0 	lbu	v0,29408(t0)
bfc12040:	8c8572e0 	lw	a1,29408(a0)
bfc12044:	8ca472e0 	lw	a0,29408(a1)
bfc12048:	8ca672e0 	lw	a2,29408(a1)
bfc1204c:	144301b5 	bne	v0,v1,bfc12724 <inst_error>
bfc12050:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:108
bfc12054:	3c094bd9 	lui	t1,0x4bd9
bfc12058:	35293c80 	ori	t1,t1,0x3c80
bfc1205c:	3c08800d 	lui	t0,0x800d
bfc12060:	24030080 	li	v1,128
bfc12064:	3c010001 	lui	at,0x1
bfc12068:	00280821 	addu	at,at,t0
bfc1206c:	ac29ee30 	sw	t1,-4560(at)
bfc12070:	25040004 	addiu	a0,t0,4
bfc12074:	2505fff8 	addiu	a1,t0,-8
bfc12078:	3c010001 	lui	at,0x1
bfc1207c:	00240821 	addu	at,at,a0
bfc12080:	ac24ee30 	sw	a0,-4560(at)
bfc12084:	3c010001 	lui	at,0x1
bfc12088:	00250821 	addu	at,at,a1
bfc1208c:	ac25ee30 	sw	a1,-4560(at)
bfc12090:	3c020001 	lui	v0,0x1
bfc12094:	00481021 	addu	v0,v0,t0
bfc12098:	9042ee30 	lbu	v0,-4560(v0)
bfc1209c:	3c050001 	lui	a1,0x1
bfc120a0:	00a42821 	addu	a1,a1,a0
bfc120a4:	8ca5ee30 	lw	a1,-4560(a1)
bfc120a8:	3c040001 	lui	a0,0x1
bfc120ac:	00852021 	addu	a0,a0,a1
bfc120b0:	8c84ee30 	lw	a0,-4560(a0)
bfc120b4:	3c060001 	lui	a2,0x1
bfc120b8:	00c53021 	addu	a2,a2,a1
bfc120bc:	8cc6ee30 	lw	a2,-4560(a2)
bfc120c0:	14430198 	bne	v0,v1,bfc12724 <inst_error>
bfc120c4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:109
bfc120c8:	3c0923ad 	lui	t1,0x23ad
bfc120cc:	3529f432 	ori	t1,t1,0xf432
bfc120d0:	3c08800d 	lui	t0,0x800d
bfc120d4:	240300f4 	li	v1,244
bfc120d8:	ad096008 	sw	t1,24584(t0)
bfc120dc:	25040004 	addiu	a0,t0,4
bfc120e0:	2505fff8 	addiu	a1,t0,-8
bfc120e4:	ac846008 	sw	a0,24584(a0)
bfc120e8:	aca56008 	sw	a1,24584(a1)
bfc120ec:	91026009 	lbu	v0,24585(t0)
bfc120f0:	8c856008 	lw	a1,24584(a0)
bfc120f4:	8ca46008 	lw	a0,24584(a1)
bfc120f8:	8ca66008 	lw	a2,24584(a1)
bfc120fc:	14430189 	bne	v0,v1,bfc12724 <inst_error>
bfc12100:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:110
bfc12104:	3c096187 	lui	t1,0x6187
bfc12108:	3529f420 	ori	t1,t1,0xf420
bfc1210c:	3c08800d 	lui	t0,0x800d
bfc12110:	24030020 	li	v1,32
bfc12114:	ad092fd4 	sw	t1,12244(t0)
bfc12118:	25040004 	addiu	a0,t0,4
bfc1211c:	2505fff8 	addiu	a1,t0,-8
bfc12120:	ac842fd4 	sw	a0,12244(a0)
bfc12124:	aca52fd4 	sw	a1,12244(a1)
bfc12128:	91022fd4 	lbu	v0,12244(t0)
bfc1212c:	8c852fd4 	lw	a1,12244(a0)
bfc12130:	8ca42fd4 	lw	a0,12244(a1)
bfc12134:	8ca62fd4 	lw	a2,12244(a1)
bfc12138:	1443017a 	bne	v0,v1,bfc12724 <inst_error>
bfc1213c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:111
bfc12140:	3c096836 	lui	t1,0x6836
bfc12144:	35293fa0 	ori	t1,t1,0x3fa0
bfc12148:	3c08800d 	lui	t0,0x800d
bfc1214c:	240300a0 	li	v1,160
bfc12150:	ad093e68 	sw	t1,15976(t0)
bfc12154:	25040004 	addiu	a0,t0,4
bfc12158:	2505fff8 	addiu	a1,t0,-8
bfc1215c:	ac843e68 	sw	a0,15976(a0)
bfc12160:	aca53e68 	sw	a1,15976(a1)
bfc12164:	91023e68 	lbu	v0,15976(t0)
bfc12168:	8c853e68 	lw	a1,15976(a0)
bfc1216c:	8ca43e68 	lw	a0,15976(a1)
bfc12170:	8ca63e68 	lw	a2,15976(a1)
bfc12174:	1443016b 	bne	v0,v1,bfc12724 <inst_error>
bfc12178:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:112
bfc1217c:	3c093723 	lui	t1,0x3723
bfc12180:	3529c7f3 	ori	t1,t1,0xc7f3
bfc12184:	3c08800d 	lui	t0,0x800d
bfc12188:	240300f3 	li	v1,243
bfc1218c:	ad0943e0 	sw	t1,17376(t0)
bfc12190:	25040004 	addiu	a0,t0,4
bfc12194:	2505fff8 	addiu	a1,t0,-8
bfc12198:	ac8443e0 	sw	a0,17376(a0)
bfc1219c:	aca543e0 	sw	a1,17376(a1)
bfc121a0:	910243e0 	lbu	v0,17376(t0)
bfc121a4:	8c8543e0 	lw	a1,17376(a0)
bfc121a8:	8ca443e0 	lw	a0,17376(a1)
bfc121ac:	8ca643e0 	lw	a2,17376(a1)
bfc121b0:	1443015c 	bne	v0,v1,bfc12724 <inst_error>
bfc121b4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:113
bfc121b8:	3c09d367 	lui	t1,0xd367
bfc121bc:	3529e11a 	ori	t1,t1,0xe11a
bfc121c0:	3c08800d 	lui	t0,0x800d
bfc121c4:	2403001a 	li	v1,26
bfc121c8:	ad090000 	sw	t1,0(t0)
bfc121cc:	25040004 	addiu	a0,t0,4
bfc121d0:	2505fff8 	addiu	a1,t0,-8
bfc121d4:	ac840000 	sw	a0,0(a0)
bfc121d8:	aca50000 	sw	a1,0(a1)
bfc121dc:	91020000 	lbu	v0,0(t0)
bfc121e0:	8c850000 	lw	a1,0(a0)
bfc121e4:	8ca40000 	lw	a0,0(a1)
bfc121e8:	8ca60000 	lw	a2,0(a1)
bfc121ec:	1443014d 	bne	v0,v1,bfc12724 <inst_error>
bfc121f0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:114
bfc121f4:	3c09ea1b 	lui	t1,0xea1b
bfc121f8:	3529c1e0 	ori	t1,t1,0xc1e0
bfc121fc:	3c08800d 	lui	t0,0x800d
bfc12200:	240300ea 	li	v1,234
bfc12204:	ad090000 	sw	t1,0(t0)
bfc12208:	25040004 	addiu	a0,t0,4
bfc1220c:	2505fff8 	addiu	a1,t0,-8
bfc12210:	ac840000 	sw	a0,0(a0)
bfc12214:	aca50000 	sw	a1,0(a1)
bfc12218:	91020003 	lbu	v0,3(t0)
bfc1221c:	8c850000 	lw	a1,0(a0)
bfc12220:	8ca40000 	lw	a0,0(a1)
bfc12224:	8ca60000 	lw	a2,0(a1)
bfc12228:	1443013e 	bne	v0,v1,bfc12724 <inst_error>
bfc1222c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:115
bfc12230:	3c090dbc 	lui	t1,0xdbc
bfc12234:	3529d2ea 	ori	t1,t1,0xd2ea
bfc12238:	3c08800d 	lui	t0,0x800d
bfc1223c:	240300d2 	li	v1,210
bfc12240:	ad090000 	sw	t1,0(t0)
bfc12244:	25040004 	addiu	a0,t0,4
bfc12248:	2505fff8 	addiu	a1,t0,-8
bfc1224c:	ac840000 	sw	a0,0(a0)
bfc12250:	aca50000 	sw	a1,0(a1)
bfc12254:	91020001 	lbu	v0,1(t0)
bfc12258:	8c850000 	lw	a1,0(a0)
bfc1225c:	8ca40000 	lw	a0,0(a1)
bfc12260:	8ca60000 	lw	a2,0(a1)
bfc12264:	1443012f 	bne	v0,v1,bfc12724 <inst_error>
bfc12268:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:116
bfc1226c:	3c092e83 	lui	t1,0x2e83
bfc12270:	352977c6 	ori	t1,t1,0x77c6
bfc12274:	3c08800d 	lui	t0,0x800d
bfc12278:	240300c6 	li	v1,198
bfc1227c:	ad090000 	sw	t1,0(t0)
bfc12280:	25040004 	addiu	a0,t0,4
bfc12284:	2505fff8 	addiu	a1,t0,-8
bfc12288:	ac840000 	sw	a0,0(a0)
bfc1228c:	aca50000 	sw	a1,0(a1)
bfc12290:	91020000 	lbu	v0,0(t0)
bfc12294:	8c850000 	lw	a1,0(a0)
bfc12298:	8ca40000 	lw	a0,0(a1)
bfc1229c:	8ca60000 	lw	a2,0(a1)
bfc122a0:	14430120 	bne	v0,v1,bfc12724 <inst_error>
bfc122a4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:117
bfc122a8:	3c0985d1 	lui	t1,0x85d1
bfc122ac:	3529767c 	ori	t1,t1,0x767c
bfc122b0:	3c08800d 	lui	t0,0x800d
bfc122b4:	24030076 	li	v1,118
bfc122b8:	ad090000 	sw	t1,0(t0)
bfc122bc:	25040004 	addiu	a0,t0,4
bfc122c0:	2505fff8 	addiu	a1,t0,-8
bfc122c4:	ac840000 	sw	a0,0(a0)
bfc122c8:	aca50000 	sw	a1,0(a1)
bfc122cc:	91020001 	lbu	v0,1(t0)
bfc122d0:	8c850000 	lw	a1,0(a0)
bfc122d4:	8ca40000 	lw	a0,0(a1)
bfc122d8:	8ca60000 	lw	a2,0(a1)
bfc122dc:	14430111 	bne	v0,v1,bfc12724 <inst_error>
bfc122e0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:118
bfc122e4:	3c092a80 	lui	t1,0x2a80
bfc122e8:	35297b6e 	ori	t1,t1,0x7b6e
bfc122ec:	3c08800d 	lui	t0,0x800d
bfc122f0:	2403006e 	li	v1,110
bfc122f4:	ad090000 	sw	t1,0(t0)
bfc122f8:	25040004 	addiu	a0,t0,4
bfc122fc:	2505fff8 	addiu	a1,t0,-8
bfc12300:	ac840000 	sw	a0,0(a0)
bfc12304:	aca50000 	sw	a1,0(a1)
bfc12308:	91020000 	lbu	v0,0(t0)
bfc1230c:	8c850000 	lw	a1,0(a0)
bfc12310:	8ca40000 	lw	a0,0(a1)
bfc12314:	8ca60000 	lw	a2,0(a1)
bfc12318:	14430102 	bne	v0,v1,bfc12724 <inst_error>
bfc1231c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:119
bfc12320:	3c097c7e 	lui	t1,0x7c7e
bfc12324:	3529468b 	ori	t1,t1,0x468b
bfc12328:	3c08800d 	lui	t0,0x800d
bfc1232c:	24030046 	li	v1,70
bfc12330:	ad090000 	sw	t1,0(t0)
bfc12334:	25040004 	addiu	a0,t0,4
bfc12338:	2505fff8 	addiu	a1,t0,-8
bfc1233c:	ac840000 	sw	a0,0(a0)
bfc12340:	aca50000 	sw	a1,0(a1)
bfc12344:	91020001 	lbu	v0,1(t0)
bfc12348:	8c850000 	lw	a1,0(a0)
bfc1234c:	8ca40000 	lw	a0,0(a1)
bfc12350:	8ca60000 	lw	a2,0(a1)
bfc12354:	144300f3 	bne	v0,v1,bfc12724 <inst_error>
bfc12358:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:120
bfc1235c:	3c09766b 	lui	t1,0x766b
bfc12360:	352930aa 	ori	t1,t1,0x30aa
bfc12364:	3c08800d 	lui	t0,0x800d
bfc12368:	240300aa 	li	v1,170
bfc1236c:	ad090000 	sw	t1,0(t0)
bfc12370:	25040004 	addiu	a0,t0,4
bfc12374:	2505fff8 	addiu	a1,t0,-8
bfc12378:	ac840000 	sw	a0,0(a0)
bfc1237c:	aca50000 	sw	a1,0(a1)
bfc12380:	91020000 	lbu	v0,0(t0)
bfc12384:	8c850000 	lw	a1,0(a0)
bfc12388:	8ca40000 	lw	a0,0(a1)
bfc1238c:	8ca60000 	lw	a2,0(a1)
bfc12390:	144300e4 	bne	v0,v1,bfc12724 <inst_error>
bfc12394:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:121
bfc12398:	3c09f311 	lui	t1,0xf311
bfc1239c:	35292744 	ori	t1,t1,0x2744
bfc123a0:	3c08800d 	lui	t0,0x800d
bfc123a4:	240300f3 	li	v1,243
bfc123a8:	ad090000 	sw	t1,0(t0)
bfc123ac:	25040004 	addiu	a0,t0,4
bfc123b0:	2505fff8 	addiu	a1,t0,-8
bfc123b4:	ac840000 	sw	a0,0(a0)
bfc123b8:	aca50000 	sw	a1,0(a1)
bfc123bc:	91020003 	lbu	v0,3(t0)
bfc123c0:	8c850000 	lw	a1,0(a0)
bfc123c4:	8ca40000 	lw	a0,0(a1)
bfc123c8:	8ca60000 	lw	a2,0(a1)
bfc123cc:	144300d5 	bne	v0,v1,bfc12724 <inst_error>
bfc123d0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:122
bfc123d4:	3c0924da 	lui	t1,0x24da
bfc123d8:	3529377c 	ori	t1,t1,0x377c
bfc123dc:	3c08800d 	lui	t0,0x800d
bfc123e0:	24030037 	li	v1,55
bfc123e4:	ad090000 	sw	t1,0(t0)
bfc123e8:	25040004 	addiu	a0,t0,4
bfc123ec:	2505fff8 	addiu	a1,t0,-8
bfc123f0:	ac840000 	sw	a0,0(a0)
bfc123f4:	aca50000 	sw	a1,0(a1)
bfc123f8:	91020001 	lbu	v0,1(t0)
bfc123fc:	8c850000 	lw	a1,0(a0)
bfc12400:	8ca40000 	lw	a0,0(a1)
bfc12404:	8ca60000 	lw	a2,0(a1)
bfc12408:	144300c6 	bne	v0,v1,bfc12724 <inst_error>
bfc1240c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:123
bfc12410:	3c099eda 	lui	t1,0x9eda
bfc12414:	35291a30 	ori	t1,t1,0x1a30
bfc12418:	3c08800d 	lui	t0,0x800d
bfc1241c:	2403001a 	li	v1,26
bfc12420:	ad090000 	sw	t1,0(t0)
bfc12424:	25040004 	addiu	a0,t0,4
bfc12428:	2505fff8 	addiu	a1,t0,-8
bfc1242c:	ac840000 	sw	a0,0(a0)
bfc12430:	aca50000 	sw	a1,0(a1)
bfc12434:	91020001 	lbu	v0,1(t0)
bfc12438:	8c850000 	lw	a1,0(a0)
bfc1243c:	8ca40000 	lw	a0,0(a1)
bfc12440:	8ca60000 	lw	a2,0(a1)
bfc12444:	144300b7 	bne	v0,v1,bfc12724 <inst_error>
bfc12448:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:124
bfc1244c:	3c091e77 	lui	t1,0x1e77
bfc12450:	352930fe 	ori	t1,t1,0x30fe
bfc12454:	3c08800d 	lui	t0,0x800d
bfc12458:	240300fe 	li	v1,254
bfc1245c:	ad090000 	sw	t1,0(t0)
bfc12460:	25040004 	addiu	a0,t0,4
bfc12464:	2505fff8 	addiu	a1,t0,-8
bfc12468:	ac840000 	sw	a0,0(a0)
bfc1246c:	aca50000 	sw	a1,0(a1)
bfc12470:	91020000 	lbu	v0,0(t0)
bfc12474:	8c850000 	lw	a1,0(a0)
bfc12478:	8ca40000 	lw	a0,0(a1)
bfc1247c:	8ca60000 	lw	a2,0(a1)
bfc12480:	144300a8 	bne	v0,v1,bfc12724 <inst_error>
bfc12484:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:125
bfc12488:	3c094acf 	lui	t1,0x4acf
bfc1248c:	3529dea0 	ori	t1,t1,0xdea0
bfc12490:	3c08800d 	lui	t0,0x800d
bfc12494:	240300de 	li	v1,222
bfc12498:	ad090000 	sw	t1,0(t0)
bfc1249c:	25040004 	addiu	a0,t0,4
bfc124a0:	2505fff8 	addiu	a1,t0,-8
bfc124a4:	ac840000 	sw	a0,0(a0)
bfc124a8:	aca50000 	sw	a1,0(a1)
bfc124ac:	91020001 	lbu	v0,1(t0)
bfc124b0:	8c850000 	lw	a1,0(a0)
bfc124b4:	8ca40000 	lw	a0,0(a1)
bfc124b8:	8ca60000 	lw	a2,0(a1)
bfc124bc:	14430099 	bne	v0,v1,bfc12724 <inst_error>
bfc124c0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:126
bfc124c4:	3c0984b7 	lui	t1,0x84b7
bfc124c8:	35290109 	ori	t1,t1,0x109
bfc124cc:	3c08800d 	lui	t0,0x800d
bfc124d0:	24030084 	li	v1,132
bfc124d4:	ad090000 	sw	t1,0(t0)
bfc124d8:	25040004 	addiu	a0,t0,4
bfc124dc:	2505fff8 	addiu	a1,t0,-8
bfc124e0:	ac840000 	sw	a0,0(a0)
bfc124e4:	aca50000 	sw	a1,0(a1)
bfc124e8:	91020003 	lbu	v0,3(t0)
bfc124ec:	8c850000 	lw	a1,0(a0)
bfc124f0:	8ca40000 	lw	a0,0(a1)
bfc124f4:	8ca60000 	lw	a2,0(a1)
bfc124f8:	1443008a 	bne	v0,v1,bfc12724 <inst_error>
bfc124fc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:127
bfc12500:	3c09ace9 	lui	t1,0xace9
bfc12504:	3529f794 	ori	t1,t1,0xf794
bfc12508:	3c08800d 	lui	t0,0x800d
bfc1250c:	24030094 	li	v1,148
bfc12510:	ad090000 	sw	t1,0(t0)
bfc12514:	25040004 	addiu	a0,t0,4
bfc12518:	2505fff8 	addiu	a1,t0,-8
bfc1251c:	ac840000 	sw	a0,0(a0)
bfc12520:	aca50000 	sw	a1,0(a1)
bfc12524:	91020000 	lbu	v0,0(t0)
bfc12528:	8c850000 	lw	a1,0(a0)
bfc1252c:	8ca40000 	lw	a0,0(a1)
bfc12530:	8ca60000 	lw	a2,0(a1)
bfc12534:	1443007b 	bne	v0,v1,bfc12724 <inst_error>
bfc12538:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:128
bfc1253c:	3c0960a3 	lui	t1,0x60a3
bfc12540:	3529b6d8 	ori	t1,t1,0xb6d8
bfc12544:	3c08800d 	lui	t0,0x800d
bfc12548:	240300b6 	li	v1,182
bfc1254c:	ad090000 	sw	t1,0(t0)
bfc12550:	25040004 	addiu	a0,t0,4
bfc12554:	2505fff8 	addiu	a1,t0,-8
bfc12558:	ac840000 	sw	a0,0(a0)
bfc1255c:	aca50000 	sw	a1,0(a1)
bfc12560:	91020001 	lbu	v0,1(t0)
bfc12564:	8c850000 	lw	a1,0(a0)
bfc12568:	8ca40000 	lw	a0,0(a1)
bfc1256c:	8ca60000 	lw	a2,0(a1)
bfc12570:	1443006c 	bne	v0,v1,bfc12724 <inst_error>
bfc12574:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:129
bfc12578:	3c09954e 	lui	t1,0x954e
bfc1257c:	3529b5ee 	ori	t1,t1,0xb5ee
bfc12580:	3c08800d 	lui	t0,0x800d
bfc12584:	240300b5 	li	v1,181
bfc12588:	ad090000 	sw	t1,0(t0)
bfc1258c:	25040004 	addiu	a0,t0,4
bfc12590:	2505fff8 	addiu	a1,t0,-8
bfc12594:	ac840000 	sw	a0,0(a0)
bfc12598:	aca50000 	sw	a1,0(a1)
bfc1259c:	91020001 	lbu	v0,1(t0)
bfc125a0:	8c850000 	lw	a1,0(a0)
bfc125a4:	8ca40000 	lw	a0,0(a1)
bfc125a8:	8ca60000 	lw	a2,0(a1)
bfc125ac:	1443005d 	bne	v0,v1,bfc12724 <inst_error>
bfc125b0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:130
bfc125b4:	3c0995ff 	lui	t1,0x95ff
bfc125b8:	3529cf80 	ori	t1,t1,0xcf80
bfc125bc:	3c08800d 	lui	t0,0x800d
bfc125c0:	24030095 	li	v1,149
bfc125c4:	ad090000 	sw	t1,0(t0)
bfc125c8:	25040004 	addiu	a0,t0,4
bfc125cc:	2505fff8 	addiu	a1,t0,-8
bfc125d0:	ac840000 	sw	a0,0(a0)
bfc125d4:	aca50000 	sw	a1,0(a1)
bfc125d8:	91020003 	lbu	v0,3(t0)
bfc125dc:	8c850000 	lw	a1,0(a0)
bfc125e0:	8ca40000 	lw	a0,0(a1)
bfc125e4:	8ca60000 	lw	a2,0(a1)
bfc125e8:	1443004e 	bne	v0,v1,bfc12724 <inst_error>
bfc125ec:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:131
bfc125f0:	3c09e20e 	lui	t1,0xe20e
bfc125f4:	3529fe40 	ori	t1,t1,0xfe40
bfc125f8:	3c08800d 	lui	t0,0x800d
bfc125fc:	24030040 	li	v1,64
bfc12600:	ad090000 	sw	t1,0(t0)
bfc12604:	25040004 	addiu	a0,t0,4
bfc12608:	2505fff8 	addiu	a1,t0,-8
bfc1260c:	ac840000 	sw	a0,0(a0)
bfc12610:	aca50000 	sw	a1,0(a1)
bfc12614:	91020000 	lbu	v0,0(t0)
bfc12618:	8c850000 	lw	a1,0(a0)
bfc1261c:	8ca40000 	lw	a0,0(a1)
bfc12620:	8ca60000 	lw	a2,0(a1)
bfc12624:	1443003f 	bne	v0,v1,bfc12724 <inst_error>
bfc12628:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:132
bfc1262c:	3c09826e 	lui	t1,0x826e
bfc12630:	35290c40 	ori	t1,t1,0xc40
bfc12634:	3c08800d 	lui	t0,0x800d
bfc12638:	24030082 	li	v1,130
bfc1263c:	ad090000 	sw	t1,0(t0)
bfc12640:	25040004 	addiu	a0,t0,4
bfc12644:	2505fff8 	addiu	a1,t0,-8
bfc12648:	ac840000 	sw	a0,0(a0)
bfc1264c:	aca50000 	sw	a1,0(a1)
bfc12650:	91020003 	lbu	v0,3(t0)
bfc12654:	8c850000 	lw	a1,0(a0)
bfc12658:	8ca40000 	lw	a0,0(a1)
bfc1265c:	8ca60000 	lw	a2,0(a1)
bfc12660:	14430030 	bne	v0,v1,bfc12724 <inst_error>
bfc12664:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:133
bfc12668:	3c093c7f 	lui	t1,0x3c7f
bfc1266c:	35293796 	ori	t1,t1,0x3796
bfc12670:	3c08800d 	lui	t0,0x800d
bfc12674:	2403003c 	li	v1,60
bfc12678:	ad090000 	sw	t1,0(t0)
bfc1267c:	25040004 	addiu	a0,t0,4
bfc12680:	2505fff8 	addiu	a1,t0,-8
bfc12684:	ac840000 	sw	a0,0(a0)
bfc12688:	aca50000 	sw	a1,0(a1)
bfc1268c:	91020003 	lbu	v0,3(t0)
bfc12690:	8c850000 	lw	a1,0(a0)
bfc12694:	8ca40000 	lw	a0,0(a1)
bfc12698:	8ca60000 	lw	a2,0(a1)
bfc1269c:	14430021 	bne	v0,v1,bfc12724 <inst_error>
bfc126a0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:134
bfc126a4:	3c09d82d 	lui	t1,0xd82d
bfc126a8:	35294498 	ori	t1,t1,0x4498
bfc126ac:	3c08800d 	lui	t0,0x800d
bfc126b0:	2403002d 	li	v1,45
bfc126b4:	ad090000 	sw	t1,0(t0)
bfc126b8:	25040004 	addiu	a0,t0,4
bfc126bc:	2505fff8 	addiu	a1,t0,-8
bfc126c0:	ac840000 	sw	a0,0(a0)
bfc126c4:	aca50000 	sw	a1,0(a1)
bfc126c8:	91020002 	lbu	v0,2(t0)
bfc126cc:	8c850000 	lw	a1,0(a0)
bfc126d0:	8ca40000 	lw	a0,0(a1)
bfc126d4:	8ca60000 	lw	a2,0(a1)
bfc126d8:	14430012 	bne	v0,v1,bfc12724 <inst_error>
bfc126dc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:135
bfc126e0:	24090000 	li	t1,0
bfc126e4:	3c08800d 	lui	t0,0x800d
bfc126e8:	24030000 	li	v1,0
bfc126ec:	ad090000 	sw	t1,0(t0)
bfc126f0:	25040004 	addiu	a0,t0,4
bfc126f4:	2505fff8 	addiu	a1,t0,-8
bfc126f8:	ac840000 	sw	a0,0(a0)
bfc126fc:	aca50000 	sw	a1,0(a1)
bfc12700:	91020000 	lbu	v0,0(t0)
bfc12704:	8c850000 	lw	a1,0(a0)
bfc12708:	8ca40000 	lw	a0,0(a1)
bfc1270c:	8ca60000 	lw	a2,0(a1)
bfc12710:	14430004 	bne	v0,v1,bfc12724 <inst_error>
bfc12714:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:137
bfc12718:	16400002 	bnez	s2,bfc12724 <inst_error>
/home/csy/func/inst/n60_lbu.S:138
bfc1271c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:140
bfc12720:	26730001 	addiu	s3,s3,1

bfc12724 <inst_error>:
/home/csy/func/inst/n60_lbu.S:143
bfc12724:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n60_lbu.S:144
bfc12728:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n60_lbu.S:145
bfc1272c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n60_lbu.S:146
bfc12730:	03e00008 	jr	ra
/home/csy/func/inst/n60_lbu.S:147
bfc12734:	00000000 	nop
	...

bfc12740 <n71_lh_adel_ex_test>:
/home/csy/func/inst/n71_lh_adel_ex.S:7
bfc12740:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n71_lh_adel_ex.S:8
bfc12744:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n71_lh_adel_ex.S:9
bfc12748:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:10
bfc1274c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:12
bfc12750:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n71_lh_adel_ex.S:13
bfc12754:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n71_lh_adel_ex.S:14
bfc12758:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n71_lh_adel_ex.S:15
bfc1275c:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:16
bfc12760:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n71_lh_adel_ex.S:19
bfc12764:	3c029325 	lui	v0,0x9325
bfc12768:	34422910 	ori	v0,v0,0x2910
bfc1276c:	3c039325 	lui	v1,0x9325
bfc12770:	34632910 	ori	v1,v1,0x2910
bfc12774:	3c04800d 	lui	a0,0x800d
bfc12778:	34841348 	ori	a0,a0,0x1348
bfc1277c:	3c050233 	lui	a1,0x233
bfc12780:	34a5e52c 	ori	a1,a1,0xe52c
bfc12784:	24879a19 	addiu	a3,a0,-26087
bfc12788:	3c010001 	lui	at,0x1
bfc1278c:	00240821 	addu	at,at,a0
bfc12790:	ac259a18 	sw	a1,-26088(at)
/home/csy/func/inst/n71_lh_adel_ex.S:20
bfc12794:	3c14bfc1 	lui	s4,0xbfc1
bfc12798:	2694279c 	addiu	s4,s4,10140
/home/csy/func/inst/n71_lh_adel_ex.S:21
bfc1279c:	84829a19 	lh	v0,-26087(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:22
bfc127a0:	165700a1 	bne	s2,s7,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:23
bfc127a4:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:24
bfc127a8:	1443009f 	bne	v0,v1,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:25
bfc127ac:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:26
bfc127b0:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:27
bfc127b4:	14f6009c 	bne	a3,s6,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:28
bfc127b8:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:30
bfc127bc:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:31
bfc127c0:	3c02854a 	lui	v0,0x854a
bfc127c4:	3442a680 	ori	v0,v0,0xa680
bfc127c8:	3c03854a 	lui	v1,0x854a
bfc127cc:	3463a680 	ori	v1,v1,0xa680
bfc127d0:	3c04800d 	lui	a0,0x800d
bfc127d4:	34842ca8 	ori	a0,a0,0x2ca8
bfc127d8:	3c052ba9 	lui	a1,0x2ba9
bfc127dc:	34a50e90 	ori	a1,a1,0xe90
bfc127e0:	24872577 	addiu	a3,a0,9591
bfc127e4:	ac852574 	sw	a1,9588(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:32
bfc127e8:	3c14bfc1 	lui	s4,0xbfc1
bfc127ec:	269427f8 	addiu	s4,s4,10232
/home/csy/func/inst/n71_lh_adel_ex.S:33
bfc127f0:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:34
bfc127f4:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:35
bfc127f8:	84822577 	lh	v0,9591(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:36
bfc127fc:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:37
bfc12800:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:38
bfc12804:	15340088 	bne	t1,s4,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:39
bfc12808:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:40
bfc1280c:	16570086 	bne	s2,s7,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:41
bfc12810:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:42
bfc12814:	14430084 	bne	v0,v1,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:43
bfc12818:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:44
bfc1281c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:45
bfc12820:	14f60081 	bne	a3,s6,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:46
bfc12824:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:47
bfc12828:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:48
bfc1282c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:50
bfc12830:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:51
bfc12834:	3c02541f 	lui	v0,0x541f
bfc12838:	34426c5c 	ori	v0,v0,0x6c5c
bfc1283c:	3c03541f 	lui	v1,0x541f
bfc12840:	34636c5c 	ori	v1,v1,0x6c5c
bfc12844:	3c04800d 	lui	a0,0x800d
bfc12848:	34841570 	ori	a0,a0,0x1570
bfc1284c:	3c059554 	lui	a1,0x9554
bfc12850:	34a5e8d4 	ori	a1,a1,0xe8d4
bfc12854:	248785e3 	addiu	a3,a0,-31261
bfc12858:	3c010001 	lui	at,0x1
bfc1285c:	00240821 	addu	at,at,a0
bfc12860:	ac2585e0 	sw	a1,-31264(at)
/home/csy/func/inst/n71_lh_adel_ex.S:52
bfc12864:	3c14bfc1 	lui	s4,0xbfc1
bfc12868:	26942874 	addiu	s4,s4,10356
/home/csy/func/inst/n71_lh_adel_ex.S:53
bfc1286c:	01000011 	mthi	t0
/home/csy/func/inst/n71_lh_adel_ex.S:54
bfc12870:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n71_lh_adel_ex.S:55
bfc12874:	848285e3 	lh	v0,-31261(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:56
bfc12878:	00004810 	mfhi	t1
/home/csy/func/inst/n71_lh_adel_ex.S:57
bfc1287c:	1128006a 	beq	t1,t0,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:58
bfc12880:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:59
bfc12884:	16570068 	bne	s2,s7,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:60
bfc12888:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:61
bfc1288c:	14430066 	bne	v0,v1,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:62
bfc12890:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:63
bfc12894:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:64
bfc12898:	14f60063 	bne	a3,s6,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:65
bfc1289c:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:67
bfc128a0:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:68
bfc128a4:	3c02224c 	lui	v0,0x224c
bfc128a8:	3442f16c 	ori	v0,v0,0xf16c
bfc128ac:	3c03224c 	lui	v1,0x224c
bfc128b0:	3463f16c 	ori	v1,v1,0xf16c
bfc128b4:	3c04800d 	lui	a0,0x800d
bfc128b8:	348469cc 	ori	a0,a0,0x69cc
bfc128bc:	3c058ef7 	lui	a1,0x8ef7
bfc128c0:	34a55a20 	ori	a1,a1,0x5a20
bfc128c4:	24878341 	addiu	a3,a0,-31935
bfc128c8:	3c010001 	lui	at,0x1
bfc128cc:	00240821 	addu	at,at,a0
bfc128d0:	ac258340 	sw	a1,-31936(at)
/home/csy/func/inst/n71_lh_adel_ex.S:69
bfc128d4:	3c14bfc1 	lui	s4,0xbfc1
bfc128d8:	269428dc 	addiu	s4,s4,10460
/home/csy/func/inst/n71_lh_adel_ex.S:70
bfc128dc:	84828341 	lh	v0,-31935(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:71
bfc128e0:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n71_lh_adel_ex.S:72
bfc128e4:	16570050 	bne	s2,s7,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:73
bfc128e8:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:74
bfc128ec:	1443004e 	bne	v0,v1,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:75
bfc128f0:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:76
bfc128f4:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:77
bfc128f8:	14f6004b 	bne	a3,s6,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:78
bfc128fc:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:80
bfc12900:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:81
bfc12904:	3c02516f 	lui	v0,0x516f
bfc12908:	34425fa2 	ori	v0,v0,0x5fa2
bfc1290c:	3c03516f 	lui	v1,0x516f
bfc12910:	34635fa2 	ori	v1,v1,0x5fa2
bfc12914:	3c04800d 	lui	a0,0x800d
bfc12918:	34840438 	ori	a0,a0,0x438
bfc1291c:	3c05cb7e 	lui	a1,0xcb7e
bfc12920:	34a5f7d5 	ori	a1,a1,0xf7d5
bfc12924:	2487db3b 	addiu	a3,a0,-9413
bfc12928:	3c010001 	lui	at,0x1
bfc1292c:	00240821 	addu	at,at,a0
bfc12930:	ac25db38 	sw	a1,-9416(at)
/home/csy/func/inst/n71_lh_adel_ex.S:82
bfc12934:	3c14bfc1 	lui	s4,0xbfc1
bfc12938:	26942944 	addiu	s4,s4,10564
/home/csy/func/inst/n71_lh_adel_ex.S:83
bfc1293c:	01000013 	mtlo	t0
/home/csy/func/inst/n71_lh_adel_ex.S:84
bfc12940:	01100019 	multu	t0,s0
/home/csy/func/inst/n71_lh_adel_ex.S:85
bfc12944:	8482db3b 	lh	v0,-9413(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:86
bfc12948:	00004810 	mfhi	t1
/home/csy/func/inst/n71_lh_adel_ex.S:87
bfc1294c:	11280036 	beq	t1,t0,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:88
bfc12950:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:89
bfc12954:	16570034 	bne	s2,s7,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:90
bfc12958:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:91
bfc1295c:	14430032 	bne	v0,v1,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:92
bfc12960:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:93
bfc12964:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:94
bfc12968:	14f6002f 	bne	a3,s6,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:95
bfc1296c:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:97
bfc12970:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:98
bfc12974:	3c023537 	lui	v0,0x3537
bfc12978:	3442cc30 	ori	v0,v0,0xcc30
bfc1297c:	3c033537 	lui	v1,0x3537
bfc12980:	3463cc30 	ori	v1,v1,0xcc30
bfc12984:	3c04800d 	lui	a0,0x800d
bfc12988:	34842c20 	ori	a0,a0,0x2c20
bfc1298c:	3c055118 	lui	a1,0x5118
bfc12990:	34a5e811 	ori	a1,a1,0xe811
bfc12994:	24871915 	addiu	a3,a0,6421
bfc12998:	ac851914 	sw	a1,6420(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:99
bfc1299c:	3c14bfc1 	lui	s4,0xbfc1
bfc129a0:	269429a4 	addiu	s4,s4,10660
/home/csy/func/inst/n71_lh_adel_ex.S:100
bfc129a4:	84821915 	lh	v0,6421(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:101
bfc129a8:	01120019 	multu	t0,s2
/home/csy/func/inst/n71_lh_adel_ex.S:102
bfc129ac:	1657001e 	bne	s2,s7,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:103
bfc129b0:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:104
bfc129b4:	1443001c 	bne	v0,v1,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:105
bfc129b8:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:106
bfc129bc:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:107
bfc129c0:	14f60019 	bne	a3,s6,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:108
bfc129c4:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:110
bfc129c8:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:111
bfc129cc:	3c0263c6 	lui	v0,0x63c6
bfc129d0:	3442e7af 	ori	v0,v0,0xe7af
bfc129d4:	3c0363c6 	lui	v1,0x63c6
bfc129d8:	3463e7af 	ori	v1,v1,0xe7af
bfc129dc:	3c04800d 	lui	a0,0x800d
bfc129e0:	34843d5c 	ori	a0,a0,0x3d5c
bfc129e4:	3c05d802 	lui	a1,0xd802
bfc129e8:	34a541b4 	ori	a1,a1,0x41b4
bfc129ec:	248732e9 	addiu	a3,a0,13033
bfc129f0:	ac8532e8 	sw	a1,13032(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:112
bfc129f4:	3c14bfc1 	lui	s4,0xbfc1
bfc129f8:	26942a00 	addiu	s4,s4,10752
/home/csy/func/inst/n71_lh_adel_ex.S:113
bfc129fc:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n71_lh_adel_ex.S:114
bfc12a00:	848232e9 	lh	v0,13033(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:115
bfc12a04:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n71_lh_adel_ex.S:116
bfc12a08:	16570007 	bne	s2,s7,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:117
bfc12a0c:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:118
bfc12a10:	14430005 	bne	v0,v1,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:119
bfc12a14:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:120
bfc12a18:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:121
bfc12a1c:	14f60002 	bne	a3,s6,bfc12a28 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:122
bfc12a20:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:124
bfc12a24:	26730001 	addiu	s3,s3,1

bfc12a28 <inst_error>:
/home/csy/func/inst/n71_lh_adel_ex.S:127
bfc12a28:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n71_lh_adel_ex.S:128
bfc12a2c:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n71_lh_adel_ex.S:129
bfc12a30:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n71_lh_adel_ex.S:130
bfc12a34:	03e00008 	jr	ra
/home/csy/func/inst/n71_lh_adel_ex.S:131
bfc12a38:	00000000 	nop
bfc12a3c:	00000000 	nop
bfc12a40:	9e3f7f70 	0x9e3f7f70
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
  10:	bfc00000 	cache	0x0,0(s8)
  14:	000008dc 	0x8dc
	...
  20:	0000001c 	0x1c
  24:	00400002 	0x400002
  28:	00040000 	sll	zero,a0,0x0
  2c:	00000000 	nop
  30:	bfc008e0 	cache	0x0,2272(s8)
  34:	00001678 	0x1678
	...
  40:	0000001c 	0x1c
  44:	00860002 	0x860002
  48:	00040000 	sll	zero,a0,0x0
  4c:	00000000 	nop
  50:	bfc01f60 	cache	0x0,8032(s8)
  54:	000002f4 	teq	zero,zero,0xb
	...
  60:	0000001c 	0x1c
  64:	00d50002 	0xd50002
  68:	00040000 	sll	zero,a0,0x0
  6c:	00000000 	nop
  70:	bfc02260 	cache	0x0,8800(s8)
  74:	000028f8 	0x28f8
	...
  80:	0000001c 	0x1c
  84:	011b0002 	0x11b0002
  88:	00040000 	sll	zero,a0,0x0
  8c:	00000000 	nop
  90:	bfc04b60 	cache	0x0,19296(s8)
  94:	000002f8 	0x2f8
	...
  a0:	0000001c 	0x1c
  a4:	01690002 	0x1690002
  a8:	00040000 	sll	zero,a0,0x0
  ac:	00000000 	nop
  b0:	bfc04e60 	cache	0x0,20064(s8)
  b4:	000013fc 	0x13fc
	...
  c0:	0000001c 	0x1c
  c4:	01ae0002 	0x1ae0002
  c8:	00040000 	sll	zero,a0,0x0
  cc:	00000000 	nop
  d0:	bfc06260 	cache	0x0,25184(s8)
  d4:	000023ac 	0x23ac
	...
  e0:	0000001c 	0x1c
  e4:	01f40002 	0x1f40002
  e8:	00040000 	sll	zero,a0,0x0
  ec:	00000000 	nop
  f0:	bfc08610 	cache	0x0,-31216(s8)
  f4:	00001c50 	0x1c50
	...
 100:	0000001c 	0x1c
 104:	023a0002 	0x23a0002
 108:	00040000 	sll	zero,a0,0x0
 10c:	00000000 	nop
 110:	bfc0a260 	cache	0x0,-23968(s8)
 114:	000026cc 	syscall	0x9b
	...
 120:	0000001c 	0x1c
 124:	02800002 	0x2800002
 128:	00040000 	sll	zero,a0,0x0
 12c:	00000000 	nop
 130:	bfc0c930 	cache	0x0,-14032(s8)
 134:	000002f4 	teq	zero,zero,0xb
	...
 140:	0000001c 	0x1c
 144:	02ce0002 	0x2ce0002
 148:	00040000 	sll	zero,a0,0x0
 14c:	00000000 	nop
 150:	bfc0cc30 	cache	0x0,-13264(s8)
 154:	0000125c 	0x125c
	...
 160:	0000001c 	0x1c
 164:	03140002 	0x3140002
 168:	00040000 	sll	zero,a0,0x0
 16c:	00000000 	nop
 170:	bfc0de90 	cache	0x0,-8560(s8)
 174:	00001f78 	0x1f78
	...
 180:	0000001c 	0x1c
 184:	035b0002 	0x35b0002
 188:	00040000 	sll	zero,a0,0x0
 18c:	00000000 	nop
 190:	bfc0fe10 	cache	0x0,-496(s8)
 194:	000002f8 	0x2f8
	...
 1a0:	0000001c 	0x1c
 1a4:	03a90002 	0x3a90002
 1a8:	00040000 	sll	zero,a0,0x0
 1ac:	00000000 	nop
 1b0:	bfc10110 	cache	0x1,272(s8)
 1b4:	00002628 	0x2628
	...
 1c0:	0000001c 	0x1c
 1c4:	03f00002 	0x3f00002
 1c8:	00040000 	sll	zero,a0,0x0
 1cc:	00000000 	nop
 1d0:	bfc12740 	cache	0x1,10048(s8)
 1d4:	000002fc 	0x2fc
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	bfc008e0 	cache	0x0,2272(s8)
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	bfc01f60 	cache	0x0,8032(s8)
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	bfc02260 	cache	0x0,8800(s8)
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	bfc04b60 	cache	0x0,19296(s8)
	...
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	bfc04e60 	cache	0x0,20064(s8)
	...
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	bfc06260 	cache	0x0,25184(s8)
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	bfc08610 	cache	0x0,-31216(s8)
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f
  e0:	bfc0a260 	cache	0x0,-23968(s8)
	...
  f8:	0000001d 	0x1d
  fc:	0000001f 	0x1f
 100:	bfc0c930 	cache	0x0,-14032(s8)
	...
 118:	0000001d 	0x1d
 11c:	0000001f 	0x1f
 120:	bfc0cc30 	cache	0x0,-13264(s8)
	...
 138:	0000001d 	0x1d
 13c:	0000001f 	0x1f
 140:	bfc0de90 	cache	0x0,-8560(s8)
	...
 158:	0000001d 	0x1d
 15c:	0000001f 	0x1f
 160:	bfc0fe10 	cache	0x0,-496(s8)
	...
 178:	0000001d 	0x1d
 17c:	0000001f 	0x1f
 180:	bfc10110 	cache	0x1,272(s8)
	...
 198:	0000001d 	0x1d
 19c:	0000001f 	0x1f
 1a0:	bfc12740 	cache	0x1,10048(s8)
	...
 1b8:	0000001d 	0x1d
 1bc:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	0000019a 	0x19a
       4:	001e0002 	srl	zero,s8,0x0
       8:	01010000 	0x1010000
       c:	000d0efb 	0xd0efb
      10:	01010101 	0x1010101
      14:	01000000 	0x1000000
      18:	00010000 	sll	zero,at,0x0
      1c:	72617473 	0x72617473
      20:	00532e74 	teq	v0,s3,0xb9
      24:	00000000 	nop
      28:	00020500 	sll	zero,v0,0x14
      2c:	03bfc000 	0x3bfc000
      30:	4b4b0112 	c2	0x14b0112
      34:	4b4b4d4b 	c2	0x14b4d4b
      38:	024b4b4b 	0x24b4b4b
      3c:	4b1601c8 	c2	0x11601c8
      40:	4d4b4b4b 	0x4d4b4b4b
      44:	4b834b4b 	c2	0x1834b4b
      48:	4b4b4c4b 	c2	0x14b4c4b
      4c:	d4024b4b 	ldc1	$f2,19275(zero)
      50:	4b4b1804 	c2	0x14b1804
      54:	4b4b4b4b 	c2	0x14b4b4b
      58:	4b4b4b4b 	c2	0x14b4b4b
      5c:	4b4b4b4b 	c2	0x14b4b4b
      60:	4b4b4b4b 	c2	0x14b4b4b
      64:	4b4b4b4b 	c2	0x14b4b4b
      68:	4b4b4b4b 	c2	0x14b4b4b
      6c:	4b4b4d4b 	c2	0x14b4d4b
      70:	4b4b4b4b 	c2	0x14b4b4b
      74:	4b4b4b4b 	c2	0x14b4b4b
      78:	4b4b4b4b 	c2	0x14b4b4b
      7c:	4b4d4b4b 	c2	0x14d4b4b
      80:	4b4b4b4b 	c2	0x14b4b4b
      84:	4b4b4b4b 	c2	0x14b4b4b
      88:	4b4b4b4b 	c2	0x14b4b4b
      8c:	4d4b4b4b 	0x4d4b4b4b
      90:	4b4b4b4b 	c2	0x14b4b4b
      94:	4b4b4b4b 	c2	0x14b4b4b
      98:	4b4b4b4b 	c2	0x14b4b4b
      9c:	4d4b4b4b 	0x4d4b4b4b
      a0:	4b4b4b4b 	c2	0x14b4b4b
      a4:	4b4b4b4b 	c2	0x14b4b4b
      a8:	4b4b4b4b 	c2	0x14b4b4b
      ac:	4b4b4b4b 	c2	0x14b4b4b
      b0:	4b4b4b4d 	c2	0x14b4b4d
      b4:	4b4b4b4b 	c2	0x14b4b4b
      b8:	4b4b4b4b 	c2	0x14b4b4b
      bc:	4b4b4b4b 	c2	0x14b4b4b
      c0:	4b4b4d4b 	c2	0x14b4d4b
      c4:	4b4b4b4b 	c2	0x14b4b4b
      c8:	4b4b4b4b 	c2	0x14b4b4b
      cc:	4b4b4b4b 	c2	0x14b4b4b
      d0:	4d4b4b4b 	0x4d4b4b4b
      d4:	4b4b4b4b 	c2	0x14b4b4b
      d8:	4b4b4b4b 	c2	0x14b4b4b
      dc:	4b4b4b4b 	c2	0x14b4b4b
      e0:	4b4b4b4b 	c2	0x14b4b4b
      e4:	4b4b4b4d 	c2	0x14b4b4d
      e8:	084b4b4b 	j	12d2d2c <data_size+0x12d2d1c>
      ec:	e5084be5 	swc1	$f8,19429(t0)
      f0:	4b834b4b 	c2	0x1834b4b
      f4:	834b4b4b 	lb	t3,19275(k0)
      f8:	4b4b4b4b 	c2	0x14b4b4b
      fc:	4d4b4b4b 	0x4d4b4b4b
     100:	4b4b4b4b 	c2	0x14b4b4b
     104:	4c4b4b4b 	0x4c4b4b4b
     108:	4b4b4b4b 	c2	0x14b4b4b
     10c:	834f4c4d 	lb	t7,19533(k0)
     110:	4b4b8483 	c2	0x14b8483
     114:	4c4b4b4c 	0x4c4b4b4c
     118:	4b4b834c 	c2	0x14b834c
     11c:	4b4b4d4b 	c2	0x14b4d4b
     120:	4b834c4b 	c2	0x1834c4b
     124:	4b4a1303 	c2	0x14a1303
     128:	15034b4b 	bne	t0,v1,12e58 <data_size+0x12e48>
     12c:	4b4b4b4a 	c2	0x14b4b4a
     130:	4a01b903 	c2	0x1b903
     134:	4b4b4b4b 	c2	0x14b4b4b
     138:	4b4b4b4b 	c2	0x14b4b4b
     13c:	4b4b4b4b 	c2	0x14b4b4b
     140:	4b4b4b4b 	c2	0x14b4b4b
     144:	4b4b4b4b 	c2	0x14b4b4b
     148:	034b4b4b 	0x34b4b4b
     14c:	4b4b4a15 	c2	0x14b4a15
     150:	4b4b4b4b 	c2	0x14b4b4b
     154:	4b4b4b4b 	c2	0x14b4b4b
     158:	4b4b4b4b 	c2	0x14b4b4b
     15c:	4b4b4b4b 	c2	0x14b4b4b
     160:	4a3e034b 	c2	0x3e034b
     164:	4b4b4b83 	c2	0x14b4b83
     168:	4b4c4b4b 	c2	0x14c4b4b
     16c:	4b4b4b4b 	c2	0x14b4b4b
     170:	4b4c4b4b 	c2	0x14c4b4b
     174:	4c4b4b4d 	0x4c4b4b4d
     178:	4c848383 	0x4c848383
     17c:	4b4b4b4b 	c2	0x14b4b4b
     180:	83834b4c 	lb	v1,19276(gp)
     184:	4d4b4d4b 	0x4d4b4d4b
     188:	4b4b4d83 	c2	0x14b4d83
     18c:	4b4d4d4b 	c2	0x14d4d4b
     190:	4b4b4b4b 	c2	0x14b4b4b
     194:	4b4b4c4b 	c2	0x14b4c4b
     198:	0004024b 	0x4024b
     19c:	010a0101 	0x10a0101
     1a0:	00020000 	sll	zero,v0,0x0
     1a4:	0000001f 	0x1f
     1a8:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
     1ac:	0101000d 	break	0x101
     1b0:	00000101 	0x101
     1b4:	00000100 	sll	zero,zero,0x4
     1b8:	316e0001 	andi	t6,t3,0x1
     1bc:	77735f32 	jalx	dcd7cc8 <data_size+0xdcd7cb8>
     1c0:	0000532e 	0x532e
     1c4:	00000000 	nop
     1c8:	08e00205 	j	3800814 <data_size+0x3800804>
     1cc:	4b18bfc0 	c2	0x118bfc0
     1d0:	1344024c 	beq	k0,a0,b04 <data_size+0xaf4>
     1d4:	02134402 	0x2134402
     1d8:	7c021344 	0x7c021344
     1dc:	13440213 	beq	k0,a0,a2c <data_size+0xa1c>
     1e0:	02134402 	0x2134402
     1e4:	44021344 	0x44021344
     1e8:	13440213 	beq	k0,a0,a38 <data_size+0xa28>
     1ec:	02134402 	0x2134402
     1f0:	4402137c 	0x4402137c
     1f4:	13440213 	beq	k0,a0,a44 <data_size+0xa34>
     1f8:	02134402 	0x2134402
     1fc:	4402137c 	0x4402137c
     200:	13440213 	beq	k0,a0,a50 <data_size+0xa40>
     204:	02137c02 	0x2137c02
     208:	4402137c 	0x4402137c
     20c:	13440213 	beq	k0,a0,a5c <data_size+0xa4c>
     210:	02137c02 	0x2137c02
     214:	7c02137c 	0x7c02137c
     218:	13440213 	beq	k0,a0,a68 <data_size+0xa58>
     21c:	02134402 	0x2134402
     220:	4402137c 	0x4402137c
     224:	13440213 	beq	k0,a0,a74 <data_size+0xa64>
     228:	02134402 	0x2134402
     22c:	7c02137c 	0x7c02137c
     230:	13780213 	beq	k1,t8,a80 <data_size+0xa70>
     234:	02134002 	0x2134002
     238:	40021340 	0x40021340
     23c:	13400213 	beqz	k0,a8c <data_size+0xa7c>
     240:	02134002 	0x2134002
     244:	78021378 	0x78021378
     248:	13400213 	beqz	k0,a98 <data_size+0xa88>
     24c:	02137802 	0x2137802
     250:	78021340 	0x78021340
     254:	13400213 	beqz	k0,aa4 <data_size+0xa94>
     258:	02137802 	0x2137802
     25c:	78021340 	0x78021340
     260:	13400213 	beqz	k0,ab0 <data_size+0xaa0>
     264:	02137802 	0x2137802
     268:	78021378 	0x78021378
     26c:	13400213 	beqz	k0,abc <data_size+0xaac>
     270:	02134002 	0x2134002
     274:	40021340 	0x40021340
     278:	13400213 	beqz	k0,ac8 <data_size+0xab8>
     27c:	02134002 	0x2134002
     280:	40021340 	0x40021340
     284:	13400213 	beqz	k0,ad4 <data_size+0xac4>
     288:	02134002 	0x2134002
     28c:	40021340 	0x40021340
     290:	13400213 	beqz	k0,ae0 <data_size+0xad0>
     294:	02134002 	0x2134002
     298:	40021340 	0x40021340
     29c:	15380213 	bne	t1,t8,aec <data_size+0xadc>
     2a0:	4b4d4c4b 	c2	0x14d4c4b
     2a4:	024b4b4b 	0x24b4b4b
     2a8:	01010004 	sllv	zero,at,t0
     2ac:	000000b9 	0xb9
     2b0:	00280002 	ror	zero,t0,0x0
     2b4:	01010000 	0x1010000
     2b8:	000d0efb 	0xd0efb
     2bc:	01010101 	0x1010101
     2c0:	01000000 	0x1000000
     2c4:	00010000 	sll	zero,at,0x0
     2c8:	5f32376e 	0x5f32376e
     2cc:	5f75686c 	0x5f75686c
     2d0:	6c656461 	0x6c656461
     2d4:	2e78655f 	sltiu	t8,s3,25951
     2d8:	00000053 	mtlhx	zero
     2dc:	05000000 	bltz	t0,2e0 <data_size+0x2d0>
     2e0:	c01f6002 	ll	ra,24578(zero)
     2e4:	4b4b18bf 	c2	0x14b18bf
     2e8:	4b4b4c4b 	c2	0x14b4c4b
     2ec:	024d4b4b 	0x24d4b4b
     2f0:	4b831330 	c2	0x1831330
     2f4:	4b4b4b4b 	c2	0x14b4b4b
     2f8:	4b4c4b4b 	c2	0x14c4b4b
     2fc:	83133002 	lb	s3,12290(t8)
     300:	4b4b4b4b 	c2	0x14b4b4b
     304:	4b4b4b4b 	c2	0x14b4b4b
     308:	4b4b4b4b 	c2	0x14b4b4b
     30c:	4c4b4b4b 	0x4c4b4b4b
     310:	1328024b 	beq	t9,t0,c40 <data_size+0xc30>
     314:	4b4b4b83 	c2	0x14b4b83
     318:	4b4b4b4b 	c2	0x14b4b4b
     31c:	4b4b4b4b 	c2	0x14b4b4b
     320:	024b4c4b 	0x24b4c4b
     324:	4b831328 	c2	0x1831328
     328:	4b4b4b4b 	c2	0x14b4b4b
     32c:	4c4b4b4b 	0x4c4b4b4b
     330:	1330024b 	beq	t9,s0,c60 <data_size+0xc50>
     334:	4b4b4b83 	c2	0x14b4b83
     338:	4b4b4b4b 	c2	0x14b4b4b
     33c:	4b4b4b4b 	c2	0x14b4b4b
     340:	024b4c4b 	0x24b4c4b
     344:	4b831328 	c2	0x1831328
     348:	4b4b4b4b 	c2	0x14b4b4b
     34c:	4c4b4b4b 	0x4c4b4b4b
     350:	1328024b 	beq	t9,t0,c80 <data_size+0xc70>
     354:	4b4b4b83 	c2	0x14b4b83
     358:	4b4b4b4b 	c2	0x14b4b4b
     35c:	4d4c4b4b 	0x4d4c4b4b
     360:	4b4b4b4b 	c2	0x14b4b4b
     364:	01000402 	0x1000402
     368:	0001a901 	0x1a901
     36c:	1f000200 	bgtz	t8,b70 <data_size+0xb60>
     370:	01000000 	0x1000000
     374:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     378:	01010100 	0x1010100
     37c:	00000001 	movf	zero,zero,$fcc0
     380:	01000001 	movf	zero,t0,$fcc0
     384:	33366e00 	andi	s6,t9,0x6e00
     388:	2e62735f 	sltiu	v0,s3,29535
     38c:	00000053 	mtlhx	zero
     390:	05000000 	bltz	t0,394 <data_size+0x384>
     394:	c0226002 	ll	v0,24578(at)
     398:	4c4b18bf 	0x4c4b18bf
     39c:	02135002 	0x2135002
     3a0:	50021350 	beql	zero,v0,50e4 <data_size+0x50d4>
     3a4:	13500213 	beq	k0,s0,bf4 <data_size+0xbe4>
     3a8:	02135002 	0x2135002
     3ac:	50021350 	beql	zero,v0,50f0 <data_size+0x50e0>
     3b0:	13500213 	beq	k0,s0,c00 <data_size+0xbf0>
     3b4:	02135002 	0x2135002
     3b8:	50021350 	beql	zero,v0,50fc <data_size+0x50ec>
     3bc:	13500213 	beq	k0,s0,c0c <data_size+0xbfc>
     3c0:	02135002 	0x2135002
     3c4:	50021350 	beql	zero,v0,5108 <data_size+0x50f8>
     3c8:	13500213 	beq	k0,s0,c18 <data_size+0xc08>
     3cc:	02135002 	0x2135002
     3d0:	50021350 	beql	zero,v0,5114 <data_size+0x5104>
     3d4:	13500213 	beq	k0,s0,c24 <data_size+0xc14>
     3d8:	02135002 	0x2135002
     3dc:	02130190 	0x2130190
     3e0:	50021350 	beql	zero,v0,5124 <data_size+0x5114>
     3e4:	01900213 	0x1900213
     3e8:	13500213 	beq	k0,s0,c38 <data_size+0xc28>
     3ec:	02135002 	0x2135002
     3f0:	50021350 	beql	zero,v0,5134 <data_size+0x5124>
     3f4:	13500213 	beq	k0,s0,c44 <data_size+0xc34>
     3f8:	02135002 	0x2135002
     3fc:	50021350 	beql	zero,v0,5140 <data_size+0x5130>
     400:	01900213 	0x1900213
     404:	01900213 	0x1900213
     408:	13500213 	beq	k0,s0,c58 <data_size+0xc48>
     40c:	13018c02 	beq	t8,at,fffe3418 <_etext+0x403d09c0>
     410:	02134c02 	0x2134c02
     414:	4c02134c 	0x4c02134c
     418:	134c0213 	beq	k0,t4,c68 <data_size+0xc58>
     41c:	02134c02 	0x2134c02
     420:	0213018c 	syscall	0x84c06
     424:	0213018c 	syscall	0x84c06
     428:	8c02134c 	lw	v0,4940(zero)
     42c:	8c021301 	lw	v0,4865(zero)
     430:	8c021301 	lw	v0,4865(zero)
     434:	4c021301 	0x4c021301
     438:	134c0213 	beq	k0,t4,c88 <data_size+0xc78>
     43c:	13018c02 	beq	t8,at,fffe3448 <_etext+0x403d09f0>
     440:	13018c02 	beq	t8,at,fffe344c <_etext+0x403d09f4>
     444:	13018c02 	beq	t8,at,fffe3450 <_etext+0x403d09f8>
     448:	13018c02 	beq	t8,at,fffe3454 <_etext+0x403d09fc>
     44c:	02134c02 	0x2134c02
     450:	4c02134c 	0x4c02134c
     454:	018c0213 	0x18c0213
     458:	018c0213 	0x18c0213
     45c:	134c0213 	beq	k0,t4,cac <data_size+0xc9c>
     460:	13018c02 	beq	t8,at,fffe346c <_etext+0x403d0a14>
     464:	13018c02 	beq	t8,at,fffe3470 <_etext+0x403d0a18>
     468:	02134c02 	0x2134c02
     46c:	0213018c 	syscall	0x84c06
     470:	4c02134c 	0x4c02134c
     474:	134c0213 	beq	k0,t4,cc4 <data_size+0xcb4>
     478:	02134c02 	0x2134c02
     47c:	0213018c 	syscall	0x84c06
     480:	0213018c 	syscall	0x84c06
     484:	0213018c 	syscall	0x84c06
     488:	8c02134c 	lw	v0,4940(zero)
     48c:	8c021301 	lw	v0,4865(zero)
     490:	4c021301 	0x4c021301
     494:	134c0213 	beq	k0,t4,ce4 <data_size+0xcd4>
     498:	13018c02 	beq	t8,at,fffe34a4 <_etext+0x403d0a4c>
     49c:	13018c02 	beq	t8,at,fffe34a8 <_etext+0x403d0a50>
     4a0:	13018c02 	beq	t8,at,fffe34ac <_etext+0x403d0a54>
     4a4:	02134c02 	0x2134c02
     4a8:	4c02134c 	0x4c02134c
     4ac:	134c0213 	beq	k0,t4,cfc <data_size+0xcec>
     4b0:	02134c02 	0x2134c02
     4b4:	4c02134c 	0x4c02134c
     4b8:	134c0213 	beq	k0,t4,d08 <data_size+0xcf8>
     4bc:	02134c02 	0x2134c02
     4c0:	4c02134c 	0x4c02134c
     4c4:	134c0213 	beq	k0,t4,d14 <data_size+0xd04>
     4c8:	02134c02 	0x2134c02
     4cc:	4c02134c 	0x4c02134c
     4d0:	134c0213 	beq	k0,t4,d20 <data_size+0xd10>
     4d4:	02134c02 	0x2134c02
     4d8:	4c02134c 	0x4c02134c
     4dc:	134c0213 	beq	k0,t4,d2c <data_size+0xd1c>
     4e0:	02134c02 	0x2134c02
     4e4:	4c02134c 	0x4c02134c
     4e8:	134c0213 	beq	k0,t4,d38 <data_size+0xd28>
     4ec:	02134c02 	0x2134c02
     4f0:	4c02134c 	0x4c02134c
     4f4:	134c0213 	beq	k0,t4,d44 <data_size+0xd34>
     4f8:	02134c02 	0x2134c02
     4fc:	4c02134c 	0x4c02134c
     500:	134c0213 	beq	k0,t4,d50 <data_size+0xd40>
     504:	02134c02 	0x2134c02
     508:	4c4b1440 	0x4c4b1440
     50c:	4b4b4b4d 	c2	0x14b4b4d
     510:	0004024b 	0x4024b
     514:	00bf0101 	0xbf0101
     518:	00020000 	sll	zero,v0,0x0
     51c:	00000027 	nor	zero,zero,zero
     520:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
     524:	0101000d 	break	0x101
     528:	00000101 	0x101
     52c:	00000100 	sll	zero,zero,0x4
     530:	376e0001 	ori	t6,k1,0x1
     534:	77735f33 	jalx	dcd7ccc <data_size+0xdcd7cbc>
     538:	6564615f 	0x6564615f
     53c:	78655f73 	0x78655f73
     540:	0000532e 	0x532e
     544:	00000000 	nop
     548:	4b600205 	c2	0x1600205
     54c:	4b18bfc0 	c2	0x118bfc0
     550:	4b4c4b4b 	c2	0x14c4b4b
     554:	4d4b4b4b 	0x4d4b4b4b
     558:	83132802 	lb	s3,10242(t8)
     55c:	4b4b4b4b 	c2	0x14b4b4b
     560:	4b4b4b4b 	c2	0x14b4b4b
     564:	28024b4c 	slti	v0,zero,19276
     568:	4b4b8313 	c2	0x14b8313
     56c:	4b4b4b4b 	c2	0x14b4b4b
     570:	4b4b4b4b 	c2	0x14b4b4b
     574:	4b4b4b4b 	c2	0x14b4b4b
     578:	4b4c4b4b 	c2	0x14c4b4b
     57c:	83132802 	lb	s3,10242(t8)
     580:	4b4b4b4b 	c2	0x14b4b4b
     584:	4b4b4b4b 	c2	0x14b4b4b
     588:	4b4b4b4b 	c2	0x14b4b4b
     58c:	024b4c4b 	0x24b4c4b
     590:	4b831328 	c2	0x1831328
     594:	4b4b4b4b 	c2	0x14b4b4b
     598:	4b4b4b4b 	c2	0x14b4b4b
     59c:	28024b4c 	slti	v0,zero,19276
     5a0:	4b4b8313 	c2	0x14b8313
     5a4:	4b4b4b4b 	c2	0x14b4b4b
     5a8:	4b4b4b4b 	c2	0x14b4b4b
     5ac:	4c4b4b4b 	0x4c4b4b4b
     5b0:	1328024b 	beq	t9,t0,ee0 <data_size+0xed0>
     5b4:	4b4b4b83 	c2	0x14b4b83
     5b8:	4b4b4b4b 	c2	0x14b4b4b
     5bc:	4b4c4b4b 	c2	0x14c4b4b
     5c0:	83132802 	lb	s3,10242(t8)
     5c4:	4b4b4b4b 	c2	0x14b4b4b
     5c8:	4b4b4b4b 	c2	0x14b4b4b
     5cc:	4d4c4b4b 	0x4d4c4b4b
     5d0:	4b4b4b4b 	c2	0x14b4b4b
     5d4:	01000402 	0x1000402
     5d8:	0000fa01 	0xfa01
     5dc:	1e000200 	bgtz	s0,de0 <data_size+0xdd0>
     5e0:	01000000 	0x1000000
     5e4:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     5e8:	01010100 	0x1010100
     5ec:	00000001 	movf	zero,zero,$fcc0
     5f0:	01000001 	movf	zero,t0,$fcc0
     5f4:	5f366e00 	0x5f366e00
     5f8:	532e776c 	beql	t9,t6,1e3ac <data_size+0x1e39c>
     5fc:	00000000 	nop
     600:	02050000 	0x2050000
     604:	bfc04e60 	cache	0x0,20064(s8)
     608:	024c4b18 	0x24c4b18
     60c:	44021344 	0x44021344
     610:	13440213 	beq	k0,a0,e60 <data_size+0xe50>
     614:	02134402 	0x2134402
     618:	44021344 	0x44021344
     61c:	13440213 	beq	k0,a0,e6c <data_size+0xe5c>
     620:	02137c02 	0x2137c02
     624:	7c02137c 	0x7c02137c
     628:	13440213 	beq	k0,a0,e78 <data_size+0xe68>
     62c:	02134402 	0x2134402
     630:	4402137c 	0x4402137c
     634:	137c0213 	beq	k1,gp,e84 <data_size+0xe74>
     638:	02137c02 	0x2137c02
     63c:	7c021344 	0x7c021344
     640:	13440213 	beq	k0,a0,e90 <data_size+0xe80>
     644:	02134402 	0x2134402
     648:	44021344 	0x44021344
     64c:	13440213 	beq	k0,a0,e9c <data_size+0xe8c>
     650:	02137802 	0x2137802
     654:	78021378 	0x78021378
     658:	13400213 	beqz	k0,ea8 <data_size+0xe98>
     65c:	02134002 	0x2134002
     660:	78021378 	0x78021378
     664:	13400213 	beqz	k0,eb4 <data_size+0xea4>
     668:	02134002 	0x2134002
     66c:	40021340 	0x40021340
     670:	13400213 	beqz	k0,ec0 <data_size+0xeb0>
     674:	02134002 	0x2134002
     678:	40021340 	0x40021340
     67c:	13400213 	beqz	k0,ecc <data_size+0xebc>
     680:	02134002 	0x2134002
     684:	78021378 	0x78021378
     688:	13780213 	beq	k1,t8,ed8 <data_size+0xec8>
     68c:	02134002 	0x2134002
     690:	78021340 	0x78021340
     694:	13400213 	beqz	k0,ee4 <data_size+0xed4>
     698:	02134002 	0x2134002
     69c:	40021340 	0x40021340
     6a0:	13400213 	beqz	k0,ef0 <data_size+0xee0>
     6a4:	02134002 	0x2134002
     6a8:	40021340 	0x40021340
     6ac:	13400213 	beqz	k0,efc <data_size+0xeec>
     6b0:	02134002 	0x2134002
     6b4:	40021340 	0x40021340
     6b8:	13400213 	beqz	k0,f08 <data_size+0xef8>
     6bc:	02134002 	0x2134002
     6c0:	40021340 	0x40021340
     6c4:	13400213 	beqz	k0,f14 <data_size+0xf04>
     6c8:	4b143802 	c2	0x1143802
     6cc:	4b4b4d4c 	c2	0x14b4d4c
     6d0:	04024b4b 	bltzl	zero,13400 <data_size+0x133f0>
     6d4:	9a010100 	lwr	at,256(s0)
     6d8:	02000001 	movf	zero,s0,$fcc0
     6dc:	00001f00 	sll	v1,zero,0x1c
     6e0:	fb010100 	sdc2	$1,256(t8)
     6e4:	01000d0e 	0x1000d0e
     6e8:	00010101 	0x10101
     6ec:	00010000 	sll	zero,at,0x0
     6f0:	6e000100 	0x6e000100
     6f4:	6c5f3935 	0x6c5f3935
     6f8:	00532e62 	0x532e62
     6fc:	00000000 	nop
     700:	60020500 	0x60020500
     704:	18bfc062 	0x18bfc062
     708:	40024c4b 	0x40024c4b
     70c:	13780213 	beq	k1,t8,f5c <data_size+0xf4c>
     710:	02137802 	0x2137802
     714:	40021340 	0x40021340
     718:	13400213 	beqz	k0,f68 <data_size+0xf58>
     71c:	02134002 	0x2134002
     720:	40021340 	0x40021340
     724:	13780213 	beq	k1,t8,f74 <data_size+0xf64>
     728:	02134002 	0x2134002
     72c:	40021340 	0x40021340
     730:	13400213 	beqz	k0,f80 <data_size+0xf70>
     734:	02134002 	0x2134002
     738:	40021340 	0x40021340
     73c:	13400213 	beqz	k0,f8c <data_size+0xf7c>
     740:	02134002 	0x2134002
     744:	40021340 	0x40021340
     748:	13400213 	beqz	k0,f98 <data_size+0xf88>
     74c:	02134002 	0x2134002
     750:	40021378 	0x40021378
     754:	13400213 	beqz	k0,fa4 <data_size+0xf94>
     758:	02137802 	0x2137802
     75c:	40021340 	0x40021340
     760:	13400213 	beqz	k0,fb0 <data_size+0xfa0>
     764:	02134002 	0x2134002
     768:	40021378 	0x40021378
     76c:	13400213 	beqz	k0,fbc <data_size+0xfac>
     770:	02137802 	0x2137802
     774:	40021378 	0x40021378
     778:	13400213 	beqz	k0,fc8 <data_size+0xfb8>
     77c:	02134002 	0x2134002
     780:	78021340 	0x78021340
     784:	13780213 	beq	k1,t8,fd4 <data_size+0xfc4>
     788:	02134002 	0x2134002
     78c:	78021340 	0x78021340
     790:	13400213 	beqz	k0,fe0 <data_size+0xfd0>
     794:	02137802 	0x2137802
     798:	78021340 	0x78021340
     79c:	13400213 	beqz	k0,fec <data_size+0xfdc>
     7a0:	02134002 	0x2134002
     7a4:	40021340 	0x40021340
     7a8:	13400213 	beqz	k0,ff8 <data_size+0xfe8>
     7ac:	02134002 	0x2134002
     7b0:	40021340 	0x40021340
     7b4:	13740213 	beq	k1,s4,1004 <data_size+0xff4>
     7b8:	02133c02 	0x2133c02
     7bc:	74021374 	jalx	84dd0 <data_size+0x84dc0>
     7c0:	133c0213 	beq	t9,gp,1010 <data_size+0x1000>
     7c4:	02133c02 	0x2133c02
     7c8:	3c02133c 	lui	v0,0x133c
     7cc:	133c0213 	beq	t9,gp,101c <data_size+0x100c>
     7d0:	02133c02 	0x2133c02
     7d4:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
     7d8:	133c0213 	beq	t9,gp,1028 <data_size+0x1018>
     7dc:	02137402 	0x2137402
     7e0:	3c021374 	lui	v0,0x1374
     7e4:	13740213 	beq	k1,s4,1034 <data_size+0x1024>
     7e8:	02137402 	0x2137402
     7ec:	3c021374 	lui	v0,0x1374
     7f0:	13740213 	beq	k1,s4,1040 <data_size+0x1030>
     7f4:	02137402 	0x2137402
     7f8:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
     7fc:	13740213 	beq	k1,s4,104c <data_size+0x103c>
     800:	02133c02 	0x2133c02
     804:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
     808:	13740213 	beq	k1,s4,1058 <data_size+0x1048>
     80c:	02133c02 	0x2133c02
     810:	74021374 	jalx	84dd0 <data_size+0x84dc0>
     814:	13740213 	beq	k1,s4,1064 <data_size+0x1054>
     818:	02133c02 	0x2133c02
     81c:	74021374 	jalx	84dd0 <data_size+0x84dc0>
     820:	133c0213 	beq	t9,gp,1070 <data_size+0x1060>
     824:	02133c02 	0x2133c02
     828:	3c02133c 	lui	v0,0x133c
     82c:	133c0213 	beq	t9,gp,107c <data_size+0x106c>
     830:	02133c02 	0x2133c02
     834:	3c02133c 	lui	v0,0x133c
     838:	133c0213 	beq	t9,gp,1088 <data_size+0x1078>
     83c:	02133c02 	0x2133c02
     840:	3c02133c 	lui	v0,0x133c
     844:	133c0213 	beq	t9,gp,1094 <data_size+0x1084>
     848:	02133c02 	0x2133c02
     84c:	3c02133c 	lui	v0,0x133c
     850:	133c0213 	beq	t9,gp,10a0 <data_size+0x1090>
     854:	02133c02 	0x2133c02
     858:	3c02133c 	lui	v0,0x133c
     85c:	133c0213 	beq	t9,gp,10ac <data_size+0x109c>
     860:	02133c02 	0x2133c02
     864:	3802133c 	xori	v0,zero,0x133c
     868:	4d4c4b14 	0x4d4c4b14
     86c:	4b4b4b4b 	c2	0x14b4b4b
     870:	01000402 	0x1000402
     874:	00013d01 	0x13d01
     878:	1f000200 	bgtz	t8,107c <data_size+0x106c>
     87c:	01000000 	0x1000000
     880:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     884:	01010100 	0x1010100
     888:	00000001 	movf	zero,zero,$fcc0
     88c:	01000001 	movf	zero,t0,$fcc0
     890:	31366e00 	andi	s6,t1,0x6e00
     894:	2e686c5f 	sltiu	t0,s3,27743
     898:	00000053 	mtlhx	zero
     89c:	05000000 	bltz	t0,8a0 <data_size+0x890>
     8a0:	c0861002 	ll	a2,4098(a0)
     8a4:	4c4b18bf 	0x4c4b18bf
     8a8:	02134002 	0x2134002
     8ac:	78021378 	0x78021378
     8b0:	13400213 	beqz	k0,1100 <data_size+0x10f0>
     8b4:	02137802 	0x2137802
     8b8:	40021340 	0x40021340
     8bc:	13400213 	beqz	k0,110c <data_size+0x10fc>
     8c0:	02137802 	0x2137802
     8c4:	40021378 	0x40021378
     8c8:	13400213 	beqz	k0,1118 <data_size+0x1108>
     8cc:	02134002 	0x2134002
     8d0:	78021340 	0x78021340
     8d4:	13400213 	beqz	k0,1124 <data_size+0x1114>
     8d8:	02137802 	0x2137802
     8dc:	78021340 	0x78021340
     8e0:	13780213 	beq	k1,t8,1130 <data_size+0x1120>
     8e4:	02134002 	0x2134002
     8e8:	40021378 	0x40021378
     8ec:	13780213 	beq	k1,t8,113c <data_size+0x112c>
     8f0:	02137802 	0x2137802
     8f4:	40021340 	0x40021340
     8f8:	13400213 	beqz	k0,1148 <data_size+0x1138>
     8fc:	02134002 	0x2134002
     900:	40021378 	0x40021378
     904:	13400213 	beqz	k0,1154 <data_size+0x1144>
     908:	02134002 	0x2134002
     90c:	40021340 	0x40021340
     910:	13400213 	beqz	k0,1160 <data_size+0x1150>
     914:	02134002 	0x2134002
     918:	74021374 	jalx	84dd0 <data_size+0x84dc0>
     91c:	13740213 	beq	k1,s4,116c <data_size+0x115c>
     920:	02133c02 	0x2133c02
     924:	74021374 	jalx	84dd0 <data_size+0x84dc0>
     928:	133c0213 	beq	t9,gp,1178 <data_size+0x1168>
     92c:	02137402 	0x2137402
     930:	3c02133c 	lui	v0,0x133c
     934:	13740213 	beq	k1,s4,1184 <data_size+0x1174>
     938:	02133c02 	0x2133c02
     93c:	74021374 	jalx	84dd0 <data_size+0x84dc0>
     940:	13740213 	beq	k1,s4,1190 <data_size+0x1180>
     944:	02137402 	0x2137402
     948:	3c02133c 	lui	v0,0x133c
     94c:	13740213 	beq	k1,s4,119c <data_size+0x118c>
     950:	02137402 	0x2137402
     954:	74021374 	jalx	84dd0 <data_size+0x84dc0>
     958:	133c0213 	beq	t9,gp,11a8 <data_size+0x1198>
     95c:	02133c02 	0x2133c02
     960:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
     964:	13740213 	beq	k1,s4,11b4 <data_size+0x11a4>
     968:	02137402 	0x2137402
     96c:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
     970:	13740213 	beq	k1,s4,11c0 <data_size+0x11b0>
     974:	02133c02 	0x2133c02
     978:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
     97c:	133c0213 	beq	t9,gp,11cc <data_size+0x11bc>
     980:	02133c02 	0x2133c02
     984:	3c02133c 	lui	v0,0x133c
     988:	133c0213 	beq	t9,gp,11d8 <data_size+0x11c8>
     98c:	02133c02 	0x2133c02
     990:	3c02133c 	lui	v0,0x133c
     994:	133c0213 	beq	t9,gp,11e4 <data_size+0x11d4>
     998:	02133c02 	0x2133c02
     99c:	3c02133c 	lui	v0,0x133c
     9a0:	133c0213 	beq	t9,gp,11f0 <data_size+0x11e0>
     9a4:	02133c02 	0x2133c02
     9a8:	4c4b1438 	0x4c4b1438
     9ac:	4b4b4b4d 	c2	0x14b4b4d
     9b0:	0004024b 	0x4024b
     9b4:	018e0101 	0x18e0101
     9b8:	00020000 	sll	zero,v0,0x0
     9bc:	0000001f 	0x1f
     9c0:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
     9c4:	0101000d 	break	0x101
     9c8:	00000101 	0x101
     9cc:	00000100 	sll	zero,zero,0x4
     9d0:	366e0001 	ori	t6,s3,0x1
     9d4:	68735f34 	0x68735f34
     9d8:	0000532e 	0x532e
     9dc:	00000000 	nop
     9e0:	a2600205 	sb	zero,517(s3)
     9e4:	4b18bfc0 	c2	0x118bfc0
     9e8:	1350024c 	beq	k0,s0,131c <data_size+0x130c>
     9ec:	02135002 	0x2135002
     9f0:	50021350 	beql	zero,v0,5734 <data_size+0x5724>
     9f4:	13500213 	beq	k0,s0,1244 <data_size+0x1234>
     9f8:	02135002 	0x2135002
     9fc:	50021350 	beql	zero,v0,5740 <data_size+0x5730>
     a00:	13500213 	beq	k0,s0,1250 <data_size+0x1240>
     a04:	02135002 	0x2135002
     a08:	50021350 	beql	zero,v0,574c <data_size+0x573c>
     a0c:	13500213 	beq	k0,s0,125c <data_size+0x124c>
     a10:	02135002 	0x2135002
     a14:	90021350 	lbu	v0,4944(zero)
     a18:	90021301 	lbu	v0,4865(zero)
     a1c:	50021301 	beql	zero,v0,5624 <data_size+0x5614>
     a20:	13500213 	beq	k0,s0,1270 <data_size+0x1260>
     a24:	02135002 	0x2135002
     a28:	90021350 	lbu	v0,4944(zero)
     a2c:	50021301 	beql	zero,v0,5634 <data_size+0x5624>
     a30:	01900213 	0x1900213
     a34:	01900213 	0x1900213
     a38:	13500213 	beq	k0,s0,1288 <data_size+0x1278>
     a3c:	02135002 	0x2135002
     a40:	02130190 	0x2130190
     a44:	50021350 	beql	zero,v0,5788 <data_size+0x5778>
     a48:	13500213 	beq	k0,s0,1298 <data_size+0x1288>
     a4c:	02135002 	0x2135002
     a50:	90021350 	lbu	v0,4944(zero)
     a54:	50021301 	beql	zero,v0,565c <data_size+0x564c>
     a58:	13500213 	beq	k0,s0,12a8 <data_size+0x1298>
     a5c:	02135002 	0x2135002
     a60:	50021350 	beql	zero,v0,57a4 <data_size+0x5794>
     a64:	01900213 	0x1900213
     a68:	018c0213 	0x18c0213
     a6c:	134c0213 	beq	k0,t4,12bc <data_size+0x12ac>
     a70:	02134c02 	0x2134c02
     a74:	4c02134c 	0x4c02134c
     a78:	134c0213 	beq	k0,t4,12c8 <data_size+0x12b8>
     a7c:	13018c02 	beq	t8,at,fffe3a88 <_etext+0x403d1030>
     a80:	13018c02 	beq	t8,at,fffe3a8c <_etext+0x403d1034>
     a84:	13018c02 	beq	t8,at,fffe3a90 <_etext+0x403d1038>
     a88:	13018c02 	beq	t8,at,fffe3a94 <_etext+0x403d103c>
     a8c:	13018c02 	beq	t8,at,fffe3a98 <_etext+0x403d1040>
     a90:	02134c02 	0x2134c02
     a94:	0213018c 	syscall	0x84c06
     a98:	0213018c 	syscall	0x84c06
     a9c:	4c02134c 	0x4c02134c
     aa0:	134c0213 	beq	k0,t4,12f0 <data_size+0x12e0>
     aa4:	13018c02 	beq	t8,at,fffe3ab0 <_etext+0x403d1058>
     aa8:	13018c02 	beq	t8,at,fffe3ab4 <_etext+0x403d105c>
     aac:	13018c02 	beq	t8,at,fffe3ab8 <_etext+0x403d1060>
     ab0:	13018c02 	beq	t8,at,fffe3abc <_etext+0x403d1064>
     ab4:	02134c02 	0x2134c02
     ab8:	0213018c 	syscall	0x84c06
     abc:	0213018c 	syscall	0x84c06
     ac0:	0213018c 	syscall	0x84c06
     ac4:	4c02134c 	0x4c02134c
     ac8:	018c0213 	0x18c0213
     acc:	134c0213 	beq	k0,t4,131c <data_size+0x130c>
     ad0:	02134c02 	0x2134c02
     ad4:	0213018c 	syscall	0x84c06
     ad8:	0213018c 	syscall	0x84c06
     adc:	8c02134c 	lw	v0,4940(zero)
     ae0:	4c021301 	0x4c021301
     ae4:	018c0213 	0x18c0213
     ae8:	018c0213 	0x18c0213
     aec:	018c0213 	0x18c0213
     af0:	134c0213 	beq	k0,t4,1340 <data_size+0x1330>
     af4:	02134c02 	0x2134c02
     af8:	4c02134c 	0x4c02134c
     afc:	134c0213 	beq	k0,t4,134c <data_size+0x133c>
     b00:	02134c02 	0x2134c02
     b04:	4c02134c 	0x4c02134c
     b08:	134c0213 	beq	k0,t4,1358 <data_size+0x1348>
     b0c:	02134c02 	0x2134c02
     b10:	4c02134c 	0x4c02134c
     b14:	134c0213 	beq	k0,t4,1364 <data_size+0x1354>
     b18:	02134802 	0x2134802
     b1c:	4c02134c 	0x4c02134c
     b20:	134c0213 	beq	k0,t4,1370 <data_size+0x1360>
     b24:	02134c02 	0x2134c02
     b28:	4c02134c 	0x4c02134c
     b2c:	134c0213 	beq	k0,t4,137c <data_size+0x136c>
     b30:	02134c02 	0x2134c02
     b34:	4c02134c 	0x4c02134c
     b38:	14400213 	bnez	v0,1388 <data_size+0x1378>
     b3c:	4b4d4c4b 	c2	0x14d4c4b
     b40:	024b4b4b 	0x24b4b4b
     b44:	01010004 	sllv	zero,at,t0
     b48:	000000b8 	0xb8
     b4c:	00270002 	ror	zero,a3,0x0
     b50:	01010000 	0x1010000
     b54:	000d0efb 	0xd0efb
     b58:	01010101 	0x1010101
     b5c:	01000000 	0x1000000
     b60:	00010000 	sll	zero,at,0x0
     b64:	5f30376e 	0x5f30376e
     b68:	615f776c 	0x615f776c
     b6c:	5f6c6564 	0x5f6c6564
     b70:	532e7865 	beql	t9,t6,1ed08 <data_size+0x1ecf8>
     b74:	00000000 	nop
     b78:	02050000 	0x2050000
     b7c:	bfc0c930 	cache	0x0,-14032(s8)
     b80:	4b4b4b18 	c2	0x14b4b18
     b84:	4b4b4b4c 	c2	0x14b4b4c
     b88:	30024d4b 	andi	v0,zero,0x4d4b
     b8c:	4b4b8313 	c2	0x14b8313
     b90:	4b4b4b4b 	c2	0x14b4b4b
     b94:	024b4c4b 	0x24b4c4b
     b98:	4b831328 	c2	0x1831328
     b9c:	4b4b4b4b 	c2	0x14b4b4b
     ba0:	4b4b4b4b 	c2	0x14b4b4b
     ba4:	4b4b4b4b 	c2	0x14b4b4b
     ba8:	4b4c4b4b 	c2	0x14c4b4b
     bac:	83132802 	lb	s3,10242(t8)
     bb0:	4b4b4b4b 	c2	0x14b4b4b
     bb4:	4b4b4b4b 	c2	0x14b4b4b
     bb8:	4b4b4b4b 	c2	0x14b4b4b
     bbc:	28024b4c 	slti	v0,zero,19276
     bc0:	4b4b8313 	c2	0x14b8313
     bc4:	4b4b4b4b 	c2	0x14b4b4b
     bc8:	4b4c4b4b 	c2	0x14c4b4b
     bcc:	83132802 	lb	s3,10242(t8)
     bd0:	4b4b4b4b 	c2	0x14b4b4b
     bd4:	4b4b4b4b 	c2	0x14b4b4b
     bd8:	4b4b4b4b 	c2	0x14b4b4b
     bdc:	30024b4c 	andi	v0,zero,0x4b4c
     be0:	4b4b8313 	c2	0x14b8313
     be4:	4b4b4b4b 	c2	0x14b4b4b
     be8:	4b4c4b4b 	c2	0x14c4b4b
     bec:	83133002 	lb	s3,12290(t8)
     bf0:	4b4b4b4b 	c2	0x14b4b4b
     bf4:	4b4b4b4b 	c2	0x14b4b4b
     bf8:	4b4d4c4b 	c2	0x14d4c4b
     bfc:	024b4b4b 	0x24b4b4b
     c00:	01010004 	sllv	zero,at,t0
     c04:	000001c8 	0x1c8
     c08:	001f0002 	srl	zero,ra,0x0
     c0c:	01010000 	0x1010000
     c10:	000d0efb 	0xd0efb
     c14:	01010101 	0x1010101
     c18:	01000000 	0x1000000
     c1c:	00010000 	sll	zero,at,0x0
     c20:	6c5f316e 	0x6c5f316e
     c24:	532e6975 	beql	t9,t6,1b1fc <data_size+0x1b1ec>
     c28:	00000000 	nop
     c2c:	02050000 	0x2050000
     c30:	bfc0cc30 	cache	0x0,-13264(s8)
     c34:	4c4b4b18 	0x4c4b4b18
     c38:	0875084b 	j	1d4212c <data_size+0x1d4211c>
     c3c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c40:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c44:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c48:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c4c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c50:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c54:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c58:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
     c5c:	75087508 	jalx	421d420 <data_size+0x421d410>
     c60:	75087508 	jalx	421d420 <data_size+0x421d410>
     c64:	75087508 	jalx	421d420 <data_size+0x421d410>
     c68:	75087508 	jalx	421d420 <data_size+0x421d410>
     c6c:	75087508 	jalx	421d420 <data_size+0x421d410>
     c70:	75087508 	jalx	421d420 <data_size+0x421d410>
     c74:	75087508 	jalx	421d420 <data_size+0x421d410>
     c78:	084b7508 	j	12dd420 <data_size+0x12dd410>
     c7c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c80:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c84:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c88:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c8c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c90:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c94:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c98:	4b750875 	c2	0x1750875
     c9c:	75087508 	jalx	421d420 <data_size+0x421d410>
     ca0:	75087508 	jalx	421d420 <data_size+0x421d410>
     ca4:	75087508 	jalx	421d420 <data_size+0x421d410>
     ca8:	75087508 	jalx	421d420 <data_size+0x421d410>
     cac:	75087508 	jalx	421d420 <data_size+0x421d410>
     cb0:	75087508 	jalx	421d420 <data_size+0x421d410>
     cb4:	75087508 	jalx	421d420 <data_size+0x421d410>
     cb8:	75087508 	jalx	421d420 <data_size+0x421d410>
     cbc:	0875084b 	j	1d4212c <data_size+0x1d4211c>
     cc0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cc4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cc8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     ccc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cd0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cd4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cd8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cdc:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
     ce0:	75087508 	jalx	421d420 <data_size+0x421d410>
     ce4:	75087508 	jalx	421d420 <data_size+0x421d410>
     ce8:	75087508 	jalx	421d420 <data_size+0x421d410>
     cec:	75087508 	jalx	421d420 <data_size+0x421d410>
     cf0:	75087508 	jalx	421d420 <data_size+0x421d410>
     cf4:	75087508 	jalx	421d420 <data_size+0x421d410>
     cf8:	75087508 	jalx	421d420 <data_size+0x421d410>
     cfc:	084b7508 	j	12dd420 <data_size+0x12dd410>
     d00:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d04:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d08:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d0c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d10:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d14:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d18:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d1c:	4b750875 	c2	0x1750875
     d20:	75087508 	jalx	421d420 <data_size+0x421d410>
     d24:	75087508 	jalx	421d420 <data_size+0x421d410>
     d28:	75087508 	jalx	421d420 <data_size+0x421d410>
     d2c:	75087508 	jalx	421d420 <data_size+0x421d410>
     d30:	75087508 	jalx	421d420 <data_size+0x421d410>
     d34:	75087508 	jalx	421d420 <data_size+0x421d410>
     d38:	75087508 	jalx	421d420 <data_size+0x421d410>
     d3c:	75087508 	jalx	421d420 <data_size+0x421d410>
     d40:	0875084b 	j	1d4212c <data_size+0x1d4211c>
     d44:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d48:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d4c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d50:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d54:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d58:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d5c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d60:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
     d64:	75087508 	jalx	421d420 <data_size+0x421d410>
     d68:	75087508 	jalx	421d420 <data_size+0x421d410>
     d6c:	75087508 	jalx	421d420 <data_size+0x421d410>
     d70:	75087508 	jalx	421d420 <data_size+0x421d410>
     d74:	75087508 	jalx	421d420 <data_size+0x421d410>
     d78:	75087508 	jalx	421d420 <data_size+0x421d410>
     d7c:	75087508 	jalx	421d420 <data_size+0x421d410>
     d80:	084b7508 	j	12dd420 <data_size+0x12dd410>
     d84:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d88:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d8c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d90:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d94:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d98:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d9c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     da0:	4b750875 	c2	0x1750875
     da4:	75087508 	jalx	421d420 <data_size+0x421d410>
     da8:	75087508 	jalx	421d420 <data_size+0x421d410>
     dac:	75087508 	jalx	421d420 <data_size+0x421d410>
     db0:	75087508 	jalx	421d420 <data_size+0x421d410>
     db4:	75087508 	jalx	421d420 <data_size+0x421d410>
     db8:	75087508 	jalx	421d420 <data_size+0x421d410>
     dbc:	75087508 	jalx	421d420 <data_size+0x421d410>
     dc0:	76087508 	jalx	821d420 <data_size+0x821d410>
     dc4:	4b4d4c4b 	c2	0x14d4c4b
     dc8:	024b4b4b 	0x24b4b4b
     dcc:	01010004 	sllv	zero,at,t0
     dd0:	00000186 	0x186
     dd4:	00200002 	ror	zero,zero,0x0
     dd8:	01010000 	0x1010000
     ddc:	000d0efb 	0xd0efb
     de0:	01010101 	0x1010101
     de4:	01000000 	0x1000000
     de8:	00010000 	sll	zero,at,0x0
     dec:	5f32366e 	0x5f32366e
     df0:	2e75686c 	sltiu	s5,s3,26732
     df4:	00000053 	mtlhx	zero
     df8:	05000000 	bltz	t0,dfc <data_size+0xdec>
     dfc:	c0de9002 	ll	s8,-28670(a2)
     e00:	4c4b18bf 	0x4c4b18bf
     e04:	02137802 	0x2137802
     e08:	40021340 	0x40021340
     e0c:	13400213 	beqz	k0,165c <data_size+0x164c>
     e10:	02134002 	0x2134002
     e14:	40021340 	0x40021340
     e18:	13400213 	beqz	k0,1668 <data_size+0x1658>
     e1c:	02137802 	0x2137802
     e20:	40021340 	0x40021340
     e24:	13400213 	beqz	k0,1674 <data_size+0x1664>
     e28:	02134002 	0x2134002
     e2c:	40021340 	0x40021340
     e30:	13780213 	beq	k1,t8,1680 <data_size+0x1670>
     e34:	02134002 	0x2134002
     e38:	78021340 	0x78021340
     e3c:	13400213 	beqz	k0,168c <data_size+0x167c>
     e40:	02134002 	0x2134002
     e44:	78021340 	0x78021340
     e48:	13400213 	beqz	k0,1698 <data_size+0x1688>
     e4c:	02134002 	0x2134002
     e50:	40021340 	0x40021340
     e54:	13400213 	beqz	k0,16a4 <data_size+0x1694>
     e58:	02134002 	0x2134002
     e5c:	40021340 	0x40021340
     e60:	13400213 	beqz	k0,16b0 <data_size+0x16a0>
     e64:	02134002 	0x2134002
     e68:	3c021374 	lui	v0,0x1374
     e6c:	133c0213 	beq	t9,gp,16bc <data_size+0x16ac>
     e70:	02133c02 	0x2133c02
     e74:	74021374 	jalx	84dd0 <data_size+0x84dc0>
     e78:	13740213 	beq	k1,s4,16c8 <data_size+0x16b8>
     e7c:	02133c02 	0x2133c02
     e80:	3c021374 	lui	v0,0x1374
     e84:	13740213 	beq	k1,s4,16d4 <data_size+0x16c4>
     e88:	02137402 	0x2137402
     e8c:	74021374 	jalx	84dd0 <data_size+0x84dc0>
     e90:	133c0213 	beq	t9,gp,16e0 <data_size+0x16d0>
     e94:	02133c02 	0x2133c02
     e98:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
     e9c:	133c0213 	beq	t9,gp,16ec <data_size+0x16dc>
     ea0:	02133c02 	0x2133c02
     ea4:	3c021374 	lui	v0,0x1374
     ea8:	133c0213 	beq	t9,gp,16f8 <data_size+0x16e8>
     eac:	02133c02 	0x2133c02
     eb0:	74021374 	jalx	84dd0 <data_size+0x84dc0>
     eb4:	133c0213 	beq	t9,gp,1704 <data_size+0x16f4>
     eb8:	02133c02 	0x2133c02
     ebc:	3c021374 	lui	v0,0x1374
     ec0:	133c0213 	beq	t9,gp,1710 <data_size+0x1700>
     ec4:	02133c02 	0x2133c02
     ec8:	74021374 	jalx	84dd0 <data_size+0x84dc0>
     ecc:	133c0213 	beq	t9,gp,171c <data_size+0x170c>
     ed0:	02137402 	0x2137402
     ed4:	3c021374 	lui	v0,0x1374
     ed8:	133c0213 	beq	t9,gp,1728 <data_size+0x1718>
     edc:	02133c02 	0x2133c02
     ee0:	3c02133c 	lui	v0,0x133c
     ee4:	133c0213 	beq	t9,gp,1734 <data_size+0x1724>
     ee8:	02133c02 	0x2133c02
     eec:	3c02133c 	lui	v0,0x133c
     ef0:	133c0213 	beq	t9,gp,1740 <data_size+0x1730>
     ef4:	02133c02 	0x2133c02
     ef8:	3c02133c 	lui	v0,0x133c
     efc:	133c0213 	beq	t9,gp,174c <data_size+0x173c>
     f00:	02133c02 	0x2133c02
     f04:	3c02133c 	lui	v0,0x133c
     f08:	133c0213 	beq	t9,gp,1758 <data_size+0x1748>
     f0c:	02133c02 	0x2133c02
     f10:	3c02133c 	lui	v0,0x133c
     f14:	133c0213 	beq	t9,gp,1764 <data_size+0x1754>
     f18:	02133c02 	0x2133c02
     f1c:	3c02133c 	lui	v0,0x133c
     f20:	133c0213 	beq	t9,gp,1770 <data_size+0x1760>
     f24:	02133c02 	0x2133c02
     f28:	3c02133c 	lui	v0,0x133c
     f2c:	133c0213 	beq	t9,gp,177c <data_size+0x176c>
     f30:	02133c02 	0x2133c02
     f34:	3c02133c 	lui	v0,0x133c
     f38:	133c0213 	beq	t9,gp,1788 <data_size+0x1778>
     f3c:	02133c02 	0x2133c02
     f40:	3c02133c 	lui	v0,0x133c
     f44:	133c0213 	beq	t9,gp,1794 <data_size+0x1784>
     f48:	02133c02 	0x2133c02
     f4c:	4c4b1438 	0x4c4b1438
     f50:	4b4b4b4d 	c2	0x14b4b4d
     f54:	0004024b 	0x4024b
     f58:	00bf0101 	0xbf0101
     f5c:	00020000 	sll	zero,v0,0x0
     f60:	00000027 	nor	zero,zero,zero
     f64:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
     f68:	0101000d 	break	0x101
     f6c:	00000101 	0x101
     f70:	00000100 	sll	zero,zero,0x4
     f74:	376e0001 	ori	t6,k1,0x1
     f78:	68735f34 	0x68735f34
     f7c:	6564615f 	0x6564615f
     f80:	78655f73 	0x78655f73
     f84:	0000532e 	0x532e
     f88:	00000000 	nop
     f8c:	fe100205 	sdc3	$16,517(s0)
     f90:	4b18bfc0 	c2	0x118bfc0
     f94:	4b4c4b4b 	c2	0x14c4b4b
     f98:	4d4b4b4b 	0x4d4b4b4b
     f9c:	83132802 	lb	s3,10242(t8)
     fa0:	4b4b4b4b 	c2	0x14b4b4b
     fa4:	4b4b4b4b 	c2	0x14b4b4b
     fa8:	28024b4c 	slti	v0,zero,19276
     fac:	4b4b8313 	c2	0x14b8313
     fb0:	4b4b4b4b 	c2	0x14b4b4b
     fb4:	4b4b4b4b 	c2	0x14b4b4b
     fb8:	4b4b4b4b 	c2	0x14b4b4b
     fbc:	4b4c4b4b 	c2	0x14c4b4b
     fc0:	83132802 	lb	s3,10242(t8)
     fc4:	4b4b4b4b 	c2	0x14b4b4b
     fc8:	4b4b4b4b 	c2	0x14b4b4b
     fcc:	4b4b4b4b 	c2	0x14b4b4b
     fd0:	024b4c4b 	0x24b4c4b
     fd4:	4b831328 	c2	0x1831328
     fd8:	4b4b4b4b 	c2	0x14b4b4b
     fdc:	4b4b4b4b 	c2	0x14b4b4b
     fe0:	28024b4c 	slti	v0,zero,19276
     fe4:	4b4b8313 	c2	0x14b8313
     fe8:	4b4b4b4b 	c2	0x14b4b4b
     fec:	4b4b4b4b 	c2	0x14b4b4b
     ff0:	4c4b4b4b 	0x4c4b4b4b
     ff4:	1328024b 	beq	t9,t0,1924 <data_size+0x1914>
     ff8:	4b4b4b83 	c2	0x14b4b83
     ffc:	4b4b4b4b 	c2	0x14b4b4b
    1000:	4b4c4b4b 	c2	0x14c4b4b
    1004:	83132802 	lb	s3,10242(t8)
    1008:	4b4b4b4b 	c2	0x14b4b4b
    100c:	4b4b4b4b 	c2	0x14b4b4b
    1010:	4d4c4b4b 	0x4d4c4b4b
    1014:	4b4b4b4b 	c2	0x14b4b4b
    1018:	01000402 	0x1000402
    101c:	0001b601 	0x1b601
    1020:	20000200 	addi	zero,zero,512
    1024:	01000000 	0x1000000
    1028:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
    102c:	01010100 	0x1010100
    1030:	00000001 	movf	zero,zero,$fcc0
    1034:	01000001 	movf	zero,t0,$fcc0
    1038:	30366e00 	andi	s6,at,0x6e00
    103c:	75626c5f 	jalx	589b17c <data_size+0x589b16c>
    1040:	0000532e 	0x532e
    1044:	00000000 	nop
    1048:	01100205 	0x1100205
    104c:	4b18bfc1 	c2	0x118bfc1
    1050:	1340024c 	beqz	k0,1984 <data_size+0x1974>
    1054:	02134002 	0x2134002
    1058:	40021340 	0x40021340
    105c:	13400213 	beqz	k0,18ac <data_size+0x189c>
    1060:	02134002 	0x2134002
    1064:	40021378 	0x40021378
    1068:	13780213 	beq	k1,t8,18b8 <data_size+0x18a8>
    106c:	02134002 	0x2134002
    1070:	40021340 	0x40021340
    1074:	13400213 	beqz	k0,18c4 <data_size+0x18b4>
    1078:	02134002 	0x2134002
    107c:	40021340 	0x40021340
    1080:	13400213 	beqz	k0,18d0 <data_size+0x18c0>
    1084:	02134002 	0x2134002
    1088:	40021378 	0x40021378
    108c:	13400213 	beqz	k0,18dc <data_size+0x18cc>
    1090:	02134002 	0x2134002
    1094:	40021340 	0x40021340
    1098:	13400213 	beqz	k0,18e8 <data_size+0x18d8>
    109c:	02134002 	0x2134002
    10a0:	78021340 	0x78021340
    10a4:	13780213 	beq	k1,t8,18f4 <data_size+0x18e4>
    10a8:	02134002 	0x2134002
    10ac:	40021340 	0x40021340
    10b0:	13400213 	beqz	k0,1900 <data_size+0x18f0>
    10b4:	02134002 	0x2134002
    10b8:	40021340 	0x40021340
    10bc:	13400213 	beqz	k0,190c <data_size+0x18fc>
    10c0:	02134002 	0x2134002
    10c4:	40021378 	0x40021378
    10c8:	13780213 	beq	k1,t8,1918 <data_size+0x1908>
    10cc:	02134002 	0x2134002
    10d0:	40021340 	0x40021340
    10d4:	13400213 	beqz	k0,1924 <data_size+0x1914>
    10d8:	02134002 	0x2134002
    10dc:	40021340 	0x40021340
    10e0:	13780213 	beq	k1,t8,1930 <data_size+0x1920>
    10e4:	02134002 	0x2134002
    10e8:	40021340 	0x40021340
    10ec:	13400213 	beqz	k0,193c <data_size+0x192c>
    10f0:	02133c02 	0x2133c02
    10f4:	3c02133c 	lui	v0,0x133c
    10f8:	13740213 	beq	k1,s4,1948 <data_size+0x1938>
    10fc:	02133c02 	0x2133c02
    1100:	3c02133c 	lui	v0,0x133c
    1104:	133c0213 	beq	t9,gp,1954 <data_size+0x1944>
    1108:	02137402 	0x2137402
    110c:	74021374 	jalx	84dd0 <data_size+0x84dc0>
    1110:	13740213 	beq	k1,s4,1960 <data_size+0x1950>
    1114:	02137402 	0x2137402
    1118:	3c021374 	lui	v0,0x1374
    111c:	133c0213 	beq	t9,gp,196c <data_size+0x195c>
    1120:	02137402 	0x2137402
    1124:	74021374 	jalx	84dd0 <data_size+0x84dc0>
    1128:	133c0213 	beq	t9,gp,1978 <data_size+0x1968>
    112c:	02137402 	0x2137402
    1130:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
    1134:	13740213 	beq	k1,s4,1984 <data_size+0x1974>
    1138:	02137402 	0x2137402
    113c:	3c02133c 	lui	v0,0x133c
    1140:	13740213 	beq	k1,s4,1990 <data_size+0x1980>
    1144:	02133c02 	0x2133c02
    1148:	74021374 	jalx	84dd0 <data_size+0x84dc0>
    114c:	13740213 	beq	k1,s4,199c <data_size+0x198c>
    1150:	02133c02 	0x2133c02
    1154:	74021374 	jalx	84dd0 <data_size+0x84dc0>
    1158:	133c0213 	beq	t9,gp,19a8 <data_size+0x1998>
    115c:	02137402 	0x2137402
    1160:	74021374 	jalx	84dd0 <data_size+0x84dc0>
    1164:	13740213 	beq	k1,s4,19b4 <data_size+0x19a4>
    1168:	02137402 	0x2137402
    116c:	3c02133c 	lui	v0,0x133c
    1170:	13740213 	beq	k1,s4,19c0 <data_size+0x19b0>
    1174:	02133c02 	0x2133c02
    1178:	3c021374 	lui	v0,0x1374
    117c:	133c0213 	beq	t9,gp,19cc <data_size+0x19bc>
    1180:	02133c02 	0x2133c02
    1184:	3c02133c 	lui	v0,0x133c
    1188:	133c0213 	beq	t9,gp,19d8 <data_size+0x19c8>
    118c:	02133c02 	0x2133c02
    1190:	3c02133c 	lui	v0,0x133c
    1194:	133c0213 	beq	t9,gp,19e4 <data_size+0x19d4>
    1198:	02133c02 	0x2133c02
    119c:	3c02133c 	lui	v0,0x133c
    11a0:	133c0213 	beq	t9,gp,19f0 <data_size+0x19e0>
    11a4:	02133c02 	0x2133c02
    11a8:	3c02133c 	lui	v0,0x133c
    11ac:	133c0213 	beq	t9,gp,19fc <data_size+0x19ec>
    11b0:	02133c02 	0x2133c02
    11b4:	3c02133c 	lui	v0,0x133c
    11b8:	133c0213 	beq	t9,gp,1a08 <data_size+0x19f8>
    11bc:	02133c02 	0x2133c02
    11c0:	3c02133c 	lui	v0,0x133c
    11c4:	133c0213 	beq	t9,gp,1a14 <data_size+0x1a04>
    11c8:	4b143802 	c2	0x1143802
    11cc:	4b4b4d4c 	c2	0x14b4d4c
    11d0:	04024b4b 	bltzl	zero,13f00 <data_size+0x13ef0>
    11d4:	b8010100 	swr	at,256(zero)
    11d8:	02000000 	0x2000000
    11dc:	00002700 	sll	a0,zero,0x1c
    11e0:	fb010100 	sdc2	$1,256(t8)
    11e4:	01000d0e 	0x1000d0e
    11e8:	00010101 	0x10101
    11ec:	00010000 	sll	zero,at,0x0
    11f0:	6e000100 	0x6e000100
    11f4:	6c5f3137 	0x6c5f3137
    11f8:	64615f68 	0x64615f68
    11fc:	655f6c65 	0x655f6c65
    1200:	00532e78 	0x532e78
    1204:	00000000 	nop
    1208:	40020500 	0x40020500
    120c:	18bfc127 	0x18bfc127
    1210:	4c4b4b4b 	0x4c4b4b4b
    1214:	4b4b4b4b 	c2	0x14b4b4b
    1218:	1330024d 	beq	t9,s0,1b50 <data_size+0x1b40>
    121c:	4b4b4b83 	c2	0x14b4b83
    1220:	4b4b4b4b 	c2	0x14b4b4b
    1224:	28024b4c 	slti	v0,zero,19276
    1228:	4b4b8313 	c2	0x14b8313
    122c:	4b4b4b4b 	c2	0x14b4b4b
    1230:	4b4b4b4b 	c2	0x14b4b4b
    1234:	4b4b4b4b 	c2	0x14b4b4b
    1238:	024b4c4b 	0x24b4c4b
    123c:	4b831330 	c2	0x1831330
    1240:	4b4b4b4b 	c2	0x14b4b4b
    1244:	4b4b4b4b 	c2	0x14b4b4b
    1248:	4c4b4b4b 	0x4c4b4b4b
    124c:	1330024b 	beq	t9,s0,1b7c <data_size+0x1b6c>
    1250:	4b4b4b83 	c2	0x14b4b83
    1254:	4b4b4b4b 	c2	0x14b4b4b
    1258:	024b4c4b 	0x24b4c4b
    125c:	4b831330 	c2	0x1831330
    1260:	4b4b4b4b 	c2	0x14b4b4b
    1264:	4b4b4b4b 	c2	0x14b4b4b
    1268:	4c4b4b4b 	0x4c4b4b4b
    126c:	1328024b 	beq	t9,t0,1b9c <data_size+0x1b8c>
    1270:	4b4b4b83 	c2	0x14b4b83
    1274:	4b4b4b4b 	c2	0x14b4b4b
    1278:	024b4c4b 	0x24b4c4b
    127c:	4b831328 	c2	0x1831328
    1280:	4b4b4b4b 	c2	0x14b4b4b
    1284:	4b4b4b4b 	c2	0x14b4b4b
    1288:	4b4b4d4c 	c2	0x14b4d4c
    128c:	04024b4b 	bltzl	zero,13fbc <data_size+0x13fac>
    1290:	Address 0x0000000000001290 is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000003c 	0x3c
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000000 	nop
  10:	bfc00000 	cache	0x0,0(s8)
  14:	bfc008dc 	cache	0x0,2268(s8)
  18:	72617473 	0x72617473
  1c:	00532e74 	teq	v0,s3,0xb9
  20:	6d6f682f 	0x6d6f682f
  24:	73632f65 	0x73632f65
  28:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
  2c:	4700636e 	c1	0x100636e
  30:	4120554e 	0x4120554e
  34:	2e322053 	sltiu	s2,s1,8275
  38:	352e3831 	ori	t6,t1,0x3831
  3c:	80010030 	lb	at,48(zero)
  40:	00000042 	srl	zero,zero,0x1
  44:	00140002 	srl	zero,s4,0x0
  48:	01040000 	0x1040000
  4c:	0000019e 	0x19e
  50:	bfc008e0 	cache	0x0,2272(s8)
  54:	bfc01f58 	cache	0x0,8024(s8)
  58:	5f32316e 	0x5f32316e
  5c:	532e7773 	beql	t9,t6,1de2c <data_size+0x1de1c>
  60:	6f682f00 	0x6f682f00
  64:	632f656d 	0x632f656d
  68:	662f7973 	0x662f7973
  6c:	2f636e75 	sltiu	v1,k1,28277
  70:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
  74:	554e4700 	bnel	t2,t6,11c78 <data_size+0x11c68>
  78:	20534120 	addi	s3,v0,16672
  7c:	38312e32 	xori	s1,at,0x2e32
  80:	0030352e 	0x30352e
  84:	004b8001 	0x4b8001
  88:	00020000 	sll	zero,v0,0x0
  8c:	00000028 	0x28
  90:	02ac0104 	0x2ac0104
  94:	1f600000 	bgtz	k1,98 <data_size+0x88>
  98:	2254bfc0 	addi	s4,s2,-16448
  9c:	376ebfc0 	ori	t6,k1,0xbfc0
  a0:	686c5f32 	0x686c5f32
  a4:	64615f75 	0x64615f75
  a8:	655f6c65 	0x655f6c65
  ac:	00532e78 	0x532e78
  b0:	6d6f682f 	0x6d6f682f
  b4:	73632f65 	0x73632f65
  b8:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
  bc:	692f636e 	0x692f636e
  c0:	0074736e 	0x74736e
  c4:	20554e47 	addi	s5,v0,20039
  c8:	32205341 	andi	zero,s1,0x5341
  cc:	2e38312e 	sltiu	t8,s1,12590
  d0:	01003035 	0x1003035
  d4:	00004280 	sll	t0,zero,0xa
  d8:	3c000200 	lui	zero,0x200
  dc:	04000000 	bltz	zero,e0 <data_size+0xd0>
  e0:	00036901 	0x36901
  e4:	c0226000 	ll	v0,24576(at)
  e8:	c04b58bf 	ll	t3,22719(v0)
  ec:	33366ebf 	andi	s6,t9,0x6ebf
  f0:	2e62735f 	sltiu	v0,s3,29535
  f4:	682f0053 	0x682f0053
  f8:	2f656d6f 	sltiu	a1,k1,28015
  fc:	2f797363 	sltiu	t9,k1,29539
 100:	636e7566 	0x636e7566
 104:	736e692f 	0x736e692f
 108:	4e470074 	c3	0x470074
 10c:	53412055 	beql	k0,at,8264 <data_size+0x8254>
 110:	312e3220 	andi	t6,t1,0x3220
 114:	30352e38 	andi	s5,at,0x2e38
 118:	4a800100 	c2	0x800100
 11c:	02000000 	0x2000000
 120:	00005000 	sll	t2,zero,0x0
 124:	16010400 	bne	s0,at,1128 <data_size+0x1118>
 128:	60000005 	0x60000005
 12c:	58bfc04b 	0x58bfc04b
 130:	6ebfc04e 	0x6ebfc04e
 134:	735f3337 	0x735f3337
 138:	64615f77 	0x64615f77
 13c:	655f7365 	0x655f7365
 140:	00532e78 	0x532e78
 144:	6d6f682f 	0x6d6f682f
 148:	73632f65 	0x73632f65
 14c:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 150:	692f636e 	0x692f636e
 154:	0074736e 	0x74736e
 158:	20554e47 	addi	s5,v0,20039
 15c:	32205341 	andi	zero,s1,0x5341
 160:	2e38312e 	sltiu	t8,s1,12590
 164:	01003035 	0x1003035
 168:	00004180 	sll	t0,zero,0x6
 16c:	64000200 	0x64000200
 170:	04000000 	bltz	zero,174 <data_size+0x164>
 174:	0005d901 	0x5d901
 178:	c04e6000 	ll	t6,24576(v0)
 17c:	c0625cbf 	ll	v0,23743(v1)
 180:	5f366ebf 	0x5f366ebf
 184:	532e776c 	beql	t9,t6,1df38 <data_size+0x1df28>
 188:	6f682f00 	0x6f682f00
 18c:	632f656d 	0x632f656d
 190:	662f7973 	0x662f7973
 194:	2f636e75 	sltiu	v1,k1,28277
 198:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 19c:	554e4700 	bnel	t2,t6,11da0 <data_size+0x11d90>
 1a0:	20534120 	addi	s3,v0,16672
 1a4:	38312e32 	xori	s1,at,0x2e32
 1a8:	0030352e 	0x30352e
 1ac:	00428001 	0x428001
 1b0:	00020000 	sll	zero,v0,0x0
 1b4:	00000078 	0x78
 1b8:	06d70104 	0x6d70104
 1bc:	62600000 	0x62600000
 1c0:	860cbfc0 	lh	t4,-16448(s0)
 1c4:	356ebfc0 	ori	t6,t3,0xbfc0
 1c8:	626c5f39 	0x626c5f39
 1cc:	2f00532e 	sltiu	zero,t8,21294
 1d0:	656d6f68 	0x656d6f68
 1d4:	7973632f 	0x7973632f
 1d8:	6e75662f 	0x6e75662f
 1dc:	6e692f63 	0x6e692f63
 1e0:	47007473 	c1	0x1007473
 1e4:	4120554e 	0x4120554e
 1e8:	2e322053 	sltiu	s2,s1,8275
 1ec:	352e3831 	ori	t6,t1,0x3831
 1f0:	80010030 	lb	at,48(zero)
 1f4:	00000042 	srl	zero,zero,0x1
 1f8:	008c0002 	0x8c0002
 1fc:	01040000 	0x1040000
 200:	00000875 	0x875
 204:	bfc08610 	cache	0x0,-31216(s8)
 208:	bfc0a260 	cache	0x0,-23968(s8)
 20c:	5f31366e 	0x5f31366e
 210:	532e686c 	beql	t9,t6,1a3c4 <data_size+0x1a3b4>
 214:	6f682f00 	0x6f682f00
 218:	632f656d 	0x632f656d
 21c:	662f7973 	0x662f7973
 220:	2f636e75 	sltiu	v1,k1,28277
 224:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 228:	554e4700 	bnel	t2,t6,11e2c <data_size+0x11e1c>
 22c:	20534120 	addi	s3,v0,16672
 230:	38312e32 	xori	s1,at,0x2e32
 234:	0030352e 	0x30352e
 238:	00428001 	0x428001
 23c:	00020000 	sll	zero,v0,0x0
 240:	000000a0 	0xa0
 244:	09b60104 	j	6d80410 <data_size+0x6d80400>
 248:	a2600000 	sb	zero,0(s3)
 24c:	c92cbfc0 	lwc2	$12,-16448(t1)
 250:	366ebfc0 	ori	t6,s3,0xbfc0
 254:	68735f34 	0x68735f34
 258:	2f00532e 	sltiu	zero,t8,21294
 25c:	656d6f68 	0x656d6f68
 260:	7973632f 	0x7973632f
 264:	6e75662f 	0x6e75662f
 268:	6e692f63 	0x6e692f63
 26c:	47007473 	c1	0x1007473
 270:	4120554e 	0x4120554e
 274:	2e322053 	sltiu	s2,s1,8275
 278:	352e3831 	ori	t6,t1,0x3831
 27c:	80010030 	lb	at,48(zero)
 280:	0000004a 	0x4a
 284:	00b40002 	0xb40002
 288:	01040000 	0x1040000
 28c:	00000b48 	0xb48
 290:	bfc0c930 	cache	0x0,-14032(s8)
 294:	bfc0cc24 	cache	0x0,-13276(s8)
 298:	5f30376e 	0x5f30376e
 29c:	615f776c 	0x615f776c
 2a0:	5f6c6564 	0x5f6c6564
 2a4:	532e7865 	beql	t9,t6,1e43c <data_size+0x1e42c>
 2a8:	6f682f00 	0x6f682f00
 2ac:	632f656d 	0x632f656d
 2b0:	662f7973 	0x662f7973
 2b4:	2f636e75 	sltiu	v1,k1,28277
 2b8:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 2bc:	554e4700 	bnel	t2,t6,11ec0 <data_size+0x11eb0>
 2c0:	20534120 	addi	s3,v0,16672
 2c4:	38312e32 	xori	s1,at,0x2e32
 2c8:	0030352e 	0x30352e
 2cc:	00428001 	0x428001
 2d0:	00020000 	sll	zero,v0,0x0
 2d4:	000000c8 	0xc8
 2d8:	0c040104 	jal	100410 <data_size+0x100400>
 2dc:	cc300000 	pref	0x10,0(at)
 2e0:	de8cbfc0 	ldc3	$12,-16448(s4)
 2e4:	316ebfc0 	andi	t6,t3,0xbfc0
 2e8:	69756c5f 	0x69756c5f
 2ec:	2f00532e 	sltiu	zero,t8,21294
 2f0:	656d6f68 	0x656d6f68
 2f4:	7973632f 	0x7973632f
 2f8:	6e75662f 	0x6e75662f
 2fc:	6e692f63 	0x6e692f63
 300:	47007473 	c1	0x1007473
 304:	4120554e 	0x4120554e
 308:	2e322053 	sltiu	s2,s1,8275
 30c:	352e3831 	ori	t6,t1,0x3831
 310:	80010030 	lb	at,48(zero)
 314:	00000043 	sra	zero,zero,0x1
 318:	00dc0002 	0xdc0002
 31c:	01040000 	0x1040000
 320:	00000dd0 	0xdd0
 324:	bfc0de90 	cache	0x0,-8560(s8)
 328:	bfc0fe08 	cache	0x0,-504(s8)
 32c:	5f32366e 	0x5f32366e
 330:	2e75686c 	sltiu	s5,s3,26732
 334:	682f0053 	0x682f0053
 338:	2f656d6f 	sltiu	a1,k1,28015
 33c:	2f797363 	sltiu	t9,k1,29539
 340:	636e7566 	0x636e7566
 344:	736e692f 	0x736e692f
 348:	4e470074 	c3	0x470074
 34c:	53412055 	beql	k0,at,84a4 <data_size+0x8494>
 350:	312e3220 	andi	t6,t1,0x3220
 354:	30352e38 	andi	s5,at,0x2e38
 358:	4a800100 	c2	0x800100
 35c:	02000000 	0x2000000
 360:	0000f000 	sll	s8,zero,0x0
 364:	5a010400 	0x5a010400
 368:	1000000f 	b	3a8 <data_size+0x398>
 36c:	08bfc0fe 	j	2ff03f8 <data_size+0x2ff03e8>
 370:	6ebfc101 	0x6ebfc101
 374:	735f3437 	0x735f3437
 378:	64615f68 	0x64615f68
 37c:	655f7365 	0x655f7365
 380:	00532e78 	0x532e78
 384:	6d6f682f 	0x6d6f682f
 388:	73632f65 	0x73632f65
 38c:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 390:	692f636e 	0x692f636e
 394:	0074736e 	0x74736e
 398:	20554e47 	addi	s5,v0,20039
 39c:	32205341 	andi	zero,s1,0x5341
 3a0:	2e38312e 	sltiu	t8,s1,12590
 3a4:	01003035 	0x1003035
 3a8:	00004380 	sll	t0,zero,0xe
 3ac:	04000200 	bltz	zero,bb0 <data_size+0xba0>
 3b0:	04000001 	bltz	zero,3b8 <data_size+0x3a8>
 3b4:	00101d01 	0x101d01
 3b8:	c1011000 	ll	at,4096(t0)
 3bc:	c12738bf 	ll	a3,14527(t1)
 3c0:	30366ebf 	andi	s6,at,0x6ebf
 3c4:	75626c5f 	jalx	589b17c <data_size+0x589b16c>
 3c8:	2f00532e 	sltiu	zero,t8,21294
 3cc:	656d6f68 	0x656d6f68
 3d0:	7973632f 	0x7973632f
 3d4:	6e75662f 	0x6e75662f
 3d8:	6e692f63 	0x6e692f63
 3dc:	47007473 	c1	0x1007473
 3e0:	4120554e 	0x4120554e
 3e4:	2e322053 	sltiu	s2,s1,8275
 3e8:	352e3831 	ori	t6,t1,0x3831
 3ec:	80010030 	lb	at,48(zero)
 3f0:	0000004a 	0x4a
 3f4:	01180002 	0x1180002
 3f8:	01040000 	0x1040000
 3fc:	000011d7 	0x11d7
 400:	bfc12740 	cache	0x1,10048(s8)
 404:	bfc12a3c 	cache	0x1,10812(s8)
 408:	5f31376e 	0x5f31376e
 40c:	615f686c 	0x615f686c
 410:	5f6c6564 	0x5f6c6564
 414:	532e7865 	beql	t9,t6,1e5ac <data_size+0x1e59c>
 418:	6f682f00 	0x6f682f00
 41c:	632f656d 	0x632f656d
 420:	662f7973 	0x662f7973
 424:	2f636e75 	sltiu	v1,k1,28277
 428:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 42c:	554e4700 	bnel	t2,t6,12030 <data_size+0x12020>
 430:	20534120 	addi	s3,v0,16672
 434:	38312e32 	xori	s1,at,0x2e32
 438:	0030352e 	0x30352e
 43c:	Address 0x000000000000043c is out of bounds.


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
  c8:	10001101 	b	44d0 <data_size+0x44c0>
  cc:	12011106 	beq	s0,at,44e8 <data_size+0x44d8>
  d0:	1b080301 	0x1b080301
  d4:	13082508 	beq	t8,t0,94f8 <data_size+0x94e8>
  d8:	00000005 	0x5
  dc:	10001101 	b	44e4 <data_size+0x44d4>
  e0:	12011106 	beq	s0,at,44fc <data_size+0x44ec>
  e4:	1b080301 	0x1b080301
  e8:	13082508 	beq	t8,t0,950c <data_size+0x94fc>
  ec:	00000005 	0x5
  f0:	10001101 	b	44f8 <data_size+0x44e8>
  f4:	12011106 	beq	s0,at,4510 <data_size+0x4500>
  f8:	1b080301 	0x1b080301
  fc:	13082508 	beq	t8,t0,9520 <data_size+0x9510>
 100:	00000005 	0x5
 104:	10001101 	b	450c <data_size+0x44fc>
 108:	12011106 	beq	s0,at,4524 <data_size+0x4514>
 10c:	1b080301 	0x1b080301
 110:	13082508 	beq	t8,t0,9534 <data_size+0x9524>
 114:	00000005 	0x5
 118:	10001101 	b	4520 <data_size+0x4510>
 11c:	12011106 	beq	s0,at,4538 <data_size+0x4528>
 120:	1b080301 	0x1b080301
 124:	13082508 	beq	t8,t0,9548 <data_size+0x9538>
 128:	00000005 	0x5
