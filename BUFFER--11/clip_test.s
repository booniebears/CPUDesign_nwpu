
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
bfc006f8:	0ff00b5c 	jal	bfc02d70 <n1_lui_test>
/home/csy/func/start.S:293
bfc006fc:	00000000 	nop
/home/csy/func/start.S:294
bfc00700:	0ff00254 	jal	bfc00950 <wait_1s>
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
/home/csy/func/start.S:554
bfc00718:	0ff00ff4 	jal	bfc03fd0 <n65_syscall_ex_test>
/home/csy/func/start.S:555
bfc0071c:	00000000 	nop
/home/csy/func/start.S:556
bfc00720:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:557
bfc00724:	00000000 	nop
/home/csy/func/start.S:558
bfc00728:	0ff0080c 	jal	bfc02030 <n66_break_ex_test>
/home/csy/func/start.S:559
bfc0072c:	00000000 	nop
/home/csy/func/start.S:560
bfc00730:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:561
bfc00734:	00000000 	nop
/home/csy/func/start.S:562
bfc00738:	0ff003e8 	jal	bfc00fa0 <n67_add_ov_ex_test>
/home/csy/func/start.S:563
bfc0073c:	00000000 	nop
/home/csy/func/start.S:564
bfc00740:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:565
bfc00744:	00000000 	nop
/home/csy/func/start.S:566
bfc00748:	0ff0047c 	jal	bfc011f0 <n68_addi_ov_ex_test>
/home/csy/func/start.S:567
bfc0074c:	00000000 	nop
/home/csy/func/start.S:568
bfc00750:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:569
bfc00754:	00000000 	nop
/home/csy/func/start.S:570
bfc00758:	0ff0119c 	jal	bfc04670 <n69_sub_ov_ex_test>
/home/csy/func/start.S:571
bfc0075c:	00000000 	nop
/home/csy/func/start.S:572
bfc00760:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:573
bfc00764:	00000000 	nop
/home/csy/func/start.S:574
bfc00768:	0ff0085c 	jal	bfc02170 <n70_lw_adel_ex_test>
/home/csy/func/start.S:575
bfc0076c:	00000000 	nop
/home/csy/func/start.S:576
bfc00770:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:577
bfc00774:	00000000 	nop
/home/csy/func/start.S:578
bfc00778:	0ff016dc 	jal	bfc05b70 <n71_lh_adel_ex_test>
/home/csy/func/start.S:579
bfc0077c:	00000000 	nop
/home/csy/func/start.S:580
bfc00780:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:581
bfc00784:	00000000 	nop
/home/csy/func/start.S:582
bfc00788:	0ff00268 	jal	bfc009a0 <n72_lhu_adel_ex_test>
/home/csy/func/start.S:583
bfc0078c:	00000000 	nop
/home/csy/func/start.S:584
bfc00790:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:585
bfc00794:	00000000 	nop
/home/csy/func/start.S:586
bfc00798:	0ff00328 	jal	bfc00ca0 <n73_sw_ades_ex_test>
/home/csy/func/start.S:587
bfc0079c:	00000000 	nop
/home/csy/func/start.S:588
bfc007a0:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:589
bfc007a4:	00000000 	nop
/home/csy/func/start.S:590
bfc007a8:	0ff012f4 	jal	bfc04bd0 <n74_sh_ades_ex_test>
/home/csy/func/start.S:591
bfc007ac:	00000000 	nop
/home/csy/func/start.S:592
bfc007b0:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:593
bfc007b4:	00000000 	nop
/home/csy/func/start.S:594
bfc007b8:	0ff01590 	jal	bfc05640 <n75_ft_adel_ex_test>
/home/csy/func/start.S:595
bfc007bc:	00000000 	nop
/home/csy/func/start.S:596
bfc007c0:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:597
bfc007c4:	00000000 	nop
/home/csy/func/start.S:598
bfc007c8:	0ff0153c 	jal	bfc054f0 <n76_ri_ex_test>
/home/csy/func/start.S:599
bfc007cc:	00000000 	nop
/home/csy/func/start.S:600
bfc007d0:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:601
bfc007d4:	00000000 	nop
/home/csy/func/start.S:602
bfc007d8:	0ff01044 	jal	bfc04110 <n77_soft_int_ex_test>
/home/csy/func/start.S:603
bfc007dc:	00000000 	nop
/home/csy/func/start.S:604
bfc007e0:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:605
bfc007e4:	00000000 	nop
/home/csy/func/start.S:606
bfc007e8:	0ff0068c 	jal	bfc01a30 <n78_beq_ds_ex_test>
/home/csy/func/start.S:607
bfc007ec:	00000000 	nop
/home/csy/func/start.S:608
bfc007f0:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:609
bfc007f4:	00000000 	nop
/home/csy/func/start.S:610
bfc007f8:	0ff0161c 	jal	bfc05870 <n79_bne_ds_ex_test>
/home/csy/func/start.S:611
bfc007fc:	00000000 	nop
/home/csy/func/start.S:612
bfc00800:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:613
bfc00804:	00000000 	nop
/home/csy/func/start.S:614
bfc00808:	0ff009dc 	jal	bfc02770 <n80_bgez_ds_ex_test>
/home/csy/func/start.S:615
bfc0080c:	00000000 	nop
/home/csy/func/start.S:616
bfc00810:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:617
bfc00814:	00000000 	nop
/home/csy/func/start.S:618
bfc00818:	0ff00508 	jal	bfc01420 <n81_bgtz_ds_ex_test>
/home/csy/func/start.S:619
bfc0081c:	00000000 	nop
/home/csy/func/start.S:620
bfc00820:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:621
bfc00824:	00000000 	nop
/home/csy/func/start.S:622
bfc00828:	0ff0091c 	jal	bfc02470 <n82_blez_ds_ex_test>
/home/csy/func/start.S:623
bfc0082c:	00000000 	nop
/home/csy/func/start.S:624
bfc00830:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:625
bfc00834:	00000000 	nop
/home/csy/func/start.S:626
bfc00838:	0ff010dc 	jal	bfc04370 <n83_bltz_ds_ex_test>
/home/csy/func/start.S:627
bfc0083c:	00000000 	nop
/home/csy/func/start.S:628
bfc00840:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:629
bfc00844:	00000000 	nop
/home/csy/func/start.S:630
bfc00848:	0ff01478 	jal	bfc051e0 <n84_bltzal_ds_ex_test>
/home/csy/func/start.S:631
bfc0084c:	00000000 	nop
/home/csy/func/start.S:632
bfc00850:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:633
bfc00854:	00000000 	nop
/home/csy/func/start.S:634
bfc00858:	0ff013b4 	jal	bfc04ed0 <n85_bgezal_ds_ex_test>
/home/csy/func/start.S:635
bfc0085c:	00000000 	nop
/home/csy/func/start.S:636
bfc00860:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:637
bfc00864:	00000000 	nop
/home/csy/func/start.S:638
bfc00868:	0ff0074c 	jal	bfc01d30 <n86_j_ds_ex_test>
/home/csy/func/start.S:639
bfc0086c:	00000000 	nop
/home/csy/func/start.S:640
bfc00870:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:641
bfc00874:	00000000 	nop
/home/csy/func/start.S:642
bfc00878:	0ff01230 	jal	bfc048c0 <n87_jal_ds_ex_test>
/home/csy/func/start.S:643
bfc0087c:	00000000 	nop
/home/csy/func/start.S:644
bfc00880:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:645
bfc00884:	00000000 	nop
/home/csy/func/start.S:646
bfc00888:	0ff00a9c 	jal	bfc02a70 <n88_jr_ds_ex_test>
/home/csy/func/start.S:647
bfc0088c:	00000000 	nop
/home/csy/func/start.S:648
bfc00890:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:649
bfc00894:	00000000 	nop
/home/csy/func/start.S:650
bfc00898:	0ff005c8 	jal	bfc01720 <n89_jalr_ds_ex_test>
/home/csy/func/start.S:651
bfc0089c:	00000000 	nop
/home/csy/func/start.S:652
bfc008a0:	0ff00254 	jal	bfc00950 <wait_1s>
/home/csy/func/start.S:653
bfc008a4:	00000000 	nop
/home/csy/func/start.S:655
bfc008a8:	3c04bfaf 	lui	a0,0xbfaf
bfc008ac:	3484ffec 	ori	a0,a0,0xffec
/home/csy/func/start.S:656
bfc008b0:	24081234 	li	t0,4660
/home/csy/func/start.S:657
bfc008b4:	ac880000 	sw	t0,0(a0)
/home/csy/func/start.S:658
bfc008b8:	8c890000 	lw	t1,0(a0)
/home/csy/func/start.S:659
bfc008bc:	00084400 	sll	t0,t0,0x10
/home/csy/func/start.S:660
bfc008c0:	15090009 	bne	t0,t1,bfc008e8 <io_err>
/home/csy/func/start.S:661
bfc008c4:	00000000 	nop
/home/csy/func/start.S:663
bfc008c8:	3c085678 	lui	t0,0x5678
/home/csy/func/start.S:664
bfc008cc:	ac880000 	sw	t0,0(a0)
/home/csy/func/start.S:665
bfc008d0:	00084402 	srl	t0,t0,0x10
/home/csy/func/start.S:666
bfc008d4:	8c890000 	lw	t1,0(a0)
/home/csy/func/start.S:667
bfc008d8:	15090003 	bne	t0,t1,bfc008e8 <io_err>
/home/csy/func/start.S:668
bfc008dc:	00000000 	nop
/home/csy/func/start.S:669
bfc008e0:	10000003 	b	bfc008f0 <test_end>
/home/csy/func/start.S:670
bfc008e4:	00000000 	nop

bfc008e8 <io_err>:
/home/csy/func/start.S:672
bfc008e8:	26100001 	addiu	s0,s0,1
/home/csy/func/start.S:673
bfc008ec:	ae300000 	sw	s0,0(s1)

bfc008f0 <test_end>:
/home/csy/func/start.S:676
bfc008f0:	2410001a 	li	s0,26
/home/csy/func/start.S:677
bfc008f4:	1213000d 	beq	s0,s3,bfc0092c <test_end+0x3c>
/home/csy/func/start.S:678
bfc008f8:	00000000 	nop
/home/csy/func/start.S:680
bfc008fc:	3c04bfaf 	lui	a0,0xbfaf
bfc00900:	3484f000 	ori	a0,a0,0xf000
/home/csy/func/start.S:681
bfc00904:	3c05bfaf 	lui	a1,0xbfaf
bfc00908:	34a5f008 	ori	a1,a1,0xf008
/home/csy/func/start.S:682
bfc0090c:	3c06bfaf 	lui	a2,0xbfaf
bfc00910:	34c6f004 	ori	a2,a2,0xf004
/home/csy/func/start.S:684
bfc00914:	24090002 	li	t1,2
/home/csy/func/start.S:686
bfc00918:	ac800000 	sw	zero,0(a0)
/home/csy/func/start.S:687
bfc0091c:	aca90000 	sw	t1,0(a1)
/home/csy/func/start.S:688
bfc00920:	acc90000 	sw	t1,0(a2)
/home/csy/func/start.S:689
bfc00924:	10000008 	b	bfc00948 <test_end+0x58>
/home/csy/func/start.S:690
bfc00928:	00000000 	nop
/home/csy/func/start.S:692
bfc0092c:	24090001 	li	t1,1
/home/csy/func/start.S:693
bfc00930:	3c04bfaf 	lui	a0,0xbfaf
bfc00934:	3484f008 	ori	a0,a0,0xf008
/home/csy/func/start.S:694
bfc00938:	3c05bfaf 	lui	a1,0xbfaf
bfc0093c:	34a5f004 	ori	a1,a1,0xf004
/home/csy/func/start.S:695
bfc00940:	ac890000 	sw	t1,0(a0)
/home/csy/func/start.S:696
bfc00944:	aca90000 	sw	t1,0(a1)
/home/csy/func/start.S:699
bfc00948:	0ff00040 	jal	bfc00100 <test_finish>
/home/csy/func/start.S:700
bfc0094c:	00000000 	nop

bfc00950 <wait_1s>:
/home/csy/func/start.S:703
bfc00950:	3c08bfaf 	lui	t0,0xbfaf
bfc00954:	3508f02c 	ori	t0,t0,0xf02c
/home/csy/func/start.S:704
bfc00958:	3409aaaa 	li	t1,0xaaaa
/home/csy/func/start.S:707
bfc0095c:	8d0a0000 	lw	t2,0(t0)
/home/csy/func/start.S:708
bfc00960:	01495026 	xor	t2,t2,t1
/home/csy/func/start.S:709
bfc00964:	000a5a40 	sll	t3,t2,0x9
/home/csy/func/start.S:710
bfc00968:	256b0001 	addiu	t3,t3,1

bfc0096c <sub1>:
/home/csy/func/start.S:713
bfc0096c:	256bffff 	addiu	t3,t3,-1
/home/csy/func/start.S:716
bfc00970:	8d0a0000 	lw	t2,0(t0)
/home/csy/func/start.S:717
bfc00974:	01495026 	xor	t2,t2,t1
/home/csy/func/start.S:718
bfc00978:	000a5240 	sll	t2,t2,0x9
/home/csy/func/start.S:719
bfc0097c:	016a602b 	sltu	t4,t3,t2
/home/csy/func/start.S:720
bfc00980:	15800002 	bnez	t4,bfc0098c <sub1+0x20>
/home/csy/func/start.S:721
bfc00984:	00000000 	nop
/home/csy/func/start.S:722
bfc00988:	254b0000 	addiu	t3,t2,0
/home/csy/func/start.S:724
bfc0098c:	1560fff7 	bnez	t3,bfc0096c <sub1>
/home/csy/func/start.S:725
bfc00990:	00000000 	nop
/home/csy/func/start.S:726
bfc00994:	03e00008 	jr	ra
/home/csy/func/start.S:727
bfc00998:	00000000 	nop
sub1():
bfc0099c:	00000000 	nop

bfc009a0 <n72_lhu_adel_ex_test>:
/home/csy/func/inst/n72_lhu_adel_ex.S:7
bfc009a0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n72_lhu_adel_ex.S:8
bfc009a4:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n72_lhu_adel_ex.S:9
bfc009a8:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:10
bfc009ac:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:12
bfc009b0:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n72_lhu_adel_ex.S:13
bfc009b4:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n72_lhu_adel_ex.S:14
bfc009b8:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n72_lhu_adel_ex.S:15
bfc009bc:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:16
bfc009c0:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n72_lhu_adel_ex.S:19
bfc009c4:	3c028003 	lui	v0,0x8003
bfc009c8:	34420514 	ori	v0,v0,0x514
bfc009cc:	3c038003 	lui	v1,0x8003
bfc009d0:	34630514 	ori	v1,v1,0x514
bfc009d4:	3c04800d 	lui	a0,0x800d
bfc009d8:	34840514 	ori	a0,a0,0x514
bfc009dc:	3c050dc5 	lui	a1,0xdc5
bfc009e0:	34a5e542 	ori	a1,a1,0xe542
bfc009e4:	2487b239 	addiu	a3,a0,-19911
bfc009e8:	3c010001 	lui	at,0x1
bfc009ec:	00240821 	addu	at,at,a0
bfc009f0:	ac25b238 	sw	a1,-19912(at)
/home/csy/func/inst/n72_lhu_adel_ex.S:20
bfc009f4:	3c14bfc0 	lui	s4,0xbfc0
bfc009f8:	269409fc 	addiu	s4,s4,2556
/home/csy/func/inst/n72_lhu_adel_ex.S:21
bfc009fc:	9482b239 	lhu	v0,-19911(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:22
bfc00a00:	1657009f 	bne	s2,s7,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:23
bfc00a04:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:24
bfc00a08:	1443009d 	bne	v0,v1,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:25
bfc00a0c:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:26
bfc00a10:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:27
bfc00a14:	14f6009a 	bne	a3,s6,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:28
bfc00a18:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:30
bfc00a1c:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:31
bfc00a20:	3c028003 	lui	v0,0x8003
bfc00a24:	34422fbc 	ori	v0,v0,0x2fbc
bfc00a28:	3c038003 	lui	v1,0x8003
bfc00a2c:	34632fbc 	ori	v1,v1,0x2fbc
bfc00a30:	3c04800d 	lui	a0,0x800d
bfc00a34:	34842fbc 	ori	a0,a0,0x2fbc
bfc00a38:	3c05f781 	lui	a1,0xf781
bfc00a3c:	34a52ae2 	ori	a1,a1,0x2ae2
bfc00a40:	24879c35 	addiu	a3,a0,-25547
bfc00a44:	3c010001 	lui	at,0x1
bfc00a48:	00240821 	addu	at,at,a0
bfc00a4c:	ac259c34 	sw	a1,-25548(at)
/home/csy/func/inst/n72_lhu_adel_ex.S:32
bfc00a50:	3c14bfc0 	lui	s4,0xbfc0
bfc00a54:	26940a60 	addiu	s4,s4,2656
/home/csy/func/inst/n72_lhu_adel_ex.S:33
bfc00a58:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:34
bfc00a5c:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:35
bfc00a60:	94829c35 	lhu	v0,-25547(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:36
bfc00a64:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:37
bfc00a68:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:38
bfc00a6c:	15340084 	bne	t1,s4,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:39
bfc00a70:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:40
bfc00a74:	16570082 	bne	s2,s7,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:41
bfc00a78:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:42
bfc00a7c:	14430080 	bne	v0,v1,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:43
bfc00a80:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:44
bfc00a84:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:45
bfc00a88:	14f6007d 	bne	a3,s6,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:46
bfc00a8c:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:47
bfc00a90:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:48
bfc00a94:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n72_lhu_adel_ex.S:50
bfc00a98:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:51
bfc00a9c:	3c029134 	lui	v0,0x9134
bfc00aa0:	3442bbd0 	ori	v0,v0,0xbbd0
bfc00aa4:	3c039134 	lui	v1,0x9134
bfc00aa8:	3463bbd0 	ori	v1,v1,0xbbd0
bfc00aac:	3c04800d 	lui	a0,0x800d
bfc00ab0:	34847fa6 	ori	a0,a0,0x7fa6
bfc00ab4:	3c059ef6 	lui	a1,0x9ef6
bfc00ab8:	34a55910 	ori	a1,a1,0x5910
bfc00abc:	2487537f 	addiu	a3,a0,21375
bfc00ac0:	ac85537e 	sw	a1,21374(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:52
bfc00ac4:	3c14bfc0 	lui	s4,0xbfc0
bfc00ac8:	26940ad4 	addiu	s4,s4,2772
/home/csy/func/inst/n72_lhu_adel_ex.S:53
bfc00acc:	01000011 	mthi	t0
/home/csy/func/inst/n72_lhu_adel_ex.S:54
bfc00ad0:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n72_lhu_adel_ex.S:55
bfc00ad4:	9482537f 	lhu	v0,21375(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:56
bfc00ad8:	00004810 	mfhi	t1
/home/csy/func/inst/n72_lhu_adel_ex.S:57
bfc00adc:	11280068 	beq	t1,t0,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:58
bfc00ae0:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:59
bfc00ae4:	16570066 	bne	s2,s7,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:60
bfc00ae8:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:61
bfc00aec:	14430064 	bne	v0,v1,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:62
bfc00af0:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:63
bfc00af4:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:64
bfc00af8:	14f60061 	bne	a3,s6,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:65
bfc00afc:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:67
bfc00b00:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:68
bfc00b04:	3c02fe29 	lui	v0,0xfe29
bfc00b08:	3442b934 	ori	v0,v0,0xb934
bfc00b0c:	3c03fe29 	lui	v1,0xfe29
bfc00b10:	3463b934 	ori	v1,v1,0xb934
bfc00b14:	3c04800d 	lui	a0,0x800d
bfc00b18:	3484628c 	ori	a0,a0,0x628c
bfc00b1c:	3c05a15a 	lui	a1,0xa15a
bfc00b20:	34a50146 	ori	a1,a1,0x146
bfc00b24:	248756cf 	addiu	a3,a0,22223
bfc00b28:	ac8556cc 	sw	a1,22220(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:69
bfc00b2c:	3c14bfc0 	lui	s4,0xbfc0
bfc00b30:	26940b34 	addiu	s4,s4,2868
/home/csy/func/inst/n72_lhu_adel_ex.S:70
bfc00b34:	948256cf 	lhu	v0,22223(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:71
bfc00b38:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n72_lhu_adel_ex.S:72
bfc00b3c:	16570050 	bne	s2,s7,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:73
bfc00b40:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:74
bfc00b44:	1443004e 	bne	v0,v1,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:75
bfc00b48:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:76
bfc00b4c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:77
bfc00b50:	14f6004b 	bne	a3,s6,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:78
bfc00b54:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:80
bfc00b58:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:81
bfc00b5c:	3c028003 	lui	v0,0x8003
bfc00b60:	344224b4 	ori	v0,v0,0x24b4
bfc00b64:	3c038003 	lui	v1,0x8003
bfc00b68:	346324b4 	ori	v1,v1,0x24b4
bfc00b6c:	3c04800d 	lui	a0,0x800d
bfc00b70:	348424b4 	ori	a0,a0,0x24b4
bfc00b74:	3c05566d 	lui	a1,0x566d
bfc00b78:	34a5adc2 	ori	a1,a1,0xadc2
bfc00b7c:	2487d5c3 	addiu	a3,a0,-10813
bfc00b80:	3c010001 	lui	at,0x1
bfc00b84:	00240821 	addu	at,at,a0
bfc00b88:	ac25d5c0 	sw	a1,-10816(at)
/home/csy/func/inst/n72_lhu_adel_ex.S:82
bfc00b8c:	3c14bfc0 	lui	s4,0xbfc0
bfc00b90:	26940b9c 	addiu	s4,s4,2972
/home/csy/func/inst/n72_lhu_adel_ex.S:83
bfc00b94:	01000013 	mtlo	t0
/home/csy/func/inst/n72_lhu_adel_ex.S:84
bfc00b98:	01100019 	multu	t0,s0
/home/csy/func/inst/n72_lhu_adel_ex.S:85
bfc00b9c:	9482d5c3 	lhu	v0,-10813(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:86
bfc00ba0:	00004810 	mfhi	t1
/home/csy/func/inst/n72_lhu_adel_ex.S:87
bfc00ba4:	11280036 	beq	t1,t0,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:88
bfc00ba8:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:89
bfc00bac:	16570034 	bne	s2,s7,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:90
bfc00bb0:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:91
bfc00bb4:	14430032 	bne	v0,v1,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:92
bfc00bb8:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:93
bfc00bbc:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:94
bfc00bc0:	14f6002f 	bne	a3,s6,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:95
bfc00bc4:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:97
bfc00bc8:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:98
bfc00bcc:	3c0252b9 	lui	v0,0x52b9
bfc00bd0:	3442c98a 	ori	v0,v0,0xc98a
bfc00bd4:	3c0352b9 	lui	v1,0x52b9
bfc00bd8:	3463c98a 	ori	v1,v1,0xc98a
bfc00bdc:	3c04800d 	lui	a0,0x800d
bfc00be0:	34846024 	ori	a0,a0,0x6024
bfc00be4:	3c05038f 	lui	a1,0x38f
bfc00be8:	34a518a2 	ori	a1,a1,0x18a2
bfc00bec:	24870765 	addiu	a3,a0,1893
bfc00bf0:	ac850764 	sw	a1,1892(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:99
bfc00bf4:	3c14bfc0 	lui	s4,0xbfc0
bfc00bf8:	26940bfc 	addiu	s4,s4,3068
/home/csy/func/inst/n72_lhu_adel_ex.S:100
bfc00bfc:	94820765 	lhu	v0,1893(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:101
bfc00c00:	01120019 	multu	t0,s2
/home/csy/func/inst/n72_lhu_adel_ex.S:102
bfc00c04:	1657001e 	bne	s2,s7,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:103
bfc00c08:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:104
bfc00c0c:	1443001c 	bne	v0,v1,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:105
bfc00c10:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:106
bfc00c14:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:107
bfc00c18:	14f60019 	bne	a3,s6,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:108
bfc00c1c:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:110
bfc00c20:	24120004 	li	s2,4
/home/csy/func/inst/n72_lhu_adel_ex.S:111
bfc00c24:	3c022b77 	lui	v0,0x2b77
bfc00c28:	34421238 	ori	v0,v0,0x1238
bfc00c2c:	3c032b77 	lui	v1,0x2b77
bfc00c30:	34631238 	ori	v1,v1,0x1238
bfc00c34:	3c04800d 	lui	a0,0x800d
bfc00c38:	34848294 	ori	a0,a0,0x8294
bfc00c3c:	3c05cd7a 	lui	a1,0xcd7a
bfc00c40:	34a5b654 	ori	a1,a1,0xb654
bfc00c44:	248779f5 	addiu	a3,a0,31221
bfc00c48:	ac8579f4 	sw	a1,31220(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:112
bfc00c4c:	3c14bfc0 	lui	s4,0xbfc0
bfc00c50:	26940c58 	addiu	s4,s4,3160
/home/csy/func/inst/n72_lhu_adel_ex.S:113
bfc00c54:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n72_lhu_adel_ex.S:114
bfc00c58:	948279f5 	lhu	v0,31221(a0)
/home/csy/func/inst/n72_lhu_adel_ex.S:115
bfc00c5c:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n72_lhu_adel_ex.S:116
bfc00c60:	16570007 	bne	s2,s7,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:117
bfc00c64:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:118
bfc00c68:	14430005 	bne	v0,v1,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:119
bfc00c6c:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:120
bfc00c70:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n72_lhu_adel_ex.S:121
bfc00c74:	14f60002 	bne	a3,s6,bfc00c80 <inst_error>
/home/csy/func/inst/n72_lhu_adel_ex.S:122
bfc00c78:	00000000 	nop
/home/csy/func/inst/n72_lhu_adel_ex.S:124
bfc00c7c:	26730001 	addiu	s3,s3,1

bfc00c80 <inst_error>:
/home/csy/func/inst/n72_lhu_adel_ex.S:127
bfc00c80:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n72_lhu_adel_ex.S:128
bfc00c84:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n72_lhu_adel_ex.S:129
bfc00c88:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n72_lhu_adel_ex.S:130
bfc00c8c:	03e00008 	jr	ra
/home/csy/func/inst/n72_lhu_adel_ex.S:131
bfc00c90:	00000000 	nop
	...

bfc00ca0 <n73_sw_ades_ex_test>:
/home/csy/func/inst/n73_sw_ades_ex.S:7
bfc00ca0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n73_sw_ades_ex.S:8
bfc00ca4:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n73_sw_ades_ex.S:9
bfc00ca8:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:10
bfc00cac:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:12
bfc00cb0:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n73_sw_ades_ex.S:13
bfc00cb4:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n73_sw_ades_ex.S:14
bfc00cb8:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n73_sw_ades_ex.S:15
bfc00cbc:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:16
bfc00cc0:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n73_sw_ades_ex.S:19
bfc00cc4:	3c02b189 	lui	v0,0xb189
bfc00cc8:	3442c470 	ori	v0,v0,0xc470
bfc00ccc:	3c03b189 	lui	v1,0xb189
bfc00cd0:	3463c470 	ori	v1,v1,0xc470
bfc00cd4:	3c04800d 	lui	a0,0x800d
bfc00cd8:	34847bd1 	ori	a0,a0,0x7bd1
bfc00cdc:	3c05b189 	lui	a1,0xb189
bfc00ce0:	34a5c470 	ori	a1,a1,0xc470
bfc00ce4:	24877974 	addiu	a3,a0,31092
bfc00ce8:	ac827973 	sw	v0,31091(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:20
bfc00cec:	3c14bfc0 	lui	s4,0xbfc0
bfc00cf0:	26940cf4 	addiu	s4,s4,3316
/home/csy/func/inst/n73_sw_ades_ex.S:21
bfc00cf4:	ac857974 	sw	a1,31092(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:22
bfc00cf8:	165700a2 	bne	s2,s7,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:23
bfc00cfc:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:24
bfc00d00:	8c827973 	lw	v0,31091(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:25
bfc00d04:	1443009f 	bne	v0,v1,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:26
bfc00d08:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:27
bfc00d0c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:28
bfc00d10:	14f6009c 	bne	a3,s6,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:29
bfc00d14:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:31
bfc00d18:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:32
bfc00d1c:	3c02c052 	lui	v0,0xc052
bfc00d20:	3442b3f0 	ori	v0,v0,0xb3f0
bfc00d24:	3c03c052 	lui	v1,0xc052
bfc00d28:	3463b3f0 	ori	v1,v1,0xb3f0
bfc00d2c:	3c04800d 	lui	a0,0x800d
bfc00d30:	348423d4 	ori	a0,a0,0x23d4
bfc00d34:	3c05c052 	lui	a1,0xc052
bfc00d38:	34a5b3f0 	ori	a1,a1,0xb3f0
bfc00d3c:	248764a2 	addiu	a3,a0,25762
bfc00d40:	ac8264a0 	sw	v0,25760(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:33
bfc00d44:	3c14bfc0 	lui	s4,0xbfc0
bfc00d48:	26940d54 	addiu	s4,s4,3412
/home/csy/func/inst/n73_sw_ades_ex.S:34
bfc00d4c:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:35
bfc00d50:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:36
bfc00d54:	ac8564a2 	sw	a1,25762(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:37
bfc00d58:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:38
bfc00d5c:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:39
bfc00d60:	15340088 	bne	t1,s4,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:40
bfc00d64:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:41
bfc00d68:	16570086 	bne	s2,s7,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:42
bfc00d6c:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:43
bfc00d70:	8c8264a0 	lw	v0,25760(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:44
bfc00d74:	14430083 	bne	v0,v1,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:45
bfc00d78:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:46
bfc00d7c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:47
bfc00d80:	14f60080 	bne	a3,s6,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:48
bfc00d84:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:49
bfc00d88:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:50
bfc00d8c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n73_sw_ades_ex.S:52
bfc00d90:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:53
bfc00d94:	3c02a10f 	lui	v0,0xa10f
bfc00d98:	3442ebaf 	ori	v0,v0,0xebaf
bfc00d9c:	3c03a10f 	lui	v1,0xa10f
bfc00da0:	3463ebaf 	ori	v1,v1,0xebaf
bfc00da4:	3c04800d 	lui	a0,0x800d
bfc00da8:	34848850 	ori	a0,a0,0x8850
bfc00dac:	3c05994c 	lui	a1,0x994c
bfc00db0:	34a50280 	ori	a1,a1,0x280
bfc00db4:	2487418b 	addiu	a3,a0,16779
bfc00db8:	ac824188 	sw	v0,16776(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:54
bfc00dbc:	3c14bfc0 	lui	s4,0xbfc0
bfc00dc0:	26940dcc 	addiu	s4,s4,3532
/home/csy/func/inst/n73_sw_ades_ex.S:55
bfc00dc4:	01000011 	mthi	t0
/home/csy/func/inst/n73_sw_ades_ex.S:56
bfc00dc8:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n73_sw_ades_ex.S:57
bfc00dcc:	ac85418b 	sw	a1,16779(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:58
bfc00dd0:	00004810 	mfhi	t1
/home/csy/func/inst/n73_sw_ades_ex.S:59
bfc00dd4:	1128006b 	beq	t1,t0,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:60
bfc00dd8:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:61
bfc00ddc:	16570069 	bne	s2,s7,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:62
bfc00de0:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:63
bfc00de4:	8c824188 	lw	v0,16776(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:64
bfc00de8:	14430066 	bne	v0,v1,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:65
bfc00dec:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:66
bfc00df0:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:67
bfc00df4:	14f60063 	bne	a3,s6,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:68
bfc00df8:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:70
bfc00dfc:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:71
bfc00e00:	3c02eb54 	lui	v0,0xeb54
bfc00e04:	3442b87c 	ori	v0,v0,0xb87c
bfc00e08:	3c03eb54 	lui	v1,0xeb54
bfc00e0c:	3463b87c 	ori	v1,v1,0xb87c
bfc00e10:	3c04800d 	lui	a0,0x800d
bfc00e14:	3484a256 	ori	a0,a0,0xa256
bfc00e18:	3c05eb54 	lui	a1,0xeb54
bfc00e1c:	34a5b87c 	ori	a1,a1,0xb87c
bfc00e20:	248700c3 	addiu	a3,a0,195
bfc00e24:	ac8200c2 	sw	v0,194(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:72
bfc00e28:	3c14bfc0 	lui	s4,0xbfc0
bfc00e2c:	26940e30 	addiu	s4,s4,3632
/home/csy/func/inst/n73_sw_ades_ex.S:73
bfc00e30:	ac8500c3 	sw	a1,195(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:74
bfc00e34:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n73_sw_ades_ex.S:75
bfc00e38:	16570052 	bne	s2,s7,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:76
bfc00e3c:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:77
bfc00e40:	8c8200c2 	lw	v0,194(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:78
bfc00e44:	1443004f 	bne	v0,v1,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:79
bfc00e48:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:80
bfc00e4c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:81
bfc00e50:	14f6004c 	bne	a3,s6,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:82
bfc00e54:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:84
bfc00e58:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:85
bfc00e5c:	3c028003 	lui	v0,0x8003
bfc00e60:	34422066 	ori	v0,v0,0x2066
bfc00e64:	3c038003 	lui	v1,0x8003
bfc00e68:	34632066 	ori	v1,v1,0x2066
bfc00e6c:	3c04800d 	lui	a0,0x800d
bfc00e70:	3484206c 	ori	a0,a0,0x206c
bfc00e74:	3c05ebdc 	lui	a1,0xebdc
bfc00e78:	34a58860 	ori	a1,a1,0x8860
bfc00e7c:	2487ccc2 	addiu	a3,a0,-13118
bfc00e80:	ac82ccc0 	sw	v0,-13120(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:86
bfc00e84:	3c14bfc0 	lui	s4,0xbfc0
bfc00e88:	26940e94 	addiu	s4,s4,3732
/home/csy/func/inst/n73_sw_ades_ex.S:87
bfc00e8c:	01000013 	mtlo	t0
/home/csy/func/inst/n73_sw_ades_ex.S:88
bfc00e90:	01100019 	multu	t0,s0
/home/csy/func/inst/n73_sw_ades_ex.S:89
bfc00e94:	ac85ccc2 	sw	a1,-13118(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:90
bfc00e98:	00004810 	mfhi	t1
/home/csy/func/inst/n73_sw_ades_ex.S:91
bfc00e9c:	11280039 	beq	t1,t0,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:92
bfc00ea0:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:93
bfc00ea4:	16570037 	bne	s2,s7,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:94
bfc00ea8:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:95
bfc00eac:	8c82ccc0 	lw	v0,-13120(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:96
bfc00eb0:	14430034 	bne	v0,v1,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:97
bfc00eb4:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:98
bfc00eb8:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:99
bfc00ebc:	14f60031 	bne	a3,s6,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:100
bfc00ec0:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:102
bfc00ec4:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:103
bfc00ec8:	3c026348 	lui	v0,0x6348
bfc00ecc:	344258c8 	ori	v0,v0,0x58c8
bfc00ed0:	3c036348 	lui	v1,0x6348
bfc00ed4:	346358c8 	ori	v1,v1,0x58c8
bfc00ed8:	3c04800d 	lui	a0,0x800d
bfc00edc:	348482d8 	ori	a0,a0,0x82d8
bfc00ee0:	3c050c41 	lui	a1,0xc41
bfc00ee4:	34a5f5e8 	ori	a1,a1,0xf5e8
bfc00ee8:	24878889 	addiu	a3,a0,-30583
bfc00eec:	ac828888 	sw	v0,-30584(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:104
bfc00ef0:	3c14bfc0 	lui	s4,0xbfc0
bfc00ef4:	26940ef8 	addiu	s4,s4,3832
/home/csy/func/inst/n73_sw_ades_ex.S:105
bfc00ef8:	ac858889 	sw	a1,-30583(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:106
bfc00efc:	01120019 	multu	t0,s2
/home/csy/func/inst/n73_sw_ades_ex.S:107
bfc00f00:	16570020 	bne	s2,s7,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:108
bfc00f04:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:109
bfc00f08:	8c828888 	lw	v0,-30584(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:110
bfc00f0c:	1443001d 	bne	v0,v1,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:111
bfc00f10:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:112
bfc00f14:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:113
bfc00f18:	14f6001a 	bne	a3,s6,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:114
bfc00f1c:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:116
bfc00f20:	24120005 	li	s2,5
/home/csy/func/inst/n73_sw_ades_ex.S:117
bfc00f24:	3c028003 	lui	v0,0x8003
bfc00f28:	34421751 	ori	v0,v0,0x1751
bfc00f2c:	3c038003 	lui	v1,0x8003
bfc00f30:	34631751 	ori	v1,v1,0x1751
bfc00f34:	3c04800d 	lui	a0,0x800d
bfc00f38:	34841750 	ori	a0,a0,0x1750
bfc00f3c:	3c05cb09 	lui	a1,0xcb09
bfc00f40:	34a5da60 	ori	a1,a1,0xda60
bfc00f44:	24879b27 	addiu	a3,a0,-25817
bfc00f48:	ac829b24 	sw	v0,-25820(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:118
bfc00f4c:	3c14bfc0 	lui	s4,0xbfc0
bfc00f50:	26940f58 	addiu	s4,s4,3928
/home/csy/func/inst/n73_sw_ades_ex.S:119
bfc00f54:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n73_sw_ades_ex.S:120
bfc00f58:	ac859b27 	sw	a1,-25817(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:121
bfc00f5c:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n73_sw_ades_ex.S:122
bfc00f60:	16570008 	bne	s2,s7,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:123
bfc00f64:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:124
bfc00f68:	8c829b24 	lw	v0,-25820(a0)
/home/csy/func/inst/n73_sw_ades_ex.S:125
bfc00f6c:	14430005 	bne	v0,v1,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:126
bfc00f70:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:127
bfc00f74:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n73_sw_ades_ex.S:128
bfc00f78:	14f60002 	bne	a3,s6,bfc00f84 <inst_error>
/home/csy/func/inst/n73_sw_ades_ex.S:129
bfc00f7c:	00000000 	nop
/home/csy/func/inst/n73_sw_ades_ex.S:131
bfc00f80:	26730001 	addiu	s3,s3,1

bfc00f84 <inst_error>:
/home/csy/func/inst/n73_sw_ades_ex.S:134
bfc00f84:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n73_sw_ades_ex.S:135
bfc00f88:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n73_sw_ades_ex.S:136
bfc00f8c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n73_sw_ades_ex.S:137
bfc00f90:	03e00008 	jr	ra
/home/csy/func/inst/n73_sw_ades_ex.S:138
bfc00f94:	00000000 	nop
	...

bfc00fa0 <n67_add_ov_ex_test>:
/home/csy/func/inst/n67_add_ov_ex.S:7
bfc00fa0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n67_add_ov_ex.S:8
bfc00fa4:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n67_add_ov_ex.S:9
bfc00fa8:	24120003 	li	s2,3
/home/csy/func/inst/n67_add_ov_ex.S:10
bfc00fac:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n67_add_ov_ex.S:12
bfc00fb0:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n67_add_ov_ex.S:13
bfc00fb4:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n67_add_ov_ex.S:14
bfc00fb8:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n67_add_ov_ex.S:15
bfc00fbc:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:16
bfc00fc0:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n67_add_ov_ex.S:19
bfc00fc4:	3c0273b2 	lui	v0,0x73b2
bfc00fc8:	3442cf92 	ori	v0,v0,0xcf92
bfc00fcc:	3c0373b2 	lui	v1,0x73b2
bfc00fd0:	3463cf92 	ori	v1,v1,0xcf92
bfc00fd4:	3c0490a5 	lui	a0,0x90a5
bfc00fd8:	3484f39c 	ori	a0,a0,0xf39c
bfc00fdc:	3c05d421 	lui	a1,0xd421
bfc00fe0:	34a579e0 	ori	a1,a1,0x79e0
/home/csy/func/inst/n67_add_ov_ex.S:20
bfc00fe4:	3c14bfc0 	lui	s4,0xbfc0
bfc00fe8:	26940fec 	addiu	s4,s4,4076
/home/csy/func/inst/n67_add_ov_ex.S:21
bfc00fec:	00851020 	add	v0,a0,a1
/home/csy/func/inst/n67_add_ov_ex.S:22
bfc00ff0:	1657007a 	bne	s2,s7,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:23
bfc00ff4:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:24
bfc00ff8:	14430078 	bne	v0,v1,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:25
bfc00ffc:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:27
bfc01000:	24120003 	li	s2,3
/home/csy/func/inst/n67_add_ov_ex.S:28
bfc01004:	3c021a37 	lui	v0,0x1a37
bfc01008:	34426500 	ori	v0,v0,0x6500
bfc0100c:	3c031a37 	lui	v1,0x1a37
bfc01010:	34636500 	ori	v1,v1,0x6500
bfc01014:	3c042a3c 	lui	a0,0x2a3c
bfc01018:	3484a166 	ori	a0,a0,0xa166
bfc0101c:	3c05797f 	lui	a1,0x797f
bfc01020:	34a530b9 	ori	a1,a1,0x30b9
/home/csy/func/inst/n67_add_ov_ex.S:29
bfc01024:	3c14bfc0 	lui	s4,0xbfc0
bfc01028:	26941034 	addiu	s4,s4,4148
/home/csy/func/inst/n67_add_ov_ex.S:30
bfc0102c:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n67_add_ov_ex.S:31
bfc01030:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n67_add_ov_ex.S:32
bfc01034:	00851020 	add	v0,a0,a1
/home/csy/func/inst/n67_add_ov_ex.S:33
bfc01038:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n67_add_ov_ex.S:34
bfc0103c:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n67_add_ov_ex.S:35
bfc01040:	15340066 	bne	t1,s4,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:36
bfc01044:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:37
bfc01048:	16570064 	bne	s2,s7,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:38
bfc0104c:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:39
bfc01050:	14430062 	bne	v0,v1,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:40
bfc01054:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:41
bfc01058:	24120003 	li	s2,3
/home/csy/func/inst/n67_add_ov_ex.S:42
bfc0105c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n67_add_ov_ex.S:44
bfc01060:	24120003 	li	s2,3
/home/csy/func/inst/n67_add_ov_ex.S:45
bfc01064:	3c14bfc0 	lui	s4,0xbfc0
bfc01068:	26941094 	addiu	s4,s4,4244
/home/csy/func/inst/n67_add_ov_ex.S:46
bfc0106c:	01000011 	mthi	t0
/home/csy/func/inst/n67_add_ov_ex.S:47
bfc01070:	3c0257b9 	lui	v0,0x57b9
bfc01074:	3442e040 	ori	v0,v0,0xe040
bfc01078:	3c0357b9 	lui	v1,0x57b9
bfc0107c:	3463e040 	ori	v1,v1,0xe040
bfc01080:	3c048054 	lui	a0,0x8054
bfc01084:	348413c0 	ori	a0,a0,0x13c0
bfc01088:	3c05dea0 	lui	a1,0xdea0
bfc0108c:	34a5e60a 	ori	a1,a1,0xe60a
/home/csy/func/inst/n67_add_ov_ex.S:48
bfc01090:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n67_add_ov_ex.S:49
bfc01094:	00851020 	add	v0,a0,a1
/home/csy/func/inst/n67_add_ov_ex.S:50
bfc01098:	00004810 	mfhi	t1
/home/csy/func/inst/n67_add_ov_ex.S:51
bfc0109c:	1128004f 	beq	t1,t0,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:52
bfc010a0:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:53
bfc010a4:	1657004d 	bne	s2,s7,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:54
bfc010a8:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:55
bfc010ac:	1443004b 	bne	v0,v1,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:56
bfc010b0:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:58
bfc010b4:	24120003 	li	s2,3
/home/csy/func/inst/n67_add_ov_ex.S:59
bfc010b8:	3c0289a0 	lui	v0,0x89a0
bfc010bc:	3442a980 	ori	v0,v0,0xa980
bfc010c0:	3c0389a0 	lui	v1,0x89a0
bfc010c4:	3463a980 	ori	v1,v1,0xa980
bfc010c8:	3c04474d 	lui	a0,0x474d
bfc010cc:	3484b690 	ori	a0,a0,0xb690
bfc010d0:	3c054d4c 	lui	a1,0x4d4c
bfc010d4:	34a5bef8 	ori	a1,a1,0xbef8
/home/csy/func/inst/n67_add_ov_ex.S:60
bfc010d8:	3c14bfc0 	lui	s4,0xbfc0
bfc010dc:	269410e0 	addiu	s4,s4,4320
/home/csy/func/inst/n67_add_ov_ex.S:61
bfc010e0:	00851020 	add	v0,a0,a1
/home/csy/func/inst/n67_add_ov_ex.S:62
bfc010e4:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n67_add_ov_ex.S:63
bfc010e8:	1657003c 	bne	s2,s7,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:64
bfc010ec:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:65
bfc010f0:	1443003a 	bne	v0,v1,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:66
bfc010f4:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:68
bfc010f8:	24120003 	li	s2,3
/home/csy/func/inst/n67_add_ov_ex.S:69
bfc010fc:	3c020f29 	lui	v0,0xf29
bfc01100:	3442c5e0 	ori	v0,v0,0xc5e0
bfc01104:	3c030f29 	lui	v1,0xf29
bfc01108:	3463c5e0 	ori	v1,v1,0xc5e0
bfc0110c:	3c046818 	lui	a0,0x6818
bfc01110:	3484e272 	ori	a0,a0,0xe272
bfc01114:	3c056f6d 	lui	a1,0x6f6d
bfc01118:	34a52620 	ori	a1,a1,0x2620
/home/csy/func/inst/n67_add_ov_ex.S:70
bfc0111c:	3c14bfc0 	lui	s4,0xbfc0
bfc01120:	2694112c 	addiu	s4,s4,4396
/home/csy/func/inst/n67_add_ov_ex.S:71
bfc01124:	01000013 	mtlo	t0
/home/csy/func/inst/n67_add_ov_ex.S:72
bfc01128:	01100019 	multu	t0,s0
/home/csy/func/inst/n67_add_ov_ex.S:73
bfc0112c:	00851020 	add	v0,a0,a1
/home/csy/func/inst/n67_add_ov_ex.S:74
bfc01130:	00004810 	mfhi	t1
/home/csy/func/inst/n67_add_ov_ex.S:75
bfc01134:	11280029 	beq	t1,t0,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:76
bfc01138:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:77
bfc0113c:	16570027 	bne	s2,s7,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:78
bfc01140:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:79
bfc01144:	14430025 	bne	v0,v1,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:80
bfc01148:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:82
bfc0114c:	24120003 	li	s2,3
/home/csy/func/inst/n67_add_ov_ex.S:83
bfc01150:	3c029f1c 	lui	v0,0x9f1c
bfc01154:	34425870 	ori	v0,v0,0x5870
bfc01158:	3c039f1c 	lui	v1,0x9f1c
bfc0115c:	34635870 	ori	v1,v1,0x5870
bfc01160:	3c04a7b7 	lui	a0,0xa7b7
bfc01164:	3484a764 	ori	a0,a0,0xa764
bfc01168:	3c05c2d6 	lui	a1,0xc2d6
bfc0116c:	34a51d9c 	ori	a1,a1,0x1d9c
/home/csy/func/inst/n67_add_ov_ex.S:84
bfc01170:	3c14bfc0 	lui	s4,0xbfc0
bfc01174:	26941178 	addiu	s4,s4,4472
/home/csy/func/inst/n67_add_ov_ex.S:85
bfc01178:	00851020 	add	v0,a0,a1
/home/csy/func/inst/n67_add_ov_ex.S:86
bfc0117c:	01120019 	multu	t0,s2
/home/csy/func/inst/n67_add_ov_ex.S:87
bfc01180:	16570016 	bne	s2,s7,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:88
bfc01184:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:89
bfc01188:	14430014 	bne	v0,v1,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:90
bfc0118c:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:92
bfc01190:	24120003 	li	s2,3
/home/csy/func/inst/n67_add_ov_ex.S:93
bfc01194:	3c0231e6 	lui	v0,0x31e6
bfc01198:	3442699f 	ori	v0,v0,0x699f
bfc0119c:	3c0331e6 	lui	v1,0x31e6
bfc011a0:	3463699f 	ori	v1,v1,0x699f
bfc011a4:	3c048a78 	lui	a0,0x8a78
bfc011a8:	3484cc40 	ori	a0,a0,0xcc40
bfc011ac:	3c05ab72 	lui	a1,0xab72
bfc011b0:	34a584da 	ori	a1,a1,0x84da
/home/csy/func/inst/n67_add_ov_ex.S:94
bfc011b4:	3c14bfc0 	lui	s4,0xbfc0
bfc011b8:	269411c0 	addiu	s4,s4,4544
/home/csy/func/inst/n67_add_ov_ex.S:95
bfc011bc:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n67_add_ov_ex.S:96
bfc011c0:	00851020 	add	v0,a0,a1
/home/csy/func/inst/n67_add_ov_ex.S:97
bfc011c4:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n67_add_ov_ex.S:98
bfc011c8:	16570004 	bne	s2,s7,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:99
bfc011cc:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:100
bfc011d0:	14430002 	bne	v0,v1,bfc011dc <inst_error>
/home/csy/func/inst/n67_add_ov_ex.S:101
bfc011d4:	00000000 	nop
/home/csy/func/inst/n67_add_ov_ex.S:103
bfc011d8:	26730001 	addiu	s3,s3,1

bfc011dc <inst_error>:
/home/csy/func/inst/n67_add_ov_ex.S:106
bfc011dc:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n67_add_ov_ex.S:107
bfc011e0:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n67_add_ov_ex.S:108
bfc011e4:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n67_add_ov_ex.S:109
bfc011e8:	03e00008 	jr	ra
/home/csy/func/inst/n67_add_ov_ex.S:110
bfc011ec:	00000000 	nop

bfc011f0 <n68_addi_ov_ex_test>:
/home/csy/func/inst/n68_addi_ov_ex.S:7
bfc011f0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n68_addi_ov_ex.S:8
bfc011f4:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n68_addi_ov_ex.S:9
bfc011f8:	24120003 	li	s2,3
/home/csy/func/inst/n68_addi_ov_ex.S:10
bfc011fc:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n68_addi_ov_ex.S:12
bfc01200:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n68_addi_ov_ex.S:13
bfc01204:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n68_addi_ov_ex.S:14
bfc01208:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n68_addi_ov_ex.S:15
bfc0120c:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:16
bfc01210:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n68_addi_ov_ex.S:19
bfc01214:	3c02deb0 	lui	v0,0xdeb0
bfc01218:	34426fd0 	ori	v0,v0,0x6fd0
bfc0121c:	3c03deb0 	lui	v1,0xdeb0
bfc01220:	34636fd0 	ori	v1,v1,0x6fd0
bfc01224:	24042c26 	li	a0,11302
bfc01228:	3c047fff 	lui	a0,0x7fff
bfc0122c:	3484f84b 	ori	a0,a0,0xf84b
/home/csy/func/inst/n68_addi_ov_ex.S:20
bfc01230:	3c14bfc0 	lui	s4,0xbfc0
bfc01234:	26941238 	addiu	s4,s4,4664
/home/csy/func/inst/n68_addi_ov_ex.S:21
bfc01238:	20822c26 	addi	v0,a0,11302
/home/csy/func/inst/n68_addi_ov_ex.S:22
bfc0123c:	16570072 	bne	s2,s7,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:23
bfc01240:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:25
bfc01244:	24120003 	li	s2,3
/home/csy/func/inst/n68_addi_ov_ex.S:26
bfc01248:	3c026c53 	lui	v0,0x6c53
bfc0124c:	344292aa 	ori	v0,v0,0x92aa
bfc01250:	3c036c53 	lui	v1,0x6c53
bfc01254:	346392aa 	ori	v1,v1,0x92aa
bfc01258:	240454b0 	li	a0,21680
bfc0125c:	3c047fff 	lui	a0,0x7fff
bfc01260:	3484f480 	ori	a0,a0,0xf480
/home/csy/func/inst/n68_addi_ov_ex.S:27
bfc01264:	3c14bfc0 	lui	s4,0xbfc0
bfc01268:	26941274 	addiu	s4,s4,4724
/home/csy/func/inst/n68_addi_ov_ex.S:28
bfc0126c:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n68_addi_ov_ex.S:29
bfc01270:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n68_addi_ov_ex.S:30
bfc01274:	208254b0 	addi	v0,a0,21680
/home/csy/func/inst/n68_addi_ov_ex.S:31
bfc01278:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n68_addi_ov_ex.S:32
bfc0127c:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n68_addi_ov_ex.S:33
bfc01280:	15340061 	bne	t1,s4,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:34
bfc01284:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:35
bfc01288:	1657005f 	bne	s2,s7,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:36
bfc0128c:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:37
bfc01290:	1443005d 	bne	v0,v1,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:38
bfc01294:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:39
bfc01298:	24120003 	li	s2,3
/home/csy/func/inst/n68_addi_ov_ex.S:40
bfc0129c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n68_addi_ov_ex.S:42
bfc012a0:	24120003 	li	s2,3
/home/csy/func/inst/n68_addi_ov_ex.S:43
bfc012a4:	3c0260a7 	lui	v0,0x60a7
bfc012a8:	34421e30 	ori	v0,v0,0x1e30
bfc012ac:	3c0360a7 	lui	v1,0x60a7
bfc012b0:	34631e30 	ori	v1,v1,0x1e30
bfc012b4:	240471db 	li	a0,29147
bfc012b8:	3c047fff 	lui	a0,0x7fff
bfc012bc:	34849b21 	ori	a0,a0,0x9b21
/home/csy/func/inst/n68_addi_ov_ex.S:44
bfc012c0:	3c14bfc0 	lui	s4,0xbfc0
bfc012c4:	269412d0 	addiu	s4,s4,4816
/home/csy/func/inst/n68_addi_ov_ex.S:45
bfc012c8:	01000011 	mthi	t0
/home/csy/func/inst/n68_addi_ov_ex.S:46
bfc012cc:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n68_addi_ov_ex.S:47
bfc012d0:	208271db 	addi	v0,a0,29147
/home/csy/func/inst/n68_addi_ov_ex.S:48
bfc012d4:	00004810 	mfhi	t1
/home/csy/func/inst/n68_addi_ov_ex.S:49
bfc012d8:	1128004b 	beq	t1,t0,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:50
bfc012dc:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:51
bfc012e0:	16570049 	bne	s2,s7,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:52
bfc012e4:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:53
bfc012e8:	14430047 	bne	v0,v1,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:54
bfc012ec:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:56
bfc012f0:	24120003 	li	s2,3
/home/csy/func/inst/n68_addi_ov_ex.S:57
bfc012f4:	3c02e607 	lui	v0,0xe607
bfc012f8:	34425700 	ori	v0,v0,0x5700
bfc012fc:	3c03e607 	lui	v1,0xe607
bfc01300:	34635700 	ori	v1,v1,0x5700
bfc01304:	3404be07 	li	a0,0xbe07
bfc01308:	3c048000 	lui	a0,0x8000
bfc0130c:	34843a57 	ori	a0,a0,0x3a57
/home/csy/func/inst/n68_addi_ov_ex.S:58
bfc01310:	3c14bfc0 	lui	s4,0xbfc0
bfc01314:	26941318 	addiu	s4,s4,4888
/home/csy/func/inst/n68_addi_ov_ex.S:59
bfc01318:	2082be07 	addi	v0,a0,-16889
/home/csy/func/inst/n68_addi_ov_ex.S:60
bfc0131c:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n68_addi_ov_ex.S:61
bfc01320:	16570039 	bne	s2,s7,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:62
bfc01324:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:63
bfc01328:	14430037 	bne	v0,v1,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:64
bfc0132c:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:66
bfc01330:	24120003 	li	s2,3
/home/csy/func/inst/n68_addi_ov_ex.S:67
bfc01334:	3c028f7e 	lui	v0,0x8f7e
bfc01338:	3442e6c0 	ori	v0,v0,0xe6c0
bfc0133c:	3c038f7e 	lui	v1,0x8f7e
bfc01340:	3463e6c0 	ori	v1,v1,0xe6c0
bfc01344:	3404845d 	li	a0,0x845d
bfc01348:	3c048000 	lui	a0,0x8000
bfc0134c:	34842c93 	ori	a0,a0,0x2c93
/home/csy/func/inst/n68_addi_ov_ex.S:68
bfc01350:	3c14bfc0 	lui	s4,0xbfc0
bfc01354:	26941360 	addiu	s4,s4,4960
/home/csy/func/inst/n68_addi_ov_ex.S:69
bfc01358:	01000013 	mtlo	t0
/home/csy/func/inst/n68_addi_ov_ex.S:70
bfc0135c:	01100019 	multu	t0,s0
/home/csy/func/inst/n68_addi_ov_ex.S:71
bfc01360:	2082845d 	addi	v0,a0,-31651
/home/csy/func/inst/n68_addi_ov_ex.S:72
bfc01364:	00004810 	mfhi	t1
/home/csy/func/inst/n68_addi_ov_ex.S:73
bfc01368:	11280027 	beq	t1,t0,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:74
bfc0136c:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:75
bfc01370:	16570025 	bne	s2,s7,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:76
bfc01374:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:77
bfc01378:	14430023 	bne	v0,v1,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:78
bfc0137c:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:80
bfc01380:	24120003 	li	s2,3
/home/csy/func/inst/n68_addi_ov_ex.S:81
bfc01384:	3c02bd3e 	lui	v0,0xbd3e
bfc01388:	3442a700 	ori	v0,v0,0xa700
bfc0138c:	3c03bd3e 	lui	v1,0xbd3e
bfc01390:	3463a700 	ori	v1,v1,0xa700
bfc01394:	340481f4 	li	a0,0x81f4
bfc01398:	3c048000 	lui	a0,0x8000
bfc0139c:	34844016 	ori	a0,a0,0x4016
/home/csy/func/inst/n68_addi_ov_ex.S:82
bfc013a0:	3c14bfc0 	lui	s4,0xbfc0
bfc013a4:	269413a8 	addiu	s4,s4,5032
/home/csy/func/inst/n68_addi_ov_ex.S:83
bfc013a8:	208281f4 	addi	v0,a0,-32268
/home/csy/func/inst/n68_addi_ov_ex.S:84
bfc013ac:	01120019 	multu	t0,s2
/home/csy/func/inst/n68_addi_ov_ex.S:85
bfc013b0:	16570015 	bne	s2,s7,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:86
bfc013b4:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:87
bfc013b8:	14430013 	bne	v0,v1,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:88
bfc013bc:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:90
bfc013c0:	24120003 	li	s2,3
/home/csy/func/inst/n68_addi_ov_ex.S:91
bfc013c4:	3c020615 	lui	v0,0x615
bfc013c8:	34422570 	ori	v0,v0,0x2570
bfc013cc:	3c030615 	lui	v1,0x615
bfc013d0:	34632570 	ori	v1,v1,0x2570
bfc013d4:	3404baa6 	li	a0,0xbaa6
bfc013d8:	3c048000 	lui	a0,0x8000
bfc013dc:	34843510 	ori	a0,a0,0x3510
/home/csy/func/inst/n68_addi_ov_ex.S:92
bfc013e0:	3c14bfc0 	lui	s4,0xbfc0
bfc013e4:	269413ec 	addiu	s4,s4,5100
/home/csy/func/inst/n68_addi_ov_ex.S:93
bfc013e8:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n68_addi_ov_ex.S:94
bfc013ec:	2082baa6 	addi	v0,a0,-17754
/home/csy/func/inst/n68_addi_ov_ex.S:95
bfc013f0:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n68_addi_ov_ex.S:96
bfc013f4:	16570004 	bne	s2,s7,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:97
bfc013f8:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:98
bfc013fc:	14430002 	bne	v0,v1,bfc01408 <inst_error>
/home/csy/func/inst/n68_addi_ov_ex.S:99
bfc01400:	00000000 	nop
/home/csy/func/inst/n68_addi_ov_ex.S:101
bfc01404:	26730001 	addiu	s3,s3,1

bfc01408 <inst_error>:
/home/csy/func/inst/n68_addi_ov_ex.S:104
bfc01408:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n68_addi_ov_ex.S:105
bfc0140c:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n68_addi_ov_ex.S:106
bfc01410:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n68_addi_ov_ex.S:107
bfc01414:	03e00008 	jr	ra
/home/csy/func/inst/n68_addi_ov_ex.S:108
bfc01418:	00000000 	nop
inst_error():
bfc0141c:	00000000 	nop

bfc01420 <n81_bgtz_ds_ex_test>:
/home/csy/func/inst/n81_bgtz_ds_ex.S:7
bfc01420:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n81_bgtz_ds_ex.S:8
bfc01424:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n81_bgtz_ds_ex.S:10
bfc01428:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n81_bgtz_ds_ex.S:11
bfc0142c:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n81_bgtz_ds_ex.S:12
bfc01430:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n81_bgtz_ds_ex.S:13
bfc01434:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:16
bfc01438:	24120001 	li	s2,1
/home/csy/func/inst/n81_bgtz_ds_ex.S:17
bfc0143c:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n81_bgtz_ds_ex.S:18
bfc01440:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:19
bfc01444:	3c14bfc0 	lui	s4,0xbfc0
bfc01448:	2694144c 	addiu	s4,s4,5196
/home/csy/func/inst/n81_bgtz_ds_ex.S:20
bfc0144c:	1e4000af 	bgtz	s2,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:21
bfc01450:	0000000c 	syscall
/home/csy/func/inst/n81_bgtz_ds_ex.S:22
bfc01454:	165700ad 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:23
bfc01458:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:24
bfc0145c:	24120001 	li	s2,1
/home/csy/func/inst/n81_bgtz_ds_ex.S:25
bfc01460:	3c14bfc0 	lui	s4,0xbfc0
bfc01464:	26941468 	addiu	s4,s4,5224
/home/csy/func/inst/n81_bgtz_ds_ex.S:26
bfc01468:	1d0000a8 	bgtz	t0,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:27
bfc0146c:	0000000c 	syscall
/home/csy/func/inst/n81_bgtz_ds_ex.S:28
bfc01470:	165700a6 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:29
bfc01474:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:31
bfc01478:	24120002 	li	s2,2
/home/csy/func/inst/n81_bgtz_ds_ex.S:32
bfc0147c:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n81_bgtz_ds_ex.S:33
bfc01480:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:34
bfc01484:	3c14bfc0 	lui	s4,0xbfc0
bfc01488:	2694148c 	addiu	s4,s4,5260
/home/csy/func/inst/n81_bgtz_ds_ex.S:35
bfc0148c:	1e40009f 	bgtz	s2,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:36
bfc01490:	0000000d 	break
/home/csy/func/inst/n81_bgtz_ds_ex.S:37
bfc01494:	1657009d 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:38
bfc01498:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:39
bfc0149c:	24120002 	li	s2,2
/home/csy/func/inst/n81_bgtz_ds_ex.S:40
bfc014a0:	3c14bfc0 	lui	s4,0xbfc0
bfc014a4:	269414a8 	addiu	s4,s4,5288
/home/csy/func/inst/n81_bgtz_ds_ex.S:41
bfc014a8:	1d000098 	bgtz	t0,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:42
bfc014ac:	0000000d 	break
/home/csy/func/inst/n81_bgtz_ds_ex.S:43
bfc014b0:	16570096 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:44
bfc014b4:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:46
bfc014b8:	24120003 	li	s2,3
/home/csy/func/inst/n81_bgtz_ds_ex.S:47
bfc014bc:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n81_bgtz_ds_ex.S:48
bfc014c0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:49
bfc014c4:	3c14bfc0 	lui	s4,0xbfc0
bfc014c8:	269414dc 	addiu	s4,s4,5340
/home/csy/func/inst/n81_bgtz_ds_ex.S:50
bfc014cc:	3c04ba03 	lui	a0,0xba03
bfc014d0:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n81_bgtz_ds_ex.S:51
bfc014d4:	3c05b615 	lui	a1,0xb615
bfc014d8:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n81_bgtz_ds_ex.S:52
bfc014dc:	1e40008b 	bgtz	s2,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:53
bfc014e0:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n81_bgtz_ds_ex.S:54
bfc014e4:	16570089 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:55
bfc014e8:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:56
bfc014ec:	24120003 	li	s2,3
/home/csy/func/inst/n81_bgtz_ds_ex.S:57
bfc014f0:	3c14bfc0 	lui	s4,0xbfc0
bfc014f4:	269414f8 	addiu	s4,s4,5368
/home/csy/func/inst/n81_bgtz_ds_ex.S:58
bfc014f8:	1d000084 	bgtz	t0,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:59
bfc014fc:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n81_bgtz_ds_ex.S:60
bfc01500:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:61
bfc01504:	16570081 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:62
bfc01508:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:63
bfc0150c:	24120003 	li	s2,3
/home/csy/func/inst/n81_bgtz_ds_ex.S:64
bfc01510:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:65
bfc01514:	3c14bfc0 	lui	s4,0xbfc0
bfc01518:	26941524 	addiu	s4,s4,5412
/home/csy/func/inst/n81_bgtz_ds_ex.S:66
bfc0151c:	3c047fff 	lui	a0,0x7fff
bfc01520:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n81_bgtz_ds_ex.S:67
bfc01524:	1e400079 	bgtz	s2,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:68
bfc01528:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n81_bgtz_ds_ex.S:69
bfc0152c:	16570077 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:70
bfc01530:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:71
bfc01534:	24120003 	li	s2,3
/home/csy/func/inst/n81_bgtz_ds_ex.S:72
bfc01538:	3c14bfc0 	lui	s4,0xbfc0
bfc0153c:	26941540 	addiu	s4,s4,5440
/home/csy/func/inst/n81_bgtz_ds_ex.S:73
bfc01540:	1d000072 	bgtz	t0,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:74
bfc01544:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n81_bgtz_ds_ex.S:75
bfc01548:	16570070 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:76
bfc0154c:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:77
bfc01550:	24120003 	li	s2,3
/home/csy/func/inst/n81_bgtz_ds_ex.S:78
bfc01554:	3c14bfc0 	lui	s4,0xbfc0
bfc01558:	2694156c 	addiu	s4,s4,5484
/home/csy/func/inst/n81_bgtz_ds_ex.S:79
bfc0155c:	3c04a85e 	lui	a0,0xa85e
bfc01560:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n81_bgtz_ds_ex.S:80
bfc01564:	3c056b7e 	lui	a1,0x6b7e
bfc01568:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n81_bgtz_ds_ex.S:81
bfc0156c:	1e400067 	bgtz	s2,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:82
bfc01570:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n81_bgtz_ds_ex.S:83
bfc01574:	16570065 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:84
bfc01578:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:85
bfc0157c:	24120003 	li	s2,3
/home/csy/func/inst/n81_bgtz_ds_ex.S:86
bfc01580:	3c14bfc0 	lui	s4,0xbfc0
bfc01584:	26941588 	addiu	s4,s4,5512
/home/csy/func/inst/n81_bgtz_ds_ex.S:87
bfc01588:	1d000060 	bgtz	t0,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:88
bfc0158c:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n81_bgtz_ds_ex.S:89
bfc01590:	1657005e 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:90
bfc01594:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:92
bfc01598:	24120004 	li	s2,4
/home/csy/func/inst/n81_bgtz_ds_ex.S:93
bfc0159c:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n81_bgtz_ds_ex.S:94
bfc015a0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:95
bfc015a4:	3c14bfc0 	lui	s4,0xbfc0
bfc015a8:	269415ac 	addiu	s4,s4,5548
/home/csy/func/inst/n81_bgtz_ds_ex.S:96
bfc015ac:	1e400057 	bgtz	s2,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:97
bfc015b0:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:98
bfc015b4:	16570055 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:99
bfc015b8:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:100
bfc015bc:	24120004 	li	s2,4
/home/csy/func/inst/n81_bgtz_ds_ex.S:101
bfc015c0:	3c14bfc0 	lui	s4,0xbfc0
bfc015c4:	269415c8 	addiu	s4,s4,5576
/home/csy/func/inst/n81_bgtz_ds_ex.S:102
bfc015c8:	1d000050 	bgtz	t0,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:103
bfc015cc:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:104
bfc015d0:	1657004e 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:105
bfc015d4:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:106
bfc015d8:	24120004 	li	s2,4
/home/csy/func/inst/n81_bgtz_ds_ex.S:107
bfc015dc:	3c14bfc0 	lui	s4,0xbfc0
bfc015e0:	269415e4 	addiu	s4,s4,5604
/home/csy/func/inst/n81_bgtz_ds_ex.S:108
bfc015e4:	1e400049 	bgtz	s2,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:109
bfc015e8:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:110
bfc015ec:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n81_bgtz_ds_ex.S:111
bfc015f0:	16570046 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:112
bfc015f4:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:113
bfc015f8:	24120004 	li	s2,4
/home/csy/func/inst/n81_bgtz_ds_ex.S:114
bfc015fc:	3c14bfc0 	lui	s4,0xbfc0
bfc01600:	26941604 	addiu	s4,s4,5636
/home/csy/func/inst/n81_bgtz_ds_ex.S:115
bfc01604:	1d000041 	bgtz	t0,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:116
bfc01608:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:117
bfc0160c:	1657003f 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:118
bfc01610:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:119
bfc01614:	3c14bfc0 	lui	s4,0xbfc0
bfc01618:	2694161c 	addiu	s4,s4,5660
/home/csy/func/inst/n81_bgtz_ds_ex.S:120
bfc0161c:	1e40003b 	bgtz	s2,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:121
bfc01620:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:122
bfc01624:	16570039 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:123
bfc01628:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:124
bfc0162c:	24120004 	li	s2,4
/home/csy/func/inst/n81_bgtz_ds_ex.S:125
bfc01630:	3c14bfc0 	lui	s4,0xbfc0
bfc01634:	26941638 	addiu	s4,s4,5688
/home/csy/func/inst/n81_bgtz_ds_ex.S:126
bfc01638:	1d000034 	bgtz	t0,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:127
bfc0163c:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:128
bfc01640:	16570032 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:129
bfc01644:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:131
bfc01648:	24120005 	li	s2,5
/home/csy/func/inst/n81_bgtz_ds_ex.S:132
bfc0164c:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n81_bgtz_ds_ex.S:133
bfc01650:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:134
bfc01654:	3c14bfc0 	lui	s4,0xbfc0
bfc01658:	2694165c 	addiu	s4,s4,5724
/home/csy/func/inst/n81_bgtz_ds_ex.S:135
bfc0165c:	1e40002b 	bgtz	s2,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:136
bfc01660:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:137
bfc01664:	16570029 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:138
bfc01668:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:139
bfc0166c:	24120005 	li	s2,5
/home/csy/func/inst/n81_bgtz_ds_ex.S:140
bfc01670:	3c14bfc0 	lui	s4,0xbfc0
bfc01674:	26941678 	addiu	s4,s4,5752
/home/csy/func/inst/n81_bgtz_ds_ex.S:141
bfc01678:	1d000024 	bgtz	t0,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:142
bfc0167c:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:143
bfc01680:	16570022 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:144
bfc01684:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:145
bfc01688:	24120005 	li	s2,5
/home/csy/func/inst/n81_bgtz_ds_ex.S:146
bfc0168c:	3c14bfc0 	lui	s4,0xbfc0
bfc01690:	26941694 	addiu	s4,s4,5780
/home/csy/func/inst/n81_bgtz_ds_ex.S:147
bfc01694:	1e40001d 	bgtz	s2,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:148
bfc01698:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:149
bfc0169c:	1657001b 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:150
bfc016a0:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:151
bfc016a4:	24120005 	li	s2,5
/home/csy/func/inst/n81_bgtz_ds_ex.S:152
bfc016a8:	3c14bfc0 	lui	s4,0xbfc0
bfc016ac:	269416b0 	addiu	s4,s4,5808
/home/csy/func/inst/n81_bgtz_ds_ex.S:153
bfc016b0:	1d000016 	bgtz	t0,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:154
bfc016b4:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:155
bfc016b8:	16570014 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:156
bfc016bc:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:159
bfc016c0:	24120007 	li	s2,7
/home/csy/func/inst/n81_bgtz_ds_ex.S:160
bfc016c4:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n81_bgtz_ds_ex.S:161
bfc016c8:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n81_bgtz_ds_ex.S:162
bfc016cc:	3c14bfc0 	lui	s4,0xbfc0
bfc016d0:	269416d4 	addiu	s4,s4,5844
/home/csy/func/inst/n81_bgtz_ds_ex.S:163
bfc016d4:	1e40000d 	bgtz	s2,bfc0170c <inst_error>
bfc016d8:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n81_bgtz_ds_ex.S:165
bfc016dc:	02f20018 	mult	s7,s2
/home/csy/func/inst/n81_bgtz_ds_ex.S:166
bfc016e0:	1657000a 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:167
bfc016e4:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:168
bfc016e8:	24120007 	li	s2,7
/home/csy/func/inst/n81_bgtz_ds_ex.S:169
bfc016ec:	3c14bfc0 	lui	s4,0xbfc0
bfc016f0:	269416f8 	addiu	s4,s4,5880
/home/csy/func/inst/n81_bgtz_ds_ex.S:170
bfc016f4:	02f20018 	mult	s7,s2
/home/csy/func/inst/n81_bgtz_ds_ex.S:171
bfc016f8:	1d000004 	bgtz	t0,bfc0170c <inst_error>
bfc016fc:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n81_bgtz_ds_ex.S:173
bfc01700:	16570002 	bne	s2,s7,bfc0170c <inst_error>
/home/csy/func/inst/n81_bgtz_ds_ex.S:174
bfc01704:	00000000 	nop
/home/csy/func/inst/n81_bgtz_ds_ex.S:176
bfc01708:	26730001 	addiu	s3,s3,1

bfc0170c <inst_error>:
/home/csy/func/inst/n81_bgtz_ds_ex.S:179
bfc0170c:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n81_bgtz_ds_ex.S:180
bfc01710:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n81_bgtz_ds_ex.S:181
bfc01714:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n81_bgtz_ds_ex.S:182
bfc01718:	03e00008 	jr	ra
/home/csy/func/inst/n81_bgtz_ds_ex.S:183
bfc0171c:	00000000 	nop

bfc01720 <n89_jalr_ds_ex_test>:
/home/csy/func/inst/n89_jalr_ds_ex.S:7
bfc01720:	03e0b021 	move	s6,ra
/home/csy/func/inst/n89_jalr_ds_ex.S:8
bfc01724:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n89_jalr_ds_ex.S:9
bfc01728:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n89_jalr_ds_ex.S:11
bfc0172c:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n89_jalr_ds_ex.S:12
bfc01730:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n89_jalr_ds_ex.S:13
bfc01734:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n89_jalr_ds_ex.S:14
bfc01738:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:17
bfc0173c:	24120001 	li	s2,1
/home/csy/func/inst/n89_jalr_ds_ex.S:18
bfc01740:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n89_jalr_ds_ex.S:19
bfc01744:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:20
bfc01748:	3c14bfc0 	lui	s4,0xbfc0
bfc0174c:	26941750 	addiu	s4,s4,5968
/home/csy/func/inst/n89_jalr_ds_ex.S:21
bfc01750:	0240f809 	jalr	s2
/home/csy/func/inst/n89_jalr_ds_ex.S:22
bfc01754:	0000000c 	syscall
/home/csy/func/inst/n89_jalr_ds_ex.S:23
bfc01758:	165700ad 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:24
bfc0175c:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:25
bfc01760:	24120001 	li	s2,1
/home/csy/func/inst/n89_jalr_ds_ex.S:26
bfc01764:	3c14bfc0 	lui	s4,0xbfc0
bfc01768:	2694176c 	addiu	s4,s4,5996
/home/csy/func/inst/n89_jalr_ds_ex.S:27
bfc0176c:	0100f809 	jalr	t0
/home/csy/func/inst/n89_jalr_ds_ex.S:28
bfc01770:	0000000c 	syscall
/home/csy/func/inst/n89_jalr_ds_ex.S:29
bfc01774:	165700a6 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:30
bfc01778:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:32
bfc0177c:	24120002 	li	s2,2
/home/csy/func/inst/n89_jalr_ds_ex.S:33
bfc01780:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n89_jalr_ds_ex.S:34
bfc01784:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:35
bfc01788:	3c14bfc0 	lui	s4,0xbfc0
bfc0178c:	26941790 	addiu	s4,s4,6032
/home/csy/func/inst/n89_jalr_ds_ex.S:36
bfc01790:	0240f809 	jalr	s2
/home/csy/func/inst/n89_jalr_ds_ex.S:37
bfc01794:	0000000d 	break
/home/csy/func/inst/n89_jalr_ds_ex.S:38
bfc01798:	1657009d 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:39
bfc0179c:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:40
bfc017a0:	24120002 	li	s2,2
/home/csy/func/inst/n89_jalr_ds_ex.S:41
bfc017a4:	3c14bfc0 	lui	s4,0xbfc0
bfc017a8:	269417ac 	addiu	s4,s4,6060
/home/csy/func/inst/n89_jalr_ds_ex.S:42
bfc017ac:	0100f809 	jalr	t0
/home/csy/func/inst/n89_jalr_ds_ex.S:43
bfc017b0:	0000000d 	break
/home/csy/func/inst/n89_jalr_ds_ex.S:44
bfc017b4:	16570096 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:45
bfc017b8:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:47
bfc017bc:	24120003 	li	s2,3
/home/csy/func/inst/n89_jalr_ds_ex.S:48
bfc017c0:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n89_jalr_ds_ex.S:49
bfc017c4:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:50
bfc017c8:	3c14bfc0 	lui	s4,0xbfc0
bfc017cc:	269417e0 	addiu	s4,s4,6112
/home/csy/func/inst/n89_jalr_ds_ex.S:51
bfc017d0:	3c04ba03 	lui	a0,0xba03
bfc017d4:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n89_jalr_ds_ex.S:52
bfc017d8:	3c05b615 	lui	a1,0xb615
bfc017dc:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n89_jalr_ds_ex.S:53
bfc017e0:	0240f809 	jalr	s2
/home/csy/func/inst/n89_jalr_ds_ex.S:54
bfc017e4:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n89_jalr_ds_ex.S:55
bfc017e8:	16570089 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:56
bfc017ec:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:57
bfc017f0:	24120003 	li	s2,3
/home/csy/func/inst/n89_jalr_ds_ex.S:58
bfc017f4:	3c14bfc0 	lui	s4,0xbfc0
bfc017f8:	269417fc 	addiu	s4,s4,6140
/home/csy/func/inst/n89_jalr_ds_ex.S:59
bfc017fc:	0100f809 	jalr	t0
/home/csy/func/inst/n89_jalr_ds_ex.S:60
bfc01800:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n89_jalr_ds_ex.S:61
bfc01804:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:62
bfc01808:	16570081 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:63
bfc0180c:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:64
bfc01810:	24120003 	li	s2,3
/home/csy/func/inst/n89_jalr_ds_ex.S:65
bfc01814:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:66
bfc01818:	3c14bfc0 	lui	s4,0xbfc0
bfc0181c:	26941828 	addiu	s4,s4,6184
/home/csy/func/inst/n89_jalr_ds_ex.S:67
bfc01820:	3c047fff 	lui	a0,0x7fff
bfc01824:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n89_jalr_ds_ex.S:68
bfc01828:	0240f809 	jalr	s2
/home/csy/func/inst/n89_jalr_ds_ex.S:69
bfc0182c:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n89_jalr_ds_ex.S:70
bfc01830:	16570077 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:71
bfc01834:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:72
bfc01838:	24120003 	li	s2,3
/home/csy/func/inst/n89_jalr_ds_ex.S:73
bfc0183c:	3c14bfc0 	lui	s4,0xbfc0
bfc01840:	26941844 	addiu	s4,s4,6212
/home/csy/func/inst/n89_jalr_ds_ex.S:74
bfc01844:	0100f809 	jalr	t0
/home/csy/func/inst/n89_jalr_ds_ex.S:75
bfc01848:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n89_jalr_ds_ex.S:76
bfc0184c:	16570070 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:77
bfc01850:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:78
bfc01854:	24120003 	li	s2,3
/home/csy/func/inst/n89_jalr_ds_ex.S:79
bfc01858:	3c14bfc0 	lui	s4,0xbfc0
bfc0185c:	26941870 	addiu	s4,s4,6256
/home/csy/func/inst/n89_jalr_ds_ex.S:80
bfc01860:	3c04a85e 	lui	a0,0xa85e
bfc01864:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n89_jalr_ds_ex.S:81
bfc01868:	3c056b7e 	lui	a1,0x6b7e
bfc0186c:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n89_jalr_ds_ex.S:82
bfc01870:	0240f809 	jalr	s2
/home/csy/func/inst/n89_jalr_ds_ex.S:83
bfc01874:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n89_jalr_ds_ex.S:84
bfc01878:	16570065 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:85
bfc0187c:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:86
bfc01880:	24120003 	li	s2,3
/home/csy/func/inst/n89_jalr_ds_ex.S:87
bfc01884:	3c14bfc0 	lui	s4,0xbfc0
bfc01888:	2694188c 	addiu	s4,s4,6284
/home/csy/func/inst/n89_jalr_ds_ex.S:88
bfc0188c:	0100f809 	jalr	t0
/home/csy/func/inst/n89_jalr_ds_ex.S:89
bfc01890:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n89_jalr_ds_ex.S:90
bfc01894:	1657005e 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:91
bfc01898:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:93
bfc0189c:	24120004 	li	s2,4
/home/csy/func/inst/n89_jalr_ds_ex.S:94
bfc018a0:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n89_jalr_ds_ex.S:95
bfc018a4:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:96
bfc018a8:	3c14bfc0 	lui	s4,0xbfc0
bfc018ac:	269418b0 	addiu	s4,s4,6320
/home/csy/func/inst/n89_jalr_ds_ex.S:97
bfc018b0:	0240f809 	jalr	s2
/home/csy/func/inst/n89_jalr_ds_ex.S:98
bfc018b4:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:99
bfc018b8:	16570055 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:100
bfc018bc:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:101
bfc018c0:	24120004 	li	s2,4
/home/csy/func/inst/n89_jalr_ds_ex.S:102
bfc018c4:	3c14bfc0 	lui	s4,0xbfc0
bfc018c8:	269418cc 	addiu	s4,s4,6348
/home/csy/func/inst/n89_jalr_ds_ex.S:103
bfc018cc:	0100f809 	jalr	t0
/home/csy/func/inst/n89_jalr_ds_ex.S:104
bfc018d0:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:105
bfc018d4:	1657004e 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:106
bfc018d8:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:107
bfc018dc:	24120004 	li	s2,4
/home/csy/func/inst/n89_jalr_ds_ex.S:108
bfc018e0:	3c14bfc0 	lui	s4,0xbfc0
bfc018e4:	269418e8 	addiu	s4,s4,6376
/home/csy/func/inst/n89_jalr_ds_ex.S:109
bfc018e8:	0240f809 	jalr	s2
/home/csy/func/inst/n89_jalr_ds_ex.S:110
bfc018ec:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:111
bfc018f0:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n89_jalr_ds_ex.S:112
bfc018f4:	16570046 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:113
bfc018f8:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:114
bfc018fc:	24120004 	li	s2,4
/home/csy/func/inst/n89_jalr_ds_ex.S:115
bfc01900:	3c14bfc0 	lui	s4,0xbfc0
bfc01904:	26941908 	addiu	s4,s4,6408
/home/csy/func/inst/n89_jalr_ds_ex.S:116
bfc01908:	0100f809 	jalr	t0
/home/csy/func/inst/n89_jalr_ds_ex.S:117
bfc0190c:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:118
bfc01910:	1657003f 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:119
bfc01914:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:120
bfc01918:	3c14bfc0 	lui	s4,0xbfc0
bfc0191c:	26941920 	addiu	s4,s4,6432
/home/csy/func/inst/n89_jalr_ds_ex.S:121
bfc01920:	0240f809 	jalr	s2
/home/csy/func/inst/n89_jalr_ds_ex.S:122
bfc01924:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:123
bfc01928:	16570039 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:124
bfc0192c:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:125
bfc01930:	24120004 	li	s2,4
/home/csy/func/inst/n89_jalr_ds_ex.S:126
bfc01934:	3c14bfc0 	lui	s4,0xbfc0
bfc01938:	2694193c 	addiu	s4,s4,6460
/home/csy/func/inst/n89_jalr_ds_ex.S:127
bfc0193c:	0100f809 	jalr	t0
/home/csy/func/inst/n89_jalr_ds_ex.S:128
bfc01940:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:129
bfc01944:	16570032 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:130
bfc01948:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:132
bfc0194c:	24120005 	li	s2,5
/home/csy/func/inst/n89_jalr_ds_ex.S:133
bfc01950:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n89_jalr_ds_ex.S:134
bfc01954:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:135
bfc01958:	3c14bfc0 	lui	s4,0xbfc0
bfc0195c:	26941960 	addiu	s4,s4,6496
/home/csy/func/inst/n89_jalr_ds_ex.S:136
bfc01960:	0240f809 	jalr	s2
/home/csy/func/inst/n89_jalr_ds_ex.S:137
bfc01964:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:138
bfc01968:	16570029 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:139
bfc0196c:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:140
bfc01970:	24120005 	li	s2,5
/home/csy/func/inst/n89_jalr_ds_ex.S:141
bfc01974:	3c14bfc0 	lui	s4,0xbfc0
bfc01978:	2694197c 	addiu	s4,s4,6524
/home/csy/func/inst/n89_jalr_ds_ex.S:142
bfc0197c:	0100f809 	jalr	t0
/home/csy/func/inst/n89_jalr_ds_ex.S:143
bfc01980:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:144
bfc01984:	16570022 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:145
bfc01988:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:146
bfc0198c:	24120005 	li	s2,5
/home/csy/func/inst/n89_jalr_ds_ex.S:147
bfc01990:	3c14bfc0 	lui	s4,0xbfc0
bfc01994:	26941998 	addiu	s4,s4,6552
/home/csy/func/inst/n89_jalr_ds_ex.S:148
bfc01998:	0240f809 	jalr	s2
/home/csy/func/inst/n89_jalr_ds_ex.S:149
bfc0199c:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:150
bfc019a0:	1657001b 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:151
bfc019a4:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:152
bfc019a8:	24120005 	li	s2,5
/home/csy/func/inst/n89_jalr_ds_ex.S:153
bfc019ac:	3c14bfc0 	lui	s4,0xbfc0
bfc019b0:	269419b4 	addiu	s4,s4,6580
/home/csy/func/inst/n89_jalr_ds_ex.S:154
bfc019b4:	0100f809 	jalr	t0
/home/csy/func/inst/n89_jalr_ds_ex.S:155
bfc019b8:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:156
bfc019bc:	16570014 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:157
bfc019c0:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:160
bfc019c4:	24120007 	li	s2,7
/home/csy/func/inst/n89_jalr_ds_ex.S:161
bfc019c8:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n89_jalr_ds_ex.S:162
bfc019cc:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n89_jalr_ds_ex.S:163
bfc019d0:	3c14bfc0 	lui	s4,0xbfc0
bfc019d4:	269419d8 	addiu	s4,s4,6616
/home/csy/func/inst/n89_jalr_ds_ex.S:164
bfc019d8:	0240f809 	jalr	s2
bfc019dc:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n89_jalr_ds_ex.S:166
bfc019e0:	02f20018 	mult	s7,s2
/home/csy/func/inst/n89_jalr_ds_ex.S:167
bfc019e4:	1657000a 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:168
bfc019e8:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:169
bfc019ec:	24120007 	li	s2,7
/home/csy/func/inst/n89_jalr_ds_ex.S:170
bfc019f0:	3c14bfc0 	lui	s4,0xbfc0
bfc019f4:	269419fc 	addiu	s4,s4,6652
/home/csy/func/inst/n89_jalr_ds_ex.S:171
bfc019f8:	02f20018 	mult	s7,s2
/home/csy/func/inst/n89_jalr_ds_ex.S:172
bfc019fc:	0100f809 	jalr	t0
bfc01a00:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n89_jalr_ds_ex.S:174
bfc01a04:	16570002 	bne	s2,s7,bfc01a10 <inst_error>
/home/csy/func/inst/n89_jalr_ds_ex.S:175
bfc01a08:	00000000 	nop
/home/csy/func/inst/n89_jalr_ds_ex.S:177
bfc01a0c:	26730001 	addiu	s3,s3,1

bfc01a10 <inst_error>:
/home/csy/func/inst/n89_jalr_ds_ex.S:180
bfc01a10:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n89_jalr_ds_ex.S:181
bfc01a14:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n89_jalr_ds_ex.S:182
bfc01a18:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n89_jalr_ds_ex.S:183
bfc01a1c:	02c0f821 	move	ra,s6
/home/csy/func/inst/n89_jalr_ds_ex.S:184
bfc01a20:	03e00008 	jr	ra
/home/csy/func/inst/n89_jalr_ds_ex.S:185
bfc01a24:	00000000 	nop
	...

bfc01a30 <n78_beq_ds_ex_test>:
/home/csy/func/inst/n78_beq_ds_ex.S:7
bfc01a30:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n78_beq_ds_ex.S:8
bfc01a34:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n78_beq_ds_ex.S:10
bfc01a38:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n78_beq_ds_ex.S:11
bfc01a3c:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n78_beq_ds_ex.S:12
bfc01a40:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n78_beq_ds_ex.S:13
bfc01a44:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:16
bfc01a48:	24120001 	li	s2,1
/home/csy/func/inst/n78_beq_ds_ex.S:17
bfc01a4c:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n78_beq_ds_ex.S:18
bfc01a50:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:19
bfc01a54:	3c14bfc0 	lui	s4,0xbfc0
bfc01a58:	26941a5c 	addiu	s4,s4,6748
/home/csy/func/inst/n78_beq_ds_ex.S:20
bfc01a5c:	100000af 	b	bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:21
bfc01a60:	0000000c 	syscall
/home/csy/func/inst/n78_beq_ds_ex.S:22
bfc01a64:	165700ad 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:23
bfc01a68:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:24
bfc01a6c:	24120001 	li	s2,1
/home/csy/func/inst/n78_beq_ds_ex.S:25
bfc01a70:	3c14bfc0 	lui	s4,0xbfc0
bfc01a74:	26941a78 	addiu	s4,s4,6776
/home/csy/func/inst/n78_beq_ds_ex.S:26
bfc01a78:	110000a8 	beqz	t0,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:27
bfc01a7c:	0000000c 	syscall
/home/csy/func/inst/n78_beq_ds_ex.S:28
bfc01a80:	165700a6 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:29
bfc01a84:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:31
bfc01a88:	24120002 	li	s2,2
/home/csy/func/inst/n78_beq_ds_ex.S:32
bfc01a8c:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n78_beq_ds_ex.S:33
bfc01a90:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:34
bfc01a94:	3c14bfc0 	lui	s4,0xbfc0
bfc01a98:	26941a9c 	addiu	s4,s4,6812
/home/csy/func/inst/n78_beq_ds_ex.S:35
bfc01a9c:	1000009f 	b	bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:36
bfc01aa0:	0000000d 	break
/home/csy/func/inst/n78_beq_ds_ex.S:37
bfc01aa4:	1657009d 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:38
bfc01aa8:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:39
bfc01aac:	24120002 	li	s2,2
/home/csy/func/inst/n78_beq_ds_ex.S:40
bfc01ab0:	3c14bfc0 	lui	s4,0xbfc0
bfc01ab4:	26941ab8 	addiu	s4,s4,6840
/home/csy/func/inst/n78_beq_ds_ex.S:41
bfc01ab8:	11000098 	beqz	t0,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:42
bfc01abc:	0000000d 	break
/home/csy/func/inst/n78_beq_ds_ex.S:43
bfc01ac0:	16570096 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:44
bfc01ac4:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:46
bfc01ac8:	24120003 	li	s2,3
/home/csy/func/inst/n78_beq_ds_ex.S:47
bfc01acc:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n78_beq_ds_ex.S:48
bfc01ad0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:49
bfc01ad4:	3c14bfc0 	lui	s4,0xbfc0
bfc01ad8:	26941aec 	addiu	s4,s4,6892
/home/csy/func/inst/n78_beq_ds_ex.S:50
bfc01adc:	3c04ba03 	lui	a0,0xba03
bfc01ae0:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n78_beq_ds_ex.S:51
bfc01ae4:	3c05b615 	lui	a1,0xb615
bfc01ae8:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n78_beq_ds_ex.S:52
bfc01aec:	1000008b 	b	bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:53
bfc01af0:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n78_beq_ds_ex.S:54
bfc01af4:	16570089 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:55
bfc01af8:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:56
bfc01afc:	24120003 	li	s2,3
/home/csy/func/inst/n78_beq_ds_ex.S:57
bfc01b00:	3c14bfc0 	lui	s4,0xbfc0
bfc01b04:	26941b08 	addiu	s4,s4,6920
/home/csy/func/inst/n78_beq_ds_ex.S:58
bfc01b08:	11000084 	beqz	t0,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:59
bfc01b0c:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n78_beq_ds_ex.S:60
bfc01b10:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:61
bfc01b14:	16570081 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:62
bfc01b18:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:63
bfc01b1c:	24120003 	li	s2,3
/home/csy/func/inst/n78_beq_ds_ex.S:64
bfc01b20:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:65
bfc01b24:	3c14bfc0 	lui	s4,0xbfc0
bfc01b28:	26941b34 	addiu	s4,s4,6964
/home/csy/func/inst/n78_beq_ds_ex.S:66
bfc01b2c:	3c047fff 	lui	a0,0x7fff
bfc01b30:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n78_beq_ds_ex.S:67
bfc01b34:	10000079 	b	bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:68
bfc01b38:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n78_beq_ds_ex.S:69
bfc01b3c:	16570077 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:70
bfc01b40:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:71
bfc01b44:	24120003 	li	s2,3
/home/csy/func/inst/n78_beq_ds_ex.S:72
bfc01b48:	3c14bfc0 	lui	s4,0xbfc0
bfc01b4c:	26941b50 	addiu	s4,s4,6992
/home/csy/func/inst/n78_beq_ds_ex.S:73
bfc01b50:	11000072 	beqz	t0,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:74
bfc01b54:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n78_beq_ds_ex.S:75
bfc01b58:	16570070 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:76
bfc01b5c:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:77
bfc01b60:	24120003 	li	s2,3
/home/csy/func/inst/n78_beq_ds_ex.S:78
bfc01b64:	3c14bfc0 	lui	s4,0xbfc0
bfc01b68:	26941b7c 	addiu	s4,s4,7036
/home/csy/func/inst/n78_beq_ds_ex.S:79
bfc01b6c:	3c04a85e 	lui	a0,0xa85e
bfc01b70:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n78_beq_ds_ex.S:80
bfc01b74:	3c056b7e 	lui	a1,0x6b7e
bfc01b78:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n78_beq_ds_ex.S:81
bfc01b7c:	10000067 	b	bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:82
bfc01b80:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n78_beq_ds_ex.S:83
bfc01b84:	16570065 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:84
bfc01b88:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:85
bfc01b8c:	24120003 	li	s2,3
/home/csy/func/inst/n78_beq_ds_ex.S:86
bfc01b90:	3c14bfc0 	lui	s4,0xbfc0
bfc01b94:	26941b98 	addiu	s4,s4,7064
/home/csy/func/inst/n78_beq_ds_ex.S:87
bfc01b98:	11000060 	beqz	t0,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:88
bfc01b9c:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n78_beq_ds_ex.S:89
bfc01ba0:	1657005e 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:90
bfc01ba4:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:92
bfc01ba8:	24120004 	li	s2,4
/home/csy/func/inst/n78_beq_ds_ex.S:93
bfc01bac:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n78_beq_ds_ex.S:94
bfc01bb0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:95
bfc01bb4:	3c14bfc0 	lui	s4,0xbfc0
bfc01bb8:	26941bbc 	addiu	s4,s4,7100
/home/csy/func/inst/n78_beq_ds_ex.S:96
bfc01bbc:	10000057 	b	bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:97
bfc01bc0:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:98
bfc01bc4:	16570055 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:99
bfc01bc8:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:100
bfc01bcc:	24120004 	li	s2,4
/home/csy/func/inst/n78_beq_ds_ex.S:101
bfc01bd0:	3c14bfc0 	lui	s4,0xbfc0
bfc01bd4:	26941bd8 	addiu	s4,s4,7128
/home/csy/func/inst/n78_beq_ds_ex.S:102
bfc01bd8:	11000050 	beqz	t0,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:103
bfc01bdc:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:104
bfc01be0:	1657004e 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:105
bfc01be4:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:106
bfc01be8:	24120004 	li	s2,4
/home/csy/func/inst/n78_beq_ds_ex.S:107
bfc01bec:	3c14bfc0 	lui	s4,0xbfc0
bfc01bf0:	26941bf4 	addiu	s4,s4,7156
/home/csy/func/inst/n78_beq_ds_ex.S:108
bfc01bf4:	10000049 	b	bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:109
bfc01bf8:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:110
bfc01bfc:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n78_beq_ds_ex.S:111
bfc01c00:	16570046 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:112
bfc01c04:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:113
bfc01c08:	24120004 	li	s2,4
/home/csy/func/inst/n78_beq_ds_ex.S:114
bfc01c0c:	3c14bfc0 	lui	s4,0xbfc0
bfc01c10:	26941c14 	addiu	s4,s4,7188
/home/csy/func/inst/n78_beq_ds_ex.S:115
bfc01c14:	11000041 	beqz	t0,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:116
bfc01c18:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:117
bfc01c1c:	1657003f 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:118
bfc01c20:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:119
bfc01c24:	3c14bfc0 	lui	s4,0xbfc0
bfc01c28:	26941c2c 	addiu	s4,s4,7212
/home/csy/func/inst/n78_beq_ds_ex.S:120
bfc01c2c:	1000003b 	b	bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:121
bfc01c30:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:122
bfc01c34:	16570039 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:123
bfc01c38:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:124
bfc01c3c:	24120004 	li	s2,4
/home/csy/func/inst/n78_beq_ds_ex.S:125
bfc01c40:	3c14bfc0 	lui	s4,0xbfc0
bfc01c44:	26941c48 	addiu	s4,s4,7240
/home/csy/func/inst/n78_beq_ds_ex.S:126
bfc01c48:	11000034 	beqz	t0,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:127
bfc01c4c:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:128
bfc01c50:	16570032 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:129
bfc01c54:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:131
bfc01c58:	24120005 	li	s2,5
/home/csy/func/inst/n78_beq_ds_ex.S:132
bfc01c5c:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n78_beq_ds_ex.S:133
bfc01c60:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:134
bfc01c64:	3c14bfc0 	lui	s4,0xbfc0
bfc01c68:	26941c6c 	addiu	s4,s4,7276
/home/csy/func/inst/n78_beq_ds_ex.S:135
bfc01c6c:	1000002b 	b	bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:136
bfc01c70:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:137
bfc01c74:	16570029 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:138
bfc01c78:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:139
bfc01c7c:	24120005 	li	s2,5
/home/csy/func/inst/n78_beq_ds_ex.S:140
bfc01c80:	3c14bfc0 	lui	s4,0xbfc0
bfc01c84:	26941c88 	addiu	s4,s4,7304
/home/csy/func/inst/n78_beq_ds_ex.S:141
bfc01c88:	11000024 	beqz	t0,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:142
bfc01c8c:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:143
bfc01c90:	16570022 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:144
bfc01c94:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:145
bfc01c98:	24120005 	li	s2,5
/home/csy/func/inst/n78_beq_ds_ex.S:146
bfc01c9c:	3c14bfc0 	lui	s4,0xbfc0
bfc01ca0:	26941ca4 	addiu	s4,s4,7332
/home/csy/func/inst/n78_beq_ds_ex.S:147
bfc01ca4:	1000001d 	b	bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:148
bfc01ca8:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:149
bfc01cac:	1657001b 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:150
bfc01cb0:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:151
bfc01cb4:	24120005 	li	s2,5
/home/csy/func/inst/n78_beq_ds_ex.S:152
bfc01cb8:	3c14bfc0 	lui	s4,0xbfc0
bfc01cbc:	26941cc0 	addiu	s4,s4,7360
/home/csy/func/inst/n78_beq_ds_ex.S:153
bfc01cc0:	11000016 	beqz	t0,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:154
bfc01cc4:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:155
bfc01cc8:	16570014 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:156
bfc01ccc:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:159
bfc01cd0:	24120007 	li	s2,7
/home/csy/func/inst/n78_beq_ds_ex.S:160
bfc01cd4:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n78_beq_ds_ex.S:161
bfc01cd8:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n78_beq_ds_ex.S:162
bfc01cdc:	3c14bfc0 	lui	s4,0xbfc0
bfc01ce0:	26941ce4 	addiu	s4,s4,7396
/home/csy/func/inst/n78_beq_ds_ex.S:163
bfc01ce4:	1000000d 	b	bfc01d1c <inst_error>
bfc01ce8:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n78_beq_ds_ex.S:165
bfc01cec:	02f20018 	mult	s7,s2
/home/csy/func/inst/n78_beq_ds_ex.S:166
bfc01cf0:	1657000a 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:167
bfc01cf4:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:168
bfc01cf8:	24120007 	li	s2,7
/home/csy/func/inst/n78_beq_ds_ex.S:169
bfc01cfc:	3c14bfc0 	lui	s4,0xbfc0
bfc01d00:	26941d08 	addiu	s4,s4,7432
/home/csy/func/inst/n78_beq_ds_ex.S:170
bfc01d04:	02f20018 	mult	s7,s2
/home/csy/func/inst/n78_beq_ds_ex.S:171
bfc01d08:	11000004 	beqz	t0,bfc01d1c <inst_error>
bfc01d0c:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n78_beq_ds_ex.S:173
bfc01d10:	16570002 	bne	s2,s7,bfc01d1c <inst_error>
/home/csy/func/inst/n78_beq_ds_ex.S:174
bfc01d14:	00000000 	nop
/home/csy/func/inst/n78_beq_ds_ex.S:176
bfc01d18:	26730001 	addiu	s3,s3,1

bfc01d1c <inst_error>:
/home/csy/func/inst/n78_beq_ds_ex.S:179
bfc01d1c:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n78_beq_ds_ex.S:180
bfc01d20:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n78_beq_ds_ex.S:181
bfc01d24:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n78_beq_ds_ex.S:182
bfc01d28:	03e00008 	jr	ra
/home/csy/func/inst/n78_beq_ds_ex.S:183
bfc01d2c:	00000000 	nop

bfc01d30 <n86_j_ds_ex_test>:
/home/csy/func/inst/n86_j_ds_ex.S:7
bfc01d30:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n86_j_ds_ex.S:8
bfc01d34:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n86_j_ds_ex.S:10
bfc01d38:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n86_j_ds_ex.S:11
bfc01d3c:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n86_j_ds_ex.S:12
bfc01d40:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n86_j_ds_ex.S:13
bfc01d44:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:16
bfc01d48:	24120001 	li	s2,1
/home/csy/func/inst/n86_j_ds_ex.S:17
bfc01d4c:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n86_j_ds_ex.S:18
bfc01d50:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n86_j_ds_ex.S:19
bfc01d54:	3c14bfc0 	lui	s4,0xbfc0
bfc01d58:	26941d5c 	addiu	s4,s4,7516
/home/csy/func/inst/n86_j_ds_ex.S:20
bfc01d5c:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:21
bfc01d60:	0000000c 	syscall
/home/csy/func/inst/n86_j_ds_ex.S:22
bfc01d64:	165700ad 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:23
bfc01d68:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:24
bfc01d6c:	24120001 	li	s2,1
/home/csy/func/inst/n86_j_ds_ex.S:25
bfc01d70:	3c14bfc0 	lui	s4,0xbfc0
bfc01d74:	26941d78 	addiu	s4,s4,7544
/home/csy/func/inst/n86_j_ds_ex.S:26
bfc01d78:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:27
bfc01d7c:	0000000c 	syscall
/home/csy/func/inst/n86_j_ds_ex.S:28
bfc01d80:	165700a6 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:29
bfc01d84:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:31
bfc01d88:	24120002 	li	s2,2
/home/csy/func/inst/n86_j_ds_ex.S:32
bfc01d8c:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n86_j_ds_ex.S:33
bfc01d90:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n86_j_ds_ex.S:34
bfc01d94:	3c14bfc0 	lui	s4,0xbfc0
bfc01d98:	26941d9c 	addiu	s4,s4,7580
/home/csy/func/inst/n86_j_ds_ex.S:35
bfc01d9c:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:36
bfc01da0:	0000000d 	break
/home/csy/func/inst/n86_j_ds_ex.S:37
bfc01da4:	1657009d 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:38
bfc01da8:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:39
bfc01dac:	24120002 	li	s2,2
/home/csy/func/inst/n86_j_ds_ex.S:40
bfc01db0:	3c14bfc0 	lui	s4,0xbfc0
bfc01db4:	26941db8 	addiu	s4,s4,7608
/home/csy/func/inst/n86_j_ds_ex.S:41
bfc01db8:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:42
bfc01dbc:	0000000d 	break
/home/csy/func/inst/n86_j_ds_ex.S:43
bfc01dc0:	16570096 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:44
bfc01dc4:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:46
bfc01dc8:	24120003 	li	s2,3
/home/csy/func/inst/n86_j_ds_ex.S:47
bfc01dcc:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n86_j_ds_ex.S:48
bfc01dd0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n86_j_ds_ex.S:49
bfc01dd4:	3c14bfc0 	lui	s4,0xbfc0
bfc01dd8:	26941dec 	addiu	s4,s4,7660
/home/csy/func/inst/n86_j_ds_ex.S:50
bfc01ddc:	3c04ba03 	lui	a0,0xba03
bfc01de0:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n86_j_ds_ex.S:51
bfc01de4:	3c05b615 	lui	a1,0xb615
bfc01de8:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n86_j_ds_ex.S:52
bfc01dec:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:53
bfc01df0:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n86_j_ds_ex.S:54
bfc01df4:	16570089 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:55
bfc01df8:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:56
bfc01dfc:	24120003 	li	s2,3
/home/csy/func/inst/n86_j_ds_ex.S:57
bfc01e00:	3c14bfc0 	lui	s4,0xbfc0
bfc01e04:	26941e08 	addiu	s4,s4,7688
/home/csy/func/inst/n86_j_ds_ex.S:58
bfc01e08:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:59
bfc01e0c:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n86_j_ds_ex.S:60
bfc01e10:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n86_j_ds_ex.S:61
bfc01e14:	16570081 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:62
bfc01e18:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:63
bfc01e1c:	24120003 	li	s2,3
/home/csy/func/inst/n86_j_ds_ex.S:64
bfc01e20:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n86_j_ds_ex.S:65
bfc01e24:	3c14bfc0 	lui	s4,0xbfc0
bfc01e28:	26941e34 	addiu	s4,s4,7732
/home/csy/func/inst/n86_j_ds_ex.S:66
bfc01e2c:	3c047fff 	lui	a0,0x7fff
bfc01e30:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n86_j_ds_ex.S:67
bfc01e34:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:68
bfc01e38:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n86_j_ds_ex.S:69
bfc01e3c:	16570077 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:70
bfc01e40:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:71
bfc01e44:	24120003 	li	s2,3
/home/csy/func/inst/n86_j_ds_ex.S:72
bfc01e48:	3c14bfc0 	lui	s4,0xbfc0
bfc01e4c:	26941e50 	addiu	s4,s4,7760
/home/csy/func/inst/n86_j_ds_ex.S:73
bfc01e50:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:74
bfc01e54:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n86_j_ds_ex.S:75
bfc01e58:	16570070 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:76
bfc01e5c:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:77
bfc01e60:	24120003 	li	s2,3
/home/csy/func/inst/n86_j_ds_ex.S:78
bfc01e64:	3c14bfc0 	lui	s4,0xbfc0
bfc01e68:	26941e7c 	addiu	s4,s4,7804
/home/csy/func/inst/n86_j_ds_ex.S:79
bfc01e6c:	3c04a85e 	lui	a0,0xa85e
bfc01e70:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n86_j_ds_ex.S:80
bfc01e74:	3c056b7e 	lui	a1,0x6b7e
bfc01e78:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n86_j_ds_ex.S:81
bfc01e7c:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:82
bfc01e80:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n86_j_ds_ex.S:83
bfc01e84:	16570065 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:84
bfc01e88:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:85
bfc01e8c:	24120003 	li	s2,3
/home/csy/func/inst/n86_j_ds_ex.S:86
bfc01e90:	3c14bfc0 	lui	s4,0xbfc0
bfc01e94:	26941e98 	addiu	s4,s4,7832
/home/csy/func/inst/n86_j_ds_ex.S:87
bfc01e98:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:88
bfc01e9c:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n86_j_ds_ex.S:89
bfc01ea0:	1657005e 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:90
bfc01ea4:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:92
bfc01ea8:	24120004 	li	s2,4
/home/csy/func/inst/n86_j_ds_ex.S:93
bfc01eac:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n86_j_ds_ex.S:94
bfc01eb0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n86_j_ds_ex.S:95
bfc01eb4:	3c14bfc0 	lui	s4,0xbfc0
bfc01eb8:	26941ebc 	addiu	s4,s4,7868
/home/csy/func/inst/n86_j_ds_ex.S:96
bfc01ebc:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:97
bfc01ec0:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n86_j_ds_ex.S:98
bfc01ec4:	16570055 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:99
bfc01ec8:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:100
bfc01ecc:	24120004 	li	s2,4
/home/csy/func/inst/n86_j_ds_ex.S:101
bfc01ed0:	3c14bfc0 	lui	s4,0xbfc0
bfc01ed4:	26941ed8 	addiu	s4,s4,7896
/home/csy/func/inst/n86_j_ds_ex.S:102
bfc01ed8:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:103
bfc01edc:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n86_j_ds_ex.S:104
bfc01ee0:	1657004e 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:105
bfc01ee4:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:106
bfc01ee8:	24120004 	li	s2,4
/home/csy/func/inst/n86_j_ds_ex.S:107
bfc01eec:	3c14bfc0 	lui	s4,0xbfc0
bfc01ef0:	26941ef4 	addiu	s4,s4,7924
/home/csy/func/inst/n86_j_ds_ex.S:108
bfc01ef4:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:109
bfc01ef8:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n86_j_ds_ex.S:110
bfc01efc:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n86_j_ds_ex.S:111
bfc01f00:	16570046 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:112
bfc01f04:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:113
bfc01f08:	24120004 	li	s2,4
/home/csy/func/inst/n86_j_ds_ex.S:114
bfc01f0c:	3c14bfc0 	lui	s4,0xbfc0
bfc01f10:	26941f14 	addiu	s4,s4,7956
/home/csy/func/inst/n86_j_ds_ex.S:115
bfc01f14:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:116
bfc01f18:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n86_j_ds_ex.S:117
bfc01f1c:	1657003f 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:118
bfc01f20:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:119
bfc01f24:	3c14bfc0 	lui	s4,0xbfc0
bfc01f28:	26941f2c 	addiu	s4,s4,7980
/home/csy/func/inst/n86_j_ds_ex.S:120
bfc01f2c:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:121
bfc01f30:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n86_j_ds_ex.S:122
bfc01f34:	16570039 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:123
bfc01f38:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:124
bfc01f3c:	24120004 	li	s2,4
/home/csy/func/inst/n86_j_ds_ex.S:125
bfc01f40:	3c14bfc0 	lui	s4,0xbfc0
bfc01f44:	26941f48 	addiu	s4,s4,8008
/home/csy/func/inst/n86_j_ds_ex.S:126
bfc01f48:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:127
bfc01f4c:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n86_j_ds_ex.S:128
bfc01f50:	16570032 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:129
bfc01f54:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:131
bfc01f58:	24120005 	li	s2,5
/home/csy/func/inst/n86_j_ds_ex.S:132
bfc01f5c:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n86_j_ds_ex.S:133
bfc01f60:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n86_j_ds_ex.S:134
bfc01f64:	3c14bfc0 	lui	s4,0xbfc0
bfc01f68:	26941f6c 	addiu	s4,s4,8044
/home/csy/func/inst/n86_j_ds_ex.S:135
bfc01f6c:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:136
bfc01f70:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n86_j_ds_ex.S:137
bfc01f74:	16570029 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:138
bfc01f78:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:139
bfc01f7c:	24120005 	li	s2,5
/home/csy/func/inst/n86_j_ds_ex.S:140
bfc01f80:	3c14bfc0 	lui	s4,0xbfc0
bfc01f84:	26941f88 	addiu	s4,s4,8072
/home/csy/func/inst/n86_j_ds_ex.S:141
bfc01f88:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:142
bfc01f8c:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n86_j_ds_ex.S:143
bfc01f90:	16570022 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:144
bfc01f94:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:145
bfc01f98:	24120005 	li	s2,5
/home/csy/func/inst/n86_j_ds_ex.S:146
bfc01f9c:	3c14bfc0 	lui	s4,0xbfc0
bfc01fa0:	26941fa4 	addiu	s4,s4,8100
/home/csy/func/inst/n86_j_ds_ex.S:147
bfc01fa4:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:148
bfc01fa8:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n86_j_ds_ex.S:149
bfc01fac:	1657001b 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:150
bfc01fb0:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:151
bfc01fb4:	24120005 	li	s2,5
/home/csy/func/inst/n86_j_ds_ex.S:152
bfc01fb8:	3c14bfc0 	lui	s4,0xbfc0
bfc01fbc:	26941fc0 	addiu	s4,s4,8128
/home/csy/func/inst/n86_j_ds_ex.S:153
bfc01fc0:	0bf00807 	j	bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:154
bfc01fc4:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n86_j_ds_ex.S:155
bfc01fc8:	16570014 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:156
bfc01fcc:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:159
bfc01fd0:	24120007 	li	s2,7
/home/csy/func/inst/n86_j_ds_ex.S:160
bfc01fd4:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n86_j_ds_ex.S:161
bfc01fd8:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n86_j_ds_ex.S:162
bfc01fdc:	3c14bfc0 	lui	s4,0xbfc0
bfc01fe0:	26941fe4 	addiu	s4,s4,8164
/home/csy/func/inst/n86_j_ds_ex.S:163
bfc01fe4:	0bf00807 	j	bfc0201c <inst_error>
bfc01fe8:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n86_j_ds_ex.S:165
bfc01fec:	02f20018 	mult	s7,s2
/home/csy/func/inst/n86_j_ds_ex.S:166
bfc01ff0:	1657000a 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:167
bfc01ff4:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:168
bfc01ff8:	24120007 	li	s2,7
/home/csy/func/inst/n86_j_ds_ex.S:169
bfc01ffc:	3c14bfc0 	lui	s4,0xbfc0
bfc02000:	26942008 	addiu	s4,s4,8200
/home/csy/func/inst/n86_j_ds_ex.S:170
bfc02004:	02f20018 	mult	s7,s2
/home/csy/func/inst/n86_j_ds_ex.S:171
bfc02008:	0bf00807 	j	bfc0201c <inst_error>
bfc0200c:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n86_j_ds_ex.S:173
bfc02010:	16570002 	bne	s2,s7,bfc0201c <inst_error>
/home/csy/func/inst/n86_j_ds_ex.S:174
bfc02014:	00000000 	nop
/home/csy/func/inst/n86_j_ds_ex.S:176
bfc02018:	26730001 	addiu	s3,s3,1

bfc0201c <inst_error>:
/home/csy/func/inst/n86_j_ds_ex.S:179
bfc0201c:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n86_j_ds_ex.S:180
bfc02020:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n86_j_ds_ex.S:181
bfc02024:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n86_j_ds_ex.S:182
bfc02028:	03e00008 	jr	ra
/home/csy/func/inst/n86_j_ds_ex.S:183
bfc0202c:	00000000 	nop

bfc02030 <n66_break_ex_test>:
/home/csy/func/inst/n66_break_ex.S:7
bfc02030:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n66_break_ex.S:8
bfc02034:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n66_break_ex.S:9
bfc02038:	24120002 	li	s2,2
/home/csy/func/inst/n66_break_ex.S:10
bfc0203c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n66_break_ex.S:12
bfc02040:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n66_break_ex.S:13
bfc02044:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n66_break_ex.S:14
bfc02048:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n66_break_ex.S:15
bfc0204c:	00000000 	nop
/home/csy/func/inst/n66_break_ex.S:16
bfc02050:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n66_break_ex.S:19
bfc02054:	3c14bfc0 	lui	s4,0xbfc0
bfc02058:	2694205c 	addiu	s4,s4,8284

bfc0205c <break_pc1>:
/home/csy/func/inst/n66_break_ex.S:21
bfc0205c:	0000000d 	break
/home/csy/func/inst/n66_break_ex.S:22
bfc02060:	1657003c 	bne	s2,s7,bfc02154 <inst_error>
/home/csy/func/inst/n66_break_ex.S:23
bfc02064:	00000000 	nop
/home/csy/func/inst/n66_break_ex.S:25
bfc02068:	24120002 	li	s2,2
/home/csy/func/inst/n66_break_ex.S:26
bfc0206c:	3c14bfc0 	lui	s4,0xbfc0
bfc02070:	2694207c 	addiu	s4,s4,8316
/home/csy/func/inst/n66_break_ex.S:27
bfc02074:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n66_break_ex.S:28
bfc02078:	ad140004 	sw	s4,4(t0)

bfc0207c <break_pc2>:
/home/csy/func/inst/n66_break_ex.S:30
bfc0207c:	0000000d 	break
/home/csy/func/inst/n66_break_ex.S:31
bfc02080:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n66_break_ex.S:32
bfc02084:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n66_break_ex.S:33
bfc02088:	15340032 	bne	t1,s4,bfc02154 <inst_error>
/home/csy/func/inst/n66_break_ex.S:34
bfc0208c:	00000000 	nop
/home/csy/func/inst/n66_break_ex.S:35
bfc02090:	16570030 	bne	s2,s7,bfc02154 <inst_error>
/home/csy/func/inst/n66_break_ex.S:36
bfc02094:	00000000 	nop
/home/csy/func/inst/n66_break_ex.S:37
bfc02098:	24120002 	li	s2,2
/home/csy/func/inst/n66_break_ex.S:38
bfc0209c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n66_break_ex.S:40
bfc020a0:	24120002 	li	s2,2
/home/csy/func/inst/n66_break_ex.S:41
bfc020a4:	3c14bfc0 	lui	s4,0xbfc0
bfc020a8:	269420b4 	addiu	s4,s4,8372
/home/csy/func/inst/n66_break_ex.S:42
bfc020ac:	01000011 	mthi	t0
/home/csy/func/inst/n66_break_ex.S:43
bfc020b0:	0110001b 	divu	zero,t0,s0

bfc020b4 <break_pc3>:
/home/csy/func/inst/n66_break_ex.S:45
bfc020b4:	0000000d 	break
/home/csy/func/inst/n66_break_ex.S:46
bfc020b8:	00004810 	mfhi	t1
/home/csy/func/inst/n66_break_ex.S:47
bfc020bc:	11280025 	beq	t1,t0,bfc02154 <inst_error>
/home/csy/func/inst/n66_break_ex.S:48
bfc020c0:	00000000 	nop
/home/csy/func/inst/n66_break_ex.S:49
bfc020c4:	16570023 	bne	s2,s7,bfc02154 <inst_error>
/home/csy/func/inst/n66_break_ex.S:50
bfc020c8:	00000000 	nop
/home/csy/func/inst/n66_break_ex.S:52
bfc020cc:	24120002 	li	s2,2
/home/csy/func/inst/n66_break_ex.S:53
bfc020d0:	3c14bfc0 	lui	s4,0xbfc0
bfc020d4:	269420d8 	addiu	s4,s4,8408

bfc020d8 <break_pc4>:
/home/csy/func/inst/n66_break_ex.S:55
bfc020d8:	0000000d 	break
/home/csy/func/inst/n66_break_ex.S:56
bfc020dc:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n66_break_ex.S:57
bfc020e0:	1657001c 	bne	s2,s7,bfc02154 <inst_error>
/home/csy/func/inst/n66_break_ex.S:58
bfc020e4:	00000000 	nop
/home/csy/func/inst/n66_break_ex.S:60
bfc020e8:	24120002 	li	s2,2
/home/csy/func/inst/n66_break_ex.S:61
bfc020ec:	3c14bfc0 	lui	s4,0xbfc0
bfc020f0:	269420fc 	addiu	s4,s4,8444
/home/csy/func/inst/n66_break_ex.S:62
bfc020f4:	01000013 	mtlo	t0
/home/csy/func/inst/n66_break_ex.S:63
bfc020f8:	01100019 	multu	t0,s0

bfc020fc <break_pc5>:
/home/csy/func/inst/n66_break_ex.S:65
bfc020fc:	0000000d 	break
/home/csy/func/inst/n66_break_ex.S:66
bfc02100:	00004810 	mfhi	t1
/home/csy/func/inst/n66_break_ex.S:67
bfc02104:	11280013 	beq	t1,t0,bfc02154 <inst_error>
/home/csy/func/inst/n66_break_ex.S:68
bfc02108:	00000000 	nop
/home/csy/func/inst/n66_break_ex.S:69
bfc0210c:	16570011 	bne	s2,s7,bfc02154 <inst_error>
/home/csy/func/inst/n66_break_ex.S:70
bfc02110:	00000000 	nop
/home/csy/func/inst/n66_break_ex.S:72
bfc02114:	24120002 	li	s2,2
/home/csy/func/inst/n66_break_ex.S:73
bfc02118:	3c14bfc0 	lui	s4,0xbfc0
bfc0211c:	26942120 	addiu	s4,s4,8480

bfc02120 <break_pc6>:
/home/csy/func/inst/n66_break_ex.S:75
bfc02120:	0000000d 	break
/home/csy/func/inst/n66_break_ex.S:76
bfc02124:	01120019 	multu	t0,s2
/home/csy/func/inst/n66_break_ex.S:77
bfc02128:	1657000a 	bne	s2,s7,bfc02154 <inst_error>
/home/csy/func/inst/n66_break_ex.S:78
bfc0212c:	00000000 	nop
/home/csy/func/inst/n66_break_ex.S:80
bfc02130:	24120002 	li	s2,2
/home/csy/func/inst/n66_break_ex.S:81
bfc02134:	3c14bfc0 	lui	s4,0xbfc0
bfc02138:	26942140 	addiu	s4,s4,8512
/home/csy/func/inst/n66_break_ex.S:82
bfc0213c:	40927000 	mtc0	s2,c0_epc

bfc02140 <break_pc7>:
/home/csy/func/inst/n66_break_ex.S:84
bfc02140:	0000000d 	break
/home/csy/func/inst/n66_break_ex.S:85
bfc02144:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n66_break_ex.S:86
bfc02148:	16570002 	bne	s2,s7,bfc02154 <inst_error>
/home/csy/func/inst/n66_break_ex.S:87
bfc0214c:	00000000 	nop
/home/csy/func/inst/n66_break_ex.S:89
bfc02150:	26730001 	addiu	s3,s3,1

bfc02154 <inst_error>:
/home/csy/func/inst/n66_break_ex.S:92
bfc02154:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n66_break_ex.S:93
bfc02158:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n66_break_ex.S:94
bfc0215c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n66_break_ex.S:95
bfc02160:	03e00008 	jr	ra
/home/csy/func/inst/n66_break_ex.S:96
bfc02164:	00000000 	nop
	...

bfc02170 <n70_lw_adel_ex_test>:
/home/csy/func/inst/n70_lw_adel_ex.S:7
bfc02170:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n70_lw_adel_ex.S:8
bfc02174:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n70_lw_adel_ex.S:9
bfc02178:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:10
bfc0217c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:12
bfc02180:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n70_lw_adel_ex.S:13
bfc02184:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n70_lw_adel_ex.S:14
bfc02188:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n70_lw_adel_ex.S:15
bfc0218c:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:16
bfc02190:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n70_lw_adel_ex.S:19
bfc02194:	3c023958 	lui	v0,0x3958
bfc02198:	3442f252 	ori	v0,v0,0xf252
bfc0219c:	3c033958 	lui	v1,0x3958
bfc021a0:	3463f252 	ori	v1,v1,0xf252
bfc021a4:	3c04800d 	lui	a0,0x800d
bfc021a8:	3484759c 	ori	a0,a0,0x759c
bfc021ac:	3c05b27f 	lui	a1,0xb27f
bfc021b0:	34a59788 	ori	a1,a1,0x9788
bfc021b4:	24878845 	addiu	a3,a0,-30651
bfc021b8:	3c010001 	lui	at,0x1
bfc021bc:	00240821 	addu	at,at,a0
bfc021c0:	ac258844 	sw	a1,-30652(at)
/home/csy/func/inst/n70_lw_adel_ex.S:20
bfc021c4:	3c14bfc0 	lui	s4,0xbfc0
bfc021c8:	269421cc 	addiu	s4,s4,8652
/home/csy/func/inst/n70_lw_adel_ex.S:21
bfc021cc:	8c828845 	lw	v0,-30651(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:22
bfc021d0:	1657009f 	bne	s2,s7,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:23
bfc021d4:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:24
bfc021d8:	1443009d 	bne	v0,v1,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:25
bfc021dc:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:26
bfc021e0:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:27
bfc021e4:	14f6009a 	bne	a3,s6,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:28
bfc021e8:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:30
bfc021ec:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:31
bfc021f0:	3c02c044 	lui	v0,0xc044
bfc021f4:	34422bd0 	ori	v0,v0,0x2bd0
bfc021f8:	3c03c044 	lui	v1,0xc044
bfc021fc:	34632bd0 	ori	v1,v1,0x2bd0
bfc02200:	3c04800d 	lui	a0,0x800d
bfc02204:	34847748 	ori	a0,a0,0x7748
bfc02208:	3c053101 	lui	a1,0x3101
bfc0220c:	34a5bbec 	ori	a1,a1,0xbbec
bfc02210:	24870ea2 	addiu	a3,a0,3746
bfc02214:	ac850ea0 	sw	a1,3744(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:32
bfc02218:	3c14bfc0 	lui	s4,0xbfc0
bfc0221c:	26942228 	addiu	s4,s4,8744
/home/csy/func/inst/n70_lw_adel_ex.S:33
bfc02220:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:34
bfc02224:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:35
bfc02228:	8c820ea2 	lw	v0,3746(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:36
bfc0222c:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:37
bfc02230:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:38
bfc02234:	15340086 	bne	t1,s4,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:39
bfc02238:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:40
bfc0223c:	16570084 	bne	s2,s7,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:41
bfc02240:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:42
bfc02244:	14430082 	bne	v0,v1,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:43
bfc02248:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:44
bfc0224c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:45
bfc02250:	14f6007f 	bne	a3,s6,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:46
bfc02254:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:47
bfc02258:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:48
bfc0225c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n70_lw_adel_ex.S:50
bfc02260:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:51
bfc02264:	3c026892 	lui	v0,0x6892
bfc02268:	34429b5c 	ori	v0,v0,0x9b5c
bfc0226c:	3c036892 	lui	v1,0x6892
bfc02270:	34639b5c 	ori	v1,v1,0x9b5c
bfc02274:	3c04800d 	lui	a0,0x800d
bfc02278:	348459dc 	ori	a0,a0,0x59dc
bfc0227c:	3c0594a1 	lui	a1,0x94a1
bfc02280:	34a5ade4 	ori	a1,a1,0xade4
bfc02284:	24877cee 	addiu	a3,a0,31982
bfc02288:	ac857cec 	sw	a1,31980(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:52
bfc0228c:	3c14bfc0 	lui	s4,0xbfc0
bfc02290:	2694229c 	addiu	s4,s4,8860
/home/csy/func/inst/n70_lw_adel_ex.S:53
bfc02294:	01000011 	mthi	t0
/home/csy/func/inst/n70_lw_adel_ex.S:54
bfc02298:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n70_lw_adel_ex.S:55
bfc0229c:	8c827cee 	lw	v0,31982(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:56
bfc022a0:	00004810 	mfhi	t1
/home/csy/func/inst/n70_lw_adel_ex.S:57
bfc022a4:	1128006a 	beq	t1,t0,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:58
bfc022a8:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:59
bfc022ac:	16570068 	bne	s2,s7,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:60
bfc022b0:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:61
bfc022b4:	14430066 	bne	v0,v1,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:62
bfc022b8:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:63
bfc022bc:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:64
bfc022c0:	14f60063 	bne	a3,s6,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:65
bfc022c4:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:67
bfc022c8:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:68
bfc022cc:	3c027423 	lui	v0,0x7423
bfc022d0:	3442d85f 	ori	v0,v0,0xd85f
bfc022d4:	3c037423 	lui	v1,0x7423
bfc022d8:	3463d85f 	ori	v1,v1,0xd85f
bfc022dc:	3c04800d 	lui	a0,0x800d
bfc022e0:	34847748 	ori	a0,a0,0x7748
bfc022e4:	3c05e2b0 	lui	a1,0xe2b0
bfc022e8:	34a5a2c0 	ori	a1,a1,0xa2c0
bfc022ec:	24874973 	addiu	a3,a0,18803
bfc022f0:	ac854970 	sw	a1,18800(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:69
bfc022f4:	3c14bfc0 	lui	s4,0xbfc0
bfc022f8:	269422fc 	addiu	s4,s4,8956
/home/csy/func/inst/n70_lw_adel_ex.S:70
bfc022fc:	8c824973 	lw	v0,18803(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:71
bfc02300:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n70_lw_adel_ex.S:72
bfc02304:	16570052 	bne	s2,s7,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:73
bfc02308:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:74
bfc0230c:	14430050 	bne	v0,v1,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:75
bfc02310:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:76
bfc02314:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:77
bfc02318:	14f6004d 	bne	a3,s6,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:78
bfc0231c:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:80
bfc02320:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:81
bfc02324:	3c02dd06 	lui	v0,0xdd06
bfc02328:	34424458 	ori	v0,v0,0x4458
bfc0232c:	3c03dd06 	lui	v1,0xdd06
bfc02330:	34634458 	ori	v1,v1,0x4458
bfc02334:	3c04800d 	lui	a0,0x800d
bfc02338:	34845bac 	ori	a0,a0,0x5bac
bfc0233c:	3c050f9e 	lui	a1,0xf9e
bfc02340:	34a5dafa 	ori	a1,a1,0xdafa
bfc02344:	2487003e 	addiu	a3,a0,62
bfc02348:	ac85003c 	sw	a1,60(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:82
bfc0234c:	3c14bfc0 	lui	s4,0xbfc0
bfc02350:	2694235c 	addiu	s4,s4,9052
/home/csy/func/inst/n70_lw_adel_ex.S:83
bfc02354:	01000013 	mtlo	t0
/home/csy/func/inst/n70_lw_adel_ex.S:84
bfc02358:	01100019 	multu	t0,s0
/home/csy/func/inst/n70_lw_adel_ex.S:85
bfc0235c:	8c82003e 	lw	v0,62(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:86
bfc02360:	00004810 	mfhi	t1
/home/csy/func/inst/n70_lw_adel_ex.S:87
bfc02364:	1128003a 	beq	t1,t0,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:88
bfc02368:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:89
bfc0236c:	16570038 	bne	s2,s7,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:90
bfc02370:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:91
bfc02374:	14430036 	bne	v0,v1,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:92
bfc02378:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:93
bfc0237c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:94
bfc02380:	14f60033 	bne	a3,s6,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:95
bfc02384:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:97
bfc02388:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:98
bfc0238c:	3c021514 	lui	v0,0x1514
bfc02390:	34428b6c 	ori	v0,v0,0x8b6c
bfc02394:	3c031514 	lui	v1,0x1514
bfc02398:	34638b6c 	ori	v1,v1,0x8b6c
bfc0239c:	3c04800d 	lui	a0,0x800d
bfc023a0:	34840704 	ori	a0,a0,0x704
bfc023a4:	3c055077 	lui	a1,0x5077
bfc023a8:	34a5f320 	ori	a1,a1,0xf320
bfc023ac:	2487e53f 	addiu	a3,a0,-6849
bfc023b0:	3c010001 	lui	at,0x1
bfc023b4:	00240821 	addu	at,at,a0
bfc023b8:	ac25e53c 	sw	a1,-6852(at)
/home/csy/func/inst/n70_lw_adel_ex.S:99
bfc023bc:	3c14bfc0 	lui	s4,0xbfc0
bfc023c0:	269423c4 	addiu	s4,s4,9156
/home/csy/func/inst/n70_lw_adel_ex.S:100
bfc023c4:	8c82e53f 	lw	v0,-6849(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:101
bfc023c8:	01120019 	multu	t0,s2
/home/csy/func/inst/n70_lw_adel_ex.S:102
bfc023cc:	16570020 	bne	s2,s7,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:103
bfc023d0:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:104
bfc023d4:	1443001e 	bne	v0,v1,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:105
bfc023d8:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:106
bfc023dc:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:107
bfc023e0:	14f6001b 	bne	a3,s6,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:108
bfc023e4:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:110
bfc023e8:	24120004 	li	s2,4
/home/csy/func/inst/n70_lw_adel_ex.S:111
bfc023ec:	3c023958 	lui	v0,0x3958
bfc023f0:	3442f252 	ori	v0,v0,0xf252
bfc023f4:	3c033958 	lui	v1,0x3958
bfc023f8:	3463f252 	ori	v1,v1,0xf252
bfc023fc:	3c04800d 	lui	a0,0x800d
bfc02400:	3484759c 	ori	a0,a0,0x759c
bfc02404:	3c05b27f 	lui	a1,0xb27f
bfc02408:	34a59788 	ori	a1,a1,0x9788
bfc0240c:	24878845 	addiu	a3,a0,-30651
bfc02410:	3c010001 	lui	at,0x1
bfc02414:	00240821 	addu	at,at,a0
bfc02418:	ac258844 	sw	a1,-30652(at)
/home/csy/func/inst/n70_lw_adel_ex.S:112
bfc0241c:	3c14bfc0 	lui	s4,0xbfc0
bfc02420:	26942428 	addiu	s4,s4,9256
/home/csy/func/inst/n70_lw_adel_ex.S:113
bfc02424:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n70_lw_adel_ex.S:114
bfc02428:	8c828845 	lw	v0,-30651(a0)
/home/csy/func/inst/n70_lw_adel_ex.S:115
bfc0242c:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n70_lw_adel_ex.S:116
bfc02430:	16570007 	bne	s2,s7,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:117
bfc02434:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:118
bfc02438:	14430005 	bne	v0,v1,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:119
bfc0243c:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:120
bfc02440:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n70_lw_adel_ex.S:121
bfc02444:	14f60002 	bne	a3,s6,bfc02450 <inst_error>
/home/csy/func/inst/n70_lw_adel_ex.S:122
bfc02448:	00000000 	nop
/home/csy/func/inst/n70_lw_adel_ex.S:124
bfc0244c:	26730001 	addiu	s3,s3,1

bfc02450 <inst_error>:
/home/csy/func/inst/n70_lw_adel_ex.S:127
bfc02450:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n70_lw_adel_ex.S:128
bfc02454:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n70_lw_adel_ex.S:129
bfc02458:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n70_lw_adel_ex.S:130
bfc0245c:	03e00008 	jr	ra
/home/csy/func/inst/n70_lw_adel_ex.S:131
bfc02460:	00000000 	nop
	...

bfc02470 <n82_blez_ds_ex_test>:
/home/csy/func/inst/n82_blez_ds_ex.S:7
bfc02470:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n82_blez_ds_ex.S:8
bfc02474:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n82_blez_ds_ex.S:10
bfc02478:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n82_blez_ds_ex.S:11
bfc0247c:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n82_blez_ds_ex.S:12
bfc02480:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n82_blez_ds_ex.S:13
bfc02484:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:16
bfc02488:	24120001 	li	s2,1
/home/csy/func/inst/n82_blez_ds_ex.S:17
bfc0248c:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n82_blez_ds_ex.S:18
bfc02490:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:19
bfc02494:	3c14bfc0 	lui	s4,0xbfc0
bfc02498:	2694249c 	addiu	s4,s4,9372
/home/csy/func/inst/n82_blez_ds_ex.S:20
bfc0249c:	180000af 	blez	zero,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:21
bfc024a0:	0000000c 	syscall
/home/csy/func/inst/n82_blez_ds_ex.S:22
bfc024a4:	165700ad 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:23
bfc024a8:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:24
bfc024ac:	24120001 	li	s2,1
/home/csy/func/inst/n82_blez_ds_ex.S:25
bfc024b0:	3c14bfc0 	lui	s4,0xbfc0
bfc024b4:	269424b8 	addiu	s4,s4,9400
/home/csy/func/inst/n82_blez_ds_ex.S:26
bfc024b8:	1a4000a8 	blez	s2,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:27
bfc024bc:	0000000c 	syscall
/home/csy/func/inst/n82_blez_ds_ex.S:28
bfc024c0:	165700a6 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:29
bfc024c4:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:31
bfc024c8:	24120002 	li	s2,2
/home/csy/func/inst/n82_blez_ds_ex.S:32
bfc024cc:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n82_blez_ds_ex.S:33
bfc024d0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:34
bfc024d4:	3c14bfc0 	lui	s4,0xbfc0
bfc024d8:	269424dc 	addiu	s4,s4,9436
/home/csy/func/inst/n82_blez_ds_ex.S:35
bfc024dc:	1800009f 	blez	zero,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:36
bfc024e0:	0000000d 	break
/home/csy/func/inst/n82_blez_ds_ex.S:37
bfc024e4:	1657009d 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:38
bfc024e8:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:39
bfc024ec:	24120002 	li	s2,2
/home/csy/func/inst/n82_blez_ds_ex.S:40
bfc024f0:	3c14bfc0 	lui	s4,0xbfc0
bfc024f4:	269424f8 	addiu	s4,s4,9464
/home/csy/func/inst/n82_blez_ds_ex.S:41
bfc024f8:	1a400098 	blez	s2,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:42
bfc024fc:	0000000d 	break
/home/csy/func/inst/n82_blez_ds_ex.S:43
bfc02500:	16570096 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:44
bfc02504:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:46
bfc02508:	24120003 	li	s2,3
/home/csy/func/inst/n82_blez_ds_ex.S:47
bfc0250c:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n82_blez_ds_ex.S:48
bfc02510:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:49
bfc02514:	3c14bfc0 	lui	s4,0xbfc0
bfc02518:	2694252c 	addiu	s4,s4,9516
/home/csy/func/inst/n82_blez_ds_ex.S:50
bfc0251c:	3c04ba03 	lui	a0,0xba03
bfc02520:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n82_blez_ds_ex.S:51
bfc02524:	3c05b615 	lui	a1,0xb615
bfc02528:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n82_blez_ds_ex.S:52
bfc0252c:	1800008b 	blez	zero,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:53
bfc02530:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n82_blez_ds_ex.S:54
bfc02534:	16570089 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:55
bfc02538:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:56
bfc0253c:	24120003 	li	s2,3
/home/csy/func/inst/n82_blez_ds_ex.S:57
bfc02540:	3c14bfc0 	lui	s4,0xbfc0
bfc02544:	26942548 	addiu	s4,s4,9544
/home/csy/func/inst/n82_blez_ds_ex.S:58
bfc02548:	1a400084 	blez	s2,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:59
bfc0254c:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n82_blez_ds_ex.S:60
bfc02550:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:61
bfc02554:	16570081 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:62
bfc02558:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:63
bfc0255c:	24120003 	li	s2,3
/home/csy/func/inst/n82_blez_ds_ex.S:64
bfc02560:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:65
bfc02564:	3c14bfc0 	lui	s4,0xbfc0
bfc02568:	26942574 	addiu	s4,s4,9588
/home/csy/func/inst/n82_blez_ds_ex.S:66
bfc0256c:	3c047fff 	lui	a0,0x7fff
bfc02570:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n82_blez_ds_ex.S:67
bfc02574:	18000079 	blez	zero,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:68
bfc02578:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n82_blez_ds_ex.S:69
bfc0257c:	16570077 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:70
bfc02580:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:71
bfc02584:	24120003 	li	s2,3
/home/csy/func/inst/n82_blez_ds_ex.S:72
bfc02588:	3c14bfc0 	lui	s4,0xbfc0
bfc0258c:	26942590 	addiu	s4,s4,9616
/home/csy/func/inst/n82_blez_ds_ex.S:73
bfc02590:	1a400072 	blez	s2,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:74
bfc02594:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n82_blez_ds_ex.S:75
bfc02598:	16570070 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:76
bfc0259c:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:77
bfc025a0:	24120003 	li	s2,3
/home/csy/func/inst/n82_blez_ds_ex.S:78
bfc025a4:	3c14bfc0 	lui	s4,0xbfc0
bfc025a8:	269425bc 	addiu	s4,s4,9660
/home/csy/func/inst/n82_blez_ds_ex.S:79
bfc025ac:	3c04a85e 	lui	a0,0xa85e
bfc025b0:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n82_blez_ds_ex.S:80
bfc025b4:	3c056b7e 	lui	a1,0x6b7e
bfc025b8:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n82_blez_ds_ex.S:81
bfc025bc:	18000067 	blez	zero,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:82
bfc025c0:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n82_blez_ds_ex.S:83
bfc025c4:	16570065 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:84
bfc025c8:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:85
bfc025cc:	24120003 	li	s2,3
/home/csy/func/inst/n82_blez_ds_ex.S:86
bfc025d0:	3c14bfc0 	lui	s4,0xbfc0
bfc025d4:	269425d8 	addiu	s4,s4,9688
/home/csy/func/inst/n82_blez_ds_ex.S:87
bfc025d8:	1a400060 	blez	s2,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:88
bfc025dc:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n82_blez_ds_ex.S:89
bfc025e0:	1657005e 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:90
bfc025e4:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:92
bfc025e8:	24120004 	li	s2,4
/home/csy/func/inst/n82_blez_ds_ex.S:93
bfc025ec:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n82_blez_ds_ex.S:94
bfc025f0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:95
bfc025f4:	3c14bfc0 	lui	s4,0xbfc0
bfc025f8:	269425fc 	addiu	s4,s4,9724
/home/csy/func/inst/n82_blez_ds_ex.S:96
bfc025fc:	18000057 	blez	zero,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:97
bfc02600:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:98
bfc02604:	16570055 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:99
bfc02608:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:100
bfc0260c:	24120004 	li	s2,4
/home/csy/func/inst/n82_blez_ds_ex.S:101
bfc02610:	3c14bfc0 	lui	s4,0xbfc0
bfc02614:	26942618 	addiu	s4,s4,9752
/home/csy/func/inst/n82_blez_ds_ex.S:102
bfc02618:	1a400050 	blez	s2,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:103
bfc0261c:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:104
bfc02620:	1657004e 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:105
bfc02624:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:106
bfc02628:	24120004 	li	s2,4
/home/csy/func/inst/n82_blez_ds_ex.S:107
bfc0262c:	3c14bfc0 	lui	s4,0xbfc0
bfc02630:	26942634 	addiu	s4,s4,9780
/home/csy/func/inst/n82_blez_ds_ex.S:108
bfc02634:	18000049 	blez	zero,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:109
bfc02638:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:110
bfc0263c:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n82_blez_ds_ex.S:111
bfc02640:	16570046 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:112
bfc02644:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:113
bfc02648:	24120004 	li	s2,4
/home/csy/func/inst/n82_blez_ds_ex.S:114
bfc0264c:	3c14bfc0 	lui	s4,0xbfc0
bfc02650:	26942654 	addiu	s4,s4,9812
/home/csy/func/inst/n82_blez_ds_ex.S:115
bfc02654:	1a400041 	blez	s2,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:116
bfc02658:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:117
bfc0265c:	1657003f 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:118
bfc02660:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:119
bfc02664:	3c14bfc0 	lui	s4,0xbfc0
bfc02668:	2694266c 	addiu	s4,s4,9836
/home/csy/func/inst/n82_blez_ds_ex.S:120
bfc0266c:	1800003b 	blez	zero,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:121
bfc02670:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:122
bfc02674:	16570039 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:123
bfc02678:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:124
bfc0267c:	24120004 	li	s2,4
/home/csy/func/inst/n82_blez_ds_ex.S:125
bfc02680:	3c14bfc0 	lui	s4,0xbfc0
bfc02684:	26942688 	addiu	s4,s4,9864
/home/csy/func/inst/n82_blez_ds_ex.S:126
bfc02688:	1a400034 	blez	s2,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:127
bfc0268c:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:128
bfc02690:	16570032 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:129
bfc02694:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:131
bfc02698:	24120005 	li	s2,5
/home/csy/func/inst/n82_blez_ds_ex.S:132
bfc0269c:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n82_blez_ds_ex.S:133
bfc026a0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:134
bfc026a4:	3c14bfc0 	lui	s4,0xbfc0
bfc026a8:	269426ac 	addiu	s4,s4,9900
/home/csy/func/inst/n82_blez_ds_ex.S:135
bfc026ac:	1800002b 	blez	zero,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:136
bfc026b0:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:137
bfc026b4:	16570029 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:138
bfc026b8:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:139
bfc026bc:	24120005 	li	s2,5
/home/csy/func/inst/n82_blez_ds_ex.S:140
bfc026c0:	3c14bfc0 	lui	s4,0xbfc0
bfc026c4:	269426c8 	addiu	s4,s4,9928
/home/csy/func/inst/n82_blez_ds_ex.S:141
bfc026c8:	1a400024 	blez	s2,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:142
bfc026cc:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:143
bfc026d0:	16570022 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:144
bfc026d4:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:145
bfc026d8:	24120005 	li	s2,5
/home/csy/func/inst/n82_blez_ds_ex.S:146
bfc026dc:	3c14bfc0 	lui	s4,0xbfc0
bfc026e0:	269426e4 	addiu	s4,s4,9956
/home/csy/func/inst/n82_blez_ds_ex.S:147
bfc026e4:	1800001d 	blez	zero,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:148
bfc026e8:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:149
bfc026ec:	1657001b 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:150
bfc026f0:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:151
bfc026f4:	24120005 	li	s2,5
/home/csy/func/inst/n82_blez_ds_ex.S:152
bfc026f8:	3c14bfc0 	lui	s4,0xbfc0
bfc026fc:	26942700 	addiu	s4,s4,9984
/home/csy/func/inst/n82_blez_ds_ex.S:153
bfc02700:	1a400016 	blez	s2,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:154
bfc02704:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:155
bfc02708:	16570014 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:156
bfc0270c:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:159
bfc02710:	24120007 	li	s2,7
/home/csy/func/inst/n82_blez_ds_ex.S:160
bfc02714:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n82_blez_ds_ex.S:161
bfc02718:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n82_blez_ds_ex.S:162
bfc0271c:	3c14bfc0 	lui	s4,0xbfc0
bfc02720:	26942724 	addiu	s4,s4,10020
/home/csy/func/inst/n82_blez_ds_ex.S:163
bfc02724:	1800000d 	blez	zero,bfc0275c <inst_error>
bfc02728:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n82_blez_ds_ex.S:165
bfc0272c:	02f20018 	mult	s7,s2
/home/csy/func/inst/n82_blez_ds_ex.S:166
bfc02730:	1657000a 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:167
bfc02734:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:168
bfc02738:	24120007 	li	s2,7
/home/csy/func/inst/n82_blez_ds_ex.S:169
bfc0273c:	3c14bfc0 	lui	s4,0xbfc0
bfc02740:	26942748 	addiu	s4,s4,10056
/home/csy/func/inst/n82_blez_ds_ex.S:170
bfc02744:	02f20018 	mult	s7,s2
/home/csy/func/inst/n82_blez_ds_ex.S:171
bfc02748:	1a400004 	blez	s2,bfc0275c <inst_error>
bfc0274c:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n82_blez_ds_ex.S:173
bfc02750:	16570002 	bne	s2,s7,bfc0275c <inst_error>
/home/csy/func/inst/n82_blez_ds_ex.S:174
bfc02754:	00000000 	nop
/home/csy/func/inst/n82_blez_ds_ex.S:176
bfc02758:	26730001 	addiu	s3,s3,1

bfc0275c <inst_error>:
/home/csy/func/inst/n82_blez_ds_ex.S:179
bfc0275c:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n82_blez_ds_ex.S:180
bfc02760:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n82_blez_ds_ex.S:181
bfc02764:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n82_blez_ds_ex.S:182
bfc02768:	03e00008 	jr	ra
/home/csy/func/inst/n82_blez_ds_ex.S:183
bfc0276c:	00000000 	nop

bfc02770 <n80_bgez_ds_ex_test>:
/home/csy/func/inst/n80_bgez_ds_ex.S:7
bfc02770:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n80_bgez_ds_ex.S:8
bfc02774:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n80_bgez_ds_ex.S:10
bfc02778:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n80_bgez_ds_ex.S:11
bfc0277c:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n80_bgez_ds_ex.S:12
bfc02780:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n80_bgez_ds_ex.S:13
bfc02784:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:16
bfc02788:	24120001 	li	s2,1
/home/csy/func/inst/n80_bgez_ds_ex.S:17
bfc0278c:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n80_bgez_ds_ex.S:18
bfc02790:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:19
bfc02794:	3c14bfc0 	lui	s4,0xbfc0
bfc02798:	2694279c 	addiu	s4,s4,10140
/home/csy/func/inst/n80_bgez_ds_ex.S:20
bfc0279c:	040100af 	b	bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:21
bfc027a0:	0000000c 	syscall
/home/csy/func/inst/n80_bgez_ds_ex.S:22
bfc027a4:	165700ad 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:23
bfc027a8:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:24
bfc027ac:	24120001 	li	s2,1
/home/csy/func/inst/n80_bgez_ds_ex.S:25
bfc027b0:	3c14bfc0 	lui	s4,0xbfc0
bfc027b4:	269427b8 	addiu	s4,s4,10168
/home/csy/func/inst/n80_bgez_ds_ex.S:26
bfc027b8:	050100a8 	bgez	t0,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:27
bfc027bc:	0000000c 	syscall
/home/csy/func/inst/n80_bgez_ds_ex.S:28
bfc027c0:	165700a6 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:29
bfc027c4:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:31
bfc027c8:	24120002 	li	s2,2
/home/csy/func/inst/n80_bgez_ds_ex.S:32
bfc027cc:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n80_bgez_ds_ex.S:33
bfc027d0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:34
bfc027d4:	3c14bfc0 	lui	s4,0xbfc0
bfc027d8:	269427dc 	addiu	s4,s4,10204
/home/csy/func/inst/n80_bgez_ds_ex.S:35
bfc027dc:	0401009f 	b	bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:36
bfc027e0:	0000000d 	break
/home/csy/func/inst/n80_bgez_ds_ex.S:37
bfc027e4:	1657009d 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:38
bfc027e8:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:39
bfc027ec:	24120002 	li	s2,2
/home/csy/func/inst/n80_bgez_ds_ex.S:40
bfc027f0:	3c14bfc0 	lui	s4,0xbfc0
bfc027f4:	269427f8 	addiu	s4,s4,10232
/home/csy/func/inst/n80_bgez_ds_ex.S:41
bfc027f8:	05010098 	bgez	t0,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:42
bfc027fc:	0000000d 	break
/home/csy/func/inst/n80_bgez_ds_ex.S:43
bfc02800:	16570096 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:44
bfc02804:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:46
bfc02808:	24120003 	li	s2,3
/home/csy/func/inst/n80_bgez_ds_ex.S:47
bfc0280c:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n80_bgez_ds_ex.S:48
bfc02810:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:49
bfc02814:	3c14bfc0 	lui	s4,0xbfc0
bfc02818:	2694282c 	addiu	s4,s4,10284
/home/csy/func/inst/n80_bgez_ds_ex.S:50
bfc0281c:	3c04ba03 	lui	a0,0xba03
bfc02820:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n80_bgez_ds_ex.S:51
bfc02824:	3c05b615 	lui	a1,0xb615
bfc02828:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n80_bgez_ds_ex.S:52
bfc0282c:	0401008b 	b	bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:53
bfc02830:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n80_bgez_ds_ex.S:54
bfc02834:	16570089 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:55
bfc02838:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:56
bfc0283c:	24120003 	li	s2,3
/home/csy/func/inst/n80_bgez_ds_ex.S:57
bfc02840:	3c14bfc0 	lui	s4,0xbfc0
bfc02844:	26942848 	addiu	s4,s4,10312
/home/csy/func/inst/n80_bgez_ds_ex.S:58
bfc02848:	05010084 	bgez	t0,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:59
bfc0284c:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n80_bgez_ds_ex.S:60
bfc02850:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:61
bfc02854:	16570081 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:62
bfc02858:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:63
bfc0285c:	24120003 	li	s2,3
/home/csy/func/inst/n80_bgez_ds_ex.S:64
bfc02860:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:65
bfc02864:	3c14bfc0 	lui	s4,0xbfc0
bfc02868:	26942874 	addiu	s4,s4,10356
/home/csy/func/inst/n80_bgez_ds_ex.S:66
bfc0286c:	3c047fff 	lui	a0,0x7fff
bfc02870:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n80_bgez_ds_ex.S:67
bfc02874:	04010079 	b	bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:68
bfc02878:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n80_bgez_ds_ex.S:69
bfc0287c:	16570077 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:70
bfc02880:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:71
bfc02884:	24120003 	li	s2,3
/home/csy/func/inst/n80_bgez_ds_ex.S:72
bfc02888:	3c14bfc0 	lui	s4,0xbfc0
bfc0288c:	26942890 	addiu	s4,s4,10384
/home/csy/func/inst/n80_bgez_ds_ex.S:73
bfc02890:	05010072 	bgez	t0,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:74
bfc02894:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n80_bgez_ds_ex.S:75
bfc02898:	16570070 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:76
bfc0289c:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:77
bfc028a0:	24120003 	li	s2,3
/home/csy/func/inst/n80_bgez_ds_ex.S:78
bfc028a4:	3c14bfc0 	lui	s4,0xbfc0
bfc028a8:	269428bc 	addiu	s4,s4,10428
/home/csy/func/inst/n80_bgez_ds_ex.S:79
bfc028ac:	3c04a85e 	lui	a0,0xa85e
bfc028b0:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n80_bgez_ds_ex.S:80
bfc028b4:	3c056b7e 	lui	a1,0x6b7e
bfc028b8:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n80_bgez_ds_ex.S:81
bfc028bc:	04010067 	b	bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:82
bfc028c0:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n80_bgez_ds_ex.S:83
bfc028c4:	16570065 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:84
bfc028c8:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:85
bfc028cc:	24120003 	li	s2,3
/home/csy/func/inst/n80_bgez_ds_ex.S:86
bfc028d0:	3c14bfc0 	lui	s4,0xbfc0
bfc028d4:	269428d8 	addiu	s4,s4,10456
/home/csy/func/inst/n80_bgez_ds_ex.S:87
bfc028d8:	05010060 	bgez	t0,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:88
bfc028dc:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n80_bgez_ds_ex.S:89
bfc028e0:	1657005e 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:90
bfc028e4:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:92
bfc028e8:	24120004 	li	s2,4
/home/csy/func/inst/n80_bgez_ds_ex.S:93
bfc028ec:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n80_bgez_ds_ex.S:94
bfc028f0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:95
bfc028f4:	3c14bfc0 	lui	s4,0xbfc0
bfc028f8:	269428fc 	addiu	s4,s4,10492
/home/csy/func/inst/n80_bgez_ds_ex.S:96
bfc028fc:	04010057 	b	bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:97
bfc02900:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:98
bfc02904:	16570055 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:99
bfc02908:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:100
bfc0290c:	24120004 	li	s2,4
/home/csy/func/inst/n80_bgez_ds_ex.S:101
bfc02910:	3c14bfc0 	lui	s4,0xbfc0
bfc02914:	26942918 	addiu	s4,s4,10520
/home/csy/func/inst/n80_bgez_ds_ex.S:102
bfc02918:	05010050 	bgez	t0,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:103
bfc0291c:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:104
bfc02920:	1657004e 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:105
bfc02924:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:106
bfc02928:	24120004 	li	s2,4
/home/csy/func/inst/n80_bgez_ds_ex.S:107
bfc0292c:	3c14bfc0 	lui	s4,0xbfc0
bfc02930:	26942934 	addiu	s4,s4,10548
/home/csy/func/inst/n80_bgez_ds_ex.S:108
bfc02934:	04010049 	b	bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:109
bfc02938:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:110
bfc0293c:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n80_bgez_ds_ex.S:111
bfc02940:	16570046 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:112
bfc02944:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:113
bfc02948:	24120004 	li	s2,4
/home/csy/func/inst/n80_bgez_ds_ex.S:114
bfc0294c:	3c14bfc0 	lui	s4,0xbfc0
bfc02950:	26942954 	addiu	s4,s4,10580
/home/csy/func/inst/n80_bgez_ds_ex.S:115
bfc02954:	05010041 	bgez	t0,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:116
bfc02958:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:117
bfc0295c:	1657003f 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:118
bfc02960:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:119
bfc02964:	3c14bfc0 	lui	s4,0xbfc0
bfc02968:	2694296c 	addiu	s4,s4,10604
/home/csy/func/inst/n80_bgez_ds_ex.S:120
bfc0296c:	0401003b 	b	bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:121
bfc02970:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:122
bfc02974:	16570039 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:123
bfc02978:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:124
bfc0297c:	24120004 	li	s2,4
/home/csy/func/inst/n80_bgez_ds_ex.S:125
bfc02980:	3c14bfc0 	lui	s4,0xbfc0
bfc02984:	26942988 	addiu	s4,s4,10632
/home/csy/func/inst/n80_bgez_ds_ex.S:126
bfc02988:	05010034 	bgez	t0,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:127
bfc0298c:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:128
bfc02990:	16570032 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:129
bfc02994:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:131
bfc02998:	24120005 	li	s2,5
/home/csy/func/inst/n80_bgez_ds_ex.S:132
bfc0299c:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n80_bgez_ds_ex.S:133
bfc029a0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:134
bfc029a4:	3c14bfc0 	lui	s4,0xbfc0
bfc029a8:	269429ac 	addiu	s4,s4,10668
/home/csy/func/inst/n80_bgez_ds_ex.S:135
bfc029ac:	0401002b 	b	bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:136
bfc029b0:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:137
bfc029b4:	16570029 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:138
bfc029b8:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:139
bfc029bc:	24120005 	li	s2,5
/home/csy/func/inst/n80_bgez_ds_ex.S:140
bfc029c0:	3c14bfc0 	lui	s4,0xbfc0
bfc029c4:	269429c8 	addiu	s4,s4,10696
/home/csy/func/inst/n80_bgez_ds_ex.S:141
bfc029c8:	05010024 	bgez	t0,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:142
bfc029cc:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:143
bfc029d0:	16570022 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:144
bfc029d4:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:145
bfc029d8:	24120005 	li	s2,5
/home/csy/func/inst/n80_bgez_ds_ex.S:146
bfc029dc:	3c14bfc0 	lui	s4,0xbfc0
bfc029e0:	269429e4 	addiu	s4,s4,10724
/home/csy/func/inst/n80_bgez_ds_ex.S:147
bfc029e4:	0401001d 	b	bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:148
bfc029e8:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:149
bfc029ec:	1657001b 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:150
bfc029f0:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:151
bfc029f4:	24120005 	li	s2,5
/home/csy/func/inst/n80_bgez_ds_ex.S:152
bfc029f8:	3c14bfc0 	lui	s4,0xbfc0
bfc029fc:	26942a00 	addiu	s4,s4,10752
/home/csy/func/inst/n80_bgez_ds_ex.S:153
bfc02a00:	05010016 	bgez	t0,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:154
bfc02a04:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:155
bfc02a08:	16570014 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:156
bfc02a0c:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:159
bfc02a10:	24120007 	li	s2,7
/home/csy/func/inst/n80_bgez_ds_ex.S:160
bfc02a14:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n80_bgez_ds_ex.S:161
bfc02a18:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n80_bgez_ds_ex.S:162
bfc02a1c:	3c14bfc0 	lui	s4,0xbfc0
bfc02a20:	26942a24 	addiu	s4,s4,10788
/home/csy/func/inst/n80_bgez_ds_ex.S:163
bfc02a24:	0401000d 	b	bfc02a5c <inst_error>
bfc02a28:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n80_bgez_ds_ex.S:165
bfc02a2c:	02f20018 	mult	s7,s2
/home/csy/func/inst/n80_bgez_ds_ex.S:166
bfc02a30:	1657000a 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:167
bfc02a34:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:168
bfc02a38:	24120007 	li	s2,7
/home/csy/func/inst/n80_bgez_ds_ex.S:169
bfc02a3c:	3c14bfc0 	lui	s4,0xbfc0
bfc02a40:	26942a48 	addiu	s4,s4,10824
/home/csy/func/inst/n80_bgez_ds_ex.S:170
bfc02a44:	02f20018 	mult	s7,s2
/home/csy/func/inst/n80_bgez_ds_ex.S:171
bfc02a48:	05010004 	bgez	t0,bfc02a5c <inst_error>
bfc02a4c:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n80_bgez_ds_ex.S:173
bfc02a50:	16570002 	bne	s2,s7,bfc02a5c <inst_error>
/home/csy/func/inst/n80_bgez_ds_ex.S:174
bfc02a54:	00000000 	nop
/home/csy/func/inst/n80_bgez_ds_ex.S:176
bfc02a58:	26730001 	addiu	s3,s3,1

bfc02a5c <inst_error>:
/home/csy/func/inst/n80_bgez_ds_ex.S:179
bfc02a5c:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n80_bgez_ds_ex.S:180
bfc02a60:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n80_bgez_ds_ex.S:181
bfc02a64:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n80_bgez_ds_ex.S:182
bfc02a68:	03e00008 	jr	ra
/home/csy/func/inst/n80_bgez_ds_ex.S:183
bfc02a6c:	00000000 	nop

bfc02a70 <n88_jr_ds_ex_test>:
/home/csy/func/inst/n88_jr_ds_ex.S:7
bfc02a70:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n88_jr_ds_ex.S:8
bfc02a74:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n88_jr_ds_ex.S:10
bfc02a78:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n88_jr_ds_ex.S:11
bfc02a7c:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n88_jr_ds_ex.S:12
bfc02a80:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n88_jr_ds_ex.S:13
bfc02a84:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:16
bfc02a88:	24120001 	li	s2,1
/home/csy/func/inst/n88_jr_ds_ex.S:17
bfc02a8c:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n88_jr_ds_ex.S:18
bfc02a90:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:19
bfc02a94:	3c14bfc0 	lui	s4,0xbfc0
bfc02a98:	26942a9c 	addiu	s4,s4,10908
/home/csy/func/inst/n88_jr_ds_ex.S:20
bfc02a9c:	02400008 	jr	s2
/home/csy/func/inst/n88_jr_ds_ex.S:21
bfc02aa0:	0000000c 	syscall
/home/csy/func/inst/n88_jr_ds_ex.S:22
bfc02aa4:	165700ad 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:23
bfc02aa8:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:24
bfc02aac:	24120001 	li	s2,1
/home/csy/func/inst/n88_jr_ds_ex.S:25
bfc02ab0:	3c14bfc0 	lui	s4,0xbfc0
bfc02ab4:	26942ab8 	addiu	s4,s4,10936
/home/csy/func/inst/n88_jr_ds_ex.S:26
bfc02ab8:	01000008 	jr	t0
/home/csy/func/inst/n88_jr_ds_ex.S:27
bfc02abc:	0000000c 	syscall
/home/csy/func/inst/n88_jr_ds_ex.S:28
bfc02ac0:	165700a6 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:29
bfc02ac4:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:31
bfc02ac8:	24120002 	li	s2,2
/home/csy/func/inst/n88_jr_ds_ex.S:32
bfc02acc:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n88_jr_ds_ex.S:33
bfc02ad0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:34
bfc02ad4:	3c14bfc0 	lui	s4,0xbfc0
bfc02ad8:	26942adc 	addiu	s4,s4,10972
/home/csy/func/inst/n88_jr_ds_ex.S:35
bfc02adc:	02400008 	jr	s2
/home/csy/func/inst/n88_jr_ds_ex.S:36
bfc02ae0:	0000000d 	break
/home/csy/func/inst/n88_jr_ds_ex.S:37
bfc02ae4:	1657009d 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:38
bfc02ae8:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:39
bfc02aec:	24120002 	li	s2,2
/home/csy/func/inst/n88_jr_ds_ex.S:40
bfc02af0:	3c14bfc0 	lui	s4,0xbfc0
bfc02af4:	26942af8 	addiu	s4,s4,11000
/home/csy/func/inst/n88_jr_ds_ex.S:41
bfc02af8:	01000008 	jr	t0
/home/csy/func/inst/n88_jr_ds_ex.S:42
bfc02afc:	0000000d 	break
/home/csy/func/inst/n88_jr_ds_ex.S:43
bfc02b00:	16570096 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:44
bfc02b04:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:46
bfc02b08:	24120003 	li	s2,3
/home/csy/func/inst/n88_jr_ds_ex.S:47
bfc02b0c:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n88_jr_ds_ex.S:48
bfc02b10:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:49
bfc02b14:	3c14bfc0 	lui	s4,0xbfc0
bfc02b18:	26942b2c 	addiu	s4,s4,11052
/home/csy/func/inst/n88_jr_ds_ex.S:50
bfc02b1c:	3c04ba03 	lui	a0,0xba03
bfc02b20:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n88_jr_ds_ex.S:51
bfc02b24:	3c05b615 	lui	a1,0xb615
bfc02b28:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n88_jr_ds_ex.S:52
bfc02b2c:	02400008 	jr	s2
/home/csy/func/inst/n88_jr_ds_ex.S:53
bfc02b30:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n88_jr_ds_ex.S:54
bfc02b34:	16570089 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:55
bfc02b38:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:56
bfc02b3c:	24120003 	li	s2,3
/home/csy/func/inst/n88_jr_ds_ex.S:57
bfc02b40:	3c14bfc0 	lui	s4,0xbfc0
bfc02b44:	26942b48 	addiu	s4,s4,11080
/home/csy/func/inst/n88_jr_ds_ex.S:58
bfc02b48:	01000008 	jr	t0
/home/csy/func/inst/n88_jr_ds_ex.S:59
bfc02b4c:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n88_jr_ds_ex.S:60
bfc02b50:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:61
bfc02b54:	16570081 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:62
bfc02b58:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:63
bfc02b5c:	24120003 	li	s2,3
/home/csy/func/inst/n88_jr_ds_ex.S:64
bfc02b60:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:65
bfc02b64:	3c14bfc0 	lui	s4,0xbfc0
bfc02b68:	26942b74 	addiu	s4,s4,11124
/home/csy/func/inst/n88_jr_ds_ex.S:66
bfc02b6c:	3c047fff 	lui	a0,0x7fff
bfc02b70:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n88_jr_ds_ex.S:67
bfc02b74:	02400008 	jr	s2
/home/csy/func/inst/n88_jr_ds_ex.S:68
bfc02b78:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n88_jr_ds_ex.S:69
bfc02b7c:	16570077 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:70
bfc02b80:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:71
bfc02b84:	24120003 	li	s2,3
/home/csy/func/inst/n88_jr_ds_ex.S:72
bfc02b88:	3c14bfc0 	lui	s4,0xbfc0
bfc02b8c:	26942b90 	addiu	s4,s4,11152
/home/csy/func/inst/n88_jr_ds_ex.S:73
bfc02b90:	01000008 	jr	t0
/home/csy/func/inst/n88_jr_ds_ex.S:74
bfc02b94:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n88_jr_ds_ex.S:75
bfc02b98:	16570070 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:76
bfc02b9c:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:77
bfc02ba0:	24120003 	li	s2,3
/home/csy/func/inst/n88_jr_ds_ex.S:78
bfc02ba4:	3c14bfc0 	lui	s4,0xbfc0
bfc02ba8:	26942bbc 	addiu	s4,s4,11196
/home/csy/func/inst/n88_jr_ds_ex.S:79
bfc02bac:	3c04a85e 	lui	a0,0xa85e
bfc02bb0:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n88_jr_ds_ex.S:80
bfc02bb4:	3c056b7e 	lui	a1,0x6b7e
bfc02bb8:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n88_jr_ds_ex.S:81
bfc02bbc:	02400008 	jr	s2
/home/csy/func/inst/n88_jr_ds_ex.S:82
bfc02bc0:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n88_jr_ds_ex.S:83
bfc02bc4:	16570065 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:84
bfc02bc8:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:85
bfc02bcc:	24120003 	li	s2,3
/home/csy/func/inst/n88_jr_ds_ex.S:86
bfc02bd0:	3c14bfc0 	lui	s4,0xbfc0
bfc02bd4:	26942bd8 	addiu	s4,s4,11224
/home/csy/func/inst/n88_jr_ds_ex.S:87
bfc02bd8:	01000008 	jr	t0
/home/csy/func/inst/n88_jr_ds_ex.S:88
bfc02bdc:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n88_jr_ds_ex.S:89
bfc02be0:	1657005e 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:90
bfc02be4:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:92
bfc02be8:	24120004 	li	s2,4
/home/csy/func/inst/n88_jr_ds_ex.S:93
bfc02bec:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n88_jr_ds_ex.S:94
bfc02bf0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:95
bfc02bf4:	3c14bfc0 	lui	s4,0xbfc0
bfc02bf8:	26942bfc 	addiu	s4,s4,11260
/home/csy/func/inst/n88_jr_ds_ex.S:96
bfc02bfc:	02400008 	jr	s2
/home/csy/func/inst/n88_jr_ds_ex.S:97
bfc02c00:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:98
bfc02c04:	16570055 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:99
bfc02c08:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:100
bfc02c0c:	24120004 	li	s2,4
/home/csy/func/inst/n88_jr_ds_ex.S:101
bfc02c10:	3c14bfc0 	lui	s4,0xbfc0
bfc02c14:	26942c18 	addiu	s4,s4,11288
/home/csy/func/inst/n88_jr_ds_ex.S:102
bfc02c18:	01000008 	jr	t0
/home/csy/func/inst/n88_jr_ds_ex.S:103
bfc02c1c:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:104
bfc02c20:	1657004e 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:105
bfc02c24:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:106
bfc02c28:	24120004 	li	s2,4
/home/csy/func/inst/n88_jr_ds_ex.S:107
bfc02c2c:	3c14bfc0 	lui	s4,0xbfc0
bfc02c30:	26942c34 	addiu	s4,s4,11316
/home/csy/func/inst/n88_jr_ds_ex.S:108
bfc02c34:	02400008 	jr	s2
/home/csy/func/inst/n88_jr_ds_ex.S:109
bfc02c38:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:110
bfc02c3c:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n88_jr_ds_ex.S:111
bfc02c40:	16570046 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:112
bfc02c44:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:113
bfc02c48:	24120004 	li	s2,4
/home/csy/func/inst/n88_jr_ds_ex.S:114
bfc02c4c:	3c14bfc0 	lui	s4,0xbfc0
bfc02c50:	26942c54 	addiu	s4,s4,11348
/home/csy/func/inst/n88_jr_ds_ex.S:115
bfc02c54:	01000008 	jr	t0
/home/csy/func/inst/n88_jr_ds_ex.S:116
bfc02c58:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:117
bfc02c5c:	1657003f 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:118
bfc02c60:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:119
bfc02c64:	3c14bfc0 	lui	s4,0xbfc0
bfc02c68:	26942c6c 	addiu	s4,s4,11372
/home/csy/func/inst/n88_jr_ds_ex.S:120
bfc02c6c:	02400008 	jr	s2
/home/csy/func/inst/n88_jr_ds_ex.S:121
bfc02c70:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:122
bfc02c74:	16570039 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:123
bfc02c78:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:124
bfc02c7c:	24120004 	li	s2,4
/home/csy/func/inst/n88_jr_ds_ex.S:125
bfc02c80:	3c14bfc0 	lui	s4,0xbfc0
bfc02c84:	26942c88 	addiu	s4,s4,11400
/home/csy/func/inst/n88_jr_ds_ex.S:126
bfc02c88:	01000008 	jr	t0
/home/csy/func/inst/n88_jr_ds_ex.S:127
bfc02c8c:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:128
bfc02c90:	16570032 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:129
bfc02c94:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:131
bfc02c98:	24120005 	li	s2,5
/home/csy/func/inst/n88_jr_ds_ex.S:132
bfc02c9c:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n88_jr_ds_ex.S:133
bfc02ca0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:134
bfc02ca4:	3c14bfc0 	lui	s4,0xbfc0
bfc02ca8:	26942cac 	addiu	s4,s4,11436
/home/csy/func/inst/n88_jr_ds_ex.S:135
bfc02cac:	02400008 	jr	s2
/home/csy/func/inst/n88_jr_ds_ex.S:136
bfc02cb0:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:137
bfc02cb4:	16570029 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:138
bfc02cb8:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:139
bfc02cbc:	24120005 	li	s2,5
/home/csy/func/inst/n88_jr_ds_ex.S:140
bfc02cc0:	3c14bfc0 	lui	s4,0xbfc0
bfc02cc4:	26942cc8 	addiu	s4,s4,11464
/home/csy/func/inst/n88_jr_ds_ex.S:141
bfc02cc8:	01000008 	jr	t0
/home/csy/func/inst/n88_jr_ds_ex.S:142
bfc02ccc:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:143
bfc02cd0:	16570022 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:144
bfc02cd4:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:145
bfc02cd8:	24120005 	li	s2,5
/home/csy/func/inst/n88_jr_ds_ex.S:146
bfc02cdc:	3c14bfc0 	lui	s4,0xbfc0
bfc02ce0:	26942ce4 	addiu	s4,s4,11492
/home/csy/func/inst/n88_jr_ds_ex.S:147
bfc02ce4:	02400008 	jr	s2
/home/csy/func/inst/n88_jr_ds_ex.S:148
bfc02ce8:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:149
bfc02cec:	1657001b 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:150
bfc02cf0:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:151
bfc02cf4:	24120005 	li	s2,5
/home/csy/func/inst/n88_jr_ds_ex.S:152
bfc02cf8:	3c14bfc0 	lui	s4,0xbfc0
bfc02cfc:	26942d00 	addiu	s4,s4,11520
/home/csy/func/inst/n88_jr_ds_ex.S:153
bfc02d00:	01000008 	jr	t0
/home/csy/func/inst/n88_jr_ds_ex.S:154
bfc02d04:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:155
bfc02d08:	16570014 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:156
bfc02d0c:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:159
bfc02d10:	24120007 	li	s2,7
/home/csy/func/inst/n88_jr_ds_ex.S:160
bfc02d14:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n88_jr_ds_ex.S:161
bfc02d18:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n88_jr_ds_ex.S:162
bfc02d1c:	3c14bfc0 	lui	s4,0xbfc0
bfc02d20:	26942d24 	addiu	s4,s4,11556
/home/csy/func/inst/n88_jr_ds_ex.S:163
bfc02d24:	02400008 	jr	s2
bfc02d28:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n88_jr_ds_ex.S:165
bfc02d2c:	02f20018 	mult	s7,s2
/home/csy/func/inst/n88_jr_ds_ex.S:166
bfc02d30:	1657000a 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:167
bfc02d34:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:168
bfc02d38:	24120007 	li	s2,7
/home/csy/func/inst/n88_jr_ds_ex.S:169
bfc02d3c:	3c14bfc0 	lui	s4,0xbfc0
bfc02d40:	26942d48 	addiu	s4,s4,11592
/home/csy/func/inst/n88_jr_ds_ex.S:170
bfc02d44:	02f20018 	mult	s7,s2
/home/csy/func/inst/n88_jr_ds_ex.S:171
bfc02d48:	01000008 	jr	t0
bfc02d4c:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n88_jr_ds_ex.S:173
bfc02d50:	16570002 	bne	s2,s7,bfc02d5c <inst_error>
/home/csy/func/inst/n88_jr_ds_ex.S:174
bfc02d54:	00000000 	nop
/home/csy/func/inst/n88_jr_ds_ex.S:176
bfc02d58:	26730001 	addiu	s3,s3,1

bfc02d5c <inst_error>:
/home/csy/func/inst/n88_jr_ds_ex.S:179
bfc02d5c:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n88_jr_ds_ex.S:180
bfc02d60:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n88_jr_ds_ex.S:181
bfc02d64:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n88_jr_ds_ex.S:182
bfc02d68:	03e00008 	jr	ra
/home/csy/func/inst/n88_jr_ds_ex.S:183
bfc02d6c:	00000000 	nop

bfc02d70 <n1_lui_test>:
/home/csy/func/inst/n1_lui.S:7
bfc02d70:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n1_lui.S:8
bfc02d74:	24120000 	li	s2,0
/home/csy/func/inst/n1_lui.S:9
bfc02d78:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n1_lui.S:11
bfc02d7c:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:12
bfc02d80:	3c040000 	lui	a0,0x0
bfc02d84:	3c080000 	lui	t0,0x0
bfc02d88:	00892021 	addu	a0,a0,t1
bfc02d8c:	012a4821 	addu	t1,t1,t2
bfc02d90:	15040489 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02d94:	00000000 	nop
/home/csy/func/inst/n1_lui.S:13
bfc02d98:	3c040000 	lui	a0,0x0
bfc02d9c:	3c080001 	lui	t0,0x1
bfc02da0:	00892021 	addu	a0,a0,t1
bfc02da4:	012a4821 	addu	t1,t1,t2
bfc02da8:	15040483 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02dac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:14
bfc02db0:	3c040000 	lui	a0,0x0
bfc02db4:	3c080002 	lui	t0,0x2
bfc02db8:	00892021 	addu	a0,a0,t1
bfc02dbc:	012a4821 	addu	t1,t1,t2
bfc02dc0:	1504047d 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02dc4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:15
bfc02dc8:	3c040000 	lui	a0,0x0
bfc02dcc:	3c080003 	lui	t0,0x3
bfc02dd0:	00892021 	addu	a0,a0,t1
bfc02dd4:	012a4821 	addu	t1,t1,t2
bfc02dd8:	15040477 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02ddc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:16
bfc02de0:	3c040000 	lui	a0,0x0
bfc02de4:	3c080004 	lui	t0,0x4
bfc02de8:	00892021 	addu	a0,a0,t1
bfc02dec:	012a4821 	addu	t1,t1,t2
bfc02df0:	15040471 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02df4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:17
bfc02df8:	3c040000 	lui	a0,0x0
bfc02dfc:	3c080005 	lui	t0,0x5
bfc02e00:	00892021 	addu	a0,a0,t1
bfc02e04:	012a4821 	addu	t1,t1,t2
bfc02e08:	1504046b 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02e0c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:18
bfc02e10:	3c040000 	lui	a0,0x0
bfc02e14:	3c080006 	lui	t0,0x6
bfc02e18:	00892021 	addu	a0,a0,t1
bfc02e1c:	012a4821 	addu	t1,t1,t2
bfc02e20:	15040465 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02e24:	00000000 	nop
/home/csy/func/inst/n1_lui.S:19
bfc02e28:	3c040000 	lui	a0,0x0
bfc02e2c:	3c080007 	lui	t0,0x7
bfc02e30:	00892021 	addu	a0,a0,t1
bfc02e34:	012a4821 	addu	t1,t1,t2
bfc02e38:	1504045f 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02e3c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:20
bfc02e40:	3c040000 	lui	a0,0x0
bfc02e44:	3c080008 	lui	t0,0x8
bfc02e48:	00892021 	addu	a0,a0,t1
bfc02e4c:	012a4821 	addu	t1,t1,t2
bfc02e50:	15040459 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02e54:	00000000 	nop
/home/csy/func/inst/n1_lui.S:21
bfc02e58:	3c040000 	lui	a0,0x0
bfc02e5c:	3c080009 	lui	t0,0x9
bfc02e60:	00892021 	addu	a0,a0,t1
bfc02e64:	012a4821 	addu	t1,t1,t2
bfc02e68:	15040453 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02e6c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:22
bfc02e70:	3c040000 	lui	a0,0x0
bfc02e74:	3c08000a 	lui	t0,0xa
bfc02e78:	00892021 	addu	a0,a0,t1
bfc02e7c:	012a4821 	addu	t1,t1,t2
bfc02e80:	1504044d 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02e84:	00000000 	nop
/home/csy/func/inst/n1_lui.S:23
bfc02e88:	3c040000 	lui	a0,0x0
bfc02e8c:	3c08000b 	lui	t0,0xb
bfc02e90:	00892021 	addu	a0,a0,t1
bfc02e94:	012a4821 	addu	t1,t1,t2
bfc02e98:	15040447 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02e9c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:24
bfc02ea0:	3c040000 	lui	a0,0x0
bfc02ea4:	3c08000c 	lui	t0,0xc
bfc02ea8:	00892021 	addu	a0,a0,t1
bfc02eac:	012a4821 	addu	t1,t1,t2
bfc02eb0:	15040441 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02eb4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:25
bfc02eb8:	3c040000 	lui	a0,0x0
bfc02ebc:	3c08000d 	lui	t0,0xd
bfc02ec0:	00892021 	addu	a0,a0,t1
bfc02ec4:	012a4821 	addu	t1,t1,t2
bfc02ec8:	1504043b 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02ecc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:26
bfc02ed0:	3c040000 	lui	a0,0x0
bfc02ed4:	3c08000e 	lui	t0,0xe
bfc02ed8:	00892021 	addu	a0,a0,t1
bfc02edc:	012a4821 	addu	t1,t1,t2
bfc02ee0:	15040435 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02ee4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:27
bfc02ee8:	3c040000 	lui	a0,0x0
bfc02eec:	3c08000f 	lui	t0,0xf
bfc02ef0:	00892021 	addu	a0,a0,t1
bfc02ef4:	012a4821 	addu	t1,t1,t2
bfc02ef8:	1504042f 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02efc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:28
bfc02f00:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:29
bfc02f04:	3c041010 	lui	a0,0x1010
bfc02f08:	3c081010 	lui	t0,0x1010
bfc02f0c:	00892021 	addu	a0,a0,t1
bfc02f10:	012a4821 	addu	t1,t1,t2
bfc02f14:	15040428 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02f18:	00000000 	nop
/home/csy/func/inst/n1_lui.S:30
bfc02f1c:	3c041010 	lui	a0,0x1010
bfc02f20:	3c081011 	lui	t0,0x1011
bfc02f24:	00892021 	addu	a0,a0,t1
bfc02f28:	012a4821 	addu	t1,t1,t2
bfc02f2c:	15040422 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02f30:	00000000 	nop
/home/csy/func/inst/n1_lui.S:31
bfc02f34:	3c041010 	lui	a0,0x1010
bfc02f38:	3c081012 	lui	t0,0x1012
bfc02f3c:	00892021 	addu	a0,a0,t1
bfc02f40:	012a4821 	addu	t1,t1,t2
bfc02f44:	1504041c 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02f48:	00000000 	nop
/home/csy/func/inst/n1_lui.S:32
bfc02f4c:	3c041010 	lui	a0,0x1010
bfc02f50:	3c081013 	lui	t0,0x1013
bfc02f54:	00892021 	addu	a0,a0,t1
bfc02f58:	012a4821 	addu	t1,t1,t2
bfc02f5c:	15040416 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02f60:	00000000 	nop
/home/csy/func/inst/n1_lui.S:33
bfc02f64:	3c041010 	lui	a0,0x1010
bfc02f68:	3c081014 	lui	t0,0x1014
bfc02f6c:	00892021 	addu	a0,a0,t1
bfc02f70:	012a4821 	addu	t1,t1,t2
bfc02f74:	15040410 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02f78:	00000000 	nop
/home/csy/func/inst/n1_lui.S:34
bfc02f7c:	3c041010 	lui	a0,0x1010
bfc02f80:	3c081015 	lui	t0,0x1015
bfc02f84:	00892021 	addu	a0,a0,t1
bfc02f88:	012a4821 	addu	t1,t1,t2
bfc02f8c:	1504040a 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02f90:	00000000 	nop
/home/csy/func/inst/n1_lui.S:35
bfc02f94:	3c041010 	lui	a0,0x1010
bfc02f98:	3c081016 	lui	t0,0x1016
bfc02f9c:	00892021 	addu	a0,a0,t1
bfc02fa0:	012a4821 	addu	t1,t1,t2
bfc02fa4:	15040404 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02fa8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:36
bfc02fac:	3c041010 	lui	a0,0x1010
bfc02fb0:	3c081017 	lui	t0,0x1017
bfc02fb4:	00892021 	addu	a0,a0,t1
bfc02fb8:	012a4821 	addu	t1,t1,t2
bfc02fbc:	150403fe 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02fc0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:37
bfc02fc4:	3c041010 	lui	a0,0x1010
bfc02fc8:	3c081018 	lui	t0,0x1018
bfc02fcc:	00892021 	addu	a0,a0,t1
bfc02fd0:	012a4821 	addu	t1,t1,t2
bfc02fd4:	150403f8 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02fd8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:38
bfc02fdc:	3c041010 	lui	a0,0x1010
bfc02fe0:	3c081019 	lui	t0,0x1019
bfc02fe4:	00892021 	addu	a0,a0,t1
bfc02fe8:	012a4821 	addu	t1,t1,t2
bfc02fec:	150403f2 	bne	t0,a0,bfc03fb8 <inst_error>
bfc02ff0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:39
bfc02ff4:	3c041010 	lui	a0,0x1010
bfc02ff8:	3c08101a 	lui	t0,0x101a
bfc02ffc:	00892021 	addu	a0,a0,t1
bfc03000:	012a4821 	addu	t1,t1,t2
bfc03004:	150403ec 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03008:	00000000 	nop
/home/csy/func/inst/n1_lui.S:40
bfc0300c:	3c041010 	lui	a0,0x1010
bfc03010:	3c08101b 	lui	t0,0x101b
bfc03014:	00892021 	addu	a0,a0,t1
bfc03018:	012a4821 	addu	t1,t1,t2
bfc0301c:	150403e6 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03020:	00000000 	nop
/home/csy/func/inst/n1_lui.S:41
bfc03024:	3c041010 	lui	a0,0x1010
bfc03028:	3c08101c 	lui	t0,0x101c
bfc0302c:	00892021 	addu	a0,a0,t1
bfc03030:	012a4821 	addu	t1,t1,t2
bfc03034:	150403e0 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03038:	00000000 	nop
/home/csy/func/inst/n1_lui.S:42
bfc0303c:	3c041010 	lui	a0,0x1010
bfc03040:	3c08101d 	lui	t0,0x101d
bfc03044:	00892021 	addu	a0,a0,t1
bfc03048:	012a4821 	addu	t1,t1,t2
bfc0304c:	150403da 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03050:	00000000 	nop
/home/csy/func/inst/n1_lui.S:43
bfc03054:	3c041010 	lui	a0,0x1010
bfc03058:	3c08101e 	lui	t0,0x101e
bfc0305c:	00892021 	addu	a0,a0,t1
bfc03060:	012a4821 	addu	t1,t1,t2
bfc03064:	150403d4 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03068:	00000000 	nop
/home/csy/func/inst/n1_lui.S:44
bfc0306c:	3c041010 	lui	a0,0x1010
bfc03070:	3c08101f 	lui	t0,0x101f
bfc03074:	00892021 	addu	a0,a0,t1
bfc03078:	012a4821 	addu	t1,t1,t2
bfc0307c:	150403ce 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03080:	00000000 	nop
/home/csy/func/inst/n1_lui.S:45
bfc03084:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:46
bfc03088:	3c042020 	lui	a0,0x2020
bfc0308c:	3c082020 	lui	t0,0x2020
bfc03090:	00892021 	addu	a0,a0,t1
bfc03094:	012a4821 	addu	t1,t1,t2
bfc03098:	150403c7 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0309c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:47
bfc030a0:	3c042020 	lui	a0,0x2020
bfc030a4:	3c082021 	lui	t0,0x2021
bfc030a8:	00892021 	addu	a0,a0,t1
bfc030ac:	012a4821 	addu	t1,t1,t2
bfc030b0:	150403c1 	bne	t0,a0,bfc03fb8 <inst_error>
bfc030b4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:48
bfc030b8:	3c042020 	lui	a0,0x2020
bfc030bc:	3c082022 	lui	t0,0x2022
bfc030c0:	00892021 	addu	a0,a0,t1
bfc030c4:	012a4821 	addu	t1,t1,t2
bfc030c8:	150403bb 	bne	t0,a0,bfc03fb8 <inst_error>
bfc030cc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:49
bfc030d0:	3c042020 	lui	a0,0x2020
bfc030d4:	3c082023 	lui	t0,0x2023
bfc030d8:	00892021 	addu	a0,a0,t1
bfc030dc:	012a4821 	addu	t1,t1,t2
bfc030e0:	150403b5 	bne	t0,a0,bfc03fb8 <inst_error>
bfc030e4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:50
bfc030e8:	3c042020 	lui	a0,0x2020
bfc030ec:	3c082024 	lui	t0,0x2024
bfc030f0:	00892021 	addu	a0,a0,t1
bfc030f4:	012a4821 	addu	t1,t1,t2
bfc030f8:	150403af 	bne	t0,a0,bfc03fb8 <inst_error>
bfc030fc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:51
bfc03100:	3c042020 	lui	a0,0x2020
bfc03104:	3c082025 	lui	t0,0x2025
bfc03108:	00892021 	addu	a0,a0,t1
bfc0310c:	012a4821 	addu	t1,t1,t2
bfc03110:	150403a9 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03114:	00000000 	nop
/home/csy/func/inst/n1_lui.S:52
bfc03118:	3c042020 	lui	a0,0x2020
bfc0311c:	3c082026 	lui	t0,0x2026
bfc03120:	00892021 	addu	a0,a0,t1
bfc03124:	012a4821 	addu	t1,t1,t2
bfc03128:	150403a3 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0312c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:53
bfc03130:	3c042020 	lui	a0,0x2020
bfc03134:	3c082027 	lui	t0,0x2027
bfc03138:	00892021 	addu	a0,a0,t1
bfc0313c:	012a4821 	addu	t1,t1,t2
bfc03140:	1504039d 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03144:	00000000 	nop
/home/csy/func/inst/n1_lui.S:54
bfc03148:	3c042020 	lui	a0,0x2020
bfc0314c:	3c082028 	lui	t0,0x2028
bfc03150:	00892021 	addu	a0,a0,t1
bfc03154:	012a4821 	addu	t1,t1,t2
bfc03158:	15040397 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0315c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:55
bfc03160:	3c042020 	lui	a0,0x2020
bfc03164:	3c082029 	lui	t0,0x2029
bfc03168:	00892021 	addu	a0,a0,t1
bfc0316c:	012a4821 	addu	t1,t1,t2
bfc03170:	15040391 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03174:	00000000 	nop
/home/csy/func/inst/n1_lui.S:56
bfc03178:	3c042020 	lui	a0,0x2020
bfc0317c:	3c08202a 	lui	t0,0x202a
bfc03180:	00892021 	addu	a0,a0,t1
bfc03184:	012a4821 	addu	t1,t1,t2
bfc03188:	1504038b 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0318c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:57
bfc03190:	3c042020 	lui	a0,0x2020
bfc03194:	3c08202b 	lui	t0,0x202b
bfc03198:	00892021 	addu	a0,a0,t1
bfc0319c:	012a4821 	addu	t1,t1,t2
bfc031a0:	15040385 	bne	t0,a0,bfc03fb8 <inst_error>
bfc031a4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:58
bfc031a8:	3c042020 	lui	a0,0x2020
bfc031ac:	3c08202c 	lui	t0,0x202c
bfc031b0:	00892021 	addu	a0,a0,t1
bfc031b4:	012a4821 	addu	t1,t1,t2
bfc031b8:	1504037f 	bne	t0,a0,bfc03fb8 <inst_error>
bfc031bc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:59
bfc031c0:	3c042020 	lui	a0,0x2020
bfc031c4:	3c08202d 	lui	t0,0x202d
bfc031c8:	00892021 	addu	a0,a0,t1
bfc031cc:	012a4821 	addu	t1,t1,t2
bfc031d0:	15040379 	bne	t0,a0,bfc03fb8 <inst_error>
bfc031d4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:60
bfc031d8:	3c042020 	lui	a0,0x2020
bfc031dc:	3c08202e 	lui	t0,0x202e
bfc031e0:	00892021 	addu	a0,a0,t1
bfc031e4:	012a4821 	addu	t1,t1,t2
bfc031e8:	15040373 	bne	t0,a0,bfc03fb8 <inst_error>
bfc031ec:	00000000 	nop
/home/csy/func/inst/n1_lui.S:61
bfc031f0:	3c042020 	lui	a0,0x2020
bfc031f4:	3c08202f 	lui	t0,0x202f
bfc031f8:	00892021 	addu	a0,a0,t1
bfc031fc:	012a4821 	addu	t1,t1,t2
bfc03200:	1504036d 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03204:	00000000 	nop
/home/csy/func/inst/n1_lui.S:62
bfc03208:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:63
bfc0320c:	3c043030 	lui	a0,0x3030
bfc03210:	3c083030 	lui	t0,0x3030
bfc03214:	00892021 	addu	a0,a0,t1
bfc03218:	012a4821 	addu	t1,t1,t2
bfc0321c:	15040366 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03220:	00000000 	nop
/home/csy/func/inst/n1_lui.S:64
bfc03224:	3c043030 	lui	a0,0x3030
bfc03228:	3c083031 	lui	t0,0x3031
bfc0322c:	00892021 	addu	a0,a0,t1
bfc03230:	012a4821 	addu	t1,t1,t2
bfc03234:	15040360 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03238:	00000000 	nop
/home/csy/func/inst/n1_lui.S:65
bfc0323c:	3c043030 	lui	a0,0x3030
bfc03240:	3c083032 	lui	t0,0x3032
bfc03244:	00892021 	addu	a0,a0,t1
bfc03248:	012a4821 	addu	t1,t1,t2
bfc0324c:	1504035a 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03250:	00000000 	nop
/home/csy/func/inst/n1_lui.S:66
bfc03254:	3c043030 	lui	a0,0x3030
bfc03258:	3c083033 	lui	t0,0x3033
bfc0325c:	00892021 	addu	a0,a0,t1
bfc03260:	012a4821 	addu	t1,t1,t2
bfc03264:	15040354 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03268:	00000000 	nop
/home/csy/func/inst/n1_lui.S:67
bfc0326c:	3c043030 	lui	a0,0x3030
bfc03270:	3c083034 	lui	t0,0x3034
bfc03274:	00892021 	addu	a0,a0,t1
bfc03278:	012a4821 	addu	t1,t1,t2
bfc0327c:	1504034e 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03280:	00000000 	nop
/home/csy/func/inst/n1_lui.S:68
bfc03284:	3c043030 	lui	a0,0x3030
bfc03288:	3c083035 	lui	t0,0x3035
bfc0328c:	00892021 	addu	a0,a0,t1
bfc03290:	012a4821 	addu	t1,t1,t2
bfc03294:	15040348 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03298:	00000000 	nop
/home/csy/func/inst/n1_lui.S:69
bfc0329c:	3c043030 	lui	a0,0x3030
bfc032a0:	3c083036 	lui	t0,0x3036
bfc032a4:	00892021 	addu	a0,a0,t1
bfc032a8:	012a4821 	addu	t1,t1,t2
bfc032ac:	15040342 	bne	t0,a0,bfc03fb8 <inst_error>
bfc032b0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:70
bfc032b4:	3c043030 	lui	a0,0x3030
bfc032b8:	3c083037 	lui	t0,0x3037
bfc032bc:	00892021 	addu	a0,a0,t1
bfc032c0:	012a4821 	addu	t1,t1,t2
bfc032c4:	1504033c 	bne	t0,a0,bfc03fb8 <inst_error>
bfc032c8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:71
bfc032cc:	3c043030 	lui	a0,0x3030
bfc032d0:	3c083038 	lui	t0,0x3038
bfc032d4:	00892021 	addu	a0,a0,t1
bfc032d8:	012a4821 	addu	t1,t1,t2
bfc032dc:	15040336 	bne	t0,a0,bfc03fb8 <inst_error>
bfc032e0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:72
bfc032e4:	3c043030 	lui	a0,0x3030
bfc032e8:	3c083039 	lui	t0,0x3039
bfc032ec:	00892021 	addu	a0,a0,t1
bfc032f0:	012a4821 	addu	t1,t1,t2
bfc032f4:	15040330 	bne	t0,a0,bfc03fb8 <inst_error>
bfc032f8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:73
bfc032fc:	3c043030 	lui	a0,0x3030
bfc03300:	3c08303a 	lui	t0,0x303a
bfc03304:	00892021 	addu	a0,a0,t1
bfc03308:	012a4821 	addu	t1,t1,t2
bfc0330c:	1504032a 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03310:	00000000 	nop
/home/csy/func/inst/n1_lui.S:74
bfc03314:	3c043030 	lui	a0,0x3030
bfc03318:	3c08303b 	lui	t0,0x303b
bfc0331c:	00892021 	addu	a0,a0,t1
bfc03320:	012a4821 	addu	t1,t1,t2
bfc03324:	15040324 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03328:	00000000 	nop
/home/csy/func/inst/n1_lui.S:75
bfc0332c:	3c043030 	lui	a0,0x3030
bfc03330:	3c08303c 	lui	t0,0x303c
bfc03334:	00892021 	addu	a0,a0,t1
bfc03338:	012a4821 	addu	t1,t1,t2
bfc0333c:	1504031e 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03340:	00000000 	nop
/home/csy/func/inst/n1_lui.S:76
bfc03344:	3c043030 	lui	a0,0x3030
bfc03348:	3c08303d 	lui	t0,0x303d
bfc0334c:	00892021 	addu	a0,a0,t1
bfc03350:	012a4821 	addu	t1,t1,t2
bfc03354:	15040318 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03358:	00000000 	nop
/home/csy/func/inst/n1_lui.S:77
bfc0335c:	3c043030 	lui	a0,0x3030
bfc03360:	3c08303e 	lui	t0,0x303e
bfc03364:	00892021 	addu	a0,a0,t1
bfc03368:	012a4821 	addu	t1,t1,t2
bfc0336c:	15040312 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03370:	00000000 	nop
/home/csy/func/inst/n1_lui.S:78
bfc03374:	3c043030 	lui	a0,0x3030
bfc03378:	3c08303f 	lui	t0,0x303f
bfc0337c:	00892021 	addu	a0,a0,t1
bfc03380:	012a4821 	addu	t1,t1,t2
bfc03384:	1504030c 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03388:	00000000 	nop
/home/csy/func/inst/n1_lui.S:79
bfc0338c:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:80
bfc03390:	3c044040 	lui	a0,0x4040
bfc03394:	3c084040 	lui	t0,0x4040
bfc03398:	00892021 	addu	a0,a0,t1
bfc0339c:	012a4821 	addu	t1,t1,t2
bfc033a0:	15040305 	bne	t0,a0,bfc03fb8 <inst_error>
bfc033a4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:81
bfc033a8:	3c044040 	lui	a0,0x4040
bfc033ac:	3c084041 	lui	t0,0x4041
bfc033b0:	00892021 	addu	a0,a0,t1
bfc033b4:	012a4821 	addu	t1,t1,t2
bfc033b8:	150402ff 	bne	t0,a0,bfc03fb8 <inst_error>
bfc033bc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:82
bfc033c0:	3c044040 	lui	a0,0x4040
bfc033c4:	3c084042 	lui	t0,0x4042
bfc033c8:	00892021 	addu	a0,a0,t1
bfc033cc:	012a4821 	addu	t1,t1,t2
bfc033d0:	150402f9 	bne	t0,a0,bfc03fb8 <inst_error>
bfc033d4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:83
bfc033d8:	3c044040 	lui	a0,0x4040
bfc033dc:	3c084043 	lui	t0,0x4043
bfc033e0:	00892021 	addu	a0,a0,t1
bfc033e4:	012a4821 	addu	t1,t1,t2
bfc033e8:	150402f3 	bne	t0,a0,bfc03fb8 <inst_error>
bfc033ec:	00000000 	nop
/home/csy/func/inst/n1_lui.S:84
bfc033f0:	3c044040 	lui	a0,0x4040
bfc033f4:	3c084044 	lui	t0,0x4044
bfc033f8:	00892021 	addu	a0,a0,t1
bfc033fc:	012a4821 	addu	t1,t1,t2
bfc03400:	150402ed 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03404:	00000000 	nop
/home/csy/func/inst/n1_lui.S:85
bfc03408:	3c044040 	lui	a0,0x4040
bfc0340c:	3c084045 	lui	t0,0x4045
bfc03410:	00892021 	addu	a0,a0,t1
bfc03414:	012a4821 	addu	t1,t1,t2
bfc03418:	150402e7 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0341c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:86
bfc03420:	3c044040 	lui	a0,0x4040
bfc03424:	3c084046 	lui	t0,0x4046
bfc03428:	00892021 	addu	a0,a0,t1
bfc0342c:	012a4821 	addu	t1,t1,t2
bfc03430:	150402e1 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03434:	00000000 	nop
/home/csy/func/inst/n1_lui.S:87
bfc03438:	3c044040 	lui	a0,0x4040
bfc0343c:	3c084047 	lui	t0,0x4047
bfc03440:	00892021 	addu	a0,a0,t1
bfc03444:	012a4821 	addu	t1,t1,t2
bfc03448:	150402db 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0344c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:88
bfc03450:	3c044040 	lui	a0,0x4040
bfc03454:	3c084048 	lui	t0,0x4048
bfc03458:	00892021 	addu	a0,a0,t1
bfc0345c:	012a4821 	addu	t1,t1,t2
bfc03460:	150402d5 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03464:	00000000 	nop
/home/csy/func/inst/n1_lui.S:89
bfc03468:	3c044040 	lui	a0,0x4040
bfc0346c:	3c084049 	lui	t0,0x4049
bfc03470:	00892021 	addu	a0,a0,t1
bfc03474:	012a4821 	addu	t1,t1,t2
bfc03478:	150402cf 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0347c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:90
bfc03480:	3c044040 	lui	a0,0x4040
bfc03484:	3c08404a 	lui	t0,0x404a
bfc03488:	00892021 	addu	a0,a0,t1
bfc0348c:	012a4821 	addu	t1,t1,t2
bfc03490:	150402c9 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03494:	00000000 	nop
/home/csy/func/inst/n1_lui.S:91
bfc03498:	3c044040 	lui	a0,0x4040
bfc0349c:	3c08404b 	lui	t0,0x404b
bfc034a0:	00892021 	addu	a0,a0,t1
bfc034a4:	012a4821 	addu	t1,t1,t2
bfc034a8:	150402c3 	bne	t0,a0,bfc03fb8 <inst_error>
bfc034ac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:92
bfc034b0:	3c044040 	lui	a0,0x4040
bfc034b4:	3c08404c 	lui	t0,0x404c
bfc034b8:	00892021 	addu	a0,a0,t1
bfc034bc:	012a4821 	addu	t1,t1,t2
bfc034c0:	150402bd 	bne	t0,a0,bfc03fb8 <inst_error>
bfc034c4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:93
bfc034c8:	3c044040 	lui	a0,0x4040
bfc034cc:	3c08404d 	lui	t0,0x404d
bfc034d0:	00892021 	addu	a0,a0,t1
bfc034d4:	012a4821 	addu	t1,t1,t2
bfc034d8:	150402b7 	bne	t0,a0,bfc03fb8 <inst_error>
bfc034dc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:94
bfc034e0:	3c044040 	lui	a0,0x4040
bfc034e4:	3c08404e 	lui	t0,0x404e
bfc034e8:	00892021 	addu	a0,a0,t1
bfc034ec:	012a4821 	addu	t1,t1,t2
bfc034f0:	150402b1 	bne	t0,a0,bfc03fb8 <inst_error>
bfc034f4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:95
bfc034f8:	3c044040 	lui	a0,0x4040
bfc034fc:	3c08404f 	lui	t0,0x404f
bfc03500:	00892021 	addu	a0,a0,t1
bfc03504:	012a4821 	addu	t1,t1,t2
bfc03508:	150402ab 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0350c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:96
bfc03510:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:97
bfc03514:	3c045040 	lui	a0,0x5040
bfc03518:	3c085040 	lui	t0,0x5040
bfc0351c:	00892021 	addu	a0,a0,t1
bfc03520:	012a4821 	addu	t1,t1,t2
bfc03524:	150402a4 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03528:	00000000 	nop
/home/csy/func/inst/n1_lui.S:98
bfc0352c:	3c045040 	lui	a0,0x5040
bfc03530:	3c085041 	lui	t0,0x5041
bfc03534:	00892021 	addu	a0,a0,t1
bfc03538:	012a4821 	addu	t1,t1,t2
bfc0353c:	1504029e 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03540:	00000000 	nop
/home/csy/func/inst/n1_lui.S:99
bfc03544:	3c045040 	lui	a0,0x5040
bfc03548:	3c085042 	lui	t0,0x5042
bfc0354c:	00892021 	addu	a0,a0,t1
bfc03550:	012a4821 	addu	t1,t1,t2
bfc03554:	15040298 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03558:	00000000 	nop
/home/csy/func/inst/n1_lui.S:100
bfc0355c:	3c045040 	lui	a0,0x5040
bfc03560:	3c085043 	lui	t0,0x5043
bfc03564:	00892021 	addu	a0,a0,t1
bfc03568:	012a4821 	addu	t1,t1,t2
bfc0356c:	15040292 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03570:	00000000 	nop
/home/csy/func/inst/n1_lui.S:101
bfc03574:	3c045040 	lui	a0,0x5040
bfc03578:	3c085044 	lui	t0,0x5044
bfc0357c:	00892021 	addu	a0,a0,t1
bfc03580:	012a4821 	addu	t1,t1,t2
bfc03584:	1504028c 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03588:	00000000 	nop
/home/csy/func/inst/n1_lui.S:102
bfc0358c:	3c045040 	lui	a0,0x5040
bfc03590:	3c085045 	lui	t0,0x5045
bfc03594:	00892021 	addu	a0,a0,t1
bfc03598:	012a4821 	addu	t1,t1,t2
bfc0359c:	15040286 	bne	t0,a0,bfc03fb8 <inst_error>
bfc035a0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:103
bfc035a4:	3c045040 	lui	a0,0x5040
bfc035a8:	3c085046 	lui	t0,0x5046
bfc035ac:	00892021 	addu	a0,a0,t1
bfc035b0:	012a4821 	addu	t1,t1,t2
bfc035b4:	15040280 	bne	t0,a0,bfc03fb8 <inst_error>
bfc035b8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:104
bfc035bc:	3c045040 	lui	a0,0x5040
bfc035c0:	3c085047 	lui	t0,0x5047
bfc035c4:	00892021 	addu	a0,a0,t1
bfc035c8:	012a4821 	addu	t1,t1,t2
bfc035cc:	1504027a 	bne	t0,a0,bfc03fb8 <inst_error>
bfc035d0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:105
bfc035d4:	3c045040 	lui	a0,0x5040
bfc035d8:	3c085048 	lui	t0,0x5048
bfc035dc:	00892021 	addu	a0,a0,t1
bfc035e0:	012a4821 	addu	t1,t1,t2
bfc035e4:	15040274 	bne	t0,a0,bfc03fb8 <inst_error>
bfc035e8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:106
bfc035ec:	3c045040 	lui	a0,0x5040
bfc035f0:	3c085049 	lui	t0,0x5049
bfc035f4:	00892021 	addu	a0,a0,t1
bfc035f8:	012a4821 	addu	t1,t1,t2
bfc035fc:	1504026e 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03600:	00000000 	nop
/home/csy/func/inst/n1_lui.S:107
bfc03604:	3c045040 	lui	a0,0x5040
bfc03608:	3c08504a 	lui	t0,0x504a
bfc0360c:	00892021 	addu	a0,a0,t1
bfc03610:	012a4821 	addu	t1,t1,t2
bfc03614:	15040268 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03618:	00000000 	nop
/home/csy/func/inst/n1_lui.S:108
bfc0361c:	3c045040 	lui	a0,0x5040
bfc03620:	3c08504b 	lui	t0,0x504b
bfc03624:	00892021 	addu	a0,a0,t1
bfc03628:	012a4821 	addu	t1,t1,t2
bfc0362c:	15040262 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03630:	00000000 	nop
/home/csy/func/inst/n1_lui.S:109
bfc03634:	3c045040 	lui	a0,0x5040
bfc03638:	3c08504c 	lui	t0,0x504c
bfc0363c:	00892021 	addu	a0,a0,t1
bfc03640:	012a4821 	addu	t1,t1,t2
bfc03644:	1504025c 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03648:	00000000 	nop
/home/csy/func/inst/n1_lui.S:110
bfc0364c:	3c045040 	lui	a0,0x5040
bfc03650:	3c08504d 	lui	t0,0x504d
bfc03654:	00892021 	addu	a0,a0,t1
bfc03658:	012a4821 	addu	t1,t1,t2
bfc0365c:	15040256 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03660:	00000000 	nop
/home/csy/func/inst/n1_lui.S:111
bfc03664:	3c045040 	lui	a0,0x5040
bfc03668:	3c08504e 	lui	t0,0x504e
bfc0366c:	00892021 	addu	a0,a0,t1
bfc03670:	012a4821 	addu	t1,t1,t2
bfc03674:	15040250 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03678:	00000000 	nop
/home/csy/func/inst/n1_lui.S:112
bfc0367c:	3c045040 	lui	a0,0x5040
bfc03680:	3c08504f 	lui	t0,0x504f
bfc03684:	00892021 	addu	a0,a0,t1
bfc03688:	012a4821 	addu	t1,t1,t2
bfc0368c:	1504024a 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03690:	00000000 	nop
/home/csy/func/inst/n1_lui.S:113
bfc03694:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:114
bfc03698:	3c046050 	lui	a0,0x6050
bfc0369c:	3c086050 	lui	t0,0x6050
bfc036a0:	00892021 	addu	a0,a0,t1
bfc036a4:	012a4821 	addu	t1,t1,t2
bfc036a8:	15040243 	bne	t0,a0,bfc03fb8 <inst_error>
bfc036ac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:115
bfc036b0:	3c046050 	lui	a0,0x6050
bfc036b4:	3c086051 	lui	t0,0x6051
bfc036b8:	00892021 	addu	a0,a0,t1
bfc036bc:	012a4821 	addu	t1,t1,t2
bfc036c0:	1504023d 	bne	t0,a0,bfc03fb8 <inst_error>
bfc036c4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:116
bfc036c8:	3c046050 	lui	a0,0x6050
bfc036cc:	3c086052 	lui	t0,0x6052
bfc036d0:	00892021 	addu	a0,a0,t1
bfc036d4:	012a4821 	addu	t1,t1,t2
bfc036d8:	15040237 	bne	t0,a0,bfc03fb8 <inst_error>
bfc036dc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:117
bfc036e0:	3c046050 	lui	a0,0x6050
bfc036e4:	3c086053 	lui	t0,0x6053
bfc036e8:	00892021 	addu	a0,a0,t1
bfc036ec:	012a4821 	addu	t1,t1,t2
bfc036f0:	15040231 	bne	t0,a0,bfc03fb8 <inst_error>
bfc036f4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:118
bfc036f8:	3c046050 	lui	a0,0x6050
bfc036fc:	3c086054 	lui	t0,0x6054
bfc03700:	00892021 	addu	a0,a0,t1
bfc03704:	012a4821 	addu	t1,t1,t2
bfc03708:	1504022b 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0370c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:119
bfc03710:	3c046050 	lui	a0,0x6050
bfc03714:	3c086055 	lui	t0,0x6055
bfc03718:	00892021 	addu	a0,a0,t1
bfc0371c:	012a4821 	addu	t1,t1,t2
bfc03720:	15040225 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03724:	00000000 	nop
/home/csy/func/inst/n1_lui.S:120
bfc03728:	3c046050 	lui	a0,0x6050
bfc0372c:	3c086056 	lui	t0,0x6056
bfc03730:	00892021 	addu	a0,a0,t1
bfc03734:	012a4821 	addu	t1,t1,t2
bfc03738:	1504021f 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0373c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:121
bfc03740:	3c046050 	lui	a0,0x6050
bfc03744:	3c086057 	lui	t0,0x6057
bfc03748:	00892021 	addu	a0,a0,t1
bfc0374c:	012a4821 	addu	t1,t1,t2
bfc03750:	15040219 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03754:	00000000 	nop
/home/csy/func/inst/n1_lui.S:122
bfc03758:	3c046050 	lui	a0,0x6050
bfc0375c:	3c086058 	lui	t0,0x6058
bfc03760:	00892021 	addu	a0,a0,t1
bfc03764:	012a4821 	addu	t1,t1,t2
bfc03768:	15040213 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0376c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:123
bfc03770:	3c046050 	lui	a0,0x6050
bfc03774:	3c086059 	lui	t0,0x6059
bfc03778:	00892021 	addu	a0,a0,t1
bfc0377c:	012a4821 	addu	t1,t1,t2
bfc03780:	1504020d 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03784:	00000000 	nop
/home/csy/func/inst/n1_lui.S:124
bfc03788:	3c046050 	lui	a0,0x6050
bfc0378c:	3c08605a 	lui	t0,0x605a
bfc03790:	00892021 	addu	a0,a0,t1
bfc03794:	012a4821 	addu	t1,t1,t2
bfc03798:	15040207 	bne	t0,a0,bfc03fb8 <inst_error>
bfc0379c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:125
bfc037a0:	3c046050 	lui	a0,0x6050
bfc037a4:	3c08605b 	lui	t0,0x605b
bfc037a8:	00892021 	addu	a0,a0,t1
bfc037ac:	012a4821 	addu	t1,t1,t2
bfc037b0:	15040201 	bne	t0,a0,bfc03fb8 <inst_error>
bfc037b4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:126
bfc037b8:	3c046050 	lui	a0,0x6050
bfc037bc:	3c08605c 	lui	t0,0x605c
bfc037c0:	00892021 	addu	a0,a0,t1
bfc037c4:	012a4821 	addu	t1,t1,t2
bfc037c8:	150401fb 	bne	t0,a0,bfc03fb8 <inst_error>
bfc037cc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:127
bfc037d0:	3c046050 	lui	a0,0x6050
bfc037d4:	3c08605d 	lui	t0,0x605d
bfc037d8:	00892021 	addu	a0,a0,t1
bfc037dc:	012a4821 	addu	t1,t1,t2
bfc037e0:	150401f5 	bne	t0,a0,bfc03fb8 <inst_error>
bfc037e4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:128
bfc037e8:	3c046050 	lui	a0,0x6050
bfc037ec:	3c08605e 	lui	t0,0x605e
bfc037f0:	00892021 	addu	a0,a0,t1
bfc037f4:	012a4821 	addu	t1,t1,t2
bfc037f8:	150401ef 	bne	t0,a0,bfc03fb8 <inst_error>
bfc037fc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:129
bfc03800:	3c046050 	lui	a0,0x6050
bfc03804:	3c08605f 	lui	t0,0x605f
bfc03808:	00892021 	addu	a0,a0,t1
bfc0380c:	012a4821 	addu	t1,t1,t2
bfc03810:	150401e9 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03814:	00000000 	nop
/home/csy/func/inst/n1_lui.S:130
bfc03818:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:131
bfc0381c:	3c048060 	lui	a0,0x8060
bfc03820:	3c088060 	lui	t0,0x8060
bfc03824:	00892021 	addu	a0,a0,t1
bfc03828:	012a4821 	addu	t1,t1,t2
bfc0382c:	150401e2 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03830:	00000000 	nop
/home/csy/func/inst/n1_lui.S:132
bfc03834:	3c048060 	lui	a0,0x8060
bfc03838:	3c088061 	lui	t0,0x8061
bfc0383c:	00892021 	addu	a0,a0,t1
bfc03840:	012a4821 	addu	t1,t1,t2
bfc03844:	150401dc 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03848:	00000000 	nop
/home/csy/func/inst/n1_lui.S:133
bfc0384c:	3c048060 	lui	a0,0x8060
bfc03850:	3c088062 	lui	t0,0x8062
bfc03854:	00892021 	addu	a0,a0,t1
bfc03858:	012a4821 	addu	t1,t1,t2
bfc0385c:	150401d6 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03860:	00000000 	nop
/home/csy/func/inst/n1_lui.S:134
bfc03864:	3c048060 	lui	a0,0x8060
bfc03868:	3c088063 	lui	t0,0x8063
bfc0386c:	00892021 	addu	a0,a0,t1
bfc03870:	012a4821 	addu	t1,t1,t2
bfc03874:	150401d0 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03878:	00000000 	nop
/home/csy/func/inst/n1_lui.S:135
bfc0387c:	3c048060 	lui	a0,0x8060
bfc03880:	3c088064 	lui	t0,0x8064
bfc03884:	00892021 	addu	a0,a0,t1
bfc03888:	012a4821 	addu	t1,t1,t2
bfc0388c:	150401ca 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03890:	00000000 	nop
/home/csy/func/inst/n1_lui.S:136
bfc03894:	3c048060 	lui	a0,0x8060
bfc03898:	3c088065 	lui	t0,0x8065
bfc0389c:	00892021 	addu	a0,a0,t1
bfc038a0:	012a4821 	addu	t1,t1,t2
bfc038a4:	150401c4 	bne	t0,a0,bfc03fb8 <inst_error>
bfc038a8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:137
bfc038ac:	3c048060 	lui	a0,0x8060
bfc038b0:	3c088066 	lui	t0,0x8066
bfc038b4:	00892021 	addu	a0,a0,t1
bfc038b8:	012a4821 	addu	t1,t1,t2
bfc038bc:	150401be 	bne	t0,a0,bfc03fb8 <inst_error>
bfc038c0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:138
bfc038c4:	3c048060 	lui	a0,0x8060
bfc038c8:	3c088067 	lui	t0,0x8067
bfc038cc:	00892021 	addu	a0,a0,t1
bfc038d0:	012a4821 	addu	t1,t1,t2
bfc038d4:	150401b8 	bne	t0,a0,bfc03fb8 <inst_error>
bfc038d8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:139
bfc038dc:	3c048060 	lui	a0,0x8060
bfc038e0:	3c088068 	lui	t0,0x8068
bfc038e4:	00892021 	addu	a0,a0,t1
bfc038e8:	012a4821 	addu	t1,t1,t2
bfc038ec:	150401b2 	bne	t0,a0,bfc03fb8 <inst_error>
bfc038f0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:140
bfc038f4:	3c048060 	lui	a0,0x8060
bfc038f8:	3c088069 	lui	t0,0x8069
bfc038fc:	00892021 	addu	a0,a0,t1
bfc03900:	012a4821 	addu	t1,t1,t2
bfc03904:	150401ac 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03908:	00000000 	nop
/home/csy/func/inst/n1_lui.S:141
bfc0390c:	3c048060 	lui	a0,0x8060
bfc03910:	3c08806a 	lui	t0,0x806a
bfc03914:	00892021 	addu	a0,a0,t1
bfc03918:	012a4821 	addu	t1,t1,t2
bfc0391c:	150401a6 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03920:	00000000 	nop
/home/csy/func/inst/n1_lui.S:142
bfc03924:	3c048060 	lui	a0,0x8060
bfc03928:	3c08806b 	lui	t0,0x806b
bfc0392c:	00892021 	addu	a0,a0,t1
bfc03930:	012a4821 	addu	t1,t1,t2
bfc03934:	150401a0 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03938:	00000000 	nop
/home/csy/func/inst/n1_lui.S:143
bfc0393c:	3c048060 	lui	a0,0x8060
bfc03940:	3c08806c 	lui	t0,0x806c
bfc03944:	00892021 	addu	a0,a0,t1
bfc03948:	012a4821 	addu	t1,t1,t2
bfc0394c:	1504019a 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03950:	00000000 	nop
/home/csy/func/inst/n1_lui.S:144
bfc03954:	3c048060 	lui	a0,0x8060
bfc03958:	3c08806d 	lui	t0,0x806d
bfc0395c:	00892021 	addu	a0,a0,t1
bfc03960:	012a4821 	addu	t1,t1,t2
bfc03964:	15040194 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03968:	00000000 	nop
/home/csy/func/inst/n1_lui.S:145
bfc0396c:	3c048060 	lui	a0,0x8060
bfc03970:	3c08806e 	lui	t0,0x806e
bfc03974:	00892021 	addu	a0,a0,t1
bfc03978:	012a4821 	addu	t1,t1,t2
bfc0397c:	1504018e 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03980:	00000000 	nop
/home/csy/func/inst/n1_lui.S:146
bfc03984:	3c048060 	lui	a0,0x8060
bfc03988:	3c08806f 	lui	t0,0x806f
bfc0398c:	00892021 	addu	a0,a0,t1
bfc03990:	012a4821 	addu	t1,t1,t2
bfc03994:	15040188 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03998:	00000000 	nop
/home/csy/func/inst/n1_lui.S:147
bfc0399c:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:148
bfc039a0:	3c04a070 	lui	a0,0xa070
bfc039a4:	3c08a070 	lui	t0,0xa070
bfc039a8:	00892021 	addu	a0,a0,t1
bfc039ac:	012a4821 	addu	t1,t1,t2
bfc039b0:	15040181 	bne	t0,a0,bfc03fb8 <inst_error>
bfc039b4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:149
bfc039b8:	3c04a070 	lui	a0,0xa070
bfc039bc:	3c08a071 	lui	t0,0xa071
bfc039c0:	00892021 	addu	a0,a0,t1
bfc039c4:	012a4821 	addu	t1,t1,t2
bfc039c8:	1504017b 	bne	t0,a0,bfc03fb8 <inst_error>
bfc039cc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:150
bfc039d0:	3c04a070 	lui	a0,0xa070
bfc039d4:	3c08a072 	lui	t0,0xa072
bfc039d8:	00892021 	addu	a0,a0,t1
bfc039dc:	012a4821 	addu	t1,t1,t2
bfc039e0:	15040175 	bne	t0,a0,bfc03fb8 <inst_error>
bfc039e4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:151
bfc039e8:	3c04a070 	lui	a0,0xa070
bfc039ec:	3c08a073 	lui	t0,0xa073
bfc039f0:	00892021 	addu	a0,a0,t1
bfc039f4:	012a4821 	addu	t1,t1,t2
bfc039f8:	1504016f 	bne	t0,a0,bfc03fb8 <inst_error>
bfc039fc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:152
bfc03a00:	3c04a070 	lui	a0,0xa070
bfc03a04:	3c08a074 	lui	t0,0xa074
bfc03a08:	00892021 	addu	a0,a0,t1
bfc03a0c:	012a4821 	addu	t1,t1,t2
bfc03a10:	15040169 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03a14:	00000000 	nop
/home/csy/func/inst/n1_lui.S:153
bfc03a18:	3c04a070 	lui	a0,0xa070
bfc03a1c:	3c08a075 	lui	t0,0xa075
bfc03a20:	00892021 	addu	a0,a0,t1
bfc03a24:	012a4821 	addu	t1,t1,t2
bfc03a28:	15040163 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03a2c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:154
bfc03a30:	3c04a070 	lui	a0,0xa070
bfc03a34:	3c08a076 	lui	t0,0xa076
bfc03a38:	00892021 	addu	a0,a0,t1
bfc03a3c:	012a4821 	addu	t1,t1,t2
bfc03a40:	1504015d 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03a44:	00000000 	nop
/home/csy/func/inst/n1_lui.S:155
bfc03a48:	3c04a070 	lui	a0,0xa070
bfc03a4c:	3c08a077 	lui	t0,0xa077
bfc03a50:	00892021 	addu	a0,a0,t1
bfc03a54:	012a4821 	addu	t1,t1,t2
bfc03a58:	15040157 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03a5c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:156
bfc03a60:	3c04a070 	lui	a0,0xa070
bfc03a64:	3c08a078 	lui	t0,0xa078
bfc03a68:	00892021 	addu	a0,a0,t1
bfc03a6c:	012a4821 	addu	t1,t1,t2
bfc03a70:	15040151 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03a74:	00000000 	nop
/home/csy/func/inst/n1_lui.S:157
bfc03a78:	3c04a070 	lui	a0,0xa070
bfc03a7c:	3c08a079 	lui	t0,0xa079
bfc03a80:	00892021 	addu	a0,a0,t1
bfc03a84:	012a4821 	addu	t1,t1,t2
bfc03a88:	1504014b 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03a8c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:158
bfc03a90:	3c04a070 	lui	a0,0xa070
bfc03a94:	3c08a07a 	lui	t0,0xa07a
bfc03a98:	00892021 	addu	a0,a0,t1
bfc03a9c:	012a4821 	addu	t1,t1,t2
bfc03aa0:	15040145 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03aa4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:159
bfc03aa8:	3c04a070 	lui	a0,0xa070
bfc03aac:	3c08a07b 	lui	t0,0xa07b
bfc03ab0:	00892021 	addu	a0,a0,t1
bfc03ab4:	012a4821 	addu	t1,t1,t2
bfc03ab8:	1504013f 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03abc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:160
bfc03ac0:	3c04a070 	lui	a0,0xa070
bfc03ac4:	3c08a07c 	lui	t0,0xa07c
bfc03ac8:	00892021 	addu	a0,a0,t1
bfc03acc:	012a4821 	addu	t1,t1,t2
bfc03ad0:	15040139 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03ad4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:161
bfc03ad8:	3c04a070 	lui	a0,0xa070
bfc03adc:	3c08a07d 	lui	t0,0xa07d
bfc03ae0:	00892021 	addu	a0,a0,t1
bfc03ae4:	012a4821 	addu	t1,t1,t2
bfc03ae8:	15040133 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03aec:	00000000 	nop
/home/csy/func/inst/n1_lui.S:162
bfc03af0:	3c04a070 	lui	a0,0xa070
bfc03af4:	3c08a07e 	lui	t0,0xa07e
bfc03af8:	00892021 	addu	a0,a0,t1
bfc03afc:	012a4821 	addu	t1,t1,t2
bfc03b00:	1504012d 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03b04:	00000000 	nop
/home/csy/func/inst/n1_lui.S:163
bfc03b08:	3c04a070 	lui	a0,0xa070
bfc03b0c:	3c08a07f 	lui	t0,0xa07f
bfc03b10:	00892021 	addu	a0,a0,t1
bfc03b14:	012a4821 	addu	t1,t1,t2
bfc03b18:	15040127 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03b1c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:164
bfc03b20:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:165
bfc03b24:	3c04c080 	lui	a0,0xc080
bfc03b28:	3c08c080 	lui	t0,0xc080
bfc03b2c:	00892021 	addu	a0,a0,t1
bfc03b30:	012a4821 	addu	t1,t1,t2
bfc03b34:	15040120 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03b38:	00000000 	nop
/home/csy/func/inst/n1_lui.S:166
bfc03b3c:	3c04c080 	lui	a0,0xc080
bfc03b40:	3c08c081 	lui	t0,0xc081
bfc03b44:	00892021 	addu	a0,a0,t1
bfc03b48:	012a4821 	addu	t1,t1,t2
bfc03b4c:	1504011a 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03b50:	00000000 	nop
/home/csy/func/inst/n1_lui.S:167
bfc03b54:	3c04c080 	lui	a0,0xc080
bfc03b58:	3c08c082 	lui	t0,0xc082
bfc03b5c:	00892021 	addu	a0,a0,t1
bfc03b60:	012a4821 	addu	t1,t1,t2
bfc03b64:	15040114 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03b68:	00000000 	nop
/home/csy/func/inst/n1_lui.S:168
bfc03b6c:	3c04c080 	lui	a0,0xc080
bfc03b70:	3c08c083 	lui	t0,0xc083
bfc03b74:	00892021 	addu	a0,a0,t1
bfc03b78:	012a4821 	addu	t1,t1,t2
bfc03b7c:	1504010e 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03b80:	00000000 	nop
/home/csy/func/inst/n1_lui.S:169
bfc03b84:	3c04c080 	lui	a0,0xc080
bfc03b88:	3c08c084 	lui	t0,0xc084
bfc03b8c:	00892021 	addu	a0,a0,t1
bfc03b90:	012a4821 	addu	t1,t1,t2
bfc03b94:	15040108 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03b98:	00000000 	nop
/home/csy/func/inst/n1_lui.S:170
bfc03b9c:	3c04c080 	lui	a0,0xc080
bfc03ba0:	3c08c085 	lui	t0,0xc085
bfc03ba4:	00892021 	addu	a0,a0,t1
bfc03ba8:	012a4821 	addu	t1,t1,t2
bfc03bac:	15040102 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03bb0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:171
bfc03bb4:	3c04c080 	lui	a0,0xc080
bfc03bb8:	3c08c086 	lui	t0,0xc086
bfc03bbc:	00892021 	addu	a0,a0,t1
bfc03bc0:	012a4821 	addu	t1,t1,t2
bfc03bc4:	150400fc 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03bc8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:172
bfc03bcc:	3c04c080 	lui	a0,0xc080
bfc03bd0:	3c08c087 	lui	t0,0xc087
bfc03bd4:	00892021 	addu	a0,a0,t1
bfc03bd8:	012a4821 	addu	t1,t1,t2
bfc03bdc:	150400f6 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03be0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:173
bfc03be4:	3c04c080 	lui	a0,0xc080
bfc03be8:	3c08c088 	lui	t0,0xc088
bfc03bec:	00892021 	addu	a0,a0,t1
bfc03bf0:	012a4821 	addu	t1,t1,t2
bfc03bf4:	150400f0 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03bf8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:174
bfc03bfc:	3c04c080 	lui	a0,0xc080
bfc03c00:	3c08c089 	lui	t0,0xc089
bfc03c04:	00892021 	addu	a0,a0,t1
bfc03c08:	012a4821 	addu	t1,t1,t2
bfc03c0c:	150400ea 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03c10:	00000000 	nop
/home/csy/func/inst/n1_lui.S:175
bfc03c14:	3c04c080 	lui	a0,0xc080
bfc03c18:	3c08c08a 	lui	t0,0xc08a
bfc03c1c:	00892021 	addu	a0,a0,t1
bfc03c20:	012a4821 	addu	t1,t1,t2
bfc03c24:	150400e4 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03c28:	00000000 	nop
/home/csy/func/inst/n1_lui.S:176
bfc03c2c:	3c04c080 	lui	a0,0xc080
bfc03c30:	3c08c08b 	lui	t0,0xc08b
bfc03c34:	00892021 	addu	a0,a0,t1
bfc03c38:	012a4821 	addu	t1,t1,t2
bfc03c3c:	150400de 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03c40:	00000000 	nop
/home/csy/func/inst/n1_lui.S:177
bfc03c44:	3c04c080 	lui	a0,0xc080
bfc03c48:	3c08c08c 	lui	t0,0xc08c
bfc03c4c:	00892021 	addu	a0,a0,t1
bfc03c50:	012a4821 	addu	t1,t1,t2
bfc03c54:	150400d8 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03c58:	00000000 	nop
/home/csy/func/inst/n1_lui.S:178
bfc03c5c:	3c04c080 	lui	a0,0xc080
bfc03c60:	3c08c08d 	lui	t0,0xc08d
bfc03c64:	00892021 	addu	a0,a0,t1
bfc03c68:	012a4821 	addu	t1,t1,t2
bfc03c6c:	150400d2 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03c70:	00000000 	nop
/home/csy/func/inst/n1_lui.S:179
bfc03c74:	3c04c080 	lui	a0,0xc080
bfc03c78:	3c08c08e 	lui	t0,0xc08e
bfc03c7c:	00892021 	addu	a0,a0,t1
bfc03c80:	012a4821 	addu	t1,t1,t2
bfc03c84:	150400cc 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03c88:	00000000 	nop
/home/csy/func/inst/n1_lui.S:180
bfc03c8c:	3c04c080 	lui	a0,0xc080
bfc03c90:	3c08c08f 	lui	t0,0xc08f
bfc03c94:	00892021 	addu	a0,a0,t1
bfc03c98:	012a4821 	addu	t1,t1,t2
bfc03c9c:	150400c6 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03ca0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:181
bfc03ca4:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:182
bfc03ca8:	3c04e090 	lui	a0,0xe090
bfc03cac:	3c08e090 	lui	t0,0xe090
bfc03cb0:	00892021 	addu	a0,a0,t1
bfc03cb4:	012a4821 	addu	t1,t1,t2
bfc03cb8:	150400bf 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03cbc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:183
bfc03cc0:	3c04e090 	lui	a0,0xe090
bfc03cc4:	3c08e091 	lui	t0,0xe091
bfc03cc8:	00892021 	addu	a0,a0,t1
bfc03ccc:	012a4821 	addu	t1,t1,t2
bfc03cd0:	150400b9 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03cd4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:184
bfc03cd8:	3c04e090 	lui	a0,0xe090
bfc03cdc:	3c08e092 	lui	t0,0xe092
bfc03ce0:	00892021 	addu	a0,a0,t1
bfc03ce4:	012a4821 	addu	t1,t1,t2
bfc03ce8:	150400b3 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03cec:	00000000 	nop
/home/csy/func/inst/n1_lui.S:185
bfc03cf0:	3c04e090 	lui	a0,0xe090
bfc03cf4:	3c08e093 	lui	t0,0xe093
bfc03cf8:	00892021 	addu	a0,a0,t1
bfc03cfc:	012a4821 	addu	t1,t1,t2
bfc03d00:	150400ad 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03d04:	00000000 	nop
/home/csy/func/inst/n1_lui.S:186
bfc03d08:	3c04e090 	lui	a0,0xe090
bfc03d0c:	3c08e094 	lui	t0,0xe094
bfc03d10:	00892021 	addu	a0,a0,t1
bfc03d14:	012a4821 	addu	t1,t1,t2
bfc03d18:	150400a7 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03d1c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:187
bfc03d20:	3c04e090 	lui	a0,0xe090
bfc03d24:	3c08e095 	lui	t0,0xe095
bfc03d28:	00892021 	addu	a0,a0,t1
bfc03d2c:	012a4821 	addu	t1,t1,t2
bfc03d30:	150400a1 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03d34:	00000000 	nop
/home/csy/func/inst/n1_lui.S:188
bfc03d38:	3c04e090 	lui	a0,0xe090
bfc03d3c:	3c08e096 	lui	t0,0xe096
bfc03d40:	00892021 	addu	a0,a0,t1
bfc03d44:	012a4821 	addu	t1,t1,t2
bfc03d48:	1504009b 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03d4c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:189
bfc03d50:	3c04e090 	lui	a0,0xe090
bfc03d54:	3c08e097 	lui	t0,0xe097
bfc03d58:	00892021 	addu	a0,a0,t1
bfc03d5c:	012a4821 	addu	t1,t1,t2
bfc03d60:	15040095 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03d64:	00000000 	nop
/home/csy/func/inst/n1_lui.S:190
bfc03d68:	3c04e090 	lui	a0,0xe090
bfc03d6c:	3c08e098 	lui	t0,0xe098
bfc03d70:	00892021 	addu	a0,a0,t1
bfc03d74:	012a4821 	addu	t1,t1,t2
bfc03d78:	1504008f 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03d7c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:191
bfc03d80:	3c04e090 	lui	a0,0xe090
bfc03d84:	3c08e099 	lui	t0,0xe099
bfc03d88:	00892021 	addu	a0,a0,t1
bfc03d8c:	012a4821 	addu	t1,t1,t2
bfc03d90:	15040089 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03d94:	00000000 	nop
/home/csy/func/inst/n1_lui.S:192
bfc03d98:	3c04e090 	lui	a0,0xe090
bfc03d9c:	3c08e09a 	lui	t0,0xe09a
bfc03da0:	00892021 	addu	a0,a0,t1
bfc03da4:	012a4821 	addu	t1,t1,t2
bfc03da8:	15040083 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03dac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:193
bfc03db0:	3c04e090 	lui	a0,0xe090
bfc03db4:	3c08e09b 	lui	t0,0xe09b
bfc03db8:	00892021 	addu	a0,a0,t1
bfc03dbc:	012a4821 	addu	t1,t1,t2
bfc03dc0:	1504007d 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03dc4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:194
bfc03dc8:	3c04e090 	lui	a0,0xe090
bfc03dcc:	3c08e09c 	lui	t0,0xe09c
bfc03dd0:	00892021 	addu	a0,a0,t1
bfc03dd4:	012a4821 	addu	t1,t1,t2
bfc03dd8:	15040077 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03ddc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:195
bfc03de0:	3c04e090 	lui	a0,0xe090
bfc03de4:	3c08e09d 	lui	t0,0xe09d
bfc03de8:	00892021 	addu	a0,a0,t1
bfc03dec:	012a4821 	addu	t1,t1,t2
bfc03df0:	15040071 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03df4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:196
bfc03df8:	3c04e090 	lui	a0,0xe090
bfc03dfc:	3c08e09e 	lui	t0,0xe09e
bfc03e00:	00892021 	addu	a0,a0,t1
bfc03e04:	012a4821 	addu	t1,t1,t2
bfc03e08:	1504006b 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03e0c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:197
bfc03e10:	3c04e090 	lui	a0,0xe090
bfc03e14:	3c08e09f 	lui	t0,0xe09f
bfc03e18:	00892021 	addu	a0,a0,t1
bfc03e1c:	012a4821 	addu	t1,t1,t2
bfc03e20:	15040065 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03e24:	00000000 	nop
/home/csy/func/inst/n1_lui.S:198
bfc03e28:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:199
bfc03e2c:	3c04f0a0 	lui	a0,0xf0a0
bfc03e30:	3c08f0a0 	lui	t0,0xf0a0
bfc03e34:	00892021 	addu	a0,a0,t1
bfc03e38:	012a4821 	addu	t1,t1,t2
bfc03e3c:	1504005e 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03e40:	00000000 	nop
/home/csy/func/inst/n1_lui.S:200
bfc03e44:	3c04f0a0 	lui	a0,0xf0a0
bfc03e48:	3c08f0a1 	lui	t0,0xf0a1
bfc03e4c:	00892021 	addu	a0,a0,t1
bfc03e50:	012a4821 	addu	t1,t1,t2
bfc03e54:	15040058 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03e58:	00000000 	nop
/home/csy/func/inst/n1_lui.S:201
bfc03e5c:	3c04f0a0 	lui	a0,0xf0a0
bfc03e60:	3c08f0a2 	lui	t0,0xf0a2
bfc03e64:	00892021 	addu	a0,a0,t1
bfc03e68:	012a4821 	addu	t1,t1,t2
bfc03e6c:	15040052 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03e70:	00000000 	nop
/home/csy/func/inst/n1_lui.S:202
bfc03e74:	3c04f0a0 	lui	a0,0xf0a0
bfc03e78:	3c08f0a3 	lui	t0,0xf0a3
bfc03e7c:	00892021 	addu	a0,a0,t1
bfc03e80:	012a4821 	addu	t1,t1,t2
bfc03e84:	1504004c 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03e88:	00000000 	nop
/home/csy/func/inst/n1_lui.S:203
bfc03e8c:	3c04f0a0 	lui	a0,0xf0a0
bfc03e90:	3c08f0a4 	lui	t0,0xf0a4
bfc03e94:	00892021 	addu	a0,a0,t1
bfc03e98:	012a4821 	addu	t1,t1,t2
bfc03e9c:	15040046 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03ea0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:204
bfc03ea4:	3c04f0a0 	lui	a0,0xf0a0
bfc03ea8:	3c08f0a5 	lui	t0,0xf0a5
bfc03eac:	00892021 	addu	a0,a0,t1
bfc03eb0:	012a4821 	addu	t1,t1,t2
bfc03eb4:	15040040 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03eb8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:205
bfc03ebc:	3c04f0a0 	lui	a0,0xf0a0
bfc03ec0:	3c08f0a6 	lui	t0,0xf0a6
bfc03ec4:	00892021 	addu	a0,a0,t1
bfc03ec8:	012a4821 	addu	t1,t1,t2
bfc03ecc:	1504003a 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03ed0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:206
bfc03ed4:	3c04f0a0 	lui	a0,0xf0a0
bfc03ed8:	3c08f0a7 	lui	t0,0xf0a7
bfc03edc:	00892021 	addu	a0,a0,t1
bfc03ee0:	012a4821 	addu	t1,t1,t2
bfc03ee4:	15040034 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03ee8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:207
bfc03eec:	3c04f0a0 	lui	a0,0xf0a0
bfc03ef0:	3c08f0a8 	lui	t0,0xf0a8
bfc03ef4:	00892021 	addu	a0,a0,t1
bfc03ef8:	012a4821 	addu	t1,t1,t2
bfc03efc:	1504002e 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03f00:	00000000 	nop
/home/csy/func/inst/n1_lui.S:208
bfc03f04:	3c04f0a0 	lui	a0,0xf0a0
bfc03f08:	3c08f0a9 	lui	t0,0xf0a9
bfc03f0c:	00892021 	addu	a0,a0,t1
bfc03f10:	012a4821 	addu	t1,t1,t2
bfc03f14:	15040028 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03f18:	00000000 	nop
/home/csy/func/inst/n1_lui.S:209
bfc03f1c:	3c04f0a0 	lui	a0,0xf0a0
bfc03f20:	3c08f0aa 	lui	t0,0xf0aa
bfc03f24:	00892021 	addu	a0,a0,t1
bfc03f28:	012a4821 	addu	t1,t1,t2
bfc03f2c:	15040022 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03f30:	00000000 	nop
/home/csy/func/inst/n1_lui.S:210
bfc03f34:	3c04f0a0 	lui	a0,0xf0a0
bfc03f38:	3c08f0ab 	lui	t0,0xf0ab
bfc03f3c:	00892021 	addu	a0,a0,t1
bfc03f40:	012a4821 	addu	t1,t1,t2
bfc03f44:	1504001c 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03f48:	00000000 	nop
/home/csy/func/inst/n1_lui.S:211
bfc03f4c:	3c04f0a0 	lui	a0,0xf0a0
bfc03f50:	3c08f0ac 	lui	t0,0xf0ac
bfc03f54:	00892021 	addu	a0,a0,t1
bfc03f58:	012a4821 	addu	t1,t1,t2
bfc03f5c:	15040016 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03f60:	00000000 	nop
/home/csy/func/inst/n1_lui.S:212
bfc03f64:	3c04f0a0 	lui	a0,0xf0a0
bfc03f68:	3c08f0ad 	lui	t0,0xf0ad
bfc03f6c:	00892021 	addu	a0,a0,t1
bfc03f70:	012a4821 	addu	t1,t1,t2
bfc03f74:	15040010 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03f78:	00000000 	nop
/home/csy/func/inst/n1_lui.S:213
bfc03f7c:	3c04f0a0 	lui	a0,0xf0a0
bfc03f80:	3c08f0ae 	lui	t0,0xf0ae
bfc03f84:	00892021 	addu	a0,a0,t1
bfc03f88:	012a4821 	addu	t1,t1,t2
bfc03f8c:	1504000a 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03f90:	00000000 	nop
/home/csy/func/inst/n1_lui.S:214
bfc03f94:	3c04f0a0 	lui	a0,0xf0a0
bfc03f98:	3c08f0af 	lui	t0,0xf0af
bfc03f9c:	00892021 	addu	a0,a0,t1
bfc03fa0:	012a4821 	addu	t1,t1,t2
bfc03fa4:	15040004 	bne	t0,a0,bfc03fb8 <inst_error>
bfc03fa8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:216
bfc03fac:	16400002 	bnez	s2,bfc03fb8 <inst_error>
/home/csy/func/inst/n1_lui.S:217
bfc03fb0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:219
bfc03fb4:	26730001 	addiu	s3,s3,1

bfc03fb8 <inst_error>:
/home/csy/func/inst/n1_lui.S:222
bfc03fb8:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n1_lui.S:223
bfc03fbc:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n1_lui.S:224
bfc03fc0:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n1_lui.S:225
bfc03fc4:	03e00008 	jr	ra
/home/csy/func/inst/n1_lui.S:226
bfc03fc8:	00000000 	nop
bfc03fcc:	00000000 	nop

bfc03fd0 <n65_syscall_ex_test>:
/home/csy/func/inst/n65_syscall_ex.S:7
bfc03fd0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n65_syscall_ex.S:8
bfc03fd4:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n65_syscall_ex.S:9
bfc03fd8:	24120001 	li	s2,1
/home/csy/func/inst/n65_syscall_ex.S:10
bfc03fdc:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n65_syscall_ex.S:12
bfc03fe0:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n65_syscall_ex.S:13
bfc03fe4:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n65_syscall_ex.S:14
bfc03fe8:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n65_syscall_ex.S:15
bfc03fec:	00000000 	nop
/home/csy/func/inst/n65_syscall_ex.S:16
bfc03ff0:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n65_syscall_ex.S:19
bfc03ff4:	3c14bfc0 	lui	s4,0xbfc0
bfc03ff8:	26943ffc 	addiu	s4,s4,16380

bfc03ffc <syscall_pc1>:
/home/csy/func/inst/n65_syscall_ex.S:21
bfc03ffc:	0000000c 	syscall
/home/csy/func/inst/n65_syscall_ex.S:22
bfc04000:	1657003c 	bne	s2,s7,bfc040f4 <inst_error>
/home/csy/func/inst/n65_syscall_ex.S:23
bfc04004:	00000000 	nop
/home/csy/func/inst/n65_syscall_ex.S:25
bfc04008:	24120001 	li	s2,1
/home/csy/func/inst/n65_syscall_ex.S:26
bfc0400c:	3c14bfc0 	lui	s4,0xbfc0
bfc04010:	2694401c 	addiu	s4,s4,16412
/home/csy/func/inst/n65_syscall_ex.S:27
bfc04014:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n65_syscall_ex.S:28
bfc04018:	ad140004 	sw	s4,4(t0)

bfc0401c <syscall_pc2>:
/home/csy/func/inst/n65_syscall_ex.S:30
bfc0401c:	0000000c 	syscall
/home/csy/func/inst/n65_syscall_ex.S:31
bfc04020:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n65_syscall_ex.S:32
bfc04024:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n65_syscall_ex.S:33
bfc04028:	15340032 	bne	t1,s4,bfc040f4 <inst_error>
/home/csy/func/inst/n65_syscall_ex.S:34
bfc0402c:	00000000 	nop
/home/csy/func/inst/n65_syscall_ex.S:35
bfc04030:	16570030 	bne	s2,s7,bfc040f4 <inst_error>
/home/csy/func/inst/n65_syscall_ex.S:36
bfc04034:	00000000 	nop
/home/csy/func/inst/n65_syscall_ex.S:37
bfc04038:	24120001 	li	s2,1
/home/csy/func/inst/n65_syscall_ex.S:38
bfc0403c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n65_syscall_ex.S:40
bfc04040:	24120001 	li	s2,1
/home/csy/func/inst/n65_syscall_ex.S:41
bfc04044:	3c14bfc0 	lui	s4,0xbfc0
bfc04048:	26944054 	addiu	s4,s4,16468
/home/csy/func/inst/n65_syscall_ex.S:42
bfc0404c:	01000011 	mthi	t0
/home/csy/func/inst/n65_syscall_ex.S:43
bfc04050:	0110001b 	divu	zero,t0,s0

bfc04054 <syscall_pc3>:
/home/csy/func/inst/n65_syscall_ex.S:45
bfc04054:	0000000c 	syscall
/home/csy/func/inst/n65_syscall_ex.S:46
bfc04058:	00004810 	mfhi	t1
/home/csy/func/inst/n65_syscall_ex.S:47
bfc0405c:	11280025 	beq	t1,t0,bfc040f4 <inst_error>
/home/csy/func/inst/n65_syscall_ex.S:48
bfc04060:	00000000 	nop
/home/csy/func/inst/n65_syscall_ex.S:49
bfc04064:	16570023 	bne	s2,s7,bfc040f4 <inst_error>
/home/csy/func/inst/n65_syscall_ex.S:50
bfc04068:	00000000 	nop
/home/csy/func/inst/n65_syscall_ex.S:52
bfc0406c:	24120001 	li	s2,1
/home/csy/func/inst/n65_syscall_ex.S:53
bfc04070:	3c14bfc0 	lui	s4,0xbfc0
bfc04074:	26944078 	addiu	s4,s4,16504

bfc04078 <syscall_pc4>:
/home/csy/func/inst/n65_syscall_ex.S:55
bfc04078:	0000000c 	syscall
/home/csy/func/inst/n65_syscall_ex.S:56
bfc0407c:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n65_syscall_ex.S:57
bfc04080:	1657001c 	bne	s2,s7,bfc040f4 <inst_error>
/home/csy/func/inst/n65_syscall_ex.S:58
bfc04084:	00000000 	nop
/home/csy/func/inst/n65_syscall_ex.S:60
bfc04088:	24120001 	li	s2,1
/home/csy/func/inst/n65_syscall_ex.S:61
bfc0408c:	3c14bfc0 	lui	s4,0xbfc0
bfc04090:	2694409c 	addiu	s4,s4,16540
/home/csy/func/inst/n65_syscall_ex.S:62
bfc04094:	01000013 	mtlo	t0
/home/csy/func/inst/n65_syscall_ex.S:63
bfc04098:	01100019 	multu	t0,s0

bfc0409c <syscall_pc5>:
/home/csy/func/inst/n65_syscall_ex.S:65
bfc0409c:	0000000c 	syscall
/home/csy/func/inst/n65_syscall_ex.S:66
bfc040a0:	00004810 	mfhi	t1
/home/csy/func/inst/n65_syscall_ex.S:67
bfc040a4:	11280013 	beq	t1,t0,bfc040f4 <inst_error>
/home/csy/func/inst/n65_syscall_ex.S:68
bfc040a8:	00000000 	nop
/home/csy/func/inst/n65_syscall_ex.S:69
bfc040ac:	16570011 	bne	s2,s7,bfc040f4 <inst_error>
/home/csy/func/inst/n65_syscall_ex.S:70
bfc040b0:	00000000 	nop
/home/csy/func/inst/n65_syscall_ex.S:72
bfc040b4:	24120001 	li	s2,1
/home/csy/func/inst/n65_syscall_ex.S:73
bfc040b8:	3c14bfc0 	lui	s4,0xbfc0
bfc040bc:	269440c0 	addiu	s4,s4,16576

bfc040c0 <syscall_pc6>:
/home/csy/func/inst/n65_syscall_ex.S:75
bfc040c0:	0000000c 	syscall
/home/csy/func/inst/n65_syscall_ex.S:76
bfc040c4:	01120019 	multu	t0,s2
/home/csy/func/inst/n65_syscall_ex.S:77
bfc040c8:	1657000a 	bne	s2,s7,bfc040f4 <inst_error>
/home/csy/func/inst/n65_syscall_ex.S:78
bfc040cc:	00000000 	nop
/home/csy/func/inst/n65_syscall_ex.S:80
bfc040d0:	24120001 	li	s2,1
/home/csy/func/inst/n65_syscall_ex.S:81
bfc040d4:	3c14bfc0 	lui	s4,0xbfc0
bfc040d8:	269440e0 	addiu	s4,s4,16608
/home/csy/func/inst/n65_syscall_ex.S:82
bfc040dc:	40927000 	mtc0	s2,c0_epc

bfc040e0 <syscall_pc7>:
/home/csy/func/inst/n65_syscall_ex.S:84
bfc040e0:	0000000c 	syscall
/home/csy/func/inst/n65_syscall_ex.S:85
bfc040e4:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n65_syscall_ex.S:86
bfc040e8:	16570002 	bne	s2,s7,bfc040f4 <inst_error>
/home/csy/func/inst/n65_syscall_ex.S:87
bfc040ec:	00000000 	nop
/home/csy/func/inst/n65_syscall_ex.S:89
bfc040f0:	26730001 	addiu	s3,s3,1

bfc040f4 <inst_error>:
/home/csy/func/inst/n65_syscall_ex.S:92
bfc040f4:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n65_syscall_ex.S:93
bfc040f8:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n65_syscall_ex.S:94
bfc040fc:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n65_syscall_ex.S:95
bfc04100:	03e00008 	jr	ra
/home/csy/func/inst/n65_syscall_ex.S:96
bfc04104:	00000000 	nop
	...

bfc04110 <n77_soft_int_ex_test>:
/home/csy/func/inst/n77_soft_int_ex.S:7
bfc04110:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n77_soft_int_ex.S:8
bfc04114:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n77_soft_int_ex.S:9
bfc04118:	24120008 	li	s2,8
/home/csy/func/inst/n77_soft_int_ex.S:10
bfc0411c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n77_soft_int_ex.S:12
bfc04120:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n77_soft_int_ex.S:13
bfc04124:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n77_soft_int_ex.S:14
bfc04128:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n77_soft_int_ex.S:15
bfc0412c:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:16
bfc04130:	3c170008 	lui	s7,0x8
/home/csy/func/inst/n77_soft_int_ex.S:19
bfc04134:	3c14bfc0 	lui	s4,0xbfc0
bfc04138:	26944164 	addiu	s4,s4,16740
/home/csy/func/inst/n77_soft_int_ex.S:20
bfc0413c:	3c070040 	lui	a3,0x40
bfc04140:	34e7ff01 	ori	a3,a3,0xff01
bfc04144:	2402ffff 	li	v0,-1
bfc04148:	3c03000f 	lui	v1,0xf
bfc0414c:	3463f2ff 	ori	v1,v1,0xf2ff
bfc04150:	40804800 	mtc0	zero,c0_count
bfc04154:	40825800 	mtc0	v0,c0_compare
bfc04158:	40876000 	mtc0	a3,c0_status
bfc0415c:	00000000 	nop
bfc04160:	40836800 	mtc0	v1,c0_cause
bfc04164:	1000ffff 	b	bfc04164 <n77_soft_int_ex_test+0x54>
bfc04168:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:21
bfc0416c:	16570078 	bne	s2,s7,bfc04350 <inst_error>
/home/csy/func/inst/n77_soft_int_ex.S:22
bfc04170:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:24
bfc04174:	24120008 	li	s2,8
/home/csy/func/inst/n77_soft_int_ex.S:25
bfc04178:	3c14bfc0 	lui	s4,0xbfc0
bfc0417c:	269441ac 	addiu	s4,s4,16812
/home/csy/func/inst/n77_soft_int_ex.S:26
bfc04180:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n77_soft_int_ex.S:27
bfc04184:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n77_soft_int_ex.S:28
bfc04188:	3c070040 	lui	a3,0x40
bfc0418c:	34e7ff01 	ori	a3,a3,0xff01
bfc04190:	2402ffff 	li	v0,-1
bfc04194:	3403f1ff 	li	v1,0xf1ff
bfc04198:	40804800 	mtc0	zero,c0_count
bfc0419c:	40825800 	mtc0	v0,c0_compare
bfc041a0:	40876000 	mtc0	a3,c0_status
bfc041a4:	00000000 	nop
bfc041a8:	40836800 	mtc0	v1,c0_cause
bfc041ac:	1000ffff 	b	bfc041ac <n77_soft_int_ex_test+0x9c>
bfc041b0:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:29
bfc041b4:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n77_soft_int_ex.S:30
bfc041b8:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n77_soft_int_ex.S:31
bfc041bc:	15340064 	bne	t1,s4,bfc04350 <inst_error>
/home/csy/func/inst/n77_soft_int_ex.S:32
bfc041c0:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:33
bfc041c4:	16570062 	bne	s2,s7,bfc04350 <inst_error>
/home/csy/func/inst/n77_soft_int_ex.S:34
bfc041c8:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:35
bfc041cc:	24120008 	li	s2,8
/home/csy/func/inst/n77_soft_int_ex.S:36
bfc041d0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n77_soft_int_ex.S:38
bfc041d4:	24120008 	li	s2,8
/home/csy/func/inst/n77_soft_int_ex.S:39
bfc041d8:	3c14bfc0 	lui	s4,0xbfc0
bfc041dc:	2694420c 	addiu	s4,s4,16908
/home/csy/func/inst/n77_soft_int_ex.S:40
bfc041e0:	01000011 	mthi	t0
/home/csy/func/inst/n77_soft_int_ex.S:41
bfc041e4:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n77_soft_int_ex.S:42
bfc041e8:	3c070040 	lui	a3,0x40
bfc041ec:	34e7ff01 	ori	a3,a3,0xff01
bfc041f0:	2402ffff 	li	v0,-1
bfc041f4:	24030100 	li	v1,256
bfc041f8:	40804800 	mtc0	zero,c0_count
bfc041fc:	40825800 	mtc0	v0,c0_compare
bfc04200:	40876000 	mtc0	a3,c0_status
bfc04204:	00000000 	nop
bfc04208:	40836800 	mtc0	v1,c0_cause
bfc0420c:	1000ffff 	b	bfc0420c <n77_soft_int_ex_test+0xfc>
bfc04210:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:43
bfc04214:	00004810 	mfhi	t1
/home/csy/func/inst/n77_soft_int_ex.S:44
bfc04218:	1128004d 	beq	t1,t0,bfc04350 <inst_error>
/home/csy/func/inst/n77_soft_int_ex.S:45
bfc0421c:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:46
bfc04220:	1657004b 	bne	s2,s7,bfc04350 <inst_error>
/home/csy/func/inst/n77_soft_int_ex.S:47
bfc04224:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:49
bfc04228:	24120008 	li	s2,8
/home/csy/func/inst/n77_soft_int_ex.S:50
bfc0422c:	3c14bfc0 	lui	s4,0xbfc0
bfc04230:	26944258 	addiu	s4,s4,16984
/home/csy/func/inst/n77_soft_int_ex.S:51
bfc04234:	3c070040 	lui	a3,0x40
bfc04238:	34e7ff01 	ori	a3,a3,0xff01
bfc0423c:	2402ffff 	li	v0,-1
bfc04240:	24030200 	li	v1,512
bfc04244:	40804800 	mtc0	zero,c0_count
bfc04248:	40825800 	mtc0	v0,c0_compare
bfc0424c:	40876000 	mtc0	a3,c0_status
bfc04250:	00000000 	nop
bfc04254:	40836800 	mtc0	v1,c0_cause
bfc04258:	1000ffff 	b	bfc04258 <n77_soft_int_ex_test+0x148>
bfc0425c:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:52
bfc04260:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n77_soft_int_ex.S:53
bfc04264:	1657003a 	bne	s2,s7,bfc04350 <inst_error>
/home/csy/func/inst/n77_soft_int_ex.S:54
bfc04268:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:56
bfc0426c:	24120008 	li	s2,8
/home/csy/func/inst/n77_soft_int_ex.S:57
bfc04270:	3c14bfc0 	lui	s4,0xbfc0
bfc04274:	269442a4 	addiu	s4,s4,17060
/home/csy/func/inst/n77_soft_int_ex.S:58
bfc04278:	01000013 	mtlo	t0
/home/csy/func/inst/n77_soft_int_ex.S:59
bfc0427c:	01100019 	multu	t0,s0
/home/csy/func/inst/n77_soft_int_ex.S:60
bfc04280:	3c070040 	lui	a3,0x40
bfc04284:	34e7ff01 	ori	a3,a3,0xff01
bfc04288:	2402ffff 	li	v0,-1
bfc0428c:	24030300 	li	v1,768
bfc04290:	40804800 	mtc0	zero,c0_count
bfc04294:	40825800 	mtc0	v0,c0_compare
bfc04298:	40876000 	mtc0	a3,c0_status
bfc0429c:	00000000 	nop
bfc042a0:	40836800 	mtc0	v1,c0_cause
bfc042a4:	1000ffff 	b	bfc042a4 <n77_soft_int_ex_test+0x194>
bfc042a8:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:61
bfc042ac:	00004810 	mfhi	t1
/home/csy/func/inst/n77_soft_int_ex.S:62
bfc042b0:	11280027 	beq	t1,t0,bfc04350 <inst_error>
/home/csy/func/inst/n77_soft_int_ex.S:63
bfc042b4:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:64
bfc042b8:	16570025 	bne	s2,s7,bfc04350 <inst_error>
/home/csy/func/inst/n77_soft_int_ex.S:65
bfc042bc:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:67
bfc042c0:	24120008 	li	s2,8
/home/csy/func/inst/n77_soft_int_ex.S:68
bfc042c4:	3c14bfc0 	lui	s4,0xbfc0
bfc042c8:	269442f0 	addiu	s4,s4,17136
/home/csy/func/inst/n77_soft_int_ex.S:69
bfc042cc:	3c070040 	lui	a3,0x40
bfc042d0:	34e7ff01 	ori	a3,a3,0xff01
bfc042d4:	2402ffff 	li	v0,-1
bfc042d8:	24030500 	li	v1,1280
bfc042dc:	40804800 	mtc0	zero,c0_count
bfc042e0:	40825800 	mtc0	v0,c0_compare
bfc042e4:	40876000 	mtc0	a3,c0_status
bfc042e8:	00000000 	nop
bfc042ec:	40836800 	mtc0	v1,c0_cause
bfc042f0:	1000ffff 	b	bfc042f0 <n77_soft_int_ex_test+0x1e0>
bfc042f4:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:70
bfc042f8:	01120019 	multu	t0,s2
/home/csy/func/inst/n77_soft_int_ex.S:71
bfc042fc:	16570014 	bne	s2,s7,bfc04350 <inst_error>
/home/csy/func/inst/n77_soft_int_ex.S:72
bfc04300:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:74
bfc04304:	24120008 	li	s2,8
/home/csy/func/inst/n77_soft_int_ex.S:75
bfc04308:	3c14bfc0 	lui	s4,0xbfc0
bfc0430c:	26944338 	addiu	s4,s4,17208
/home/csy/func/inst/n77_soft_int_ex.S:76
bfc04310:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n77_soft_int_ex.S:77
bfc04314:	3c070040 	lui	a3,0x40
bfc04318:	34e7ff01 	ori	a3,a3,0xff01
bfc0431c:	2402ffff 	li	v0,-1
bfc04320:	24030f00 	li	v1,3840
bfc04324:	40804800 	mtc0	zero,c0_count
bfc04328:	40825800 	mtc0	v0,c0_compare
bfc0432c:	40876000 	mtc0	a3,c0_status
bfc04330:	00000000 	nop
bfc04334:	40836800 	mtc0	v1,c0_cause
bfc04338:	1000ffff 	b	bfc04338 <n77_soft_int_ex_test+0x228>
bfc0433c:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:78
bfc04340:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n77_soft_int_ex.S:79
bfc04344:	16570002 	bne	s2,s7,bfc04350 <inst_error>
/home/csy/func/inst/n77_soft_int_ex.S:80
bfc04348:	00000000 	nop
/home/csy/func/inst/n77_soft_int_ex.S:82
bfc0434c:	26730001 	addiu	s3,s3,1

bfc04350 <inst_error>:
/home/csy/func/inst/n77_soft_int_ex.S:85
bfc04350:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n77_soft_int_ex.S:86
bfc04354:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n77_soft_int_ex.S:87
bfc04358:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n77_soft_int_ex.S:88
bfc0435c:	03e00008 	jr	ra
/home/csy/func/inst/n77_soft_int_ex.S:89
bfc04360:	00000000 	nop
	...

bfc04370 <n83_bltz_ds_ex_test>:
/home/csy/func/inst/n83_bltz_ds_ex.S:7
bfc04370:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n83_bltz_ds_ex.S:8
bfc04374:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n83_bltz_ds_ex.S:10
bfc04378:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n83_bltz_ds_ex.S:11
bfc0437c:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n83_bltz_ds_ex.S:12
bfc04380:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n83_bltz_ds_ex.S:13
bfc04384:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:16
bfc04388:	24120001 	li	s2,1
/home/csy/func/inst/n83_bltz_ds_ex.S:17
bfc0438c:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n83_bltz_ds_ex.S:18
bfc04390:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:19
bfc04394:	3c14bfc0 	lui	s4,0xbfc0
bfc04398:	2694439c 	addiu	s4,s4,17308
/home/csy/func/inst/n83_bltz_ds_ex.S:20
bfc0439c:	050000af 	bltz	t0,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:21
bfc043a0:	0000000c 	syscall
/home/csy/func/inst/n83_bltz_ds_ex.S:22
bfc043a4:	165700ad 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:23
bfc043a8:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:24
bfc043ac:	24120001 	li	s2,1
/home/csy/func/inst/n83_bltz_ds_ex.S:25
bfc043b0:	3c14bfc0 	lui	s4,0xbfc0
bfc043b4:	269443b8 	addiu	s4,s4,17336
/home/csy/func/inst/n83_bltz_ds_ex.S:26
bfc043b8:	064000a8 	bltz	s2,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:27
bfc043bc:	0000000c 	syscall
/home/csy/func/inst/n83_bltz_ds_ex.S:28
bfc043c0:	165700a6 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:29
bfc043c4:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:31
bfc043c8:	24120002 	li	s2,2
/home/csy/func/inst/n83_bltz_ds_ex.S:32
bfc043cc:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n83_bltz_ds_ex.S:33
bfc043d0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:34
bfc043d4:	3c14bfc0 	lui	s4,0xbfc0
bfc043d8:	269443dc 	addiu	s4,s4,17372
/home/csy/func/inst/n83_bltz_ds_ex.S:35
bfc043dc:	0500009f 	bltz	t0,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:36
bfc043e0:	0000000d 	break
/home/csy/func/inst/n83_bltz_ds_ex.S:37
bfc043e4:	1657009d 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:38
bfc043e8:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:39
bfc043ec:	24120002 	li	s2,2
/home/csy/func/inst/n83_bltz_ds_ex.S:40
bfc043f0:	3c14bfc0 	lui	s4,0xbfc0
bfc043f4:	269443f8 	addiu	s4,s4,17400
/home/csy/func/inst/n83_bltz_ds_ex.S:41
bfc043f8:	06400098 	bltz	s2,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:42
bfc043fc:	0000000d 	break
/home/csy/func/inst/n83_bltz_ds_ex.S:43
bfc04400:	16570096 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:44
bfc04404:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:46
bfc04408:	24120003 	li	s2,3
/home/csy/func/inst/n83_bltz_ds_ex.S:47
bfc0440c:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n83_bltz_ds_ex.S:48
bfc04410:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:49
bfc04414:	3c14bfc0 	lui	s4,0xbfc0
bfc04418:	2694442c 	addiu	s4,s4,17452
/home/csy/func/inst/n83_bltz_ds_ex.S:50
bfc0441c:	3c04ba03 	lui	a0,0xba03
bfc04420:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n83_bltz_ds_ex.S:51
bfc04424:	3c05b615 	lui	a1,0xb615
bfc04428:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n83_bltz_ds_ex.S:52
bfc0442c:	0500008b 	bltz	t0,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:53
bfc04430:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n83_bltz_ds_ex.S:54
bfc04434:	16570089 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:55
bfc04438:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:56
bfc0443c:	24120003 	li	s2,3
/home/csy/func/inst/n83_bltz_ds_ex.S:57
bfc04440:	3c14bfc0 	lui	s4,0xbfc0
bfc04444:	26944448 	addiu	s4,s4,17480
/home/csy/func/inst/n83_bltz_ds_ex.S:58
bfc04448:	06400084 	bltz	s2,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:59
bfc0444c:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n83_bltz_ds_ex.S:60
bfc04450:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:61
bfc04454:	16570081 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:62
bfc04458:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:63
bfc0445c:	24120003 	li	s2,3
/home/csy/func/inst/n83_bltz_ds_ex.S:64
bfc04460:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:65
bfc04464:	3c14bfc0 	lui	s4,0xbfc0
bfc04468:	26944474 	addiu	s4,s4,17524
/home/csy/func/inst/n83_bltz_ds_ex.S:66
bfc0446c:	3c047fff 	lui	a0,0x7fff
bfc04470:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n83_bltz_ds_ex.S:67
bfc04474:	05000079 	bltz	t0,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:68
bfc04478:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n83_bltz_ds_ex.S:69
bfc0447c:	16570077 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:70
bfc04480:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:71
bfc04484:	24120003 	li	s2,3
/home/csy/func/inst/n83_bltz_ds_ex.S:72
bfc04488:	3c14bfc0 	lui	s4,0xbfc0
bfc0448c:	26944490 	addiu	s4,s4,17552
/home/csy/func/inst/n83_bltz_ds_ex.S:73
bfc04490:	06400072 	bltz	s2,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:74
bfc04494:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n83_bltz_ds_ex.S:75
bfc04498:	16570070 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:76
bfc0449c:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:77
bfc044a0:	24120003 	li	s2,3
/home/csy/func/inst/n83_bltz_ds_ex.S:78
bfc044a4:	3c14bfc0 	lui	s4,0xbfc0
bfc044a8:	269444bc 	addiu	s4,s4,17596
/home/csy/func/inst/n83_bltz_ds_ex.S:79
bfc044ac:	3c04a85e 	lui	a0,0xa85e
bfc044b0:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n83_bltz_ds_ex.S:80
bfc044b4:	3c056b7e 	lui	a1,0x6b7e
bfc044b8:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n83_bltz_ds_ex.S:81
bfc044bc:	05000067 	bltz	t0,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:82
bfc044c0:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n83_bltz_ds_ex.S:83
bfc044c4:	16570065 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:84
bfc044c8:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:85
bfc044cc:	24120003 	li	s2,3
/home/csy/func/inst/n83_bltz_ds_ex.S:86
bfc044d0:	3c14bfc0 	lui	s4,0xbfc0
bfc044d4:	269444d8 	addiu	s4,s4,17624
/home/csy/func/inst/n83_bltz_ds_ex.S:87
bfc044d8:	06400060 	bltz	s2,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:88
bfc044dc:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n83_bltz_ds_ex.S:89
bfc044e0:	1657005e 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:90
bfc044e4:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:92
bfc044e8:	24120004 	li	s2,4
/home/csy/func/inst/n83_bltz_ds_ex.S:93
bfc044ec:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n83_bltz_ds_ex.S:94
bfc044f0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:95
bfc044f4:	3c14bfc0 	lui	s4,0xbfc0
bfc044f8:	269444fc 	addiu	s4,s4,17660
/home/csy/func/inst/n83_bltz_ds_ex.S:96
bfc044fc:	05000057 	bltz	t0,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:97
bfc04500:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:98
bfc04504:	16570055 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:99
bfc04508:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:100
bfc0450c:	24120004 	li	s2,4
/home/csy/func/inst/n83_bltz_ds_ex.S:101
bfc04510:	3c14bfc0 	lui	s4,0xbfc0
bfc04514:	26944518 	addiu	s4,s4,17688
/home/csy/func/inst/n83_bltz_ds_ex.S:102
bfc04518:	06400050 	bltz	s2,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:103
bfc0451c:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:104
bfc04520:	1657004e 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:105
bfc04524:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:106
bfc04528:	24120004 	li	s2,4
/home/csy/func/inst/n83_bltz_ds_ex.S:107
bfc0452c:	3c14bfc0 	lui	s4,0xbfc0
bfc04530:	26944534 	addiu	s4,s4,17716
/home/csy/func/inst/n83_bltz_ds_ex.S:108
bfc04534:	05000049 	bltz	t0,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:109
bfc04538:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:110
bfc0453c:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n83_bltz_ds_ex.S:111
bfc04540:	16570046 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:112
bfc04544:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:113
bfc04548:	24120004 	li	s2,4
/home/csy/func/inst/n83_bltz_ds_ex.S:114
bfc0454c:	3c14bfc0 	lui	s4,0xbfc0
bfc04550:	26944554 	addiu	s4,s4,17748
/home/csy/func/inst/n83_bltz_ds_ex.S:115
bfc04554:	06400041 	bltz	s2,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:116
bfc04558:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:117
bfc0455c:	1657003f 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:118
bfc04560:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:119
bfc04564:	3c14bfc0 	lui	s4,0xbfc0
bfc04568:	2694456c 	addiu	s4,s4,17772
/home/csy/func/inst/n83_bltz_ds_ex.S:120
bfc0456c:	0500003b 	bltz	t0,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:121
bfc04570:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:122
bfc04574:	16570039 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:123
bfc04578:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:124
bfc0457c:	24120004 	li	s2,4
/home/csy/func/inst/n83_bltz_ds_ex.S:125
bfc04580:	3c14bfc0 	lui	s4,0xbfc0
bfc04584:	26944588 	addiu	s4,s4,17800
/home/csy/func/inst/n83_bltz_ds_ex.S:126
bfc04588:	06400034 	bltz	s2,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:127
bfc0458c:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:128
bfc04590:	16570032 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:129
bfc04594:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:131
bfc04598:	24120005 	li	s2,5
/home/csy/func/inst/n83_bltz_ds_ex.S:132
bfc0459c:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n83_bltz_ds_ex.S:133
bfc045a0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:134
bfc045a4:	3c14bfc0 	lui	s4,0xbfc0
bfc045a8:	269445ac 	addiu	s4,s4,17836
/home/csy/func/inst/n83_bltz_ds_ex.S:135
bfc045ac:	0500002b 	bltz	t0,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:136
bfc045b0:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:137
bfc045b4:	16570029 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:138
bfc045b8:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:139
bfc045bc:	24120005 	li	s2,5
/home/csy/func/inst/n83_bltz_ds_ex.S:140
bfc045c0:	3c14bfc0 	lui	s4,0xbfc0
bfc045c4:	269445c8 	addiu	s4,s4,17864
/home/csy/func/inst/n83_bltz_ds_ex.S:141
bfc045c8:	06400024 	bltz	s2,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:142
bfc045cc:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:143
bfc045d0:	16570022 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:144
bfc045d4:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:145
bfc045d8:	24120005 	li	s2,5
/home/csy/func/inst/n83_bltz_ds_ex.S:146
bfc045dc:	3c14bfc0 	lui	s4,0xbfc0
bfc045e0:	269445e4 	addiu	s4,s4,17892
/home/csy/func/inst/n83_bltz_ds_ex.S:147
bfc045e4:	0500001d 	bltz	t0,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:148
bfc045e8:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:149
bfc045ec:	1657001b 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:150
bfc045f0:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:151
bfc045f4:	24120005 	li	s2,5
/home/csy/func/inst/n83_bltz_ds_ex.S:152
bfc045f8:	3c14bfc0 	lui	s4,0xbfc0
bfc045fc:	26944600 	addiu	s4,s4,17920
/home/csy/func/inst/n83_bltz_ds_ex.S:153
bfc04600:	06400016 	bltz	s2,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:154
bfc04604:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:155
bfc04608:	16570014 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:156
bfc0460c:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:159
bfc04610:	24120007 	li	s2,7
/home/csy/func/inst/n83_bltz_ds_ex.S:160
bfc04614:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n83_bltz_ds_ex.S:161
bfc04618:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n83_bltz_ds_ex.S:162
bfc0461c:	3c14bfc0 	lui	s4,0xbfc0
bfc04620:	26944624 	addiu	s4,s4,17956
/home/csy/func/inst/n83_bltz_ds_ex.S:163
bfc04624:	0500000d 	bltz	t0,bfc0465c <inst_error>
bfc04628:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n83_bltz_ds_ex.S:165
bfc0462c:	02f20018 	mult	s7,s2
/home/csy/func/inst/n83_bltz_ds_ex.S:166
bfc04630:	1657000a 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:167
bfc04634:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:168
bfc04638:	24120007 	li	s2,7
/home/csy/func/inst/n83_bltz_ds_ex.S:169
bfc0463c:	3c14bfc0 	lui	s4,0xbfc0
bfc04640:	26944648 	addiu	s4,s4,17992
/home/csy/func/inst/n83_bltz_ds_ex.S:170
bfc04644:	02f20018 	mult	s7,s2
/home/csy/func/inst/n83_bltz_ds_ex.S:171
bfc04648:	06400004 	bltz	s2,bfc0465c <inst_error>
bfc0464c:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n83_bltz_ds_ex.S:173
bfc04650:	16570002 	bne	s2,s7,bfc0465c <inst_error>
/home/csy/func/inst/n83_bltz_ds_ex.S:174
bfc04654:	00000000 	nop
/home/csy/func/inst/n83_bltz_ds_ex.S:176
bfc04658:	26730001 	addiu	s3,s3,1

bfc0465c <inst_error>:
/home/csy/func/inst/n83_bltz_ds_ex.S:179
bfc0465c:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n83_bltz_ds_ex.S:180
bfc04660:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n83_bltz_ds_ex.S:181
bfc04664:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n83_bltz_ds_ex.S:182
bfc04668:	03e00008 	jr	ra
/home/csy/func/inst/n83_bltz_ds_ex.S:183
bfc0466c:	00000000 	nop

bfc04670 <n69_sub_ov_ex_test>:
/home/csy/func/inst/n69_sub_ov_ex.S:7
bfc04670:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n69_sub_ov_ex.S:8
bfc04674:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n69_sub_ov_ex.S:9
bfc04678:	24120003 	li	s2,3
/home/csy/func/inst/n69_sub_ov_ex.S:10
bfc0467c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n69_sub_ov_ex.S:12
bfc04680:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n69_sub_ov_ex.S:13
bfc04684:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n69_sub_ov_ex.S:14
bfc04688:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n69_sub_ov_ex.S:15
bfc0468c:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:16
bfc04690:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n69_sub_ov_ex.S:19
bfc04694:	3c023f06 	lui	v0,0x3f06
bfc04698:	344237b6 	ori	v0,v0,0x37b6
bfc0469c:	3c033f06 	lui	v1,0x3f06
bfc046a0:	346337b6 	ori	v1,v1,0x37b6
bfc046a4:	3c0463d3 	lui	a0,0x63d3
bfc046a8:	3484fd1e 	ori	a0,a0,0xfd1e
bfc046ac:	3c05d037 	lui	a1,0xd037
bfc046b0:	34a58bea 	ori	a1,a1,0x8bea
/home/csy/func/inst/n69_sub_ov_ex.S:20
bfc046b4:	3c14bfc0 	lui	s4,0xbfc0
bfc046b8:	269446bc 	addiu	s4,s4,18108
/home/csy/func/inst/n69_sub_ov_ex.S:21
bfc046bc:	00851022 	sub	v0,a0,a1
/home/csy/func/inst/n69_sub_ov_ex.S:22
bfc046c0:	1657007a 	bne	s2,s7,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:23
bfc046c4:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:24
bfc046c8:	14430078 	bne	v0,v1,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:25
bfc046cc:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:27
bfc046d0:	24120003 	li	s2,3
/home/csy/func/inst/n69_sub_ov_ex.S:28
bfc046d4:	3c028754 	lui	v0,0x8754
bfc046d8:	3442eb0d 	ori	v0,v0,0xeb0d
bfc046dc:	3c038754 	lui	v1,0x8754
bfc046e0:	3463eb0d 	ori	v1,v1,0xeb0d
bfc046e4:	3c046f8c 	lui	a0,0x6f8c
bfc046e8:	34841169 	ori	a0,a0,0x1169
bfc046ec:	3c059edd 	lui	a1,0x9edd
bfc046f0:	34a5bba4 	ori	a1,a1,0xbba4
/home/csy/func/inst/n69_sub_ov_ex.S:29
bfc046f4:	3c14bfc0 	lui	s4,0xbfc0
bfc046f8:	26944704 	addiu	s4,s4,18180
/home/csy/func/inst/n69_sub_ov_ex.S:30
bfc046fc:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n69_sub_ov_ex.S:31
bfc04700:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n69_sub_ov_ex.S:32
bfc04704:	00851022 	sub	v0,a0,a1
/home/csy/func/inst/n69_sub_ov_ex.S:33
bfc04708:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n69_sub_ov_ex.S:34
bfc0470c:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n69_sub_ov_ex.S:35
bfc04710:	15340066 	bne	t1,s4,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:36
bfc04714:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:37
bfc04718:	16570064 	bne	s2,s7,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:38
bfc0471c:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:39
bfc04720:	14430062 	bne	v0,v1,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:40
bfc04724:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:41
bfc04728:	24120003 	li	s2,3
/home/csy/func/inst/n69_sub_ov_ex.S:42
bfc0472c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n69_sub_ov_ex.S:44
bfc04730:	24120003 	li	s2,3
/home/csy/func/inst/n69_sub_ov_ex.S:45
bfc04734:	3c02f4e0 	lui	v0,0xf4e0
bfc04738:	34421aa8 	ori	v0,v0,0x1aa8
bfc0473c:	3c03f4e0 	lui	v1,0xf4e0
bfc04740:	34631aa8 	ori	v1,v1,0x1aa8
bfc04744:	3c04734a 	lui	a0,0x734a
bfc04748:	3484367f 	ori	a0,a0,0x367f
bfc0474c:	3c05e173 	lui	a1,0xe173
bfc04750:	34a554f8 	ori	a1,a1,0x54f8
/home/csy/func/inst/n69_sub_ov_ex.S:46
bfc04754:	3c14bfc0 	lui	s4,0xbfc0
bfc04758:	26944764 	addiu	s4,s4,18276
/home/csy/func/inst/n69_sub_ov_ex.S:47
bfc0475c:	01000011 	mthi	t0
/home/csy/func/inst/n69_sub_ov_ex.S:48
bfc04760:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n69_sub_ov_ex.S:49
bfc04764:	00851022 	sub	v0,a0,a1
/home/csy/func/inst/n69_sub_ov_ex.S:50
bfc04768:	00004810 	mfhi	t1
/home/csy/func/inst/n69_sub_ov_ex.S:51
bfc0476c:	1128004f 	beq	t1,t0,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:52
bfc04770:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:53
bfc04774:	1657004d 	bne	s2,s7,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:54
bfc04778:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:55
bfc0477c:	1443004b 	bne	v0,v1,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:56
bfc04780:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:58
bfc04784:	24120003 	li	s2,3
/home/csy/func/inst/n69_sub_ov_ex.S:59
bfc04788:	3c02dc37 	lui	v0,0xdc37
bfc0478c:	34423c00 	ori	v0,v0,0x3c00
bfc04790:	3c03dc37 	lui	v1,0xdc37
bfc04794:	34633c00 	ori	v1,v1,0x3c00
bfc04798:	3c0421cc 	lui	a0,0x21cc
bfc0479c:	3484bee8 	ori	a0,a0,0xbee8
bfc047a0:	3c059a01 	lui	a1,0x9a01
bfc047a4:	34a5fac4 	ori	a1,a1,0xfac4
/home/csy/func/inst/n69_sub_ov_ex.S:60
bfc047a8:	3c14bfc0 	lui	s4,0xbfc0
bfc047ac:	269447b0 	addiu	s4,s4,18352
/home/csy/func/inst/n69_sub_ov_ex.S:61
bfc047b0:	00851022 	sub	v0,a0,a1
/home/csy/func/inst/n69_sub_ov_ex.S:62
bfc047b4:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n69_sub_ov_ex.S:63
bfc047b8:	1657003c 	bne	s2,s7,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:64
bfc047bc:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:65
bfc047c0:	1443003a 	bne	v0,v1,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:66
bfc047c4:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:68
bfc047c8:	24120003 	li	s2,3
/home/csy/func/inst/n69_sub_ov_ex.S:69
bfc047cc:	3c02b226 	lui	v0,0xb226
bfc047d0:	3442ec94 	ori	v0,v0,0xec94
bfc047d4:	3c03b226 	lui	v1,0xb226
bfc047d8:	3463ec94 	ori	v1,v1,0xec94
bfc047dc:	3c04b196 	lui	a0,0xb196
bfc047e0:	3484dd00 	ori	a0,a0,0xdd00
bfc047e4:	3c057dfd 	lui	a1,0x7dfd
bfc047e8:	34a59ab0 	ori	a1,a1,0x9ab0
/home/csy/func/inst/n69_sub_ov_ex.S:70
bfc047ec:	3c14bfc0 	lui	s4,0xbfc0
bfc047f0:	269447fc 	addiu	s4,s4,18428
/home/csy/func/inst/n69_sub_ov_ex.S:71
bfc047f4:	01000013 	mtlo	t0
/home/csy/func/inst/n69_sub_ov_ex.S:72
bfc047f8:	01100019 	multu	t0,s0
/home/csy/func/inst/n69_sub_ov_ex.S:73
bfc047fc:	00851022 	sub	v0,a0,a1
/home/csy/func/inst/n69_sub_ov_ex.S:74
bfc04800:	00004810 	mfhi	t1
/home/csy/func/inst/n69_sub_ov_ex.S:75
bfc04804:	11280029 	beq	t1,t0,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:76
bfc04808:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:77
bfc0480c:	16570027 	bne	s2,s7,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:78
bfc04810:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:79
bfc04814:	14430025 	bne	v0,v1,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:80
bfc04818:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:82
bfc0481c:	24120003 	li	s2,3
/home/csy/func/inst/n69_sub_ov_ex.S:83
bfc04820:	3c021625 	lui	v0,0x1625
bfc04824:	3442bcc8 	ori	v0,v0,0xbcc8
bfc04828:	3c031625 	lui	v1,0x1625
bfc0482c:	3463bcc8 	ori	v1,v1,0xbcc8
bfc04830:	3c04b53c 	lui	a0,0xb53c
bfc04834:	3484d464 	ori	a0,a0,0xd464
bfc04838:	3c05421d 	lui	a1,0x421d
bfc0483c:	34a5020a 	ori	a1,a1,0x20a
/home/csy/func/inst/n69_sub_ov_ex.S:84
bfc04840:	3c14bfc0 	lui	s4,0xbfc0
bfc04844:	26944848 	addiu	s4,s4,18504
/home/csy/func/inst/n69_sub_ov_ex.S:85
bfc04848:	00851022 	sub	v0,a0,a1
/home/csy/func/inst/n69_sub_ov_ex.S:86
bfc0484c:	01120019 	multu	t0,s2
/home/csy/func/inst/n69_sub_ov_ex.S:87
bfc04850:	16570016 	bne	s2,s7,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:88
bfc04854:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:89
bfc04858:	14430014 	bne	v0,v1,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:90
bfc0485c:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:92
bfc04860:	24120003 	li	s2,3
/home/csy/func/inst/n69_sub_ov_ex.S:93
bfc04864:	3c029f76 	lui	v0,0x9f76
bfc04868:	34427750 	ori	v0,v0,0x7750
bfc0486c:	3c039f76 	lui	v1,0x9f76
bfc04870:	34637750 	ori	v1,v1,0x7750
bfc04874:	3c047041 	lui	a0,0x7041
bfc04878:	34840c7a 	ori	a0,a0,0xc7a
bfc0487c:	3c058ddc 	lui	a1,0x8ddc
bfc04880:	34a520c0 	ori	a1,a1,0x20c0
/home/csy/func/inst/n69_sub_ov_ex.S:94
bfc04884:	3c14bfc0 	lui	s4,0xbfc0
bfc04888:	26944890 	addiu	s4,s4,18576
/home/csy/func/inst/n69_sub_ov_ex.S:95
bfc0488c:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n69_sub_ov_ex.S:96
bfc04890:	00851022 	sub	v0,a0,a1
/home/csy/func/inst/n69_sub_ov_ex.S:97
bfc04894:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n69_sub_ov_ex.S:98
bfc04898:	16570004 	bne	s2,s7,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:99
bfc0489c:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:100
bfc048a0:	14430002 	bne	v0,v1,bfc048ac <inst_error>
/home/csy/func/inst/n69_sub_ov_ex.S:101
bfc048a4:	00000000 	nop
/home/csy/func/inst/n69_sub_ov_ex.S:103
bfc048a8:	26730001 	addiu	s3,s3,1

bfc048ac <inst_error>:
/home/csy/func/inst/n69_sub_ov_ex.S:106
bfc048ac:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n69_sub_ov_ex.S:107
bfc048b0:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n69_sub_ov_ex.S:108
bfc048b4:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n69_sub_ov_ex.S:109
bfc048b8:	03e00008 	jr	ra
/home/csy/func/inst/n69_sub_ov_ex.S:110
bfc048bc:	00000000 	nop

bfc048c0 <n87_jal_ds_ex_test>:
/home/csy/func/inst/n87_jal_ds_ex.S:7
bfc048c0:	03e0b021 	move	s6,ra
/home/csy/func/inst/n87_jal_ds_ex.S:8
bfc048c4:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n87_jal_ds_ex.S:9
bfc048c8:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n87_jal_ds_ex.S:11
bfc048cc:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n87_jal_ds_ex.S:12
bfc048d0:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n87_jal_ds_ex.S:13
bfc048d4:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n87_jal_ds_ex.S:14
bfc048d8:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:17
bfc048dc:	24120001 	li	s2,1
/home/csy/func/inst/n87_jal_ds_ex.S:18
bfc048e0:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n87_jal_ds_ex.S:19
bfc048e4:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:20
bfc048e8:	3c14bfc0 	lui	s4,0xbfc0
bfc048ec:	269448f0 	addiu	s4,s4,18672
/home/csy/func/inst/n87_jal_ds_ex.S:21
bfc048f0:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:22
bfc048f4:	0000000c 	syscall
/home/csy/func/inst/n87_jal_ds_ex.S:23
bfc048f8:	165700ad 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:24
bfc048fc:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:25
bfc04900:	24120001 	li	s2,1
/home/csy/func/inst/n87_jal_ds_ex.S:26
bfc04904:	3c14bfc0 	lui	s4,0xbfc0
bfc04908:	2694490c 	addiu	s4,s4,18700
/home/csy/func/inst/n87_jal_ds_ex.S:27
bfc0490c:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:28
bfc04910:	0000000c 	syscall
/home/csy/func/inst/n87_jal_ds_ex.S:29
bfc04914:	165700a6 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:30
bfc04918:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:32
bfc0491c:	24120002 	li	s2,2
/home/csy/func/inst/n87_jal_ds_ex.S:33
bfc04920:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n87_jal_ds_ex.S:34
bfc04924:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:35
bfc04928:	3c14bfc0 	lui	s4,0xbfc0
bfc0492c:	26944930 	addiu	s4,s4,18736
/home/csy/func/inst/n87_jal_ds_ex.S:36
bfc04930:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:37
bfc04934:	0000000d 	break
/home/csy/func/inst/n87_jal_ds_ex.S:38
bfc04938:	1657009d 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:39
bfc0493c:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:40
bfc04940:	24120002 	li	s2,2
/home/csy/func/inst/n87_jal_ds_ex.S:41
bfc04944:	3c14bfc0 	lui	s4,0xbfc0
bfc04948:	2694494c 	addiu	s4,s4,18764
/home/csy/func/inst/n87_jal_ds_ex.S:42
bfc0494c:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:43
bfc04950:	0000000d 	break
/home/csy/func/inst/n87_jal_ds_ex.S:44
bfc04954:	16570096 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:45
bfc04958:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:47
bfc0495c:	24120003 	li	s2,3
/home/csy/func/inst/n87_jal_ds_ex.S:48
bfc04960:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n87_jal_ds_ex.S:49
bfc04964:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:50
bfc04968:	3c14bfc0 	lui	s4,0xbfc0
bfc0496c:	26944980 	addiu	s4,s4,18816
/home/csy/func/inst/n87_jal_ds_ex.S:51
bfc04970:	3c04ba03 	lui	a0,0xba03
bfc04974:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n87_jal_ds_ex.S:52
bfc04978:	3c05b615 	lui	a1,0xb615
bfc0497c:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n87_jal_ds_ex.S:53
bfc04980:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:54
bfc04984:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n87_jal_ds_ex.S:55
bfc04988:	16570089 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:56
bfc0498c:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:57
bfc04990:	24120003 	li	s2,3
/home/csy/func/inst/n87_jal_ds_ex.S:58
bfc04994:	3c14bfc0 	lui	s4,0xbfc0
bfc04998:	2694499c 	addiu	s4,s4,18844
/home/csy/func/inst/n87_jal_ds_ex.S:59
bfc0499c:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:60
bfc049a0:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n87_jal_ds_ex.S:61
bfc049a4:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:62
bfc049a8:	16570081 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:63
bfc049ac:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:64
bfc049b0:	24120003 	li	s2,3
/home/csy/func/inst/n87_jal_ds_ex.S:65
bfc049b4:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:66
bfc049b8:	3c14bfc0 	lui	s4,0xbfc0
bfc049bc:	269449c8 	addiu	s4,s4,18888
/home/csy/func/inst/n87_jal_ds_ex.S:67
bfc049c0:	3c047fff 	lui	a0,0x7fff
bfc049c4:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n87_jal_ds_ex.S:68
bfc049c8:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:69
bfc049cc:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n87_jal_ds_ex.S:70
bfc049d0:	16570077 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:71
bfc049d4:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:72
bfc049d8:	24120003 	li	s2,3
/home/csy/func/inst/n87_jal_ds_ex.S:73
bfc049dc:	3c14bfc0 	lui	s4,0xbfc0
bfc049e0:	269449e4 	addiu	s4,s4,18916
/home/csy/func/inst/n87_jal_ds_ex.S:74
bfc049e4:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:75
bfc049e8:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n87_jal_ds_ex.S:76
bfc049ec:	16570070 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:77
bfc049f0:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:78
bfc049f4:	24120003 	li	s2,3
/home/csy/func/inst/n87_jal_ds_ex.S:79
bfc049f8:	3c14bfc0 	lui	s4,0xbfc0
bfc049fc:	26944a10 	addiu	s4,s4,18960
/home/csy/func/inst/n87_jal_ds_ex.S:80
bfc04a00:	3c04a85e 	lui	a0,0xa85e
bfc04a04:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n87_jal_ds_ex.S:81
bfc04a08:	3c056b7e 	lui	a1,0x6b7e
bfc04a0c:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n87_jal_ds_ex.S:82
bfc04a10:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:83
bfc04a14:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n87_jal_ds_ex.S:84
bfc04a18:	16570065 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:85
bfc04a1c:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:86
bfc04a20:	24120003 	li	s2,3
/home/csy/func/inst/n87_jal_ds_ex.S:87
bfc04a24:	3c14bfc0 	lui	s4,0xbfc0
bfc04a28:	26944a2c 	addiu	s4,s4,18988
/home/csy/func/inst/n87_jal_ds_ex.S:88
bfc04a2c:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:89
bfc04a30:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n87_jal_ds_ex.S:90
bfc04a34:	1657005e 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:91
bfc04a38:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:93
bfc04a3c:	24120004 	li	s2,4
/home/csy/func/inst/n87_jal_ds_ex.S:94
bfc04a40:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n87_jal_ds_ex.S:95
bfc04a44:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:96
bfc04a48:	3c14bfc0 	lui	s4,0xbfc0
bfc04a4c:	26944a50 	addiu	s4,s4,19024
/home/csy/func/inst/n87_jal_ds_ex.S:97
bfc04a50:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:98
bfc04a54:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:99
bfc04a58:	16570055 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:100
bfc04a5c:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:101
bfc04a60:	24120004 	li	s2,4
/home/csy/func/inst/n87_jal_ds_ex.S:102
bfc04a64:	3c14bfc0 	lui	s4,0xbfc0
bfc04a68:	26944a6c 	addiu	s4,s4,19052
/home/csy/func/inst/n87_jal_ds_ex.S:103
bfc04a6c:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:104
bfc04a70:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:105
bfc04a74:	1657004e 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:106
bfc04a78:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:107
bfc04a7c:	24120004 	li	s2,4
/home/csy/func/inst/n87_jal_ds_ex.S:108
bfc04a80:	3c14bfc0 	lui	s4,0xbfc0
bfc04a84:	26944a88 	addiu	s4,s4,19080
/home/csy/func/inst/n87_jal_ds_ex.S:109
bfc04a88:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:110
bfc04a8c:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:111
bfc04a90:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n87_jal_ds_ex.S:112
bfc04a94:	16570046 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:113
bfc04a98:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:114
bfc04a9c:	24120004 	li	s2,4
/home/csy/func/inst/n87_jal_ds_ex.S:115
bfc04aa0:	3c14bfc0 	lui	s4,0xbfc0
bfc04aa4:	26944aa8 	addiu	s4,s4,19112
/home/csy/func/inst/n87_jal_ds_ex.S:116
bfc04aa8:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:117
bfc04aac:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:118
bfc04ab0:	1657003f 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:119
bfc04ab4:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:120
bfc04ab8:	3c14bfc0 	lui	s4,0xbfc0
bfc04abc:	26944ac0 	addiu	s4,s4,19136
/home/csy/func/inst/n87_jal_ds_ex.S:121
bfc04ac0:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:122
bfc04ac4:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:123
bfc04ac8:	16570039 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:124
bfc04acc:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:125
bfc04ad0:	24120004 	li	s2,4
/home/csy/func/inst/n87_jal_ds_ex.S:126
bfc04ad4:	3c14bfc0 	lui	s4,0xbfc0
bfc04ad8:	26944adc 	addiu	s4,s4,19164
/home/csy/func/inst/n87_jal_ds_ex.S:127
bfc04adc:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:128
bfc04ae0:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:129
bfc04ae4:	16570032 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:130
bfc04ae8:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:132
bfc04aec:	24120005 	li	s2,5
/home/csy/func/inst/n87_jal_ds_ex.S:133
bfc04af0:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n87_jal_ds_ex.S:134
bfc04af4:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:135
bfc04af8:	3c14bfc0 	lui	s4,0xbfc0
bfc04afc:	26944b00 	addiu	s4,s4,19200
/home/csy/func/inst/n87_jal_ds_ex.S:136
bfc04b00:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:137
bfc04b04:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:138
bfc04b08:	16570029 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:139
bfc04b0c:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:140
bfc04b10:	24120005 	li	s2,5
/home/csy/func/inst/n87_jal_ds_ex.S:141
bfc04b14:	3c14bfc0 	lui	s4,0xbfc0
bfc04b18:	26944b1c 	addiu	s4,s4,19228
/home/csy/func/inst/n87_jal_ds_ex.S:142
bfc04b1c:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:143
bfc04b20:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:144
bfc04b24:	16570022 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:145
bfc04b28:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:146
bfc04b2c:	24120005 	li	s2,5
/home/csy/func/inst/n87_jal_ds_ex.S:147
bfc04b30:	3c14bfc0 	lui	s4,0xbfc0
bfc04b34:	26944b38 	addiu	s4,s4,19256
/home/csy/func/inst/n87_jal_ds_ex.S:148
bfc04b38:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:149
bfc04b3c:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:150
bfc04b40:	1657001b 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:151
bfc04b44:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:152
bfc04b48:	24120005 	li	s2,5
/home/csy/func/inst/n87_jal_ds_ex.S:153
bfc04b4c:	3c14bfc0 	lui	s4,0xbfc0
bfc04b50:	26944b54 	addiu	s4,s4,19284
/home/csy/func/inst/n87_jal_ds_ex.S:154
bfc04b54:	0ff012ec 	jal	bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:155
bfc04b58:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:156
bfc04b5c:	16570014 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:157
bfc04b60:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:160
bfc04b64:	24120007 	li	s2,7
/home/csy/func/inst/n87_jal_ds_ex.S:161
bfc04b68:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n87_jal_ds_ex.S:162
bfc04b6c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n87_jal_ds_ex.S:163
bfc04b70:	3c14bfc0 	lui	s4,0xbfc0
bfc04b74:	26944b78 	addiu	s4,s4,19320
/home/csy/func/inst/n87_jal_ds_ex.S:164
bfc04b78:	0ff012ec 	jal	bfc04bb0 <inst_error>
bfc04b7c:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n87_jal_ds_ex.S:166
bfc04b80:	02f20018 	mult	s7,s2
/home/csy/func/inst/n87_jal_ds_ex.S:167
bfc04b84:	1657000a 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:168
bfc04b88:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:169
bfc04b8c:	24120007 	li	s2,7
/home/csy/func/inst/n87_jal_ds_ex.S:170
bfc04b90:	3c14bfc0 	lui	s4,0xbfc0
bfc04b94:	26944b9c 	addiu	s4,s4,19356
/home/csy/func/inst/n87_jal_ds_ex.S:171
bfc04b98:	02f20018 	mult	s7,s2
/home/csy/func/inst/n87_jal_ds_ex.S:172
bfc04b9c:	0ff012ec 	jal	bfc04bb0 <inst_error>
bfc04ba0:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n87_jal_ds_ex.S:174
bfc04ba4:	16570002 	bne	s2,s7,bfc04bb0 <inst_error>
/home/csy/func/inst/n87_jal_ds_ex.S:175
bfc04ba8:	00000000 	nop
/home/csy/func/inst/n87_jal_ds_ex.S:177
bfc04bac:	26730001 	addiu	s3,s3,1

bfc04bb0 <inst_error>:
/home/csy/func/inst/n87_jal_ds_ex.S:180
bfc04bb0:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n87_jal_ds_ex.S:181
bfc04bb4:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n87_jal_ds_ex.S:182
bfc04bb8:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n87_jal_ds_ex.S:183
bfc04bbc:	02c0f821 	move	ra,s6
/home/csy/func/inst/n87_jal_ds_ex.S:184
bfc04bc0:	03e00008 	jr	ra
/home/csy/func/inst/n87_jal_ds_ex.S:185
bfc04bc4:	00000000 	nop
	...

bfc04bd0 <n74_sh_ades_ex_test>:
/home/csy/func/inst/n74_sh_ades_ex.S:7
bfc04bd0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n74_sh_ades_ex.S:8
bfc04bd4:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n74_sh_ades_ex.S:9
bfc04bd8:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:10
bfc04bdc:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:12
bfc04be0:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n74_sh_ades_ex.S:13
bfc04be4:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n74_sh_ades_ex.S:14
bfc04be8:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n74_sh_ades_ex.S:15
bfc04bec:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:16
bfc04bf0:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n74_sh_ades_ex.S:19
bfc04bf4:	3c028003 	lui	v0,0x8003
bfc04bf8:	3442602a 	ori	v0,v0,0x602a
bfc04bfc:	3c038003 	lui	v1,0x8003
bfc04c00:	3463602a 	ori	v1,v1,0x602a
bfc04c04:	3c04800d 	lui	a0,0x800d
bfc04c08:	3484602a 	ori	a0,a0,0x602a
bfc04c0c:	3c0547cd 	lui	a1,0x47cd
bfc04c10:	34a5f6da 	ori	a1,a1,0xf6da
bfc04c14:	24878c35 	addiu	a3,a0,-29643
bfc04c18:	ac828c32 	sw	v0,-29646(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:20
bfc04c1c:	3c14bfc0 	lui	s4,0xbfc0
bfc04c20:	26944c24 	addiu	s4,s4,19492
/home/csy/func/inst/n74_sh_ades_ex.S:21
bfc04c24:	a4858c35 	sh	a1,-29643(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:22
bfc04c28:	165700a2 	bne	s2,s7,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:23
bfc04c2c:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:24
bfc04c30:	8c828c32 	lw	v0,-29646(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:25
bfc04c34:	1443009f 	bne	v0,v1,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:26
bfc04c38:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:27
bfc04c3c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:28
bfc04c40:	14f6009c 	bne	a3,s6,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:29
bfc04c44:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:31
bfc04c48:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:32
bfc04c4c:	3c026e9c 	lui	v0,0x6e9c
bfc04c50:	3442e24e 	ori	v0,v0,0xe24e
bfc04c54:	3c036e9c 	lui	v1,0x6e9c
bfc04c58:	3463e24e 	ori	v1,v1,0xe24e
bfc04c5c:	3c04800d 	lui	a0,0x800d
bfc04c60:	34842c08 	ori	a0,a0,0x2c08
bfc04c64:	3c056e9c 	lui	a1,0x6e9c
bfc04c68:	34a5e24e 	ori	a1,a1,0xe24e
bfc04c6c:	2487098b 	addiu	a3,a0,2443
bfc04c70:	ac820988 	sw	v0,2440(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:33
bfc04c74:	3c14bfc0 	lui	s4,0xbfc0
bfc04c78:	26944c84 	addiu	s4,s4,19588
/home/csy/func/inst/n74_sh_ades_ex.S:34
bfc04c7c:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:35
bfc04c80:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:36
bfc04c84:	a485098b 	sh	a1,2443(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:37
bfc04c88:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:38
bfc04c8c:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:39
bfc04c90:	15340088 	bne	t1,s4,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:40
bfc04c94:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:41
bfc04c98:	16570086 	bne	s2,s7,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:42
bfc04c9c:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:43
bfc04ca0:	8c820988 	lw	v0,2440(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:44
bfc04ca4:	14430083 	bne	v0,v1,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:45
bfc04ca8:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:46
bfc04cac:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:47
bfc04cb0:	14f60080 	bne	a3,s6,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:48
bfc04cb4:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:49
bfc04cb8:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:50
bfc04cbc:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n74_sh_ades_ex.S:52
bfc04cc0:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:53
bfc04cc4:	3c02419f 	lui	v0,0x419f
bfc04cc8:	34429f3b 	ori	v0,v0,0x9f3b
bfc04ccc:	3c03419f 	lui	v1,0x419f
bfc04cd0:	34639f3b 	ori	v1,v1,0x9f3b
bfc04cd4:	3c04800d 	lui	a0,0x800d
bfc04cd8:	34841356 	ori	a0,a0,0x1356
bfc04cdc:	3c05bb1a 	lui	a1,0xbb1a
bfc04ce0:	34a5fce8 	ori	a1,a1,0xfce8
bfc04ce4:	24871dd3 	addiu	a3,a0,7635
bfc04ce8:	ac821dd2 	sw	v0,7634(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:54
bfc04cec:	3c14bfc0 	lui	s4,0xbfc0
bfc04cf0:	26944cfc 	addiu	s4,s4,19708
/home/csy/func/inst/n74_sh_ades_ex.S:55
bfc04cf4:	01000011 	mthi	t0
/home/csy/func/inst/n74_sh_ades_ex.S:56
bfc04cf8:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n74_sh_ades_ex.S:57
bfc04cfc:	a4851dd3 	sh	a1,7635(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:58
bfc04d00:	00004810 	mfhi	t1
/home/csy/func/inst/n74_sh_ades_ex.S:59
bfc04d04:	1128006b 	beq	t1,t0,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:60
bfc04d08:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:61
bfc04d0c:	16570069 	bne	s2,s7,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:62
bfc04d10:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:63
bfc04d14:	8c821dd2 	lw	v0,7634(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:64
bfc04d18:	14430066 	bne	v0,v1,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:65
bfc04d1c:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:66
bfc04d20:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:67
bfc04d24:	14f60063 	bne	a3,s6,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:68
bfc04d28:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:70
bfc04d2c:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:71
bfc04d30:	3c028003 	lui	v0,0x8003
bfc04d34:	34423729 	ori	v0,v0,0x3729
bfc04d38:	3c038003 	lui	v1,0x8003
bfc04d3c:	34633729 	ori	v1,v1,0x3729
bfc04d40:	3c04800d 	lui	a0,0x800d
bfc04d44:	3484372c 	ori	a0,a0,0x372c
bfc04d48:	3c05190a 	lui	a1,0x190a
bfc04d4c:	34a565ca 	ori	a1,a1,0x65ca
bfc04d50:	248786f1 	addiu	a3,a0,-30991
bfc04d54:	ac8286f0 	sw	v0,-30992(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:72
bfc04d58:	3c14bfc0 	lui	s4,0xbfc0
bfc04d5c:	26944d60 	addiu	s4,s4,19808
/home/csy/func/inst/n74_sh_ades_ex.S:73
bfc04d60:	a48586f1 	sh	a1,-30991(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:74
bfc04d64:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n74_sh_ades_ex.S:75
bfc04d68:	16570052 	bne	s2,s7,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:76
bfc04d6c:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:77
bfc04d70:	8c8286f0 	lw	v0,-30992(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:78
bfc04d74:	1443004f 	bne	v0,v1,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:79
bfc04d78:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:80
bfc04d7c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:81
bfc04d80:	14f6004c 	bne	a3,s6,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:82
bfc04d84:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:84
bfc04d88:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:85
bfc04d8c:	3c028003 	lui	v0,0x8003
bfc04d90:	34421ff3 	ori	v0,v0,0x1ff3
bfc04d94:	3c038003 	lui	v1,0x8003
bfc04d98:	34631ff3 	ori	v1,v1,0x1ff3
bfc04d9c:	3c04800d 	lui	a0,0x800d
bfc04da0:	34841ff0 	ori	a0,a0,0x1ff0
bfc04da4:	3c059fcc 	lui	a1,0x9fcc
bfc04da8:	34a54ca0 	ori	a1,a1,0x4ca0
bfc04dac:	2487b663 	addiu	a3,a0,-18845
bfc04db0:	ac82b660 	sw	v0,-18848(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:86
bfc04db4:	3c14bfc0 	lui	s4,0xbfc0
bfc04db8:	26944dc4 	addiu	s4,s4,19908
/home/csy/func/inst/n74_sh_ades_ex.S:87
bfc04dbc:	01000013 	mtlo	t0
/home/csy/func/inst/n74_sh_ades_ex.S:88
bfc04dc0:	01100019 	multu	t0,s0
/home/csy/func/inst/n74_sh_ades_ex.S:89
bfc04dc4:	a485b663 	sh	a1,-18845(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:90
bfc04dc8:	00004810 	mfhi	t1
/home/csy/func/inst/n74_sh_ades_ex.S:91
bfc04dcc:	11280039 	beq	t1,t0,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:92
bfc04dd0:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:93
bfc04dd4:	16570037 	bne	s2,s7,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:94
bfc04dd8:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:95
bfc04ddc:	8c82b660 	lw	v0,-18848(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:96
bfc04de0:	14430034 	bne	v0,v1,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:97
bfc04de4:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:98
bfc04de8:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:99
bfc04dec:	14f60031 	bne	a3,s6,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:100
bfc04df0:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:102
bfc04df4:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:103
bfc04df8:	3c0273b3 	lui	v0,0x73b3
bfc04dfc:	34425a2b 	ori	v0,v0,0x5a2b
bfc04e00:	3c0373b3 	lui	v1,0x73b3
bfc04e04:	34635a2b 	ori	v1,v1,0x5a2b
bfc04e08:	3c04800d 	lui	a0,0x800d
bfc04e0c:	3484351b 	ori	a0,a0,0x351b
bfc04e10:	3c05bd6f 	lui	a1,0xbd6f
bfc04e14:	34a5420a 	ori	a1,a1,0x420a
bfc04e18:	248764f2 	addiu	a3,a0,25842
bfc04e1c:	ac8264f1 	sw	v0,25841(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:104
bfc04e20:	3c14bfc0 	lui	s4,0xbfc0
bfc04e24:	26944e28 	addiu	s4,s4,20008
/home/csy/func/inst/n74_sh_ades_ex.S:105
bfc04e28:	a48564f2 	sh	a1,25842(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:106
bfc04e2c:	01120019 	multu	t0,s2
/home/csy/func/inst/n74_sh_ades_ex.S:107
bfc04e30:	16570020 	bne	s2,s7,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:108
bfc04e34:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:109
bfc04e38:	8c8264f1 	lw	v0,25841(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:110
bfc04e3c:	1443001d 	bne	v0,v1,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:111
bfc04e40:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:112
bfc04e44:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:113
bfc04e48:	14f6001a 	bne	a3,s6,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:114
bfc04e4c:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:116
bfc04e50:	24120005 	li	s2,5
/home/csy/func/inst/n74_sh_ades_ex.S:117
bfc04e54:	3c02a521 	lui	v0,0xa521
bfc04e58:	34420b0a 	ori	v0,v0,0xb0a
bfc04e5c:	3c03a521 	lui	v1,0xa521
bfc04e60:	34630b0a 	ori	v1,v1,0xb0a
bfc04e64:	3c04800d 	lui	a0,0x800d
bfc04e68:	348463d7 	ori	a0,a0,0x63d7
bfc04e6c:	3c0500e9 	lui	a1,0xe9
bfc04e70:	34a55990 	ori	a1,a1,0x5990
bfc04e74:	24877fc6 	addiu	a3,a0,32710
bfc04e78:	ac827fc5 	sw	v0,32709(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:118
bfc04e7c:	3c14bfc0 	lui	s4,0xbfc0
bfc04e80:	26944e88 	addiu	s4,s4,20104
/home/csy/func/inst/n74_sh_ades_ex.S:119
bfc04e84:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n74_sh_ades_ex.S:120
bfc04e88:	a4857fc6 	sh	a1,32710(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:121
bfc04e8c:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n74_sh_ades_ex.S:122
bfc04e90:	16570008 	bne	s2,s7,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:123
bfc04e94:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:124
bfc04e98:	8c827fc5 	lw	v0,32709(a0)
/home/csy/func/inst/n74_sh_ades_ex.S:125
bfc04e9c:	14430005 	bne	v0,v1,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:126
bfc04ea0:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:127
bfc04ea4:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n74_sh_ades_ex.S:128
bfc04ea8:	14f60002 	bne	a3,s6,bfc04eb4 <inst_error>
/home/csy/func/inst/n74_sh_ades_ex.S:129
bfc04eac:	00000000 	nop
/home/csy/func/inst/n74_sh_ades_ex.S:131
bfc04eb0:	26730001 	addiu	s3,s3,1

bfc04eb4 <inst_error>:
/home/csy/func/inst/n74_sh_ades_ex.S:134
bfc04eb4:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n74_sh_ades_ex.S:135
bfc04eb8:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n74_sh_ades_ex.S:136
bfc04ebc:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n74_sh_ades_ex.S:137
bfc04ec0:	03e00008 	jr	ra
/home/csy/func/inst/n74_sh_ades_ex.S:138
bfc04ec4:	00000000 	nop
	...

bfc04ed0 <n85_bgezal_ds_ex_test>:
/home/csy/func/inst/n85_bgezal_ds_ex.S:7
bfc04ed0:	03e0b021 	move	s6,ra
/home/csy/func/inst/n85_bgezal_ds_ex.S:8
bfc04ed4:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n85_bgezal_ds_ex.S:9
bfc04ed8:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n85_bgezal_ds_ex.S:11
bfc04edc:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n85_bgezal_ds_ex.S:12
bfc04ee0:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n85_bgezal_ds_ex.S:13
bfc04ee4:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n85_bgezal_ds_ex.S:14
bfc04ee8:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:17
bfc04eec:	24120001 	li	s2,1
/home/csy/func/inst/n85_bgezal_ds_ex.S:18
bfc04ef0:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n85_bgezal_ds_ex.S:19
bfc04ef4:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:20
bfc04ef8:	3c14bfc0 	lui	s4,0xbfc0
bfc04efc:	26944f00 	addiu	s4,s4,20224
/home/csy/func/inst/n85_bgezal_ds_ex.S:21
bfc04f00:	041100af 	bal	bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:22
bfc04f04:	0000000c 	syscall
/home/csy/func/inst/n85_bgezal_ds_ex.S:23
bfc04f08:	165700ad 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:24
bfc04f0c:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:25
bfc04f10:	24120001 	li	s2,1
/home/csy/func/inst/n85_bgezal_ds_ex.S:26
bfc04f14:	3c14bfc0 	lui	s4,0xbfc0
bfc04f18:	26944f1c 	addiu	s4,s4,20252
/home/csy/func/inst/n85_bgezal_ds_ex.S:27
bfc04f1c:	051100a8 	bgezal	t0,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:28
bfc04f20:	0000000c 	syscall
/home/csy/func/inst/n85_bgezal_ds_ex.S:29
bfc04f24:	165700a6 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:30
bfc04f28:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:32
bfc04f2c:	24120002 	li	s2,2
/home/csy/func/inst/n85_bgezal_ds_ex.S:33
bfc04f30:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n85_bgezal_ds_ex.S:34
bfc04f34:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:35
bfc04f38:	3c14bfc0 	lui	s4,0xbfc0
bfc04f3c:	26944f40 	addiu	s4,s4,20288
/home/csy/func/inst/n85_bgezal_ds_ex.S:36
bfc04f40:	0411009f 	bal	bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:37
bfc04f44:	0000000d 	break
/home/csy/func/inst/n85_bgezal_ds_ex.S:38
bfc04f48:	1657009d 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:39
bfc04f4c:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:40
bfc04f50:	24120002 	li	s2,2
/home/csy/func/inst/n85_bgezal_ds_ex.S:41
bfc04f54:	3c14bfc0 	lui	s4,0xbfc0
bfc04f58:	26944f5c 	addiu	s4,s4,20316
/home/csy/func/inst/n85_bgezal_ds_ex.S:42
bfc04f5c:	05110098 	bgezal	t0,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:43
bfc04f60:	0000000d 	break
/home/csy/func/inst/n85_bgezal_ds_ex.S:44
bfc04f64:	16570096 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:45
bfc04f68:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:47
bfc04f6c:	24120003 	li	s2,3
/home/csy/func/inst/n85_bgezal_ds_ex.S:48
bfc04f70:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n85_bgezal_ds_ex.S:49
bfc04f74:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:50
bfc04f78:	3c14bfc0 	lui	s4,0xbfc0
bfc04f7c:	26944f90 	addiu	s4,s4,20368
/home/csy/func/inst/n85_bgezal_ds_ex.S:51
bfc04f80:	3c04ba03 	lui	a0,0xba03
bfc04f84:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n85_bgezal_ds_ex.S:52
bfc04f88:	3c05b615 	lui	a1,0xb615
bfc04f8c:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n85_bgezal_ds_ex.S:53
bfc04f90:	0411008b 	bal	bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:54
bfc04f94:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n85_bgezal_ds_ex.S:55
bfc04f98:	16570089 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:56
bfc04f9c:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:57
bfc04fa0:	24120003 	li	s2,3
/home/csy/func/inst/n85_bgezal_ds_ex.S:58
bfc04fa4:	3c14bfc0 	lui	s4,0xbfc0
bfc04fa8:	26944fac 	addiu	s4,s4,20396
/home/csy/func/inst/n85_bgezal_ds_ex.S:59
bfc04fac:	05110084 	bgezal	t0,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:60
bfc04fb0:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n85_bgezal_ds_ex.S:61
bfc04fb4:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:62
bfc04fb8:	16570081 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:63
bfc04fbc:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:64
bfc04fc0:	24120003 	li	s2,3
/home/csy/func/inst/n85_bgezal_ds_ex.S:65
bfc04fc4:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:66
bfc04fc8:	3c14bfc0 	lui	s4,0xbfc0
bfc04fcc:	26944fd8 	addiu	s4,s4,20440
/home/csy/func/inst/n85_bgezal_ds_ex.S:67
bfc04fd0:	3c047fff 	lui	a0,0x7fff
bfc04fd4:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n85_bgezal_ds_ex.S:68
bfc04fd8:	04110079 	bal	bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:69
bfc04fdc:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n85_bgezal_ds_ex.S:70
bfc04fe0:	16570077 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:71
bfc04fe4:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:72
bfc04fe8:	24120003 	li	s2,3
/home/csy/func/inst/n85_bgezal_ds_ex.S:73
bfc04fec:	3c14bfc0 	lui	s4,0xbfc0
bfc04ff0:	26944ff4 	addiu	s4,s4,20468
/home/csy/func/inst/n85_bgezal_ds_ex.S:74
bfc04ff4:	05110072 	bgezal	t0,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:75
bfc04ff8:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n85_bgezal_ds_ex.S:76
bfc04ffc:	16570070 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:77
bfc05000:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:78
bfc05004:	24120003 	li	s2,3
/home/csy/func/inst/n85_bgezal_ds_ex.S:79
bfc05008:	3c14bfc0 	lui	s4,0xbfc0
bfc0500c:	26945020 	addiu	s4,s4,20512
/home/csy/func/inst/n85_bgezal_ds_ex.S:80
bfc05010:	3c04a85e 	lui	a0,0xa85e
bfc05014:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n85_bgezal_ds_ex.S:81
bfc05018:	3c056b7e 	lui	a1,0x6b7e
bfc0501c:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n85_bgezal_ds_ex.S:82
bfc05020:	04110067 	bal	bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:83
bfc05024:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n85_bgezal_ds_ex.S:84
bfc05028:	16570065 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:85
bfc0502c:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:86
bfc05030:	24120003 	li	s2,3
/home/csy/func/inst/n85_bgezal_ds_ex.S:87
bfc05034:	3c14bfc0 	lui	s4,0xbfc0
bfc05038:	2694503c 	addiu	s4,s4,20540
/home/csy/func/inst/n85_bgezal_ds_ex.S:88
bfc0503c:	05110060 	bgezal	t0,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:89
bfc05040:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n85_bgezal_ds_ex.S:90
bfc05044:	1657005e 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:91
bfc05048:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:93
bfc0504c:	24120004 	li	s2,4
/home/csy/func/inst/n85_bgezal_ds_ex.S:94
bfc05050:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n85_bgezal_ds_ex.S:95
bfc05054:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:96
bfc05058:	3c14bfc0 	lui	s4,0xbfc0
bfc0505c:	26945060 	addiu	s4,s4,20576
/home/csy/func/inst/n85_bgezal_ds_ex.S:97
bfc05060:	04110057 	bal	bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:98
bfc05064:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:99
bfc05068:	16570055 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:100
bfc0506c:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:101
bfc05070:	24120004 	li	s2,4
/home/csy/func/inst/n85_bgezal_ds_ex.S:102
bfc05074:	3c14bfc0 	lui	s4,0xbfc0
bfc05078:	2694507c 	addiu	s4,s4,20604
/home/csy/func/inst/n85_bgezal_ds_ex.S:103
bfc0507c:	05110050 	bgezal	t0,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:104
bfc05080:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:105
bfc05084:	1657004e 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:106
bfc05088:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:107
bfc0508c:	24120004 	li	s2,4
/home/csy/func/inst/n85_bgezal_ds_ex.S:108
bfc05090:	3c14bfc0 	lui	s4,0xbfc0
bfc05094:	26945098 	addiu	s4,s4,20632
/home/csy/func/inst/n85_bgezal_ds_ex.S:109
bfc05098:	04110049 	bal	bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:110
bfc0509c:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:111
bfc050a0:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n85_bgezal_ds_ex.S:112
bfc050a4:	16570046 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:113
bfc050a8:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:114
bfc050ac:	24120004 	li	s2,4
/home/csy/func/inst/n85_bgezal_ds_ex.S:115
bfc050b0:	3c14bfc0 	lui	s4,0xbfc0
bfc050b4:	269450b8 	addiu	s4,s4,20664
/home/csy/func/inst/n85_bgezal_ds_ex.S:116
bfc050b8:	05110041 	bgezal	t0,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:117
bfc050bc:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:118
bfc050c0:	1657003f 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:119
bfc050c4:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:120
bfc050c8:	3c14bfc0 	lui	s4,0xbfc0
bfc050cc:	269450d0 	addiu	s4,s4,20688
/home/csy/func/inst/n85_bgezal_ds_ex.S:121
bfc050d0:	0411003b 	bal	bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:122
bfc050d4:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:123
bfc050d8:	16570039 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:124
bfc050dc:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:125
bfc050e0:	24120004 	li	s2,4
/home/csy/func/inst/n85_bgezal_ds_ex.S:126
bfc050e4:	3c14bfc0 	lui	s4,0xbfc0
bfc050e8:	269450ec 	addiu	s4,s4,20716
/home/csy/func/inst/n85_bgezal_ds_ex.S:127
bfc050ec:	05110034 	bgezal	t0,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:128
bfc050f0:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:129
bfc050f4:	16570032 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:130
bfc050f8:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:132
bfc050fc:	24120005 	li	s2,5
/home/csy/func/inst/n85_bgezal_ds_ex.S:133
bfc05100:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n85_bgezal_ds_ex.S:134
bfc05104:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:135
bfc05108:	3c14bfc0 	lui	s4,0xbfc0
bfc0510c:	26945110 	addiu	s4,s4,20752
/home/csy/func/inst/n85_bgezal_ds_ex.S:136
bfc05110:	0411002b 	bal	bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:137
bfc05114:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:138
bfc05118:	16570029 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:139
bfc0511c:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:140
bfc05120:	24120005 	li	s2,5
/home/csy/func/inst/n85_bgezal_ds_ex.S:141
bfc05124:	3c14bfc0 	lui	s4,0xbfc0
bfc05128:	2694512c 	addiu	s4,s4,20780
/home/csy/func/inst/n85_bgezal_ds_ex.S:142
bfc0512c:	05110024 	bgezal	t0,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:143
bfc05130:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:144
bfc05134:	16570022 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:145
bfc05138:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:146
bfc0513c:	24120005 	li	s2,5
/home/csy/func/inst/n85_bgezal_ds_ex.S:147
bfc05140:	3c14bfc0 	lui	s4,0xbfc0
bfc05144:	26945148 	addiu	s4,s4,20808
/home/csy/func/inst/n85_bgezal_ds_ex.S:148
bfc05148:	0411001d 	bal	bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:149
bfc0514c:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:150
bfc05150:	1657001b 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:151
bfc05154:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:152
bfc05158:	24120005 	li	s2,5
/home/csy/func/inst/n85_bgezal_ds_ex.S:153
bfc0515c:	3c14bfc0 	lui	s4,0xbfc0
bfc05160:	26945164 	addiu	s4,s4,20836
/home/csy/func/inst/n85_bgezal_ds_ex.S:154
bfc05164:	05110016 	bgezal	t0,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:155
bfc05168:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:156
bfc0516c:	16570014 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:157
bfc05170:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:160
bfc05174:	24120007 	li	s2,7
/home/csy/func/inst/n85_bgezal_ds_ex.S:161
bfc05178:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n85_bgezal_ds_ex.S:162
bfc0517c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n85_bgezal_ds_ex.S:163
bfc05180:	3c14bfc0 	lui	s4,0xbfc0
bfc05184:	26945188 	addiu	s4,s4,20872
/home/csy/func/inst/n85_bgezal_ds_ex.S:164
bfc05188:	0411000d 	bal	bfc051c0 <inst_error>
bfc0518c:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n85_bgezal_ds_ex.S:166
bfc05190:	02f20018 	mult	s7,s2
/home/csy/func/inst/n85_bgezal_ds_ex.S:167
bfc05194:	1657000a 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:168
bfc05198:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:169
bfc0519c:	24120007 	li	s2,7
/home/csy/func/inst/n85_bgezal_ds_ex.S:170
bfc051a0:	3c14bfc0 	lui	s4,0xbfc0
bfc051a4:	269451ac 	addiu	s4,s4,20908
/home/csy/func/inst/n85_bgezal_ds_ex.S:171
bfc051a8:	02f20018 	mult	s7,s2
/home/csy/func/inst/n85_bgezal_ds_ex.S:172
bfc051ac:	05110004 	bgezal	t0,bfc051c0 <inst_error>
bfc051b0:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n85_bgezal_ds_ex.S:174
bfc051b4:	16570002 	bne	s2,s7,bfc051c0 <inst_error>
/home/csy/func/inst/n85_bgezal_ds_ex.S:175
bfc051b8:	00000000 	nop
/home/csy/func/inst/n85_bgezal_ds_ex.S:177
bfc051bc:	26730001 	addiu	s3,s3,1

bfc051c0 <inst_error>:
/home/csy/func/inst/n85_bgezal_ds_ex.S:180
bfc051c0:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n85_bgezal_ds_ex.S:181
bfc051c4:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n85_bgezal_ds_ex.S:182
bfc051c8:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n85_bgezal_ds_ex.S:183
bfc051cc:	02c0f821 	move	ra,s6
/home/csy/func/inst/n85_bgezal_ds_ex.S:184
bfc051d0:	03e00008 	jr	ra
/home/csy/func/inst/n85_bgezal_ds_ex.S:185
bfc051d4:	00000000 	nop
	...

bfc051e0 <n84_bltzal_ds_ex_test>:
/home/csy/func/inst/n84_bltzal_ds_ex.S:7
bfc051e0:	03e0b021 	move	s6,ra
/home/csy/func/inst/n84_bltzal_ds_ex.S:8
bfc051e4:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n84_bltzal_ds_ex.S:9
bfc051e8:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n84_bltzal_ds_ex.S:11
bfc051ec:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n84_bltzal_ds_ex.S:12
bfc051f0:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n84_bltzal_ds_ex.S:13
bfc051f4:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n84_bltzal_ds_ex.S:14
bfc051f8:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:17
bfc051fc:	24120001 	li	s2,1
/home/csy/func/inst/n84_bltzal_ds_ex.S:18
bfc05200:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n84_bltzal_ds_ex.S:19
bfc05204:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:20
bfc05208:	3c14bfc0 	lui	s4,0xbfc0
bfc0520c:	26945210 	addiu	s4,s4,21008
/home/csy/func/inst/n84_bltzal_ds_ex.S:21
bfc05210:	051000af 	bltzal	t0,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:22
bfc05214:	0000000c 	syscall
/home/csy/func/inst/n84_bltzal_ds_ex.S:23
bfc05218:	165700ad 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:24
bfc0521c:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:25
bfc05220:	24120001 	li	s2,1
/home/csy/func/inst/n84_bltzal_ds_ex.S:26
bfc05224:	3c14bfc0 	lui	s4,0xbfc0
bfc05228:	2694522c 	addiu	s4,s4,21036
/home/csy/func/inst/n84_bltzal_ds_ex.S:27
bfc0522c:	065000a8 	bltzal	s2,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:28
bfc05230:	0000000c 	syscall
/home/csy/func/inst/n84_bltzal_ds_ex.S:29
bfc05234:	165700a6 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:30
bfc05238:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:32
bfc0523c:	24120002 	li	s2,2
/home/csy/func/inst/n84_bltzal_ds_ex.S:33
bfc05240:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n84_bltzal_ds_ex.S:34
bfc05244:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:35
bfc05248:	3c14bfc0 	lui	s4,0xbfc0
bfc0524c:	26945250 	addiu	s4,s4,21072
/home/csy/func/inst/n84_bltzal_ds_ex.S:36
bfc05250:	0510009f 	bltzal	t0,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:37
bfc05254:	0000000d 	break
/home/csy/func/inst/n84_bltzal_ds_ex.S:38
bfc05258:	1657009d 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:39
bfc0525c:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:40
bfc05260:	24120002 	li	s2,2
/home/csy/func/inst/n84_bltzal_ds_ex.S:41
bfc05264:	3c14bfc0 	lui	s4,0xbfc0
bfc05268:	2694526c 	addiu	s4,s4,21100
/home/csy/func/inst/n84_bltzal_ds_ex.S:42
bfc0526c:	06500098 	bltzal	s2,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:43
bfc05270:	0000000d 	break
/home/csy/func/inst/n84_bltzal_ds_ex.S:44
bfc05274:	16570096 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:45
bfc05278:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:47
bfc0527c:	24120003 	li	s2,3
/home/csy/func/inst/n84_bltzal_ds_ex.S:48
bfc05280:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n84_bltzal_ds_ex.S:49
bfc05284:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:50
bfc05288:	3c14bfc0 	lui	s4,0xbfc0
bfc0528c:	269452a0 	addiu	s4,s4,21152
/home/csy/func/inst/n84_bltzal_ds_ex.S:51
bfc05290:	3c04ba03 	lui	a0,0xba03
bfc05294:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n84_bltzal_ds_ex.S:52
bfc05298:	3c05b615 	lui	a1,0xb615
bfc0529c:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n84_bltzal_ds_ex.S:53
bfc052a0:	0510008b 	bltzal	t0,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:54
bfc052a4:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n84_bltzal_ds_ex.S:55
bfc052a8:	16570089 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:56
bfc052ac:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:57
bfc052b0:	24120003 	li	s2,3
/home/csy/func/inst/n84_bltzal_ds_ex.S:58
bfc052b4:	3c14bfc0 	lui	s4,0xbfc0
bfc052b8:	269452bc 	addiu	s4,s4,21180
/home/csy/func/inst/n84_bltzal_ds_ex.S:59
bfc052bc:	06500084 	bltzal	s2,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:60
bfc052c0:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n84_bltzal_ds_ex.S:61
bfc052c4:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:62
bfc052c8:	16570081 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:63
bfc052cc:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:64
bfc052d0:	24120003 	li	s2,3
/home/csy/func/inst/n84_bltzal_ds_ex.S:65
bfc052d4:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:66
bfc052d8:	3c14bfc0 	lui	s4,0xbfc0
bfc052dc:	269452e8 	addiu	s4,s4,21224
/home/csy/func/inst/n84_bltzal_ds_ex.S:67
bfc052e0:	3c047fff 	lui	a0,0x7fff
bfc052e4:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n84_bltzal_ds_ex.S:68
bfc052e8:	05100079 	bltzal	t0,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:69
bfc052ec:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n84_bltzal_ds_ex.S:70
bfc052f0:	16570077 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:71
bfc052f4:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:72
bfc052f8:	24120003 	li	s2,3
/home/csy/func/inst/n84_bltzal_ds_ex.S:73
bfc052fc:	3c14bfc0 	lui	s4,0xbfc0
bfc05300:	26945304 	addiu	s4,s4,21252
/home/csy/func/inst/n84_bltzal_ds_ex.S:74
bfc05304:	06500072 	bltzal	s2,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:75
bfc05308:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n84_bltzal_ds_ex.S:76
bfc0530c:	16570070 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:77
bfc05310:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:78
bfc05314:	24120003 	li	s2,3
/home/csy/func/inst/n84_bltzal_ds_ex.S:79
bfc05318:	3c14bfc0 	lui	s4,0xbfc0
bfc0531c:	26945330 	addiu	s4,s4,21296
/home/csy/func/inst/n84_bltzal_ds_ex.S:80
bfc05320:	3c04a85e 	lui	a0,0xa85e
bfc05324:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n84_bltzal_ds_ex.S:81
bfc05328:	3c056b7e 	lui	a1,0x6b7e
bfc0532c:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n84_bltzal_ds_ex.S:82
bfc05330:	05100067 	bltzal	t0,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:83
bfc05334:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n84_bltzal_ds_ex.S:84
bfc05338:	16570065 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:85
bfc0533c:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:86
bfc05340:	24120003 	li	s2,3
/home/csy/func/inst/n84_bltzal_ds_ex.S:87
bfc05344:	3c14bfc0 	lui	s4,0xbfc0
bfc05348:	2694534c 	addiu	s4,s4,21324
/home/csy/func/inst/n84_bltzal_ds_ex.S:88
bfc0534c:	06500060 	bltzal	s2,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:89
bfc05350:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n84_bltzal_ds_ex.S:90
bfc05354:	1657005e 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:91
bfc05358:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:93
bfc0535c:	24120004 	li	s2,4
/home/csy/func/inst/n84_bltzal_ds_ex.S:94
bfc05360:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n84_bltzal_ds_ex.S:95
bfc05364:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:96
bfc05368:	3c14bfc0 	lui	s4,0xbfc0
bfc0536c:	26945370 	addiu	s4,s4,21360
/home/csy/func/inst/n84_bltzal_ds_ex.S:97
bfc05370:	05100057 	bltzal	t0,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:98
bfc05374:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:99
bfc05378:	16570055 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:100
bfc0537c:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:101
bfc05380:	24120004 	li	s2,4
/home/csy/func/inst/n84_bltzal_ds_ex.S:102
bfc05384:	3c14bfc0 	lui	s4,0xbfc0
bfc05388:	2694538c 	addiu	s4,s4,21388
/home/csy/func/inst/n84_bltzal_ds_ex.S:103
bfc0538c:	06500050 	bltzal	s2,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:104
bfc05390:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:105
bfc05394:	1657004e 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:106
bfc05398:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:107
bfc0539c:	24120004 	li	s2,4
/home/csy/func/inst/n84_bltzal_ds_ex.S:108
bfc053a0:	3c14bfc0 	lui	s4,0xbfc0
bfc053a4:	269453a8 	addiu	s4,s4,21416
/home/csy/func/inst/n84_bltzal_ds_ex.S:109
bfc053a8:	05100049 	bltzal	t0,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:110
bfc053ac:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:111
bfc053b0:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n84_bltzal_ds_ex.S:112
bfc053b4:	16570046 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:113
bfc053b8:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:114
bfc053bc:	24120004 	li	s2,4
/home/csy/func/inst/n84_bltzal_ds_ex.S:115
bfc053c0:	3c14bfc0 	lui	s4,0xbfc0
bfc053c4:	269453c8 	addiu	s4,s4,21448
/home/csy/func/inst/n84_bltzal_ds_ex.S:116
bfc053c8:	06500041 	bltzal	s2,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:117
bfc053cc:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:118
bfc053d0:	1657003f 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:119
bfc053d4:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:120
bfc053d8:	3c14bfc0 	lui	s4,0xbfc0
bfc053dc:	269453e0 	addiu	s4,s4,21472
/home/csy/func/inst/n84_bltzal_ds_ex.S:121
bfc053e0:	0510003b 	bltzal	t0,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:122
bfc053e4:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:123
bfc053e8:	16570039 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:124
bfc053ec:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:125
bfc053f0:	24120004 	li	s2,4
/home/csy/func/inst/n84_bltzal_ds_ex.S:126
bfc053f4:	3c14bfc0 	lui	s4,0xbfc0
bfc053f8:	269453fc 	addiu	s4,s4,21500
/home/csy/func/inst/n84_bltzal_ds_ex.S:127
bfc053fc:	06500034 	bltzal	s2,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:128
bfc05400:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:129
bfc05404:	16570032 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:130
bfc05408:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:132
bfc0540c:	24120005 	li	s2,5
/home/csy/func/inst/n84_bltzal_ds_ex.S:133
bfc05410:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n84_bltzal_ds_ex.S:134
bfc05414:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:135
bfc05418:	3c14bfc0 	lui	s4,0xbfc0
bfc0541c:	26945420 	addiu	s4,s4,21536
/home/csy/func/inst/n84_bltzal_ds_ex.S:136
bfc05420:	0510002b 	bltzal	t0,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:137
bfc05424:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:138
bfc05428:	16570029 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:139
bfc0542c:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:140
bfc05430:	24120005 	li	s2,5
/home/csy/func/inst/n84_bltzal_ds_ex.S:141
bfc05434:	3c14bfc0 	lui	s4,0xbfc0
bfc05438:	2694543c 	addiu	s4,s4,21564
/home/csy/func/inst/n84_bltzal_ds_ex.S:142
bfc0543c:	06500024 	bltzal	s2,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:143
bfc05440:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:144
bfc05444:	16570022 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:145
bfc05448:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:146
bfc0544c:	24120005 	li	s2,5
/home/csy/func/inst/n84_bltzal_ds_ex.S:147
bfc05450:	3c14bfc0 	lui	s4,0xbfc0
bfc05454:	26945458 	addiu	s4,s4,21592
/home/csy/func/inst/n84_bltzal_ds_ex.S:148
bfc05458:	0510001d 	bltzal	t0,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:149
bfc0545c:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:150
bfc05460:	1657001b 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:151
bfc05464:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:152
bfc05468:	24120005 	li	s2,5
/home/csy/func/inst/n84_bltzal_ds_ex.S:153
bfc0546c:	3c14bfc0 	lui	s4,0xbfc0
bfc05470:	26945474 	addiu	s4,s4,21620
/home/csy/func/inst/n84_bltzal_ds_ex.S:154
bfc05474:	06500016 	bltzal	s2,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:155
bfc05478:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:156
bfc0547c:	16570014 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:157
bfc05480:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:160
bfc05484:	24120007 	li	s2,7
/home/csy/func/inst/n84_bltzal_ds_ex.S:161
bfc05488:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n84_bltzal_ds_ex.S:162
bfc0548c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n84_bltzal_ds_ex.S:163
bfc05490:	3c14bfc0 	lui	s4,0xbfc0
bfc05494:	26945498 	addiu	s4,s4,21656
/home/csy/func/inst/n84_bltzal_ds_ex.S:164
bfc05498:	0510000d 	bltzal	t0,bfc054d0 <inst_error>
bfc0549c:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n84_bltzal_ds_ex.S:166
bfc054a0:	02f20018 	mult	s7,s2
/home/csy/func/inst/n84_bltzal_ds_ex.S:167
bfc054a4:	1657000a 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:168
bfc054a8:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:169
bfc054ac:	24120007 	li	s2,7
/home/csy/func/inst/n84_bltzal_ds_ex.S:170
bfc054b0:	3c14bfc0 	lui	s4,0xbfc0
bfc054b4:	269454bc 	addiu	s4,s4,21692
/home/csy/func/inst/n84_bltzal_ds_ex.S:171
bfc054b8:	02f20018 	mult	s7,s2
/home/csy/func/inst/n84_bltzal_ds_ex.S:172
bfc054bc:	06500004 	bltzal	s2,bfc054d0 <inst_error>
bfc054c0:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n84_bltzal_ds_ex.S:174
bfc054c4:	16570002 	bne	s2,s7,bfc054d0 <inst_error>
/home/csy/func/inst/n84_bltzal_ds_ex.S:175
bfc054c8:	00000000 	nop
/home/csy/func/inst/n84_bltzal_ds_ex.S:177
bfc054cc:	26730001 	addiu	s3,s3,1

bfc054d0 <inst_error>:
/home/csy/func/inst/n84_bltzal_ds_ex.S:180
bfc054d0:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n84_bltzal_ds_ex.S:181
bfc054d4:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n84_bltzal_ds_ex.S:182
bfc054d8:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n84_bltzal_ds_ex.S:183
bfc054dc:	02c0f821 	move	ra,s6
/home/csy/func/inst/n84_bltzal_ds_ex.S:184
bfc054e0:	03e00008 	jr	ra
/home/csy/func/inst/n84_bltzal_ds_ex.S:185
bfc054e4:	00000000 	nop
	...

bfc054f0 <n76_ri_ex_test>:
/home/csy/func/inst/n76_ri_ex.S:7
bfc054f0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n76_ri_ex.S:8
bfc054f4:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n76_ri_ex.S:9
bfc054f8:	24120007 	li	s2,7
/home/csy/func/inst/n76_ri_ex.S:10
bfc054fc:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n76_ri_ex.S:12
bfc05500:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n76_ri_ex.S:13
bfc05504:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n76_ri_ex.S:14
bfc05508:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n76_ri_ex.S:15
bfc0550c:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:16
bfc05510:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n76_ri_ex.S:19
bfc05514:	3c14bfc0 	lui	s4,0xbfc0
bfc05518:	2694551c 	addiu	s4,s4,21788
bfc0551c:	45df00e0 	0x45df00e0
/home/csy/func/inst/n76_ri_ex.S:21
bfc05520:	16570040 	bne	s2,s7,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:22
bfc05524:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:24
bfc05528:	24120007 	li	s2,7
/home/csy/func/inst/n76_ri_ex.S:25
bfc0552c:	3c14bfc0 	lui	s4,0xbfc0
bfc05530:	2694553c 	addiu	s4,s4,21820
/home/csy/func/inst/n76_ri_ex.S:26
bfc05534:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n76_ri_ex.S:27
bfc05538:	ad140004 	sw	s4,4(t0)
bfc0553c:	7a22db9c 	0x7a22db9c
/home/csy/func/inst/n76_ri_ex.S:29
bfc05540:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n76_ri_ex.S:30
bfc05544:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n76_ri_ex.S:31
bfc05548:	15340036 	bne	t1,s4,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:32
bfc0554c:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:33
bfc05550:	16570034 	bne	s2,s7,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:34
bfc05554:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:35
bfc05558:	24120007 	li	s2,7
/home/csy/func/inst/n76_ri_ex.S:36
bfc0555c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n76_ri_ex.S:38
bfc05560:	24120007 	li	s2,7
/home/csy/func/inst/n76_ri_ex.S:39
bfc05564:	3c14bfc0 	lui	s4,0xbfc0
bfc05568:	26945574 	addiu	s4,s4,21876
/home/csy/func/inst/n76_ri_ex.S:40
bfc0556c:	01000011 	mthi	t0
/home/csy/func/inst/n76_ri_ex.S:41
bfc05570:	0110001b 	divu	zero,t0,s0
bfc05574:	6f76e210 	0x6f76e210
/home/csy/func/inst/n76_ri_ex.S:43
bfc05578:	00004810 	mfhi	t1
/home/csy/func/inst/n76_ri_ex.S:44
bfc0557c:	11280029 	beq	t1,t0,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:45
bfc05580:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:46
bfc05584:	16570027 	bne	s2,s7,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:47
bfc05588:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:49
bfc0558c:	24120007 	li	s2,7
/home/csy/func/inst/n76_ri_ex.S:50
bfc05590:	3c14bfc0 	lui	s4,0xbfc0
bfc05594:	26945598 	addiu	s4,s4,21912
bfc05598:	5a8d78ce 	0x5a8d78ce
/home/csy/func/inst/n76_ri_ex.S:52
bfc0559c:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n76_ri_ex.S:53
bfc055a0:	16570020 	bne	s2,s7,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:54
bfc055a4:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:56
bfc055a8:	24120007 	li	s2,7
/home/csy/func/inst/n76_ri_ex.S:57
bfc055ac:	3c14bfc0 	lui	s4,0xbfc0
bfc055b0:	269455bc 	addiu	s4,s4,21948
/home/csy/func/inst/n76_ri_ex.S:58
bfc055b4:	01000013 	mtlo	t0
/home/csy/func/inst/n76_ri_ex.S:59
bfc055b8:	01100019 	multu	t0,s0
bfc055bc:	7bd1ac60 	0x7bd1ac60
/home/csy/func/inst/n76_ri_ex.S:61
bfc055c0:	00004810 	mfhi	t1
/home/csy/func/inst/n76_ri_ex.S:62
bfc055c4:	11280017 	beq	t1,t0,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:63
bfc055c8:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:64
bfc055cc:	16570015 	bne	s2,s7,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:65
bfc055d0:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:67
bfc055d4:	24120007 	li	s2,7
/home/csy/func/inst/n76_ri_ex.S:68
bfc055d8:	3c14bfc0 	lui	s4,0xbfc0
bfc055dc:	269455e0 	addiu	s4,s4,21984
bfc055e0:	7e6265cc 	0x7e6265cc
/home/csy/func/inst/n76_ri_ex.S:70
bfc055e4:	01120019 	multu	t0,s2
/home/csy/func/inst/n76_ri_ex.S:71
bfc055e8:	1657000e 	bne	s2,s7,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:72
bfc055ec:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:73
bfc055f0:	1443000c 	bne	v0,v1,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:74
bfc055f4:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:76
bfc055f8:	24120007 	li	s2,7
/home/csy/func/inst/n76_ri_ex.S:77
bfc055fc:	3c14bfc0 	lui	s4,0xbfc0
bfc05600:	26945608 	addiu	s4,s4,22024
/home/csy/func/inst/n76_ri_ex.S:78
bfc05604:	40927000 	mtc0	s2,c0_epc
bfc05608:	9fc55510 	0x9fc55510
/home/csy/func/inst/n76_ri_ex.S:80
bfc0560c:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n76_ri_ex.S:81
bfc05610:	16570004 	bne	s2,s7,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:82
bfc05614:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:83
bfc05618:	14430002 	bne	v0,v1,bfc05624 <inst_error>
/home/csy/func/inst/n76_ri_ex.S:84
bfc0561c:	00000000 	nop
/home/csy/func/inst/n76_ri_ex.S:86
bfc05620:	26730001 	addiu	s3,s3,1

bfc05624 <inst_error>:
/home/csy/func/inst/n76_ri_ex.S:89
bfc05624:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n76_ri_ex.S:90
bfc05628:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n76_ri_ex.S:91
bfc0562c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n76_ri_ex.S:92
bfc05630:	03e00008 	jr	ra
/home/csy/func/inst/n76_ri_ex.S:93
bfc05634:	00000000 	nop
	...

bfc05640 <n75_ft_adel_ex_test>:
/home/csy/func/inst/n75_ft_adel_ex.S:7
bfc05640:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n75_ft_adel_ex.S:8
bfc05644:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n75_ft_adel_ex.S:9
bfc05648:	24120006 	li	s2,6
/home/csy/func/inst/n75_ft_adel_ex.S:10
bfc0564c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n75_ft_adel_ex.S:12
bfc05650:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n75_ft_adel_ex.S:13
bfc05654:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n75_ft_adel_ex.S:14
bfc05658:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n75_ft_adel_ex.S:15
bfc0565c:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:16
bfc05660:	3c170006 	lui	s7,0x6
/home/csy/func/inst/n75_ft_adel_ex.S:19
bfc05664:	3c14b27f 	lui	s4,0xb27f
bfc05668:	36949789 	ori	s4,s4,0x9789
bfc0566c:	3c07b27f 	lui	a3,0xb27f
bfc05670:	34e79789 	ori	a3,a3,0x9789
/home/csy/func/inst/n75_ft_adel_ex.S:20
bfc05674:	3c15bfc0 	lui	s5,0xbfc0
bfc05678:	26b55680 	addiu	s5,s5,22144
/home/csy/func/inst/n75_ft_adel_ex.S:21
bfc0567c:	02800008 	jr	s4
/home/csy/func/inst/n75_ft_adel_ex.S:22
bfc05680:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:23
bfc05684:	16570072 	bne	s2,s7,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:24
bfc05688:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:25
bfc0568c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n75_ft_adel_ex.S:26
bfc05690:	14f6006f 	bne	a3,s6,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:27
bfc05694:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:29
bfc05698:	24120006 	li	s2,6
/home/csy/func/inst/n75_ft_adel_ex.S:30
bfc0569c:	3c14a101 	lui	s4,0xa101
bfc056a0:	3694bbed 	ori	s4,s4,0xbbed
bfc056a4:	3c07a101 	lui	a3,0xa101
bfc056a8:	34e7bbed 	ori	a3,a3,0xbbed
/home/csy/func/inst/n75_ft_adel_ex.S:31
bfc056ac:	40947000 	mtc0	s4,c0_epc
/home/csy/func/inst/n75_ft_adel_ex.S:32
bfc056b0:	3c15bfc0 	lui	s5,0xbfc0
bfc056b4:	26b556c0 	addiu	s5,s5,22208
/home/csy/func/inst/n75_ft_adel_ex.S:33
bfc056b8:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n75_ft_adel_ex.S:34
bfc056bc:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n75_ft_adel_ex.S:36
bfc056c0:	42000018 	eret
/home/csy/func/inst/n75_ft_adel_ex.S:38
bfc056c4:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n75_ft_adel_ex.S:39
bfc056c8:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n75_ft_adel_ex.S:40
bfc056cc:	15340060 	bne	t1,s4,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:41
bfc056d0:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:42
bfc056d4:	1657005e 	bne	s2,s7,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:43
bfc056d8:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:44
bfc056dc:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n75_ft_adel_ex.S:45
bfc056e0:	14f6005b 	bne	a3,s6,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:46
bfc056e4:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:47
bfc056e8:	24120006 	li	s2,6
/home/csy/func/inst/n75_ft_adel_ex.S:48
bfc056ec:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n75_ft_adel_ex.S:50
bfc056f0:	24120006 	li	s2,6
/home/csy/func/inst/n75_ft_adel_ex.S:51
bfc056f4:	3c148479 	lui	s4,0x8479
bfc056f8:	36940977 	ori	s4,s4,0x977
bfc056fc:	3c078479 	lui	a3,0x8479
bfc05700:	34e70977 	ori	a3,a3,0x977
/home/csy/func/inst/n75_ft_adel_ex.S:52
bfc05704:	40947000 	mtc0	s4,c0_epc
/home/csy/func/inst/n75_ft_adel_ex.S:53
bfc05708:	3c15bfc0 	lui	s5,0xbfc0
bfc0570c:	26b55718 	addiu	s5,s5,22296
/home/csy/func/inst/n75_ft_adel_ex.S:54
bfc05710:	01000011 	mthi	t0
/home/csy/func/inst/n75_ft_adel_ex.S:55
bfc05714:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n75_ft_adel_ex.S:57
bfc05718:	42000018 	eret
/home/csy/func/inst/n75_ft_adel_ex.S:59
bfc0571c:	00004810 	mfhi	t1
/home/csy/func/inst/n75_ft_adel_ex.S:60
bfc05720:	1128004b 	beq	t1,t0,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:61
bfc05724:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:62
bfc05728:	16570049 	bne	s2,s7,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:63
bfc0572c:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:64
bfc05730:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n75_ft_adel_ex.S:65
bfc05734:	14f60046 	bne	a3,s6,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:66
bfc05738:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:68
bfc0573c:	24120006 	li	s2,6
/home/csy/func/inst/n75_ft_adel_ex.S:69
bfc05740:	3c1492b0 	lui	s4,0x92b0
bfc05744:	3694a2c3 	ori	s4,s4,0xa2c3
bfc05748:	3c0792b0 	lui	a3,0x92b0
bfc0574c:	34e7a2c3 	ori	a3,a3,0xa2c3
/home/csy/func/inst/n75_ft_adel_ex.S:70
bfc05750:	3c15bfc0 	lui	s5,0xbfc0
bfc05754:	26b5575c 	addiu	s5,s5,22364
/home/csy/func/inst/n75_ft_adel_ex.S:71
bfc05758:	02800008 	jr	s4
/home/csy/func/inst/n75_ft_adel_ex.S:72
bfc0575c:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:73
bfc05760:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n75_ft_adel_ex.S:74
bfc05764:	1657003a 	bne	s2,s7,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:75
bfc05768:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:76
bfc0576c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n75_ft_adel_ex.S:77
bfc05770:	14f60037 	bne	a3,s6,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:78
bfc05774:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:80
bfc05778:	24120006 	li	s2,6
/home/csy/func/inst/n75_ft_adel_ex.S:81
bfc0577c:	3c14af9e 	lui	s4,0xaf9e
bfc05780:	3694dafa 	ori	s4,s4,0xdafa
bfc05784:	3c07af9e 	lui	a3,0xaf9e
bfc05788:	34e7dafa 	ori	a3,a3,0xdafa
/home/csy/func/inst/n75_ft_adel_ex.S:82
bfc0578c:	40947000 	mtc0	s4,c0_epc
/home/csy/func/inst/n75_ft_adel_ex.S:83
bfc05790:	3c15bfc0 	lui	s5,0xbfc0
bfc05794:	26b557a0 	addiu	s5,s5,22432
/home/csy/func/inst/n75_ft_adel_ex.S:84
bfc05798:	01000013 	mtlo	t0
/home/csy/func/inst/n75_ft_adel_ex.S:85
bfc0579c:	01100019 	multu	t0,s0
/home/csy/func/inst/n75_ft_adel_ex.S:87
bfc057a0:	42000018 	eret
/home/csy/func/inst/n75_ft_adel_ex.S:89
bfc057a4:	00004810 	mfhi	t1
/home/csy/func/inst/n75_ft_adel_ex.S:90
bfc057a8:	11280029 	beq	t1,t0,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:91
bfc057ac:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:92
bfc057b0:	16570027 	bne	s2,s7,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:93
bfc057b4:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:94
bfc057b8:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n75_ft_adel_ex.S:95
bfc057bc:	14f60024 	bne	a3,s6,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:96
bfc057c0:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:98
bfc057c4:	24120006 	li	s2,6
/home/csy/func/inst/n75_ft_adel_ex.S:99
bfc057c8:	3c14b088 	lui	s4,0xb088
bfc057cc:	3694f329 	ori	s4,s4,0xf329
bfc057d0:	3c07b088 	lui	a3,0xb088
bfc057d4:	34e7f329 	ori	a3,a3,0xf329
/home/csy/func/inst/n75_ft_adel_ex.S:100
bfc057d8:	3c15bfc0 	lui	s5,0xbfc0
bfc057dc:	26b557e4 	addiu	s5,s5,22500
/home/csy/func/inst/n75_ft_adel_ex.S:101
bfc057e0:	02800008 	jr	s4
/home/csy/func/inst/n75_ft_adel_ex.S:102
bfc057e4:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:103
bfc057e8:	01120019 	multu	t0,s2
/home/csy/func/inst/n75_ft_adel_ex.S:104
bfc057ec:	16570018 	bne	s2,s7,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:105
bfc057f0:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:106
bfc057f4:	14430016 	bne	v0,v1,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:107
bfc057f8:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:108
bfc057fc:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n75_ft_adel_ex.S:109
bfc05800:	14f60013 	bne	a3,s6,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:110
bfc05804:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:112
bfc05808:	24120006 	li	s2,6
/home/csy/func/inst/n75_ft_adel_ex.S:113
bfc0580c:	3c14827f 	lui	s4,0x827f
bfc05810:	369497ab 	ori	s4,s4,0x97ab
bfc05814:	3c07827f 	lui	a3,0x827f
bfc05818:	34e797ab 	ori	a3,a3,0x97ab
/home/csy/func/inst/n75_ft_adel_ex.S:114
bfc0581c:	40947000 	mtc0	s4,c0_epc
/home/csy/func/inst/n75_ft_adel_ex.S:115
bfc05820:	3c15bfc0 	lui	s5,0xbfc0
bfc05824:	26b55828 	addiu	s5,s5,22568
/home/csy/func/inst/n75_ft_adel_ex.S:117
bfc05828:	42000018 	eret
/home/csy/func/inst/n75_ft_adel_ex.S:119
bfc0582c:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n75_ft_adel_ex.S:120
bfc05830:	16570007 	bne	s2,s7,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:121
bfc05834:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:122
bfc05838:	14430005 	bne	v0,v1,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:123
bfc0583c:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:124
bfc05840:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n75_ft_adel_ex.S:125
bfc05844:	14f60002 	bne	a3,s6,bfc05850 <inst_error>
/home/csy/func/inst/n75_ft_adel_ex.S:126
bfc05848:	00000000 	nop
/home/csy/func/inst/n75_ft_adel_ex.S:128
bfc0584c:	26730001 	addiu	s3,s3,1

bfc05850 <inst_error>:
/home/csy/func/inst/n75_ft_adel_ex.S:131
bfc05850:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n75_ft_adel_ex.S:132
bfc05854:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n75_ft_adel_ex.S:133
bfc05858:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n75_ft_adel_ex.S:134
bfc0585c:	03e00008 	jr	ra
/home/csy/func/inst/n75_ft_adel_ex.S:135
bfc05860:	00000000 	nop
	...

bfc05870 <n79_bne_ds_ex_test>:
/home/csy/func/inst/n79_bne_ds_ex.S:7
bfc05870:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n79_bne_ds_ex.S:8
bfc05874:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n79_bne_ds_ex.S:10
bfc05878:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n79_bne_ds_ex.S:11
bfc0587c:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n79_bne_ds_ex.S:12
bfc05880:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n79_bne_ds_ex.S:13
bfc05884:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:16
bfc05888:	24120001 	li	s2,1
/home/csy/func/inst/n79_bne_ds_ex.S:17
bfc0588c:	3c170001 	lui	s7,0x1
/home/csy/func/inst/n79_bne_ds_ex.S:18
bfc05890:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:19
bfc05894:	3c14bfc0 	lui	s4,0xbfc0
bfc05898:	2694589c 	addiu	s4,s4,22684
/home/csy/func/inst/n79_bne_ds_ex.S:20
bfc0589c:	140000af 	bnez	zero,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:21
bfc058a0:	0000000c 	syscall
/home/csy/func/inst/n79_bne_ds_ex.S:22
bfc058a4:	165700ad 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:23
bfc058a8:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:24
bfc058ac:	24120001 	li	s2,1
/home/csy/func/inst/n79_bne_ds_ex.S:25
bfc058b0:	3c14bfc0 	lui	s4,0xbfc0
bfc058b4:	269458b8 	addiu	s4,s4,22712
/home/csy/func/inst/n79_bne_ds_ex.S:26
bfc058b8:	150000a8 	bnez	t0,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:27
bfc058bc:	0000000c 	syscall
/home/csy/func/inst/n79_bne_ds_ex.S:28
bfc058c0:	165700a6 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:29
bfc058c4:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:31
bfc058c8:	24120002 	li	s2,2
/home/csy/func/inst/n79_bne_ds_ex.S:32
bfc058cc:	3c170002 	lui	s7,0x2
/home/csy/func/inst/n79_bne_ds_ex.S:33
bfc058d0:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:34
bfc058d4:	3c14bfc0 	lui	s4,0xbfc0
bfc058d8:	269458dc 	addiu	s4,s4,22748
/home/csy/func/inst/n79_bne_ds_ex.S:35
bfc058dc:	1400009f 	bnez	zero,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:36
bfc058e0:	0000000d 	break
/home/csy/func/inst/n79_bne_ds_ex.S:37
bfc058e4:	1657009d 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:38
bfc058e8:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:39
bfc058ec:	24120002 	li	s2,2
/home/csy/func/inst/n79_bne_ds_ex.S:40
bfc058f0:	3c14bfc0 	lui	s4,0xbfc0
bfc058f4:	269458f8 	addiu	s4,s4,22776
/home/csy/func/inst/n79_bne_ds_ex.S:41
bfc058f8:	15000098 	bnez	t0,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:42
bfc058fc:	0000000d 	break
/home/csy/func/inst/n79_bne_ds_ex.S:43
bfc05900:	16570096 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:44
bfc05904:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:46
bfc05908:	24120003 	li	s2,3
/home/csy/func/inst/n79_bne_ds_ex.S:47
bfc0590c:	3c170003 	lui	s7,0x3
/home/csy/func/inst/n79_bne_ds_ex.S:48
bfc05910:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:49
bfc05914:	3c14bfc0 	lui	s4,0xbfc0
bfc05918:	2694592c 	addiu	s4,s4,22828
/home/csy/func/inst/n79_bne_ds_ex.S:50
bfc0591c:	3c04ba03 	lui	a0,0xba03
bfc05920:	34844f60 	ori	a0,a0,0x4f60
/home/csy/func/inst/n79_bne_ds_ex.S:51
bfc05924:	3c05b615 	lui	a1,0xb615
bfc05928:	34a5fd67 	ori	a1,a1,0xfd67
/home/csy/func/inst/n79_bne_ds_ex.S:52
bfc0592c:	1400008b 	bnez	zero,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:53
bfc05930:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n79_bne_ds_ex.S:54
bfc05934:	16570089 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:55
bfc05938:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:56
bfc0593c:	24120003 	li	s2,3
/home/csy/func/inst/n79_bne_ds_ex.S:57
bfc05940:	3c14bfc0 	lui	s4,0xbfc0
bfc05944:	26945948 	addiu	s4,s4,22856
/home/csy/func/inst/n79_bne_ds_ex.S:58
bfc05948:	15000084 	bnez	t0,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:59
bfc0594c:	0085b820 	add	s7,a0,a1
/home/csy/func/inst/n79_bne_ds_ex.S:60
bfc05950:	16570082 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:61
bfc05954:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:62
bfc05958:	24120003 	li	s2,3
/home/csy/func/inst/n79_bne_ds_ex.S:63
bfc0595c:	3c14bfc0 	lui	s4,0xbfc0
bfc05960:	2694596c 	addiu	s4,s4,22892
/home/csy/func/inst/n79_bne_ds_ex.S:64
bfc05964:	3c047fff 	lui	a0,0x7fff
bfc05968:	3484c19e 	ori	a0,a0,0xc19e
/home/csy/func/inst/n79_bne_ds_ex.S:65
bfc0596c:	1400007b 	bnez	zero,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:66
bfc05970:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n79_bne_ds_ex.S:67
bfc05974:	16570079 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:68
bfc05978:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:69
bfc0597c:	24120003 	li	s2,3
/home/csy/func/inst/n79_bne_ds_ex.S:70
bfc05980:	3c14bfc0 	lui	s4,0xbfc0
bfc05984:	26945988 	addiu	s4,s4,22920
/home/csy/func/inst/n79_bne_ds_ex.S:71
bfc05988:	15000074 	bnez	t0,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:72
bfc0598c:	20976512 	addi	s7,a0,25874
/home/csy/func/inst/n79_bne_ds_ex.S:73
bfc05990:	16570072 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:74
bfc05994:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:75
bfc05998:	24120003 	li	s2,3
/home/csy/func/inst/n79_bne_ds_ex.S:76
bfc0599c:	3c14bfc0 	lui	s4,0xbfc0
bfc059a0:	269459b4 	addiu	s4,s4,22964
/home/csy/func/inst/n79_bne_ds_ex.S:77
bfc059a4:	3c04a85e 	lui	a0,0xa85e
bfc059a8:	34847d00 	ori	a0,a0,0x7d00
/home/csy/func/inst/n79_bne_ds_ex.S:78
bfc059ac:	3c056b7e 	lui	a1,0x6b7e
bfc059b0:	34a58e36 	ori	a1,a1,0x8e36
/home/csy/func/inst/n79_bne_ds_ex.S:79
bfc059b4:	14000069 	bnez	zero,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:80
bfc059b8:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n79_bne_ds_ex.S:81
bfc059bc:	16570067 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:82
bfc059c0:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:83
bfc059c4:	24120003 	li	s2,3
/home/csy/func/inst/n79_bne_ds_ex.S:84
bfc059c8:	3c14bfc0 	lui	s4,0xbfc0
bfc059cc:	269459d0 	addiu	s4,s4,22992
/home/csy/func/inst/n79_bne_ds_ex.S:85
bfc059d0:	15000062 	bnez	t0,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:86
bfc059d4:	0085b822 	sub	s7,a0,a1
/home/csy/func/inst/n79_bne_ds_ex.S:87
bfc059d8:	16570060 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:88
bfc059dc:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:90
bfc059e0:	24120004 	li	s2,4
/home/csy/func/inst/n79_bne_ds_ex.S:91
bfc059e4:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n79_bne_ds_ex.S:92
bfc059e8:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:93
bfc059ec:	3c14bfc0 	lui	s4,0xbfc0
bfc059f0:	269459f4 	addiu	s4,s4,23028
/home/csy/func/inst/n79_bne_ds_ex.S:94
bfc059f4:	14000059 	bnez	zero,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:95
bfc059f8:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:96
bfc059fc:	ad170000 	sw	s7,0(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:97
bfc05a00:	16570056 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:98
bfc05a04:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:99
bfc05a08:	24120004 	li	s2,4
/home/csy/func/inst/n79_bne_ds_ex.S:100
bfc05a0c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:101
bfc05a10:	3c14bfc0 	lui	s4,0xbfc0
bfc05a14:	26945a18 	addiu	s4,s4,23064
/home/csy/func/inst/n79_bne_ds_ex.S:102
bfc05a18:	15000050 	bnez	t0,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:103
bfc05a1c:	8d170002 	lw	s7,2(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:104
bfc05a20:	1657004e 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:105
bfc05a24:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:106
bfc05a28:	24120004 	li	s2,4
/home/csy/func/inst/n79_bne_ds_ex.S:107
bfc05a2c:	3c14bfc0 	lui	s4,0xbfc0
bfc05a30:	26945a34 	addiu	s4,s4,23092
/home/csy/func/inst/n79_bne_ds_ex.S:108
bfc05a34:	14000049 	bnez	zero,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:109
bfc05a38:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:110
bfc05a3c:	16570047 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:111
bfc05a40:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:112
bfc05a44:	24120004 	li	s2,4
/home/csy/func/inst/n79_bne_ds_ex.S:113
bfc05a48:	3c14bfc0 	lui	s4,0xbfc0
bfc05a4c:	26945a50 	addiu	s4,s4,23120
/home/csy/func/inst/n79_bne_ds_ex.S:114
bfc05a50:	15000042 	bnez	t0,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:115
bfc05a54:	85170001 	lh	s7,1(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:116
bfc05a58:	16570040 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:117
bfc05a5c:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:118
bfc05a60:	3c14bfc0 	lui	s4,0xbfc0
bfc05a64:	26945a68 	addiu	s4,s4,23144
/home/csy/func/inst/n79_bne_ds_ex.S:119
bfc05a68:	1400003c 	bnez	zero,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:120
bfc05a6c:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:121
bfc05a70:	1657003a 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:122
bfc05a74:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:123
bfc05a78:	24120004 	li	s2,4
/home/csy/func/inst/n79_bne_ds_ex.S:124
bfc05a7c:	3c14bfc0 	lui	s4,0xbfc0
bfc05a80:	26945a84 	addiu	s4,s4,23172
/home/csy/func/inst/n79_bne_ds_ex.S:125
bfc05a84:	15000035 	bnez	t0,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:126
bfc05a88:	95170003 	lhu	s7,3(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:127
bfc05a8c:	16570033 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:128
bfc05a90:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:130
bfc05a94:	24120005 	li	s2,5
/home/csy/func/inst/n79_bne_ds_ex.S:131
bfc05a98:	3c170005 	lui	s7,0x5
/home/csy/func/inst/n79_bne_ds_ex.S:132
bfc05a9c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:133
bfc05aa0:	3c14bfc0 	lui	s4,0xbfc0
bfc05aa4:	26945aa8 	addiu	s4,s4,23208
/home/csy/func/inst/n79_bne_ds_ex.S:134
bfc05aa8:	1400002c 	bnez	zero,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:135
bfc05aac:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:136
bfc05ab0:	02f2001b 	divu	zero,s7,s2
/home/csy/func/inst/n79_bne_ds_ex.S:137
bfc05ab4:	16570029 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:138
bfc05ab8:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:139
bfc05abc:	24120005 	li	s2,5
/home/csy/func/inst/n79_bne_ds_ex.S:140
bfc05ac0:	3c14bfc0 	lui	s4,0xbfc0
bfc05ac4:	26945ac8 	addiu	s4,s4,23240
/home/csy/func/inst/n79_bne_ds_ex.S:141
bfc05ac8:	15000024 	bnez	t0,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:142
bfc05acc:	ad170002 	sw	s7,2(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:143
bfc05ad0:	16570022 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:144
bfc05ad4:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:145
bfc05ad8:	24120005 	li	s2,5
/home/csy/func/inst/n79_bne_ds_ex.S:146
bfc05adc:	3c14bfc0 	lui	s4,0xbfc0
bfc05ae0:	26945ae4 	addiu	s4,s4,23268
/home/csy/func/inst/n79_bne_ds_ex.S:147
bfc05ae4:	1400001d 	bnez	zero,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:148
bfc05ae8:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:149
bfc05aec:	1657001b 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:150
bfc05af0:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:151
bfc05af4:	24120005 	li	s2,5
/home/csy/func/inst/n79_bne_ds_ex.S:152
bfc05af8:	3c14bfc0 	lui	s4,0xbfc0
bfc05afc:	26945b00 	addiu	s4,s4,23296
/home/csy/func/inst/n79_bne_ds_ex.S:153
bfc05b00:	15000016 	bnez	t0,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:154
bfc05b04:	a5170001 	sh	s7,1(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:155
bfc05b08:	16570014 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:156
bfc05b0c:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:159
bfc05b10:	24120007 	li	s2,7
/home/csy/func/inst/n79_bne_ds_ex.S:160
bfc05b14:	3c170007 	lui	s7,0x7
/home/csy/func/inst/n79_bne_ds_ex.S:161
bfc05b18:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n79_bne_ds_ex.S:162
bfc05b1c:	3c14bfc0 	lui	s4,0xbfc0
bfc05b20:	26945b24 	addiu	s4,s4,23332
/home/csy/func/inst/n79_bne_ds_ex.S:163
bfc05b24:	1400000d 	bnez	zero,bfc05b5c <inst_error>
bfc05b28:	9e3c56aa 	0x9e3c56aa
/home/csy/func/inst/n79_bne_ds_ex.S:165
bfc05b2c:	02f20018 	mult	s7,s2
/home/csy/func/inst/n79_bne_ds_ex.S:166
bfc05b30:	1657000a 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:167
bfc05b34:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:168
bfc05b38:	24120007 	li	s2,7
/home/csy/func/inst/n79_bne_ds_ex.S:169
bfc05b3c:	3c14bfc0 	lui	s4,0xbfc0
bfc05b40:	26945b48 	addiu	s4,s4,23368
/home/csy/func/inst/n79_bne_ds_ex.S:170
bfc05b44:	02f20018 	mult	s7,s2
/home/csy/func/inst/n79_bne_ds_ex.S:171
bfc05b48:	15000004 	bnez	t0,bfc05b5c <inst_error>
bfc05b4c:	ec1ba960 	swc3	$27,-22176(zero)
/home/csy/func/inst/n79_bne_ds_ex.S:173
bfc05b50:	16570002 	bne	s2,s7,bfc05b5c <inst_error>
/home/csy/func/inst/n79_bne_ds_ex.S:174
bfc05b54:	00000000 	nop
/home/csy/func/inst/n79_bne_ds_ex.S:176
bfc05b58:	26730001 	addiu	s3,s3,1

bfc05b5c <inst_error>:
/home/csy/func/inst/n79_bne_ds_ex.S:179
bfc05b5c:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n79_bne_ds_ex.S:180
bfc05b60:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n79_bne_ds_ex.S:181
bfc05b64:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n79_bne_ds_ex.S:182
bfc05b68:	03e00008 	jr	ra
/home/csy/func/inst/n79_bne_ds_ex.S:183
bfc05b6c:	00000000 	nop

bfc05b70 <n71_lh_adel_ex_test>:
/home/csy/func/inst/n71_lh_adel_ex.S:7
bfc05b70:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n71_lh_adel_ex.S:8
bfc05b74:	3c08800d 	lui	t0,0x800d
/home/csy/func/inst/n71_lh_adel_ex.S:9
bfc05b78:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:10
bfc05b7c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:12
bfc05b80:	40805800 	mtc0	zero,c0_compare
/home/csy/func/inst/n71_lh_adel_ex.S:13
bfc05b84:	3c170040 	lui	s7,0x40
/home/csy/func/inst/n71_lh_adel_ex.S:14
bfc05b88:	40976000 	mtc0	s7,c0_status
/home/csy/func/inst/n71_lh_adel_ex.S:15
bfc05b8c:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:16
bfc05b90:	3c170004 	lui	s7,0x4
/home/csy/func/inst/n71_lh_adel_ex.S:19
bfc05b94:	3c029325 	lui	v0,0x9325
bfc05b98:	34422910 	ori	v0,v0,0x2910
bfc05b9c:	3c039325 	lui	v1,0x9325
bfc05ba0:	34632910 	ori	v1,v1,0x2910
bfc05ba4:	3c04800d 	lui	a0,0x800d
bfc05ba8:	34841348 	ori	a0,a0,0x1348
bfc05bac:	3c050233 	lui	a1,0x233
bfc05bb0:	34a5e52c 	ori	a1,a1,0xe52c
bfc05bb4:	24879a19 	addiu	a3,a0,-26087
bfc05bb8:	3c010001 	lui	at,0x1
bfc05bbc:	00240821 	addu	at,at,a0
bfc05bc0:	ac259a18 	sw	a1,-26088(at)
/home/csy/func/inst/n71_lh_adel_ex.S:20
bfc05bc4:	3c14bfc0 	lui	s4,0xbfc0
bfc05bc8:	26945bcc 	addiu	s4,s4,23500
/home/csy/func/inst/n71_lh_adel_ex.S:21
bfc05bcc:	84829a19 	lh	v0,-26087(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:22
bfc05bd0:	165700a1 	bne	s2,s7,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:23
bfc05bd4:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:24
bfc05bd8:	1443009f 	bne	v0,v1,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:25
bfc05bdc:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:26
bfc05be0:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:27
bfc05be4:	14f6009c 	bne	a3,s6,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:28
bfc05be8:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:30
bfc05bec:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:31
bfc05bf0:	3c02854a 	lui	v0,0x854a
bfc05bf4:	3442a680 	ori	v0,v0,0xa680
bfc05bf8:	3c03854a 	lui	v1,0x854a
bfc05bfc:	3463a680 	ori	v1,v1,0xa680
bfc05c00:	3c04800d 	lui	a0,0x800d
bfc05c04:	34842ca8 	ori	a0,a0,0x2ca8
bfc05c08:	3c052ba9 	lui	a1,0x2ba9
bfc05c0c:	34a50e90 	ori	a1,a1,0xe90
bfc05c10:	24872577 	addiu	a3,a0,9591
bfc05c14:	ac852574 	sw	a1,9588(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:32
bfc05c18:	3c14bfc0 	lui	s4,0xbfc0
bfc05c1c:	26945c28 	addiu	s4,s4,23592
/home/csy/func/inst/n71_lh_adel_ex.S:33
bfc05c20:	ad080004 	sw	t0,4(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:34
bfc05c24:	ad140004 	sw	s4,4(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:35
bfc05c28:	84822577 	lh	v0,9591(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:36
bfc05c2c:	ad140000 	sw	s4,0(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:37
bfc05c30:	8d090004 	lw	t1,4(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:38
bfc05c34:	15340088 	bne	t1,s4,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:39
bfc05c38:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:40
bfc05c3c:	16570086 	bne	s2,s7,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:41
bfc05c40:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:42
bfc05c44:	14430084 	bne	v0,v1,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:43
bfc05c48:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:44
bfc05c4c:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:45
bfc05c50:	14f60081 	bne	a3,s6,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:46
bfc05c54:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:47
bfc05c58:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:48
bfc05c5c:	ad120000 	sw	s2,0(t0)
/home/csy/func/inst/n71_lh_adel_ex.S:50
bfc05c60:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:51
bfc05c64:	3c02541f 	lui	v0,0x541f
bfc05c68:	34426c5c 	ori	v0,v0,0x6c5c
bfc05c6c:	3c03541f 	lui	v1,0x541f
bfc05c70:	34636c5c 	ori	v1,v1,0x6c5c
bfc05c74:	3c04800d 	lui	a0,0x800d
bfc05c78:	34841570 	ori	a0,a0,0x1570
bfc05c7c:	3c059554 	lui	a1,0x9554
bfc05c80:	34a5e8d4 	ori	a1,a1,0xe8d4
bfc05c84:	248785e3 	addiu	a3,a0,-31261
bfc05c88:	3c010001 	lui	at,0x1
bfc05c8c:	00240821 	addu	at,at,a0
bfc05c90:	ac2585e0 	sw	a1,-31264(at)
/home/csy/func/inst/n71_lh_adel_ex.S:52
bfc05c94:	3c14bfc0 	lui	s4,0xbfc0
bfc05c98:	26945ca4 	addiu	s4,s4,23716
/home/csy/func/inst/n71_lh_adel_ex.S:53
bfc05c9c:	01000011 	mthi	t0
/home/csy/func/inst/n71_lh_adel_ex.S:54
bfc05ca0:	0110001b 	divu	zero,t0,s0
/home/csy/func/inst/n71_lh_adel_ex.S:55
bfc05ca4:	848285e3 	lh	v0,-31261(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:56
bfc05ca8:	00004810 	mfhi	t1
/home/csy/func/inst/n71_lh_adel_ex.S:57
bfc05cac:	1128006a 	beq	t1,t0,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:58
bfc05cb0:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:59
bfc05cb4:	16570068 	bne	s2,s7,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:60
bfc05cb8:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:61
bfc05cbc:	14430066 	bne	v0,v1,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:62
bfc05cc0:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:63
bfc05cc4:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:64
bfc05cc8:	14f60063 	bne	a3,s6,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:65
bfc05ccc:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:67
bfc05cd0:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:68
bfc05cd4:	3c02224c 	lui	v0,0x224c
bfc05cd8:	3442f16c 	ori	v0,v0,0xf16c
bfc05cdc:	3c03224c 	lui	v1,0x224c
bfc05ce0:	3463f16c 	ori	v1,v1,0xf16c
bfc05ce4:	3c04800d 	lui	a0,0x800d
bfc05ce8:	348469cc 	ori	a0,a0,0x69cc
bfc05cec:	3c058ef7 	lui	a1,0x8ef7
bfc05cf0:	34a55a20 	ori	a1,a1,0x5a20
bfc05cf4:	24878341 	addiu	a3,a0,-31935
bfc05cf8:	3c010001 	lui	at,0x1
bfc05cfc:	00240821 	addu	at,at,a0
bfc05d00:	ac258340 	sw	a1,-31936(at)
/home/csy/func/inst/n71_lh_adel_ex.S:69
bfc05d04:	3c14bfc0 	lui	s4,0xbfc0
bfc05d08:	26945d0c 	addiu	s4,s4,23820
/home/csy/func/inst/n71_lh_adel_ex.S:70
bfc05d0c:	84828341 	lh	v0,-31935(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:71
bfc05d10:	0208001b 	divu	zero,s0,t0
/home/csy/func/inst/n71_lh_adel_ex.S:72
bfc05d14:	16570050 	bne	s2,s7,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:73
bfc05d18:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:74
bfc05d1c:	1443004e 	bne	v0,v1,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:75
bfc05d20:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:76
bfc05d24:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:77
bfc05d28:	14f6004b 	bne	a3,s6,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:78
bfc05d2c:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:80
bfc05d30:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:81
bfc05d34:	3c02516f 	lui	v0,0x516f
bfc05d38:	34425fa2 	ori	v0,v0,0x5fa2
bfc05d3c:	3c03516f 	lui	v1,0x516f
bfc05d40:	34635fa2 	ori	v1,v1,0x5fa2
bfc05d44:	3c04800d 	lui	a0,0x800d
bfc05d48:	34840438 	ori	a0,a0,0x438
bfc05d4c:	3c05cb7e 	lui	a1,0xcb7e
bfc05d50:	34a5f7d5 	ori	a1,a1,0xf7d5
bfc05d54:	2487db3b 	addiu	a3,a0,-9413
bfc05d58:	3c010001 	lui	at,0x1
bfc05d5c:	00240821 	addu	at,at,a0
bfc05d60:	ac25db38 	sw	a1,-9416(at)
/home/csy/func/inst/n71_lh_adel_ex.S:82
bfc05d64:	3c14bfc0 	lui	s4,0xbfc0
bfc05d68:	26945d74 	addiu	s4,s4,23924
/home/csy/func/inst/n71_lh_adel_ex.S:83
bfc05d6c:	01000013 	mtlo	t0
/home/csy/func/inst/n71_lh_adel_ex.S:84
bfc05d70:	01100019 	multu	t0,s0
/home/csy/func/inst/n71_lh_adel_ex.S:85
bfc05d74:	8482db3b 	lh	v0,-9413(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:86
bfc05d78:	00004810 	mfhi	t1
/home/csy/func/inst/n71_lh_adel_ex.S:87
bfc05d7c:	11280036 	beq	t1,t0,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:88
bfc05d80:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:89
bfc05d84:	16570034 	bne	s2,s7,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:90
bfc05d88:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:91
bfc05d8c:	14430032 	bne	v0,v1,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:92
bfc05d90:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:93
bfc05d94:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:94
bfc05d98:	14f6002f 	bne	a3,s6,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:95
bfc05d9c:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:97
bfc05da0:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:98
bfc05da4:	3c023537 	lui	v0,0x3537
bfc05da8:	3442cc30 	ori	v0,v0,0xcc30
bfc05dac:	3c033537 	lui	v1,0x3537
bfc05db0:	3463cc30 	ori	v1,v1,0xcc30
bfc05db4:	3c04800d 	lui	a0,0x800d
bfc05db8:	34842c20 	ori	a0,a0,0x2c20
bfc05dbc:	3c055118 	lui	a1,0x5118
bfc05dc0:	34a5e811 	ori	a1,a1,0xe811
bfc05dc4:	24871915 	addiu	a3,a0,6421
bfc05dc8:	ac851914 	sw	a1,6420(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:99
bfc05dcc:	3c14bfc0 	lui	s4,0xbfc0
bfc05dd0:	26945dd4 	addiu	s4,s4,24020
/home/csy/func/inst/n71_lh_adel_ex.S:100
bfc05dd4:	84821915 	lh	v0,6421(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:101
bfc05dd8:	01120019 	multu	t0,s2
/home/csy/func/inst/n71_lh_adel_ex.S:102
bfc05ddc:	1657001e 	bne	s2,s7,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:103
bfc05de0:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:104
bfc05de4:	1443001c 	bne	v0,v1,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:105
bfc05de8:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:106
bfc05dec:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:107
bfc05df0:	14f60019 	bne	a3,s6,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:108
bfc05df4:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:110
bfc05df8:	24120004 	li	s2,4
/home/csy/func/inst/n71_lh_adel_ex.S:111
bfc05dfc:	3c0263c6 	lui	v0,0x63c6
bfc05e00:	3442e7af 	ori	v0,v0,0xe7af
bfc05e04:	3c0363c6 	lui	v1,0x63c6
bfc05e08:	3463e7af 	ori	v1,v1,0xe7af
bfc05e0c:	3c04800d 	lui	a0,0x800d
bfc05e10:	34843d5c 	ori	a0,a0,0x3d5c
bfc05e14:	3c05d802 	lui	a1,0xd802
bfc05e18:	34a541b4 	ori	a1,a1,0x41b4
bfc05e1c:	248732e9 	addiu	a3,a0,13033
bfc05e20:	ac8532e8 	sw	a1,13032(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:112
bfc05e24:	3c14bfc0 	lui	s4,0xbfc0
bfc05e28:	26945e30 	addiu	s4,s4,24112
/home/csy/func/inst/n71_lh_adel_ex.S:113
bfc05e2c:	40927000 	mtc0	s2,c0_epc
/home/csy/func/inst/n71_lh_adel_ex.S:114
bfc05e30:	848232e9 	lh	v0,13033(a0)
/home/csy/func/inst/n71_lh_adel_ex.S:115
bfc05e34:	40887000 	mtc0	t0,c0_epc
/home/csy/func/inst/n71_lh_adel_ex.S:116
bfc05e38:	16570007 	bne	s2,s7,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:117
bfc05e3c:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:118
bfc05e40:	14430005 	bne	v0,v1,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:119
bfc05e44:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:120
bfc05e48:	40164000 	mfc0	s6,c0_badvaddr
/home/csy/func/inst/n71_lh_adel_ex.S:121
bfc05e4c:	14f60002 	bne	a3,s6,bfc05e58 <inst_error>
/home/csy/func/inst/n71_lh_adel_ex.S:122
bfc05e50:	00000000 	nop
/home/csy/func/inst/n71_lh_adel_ex.S:124
bfc05e54:	26730001 	addiu	s3,s3,1

bfc05e58 <inst_error>:
/home/csy/func/inst/n71_lh_adel_ex.S:127
bfc05e58:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n71_lh_adel_ex.S:128
bfc05e5c:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n71_lh_adel_ex.S:129
bfc05e60:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n71_lh_adel_ex.S:130
bfc05e64:	03e00008 	jr	ra
/home/csy/func/inst/n71_lh_adel_ex.S:131
bfc05e68:	00000000 	nop
bfc05e6c:	00000000 	nop
bfc05e70:	9e3f7f70 	0x9e3f7f70
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
  14:	0000099c 	0x99c
	...
  20:	0000001c 	0x1c
  24:	00400002 	0x400002
  28:	00040000 	sll	zero,a0,0x0
  2c:	00000000 	nop
  30:	bfc009a0 	cache	0x0,2464(s8)
  34:	000002f4 	teq	zero,zero,0xb
	...
  40:	0000001c 	0x1c
  44:	008f0002 	0x8f0002
  48:	00040000 	sll	zero,a0,0x0
  4c:	00000000 	nop
  50:	bfc00ca0 	cache	0x0,3232(s8)
  54:	000002f8 	0x2f8
	...
  60:	0000001c 	0x1c
  64:	00dd0002 	0xdd0002
  68:	00040000 	sll	zero,a0,0x0
  6c:	00000000 	nop
  70:	bfc00fa0 	cache	0x0,4000(s8)
  74:	00000250 	0x250
	...
  80:	0000001c 	0x1c
  84:	012a0002 	0x12a0002
  88:	00040000 	sll	zero,a0,0x0
  8c:	00000000 	nop
  90:	bfc011f0 	cache	0x0,4592(s8)
  94:	0000022c 	0x22c
	...
  a0:	0000001c 	0x1c
  a4:	01780002 	0x1780002
  a8:	00040000 	sll	zero,a0,0x0
  ac:	00000000 	nop
  b0:	bfc01420 	cache	0x0,5152(s8)
  b4:	00000300 	sll	zero,zero,0xc
	...
  c0:	0000001c 	0x1c
  c4:	01c60002 	0x1c60002
  c8:	00040000 	sll	zero,a0,0x0
  cc:	00000000 	nop
  d0:	bfc01720 	cache	0x0,5920(s8)
  d4:	00000308 	0x308
	...
  e0:	0000001c 	0x1c
  e4:	02140002 	0x2140002
  e8:	00040000 	sll	zero,a0,0x0
  ec:	00000000 	nop
  f0:	bfc01a30 	cache	0x0,6704(s8)
  f4:	00000300 	sll	zero,zero,0xc
	...
 100:	0000001c 	0x1c
 104:	02610002 	0x2610002
 108:	00040000 	sll	zero,a0,0x0
 10c:	00000000 	nop
 110:	bfc01d30 	cache	0x0,7472(s8)
 114:	00000300 	sll	zero,zero,0xc
	...
 120:	0000001c 	0x1c
 124:	02ac0002 	0x2ac0002
 128:	00040000 	sll	zero,a0,0x0
 12c:	00000000 	nop
 130:	bfc02030 	cache	0x0,8240(s8)
 134:	00000138 	0x138
	...
 140:	0000001c 	0x1c
 144:	02f80002 	0x2f80002
 148:	00040000 	sll	zero,a0,0x0
 14c:	00000000 	nop
 150:	bfc02170 	cache	0x0,8560(s8)
 154:	000002f4 	teq	zero,zero,0xb
	...
 160:	0000001c 	0x1c
 164:	03460002 	0x3460002
 168:	00040000 	sll	zero,a0,0x0
 16c:	00000000 	nop
 170:	bfc02470 	cache	0x0,9328(s8)
 174:	00000300 	sll	zero,zero,0xc
	...
 180:	0000001c 	0x1c
 184:	03940002 	0x3940002
 188:	00040000 	sll	zero,a0,0x0
 18c:	00000000 	nop
 190:	bfc02770 	cache	0x0,10096(s8)
 194:	00000300 	sll	zero,zero,0xc
	...
 1a0:	0000001c 	0x1c
 1a4:	03e20002 	0x3e20002
 1a8:	00040000 	sll	zero,a0,0x0
 1ac:	00000000 	nop
 1b0:	bfc02a70 	cache	0x0,10864(s8)
 1b4:	00000300 	sll	zero,zero,0xc
	...
 1c0:	0000001c 	0x1c
 1c4:	042e0002 	tnei	at,2
 1c8:	00040000 	sll	zero,a0,0x0
 1cc:	00000000 	nop
 1d0:	bfc02d70 	cache	0x0,11632(s8)
 1d4:	0000125c 	0x125c
	...
 1e0:	0000001c 	0x1c
 1e4:	04740002 	0x4740002
 1e8:	00040000 	sll	zero,a0,0x0
 1ec:	00000000 	nop
 1f0:	bfc03fd0 	cache	0x0,16336(s8)
 1f4:	00000138 	0x138
	...
 200:	0000001c 	0x1c
 204:	04c20002 	bltzl	a2,210 <data_size+0x200>
 208:	00040000 	sll	zero,a0,0x0
 20c:	00000000 	nop
 210:	bfc04110 	cache	0x0,16656(s8)
 214:	00000254 	0x254
	...
 220:	0000001c 	0x1c
 224:	05110002 	bgezal	t0,230 <data_size+0x220>
 228:	00040000 	sll	zero,a0,0x0
 22c:	00000000 	nop
 230:	bfc04370 	cache	0x0,17264(s8)
 234:	00000300 	sll	zero,zero,0xc
	...
 240:	0000001c 	0x1c
 244:	055f0002 	0x55f0002
 248:	00040000 	sll	zero,a0,0x0
 24c:	00000000 	nop
 250:	bfc04670 	cache	0x0,18032(s8)
 254:	00000250 	0x250
	...
 260:	0000001c 	0x1c
 264:	05ac0002 	teqi	t5,2
 268:	00040000 	sll	zero,a0,0x0
 26c:	00000000 	nop
 270:	bfc048c0 	cache	0x0,18624(s8)
 274:	00000308 	0x308
	...
 280:	0000001c 	0x1c
 284:	05f90002 	0x5f90002
 288:	00040000 	sll	zero,a0,0x0
 28c:	00000000 	nop
 290:	bfc04bd0 	cache	0x0,19408(s8)
 294:	000002f8 	0x2f8
	...
 2a0:	0000001c 	0x1c
 2a4:	06470002 	0x6470002
 2a8:	00040000 	sll	zero,a0,0x0
 2ac:	00000000 	nop
 2b0:	bfc04ed0 	cache	0x0,20176(s8)
 2b4:	00000308 	0x308
	...
 2c0:	0000001c 	0x1c
 2c4:	06970002 	0x6970002
 2c8:	00040000 	sll	zero,a0,0x0
 2cc:	00000000 	nop
 2d0:	bfc051e0 	cache	0x0,20960(s8)
 2d4:	00000308 	0x308
	...
 2e0:	0000001c 	0x1c
 2e4:	06e70002 	0x6e70002
 2e8:	00040000 	sll	zero,a0,0x0
 2ec:	00000000 	nop
 2f0:	bfc054f0 	cache	0x0,21744(s8)
 2f4:	00000148 	0x148
	...
 300:	0000001c 	0x1c
 304:	07300002 	bltzal	t9,310 <data_size+0x300>
 308:	00040000 	sll	zero,a0,0x0
 30c:	00000000 	nop
 310:	bfc05640 	cache	0x0,22080(s8)
 314:	00000224 	0x224
	...
 320:	0000001c 	0x1c
 324:	077e0002 	0x77e0002
 328:	00040000 	sll	zero,a0,0x0
 32c:	00000000 	nop
 330:	bfc05870 	cache	0x0,22640(s8)
 334:	00000300 	sll	zero,zero,0xc
	...
 340:	0000001c 	0x1c
 344:	07cb0002 	tltiu	s8,2
 348:	00040000 	sll	zero,a0,0x0
 34c:	00000000 	nop
 350:	bfc05b70 	cache	0x0,23408(s8)
 354:	000002fc 	0x2fc
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	bfc009a0 	cache	0x0,2464(s8)
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	bfc00ca0 	cache	0x0,3232(s8)
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	bfc00fa0 	cache	0x0,4000(s8)
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	bfc011f0 	cache	0x0,4592(s8)
	...
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	bfc01420 	cache	0x0,5152(s8)
	...
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	bfc01720 	cache	0x0,5920(s8)
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	bfc01a30 	cache	0x0,6704(s8)
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f
  e0:	bfc01d30 	cache	0x0,7472(s8)
	...
  f8:	0000001d 	0x1d
  fc:	0000001f 	0x1f
 100:	bfc02030 	cache	0x0,8240(s8)
	...
 118:	0000001d 	0x1d
 11c:	0000001f 	0x1f
 120:	bfc02170 	cache	0x0,8560(s8)
	...
 138:	0000001d 	0x1d
 13c:	0000001f 	0x1f
 140:	bfc02470 	cache	0x0,9328(s8)
	...
 158:	0000001d 	0x1d
 15c:	0000001f 	0x1f
 160:	bfc02770 	cache	0x0,10096(s8)
	...
 178:	0000001d 	0x1d
 17c:	0000001f 	0x1f
 180:	bfc02a70 	cache	0x0,10864(s8)
	...
 198:	0000001d 	0x1d
 19c:	0000001f 	0x1f
 1a0:	bfc02d70 	cache	0x0,11632(s8)
	...
 1b8:	0000001d 	0x1d
 1bc:	0000001f 	0x1f
 1c0:	bfc03fd0 	cache	0x0,16336(s8)
	...
 1d8:	0000001d 	0x1d
 1dc:	0000001f 	0x1f
 1e0:	bfc04110 	cache	0x0,16656(s8)
	...
 1f8:	0000001d 	0x1d
 1fc:	0000001f 	0x1f
 200:	bfc04370 	cache	0x0,17264(s8)
	...
 218:	0000001d 	0x1d
 21c:	0000001f 	0x1f
 220:	bfc04670 	cache	0x0,18032(s8)
	...
 238:	0000001d 	0x1d
 23c:	0000001f 	0x1f
 240:	bfc048c0 	cache	0x0,18624(s8)
	...
 258:	0000001d 	0x1d
 25c:	0000001f 	0x1f
 260:	bfc04bd0 	cache	0x0,19408(s8)
	...
 278:	0000001d 	0x1d
 27c:	0000001f 	0x1f
 280:	bfc04ed0 	cache	0x0,20176(s8)
	...
 298:	0000001d 	0x1d
 29c:	0000001f 	0x1f
 2a0:	bfc051e0 	cache	0x0,20960(s8)
	...
 2b8:	0000001d 	0x1d
 2bc:	0000001f 	0x1f
 2c0:	bfc054f0 	cache	0x0,21744(s8)
	...
 2d8:	0000001d 	0x1d
 2dc:	0000001f 	0x1f
 2e0:	bfc05640 	cache	0x0,22080(s8)
	...
 2f8:	0000001d 	0x1d
 2fc:	0000001f 	0x1f
 300:	bfc05870 	cache	0x0,22640(s8)
	...
 318:	0000001d 	0x1d
 31c:	0000001f 	0x1f
 320:	bfc05b70 	cache	0x0,23408(s8)
	...
 338:	0000001d 	0x1d
 33c:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	000001c2 	srl	zero,zero,0x7
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
     124:	4a01ff03 	c2	0x1ff03
     128:	4b4b4b4b 	c2	0x14b4b4b
     12c:	4b4b4b4b 	c2	0x14b4b4b
     130:	4b4b4b4b 	c2	0x14b4b4b
     134:	4b4b4b4b 	c2	0x14b4b4b
     138:	4b4b4b4b 	c2	0x14b4b4b
     13c:	4b4b4b4b 	c2	0x14b4b4b
     140:	4b4b4b4b 	c2	0x14b4b4b
     144:	4b4b4b4b 	c2	0x14b4b4b
     148:	4b4b4b4b 	c2	0x14b4b4b
     14c:	4b4b4b4b 	c2	0x14b4b4b
     150:	4b4b4b4b 	c2	0x14b4b4b
     154:	4b4b4b4b 	c2	0x14b4b4b
     158:	4b4b4b4b 	c2	0x14b4b4b
     15c:	4b4b4b4b 	c2	0x14b4b4b
     160:	4b4b4b4b 	c2	0x14b4b4b
     164:	4b4b4b4b 	c2	0x14b4b4b
     168:	4b4b4b4b 	c2	0x14b4b4b
     16c:	4b4b4b4b 	c2	0x14b4b4b
     170:	4b4b4b4b 	c2	0x14b4b4b
     174:	4b4b4b4b 	c2	0x14b4b4b
     178:	4b4b4b4b 	c2	0x14b4b4b
     17c:	4b4b4b4b 	c2	0x14b4b4b
     180:	4b4b4b4b 	c2	0x14b4b4b
     184:	4b4b4b4b 	c2	0x14b4b4b
     188:	4c4b4b4b 	0x4c4b4b4b
     18c:	4b4b4b83 	c2	0x14b4b83
     190:	4b4c4b4b 	c2	0x14c4b4b
     194:	4b4b4b4b 	c2	0x14b4b4b
     198:	4b4c4b4b 	c2	0x14c4b4b
     19c:	4c4b4b4d 	0x4c4b4b4d
     1a0:	4c848383 	0x4c848383
     1a4:	4b4b4b4b 	c2	0x14b4b4b
     1a8:	83834b4c 	lb	v1,19276(gp)
     1ac:	4d4b4d4b 	0x4d4b4d4b
     1b0:	4b4b4d83 	c2	0x14b4d83
     1b4:	4b4d4d4b 	c2	0x14d4d4b
     1b8:	4b4b4b4b 	c2	0x14b4b4b
     1bc:	4b4b4c4b 	c2	0x14b4c4b
     1c0:	0004024b 	0x4024b
     1c4:	00b90101 	0xb90101
     1c8:	00020000 	sll	zero,v0,0x0
     1cc:	00000028 	0x28
     1d0:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
     1d4:	0101000d 	break	0x101
     1d8:	00000101 	0x101
     1dc:	00000100 	sll	zero,zero,0x4
     1e0:	376e0001 	ori	t6,k1,0x1
     1e4:	686c5f32 	0x686c5f32
     1e8:	64615f75 	0x64615f75
     1ec:	655f6c65 	0x655f6c65
     1f0:	00532e78 	0x532e78
     1f4:	00000000 	nop
     1f8:	a0020500 	sb	v0,1280(zero)
     1fc:	18bfc009 	0x18bfc009
     200:	4c4b4b4b 	0x4c4b4b4b
     204:	4b4b4b4b 	c2	0x14b4b4b
     208:	1330024d 	beq	t9,s0,b40 <data_size+0xb30>
     20c:	4b4b4b83 	c2	0x14b4b83
     210:	4b4b4b4b 	c2	0x14b4b4b
     214:	30024b4c 	andi	v0,zero,0x4b4c
     218:	4b4b8313 	c2	0x14b8313
     21c:	4b4b4b4b 	c2	0x14b4b4b
     220:	4b4b4b4b 	c2	0x14b4b4b
     224:	4b4b4b4b 	c2	0x14b4b4b
     228:	024b4c4b 	0x24b4c4b
     22c:	4b831328 	c2	0x1831328
     230:	4b4b4b4b 	c2	0x14b4b4b
     234:	4b4b4b4b 	c2	0x14b4b4b
     238:	4c4b4b4b 	0x4c4b4b4b
     23c:	1328024b 	beq	t9,t0,b6c <data_size+0xb5c>
     240:	4b4b4b83 	c2	0x14b4b83
     244:	4b4b4b4b 	c2	0x14b4b4b
     248:	024b4c4b 	0x24b4c4b
     24c:	4b831330 	c2	0x1831330
     250:	4b4b4b4b 	c2	0x14b4b4b
     254:	4b4b4b4b 	c2	0x14b4b4b
     258:	4c4b4b4b 	0x4c4b4b4b
     25c:	1328024b 	beq	t9,t0,b8c <data_size+0xb7c>
     260:	4b4b4b83 	c2	0x14b4b83
     264:	4b4b4b4b 	c2	0x14b4b4b
     268:	024b4c4b 	0x24b4c4b
     26c:	4b831328 	c2	0x1831328
     270:	4b4b4b4b 	c2	0x14b4b4b
     274:	4b4b4b4b 	c2	0x14b4b4b
     278:	4b4b4d4c 	c2	0x14b4d4c
     27c:	04024b4b 	bltzl	zero,12fac <data_size+0x12f9c>
     280:	bf010100 	cache	0x1,256(t8)
     284:	02000000 	0x2000000
     288:	00002700 	sll	a0,zero,0x1c
     28c:	fb010100 	sdc2	$1,256(t8)
     290:	01000d0e 	0x1000d0e
     294:	00010101 	0x10101
     298:	00010000 	sll	zero,at,0x0
     29c:	6e000100 	0x6e000100
     2a0:	735f3337 	0x735f3337
     2a4:	64615f77 	0x64615f77
     2a8:	655f7365 	0x655f7365
     2ac:	00532e78 	0x532e78
     2b0:	00000000 	nop
     2b4:	a0020500 	sb	v0,1280(zero)
     2b8:	18bfc00c 	0x18bfc00c
     2bc:	4c4b4b4b 	0x4c4b4b4b
     2c0:	4b4b4b4b 	c2	0x14b4b4b
     2c4:	1328024d 	beq	t9,t0,bfc <data_size+0xbec>
     2c8:	4b4b4b83 	c2	0x14b4b83
     2cc:	4b4b4b4b 	c2	0x14b4b4b
     2d0:	024b4c4b 	0x24b4c4b
     2d4:	4b831328 	c2	0x1831328
     2d8:	4b4b4b4b 	c2	0x14b4b4b
     2dc:	4b4b4b4b 	c2	0x14b4b4b
     2e0:	4b4b4b4b 	c2	0x14b4b4b
     2e4:	4c4b4b4b 	0x4c4b4b4b
     2e8:	1328024b 	beq	t9,t0,c18 <data_size+0xc08>
     2ec:	4b4b4b83 	c2	0x14b4b83
     2f0:	4b4b4b4b 	c2	0x14b4b4b
     2f4:	4b4b4b4b 	c2	0x14b4b4b
     2f8:	4b4c4b4b 	c2	0x14c4b4b
     2fc:	83132802 	lb	s3,10242(t8)
     300:	4b4b4b4b 	c2	0x14b4b4b
     304:	4b4b4b4b 	c2	0x14b4b4b
     308:	024b4c4b 	0x24b4c4b
     30c:	4b831328 	c2	0x1831328
     310:	4b4b4b4b 	c2	0x14b4b4b
     314:	4b4b4b4b 	c2	0x14b4b4b
     318:	4b4b4b4b 	c2	0x14b4b4b
     31c:	28024b4c 	slti	v0,zero,19276
     320:	4b4b8313 	c2	0x14b8313
     324:	4b4b4b4b 	c2	0x14b4b4b
     328:	4c4b4b4b 	0x4c4b4b4b
     32c:	1328024b 	beq	t9,t0,c5c <data_size+0xc4c>
     330:	4b4b4b83 	c2	0x14b4b83
     334:	4b4b4b4b 	c2	0x14b4b4b
     338:	4c4b4b4b 	0x4c4b4b4b
     33c:	4b4b4b4d 	c2	0x14b4b4d
     340:	0004024b 	0x4024b
     344:	009b0101 	0x9b0101
     348:	00020000 	sll	zero,v0,0x0
     34c:	00000026 	xor	zero,zero,zero
     350:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
     354:	0101000d 	break	0x101
     358:	00000101 	0x101
     35c:	00000100 	sll	zero,zero,0x4
     360:	366e0001 	ori	t6,s3,0x1
     364:	64615f37 	0x64615f37
     368:	766f5f64 	jalx	9bd7d90 <data_size+0x9bd7d80>
     36c:	2e78655f 	sltiu	t8,s3,25951
     370:	00000053 	mtlhx	zero
     374:	05000000 	bltz	t0,378 <data_size+0x368>
     378:	c00fa002 	ll	t7,-24574(zero)
     37c:	4b4b18bf 	c2	0x14b18bf
     380:	4b4b4c4b 	c2	0x14b4c4b
     384:	084d4b4b 	j	1352d2c <data_size+0x1352d1c>
     388:	4b4b83e5 	c2	0x14b83e5
     38c:	4b4c4b4b 	c2	0x14c4b4b
     390:	4b83e508 	c2	0x183e508
     394:	4b4b4b4b 	c2	0x14b4b4b
     398:	4b4b4b4b 	c2	0x14b4b4b
     39c:	4c4b4b4b 	0x4c4b4b4b
     3a0:	084b834b 	j	12e0d2c <data_size+0x12e0d1c>
     3a4:	4b4b4be5 	c2	0x14b4be5
     3a8:	4b4b4b4b 	c2	0x14b4b4b
     3ac:	084b4c4b 	j	12d312c <data_size+0x12d311c>
     3b0:	4b4b83e5 	c2	0x14b83e5
     3b4:	4c4b4b4b 	0x4c4b4b4b
     3b8:	83e5084b 	lb	a1,2123(ra)
     3bc:	4b4b4b4b 	c2	0x14b4b4b
     3c0:	4b4b4b4b 	c2	0x14b4b4b
     3c4:	084b4c4b 	j	12d312c <data_size+0x12d311c>
     3c8:	4b4b83e5 	c2	0x14b83e5
     3cc:	4c4b4b4b 	0x4c4b4b4b
     3d0:	83e5084b 	lb	a1,2123(ra)
     3d4:	4b4b4b4b 	c2	0x14b4b4b
     3d8:	4d4c4b4b 	0x4d4c4b4b
     3dc:	4b4b4b4b 	c2	0x14b4b4b
     3e0:	01000402 	0x1000402
     3e4:	00009a01 	0x9a01
     3e8:	27000200 	addiu	zero,t8,512
     3ec:	01000000 	0x1000000
     3f0:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     3f4:	01010100 	0x1010100
     3f8:	00000001 	movf	zero,zero,$fcc0
     3fc:	01000001 	movf	zero,t0,$fcc0
     400:	38366e00 	xori	s6,at,0x6e00
     404:	6464615f 	0x6464615f
     408:	766f5f69 	jalx	9bd7da4 <data_size+0x9bd7d94>
     40c:	2e78655f 	sltiu	t8,s3,25951
     410:	00000053 	mtlhx	zero
     414:	05000000 	bltz	t0,418 <data_size+0x408>
     418:	c011f002 	ll	s1,-4094(zero)
     41c:	4b4b18bf 	c2	0x14b18bf
     420:	4b4b4c4b 	c2	0x14b4c4b
     424:	084d4b4b 	j	1352d2c <data_size+0x1352d1c>
     428:	4b4b83ad 	c2	0x14b83ad
     42c:	ad084b4c 	sw	t0,19276(t0)
     430:	4b4b4b83 	c2	0x14b4b83
     434:	4b4b4b4b 	c2	0x14b4b4b
     438:	4b4b4b4b 	c2	0x14b4b4b
     43c:	084b4c4b 	j	12d312c <data_size+0x12d311c>
     440:	4b4b83ad 	c2	0x14b83ad
     444:	4b4b4b4b 	c2	0x14b4b4b
     448:	4c4b4b4b 	0x4c4b4b4b
     44c:	83ad084b 	lb	t5,2123(sp)
     450:	4b4b4b4b 	c2	0x14b4b4b
     454:	084b4c4b 	j	12d312c <data_size+0x12d311c>
     458:	4b4b83ad 	c2	0x14b83ad
     45c:	4b4b4b4b 	c2	0x14b4b4b
     460:	4c4b4b4b 	0x4c4b4b4b
     464:	83ad084b 	lb	t5,2123(sp)
     468:	4b4b4b4b 	c2	0x14b4b4b
     46c:	084b4c4b 	j	12d312c <data_size+0x12d311c>
     470:	4b4b83ad 	c2	0x14b83ad
     474:	4b4b4b4b 	c2	0x14b4b4b
     478:	4b4b4d4c 	c2	0x14b4d4c
     47c:	04024b4b 	bltzl	zero,131ac <data_size+0x1319c>
     480:	dc010100 	ldc3	$1,256(zero)
     484:	02000000 	0x2000000
     488:	00002700 	sll	a0,zero,0x1c
     48c:	fb010100 	sdc2	$1,256(t8)
     490:	01000d0e 	0x1000d0e
     494:	00010101 	0x10101
     498:	00010000 	sll	zero,at,0x0
     49c:	6e000100 	0x6e000100
     4a0:	625f3138 	0x625f3138
     4a4:	5f7a7467 	0x5f7a7467
     4a8:	655f7364 	0x655f7364
     4ac:	00532e78 	0x532e78
     4b0:	00000000 	nop
     4b4:	20020500 	addi	v0,zero,1280
     4b8:	18bfc014 	0x18bfc014
     4bc:	4b4b4c4b 	c2	0x14b4c4b
     4c0:	4b4b4d4b 	c2	0x14b4d4b
     4c4:	4b4b834b 	c2	0x14b834b
     4c8:	834b4b4b 	lb	t3,19275(k0)
     4cc:	4c4b4b4b 	0x4c4b4b4b
     4d0:	834b4b4b 	lb	t3,19275(k0)
     4d4:	4b4b4b4b 	c2	0x14b4b4b
     4d8:	4b4b834b 	c2	0x14b834b
     4dc:	4b4b4c4b 	c2	0x14b4c4b
     4e0:	8383834b 	lb	v1,-31925(gp)
     4e4:	4b4b4b4b 	c2	0x14b4b4b
     4e8:	4b4b834b 	c2	0x14b834b
     4ec:	4b4b4b4b 	c2	0x14b4b4b
     4f0:	4b83834b 	c2	0x183834b
     4f4:	4b4b4b4b 	c2	0x14b4b4b
     4f8:	4b4b4b83 	c2	0x14b4b83
     4fc:	83834b4b 	lb	v1,19275(gp)
     500:	4b4b4b83 	c2	0x14b4b83
     504:	4b834b4b 	c2	0x1834b4b
     508:	4b4c4b4b 	c2	0x14c4b4b
     50c:	4b834b4b 	c2	0x1834b4b
     510:	4b4b4b4b 	c2	0x14b4b4b
     514:	4b4b4b83 	c2	0x14b4b83
     518:	4b834b4b 	c2	0x1834b4b
     51c:	4b4b4b4b 	c2	0x14b4b4b
     520:	4b4b834b 	c2	0x14b834b
     524:	4b834b4b 	c2	0x1834b4b
     528:	4b4b4b4b 	c2	0x14b4b4b
     52c:	4b4b4b83 	c2	0x14b4b83
     530:	4b4b4b4c 	c2	0x14b4b4c
     534:	4b4b4b83 	c2	0x14b4b83
     538:	4b834b4b 	c2	0x1834b4b
     53c:	4b4b4b4b 	c2	0x14b4b4b
     540:	4b4b4b83 	c2	0x14b4b83
     544:	4b834b4b 	c2	0x1834b4b
     548:	4b4d4b4b 	c2	0x14d4b4b
     54c:	84834b4b 	lh	v1,19275(a0)
     550:	4b4b4b4b 	c2	0x14b4b4b
     554:	4b844b83 	c2	0x1844b83
     558:	4b4b4d4c 	c2	0x14b4d4c
     55c:	04024b4b 	bltzl	zero,1328c <data_size+0x1327c>
     560:	de010100 	ldc3	$1,256(s0)
     564:	02000000 	0x2000000
     568:	00002700 	sll	a0,zero,0x1c
     56c:	fb010100 	sdc2	$1,256(t8)
     570:	01000d0e 	0x1000d0e
     574:	00010101 	0x10101
     578:	00010000 	sll	zero,at,0x0
     57c:	6e000100 	0x6e000100
     580:	6a5f3938 	0x6a5f3938
     584:	5f726c61 	0x5f726c61
     588:	655f7364 	0x655f7364
     58c:	00532e78 	0x532e78
     590:	00000000 	nop
     594:	20020500 	addi	v0,zero,1280
     598:	18bfc017 	0x18bfc017
     59c:	4b4c4b4b 	c2	0x14c4b4b
     5a0:	4b4d4b4b 	c2	0x14d4b4b
     5a4:	4b834b4b 	c2	0x1834b4b
     5a8:	4b4b4b4b 	c2	0x14b4b4b
     5ac:	4b4b4b83 	c2	0x14b4b83
     5b0:	4b4b4b4c 	c2	0x14b4b4c
     5b4:	4b4b4b83 	c2	0x14b4b83
     5b8:	4b834b4b 	c2	0x1834b4b
     5bc:	4b4c4b4b 	c2	0x14c4b4b
     5c0:	83834b4b 	lb	v1,19275(gp)
     5c4:	4b4b4b83 	c2	0x14b4b83
     5c8:	4b834b4b 	c2	0x1834b4b
     5cc:	4b4b4b4b 	c2	0x14b4b4b
     5d0:	83834b4b 	lb	v1,19275(gp)
     5d4:	4b4b4b4b 	c2	0x14b4b4b
     5d8:	4b4b834b 	c2	0x14b834b
     5dc:	834b4b4b 	lb	t3,19275(k0)
     5e0:	4b4b8383 	c2	0x14b8383
     5e4:	834b4b4b 	lb	t3,19275(k0)
     5e8:	4c4b4b4b 	0x4c4b4b4b
     5ec:	834b4b4b 	lb	t3,19275(k0)
     5f0:	4b4b4b4b 	c2	0x14b4b4b
     5f4:	4b4b834b 	c2	0x14b834b
     5f8:	834b4b4b 	lb	t3,19275(k0)
     5fc:	4b4b4b4b 	c2	0x14b4b4b
     600:	4b834b4b 	c2	0x1834b4b
     604:	834b4b4b 	lb	t3,19275(k0)
     608:	4b4b4b4b 	c2	0x14b4b4b
     60c:	4b4b834b 	c2	0x14b834b
     610:	4b4b4c4b 	c2	0x14b4c4b
     614:	4b4b834b 	c2	0x14b834b
     618:	834b4b4b 	lb	t3,19275(k0)
     61c:	4b4b4b4b 	c2	0x14b4b4b
     620:	4b4b834b 	c2	0x14b834b
     624:	834b4b4b 	lb	t3,19275(k0)
     628:	4d4b4b4b 	0x4d4b4b4b
     62c:	834b4b4b 	lb	t3,19275(k0)
     630:	4b4b4b84 	c2	0x14b4b84
     634:	844b834b 	lh	t3,-31925(v0)
     638:	4b4d4c4b 	c2	0x14d4c4b
     63c:	4b4b4b4b 	c2	0x14b4b4b
     640:	01000402 	0x1000402
     644:	0000db01 	0xdb01
     648:	26000200 	addiu	zero,s0,512
     64c:	01000000 	0x1000000
     650:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     654:	01010100 	0x1010100
     658:	00000001 	movf	zero,zero,$fcc0
     65c:	01000001 	movf	zero,t0,$fcc0
     660:	38376e00 	xori	s7,at,0x6e00
     664:	7165625f 	0x7165625f
     668:	5f73645f 	0x5f73645f
     66c:	532e7865 	beql	t9,t6,1e804 <data_size+0x1e7f4>
     670:	00000000 	nop
     674:	02050000 	0x2050000
     678:	bfc01a30 	cache	0x0,6704(s8)
     67c:	4b4c4b18 	c2	0x14c4b18
     680:	4b4d4b4b 	c2	0x14d4b4b
     684:	4b834b4b 	c2	0x1834b4b
     688:	4b4b4b4b 	c2	0x14b4b4b
     68c:	4b4b4b83 	c2	0x14b4b83
     690:	4b4b4b4c 	c2	0x14b4b4c
     694:	4b4b4b83 	c2	0x14b4b83
     698:	4b834b4b 	c2	0x1834b4b
     69c:	4b4c4b4b 	c2	0x14c4b4b
     6a0:	83834b4b 	lb	v1,19275(gp)
     6a4:	4b4b4b83 	c2	0x14b4b83
     6a8:	4b834b4b 	c2	0x1834b4b
     6ac:	4b4b4b4b 	c2	0x14b4b4b
     6b0:	83834b4b 	lb	v1,19275(gp)
     6b4:	4b4b4b4b 	c2	0x14b4b4b
     6b8:	4b4b834b 	c2	0x14b834b
     6bc:	834b4b4b 	lb	t3,19275(k0)
     6c0:	4b4b8383 	c2	0x14b8383
     6c4:	834b4b4b 	lb	t3,19275(k0)
     6c8:	4c4b4b4b 	0x4c4b4b4b
     6cc:	834b4b4b 	lb	t3,19275(k0)
     6d0:	4b4b4b4b 	c2	0x14b4b4b
     6d4:	4b4b834b 	c2	0x14b834b
     6d8:	834b4b4b 	lb	t3,19275(k0)
     6dc:	4b4b4b4b 	c2	0x14b4b4b
     6e0:	4b834b4b 	c2	0x1834b4b
     6e4:	834b4b4b 	lb	t3,19275(k0)
     6e8:	4b4b4b4b 	c2	0x14b4b4b
     6ec:	4b4b834b 	c2	0x14b834b
     6f0:	4b4b4c4b 	c2	0x14b4c4b
     6f4:	4b4b834b 	c2	0x14b834b
     6f8:	834b4b4b 	lb	t3,19275(k0)
     6fc:	4b4b4b4b 	c2	0x14b4b4b
     700:	4b4b834b 	c2	0x14b834b
     704:	834b4b4b 	lb	t3,19275(k0)
     708:	4d4b4b4b 	0x4d4b4b4b
     70c:	834b4b4b 	lb	t3,19275(k0)
     710:	4b4b4b84 	c2	0x14b4b84
     714:	844b834b 	lh	t3,-31925(v0)
     718:	4b4d4c4b 	c2	0x14d4c4b
     71c:	024b4b4b 	0x24b4b4b
     720:	01010004 	sllv	zero,at,t0
     724:	000000d9 	0xd9
     728:	00240002 	ror	zero,a0,0x0
     72c:	01010000 	0x1010000
     730:	000d0efb 	0xd0efb
     734:	01010101 	0x1010101
     738:	01000000 	0x1000000
     73c:	00010000 	sll	zero,at,0x0
     740:	5f36386e 	0x5f36386e
     744:	73645f6a 	0x73645f6a
     748:	2e78655f 	sltiu	t8,s3,25951
     74c:	00000053 	mtlhx	zero
     750:	05000000 	bltz	t0,754 <data_size+0x744>
     754:	c01d3002 	ll	sp,12290(zero)
     758:	4c4b18bf 	0x4c4b18bf
     75c:	4d4b4b4b 	0x4d4b4b4b
     760:	834b4b4b 	lb	t3,19275(k0)
     764:	4b4b4b4b 	c2	0x14b4b4b
     768:	4b4b834b 	c2	0x14b834b
     76c:	4b4b4c4b 	c2	0x14b4c4b
     770:	4b4b834b 	c2	0x14b834b
     774:	834b4b4b 	lb	t3,19275(k0)
     778:	4c4b4b4b 	0x4c4b4b4b
     77c:	834b4b4b 	lb	t3,19275(k0)
     780:	4b4b8383 	c2	0x14b8383
     784:	834b4b4b 	lb	t3,19275(k0)
     788:	4b4b4b4b 	c2	0x14b4b4b
     78c:	834b4b4b 	lb	t3,19275(k0)
     790:	4b4b4b83 	c2	0x14b4b83
     794:	4b834b4b 	c2	0x1834b4b
     798:	4b4b4b4b 	c2	0x14b4b4b
     79c:	4b838383 	c2	0x1838383
     7a0:	4b4b4b4b 	c2	0x14b4b4b
     7a4:	4b4b4b83 	c2	0x14b4b83
     7a8:	4b4b4b4c 	c2	0x14b4b4c
     7ac:	4b4b4b83 	c2	0x14b4b83
     7b0:	4b834b4b 	c2	0x1834b4b
     7b4:	4b4b4b4b 	c2	0x14b4b4b
     7b8:	4b4b4b83 	c2	0x14b4b83
     7bc:	834b4b4b 	lb	t3,19275(k0)
     7c0:	4b4b4b4b 	c2	0x14b4b4b
     7c4:	4b4b4b83 	c2	0x14b4b83
     7c8:	4b834b4b 	c2	0x1834b4b
     7cc:	4b4c4b4b 	c2	0x14c4b4b
     7d0:	4b834b4b 	c2	0x1834b4b
     7d4:	4b4b4b4b 	c2	0x14b4b4b
     7d8:	4b4b4b83 	c2	0x14b4b83
     7dc:	4b834b4b 	c2	0x1834b4b
     7e0:	4b4b4b4b 	c2	0x14b4b4b
     7e4:	4b4b4b83 	c2	0x14b4b83
     7e8:	4b4b4b4d 	c2	0x14b4b4d
     7ec:	4b4b8483 	c2	0x14b8483
     7f0:	4b834b4b 	c2	0x1834b4b
     7f4:	4d4c4b84 	0x4d4c4b84
     7f8:	4b4b4b4b 	c2	0x14b4b4b
     7fc:	01000402 	0x1000402
     800:	00007e01 	0x7e01
     804:	25000200 	addiu	zero,t0,512
     808:	01000000 	0x1000000
     80c:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     810:	01010100 	0x1010100
     814:	00000001 	movf	zero,zero,$fcc0
     818:	01000001 	movf	zero,t0,$fcc0
     81c:	36366e00 	ori	s6,s1,0x6e00
     820:	6572625f 	0x6572625f
     824:	655f6b61 	0x655f6b61
     828:	00532e78 	0x532e78
     82c:	00000000 	nop
     830:	30020500 	andi	v0,zero,0x500
     834:	18bfc020 	0x18bfc020
     838:	4c4b4b4b 	0x4c4b4b4b
     83c:	4b4b4b4b 	c2	0x14b4b4b
     840:	4b4b844d 	c2	0x14b844d
     844:	4b834b4c 	c2	0x1834b4c
     848:	4b4b4b4c 	c2	0x14b4b4c
     84c:	4b4b4b4b 	c2	0x14b4b4b
     850:	834b4c4b 	lb	t3,19531(k0)
     854:	4b4b4c4b 	c2	0x14b4c4b
     858:	4c4b4b4b 	0x4c4b4b4b
     85c:	4b4b844b 	c2	0x14b844b
     860:	834b4c4b 	lb	t3,19531(k0)
     864:	4b4b4c4b 	c2	0x14b4c4b
     868:	4c4b4b4b 	0x4c4b4b4b
     86c:	4b4b844b 	c2	0x14b844b
     870:	834b4c4b 	lb	t3,19531(k0)
     874:	4b4b4b4c 	c2	0x14b4b4c
     878:	4b4b4d4c 	c2	0x14b4d4c
     87c:	04024b4b 	bltzl	zero,135ac <data_size+0x1359c>
     880:	b8010100 	swr	at,256(zero)
     884:	02000000 	0x2000000
     888:	00002700 	sll	a0,zero,0x1c
     88c:	fb010100 	sdc2	$1,256(t8)
     890:	01000d0e 	0x1000d0e
     894:	00010101 	0x10101
     898:	00010000 	sll	zero,at,0x0
     89c:	6e000100 	0x6e000100
     8a0:	6c5f3037 	0x6c5f3037
     8a4:	64615f77 	0x64615f77
     8a8:	655f6c65 	0x655f6c65
     8ac:	00532e78 	0x532e78
     8b0:	00000000 	nop
     8b4:	70020500 	0x70020500
     8b8:	18bfc021 	0x18bfc021
     8bc:	4c4b4b4b 	0x4c4b4b4b
     8c0:	4b4b4b4b 	c2	0x14b4b4b
     8c4:	1330024d 	beq	t9,s0,11fc <data_size+0x11ec>
     8c8:	4b4b4b83 	c2	0x14b4b83
     8cc:	4b4b4b4b 	c2	0x14b4b4b
     8d0:	28024b4c 	slti	v0,zero,19276
     8d4:	4b4b8313 	c2	0x14b8313
     8d8:	4b4b4b4b 	c2	0x14b4b4b
     8dc:	4b4b4b4b 	c2	0x14b4b4b
     8e0:	4b4b4b4b 	c2	0x14b4b4b
     8e4:	024b4c4b 	0x24b4c4b
     8e8:	4b831328 	c2	0x1831328
     8ec:	4b4b4b4b 	c2	0x14b4b4b
     8f0:	4b4b4b4b 	c2	0x14b4b4b
     8f4:	4c4b4b4b 	0x4c4b4b4b
     8f8:	1328024b 	beq	t9,t0,1228 <data_size+0x1218>
     8fc:	4b4b4b83 	c2	0x14b4b83
     900:	4b4b4b4b 	c2	0x14b4b4b
     904:	024b4c4b 	0x24b4c4b
     908:	4b831328 	c2	0x1831328
     90c:	4b4b4b4b 	c2	0x14b4b4b
     910:	4b4b4b4b 	c2	0x14b4b4b
     914:	4c4b4b4b 	0x4c4b4b4b
     918:	1330024b 	beq	t9,s0,1248 <data_size+0x1238>
     91c:	4b4b4b83 	c2	0x14b4b83
     920:	4b4b4b4b 	c2	0x14b4b4b
     924:	024b4c4b 	0x24b4c4b
     928:	4b831330 	c2	0x1831330
     92c:	4b4b4b4b 	c2	0x14b4b4b
     930:	4b4b4b4b 	c2	0x14b4b4b
     934:	4b4b4d4c 	c2	0x14b4d4c
     938:	04024b4b 	bltzl	zero,13668 <data_size+0x13658>
     93c:	dc010100 	ldc3	$1,256(zero)
     940:	02000000 	0x2000000
     944:	00002700 	sll	a0,zero,0x1c
     948:	fb010100 	sdc2	$1,256(t8)
     94c:	01000d0e 	0x1000d0e
     950:	00010101 	0x10101
     954:	00010000 	sll	zero,at,0x0
     958:	6e000100 	0x6e000100
     95c:	625f3238 	0x625f3238
     960:	5f7a656c 	0x5f7a656c
     964:	655f7364 	0x655f7364
     968:	00532e78 	0x532e78
     96c:	00000000 	nop
     970:	70020500 	0x70020500
     974:	18bfc024 	0x18bfc024
     978:	4b4b4c4b 	c2	0x14b4c4b
     97c:	4b4b4d4b 	c2	0x14b4d4b
     980:	4b4b834b 	c2	0x14b834b
     984:	834b4b4b 	lb	t3,19275(k0)
     988:	4c4b4b4b 	0x4c4b4b4b
     98c:	834b4b4b 	lb	t3,19275(k0)
     990:	4b4b4b4b 	c2	0x14b4b4b
     994:	4b4b834b 	c2	0x14b834b
     998:	4b4b4c4b 	c2	0x14b4c4b
     99c:	8383834b 	lb	v1,-31925(gp)
     9a0:	4b4b4b4b 	c2	0x14b4b4b
     9a4:	4b4b834b 	c2	0x14b834b
     9a8:	4b4b4b4b 	c2	0x14b4b4b
     9ac:	4b83834b 	c2	0x183834b
     9b0:	4b4b4b4b 	c2	0x14b4b4b
     9b4:	4b4b4b83 	c2	0x14b4b83
     9b8:	83834b4b 	lb	v1,19275(gp)
     9bc:	4b4b4b83 	c2	0x14b4b83
     9c0:	4b834b4b 	c2	0x1834b4b
     9c4:	4b4c4b4b 	c2	0x14c4b4b
     9c8:	4b834b4b 	c2	0x1834b4b
     9cc:	4b4b4b4b 	c2	0x14b4b4b
     9d0:	4b4b4b83 	c2	0x14b4b83
     9d4:	4b834b4b 	c2	0x1834b4b
     9d8:	4b4b4b4b 	c2	0x14b4b4b
     9dc:	4b4b834b 	c2	0x14b834b
     9e0:	4b834b4b 	c2	0x1834b4b
     9e4:	4b4b4b4b 	c2	0x14b4b4b
     9e8:	4b4b4b83 	c2	0x14b4b83
     9ec:	4b4b4b4c 	c2	0x14b4b4c
     9f0:	4b4b4b83 	c2	0x14b4b83
     9f4:	4b834b4b 	c2	0x1834b4b
     9f8:	4b4b4b4b 	c2	0x14b4b4b
     9fc:	4b4b4b83 	c2	0x14b4b83
     a00:	4b834b4b 	c2	0x1834b4b
     a04:	4b4d4b4b 	c2	0x14d4b4b
     a08:	84834b4b 	lh	v1,19275(a0)
     a0c:	4b4b4b4b 	c2	0x14b4b4b
     a10:	4b844b83 	c2	0x1844b83
     a14:	4b4b4d4c 	c2	0x14b4d4c
     a18:	04024b4b 	bltzl	zero,13748 <data_size+0x13738>
     a1c:	dc010100 	ldc3	$1,256(zero)
     a20:	02000000 	0x2000000
     a24:	00002700 	sll	a0,zero,0x1c
     a28:	fb010100 	sdc2	$1,256(t8)
     a2c:	01000d0e 	0x1000d0e
     a30:	00010101 	0x10101
     a34:	00010000 	sll	zero,at,0x0
     a38:	6e000100 	0x6e000100
     a3c:	625f3038 	0x625f3038
     a40:	5f7a6567 	0x5f7a6567
     a44:	655f7364 	0x655f7364
     a48:	00532e78 	0x532e78
     a4c:	00000000 	nop
     a50:	70020500 	0x70020500
     a54:	18bfc027 	0x18bfc027
     a58:	4b4b4c4b 	c2	0x14b4c4b
     a5c:	4b4b4d4b 	c2	0x14b4d4b
     a60:	4b4b834b 	c2	0x14b834b
     a64:	834b4b4b 	lb	t3,19275(k0)
     a68:	4c4b4b4b 	0x4c4b4b4b
     a6c:	834b4b4b 	lb	t3,19275(k0)
     a70:	4b4b4b4b 	c2	0x14b4b4b
     a74:	4b4b834b 	c2	0x14b834b
     a78:	4b4b4c4b 	c2	0x14b4c4b
     a7c:	8383834b 	lb	v1,-31925(gp)
     a80:	4b4b4b4b 	c2	0x14b4b4b
     a84:	4b4b834b 	c2	0x14b834b
     a88:	4b4b4b4b 	c2	0x14b4b4b
     a8c:	4b83834b 	c2	0x183834b
     a90:	4b4b4b4b 	c2	0x14b4b4b
     a94:	4b4b4b83 	c2	0x14b4b83
     a98:	83834b4b 	lb	v1,19275(gp)
     a9c:	4b4b4b83 	c2	0x14b4b83
     aa0:	4b834b4b 	c2	0x1834b4b
     aa4:	4b4c4b4b 	c2	0x14c4b4b
     aa8:	4b834b4b 	c2	0x1834b4b
     aac:	4b4b4b4b 	c2	0x14b4b4b
     ab0:	4b4b4b83 	c2	0x14b4b83
     ab4:	4b834b4b 	c2	0x1834b4b
     ab8:	4b4b4b4b 	c2	0x14b4b4b
     abc:	4b4b834b 	c2	0x14b834b
     ac0:	4b834b4b 	c2	0x1834b4b
     ac4:	4b4b4b4b 	c2	0x14b4b4b
     ac8:	4b4b4b83 	c2	0x14b4b83
     acc:	4b4b4b4c 	c2	0x14b4b4c
     ad0:	4b4b4b83 	c2	0x14b4b83
     ad4:	4b834b4b 	c2	0x1834b4b
     ad8:	4b4b4b4b 	c2	0x14b4b4b
     adc:	4b4b4b83 	c2	0x14b4b83
     ae0:	4b834b4b 	c2	0x1834b4b
     ae4:	4b4d4b4b 	c2	0x14d4b4b
     ae8:	84834b4b 	lh	v1,19275(a0)
     aec:	4b4b4b4b 	c2	0x14b4b4b
     af0:	4b844b83 	c2	0x1844b83
     af4:	4b4b4d4c 	c2	0x14b4d4c
     af8:	04024b4b 	bltzl	zero,13828 <data_size+0x13818>
     afc:	da010100 	ldc2	$1,256(s0)
     b00:	02000000 	0x2000000
     b04:	00002500 	sll	a0,zero,0x14
     b08:	fb010100 	sdc2	$1,256(t8)
     b0c:	01000d0e 	0x1000d0e
     b10:	00010101 	0x10101
     b14:	00010000 	sll	zero,at,0x0
     b18:	6e000100 	0x6e000100
     b1c:	6a5f3838 	0x6a5f3838
     b20:	73645f72 	0x73645f72
     b24:	2e78655f 	sltiu	t8,s3,25951
     b28:	00000053 	mtlhx	zero
     b2c:	05000000 	bltz	t0,b30 <data_size+0xb20>
     b30:	c02a7002 	ll	t2,28674(at)
     b34:	4c4b18bf 	0x4c4b18bf
     b38:	4d4b4b4b 	0x4d4b4b4b
     b3c:	834b4b4b 	lb	t3,19275(k0)
     b40:	4b4b4b4b 	c2	0x14b4b4b
     b44:	4b4b834b 	c2	0x14b834b
     b48:	4b4b4c4b 	c2	0x14b4c4b
     b4c:	4b4b834b 	c2	0x14b834b
     b50:	834b4b4b 	lb	t3,19275(k0)
     b54:	4c4b4b4b 	0x4c4b4b4b
     b58:	834b4b4b 	lb	t3,19275(k0)
     b5c:	4b4b8383 	c2	0x14b8383
     b60:	834b4b4b 	lb	t3,19275(k0)
     b64:	4b4b4b4b 	c2	0x14b4b4b
     b68:	834b4b4b 	lb	t3,19275(k0)
     b6c:	4b4b4b83 	c2	0x14b4b83
     b70:	4b834b4b 	c2	0x1834b4b
     b74:	4b4b4b4b 	c2	0x14b4b4b
     b78:	4b838383 	c2	0x1838383
     b7c:	4b4b4b4b 	c2	0x14b4b4b
     b80:	4b4b4b83 	c2	0x14b4b83
     b84:	4b4b4b4c 	c2	0x14b4b4c
     b88:	4b4b4b83 	c2	0x14b4b83
     b8c:	4b834b4b 	c2	0x1834b4b
     b90:	4b4b4b4b 	c2	0x14b4b4b
     b94:	4b4b4b83 	c2	0x14b4b83
     b98:	834b4b4b 	lb	t3,19275(k0)
     b9c:	4b4b4b4b 	c2	0x14b4b4b
     ba0:	4b4b4b83 	c2	0x14b4b83
     ba4:	4b834b4b 	c2	0x1834b4b
     ba8:	4b4c4b4b 	c2	0x14c4b4b
     bac:	4b834b4b 	c2	0x1834b4b
     bb0:	4b4b4b4b 	c2	0x14b4b4b
     bb4:	4b4b4b83 	c2	0x14b4b83
     bb8:	4b834b4b 	c2	0x1834b4b
     bbc:	4b4b4b4b 	c2	0x14b4b4b
     bc0:	4b4b4b83 	c2	0x14b4b83
     bc4:	4b4b4b4d 	c2	0x14b4b4d
     bc8:	4b4b8483 	c2	0x14b8483
     bcc:	4b834b4b 	c2	0x1834b4b
     bd0:	4d4c4b84 	0x4d4c4b84
     bd4:	4b4b4b4b 	c2	0x14b4b4b
     bd8:	01000402 	0x1000402
     bdc:	0001c801 	movt	t9,zero,$fcc0
     be0:	1f000200 	bgtz	t8,13e4 <data_size+0x13d4>
     be4:	01000000 	0x1000000
     be8:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     bec:	01010100 	0x1010100
     bf0:	00000001 	movf	zero,zero,$fcc0
     bf4:	01000001 	movf	zero,t0,$fcc0
     bf8:	5f316e00 	0x5f316e00
     bfc:	2e69756c 	sltiu	t1,s3,30060
     c00:	00000053 	mtlhx	zero
     c04:	05000000 	bltz	t0,c08 <data_size+0xbf8>
     c08:	c02d7002 	ll	t5,28674(at)
     c0c:	4b4b18bf 	c2	0x14b18bf
     c10:	75084b4c 	jalx	4212d30 <data_size+0x4212d20>
     c14:	75087508 	jalx	421d420 <data_size+0x421d410>
     c18:	75087508 	jalx	421d420 <data_size+0x421d410>
     c1c:	75087508 	jalx	421d420 <data_size+0x421d410>
     c20:	75087508 	jalx	421d420 <data_size+0x421d410>
     c24:	75087508 	jalx	421d420 <data_size+0x421d410>
     c28:	75087508 	jalx	421d420 <data_size+0x421d410>
     c2c:	75087508 	jalx	421d420 <data_size+0x421d410>
     c30:	084b7508 	j	12dd420 <data_size+0x12dd410>
     c34:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c38:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c3c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c40:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c44:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c48:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c4c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c50:	4b750875 	c2	0x1750875
     c54:	75087508 	jalx	421d420 <data_size+0x421d410>
     c58:	75087508 	jalx	421d420 <data_size+0x421d410>
     c5c:	75087508 	jalx	421d420 <data_size+0x421d410>
     c60:	75087508 	jalx	421d420 <data_size+0x421d410>
     c64:	75087508 	jalx	421d420 <data_size+0x421d410>
     c68:	75087508 	jalx	421d420 <data_size+0x421d410>
     c6c:	75087508 	jalx	421d420 <data_size+0x421d410>
     c70:	75087508 	jalx	421d420 <data_size+0x421d410>
     c74:	0875084b 	j	1d4212c <data_size+0x1d4211c>
     c78:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c7c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c80:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c84:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c88:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c8c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c90:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     c94:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
     c98:	75087508 	jalx	421d420 <data_size+0x421d410>
     c9c:	75087508 	jalx	421d420 <data_size+0x421d410>
     ca0:	75087508 	jalx	421d420 <data_size+0x421d410>
     ca4:	75087508 	jalx	421d420 <data_size+0x421d410>
     ca8:	75087508 	jalx	421d420 <data_size+0x421d410>
     cac:	75087508 	jalx	421d420 <data_size+0x421d410>
     cb0:	75087508 	jalx	421d420 <data_size+0x421d410>
     cb4:	084b7508 	j	12dd420 <data_size+0x12dd410>
     cb8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cbc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cc0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cc4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cc8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     ccc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cd0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     cd4:	4b750875 	c2	0x1750875
     cd8:	75087508 	jalx	421d420 <data_size+0x421d410>
     cdc:	75087508 	jalx	421d420 <data_size+0x421d410>
     ce0:	75087508 	jalx	421d420 <data_size+0x421d410>
     ce4:	75087508 	jalx	421d420 <data_size+0x421d410>
     ce8:	75087508 	jalx	421d420 <data_size+0x421d410>
     cec:	75087508 	jalx	421d420 <data_size+0x421d410>
     cf0:	75087508 	jalx	421d420 <data_size+0x421d410>
     cf4:	75087508 	jalx	421d420 <data_size+0x421d410>
     cf8:	0875084b 	j	1d4212c <data_size+0x1d4211c>
     cfc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d00:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d04:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d08:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d0c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d10:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d14:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d18:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
     d1c:	75087508 	jalx	421d420 <data_size+0x421d410>
     d20:	75087508 	jalx	421d420 <data_size+0x421d410>
     d24:	75087508 	jalx	421d420 <data_size+0x421d410>
     d28:	75087508 	jalx	421d420 <data_size+0x421d410>
     d2c:	75087508 	jalx	421d420 <data_size+0x421d410>
     d30:	75087508 	jalx	421d420 <data_size+0x421d410>
     d34:	75087508 	jalx	421d420 <data_size+0x421d410>
     d38:	084b7508 	j	12dd420 <data_size+0x12dd410>
     d3c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d40:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d44:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d48:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d4c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d50:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d54:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d58:	4b750875 	c2	0x1750875
     d5c:	75087508 	jalx	421d420 <data_size+0x421d410>
     d60:	75087508 	jalx	421d420 <data_size+0x421d410>
     d64:	75087508 	jalx	421d420 <data_size+0x421d410>
     d68:	75087508 	jalx	421d420 <data_size+0x421d410>
     d6c:	75087508 	jalx	421d420 <data_size+0x421d410>
     d70:	75087508 	jalx	421d420 <data_size+0x421d410>
     d74:	75087508 	jalx	421d420 <data_size+0x421d410>
     d78:	75087508 	jalx	421d420 <data_size+0x421d410>
     d7c:	0875084b 	j	1d4212c <data_size+0x1d4211c>
     d80:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d84:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d88:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d8c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d90:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d94:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d98:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     d9c:	4d4c4b76 	0x4d4c4b76
     da0:	4b4b4b4b 	c2	0x14b4b4b
     da4:	01000402 	0x1000402
     da8:	00008001 	movf	s0,zero,$fcc0
     dac:	27000200 	addiu	zero,t8,512
     db0:	01000000 	0x1000000
     db4:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     db8:	01010100 	0x1010100
     dbc:	00000001 	movf	zero,zero,$fcc0
     dc0:	01000001 	movf	zero,t0,$fcc0
     dc4:	35366e00 	ori	s6,t1,0x6e00
     dc8:	7379735f 	0x7379735f
     dcc:	6c6c6163 	0x6c6c6163
     dd0:	2e78655f 	sltiu	t8,s3,25951
     dd4:	00000053 	mtlhx	zero
     dd8:	05000000 	bltz	t0,ddc <data_size+0xdcc>
     ddc:	c03fd002 	ll	ra,-12286(at)
     de0:	4b4b18bf 	c2	0x14b18bf
     de4:	4b4b4c4b 	c2	0x14b4c4b
     de8:	844d4b4b 	lh	t5,19275(v0)
     dec:	4b4c4b4b 	c2	0x14c4b4b
     df0:	4b4c4b83 	c2	0x14c4b83
     df4:	4b4b4b4b 	c2	0x14b4b4b
     df8:	4c4b4b4b 	0x4c4b4b4b
     dfc:	4c4b834b 	0x4c4b834b
     e00:	4b4b4b4b 	c2	0x14b4b4b
     e04:	844b4c4b 	lh	t3,19531(v0)
     e08:	4c4b4b4b 	0x4c4b4b4b
     e0c:	4c4b834b 	0x4c4b834b
     e10:	4b4b4b4b 	c2	0x14b4b4b
     e14:	844b4c4b 	lh	t3,19531(v0)
     e18:	4c4b4b4b 	0x4c4b4b4b
     e1c:	4b4c834b 	c2	0x14c834b
     e20:	4d4c4b4b 	0x4d4c4b4b
     e24:	4b4b4b4b 	c2	0x14b4b4b
     e28:	01000402 	0x1000402
     e2c:	00008f01 	0x8f01
     e30:	28000200 	slti	zero,zero,512
     e34:	01000000 	0x1000000
     e38:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     e3c:	01010100 	0x1010100
     e40:	00000001 	movf	zero,zero,$fcc0
     e44:	01000001 	movf	zero,t0,$fcc0
     e48:	37376e00 	ori	s7,t9,0x6e00
     e4c:	666f735f 	0x666f735f
     e50:	6e695f74 	0x6e695f74
     e54:	78655f74 	0x78655f74
     e58:	0000532e 	0x532e
     e5c:	00000000 	nop
     e60:	41100205 	0x41100205
     e64:	4b18bfc0 	c2	0x118bfc0
     e68:	4b4c4b4b 	c2	0x14c4b4b
     e6c:	4d4b4b4b 	0x4d4b4b4b
     e70:	13300283 	beq	t9,s0,1880 <data_size+0x1870>
     e74:	834b4c4b 	lb	t3,19531(k0)
     e78:	2c024b4b 	sltiu	v0,zero,19275
     e7c:	4b4b4b13 	c2	0x14b4b13
     e80:	4b4b4b4b 	c2	0x14b4b4b
     e84:	4b834b4c 	c2	0x1834b4c
     e88:	132c024b 	beq	t9,t4,17b8 <data_size+0x17a8>
     e8c:	4b4b4b4b 	c2	0x14b4b4b
     e90:	02834b4c 	syscall	0xa0d2d
     e94:	4b4b132c 	c2	0x14b132c
     e98:	4b834b4c 	c2	0x1834b4c
     e9c:	132c024b 	beq	t9,t4,17cc <data_size+0x17bc>
     ea0:	4b4b4b4b 	c2	0x14b4b4b
     ea4:	02834b4c 	syscall	0xa0d2d
     ea8:	4b4b132c 	c2	0x14b132c
     eac:	4b834b4c 	c2	0x1834b4c
     eb0:	4b132c02 	c2	0x1132c02
     eb4:	4b4d4c4b 	c2	0x14d4c4b
     eb8:	024b4b4b 	0x24b4b4b
     ebc:	01010004 	sllv	zero,at,t0
     ec0:	000000dc 	0xdc
     ec4:	00270002 	ror	zero,a3,0x0
     ec8:	01010000 	0x1010000
     ecc:	000d0efb 	0xd0efb
     ed0:	01010101 	0x1010101
     ed4:	01000000 	0x1000000
     ed8:	00010000 	sll	zero,at,0x0
     edc:	5f33386e 	0x5f33386e
     ee0:	7a746c62 	0x7a746c62
     ee4:	5f73645f 	0x5f73645f
     ee8:	532e7865 	beql	t9,t6,1f080 <data_size+0x1f070>
     eec:	00000000 	nop
     ef0:	02050000 	0x2050000
     ef4:	bfc04370 	cache	0x0,17264(s8)
     ef8:	4b4c4b18 	c2	0x14c4b18
     efc:	4b4d4b4b 	c2	0x14d4b4b
     f00:	4b834b4b 	c2	0x1834b4b
     f04:	4b4b4b4b 	c2	0x14b4b4b
     f08:	4b4b4b83 	c2	0x14b4b83
     f0c:	4b4b4b4c 	c2	0x14b4b4c
     f10:	4b4b4b83 	c2	0x14b4b83
     f14:	4b834b4b 	c2	0x1834b4b
     f18:	4b4c4b4b 	c2	0x14c4b4b
     f1c:	83834b4b 	lb	v1,19275(gp)
     f20:	4b4b4b83 	c2	0x14b4b83
     f24:	4b834b4b 	c2	0x1834b4b
     f28:	4b4b4b4b 	c2	0x14b4b4b
     f2c:	83834b4b 	lb	v1,19275(gp)
     f30:	4b4b4b4b 	c2	0x14b4b4b
     f34:	4b4b834b 	c2	0x14b834b
     f38:	834b4b4b 	lb	t3,19275(k0)
     f3c:	4b4b8383 	c2	0x14b8383
     f40:	834b4b4b 	lb	t3,19275(k0)
     f44:	4c4b4b4b 	0x4c4b4b4b
     f48:	834b4b4b 	lb	t3,19275(k0)
     f4c:	4b4b4b4b 	c2	0x14b4b4b
     f50:	4b4b834b 	c2	0x14b834b
     f54:	834b4b4b 	lb	t3,19275(k0)
     f58:	4b4b4b4b 	c2	0x14b4b4b
     f5c:	4b834b4b 	c2	0x1834b4b
     f60:	834b4b4b 	lb	t3,19275(k0)
     f64:	4b4b4b4b 	c2	0x14b4b4b
     f68:	4b4b834b 	c2	0x14b834b
     f6c:	4b4b4c4b 	c2	0x14b4c4b
     f70:	4b4b834b 	c2	0x14b834b
     f74:	834b4b4b 	lb	t3,19275(k0)
     f78:	4b4b4b4b 	c2	0x14b4b4b
     f7c:	4b4b834b 	c2	0x14b834b
     f80:	834b4b4b 	lb	t3,19275(k0)
     f84:	4d4b4b4b 	0x4d4b4b4b
     f88:	834b4b4b 	lb	t3,19275(k0)
     f8c:	4b4b4b84 	c2	0x14b4b84
     f90:	844b834b 	lh	t3,-31925(v0)
     f94:	4b4d4c4b 	c2	0x14d4c4b
     f98:	024b4b4b 	0x24b4b4b
     f9c:	01010004 	sllv	zero,at,t0
     fa0:	0000009b 	0x9b
     fa4:	00260002 	ror	zero,a2,0x0
     fa8:	01010000 	0x1010000
     fac:	000d0efb 	0xd0efb
     fb0:	01010101 	0x1010101
     fb4:	01000000 	0x1000000
     fb8:	00010000 	sll	zero,at,0x0
     fbc:	5f39366e 	0x5f39366e
     fc0:	5f627573 	0x5f627573
     fc4:	655f766f 	0x655f766f
     fc8:	00532e78 	0x532e78
     fcc:	00000000 	nop
     fd0:	70020500 	0x70020500
     fd4:	18bfc046 	0x18bfc046
     fd8:	4c4b4b4b 	0x4c4b4b4b
     fdc:	4b4b4b4b 	c2	0x14b4b4b
     fe0:	83e5084d 	lb	a1,2125(ra)
     fe4:	4b4b4b4b 	c2	0x14b4b4b
     fe8:	e5084b4c 	swc1	$f8,19276(t0)
     fec:	4b4b4b83 	c2	0x14b4b83
     ff0:	4b4b4b4b 	c2	0x14b4b4b
     ff4:	4b4b4b4b 	c2	0x14b4b4b
     ff8:	084b4c4b 	j	12d312c <data_size+0x12d311c>
     ffc:	4b4b83e5 	c2	0x14b83e5
    1000:	4b4b4b4b 	c2	0x14b4b4b
    1004:	4c4b4b4b 	0x4c4b4b4b
    1008:	83e5084b 	lb	a1,2123(ra)
    100c:	4b4b4b4b 	c2	0x14b4b4b
    1010:	084b4c4b 	j	12d312c <data_size+0x12d311c>
    1014:	4b4b83e5 	c2	0x14b83e5
    1018:	4b4b4b4b 	c2	0x14b4b4b
    101c:	4c4b4b4b 	0x4c4b4b4b
    1020:	83e5084b 	lb	a1,2123(ra)
    1024:	4b4b4b4b 	c2	0x14b4b4b
    1028:	084b4c4b 	j	12d312c <data_size+0x12d311c>
    102c:	4b4b83e5 	c2	0x14b83e5
    1030:	4b4b4b4b 	c2	0x14b4b4b
    1034:	4b4b4d4c 	c2	0x14b4d4c
    1038:	04024b4b 	bltzl	zero,13d68 <data_size+0x13d58>
    103c:	dd010100 	ldc3	$1,256(t0)
    1040:	02000000 	0x2000000
    1044:	00002600 	sll	a0,zero,0x18
    1048:	fb010100 	sdc2	$1,256(t8)
    104c:	01000d0e 	0x1000d0e
    1050:	00010101 	0x10101
    1054:	00010000 	sll	zero,at,0x0
    1058:	6e000100 	0x6e000100
    105c:	6a5f3738 	0x6a5f3738
    1060:	645f6c61 	0x645f6c61
    1064:	78655f73 	0x78655f73
    1068:	0000532e 	0x532e
    106c:	00000000 	nop
    1070:	48c00205 	0x48c00205
    1074:	4b18bfc0 	c2	0x118bfc0
    1078:	4b4b4c4b 	c2	0x14b4c4b
    107c:	4b4b4d4b 	c2	0x14b4d4b
    1080:	4b4b834b 	c2	0x14b834b
    1084:	834b4b4b 	lb	t3,19275(k0)
    1088:	4c4b4b4b 	0x4c4b4b4b
    108c:	834b4b4b 	lb	t3,19275(k0)
    1090:	4b4b4b4b 	c2	0x14b4b4b
    1094:	4b4b834b 	c2	0x14b834b
    1098:	4b4b4c4b 	c2	0x14b4c4b
    109c:	8383834b 	lb	v1,-31925(gp)
    10a0:	4b4b4b4b 	c2	0x14b4b4b
    10a4:	4b4b834b 	c2	0x14b834b
    10a8:	4b4b4b4b 	c2	0x14b4b4b
    10ac:	4b83834b 	c2	0x183834b
    10b0:	4b4b4b4b 	c2	0x14b4b4b
    10b4:	4b4b4b83 	c2	0x14b4b83
    10b8:	83834b4b 	lb	v1,19275(gp)
    10bc:	4b4b4b83 	c2	0x14b4b83
    10c0:	4b834b4b 	c2	0x1834b4b
    10c4:	4b4c4b4b 	c2	0x14c4b4b
    10c8:	4b834b4b 	c2	0x1834b4b
    10cc:	4b4b4b4b 	c2	0x14b4b4b
    10d0:	4b4b4b83 	c2	0x14b4b83
    10d4:	4b834b4b 	c2	0x1834b4b
    10d8:	4b4b4b4b 	c2	0x14b4b4b
    10dc:	4b4b834b 	c2	0x14b834b
    10e0:	4b834b4b 	c2	0x1834b4b
    10e4:	4b4b4b4b 	c2	0x14b4b4b
    10e8:	4b4b4b83 	c2	0x14b4b83
    10ec:	4b4b4b4c 	c2	0x14b4b4c
    10f0:	4b4b4b83 	c2	0x14b4b83
    10f4:	4b834b4b 	c2	0x1834b4b
    10f8:	4b4b4b4b 	c2	0x14b4b4b
    10fc:	4b4b4b83 	c2	0x14b4b83
    1100:	4b834b4b 	c2	0x1834b4b
    1104:	4b4d4b4b 	c2	0x14d4b4b
    1108:	84834b4b 	lh	v1,19275(a0)
    110c:	4b4b4b4b 	c2	0x14b4b4b
    1110:	4b844b83 	c2	0x1844b83
    1114:	4b4b4d4c 	c2	0x14b4d4c
    1118:	024b4b4b 	0x24b4b4b
    111c:	01010004 	sllv	zero,at,t0
    1120:	000000bf 	0xbf
    1124:	00270002 	ror	zero,a3,0x0
    1128:	01010000 	0x1010000
    112c:	000d0efb 	0xd0efb
    1130:	01010101 	0x1010101
    1134:	01000000 	0x1000000
    1138:	00010000 	sll	zero,at,0x0
    113c:	5f34376e 	0x5f34376e
    1140:	615f6873 	0x615f6873
    1144:	5f736564 	0x5f736564
    1148:	532e7865 	beql	t9,t6,1f2e0 <data_size+0x1f2d0>
    114c:	00000000 	nop
    1150:	02050000 	0x2050000
    1154:	bfc04bd0 	cache	0x0,19408(s8)
    1158:	4b4b4b18 	c2	0x14b4b18
    115c:	4b4b4b4c 	c2	0x14b4b4c
    1160:	28024d4b 	slti	v0,zero,19787
    1164:	4b4b8313 	c2	0x14b8313
    1168:	4b4b4b4b 	c2	0x14b4b4b
    116c:	4b4c4b4b 	c2	0x14c4b4b
    1170:	83132802 	lb	s3,10242(t8)
    1174:	4b4b4b4b 	c2	0x14b4b4b
    1178:	4b4b4b4b 	c2	0x14b4b4b
    117c:	4b4b4b4b 	c2	0x14b4b4b
    1180:	4b4b4b4b 	c2	0x14b4b4b
    1184:	28024b4c 	slti	v0,zero,19276
    1188:	4b4b8313 	c2	0x14b8313
    118c:	4b4b4b4b 	c2	0x14b4b4b
    1190:	4b4b4b4b 	c2	0x14b4b4b
    1194:	4c4b4b4b 	0x4c4b4b4b
    1198:	1328024b 	beq	t9,t0,1ac8 <data_size+0x1ab8>
    119c:	4b4b4b83 	c2	0x14b4b83
    11a0:	4b4b4b4b 	c2	0x14b4b4b
    11a4:	4b4c4b4b 	c2	0x14c4b4b
    11a8:	83132802 	lb	s3,10242(t8)
    11ac:	4b4b4b4b 	c2	0x14b4b4b
    11b0:	4b4b4b4b 	c2	0x14b4b4b
    11b4:	4b4b4b4b 	c2	0x14b4b4b
    11b8:	024b4c4b 	0x24b4c4b
    11bc:	4b831328 	c2	0x1831328
    11c0:	4b4b4b4b 	c2	0x14b4b4b
    11c4:	4b4b4b4b 	c2	0x14b4b4b
    11c8:	28024b4c 	slti	v0,zero,19276
    11cc:	4b4b8313 	c2	0x14b8313
    11d0:	4b4b4b4b 	c2	0x14b4b4b
    11d4:	4b4b4b4b 	c2	0x14b4b4b
    11d8:	4b4b4d4c 	c2	0x14b4d4c
    11dc:	04024b4b 	bltzl	zero,13f0c <data_size+0x13efc>
    11e0:	e0010100 	sc	at,256(zero)
    11e4:	02000000 	0x2000000
    11e8:	00002900 	sll	a1,zero,0x4
    11ec:	fb010100 	sdc2	$1,256(t8)
    11f0:	01000d0e 	0x1000d0e
    11f4:	00010101 	0x10101
    11f8:	00010000 	sll	zero,at,0x0
    11fc:	6e000100 	0x6e000100
    1200:	625f3538 	0x625f3538
    1204:	617a6567 	0x617a6567
    1208:	73645f6c 	0x73645f6c
    120c:	2e78655f 	sltiu	t8,s3,25951
    1210:	00000053 	mtlhx	zero
    1214:	05000000 	bltz	t0,1218 <data_size+0x1208>
    1218:	c04ed002 	ll	t6,-12286(v0)
    121c:	4b4b18bf 	c2	0x14b18bf
    1220:	4b4b4b4c 	c2	0x14b4b4c
    1224:	4b4b4b4d 	c2	0x14b4b4d
    1228:	4b4b4b83 	c2	0x14b4b83
    122c:	4b834b4b 	c2	0x1834b4b
    1230:	4b4c4b4b 	c2	0x14c4b4b
    1234:	4b834b4b 	c2	0x1834b4b
    1238:	4b4b4b4b 	c2	0x14b4b4b
    123c:	4b4b4b83 	c2	0x14b4b83
    1240:	4b4b4b4c 	c2	0x14b4b4c
    1244:	4b838383 	c2	0x1838383
    1248:	4b4b4b4b 	c2	0x14b4b4b
    124c:	4b4b4b83 	c2	0x14b4b83
    1250:	4b4b4b4b 	c2	0x14b4b4b
    1254:	4b4b8383 	c2	0x14b8383
    1258:	834b4b4b 	lb	t3,19275(k0)
    125c:	4b4b4b4b 	c2	0x14b4b4b
    1260:	8383834b 	lb	v1,-31925(gp)
    1264:	4b4b4b4b 	c2	0x14b4b4b
    1268:	4b4b834b 	c2	0x14b834b
    126c:	4b4b4c4b 	c2	0x14b4c4b
    1270:	4b4b834b 	c2	0x14b834b
    1274:	834b4b4b 	lb	t3,19275(k0)
    1278:	4b4b4b4b 	c2	0x14b4b4b
    127c:	4b4b834b 	c2	0x14b834b
    1280:	4b4b4b4b 	c2	0x14b4b4b
    1284:	4b4b4b83 	c2	0x14b4b83
    1288:	4b4b834b 	c2	0x14b834b
    128c:	834b4b4b 	lb	t3,19275(k0)
    1290:	4c4b4b4b 	0x4c4b4b4b
    1294:	834b4b4b 	lb	t3,19275(k0)
    1298:	4b4b4b4b 	c2	0x14b4b4b
    129c:	4b4b834b 	c2	0x14b834b
    12a0:	834b4b4b 	lb	t3,19275(k0)
    12a4:	4b4b4b4b 	c2	0x14b4b4b
    12a8:	4b4b834b 	c2	0x14b834b
    12ac:	4b4b4d4b 	c2	0x14b4d4b
    12b0:	4b84834b 	c2	0x184834b
    12b4:	834b4b4b 	lb	t3,19275(k0)
    12b8:	4c4b844b 	0x4c4b844b
    12bc:	4b4b4b4d 	c2	0x14b4b4d
    12c0:	04024b4b 	bltzl	zero,13ff0 <data_size+0x13fe0>
    12c4:	e0010100 	sc	at,256(zero)
    12c8:	02000000 	0x2000000
    12cc:	00002900 	sll	a1,zero,0x4
    12d0:	fb010100 	sdc2	$1,256(t8)
    12d4:	01000d0e 	0x1000d0e
    12d8:	00010101 	0x10101
    12dc:	00010000 	sll	zero,at,0x0
    12e0:	6e000100 	0x6e000100
    12e4:	625f3438 	0x625f3438
    12e8:	617a746c 	0x617a746c
    12ec:	73645f6c 	0x73645f6c
    12f0:	2e78655f 	sltiu	t8,s3,25951
    12f4:	00000053 	mtlhx	zero
    12f8:	05000000 	bltz	t0,12fc <data_size+0x12ec>
    12fc:	c051e002 	ll	s1,-8190(v0)
    1300:	4b4b18bf 	c2	0x14b18bf
    1304:	4b4b4b4c 	c2	0x14b4b4c
    1308:	4b4b4b4d 	c2	0x14b4b4d
    130c:	4b4b4b83 	c2	0x14b4b83
    1310:	4b834b4b 	c2	0x1834b4b
    1314:	4b4c4b4b 	c2	0x14c4b4b
    1318:	4b834b4b 	c2	0x1834b4b
    131c:	4b4b4b4b 	c2	0x14b4b4b
    1320:	4b4b4b83 	c2	0x14b4b83
    1324:	4b4b4b4c 	c2	0x14b4b4c
    1328:	4b838383 	c2	0x1838383
    132c:	4b4b4b4b 	c2	0x14b4b4b
    1330:	4b4b4b83 	c2	0x14b4b83
    1334:	4b4b4b4b 	c2	0x14b4b4b
    1338:	4b4b8383 	c2	0x14b8383
    133c:	834b4b4b 	lb	t3,19275(k0)
    1340:	4b4b4b4b 	c2	0x14b4b4b
    1344:	8383834b 	lb	v1,-31925(gp)
    1348:	4b4b4b4b 	c2	0x14b4b4b
    134c:	4b4b834b 	c2	0x14b834b
    1350:	4b4b4c4b 	c2	0x14b4c4b
    1354:	4b4b834b 	c2	0x14b834b
    1358:	834b4b4b 	lb	t3,19275(k0)
    135c:	4b4b4b4b 	c2	0x14b4b4b
    1360:	4b4b834b 	c2	0x14b834b
    1364:	4b4b4b4b 	c2	0x14b4b4b
    1368:	4b4b4b83 	c2	0x14b4b83
    136c:	4b4b834b 	c2	0x14b834b
    1370:	834b4b4b 	lb	t3,19275(k0)
    1374:	4c4b4b4b 	0x4c4b4b4b
    1378:	834b4b4b 	lb	t3,19275(k0)
    137c:	4b4b4b4b 	c2	0x14b4b4b
    1380:	4b4b834b 	c2	0x14b834b
    1384:	834b4b4b 	lb	t3,19275(k0)
    1388:	4b4b4b4b 	c2	0x14b4b4b
    138c:	4b4b834b 	c2	0x14b834b
    1390:	4b4b4d4b 	c2	0x14b4d4b
    1394:	4b84834b 	c2	0x184834b
    1398:	834b4b4b 	lb	t3,19275(k0)
    139c:	4c4b844b 	0x4c4b844b
    13a0:	4b4b4b4d 	c2	0x14b4b4d
    13a4:	04024b4b 	bltzl	zero,140d4 <data_size+0x140c4>
    13a8:	78010100 	0x78010100
    13ac:	02000000 	0x2000000
    13b0:	00002200 	sll	a0,zero,0x8
    13b4:	fb010100 	sdc2	$1,256(t8)
    13b8:	01000d0e 	0x1000d0e
    13bc:	00010101 	0x10101
    13c0:	00010000 	sll	zero,at,0x0
    13c4:	6e000100 	0x6e000100
    13c8:	725f3637 	0x725f3637
    13cc:	78655f69 	0x78655f69
    13d0:	0000532e 	0x532e
    13d4:	00000000 	nop
    13d8:	54f00205 	bnel	a3,s0,1bf0 <data_size+0x1be0>
    13dc:	4b18bfc0 	c2	0x118bfc0
    13e0:	4b4c4b4b 	c2	0x14c4b4b
    13e4:	4d4b4b4b 	0x4d4b4b4b
    13e8:	4b4c4bbc 	c2	0x14c4bbc
    13ec:	4b844b83 	c2	0x1844b83
    13f0:	4b4b4b4b 	c2	0x14b4b4b
    13f4:	4b4c4b4b 	c2	0x14c4b4b
    13f8:	4b844b83 	c2	0x1844b83
    13fc:	4c4b4b4b 	0x4c4b4b4b
    1400:	4b4bbc4b 	c2	0x14bbc4b
    1404:	4b834b4c 	c2	0x1834b4c
    1408:	4b4b4b84 	c2	0x14b4b84
    140c:	bc4b4c4b 	cache	0xb,19531(v0)
    1410:	4b4b4b4b 	c2	0x14b4b4b
    1414:	84834b4c 	lh	v1,19276(a0)
    1418:	4b4b4b4b 	c2	0x14b4b4b
    141c:	4b4b4d4c 	c2	0x14b4d4c
    1420:	04024b4b 	bltzl	zero,14150 <data_size+0x14140>
    1424:	a6010100 	sh	at,256(s0)
    1428:	02000000 	0x2000000
    142c:	00002700 	sll	a0,zero,0x1c
    1430:	fb010100 	sdc2	$1,256(t8)
    1434:	01000d0e 	0x1000d0e
    1438:	00010101 	0x10101
    143c:	00010000 	sll	zero,at,0x0
    1440:	6e000100 	0x6e000100
    1444:	665f3537 	0x665f3537
    1448:	64615f74 	0x64615f74
    144c:	655f6c65 	0x655f6c65
    1450:	00532e78 	0x532e78
    1454:	00000000 	nop
    1458:	40020500 	0x40020500
    145c:	18bfc056 	0x18bfc056
    1460:	4c4b4b4b 	0x4c4b4b4b
    1464:	4b4b4b4b 	c2	0x14b4b4b
    1468:	4b83f34d 	c2	0x183f34d
    146c:	4b4b4b4b 	c2	0x14b4b4b
    1470:	f34b4c4b 	0xf34b4c4b
    1474:	4c4b834b 	0x4c4b834b
    1478:	4b4b4b4c 	c2	0x14b4b4c
    147c:	4b4b4b4b 	c2	0x14b4b4b
    1480:	4c4b4b4b 	0x4c4b4b4b
    1484:	834bf34b 	lb	t3,-3253(k0)
    1488:	4b4c4c4b 	c2	0x14c4c4b
    148c:	4b4b4b4b 	c2	0x14b4b4b
    1490:	4b4c4b4b 	c2	0x14c4b4b
    1494:	4b4b83f3 	c2	0x14b83f3
    1498:	4b4b4b4b 	c2	0x14b4b4b
    149c:	f34b4c4b 	0xf34b4c4b
    14a0:	4c4b834b 	0x4c4b834b
    14a4:	4b4b4b4c 	c2	0x14b4b4c
    14a8:	4b4b4b4b 	c2	0x14b4b4b
    14ac:	83f34b4c 	lb	s3,19276(ra)
    14b0:	4b4b4b4b 	c2	0x14b4b4b
    14b4:	4b4b4b4b 	c2	0x14b4b4b
    14b8:	f34b4c4b 	0xf34b4c4b
    14bc:	4b4c844b 	c2	0x14c844b
    14c0:	4b4b4b4b 	c2	0x14b4b4b
    14c4:	4d4c4b4b 	0x4d4c4b4b
    14c8:	4b4b4b4b 	c2	0x14b4b4b
    14cc:	01000402 	0x1000402
    14d0:	0000db01 	0xdb01
    14d4:	26000200 	addiu	zero,s0,512
    14d8:	01000000 	0x1000000
    14dc:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
    14e0:	01010100 	0x1010100
    14e4:	00000001 	movf	zero,zero,$fcc0
    14e8:	01000001 	movf	zero,t0,$fcc0
    14ec:	39376e00 	xori	s7,t1,0x6e00
    14f0:	656e625f 	0x656e625f
    14f4:	5f73645f 	0x5f73645f
    14f8:	532e7865 	beql	t9,t6,1f690 <data_size+0x1f680>
    14fc:	00000000 	nop
    1500:	02050000 	0x2050000
    1504:	bfc05870 	cache	0x0,22640(s8)
    1508:	4b4c4b18 	c2	0x14c4b18
    150c:	4b4d4b4b 	c2	0x14d4b4b
    1510:	4b834b4b 	c2	0x1834b4b
    1514:	4b4b4b4b 	c2	0x14b4b4b
    1518:	4b4b4b83 	c2	0x14b4b83
    151c:	4b4b4b4c 	c2	0x14b4b4c
    1520:	4b4b4b83 	c2	0x14b4b83
    1524:	4b834b4b 	c2	0x1834b4b
    1528:	4b4c4b4b 	c2	0x14c4b4b
    152c:	83834b4b 	lb	v1,19275(gp)
    1530:	4b4b4b83 	c2	0x14b4b83
    1534:	4b834b4b 	c2	0x1834b4b
    1538:	4b4b4b4b 	c2	0x14b4b4b
    153c:	4b4b8383 	c2	0x14b8383
    1540:	834b4b4b 	lb	t3,19275(k0)
    1544:	4b4b4b4b 	c2	0x14b4b4b
    1548:	8383834b 	lb	v1,-31925(gp)
    154c:	4b4b4b4b 	c2	0x14b4b4b
    1550:	4b4b834b 	c2	0x14b834b
    1554:	4b4b4c4b 	c2	0x14b4c4b
    1558:	4b4b834b 	c2	0x14b834b
    155c:	4b4b4b4b 	c2	0x14b4b4b
    1560:	4b4b834b 	c2	0x14b834b
    1564:	834b4b4b 	lb	t3,19275(k0)
    1568:	4b4b4b4b 	c2	0x14b4b4b
    156c:	4b4b834b 	c2	0x14b834b
    1570:	4b834b4b 	c2	0x1834b4b
    1574:	4b4b4b4b 	c2	0x14b4b4b
    1578:	4b4b4b83 	c2	0x14b4b83
    157c:	4b4b4b4c 	c2	0x14b4b4c
    1580:	4b4b4b83 	c2	0x14b4b83
    1584:	834b4b4b 	lb	t3,19275(k0)
    1588:	4b4b4b4b 	c2	0x14b4b4b
    158c:	4b4b834b 	c2	0x14b834b
    1590:	834b4b4b 	lb	t3,19275(k0)
    1594:	4d4b4b4b 	0x4d4b4b4b
    1598:	834b4b4b 	lb	t3,19275(k0)
    159c:	4b4b4b84 	c2	0x14b4b84
    15a0:	844b834b 	lh	t3,-31925(v0)
    15a4:	4b4d4c4b 	c2	0x14d4c4b
    15a8:	024b4b4b 	0x24b4b4b
    15ac:	01010004 	sllv	zero,at,t0
    15b0:	000000b8 	0xb8
    15b4:	00270002 	ror	zero,a3,0x0
    15b8:	01010000 	0x1010000
    15bc:	000d0efb 	0xd0efb
    15c0:	01010101 	0x1010101
    15c4:	01000000 	0x1000000
    15c8:	00010000 	sll	zero,at,0x0
    15cc:	5f31376e 	0x5f31376e
    15d0:	615f686c 	0x615f686c
    15d4:	5f6c6564 	0x5f6c6564
    15d8:	532e7865 	beql	t9,t6,1f770 <data_size+0x1f760>
    15dc:	00000000 	nop
    15e0:	02050000 	0x2050000
    15e4:	bfc05b70 	cache	0x0,23408(s8)
    15e8:	4b4b4b18 	c2	0x14b4b18
    15ec:	4b4b4b4c 	c2	0x14b4b4c
    15f0:	30024d4b 	andi	v0,zero,0x4d4b
    15f4:	4b4b8313 	c2	0x14b8313
    15f8:	4b4b4b4b 	c2	0x14b4b4b
    15fc:	024b4c4b 	0x24b4c4b
    1600:	4b831328 	c2	0x1831328
    1604:	4b4b4b4b 	c2	0x14b4b4b
    1608:	4b4b4b4b 	c2	0x14b4b4b
    160c:	4b4b4b4b 	c2	0x14b4b4b
    1610:	4b4c4b4b 	c2	0x14c4b4b
    1614:	83133002 	lb	s3,12290(t8)
    1618:	4b4b4b4b 	c2	0x14b4b4b
    161c:	4b4b4b4b 	c2	0x14b4b4b
    1620:	4b4b4b4b 	c2	0x14b4b4b
    1624:	30024b4c 	andi	v0,zero,0x4b4c
    1628:	4b4b8313 	c2	0x14b8313
    162c:	4b4b4b4b 	c2	0x14b4b4b
    1630:	4b4c4b4b 	c2	0x14c4b4b
    1634:	83133002 	lb	s3,12290(t8)
    1638:	4b4b4b4b 	c2	0x14b4b4b
    163c:	4b4b4b4b 	c2	0x14b4b4b
    1640:	4b4b4b4b 	c2	0x14b4b4b
    1644:	28024b4c 	slti	v0,zero,19276
    1648:	4b4b8313 	c2	0x14b8313
    164c:	4b4b4b4b 	c2	0x14b4b4b
    1650:	4b4c4b4b 	c2	0x14c4b4b
    1654:	83132802 	lb	s3,10242(t8)
    1658:	4b4b4b4b 	c2	0x14b4b4b
    165c:	4b4b4b4b 	c2	0x14b4b4b
    1660:	4b4d4c4b 	c2	0x14d4c4b
    1664:	024b4b4b 	0x24b4b4b
    1668:	01010004 	sllv	zero,at,t0

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000003c 	0x3c
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000000 	nop
  10:	bfc00000 	cache	0x0,0(s8)
  14:	bfc0099c 	cache	0x0,2460(s8)
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
  40:	0000004b 	0x4b
  44:	00140002 	srl	zero,s4,0x0
  48:	01040000 	0x1040000
  4c:	000001c6 	0x1c6
  50:	bfc009a0 	cache	0x0,2464(s8)
  54:	bfc00c94 	cache	0x0,3220(s8)
  58:	5f32376e 	0x5f32376e
  5c:	5f75686c 	0x5f75686c
  60:	6c656461 	0x6c656461
  64:	2e78655f 	sltiu	t8,s3,25951
  68:	682f0053 	0x682f0053
  6c:	2f656d6f 	sltiu	a1,k1,28015
  70:	2f797363 	sltiu	t9,k1,29539
  74:	636e7566 	0x636e7566
  78:	736e692f 	0x736e692f
  7c:	4e470074 	c3	0x470074
  80:	53412055 	beql	k0,at,81d8 <data_size+0x81c8>
  84:	312e3220 	andi	t6,t1,0x3220
  88:	30352e38 	andi	s5,at,0x2e38
  8c:	4a800100 	c2	0x800100
  90:	02000000 	0x2000000
  94:	00002800 	sll	a1,zero,0x0
  98:	83010400 	lb	at,1024(t8)
  9c:	a0000002 	sb	zero,2(zero)
  a0:	98bfc00c 	lwr	ra,-16372(a1)
  a4:	6ebfc00f 	0x6ebfc00f
  a8:	735f3337 	0x735f3337
  ac:	64615f77 	0x64615f77
  b0:	655f7365 	0x655f7365
  b4:	00532e78 	0x532e78
  b8:	6d6f682f 	0x6d6f682f
  bc:	73632f65 	0x73632f65
  c0:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
  c4:	692f636e 	0x692f636e
  c8:	0074736e 	0x74736e
  cc:	20554e47 	addi	s5,v0,20039
  d0:	32205341 	andi	zero,s1,0x5341
  d4:	2e38312e 	sltiu	t8,s1,12590
  d8:	01003035 	0x1003035
  dc:	00004980 	sll	t1,zero,0x6
  e0:	3c000200 	lui	zero,0x200
  e4:	04000000 	bltz	zero,e8 <data_size+0xd8>
  e8:	00034601 	0x34601
  ec:	c00fa000 	ll	t7,-24576(zero)
  f0:	c011f0bf 	ll	s1,-3905(zero)
  f4:	37366ebf 	ori	s6,t9,0x6ebf
  f8:	6464615f 	0x6464615f
  fc:	5f766f5f 	0x5f766f5f
 100:	532e7865 	beql	t9,t6,1e298 <data_size+0x1e288>
 104:	6f682f00 	0x6f682f00
 108:	632f656d 	0x632f656d
 10c:	662f7973 	0x662f7973
 110:	2f636e75 	sltiu	v1,k1,28277
 114:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 118:	554e4700 	bnel	t2,t6,11d1c <data_size+0x11d0c>
 11c:	20534120 	addi	s3,v0,16672
 120:	38312e32 	xori	s1,at,0x2e32
 124:	0030352e 	0x30352e
 128:	004a8001 	0x4a8001
 12c:	00020000 	sll	zero,v0,0x0
 130:	00000050 	0x50
 134:	03e50104 	0x3e50104
 138:	11f00000 	beq	t7,s0,13c <data_size+0x12c>
 13c:	141cbfc0 	bne	zero,gp,ffff0040 <_etext+0x403ea1b8>
 140:	366ebfc0 	ori	t6,s3,0xbfc0
 144:	64615f38 	0x64615f38
 148:	6f5f6964 	0x6f5f6964
 14c:	78655f76 	0x78655f76
 150:	2f00532e 	sltiu	zero,t8,21294
 154:	656d6f68 	0x656d6f68
 158:	7973632f 	0x7973632f
 15c:	6e75662f 	0x6e75662f
 160:	6e692f63 	0x6e692f63
 164:	47007473 	c1	0x1007473
 168:	4120554e 	0x4120554e
 16c:	2e322053 	sltiu	s2,s1,8275
 170:	352e3831 	ori	t6,t1,0x3831
 174:	80010030 	lb	at,48(zero)
 178:	0000004a 	0x4a
 17c:	00640002 	0x640002
 180:	01040000 	0x1040000
 184:	00000483 	sra	zero,zero,0x12
 188:	bfc01420 	cache	0x0,5152(s8)
 18c:	bfc01720 	cache	0x0,5920(s8)
 190:	5f31386e 	0x5f31386e
 194:	7a746762 	0x7a746762
 198:	5f73645f 	0x5f73645f
 19c:	532e7865 	beql	t9,t6,1e334 <data_size+0x1e324>
 1a0:	6f682f00 	0x6f682f00
 1a4:	632f656d 	0x632f656d
 1a8:	662f7973 	0x662f7973
 1ac:	2f636e75 	sltiu	v1,k1,28277
 1b0:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 1b4:	554e4700 	bnel	t2,t6,11db8 <data_size+0x11da8>
 1b8:	20534120 	addi	s3,v0,16672
 1bc:	38312e32 	xori	s1,at,0x2e32
 1c0:	0030352e 	0x30352e
 1c4:	004a8001 	0x4a8001
 1c8:	00020000 	sll	zero,v0,0x0
 1cc:	00000078 	0x78
 1d0:	05630104 	bgezl	t3,5e4 <data_size+0x5d4>
 1d4:	17200000 	bnez	t9,1d8 <data_size+0x1c8>
 1d8:	1a28bfc0 	0x1a28bfc0
 1dc:	386ebfc0 	xori	t6,v1,0xbfc0
 1e0:	616a5f39 	0x616a5f39
 1e4:	645f726c 	0x645f726c
 1e8:	78655f73 	0x78655f73
 1ec:	2f00532e 	sltiu	zero,t8,21294
 1f0:	656d6f68 	0x656d6f68
 1f4:	7973632f 	0x7973632f
 1f8:	6e75662f 	0x6e75662f
 1fc:	6e692f63 	0x6e692f63
 200:	47007473 	c1	0x1007473
 204:	4120554e 	0x4120554e
 208:	2e322053 	sltiu	s2,s1,8275
 20c:	352e3831 	ori	t6,t1,0x3831
 210:	80010030 	lb	at,48(zero)
 214:	00000049 	0x49
 218:	008c0002 	0x8c0002
 21c:	01040000 	0x1040000
 220:	00000645 	0x645
 224:	bfc01a30 	cache	0x0,6704(s8)
 228:	bfc01d30 	cache	0x0,7472(s8)
 22c:	5f38376e 	0x5f38376e
 230:	5f716562 	0x5f716562
 234:	655f7364 	0x655f7364
 238:	00532e78 	0x532e78
 23c:	6d6f682f 	0x6d6f682f
 240:	73632f65 	0x73632f65
 244:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 248:	692f636e 	0x692f636e
 24c:	0074736e 	0x74736e
 250:	20554e47 	addi	s5,v0,20039
 254:	32205341 	andi	zero,s1,0x5341
 258:	2e38312e 	sltiu	t8,s1,12590
 25c:	01003035 	0x1003035
 260:	00004780 	sll	t0,zero,0x1e
 264:	a0000200 	sb	zero,512(zero)
 268:	04000000 	bltz	zero,26c <data_size+0x25c>
 26c:	00072401 	0x72401
 270:	c01d3000 	ll	sp,12288(zero)
 274:	c02030bf 	ll	zero,12479(at)
 278:	36386ebf 	ori	t8,s1,0x6ebf
 27c:	645f6a5f 	0x645f6a5f
 280:	78655f73 	0x78655f73
 284:	2f00532e 	sltiu	zero,t8,21294
 288:	656d6f68 	0x656d6f68
 28c:	7973632f 	0x7973632f
 290:	6e75662f 	0x6e75662f
 294:	6e692f63 	0x6e692f63
 298:	47007473 	c1	0x1007473
 29c:	4120554e 	0x4120554e
 2a0:	2e322053 	sltiu	s2,s1,8275
 2a4:	352e3831 	ori	t6,t1,0x3831
 2a8:	80010030 	lb	at,48(zero)
 2ac:	00000048 	0x48
 2b0:	00b40002 	0xb40002
 2b4:	01040000 	0x1040000
 2b8:	00000801 	movf	at,zero,$fcc0
 2bc:	bfc02030 	cache	0x0,8240(s8)
 2c0:	bfc02168 	cache	0x0,8552(s8)
 2c4:	5f36366e 	0x5f36366e
 2c8:	61657262 	0x61657262
 2cc:	78655f6b 	0x78655f6b
 2d0:	2f00532e 	sltiu	zero,t8,21294
 2d4:	656d6f68 	0x656d6f68
 2d8:	7973632f 	0x7973632f
 2dc:	6e75662f 	0x6e75662f
 2e0:	6e692f63 	0x6e692f63
 2e4:	47007473 	c1	0x1007473
 2e8:	4120554e 	0x4120554e
 2ec:	2e322053 	sltiu	s2,s1,8275
 2f0:	352e3831 	ori	t6,t1,0x3831
 2f4:	80010030 	lb	at,48(zero)
 2f8:	0000004a 	0x4a
 2fc:	00c80002 	0xc80002
 300:	01040000 	0x1040000
 304:	00000883 	sra	at,zero,0x2
 308:	bfc02170 	cache	0x0,8560(s8)
 30c:	bfc02464 	cache	0x0,9316(s8)
 310:	5f30376e 	0x5f30376e
 314:	615f776c 	0x615f776c
 318:	5f6c6564 	0x5f6c6564
 31c:	532e7865 	beql	t9,t6,1e4b4 <data_size+0x1e4a4>
 320:	6f682f00 	0x6f682f00
 324:	632f656d 	0x632f656d
 328:	662f7973 	0x662f7973
 32c:	2f636e75 	sltiu	v1,k1,28277
 330:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 334:	554e4700 	bnel	t2,t6,11f38 <data_size+0x11f28>
 338:	20534120 	addi	s3,v0,16672
 33c:	38312e32 	xori	s1,at,0x2e32
 340:	0030352e 	0x30352e
 344:	004a8001 	0x4a8001
 348:	00020000 	sll	zero,v0,0x0
 34c:	000000dc 	0xdc
 350:	093f0104 	j	4fc0410 <data_size+0x4fc0400>
 354:	24700000 	addiu	s0,v1,0
 358:	2770bfc0 	addiu	s0,k1,-16448
 35c:	386ebfc0 	xori	t6,v1,0xbfc0
 360:	6c625f32 	0x6c625f32
 364:	645f7a65 	0x645f7a65
 368:	78655f73 	0x78655f73
 36c:	2f00532e 	sltiu	zero,t8,21294
 370:	656d6f68 	0x656d6f68
 374:	7973632f 	0x7973632f
 378:	6e75662f 	0x6e75662f
 37c:	6e692f63 	0x6e692f63
 380:	47007473 	c1	0x1007473
 384:	4120554e 	0x4120554e
 388:	2e322053 	sltiu	s2,s1,8275
 38c:	352e3831 	ori	t6,t1,0x3831
 390:	80010030 	lb	at,48(zero)
 394:	0000004a 	0x4a
 398:	00f00002 	0xf00002
 39c:	01040000 	0x1040000
 3a0:	00000a1f 	0xa1f
 3a4:	bfc02770 	cache	0x0,10096(s8)
 3a8:	bfc02a70 	cache	0x0,10864(s8)
 3ac:	5f30386e 	0x5f30386e
 3b0:	7a656762 	0x7a656762
 3b4:	5f73645f 	0x5f73645f
 3b8:	532e7865 	beql	t9,t6,1e550 <data_size+0x1e540>
 3bc:	6f682f00 	0x6f682f00
 3c0:	632f656d 	0x632f656d
 3c4:	662f7973 	0x662f7973
 3c8:	2f636e75 	sltiu	v1,k1,28277
 3cc:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 3d0:	554e4700 	bnel	t2,t6,11fd4 <data_size+0x11fc4>
 3d4:	20534120 	addi	s3,v0,16672
 3d8:	38312e32 	xori	s1,at,0x2e32
 3dc:	0030352e 	0x30352e
 3e0:	00488001 	movf	s0,v0,$fcc2
 3e4:	00020000 	sll	zero,v0,0x0
 3e8:	00000104 	0x104
 3ec:	0aff0104 	j	bfc0410 <data_size+0xbfc0400>
 3f0:	2a700000 	slti	s0,s3,0
 3f4:	2d70bfc0 	sltiu	s0,t3,-16448
 3f8:	386ebfc0 	xori	t6,v1,0xbfc0
 3fc:	726a5f38 	0x726a5f38
 400:	5f73645f 	0x5f73645f
 404:	532e7865 	beql	t9,t6,1e59c <data_size+0x1e58c>
 408:	6f682f00 	0x6f682f00
 40c:	632f656d 	0x632f656d
 410:	662f7973 	0x662f7973
 414:	2f636e75 	sltiu	v1,k1,28277
 418:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 41c:	554e4700 	bnel	t2,t6,12020 <data_size+0x12010>
 420:	20534120 	addi	s3,v0,16672
 424:	38312e32 	xori	s1,at,0x2e32
 428:	0030352e 	0x30352e
 42c:	00428001 	0x428001
 430:	00020000 	sll	zero,v0,0x0
 434:	00000118 	0x118
 438:	0bdd0104 	j	f740410 <data_size+0xf740400>
 43c:	2d700000 	sltiu	s0,t3,0
 440:	3fccbfc0 	0x3fccbfc0
 444:	316ebfc0 	andi	t6,t3,0xbfc0
 448:	69756c5f 	0x69756c5f
 44c:	2f00532e 	sltiu	zero,t8,21294
 450:	656d6f68 	0x656d6f68
 454:	7973632f 	0x7973632f
 458:	6e75662f 	0x6e75662f
 45c:	6e692f63 	0x6e692f63
 460:	47007473 	c1	0x1007473
 464:	4120554e 	0x4120554e
 468:	2e322053 	sltiu	s2,s1,8275
 46c:	352e3831 	ori	t6,t1,0x3831
 470:	80010030 	lb	at,48(zero)
 474:	0000004a 	0x4a
 478:	012c0002 	0x12c0002
 47c:	01040000 	0x1040000
 480:	00000da9 	0xda9
 484:	bfc03fd0 	cache	0x0,16336(s8)
 488:	bfc04108 	cache	0x0,16648(s8)
 48c:	5f35366e 	0x5f35366e
 490:	63737973 	0x63737973
 494:	5f6c6c61 	0x5f6c6c61
 498:	532e7865 	beql	t9,t6,1e630 <data_size+0x1e620>
 49c:	6f682f00 	0x6f682f00
 4a0:	632f656d 	0x632f656d
 4a4:	662f7973 	0x662f7973
 4a8:	2f636e75 	sltiu	v1,k1,28277
 4ac:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 4b0:	554e4700 	bnel	t2,t6,120b4 <data_size+0x120a4>
 4b4:	20534120 	addi	s3,v0,16672
 4b8:	38312e32 	xori	s1,at,0x2e32
 4bc:	0030352e 	0x30352e
 4c0:	004b8001 	0x4b8001
 4c4:	00020000 	sll	zero,v0,0x0
 4c8:	00000140 	sll	zero,zero,0x5
 4cc:	0e2d0104 	jal	8b40410 <data_size+0x8b40400>
 4d0:	41100000 	0x41100000
 4d4:	4364bfc0 	c0	0x164bfc0
 4d8:	376ebfc0 	ori	t6,k1,0xbfc0
 4dc:	6f735f37 	0x6f735f37
 4e0:	695f7466 	0x695f7466
 4e4:	655f746e 	0x655f746e
 4e8:	00532e78 	0x532e78
 4ec:	6d6f682f 	0x6d6f682f
 4f0:	73632f65 	0x73632f65
 4f4:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 4f8:	692f636e 	0x692f636e
 4fc:	0074736e 	0x74736e
 500:	20554e47 	addi	s5,v0,20039
 504:	32205341 	andi	zero,s1,0x5341
 508:	2e38312e 	sltiu	t8,s1,12590
 50c:	01003035 	0x1003035
 510:	00004a80 	sll	t1,zero,0xa
 514:	54000200 	bnezl	zero,d18 <data_size+0xd08>
 518:	04000001 	bltz	zero,520 <data_size+0x510>
 51c:	000ec001 	0xec001
 520:	c0437000 	ll	v1,28672(v0)
 524:	c04670bf 	ll	a2,28863(v0)
 528:	33386ebf 	andi	t8,t9,0x6ebf
 52c:	746c625f 	jalx	1b1897c <data_size+0x1b1896c>
 530:	73645f7a 	0x73645f7a
 534:	2e78655f 	sltiu	t8,s3,25951
 538:	682f0053 	0x682f0053
 53c:	2f656d6f 	sltiu	a1,k1,28015
 540:	2f797363 	sltiu	t9,k1,29539
 544:	636e7566 	0x636e7566
 548:	736e692f 	0x736e692f
 54c:	4e470074 	c3	0x470074
 550:	53412055 	beql	k0,at,86a8 <data_size+0x8698>
 554:	312e3220 	andi	t6,t1,0x3220
 558:	30352e38 	andi	s5,at,0x2e38
 55c:	49800100 	0x49800100
 560:	02000000 	0x2000000
 564:	00016800 	sll	t5,at,0x0
 568:	a0010400 	sb	at,1024(zero)
 56c:	7000000f 	0x7000000f
 570:	c0bfc046 	ll	ra,-16314(a1)
 574:	6ebfc048 	0x6ebfc048
 578:	735f3936 	0x735f3936
 57c:	6f5f6275 	0x6f5f6275
 580:	78655f76 	0x78655f76
 584:	2f00532e 	sltiu	zero,t8,21294
 588:	656d6f68 	0x656d6f68
 58c:	7973632f 	0x7973632f
 590:	6e75662f 	0x6e75662f
 594:	6e692f63 	0x6e692f63
 598:	47007473 	c1	0x1007473
 59c:	4120554e 	0x4120554e
 5a0:	2e322053 	sltiu	s2,s1,8275
 5a4:	352e3831 	ori	t6,t1,0x3831
 5a8:	80010030 	lb	at,48(zero)
 5ac:	00000049 	0x49
 5b0:	017c0002 	0x17c0002
 5b4:	01040000 	0x1040000
 5b8:	0000103f 	0x103f
 5bc:	bfc048c0 	cache	0x0,18624(s8)
 5c0:	bfc04bc8 	cache	0x0,19400(s8)
 5c4:	5f37386e 	0x5f37386e
 5c8:	5f6c616a 	0x5f6c616a
 5cc:	655f7364 	0x655f7364
 5d0:	00532e78 	0x532e78
 5d4:	6d6f682f 	0x6d6f682f
 5d8:	73632f65 	0x73632f65
 5dc:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 5e0:	692f636e 	0x692f636e
 5e4:	0074736e 	0x74736e
 5e8:	20554e47 	addi	s5,v0,20039
 5ec:	32205341 	andi	zero,s1,0x5341
 5f0:	2e38312e 	sltiu	t8,s1,12590
 5f4:	01003035 	0x1003035
 5f8:	00004a80 	sll	t1,zero,0xa
 5fc:	90000200 	lbu	zero,512(zero)
 600:	04000001 	bltz	zero,608 <data_size+0x5f8>
 604:	00112001 	movt	a0,zero,$fcc4
 608:	c04bd000 	ll	t3,-12288(v0)
 60c:	c04ec8bf 	ll	t6,-14145(v0)
 610:	34376ebf 	ori	s7,at,0x6ebf
 614:	5f68735f 	0x5f68735f
 618:	73656461 	0x73656461
 61c:	2e78655f 	sltiu	t8,s3,25951
 620:	682f0053 	0x682f0053
 624:	2f656d6f 	sltiu	a1,k1,28015
 628:	2f797363 	sltiu	t9,k1,29539
 62c:	636e7566 	0x636e7566
 630:	736e692f 	0x736e692f
 634:	4e470074 	c3	0x470074
 638:	53412055 	beql	k0,at,8790 <data_size+0x8780>
 63c:	312e3220 	andi	t6,t1,0x3220
 640:	30352e38 	andi	s5,at,0x2e38
 644:	4c800100 	0x4c800100
 648:	02000000 	0x2000000
 64c:	0001a400 	sll	s4,at,0x10
 650:	e3010400 	sc	at,1024(t8)
 654:	d0000011 	0xd0000011
 658:	d8bfc04e 	ldc2	$31,-16306(a1)
 65c:	6ebfc051 	0x6ebfc051
 660:	625f3538 	0x625f3538
 664:	617a6567 	0x617a6567
 668:	73645f6c 	0x73645f6c
 66c:	2e78655f 	sltiu	t8,s3,25951
 670:	682f0053 	0x682f0053
 674:	2f656d6f 	sltiu	a1,k1,28015
 678:	2f797363 	sltiu	t9,k1,29539
 67c:	636e7566 	0x636e7566
 680:	736e692f 	0x736e692f
 684:	4e470074 	c3	0x470074
 688:	53412055 	beql	k0,at,87e0 <data_size+0x87d0>
 68c:	312e3220 	andi	t6,t1,0x3220
 690:	30352e38 	andi	s5,at,0x2e38
 694:	4c800100 	0x4c800100
 698:	02000000 	0x2000000
 69c:	0001b800 	sll	s7,at,0x0
 6a0:	c7010400 	lwc1	$f1,1024(t8)
 6a4:	e0000012 	sc	zero,18(zero)
 6a8:	e8bfc051 	swc2	$31,-16303(a1)
 6ac:	6ebfc054 	0x6ebfc054
 6b0:	625f3438 	0x625f3438
 6b4:	617a746c 	0x617a746c
 6b8:	73645f6c 	0x73645f6c
 6bc:	2e78655f 	sltiu	t8,s3,25951
 6c0:	682f0053 	0x682f0053
 6c4:	2f656d6f 	sltiu	a1,k1,28015
 6c8:	2f797363 	sltiu	t9,k1,29539
 6cc:	636e7566 	0x636e7566
 6d0:	736e692f 	0x736e692f
 6d4:	4e470074 	c3	0x470074
 6d8:	53412055 	beql	k0,at,8830 <data_size+0x8820>
 6dc:	312e3220 	andi	t6,t1,0x3220
 6e0:	30352e38 	andi	s5,at,0x2e38
 6e4:	45800100 	0x45800100
 6e8:	02000000 	0x2000000
 6ec:	0001cc00 	sll	t9,at,0x10
 6f0:	ab010400 	swl	at,1024(t8)
 6f4:	f0000013 	0xf0000013
 6f8:	38bfc054 	xori	ra,a1,0xc054
 6fc:	6ebfc056 	0x6ebfc056
 700:	725f3637 	0x725f3637
 704:	78655f69 	0x78655f69
 708:	2f00532e 	sltiu	zero,t8,21294
 70c:	656d6f68 	0x656d6f68
 710:	7973632f 	0x7973632f
 714:	6e75662f 	0x6e75662f
 718:	6e692f63 	0x6e692f63
 71c:	47007473 	c1	0x1007473
 720:	4120554e 	0x4120554e
 724:	2e322053 	sltiu	s2,s1,8275
 728:	352e3831 	ori	t6,t1,0x3831
 72c:	80010030 	lb	at,48(zero)
 730:	0000004a 	0x4a
 734:	01e00002 	0x1e00002
 738:	01040000 	0x1040000
 73c:	00001427 	0x1427
 740:	bfc05640 	cache	0x0,22080(s8)
 744:	bfc05864 	cache	0x0,22628(s8)
 748:	5f35376e 	0x5f35376e
 74c:	615f7466 	0x615f7466
 750:	5f6c6564 	0x5f6c6564
 754:	532e7865 	beql	t9,t6,1e8ec <data_size+0x1e8dc>
 758:	6f682f00 	0x6f682f00
 75c:	632f656d 	0x632f656d
 760:	662f7973 	0x662f7973
 764:	2f636e75 	sltiu	v1,k1,28277
 768:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 76c:	554e4700 	bnel	t2,t6,12370 <data_size+0x12360>
 770:	20534120 	addi	s3,v0,16672
 774:	38312e32 	xori	s1,at,0x2e32
 778:	0030352e 	0x30352e
 77c:	00498001 	movt	s0,v0,$fcc2
 780:	00020000 	sll	zero,v0,0x0
 784:	000001f4 	teq	zero,zero,0x7
 788:	14d10104 	bne	a2,s1,b9c <data_size+0xb8c>
 78c:	58700000 	0x58700000
 790:	5b70bfc0 	0x5b70bfc0
 794:	376ebfc0 	ori	t6,k1,0xbfc0
 798:	6e625f39 	0x6e625f39
 79c:	73645f65 	0x73645f65
 7a0:	2e78655f 	sltiu	t8,s3,25951
 7a4:	682f0053 	0x682f0053
 7a8:	2f656d6f 	sltiu	a1,k1,28015
 7ac:	2f797363 	sltiu	t9,k1,29539
 7b0:	636e7566 	0x636e7566
 7b4:	736e692f 	0x736e692f
 7b8:	4e470074 	c3	0x470074
 7bc:	53412055 	beql	k0,at,8914 <data_size+0x8904>
 7c0:	312e3220 	andi	t6,t1,0x3220
 7c4:	30352e38 	andi	s5,at,0x2e38
 7c8:	4a800100 	c2	0x800100
 7cc:	02000000 	0x2000000
 7d0:	00020800 	sll	at,v0,0x0
 7d4:	b0010400 	0xb0010400
 7d8:	70000015 	0x70000015
 7dc:	6cbfc05b 	0x6cbfc05b
 7e0:	6ebfc05e 	0x6ebfc05e
 7e4:	6c5f3137 	0x6c5f3137
 7e8:	64615f68 	0x64615f68
 7ec:	655f6c65 	0x655f6c65
 7f0:	00532e78 	0x532e78
 7f4:	6d6f682f 	0x6d6f682f
 7f8:	73632f65 	0x73632f65
 7fc:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 800:	692f636e 	0x692f636e
 804:	0074736e 	0x74736e
 808:	20554e47 	addi	s5,v0,20039
 80c:	32205341 	andi	zero,s1,0x5341
 810:	2e38312e 	sltiu	t8,s1,12590
 814:	01003035 	0x1003035
 818:	Address 0x0000000000000818 is out of bounds.


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
 12c:	10001101 	b	4534 <data_size+0x4524>
 130:	12011106 	beq	s0,at,454c <data_size+0x453c>
 134:	1b080301 	0x1b080301
 138:	13082508 	beq	t8,t0,955c <data_size+0x954c>
 13c:	00000005 	0x5
 140:	10001101 	b	4548 <data_size+0x4538>
 144:	12011106 	beq	s0,at,4560 <data_size+0x4550>
 148:	1b080301 	0x1b080301
 14c:	13082508 	beq	t8,t0,9570 <data_size+0x9560>
 150:	00000005 	0x5
 154:	10001101 	b	455c <data_size+0x454c>
 158:	12011106 	beq	s0,at,4574 <data_size+0x4564>
 15c:	1b080301 	0x1b080301
 160:	13082508 	beq	t8,t0,9584 <data_size+0x9574>
 164:	00000005 	0x5
 168:	10001101 	b	4570 <data_size+0x4560>
 16c:	12011106 	beq	s0,at,4588 <data_size+0x4578>
 170:	1b080301 	0x1b080301
 174:	13082508 	beq	t8,t0,9598 <data_size+0x9588>
 178:	00000005 	0x5
 17c:	10001101 	b	4584 <data_size+0x4574>
 180:	12011106 	beq	s0,at,459c <data_size+0x458c>
 184:	1b080301 	0x1b080301
 188:	13082508 	beq	t8,t0,95ac <data_size+0x959c>
 18c:	00000005 	0x5
 190:	10001101 	b	4598 <data_size+0x4588>
 194:	12011106 	beq	s0,at,45b0 <data_size+0x45a0>
 198:	1b080301 	0x1b080301
 19c:	13082508 	beq	t8,t0,95c0 <data_size+0x95b0>
 1a0:	00000005 	0x5
 1a4:	10001101 	b	45ac <data_size+0x459c>
 1a8:	12011106 	beq	s0,at,45c4 <data_size+0x45b4>
 1ac:	1b080301 	0x1b080301
 1b0:	13082508 	beq	t8,t0,95d4 <data_size+0x95c4>
 1b4:	00000005 	0x5
 1b8:	10001101 	b	45c0 <data_size+0x45b0>
 1bc:	12011106 	beq	s0,at,45d8 <data_size+0x45c8>
 1c0:	1b080301 	0x1b080301
 1c4:	13082508 	beq	t8,t0,95e8 <data_size+0x95d8>
 1c8:	00000005 	0x5
 1cc:	10001101 	b	45d4 <data_size+0x45c4>
 1d0:	12011106 	beq	s0,at,45ec <data_size+0x45dc>
 1d4:	1b080301 	0x1b080301
 1d8:	13082508 	beq	t8,t0,95fc <data_size+0x95ec>
 1dc:	00000005 	0x5
 1e0:	10001101 	b	45e8 <data_size+0x45d8>
 1e4:	12011106 	beq	s0,at,4600 <data_size+0x45f0>
 1e8:	1b080301 	0x1b080301
 1ec:	13082508 	beq	t8,t0,9610 <data_size+0x9600>
 1f0:	00000005 	0x5
 1f4:	10001101 	b	45fc <data_size+0x45ec>
 1f8:	12011106 	beq	s0,at,4614 <data_size+0x4604>
 1fc:	1b080301 	0x1b080301
 200:	13082508 	beq	t8,t0,9624 <data_size+0x9614>
 204:	00000005 	0x5
 208:	10001101 	b	4610 <data_size+0x4600>
 20c:	12011106 	beq	s0,at,4628 <data_size+0x4618>
 210:	1b080301 	0x1b080301
 214:	13082508 	beq	t8,t0,9638 <data_size+0x9628>
 218:	00000005 	0x5
