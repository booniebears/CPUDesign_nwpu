
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
bfc006f8:	0ff02f9c 	jal	bfc0be70 <n1_lui_test>
/home/csy/func/start.S:293
bfc006fc:	00000000 	nop
/home/csy/func/start.S:294
bfc00700:	0ff00208 	jal	bfc00820 <wait_1s>
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
/home/csy/func/start.S:530
bfc00718:	0ff015e8 	jal	bfc057a0 <n59_lb_test>
/home/csy/func/start.S:531
bfc0071c:	00000000 	nop
/home/csy/func/start.S:532
bfc00720:	0ff00208 	jal	bfc00820 <wait_1s>
/home/csy/func/start.S:533
bfc00724:	00000000 	nop
/home/csy/func/start.S:534
bfc00728:	0ff0021c 	jal	bfc00870 <n60_lbu_test>
/home/csy/func/start.S:535
bfc0072c:	00000000 	nop
/home/csy/func/start.S:536
bfc00730:	0ff00208 	jal	bfc00820 <wait_1s>
/home/csy/func/start.S:537
bfc00734:	00000000 	nop
/home/csy/func/start.S:538
bfc00738:	0ff01ed4 	jal	bfc07b50 <n61_lh_test>
/home/csy/func/start.S:539
bfc0073c:	00000000 	nop
/home/csy/func/start.S:540
bfc00740:	0ff00208 	jal	bfc00820 <wait_1s>
/home/csy/func/start.S:541
bfc00744:	00000000 	nop
/home/csy/func/start.S:542
bfc00748:	0ff03434 	jal	bfc0d0d0 <n62_lhu_test>
/home/csy/func/start.S:543
bfc0074c:	00000000 	nop
/home/csy/func/start.S:544
bfc00750:	0ff00208 	jal	bfc00820 <wait_1s>
/home/csy/func/start.S:545
bfc00754:	00000000 	nop
/home/csy/func/start.S:546
bfc00758:	0ff00ba8 	jal	bfc02ea0 <n63_sb_test>
/home/csy/func/start.S:547
bfc0075c:	00000000 	nop
/home/csy/func/start.S:548
bfc00760:	0ff00208 	jal	bfc00820 <wait_1s>
/home/csy/func/start.S:549
bfc00764:	00000000 	nop
/home/csy/func/start.S:550
bfc00768:	0ff025e8 	jal	bfc097a0 <n64_sh_test>
/home/csy/func/start.S:551
bfc0076c:	00000000 	nop
/home/csy/func/start.S:552
bfc00770:	0ff00208 	jal	bfc00820 <wait_1s>
/home/csy/func/start.S:553
bfc00774:	00000000 	nop
/home/csy/func/start.S:655
bfc00778:	3c04bfaf 	lui	a0,0xbfaf
bfc0077c:	3484ffec 	ori	a0,a0,0xffec
/home/csy/func/start.S:656
bfc00780:	24081234 	li	t0,4660
/home/csy/func/start.S:657
bfc00784:	ac880000 	sw	t0,0(a0)
/home/csy/func/start.S:658
bfc00788:	8c890000 	lw	t1,0(a0)
/home/csy/func/start.S:659
bfc0078c:	00084400 	sll	t0,t0,0x10
/home/csy/func/start.S:660
bfc00790:	15090009 	bne	t0,t1,bfc007b8 <io_err>
/home/csy/func/start.S:661
bfc00794:	00000000 	nop
/home/csy/func/start.S:663
bfc00798:	3c085678 	lui	t0,0x5678
/home/csy/func/start.S:664
bfc0079c:	ac880000 	sw	t0,0(a0)
/home/csy/func/start.S:665
bfc007a0:	00084402 	srl	t0,t0,0x10
/home/csy/func/start.S:666
bfc007a4:	8c890000 	lw	t1,0(a0)
/home/csy/func/start.S:667
bfc007a8:	15090003 	bne	t0,t1,bfc007b8 <io_err>
/home/csy/func/start.S:668
bfc007ac:	00000000 	nop
/home/csy/func/start.S:669
bfc007b0:	10000003 	b	bfc007c0 <test_end>
/home/csy/func/start.S:670
bfc007b4:	00000000 	nop

bfc007b8 <io_err>:
/home/csy/func/start.S:672
bfc007b8:	26100001 	addiu	s0,s0,1
/home/csy/func/start.S:673
bfc007bc:	ae300000 	sw	s0,0(s1)

bfc007c0 <test_end>:
/home/csy/func/start.S:676
bfc007c0:	24100007 	li	s0,7
/home/csy/func/start.S:677
bfc007c4:	1213000d 	beq	s0,s3,bfc007fc <test_end+0x3c>
/home/csy/func/start.S:678
bfc007c8:	00000000 	nop
/home/csy/func/start.S:680
bfc007cc:	3c04bfaf 	lui	a0,0xbfaf
bfc007d0:	3484f000 	ori	a0,a0,0xf000
/home/csy/func/start.S:681
bfc007d4:	3c05bfaf 	lui	a1,0xbfaf
bfc007d8:	34a5f008 	ori	a1,a1,0xf008
/home/csy/func/start.S:682
bfc007dc:	3c06bfaf 	lui	a2,0xbfaf
bfc007e0:	34c6f004 	ori	a2,a2,0xf004
/home/csy/func/start.S:684
bfc007e4:	24090002 	li	t1,2
/home/csy/func/start.S:686
bfc007e8:	ac800000 	sw	zero,0(a0)
/home/csy/func/start.S:687
bfc007ec:	aca90000 	sw	t1,0(a1)
/home/csy/func/start.S:688
bfc007f0:	acc90000 	sw	t1,0(a2)
/home/csy/func/start.S:689
bfc007f4:	10000008 	b	bfc00818 <test_end+0x58>
/home/csy/func/start.S:690
bfc007f8:	00000000 	nop
/home/csy/func/start.S:692
bfc007fc:	24090001 	li	t1,1
/home/csy/func/start.S:693
bfc00800:	3c04bfaf 	lui	a0,0xbfaf
bfc00804:	3484f008 	ori	a0,a0,0xf008
/home/csy/func/start.S:694
bfc00808:	3c05bfaf 	lui	a1,0xbfaf
bfc0080c:	34a5f004 	ori	a1,a1,0xf004
/home/csy/func/start.S:695
bfc00810:	ac890000 	sw	t1,0(a0)
/home/csy/func/start.S:696
bfc00814:	aca90000 	sw	t1,0(a1)
/home/csy/func/start.S:699
bfc00818:	0ff00040 	jal	bfc00100 <test_finish>
/home/csy/func/start.S:700
bfc0081c:	00000000 	nop

bfc00820 <wait_1s>:
/home/csy/func/start.S:703
bfc00820:	3c08bfaf 	lui	t0,0xbfaf
bfc00824:	3508f02c 	ori	t0,t0,0xf02c
/home/csy/func/start.S:704
bfc00828:	3409aaaa 	li	t1,0xaaaa
/home/csy/func/start.S:707
bfc0082c:	8d0a0000 	lw	t2,0(t0)
/home/csy/func/start.S:708
bfc00830:	01495026 	xor	t2,t2,t1
/home/csy/func/start.S:709
bfc00834:	000a5a40 	sll	t3,t2,0x9
/home/csy/func/start.S:710
bfc00838:	256b0001 	addiu	t3,t3,1

bfc0083c <sub1>:
/home/csy/func/start.S:713
bfc0083c:	256bffff 	addiu	t3,t3,-1
/home/csy/func/start.S:716
bfc00840:	8d0a0000 	lw	t2,0(t0)
/home/csy/func/start.S:717
bfc00844:	01495026 	xor	t2,t2,t1
/home/csy/func/start.S:718
bfc00848:	000a5240 	sll	t2,t2,0x9
/home/csy/func/start.S:719
bfc0084c:	016a602b 	sltu	t4,t3,t2
/home/csy/func/start.S:720
bfc00850:	15800002 	bnez	t4,bfc0085c <sub1+0x20>
/home/csy/func/start.S:721
bfc00854:	00000000 	nop
/home/csy/func/start.S:722
bfc00858:	254b0000 	addiu	t3,t2,0
/home/csy/func/start.S:724
bfc0085c:	1560fff7 	bnez	t3,bfc0083c <sub1>
/home/csy/func/start.S:725
bfc00860:	00000000 	nop
/home/csy/func/start.S:726
bfc00864:	03e00008 	jr	ra
/home/csy/func/start.S:727
bfc00868:	00000000 	nop
sub1():
bfc0086c:	00000000 	nop

bfc00870 <n60_lbu_test>:
/home/csy/func/inst/n60_lbu.S:7
bfc00870:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n60_lbu.S:8
bfc00874:	24120000 	li	s2,0
/home/csy/func/inst/n60_lbu.S:10
bfc00878:	3c0979db 	lui	t1,0x79db
bfc0087c:	3529f0ff 	ori	t1,t1,0xf0ff
bfc00880:	3c08800d 	lui	t0,0x800d
bfc00884:	35085498 	ori	t0,t0,0x5498
bfc00888:	240300ff 	li	v1,255
bfc0088c:	ad091408 	sw	t1,5128(t0)
bfc00890:	25040004 	addiu	a0,t0,4
bfc00894:	2505fff8 	addiu	a1,t0,-8
bfc00898:	ac841408 	sw	a0,5128(a0)
bfc0089c:	aca51408 	sw	a1,5128(a1)
bfc008a0:	91021408 	lbu	v0,5128(t0)
bfc008a4:	8c851408 	lw	a1,5128(a0)
bfc008a8:	8ca41408 	lw	a0,5128(a1)
bfc008ac:	8ca61408 	lw	a2,5128(a1)
bfc008b0:	14430974 	bne	v0,v1,bfc02e84 <inst_error>
bfc008b4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:11
bfc008b8:	3c099b5b 	lui	t1,0x9b5b
bfc008bc:	3529ab6c 	ori	t1,t1,0xab6c
bfc008c0:	3c08800d 	lui	t0,0x800d
bfc008c4:	35084430 	ori	t0,t0,0x4430
bfc008c8:	2403005b 	li	v1,91
bfc008cc:	ad09252c 	sw	t1,9516(t0)
bfc008d0:	25040004 	addiu	a0,t0,4
bfc008d4:	2505fff8 	addiu	a1,t0,-8
bfc008d8:	ac84252c 	sw	a0,9516(a0)
bfc008dc:	aca5252c 	sw	a1,9516(a1)
bfc008e0:	9102252e 	lbu	v0,9518(t0)
bfc008e4:	8c85252c 	lw	a1,9516(a0)
bfc008e8:	8ca4252c 	lw	a0,9516(a1)
bfc008ec:	8ca6252c 	lw	a2,9516(a1)
bfc008f0:	14430964 	bne	v0,v1,bfc02e84 <inst_error>
bfc008f4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:12
bfc008f8:	3c09d156 	lui	t1,0xd156
bfc008fc:	3529f470 	ori	t1,t1,0xf470
bfc00900:	3c08800d 	lui	t0,0x800d
bfc00904:	350845d8 	ori	t0,t0,0x45d8
bfc00908:	240300d1 	li	v1,209
bfc0090c:	ad097608 	sw	t1,30216(t0)
bfc00910:	25040004 	addiu	a0,t0,4
bfc00914:	2505fff8 	addiu	a1,t0,-8
bfc00918:	ac847608 	sw	a0,30216(a0)
bfc0091c:	aca57608 	sw	a1,30216(a1)
bfc00920:	9102760b 	lbu	v0,30219(t0)
bfc00924:	8c857608 	lw	a1,30216(a0)
bfc00928:	8ca47608 	lw	a0,30216(a1)
bfc0092c:	8ca67608 	lw	a2,30216(a1)
bfc00930:	14430954 	bne	v0,v1,bfc02e84 <inst_error>
bfc00934:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:13
bfc00938:	3c094d85 	lui	t1,0x4d85
bfc0093c:	352964c0 	ori	t1,t1,0x64c0
bfc00940:	3c08800d 	lui	t0,0x800d
bfc00944:	3508abac 	ori	t0,t0,0xabac
bfc00948:	240300c0 	li	v1,192
bfc0094c:	ad095180 	sw	t1,20864(t0)
bfc00950:	25040004 	addiu	a0,t0,4
bfc00954:	2505fff8 	addiu	a1,t0,-8
bfc00958:	ac845180 	sw	a0,20864(a0)
bfc0095c:	aca55180 	sw	a1,20864(a1)
bfc00960:	91025180 	lbu	v0,20864(t0)
bfc00964:	8c855180 	lw	a1,20864(a0)
bfc00968:	8ca45180 	lw	a0,20864(a1)
bfc0096c:	8ca65180 	lw	a2,20864(a1)
bfc00970:	14430944 	bne	v0,v1,bfc02e84 <inst_error>
bfc00974:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:14
bfc00978:	3c09927c 	lui	t1,0x927c
bfc0097c:	35299930 	ori	t1,t1,0x9930
bfc00980:	3c08800d 	lui	t0,0x800d
bfc00984:	3508ae00 	ori	t0,t0,0xae00
bfc00988:	24030030 	li	v1,48
bfc0098c:	ad094a28 	sw	t1,18984(t0)
bfc00990:	25040004 	addiu	a0,t0,4
bfc00994:	2505fff8 	addiu	a1,t0,-8
bfc00998:	ac844a28 	sw	a0,18984(a0)
bfc0099c:	aca54a28 	sw	a1,18984(a1)
bfc009a0:	91024a28 	lbu	v0,18984(t0)
bfc009a4:	8c854a28 	lw	a1,18984(a0)
bfc009a8:	8ca44a28 	lw	a0,18984(a1)
bfc009ac:	8ca64a28 	lw	a2,18984(a1)
bfc009b0:	14430934 	bne	v0,v1,bfc02e84 <inst_error>
bfc009b4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:15
bfc009b8:	3c099ec5 	lui	t1,0x9ec5
bfc009bc:	3529966a 	ori	t1,t1,0x966a
bfc009c0:	3c08800d 	lui	t0,0x800d
bfc009c4:	350872b8 	ori	t0,t0,0x72b8
bfc009c8:	2403006a 	li	v1,106
bfc009cc:	ad091e9c 	sw	t1,7836(t0)
bfc009d0:	25040004 	addiu	a0,t0,4
bfc009d4:	2505fff8 	addiu	a1,t0,-8
bfc009d8:	ac841e9c 	sw	a0,7836(a0)
bfc009dc:	aca51e9c 	sw	a1,7836(a1)
bfc009e0:	91021e9c 	lbu	v0,7836(t0)
bfc009e4:	8c851e9c 	lw	a1,7836(a0)
bfc009e8:	8ca41e9c 	lw	a0,7836(a1)
bfc009ec:	8ca61e9c 	lw	a2,7836(a1)
bfc009f0:	14430924 	bne	v0,v1,bfc02e84 <inst_error>
bfc009f4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:16
bfc009f8:	3c0913f9 	lui	t1,0x13f9
bfc009fc:	35291e58 	ori	t1,t1,0x1e58
bfc00a00:	3c08800d 	lui	t0,0x800d
bfc00a04:	35081f30 	ori	t0,t0,0x1f30
bfc00a08:	24030058 	li	v1,88
bfc00a0c:	3c010001 	lui	at,0x1
bfc00a10:	00280821 	addu	at,at,t0
bfc00a14:	ac29b600 	sw	t1,-18944(at)
bfc00a18:	25040004 	addiu	a0,t0,4
bfc00a1c:	2505fff8 	addiu	a1,t0,-8
bfc00a20:	3c010001 	lui	at,0x1
bfc00a24:	00240821 	addu	at,at,a0
bfc00a28:	ac24b600 	sw	a0,-18944(at)
bfc00a2c:	3c010001 	lui	at,0x1
bfc00a30:	00250821 	addu	at,at,a1
bfc00a34:	ac25b600 	sw	a1,-18944(at)
bfc00a38:	3c020001 	lui	v0,0x1
bfc00a3c:	00481021 	addu	v0,v0,t0
bfc00a40:	9042b600 	lbu	v0,-18944(v0)
bfc00a44:	3c050001 	lui	a1,0x1
bfc00a48:	00a42821 	addu	a1,a1,a0
bfc00a4c:	8ca5b600 	lw	a1,-18944(a1)
bfc00a50:	3c040001 	lui	a0,0x1
bfc00a54:	00852021 	addu	a0,a0,a1
bfc00a58:	8c84b600 	lw	a0,-18944(a0)
bfc00a5c:	3c060001 	lui	a2,0x1
bfc00a60:	00c53021 	addu	a2,a2,a1
bfc00a64:	8cc6b600 	lw	a2,-18944(a2)
bfc00a68:	14430906 	bne	v0,v1,bfc02e84 <inst_error>
bfc00a6c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:17
bfc00a70:	3c090249 	lui	t1,0x249
bfc00a74:	3529eebd 	ori	t1,t1,0xeebd
bfc00a78:	3c08800d 	lui	t0,0x800d
bfc00a7c:	35083d28 	ori	t0,t0,0x3d28
bfc00a80:	240300bd 	li	v1,189
bfc00a84:	ad097e74 	sw	t1,32372(t0)
bfc00a88:	25040004 	addiu	a0,t0,4
bfc00a8c:	2505fff8 	addiu	a1,t0,-8
bfc00a90:	ac847e74 	sw	a0,32372(a0)
bfc00a94:	aca57e74 	sw	a1,32372(a1)
bfc00a98:	91027e74 	lbu	v0,32372(t0)
bfc00a9c:	8c857e74 	lw	a1,32372(a0)
bfc00aa0:	8ca47e74 	lw	a0,32372(a1)
bfc00aa4:	8ca67e74 	lw	a2,32372(a1)
bfc00aa8:	144308f6 	bne	v0,v1,bfc02e84 <inst_error>
bfc00aac:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:18
bfc00ab0:	3c094d40 	lui	t1,0x4d40
bfc00ab4:	3529dd0e 	ori	t1,t1,0xdd0e
bfc00ab8:	3c08800d 	lui	t0,0x800d
bfc00abc:	35082c50 	ori	t0,t0,0x2c50
bfc00ac0:	24030040 	li	v1,64
bfc00ac4:	3c010001 	lui	at,0x1
bfc00ac8:	00280821 	addu	at,at,t0
bfc00acc:	ac29c2d0 	sw	t1,-15664(at)
bfc00ad0:	25040004 	addiu	a0,t0,4
bfc00ad4:	2505fff8 	addiu	a1,t0,-8
bfc00ad8:	3c010001 	lui	at,0x1
bfc00adc:	00240821 	addu	at,at,a0
bfc00ae0:	ac24c2d0 	sw	a0,-15664(at)
bfc00ae4:	3c010001 	lui	at,0x1
bfc00ae8:	00250821 	addu	at,at,a1
bfc00aec:	ac25c2d0 	sw	a1,-15664(at)
bfc00af0:	3c020001 	lui	v0,0x1
bfc00af4:	00481021 	addu	v0,v0,t0
bfc00af8:	9042c2d2 	lbu	v0,-15662(v0)
bfc00afc:	3c050001 	lui	a1,0x1
bfc00b00:	00a42821 	addu	a1,a1,a0
bfc00b04:	8ca5c2d0 	lw	a1,-15664(a1)
bfc00b08:	3c040001 	lui	a0,0x1
bfc00b0c:	00852021 	addu	a0,a0,a1
bfc00b10:	8c84c2d0 	lw	a0,-15664(a0)
bfc00b14:	3c060001 	lui	a2,0x1
bfc00b18:	00c53021 	addu	a2,a2,a1
bfc00b1c:	8cc6c2d0 	lw	a2,-15664(a2)
bfc00b20:	144308d8 	bne	v0,v1,bfc02e84 <inst_error>
bfc00b24:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:19
bfc00b28:	3c091dd0 	lui	t1,0x1dd0
bfc00b2c:	352943a8 	ori	t1,t1,0x43a8
bfc00b30:	3c08800d 	lui	t0,0x800d
bfc00b34:	35086a7c 	ori	t0,t0,0x6a7c
bfc00b38:	240300a8 	li	v1,168
bfc00b3c:	ad0930f8 	sw	t1,12536(t0)
bfc00b40:	25040004 	addiu	a0,t0,4
bfc00b44:	2505fff8 	addiu	a1,t0,-8
bfc00b48:	ac8430f8 	sw	a0,12536(a0)
bfc00b4c:	aca530f8 	sw	a1,12536(a1)
bfc00b50:	910230f8 	lbu	v0,12536(t0)
bfc00b54:	8c8530f8 	lw	a1,12536(a0)
bfc00b58:	8ca430f8 	lw	a0,12536(a1)
bfc00b5c:	8ca630f8 	lw	a2,12536(a1)
bfc00b60:	144308c8 	bne	v0,v1,bfc02e84 <inst_error>
bfc00b64:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:20
bfc00b68:	3c09ed11 	lui	t1,0xed11
bfc00b6c:	35291118 	ori	t1,t1,0x1118
bfc00b70:	3c08800d 	lui	t0,0x800d
bfc00b74:	350842b4 	ori	t0,t0,0x42b4
bfc00b78:	24030018 	li	v1,24
bfc00b7c:	ad092b60 	sw	t1,11104(t0)
bfc00b80:	25040004 	addiu	a0,t0,4
bfc00b84:	2505fff8 	addiu	a1,t0,-8
bfc00b88:	ac842b60 	sw	a0,11104(a0)
bfc00b8c:	aca52b60 	sw	a1,11104(a1)
bfc00b90:	91022b60 	lbu	v0,11104(t0)
bfc00b94:	8c852b60 	lw	a1,11104(a0)
bfc00b98:	8ca42b60 	lw	a0,11104(a1)
bfc00b9c:	8ca62b60 	lw	a2,11104(a1)
bfc00ba0:	144308b8 	bne	v0,v1,bfc02e84 <inst_error>
bfc00ba4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:21
bfc00ba8:	3c096937 	lui	t1,0x6937
bfc00bac:	3529c000 	ori	t1,t1,0xc000
bfc00bb0:	3c08800d 	lui	t0,0x800d
bfc00bb4:	3508e7f0 	ori	t0,t0,0xe7f0
bfc00bb8:	240300c0 	li	v1,192
bfc00bbc:	ad090748 	sw	t1,1864(t0)
bfc00bc0:	25040004 	addiu	a0,t0,4
bfc00bc4:	2505fff8 	addiu	a1,t0,-8
bfc00bc8:	ac840748 	sw	a0,1864(a0)
bfc00bcc:	aca50748 	sw	a1,1864(a1)
bfc00bd0:	91020749 	lbu	v0,1865(t0)
bfc00bd4:	8c850748 	lw	a1,1864(a0)
bfc00bd8:	8ca40748 	lw	a0,1864(a1)
bfc00bdc:	8ca60748 	lw	a2,1864(a1)
bfc00be0:	144308a8 	bne	v0,v1,bfc02e84 <inst_error>
bfc00be4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:22
bfc00be8:	3c09e4f7 	lui	t1,0xe4f7
bfc00bec:	35296a00 	ori	t1,t1,0x6a00
bfc00bf0:	3c08800d 	lui	t0,0x800d
bfc00bf4:	3508a130 	ori	t0,t0,0xa130
bfc00bf8:	24030000 	li	v1,0
bfc00bfc:	ad090768 	sw	t1,1896(t0)
bfc00c00:	25040004 	addiu	a0,t0,4
bfc00c04:	2505fff8 	addiu	a1,t0,-8
bfc00c08:	ac840768 	sw	a0,1896(a0)
bfc00c0c:	aca50768 	sw	a1,1896(a1)
bfc00c10:	91020768 	lbu	v0,1896(t0)
bfc00c14:	8c850768 	lw	a1,1896(a0)
bfc00c18:	8ca40768 	lw	a0,1896(a1)
bfc00c1c:	8ca60768 	lw	a2,1896(a1)
bfc00c20:	14430898 	bne	v0,v1,bfc02e84 <inst_error>
bfc00c24:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:23
bfc00c28:	3c09ee33 	lui	t1,0xee33
bfc00c2c:	3529dcd0 	ori	t1,t1,0xdcd0
bfc00c30:	3c08800d 	lui	t0,0x800d
bfc00c34:	3508bc2c 	ori	t0,t0,0xbc2c
bfc00c38:	240300d0 	li	v1,208
bfc00c3c:	ad091868 	sw	t1,6248(t0)
bfc00c40:	25040004 	addiu	a0,t0,4
bfc00c44:	2505fff8 	addiu	a1,t0,-8
bfc00c48:	ac841868 	sw	a0,6248(a0)
bfc00c4c:	aca51868 	sw	a1,6248(a1)
bfc00c50:	91021868 	lbu	v0,6248(t0)
bfc00c54:	8c851868 	lw	a1,6248(a0)
bfc00c58:	8ca41868 	lw	a0,6248(a1)
bfc00c5c:	8ca61868 	lw	a2,6248(a1)
bfc00c60:	14430888 	bne	v0,v1,bfc02e84 <inst_error>
bfc00c64:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:24
bfc00c68:	3c09a6a6 	lui	t1,0xa6a6
bfc00c6c:	35297232 	ori	t1,t1,0x7232
bfc00c70:	3c08800d 	lui	t0,0x800d
bfc00c74:	35088b40 	ori	t0,t0,0x8b40
bfc00c78:	240300a6 	li	v1,166
bfc00c7c:	ad092f04 	sw	t1,12036(t0)
bfc00c80:	25040004 	addiu	a0,t0,4
bfc00c84:	2505fff8 	addiu	a1,t0,-8
bfc00c88:	ac842f04 	sw	a0,12036(a0)
bfc00c8c:	aca52f04 	sw	a1,12036(a1)
bfc00c90:	91022f07 	lbu	v0,12039(t0)
bfc00c94:	8c852f04 	lw	a1,12036(a0)
bfc00c98:	8ca42f04 	lw	a0,12036(a1)
bfc00c9c:	8ca62f04 	lw	a2,12036(a1)
bfc00ca0:	14430878 	bne	v0,v1,bfc02e84 <inst_error>
bfc00ca4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:25
bfc00ca8:	3c092c62 	lui	t1,0x2c62
bfc00cac:	3529e6d4 	ori	t1,t1,0xe6d4
bfc00cb0:	3c08800d 	lui	t0,0x800d
bfc00cb4:	35083cd4 	ori	t0,t0,0x3cd4
bfc00cb8:	240300d4 	li	v1,212
bfc00cbc:	ad090270 	sw	t1,624(t0)
bfc00cc0:	25040004 	addiu	a0,t0,4
bfc00cc4:	2505fff8 	addiu	a1,t0,-8
bfc00cc8:	ac840270 	sw	a0,624(a0)
bfc00ccc:	aca50270 	sw	a1,624(a1)
bfc00cd0:	91020270 	lbu	v0,624(t0)
bfc00cd4:	8c850270 	lw	a1,624(a0)
bfc00cd8:	8ca40270 	lw	a0,624(a1)
bfc00cdc:	8ca60270 	lw	a2,624(a1)
bfc00ce0:	14430868 	bne	v0,v1,bfc02e84 <inst_error>
bfc00ce4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:26
bfc00ce8:	3c09dbe7 	lui	t1,0xdbe7
bfc00cec:	35295a30 	ori	t1,t1,0x5a30
bfc00cf0:	3c08800d 	lui	t0,0x800d
bfc00cf4:	35082854 	ori	t0,t0,0x2854
bfc00cf8:	240300e7 	li	v1,231
bfc00cfc:	ad090664 	sw	t1,1636(t0)
bfc00d00:	25040004 	addiu	a0,t0,4
bfc00d04:	2505fff8 	addiu	a1,t0,-8
bfc00d08:	ac840664 	sw	a0,1636(a0)
bfc00d0c:	aca50664 	sw	a1,1636(a1)
bfc00d10:	91020666 	lbu	v0,1638(t0)
bfc00d14:	8c850664 	lw	a1,1636(a0)
bfc00d18:	8ca40664 	lw	a0,1636(a1)
bfc00d1c:	8ca60664 	lw	a2,1636(a1)
bfc00d20:	14430858 	bne	v0,v1,bfc02e84 <inst_error>
bfc00d24:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:27
bfc00d28:	3c09d220 	lui	t1,0xd220
bfc00d2c:	35291348 	ori	t1,t1,0x1348
bfc00d30:	3c08800d 	lui	t0,0x800d
bfc00d34:	35088b40 	ori	t0,t0,0x8b40
bfc00d38:	24030013 	li	v1,19
bfc00d3c:	ad092bc0 	sw	t1,11200(t0)
bfc00d40:	25040004 	addiu	a0,t0,4
bfc00d44:	2505fff8 	addiu	a1,t0,-8
bfc00d48:	ac842bc0 	sw	a0,11200(a0)
bfc00d4c:	aca52bc0 	sw	a1,11200(a1)
bfc00d50:	91022bc1 	lbu	v0,11201(t0)
bfc00d54:	8c852bc0 	lw	a1,11200(a0)
bfc00d58:	8ca42bc0 	lw	a0,11200(a1)
bfc00d5c:	8ca62bc0 	lw	a2,11200(a1)
bfc00d60:	14430848 	bne	v0,v1,bfc02e84 <inst_error>
bfc00d64:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:28
bfc00d68:	3c09bc50 	lui	t1,0xbc50
bfc00d6c:	35299f3c 	ori	t1,t1,0x9f3c
bfc00d70:	3c08800d 	lui	t0,0x800d
bfc00d74:	35080910 	ori	t0,t0,0x910
bfc00d78:	240300bc 	li	v1,188
bfc00d7c:	3c010001 	lui	at,0x1
bfc00d80:	00280821 	addu	at,at,t0
bfc00d84:	ac2981c0 	sw	t1,-32320(at)
bfc00d88:	25040004 	addiu	a0,t0,4
bfc00d8c:	2505fff8 	addiu	a1,t0,-8
bfc00d90:	3c010001 	lui	at,0x1
bfc00d94:	00240821 	addu	at,at,a0
bfc00d98:	ac2481c0 	sw	a0,-32320(at)
bfc00d9c:	3c010001 	lui	at,0x1
bfc00da0:	00250821 	addu	at,at,a1
bfc00da4:	ac2581c0 	sw	a1,-32320(at)
bfc00da8:	3c020001 	lui	v0,0x1
bfc00dac:	00481021 	addu	v0,v0,t0
bfc00db0:	904281c3 	lbu	v0,-32317(v0)
bfc00db4:	3c050001 	lui	a1,0x1
bfc00db8:	00a42821 	addu	a1,a1,a0
bfc00dbc:	8ca581c0 	lw	a1,-32320(a1)
bfc00dc0:	3c040001 	lui	a0,0x1
bfc00dc4:	00852021 	addu	a0,a0,a1
bfc00dc8:	8c8481c0 	lw	a0,-32320(a0)
bfc00dcc:	3c060001 	lui	a2,0x1
bfc00dd0:	00c53021 	addu	a2,a2,a1
bfc00dd4:	8cc681c0 	lw	a2,-32320(a2)
bfc00dd8:	1443082a 	bne	v0,v1,bfc02e84 <inst_error>
bfc00ddc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:29
bfc00de0:	3c09d03b 	lui	t1,0xd03b
bfc00de4:	3529b99a 	ori	t1,t1,0xb99a
bfc00de8:	3c08800d 	lui	t0,0x800d
bfc00dec:	35082a84 	ori	t0,t0,0x2a84
bfc00df0:	2403009a 	li	v1,154
bfc00df4:	ad093780 	sw	t1,14208(t0)
bfc00df8:	25040004 	addiu	a0,t0,4
bfc00dfc:	2505fff8 	addiu	a1,t0,-8
bfc00e00:	ac843780 	sw	a0,14208(a0)
bfc00e04:	aca53780 	sw	a1,14208(a1)
bfc00e08:	91023780 	lbu	v0,14208(t0)
bfc00e0c:	8c853780 	lw	a1,14208(a0)
bfc00e10:	8ca43780 	lw	a0,14208(a1)
bfc00e14:	8ca63780 	lw	a2,14208(a1)
bfc00e18:	1443081a 	bne	v0,v1,bfc02e84 <inst_error>
bfc00e1c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:30
bfc00e20:	3c09c1da 	lui	t1,0xc1da
bfc00e24:	35293a60 	ori	t1,t1,0x3a60
bfc00e28:	3c08800d 	lui	t0,0x800d
bfc00e2c:	350891c0 	ori	t0,t0,0x91c0
bfc00e30:	24030060 	li	v1,96
bfc00e34:	ad0954d0 	sw	t1,21712(t0)
bfc00e38:	25040004 	addiu	a0,t0,4
bfc00e3c:	2505fff8 	addiu	a1,t0,-8
bfc00e40:	ac8454d0 	sw	a0,21712(a0)
bfc00e44:	aca554d0 	sw	a1,21712(a1)
bfc00e48:	910254d0 	lbu	v0,21712(t0)
bfc00e4c:	8c8554d0 	lw	a1,21712(a0)
bfc00e50:	8ca454d0 	lw	a0,21712(a1)
bfc00e54:	8ca654d0 	lw	a2,21712(a1)
bfc00e58:	1443080a 	bne	v0,v1,bfc02e84 <inst_error>
bfc00e5c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:31
bfc00e60:	3c092c56 	lui	t1,0x2c56
bfc00e64:	3529dcf0 	ori	t1,t1,0xdcf0
bfc00e68:	3c08800d 	lui	t0,0x800d
bfc00e6c:	35086094 	ori	t0,t0,0x6094
bfc00e70:	24030056 	li	v1,86
bfc00e74:	ad094c84 	sw	t1,19588(t0)
bfc00e78:	25040004 	addiu	a0,t0,4
bfc00e7c:	2505fff8 	addiu	a1,t0,-8
bfc00e80:	ac844c84 	sw	a0,19588(a0)
bfc00e84:	aca54c84 	sw	a1,19588(a1)
bfc00e88:	91024c86 	lbu	v0,19590(t0)
bfc00e8c:	8c854c84 	lw	a1,19588(a0)
bfc00e90:	8ca44c84 	lw	a0,19588(a1)
bfc00e94:	8ca64c84 	lw	a2,19588(a1)
bfc00e98:	144307fa 	bne	v0,v1,bfc02e84 <inst_error>
bfc00e9c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:32
bfc00ea0:	3c09f4a5 	lui	t1,0xf4a5
bfc00ea4:	35293d22 	ori	t1,t1,0x3d22
bfc00ea8:	3c08800d 	lui	t0,0x800d
bfc00eac:	35080384 	ori	t0,t0,0x384
bfc00eb0:	240300a5 	li	v1,165
bfc00eb4:	ad095324 	sw	t1,21284(t0)
bfc00eb8:	25040004 	addiu	a0,t0,4
bfc00ebc:	2505fff8 	addiu	a1,t0,-8
bfc00ec0:	ac845324 	sw	a0,21284(a0)
bfc00ec4:	aca55324 	sw	a1,21284(a1)
bfc00ec8:	91025326 	lbu	v0,21286(t0)
bfc00ecc:	8c855324 	lw	a1,21284(a0)
bfc00ed0:	8ca45324 	lw	a0,21284(a1)
bfc00ed4:	8ca65324 	lw	a2,21284(a1)
bfc00ed8:	144307ea 	bne	v0,v1,bfc02e84 <inst_error>
bfc00edc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:33
bfc00ee0:	3c0944b6 	lui	t1,0x44b6
bfc00ee4:	35296444 	ori	t1,t1,0x6444
bfc00ee8:	3c08800d 	lui	t0,0x800d
bfc00eec:	35089c48 	ori	t0,t0,0x9c48
bfc00ef0:	24030044 	li	v1,68
bfc00ef4:	ad093580 	sw	t1,13696(t0)
bfc00ef8:	25040004 	addiu	a0,t0,4
bfc00efc:	2505fff8 	addiu	a1,t0,-8
bfc00f00:	ac843580 	sw	a0,13696(a0)
bfc00f04:	aca53580 	sw	a1,13696(a1)
bfc00f08:	91023580 	lbu	v0,13696(t0)
bfc00f0c:	8c853580 	lw	a1,13696(a0)
bfc00f10:	8ca43580 	lw	a0,13696(a1)
bfc00f14:	8ca63580 	lw	a2,13696(a1)
bfc00f18:	144307da 	bne	v0,v1,bfc02e84 <inst_error>
bfc00f1c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:34
bfc00f20:	3c092982 	lui	t1,0x2982
bfc00f24:	3529f7ac 	ori	t1,t1,0xf7ac
bfc00f28:	3c08800d 	lui	t0,0x800d
bfc00f2c:	35080a18 	ori	t0,t0,0xa18
bfc00f30:	240300ac 	li	v1,172
bfc00f34:	ad091208 	sw	t1,4616(t0)
bfc00f38:	25040004 	addiu	a0,t0,4
bfc00f3c:	2505fff8 	addiu	a1,t0,-8
bfc00f40:	ac841208 	sw	a0,4616(a0)
bfc00f44:	aca51208 	sw	a1,4616(a1)
bfc00f48:	91021208 	lbu	v0,4616(t0)
bfc00f4c:	8c851208 	lw	a1,4616(a0)
bfc00f50:	8ca41208 	lw	a0,4616(a1)
bfc00f54:	8ca61208 	lw	a2,4616(a1)
bfc00f58:	144307ca 	bne	v0,v1,bfc02e84 <inst_error>
bfc00f5c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:35
bfc00f60:	3c099089 	lui	t1,0x9089
bfc00f64:	35295498 	ori	t1,t1,0x5498
bfc00f68:	3c08800d 	lui	t0,0x800d
bfc00f6c:	35086210 	ori	t0,t0,0x6210
bfc00f70:	24030098 	li	v1,152
bfc00f74:	ad09759c 	sw	t1,30108(t0)
bfc00f78:	25040004 	addiu	a0,t0,4
bfc00f7c:	2505fff8 	addiu	a1,t0,-8
bfc00f80:	ac84759c 	sw	a0,30108(a0)
bfc00f84:	aca5759c 	sw	a1,30108(a1)
bfc00f88:	9102759c 	lbu	v0,30108(t0)
bfc00f8c:	8c85759c 	lw	a1,30108(a0)
bfc00f90:	8ca4759c 	lw	a0,30108(a1)
bfc00f94:	8ca6759c 	lw	a2,30108(a1)
bfc00f98:	144307ba 	bne	v0,v1,bfc02e84 <inst_error>
bfc00f9c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:36
bfc00fa0:	3c0971d0 	lui	t1,0x71d0
bfc00fa4:	35294400 	ori	t1,t1,0x4400
bfc00fa8:	3c08800d 	lui	t0,0x800d
bfc00fac:	35081d08 	ori	t0,t0,0x1d08
bfc00fb0:	24030071 	li	v1,113
bfc00fb4:	ad096fac 	sw	t1,28588(t0)
bfc00fb8:	25040004 	addiu	a0,t0,4
bfc00fbc:	2505fff8 	addiu	a1,t0,-8
bfc00fc0:	ac846fac 	sw	a0,28588(a0)
bfc00fc4:	aca56fac 	sw	a1,28588(a1)
bfc00fc8:	91026faf 	lbu	v0,28591(t0)
bfc00fcc:	8c856fac 	lw	a1,28588(a0)
bfc00fd0:	8ca46fac 	lw	a0,28588(a1)
bfc00fd4:	8ca66fac 	lw	a2,28588(a1)
bfc00fd8:	144307aa 	bne	v0,v1,bfc02e84 <inst_error>
bfc00fdc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:37
bfc00fe0:	3c09244f 	lui	t1,0x244f
bfc00fe4:	35292870 	ori	t1,t1,0x2870
bfc00fe8:	3c08800d 	lui	t0,0x800d
bfc00fec:	35081f50 	ori	t0,t0,0x1f50
bfc00ff0:	24030028 	li	v1,40
bfc00ff4:	3c010001 	lui	at,0x1
bfc00ff8:	00280821 	addu	at,at,t0
bfc00ffc:	ac29a4c8 	sw	t1,-23352(at)
bfc01000:	25040004 	addiu	a0,t0,4
bfc01004:	2505fff8 	addiu	a1,t0,-8
bfc01008:	3c010001 	lui	at,0x1
bfc0100c:	00240821 	addu	at,at,a0
bfc01010:	ac24a4c8 	sw	a0,-23352(at)
bfc01014:	3c010001 	lui	at,0x1
bfc01018:	00250821 	addu	at,at,a1
bfc0101c:	ac25a4c8 	sw	a1,-23352(at)
bfc01020:	3c020001 	lui	v0,0x1
bfc01024:	00481021 	addu	v0,v0,t0
bfc01028:	9042a4c9 	lbu	v0,-23351(v0)
bfc0102c:	3c050001 	lui	a1,0x1
bfc01030:	00a42821 	addu	a1,a1,a0
bfc01034:	8ca5a4c8 	lw	a1,-23352(a1)
bfc01038:	3c040001 	lui	a0,0x1
bfc0103c:	00852021 	addu	a0,a0,a1
bfc01040:	8c84a4c8 	lw	a0,-23352(a0)
bfc01044:	3c060001 	lui	a2,0x1
bfc01048:	00c53021 	addu	a2,a2,a1
bfc0104c:	8cc6a4c8 	lw	a2,-23352(a2)
bfc01050:	1443078c 	bne	v0,v1,bfc02e84 <inst_error>
bfc01054:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:38
bfc01058:	3c0960bd 	lui	t1,0x60bd
bfc0105c:	3529b8c0 	ori	t1,t1,0xb8c0
bfc01060:	3c08800d 	lui	t0,0x800d
bfc01064:	350860e0 	ori	t0,t0,0x60e0
bfc01068:	240300c0 	li	v1,192
bfc0106c:	3c010001 	lui	at,0x1
bfc01070:	00280821 	addu	at,at,t0
bfc01074:	ac299944 	sw	t1,-26300(at)
bfc01078:	25040004 	addiu	a0,t0,4
bfc0107c:	2505fff8 	addiu	a1,t0,-8
bfc01080:	3c010001 	lui	at,0x1
bfc01084:	00240821 	addu	at,at,a0
bfc01088:	ac249944 	sw	a0,-26300(at)
bfc0108c:	3c010001 	lui	at,0x1
bfc01090:	00250821 	addu	at,at,a1
bfc01094:	ac259944 	sw	a1,-26300(at)
bfc01098:	3c020001 	lui	v0,0x1
bfc0109c:	00481021 	addu	v0,v0,t0
bfc010a0:	90429944 	lbu	v0,-26300(v0)
bfc010a4:	3c050001 	lui	a1,0x1
bfc010a8:	00a42821 	addu	a1,a1,a0
bfc010ac:	8ca59944 	lw	a1,-26300(a1)
bfc010b0:	3c040001 	lui	a0,0x1
bfc010b4:	00852021 	addu	a0,a0,a1
bfc010b8:	8c849944 	lw	a0,-26300(a0)
bfc010bc:	3c060001 	lui	a2,0x1
bfc010c0:	00c53021 	addu	a2,a2,a1
bfc010c4:	8cc69944 	lw	a2,-26300(a2)
bfc010c8:	1443076e 	bne	v0,v1,bfc02e84 <inst_error>
bfc010cc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:39
bfc010d0:	3c09952b 	lui	t1,0x952b
bfc010d4:	3529094a 	ori	t1,t1,0x94a
bfc010d8:	3c08800d 	lui	t0,0x800d
bfc010dc:	35084a94 	ori	t0,t0,0x4a94
bfc010e0:	2403004a 	li	v1,74
bfc010e4:	ad095700 	sw	t1,22272(t0)
bfc010e8:	25040004 	addiu	a0,t0,4
bfc010ec:	2505fff8 	addiu	a1,t0,-8
bfc010f0:	ac845700 	sw	a0,22272(a0)
bfc010f4:	aca55700 	sw	a1,22272(a1)
bfc010f8:	91025700 	lbu	v0,22272(t0)
bfc010fc:	8c855700 	lw	a1,22272(a0)
bfc01100:	8ca45700 	lw	a0,22272(a1)
bfc01104:	8ca65700 	lw	a2,22272(a1)
bfc01108:	1443075e 	bne	v0,v1,bfc02e84 <inst_error>
bfc0110c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:40
bfc01110:	3c09407a 	lui	t1,0x407a
bfc01114:	35298b80 	ori	t1,t1,0x8b80
bfc01118:	3c08800d 	lui	t0,0x800d
bfc0111c:	3508bb68 	ori	t0,t0,0xbb68
bfc01120:	24030080 	li	v1,128
bfc01124:	ad093d78 	sw	t1,15736(t0)
bfc01128:	25040004 	addiu	a0,t0,4
bfc0112c:	2505fff8 	addiu	a1,t0,-8
bfc01130:	ac843d78 	sw	a0,15736(a0)
bfc01134:	aca53d78 	sw	a1,15736(a1)
bfc01138:	91023d78 	lbu	v0,15736(t0)
bfc0113c:	8c853d78 	lw	a1,15736(a0)
bfc01140:	8ca43d78 	lw	a0,15736(a1)
bfc01144:	8ca63d78 	lw	a2,15736(a1)
bfc01148:	1443074e 	bne	v0,v1,bfc02e84 <inst_error>
bfc0114c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:41
bfc01150:	3c091ca9 	lui	t1,0x1ca9
bfc01154:	35293e6d 	ori	t1,t1,0x3e6d
bfc01158:	3c08800d 	lui	t0,0x800d
bfc0115c:	35080c60 	ori	t0,t0,0xc60
bfc01160:	2403006d 	li	v1,109
bfc01164:	ad097e14 	sw	t1,32276(t0)
bfc01168:	25040004 	addiu	a0,t0,4
bfc0116c:	2505fff8 	addiu	a1,t0,-8
bfc01170:	ac847e14 	sw	a0,32276(a0)
bfc01174:	aca57e14 	sw	a1,32276(a1)
bfc01178:	91027e14 	lbu	v0,32276(t0)
bfc0117c:	8c857e14 	lw	a1,32276(a0)
bfc01180:	8ca47e14 	lw	a0,32276(a1)
bfc01184:	8ca67e14 	lw	a2,32276(a1)
bfc01188:	1443073e 	bne	v0,v1,bfc02e84 <inst_error>
bfc0118c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:42
bfc01190:	3c09cbb3 	lui	t1,0xcbb3
bfc01194:	35295de0 	ori	t1,t1,0x5de0
bfc01198:	3c08800d 	lui	t0,0x800d
bfc0119c:	35082358 	ori	t0,t0,0x2358
bfc011a0:	240300e0 	li	v1,224
bfc011a4:	ad0924e0 	sw	t1,9440(t0)
bfc011a8:	25040004 	addiu	a0,t0,4
bfc011ac:	2505fff8 	addiu	a1,t0,-8
bfc011b0:	ac8424e0 	sw	a0,9440(a0)
bfc011b4:	aca524e0 	sw	a1,9440(a1)
bfc011b8:	910224e0 	lbu	v0,9440(t0)
bfc011bc:	8c8524e0 	lw	a1,9440(a0)
bfc011c0:	8ca424e0 	lw	a0,9440(a1)
bfc011c4:	8ca624e0 	lw	a2,9440(a1)
bfc011c8:	1443072e 	bne	v0,v1,bfc02e84 <inst_error>
bfc011cc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:43
bfc011d0:	3c098bc6 	lui	t1,0x8bc6
bfc011d4:	35290e3a 	ori	t1,t1,0xe3a
bfc011d8:	3c08800d 	lui	t0,0x800d
bfc011dc:	35082aa0 	ori	t0,t0,0x2aa0
bfc011e0:	240300c6 	li	v1,198
bfc011e4:	ad093548 	sw	t1,13640(t0)
bfc011e8:	25040004 	addiu	a0,t0,4
bfc011ec:	2505fff8 	addiu	a1,t0,-8
bfc011f0:	ac843548 	sw	a0,13640(a0)
bfc011f4:	aca53548 	sw	a1,13640(a1)
bfc011f8:	9102354a 	lbu	v0,13642(t0)
bfc011fc:	8c853548 	lw	a1,13640(a0)
bfc01200:	8ca43548 	lw	a0,13640(a1)
bfc01204:	8ca63548 	lw	a2,13640(a1)
bfc01208:	1443071e 	bne	v0,v1,bfc02e84 <inst_error>
bfc0120c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:44
bfc01210:	3c099502 	lui	t1,0x9502
bfc01214:	35290f1e 	ori	t1,t1,0xf1e
bfc01218:	3c08800d 	lui	t0,0x800d
bfc0121c:	35082008 	ori	t0,t0,0x2008
bfc01220:	2403000f 	li	v1,15
bfc01224:	ad09320c 	sw	t1,12812(t0)
bfc01228:	25040004 	addiu	a0,t0,4
bfc0122c:	2505fff8 	addiu	a1,t0,-8
bfc01230:	ac84320c 	sw	a0,12812(a0)
bfc01234:	aca5320c 	sw	a1,12812(a1)
bfc01238:	9102320d 	lbu	v0,12813(t0)
bfc0123c:	8c85320c 	lw	a1,12812(a0)
bfc01240:	8ca4320c 	lw	a0,12812(a1)
bfc01244:	8ca6320c 	lw	a2,12812(a1)
bfc01248:	1443070e 	bne	v0,v1,bfc02e84 <inst_error>
bfc0124c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:45
bfc01250:	3c094c60 	lui	t1,0x4c60
bfc01254:	352982f4 	ori	t1,t1,0x82f4
bfc01258:	3c08800d 	lui	t0,0x800d
bfc0125c:	350829e8 	ori	t0,t0,0x29e8
bfc01260:	240300f4 	li	v1,244
bfc01264:	ad0959ec 	sw	t1,23020(t0)
bfc01268:	25040004 	addiu	a0,t0,4
bfc0126c:	2505fff8 	addiu	a1,t0,-8
bfc01270:	ac8459ec 	sw	a0,23020(a0)
bfc01274:	aca559ec 	sw	a1,23020(a1)
bfc01278:	910259ec 	lbu	v0,23020(t0)
bfc0127c:	8c8559ec 	lw	a1,23020(a0)
bfc01280:	8ca459ec 	lw	a0,23020(a1)
bfc01284:	8ca659ec 	lw	a2,23020(a1)
bfc01288:	144306fe 	bne	v0,v1,bfc02e84 <inst_error>
bfc0128c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:46
bfc01290:	3c09e8c2 	lui	t1,0xe8c2
bfc01294:	35299c44 	ori	t1,t1,0x9c44
bfc01298:	3c08800d 	lui	t0,0x800d
bfc0129c:	350841e4 	ori	t0,t0,0x41e4
bfc012a0:	240300c2 	li	v1,194
bfc012a4:	ad0930c8 	sw	t1,12488(t0)
bfc012a8:	25040004 	addiu	a0,t0,4
bfc012ac:	2505fff8 	addiu	a1,t0,-8
bfc012b0:	ac8430c8 	sw	a0,12488(a0)
bfc012b4:	aca530c8 	sw	a1,12488(a1)
bfc012b8:	910230ca 	lbu	v0,12490(t0)
bfc012bc:	8c8530c8 	lw	a1,12488(a0)
bfc012c0:	8ca430c8 	lw	a0,12488(a1)
bfc012c4:	8ca630c8 	lw	a2,12488(a1)
bfc012c8:	144306ee 	bne	v0,v1,bfc02e84 <inst_error>
bfc012cc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:47
bfc012d0:	3c097dd8 	lui	t1,0x7dd8
bfc012d4:	35299185 	ori	t1,t1,0x9185
bfc012d8:	3c08800d 	lui	t0,0x800d
bfc012dc:	3508c0a8 	ori	t0,t0,0xc0a8
bfc012e0:	24030085 	li	v1,133
bfc012e4:	ad093184 	sw	t1,12676(t0)
bfc012e8:	25040004 	addiu	a0,t0,4
bfc012ec:	2505fff8 	addiu	a1,t0,-8
bfc012f0:	ac843184 	sw	a0,12676(a0)
bfc012f4:	aca53184 	sw	a1,12676(a1)
bfc012f8:	91023184 	lbu	v0,12676(t0)
bfc012fc:	8c853184 	lw	a1,12676(a0)
bfc01300:	8ca43184 	lw	a0,12676(a1)
bfc01304:	8ca63184 	lw	a2,12676(a1)
bfc01308:	144306de 	bne	v0,v1,bfc02e84 <inst_error>
bfc0130c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:48
bfc01310:	3c09f2ef 	lui	t1,0xf2ef
bfc01314:	35292428 	ori	t1,t1,0x2428
bfc01318:	3c08800d 	lui	t0,0x800d
bfc0131c:	35084478 	ori	t0,t0,0x4478
bfc01320:	24030028 	li	v1,40
bfc01324:	3c010001 	lui	at,0x1
bfc01328:	00280821 	addu	at,at,t0
bfc0132c:	ac29b5bc 	sw	t1,-19012(at)
bfc01330:	25040004 	addiu	a0,t0,4
bfc01334:	2505fff8 	addiu	a1,t0,-8
bfc01338:	3c010001 	lui	at,0x1
bfc0133c:	00240821 	addu	at,at,a0
bfc01340:	ac24b5bc 	sw	a0,-19012(at)
bfc01344:	3c010001 	lui	at,0x1
bfc01348:	00250821 	addu	at,at,a1
bfc0134c:	ac25b5bc 	sw	a1,-19012(at)
bfc01350:	3c020001 	lui	v0,0x1
bfc01354:	00481021 	addu	v0,v0,t0
bfc01358:	9042b5bc 	lbu	v0,-19012(v0)
bfc0135c:	3c050001 	lui	a1,0x1
bfc01360:	00a42821 	addu	a1,a1,a0
bfc01364:	8ca5b5bc 	lw	a1,-19012(a1)
bfc01368:	3c040001 	lui	a0,0x1
bfc0136c:	00852021 	addu	a0,a0,a1
bfc01370:	8c84b5bc 	lw	a0,-19012(a0)
bfc01374:	3c060001 	lui	a2,0x1
bfc01378:	00c53021 	addu	a2,a2,a1
bfc0137c:	8cc6b5bc 	lw	a2,-19012(a2)
bfc01380:	144306c0 	bne	v0,v1,bfc02e84 <inst_error>
bfc01384:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:49
bfc01388:	3c092789 	lui	t1,0x2789
bfc0138c:	3529e735 	ori	t1,t1,0xe735
bfc01390:	3c08800d 	lui	t0,0x800d
bfc01394:	35088088 	ori	t0,t0,0x8088
bfc01398:	24030035 	li	v1,53
bfc0139c:	ad09187c 	sw	t1,6268(t0)
bfc013a0:	25040004 	addiu	a0,t0,4
bfc013a4:	2505fff8 	addiu	a1,t0,-8
bfc013a8:	ac84187c 	sw	a0,6268(a0)
bfc013ac:	aca5187c 	sw	a1,6268(a1)
bfc013b0:	9102187c 	lbu	v0,6268(t0)
bfc013b4:	8c85187c 	lw	a1,6268(a0)
bfc013b8:	8ca4187c 	lw	a0,6268(a1)
bfc013bc:	8ca6187c 	lw	a2,6268(a1)
bfc013c0:	144306b0 	bne	v0,v1,bfc02e84 <inst_error>
bfc013c4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:50
bfc013c8:	3c095761 	lui	t1,0x5761
bfc013cc:	35293900 	ori	t1,t1,0x3900
bfc013d0:	3c08800d 	lui	t0,0x800d
bfc013d4:	35086434 	ori	t0,t0,0x6434
bfc013d8:	24030000 	li	v1,0
bfc013dc:	3c010001 	lui	at,0x1
bfc013e0:	00280821 	addu	at,at,t0
bfc013e4:	ac2980c8 	sw	t1,-32568(at)
bfc013e8:	25040004 	addiu	a0,t0,4
bfc013ec:	2505fff8 	addiu	a1,t0,-8
bfc013f0:	3c010001 	lui	at,0x1
bfc013f4:	00240821 	addu	at,at,a0
bfc013f8:	ac2480c8 	sw	a0,-32568(at)
bfc013fc:	3c010001 	lui	at,0x1
bfc01400:	00250821 	addu	at,at,a1
bfc01404:	ac2580c8 	sw	a1,-32568(at)
bfc01408:	3c020001 	lui	v0,0x1
bfc0140c:	00481021 	addu	v0,v0,t0
bfc01410:	904280c8 	lbu	v0,-32568(v0)
bfc01414:	3c050001 	lui	a1,0x1
bfc01418:	00a42821 	addu	a1,a1,a0
bfc0141c:	8ca580c8 	lw	a1,-32568(a1)
bfc01420:	3c040001 	lui	a0,0x1
bfc01424:	00852021 	addu	a0,a0,a1
bfc01428:	8c8480c8 	lw	a0,-32568(a0)
bfc0142c:	3c060001 	lui	a2,0x1
bfc01430:	00c53021 	addu	a2,a2,a1
bfc01434:	8cc680c8 	lw	a2,-32568(a2)
bfc01438:	14430692 	bne	v0,v1,bfc02e84 <inst_error>
bfc0143c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:51
bfc01440:	3c09f831 	lui	t1,0xf831
bfc01444:	3529d258 	ori	t1,t1,0xd258
bfc01448:	3c08800d 	lui	t0,0x800d
bfc0144c:	3508b5f0 	ori	t0,t0,0xb5f0
bfc01450:	24030058 	li	v1,88
bfc01454:	ad0912cc 	sw	t1,4812(t0)
bfc01458:	25040004 	addiu	a0,t0,4
bfc0145c:	2505fff8 	addiu	a1,t0,-8
bfc01460:	ac8412cc 	sw	a0,4812(a0)
bfc01464:	aca512cc 	sw	a1,4812(a1)
bfc01468:	910212cc 	lbu	v0,4812(t0)
bfc0146c:	8c8512cc 	lw	a1,4812(a0)
bfc01470:	8ca412cc 	lw	a0,4812(a1)
bfc01474:	8ca612cc 	lw	a2,4812(a1)
bfc01478:	14430682 	bne	v0,v1,bfc02e84 <inst_error>
bfc0147c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:52
bfc01480:	3c099476 	lui	t1,0x9476
bfc01484:	35298ba0 	ori	t1,t1,0x8ba0
bfc01488:	3c08800d 	lui	t0,0x800d
bfc0148c:	35089ef8 	ori	t0,t0,0x9ef8
bfc01490:	240300a0 	li	v1,160
bfc01494:	ad093d84 	sw	t1,15748(t0)
bfc01498:	25040004 	addiu	a0,t0,4
bfc0149c:	2505fff8 	addiu	a1,t0,-8
bfc014a0:	ac843d84 	sw	a0,15748(a0)
bfc014a4:	aca53d84 	sw	a1,15748(a1)
bfc014a8:	91023d84 	lbu	v0,15748(t0)
bfc014ac:	8c853d84 	lw	a1,15748(a0)
bfc014b0:	8ca43d84 	lw	a0,15748(a1)
bfc014b4:	8ca63d84 	lw	a2,15748(a1)
bfc014b8:	14430672 	bne	v0,v1,bfc02e84 <inst_error>
bfc014bc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:53
bfc014c0:	3c096f5a 	lui	t1,0x6f5a
bfc014c4:	3529b393 	ori	t1,t1,0xb393
bfc014c8:	3c08800d 	lui	t0,0x800d
bfc014cc:	350823d0 	ori	t0,t0,0x23d0
bfc014d0:	24030093 	li	v1,147
bfc014d4:	ad0961b8 	sw	t1,25016(t0)
bfc014d8:	25040004 	addiu	a0,t0,4
bfc014dc:	2505fff8 	addiu	a1,t0,-8
bfc014e0:	ac8461b8 	sw	a0,25016(a0)
bfc014e4:	aca561b8 	sw	a1,25016(a1)
bfc014e8:	910261b8 	lbu	v0,25016(t0)
bfc014ec:	8c8561b8 	lw	a1,25016(a0)
bfc014f0:	8ca461b8 	lw	a0,25016(a1)
bfc014f4:	8ca661b8 	lw	a2,25016(a1)
bfc014f8:	14430662 	bne	v0,v1,bfc02e84 <inst_error>
bfc014fc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:54
bfc01500:	3c09d734 	lui	t1,0xd734
bfc01504:	352983da 	ori	t1,t1,0x83da
bfc01508:	3c08800d 	lui	t0,0x800d
bfc0150c:	35087a70 	ori	t0,t0,0x7a70
bfc01510:	24030083 	li	v1,131
bfc01514:	ad095008 	sw	t1,20488(t0)
bfc01518:	25040004 	addiu	a0,t0,4
bfc0151c:	2505fff8 	addiu	a1,t0,-8
bfc01520:	ac845008 	sw	a0,20488(a0)
bfc01524:	aca55008 	sw	a1,20488(a1)
bfc01528:	91025009 	lbu	v0,20489(t0)
bfc0152c:	8c855008 	lw	a1,20488(a0)
bfc01530:	8ca45008 	lw	a0,20488(a1)
bfc01534:	8ca65008 	lw	a2,20488(a1)
bfc01538:	14430652 	bne	v0,v1,bfc02e84 <inst_error>
bfc0153c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:55
bfc01540:	3c094ab1 	lui	t1,0x4ab1
bfc01544:	3529c5a6 	ori	t1,t1,0xc5a6
bfc01548:	3c08800d 	lui	t0,0x800d
bfc0154c:	35086ea8 	ori	t0,t0,0x6ea8
bfc01550:	240300a6 	li	v1,166
bfc01554:	ad0961a0 	sw	t1,24992(t0)
bfc01558:	25040004 	addiu	a0,t0,4
bfc0155c:	2505fff8 	addiu	a1,t0,-8
bfc01560:	ac8461a0 	sw	a0,24992(a0)
bfc01564:	aca561a0 	sw	a1,24992(a1)
bfc01568:	910261a0 	lbu	v0,24992(t0)
bfc0156c:	8c8561a0 	lw	a1,24992(a0)
bfc01570:	8ca461a0 	lw	a0,24992(a1)
bfc01574:	8ca661a0 	lw	a2,24992(a1)
bfc01578:	14430642 	bne	v0,v1,bfc02e84 <inst_error>
bfc0157c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:56
bfc01580:	3c09d4b6 	lui	t1,0xd4b6
bfc01584:	3529c948 	ori	t1,t1,0xc948
bfc01588:	3c08800d 	lui	t0,0x800d
bfc0158c:	35085864 	ori	t0,t0,0x5864
bfc01590:	240300d4 	li	v1,212
bfc01594:	ad096d0c 	sw	t1,27916(t0)
bfc01598:	25040004 	addiu	a0,t0,4
bfc0159c:	2505fff8 	addiu	a1,t0,-8
bfc015a0:	ac846d0c 	sw	a0,27916(a0)
bfc015a4:	aca56d0c 	sw	a1,27916(a1)
bfc015a8:	91026d0f 	lbu	v0,27919(t0)
bfc015ac:	8c856d0c 	lw	a1,27916(a0)
bfc015b0:	8ca46d0c 	lw	a0,27916(a1)
bfc015b4:	8ca66d0c 	lw	a2,27916(a1)
bfc015b8:	14430632 	bne	v0,v1,bfc02e84 <inst_error>
bfc015bc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:57
bfc015c0:	3c091b18 	lui	t1,0x1b18
bfc015c4:	35299c1c 	ori	t1,t1,0x9c1c
bfc015c8:	3c08800d 	lui	t0,0x800d
bfc015cc:	35082564 	ori	t0,t0,0x2564
bfc015d0:	24030018 	li	v1,24
bfc015d4:	ad09317c 	sw	t1,12668(t0)
bfc015d8:	25040004 	addiu	a0,t0,4
bfc015dc:	2505fff8 	addiu	a1,t0,-8
bfc015e0:	ac84317c 	sw	a0,12668(a0)
bfc015e4:	aca5317c 	sw	a1,12668(a1)
bfc015e8:	9102317e 	lbu	v0,12670(t0)
bfc015ec:	8c85317c 	lw	a1,12668(a0)
bfc015f0:	8ca4317c 	lw	a0,12668(a1)
bfc015f4:	8ca6317c 	lw	a2,12668(a1)
bfc015f8:	14430622 	bne	v0,v1,bfc02e84 <inst_error>
bfc015fc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:58
bfc01600:	3c09861b 	lui	t1,0x861b
bfc01604:	35293d98 	ori	t1,t1,0x3d98
bfc01608:	3c08800d 	lui	t0,0x800d
bfc0160c:	35085df8 	ori	t0,t0,0x5df8
bfc01610:	24030098 	li	v1,152
bfc01614:	3c010001 	lui	at,0x1
bfc01618:	00280821 	addu	at,at,t0
bfc0161c:	ac2989a0 	sw	t1,-30304(at)
bfc01620:	25040004 	addiu	a0,t0,4
bfc01624:	2505fff8 	addiu	a1,t0,-8
bfc01628:	3c010001 	lui	at,0x1
bfc0162c:	00240821 	addu	at,at,a0
bfc01630:	ac2489a0 	sw	a0,-30304(at)
bfc01634:	3c010001 	lui	at,0x1
bfc01638:	00250821 	addu	at,at,a1
bfc0163c:	ac2589a0 	sw	a1,-30304(at)
bfc01640:	3c020001 	lui	v0,0x1
bfc01644:	00481021 	addu	v0,v0,t0
bfc01648:	904289a0 	lbu	v0,-30304(v0)
bfc0164c:	3c050001 	lui	a1,0x1
bfc01650:	00a42821 	addu	a1,a1,a0
bfc01654:	8ca589a0 	lw	a1,-30304(a1)
bfc01658:	3c040001 	lui	a0,0x1
bfc0165c:	00852021 	addu	a0,a0,a1
bfc01660:	8c8489a0 	lw	a0,-30304(a0)
bfc01664:	3c060001 	lui	a2,0x1
bfc01668:	00c53021 	addu	a2,a2,a1
bfc0166c:	8cc689a0 	lw	a2,-30304(a2)
bfc01670:	14430604 	bne	v0,v1,bfc02e84 <inst_error>
bfc01674:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:59
bfc01678:	3c091f87 	lui	t1,0x1f87
bfc0167c:	35296f58 	ori	t1,t1,0x6f58
bfc01680:	3c08800d 	lui	t0,0x800d
bfc01684:	350810e0 	ori	t0,t0,0x10e0
bfc01688:	24030058 	li	v1,88
bfc0168c:	ad0946bc 	sw	t1,18108(t0)
bfc01690:	25040004 	addiu	a0,t0,4
bfc01694:	2505fff8 	addiu	a1,t0,-8
bfc01698:	ac8446bc 	sw	a0,18108(a0)
bfc0169c:	aca546bc 	sw	a1,18108(a1)
bfc016a0:	910246bc 	lbu	v0,18108(t0)
bfc016a4:	8c8546bc 	lw	a1,18108(a0)
bfc016a8:	8ca446bc 	lw	a0,18108(a1)
bfc016ac:	8ca646bc 	lw	a2,18108(a1)
bfc016b0:	144305f4 	bne	v0,v1,bfc02e84 <inst_error>
bfc016b4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:60
bfc016b8:	3c093b20 	lui	t1,0x3b20
bfc016bc:	35297858 	ori	t1,t1,0x7858
bfc016c0:	3c08800d 	lui	t0,0x800d
bfc016c4:	350814a4 	ori	t0,t0,0x14a4
bfc016c8:	24030020 	li	v1,32
bfc016cc:	ad091cf4 	sw	t1,7412(t0)
bfc016d0:	25040004 	addiu	a0,t0,4
bfc016d4:	2505fff8 	addiu	a1,t0,-8
bfc016d8:	ac841cf4 	sw	a0,7412(a0)
bfc016dc:	aca51cf4 	sw	a1,7412(a1)
bfc016e0:	91021cf6 	lbu	v0,7414(t0)
bfc016e4:	8c851cf4 	lw	a1,7412(a0)
bfc016e8:	8ca41cf4 	lw	a0,7412(a1)
bfc016ec:	8ca61cf4 	lw	a2,7412(a1)
bfc016f0:	144305e4 	bne	v0,v1,bfc02e84 <inst_error>
bfc016f4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:61
bfc016f8:	3c0967c1 	lui	t1,0x67c1
bfc016fc:	3529dd18 	ori	t1,t1,0xdd18
bfc01700:	3c08800d 	lui	t0,0x800d
bfc01704:	3508d370 	ori	t0,t0,0xd370
bfc01708:	240300c1 	li	v1,193
bfc0170c:	ad092324 	sw	t1,8996(t0)
bfc01710:	25040004 	addiu	a0,t0,4
bfc01714:	2505fff8 	addiu	a1,t0,-8
bfc01718:	ac842324 	sw	a0,8996(a0)
bfc0171c:	aca52324 	sw	a1,8996(a1)
bfc01720:	91022326 	lbu	v0,8998(t0)
bfc01724:	8c852324 	lw	a1,8996(a0)
bfc01728:	8ca42324 	lw	a0,8996(a1)
bfc0172c:	8ca62324 	lw	a2,8996(a1)
bfc01730:	144305d4 	bne	v0,v1,bfc02e84 <inst_error>
bfc01734:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:62
bfc01738:	3c097066 	lui	t1,0x7066
bfc0173c:	352969a8 	ori	t1,t1,0x69a8
bfc01740:	3c08800d 	lui	t0,0x800d
bfc01744:	350823dc 	ori	t0,t0,0x23dc
bfc01748:	240300a8 	li	v1,168
bfc0174c:	ad093fb0 	sw	t1,16304(t0)
bfc01750:	25040004 	addiu	a0,t0,4
bfc01754:	2505fff8 	addiu	a1,t0,-8
bfc01758:	ac843fb0 	sw	a0,16304(a0)
bfc0175c:	aca53fb0 	sw	a1,16304(a1)
bfc01760:	91023fb0 	lbu	v0,16304(t0)
bfc01764:	8c853fb0 	lw	a1,16304(a0)
bfc01768:	8ca43fb0 	lw	a0,16304(a1)
bfc0176c:	8ca63fb0 	lw	a2,16304(a1)
bfc01770:	144305c4 	bne	v0,v1,bfc02e84 <inst_error>
bfc01774:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:63
bfc01778:	3c090e43 	lui	t1,0xe43
bfc0177c:	352983c0 	ori	t1,t1,0x83c0
bfc01780:	3c08800d 	lui	t0,0x800d
bfc01784:	24030083 	li	v1,131
bfc01788:	ad0944a8 	sw	t1,17576(t0)
bfc0178c:	25040004 	addiu	a0,t0,4
bfc01790:	2505fff8 	addiu	a1,t0,-8
bfc01794:	ac8444a8 	sw	a0,17576(a0)
bfc01798:	aca544a8 	sw	a1,17576(a1)
bfc0179c:	910244a9 	lbu	v0,17577(t0)
bfc017a0:	8c8544a8 	lw	a1,17576(a0)
bfc017a4:	8ca444a8 	lw	a0,17576(a1)
bfc017a8:	8ca644a8 	lw	a2,17576(a1)
bfc017ac:	144305b5 	bne	v0,v1,bfc02e84 <inst_error>
bfc017b0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:64
bfc017b4:	3c09d9c8 	lui	t1,0xd9c8
bfc017b8:	352961cc 	ori	t1,t1,0x61cc
bfc017bc:	3c08800d 	lui	t0,0x800d
bfc017c0:	240300c8 	li	v1,200
bfc017c4:	ad095d3c 	sw	t1,23868(t0)
bfc017c8:	25040004 	addiu	a0,t0,4
bfc017cc:	2505fff8 	addiu	a1,t0,-8
bfc017d0:	ac845d3c 	sw	a0,23868(a0)
bfc017d4:	aca55d3c 	sw	a1,23868(a1)
bfc017d8:	91025d3e 	lbu	v0,23870(t0)
bfc017dc:	8c855d3c 	lw	a1,23868(a0)
bfc017e0:	8ca45d3c 	lw	a0,23868(a1)
bfc017e4:	8ca65d3c 	lw	a2,23868(a1)
bfc017e8:	144305a6 	bne	v0,v1,bfc02e84 <inst_error>
bfc017ec:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:65
bfc017f0:	3c09fecf 	lui	t1,0xfecf
bfc017f4:	352979cc 	ori	t1,t1,0x79cc
bfc017f8:	3c08800d 	lui	t0,0x800d
bfc017fc:	240300cc 	li	v1,204
bfc01800:	ad096c20 	sw	t1,27680(t0)
bfc01804:	25040004 	addiu	a0,t0,4
bfc01808:	2505fff8 	addiu	a1,t0,-8
bfc0180c:	ac846c20 	sw	a0,27680(a0)
bfc01810:	aca56c20 	sw	a1,27680(a1)
bfc01814:	91026c20 	lbu	v0,27680(t0)
bfc01818:	8c856c20 	lw	a1,27680(a0)
bfc0181c:	8ca46c20 	lw	a0,27680(a1)
bfc01820:	8ca66c20 	lw	a2,27680(a1)
bfc01824:	14430597 	bne	v0,v1,bfc02e84 <inst_error>
bfc01828:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:66
bfc0182c:	3c0962ea 	lui	t1,0x62ea
bfc01830:	3529b940 	ori	t1,t1,0xb940
bfc01834:	3c08800d 	lui	t0,0x800d
bfc01838:	240300b9 	li	v1,185
bfc0183c:	3c010001 	lui	at,0x1
bfc01840:	00280821 	addu	at,at,t0
bfc01844:	ac29cfe0 	sw	t1,-12320(at)
bfc01848:	25040004 	addiu	a0,t0,4
bfc0184c:	2505fff8 	addiu	a1,t0,-8
bfc01850:	3c010001 	lui	at,0x1
bfc01854:	00240821 	addu	at,at,a0
bfc01858:	ac24cfe0 	sw	a0,-12320(at)
bfc0185c:	3c010001 	lui	at,0x1
bfc01860:	00250821 	addu	at,at,a1
bfc01864:	ac25cfe0 	sw	a1,-12320(at)
bfc01868:	3c020001 	lui	v0,0x1
bfc0186c:	00481021 	addu	v0,v0,t0
bfc01870:	9042cfe1 	lbu	v0,-12319(v0)
bfc01874:	3c050001 	lui	a1,0x1
bfc01878:	00a42821 	addu	a1,a1,a0
bfc0187c:	8ca5cfe0 	lw	a1,-12320(a1)
bfc01880:	3c040001 	lui	a0,0x1
bfc01884:	00852021 	addu	a0,a0,a1
bfc01888:	8c84cfe0 	lw	a0,-12320(a0)
bfc0188c:	3c060001 	lui	a2,0x1
bfc01890:	00c53021 	addu	a2,a2,a1
bfc01894:	8cc6cfe0 	lw	a2,-12320(a2)
bfc01898:	1443057a 	bne	v0,v1,bfc02e84 <inst_error>
bfc0189c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:67
bfc018a0:	3c09c5f7 	lui	t1,0xc5f7
bfc018a4:	35291c93 	ori	t1,t1,0x1c93
bfc018a8:	3c08800d 	lui	t0,0x800d
bfc018ac:	24030093 	li	v1,147
bfc018b0:	ad0903ac 	sw	t1,940(t0)
bfc018b4:	25040004 	addiu	a0,t0,4
bfc018b8:	2505fff8 	addiu	a1,t0,-8
bfc018bc:	ac8403ac 	sw	a0,940(a0)
bfc018c0:	aca503ac 	sw	a1,940(a1)
bfc018c4:	910203ac 	lbu	v0,940(t0)
bfc018c8:	8c8503ac 	lw	a1,940(a0)
bfc018cc:	8ca403ac 	lw	a0,940(a1)
bfc018d0:	8ca603ac 	lw	a2,940(a1)
bfc018d4:	1443056b 	bne	v0,v1,bfc02e84 <inst_error>
bfc018d8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:68
bfc018dc:	3c09dc99 	lui	t1,0xdc99
bfc018e0:	35290bc0 	ori	t1,t1,0xbc0
bfc018e4:	3c08800d 	lui	t0,0x800d
bfc018e8:	24030099 	li	v1,153
bfc018ec:	ad094630 	sw	t1,17968(t0)
bfc018f0:	25040004 	addiu	a0,t0,4
bfc018f4:	2505fff8 	addiu	a1,t0,-8
bfc018f8:	ac844630 	sw	a0,17968(a0)
bfc018fc:	aca54630 	sw	a1,17968(a1)
bfc01900:	91024632 	lbu	v0,17970(t0)
bfc01904:	8c854630 	lw	a1,17968(a0)
bfc01908:	8ca44630 	lw	a0,17968(a1)
bfc0190c:	8ca64630 	lw	a2,17968(a1)
bfc01910:	1443055c 	bne	v0,v1,bfc02e84 <inst_error>
bfc01914:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:69
bfc01918:	3c09ffa8 	lui	t1,0xffa8
bfc0191c:	352921b0 	ori	t1,t1,0x21b0
bfc01920:	3c08800d 	lui	t0,0x800d
bfc01924:	240300a8 	li	v1,168
bfc01928:	ad090478 	sw	t1,1144(t0)
bfc0192c:	25040004 	addiu	a0,t0,4
bfc01930:	2505fff8 	addiu	a1,t0,-8
bfc01934:	ac840478 	sw	a0,1144(a0)
bfc01938:	aca50478 	sw	a1,1144(a1)
bfc0193c:	9102047a 	lbu	v0,1146(t0)
bfc01940:	8c850478 	lw	a1,1144(a0)
bfc01944:	8ca40478 	lw	a0,1144(a1)
bfc01948:	8ca60478 	lw	a2,1144(a1)
bfc0194c:	1443054d 	bne	v0,v1,bfc02e84 <inst_error>
bfc01950:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:70
bfc01954:	3c09669c 	lui	t1,0x669c
bfc01958:	3529b8f8 	ori	t1,t1,0xb8f8
bfc0195c:	3c08800d 	lui	t0,0x800d
bfc01960:	240300f8 	li	v1,248
bfc01964:	ad095dc8 	sw	t1,24008(t0)
bfc01968:	25040004 	addiu	a0,t0,4
bfc0196c:	2505fff8 	addiu	a1,t0,-8
bfc01970:	ac845dc8 	sw	a0,24008(a0)
bfc01974:	aca55dc8 	sw	a1,24008(a1)
bfc01978:	91025dc8 	lbu	v0,24008(t0)
bfc0197c:	8c855dc8 	lw	a1,24008(a0)
bfc01980:	8ca45dc8 	lw	a0,24008(a1)
bfc01984:	8ca65dc8 	lw	a2,24008(a1)
bfc01988:	1443053e 	bne	v0,v1,bfc02e84 <inst_error>
bfc0198c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:71
bfc01990:	3c09d965 	lui	t1,0xd965
bfc01994:	35290b98 	ori	t1,t1,0xb98
bfc01998:	3c08800d 	lui	t0,0x800d
bfc0199c:	24030065 	li	v1,101
bfc019a0:	3c010001 	lui	at,0x1
bfc019a4:	00280821 	addu	at,at,t0
bfc019a8:	ac29d200 	sw	t1,-11776(at)
bfc019ac:	25040004 	addiu	a0,t0,4
bfc019b0:	2505fff8 	addiu	a1,t0,-8
bfc019b4:	3c010001 	lui	at,0x1
bfc019b8:	00240821 	addu	at,at,a0
bfc019bc:	ac24d200 	sw	a0,-11776(at)
bfc019c0:	3c010001 	lui	at,0x1
bfc019c4:	00250821 	addu	at,at,a1
bfc019c8:	ac25d200 	sw	a1,-11776(at)
bfc019cc:	3c020001 	lui	v0,0x1
bfc019d0:	00481021 	addu	v0,v0,t0
bfc019d4:	9042d202 	lbu	v0,-11774(v0)
bfc019d8:	3c050001 	lui	a1,0x1
bfc019dc:	00a42821 	addu	a1,a1,a0
bfc019e0:	8ca5d200 	lw	a1,-11776(a1)
bfc019e4:	3c040001 	lui	a0,0x1
bfc019e8:	00852021 	addu	a0,a0,a1
bfc019ec:	8c84d200 	lw	a0,-11776(a0)
bfc019f0:	3c060001 	lui	a2,0x1
bfc019f4:	00c53021 	addu	a2,a2,a1
bfc019f8:	8cc6d200 	lw	a2,-11776(a2)
bfc019fc:	14430521 	bne	v0,v1,bfc02e84 <inst_error>
bfc01a00:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:72
bfc01a04:	3c09845c 	lui	t1,0x845c
bfc01a08:	352979fc 	ori	t1,t1,0x79fc
bfc01a0c:	3c08800d 	lui	t0,0x800d
bfc01a10:	240300fc 	li	v1,252
bfc01a14:	3c010001 	lui	at,0x1
bfc01a18:	00280821 	addu	at,at,t0
bfc01a1c:	ac29f504 	sw	t1,-2812(at)
bfc01a20:	25040004 	addiu	a0,t0,4
bfc01a24:	2505fff8 	addiu	a1,t0,-8
bfc01a28:	3c010001 	lui	at,0x1
bfc01a2c:	00240821 	addu	at,at,a0
bfc01a30:	ac24f504 	sw	a0,-2812(at)
bfc01a34:	3c010001 	lui	at,0x1
bfc01a38:	00250821 	addu	at,at,a1
bfc01a3c:	ac25f504 	sw	a1,-2812(at)
bfc01a40:	3c020001 	lui	v0,0x1
bfc01a44:	00481021 	addu	v0,v0,t0
bfc01a48:	9042f504 	lbu	v0,-2812(v0)
bfc01a4c:	3c050001 	lui	a1,0x1
bfc01a50:	00a42821 	addu	a1,a1,a0
bfc01a54:	8ca5f504 	lw	a1,-2812(a1)
bfc01a58:	3c040001 	lui	a0,0x1
bfc01a5c:	00852021 	addu	a0,a0,a1
bfc01a60:	8c84f504 	lw	a0,-2812(a0)
bfc01a64:	3c060001 	lui	a2,0x1
bfc01a68:	00c53021 	addu	a2,a2,a1
bfc01a6c:	8cc6f504 	lw	a2,-2812(a2)
bfc01a70:	14430504 	bne	v0,v1,bfc02e84 <inst_error>
bfc01a74:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:73
bfc01a78:	3c09a7ed 	lui	t1,0xa7ed
bfc01a7c:	35299420 	ori	t1,t1,0x9420
bfc01a80:	3c08800d 	lui	t0,0x800d
bfc01a84:	24030020 	li	v1,32
bfc01a88:	3c010001 	lui	at,0x1
bfc01a8c:	00280821 	addu	at,at,t0
bfc01a90:	ac29e5e8 	sw	t1,-6680(at)
bfc01a94:	25040004 	addiu	a0,t0,4
bfc01a98:	2505fff8 	addiu	a1,t0,-8
bfc01a9c:	3c010001 	lui	at,0x1
bfc01aa0:	00240821 	addu	at,at,a0
bfc01aa4:	ac24e5e8 	sw	a0,-6680(at)
bfc01aa8:	3c010001 	lui	at,0x1
bfc01aac:	00250821 	addu	at,at,a1
bfc01ab0:	ac25e5e8 	sw	a1,-6680(at)
bfc01ab4:	3c020001 	lui	v0,0x1
bfc01ab8:	00481021 	addu	v0,v0,t0
bfc01abc:	9042e5e8 	lbu	v0,-6680(v0)
bfc01ac0:	3c050001 	lui	a1,0x1
bfc01ac4:	00a42821 	addu	a1,a1,a0
bfc01ac8:	8ca5e5e8 	lw	a1,-6680(a1)
bfc01acc:	3c040001 	lui	a0,0x1
bfc01ad0:	00852021 	addu	a0,a0,a1
bfc01ad4:	8c84e5e8 	lw	a0,-6680(a0)
bfc01ad8:	3c060001 	lui	a2,0x1
bfc01adc:	00c53021 	addu	a2,a2,a1
bfc01ae0:	8cc6e5e8 	lw	a2,-6680(a2)
bfc01ae4:	144304e7 	bne	v0,v1,bfc02e84 <inst_error>
bfc01ae8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:74
bfc01aec:	3c09a458 	lui	t1,0xa458
bfc01af0:	3529f1f2 	ori	t1,t1,0xf1f2
bfc01af4:	3c08800d 	lui	t0,0x800d
bfc01af8:	240300f1 	li	v1,241
bfc01afc:	3c010001 	lui	at,0x1
bfc01b00:	00280821 	addu	at,at,t0
bfc01b04:	ac299124 	sw	t1,-28380(at)
bfc01b08:	25040004 	addiu	a0,t0,4
bfc01b0c:	2505fff8 	addiu	a1,t0,-8
bfc01b10:	3c010001 	lui	at,0x1
bfc01b14:	00240821 	addu	at,at,a0
bfc01b18:	ac249124 	sw	a0,-28380(at)
bfc01b1c:	3c010001 	lui	at,0x1
bfc01b20:	00250821 	addu	at,at,a1
bfc01b24:	ac259124 	sw	a1,-28380(at)
bfc01b28:	3c020001 	lui	v0,0x1
bfc01b2c:	00481021 	addu	v0,v0,t0
bfc01b30:	90429125 	lbu	v0,-28379(v0)
bfc01b34:	3c050001 	lui	a1,0x1
bfc01b38:	00a42821 	addu	a1,a1,a0
bfc01b3c:	8ca59124 	lw	a1,-28380(a1)
bfc01b40:	3c040001 	lui	a0,0x1
bfc01b44:	00852021 	addu	a0,a0,a1
bfc01b48:	8c849124 	lw	a0,-28380(a0)
bfc01b4c:	3c060001 	lui	a2,0x1
bfc01b50:	00c53021 	addu	a2,a2,a1
bfc01b54:	8cc69124 	lw	a2,-28380(a2)
bfc01b58:	144304ca 	bne	v0,v1,bfc02e84 <inst_error>
bfc01b5c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:75
bfc01b60:	3c09ad33 	lui	t1,0xad33
bfc01b64:	3529ad20 	ori	t1,t1,0xad20
bfc01b68:	3c08800d 	lui	t0,0x800d
bfc01b6c:	24030033 	li	v1,51
bfc01b70:	3c010001 	lui	at,0x1
bfc01b74:	00280821 	addu	at,at,t0
bfc01b78:	ac29db18 	sw	t1,-9448(at)
bfc01b7c:	25040004 	addiu	a0,t0,4
bfc01b80:	2505fff8 	addiu	a1,t0,-8
bfc01b84:	3c010001 	lui	at,0x1
bfc01b88:	00240821 	addu	at,at,a0
bfc01b8c:	ac24db18 	sw	a0,-9448(at)
bfc01b90:	3c010001 	lui	at,0x1
bfc01b94:	00250821 	addu	at,at,a1
bfc01b98:	ac25db18 	sw	a1,-9448(at)
bfc01b9c:	3c020001 	lui	v0,0x1
bfc01ba0:	00481021 	addu	v0,v0,t0
bfc01ba4:	9042db1a 	lbu	v0,-9446(v0)
bfc01ba8:	3c050001 	lui	a1,0x1
bfc01bac:	00a42821 	addu	a1,a1,a0
bfc01bb0:	8ca5db18 	lw	a1,-9448(a1)
bfc01bb4:	3c040001 	lui	a0,0x1
bfc01bb8:	00852021 	addu	a0,a0,a1
bfc01bbc:	8c84db18 	lw	a0,-9448(a0)
bfc01bc0:	3c060001 	lui	a2,0x1
bfc01bc4:	00c53021 	addu	a2,a2,a1
bfc01bc8:	8cc6db18 	lw	a2,-9448(a2)
bfc01bcc:	144304ad 	bne	v0,v1,bfc02e84 <inst_error>
bfc01bd0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:76
bfc01bd4:	3c09bd74 	lui	t1,0xbd74
bfc01bd8:	35293318 	ori	t1,t1,0x3318
bfc01bdc:	3c08800d 	lui	t0,0x800d
bfc01be0:	24030018 	li	v1,24
bfc01be4:	3c010001 	lui	at,0x1
bfc01be8:	00280821 	addu	at,at,t0
bfc01bec:	ac29c2f8 	sw	t1,-15624(at)
bfc01bf0:	25040004 	addiu	a0,t0,4
bfc01bf4:	2505fff8 	addiu	a1,t0,-8
bfc01bf8:	3c010001 	lui	at,0x1
bfc01bfc:	00240821 	addu	at,at,a0
bfc01c00:	ac24c2f8 	sw	a0,-15624(at)
bfc01c04:	3c010001 	lui	at,0x1
bfc01c08:	00250821 	addu	at,at,a1
bfc01c0c:	ac25c2f8 	sw	a1,-15624(at)
bfc01c10:	3c020001 	lui	v0,0x1
bfc01c14:	00481021 	addu	v0,v0,t0
bfc01c18:	9042c2f8 	lbu	v0,-15624(v0)
bfc01c1c:	3c050001 	lui	a1,0x1
bfc01c20:	00a42821 	addu	a1,a1,a0
bfc01c24:	8ca5c2f8 	lw	a1,-15624(a1)
bfc01c28:	3c040001 	lui	a0,0x1
bfc01c2c:	00852021 	addu	a0,a0,a1
bfc01c30:	8c84c2f8 	lw	a0,-15624(a0)
bfc01c34:	3c060001 	lui	a2,0x1
bfc01c38:	00c53021 	addu	a2,a2,a1
bfc01c3c:	8cc6c2f8 	lw	a2,-15624(a2)
bfc01c40:	14430490 	bne	v0,v1,bfc02e84 <inst_error>
bfc01c44:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:77
bfc01c48:	3c09ec31 	lui	t1,0xec31
bfc01c4c:	35295702 	ori	t1,t1,0x5702
bfc01c50:	3c08800d 	lui	t0,0x800d
bfc01c54:	24030002 	li	v1,2
bfc01c58:	ad090230 	sw	t1,560(t0)
bfc01c5c:	25040004 	addiu	a0,t0,4
bfc01c60:	2505fff8 	addiu	a1,t0,-8
bfc01c64:	ac840230 	sw	a0,560(a0)
bfc01c68:	aca50230 	sw	a1,560(a1)
bfc01c6c:	91020230 	lbu	v0,560(t0)
bfc01c70:	8c850230 	lw	a1,560(a0)
bfc01c74:	8ca40230 	lw	a0,560(a1)
bfc01c78:	8ca60230 	lw	a2,560(a1)
bfc01c7c:	14430481 	bne	v0,v1,bfc02e84 <inst_error>
bfc01c80:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:78
bfc01c84:	3c097b43 	lui	t1,0x7b43
bfc01c88:	35293429 	ori	t1,t1,0x3429
bfc01c8c:	3c08800d 	lui	t0,0x800d
bfc01c90:	24030029 	li	v1,41
bfc01c94:	ad090ae0 	sw	t1,2784(t0)
bfc01c98:	25040004 	addiu	a0,t0,4
bfc01c9c:	2505fff8 	addiu	a1,t0,-8
bfc01ca0:	ac840ae0 	sw	a0,2784(a0)
bfc01ca4:	aca50ae0 	sw	a1,2784(a1)
bfc01ca8:	91020ae0 	lbu	v0,2784(t0)
bfc01cac:	8c850ae0 	lw	a1,2784(a0)
bfc01cb0:	8ca40ae0 	lw	a0,2784(a1)
bfc01cb4:	8ca60ae0 	lw	a2,2784(a1)
bfc01cb8:	14430472 	bne	v0,v1,bfc02e84 <inst_error>
bfc01cbc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:79
bfc01cc0:	3c093455 	lui	t1,0x3455
bfc01cc4:	352992f0 	ori	t1,t1,0x92f0
bfc01cc8:	3c08800d 	lui	t0,0x800d
bfc01ccc:	240300f0 	li	v1,240
bfc01cd0:	3c010001 	lui	at,0x1
bfc01cd4:	00280821 	addu	at,at,t0
bfc01cd8:	ac29d080 	sw	t1,-12160(at)
bfc01cdc:	25040004 	addiu	a0,t0,4
bfc01ce0:	2505fff8 	addiu	a1,t0,-8
bfc01ce4:	3c010001 	lui	at,0x1
bfc01ce8:	00240821 	addu	at,at,a0
bfc01cec:	ac24d080 	sw	a0,-12160(at)
bfc01cf0:	3c010001 	lui	at,0x1
bfc01cf4:	00250821 	addu	at,at,a1
bfc01cf8:	ac25d080 	sw	a1,-12160(at)
bfc01cfc:	3c020001 	lui	v0,0x1
bfc01d00:	00481021 	addu	v0,v0,t0
bfc01d04:	9042d080 	lbu	v0,-12160(v0)
bfc01d08:	3c050001 	lui	a1,0x1
bfc01d0c:	00a42821 	addu	a1,a1,a0
bfc01d10:	8ca5d080 	lw	a1,-12160(a1)
bfc01d14:	3c040001 	lui	a0,0x1
bfc01d18:	00852021 	addu	a0,a0,a1
bfc01d1c:	8c84d080 	lw	a0,-12160(a0)
bfc01d20:	3c060001 	lui	a2,0x1
bfc01d24:	00c53021 	addu	a2,a2,a1
bfc01d28:	8cc6d080 	lw	a2,-12160(a2)
bfc01d2c:	14430455 	bne	v0,v1,bfc02e84 <inst_error>
bfc01d30:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:80
bfc01d34:	3c0915fe 	lui	t1,0x15fe
bfc01d38:	3529c970 	ori	t1,t1,0xc970
bfc01d3c:	3c08800d 	lui	t0,0x800d
bfc01d40:	24030070 	li	v1,112
bfc01d44:	3c010001 	lui	at,0x1
bfc01d48:	00280821 	addu	at,at,t0
bfc01d4c:	ac29a6d0 	sw	t1,-22832(at)
bfc01d50:	25040004 	addiu	a0,t0,4
bfc01d54:	2505fff8 	addiu	a1,t0,-8
bfc01d58:	3c010001 	lui	at,0x1
bfc01d5c:	00240821 	addu	at,at,a0
bfc01d60:	ac24a6d0 	sw	a0,-22832(at)
bfc01d64:	3c010001 	lui	at,0x1
bfc01d68:	00250821 	addu	at,at,a1
bfc01d6c:	ac25a6d0 	sw	a1,-22832(at)
bfc01d70:	3c020001 	lui	v0,0x1
bfc01d74:	00481021 	addu	v0,v0,t0
bfc01d78:	9042a6d0 	lbu	v0,-22832(v0)
bfc01d7c:	3c050001 	lui	a1,0x1
bfc01d80:	00a42821 	addu	a1,a1,a0
bfc01d84:	8ca5a6d0 	lw	a1,-22832(a1)
bfc01d88:	3c040001 	lui	a0,0x1
bfc01d8c:	00852021 	addu	a0,a0,a1
bfc01d90:	8c84a6d0 	lw	a0,-22832(a0)
bfc01d94:	3c060001 	lui	a2,0x1
bfc01d98:	00c53021 	addu	a2,a2,a1
bfc01d9c:	8cc6a6d0 	lw	a2,-22832(a2)
bfc01da0:	14430438 	bne	v0,v1,bfc02e84 <inst_error>
bfc01da4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:81
bfc01da8:	3c09483e 	lui	t1,0x483e
bfc01dac:	3529c7ee 	ori	t1,t1,0xc7ee
bfc01db0:	3c08800d 	lui	t0,0x800d
bfc01db4:	240300ee 	li	v1,238
bfc01db8:	3c010001 	lui	at,0x1
bfc01dbc:	00280821 	addu	at,at,t0
bfc01dc0:	ac298570 	sw	t1,-31376(at)
bfc01dc4:	25040004 	addiu	a0,t0,4
bfc01dc8:	2505fff8 	addiu	a1,t0,-8
bfc01dcc:	3c010001 	lui	at,0x1
bfc01dd0:	00240821 	addu	at,at,a0
bfc01dd4:	ac248570 	sw	a0,-31376(at)
bfc01dd8:	3c010001 	lui	at,0x1
bfc01ddc:	00250821 	addu	at,at,a1
bfc01de0:	ac258570 	sw	a1,-31376(at)
bfc01de4:	3c020001 	lui	v0,0x1
bfc01de8:	00481021 	addu	v0,v0,t0
bfc01dec:	90428570 	lbu	v0,-31376(v0)
bfc01df0:	3c050001 	lui	a1,0x1
bfc01df4:	00a42821 	addu	a1,a1,a0
bfc01df8:	8ca58570 	lw	a1,-31376(a1)
bfc01dfc:	3c040001 	lui	a0,0x1
bfc01e00:	00852021 	addu	a0,a0,a1
bfc01e04:	8c848570 	lw	a0,-31376(a0)
bfc01e08:	3c060001 	lui	a2,0x1
bfc01e0c:	00c53021 	addu	a2,a2,a1
bfc01e10:	8cc68570 	lw	a2,-31376(a2)
bfc01e14:	1443041b 	bne	v0,v1,bfc02e84 <inst_error>
bfc01e18:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:82
bfc01e1c:	3c09ca82 	lui	t1,0xca82
bfc01e20:	3529fc00 	ori	t1,t1,0xfc00
bfc01e24:	3c08800d 	lui	t0,0x800d
bfc01e28:	24030082 	li	v1,130
bfc01e2c:	ad095cfc 	sw	t1,23804(t0)
bfc01e30:	25040004 	addiu	a0,t0,4
bfc01e34:	2505fff8 	addiu	a1,t0,-8
bfc01e38:	ac845cfc 	sw	a0,23804(a0)
bfc01e3c:	aca55cfc 	sw	a1,23804(a1)
bfc01e40:	91025cfe 	lbu	v0,23806(t0)
bfc01e44:	8c855cfc 	lw	a1,23804(a0)
bfc01e48:	8ca45cfc 	lw	a0,23804(a1)
bfc01e4c:	8ca65cfc 	lw	a2,23804(a1)
bfc01e50:	1443040c 	bne	v0,v1,bfc02e84 <inst_error>
bfc01e54:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:83
bfc01e58:	3c092595 	lui	t1,0x2595
bfc01e5c:	35293f20 	ori	t1,t1,0x3f20
bfc01e60:	3c08800d 	lui	t0,0x800d
bfc01e64:	24030025 	li	v1,37
bfc01e68:	3c010001 	lui	at,0x1
bfc01e6c:	00280821 	addu	at,at,t0
bfc01e70:	ac29d0c0 	sw	t1,-12096(at)
bfc01e74:	25040004 	addiu	a0,t0,4
bfc01e78:	2505fff8 	addiu	a1,t0,-8
bfc01e7c:	3c010001 	lui	at,0x1
bfc01e80:	00240821 	addu	at,at,a0
bfc01e84:	ac24d0c0 	sw	a0,-12096(at)
bfc01e88:	3c010001 	lui	at,0x1
bfc01e8c:	00250821 	addu	at,at,a1
bfc01e90:	ac25d0c0 	sw	a1,-12096(at)
bfc01e94:	3c020001 	lui	v0,0x1
bfc01e98:	00481021 	addu	v0,v0,t0
bfc01e9c:	9042d0c3 	lbu	v0,-12093(v0)
bfc01ea0:	3c050001 	lui	a1,0x1
bfc01ea4:	00a42821 	addu	a1,a1,a0
bfc01ea8:	8ca5d0c0 	lw	a1,-12096(a1)
bfc01eac:	3c040001 	lui	a0,0x1
bfc01eb0:	00852021 	addu	a0,a0,a1
bfc01eb4:	8c84d0c0 	lw	a0,-12096(a0)
bfc01eb8:	3c060001 	lui	a2,0x1
bfc01ebc:	00c53021 	addu	a2,a2,a1
bfc01ec0:	8cc6d0c0 	lw	a2,-12096(a2)
bfc01ec4:	144303ef 	bne	v0,v1,bfc02e84 <inst_error>
bfc01ec8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:84
bfc01ecc:	3c09c718 	lui	t1,0xc718
bfc01ed0:	35294dde 	ori	t1,t1,0x4dde
bfc01ed4:	3c08800d 	lui	t0,0x800d
bfc01ed8:	240300de 	li	v1,222
bfc01edc:	ad095558 	sw	t1,21848(t0)
bfc01ee0:	25040004 	addiu	a0,t0,4
bfc01ee4:	2505fff8 	addiu	a1,t0,-8
bfc01ee8:	ac845558 	sw	a0,21848(a0)
bfc01eec:	aca55558 	sw	a1,21848(a1)
bfc01ef0:	91025558 	lbu	v0,21848(t0)
bfc01ef4:	8c855558 	lw	a1,21848(a0)
bfc01ef8:	8ca45558 	lw	a0,21848(a1)
bfc01efc:	8ca65558 	lw	a2,21848(a1)
bfc01f00:	144303e0 	bne	v0,v1,bfc02e84 <inst_error>
bfc01f04:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:85
bfc01f08:	3c09899b 	lui	t1,0x899b
bfc01f0c:	3529e100 	ori	t1,t1,0xe100
bfc01f10:	3c08800d 	lui	t0,0x800d
bfc01f14:	24030000 	li	v1,0
bfc01f18:	3c010001 	lui	at,0x1
bfc01f1c:	00280821 	addu	at,at,t0
bfc01f20:	ac29f0c4 	sw	t1,-3900(at)
bfc01f24:	25040004 	addiu	a0,t0,4
bfc01f28:	2505fff8 	addiu	a1,t0,-8
bfc01f2c:	3c010001 	lui	at,0x1
bfc01f30:	00240821 	addu	at,at,a0
bfc01f34:	ac24f0c4 	sw	a0,-3900(at)
bfc01f38:	3c010001 	lui	at,0x1
bfc01f3c:	00250821 	addu	at,at,a1
bfc01f40:	ac25f0c4 	sw	a1,-3900(at)
bfc01f44:	3c020001 	lui	v0,0x1
bfc01f48:	00481021 	addu	v0,v0,t0
bfc01f4c:	9042f0c4 	lbu	v0,-3900(v0)
bfc01f50:	3c050001 	lui	a1,0x1
bfc01f54:	00a42821 	addu	a1,a1,a0
bfc01f58:	8ca5f0c4 	lw	a1,-3900(a1)
bfc01f5c:	3c040001 	lui	a0,0x1
bfc01f60:	00852021 	addu	a0,a0,a1
bfc01f64:	8c84f0c4 	lw	a0,-3900(a0)
bfc01f68:	3c060001 	lui	a2,0x1
bfc01f6c:	00c53021 	addu	a2,a2,a1
bfc01f70:	8cc6f0c4 	lw	a2,-3900(a2)
bfc01f74:	144303c3 	bne	v0,v1,bfc02e84 <inst_error>
bfc01f78:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:86
bfc01f7c:	3c094629 	lui	t1,0x4629
bfc01f80:	3529ad14 	ori	t1,t1,0xad14
bfc01f84:	3c08800d 	lui	t0,0x800d
bfc01f88:	24030014 	li	v1,20
bfc01f8c:	3c010001 	lui	at,0x1
bfc01f90:	00280821 	addu	at,at,t0
bfc01f94:	ac29f550 	sw	t1,-2736(at)
bfc01f98:	25040004 	addiu	a0,t0,4
bfc01f9c:	2505fff8 	addiu	a1,t0,-8
bfc01fa0:	3c010001 	lui	at,0x1
bfc01fa4:	00240821 	addu	at,at,a0
bfc01fa8:	ac24f550 	sw	a0,-2736(at)
bfc01fac:	3c010001 	lui	at,0x1
bfc01fb0:	00250821 	addu	at,at,a1
bfc01fb4:	ac25f550 	sw	a1,-2736(at)
bfc01fb8:	3c020001 	lui	v0,0x1
bfc01fbc:	00481021 	addu	v0,v0,t0
bfc01fc0:	9042f550 	lbu	v0,-2736(v0)
bfc01fc4:	3c050001 	lui	a1,0x1
bfc01fc8:	00a42821 	addu	a1,a1,a0
bfc01fcc:	8ca5f550 	lw	a1,-2736(a1)
bfc01fd0:	3c040001 	lui	a0,0x1
bfc01fd4:	00852021 	addu	a0,a0,a1
bfc01fd8:	8c84f550 	lw	a0,-2736(a0)
bfc01fdc:	3c060001 	lui	a2,0x1
bfc01fe0:	00c53021 	addu	a2,a2,a1
bfc01fe4:	8cc6f550 	lw	a2,-2736(a2)
bfc01fe8:	144303a6 	bne	v0,v1,bfc02e84 <inst_error>
bfc01fec:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:87
bfc01ff0:	3c09b741 	lui	t1,0xb741
bfc01ff4:	3529c3b2 	ori	t1,t1,0xc3b2
bfc01ff8:	3c08800d 	lui	t0,0x800d
bfc01ffc:	240300b2 	li	v1,178
bfc02000:	3c010001 	lui	at,0x1
bfc02004:	00280821 	addu	at,at,t0
bfc02008:	ac299370 	sw	t1,-27792(at)
bfc0200c:	25040004 	addiu	a0,t0,4
bfc02010:	2505fff8 	addiu	a1,t0,-8
bfc02014:	3c010001 	lui	at,0x1
bfc02018:	00240821 	addu	at,at,a0
bfc0201c:	ac249370 	sw	a0,-27792(at)
bfc02020:	3c010001 	lui	at,0x1
bfc02024:	00250821 	addu	at,at,a1
bfc02028:	ac259370 	sw	a1,-27792(at)
bfc0202c:	3c020001 	lui	v0,0x1
bfc02030:	00481021 	addu	v0,v0,t0
bfc02034:	90429370 	lbu	v0,-27792(v0)
bfc02038:	3c050001 	lui	a1,0x1
bfc0203c:	00a42821 	addu	a1,a1,a0
bfc02040:	8ca59370 	lw	a1,-27792(a1)
bfc02044:	3c040001 	lui	a0,0x1
bfc02048:	00852021 	addu	a0,a0,a1
bfc0204c:	8c849370 	lw	a0,-27792(a0)
bfc02050:	3c060001 	lui	a2,0x1
bfc02054:	00c53021 	addu	a2,a2,a1
bfc02058:	8cc69370 	lw	a2,-27792(a2)
bfc0205c:	14430389 	bne	v0,v1,bfc02e84 <inst_error>
bfc02060:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:88
bfc02064:	3c093b7a 	lui	t1,0x3b7a
bfc02068:	35298198 	ori	t1,t1,0x8198
bfc0206c:	3c08800d 	lui	t0,0x800d
bfc02070:	24030081 	li	v1,129
bfc02074:	ad092dc4 	sw	t1,11716(t0)
bfc02078:	25040004 	addiu	a0,t0,4
bfc0207c:	2505fff8 	addiu	a1,t0,-8
bfc02080:	ac842dc4 	sw	a0,11716(a0)
bfc02084:	aca52dc4 	sw	a1,11716(a1)
bfc02088:	91022dc5 	lbu	v0,11717(t0)
bfc0208c:	8c852dc4 	lw	a1,11716(a0)
bfc02090:	8ca42dc4 	lw	a0,11716(a1)
bfc02094:	8ca62dc4 	lw	a2,11716(a1)
bfc02098:	1443037a 	bne	v0,v1,bfc02e84 <inst_error>
bfc0209c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:89
bfc020a0:	3c09c5e5 	lui	t1,0xc5e5
bfc020a4:	352941f6 	ori	t1,t1,0x41f6
bfc020a8:	3c08800d 	lui	t0,0x800d
bfc020ac:	240300f6 	li	v1,246
bfc020b0:	ad093560 	sw	t1,13664(t0)
bfc020b4:	25040004 	addiu	a0,t0,4
bfc020b8:	2505fff8 	addiu	a1,t0,-8
bfc020bc:	ac843560 	sw	a0,13664(a0)
bfc020c0:	aca53560 	sw	a1,13664(a1)
bfc020c4:	91023560 	lbu	v0,13664(t0)
bfc020c8:	8c853560 	lw	a1,13664(a0)
bfc020cc:	8ca43560 	lw	a0,13664(a1)
bfc020d0:	8ca63560 	lw	a2,13664(a1)
bfc020d4:	1443036b 	bne	v0,v1,bfc02e84 <inst_error>
bfc020d8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:90
bfc020dc:	3c09df5b 	lui	t1,0xdf5b
bfc020e0:	35291a0a 	ori	t1,t1,0x1a0a
bfc020e4:	3c08800d 	lui	t0,0x800d
bfc020e8:	2403000a 	li	v1,10
bfc020ec:	3c010001 	lui	at,0x1
bfc020f0:	00280821 	addu	at,at,t0
bfc020f4:	ac29d8c0 	sw	t1,-10048(at)
bfc020f8:	25040004 	addiu	a0,t0,4
bfc020fc:	2505fff8 	addiu	a1,t0,-8
bfc02100:	3c010001 	lui	at,0x1
bfc02104:	00240821 	addu	at,at,a0
bfc02108:	ac24d8c0 	sw	a0,-10048(at)
bfc0210c:	3c010001 	lui	at,0x1
bfc02110:	00250821 	addu	at,at,a1
bfc02114:	ac25d8c0 	sw	a1,-10048(at)
bfc02118:	3c020001 	lui	v0,0x1
bfc0211c:	00481021 	addu	v0,v0,t0
bfc02120:	9042d8c0 	lbu	v0,-10048(v0)
bfc02124:	3c050001 	lui	a1,0x1
bfc02128:	00a42821 	addu	a1,a1,a0
bfc0212c:	8ca5d8c0 	lw	a1,-10048(a1)
bfc02130:	3c040001 	lui	a0,0x1
bfc02134:	00852021 	addu	a0,a0,a1
bfc02138:	8c84d8c0 	lw	a0,-10048(a0)
bfc0213c:	3c060001 	lui	a2,0x1
bfc02140:	00c53021 	addu	a2,a2,a1
bfc02144:	8cc6d8c0 	lw	a2,-10048(a2)
bfc02148:	1443034e 	bne	v0,v1,bfc02e84 <inst_error>
bfc0214c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:91
bfc02150:	3c099e06 	lui	t1,0x9e06
bfc02154:	3529fab8 	ori	t1,t1,0xfab8
bfc02158:	3c08800d 	lui	t0,0x800d
bfc0215c:	24030006 	li	v1,6
bfc02160:	ad0904c8 	sw	t1,1224(t0)
bfc02164:	25040004 	addiu	a0,t0,4
bfc02168:	2505fff8 	addiu	a1,t0,-8
bfc0216c:	ac8404c8 	sw	a0,1224(a0)
bfc02170:	aca504c8 	sw	a1,1224(a1)
bfc02174:	910204ca 	lbu	v0,1226(t0)
bfc02178:	8c8504c8 	lw	a1,1224(a0)
bfc0217c:	8ca404c8 	lw	a0,1224(a1)
bfc02180:	8ca604c8 	lw	a2,1224(a1)
bfc02184:	1443033f 	bne	v0,v1,bfc02e84 <inst_error>
bfc02188:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:92
bfc0218c:	3c0970df 	lui	t1,0x70df
bfc02190:	35295f2c 	ori	t1,t1,0x5f2c
bfc02194:	3c08800d 	lui	t0,0x800d
bfc02198:	240300df 	li	v1,223
bfc0219c:	3c010001 	lui	at,0x1
bfc021a0:	00280821 	addu	at,at,t0
bfc021a4:	ac29b6b8 	sw	t1,-18760(at)
bfc021a8:	25040004 	addiu	a0,t0,4
bfc021ac:	2505fff8 	addiu	a1,t0,-8
bfc021b0:	3c010001 	lui	at,0x1
bfc021b4:	00240821 	addu	at,at,a0
bfc021b8:	ac24b6b8 	sw	a0,-18760(at)
bfc021bc:	3c010001 	lui	at,0x1
bfc021c0:	00250821 	addu	at,at,a1
bfc021c4:	ac25b6b8 	sw	a1,-18760(at)
bfc021c8:	3c020001 	lui	v0,0x1
bfc021cc:	00481021 	addu	v0,v0,t0
bfc021d0:	9042b6ba 	lbu	v0,-18758(v0)
bfc021d4:	3c050001 	lui	a1,0x1
bfc021d8:	00a42821 	addu	a1,a1,a0
bfc021dc:	8ca5b6b8 	lw	a1,-18760(a1)
bfc021e0:	3c040001 	lui	a0,0x1
bfc021e4:	00852021 	addu	a0,a0,a1
bfc021e8:	8c84b6b8 	lw	a0,-18760(a0)
bfc021ec:	3c060001 	lui	a2,0x1
bfc021f0:	00c53021 	addu	a2,a2,a1
bfc021f4:	8cc6b6b8 	lw	a2,-18760(a2)
bfc021f8:	14430322 	bne	v0,v1,bfc02e84 <inst_error>
bfc021fc:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:93
bfc02200:	3c095717 	lui	t1,0x5717
bfc02204:	3529a104 	ori	t1,t1,0xa104
bfc02208:	3c08800d 	lui	t0,0x800d
bfc0220c:	24030017 	li	v1,23
bfc02210:	3c010001 	lui	at,0x1
bfc02214:	00280821 	addu	at,at,t0
bfc02218:	ac29edc0 	sw	t1,-4672(at)
bfc0221c:	25040004 	addiu	a0,t0,4
bfc02220:	2505fff8 	addiu	a1,t0,-8
bfc02224:	3c010001 	lui	at,0x1
bfc02228:	00240821 	addu	at,at,a0
bfc0222c:	ac24edc0 	sw	a0,-4672(at)
bfc02230:	3c010001 	lui	at,0x1
bfc02234:	00250821 	addu	at,at,a1
bfc02238:	ac25edc0 	sw	a1,-4672(at)
bfc0223c:	3c020001 	lui	v0,0x1
bfc02240:	00481021 	addu	v0,v0,t0
bfc02244:	9042edc2 	lbu	v0,-4670(v0)
bfc02248:	3c050001 	lui	a1,0x1
bfc0224c:	00a42821 	addu	a1,a1,a0
bfc02250:	8ca5edc0 	lw	a1,-4672(a1)
bfc02254:	3c040001 	lui	a0,0x1
bfc02258:	00852021 	addu	a0,a0,a1
bfc0225c:	8c84edc0 	lw	a0,-4672(a0)
bfc02260:	3c060001 	lui	a2,0x1
bfc02264:	00c53021 	addu	a2,a2,a1
bfc02268:	8cc6edc0 	lw	a2,-4672(a2)
bfc0226c:	14430305 	bne	v0,v1,bfc02e84 <inst_error>
bfc02270:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:94
bfc02274:	3c0991f2 	lui	t1,0x91f2
bfc02278:	3529f789 	ori	t1,t1,0xf789
bfc0227c:	3c08800d 	lui	t0,0x800d
bfc02280:	240300f2 	li	v1,242
bfc02284:	3c010001 	lui	at,0x1
bfc02288:	00280821 	addu	at,at,t0
bfc0228c:	ac29cf84 	sw	t1,-12412(at)
bfc02290:	25040004 	addiu	a0,t0,4
bfc02294:	2505fff8 	addiu	a1,t0,-8
bfc02298:	3c010001 	lui	at,0x1
bfc0229c:	00240821 	addu	at,at,a0
bfc022a0:	ac24cf84 	sw	a0,-12412(at)
bfc022a4:	3c010001 	lui	at,0x1
bfc022a8:	00250821 	addu	at,at,a1
bfc022ac:	ac25cf84 	sw	a1,-12412(at)
bfc022b0:	3c020001 	lui	v0,0x1
bfc022b4:	00481021 	addu	v0,v0,t0
bfc022b8:	9042cf86 	lbu	v0,-12410(v0)
bfc022bc:	3c050001 	lui	a1,0x1
bfc022c0:	00a42821 	addu	a1,a1,a0
bfc022c4:	8ca5cf84 	lw	a1,-12412(a1)
bfc022c8:	3c040001 	lui	a0,0x1
bfc022cc:	00852021 	addu	a0,a0,a1
bfc022d0:	8c84cf84 	lw	a0,-12412(a0)
bfc022d4:	3c060001 	lui	a2,0x1
bfc022d8:	00c53021 	addu	a2,a2,a1
bfc022dc:	8cc6cf84 	lw	a2,-12412(a2)
bfc022e0:	144302e8 	bne	v0,v1,bfc02e84 <inst_error>
bfc022e4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:95
bfc022e8:	3c0948f3 	lui	t1,0x48f3
bfc022ec:	3529e380 	ori	t1,t1,0xe380
bfc022f0:	3c08800d 	lui	t0,0x800d
bfc022f4:	24030080 	li	v1,128
bfc022f8:	ad097b7c 	sw	t1,31612(t0)
bfc022fc:	25040004 	addiu	a0,t0,4
bfc02300:	2505fff8 	addiu	a1,t0,-8
bfc02304:	ac847b7c 	sw	a0,31612(a0)
bfc02308:	aca57b7c 	sw	a1,31612(a1)
bfc0230c:	91027b7c 	lbu	v0,31612(t0)
bfc02310:	8c857b7c 	lw	a1,31612(a0)
bfc02314:	8ca47b7c 	lw	a0,31612(a1)
bfc02318:	8ca67b7c 	lw	a2,31612(a1)
bfc0231c:	144302d9 	bne	v0,v1,bfc02e84 <inst_error>
bfc02320:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:96
bfc02324:	3c09804e 	lui	t1,0x804e
bfc02328:	35290100 	ori	t1,t1,0x100
bfc0232c:	3c08800d 	lui	t0,0x800d
bfc02330:	24030000 	li	v1,0
bfc02334:	3c010001 	lui	at,0x1
bfc02338:	00280821 	addu	at,at,t0
bfc0233c:	ac29ce00 	sw	t1,-12800(at)
bfc02340:	25040004 	addiu	a0,t0,4
bfc02344:	2505fff8 	addiu	a1,t0,-8
bfc02348:	3c010001 	lui	at,0x1
bfc0234c:	00240821 	addu	at,at,a0
bfc02350:	ac24ce00 	sw	a0,-12800(at)
bfc02354:	3c010001 	lui	at,0x1
bfc02358:	00250821 	addu	at,at,a1
bfc0235c:	ac25ce00 	sw	a1,-12800(at)
bfc02360:	3c020001 	lui	v0,0x1
bfc02364:	00481021 	addu	v0,v0,t0
bfc02368:	9042ce00 	lbu	v0,-12800(v0)
bfc0236c:	3c050001 	lui	a1,0x1
bfc02370:	00a42821 	addu	a1,a1,a0
bfc02374:	8ca5ce00 	lw	a1,-12800(a1)
bfc02378:	3c040001 	lui	a0,0x1
bfc0237c:	00852021 	addu	a0,a0,a1
bfc02380:	8c84ce00 	lw	a0,-12800(a0)
bfc02384:	3c060001 	lui	a2,0x1
bfc02388:	00c53021 	addu	a2,a2,a1
bfc0238c:	8cc6ce00 	lw	a2,-12800(a2)
bfc02390:	144302bc 	bne	v0,v1,bfc02e84 <inst_error>
bfc02394:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:97
bfc02398:	3c092763 	lui	t1,0x2763
bfc0239c:	35295fe4 	ori	t1,t1,0x5fe4
bfc023a0:	3c08800d 	lui	t0,0x800d
bfc023a4:	240300e4 	li	v1,228
bfc023a8:	3c010001 	lui	at,0x1
bfc023ac:	00280821 	addu	at,at,t0
bfc023b0:	ac29f2e0 	sw	t1,-3360(at)
bfc023b4:	25040004 	addiu	a0,t0,4
bfc023b8:	2505fff8 	addiu	a1,t0,-8
bfc023bc:	3c010001 	lui	at,0x1
bfc023c0:	00240821 	addu	at,at,a0
bfc023c4:	ac24f2e0 	sw	a0,-3360(at)
bfc023c8:	3c010001 	lui	at,0x1
bfc023cc:	00250821 	addu	at,at,a1
bfc023d0:	ac25f2e0 	sw	a1,-3360(at)
bfc023d4:	3c020001 	lui	v0,0x1
bfc023d8:	00481021 	addu	v0,v0,t0
bfc023dc:	9042f2e0 	lbu	v0,-3360(v0)
bfc023e0:	3c050001 	lui	a1,0x1
bfc023e4:	00a42821 	addu	a1,a1,a0
bfc023e8:	8ca5f2e0 	lw	a1,-3360(a1)
bfc023ec:	3c040001 	lui	a0,0x1
bfc023f0:	00852021 	addu	a0,a0,a1
bfc023f4:	8c84f2e0 	lw	a0,-3360(a0)
bfc023f8:	3c060001 	lui	a2,0x1
bfc023fc:	00c53021 	addu	a2,a2,a1
bfc02400:	8cc6f2e0 	lw	a2,-3360(a2)
bfc02404:	1443029f 	bne	v0,v1,bfc02e84 <inst_error>
bfc02408:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:98
bfc0240c:	3c09ffcb 	lui	t1,0xffcb
bfc02410:	3529e970 	ori	t1,t1,0xe970
bfc02414:	3c08800d 	lui	t0,0x800d
bfc02418:	240300cb 	li	v1,203
bfc0241c:	ad0959ac 	sw	t1,22956(t0)
bfc02420:	25040004 	addiu	a0,t0,4
bfc02424:	2505fff8 	addiu	a1,t0,-8
bfc02428:	ac8459ac 	sw	a0,22956(a0)
bfc0242c:	aca559ac 	sw	a1,22956(a1)
bfc02430:	910259ae 	lbu	v0,22958(t0)
bfc02434:	8c8559ac 	lw	a1,22956(a0)
bfc02438:	8ca459ac 	lw	a0,22956(a1)
bfc0243c:	8ca659ac 	lw	a2,22956(a1)
bfc02440:	14430290 	bne	v0,v1,bfc02e84 <inst_error>
bfc02444:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:99
bfc02448:	3c095a3c 	lui	t1,0x5a3c
bfc0244c:	3529ef6e 	ori	t1,t1,0xef6e
bfc02450:	3c08800d 	lui	t0,0x800d
bfc02454:	240300ef 	li	v1,239
bfc02458:	3c010001 	lui	at,0x1
bfc0245c:	00280821 	addu	at,at,t0
bfc02460:	ac29a604 	sw	t1,-23036(at)
bfc02464:	25040004 	addiu	a0,t0,4
bfc02468:	2505fff8 	addiu	a1,t0,-8
bfc0246c:	3c010001 	lui	at,0x1
bfc02470:	00240821 	addu	at,at,a0
bfc02474:	ac24a604 	sw	a0,-23036(at)
bfc02478:	3c010001 	lui	at,0x1
bfc0247c:	00250821 	addu	at,at,a1
bfc02480:	ac25a604 	sw	a1,-23036(at)
bfc02484:	3c020001 	lui	v0,0x1
bfc02488:	00481021 	addu	v0,v0,t0
bfc0248c:	9042a605 	lbu	v0,-23035(v0)
bfc02490:	3c050001 	lui	a1,0x1
bfc02494:	00a42821 	addu	a1,a1,a0
bfc02498:	8ca5a604 	lw	a1,-23036(a1)
bfc0249c:	3c040001 	lui	a0,0x1
bfc024a0:	00852021 	addu	a0,a0,a1
bfc024a4:	8c84a604 	lw	a0,-23036(a0)
bfc024a8:	3c060001 	lui	a2,0x1
bfc024ac:	00c53021 	addu	a2,a2,a1
bfc024b0:	8cc6a604 	lw	a2,-23036(a2)
bfc024b4:	14430273 	bne	v0,v1,bfc02e84 <inst_error>
bfc024b8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:100
bfc024bc:	3c09ef7b 	lui	t1,0xef7b
bfc024c0:	35295e90 	ori	t1,t1,0x5e90
bfc024c4:	3c08800d 	lui	t0,0x800d
bfc024c8:	2403007b 	li	v1,123
bfc024cc:	3c010001 	lui	at,0x1
bfc024d0:	00280821 	addu	at,at,t0
bfc024d4:	ac298894 	sw	t1,-30572(at)
bfc024d8:	25040004 	addiu	a0,t0,4
bfc024dc:	2505fff8 	addiu	a1,t0,-8
bfc024e0:	3c010001 	lui	at,0x1
bfc024e4:	00240821 	addu	at,at,a0
bfc024e8:	ac248894 	sw	a0,-30572(at)
bfc024ec:	3c010001 	lui	at,0x1
bfc024f0:	00250821 	addu	at,at,a1
bfc024f4:	ac258894 	sw	a1,-30572(at)
bfc024f8:	3c020001 	lui	v0,0x1
bfc024fc:	00481021 	addu	v0,v0,t0
bfc02500:	90428896 	lbu	v0,-30570(v0)
bfc02504:	3c050001 	lui	a1,0x1
bfc02508:	00a42821 	addu	a1,a1,a0
bfc0250c:	8ca58894 	lw	a1,-30572(a1)
bfc02510:	3c040001 	lui	a0,0x1
bfc02514:	00852021 	addu	a0,a0,a1
bfc02518:	8c848894 	lw	a0,-30572(a0)
bfc0251c:	3c060001 	lui	a2,0x1
bfc02520:	00c53021 	addu	a2,a2,a1
bfc02524:	8cc68894 	lw	a2,-30572(a2)
bfc02528:	14430256 	bne	v0,v1,bfc02e84 <inst_error>
bfc0252c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:101
bfc02530:	3c09262a 	lui	t1,0x262a
bfc02534:	35295e90 	ori	t1,t1,0x5e90
bfc02538:	3c08800d 	lui	t0,0x800d
bfc0253c:	24030026 	li	v1,38
bfc02540:	3c010001 	lui	at,0x1
bfc02544:	00280821 	addu	at,at,t0
bfc02548:	ac29f96c 	sw	t1,-1684(at)
bfc0254c:	25040004 	addiu	a0,t0,4
bfc02550:	2505fff8 	addiu	a1,t0,-8
bfc02554:	3c010001 	lui	at,0x1
bfc02558:	00240821 	addu	at,at,a0
bfc0255c:	ac24f96c 	sw	a0,-1684(at)
bfc02560:	3c010001 	lui	at,0x1
bfc02564:	00250821 	addu	at,at,a1
bfc02568:	ac25f96c 	sw	a1,-1684(at)
bfc0256c:	3c020001 	lui	v0,0x1
bfc02570:	00481021 	addu	v0,v0,t0
bfc02574:	9042f96f 	lbu	v0,-1681(v0)
bfc02578:	3c050001 	lui	a1,0x1
bfc0257c:	00a42821 	addu	a1,a1,a0
bfc02580:	8ca5f96c 	lw	a1,-1684(a1)
bfc02584:	3c040001 	lui	a0,0x1
bfc02588:	00852021 	addu	a0,a0,a1
bfc0258c:	8c84f96c 	lw	a0,-1684(a0)
bfc02590:	3c060001 	lui	a2,0x1
bfc02594:	00c53021 	addu	a2,a2,a1
bfc02598:	8cc6f96c 	lw	a2,-1684(a2)
bfc0259c:	14430239 	bne	v0,v1,bfc02e84 <inst_error>
bfc025a0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:102
bfc025a4:	3c09a267 	lui	t1,0xa267
bfc025a8:	352901e8 	ori	t1,t1,0x1e8
bfc025ac:	3c08800d 	lui	t0,0x800d
bfc025b0:	24030001 	li	v1,1
bfc025b4:	3c010001 	lui	at,0x1
bfc025b8:	00280821 	addu	at,at,t0
bfc025bc:	ac299398 	sw	t1,-27752(at)
bfc025c0:	25040004 	addiu	a0,t0,4
bfc025c4:	2505fff8 	addiu	a1,t0,-8
bfc025c8:	3c010001 	lui	at,0x1
bfc025cc:	00240821 	addu	at,at,a0
bfc025d0:	ac249398 	sw	a0,-27752(at)
bfc025d4:	3c010001 	lui	at,0x1
bfc025d8:	00250821 	addu	at,at,a1
bfc025dc:	ac259398 	sw	a1,-27752(at)
bfc025e0:	3c020001 	lui	v0,0x1
bfc025e4:	00481021 	addu	v0,v0,t0
bfc025e8:	90429399 	lbu	v0,-27751(v0)
bfc025ec:	3c050001 	lui	a1,0x1
bfc025f0:	00a42821 	addu	a1,a1,a0
bfc025f4:	8ca59398 	lw	a1,-27752(a1)
bfc025f8:	3c040001 	lui	a0,0x1
bfc025fc:	00852021 	addu	a0,a0,a1
bfc02600:	8c849398 	lw	a0,-27752(a0)
bfc02604:	3c060001 	lui	a2,0x1
bfc02608:	00c53021 	addu	a2,a2,a1
bfc0260c:	8cc69398 	lw	a2,-27752(a2)
bfc02610:	1443021c 	bne	v0,v1,bfc02e84 <inst_error>
bfc02614:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:103
bfc02618:	3c092f2f 	lui	t1,0x2f2f
bfc0261c:	352973f0 	ori	t1,t1,0x73f0
bfc02620:	3c08800d 	lui	t0,0x800d
bfc02624:	240300f0 	li	v1,240
bfc02628:	3c010001 	lui	at,0x1
bfc0262c:	00280821 	addu	at,at,t0
bfc02630:	ac29ea14 	sw	t1,-5612(at)
bfc02634:	25040004 	addiu	a0,t0,4
bfc02638:	2505fff8 	addiu	a1,t0,-8
bfc0263c:	3c010001 	lui	at,0x1
bfc02640:	00240821 	addu	at,at,a0
bfc02644:	ac24ea14 	sw	a0,-5612(at)
bfc02648:	3c010001 	lui	at,0x1
bfc0264c:	00250821 	addu	at,at,a1
bfc02650:	ac25ea14 	sw	a1,-5612(at)
bfc02654:	3c020001 	lui	v0,0x1
bfc02658:	00481021 	addu	v0,v0,t0
bfc0265c:	9042ea14 	lbu	v0,-5612(v0)
bfc02660:	3c050001 	lui	a1,0x1
bfc02664:	00a42821 	addu	a1,a1,a0
bfc02668:	8ca5ea14 	lw	a1,-5612(a1)
bfc0266c:	3c040001 	lui	a0,0x1
bfc02670:	00852021 	addu	a0,a0,a1
bfc02674:	8c84ea14 	lw	a0,-5612(a0)
bfc02678:	3c060001 	lui	a2,0x1
bfc0267c:	00c53021 	addu	a2,a2,a1
bfc02680:	8cc6ea14 	lw	a2,-5612(a2)
bfc02684:	144301ff 	bne	v0,v1,bfc02e84 <inst_error>
bfc02688:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:104
bfc0268c:	3c0938ce 	lui	t1,0x38ce
bfc02690:	35294640 	ori	t1,t1,0x4640
bfc02694:	3c08800d 	lui	t0,0x800d
bfc02698:	240300ce 	li	v1,206
bfc0269c:	ad095780 	sw	t1,22400(t0)
bfc026a0:	25040004 	addiu	a0,t0,4
bfc026a4:	2505fff8 	addiu	a1,t0,-8
bfc026a8:	ac845780 	sw	a0,22400(a0)
bfc026ac:	aca55780 	sw	a1,22400(a1)
bfc026b0:	91025782 	lbu	v0,22402(t0)
bfc026b4:	8c855780 	lw	a1,22400(a0)
bfc026b8:	8ca45780 	lw	a0,22400(a1)
bfc026bc:	8ca65780 	lw	a2,22400(a1)
bfc026c0:	144301f0 	bne	v0,v1,bfc02e84 <inst_error>
bfc026c4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:105
bfc026c8:	3c09bb69 	lui	t1,0xbb69
bfc026cc:	3529c800 	ori	t1,t1,0xc800
bfc026d0:	3c08800d 	lui	t0,0x800d
bfc026d4:	24030069 	li	v1,105
bfc026d8:	ad090b44 	sw	t1,2884(t0)
bfc026dc:	25040004 	addiu	a0,t0,4
bfc026e0:	2505fff8 	addiu	a1,t0,-8
bfc026e4:	ac840b44 	sw	a0,2884(a0)
bfc026e8:	aca50b44 	sw	a1,2884(a1)
bfc026ec:	91020b46 	lbu	v0,2886(t0)
bfc026f0:	8c850b44 	lw	a1,2884(a0)
bfc026f4:	8ca40b44 	lw	a0,2884(a1)
bfc026f8:	8ca60b44 	lw	a2,2884(a1)
bfc026fc:	144301e1 	bne	v0,v1,bfc02e84 <inst_error>
bfc02700:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:106
bfc02704:	3c097b9d 	lui	t1,0x7b9d
bfc02708:	3529a800 	ori	t1,t1,0xa800
bfc0270c:	3c08800d 	lui	t0,0x800d
bfc02710:	2403009d 	li	v1,157
bfc02714:	3c010001 	lui	at,0x1
bfc02718:	00280821 	addu	at,at,t0
bfc0271c:	ac29f048 	sw	t1,-4024(at)
bfc02720:	25040004 	addiu	a0,t0,4
bfc02724:	2505fff8 	addiu	a1,t0,-8
bfc02728:	3c010001 	lui	at,0x1
bfc0272c:	00240821 	addu	at,at,a0
bfc02730:	ac24f048 	sw	a0,-4024(at)
bfc02734:	3c010001 	lui	at,0x1
bfc02738:	00250821 	addu	at,at,a1
bfc0273c:	ac25f048 	sw	a1,-4024(at)
bfc02740:	3c020001 	lui	v0,0x1
bfc02744:	00481021 	addu	v0,v0,t0
bfc02748:	9042f04a 	lbu	v0,-4022(v0)
bfc0274c:	3c050001 	lui	a1,0x1
bfc02750:	00a42821 	addu	a1,a1,a0
bfc02754:	8ca5f048 	lw	a1,-4024(a1)
bfc02758:	3c040001 	lui	a0,0x1
bfc0275c:	00852021 	addu	a0,a0,a1
bfc02760:	8c84f048 	lw	a0,-4024(a0)
bfc02764:	3c060001 	lui	a2,0x1
bfc02768:	00c53021 	addu	a2,a2,a1
bfc0276c:	8cc6f048 	lw	a2,-4024(a2)
bfc02770:	144301c4 	bne	v0,v1,bfc02e84 <inst_error>
bfc02774:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:107
bfc02778:	3c095568 	lui	t1,0x5568
bfc0277c:	3529c260 	ori	t1,t1,0xc260
bfc02780:	3c08800d 	lui	t0,0x800d
bfc02784:	24030060 	li	v1,96
bfc02788:	ad0972e0 	sw	t1,29408(t0)
bfc0278c:	25040004 	addiu	a0,t0,4
bfc02790:	2505fff8 	addiu	a1,t0,-8
bfc02794:	ac8472e0 	sw	a0,29408(a0)
bfc02798:	aca572e0 	sw	a1,29408(a1)
bfc0279c:	910272e0 	lbu	v0,29408(t0)
bfc027a0:	8c8572e0 	lw	a1,29408(a0)
bfc027a4:	8ca472e0 	lw	a0,29408(a1)
bfc027a8:	8ca672e0 	lw	a2,29408(a1)
bfc027ac:	144301b5 	bne	v0,v1,bfc02e84 <inst_error>
bfc027b0:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:108
bfc027b4:	3c094bd9 	lui	t1,0x4bd9
bfc027b8:	35293c80 	ori	t1,t1,0x3c80
bfc027bc:	3c08800d 	lui	t0,0x800d
bfc027c0:	24030080 	li	v1,128
bfc027c4:	3c010001 	lui	at,0x1
bfc027c8:	00280821 	addu	at,at,t0
bfc027cc:	ac29ee30 	sw	t1,-4560(at)
bfc027d0:	25040004 	addiu	a0,t0,4
bfc027d4:	2505fff8 	addiu	a1,t0,-8
bfc027d8:	3c010001 	lui	at,0x1
bfc027dc:	00240821 	addu	at,at,a0
bfc027e0:	ac24ee30 	sw	a0,-4560(at)
bfc027e4:	3c010001 	lui	at,0x1
bfc027e8:	00250821 	addu	at,at,a1
bfc027ec:	ac25ee30 	sw	a1,-4560(at)
bfc027f0:	3c020001 	lui	v0,0x1
bfc027f4:	00481021 	addu	v0,v0,t0
bfc027f8:	9042ee30 	lbu	v0,-4560(v0)
bfc027fc:	3c050001 	lui	a1,0x1
bfc02800:	00a42821 	addu	a1,a1,a0
bfc02804:	8ca5ee30 	lw	a1,-4560(a1)
bfc02808:	3c040001 	lui	a0,0x1
bfc0280c:	00852021 	addu	a0,a0,a1
bfc02810:	8c84ee30 	lw	a0,-4560(a0)
bfc02814:	3c060001 	lui	a2,0x1
bfc02818:	00c53021 	addu	a2,a2,a1
bfc0281c:	8cc6ee30 	lw	a2,-4560(a2)
bfc02820:	14430198 	bne	v0,v1,bfc02e84 <inst_error>
bfc02824:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:109
bfc02828:	3c0923ad 	lui	t1,0x23ad
bfc0282c:	3529f432 	ori	t1,t1,0xf432
bfc02830:	3c08800d 	lui	t0,0x800d
bfc02834:	240300f4 	li	v1,244
bfc02838:	ad096008 	sw	t1,24584(t0)
bfc0283c:	25040004 	addiu	a0,t0,4
bfc02840:	2505fff8 	addiu	a1,t0,-8
bfc02844:	ac846008 	sw	a0,24584(a0)
bfc02848:	aca56008 	sw	a1,24584(a1)
bfc0284c:	91026009 	lbu	v0,24585(t0)
bfc02850:	8c856008 	lw	a1,24584(a0)
bfc02854:	8ca46008 	lw	a0,24584(a1)
bfc02858:	8ca66008 	lw	a2,24584(a1)
bfc0285c:	14430189 	bne	v0,v1,bfc02e84 <inst_error>
bfc02860:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:110
bfc02864:	3c096187 	lui	t1,0x6187
bfc02868:	3529f420 	ori	t1,t1,0xf420
bfc0286c:	3c08800d 	lui	t0,0x800d
bfc02870:	24030020 	li	v1,32
bfc02874:	ad092fd4 	sw	t1,12244(t0)
bfc02878:	25040004 	addiu	a0,t0,4
bfc0287c:	2505fff8 	addiu	a1,t0,-8
bfc02880:	ac842fd4 	sw	a0,12244(a0)
bfc02884:	aca52fd4 	sw	a1,12244(a1)
bfc02888:	91022fd4 	lbu	v0,12244(t0)
bfc0288c:	8c852fd4 	lw	a1,12244(a0)
bfc02890:	8ca42fd4 	lw	a0,12244(a1)
bfc02894:	8ca62fd4 	lw	a2,12244(a1)
bfc02898:	1443017a 	bne	v0,v1,bfc02e84 <inst_error>
bfc0289c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:111
bfc028a0:	3c096836 	lui	t1,0x6836
bfc028a4:	35293fa0 	ori	t1,t1,0x3fa0
bfc028a8:	3c08800d 	lui	t0,0x800d
bfc028ac:	240300a0 	li	v1,160
bfc028b0:	ad093e68 	sw	t1,15976(t0)
bfc028b4:	25040004 	addiu	a0,t0,4
bfc028b8:	2505fff8 	addiu	a1,t0,-8
bfc028bc:	ac843e68 	sw	a0,15976(a0)
bfc028c0:	aca53e68 	sw	a1,15976(a1)
bfc028c4:	91023e68 	lbu	v0,15976(t0)
bfc028c8:	8c853e68 	lw	a1,15976(a0)
bfc028cc:	8ca43e68 	lw	a0,15976(a1)
bfc028d0:	8ca63e68 	lw	a2,15976(a1)
bfc028d4:	1443016b 	bne	v0,v1,bfc02e84 <inst_error>
bfc028d8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:112
bfc028dc:	3c093723 	lui	t1,0x3723
bfc028e0:	3529c7f3 	ori	t1,t1,0xc7f3
bfc028e4:	3c08800d 	lui	t0,0x800d
bfc028e8:	240300f3 	li	v1,243
bfc028ec:	ad0943e0 	sw	t1,17376(t0)
bfc028f0:	25040004 	addiu	a0,t0,4
bfc028f4:	2505fff8 	addiu	a1,t0,-8
bfc028f8:	ac8443e0 	sw	a0,17376(a0)
bfc028fc:	aca543e0 	sw	a1,17376(a1)
bfc02900:	910243e0 	lbu	v0,17376(t0)
bfc02904:	8c8543e0 	lw	a1,17376(a0)
bfc02908:	8ca443e0 	lw	a0,17376(a1)
bfc0290c:	8ca643e0 	lw	a2,17376(a1)
bfc02910:	1443015c 	bne	v0,v1,bfc02e84 <inst_error>
bfc02914:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:113
bfc02918:	3c09d367 	lui	t1,0xd367
bfc0291c:	3529e11a 	ori	t1,t1,0xe11a
bfc02920:	3c08800d 	lui	t0,0x800d
bfc02924:	2403001a 	li	v1,26
bfc02928:	ad090000 	sw	t1,0(t0)
bfc0292c:	25040004 	addiu	a0,t0,4
bfc02930:	2505fff8 	addiu	a1,t0,-8
bfc02934:	ac840000 	sw	a0,0(a0)
bfc02938:	aca50000 	sw	a1,0(a1)
bfc0293c:	91020000 	lbu	v0,0(t0)
bfc02940:	8c850000 	lw	a1,0(a0)
bfc02944:	8ca40000 	lw	a0,0(a1)
bfc02948:	8ca60000 	lw	a2,0(a1)
bfc0294c:	1443014d 	bne	v0,v1,bfc02e84 <inst_error>
bfc02950:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:114
bfc02954:	3c09ea1b 	lui	t1,0xea1b
bfc02958:	3529c1e0 	ori	t1,t1,0xc1e0
bfc0295c:	3c08800d 	lui	t0,0x800d
bfc02960:	240300ea 	li	v1,234
bfc02964:	ad090000 	sw	t1,0(t0)
bfc02968:	25040004 	addiu	a0,t0,4
bfc0296c:	2505fff8 	addiu	a1,t0,-8
bfc02970:	ac840000 	sw	a0,0(a0)
bfc02974:	aca50000 	sw	a1,0(a1)
bfc02978:	91020003 	lbu	v0,3(t0)
bfc0297c:	8c850000 	lw	a1,0(a0)
bfc02980:	8ca40000 	lw	a0,0(a1)
bfc02984:	8ca60000 	lw	a2,0(a1)
bfc02988:	1443013e 	bne	v0,v1,bfc02e84 <inst_error>
bfc0298c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:115
bfc02990:	3c090dbc 	lui	t1,0xdbc
bfc02994:	3529d2ea 	ori	t1,t1,0xd2ea
bfc02998:	3c08800d 	lui	t0,0x800d
bfc0299c:	240300d2 	li	v1,210
bfc029a0:	ad090000 	sw	t1,0(t0)
bfc029a4:	25040004 	addiu	a0,t0,4
bfc029a8:	2505fff8 	addiu	a1,t0,-8
bfc029ac:	ac840000 	sw	a0,0(a0)
bfc029b0:	aca50000 	sw	a1,0(a1)
bfc029b4:	91020001 	lbu	v0,1(t0)
bfc029b8:	8c850000 	lw	a1,0(a0)
bfc029bc:	8ca40000 	lw	a0,0(a1)
bfc029c0:	8ca60000 	lw	a2,0(a1)
bfc029c4:	1443012f 	bne	v0,v1,bfc02e84 <inst_error>
bfc029c8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:116
bfc029cc:	3c092e83 	lui	t1,0x2e83
bfc029d0:	352977c6 	ori	t1,t1,0x77c6
bfc029d4:	3c08800d 	lui	t0,0x800d
bfc029d8:	240300c6 	li	v1,198
bfc029dc:	ad090000 	sw	t1,0(t0)
bfc029e0:	25040004 	addiu	a0,t0,4
bfc029e4:	2505fff8 	addiu	a1,t0,-8
bfc029e8:	ac840000 	sw	a0,0(a0)
bfc029ec:	aca50000 	sw	a1,0(a1)
bfc029f0:	91020000 	lbu	v0,0(t0)
bfc029f4:	8c850000 	lw	a1,0(a0)
bfc029f8:	8ca40000 	lw	a0,0(a1)
bfc029fc:	8ca60000 	lw	a2,0(a1)
bfc02a00:	14430120 	bne	v0,v1,bfc02e84 <inst_error>
bfc02a04:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:117
bfc02a08:	3c0985d1 	lui	t1,0x85d1
bfc02a0c:	3529767c 	ori	t1,t1,0x767c
bfc02a10:	3c08800d 	lui	t0,0x800d
bfc02a14:	24030076 	li	v1,118
bfc02a18:	ad090000 	sw	t1,0(t0)
bfc02a1c:	25040004 	addiu	a0,t0,4
bfc02a20:	2505fff8 	addiu	a1,t0,-8
bfc02a24:	ac840000 	sw	a0,0(a0)
bfc02a28:	aca50000 	sw	a1,0(a1)
bfc02a2c:	91020001 	lbu	v0,1(t0)
bfc02a30:	8c850000 	lw	a1,0(a0)
bfc02a34:	8ca40000 	lw	a0,0(a1)
bfc02a38:	8ca60000 	lw	a2,0(a1)
bfc02a3c:	14430111 	bne	v0,v1,bfc02e84 <inst_error>
bfc02a40:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:118
bfc02a44:	3c092a80 	lui	t1,0x2a80
bfc02a48:	35297b6e 	ori	t1,t1,0x7b6e
bfc02a4c:	3c08800d 	lui	t0,0x800d
bfc02a50:	2403006e 	li	v1,110
bfc02a54:	ad090000 	sw	t1,0(t0)
bfc02a58:	25040004 	addiu	a0,t0,4
bfc02a5c:	2505fff8 	addiu	a1,t0,-8
bfc02a60:	ac840000 	sw	a0,0(a0)
bfc02a64:	aca50000 	sw	a1,0(a1)
bfc02a68:	91020000 	lbu	v0,0(t0)
bfc02a6c:	8c850000 	lw	a1,0(a0)
bfc02a70:	8ca40000 	lw	a0,0(a1)
bfc02a74:	8ca60000 	lw	a2,0(a1)
bfc02a78:	14430102 	bne	v0,v1,bfc02e84 <inst_error>
bfc02a7c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:119
bfc02a80:	3c097c7e 	lui	t1,0x7c7e
bfc02a84:	3529468b 	ori	t1,t1,0x468b
bfc02a88:	3c08800d 	lui	t0,0x800d
bfc02a8c:	24030046 	li	v1,70
bfc02a90:	ad090000 	sw	t1,0(t0)
bfc02a94:	25040004 	addiu	a0,t0,4
bfc02a98:	2505fff8 	addiu	a1,t0,-8
bfc02a9c:	ac840000 	sw	a0,0(a0)
bfc02aa0:	aca50000 	sw	a1,0(a1)
bfc02aa4:	91020001 	lbu	v0,1(t0)
bfc02aa8:	8c850000 	lw	a1,0(a0)
bfc02aac:	8ca40000 	lw	a0,0(a1)
bfc02ab0:	8ca60000 	lw	a2,0(a1)
bfc02ab4:	144300f3 	bne	v0,v1,bfc02e84 <inst_error>
bfc02ab8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:120
bfc02abc:	3c09766b 	lui	t1,0x766b
bfc02ac0:	352930aa 	ori	t1,t1,0x30aa
bfc02ac4:	3c08800d 	lui	t0,0x800d
bfc02ac8:	240300aa 	li	v1,170
bfc02acc:	ad090000 	sw	t1,0(t0)
bfc02ad0:	25040004 	addiu	a0,t0,4
bfc02ad4:	2505fff8 	addiu	a1,t0,-8
bfc02ad8:	ac840000 	sw	a0,0(a0)
bfc02adc:	aca50000 	sw	a1,0(a1)
bfc02ae0:	91020000 	lbu	v0,0(t0)
bfc02ae4:	8c850000 	lw	a1,0(a0)
bfc02ae8:	8ca40000 	lw	a0,0(a1)
bfc02aec:	8ca60000 	lw	a2,0(a1)
bfc02af0:	144300e4 	bne	v0,v1,bfc02e84 <inst_error>
bfc02af4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:121
bfc02af8:	3c09f311 	lui	t1,0xf311
bfc02afc:	35292744 	ori	t1,t1,0x2744
bfc02b00:	3c08800d 	lui	t0,0x800d
bfc02b04:	240300f3 	li	v1,243
bfc02b08:	ad090000 	sw	t1,0(t0)
bfc02b0c:	25040004 	addiu	a0,t0,4
bfc02b10:	2505fff8 	addiu	a1,t0,-8
bfc02b14:	ac840000 	sw	a0,0(a0)
bfc02b18:	aca50000 	sw	a1,0(a1)
bfc02b1c:	91020003 	lbu	v0,3(t0)
bfc02b20:	8c850000 	lw	a1,0(a0)
bfc02b24:	8ca40000 	lw	a0,0(a1)
bfc02b28:	8ca60000 	lw	a2,0(a1)
bfc02b2c:	144300d5 	bne	v0,v1,bfc02e84 <inst_error>
bfc02b30:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:122
bfc02b34:	3c0924da 	lui	t1,0x24da
bfc02b38:	3529377c 	ori	t1,t1,0x377c
bfc02b3c:	3c08800d 	lui	t0,0x800d
bfc02b40:	24030037 	li	v1,55
bfc02b44:	ad090000 	sw	t1,0(t0)
bfc02b48:	25040004 	addiu	a0,t0,4
bfc02b4c:	2505fff8 	addiu	a1,t0,-8
bfc02b50:	ac840000 	sw	a0,0(a0)
bfc02b54:	aca50000 	sw	a1,0(a1)
bfc02b58:	91020001 	lbu	v0,1(t0)
bfc02b5c:	8c850000 	lw	a1,0(a0)
bfc02b60:	8ca40000 	lw	a0,0(a1)
bfc02b64:	8ca60000 	lw	a2,0(a1)
bfc02b68:	144300c6 	bne	v0,v1,bfc02e84 <inst_error>
bfc02b6c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:123
bfc02b70:	3c099eda 	lui	t1,0x9eda
bfc02b74:	35291a30 	ori	t1,t1,0x1a30
bfc02b78:	3c08800d 	lui	t0,0x800d
bfc02b7c:	2403001a 	li	v1,26
bfc02b80:	ad090000 	sw	t1,0(t0)
bfc02b84:	25040004 	addiu	a0,t0,4
bfc02b88:	2505fff8 	addiu	a1,t0,-8
bfc02b8c:	ac840000 	sw	a0,0(a0)
bfc02b90:	aca50000 	sw	a1,0(a1)
bfc02b94:	91020001 	lbu	v0,1(t0)
bfc02b98:	8c850000 	lw	a1,0(a0)
bfc02b9c:	8ca40000 	lw	a0,0(a1)
bfc02ba0:	8ca60000 	lw	a2,0(a1)
bfc02ba4:	144300b7 	bne	v0,v1,bfc02e84 <inst_error>
bfc02ba8:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:124
bfc02bac:	3c091e77 	lui	t1,0x1e77
bfc02bb0:	352930fe 	ori	t1,t1,0x30fe
bfc02bb4:	3c08800d 	lui	t0,0x800d
bfc02bb8:	240300fe 	li	v1,254
bfc02bbc:	ad090000 	sw	t1,0(t0)
bfc02bc0:	25040004 	addiu	a0,t0,4
bfc02bc4:	2505fff8 	addiu	a1,t0,-8
bfc02bc8:	ac840000 	sw	a0,0(a0)
bfc02bcc:	aca50000 	sw	a1,0(a1)
bfc02bd0:	91020000 	lbu	v0,0(t0)
bfc02bd4:	8c850000 	lw	a1,0(a0)
bfc02bd8:	8ca40000 	lw	a0,0(a1)
bfc02bdc:	8ca60000 	lw	a2,0(a1)
bfc02be0:	144300a8 	bne	v0,v1,bfc02e84 <inst_error>
bfc02be4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:125
bfc02be8:	3c094acf 	lui	t1,0x4acf
bfc02bec:	3529dea0 	ori	t1,t1,0xdea0
bfc02bf0:	3c08800d 	lui	t0,0x800d
bfc02bf4:	240300de 	li	v1,222
bfc02bf8:	ad090000 	sw	t1,0(t0)
bfc02bfc:	25040004 	addiu	a0,t0,4
bfc02c00:	2505fff8 	addiu	a1,t0,-8
bfc02c04:	ac840000 	sw	a0,0(a0)
bfc02c08:	aca50000 	sw	a1,0(a1)
bfc02c0c:	91020001 	lbu	v0,1(t0)
bfc02c10:	8c850000 	lw	a1,0(a0)
bfc02c14:	8ca40000 	lw	a0,0(a1)
bfc02c18:	8ca60000 	lw	a2,0(a1)
bfc02c1c:	14430099 	bne	v0,v1,bfc02e84 <inst_error>
bfc02c20:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:126
bfc02c24:	3c0984b7 	lui	t1,0x84b7
bfc02c28:	35290109 	ori	t1,t1,0x109
bfc02c2c:	3c08800d 	lui	t0,0x800d
bfc02c30:	24030084 	li	v1,132
bfc02c34:	ad090000 	sw	t1,0(t0)
bfc02c38:	25040004 	addiu	a0,t0,4
bfc02c3c:	2505fff8 	addiu	a1,t0,-8
bfc02c40:	ac840000 	sw	a0,0(a0)
bfc02c44:	aca50000 	sw	a1,0(a1)
bfc02c48:	91020003 	lbu	v0,3(t0)
bfc02c4c:	8c850000 	lw	a1,0(a0)
bfc02c50:	8ca40000 	lw	a0,0(a1)
bfc02c54:	8ca60000 	lw	a2,0(a1)
bfc02c58:	1443008a 	bne	v0,v1,bfc02e84 <inst_error>
bfc02c5c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:127
bfc02c60:	3c09ace9 	lui	t1,0xace9
bfc02c64:	3529f794 	ori	t1,t1,0xf794
bfc02c68:	3c08800d 	lui	t0,0x800d
bfc02c6c:	24030094 	li	v1,148
bfc02c70:	ad090000 	sw	t1,0(t0)
bfc02c74:	25040004 	addiu	a0,t0,4
bfc02c78:	2505fff8 	addiu	a1,t0,-8
bfc02c7c:	ac840000 	sw	a0,0(a0)
bfc02c80:	aca50000 	sw	a1,0(a1)
bfc02c84:	91020000 	lbu	v0,0(t0)
bfc02c88:	8c850000 	lw	a1,0(a0)
bfc02c8c:	8ca40000 	lw	a0,0(a1)
bfc02c90:	8ca60000 	lw	a2,0(a1)
bfc02c94:	1443007b 	bne	v0,v1,bfc02e84 <inst_error>
bfc02c98:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:128
bfc02c9c:	3c0960a3 	lui	t1,0x60a3
bfc02ca0:	3529b6d8 	ori	t1,t1,0xb6d8
bfc02ca4:	3c08800d 	lui	t0,0x800d
bfc02ca8:	240300b6 	li	v1,182
bfc02cac:	ad090000 	sw	t1,0(t0)
bfc02cb0:	25040004 	addiu	a0,t0,4
bfc02cb4:	2505fff8 	addiu	a1,t0,-8
bfc02cb8:	ac840000 	sw	a0,0(a0)
bfc02cbc:	aca50000 	sw	a1,0(a1)
bfc02cc0:	91020001 	lbu	v0,1(t0)
bfc02cc4:	8c850000 	lw	a1,0(a0)
bfc02cc8:	8ca40000 	lw	a0,0(a1)
bfc02ccc:	8ca60000 	lw	a2,0(a1)
bfc02cd0:	1443006c 	bne	v0,v1,bfc02e84 <inst_error>
bfc02cd4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:129
bfc02cd8:	3c09954e 	lui	t1,0x954e
bfc02cdc:	3529b5ee 	ori	t1,t1,0xb5ee
bfc02ce0:	3c08800d 	lui	t0,0x800d
bfc02ce4:	240300b5 	li	v1,181
bfc02ce8:	ad090000 	sw	t1,0(t0)
bfc02cec:	25040004 	addiu	a0,t0,4
bfc02cf0:	2505fff8 	addiu	a1,t0,-8
bfc02cf4:	ac840000 	sw	a0,0(a0)
bfc02cf8:	aca50000 	sw	a1,0(a1)
bfc02cfc:	91020001 	lbu	v0,1(t0)
bfc02d00:	8c850000 	lw	a1,0(a0)
bfc02d04:	8ca40000 	lw	a0,0(a1)
bfc02d08:	8ca60000 	lw	a2,0(a1)
bfc02d0c:	1443005d 	bne	v0,v1,bfc02e84 <inst_error>
bfc02d10:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:130
bfc02d14:	3c0995ff 	lui	t1,0x95ff
bfc02d18:	3529cf80 	ori	t1,t1,0xcf80
bfc02d1c:	3c08800d 	lui	t0,0x800d
bfc02d20:	24030095 	li	v1,149
bfc02d24:	ad090000 	sw	t1,0(t0)
bfc02d28:	25040004 	addiu	a0,t0,4
bfc02d2c:	2505fff8 	addiu	a1,t0,-8
bfc02d30:	ac840000 	sw	a0,0(a0)
bfc02d34:	aca50000 	sw	a1,0(a1)
bfc02d38:	91020003 	lbu	v0,3(t0)
bfc02d3c:	8c850000 	lw	a1,0(a0)
bfc02d40:	8ca40000 	lw	a0,0(a1)
bfc02d44:	8ca60000 	lw	a2,0(a1)
bfc02d48:	1443004e 	bne	v0,v1,bfc02e84 <inst_error>
bfc02d4c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:131
bfc02d50:	3c09e20e 	lui	t1,0xe20e
bfc02d54:	3529fe40 	ori	t1,t1,0xfe40
bfc02d58:	3c08800d 	lui	t0,0x800d
bfc02d5c:	24030040 	li	v1,64
bfc02d60:	ad090000 	sw	t1,0(t0)
bfc02d64:	25040004 	addiu	a0,t0,4
bfc02d68:	2505fff8 	addiu	a1,t0,-8
bfc02d6c:	ac840000 	sw	a0,0(a0)
bfc02d70:	aca50000 	sw	a1,0(a1)
bfc02d74:	91020000 	lbu	v0,0(t0)
bfc02d78:	8c850000 	lw	a1,0(a0)
bfc02d7c:	8ca40000 	lw	a0,0(a1)
bfc02d80:	8ca60000 	lw	a2,0(a1)
bfc02d84:	1443003f 	bne	v0,v1,bfc02e84 <inst_error>
bfc02d88:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:132
bfc02d8c:	3c09826e 	lui	t1,0x826e
bfc02d90:	35290c40 	ori	t1,t1,0xc40
bfc02d94:	3c08800d 	lui	t0,0x800d
bfc02d98:	24030082 	li	v1,130
bfc02d9c:	ad090000 	sw	t1,0(t0)
bfc02da0:	25040004 	addiu	a0,t0,4
bfc02da4:	2505fff8 	addiu	a1,t0,-8
bfc02da8:	ac840000 	sw	a0,0(a0)
bfc02dac:	aca50000 	sw	a1,0(a1)
bfc02db0:	91020003 	lbu	v0,3(t0)
bfc02db4:	8c850000 	lw	a1,0(a0)
bfc02db8:	8ca40000 	lw	a0,0(a1)
bfc02dbc:	8ca60000 	lw	a2,0(a1)
bfc02dc0:	14430030 	bne	v0,v1,bfc02e84 <inst_error>
bfc02dc4:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:133
bfc02dc8:	3c093c7f 	lui	t1,0x3c7f
bfc02dcc:	35293796 	ori	t1,t1,0x3796
bfc02dd0:	3c08800d 	lui	t0,0x800d
bfc02dd4:	2403003c 	li	v1,60
bfc02dd8:	ad090000 	sw	t1,0(t0)
bfc02ddc:	25040004 	addiu	a0,t0,4
bfc02de0:	2505fff8 	addiu	a1,t0,-8
bfc02de4:	ac840000 	sw	a0,0(a0)
bfc02de8:	aca50000 	sw	a1,0(a1)
bfc02dec:	91020003 	lbu	v0,3(t0)
bfc02df0:	8c850000 	lw	a1,0(a0)
bfc02df4:	8ca40000 	lw	a0,0(a1)
bfc02df8:	8ca60000 	lw	a2,0(a1)
bfc02dfc:	14430021 	bne	v0,v1,bfc02e84 <inst_error>
bfc02e00:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:134
bfc02e04:	3c09d82d 	lui	t1,0xd82d
bfc02e08:	35294498 	ori	t1,t1,0x4498
bfc02e0c:	3c08800d 	lui	t0,0x800d
bfc02e10:	2403002d 	li	v1,45
bfc02e14:	ad090000 	sw	t1,0(t0)
bfc02e18:	25040004 	addiu	a0,t0,4
bfc02e1c:	2505fff8 	addiu	a1,t0,-8
bfc02e20:	ac840000 	sw	a0,0(a0)
bfc02e24:	aca50000 	sw	a1,0(a1)
bfc02e28:	91020002 	lbu	v0,2(t0)
bfc02e2c:	8c850000 	lw	a1,0(a0)
bfc02e30:	8ca40000 	lw	a0,0(a1)
bfc02e34:	8ca60000 	lw	a2,0(a1)
bfc02e38:	14430012 	bne	v0,v1,bfc02e84 <inst_error>
bfc02e3c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:135
bfc02e40:	24090000 	li	t1,0
bfc02e44:	3c08800d 	lui	t0,0x800d
bfc02e48:	24030000 	li	v1,0
bfc02e4c:	ad090000 	sw	t1,0(t0)
bfc02e50:	25040004 	addiu	a0,t0,4
bfc02e54:	2505fff8 	addiu	a1,t0,-8
bfc02e58:	ac840000 	sw	a0,0(a0)
bfc02e5c:	aca50000 	sw	a1,0(a1)
bfc02e60:	91020000 	lbu	v0,0(t0)
bfc02e64:	8c850000 	lw	a1,0(a0)
bfc02e68:	8ca40000 	lw	a0,0(a1)
bfc02e6c:	8ca60000 	lw	a2,0(a1)
bfc02e70:	14430004 	bne	v0,v1,bfc02e84 <inst_error>
bfc02e74:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:137
bfc02e78:	16400002 	bnez	s2,bfc02e84 <inst_error>
/home/csy/func/inst/n60_lbu.S:138
bfc02e7c:	00000000 	nop
/home/csy/func/inst/n60_lbu.S:140
bfc02e80:	26730001 	addiu	s3,s3,1

bfc02e84 <inst_error>:
/home/csy/func/inst/n60_lbu.S:143
bfc02e84:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n60_lbu.S:144
bfc02e88:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n60_lbu.S:145
bfc02e8c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n60_lbu.S:146
bfc02e90:	03e00008 	jr	ra
/home/csy/func/inst/n60_lbu.S:147
bfc02e94:	00000000 	nop
	...

bfc02ea0 <n63_sb_test>:
/home/csy/func/inst/n63_sb.S:7
bfc02ea0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n63_sb.S:8
bfc02ea4:	24120000 	li	s2,0
/home/csy/func/inst/n63_sb.S:10
bfc02ea8:	3c0ab4f0 	lui	t2,0xb4f0
bfc02eac:	354a0930 	ori	t2,t2,0x930
bfc02eb0:	3c097955 	lui	t1,0x7955
bfc02eb4:	3529c40a 	ori	t1,t1,0xc40a
bfc02eb8:	3c08800d 	lui	t0,0x800d
bfc02ebc:	350816ec 	ori	t0,t0,0x16ec
bfc02ec0:	3c03b4f0 	lui	v1,0xb4f0
bfc02ec4:	3463090a 	ori	v1,v1,0x90a
bfc02ec8:	ad0a61ec 	sw	t2,25068(t0)
bfc02ecc:	a10961ec 	sb	t1,25068(t0)
bfc02ed0:	25040004 	addiu	a0,t0,4
bfc02ed4:	2505fffc 	addiu	a1,t0,-4
bfc02ed8:	ac8461ec 	sw	a0,25068(a0)
bfc02edc:	aca561ec 	sw	a1,25068(a1)
bfc02ee0:	8d0261ec 	lw	v0,25068(t0)
bfc02ee4:	8ca461ec 	lw	a0,25068(a1)
bfc02ee8:	8c8561ec 	lw	a1,25068(a0)
bfc02eec:	8ca661ec 	lw	a2,25068(a1)
bfc02ef0:	14430a24 	bne	v0,v1,bfc05784 <inst_error>
bfc02ef4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:11
bfc02ef8:	3c0a1943 	lui	t2,0x1943
bfc02efc:	354a31ca 	ori	t2,t2,0x31ca
bfc02f00:	3c094765 	lui	t1,0x4765
bfc02f04:	35297e06 	ori	t1,t1,0x7e06
bfc02f08:	3c08800d 	lui	t0,0x800d
bfc02f0c:	35085068 	ori	t0,t0,0x5068
bfc02f10:	3c031943 	lui	v1,0x1943
bfc02f14:	34633106 	ori	v1,v1,0x3106
bfc02f18:	ad0a6868 	sw	t2,26728(t0)
bfc02f1c:	a1096868 	sb	t1,26728(t0)
bfc02f20:	25040004 	addiu	a0,t0,4
bfc02f24:	2505fffc 	addiu	a1,t0,-4
bfc02f28:	ac846868 	sw	a0,26728(a0)
bfc02f2c:	aca56868 	sw	a1,26728(a1)
bfc02f30:	8d026868 	lw	v0,26728(t0)
bfc02f34:	8ca46868 	lw	a0,26728(a1)
bfc02f38:	8c856868 	lw	a1,26728(a0)
bfc02f3c:	8ca66868 	lw	a2,26728(a1)
bfc02f40:	14430a10 	bne	v0,v1,bfc05784 <inst_error>
bfc02f44:	00000000 	nop
/home/csy/func/inst/n63_sb.S:12
bfc02f48:	3c0a9efa 	lui	t2,0x9efa
bfc02f4c:	354afca8 	ori	t2,t2,0xfca8
bfc02f50:	3c092547 	lui	t1,0x2547
bfc02f54:	35294bf0 	ori	t1,t1,0x4bf0
bfc02f58:	3c08800d 	lui	t0,0x800d
bfc02f5c:	35089f20 	ori	t0,t0,0x9f20
bfc02f60:	3c039ef0 	lui	v1,0x9ef0
bfc02f64:	3463fca8 	ori	v1,v1,0xfca8
bfc02f68:	ad0a3660 	sw	t2,13920(t0)
bfc02f6c:	a1093662 	sb	t1,13922(t0)
bfc02f70:	25040004 	addiu	a0,t0,4
bfc02f74:	2505fffc 	addiu	a1,t0,-4
bfc02f78:	ac843660 	sw	a0,13920(a0)
bfc02f7c:	aca53660 	sw	a1,13920(a1)
bfc02f80:	8d023660 	lw	v0,13920(t0)
bfc02f84:	8ca43660 	lw	a0,13920(a1)
bfc02f88:	8c853660 	lw	a1,13920(a0)
bfc02f8c:	8ca63660 	lw	a2,13920(a1)
bfc02f90:	144309fc 	bne	v0,v1,bfc05784 <inst_error>
bfc02f94:	00000000 	nop
/home/csy/func/inst/n63_sb.S:13
bfc02f98:	3c0a9648 	lui	t2,0x9648
bfc02f9c:	354aec44 	ori	t2,t2,0xec44
bfc02fa0:	3c092516 	lui	t1,0x2516
bfc02fa4:	35295c46 	ori	t1,t1,0x5c46
bfc02fa8:	3c08800d 	lui	t0,0x800d
bfc02fac:	350894a4 	ori	t0,t0,0x94a4
bfc02fb0:	3c039648 	lui	v1,0x9648
bfc02fb4:	3463ec46 	ori	v1,v1,0xec46
bfc02fb8:	ad0a01fc 	sw	t2,508(t0)
bfc02fbc:	a10901fc 	sb	t1,508(t0)
bfc02fc0:	25040004 	addiu	a0,t0,4
bfc02fc4:	2505fffc 	addiu	a1,t0,-4
bfc02fc8:	ac8401fc 	sw	a0,508(a0)
bfc02fcc:	aca501fc 	sw	a1,508(a1)
bfc02fd0:	8d0201fc 	lw	v0,508(t0)
bfc02fd4:	8ca401fc 	lw	a0,508(a1)
bfc02fd8:	8c8501fc 	lw	a1,508(a0)
bfc02fdc:	8ca601fc 	lw	a2,508(a1)
bfc02fe0:	144309e8 	bne	v0,v1,bfc05784 <inst_error>
bfc02fe4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:14
bfc02fe8:	3c0ac93c 	lui	t2,0xc93c
bfc02fec:	354a8d07 	ori	t2,t2,0x8d07
bfc02ff0:	3c096070 	lui	t1,0x6070
bfc02ff4:	352947b4 	ori	t1,t1,0x47b4
bfc02ff8:	3c08800d 	lui	t0,0x800d
bfc02ffc:	3508f8f0 	ori	t0,t0,0xf8f0
bfc03000:	3c03b43c 	lui	v1,0xb43c
bfc03004:	34638d07 	ori	v1,v1,0x8d07
bfc03008:	ad0a00f8 	sw	t2,248(t0)
bfc0300c:	a10900fb 	sb	t1,251(t0)
bfc03010:	25040004 	addiu	a0,t0,4
bfc03014:	2505fffc 	addiu	a1,t0,-4
bfc03018:	ac8400f8 	sw	a0,248(a0)
bfc0301c:	aca500f8 	sw	a1,248(a1)
bfc03020:	8d0200f8 	lw	v0,248(t0)
bfc03024:	8ca400f8 	lw	a0,248(a1)
bfc03028:	8c8500f8 	lw	a1,248(a0)
bfc0302c:	8ca600f8 	lw	a2,248(a1)
bfc03030:	144309d4 	bne	v0,v1,bfc05784 <inst_error>
bfc03034:	00000000 	nop
/home/csy/func/inst/n63_sb.S:15
bfc03038:	3c0a2a18 	lui	t2,0x2a18
bfc0303c:	354abf86 	ori	t2,t2,0xbf86
bfc03040:	3c0933e9 	lui	t1,0x33e9
bfc03044:	35294a7c 	ori	t1,t1,0x4a7c
bfc03048:	3c08800d 	lui	t0,0x800d
bfc0304c:	350854b4 	ori	t0,t0,0x54b4
bfc03050:	3c032a18 	lui	v1,0x2a18
bfc03054:	3463bf7c 	ori	v1,v1,0xbf7c
bfc03058:	ad0a5210 	sw	t2,21008(t0)
bfc0305c:	a1095210 	sb	t1,21008(t0)
bfc03060:	25040004 	addiu	a0,t0,4
bfc03064:	2505fffc 	addiu	a1,t0,-4
bfc03068:	ac845210 	sw	a0,21008(a0)
bfc0306c:	aca55210 	sw	a1,21008(a1)
bfc03070:	8d025210 	lw	v0,21008(t0)
bfc03074:	8ca45210 	lw	a0,21008(a1)
bfc03078:	8c855210 	lw	a1,21008(a0)
bfc0307c:	8ca65210 	lw	a2,21008(a1)
bfc03080:	144309c0 	bne	v0,v1,bfc05784 <inst_error>
bfc03084:	00000000 	nop
/home/csy/func/inst/n63_sb.S:16
bfc03088:	3c0a4283 	lui	t2,0x4283
bfc0308c:	354abdfc 	ori	t2,t2,0xbdfc
bfc03090:	3c094852 	lui	t1,0x4852
bfc03094:	35294d98 	ori	t1,t1,0x4d98
bfc03098:	3c08800d 	lui	t0,0x800d
bfc0309c:	35084c20 	ori	t0,t0,0x4c20
bfc030a0:	3c034298 	lui	v1,0x4298
bfc030a4:	3463bdfc 	ori	v1,v1,0xbdfc
bfc030a8:	ad0a5c54 	sw	t2,23636(t0)
bfc030ac:	a1095c56 	sb	t1,23638(t0)
bfc030b0:	25040004 	addiu	a0,t0,4
bfc030b4:	2505fffc 	addiu	a1,t0,-4
bfc030b8:	ac845c54 	sw	a0,23636(a0)
bfc030bc:	aca55c54 	sw	a1,23636(a1)
bfc030c0:	8d025c54 	lw	v0,23636(t0)
bfc030c4:	8ca45c54 	lw	a0,23636(a1)
bfc030c8:	8c855c54 	lw	a1,23636(a0)
bfc030cc:	8ca65c54 	lw	a2,23636(a1)
bfc030d0:	144309ac 	bne	v0,v1,bfc05784 <inst_error>
bfc030d4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:17
bfc030d8:	3c0af950 	lui	t2,0xf950
bfc030dc:	354abe60 	ori	t2,t2,0xbe60
bfc030e0:	3c09132a 	lui	t1,0x132a
bfc030e4:	35299383 	ori	t1,t1,0x9383
bfc030e8:	3c08800d 	lui	t0,0x800d
bfc030ec:	35085b10 	ori	t0,t0,0x5b10
bfc030f0:	3c03f950 	lui	v1,0xf950
bfc030f4:	3463be83 	ori	v1,v1,0xbe83
bfc030f8:	ad0a2ca8 	sw	t2,11432(t0)
bfc030fc:	a1092ca8 	sb	t1,11432(t0)
bfc03100:	25040004 	addiu	a0,t0,4
bfc03104:	2505fffc 	addiu	a1,t0,-4
bfc03108:	ac842ca8 	sw	a0,11432(a0)
bfc0310c:	aca52ca8 	sw	a1,11432(a1)
bfc03110:	8d022ca8 	lw	v0,11432(t0)
bfc03114:	8ca42ca8 	lw	a0,11432(a1)
bfc03118:	8c852ca8 	lw	a1,11432(a0)
bfc0311c:	8ca62ca8 	lw	a2,11432(a1)
bfc03120:	14430998 	bne	v0,v1,bfc05784 <inst_error>
bfc03124:	00000000 	nop
/home/csy/func/inst/n63_sb.S:18
bfc03128:	3c0a7123 	lui	t2,0x7123
bfc0312c:	354a68e3 	ori	t2,t2,0x68e3
bfc03130:	3c09a6a8 	lui	t1,0xa6a8
bfc03134:	35298b20 	ori	t1,t1,0x8b20
bfc03138:	3c08800d 	lui	t0,0x800d
bfc0313c:	35089db0 	ori	t0,t0,0x9db0
bfc03140:	3c037123 	lui	v1,0x7123
bfc03144:	34636820 	ori	v1,v1,0x6820
bfc03148:	ad0a3970 	sw	t2,14704(t0)
bfc0314c:	a1093970 	sb	t1,14704(t0)
bfc03150:	25040004 	addiu	a0,t0,4
bfc03154:	2505fffc 	addiu	a1,t0,-4
bfc03158:	ac843970 	sw	a0,14704(a0)
bfc0315c:	aca53970 	sw	a1,14704(a1)
bfc03160:	8d023970 	lw	v0,14704(t0)
bfc03164:	8ca43970 	lw	a0,14704(a1)
bfc03168:	8c853970 	lw	a1,14704(a0)
bfc0316c:	8ca63970 	lw	a2,14704(a1)
bfc03170:	14430984 	bne	v0,v1,bfc05784 <inst_error>
bfc03174:	00000000 	nop
/home/csy/func/inst/n63_sb.S:19
bfc03178:	3c0ad1b0 	lui	t2,0xd1b0
bfc0317c:	354aab60 	ori	t2,t2,0xab60
bfc03180:	3c093384 	lui	t1,0x3384
bfc03184:	3529462f 	ori	t1,t1,0x462f
bfc03188:	3c08800d 	lui	t0,0x800d
bfc0318c:	3508a420 	ori	t0,t0,0xa420
bfc03190:	3c03d1b0 	lui	v1,0xd1b0
bfc03194:	3463ab2f 	ori	v1,v1,0xab2f
bfc03198:	ad0a1560 	sw	t2,5472(t0)
bfc0319c:	a1091560 	sb	t1,5472(t0)
bfc031a0:	25040004 	addiu	a0,t0,4
bfc031a4:	2505fffc 	addiu	a1,t0,-4
bfc031a8:	ac841560 	sw	a0,5472(a0)
bfc031ac:	aca51560 	sw	a1,5472(a1)
bfc031b0:	8d021560 	lw	v0,5472(t0)
bfc031b4:	8ca41560 	lw	a0,5472(a1)
bfc031b8:	8c851560 	lw	a1,5472(a0)
bfc031bc:	8ca61560 	lw	a2,5472(a1)
bfc031c0:	14430970 	bne	v0,v1,bfc05784 <inst_error>
bfc031c4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:20
bfc031c8:	3c0a06d2 	lui	t2,0x6d2
bfc031cc:	354ab531 	ori	t2,t2,0xb531
bfc031d0:	3c09093c 	lui	t1,0x93c
bfc031d4:	35292180 	ori	t1,t1,0x2180
bfc031d8:	3c08800d 	lui	t0,0x800d
bfc031dc:	35086f20 	ori	t0,t0,0x6f20
bfc031e0:	3c030680 	lui	v1,0x680
bfc031e4:	3463b531 	ori	v1,v1,0xb531
bfc031e8:	ad0a67dc 	sw	t2,26588(t0)
bfc031ec:	a10967de 	sb	t1,26590(t0)
bfc031f0:	25040004 	addiu	a0,t0,4
bfc031f4:	2505fffc 	addiu	a1,t0,-4
bfc031f8:	ac8467dc 	sw	a0,26588(a0)
bfc031fc:	aca567dc 	sw	a1,26588(a1)
bfc03200:	8d0267dc 	lw	v0,26588(t0)
bfc03204:	8ca467dc 	lw	a0,26588(a1)
bfc03208:	8c8567dc 	lw	a1,26588(a0)
bfc0320c:	8ca667dc 	lw	a2,26588(a1)
bfc03210:	1443095c 	bne	v0,v1,bfc05784 <inst_error>
bfc03214:	00000000 	nop
/home/csy/func/inst/n63_sb.S:21
bfc03218:	3c0abc5e 	lui	t2,0xbc5e
bfc0321c:	354a8270 	ori	t2,t2,0x8270
bfc03220:	3c09c97f 	lui	t1,0xc97f
bfc03224:	35294716 	ori	t1,t1,0x4716
bfc03228:	3c08800d 	lui	t0,0x800d
bfc0322c:	35081c3c 	ori	t0,t0,0x1c3c
bfc03230:	3c03bc16 	lui	v1,0xbc16
bfc03234:	34638270 	ori	v1,v1,0x8270
bfc03238:	ad0a52e4 	sw	t2,21220(t0)
bfc0323c:	a10952e6 	sb	t1,21222(t0)
bfc03240:	25040004 	addiu	a0,t0,4
bfc03244:	2505fffc 	addiu	a1,t0,-4
bfc03248:	ac8452e4 	sw	a0,21220(a0)
bfc0324c:	aca552e4 	sw	a1,21220(a1)
bfc03250:	8d0252e4 	lw	v0,21220(t0)
bfc03254:	8ca452e4 	lw	a0,21220(a1)
bfc03258:	8c8552e4 	lw	a1,21220(a0)
bfc0325c:	8ca652e4 	lw	a2,21220(a1)
bfc03260:	14430948 	bne	v0,v1,bfc05784 <inst_error>
bfc03264:	00000000 	nop
/home/csy/func/inst/n63_sb.S:22
bfc03268:	3c0a6754 	lui	t2,0x6754
bfc0326c:	354a4f88 	ori	t2,t2,0x4f88
bfc03270:	3c094de1 	lui	t1,0x4de1
bfc03274:	35296970 	ori	t1,t1,0x6970
bfc03278:	3c08800d 	lui	t0,0x800d
bfc0327c:	35080770 	ori	t0,t0,0x770
bfc03280:	3c036754 	lui	v1,0x6754
bfc03284:	34637088 	ori	v1,v1,0x7088
bfc03288:	ad0a4570 	sw	t2,17776(t0)
bfc0328c:	a1094571 	sb	t1,17777(t0)
bfc03290:	25040004 	addiu	a0,t0,4
bfc03294:	2505fffc 	addiu	a1,t0,-4
bfc03298:	ac844570 	sw	a0,17776(a0)
bfc0329c:	aca54570 	sw	a1,17776(a1)
bfc032a0:	8d024570 	lw	v0,17776(t0)
bfc032a4:	8ca44570 	lw	a0,17776(a1)
bfc032a8:	8c854570 	lw	a1,17776(a0)
bfc032ac:	8ca64570 	lw	a2,17776(a1)
bfc032b0:	14430934 	bne	v0,v1,bfc05784 <inst_error>
bfc032b4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:23
bfc032b8:	3c0a9a91 	lui	t2,0x9a91
bfc032bc:	354a63f0 	ori	t2,t2,0x63f0
bfc032c0:	3c091204 	lui	t1,0x1204
bfc032c4:	35293778 	ori	t1,t1,0x3778
bfc032c8:	3c08800d 	lui	t0,0x800d
bfc032cc:	35089718 	ori	t0,t0,0x9718
bfc032d0:	3c039a91 	lui	v1,0x9a91
bfc032d4:	346378f0 	ori	v1,v1,0x78f0
bfc032d8:	ad0a0120 	sw	t2,288(t0)
bfc032dc:	a1090121 	sb	t1,289(t0)
bfc032e0:	25040004 	addiu	a0,t0,4
bfc032e4:	2505fffc 	addiu	a1,t0,-4
bfc032e8:	ac840120 	sw	a0,288(a0)
bfc032ec:	aca50120 	sw	a1,288(a1)
bfc032f0:	8d020120 	lw	v0,288(t0)
bfc032f4:	8ca40120 	lw	a0,288(a1)
bfc032f8:	8c850120 	lw	a1,288(a0)
bfc032fc:	8ca60120 	lw	a2,288(a1)
bfc03300:	14430920 	bne	v0,v1,bfc05784 <inst_error>
bfc03304:	00000000 	nop
/home/csy/func/inst/n63_sb.S:24
bfc03308:	3c0ae9a7 	lui	t2,0xe9a7
bfc0330c:	354a36d0 	ori	t2,t2,0x36d0
bfc03310:	3c090264 	lui	t1,0x264
bfc03314:	35290360 	ori	t1,t1,0x360
bfc03318:	3c08800d 	lui	t0,0x800d
bfc0331c:	35081e24 	ori	t0,t0,0x1e24
bfc03320:	3c03e9a7 	lui	v1,0xe9a7
bfc03324:	34633660 	ori	v1,v1,0x3660
bfc03328:	ad0a0f28 	sw	t2,3880(t0)
bfc0332c:	a1090f28 	sb	t1,3880(t0)
bfc03330:	25040004 	addiu	a0,t0,4
bfc03334:	2505fffc 	addiu	a1,t0,-4
bfc03338:	ac840f28 	sw	a0,3880(a0)
bfc0333c:	aca50f28 	sw	a1,3880(a1)
bfc03340:	8d020f28 	lw	v0,3880(t0)
bfc03344:	8ca40f28 	lw	a0,3880(a1)
bfc03348:	8c850f28 	lw	a1,3880(a0)
bfc0334c:	8ca60f28 	lw	a2,3880(a1)
bfc03350:	1443090c 	bne	v0,v1,bfc05784 <inst_error>
bfc03354:	00000000 	nop
/home/csy/func/inst/n63_sb.S:25
bfc03358:	3c0aebf1 	lui	t2,0xebf1
bfc0335c:	354ac120 	ori	t2,t2,0xc120
bfc03360:	3c0923cf 	lui	t1,0x23cf
bfc03364:	3529ed10 	ori	t1,t1,0xed10
bfc03368:	3c08800d 	lui	t0,0x800d
bfc0336c:	3508d340 	ori	t0,t0,0xd340
bfc03370:	3c03ebf1 	lui	v1,0xebf1
bfc03374:	3463c110 	ori	v1,v1,0xc110
bfc03378:	ad0a1de4 	sw	t2,7652(t0)
bfc0337c:	a1091de4 	sb	t1,7652(t0)
bfc03380:	25040004 	addiu	a0,t0,4
bfc03384:	2505fffc 	addiu	a1,t0,-4
bfc03388:	ac841de4 	sw	a0,7652(a0)
bfc0338c:	aca51de4 	sw	a1,7652(a1)
bfc03390:	8d021de4 	lw	v0,7652(t0)
bfc03394:	8ca41de4 	lw	a0,7652(a1)
bfc03398:	8c851de4 	lw	a1,7652(a0)
bfc0339c:	8ca61de4 	lw	a2,7652(a1)
bfc033a0:	144308f8 	bne	v0,v1,bfc05784 <inst_error>
bfc033a4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:26
bfc033a8:	3c0a5854 	lui	t2,0x5854
bfc033ac:	354a9334 	ori	t2,t2,0x9334
bfc033b0:	3c091b55 	lui	t1,0x1b55
bfc033b4:	35297440 	ori	t1,t1,0x7440
bfc033b8:	3c08800d 	lui	t0,0x800d
bfc033bc:	350856f0 	ori	t0,t0,0x56f0
bfc033c0:	3c035840 	lui	v1,0x5840
bfc033c4:	34639334 	ori	v1,v1,0x9334
bfc033c8:	ad0a4308 	sw	t2,17160(t0)
bfc033cc:	a109430a 	sb	t1,17162(t0)
bfc033d0:	25040004 	addiu	a0,t0,4
bfc033d4:	2505fffc 	addiu	a1,t0,-4
bfc033d8:	ac844308 	sw	a0,17160(a0)
bfc033dc:	aca54308 	sw	a1,17160(a1)
bfc033e0:	8d024308 	lw	v0,17160(t0)
bfc033e4:	8ca44308 	lw	a0,17160(a1)
bfc033e8:	8c854308 	lw	a1,17160(a0)
bfc033ec:	8ca64308 	lw	a2,17160(a1)
bfc033f0:	144308e4 	bne	v0,v1,bfc05784 <inst_error>
bfc033f4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:27
bfc033f8:	3c0a0a1f 	lui	t2,0xa1f
bfc033fc:	354a3a0d 	ori	t2,t2,0x3a0d
bfc03400:	3c099705 	lui	t1,0x9705
bfc03404:	3529c818 	ori	t1,t1,0xc818
bfc03408:	3c08800d 	lui	t0,0x800d
bfc0340c:	3508869c 	ori	t0,t0,0x869c
bfc03410:	3c030a18 	lui	v1,0xa18
bfc03414:	34633a0d 	ori	v1,v1,0x3a0d
bfc03418:	ad0a197c 	sw	t2,6524(t0)
bfc0341c:	a109197e 	sb	t1,6526(t0)
bfc03420:	25040004 	addiu	a0,t0,4
bfc03424:	2505fffc 	addiu	a1,t0,-4
bfc03428:	ac84197c 	sw	a0,6524(a0)
bfc0342c:	aca5197c 	sw	a1,6524(a1)
bfc03430:	8d02197c 	lw	v0,6524(t0)
bfc03434:	8ca4197c 	lw	a0,6524(a1)
bfc03438:	8c85197c 	lw	a1,6524(a0)
bfc0343c:	8ca6197c 	lw	a2,6524(a1)
bfc03440:	144308d0 	bne	v0,v1,bfc05784 <inst_error>
bfc03444:	00000000 	nop
/home/csy/func/inst/n63_sb.S:28
bfc03448:	3c0ac545 	lui	t2,0xc545
bfc0344c:	354aeb10 	ori	t2,t2,0xeb10
bfc03450:	3c09e26f 	lui	t1,0xe26f
bfc03454:	3529d0dc 	ori	t1,t1,0xd0dc
bfc03458:	3c08800d 	lui	t0,0x800d
bfc0345c:	3508d4a0 	ori	t0,t0,0xd4a0
bfc03460:	3c03c545 	lui	v1,0xc545
bfc03464:	3463ebdc 	ori	v1,v1,0xebdc
bfc03468:	ad0a01f4 	sw	t2,500(t0)
bfc0346c:	a10901f4 	sb	t1,500(t0)
bfc03470:	25040004 	addiu	a0,t0,4
bfc03474:	2505fffc 	addiu	a1,t0,-4
bfc03478:	ac8401f4 	sw	a0,500(a0)
bfc0347c:	aca501f4 	sw	a1,500(a1)
bfc03480:	8d0201f4 	lw	v0,500(t0)
bfc03484:	8ca401f4 	lw	a0,500(a1)
bfc03488:	8c8501f4 	lw	a1,500(a0)
bfc0348c:	8ca601f4 	lw	a2,500(a1)
bfc03490:	144308bc 	bne	v0,v1,bfc05784 <inst_error>
bfc03494:	00000000 	nop
/home/csy/func/inst/n63_sb.S:29
bfc03498:	3c0a2495 	lui	t2,0x2495
bfc0349c:	354aa82c 	ori	t2,t2,0xa82c
bfc034a0:	3c092b6d 	lui	t1,0x2b6d
bfc034a4:	35299dcc 	ori	t1,t1,0x9dcc
bfc034a8:	3c08800d 	lui	t0,0x800d
bfc034ac:	35085654 	ori	t0,t0,0x5654
bfc034b0:	3c03cc95 	lui	v1,0xcc95
bfc034b4:	3463a82c 	ori	v1,v1,0xa82c
bfc034b8:	ad0a46ac 	sw	t2,18092(t0)
bfc034bc:	a10946af 	sb	t1,18095(t0)
bfc034c0:	25040004 	addiu	a0,t0,4
bfc034c4:	2505fffc 	addiu	a1,t0,-4
bfc034c8:	ac8446ac 	sw	a0,18092(a0)
bfc034cc:	aca546ac 	sw	a1,18092(a1)
bfc034d0:	8d0246ac 	lw	v0,18092(t0)
bfc034d4:	8ca446ac 	lw	a0,18092(a1)
bfc034d8:	8c8546ac 	lw	a1,18092(a0)
bfc034dc:	8ca646ac 	lw	a2,18092(a1)
bfc034e0:	144308a8 	bne	v0,v1,bfc05784 <inst_error>
bfc034e4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:30
bfc034e8:	3c0ad155 	lui	t2,0xd155
bfc034ec:	354a26cc 	ori	t2,t2,0x26cc
bfc034f0:	3c097285 	lui	t1,0x7285
bfc034f4:	352925c0 	ori	t1,t1,0x25c0
bfc034f8:	3c08800d 	lui	t0,0x800d
bfc034fc:	35082538 	ori	t0,t0,0x2538
bfc03500:	3c03d155 	lui	v1,0xd155
bfc03504:	346326c0 	ori	v1,v1,0x26c0
bfc03508:	ad0a0d04 	sw	t2,3332(t0)
bfc0350c:	a1090d04 	sb	t1,3332(t0)
bfc03510:	25040004 	addiu	a0,t0,4
bfc03514:	2505fffc 	addiu	a1,t0,-4
bfc03518:	ac840d04 	sw	a0,3332(a0)
bfc0351c:	aca50d04 	sw	a1,3332(a1)
bfc03520:	8d020d04 	lw	v0,3332(t0)
bfc03524:	8ca40d04 	lw	a0,3332(a1)
bfc03528:	8c850d04 	lw	a1,3332(a0)
bfc0352c:	8ca60d04 	lw	a2,3332(a1)
bfc03530:	14430894 	bne	v0,v1,bfc05784 <inst_error>
bfc03534:	00000000 	nop
/home/csy/func/inst/n63_sb.S:31
bfc03538:	3c0a4995 	lui	t2,0x4995
bfc0353c:	354a521e 	ori	t2,t2,0x521e
bfc03540:	3c0909c0 	lui	t1,0x9c0
bfc03544:	3529dd47 	ori	t1,t1,0xdd47
bfc03548:	3c08800d 	lui	t0,0x800d
bfc0354c:	35082400 	ori	t0,t0,0x2400
bfc03550:	3c034995 	lui	v1,0x4995
bfc03554:	3463471e 	ori	v1,v1,0x471e
bfc03558:	3c010001 	lui	at,0x1
bfc0355c:	00280821 	addu	at,at,t0
bfc03560:	ac2abd3c 	sw	t2,-17092(at)
bfc03564:	3c010001 	lui	at,0x1
bfc03568:	00280821 	addu	at,at,t0
bfc0356c:	a029bd3d 	sb	t1,-17091(at)
bfc03570:	25040004 	addiu	a0,t0,4
bfc03574:	2505fffc 	addiu	a1,t0,-4
bfc03578:	3c010001 	lui	at,0x1
bfc0357c:	00240821 	addu	at,at,a0
bfc03580:	ac24bd3c 	sw	a0,-17092(at)
bfc03584:	3c010001 	lui	at,0x1
bfc03588:	00250821 	addu	at,at,a1
bfc0358c:	ac25bd3c 	sw	a1,-17092(at)
bfc03590:	3c020001 	lui	v0,0x1
bfc03594:	00481021 	addu	v0,v0,t0
bfc03598:	8c42bd3c 	lw	v0,-17092(v0)
bfc0359c:	3c040001 	lui	a0,0x1
bfc035a0:	00852021 	addu	a0,a0,a1
bfc035a4:	8c84bd3c 	lw	a0,-17092(a0)
bfc035a8:	3c050001 	lui	a1,0x1
bfc035ac:	00a42821 	addu	a1,a1,a0
bfc035b0:	8ca5bd3c 	lw	a1,-17092(a1)
bfc035b4:	3c060001 	lui	a2,0x1
bfc035b8:	00c53021 	addu	a2,a2,a1
bfc035bc:	8cc6bd3c 	lw	a2,-17092(a2)
bfc035c0:	14430870 	bne	v0,v1,bfc05784 <inst_error>
bfc035c4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:32
bfc035c8:	3c0ae68f 	lui	t2,0xe68f
bfc035cc:	354aa3cb 	ori	t2,t2,0xa3cb
bfc035d0:	3c09b7dc 	lui	t1,0xb7dc
bfc035d4:	3529b7de 	ori	t1,t1,0xb7de
bfc035d8:	3c08800d 	lui	t0,0x800d
bfc035dc:	35085324 	ori	t0,t0,0x5324
bfc035e0:	3c03e68f 	lui	v1,0xe68f
bfc035e4:	3463a3de 	ori	v1,v1,0xa3de
bfc035e8:	ad0a15a8 	sw	t2,5544(t0)
bfc035ec:	a10915a8 	sb	t1,5544(t0)
bfc035f0:	25040004 	addiu	a0,t0,4
bfc035f4:	2505fffc 	addiu	a1,t0,-4
bfc035f8:	ac8415a8 	sw	a0,5544(a0)
bfc035fc:	aca515a8 	sw	a1,5544(a1)
bfc03600:	8d0215a8 	lw	v0,5544(t0)
bfc03604:	8ca415a8 	lw	a0,5544(a1)
bfc03608:	8c8515a8 	lw	a1,5544(a0)
bfc0360c:	8ca615a8 	lw	a2,5544(a1)
bfc03610:	1443085c 	bne	v0,v1,bfc05784 <inst_error>
bfc03614:	00000000 	nop
/home/csy/func/inst/n63_sb.S:33
bfc03618:	3c0aa1d5 	lui	t2,0xa1d5
bfc0361c:	354a08e8 	ori	t2,t2,0x8e8
bfc03620:	3c09fd28 	lui	t1,0xfd28
bfc03624:	352982a4 	ori	t1,t1,0x82a4
bfc03628:	3c08800d 	lui	t0,0x800d
bfc0362c:	3508bb68 	ori	t0,t0,0xbb68
bfc03630:	3c03a1d5 	lui	v1,0xa1d5
bfc03634:	346308a4 	ori	v1,v1,0x8a4
bfc03638:	ad0a3d18 	sw	t2,15640(t0)
bfc0363c:	a1093d18 	sb	t1,15640(t0)
bfc03640:	25040004 	addiu	a0,t0,4
bfc03644:	2505fffc 	addiu	a1,t0,-4
bfc03648:	ac843d18 	sw	a0,15640(a0)
bfc0364c:	aca53d18 	sw	a1,15640(a1)
bfc03650:	8d023d18 	lw	v0,15640(t0)
bfc03654:	8ca43d18 	lw	a0,15640(a1)
bfc03658:	8c853d18 	lw	a1,15640(a0)
bfc0365c:	8ca63d18 	lw	a2,15640(a1)
bfc03660:	14430848 	bne	v0,v1,bfc05784 <inst_error>
bfc03664:	00000000 	nop
/home/csy/func/inst/n63_sb.S:34
bfc03668:	3c0a1951 	lui	t2,0x1951
bfc0366c:	354a5bd9 	ori	t2,t2,0x5bd9
bfc03670:	3c09d5fc 	lui	t1,0xd5fc
bfc03674:	35298620 	ori	t1,t1,0x8620
bfc03678:	3c08800d 	lui	t0,0x800d
bfc0367c:	35082b20 	ori	t0,t0,0x2b20
bfc03680:	3c032051 	lui	v1,0x2051
bfc03684:	34635bd9 	ori	v1,v1,0x5bd9
bfc03688:	3c010001 	lui	at,0x1
bfc0368c:	00280821 	addu	at,at,t0
bfc03690:	ac2ab794 	sw	t2,-18540(at)
bfc03694:	3c010001 	lui	at,0x1
bfc03698:	00280821 	addu	at,at,t0
bfc0369c:	a029b797 	sb	t1,-18537(at)
bfc036a0:	25040004 	addiu	a0,t0,4
bfc036a4:	2505fffc 	addiu	a1,t0,-4
bfc036a8:	3c010001 	lui	at,0x1
bfc036ac:	00240821 	addu	at,at,a0
bfc036b0:	ac24b794 	sw	a0,-18540(at)
bfc036b4:	3c010001 	lui	at,0x1
bfc036b8:	00250821 	addu	at,at,a1
bfc036bc:	ac25b794 	sw	a1,-18540(at)
bfc036c0:	3c020001 	lui	v0,0x1
bfc036c4:	00481021 	addu	v0,v0,t0
bfc036c8:	8c42b794 	lw	v0,-18540(v0)
bfc036cc:	3c040001 	lui	a0,0x1
bfc036d0:	00852021 	addu	a0,a0,a1
bfc036d4:	8c84b794 	lw	a0,-18540(a0)
bfc036d8:	3c050001 	lui	a1,0x1
bfc036dc:	00a42821 	addu	a1,a1,a0
bfc036e0:	8ca5b794 	lw	a1,-18540(a1)
bfc036e4:	3c060001 	lui	a2,0x1
bfc036e8:	00c53021 	addu	a2,a2,a1
bfc036ec:	8cc6b794 	lw	a2,-18540(a2)
bfc036f0:	14430824 	bne	v0,v1,bfc05784 <inst_error>
bfc036f4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:35
bfc036f8:	3c0a431f 	lui	t2,0x431f
bfc036fc:	354a36bc 	ori	t2,t2,0x36bc
bfc03700:	3c098de3 	lui	t1,0x8de3
bfc03704:	3529033d 	ori	t1,t1,0x33d
bfc03708:	3c08800d 	lui	t0,0x800d
bfc0370c:	350883d4 	ori	t0,t0,0x83d4
bfc03710:	3c03431f 	lui	v1,0x431f
bfc03714:	3463363d 	ori	v1,v1,0x363d
bfc03718:	ad0a4d0c 	sw	t2,19724(t0)
bfc0371c:	a1094d0c 	sb	t1,19724(t0)
bfc03720:	25040004 	addiu	a0,t0,4
bfc03724:	2505fffc 	addiu	a1,t0,-4
bfc03728:	ac844d0c 	sw	a0,19724(a0)
bfc0372c:	aca54d0c 	sw	a1,19724(a1)
bfc03730:	8d024d0c 	lw	v0,19724(t0)
bfc03734:	8ca44d0c 	lw	a0,19724(a1)
bfc03738:	8c854d0c 	lw	a1,19724(a0)
bfc0373c:	8ca64d0c 	lw	a2,19724(a1)
bfc03740:	14430810 	bne	v0,v1,bfc05784 <inst_error>
bfc03744:	00000000 	nop
/home/csy/func/inst/n63_sb.S:36
bfc03748:	3c0a3232 	lui	t2,0x3232
bfc0374c:	354a9da6 	ori	t2,t2,0x9da6
bfc03750:	3c093eb8 	lui	t1,0x3eb8
bfc03754:	3529314c 	ori	t1,t1,0x314c
bfc03758:	3c08800d 	lui	t0,0x800d
bfc0375c:	3508e3a8 	ori	t0,t0,0xe3a8
bfc03760:	3c033232 	lui	v1,0x3232
bfc03764:	34634ca6 	ori	v1,v1,0x4ca6
bfc03768:	ad0a0ae4 	sw	t2,2788(t0)
bfc0376c:	a1090ae5 	sb	t1,2789(t0)
bfc03770:	25040004 	addiu	a0,t0,4
bfc03774:	2505fffc 	addiu	a1,t0,-4
bfc03778:	ac840ae4 	sw	a0,2788(a0)
bfc0377c:	aca50ae4 	sw	a1,2788(a1)
bfc03780:	8d020ae4 	lw	v0,2788(t0)
bfc03784:	8ca40ae4 	lw	a0,2788(a1)
bfc03788:	8c850ae4 	lw	a1,2788(a0)
bfc0378c:	8ca60ae4 	lw	a2,2788(a1)
bfc03790:	144307fc 	bne	v0,v1,bfc05784 <inst_error>
bfc03794:	00000000 	nop
/home/csy/func/inst/n63_sb.S:37
bfc03798:	3c0ac12c 	lui	t2,0xc12c
bfc0379c:	354ac3cc 	ori	t2,t2,0xc3cc
bfc037a0:	3c09cb6e 	lui	t1,0xcb6e
bfc037a4:	3529a900 	ori	t1,t1,0xa900
bfc037a8:	3c08800d 	lui	t0,0x800d
bfc037ac:	35084550 	ori	t0,t0,0x4550
bfc037b0:	3c03c100 	lui	v1,0xc100
bfc037b4:	3463c3cc 	ori	v1,v1,0xc3cc
bfc037b8:	ad0a66a4 	sw	t2,26276(t0)
bfc037bc:	a10966a6 	sb	t1,26278(t0)
bfc037c0:	25040004 	addiu	a0,t0,4
bfc037c4:	2505fffc 	addiu	a1,t0,-4
bfc037c8:	ac8466a4 	sw	a0,26276(a0)
bfc037cc:	aca566a4 	sw	a1,26276(a1)
bfc037d0:	8d0266a4 	lw	v0,26276(t0)
bfc037d4:	8ca466a4 	lw	a0,26276(a1)
bfc037d8:	8c8566a4 	lw	a1,26276(a0)
bfc037dc:	8ca666a4 	lw	a2,26276(a1)
bfc037e0:	144307e8 	bne	v0,v1,bfc05784 <inst_error>
bfc037e4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:38
bfc037e8:	3c0a4c48 	lui	t2,0x4c48
bfc037ec:	354aff70 	ori	t2,t2,0xff70
bfc037f0:	3c09e9ff 	lui	t1,0xe9ff
bfc037f4:	3529efab 	ori	t1,t1,0xefab
bfc037f8:	3c08800d 	lui	t0,0x800d
bfc037fc:	350882b4 	ori	t0,t0,0x82b4
bfc03800:	3c034c48 	lui	v1,0x4c48
bfc03804:	3463ffab 	ori	v1,v1,0xffab
bfc03808:	ad0a41f4 	sw	t2,16884(t0)
bfc0380c:	a10941f4 	sb	t1,16884(t0)
bfc03810:	25040004 	addiu	a0,t0,4
bfc03814:	2505fffc 	addiu	a1,t0,-4
bfc03818:	ac8441f4 	sw	a0,16884(a0)
bfc0381c:	aca541f4 	sw	a1,16884(a1)
bfc03820:	8d0241f4 	lw	v0,16884(t0)
bfc03824:	8ca441f4 	lw	a0,16884(a1)
bfc03828:	8c8541f4 	lw	a1,16884(a0)
bfc0382c:	8ca641f4 	lw	a2,16884(a1)
bfc03830:	144307d4 	bne	v0,v1,bfc05784 <inst_error>
bfc03834:	00000000 	nop
/home/csy/func/inst/n63_sb.S:39
bfc03838:	3c0a9100 	lui	t2,0x9100
bfc0383c:	354a6168 	ori	t2,t2,0x6168
bfc03840:	3c090bcb 	lui	t1,0xbcb
bfc03844:	35297118 	ori	t1,t1,0x7118
bfc03848:	3c08800d 	lui	t0,0x800d
bfc0384c:	35084fdc 	ori	t0,t0,0x4fdc
bfc03850:	3c039100 	lui	v1,0x9100
bfc03854:	34636118 	ori	v1,v1,0x6118
bfc03858:	ad0a2f0c 	sw	t2,12044(t0)
bfc0385c:	a1092f0c 	sb	t1,12044(t0)
bfc03860:	25040004 	addiu	a0,t0,4
bfc03864:	2505fffc 	addiu	a1,t0,-4
bfc03868:	ac842f0c 	sw	a0,12044(a0)
bfc0386c:	aca52f0c 	sw	a1,12044(a1)
bfc03870:	8d022f0c 	lw	v0,12044(t0)
bfc03874:	8ca42f0c 	lw	a0,12044(a1)
bfc03878:	8c852f0c 	lw	a1,12044(a0)
bfc0387c:	8ca62f0c 	lw	a2,12044(a1)
bfc03880:	144307c0 	bne	v0,v1,bfc05784 <inst_error>
bfc03884:	00000000 	nop
/home/csy/func/inst/n63_sb.S:40
bfc03888:	3c0a8fe7 	lui	t2,0x8fe7
bfc0388c:	354a39a2 	ori	t2,t2,0x39a2
bfc03890:	3c097d4a 	lui	t1,0x7d4a
bfc03894:	35296bb6 	ori	t1,t1,0x6bb6
bfc03898:	3c08800d 	lui	t0,0x800d
bfc0389c:	3508635c 	ori	t0,t0,0x635c
bfc038a0:	3c038fb6 	lui	v1,0x8fb6
bfc038a4:	346339a2 	ori	v1,v1,0x39a2
bfc038a8:	ad0a1b7c 	sw	t2,7036(t0)
bfc038ac:	a1091b7e 	sb	t1,7038(t0)
bfc038b0:	25040004 	addiu	a0,t0,4
bfc038b4:	2505fffc 	addiu	a1,t0,-4
bfc038b8:	ac841b7c 	sw	a0,7036(a0)
bfc038bc:	aca51b7c 	sw	a1,7036(a1)
bfc038c0:	8d021b7c 	lw	v0,7036(t0)
bfc038c4:	8ca41b7c 	lw	a0,7036(a1)
bfc038c8:	8c851b7c 	lw	a1,7036(a0)
bfc038cc:	8ca61b7c 	lw	a2,7036(a1)
bfc038d0:	144307ac 	bne	v0,v1,bfc05784 <inst_error>
bfc038d4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:41
bfc038d8:	3c0a4be1 	lui	t2,0x4be1
bfc038dc:	354a5cd4 	ori	t2,t2,0x5cd4
bfc038e0:	3c09ff48 	lui	t1,0xff48
bfc038e4:	35291820 	ori	t1,t1,0x1820
bfc038e8:	3c08800d 	lui	t0,0x800d
bfc038ec:	3508d9e8 	ori	t0,t0,0xd9e8
bfc038f0:	3c034be1 	lui	v1,0x4be1
bfc038f4:	34635c20 	ori	v1,v1,0x5c20
bfc038f8:	ad0a06e8 	sw	t2,1768(t0)
bfc038fc:	a10906e8 	sb	t1,1768(t0)
bfc03900:	25040004 	addiu	a0,t0,4
bfc03904:	2505fffc 	addiu	a1,t0,-4
bfc03908:	ac8406e8 	sw	a0,1768(a0)
bfc0390c:	aca506e8 	sw	a1,1768(a1)
bfc03910:	8d0206e8 	lw	v0,1768(t0)
bfc03914:	8ca406e8 	lw	a0,1768(a1)
bfc03918:	8c8506e8 	lw	a1,1768(a0)
bfc0391c:	8ca606e8 	lw	a2,1768(a1)
bfc03920:	14430798 	bne	v0,v1,bfc05784 <inst_error>
bfc03924:	00000000 	nop
/home/csy/func/inst/n63_sb.S:42
bfc03928:	3c0aab84 	lui	t2,0xab84
bfc0392c:	354aef36 	ori	t2,t2,0xef36
bfc03930:	3c09229f 	lui	t1,0x229f
bfc03934:	3529a36c 	ori	t1,t1,0xa36c
bfc03938:	3c08800d 	lui	t0,0x800d
bfc0393c:	35080f70 	ori	t0,t0,0xf70
bfc03940:	3c03ab84 	lui	v1,0xab84
bfc03944:	3463ef6c 	ori	v1,v1,0xef6c
bfc03948:	ad0a4c50 	sw	t2,19536(t0)
bfc0394c:	a1094c50 	sb	t1,19536(t0)
bfc03950:	25040004 	addiu	a0,t0,4
bfc03954:	2505fffc 	addiu	a1,t0,-4
bfc03958:	ac844c50 	sw	a0,19536(a0)
bfc0395c:	aca54c50 	sw	a1,19536(a1)
bfc03960:	8d024c50 	lw	v0,19536(t0)
bfc03964:	8ca44c50 	lw	a0,19536(a1)
bfc03968:	8c854c50 	lw	a1,19536(a0)
bfc0396c:	8ca64c50 	lw	a2,19536(a1)
bfc03970:	14430784 	bne	v0,v1,bfc05784 <inst_error>
bfc03974:	00000000 	nop
/home/csy/func/inst/n63_sb.S:43
bfc03978:	3c0a0ab4 	lui	t2,0xab4
bfc0397c:	354a30f0 	ori	t2,t2,0x30f0
bfc03980:	3c099c60 	lui	t1,0x9c60
bfc03984:	35295140 	ori	t1,t1,0x5140
bfc03988:	3c08800d 	lui	t0,0x800d
bfc0398c:	35081bb4 	ori	t0,t0,0x1bb4
bfc03990:	3c030ab4 	lui	v1,0xab4
bfc03994:	34633040 	ori	v1,v1,0x3040
bfc03998:	3c010001 	lui	at,0x1
bfc0399c:	00280821 	addu	at,at,t0
bfc039a0:	ac2abc54 	sw	t2,-17324(at)
bfc039a4:	3c010001 	lui	at,0x1
bfc039a8:	00280821 	addu	at,at,t0
bfc039ac:	a029bc54 	sb	t1,-17324(at)
bfc039b0:	25040004 	addiu	a0,t0,4
bfc039b4:	2505fffc 	addiu	a1,t0,-4
bfc039b8:	3c010001 	lui	at,0x1
bfc039bc:	00240821 	addu	at,at,a0
bfc039c0:	ac24bc54 	sw	a0,-17324(at)
bfc039c4:	3c010001 	lui	at,0x1
bfc039c8:	00250821 	addu	at,at,a1
bfc039cc:	ac25bc54 	sw	a1,-17324(at)
bfc039d0:	3c020001 	lui	v0,0x1
bfc039d4:	00481021 	addu	v0,v0,t0
bfc039d8:	8c42bc54 	lw	v0,-17324(v0)
bfc039dc:	3c040001 	lui	a0,0x1
bfc039e0:	00852021 	addu	a0,a0,a1
bfc039e4:	8c84bc54 	lw	a0,-17324(a0)
bfc039e8:	3c050001 	lui	a1,0x1
bfc039ec:	00a42821 	addu	a1,a1,a0
bfc039f0:	8ca5bc54 	lw	a1,-17324(a1)
bfc039f4:	3c060001 	lui	a2,0x1
bfc039f8:	00c53021 	addu	a2,a2,a1
bfc039fc:	8cc6bc54 	lw	a2,-17324(a2)
bfc03a00:	14430760 	bne	v0,v1,bfc05784 <inst_error>
bfc03a04:	00000000 	nop
/home/csy/func/inst/n63_sb.S:44
bfc03a08:	3c0ac9df 	lui	t2,0xc9df
bfc03a0c:	354a3d10 	ori	t2,t2,0x3d10
bfc03a10:	3c092943 	lui	t1,0x2943
bfc03a14:	352937c4 	ori	t1,t1,0x37c4
bfc03a18:	3c08800d 	lui	t0,0x800d
bfc03a1c:	35083a28 	ori	t0,t0,0x3a28
bfc03a20:	3c03c9c4 	lui	v1,0xc9c4
bfc03a24:	34633d10 	ori	v1,v1,0x3d10
bfc03a28:	3c010001 	lui	at,0x1
bfc03a2c:	00280821 	addu	at,at,t0
bfc03a30:	ac2aa530 	sw	t2,-23248(at)
bfc03a34:	3c010001 	lui	at,0x1
bfc03a38:	00280821 	addu	at,at,t0
bfc03a3c:	a029a532 	sb	t1,-23246(at)
bfc03a40:	25040004 	addiu	a0,t0,4
bfc03a44:	2505fffc 	addiu	a1,t0,-4
bfc03a48:	3c010001 	lui	at,0x1
bfc03a4c:	00240821 	addu	at,at,a0
bfc03a50:	ac24a530 	sw	a0,-23248(at)
bfc03a54:	3c010001 	lui	at,0x1
bfc03a58:	00250821 	addu	at,at,a1
bfc03a5c:	ac25a530 	sw	a1,-23248(at)
bfc03a60:	3c020001 	lui	v0,0x1
bfc03a64:	00481021 	addu	v0,v0,t0
bfc03a68:	8c42a530 	lw	v0,-23248(v0)
bfc03a6c:	3c040001 	lui	a0,0x1
bfc03a70:	00852021 	addu	a0,a0,a1
bfc03a74:	8c84a530 	lw	a0,-23248(a0)
bfc03a78:	3c050001 	lui	a1,0x1
bfc03a7c:	00a42821 	addu	a1,a1,a0
bfc03a80:	8ca5a530 	lw	a1,-23248(a1)
bfc03a84:	3c060001 	lui	a2,0x1
bfc03a88:	00c53021 	addu	a2,a2,a1
bfc03a8c:	8cc6a530 	lw	a2,-23248(a2)
bfc03a90:	1443073c 	bne	v0,v1,bfc05784 <inst_error>
bfc03a94:	00000000 	nop
/home/csy/func/inst/n63_sb.S:45
bfc03a98:	3c0a8e71 	lui	t2,0x8e71
bfc03a9c:	354ab1bc 	ori	t2,t2,0xb1bc
bfc03aa0:	3c095471 	lui	t1,0x5471
bfc03aa4:	3529d562 	ori	t1,t1,0xd562
bfc03aa8:	3c08800d 	lui	t0,0x800d
bfc03aac:	3508383c 	ori	t0,t0,0x383c
bfc03ab0:	3c038e62 	lui	v1,0x8e62
bfc03ab4:	3463b1bc 	ori	v1,v1,0xb1bc
bfc03ab8:	ad0a2270 	sw	t2,8816(t0)
bfc03abc:	a1092272 	sb	t1,8818(t0)
bfc03ac0:	25040004 	addiu	a0,t0,4
bfc03ac4:	2505fffc 	addiu	a1,t0,-4
bfc03ac8:	ac842270 	sw	a0,8816(a0)
bfc03acc:	aca52270 	sw	a1,8816(a1)
bfc03ad0:	8d022270 	lw	v0,8816(t0)
bfc03ad4:	8ca42270 	lw	a0,8816(a1)
bfc03ad8:	8c852270 	lw	a1,8816(a0)
bfc03adc:	8ca62270 	lw	a2,8816(a1)
bfc03ae0:	14430728 	bne	v0,v1,bfc05784 <inst_error>
bfc03ae4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:46
bfc03ae8:	3c0a03aa 	lui	t2,0x3aa
bfc03aec:	354ae560 	ori	t2,t2,0xe560
bfc03af0:	3c0919ea 	lui	t1,0x19ea
bfc03af4:	35296d90 	ori	t1,t1,0x6d90
bfc03af8:	3c08800d 	lui	t0,0x800d
bfc03afc:	3c0390aa 	lui	v1,0x90aa
bfc03b00:	3463e560 	ori	v1,v1,0xe560
bfc03b04:	3c010001 	lui	at,0x1
bfc03b08:	00280821 	addu	at,at,t0
bfc03b0c:	ac2af7a8 	sw	t2,-2136(at)
bfc03b10:	3c010001 	lui	at,0x1
bfc03b14:	00280821 	addu	at,at,t0
bfc03b18:	a029f7ab 	sb	t1,-2133(at)
bfc03b1c:	25040004 	addiu	a0,t0,4
bfc03b20:	2505fffc 	addiu	a1,t0,-4
bfc03b24:	3c010001 	lui	at,0x1
bfc03b28:	00240821 	addu	at,at,a0
bfc03b2c:	ac24f7a8 	sw	a0,-2136(at)
bfc03b30:	3c010001 	lui	at,0x1
bfc03b34:	00250821 	addu	at,at,a1
bfc03b38:	ac25f7a8 	sw	a1,-2136(at)
bfc03b3c:	3c020001 	lui	v0,0x1
bfc03b40:	00481021 	addu	v0,v0,t0
bfc03b44:	8c42f7a8 	lw	v0,-2136(v0)
bfc03b48:	3c040001 	lui	a0,0x1
bfc03b4c:	00852021 	addu	a0,a0,a1
bfc03b50:	8c84f7a8 	lw	a0,-2136(a0)
bfc03b54:	3c050001 	lui	a1,0x1
bfc03b58:	00a42821 	addu	a1,a1,a0
bfc03b5c:	8ca5f7a8 	lw	a1,-2136(a1)
bfc03b60:	3c060001 	lui	a2,0x1
bfc03b64:	00c53021 	addu	a2,a2,a1
bfc03b68:	8cc6f7a8 	lw	a2,-2136(a2)
bfc03b6c:	14430705 	bne	v0,v1,bfc05784 <inst_error>
bfc03b70:	00000000 	nop
/home/csy/func/inst/n63_sb.S:47
bfc03b74:	3c0a4983 	lui	t2,0x4983
bfc03b78:	354a7840 	ori	t2,t2,0x7840
bfc03b7c:	3c092a0a 	lui	t1,0x2a0a
bfc03b80:	3529711c 	ori	t1,t1,0x711c
bfc03b84:	3c08800d 	lui	t0,0x800d
bfc03b88:	3c034983 	lui	v1,0x4983
bfc03b8c:	3463781c 	ori	v1,v1,0x781c
bfc03b90:	ad0a3a40 	sw	t2,14912(t0)
bfc03b94:	a1093a40 	sb	t1,14912(t0)
bfc03b98:	25040004 	addiu	a0,t0,4
bfc03b9c:	2505fffc 	addiu	a1,t0,-4
bfc03ba0:	ac843a40 	sw	a0,14912(a0)
bfc03ba4:	aca53a40 	sw	a1,14912(a1)
bfc03ba8:	8d023a40 	lw	v0,14912(t0)
bfc03bac:	8ca43a40 	lw	a0,14912(a1)
bfc03bb0:	8c853a40 	lw	a1,14912(a0)
bfc03bb4:	8ca63a40 	lw	a2,14912(a1)
bfc03bb8:	144306f2 	bne	v0,v1,bfc05784 <inst_error>
bfc03bbc:	00000000 	nop
/home/csy/func/inst/n63_sb.S:48
bfc03bc0:	3c0a8508 	lui	t2,0x8508
bfc03bc4:	354a13af 	ori	t2,t2,0x13af
bfc03bc8:	3c096e98 	lui	t1,0x6e98
bfc03bcc:	3529ee40 	ori	t1,t1,0xee40
bfc03bd0:	3c08800d 	lui	t0,0x800d
bfc03bd4:	3c038540 	lui	v1,0x8540
bfc03bd8:	346313af 	ori	v1,v1,0x13af
bfc03bdc:	ad0a2968 	sw	t2,10600(t0)
bfc03be0:	a109296a 	sb	t1,10602(t0)
bfc03be4:	25040004 	addiu	a0,t0,4
bfc03be8:	2505fffc 	addiu	a1,t0,-4
bfc03bec:	ac842968 	sw	a0,10600(a0)
bfc03bf0:	aca52968 	sw	a1,10600(a1)
bfc03bf4:	8d022968 	lw	v0,10600(t0)
bfc03bf8:	8ca42968 	lw	a0,10600(a1)
bfc03bfc:	8c852968 	lw	a1,10600(a0)
bfc03c00:	8ca62968 	lw	a2,10600(a1)
bfc03c04:	144306df 	bne	v0,v1,bfc05784 <inst_error>
bfc03c08:	00000000 	nop
/home/csy/func/inst/n63_sb.S:49
bfc03c0c:	3c0a8b01 	lui	t2,0x8b01
bfc03c10:	354af0c8 	ori	t2,t2,0xf0c8
bfc03c14:	3c09490a 	lui	t1,0x490a
bfc03c18:	35290f90 	ori	t1,t1,0xf90
bfc03c1c:	3c08800d 	lui	t0,0x800d
bfc03c20:	3c039001 	lui	v1,0x9001
bfc03c24:	3463f0c8 	ori	v1,v1,0xf0c8
bfc03c28:	ad0a15a4 	sw	t2,5540(t0)
bfc03c2c:	a10915a7 	sb	t1,5543(t0)
bfc03c30:	25040004 	addiu	a0,t0,4
bfc03c34:	2505fffc 	addiu	a1,t0,-4
bfc03c38:	ac8415a4 	sw	a0,5540(a0)
bfc03c3c:	aca515a4 	sw	a1,5540(a1)
bfc03c40:	8d0215a4 	lw	v0,5540(t0)
bfc03c44:	8ca415a4 	lw	a0,5540(a1)
bfc03c48:	8c8515a4 	lw	a1,5540(a0)
bfc03c4c:	8ca615a4 	lw	a2,5540(a1)
bfc03c50:	144306cc 	bne	v0,v1,bfc05784 <inst_error>
bfc03c54:	00000000 	nop
/home/csy/func/inst/n63_sb.S:50
bfc03c58:	3c0a553f 	lui	t2,0x553f
bfc03c5c:	354a5c64 	ori	t2,t2,0x5c64
bfc03c60:	3c092012 	lui	t1,0x2012
bfc03c64:	35299920 	ori	t1,t1,0x9920
bfc03c68:	3c08800d 	lui	t0,0x800d
bfc03c6c:	3c03553f 	lui	v1,0x553f
bfc03c70:	34635c20 	ori	v1,v1,0x5c20
bfc03c74:	ad0a730c 	sw	t2,29452(t0)
bfc03c78:	a109730c 	sb	t1,29452(t0)
bfc03c7c:	25040004 	addiu	a0,t0,4
bfc03c80:	2505fffc 	addiu	a1,t0,-4
bfc03c84:	ac84730c 	sw	a0,29452(a0)
bfc03c88:	aca5730c 	sw	a1,29452(a1)
bfc03c8c:	8d02730c 	lw	v0,29452(t0)
bfc03c90:	8ca4730c 	lw	a0,29452(a1)
bfc03c94:	8c85730c 	lw	a1,29452(a0)
bfc03c98:	8ca6730c 	lw	a2,29452(a1)
bfc03c9c:	144306b9 	bne	v0,v1,bfc05784 <inst_error>
bfc03ca0:	00000000 	nop
/home/csy/func/inst/n63_sb.S:51
bfc03ca4:	3c0acf71 	lui	t2,0xcf71
bfc03ca8:	354ab130 	ori	t2,t2,0xb130
bfc03cac:	3c099b0a 	lui	t1,0x9b0a
bfc03cb0:	35294e5c 	ori	t1,t1,0x4e5c
bfc03cb4:	3c08800d 	lui	t0,0x800d
bfc03cb8:	3c03cf5c 	lui	v1,0xcf5c
bfc03cbc:	3463b130 	ori	v1,v1,0xb130
bfc03cc0:	ad0a1b00 	sw	t2,6912(t0)
bfc03cc4:	a1091b02 	sb	t1,6914(t0)
bfc03cc8:	25040004 	addiu	a0,t0,4
bfc03ccc:	2505fffc 	addiu	a1,t0,-4
bfc03cd0:	ac841b00 	sw	a0,6912(a0)
bfc03cd4:	aca51b00 	sw	a1,6912(a1)
bfc03cd8:	8d021b00 	lw	v0,6912(t0)
bfc03cdc:	8ca41b00 	lw	a0,6912(a1)
bfc03ce0:	8c851b00 	lw	a1,6912(a0)
bfc03ce4:	8ca61b00 	lw	a2,6912(a1)
bfc03ce8:	144306a6 	bne	v0,v1,bfc05784 <inst_error>
bfc03cec:	00000000 	nop
/home/csy/func/inst/n63_sb.S:52
bfc03cf0:	3c0adfc9 	lui	t2,0xdfc9
bfc03cf4:	354a8d18 	ori	t2,t2,0x8d18
bfc03cf8:	3c09f64d 	lui	t1,0xf64d
bfc03cfc:	3529eefc 	ori	t1,t1,0xeefc
bfc03d00:	3c08800d 	lui	t0,0x800d
bfc03d04:	3c03dfc9 	lui	v1,0xdfc9
bfc03d08:	34638dfc 	ori	v1,v1,0x8dfc
bfc03d0c:	3c010001 	lui	at,0x1
bfc03d10:	00280821 	addu	at,at,t0
bfc03d14:	ac2a9150 	sw	t2,-28336(at)
bfc03d18:	3c010001 	lui	at,0x1
bfc03d1c:	00280821 	addu	at,at,t0
bfc03d20:	a0299150 	sb	t1,-28336(at)
bfc03d24:	25040004 	addiu	a0,t0,4
bfc03d28:	2505fffc 	addiu	a1,t0,-4
bfc03d2c:	3c010001 	lui	at,0x1
bfc03d30:	00240821 	addu	at,at,a0
bfc03d34:	ac249150 	sw	a0,-28336(at)
bfc03d38:	3c010001 	lui	at,0x1
bfc03d3c:	00250821 	addu	at,at,a1
bfc03d40:	ac259150 	sw	a1,-28336(at)
bfc03d44:	3c020001 	lui	v0,0x1
bfc03d48:	00481021 	addu	v0,v0,t0
bfc03d4c:	8c429150 	lw	v0,-28336(v0)
bfc03d50:	3c040001 	lui	a0,0x1
bfc03d54:	00852021 	addu	a0,a0,a1
bfc03d58:	8c849150 	lw	a0,-28336(a0)
bfc03d5c:	3c050001 	lui	a1,0x1
bfc03d60:	00a42821 	addu	a1,a1,a0
bfc03d64:	8ca59150 	lw	a1,-28336(a1)
bfc03d68:	3c060001 	lui	a2,0x1
bfc03d6c:	00c53021 	addu	a2,a2,a1
bfc03d70:	8cc69150 	lw	a2,-28336(a2)
bfc03d74:	14430683 	bne	v0,v1,bfc05784 <inst_error>
bfc03d78:	00000000 	nop
/home/csy/func/inst/n63_sb.S:53
bfc03d7c:	3c0a5f92 	lui	t2,0x5f92
bfc03d80:	354aa4bd 	ori	t2,t2,0xa4bd
bfc03d84:	3c0953ab 	lui	t1,0x53ab
bfc03d88:	3529798c 	ori	t1,t1,0x798c
bfc03d8c:	3c08800d 	lui	t0,0x800d
bfc03d90:	3c035f8c 	lui	v1,0x5f8c
bfc03d94:	3463a4bd 	ori	v1,v1,0xa4bd
bfc03d98:	3c010001 	lui	at,0x1
bfc03d9c:	00280821 	addu	at,at,t0
bfc03da0:	ac2abe78 	sw	t2,-16776(at)
bfc03da4:	3c010001 	lui	at,0x1
bfc03da8:	00280821 	addu	at,at,t0
bfc03dac:	a029be7a 	sb	t1,-16774(at)
bfc03db0:	25040004 	addiu	a0,t0,4
bfc03db4:	2505fffc 	addiu	a1,t0,-4
bfc03db8:	3c010001 	lui	at,0x1
bfc03dbc:	00240821 	addu	at,at,a0
bfc03dc0:	ac24be78 	sw	a0,-16776(at)
bfc03dc4:	3c010001 	lui	at,0x1
bfc03dc8:	00250821 	addu	at,at,a1
bfc03dcc:	ac25be78 	sw	a1,-16776(at)
bfc03dd0:	3c020001 	lui	v0,0x1
bfc03dd4:	00481021 	addu	v0,v0,t0
bfc03dd8:	8c42be78 	lw	v0,-16776(v0)
bfc03ddc:	3c040001 	lui	a0,0x1
bfc03de0:	00852021 	addu	a0,a0,a1
bfc03de4:	8c84be78 	lw	a0,-16776(a0)
bfc03de8:	3c050001 	lui	a1,0x1
bfc03dec:	00a42821 	addu	a1,a1,a0
bfc03df0:	8ca5be78 	lw	a1,-16776(a1)
bfc03df4:	3c060001 	lui	a2,0x1
bfc03df8:	00c53021 	addu	a2,a2,a1
bfc03dfc:	8cc6be78 	lw	a2,-16776(a2)
bfc03e00:	14430660 	bne	v0,v1,bfc05784 <inst_error>
bfc03e04:	00000000 	nop
/home/csy/func/inst/n63_sb.S:54
bfc03e08:	3c0a8bb6 	lui	t2,0x8bb6
bfc03e0c:	354aa77b 	ori	t2,t2,0xa77b
bfc03e10:	3c09f7b8 	lui	t1,0xf7b8
bfc03e14:	35296140 	ori	t1,t1,0x6140
bfc03e18:	3c08800d 	lui	t0,0x800d
bfc03e1c:	3c038b40 	lui	v1,0x8b40
bfc03e20:	3463a77b 	ori	v1,v1,0xa77b
bfc03e24:	ad0a1374 	sw	t2,4980(t0)
bfc03e28:	a1091376 	sb	t1,4982(t0)
bfc03e2c:	25040004 	addiu	a0,t0,4
bfc03e30:	2505fffc 	addiu	a1,t0,-4
bfc03e34:	ac841374 	sw	a0,4980(a0)
bfc03e38:	aca51374 	sw	a1,4980(a1)
bfc03e3c:	8d021374 	lw	v0,4980(t0)
bfc03e40:	8ca41374 	lw	a0,4980(a1)
bfc03e44:	8c851374 	lw	a1,4980(a0)
bfc03e48:	8ca61374 	lw	a2,4980(a1)
bfc03e4c:	1443064d 	bne	v0,v1,bfc05784 <inst_error>
bfc03e50:	00000000 	nop
/home/csy/func/inst/n63_sb.S:55
bfc03e54:	3c0ab10c 	lui	t2,0xb10c
bfc03e58:	354a9e34 	ori	t2,t2,0x9e34
bfc03e5c:	3c09b3ce 	lui	t1,0xb3ce
bfc03e60:	35296a64 	ori	t1,t1,0x6a64
bfc03e64:	3c08800d 	lui	t0,0x800d
bfc03e68:	3c03b10c 	lui	v1,0xb10c
bfc03e6c:	34639e64 	ori	v1,v1,0x9e64
bfc03e70:	3c010001 	lui	at,0x1
bfc03e74:	00280821 	addu	at,at,t0
bfc03e78:	ac2a9b60 	sw	t2,-25760(at)
bfc03e7c:	3c010001 	lui	at,0x1
bfc03e80:	00280821 	addu	at,at,t0
bfc03e84:	a0299b60 	sb	t1,-25760(at)
bfc03e88:	25040004 	addiu	a0,t0,4
bfc03e8c:	2505fffc 	addiu	a1,t0,-4
bfc03e90:	3c010001 	lui	at,0x1
bfc03e94:	00240821 	addu	at,at,a0
bfc03e98:	ac249b60 	sw	a0,-25760(at)
bfc03e9c:	3c010001 	lui	at,0x1
bfc03ea0:	00250821 	addu	at,at,a1
bfc03ea4:	ac259b60 	sw	a1,-25760(at)
bfc03ea8:	3c020001 	lui	v0,0x1
bfc03eac:	00481021 	addu	v0,v0,t0
bfc03eb0:	8c429b60 	lw	v0,-25760(v0)
bfc03eb4:	3c040001 	lui	a0,0x1
bfc03eb8:	00852021 	addu	a0,a0,a1
bfc03ebc:	8c849b60 	lw	a0,-25760(a0)
bfc03ec0:	3c050001 	lui	a1,0x1
bfc03ec4:	00a42821 	addu	a1,a1,a0
bfc03ec8:	8ca59b60 	lw	a1,-25760(a1)
bfc03ecc:	3c060001 	lui	a2,0x1
bfc03ed0:	00c53021 	addu	a2,a2,a1
bfc03ed4:	8cc69b60 	lw	a2,-25760(a2)
bfc03ed8:	1443062a 	bne	v0,v1,bfc05784 <inst_error>
bfc03edc:	00000000 	nop
/home/csy/func/inst/n63_sb.S:56
bfc03ee0:	3c0a6c79 	lui	t2,0x6c79
bfc03ee4:	354addc8 	ori	t2,t2,0xddc8
bfc03ee8:	3c09d8f2 	lui	t1,0xd8f2
bfc03eec:	3529d0f0 	ori	t1,t1,0xd0f0
bfc03ef0:	3c08800d 	lui	t0,0x800d
bfc03ef4:	3c036cf0 	lui	v1,0x6cf0
bfc03ef8:	3463ddc8 	ori	v1,v1,0xddc8
bfc03efc:	3c010001 	lui	at,0x1
bfc03f00:	00280821 	addu	at,at,t0
bfc03f04:	ac2ac340 	sw	t2,-15552(at)
bfc03f08:	3c010001 	lui	at,0x1
bfc03f0c:	00280821 	addu	at,at,t0
bfc03f10:	a029c342 	sb	t1,-15550(at)
bfc03f14:	25040004 	addiu	a0,t0,4
bfc03f18:	2505fffc 	addiu	a1,t0,-4
bfc03f1c:	3c010001 	lui	at,0x1
bfc03f20:	00240821 	addu	at,at,a0
bfc03f24:	ac24c340 	sw	a0,-15552(at)
bfc03f28:	3c010001 	lui	at,0x1
bfc03f2c:	00250821 	addu	at,at,a1
bfc03f30:	ac25c340 	sw	a1,-15552(at)
bfc03f34:	3c020001 	lui	v0,0x1
bfc03f38:	00481021 	addu	v0,v0,t0
bfc03f3c:	8c42c340 	lw	v0,-15552(v0)
bfc03f40:	3c040001 	lui	a0,0x1
bfc03f44:	00852021 	addu	a0,a0,a1
bfc03f48:	8c84c340 	lw	a0,-15552(a0)
bfc03f4c:	3c050001 	lui	a1,0x1
bfc03f50:	00a42821 	addu	a1,a1,a0
bfc03f54:	8ca5c340 	lw	a1,-15552(a1)
bfc03f58:	3c060001 	lui	a2,0x1
bfc03f5c:	00c53021 	addu	a2,a2,a1
bfc03f60:	8cc6c340 	lw	a2,-15552(a2)
bfc03f64:	14430607 	bne	v0,v1,bfc05784 <inst_error>
bfc03f68:	00000000 	nop
/home/csy/func/inst/n63_sb.S:57
bfc03f6c:	3c0a9ff6 	lui	t2,0x9ff6
bfc03f70:	354a2c5a 	ori	t2,t2,0x2c5a
bfc03f74:	3c09da5c 	lui	t1,0xda5c
bfc03f78:	35299528 	ori	t1,t1,0x9528
bfc03f7c:	3c08800d 	lui	t0,0x800d
bfc03f80:	3c039ff6 	lui	v1,0x9ff6
bfc03f84:	34632c28 	ori	v1,v1,0x2c28
bfc03f88:	3c010001 	lui	at,0x1
bfc03f8c:	00280821 	addu	at,at,t0
bfc03f90:	ac2ad92c 	sw	t2,-9940(at)
bfc03f94:	3c010001 	lui	at,0x1
bfc03f98:	00280821 	addu	at,at,t0
bfc03f9c:	a029d92c 	sb	t1,-9940(at)
bfc03fa0:	25040004 	addiu	a0,t0,4
bfc03fa4:	2505fffc 	addiu	a1,t0,-4
bfc03fa8:	3c010001 	lui	at,0x1
bfc03fac:	00240821 	addu	at,at,a0
bfc03fb0:	ac24d92c 	sw	a0,-9940(at)
bfc03fb4:	3c010001 	lui	at,0x1
bfc03fb8:	00250821 	addu	at,at,a1
bfc03fbc:	ac25d92c 	sw	a1,-9940(at)
bfc03fc0:	3c020001 	lui	v0,0x1
bfc03fc4:	00481021 	addu	v0,v0,t0
bfc03fc8:	8c42d92c 	lw	v0,-9940(v0)
bfc03fcc:	3c040001 	lui	a0,0x1
bfc03fd0:	00852021 	addu	a0,a0,a1
bfc03fd4:	8c84d92c 	lw	a0,-9940(a0)
bfc03fd8:	3c050001 	lui	a1,0x1
bfc03fdc:	00a42821 	addu	a1,a1,a0
bfc03fe0:	8ca5d92c 	lw	a1,-9940(a1)
bfc03fe4:	3c060001 	lui	a2,0x1
bfc03fe8:	00c53021 	addu	a2,a2,a1
bfc03fec:	8cc6d92c 	lw	a2,-9940(a2)
bfc03ff0:	144305e4 	bne	v0,v1,bfc05784 <inst_error>
bfc03ff4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:58
bfc03ff8:	3c0a8d23 	lui	t2,0x8d23
bfc03ffc:	354aef7b 	ori	t2,t2,0xef7b
bfc04000:	3c09e20e 	lui	t1,0xe20e
bfc04004:	3529e422 	ori	t1,t1,0xe422
bfc04008:	3c08800d 	lui	t0,0x800d
bfc0400c:	3c038d22 	lui	v1,0x8d22
bfc04010:	3463ef7b 	ori	v1,v1,0xef7b
bfc04014:	ad0a3f1c 	sw	t2,16156(t0)
bfc04018:	a1093f1e 	sb	t1,16158(t0)
bfc0401c:	25040004 	addiu	a0,t0,4
bfc04020:	2505fffc 	addiu	a1,t0,-4
bfc04024:	ac843f1c 	sw	a0,16156(a0)
bfc04028:	aca53f1c 	sw	a1,16156(a1)
bfc0402c:	8d023f1c 	lw	v0,16156(t0)
bfc04030:	8ca43f1c 	lw	a0,16156(a1)
bfc04034:	8c853f1c 	lw	a1,16156(a0)
bfc04038:	8ca63f1c 	lw	a2,16156(a1)
bfc0403c:	144305d1 	bne	v0,v1,bfc05784 <inst_error>
bfc04040:	00000000 	nop
/home/csy/func/inst/n63_sb.S:59
bfc04044:	3c0a021a 	lui	t2,0x21a
bfc04048:	354a8000 	ori	t2,t2,0x8000
bfc0404c:	3c09ab92 	lui	t1,0xab92
bfc04050:	35292c0e 	ori	t1,t1,0x2c0e
bfc04054:	3c08800d 	lui	t0,0x800d
bfc04058:	3c030e1a 	lui	v1,0xe1a
bfc0405c:	34638000 	ori	v1,v1,0x8000
bfc04060:	ad0a669c 	sw	t2,26268(t0)
bfc04064:	a109669f 	sb	t1,26271(t0)
bfc04068:	25040004 	addiu	a0,t0,4
bfc0406c:	2505fffc 	addiu	a1,t0,-4
bfc04070:	ac84669c 	sw	a0,26268(a0)
bfc04074:	aca5669c 	sw	a1,26268(a1)
bfc04078:	8d02669c 	lw	v0,26268(t0)
bfc0407c:	8ca4669c 	lw	a0,26268(a1)
bfc04080:	8c85669c 	lw	a1,26268(a0)
bfc04084:	8ca6669c 	lw	a2,26268(a1)
bfc04088:	144305be 	bne	v0,v1,bfc05784 <inst_error>
bfc0408c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:60
bfc04090:	3c0a2b32 	lui	t2,0x2b32
bfc04094:	354a3168 	ori	t2,t2,0x3168
bfc04098:	3c09b481 	lui	t1,0xb481
bfc0409c:	35290280 	ori	t1,t1,0x280
bfc040a0:	3c08800d 	lui	t0,0x800d
bfc040a4:	3c032b80 	lui	v1,0x2b80
bfc040a8:	34633168 	ori	v1,v1,0x3168
bfc040ac:	3c010001 	lui	at,0x1
bfc040b0:	00280821 	addu	at,at,t0
bfc040b4:	ac2a94b0 	sw	t2,-27472(at)
bfc040b8:	3c010001 	lui	at,0x1
bfc040bc:	00280821 	addu	at,at,t0
bfc040c0:	a02994b2 	sb	t1,-27470(at)
bfc040c4:	25040004 	addiu	a0,t0,4
bfc040c8:	2505fffc 	addiu	a1,t0,-4
bfc040cc:	3c010001 	lui	at,0x1
bfc040d0:	00240821 	addu	at,at,a0
bfc040d4:	ac2494b0 	sw	a0,-27472(at)
bfc040d8:	3c010001 	lui	at,0x1
bfc040dc:	00250821 	addu	at,at,a1
bfc040e0:	ac2594b0 	sw	a1,-27472(at)
bfc040e4:	3c020001 	lui	v0,0x1
bfc040e8:	00481021 	addu	v0,v0,t0
bfc040ec:	8c4294b0 	lw	v0,-27472(v0)
bfc040f0:	3c040001 	lui	a0,0x1
bfc040f4:	00852021 	addu	a0,a0,a1
bfc040f8:	8c8494b0 	lw	a0,-27472(a0)
bfc040fc:	3c050001 	lui	a1,0x1
bfc04100:	00a42821 	addu	a1,a1,a0
bfc04104:	8ca594b0 	lw	a1,-27472(a1)
bfc04108:	3c060001 	lui	a2,0x1
bfc0410c:	00c53021 	addu	a2,a2,a1
bfc04110:	8cc694b0 	lw	a2,-27472(a2)
bfc04114:	1443059b 	bne	v0,v1,bfc05784 <inst_error>
bfc04118:	00000000 	nop
/home/csy/func/inst/n63_sb.S:61
bfc0411c:	3c0afa0a 	lui	t2,0xfa0a
bfc04120:	354a8cc8 	ori	t2,t2,0x8cc8
bfc04124:	3c091ab8 	lui	t1,0x1ab8
bfc04128:	35293286 	ori	t1,t1,0x3286
bfc0412c:	3c08800d 	lui	t0,0x800d
bfc04130:	3c03fa86 	lui	v1,0xfa86
bfc04134:	34638cc8 	ori	v1,v1,0x8cc8
bfc04138:	3c010001 	lui	at,0x1
bfc0413c:	00280821 	addu	at,at,t0
bfc04140:	ac2a9a0c 	sw	t2,-26100(at)
bfc04144:	3c010001 	lui	at,0x1
bfc04148:	00280821 	addu	at,at,t0
bfc0414c:	a0299a0e 	sb	t1,-26098(at)
bfc04150:	25040004 	addiu	a0,t0,4
bfc04154:	2505fffc 	addiu	a1,t0,-4
bfc04158:	3c010001 	lui	at,0x1
bfc0415c:	00240821 	addu	at,at,a0
bfc04160:	ac249a0c 	sw	a0,-26100(at)
bfc04164:	3c010001 	lui	at,0x1
bfc04168:	00250821 	addu	at,at,a1
bfc0416c:	ac259a0c 	sw	a1,-26100(at)
bfc04170:	3c020001 	lui	v0,0x1
bfc04174:	00481021 	addu	v0,v0,t0
bfc04178:	8c429a0c 	lw	v0,-26100(v0)
bfc0417c:	3c040001 	lui	a0,0x1
bfc04180:	00852021 	addu	a0,a0,a1
bfc04184:	8c849a0c 	lw	a0,-26100(a0)
bfc04188:	3c050001 	lui	a1,0x1
bfc0418c:	00a42821 	addu	a1,a1,a0
bfc04190:	8ca59a0c 	lw	a1,-26100(a1)
bfc04194:	3c060001 	lui	a2,0x1
bfc04198:	00c53021 	addu	a2,a2,a1
bfc0419c:	8cc69a0c 	lw	a2,-26100(a2)
bfc041a0:	14430578 	bne	v0,v1,bfc05784 <inst_error>
bfc041a4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:62
bfc041a8:	3c0afba3 	lui	t2,0xfba3
bfc041ac:	354a5550 	ori	t2,t2,0x5550
bfc041b0:	3c095f6c 	lui	t1,0x5f6c
bfc041b4:	3529f2b0 	ori	t1,t1,0xf2b0
bfc041b8:	3c08800d 	lui	t0,0x800d
bfc041bc:	3c03fba3 	lui	v1,0xfba3
bfc041c0:	346355b0 	ori	v1,v1,0x55b0
bfc041c4:	3c010001 	lui	at,0x1
bfc041c8:	00280821 	addu	at,at,t0
bfc041cc:	ac2a8c40 	sw	t2,-29632(at)
bfc041d0:	3c010001 	lui	at,0x1
bfc041d4:	00280821 	addu	at,at,t0
bfc041d8:	a0298c40 	sb	t1,-29632(at)
bfc041dc:	25040004 	addiu	a0,t0,4
bfc041e0:	2505fffc 	addiu	a1,t0,-4
bfc041e4:	3c010001 	lui	at,0x1
bfc041e8:	00240821 	addu	at,at,a0
bfc041ec:	ac248c40 	sw	a0,-29632(at)
bfc041f0:	3c010001 	lui	at,0x1
bfc041f4:	00250821 	addu	at,at,a1
bfc041f8:	ac258c40 	sw	a1,-29632(at)
bfc041fc:	3c020001 	lui	v0,0x1
bfc04200:	00481021 	addu	v0,v0,t0
bfc04204:	8c428c40 	lw	v0,-29632(v0)
bfc04208:	3c040001 	lui	a0,0x1
bfc0420c:	00852021 	addu	a0,a0,a1
bfc04210:	8c848c40 	lw	a0,-29632(a0)
bfc04214:	3c050001 	lui	a1,0x1
bfc04218:	00a42821 	addu	a1,a1,a0
bfc0421c:	8ca58c40 	lw	a1,-29632(a1)
bfc04220:	3c060001 	lui	a2,0x1
bfc04224:	00c53021 	addu	a2,a2,a1
bfc04228:	8cc68c40 	lw	a2,-29632(a2)
bfc0422c:	14430555 	bne	v0,v1,bfc05784 <inst_error>
bfc04230:	00000000 	nop
/home/csy/func/inst/n63_sb.S:63
bfc04234:	3c0accdc 	lui	t2,0xccdc
bfc04238:	354a0930 	ori	t2,t2,0x930
bfc0423c:	3c0920dc 	lui	t1,0x20dc
bfc04240:	3529cff4 	ori	t1,t1,0xcff4
bfc04244:	3c08800d 	lui	t0,0x800d
bfc04248:	3c03ccdc 	lui	v1,0xccdc
bfc0424c:	346309f4 	ori	v1,v1,0x9f4
bfc04250:	3c010001 	lui	at,0x1
bfc04254:	00280821 	addu	at,at,t0
bfc04258:	ac2aaae8 	sw	t2,-21784(at)
bfc0425c:	3c010001 	lui	at,0x1
bfc04260:	00280821 	addu	at,at,t0
bfc04264:	a029aae8 	sb	t1,-21784(at)
bfc04268:	25040004 	addiu	a0,t0,4
bfc0426c:	2505fffc 	addiu	a1,t0,-4
bfc04270:	3c010001 	lui	at,0x1
bfc04274:	00240821 	addu	at,at,a0
bfc04278:	ac24aae8 	sw	a0,-21784(at)
bfc0427c:	3c010001 	lui	at,0x1
bfc04280:	00250821 	addu	at,at,a1
bfc04284:	ac25aae8 	sw	a1,-21784(at)
bfc04288:	3c020001 	lui	v0,0x1
bfc0428c:	00481021 	addu	v0,v0,t0
bfc04290:	8c42aae8 	lw	v0,-21784(v0)
bfc04294:	3c040001 	lui	a0,0x1
bfc04298:	00852021 	addu	a0,a0,a1
bfc0429c:	8c84aae8 	lw	a0,-21784(a0)
bfc042a0:	3c050001 	lui	a1,0x1
bfc042a4:	00a42821 	addu	a1,a1,a0
bfc042a8:	8ca5aae8 	lw	a1,-21784(a1)
bfc042ac:	3c060001 	lui	a2,0x1
bfc042b0:	00c53021 	addu	a2,a2,a1
bfc042b4:	8cc6aae8 	lw	a2,-21784(a2)
bfc042b8:	14430532 	bne	v0,v1,bfc05784 <inst_error>
bfc042bc:	00000000 	nop
/home/csy/func/inst/n63_sb.S:64
bfc042c0:	3c0a50ef 	lui	t2,0x50ef
bfc042c4:	354ae178 	ori	t2,t2,0xe178
bfc042c8:	3c0900f8 	lui	t1,0xf8
bfc042cc:	3529ce7a 	ori	t1,t1,0xce7a
bfc042d0:	3c08800d 	lui	t0,0x800d
bfc042d4:	3c0350ef 	lui	v1,0x50ef
bfc042d8:	3463e17a 	ori	v1,v1,0xe17a
bfc042dc:	ad0a1e5c 	sw	t2,7772(t0)
bfc042e0:	a1091e5c 	sb	t1,7772(t0)
bfc042e4:	25040004 	addiu	a0,t0,4
bfc042e8:	2505fffc 	addiu	a1,t0,-4
bfc042ec:	ac841e5c 	sw	a0,7772(a0)
bfc042f0:	aca51e5c 	sw	a1,7772(a1)
bfc042f4:	8d021e5c 	lw	v0,7772(t0)
bfc042f8:	8ca41e5c 	lw	a0,7772(a1)
bfc042fc:	8c851e5c 	lw	a1,7772(a0)
bfc04300:	8ca61e5c 	lw	a2,7772(a1)
bfc04304:	1443051f 	bne	v0,v1,bfc05784 <inst_error>
bfc04308:	00000000 	nop
/home/csy/func/inst/n63_sb.S:65
bfc0430c:	3c0ac894 	lui	t2,0xc894
bfc04310:	354a6b68 	ori	t2,t2,0x6b68
bfc04314:	3c091e1f 	lui	t1,0x1e1f
bfc04318:	3529cf80 	ori	t1,t1,0xcf80
bfc0431c:	3c08800d 	lui	t0,0x800d
bfc04320:	3c03c894 	lui	v1,0xc894
bfc04324:	34636b80 	ori	v1,v1,0x6b80
bfc04328:	ad0a5cac 	sw	t2,23724(t0)
bfc0432c:	a1095cac 	sb	t1,23724(t0)
bfc04330:	25040004 	addiu	a0,t0,4
bfc04334:	2505fffc 	addiu	a1,t0,-4
bfc04338:	ac845cac 	sw	a0,23724(a0)
bfc0433c:	aca55cac 	sw	a1,23724(a1)
bfc04340:	8d025cac 	lw	v0,23724(t0)
bfc04344:	8ca45cac 	lw	a0,23724(a1)
bfc04348:	8c855cac 	lw	a1,23724(a0)
bfc0434c:	8ca65cac 	lw	a2,23724(a1)
bfc04350:	1443050c 	bne	v0,v1,bfc05784 <inst_error>
bfc04354:	00000000 	nop
/home/csy/func/inst/n63_sb.S:66
bfc04358:	3c0a9e0e 	lui	t2,0x9e0e
bfc0435c:	354afce6 	ori	t2,t2,0xfce6
bfc04360:	3c096b0a 	lui	t1,0x6b0a
bfc04364:	3529b578 	ori	t1,t1,0xb578
bfc04368:	3c08800d 	lui	t0,0x800d
bfc0436c:	3c039e0e 	lui	v1,0x9e0e
bfc04370:	3463fc78 	ori	v1,v1,0xfc78
bfc04374:	ad0a5c18 	sw	t2,23576(t0)
bfc04378:	a1095c18 	sb	t1,23576(t0)
bfc0437c:	25040004 	addiu	a0,t0,4
bfc04380:	2505fffc 	addiu	a1,t0,-4
bfc04384:	ac845c18 	sw	a0,23576(a0)
bfc04388:	aca55c18 	sw	a1,23576(a1)
bfc0438c:	8d025c18 	lw	v0,23576(t0)
bfc04390:	8ca45c18 	lw	a0,23576(a1)
bfc04394:	8c855c18 	lw	a1,23576(a0)
bfc04398:	8ca65c18 	lw	a2,23576(a1)
bfc0439c:	144304f9 	bne	v0,v1,bfc05784 <inst_error>
bfc043a0:	00000000 	nop
/home/csy/func/inst/n63_sb.S:67
bfc043a4:	3c0a55b3 	lui	t2,0x55b3
bfc043a8:	354a2c78 	ori	t2,t2,0x2c78
bfc043ac:	3c094395 	lui	t1,0x4395
bfc043b0:	35295964 	ori	t1,t1,0x5964
bfc043b4:	3c08800d 	lui	t0,0x800d
bfc043b8:	3c035564 	lui	v1,0x5564
bfc043bc:	34632c78 	ori	v1,v1,0x2c78
bfc043c0:	3c010001 	lui	at,0x1
bfc043c4:	00280821 	addu	at,at,t0
bfc043c8:	ac2ae5d0 	sw	t2,-6704(at)
bfc043cc:	3c010001 	lui	at,0x1
bfc043d0:	00280821 	addu	at,at,t0
bfc043d4:	a029e5d2 	sb	t1,-6702(at)
bfc043d8:	25040004 	addiu	a0,t0,4
bfc043dc:	2505fffc 	addiu	a1,t0,-4
bfc043e0:	3c010001 	lui	at,0x1
bfc043e4:	00240821 	addu	at,at,a0
bfc043e8:	ac24e5d0 	sw	a0,-6704(at)
bfc043ec:	3c010001 	lui	at,0x1
bfc043f0:	00250821 	addu	at,at,a1
bfc043f4:	ac25e5d0 	sw	a1,-6704(at)
bfc043f8:	3c020001 	lui	v0,0x1
bfc043fc:	00481021 	addu	v0,v0,t0
bfc04400:	8c42e5d0 	lw	v0,-6704(v0)
bfc04404:	3c040001 	lui	a0,0x1
bfc04408:	00852021 	addu	a0,a0,a1
bfc0440c:	8c84e5d0 	lw	a0,-6704(a0)
bfc04410:	3c050001 	lui	a1,0x1
bfc04414:	00a42821 	addu	a1,a1,a0
bfc04418:	8ca5e5d0 	lw	a1,-6704(a1)
bfc0441c:	3c060001 	lui	a2,0x1
bfc04420:	00c53021 	addu	a2,a2,a1
bfc04424:	8cc6e5d0 	lw	a2,-6704(a2)
bfc04428:	144304d6 	bne	v0,v1,bfc05784 <inst_error>
bfc0442c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:68
bfc04430:	3c0af2e0 	lui	t2,0xf2e0
bfc04434:	354a2444 	ori	t2,t2,0x2444
bfc04438:	3c09385c 	lui	t1,0x385c
bfc0443c:	35290602 	ori	t1,t1,0x602
bfc04440:	3c08800d 	lui	t0,0x800d
bfc04444:	3c03f202 	lui	v1,0xf202
bfc04448:	34632444 	ori	v1,v1,0x2444
bfc0444c:	3c010001 	lui	at,0x1
bfc04450:	00280821 	addu	at,at,t0
bfc04454:	ac2aa2e4 	sw	t2,-23836(at)
bfc04458:	3c010001 	lui	at,0x1
bfc0445c:	00280821 	addu	at,at,t0
bfc04460:	a029a2e6 	sb	t1,-23834(at)
bfc04464:	25040004 	addiu	a0,t0,4
bfc04468:	2505fffc 	addiu	a1,t0,-4
bfc0446c:	3c010001 	lui	at,0x1
bfc04470:	00240821 	addu	at,at,a0
bfc04474:	ac24a2e4 	sw	a0,-23836(at)
bfc04478:	3c010001 	lui	at,0x1
bfc0447c:	00250821 	addu	at,at,a1
bfc04480:	ac25a2e4 	sw	a1,-23836(at)
bfc04484:	3c020001 	lui	v0,0x1
bfc04488:	00481021 	addu	v0,v0,t0
bfc0448c:	8c42a2e4 	lw	v0,-23836(v0)
bfc04490:	3c040001 	lui	a0,0x1
bfc04494:	00852021 	addu	a0,a0,a1
bfc04498:	8c84a2e4 	lw	a0,-23836(a0)
bfc0449c:	3c050001 	lui	a1,0x1
bfc044a0:	00a42821 	addu	a1,a1,a0
bfc044a4:	8ca5a2e4 	lw	a1,-23836(a1)
bfc044a8:	3c060001 	lui	a2,0x1
bfc044ac:	00c53021 	addu	a2,a2,a1
bfc044b0:	8cc6a2e4 	lw	a2,-23836(a2)
bfc044b4:	144304b3 	bne	v0,v1,bfc05784 <inst_error>
bfc044b8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:69
bfc044bc:	3c0aa34c 	lui	t2,0xa34c
bfc044c0:	354af9ae 	ori	t2,t2,0xf9ae
bfc044c4:	3c09befc 	lui	t1,0xbefc
bfc044c8:	35299708 	ori	t1,t1,0x9708
bfc044cc:	3c08800d 	lui	t0,0x800d
bfc044d0:	3c03a308 	lui	v1,0xa308
bfc044d4:	3463f9ae 	ori	v1,v1,0xf9ae
bfc044d8:	ad0a1474 	sw	t2,5236(t0)
bfc044dc:	a1091476 	sb	t1,5238(t0)
bfc044e0:	25040004 	addiu	a0,t0,4
bfc044e4:	2505fffc 	addiu	a1,t0,-4
bfc044e8:	ac841474 	sw	a0,5236(a0)
bfc044ec:	aca51474 	sw	a1,5236(a1)
bfc044f0:	8d021474 	lw	v0,5236(t0)
bfc044f4:	8ca41474 	lw	a0,5236(a1)
bfc044f8:	8c851474 	lw	a1,5236(a0)
bfc044fc:	8ca61474 	lw	a2,5236(a1)
bfc04500:	144304a0 	bne	v0,v1,bfc05784 <inst_error>
bfc04504:	00000000 	nop
/home/csy/func/inst/n63_sb.S:70
bfc04508:	3c0adea4 	lui	t2,0xdea4
bfc0450c:	354afad0 	ori	t2,t2,0xfad0
bfc04510:	3c097313 	lui	t1,0x7313
bfc04514:	3529e200 	ori	t1,t1,0xe200
bfc04518:	3c08800d 	lui	t0,0x800d
bfc0451c:	3c03dea4 	lui	v1,0xdea4
bfc04520:	3463fa00 	ori	v1,v1,0xfa00
bfc04524:	3c010001 	lui	at,0x1
bfc04528:	00280821 	addu	at,at,t0
bfc0452c:	ac2a9b0c 	sw	t2,-25844(at)
bfc04530:	3c010001 	lui	at,0x1
bfc04534:	00280821 	addu	at,at,t0
bfc04538:	a0299b0c 	sb	t1,-25844(at)
bfc0453c:	25040004 	addiu	a0,t0,4
bfc04540:	2505fffc 	addiu	a1,t0,-4
bfc04544:	3c010001 	lui	at,0x1
bfc04548:	00240821 	addu	at,at,a0
bfc0454c:	ac249b0c 	sw	a0,-25844(at)
bfc04550:	3c010001 	lui	at,0x1
bfc04554:	00250821 	addu	at,at,a1
bfc04558:	ac259b0c 	sw	a1,-25844(at)
bfc0455c:	3c020001 	lui	v0,0x1
bfc04560:	00481021 	addu	v0,v0,t0
bfc04564:	8c429b0c 	lw	v0,-25844(v0)
bfc04568:	3c040001 	lui	a0,0x1
bfc0456c:	00852021 	addu	a0,a0,a1
bfc04570:	8c849b0c 	lw	a0,-25844(a0)
bfc04574:	3c050001 	lui	a1,0x1
bfc04578:	00a42821 	addu	a1,a1,a0
bfc0457c:	8ca59b0c 	lw	a1,-25844(a1)
bfc04580:	3c060001 	lui	a2,0x1
bfc04584:	00c53021 	addu	a2,a2,a1
bfc04588:	8cc69b0c 	lw	a2,-25844(a2)
bfc0458c:	1443047d 	bne	v0,v1,bfc05784 <inst_error>
bfc04590:	00000000 	nop
/home/csy/func/inst/n63_sb.S:71
bfc04594:	3c0abcdf 	lui	t2,0xbcdf
bfc04598:	354a3620 	ori	t2,t2,0x3620
bfc0459c:	3c099a6d 	lui	t1,0x9a6d
bfc045a0:	3529a064 	ori	t1,t1,0xa064
bfc045a4:	3c08800d 	lui	t0,0x800d
bfc045a8:	3c03bcdf 	lui	v1,0xbcdf
bfc045ac:	34633664 	ori	v1,v1,0x3664
bfc045b0:	3c010001 	lui	at,0x1
bfc045b4:	00280821 	addu	at,at,t0
bfc045b8:	ac2a8a00 	sw	t2,-30208(at)
bfc045bc:	3c010001 	lui	at,0x1
bfc045c0:	00280821 	addu	at,at,t0
bfc045c4:	a0298a00 	sb	t1,-30208(at)
bfc045c8:	25040004 	addiu	a0,t0,4
bfc045cc:	2505fffc 	addiu	a1,t0,-4
bfc045d0:	3c010001 	lui	at,0x1
bfc045d4:	00240821 	addu	at,at,a0
bfc045d8:	ac248a00 	sw	a0,-30208(at)
bfc045dc:	3c010001 	lui	at,0x1
bfc045e0:	00250821 	addu	at,at,a1
bfc045e4:	ac258a00 	sw	a1,-30208(at)
bfc045e8:	3c020001 	lui	v0,0x1
bfc045ec:	00481021 	addu	v0,v0,t0
bfc045f0:	8c428a00 	lw	v0,-30208(v0)
bfc045f4:	3c040001 	lui	a0,0x1
bfc045f8:	00852021 	addu	a0,a0,a1
bfc045fc:	8c848a00 	lw	a0,-30208(a0)
bfc04600:	3c050001 	lui	a1,0x1
bfc04604:	00a42821 	addu	a1,a1,a0
bfc04608:	8ca58a00 	lw	a1,-30208(a1)
bfc0460c:	3c060001 	lui	a2,0x1
bfc04610:	00c53021 	addu	a2,a2,a1
bfc04614:	8cc68a00 	lw	a2,-30208(a2)
bfc04618:	1443045a 	bne	v0,v1,bfc05784 <inst_error>
bfc0461c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:72
bfc04620:	3c0aa3ed 	lui	t2,0xa3ed
bfc04624:	354aa870 	ori	t2,t2,0xa870
bfc04628:	3c0980f6 	lui	t1,0x80f6
bfc0462c:	3529ff70 	ori	t1,t1,0xff70
bfc04630:	3c08800d 	lui	t0,0x800d
bfc04634:	3c03a3ed 	lui	v1,0xa3ed
bfc04638:	3463a870 	ori	v1,v1,0xa870
bfc0463c:	ad0a6410 	sw	t2,25616(t0)
bfc04640:	a1096410 	sb	t1,25616(t0)
bfc04644:	25040004 	addiu	a0,t0,4
bfc04648:	2505fffc 	addiu	a1,t0,-4
bfc0464c:	ac846410 	sw	a0,25616(a0)
bfc04650:	aca56410 	sw	a1,25616(a1)
bfc04654:	8d026410 	lw	v0,25616(t0)
bfc04658:	8ca46410 	lw	a0,25616(a1)
bfc0465c:	8c856410 	lw	a1,25616(a0)
bfc04660:	8ca66410 	lw	a2,25616(a1)
bfc04664:	14430447 	bne	v0,v1,bfc05784 <inst_error>
bfc04668:	00000000 	nop
/home/csy/func/inst/n63_sb.S:73
bfc0466c:	3c0a2779 	lui	t2,0x2779
bfc04670:	354ad654 	ori	t2,t2,0xd654
bfc04674:	3c09b41c 	lui	t1,0xb41c
bfc04678:	35297810 	ori	t1,t1,0x7810
bfc0467c:	3c08800d 	lui	t0,0x800d
bfc04680:	3c032779 	lui	v1,0x2779
bfc04684:	3463d610 	ori	v1,v1,0xd610
bfc04688:	3c010001 	lui	at,0x1
bfc0468c:	00280821 	addu	at,at,t0
bfc04690:	ac2ace98 	sw	t2,-12648(at)
bfc04694:	3c010001 	lui	at,0x1
bfc04698:	00280821 	addu	at,at,t0
bfc0469c:	a029ce98 	sb	t1,-12648(at)
bfc046a0:	25040004 	addiu	a0,t0,4
bfc046a4:	2505fffc 	addiu	a1,t0,-4
bfc046a8:	3c010001 	lui	at,0x1
bfc046ac:	00240821 	addu	at,at,a0
bfc046b0:	ac24ce98 	sw	a0,-12648(at)
bfc046b4:	3c010001 	lui	at,0x1
bfc046b8:	00250821 	addu	at,at,a1
bfc046bc:	ac25ce98 	sw	a1,-12648(at)
bfc046c0:	3c020001 	lui	v0,0x1
bfc046c4:	00481021 	addu	v0,v0,t0
bfc046c8:	8c42ce98 	lw	v0,-12648(v0)
bfc046cc:	3c040001 	lui	a0,0x1
bfc046d0:	00852021 	addu	a0,a0,a1
bfc046d4:	8c84ce98 	lw	a0,-12648(a0)
bfc046d8:	3c050001 	lui	a1,0x1
bfc046dc:	00a42821 	addu	a1,a1,a0
bfc046e0:	8ca5ce98 	lw	a1,-12648(a1)
bfc046e4:	3c060001 	lui	a2,0x1
bfc046e8:	00c53021 	addu	a2,a2,a1
bfc046ec:	8cc6ce98 	lw	a2,-12648(a2)
bfc046f0:	14430424 	bne	v0,v1,bfc05784 <inst_error>
bfc046f4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:74
bfc046f8:	3c0ade63 	lui	t2,0xde63
bfc046fc:	354aec11 	ori	t2,t2,0xec11
bfc04700:	3c09c22d 	lui	t1,0xc22d
bfc04704:	35298e54 	ori	t1,t1,0x8e54
bfc04708:	3c08800d 	lui	t0,0x800d
bfc0470c:	3c03de63 	lui	v1,0xde63
bfc04710:	34635411 	ori	v1,v1,0x5411
bfc04714:	ad0a4788 	sw	t2,18312(t0)
bfc04718:	a1094789 	sb	t1,18313(t0)
bfc0471c:	25040004 	addiu	a0,t0,4
bfc04720:	2505fffc 	addiu	a1,t0,-4
bfc04724:	ac844788 	sw	a0,18312(a0)
bfc04728:	aca54788 	sw	a1,18312(a1)
bfc0472c:	8d024788 	lw	v0,18312(t0)
bfc04730:	8ca44788 	lw	a0,18312(a1)
bfc04734:	8c854788 	lw	a1,18312(a0)
bfc04738:	8ca64788 	lw	a2,18312(a1)
bfc0473c:	14430411 	bne	v0,v1,bfc05784 <inst_error>
bfc04740:	00000000 	nop
/home/csy/func/inst/n63_sb.S:75
bfc04744:	3c0a98bf 	lui	t2,0x98bf
bfc04748:	354ac55c 	ori	t2,t2,0xc55c
bfc0474c:	3c0912d8 	lui	t1,0x12d8
bfc04750:	3529a1d8 	ori	t1,t1,0xa1d8
bfc04754:	3c08800d 	lui	t0,0x800d
bfc04758:	3c0398d8 	lui	v1,0x98d8
bfc0475c:	3463c55c 	ori	v1,v1,0xc55c
bfc04760:	ad0a5374 	sw	t2,21364(t0)
bfc04764:	a1095376 	sb	t1,21366(t0)
bfc04768:	25040004 	addiu	a0,t0,4
bfc0476c:	2505fffc 	addiu	a1,t0,-4
bfc04770:	ac845374 	sw	a0,21364(a0)
bfc04774:	aca55374 	sw	a1,21364(a1)
bfc04778:	8d025374 	lw	v0,21364(t0)
bfc0477c:	8ca45374 	lw	a0,21364(a1)
bfc04780:	8c855374 	lw	a1,21364(a0)
bfc04784:	8ca65374 	lw	a2,21364(a1)
bfc04788:	144303fe 	bne	v0,v1,bfc05784 <inst_error>
bfc0478c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:76
bfc04790:	3c0a95b2 	lui	t2,0x95b2
bfc04794:	354ab736 	ori	t2,t2,0xb736
bfc04798:	3c0930a7 	lui	t1,0x30a7
bfc0479c:	3529f300 	ori	t1,t1,0xf300
bfc047a0:	3c08800d 	lui	t0,0x800d
bfc047a4:	3c0395b2 	lui	v1,0x95b2
bfc047a8:	3463b700 	ori	v1,v1,0xb700
bfc047ac:	ad0a1e7c 	sw	t2,7804(t0)
bfc047b0:	a1091e7c 	sb	t1,7804(t0)
bfc047b4:	25040004 	addiu	a0,t0,4
bfc047b8:	2505fffc 	addiu	a1,t0,-4
bfc047bc:	ac841e7c 	sw	a0,7804(a0)
bfc047c0:	aca51e7c 	sw	a1,7804(a1)
bfc047c4:	8d021e7c 	lw	v0,7804(t0)
bfc047c8:	8ca41e7c 	lw	a0,7804(a1)
bfc047cc:	8c851e7c 	lw	a1,7804(a0)
bfc047d0:	8ca61e7c 	lw	a2,7804(a1)
bfc047d4:	144303eb 	bne	v0,v1,bfc05784 <inst_error>
bfc047d8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:77
bfc047dc:	3c0a408e 	lui	t2,0x408e
bfc047e0:	354a7440 	ori	t2,t2,0x7440
bfc047e4:	3c09a0b5 	lui	t1,0xa0b5
bfc047e8:	35293160 	ori	t1,t1,0x3160
bfc047ec:	3c08800d 	lui	t0,0x800d
bfc047f0:	3c03608e 	lui	v1,0x608e
bfc047f4:	34637440 	ori	v1,v1,0x7440
bfc047f8:	ad0a3a84 	sw	t2,14980(t0)
bfc047fc:	a1093a87 	sb	t1,14983(t0)
bfc04800:	25040004 	addiu	a0,t0,4
bfc04804:	2505fffc 	addiu	a1,t0,-4
bfc04808:	ac843a84 	sw	a0,14980(a0)
bfc0480c:	aca53a84 	sw	a1,14980(a1)
bfc04810:	8d023a84 	lw	v0,14980(t0)
bfc04814:	8ca43a84 	lw	a0,14980(a1)
bfc04818:	8c853a84 	lw	a1,14980(a0)
bfc0481c:	8ca63a84 	lw	a2,14980(a1)
bfc04820:	144303d8 	bne	v0,v1,bfc05784 <inst_error>
bfc04824:	00000000 	nop
/home/csy/func/inst/n63_sb.S:78
bfc04828:	3c0a2d9b 	lui	t2,0x2d9b
bfc0482c:	354a8c36 	ori	t2,t2,0x8c36
bfc04830:	3c09077d 	lui	t1,0x77d
bfc04834:	35296f24 	ori	t1,t1,0x6f24
bfc04838:	3c08800d 	lui	t0,0x800d
bfc0483c:	3c032d9b 	lui	v1,0x2d9b
bfc04840:	34638c24 	ori	v1,v1,0x8c24
bfc04844:	3c010001 	lui	at,0x1
bfc04848:	00280821 	addu	at,at,t0
bfc0484c:	ac2afccc 	sw	t2,-820(at)
bfc04850:	3c010001 	lui	at,0x1
bfc04854:	00280821 	addu	at,at,t0
bfc04858:	a029fccc 	sb	t1,-820(at)
bfc0485c:	25040004 	addiu	a0,t0,4
bfc04860:	2505fffc 	addiu	a1,t0,-4
bfc04864:	3c010001 	lui	at,0x1
bfc04868:	00240821 	addu	at,at,a0
bfc0486c:	ac24fccc 	sw	a0,-820(at)
bfc04870:	3c010001 	lui	at,0x1
bfc04874:	00250821 	addu	at,at,a1
bfc04878:	ac25fccc 	sw	a1,-820(at)
bfc0487c:	3c020001 	lui	v0,0x1
bfc04880:	00481021 	addu	v0,v0,t0
bfc04884:	8c42fccc 	lw	v0,-820(v0)
bfc04888:	3c040001 	lui	a0,0x1
bfc0488c:	00852021 	addu	a0,a0,a1
bfc04890:	8c84fccc 	lw	a0,-820(a0)
bfc04894:	3c050001 	lui	a1,0x1
bfc04898:	00a42821 	addu	a1,a1,a0
bfc0489c:	8ca5fccc 	lw	a1,-820(a1)
bfc048a0:	3c060001 	lui	a2,0x1
bfc048a4:	00c53021 	addu	a2,a2,a1
bfc048a8:	8cc6fccc 	lw	a2,-820(a2)
bfc048ac:	144303b5 	bne	v0,v1,bfc05784 <inst_error>
bfc048b0:	00000000 	nop
/home/csy/func/inst/n63_sb.S:79
bfc048b4:	3c0ac31b 	lui	t2,0xc31b
bfc048b8:	354ac4fa 	ori	t2,t2,0xc4fa
bfc048bc:	3c098026 	lui	t1,0x8026
bfc048c0:	35294e9e 	ori	t1,t1,0x4e9e
bfc048c4:	3c08800d 	lui	t0,0x800d
bfc048c8:	3c039e1b 	lui	v1,0x9e1b
bfc048cc:	3463c4fa 	ori	v1,v1,0xc4fa
bfc048d0:	3c010001 	lui	at,0x1
bfc048d4:	00280821 	addu	at,at,t0
bfc048d8:	ac2ae9cc 	sw	t2,-5684(at)
bfc048dc:	3c010001 	lui	at,0x1
bfc048e0:	00280821 	addu	at,at,t0
bfc048e4:	a029e9cf 	sb	t1,-5681(at)
bfc048e8:	25040004 	addiu	a0,t0,4
bfc048ec:	2505fffc 	addiu	a1,t0,-4
bfc048f0:	3c010001 	lui	at,0x1
bfc048f4:	00240821 	addu	at,at,a0
bfc048f8:	ac24e9cc 	sw	a0,-5684(at)
bfc048fc:	3c010001 	lui	at,0x1
bfc04900:	00250821 	addu	at,at,a1
bfc04904:	ac25e9cc 	sw	a1,-5684(at)
bfc04908:	3c020001 	lui	v0,0x1
bfc0490c:	00481021 	addu	v0,v0,t0
bfc04910:	8c42e9cc 	lw	v0,-5684(v0)
bfc04914:	3c040001 	lui	a0,0x1
bfc04918:	00852021 	addu	a0,a0,a1
bfc0491c:	8c84e9cc 	lw	a0,-5684(a0)
bfc04920:	3c050001 	lui	a1,0x1
bfc04924:	00a42821 	addu	a1,a1,a0
bfc04928:	8ca5e9cc 	lw	a1,-5684(a1)
bfc0492c:	3c060001 	lui	a2,0x1
bfc04930:	00c53021 	addu	a2,a2,a1
bfc04934:	8cc6e9cc 	lw	a2,-5684(a2)
bfc04938:	14430392 	bne	v0,v1,bfc05784 <inst_error>
bfc0493c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:80
bfc04940:	3c0a0ae2 	lui	t2,0xae2
bfc04944:	354ab41c 	ori	t2,t2,0xb41c
bfc04948:	3c09f394 	lui	t1,0xf394
bfc0494c:	35290600 	ori	t1,t1,0x600
bfc04950:	3c08800d 	lui	t0,0x800d
bfc04954:	3c030a00 	lui	v1,0xa00
bfc04958:	3463b41c 	ori	v1,v1,0xb41c
bfc0495c:	3c010001 	lui	at,0x1
bfc04960:	00280821 	addu	at,at,t0
bfc04964:	ac2ab6bc 	sw	t2,-18756(at)
bfc04968:	3c010001 	lui	at,0x1
bfc0496c:	00280821 	addu	at,at,t0
bfc04970:	a029b6be 	sb	t1,-18754(at)
bfc04974:	25040004 	addiu	a0,t0,4
bfc04978:	2505fffc 	addiu	a1,t0,-4
bfc0497c:	3c010001 	lui	at,0x1
bfc04980:	00240821 	addu	at,at,a0
bfc04984:	ac24b6bc 	sw	a0,-18756(at)
bfc04988:	3c010001 	lui	at,0x1
bfc0498c:	00250821 	addu	at,at,a1
bfc04990:	ac25b6bc 	sw	a1,-18756(at)
bfc04994:	3c020001 	lui	v0,0x1
bfc04998:	00481021 	addu	v0,v0,t0
bfc0499c:	8c42b6bc 	lw	v0,-18756(v0)
bfc049a0:	3c040001 	lui	a0,0x1
bfc049a4:	00852021 	addu	a0,a0,a1
bfc049a8:	8c84b6bc 	lw	a0,-18756(a0)
bfc049ac:	3c050001 	lui	a1,0x1
bfc049b0:	00a42821 	addu	a1,a1,a0
bfc049b4:	8ca5b6bc 	lw	a1,-18756(a1)
bfc049b8:	3c060001 	lui	a2,0x1
bfc049bc:	00c53021 	addu	a2,a2,a1
bfc049c0:	8cc6b6bc 	lw	a2,-18756(a2)
bfc049c4:	1443036f 	bne	v0,v1,bfc05784 <inst_error>
bfc049c8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:81
bfc049cc:	3c0ad672 	lui	t2,0xd672
bfc049d0:	354a125e 	ori	t2,t2,0x125e
bfc049d4:	3c09f54f 	lui	t1,0xf54f
bfc049d8:	35296e10 	ori	t1,t1,0x6e10
bfc049dc:	3c08800d 	lui	t0,0x800d
bfc049e0:	3c03d610 	lui	v1,0xd610
bfc049e4:	3463125e 	ori	v1,v1,0x125e
bfc049e8:	ad0a33e4 	sw	t2,13284(t0)
bfc049ec:	a10933e6 	sb	t1,13286(t0)
bfc049f0:	25040004 	addiu	a0,t0,4
bfc049f4:	2505fffc 	addiu	a1,t0,-4
bfc049f8:	ac8433e4 	sw	a0,13284(a0)
bfc049fc:	aca533e4 	sw	a1,13284(a1)
bfc04a00:	8d0233e4 	lw	v0,13284(t0)
bfc04a04:	8ca433e4 	lw	a0,13284(a1)
bfc04a08:	8c8533e4 	lw	a1,13284(a0)
bfc04a0c:	8ca633e4 	lw	a2,13284(a1)
bfc04a10:	1443035c 	bne	v0,v1,bfc05784 <inst_error>
bfc04a14:	00000000 	nop
/home/csy/func/inst/n63_sb.S:82
bfc04a18:	3c0a16df 	lui	t2,0x16df
bfc04a1c:	354a9976 	ori	t2,t2,0x9976
bfc04a20:	3c09b0be 	lui	t1,0xb0be
bfc04a24:	35294800 	ori	t1,t1,0x4800
bfc04a28:	3c08800d 	lui	t0,0x800d
bfc04a2c:	3c031600 	lui	v1,0x1600
bfc04a30:	34639976 	ori	v1,v1,0x9976
bfc04a34:	3c010001 	lui	at,0x1
bfc04a38:	00280821 	addu	at,at,t0
bfc04a3c:	ac2afc04 	sw	t2,-1020(at)
bfc04a40:	3c010001 	lui	at,0x1
bfc04a44:	00280821 	addu	at,at,t0
bfc04a48:	a029fc06 	sb	t1,-1018(at)
bfc04a4c:	25040004 	addiu	a0,t0,4
bfc04a50:	2505fffc 	addiu	a1,t0,-4
bfc04a54:	3c010001 	lui	at,0x1
bfc04a58:	00240821 	addu	at,at,a0
bfc04a5c:	ac24fc04 	sw	a0,-1020(at)
bfc04a60:	3c010001 	lui	at,0x1
bfc04a64:	00250821 	addu	at,at,a1
bfc04a68:	ac25fc04 	sw	a1,-1020(at)
bfc04a6c:	3c020001 	lui	v0,0x1
bfc04a70:	00481021 	addu	v0,v0,t0
bfc04a74:	8c42fc04 	lw	v0,-1020(v0)
bfc04a78:	3c040001 	lui	a0,0x1
bfc04a7c:	00852021 	addu	a0,a0,a1
bfc04a80:	8c84fc04 	lw	a0,-1020(a0)
bfc04a84:	3c050001 	lui	a1,0x1
bfc04a88:	00a42821 	addu	a1,a1,a0
bfc04a8c:	8ca5fc04 	lw	a1,-1020(a1)
bfc04a90:	3c060001 	lui	a2,0x1
bfc04a94:	00c53021 	addu	a2,a2,a1
bfc04a98:	8cc6fc04 	lw	a2,-1020(a2)
bfc04a9c:	14430339 	bne	v0,v1,bfc05784 <inst_error>
bfc04aa0:	00000000 	nop
/home/csy/func/inst/n63_sb.S:83
bfc04aa4:	3c0a9d36 	lui	t2,0x9d36
bfc04aa8:	354a01ce 	ori	t2,t2,0x1ce
bfc04aac:	3c097964 	lui	t1,0x7964
bfc04ab0:	35295dd6 	ori	t1,t1,0x5dd6
bfc04ab4:	3c08800d 	lui	t0,0x800d
bfc04ab8:	3c039d36 	lui	v1,0x9d36
bfc04abc:	346301d6 	ori	v1,v1,0x1d6
bfc04ac0:	3c010001 	lui	at,0x1
bfc04ac4:	00280821 	addu	at,at,t0
bfc04ac8:	ac2ab998 	sw	t2,-18024(at)
bfc04acc:	3c010001 	lui	at,0x1
bfc04ad0:	00280821 	addu	at,at,t0
bfc04ad4:	a029b998 	sb	t1,-18024(at)
bfc04ad8:	25040004 	addiu	a0,t0,4
bfc04adc:	2505fffc 	addiu	a1,t0,-4
bfc04ae0:	3c010001 	lui	at,0x1
bfc04ae4:	00240821 	addu	at,at,a0
bfc04ae8:	ac24b998 	sw	a0,-18024(at)
bfc04aec:	3c010001 	lui	at,0x1
bfc04af0:	00250821 	addu	at,at,a1
bfc04af4:	ac25b998 	sw	a1,-18024(at)
bfc04af8:	3c020001 	lui	v0,0x1
bfc04afc:	00481021 	addu	v0,v0,t0
bfc04b00:	8c42b998 	lw	v0,-18024(v0)
bfc04b04:	3c040001 	lui	a0,0x1
bfc04b08:	00852021 	addu	a0,a0,a1
bfc04b0c:	8c84b998 	lw	a0,-18024(a0)
bfc04b10:	3c050001 	lui	a1,0x1
bfc04b14:	00a42821 	addu	a1,a1,a0
bfc04b18:	8ca5b998 	lw	a1,-18024(a1)
bfc04b1c:	3c060001 	lui	a2,0x1
bfc04b20:	00c53021 	addu	a2,a2,a1
bfc04b24:	8cc6b998 	lw	a2,-18024(a2)
bfc04b28:	14430316 	bne	v0,v1,bfc05784 <inst_error>
bfc04b2c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:84
bfc04b30:	3c0af085 	lui	t2,0xf085
bfc04b34:	354a81f4 	ori	t2,t2,0x81f4
bfc04b38:	3c092de5 	lui	t1,0x2de5
bfc04b3c:	3529ab28 	ori	t1,t1,0xab28
bfc04b40:	3c08800d 	lui	t0,0x800d
bfc04b44:	3c03f085 	lui	v1,0xf085
bfc04b48:	34638128 	ori	v1,v1,0x8128
bfc04b4c:	ad0a15f4 	sw	t2,5620(t0)
bfc04b50:	a10915f4 	sb	t1,5620(t0)
bfc04b54:	25040004 	addiu	a0,t0,4
bfc04b58:	2505fffc 	addiu	a1,t0,-4
bfc04b5c:	ac8415f4 	sw	a0,5620(a0)
bfc04b60:	aca515f4 	sw	a1,5620(a1)
bfc04b64:	8d0215f4 	lw	v0,5620(t0)
bfc04b68:	8ca415f4 	lw	a0,5620(a1)
bfc04b6c:	8c8515f4 	lw	a1,5620(a0)
bfc04b70:	8ca615f4 	lw	a2,5620(a1)
bfc04b74:	14430303 	bne	v0,v1,bfc05784 <inst_error>
bfc04b78:	00000000 	nop
/home/csy/func/inst/n63_sb.S:85
bfc04b7c:	3c0a52c8 	lui	t2,0x52c8
bfc04b80:	354a82b0 	ori	t2,t2,0x82b0
bfc04b84:	3c090bbc 	lui	t1,0xbbc
bfc04b88:	3529d41c 	ori	t1,t1,0xd41c
bfc04b8c:	3c08800d 	lui	t0,0x800d
bfc04b90:	3c03521c 	lui	v1,0x521c
bfc04b94:	346382b0 	ori	v1,v1,0x82b0
bfc04b98:	ad0a7eac 	sw	t2,32428(t0)
bfc04b9c:	a1097eae 	sb	t1,32430(t0)
bfc04ba0:	25040004 	addiu	a0,t0,4
bfc04ba4:	2505fffc 	addiu	a1,t0,-4
bfc04ba8:	ac847eac 	sw	a0,32428(a0)
bfc04bac:	aca57eac 	sw	a1,32428(a1)
bfc04bb0:	8d027eac 	lw	v0,32428(t0)
bfc04bb4:	8ca47eac 	lw	a0,32428(a1)
bfc04bb8:	8c857eac 	lw	a1,32428(a0)
bfc04bbc:	8ca67eac 	lw	a2,32428(a1)
bfc04bc0:	144302f0 	bne	v0,v1,bfc05784 <inst_error>
bfc04bc4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:86
bfc04bc8:	3c0a1817 	lui	t2,0x1817
bfc04bcc:	354a8fb0 	ori	t2,t2,0x8fb0
bfc04bd0:	3c09b008 	lui	t1,0xb008
bfc04bd4:	3529d7c8 	ori	t1,t1,0xd7c8
bfc04bd8:	3c08800d 	lui	t0,0x800d
bfc04bdc:	3c031817 	lui	v1,0x1817
bfc04be0:	34638fc8 	ori	v1,v1,0x8fc8
bfc04be4:	3c010001 	lui	at,0x1
bfc04be8:	00280821 	addu	at,at,t0
bfc04bec:	ac2ac514 	sw	t2,-15084(at)
bfc04bf0:	3c010001 	lui	at,0x1
bfc04bf4:	00280821 	addu	at,at,t0
bfc04bf8:	a029c514 	sb	t1,-15084(at)
bfc04bfc:	25040004 	addiu	a0,t0,4
bfc04c00:	2505fffc 	addiu	a1,t0,-4
bfc04c04:	3c010001 	lui	at,0x1
bfc04c08:	00240821 	addu	at,at,a0
bfc04c0c:	ac24c514 	sw	a0,-15084(at)
bfc04c10:	3c010001 	lui	at,0x1
bfc04c14:	00250821 	addu	at,at,a1
bfc04c18:	ac25c514 	sw	a1,-15084(at)
bfc04c1c:	3c020001 	lui	v0,0x1
bfc04c20:	00481021 	addu	v0,v0,t0
bfc04c24:	8c42c514 	lw	v0,-15084(v0)
bfc04c28:	3c040001 	lui	a0,0x1
bfc04c2c:	00852021 	addu	a0,a0,a1
bfc04c30:	8c84c514 	lw	a0,-15084(a0)
bfc04c34:	3c050001 	lui	a1,0x1
bfc04c38:	00a42821 	addu	a1,a1,a0
bfc04c3c:	8ca5c514 	lw	a1,-15084(a1)
bfc04c40:	3c060001 	lui	a2,0x1
bfc04c44:	00c53021 	addu	a2,a2,a1
bfc04c48:	8cc6c514 	lw	a2,-15084(a2)
bfc04c4c:	144302cd 	bne	v0,v1,bfc05784 <inst_error>
bfc04c50:	00000000 	nop
/home/csy/func/inst/n63_sb.S:87
bfc04c54:	3c0ac195 	lui	t2,0xc195
bfc04c58:	354a8740 	ori	t2,t2,0x8740
bfc04c5c:	3c0944c6 	lui	t1,0x44c6
bfc04c60:	35290618 	ori	t1,t1,0x618
bfc04c64:	3c08800d 	lui	t0,0x800d
bfc04c68:	3c03c195 	lui	v1,0xc195
bfc04c6c:	34638718 	ori	v1,v1,0x8718
bfc04c70:	3c010001 	lui	at,0x1
bfc04c74:	00280821 	addu	at,at,t0
bfc04c78:	ac2aae68 	sw	t2,-20888(at)
bfc04c7c:	3c010001 	lui	at,0x1
bfc04c80:	00280821 	addu	at,at,t0
bfc04c84:	a029ae68 	sb	t1,-20888(at)
bfc04c88:	25040004 	addiu	a0,t0,4
bfc04c8c:	2505fffc 	addiu	a1,t0,-4
bfc04c90:	3c010001 	lui	at,0x1
bfc04c94:	00240821 	addu	at,at,a0
bfc04c98:	ac24ae68 	sw	a0,-20888(at)
bfc04c9c:	3c010001 	lui	at,0x1
bfc04ca0:	00250821 	addu	at,at,a1
bfc04ca4:	ac25ae68 	sw	a1,-20888(at)
bfc04ca8:	3c020001 	lui	v0,0x1
bfc04cac:	00481021 	addu	v0,v0,t0
bfc04cb0:	8c42ae68 	lw	v0,-20888(v0)
bfc04cb4:	3c040001 	lui	a0,0x1
bfc04cb8:	00852021 	addu	a0,a0,a1
bfc04cbc:	8c84ae68 	lw	a0,-20888(a0)
bfc04cc0:	3c050001 	lui	a1,0x1
bfc04cc4:	00a42821 	addu	a1,a1,a0
bfc04cc8:	8ca5ae68 	lw	a1,-20888(a1)
bfc04ccc:	3c060001 	lui	a2,0x1
bfc04cd0:	00c53021 	addu	a2,a2,a1
bfc04cd4:	8cc6ae68 	lw	a2,-20888(a2)
bfc04cd8:	144302aa 	bne	v0,v1,bfc05784 <inst_error>
bfc04cdc:	00000000 	nop
/home/csy/func/inst/n63_sb.S:88
bfc04ce0:	3c0a9ca3 	lui	t2,0x9ca3
bfc04ce4:	354ae13c 	ori	t2,t2,0xe13c
bfc04ce8:	3c0953cc 	lui	t1,0x53cc
bfc04cec:	3529f0e9 	ori	t1,t1,0xf0e9
bfc04cf0:	3c08800d 	lui	t0,0x800d
bfc04cf4:	3c039ca3 	lui	v1,0x9ca3
bfc04cf8:	3463e1e9 	ori	v1,v1,0xe1e9
bfc04cfc:	3c010001 	lui	at,0x1
bfc04d00:	00280821 	addu	at,at,t0
bfc04d04:	ac2ae150 	sw	t2,-7856(at)
bfc04d08:	3c010001 	lui	at,0x1
bfc04d0c:	00280821 	addu	at,at,t0
bfc04d10:	a029e150 	sb	t1,-7856(at)
bfc04d14:	25040004 	addiu	a0,t0,4
bfc04d18:	2505fffc 	addiu	a1,t0,-4
bfc04d1c:	3c010001 	lui	at,0x1
bfc04d20:	00240821 	addu	at,at,a0
bfc04d24:	ac24e150 	sw	a0,-7856(at)
bfc04d28:	3c010001 	lui	at,0x1
bfc04d2c:	00250821 	addu	at,at,a1
bfc04d30:	ac25e150 	sw	a1,-7856(at)
bfc04d34:	3c020001 	lui	v0,0x1
bfc04d38:	00481021 	addu	v0,v0,t0
bfc04d3c:	8c42e150 	lw	v0,-7856(v0)
bfc04d40:	3c040001 	lui	a0,0x1
bfc04d44:	00852021 	addu	a0,a0,a1
bfc04d48:	8c84e150 	lw	a0,-7856(a0)
bfc04d4c:	3c050001 	lui	a1,0x1
bfc04d50:	00a42821 	addu	a1,a1,a0
bfc04d54:	8ca5e150 	lw	a1,-7856(a1)
bfc04d58:	3c060001 	lui	a2,0x1
bfc04d5c:	00c53021 	addu	a2,a2,a1
bfc04d60:	8cc6e150 	lw	a2,-7856(a2)
bfc04d64:	14430287 	bne	v0,v1,bfc05784 <inst_error>
bfc04d68:	00000000 	nop
/home/csy/func/inst/n63_sb.S:89
bfc04d6c:	3c0a3a0d 	lui	t2,0x3a0d
bfc04d70:	354a9754 	ori	t2,t2,0x9754
bfc04d74:	3c09e204 	lui	t1,0xe204
bfc04d78:	3529a4bd 	ori	t1,t1,0xa4bd
bfc04d7c:	3c08800d 	lui	t0,0x800d
bfc04d80:	3c033a0d 	lui	v1,0x3a0d
bfc04d84:	346397bd 	ori	v1,v1,0x97bd
bfc04d88:	ad0a5e50 	sw	t2,24144(t0)
bfc04d8c:	a1095e50 	sb	t1,24144(t0)
bfc04d90:	25040004 	addiu	a0,t0,4
bfc04d94:	2505fffc 	addiu	a1,t0,-4
bfc04d98:	ac845e50 	sw	a0,24144(a0)
bfc04d9c:	aca55e50 	sw	a1,24144(a1)
bfc04da0:	8d025e50 	lw	v0,24144(t0)
bfc04da4:	8ca45e50 	lw	a0,24144(a1)
bfc04da8:	8c855e50 	lw	a1,24144(a0)
bfc04dac:	8ca65e50 	lw	a2,24144(a1)
bfc04db0:	14430274 	bne	v0,v1,bfc05784 <inst_error>
bfc04db4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:90
bfc04db8:	3c0ac17b 	lui	t2,0xc17b
bfc04dbc:	354aa750 	ori	t2,t2,0xa750
bfc04dc0:	3c099d1b 	lui	t1,0x9d1b
bfc04dc4:	3529a87b 	ori	t1,t1,0xa87b
bfc04dc8:	3c08800d 	lui	t0,0x800d
bfc04dcc:	3c037b7b 	lui	v1,0x7b7b
bfc04dd0:	3463a750 	ori	v1,v1,0xa750
bfc04dd4:	ad0a5c84 	sw	t2,23684(t0)
bfc04dd8:	a1095c87 	sb	t1,23687(t0)
bfc04ddc:	25040004 	addiu	a0,t0,4
bfc04de0:	2505fffc 	addiu	a1,t0,-4
bfc04de4:	ac845c84 	sw	a0,23684(a0)
bfc04de8:	aca55c84 	sw	a1,23684(a1)
bfc04dec:	8d025c84 	lw	v0,23684(t0)
bfc04df0:	8ca45c84 	lw	a0,23684(a1)
bfc04df4:	8c855c84 	lw	a1,23684(a0)
bfc04df8:	8ca65c84 	lw	a2,23684(a1)
bfc04dfc:	14430261 	bne	v0,v1,bfc05784 <inst_error>
bfc04e00:	00000000 	nop
/home/csy/func/inst/n63_sb.S:91
bfc04e04:	3c0a3df6 	lui	t2,0x3df6
bfc04e08:	354ad256 	ori	t2,t2,0xd256
bfc04e0c:	3c095e9b 	lui	t1,0x5e9b
bfc04e10:	35296298 	ori	t1,t1,0x6298
bfc04e14:	3c08800d 	lui	t0,0x800d
bfc04e18:	3c033df6 	lui	v1,0x3df6
bfc04e1c:	34639856 	ori	v1,v1,0x9856
bfc04e20:	ad0a0000 	sw	t2,0(t0)
bfc04e24:	a1090001 	sb	t1,1(t0)
bfc04e28:	25040004 	addiu	a0,t0,4
bfc04e2c:	2505fffc 	addiu	a1,t0,-4
bfc04e30:	ac840000 	sw	a0,0(a0)
bfc04e34:	aca50000 	sw	a1,0(a1)
bfc04e38:	8d020000 	lw	v0,0(t0)
bfc04e3c:	8ca40000 	lw	a0,0(a1)
bfc04e40:	8c850000 	lw	a1,0(a0)
bfc04e44:	8ca60000 	lw	a2,0(a1)
bfc04e48:	1443024e 	bne	v0,v1,bfc05784 <inst_error>
bfc04e4c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:92
bfc04e50:	3c0a5f50 	lui	t2,0x5f50
bfc04e54:	354ab378 	ori	t2,t2,0xb378
bfc04e58:	3c09d156 	lui	t1,0xd156
bfc04e5c:	35293c04 	ori	t1,t1,0x3c04
bfc04e60:	3c08800d 	lui	t0,0x800d
bfc04e64:	3c035f04 	lui	v1,0x5f04
bfc04e68:	3463b378 	ori	v1,v1,0xb378
bfc04e6c:	ad0a0000 	sw	t2,0(t0)
bfc04e70:	a1090002 	sb	t1,2(t0)
bfc04e74:	25040004 	addiu	a0,t0,4
bfc04e78:	2505fffc 	addiu	a1,t0,-4
bfc04e7c:	ac840000 	sw	a0,0(a0)
bfc04e80:	aca50000 	sw	a1,0(a1)
bfc04e84:	8d020000 	lw	v0,0(t0)
bfc04e88:	8ca40000 	lw	a0,0(a1)
bfc04e8c:	8c850000 	lw	a1,0(a0)
bfc04e90:	8ca60000 	lw	a2,0(a1)
bfc04e94:	1443023b 	bne	v0,v1,bfc05784 <inst_error>
bfc04e98:	00000000 	nop
/home/csy/func/inst/n63_sb.S:93
bfc04e9c:	3c0a036b 	lui	t2,0x36b
bfc04ea0:	354ab8b0 	ori	t2,t2,0xb8b0
bfc04ea4:	3c091093 	lui	t1,0x1093
bfc04ea8:	352956f8 	ori	t1,t1,0x56f8
bfc04eac:	3c08800d 	lui	t0,0x800d
bfc04eb0:	3c03036b 	lui	v1,0x36b
bfc04eb4:	3463f8b0 	ori	v1,v1,0xf8b0
bfc04eb8:	ad0a0000 	sw	t2,0(t0)
bfc04ebc:	a1090001 	sb	t1,1(t0)
bfc04ec0:	25040004 	addiu	a0,t0,4
bfc04ec4:	2505fffc 	addiu	a1,t0,-4
bfc04ec8:	ac840000 	sw	a0,0(a0)
bfc04ecc:	aca50000 	sw	a1,0(a1)
bfc04ed0:	8d020000 	lw	v0,0(t0)
bfc04ed4:	8ca40000 	lw	a0,0(a1)
bfc04ed8:	8c850000 	lw	a1,0(a0)
bfc04edc:	8ca60000 	lw	a2,0(a1)
bfc04ee0:	14430228 	bne	v0,v1,bfc05784 <inst_error>
bfc04ee4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:94
bfc04ee8:	3c0a8d12 	lui	t2,0x8d12
bfc04eec:	354a10b8 	ori	t2,t2,0x10b8
bfc04ef0:	3c09bd99 	lui	t1,0xbd99
bfc04ef4:	352940a5 	ori	t1,t1,0x40a5
bfc04ef8:	3c08800d 	lui	t0,0x800d
bfc04efc:	3c038d12 	lui	v1,0x8d12
bfc04f00:	346310a5 	ori	v1,v1,0x10a5
bfc04f04:	ad0a0000 	sw	t2,0(t0)
bfc04f08:	a1090000 	sb	t1,0(t0)
bfc04f0c:	25040004 	addiu	a0,t0,4
bfc04f10:	2505fffc 	addiu	a1,t0,-4
bfc04f14:	ac840000 	sw	a0,0(a0)
bfc04f18:	aca50000 	sw	a1,0(a1)
bfc04f1c:	8d020000 	lw	v0,0(t0)
bfc04f20:	8ca40000 	lw	a0,0(a1)
bfc04f24:	8c850000 	lw	a1,0(a0)
bfc04f28:	8ca60000 	lw	a2,0(a1)
bfc04f2c:	14430215 	bne	v0,v1,bfc05784 <inst_error>
bfc04f30:	00000000 	nop
/home/csy/func/inst/n63_sb.S:95
bfc04f34:	3c0aae1f 	lui	t2,0xae1f
bfc04f38:	354a4651 	ori	t2,t2,0x4651
bfc04f3c:	3c09d53d 	lui	t1,0xd53d
bfc04f40:	3529d416 	ori	t1,t1,0xd416
bfc04f44:	3c08800d 	lui	t0,0x800d
bfc04f48:	3c03ae1f 	lui	v1,0xae1f
bfc04f4c:	34631651 	ori	v1,v1,0x1651
bfc04f50:	ad0a0000 	sw	t2,0(t0)
bfc04f54:	a1090001 	sb	t1,1(t0)
bfc04f58:	25040004 	addiu	a0,t0,4
bfc04f5c:	2505fffc 	addiu	a1,t0,-4
bfc04f60:	ac840000 	sw	a0,0(a0)
bfc04f64:	aca50000 	sw	a1,0(a1)
bfc04f68:	8d020000 	lw	v0,0(t0)
bfc04f6c:	8ca40000 	lw	a0,0(a1)
bfc04f70:	8c850000 	lw	a1,0(a0)
bfc04f74:	8ca60000 	lw	a2,0(a1)
bfc04f78:	14430202 	bne	v0,v1,bfc05784 <inst_error>
bfc04f7c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:96
bfc04f80:	3c0a76f9 	lui	t2,0x76f9
bfc04f84:	354a942c 	ori	t2,t2,0x942c
bfc04f88:	3c095eb1 	lui	t1,0x5eb1
bfc04f8c:	3529d1e8 	ori	t1,t1,0xd1e8
bfc04f90:	3c08800d 	lui	t0,0x800d
bfc04f94:	3c0376e8 	lui	v1,0x76e8
bfc04f98:	3463942c 	ori	v1,v1,0x942c
bfc04f9c:	ad0a0000 	sw	t2,0(t0)
bfc04fa0:	a1090002 	sb	t1,2(t0)
bfc04fa4:	25040004 	addiu	a0,t0,4
bfc04fa8:	2505fffc 	addiu	a1,t0,-4
bfc04fac:	ac840000 	sw	a0,0(a0)
bfc04fb0:	aca50000 	sw	a1,0(a1)
bfc04fb4:	8d020000 	lw	v0,0(t0)
bfc04fb8:	8ca40000 	lw	a0,0(a1)
bfc04fbc:	8c850000 	lw	a1,0(a0)
bfc04fc0:	8ca60000 	lw	a2,0(a1)
bfc04fc4:	144301ef 	bne	v0,v1,bfc05784 <inst_error>
bfc04fc8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:97
bfc04fcc:	3c0afb19 	lui	t2,0xfb19
bfc04fd0:	354a2df2 	ori	t2,t2,0x2df2
bfc04fd4:	3c094cdb 	lui	t1,0x4cdb
bfc04fd8:	3529d878 	ori	t1,t1,0xd878
bfc04fdc:	3c08800d 	lui	t0,0x800d
bfc04fe0:	3c03fb19 	lui	v1,0xfb19
bfc04fe4:	34632d78 	ori	v1,v1,0x2d78
bfc04fe8:	ad0a0000 	sw	t2,0(t0)
bfc04fec:	a1090000 	sb	t1,0(t0)
bfc04ff0:	25040004 	addiu	a0,t0,4
bfc04ff4:	2505fffc 	addiu	a1,t0,-4
bfc04ff8:	ac840000 	sw	a0,0(a0)
bfc04ffc:	aca50000 	sw	a1,0(a1)
bfc05000:	8d020000 	lw	v0,0(t0)
bfc05004:	8ca40000 	lw	a0,0(a1)
bfc05008:	8c850000 	lw	a1,0(a0)
bfc0500c:	8ca60000 	lw	a2,0(a1)
bfc05010:	144301dc 	bne	v0,v1,bfc05784 <inst_error>
bfc05014:	00000000 	nop
/home/csy/func/inst/n63_sb.S:98
bfc05018:	3c0a7854 	lui	t2,0x7854
bfc0501c:	354a532e 	ori	t2,t2,0x532e
bfc05020:	3c09895b 	lui	t1,0x895b
bfc05024:	3529bb88 	ori	t1,t1,0xbb88
bfc05028:	3c08800d 	lui	t0,0x800d
bfc0502c:	3c037888 	lui	v1,0x7888
bfc05030:	3463532e 	ori	v1,v1,0x532e
bfc05034:	ad0a0000 	sw	t2,0(t0)
bfc05038:	a1090002 	sb	t1,2(t0)
bfc0503c:	25040004 	addiu	a0,t0,4
bfc05040:	2505fffc 	addiu	a1,t0,-4
bfc05044:	ac840000 	sw	a0,0(a0)
bfc05048:	aca50000 	sw	a1,0(a1)
bfc0504c:	8d020000 	lw	v0,0(t0)
bfc05050:	8ca40000 	lw	a0,0(a1)
bfc05054:	8c850000 	lw	a1,0(a0)
bfc05058:	8ca60000 	lw	a2,0(a1)
bfc0505c:	144301c9 	bne	v0,v1,bfc05784 <inst_error>
bfc05060:	00000000 	nop
/home/csy/func/inst/n63_sb.S:99
bfc05064:	3c0ae918 	lui	t2,0xe918
bfc05068:	354aba4c 	ori	t2,t2,0xba4c
bfc0506c:	3c09d1c9 	lui	t1,0xd1c9
bfc05070:	35299748 	ori	t1,t1,0x9748
bfc05074:	3c08800d 	lui	t0,0x800d
bfc05078:	3c03e948 	lui	v1,0xe948
bfc0507c:	3463ba4c 	ori	v1,v1,0xba4c
bfc05080:	ad0a0000 	sw	t2,0(t0)
bfc05084:	a1090002 	sb	t1,2(t0)
bfc05088:	25040004 	addiu	a0,t0,4
bfc0508c:	2505fffc 	addiu	a1,t0,-4
bfc05090:	ac840000 	sw	a0,0(a0)
bfc05094:	aca50000 	sw	a1,0(a1)
bfc05098:	8d020000 	lw	v0,0(t0)
bfc0509c:	8ca40000 	lw	a0,0(a1)
bfc050a0:	8c850000 	lw	a1,0(a0)
bfc050a4:	8ca60000 	lw	a2,0(a1)
bfc050a8:	144301b6 	bne	v0,v1,bfc05784 <inst_error>
bfc050ac:	00000000 	nop
/home/csy/func/inst/n63_sb.S:100
bfc050b0:	3c0a9cdf 	lui	t2,0x9cdf
bfc050b4:	354ab200 	ori	t2,t2,0xb200
bfc050b8:	3c0985af 	lui	t1,0x85af
bfc050bc:	35291f1e 	ori	t1,t1,0x1f1e
bfc050c0:	3c08800d 	lui	t0,0x800d
bfc050c4:	3c039cdf 	lui	v1,0x9cdf
bfc050c8:	34631e00 	ori	v1,v1,0x1e00
bfc050cc:	ad0a0000 	sw	t2,0(t0)
bfc050d0:	a1090001 	sb	t1,1(t0)
bfc050d4:	25040004 	addiu	a0,t0,4
bfc050d8:	2505fffc 	addiu	a1,t0,-4
bfc050dc:	ac840000 	sw	a0,0(a0)
bfc050e0:	aca50000 	sw	a1,0(a1)
bfc050e4:	8d020000 	lw	v0,0(t0)
bfc050e8:	8ca40000 	lw	a0,0(a1)
bfc050ec:	8c850000 	lw	a1,0(a0)
bfc050f0:	8ca60000 	lw	a2,0(a1)
bfc050f4:	144301a3 	bne	v0,v1,bfc05784 <inst_error>
bfc050f8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:101
bfc050fc:	3c0a9a16 	lui	t2,0x9a16
bfc05100:	354a3388 	ori	t2,t2,0x3388
bfc05104:	3c097ba8 	lui	t1,0x7ba8
bfc05108:	3529c8a0 	ori	t1,t1,0xc8a0
bfc0510c:	3c08800d 	lui	t0,0x800d
bfc05110:	3c03a016 	lui	v1,0xa016
bfc05114:	34633388 	ori	v1,v1,0x3388
bfc05118:	ad0a0000 	sw	t2,0(t0)
bfc0511c:	a1090003 	sb	t1,3(t0)
bfc05120:	25040004 	addiu	a0,t0,4
bfc05124:	2505fffc 	addiu	a1,t0,-4
bfc05128:	ac840000 	sw	a0,0(a0)
bfc0512c:	aca50000 	sw	a1,0(a1)
bfc05130:	8d020000 	lw	v0,0(t0)
bfc05134:	8ca40000 	lw	a0,0(a1)
bfc05138:	8c850000 	lw	a1,0(a0)
bfc0513c:	8ca60000 	lw	a2,0(a1)
bfc05140:	14430190 	bne	v0,v1,bfc05784 <inst_error>
bfc05144:	00000000 	nop
/home/csy/func/inst/n63_sb.S:102
bfc05148:	3c0a0676 	lui	t2,0x676
bfc0514c:	354ac233 	ori	t2,t2,0xc233
bfc05150:	3c099daf 	lui	t1,0x9daf
bfc05154:	3529dbd4 	ori	t1,t1,0xdbd4
bfc05158:	3c08800d 	lui	t0,0x800d
bfc0515c:	3c03d476 	lui	v1,0xd476
bfc05160:	3463c233 	ori	v1,v1,0xc233
bfc05164:	ad0a0000 	sw	t2,0(t0)
bfc05168:	a1090003 	sb	t1,3(t0)
bfc0516c:	25040004 	addiu	a0,t0,4
bfc05170:	2505fffc 	addiu	a1,t0,-4
bfc05174:	ac840000 	sw	a0,0(a0)
bfc05178:	aca50000 	sw	a1,0(a1)
bfc0517c:	8d020000 	lw	v0,0(t0)
bfc05180:	8ca40000 	lw	a0,0(a1)
bfc05184:	8c850000 	lw	a1,0(a0)
bfc05188:	8ca60000 	lw	a2,0(a1)
bfc0518c:	1443017d 	bne	v0,v1,bfc05784 <inst_error>
bfc05190:	00000000 	nop
/home/csy/func/inst/n63_sb.S:103
bfc05194:	3c0ad52c 	lui	t2,0xd52c
bfc05198:	354a0b08 	ori	t2,t2,0xb08
bfc0519c:	3c0948d7 	lui	t1,0x48d7
bfc051a0:	35292a28 	ori	t1,t1,0x2a28
bfc051a4:	3c08800d 	lui	t0,0x800d
bfc051a8:	3c03d52c 	lui	v1,0xd52c
bfc051ac:	34630b28 	ori	v1,v1,0xb28
bfc051b0:	ad0a0000 	sw	t2,0(t0)
bfc051b4:	a1090000 	sb	t1,0(t0)
bfc051b8:	25040004 	addiu	a0,t0,4
bfc051bc:	2505fffc 	addiu	a1,t0,-4
bfc051c0:	ac840000 	sw	a0,0(a0)
bfc051c4:	aca50000 	sw	a1,0(a1)
bfc051c8:	8d020000 	lw	v0,0(t0)
bfc051cc:	8ca40000 	lw	a0,0(a1)
bfc051d0:	8c850000 	lw	a1,0(a0)
bfc051d4:	8ca60000 	lw	a2,0(a1)
bfc051d8:	1443016a 	bne	v0,v1,bfc05784 <inst_error>
bfc051dc:	00000000 	nop
/home/csy/func/inst/n63_sb.S:104
bfc051e0:	3c0ac47f 	lui	t2,0xc47f
bfc051e4:	354a87c8 	ori	t2,t2,0x87c8
bfc051e8:	3c09b57c 	lui	t1,0xb57c
bfc051ec:	3529c36c 	ori	t1,t1,0xc36c
bfc051f0:	3c08800d 	lui	t0,0x800d
bfc051f4:	3c03c47f 	lui	v1,0xc47f
bfc051f8:	3463876c 	ori	v1,v1,0x876c
bfc051fc:	ad0a0000 	sw	t2,0(t0)
bfc05200:	a1090000 	sb	t1,0(t0)
bfc05204:	25040004 	addiu	a0,t0,4
bfc05208:	2505fffc 	addiu	a1,t0,-4
bfc0520c:	ac840000 	sw	a0,0(a0)
bfc05210:	aca50000 	sw	a1,0(a1)
bfc05214:	8d020000 	lw	v0,0(t0)
bfc05218:	8ca40000 	lw	a0,0(a1)
bfc0521c:	8c850000 	lw	a1,0(a0)
bfc05220:	8ca60000 	lw	a2,0(a1)
bfc05224:	14430157 	bne	v0,v1,bfc05784 <inst_error>
bfc05228:	00000000 	nop
/home/csy/func/inst/n63_sb.S:105
bfc0522c:	3c0a4416 	lui	t2,0x4416
bfc05230:	354adbe6 	ori	t2,t2,0xdbe6
bfc05234:	3c09ea61 	lui	t1,0xea61
bfc05238:	352970e8 	ori	t1,t1,0x70e8
bfc0523c:	3c08800d 	lui	t0,0x800d
bfc05240:	3c034416 	lui	v1,0x4416
bfc05244:	3463dbe8 	ori	v1,v1,0xdbe8
bfc05248:	ad0a0000 	sw	t2,0(t0)
bfc0524c:	a1090000 	sb	t1,0(t0)
bfc05250:	25040004 	addiu	a0,t0,4
bfc05254:	2505fffc 	addiu	a1,t0,-4
bfc05258:	ac840000 	sw	a0,0(a0)
bfc0525c:	aca50000 	sw	a1,0(a1)
bfc05260:	8d020000 	lw	v0,0(t0)
bfc05264:	8ca40000 	lw	a0,0(a1)
bfc05268:	8c850000 	lw	a1,0(a0)
bfc0526c:	8ca60000 	lw	a2,0(a1)
bfc05270:	14430144 	bne	v0,v1,bfc05784 <inst_error>
bfc05274:	00000000 	nop
/home/csy/func/inst/n63_sb.S:106
bfc05278:	3c0aa6a8 	lui	t2,0xa6a8
bfc0527c:	354a2196 	ori	t2,t2,0x2196
bfc05280:	3c093fe8 	lui	t1,0x3fe8
bfc05284:	3529f8a2 	ori	t1,t1,0xf8a2
bfc05288:	3c08800d 	lui	t0,0x800d
bfc0528c:	3c03a6a8 	lui	v1,0xa6a8
bfc05290:	346321a2 	ori	v1,v1,0x21a2
bfc05294:	ad0a0000 	sw	t2,0(t0)
bfc05298:	a1090000 	sb	t1,0(t0)
bfc0529c:	25040004 	addiu	a0,t0,4
bfc052a0:	2505fffc 	addiu	a1,t0,-4
bfc052a4:	ac840000 	sw	a0,0(a0)
bfc052a8:	aca50000 	sw	a1,0(a1)
bfc052ac:	8d020000 	lw	v0,0(t0)
bfc052b0:	8ca40000 	lw	a0,0(a1)
bfc052b4:	8c850000 	lw	a1,0(a0)
bfc052b8:	8ca60000 	lw	a2,0(a1)
bfc052bc:	14430131 	bne	v0,v1,bfc05784 <inst_error>
bfc052c0:	00000000 	nop
/home/csy/func/inst/n63_sb.S:107
bfc052c4:	3c0a0971 	lui	t2,0x971
bfc052c8:	354af49e 	ori	t2,t2,0xf49e
bfc052cc:	3c09caed 	lui	t1,0xcaed
bfc052d0:	3529fd56 	ori	t1,t1,0xfd56
bfc052d4:	3c08800d 	lui	t0,0x800d
bfc052d8:	3c030956 	lui	v1,0x956
bfc052dc:	3463f49e 	ori	v1,v1,0xf49e
bfc052e0:	ad0a0000 	sw	t2,0(t0)
bfc052e4:	a1090002 	sb	t1,2(t0)
bfc052e8:	25040004 	addiu	a0,t0,4
bfc052ec:	2505fffc 	addiu	a1,t0,-4
bfc052f0:	ac840000 	sw	a0,0(a0)
bfc052f4:	aca50000 	sw	a1,0(a1)
bfc052f8:	8d020000 	lw	v0,0(t0)
bfc052fc:	8ca40000 	lw	a0,0(a1)
bfc05300:	8c850000 	lw	a1,0(a0)
bfc05304:	8ca60000 	lw	a2,0(a1)
bfc05308:	1443011e 	bne	v0,v1,bfc05784 <inst_error>
bfc0530c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:108
bfc05310:	3c0a06eb 	lui	t2,0x6eb
bfc05314:	354afb12 	ori	t2,t2,0xfb12
bfc05318:	3c09ee54 	lui	t1,0xee54
bfc0531c:	3529a808 	ori	t1,t1,0xa808
bfc05320:	3c08800d 	lui	t0,0x800d
bfc05324:	3c0306eb 	lui	v1,0x6eb
bfc05328:	34630812 	ori	v1,v1,0x812
bfc0532c:	ad0a0000 	sw	t2,0(t0)
bfc05330:	a1090001 	sb	t1,1(t0)
bfc05334:	25040004 	addiu	a0,t0,4
bfc05338:	2505fffc 	addiu	a1,t0,-4
bfc0533c:	ac840000 	sw	a0,0(a0)
bfc05340:	aca50000 	sw	a1,0(a1)
bfc05344:	8d020000 	lw	v0,0(t0)
bfc05348:	8ca40000 	lw	a0,0(a1)
bfc0534c:	8c850000 	lw	a1,0(a0)
bfc05350:	8ca60000 	lw	a2,0(a1)
bfc05354:	1443010b 	bne	v0,v1,bfc05784 <inst_error>
bfc05358:	00000000 	nop
/home/csy/func/inst/n63_sb.S:109
bfc0535c:	3c0acc67 	lui	t2,0xcc67
bfc05360:	354a595e 	ori	t2,t2,0x595e
bfc05364:	3c09c374 	lui	t1,0xc374
bfc05368:	35296cb0 	ori	t1,t1,0x6cb0
bfc0536c:	3c08800d 	lui	t0,0x800d
bfc05370:	3c03cc67 	lui	v1,0xcc67
bfc05374:	346359b0 	ori	v1,v1,0x59b0
bfc05378:	ad0a0000 	sw	t2,0(t0)
bfc0537c:	a1090000 	sb	t1,0(t0)
bfc05380:	25040004 	addiu	a0,t0,4
bfc05384:	2505fffc 	addiu	a1,t0,-4
bfc05388:	ac840000 	sw	a0,0(a0)
bfc0538c:	aca50000 	sw	a1,0(a1)
bfc05390:	8d020000 	lw	v0,0(t0)
bfc05394:	8ca40000 	lw	a0,0(a1)
bfc05398:	8c850000 	lw	a1,0(a0)
bfc0539c:	8ca60000 	lw	a2,0(a1)
bfc053a0:	144300f8 	bne	v0,v1,bfc05784 <inst_error>
bfc053a4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:110
bfc053a8:	3c0a3b4e 	lui	t2,0x3b4e
bfc053ac:	354a02ac 	ori	t2,t2,0x2ac
bfc053b0:	3c099486 	lui	t1,0x9486
bfc053b4:	35292c00 	ori	t1,t1,0x2c00
bfc053b8:	3c08800d 	lui	t0,0x800d
bfc053bc:	3c033b00 	lui	v1,0x3b00
bfc053c0:	346302ac 	ori	v1,v1,0x2ac
bfc053c4:	ad0a0000 	sw	t2,0(t0)
bfc053c8:	a1090002 	sb	t1,2(t0)
bfc053cc:	25040004 	addiu	a0,t0,4
bfc053d0:	2505fffc 	addiu	a1,t0,-4
bfc053d4:	ac840000 	sw	a0,0(a0)
bfc053d8:	aca50000 	sw	a1,0(a1)
bfc053dc:	8d020000 	lw	v0,0(t0)
bfc053e0:	8ca40000 	lw	a0,0(a1)
bfc053e4:	8c850000 	lw	a1,0(a0)
bfc053e8:	8ca60000 	lw	a2,0(a1)
bfc053ec:	144300e5 	bne	v0,v1,bfc05784 <inst_error>
bfc053f0:	00000000 	nop
/home/csy/func/inst/n63_sb.S:111
bfc053f4:	3c0ae21e 	lui	t2,0xe21e
bfc053f8:	354a9e40 	ori	t2,t2,0x9e40
bfc053fc:	3c0903ad 	lui	t1,0x3ad
bfc05400:	352975f4 	ori	t1,t1,0x75f4
bfc05404:	3c08800d 	lui	t0,0x800d
bfc05408:	3c03e21e 	lui	v1,0xe21e
bfc0540c:	34639ef4 	ori	v1,v1,0x9ef4
bfc05410:	ad0a0000 	sw	t2,0(t0)
bfc05414:	a1090000 	sb	t1,0(t0)
bfc05418:	25040004 	addiu	a0,t0,4
bfc0541c:	2505fffc 	addiu	a1,t0,-4
bfc05420:	ac840000 	sw	a0,0(a0)
bfc05424:	aca50000 	sw	a1,0(a1)
bfc05428:	8d020000 	lw	v0,0(t0)
bfc0542c:	8ca40000 	lw	a0,0(a1)
bfc05430:	8c850000 	lw	a1,0(a0)
bfc05434:	8ca60000 	lw	a2,0(a1)
bfc05438:	144300d2 	bne	v0,v1,bfc05784 <inst_error>
bfc0543c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:112
bfc05440:	3c0a2a4f 	lui	t2,0x2a4f
bfc05444:	354a1a28 	ori	t2,t2,0x1a28
bfc05448:	3c091a25 	lui	t1,0x1a25
bfc0544c:	35291802 	ori	t1,t1,0x1802
bfc05450:	3c08800d 	lui	t0,0x800d
bfc05454:	3c032a4f 	lui	v1,0x2a4f
bfc05458:	34631a02 	ori	v1,v1,0x1a02
bfc0545c:	ad0a0000 	sw	t2,0(t0)
bfc05460:	a1090000 	sb	t1,0(t0)
bfc05464:	25040004 	addiu	a0,t0,4
bfc05468:	2505fffc 	addiu	a1,t0,-4
bfc0546c:	ac840000 	sw	a0,0(a0)
bfc05470:	aca50000 	sw	a1,0(a1)
bfc05474:	8d020000 	lw	v0,0(t0)
bfc05478:	8ca40000 	lw	a0,0(a1)
bfc0547c:	8c850000 	lw	a1,0(a0)
bfc05480:	8ca60000 	lw	a2,0(a1)
bfc05484:	144300bf 	bne	v0,v1,bfc05784 <inst_error>
bfc05488:	00000000 	nop
/home/csy/func/inst/n63_sb.S:113
bfc0548c:	3c0a2de3 	lui	t2,0x2de3
bfc05490:	354ab624 	ori	t2,t2,0xb624
bfc05494:	3c09394a 	lui	t1,0x394a
bfc05498:	35296480 	ori	t1,t1,0x6480
bfc0549c:	3c08800d 	lui	t0,0x800d
bfc054a0:	3c032d80 	lui	v1,0x2d80
bfc054a4:	3463b624 	ori	v1,v1,0xb624
bfc054a8:	ad0a0000 	sw	t2,0(t0)
bfc054ac:	a1090002 	sb	t1,2(t0)
bfc054b0:	25040004 	addiu	a0,t0,4
bfc054b4:	2505fffc 	addiu	a1,t0,-4
bfc054b8:	ac840000 	sw	a0,0(a0)
bfc054bc:	aca50000 	sw	a1,0(a1)
bfc054c0:	8d020000 	lw	v0,0(t0)
bfc054c4:	8ca40000 	lw	a0,0(a1)
bfc054c8:	8c850000 	lw	a1,0(a0)
bfc054cc:	8ca60000 	lw	a2,0(a1)
bfc054d0:	144300ac 	bne	v0,v1,bfc05784 <inst_error>
bfc054d4:	00000000 	nop
/home/csy/func/inst/n63_sb.S:114
bfc054d8:	3c0a163a 	lui	t2,0x163a
bfc054dc:	354a9c0e 	ori	t2,t2,0x9c0e
bfc054e0:	3c099829 	lui	t1,0x9829
bfc054e4:	35295f3e 	ori	t1,t1,0x5f3e
bfc054e8:	3c08800d 	lui	t0,0x800d
bfc054ec:	3c03163a 	lui	v1,0x163a
bfc054f0:	34639c3e 	ori	v1,v1,0x9c3e
bfc054f4:	ad0a0000 	sw	t2,0(t0)
bfc054f8:	a1090000 	sb	t1,0(t0)
bfc054fc:	25040004 	addiu	a0,t0,4
bfc05500:	2505fffc 	addiu	a1,t0,-4
bfc05504:	ac840000 	sw	a0,0(a0)
bfc05508:	aca50000 	sw	a1,0(a1)
bfc0550c:	8d020000 	lw	v0,0(t0)
bfc05510:	8ca40000 	lw	a0,0(a1)
bfc05514:	8c850000 	lw	a1,0(a0)
bfc05518:	8ca60000 	lw	a2,0(a1)
bfc0551c:	14430099 	bne	v0,v1,bfc05784 <inst_error>
bfc05520:	00000000 	nop
/home/csy/func/inst/n63_sb.S:115
bfc05524:	3c0a4e95 	lui	t2,0x4e95
bfc05528:	354ab5e6 	ori	t2,t2,0xb5e6
bfc0552c:	3c09ab39 	lui	t1,0xab39
bfc05530:	3529a0f1 	ori	t1,t1,0xa0f1
bfc05534:	3c08800d 	lui	t0,0x800d
bfc05538:	3c03f195 	lui	v1,0xf195
bfc0553c:	3463b5e6 	ori	v1,v1,0xb5e6
bfc05540:	ad0a0000 	sw	t2,0(t0)
bfc05544:	a1090003 	sb	t1,3(t0)
bfc05548:	25040004 	addiu	a0,t0,4
bfc0554c:	2505fffc 	addiu	a1,t0,-4
bfc05550:	ac840000 	sw	a0,0(a0)
bfc05554:	aca50000 	sw	a1,0(a1)
bfc05558:	8d020000 	lw	v0,0(t0)
bfc0555c:	8ca40000 	lw	a0,0(a1)
bfc05560:	8c850000 	lw	a1,0(a0)
bfc05564:	8ca60000 	lw	a2,0(a1)
bfc05568:	14430086 	bne	v0,v1,bfc05784 <inst_error>
bfc0556c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:116
bfc05570:	3c0a72a0 	lui	t2,0x72a0
bfc05574:	354a13f3 	ori	t2,t2,0x13f3
bfc05578:	3c09920b 	lui	t1,0x920b
bfc0557c:	35296b7c 	ori	t1,t1,0x6b7c
bfc05580:	3c08800d 	lui	t0,0x800d
bfc05584:	3c037ca0 	lui	v1,0x7ca0
bfc05588:	346313f3 	ori	v1,v1,0x13f3
bfc0558c:	ad0a0000 	sw	t2,0(t0)
bfc05590:	a1090003 	sb	t1,3(t0)
bfc05594:	25040004 	addiu	a0,t0,4
bfc05598:	2505fffc 	addiu	a1,t0,-4
bfc0559c:	ac840000 	sw	a0,0(a0)
bfc055a0:	aca50000 	sw	a1,0(a1)
bfc055a4:	8d020000 	lw	v0,0(t0)
bfc055a8:	8ca40000 	lw	a0,0(a1)
bfc055ac:	8c850000 	lw	a1,0(a0)
bfc055b0:	8ca60000 	lw	a2,0(a1)
bfc055b4:	14430073 	bne	v0,v1,bfc05784 <inst_error>
bfc055b8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:117
bfc055bc:	3c0a5ff7 	lui	t2,0x5ff7
bfc055c0:	354a8063 	ori	t2,t2,0x8063
bfc055c4:	3c09b3be 	lui	t1,0xb3be
bfc055c8:	352948f8 	ori	t1,t1,0x48f8
bfc055cc:	3c08800d 	lui	t0,0x800d
bfc055d0:	3c03f8f7 	lui	v1,0xf8f7
bfc055d4:	34638063 	ori	v1,v1,0x8063
bfc055d8:	ad0a0000 	sw	t2,0(t0)
bfc055dc:	a1090003 	sb	t1,3(t0)
bfc055e0:	25040004 	addiu	a0,t0,4
bfc055e4:	2505fffc 	addiu	a1,t0,-4
bfc055e8:	ac840000 	sw	a0,0(a0)
bfc055ec:	aca50000 	sw	a1,0(a1)
bfc055f0:	8d020000 	lw	v0,0(t0)
bfc055f4:	8ca40000 	lw	a0,0(a1)
bfc055f8:	8c850000 	lw	a1,0(a0)
bfc055fc:	8ca60000 	lw	a2,0(a1)
bfc05600:	14430060 	bne	v0,v1,bfc05784 <inst_error>
bfc05604:	00000000 	nop
/home/csy/func/inst/n63_sb.S:118
bfc05608:	3c0a857c 	lui	t2,0x857c
bfc0560c:	354a8744 	ori	t2,t2,0x8744
bfc05610:	3c09bd04 	lui	t1,0xbd04
bfc05614:	35296514 	ori	t1,t1,0x6514
bfc05618:	3c08800d 	lui	t0,0x800d
bfc0561c:	3c03857c 	lui	v1,0x857c
bfc05620:	34638714 	ori	v1,v1,0x8714
bfc05624:	ad0a0000 	sw	t2,0(t0)
bfc05628:	a1090000 	sb	t1,0(t0)
bfc0562c:	25040004 	addiu	a0,t0,4
bfc05630:	2505fffc 	addiu	a1,t0,-4
bfc05634:	ac840000 	sw	a0,0(a0)
bfc05638:	aca50000 	sw	a1,0(a1)
bfc0563c:	8d020000 	lw	v0,0(t0)
bfc05640:	8ca40000 	lw	a0,0(a1)
bfc05644:	8c850000 	lw	a1,0(a0)
bfc05648:	8ca60000 	lw	a2,0(a1)
bfc0564c:	1443004d 	bne	v0,v1,bfc05784 <inst_error>
bfc05650:	00000000 	nop
/home/csy/func/inst/n63_sb.S:119
bfc05654:	3c0a387f 	lui	t2,0x387f
bfc05658:	354adade 	ori	t2,t2,0xdade
bfc0565c:	3c09542f 	lui	t1,0x542f
bfc05660:	352967c0 	ori	t1,t1,0x67c0
bfc05664:	3c08800d 	lui	t0,0x800d
bfc05668:	3c03387f 	lui	v1,0x387f
bfc0566c:	3463c0de 	ori	v1,v1,0xc0de
bfc05670:	ad0a0000 	sw	t2,0(t0)
bfc05674:	a1090001 	sb	t1,1(t0)
bfc05678:	25040004 	addiu	a0,t0,4
bfc0567c:	2505fffc 	addiu	a1,t0,-4
bfc05680:	ac840000 	sw	a0,0(a0)
bfc05684:	aca50000 	sw	a1,0(a1)
bfc05688:	8d020000 	lw	v0,0(t0)
bfc0568c:	8ca40000 	lw	a0,0(a1)
bfc05690:	8c850000 	lw	a1,0(a0)
bfc05694:	8ca60000 	lw	a2,0(a1)
bfc05698:	1443003a 	bne	v0,v1,bfc05784 <inst_error>
bfc0569c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:120
bfc056a0:	3c0af96b 	lui	t2,0xf96b
bfc056a4:	354a1db0 	ori	t2,t2,0x1db0
bfc056a8:	3c09c78f 	lui	t1,0xc78f
bfc056ac:	3529ac20 	ori	t1,t1,0xac20
bfc056b0:	3c08800d 	lui	t0,0x800d
bfc056b4:	3c03f96b 	lui	v1,0xf96b
bfc056b8:	346320b0 	ori	v1,v1,0x20b0
bfc056bc:	ad0a0000 	sw	t2,0(t0)
bfc056c0:	a1090001 	sb	t1,1(t0)
bfc056c4:	25040004 	addiu	a0,t0,4
bfc056c8:	2505fffc 	addiu	a1,t0,-4
bfc056cc:	ac840000 	sw	a0,0(a0)
bfc056d0:	aca50000 	sw	a1,0(a1)
bfc056d4:	8d020000 	lw	v0,0(t0)
bfc056d8:	8ca40000 	lw	a0,0(a1)
bfc056dc:	8c850000 	lw	a1,0(a0)
bfc056e0:	8ca60000 	lw	a2,0(a1)
bfc056e4:	14430027 	bne	v0,v1,bfc05784 <inst_error>
bfc056e8:	00000000 	nop
/home/csy/func/inst/n63_sb.S:121
bfc056ec:	3c0ada28 	lui	t2,0xda28
bfc056f0:	354a716c 	ori	t2,t2,0x716c
bfc056f4:	3c096e6d 	lui	t1,0x6e6d
bfc056f8:	352940e0 	ori	t1,t1,0x40e0
bfc056fc:	3c08800d 	lui	t0,0x800d
bfc05700:	3c03da28 	lui	v1,0xda28
bfc05704:	346371e0 	ori	v1,v1,0x71e0
bfc05708:	ad0a0000 	sw	t2,0(t0)
bfc0570c:	a1090000 	sb	t1,0(t0)
bfc05710:	25040004 	addiu	a0,t0,4
bfc05714:	2505fffc 	addiu	a1,t0,-4
bfc05718:	ac840000 	sw	a0,0(a0)
bfc0571c:	aca50000 	sw	a1,0(a1)
bfc05720:	8d020000 	lw	v0,0(t0)
bfc05724:	8ca40000 	lw	a0,0(a1)
bfc05728:	8c850000 	lw	a1,0(a0)
bfc0572c:	8ca60000 	lw	a2,0(a1)
bfc05730:	14430014 	bne	v0,v1,bfc05784 <inst_error>
bfc05734:	00000000 	nop
/home/csy/func/inst/n63_sb.S:122
bfc05738:	240a0000 	li	t2,0
bfc0573c:	24090000 	li	t1,0
bfc05740:	3c08800d 	lui	t0,0x800d
bfc05744:	24030000 	li	v1,0
bfc05748:	ad0a0000 	sw	t2,0(t0)
bfc0574c:	a1090000 	sb	t1,0(t0)
bfc05750:	25040004 	addiu	a0,t0,4
bfc05754:	2505fffc 	addiu	a1,t0,-4
bfc05758:	ac840000 	sw	a0,0(a0)
bfc0575c:	aca50000 	sw	a1,0(a1)
bfc05760:	8d020000 	lw	v0,0(t0)
bfc05764:	8ca40000 	lw	a0,0(a1)
bfc05768:	8c850000 	lw	a1,0(a0)
bfc0576c:	8ca60000 	lw	a2,0(a1)
bfc05770:	14430004 	bne	v0,v1,bfc05784 <inst_error>
bfc05774:	00000000 	nop
/home/csy/func/inst/n63_sb.S:124
bfc05778:	16400002 	bnez	s2,bfc05784 <inst_error>
/home/csy/func/inst/n63_sb.S:125
bfc0577c:	00000000 	nop
/home/csy/func/inst/n63_sb.S:127
bfc05780:	26730001 	addiu	s3,s3,1

bfc05784 <inst_error>:
/home/csy/func/inst/n63_sb.S:130
bfc05784:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n63_sb.S:131
bfc05788:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n63_sb.S:132
bfc0578c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n63_sb.S:133
bfc05790:	03e00008 	jr	ra
/home/csy/func/inst/n63_sb.S:134
bfc05794:	00000000 	nop
	...

bfc057a0 <n59_lb_test>:
/home/csy/func/inst/n59_lb.S:7
bfc057a0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n59_lb.S:8
bfc057a4:	24120000 	li	s2,0
/home/csy/func/inst/n59_lb.S:10
bfc057a8:	3c09c83b 	lui	t1,0xc83b
bfc057ac:	35290be0 	ori	t1,t1,0xbe0
bfc057b0:	3c08800d 	lui	t0,0x800d
bfc057b4:	35086760 	ori	t0,t0,0x6760
bfc057b8:	2403000b 	li	v1,11
bfc057bc:	ad0937a0 	sw	t1,14240(t0)
bfc057c0:	25040004 	addiu	a0,t0,4
bfc057c4:	2505fff8 	addiu	a1,t0,-8
bfc057c8:	ac8437a0 	sw	a0,14240(a0)
bfc057cc:	aca537a0 	sw	a1,14240(a1)
bfc057d0:	810237a1 	lb	v0,14241(t0)
bfc057d4:	8c8537a0 	lw	a1,14240(a0)
bfc057d8:	8ca437a0 	lw	a0,14240(a1)
bfc057dc:	8ca637a0 	lw	a2,14240(a1)
bfc057e0:	144308d5 	bne	v0,v1,bfc07b38 <inst_error>
bfc057e4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:11
bfc057e8:	3c091eec 	lui	t1,0x1eec
bfc057ec:	3529280c 	ori	t1,t1,0x280c
bfc057f0:	3c08800d 	lui	t0,0x800d
bfc057f4:	35084598 	ori	t0,t0,0x4598
bfc057f8:	2403000c 	li	v1,12
bfc057fc:	3c010001 	lui	at,0x1
bfc05800:	00280821 	addu	at,at,t0
bfc05804:	ac29980c 	sw	t1,-26612(at)
bfc05808:	25040004 	addiu	a0,t0,4
bfc0580c:	2505fff8 	addiu	a1,t0,-8
bfc05810:	3c010001 	lui	at,0x1
bfc05814:	00240821 	addu	at,at,a0
bfc05818:	ac24980c 	sw	a0,-26612(at)
bfc0581c:	3c010001 	lui	at,0x1
bfc05820:	00250821 	addu	at,at,a1
bfc05824:	ac25980c 	sw	a1,-26612(at)
bfc05828:	3c020001 	lui	v0,0x1
bfc0582c:	00481021 	addu	v0,v0,t0
bfc05830:	8042980c 	lb	v0,-26612(v0)
bfc05834:	3c050001 	lui	a1,0x1
bfc05838:	00a42821 	addu	a1,a1,a0
bfc0583c:	8ca5980c 	lw	a1,-26612(a1)
bfc05840:	3c040001 	lui	a0,0x1
bfc05844:	00852021 	addu	a0,a0,a1
bfc05848:	8c84980c 	lw	a0,-26612(a0)
bfc0584c:	3c060001 	lui	a2,0x1
bfc05850:	00c53021 	addu	a2,a2,a1
bfc05854:	8cc6980c 	lw	a2,-26612(a2)
bfc05858:	144308b7 	bne	v0,v1,bfc07b38 <inst_error>
bfc0585c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:12
bfc05860:	3c09a0af 	lui	t1,0xa0af
bfc05864:	3529ed52 	ori	t1,t1,0xed52
bfc05868:	3c08800d 	lui	t0,0x800d
bfc0586c:	35084590 	ori	t0,t0,0x4590
bfc05870:	2403ffaf 	li	v1,-81
bfc05874:	3c010001 	lui	at,0x1
bfc05878:	00280821 	addu	at,at,t0
bfc0587c:	ac298a80 	sw	t1,-30080(at)
bfc05880:	25040004 	addiu	a0,t0,4
bfc05884:	2505fff8 	addiu	a1,t0,-8
bfc05888:	3c010001 	lui	at,0x1
bfc0588c:	00240821 	addu	at,at,a0
bfc05890:	ac248a80 	sw	a0,-30080(at)
bfc05894:	3c010001 	lui	at,0x1
bfc05898:	00250821 	addu	at,at,a1
bfc0589c:	ac258a80 	sw	a1,-30080(at)
bfc058a0:	3c020001 	lui	v0,0x1
bfc058a4:	00481021 	addu	v0,v0,t0
bfc058a8:	80428a82 	lb	v0,-30078(v0)
bfc058ac:	3c050001 	lui	a1,0x1
bfc058b0:	00a42821 	addu	a1,a1,a0
bfc058b4:	8ca58a80 	lw	a1,-30080(a1)
bfc058b8:	3c040001 	lui	a0,0x1
bfc058bc:	00852021 	addu	a0,a0,a1
bfc058c0:	8c848a80 	lw	a0,-30080(a0)
bfc058c4:	3c060001 	lui	a2,0x1
bfc058c8:	00c53021 	addu	a2,a2,a1
bfc058cc:	8cc68a80 	lw	a2,-30080(a2)
bfc058d0:	14430899 	bne	v0,v1,bfc07b38 <inst_error>
bfc058d4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:13
bfc058d8:	3c091eb6 	lui	t1,0x1eb6
bfc058dc:	352937c7 	ori	t1,t1,0x37c7
bfc058e0:	3c08800d 	lui	t0,0x800d
bfc058e4:	3508165c 	ori	t0,t0,0x165c
bfc058e8:	2403ffb6 	li	v1,-74
bfc058ec:	ad096a98 	sw	t1,27288(t0)
bfc058f0:	25040004 	addiu	a0,t0,4
bfc058f4:	2505fff8 	addiu	a1,t0,-8
bfc058f8:	ac846a98 	sw	a0,27288(a0)
bfc058fc:	aca56a98 	sw	a1,27288(a1)
bfc05900:	81026a9a 	lb	v0,27290(t0)
bfc05904:	8c856a98 	lw	a1,27288(a0)
bfc05908:	8ca46a98 	lw	a0,27288(a1)
bfc0590c:	8ca66a98 	lw	a2,27288(a1)
bfc05910:	14430889 	bne	v0,v1,bfc07b38 <inst_error>
bfc05914:	00000000 	nop
/home/csy/func/inst/n59_lb.S:14
bfc05918:	3c098541 	lui	t1,0x8541
bfc0591c:	35295fbc 	ori	t1,t1,0x5fbc
bfc05920:	3c08800d 	lui	t0,0x800d
bfc05924:	35081430 	ori	t0,t0,0x1430
bfc05928:	2403ffbc 	li	v1,-68
bfc0592c:	ad095e48 	sw	t1,24136(t0)
bfc05930:	25040004 	addiu	a0,t0,4
bfc05934:	2505fff8 	addiu	a1,t0,-8
bfc05938:	ac845e48 	sw	a0,24136(a0)
bfc0593c:	aca55e48 	sw	a1,24136(a1)
bfc05940:	81025e48 	lb	v0,24136(t0)
bfc05944:	8c855e48 	lw	a1,24136(a0)
bfc05948:	8ca45e48 	lw	a0,24136(a1)
bfc0594c:	8ca65e48 	lw	a2,24136(a1)
bfc05950:	14430879 	bne	v0,v1,bfc07b38 <inst_error>
bfc05954:	00000000 	nop
/home/csy/func/inst/n59_lb.S:15
bfc05958:	3c09499d 	lui	t1,0x499d
bfc0595c:	35297dd4 	ori	t1,t1,0x7dd4
bfc05960:	3c08800d 	lui	t0,0x800d
bfc05964:	35084974 	ori	t0,t0,0x4974
bfc05968:	2403ffd4 	li	v1,-44
bfc0596c:	ad090edc 	sw	t1,3804(t0)
bfc05970:	25040004 	addiu	a0,t0,4
bfc05974:	2505fff8 	addiu	a1,t0,-8
bfc05978:	ac840edc 	sw	a0,3804(a0)
bfc0597c:	aca50edc 	sw	a1,3804(a1)
bfc05980:	81020edc 	lb	v0,3804(t0)
bfc05984:	8c850edc 	lw	a1,3804(a0)
bfc05988:	8ca40edc 	lw	a0,3804(a1)
bfc0598c:	8ca60edc 	lw	a2,3804(a1)
bfc05990:	14430869 	bne	v0,v1,bfc07b38 <inst_error>
bfc05994:	00000000 	nop
/home/csy/func/inst/n59_lb.S:16
bfc05998:	3c09c6e3 	lui	t1,0xc6e3
bfc0599c:	35291856 	ori	t1,t1,0x1856
bfc059a0:	3c08800d 	lui	t0,0x800d
bfc059a4:	3508d704 	ori	t0,t0,0xd704
bfc059a8:	24030056 	li	v1,86
bfc059ac:	ad091e9c 	sw	t1,7836(t0)
bfc059b0:	25040004 	addiu	a0,t0,4
bfc059b4:	2505fff8 	addiu	a1,t0,-8
bfc059b8:	ac841e9c 	sw	a0,7836(a0)
bfc059bc:	aca51e9c 	sw	a1,7836(a1)
bfc059c0:	81021e9c 	lb	v0,7836(t0)
bfc059c4:	8c851e9c 	lw	a1,7836(a0)
bfc059c8:	8ca41e9c 	lw	a0,7836(a1)
bfc059cc:	8ca61e9c 	lw	a2,7836(a1)
bfc059d0:	14430859 	bne	v0,v1,bfc07b38 <inst_error>
bfc059d4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:17
bfc059d8:	3c095ad9 	lui	t1,0x5ad9
bfc059dc:	35299018 	ori	t1,t1,0x9018
bfc059e0:	3c08800d 	lui	t0,0x800d
bfc059e4:	350868f0 	ori	t0,t0,0x68f0
bfc059e8:	24030018 	li	v1,24
bfc059ec:	ad097ba4 	sw	t1,31652(t0)
bfc059f0:	25040004 	addiu	a0,t0,4
bfc059f4:	2505fff8 	addiu	a1,t0,-8
bfc059f8:	ac847ba4 	sw	a0,31652(a0)
bfc059fc:	aca57ba4 	sw	a1,31652(a1)
bfc05a00:	81027ba4 	lb	v0,31652(t0)
bfc05a04:	8c857ba4 	lw	a1,31652(a0)
bfc05a08:	8ca47ba4 	lw	a0,31652(a1)
bfc05a0c:	8ca67ba4 	lw	a2,31652(a1)
bfc05a10:	14430849 	bne	v0,v1,bfc07b38 <inst_error>
bfc05a14:	00000000 	nop
/home/csy/func/inst/n59_lb.S:18
bfc05a18:	3c094404 	lui	t1,0x4404
bfc05a1c:	352911ac 	ori	t1,t1,0x11ac
bfc05a20:	3c08800d 	lui	t0,0x800d
bfc05a24:	350874e8 	ori	t0,t0,0x74e8
bfc05a28:	2403ffac 	li	v1,-84
bfc05a2c:	ad092240 	sw	t1,8768(t0)
bfc05a30:	25040004 	addiu	a0,t0,4
bfc05a34:	2505fff8 	addiu	a1,t0,-8
bfc05a38:	ac842240 	sw	a0,8768(a0)
bfc05a3c:	aca52240 	sw	a1,8768(a1)
bfc05a40:	81022240 	lb	v0,8768(t0)
bfc05a44:	8c852240 	lw	a1,8768(a0)
bfc05a48:	8ca42240 	lw	a0,8768(a1)
bfc05a4c:	8ca62240 	lw	a2,8768(a1)
bfc05a50:	14430839 	bne	v0,v1,bfc07b38 <inst_error>
bfc05a54:	00000000 	nop
/home/csy/func/inst/n59_lb.S:19
bfc05a58:	3c09e556 	lui	t1,0xe556
bfc05a5c:	35297fd6 	ori	t1,t1,0x7fd6
bfc05a60:	3c08800d 	lui	t0,0x800d
bfc05a64:	35085f60 	ori	t0,t0,0x5f60
bfc05a68:	2403ffd6 	li	v1,-42
bfc05a6c:	3c010001 	lui	at,0x1
bfc05a70:	00280821 	addu	at,at,t0
bfc05a74:	ac299418 	sw	t1,-27624(at)
bfc05a78:	25040004 	addiu	a0,t0,4
bfc05a7c:	2505fff8 	addiu	a1,t0,-8
bfc05a80:	3c010001 	lui	at,0x1
bfc05a84:	00240821 	addu	at,at,a0
bfc05a88:	ac249418 	sw	a0,-27624(at)
bfc05a8c:	3c010001 	lui	at,0x1
bfc05a90:	00250821 	addu	at,at,a1
bfc05a94:	ac259418 	sw	a1,-27624(at)
bfc05a98:	3c020001 	lui	v0,0x1
bfc05a9c:	00481021 	addu	v0,v0,t0
bfc05aa0:	80429418 	lb	v0,-27624(v0)
bfc05aa4:	3c050001 	lui	a1,0x1
bfc05aa8:	00a42821 	addu	a1,a1,a0
bfc05aac:	8ca59418 	lw	a1,-27624(a1)
bfc05ab0:	3c040001 	lui	a0,0x1
bfc05ab4:	00852021 	addu	a0,a0,a1
bfc05ab8:	8c849418 	lw	a0,-27624(a0)
bfc05abc:	3c060001 	lui	a2,0x1
bfc05ac0:	00c53021 	addu	a2,a2,a1
bfc05ac4:	8cc69418 	lw	a2,-27624(a2)
bfc05ac8:	1443081b 	bne	v0,v1,bfc07b38 <inst_error>
bfc05acc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:20
bfc05ad0:	3c092ede 	lui	t1,0x2ede
bfc05ad4:	35298ae6 	ori	t1,t1,0x8ae6
bfc05ad8:	3c08800d 	lui	t0,0x800d
bfc05adc:	35083bdc 	ori	t0,t0,0x3bdc
bfc05ae0:	2403ff8a 	li	v1,-118
bfc05ae4:	ad097c2c 	sw	t1,31788(t0)
bfc05ae8:	25040004 	addiu	a0,t0,4
bfc05aec:	2505fff8 	addiu	a1,t0,-8
bfc05af0:	ac847c2c 	sw	a0,31788(a0)
bfc05af4:	aca57c2c 	sw	a1,31788(a1)
bfc05af8:	81027c2d 	lb	v0,31789(t0)
bfc05afc:	8c857c2c 	lw	a1,31788(a0)
bfc05b00:	8ca47c2c 	lw	a0,31788(a1)
bfc05b04:	8ca67c2c 	lw	a2,31788(a1)
bfc05b08:	1443080b 	bne	v0,v1,bfc07b38 <inst_error>
bfc05b0c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:21
bfc05b10:	3c096488 	lui	t1,0x6488
bfc05b14:	35291a10 	ori	t1,t1,0x1a10
bfc05b18:	3c08800d 	lui	t0,0x800d
bfc05b1c:	3508cd7c 	ori	t0,t0,0xcd7c
bfc05b20:	2403ff88 	li	v1,-120
bfc05b24:	ad090484 	sw	t1,1156(t0)
bfc05b28:	25040004 	addiu	a0,t0,4
bfc05b2c:	2505fff8 	addiu	a1,t0,-8
bfc05b30:	ac840484 	sw	a0,1156(a0)
bfc05b34:	aca50484 	sw	a1,1156(a1)
bfc05b38:	81020486 	lb	v0,1158(t0)
bfc05b3c:	8c850484 	lw	a1,1156(a0)
bfc05b40:	8ca40484 	lw	a0,1156(a1)
bfc05b44:	8ca60484 	lw	a2,1156(a1)
bfc05b48:	144307fb 	bne	v0,v1,bfc07b38 <inst_error>
bfc05b4c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:22
bfc05b50:	3c0948fc 	lui	t1,0x48fc
bfc05b54:	35293566 	ori	t1,t1,0x3566
bfc05b58:	3c08800d 	lui	t0,0x800d
bfc05b5c:	350859f4 	ori	t0,t0,0x59f4
bfc05b60:	2403fffc 	li	v1,-4
bfc05b64:	ad095c50 	sw	t1,23632(t0)
bfc05b68:	25040004 	addiu	a0,t0,4
bfc05b6c:	2505fff8 	addiu	a1,t0,-8
bfc05b70:	ac845c50 	sw	a0,23632(a0)
bfc05b74:	aca55c50 	sw	a1,23632(a1)
bfc05b78:	81025c52 	lb	v0,23634(t0)
bfc05b7c:	8c855c50 	lw	a1,23632(a0)
bfc05b80:	8ca45c50 	lw	a0,23632(a1)
bfc05b84:	8ca65c50 	lw	a2,23632(a1)
bfc05b88:	144307eb 	bne	v0,v1,bfc07b38 <inst_error>
bfc05b8c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:23
bfc05b90:	3c09d933 	lui	t1,0xd933
bfc05b94:	35294400 	ori	t1,t1,0x4400
bfc05b98:	3c08800d 	lui	t0,0x800d
bfc05b9c:	35086648 	ori	t0,t0,0x6648
bfc05ba0:	24030000 	li	v1,0
bfc05ba4:	ad097054 	sw	t1,28756(t0)
bfc05ba8:	25040004 	addiu	a0,t0,4
bfc05bac:	2505fff8 	addiu	a1,t0,-8
bfc05bb0:	ac847054 	sw	a0,28756(a0)
bfc05bb4:	aca57054 	sw	a1,28756(a1)
bfc05bb8:	81027054 	lb	v0,28756(t0)
bfc05bbc:	8c857054 	lw	a1,28756(a0)
bfc05bc0:	8ca47054 	lw	a0,28756(a1)
bfc05bc4:	8ca67054 	lw	a2,28756(a1)
bfc05bc8:	144307db 	bne	v0,v1,bfc07b38 <inst_error>
bfc05bcc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:24
bfc05bd0:	3c09751c 	lui	t1,0x751c
bfc05bd4:	35296a16 	ori	t1,t1,0x6a16
bfc05bd8:	3c08800d 	lui	t0,0x800d
bfc05bdc:	3508278c 	ori	t0,t0,0x278c
bfc05be0:	2403006a 	li	v1,106
bfc05be4:	ad097124 	sw	t1,28964(t0)
bfc05be8:	25040004 	addiu	a0,t0,4
bfc05bec:	2505fff8 	addiu	a1,t0,-8
bfc05bf0:	ac847124 	sw	a0,28964(a0)
bfc05bf4:	aca57124 	sw	a1,28964(a1)
bfc05bf8:	81027125 	lb	v0,28965(t0)
bfc05bfc:	8c857124 	lw	a1,28964(a0)
bfc05c00:	8ca47124 	lw	a0,28964(a1)
bfc05c04:	8ca67124 	lw	a2,28964(a1)
bfc05c08:	144307cb 	bne	v0,v1,bfc07b38 <inst_error>
bfc05c0c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:25
bfc05c10:	3c0959ea 	lui	t1,0x59ea
bfc05c14:	35296680 	ori	t1,t1,0x6680
bfc05c18:	3c08800d 	lui	t0,0x800d
bfc05c1c:	35089b48 	ori	t0,t0,0x9b48
bfc05c20:	2403ffea 	li	v1,-22
bfc05c24:	ad090f40 	sw	t1,3904(t0)
bfc05c28:	25040004 	addiu	a0,t0,4
bfc05c2c:	2505fff8 	addiu	a1,t0,-8
bfc05c30:	ac840f40 	sw	a0,3904(a0)
bfc05c34:	aca50f40 	sw	a1,3904(a1)
bfc05c38:	81020f42 	lb	v0,3906(t0)
bfc05c3c:	8c850f40 	lw	a1,3904(a0)
bfc05c40:	8ca40f40 	lw	a0,3904(a1)
bfc05c44:	8ca60f40 	lw	a2,3904(a1)
bfc05c48:	144307bb 	bne	v0,v1,bfc07b38 <inst_error>
bfc05c4c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:26
bfc05c50:	3c09fb87 	lui	t1,0xfb87
bfc05c54:	3529edd4 	ori	t1,t1,0xedd4
bfc05c58:	3c08800d 	lui	t0,0x800d
bfc05c5c:	35083f18 	ori	t0,t0,0x3f18
bfc05c60:	2403ffd4 	li	v1,-44
bfc05c64:	ad092f00 	sw	t1,12032(t0)
bfc05c68:	25040004 	addiu	a0,t0,4
bfc05c6c:	2505fff8 	addiu	a1,t0,-8
bfc05c70:	ac842f00 	sw	a0,12032(a0)
bfc05c74:	aca52f00 	sw	a1,12032(a1)
bfc05c78:	81022f00 	lb	v0,12032(t0)
bfc05c7c:	8c852f00 	lw	a1,12032(a0)
bfc05c80:	8ca42f00 	lw	a0,12032(a1)
bfc05c84:	8ca62f00 	lw	a2,12032(a1)
bfc05c88:	144307ab 	bne	v0,v1,bfc07b38 <inst_error>
bfc05c8c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:27
bfc05c90:	3c09dca5 	lui	t1,0xdca5
bfc05c94:	35292840 	ori	t1,t1,0x2840
bfc05c98:	3c08800d 	lui	t0,0x800d
bfc05c9c:	35083960 	ori	t0,t0,0x3960
bfc05ca0:	24030040 	li	v1,64
bfc05ca4:	ad092efc 	sw	t1,12028(t0)
bfc05ca8:	25040004 	addiu	a0,t0,4
bfc05cac:	2505fff8 	addiu	a1,t0,-8
bfc05cb0:	ac842efc 	sw	a0,12028(a0)
bfc05cb4:	aca52efc 	sw	a1,12028(a1)
bfc05cb8:	81022efc 	lb	v0,12028(t0)
bfc05cbc:	8c852efc 	lw	a1,12028(a0)
bfc05cc0:	8ca42efc 	lw	a0,12028(a1)
bfc05cc4:	8ca62efc 	lw	a2,12028(a1)
bfc05cc8:	1443079b 	bne	v0,v1,bfc07b38 <inst_error>
bfc05ccc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:28
bfc05cd0:	3c094cdd 	lui	t1,0x4cdd
bfc05cd4:	352943c8 	ori	t1,t1,0x43c8
bfc05cd8:	3c08800d 	lui	t0,0x800d
bfc05cdc:	3508a6e0 	ori	t0,t0,0xa6e0
bfc05ce0:	2403ffc8 	li	v1,-56
bfc05ce4:	ad09213c 	sw	t1,8508(t0)
bfc05ce8:	25040004 	addiu	a0,t0,4
bfc05cec:	2505fff8 	addiu	a1,t0,-8
bfc05cf0:	ac84213c 	sw	a0,8508(a0)
bfc05cf4:	aca5213c 	sw	a1,8508(a1)
bfc05cf8:	8102213c 	lb	v0,8508(t0)
bfc05cfc:	8c85213c 	lw	a1,8508(a0)
bfc05d00:	8ca4213c 	lw	a0,8508(a1)
bfc05d04:	8ca6213c 	lw	a2,8508(a1)
bfc05d08:	1443078b 	bne	v0,v1,bfc07b38 <inst_error>
bfc05d0c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:29
bfc05d10:	3c096d3d 	lui	t1,0x6d3d
bfc05d14:	3529ceb8 	ori	t1,t1,0xceb8
bfc05d18:	3c08800d 	lui	t0,0x800d
bfc05d1c:	35080c90 	ori	t0,t0,0xc90
bfc05d20:	2403ffb8 	li	v1,-72
bfc05d24:	ad090338 	sw	t1,824(t0)
bfc05d28:	25040004 	addiu	a0,t0,4
bfc05d2c:	2505fff8 	addiu	a1,t0,-8
bfc05d30:	ac840338 	sw	a0,824(a0)
bfc05d34:	aca50338 	sw	a1,824(a1)
bfc05d38:	81020338 	lb	v0,824(t0)
bfc05d3c:	8c850338 	lw	a1,824(a0)
bfc05d40:	8ca40338 	lw	a0,824(a1)
bfc05d44:	8ca60338 	lw	a2,824(a1)
bfc05d48:	1443077b 	bne	v0,v1,bfc07b38 <inst_error>
bfc05d4c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:30
bfc05d50:	3c09e838 	lui	t1,0xe838
bfc05d54:	352914f0 	ori	t1,t1,0x14f0
bfc05d58:	3c08800d 	lui	t0,0x800d
bfc05d5c:	350844e8 	ori	t0,t0,0x44e8
bfc05d60:	2403fff0 	li	v1,-16
bfc05d64:	ad092174 	sw	t1,8564(t0)
bfc05d68:	25040004 	addiu	a0,t0,4
bfc05d6c:	2505fff8 	addiu	a1,t0,-8
bfc05d70:	ac842174 	sw	a0,8564(a0)
bfc05d74:	aca52174 	sw	a1,8564(a1)
bfc05d78:	81022174 	lb	v0,8564(t0)
bfc05d7c:	8c852174 	lw	a1,8564(a0)
bfc05d80:	8ca42174 	lw	a0,8564(a1)
bfc05d84:	8ca62174 	lw	a2,8564(a1)
bfc05d88:	1443076b 	bne	v0,v1,bfc07b38 <inst_error>
bfc05d8c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:31
bfc05d90:	3c09bb62 	lui	t1,0xbb62
bfc05d94:	3529f9ba 	ori	t1,t1,0xf9ba
bfc05d98:	3c08800d 	lui	t0,0x800d
bfc05d9c:	35081408 	ori	t0,t0,0x1408
bfc05da0:	2403ffba 	li	v1,-70
bfc05da4:	ad093c40 	sw	t1,15424(t0)
bfc05da8:	25040004 	addiu	a0,t0,4
bfc05dac:	2505fff8 	addiu	a1,t0,-8
bfc05db0:	ac843c40 	sw	a0,15424(a0)
bfc05db4:	aca53c40 	sw	a1,15424(a1)
bfc05db8:	81023c40 	lb	v0,15424(t0)
bfc05dbc:	8c853c40 	lw	a1,15424(a0)
bfc05dc0:	8ca43c40 	lw	a0,15424(a1)
bfc05dc4:	8ca63c40 	lw	a2,15424(a1)
bfc05dc8:	1443075b 	bne	v0,v1,bfc07b38 <inst_error>
bfc05dcc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:32
bfc05dd0:	3c099eb5 	lui	t1,0x9eb5
bfc05dd4:	35292b80 	ori	t1,t1,0x2b80
bfc05dd8:	3c08800d 	lui	t0,0x800d
bfc05ddc:	3508d46c 	ori	t0,t0,0xd46c
bfc05de0:	2403ffb5 	li	v1,-75
bfc05de4:	ad0902ac 	sw	t1,684(t0)
bfc05de8:	25040004 	addiu	a0,t0,4
bfc05dec:	2505fff8 	addiu	a1,t0,-8
bfc05df0:	ac8402ac 	sw	a0,684(a0)
bfc05df4:	aca502ac 	sw	a1,684(a1)
bfc05df8:	810202ae 	lb	v0,686(t0)
bfc05dfc:	8c8502ac 	lw	a1,684(a0)
bfc05e00:	8ca402ac 	lw	a0,684(a1)
bfc05e04:	8ca602ac 	lw	a2,684(a1)
bfc05e08:	1443074b 	bne	v0,v1,bfc07b38 <inst_error>
bfc05e0c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:33
bfc05e10:	3c093fe8 	lui	t1,0x3fe8
bfc05e14:	35296b54 	ori	t1,t1,0x6b54
bfc05e18:	3c08800d 	lui	t0,0x800d
bfc05e1c:	35082424 	ori	t0,t0,0x2424
bfc05e20:	2403003f 	li	v1,63
bfc05e24:	3c010001 	lui	at,0x1
bfc05e28:	00280821 	addu	at,at,t0
bfc05e2c:	ac29a6f4 	sw	t1,-22796(at)
bfc05e30:	25040004 	addiu	a0,t0,4
bfc05e34:	2505fff8 	addiu	a1,t0,-8
bfc05e38:	3c010001 	lui	at,0x1
bfc05e3c:	00240821 	addu	at,at,a0
bfc05e40:	ac24a6f4 	sw	a0,-22796(at)
bfc05e44:	3c010001 	lui	at,0x1
bfc05e48:	00250821 	addu	at,at,a1
bfc05e4c:	ac25a6f4 	sw	a1,-22796(at)
bfc05e50:	3c020001 	lui	v0,0x1
bfc05e54:	00481021 	addu	v0,v0,t0
bfc05e58:	8042a6f7 	lb	v0,-22793(v0)
bfc05e5c:	3c050001 	lui	a1,0x1
bfc05e60:	00a42821 	addu	a1,a1,a0
bfc05e64:	8ca5a6f4 	lw	a1,-22796(a1)
bfc05e68:	3c040001 	lui	a0,0x1
bfc05e6c:	00852021 	addu	a0,a0,a1
bfc05e70:	8c84a6f4 	lw	a0,-22796(a0)
bfc05e74:	3c060001 	lui	a2,0x1
bfc05e78:	00c53021 	addu	a2,a2,a1
bfc05e7c:	8cc6a6f4 	lw	a2,-22796(a2)
bfc05e80:	1443072d 	bne	v0,v1,bfc07b38 <inst_error>
bfc05e84:	00000000 	nop
/home/csy/func/inst/n59_lb.S:34
bfc05e88:	3c09bbd2 	lui	t1,0xbbd2
bfc05e8c:	3529dc3c 	ori	t1,t1,0xdc3c
bfc05e90:	3c08800d 	lui	t0,0x800d
bfc05e94:	35084040 	ori	t0,t0,0x4040
bfc05e98:	2403003c 	li	v1,60
bfc05e9c:	ad097528 	sw	t1,29992(t0)
bfc05ea0:	25040004 	addiu	a0,t0,4
bfc05ea4:	2505fff8 	addiu	a1,t0,-8
bfc05ea8:	ac847528 	sw	a0,29992(a0)
bfc05eac:	aca57528 	sw	a1,29992(a1)
bfc05eb0:	81027528 	lb	v0,29992(t0)
bfc05eb4:	8c857528 	lw	a1,29992(a0)
bfc05eb8:	8ca47528 	lw	a0,29992(a1)
bfc05ebc:	8ca67528 	lw	a2,29992(a1)
bfc05ec0:	1443071d 	bne	v0,v1,bfc07b38 <inst_error>
bfc05ec4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:35
bfc05ec8:	3c09dc0d 	lui	t1,0xdc0d
bfc05ecc:	35299270 	ori	t1,t1,0x9270
bfc05ed0:	3c08800d 	lui	t0,0x800d
bfc05ed4:	35084e40 	ori	t0,t0,0x4e40
bfc05ed8:	24030070 	li	v1,112
bfc05edc:	ad096c98 	sw	t1,27800(t0)
bfc05ee0:	25040004 	addiu	a0,t0,4
bfc05ee4:	2505fff8 	addiu	a1,t0,-8
bfc05ee8:	ac846c98 	sw	a0,27800(a0)
bfc05eec:	aca56c98 	sw	a1,27800(a1)
bfc05ef0:	81026c98 	lb	v0,27800(t0)
bfc05ef4:	8c856c98 	lw	a1,27800(a0)
bfc05ef8:	8ca46c98 	lw	a0,27800(a1)
bfc05efc:	8ca66c98 	lw	a2,27800(a1)
bfc05f00:	1443070d 	bne	v0,v1,bfc07b38 <inst_error>
bfc05f04:	00000000 	nop
/home/csy/func/inst/n59_lb.S:36
bfc05f08:	3c09946b 	lui	t1,0x946b
bfc05f0c:	35299d00 	ori	t1,t1,0x9d00
bfc05f10:	3c08800d 	lui	t0,0x800d
bfc05f14:	35082ba8 	ori	t0,t0,0x2ba8
bfc05f18:	24030000 	li	v1,0
bfc05f1c:	3c010001 	lui	at,0x1
bfc05f20:	00280821 	addu	at,at,t0
bfc05f24:	ac298d40 	sw	t1,-29376(at)
bfc05f28:	25040004 	addiu	a0,t0,4
bfc05f2c:	2505fff8 	addiu	a1,t0,-8
bfc05f30:	3c010001 	lui	at,0x1
bfc05f34:	00240821 	addu	at,at,a0
bfc05f38:	ac248d40 	sw	a0,-29376(at)
bfc05f3c:	3c010001 	lui	at,0x1
bfc05f40:	00250821 	addu	at,at,a1
bfc05f44:	ac258d40 	sw	a1,-29376(at)
bfc05f48:	3c020001 	lui	v0,0x1
bfc05f4c:	00481021 	addu	v0,v0,t0
bfc05f50:	80428d40 	lb	v0,-29376(v0)
bfc05f54:	3c050001 	lui	a1,0x1
bfc05f58:	00a42821 	addu	a1,a1,a0
bfc05f5c:	8ca58d40 	lw	a1,-29376(a1)
bfc05f60:	3c040001 	lui	a0,0x1
bfc05f64:	00852021 	addu	a0,a0,a1
bfc05f68:	8c848d40 	lw	a0,-29376(a0)
bfc05f6c:	3c060001 	lui	a2,0x1
bfc05f70:	00c53021 	addu	a2,a2,a1
bfc05f74:	8cc68d40 	lw	a2,-29376(a2)
bfc05f78:	144306ef 	bne	v0,v1,bfc07b38 <inst_error>
bfc05f7c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:37
bfc05f80:	3c09be6d 	lui	t1,0xbe6d
bfc05f84:	35299734 	ori	t1,t1,0x9734
bfc05f88:	3c08800d 	lui	t0,0x800d
bfc05f8c:	3508a6d4 	ori	t0,t0,0xa6d4
bfc05f90:	24030034 	li	v1,52
bfc05f94:	ad0918f0 	sw	t1,6384(t0)
bfc05f98:	25040004 	addiu	a0,t0,4
bfc05f9c:	2505fff8 	addiu	a1,t0,-8
bfc05fa0:	ac8418f0 	sw	a0,6384(a0)
bfc05fa4:	aca518f0 	sw	a1,6384(a1)
bfc05fa8:	810218f0 	lb	v0,6384(t0)
bfc05fac:	8c8518f0 	lw	a1,6384(a0)
bfc05fb0:	8ca418f0 	lw	a0,6384(a1)
bfc05fb4:	8ca618f0 	lw	a2,6384(a1)
bfc05fb8:	144306df 	bne	v0,v1,bfc07b38 <inst_error>
bfc05fbc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:38
bfc05fc0:	3c0916e0 	lui	t1,0x16e0
bfc05fc4:	3529b3c0 	ori	t1,t1,0xb3c0
bfc05fc8:	3c08800d 	lui	t0,0x800d
bfc05fcc:	350880ac 	ori	t0,t0,0x80ac
bfc05fd0:	24030016 	li	v1,22
bfc05fd4:	ad096fe8 	sw	t1,28648(t0)
bfc05fd8:	25040004 	addiu	a0,t0,4
bfc05fdc:	2505fff8 	addiu	a1,t0,-8
bfc05fe0:	ac846fe8 	sw	a0,28648(a0)
bfc05fe4:	aca56fe8 	sw	a1,28648(a1)
bfc05fe8:	81026feb 	lb	v0,28651(t0)
bfc05fec:	8c856fe8 	lw	a1,28648(a0)
bfc05ff0:	8ca46fe8 	lw	a0,28648(a1)
bfc05ff4:	8ca66fe8 	lw	a2,28648(a1)
bfc05ff8:	144306cf 	bne	v0,v1,bfc07b38 <inst_error>
bfc05ffc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:39
bfc06000:	3c096bc4 	lui	t1,0x6bc4
bfc06004:	35299d90 	ori	t1,t1,0x9d90
bfc06008:	3c08800d 	lui	t0,0x800d
bfc0600c:	3508b9dc 	ori	t0,t0,0xb9dc
bfc06010:	2403ffc4 	li	v1,-60
bfc06014:	ad0925b8 	sw	t1,9656(t0)
bfc06018:	25040004 	addiu	a0,t0,4
bfc0601c:	2505fff8 	addiu	a1,t0,-8
bfc06020:	ac8425b8 	sw	a0,9656(a0)
bfc06024:	aca525b8 	sw	a1,9656(a1)
bfc06028:	810225ba 	lb	v0,9658(t0)
bfc0602c:	8c8525b8 	lw	a1,9656(a0)
bfc06030:	8ca425b8 	lw	a0,9656(a1)
bfc06034:	8ca625b8 	lw	a2,9656(a1)
bfc06038:	144306bf 	bne	v0,v1,bfc07b38 <inst_error>
bfc0603c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:40
bfc06040:	3c096346 	lui	t1,0x6346
bfc06044:	3529f980 	ori	t1,t1,0xf980
bfc06048:	3c08800d 	lui	t0,0x800d
bfc0604c:	35087f2c 	ori	t0,t0,0x7f2c
bfc06050:	2403ff80 	li	v1,-128
bfc06054:	ad094c38 	sw	t1,19512(t0)
bfc06058:	25040004 	addiu	a0,t0,4
bfc0605c:	2505fff8 	addiu	a1,t0,-8
bfc06060:	ac844c38 	sw	a0,19512(a0)
bfc06064:	aca54c38 	sw	a1,19512(a1)
bfc06068:	81024c38 	lb	v0,19512(t0)
bfc0606c:	8c854c38 	lw	a1,19512(a0)
bfc06070:	8ca44c38 	lw	a0,19512(a1)
bfc06074:	8ca64c38 	lw	a2,19512(a1)
bfc06078:	144306af 	bne	v0,v1,bfc07b38 <inst_error>
bfc0607c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:41
bfc06080:	3c09c1a4 	lui	t1,0xc1a4
bfc06084:	35296720 	ori	t1,t1,0x6720
bfc06088:	3c08800d 	lui	t0,0x800d
bfc0608c:	350858f4 	ori	t0,t0,0x58f4
bfc06090:	2403ffa4 	li	v1,-92
bfc06094:	3c010001 	lui	at,0x1
bfc06098:	00280821 	addu	at,at,t0
bfc0609c:	ac2997a4 	sw	t1,-26716(at)
bfc060a0:	25040004 	addiu	a0,t0,4
bfc060a4:	2505fff8 	addiu	a1,t0,-8
bfc060a8:	3c010001 	lui	at,0x1
bfc060ac:	00240821 	addu	at,at,a0
bfc060b0:	ac2497a4 	sw	a0,-26716(at)
bfc060b4:	3c010001 	lui	at,0x1
bfc060b8:	00250821 	addu	at,at,a1
bfc060bc:	ac2597a4 	sw	a1,-26716(at)
bfc060c0:	3c020001 	lui	v0,0x1
bfc060c4:	00481021 	addu	v0,v0,t0
bfc060c8:	804297a6 	lb	v0,-26714(v0)
bfc060cc:	3c050001 	lui	a1,0x1
bfc060d0:	00a42821 	addu	a1,a1,a0
bfc060d4:	8ca597a4 	lw	a1,-26716(a1)
bfc060d8:	3c040001 	lui	a0,0x1
bfc060dc:	00852021 	addu	a0,a0,a1
bfc060e0:	8c8497a4 	lw	a0,-26716(a0)
bfc060e4:	3c060001 	lui	a2,0x1
bfc060e8:	00c53021 	addu	a2,a2,a1
bfc060ec:	8cc697a4 	lw	a2,-26716(a2)
bfc060f0:	14430691 	bne	v0,v1,bfc07b38 <inst_error>
bfc060f4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:42
bfc060f8:	3c0964ce 	lui	t1,0x64ce
bfc060fc:	3529f3ac 	ori	t1,t1,0xf3ac
bfc06100:	3c08800d 	lui	t0,0x800d
bfc06104:	35081498 	ori	t0,t0,0x1498
bfc06108:	2403ffac 	li	v1,-84
bfc0610c:	ad09729c 	sw	t1,29340(t0)
bfc06110:	25040004 	addiu	a0,t0,4
bfc06114:	2505fff8 	addiu	a1,t0,-8
bfc06118:	ac84729c 	sw	a0,29340(a0)
bfc0611c:	aca5729c 	sw	a1,29340(a1)
bfc06120:	8102729c 	lb	v0,29340(t0)
bfc06124:	8c85729c 	lw	a1,29340(a0)
bfc06128:	8ca4729c 	lw	a0,29340(a1)
bfc0612c:	8ca6729c 	lw	a2,29340(a1)
bfc06130:	14430681 	bne	v0,v1,bfc07b38 <inst_error>
bfc06134:	00000000 	nop
/home/csy/func/inst/n59_lb.S:43
bfc06138:	3c09a730 	lui	t1,0xa730
bfc0613c:	3529cfc0 	ori	t1,t1,0xcfc0
bfc06140:	3c08800d 	lui	t0,0x800d
bfc06144:	35081b80 	ori	t0,t0,0x1b80
bfc06148:	2403ffa7 	li	v1,-89
bfc0614c:	ad09254c 	sw	t1,9548(t0)
bfc06150:	25040004 	addiu	a0,t0,4
bfc06154:	2505fff8 	addiu	a1,t0,-8
bfc06158:	ac84254c 	sw	a0,9548(a0)
bfc0615c:	aca5254c 	sw	a1,9548(a1)
bfc06160:	8102254f 	lb	v0,9551(t0)
bfc06164:	8c85254c 	lw	a1,9548(a0)
bfc06168:	8ca4254c 	lw	a0,9548(a1)
bfc0616c:	8ca6254c 	lw	a2,9548(a1)
bfc06170:	14430671 	bne	v0,v1,bfc07b38 <inst_error>
bfc06174:	00000000 	nop
/home/csy/func/inst/n59_lb.S:44
bfc06178:	3c093824 	lui	t1,0x3824
bfc0617c:	35290a20 	ori	t1,t1,0xa20
bfc06180:	3c08800d 	lui	t0,0x800d
bfc06184:	35083280 	ori	t0,t0,0x3280
bfc06188:	24030038 	li	v1,56
bfc0618c:	3c010001 	lui	at,0x1
bfc06190:	00280821 	addu	at,at,t0
bfc06194:	ac2999d0 	sw	t1,-26160(at)
bfc06198:	25040004 	addiu	a0,t0,4
bfc0619c:	2505fff8 	addiu	a1,t0,-8
bfc061a0:	3c010001 	lui	at,0x1
bfc061a4:	00240821 	addu	at,at,a0
bfc061a8:	ac2499d0 	sw	a0,-26160(at)
bfc061ac:	3c010001 	lui	at,0x1
bfc061b0:	00250821 	addu	at,at,a1
bfc061b4:	ac2599d0 	sw	a1,-26160(at)
bfc061b8:	3c020001 	lui	v0,0x1
bfc061bc:	00481021 	addu	v0,v0,t0
bfc061c0:	804299d3 	lb	v0,-26157(v0)
bfc061c4:	3c050001 	lui	a1,0x1
bfc061c8:	00a42821 	addu	a1,a1,a0
bfc061cc:	8ca599d0 	lw	a1,-26160(a1)
bfc061d0:	3c040001 	lui	a0,0x1
bfc061d4:	00852021 	addu	a0,a0,a1
bfc061d8:	8c8499d0 	lw	a0,-26160(a0)
bfc061dc:	3c060001 	lui	a2,0x1
bfc061e0:	00c53021 	addu	a2,a2,a1
bfc061e4:	8cc699d0 	lw	a2,-26160(a2)
bfc061e8:	14430653 	bne	v0,v1,bfc07b38 <inst_error>
bfc061ec:	00000000 	nop
/home/csy/func/inst/n59_lb.S:45
bfc061f0:	3c09a6f3 	lui	t1,0xa6f3
bfc061f4:	3529c710 	ori	t1,t1,0xc710
bfc061f8:	3c08800d 	lui	t0,0x800d
bfc061fc:	35080344 	ori	t0,t0,0x344
bfc06200:	24030010 	li	v1,16
bfc06204:	3c010001 	lui	at,0x1
bfc06208:	00280821 	addu	at,at,t0
bfc0620c:	ac29e3b0 	sw	t1,-7248(at)
bfc06210:	25040004 	addiu	a0,t0,4
bfc06214:	2505fff8 	addiu	a1,t0,-8
bfc06218:	3c010001 	lui	at,0x1
bfc0621c:	00240821 	addu	at,at,a0
bfc06220:	ac24e3b0 	sw	a0,-7248(at)
bfc06224:	3c010001 	lui	at,0x1
bfc06228:	00250821 	addu	at,at,a1
bfc0622c:	ac25e3b0 	sw	a1,-7248(at)
bfc06230:	3c020001 	lui	v0,0x1
bfc06234:	00481021 	addu	v0,v0,t0
bfc06238:	8042e3b0 	lb	v0,-7248(v0)
bfc0623c:	3c050001 	lui	a1,0x1
bfc06240:	00a42821 	addu	a1,a1,a0
bfc06244:	8ca5e3b0 	lw	a1,-7248(a1)
bfc06248:	3c040001 	lui	a0,0x1
bfc0624c:	00852021 	addu	a0,a0,a1
bfc06250:	8c84e3b0 	lw	a0,-7248(a0)
bfc06254:	3c060001 	lui	a2,0x1
bfc06258:	00c53021 	addu	a2,a2,a1
bfc0625c:	8cc6e3b0 	lw	a2,-7248(a2)
bfc06260:	14430635 	bne	v0,v1,bfc07b38 <inst_error>
bfc06264:	00000000 	nop
/home/csy/func/inst/n59_lb.S:46
bfc06268:	3c0969cd 	lui	t1,0x69cd
bfc0626c:	35296980 	ori	t1,t1,0x6980
bfc06270:	3c08800d 	lui	t0,0x800d
bfc06274:	350873a8 	ori	t0,t0,0x73a8
bfc06278:	2403ffcd 	li	v1,-51
bfc0627c:	ad09559c 	sw	t1,21916(t0)
bfc06280:	25040004 	addiu	a0,t0,4
bfc06284:	2505fff8 	addiu	a1,t0,-8
bfc06288:	ac84559c 	sw	a0,21916(a0)
bfc0628c:	aca5559c 	sw	a1,21916(a1)
bfc06290:	8102559e 	lb	v0,21918(t0)
bfc06294:	8c85559c 	lw	a1,21916(a0)
bfc06298:	8ca4559c 	lw	a0,21916(a1)
bfc0629c:	8ca6559c 	lw	a2,21916(a1)
bfc062a0:	14430625 	bne	v0,v1,bfc07b38 <inst_error>
bfc062a4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:47
bfc062a8:	3c097aec 	lui	t1,0x7aec
bfc062ac:	3529b546 	ori	t1,t1,0xb546
bfc062b0:	3c08800d 	lui	t0,0x800d
bfc062b4:	35088730 	ori	t0,t0,0x8730
bfc062b8:	24030046 	li	v1,70
bfc062bc:	ad096b60 	sw	t1,27488(t0)
bfc062c0:	25040004 	addiu	a0,t0,4
bfc062c4:	2505fff8 	addiu	a1,t0,-8
bfc062c8:	ac846b60 	sw	a0,27488(a0)
bfc062cc:	aca56b60 	sw	a1,27488(a1)
bfc062d0:	81026b60 	lb	v0,27488(t0)
bfc062d4:	8c856b60 	lw	a1,27488(a0)
bfc062d8:	8ca46b60 	lw	a0,27488(a1)
bfc062dc:	8ca66b60 	lw	a2,27488(a1)
bfc062e0:	14430615 	bne	v0,v1,bfc07b38 <inst_error>
bfc062e4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:48
bfc062e8:	3c099c24 	lui	t1,0x9c24
bfc062ec:	35294870 	ori	t1,t1,0x4870
bfc062f0:	3c08800d 	lui	t0,0x800d
bfc062f4:	35082bd0 	ori	t0,t0,0x2bd0
bfc062f8:	24030070 	li	v1,112
bfc062fc:	ad094344 	sw	t1,17220(t0)
bfc06300:	25040004 	addiu	a0,t0,4
bfc06304:	2505fff8 	addiu	a1,t0,-8
bfc06308:	ac844344 	sw	a0,17220(a0)
bfc0630c:	aca54344 	sw	a1,17220(a1)
bfc06310:	81024344 	lb	v0,17220(t0)
bfc06314:	8c854344 	lw	a1,17220(a0)
bfc06318:	8ca44344 	lw	a0,17220(a1)
bfc0631c:	8ca64344 	lw	a2,17220(a1)
bfc06320:	14430605 	bne	v0,v1,bfc07b38 <inst_error>
bfc06324:	00000000 	nop
/home/csy/func/inst/n59_lb.S:49
bfc06328:	3c091dd2 	lui	t1,0x1dd2
bfc0632c:	3529d522 	ori	t1,t1,0xd522
bfc06330:	3c08800d 	lui	t0,0x800d
bfc06334:	350806d8 	ori	t0,t0,0x6d8
bfc06338:	2403ffd2 	li	v1,-46
bfc0633c:	ad092374 	sw	t1,9076(t0)
bfc06340:	25040004 	addiu	a0,t0,4
bfc06344:	2505fff8 	addiu	a1,t0,-8
bfc06348:	ac842374 	sw	a0,9076(a0)
bfc0634c:	aca52374 	sw	a1,9076(a1)
bfc06350:	81022376 	lb	v0,9078(t0)
bfc06354:	8c852374 	lw	a1,9076(a0)
bfc06358:	8ca42374 	lw	a0,9076(a1)
bfc0635c:	8ca62374 	lw	a2,9076(a1)
bfc06360:	144305f5 	bne	v0,v1,bfc07b38 <inst_error>
bfc06364:	00000000 	nop
/home/csy/func/inst/n59_lb.S:50
bfc06368:	3c09fca7 	lui	t1,0xfca7
bfc0636c:	35291dcc 	ori	t1,t1,0x1dcc
bfc06370:	3c08800d 	lui	t0,0x800d
bfc06374:	350823a8 	ori	t0,t0,0x23a8
bfc06378:	2403001d 	li	v1,29
bfc0637c:	3c010001 	lui	at,0x1
bfc06380:	00280821 	addu	at,at,t0
bfc06384:	ac29b4dc 	sw	t1,-19236(at)
bfc06388:	25040004 	addiu	a0,t0,4
bfc0638c:	2505fff8 	addiu	a1,t0,-8
bfc06390:	3c010001 	lui	at,0x1
bfc06394:	00240821 	addu	at,at,a0
bfc06398:	ac24b4dc 	sw	a0,-19236(at)
bfc0639c:	3c010001 	lui	at,0x1
bfc063a0:	00250821 	addu	at,at,a1
bfc063a4:	ac25b4dc 	sw	a1,-19236(at)
bfc063a8:	3c020001 	lui	v0,0x1
bfc063ac:	00481021 	addu	v0,v0,t0
bfc063b0:	8042b4dd 	lb	v0,-19235(v0)
bfc063b4:	3c050001 	lui	a1,0x1
bfc063b8:	00a42821 	addu	a1,a1,a0
bfc063bc:	8ca5b4dc 	lw	a1,-19236(a1)
bfc063c0:	3c040001 	lui	a0,0x1
bfc063c4:	00852021 	addu	a0,a0,a1
bfc063c8:	8c84b4dc 	lw	a0,-19236(a0)
bfc063cc:	3c060001 	lui	a2,0x1
bfc063d0:	00c53021 	addu	a2,a2,a1
bfc063d4:	8cc6b4dc 	lw	a2,-19236(a2)
bfc063d8:	144305d7 	bne	v0,v1,bfc07b38 <inst_error>
bfc063dc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:51
bfc063e0:	3c098b31 	lui	t1,0x8b31
bfc063e4:	35297ee0 	ori	t1,t1,0x7ee0
bfc063e8:	3c08800d 	lui	t0,0x800d
bfc063ec:	35080ca4 	ori	t0,t0,0xca4
bfc063f0:	2403ffe0 	li	v1,-32
bfc063f4:	3c010001 	lui	at,0x1
bfc063f8:	00280821 	addu	at,at,t0
bfc063fc:	ac29d47c 	sw	t1,-11140(at)
bfc06400:	25040004 	addiu	a0,t0,4
bfc06404:	2505fff8 	addiu	a1,t0,-8
bfc06408:	3c010001 	lui	at,0x1
bfc0640c:	00240821 	addu	at,at,a0
bfc06410:	ac24d47c 	sw	a0,-11140(at)
bfc06414:	3c010001 	lui	at,0x1
bfc06418:	00250821 	addu	at,at,a1
bfc0641c:	ac25d47c 	sw	a1,-11140(at)
bfc06420:	3c020001 	lui	v0,0x1
bfc06424:	00481021 	addu	v0,v0,t0
bfc06428:	8042d47c 	lb	v0,-11140(v0)
bfc0642c:	3c050001 	lui	a1,0x1
bfc06430:	00a42821 	addu	a1,a1,a0
bfc06434:	8ca5d47c 	lw	a1,-11140(a1)
bfc06438:	3c040001 	lui	a0,0x1
bfc0643c:	00852021 	addu	a0,a0,a1
bfc06440:	8c84d47c 	lw	a0,-11140(a0)
bfc06444:	3c060001 	lui	a2,0x1
bfc06448:	00c53021 	addu	a2,a2,a1
bfc0644c:	8cc6d47c 	lw	a2,-11140(a2)
bfc06450:	144305b9 	bne	v0,v1,bfc07b38 <inst_error>
bfc06454:	00000000 	nop
/home/csy/func/inst/n59_lb.S:52
bfc06458:	3c0930b7 	lui	t1,0x30b7
bfc0645c:	35293214 	ori	t1,t1,0x3214
bfc06460:	3c08800d 	lui	t0,0x800d
bfc06464:	3508076c 	ori	t0,t0,0x76c
bfc06468:	2403ffb7 	li	v1,-73
bfc0646c:	ad095b48 	sw	t1,23368(t0)
bfc06470:	25040004 	addiu	a0,t0,4
bfc06474:	2505fff8 	addiu	a1,t0,-8
bfc06478:	ac845b48 	sw	a0,23368(a0)
bfc0647c:	aca55b48 	sw	a1,23368(a1)
bfc06480:	81025b4a 	lb	v0,23370(t0)
bfc06484:	8c855b48 	lw	a1,23368(a0)
bfc06488:	8ca45b48 	lw	a0,23368(a1)
bfc0648c:	8ca65b48 	lw	a2,23368(a1)
bfc06490:	144305a9 	bne	v0,v1,bfc07b38 <inst_error>
bfc06494:	00000000 	nop
/home/csy/func/inst/n59_lb.S:53
bfc06498:	3c09ef77 	lui	t1,0xef77
bfc0649c:	35298c1c 	ori	t1,t1,0x8c1c
bfc064a0:	3c08800d 	lui	t0,0x800d
bfc064a4:	3508a97c 	ori	t0,t0,0xa97c
bfc064a8:	2403001c 	li	v1,28
bfc064ac:	ad092df8 	sw	t1,11768(t0)
bfc064b0:	25040004 	addiu	a0,t0,4
bfc064b4:	2505fff8 	addiu	a1,t0,-8
bfc064b8:	ac842df8 	sw	a0,11768(a0)
bfc064bc:	aca52df8 	sw	a1,11768(a1)
bfc064c0:	81022df8 	lb	v0,11768(t0)
bfc064c4:	8c852df8 	lw	a1,11768(a0)
bfc064c8:	8ca42df8 	lw	a0,11768(a1)
bfc064cc:	8ca62df8 	lw	a2,11768(a1)
bfc064d0:	14430599 	bne	v0,v1,bfc07b38 <inst_error>
bfc064d4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:54
bfc064d8:	3c09c4aa 	lui	t1,0xc4aa
bfc064dc:	352918c0 	ori	t1,t1,0x18c0
bfc064e0:	3c08800d 	lui	t0,0x800d
bfc064e4:	35083af8 	ori	t0,t0,0x3af8
bfc064e8:	2403ffc0 	li	v1,-64
bfc064ec:	3c010001 	lui	at,0x1
bfc064f0:	00280821 	addu	at,at,t0
bfc064f4:	ac29c2ac 	sw	t1,-15700(at)
bfc064f8:	25040004 	addiu	a0,t0,4
bfc064fc:	2505fff8 	addiu	a1,t0,-8
bfc06500:	3c010001 	lui	at,0x1
bfc06504:	00240821 	addu	at,at,a0
bfc06508:	ac24c2ac 	sw	a0,-15700(at)
bfc0650c:	3c010001 	lui	at,0x1
bfc06510:	00250821 	addu	at,at,a1
bfc06514:	ac25c2ac 	sw	a1,-15700(at)
bfc06518:	3c020001 	lui	v0,0x1
bfc0651c:	00481021 	addu	v0,v0,t0
bfc06520:	8042c2ac 	lb	v0,-15700(v0)
bfc06524:	3c050001 	lui	a1,0x1
bfc06528:	00a42821 	addu	a1,a1,a0
bfc0652c:	8ca5c2ac 	lw	a1,-15700(a1)
bfc06530:	3c040001 	lui	a0,0x1
bfc06534:	00852021 	addu	a0,a0,a1
bfc06538:	8c84c2ac 	lw	a0,-15700(a0)
bfc0653c:	3c060001 	lui	a2,0x1
bfc06540:	00c53021 	addu	a2,a2,a1
bfc06544:	8cc6c2ac 	lw	a2,-15700(a2)
bfc06548:	1443057b 	bne	v0,v1,bfc07b38 <inst_error>
bfc0654c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:55
bfc06550:	3c09fe4b 	lui	t1,0xfe4b
bfc06554:	35297514 	ori	t1,t1,0x7514
bfc06558:	3c08800d 	lui	t0,0x800d
bfc0655c:	3508e080 	ori	t0,t0,0xe080
bfc06560:	24030014 	li	v1,20
bfc06564:	ad0907c8 	sw	t1,1992(t0)
bfc06568:	25040004 	addiu	a0,t0,4
bfc0656c:	2505fff8 	addiu	a1,t0,-8
bfc06570:	ac8407c8 	sw	a0,1992(a0)
bfc06574:	aca507c8 	sw	a1,1992(a1)
bfc06578:	810207c8 	lb	v0,1992(t0)
bfc0657c:	8c8507c8 	lw	a1,1992(a0)
bfc06580:	8ca407c8 	lw	a0,1992(a1)
bfc06584:	8ca607c8 	lw	a2,1992(a1)
bfc06588:	1443056b 	bne	v0,v1,bfc07b38 <inst_error>
bfc0658c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:56
bfc06590:	3c0943fc 	lui	t1,0x43fc
bfc06594:	352933e8 	ori	t1,t1,0x33e8
bfc06598:	3c08800d 	lui	t0,0x800d
bfc0659c:	35086478 	ori	t0,t0,0x6478
bfc065a0:	2403fffc 	li	v1,-4
bfc065a4:	3c010001 	lui	at,0x1
bfc065a8:	00280821 	addu	at,at,t0
bfc065ac:	ac29827c 	sw	t1,-32132(at)
bfc065b0:	25040004 	addiu	a0,t0,4
bfc065b4:	2505fff8 	addiu	a1,t0,-8
bfc065b8:	3c010001 	lui	at,0x1
bfc065bc:	00240821 	addu	at,at,a0
bfc065c0:	ac24827c 	sw	a0,-32132(at)
bfc065c4:	3c010001 	lui	at,0x1
bfc065c8:	00250821 	addu	at,at,a1
bfc065cc:	ac25827c 	sw	a1,-32132(at)
bfc065d0:	3c020001 	lui	v0,0x1
bfc065d4:	00481021 	addu	v0,v0,t0
bfc065d8:	8042827e 	lb	v0,-32130(v0)
bfc065dc:	3c050001 	lui	a1,0x1
bfc065e0:	00a42821 	addu	a1,a1,a0
bfc065e4:	8ca5827c 	lw	a1,-32132(a1)
bfc065e8:	3c040001 	lui	a0,0x1
bfc065ec:	00852021 	addu	a0,a0,a1
bfc065f0:	8c84827c 	lw	a0,-32132(a0)
bfc065f4:	3c060001 	lui	a2,0x1
bfc065f8:	00c53021 	addu	a2,a2,a1
bfc065fc:	8cc6827c 	lw	a2,-32132(a2)
bfc06600:	1443054d 	bne	v0,v1,bfc07b38 <inst_error>
bfc06604:	00000000 	nop
/home/csy/func/inst/n59_lb.S:57
bfc06608:	3c09a1e3 	lui	t1,0xa1e3
bfc0660c:	35290564 	ori	t1,t1,0x564
bfc06610:	3c08800d 	lui	t0,0x800d
bfc06614:	35085e8c 	ori	t0,t0,0x5e8c
bfc06618:	24030005 	li	v1,5
bfc0661c:	ad091f44 	sw	t1,8004(t0)
bfc06620:	25040004 	addiu	a0,t0,4
bfc06624:	2505fff8 	addiu	a1,t0,-8
bfc06628:	ac841f44 	sw	a0,8004(a0)
bfc0662c:	aca51f44 	sw	a1,8004(a1)
bfc06630:	81021f45 	lb	v0,8005(t0)
bfc06634:	8c851f44 	lw	a1,8004(a0)
bfc06638:	8ca41f44 	lw	a0,8004(a1)
bfc0663c:	8ca61f44 	lw	a2,8004(a1)
bfc06640:	1443053d 	bne	v0,v1,bfc07b38 <inst_error>
bfc06644:	00000000 	nop
/home/csy/func/inst/n59_lb.S:58
bfc06648:	3c099abb 	lui	t1,0x9abb
bfc0664c:	35293880 	ori	t1,t1,0x3880
bfc06650:	3c08800d 	lui	t0,0x800d
bfc06654:	35081de0 	ori	t0,t0,0x1de0
bfc06658:	2403ffbb 	li	v1,-69
bfc0665c:	3c010001 	lui	at,0x1
bfc06660:	00280821 	addu	at,at,t0
bfc06664:	ac29de68 	sw	t1,-8600(at)
bfc06668:	25040004 	addiu	a0,t0,4
bfc0666c:	2505fff8 	addiu	a1,t0,-8
bfc06670:	3c010001 	lui	at,0x1
bfc06674:	00240821 	addu	at,at,a0
bfc06678:	ac24de68 	sw	a0,-8600(at)
bfc0667c:	3c010001 	lui	at,0x1
bfc06680:	00250821 	addu	at,at,a1
bfc06684:	ac25de68 	sw	a1,-8600(at)
bfc06688:	3c020001 	lui	v0,0x1
bfc0668c:	00481021 	addu	v0,v0,t0
bfc06690:	8042de6a 	lb	v0,-8598(v0)
bfc06694:	3c050001 	lui	a1,0x1
bfc06698:	00a42821 	addu	a1,a1,a0
bfc0669c:	8ca5de68 	lw	a1,-8600(a1)
bfc066a0:	3c040001 	lui	a0,0x1
bfc066a4:	00852021 	addu	a0,a0,a1
bfc066a8:	8c84de68 	lw	a0,-8600(a0)
bfc066ac:	3c060001 	lui	a2,0x1
bfc066b0:	00c53021 	addu	a2,a2,a1
bfc066b4:	8cc6de68 	lw	a2,-8600(a2)
bfc066b8:	1443051f 	bne	v0,v1,bfc07b38 <inst_error>
bfc066bc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:59
bfc066c0:	3c094653 	lui	t1,0x4653
bfc066c4:	3529e630 	ori	t1,t1,0xe630
bfc066c8:	3c08800d 	lui	t0,0x800d
bfc066cc:	3508244c 	ori	t0,t0,0x244c
bfc066d0:	24030030 	li	v1,48
bfc066d4:	ad095878 	sw	t1,22648(t0)
bfc066d8:	25040004 	addiu	a0,t0,4
bfc066dc:	2505fff8 	addiu	a1,t0,-8
bfc066e0:	ac845878 	sw	a0,22648(a0)
bfc066e4:	aca55878 	sw	a1,22648(a1)
bfc066e8:	81025878 	lb	v0,22648(t0)
bfc066ec:	8c855878 	lw	a1,22648(a0)
bfc066f0:	8ca45878 	lw	a0,22648(a1)
bfc066f4:	8ca65878 	lw	a2,22648(a1)
bfc066f8:	1443050f 	bne	v0,v1,bfc07b38 <inst_error>
bfc066fc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:60
bfc06700:	3c09dfd3 	lui	t1,0xdfd3
bfc06704:	35292410 	ori	t1,t1,0x2410
bfc06708:	3c08800d 	lui	t0,0x800d
bfc0670c:	3508833c 	ori	t0,t0,0x833c
bfc06710:	24030010 	li	v1,16
bfc06714:	ad09403c 	sw	t1,16444(t0)
bfc06718:	25040004 	addiu	a0,t0,4
bfc0671c:	2505fff8 	addiu	a1,t0,-8
bfc06720:	ac84403c 	sw	a0,16444(a0)
bfc06724:	aca5403c 	sw	a1,16444(a1)
bfc06728:	8102403c 	lb	v0,16444(t0)
bfc0672c:	8c85403c 	lw	a1,16444(a0)
bfc06730:	8ca4403c 	lw	a0,16444(a1)
bfc06734:	8ca6403c 	lw	a2,16444(a1)
bfc06738:	144304ff 	bne	v0,v1,bfc07b38 <inst_error>
bfc0673c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:61
bfc06740:	3c09eb7c 	lui	t1,0xeb7c
bfc06744:	35295500 	ori	t1,t1,0x5500
bfc06748:	3c08800d 	lui	t0,0x800d
bfc0674c:	35085aac 	ori	t0,t0,0x5aac
bfc06750:	24030000 	li	v1,0
bfc06754:	ad095df0 	sw	t1,24048(t0)
bfc06758:	25040004 	addiu	a0,t0,4
bfc0675c:	2505fff8 	addiu	a1,t0,-8
bfc06760:	ac845df0 	sw	a0,24048(a0)
bfc06764:	aca55df0 	sw	a1,24048(a1)
bfc06768:	81025df0 	lb	v0,24048(t0)
bfc0676c:	8c855df0 	lw	a1,24048(a0)
bfc06770:	8ca45df0 	lw	a0,24048(a1)
bfc06774:	8ca65df0 	lw	a2,24048(a1)
bfc06778:	144304ef 	bne	v0,v1,bfc07b38 <inst_error>
bfc0677c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:62
bfc06780:	3c09e410 	lui	t1,0xe410
bfc06784:	35296bd0 	ori	t1,t1,0x6bd0
bfc06788:	3c08800d 	lui	t0,0x800d
bfc0678c:	35083dc4 	ori	t0,t0,0x3dc4
bfc06790:	2403ffd0 	li	v1,-48
bfc06794:	ad09712c 	sw	t1,28972(t0)
bfc06798:	25040004 	addiu	a0,t0,4
bfc0679c:	2505fff8 	addiu	a1,t0,-8
bfc067a0:	ac84712c 	sw	a0,28972(a0)
bfc067a4:	aca5712c 	sw	a1,28972(a1)
bfc067a8:	8102712c 	lb	v0,28972(t0)
bfc067ac:	8c85712c 	lw	a1,28972(a0)
bfc067b0:	8ca4712c 	lw	a0,28972(a1)
bfc067b4:	8ca6712c 	lw	a2,28972(a1)
bfc067b8:	144304df 	bne	v0,v1,bfc07b38 <inst_error>
bfc067bc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:63
bfc067c0:	3c09ead2 	lui	t1,0xead2
bfc067c4:	352986f4 	ori	t1,t1,0x86f4
bfc067c8:	3c08800d 	lui	t0,0x800d
bfc067cc:	350850c4 	ori	t0,t0,0x50c4
bfc067d0:	2403ffd2 	li	v1,-46
bfc067d4:	ad092220 	sw	t1,8736(t0)
bfc067d8:	25040004 	addiu	a0,t0,4
bfc067dc:	2505fff8 	addiu	a1,t0,-8
bfc067e0:	ac842220 	sw	a0,8736(a0)
bfc067e4:	aca52220 	sw	a1,8736(a1)
bfc067e8:	81022222 	lb	v0,8738(t0)
bfc067ec:	8c852220 	lw	a1,8736(a0)
bfc067f0:	8ca42220 	lw	a0,8736(a1)
bfc067f4:	8ca62220 	lw	a2,8736(a1)
bfc067f8:	144304cf 	bne	v0,v1,bfc07b38 <inst_error>
bfc067fc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:64
bfc06800:	3c09e9f4 	lui	t1,0xe9f4
bfc06804:	35299570 	ori	t1,t1,0x9570
bfc06808:	3c08800d 	lui	t0,0x800d
bfc0680c:	35081d40 	ori	t0,t0,0x1d40
bfc06810:	24030070 	li	v1,112
bfc06814:	ad095724 	sw	t1,22308(t0)
bfc06818:	25040004 	addiu	a0,t0,4
bfc0681c:	2505fff8 	addiu	a1,t0,-8
bfc06820:	ac845724 	sw	a0,22308(a0)
bfc06824:	aca55724 	sw	a1,22308(a1)
bfc06828:	81025724 	lb	v0,22308(t0)
bfc0682c:	8c855724 	lw	a1,22308(a0)
bfc06830:	8ca45724 	lw	a0,22308(a1)
bfc06834:	8ca65724 	lw	a2,22308(a1)
bfc06838:	144304bf 	bne	v0,v1,bfc07b38 <inst_error>
bfc0683c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:65
bfc06840:	3c09e395 	lui	t1,0xe395
bfc06844:	3529f2c0 	ori	t1,t1,0xf2c0
bfc06848:	3c08800d 	lui	t0,0x800d
bfc0684c:	3508bbb8 	ori	t0,t0,0xbbb8
bfc06850:	2403ff95 	li	v1,-107
bfc06854:	ad093960 	sw	t1,14688(t0)
bfc06858:	25040004 	addiu	a0,t0,4
bfc0685c:	2505fff8 	addiu	a1,t0,-8
bfc06860:	ac843960 	sw	a0,14688(a0)
bfc06864:	aca53960 	sw	a1,14688(a1)
bfc06868:	81023962 	lb	v0,14690(t0)
bfc0686c:	8c853960 	lw	a1,14688(a0)
bfc06870:	8ca43960 	lw	a0,14688(a1)
bfc06874:	8ca63960 	lw	a2,14688(a1)
bfc06878:	144304af 	bne	v0,v1,bfc07b38 <inst_error>
bfc0687c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:66
bfc06880:	3c096c9c 	lui	t1,0x6c9c
bfc06884:	3529aac0 	ori	t1,t1,0xaac0
bfc06888:	3c08800d 	lui	t0,0x800d
bfc0688c:	35084dc4 	ori	t0,t0,0x4dc4
bfc06890:	2403ffaa 	li	v1,-86
bfc06894:	ad092648 	sw	t1,9800(t0)
bfc06898:	25040004 	addiu	a0,t0,4
bfc0689c:	2505fff8 	addiu	a1,t0,-8
bfc068a0:	ac842648 	sw	a0,9800(a0)
bfc068a4:	aca52648 	sw	a1,9800(a1)
bfc068a8:	81022649 	lb	v0,9801(t0)
bfc068ac:	8c852648 	lw	a1,9800(a0)
bfc068b0:	8ca42648 	lw	a0,9800(a1)
bfc068b4:	8ca62648 	lw	a2,9800(a1)
bfc068b8:	1443049f 	bne	v0,v1,bfc07b38 <inst_error>
bfc068bc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:67
bfc068c0:	3c0911e6 	lui	t1,0x11e6
bfc068c4:	3529af20 	ori	t1,t1,0xaf20
bfc068c8:	3c08800d 	lui	t0,0x800d
bfc068cc:	24030020 	li	v1,32
bfc068d0:	3c010001 	lui	at,0x1
bfc068d4:	00280821 	addu	at,at,t0
bfc068d8:	ac29bb0c 	sw	t1,-17652(at)
bfc068dc:	25040004 	addiu	a0,t0,4
bfc068e0:	2505fff8 	addiu	a1,t0,-8
bfc068e4:	3c010001 	lui	at,0x1
bfc068e8:	00240821 	addu	at,at,a0
bfc068ec:	ac24bb0c 	sw	a0,-17652(at)
bfc068f0:	3c010001 	lui	at,0x1
bfc068f4:	00250821 	addu	at,at,a1
bfc068f8:	ac25bb0c 	sw	a1,-17652(at)
bfc068fc:	3c020001 	lui	v0,0x1
bfc06900:	00481021 	addu	v0,v0,t0
bfc06904:	8042bb0c 	lb	v0,-17652(v0)
bfc06908:	3c050001 	lui	a1,0x1
bfc0690c:	00a42821 	addu	a1,a1,a0
bfc06910:	8ca5bb0c 	lw	a1,-17652(a1)
bfc06914:	3c040001 	lui	a0,0x1
bfc06918:	00852021 	addu	a0,a0,a1
bfc0691c:	8c84bb0c 	lw	a0,-17652(a0)
bfc06920:	3c060001 	lui	a2,0x1
bfc06924:	00c53021 	addu	a2,a2,a1
bfc06928:	8cc6bb0c 	lw	a2,-17652(a2)
bfc0692c:	14430482 	bne	v0,v1,bfc07b38 <inst_error>
bfc06930:	00000000 	nop
/home/csy/func/inst/n59_lb.S:68
bfc06934:	3c098799 	lui	t1,0x8799
bfc06938:	35297498 	ori	t1,t1,0x7498
bfc0693c:	3c08800d 	lui	t0,0x800d
bfc06940:	2403ff98 	li	v1,-104
bfc06944:	ad090b00 	sw	t1,2816(t0)
bfc06948:	25040004 	addiu	a0,t0,4
bfc0694c:	2505fff8 	addiu	a1,t0,-8
bfc06950:	ac840b00 	sw	a0,2816(a0)
bfc06954:	aca50b00 	sw	a1,2816(a1)
bfc06958:	81020b00 	lb	v0,2816(t0)
bfc0695c:	8c850b00 	lw	a1,2816(a0)
bfc06960:	8ca40b00 	lw	a0,2816(a1)
bfc06964:	8ca60b00 	lw	a2,2816(a1)
bfc06968:	14430473 	bne	v0,v1,bfc07b38 <inst_error>
bfc0696c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:69
bfc06970:	3c0915ab 	lui	t1,0x15ab
bfc06974:	3529b120 	ori	t1,t1,0xb120
bfc06978:	3c08800d 	lui	t0,0x800d
bfc0697c:	24030020 	li	v1,32
bfc06980:	3c010001 	lui	at,0x1
bfc06984:	00280821 	addu	at,at,t0
bfc06988:	ac29b278 	sw	t1,-19848(at)
bfc0698c:	25040004 	addiu	a0,t0,4
bfc06990:	2505fff8 	addiu	a1,t0,-8
bfc06994:	3c010001 	lui	at,0x1
bfc06998:	00240821 	addu	at,at,a0
bfc0699c:	ac24b278 	sw	a0,-19848(at)
bfc069a0:	3c010001 	lui	at,0x1
bfc069a4:	00250821 	addu	at,at,a1
bfc069a8:	ac25b278 	sw	a1,-19848(at)
bfc069ac:	3c020001 	lui	v0,0x1
bfc069b0:	00481021 	addu	v0,v0,t0
bfc069b4:	8042b278 	lb	v0,-19848(v0)
bfc069b8:	3c050001 	lui	a1,0x1
bfc069bc:	00a42821 	addu	a1,a1,a0
bfc069c0:	8ca5b278 	lw	a1,-19848(a1)
bfc069c4:	3c040001 	lui	a0,0x1
bfc069c8:	00852021 	addu	a0,a0,a1
bfc069cc:	8c84b278 	lw	a0,-19848(a0)
bfc069d0:	3c060001 	lui	a2,0x1
bfc069d4:	00c53021 	addu	a2,a2,a1
bfc069d8:	8cc6b278 	lw	a2,-19848(a2)
bfc069dc:	14430456 	bne	v0,v1,bfc07b38 <inst_error>
bfc069e0:	00000000 	nop
/home/csy/func/inst/n59_lb.S:70
bfc069e4:	3c09833d 	lui	t1,0x833d
bfc069e8:	3529d7d0 	ori	t1,t1,0xd7d0
bfc069ec:	3c08800d 	lui	t0,0x800d
bfc069f0:	2403ffd0 	li	v1,-48
bfc069f4:	3c010001 	lui	at,0x1
bfc069f8:	00280821 	addu	at,at,t0
bfc069fc:	ac29c380 	sw	t1,-15488(at)
bfc06a00:	25040004 	addiu	a0,t0,4
bfc06a04:	2505fff8 	addiu	a1,t0,-8
bfc06a08:	3c010001 	lui	at,0x1
bfc06a0c:	00240821 	addu	at,at,a0
bfc06a10:	ac24c380 	sw	a0,-15488(at)
bfc06a14:	3c010001 	lui	at,0x1
bfc06a18:	00250821 	addu	at,at,a1
bfc06a1c:	ac25c380 	sw	a1,-15488(at)
bfc06a20:	3c020001 	lui	v0,0x1
bfc06a24:	00481021 	addu	v0,v0,t0
bfc06a28:	8042c380 	lb	v0,-15488(v0)
bfc06a2c:	3c050001 	lui	a1,0x1
bfc06a30:	00a42821 	addu	a1,a1,a0
bfc06a34:	8ca5c380 	lw	a1,-15488(a1)
bfc06a38:	3c040001 	lui	a0,0x1
bfc06a3c:	00852021 	addu	a0,a0,a1
bfc06a40:	8c84c380 	lw	a0,-15488(a0)
bfc06a44:	3c060001 	lui	a2,0x1
bfc06a48:	00c53021 	addu	a2,a2,a1
bfc06a4c:	8cc6c380 	lw	a2,-15488(a2)
bfc06a50:	14430439 	bne	v0,v1,bfc07b38 <inst_error>
bfc06a54:	00000000 	nop
/home/csy/func/inst/n59_lb.S:71
bfc06a58:	3c097f44 	lui	t1,0x7f44
bfc06a5c:	3529e290 	ori	t1,t1,0xe290
bfc06a60:	3c08800d 	lui	t0,0x800d
bfc06a64:	2403ff90 	li	v1,-112
bfc06a68:	ad0911d0 	sw	t1,4560(t0)
bfc06a6c:	25040004 	addiu	a0,t0,4
bfc06a70:	2505fff8 	addiu	a1,t0,-8
bfc06a74:	ac8411d0 	sw	a0,4560(a0)
bfc06a78:	aca511d0 	sw	a1,4560(a1)
bfc06a7c:	810211d0 	lb	v0,4560(t0)
bfc06a80:	8c8511d0 	lw	a1,4560(a0)
bfc06a84:	8ca411d0 	lw	a0,4560(a1)
bfc06a88:	8ca611d0 	lw	a2,4560(a1)
bfc06a8c:	1443042a 	bne	v0,v1,bfc07b38 <inst_error>
bfc06a90:	00000000 	nop
/home/csy/func/inst/n59_lb.S:72
bfc06a94:	3c09992d 	lui	t1,0x992d
bfc06a98:	3529268f 	ori	t1,t1,0x268f
bfc06a9c:	3c08800d 	lui	t0,0x800d
bfc06aa0:	2403ff99 	li	v1,-103
bfc06aa4:	ad097b2c 	sw	t1,31532(t0)
bfc06aa8:	25040004 	addiu	a0,t0,4
bfc06aac:	2505fff8 	addiu	a1,t0,-8
bfc06ab0:	ac847b2c 	sw	a0,31532(a0)
bfc06ab4:	aca57b2c 	sw	a1,31532(a1)
bfc06ab8:	81027b2f 	lb	v0,31535(t0)
bfc06abc:	8c857b2c 	lw	a1,31532(a0)
bfc06ac0:	8ca47b2c 	lw	a0,31532(a1)
bfc06ac4:	8ca67b2c 	lw	a2,31532(a1)
bfc06ac8:	1443041b 	bne	v0,v1,bfc07b38 <inst_error>
bfc06acc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:73
bfc06ad0:	3c091599 	lui	t1,0x1599
bfc06ad4:	35296bf7 	ori	t1,t1,0x6bf7
bfc06ad8:	3c08800d 	lui	t0,0x800d
bfc06adc:	2403ff99 	li	v1,-103
bfc06ae0:	ad093488 	sw	t1,13448(t0)
bfc06ae4:	25040004 	addiu	a0,t0,4
bfc06ae8:	2505fff8 	addiu	a1,t0,-8
bfc06aec:	ac843488 	sw	a0,13448(a0)
bfc06af0:	aca53488 	sw	a1,13448(a1)
bfc06af4:	8102348a 	lb	v0,13450(t0)
bfc06af8:	8c853488 	lw	a1,13448(a0)
bfc06afc:	8ca43488 	lw	a0,13448(a1)
bfc06b00:	8ca63488 	lw	a2,13448(a1)
bfc06b04:	1443040c 	bne	v0,v1,bfc07b38 <inst_error>
bfc06b08:	00000000 	nop
/home/csy/func/inst/n59_lb.S:74
bfc06b0c:	3c092da0 	lui	t1,0x2da0
bfc06b10:	35292d90 	ori	t1,t1,0x2d90
bfc06b14:	3c08800d 	lui	t0,0x800d
bfc06b18:	2403ff90 	li	v1,-112
bfc06b1c:	ad095c10 	sw	t1,23568(t0)
bfc06b20:	25040004 	addiu	a0,t0,4
bfc06b24:	2505fff8 	addiu	a1,t0,-8
bfc06b28:	ac845c10 	sw	a0,23568(a0)
bfc06b2c:	aca55c10 	sw	a1,23568(a1)
bfc06b30:	81025c10 	lb	v0,23568(t0)
bfc06b34:	8c855c10 	lw	a1,23568(a0)
bfc06b38:	8ca45c10 	lw	a0,23568(a1)
bfc06b3c:	8ca65c10 	lw	a2,23568(a1)
bfc06b40:	144303fd 	bne	v0,v1,bfc07b38 <inst_error>
bfc06b44:	00000000 	nop
/home/csy/func/inst/n59_lb.S:75
bfc06b48:	3c0924da 	lui	t1,0x24da
bfc06b4c:	3529c600 	ori	t1,t1,0xc600
bfc06b50:	3c08800d 	lui	t0,0x800d
bfc06b54:	2403ffda 	li	v1,-38
bfc06b58:	ad0970d8 	sw	t1,28888(t0)
bfc06b5c:	25040004 	addiu	a0,t0,4
bfc06b60:	2505fff8 	addiu	a1,t0,-8
bfc06b64:	ac8470d8 	sw	a0,28888(a0)
bfc06b68:	aca570d8 	sw	a1,28888(a1)
bfc06b6c:	810270da 	lb	v0,28890(t0)
bfc06b70:	8c8570d8 	lw	a1,28888(a0)
bfc06b74:	8ca470d8 	lw	a0,28888(a1)
bfc06b78:	8ca670d8 	lw	a2,28888(a1)
bfc06b7c:	144303ee 	bne	v0,v1,bfc07b38 <inst_error>
bfc06b80:	00000000 	nop
/home/csy/func/inst/n59_lb.S:76
bfc06b84:	3c09c59c 	lui	t1,0xc59c
bfc06b88:	3529d73c 	ori	t1,t1,0xd73c
bfc06b8c:	3c08800d 	lui	t0,0x800d
bfc06b90:	2403003c 	li	v1,60
bfc06b94:	ad095fd8 	sw	t1,24536(t0)
bfc06b98:	25040004 	addiu	a0,t0,4
bfc06b9c:	2505fff8 	addiu	a1,t0,-8
bfc06ba0:	ac845fd8 	sw	a0,24536(a0)
bfc06ba4:	aca55fd8 	sw	a1,24536(a1)
bfc06ba8:	81025fd8 	lb	v0,24536(t0)
bfc06bac:	8c855fd8 	lw	a1,24536(a0)
bfc06bb0:	8ca45fd8 	lw	a0,24536(a1)
bfc06bb4:	8ca65fd8 	lw	a2,24536(a1)
bfc06bb8:	144303df 	bne	v0,v1,bfc07b38 <inst_error>
bfc06bbc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:77
bfc06bc0:	3c09994a 	lui	t1,0x994a
bfc06bc4:	35297300 	ori	t1,t1,0x7300
bfc06bc8:	3c08800d 	lui	t0,0x800d
bfc06bcc:	2403004a 	li	v1,74
bfc06bd0:	ad0972c8 	sw	t1,29384(t0)
bfc06bd4:	25040004 	addiu	a0,t0,4
bfc06bd8:	2505fff8 	addiu	a1,t0,-8
bfc06bdc:	ac8472c8 	sw	a0,29384(a0)
bfc06be0:	aca572c8 	sw	a1,29384(a1)
bfc06be4:	810272ca 	lb	v0,29386(t0)
bfc06be8:	8c8572c8 	lw	a1,29384(a0)
bfc06bec:	8ca472c8 	lw	a0,29384(a1)
bfc06bf0:	8ca672c8 	lw	a2,29384(a1)
bfc06bf4:	144303d0 	bne	v0,v1,bfc07b38 <inst_error>
bfc06bf8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:78
bfc06bfc:	3c097e40 	lui	t1,0x7e40
bfc06c00:	352951cd 	ori	t1,t1,0x51cd
bfc06c04:	3c08800d 	lui	t0,0x800d
bfc06c08:	24030040 	li	v1,64
bfc06c0c:	3c010001 	lui	at,0x1
bfc06c10:	00280821 	addu	at,at,t0
bfc06c14:	ac29acd8 	sw	t1,-21288(at)
bfc06c18:	25040004 	addiu	a0,t0,4
bfc06c1c:	2505fff8 	addiu	a1,t0,-8
bfc06c20:	3c010001 	lui	at,0x1
bfc06c24:	00240821 	addu	at,at,a0
bfc06c28:	ac24acd8 	sw	a0,-21288(at)
bfc06c2c:	3c010001 	lui	at,0x1
bfc06c30:	00250821 	addu	at,at,a1
bfc06c34:	ac25acd8 	sw	a1,-21288(at)
bfc06c38:	3c020001 	lui	v0,0x1
bfc06c3c:	00481021 	addu	v0,v0,t0
bfc06c40:	8042acda 	lb	v0,-21286(v0)
bfc06c44:	3c050001 	lui	a1,0x1
bfc06c48:	00a42821 	addu	a1,a1,a0
bfc06c4c:	8ca5acd8 	lw	a1,-21288(a1)
bfc06c50:	3c040001 	lui	a0,0x1
bfc06c54:	00852021 	addu	a0,a0,a1
bfc06c58:	8c84acd8 	lw	a0,-21288(a0)
bfc06c5c:	3c060001 	lui	a2,0x1
bfc06c60:	00c53021 	addu	a2,a2,a1
bfc06c64:	8cc6acd8 	lw	a2,-21288(a2)
bfc06c68:	144303b3 	bne	v0,v1,bfc07b38 <inst_error>
bfc06c6c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:79
bfc06c70:	3c09ba9f 	lui	t1,0xba9f
bfc06c74:	3529b840 	ori	t1,t1,0xb840
bfc06c78:	3c08800d 	lui	t0,0x800d
bfc06c7c:	24030040 	li	v1,64
bfc06c80:	ad096b8c 	sw	t1,27532(t0)
bfc06c84:	25040004 	addiu	a0,t0,4
bfc06c88:	2505fff8 	addiu	a1,t0,-8
bfc06c8c:	ac846b8c 	sw	a0,27532(a0)
bfc06c90:	aca56b8c 	sw	a1,27532(a1)
bfc06c94:	81026b8c 	lb	v0,27532(t0)
bfc06c98:	8c856b8c 	lw	a1,27532(a0)
bfc06c9c:	8ca46b8c 	lw	a0,27532(a1)
bfc06ca0:	8ca66b8c 	lw	a2,27532(a1)
bfc06ca4:	144303a4 	bne	v0,v1,bfc07b38 <inst_error>
bfc06ca8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:80
bfc06cac:	3c097d10 	lui	t1,0x7d10
bfc06cb0:	35299500 	ori	t1,t1,0x9500
bfc06cb4:	3c08800d 	lui	t0,0x800d
bfc06cb8:	2403007d 	li	v1,125
bfc06cbc:	3c010001 	lui	at,0x1
bfc06cc0:	00280821 	addu	at,at,t0
bfc06cc4:	ac29d8f4 	sw	t1,-9996(at)
bfc06cc8:	25040004 	addiu	a0,t0,4
bfc06ccc:	2505fff8 	addiu	a1,t0,-8
bfc06cd0:	3c010001 	lui	at,0x1
bfc06cd4:	00240821 	addu	at,at,a0
bfc06cd8:	ac24d8f4 	sw	a0,-9996(at)
bfc06cdc:	3c010001 	lui	at,0x1
bfc06ce0:	00250821 	addu	at,at,a1
bfc06ce4:	ac25d8f4 	sw	a1,-9996(at)
bfc06ce8:	3c020001 	lui	v0,0x1
bfc06cec:	00481021 	addu	v0,v0,t0
bfc06cf0:	8042d8f7 	lb	v0,-9993(v0)
bfc06cf4:	3c050001 	lui	a1,0x1
bfc06cf8:	00a42821 	addu	a1,a1,a0
bfc06cfc:	8ca5d8f4 	lw	a1,-9996(a1)
bfc06d00:	3c040001 	lui	a0,0x1
bfc06d04:	00852021 	addu	a0,a0,a1
bfc06d08:	8c84d8f4 	lw	a0,-9996(a0)
bfc06d0c:	3c060001 	lui	a2,0x1
bfc06d10:	00c53021 	addu	a2,a2,a1
bfc06d14:	8cc6d8f4 	lw	a2,-9996(a2)
bfc06d18:	14430387 	bne	v0,v1,bfc07b38 <inst_error>
bfc06d1c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:81
bfc06d20:	3c09da70 	lui	t1,0xda70
bfc06d24:	35299060 	ori	t1,t1,0x9060
bfc06d28:	3c08800d 	lui	t0,0x800d
bfc06d2c:	24030060 	li	v1,96
bfc06d30:	3c010001 	lui	at,0x1
bfc06d34:	00280821 	addu	at,at,t0
bfc06d38:	ac298780 	sw	t1,-30848(at)
bfc06d3c:	25040004 	addiu	a0,t0,4
bfc06d40:	2505fff8 	addiu	a1,t0,-8
bfc06d44:	3c010001 	lui	at,0x1
bfc06d48:	00240821 	addu	at,at,a0
bfc06d4c:	ac248780 	sw	a0,-30848(at)
bfc06d50:	3c010001 	lui	at,0x1
bfc06d54:	00250821 	addu	at,at,a1
bfc06d58:	ac258780 	sw	a1,-30848(at)
bfc06d5c:	3c020001 	lui	v0,0x1
bfc06d60:	00481021 	addu	v0,v0,t0
bfc06d64:	80428780 	lb	v0,-30848(v0)
bfc06d68:	3c050001 	lui	a1,0x1
bfc06d6c:	00a42821 	addu	a1,a1,a0
bfc06d70:	8ca58780 	lw	a1,-30848(a1)
bfc06d74:	3c040001 	lui	a0,0x1
bfc06d78:	00852021 	addu	a0,a0,a1
bfc06d7c:	8c848780 	lw	a0,-30848(a0)
bfc06d80:	3c060001 	lui	a2,0x1
bfc06d84:	00c53021 	addu	a2,a2,a1
bfc06d88:	8cc68780 	lw	a2,-30848(a2)
bfc06d8c:	1443036a 	bne	v0,v1,bfc07b38 <inst_error>
bfc06d90:	00000000 	nop
/home/csy/func/inst/n59_lb.S:82
bfc06d94:	3c09a59f 	lui	t1,0xa59f
bfc06d98:	35299eb8 	ori	t1,t1,0x9eb8
bfc06d9c:	3c08800d 	lui	t0,0x800d
bfc06da0:	2403ffb8 	li	v1,-72
bfc06da4:	ad095590 	sw	t1,21904(t0)
bfc06da8:	25040004 	addiu	a0,t0,4
bfc06dac:	2505fff8 	addiu	a1,t0,-8
bfc06db0:	ac845590 	sw	a0,21904(a0)
bfc06db4:	aca55590 	sw	a1,21904(a1)
bfc06db8:	81025590 	lb	v0,21904(t0)
bfc06dbc:	8c855590 	lw	a1,21904(a0)
bfc06dc0:	8ca45590 	lw	a0,21904(a1)
bfc06dc4:	8ca65590 	lw	a2,21904(a1)
bfc06dc8:	1443035b 	bne	v0,v1,bfc07b38 <inst_error>
bfc06dcc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:83
bfc06dd0:	3c091b9b 	lui	t1,0x1b9b
bfc06dd4:	35299d20 	ori	t1,t1,0x9d20
bfc06dd8:	3c08800d 	lui	t0,0x800d
bfc06ddc:	24030020 	li	v1,32
bfc06de0:	3c010001 	lui	at,0x1
bfc06de4:	00280821 	addu	at,at,t0
bfc06de8:	ac29b958 	sw	t1,-18088(at)
bfc06dec:	25040004 	addiu	a0,t0,4
bfc06df0:	2505fff8 	addiu	a1,t0,-8
bfc06df4:	3c010001 	lui	at,0x1
bfc06df8:	00240821 	addu	at,at,a0
bfc06dfc:	ac24b958 	sw	a0,-18088(at)
bfc06e00:	3c010001 	lui	at,0x1
bfc06e04:	00250821 	addu	at,at,a1
bfc06e08:	ac25b958 	sw	a1,-18088(at)
bfc06e0c:	3c020001 	lui	v0,0x1
bfc06e10:	00481021 	addu	v0,v0,t0
bfc06e14:	8042b958 	lb	v0,-18088(v0)
bfc06e18:	3c050001 	lui	a1,0x1
bfc06e1c:	00a42821 	addu	a1,a1,a0
bfc06e20:	8ca5b958 	lw	a1,-18088(a1)
bfc06e24:	3c040001 	lui	a0,0x1
bfc06e28:	00852021 	addu	a0,a0,a1
bfc06e2c:	8c84b958 	lw	a0,-18088(a0)
bfc06e30:	3c060001 	lui	a2,0x1
bfc06e34:	00c53021 	addu	a2,a2,a1
bfc06e38:	8cc6b958 	lw	a2,-18088(a2)
bfc06e3c:	1443033e 	bne	v0,v1,bfc07b38 <inst_error>
bfc06e40:	00000000 	nop
/home/csy/func/inst/n59_lb.S:84
bfc06e44:	3c09e945 	lui	t1,0xe945
bfc06e48:	3529cba3 	ori	t1,t1,0xcba3
bfc06e4c:	3c08800d 	lui	t0,0x800d
bfc06e50:	2403ffa3 	li	v1,-93
bfc06e54:	3c010001 	lui	at,0x1
bfc06e58:	00280821 	addu	at,at,t0
bfc06e5c:	ac29ebbc 	sw	t1,-5188(at)
bfc06e60:	25040004 	addiu	a0,t0,4
bfc06e64:	2505fff8 	addiu	a1,t0,-8
bfc06e68:	3c010001 	lui	at,0x1
bfc06e6c:	00240821 	addu	at,at,a0
bfc06e70:	ac24ebbc 	sw	a0,-5188(at)
bfc06e74:	3c010001 	lui	at,0x1
bfc06e78:	00250821 	addu	at,at,a1
bfc06e7c:	ac25ebbc 	sw	a1,-5188(at)
bfc06e80:	3c020001 	lui	v0,0x1
bfc06e84:	00481021 	addu	v0,v0,t0
bfc06e88:	8042ebbc 	lb	v0,-5188(v0)
bfc06e8c:	3c050001 	lui	a1,0x1
bfc06e90:	00a42821 	addu	a1,a1,a0
bfc06e94:	8ca5ebbc 	lw	a1,-5188(a1)
bfc06e98:	3c040001 	lui	a0,0x1
bfc06e9c:	00852021 	addu	a0,a0,a1
bfc06ea0:	8c84ebbc 	lw	a0,-5188(a0)
bfc06ea4:	3c060001 	lui	a2,0x1
bfc06ea8:	00c53021 	addu	a2,a2,a1
bfc06eac:	8cc6ebbc 	lw	a2,-5188(a2)
bfc06eb0:	14430321 	bne	v0,v1,bfc07b38 <inst_error>
bfc06eb4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:85
bfc06eb8:	3c096122 	lui	t1,0x6122
bfc06ebc:	3529f40e 	ori	t1,t1,0xf40e
bfc06ec0:	3c08800d 	lui	t0,0x800d
bfc06ec4:	24030022 	li	v1,34
bfc06ec8:	3c010001 	lui	at,0x1
bfc06ecc:	00280821 	addu	at,at,t0
bfc06ed0:	ac29e378 	sw	t1,-7304(at)
bfc06ed4:	25040004 	addiu	a0,t0,4
bfc06ed8:	2505fff8 	addiu	a1,t0,-8
bfc06edc:	3c010001 	lui	at,0x1
bfc06ee0:	00240821 	addu	at,at,a0
bfc06ee4:	ac24e378 	sw	a0,-7304(at)
bfc06ee8:	3c010001 	lui	at,0x1
bfc06eec:	00250821 	addu	at,at,a1
bfc06ef0:	ac25e378 	sw	a1,-7304(at)
bfc06ef4:	3c020001 	lui	v0,0x1
bfc06ef8:	00481021 	addu	v0,v0,t0
bfc06efc:	8042e37a 	lb	v0,-7302(v0)
bfc06f00:	3c050001 	lui	a1,0x1
bfc06f04:	00a42821 	addu	a1,a1,a0
bfc06f08:	8ca5e378 	lw	a1,-7304(a1)
bfc06f0c:	3c040001 	lui	a0,0x1
bfc06f10:	00852021 	addu	a0,a0,a1
bfc06f14:	8c84e378 	lw	a0,-7304(a0)
bfc06f18:	3c060001 	lui	a2,0x1
bfc06f1c:	00c53021 	addu	a2,a2,a1
bfc06f20:	8cc6e378 	lw	a2,-7304(a2)
bfc06f24:	14430304 	bne	v0,v1,bfc07b38 <inst_error>
bfc06f28:	00000000 	nop
/home/csy/func/inst/n59_lb.S:86
bfc06f2c:	3c09066c 	lui	t1,0x66c
bfc06f30:	3529dae8 	ori	t1,t1,0xdae8
bfc06f34:	3c08800d 	lui	t0,0x800d
bfc06f38:	2403006c 	li	v1,108
bfc06f3c:	ad095d14 	sw	t1,23828(t0)
bfc06f40:	25040004 	addiu	a0,t0,4
bfc06f44:	2505fff8 	addiu	a1,t0,-8
bfc06f48:	ac845d14 	sw	a0,23828(a0)
bfc06f4c:	aca55d14 	sw	a1,23828(a1)
bfc06f50:	81025d16 	lb	v0,23830(t0)
bfc06f54:	8c855d14 	lw	a1,23828(a0)
bfc06f58:	8ca45d14 	lw	a0,23828(a1)
bfc06f5c:	8ca65d14 	lw	a2,23828(a1)
bfc06f60:	144302f5 	bne	v0,v1,bfc07b38 <inst_error>
bfc06f64:	00000000 	nop
/home/csy/func/inst/n59_lb.S:87
bfc06f68:	3c0931ce 	lui	t1,0x31ce
bfc06f6c:	35294d3c 	ori	t1,t1,0x4d3c
bfc06f70:	3c08800d 	lui	t0,0x800d
bfc06f74:	2403003c 	li	v1,60
bfc06f78:	3c010001 	lui	at,0x1
bfc06f7c:	00280821 	addu	at,at,t0
bfc06f80:	ac29df28 	sw	t1,-8408(at)
bfc06f84:	25040004 	addiu	a0,t0,4
bfc06f88:	2505fff8 	addiu	a1,t0,-8
bfc06f8c:	3c010001 	lui	at,0x1
bfc06f90:	00240821 	addu	at,at,a0
bfc06f94:	ac24df28 	sw	a0,-8408(at)
bfc06f98:	3c010001 	lui	at,0x1
bfc06f9c:	00250821 	addu	at,at,a1
bfc06fa0:	ac25df28 	sw	a1,-8408(at)
bfc06fa4:	3c020001 	lui	v0,0x1
bfc06fa8:	00481021 	addu	v0,v0,t0
bfc06fac:	8042df28 	lb	v0,-8408(v0)
bfc06fb0:	3c050001 	lui	a1,0x1
bfc06fb4:	00a42821 	addu	a1,a1,a0
bfc06fb8:	8ca5df28 	lw	a1,-8408(a1)
bfc06fbc:	3c040001 	lui	a0,0x1
bfc06fc0:	00852021 	addu	a0,a0,a1
bfc06fc4:	8c84df28 	lw	a0,-8408(a0)
bfc06fc8:	3c060001 	lui	a2,0x1
bfc06fcc:	00c53021 	addu	a2,a2,a1
bfc06fd0:	8cc6df28 	lw	a2,-8408(a2)
bfc06fd4:	144302d8 	bne	v0,v1,bfc07b38 <inst_error>
bfc06fd8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:88
bfc06fdc:	3c09e95b 	lui	t1,0xe95b
bfc06fe0:	3529473a 	ori	t1,t1,0x473a
bfc06fe4:	3c08800d 	lui	t0,0x800d
bfc06fe8:	2403003a 	li	v1,58
bfc06fec:	3c010001 	lui	at,0x1
bfc06ff0:	00280821 	addu	at,at,t0
bfc06ff4:	ac299c80 	sw	t1,-25472(at)
bfc06ff8:	25040004 	addiu	a0,t0,4
bfc06ffc:	2505fff8 	addiu	a1,t0,-8
bfc07000:	3c010001 	lui	at,0x1
bfc07004:	00240821 	addu	at,at,a0
bfc07008:	ac249c80 	sw	a0,-25472(at)
bfc0700c:	3c010001 	lui	at,0x1
bfc07010:	00250821 	addu	at,at,a1
bfc07014:	ac259c80 	sw	a1,-25472(at)
bfc07018:	3c020001 	lui	v0,0x1
bfc0701c:	00481021 	addu	v0,v0,t0
bfc07020:	80429c80 	lb	v0,-25472(v0)
bfc07024:	3c050001 	lui	a1,0x1
bfc07028:	00a42821 	addu	a1,a1,a0
bfc0702c:	8ca59c80 	lw	a1,-25472(a1)
bfc07030:	3c040001 	lui	a0,0x1
bfc07034:	00852021 	addu	a0,a0,a1
bfc07038:	8c849c80 	lw	a0,-25472(a0)
bfc0703c:	3c060001 	lui	a2,0x1
bfc07040:	00c53021 	addu	a2,a2,a1
bfc07044:	8cc69c80 	lw	a2,-25472(a2)
bfc07048:	144302bb 	bne	v0,v1,bfc07b38 <inst_error>
bfc0704c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:89
bfc07050:	3c0927a2 	lui	t1,0x27a2
bfc07054:	3529d01c 	ori	t1,t1,0xd01c
bfc07058:	3c08800d 	lui	t0,0x800d
bfc0705c:	24030027 	li	v1,39
bfc07060:	ad094d24 	sw	t1,19748(t0)
bfc07064:	25040004 	addiu	a0,t0,4
bfc07068:	2505fff8 	addiu	a1,t0,-8
bfc0706c:	ac844d24 	sw	a0,19748(a0)
bfc07070:	aca54d24 	sw	a1,19748(a1)
bfc07074:	81024d27 	lb	v0,19751(t0)
bfc07078:	8c854d24 	lw	a1,19748(a0)
bfc0707c:	8ca44d24 	lw	a0,19748(a1)
bfc07080:	8ca64d24 	lw	a2,19748(a1)
bfc07084:	144302ac 	bne	v0,v1,bfc07b38 <inst_error>
bfc07088:	00000000 	nop
/home/csy/func/inst/n59_lb.S:90
bfc0708c:	3c09d3db 	lui	t1,0xd3db
bfc07090:	3529cfc8 	ori	t1,t1,0xcfc8
bfc07094:	3c08800d 	lui	t0,0x800d
bfc07098:	2403ffdb 	li	v1,-37
bfc0709c:	3c010001 	lui	at,0x1
bfc070a0:	00280821 	addu	at,at,t0
bfc070a4:	ac29f20c 	sw	t1,-3572(at)
bfc070a8:	25040004 	addiu	a0,t0,4
bfc070ac:	2505fff8 	addiu	a1,t0,-8
bfc070b0:	3c010001 	lui	at,0x1
bfc070b4:	00240821 	addu	at,at,a0
bfc070b8:	ac24f20c 	sw	a0,-3572(at)
bfc070bc:	3c010001 	lui	at,0x1
bfc070c0:	00250821 	addu	at,at,a1
bfc070c4:	ac25f20c 	sw	a1,-3572(at)
bfc070c8:	3c020001 	lui	v0,0x1
bfc070cc:	00481021 	addu	v0,v0,t0
bfc070d0:	8042f20e 	lb	v0,-3570(v0)
bfc070d4:	3c050001 	lui	a1,0x1
bfc070d8:	00a42821 	addu	a1,a1,a0
bfc070dc:	8ca5f20c 	lw	a1,-3572(a1)
bfc070e0:	3c040001 	lui	a0,0x1
bfc070e4:	00852021 	addu	a0,a0,a1
bfc070e8:	8c84f20c 	lw	a0,-3572(a0)
bfc070ec:	3c060001 	lui	a2,0x1
bfc070f0:	00c53021 	addu	a2,a2,a1
bfc070f4:	8cc6f20c 	lw	a2,-3572(a2)
bfc070f8:	1443028f 	bne	v0,v1,bfc07b38 <inst_error>
bfc070fc:	00000000 	nop
/home/csy/func/inst/n59_lb.S:91
bfc07100:	3c09604f 	lui	t1,0x604f
bfc07104:	3529bdca 	ori	t1,t1,0xbdca
bfc07108:	3c08800d 	lui	t0,0x800d
bfc0710c:	2403ffca 	li	v1,-54
bfc07110:	3c010001 	lui	at,0x1
bfc07114:	00280821 	addu	at,at,t0
bfc07118:	ac29c604 	sw	t1,-14844(at)
bfc0711c:	25040004 	addiu	a0,t0,4
bfc07120:	2505fff8 	addiu	a1,t0,-8
bfc07124:	3c010001 	lui	at,0x1
bfc07128:	00240821 	addu	at,at,a0
bfc0712c:	ac24c604 	sw	a0,-14844(at)
bfc07130:	3c010001 	lui	at,0x1
bfc07134:	00250821 	addu	at,at,a1
bfc07138:	ac25c604 	sw	a1,-14844(at)
bfc0713c:	3c020001 	lui	v0,0x1
bfc07140:	00481021 	addu	v0,v0,t0
bfc07144:	8042c604 	lb	v0,-14844(v0)
bfc07148:	3c050001 	lui	a1,0x1
bfc0714c:	00a42821 	addu	a1,a1,a0
bfc07150:	8ca5c604 	lw	a1,-14844(a1)
bfc07154:	3c040001 	lui	a0,0x1
bfc07158:	00852021 	addu	a0,a0,a1
bfc0715c:	8c84c604 	lw	a0,-14844(a0)
bfc07160:	3c060001 	lui	a2,0x1
bfc07164:	00c53021 	addu	a2,a2,a1
bfc07168:	8cc6c604 	lw	a2,-14844(a2)
bfc0716c:	14430272 	bne	v0,v1,bfc07b38 <inst_error>
bfc07170:	00000000 	nop
/home/csy/func/inst/n59_lb.S:92
bfc07174:	3c09d319 	lui	t1,0xd319
bfc07178:	3529d84e 	ori	t1,t1,0xd84e
bfc0717c:	3c08800d 	lui	t0,0x800d
bfc07180:	2403004e 	li	v1,78
bfc07184:	ad094a74 	sw	t1,19060(t0)
bfc07188:	25040004 	addiu	a0,t0,4
bfc0718c:	2505fff8 	addiu	a1,t0,-8
bfc07190:	ac844a74 	sw	a0,19060(a0)
bfc07194:	aca54a74 	sw	a1,19060(a1)
bfc07198:	81024a74 	lb	v0,19060(t0)
bfc0719c:	8c854a74 	lw	a1,19060(a0)
bfc071a0:	8ca44a74 	lw	a0,19060(a1)
bfc071a4:	8ca64a74 	lw	a2,19060(a1)
bfc071a8:	14430263 	bne	v0,v1,bfc07b38 <inst_error>
bfc071ac:	00000000 	nop
/home/csy/func/inst/n59_lb.S:93
bfc071b0:	3c096506 	lui	t1,0x6506
bfc071b4:	35292d8d 	ori	t1,t1,0x2d8d
bfc071b8:	3c08800d 	lui	t0,0x800d
bfc071bc:	2403ff8d 	li	v1,-115
bfc071c0:	ad0910bc 	sw	t1,4284(t0)
bfc071c4:	25040004 	addiu	a0,t0,4
bfc071c8:	2505fff8 	addiu	a1,t0,-8
bfc071cc:	ac8410bc 	sw	a0,4284(a0)
bfc071d0:	aca510bc 	sw	a1,4284(a1)
bfc071d4:	810210bc 	lb	v0,4284(t0)
bfc071d8:	8c8510bc 	lw	a1,4284(a0)
bfc071dc:	8ca410bc 	lw	a0,4284(a1)
bfc071e0:	8ca610bc 	lw	a2,4284(a1)
bfc071e4:	14430254 	bne	v0,v1,bfc07b38 <inst_error>
bfc071e8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:94
bfc071ec:	3c096b30 	lui	t1,0x6b30
bfc071f0:	3529c710 	ori	t1,t1,0xc710
bfc071f4:	3c08800d 	lui	t0,0x800d
bfc071f8:	24030030 	li	v1,48
bfc071fc:	3c010001 	lui	at,0x1
bfc07200:	00280821 	addu	at,at,t0
bfc07204:	ac29eee0 	sw	t1,-4384(at)
bfc07208:	25040004 	addiu	a0,t0,4
bfc0720c:	2505fff8 	addiu	a1,t0,-8
bfc07210:	3c010001 	lui	at,0x1
bfc07214:	00240821 	addu	at,at,a0
bfc07218:	ac24eee0 	sw	a0,-4384(at)
bfc0721c:	3c010001 	lui	at,0x1
bfc07220:	00250821 	addu	at,at,a1
bfc07224:	ac25eee0 	sw	a1,-4384(at)
bfc07228:	3c020001 	lui	v0,0x1
bfc0722c:	00481021 	addu	v0,v0,t0
bfc07230:	8042eee2 	lb	v0,-4382(v0)
bfc07234:	3c050001 	lui	a1,0x1
bfc07238:	00a42821 	addu	a1,a1,a0
bfc0723c:	8ca5eee0 	lw	a1,-4384(a1)
bfc07240:	3c040001 	lui	a0,0x1
bfc07244:	00852021 	addu	a0,a0,a1
bfc07248:	8c84eee0 	lw	a0,-4384(a0)
bfc0724c:	3c060001 	lui	a2,0x1
bfc07250:	00c53021 	addu	a2,a2,a1
bfc07254:	8cc6eee0 	lw	a2,-4384(a2)
bfc07258:	14430237 	bne	v0,v1,bfc07b38 <inst_error>
bfc0725c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:95
bfc07260:	3c090fa4 	lui	t1,0xfa4
bfc07264:	35295c2f 	ori	t1,t1,0x5c2f
bfc07268:	3c08800d 	lui	t0,0x800d
bfc0726c:	2403ffa4 	li	v1,-92
bfc07270:	3c010001 	lui	at,0x1
bfc07274:	00280821 	addu	at,at,t0
bfc07278:	ac29dd24 	sw	t1,-8924(at)
bfc0727c:	25040004 	addiu	a0,t0,4
bfc07280:	2505fff8 	addiu	a1,t0,-8
bfc07284:	3c010001 	lui	at,0x1
bfc07288:	00240821 	addu	at,at,a0
bfc0728c:	ac24dd24 	sw	a0,-8924(at)
bfc07290:	3c010001 	lui	at,0x1
bfc07294:	00250821 	addu	at,at,a1
bfc07298:	ac25dd24 	sw	a1,-8924(at)
bfc0729c:	3c020001 	lui	v0,0x1
bfc072a0:	00481021 	addu	v0,v0,t0
bfc072a4:	8042dd26 	lb	v0,-8922(v0)
bfc072a8:	3c050001 	lui	a1,0x1
bfc072ac:	00a42821 	addu	a1,a1,a0
bfc072b0:	8ca5dd24 	lw	a1,-8924(a1)
bfc072b4:	3c040001 	lui	a0,0x1
bfc072b8:	00852021 	addu	a0,a0,a1
bfc072bc:	8c84dd24 	lw	a0,-8924(a0)
bfc072c0:	3c060001 	lui	a2,0x1
bfc072c4:	00c53021 	addu	a2,a2,a1
bfc072c8:	8cc6dd24 	lw	a2,-8924(a2)
bfc072cc:	1443021a 	bne	v0,v1,bfc07b38 <inst_error>
bfc072d0:	00000000 	nop
/home/csy/func/inst/n59_lb.S:96
bfc072d4:	3c097904 	lui	t1,0x7904
bfc072d8:	3529ca38 	ori	t1,t1,0xca38
bfc072dc:	3c08800d 	lui	t0,0x800d
bfc072e0:	24030079 	li	v1,121
bfc072e4:	ad093fd8 	sw	t1,16344(t0)
bfc072e8:	25040004 	addiu	a0,t0,4
bfc072ec:	2505fff8 	addiu	a1,t0,-8
bfc072f0:	ac843fd8 	sw	a0,16344(a0)
bfc072f4:	aca53fd8 	sw	a1,16344(a1)
bfc072f8:	81023fdb 	lb	v0,16347(t0)
bfc072fc:	8c853fd8 	lw	a1,16344(a0)
bfc07300:	8ca43fd8 	lw	a0,16344(a1)
bfc07304:	8ca63fd8 	lw	a2,16344(a1)
bfc07308:	1443020b 	bne	v0,v1,bfc07b38 <inst_error>
bfc0730c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:97
bfc07310:	3c094811 	lui	t1,0x4811
bfc07314:	35291e40 	ori	t1,t1,0x1e40
bfc07318:	3c08800d 	lui	t0,0x800d
bfc0731c:	24030040 	li	v1,64
bfc07320:	3c010001 	lui	at,0x1
bfc07324:	00280821 	addu	at,at,t0
bfc07328:	ac29bd34 	sw	t1,-17100(at)
bfc0732c:	25040004 	addiu	a0,t0,4
bfc07330:	2505fff8 	addiu	a1,t0,-8
bfc07334:	3c010001 	lui	at,0x1
bfc07338:	00240821 	addu	at,at,a0
bfc0733c:	ac24bd34 	sw	a0,-17100(at)
bfc07340:	3c010001 	lui	at,0x1
bfc07344:	00250821 	addu	at,at,a1
bfc07348:	ac25bd34 	sw	a1,-17100(at)
bfc0734c:	3c020001 	lui	v0,0x1
bfc07350:	00481021 	addu	v0,v0,t0
bfc07354:	8042bd34 	lb	v0,-17100(v0)
bfc07358:	3c050001 	lui	a1,0x1
bfc0735c:	00a42821 	addu	a1,a1,a0
bfc07360:	8ca5bd34 	lw	a1,-17100(a1)
bfc07364:	3c040001 	lui	a0,0x1
bfc07368:	00852021 	addu	a0,a0,a1
bfc0736c:	8c84bd34 	lw	a0,-17100(a0)
bfc07370:	3c060001 	lui	a2,0x1
bfc07374:	00c53021 	addu	a2,a2,a1
bfc07378:	8cc6bd34 	lw	a2,-17100(a2)
bfc0737c:	144301ee 	bne	v0,v1,bfc07b38 <inst_error>
bfc07380:	00000000 	nop
/home/csy/func/inst/n59_lb.S:98
bfc07384:	3c098b11 	lui	t1,0x8b11
bfc07388:	35290828 	ori	t1,t1,0x828
bfc0738c:	3c08800d 	lui	t0,0x800d
bfc07390:	24030011 	li	v1,17
bfc07394:	3c010001 	lui	at,0x1
bfc07398:	00280821 	addu	at,at,t0
bfc0739c:	ac29b4bc 	sw	t1,-19268(at)
bfc073a0:	25040004 	addiu	a0,t0,4
bfc073a4:	2505fff8 	addiu	a1,t0,-8
bfc073a8:	3c010001 	lui	at,0x1
bfc073ac:	00240821 	addu	at,at,a0
bfc073b0:	ac24b4bc 	sw	a0,-19268(at)
bfc073b4:	3c010001 	lui	at,0x1
bfc073b8:	00250821 	addu	at,at,a1
bfc073bc:	ac25b4bc 	sw	a1,-19268(at)
bfc073c0:	3c020001 	lui	v0,0x1
bfc073c4:	00481021 	addu	v0,v0,t0
bfc073c8:	8042b4be 	lb	v0,-19266(v0)
bfc073cc:	3c050001 	lui	a1,0x1
bfc073d0:	00a42821 	addu	a1,a1,a0
bfc073d4:	8ca5b4bc 	lw	a1,-19268(a1)
bfc073d8:	3c040001 	lui	a0,0x1
bfc073dc:	00852021 	addu	a0,a0,a1
bfc073e0:	8c84b4bc 	lw	a0,-19268(a0)
bfc073e4:	3c060001 	lui	a2,0x1
bfc073e8:	00c53021 	addu	a2,a2,a1
bfc073ec:	8cc6b4bc 	lw	a2,-19268(a2)
bfc073f0:	144301d1 	bne	v0,v1,bfc07b38 <inst_error>
bfc073f4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:99
bfc073f8:	3c09366c 	lui	t1,0x366c
bfc073fc:	35293980 	ori	t1,t1,0x3980
bfc07400:	3c08800d 	lui	t0,0x800d
bfc07404:	2403ff80 	li	v1,-128
bfc07408:	3c010001 	lui	at,0x1
bfc0740c:	00280821 	addu	at,at,t0
bfc07410:	ac298eb8 	sw	t1,-29000(at)
bfc07414:	25040004 	addiu	a0,t0,4
bfc07418:	2505fff8 	addiu	a1,t0,-8
bfc0741c:	3c010001 	lui	at,0x1
bfc07420:	00240821 	addu	at,at,a0
bfc07424:	ac248eb8 	sw	a0,-29000(at)
bfc07428:	3c010001 	lui	at,0x1
bfc0742c:	00250821 	addu	at,at,a1
bfc07430:	ac258eb8 	sw	a1,-29000(at)
bfc07434:	3c020001 	lui	v0,0x1
bfc07438:	00481021 	addu	v0,v0,t0
bfc0743c:	80428eb8 	lb	v0,-29000(v0)
bfc07440:	3c050001 	lui	a1,0x1
bfc07444:	00a42821 	addu	a1,a1,a0
bfc07448:	8ca58eb8 	lw	a1,-29000(a1)
bfc0744c:	3c040001 	lui	a0,0x1
bfc07450:	00852021 	addu	a0,a0,a1
bfc07454:	8c848eb8 	lw	a0,-29000(a0)
bfc07458:	3c060001 	lui	a2,0x1
bfc0745c:	00c53021 	addu	a2,a2,a1
bfc07460:	8cc68eb8 	lw	a2,-29000(a2)
bfc07464:	144301b4 	bne	v0,v1,bfc07b38 <inst_error>
bfc07468:	00000000 	nop
/home/csy/func/inst/n59_lb.S:100
bfc0746c:	3c09afa6 	lui	t1,0xafa6
bfc07470:	35293c10 	ori	t1,t1,0x3c10
bfc07474:	3c08800d 	lui	t0,0x800d
bfc07478:	24030010 	li	v1,16
bfc0747c:	ad0913e8 	sw	t1,5096(t0)
bfc07480:	25040004 	addiu	a0,t0,4
bfc07484:	2505fff8 	addiu	a1,t0,-8
bfc07488:	ac8413e8 	sw	a0,5096(a0)
bfc0748c:	aca513e8 	sw	a1,5096(a1)
bfc07490:	810213e8 	lb	v0,5096(t0)
bfc07494:	8c8513e8 	lw	a1,5096(a0)
bfc07498:	8ca413e8 	lw	a0,5096(a1)
bfc0749c:	8ca613e8 	lw	a2,5096(a1)
bfc074a0:	144301a5 	bne	v0,v1,bfc07b38 <inst_error>
bfc074a4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:101
bfc074a8:	3c09305d 	lui	t1,0x305d
bfc074ac:	352945e5 	ori	t1,t1,0x45e5
bfc074b0:	3c08800d 	lui	t0,0x800d
bfc074b4:	2403005d 	li	v1,93
bfc074b8:	3c010001 	lui	at,0x1
bfc074bc:	00280821 	addu	at,at,t0
bfc074c0:	ac29bc3c 	sw	t1,-17348(at)
bfc074c4:	25040004 	addiu	a0,t0,4
bfc074c8:	2505fff8 	addiu	a1,t0,-8
bfc074cc:	3c010001 	lui	at,0x1
bfc074d0:	00240821 	addu	at,at,a0
bfc074d4:	ac24bc3c 	sw	a0,-17348(at)
bfc074d8:	3c010001 	lui	at,0x1
bfc074dc:	00250821 	addu	at,at,a1
bfc074e0:	ac25bc3c 	sw	a1,-17348(at)
bfc074e4:	3c020001 	lui	v0,0x1
bfc074e8:	00481021 	addu	v0,v0,t0
bfc074ec:	8042bc3e 	lb	v0,-17346(v0)
bfc074f0:	3c050001 	lui	a1,0x1
bfc074f4:	00a42821 	addu	a1,a1,a0
bfc074f8:	8ca5bc3c 	lw	a1,-17348(a1)
bfc074fc:	3c040001 	lui	a0,0x1
bfc07500:	00852021 	addu	a0,a0,a1
bfc07504:	8c84bc3c 	lw	a0,-17348(a0)
bfc07508:	3c060001 	lui	a2,0x1
bfc0750c:	00c53021 	addu	a2,a2,a1
bfc07510:	8cc6bc3c 	lw	a2,-17348(a2)
bfc07514:	14430188 	bne	v0,v1,bfc07b38 <inst_error>
bfc07518:	00000000 	nop
/home/csy/func/inst/n59_lb.S:102
bfc0751c:	3c09e165 	lui	t1,0xe165
bfc07520:	3529f7e0 	ori	t1,t1,0xf7e0
bfc07524:	3c08800d 	lui	t0,0x800d
bfc07528:	24030065 	li	v1,101
bfc0752c:	3c010001 	lui	at,0x1
bfc07530:	00280821 	addu	at,at,t0
bfc07534:	ac298f3c 	sw	t1,-28868(at)
bfc07538:	25040004 	addiu	a0,t0,4
bfc0753c:	2505fff8 	addiu	a1,t0,-8
bfc07540:	3c010001 	lui	at,0x1
bfc07544:	00240821 	addu	at,at,a0
bfc07548:	ac248f3c 	sw	a0,-28868(at)
bfc0754c:	3c010001 	lui	at,0x1
bfc07550:	00250821 	addu	at,at,a1
bfc07554:	ac258f3c 	sw	a1,-28868(at)
bfc07558:	3c020001 	lui	v0,0x1
bfc0755c:	00481021 	addu	v0,v0,t0
bfc07560:	80428f3e 	lb	v0,-28866(v0)
bfc07564:	3c050001 	lui	a1,0x1
bfc07568:	00a42821 	addu	a1,a1,a0
bfc0756c:	8ca58f3c 	lw	a1,-28868(a1)
bfc07570:	3c040001 	lui	a0,0x1
bfc07574:	00852021 	addu	a0,a0,a1
bfc07578:	8c848f3c 	lw	a0,-28868(a0)
bfc0757c:	3c060001 	lui	a2,0x1
bfc07580:	00c53021 	addu	a2,a2,a1
bfc07584:	8cc68f3c 	lw	a2,-28868(a2)
bfc07588:	1443016b 	bne	v0,v1,bfc07b38 <inst_error>
bfc0758c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:103
bfc07590:	3c09f282 	lui	t1,0xf282
bfc07594:	352995e8 	ori	t1,t1,0x95e8
bfc07598:	3c08800d 	lui	t0,0x800d
bfc0759c:	2403ff95 	li	v1,-107
bfc075a0:	ad0925fc 	sw	t1,9724(t0)
bfc075a4:	25040004 	addiu	a0,t0,4
bfc075a8:	2505fff8 	addiu	a1,t0,-8
bfc075ac:	ac8425fc 	sw	a0,9724(a0)
bfc075b0:	aca525fc 	sw	a1,9724(a1)
bfc075b4:	810225fd 	lb	v0,9725(t0)
bfc075b8:	8c8525fc 	lw	a1,9724(a0)
bfc075bc:	8ca425fc 	lw	a0,9724(a1)
bfc075c0:	8ca625fc 	lw	a2,9724(a1)
bfc075c4:	1443015c 	bne	v0,v1,bfc07b38 <inst_error>
bfc075c8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:104
bfc075cc:	3c097bcc 	lui	t1,0x7bcc
bfc075d0:	35290898 	ori	t1,t1,0x898
bfc075d4:	3c08800d 	lui	t0,0x800d
bfc075d8:	24030008 	li	v1,8
bfc075dc:	ad094c74 	sw	t1,19572(t0)
bfc075e0:	25040004 	addiu	a0,t0,4
bfc075e4:	2505fff8 	addiu	a1,t0,-8
bfc075e8:	ac844c74 	sw	a0,19572(a0)
bfc075ec:	aca54c74 	sw	a1,19572(a1)
bfc075f0:	81024c75 	lb	v0,19573(t0)
bfc075f4:	8c854c74 	lw	a1,19572(a0)
bfc075f8:	8ca44c74 	lw	a0,19572(a1)
bfc075fc:	8ca64c74 	lw	a2,19572(a1)
bfc07600:	1443014d 	bne	v0,v1,bfc07b38 <inst_error>
bfc07604:	00000000 	nop
/home/csy/func/inst/n59_lb.S:105
bfc07608:	3c09eaa1 	lui	t1,0xeaa1
bfc0760c:	352965b4 	ori	t1,t1,0x65b4
bfc07610:	3c08800d 	lui	t0,0x800d
bfc07614:	2403ffea 	li	v1,-22
bfc07618:	ad096378 	sw	t1,25464(t0)
bfc0761c:	25040004 	addiu	a0,t0,4
bfc07620:	2505fff8 	addiu	a1,t0,-8
bfc07624:	ac846378 	sw	a0,25464(a0)
bfc07628:	aca56378 	sw	a1,25464(a1)
bfc0762c:	8102637b 	lb	v0,25467(t0)
bfc07630:	8c856378 	lw	a1,25464(a0)
bfc07634:	8ca46378 	lw	a0,25464(a1)
bfc07638:	8ca66378 	lw	a2,25464(a1)
bfc0763c:	1443013e 	bne	v0,v1,bfc07b38 <inst_error>
bfc07640:	00000000 	nop
/home/csy/func/inst/n59_lb.S:106
bfc07644:	3c093ff5 	lui	t1,0x3ff5
bfc07648:	35297a80 	ori	t1,t1,0x7a80
bfc0764c:	3c08800d 	lui	t0,0x800d
bfc07650:	2403003f 	li	v1,63
bfc07654:	ad090f00 	sw	t1,3840(t0)
bfc07658:	25040004 	addiu	a0,t0,4
bfc0765c:	2505fff8 	addiu	a1,t0,-8
bfc07660:	ac840f00 	sw	a0,3840(a0)
bfc07664:	aca50f00 	sw	a1,3840(a1)
bfc07668:	81020f03 	lb	v0,3843(t0)
bfc0766c:	8c850f00 	lw	a1,3840(a0)
bfc07670:	8ca40f00 	lw	a0,3840(a1)
bfc07674:	8ca60f00 	lw	a2,3840(a1)
bfc07678:	1443012f 	bne	v0,v1,bfc07b38 <inst_error>
bfc0767c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:107
bfc07680:	3c09300e 	lui	t1,0x300e
bfc07684:	35298840 	ori	t1,t1,0x8840
bfc07688:	3c08800d 	lui	t0,0x800d
bfc0768c:	24030040 	li	v1,64
bfc07690:	ad091b04 	sw	t1,6916(t0)
bfc07694:	25040004 	addiu	a0,t0,4
bfc07698:	2505fff8 	addiu	a1,t0,-8
bfc0769c:	ac841b04 	sw	a0,6916(a0)
bfc076a0:	aca51b04 	sw	a1,6916(a1)
bfc076a4:	81021b04 	lb	v0,6916(t0)
bfc076a8:	8c851b04 	lw	a1,6916(a0)
bfc076ac:	8ca41b04 	lw	a0,6916(a1)
bfc076b0:	8ca61b04 	lw	a2,6916(a1)
bfc076b4:	14430120 	bne	v0,v1,bfc07b38 <inst_error>
bfc076b8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:108
bfc076bc:	3c09fb63 	lui	t1,0xfb63
bfc076c0:	3529b448 	ori	t1,t1,0xb448
bfc076c4:	3c08800d 	lui	t0,0x800d
bfc076c8:	24030048 	li	v1,72
bfc076cc:	ad090000 	sw	t1,0(t0)
bfc076d0:	25040004 	addiu	a0,t0,4
bfc076d4:	2505fff8 	addiu	a1,t0,-8
bfc076d8:	ac840000 	sw	a0,0(a0)
bfc076dc:	aca50000 	sw	a1,0(a1)
bfc076e0:	81020000 	lb	v0,0(t0)
bfc076e4:	8c850000 	lw	a1,0(a0)
bfc076e8:	8ca40000 	lw	a0,0(a1)
bfc076ec:	8ca60000 	lw	a2,0(a1)
bfc076f0:	14430111 	bne	v0,v1,bfc07b38 <inst_error>
bfc076f4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:109
bfc076f8:	3c09358c 	lui	t1,0x358c
bfc076fc:	35298a40 	ori	t1,t1,0x8a40
bfc07700:	3c08800d 	lui	t0,0x800d
bfc07704:	2403ff8c 	li	v1,-116
bfc07708:	ad090000 	sw	t1,0(t0)
bfc0770c:	25040004 	addiu	a0,t0,4
bfc07710:	2505fff8 	addiu	a1,t0,-8
bfc07714:	ac840000 	sw	a0,0(a0)
bfc07718:	aca50000 	sw	a1,0(a1)
bfc0771c:	81020002 	lb	v0,2(t0)
bfc07720:	8c850000 	lw	a1,0(a0)
bfc07724:	8ca40000 	lw	a0,0(a1)
bfc07728:	8ca60000 	lw	a2,0(a1)
bfc0772c:	14430102 	bne	v0,v1,bfc07b38 <inst_error>
bfc07730:	00000000 	nop
/home/csy/func/inst/n59_lb.S:110
bfc07734:	3c095e90 	lui	t1,0x5e90
bfc07738:	35293520 	ori	t1,t1,0x3520
bfc0773c:	3c08800d 	lui	t0,0x800d
bfc07740:	24030020 	li	v1,32
bfc07744:	ad090000 	sw	t1,0(t0)
bfc07748:	25040004 	addiu	a0,t0,4
bfc0774c:	2505fff8 	addiu	a1,t0,-8
bfc07750:	ac840000 	sw	a0,0(a0)
bfc07754:	aca50000 	sw	a1,0(a1)
bfc07758:	81020000 	lb	v0,0(t0)
bfc0775c:	8c850000 	lw	a1,0(a0)
bfc07760:	8ca40000 	lw	a0,0(a1)
bfc07764:	8ca60000 	lw	a2,0(a1)
bfc07768:	144300f3 	bne	v0,v1,bfc07b38 <inst_error>
bfc0776c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:111
bfc07770:	3c098383 	lui	t1,0x8383
bfc07774:	35292cc2 	ori	t1,t1,0x2cc2
bfc07778:	3c08800d 	lui	t0,0x800d
bfc0777c:	2403002c 	li	v1,44
bfc07780:	ad090000 	sw	t1,0(t0)
bfc07784:	25040004 	addiu	a0,t0,4
bfc07788:	2505fff8 	addiu	a1,t0,-8
bfc0778c:	ac840000 	sw	a0,0(a0)
bfc07790:	aca50000 	sw	a1,0(a1)
bfc07794:	81020001 	lb	v0,1(t0)
bfc07798:	8c850000 	lw	a1,0(a0)
bfc0779c:	8ca40000 	lw	a0,0(a1)
bfc077a0:	8ca60000 	lw	a2,0(a1)
bfc077a4:	144300e4 	bne	v0,v1,bfc07b38 <inst_error>
bfc077a8:	00000000 	nop
/home/csy/func/inst/n59_lb.S:112
bfc077ac:	3c094554 	lui	t1,0x4554
bfc077b0:	3529da80 	ori	t1,t1,0xda80
bfc077b4:	3c08800d 	lui	t0,0x800d
bfc077b8:	24030054 	li	v1,84
bfc077bc:	ad090000 	sw	t1,0(t0)
bfc077c0:	25040004 	addiu	a0,t0,4
bfc077c4:	2505fff8 	addiu	a1,t0,-8
bfc077c8:	ac840000 	sw	a0,0(a0)
bfc077cc:	aca50000 	sw	a1,0(a1)
bfc077d0:	81020002 	lb	v0,2(t0)
bfc077d4:	8c850000 	lw	a1,0(a0)
bfc077d8:	8ca40000 	lw	a0,0(a1)
bfc077dc:	8ca60000 	lw	a2,0(a1)
bfc077e0:	144300d5 	bne	v0,v1,bfc07b38 <inst_error>
bfc077e4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:113
bfc077e8:	3c098e31 	lui	t1,0x8e31
bfc077ec:	35290700 	ori	t1,t1,0x700
bfc077f0:	3c08800d 	lui	t0,0x800d
bfc077f4:	24030007 	li	v1,7
bfc077f8:	ad090000 	sw	t1,0(t0)
bfc077fc:	25040004 	addiu	a0,t0,4
bfc07800:	2505fff8 	addiu	a1,t0,-8
bfc07804:	ac840000 	sw	a0,0(a0)
bfc07808:	aca50000 	sw	a1,0(a1)
bfc0780c:	81020001 	lb	v0,1(t0)
bfc07810:	8c850000 	lw	a1,0(a0)
bfc07814:	8ca40000 	lw	a0,0(a1)
bfc07818:	8ca60000 	lw	a2,0(a1)
bfc0781c:	144300c6 	bne	v0,v1,bfc07b38 <inst_error>
bfc07820:	00000000 	nop
/home/csy/func/inst/n59_lb.S:114
bfc07824:	3c09f152 	lui	t1,0xf152
bfc07828:	3529d038 	ori	t1,t1,0xd038
bfc0782c:	3c08800d 	lui	t0,0x800d
bfc07830:	2403ffd0 	li	v1,-48
bfc07834:	ad090000 	sw	t1,0(t0)
bfc07838:	25040004 	addiu	a0,t0,4
bfc0783c:	2505fff8 	addiu	a1,t0,-8
bfc07840:	ac840000 	sw	a0,0(a0)
bfc07844:	aca50000 	sw	a1,0(a1)
bfc07848:	81020001 	lb	v0,1(t0)
bfc0784c:	8c850000 	lw	a1,0(a0)
bfc07850:	8ca40000 	lw	a0,0(a1)
bfc07854:	8ca60000 	lw	a2,0(a1)
bfc07858:	144300b7 	bne	v0,v1,bfc07b38 <inst_error>
bfc0785c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:115
bfc07860:	3c09a100 	lui	t1,0xa100
bfc07864:	3529c498 	ori	t1,t1,0xc498
bfc07868:	3c08800d 	lui	t0,0x800d
bfc0786c:	24030000 	li	v1,0
bfc07870:	ad090000 	sw	t1,0(t0)
bfc07874:	25040004 	addiu	a0,t0,4
bfc07878:	2505fff8 	addiu	a1,t0,-8
bfc0787c:	ac840000 	sw	a0,0(a0)
bfc07880:	aca50000 	sw	a1,0(a1)
bfc07884:	81020002 	lb	v0,2(t0)
bfc07888:	8c850000 	lw	a1,0(a0)
bfc0788c:	8ca40000 	lw	a0,0(a1)
bfc07890:	8ca60000 	lw	a2,0(a1)
bfc07894:	144300a8 	bne	v0,v1,bfc07b38 <inst_error>
bfc07898:	00000000 	nop
/home/csy/func/inst/n59_lb.S:116
bfc0789c:	3c09ea4a 	lui	t1,0xea4a
bfc078a0:	35299128 	ori	t1,t1,0x9128
bfc078a4:	3c08800d 	lui	t0,0x800d
bfc078a8:	2403ffea 	li	v1,-22
bfc078ac:	ad090000 	sw	t1,0(t0)
bfc078b0:	25040004 	addiu	a0,t0,4
bfc078b4:	2505fff8 	addiu	a1,t0,-8
bfc078b8:	ac840000 	sw	a0,0(a0)
bfc078bc:	aca50000 	sw	a1,0(a1)
bfc078c0:	81020003 	lb	v0,3(t0)
bfc078c4:	8c850000 	lw	a1,0(a0)
bfc078c8:	8ca40000 	lw	a0,0(a1)
bfc078cc:	8ca60000 	lw	a2,0(a1)
bfc078d0:	14430099 	bne	v0,v1,bfc07b38 <inst_error>
bfc078d4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:117
bfc078d8:	3c098941 	lui	t1,0x8941
bfc078dc:	3529eeb0 	ori	t1,t1,0xeeb0
bfc078e0:	3c08800d 	lui	t0,0x800d
bfc078e4:	2403ffb0 	li	v1,-80
bfc078e8:	ad090000 	sw	t1,0(t0)
bfc078ec:	25040004 	addiu	a0,t0,4
bfc078f0:	2505fff8 	addiu	a1,t0,-8
bfc078f4:	ac840000 	sw	a0,0(a0)
bfc078f8:	aca50000 	sw	a1,0(a1)
bfc078fc:	81020000 	lb	v0,0(t0)
bfc07900:	8c850000 	lw	a1,0(a0)
bfc07904:	8ca40000 	lw	a0,0(a1)
bfc07908:	8ca60000 	lw	a2,0(a1)
bfc0790c:	1443008a 	bne	v0,v1,bfc07b38 <inst_error>
bfc07910:	00000000 	nop
/home/csy/func/inst/n59_lb.S:118
bfc07914:	3c091b28 	lui	t1,0x1b28
bfc07918:	35299e0c 	ori	t1,t1,0x9e0c
bfc0791c:	3c08800d 	lui	t0,0x800d
bfc07920:	24030028 	li	v1,40
bfc07924:	ad090000 	sw	t1,0(t0)
bfc07928:	25040004 	addiu	a0,t0,4
bfc0792c:	2505fff8 	addiu	a1,t0,-8
bfc07930:	ac840000 	sw	a0,0(a0)
bfc07934:	aca50000 	sw	a1,0(a1)
bfc07938:	81020002 	lb	v0,2(t0)
bfc0793c:	8c850000 	lw	a1,0(a0)
bfc07940:	8ca40000 	lw	a0,0(a1)
bfc07944:	8ca60000 	lw	a2,0(a1)
bfc07948:	1443007b 	bne	v0,v1,bfc07b38 <inst_error>
bfc0794c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:119
bfc07950:	3c09333c 	lui	t1,0x333c
bfc07954:	35297a70 	ori	t1,t1,0x7a70
bfc07958:	3c08800d 	lui	t0,0x800d
bfc0795c:	2403003c 	li	v1,60
bfc07960:	ad090000 	sw	t1,0(t0)
bfc07964:	25040004 	addiu	a0,t0,4
bfc07968:	2505fff8 	addiu	a1,t0,-8
bfc0796c:	ac840000 	sw	a0,0(a0)
bfc07970:	aca50000 	sw	a1,0(a1)
bfc07974:	81020002 	lb	v0,2(t0)
bfc07978:	8c850000 	lw	a1,0(a0)
bfc0797c:	8ca40000 	lw	a0,0(a1)
bfc07980:	8ca60000 	lw	a2,0(a1)
bfc07984:	1443006c 	bne	v0,v1,bfc07b38 <inst_error>
bfc07988:	00000000 	nop
/home/csy/func/inst/n59_lb.S:120
bfc0798c:	3c09865e 	lui	t1,0x865e
bfc07990:	3529faf0 	ori	t1,t1,0xfaf0
bfc07994:	3c08800d 	lui	t0,0x800d
bfc07998:	2403005e 	li	v1,94
bfc0799c:	ad090000 	sw	t1,0(t0)
bfc079a0:	25040004 	addiu	a0,t0,4
bfc079a4:	2505fff8 	addiu	a1,t0,-8
bfc079a8:	ac840000 	sw	a0,0(a0)
bfc079ac:	aca50000 	sw	a1,0(a1)
bfc079b0:	81020002 	lb	v0,2(t0)
bfc079b4:	8c850000 	lw	a1,0(a0)
bfc079b8:	8ca40000 	lw	a0,0(a1)
bfc079bc:	8ca60000 	lw	a2,0(a1)
bfc079c0:	1443005d 	bne	v0,v1,bfc07b38 <inst_error>
bfc079c4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:121
bfc079c8:	3c09ac40 	lui	t1,0xac40
bfc079cc:	3529eea4 	ori	t1,t1,0xeea4
bfc079d0:	3c08800d 	lui	t0,0x800d
bfc079d4:	24030040 	li	v1,64
bfc079d8:	ad090000 	sw	t1,0(t0)
bfc079dc:	25040004 	addiu	a0,t0,4
bfc079e0:	2505fff8 	addiu	a1,t0,-8
bfc079e4:	ac840000 	sw	a0,0(a0)
bfc079e8:	aca50000 	sw	a1,0(a1)
bfc079ec:	81020002 	lb	v0,2(t0)
bfc079f0:	8c850000 	lw	a1,0(a0)
bfc079f4:	8ca40000 	lw	a0,0(a1)
bfc079f8:	8ca60000 	lw	a2,0(a1)
bfc079fc:	1443004e 	bne	v0,v1,bfc07b38 <inst_error>
bfc07a00:	00000000 	nop
/home/csy/func/inst/n59_lb.S:122
bfc07a04:	3c0924b5 	lui	t1,0x24b5
bfc07a08:	3529e96a 	ori	t1,t1,0xe96a
bfc07a0c:	3c08800d 	lui	t0,0x800d
bfc07a10:	2403ffb5 	li	v1,-75
bfc07a14:	ad090000 	sw	t1,0(t0)
bfc07a18:	25040004 	addiu	a0,t0,4
bfc07a1c:	2505fff8 	addiu	a1,t0,-8
bfc07a20:	ac840000 	sw	a0,0(a0)
bfc07a24:	aca50000 	sw	a1,0(a1)
bfc07a28:	81020002 	lb	v0,2(t0)
bfc07a2c:	8c850000 	lw	a1,0(a0)
bfc07a30:	8ca40000 	lw	a0,0(a1)
bfc07a34:	8ca60000 	lw	a2,0(a1)
bfc07a38:	1443003f 	bne	v0,v1,bfc07b38 <inst_error>
bfc07a3c:	00000000 	nop
/home/csy/func/inst/n59_lb.S:123
bfc07a40:	3c0931aa 	lui	t1,0x31aa
bfc07a44:	3529938c 	ori	t1,t1,0x938c
bfc07a48:	3c08800d 	lui	t0,0x800d
bfc07a4c:	2403ffaa 	li	v1,-86
bfc07a50:	ad090000 	sw	t1,0(t0)
bfc07a54:	25040004 	addiu	a0,t0,4
bfc07a58:	2505fff8 	addiu	a1,t0,-8
bfc07a5c:	ac840000 	sw	a0,0(a0)
bfc07a60:	aca50000 	sw	a1,0(a1)
bfc07a64:	81020002 	lb	v0,2(t0)
bfc07a68:	8c850000 	lw	a1,0(a0)
bfc07a6c:	8ca40000 	lw	a0,0(a1)
bfc07a70:	8ca60000 	lw	a2,0(a1)
bfc07a74:	14430030 	bne	v0,v1,bfc07b38 <inst_error>
bfc07a78:	00000000 	nop
/home/csy/func/inst/n59_lb.S:124
bfc07a7c:	3c090661 	lui	t1,0x661
bfc07a80:	3529cc00 	ori	t1,t1,0xcc00
bfc07a84:	3c08800d 	lui	t0,0x800d
bfc07a88:	24030006 	li	v1,6
bfc07a8c:	ad090000 	sw	t1,0(t0)
bfc07a90:	25040004 	addiu	a0,t0,4
bfc07a94:	2505fff8 	addiu	a1,t0,-8
bfc07a98:	ac840000 	sw	a0,0(a0)
bfc07a9c:	aca50000 	sw	a1,0(a1)
bfc07aa0:	81020003 	lb	v0,3(t0)
bfc07aa4:	8c850000 	lw	a1,0(a0)
bfc07aa8:	8ca40000 	lw	a0,0(a1)
bfc07aac:	8ca60000 	lw	a2,0(a1)
bfc07ab0:	14430021 	bne	v0,v1,bfc07b38 <inst_error>
bfc07ab4:	00000000 	nop
/home/csy/func/inst/n59_lb.S:125
bfc07ab8:	3c097eb8 	lui	t1,0x7eb8
bfc07abc:	352995a4 	ori	t1,t1,0x95a4
bfc07ac0:	3c08800d 	lui	t0,0x800d
bfc07ac4:	2403ff95 	li	v1,-107
bfc07ac8:	ad090000 	sw	t1,0(t0)
bfc07acc:	25040004 	addiu	a0,t0,4
bfc07ad0:	2505fff8 	addiu	a1,t0,-8
bfc07ad4:	ac840000 	sw	a0,0(a0)
bfc07ad8:	aca50000 	sw	a1,0(a1)
bfc07adc:	81020001 	lb	v0,1(t0)
bfc07ae0:	8c850000 	lw	a1,0(a0)
bfc07ae4:	8ca40000 	lw	a0,0(a1)
bfc07ae8:	8ca60000 	lw	a2,0(a1)
bfc07aec:	14430012 	bne	v0,v1,bfc07b38 <inst_error>
bfc07af0:	00000000 	nop
/home/csy/func/inst/n59_lb.S:126
bfc07af4:	24090000 	li	t1,0
bfc07af8:	3c08800d 	lui	t0,0x800d
bfc07afc:	24030000 	li	v1,0
bfc07b00:	ad090000 	sw	t1,0(t0)
bfc07b04:	25040004 	addiu	a0,t0,4
bfc07b08:	2505fff8 	addiu	a1,t0,-8
bfc07b0c:	ac840000 	sw	a0,0(a0)
bfc07b10:	aca50000 	sw	a1,0(a1)
bfc07b14:	81020000 	lb	v0,0(t0)
bfc07b18:	8c850000 	lw	a1,0(a0)
bfc07b1c:	8ca40000 	lw	a0,0(a1)
bfc07b20:	8ca60000 	lw	a2,0(a1)
bfc07b24:	14430004 	bne	v0,v1,bfc07b38 <inst_error>
bfc07b28:	00000000 	nop
/home/csy/func/inst/n59_lb.S:128
bfc07b2c:	16400002 	bnez	s2,bfc07b38 <inst_error>
/home/csy/func/inst/n59_lb.S:129
bfc07b30:	00000000 	nop
/home/csy/func/inst/n59_lb.S:131
bfc07b34:	26730001 	addiu	s3,s3,1

bfc07b38 <inst_error>:
/home/csy/func/inst/n59_lb.S:134
bfc07b38:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n59_lb.S:135
bfc07b3c:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n59_lb.S:136
bfc07b40:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n59_lb.S:137
bfc07b44:	03e00008 	jr	ra
/home/csy/func/inst/n59_lb.S:138
bfc07b48:	00000000 	nop
inst_error():
bfc07b4c:	00000000 	nop

bfc07b50 <n61_lh_test>:
/home/csy/func/inst/n61_lh.S:7
bfc07b50:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n61_lh.S:8
bfc07b54:	24120000 	li	s2,0
/home/csy/func/inst/n61_lh.S:10
bfc07b58:	3c095184 	lui	t1,0x5184
bfc07b5c:	35292560 	ori	t1,t1,0x2560
bfc07b60:	3c08800d 	lui	t0,0x800d
bfc07b64:	35082bc4 	ori	t0,t0,0x2bc4
bfc07b68:	24032560 	li	v1,9568
bfc07b6c:	ad09127c 	sw	t1,4732(t0)
bfc07b70:	25040004 	addiu	a0,t0,4
bfc07b74:	2505fff8 	addiu	a1,t0,-8
bfc07b78:	ac84127c 	sw	a0,4732(a0)
bfc07b7c:	aca5127c 	sw	a1,4732(a1)
bfc07b80:	8502127c 	lh	v0,4732(t0)
bfc07b84:	8c85127c 	lw	a1,4732(a0)
bfc07b88:	8ca4127c 	lw	a0,4732(a1)
bfc07b8c:	8ca6127c 	lw	a2,4732(a1)
bfc07b90:	144306fe 	bne	v0,v1,bfc0978c <inst_error>
bfc07b94:	00000000 	nop
/home/csy/func/inst/n61_lh.S:11
bfc07b98:	3c092516 	lui	t1,0x2516
bfc07b9c:	3529116e 	ori	t1,t1,0x116e
bfc07ba0:	3c08800d 	lui	t0,0x800d
bfc07ba4:	35082220 	ori	t0,t0,0x2220
bfc07ba8:	2403116e 	li	v1,4462
bfc07bac:	3c010001 	lui	at,0x1
bfc07bb0:	00280821 	addu	at,at,t0
bfc07bb4:	ac29a890 	sw	t1,-22384(at)
bfc07bb8:	25040004 	addiu	a0,t0,4
bfc07bbc:	2505fff8 	addiu	a1,t0,-8
bfc07bc0:	3c010001 	lui	at,0x1
bfc07bc4:	00240821 	addu	at,at,a0
bfc07bc8:	ac24a890 	sw	a0,-22384(at)
bfc07bcc:	3c010001 	lui	at,0x1
bfc07bd0:	00250821 	addu	at,at,a1
bfc07bd4:	ac25a890 	sw	a1,-22384(at)
bfc07bd8:	3c020001 	lui	v0,0x1
bfc07bdc:	00481021 	addu	v0,v0,t0
bfc07be0:	8442a890 	lh	v0,-22384(v0)
bfc07be4:	3c050001 	lui	a1,0x1
bfc07be8:	00a42821 	addu	a1,a1,a0
bfc07bec:	8ca5a890 	lw	a1,-22384(a1)
bfc07bf0:	3c040001 	lui	a0,0x1
bfc07bf4:	00852021 	addu	a0,a0,a1
bfc07bf8:	8c84a890 	lw	a0,-22384(a0)
bfc07bfc:	3c060001 	lui	a2,0x1
bfc07c00:	00c53021 	addu	a2,a2,a1
bfc07c04:	8cc6a890 	lw	a2,-22384(a2)
bfc07c08:	144306e0 	bne	v0,v1,bfc0978c <inst_error>
bfc07c0c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:12
bfc07c10:	3c094932 	lui	t1,0x4932
bfc07c14:	3529330c 	ori	t1,t1,0x330c
bfc07c18:	3c08800d 	lui	t0,0x800d
bfc07c1c:	35083810 	ori	t0,t0,0x3810
bfc07c20:	24034932 	li	v1,18738
bfc07c24:	3c010001 	lui	at,0x1
bfc07c28:	00280821 	addu	at,at,t0
bfc07c2c:	ac298524 	sw	t1,-31452(at)
bfc07c30:	25040004 	addiu	a0,t0,4
bfc07c34:	2505fff8 	addiu	a1,t0,-8
bfc07c38:	3c010001 	lui	at,0x1
bfc07c3c:	00240821 	addu	at,at,a0
bfc07c40:	ac248524 	sw	a0,-31452(at)
bfc07c44:	3c010001 	lui	at,0x1
bfc07c48:	00250821 	addu	at,at,a1
bfc07c4c:	ac258524 	sw	a1,-31452(at)
bfc07c50:	3c020001 	lui	v0,0x1
bfc07c54:	00481021 	addu	v0,v0,t0
bfc07c58:	84428526 	lh	v0,-31450(v0)
bfc07c5c:	3c050001 	lui	a1,0x1
bfc07c60:	00a42821 	addu	a1,a1,a0
bfc07c64:	8ca58524 	lw	a1,-31452(a1)
bfc07c68:	3c040001 	lui	a0,0x1
bfc07c6c:	00852021 	addu	a0,a0,a1
bfc07c70:	8c848524 	lw	a0,-31452(a0)
bfc07c74:	3c060001 	lui	a2,0x1
bfc07c78:	00c53021 	addu	a2,a2,a1
bfc07c7c:	8cc68524 	lw	a2,-31452(a2)
bfc07c80:	144306c2 	bne	v0,v1,bfc0978c <inst_error>
bfc07c84:	00000000 	nop
/home/csy/func/inst/n61_lh.S:13
bfc07c88:	3c09be4d 	lui	t1,0xbe4d
bfc07c8c:	35299ac8 	ori	t1,t1,0x9ac8
bfc07c90:	3c08800d 	lui	t0,0x800d
bfc07c94:	3508ac60 	ori	t0,t0,0xac60
bfc07c98:	2403be4d 	li	v1,-16819
bfc07c9c:	ad090090 	sw	t1,144(t0)
bfc07ca0:	25040004 	addiu	a0,t0,4
bfc07ca4:	2505fff8 	addiu	a1,t0,-8
bfc07ca8:	ac840090 	sw	a0,144(a0)
bfc07cac:	aca50090 	sw	a1,144(a1)
bfc07cb0:	85020092 	lh	v0,146(t0)
bfc07cb4:	8c850090 	lw	a1,144(a0)
bfc07cb8:	8ca40090 	lw	a0,144(a1)
bfc07cbc:	8ca60090 	lw	a2,144(a1)
bfc07cc0:	144306b2 	bne	v0,v1,bfc0978c <inst_error>
bfc07cc4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:14
bfc07cc8:	3c095f0c 	lui	t1,0x5f0c
bfc07ccc:	35290856 	ori	t1,t1,0x856
bfc07cd0:	3c08800d 	lui	t0,0x800d
bfc07cd4:	35081800 	ori	t0,t0,0x1800
bfc07cd8:	24030856 	li	v1,2134
bfc07cdc:	3c010001 	lui	at,0x1
bfc07ce0:	00280821 	addu	at,at,t0
bfc07ce4:	ac298964 	sw	t1,-30364(at)
bfc07ce8:	25040004 	addiu	a0,t0,4
bfc07cec:	2505fff8 	addiu	a1,t0,-8
bfc07cf0:	3c010001 	lui	at,0x1
bfc07cf4:	00240821 	addu	at,at,a0
bfc07cf8:	ac248964 	sw	a0,-30364(at)
bfc07cfc:	3c010001 	lui	at,0x1
bfc07d00:	00250821 	addu	at,at,a1
bfc07d04:	ac258964 	sw	a1,-30364(at)
bfc07d08:	3c020001 	lui	v0,0x1
bfc07d0c:	00481021 	addu	v0,v0,t0
bfc07d10:	84428964 	lh	v0,-30364(v0)
bfc07d14:	3c050001 	lui	a1,0x1
bfc07d18:	00a42821 	addu	a1,a1,a0
bfc07d1c:	8ca58964 	lw	a1,-30364(a1)
bfc07d20:	3c040001 	lui	a0,0x1
bfc07d24:	00852021 	addu	a0,a0,a1
bfc07d28:	8c848964 	lw	a0,-30364(a0)
bfc07d2c:	3c060001 	lui	a2,0x1
bfc07d30:	00c53021 	addu	a2,a2,a1
bfc07d34:	8cc68964 	lw	a2,-30364(a2)
bfc07d38:	14430694 	bne	v0,v1,bfc0978c <inst_error>
bfc07d3c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:15
bfc07d40:	3c09bfa5 	lui	t1,0xbfa5
bfc07d44:	3529bc80 	ori	t1,t1,0xbc80
bfc07d48:	3c08800d 	lui	t0,0x800d
bfc07d4c:	35089ca0 	ori	t0,t0,0x9ca0
bfc07d50:	2403bc80 	li	v1,-17280
bfc07d54:	ad092950 	sw	t1,10576(t0)
bfc07d58:	25040004 	addiu	a0,t0,4
bfc07d5c:	2505fff8 	addiu	a1,t0,-8
bfc07d60:	ac842950 	sw	a0,10576(a0)
bfc07d64:	aca52950 	sw	a1,10576(a1)
bfc07d68:	85022950 	lh	v0,10576(t0)
bfc07d6c:	8c852950 	lw	a1,10576(a0)
bfc07d70:	8ca42950 	lw	a0,10576(a1)
bfc07d74:	8ca62950 	lw	a2,10576(a1)
bfc07d78:	14430684 	bne	v0,v1,bfc0978c <inst_error>
bfc07d7c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:16
bfc07d80:	3c0967b0 	lui	t1,0x67b0
bfc07d84:	3529ca80 	ori	t1,t1,0xca80
bfc07d88:	3c08800d 	lui	t0,0x800d
bfc07d8c:	3508b258 	ori	t0,t0,0xb258
bfc07d90:	2403ca80 	li	v1,-13696
bfc07d94:	ad092f74 	sw	t1,12148(t0)
bfc07d98:	25040004 	addiu	a0,t0,4
bfc07d9c:	2505fff8 	addiu	a1,t0,-8
bfc07da0:	ac842f74 	sw	a0,12148(a0)
bfc07da4:	aca52f74 	sw	a1,12148(a1)
bfc07da8:	85022f74 	lh	v0,12148(t0)
bfc07dac:	8c852f74 	lw	a1,12148(a0)
bfc07db0:	8ca42f74 	lw	a0,12148(a1)
bfc07db4:	8ca62f74 	lw	a2,12148(a1)
bfc07db8:	14430674 	bne	v0,v1,bfc0978c <inst_error>
bfc07dbc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:17
bfc07dc0:	3c09b0c4 	lui	t1,0xb0c4
bfc07dc4:	3529ee88 	ori	t1,t1,0xee88
bfc07dc8:	3c08800d 	lui	t0,0x800d
bfc07dcc:	35080a08 	ori	t0,t0,0xa08
bfc07dd0:	2403ee88 	li	v1,-4472
bfc07dd4:	ad0929d4 	sw	t1,10708(t0)
bfc07dd8:	25040004 	addiu	a0,t0,4
bfc07ddc:	2505fff8 	addiu	a1,t0,-8
bfc07de0:	ac8429d4 	sw	a0,10708(a0)
bfc07de4:	aca529d4 	sw	a1,10708(a1)
bfc07de8:	850229d4 	lh	v0,10708(t0)
bfc07dec:	8c8529d4 	lw	a1,10708(a0)
bfc07df0:	8ca429d4 	lw	a0,10708(a1)
bfc07df4:	8ca629d4 	lw	a2,10708(a1)
bfc07df8:	14430664 	bne	v0,v1,bfc0978c <inst_error>
bfc07dfc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:18
bfc07e00:	3c09a28f 	lui	t1,0xa28f
bfc07e04:	3529bedc 	ori	t1,t1,0xbedc
bfc07e08:	3c08800d 	lui	t0,0x800d
bfc07e0c:	3508130c 	ori	t0,t0,0x130c
bfc07e10:	2403bedc 	li	v1,-16676
bfc07e14:	3c010001 	lui	at,0x1
bfc07e18:	00280821 	addu	at,at,t0
bfc07e1c:	ac29cf28 	sw	t1,-12504(at)
bfc07e20:	25040004 	addiu	a0,t0,4
bfc07e24:	2505fff8 	addiu	a1,t0,-8
bfc07e28:	3c010001 	lui	at,0x1
bfc07e2c:	00240821 	addu	at,at,a0
bfc07e30:	ac24cf28 	sw	a0,-12504(at)
bfc07e34:	3c010001 	lui	at,0x1
bfc07e38:	00250821 	addu	at,at,a1
bfc07e3c:	ac25cf28 	sw	a1,-12504(at)
bfc07e40:	3c020001 	lui	v0,0x1
bfc07e44:	00481021 	addu	v0,v0,t0
bfc07e48:	8442cf28 	lh	v0,-12504(v0)
bfc07e4c:	3c050001 	lui	a1,0x1
bfc07e50:	00a42821 	addu	a1,a1,a0
bfc07e54:	8ca5cf28 	lw	a1,-12504(a1)
bfc07e58:	3c040001 	lui	a0,0x1
bfc07e5c:	00852021 	addu	a0,a0,a1
bfc07e60:	8c84cf28 	lw	a0,-12504(a0)
bfc07e64:	3c060001 	lui	a2,0x1
bfc07e68:	00c53021 	addu	a2,a2,a1
bfc07e6c:	8cc6cf28 	lw	a2,-12504(a2)
bfc07e70:	14430646 	bne	v0,v1,bfc0978c <inst_error>
bfc07e74:	00000000 	nop
/home/csy/func/inst/n61_lh.S:19
bfc07e78:	3c090158 	lui	t1,0x158
bfc07e7c:	35299400 	ori	t1,t1,0x9400
bfc07e80:	3c08800d 	lui	t0,0x800d
bfc07e84:	35083568 	ori	t0,t0,0x3568
bfc07e88:	24030158 	li	v1,344
bfc07e8c:	3c010001 	lui	at,0x1
bfc07e90:	00280821 	addu	at,at,t0
bfc07e94:	ac299f34 	sw	t1,-24780(at)
bfc07e98:	25040004 	addiu	a0,t0,4
bfc07e9c:	2505fff8 	addiu	a1,t0,-8
bfc07ea0:	3c010001 	lui	at,0x1
bfc07ea4:	00240821 	addu	at,at,a0
bfc07ea8:	ac249f34 	sw	a0,-24780(at)
bfc07eac:	3c010001 	lui	at,0x1
bfc07eb0:	00250821 	addu	at,at,a1
bfc07eb4:	ac259f34 	sw	a1,-24780(at)
bfc07eb8:	3c020001 	lui	v0,0x1
bfc07ebc:	00481021 	addu	v0,v0,t0
bfc07ec0:	84429f36 	lh	v0,-24778(v0)
bfc07ec4:	3c050001 	lui	a1,0x1
bfc07ec8:	00a42821 	addu	a1,a1,a0
bfc07ecc:	8ca59f34 	lw	a1,-24780(a1)
bfc07ed0:	3c040001 	lui	a0,0x1
bfc07ed4:	00852021 	addu	a0,a0,a1
bfc07ed8:	8c849f34 	lw	a0,-24780(a0)
bfc07edc:	3c060001 	lui	a2,0x1
bfc07ee0:	00c53021 	addu	a2,a2,a1
bfc07ee4:	8cc69f34 	lw	a2,-24780(a2)
bfc07ee8:	14430628 	bne	v0,v1,bfc0978c <inst_error>
bfc07eec:	00000000 	nop
/home/csy/func/inst/n61_lh.S:20
bfc07ef0:	3c092048 	lui	t1,0x2048
bfc07ef4:	35293e02 	ori	t1,t1,0x3e02
bfc07ef8:	3c08800d 	lui	t0,0x800d
bfc07efc:	3508d600 	ori	t0,t0,0xd600
bfc07f00:	24033e02 	li	v1,15874
bfc07f04:	ad091e7c 	sw	t1,7804(t0)
bfc07f08:	25040004 	addiu	a0,t0,4
bfc07f0c:	2505fff8 	addiu	a1,t0,-8
bfc07f10:	ac841e7c 	sw	a0,7804(a0)
bfc07f14:	aca51e7c 	sw	a1,7804(a1)
bfc07f18:	85021e7c 	lh	v0,7804(t0)
bfc07f1c:	8c851e7c 	lw	a1,7804(a0)
bfc07f20:	8ca41e7c 	lw	a0,7804(a1)
bfc07f24:	8ca61e7c 	lw	a2,7804(a1)
bfc07f28:	14430618 	bne	v0,v1,bfc0978c <inst_error>
bfc07f2c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:21
bfc07f30:	3c096171 	lui	t1,0x6171
bfc07f34:	35298b00 	ori	t1,t1,0x8b00
bfc07f38:	3c08800d 	lui	t0,0x800d
bfc07f3c:	35088550 	ori	t0,t0,0x8550
bfc07f40:	24038b00 	li	v1,-29952
bfc07f44:	ad0924e0 	sw	t1,9440(t0)
bfc07f48:	25040004 	addiu	a0,t0,4
bfc07f4c:	2505fff8 	addiu	a1,t0,-8
bfc07f50:	ac8424e0 	sw	a0,9440(a0)
bfc07f54:	aca524e0 	sw	a1,9440(a1)
bfc07f58:	850224e0 	lh	v0,9440(t0)
bfc07f5c:	8c8524e0 	lw	a1,9440(a0)
bfc07f60:	8ca424e0 	lw	a0,9440(a1)
bfc07f64:	8ca624e0 	lw	a2,9440(a1)
bfc07f68:	14430608 	bne	v0,v1,bfc0978c <inst_error>
bfc07f6c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:22
bfc07f70:	3c09b204 	lui	t1,0xb204
bfc07f74:	35294740 	ori	t1,t1,0x4740
bfc07f78:	3c08800d 	lui	t0,0x800d
bfc07f7c:	35081a30 	ori	t0,t0,0x1a30
bfc07f80:	24034740 	li	v1,18240
bfc07f84:	ad096d88 	sw	t1,28040(t0)
bfc07f88:	25040004 	addiu	a0,t0,4
bfc07f8c:	2505fff8 	addiu	a1,t0,-8
bfc07f90:	ac846d88 	sw	a0,28040(a0)
bfc07f94:	aca56d88 	sw	a1,28040(a1)
bfc07f98:	85026d88 	lh	v0,28040(t0)
bfc07f9c:	8c856d88 	lw	a1,28040(a0)
bfc07fa0:	8ca46d88 	lw	a0,28040(a1)
bfc07fa4:	8ca66d88 	lw	a2,28040(a1)
bfc07fa8:	144305f8 	bne	v0,v1,bfc0978c <inst_error>
bfc07fac:	00000000 	nop
/home/csy/func/inst/n61_lh.S:23
bfc07fb0:	3c096dbe 	lui	t1,0x6dbe
bfc07fb4:	352993b6 	ori	t1,t1,0x93b6
bfc07fb8:	3c08800d 	lui	t0,0x800d
bfc07fbc:	35082a08 	ori	t0,t0,0x2a08
bfc07fc0:	240393b6 	li	v1,-27722
bfc07fc4:	ad0913e0 	sw	t1,5088(t0)
bfc07fc8:	25040004 	addiu	a0,t0,4
bfc07fcc:	2505fff8 	addiu	a1,t0,-8
bfc07fd0:	ac8413e0 	sw	a0,5088(a0)
bfc07fd4:	aca513e0 	sw	a1,5088(a1)
bfc07fd8:	850213e0 	lh	v0,5088(t0)
bfc07fdc:	8c8513e0 	lw	a1,5088(a0)
bfc07fe0:	8ca413e0 	lw	a0,5088(a1)
bfc07fe4:	8ca613e0 	lw	a2,5088(a1)
bfc07fe8:	144305e8 	bne	v0,v1,bfc0978c <inst_error>
bfc07fec:	00000000 	nop
/home/csy/func/inst/n61_lh.S:24
bfc07ff0:	3c09e96e 	lui	t1,0xe96e
bfc07ff4:	35297db0 	ori	t1,t1,0x7db0
bfc07ff8:	3c08800d 	lui	t0,0x800d
bfc07ffc:	350825e8 	ori	t0,t0,0x25e8
bfc08000:	2403e96e 	li	v1,-5778
bfc08004:	3c010001 	lui	at,0x1
bfc08008:	00280821 	addu	at,at,t0
bfc0800c:	ac29b508 	sw	t1,-19192(at)
bfc08010:	25040004 	addiu	a0,t0,4
bfc08014:	2505fff8 	addiu	a1,t0,-8
bfc08018:	3c010001 	lui	at,0x1
bfc0801c:	00240821 	addu	at,at,a0
bfc08020:	ac24b508 	sw	a0,-19192(at)
bfc08024:	3c010001 	lui	at,0x1
bfc08028:	00250821 	addu	at,at,a1
bfc0802c:	ac25b508 	sw	a1,-19192(at)
bfc08030:	3c020001 	lui	v0,0x1
bfc08034:	00481021 	addu	v0,v0,t0
bfc08038:	8442b50a 	lh	v0,-19190(v0)
bfc0803c:	3c050001 	lui	a1,0x1
bfc08040:	00a42821 	addu	a1,a1,a0
bfc08044:	8ca5b508 	lw	a1,-19192(a1)
bfc08048:	3c040001 	lui	a0,0x1
bfc0804c:	00852021 	addu	a0,a0,a1
bfc08050:	8c84b508 	lw	a0,-19192(a0)
bfc08054:	3c060001 	lui	a2,0x1
bfc08058:	00c53021 	addu	a2,a2,a1
bfc0805c:	8cc6b508 	lw	a2,-19192(a2)
bfc08060:	144305ca 	bne	v0,v1,bfc0978c <inst_error>
bfc08064:	00000000 	nop
/home/csy/func/inst/n61_lh.S:25
bfc08068:	3c096737 	lui	t1,0x6737
bfc0806c:	3529a118 	ori	t1,t1,0xa118
bfc08070:	3c08800d 	lui	t0,0x800d
bfc08074:	35084f78 	ori	t0,t0,0x4f78
bfc08078:	24036737 	li	v1,26423
bfc0807c:	ad094fac 	sw	t1,20396(t0)
bfc08080:	25040004 	addiu	a0,t0,4
bfc08084:	2505fff8 	addiu	a1,t0,-8
bfc08088:	ac844fac 	sw	a0,20396(a0)
bfc0808c:	aca54fac 	sw	a1,20396(a1)
bfc08090:	85024fae 	lh	v0,20398(t0)
bfc08094:	8c854fac 	lw	a1,20396(a0)
bfc08098:	8ca44fac 	lw	a0,20396(a1)
bfc0809c:	8ca64fac 	lw	a2,20396(a1)
bfc080a0:	144305ba 	bne	v0,v1,bfc0978c <inst_error>
bfc080a4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:26
bfc080a8:	3c092fec 	lui	t1,0x2fec
bfc080ac:	35297a40 	ori	t1,t1,0x7a40
bfc080b0:	3c08800d 	lui	t0,0x800d
bfc080b4:	35085228 	ori	t0,t0,0x5228
bfc080b8:	24032fec 	li	v1,12268
bfc080bc:	3c010001 	lui	at,0x1
bfc080c0:	00280821 	addu	at,at,t0
bfc080c4:	ac29a464 	sw	t1,-23452(at)
bfc080c8:	25040004 	addiu	a0,t0,4
bfc080cc:	2505fff8 	addiu	a1,t0,-8
bfc080d0:	3c010001 	lui	at,0x1
bfc080d4:	00240821 	addu	at,at,a0
bfc080d8:	ac24a464 	sw	a0,-23452(at)
bfc080dc:	3c010001 	lui	at,0x1
bfc080e0:	00250821 	addu	at,at,a1
bfc080e4:	ac25a464 	sw	a1,-23452(at)
bfc080e8:	3c020001 	lui	v0,0x1
bfc080ec:	00481021 	addu	v0,v0,t0
bfc080f0:	8442a466 	lh	v0,-23450(v0)
bfc080f4:	3c050001 	lui	a1,0x1
bfc080f8:	00a42821 	addu	a1,a1,a0
bfc080fc:	8ca5a464 	lw	a1,-23452(a1)
bfc08100:	3c040001 	lui	a0,0x1
bfc08104:	00852021 	addu	a0,a0,a1
bfc08108:	8c84a464 	lw	a0,-23452(a0)
bfc0810c:	3c060001 	lui	a2,0x1
bfc08110:	00c53021 	addu	a2,a2,a1
bfc08114:	8cc6a464 	lw	a2,-23452(a2)
bfc08118:	1443059c 	bne	v0,v1,bfc0978c <inst_error>
bfc0811c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:27
bfc08120:	3c095805 	lui	t1,0x5805
bfc08124:	3529df3d 	ori	t1,t1,0xdf3d
bfc08128:	3c08800d 	lui	t0,0x800d
bfc0812c:	3508e870 	ori	t0,t0,0xe870
bfc08130:	2403df3d 	li	v1,-8387
bfc08134:	ad090454 	sw	t1,1108(t0)
bfc08138:	25040004 	addiu	a0,t0,4
bfc0813c:	2505fff8 	addiu	a1,t0,-8
bfc08140:	ac840454 	sw	a0,1108(a0)
bfc08144:	aca50454 	sw	a1,1108(a1)
bfc08148:	85020454 	lh	v0,1108(t0)
bfc0814c:	8c850454 	lw	a1,1108(a0)
bfc08150:	8ca40454 	lw	a0,1108(a1)
bfc08154:	8ca60454 	lw	a2,1108(a1)
bfc08158:	1443058c 	bne	v0,v1,bfc0978c <inst_error>
bfc0815c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:28
bfc08160:	3c094ea0 	lui	t1,0x4ea0
bfc08164:	3529d20c 	ori	t1,t1,0xd20c
bfc08168:	3c08800d 	lui	t0,0x800d
bfc0816c:	35082194 	ori	t0,t0,0x2194
bfc08170:	2403d20c 	li	v1,-11764
bfc08174:	3c010001 	lui	at,0x1
bfc08178:	00280821 	addu	at,at,t0
bfc0817c:	ac29d7c8 	sw	t1,-10296(at)
bfc08180:	25040004 	addiu	a0,t0,4
bfc08184:	2505fff8 	addiu	a1,t0,-8
bfc08188:	3c010001 	lui	at,0x1
bfc0818c:	00240821 	addu	at,at,a0
bfc08190:	ac24d7c8 	sw	a0,-10296(at)
bfc08194:	3c010001 	lui	at,0x1
bfc08198:	00250821 	addu	at,at,a1
bfc0819c:	ac25d7c8 	sw	a1,-10296(at)
bfc081a0:	3c020001 	lui	v0,0x1
bfc081a4:	00481021 	addu	v0,v0,t0
bfc081a8:	8442d7c8 	lh	v0,-10296(v0)
bfc081ac:	3c050001 	lui	a1,0x1
bfc081b0:	00a42821 	addu	a1,a1,a0
bfc081b4:	8ca5d7c8 	lw	a1,-10296(a1)
bfc081b8:	3c040001 	lui	a0,0x1
bfc081bc:	00852021 	addu	a0,a0,a1
bfc081c0:	8c84d7c8 	lw	a0,-10296(a0)
bfc081c4:	3c060001 	lui	a2,0x1
bfc081c8:	00c53021 	addu	a2,a2,a1
bfc081cc:	8cc6d7c8 	lw	a2,-10296(a2)
bfc081d0:	1443056e 	bne	v0,v1,bfc0978c <inst_error>
bfc081d4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:29
bfc081d8:	3c097bf8 	lui	t1,0x7bf8
bfc081dc:	3529d942 	ori	t1,t1,0xd942
bfc081e0:	3c08800d 	lui	t0,0x800d
bfc081e4:	35085d50 	ori	t0,t0,0x5d50
bfc081e8:	2403d942 	li	v1,-9918
bfc081ec:	3c010001 	lui	at,0x1
bfc081f0:	00280821 	addu	at,at,t0
bfc081f4:	ac29a000 	sw	t1,-24576(at)
bfc081f8:	25040004 	addiu	a0,t0,4
bfc081fc:	2505fff8 	addiu	a1,t0,-8
bfc08200:	3c010001 	lui	at,0x1
bfc08204:	00240821 	addu	at,at,a0
bfc08208:	ac24a000 	sw	a0,-24576(at)
bfc0820c:	3c010001 	lui	at,0x1
bfc08210:	00250821 	addu	at,at,a1
bfc08214:	ac25a000 	sw	a1,-24576(at)
bfc08218:	3c020001 	lui	v0,0x1
bfc0821c:	00481021 	addu	v0,v0,t0
bfc08220:	8442a000 	lh	v0,-24576(v0)
bfc08224:	3c050001 	lui	a1,0x1
bfc08228:	00a42821 	addu	a1,a1,a0
bfc0822c:	8ca5a000 	lw	a1,-24576(a1)
bfc08230:	3c040001 	lui	a0,0x1
bfc08234:	00852021 	addu	a0,a0,a1
bfc08238:	8c84a000 	lw	a0,-24576(a0)
bfc0823c:	3c060001 	lui	a2,0x1
bfc08240:	00c53021 	addu	a2,a2,a1
bfc08244:	8cc6a000 	lw	a2,-24576(a2)
bfc08248:	14430550 	bne	v0,v1,bfc0978c <inst_error>
bfc0824c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:30
bfc08250:	3c0937ee 	lui	t1,0x37ee
bfc08254:	3529910e 	ori	t1,t1,0x910e
bfc08258:	3c08800d 	lui	t0,0x800d
bfc0825c:	350897f0 	ori	t0,t0,0x97f0
bfc08260:	2403910e 	li	v1,-28402
bfc08264:	ad090174 	sw	t1,372(t0)
bfc08268:	25040004 	addiu	a0,t0,4
bfc0826c:	2505fff8 	addiu	a1,t0,-8
bfc08270:	ac840174 	sw	a0,372(a0)
bfc08274:	aca50174 	sw	a1,372(a1)
bfc08278:	85020174 	lh	v0,372(t0)
bfc0827c:	8c850174 	lw	a1,372(a0)
bfc08280:	8ca40174 	lw	a0,372(a1)
bfc08284:	8ca60174 	lw	a2,372(a1)
bfc08288:	14430540 	bne	v0,v1,bfc0978c <inst_error>
bfc0828c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:31
bfc08290:	3c090259 	lui	t1,0x259
bfc08294:	35293920 	ori	t1,t1,0x3920
bfc08298:	3c08800d 	lui	t0,0x800d
bfc0829c:	350823b8 	ori	t0,t0,0x23b8
bfc082a0:	24033920 	li	v1,14624
bfc082a4:	3c010001 	lui	at,0x1
bfc082a8:	00280821 	addu	at,at,t0
bfc082ac:	ac29b00c 	sw	t1,-20468(at)
bfc082b0:	25040004 	addiu	a0,t0,4
bfc082b4:	2505fff8 	addiu	a1,t0,-8
bfc082b8:	3c010001 	lui	at,0x1
bfc082bc:	00240821 	addu	at,at,a0
bfc082c0:	ac24b00c 	sw	a0,-20468(at)
bfc082c4:	3c010001 	lui	at,0x1
bfc082c8:	00250821 	addu	at,at,a1
bfc082cc:	ac25b00c 	sw	a1,-20468(at)
bfc082d0:	3c020001 	lui	v0,0x1
bfc082d4:	00481021 	addu	v0,v0,t0
bfc082d8:	8442b00c 	lh	v0,-20468(v0)
bfc082dc:	3c050001 	lui	a1,0x1
bfc082e0:	00a42821 	addu	a1,a1,a0
bfc082e4:	8ca5b00c 	lw	a1,-20468(a1)
bfc082e8:	3c040001 	lui	a0,0x1
bfc082ec:	00852021 	addu	a0,a0,a1
bfc082f0:	8c84b00c 	lw	a0,-20468(a0)
bfc082f4:	3c060001 	lui	a2,0x1
bfc082f8:	00c53021 	addu	a2,a2,a1
bfc082fc:	8cc6b00c 	lw	a2,-20468(a2)
bfc08300:	14430522 	bne	v0,v1,bfc0978c <inst_error>
bfc08304:	00000000 	nop
/home/csy/func/inst/n61_lh.S:32
bfc08308:	3c09b7e2 	lui	t1,0xb7e2
bfc0830c:	35291268 	ori	t1,t1,0x1268
bfc08310:	3c08800d 	lui	t0,0x800d
bfc08314:	3508cba8 	ori	t0,t0,0xcba8
bfc08318:	24031268 	li	v1,4712
bfc0831c:	ad09221c 	sw	t1,8732(t0)
bfc08320:	25040004 	addiu	a0,t0,4
bfc08324:	2505fff8 	addiu	a1,t0,-8
bfc08328:	ac84221c 	sw	a0,8732(a0)
bfc0832c:	aca5221c 	sw	a1,8732(a1)
bfc08330:	8502221c 	lh	v0,8732(t0)
bfc08334:	8c85221c 	lw	a1,8732(a0)
bfc08338:	8ca4221c 	lw	a0,8732(a1)
bfc0833c:	8ca6221c 	lw	a2,8732(a1)
bfc08340:	14430512 	bne	v0,v1,bfc0978c <inst_error>
bfc08344:	00000000 	nop
/home/csy/func/inst/n61_lh.S:33
bfc08348:	3c090074 	lui	t1,0x74
bfc0834c:	3529b9d0 	ori	t1,t1,0xb9d0
bfc08350:	3c08800d 	lui	t0,0x800d
bfc08354:	350817a8 	ori	t0,t0,0x17a8
bfc08358:	2403b9d0 	li	v1,-17968
bfc0835c:	3c010001 	lui	at,0x1
bfc08360:	00280821 	addu	at,at,t0
bfc08364:	ac29c28c 	sw	t1,-15732(at)
bfc08368:	25040004 	addiu	a0,t0,4
bfc0836c:	2505fff8 	addiu	a1,t0,-8
bfc08370:	3c010001 	lui	at,0x1
bfc08374:	00240821 	addu	at,at,a0
bfc08378:	ac24c28c 	sw	a0,-15732(at)
bfc0837c:	3c010001 	lui	at,0x1
bfc08380:	00250821 	addu	at,at,a1
bfc08384:	ac25c28c 	sw	a1,-15732(at)
bfc08388:	3c020001 	lui	v0,0x1
bfc0838c:	00481021 	addu	v0,v0,t0
bfc08390:	8442c28c 	lh	v0,-15732(v0)
bfc08394:	3c050001 	lui	a1,0x1
bfc08398:	00a42821 	addu	a1,a1,a0
bfc0839c:	8ca5c28c 	lw	a1,-15732(a1)
bfc083a0:	3c040001 	lui	a0,0x1
bfc083a4:	00852021 	addu	a0,a0,a1
bfc083a8:	8c84c28c 	lw	a0,-15732(a0)
bfc083ac:	3c060001 	lui	a2,0x1
bfc083b0:	00c53021 	addu	a2,a2,a1
bfc083b4:	8cc6c28c 	lw	a2,-15732(a2)
bfc083b8:	144304f4 	bne	v0,v1,bfc0978c <inst_error>
bfc083bc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:34
bfc083c0:	3c091326 	lui	t1,0x1326
bfc083c4:	3529e800 	ori	t1,t1,0xe800
bfc083c8:	3c08800d 	lui	t0,0x800d
bfc083cc:	35080848 	ori	t0,t0,0x848
bfc083d0:	24031326 	li	v1,4902
bfc083d4:	3c010001 	lui	at,0x1
bfc083d8:	00280821 	addu	at,at,t0
bfc083dc:	ac29816c 	sw	t1,-32404(at)
bfc083e0:	25040004 	addiu	a0,t0,4
bfc083e4:	2505fff8 	addiu	a1,t0,-8
bfc083e8:	3c010001 	lui	at,0x1
bfc083ec:	00240821 	addu	at,at,a0
bfc083f0:	ac24816c 	sw	a0,-32404(at)
bfc083f4:	3c010001 	lui	at,0x1
bfc083f8:	00250821 	addu	at,at,a1
bfc083fc:	ac25816c 	sw	a1,-32404(at)
bfc08400:	3c020001 	lui	v0,0x1
bfc08404:	00481021 	addu	v0,v0,t0
bfc08408:	8442816e 	lh	v0,-32402(v0)
bfc0840c:	3c050001 	lui	a1,0x1
bfc08410:	00a42821 	addu	a1,a1,a0
bfc08414:	8ca5816c 	lw	a1,-32404(a1)
bfc08418:	3c040001 	lui	a0,0x1
bfc0841c:	00852021 	addu	a0,a0,a1
bfc08420:	8c84816c 	lw	a0,-32404(a0)
bfc08424:	3c060001 	lui	a2,0x1
bfc08428:	00c53021 	addu	a2,a2,a1
bfc0842c:	8cc6816c 	lw	a2,-32404(a2)
bfc08430:	144304d6 	bne	v0,v1,bfc0978c <inst_error>
bfc08434:	00000000 	nop
/home/csy/func/inst/n61_lh.S:35
bfc08438:	3c09b42e 	lui	t1,0xb42e
bfc0843c:	35295a40 	ori	t1,t1,0x5a40
bfc08440:	3c08800d 	lui	t0,0x800d
bfc08444:	35083b34 	ori	t0,t0,0x3b34
bfc08448:	24035a40 	li	v1,23104
bfc0844c:	ad0914d8 	sw	t1,5336(t0)
bfc08450:	25040004 	addiu	a0,t0,4
bfc08454:	2505fff8 	addiu	a1,t0,-8
bfc08458:	ac8414d8 	sw	a0,5336(a0)
bfc0845c:	aca514d8 	sw	a1,5336(a1)
bfc08460:	850214d8 	lh	v0,5336(t0)
bfc08464:	8c8514d8 	lw	a1,5336(a0)
bfc08468:	8ca414d8 	lw	a0,5336(a1)
bfc0846c:	8ca614d8 	lw	a2,5336(a1)
bfc08470:	144304c6 	bne	v0,v1,bfc0978c <inst_error>
bfc08474:	00000000 	nop
/home/csy/func/inst/n61_lh.S:36
bfc08478:	3c09783e 	lui	t1,0x783e
bfc0847c:	35290a00 	ori	t1,t1,0xa00
bfc08480:	3c08800d 	lui	t0,0x800d
bfc08484:	35087838 	ori	t0,t0,0x7838
bfc08488:	24030a00 	li	v1,2560
bfc0848c:	ad092c3c 	sw	t1,11324(t0)
bfc08490:	25040004 	addiu	a0,t0,4
bfc08494:	2505fff8 	addiu	a1,t0,-8
bfc08498:	ac842c3c 	sw	a0,11324(a0)
bfc0849c:	aca52c3c 	sw	a1,11324(a1)
bfc084a0:	85022c3c 	lh	v0,11324(t0)
bfc084a4:	8c852c3c 	lw	a1,11324(a0)
bfc084a8:	8ca42c3c 	lw	a0,11324(a1)
bfc084ac:	8ca62c3c 	lw	a2,11324(a1)
bfc084b0:	144304b6 	bne	v0,v1,bfc0978c <inst_error>
bfc084b4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:37
bfc084b8:	3c09d694 	lui	t1,0xd694
bfc084bc:	35292958 	ori	t1,t1,0x2958
bfc084c0:	3c08800d 	lui	t0,0x800d
bfc084c4:	350853a8 	ori	t0,t0,0x53a8
bfc084c8:	2403d694 	li	v1,-10604
bfc084cc:	ad095648 	sw	t1,22088(t0)
bfc084d0:	25040004 	addiu	a0,t0,4
bfc084d4:	2505fff8 	addiu	a1,t0,-8
bfc084d8:	ac845648 	sw	a0,22088(a0)
bfc084dc:	aca55648 	sw	a1,22088(a1)
bfc084e0:	8502564a 	lh	v0,22090(t0)
bfc084e4:	8c855648 	lw	a1,22088(a0)
bfc084e8:	8ca45648 	lw	a0,22088(a1)
bfc084ec:	8ca65648 	lw	a2,22088(a1)
bfc084f0:	144304a6 	bne	v0,v1,bfc0978c <inst_error>
bfc084f4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:38
bfc084f8:	3c099d23 	lui	t1,0x9d23
bfc084fc:	35297d60 	ori	t1,t1,0x7d60
bfc08500:	3c08800d 	lui	t0,0x800d
bfc08504:	35080600 	ori	t0,t0,0x600
bfc08508:	24037d60 	li	v1,32096
bfc0850c:	ad09590c 	sw	t1,22796(t0)
bfc08510:	25040004 	addiu	a0,t0,4
bfc08514:	2505fff8 	addiu	a1,t0,-8
bfc08518:	ac84590c 	sw	a0,22796(a0)
bfc0851c:	aca5590c 	sw	a1,22796(a1)
bfc08520:	8502590c 	lh	v0,22796(t0)
bfc08524:	8c85590c 	lw	a1,22796(a0)
bfc08528:	8ca4590c 	lw	a0,22796(a1)
bfc0852c:	8ca6590c 	lw	a2,22796(a1)
bfc08530:	14430496 	bne	v0,v1,bfc0978c <inst_error>
bfc08534:	00000000 	nop
/home/csy/func/inst/n61_lh.S:39
bfc08538:	3c09098f 	lui	t1,0x98f
bfc0853c:	35292730 	ori	t1,t1,0x2730
bfc08540:	3c08800d 	lui	t0,0x800d
bfc08544:	35081b58 	ori	t0,t0,0x1b58
bfc08548:	24032730 	li	v1,10032
bfc0854c:	3c010001 	lui	at,0x1
bfc08550:	00280821 	addu	at,at,t0
bfc08554:	ac2988a8 	sw	t1,-30552(at)
bfc08558:	25040004 	addiu	a0,t0,4
bfc0855c:	2505fff8 	addiu	a1,t0,-8
bfc08560:	3c010001 	lui	at,0x1
bfc08564:	00240821 	addu	at,at,a0
bfc08568:	ac2488a8 	sw	a0,-30552(at)
bfc0856c:	3c010001 	lui	at,0x1
bfc08570:	00250821 	addu	at,at,a1
bfc08574:	ac2588a8 	sw	a1,-30552(at)
bfc08578:	3c020001 	lui	v0,0x1
bfc0857c:	00481021 	addu	v0,v0,t0
bfc08580:	844288a8 	lh	v0,-30552(v0)
bfc08584:	3c050001 	lui	a1,0x1
bfc08588:	00a42821 	addu	a1,a1,a0
bfc0858c:	8ca588a8 	lw	a1,-30552(a1)
bfc08590:	3c040001 	lui	a0,0x1
bfc08594:	00852021 	addu	a0,a0,a1
bfc08598:	8c8488a8 	lw	a0,-30552(a0)
bfc0859c:	3c060001 	lui	a2,0x1
bfc085a0:	00c53021 	addu	a2,a2,a1
bfc085a4:	8cc688a8 	lw	a2,-30552(a2)
bfc085a8:	14430478 	bne	v0,v1,bfc0978c <inst_error>
bfc085ac:	00000000 	nop
/home/csy/func/inst/n61_lh.S:40
bfc085b0:	3c092ab8 	lui	t1,0x2ab8
bfc085b4:	3529ce90 	ori	t1,t1,0xce90
bfc085b8:	3c08800d 	lui	t0,0x800d
bfc085bc:	350831ec 	ori	t0,t0,0x31ec
bfc085c0:	2403ce90 	li	v1,-12656
bfc085c4:	ad0938d0 	sw	t1,14544(t0)
bfc085c8:	25040004 	addiu	a0,t0,4
bfc085cc:	2505fff8 	addiu	a1,t0,-8
bfc085d0:	ac8438d0 	sw	a0,14544(a0)
bfc085d4:	aca538d0 	sw	a1,14544(a1)
bfc085d8:	850238d0 	lh	v0,14544(t0)
bfc085dc:	8c8538d0 	lw	a1,14544(a0)
bfc085e0:	8ca438d0 	lw	a0,14544(a1)
bfc085e4:	8ca638d0 	lw	a2,14544(a1)
bfc085e8:	14430468 	bne	v0,v1,bfc0978c <inst_error>
bfc085ec:	00000000 	nop
/home/csy/func/inst/n61_lh.S:41
bfc085f0:	3c0937fd 	lui	t1,0x37fd
bfc085f4:	3529bec8 	ori	t1,t1,0xbec8
bfc085f8:	3c08800d 	lui	t0,0x800d
bfc085fc:	35084890 	ori	t0,t0,0x4890
bfc08600:	240337fd 	li	v1,14333
bfc08604:	ad095bd0 	sw	t1,23504(t0)
bfc08608:	25040004 	addiu	a0,t0,4
bfc0860c:	2505fff8 	addiu	a1,t0,-8
bfc08610:	ac845bd0 	sw	a0,23504(a0)
bfc08614:	aca55bd0 	sw	a1,23504(a1)
bfc08618:	85025bd2 	lh	v0,23506(t0)
bfc0861c:	8c855bd0 	lw	a1,23504(a0)
bfc08620:	8ca45bd0 	lw	a0,23504(a1)
bfc08624:	8ca65bd0 	lw	a2,23504(a1)
bfc08628:	14430458 	bne	v0,v1,bfc0978c <inst_error>
bfc0862c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:42
bfc08630:	3c0934fc 	lui	t1,0x34fc
bfc08634:	352933ac 	ori	t1,t1,0x33ac
bfc08638:	3c08800d 	lui	t0,0x800d
bfc0863c:	35085448 	ori	t0,t0,0x5448
bfc08640:	240334fc 	li	v1,13564
bfc08644:	ad0916d0 	sw	t1,5840(t0)
bfc08648:	25040004 	addiu	a0,t0,4
bfc0864c:	2505fff8 	addiu	a1,t0,-8
bfc08650:	ac8416d0 	sw	a0,5840(a0)
bfc08654:	aca516d0 	sw	a1,5840(a1)
bfc08658:	850216d2 	lh	v0,5842(t0)
bfc0865c:	8c8516d0 	lw	a1,5840(a0)
bfc08660:	8ca416d0 	lw	a0,5840(a1)
bfc08664:	8ca616d0 	lw	a2,5840(a1)
bfc08668:	14430448 	bne	v0,v1,bfc0978c <inst_error>
bfc0866c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:43
bfc08670:	3c09dcc1 	lui	t1,0xdcc1
bfc08674:	352944c8 	ori	t1,t1,0x44c8
bfc08678:	3c08800d 	lui	t0,0x800d
bfc0867c:	35086940 	ori	t0,t0,0x6940
bfc08680:	240344c8 	li	v1,17608
bfc08684:	ad09673c 	sw	t1,26428(t0)
bfc08688:	25040004 	addiu	a0,t0,4
bfc0868c:	2505fff8 	addiu	a1,t0,-8
bfc08690:	ac84673c 	sw	a0,26428(a0)
bfc08694:	aca5673c 	sw	a1,26428(a1)
bfc08698:	8502673c 	lh	v0,26428(t0)
bfc0869c:	8c85673c 	lw	a1,26428(a0)
bfc086a0:	8ca4673c 	lw	a0,26428(a1)
bfc086a4:	8ca6673c 	lw	a2,26428(a1)
bfc086a8:	14430438 	bne	v0,v1,bfc0978c <inst_error>
bfc086ac:	00000000 	nop
/home/csy/func/inst/n61_lh.S:44
bfc086b0:	3c093354 	lui	t1,0x3354
bfc086b4:	3529e5b4 	ori	t1,t1,0xe5b4
bfc086b8:	3c08800d 	lui	t0,0x800d
bfc086bc:	35085834 	ori	t0,t0,0x5834
bfc086c0:	24033354 	li	v1,13140
bfc086c4:	ad093924 	sw	t1,14628(t0)
bfc086c8:	25040004 	addiu	a0,t0,4
bfc086cc:	2505fff8 	addiu	a1,t0,-8
bfc086d0:	ac843924 	sw	a0,14628(a0)
bfc086d4:	aca53924 	sw	a1,14628(a1)
bfc086d8:	85023926 	lh	v0,14630(t0)
bfc086dc:	8c853924 	lw	a1,14628(a0)
bfc086e0:	8ca43924 	lw	a0,14628(a1)
bfc086e4:	8ca63924 	lw	a2,14628(a1)
bfc086e8:	14430428 	bne	v0,v1,bfc0978c <inst_error>
bfc086ec:	00000000 	nop
/home/csy/func/inst/n61_lh.S:45
bfc086f0:	3c09b5e7 	lui	t1,0xb5e7
bfc086f4:	3529da8e 	ori	t1,t1,0xda8e
bfc086f8:	3c08800d 	lui	t0,0x800d
bfc086fc:	3508cc78 	ori	t0,t0,0xcc78
bfc08700:	2403da8e 	li	v1,-9586
bfc08704:	ad090800 	sw	t1,2048(t0)
bfc08708:	25040004 	addiu	a0,t0,4
bfc0870c:	2505fff8 	addiu	a1,t0,-8
bfc08710:	ac840800 	sw	a0,2048(a0)
bfc08714:	aca50800 	sw	a1,2048(a1)
bfc08718:	85020800 	lh	v0,2048(t0)
bfc0871c:	8c850800 	lw	a1,2048(a0)
bfc08720:	8ca40800 	lw	a0,2048(a1)
bfc08724:	8ca60800 	lw	a2,2048(a1)
bfc08728:	14430418 	bne	v0,v1,bfc0978c <inst_error>
bfc0872c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:46
bfc08730:	3c098c87 	lui	t1,0x8c87
bfc08734:	3529a650 	ori	t1,t1,0xa650
bfc08738:	3c08800d 	lui	t0,0x800d
bfc0873c:	35082d9c 	ori	t0,t0,0x2d9c
bfc08740:	2403a650 	li	v1,-22960
bfc08744:	ad096440 	sw	t1,25664(t0)
bfc08748:	25040004 	addiu	a0,t0,4
bfc0874c:	2505fff8 	addiu	a1,t0,-8
bfc08750:	ac846440 	sw	a0,25664(a0)
bfc08754:	aca56440 	sw	a1,25664(a1)
bfc08758:	85026440 	lh	v0,25664(t0)
bfc0875c:	8c856440 	lw	a1,25664(a0)
bfc08760:	8ca46440 	lw	a0,25664(a1)
bfc08764:	8ca66440 	lw	a2,25664(a1)
bfc08768:	14430408 	bne	v0,v1,bfc0978c <inst_error>
bfc0876c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:47
bfc08770:	3c093df2 	lui	t1,0x3df2
bfc08774:	35299bc0 	ori	t1,t1,0x9bc0
bfc08778:	3c08800d 	lui	t0,0x800d
bfc0877c:	24033df2 	li	v1,15858
bfc08780:	3c010001 	lui	at,0x1
bfc08784:	00280821 	addu	at,at,t0
bfc08788:	ac29834c 	sw	t1,-31924(at)
bfc0878c:	25040004 	addiu	a0,t0,4
bfc08790:	2505fff8 	addiu	a1,t0,-8
bfc08794:	3c010001 	lui	at,0x1
bfc08798:	00240821 	addu	at,at,a0
bfc0879c:	ac24834c 	sw	a0,-31924(at)
bfc087a0:	3c010001 	lui	at,0x1
bfc087a4:	00250821 	addu	at,at,a1
bfc087a8:	ac25834c 	sw	a1,-31924(at)
bfc087ac:	3c020001 	lui	v0,0x1
bfc087b0:	00481021 	addu	v0,v0,t0
bfc087b4:	8442834e 	lh	v0,-31922(v0)
bfc087b8:	3c050001 	lui	a1,0x1
bfc087bc:	00a42821 	addu	a1,a1,a0
bfc087c0:	8ca5834c 	lw	a1,-31924(a1)
bfc087c4:	3c040001 	lui	a0,0x1
bfc087c8:	00852021 	addu	a0,a0,a1
bfc087cc:	8c84834c 	lw	a0,-31924(a0)
bfc087d0:	3c060001 	lui	a2,0x1
bfc087d4:	00c53021 	addu	a2,a2,a1
bfc087d8:	8cc6834c 	lw	a2,-31924(a2)
bfc087dc:	144303eb 	bne	v0,v1,bfc0978c <inst_error>
bfc087e0:	00000000 	nop
/home/csy/func/inst/n61_lh.S:48
bfc087e4:	3c09975c 	lui	t1,0x975c
bfc087e8:	35293a5c 	ori	t1,t1,0x3a5c
bfc087ec:	3c08800d 	lui	t0,0x800d
bfc087f0:	24033a5c 	li	v1,14940
bfc087f4:	3c010001 	lui	at,0x1
bfc087f8:	00280821 	addu	at,at,t0
bfc087fc:	ac29e8cc 	sw	t1,-5940(at)
bfc08800:	25040004 	addiu	a0,t0,4
bfc08804:	2505fff8 	addiu	a1,t0,-8
bfc08808:	3c010001 	lui	at,0x1
bfc0880c:	00240821 	addu	at,at,a0
bfc08810:	ac24e8cc 	sw	a0,-5940(at)
bfc08814:	3c010001 	lui	at,0x1
bfc08818:	00250821 	addu	at,at,a1
bfc0881c:	ac25e8cc 	sw	a1,-5940(at)
bfc08820:	3c020001 	lui	v0,0x1
bfc08824:	00481021 	addu	v0,v0,t0
bfc08828:	8442e8cc 	lh	v0,-5940(v0)
bfc0882c:	3c050001 	lui	a1,0x1
bfc08830:	00a42821 	addu	a1,a1,a0
bfc08834:	8ca5e8cc 	lw	a1,-5940(a1)
bfc08838:	3c040001 	lui	a0,0x1
bfc0883c:	00852021 	addu	a0,a0,a1
bfc08840:	8c84e8cc 	lw	a0,-5940(a0)
bfc08844:	3c060001 	lui	a2,0x1
bfc08848:	00c53021 	addu	a2,a2,a1
bfc0884c:	8cc6e8cc 	lw	a2,-5940(a2)
bfc08850:	144303ce 	bne	v0,v1,bfc0978c <inst_error>
bfc08854:	00000000 	nop
/home/csy/func/inst/n61_lh.S:49
bfc08858:	3c0929ab 	lui	t1,0x29ab
bfc0885c:	352953d6 	ori	t1,t1,0x53d6
bfc08860:	3c08800d 	lui	t0,0x800d
bfc08864:	240353d6 	li	v1,21462
bfc08868:	3c010001 	lui	at,0x1
bfc0886c:	00280821 	addu	at,at,t0
bfc08870:	ac2989e8 	sw	t1,-30232(at)
bfc08874:	25040004 	addiu	a0,t0,4
bfc08878:	2505fff8 	addiu	a1,t0,-8
bfc0887c:	3c010001 	lui	at,0x1
bfc08880:	00240821 	addu	at,at,a0
bfc08884:	ac2489e8 	sw	a0,-30232(at)
bfc08888:	3c010001 	lui	at,0x1
bfc0888c:	00250821 	addu	at,at,a1
bfc08890:	ac2589e8 	sw	a1,-30232(at)
bfc08894:	3c020001 	lui	v0,0x1
bfc08898:	00481021 	addu	v0,v0,t0
bfc0889c:	844289e8 	lh	v0,-30232(v0)
bfc088a0:	3c050001 	lui	a1,0x1
bfc088a4:	00a42821 	addu	a1,a1,a0
bfc088a8:	8ca589e8 	lw	a1,-30232(a1)
bfc088ac:	3c040001 	lui	a0,0x1
bfc088b0:	00852021 	addu	a0,a0,a1
bfc088b4:	8c8489e8 	lw	a0,-30232(a0)
bfc088b8:	3c060001 	lui	a2,0x1
bfc088bc:	00c53021 	addu	a2,a2,a1
bfc088c0:	8cc689e8 	lw	a2,-30232(a2)
bfc088c4:	144303b1 	bne	v0,v1,bfc0978c <inst_error>
bfc088c8:	00000000 	nop
/home/csy/func/inst/n61_lh.S:50
bfc088cc:	3c09763b 	lui	t1,0x763b
bfc088d0:	35292600 	ori	t1,t1,0x2600
bfc088d4:	3c08800d 	lui	t0,0x800d
bfc088d8:	24032600 	li	v1,9728
bfc088dc:	ad093e7c 	sw	t1,15996(t0)
bfc088e0:	25040004 	addiu	a0,t0,4
bfc088e4:	2505fff8 	addiu	a1,t0,-8
bfc088e8:	ac843e7c 	sw	a0,15996(a0)
bfc088ec:	aca53e7c 	sw	a1,15996(a1)
bfc088f0:	85023e7c 	lh	v0,15996(t0)
bfc088f4:	8c853e7c 	lw	a1,15996(a0)
bfc088f8:	8ca43e7c 	lw	a0,15996(a1)
bfc088fc:	8ca63e7c 	lw	a2,15996(a1)
bfc08900:	144303a2 	bne	v0,v1,bfc0978c <inst_error>
bfc08904:	00000000 	nop
/home/csy/func/inst/n61_lh.S:51
bfc08908:	3c09774e 	lui	t1,0x774e
bfc0890c:	3529d370 	ori	t1,t1,0xd370
bfc08910:	3c08800d 	lui	t0,0x800d
bfc08914:	2403d370 	li	v1,-11408
bfc08918:	3c010001 	lui	at,0x1
bfc0891c:	00280821 	addu	at,at,t0
bfc08920:	ac29a760 	sw	t1,-22688(at)
bfc08924:	25040004 	addiu	a0,t0,4
bfc08928:	2505fff8 	addiu	a1,t0,-8
bfc0892c:	3c010001 	lui	at,0x1
bfc08930:	00240821 	addu	at,at,a0
bfc08934:	ac24a760 	sw	a0,-22688(at)
bfc08938:	3c010001 	lui	at,0x1
bfc0893c:	00250821 	addu	at,at,a1
bfc08940:	ac25a760 	sw	a1,-22688(at)
bfc08944:	3c020001 	lui	v0,0x1
bfc08948:	00481021 	addu	v0,v0,t0
bfc0894c:	8442a760 	lh	v0,-22688(v0)
bfc08950:	3c050001 	lui	a1,0x1
bfc08954:	00a42821 	addu	a1,a1,a0
bfc08958:	8ca5a760 	lw	a1,-22688(a1)
bfc0895c:	3c040001 	lui	a0,0x1
bfc08960:	00852021 	addu	a0,a0,a1
bfc08964:	8c84a760 	lw	a0,-22688(a0)
bfc08968:	3c060001 	lui	a2,0x1
bfc0896c:	00c53021 	addu	a2,a2,a1
bfc08970:	8cc6a760 	lw	a2,-22688(a2)
bfc08974:	14430385 	bne	v0,v1,bfc0978c <inst_error>
bfc08978:	00000000 	nop
/home/csy/func/inst/n61_lh.S:52
bfc0897c:	3c098e24 	lui	t1,0x8e24
bfc08980:	3529d680 	ori	t1,t1,0xd680
bfc08984:	3c08800d 	lui	t0,0x800d
bfc08988:	2403d680 	li	v1,-10624
bfc0898c:	3c010001 	lui	at,0x1
bfc08990:	00280821 	addu	at,at,t0
bfc08994:	ac29ffe0 	sw	t1,-32(at)
bfc08998:	25040004 	addiu	a0,t0,4
bfc0899c:	2505fff8 	addiu	a1,t0,-8
bfc089a0:	3c010001 	lui	at,0x1
bfc089a4:	00240821 	addu	at,at,a0
bfc089a8:	ac24ffe0 	sw	a0,-32(at)
bfc089ac:	3c010001 	lui	at,0x1
bfc089b0:	00250821 	addu	at,at,a1
bfc089b4:	ac25ffe0 	sw	a1,-32(at)
bfc089b8:	3c020001 	lui	v0,0x1
bfc089bc:	00481021 	addu	v0,v0,t0
bfc089c0:	8442ffe0 	lh	v0,-32(v0)
bfc089c4:	3c050001 	lui	a1,0x1
bfc089c8:	00a42821 	addu	a1,a1,a0
bfc089cc:	8ca5ffe0 	lw	a1,-32(a1)
bfc089d0:	3c040001 	lui	a0,0x1
bfc089d4:	00852021 	addu	a0,a0,a1
bfc089d8:	8c84ffe0 	lw	a0,-32(a0)
bfc089dc:	3c060001 	lui	a2,0x1
bfc089e0:	00c53021 	addu	a2,a2,a1
bfc089e4:	8cc6ffe0 	lw	a2,-32(a2)
bfc089e8:	14430368 	bne	v0,v1,bfc0978c <inst_error>
bfc089ec:	00000000 	nop
/home/csy/func/inst/n61_lh.S:53
bfc089f0:	3c09fe39 	lui	t1,0xfe39
bfc089f4:	352936cb 	ori	t1,t1,0x36cb
bfc089f8:	3c08800d 	lui	t0,0x800d
bfc089fc:	240336cb 	li	v1,14027
bfc08a00:	ad0917b0 	sw	t1,6064(t0)
bfc08a04:	25040004 	addiu	a0,t0,4
bfc08a08:	2505fff8 	addiu	a1,t0,-8
bfc08a0c:	ac8417b0 	sw	a0,6064(a0)
bfc08a10:	aca517b0 	sw	a1,6064(a1)
bfc08a14:	850217b0 	lh	v0,6064(t0)
bfc08a18:	8c8517b0 	lw	a1,6064(a0)
bfc08a1c:	8ca417b0 	lw	a0,6064(a1)
bfc08a20:	8ca617b0 	lw	a2,6064(a1)
bfc08a24:	14430359 	bne	v0,v1,bfc0978c <inst_error>
bfc08a28:	00000000 	nop
/home/csy/func/inst/n61_lh.S:54
bfc08a2c:	3c090b89 	lui	t1,0xb89
bfc08a30:	35292a40 	ori	t1,t1,0x2a40
bfc08a34:	3c08800d 	lui	t0,0x800d
bfc08a38:	24030b89 	li	v1,2953
bfc08a3c:	3c010001 	lui	at,0x1
bfc08a40:	00280821 	addu	at,at,t0
bfc08a44:	ac29b038 	sw	t1,-20424(at)
bfc08a48:	25040004 	addiu	a0,t0,4
bfc08a4c:	2505fff8 	addiu	a1,t0,-8
bfc08a50:	3c010001 	lui	at,0x1
bfc08a54:	00240821 	addu	at,at,a0
bfc08a58:	ac24b038 	sw	a0,-20424(at)
bfc08a5c:	3c010001 	lui	at,0x1
bfc08a60:	00250821 	addu	at,at,a1
bfc08a64:	ac25b038 	sw	a1,-20424(at)
bfc08a68:	3c020001 	lui	v0,0x1
bfc08a6c:	00481021 	addu	v0,v0,t0
bfc08a70:	8442b03a 	lh	v0,-20422(v0)
bfc08a74:	3c050001 	lui	a1,0x1
bfc08a78:	00a42821 	addu	a1,a1,a0
bfc08a7c:	8ca5b038 	lw	a1,-20424(a1)
bfc08a80:	3c040001 	lui	a0,0x1
bfc08a84:	00852021 	addu	a0,a0,a1
bfc08a88:	8c84b038 	lw	a0,-20424(a0)
bfc08a8c:	3c060001 	lui	a2,0x1
bfc08a90:	00c53021 	addu	a2,a2,a1
bfc08a94:	8cc6b038 	lw	a2,-20424(a2)
bfc08a98:	1443033c 	bne	v0,v1,bfc0978c <inst_error>
bfc08a9c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:55
bfc08aa0:	3c09d92f 	lui	t1,0xd92f
bfc08aa4:	3529e108 	ori	t1,t1,0xe108
bfc08aa8:	3c08800d 	lui	t0,0x800d
bfc08aac:	2403e108 	li	v1,-7928
bfc08ab0:	ad095d48 	sw	t1,23880(t0)
bfc08ab4:	25040004 	addiu	a0,t0,4
bfc08ab8:	2505fff8 	addiu	a1,t0,-8
bfc08abc:	ac845d48 	sw	a0,23880(a0)
bfc08ac0:	aca55d48 	sw	a1,23880(a1)
bfc08ac4:	85025d48 	lh	v0,23880(t0)
bfc08ac8:	8c855d48 	lw	a1,23880(a0)
bfc08acc:	8ca45d48 	lw	a0,23880(a1)
bfc08ad0:	8ca65d48 	lw	a2,23880(a1)
bfc08ad4:	1443032d 	bne	v0,v1,bfc0978c <inst_error>
bfc08ad8:	00000000 	nop
/home/csy/func/inst/n61_lh.S:56
bfc08adc:	3c094c4b 	lui	t1,0x4c4b
bfc08ae0:	3529c954 	ori	t1,t1,0xc954
bfc08ae4:	3c08800d 	lui	t0,0x800d
bfc08ae8:	2403c954 	li	v1,-13996
bfc08aec:	ad092258 	sw	t1,8792(t0)
bfc08af0:	25040004 	addiu	a0,t0,4
bfc08af4:	2505fff8 	addiu	a1,t0,-8
bfc08af8:	ac842258 	sw	a0,8792(a0)
bfc08afc:	aca52258 	sw	a1,8792(a1)
bfc08b00:	85022258 	lh	v0,8792(t0)
bfc08b04:	8c852258 	lw	a1,8792(a0)
bfc08b08:	8ca42258 	lw	a0,8792(a1)
bfc08b0c:	8ca62258 	lw	a2,8792(a1)
bfc08b10:	1443031e 	bne	v0,v1,bfc0978c <inst_error>
bfc08b14:	00000000 	nop
/home/csy/func/inst/n61_lh.S:57
bfc08b18:	3c09b7ba 	lui	t1,0xb7ba
bfc08b1c:	3529ba40 	ori	t1,t1,0xba40
bfc08b20:	3c08800d 	lui	t0,0x800d
bfc08b24:	2403b7ba 	li	v1,-18502
bfc08b28:	3c010001 	lui	at,0x1
bfc08b2c:	00280821 	addu	at,at,t0
bfc08b30:	ac29a104 	sw	t1,-24316(at)
bfc08b34:	25040004 	addiu	a0,t0,4
bfc08b38:	2505fff8 	addiu	a1,t0,-8
bfc08b3c:	3c010001 	lui	at,0x1
bfc08b40:	00240821 	addu	at,at,a0
bfc08b44:	ac24a104 	sw	a0,-24316(at)
bfc08b48:	3c010001 	lui	at,0x1
bfc08b4c:	00250821 	addu	at,at,a1
bfc08b50:	ac25a104 	sw	a1,-24316(at)
bfc08b54:	3c020001 	lui	v0,0x1
bfc08b58:	00481021 	addu	v0,v0,t0
bfc08b5c:	8442a106 	lh	v0,-24314(v0)
bfc08b60:	3c050001 	lui	a1,0x1
bfc08b64:	00a42821 	addu	a1,a1,a0
bfc08b68:	8ca5a104 	lw	a1,-24316(a1)
bfc08b6c:	3c040001 	lui	a0,0x1
bfc08b70:	00852021 	addu	a0,a0,a1
bfc08b74:	8c84a104 	lw	a0,-24316(a0)
bfc08b78:	3c060001 	lui	a2,0x1
bfc08b7c:	00c53021 	addu	a2,a2,a1
bfc08b80:	8cc6a104 	lw	a2,-24316(a2)
bfc08b84:	14430301 	bne	v0,v1,bfc0978c <inst_error>
bfc08b88:	00000000 	nop
/home/csy/func/inst/n61_lh.S:58
bfc08b8c:	3c098a75 	lui	t1,0x8a75
bfc08b90:	35294a34 	ori	t1,t1,0x4a34
bfc08b94:	3c08800d 	lui	t0,0x800d
bfc08b98:	24034a34 	li	v1,18996
bfc08b9c:	ad0953a8 	sw	t1,21416(t0)
bfc08ba0:	25040004 	addiu	a0,t0,4
bfc08ba4:	2505fff8 	addiu	a1,t0,-8
bfc08ba8:	ac8453a8 	sw	a0,21416(a0)
bfc08bac:	aca553a8 	sw	a1,21416(a1)
bfc08bb0:	850253a8 	lh	v0,21416(t0)
bfc08bb4:	8c8553a8 	lw	a1,21416(a0)
bfc08bb8:	8ca453a8 	lw	a0,21416(a1)
bfc08bbc:	8ca653a8 	lw	a2,21416(a1)
bfc08bc0:	144302f2 	bne	v0,v1,bfc0978c <inst_error>
bfc08bc4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:59
bfc08bc8:	3c09062c 	lui	t1,0x62c
bfc08bcc:	35290990 	ori	t1,t1,0x990
bfc08bd0:	3c08800d 	lui	t0,0x800d
bfc08bd4:	24030990 	li	v1,2448
bfc08bd8:	3c010001 	lui	at,0x1
bfc08bdc:	00280821 	addu	at,at,t0
bfc08be0:	ac29b7c0 	sw	t1,-18496(at)
bfc08be4:	25040004 	addiu	a0,t0,4
bfc08be8:	2505fff8 	addiu	a1,t0,-8
bfc08bec:	3c010001 	lui	at,0x1
bfc08bf0:	00240821 	addu	at,at,a0
bfc08bf4:	ac24b7c0 	sw	a0,-18496(at)
bfc08bf8:	3c010001 	lui	at,0x1
bfc08bfc:	00250821 	addu	at,at,a1
bfc08c00:	ac25b7c0 	sw	a1,-18496(at)
bfc08c04:	3c020001 	lui	v0,0x1
bfc08c08:	00481021 	addu	v0,v0,t0
bfc08c0c:	8442b7c0 	lh	v0,-18496(v0)
bfc08c10:	3c050001 	lui	a1,0x1
bfc08c14:	00a42821 	addu	a1,a1,a0
bfc08c18:	8ca5b7c0 	lw	a1,-18496(a1)
bfc08c1c:	3c040001 	lui	a0,0x1
bfc08c20:	00852021 	addu	a0,a0,a1
bfc08c24:	8c84b7c0 	lw	a0,-18496(a0)
bfc08c28:	3c060001 	lui	a2,0x1
bfc08c2c:	00c53021 	addu	a2,a2,a1
bfc08c30:	8cc6b7c0 	lw	a2,-18496(a2)
bfc08c34:	144302d5 	bne	v0,v1,bfc0978c <inst_error>
bfc08c38:	00000000 	nop
/home/csy/func/inst/n61_lh.S:60
bfc08c3c:	3c09f3c0 	lui	t1,0xf3c0
bfc08c40:	3529fc50 	ori	t1,t1,0xfc50
bfc08c44:	3c08800d 	lui	t0,0x800d
bfc08c48:	2403f3c0 	li	v1,-3136
bfc08c4c:	3c010001 	lui	at,0x1
bfc08c50:	00280821 	addu	at,at,t0
bfc08c54:	ac29e690 	sw	t1,-6512(at)
bfc08c58:	25040004 	addiu	a0,t0,4
bfc08c5c:	2505fff8 	addiu	a1,t0,-8
bfc08c60:	3c010001 	lui	at,0x1
bfc08c64:	00240821 	addu	at,at,a0
bfc08c68:	ac24e690 	sw	a0,-6512(at)
bfc08c6c:	3c010001 	lui	at,0x1
bfc08c70:	00250821 	addu	at,at,a1
bfc08c74:	ac25e690 	sw	a1,-6512(at)
bfc08c78:	3c020001 	lui	v0,0x1
bfc08c7c:	00481021 	addu	v0,v0,t0
bfc08c80:	8442e692 	lh	v0,-6510(v0)
bfc08c84:	3c050001 	lui	a1,0x1
bfc08c88:	00a42821 	addu	a1,a1,a0
bfc08c8c:	8ca5e690 	lw	a1,-6512(a1)
bfc08c90:	3c040001 	lui	a0,0x1
bfc08c94:	00852021 	addu	a0,a0,a1
bfc08c98:	8c84e690 	lw	a0,-6512(a0)
bfc08c9c:	3c060001 	lui	a2,0x1
bfc08ca0:	00c53021 	addu	a2,a2,a1
bfc08ca4:	8cc6e690 	lw	a2,-6512(a2)
bfc08ca8:	144302b8 	bne	v0,v1,bfc0978c <inst_error>
bfc08cac:	00000000 	nop
/home/csy/func/inst/n61_lh.S:61
bfc08cb0:	3c09941e 	lui	t1,0x941e
bfc08cb4:	35291b70 	ori	t1,t1,0x1b70
bfc08cb8:	3c08800d 	lui	t0,0x800d
bfc08cbc:	24031b70 	li	v1,7024
bfc08cc0:	3c010001 	lui	at,0x1
bfc08cc4:	00280821 	addu	at,at,t0
bfc08cc8:	ac299544 	sw	t1,-27324(at)
bfc08ccc:	25040004 	addiu	a0,t0,4
bfc08cd0:	2505fff8 	addiu	a1,t0,-8
bfc08cd4:	3c010001 	lui	at,0x1
bfc08cd8:	00240821 	addu	at,at,a0
bfc08cdc:	ac249544 	sw	a0,-27324(at)
bfc08ce0:	3c010001 	lui	at,0x1
bfc08ce4:	00250821 	addu	at,at,a1
bfc08ce8:	ac259544 	sw	a1,-27324(at)
bfc08cec:	3c020001 	lui	v0,0x1
bfc08cf0:	00481021 	addu	v0,v0,t0
bfc08cf4:	84429544 	lh	v0,-27324(v0)
bfc08cf8:	3c050001 	lui	a1,0x1
bfc08cfc:	00a42821 	addu	a1,a1,a0
bfc08d00:	8ca59544 	lw	a1,-27324(a1)
bfc08d04:	3c040001 	lui	a0,0x1
bfc08d08:	00852021 	addu	a0,a0,a1
bfc08d0c:	8c849544 	lw	a0,-27324(a0)
bfc08d10:	3c060001 	lui	a2,0x1
bfc08d14:	00c53021 	addu	a2,a2,a1
bfc08d18:	8cc69544 	lw	a2,-27324(a2)
bfc08d1c:	1443029b 	bne	v0,v1,bfc0978c <inst_error>
bfc08d20:	00000000 	nop
/home/csy/func/inst/n61_lh.S:62
bfc08d24:	3c0906a8 	lui	t1,0x6a8
bfc08d28:	3529f600 	ori	t1,t1,0xf600
bfc08d2c:	3c08800d 	lui	t0,0x800d
bfc08d30:	240306a8 	li	v1,1704
bfc08d34:	3c010001 	lui	at,0x1
bfc08d38:	00280821 	addu	at,at,t0
bfc08d3c:	ac29c14c 	sw	t1,-16052(at)
bfc08d40:	25040004 	addiu	a0,t0,4
bfc08d44:	2505fff8 	addiu	a1,t0,-8
bfc08d48:	3c010001 	lui	at,0x1
bfc08d4c:	00240821 	addu	at,at,a0
bfc08d50:	ac24c14c 	sw	a0,-16052(at)
bfc08d54:	3c010001 	lui	at,0x1
bfc08d58:	00250821 	addu	at,at,a1
bfc08d5c:	ac25c14c 	sw	a1,-16052(at)
bfc08d60:	3c020001 	lui	v0,0x1
bfc08d64:	00481021 	addu	v0,v0,t0
bfc08d68:	8442c14e 	lh	v0,-16050(v0)
bfc08d6c:	3c050001 	lui	a1,0x1
bfc08d70:	00a42821 	addu	a1,a1,a0
bfc08d74:	8ca5c14c 	lw	a1,-16052(a1)
bfc08d78:	3c040001 	lui	a0,0x1
bfc08d7c:	00852021 	addu	a0,a0,a1
bfc08d80:	8c84c14c 	lw	a0,-16052(a0)
bfc08d84:	3c060001 	lui	a2,0x1
bfc08d88:	00c53021 	addu	a2,a2,a1
bfc08d8c:	8cc6c14c 	lw	a2,-16052(a2)
bfc08d90:	1443027e 	bne	v0,v1,bfc0978c <inst_error>
bfc08d94:	00000000 	nop
/home/csy/func/inst/n61_lh.S:63
bfc08d98:	3c09f0c9 	lui	t1,0xf0c9
bfc08d9c:	3529f8c0 	ori	t1,t1,0xf8c0
bfc08da0:	3c08800d 	lui	t0,0x800d
bfc08da4:	2403f0c9 	li	v1,-3895
bfc08da8:	ad094154 	sw	t1,16724(t0)
bfc08dac:	25040004 	addiu	a0,t0,4
bfc08db0:	2505fff8 	addiu	a1,t0,-8
bfc08db4:	ac844154 	sw	a0,16724(a0)
bfc08db8:	aca54154 	sw	a1,16724(a1)
bfc08dbc:	85024156 	lh	v0,16726(t0)
bfc08dc0:	8c854154 	lw	a1,16724(a0)
bfc08dc4:	8ca44154 	lw	a0,16724(a1)
bfc08dc8:	8ca64154 	lw	a2,16724(a1)
bfc08dcc:	1443026f 	bne	v0,v1,bfc0978c <inst_error>
bfc08dd0:	00000000 	nop
/home/csy/func/inst/n61_lh.S:64
bfc08dd4:	3c096d67 	lui	t1,0x6d67
bfc08dd8:	3529df7c 	ori	t1,t1,0xdf7c
bfc08ddc:	3c08800d 	lui	t0,0x800d
bfc08de0:	24036d67 	li	v1,28007
bfc08de4:	ad091ce4 	sw	t1,7396(t0)
bfc08de8:	25040004 	addiu	a0,t0,4
bfc08dec:	2505fff8 	addiu	a1,t0,-8
bfc08df0:	ac841ce4 	sw	a0,7396(a0)
bfc08df4:	aca51ce4 	sw	a1,7396(a1)
bfc08df8:	85021ce6 	lh	v0,7398(t0)
bfc08dfc:	8c851ce4 	lw	a1,7396(a0)
bfc08e00:	8ca41ce4 	lw	a0,7396(a1)
bfc08e04:	8ca61ce4 	lw	a2,7396(a1)
bfc08e08:	14430260 	bne	v0,v1,bfc0978c <inst_error>
bfc08e0c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:65
bfc08e10:	3c097b5c 	lui	t1,0x7b5c
bfc08e14:	35298c40 	ori	t1,t1,0x8c40
bfc08e18:	3c08800d 	lui	t0,0x800d
bfc08e1c:	24038c40 	li	v1,-29632
bfc08e20:	3c010001 	lui	at,0x1
bfc08e24:	00280821 	addu	at,at,t0
bfc08e28:	ac29a170 	sw	t1,-24208(at)
bfc08e2c:	25040004 	addiu	a0,t0,4
bfc08e30:	2505fff8 	addiu	a1,t0,-8
bfc08e34:	3c010001 	lui	at,0x1
bfc08e38:	00240821 	addu	at,at,a0
bfc08e3c:	ac24a170 	sw	a0,-24208(at)
bfc08e40:	3c010001 	lui	at,0x1
bfc08e44:	00250821 	addu	at,at,a1
bfc08e48:	ac25a170 	sw	a1,-24208(at)
bfc08e4c:	3c020001 	lui	v0,0x1
bfc08e50:	00481021 	addu	v0,v0,t0
bfc08e54:	8442a170 	lh	v0,-24208(v0)
bfc08e58:	3c050001 	lui	a1,0x1
bfc08e5c:	00a42821 	addu	a1,a1,a0
bfc08e60:	8ca5a170 	lw	a1,-24208(a1)
bfc08e64:	3c040001 	lui	a0,0x1
bfc08e68:	00852021 	addu	a0,a0,a1
bfc08e6c:	8c84a170 	lw	a0,-24208(a0)
bfc08e70:	3c060001 	lui	a2,0x1
bfc08e74:	00c53021 	addu	a2,a2,a1
bfc08e78:	8cc6a170 	lw	a2,-24208(a2)
bfc08e7c:	14430243 	bne	v0,v1,bfc0978c <inst_error>
bfc08e80:	00000000 	nop
/home/csy/func/inst/n61_lh.S:66
bfc08e84:	3c09a01d 	lui	t1,0xa01d
bfc08e88:	352988d6 	ori	t1,t1,0x88d6
bfc08e8c:	3c08800d 	lui	t0,0x800d
bfc08e90:	2403a01d 	li	v1,-24547
bfc08e94:	3c010001 	lui	at,0x1
bfc08e98:	00280821 	addu	at,at,t0
bfc08e9c:	ac29f234 	sw	t1,-3532(at)
bfc08ea0:	25040004 	addiu	a0,t0,4
bfc08ea4:	2505fff8 	addiu	a1,t0,-8
bfc08ea8:	3c010001 	lui	at,0x1
bfc08eac:	00240821 	addu	at,at,a0
bfc08eb0:	ac24f234 	sw	a0,-3532(at)
bfc08eb4:	3c010001 	lui	at,0x1
bfc08eb8:	00250821 	addu	at,at,a1
bfc08ebc:	ac25f234 	sw	a1,-3532(at)
bfc08ec0:	3c020001 	lui	v0,0x1
bfc08ec4:	00481021 	addu	v0,v0,t0
bfc08ec8:	8442f236 	lh	v0,-3530(v0)
bfc08ecc:	3c050001 	lui	a1,0x1
bfc08ed0:	00a42821 	addu	a1,a1,a0
bfc08ed4:	8ca5f234 	lw	a1,-3532(a1)
bfc08ed8:	3c040001 	lui	a0,0x1
bfc08edc:	00852021 	addu	a0,a0,a1
bfc08ee0:	8c84f234 	lw	a0,-3532(a0)
bfc08ee4:	3c060001 	lui	a2,0x1
bfc08ee8:	00c53021 	addu	a2,a2,a1
bfc08eec:	8cc6f234 	lw	a2,-3532(a2)
bfc08ef0:	14430226 	bne	v0,v1,bfc0978c <inst_error>
bfc08ef4:	00000000 	nop
/home/csy/func/inst/n61_lh.S:67
bfc08ef8:	3c09bb91 	lui	t1,0xbb91
bfc08efc:	3529715e 	ori	t1,t1,0x715e
bfc08f00:	3c08800d 	lui	t0,0x800d
bfc08f04:	2403bb91 	li	v1,-17519
bfc08f08:	3c010001 	lui	at,0x1
bfc08f0c:	00280821 	addu	at,at,t0
bfc08f10:	ac29ea5c 	sw	t1,-5540(at)
bfc08f14:	25040004 	addiu	a0,t0,4
bfc08f18:	2505fff8 	addiu	a1,t0,-8
bfc08f1c:	3c010001 	lui	at,0x1
bfc08f20:	00240821 	addu	at,at,a0
bfc08f24:	ac24ea5c 	sw	a0,-5540(at)
bfc08f28:	3c010001 	lui	at,0x1
bfc08f2c:	00250821 	addu	at,at,a1
bfc08f30:	ac25ea5c 	sw	a1,-5540(at)
bfc08f34:	3c020001 	lui	v0,0x1
bfc08f38:	00481021 	addu	v0,v0,t0
bfc08f3c:	8442ea5e 	lh	v0,-5538(v0)
bfc08f40:	3c050001 	lui	a1,0x1
bfc08f44:	00a42821 	addu	a1,a1,a0
bfc08f48:	8ca5ea5c 	lw	a1,-5540(a1)
bfc08f4c:	3c040001 	lui	a0,0x1
bfc08f50:	00852021 	addu	a0,a0,a1
bfc08f54:	8c84ea5c 	lw	a0,-5540(a0)
bfc08f58:	3c060001 	lui	a2,0x1
bfc08f5c:	00c53021 	addu	a2,a2,a1
bfc08f60:	8cc6ea5c 	lw	a2,-5540(a2)
bfc08f64:	14430209 	bne	v0,v1,bfc0978c <inst_error>
bfc08f68:	00000000 	nop
/home/csy/func/inst/n61_lh.S:68
bfc08f6c:	3c09a208 	lui	t1,0xa208
bfc08f70:	35296268 	ori	t1,t1,0x6268
bfc08f74:	3c08800d 	lui	t0,0x800d
bfc08f78:	24036268 	li	v1,25192
bfc08f7c:	3c010001 	lui	at,0x1
bfc08f80:	00280821 	addu	at,at,t0
bfc08f84:	ac29ae6c 	sw	t1,-20884(at)
bfc08f88:	25040004 	addiu	a0,t0,4
bfc08f8c:	2505fff8 	addiu	a1,t0,-8
bfc08f90:	3c010001 	lui	at,0x1
bfc08f94:	00240821 	addu	at,at,a0
bfc08f98:	ac24ae6c 	sw	a0,-20884(at)
bfc08f9c:	3c010001 	lui	at,0x1
bfc08fa0:	00250821 	addu	at,at,a1
bfc08fa4:	ac25ae6c 	sw	a1,-20884(at)
bfc08fa8:	3c020001 	lui	v0,0x1
bfc08fac:	00481021 	addu	v0,v0,t0
bfc08fb0:	8442ae6c 	lh	v0,-20884(v0)
bfc08fb4:	3c050001 	lui	a1,0x1
bfc08fb8:	00a42821 	addu	a1,a1,a0
bfc08fbc:	8ca5ae6c 	lw	a1,-20884(a1)
bfc08fc0:	3c040001 	lui	a0,0x1
bfc08fc4:	00852021 	addu	a0,a0,a1
bfc08fc8:	8c84ae6c 	lw	a0,-20884(a0)
bfc08fcc:	3c060001 	lui	a2,0x1
bfc08fd0:	00c53021 	addu	a2,a2,a1
bfc08fd4:	8cc6ae6c 	lw	a2,-20884(a2)
bfc08fd8:	144301ec 	bne	v0,v1,bfc0978c <inst_error>
bfc08fdc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:69
bfc08fe0:	3c09c16e 	lui	t1,0xc16e
bfc08fe4:	35297fd2 	ori	t1,t1,0x7fd2
bfc08fe8:	3c08800d 	lui	t0,0x800d
bfc08fec:	24037fd2 	li	v1,32722
bfc08ff0:	ad0910e4 	sw	t1,4324(t0)
bfc08ff4:	25040004 	addiu	a0,t0,4
bfc08ff8:	2505fff8 	addiu	a1,t0,-8
bfc08ffc:	ac8410e4 	sw	a0,4324(a0)
bfc09000:	aca510e4 	sw	a1,4324(a1)
bfc09004:	850210e4 	lh	v0,4324(t0)
bfc09008:	8c8510e4 	lw	a1,4324(a0)
bfc0900c:	8ca410e4 	lw	a0,4324(a1)
bfc09010:	8ca610e4 	lw	a2,4324(a1)
bfc09014:	144301dd 	bne	v0,v1,bfc0978c <inst_error>
bfc09018:	00000000 	nop
/home/csy/func/inst/n61_lh.S:70
bfc0901c:	3c09f26f 	lui	t1,0xf26f
bfc09020:	35290540 	ori	t1,t1,0x540
bfc09024:	3c08800d 	lui	t0,0x800d
bfc09028:	24030540 	li	v1,1344
bfc0902c:	ad097fb8 	sw	t1,32696(t0)
bfc09030:	25040004 	addiu	a0,t0,4
bfc09034:	2505fff8 	addiu	a1,t0,-8
bfc09038:	ac847fb8 	sw	a0,32696(a0)
bfc0903c:	aca57fb8 	sw	a1,32696(a1)
bfc09040:	85027fb8 	lh	v0,32696(t0)
bfc09044:	8c857fb8 	lw	a1,32696(a0)
bfc09048:	8ca47fb8 	lw	a0,32696(a1)
bfc0904c:	8ca67fb8 	lw	a2,32696(a1)
bfc09050:	144301ce 	bne	v0,v1,bfc0978c <inst_error>
bfc09054:	00000000 	nop
/home/csy/func/inst/n61_lh.S:71
bfc09058:	3c095df5 	lui	t1,0x5df5
bfc0905c:	3529b227 	ori	t1,t1,0xb227
bfc09060:	3c08800d 	lui	t0,0x800d
bfc09064:	24035df5 	li	v1,24053
bfc09068:	ad092b54 	sw	t1,11092(t0)
bfc0906c:	25040004 	addiu	a0,t0,4
bfc09070:	2505fff8 	addiu	a1,t0,-8
bfc09074:	ac842b54 	sw	a0,11092(a0)
bfc09078:	aca52b54 	sw	a1,11092(a1)
bfc0907c:	85022b56 	lh	v0,11094(t0)
bfc09080:	8c852b54 	lw	a1,11092(a0)
bfc09084:	8ca42b54 	lw	a0,11092(a1)
bfc09088:	8ca62b54 	lw	a2,11092(a1)
bfc0908c:	144301bf 	bne	v0,v1,bfc0978c <inst_error>
bfc09090:	00000000 	nop
/home/csy/func/inst/n61_lh.S:72
bfc09094:	3c0917cb 	lui	t1,0x17cb
bfc09098:	35292286 	ori	t1,t1,0x2286
bfc0909c:	3c08800d 	lui	t0,0x800d
bfc090a0:	24032286 	li	v1,8838
bfc090a4:	3c010001 	lui	at,0x1
bfc090a8:	00280821 	addu	at,at,t0
bfc090ac:	ac29a610 	sw	t1,-23024(at)
bfc090b0:	25040004 	addiu	a0,t0,4
bfc090b4:	2505fff8 	addiu	a1,t0,-8
bfc090b8:	3c010001 	lui	at,0x1
bfc090bc:	00240821 	addu	at,at,a0
bfc090c0:	ac24a610 	sw	a0,-23024(at)
bfc090c4:	3c010001 	lui	at,0x1
bfc090c8:	00250821 	addu	at,at,a1
bfc090cc:	ac25a610 	sw	a1,-23024(at)
bfc090d0:	3c020001 	lui	v0,0x1
bfc090d4:	00481021 	addu	v0,v0,t0
bfc090d8:	8442a610 	lh	v0,-23024(v0)
bfc090dc:	3c050001 	lui	a1,0x1
bfc090e0:	00a42821 	addu	a1,a1,a0
bfc090e4:	8ca5a610 	lw	a1,-23024(a1)
bfc090e8:	3c040001 	lui	a0,0x1
bfc090ec:	00852021 	addu	a0,a0,a1
bfc090f0:	8c84a610 	lw	a0,-23024(a0)
bfc090f4:	3c060001 	lui	a2,0x1
bfc090f8:	00c53021 	addu	a2,a2,a1
bfc090fc:	8cc6a610 	lw	a2,-23024(a2)
bfc09100:	144301a2 	bne	v0,v1,bfc0978c <inst_error>
bfc09104:	00000000 	nop
/home/csy/func/inst/n61_lh.S:73
bfc09108:	3c09cc5b 	lui	t1,0xcc5b
bfc0910c:	35292bee 	ori	t1,t1,0x2bee
bfc09110:	3c08800d 	lui	t0,0x800d
bfc09114:	2403cc5b 	li	v1,-13221
bfc09118:	3c010001 	lui	at,0x1
bfc0911c:	00280821 	addu	at,at,t0
bfc09120:	ac29ba30 	sw	t1,-17872(at)
bfc09124:	25040004 	addiu	a0,t0,4
bfc09128:	2505fff8 	addiu	a1,t0,-8
bfc0912c:	3c010001 	lui	at,0x1
bfc09130:	00240821 	addu	at,at,a0
bfc09134:	ac24ba30 	sw	a0,-17872(at)
bfc09138:	3c010001 	lui	at,0x1
bfc0913c:	00250821 	addu	at,at,a1
bfc09140:	ac25ba30 	sw	a1,-17872(at)
bfc09144:	3c020001 	lui	v0,0x1
bfc09148:	00481021 	addu	v0,v0,t0
bfc0914c:	8442ba32 	lh	v0,-17870(v0)
bfc09150:	3c050001 	lui	a1,0x1
bfc09154:	00a42821 	addu	a1,a1,a0
bfc09158:	8ca5ba30 	lw	a1,-17872(a1)
bfc0915c:	3c040001 	lui	a0,0x1
bfc09160:	00852021 	addu	a0,a0,a1
bfc09164:	8c84ba30 	lw	a0,-17872(a0)
bfc09168:	3c060001 	lui	a2,0x1
bfc0916c:	00c53021 	addu	a2,a2,a1
bfc09170:	8cc6ba30 	lw	a2,-17872(a2)
bfc09174:	14430185 	bne	v0,v1,bfc0978c <inst_error>
bfc09178:	00000000 	nop
/home/csy/func/inst/n61_lh.S:74
bfc0917c:	3c09f148 	lui	t1,0xf148
bfc09180:	3529bba0 	ori	t1,t1,0xbba0
bfc09184:	3c08800d 	lui	t0,0x800d
bfc09188:	2403f148 	li	v1,-3768
bfc0918c:	3c010001 	lui	at,0x1
bfc09190:	00280821 	addu	at,at,t0
bfc09194:	ac29a0d0 	sw	t1,-24368(at)
bfc09198:	25040004 	addiu	a0,t0,4
bfc0919c:	2505fff8 	addiu	a1,t0,-8
bfc091a0:	3c010001 	lui	at,0x1
bfc091a4:	00240821 	addu	at,at,a0
bfc091a8:	ac24a0d0 	sw	a0,-24368(at)
bfc091ac:	3c010001 	lui	at,0x1
bfc091b0:	00250821 	addu	at,at,a1
bfc091b4:	ac25a0d0 	sw	a1,-24368(at)
bfc091b8:	3c020001 	lui	v0,0x1
bfc091bc:	00481021 	addu	v0,v0,t0
bfc091c0:	8442a0d2 	lh	v0,-24366(v0)
bfc091c4:	3c050001 	lui	a1,0x1
bfc091c8:	00a42821 	addu	a1,a1,a0
bfc091cc:	8ca5a0d0 	lw	a1,-24368(a1)
bfc091d0:	3c040001 	lui	a0,0x1
bfc091d4:	00852021 	addu	a0,a0,a1
bfc091d8:	8c84a0d0 	lw	a0,-24368(a0)
bfc091dc:	3c060001 	lui	a2,0x1
bfc091e0:	00c53021 	addu	a2,a2,a1
bfc091e4:	8cc6a0d0 	lw	a2,-24368(a2)
bfc091e8:	14430168 	bne	v0,v1,bfc0978c <inst_error>
bfc091ec:	00000000 	nop
/home/csy/func/inst/n61_lh.S:75
bfc091f0:	3c093377 	lui	t1,0x3377
bfc091f4:	352925a6 	ori	t1,t1,0x25a6
bfc091f8:	3c08800d 	lui	t0,0x800d
bfc091fc:	24033377 	li	v1,13175
bfc09200:	ad09762c 	sw	t1,30252(t0)
bfc09204:	25040004 	addiu	a0,t0,4
bfc09208:	2505fff8 	addiu	a1,t0,-8
bfc0920c:	ac84762c 	sw	a0,30252(a0)
bfc09210:	aca5762c 	sw	a1,30252(a1)
bfc09214:	8502762e 	lh	v0,30254(t0)
bfc09218:	8c85762c 	lw	a1,30252(a0)
bfc0921c:	8ca4762c 	lw	a0,30252(a1)
bfc09220:	8ca6762c 	lw	a2,30252(a1)
bfc09224:	14430159 	bne	v0,v1,bfc0978c <inst_error>
bfc09228:	00000000 	nop
/home/csy/func/inst/n61_lh.S:76
bfc0922c:	3c092982 	lui	t1,0x2982
bfc09230:	3529116c 	ori	t1,t1,0x116c
bfc09234:	3c08800d 	lui	t0,0x800d
bfc09238:	2403116c 	li	v1,4460
bfc0923c:	3c010001 	lui	at,0x1
bfc09240:	00280821 	addu	at,at,t0
bfc09244:	ac29b980 	sw	t1,-18048(at)
bfc09248:	25040004 	addiu	a0,t0,4
bfc0924c:	2505fff8 	addiu	a1,t0,-8
bfc09250:	3c010001 	lui	at,0x1
bfc09254:	00240821 	addu	at,at,a0
bfc09258:	ac24b980 	sw	a0,-18048(at)
bfc0925c:	3c010001 	lui	at,0x1
bfc09260:	00250821 	addu	at,at,a1
bfc09264:	ac25b980 	sw	a1,-18048(at)
bfc09268:	3c020001 	lui	v0,0x1
bfc0926c:	00481021 	addu	v0,v0,t0
bfc09270:	8442b980 	lh	v0,-18048(v0)
bfc09274:	3c050001 	lui	a1,0x1
bfc09278:	00a42821 	addu	a1,a1,a0
bfc0927c:	8ca5b980 	lw	a1,-18048(a1)
bfc09280:	3c040001 	lui	a0,0x1
bfc09284:	00852021 	addu	a0,a0,a1
bfc09288:	8c84b980 	lw	a0,-18048(a0)
bfc0928c:	3c060001 	lui	a2,0x1
bfc09290:	00c53021 	addu	a2,a2,a1
bfc09294:	8cc6b980 	lw	a2,-18048(a2)
bfc09298:	1443013c 	bne	v0,v1,bfc0978c <inst_error>
bfc0929c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:77
bfc092a0:	3c09f335 	lui	t1,0xf335
bfc092a4:	3529ae26 	ori	t1,t1,0xae26
bfc092a8:	3c08800d 	lui	t0,0x800d
bfc092ac:	2403ae26 	li	v1,-20954
bfc092b0:	3c010001 	lui	at,0x1
bfc092b4:	00280821 	addu	at,at,t0
bfc092b8:	ac29de14 	sw	t1,-8684(at)
bfc092bc:	25040004 	addiu	a0,t0,4
bfc092c0:	2505fff8 	addiu	a1,t0,-8
bfc092c4:	3c010001 	lui	at,0x1
bfc092c8:	00240821 	addu	at,at,a0
bfc092cc:	ac24de14 	sw	a0,-8684(at)
bfc092d0:	3c010001 	lui	at,0x1
bfc092d4:	00250821 	addu	at,at,a1
bfc092d8:	ac25de14 	sw	a1,-8684(at)
bfc092dc:	3c020001 	lui	v0,0x1
bfc092e0:	00481021 	addu	v0,v0,t0
bfc092e4:	8442de14 	lh	v0,-8684(v0)
bfc092e8:	3c050001 	lui	a1,0x1
bfc092ec:	00a42821 	addu	a1,a1,a0
bfc092f0:	8ca5de14 	lw	a1,-8684(a1)
bfc092f4:	3c040001 	lui	a0,0x1
bfc092f8:	00852021 	addu	a0,a0,a1
bfc092fc:	8c84de14 	lw	a0,-8684(a0)
bfc09300:	3c060001 	lui	a2,0x1
bfc09304:	00c53021 	addu	a2,a2,a1
bfc09308:	8cc6de14 	lw	a2,-8684(a2)
bfc0930c:	1443011f 	bne	v0,v1,bfc0978c <inst_error>
bfc09310:	00000000 	nop
/home/csy/func/inst/n61_lh.S:78
bfc09314:	3c091cea 	lui	t1,0x1cea
bfc09318:	35293011 	ori	t1,t1,0x3011
bfc0931c:	3c08800d 	lui	t0,0x800d
bfc09320:	24033011 	li	v1,12305
bfc09324:	ad094610 	sw	t1,17936(t0)
bfc09328:	25040004 	addiu	a0,t0,4
bfc0932c:	2505fff8 	addiu	a1,t0,-8
bfc09330:	ac844610 	sw	a0,17936(a0)
bfc09334:	aca54610 	sw	a1,17936(a1)
bfc09338:	85024610 	lh	v0,17936(t0)
bfc0933c:	8c854610 	lw	a1,17936(a0)
bfc09340:	8ca44610 	lw	a0,17936(a1)
bfc09344:	8ca64610 	lw	a2,17936(a1)
bfc09348:	14430110 	bne	v0,v1,bfc0978c <inst_error>
bfc0934c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:79
bfc09350:	3c095288 	lui	t1,0x5288
bfc09354:	3529a4be 	ori	t1,t1,0xa4be
bfc09358:	3c08800d 	lui	t0,0x800d
bfc0935c:	2403a4be 	li	v1,-23362
bfc09360:	ad0920e0 	sw	t1,8416(t0)
bfc09364:	25040004 	addiu	a0,t0,4
bfc09368:	2505fff8 	addiu	a1,t0,-8
bfc0936c:	ac8420e0 	sw	a0,8416(a0)
bfc09370:	aca520e0 	sw	a1,8416(a1)
bfc09374:	850220e0 	lh	v0,8416(t0)
bfc09378:	8c8520e0 	lw	a1,8416(a0)
bfc0937c:	8ca420e0 	lw	a0,8416(a1)
bfc09380:	8ca620e0 	lw	a2,8416(a1)
bfc09384:	14430101 	bne	v0,v1,bfc0978c <inst_error>
bfc09388:	00000000 	nop
/home/csy/func/inst/n61_lh.S:80
bfc0938c:	3c09aba5 	lui	t1,0xaba5
bfc09390:	35298c80 	ori	t1,t1,0x8c80
bfc09394:	3c08800d 	lui	t0,0x800d
bfc09398:	24038c80 	li	v1,-29568
bfc0939c:	3c010001 	lui	at,0x1
bfc093a0:	00280821 	addu	at,at,t0
bfc093a4:	ac29cecc 	sw	t1,-12596(at)
bfc093a8:	25040004 	addiu	a0,t0,4
bfc093ac:	2505fff8 	addiu	a1,t0,-8
bfc093b0:	3c010001 	lui	at,0x1
bfc093b4:	00240821 	addu	at,at,a0
bfc093b8:	ac24cecc 	sw	a0,-12596(at)
bfc093bc:	3c010001 	lui	at,0x1
bfc093c0:	00250821 	addu	at,at,a1
bfc093c4:	ac25cecc 	sw	a1,-12596(at)
bfc093c8:	3c020001 	lui	v0,0x1
bfc093cc:	00481021 	addu	v0,v0,t0
bfc093d0:	8442cecc 	lh	v0,-12596(v0)
bfc093d4:	3c050001 	lui	a1,0x1
bfc093d8:	00a42821 	addu	a1,a1,a0
bfc093dc:	8ca5cecc 	lw	a1,-12596(a1)
bfc093e0:	3c040001 	lui	a0,0x1
bfc093e4:	00852021 	addu	a0,a0,a1
bfc093e8:	8c84cecc 	lw	a0,-12596(a0)
bfc093ec:	3c060001 	lui	a2,0x1
bfc093f0:	00c53021 	addu	a2,a2,a1
bfc093f4:	8cc6cecc 	lw	a2,-12596(a2)
bfc093f8:	144300e4 	bne	v0,v1,bfc0978c <inst_error>
bfc093fc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:81
bfc09400:	3c098780 	lui	t1,0x8780
bfc09404:	352918c0 	ori	t1,t1,0x18c0
bfc09408:	3c08800d 	lui	t0,0x800d
bfc0940c:	240318c0 	li	v1,6336
bfc09410:	ad091a08 	sw	t1,6664(t0)
bfc09414:	25040004 	addiu	a0,t0,4
bfc09418:	2505fff8 	addiu	a1,t0,-8
bfc0941c:	ac841a08 	sw	a0,6664(a0)
bfc09420:	aca51a08 	sw	a1,6664(a1)
bfc09424:	85021a08 	lh	v0,6664(t0)
bfc09428:	8c851a08 	lw	a1,6664(a0)
bfc0942c:	8ca41a08 	lw	a0,6664(a1)
bfc09430:	8ca61a08 	lw	a2,6664(a1)
bfc09434:	144300d5 	bne	v0,v1,bfc0978c <inst_error>
bfc09438:	00000000 	nop
/home/csy/func/inst/n61_lh.S:82
bfc0943c:	3c09dcfe 	lui	t1,0xdcfe
bfc09440:	35297908 	ori	t1,t1,0x7908
bfc09444:	3c08800d 	lui	t0,0x800d
bfc09448:	2403dcfe 	li	v1,-8962
bfc0944c:	ad090000 	sw	t1,0(t0)
bfc09450:	25040004 	addiu	a0,t0,4
bfc09454:	2505fff8 	addiu	a1,t0,-8
bfc09458:	ac840000 	sw	a0,0(a0)
bfc0945c:	aca50000 	sw	a1,0(a1)
bfc09460:	85020002 	lh	v0,2(t0)
bfc09464:	8c850000 	lw	a1,0(a0)
bfc09468:	8ca40000 	lw	a0,0(a1)
bfc0946c:	8ca60000 	lw	a2,0(a1)
bfc09470:	144300c6 	bne	v0,v1,bfc0978c <inst_error>
bfc09474:	00000000 	nop
/home/csy/func/inst/n61_lh.S:83
bfc09478:	3c09ca7e 	lui	t1,0xca7e
bfc0947c:	35292534 	ori	t1,t1,0x2534
bfc09480:	3c08800d 	lui	t0,0x800d
bfc09484:	24032534 	li	v1,9524
bfc09488:	ad090000 	sw	t1,0(t0)
bfc0948c:	25040004 	addiu	a0,t0,4
bfc09490:	2505fff8 	addiu	a1,t0,-8
bfc09494:	ac840000 	sw	a0,0(a0)
bfc09498:	aca50000 	sw	a1,0(a1)
bfc0949c:	85020000 	lh	v0,0(t0)
bfc094a0:	8c850000 	lw	a1,0(a0)
bfc094a4:	8ca40000 	lw	a0,0(a1)
bfc094a8:	8ca60000 	lw	a2,0(a1)
bfc094ac:	144300b7 	bne	v0,v1,bfc0978c <inst_error>
bfc094b0:	00000000 	nop
/home/csy/func/inst/n61_lh.S:84
bfc094b4:	3c093a5f 	lui	t1,0x3a5f
bfc094b8:	35295000 	ori	t1,t1,0x5000
bfc094bc:	3c08800d 	lui	t0,0x800d
bfc094c0:	24035000 	li	v1,20480
bfc094c4:	ad090000 	sw	t1,0(t0)
bfc094c8:	25040004 	addiu	a0,t0,4
bfc094cc:	2505fff8 	addiu	a1,t0,-8
bfc094d0:	ac840000 	sw	a0,0(a0)
bfc094d4:	aca50000 	sw	a1,0(a1)
bfc094d8:	85020000 	lh	v0,0(t0)
bfc094dc:	8c850000 	lw	a1,0(a0)
bfc094e0:	8ca40000 	lw	a0,0(a1)
bfc094e4:	8ca60000 	lw	a2,0(a1)
bfc094e8:	144300a8 	bne	v0,v1,bfc0978c <inst_error>
bfc094ec:	00000000 	nop
/home/csy/func/inst/n61_lh.S:85
bfc094f0:	3c09c087 	lui	t1,0xc087
bfc094f4:	3529931c 	ori	t1,t1,0x931c
bfc094f8:	3c08800d 	lui	t0,0x800d
bfc094fc:	2403931c 	li	v1,-27876
bfc09500:	ad090000 	sw	t1,0(t0)
bfc09504:	25040004 	addiu	a0,t0,4
bfc09508:	2505fff8 	addiu	a1,t0,-8
bfc0950c:	ac840000 	sw	a0,0(a0)
bfc09510:	aca50000 	sw	a1,0(a1)
bfc09514:	85020000 	lh	v0,0(t0)
bfc09518:	8c850000 	lw	a1,0(a0)
bfc0951c:	8ca40000 	lw	a0,0(a1)
bfc09520:	8ca60000 	lw	a2,0(a1)
bfc09524:	14430099 	bne	v0,v1,bfc0978c <inst_error>
bfc09528:	00000000 	nop
/home/csy/func/inst/n61_lh.S:86
bfc0952c:	3c090352 	lui	t1,0x352
bfc09530:	3529c2b4 	ori	t1,t1,0xc2b4
bfc09534:	3c08800d 	lui	t0,0x800d
bfc09538:	24030352 	li	v1,850
bfc0953c:	ad090000 	sw	t1,0(t0)
bfc09540:	25040004 	addiu	a0,t0,4
bfc09544:	2505fff8 	addiu	a1,t0,-8
bfc09548:	ac840000 	sw	a0,0(a0)
bfc0954c:	aca50000 	sw	a1,0(a1)
bfc09550:	85020002 	lh	v0,2(t0)
bfc09554:	8c850000 	lw	a1,0(a0)
bfc09558:	8ca40000 	lw	a0,0(a1)
bfc0955c:	8ca60000 	lw	a2,0(a1)
bfc09560:	1443008a 	bne	v0,v1,bfc0978c <inst_error>
bfc09564:	00000000 	nop
/home/csy/func/inst/n61_lh.S:87
bfc09568:	3c096742 	lui	t1,0x6742
bfc0956c:	352936b0 	ori	t1,t1,0x36b0
bfc09570:	3c08800d 	lui	t0,0x800d
bfc09574:	240336b0 	li	v1,14000
bfc09578:	ad090000 	sw	t1,0(t0)
bfc0957c:	25040004 	addiu	a0,t0,4
bfc09580:	2505fff8 	addiu	a1,t0,-8
bfc09584:	ac840000 	sw	a0,0(a0)
bfc09588:	aca50000 	sw	a1,0(a1)
bfc0958c:	85020000 	lh	v0,0(t0)
bfc09590:	8c850000 	lw	a1,0(a0)
bfc09594:	8ca40000 	lw	a0,0(a1)
bfc09598:	8ca60000 	lw	a2,0(a1)
bfc0959c:	1443007b 	bne	v0,v1,bfc0978c <inst_error>
bfc095a0:	00000000 	nop
/home/csy/func/inst/n61_lh.S:88
bfc095a4:	3c09b800 	lui	t1,0xb800
bfc095a8:	35298adc 	ori	t1,t1,0x8adc
bfc095ac:	3c08800d 	lui	t0,0x800d
bfc095b0:	2403b800 	li	v1,-18432
bfc095b4:	ad090000 	sw	t1,0(t0)
bfc095b8:	25040004 	addiu	a0,t0,4
bfc095bc:	2505fff8 	addiu	a1,t0,-8
bfc095c0:	ac840000 	sw	a0,0(a0)
bfc095c4:	aca50000 	sw	a1,0(a1)
bfc095c8:	85020002 	lh	v0,2(t0)
bfc095cc:	8c850000 	lw	a1,0(a0)
bfc095d0:	8ca40000 	lw	a0,0(a1)
bfc095d4:	8ca60000 	lw	a2,0(a1)
bfc095d8:	1443006c 	bne	v0,v1,bfc0978c <inst_error>
bfc095dc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:89
bfc095e0:	3c099368 	lui	t1,0x9368
bfc095e4:	3529c576 	ori	t1,t1,0xc576
bfc095e8:	3c08800d 	lui	t0,0x800d
bfc095ec:	2403c576 	li	v1,-14986
bfc095f0:	ad090000 	sw	t1,0(t0)
bfc095f4:	25040004 	addiu	a0,t0,4
bfc095f8:	2505fff8 	addiu	a1,t0,-8
bfc095fc:	ac840000 	sw	a0,0(a0)
bfc09600:	aca50000 	sw	a1,0(a1)
bfc09604:	85020000 	lh	v0,0(t0)
bfc09608:	8c850000 	lw	a1,0(a0)
bfc0960c:	8ca40000 	lw	a0,0(a1)
bfc09610:	8ca60000 	lw	a2,0(a1)
bfc09614:	1443005d 	bne	v0,v1,bfc0978c <inst_error>
bfc09618:	00000000 	nop
/home/csy/func/inst/n61_lh.S:90
bfc0961c:	3c09fba1 	lui	t1,0xfba1
bfc09620:	3529ce40 	ori	t1,t1,0xce40
bfc09624:	3c08800d 	lui	t0,0x800d
bfc09628:	2403ce40 	li	v1,-12736
bfc0962c:	ad090000 	sw	t1,0(t0)
bfc09630:	25040004 	addiu	a0,t0,4
bfc09634:	2505fff8 	addiu	a1,t0,-8
bfc09638:	ac840000 	sw	a0,0(a0)
bfc0963c:	aca50000 	sw	a1,0(a1)
bfc09640:	85020000 	lh	v0,0(t0)
bfc09644:	8c850000 	lw	a1,0(a0)
bfc09648:	8ca40000 	lw	a0,0(a1)
bfc0964c:	8ca60000 	lw	a2,0(a1)
bfc09650:	1443004e 	bne	v0,v1,bfc0978c <inst_error>
bfc09654:	00000000 	nop
/home/csy/func/inst/n61_lh.S:91
bfc09658:	3c09585c 	lui	t1,0x585c
bfc0965c:	35295e30 	ori	t1,t1,0x5e30
bfc09660:	3c08800d 	lui	t0,0x800d
bfc09664:	24035e30 	li	v1,24112
bfc09668:	ad090000 	sw	t1,0(t0)
bfc0966c:	25040004 	addiu	a0,t0,4
bfc09670:	2505fff8 	addiu	a1,t0,-8
bfc09674:	ac840000 	sw	a0,0(a0)
bfc09678:	aca50000 	sw	a1,0(a1)
bfc0967c:	85020000 	lh	v0,0(t0)
bfc09680:	8c850000 	lw	a1,0(a0)
bfc09684:	8ca40000 	lw	a0,0(a1)
bfc09688:	8ca60000 	lw	a2,0(a1)
bfc0968c:	1443003f 	bne	v0,v1,bfc0978c <inst_error>
bfc09690:	00000000 	nop
/home/csy/func/inst/n61_lh.S:92
bfc09694:	3c099915 	lui	t1,0x9915
bfc09698:	3529f89c 	ori	t1,t1,0xf89c
bfc0969c:	3c08800d 	lui	t0,0x800d
bfc096a0:	2403f89c 	li	v1,-1892
bfc096a4:	ad090000 	sw	t1,0(t0)
bfc096a8:	25040004 	addiu	a0,t0,4
bfc096ac:	2505fff8 	addiu	a1,t0,-8
bfc096b0:	ac840000 	sw	a0,0(a0)
bfc096b4:	aca50000 	sw	a1,0(a1)
bfc096b8:	85020000 	lh	v0,0(t0)
bfc096bc:	8c850000 	lw	a1,0(a0)
bfc096c0:	8ca40000 	lw	a0,0(a1)
bfc096c4:	8ca60000 	lw	a2,0(a1)
bfc096c8:	14430030 	bne	v0,v1,bfc0978c <inst_error>
bfc096cc:	00000000 	nop
/home/csy/func/inst/n61_lh.S:93
bfc096d0:	3c098aef 	lui	t1,0x8aef
bfc096d4:	3529a220 	ori	t1,t1,0xa220
bfc096d8:	3c08800d 	lui	t0,0x800d
bfc096dc:	24038aef 	li	v1,-29969
bfc096e0:	ad090000 	sw	t1,0(t0)
bfc096e4:	25040004 	addiu	a0,t0,4
bfc096e8:	2505fff8 	addiu	a1,t0,-8
bfc096ec:	ac840000 	sw	a0,0(a0)
bfc096f0:	aca50000 	sw	a1,0(a1)
bfc096f4:	85020002 	lh	v0,2(t0)
bfc096f8:	8c850000 	lw	a1,0(a0)
bfc096fc:	8ca40000 	lw	a0,0(a1)
bfc09700:	8ca60000 	lw	a2,0(a1)
bfc09704:	14430021 	bne	v0,v1,bfc0978c <inst_error>
bfc09708:	00000000 	nop
/home/csy/func/inst/n61_lh.S:94
bfc0970c:	3c0942cc 	lui	t1,0x42cc
bfc09710:	3529ca62 	ori	t1,t1,0xca62
bfc09714:	3c08800d 	lui	t0,0x800d
bfc09718:	2403ca62 	li	v1,-13726
bfc0971c:	ad090000 	sw	t1,0(t0)
bfc09720:	25040004 	addiu	a0,t0,4
bfc09724:	2505fff8 	addiu	a1,t0,-8
bfc09728:	ac840000 	sw	a0,0(a0)
bfc0972c:	aca50000 	sw	a1,0(a1)
bfc09730:	85020000 	lh	v0,0(t0)
bfc09734:	8c850000 	lw	a1,0(a0)
bfc09738:	8ca40000 	lw	a0,0(a1)
bfc0973c:	8ca60000 	lw	a2,0(a1)
bfc09740:	14430012 	bne	v0,v1,bfc0978c <inst_error>
bfc09744:	00000000 	nop
/home/csy/func/inst/n61_lh.S:95
bfc09748:	24090000 	li	t1,0
bfc0974c:	3c08800d 	lui	t0,0x800d
bfc09750:	24030000 	li	v1,0
bfc09754:	ad090000 	sw	t1,0(t0)
bfc09758:	25040004 	addiu	a0,t0,4
bfc0975c:	2505fff8 	addiu	a1,t0,-8
bfc09760:	ac840000 	sw	a0,0(a0)
bfc09764:	aca50000 	sw	a1,0(a1)
bfc09768:	85020000 	lh	v0,0(t0)
bfc0976c:	8c850000 	lw	a1,0(a0)
bfc09770:	8ca40000 	lw	a0,0(a1)
bfc09774:	8ca60000 	lw	a2,0(a1)
bfc09778:	14430004 	bne	v0,v1,bfc0978c <inst_error>
bfc0977c:	00000000 	nop
/home/csy/func/inst/n61_lh.S:97
bfc09780:	16400002 	bnez	s2,bfc0978c <inst_error>
/home/csy/func/inst/n61_lh.S:98
bfc09784:	00000000 	nop
/home/csy/func/inst/n61_lh.S:100
bfc09788:	26730001 	addiu	s3,s3,1

bfc0978c <inst_error>:
/home/csy/func/inst/n61_lh.S:103
bfc0978c:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n61_lh.S:104
bfc09790:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n61_lh.S:105
bfc09794:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n61_lh.S:106
bfc09798:	03e00008 	jr	ra
/home/csy/func/inst/n61_lh.S:107
bfc0979c:	00000000 	nop

bfc097a0 <n64_sh_test>:
/home/csy/func/inst/n64_sh.S:7
bfc097a0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n64_sh.S:8
bfc097a4:	24120000 	li	s2,0
/home/csy/func/inst/n64_sh.S:10
bfc097a8:	3c0ae15f 	lui	t2,0xe15f
bfc097ac:	354a8848 	ori	t2,t2,0x8848
bfc097b0:	3c090e1a 	lui	t1,0xe1a
bfc097b4:	35293600 	ori	t1,t1,0x3600
bfc097b8:	3c08800d 	lui	t0,0x800d
bfc097bc:	350852a4 	ori	t0,t0,0x52a4
bfc097c0:	3c033600 	lui	v1,0x3600
bfc097c4:	34638848 	ori	v1,v1,0x8848
bfc097c8:	ad0a3adc 	sw	t2,15068(t0)
bfc097cc:	a5093ade 	sh	t1,15070(t0)
bfc097d0:	25040004 	addiu	a0,t0,4
bfc097d4:	2505fffc 	addiu	a1,t0,-4
bfc097d8:	ac843adc 	sw	a0,15068(a0)
bfc097dc:	aca53adc 	sw	a1,15068(a1)
bfc097e0:	8d023adc 	lw	v0,15068(t0)
bfc097e4:	8ca43adc 	lw	a0,15068(a1)
bfc097e8:	8c853adc 	lw	a1,15068(a0)
bfc097ec:	8ca63adc 	lw	a2,15068(a1)
bfc097f0:	14430999 	bne	v0,v1,bfc0be58 <inst_error>
bfc097f4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:11
bfc097f8:	3c0a0410 	lui	t2,0x410
bfc097fc:	354a5cf0 	ori	t2,t2,0x5cf0
bfc09800:	3c09b64d 	lui	t1,0xb64d
bfc09804:	35295300 	ori	t1,t1,0x5300
bfc09808:	3c08800d 	lui	t0,0x800d
bfc0980c:	35083f6c 	ori	t0,t0,0x3f6c
bfc09810:	3c035300 	lui	v1,0x5300
bfc09814:	34635cf0 	ori	v1,v1,0x5cf0
bfc09818:	ad0a1568 	sw	t2,5480(t0)
bfc0981c:	a509156a 	sh	t1,5482(t0)
bfc09820:	25040004 	addiu	a0,t0,4
bfc09824:	2505fffc 	addiu	a1,t0,-4
bfc09828:	ac841568 	sw	a0,5480(a0)
bfc0982c:	aca51568 	sw	a1,5480(a1)
bfc09830:	8d021568 	lw	v0,5480(t0)
bfc09834:	8ca41568 	lw	a0,5480(a1)
bfc09838:	8c851568 	lw	a1,5480(a0)
bfc0983c:	8ca61568 	lw	a2,5480(a1)
bfc09840:	14430985 	bne	v0,v1,bfc0be58 <inst_error>
bfc09844:	00000000 	nop
/home/csy/func/inst/n64_sh.S:12
bfc09848:	3c0ad187 	lui	t2,0xd187
bfc0984c:	354abd18 	ori	t2,t2,0xbd18
bfc09850:	3c09a1cf 	lui	t1,0xa1cf
bfc09854:	3529708e 	ori	t1,t1,0x708e
bfc09858:	3c08800d 	lui	t0,0x800d
bfc0985c:	3508b7a0 	ori	t0,t0,0xb7a0
bfc09860:	3c03d187 	lui	v1,0xd187
bfc09864:	3463708e 	ori	v1,v1,0x708e
bfc09868:	ad0a0bf4 	sw	t2,3060(t0)
bfc0986c:	a5090bf4 	sh	t1,3060(t0)
bfc09870:	25040004 	addiu	a0,t0,4
bfc09874:	2505fffc 	addiu	a1,t0,-4
bfc09878:	ac840bf4 	sw	a0,3060(a0)
bfc0987c:	aca50bf4 	sw	a1,3060(a1)
bfc09880:	8d020bf4 	lw	v0,3060(t0)
bfc09884:	8ca40bf4 	lw	a0,3060(a1)
bfc09888:	8c850bf4 	lw	a1,3060(a0)
bfc0988c:	8ca60bf4 	lw	a2,3060(a1)
bfc09890:	14430971 	bne	v0,v1,bfc0be58 <inst_error>
bfc09894:	00000000 	nop
/home/csy/func/inst/n64_sh.S:13
bfc09898:	3c0ab5ab 	lui	t2,0xb5ab
bfc0989c:	354acbf4 	ori	t2,t2,0xcbf4
bfc098a0:	3c09ee02 	lui	t1,0xee02
bfc098a4:	3529bbc2 	ori	t1,t1,0xbbc2
bfc098a8:	3c08800d 	lui	t0,0x800d
bfc098ac:	35086188 	ori	t0,t0,0x6188
bfc098b0:	3c03b5ab 	lui	v1,0xb5ab
bfc098b4:	3463bbc2 	ori	v1,v1,0xbbc2
bfc098b8:	ad0a2e44 	sw	t2,11844(t0)
bfc098bc:	a5092e44 	sh	t1,11844(t0)
bfc098c0:	25040004 	addiu	a0,t0,4
bfc098c4:	2505fffc 	addiu	a1,t0,-4
bfc098c8:	ac842e44 	sw	a0,11844(a0)
bfc098cc:	aca52e44 	sw	a1,11844(a1)
bfc098d0:	8d022e44 	lw	v0,11844(t0)
bfc098d4:	8ca42e44 	lw	a0,11844(a1)
bfc098d8:	8c852e44 	lw	a1,11844(a0)
bfc098dc:	8ca62e44 	lw	a2,11844(a1)
bfc098e0:	1443095d 	bne	v0,v1,bfc0be58 <inst_error>
bfc098e4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:14
bfc098e8:	3c0a6b04 	lui	t2,0x6b04
bfc098ec:	354abf60 	ori	t2,t2,0xbf60
bfc098f0:	3c093069 	lui	t1,0x3069
bfc098f4:	352960f0 	ori	t1,t1,0x60f0
bfc098f8:	3c08800d 	lui	t0,0x800d
bfc098fc:	35088d40 	ori	t0,t0,0x8d40
bfc09900:	3c036b04 	lui	v1,0x6b04
bfc09904:	346360f0 	ori	v1,v1,0x60f0
bfc09908:	ad0a6580 	sw	t2,25984(t0)
bfc0990c:	a5096580 	sh	t1,25984(t0)
bfc09910:	25040004 	addiu	a0,t0,4
bfc09914:	2505fffc 	addiu	a1,t0,-4
bfc09918:	ac846580 	sw	a0,25984(a0)
bfc0991c:	aca56580 	sw	a1,25984(a1)
bfc09920:	8d026580 	lw	v0,25984(t0)
bfc09924:	8ca46580 	lw	a0,25984(a1)
bfc09928:	8c856580 	lw	a1,25984(a0)
bfc0992c:	8ca66580 	lw	a2,25984(a1)
bfc09930:	14430949 	bne	v0,v1,bfc0be58 <inst_error>
bfc09934:	00000000 	nop
/home/csy/func/inst/n64_sh.S:15
bfc09938:	3c0a2532 	lui	t2,0x2532
bfc0993c:	354ad240 	ori	t2,t2,0xd240
bfc09940:	3c09fe00 	lui	t1,0xfe00
bfc09944:	3529ebf6 	ori	t1,t1,0xebf6
bfc09948:	3c08800d 	lui	t0,0x800d
bfc0994c:	35087090 	ori	t0,t0,0x7090
bfc09950:	3c03ebf6 	lui	v1,0xebf6
bfc09954:	3463d240 	ori	v1,v1,0xd240
bfc09958:	ad0a2084 	sw	t2,8324(t0)
bfc0995c:	a5092086 	sh	t1,8326(t0)
bfc09960:	25040004 	addiu	a0,t0,4
bfc09964:	2505fffc 	addiu	a1,t0,-4
bfc09968:	ac842084 	sw	a0,8324(a0)
bfc0996c:	aca52084 	sw	a1,8324(a1)
bfc09970:	8d022084 	lw	v0,8324(t0)
bfc09974:	8ca42084 	lw	a0,8324(a1)
bfc09978:	8c852084 	lw	a1,8324(a0)
bfc0997c:	8ca62084 	lw	a2,8324(a1)
bfc09980:	14430935 	bne	v0,v1,bfc0be58 <inst_error>
bfc09984:	00000000 	nop
/home/csy/func/inst/n64_sh.S:16
bfc09988:	3c0a2b61 	lui	t2,0x2b61
bfc0998c:	354aec90 	ori	t2,t2,0xec90
bfc09990:	3c0928bd 	lui	t1,0x28bd
bfc09994:	3529e000 	ori	t1,t1,0xe000
bfc09998:	3c08800d 	lui	t0,0x800d
bfc0999c:	350824e0 	ori	t0,t0,0x24e0
bfc099a0:	3c03e000 	lui	v1,0xe000
bfc099a4:	3463ec90 	ori	v1,v1,0xec90
bfc099a8:	ad0a24d4 	sw	t2,9428(t0)
bfc099ac:	a50924d6 	sh	t1,9430(t0)
bfc099b0:	25040004 	addiu	a0,t0,4
bfc099b4:	2505fffc 	addiu	a1,t0,-4
bfc099b8:	ac8424d4 	sw	a0,9428(a0)
bfc099bc:	aca524d4 	sw	a1,9428(a1)
bfc099c0:	8d0224d4 	lw	v0,9428(t0)
bfc099c4:	8ca424d4 	lw	a0,9428(a1)
bfc099c8:	8c8524d4 	lw	a1,9428(a0)
bfc099cc:	8ca624d4 	lw	a2,9428(a1)
bfc099d0:	14430921 	bne	v0,v1,bfc0be58 <inst_error>
bfc099d4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:17
bfc099d8:	3c0aa52d 	lui	t2,0xa52d
bfc099dc:	354ae360 	ori	t2,t2,0xe360
bfc099e0:	3c09f569 	lui	t1,0xf569
bfc099e4:	35299820 	ori	t1,t1,0x9820
bfc099e8:	3c08800d 	lui	t0,0x800d
bfc099ec:	35083b4c 	ori	t0,t0,0x3b4c
bfc099f0:	3c03a52d 	lui	v1,0xa52d
bfc099f4:	34639820 	ori	v1,v1,0x9820
bfc099f8:	ad0a5e50 	sw	t2,24144(t0)
bfc099fc:	a5095e50 	sh	t1,24144(t0)
bfc09a00:	25040004 	addiu	a0,t0,4
bfc09a04:	2505fffc 	addiu	a1,t0,-4
bfc09a08:	ac845e50 	sw	a0,24144(a0)
bfc09a0c:	aca55e50 	sw	a1,24144(a1)
bfc09a10:	8d025e50 	lw	v0,24144(t0)
bfc09a14:	8ca45e50 	lw	a0,24144(a1)
bfc09a18:	8c855e50 	lw	a1,24144(a0)
bfc09a1c:	8ca65e50 	lw	a2,24144(a1)
bfc09a20:	1443090d 	bne	v0,v1,bfc0be58 <inst_error>
bfc09a24:	00000000 	nop
/home/csy/func/inst/n64_sh.S:18
bfc09a28:	3c0a7978 	lui	t2,0x7978
bfc09a2c:	354aaff8 	ori	t2,t2,0xaff8
bfc09a30:	3c09a69f 	lui	t1,0xa69f
bfc09a34:	35293ca0 	ori	t1,t1,0x3ca0
bfc09a38:	3c08800d 	lui	t0,0x800d
bfc09a3c:	35082968 	ori	t0,t0,0x2968
bfc09a40:	3c037978 	lui	v1,0x7978
bfc09a44:	34633ca0 	ori	v1,v1,0x3ca0
bfc09a48:	ad0a5364 	sw	t2,21348(t0)
bfc09a4c:	a5095364 	sh	t1,21348(t0)
bfc09a50:	25040004 	addiu	a0,t0,4
bfc09a54:	2505fffc 	addiu	a1,t0,-4
bfc09a58:	ac845364 	sw	a0,21348(a0)
bfc09a5c:	aca55364 	sw	a1,21348(a1)
bfc09a60:	8d025364 	lw	v0,21348(t0)
bfc09a64:	8ca45364 	lw	a0,21348(a1)
bfc09a68:	8c855364 	lw	a1,21348(a0)
bfc09a6c:	8ca65364 	lw	a2,21348(a1)
bfc09a70:	144308f9 	bne	v0,v1,bfc0be58 <inst_error>
bfc09a74:	00000000 	nop
/home/csy/func/inst/n64_sh.S:19
bfc09a78:	3c0ac4dd 	lui	t2,0xc4dd
bfc09a7c:	354ac7df 	ori	t2,t2,0xc7df
bfc09a80:	3c090a66 	lui	t1,0xa66
bfc09a84:	3529bf0c 	ori	t1,t1,0xbf0c
bfc09a88:	3c08800d 	lui	t0,0x800d
bfc09a8c:	3508ad70 	ori	t0,t0,0xad70
bfc09a90:	3c03c4dd 	lui	v1,0xc4dd
bfc09a94:	3463bf0c 	ori	v1,v1,0xbf0c
bfc09a98:	ad0a02bc 	sw	t2,700(t0)
bfc09a9c:	a50902bc 	sh	t1,700(t0)
bfc09aa0:	25040004 	addiu	a0,t0,4
bfc09aa4:	2505fffc 	addiu	a1,t0,-4
bfc09aa8:	ac8402bc 	sw	a0,700(a0)
bfc09aac:	aca502bc 	sw	a1,700(a1)
bfc09ab0:	8d0202bc 	lw	v0,700(t0)
bfc09ab4:	8ca402bc 	lw	a0,700(a1)
bfc09ab8:	8c8502bc 	lw	a1,700(a0)
bfc09abc:	8ca602bc 	lw	a2,700(a1)
bfc09ac0:	144308e5 	bne	v0,v1,bfc0be58 <inst_error>
bfc09ac4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:20
bfc09ac8:	3c0ad6ef 	lui	t2,0xd6ef
bfc09acc:	354a145e 	ori	t2,t2,0x145e
bfc09ad0:	3c0927d4 	lui	t1,0x27d4
bfc09ad4:	3529869c 	ori	t1,t1,0x869c
bfc09ad8:	3c08800d 	lui	t0,0x800d
bfc09adc:	35081500 	ori	t0,t0,0x1500
bfc09ae0:	3c03869c 	lui	v1,0x869c
bfc09ae4:	3463145e 	ori	v1,v1,0x145e
bfc09ae8:	ad0a48b4 	sw	t2,18612(t0)
bfc09aec:	a50948b6 	sh	t1,18614(t0)
bfc09af0:	25040004 	addiu	a0,t0,4
bfc09af4:	2505fffc 	addiu	a1,t0,-4
bfc09af8:	ac8448b4 	sw	a0,18612(a0)
bfc09afc:	aca548b4 	sw	a1,18612(a1)
bfc09b00:	8d0248b4 	lw	v0,18612(t0)
bfc09b04:	8ca448b4 	lw	a0,18612(a1)
bfc09b08:	8c8548b4 	lw	a1,18612(a0)
bfc09b0c:	8ca648b4 	lw	a2,18612(a1)
bfc09b10:	144308d1 	bne	v0,v1,bfc0be58 <inst_error>
bfc09b14:	00000000 	nop
/home/csy/func/inst/n64_sh.S:21
bfc09b18:	3c0ae57c 	lui	t2,0xe57c
bfc09b1c:	354a6800 	ori	t2,t2,0x6800
bfc09b20:	3c09a1fc 	lui	t1,0xa1fc
bfc09b24:	35296927 	ori	t1,t1,0x6927
bfc09b28:	3c08800d 	lui	t0,0x800d
bfc09b2c:	35082f30 	ori	t0,t0,0x2f30
bfc09b30:	3c03e57c 	lui	v1,0xe57c
bfc09b34:	34636927 	ori	v1,v1,0x6927
bfc09b38:	ad0a693c 	sw	t2,26940(t0)
bfc09b3c:	a509693c 	sh	t1,26940(t0)
bfc09b40:	25040004 	addiu	a0,t0,4
bfc09b44:	2505fffc 	addiu	a1,t0,-4
bfc09b48:	ac84693c 	sw	a0,26940(a0)
bfc09b4c:	aca5693c 	sw	a1,26940(a1)
bfc09b50:	8d02693c 	lw	v0,26940(t0)
bfc09b54:	8ca4693c 	lw	a0,26940(a1)
bfc09b58:	8c85693c 	lw	a1,26940(a0)
bfc09b5c:	8ca6693c 	lw	a2,26940(a1)
bfc09b60:	144308bd 	bne	v0,v1,bfc0be58 <inst_error>
bfc09b64:	00000000 	nop
/home/csy/func/inst/n64_sh.S:22
bfc09b68:	3c0aa645 	lui	t2,0xa645
bfc09b6c:	354a0915 	ori	t2,t2,0x915
bfc09b70:	3c094c8f 	lui	t1,0x4c8f
bfc09b74:	3529b6e6 	ori	t1,t1,0xb6e6
bfc09b78:	3c08800d 	lui	t0,0x800d
bfc09b7c:	35082728 	ori	t0,t0,0x2728
bfc09b80:	3c03a645 	lui	v1,0xa645
bfc09b84:	3463b6e6 	ori	v1,v1,0xb6e6
bfc09b88:	ad0a22b8 	sw	t2,8888(t0)
bfc09b8c:	a50922b8 	sh	t1,8888(t0)
bfc09b90:	25040004 	addiu	a0,t0,4
bfc09b94:	2505fffc 	addiu	a1,t0,-4
bfc09b98:	ac8422b8 	sw	a0,8888(a0)
bfc09b9c:	aca522b8 	sw	a1,8888(a1)
bfc09ba0:	8d0222b8 	lw	v0,8888(t0)
bfc09ba4:	8ca422b8 	lw	a0,8888(a1)
bfc09ba8:	8c8522b8 	lw	a1,8888(a0)
bfc09bac:	8ca622b8 	lw	a2,8888(a1)
bfc09bb0:	144308a9 	bne	v0,v1,bfc0be58 <inst_error>
bfc09bb4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:23
bfc09bb8:	3c0a3937 	lui	t2,0x3937
bfc09bbc:	354a8cfc 	ori	t2,t2,0x8cfc
bfc09bc0:	3c09ec7b 	lui	t1,0xec7b
bfc09bc4:	35292b18 	ori	t1,t1,0x2b18
bfc09bc8:	3c08800d 	lui	t0,0x800d
bfc09bcc:	3508e270 	ori	t0,t0,0xe270
bfc09bd0:	3c033937 	lui	v1,0x3937
bfc09bd4:	34632b18 	ori	v1,v1,0x2b18
bfc09bd8:	ad0a05f4 	sw	t2,1524(t0)
bfc09bdc:	a50905f4 	sh	t1,1524(t0)
bfc09be0:	25040004 	addiu	a0,t0,4
bfc09be4:	2505fffc 	addiu	a1,t0,-4
bfc09be8:	ac8405f4 	sw	a0,1524(a0)
bfc09bec:	aca505f4 	sw	a1,1524(a1)
bfc09bf0:	8d0205f4 	lw	v0,1524(t0)
bfc09bf4:	8ca405f4 	lw	a0,1524(a1)
bfc09bf8:	8c8505f4 	lw	a1,1524(a0)
bfc09bfc:	8ca605f4 	lw	a2,1524(a1)
bfc09c00:	14430895 	bne	v0,v1,bfc0be58 <inst_error>
bfc09c04:	00000000 	nop
/home/csy/func/inst/n64_sh.S:24
bfc09c08:	3c0a4171 	lui	t2,0x4171
bfc09c0c:	354ab083 	ori	t2,t2,0xb083
bfc09c10:	3c0958c1 	lui	t1,0x58c1
bfc09c14:	3529d2c8 	ori	t1,t1,0xd2c8
bfc09c18:	3c08800d 	lui	t0,0x800d
bfc09c1c:	35083098 	ori	t0,t0,0x3098
bfc09c20:	3c034171 	lui	v1,0x4171
bfc09c24:	3463d2c8 	ori	v1,v1,0xd2c8
bfc09c28:	ad0a004c 	sw	t2,76(t0)
bfc09c2c:	a509004c 	sh	t1,76(t0)
bfc09c30:	25040004 	addiu	a0,t0,4
bfc09c34:	2505fffc 	addiu	a1,t0,-4
bfc09c38:	ac84004c 	sw	a0,76(a0)
bfc09c3c:	aca5004c 	sw	a1,76(a1)
bfc09c40:	8d02004c 	lw	v0,76(t0)
bfc09c44:	8ca4004c 	lw	a0,76(a1)
bfc09c48:	8c85004c 	lw	a1,76(a0)
bfc09c4c:	8ca6004c 	lw	a2,76(a1)
bfc09c50:	14430881 	bne	v0,v1,bfc0be58 <inst_error>
bfc09c54:	00000000 	nop
/home/csy/func/inst/n64_sh.S:25
bfc09c58:	3c0a7616 	lui	t2,0x7616
bfc09c5c:	354a56b0 	ori	t2,t2,0x56b0
bfc09c60:	3c0902f5 	lui	t1,0x2f5
bfc09c64:	35293f68 	ori	t1,t1,0x3f68
bfc09c68:	3c08800d 	lui	t0,0x800d
bfc09c6c:	35083c40 	ori	t0,t0,0x3c40
bfc09c70:	3c037616 	lui	v1,0x7616
bfc09c74:	34633f68 	ori	v1,v1,0x3f68
bfc09c78:	3c010001 	lui	at,0x1
bfc09c7c:	00280821 	addu	at,at,t0
bfc09c80:	ac2a85dc 	sw	t2,-31268(at)
bfc09c84:	3c010001 	lui	at,0x1
bfc09c88:	00280821 	addu	at,at,t0
bfc09c8c:	a42985dc 	sh	t1,-31268(at)
bfc09c90:	25040004 	addiu	a0,t0,4
bfc09c94:	2505fffc 	addiu	a1,t0,-4
bfc09c98:	3c010001 	lui	at,0x1
bfc09c9c:	00240821 	addu	at,at,a0
bfc09ca0:	ac2485dc 	sw	a0,-31268(at)
bfc09ca4:	3c010001 	lui	at,0x1
bfc09ca8:	00250821 	addu	at,at,a1
bfc09cac:	ac2585dc 	sw	a1,-31268(at)
bfc09cb0:	3c020001 	lui	v0,0x1
bfc09cb4:	00481021 	addu	v0,v0,t0
bfc09cb8:	8c4285dc 	lw	v0,-31268(v0)
bfc09cbc:	3c040001 	lui	a0,0x1
bfc09cc0:	00852021 	addu	a0,a0,a1
bfc09cc4:	8c8485dc 	lw	a0,-31268(a0)
bfc09cc8:	3c050001 	lui	a1,0x1
bfc09ccc:	00a42821 	addu	a1,a1,a0
bfc09cd0:	8ca585dc 	lw	a1,-31268(a1)
bfc09cd4:	3c060001 	lui	a2,0x1
bfc09cd8:	00c53021 	addu	a2,a2,a1
bfc09cdc:	8cc685dc 	lw	a2,-31268(a2)
bfc09ce0:	1443085d 	bne	v0,v1,bfc0be58 <inst_error>
bfc09ce4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:26
bfc09ce8:	3c0ae249 	lui	t2,0xe249
bfc09cec:	354aae52 	ori	t2,t2,0xae52
bfc09cf0:	3c098d75 	lui	t1,0x8d75
bfc09cf4:	3529b188 	ori	t1,t1,0xb188
bfc09cf8:	3c08800d 	lui	t0,0x800d
bfc09cfc:	35080a20 	ori	t0,t0,0xa20
bfc09d00:	3c03b188 	lui	v1,0xb188
bfc09d04:	3463ae52 	ori	v1,v1,0xae52
bfc09d08:	3c010001 	lui	at,0x1
bfc09d0c:	00280821 	addu	at,at,t0
bfc09d10:	ac2ad0d8 	sw	t2,-12072(at)
bfc09d14:	3c010001 	lui	at,0x1
bfc09d18:	00280821 	addu	at,at,t0
bfc09d1c:	a429d0da 	sh	t1,-12070(at)
bfc09d20:	25040004 	addiu	a0,t0,4
bfc09d24:	2505fffc 	addiu	a1,t0,-4
bfc09d28:	3c010001 	lui	at,0x1
bfc09d2c:	00240821 	addu	at,at,a0
bfc09d30:	ac24d0d8 	sw	a0,-12072(at)
bfc09d34:	3c010001 	lui	at,0x1
bfc09d38:	00250821 	addu	at,at,a1
bfc09d3c:	ac25d0d8 	sw	a1,-12072(at)
bfc09d40:	3c020001 	lui	v0,0x1
bfc09d44:	00481021 	addu	v0,v0,t0
bfc09d48:	8c42d0d8 	lw	v0,-12072(v0)
bfc09d4c:	3c040001 	lui	a0,0x1
bfc09d50:	00852021 	addu	a0,a0,a1
bfc09d54:	8c84d0d8 	lw	a0,-12072(a0)
bfc09d58:	3c050001 	lui	a1,0x1
bfc09d5c:	00a42821 	addu	a1,a1,a0
bfc09d60:	8ca5d0d8 	lw	a1,-12072(a1)
bfc09d64:	3c060001 	lui	a2,0x1
bfc09d68:	00c53021 	addu	a2,a2,a1
bfc09d6c:	8cc6d0d8 	lw	a2,-12072(a2)
bfc09d70:	14430839 	bne	v0,v1,bfc0be58 <inst_error>
bfc09d74:	00000000 	nop
/home/csy/func/inst/n64_sh.S:27
bfc09d78:	3c0aaa82 	lui	t2,0xaa82
bfc09d7c:	354a73e0 	ori	t2,t2,0x73e0
bfc09d80:	3c094ad4 	lui	t1,0x4ad4
bfc09d84:	35294d00 	ori	t1,t1,0x4d00
bfc09d88:	3c08800d 	lui	t0,0x800d
bfc09d8c:	35089cf0 	ori	t0,t0,0x9cf0
bfc09d90:	3c03aa82 	lui	v1,0xaa82
bfc09d94:	34634d00 	ori	v1,v1,0x4d00
bfc09d98:	ad0a3ecc 	sw	t2,16076(t0)
bfc09d9c:	a5093ecc 	sh	t1,16076(t0)
bfc09da0:	25040004 	addiu	a0,t0,4
bfc09da4:	2505fffc 	addiu	a1,t0,-4
bfc09da8:	ac843ecc 	sw	a0,16076(a0)
bfc09dac:	aca53ecc 	sw	a1,16076(a1)
bfc09db0:	8d023ecc 	lw	v0,16076(t0)
bfc09db4:	8ca43ecc 	lw	a0,16076(a1)
bfc09db8:	8c853ecc 	lw	a1,16076(a0)
bfc09dbc:	8ca63ecc 	lw	a2,16076(a1)
bfc09dc0:	14430825 	bne	v0,v1,bfc0be58 <inst_error>
bfc09dc4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:28
bfc09dc8:	3c0a98dd 	lui	t2,0x98dd
bfc09dcc:	354a412e 	ori	t2,t2,0x412e
bfc09dd0:	3c09c3e1 	lui	t1,0xc3e1
bfc09dd4:	3529f538 	ori	t1,t1,0xf538
bfc09dd8:	3c08800d 	lui	t0,0x800d
bfc09ddc:	350833d4 	ori	t0,t0,0x33d4
bfc09de0:	3c0398dd 	lui	v1,0x98dd
bfc09de4:	3463f538 	ori	v1,v1,0xf538
bfc09de8:	ad0a6888 	sw	t2,26760(t0)
bfc09dec:	a5096888 	sh	t1,26760(t0)
bfc09df0:	25040004 	addiu	a0,t0,4
bfc09df4:	2505fffc 	addiu	a1,t0,-4
bfc09df8:	ac846888 	sw	a0,26760(a0)
bfc09dfc:	aca56888 	sw	a1,26760(a1)
bfc09e00:	8d026888 	lw	v0,26760(t0)
bfc09e04:	8ca46888 	lw	a0,26760(a1)
bfc09e08:	8c856888 	lw	a1,26760(a0)
bfc09e0c:	8ca66888 	lw	a2,26760(a1)
bfc09e10:	14430811 	bne	v0,v1,bfc0be58 <inst_error>
bfc09e14:	00000000 	nop
/home/csy/func/inst/n64_sh.S:29
bfc09e18:	3c0af705 	lui	t2,0xf705
bfc09e1c:	354a1708 	ori	t2,t2,0x1708
bfc09e20:	3c092612 	lui	t1,0x2612
bfc09e24:	3529cae7 	ori	t1,t1,0xcae7
bfc09e28:	3c08800d 	lui	t0,0x800d
bfc09e2c:	3508910c 	ori	t0,t0,0x910c
bfc09e30:	3c03cae7 	lui	v1,0xcae7
bfc09e34:	34631708 	ori	v1,v1,0x1708
bfc09e38:	ad0a6588 	sw	t2,25992(t0)
bfc09e3c:	a509658a 	sh	t1,25994(t0)
bfc09e40:	25040004 	addiu	a0,t0,4
bfc09e44:	2505fffc 	addiu	a1,t0,-4
bfc09e48:	ac846588 	sw	a0,25992(a0)
bfc09e4c:	aca56588 	sw	a1,25992(a1)
bfc09e50:	8d026588 	lw	v0,25992(t0)
bfc09e54:	8ca46588 	lw	a0,25992(a1)
bfc09e58:	8c856588 	lw	a1,25992(a0)
bfc09e5c:	8ca66588 	lw	a2,25992(a1)
bfc09e60:	144307fd 	bne	v0,v1,bfc0be58 <inst_error>
bfc09e64:	00000000 	nop
/home/csy/func/inst/n64_sh.S:30
bfc09e68:	3c0af649 	lui	t2,0xf649
bfc09e6c:	354ab700 	ori	t2,t2,0xb700
bfc09e70:	3c09d674 	lui	t1,0xd674
bfc09e74:	3529f530 	ori	t1,t1,0xf530
bfc09e78:	3c08800d 	lui	t0,0x800d
bfc09e7c:	350843f4 	ori	t0,t0,0x43f4
bfc09e80:	3c03f649 	lui	v1,0xf649
bfc09e84:	3463f530 	ori	v1,v1,0xf530
bfc09e88:	ad0a7ae0 	sw	t2,31456(t0)
bfc09e8c:	a5097ae0 	sh	t1,31456(t0)
bfc09e90:	25040004 	addiu	a0,t0,4
bfc09e94:	2505fffc 	addiu	a1,t0,-4
bfc09e98:	ac847ae0 	sw	a0,31456(a0)
bfc09e9c:	aca57ae0 	sw	a1,31456(a1)
bfc09ea0:	8d027ae0 	lw	v0,31456(t0)
bfc09ea4:	8ca47ae0 	lw	a0,31456(a1)
bfc09ea8:	8c857ae0 	lw	a1,31456(a0)
bfc09eac:	8ca67ae0 	lw	a2,31456(a1)
bfc09eb0:	144307e9 	bne	v0,v1,bfc0be58 <inst_error>
bfc09eb4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:31
bfc09eb8:	3c0a0080 	lui	t2,0x80
bfc09ebc:	354a4f26 	ori	t2,t2,0x4f26
bfc09ec0:	3c0923b1 	lui	t1,0x23b1
bfc09ec4:	3529f91c 	ori	t1,t1,0xf91c
bfc09ec8:	3c08800d 	lui	t0,0x800d
bfc09ecc:	35082b58 	ori	t0,t0,0x2b58
bfc09ed0:	3c03f91c 	lui	v1,0xf91c
bfc09ed4:	34634f26 	ori	v1,v1,0x4f26
bfc09ed8:	3c010001 	lui	at,0x1
bfc09edc:	00280821 	addu	at,at,t0
bfc09ee0:	ac2ac824 	sw	t2,-14300(at)
bfc09ee4:	3c010001 	lui	at,0x1
bfc09ee8:	00280821 	addu	at,at,t0
bfc09eec:	a429c826 	sh	t1,-14298(at)
bfc09ef0:	25040004 	addiu	a0,t0,4
bfc09ef4:	2505fffc 	addiu	a1,t0,-4
bfc09ef8:	3c010001 	lui	at,0x1
bfc09efc:	00240821 	addu	at,at,a0
bfc09f00:	ac24c824 	sw	a0,-14300(at)
bfc09f04:	3c010001 	lui	at,0x1
bfc09f08:	00250821 	addu	at,at,a1
bfc09f0c:	ac25c824 	sw	a1,-14300(at)
bfc09f10:	3c020001 	lui	v0,0x1
bfc09f14:	00481021 	addu	v0,v0,t0
bfc09f18:	8c42c824 	lw	v0,-14300(v0)
bfc09f1c:	3c040001 	lui	a0,0x1
bfc09f20:	00852021 	addu	a0,a0,a1
bfc09f24:	8c84c824 	lw	a0,-14300(a0)
bfc09f28:	3c050001 	lui	a1,0x1
bfc09f2c:	00a42821 	addu	a1,a1,a0
bfc09f30:	8ca5c824 	lw	a1,-14300(a1)
bfc09f34:	3c060001 	lui	a2,0x1
bfc09f38:	00c53021 	addu	a2,a2,a1
bfc09f3c:	8cc6c824 	lw	a2,-14300(a2)
bfc09f40:	144307c5 	bne	v0,v1,bfc0be58 <inst_error>
bfc09f44:	00000000 	nop
/home/csy/func/inst/n64_sh.S:32
bfc09f48:	3c0a82ca 	lui	t2,0x82ca
bfc09f4c:	354a8844 	ori	t2,t2,0x8844
bfc09f50:	3c09b7b6 	lui	t1,0xb7b6
bfc09f54:	3529d134 	ori	t1,t1,0xd134
bfc09f58:	3c08800d 	lui	t0,0x800d
bfc09f5c:	3508065c 	ori	t0,t0,0x65c
bfc09f60:	3c0382ca 	lui	v1,0x82ca
bfc09f64:	3463d134 	ori	v1,v1,0xd134
bfc09f68:	ad0a1508 	sw	t2,5384(t0)
bfc09f6c:	a5091508 	sh	t1,5384(t0)
bfc09f70:	25040004 	addiu	a0,t0,4
bfc09f74:	2505fffc 	addiu	a1,t0,-4
bfc09f78:	ac841508 	sw	a0,5384(a0)
bfc09f7c:	aca51508 	sw	a1,5384(a1)
bfc09f80:	8d021508 	lw	v0,5384(t0)
bfc09f84:	8ca41508 	lw	a0,5384(a1)
bfc09f88:	8c851508 	lw	a1,5384(a0)
bfc09f8c:	8ca61508 	lw	a2,5384(a1)
bfc09f90:	144307b1 	bne	v0,v1,bfc0be58 <inst_error>
bfc09f94:	00000000 	nop
/home/csy/func/inst/n64_sh.S:33
bfc09f98:	3c0a74b5 	lui	t2,0x74b5
bfc09f9c:	354a6c00 	ori	t2,t2,0x6c00
bfc09fa0:	3c09c125 	lui	t1,0xc125
bfc09fa4:	35290920 	ori	t1,t1,0x920
bfc09fa8:	3c08800d 	lui	t0,0x800d
bfc09fac:	35084370 	ori	t0,t0,0x4370
bfc09fb0:	3c030920 	lui	v1,0x920
bfc09fb4:	34636c00 	ori	v1,v1,0x6c00
bfc09fb8:	3c010001 	lui	at,0x1
bfc09fbc:	00280821 	addu	at,at,t0
bfc09fc0:	ac2a8a90 	sw	t2,-30064(at)
bfc09fc4:	3c010001 	lui	at,0x1
bfc09fc8:	00280821 	addu	at,at,t0
bfc09fcc:	a4298a92 	sh	t1,-30062(at)
bfc09fd0:	25040004 	addiu	a0,t0,4
bfc09fd4:	2505fffc 	addiu	a1,t0,-4
bfc09fd8:	3c010001 	lui	at,0x1
bfc09fdc:	00240821 	addu	at,at,a0
bfc09fe0:	ac248a90 	sw	a0,-30064(at)
bfc09fe4:	3c010001 	lui	at,0x1
bfc09fe8:	00250821 	addu	at,at,a1
bfc09fec:	ac258a90 	sw	a1,-30064(at)
bfc09ff0:	3c020001 	lui	v0,0x1
bfc09ff4:	00481021 	addu	v0,v0,t0
bfc09ff8:	8c428a90 	lw	v0,-30064(v0)
bfc09ffc:	3c040001 	lui	a0,0x1
bfc0a000:	00852021 	addu	a0,a0,a1
bfc0a004:	8c848a90 	lw	a0,-30064(a0)
bfc0a008:	3c050001 	lui	a1,0x1
bfc0a00c:	00a42821 	addu	a1,a1,a0
bfc0a010:	8ca58a90 	lw	a1,-30064(a1)
bfc0a014:	3c060001 	lui	a2,0x1
bfc0a018:	00c53021 	addu	a2,a2,a1
bfc0a01c:	8cc68a90 	lw	a2,-30064(a2)
bfc0a020:	1443078d 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a024:	00000000 	nop
/home/csy/func/inst/n64_sh.S:34
bfc0a028:	3c0ab99f 	lui	t2,0xb99f
bfc0a02c:	354aef40 	ori	t2,t2,0xef40
bfc0a030:	3c09d537 	lui	t1,0xd537
bfc0a034:	35297a44 	ori	t1,t1,0x7a44
bfc0a038:	3c08800d 	lui	t0,0x800d
bfc0a03c:	35080144 	ori	t0,t0,0x144
bfc0a040:	3c03b99f 	lui	v1,0xb99f
bfc0a044:	34637a44 	ori	v1,v1,0x7a44
bfc0a048:	3c010001 	lui	at,0x1
bfc0a04c:	00280821 	addu	at,at,t0
bfc0a050:	ac2ac640 	sw	t2,-14784(at)
bfc0a054:	3c010001 	lui	at,0x1
bfc0a058:	00280821 	addu	at,at,t0
bfc0a05c:	a429c640 	sh	t1,-14784(at)
bfc0a060:	25040004 	addiu	a0,t0,4
bfc0a064:	2505fffc 	addiu	a1,t0,-4
bfc0a068:	3c010001 	lui	at,0x1
bfc0a06c:	00240821 	addu	at,at,a0
bfc0a070:	ac24c640 	sw	a0,-14784(at)
bfc0a074:	3c010001 	lui	at,0x1
bfc0a078:	00250821 	addu	at,at,a1
bfc0a07c:	ac25c640 	sw	a1,-14784(at)
bfc0a080:	3c020001 	lui	v0,0x1
bfc0a084:	00481021 	addu	v0,v0,t0
bfc0a088:	8c42c640 	lw	v0,-14784(v0)
bfc0a08c:	3c040001 	lui	a0,0x1
bfc0a090:	00852021 	addu	a0,a0,a1
bfc0a094:	8c84c640 	lw	a0,-14784(a0)
bfc0a098:	3c050001 	lui	a1,0x1
bfc0a09c:	00a42821 	addu	a1,a1,a0
bfc0a0a0:	8ca5c640 	lw	a1,-14784(a1)
bfc0a0a4:	3c060001 	lui	a2,0x1
bfc0a0a8:	00c53021 	addu	a2,a2,a1
bfc0a0ac:	8cc6c640 	lw	a2,-14784(a2)
bfc0a0b0:	14430769 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a0b4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:35
bfc0a0b8:	3c0abf9b 	lui	t2,0xbf9b
bfc0a0bc:	354a8ef0 	ori	t2,t2,0x8ef0
bfc0a0c0:	3c09868b 	lui	t1,0x868b
bfc0a0c4:	35291930 	ori	t1,t1,0x1930
bfc0a0c8:	3c08800d 	lui	t0,0x800d
bfc0a0cc:	35085920 	ori	t0,t0,0x5920
bfc0a0d0:	3c031930 	lui	v1,0x1930
bfc0a0d4:	34638ef0 	ori	v1,v1,0x8ef0
bfc0a0d8:	ad0a3fd4 	sw	t2,16340(t0)
bfc0a0dc:	a5093fd6 	sh	t1,16342(t0)
bfc0a0e0:	25040004 	addiu	a0,t0,4
bfc0a0e4:	2505fffc 	addiu	a1,t0,-4
bfc0a0e8:	ac843fd4 	sw	a0,16340(a0)
bfc0a0ec:	aca53fd4 	sw	a1,16340(a1)
bfc0a0f0:	8d023fd4 	lw	v0,16340(t0)
bfc0a0f4:	8ca43fd4 	lw	a0,16340(a1)
bfc0a0f8:	8c853fd4 	lw	a1,16340(a0)
bfc0a0fc:	8ca63fd4 	lw	a2,16340(a1)
bfc0a100:	14430755 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a104:	00000000 	nop
/home/csy/func/inst/n64_sh.S:36
bfc0a108:	3c0a7da1 	lui	t2,0x7da1
bfc0a10c:	354aadef 	ori	t2,t2,0xadef
bfc0a110:	3c097d70 	lui	t1,0x7d70
bfc0a114:	352908a0 	ori	t1,t1,0x8a0
bfc0a118:	3c08800d 	lui	t0,0x800d
bfc0a11c:	35082020 	ori	t0,t0,0x2020
bfc0a120:	3c037da1 	lui	v1,0x7da1
bfc0a124:	346308a0 	ori	v1,v1,0x8a0
bfc0a128:	ad0a4cc0 	sw	t2,19648(t0)
bfc0a12c:	a5094cc0 	sh	t1,19648(t0)
bfc0a130:	25040004 	addiu	a0,t0,4
bfc0a134:	2505fffc 	addiu	a1,t0,-4
bfc0a138:	ac844cc0 	sw	a0,19648(a0)
bfc0a13c:	aca54cc0 	sw	a1,19648(a1)
bfc0a140:	8d024cc0 	lw	v0,19648(t0)
bfc0a144:	8ca44cc0 	lw	a0,19648(a1)
bfc0a148:	8c854cc0 	lw	a1,19648(a0)
bfc0a14c:	8ca64cc0 	lw	a2,19648(a1)
bfc0a150:	14430741 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a154:	00000000 	nop
/home/csy/func/inst/n64_sh.S:37
bfc0a158:	3c0af233 	lui	t2,0xf233
bfc0a15c:	354a47d4 	ori	t2,t2,0x47d4
bfc0a160:	3c092140 	lui	t1,0x2140
bfc0a164:	352970c6 	ori	t1,t1,0x70c6
bfc0a168:	3c08800d 	lui	t0,0x800d
bfc0a16c:	35080b58 	ori	t0,t0,0xb58
bfc0a170:	3c03f233 	lui	v1,0xf233
bfc0a174:	346370c6 	ori	v1,v1,0x70c6
bfc0a178:	3c010001 	lui	at,0x1
bfc0a17c:	00280821 	addu	at,at,t0
bfc0a180:	ac2ac83c 	sw	t2,-14276(at)
bfc0a184:	3c010001 	lui	at,0x1
bfc0a188:	00280821 	addu	at,at,t0
bfc0a18c:	a429c83c 	sh	t1,-14276(at)
bfc0a190:	25040004 	addiu	a0,t0,4
bfc0a194:	2505fffc 	addiu	a1,t0,-4
bfc0a198:	3c010001 	lui	at,0x1
bfc0a19c:	00240821 	addu	at,at,a0
bfc0a1a0:	ac24c83c 	sw	a0,-14276(at)
bfc0a1a4:	3c010001 	lui	at,0x1
bfc0a1a8:	00250821 	addu	at,at,a1
bfc0a1ac:	ac25c83c 	sw	a1,-14276(at)
bfc0a1b0:	3c020001 	lui	v0,0x1
bfc0a1b4:	00481021 	addu	v0,v0,t0
bfc0a1b8:	8c42c83c 	lw	v0,-14276(v0)
bfc0a1bc:	3c040001 	lui	a0,0x1
bfc0a1c0:	00852021 	addu	a0,a0,a1
bfc0a1c4:	8c84c83c 	lw	a0,-14276(a0)
bfc0a1c8:	3c050001 	lui	a1,0x1
bfc0a1cc:	00a42821 	addu	a1,a1,a0
bfc0a1d0:	8ca5c83c 	lw	a1,-14276(a1)
bfc0a1d4:	3c060001 	lui	a2,0x1
bfc0a1d8:	00c53021 	addu	a2,a2,a1
bfc0a1dc:	8cc6c83c 	lw	a2,-14276(a2)
bfc0a1e0:	1443071d 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a1e4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:38
bfc0a1e8:	3c0ab54f 	lui	t2,0xb54f
bfc0a1ec:	354a5ca2 	ori	t2,t2,0x5ca2
bfc0a1f0:	3c098937 	lui	t1,0x8937
bfc0a1f4:	352935c8 	ori	t1,t1,0x35c8
bfc0a1f8:	3c08800d 	lui	t0,0x800d
bfc0a1fc:	350823a4 	ori	t0,t0,0x23a4
bfc0a200:	3c03b54f 	lui	v1,0xb54f
bfc0a204:	346335c8 	ori	v1,v1,0x35c8
bfc0a208:	ad0a5048 	sw	t2,20552(t0)
bfc0a20c:	a5095048 	sh	t1,20552(t0)
bfc0a210:	25040004 	addiu	a0,t0,4
bfc0a214:	2505fffc 	addiu	a1,t0,-4
bfc0a218:	ac845048 	sw	a0,20552(a0)
bfc0a21c:	aca55048 	sw	a1,20552(a1)
bfc0a220:	8d025048 	lw	v0,20552(t0)
bfc0a224:	8ca45048 	lw	a0,20552(a1)
bfc0a228:	8c855048 	lw	a1,20552(a0)
bfc0a22c:	8ca65048 	lw	a2,20552(a1)
bfc0a230:	14430709 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a234:	00000000 	nop
/home/csy/func/inst/n64_sh.S:39
bfc0a238:	3c0af829 	lui	t2,0xf829
bfc0a23c:	354a69ad 	ori	t2,t2,0x69ad
bfc0a240:	3c090121 	lui	t1,0x121
bfc0a244:	3529c94c 	ori	t1,t1,0xc94c
bfc0a248:	3c08800d 	lui	t0,0x800d
bfc0a24c:	350824b8 	ori	t0,t0,0x24b8
bfc0a250:	3c03f829 	lui	v1,0xf829
bfc0a254:	3463c94c 	ori	v1,v1,0xc94c
bfc0a258:	ad0a2ad0 	sw	t2,10960(t0)
bfc0a25c:	a5092ad0 	sh	t1,10960(t0)
bfc0a260:	25040004 	addiu	a0,t0,4
bfc0a264:	2505fffc 	addiu	a1,t0,-4
bfc0a268:	ac842ad0 	sw	a0,10960(a0)
bfc0a26c:	aca52ad0 	sw	a1,10960(a1)
bfc0a270:	8d022ad0 	lw	v0,10960(t0)
bfc0a274:	8ca42ad0 	lw	a0,10960(a1)
bfc0a278:	8c852ad0 	lw	a1,10960(a0)
bfc0a27c:	8ca62ad0 	lw	a2,10960(a1)
bfc0a280:	144306f5 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a284:	00000000 	nop
/home/csy/func/inst/n64_sh.S:40
bfc0a288:	3c0aeca9 	lui	t2,0xeca9
bfc0a28c:	354a6c00 	ori	t2,t2,0x6c00
bfc0a290:	3c0950bc 	lui	t1,0x50bc
bfc0a294:	35299348 	ori	t1,t1,0x9348
bfc0a298:	3c08800d 	lui	t0,0x800d
bfc0a29c:	35081584 	ori	t0,t0,0x1584
bfc0a2a0:	3c03eca9 	lui	v1,0xeca9
bfc0a2a4:	34639348 	ori	v1,v1,0x9348
bfc0a2a8:	ad0a4ca8 	sw	t2,19624(t0)
bfc0a2ac:	a5094ca8 	sh	t1,19624(t0)
bfc0a2b0:	25040004 	addiu	a0,t0,4
bfc0a2b4:	2505fffc 	addiu	a1,t0,-4
bfc0a2b8:	ac844ca8 	sw	a0,19624(a0)
bfc0a2bc:	aca54ca8 	sw	a1,19624(a1)
bfc0a2c0:	8d024ca8 	lw	v0,19624(t0)
bfc0a2c4:	8ca44ca8 	lw	a0,19624(a1)
bfc0a2c8:	8c854ca8 	lw	a1,19624(a0)
bfc0a2cc:	8ca64ca8 	lw	a2,19624(a1)
bfc0a2d0:	144306e1 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a2d4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:41
bfc0a2d8:	3c0ab731 	lui	t2,0xb731
bfc0a2dc:	354ae211 	ori	t2,t2,0xe211
bfc0a2e0:	3c09097e 	lui	t1,0x97e
bfc0a2e4:	352993b8 	ori	t1,t1,0x93b8
bfc0a2e8:	3c08800d 	lui	t0,0x800d
bfc0a2ec:	35081a8c 	ori	t0,t0,0x1a8c
bfc0a2f0:	3c03b731 	lui	v1,0xb731
bfc0a2f4:	346393b8 	ori	v1,v1,0x93b8
bfc0a2f8:	ad0a514c 	sw	t2,20812(t0)
bfc0a2fc:	a509514c 	sh	t1,20812(t0)
bfc0a300:	25040004 	addiu	a0,t0,4
bfc0a304:	2505fffc 	addiu	a1,t0,-4
bfc0a308:	ac84514c 	sw	a0,20812(a0)
bfc0a30c:	aca5514c 	sw	a1,20812(a1)
bfc0a310:	8d02514c 	lw	v0,20812(t0)
bfc0a314:	8ca4514c 	lw	a0,20812(a1)
bfc0a318:	8c85514c 	lw	a1,20812(a0)
bfc0a31c:	8ca6514c 	lw	a2,20812(a1)
bfc0a320:	144306cd 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a324:	00000000 	nop
/home/csy/func/inst/n64_sh.S:42
bfc0a328:	3c0ae4e4 	lui	t2,0xe4e4
bfc0a32c:	354a2ad0 	ori	t2,t2,0x2ad0
bfc0a330:	3c095f45 	lui	t1,0x5f45
bfc0a334:	3529347c 	ori	t1,t1,0x347c
bfc0a338:	3c08800d 	lui	t0,0x800d
bfc0a33c:	350854d8 	ori	t0,t0,0x54d8
bfc0a340:	3c03e4e4 	lui	v1,0xe4e4
bfc0a344:	3463347c 	ori	v1,v1,0x347c
bfc0a348:	ad0a4284 	sw	t2,17028(t0)
bfc0a34c:	a5094284 	sh	t1,17028(t0)
bfc0a350:	25040004 	addiu	a0,t0,4
bfc0a354:	2505fffc 	addiu	a1,t0,-4
bfc0a358:	ac844284 	sw	a0,17028(a0)
bfc0a35c:	aca54284 	sw	a1,17028(a1)
bfc0a360:	8d024284 	lw	v0,17028(t0)
bfc0a364:	8ca44284 	lw	a0,17028(a1)
bfc0a368:	8c854284 	lw	a1,17028(a0)
bfc0a36c:	8ca64284 	lw	a2,17028(a1)
bfc0a370:	144306b9 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a374:	00000000 	nop
/home/csy/func/inst/n64_sh.S:43
bfc0a378:	3c0a4aa5 	lui	t2,0x4aa5
bfc0a37c:	354ac058 	ori	t2,t2,0xc058
bfc0a380:	3c095e83 	lui	t1,0x5e83
bfc0a384:	3529e8d0 	ori	t1,t1,0xe8d0
bfc0a388:	3c08800d 	lui	t0,0x800d
bfc0a38c:	350828c0 	ori	t0,t0,0x28c0
bfc0a390:	3c03e8d0 	lui	v1,0xe8d0
bfc0a394:	3463c058 	ori	v1,v1,0xc058
bfc0a398:	3c010001 	lui	at,0x1
bfc0a39c:	00280821 	addu	at,at,t0
bfc0a3a0:	ac2ab0c8 	sw	t2,-20280(at)
bfc0a3a4:	3c010001 	lui	at,0x1
bfc0a3a8:	00280821 	addu	at,at,t0
bfc0a3ac:	a429b0ca 	sh	t1,-20278(at)
bfc0a3b0:	25040004 	addiu	a0,t0,4
bfc0a3b4:	2505fffc 	addiu	a1,t0,-4
bfc0a3b8:	3c010001 	lui	at,0x1
bfc0a3bc:	00240821 	addu	at,at,a0
bfc0a3c0:	ac24b0c8 	sw	a0,-20280(at)
bfc0a3c4:	3c010001 	lui	at,0x1
bfc0a3c8:	00250821 	addu	at,at,a1
bfc0a3cc:	ac25b0c8 	sw	a1,-20280(at)
bfc0a3d0:	3c020001 	lui	v0,0x1
bfc0a3d4:	00481021 	addu	v0,v0,t0
bfc0a3d8:	8c42b0c8 	lw	v0,-20280(v0)
bfc0a3dc:	3c040001 	lui	a0,0x1
bfc0a3e0:	00852021 	addu	a0,a0,a1
bfc0a3e4:	8c84b0c8 	lw	a0,-20280(a0)
bfc0a3e8:	3c050001 	lui	a1,0x1
bfc0a3ec:	00a42821 	addu	a1,a1,a0
bfc0a3f0:	8ca5b0c8 	lw	a1,-20280(a1)
bfc0a3f4:	3c060001 	lui	a2,0x1
bfc0a3f8:	00c53021 	addu	a2,a2,a1
bfc0a3fc:	8cc6b0c8 	lw	a2,-20280(a2)
bfc0a400:	14430695 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a404:	00000000 	nop
/home/csy/func/inst/n64_sh.S:44
bfc0a408:	3c0a1054 	lui	t2,0x1054
bfc0a40c:	354a6b60 	ori	t2,t2,0x6b60
bfc0a410:	3c099492 	lui	t1,0x9492
bfc0a414:	352920de 	ori	t1,t1,0x20de
bfc0a418:	3c08800d 	lui	t0,0x800d
bfc0a41c:	3508eb88 	ori	t0,t0,0xeb88
bfc0a420:	3c031054 	lui	v1,0x1054
bfc0a424:	346320de 	ori	v1,v1,0x20de
bfc0a428:	ad0a1084 	sw	t2,4228(t0)
bfc0a42c:	a5091084 	sh	t1,4228(t0)
bfc0a430:	25040004 	addiu	a0,t0,4
bfc0a434:	2505fffc 	addiu	a1,t0,-4
bfc0a438:	ac841084 	sw	a0,4228(a0)
bfc0a43c:	aca51084 	sw	a1,4228(a1)
bfc0a440:	8d021084 	lw	v0,4228(t0)
bfc0a444:	8ca41084 	lw	a0,4228(a1)
bfc0a448:	8c851084 	lw	a1,4228(a0)
bfc0a44c:	8ca61084 	lw	a2,4228(a1)
bfc0a450:	14430681 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a454:	00000000 	nop
/home/csy/func/inst/n64_sh.S:45
bfc0a458:	3c0a54c8 	lui	t2,0x54c8
bfc0a45c:	354a7bb0 	ori	t2,t2,0x7bb0
bfc0a460:	3c09ac9f 	lui	t1,0xac9f
bfc0a464:	35291540 	ori	t1,t1,0x1540
bfc0a468:	3c08800d 	lui	t0,0x800d
bfc0a46c:	35088964 	ori	t0,t0,0x8964
bfc0a470:	3c031540 	lui	v1,0x1540
bfc0a474:	34637bb0 	ori	v1,v1,0x7bb0
bfc0a478:	ad0a3c7c 	sw	t2,15484(t0)
bfc0a47c:	a5093c7e 	sh	t1,15486(t0)
bfc0a480:	25040004 	addiu	a0,t0,4
bfc0a484:	2505fffc 	addiu	a1,t0,-4
bfc0a488:	ac843c7c 	sw	a0,15484(a0)
bfc0a48c:	aca53c7c 	sw	a1,15484(a1)
bfc0a490:	8d023c7c 	lw	v0,15484(t0)
bfc0a494:	8ca43c7c 	lw	a0,15484(a1)
bfc0a498:	8c853c7c 	lw	a1,15484(a0)
bfc0a49c:	8ca63c7c 	lw	a2,15484(a1)
bfc0a4a0:	1443066d 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a4a4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:46
bfc0a4a8:	3c0a2061 	lui	t2,0x2061
bfc0a4ac:	354a2be0 	ori	t2,t2,0x2be0
bfc0a4b0:	3c097623 	lui	t1,0x7623
bfc0a4b4:	35291aa0 	ori	t1,t1,0x1aa0
bfc0a4b8:	3c08800d 	lui	t0,0x800d
bfc0a4bc:	3508a4a4 	ori	t0,t0,0xa4a4
bfc0a4c0:	3c031aa0 	lui	v1,0x1aa0
bfc0a4c4:	34632be0 	ori	v1,v1,0x2be0
bfc0a4c8:	ad0a3118 	sw	t2,12568(t0)
bfc0a4cc:	a509311a 	sh	t1,12570(t0)
bfc0a4d0:	25040004 	addiu	a0,t0,4
bfc0a4d4:	2505fffc 	addiu	a1,t0,-4
bfc0a4d8:	ac843118 	sw	a0,12568(a0)
bfc0a4dc:	aca53118 	sw	a1,12568(a1)
bfc0a4e0:	8d023118 	lw	v0,12568(t0)
bfc0a4e4:	8ca43118 	lw	a0,12568(a1)
bfc0a4e8:	8c853118 	lw	a1,12568(a0)
bfc0a4ec:	8ca63118 	lw	a2,12568(a1)
bfc0a4f0:	14430659 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a4f4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:47
bfc0a4f8:	3c0a2393 	lui	t2,0x2393
bfc0a4fc:	354a8928 	ori	t2,t2,0x8928
bfc0a500:	3c095976 	lui	t1,0x5976
bfc0a504:	3529c160 	ori	t1,t1,0xc160
bfc0a508:	3c08800d 	lui	t0,0x800d
bfc0a50c:	3508c7c8 	ori	t0,t0,0xc7c8
bfc0a510:	3c03c160 	lui	v1,0xc160
bfc0a514:	34638928 	ori	v1,v1,0x8928
bfc0a518:	ad0a00d0 	sw	t2,208(t0)
bfc0a51c:	a50900d2 	sh	t1,210(t0)
bfc0a520:	25040004 	addiu	a0,t0,4
bfc0a524:	2505fffc 	addiu	a1,t0,-4
bfc0a528:	ac8400d0 	sw	a0,208(a0)
bfc0a52c:	aca500d0 	sw	a1,208(a1)
bfc0a530:	8d0200d0 	lw	v0,208(t0)
bfc0a534:	8ca400d0 	lw	a0,208(a1)
bfc0a538:	8c8500d0 	lw	a1,208(a0)
bfc0a53c:	8ca600d0 	lw	a2,208(a1)
bfc0a540:	14430645 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a544:	00000000 	nop
/home/csy/func/inst/n64_sh.S:48
bfc0a548:	3c0a042a 	lui	t2,0x42a
bfc0a54c:	354a28c0 	ori	t2,t2,0x28c0
bfc0a550:	3c09f84b 	lui	t1,0xf84b
bfc0a554:	3529893f 	ori	t1,t1,0x893f
bfc0a558:	3c08800d 	lui	t0,0x800d
bfc0a55c:	350812f8 	ori	t0,t0,0x12f8
bfc0a560:	3c03893f 	lui	v1,0x893f
bfc0a564:	346328c0 	ori	v1,v1,0x28c0
bfc0a568:	ad0a31ec 	sw	t2,12780(t0)
bfc0a56c:	a50931ee 	sh	t1,12782(t0)
bfc0a570:	25040004 	addiu	a0,t0,4
bfc0a574:	2505fffc 	addiu	a1,t0,-4
bfc0a578:	ac8431ec 	sw	a0,12780(a0)
bfc0a57c:	aca531ec 	sw	a1,12780(a1)
bfc0a580:	8d0231ec 	lw	v0,12780(t0)
bfc0a584:	8ca431ec 	lw	a0,12780(a1)
bfc0a588:	8c8531ec 	lw	a1,12780(a0)
bfc0a58c:	8ca631ec 	lw	a2,12780(a1)
bfc0a590:	14430631 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a594:	00000000 	nop
/home/csy/func/inst/n64_sh.S:49
bfc0a598:	3c0a4b50 	lui	t2,0x4b50
bfc0a59c:	354a9c68 	ori	t2,t2,0x9c68
bfc0a5a0:	3c090630 	lui	t1,0x630
bfc0a5a4:	3529b104 	ori	t1,t1,0xb104
bfc0a5a8:	3c08800d 	lui	t0,0x800d
bfc0a5ac:	35084f80 	ori	t0,t0,0x4f80
bfc0a5b0:	3c034b50 	lui	v1,0x4b50
bfc0a5b4:	3463b104 	ori	v1,v1,0xb104
bfc0a5b8:	3c010001 	lui	at,0x1
bfc0a5bc:	00280821 	addu	at,at,t0
bfc0a5c0:	ac2aadbc 	sw	t2,-21060(at)
bfc0a5c4:	3c010001 	lui	at,0x1
bfc0a5c8:	00280821 	addu	at,at,t0
bfc0a5cc:	a429adbc 	sh	t1,-21060(at)
bfc0a5d0:	25040004 	addiu	a0,t0,4
bfc0a5d4:	2505fffc 	addiu	a1,t0,-4
bfc0a5d8:	3c010001 	lui	at,0x1
bfc0a5dc:	00240821 	addu	at,at,a0
bfc0a5e0:	ac24adbc 	sw	a0,-21060(at)
bfc0a5e4:	3c010001 	lui	at,0x1
bfc0a5e8:	00250821 	addu	at,at,a1
bfc0a5ec:	ac25adbc 	sw	a1,-21060(at)
bfc0a5f0:	3c020001 	lui	v0,0x1
bfc0a5f4:	00481021 	addu	v0,v0,t0
bfc0a5f8:	8c42adbc 	lw	v0,-21060(v0)
bfc0a5fc:	3c040001 	lui	a0,0x1
bfc0a600:	00852021 	addu	a0,a0,a1
bfc0a604:	8c84adbc 	lw	a0,-21060(a0)
bfc0a608:	3c050001 	lui	a1,0x1
bfc0a60c:	00a42821 	addu	a1,a1,a0
bfc0a610:	8ca5adbc 	lw	a1,-21060(a1)
bfc0a614:	3c060001 	lui	a2,0x1
bfc0a618:	00c53021 	addu	a2,a2,a1
bfc0a61c:	8cc6adbc 	lw	a2,-21060(a2)
bfc0a620:	1443060d 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a624:	00000000 	nop
/home/csy/func/inst/n64_sh.S:50
bfc0a628:	3c0a7ea7 	lui	t2,0x7ea7
bfc0a62c:	354a4858 	ori	t2,t2,0x4858
bfc0a630:	3c098943 	lui	t1,0x8943
bfc0a634:	3529216c 	ori	t1,t1,0x216c
bfc0a638:	3c08800d 	lui	t0,0x800d
bfc0a63c:	3c037ea7 	lui	v1,0x7ea7
bfc0a640:	3463216c 	ori	v1,v1,0x216c
bfc0a644:	3c010001 	lui	at,0x1
bfc0a648:	00280821 	addu	at,at,t0
bfc0a64c:	ac2a84f0 	sw	t2,-31504(at)
bfc0a650:	3c010001 	lui	at,0x1
bfc0a654:	00280821 	addu	at,at,t0
bfc0a658:	a42984f0 	sh	t1,-31504(at)
bfc0a65c:	25040004 	addiu	a0,t0,4
bfc0a660:	2505fffc 	addiu	a1,t0,-4
bfc0a664:	3c010001 	lui	at,0x1
bfc0a668:	00240821 	addu	at,at,a0
bfc0a66c:	ac2484f0 	sw	a0,-31504(at)
bfc0a670:	3c010001 	lui	at,0x1
bfc0a674:	00250821 	addu	at,at,a1
bfc0a678:	ac2584f0 	sw	a1,-31504(at)
bfc0a67c:	3c020001 	lui	v0,0x1
bfc0a680:	00481021 	addu	v0,v0,t0
bfc0a684:	8c4284f0 	lw	v0,-31504(v0)
bfc0a688:	3c040001 	lui	a0,0x1
bfc0a68c:	00852021 	addu	a0,a0,a1
bfc0a690:	8c8484f0 	lw	a0,-31504(a0)
bfc0a694:	3c050001 	lui	a1,0x1
bfc0a698:	00a42821 	addu	a1,a1,a0
bfc0a69c:	8ca584f0 	lw	a1,-31504(a1)
bfc0a6a0:	3c060001 	lui	a2,0x1
bfc0a6a4:	00c53021 	addu	a2,a2,a1
bfc0a6a8:	8cc684f0 	lw	a2,-31504(a2)
bfc0a6ac:	144305ea 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a6b0:	00000000 	nop
/home/csy/func/inst/n64_sh.S:51
bfc0a6b4:	3c0afd4d 	lui	t2,0xfd4d
bfc0a6b8:	354afbaa 	ori	t2,t2,0xfbaa
bfc0a6bc:	3c09fc37 	lui	t1,0xfc37
bfc0a6c0:	35290cd0 	ori	t1,t1,0xcd0
bfc0a6c4:	3c08800d 	lui	t0,0x800d
bfc0a6c8:	3c030cd0 	lui	v1,0xcd0
bfc0a6cc:	3463fbaa 	ori	v1,v1,0xfbaa
bfc0a6d0:	ad0a5b60 	sw	t2,23392(t0)
bfc0a6d4:	a5095b62 	sh	t1,23394(t0)
bfc0a6d8:	25040004 	addiu	a0,t0,4
bfc0a6dc:	2505fffc 	addiu	a1,t0,-4
bfc0a6e0:	ac845b60 	sw	a0,23392(a0)
bfc0a6e4:	aca55b60 	sw	a1,23392(a1)
bfc0a6e8:	8d025b60 	lw	v0,23392(t0)
bfc0a6ec:	8ca45b60 	lw	a0,23392(a1)
bfc0a6f0:	8c855b60 	lw	a1,23392(a0)
bfc0a6f4:	8ca65b60 	lw	a2,23392(a1)
bfc0a6f8:	144305d7 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a6fc:	00000000 	nop
/home/csy/func/inst/n64_sh.S:52
bfc0a700:	3c0aef7b 	lui	t2,0xef7b
bfc0a704:	354a46c8 	ori	t2,t2,0x46c8
bfc0a708:	3c09ba1d 	lui	t1,0xba1d
bfc0a70c:	352906fc 	ori	t1,t1,0x6fc
bfc0a710:	3c08800d 	lui	t0,0x800d
bfc0a714:	3c03ef7b 	lui	v1,0xef7b
bfc0a718:	346306fc 	ori	v1,v1,0x6fc
bfc0a71c:	ad0a5848 	sw	t2,22600(t0)
bfc0a720:	a5095848 	sh	t1,22600(t0)
bfc0a724:	25040004 	addiu	a0,t0,4
bfc0a728:	2505fffc 	addiu	a1,t0,-4
bfc0a72c:	ac845848 	sw	a0,22600(a0)
bfc0a730:	aca55848 	sw	a1,22600(a1)
bfc0a734:	8d025848 	lw	v0,22600(t0)
bfc0a738:	8ca45848 	lw	a0,22600(a1)
bfc0a73c:	8c855848 	lw	a1,22600(a0)
bfc0a740:	8ca65848 	lw	a2,22600(a1)
bfc0a744:	144305c4 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a748:	00000000 	nop
/home/csy/func/inst/n64_sh.S:53
bfc0a74c:	3c0a151b 	lui	t2,0x151b
bfc0a750:	354a86df 	ori	t2,t2,0x86df
bfc0a754:	3c0995fa 	lui	t1,0x95fa
bfc0a758:	3529ec5f 	ori	t1,t1,0xec5f
bfc0a75c:	3c08800d 	lui	t0,0x800d
bfc0a760:	3c03151b 	lui	v1,0x151b
bfc0a764:	3463ec5f 	ori	v1,v1,0xec5f
bfc0a768:	ad0a02c0 	sw	t2,704(t0)
bfc0a76c:	a50902c0 	sh	t1,704(t0)
bfc0a770:	25040004 	addiu	a0,t0,4
bfc0a774:	2505fffc 	addiu	a1,t0,-4
bfc0a778:	ac8402c0 	sw	a0,704(a0)
bfc0a77c:	aca502c0 	sw	a1,704(a1)
bfc0a780:	8d0202c0 	lw	v0,704(t0)
bfc0a784:	8ca402c0 	lw	a0,704(a1)
bfc0a788:	8c8502c0 	lw	a1,704(a0)
bfc0a78c:	8ca602c0 	lw	a2,704(a1)
bfc0a790:	144305b1 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a794:	00000000 	nop
/home/csy/func/inst/n64_sh.S:54
bfc0a798:	3c0a1266 	lui	t2,0x1266
bfc0a79c:	354a4cbb 	ori	t2,t2,0x4cbb
bfc0a7a0:	3c0968ff 	lui	t1,0x68ff
bfc0a7a4:	35297500 	ori	t1,t1,0x7500
bfc0a7a8:	3c08800d 	lui	t0,0x800d
bfc0a7ac:	3c031266 	lui	v1,0x1266
bfc0a7b0:	34637500 	ori	v1,v1,0x7500
bfc0a7b4:	ad0a51ec 	sw	t2,20972(t0)
bfc0a7b8:	a50951ec 	sh	t1,20972(t0)
bfc0a7bc:	25040004 	addiu	a0,t0,4
bfc0a7c0:	2505fffc 	addiu	a1,t0,-4
bfc0a7c4:	ac8451ec 	sw	a0,20972(a0)
bfc0a7c8:	aca551ec 	sw	a1,20972(a1)
bfc0a7cc:	8d0251ec 	lw	v0,20972(t0)
bfc0a7d0:	8ca451ec 	lw	a0,20972(a1)
bfc0a7d4:	8c8551ec 	lw	a1,20972(a0)
bfc0a7d8:	8ca651ec 	lw	a2,20972(a1)
bfc0a7dc:	1443059e 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a7e0:	00000000 	nop
/home/csy/func/inst/n64_sh.S:55
bfc0a7e4:	3c0a7383 	lui	t2,0x7383
bfc0a7e8:	354a76f0 	ori	t2,t2,0x76f0
bfc0a7ec:	3c097abd 	lui	t1,0x7abd
bfc0a7f0:	3529fe92 	ori	t1,t1,0xfe92
bfc0a7f4:	3c08800d 	lui	t0,0x800d
bfc0a7f8:	3c037383 	lui	v1,0x7383
bfc0a7fc:	3463fe92 	ori	v1,v1,0xfe92
bfc0a800:	ad0a010c 	sw	t2,268(t0)
bfc0a804:	a509010c 	sh	t1,268(t0)
bfc0a808:	25040004 	addiu	a0,t0,4
bfc0a80c:	2505fffc 	addiu	a1,t0,-4
bfc0a810:	ac84010c 	sw	a0,268(a0)
bfc0a814:	aca5010c 	sw	a1,268(a1)
bfc0a818:	8d02010c 	lw	v0,268(t0)
bfc0a81c:	8ca4010c 	lw	a0,268(a1)
bfc0a820:	8c85010c 	lw	a1,268(a0)
bfc0a824:	8ca6010c 	lw	a2,268(a1)
bfc0a828:	1443058b 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a82c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:56
bfc0a830:	3c0aa818 	lui	t2,0xa818
bfc0a834:	354a59c0 	ori	t2,t2,0x59c0
bfc0a838:	3c09eedf 	lui	t1,0xeedf
bfc0a83c:	35291820 	ori	t1,t1,0x1820
bfc0a840:	3c08800d 	lui	t0,0x800d
bfc0a844:	3c03a818 	lui	v1,0xa818
bfc0a848:	34631820 	ori	v1,v1,0x1820
bfc0a84c:	3c010001 	lui	at,0x1
bfc0a850:	00280821 	addu	at,at,t0
bfc0a854:	ac2abedc 	sw	t2,-16676(at)
bfc0a858:	3c010001 	lui	at,0x1
bfc0a85c:	00280821 	addu	at,at,t0
bfc0a860:	a429bedc 	sh	t1,-16676(at)
bfc0a864:	25040004 	addiu	a0,t0,4
bfc0a868:	2505fffc 	addiu	a1,t0,-4
bfc0a86c:	3c010001 	lui	at,0x1
bfc0a870:	00240821 	addu	at,at,a0
bfc0a874:	ac24bedc 	sw	a0,-16676(at)
bfc0a878:	3c010001 	lui	at,0x1
bfc0a87c:	00250821 	addu	at,at,a1
bfc0a880:	ac25bedc 	sw	a1,-16676(at)
bfc0a884:	3c020001 	lui	v0,0x1
bfc0a888:	00481021 	addu	v0,v0,t0
bfc0a88c:	8c42bedc 	lw	v0,-16676(v0)
bfc0a890:	3c040001 	lui	a0,0x1
bfc0a894:	00852021 	addu	a0,a0,a1
bfc0a898:	8c84bedc 	lw	a0,-16676(a0)
bfc0a89c:	3c050001 	lui	a1,0x1
bfc0a8a0:	00a42821 	addu	a1,a1,a0
bfc0a8a4:	8ca5bedc 	lw	a1,-16676(a1)
bfc0a8a8:	3c060001 	lui	a2,0x1
bfc0a8ac:	00c53021 	addu	a2,a2,a1
bfc0a8b0:	8cc6bedc 	lw	a2,-16676(a2)
bfc0a8b4:	14430568 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a8b8:	00000000 	nop
/home/csy/func/inst/n64_sh.S:57
bfc0a8bc:	3c0abf96 	lui	t2,0xbf96
bfc0a8c0:	354a25c0 	ori	t2,t2,0x25c0
bfc0a8c4:	3c09b775 	lui	t1,0xb775
bfc0a8c8:	35291ea0 	ori	t1,t1,0x1ea0
bfc0a8cc:	3c08800d 	lui	t0,0x800d
bfc0a8d0:	3c03bf96 	lui	v1,0xbf96
bfc0a8d4:	34631ea0 	ori	v1,v1,0x1ea0
bfc0a8d8:	3c010001 	lui	at,0x1
bfc0a8dc:	00280821 	addu	at,at,t0
bfc0a8e0:	ac2ac894 	sw	t2,-14188(at)
bfc0a8e4:	3c010001 	lui	at,0x1
bfc0a8e8:	00280821 	addu	at,at,t0
bfc0a8ec:	a429c894 	sh	t1,-14188(at)
bfc0a8f0:	25040004 	addiu	a0,t0,4
bfc0a8f4:	2505fffc 	addiu	a1,t0,-4
bfc0a8f8:	3c010001 	lui	at,0x1
bfc0a8fc:	00240821 	addu	at,at,a0
bfc0a900:	ac24c894 	sw	a0,-14188(at)
bfc0a904:	3c010001 	lui	at,0x1
bfc0a908:	00250821 	addu	at,at,a1
bfc0a90c:	ac25c894 	sw	a1,-14188(at)
bfc0a910:	3c020001 	lui	v0,0x1
bfc0a914:	00481021 	addu	v0,v0,t0
bfc0a918:	8c42c894 	lw	v0,-14188(v0)
bfc0a91c:	3c040001 	lui	a0,0x1
bfc0a920:	00852021 	addu	a0,a0,a1
bfc0a924:	8c84c894 	lw	a0,-14188(a0)
bfc0a928:	3c050001 	lui	a1,0x1
bfc0a92c:	00a42821 	addu	a1,a1,a0
bfc0a930:	8ca5c894 	lw	a1,-14188(a1)
bfc0a934:	3c060001 	lui	a2,0x1
bfc0a938:	00c53021 	addu	a2,a2,a1
bfc0a93c:	8cc6c894 	lw	a2,-14188(a2)
bfc0a940:	14430545 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a944:	00000000 	nop
/home/csy/func/inst/n64_sh.S:58
bfc0a948:	3c0a8a0b 	lui	t2,0x8a0b
bfc0a94c:	354a0e78 	ori	t2,t2,0xe78
bfc0a950:	3c09aea1 	lui	t1,0xaea1
bfc0a954:	35290357 	ori	t1,t1,0x357
bfc0a958:	3c08800d 	lui	t0,0x800d
bfc0a95c:	3c038a0b 	lui	v1,0x8a0b
bfc0a960:	34630357 	ori	v1,v1,0x357
bfc0a964:	3c010001 	lui	at,0x1
bfc0a968:	00280821 	addu	at,at,t0
bfc0a96c:	ac2ae5e8 	sw	t2,-6680(at)
bfc0a970:	3c010001 	lui	at,0x1
bfc0a974:	00280821 	addu	at,at,t0
bfc0a978:	a429e5e8 	sh	t1,-6680(at)
bfc0a97c:	25040004 	addiu	a0,t0,4
bfc0a980:	2505fffc 	addiu	a1,t0,-4
bfc0a984:	3c010001 	lui	at,0x1
bfc0a988:	00240821 	addu	at,at,a0
bfc0a98c:	ac24e5e8 	sw	a0,-6680(at)
bfc0a990:	3c010001 	lui	at,0x1
bfc0a994:	00250821 	addu	at,at,a1
bfc0a998:	ac25e5e8 	sw	a1,-6680(at)
bfc0a99c:	3c020001 	lui	v0,0x1
bfc0a9a0:	00481021 	addu	v0,v0,t0
bfc0a9a4:	8c42e5e8 	lw	v0,-6680(v0)
bfc0a9a8:	3c040001 	lui	a0,0x1
bfc0a9ac:	00852021 	addu	a0,a0,a1
bfc0a9b0:	8c84e5e8 	lw	a0,-6680(a0)
bfc0a9b4:	3c050001 	lui	a1,0x1
bfc0a9b8:	00a42821 	addu	a1,a1,a0
bfc0a9bc:	8ca5e5e8 	lw	a1,-6680(a1)
bfc0a9c0:	3c060001 	lui	a2,0x1
bfc0a9c4:	00c53021 	addu	a2,a2,a1
bfc0a9c8:	8cc6e5e8 	lw	a2,-6680(a2)
bfc0a9cc:	14430522 	bne	v0,v1,bfc0be58 <inst_error>
bfc0a9d0:	00000000 	nop
/home/csy/func/inst/n64_sh.S:59
bfc0a9d4:	3c0a38c0 	lui	t2,0x38c0
bfc0a9d8:	354afeb0 	ori	t2,t2,0xfeb0
bfc0a9dc:	3c092552 	lui	t1,0x2552
bfc0a9e0:	3529c584 	ori	t1,t1,0xc584
bfc0a9e4:	3c08800d 	lui	t0,0x800d
bfc0a9e8:	3c0338c0 	lui	v1,0x38c0
bfc0a9ec:	3463c584 	ori	v1,v1,0xc584
bfc0a9f0:	3c010001 	lui	at,0x1
bfc0a9f4:	00280821 	addu	at,at,t0
bfc0a9f8:	ac2a9968 	sw	t2,-26264(at)
bfc0a9fc:	3c010001 	lui	at,0x1
bfc0aa00:	00280821 	addu	at,at,t0
bfc0aa04:	a4299968 	sh	t1,-26264(at)
bfc0aa08:	25040004 	addiu	a0,t0,4
bfc0aa0c:	2505fffc 	addiu	a1,t0,-4
bfc0aa10:	3c010001 	lui	at,0x1
bfc0aa14:	00240821 	addu	at,at,a0
bfc0aa18:	ac249968 	sw	a0,-26264(at)
bfc0aa1c:	3c010001 	lui	at,0x1
bfc0aa20:	00250821 	addu	at,at,a1
bfc0aa24:	ac259968 	sw	a1,-26264(at)
bfc0aa28:	3c020001 	lui	v0,0x1
bfc0aa2c:	00481021 	addu	v0,v0,t0
bfc0aa30:	8c429968 	lw	v0,-26264(v0)
bfc0aa34:	3c040001 	lui	a0,0x1
bfc0aa38:	00852021 	addu	a0,a0,a1
bfc0aa3c:	8c849968 	lw	a0,-26264(a0)
bfc0aa40:	3c050001 	lui	a1,0x1
bfc0aa44:	00a42821 	addu	a1,a1,a0
bfc0aa48:	8ca59968 	lw	a1,-26264(a1)
bfc0aa4c:	3c060001 	lui	a2,0x1
bfc0aa50:	00c53021 	addu	a2,a2,a1
bfc0aa54:	8cc69968 	lw	a2,-26264(a2)
bfc0aa58:	144304ff 	bne	v0,v1,bfc0be58 <inst_error>
bfc0aa5c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:60
bfc0aa60:	3c0a09de 	lui	t2,0x9de
bfc0aa64:	354a6ee8 	ori	t2,t2,0x6ee8
bfc0aa68:	3c09e427 	lui	t1,0xe427
bfc0aa6c:	35299110 	ori	t1,t1,0x9110
bfc0aa70:	3c08800d 	lui	t0,0x800d
bfc0aa74:	3c0309de 	lui	v1,0x9de
bfc0aa78:	34639110 	ori	v1,v1,0x9110
bfc0aa7c:	3c010001 	lui	at,0x1
bfc0aa80:	00280821 	addu	at,at,t0
bfc0aa84:	ac2aa6a0 	sw	t2,-22880(at)
bfc0aa88:	3c010001 	lui	at,0x1
bfc0aa8c:	00280821 	addu	at,at,t0
bfc0aa90:	a429a6a0 	sh	t1,-22880(at)
bfc0aa94:	25040004 	addiu	a0,t0,4
bfc0aa98:	2505fffc 	addiu	a1,t0,-4
bfc0aa9c:	3c010001 	lui	at,0x1
bfc0aaa0:	00240821 	addu	at,at,a0
bfc0aaa4:	ac24a6a0 	sw	a0,-22880(at)
bfc0aaa8:	3c010001 	lui	at,0x1
bfc0aaac:	00250821 	addu	at,at,a1
bfc0aab0:	ac25a6a0 	sw	a1,-22880(at)
bfc0aab4:	3c020001 	lui	v0,0x1
bfc0aab8:	00481021 	addu	v0,v0,t0
bfc0aabc:	8c42a6a0 	lw	v0,-22880(v0)
bfc0aac0:	3c040001 	lui	a0,0x1
bfc0aac4:	00852021 	addu	a0,a0,a1
bfc0aac8:	8c84a6a0 	lw	a0,-22880(a0)
bfc0aacc:	3c050001 	lui	a1,0x1
bfc0aad0:	00a42821 	addu	a1,a1,a0
bfc0aad4:	8ca5a6a0 	lw	a1,-22880(a1)
bfc0aad8:	3c060001 	lui	a2,0x1
bfc0aadc:	00c53021 	addu	a2,a2,a1
bfc0aae0:	8cc6a6a0 	lw	a2,-22880(a2)
bfc0aae4:	144304dc 	bne	v0,v1,bfc0be58 <inst_error>
bfc0aae8:	00000000 	nop
/home/csy/func/inst/n64_sh.S:61
bfc0aaec:	3c0affeb 	lui	t2,0xffeb
bfc0aaf0:	354a3340 	ori	t2,t2,0x3340
bfc0aaf4:	3c098950 	lui	t1,0x8950
bfc0aaf8:	3529f9f6 	ori	t1,t1,0xf9f6
bfc0aafc:	3c08800d 	lui	t0,0x800d
bfc0ab00:	3c03ffeb 	lui	v1,0xffeb
bfc0ab04:	3463f9f6 	ori	v1,v1,0xf9f6
bfc0ab08:	ad0a3408 	sw	t2,13320(t0)
bfc0ab0c:	a5093408 	sh	t1,13320(t0)
bfc0ab10:	25040004 	addiu	a0,t0,4
bfc0ab14:	2505fffc 	addiu	a1,t0,-4
bfc0ab18:	ac843408 	sw	a0,13320(a0)
bfc0ab1c:	aca53408 	sw	a1,13320(a1)
bfc0ab20:	8d023408 	lw	v0,13320(t0)
bfc0ab24:	8ca43408 	lw	a0,13320(a1)
bfc0ab28:	8c853408 	lw	a1,13320(a0)
bfc0ab2c:	8ca63408 	lw	a2,13320(a1)
bfc0ab30:	144304c9 	bne	v0,v1,bfc0be58 <inst_error>
bfc0ab34:	00000000 	nop
/home/csy/func/inst/n64_sh.S:62
bfc0ab38:	3c0a8f70 	lui	t2,0x8f70
bfc0ab3c:	354a24be 	ori	t2,t2,0x24be
bfc0ab40:	3c095c89 	lui	t1,0x5c89
bfc0ab44:	3529cd7a 	ori	t1,t1,0xcd7a
bfc0ab48:	3c08800d 	lui	t0,0x800d
bfc0ab4c:	3c038f70 	lui	v1,0x8f70
bfc0ab50:	3463cd7a 	ori	v1,v1,0xcd7a
bfc0ab54:	3c010001 	lui	at,0x1
bfc0ab58:	00280821 	addu	at,at,t0
bfc0ab5c:	ac2a8c00 	sw	t2,-29696(at)
bfc0ab60:	3c010001 	lui	at,0x1
bfc0ab64:	00280821 	addu	at,at,t0
bfc0ab68:	a4298c00 	sh	t1,-29696(at)
bfc0ab6c:	25040004 	addiu	a0,t0,4
bfc0ab70:	2505fffc 	addiu	a1,t0,-4
bfc0ab74:	3c010001 	lui	at,0x1
bfc0ab78:	00240821 	addu	at,at,a0
bfc0ab7c:	ac248c00 	sw	a0,-29696(at)
bfc0ab80:	3c010001 	lui	at,0x1
bfc0ab84:	00250821 	addu	at,at,a1
bfc0ab88:	ac258c00 	sw	a1,-29696(at)
bfc0ab8c:	3c020001 	lui	v0,0x1
bfc0ab90:	00481021 	addu	v0,v0,t0
bfc0ab94:	8c428c00 	lw	v0,-29696(v0)
bfc0ab98:	3c040001 	lui	a0,0x1
bfc0ab9c:	00852021 	addu	a0,a0,a1
bfc0aba0:	8c848c00 	lw	a0,-29696(a0)
bfc0aba4:	3c050001 	lui	a1,0x1
bfc0aba8:	00a42821 	addu	a1,a1,a0
bfc0abac:	8ca58c00 	lw	a1,-29696(a1)
bfc0abb0:	3c060001 	lui	a2,0x1
bfc0abb4:	00c53021 	addu	a2,a2,a1
bfc0abb8:	8cc68c00 	lw	a2,-29696(a2)
bfc0abbc:	144304a6 	bne	v0,v1,bfc0be58 <inst_error>
bfc0abc0:	00000000 	nop
/home/csy/func/inst/n64_sh.S:63
bfc0abc4:	3c0aeb29 	lui	t2,0xeb29
bfc0abc8:	354a2500 	ori	t2,t2,0x2500
bfc0abcc:	3c09ac47 	lui	t1,0xac47
bfc0abd0:	35296c50 	ori	t1,t1,0x6c50
bfc0abd4:	3c08800d 	lui	t0,0x800d
bfc0abd8:	3c036c50 	lui	v1,0x6c50
bfc0abdc:	34632500 	ori	v1,v1,0x2500
bfc0abe0:	3c010001 	lui	at,0x1
bfc0abe4:	00280821 	addu	at,at,t0
bfc0abe8:	ac2aad48 	sw	t2,-21176(at)
bfc0abec:	3c010001 	lui	at,0x1
bfc0abf0:	00280821 	addu	at,at,t0
bfc0abf4:	a429ad4a 	sh	t1,-21174(at)
bfc0abf8:	25040004 	addiu	a0,t0,4
bfc0abfc:	2505fffc 	addiu	a1,t0,-4
bfc0ac00:	3c010001 	lui	at,0x1
bfc0ac04:	00240821 	addu	at,at,a0
bfc0ac08:	ac24ad48 	sw	a0,-21176(at)
bfc0ac0c:	3c010001 	lui	at,0x1
bfc0ac10:	00250821 	addu	at,at,a1
bfc0ac14:	ac25ad48 	sw	a1,-21176(at)
bfc0ac18:	3c020001 	lui	v0,0x1
bfc0ac1c:	00481021 	addu	v0,v0,t0
bfc0ac20:	8c42ad48 	lw	v0,-21176(v0)
bfc0ac24:	3c040001 	lui	a0,0x1
bfc0ac28:	00852021 	addu	a0,a0,a1
bfc0ac2c:	8c84ad48 	lw	a0,-21176(a0)
bfc0ac30:	3c050001 	lui	a1,0x1
bfc0ac34:	00a42821 	addu	a1,a1,a0
bfc0ac38:	8ca5ad48 	lw	a1,-21176(a1)
bfc0ac3c:	3c060001 	lui	a2,0x1
bfc0ac40:	00c53021 	addu	a2,a2,a1
bfc0ac44:	8cc6ad48 	lw	a2,-21176(a2)
bfc0ac48:	14430483 	bne	v0,v1,bfc0be58 <inst_error>
bfc0ac4c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:64
bfc0ac50:	3c0af85d 	lui	t2,0xf85d
bfc0ac54:	354a3b84 	ori	t2,t2,0x3b84
bfc0ac58:	3c09d58d 	lui	t1,0xd58d
bfc0ac5c:	35297eb8 	ori	t1,t1,0x7eb8
bfc0ac60:	3c08800d 	lui	t0,0x800d
bfc0ac64:	3c03f85d 	lui	v1,0xf85d
bfc0ac68:	34637eb8 	ori	v1,v1,0x7eb8
bfc0ac6c:	ad0a3c38 	sw	t2,15416(t0)
bfc0ac70:	a5093c38 	sh	t1,15416(t0)
bfc0ac74:	25040004 	addiu	a0,t0,4
bfc0ac78:	2505fffc 	addiu	a1,t0,-4
bfc0ac7c:	ac843c38 	sw	a0,15416(a0)
bfc0ac80:	aca53c38 	sw	a1,15416(a1)
bfc0ac84:	8d023c38 	lw	v0,15416(t0)
bfc0ac88:	8ca43c38 	lw	a0,15416(a1)
bfc0ac8c:	8c853c38 	lw	a1,15416(a0)
bfc0ac90:	8ca63c38 	lw	a2,15416(a1)
bfc0ac94:	14430470 	bne	v0,v1,bfc0be58 <inst_error>
bfc0ac98:	00000000 	nop
/home/csy/func/inst/n64_sh.S:65
bfc0ac9c:	3c0a2b14 	lui	t2,0x2b14
bfc0aca0:	354a20e8 	ori	t2,t2,0x20e8
bfc0aca4:	3c09b061 	lui	t1,0xb061
bfc0aca8:	35298d2c 	ori	t1,t1,0x8d2c
bfc0acac:	3c08800d 	lui	t0,0x800d
bfc0acb0:	3c032b14 	lui	v1,0x2b14
bfc0acb4:	34638d2c 	ori	v1,v1,0x8d2c
bfc0acb8:	ad0a4b18 	sw	t2,19224(t0)
bfc0acbc:	a5094b18 	sh	t1,19224(t0)
bfc0acc0:	25040004 	addiu	a0,t0,4
bfc0acc4:	2505fffc 	addiu	a1,t0,-4
bfc0acc8:	ac844b18 	sw	a0,19224(a0)
bfc0accc:	aca54b18 	sw	a1,19224(a1)
bfc0acd0:	8d024b18 	lw	v0,19224(t0)
bfc0acd4:	8ca44b18 	lw	a0,19224(a1)
bfc0acd8:	8c854b18 	lw	a1,19224(a0)
bfc0acdc:	8ca64b18 	lw	a2,19224(a1)
bfc0ace0:	1443045d 	bne	v0,v1,bfc0be58 <inst_error>
bfc0ace4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:66
bfc0ace8:	3c0a9e68 	lui	t2,0x9e68
bfc0acec:	354a7728 	ori	t2,t2,0x7728
bfc0acf0:	3c091e59 	lui	t1,0x1e59
bfc0acf4:	3529b179 	ori	t1,t1,0xb179
bfc0acf8:	3c08800d 	lui	t0,0x800d
bfc0acfc:	3c039e68 	lui	v1,0x9e68
bfc0ad00:	3463b179 	ori	v1,v1,0xb179
bfc0ad04:	ad0a3880 	sw	t2,14464(t0)
bfc0ad08:	a5093880 	sh	t1,14464(t0)
bfc0ad0c:	25040004 	addiu	a0,t0,4
bfc0ad10:	2505fffc 	addiu	a1,t0,-4
bfc0ad14:	ac843880 	sw	a0,14464(a0)
bfc0ad18:	aca53880 	sw	a1,14464(a1)
bfc0ad1c:	8d023880 	lw	v0,14464(t0)
bfc0ad20:	8ca43880 	lw	a0,14464(a1)
bfc0ad24:	8c853880 	lw	a1,14464(a0)
bfc0ad28:	8ca63880 	lw	a2,14464(a1)
bfc0ad2c:	1443044a 	bne	v0,v1,bfc0be58 <inst_error>
bfc0ad30:	00000000 	nop
/home/csy/func/inst/n64_sh.S:67
bfc0ad34:	3c0a2611 	lui	t2,0x2611
bfc0ad38:	354aa63a 	ori	t2,t2,0xa63a
bfc0ad3c:	3c091b8e 	lui	t1,0x1b8e
bfc0ad40:	3529eb80 	ori	t1,t1,0xeb80
bfc0ad44:	3c08800d 	lui	t0,0x800d
bfc0ad48:	3c03eb80 	lui	v1,0xeb80
bfc0ad4c:	3463a63a 	ori	v1,v1,0xa63a
bfc0ad50:	3c010001 	lui	at,0x1
bfc0ad54:	00280821 	addu	at,at,t0
bfc0ad58:	ac2a8d70 	sw	t2,-29328(at)
bfc0ad5c:	3c010001 	lui	at,0x1
bfc0ad60:	00280821 	addu	at,at,t0
bfc0ad64:	a4298d72 	sh	t1,-29326(at)
bfc0ad68:	25040004 	addiu	a0,t0,4
bfc0ad6c:	2505fffc 	addiu	a1,t0,-4
bfc0ad70:	3c010001 	lui	at,0x1
bfc0ad74:	00240821 	addu	at,at,a0
bfc0ad78:	ac248d70 	sw	a0,-29328(at)
bfc0ad7c:	3c010001 	lui	at,0x1
bfc0ad80:	00250821 	addu	at,at,a1
bfc0ad84:	ac258d70 	sw	a1,-29328(at)
bfc0ad88:	3c020001 	lui	v0,0x1
bfc0ad8c:	00481021 	addu	v0,v0,t0
bfc0ad90:	8c428d70 	lw	v0,-29328(v0)
bfc0ad94:	3c040001 	lui	a0,0x1
bfc0ad98:	00852021 	addu	a0,a0,a1
bfc0ad9c:	8c848d70 	lw	a0,-29328(a0)
bfc0ada0:	3c050001 	lui	a1,0x1
bfc0ada4:	00a42821 	addu	a1,a1,a0
bfc0ada8:	8ca58d70 	lw	a1,-29328(a1)
bfc0adac:	3c060001 	lui	a2,0x1
bfc0adb0:	00c53021 	addu	a2,a2,a1
bfc0adb4:	8cc68d70 	lw	a2,-29328(a2)
bfc0adb8:	14430427 	bne	v0,v1,bfc0be58 <inst_error>
bfc0adbc:	00000000 	nop
/home/csy/func/inst/n64_sh.S:68
bfc0adc0:	3c0a1ccb 	lui	t2,0x1ccb
bfc0adc4:	354a4da8 	ori	t2,t2,0x4da8
bfc0adc8:	3c09e897 	lui	t1,0xe897
bfc0adcc:	35292ef0 	ori	t1,t1,0x2ef0
bfc0add0:	3c08800d 	lui	t0,0x800d
bfc0add4:	3c031ccb 	lui	v1,0x1ccb
bfc0add8:	34632ef0 	ori	v1,v1,0x2ef0
bfc0addc:	3c010001 	lui	at,0x1
bfc0ade0:	00280821 	addu	at,at,t0
bfc0ade4:	ac2aed84 	sw	t2,-4732(at)
bfc0ade8:	3c010001 	lui	at,0x1
bfc0adec:	00280821 	addu	at,at,t0
bfc0adf0:	a429ed84 	sh	t1,-4732(at)
bfc0adf4:	25040004 	addiu	a0,t0,4
bfc0adf8:	2505fffc 	addiu	a1,t0,-4
bfc0adfc:	3c010001 	lui	at,0x1
bfc0ae00:	00240821 	addu	at,at,a0
bfc0ae04:	ac24ed84 	sw	a0,-4732(at)
bfc0ae08:	3c010001 	lui	at,0x1
bfc0ae0c:	00250821 	addu	at,at,a1
bfc0ae10:	ac25ed84 	sw	a1,-4732(at)
bfc0ae14:	3c020001 	lui	v0,0x1
bfc0ae18:	00481021 	addu	v0,v0,t0
bfc0ae1c:	8c42ed84 	lw	v0,-4732(v0)
bfc0ae20:	3c040001 	lui	a0,0x1
bfc0ae24:	00852021 	addu	a0,a0,a1
bfc0ae28:	8c84ed84 	lw	a0,-4732(a0)
bfc0ae2c:	3c050001 	lui	a1,0x1
bfc0ae30:	00a42821 	addu	a1,a1,a0
bfc0ae34:	8ca5ed84 	lw	a1,-4732(a1)
bfc0ae38:	3c060001 	lui	a2,0x1
bfc0ae3c:	00c53021 	addu	a2,a2,a1
bfc0ae40:	8cc6ed84 	lw	a2,-4732(a2)
bfc0ae44:	14430404 	bne	v0,v1,bfc0be58 <inst_error>
bfc0ae48:	00000000 	nop
/home/csy/func/inst/n64_sh.S:69
bfc0ae4c:	3c0a720c 	lui	t2,0x720c
bfc0ae50:	354a51f4 	ori	t2,t2,0x51f4
bfc0ae54:	3c091c42 	lui	t1,0x1c42
bfc0ae58:	3529a1e0 	ori	t1,t1,0xa1e0
bfc0ae5c:	3c08800d 	lui	t0,0x800d
bfc0ae60:	3c03a1e0 	lui	v1,0xa1e0
bfc0ae64:	346351f4 	ori	v1,v1,0x51f4
bfc0ae68:	3c010001 	lui	at,0x1
bfc0ae6c:	00280821 	addu	at,at,t0
bfc0ae70:	ac2aed84 	sw	t2,-4732(at)
bfc0ae74:	3c010001 	lui	at,0x1
bfc0ae78:	00280821 	addu	at,at,t0
bfc0ae7c:	a429ed86 	sh	t1,-4730(at)
bfc0ae80:	25040004 	addiu	a0,t0,4
bfc0ae84:	2505fffc 	addiu	a1,t0,-4
bfc0ae88:	3c010001 	lui	at,0x1
bfc0ae8c:	00240821 	addu	at,at,a0
bfc0ae90:	ac24ed84 	sw	a0,-4732(at)
bfc0ae94:	3c010001 	lui	at,0x1
bfc0ae98:	00250821 	addu	at,at,a1
bfc0ae9c:	ac25ed84 	sw	a1,-4732(at)
bfc0aea0:	3c020001 	lui	v0,0x1
bfc0aea4:	00481021 	addu	v0,v0,t0
bfc0aea8:	8c42ed84 	lw	v0,-4732(v0)
bfc0aeac:	3c040001 	lui	a0,0x1
bfc0aeb0:	00852021 	addu	a0,a0,a1
bfc0aeb4:	8c84ed84 	lw	a0,-4732(a0)
bfc0aeb8:	3c050001 	lui	a1,0x1
bfc0aebc:	00a42821 	addu	a1,a1,a0
bfc0aec0:	8ca5ed84 	lw	a1,-4732(a1)
bfc0aec4:	3c060001 	lui	a2,0x1
bfc0aec8:	00c53021 	addu	a2,a2,a1
bfc0aecc:	8cc6ed84 	lw	a2,-4732(a2)
bfc0aed0:	144303e1 	bne	v0,v1,bfc0be58 <inst_error>
bfc0aed4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:70
bfc0aed8:	3c0add72 	lui	t2,0xdd72
bfc0aedc:	354ad0b0 	ori	t2,t2,0xd0b0
bfc0aee0:	3c09a115 	lui	t1,0xa115
bfc0aee4:	35294920 	ori	t1,t1,0x4920
bfc0aee8:	3c08800d 	lui	t0,0x800d
bfc0aeec:	3c03dd72 	lui	v1,0xdd72
bfc0aef0:	34634920 	ori	v1,v1,0x4920
bfc0aef4:	3c010001 	lui	at,0x1
bfc0aef8:	00280821 	addu	at,at,t0
bfc0aefc:	ac2ae740 	sw	t2,-6336(at)
bfc0af00:	3c010001 	lui	at,0x1
bfc0af04:	00280821 	addu	at,at,t0
bfc0af08:	a429e740 	sh	t1,-6336(at)
bfc0af0c:	25040004 	addiu	a0,t0,4
bfc0af10:	2505fffc 	addiu	a1,t0,-4
bfc0af14:	3c010001 	lui	at,0x1
bfc0af18:	00240821 	addu	at,at,a0
bfc0af1c:	ac24e740 	sw	a0,-6336(at)
bfc0af20:	3c010001 	lui	at,0x1
bfc0af24:	00250821 	addu	at,at,a1
bfc0af28:	ac25e740 	sw	a1,-6336(at)
bfc0af2c:	3c020001 	lui	v0,0x1
bfc0af30:	00481021 	addu	v0,v0,t0
bfc0af34:	8c42e740 	lw	v0,-6336(v0)
bfc0af38:	3c040001 	lui	a0,0x1
bfc0af3c:	00852021 	addu	a0,a0,a1
bfc0af40:	8c84e740 	lw	a0,-6336(a0)
bfc0af44:	3c050001 	lui	a1,0x1
bfc0af48:	00a42821 	addu	a1,a1,a0
bfc0af4c:	8ca5e740 	lw	a1,-6336(a1)
bfc0af50:	3c060001 	lui	a2,0x1
bfc0af54:	00c53021 	addu	a2,a2,a1
bfc0af58:	8cc6e740 	lw	a2,-6336(a2)
bfc0af5c:	144303be 	bne	v0,v1,bfc0be58 <inst_error>
bfc0af60:	00000000 	nop
/home/csy/func/inst/n64_sh.S:71
bfc0af64:	3c0a8882 	lui	t2,0x8882
bfc0af68:	354a040c 	ori	t2,t2,0x40c
bfc0af6c:	3c09f8e0 	lui	t1,0xf8e0
bfc0af70:	35297e80 	ori	t1,t1,0x7e80
bfc0af74:	3c08800d 	lui	t0,0x800d
bfc0af78:	3c038882 	lui	v1,0x8882
bfc0af7c:	34637e80 	ori	v1,v1,0x7e80
bfc0af80:	ad0a13d8 	sw	t2,5080(t0)
bfc0af84:	a50913d8 	sh	t1,5080(t0)
bfc0af88:	25040004 	addiu	a0,t0,4
bfc0af8c:	2505fffc 	addiu	a1,t0,-4
bfc0af90:	ac8413d8 	sw	a0,5080(a0)
bfc0af94:	aca513d8 	sw	a1,5080(a1)
bfc0af98:	8d0213d8 	lw	v0,5080(t0)
bfc0af9c:	8ca413d8 	lw	a0,5080(a1)
bfc0afa0:	8c8513d8 	lw	a1,5080(a0)
bfc0afa4:	8ca613d8 	lw	a2,5080(a1)
bfc0afa8:	144303ab 	bne	v0,v1,bfc0be58 <inst_error>
bfc0afac:	00000000 	nop
/home/csy/func/inst/n64_sh.S:72
bfc0afb0:	3c0af854 	lui	t2,0xf854
bfc0afb4:	354a84f0 	ori	t2,t2,0x84f0
bfc0afb8:	3c092056 	lui	t1,0x2056
bfc0afbc:	3529abbc 	ori	t1,t1,0xabbc
bfc0afc0:	3c08800d 	lui	t0,0x800d
bfc0afc4:	3c03abbc 	lui	v1,0xabbc
bfc0afc8:	346384f0 	ori	v1,v1,0x84f0
bfc0afcc:	3c010001 	lui	at,0x1
bfc0afd0:	00280821 	addu	at,at,t0
bfc0afd4:	ac2ac038 	sw	t2,-16328(at)
bfc0afd8:	3c010001 	lui	at,0x1
bfc0afdc:	00280821 	addu	at,at,t0
bfc0afe0:	a429c03a 	sh	t1,-16326(at)
bfc0afe4:	25040004 	addiu	a0,t0,4
bfc0afe8:	2505fffc 	addiu	a1,t0,-4
bfc0afec:	3c010001 	lui	at,0x1
bfc0aff0:	00240821 	addu	at,at,a0
bfc0aff4:	ac24c038 	sw	a0,-16328(at)
bfc0aff8:	3c010001 	lui	at,0x1
bfc0affc:	00250821 	addu	at,at,a1
bfc0b000:	ac25c038 	sw	a1,-16328(at)
bfc0b004:	3c020001 	lui	v0,0x1
bfc0b008:	00481021 	addu	v0,v0,t0
bfc0b00c:	8c42c038 	lw	v0,-16328(v0)
bfc0b010:	3c040001 	lui	a0,0x1
bfc0b014:	00852021 	addu	a0,a0,a1
bfc0b018:	8c84c038 	lw	a0,-16328(a0)
bfc0b01c:	3c050001 	lui	a1,0x1
bfc0b020:	00a42821 	addu	a1,a1,a0
bfc0b024:	8ca5c038 	lw	a1,-16328(a1)
bfc0b028:	3c060001 	lui	a2,0x1
bfc0b02c:	00c53021 	addu	a2,a2,a1
bfc0b030:	8cc6c038 	lw	a2,-16328(a2)
bfc0b034:	14430388 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b038:	00000000 	nop
/home/csy/func/inst/n64_sh.S:73
bfc0b03c:	3c0a5eb1 	lui	t2,0x5eb1
bfc0b040:	354a9438 	ori	t2,t2,0x9438
bfc0b044:	3c093ec8 	lui	t1,0x3ec8
bfc0b048:	35298830 	ori	t1,t1,0x8830
bfc0b04c:	3c08800d 	lui	t0,0x800d
bfc0b050:	3c038830 	lui	v1,0x8830
bfc0b054:	34639438 	ori	v1,v1,0x9438
bfc0b058:	3c010001 	lui	at,0x1
bfc0b05c:	00280821 	addu	at,at,t0
bfc0b060:	ac2af610 	sw	t2,-2544(at)
bfc0b064:	3c010001 	lui	at,0x1
bfc0b068:	00280821 	addu	at,at,t0
bfc0b06c:	a429f612 	sh	t1,-2542(at)
bfc0b070:	25040004 	addiu	a0,t0,4
bfc0b074:	2505fffc 	addiu	a1,t0,-4
bfc0b078:	3c010001 	lui	at,0x1
bfc0b07c:	00240821 	addu	at,at,a0
bfc0b080:	ac24f610 	sw	a0,-2544(at)
bfc0b084:	3c010001 	lui	at,0x1
bfc0b088:	00250821 	addu	at,at,a1
bfc0b08c:	ac25f610 	sw	a1,-2544(at)
bfc0b090:	3c020001 	lui	v0,0x1
bfc0b094:	00481021 	addu	v0,v0,t0
bfc0b098:	8c42f610 	lw	v0,-2544(v0)
bfc0b09c:	3c040001 	lui	a0,0x1
bfc0b0a0:	00852021 	addu	a0,a0,a1
bfc0b0a4:	8c84f610 	lw	a0,-2544(a0)
bfc0b0a8:	3c050001 	lui	a1,0x1
bfc0b0ac:	00a42821 	addu	a1,a1,a0
bfc0b0b0:	8ca5f610 	lw	a1,-2544(a1)
bfc0b0b4:	3c060001 	lui	a2,0x1
bfc0b0b8:	00c53021 	addu	a2,a2,a1
bfc0b0bc:	8cc6f610 	lw	a2,-2544(a2)
bfc0b0c0:	14430365 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b0c4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:74
bfc0b0c8:	3c0a4c34 	lui	t2,0x4c34
bfc0b0cc:	354aa5a0 	ori	t2,t2,0xa5a0
bfc0b0d0:	3c0941f8 	lui	t1,0x41f8
bfc0b0d4:	3529c4b0 	ori	t1,t1,0xc4b0
bfc0b0d8:	3c08800d 	lui	t0,0x800d
bfc0b0dc:	3c03c4b0 	lui	v1,0xc4b0
bfc0b0e0:	3463a5a0 	ori	v1,v1,0xa5a0
bfc0b0e4:	3c010001 	lui	at,0x1
bfc0b0e8:	00280821 	addu	at,at,t0
bfc0b0ec:	ac2af1e4 	sw	t2,-3612(at)
bfc0b0f0:	3c010001 	lui	at,0x1
bfc0b0f4:	00280821 	addu	at,at,t0
bfc0b0f8:	a429f1e6 	sh	t1,-3610(at)
bfc0b0fc:	25040004 	addiu	a0,t0,4
bfc0b100:	2505fffc 	addiu	a1,t0,-4
bfc0b104:	3c010001 	lui	at,0x1
bfc0b108:	00240821 	addu	at,at,a0
bfc0b10c:	ac24f1e4 	sw	a0,-3612(at)
bfc0b110:	3c010001 	lui	at,0x1
bfc0b114:	00250821 	addu	at,at,a1
bfc0b118:	ac25f1e4 	sw	a1,-3612(at)
bfc0b11c:	3c020001 	lui	v0,0x1
bfc0b120:	00481021 	addu	v0,v0,t0
bfc0b124:	8c42f1e4 	lw	v0,-3612(v0)
bfc0b128:	3c040001 	lui	a0,0x1
bfc0b12c:	00852021 	addu	a0,a0,a1
bfc0b130:	8c84f1e4 	lw	a0,-3612(a0)
bfc0b134:	3c050001 	lui	a1,0x1
bfc0b138:	00a42821 	addu	a1,a1,a0
bfc0b13c:	8ca5f1e4 	lw	a1,-3612(a1)
bfc0b140:	3c060001 	lui	a2,0x1
bfc0b144:	00c53021 	addu	a2,a2,a1
bfc0b148:	8cc6f1e4 	lw	a2,-3612(a2)
bfc0b14c:	14430342 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b150:	00000000 	nop
/home/csy/func/inst/n64_sh.S:75
bfc0b154:	3c0a9bc0 	lui	t2,0x9bc0
bfc0b158:	354a0fe8 	ori	t2,t2,0xfe8
bfc0b15c:	3c0919fb 	lui	t1,0x19fb
bfc0b160:	3529b8d6 	ori	t1,t1,0xb8d6
bfc0b164:	3c08800d 	lui	t0,0x800d
bfc0b168:	3c03b8d6 	lui	v1,0xb8d6
bfc0b16c:	34630fe8 	ori	v1,v1,0xfe8
bfc0b170:	ad0a0acc 	sw	t2,2764(t0)
bfc0b174:	a5090ace 	sh	t1,2766(t0)
bfc0b178:	25040004 	addiu	a0,t0,4
bfc0b17c:	2505fffc 	addiu	a1,t0,-4
bfc0b180:	ac840acc 	sw	a0,2764(a0)
bfc0b184:	aca50acc 	sw	a1,2764(a1)
bfc0b188:	8d020acc 	lw	v0,2764(t0)
bfc0b18c:	8ca40acc 	lw	a0,2764(a1)
bfc0b190:	8c850acc 	lw	a1,2764(a0)
bfc0b194:	8ca60acc 	lw	a2,2764(a1)
bfc0b198:	1443032f 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b19c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:76
bfc0b1a0:	3c0ae293 	lui	t2,0xe293
bfc0b1a4:	354aa67e 	ori	t2,t2,0xa67e
bfc0b1a8:	3c09cc73 	lui	t1,0xcc73
bfc0b1ac:	35290080 	ori	t1,t1,0x80
bfc0b1b0:	3c08800d 	lui	t0,0x800d
bfc0b1b4:	3c03e293 	lui	v1,0xe293
bfc0b1b8:	34630080 	ori	v1,v1,0x80
bfc0b1bc:	ad0a51b0 	sw	t2,20912(t0)
bfc0b1c0:	a50951b0 	sh	t1,20912(t0)
bfc0b1c4:	25040004 	addiu	a0,t0,4
bfc0b1c8:	2505fffc 	addiu	a1,t0,-4
bfc0b1cc:	ac8451b0 	sw	a0,20912(a0)
bfc0b1d0:	aca551b0 	sw	a1,20912(a1)
bfc0b1d4:	8d0251b0 	lw	v0,20912(t0)
bfc0b1d8:	8ca451b0 	lw	a0,20912(a1)
bfc0b1dc:	8c8551b0 	lw	a1,20912(a0)
bfc0b1e0:	8ca651b0 	lw	a2,20912(a1)
bfc0b1e4:	1443031c 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b1e8:	00000000 	nop
/home/csy/func/inst/n64_sh.S:77
bfc0b1ec:	3c0a93c7 	lui	t2,0x93c7
bfc0b1f0:	354ad5b0 	ori	t2,t2,0xd5b0
bfc0b1f4:	3c09c0c9 	lui	t1,0xc0c9
bfc0b1f8:	35299855 	ori	t1,t1,0x9855
bfc0b1fc:	3c08800d 	lui	t0,0x800d
bfc0b200:	3c0393c7 	lui	v1,0x93c7
bfc0b204:	34639855 	ori	v1,v1,0x9855
bfc0b208:	3c010001 	lui	at,0x1
bfc0b20c:	00280821 	addu	at,at,t0
bfc0b210:	ac2ab540 	sw	t2,-19136(at)
bfc0b214:	3c010001 	lui	at,0x1
bfc0b218:	00280821 	addu	at,at,t0
bfc0b21c:	a429b540 	sh	t1,-19136(at)
bfc0b220:	25040004 	addiu	a0,t0,4
bfc0b224:	2505fffc 	addiu	a1,t0,-4
bfc0b228:	3c010001 	lui	at,0x1
bfc0b22c:	00240821 	addu	at,at,a0
bfc0b230:	ac24b540 	sw	a0,-19136(at)
bfc0b234:	3c010001 	lui	at,0x1
bfc0b238:	00250821 	addu	at,at,a1
bfc0b23c:	ac25b540 	sw	a1,-19136(at)
bfc0b240:	3c020001 	lui	v0,0x1
bfc0b244:	00481021 	addu	v0,v0,t0
bfc0b248:	8c42b540 	lw	v0,-19136(v0)
bfc0b24c:	3c040001 	lui	a0,0x1
bfc0b250:	00852021 	addu	a0,a0,a1
bfc0b254:	8c84b540 	lw	a0,-19136(a0)
bfc0b258:	3c050001 	lui	a1,0x1
bfc0b25c:	00a42821 	addu	a1,a1,a0
bfc0b260:	8ca5b540 	lw	a1,-19136(a1)
bfc0b264:	3c060001 	lui	a2,0x1
bfc0b268:	00c53021 	addu	a2,a2,a1
bfc0b26c:	8cc6b540 	lw	a2,-19136(a2)
bfc0b270:	144302f9 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b274:	00000000 	nop
/home/csy/func/inst/n64_sh.S:78
bfc0b278:	3c0a5a4a 	lui	t2,0x5a4a
bfc0b27c:	354a07f6 	ori	t2,t2,0x7f6
bfc0b280:	3c090421 	lui	t1,0x421
bfc0b284:	35299ef4 	ori	t1,t1,0x9ef4
bfc0b288:	3c08800d 	lui	t0,0x800d
bfc0b28c:	3c039ef4 	lui	v1,0x9ef4
bfc0b290:	346307f6 	ori	v1,v1,0x7f6
bfc0b294:	ad0a48b0 	sw	t2,18608(t0)
bfc0b298:	a50948b2 	sh	t1,18610(t0)
bfc0b29c:	25040004 	addiu	a0,t0,4
bfc0b2a0:	2505fffc 	addiu	a1,t0,-4
bfc0b2a4:	ac8448b0 	sw	a0,18608(a0)
bfc0b2a8:	aca548b0 	sw	a1,18608(a1)
bfc0b2ac:	8d0248b0 	lw	v0,18608(t0)
bfc0b2b0:	8ca448b0 	lw	a0,18608(a1)
bfc0b2b4:	8c8548b0 	lw	a1,18608(a0)
bfc0b2b8:	8ca648b0 	lw	a2,18608(a1)
bfc0b2bc:	144302e6 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b2c0:	00000000 	nop
/home/csy/func/inst/n64_sh.S:79
bfc0b2c4:	3c0a0cb8 	lui	t2,0xcb8
bfc0b2c8:	354a09e4 	ori	t2,t2,0x9e4
bfc0b2cc:	3c098cfc 	lui	t1,0x8cfc
bfc0b2d0:	3529f2c0 	ori	t1,t1,0xf2c0
bfc0b2d4:	3c08800d 	lui	t0,0x800d
bfc0b2d8:	3c030cb8 	lui	v1,0xcb8
bfc0b2dc:	3463f2c0 	ori	v1,v1,0xf2c0
bfc0b2e0:	ad0a5e60 	sw	t2,24160(t0)
bfc0b2e4:	a5095e60 	sh	t1,24160(t0)
bfc0b2e8:	25040004 	addiu	a0,t0,4
bfc0b2ec:	2505fffc 	addiu	a1,t0,-4
bfc0b2f0:	ac845e60 	sw	a0,24160(a0)
bfc0b2f4:	aca55e60 	sw	a1,24160(a1)
bfc0b2f8:	8d025e60 	lw	v0,24160(t0)
bfc0b2fc:	8ca45e60 	lw	a0,24160(a1)
bfc0b300:	8c855e60 	lw	a1,24160(a0)
bfc0b304:	8ca65e60 	lw	a2,24160(a1)
bfc0b308:	144302d3 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b30c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:80
bfc0b310:	3c0ab596 	lui	t2,0xb596
bfc0b314:	354aca6a 	ori	t2,t2,0xca6a
bfc0b318:	3c098df9 	lui	t1,0x8df9
bfc0b31c:	3529423c 	ori	t1,t1,0x423c
bfc0b320:	3c08800d 	lui	t0,0x800d
bfc0b324:	3c03423c 	lui	v1,0x423c
bfc0b328:	3463ca6a 	ori	v1,v1,0xca6a
bfc0b32c:	3c010001 	lui	at,0x1
bfc0b330:	00280821 	addu	at,at,t0
bfc0b334:	ac2abe9c 	sw	t2,-16740(at)
bfc0b338:	3c010001 	lui	at,0x1
bfc0b33c:	00280821 	addu	at,at,t0
bfc0b340:	a429be9e 	sh	t1,-16738(at)
bfc0b344:	25040004 	addiu	a0,t0,4
bfc0b348:	2505fffc 	addiu	a1,t0,-4
bfc0b34c:	3c010001 	lui	at,0x1
bfc0b350:	00240821 	addu	at,at,a0
bfc0b354:	ac24be9c 	sw	a0,-16740(at)
bfc0b358:	3c010001 	lui	at,0x1
bfc0b35c:	00250821 	addu	at,at,a1
bfc0b360:	ac25be9c 	sw	a1,-16740(at)
bfc0b364:	3c020001 	lui	v0,0x1
bfc0b368:	00481021 	addu	v0,v0,t0
bfc0b36c:	8c42be9c 	lw	v0,-16740(v0)
bfc0b370:	3c040001 	lui	a0,0x1
bfc0b374:	00852021 	addu	a0,a0,a1
bfc0b378:	8c84be9c 	lw	a0,-16740(a0)
bfc0b37c:	3c050001 	lui	a1,0x1
bfc0b380:	00a42821 	addu	a1,a1,a0
bfc0b384:	8ca5be9c 	lw	a1,-16740(a1)
bfc0b388:	3c060001 	lui	a2,0x1
bfc0b38c:	00c53021 	addu	a2,a2,a1
bfc0b390:	8cc6be9c 	lw	a2,-16740(a2)
bfc0b394:	144302b0 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b398:	00000000 	nop
/home/csy/func/inst/n64_sh.S:81
bfc0b39c:	3c0aa84a 	lui	t2,0xa84a
bfc0b3a0:	354a74a8 	ori	t2,t2,0x74a8
bfc0b3a4:	3c094cc9 	lui	t1,0x4cc9
bfc0b3a8:	3529d636 	ori	t1,t1,0xd636
bfc0b3ac:	3c08800d 	lui	t0,0x800d
bfc0b3b0:	3c03a84a 	lui	v1,0xa84a
bfc0b3b4:	3463d636 	ori	v1,v1,0xd636
bfc0b3b8:	3c010001 	lui	at,0x1
bfc0b3bc:	00280821 	addu	at,at,t0
bfc0b3c0:	ac2aaecc 	sw	t2,-20788(at)
bfc0b3c4:	3c010001 	lui	at,0x1
bfc0b3c8:	00280821 	addu	at,at,t0
bfc0b3cc:	a429aecc 	sh	t1,-20788(at)
bfc0b3d0:	25040004 	addiu	a0,t0,4
bfc0b3d4:	2505fffc 	addiu	a1,t0,-4
bfc0b3d8:	3c010001 	lui	at,0x1
bfc0b3dc:	00240821 	addu	at,at,a0
bfc0b3e0:	ac24aecc 	sw	a0,-20788(at)
bfc0b3e4:	3c010001 	lui	at,0x1
bfc0b3e8:	00250821 	addu	at,at,a1
bfc0b3ec:	ac25aecc 	sw	a1,-20788(at)
bfc0b3f0:	3c020001 	lui	v0,0x1
bfc0b3f4:	00481021 	addu	v0,v0,t0
bfc0b3f8:	8c42aecc 	lw	v0,-20788(v0)
bfc0b3fc:	3c040001 	lui	a0,0x1
bfc0b400:	00852021 	addu	a0,a0,a1
bfc0b404:	8c84aecc 	lw	a0,-20788(a0)
bfc0b408:	3c050001 	lui	a1,0x1
bfc0b40c:	00a42821 	addu	a1,a1,a0
bfc0b410:	8ca5aecc 	lw	a1,-20788(a1)
bfc0b414:	3c060001 	lui	a2,0x1
bfc0b418:	00c53021 	addu	a2,a2,a1
bfc0b41c:	8cc6aecc 	lw	a2,-20788(a2)
bfc0b420:	1443028d 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b424:	00000000 	nop
/home/csy/func/inst/n64_sh.S:82
bfc0b428:	3c0aaa5e 	lui	t2,0xaa5e
bfc0b42c:	354a6ea0 	ori	t2,t2,0x6ea0
bfc0b430:	3c09a81b 	lui	t1,0xa81b
bfc0b434:	35299980 	ori	t1,t1,0x9980
bfc0b438:	3c08800d 	lui	t0,0x800d
bfc0b43c:	3c03aa5e 	lui	v1,0xaa5e
bfc0b440:	34639980 	ori	v1,v1,0x9980
bfc0b444:	ad0a2cc8 	sw	t2,11464(t0)
bfc0b448:	a5092cc8 	sh	t1,11464(t0)
bfc0b44c:	25040004 	addiu	a0,t0,4
bfc0b450:	2505fffc 	addiu	a1,t0,-4
bfc0b454:	ac842cc8 	sw	a0,11464(a0)
bfc0b458:	aca52cc8 	sw	a1,11464(a1)
bfc0b45c:	8d022cc8 	lw	v0,11464(t0)
bfc0b460:	8ca42cc8 	lw	a0,11464(a1)
bfc0b464:	8c852cc8 	lw	a1,11464(a0)
bfc0b468:	8ca62cc8 	lw	a2,11464(a1)
bfc0b46c:	1443027a 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b470:	00000000 	nop
/home/csy/func/inst/n64_sh.S:83
bfc0b474:	3c0ab266 	lui	t2,0xb266
bfc0b478:	354aaf70 	ori	t2,t2,0xaf70
bfc0b47c:	3c09ad2f 	lui	t1,0xad2f
bfc0b480:	35298b20 	ori	t1,t1,0x8b20
bfc0b484:	3c08800d 	lui	t0,0x800d
bfc0b488:	3c038b20 	lui	v1,0x8b20
bfc0b48c:	3463af70 	ori	v1,v1,0xaf70
bfc0b490:	3c010001 	lui	at,0x1
bfc0b494:	00280821 	addu	at,at,t0
bfc0b498:	ac2aad08 	sw	t2,-21240(at)
bfc0b49c:	3c010001 	lui	at,0x1
bfc0b4a0:	00280821 	addu	at,at,t0
bfc0b4a4:	a429ad0a 	sh	t1,-21238(at)
bfc0b4a8:	25040004 	addiu	a0,t0,4
bfc0b4ac:	2505fffc 	addiu	a1,t0,-4
bfc0b4b0:	3c010001 	lui	at,0x1
bfc0b4b4:	00240821 	addu	at,at,a0
bfc0b4b8:	ac24ad08 	sw	a0,-21240(at)
bfc0b4bc:	3c010001 	lui	at,0x1
bfc0b4c0:	00250821 	addu	at,at,a1
bfc0b4c4:	ac25ad08 	sw	a1,-21240(at)
bfc0b4c8:	3c020001 	lui	v0,0x1
bfc0b4cc:	00481021 	addu	v0,v0,t0
bfc0b4d0:	8c42ad08 	lw	v0,-21240(v0)
bfc0b4d4:	3c040001 	lui	a0,0x1
bfc0b4d8:	00852021 	addu	a0,a0,a1
bfc0b4dc:	8c84ad08 	lw	a0,-21240(a0)
bfc0b4e0:	3c050001 	lui	a1,0x1
bfc0b4e4:	00a42821 	addu	a1,a1,a0
bfc0b4e8:	8ca5ad08 	lw	a1,-21240(a1)
bfc0b4ec:	3c060001 	lui	a2,0x1
bfc0b4f0:	00c53021 	addu	a2,a2,a1
bfc0b4f4:	8cc6ad08 	lw	a2,-21240(a2)
bfc0b4f8:	14430257 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b4fc:	00000000 	nop
/home/csy/func/inst/n64_sh.S:84
bfc0b500:	3c0a40d3 	lui	t2,0x40d3
bfc0b504:	354ab176 	ori	t2,t2,0xb176
bfc0b508:	3c09e431 	lui	t1,0xe431
bfc0b50c:	35291540 	ori	t1,t1,0x1540
bfc0b510:	3c08800d 	lui	t0,0x800d
bfc0b514:	3c0340d3 	lui	v1,0x40d3
bfc0b518:	34631540 	ori	v1,v1,0x1540
bfc0b51c:	ad0a4ff0 	sw	t2,20464(t0)
bfc0b520:	a5094ff0 	sh	t1,20464(t0)
bfc0b524:	25040004 	addiu	a0,t0,4
bfc0b528:	2505fffc 	addiu	a1,t0,-4
bfc0b52c:	ac844ff0 	sw	a0,20464(a0)
bfc0b530:	aca54ff0 	sw	a1,20464(a1)
bfc0b534:	8d024ff0 	lw	v0,20464(t0)
bfc0b538:	8ca44ff0 	lw	a0,20464(a1)
bfc0b53c:	8c854ff0 	lw	a1,20464(a0)
bfc0b540:	8ca64ff0 	lw	a2,20464(a1)
bfc0b544:	14430244 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b548:	00000000 	nop
/home/csy/func/inst/n64_sh.S:85
bfc0b54c:	3c0a80b3 	lui	t2,0x80b3
bfc0b550:	354a7e6c 	ori	t2,t2,0x7e6c
bfc0b554:	3c0955d5 	lui	t1,0x55d5
bfc0b558:	3529b870 	ori	t1,t1,0xb870
bfc0b55c:	3c08800d 	lui	t0,0x800d
bfc0b560:	3c0380b3 	lui	v1,0x80b3
bfc0b564:	3463b870 	ori	v1,v1,0xb870
bfc0b568:	3c010001 	lui	at,0x1
bfc0b56c:	00280821 	addu	at,at,t0
bfc0b570:	ac2a9400 	sw	t2,-27648(at)
bfc0b574:	3c010001 	lui	at,0x1
bfc0b578:	00280821 	addu	at,at,t0
bfc0b57c:	a4299400 	sh	t1,-27648(at)
bfc0b580:	25040004 	addiu	a0,t0,4
bfc0b584:	2505fffc 	addiu	a1,t0,-4
bfc0b588:	3c010001 	lui	at,0x1
bfc0b58c:	00240821 	addu	at,at,a0
bfc0b590:	ac249400 	sw	a0,-27648(at)
bfc0b594:	3c010001 	lui	at,0x1
bfc0b598:	00250821 	addu	at,at,a1
bfc0b59c:	ac259400 	sw	a1,-27648(at)
bfc0b5a0:	3c020001 	lui	v0,0x1
bfc0b5a4:	00481021 	addu	v0,v0,t0
bfc0b5a8:	8c429400 	lw	v0,-27648(v0)
bfc0b5ac:	3c040001 	lui	a0,0x1
bfc0b5b0:	00852021 	addu	a0,a0,a1
bfc0b5b4:	8c849400 	lw	a0,-27648(a0)
bfc0b5b8:	3c050001 	lui	a1,0x1
bfc0b5bc:	00a42821 	addu	a1,a1,a0
bfc0b5c0:	8ca59400 	lw	a1,-27648(a1)
bfc0b5c4:	3c060001 	lui	a2,0x1
bfc0b5c8:	00c53021 	addu	a2,a2,a1
bfc0b5cc:	8cc69400 	lw	a2,-27648(a2)
bfc0b5d0:	14430221 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b5d4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:86
bfc0b5d8:	3c0aed52 	lui	t2,0xed52
bfc0b5dc:	354a58d8 	ori	t2,t2,0x58d8
bfc0b5e0:	3c099fdd 	lui	t1,0x9fdd
bfc0b5e4:	352923a8 	ori	t1,t1,0x23a8
bfc0b5e8:	3c08800d 	lui	t0,0x800d
bfc0b5ec:	3c03ed52 	lui	v1,0xed52
bfc0b5f0:	346323a8 	ori	v1,v1,0x23a8
bfc0b5f4:	3c010001 	lui	at,0x1
bfc0b5f8:	00280821 	addu	at,at,t0
bfc0b5fc:	ac2afbe0 	sw	t2,-1056(at)
bfc0b600:	3c010001 	lui	at,0x1
bfc0b604:	00280821 	addu	at,at,t0
bfc0b608:	a429fbe0 	sh	t1,-1056(at)
bfc0b60c:	25040004 	addiu	a0,t0,4
bfc0b610:	2505fffc 	addiu	a1,t0,-4
bfc0b614:	3c010001 	lui	at,0x1
bfc0b618:	00240821 	addu	at,at,a0
bfc0b61c:	ac24fbe0 	sw	a0,-1056(at)
bfc0b620:	3c010001 	lui	at,0x1
bfc0b624:	00250821 	addu	at,at,a1
bfc0b628:	ac25fbe0 	sw	a1,-1056(at)
bfc0b62c:	3c020001 	lui	v0,0x1
bfc0b630:	00481021 	addu	v0,v0,t0
bfc0b634:	8c42fbe0 	lw	v0,-1056(v0)
bfc0b638:	3c040001 	lui	a0,0x1
bfc0b63c:	00852021 	addu	a0,a0,a1
bfc0b640:	8c84fbe0 	lw	a0,-1056(a0)
bfc0b644:	3c050001 	lui	a1,0x1
bfc0b648:	00a42821 	addu	a1,a1,a0
bfc0b64c:	8ca5fbe0 	lw	a1,-1056(a1)
bfc0b650:	3c060001 	lui	a2,0x1
bfc0b654:	00c53021 	addu	a2,a2,a1
bfc0b658:	8cc6fbe0 	lw	a2,-1056(a2)
bfc0b65c:	144301fe 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b660:	00000000 	nop
/home/csy/func/inst/n64_sh.S:87
bfc0b664:	3c0a3974 	lui	t2,0x3974
bfc0b668:	354ab6f0 	ori	t2,t2,0xb6f0
bfc0b66c:	3c0948a0 	lui	t1,0x48a0
bfc0b670:	35291f4e 	ori	t1,t1,0x1f4e
bfc0b674:	3c08800d 	lui	t0,0x800d
bfc0b678:	3c033974 	lui	v1,0x3974
bfc0b67c:	34631f4e 	ori	v1,v1,0x1f4e
bfc0b680:	3c010001 	lui	at,0x1
bfc0b684:	00280821 	addu	at,at,t0
bfc0b688:	ac2aae00 	sw	t2,-20992(at)
bfc0b68c:	3c010001 	lui	at,0x1
bfc0b690:	00280821 	addu	at,at,t0
bfc0b694:	a429ae00 	sh	t1,-20992(at)
bfc0b698:	25040004 	addiu	a0,t0,4
bfc0b69c:	2505fffc 	addiu	a1,t0,-4
bfc0b6a0:	3c010001 	lui	at,0x1
bfc0b6a4:	00240821 	addu	at,at,a0
bfc0b6a8:	ac24ae00 	sw	a0,-20992(at)
bfc0b6ac:	3c010001 	lui	at,0x1
bfc0b6b0:	00250821 	addu	at,at,a1
bfc0b6b4:	ac25ae00 	sw	a1,-20992(at)
bfc0b6b8:	3c020001 	lui	v0,0x1
bfc0b6bc:	00481021 	addu	v0,v0,t0
bfc0b6c0:	8c42ae00 	lw	v0,-20992(v0)
bfc0b6c4:	3c040001 	lui	a0,0x1
bfc0b6c8:	00852021 	addu	a0,a0,a1
bfc0b6cc:	8c84ae00 	lw	a0,-20992(a0)
bfc0b6d0:	3c050001 	lui	a1,0x1
bfc0b6d4:	00a42821 	addu	a1,a1,a0
bfc0b6d8:	8ca5ae00 	lw	a1,-20992(a1)
bfc0b6dc:	3c060001 	lui	a2,0x1
bfc0b6e0:	00c53021 	addu	a2,a2,a1
bfc0b6e4:	8cc6ae00 	lw	a2,-20992(a2)
bfc0b6e8:	144301db 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b6ec:	00000000 	nop
/home/csy/func/inst/n64_sh.S:88
bfc0b6f0:	3c0a77dd 	lui	t2,0x77dd
bfc0b6f4:	354af4e0 	ori	t2,t2,0xf4e0
bfc0b6f8:	3c09e28a 	lui	t1,0xe28a
bfc0b6fc:	3529eb00 	ori	t1,t1,0xeb00
bfc0b700:	3c08800d 	lui	t0,0x800d
bfc0b704:	3c0377dd 	lui	v1,0x77dd
bfc0b708:	3463eb00 	ori	v1,v1,0xeb00
bfc0b70c:	ad0a1700 	sw	t2,5888(t0)
bfc0b710:	a5091700 	sh	t1,5888(t0)
bfc0b714:	25040004 	addiu	a0,t0,4
bfc0b718:	2505fffc 	addiu	a1,t0,-4
bfc0b71c:	ac841700 	sw	a0,5888(a0)
bfc0b720:	aca51700 	sw	a1,5888(a1)
bfc0b724:	8d021700 	lw	v0,5888(t0)
bfc0b728:	8ca41700 	lw	a0,5888(a1)
bfc0b72c:	8c851700 	lw	a1,5888(a0)
bfc0b730:	8ca61700 	lw	a2,5888(a1)
bfc0b734:	144301c8 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b738:	00000000 	nop
/home/csy/func/inst/n64_sh.S:89
bfc0b73c:	3c0a1865 	lui	t2,0x1865
bfc0b740:	354add7c 	ori	t2,t2,0xdd7c
bfc0b744:	3c09a83f 	lui	t1,0xa83f
bfc0b748:	35298680 	ori	t1,t1,0x8680
bfc0b74c:	3c08800d 	lui	t0,0x800d
bfc0b750:	3c031865 	lui	v1,0x1865
bfc0b754:	34638680 	ori	v1,v1,0x8680
bfc0b758:	ad0a0000 	sw	t2,0(t0)
bfc0b75c:	a5090000 	sh	t1,0(t0)
bfc0b760:	25040004 	addiu	a0,t0,4
bfc0b764:	2505fffc 	addiu	a1,t0,-4
bfc0b768:	ac840000 	sw	a0,0(a0)
bfc0b76c:	aca50000 	sw	a1,0(a1)
bfc0b770:	8d020000 	lw	v0,0(t0)
bfc0b774:	8ca40000 	lw	a0,0(a1)
bfc0b778:	8c850000 	lw	a1,0(a0)
bfc0b77c:	8ca60000 	lw	a2,0(a1)
bfc0b780:	144301b5 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b784:	00000000 	nop
/home/csy/func/inst/n64_sh.S:90
bfc0b788:	3c0a3dc1 	lui	t2,0x3dc1
bfc0b78c:	354a31bc 	ori	t2,t2,0x31bc
bfc0b790:	3c09051e 	lui	t1,0x51e
bfc0b794:	352907d1 	ori	t1,t1,0x7d1
bfc0b798:	3c08800d 	lui	t0,0x800d
bfc0b79c:	3c0307d1 	lui	v1,0x7d1
bfc0b7a0:	346331bc 	ori	v1,v1,0x31bc
bfc0b7a4:	ad0a0000 	sw	t2,0(t0)
bfc0b7a8:	a5090002 	sh	t1,2(t0)
bfc0b7ac:	25040004 	addiu	a0,t0,4
bfc0b7b0:	2505fffc 	addiu	a1,t0,-4
bfc0b7b4:	ac840000 	sw	a0,0(a0)
bfc0b7b8:	aca50000 	sw	a1,0(a1)
bfc0b7bc:	8d020000 	lw	v0,0(t0)
bfc0b7c0:	8ca40000 	lw	a0,0(a1)
bfc0b7c4:	8c850000 	lw	a1,0(a0)
bfc0b7c8:	8ca60000 	lw	a2,0(a1)
bfc0b7cc:	144301a2 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b7d0:	00000000 	nop
/home/csy/func/inst/n64_sh.S:91
bfc0b7d4:	3c0a58e1 	lui	t2,0x58e1
bfc0b7d8:	354a32b2 	ori	t2,t2,0x32b2
bfc0b7dc:	3c093baa 	lui	t1,0x3baa
bfc0b7e0:	35293c68 	ori	t1,t1,0x3c68
bfc0b7e4:	3c08800d 	lui	t0,0x800d
bfc0b7e8:	3c0358e1 	lui	v1,0x58e1
bfc0b7ec:	34633c68 	ori	v1,v1,0x3c68
bfc0b7f0:	ad0a0000 	sw	t2,0(t0)
bfc0b7f4:	a5090000 	sh	t1,0(t0)
bfc0b7f8:	25040004 	addiu	a0,t0,4
bfc0b7fc:	2505fffc 	addiu	a1,t0,-4
bfc0b800:	ac840000 	sw	a0,0(a0)
bfc0b804:	aca50000 	sw	a1,0(a1)
bfc0b808:	8d020000 	lw	v0,0(t0)
bfc0b80c:	8ca40000 	lw	a0,0(a1)
bfc0b810:	8c850000 	lw	a1,0(a0)
bfc0b814:	8ca60000 	lw	a2,0(a1)
bfc0b818:	1443018f 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b81c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:92
bfc0b820:	3c0a498c 	lui	t2,0x498c
bfc0b824:	354ac104 	ori	t2,t2,0xc104
bfc0b828:	3c090c55 	lui	t1,0xc55
bfc0b82c:	352952e2 	ori	t1,t1,0x52e2
bfc0b830:	3c08800d 	lui	t0,0x800d
bfc0b834:	3c03498c 	lui	v1,0x498c
bfc0b838:	346352e2 	ori	v1,v1,0x52e2
bfc0b83c:	ad0a0000 	sw	t2,0(t0)
bfc0b840:	a5090000 	sh	t1,0(t0)
bfc0b844:	25040004 	addiu	a0,t0,4
bfc0b848:	2505fffc 	addiu	a1,t0,-4
bfc0b84c:	ac840000 	sw	a0,0(a0)
bfc0b850:	aca50000 	sw	a1,0(a1)
bfc0b854:	8d020000 	lw	v0,0(t0)
bfc0b858:	8ca40000 	lw	a0,0(a1)
bfc0b85c:	8c850000 	lw	a1,0(a0)
bfc0b860:	8ca60000 	lw	a2,0(a1)
bfc0b864:	1443017c 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b868:	00000000 	nop
/home/csy/func/inst/n64_sh.S:93
bfc0b86c:	3c0a906f 	lui	t2,0x906f
bfc0b870:	354ac250 	ori	t2,t2,0xc250
bfc0b874:	3c09d942 	lui	t1,0xd942
bfc0b878:	3529b23c 	ori	t1,t1,0xb23c
bfc0b87c:	3c08800d 	lui	t0,0x800d
bfc0b880:	3c03906f 	lui	v1,0x906f
bfc0b884:	3463b23c 	ori	v1,v1,0xb23c
bfc0b888:	ad0a0000 	sw	t2,0(t0)
bfc0b88c:	a5090000 	sh	t1,0(t0)
bfc0b890:	25040004 	addiu	a0,t0,4
bfc0b894:	2505fffc 	addiu	a1,t0,-4
bfc0b898:	ac840000 	sw	a0,0(a0)
bfc0b89c:	aca50000 	sw	a1,0(a1)
bfc0b8a0:	8d020000 	lw	v0,0(t0)
bfc0b8a4:	8ca40000 	lw	a0,0(a1)
bfc0b8a8:	8c850000 	lw	a1,0(a0)
bfc0b8ac:	8ca60000 	lw	a2,0(a1)
bfc0b8b0:	14430169 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b8b4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:94
bfc0b8b8:	3c0a110e 	lui	t2,0x110e
bfc0b8bc:	354ad930 	ori	t2,t2,0xd930
bfc0b8c0:	3c09c287 	lui	t1,0xc287
bfc0b8c4:	35296832 	ori	t1,t1,0x6832
bfc0b8c8:	3c08800d 	lui	t0,0x800d
bfc0b8cc:	3c036832 	lui	v1,0x6832
bfc0b8d0:	3463d930 	ori	v1,v1,0xd930
bfc0b8d4:	ad0a0000 	sw	t2,0(t0)
bfc0b8d8:	a5090002 	sh	t1,2(t0)
bfc0b8dc:	25040004 	addiu	a0,t0,4
bfc0b8e0:	2505fffc 	addiu	a1,t0,-4
bfc0b8e4:	ac840000 	sw	a0,0(a0)
bfc0b8e8:	aca50000 	sw	a1,0(a1)
bfc0b8ec:	8d020000 	lw	v0,0(t0)
bfc0b8f0:	8ca40000 	lw	a0,0(a1)
bfc0b8f4:	8c850000 	lw	a1,0(a0)
bfc0b8f8:	8ca60000 	lw	a2,0(a1)
bfc0b8fc:	14430156 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b900:	00000000 	nop
/home/csy/func/inst/n64_sh.S:95
bfc0b904:	3c0ac390 	lui	t2,0xc390
bfc0b908:	354a96a4 	ori	t2,t2,0x96a4
bfc0b90c:	3c09a568 	lui	t1,0xa568
bfc0b910:	3529a9e0 	ori	t1,t1,0xa9e0
bfc0b914:	3c08800d 	lui	t0,0x800d
bfc0b918:	3c03c390 	lui	v1,0xc390
bfc0b91c:	3463a9e0 	ori	v1,v1,0xa9e0
bfc0b920:	ad0a0000 	sw	t2,0(t0)
bfc0b924:	a5090000 	sh	t1,0(t0)
bfc0b928:	25040004 	addiu	a0,t0,4
bfc0b92c:	2505fffc 	addiu	a1,t0,-4
bfc0b930:	ac840000 	sw	a0,0(a0)
bfc0b934:	aca50000 	sw	a1,0(a1)
bfc0b938:	8d020000 	lw	v0,0(t0)
bfc0b93c:	8ca40000 	lw	a0,0(a1)
bfc0b940:	8c850000 	lw	a1,0(a0)
bfc0b944:	8ca60000 	lw	a2,0(a1)
bfc0b948:	14430143 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b94c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:96
bfc0b950:	3c0afe04 	lui	t2,0xfe04
bfc0b954:	354a34c1 	ori	t2,t2,0x34c1
bfc0b958:	3c09e286 	lui	t1,0xe286
bfc0b95c:	3529dc78 	ori	t1,t1,0xdc78
bfc0b960:	3c08800d 	lui	t0,0x800d
bfc0b964:	3c03fe04 	lui	v1,0xfe04
bfc0b968:	3463dc78 	ori	v1,v1,0xdc78
bfc0b96c:	ad0a0000 	sw	t2,0(t0)
bfc0b970:	a5090000 	sh	t1,0(t0)
bfc0b974:	25040004 	addiu	a0,t0,4
bfc0b978:	2505fffc 	addiu	a1,t0,-4
bfc0b97c:	ac840000 	sw	a0,0(a0)
bfc0b980:	aca50000 	sw	a1,0(a1)
bfc0b984:	8d020000 	lw	v0,0(t0)
bfc0b988:	8ca40000 	lw	a0,0(a1)
bfc0b98c:	8c850000 	lw	a1,0(a0)
bfc0b990:	8ca60000 	lw	a2,0(a1)
bfc0b994:	14430130 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b998:	00000000 	nop
/home/csy/func/inst/n64_sh.S:97
bfc0b99c:	3c0a4345 	lui	t2,0x4345
bfc0b9a0:	354a056c 	ori	t2,t2,0x56c
bfc0b9a4:	3c096e34 	lui	t1,0x6e34
bfc0b9a8:	3529bc70 	ori	t1,t1,0xbc70
bfc0b9ac:	3c08800d 	lui	t0,0x800d
bfc0b9b0:	3c034345 	lui	v1,0x4345
bfc0b9b4:	3463bc70 	ori	v1,v1,0xbc70
bfc0b9b8:	ad0a0000 	sw	t2,0(t0)
bfc0b9bc:	a5090000 	sh	t1,0(t0)
bfc0b9c0:	25040004 	addiu	a0,t0,4
bfc0b9c4:	2505fffc 	addiu	a1,t0,-4
bfc0b9c8:	ac840000 	sw	a0,0(a0)
bfc0b9cc:	aca50000 	sw	a1,0(a1)
bfc0b9d0:	8d020000 	lw	v0,0(t0)
bfc0b9d4:	8ca40000 	lw	a0,0(a1)
bfc0b9d8:	8c850000 	lw	a1,0(a0)
bfc0b9dc:	8ca60000 	lw	a2,0(a1)
bfc0b9e0:	1443011d 	bne	v0,v1,bfc0be58 <inst_error>
bfc0b9e4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:98
bfc0b9e8:	3c0a3d48 	lui	t2,0x3d48
bfc0b9ec:	354a9f5f 	ori	t2,t2,0x9f5f
bfc0b9f0:	3c09fe2d 	lui	t1,0xfe2d
bfc0b9f4:	3529c400 	ori	t1,t1,0xc400
bfc0b9f8:	3c08800d 	lui	t0,0x800d
bfc0b9fc:	3c03c400 	lui	v1,0xc400
bfc0ba00:	34639f5f 	ori	v1,v1,0x9f5f
bfc0ba04:	ad0a0000 	sw	t2,0(t0)
bfc0ba08:	a5090002 	sh	t1,2(t0)
bfc0ba0c:	25040004 	addiu	a0,t0,4
bfc0ba10:	2505fffc 	addiu	a1,t0,-4
bfc0ba14:	ac840000 	sw	a0,0(a0)
bfc0ba18:	aca50000 	sw	a1,0(a1)
bfc0ba1c:	8d020000 	lw	v0,0(t0)
bfc0ba20:	8ca40000 	lw	a0,0(a1)
bfc0ba24:	8c850000 	lw	a1,0(a0)
bfc0ba28:	8ca60000 	lw	a2,0(a1)
bfc0ba2c:	1443010a 	bne	v0,v1,bfc0be58 <inst_error>
bfc0ba30:	00000000 	nop
/home/csy/func/inst/n64_sh.S:99
bfc0ba34:	3c0a46e6 	lui	t2,0x46e6
bfc0ba38:	354a0202 	ori	t2,t2,0x202
bfc0ba3c:	3c09d456 	lui	t1,0xd456
bfc0ba40:	3529f5e0 	ori	t1,t1,0xf5e0
bfc0ba44:	3c08800d 	lui	t0,0x800d
bfc0ba48:	3c03f5e0 	lui	v1,0xf5e0
bfc0ba4c:	34630202 	ori	v1,v1,0x202
bfc0ba50:	ad0a0000 	sw	t2,0(t0)
bfc0ba54:	a5090002 	sh	t1,2(t0)
bfc0ba58:	25040004 	addiu	a0,t0,4
bfc0ba5c:	2505fffc 	addiu	a1,t0,-4
bfc0ba60:	ac840000 	sw	a0,0(a0)
bfc0ba64:	aca50000 	sw	a1,0(a1)
bfc0ba68:	8d020000 	lw	v0,0(t0)
bfc0ba6c:	8ca40000 	lw	a0,0(a1)
bfc0ba70:	8c850000 	lw	a1,0(a0)
bfc0ba74:	8ca60000 	lw	a2,0(a1)
bfc0ba78:	144300f7 	bne	v0,v1,bfc0be58 <inst_error>
bfc0ba7c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:100
bfc0ba80:	3c0a3d44 	lui	t2,0x3d44
bfc0ba84:	354a363a 	ori	t2,t2,0x363a
bfc0ba88:	3c091013 	lui	t1,0x1013
bfc0ba8c:	3529b676 	ori	t1,t1,0xb676
bfc0ba90:	3c08800d 	lui	t0,0x800d
bfc0ba94:	3c033d44 	lui	v1,0x3d44
bfc0ba98:	3463b676 	ori	v1,v1,0xb676
bfc0ba9c:	ad0a0000 	sw	t2,0(t0)
bfc0baa0:	a5090000 	sh	t1,0(t0)
bfc0baa4:	25040004 	addiu	a0,t0,4
bfc0baa8:	2505fffc 	addiu	a1,t0,-4
bfc0baac:	ac840000 	sw	a0,0(a0)
bfc0bab0:	aca50000 	sw	a1,0(a1)
bfc0bab4:	8d020000 	lw	v0,0(t0)
bfc0bab8:	8ca40000 	lw	a0,0(a1)
bfc0babc:	8c850000 	lw	a1,0(a0)
bfc0bac0:	8ca60000 	lw	a2,0(a1)
bfc0bac4:	144300e4 	bne	v0,v1,bfc0be58 <inst_error>
bfc0bac8:	00000000 	nop
/home/csy/func/inst/n64_sh.S:101
bfc0bacc:	3c0a8108 	lui	t2,0x8108
bfc0bad0:	3c0930c0 	lui	t1,0x30c0
bfc0bad4:	35296a40 	ori	t1,t1,0x6a40
bfc0bad8:	3c08800d 	lui	t0,0x800d
bfc0badc:	3c038108 	lui	v1,0x8108
bfc0bae0:	34636a40 	ori	v1,v1,0x6a40
bfc0bae4:	ad0a0000 	sw	t2,0(t0)
bfc0bae8:	a5090000 	sh	t1,0(t0)
bfc0baec:	25040004 	addiu	a0,t0,4
bfc0baf0:	2505fffc 	addiu	a1,t0,-4
bfc0baf4:	ac840000 	sw	a0,0(a0)
bfc0baf8:	aca50000 	sw	a1,0(a1)
bfc0bafc:	8d020000 	lw	v0,0(t0)
bfc0bb00:	8ca40000 	lw	a0,0(a1)
bfc0bb04:	8c850000 	lw	a1,0(a0)
bfc0bb08:	8ca60000 	lw	a2,0(a1)
bfc0bb0c:	144300d2 	bne	v0,v1,bfc0be58 <inst_error>
bfc0bb10:	00000000 	nop
/home/csy/func/inst/n64_sh.S:102
bfc0bb14:	3c0a7e38 	lui	t2,0x7e38
bfc0bb18:	354a6f48 	ori	t2,t2,0x6f48
bfc0bb1c:	3c096dfd 	lui	t1,0x6dfd
bfc0bb20:	3529dc50 	ori	t1,t1,0xdc50
bfc0bb24:	3c08800d 	lui	t0,0x800d
bfc0bb28:	3c03dc50 	lui	v1,0xdc50
bfc0bb2c:	34636f48 	ori	v1,v1,0x6f48
bfc0bb30:	ad0a0000 	sw	t2,0(t0)
bfc0bb34:	a5090002 	sh	t1,2(t0)
bfc0bb38:	25040004 	addiu	a0,t0,4
bfc0bb3c:	2505fffc 	addiu	a1,t0,-4
bfc0bb40:	ac840000 	sw	a0,0(a0)
bfc0bb44:	aca50000 	sw	a1,0(a1)
bfc0bb48:	8d020000 	lw	v0,0(t0)
bfc0bb4c:	8ca40000 	lw	a0,0(a1)
bfc0bb50:	8c850000 	lw	a1,0(a0)
bfc0bb54:	8ca60000 	lw	a2,0(a1)
bfc0bb58:	144300bf 	bne	v0,v1,bfc0be58 <inst_error>
bfc0bb5c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:103
bfc0bb60:	3c0add5f 	lui	t2,0xdd5f
bfc0bb64:	354acc66 	ori	t2,t2,0xcc66
bfc0bb68:	3c098f70 	lui	t1,0x8f70
bfc0bb6c:	3529aaa6 	ori	t1,t1,0xaaa6
bfc0bb70:	3c08800d 	lui	t0,0x800d
bfc0bb74:	3c03aaa6 	lui	v1,0xaaa6
bfc0bb78:	3463cc66 	ori	v1,v1,0xcc66
bfc0bb7c:	ad0a0000 	sw	t2,0(t0)
bfc0bb80:	a5090002 	sh	t1,2(t0)
bfc0bb84:	25040004 	addiu	a0,t0,4
bfc0bb88:	2505fffc 	addiu	a1,t0,-4
bfc0bb8c:	ac840000 	sw	a0,0(a0)
bfc0bb90:	aca50000 	sw	a1,0(a1)
bfc0bb94:	8d020000 	lw	v0,0(t0)
bfc0bb98:	8ca40000 	lw	a0,0(a1)
bfc0bb9c:	8c850000 	lw	a1,0(a0)
bfc0bba0:	8ca60000 	lw	a2,0(a1)
bfc0bba4:	144300ac 	bne	v0,v1,bfc0be58 <inst_error>
bfc0bba8:	00000000 	nop
/home/csy/func/inst/n64_sh.S:104
bfc0bbac:	3c0af5d0 	lui	t2,0xf5d0
bfc0bbb0:	354acd30 	ori	t2,t2,0xcd30
bfc0bbb4:	3c098fb8 	lui	t1,0x8fb8
bfc0bbb8:	35291998 	ori	t1,t1,0x1998
bfc0bbbc:	3c08800d 	lui	t0,0x800d
bfc0bbc0:	3c031998 	lui	v1,0x1998
bfc0bbc4:	3463cd30 	ori	v1,v1,0xcd30
bfc0bbc8:	ad0a0000 	sw	t2,0(t0)
bfc0bbcc:	a5090002 	sh	t1,2(t0)
bfc0bbd0:	25040004 	addiu	a0,t0,4
bfc0bbd4:	2505fffc 	addiu	a1,t0,-4
bfc0bbd8:	ac840000 	sw	a0,0(a0)
bfc0bbdc:	aca50000 	sw	a1,0(a1)
bfc0bbe0:	8d020000 	lw	v0,0(t0)
bfc0bbe4:	8ca40000 	lw	a0,0(a1)
bfc0bbe8:	8c850000 	lw	a1,0(a0)
bfc0bbec:	8ca60000 	lw	a2,0(a1)
bfc0bbf0:	14430099 	bne	v0,v1,bfc0be58 <inst_error>
bfc0bbf4:	00000000 	nop
/home/csy/func/inst/n64_sh.S:105
bfc0bbf8:	3c0a19d5 	lui	t2,0x19d5
bfc0bbfc:	354ae812 	ori	t2,t2,0xe812
bfc0bc00:	3c0925ed 	lui	t1,0x25ed
bfc0bc04:	35295b7f 	ori	t1,t1,0x5b7f
bfc0bc08:	3c08800d 	lui	t0,0x800d
bfc0bc0c:	3c035b7f 	lui	v1,0x5b7f
bfc0bc10:	3463e812 	ori	v1,v1,0xe812
bfc0bc14:	ad0a0000 	sw	t2,0(t0)
bfc0bc18:	a5090002 	sh	t1,2(t0)
bfc0bc1c:	25040004 	addiu	a0,t0,4
bfc0bc20:	2505fffc 	addiu	a1,t0,-4
bfc0bc24:	ac840000 	sw	a0,0(a0)
bfc0bc28:	aca50000 	sw	a1,0(a1)
bfc0bc2c:	8d020000 	lw	v0,0(t0)
bfc0bc30:	8ca40000 	lw	a0,0(a1)
bfc0bc34:	8c850000 	lw	a1,0(a0)
bfc0bc38:	8ca60000 	lw	a2,0(a1)
bfc0bc3c:	14430086 	bne	v0,v1,bfc0be58 <inst_error>
bfc0bc40:	00000000 	nop
/home/csy/func/inst/n64_sh.S:106
bfc0bc44:	3c0a4b17 	lui	t2,0x4b17
bfc0bc48:	354a9300 	ori	t2,t2,0x9300
bfc0bc4c:	3c09a5a0 	lui	t1,0xa5a0
bfc0bc50:	3529ecb4 	ori	t1,t1,0xecb4
bfc0bc54:	3c08800d 	lui	t0,0x800d
bfc0bc58:	3c034b17 	lui	v1,0x4b17
bfc0bc5c:	3463ecb4 	ori	v1,v1,0xecb4
bfc0bc60:	ad0a0000 	sw	t2,0(t0)
bfc0bc64:	a5090000 	sh	t1,0(t0)
bfc0bc68:	25040004 	addiu	a0,t0,4
bfc0bc6c:	2505fffc 	addiu	a1,t0,-4
bfc0bc70:	ac840000 	sw	a0,0(a0)
bfc0bc74:	aca50000 	sw	a1,0(a1)
bfc0bc78:	8d020000 	lw	v0,0(t0)
bfc0bc7c:	8ca40000 	lw	a0,0(a1)
bfc0bc80:	8c850000 	lw	a1,0(a0)
bfc0bc84:	8ca60000 	lw	a2,0(a1)
bfc0bc88:	14430073 	bne	v0,v1,bfc0be58 <inst_error>
bfc0bc8c:	00000000 	nop
/home/csy/func/inst/n64_sh.S:107
bfc0bc90:	3c0ae00d 	lui	t2,0xe00d
bfc0bc94:	354afa00 	ori	t2,t2,0xfa00
bfc0bc98:	3c0978d7 	lui	t1,0x78d7
bfc0bc9c:	3529370c 	ori	t1,t1,0x370c
bfc0bca0:	3c08800d 	lui	t0,0x800d
bfc0bca4:	3c03370c 	lui	v1,0x370c
bfc0bca8:	3463fa00 	ori	v1,v1,0xfa00
bfc0bcac:	ad0a0000 	sw	t2,0(t0)
bfc0bcb0:	a5090002 	sh	t1,2(t0)
bfc0bcb4:	25040004 	addiu	a0,t0,4
bfc0bcb8:	2505fffc 	addiu	a1,t0,-4
bfc0bcbc:	ac840000 	sw	a0,0(a0)
bfc0bcc0:	aca50000 	sw	a1,0(a1)
bfc0bcc4:	8d020000 	lw	v0,0(t0)
bfc0bcc8:	8ca40000 	lw	a0,0(a1)
bfc0bccc:	8c850000 	lw	a1,0(a0)
bfc0bcd0:	8ca60000 	lw	a2,0(a1)
bfc0bcd4:	14430060 	bne	v0,v1,bfc0be58 <inst_error>
bfc0bcd8:	00000000 	nop
/home/csy/func/inst/n64_sh.S:108
bfc0bcdc:	3c0ab704 	lui	t2,0xb704
bfc0bce0:	354afce8 	ori	t2,t2,0xfce8
bfc0bce4:	3c0952ec 	lui	t1,0x52ec
bfc0bce8:	3529d998 	ori	t1,t1,0xd998
bfc0bcec:	3c08800d 	lui	t0,0x800d
bfc0bcf0:	3c03d998 	lui	v1,0xd998
bfc0bcf4:	3463fce8 	ori	v1,v1,0xfce8
bfc0bcf8:	ad0a0000 	sw	t2,0(t0)
bfc0bcfc:	a5090002 	sh	t1,2(t0)
bfc0bd00:	25040004 	addiu	a0,t0,4
bfc0bd04:	2505fffc 	addiu	a1,t0,-4
bfc0bd08:	ac840000 	sw	a0,0(a0)
bfc0bd0c:	aca50000 	sw	a1,0(a1)
bfc0bd10:	8d020000 	lw	v0,0(t0)
bfc0bd14:	8ca40000 	lw	a0,0(a1)
bfc0bd18:	8c850000 	lw	a1,0(a0)
bfc0bd1c:	8ca60000 	lw	a2,0(a1)
bfc0bd20:	1443004d 	bne	v0,v1,bfc0be58 <inst_error>
bfc0bd24:	00000000 	nop
/home/csy/func/inst/n64_sh.S:109
bfc0bd28:	3c0a0207 	lui	t2,0x207
bfc0bd2c:	354a5c00 	ori	t2,t2,0x5c00
bfc0bd30:	3c093cab 	lui	t1,0x3cab
bfc0bd34:	3529c304 	ori	t1,t1,0xc304
bfc0bd38:	3c08800d 	lui	t0,0x800d
bfc0bd3c:	3c030207 	lui	v1,0x207
bfc0bd40:	3463c304 	ori	v1,v1,0xc304
bfc0bd44:	ad0a0000 	sw	t2,0(t0)
bfc0bd48:	a5090000 	sh	t1,0(t0)
bfc0bd4c:	25040004 	addiu	a0,t0,4
bfc0bd50:	2505fffc 	addiu	a1,t0,-4
bfc0bd54:	ac840000 	sw	a0,0(a0)
bfc0bd58:	aca50000 	sw	a1,0(a1)
bfc0bd5c:	8d020000 	lw	v0,0(t0)
bfc0bd60:	8ca40000 	lw	a0,0(a1)
bfc0bd64:	8c850000 	lw	a1,0(a0)
bfc0bd68:	8ca60000 	lw	a2,0(a1)
bfc0bd6c:	1443003a 	bne	v0,v1,bfc0be58 <inst_error>
bfc0bd70:	00000000 	nop
/home/csy/func/inst/n64_sh.S:110
bfc0bd74:	3c0a896c 	lui	t2,0x896c
bfc0bd78:	354a92c0 	ori	t2,t2,0x92c0
bfc0bd7c:	3c09f81c 	lui	t1,0xf81c
bfc0bd80:	35294fea 	ori	t1,t1,0x4fea
bfc0bd84:	3c08800d 	lui	t0,0x800d
bfc0bd88:	3c03896c 	lui	v1,0x896c
bfc0bd8c:	34634fea 	ori	v1,v1,0x4fea
bfc0bd90:	ad0a0000 	sw	t2,0(t0)
bfc0bd94:	a5090000 	sh	t1,0(t0)
bfc0bd98:	25040004 	addiu	a0,t0,4
bfc0bd9c:	2505fffc 	addiu	a1,t0,-4
bfc0bda0:	ac840000 	sw	a0,0(a0)
bfc0bda4:	aca50000 	sw	a1,0(a1)
bfc0bda8:	8d020000 	lw	v0,0(t0)
bfc0bdac:	8ca40000 	lw	a0,0(a1)
bfc0bdb0:	8c850000 	lw	a1,0(a0)
bfc0bdb4:	8ca60000 	lw	a2,0(a1)
bfc0bdb8:	14430027 	bne	v0,v1,bfc0be58 <inst_error>
bfc0bdbc:	00000000 	nop
/home/csy/func/inst/n64_sh.S:111
bfc0bdc0:	3c0aabc0 	lui	t2,0xabc0
bfc0bdc4:	354a3313 	ori	t2,t2,0x3313
bfc0bdc8:	3c096840 	lui	t1,0x6840
bfc0bdcc:	35293610 	ori	t1,t1,0x3610
bfc0bdd0:	3c08800d 	lui	t0,0x800d
bfc0bdd4:	3c033610 	lui	v1,0x3610
bfc0bdd8:	34633313 	ori	v1,v1,0x3313
bfc0bddc:	ad0a0000 	sw	t2,0(t0)
bfc0bde0:	a5090002 	sh	t1,2(t0)
bfc0bde4:	25040004 	addiu	a0,t0,4
bfc0bde8:	2505fffc 	addiu	a1,t0,-4
bfc0bdec:	ac840000 	sw	a0,0(a0)
bfc0bdf0:	aca50000 	sw	a1,0(a1)
bfc0bdf4:	8d020000 	lw	v0,0(t0)
bfc0bdf8:	8ca40000 	lw	a0,0(a1)
bfc0bdfc:	8c850000 	lw	a1,0(a0)
bfc0be00:	8ca60000 	lw	a2,0(a1)
bfc0be04:	14430014 	bne	v0,v1,bfc0be58 <inst_error>
bfc0be08:	00000000 	nop
/home/csy/func/inst/n64_sh.S:112
bfc0be0c:	240a0000 	li	t2,0
bfc0be10:	24090000 	li	t1,0
bfc0be14:	3c08800d 	lui	t0,0x800d
bfc0be18:	24030000 	li	v1,0
bfc0be1c:	ad0a0000 	sw	t2,0(t0)
bfc0be20:	a5090000 	sh	t1,0(t0)
bfc0be24:	25040004 	addiu	a0,t0,4
bfc0be28:	2505fffc 	addiu	a1,t0,-4
bfc0be2c:	ac840000 	sw	a0,0(a0)
bfc0be30:	aca50000 	sw	a1,0(a1)
bfc0be34:	8d020000 	lw	v0,0(t0)
bfc0be38:	8ca40000 	lw	a0,0(a1)
bfc0be3c:	8c850000 	lw	a1,0(a0)
bfc0be40:	8ca60000 	lw	a2,0(a1)
bfc0be44:	14430004 	bne	v0,v1,bfc0be58 <inst_error>
bfc0be48:	00000000 	nop
/home/csy/func/inst/n64_sh.S:114
bfc0be4c:	16400002 	bnez	s2,bfc0be58 <inst_error>
/home/csy/func/inst/n64_sh.S:115
bfc0be50:	00000000 	nop
/home/csy/func/inst/n64_sh.S:117
bfc0be54:	26730001 	addiu	s3,s3,1

bfc0be58 <inst_error>:
/home/csy/func/inst/n64_sh.S:120
bfc0be58:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n64_sh.S:121
bfc0be5c:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n64_sh.S:122
bfc0be60:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n64_sh.S:123
bfc0be64:	03e00008 	jr	ra
/home/csy/func/inst/n64_sh.S:124
bfc0be68:	00000000 	nop
bfc0be6c:	00000000 	nop

bfc0be70 <n1_lui_test>:
/home/csy/func/inst/n1_lui.S:7
bfc0be70:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n1_lui.S:8
bfc0be74:	24120000 	li	s2,0
/home/csy/func/inst/n1_lui.S:9
bfc0be78:	3c0a0001 	lui	t2,0x1
/home/csy/func/inst/n1_lui.S:11
bfc0be7c:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:12
bfc0be80:	3c040000 	lui	a0,0x0
bfc0be84:	3c080000 	lui	t0,0x0
bfc0be88:	00892021 	addu	a0,a0,t1
bfc0be8c:	012a4821 	addu	t1,t1,t2
bfc0be90:	15040489 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0be94:	00000000 	nop
/home/csy/func/inst/n1_lui.S:13
bfc0be98:	3c040000 	lui	a0,0x0
bfc0be9c:	3c080001 	lui	t0,0x1
bfc0bea0:	00892021 	addu	a0,a0,t1
bfc0bea4:	012a4821 	addu	t1,t1,t2
bfc0bea8:	15040483 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0beac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:14
bfc0beb0:	3c040000 	lui	a0,0x0
bfc0beb4:	3c080002 	lui	t0,0x2
bfc0beb8:	00892021 	addu	a0,a0,t1
bfc0bebc:	012a4821 	addu	t1,t1,t2
bfc0bec0:	1504047d 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bec4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:15
bfc0bec8:	3c040000 	lui	a0,0x0
bfc0becc:	3c080003 	lui	t0,0x3
bfc0bed0:	00892021 	addu	a0,a0,t1
bfc0bed4:	012a4821 	addu	t1,t1,t2
bfc0bed8:	15040477 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bedc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:16
bfc0bee0:	3c040000 	lui	a0,0x0
bfc0bee4:	3c080004 	lui	t0,0x4
bfc0bee8:	00892021 	addu	a0,a0,t1
bfc0beec:	012a4821 	addu	t1,t1,t2
bfc0bef0:	15040471 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bef4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:17
bfc0bef8:	3c040000 	lui	a0,0x0
bfc0befc:	3c080005 	lui	t0,0x5
bfc0bf00:	00892021 	addu	a0,a0,t1
bfc0bf04:	012a4821 	addu	t1,t1,t2
bfc0bf08:	1504046b 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bf0c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:18
bfc0bf10:	3c040000 	lui	a0,0x0
bfc0bf14:	3c080006 	lui	t0,0x6
bfc0bf18:	00892021 	addu	a0,a0,t1
bfc0bf1c:	012a4821 	addu	t1,t1,t2
bfc0bf20:	15040465 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bf24:	00000000 	nop
/home/csy/func/inst/n1_lui.S:19
bfc0bf28:	3c040000 	lui	a0,0x0
bfc0bf2c:	3c080007 	lui	t0,0x7
bfc0bf30:	00892021 	addu	a0,a0,t1
bfc0bf34:	012a4821 	addu	t1,t1,t2
bfc0bf38:	1504045f 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bf3c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:20
bfc0bf40:	3c040000 	lui	a0,0x0
bfc0bf44:	3c080008 	lui	t0,0x8
bfc0bf48:	00892021 	addu	a0,a0,t1
bfc0bf4c:	012a4821 	addu	t1,t1,t2
bfc0bf50:	15040459 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bf54:	00000000 	nop
/home/csy/func/inst/n1_lui.S:21
bfc0bf58:	3c040000 	lui	a0,0x0
bfc0bf5c:	3c080009 	lui	t0,0x9
bfc0bf60:	00892021 	addu	a0,a0,t1
bfc0bf64:	012a4821 	addu	t1,t1,t2
bfc0bf68:	15040453 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bf6c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:22
bfc0bf70:	3c040000 	lui	a0,0x0
bfc0bf74:	3c08000a 	lui	t0,0xa
bfc0bf78:	00892021 	addu	a0,a0,t1
bfc0bf7c:	012a4821 	addu	t1,t1,t2
bfc0bf80:	1504044d 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bf84:	00000000 	nop
/home/csy/func/inst/n1_lui.S:23
bfc0bf88:	3c040000 	lui	a0,0x0
bfc0bf8c:	3c08000b 	lui	t0,0xb
bfc0bf90:	00892021 	addu	a0,a0,t1
bfc0bf94:	012a4821 	addu	t1,t1,t2
bfc0bf98:	15040447 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bf9c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:24
bfc0bfa0:	3c040000 	lui	a0,0x0
bfc0bfa4:	3c08000c 	lui	t0,0xc
bfc0bfa8:	00892021 	addu	a0,a0,t1
bfc0bfac:	012a4821 	addu	t1,t1,t2
bfc0bfb0:	15040441 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bfb4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:25
bfc0bfb8:	3c040000 	lui	a0,0x0
bfc0bfbc:	3c08000d 	lui	t0,0xd
bfc0bfc0:	00892021 	addu	a0,a0,t1
bfc0bfc4:	012a4821 	addu	t1,t1,t2
bfc0bfc8:	1504043b 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bfcc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:26
bfc0bfd0:	3c040000 	lui	a0,0x0
bfc0bfd4:	3c08000e 	lui	t0,0xe
bfc0bfd8:	00892021 	addu	a0,a0,t1
bfc0bfdc:	012a4821 	addu	t1,t1,t2
bfc0bfe0:	15040435 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bfe4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:27
bfc0bfe8:	3c040000 	lui	a0,0x0
bfc0bfec:	3c08000f 	lui	t0,0xf
bfc0bff0:	00892021 	addu	a0,a0,t1
bfc0bff4:	012a4821 	addu	t1,t1,t2
bfc0bff8:	1504042f 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0bffc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:28
bfc0c000:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:29
bfc0c004:	3c041010 	lui	a0,0x1010
bfc0c008:	3c081010 	lui	t0,0x1010
bfc0c00c:	00892021 	addu	a0,a0,t1
bfc0c010:	012a4821 	addu	t1,t1,t2
bfc0c014:	15040428 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c018:	00000000 	nop
/home/csy/func/inst/n1_lui.S:30
bfc0c01c:	3c041010 	lui	a0,0x1010
bfc0c020:	3c081011 	lui	t0,0x1011
bfc0c024:	00892021 	addu	a0,a0,t1
bfc0c028:	012a4821 	addu	t1,t1,t2
bfc0c02c:	15040422 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c030:	00000000 	nop
/home/csy/func/inst/n1_lui.S:31
bfc0c034:	3c041010 	lui	a0,0x1010
bfc0c038:	3c081012 	lui	t0,0x1012
bfc0c03c:	00892021 	addu	a0,a0,t1
bfc0c040:	012a4821 	addu	t1,t1,t2
bfc0c044:	1504041c 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c048:	00000000 	nop
/home/csy/func/inst/n1_lui.S:32
bfc0c04c:	3c041010 	lui	a0,0x1010
bfc0c050:	3c081013 	lui	t0,0x1013
bfc0c054:	00892021 	addu	a0,a0,t1
bfc0c058:	012a4821 	addu	t1,t1,t2
bfc0c05c:	15040416 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c060:	00000000 	nop
/home/csy/func/inst/n1_lui.S:33
bfc0c064:	3c041010 	lui	a0,0x1010
bfc0c068:	3c081014 	lui	t0,0x1014
bfc0c06c:	00892021 	addu	a0,a0,t1
bfc0c070:	012a4821 	addu	t1,t1,t2
bfc0c074:	15040410 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c078:	00000000 	nop
/home/csy/func/inst/n1_lui.S:34
bfc0c07c:	3c041010 	lui	a0,0x1010
bfc0c080:	3c081015 	lui	t0,0x1015
bfc0c084:	00892021 	addu	a0,a0,t1
bfc0c088:	012a4821 	addu	t1,t1,t2
bfc0c08c:	1504040a 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c090:	00000000 	nop
/home/csy/func/inst/n1_lui.S:35
bfc0c094:	3c041010 	lui	a0,0x1010
bfc0c098:	3c081016 	lui	t0,0x1016
bfc0c09c:	00892021 	addu	a0,a0,t1
bfc0c0a0:	012a4821 	addu	t1,t1,t2
bfc0c0a4:	15040404 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c0a8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:36
bfc0c0ac:	3c041010 	lui	a0,0x1010
bfc0c0b0:	3c081017 	lui	t0,0x1017
bfc0c0b4:	00892021 	addu	a0,a0,t1
bfc0c0b8:	012a4821 	addu	t1,t1,t2
bfc0c0bc:	150403fe 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c0c0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:37
bfc0c0c4:	3c041010 	lui	a0,0x1010
bfc0c0c8:	3c081018 	lui	t0,0x1018
bfc0c0cc:	00892021 	addu	a0,a0,t1
bfc0c0d0:	012a4821 	addu	t1,t1,t2
bfc0c0d4:	150403f8 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c0d8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:38
bfc0c0dc:	3c041010 	lui	a0,0x1010
bfc0c0e0:	3c081019 	lui	t0,0x1019
bfc0c0e4:	00892021 	addu	a0,a0,t1
bfc0c0e8:	012a4821 	addu	t1,t1,t2
bfc0c0ec:	150403f2 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c0f0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:39
bfc0c0f4:	3c041010 	lui	a0,0x1010
bfc0c0f8:	3c08101a 	lui	t0,0x101a
bfc0c0fc:	00892021 	addu	a0,a0,t1
bfc0c100:	012a4821 	addu	t1,t1,t2
bfc0c104:	150403ec 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c108:	00000000 	nop
/home/csy/func/inst/n1_lui.S:40
bfc0c10c:	3c041010 	lui	a0,0x1010
bfc0c110:	3c08101b 	lui	t0,0x101b
bfc0c114:	00892021 	addu	a0,a0,t1
bfc0c118:	012a4821 	addu	t1,t1,t2
bfc0c11c:	150403e6 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c120:	00000000 	nop
/home/csy/func/inst/n1_lui.S:41
bfc0c124:	3c041010 	lui	a0,0x1010
bfc0c128:	3c08101c 	lui	t0,0x101c
bfc0c12c:	00892021 	addu	a0,a0,t1
bfc0c130:	012a4821 	addu	t1,t1,t2
bfc0c134:	150403e0 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c138:	00000000 	nop
/home/csy/func/inst/n1_lui.S:42
bfc0c13c:	3c041010 	lui	a0,0x1010
bfc0c140:	3c08101d 	lui	t0,0x101d
bfc0c144:	00892021 	addu	a0,a0,t1
bfc0c148:	012a4821 	addu	t1,t1,t2
bfc0c14c:	150403da 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c150:	00000000 	nop
/home/csy/func/inst/n1_lui.S:43
bfc0c154:	3c041010 	lui	a0,0x1010
bfc0c158:	3c08101e 	lui	t0,0x101e
bfc0c15c:	00892021 	addu	a0,a0,t1
bfc0c160:	012a4821 	addu	t1,t1,t2
bfc0c164:	150403d4 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c168:	00000000 	nop
/home/csy/func/inst/n1_lui.S:44
bfc0c16c:	3c041010 	lui	a0,0x1010
bfc0c170:	3c08101f 	lui	t0,0x101f
bfc0c174:	00892021 	addu	a0,a0,t1
bfc0c178:	012a4821 	addu	t1,t1,t2
bfc0c17c:	150403ce 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c180:	00000000 	nop
/home/csy/func/inst/n1_lui.S:45
bfc0c184:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:46
bfc0c188:	3c042020 	lui	a0,0x2020
bfc0c18c:	3c082020 	lui	t0,0x2020
bfc0c190:	00892021 	addu	a0,a0,t1
bfc0c194:	012a4821 	addu	t1,t1,t2
bfc0c198:	150403c7 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c19c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:47
bfc0c1a0:	3c042020 	lui	a0,0x2020
bfc0c1a4:	3c082021 	lui	t0,0x2021
bfc0c1a8:	00892021 	addu	a0,a0,t1
bfc0c1ac:	012a4821 	addu	t1,t1,t2
bfc0c1b0:	150403c1 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c1b4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:48
bfc0c1b8:	3c042020 	lui	a0,0x2020
bfc0c1bc:	3c082022 	lui	t0,0x2022
bfc0c1c0:	00892021 	addu	a0,a0,t1
bfc0c1c4:	012a4821 	addu	t1,t1,t2
bfc0c1c8:	150403bb 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c1cc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:49
bfc0c1d0:	3c042020 	lui	a0,0x2020
bfc0c1d4:	3c082023 	lui	t0,0x2023
bfc0c1d8:	00892021 	addu	a0,a0,t1
bfc0c1dc:	012a4821 	addu	t1,t1,t2
bfc0c1e0:	150403b5 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c1e4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:50
bfc0c1e8:	3c042020 	lui	a0,0x2020
bfc0c1ec:	3c082024 	lui	t0,0x2024
bfc0c1f0:	00892021 	addu	a0,a0,t1
bfc0c1f4:	012a4821 	addu	t1,t1,t2
bfc0c1f8:	150403af 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c1fc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:51
bfc0c200:	3c042020 	lui	a0,0x2020
bfc0c204:	3c082025 	lui	t0,0x2025
bfc0c208:	00892021 	addu	a0,a0,t1
bfc0c20c:	012a4821 	addu	t1,t1,t2
bfc0c210:	150403a9 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c214:	00000000 	nop
/home/csy/func/inst/n1_lui.S:52
bfc0c218:	3c042020 	lui	a0,0x2020
bfc0c21c:	3c082026 	lui	t0,0x2026
bfc0c220:	00892021 	addu	a0,a0,t1
bfc0c224:	012a4821 	addu	t1,t1,t2
bfc0c228:	150403a3 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c22c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:53
bfc0c230:	3c042020 	lui	a0,0x2020
bfc0c234:	3c082027 	lui	t0,0x2027
bfc0c238:	00892021 	addu	a0,a0,t1
bfc0c23c:	012a4821 	addu	t1,t1,t2
bfc0c240:	1504039d 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c244:	00000000 	nop
/home/csy/func/inst/n1_lui.S:54
bfc0c248:	3c042020 	lui	a0,0x2020
bfc0c24c:	3c082028 	lui	t0,0x2028
bfc0c250:	00892021 	addu	a0,a0,t1
bfc0c254:	012a4821 	addu	t1,t1,t2
bfc0c258:	15040397 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c25c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:55
bfc0c260:	3c042020 	lui	a0,0x2020
bfc0c264:	3c082029 	lui	t0,0x2029
bfc0c268:	00892021 	addu	a0,a0,t1
bfc0c26c:	012a4821 	addu	t1,t1,t2
bfc0c270:	15040391 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c274:	00000000 	nop
/home/csy/func/inst/n1_lui.S:56
bfc0c278:	3c042020 	lui	a0,0x2020
bfc0c27c:	3c08202a 	lui	t0,0x202a
bfc0c280:	00892021 	addu	a0,a0,t1
bfc0c284:	012a4821 	addu	t1,t1,t2
bfc0c288:	1504038b 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c28c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:57
bfc0c290:	3c042020 	lui	a0,0x2020
bfc0c294:	3c08202b 	lui	t0,0x202b
bfc0c298:	00892021 	addu	a0,a0,t1
bfc0c29c:	012a4821 	addu	t1,t1,t2
bfc0c2a0:	15040385 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c2a4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:58
bfc0c2a8:	3c042020 	lui	a0,0x2020
bfc0c2ac:	3c08202c 	lui	t0,0x202c
bfc0c2b0:	00892021 	addu	a0,a0,t1
bfc0c2b4:	012a4821 	addu	t1,t1,t2
bfc0c2b8:	1504037f 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c2bc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:59
bfc0c2c0:	3c042020 	lui	a0,0x2020
bfc0c2c4:	3c08202d 	lui	t0,0x202d
bfc0c2c8:	00892021 	addu	a0,a0,t1
bfc0c2cc:	012a4821 	addu	t1,t1,t2
bfc0c2d0:	15040379 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c2d4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:60
bfc0c2d8:	3c042020 	lui	a0,0x2020
bfc0c2dc:	3c08202e 	lui	t0,0x202e
bfc0c2e0:	00892021 	addu	a0,a0,t1
bfc0c2e4:	012a4821 	addu	t1,t1,t2
bfc0c2e8:	15040373 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c2ec:	00000000 	nop
/home/csy/func/inst/n1_lui.S:61
bfc0c2f0:	3c042020 	lui	a0,0x2020
bfc0c2f4:	3c08202f 	lui	t0,0x202f
bfc0c2f8:	00892021 	addu	a0,a0,t1
bfc0c2fc:	012a4821 	addu	t1,t1,t2
bfc0c300:	1504036d 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c304:	00000000 	nop
/home/csy/func/inst/n1_lui.S:62
bfc0c308:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:63
bfc0c30c:	3c043030 	lui	a0,0x3030
bfc0c310:	3c083030 	lui	t0,0x3030
bfc0c314:	00892021 	addu	a0,a0,t1
bfc0c318:	012a4821 	addu	t1,t1,t2
bfc0c31c:	15040366 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c320:	00000000 	nop
/home/csy/func/inst/n1_lui.S:64
bfc0c324:	3c043030 	lui	a0,0x3030
bfc0c328:	3c083031 	lui	t0,0x3031
bfc0c32c:	00892021 	addu	a0,a0,t1
bfc0c330:	012a4821 	addu	t1,t1,t2
bfc0c334:	15040360 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c338:	00000000 	nop
/home/csy/func/inst/n1_lui.S:65
bfc0c33c:	3c043030 	lui	a0,0x3030
bfc0c340:	3c083032 	lui	t0,0x3032
bfc0c344:	00892021 	addu	a0,a0,t1
bfc0c348:	012a4821 	addu	t1,t1,t2
bfc0c34c:	1504035a 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c350:	00000000 	nop
/home/csy/func/inst/n1_lui.S:66
bfc0c354:	3c043030 	lui	a0,0x3030
bfc0c358:	3c083033 	lui	t0,0x3033
bfc0c35c:	00892021 	addu	a0,a0,t1
bfc0c360:	012a4821 	addu	t1,t1,t2
bfc0c364:	15040354 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c368:	00000000 	nop
/home/csy/func/inst/n1_lui.S:67
bfc0c36c:	3c043030 	lui	a0,0x3030
bfc0c370:	3c083034 	lui	t0,0x3034
bfc0c374:	00892021 	addu	a0,a0,t1
bfc0c378:	012a4821 	addu	t1,t1,t2
bfc0c37c:	1504034e 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c380:	00000000 	nop
/home/csy/func/inst/n1_lui.S:68
bfc0c384:	3c043030 	lui	a0,0x3030
bfc0c388:	3c083035 	lui	t0,0x3035
bfc0c38c:	00892021 	addu	a0,a0,t1
bfc0c390:	012a4821 	addu	t1,t1,t2
bfc0c394:	15040348 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c398:	00000000 	nop
/home/csy/func/inst/n1_lui.S:69
bfc0c39c:	3c043030 	lui	a0,0x3030
bfc0c3a0:	3c083036 	lui	t0,0x3036
bfc0c3a4:	00892021 	addu	a0,a0,t1
bfc0c3a8:	012a4821 	addu	t1,t1,t2
bfc0c3ac:	15040342 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c3b0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:70
bfc0c3b4:	3c043030 	lui	a0,0x3030
bfc0c3b8:	3c083037 	lui	t0,0x3037
bfc0c3bc:	00892021 	addu	a0,a0,t1
bfc0c3c0:	012a4821 	addu	t1,t1,t2
bfc0c3c4:	1504033c 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c3c8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:71
bfc0c3cc:	3c043030 	lui	a0,0x3030
bfc0c3d0:	3c083038 	lui	t0,0x3038
bfc0c3d4:	00892021 	addu	a0,a0,t1
bfc0c3d8:	012a4821 	addu	t1,t1,t2
bfc0c3dc:	15040336 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c3e0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:72
bfc0c3e4:	3c043030 	lui	a0,0x3030
bfc0c3e8:	3c083039 	lui	t0,0x3039
bfc0c3ec:	00892021 	addu	a0,a0,t1
bfc0c3f0:	012a4821 	addu	t1,t1,t2
bfc0c3f4:	15040330 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c3f8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:73
bfc0c3fc:	3c043030 	lui	a0,0x3030
bfc0c400:	3c08303a 	lui	t0,0x303a
bfc0c404:	00892021 	addu	a0,a0,t1
bfc0c408:	012a4821 	addu	t1,t1,t2
bfc0c40c:	1504032a 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c410:	00000000 	nop
/home/csy/func/inst/n1_lui.S:74
bfc0c414:	3c043030 	lui	a0,0x3030
bfc0c418:	3c08303b 	lui	t0,0x303b
bfc0c41c:	00892021 	addu	a0,a0,t1
bfc0c420:	012a4821 	addu	t1,t1,t2
bfc0c424:	15040324 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c428:	00000000 	nop
/home/csy/func/inst/n1_lui.S:75
bfc0c42c:	3c043030 	lui	a0,0x3030
bfc0c430:	3c08303c 	lui	t0,0x303c
bfc0c434:	00892021 	addu	a0,a0,t1
bfc0c438:	012a4821 	addu	t1,t1,t2
bfc0c43c:	1504031e 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c440:	00000000 	nop
/home/csy/func/inst/n1_lui.S:76
bfc0c444:	3c043030 	lui	a0,0x3030
bfc0c448:	3c08303d 	lui	t0,0x303d
bfc0c44c:	00892021 	addu	a0,a0,t1
bfc0c450:	012a4821 	addu	t1,t1,t2
bfc0c454:	15040318 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c458:	00000000 	nop
/home/csy/func/inst/n1_lui.S:77
bfc0c45c:	3c043030 	lui	a0,0x3030
bfc0c460:	3c08303e 	lui	t0,0x303e
bfc0c464:	00892021 	addu	a0,a0,t1
bfc0c468:	012a4821 	addu	t1,t1,t2
bfc0c46c:	15040312 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c470:	00000000 	nop
/home/csy/func/inst/n1_lui.S:78
bfc0c474:	3c043030 	lui	a0,0x3030
bfc0c478:	3c08303f 	lui	t0,0x303f
bfc0c47c:	00892021 	addu	a0,a0,t1
bfc0c480:	012a4821 	addu	t1,t1,t2
bfc0c484:	1504030c 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c488:	00000000 	nop
/home/csy/func/inst/n1_lui.S:79
bfc0c48c:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:80
bfc0c490:	3c044040 	lui	a0,0x4040
bfc0c494:	3c084040 	lui	t0,0x4040
bfc0c498:	00892021 	addu	a0,a0,t1
bfc0c49c:	012a4821 	addu	t1,t1,t2
bfc0c4a0:	15040305 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c4a4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:81
bfc0c4a8:	3c044040 	lui	a0,0x4040
bfc0c4ac:	3c084041 	lui	t0,0x4041
bfc0c4b0:	00892021 	addu	a0,a0,t1
bfc0c4b4:	012a4821 	addu	t1,t1,t2
bfc0c4b8:	150402ff 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c4bc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:82
bfc0c4c0:	3c044040 	lui	a0,0x4040
bfc0c4c4:	3c084042 	lui	t0,0x4042
bfc0c4c8:	00892021 	addu	a0,a0,t1
bfc0c4cc:	012a4821 	addu	t1,t1,t2
bfc0c4d0:	150402f9 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c4d4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:83
bfc0c4d8:	3c044040 	lui	a0,0x4040
bfc0c4dc:	3c084043 	lui	t0,0x4043
bfc0c4e0:	00892021 	addu	a0,a0,t1
bfc0c4e4:	012a4821 	addu	t1,t1,t2
bfc0c4e8:	150402f3 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c4ec:	00000000 	nop
/home/csy/func/inst/n1_lui.S:84
bfc0c4f0:	3c044040 	lui	a0,0x4040
bfc0c4f4:	3c084044 	lui	t0,0x4044
bfc0c4f8:	00892021 	addu	a0,a0,t1
bfc0c4fc:	012a4821 	addu	t1,t1,t2
bfc0c500:	150402ed 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c504:	00000000 	nop
/home/csy/func/inst/n1_lui.S:85
bfc0c508:	3c044040 	lui	a0,0x4040
bfc0c50c:	3c084045 	lui	t0,0x4045
bfc0c510:	00892021 	addu	a0,a0,t1
bfc0c514:	012a4821 	addu	t1,t1,t2
bfc0c518:	150402e7 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c51c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:86
bfc0c520:	3c044040 	lui	a0,0x4040
bfc0c524:	3c084046 	lui	t0,0x4046
bfc0c528:	00892021 	addu	a0,a0,t1
bfc0c52c:	012a4821 	addu	t1,t1,t2
bfc0c530:	150402e1 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c534:	00000000 	nop
/home/csy/func/inst/n1_lui.S:87
bfc0c538:	3c044040 	lui	a0,0x4040
bfc0c53c:	3c084047 	lui	t0,0x4047
bfc0c540:	00892021 	addu	a0,a0,t1
bfc0c544:	012a4821 	addu	t1,t1,t2
bfc0c548:	150402db 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c54c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:88
bfc0c550:	3c044040 	lui	a0,0x4040
bfc0c554:	3c084048 	lui	t0,0x4048
bfc0c558:	00892021 	addu	a0,a0,t1
bfc0c55c:	012a4821 	addu	t1,t1,t2
bfc0c560:	150402d5 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c564:	00000000 	nop
/home/csy/func/inst/n1_lui.S:89
bfc0c568:	3c044040 	lui	a0,0x4040
bfc0c56c:	3c084049 	lui	t0,0x4049
bfc0c570:	00892021 	addu	a0,a0,t1
bfc0c574:	012a4821 	addu	t1,t1,t2
bfc0c578:	150402cf 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c57c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:90
bfc0c580:	3c044040 	lui	a0,0x4040
bfc0c584:	3c08404a 	lui	t0,0x404a
bfc0c588:	00892021 	addu	a0,a0,t1
bfc0c58c:	012a4821 	addu	t1,t1,t2
bfc0c590:	150402c9 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c594:	00000000 	nop
/home/csy/func/inst/n1_lui.S:91
bfc0c598:	3c044040 	lui	a0,0x4040
bfc0c59c:	3c08404b 	lui	t0,0x404b
bfc0c5a0:	00892021 	addu	a0,a0,t1
bfc0c5a4:	012a4821 	addu	t1,t1,t2
bfc0c5a8:	150402c3 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c5ac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:92
bfc0c5b0:	3c044040 	lui	a0,0x4040
bfc0c5b4:	3c08404c 	lui	t0,0x404c
bfc0c5b8:	00892021 	addu	a0,a0,t1
bfc0c5bc:	012a4821 	addu	t1,t1,t2
bfc0c5c0:	150402bd 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c5c4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:93
bfc0c5c8:	3c044040 	lui	a0,0x4040
bfc0c5cc:	3c08404d 	lui	t0,0x404d
bfc0c5d0:	00892021 	addu	a0,a0,t1
bfc0c5d4:	012a4821 	addu	t1,t1,t2
bfc0c5d8:	150402b7 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c5dc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:94
bfc0c5e0:	3c044040 	lui	a0,0x4040
bfc0c5e4:	3c08404e 	lui	t0,0x404e
bfc0c5e8:	00892021 	addu	a0,a0,t1
bfc0c5ec:	012a4821 	addu	t1,t1,t2
bfc0c5f0:	150402b1 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c5f4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:95
bfc0c5f8:	3c044040 	lui	a0,0x4040
bfc0c5fc:	3c08404f 	lui	t0,0x404f
bfc0c600:	00892021 	addu	a0,a0,t1
bfc0c604:	012a4821 	addu	t1,t1,t2
bfc0c608:	150402ab 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c60c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:96
bfc0c610:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:97
bfc0c614:	3c045040 	lui	a0,0x5040
bfc0c618:	3c085040 	lui	t0,0x5040
bfc0c61c:	00892021 	addu	a0,a0,t1
bfc0c620:	012a4821 	addu	t1,t1,t2
bfc0c624:	150402a4 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c628:	00000000 	nop
/home/csy/func/inst/n1_lui.S:98
bfc0c62c:	3c045040 	lui	a0,0x5040
bfc0c630:	3c085041 	lui	t0,0x5041
bfc0c634:	00892021 	addu	a0,a0,t1
bfc0c638:	012a4821 	addu	t1,t1,t2
bfc0c63c:	1504029e 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c640:	00000000 	nop
/home/csy/func/inst/n1_lui.S:99
bfc0c644:	3c045040 	lui	a0,0x5040
bfc0c648:	3c085042 	lui	t0,0x5042
bfc0c64c:	00892021 	addu	a0,a0,t1
bfc0c650:	012a4821 	addu	t1,t1,t2
bfc0c654:	15040298 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c658:	00000000 	nop
/home/csy/func/inst/n1_lui.S:100
bfc0c65c:	3c045040 	lui	a0,0x5040
bfc0c660:	3c085043 	lui	t0,0x5043
bfc0c664:	00892021 	addu	a0,a0,t1
bfc0c668:	012a4821 	addu	t1,t1,t2
bfc0c66c:	15040292 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c670:	00000000 	nop
/home/csy/func/inst/n1_lui.S:101
bfc0c674:	3c045040 	lui	a0,0x5040
bfc0c678:	3c085044 	lui	t0,0x5044
bfc0c67c:	00892021 	addu	a0,a0,t1
bfc0c680:	012a4821 	addu	t1,t1,t2
bfc0c684:	1504028c 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c688:	00000000 	nop
/home/csy/func/inst/n1_lui.S:102
bfc0c68c:	3c045040 	lui	a0,0x5040
bfc0c690:	3c085045 	lui	t0,0x5045
bfc0c694:	00892021 	addu	a0,a0,t1
bfc0c698:	012a4821 	addu	t1,t1,t2
bfc0c69c:	15040286 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c6a0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:103
bfc0c6a4:	3c045040 	lui	a0,0x5040
bfc0c6a8:	3c085046 	lui	t0,0x5046
bfc0c6ac:	00892021 	addu	a0,a0,t1
bfc0c6b0:	012a4821 	addu	t1,t1,t2
bfc0c6b4:	15040280 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c6b8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:104
bfc0c6bc:	3c045040 	lui	a0,0x5040
bfc0c6c0:	3c085047 	lui	t0,0x5047
bfc0c6c4:	00892021 	addu	a0,a0,t1
bfc0c6c8:	012a4821 	addu	t1,t1,t2
bfc0c6cc:	1504027a 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c6d0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:105
bfc0c6d4:	3c045040 	lui	a0,0x5040
bfc0c6d8:	3c085048 	lui	t0,0x5048
bfc0c6dc:	00892021 	addu	a0,a0,t1
bfc0c6e0:	012a4821 	addu	t1,t1,t2
bfc0c6e4:	15040274 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c6e8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:106
bfc0c6ec:	3c045040 	lui	a0,0x5040
bfc0c6f0:	3c085049 	lui	t0,0x5049
bfc0c6f4:	00892021 	addu	a0,a0,t1
bfc0c6f8:	012a4821 	addu	t1,t1,t2
bfc0c6fc:	1504026e 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c700:	00000000 	nop
/home/csy/func/inst/n1_lui.S:107
bfc0c704:	3c045040 	lui	a0,0x5040
bfc0c708:	3c08504a 	lui	t0,0x504a
bfc0c70c:	00892021 	addu	a0,a0,t1
bfc0c710:	012a4821 	addu	t1,t1,t2
bfc0c714:	15040268 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c718:	00000000 	nop
/home/csy/func/inst/n1_lui.S:108
bfc0c71c:	3c045040 	lui	a0,0x5040
bfc0c720:	3c08504b 	lui	t0,0x504b
bfc0c724:	00892021 	addu	a0,a0,t1
bfc0c728:	012a4821 	addu	t1,t1,t2
bfc0c72c:	15040262 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c730:	00000000 	nop
/home/csy/func/inst/n1_lui.S:109
bfc0c734:	3c045040 	lui	a0,0x5040
bfc0c738:	3c08504c 	lui	t0,0x504c
bfc0c73c:	00892021 	addu	a0,a0,t1
bfc0c740:	012a4821 	addu	t1,t1,t2
bfc0c744:	1504025c 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c748:	00000000 	nop
/home/csy/func/inst/n1_lui.S:110
bfc0c74c:	3c045040 	lui	a0,0x5040
bfc0c750:	3c08504d 	lui	t0,0x504d
bfc0c754:	00892021 	addu	a0,a0,t1
bfc0c758:	012a4821 	addu	t1,t1,t2
bfc0c75c:	15040256 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c760:	00000000 	nop
/home/csy/func/inst/n1_lui.S:111
bfc0c764:	3c045040 	lui	a0,0x5040
bfc0c768:	3c08504e 	lui	t0,0x504e
bfc0c76c:	00892021 	addu	a0,a0,t1
bfc0c770:	012a4821 	addu	t1,t1,t2
bfc0c774:	15040250 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c778:	00000000 	nop
/home/csy/func/inst/n1_lui.S:112
bfc0c77c:	3c045040 	lui	a0,0x5040
bfc0c780:	3c08504f 	lui	t0,0x504f
bfc0c784:	00892021 	addu	a0,a0,t1
bfc0c788:	012a4821 	addu	t1,t1,t2
bfc0c78c:	1504024a 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c790:	00000000 	nop
/home/csy/func/inst/n1_lui.S:113
bfc0c794:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:114
bfc0c798:	3c046050 	lui	a0,0x6050
bfc0c79c:	3c086050 	lui	t0,0x6050
bfc0c7a0:	00892021 	addu	a0,a0,t1
bfc0c7a4:	012a4821 	addu	t1,t1,t2
bfc0c7a8:	15040243 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c7ac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:115
bfc0c7b0:	3c046050 	lui	a0,0x6050
bfc0c7b4:	3c086051 	lui	t0,0x6051
bfc0c7b8:	00892021 	addu	a0,a0,t1
bfc0c7bc:	012a4821 	addu	t1,t1,t2
bfc0c7c0:	1504023d 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c7c4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:116
bfc0c7c8:	3c046050 	lui	a0,0x6050
bfc0c7cc:	3c086052 	lui	t0,0x6052
bfc0c7d0:	00892021 	addu	a0,a0,t1
bfc0c7d4:	012a4821 	addu	t1,t1,t2
bfc0c7d8:	15040237 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c7dc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:117
bfc0c7e0:	3c046050 	lui	a0,0x6050
bfc0c7e4:	3c086053 	lui	t0,0x6053
bfc0c7e8:	00892021 	addu	a0,a0,t1
bfc0c7ec:	012a4821 	addu	t1,t1,t2
bfc0c7f0:	15040231 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c7f4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:118
bfc0c7f8:	3c046050 	lui	a0,0x6050
bfc0c7fc:	3c086054 	lui	t0,0x6054
bfc0c800:	00892021 	addu	a0,a0,t1
bfc0c804:	012a4821 	addu	t1,t1,t2
bfc0c808:	1504022b 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c80c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:119
bfc0c810:	3c046050 	lui	a0,0x6050
bfc0c814:	3c086055 	lui	t0,0x6055
bfc0c818:	00892021 	addu	a0,a0,t1
bfc0c81c:	012a4821 	addu	t1,t1,t2
bfc0c820:	15040225 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c824:	00000000 	nop
/home/csy/func/inst/n1_lui.S:120
bfc0c828:	3c046050 	lui	a0,0x6050
bfc0c82c:	3c086056 	lui	t0,0x6056
bfc0c830:	00892021 	addu	a0,a0,t1
bfc0c834:	012a4821 	addu	t1,t1,t2
bfc0c838:	1504021f 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c83c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:121
bfc0c840:	3c046050 	lui	a0,0x6050
bfc0c844:	3c086057 	lui	t0,0x6057
bfc0c848:	00892021 	addu	a0,a0,t1
bfc0c84c:	012a4821 	addu	t1,t1,t2
bfc0c850:	15040219 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c854:	00000000 	nop
/home/csy/func/inst/n1_lui.S:122
bfc0c858:	3c046050 	lui	a0,0x6050
bfc0c85c:	3c086058 	lui	t0,0x6058
bfc0c860:	00892021 	addu	a0,a0,t1
bfc0c864:	012a4821 	addu	t1,t1,t2
bfc0c868:	15040213 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c86c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:123
bfc0c870:	3c046050 	lui	a0,0x6050
bfc0c874:	3c086059 	lui	t0,0x6059
bfc0c878:	00892021 	addu	a0,a0,t1
bfc0c87c:	012a4821 	addu	t1,t1,t2
bfc0c880:	1504020d 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c884:	00000000 	nop
/home/csy/func/inst/n1_lui.S:124
bfc0c888:	3c046050 	lui	a0,0x6050
bfc0c88c:	3c08605a 	lui	t0,0x605a
bfc0c890:	00892021 	addu	a0,a0,t1
bfc0c894:	012a4821 	addu	t1,t1,t2
bfc0c898:	15040207 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c89c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:125
bfc0c8a0:	3c046050 	lui	a0,0x6050
bfc0c8a4:	3c08605b 	lui	t0,0x605b
bfc0c8a8:	00892021 	addu	a0,a0,t1
bfc0c8ac:	012a4821 	addu	t1,t1,t2
bfc0c8b0:	15040201 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c8b4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:126
bfc0c8b8:	3c046050 	lui	a0,0x6050
bfc0c8bc:	3c08605c 	lui	t0,0x605c
bfc0c8c0:	00892021 	addu	a0,a0,t1
bfc0c8c4:	012a4821 	addu	t1,t1,t2
bfc0c8c8:	150401fb 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c8cc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:127
bfc0c8d0:	3c046050 	lui	a0,0x6050
bfc0c8d4:	3c08605d 	lui	t0,0x605d
bfc0c8d8:	00892021 	addu	a0,a0,t1
bfc0c8dc:	012a4821 	addu	t1,t1,t2
bfc0c8e0:	150401f5 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c8e4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:128
bfc0c8e8:	3c046050 	lui	a0,0x6050
bfc0c8ec:	3c08605e 	lui	t0,0x605e
bfc0c8f0:	00892021 	addu	a0,a0,t1
bfc0c8f4:	012a4821 	addu	t1,t1,t2
bfc0c8f8:	150401ef 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c8fc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:129
bfc0c900:	3c046050 	lui	a0,0x6050
bfc0c904:	3c08605f 	lui	t0,0x605f
bfc0c908:	00892021 	addu	a0,a0,t1
bfc0c90c:	012a4821 	addu	t1,t1,t2
bfc0c910:	150401e9 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c914:	00000000 	nop
/home/csy/func/inst/n1_lui.S:130
bfc0c918:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:131
bfc0c91c:	3c048060 	lui	a0,0x8060
bfc0c920:	3c088060 	lui	t0,0x8060
bfc0c924:	00892021 	addu	a0,a0,t1
bfc0c928:	012a4821 	addu	t1,t1,t2
bfc0c92c:	150401e2 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c930:	00000000 	nop
/home/csy/func/inst/n1_lui.S:132
bfc0c934:	3c048060 	lui	a0,0x8060
bfc0c938:	3c088061 	lui	t0,0x8061
bfc0c93c:	00892021 	addu	a0,a0,t1
bfc0c940:	012a4821 	addu	t1,t1,t2
bfc0c944:	150401dc 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c948:	00000000 	nop
/home/csy/func/inst/n1_lui.S:133
bfc0c94c:	3c048060 	lui	a0,0x8060
bfc0c950:	3c088062 	lui	t0,0x8062
bfc0c954:	00892021 	addu	a0,a0,t1
bfc0c958:	012a4821 	addu	t1,t1,t2
bfc0c95c:	150401d6 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c960:	00000000 	nop
/home/csy/func/inst/n1_lui.S:134
bfc0c964:	3c048060 	lui	a0,0x8060
bfc0c968:	3c088063 	lui	t0,0x8063
bfc0c96c:	00892021 	addu	a0,a0,t1
bfc0c970:	012a4821 	addu	t1,t1,t2
bfc0c974:	150401d0 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c978:	00000000 	nop
/home/csy/func/inst/n1_lui.S:135
bfc0c97c:	3c048060 	lui	a0,0x8060
bfc0c980:	3c088064 	lui	t0,0x8064
bfc0c984:	00892021 	addu	a0,a0,t1
bfc0c988:	012a4821 	addu	t1,t1,t2
bfc0c98c:	150401ca 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c990:	00000000 	nop
/home/csy/func/inst/n1_lui.S:136
bfc0c994:	3c048060 	lui	a0,0x8060
bfc0c998:	3c088065 	lui	t0,0x8065
bfc0c99c:	00892021 	addu	a0,a0,t1
bfc0c9a0:	012a4821 	addu	t1,t1,t2
bfc0c9a4:	150401c4 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c9a8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:137
bfc0c9ac:	3c048060 	lui	a0,0x8060
bfc0c9b0:	3c088066 	lui	t0,0x8066
bfc0c9b4:	00892021 	addu	a0,a0,t1
bfc0c9b8:	012a4821 	addu	t1,t1,t2
bfc0c9bc:	150401be 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c9c0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:138
bfc0c9c4:	3c048060 	lui	a0,0x8060
bfc0c9c8:	3c088067 	lui	t0,0x8067
bfc0c9cc:	00892021 	addu	a0,a0,t1
bfc0c9d0:	012a4821 	addu	t1,t1,t2
bfc0c9d4:	150401b8 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c9d8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:139
bfc0c9dc:	3c048060 	lui	a0,0x8060
bfc0c9e0:	3c088068 	lui	t0,0x8068
bfc0c9e4:	00892021 	addu	a0,a0,t1
bfc0c9e8:	012a4821 	addu	t1,t1,t2
bfc0c9ec:	150401b2 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0c9f0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:140
bfc0c9f4:	3c048060 	lui	a0,0x8060
bfc0c9f8:	3c088069 	lui	t0,0x8069
bfc0c9fc:	00892021 	addu	a0,a0,t1
bfc0ca00:	012a4821 	addu	t1,t1,t2
bfc0ca04:	150401ac 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ca08:	00000000 	nop
/home/csy/func/inst/n1_lui.S:141
bfc0ca0c:	3c048060 	lui	a0,0x8060
bfc0ca10:	3c08806a 	lui	t0,0x806a
bfc0ca14:	00892021 	addu	a0,a0,t1
bfc0ca18:	012a4821 	addu	t1,t1,t2
bfc0ca1c:	150401a6 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ca20:	00000000 	nop
/home/csy/func/inst/n1_lui.S:142
bfc0ca24:	3c048060 	lui	a0,0x8060
bfc0ca28:	3c08806b 	lui	t0,0x806b
bfc0ca2c:	00892021 	addu	a0,a0,t1
bfc0ca30:	012a4821 	addu	t1,t1,t2
bfc0ca34:	150401a0 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ca38:	00000000 	nop
/home/csy/func/inst/n1_lui.S:143
bfc0ca3c:	3c048060 	lui	a0,0x8060
bfc0ca40:	3c08806c 	lui	t0,0x806c
bfc0ca44:	00892021 	addu	a0,a0,t1
bfc0ca48:	012a4821 	addu	t1,t1,t2
bfc0ca4c:	1504019a 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ca50:	00000000 	nop
/home/csy/func/inst/n1_lui.S:144
bfc0ca54:	3c048060 	lui	a0,0x8060
bfc0ca58:	3c08806d 	lui	t0,0x806d
bfc0ca5c:	00892021 	addu	a0,a0,t1
bfc0ca60:	012a4821 	addu	t1,t1,t2
bfc0ca64:	15040194 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ca68:	00000000 	nop
/home/csy/func/inst/n1_lui.S:145
bfc0ca6c:	3c048060 	lui	a0,0x8060
bfc0ca70:	3c08806e 	lui	t0,0x806e
bfc0ca74:	00892021 	addu	a0,a0,t1
bfc0ca78:	012a4821 	addu	t1,t1,t2
bfc0ca7c:	1504018e 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ca80:	00000000 	nop
/home/csy/func/inst/n1_lui.S:146
bfc0ca84:	3c048060 	lui	a0,0x8060
bfc0ca88:	3c08806f 	lui	t0,0x806f
bfc0ca8c:	00892021 	addu	a0,a0,t1
bfc0ca90:	012a4821 	addu	t1,t1,t2
bfc0ca94:	15040188 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ca98:	00000000 	nop
/home/csy/func/inst/n1_lui.S:147
bfc0ca9c:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:148
bfc0caa0:	3c04a070 	lui	a0,0xa070
bfc0caa4:	3c08a070 	lui	t0,0xa070
bfc0caa8:	00892021 	addu	a0,a0,t1
bfc0caac:	012a4821 	addu	t1,t1,t2
bfc0cab0:	15040181 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cab4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:149
bfc0cab8:	3c04a070 	lui	a0,0xa070
bfc0cabc:	3c08a071 	lui	t0,0xa071
bfc0cac0:	00892021 	addu	a0,a0,t1
bfc0cac4:	012a4821 	addu	t1,t1,t2
bfc0cac8:	1504017b 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cacc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:150
bfc0cad0:	3c04a070 	lui	a0,0xa070
bfc0cad4:	3c08a072 	lui	t0,0xa072
bfc0cad8:	00892021 	addu	a0,a0,t1
bfc0cadc:	012a4821 	addu	t1,t1,t2
bfc0cae0:	15040175 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cae4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:151
bfc0cae8:	3c04a070 	lui	a0,0xa070
bfc0caec:	3c08a073 	lui	t0,0xa073
bfc0caf0:	00892021 	addu	a0,a0,t1
bfc0caf4:	012a4821 	addu	t1,t1,t2
bfc0caf8:	1504016f 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cafc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:152
bfc0cb00:	3c04a070 	lui	a0,0xa070
bfc0cb04:	3c08a074 	lui	t0,0xa074
bfc0cb08:	00892021 	addu	a0,a0,t1
bfc0cb0c:	012a4821 	addu	t1,t1,t2
bfc0cb10:	15040169 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cb14:	00000000 	nop
/home/csy/func/inst/n1_lui.S:153
bfc0cb18:	3c04a070 	lui	a0,0xa070
bfc0cb1c:	3c08a075 	lui	t0,0xa075
bfc0cb20:	00892021 	addu	a0,a0,t1
bfc0cb24:	012a4821 	addu	t1,t1,t2
bfc0cb28:	15040163 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cb2c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:154
bfc0cb30:	3c04a070 	lui	a0,0xa070
bfc0cb34:	3c08a076 	lui	t0,0xa076
bfc0cb38:	00892021 	addu	a0,a0,t1
bfc0cb3c:	012a4821 	addu	t1,t1,t2
bfc0cb40:	1504015d 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cb44:	00000000 	nop
/home/csy/func/inst/n1_lui.S:155
bfc0cb48:	3c04a070 	lui	a0,0xa070
bfc0cb4c:	3c08a077 	lui	t0,0xa077
bfc0cb50:	00892021 	addu	a0,a0,t1
bfc0cb54:	012a4821 	addu	t1,t1,t2
bfc0cb58:	15040157 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cb5c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:156
bfc0cb60:	3c04a070 	lui	a0,0xa070
bfc0cb64:	3c08a078 	lui	t0,0xa078
bfc0cb68:	00892021 	addu	a0,a0,t1
bfc0cb6c:	012a4821 	addu	t1,t1,t2
bfc0cb70:	15040151 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cb74:	00000000 	nop
/home/csy/func/inst/n1_lui.S:157
bfc0cb78:	3c04a070 	lui	a0,0xa070
bfc0cb7c:	3c08a079 	lui	t0,0xa079
bfc0cb80:	00892021 	addu	a0,a0,t1
bfc0cb84:	012a4821 	addu	t1,t1,t2
bfc0cb88:	1504014b 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cb8c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:158
bfc0cb90:	3c04a070 	lui	a0,0xa070
bfc0cb94:	3c08a07a 	lui	t0,0xa07a
bfc0cb98:	00892021 	addu	a0,a0,t1
bfc0cb9c:	012a4821 	addu	t1,t1,t2
bfc0cba0:	15040145 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cba4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:159
bfc0cba8:	3c04a070 	lui	a0,0xa070
bfc0cbac:	3c08a07b 	lui	t0,0xa07b
bfc0cbb0:	00892021 	addu	a0,a0,t1
bfc0cbb4:	012a4821 	addu	t1,t1,t2
bfc0cbb8:	1504013f 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cbbc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:160
bfc0cbc0:	3c04a070 	lui	a0,0xa070
bfc0cbc4:	3c08a07c 	lui	t0,0xa07c
bfc0cbc8:	00892021 	addu	a0,a0,t1
bfc0cbcc:	012a4821 	addu	t1,t1,t2
bfc0cbd0:	15040139 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cbd4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:161
bfc0cbd8:	3c04a070 	lui	a0,0xa070
bfc0cbdc:	3c08a07d 	lui	t0,0xa07d
bfc0cbe0:	00892021 	addu	a0,a0,t1
bfc0cbe4:	012a4821 	addu	t1,t1,t2
bfc0cbe8:	15040133 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cbec:	00000000 	nop
/home/csy/func/inst/n1_lui.S:162
bfc0cbf0:	3c04a070 	lui	a0,0xa070
bfc0cbf4:	3c08a07e 	lui	t0,0xa07e
bfc0cbf8:	00892021 	addu	a0,a0,t1
bfc0cbfc:	012a4821 	addu	t1,t1,t2
bfc0cc00:	1504012d 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cc04:	00000000 	nop
/home/csy/func/inst/n1_lui.S:163
bfc0cc08:	3c04a070 	lui	a0,0xa070
bfc0cc0c:	3c08a07f 	lui	t0,0xa07f
bfc0cc10:	00892021 	addu	a0,a0,t1
bfc0cc14:	012a4821 	addu	t1,t1,t2
bfc0cc18:	15040127 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cc1c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:164
bfc0cc20:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:165
bfc0cc24:	3c04c080 	lui	a0,0xc080
bfc0cc28:	3c08c080 	lui	t0,0xc080
bfc0cc2c:	00892021 	addu	a0,a0,t1
bfc0cc30:	012a4821 	addu	t1,t1,t2
bfc0cc34:	15040120 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cc38:	00000000 	nop
/home/csy/func/inst/n1_lui.S:166
bfc0cc3c:	3c04c080 	lui	a0,0xc080
bfc0cc40:	3c08c081 	lui	t0,0xc081
bfc0cc44:	00892021 	addu	a0,a0,t1
bfc0cc48:	012a4821 	addu	t1,t1,t2
bfc0cc4c:	1504011a 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cc50:	00000000 	nop
/home/csy/func/inst/n1_lui.S:167
bfc0cc54:	3c04c080 	lui	a0,0xc080
bfc0cc58:	3c08c082 	lui	t0,0xc082
bfc0cc5c:	00892021 	addu	a0,a0,t1
bfc0cc60:	012a4821 	addu	t1,t1,t2
bfc0cc64:	15040114 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cc68:	00000000 	nop
/home/csy/func/inst/n1_lui.S:168
bfc0cc6c:	3c04c080 	lui	a0,0xc080
bfc0cc70:	3c08c083 	lui	t0,0xc083
bfc0cc74:	00892021 	addu	a0,a0,t1
bfc0cc78:	012a4821 	addu	t1,t1,t2
bfc0cc7c:	1504010e 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cc80:	00000000 	nop
/home/csy/func/inst/n1_lui.S:169
bfc0cc84:	3c04c080 	lui	a0,0xc080
bfc0cc88:	3c08c084 	lui	t0,0xc084
bfc0cc8c:	00892021 	addu	a0,a0,t1
bfc0cc90:	012a4821 	addu	t1,t1,t2
bfc0cc94:	15040108 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cc98:	00000000 	nop
/home/csy/func/inst/n1_lui.S:170
bfc0cc9c:	3c04c080 	lui	a0,0xc080
bfc0cca0:	3c08c085 	lui	t0,0xc085
bfc0cca4:	00892021 	addu	a0,a0,t1
bfc0cca8:	012a4821 	addu	t1,t1,t2
bfc0ccac:	15040102 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ccb0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:171
bfc0ccb4:	3c04c080 	lui	a0,0xc080
bfc0ccb8:	3c08c086 	lui	t0,0xc086
bfc0ccbc:	00892021 	addu	a0,a0,t1
bfc0ccc0:	012a4821 	addu	t1,t1,t2
bfc0ccc4:	150400fc 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ccc8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:172
bfc0cccc:	3c04c080 	lui	a0,0xc080
bfc0ccd0:	3c08c087 	lui	t0,0xc087
bfc0ccd4:	00892021 	addu	a0,a0,t1
bfc0ccd8:	012a4821 	addu	t1,t1,t2
bfc0ccdc:	150400f6 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cce0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:173
bfc0cce4:	3c04c080 	lui	a0,0xc080
bfc0cce8:	3c08c088 	lui	t0,0xc088
bfc0ccec:	00892021 	addu	a0,a0,t1
bfc0ccf0:	012a4821 	addu	t1,t1,t2
bfc0ccf4:	150400f0 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ccf8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:174
bfc0ccfc:	3c04c080 	lui	a0,0xc080
bfc0cd00:	3c08c089 	lui	t0,0xc089
bfc0cd04:	00892021 	addu	a0,a0,t1
bfc0cd08:	012a4821 	addu	t1,t1,t2
bfc0cd0c:	150400ea 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cd10:	00000000 	nop
/home/csy/func/inst/n1_lui.S:175
bfc0cd14:	3c04c080 	lui	a0,0xc080
bfc0cd18:	3c08c08a 	lui	t0,0xc08a
bfc0cd1c:	00892021 	addu	a0,a0,t1
bfc0cd20:	012a4821 	addu	t1,t1,t2
bfc0cd24:	150400e4 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cd28:	00000000 	nop
/home/csy/func/inst/n1_lui.S:176
bfc0cd2c:	3c04c080 	lui	a0,0xc080
bfc0cd30:	3c08c08b 	lui	t0,0xc08b
bfc0cd34:	00892021 	addu	a0,a0,t1
bfc0cd38:	012a4821 	addu	t1,t1,t2
bfc0cd3c:	150400de 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cd40:	00000000 	nop
/home/csy/func/inst/n1_lui.S:177
bfc0cd44:	3c04c080 	lui	a0,0xc080
bfc0cd48:	3c08c08c 	lui	t0,0xc08c
bfc0cd4c:	00892021 	addu	a0,a0,t1
bfc0cd50:	012a4821 	addu	t1,t1,t2
bfc0cd54:	150400d8 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cd58:	00000000 	nop
/home/csy/func/inst/n1_lui.S:178
bfc0cd5c:	3c04c080 	lui	a0,0xc080
bfc0cd60:	3c08c08d 	lui	t0,0xc08d
bfc0cd64:	00892021 	addu	a0,a0,t1
bfc0cd68:	012a4821 	addu	t1,t1,t2
bfc0cd6c:	150400d2 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cd70:	00000000 	nop
/home/csy/func/inst/n1_lui.S:179
bfc0cd74:	3c04c080 	lui	a0,0xc080
bfc0cd78:	3c08c08e 	lui	t0,0xc08e
bfc0cd7c:	00892021 	addu	a0,a0,t1
bfc0cd80:	012a4821 	addu	t1,t1,t2
bfc0cd84:	150400cc 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cd88:	00000000 	nop
/home/csy/func/inst/n1_lui.S:180
bfc0cd8c:	3c04c080 	lui	a0,0xc080
bfc0cd90:	3c08c08f 	lui	t0,0xc08f
bfc0cd94:	00892021 	addu	a0,a0,t1
bfc0cd98:	012a4821 	addu	t1,t1,t2
bfc0cd9c:	150400c6 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cda0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:181
bfc0cda4:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:182
bfc0cda8:	3c04e090 	lui	a0,0xe090
bfc0cdac:	3c08e090 	lui	t0,0xe090
bfc0cdb0:	00892021 	addu	a0,a0,t1
bfc0cdb4:	012a4821 	addu	t1,t1,t2
bfc0cdb8:	150400bf 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cdbc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:183
bfc0cdc0:	3c04e090 	lui	a0,0xe090
bfc0cdc4:	3c08e091 	lui	t0,0xe091
bfc0cdc8:	00892021 	addu	a0,a0,t1
bfc0cdcc:	012a4821 	addu	t1,t1,t2
bfc0cdd0:	150400b9 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cdd4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:184
bfc0cdd8:	3c04e090 	lui	a0,0xe090
bfc0cddc:	3c08e092 	lui	t0,0xe092
bfc0cde0:	00892021 	addu	a0,a0,t1
bfc0cde4:	012a4821 	addu	t1,t1,t2
bfc0cde8:	150400b3 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cdec:	00000000 	nop
/home/csy/func/inst/n1_lui.S:185
bfc0cdf0:	3c04e090 	lui	a0,0xe090
bfc0cdf4:	3c08e093 	lui	t0,0xe093
bfc0cdf8:	00892021 	addu	a0,a0,t1
bfc0cdfc:	012a4821 	addu	t1,t1,t2
bfc0ce00:	150400ad 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ce04:	00000000 	nop
/home/csy/func/inst/n1_lui.S:186
bfc0ce08:	3c04e090 	lui	a0,0xe090
bfc0ce0c:	3c08e094 	lui	t0,0xe094
bfc0ce10:	00892021 	addu	a0,a0,t1
bfc0ce14:	012a4821 	addu	t1,t1,t2
bfc0ce18:	150400a7 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ce1c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:187
bfc0ce20:	3c04e090 	lui	a0,0xe090
bfc0ce24:	3c08e095 	lui	t0,0xe095
bfc0ce28:	00892021 	addu	a0,a0,t1
bfc0ce2c:	012a4821 	addu	t1,t1,t2
bfc0ce30:	150400a1 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ce34:	00000000 	nop
/home/csy/func/inst/n1_lui.S:188
bfc0ce38:	3c04e090 	lui	a0,0xe090
bfc0ce3c:	3c08e096 	lui	t0,0xe096
bfc0ce40:	00892021 	addu	a0,a0,t1
bfc0ce44:	012a4821 	addu	t1,t1,t2
bfc0ce48:	1504009b 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ce4c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:189
bfc0ce50:	3c04e090 	lui	a0,0xe090
bfc0ce54:	3c08e097 	lui	t0,0xe097
bfc0ce58:	00892021 	addu	a0,a0,t1
bfc0ce5c:	012a4821 	addu	t1,t1,t2
bfc0ce60:	15040095 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ce64:	00000000 	nop
/home/csy/func/inst/n1_lui.S:190
bfc0ce68:	3c04e090 	lui	a0,0xe090
bfc0ce6c:	3c08e098 	lui	t0,0xe098
bfc0ce70:	00892021 	addu	a0,a0,t1
bfc0ce74:	012a4821 	addu	t1,t1,t2
bfc0ce78:	1504008f 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ce7c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:191
bfc0ce80:	3c04e090 	lui	a0,0xe090
bfc0ce84:	3c08e099 	lui	t0,0xe099
bfc0ce88:	00892021 	addu	a0,a0,t1
bfc0ce8c:	012a4821 	addu	t1,t1,t2
bfc0ce90:	15040089 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ce94:	00000000 	nop
/home/csy/func/inst/n1_lui.S:192
bfc0ce98:	3c04e090 	lui	a0,0xe090
bfc0ce9c:	3c08e09a 	lui	t0,0xe09a
bfc0cea0:	00892021 	addu	a0,a0,t1
bfc0cea4:	012a4821 	addu	t1,t1,t2
bfc0cea8:	15040083 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0ceac:	00000000 	nop
/home/csy/func/inst/n1_lui.S:193
bfc0ceb0:	3c04e090 	lui	a0,0xe090
bfc0ceb4:	3c08e09b 	lui	t0,0xe09b
bfc0ceb8:	00892021 	addu	a0,a0,t1
bfc0cebc:	012a4821 	addu	t1,t1,t2
bfc0cec0:	1504007d 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cec4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:194
bfc0cec8:	3c04e090 	lui	a0,0xe090
bfc0cecc:	3c08e09c 	lui	t0,0xe09c
bfc0ced0:	00892021 	addu	a0,a0,t1
bfc0ced4:	012a4821 	addu	t1,t1,t2
bfc0ced8:	15040077 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cedc:	00000000 	nop
/home/csy/func/inst/n1_lui.S:195
bfc0cee0:	3c04e090 	lui	a0,0xe090
bfc0cee4:	3c08e09d 	lui	t0,0xe09d
bfc0cee8:	00892021 	addu	a0,a0,t1
bfc0ceec:	012a4821 	addu	t1,t1,t2
bfc0cef0:	15040071 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cef4:	00000000 	nop
/home/csy/func/inst/n1_lui.S:196
bfc0cef8:	3c04e090 	lui	a0,0xe090
bfc0cefc:	3c08e09e 	lui	t0,0xe09e
bfc0cf00:	00892021 	addu	a0,a0,t1
bfc0cf04:	012a4821 	addu	t1,t1,t2
bfc0cf08:	1504006b 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cf0c:	00000000 	nop
/home/csy/func/inst/n1_lui.S:197
bfc0cf10:	3c04e090 	lui	a0,0xe090
bfc0cf14:	3c08e09f 	lui	t0,0xe09f
bfc0cf18:	00892021 	addu	a0,a0,t1
bfc0cf1c:	012a4821 	addu	t1,t1,t2
bfc0cf20:	15040065 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cf24:	00000000 	nop
/home/csy/func/inst/n1_lui.S:198
bfc0cf28:	24090000 	li	t1,0
/home/csy/func/inst/n1_lui.S:199
bfc0cf2c:	3c04f0a0 	lui	a0,0xf0a0
bfc0cf30:	3c08f0a0 	lui	t0,0xf0a0
bfc0cf34:	00892021 	addu	a0,a0,t1
bfc0cf38:	012a4821 	addu	t1,t1,t2
bfc0cf3c:	1504005e 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cf40:	00000000 	nop
/home/csy/func/inst/n1_lui.S:200
bfc0cf44:	3c04f0a0 	lui	a0,0xf0a0
bfc0cf48:	3c08f0a1 	lui	t0,0xf0a1
bfc0cf4c:	00892021 	addu	a0,a0,t1
bfc0cf50:	012a4821 	addu	t1,t1,t2
bfc0cf54:	15040058 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cf58:	00000000 	nop
/home/csy/func/inst/n1_lui.S:201
bfc0cf5c:	3c04f0a0 	lui	a0,0xf0a0
bfc0cf60:	3c08f0a2 	lui	t0,0xf0a2
bfc0cf64:	00892021 	addu	a0,a0,t1
bfc0cf68:	012a4821 	addu	t1,t1,t2
bfc0cf6c:	15040052 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cf70:	00000000 	nop
/home/csy/func/inst/n1_lui.S:202
bfc0cf74:	3c04f0a0 	lui	a0,0xf0a0
bfc0cf78:	3c08f0a3 	lui	t0,0xf0a3
bfc0cf7c:	00892021 	addu	a0,a0,t1
bfc0cf80:	012a4821 	addu	t1,t1,t2
bfc0cf84:	1504004c 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cf88:	00000000 	nop
/home/csy/func/inst/n1_lui.S:203
bfc0cf8c:	3c04f0a0 	lui	a0,0xf0a0
bfc0cf90:	3c08f0a4 	lui	t0,0xf0a4
bfc0cf94:	00892021 	addu	a0,a0,t1
bfc0cf98:	012a4821 	addu	t1,t1,t2
bfc0cf9c:	15040046 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cfa0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:204
bfc0cfa4:	3c04f0a0 	lui	a0,0xf0a0
bfc0cfa8:	3c08f0a5 	lui	t0,0xf0a5
bfc0cfac:	00892021 	addu	a0,a0,t1
bfc0cfb0:	012a4821 	addu	t1,t1,t2
bfc0cfb4:	15040040 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cfb8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:205
bfc0cfbc:	3c04f0a0 	lui	a0,0xf0a0
bfc0cfc0:	3c08f0a6 	lui	t0,0xf0a6
bfc0cfc4:	00892021 	addu	a0,a0,t1
bfc0cfc8:	012a4821 	addu	t1,t1,t2
bfc0cfcc:	1504003a 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cfd0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:206
bfc0cfd4:	3c04f0a0 	lui	a0,0xf0a0
bfc0cfd8:	3c08f0a7 	lui	t0,0xf0a7
bfc0cfdc:	00892021 	addu	a0,a0,t1
bfc0cfe0:	012a4821 	addu	t1,t1,t2
bfc0cfe4:	15040034 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0cfe8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:207
bfc0cfec:	3c04f0a0 	lui	a0,0xf0a0
bfc0cff0:	3c08f0a8 	lui	t0,0xf0a8
bfc0cff4:	00892021 	addu	a0,a0,t1
bfc0cff8:	012a4821 	addu	t1,t1,t2
bfc0cffc:	1504002e 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0d000:	00000000 	nop
/home/csy/func/inst/n1_lui.S:208
bfc0d004:	3c04f0a0 	lui	a0,0xf0a0
bfc0d008:	3c08f0a9 	lui	t0,0xf0a9
bfc0d00c:	00892021 	addu	a0,a0,t1
bfc0d010:	012a4821 	addu	t1,t1,t2
bfc0d014:	15040028 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0d018:	00000000 	nop
/home/csy/func/inst/n1_lui.S:209
bfc0d01c:	3c04f0a0 	lui	a0,0xf0a0
bfc0d020:	3c08f0aa 	lui	t0,0xf0aa
bfc0d024:	00892021 	addu	a0,a0,t1
bfc0d028:	012a4821 	addu	t1,t1,t2
bfc0d02c:	15040022 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0d030:	00000000 	nop
/home/csy/func/inst/n1_lui.S:210
bfc0d034:	3c04f0a0 	lui	a0,0xf0a0
bfc0d038:	3c08f0ab 	lui	t0,0xf0ab
bfc0d03c:	00892021 	addu	a0,a0,t1
bfc0d040:	012a4821 	addu	t1,t1,t2
bfc0d044:	1504001c 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0d048:	00000000 	nop
/home/csy/func/inst/n1_lui.S:211
bfc0d04c:	3c04f0a0 	lui	a0,0xf0a0
bfc0d050:	3c08f0ac 	lui	t0,0xf0ac
bfc0d054:	00892021 	addu	a0,a0,t1
bfc0d058:	012a4821 	addu	t1,t1,t2
bfc0d05c:	15040016 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0d060:	00000000 	nop
/home/csy/func/inst/n1_lui.S:212
bfc0d064:	3c04f0a0 	lui	a0,0xf0a0
bfc0d068:	3c08f0ad 	lui	t0,0xf0ad
bfc0d06c:	00892021 	addu	a0,a0,t1
bfc0d070:	012a4821 	addu	t1,t1,t2
bfc0d074:	15040010 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0d078:	00000000 	nop
/home/csy/func/inst/n1_lui.S:213
bfc0d07c:	3c04f0a0 	lui	a0,0xf0a0
bfc0d080:	3c08f0ae 	lui	t0,0xf0ae
bfc0d084:	00892021 	addu	a0,a0,t1
bfc0d088:	012a4821 	addu	t1,t1,t2
bfc0d08c:	1504000a 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0d090:	00000000 	nop
/home/csy/func/inst/n1_lui.S:214
bfc0d094:	3c04f0a0 	lui	a0,0xf0a0
bfc0d098:	3c08f0af 	lui	t0,0xf0af
bfc0d09c:	00892021 	addu	a0,a0,t1
bfc0d0a0:	012a4821 	addu	t1,t1,t2
bfc0d0a4:	15040004 	bne	t0,a0,bfc0d0b8 <inst_error>
bfc0d0a8:	00000000 	nop
/home/csy/func/inst/n1_lui.S:216
bfc0d0ac:	16400002 	bnez	s2,bfc0d0b8 <inst_error>
/home/csy/func/inst/n1_lui.S:217
bfc0d0b0:	00000000 	nop
/home/csy/func/inst/n1_lui.S:219
bfc0d0b4:	26730001 	addiu	s3,s3,1

bfc0d0b8 <inst_error>:
/home/csy/func/inst/n1_lui.S:222
bfc0d0b8:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n1_lui.S:223
bfc0d0bc:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n1_lui.S:224
bfc0d0c0:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n1_lui.S:225
bfc0d0c4:	03e00008 	jr	ra
/home/csy/func/inst/n1_lui.S:226
bfc0d0c8:	00000000 	nop
bfc0d0cc:	00000000 	nop

bfc0d0d0 <n62_lhu_test>:
/home/csy/func/inst/n62_lhu.S:7
bfc0d0d0:	26100001 	addiu	s0,s0,1
/home/csy/func/inst/n62_lhu.S:8
bfc0d0d4:	24120000 	li	s2,0
/home/csy/func/inst/n62_lhu.S:10
bfc0d0d8:	3c09c5e0 	lui	t1,0xc5e0
bfc0d0dc:	3529fd00 	ori	t1,t1,0xfd00
bfc0d0e0:	3c08800d 	lui	t0,0x800d
bfc0d0e4:	35081dfc 	ori	t0,t0,0x1dfc
bfc0d0e8:	3403c5e0 	li	v1,0xc5e0
bfc0d0ec:	3c010001 	lui	at,0x1
bfc0d0f0:	00280821 	addu	at,at,t0
bfc0d0f4:	ac29b55c 	sw	t1,-19108(at)
bfc0d0f8:	25040004 	addiu	a0,t0,4
bfc0d0fc:	2505fff8 	addiu	a1,t0,-8
bfc0d100:	3c010001 	lui	at,0x1
bfc0d104:	00240821 	addu	at,at,a0
bfc0d108:	ac24b55c 	sw	a0,-19108(at)
bfc0d10c:	3c010001 	lui	at,0x1
bfc0d110:	00250821 	addu	at,at,a1
bfc0d114:	ac25b55c 	sw	a1,-19108(at)
bfc0d118:	3c020001 	lui	v0,0x1
bfc0d11c:	00481021 	addu	v0,v0,t0
bfc0d120:	9442b55e 	lhu	v0,-19106(v0)
bfc0d124:	3c050001 	lui	a1,0x1
bfc0d128:	00a42821 	addu	a1,a1,a0
bfc0d12c:	8ca5b55c 	lw	a1,-19108(a1)
bfc0d130:	3c040001 	lui	a0,0x1
bfc0d134:	00852021 	addu	a0,a0,a1
bfc0d138:	8c84b55c 	lw	a0,-19108(a0)
bfc0d13c:	3c060001 	lui	a2,0x1
bfc0d140:	00c53021 	addu	a2,a2,a1
bfc0d144:	8cc6b55c 	lw	a2,-19108(a2)
bfc0d148:	144307ba 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d14c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:11
bfc0d150:	3c092587 	lui	t1,0x2587
bfc0d154:	352907b2 	ori	t1,t1,0x7b2
bfc0d158:	3c08800d 	lui	t0,0x800d
bfc0d15c:	3508bd8c 	ori	t0,t0,0xbd8c
bfc0d160:	240307b2 	li	v1,1970
bfc0d164:	ad091c34 	sw	t1,7220(t0)
bfc0d168:	25040004 	addiu	a0,t0,4
bfc0d16c:	2505fff8 	addiu	a1,t0,-8
bfc0d170:	ac841c34 	sw	a0,7220(a0)
bfc0d174:	aca51c34 	sw	a1,7220(a1)
bfc0d178:	95021c34 	lhu	v0,7220(t0)
bfc0d17c:	8c851c34 	lw	a1,7220(a0)
bfc0d180:	8ca41c34 	lw	a0,7220(a1)
bfc0d184:	8ca61c34 	lw	a2,7220(a1)
bfc0d188:	144307aa 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d18c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:12
bfc0d190:	3c09263a 	lui	t1,0x263a
bfc0d194:	3529a087 	ori	t1,t1,0xa087
bfc0d198:	3c08800d 	lui	t0,0x800d
bfc0d19c:	35086920 	ori	t0,t0,0x6920
bfc0d1a0:	2403263a 	li	v1,9786
bfc0d1a4:	ad096418 	sw	t1,25624(t0)
bfc0d1a8:	25040004 	addiu	a0,t0,4
bfc0d1ac:	2505fff8 	addiu	a1,t0,-8
bfc0d1b0:	ac846418 	sw	a0,25624(a0)
bfc0d1b4:	aca56418 	sw	a1,25624(a1)
bfc0d1b8:	9502641a 	lhu	v0,25626(t0)
bfc0d1bc:	8c856418 	lw	a1,25624(a0)
bfc0d1c0:	8ca46418 	lw	a0,25624(a1)
bfc0d1c4:	8ca66418 	lw	a2,25624(a1)
bfc0d1c8:	1443079a 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d1cc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:13
bfc0d1d0:	3c09b5e1 	lui	t1,0xb5e1
bfc0d1d4:	35291b1a 	ori	t1,t1,0x1b1a
bfc0d1d8:	3c08800d 	lui	t0,0x800d
bfc0d1dc:	35083a6c 	ori	t0,t0,0x3a6c
bfc0d1e0:	24031b1a 	li	v1,6938
bfc0d1e4:	ad095164 	sw	t1,20836(t0)
bfc0d1e8:	25040004 	addiu	a0,t0,4
bfc0d1ec:	2505fff8 	addiu	a1,t0,-8
bfc0d1f0:	ac845164 	sw	a0,20836(a0)
bfc0d1f4:	aca55164 	sw	a1,20836(a1)
bfc0d1f8:	95025164 	lhu	v0,20836(t0)
bfc0d1fc:	8c855164 	lw	a1,20836(a0)
bfc0d200:	8ca45164 	lw	a0,20836(a1)
bfc0d204:	8ca65164 	lw	a2,20836(a1)
bfc0d208:	1443078a 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d20c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:14
bfc0d210:	3c09c972 	lui	t1,0xc972
bfc0d214:	3529f764 	ori	t1,t1,0xf764
bfc0d218:	3c08800d 	lui	t0,0x800d
bfc0d21c:	350814a0 	ori	t0,t0,0x14a0
bfc0d220:	3403f764 	li	v1,0xf764
bfc0d224:	ad0902cc 	sw	t1,716(t0)
bfc0d228:	25040004 	addiu	a0,t0,4
bfc0d22c:	2505fff8 	addiu	a1,t0,-8
bfc0d230:	ac8402cc 	sw	a0,716(a0)
bfc0d234:	aca502cc 	sw	a1,716(a1)
bfc0d238:	950202cc 	lhu	v0,716(t0)
bfc0d23c:	8c8502cc 	lw	a1,716(a0)
bfc0d240:	8ca402cc 	lw	a0,716(a1)
bfc0d244:	8ca602cc 	lw	a2,716(a1)
bfc0d248:	1443077a 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d24c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:15
bfc0d250:	3c099cc8 	lui	t1,0x9cc8
bfc0d254:	35294d98 	ori	t1,t1,0x4d98
bfc0d258:	3c08800d 	lui	t0,0x800d
bfc0d25c:	35080160 	ori	t0,t0,0x160
bfc0d260:	24034d98 	li	v1,19864
bfc0d264:	ad091268 	sw	t1,4712(t0)
bfc0d268:	25040004 	addiu	a0,t0,4
bfc0d26c:	2505fff8 	addiu	a1,t0,-8
bfc0d270:	ac841268 	sw	a0,4712(a0)
bfc0d274:	aca51268 	sw	a1,4712(a1)
bfc0d278:	95021268 	lhu	v0,4712(t0)
bfc0d27c:	8c851268 	lw	a1,4712(a0)
bfc0d280:	8ca41268 	lw	a0,4712(a1)
bfc0d284:	8ca61268 	lw	a2,4712(a1)
bfc0d288:	1443076a 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d28c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:16
bfc0d290:	3c0975e3 	lui	t1,0x75e3
bfc0d294:	352913d0 	ori	t1,t1,0x13d0
bfc0d298:	3c08800d 	lui	t0,0x800d
bfc0d29c:	3508993c 	ori	t0,t0,0x993c
bfc0d2a0:	240313d0 	li	v1,5072
bfc0d2a4:	ad09456c 	sw	t1,17772(t0)
bfc0d2a8:	25040004 	addiu	a0,t0,4
bfc0d2ac:	2505fff8 	addiu	a1,t0,-8
bfc0d2b0:	ac84456c 	sw	a0,17772(a0)
bfc0d2b4:	aca5456c 	sw	a1,17772(a1)
bfc0d2b8:	9502456c 	lhu	v0,17772(t0)
bfc0d2bc:	8c85456c 	lw	a1,17772(a0)
bfc0d2c0:	8ca4456c 	lw	a0,17772(a1)
bfc0d2c4:	8ca6456c 	lw	a2,17772(a1)
bfc0d2c8:	1443075a 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d2cc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:17
bfc0d2d0:	3c096d19 	lui	t1,0x6d19
bfc0d2d4:	3529e13e 	ori	t1,t1,0xe13e
bfc0d2d8:	3c08800d 	lui	t0,0x800d
bfc0d2dc:	3508b968 	ori	t0,t0,0xb968
bfc0d2e0:	24036d19 	li	v1,27929
bfc0d2e4:	ad0935dc 	sw	t1,13788(t0)
bfc0d2e8:	25040004 	addiu	a0,t0,4
bfc0d2ec:	2505fff8 	addiu	a1,t0,-8
bfc0d2f0:	ac8435dc 	sw	a0,13788(a0)
bfc0d2f4:	aca535dc 	sw	a1,13788(a1)
bfc0d2f8:	950235de 	lhu	v0,13790(t0)
bfc0d2fc:	8c8535dc 	lw	a1,13788(a0)
bfc0d300:	8ca435dc 	lw	a0,13788(a1)
bfc0d304:	8ca635dc 	lw	a2,13788(a1)
bfc0d308:	1443074a 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d30c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:18
bfc0d310:	3c094a1e 	lui	t1,0x4a1e
bfc0d314:	3529fc6c 	ori	t1,t1,0xfc6c
bfc0d318:	3c08800d 	lui	t0,0x800d
bfc0d31c:	35085a08 	ori	t0,t0,0x5a08
bfc0d320:	3403fc6c 	li	v1,0xfc6c
bfc0d324:	3c010001 	lui	at,0x1
bfc0d328:	00280821 	addu	at,at,t0
bfc0d32c:	ac29a2f0 	sw	t1,-23824(at)
bfc0d330:	25040004 	addiu	a0,t0,4
bfc0d334:	2505fff8 	addiu	a1,t0,-8
bfc0d338:	3c010001 	lui	at,0x1
bfc0d33c:	00240821 	addu	at,at,a0
bfc0d340:	ac24a2f0 	sw	a0,-23824(at)
bfc0d344:	3c010001 	lui	at,0x1
bfc0d348:	00250821 	addu	at,at,a1
bfc0d34c:	ac25a2f0 	sw	a1,-23824(at)
bfc0d350:	3c020001 	lui	v0,0x1
bfc0d354:	00481021 	addu	v0,v0,t0
bfc0d358:	9442a2f0 	lhu	v0,-23824(v0)
bfc0d35c:	3c050001 	lui	a1,0x1
bfc0d360:	00a42821 	addu	a1,a1,a0
bfc0d364:	8ca5a2f0 	lw	a1,-23824(a1)
bfc0d368:	3c040001 	lui	a0,0x1
bfc0d36c:	00852021 	addu	a0,a0,a1
bfc0d370:	8c84a2f0 	lw	a0,-23824(a0)
bfc0d374:	3c060001 	lui	a2,0x1
bfc0d378:	00c53021 	addu	a2,a2,a1
bfc0d37c:	8cc6a2f0 	lw	a2,-23824(a2)
bfc0d380:	1443072c 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d384:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:19
bfc0d388:	3c0932e3 	lui	t1,0x32e3
bfc0d38c:	352921c0 	ori	t1,t1,0x21c0
bfc0d390:	3c08800d 	lui	t0,0x800d
bfc0d394:	350841d4 	ori	t0,t0,0x41d4
bfc0d398:	240321c0 	li	v1,8640
bfc0d39c:	ad096844 	sw	t1,26692(t0)
bfc0d3a0:	25040004 	addiu	a0,t0,4
bfc0d3a4:	2505fff8 	addiu	a1,t0,-8
bfc0d3a8:	ac846844 	sw	a0,26692(a0)
bfc0d3ac:	aca56844 	sw	a1,26692(a1)
bfc0d3b0:	95026844 	lhu	v0,26692(t0)
bfc0d3b4:	8c856844 	lw	a1,26692(a0)
bfc0d3b8:	8ca46844 	lw	a0,26692(a1)
bfc0d3bc:	8ca66844 	lw	a2,26692(a1)
bfc0d3c0:	1443071c 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d3c4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:20
bfc0d3c8:	3c097977 	lui	t1,0x7977
bfc0d3cc:	3529fa5c 	ori	t1,t1,0xfa5c
bfc0d3d0:	3c08800d 	lui	t0,0x800d
bfc0d3d4:	35084e38 	ori	t0,t0,0x4e38
bfc0d3d8:	3403fa5c 	li	v1,0xfa5c
bfc0d3dc:	ad093380 	sw	t1,13184(t0)
bfc0d3e0:	25040004 	addiu	a0,t0,4
bfc0d3e4:	2505fff8 	addiu	a1,t0,-8
bfc0d3e8:	ac843380 	sw	a0,13184(a0)
bfc0d3ec:	aca53380 	sw	a1,13184(a1)
bfc0d3f0:	95023380 	lhu	v0,13184(t0)
bfc0d3f4:	8c853380 	lw	a1,13184(a0)
bfc0d3f8:	8ca43380 	lw	a0,13184(a1)
bfc0d3fc:	8ca63380 	lw	a2,13184(a1)
bfc0d400:	1443070c 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d404:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:21
bfc0d408:	3c094310 	lui	t1,0x4310
bfc0d40c:	35296c00 	ori	t1,t1,0x6c00
bfc0d410:	3c08800d 	lui	t0,0x800d
bfc0d414:	35087bf8 	ori	t0,t0,0x7bf8
bfc0d418:	24034310 	li	v1,17168
bfc0d41c:	ad0978c8 	sw	t1,30920(t0)
bfc0d420:	25040004 	addiu	a0,t0,4
bfc0d424:	2505fff8 	addiu	a1,t0,-8
bfc0d428:	ac8478c8 	sw	a0,30920(a0)
bfc0d42c:	aca578c8 	sw	a1,30920(a1)
bfc0d430:	950278ca 	lhu	v0,30922(t0)
bfc0d434:	8c8578c8 	lw	a1,30920(a0)
bfc0d438:	8ca478c8 	lw	a0,30920(a1)
bfc0d43c:	8ca678c8 	lw	a2,30920(a1)
bfc0d440:	144306fc 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d444:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:22
bfc0d448:	3c0943ab 	lui	t1,0x43ab
bfc0d44c:	3529d100 	ori	t1,t1,0xd100
bfc0d450:	3c08800d 	lui	t0,0x800d
bfc0d454:	35087718 	ori	t0,t0,0x7718
bfc0d458:	240343ab 	li	v1,17323
bfc0d45c:	ad096cd4 	sw	t1,27860(t0)
bfc0d460:	25040004 	addiu	a0,t0,4
bfc0d464:	2505fff8 	addiu	a1,t0,-8
bfc0d468:	ac846cd4 	sw	a0,27860(a0)
bfc0d46c:	aca56cd4 	sw	a1,27860(a1)
bfc0d470:	95026cd6 	lhu	v0,27862(t0)
bfc0d474:	8c856cd4 	lw	a1,27860(a0)
bfc0d478:	8ca46cd4 	lw	a0,27860(a1)
bfc0d47c:	8ca66cd4 	lw	a2,27860(a1)
bfc0d480:	144306ec 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d484:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:23
bfc0d488:	3c09dd8d 	lui	t1,0xdd8d
bfc0d48c:	3529afc0 	ori	t1,t1,0xafc0
bfc0d490:	3c08800d 	lui	t0,0x800d
bfc0d494:	350866c0 	ori	t0,t0,0x66c0
bfc0d498:	3403afc0 	li	v1,0xafc0
bfc0d49c:	ad095b08 	sw	t1,23304(t0)
bfc0d4a0:	25040004 	addiu	a0,t0,4
bfc0d4a4:	2505fff8 	addiu	a1,t0,-8
bfc0d4a8:	ac845b08 	sw	a0,23304(a0)
bfc0d4ac:	aca55b08 	sw	a1,23304(a1)
bfc0d4b0:	95025b08 	lhu	v0,23304(t0)
bfc0d4b4:	8c855b08 	lw	a1,23304(a0)
bfc0d4b8:	8ca45b08 	lw	a0,23304(a1)
bfc0d4bc:	8ca65b08 	lw	a2,23304(a1)
bfc0d4c0:	144306dc 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d4c4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:24
bfc0d4c8:	3c0946df 	lui	t1,0x46df
bfc0d4cc:	3529a15e 	ori	t1,t1,0xa15e
bfc0d4d0:	3c08800d 	lui	t0,0x800d
bfc0d4d4:	3508086c 	ori	t0,t0,0x86c
bfc0d4d8:	3403a15e 	li	v1,0xa15e
bfc0d4dc:	ad095220 	sw	t1,21024(t0)
bfc0d4e0:	25040004 	addiu	a0,t0,4
bfc0d4e4:	2505fff8 	addiu	a1,t0,-8
bfc0d4e8:	ac845220 	sw	a0,21024(a0)
bfc0d4ec:	aca55220 	sw	a1,21024(a1)
bfc0d4f0:	95025220 	lhu	v0,21024(t0)
bfc0d4f4:	8c855220 	lw	a1,21024(a0)
bfc0d4f8:	8ca45220 	lw	a0,21024(a1)
bfc0d4fc:	8ca65220 	lw	a2,21024(a1)
bfc0d500:	144306cc 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d504:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:25
bfc0d508:	3c095928 	lui	t1,0x5928
bfc0d50c:	352910c0 	ori	t1,t1,0x10c0
bfc0d510:	3c08800d 	lui	t0,0x800d
bfc0d514:	35081438 	ori	t0,t0,0x1438
bfc0d518:	240310c0 	li	v1,4288
bfc0d51c:	3c010001 	lui	at,0x1
bfc0d520:	00280821 	addu	at,at,t0
bfc0d524:	ac29e178 	sw	t1,-7816(at)
bfc0d528:	25040004 	addiu	a0,t0,4
bfc0d52c:	2505fff8 	addiu	a1,t0,-8
bfc0d530:	3c010001 	lui	at,0x1
bfc0d534:	00240821 	addu	at,at,a0
bfc0d538:	ac24e178 	sw	a0,-7816(at)
bfc0d53c:	3c010001 	lui	at,0x1
bfc0d540:	00250821 	addu	at,at,a1
bfc0d544:	ac25e178 	sw	a1,-7816(at)
bfc0d548:	3c020001 	lui	v0,0x1
bfc0d54c:	00481021 	addu	v0,v0,t0
bfc0d550:	9442e178 	lhu	v0,-7816(v0)
bfc0d554:	3c050001 	lui	a1,0x1
bfc0d558:	00a42821 	addu	a1,a1,a0
bfc0d55c:	8ca5e178 	lw	a1,-7816(a1)
bfc0d560:	3c040001 	lui	a0,0x1
bfc0d564:	00852021 	addu	a0,a0,a1
bfc0d568:	8c84e178 	lw	a0,-7816(a0)
bfc0d56c:	3c060001 	lui	a2,0x1
bfc0d570:	00c53021 	addu	a2,a2,a1
bfc0d574:	8cc6e178 	lw	a2,-7816(a2)
bfc0d578:	144306ae 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d57c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:26
bfc0d580:	3c09b8f4 	lui	t1,0xb8f4
bfc0d584:	3529f244 	ori	t1,t1,0xf244
bfc0d588:	3c08800d 	lui	t0,0x800d
bfc0d58c:	350830d0 	ori	t0,t0,0x30d0
bfc0d590:	3403f244 	li	v1,0xf244
bfc0d594:	ad091944 	sw	t1,6468(t0)
bfc0d598:	25040004 	addiu	a0,t0,4
bfc0d59c:	2505fff8 	addiu	a1,t0,-8
bfc0d5a0:	ac841944 	sw	a0,6468(a0)
bfc0d5a4:	aca51944 	sw	a1,6468(a1)
bfc0d5a8:	95021944 	lhu	v0,6468(t0)
bfc0d5ac:	8c851944 	lw	a1,6468(a0)
bfc0d5b0:	8ca41944 	lw	a0,6468(a1)
bfc0d5b4:	8ca61944 	lw	a2,6468(a1)
bfc0d5b8:	1443069e 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d5bc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:27
bfc0d5c0:	3c09a326 	lui	t1,0xa326
bfc0d5c4:	352905e0 	ori	t1,t1,0x5e0
bfc0d5c8:	3c08800d 	lui	t0,0x800d
bfc0d5cc:	35086c44 	ori	t0,t0,0x6c44
bfc0d5d0:	240305e0 	li	v1,1504
bfc0d5d4:	ad090a88 	sw	t1,2696(t0)
bfc0d5d8:	25040004 	addiu	a0,t0,4
bfc0d5dc:	2505fff8 	addiu	a1,t0,-8
bfc0d5e0:	ac840a88 	sw	a0,2696(a0)
bfc0d5e4:	aca50a88 	sw	a1,2696(a1)
bfc0d5e8:	95020a88 	lhu	v0,2696(t0)
bfc0d5ec:	8c850a88 	lw	a1,2696(a0)
bfc0d5f0:	8ca40a88 	lw	a0,2696(a1)
bfc0d5f4:	8ca60a88 	lw	a2,2696(a1)
bfc0d5f8:	1443068e 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d5fc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:28
bfc0d600:	3c09644a 	lui	t1,0x644a
bfc0d604:	3529b840 	ori	t1,t1,0xb840
bfc0d608:	3c08800d 	lui	t0,0x800d
bfc0d60c:	35080200 	ori	t0,t0,0x200
bfc0d610:	2403644a 	li	v1,25674
bfc0d614:	3c010001 	lui	at,0x1
bfc0d618:	00280821 	addu	at,at,t0
bfc0d61c:	ac29fbec 	sw	t1,-1044(at)
bfc0d620:	25040004 	addiu	a0,t0,4
bfc0d624:	2505fff8 	addiu	a1,t0,-8
bfc0d628:	3c010001 	lui	at,0x1
bfc0d62c:	00240821 	addu	at,at,a0
bfc0d630:	ac24fbec 	sw	a0,-1044(at)
bfc0d634:	3c010001 	lui	at,0x1
bfc0d638:	00250821 	addu	at,at,a1
bfc0d63c:	ac25fbec 	sw	a1,-1044(at)
bfc0d640:	3c020001 	lui	v0,0x1
bfc0d644:	00481021 	addu	v0,v0,t0
bfc0d648:	9442fbee 	lhu	v0,-1042(v0)
bfc0d64c:	3c050001 	lui	a1,0x1
bfc0d650:	00a42821 	addu	a1,a1,a0
bfc0d654:	8ca5fbec 	lw	a1,-1044(a1)
bfc0d658:	3c040001 	lui	a0,0x1
bfc0d65c:	00852021 	addu	a0,a0,a1
bfc0d660:	8c84fbec 	lw	a0,-1044(a0)
bfc0d664:	3c060001 	lui	a2,0x1
bfc0d668:	00c53021 	addu	a2,a2,a1
bfc0d66c:	8cc6fbec 	lw	a2,-1044(a2)
bfc0d670:	14430670 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d674:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:29
bfc0d678:	3c09c9b5 	lui	t1,0xc9b5
bfc0d67c:	3529aa10 	ori	t1,t1,0xaa10
bfc0d680:	3c08800d 	lui	t0,0x800d
bfc0d684:	35086b08 	ori	t0,t0,0x6b08
bfc0d688:	3403aa10 	li	v1,0xaa10
bfc0d68c:	ad092200 	sw	t1,8704(t0)
bfc0d690:	25040004 	addiu	a0,t0,4
bfc0d694:	2505fff8 	addiu	a1,t0,-8
bfc0d698:	ac842200 	sw	a0,8704(a0)
bfc0d69c:	aca52200 	sw	a1,8704(a1)
bfc0d6a0:	95022200 	lhu	v0,8704(t0)
bfc0d6a4:	8c852200 	lw	a1,8704(a0)
bfc0d6a8:	8ca42200 	lw	a0,8704(a1)
bfc0d6ac:	8ca62200 	lw	a2,8704(a1)
bfc0d6b0:	14430660 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d6b4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:30
bfc0d6b8:	3c0997bd 	lui	t1,0x97bd
bfc0d6bc:	3529e956 	ori	t1,t1,0xe956
bfc0d6c0:	3c08800d 	lui	t0,0x800d
bfc0d6c4:	35085160 	ori	t0,t0,0x5160
bfc0d6c8:	3403e956 	li	v1,0xe956
bfc0d6cc:	ad0919d0 	sw	t1,6608(t0)
bfc0d6d0:	25040004 	addiu	a0,t0,4
bfc0d6d4:	2505fff8 	addiu	a1,t0,-8
bfc0d6d8:	ac8419d0 	sw	a0,6608(a0)
bfc0d6dc:	aca519d0 	sw	a1,6608(a1)
bfc0d6e0:	950219d0 	lhu	v0,6608(t0)
bfc0d6e4:	8c8519d0 	lw	a1,6608(a0)
bfc0d6e8:	8ca419d0 	lw	a0,6608(a1)
bfc0d6ec:	8ca619d0 	lw	a2,6608(a1)
bfc0d6f0:	14430650 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d6f4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:31
bfc0d6f8:	3c098915 	lui	t1,0x8915
bfc0d6fc:	3529acea 	ori	t1,t1,0xacea
bfc0d700:	3c08800d 	lui	t0,0x800d
bfc0d704:	35080210 	ori	t0,t0,0x210
bfc0d708:	34038915 	li	v1,0x8915
bfc0d70c:	ad097a2c 	sw	t1,31276(t0)
bfc0d710:	25040004 	addiu	a0,t0,4
bfc0d714:	2505fff8 	addiu	a1,t0,-8
bfc0d718:	ac847a2c 	sw	a0,31276(a0)
bfc0d71c:	aca57a2c 	sw	a1,31276(a1)
bfc0d720:	95027a2e 	lhu	v0,31278(t0)
bfc0d724:	8c857a2c 	lw	a1,31276(a0)
bfc0d728:	8ca47a2c 	lw	a0,31276(a1)
bfc0d72c:	8ca67a2c 	lw	a2,31276(a1)
bfc0d730:	14430640 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d734:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:32
bfc0d738:	3c097952 	lui	t1,0x7952
bfc0d73c:	3529a818 	ori	t1,t1,0xa818
bfc0d740:	3c08800d 	lui	t0,0x800d
bfc0d744:	350835d4 	ori	t0,t0,0x35d4
bfc0d748:	24037952 	li	v1,31058
bfc0d74c:	3c010001 	lui	at,0x1
bfc0d750:	00280821 	addu	at,at,t0
bfc0d754:	ac29b39c 	sw	t1,-19556(at)
bfc0d758:	25040004 	addiu	a0,t0,4
bfc0d75c:	2505fff8 	addiu	a1,t0,-8
bfc0d760:	3c010001 	lui	at,0x1
bfc0d764:	00240821 	addu	at,at,a0
bfc0d768:	ac24b39c 	sw	a0,-19556(at)
bfc0d76c:	3c010001 	lui	at,0x1
bfc0d770:	00250821 	addu	at,at,a1
bfc0d774:	ac25b39c 	sw	a1,-19556(at)
bfc0d778:	3c020001 	lui	v0,0x1
bfc0d77c:	00481021 	addu	v0,v0,t0
bfc0d780:	9442b39e 	lhu	v0,-19554(v0)
bfc0d784:	3c050001 	lui	a1,0x1
bfc0d788:	00a42821 	addu	a1,a1,a0
bfc0d78c:	8ca5b39c 	lw	a1,-19556(a1)
bfc0d790:	3c040001 	lui	a0,0x1
bfc0d794:	00852021 	addu	a0,a0,a1
bfc0d798:	8c84b39c 	lw	a0,-19556(a0)
bfc0d79c:	3c060001 	lui	a2,0x1
bfc0d7a0:	00c53021 	addu	a2,a2,a1
bfc0d7a4:	8cc6b39c 	lw	a2,-19556(a2)
bfc0d7a8:	14430622 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d7ac:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:33
bfc0d7b0:	3c09457f 	lui	t1,0x457f
bfc0d7b4:	35290d3d 	ori	t1,t1,0xd3d
bfc0d7b8:	3c08800d 	lui	t0,0x800d
bfc0d7bc:	35086044 	ori	t0,t0,0x6044
bfc0d7c0:	24030d3d 	li	v1,3389
bfc0d7c4:	ad0959e0 	sw	t1,23008(t0)
bfc0d7c8:	25040004 	addiu	a0,t0,4
bfc0d7cc:	2505fff8 	addiu	a1,t0,-8
bfc0d7d0:	ac8459e0 	sw	a0,23008(a0)
bfc0d7d4:	aca559e0 	sw	a1,23008(a1)
bfc0d7d8:	950259e0 	lhu	v0,23008(t0)
bfc0d7dc:	8c8559e0 	lw	a1,23008(a0)
bfc0d7e0:	8ca459e0 	lw	a0,23008(a1)
bfc0d7e4:	8ca659e0 	lw	a2,23008(a1)
bfc0d7e8:	14430612 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d7ec:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:34
bfc0d7f0:	3c0981a3 	lui	t1,0x81a3
bfc0d7f4:	3529f580 	ori	t1,t1,0xf580
bfc0d7f8:	3c08800d 	lui	t0,0x800d
bfc0d7fc:	35087588 	ori	t0,t0,0x7588
bfc0d800:	3403f580 	li	v1,0xf580
bfc0d804:	ad090ab4 	sw	t1,2740(t0)
bfc0d808:	25040004 	addiu	a0,t0,4
bfc0d80c:	2505fff8 	addiu	a1,t0,-8
bfc0d810:	ac840ab4 	sw	a0,2740(a0)
bfc0d814:	aca50ab4 	sw	a1,2740(a1)
bfc0d818:	95020ab4 	lhu	v0,2740(t0)
bfc0d81c:	8c850ab4 	lw	a1,2740(a0)
bfc0d820:	8ca40ab4 	lw	a0,2740(a1)
bfc0d824:	8ca60ab4 	lw	a2,2740(a1)
bfc0d828:	14430602 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d82c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:35
bfc0d830:	3c09e9fd 	lui	t1,0xe9fd
bfc0d834:	3529e394 	ori	t1,t1,0xe394
bfc0d838:	3c08800d 	lui	t0,0x800d
bfc0d83c:	35081870 	ori	t0,t0,0x1870
bfc0d840:	3403e9fd 	li	v1,0xe9fd
bfc0d844:	ad097950 	sw	t1,31056(t0)
bfc0d848:	25040004 	addiu	a0,t0,4
bfc0d84c:	2505fff8 	addiu	a1,t0,-8
bfc0d850:	ac847950 	sw	a0,31056(a0)
bfc0d854:	aca57950 	sw	a1,31056(a1)
bfc0d858:	95027952 	lhu	v0,31058(t0)
bfc0d85c:	8c857950 	lw	a1,31056(a0)
bfc0d860:	8ca47950 	lw	a0,31056(a1)
bfc0d864:	8ca67950 	lw	a2,31056(a1)
bfc0d868:	144305f2 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d86c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:36
bfc0d870:	3c09bbf8 	lui	t1,0xbbf8
bfc0d874:	3529bfa0 	ori	t1,t1,0xbfa0
bfc0d878:	3c08800d 	lui	t0,0x800d
bfc0d87c:	35082c9c 	ori	t0,t0,0x2c9c
bfc0d880:	3403bbf8 	li	v1,0xbbf8
bfc0d884:	ad0966d8 	sw	t1,26328(t0)
bfc0d888:	25040004 	addiu	a0,t0,4
bfc0d88c:	2505fff8 	addiu	a1,t0,-8
bfc0d890:	ac8466d8 	sw	a0,26328(a0)
bfc0d894:	aca566d8 	sw	a1,26328(a1)
bfc0d898:	950266da 	lhu	v0,26330(t0)
bfc0d89c:	8c8566d8 	lw	a1,26328(a0)
bfc0d8a0:	8ca466d8 	lw	a0,26328(a1)
bfc0d8a4:	8ca666d8 	lw	a2,26328(a1)
bfc0d8a8:	144305e2 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d8ac:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:37
bfc0d8b0:	3c091db2 	lui	t1,0x1db2
bfc0d8b4:	35298a00 	ori	t1,t1,0x8a00
bfc0d8b8:	3c08800d 	lui	t0,0x800d
bfc0d8bc:	3508ae60 	ori	t0,t0,0xae60
bfc0d8c0:	24031db2 	li	v1,7602
bfc0d8c4:	ad0947e8 	sw	t1,18408(t0)
bfc0d8c8:	25040004 	addiu	a0,t0,4
bfc0d8cc:	2505fff8 	addiu	a1,t0,-8
bfc0d8d0:	ac8447e8 	sw	a0,18408(a0)
bfc0d8d4:	aca547e8 	sw	a1,18408(a1)
bfc0d8d8:	950247ea 	lhu	v0,18410(t0)
bfc0d8dc:	8c8547e8 	lw	a1,18408(a0)
bfc0d8e0:	8ca447e8 	lw	a0,18408(a1)
bfc0d8e4:	8ca647e8 	lw	a2,18408(a1)
bfc0d8e8:	144305d2 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d8ec:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:38
bfc0d8f0:	3c095d6b 	lui	t1,0x5d6b
bfc0d8f4:	35290e7c 	ori	t1,t1,0xe7c
bfc0d8f8:	3c08800d 	lui	t0,0x800d
bfc0d8fc:	35080c48 	ori	t0,t0,0xc48
bfc0d900:	24035d6b 	li	v1,23915
bfc0d904:	ad0927bc 	sw	t1,10172(t0)
bfc0d908:	25040004 	addiu	a0,t0,4
bfc0d90c:	2505fff8 	addiu	a1,t0,-8
bfc0d910:	ac8427bc 	sw	a0,10172(a0)
bfc0d914:	aca527bc 	sw	a1,10172(a1)
bfc0d918:	950227be 	lhu	v0,10174(t0)
bfc0d91c:	8c8527bc 	lw	a1,10172(a0)
bfc0d920:	8ca427bc 	lw	a0,10172(a1)
bfc0d924:	8ca627bc 	lw	a2,10172(a1)
bfc0d928:	144305c2 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d92c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:39
bfc0d930:	3c0957fe 	lui	t1,0x57fe
bfc0d934:	35298940 	ori	t1,t1,0x8940
bfc0d938:	3c08800d 	lui	t0,0x800d
bfc0d93c:	35082030 	ori	t0,t0,0x2030
bfc0d940:	34038940 	li	v1,0x8940
bfc0d944:	ad091770 	sw	t1,6000(t0)
bfc0d948:	25040004 	addiu	a0,t0,4
bfc0d94c:	2505fff8 	addiu	a1,t0,-8
bfc0d950:	ac841770 	sw	a0,6000(a0)
bfc0d954:	aca51770 	sw	a1,6000(a1)
bfc0d958:	95021770 	lhu	v0,6000(t0)
bfc0d95c:	8c851770 	lw	a1,6000(a0)
bfc0d960:	8ca41770 	lw	a0,6000(a1)
bfc0d964:	8ca61770 	lw	a2,6000(a1)
bfc0d968:	144305b2 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d96c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:40
bfc0d970:	3c098003 	lui	t1,0x8003
bfc0d974:	35290460 	ori	t1,t1,0x460
bfc0d978:	3c08800d 	lui	t0,0x800d
bfc0d97c:	35082878 	ori	t0,t0,0x2878
bfc0d980:	34038003 	li	v1,0x8003
bfc0d984:	ad093b90 	sw	t1,15248(t0)
bfc0d988:	25040004 	addiu	a0,t0,4
bfc0d98c:	2505fff8 	addiu	a1,t0,-8
bfc0d990:	ac843b90 	sw	a0,15248(a0)
bfc0d994:	aca53b90 	sw	a1,15248(a1)
bfc0d998:	95023b92 	lhu	v0,15250(t0)
bfc0d99c:	8c853b90 	lw	a1,15248(a0)
bfc0d9a0:	8ca43b90 	lw	a0,15248(a1)
bfc0d9a4:	8ca63b90 	lw	a2,15248(a1)
bfc0d9a8:	144305a2 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d9ac:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:41
bfc0d9b0:	3c099d11 	lui	t1,0x9d11
bfc0d9b4:	352955b8 	ori	t1,t1,0x55b8
bfc0d9b8:	3c08800d 	lui	t0,0x800d
bfc0d9bc:	3508432c 	ori	t0,t0,0x432c
bfc0d9c0:	240355b8 	li	v1,21944
bfc0d9c4:	ad095da8 	sw	t1,23976(t0)
bfc0d9c8:	25040004 	addiu	a0,t0,4
bfc0d9cc:	2505fff8 	addiu	a1,t0,-8
bfc0d9d0:	ac845da8 	sw	a0,23976(a0)
bfc0d9d4:	aca55da8 	sw	a1,23976(a1)
bfc0d9d8:	95025da8 	lhu	v0,23976(t0)
bfc0d9dc:	8c855da8 	lw	a1,23976(a0)
bfc0d9e0:	8ca45da8 	lw	a0,23976(a1)
bfc0d9e4:	8ca65da8 	lw	a2,23976(a1)
bfc0d9e8:	14430592 	bne	v0,v1,bfc0f034 <inst_error>
bfc0d9ec:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:42
bfc0d9f0:	3c0993af 	lui	t1,0x93af
bfc0d9f4:	35292e4a 	ori	t1,t1,0x2e4a
bfc0d9f8:	3c08800d 	lui	t0,0x800d
bfc0d9fc:	3508444c 	ori	t0,t0,0x444c
bfc0da00:	340393af 	li	v1,0x93af
bfc0da04:	ad094b78 	sw	t1,19320(t0)
bfc0da08:	25040004 	addiu	a0,t0,4
bfc0da0c:	2505fff8 	addiu	a1,t0,-8
bfc0da10:	ac844b78 	sw	a0,19320(a0)
bfc0da14:	aca54b78 	sw	a1,19320(a1)
bfc0da18:	95024b7a 	lhu	v0,19322(t0)
bfc0da1c:	8c854b78 	lw	a1,19320(a0)
bfc0da20:	8ca44b78 	lw	a0,19320(a1)
bfc0da24:	8ca64b78 	lw	a2,19320(a1)
bfc0da28:	14430582 	bne	v0,v1,bfc0f034 <inst_error>
bfc0da2c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:43
bfc0da30:	3c0964e9 	lui	t1,0x64e9
bfc0da34:	35293438 	ori	t1,t1,0x3438
bfc0da38:	3c08800d 	lui	t0,0x800d
bfc0da3c:	240364e9 	li	v1,25833
bfc0da40:	3c010001 	lui	at,0x1
bfc0da44:	00280821 	addu	at,at,t0
bfc0da48:	ac29cf1c 	sw	t1,-12516(at)
bfc0da4c:	25040004 	addiu	a0,t0,4
bfc0da50:	2505fff8 	addiu	a1,t0,-8
bfc0da54:	3c010001 	lui	at,0x1
bfc0da58:	00240821 	addu	at,at,a0
bfc0da5c:	ac24cf1c 	sw	a0,-12516(at)
bfc0da60:	3c010001 	lui	at,0x1
bfc0da64:	00250821 	addu	at,at,a1
bfc0da68:	ac25cf1c 	sw	a1,-12516(at)
bfc0da6c:	3c020001 	lui	v0,0x1
bfc0da70:	00481021 	addu	v0,v0,t0
bfc0da74:	9442cf1e 	lhu	v0,-12514(v0)
bfc0da78:	3c050001 	lui	a1,0x1
bfc0da7c:	00a42821 	addu	a1,a1,a0
bfc0da80:	8ca5cf1c 	lw	a1,-12516(a1)
bfc0da84:	3c040001 	lui	a0,0x1
bfc0da88:	00852021 	addu	a0,a0,a1
bfc0da8c:	8c84cf1c 	lw	a0,-12516(a0)
bfc0da90:	3c060001 	lui	a2,0x1
bfc0da94:	00c53021 	addu	a2,a2,a1
bfc0da98:	8cc6cf1c 	lw	a2,-12516(a2)
bfc0da9c:	14430565 	bne	v0,v1,bfc0f034 <inst_error>
bfc0daa0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:44
bfc0daa4:	3c09855e 	lui	t1,0x855e
bfc0daa8:	35292566 	ori	t1,t1,0x2566
bfc0daac:	3c08800d 	lui	t0,0x800d
bfc0dab0:	3403855e 	li	v1,0x855e
bfc0dab4:	ad095370 	sw	t1,21360(t0)
bfc0dab8:	25040004 	addiu	a0,t0,4
bfc0dabc:	2505fff8 	addiu	a1,t0,-8
bfc0dac0:	ac845370 	sw	a0,21360(a0)
bfc0dac4:	aca55370 	sw	a1,21360(a1)
bfc0dac8:	95025372 	lhu	v0,21362(t0)
bfc0dacc:	8c855370 	lw	a1,21360(a0)
bfc0dad0:	8ca45370 	lw	a0,21360(a1)
bfc0dad4:	8ca65370 	lw	a2,21360(a1)
bfc0dad8:	14430556 	bne	v0,v1,bfc0f034 <inst_error>
bfc0dadc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:45
bfc0dae0:	3c0968e8 	lui	t1,0x68e8
bfc0dae4:	3529f220 	ori	t1,t1,0xf220
bfc0dae8:	3c08800d 	lui	t0,0x800d
bfc0daec:	3403f220 	li	v1,0xf220
bfc0daf0:	ad092060 	sw	t1,8288(t0)
bfc0daf4:	25040004 	addiu	a0,t0,4
bfc0daf8:	2505fff8 	addiu	a1,t0,-8
bfc0dafc:	ac842060 	sw	a0,8288(a0)
bfc0db00:	aca52060 	sw	a1,8288(a1)
bfc0db04:	95022060 	lhu	v0,8288(t0)
bfc0db08:	8c852060 	lw	a1,8288(a0)
bfc0db0c:	8ca42060 	lw	a0,8288(a1)
bfc0db10:	8ca62060 	lw	a2,8288(a1)
bfc0db14:	14430547 	bne	v0,v1,bfc0f034 <inst_error>
bfc0db18:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:46
bfc0db1c:	3c09155b 	lui	t1,0x155b
bfc0db20:	35296e78 	ori	t1,t1,0x6e78
bfc0db24:	3c08800d 	lui	t0,0x800d
bfc0db28:	24036e78 	li	v1,28280
bfc0db2c:	ad094da8 	sw	t1,19880(t0)
bfc0db30:	25040004 	addiu	a0,t0,4
bfc0db34:	2505fff8 	addiu	a1,t0,-8
bfc0db38:	ac844da8 	sw	a0,19880(a0)
bfc0db3c:	aca54da8 	sw	a1,19880(a1)
bfc0db40:	95024da8 	lhu	v0,19880(t0)
bfc0db44:	8c854da8 	lw	a1,19880(a0)
bfc0db48:	8ca44da8 	lw	a0,19880(a1)
bfc0db4c:	8ca64da8 	lw	a2,19880(a1)
bfc0db50:	14430538 	bne	v0,v1,bfc0f034 <inst_error>
bfc0db54:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:47
bfc0db58:	3c09e171 	lui	t1,0xe171
bfc0db5c:	3529e238 	ori	t1,t1,0xe238
bfc0db60:	3c08800d 	lui	t0,0x800d
bfc0db64:	3403e171 	li	v1,0xe171
bfc0db68:	3c010001 	lui	at,0x1
bfc0db6c:	00280821 	addu	at,at,t0
bfc0db70:	ac29f290 	sw	t1,-3440(at)
bfc0db74:	25040004 	addiu	a0,t0,4
bfc0db78:	2505fff8 	addiu	a1,t0,-8
bfc0db7c:	3c010001 	lui	at,0x1
bfc0db80:	00240821 	addu	at,at,a0
bfc0db84:	ac24f290 	sw	a0,-3440(at)
bfc0db88:	3c010001 	lui	at,0x1
bfc0db8c:	00250821 	addu	at,at,a1
bfc0db90:	ac25f290 	sw	a1,-3440(at)
bfc0db94:	3c020001 	lui	v0,0x1
bfc0db98:	00481021 	addu	v0,v0,t0
bfc0db9c:	9442f292 	lhu	v0,-3438(v0)
bfc0dba0:	3c050001 	lui	a1,0x1
bfc0dba4:	00a42821 	addu	a1,a1,a0
bfc0dba8:	8ca5f290 	lw	a1,-3440(a1)
bfc0dbac:	3c040001 	lui	a0,0x1
bfc0dbb0:	00852021 	addu	a0,a0,a1
bfc0dbb4:	8c84f290 	lw	a0,-3440(a0)
bfc0dbb8:	3c060001 	lui	a2,0x1
bfc0dbbc:	00c53021 	addu	a2,a2,a1
bfc0dbc0:	8cc6f290 	lw	a2,-3440(a2)
bfc0dbc4:	1443051b 	bne	v0,v1,bfc0f034 <inst_error>
bfc0dbc8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:48
bfc0dbcc:	3c092d81 	lui	t1,0x2d81
bfc0dbd0:	3529ef10 	ori	t1,t1,0xef10
bfc0dbd4:	3c08800d 	lui	t0,0x800d
bfc0dbd8:	3403ef10 	li	v1,0xef10
bfc0dbdc:	3c010001 	lui	at,0x1
bfc0dbe0:	00280821 	addu	at,at,t0
bfc0dbe4:	ac29f260 	sw	t1,-3488(at)
bfc0dbe8:	25040004 	addiu	a0,t0,4
bfc0dbec:	2505fff8 	addiu	a1,t0,-8
bfc0dbf0:	3c010001 	lui	at,0x1
bfc0dbf4:	00240821 	addu	at,at,a0
bfc0dbf8:	ac24f260 	sw	a0,-3488(at)
bfc0dbfc:	3c010001 	lui	at,0x1
bfc0dc00:	00250821 	addu	at,at,a1
bfc0dc04:	ac25f260 	sw	a1,-3488(at)
bfc0dc08:	3c020001 	lui	v0,0x1
bfc0dc0c:	00481021 	addu	v0,v0,t0
bfc0dc10:	9442f260 	lhu	v0,-3488(v0)
bfc0dc14:	3c050001 	lui	a1,0x1
bfc0dc18:	00a42821 	addu	a1,a1,a0
bfc0dc1c:	8ca5f260 	lw	a1,-3488(a1)
bfc0dc20:	3c040001 	lui	a0,0x1
bfc0dc24:	00852021 	addu	a0,a0,a1
bfc0dc28:	8c84f260 	lw	a0,-3488(a0)
bfc0dc2c:	3c060001 	lui	a2,0x1
bfc0dc30:	00c53021 	addu	a2,a2,a1
bfc0dc34:	8cc6f260 	lw	a2,-3488(a2)
bfc0dc38:	144304fe 	bne	v0,v1,bfc0f034 <inst_error>
bfc0dc3c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:49
bfc0dc40:	3c091824 	lui	t1,0x1824
bfc0dc44:	35293d74 	ori	t1,t1,0x3d74
bfc0dc48:	3c08800d 	lui	t0,0x800d
bfc0dc4c:	24033d74 	li	v1,15732
bfc0dc50:	3c010001 	lui	at,0x1
bfc0dc54:	00280821 	addu	at,at,t0
bfc0dc58:	ac29b988 	sw	t1,-18040(at)
bfc0dc5c:	25040004 	addiu	a0,t0,4
bfc0dc60:	2505fff8 	addiu	a1,t0,-8
bfc0dc64:	3c010001 	lui	at,0x1
bfc0dc68:	00240821 	addu	at,at,a0
bfc0dc6c:	ac24b988 	sw	a0,-18040(at)
bfc0dc70:	3c010001 	lui	at,0x1
bfc0dc74:	00250821 	addu	at,at,a1
bfc0dc78:	ac25b988 	sw	a1,-18040(at)
bfc0dc7c:	3c020001 	lui	v0,0x1
bfc0dc80:	00481021 	addu	v0,v0,t0
bfc0dc84:	9442b988 	lhu	v0,-18040(v0)
bfc0dc88:	3c050001 	lui	a1,0x1
bfc0dc8c:	00a42821 	addu	a1,a1,a0
bfc0dc90:	8ca5b988 	lw	a1,-18040(a1)
bfc0dc94:	3c040001 	lui	a0,0x1
bfc0dc98:	00852021 	addu	a0,a0,a1
bfc0dc9c:	8c84b988 	lw	a0,-18040(a0)
bfc0dca0:	3c060001 	lui	a2,0x1
bfc0dca4:	00c53021 	addu	a2,a2,a1
bfc0dca8:	8cc6b988 	lw	a2,-18040(a2)
bfc0dcac:	144304e1 	bne	v0,v1,bfc0f034 <inst_error>
bfc0dcb0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:50
bfc0dcb4:	3c09d9a5 	lui	t1,0xd9a5
bfc0dcb8:	35293a80 	ori	t1,t1,0x3a80
bfc0dcbc:	3c08800d 	lui	t0,0x800d
bfc0dcc0:	3403d9a5 	li	v1,0xd9a5
bfc0dcc4:	ad097864 	sw	t1,30820(t0)
bfc0dcc8:	25040004 	addiu	a0,t0,4
bfc0dccc:	2505fff8 	addiu	a1,t0,-8
bfc0dcd0:	ac847864 	sw	a0,30820(a0)
bfc0dcd4:	aca57864 	sw	a1,30820(a1)
bfc0dcd8:	95027866 	lhu	v0,30822(t0)
bfc0dcdc:	8c857864 	lw	a1,30820(a0)
bfc0dce0:	8ca47864 	lw	a0,30820(a1)
bfc0dce4:	8ca67864 	lw	a2,30820(a1)
bfc0dce8:	144304d2 	bne	v0,v1,bfc0f034 <inst_error>
bfc0dcec:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:51
bfc0dcf0:	3c09560c 	lui	t1,0x560c
bfc0dcf4:	3529e2f8 	ori	t1,t1,0xe2f8
bfc0dcf8:	3c08800d 	lui	t0,0x800d
bfc0dcfc:	2403560c 	li	v1,22028
bfc0dd00:	3c010001 	lui	at,0x1
bfc0dd04:	00280821 	addu	at,at,t0
bfc0dd08:	ac29cec0 	sw	t1,-12608(at)
bfc0dd0c:	25040004 	addiu	a0,t0,4
bfc0dd10:	2505fff8 	addiu	a1,t0,-8
bfc0dd14:	3c010001 	lui	at,0x1
bfc0dd18:	00240821 	addu	at,at,a0
bfc0dd1c:	ac24cec0 	sw	a0,-12608(at)
bfc0dd20:	3c010001 	lui	at,0x1
bfc0dd24:	00250821 	addu	at,at,a1
bfc0dd28:	ac25cec0 	sw	a1,-12608(at)
bfc0dd2c:	3c020001 	lui	v0,0x1
bfc0dd30:	00481021 	addu	v0,v0,t0
bfc0dd34:	9442cec2 	lhu	v0,-12606(v0)
bfc0dd38:	3c050001 	lui	a1,0x1
bfc0dd3c:	00a42821 	addu	a1,a1,a0
bfc0dd40:	8ca5cec0 	lw	a1,-12608(a1)
bfc0dd44:	3c040001 	lui	a0,0x1
bfc0dd48:	00852021 	addu	a0,a0,a1
bfc0dd4c:	8c84cec0 	lw	a0,-12608(a0)
bfc0dd50:	3c060001 	lui	a2,0x1
bfc0dd54:	00c53021 	addu	a2,a2,a1
bfc0dd58:	8cc6cec0 	lw	a2,-12608(a2)
bfc0dd5c:	144304b5 	bne	v0,v1,bfc0f034 <inst_error>
bfc0dd60:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:52
bfc0dd64:	3c095f5c 	lui	t1,0x5f5c
bfc0dd68:	35297885 	ori	t1,t1,0x7885
bfc0dd6c:	3c08800d 	lui	t0,0x800d
bfc0dd70:	24037885 	li	v1,30853
bfc0dd74:	ad096040 	sw	t1,24640(t0)
bfc0dd78:	25040004 	addiu	a0,t0,4
bfc0dd7c:	2505fff8 	addiu	a1,t0,-8
bfc0dd80:	ac846040 	sw	a0,24640(a0)
bfc0dd84:	aca56040 	sw	a1,24640(a1)
bfc0dd88:	95026040 	lhu	v0,24640(t0)
bfc0dd8c:	8c856040 	lw	a1,24640(a0)
bfc0dd90:	8ca46040 	lw	a0,24640(a1)
bfc0dd94:	8ca66040 	lw	a2,24640(a1)
bfc0dd98:	144304a6 	bne	v0,v1,bfc0f034 <inst_error>
bfc0dd9c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:53
bfc0dda0:	3c094490 	lui	t1,0x4490
bfc0dda4:	3529a4d6 	ori	t1,t1,0xa4d6
bfc0dda8:	3c08800d 	lui	t0,0x800d
bfc0ddac:	3403a4d6 	li	v1,0xa4d6
bfc0ddb0:	3c010001 	lui	at,0x1
bfc0ddb4:	00280821 	addu	at,at,t0
bfc0ddb8:	ac29b7dc 	sw	t1,-18468(at)
bfc0ddbc:	25040004 	addiu	a0,t0,4
bfc0ddc0:	2505fff8 	addiu	a1,t0,-8
bfc0ddc4:	3c010001 	lui	at,0x1
bfc0ddc8:	00240821 	addu	at,at,a0
bfc0ddcc:	ac24b7dc 	sw	a0,-18468(at)
bfc0ddd0:	3c010001 	lui	at,0x1
bfc0ddd4:	00250821 	addu	at,at,a1
bfc0ddd8:	ac25b7dc 	sw	a1,-18468(at)
bfc0dddc:	3c020001 	lui	v0,0x1
bfc0dde0:	00481021 	addu	v0,v0,t0
bfc0dde4:	9442b7dc 	lhu	v0,-18468(v0)
bfc0dde8:	3c050001 	lui	a1,0x1
bfc0ddec:	00a42821 	addu	a1,a1,a0
bfc0ddf0:	8ca5b7dc 	lw	a1,-18468(a1)
bfc0ddf4:	3c040001 	lui	a0,0x1
bfc0ddf8:	00852021 	addu	a0,a0,a1
bfc0ddfc:	8c84b7dc 	lw	a0,-18468(a0)
bfc0de00:	3c060001 	lui	a2,0x1
bfc0de04:	00c53021 	addu	a2,a2,a1
bfc0de08:	8cc6b7dc 	lw	a2,-18468(a2)
bfc0de0c:	14430489 	bne	v0,v1,bfc0f034 <inst_error>
bfc0de10:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:54
bfc0de14:	3c093773 	lui	t1,0x3773
bfc0de18:	3529e260 	ori	t1,t1,0xe260
bfc0de1c:	3c08800d 	lui	t0,0x800d
bfc0de20:	24033773 	li	v1,14195
bfc0de24:	3c010001 	lui	at,0x1
bfc0de28:	00280821 	addu	at,at,t0
bfc0de2c:	ac29e7ac 	sw	t1,-6228(at)
bfc0de30:	25040004 	addiu	a0,t0,4
bfc0de34:	2505fff8 	addiu	a1,t0,-8
bfc0de38:	3c010001 	lui	at,0x1
bfc0de3c:	00240821 	addu	at,at,a0
bfc0de40:	ac24e7ac 	sw	a0,-6228(at)
bfc0de44:	3c010001 	lui	at,0x1
bfc0de48:	00250821 	addu	at,at,a1
bfc0de4c:	ac25e7ac 	sw	a1,-6228(at)
bfc0de50:	3c020001 	lui	v0,0x1
bfc0de54:	00481021 	addu	v0,v0,t0
bfc0de58:	9442e7ae 	lhu	v0,-6226(v0)
bfc0de5c:	3c050001 	lui	a1,0x1
bfc0de60:	00a42821 	addu	a1,a1,a0
bfc0de64:	8ca5e7ac 	lw	a1,-6228(a1)
bfc0de68:	3c040001 	lui	a0,0x1
bfc0de6c:	00852021 	addu	a0,a0,a1
bfc0de70:	8c84e7ac 	lw	a0,-6228(a0)
bfc0de74:	3c060001 	lui	a2,0x1
bfc0de78:	00c53021 	addu	a2,a2,a1
bfc0de7c:	8cc6e7ac 	lw	a2,-6228(a2)
bfc0de80:	1443046c 	bne	v0,v1,bfc0f034 <inst_error>
bfc0de84:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:55
bfc0de88:	3c09c030 	lui	t1,0xc030
bfc0de8c:	3529663c 	ori	t1,t1,0x663c
bfc0de90:	3c08800d 	lui	t0,0x800d
bfc0de94:	2403663c 	li	v1,26172
bfc0de98:	3c010001 	lui	at,0x1
bfc0de9c:	00280821 	addu	at,at,t0
bfc0dea0:	ac2987c0 	sw	t1,-30784(at)
bfc0dea4:	25040004 	addiu	a0,t0,4
bfc0dea8:	2505fff8 	addiu	a1,t0,-8
bfc0deac:	3c010001 	lui	at,0x1
bfc0deb0:	00240821 	addu	at,at,a0
bfc0deb4:	ac2487c0 	sw	a0,-30784(at)
bfc0deb8:	3c010001 	lui	at,0x1
bfc0debc:	00250821 	addu	at,at,a1
bfc0dec0:	ac2587c0 	sw	a1,-30784(at)
bfc0dec4:	3c020001 	lui	v0,0x1
bfc0dec8:	00481021 	addu	v0,v0,t0
bfc0decc:	944287c0 	lhu	v0,-30784(v0)
bfc0ded0:	3c050001 	lui	a1,0x1
bfc0ded4:	00a42821 	addu	a1,a1,a0
bfc0ded8:	8ca587c0 	lw	a1,-30784(a1)
bfc0dedc:	3c040001 	lui	a0,0x1
bfc0dee0:	00852021 	addu	a0,a0,a1
bfc0dee4:	8c8487c0 	lw	a0,-30784(a0)
bfc0dee8:	3c060001 	lui	a2,0x1
bfc0deec:	00c53021 	addu	a2,a2,a1
bfc0def0:	8cc687c0 	lw	a2,-30784(a2)
bfc0def4:	1443044f 	bne	v0,v1,bfc0f034 <inst_error>
bfc0def8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:56
bfc0defc:	3c091ae3 	lui	t1,0x1ae3
bfc0df00:	35293eb0 	ori	t1,t1,0x3eb0
bfc0df04:	3c08800d 	lui	t0,0x800d
bfc0df08:	24033eb0 	li	v1,16048
bfc0df0c:	3c010001 	lui	at,0x1
bfc0df10:	00280821 	addu	at,at,t0
bfc0df14:	ac29fad8 	sw	t1,-1320(at)
bfc0df18:	25040004 	addiu	a0,t0,4
bfc0df1c:	2505fff8 	addiu	a1,t0,-8
bfc0df20:	3c010001 	lui	at,0x1
bfc0df24:	00240821 	addu	at,at,a0
bfc0df28:	ac24fad8 	sw	a0,-1320(at)
bfc0df2c:	3c010001 	lui	at,0x1
bfc0df30:	00250821 	addu	at,at,a1
bfc0df34:	ac25fad8 	sw	a1,-1320(at)
bfc0df38:	3c020001 	lui	v0,0x1
bfc0df3c:	00481021 	addu	v0,v0,t0
bfc0df40:	9442fad8 	lhu	v0,-1320(v0)
bfc0df44:	3c050001 	lui	a1,0x1
bfc0df48:	00a42821 	addu	a1,a1,a0
bfc0df4c:	8ca5fad8 	lw	a1,-1320(a1)
bfc0df50:	3c040001 	lui	a0,0x1
bfc0df54:	00852021 	addu	a0,a0,a1
bfc0df58:	8c84fad8 	lw	a0,-1320(a0)
bfc0df5c:	3c060001 	lui	a2,0x1
bfc0df60:	00c53021 	addu	a2,a2,a1
bfc0df64:	8cc6fad8 	lw	a2,-1320(a2)
bfc0df68:	14430432 	bne	v0,v1,bfc0f034 <inst_error>
bfc0df6c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:57
bfc0df70:	3c0998b6 	lui	t1,0x98b6
bfc0df74:	3529446a 	ori	t1,t1,0x446a
bfc0df78:	3c08800d 	lui	t0,0x800d
bfc0df7c:	2403446a 	li	v1,17514
bfc0df80:	ad094a54 	sw	t1,19028(t0)
bfc0df84:	25040004 	addiu	a0,t0,4
bfc0df88:	2505fff8 	addiu	a1,t0,-8
bfc0df8c:	ac844a54 	sw	a0,19028(a0)
bfc0df90:	aca54a54 	sw	a1,19028(a1)
bfc0df94:	95024a54 	lhu	v0,19028(t0)
bfc0df98:	8c854a54 	lw	a1,19028(a0)
bfc0df9c:	8ca44a54 	lw	a0,19028(a1)
bfc0dfa0:	8ca64a54 	lw	a2,19028(a1)
bfc0dfa4:	14430423 	bne	v0,v1,bfc0f034 <inst_error>
bfc0dfa8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:58
bfc0dfac:	3c097140 	lui	t1,0x7140
bfc0dfb0:	35298da5 	ori	t1,t1,0x8da5
bfc0dfb4:	3c08800d 	lui	t0,0x800d
bfc0dfb8:	24037140 	li	v1,28992
bfc0dfbc:	ad091550 	sw	t1,5456(t0)
bfc0dfc0:	25040004 	addiu	a0,t0,4
bfc0dfc4:	2505fff8 	addiu	a1,t0,-8
bfc0dfc8:	ac841550 	sw	a0,5456(a0)
bfc0dfcc:	aca51550 	sw	a1,5456(a1)
bfc0dfd0:	95021552 	lhu	v0,5458(t0)
bfc0dfd4:	8c851550 	lw	a1,5456(a0)
bfc0dfd8:	8ca41550 	lw	a0,5456(a1)
bfc0dfdc:	8ca61550 	lw	a2,5456(a1)
bfc0dfe0:	14430414 	bne	v0,v1,bfc0f034 <inst_error>
bfc0dfe4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:59
bfc0dfe8:	3c09f770 	lui	t1,0xf770
bfc0dfec:	3529e08c 	ori	t1,t1,0xe08c
bfc0dff0:	3c08800d 	lui	t0,0x800d
bfc0dff4:	3403e08c 	li	v1,0xe08c
bfc0dff8:	ad094f5c 	sw	t1,20316(t0)
bfc0dffc:	25040004 	addiu	a0,t0,4
bfc0e000:	2505fff8 	addiu	a1,t0,-8
bfc0e004:	ac844f5c 	sw	a0,20316(a0)
bfc0e008:	aca54f5c 	sw	a1,20316(a1)
bfc0e00c:	95024f5c 	lhu	v0,20316(t0)
bfc0e010:	8c854f5c 	lw	a1,20316(a0)
bfc0e014:	8ca44f5c 	lw	a0,20316(a1)
bfc0e018:	8ca64f5c 	lw	a2,20316(a1)
bfc0e01c:	14430405 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e020:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:60
bfc0e024:	3c0985d9 	lui	t1,0x85d9
bfc0e028:	3529af84 	ori	t1,t1,0xaf84
bfc0e02c:	3c08800d 	lui	t0,0x800d
bfc0e030:	340385d9 	li	v1,0x85d9
bfc0e034:	3c010001 	lui	at,0x1
bfc0e038:	00280821 	addu	at,at,t0
bfc0e03c:	ac2998ec 	sw	t1,-26388(at)
bfc0e040:	25040004 	addiu	a0,t0,4
bfc0e044:	2505fff8 	addiu	a1,t0,-8
bfc0e048:	3c010001 	lui	at,0x1
bfc0e04c:	00240821 	addu	at,at,a0
bfc0e050:	ac2498ec 	sw	a0,-26388(at)
bfc0e054:	3c010001 	lui	at,0x1
bfc0e058:	00250821 	addu	at,at,a1
bfc0e05c:	ac2598ec 	sw	a1,-26388(at)
bfc0e060:	3c020001 	lui	v0,0x1
bfc0e064:	00481021 	addu	v0,v0,t0
bfc0e068:	944298ee 	lhu	v0,-26386(v0)
bfc0e06c:	3c050001 	lui	a1,0x1
bfc0e070:	00a42821 	addu	a1,a1,a0
bfc0e074:	8ca598ec 	lw	a1,-26388(a1)
bfc0e078:	3c040001 	lui	a0,0x1
bfc0e07c:	00852021 	addu	a0,a0,a1
bfc0e080:	8c8498ec 	lw	a0,-26388(a0)
bfc0e084:	3c060001 	lui	a2,0x1
bfc0e088:	00c53021 	addu	a2,a2,a1
bfc0e08c:	8cc698ec 	lw	a2,-26388(a2)
bfc0e090:	144303e8 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e094:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:61
bfc0e098:	3c096c75 	lui	t1,0x6c75
bfc0e09c:	35291620 	ori	t1,t1,0x1620
bfc0e0a0:	3c08800d 	lui	t0,0x800d
bfc0e0a4:	24031620 	li	v1,5664
bfc0e0a8:	ad094540 	sw	t1,17728(t0)
bfc0e0ac:	25040004 	addiu	a0,t0,4
bfc0e0b0:	2505fff8 	addiu	a1,t0,-8
bfc0e0b4:	ac844540 	sw	a0,17728(a0)
bfc0e0b8:	aca54540 	sw	a1,17728(a1)
bfc0e0bc:	95024540 	lhu	v0,17728(t0)
bfc0e0c0:	8c854540 	lw	a1,17728(a0)
bfc0e0c4:	8ca44540 	lw	a0,17728(a1)
bfc0e0c8:	8ca64540 	lw	a2,17728(a1)
bfc0e0cc:	144303d9 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e0d0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:62
bfc0e0d4:	3c093ee7 	lui	t1,0x3ee7
bfc0e0d8:	3529efac 	ori	t1,t1,0xefac
bfc0e0dc:	3c08800d 	lui	t0,0x800d
bfc0e0e0:	3403efac 	li	v1,0xefac
bfc0e0e4:	ad092f20 	sw	t1,12064(t0)
bfc0e0e8:	25040004 	addiu	a0,t0,4
bfc0e0ec:	2505fff8 	addiu	a1,t0,-8
bfc0e0f0:	ac842f20 	sw	a0,12064(a0)
bfc0e0f4:	aca52f20 	sw	a1,12064(a1)
bfc0e0f8:	95022f20 	lhu	v0,12064(t0)
bfc0e0fc:	8c852f20 	lw	a1,12064(a0)
bfc0e100:	8ca42f20 	lw	a0,12064(a1)
bfc0e104:	8ca62f20 	lw	a2,12064(a1)
bfc0e108:	144303ca 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e10c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:63
bfc0e110:	3c094ff9 	lui	t1,0x4ff9
bfc0e114:	352944b5 	ori	t1,t1,0x44b5
bfc0e118:	3c08800d 	lui	t0,0x800d
bfc0e11c:	24034ff9 	li	v1,20473
bfc0e120:	3c010001 	lui	at,0x1
bfc0e124:	00280821 	addu	at,at,t0
bfc0e128:	ac29e73c 	sw	t1,-6340(at)
bfc0e12c:	25040004 	addiu	a0,t0,4
bfc0e130:	2505fff8 	addiu	a1,t0,-8
bfc0e134:	3c010001 	lui	at,0x1
bfc0e138:	00240821 	addu	at,at,a0
bfc0e13c:	ac24e73c 	sw	a0,-6340(at)
bfc0e140:	3c010001 	lui	at,0x1
bfc0e144:	00250821 	addu	at,at,a1
bfc0e148:	ac25e73c 	sw	a1,-6340(at)
bfc0e14c:	3c020001 	lui	v0,0x1
bfc0e150:	00481021 	addu	v0,v0,t0
bfc0e154:	9442e73e 	lhu	v0,-6338(v0)
bfc0e158:	3c050001 	lui	a1,0x1
bfc0e15c:	00a42821 	addu	a1,a1,a0
bfc0e160:	8ca5e73c 	lw	a1,-6340(a1)
bfc0e164:	3c040001 	lui	a0,0x1
bfc0e168:	00852021 	addu	a0,a0,a1
bfc0e16c:	8c84e73c 	lw	a0,-6340(a0)
bfc0e170:	3c060001 	lui	a2,0x1
bfc0e174:	00c53021 	addu	a2,a2,a1
bfc0e178:	8cc6e73c 	lw	a2,-6340(a2)
bfc0e17c:	144303ad 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e180:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:64
bfc0e184:	3c0917f3 	lui	t1,0x17f3
bfc0e188:	3529a4e0 	ori	t1,t1,0xa4e0
bfc0e18c:	3c08800d 	lui	t0,0x800d
bfc0e190:	3403a4e0 	li	v1,0xa4e0
bfc0e194:	ad096cfc 	sw	t1,27900(t0)
bfc0e198:	25040004 	addiu	a0,t0,4
bfc0e19c:	2505fff8 	addiu	a1,t0,-8
bfc0e1a0:	ac846cfc 	sw	a0,27900(a0)
bfc0e1a4:	aca56cfc 	sw	a1,27900(a1)
bfc0e1a8:	95026cfc 	lhu	v0,27900(t0)
bfc0e1ac:	8c856cfc 	lw	a1,27900(a0)
bfc0e1b0:	8ca46cfc 	lw	a0,27900(a1)
bfc0e1b4:	8ca66cfc 	lw	a2,27900(a1)
bfc0e1b8:	1443039e 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e1bc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:65
bfc0e1c0:	3c09ff75 	lui	t1,0xff75
bfc0e1c4:	352914e0 	ori	t1,t1,0x14e0
bfc0e1c8:	3c08800d 	lui	t0,0x800d
bfc0e1cc:	3403ff75 	li	v1,0xff75
bfc0e1d0:	ad094460 	sw	t1,17504(t0)
bfc0e1d4:	25040004 	addiu	a0,t0,4
bfc0e1d8:	2505fff8 	addiu	a1,t0,-8
bfc0e1dc:	ac844460 	sw	a0,17504(a0)
bfc0e1e0:	aca54460 	sw	a1,17504(a1)
bfc0e1e4:	95024462 	lhu	v0,17506(t0)
bfc0e1e8:	8c854460 	lw	a1,17504(a0)
bfc0e1ec:	8ca44460 	lw	a0,17504(a1)
bfc0e1f0:	8ca64460 	lw	a2,17504(a1)
bfc0e1f4:	1443038f 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e1f8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:66
bfc0e1fc:	3c09343a 	lui	t1,0x343a
bfc0e200:	35293fd0 	ori	t1,t1,0x3fd0
bfc0e204:	3c08800d 	lui	t0,0x800d
bfc0e208:	24033fd0 	li	v1,16336
bfc0e20c:	ad094b00 	sw	t1,19200(t0)
bfc0e210:	25040004 	addiu	a0,t0,4
bfc0e214:	2505fff8 	addiu	a1,t0,-8
bfc0e218:	ac844b00 	sw	a0,19200(a0)
bfc0e21c:	aca54b00 	sw	a1,19200(a1)
bfc0e220:	95024b00 	lhu	v0,19200(t0)
bfc0e224:	8c854b00 	lw	a1,19200(a0)
bfc0e228:	8ca44b00 	lw	a0,19200(a1)
bfc0e22c:	8ca64b00 	lw	a2,19200(a1)
bfc0e230:	14430380 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e234:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:67
bfc0e238:	3c09dde8 	lui	t1,0xdde8
bfc0e23c:	35294990 	ori	t1,t1,0x4990
bfc0e240:	3c08800d 	lui	t0,0x800d
bfc0e244:	3403dde8 	li	v1,0xdde8
bfc0e248:	3c010001 	lui	at,0x1
bfc0e24c:	00280821 	addu	at,at,t0
bfc0e250:	ac29dcd4 	sw	t1,-9004(at)
bfc0e254:	25040004 	addiu	a0,t0,4
bfc0e258:	2505fff8 	addiu	a1,t0,-8
bfc0e25c:	3c010001 	lui	at,0x1
bfc0e260:	00240821 	addu	at,at,a0
bfc0e264:	ac24dcd4 	sw	a0,-9004(at)
bfc0e268:	3c010001 	lui	at,0x1
bfc0e26c:	00250821 	addu	at,at,a1
bfc0e270:	ac25dcd4 	sw	a1,-9004(at)
bfc0e274:	3c020001 	lui	v0,0x1
bfc0e278:	00481021 	addu	v0,v0,t0
bfc0e27c:	9442dcd6 	lhu	v0,-9002(v0)
bfc0e280:	3c050001 	lui	a1,0x1
bfc0e284:	00a42821 	addu	a1,a1,a0
bfc0e288:	8ca5dcd4 	lw	a1,-9004(a1)
bfc0e28c:	3c040001 	lui	a0,0x1
bfc0e290:	00852021 	addu	a0,a0,a1
bfc0e294:	8c84dcd4 	lw	a0,-9004(a0)
bfc0e298:	3c060001 	lui	a2,0x1
bfc0e29c:	00c53021 	addu	a2,a2,a1
bfc0e2a0:	8cc6dcd4 	lw	a2,-9004(a2)
bfc0e2a4:	14430363 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e2a8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:68
bfc0e2ac:	3c0963ea 	lui	t1,0x63ea
bfc0e2b0:	3529e1b4 	ori	t1,t1,0xe1b4
bfc0e2b4:	3c08800d 	lui	t0,0x800d
bfc0e2b8:	3403e1b4 	li	v1,0xe1b4
bfc0e2bc:	3c010001 	lui	at,0x1
bfc0e2c0:	00280821 	addu	at,at,t0
bfc0e2c4:	ac29fc1c 	sw	t1,-996(at)
bfc0e2c8:	25040004 	addiu	a0,t0,4
bfc0e2cc:	2505fff8 	addiu	a1,t0,-8
bfc0e2d0:	3c010001 	lui	at,0x1
bfc0e2d4:	00240821 	addu	at,at,a0
bfc0e2d8:	ac24fc1c 	sw	a0,-996(at)
bfc0e2dc:	3c010001 	lui	at,0x1
bfc0e2e0:	00250821 	addu	at,at,a1
bfc0e2e4:	ac25fc1c 	sw	a1,-996(at)
bfc0e2e8:	3c020001 	lui	v0,0x1
bfc0e2ec:	00481021 	addu	v0,v0,t0
bfc0e2f0:	9442fc1c 	lhu	v0,-996(v0)
bfc0e2f4:	3c050001 	lui	a1,0x1
bfc0e2f8:	00a42821 	addu	a1,a1,a0
bfc0e2fc:	8ca5fc1c 	lw	a1,-996(a1)
bfc0e300:	3c040001 	lui	a0,0x1
bfc0e304:	00852021 	addu	a0,a0,a1
bfc0e308:	8c84fc1c 	lw	a0,-996(a0)
bfc0e30c:	3c060001 	lui	a2,0x1
bfc0e310:	00c53021 	addu	a2,a2,a1
bfc0e314:	8cc6fc1c 	lw	a2,-996(a2)
bfc0e318:	14430346 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e31c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:69
bfc0e320:	3c09b899 	lui	t1,0xb899
bfc0e324:	352937ac 	ori	t1,t1,0x37ac
bfc0e328:	3c08800d 	lui	t0,0x800d
bfc0e32c:	240337ac 	li	v1,14252
bfc0e330:	ad090f28 	sw	t1,3880(t0)
bfc0e334:	25040004 	addiu	a0,t0,4
bfc0e338:	2505fff8 	addiu	a1,t0,-8
bfc0e33c:	ac840f28 	sw	a0,3880(a0)
bfc0e340:	aca50f28 	sw	a1,3880(a1)
bfc0e344:	95020f28 	lhu	v0,3880(t0)
bfc0e348:	8c850f28 	lw	a1,3880(a0)
bfc0e34c:	8ca40f28 	lw	a0,3880(a1)
bfc0e350:	8ca60f28 	lw	a2,3880(a1)
bfc0e354:	14430337 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e358:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:70
bfc0e35c:	3c095b12 	lui	t1,0x5b12
bfc0e360:	3529d590 	ori	t1,t1,0xd590
bfc0e364:	3c08800d 	lui	t0,0x800d
bfc0e368:	24035b12 	li	v1,23314
bfc0e36c:	ad0906cc 	sw	t1,1740(t0)
bfc0e370:	25040004 	addiu	a0,t0,4
bfc0e374:	2505fff8 	addiu	a1,t0,-8
bfc0e378:	ac8406cc 	sw	a0,1740(a0)
bfc0e37c:	aca506cc 	sw	a1,1740(a1)
bfc0e380:	950206ce 	lhu	v0,1742(t0)
bfc0e384:	8c8506cc 	lw	a1,1740(a0)
bfc0e388:	8ca406cc 	lw	a0,1740(a1)
bfc0e38c:	8ca606cc 	lw	a2,1740(a1)
bfc0e390:	14430328 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e394:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:71
bfc0e398:	3c099246 	lui	t1,0x9246
bfc0e39c:	35299cd8 	ori	t1,t1,0x9cd8
bfc0e3a0:	3c08800d 	lui	t0,0x800d
bfc0e3a4:	34039cd8 	li	v1,0x9cd8
bfc0e3a8:	3c010001 	lui	at,0x1
bfc0e3ac:	00280821 	addu	at,at,t0
bfc0e3b0:	ac29cde0 	sw	t1,-12832(at)
bfc0e3b4:	25040004 	addiu	a0,t0,4
bfc0e3b8:	2505fff8 	addiu	a1,t0,-8
bfc0e3bc:	3c010001 	lui	at,0x1
bfc0e3c0:	00240821 	addu	at,at,a0
bfc0e3c4:	ac24cde0 	sw	a0,-12832(at)
bfc0e3c8:	3c010001 	lui	at,0x1
bfc0e3cc:	00250821 	addu	at,at,a1
bfc0e3d0:	ac25cde0 	sw	a1,-12832(at)
bfc0e3d4:	3c020001 	lui	v0,0x1
bfc0e3d8:	00481021 	addu	v0,v0,t0
bfc0e3dc:	9442cde0 	lhu	v0,-12832(v0)
bfc0e3e0:	3c050001 	lui	a1,0x1
bfc0e3e4:	00a42821 	addu	a1,a1,a0
bfc0e3e8:	8ca5cde0 	lw	a1,-12832(a1)
bfc0e3ec:	3c040001 	lui	a0,0x1
bfc0e3f0:	00852021 	addu	a0,a0,a1
bfc0e3f4:	8c84cde0 	lw	a0,-12832(a0)
bfc0e3f8:	3c060001 	lui	a2,0x1
bfc0e3fc:	00c53021 	addu	a2,a2,a1
bfc0e400:	8cc6cde0 	lw	a2,-12832(a2)
bfc0e404:	1443030b 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e408:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:72
bfc0e40c:	3c09f9f1 	lui	t1,0xf9f1
bfc0e410:	352957b4 	ori	t1,t1,0x57b4
bfc0e414:	3c08800d 	lui	t0,0x800d
bfc0e418:	3403f9f1 	li	v1,0xf9f1
bfc0e41c:	ad09026c 	sw	t1,620(t0)
bfc0e420:	25040004 	addiu	a0,t0,4
bfc0e424:	2505fff8 	addiu	a1,t0,-8
bfc0e428:	ac84026c 	sw	a0,620(a0)
bfc0e42c:	aca5026c 	sw	a1,620(a1)
bfc0e430:	9502026e 	lhu	v0,622(t0)
bfc0e434:	8c85026c 	lw	a1,620(a0)
bfc0e438:	8ca4026c 	lw	a0,620(a1)
bfc0e43c:	8ca6026c 	lw	a2,620(a1)
bfc0e440:	144302fc 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e444:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:73
bfc0e448:	3c098ef2 	lui	t1,0x8ef2
bfc0e44c:	35294670 	ori	t1,t1,0x4670
bfc0e450:	3c08800d 	lui	t0,0x800d
bfc0e454:	24034670 	li	v1,18032
bfc0e458:	ad0972c4 	sw	t1,29380(t0)
bfc0e45c:	25040004 	addiu	a0,t0,4
bfc0e460:	2505fff8 	addiu	a1,t0,-8
bfc0e464:	ac8472c4 	sw	a0,29380(a0)
bfc0e468:	aca572c4 	sw	a1,29380(a1)
bfc0e46c:	950272c4 	lhu	v0,29380(t0)
bfc0e470:	8c8572c4 	lw	a1,29380(a0)
bfc0e474:	8ca472c4 	lw	a0,29380(a1)
bfc0e478:	8ca672c4 	lw	a2,29380(a1)
bfc0e47c:	144302ed 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e480:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:74
bfc0e484:	3c09d21d 	lui	t1,0xd21d
bfc0e488:	3529d8d4 	ori	t1,t1,0xd8d4
bfc0e48c:	3c08800d 	lui	t0,0x800d
bfc0e490:	3403d8d4 	li	v1,0xd8d4
bfc0e494:	ad090e6c 	sw	t1,3692(t0)
bfc0e498:	25040004 	addiu	a0,t0,4
bfc0e49c:	2505fff8 	addiu	a1,t0,-8
bfc0e4a0:	ac840e6c 	sw	a0,3692(a0)
bfc0e4a4:	aca50e6c 	sw	a1,3692(a1)
bfc0e4a8:	95020e6c 	lhu	v0,3692(t0)
bfc0e4ac:	8c850e6c 	lw	a1,3692(a0)
bfc0e4b0:	8ca40e6c 	lw	a0,3692(a1)
bfc0e4b4:	8ca60e6c 	lw	a2,3692(a1)
bfc0e4b8:	144302de 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e4bc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:75
bfc0e4c0:	3c094a81 	lui	t1,0x4a81
bfc0e4c4:	35297048 	ori	t1,t1,0x7048
bfc0e4c8:	3c08800d 	lui	t0,0x800d
bfc0e4cc:	24037048 	li	v1,28744
bfc0e4d0:	3c010001 	lui	at,0x1
bfc0e4d4:	00280821 	addu	at,at,t0
bfc0e4d8:	ac29ada0 	sw	t1,-21088(at)
bfc0e4dc:	25040004 	addiu	a0,t0,4
bfc0e4e0:	2505fff8 	addiu	a1,t0,-8
bfc0e4e4:	3c010001 	lui	at,0x1
bfc0e4e8:	00240821 	addu	at,at,a0
bfc0e4ec:	ac24ada0 	sw	a0,-21088(at)
bfc0e4f0:	3c010001 	lui	at,0x1
bfc0e4f4:	00250821 	addu	at,at,a1
bfc0e4f8:	ac25ada0 	sw	a1,-21088(at)
bfc0e4fc:	3c020001 	lui	v0,0x1
bfc0e500:	00481021 	addu	v0,v0,t0
bfc0e504:	9442ada0 	lhu	v0,-21088(v0)
bfc0e508:	3c050001 	lui	a1,0x1
bfc0e50c:	00a42821 	addu	a1,a1,a0
bfc0e510:	8ca5ada0 	lw	a1,-21088(a1)
bfc0e514:	3c040001 	lui	a0,0x1
bfc0e518:	00852021 	addu	a0,a0,a1
bfc0e51c:	8c84ada0 	lw	a0,-21088(a0)
bfc0e520:	3c060001 	lui	a2,0x1
bfc0e524:	00c53021 	addu	a2,a2,a1
bfc0e528:	8cc6ada0 	lw	a2,-21088(a2)
bfc0e52c:	144302c1 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e530:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:76
bfc0e534:	3c09c724 	lui	t1,0xc724
bfc0e538:	352984d3 	ori	t1,t1,0x84d3
bfc0e53c:	3c08800d 	lui	t0,0x800d
bfc0e540:	340384d3 	li	v1,0x84d3
bfc0e544:	3c010001 	lui	at,0x1
bfc0e548:	00280821 	addu	at,at,t0
bfc0e54c:	ac29e128 	sw	t1,-7896(at)
bfc0e550:	25040004 	addiu	a0,t0,4
bfc0e554:	2505fff8 	addiu	a1,t0,-8
bfc0e558:	3c010001 	lui	at,0x1
bfc0e55c:	00240821 	addu	at,at,a0
bfc0e560:	ac24e128 	sw	a0,-7896(at)
bfc0e564:	3c010001 	lui	at,0x1
bfc0e568:	00250821 	addu	at,at,a1
bfc0e56c:	ac25e128 	sw	a1,-7896(at)
bfc0e570:	3c020001 	lui	v0,0x1
bfc0e574:	00481021 	addu	v0,v0,t0
bfc0e578:	9442e128 	lhu	v0,-7896(v0)
bfc0e57c:	3c050001 	lui	a1,0x1
bfc0e580:	00a42821 	addu	a1,a1,a0
bfc0e584:	8ca5e128 	lw	a1,-7896(a1)
bfc0e588:	3c040001 	lui	a0,0x1
bfc0e58c:	00852021 	addu	a0,a0,a1
bfc0e590:	8c84e128 	lw	a0,-7896(a0)
bfc0e594:	3c060001 	lui	a2,0x1
bfc0e598:	00c53021 	addu	a2,a2,a1
bfc0e59c:	8cc6e128 	lw	a2,-7896(a2)
bfc0e5a0:	144302a4 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e5a4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:77
bfc0e5a8:	3c093c69 	lui	t1,0x3c69
bfc0e5ac:	3529df38 	ori	t1,t1,0xdf38
bfc0e5b0:	3c08800d 	lui	t0,0x800d
bfc0e5b4:	24033c69 	li	v1,15465
bfc0e5b8:	ad0961a8 	sw	t1,25000(t0)
bfc0e5bc:	25040004 	addiu	a0,t0,4
bfc0e5c0:	2505fff8 	addiu	a1,t0,-8
bfc0e5c4:	ac8461a8 	sw	a0,25000(a0)
bfc0e5c8:	aca561a8 	sw	a1,25000(a1)
bfc0e5cc:	950261aa 	lhu	v0,25002(t0)
bfc0e5d0:	8c8561a8 	lw	a1,25000(a0)
bfc0e5d4:	8ca461a8 	lw	a0,25000(a1)
bfc0e5d8:	8ca661a8 	lw	a2,25000(a1)
bfc0e5dc:	14430295 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e5e0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:78
bfc0e5e4:	3c0940bb 	lui	t1,0x40bb
bfc0e5e8:	35291d20 	ori	t1,t1,0x1d20
bfc0e5ec:	3c08800d 	lui	t0,0x800d
bfc0e5f0:	24031d20 	li	v1,7456
bfc0e5f4:	3c010001 	lui	at,0x1
bfc0e5f8:	00280821 	addu	at,at,t0
bfc0e5fc:	ac29cd88 	sw	t1,-12920(at)
bfc0e600:	25040004 	addiu	a0,t0,4
bfc0e604:	2505fff8 	addiu	a1,t0,-8
bfc0e608:	3c010001 	lui	at,0x1
bfc0e60c:	00240821 	addu	at,at,a0
bfc0e610:	ac24cd88 	sw	a0,-12920(at)
bfc0e614:	3c010001 	lui	at,0x1
bfc0e618:	00250821 	addu	at,at,a1
bfc0e61c:	ac25cd88 	sw	a1,-12920(at)
bfc0e620:	3c020001 	lui	v0,0x1
bfc0e624:	00481021 	addu	v0,v0,t0
bfc0e628:	9442cd88 	lhu	v0,-12920(v0)
bfc0e62c:	3c050001 	lui	a1,0x1
bfc0e630:	00a42821 	addu	a1,a1,a0
bfc0e634:	8ca5cd88 	lw	a1,-12920(a1)
bfc0e638:	3c040001 	lui	a0,0x1
bfc0e63c:	00852021 	addu	a0,a0,a1
bfc0e640:	8c84cd88 	lw	a0,-12920(a0)
bfc0e644:	3c060001 	lui	a2,0x1
bfc0e648:	00c53021 	addu	a2,a2,a1
bfc0e64c:	8cc6cd88 	lw	a2,-12920(a2)
bfc0e650:	14430278 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e654:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:79
bfc0e658:	3c096fd0 	lui	t1,0x6fd0
bfc0e65c:	352977e8 	ori	t1,t1,0x77e8
bfc0e660:	3c08800d 	lui	t0,0x800d
bfc0e664:	24036fd0 	li	v1,28624
bfc0e668:	3c010001 	lui	at,0x1
bfc0e66c:	00280821 	addu	at,at,t0
bfc0e670:	ac29bef0 	sw	t1,-16656(at)
bfc0e674:	25040004 	addiu	a0,t0,4
bfc0e678:	2505fff8 	addiu	a1,t0,-8
bfc0e67c:	3c010001 	lui	at,0x1
bfc0e680:	00240821 	addu	at,at,a0
bfc0e684:	ac24bef0 	sw	a0,-16656(at)
bfc0e688:	3c010001 	lui	at,0x1
bfc0e68c:	00250821 	addu	at,at,a1
bfc0e690:	ac25bef0 	sw	a1,-16656(at)
bfc0e694:	3c020001 	lui	v0,0x1
bfc0e698:	00481021 	addu	v0,v0,t0
bfc0e69c:	9442bef2 	lhu	v0,-16654(v0)
bfc0e6a0:	3c050001 	lui	a1,0x1
bfc0e6a4:	00a42821 	addu	a1,a1,a0
bfc0e6a8:	8ca5bef0 	lw	a1,-16656(a1)
bfc0e6ac:	3c040001 	lui	a0,0x1
bfc0e6b0:	00852021 	addu	a0,a0,a1
bfc0e6b4:	8c84bef0 	lw	a0,-16656(a0)
bfc0e6b8:	3c060001 	lui	a2,0x1
bfc0e6bc:	00c53021 	addu	a2,a2,a1
bfc0e6c0:	8cc6bef0 	lw	a2,-16656(a2)
bfc0e6c4:	1443025b 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e6c8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:80
bfc0e6cc:	3c093065 	lui	t1,0x3065
bfc0e6d0:	35295800 	ori	t1,t1,0x5800
bfc0e6d4:	3c08800d 	lui	t0,0x800d
bfc0e6d8:	24033065 	li	v1,12389
bfc0e6dc:	ad093cf4 	sw	t1,15604(t0)
bfc0e6e0:	25040004 	addiu	a0,t0,4
bfc0e6e4:	2505fff8 	addiu	a1,t0,-8
bfc0e6e8:	ac843cf4 	sw	a0,15604(a0)
bfc0e6ec:	aca53cf4 	sw	a1,15604(a1)
bfc0e6f0:	95023cf6 	lhu	v0,15606(t0)
bfc0e6f4:	8c853cf4 	lw	a1,15604(a0)
bfc0e6f8:	8ca43cf4 	lw	a0,15604(a1)
bfc0e6fc:	8ca63cf4 	lw	a2,15604(a1)
bfc0e700:	1443024c 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e704:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:81
bfc0e708:	3c09a6da 	lui	t1,0xa6da
bfc0e70c:	3529d5ca 	ori	t1,t1,0xd5ca
bfc0e710:	3c08800d 	lui	t0,0x800d
bfc0e714:	3403d5ca 	li	v1,0xd5ca
bfc0e718:	ad094bb8 	sw	t1,19384(t0)
bfc0e71c:	25040004 	addiu	a0,t0,4
bfc0e720:	2505fff8 	addiu	a1,t0,-8
bfc0e724:	ac844bb8 	sw	a0,19384(a0)
bfc0e728:	aca54bb8 	sw	a1,19384(a1)
bfc0e72c:	95024bb8 	lhu	v0,19384(t0)
bfc0e730:	8c854bb8 	lw	a1,19384(a0)
bfc0e734:	8ca44bb8 	lw	a0,19384(a1)
bfc0e738:	8ca64bb8 	lw	a2,19384(a1)
bfc0e73c:	1443023d 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e740:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:82
bfc0e744:	3c090eaa 	lui	t1,0xeaa
bfc0e748:	35290400 	ori	t1,t1,0x400
bfc0e74c:	3c08800d 	lui	t0,0x800d
bfc0e750:	24030400 	li	v1,1024
bfc0e754:	ad091250 	sw	t1,4688(t0)
bfc0e758:	25040004 	addiu	a0,t0,4
bfc0e75c:	2505fff8 	addiu	a1,t0,-8
bfc0e760:	ac841250 	sw	a0,4688(a0)
bfc0e764:	aca51250 	sw	a1,4688(a1)
bfc0e768:	95021250 	lhu	v0,4688(t0)
bfc0e76c:	8c851250 	lw	a1,4688(a0)
bfc0e770:	8ca41250 	lw	a0,4688(a1)
bfc0e774:	8ca61250 	lw	a2,4688(a1)
bfc0e778:	1443022e 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e77c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:83
bfc0e780:	3c09eaf4 	lui	t1,0xeaf4
bfc0e784:	35297838 	ori	t1,t1,0x7838
bfc0e788:	3c08800d 	lui	t0,0x800d
bfc0e78c:	24037838 	li	v1,30776
bfc0e790:	ad092d30 	sw	t1,11568(t0)
bfc0e794:	25040004 	addiu	a0,t0,4
bfc0e798:	2505fff8 	addiu	a1,t0,-8
bfc0e79c:	ac842d30 	sw	a0,11568(a0)
bfc0e7a0:	aca52d30 	sw	a1,11568(a1)
bfc0e7a4:	95022d30 	lhu	v0,11568(t0)
bfc0e7a8:	8c852d30 	lw	a1,11568(a0)
bfc0e7ac:	8ca42d30 	lw	a0,11568(a1)
bfc0e7b0:	8ca62d30 	lw	a2,11568(a1)
bfc0e7b4:	1443021f 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e7b8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:84
bfc0e7bc:	3c099f61 	lui	t1,0x9f61
bfc0e7c0:	35297ab8 	ori	t1,t1,0x7ab8
bfc0e7c4:	3c08800d 	lui	t0,0x800d
bfc0e7c8:	24037ab8 	li	v1,31416
bfc0e7cc:	ad090000 	sw	t1,0(t0)
bfc0e7d0:	25040004 	addiu	a0,t0,4
bfc0e7d4:	2505fff8 	addiu	a1,t0,-8
bfc0e7d8:	ac840000 	sw	a0,0(a0)
bfc0e7dc:	aca50000 	sw	a1,0(a1)
bfc0e7e0:	95020000 	lhu	v0,0(t0)
bfc0e7e4:	8c850000 	lw	a1,0(a0)
bfc0e7e8:	8ca40000 	lw	a0,0(a1)
bfc0e7ec:	8ca60000 	lw	a2,0(a1)
bfc0e7f0:	14430210 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e7f4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:85
bfc0e7f8:	3c094d02 	lui	t1,0x4d02
bfc0e7fc:	3529ec52 	ori	t1,t1,0xec52
bfc0e800:	3c08800d 	lui	t0,0x800d
bfc0e804:	24034d02 	li	v1,19714
bfc0e808:	ad090000 	sw	t1,0(t0)
bfc0e80c:	25040004 	addiu	a0,t0,4
bfc0e810:	2505fff8 	addiu	a1,t0,-8
bfc0e814:	ac840000 	sw	a0,0(a0)
bfc0e818:	aca50000 	sw	a1,0(a1)
bfc0e81c:	95020002 	lhu	v0,2(t0)
bfc0e820:	8c850000 	lw	a1,0(a0)
bfc0e824:	8ca40000 	lw	a0,0(a1)
bfc0e828:	8ca60000 	lw	a2,0(a1)
bfc0e82c:	14430201 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e830:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:86
bfc0e834:	3c09f9af 	lui	t1,0xf9af
bfc0e838:	3529c020 	ori	t1,t1,0xc020
bfc0e83c:	3c08800d 	lui	t0,0x800d
bfc0e840:	3403f9af 	li	v1,0xf9af
bfc0e844:	ad090000 	sw	t1,0(t0)
bfc0e848:	25040004 	addiu	a0,t0,4
bfc0e84c:	2505fff8 	addiu	a1,t0,-8
bfc0e850:	ac840000 	sw	a0,0(a0)
bfc0e854:	aca50000 	sw	a1,0(a1)
bfc0e858:	95020002 	lhu	v0,2(t0)
bfc0e85c:	8c850000 	lw	a1,0(a0)
bfc0e860:	8ca40000 	lw	a0,0(a1)
bfc0e864:	8ca60000 	lw	a2,0(a1)
bfc0e868:	144301f2 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e86c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:87
bfc0e870:	3c09dfc9 	lui	t1,0xdfc9
bfc0e874:	3529f4d0 	ori	t1,t1,0xf4d0
bfc0e878:	3c08800d 	lui	t0,0x800d
bfc0e87c:	3403dfc9 	li	v1,0xdfc9
bfc0e880:	ad090000 	sw	t1,0(t0)
bfc0e884:	25040004 	addiu	a0,t0,4
bfc0e888:	2505fff8 	addiu	a1,t0,-8
bfc0e88c:	ac840000 	sw	a0,0(a0)
bfc0e890:	aca50000 	sw	a1,0(a1)
bfc0e894:	95020002 	lhu	v0,2(t0)
bfc0e898:	8c850000 	lw	a1,0(a0)
bfc0e89c:	8ca40000 	lw	a0,0(a1)
bfc0e8a0:	8ca60000 	lw	a2,0(a1)
bfc0e8a4:	144301e3 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e8a8:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:88
bfc0e8ac:	3c095d92 	lui	t1,0x5d92
bfc0e8b0:	3529570c 	ori	t1,t1,0x570c
bfc0e8b4:	3c08800d 	lui	t0,0x800d
bfc0e8b8:	2403570c 	li	v1,22284
bfc0e8bc:	ad090000 	sw	t1,0(t0)
bfc0e8c0:	25040004 	addiu	a0,t0,4
bfc0e8c4:	2505fff8 	addiu	a1,t0,-8
bfc0e8c8:	ac840000 	sw	a0,0(a0)
bfc0e8cc:	aca50000 	sw	a1,0(a1)
bfc0e8d0:	95020000 	lhu	v0,0(t0)
bfc0e8d4:	8c850000 	lw	a1,0(a0)
bfc0e8d8:	8ca40000 	lw	a0,0(a1)
bfc0e8dc:	8ca60000 	lw	a2,0(a1)
bfc0e8e0:	144301d4 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e8e4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:89
bfc0e8e8:	3c09b450 	lui	t1,0xb450
bfc0e8ec:	3529b400 	ori	t1,t1,0xb400
bfc0e8f0:	3c08800d 	lui	t0,0x800d
bfc0e8f4:	3403b450 	li	v1,0xb450
bfc0e8f8:	ad090000 	sw	t1,0(t0)
bfc0e8fc:	25040004 	addiu	a0,t0,4
bfc0e900:	2505fff8 	addiu	a1,t0,-8
bfc0e904:	ac840000 	sw	a0,0(a0)
bfc0e908:	aca50000 	sw	a1,0(a1)
bfc0e90c:	95020002 	lhu	v0,2(t0)
bfc0e910:	8c850000 	lw	a1,0(a0)
bfc0e914:	8ca40000 	lw	a0,0(a1)
bfc0e918:	8ca60000 	lw	a2,0(a1)
bfc0e91c:	144301c5 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e920:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:90
bfc0e924:	3c0995fd 	lui	t1,0x95fd
bfc0e928:	3529c700 	ori	t1,t1,0xc700
bfc0e92c:	3c08800d 	lui	t0,0x800d
bfc0e930:	3403c700 	li	v1,0xc700
bfc0e934:	ad090000 	sw	t1,0(t0)
bfc0e938:	25040004 	addiu	a0,t0,4
bfc0e93c:	2505fff8 	addiu	a1,t0,-8
bfc0e940:	ac840000 	sw	a0,0(a0)
bfc0e944:	aca50000 	sw	a1,0(a1)
bfc0e948:	95020000 	lhu	v0,0(t0)
bfc0e94c:	8c850000 	lw	a1,0(a0)
bfc0e950:	8ca40000 	lw	a0,0(a1)
bfc0e954:	8ca60000 	lw	a2,0(a1)
bfc0e958:	144301b6 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e95c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:91
bfc0e960:	3c091364 	lui	t1,0x1364
bfc0e964:	3529eca0 	ori	t1,t1,0xeca0
bfc0e968:	3c08800d 	lui	t0,0x800d
bfc0e96c:	24031364 	li	v1,4964
bfc0e970:	ad090000 	sw	t1,0(t0)
bfc0e974:	25040004 	addiu	a0,t0,4
bfc0e978:	2505fff8 	addiu	a1,t0,-8
bfc0e97c:	ac840000 	sw	a0,0(a0)
bfc0e980:	aca50000 	sw	a1,0(a1)
bfc0e984:	95020002 	lhu	v0,2(t0)
bfc0e988:	8c850000 	lw	a1,0(a0)
bfc0e98c:	8ca40000 	lw	a0,0(a1)
bfc0e990:	8ca60000 	lw	a2,0(a1)
bfc0e994:	144301a7 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e998:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:92
bfc0e99c:	3c09a207 	lui	t1,0xa207
bfc0e9a0:	352908ef 	ori	t1,t1,0x8ef
bfc0e9a4:	3c08800d 	lui	t0,0x800d
bfc0e9a8:	3403a207 	li	v1,0xa207
bfc0e9ac:	ad090000 	sw	t1,0(t0)
bfc0e9b0:	25040004 	addiu	a0,t0,4
bfc0e9b4:	2505fff8 	addiu	a1,t0,-8
bfc0e9b8:	ac840000 	sw	a0,0(a0)
bfc0e9bc:	aca50000 	sw	a1,0(a1)
bfc0e9c0:	95020002 	lhu	v0,2(t0)
bfc0e9c4:	8c850000 	lw	a1,0(a0)
bfc0e9c8:	8ca40000 	lw	a0,0(a1)
bfc0e9cc:	8ca60000 	lw	a2,0(a1)
bfc0e9d0:	14430198 	bne	v0,v1,bfc0f034 <inst_error>
bfc0e9d4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:93
bfc0e9d8:	3c09029d 	lui	t1,0x29d
bfc0e9dc:	35297ff0 	ori	t1,t1,0x7ff0
bfc0e9e0:	3c08800d 	lui	t0,0x800d
bfc0e9e4:	2403029d 	li	v1,669
bfc0e9e8:	ad090000 	sw	t1,0(t0)
bfc0e9ec:	25040004 	addiu	a0,t0,4
bfc0e9f0:	2505fff8 	addiu	a1,t0,-8
bfc0e9f4:	ac840000 	sw	a0,0(a0)
bfc0e9f8:	aca50000 	sw	a1,0(a1)
bfc0e9fc:	95020002 	lhu	v0,2(t0)
bfc0ea00:	8c850000 	lw	a1,0(a0)
bfc0ea04:	8ca40000 	lw	a0,0(a1)
bfc0ea08:	8ca60000 	lw	a2,0(a1)
bfc0ea0c:	14430189 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ea10:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:94
bfc0ea14:	3c09c513 	lui	t1,0xc513
bfc0ea18:	3529af92 	ori	t1,t1,0xaf92
bfc0ea1c:	3c08800d 	lui	t0,0x800d
bfc0ea20:	3403c513 	li	v1,0xc513
bfc0ea24:	ad090000 	sw	t1,0(t0)
bfc0ea28:	25040004 	addiu	a0,t0,4
bfc0ea2c:	2505fff8 	addiu	a1,t0,-8
bfc0ea30:	ac840000 	sw	a0,0(a0)
bfc0ea34:	aca50000 	sw	a1,0(a1)
bfc0ea38:	95020002 	lhu	v0,2(t0)
bfc0ea3c:	8c850000 	lw	a1,0(a0)
bfc0ea40:	8ca40000 	lw	a0,0(a1)
bfc0ea44:	8ca60000 	lw	a2,0(a1)
bfc0ea48:	1443017a 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ea4c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:95
bfc0ea50:	3c0917d8 	lui	t1,0x17d8
bfc0ea54:	3529be62 	ori	t1,t1,0xbe62
bfc0ea58:	3c08800d 	lui	t0,0x800d
bfc0ea5c:	3403be62 	li	v1,0xbe62
bfc0ea60:	ad090000 	sw	t1,0(t0)
bfc0ea64:	25040004 	addiu	a0,t0,4
bfc0ea68:	2505fff8 	addiu	a1,t0,-8
bfc0ea6c:	ac840000 	sw	a0,0(a0)
bfc0ea70:	aca50000 	sw	a1,0(a1)
bfc0ea74:	95020000 	lhu	v0,0(t0)
bfc0ea78:	8c850000 	lw	a1,0(a0)
bfc0ea7c:	8ca40000 	lw	a0,0(a1)
bfc0ea80:	8ca60000 	lw	a2,0(a1)
bfc0ea84:	1443016b 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ea88:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:96
bfc0ea8c:	3c09bcc5 	lui	t1,0xbcc5
bfc0ea90:	3529cb24 	ori	t1,t1,0xcb24
bfc0ea94:	3c08800d 	lui	t0,0x800d
bfc0ea98:	3403bcc5 	li	v1,0xbcc5
bfc0ea9c:	ad090000 	sw	t1,0(t0)
bfc0eaa0:	25040004 	addiu	a0,t0,4
bfc0eaa4:	2505fff8 	addiu	a1,t0,-8
bfc0eaa8:	ac840000 	sw	a0,0(a0)
bfc0eaac:	aca50000 	sw	a1,0(a1)
bfc0eab0:	95020002 	lhu	v0,2(t0)
bfc0eab4:	8c850000 	lw	a1,0(a0)
bfc0eab8:	8ca40000 	lw	a0,0(a1)
bfc0eabc:	8ca60000 	lw	a2,0(a1)
bfc0eac0:	1443015c 	bne	v0,v1,bfc0f034 <inst_error>
bfc0eac4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:97
bfc0eac8:	3c0944e5 	lui	t1,0x44e5
bfc0eacc:	3529ce74 	ori	t1,t1,0xce74
bfc0ead0:	3c08800d 	lui	t0,0x800d
bfc0ead4:	3403ce74 	li	v1,0xce74
bfc0ead8:	ad090000 	sw	t1,0(t0)
bfc0eadc:	25040004 	addiu	a0,t0,4
bfc0eae0:	2505fff8 	addiu	a1,t0,-8
bfc0eae4:	ac840000 	sw	a0,0(a0)
bfc0eae8:	aca50000 	sw	a1,0(a1)
bfc0eaec:	95020000 	lhu	v0,0(t0)
bfc0eaf0:	8c850000 	lw	a1,0(a0)
bfc0eaf4:	8ca40000 	lw	a0,0(a1)
bfc0eaf8:	8ca60000 	lw	a2,0(a1)
bfc0eafc:	1443014d 	bne	v0,v1,bfc0f034 <inst_error>
bfc0eb00:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:98
bfc0eb04:	3c09870f 	lui	t1,0x870f
bfc0eb08:	35295910 	ori	t1,t1,0x5910
bfc0eb0c:	3c08800d 	lui	t0,0x800d
bfc0eb10:	24035910 	li	v1,22800
bfc0eb14:	ad090000 	sw	t1,0(t0)
bfc0eb18:	25040004 	addiu	a0,t0,4
bfc0eb1c:	2505fff8 	addiu	a1,t0,-8
bfc0eb20:	ac840000 	sw	a0,0(a0)
bfc0eb24:	aca50000 	sw	a1,0(a1)
bfc0eb28:	95020000 	lhu	v0,0(t0)
bfc0eb2c:	8c850000 	lw	a1,0(a0)
bfc0eb30:	8ca40000 	lw	a0,0(a1)
bfc0eb34:	8ca60000 	lw	a2,0(a1)
bfc0eb38:	1443013e 	bne	v0,v1,bfc0f034 <inst_error>
bfc0eb3c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:99
bfc0eb40:	3c09a322 	lui	t1,0xa322
bfc0eb44:	3529c100 	ori	t1,t1,0xc100
bfc0eb48:	3c08800d 	lui	t0,0x800d
bfc0eb4c:	3403a322 	li	v1,0xa322
bfc0eb50:	ad090000 	sw	t1,0(t0)
bfc0eb54:	25040004 	addiu	a0,t0,4
bfc0eb58:	2505fff8 	addiu	a1,t0,-8
bfc0eb5c:	ac840000 	sw	a0,0(a0)
bfc0eb60:	aca50000 	sw	a1,0(a1)
bfc0eb64:	95020002 	lhu	v0,2(t0)
bfc0eb68:	8c850000 	lw	a1,0(a0)
bfc0eb6c:	8ca40000 	lw	a0,0(a1)
bfc0eb70:	8ca60000 	lw	a2,0(a1)
bfc0eb74:	1443012f 	bne	v0,v1,bfc0f034 <inst_error>
bfc0eb78:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:100
bfc0eb7c:	3c09e648 	lui	t1,0xe648
bfc0eb80:	352919f0 	ori	t1,t1,0x19f0
bfc0eb84:	3c08800d 	lui	t0,0x800d
bfc0eb88:	3403e648 	li	v1,0xe648
bfc0eb8c:	ad090000 	sw	t1,0(t0)
bfc0eb90:	25040004 	addiu	a0,t0,4
bfc0eb94:	2505fff8 	addiu	a1,t0,-8
bfc0eb98:	ac840000 	sw	a0,0(a0)
bfc0eb9c:	aca50000 	sw	a1,0(a1)
bfc0eba0:	95020002 	lhu	v0,2(t0)
bfc0eba4:	8c850000 	lw	a1,0(a0)
bfc0eba8:	8ca40000 	lw	a0,0(a1)
bfc0ebac:	8ca60000 	lw	a2,0(a1)
bfc0ebb0:	14430120 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ebb4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:101
bfc0ebb8:	3c09bd84 	lui	t1,0xbd84
bfc0ebbc:	352927c0 	ori	t1,t1,0x27c0
bfc0ebc0:	3c08800d 	lui	t0,0x800d
bfc0ebc4:	240327c0 	li	v1,10176
bfc0ebc8:	ad090000 	sw	t1,0(t0)
bfc0ebcc:	25040004 	addiu	a0,t0,4
bfc0ebd0:	2505fff8 	addiu	a1,t0,-8
bfc0ebd4:	ac840000 	sw	a0,0(a0)
bfc0ebd8:	aca50000 	sw	a1,0(a1)
bfc0ebdc:	95020000 	lhu	v0,0(t0)
bfc0ebe0:	8c850000 	lw	a1,0(a0)
bfc0ebe4:	8ca40000 	lw	a0,0(a1)
bfc0ebe8:	8ca60000 	lw	a2,0(a1)
bfc0ebec:	14430111 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ebf0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:102
bfc0ebf4:	3c09c513 	lui	t1,0xc513
bfc0ebf8:	35297e48 	ori	t1,t1,0x7e48
bfc0ebfc:	3c08800d 	lui	t0,0x800d
bfc0ec00:	3403c513 	li	v1,0xc513
bfc0ec04:	ad090000 	sw	t1,0(t0)
bfc0ec08:	25040004 	addiu	a0,t0,4
bfc0ec0c:	2505fff8 	addiu	a1,t0,-8
bfc0ec10:	ac840000 	sw	a0,0(a0)
bfc0ec14:	aca50000 	sw	a1,0(a1)
bfc0ec18:	95020002 	lhu	v0,2(t0)
bfc0ec1c:	8c850000 	lw	a1,0(a0)
bfc0ec20:	8ca40000 	lw	a0,0(a1)
bfc0ec24:	8ca60000 	lw	a2,0(a1)
bfc0ec28:	14430102 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ec2c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:103
bfc0ec30:	3c095d98 	lui	t1,0x5d98
bfc0ec34:	352904c0 	ori	t1,t1,0x4c0
bfc0ec38:	3c08800d 	lui	t0,0x800d
bfc0ec3c:	24035d98 	li	v1,23960
bfc0ec40:	ad090000 	sw	t1,0(t0)
bfc0ec44:	25040004 	addiu	a0,t0,4
bfc0ec48:	2505fff8 	addiu	a1,t0,-8
bfc0ec4c:	ac840000 	sw	a0,0(a0)
bfc0ec50:	aca50000 	sw	a1,0(a1)
bfc0ec54:	95020002 	lhu	v0,2(t0)
bfc0ec58:	8c850000 	lw	a1,0(a0)
bfc0ec5c:	8ca40000 	lw	a0,0(a1)
bfc0ec60:	8ca60000 	lw	a2,0(a1)
bfc0ec64:	144300f3 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ec68:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:104
bfc0ec6c:	3c09f04c 	lui	t1,0xf04c
bfc0ec70:	3529a5a8 	ori	t1,t1,0xa5a8
bfc0ec74:	3c08800d 	lui	t0,0x800d
bfc0ec78:	3403a5a8 	li	v1,0xa5a8
bfc0ec7c:	ad090000 	sw	t1,0(t0)
bfc0ec80:	25040004 	addiu	a0,t0,4
bfc0ec84:	2505fff8 	addiu	a1,t0,-8
bfc0ec88:	ac840000 	sw	a0,0(a0)
bfc0ec8c:	aca50000 	sw	a1,0(a1)
bfc0ec90:	95020000 	lhu	v0,0(t0)
bfc0ec94:	8c850000 	lw	a1,0(a0)
bfc0ec98:	8ca40000 	lw	a0,0(a1)
bfc0ec9c:	8ca60000 	lw	a2,0(a1)
bfc0eca0:	144300e4 	bne	v0,v1,bfc0f034 <inst_error>
bfc0eca4:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:105
bfc0eca8:	3c09be9c 	lui	t1,0xbe9c
bfc0ecac:	35290a40 	ori	t1,t1,0xa40
bfc0ecb0:	3c08800d 	lui	t0,0x800d
bfc0ecb4:	24030a40 	li	v1,2624
bfc0ecb8:	ad090000 	sw	t1,0(t0)
bfc0ecbc:	25040004 	addiu	a0,t0,4
bfc0ecc0:	2505fff8 	addiu	a1,t0,-8
bfc0ecc4:	ac840000 	sw	a0,0(a0)
bfc0ecc8:	aca50000 	sw	a1,0(a1)
bfc0eccc:	95020000 	lhu	v0,0(t0)
bfc0ecd0:	8c850000 	lw	a1,0(a0)
bfc0ecd4:	8ca40000 	lw	a0,0(a1)
bfc0ecd8:	8ca60000 	lw	a2,0(a1)
bfc0ecdc:	144300d5 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ece0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:106
bfc0ece4:	3c091998 	lui	t1,0x1998
bfc0ece8:	35299770 	ori	t1,t1,0x9770
bfc0ecec:	3c08800d 	lui	t0,0x800d
bfc0ecf0:	24031998 	li	v1,6552
bfc0ecf4:	ad090000 	sw	t1,0(t0)
bfc0ecf8:	25040004 	addiu	a0,t0,4
bfc0ecfc:	2505fff8 	addiu	a1,t0,-8
bfc0ed00:	ac840000 	sw	a0,0(a0)
bfc0ed04:	aca50000 	sw	a1,0(a1)
bfc0ed08:	95020002 	lhu	v0,2(t0)
bfc0ed0c:	8c850000 	lw	a1,0(a0)
bfc0ed10:	8ca40000 	lw	a0,0(a1)
bfc0ed14:	8ca60000 	lw	a2,0(a1)
bfc0ed18:	144300c6 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ed1c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:107
bfc0ed20:	3c09a98e 	lui	t1,0xa98e
bfc0ed24:	35294e64 	ori	t1,t1,0x4e64
bfc0ed28:	3c08800d 	lui	t0,0x800d
bfc0ed2c:	3403a98e 	li	v1,0xa98e
bfc0ed30:	ad090000 	sw	t1,0(t0)
bfc0ed34:	25040004 	addiu	a0,t0,4
bfc0ed38:	2505fff8 	addiu	a1,t0,-8
bfc0ed3c:	ac840000 	sw	a0,0(a0)
bfc0ed40:	aca50000 	sw	a1,0(a1)
bfc0ed44:	95020002 	lhu	v0,2(t0)
bfc0ed48:	8c850000 	lw	a1,0(a0)
bfc0ed4c:	8ca40000 	lw	a0,0(a1)
bfc0ed50:	8ca60000 	lw	a2,0(a1)
bfc0ed54:	144300b7 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ed58:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:108
bfc0ed5c:	3c09bde4 	lui	t1,0xbde4
bfc0ed60:	35292a40 	ori	t1,t1,0x2a40
bfc0ed64:	3c08800d 	lui	t0,0x800d
bfc0ed68:	24032a40 	li	v1,10816
bfc0ed6c:	ad090000 	sw	t1,0(t0)
bfc0ed70:	25040004 	addiu	a0,t0,4
bfc0ed74:	2505fff8 	addiu	a1,t0,-8
bfc0ed78:	ac840000 	sw	a0,0(a0)
bfc0ed7c:	aca50000 	sw	a1,0(a1)
bfc0ed80:	95020000 	lhu	v0,0(t0)
bfc0ed84:	8c850000 	lw	a1,0(a0)
bfc0ed88:	8ca40000 	lw	a0,0(a1)
bfc0ed8c:	8ca60000 	lw	a2,0(a1)
bfc0ed90:	144300a8 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ed94:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:109
bfc0ed98:	3c09b6a2 	lui	t1,0xb6a2
bfc0ed9c:	35294340 	ori	t1,t1,0x4340
bfc0eda0:	3c08800d 	lui	t0,0x800d
bfc0eda4:	3403b6a2 	li	v1,0xb6a2
bfc0eda8:	ad090000 	sw	t1,0(t0)
bfc0edac:	25040004 	addiu	a0,t0,4
bfc0edb0:	2505fff8 	addiu	a1,t0,-8
bfc0edb4:	ac840000 	sw	a0,0(a0)
bfc0edb8:	aca50000 	sw	a1,0(a1)
bfc0edbc:	95020002 	lhu	v0,2(t0)
bfc0edc0:	8c850000 	lw	a1,0(a0)
bfc0edc4:	8ca40000 	lw	a0,0(a1)
bfc0edc8:	8ca60000 	lw	a2,0(a1)
bfc0edcc:	14430099 	bne	v0,v1,bfc0f034 <inst_error>
bfc0edd0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:110
bfc0edd4:	3c09adcf 	lui	t1,0xadcf
bfc0edd8:	352971e4 	ori	t1,t1,0x71e4
bfc0eddc:	3c08800d 	lui	t0,0x800d
bfc0ede0:	240371e4 	li	v1,29156
bfc0ede4:	ad090000 	sw	t1,0(t0)
bfc0ede8:	25040004 	addiu	a0,t0,4
bfc0edec:	2505fff8 	addiu	a1,t0,-8
bfc0edf0:	ac840000 	sw	a0,0(a0)
bfc0edf4:	aca50000 	sw	a1,0(a1)
bfc0edf8:	95020000 	lhu	v0,0(t0)
bfc0edfc:	8c850000 	lw	a1,0(a0)
bfc0ee00:	8ca40000 	lw	a0,0(a1)
bfc0ee04:	8ca60000 	lw	a2,0(a1)
bfc0ee08:	1443008a 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ee0c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:111
bfc0ee10:	3c094362 	lui	t1,0x4362
bfc0ee14:	3529a106 	ori	t1,t1,0xa106
bfc0ee18:	3c08800d 	lui	t0,0x800d
bfc0ee1c:	24034362 	li	v1,17250
bfc0ee20:	ad090000 	sw	t1,0(t0)
bfc0ee24:	25040004 	addiu	a0,t0,4
bfc0ee28:	2505fff8 	addiu	a1,t0,-8
bfc0ee2c:	ac840000 	sw	a0,0(a0)
bfc0ee30:	aca50000 	sw	a1,0(a1)
bfc0ee34:	95020002 	lhu	v0,2(t0)
bfc0ee38:	8c850000 	lw	a1,0(a0)
bfc0ee3c:	8ca40000 	lw	a0,0(a1)
bfc0ee40:	8ca60000 	lw	a2,0(a1)
bfc0ee44:	1443007b 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ee48:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:112
bfc0ee4c:	3c0942f7 	lui	t1,0x42f7
bfc0ee50:	35297dee 	ori	t1,t1,0x7dee
bfc0ee54:	3c08800d 	lui	t0,0x800d
bfc0ee58:	240342f7 	li	v1,17143
bfc0ee5c:	ad090000 	sw	t1,0(t0)
bfc0ee60:	25040004 	addiu	a0,t0,4
bfc0ee64:	2505fff8 	addiu	a1,t0,-8
bfc0ee68:	ac840000 	sw	a0,0(a0)
bfc0ee6c:	aca50000 	sw	a1,0(a1)
bfc0ee70:	95020002 	lhu	v0,2(t0)
bfc0ee74:	8c850000 	lw	a1,0(a0)
bfc0ee78:	8ca40000 	lw	a0,0(a1)
bfc0ee7c:	8ca60000 	lw	a2,0(a1)
bfc0ee80:	1443006c 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ee84:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:113
bfc0ee88:	3c098def 	lui	t1,0x8def
bfc0ee8c:	352996d0 	ori	t1,t1,0x96d0
bfc0ee90:	3c08800d 	lui	t0,0x800d
bfc0ee94:	340396d0 	li	v1,0x96d0
bfc0ee98:	ad090000 	sw	t1,0(t0)
bfc0ee9c:	25040004 	addiu	a0,t0,4
bfc0eea0:	2505fff8 	addiu	a1,t0,-8
bfc0eea4:	ac840000 	sw	a0,0(a0)
bfc0eea8:	aca50000 	sw	a1,0(a1)
bfc0eeac:	95020000 	lhu	v0,0(t0)
bfc0eeb0:	8c850000 	lw	a1,0(a0)
bfc0eeb4:	8ca40000 	lw	a0,0(a1)
bfc0eeb8:	8ca60000 	lw	a2,0(a1)
bfc0eebc:	1443005d 	bne	v0,v1,bfc0f034 <inst_error>
bfc0eec0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:114
bfc0eec4:	3c09cf08 	lui	t1,0xcf08
bfc0eec8:	35293100 	ori	t1,t1,0x3100
bfc0eecc:	3c08800d 	lui	t0,0x800d
bfc0eed0:	3403cf08 	li	v1,0xcf08
bfc0eed4:	ad090000 	sw	t1,0(t0)
bfc0eed8:	25040004 	addiu	a0,t0,4
bfc0eedc:	2505fff8 	addiu	a1,t0,-8
bfc0eee0:	ac840000 	sw	a0,0(a0)
bfc0eee4:	aca50000 	sw	a1,0(a1)
bfc0eee8:	95020002 	lhu	v0,2(t0)
bfc0eeec:	8c850000 	lw	a1,0(a0)
bfc0eef0:	8ca40000 	lw	a0,0(a1)
bfc0eef4:	8ca60000 	lw	a2,0(a1)
bfc0eef8:	1443004e 	bne	v0,v1,bfc0f034 <inst_error>
bfc0eefc:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:115
bfc0ef00:	3c09ace8 	lui	t1,0xace8
bfc0ef04:	35294af0 	ori	t1,t1,0x4af0
bfc0ef08:	3c08800d 	lui	t0,0x800d
bfc0ef0c:	24034af0 	li	v1,19184
bfc0ef10:	ad090000 	sw	t1,0(t0)
bfc0ef14:	25040004 	addiu	a0,t0,4
bfc0ef18:	2505fff8 	addiu	a1,t0,-8
bfc0ef1c:	ac840000 	sw	a0,0(a0)
bfc0ef20:	aca50000 	sw	a1,0(a1)
bfc0ef24:	95020000 	lhu	v0,0(t0)
bfc0ef28:	8c850000 	lw	a1,0(a0)
bfc0ef2c:	8ca40000 	lw	a0,0(a1)
bfc0ef30:	8ca60000 	lw	a2,0(a1)
bfc0ef34:	1443003f 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ef38:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:116
bfc0ef3c:	3c09c5d1 	lui	t1,0xc5d1
bfc0ef40:	3529d550 	ori	t1,t1,0xd550
bfc0ef44:	3c08800d 	lui	t0,0x800d
bfc0ef48:	3403c5d1 	li	v1,0xc5d1
bfc0ef4c:	ad090000 	sw	t1,0(t0)
bfc0ef50:	25040004 	addiu	a0,t0,4
bfc0ef54:	2505fff8 	addiu	a1,t0,-8
bfc0ef58:	ac840000 	sw	a0,0(a0)
bfc0ef5c:	aca50000 	sw	a1,0(a1)
bfc0ef60:	95020002 	lhu	v0,2(t0)
bfc0ef64:	8c850000 	lw	a1,0(a0)
bfc0ef68:	8ca40000 	lw	a0,0(a1)
bfc0ef6c:	8ca60000 	lw	a2,0(a1)
bfc0ef70:	14430030 	bne	v0,v1,bfc0f034 <inst_error>
bfc0ef74:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:117
bfc0ef78:	3c09fade 	lui	t1,0xfade
bfc0ef7c:	35291c80 	ori	t1,t1,0x1c80
bfc0ef80:	3c08800d 	lui	t0,0x800d
bfc0ef84:	24031c80 	li	v1,7296
bfc0ef88:	ad090000 	sw	t1,0(t0)
bfc0ef8c:	25040004 	addiu	a0,t0,4
bfc0ef90:	2505fff8 	addiu	a1,t0,-8
bfc0ef94:	ac840000 	sw	a0,0(a0)
bfc0ef98:	aca50000 	sw	a1,0(a1)
bfc0ef9c:	95020000 	lhu	v0,0(t0)
bfc0efa0:	8c850000 	lw	a1,0(a0)
bfc0efa4:	8ca40000 	lw	a0,0(a1)
bfc0efa8:	8ca60000 	lw	a2,0(a1)
bfc0efac:	14430021 	bne	v0,v1,bfc0f034 <inst_error>
bfc0efb0:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:118
bfc0efb4:	3c092579 	lui	t1,0x2579
bfc0efb8:	3529310c 	ori	t1,t1,0x310c
bfc0efbc:	3c08800d 	lui	t0,0x800d
bfc0efc0:	24032579 	li	v1,9593
bfc0efc4:	ad090000 	sw	t1,0(t0)
bfc0efc8:	25040004 	addiu	a0,t0,4
bfc0efcc:	2505fff8 	addiu	a1,t0,-8
bfc0efd0:	ac840000 	sw	a0,0(a0)
bfc0efd4:	aca50000 	sw	a1,0(a1)
bfc0efd8:	95020002 	lhu	v0,2(t0)
bfc0efdc:	8c850000 	lw	a1,0(a0)
bfc0efe0:	8ca40000 	lw	a0,0(a1)
bfc0efe4:	8ca60000 	lw	a2,0(a1)
bfc0efe8:	14430012 	bne	v0,v1,bfc0f034 <inst_error>
bfc0efec:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:119
bfc0eff0:	24090000 	li	t1,0
bfc0eff4:	3c08800d 	lui	t0,0x800d
bfc0eff8:	24030000 	li	v1,0
bfc0effc:	ad090000 	sw	t1,0(t0)
bfc0f000:	25040004 	addiu	a0,t0,4
bfc0f004:	2505fff8 	addiu	a1,t0,-8
bfc0f008:	ac840000 	sw	a0,0(a0)
bfc0f00c:	aca50000 	sw	a1,0(a1)
bfc0f010:	95020000 	lhu	v0,0(t0)
bfc0f014:	8c850000 	lw	a1,0(a0)
bfc0f018:	8ca40000 	lw	a0,0(a1)
bfc0f01c:	8ca60000 	lw	a2,0(a1)
bfc0f020:	14430004 	bne	v0,v1,bfc0f034 <inst_error>
bfc0f024:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:121
bfc0f028:	16400002 	bnez	s2,bfc0f034 <inst_error>
/home/csy/func/inst/n62_lhu.S:122
bfc0f02c:	00000000 	nop
/home/csy/func/inst/n62_lhu.S:124
bfc0f030:	26730001 	addiu	s3,s3,1

bfc0f034 <inst_error>:
/home/csy/func/inst/n62_lhu.S:127
bfc0f034:	00104e00 	sll	t1,s0,0x18
/home/csy/func/inst/n62_lhu.S:128
bfc0f038:	01334025 	or	t0,t1,s3
/home/csy/func/inst/n62_lhu.S:129
bfc0f03c:	ae280000 	sw	t0,0(s1)
/home/csy/func/inst/n62_lhu.S:130
bfc0f040:	03e00008 	jr	ra
/home/csy/func/inst/n62_lhu.S:131
bfc0f044:	00000000 	nop
	...
bfc0f050:	9e3f7f70 	0x9e3f7f70
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
  14:	0000086c 	0x86c
	...
  20:	0000001c 	0x1c
  24:	00400002 	0x400002
  28:	00040000 	sll	zero,a0,0x0
  2c:	00000000 	nop
  30:	bfc00870 	cache	0x0,2160(s8)
  34:	00002628 	0x2628
	...
  40:	0000001c 	0x1c
  44:	00870002 	0x870002
  48:	00040000 	sll	zero,a0,0x0
  4c:	00000000 	nop
  50:	bfc02ea0 	cache	0x0,11936(s8)
  54:	000028f8 	0x28f8
	...
  60:	0000001c 	0x1c
  64:	00cd0002 	0xcd0002
  68:	00040000 	sll	zero,a0,0x0
  6c:	00000000 	nop
  70:	bfc057a0 	cache	0x0,22432(s8)
  74:	000023ac 	0x23ac
	...
  80:	0000001c 	0x1c
  84:	01130002 	0x1130002
  88:	00040000 	sll	zero,a0,0x0
  8c:	00000000 	nop
  90:	bfc07b50 	cache	0x0,31568(s8)
  94:	00001c50 	0x1c50
	...
  a0:	0000001c 	0x1c
  a4:	01590002 	0x1590002
  a8:	00040000 	sll	zero,a0,0x0
  ac:	00000000 	nop
  b0:	bfc097a0 	cache	0x0,-26720(s8)
  b4:	000026cc 	syscall	0x9b
	...
  c0:	0000001c 	0x1c
  c4:	019f0002 	0x19f0002
  c8:	00040000 	sll	zero,a0,0x0
  cc:	00000000 	nop
  d0:	bfc0be70 	cache	0x0,-16784(s8)
  d4:	0000125c 	0x125c
	...
  e0:	0000001c 	0x1c
  e4:	01e50002 	0x1e50002
  e8:	00040000 	sll	zero,a0,0x0
  ec:	00000000 	nop
  f0:	bfc0d0d0 	cache	0x0,-12080(s8)
  f4:	00001f78 	0x1f78
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	bfc00870 	cache	0x0,2160(s8)
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	bfc02ea0 	cache	0x0,11936(s8)
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	bfc057a0 	cache	0x0,22432(s8)
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	bfc07b50 	cache	0x0,31568(s8)
	...
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	bfc097a0 	cache	0x0,-26720(s8)
	...
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	bfc0be70 	cache	0x0,-16784(s8)
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	bfc0d0d0 	cache	0x0,-12080(s8)
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000179 	0x179
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
 124:	4a01e703 	c2	0x1e703
 128:	4b4b4b4b 	c2	0x14b4b4b
 12c:	4b4b4b4b 	c2	0x14b4b4b
 130:	4b4b4b4b 	c2	0x14b4b4b
 134:	4b4b4b4b 	c2	0x14b4b4b
 138:	4b4b4b4b 	c2	0x14b4b4b
 13c:	034b4b4b 	0x34b4b4b
 140:	834a00e6 	lb	t2,230(k0)
 144:	4b4b4b4b 	c2	0x14b4b4b
 148:	4b4b4c4b 	c2	0x14b4c4b
 14c:	4b4b4b4b 	c2	0x14b4b4b
 150:	4d4b4c4b 	0x4d4b4c4b
 154:	834c4b4b 	lb	t4,19275(k0)
 158:	4b4c8483 	c2	0x14c8483
 15c:	4c4b4b4b 	0x4c4b4b4b
 160:	4b83834b 	c2	0x183834b
 164:	834d4b4d 	lb	t5,19277(k0)
 168:	4b4b4b4d 	c2	0x14b4b4d
 16c:	4b4b4d4d 	c2	0x14b4d4d
 170:	4b4b4b4b 	c2	0x14b4b4b
 174:	4b4b4b4c 	c2	0x14b4b4c
 178:	01000402 	0x1000402
 17c:	0001b601 	0x1b601
 180:	20000200 	addi	zero,zero,512
 184:	01000000 	0x1000000
 188:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 18c:	01010100 	0x1010100
 190:	00000001 	movf	zero,zero,$fcc0
 194:	01000001 	movf	zero,t0,$fcc0
 198:	30366e00 	andi	s6,at,0x6e00
 19c:	75626c5f 	jalx	589b17c <data_size+0x589b16c>
 1a0:	0000532e 	0x532e
 1a4:	00000000 	nop
 1a8:	08700205 	j	1c00814 <data_size+0x1c00804>
 1ac:	4b18bfc0 	c2	0x118bfc0
 1b0:	1340024c 	beqz	k0,ae4 <data_size+0xad4>
 1b4:	02134002 	0x2134002
 1b8:	40021340 	0x40021340
 1bc:	13400213 	beqz	k0,a0c <data_size+0x9fc>
 1c0:	02134002 	0x2134002
 1c4:	40021378 	0x40021378
 1c8:	13780213 	beq	k1,t8,a18 <data_size+0xa08>
 1cc:	02134002 	0x2134002
 1d0:	40021340 	0x40021340
 1d4:	13400213 	beqz	k0,a24 <data_size+0xa14>
 1d8:	02134002 	0x2134002
 1dc:	40021340 	0x40021340
 1e0:	13400213 	beqz	k0,a30 <data_size+0xa20>
 1e4:	02134002 	0x2134002
 1e8:	40021378 	0x40021378
 1ec:	13400213 	beqz	k0,a3c <data_size+0xa2c>
 1f0:	02134002 	0x2134002
 1f4:	40021340 	0x40021340
 1f8:	13400213 	beqz	k0,a48 <data_size+0xa38>
 1fc:	02134002 	0x2134002
 200:	78021340 	0x78021340
 204:	13780213 	beq	k1,t8,a54 <data_size+0xa44>
 208:	02134002 	0x2134002
 20c:	40021340 	0x40021340
 210:	13400213 	beqz	k0,a60 <data_size+0xa50>
 214:	02134002 	0x2134002
 218:	40021340 	0x40021340
 21c:	13400213 	beqz	k0,a6c <data_size+0xa5c>
 220:	02134002 	0x2134002
 224:	40021378 	0x40021378
 228:	13780213 	beq	k1,t8,a78 <data_size+0xa68>
 22c:	02134002 	0x2134002
 230:	40021340 	0x40021340
 234:	13400213 	beqz	k0,a84 <data_size+0xa74>
 238:	02134002 	0x2134002
 23c:	40021340 	0x40021340
 240:	13780213 	beq	k1,t8,a90 <data_size+0xa80>
 244:	02134002 	0x2134002
 248:	40021340 	0x40021340
 24c:	13400213 	beqz	k0,a9c <data_size+0xa8c>
 250:	02133c02 	0x2133c02
 254:	3c02133c 	lui	v0,0x133c
 258:	13740213 	beq	k1,s4,aa8 <data_size+0xa98>
 25c:	02133c02 	0x2133c02
 260:	3c02133c 	lui	v0,0x133c
 264:	133c0213 	beq	t9,gp,ab4 <data_size+0xaa4>
 268:	02137402 	0x2137402
 26c:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 270:	13740213 	beq	k1,s4,ac0 <data_size+0xab0>
 274:	02137402 	0x2137402
 278:	3c021374 	lui	v0,0x1374
 27c:	133c0213 	beq	t9,gp,acc <data_size+0xabc>
 280:	02137402 	0x2137402
 284:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 288:	133c0213 	beq	t9,gp,ad8 <data_size+0xac8>
 28c:	02137402 	0x2137402
 290:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
 294:	13740213 	beq	k1,s4,ae4 <data_size+0xad4>
 298:	02137402 	0x2137402
 29c:	3c02133c 	lui	v0,0x133c
 2a0:	13740213 	beq	k1,s4,af0 <data_size+0xae0>
 2a4:	02133c02 	0x2133c02
 2a8:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 2ac:	13740213 	beq	k1,s4,afc <data_size+0xaec>
 2b0:	02133c02 	0x2133c02
 2b4:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 2b8:	133c0213 	beq	t9,gp,b08 <data_size+0xaf8>
 2bc:	02137402 	0x2137402
 2c0:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 2c4:	13740213 	beq	k1,s4,b14 <data_size+0xb04>
 2c8:	02137402 	0x2137402
 2cc:	3c02133c 	lui	v0,0x133c
 2d0:	13740213 	beq	k1,s4,b20 <data_size+0xb10>
 2d4:	02133c02 	0x2133c02
 2d8:	3c021374 	lui	v0,0x1374
 2dc:	133c0213 	beq	t9,gp,b2c <data_size+0xb1c>
 2e0:	02133c02 	0x2133c02
 2e4:	3c02133c 	lui	v0,0x133c
 2e8:	133c0213 	beq	t9,gp,b38 <data_size+0xb28>
 2ec:	02133c02 	0x2133c02
 2f0:	3c02133c 	lui	v0,0x133c
 2f4:	133c0213 	beq	t9,gp,b44 <data_size+0xb34>
 2f8:	02133c02 	0x2133c02
 2fc:	3c02133c 	lui	v0,0x133c
 300:	133c0213 	beq	t9,gp,b50 <data_size+0xb40>
 304:	02133c02 	0x2133c02
 308:	3c02133c 	lui	v0,0x133c
 30c:	133c0213 	beq	t9,gp,b5c <data_size+0xb4c>
 310:	02133c02 	0x2133c02
 314:	3c02133c 	lui	v0,0x133c
 318:	133c0213 	beq	t9,gp,b68 <data_size+0xb58>
 31c:	02133c02 	0x2133c02
 320:	3c02133c 	lui	v0,0x133c
 324:	133c0213 	beq	t9,gp,b74 <data_size+0xb64>
 328:	4b143802 	c2	0x1143802
 32c:	4b4b4d4c 	c2	0x14b4d4c
 330:	04024b4b 	bltzl	zero,13060 <data_size+0x13050>
 334:	a9010100 	swl	at,256(t0)
 338:	02000001 	movf	zero,s0,$fcc0
 33c:	00001f00 	sll	v1,zero,0x1c
 340:	fb010100 	sdc2	$1,256(t8)
 344:	01000d0e 	0x1000d0e
 348:	00010101 	0x10101
 34c:	00010000 	sll	zero,at,0x0
 350:	6e000100 	0x6e000100
 354:	735f3336 	0x735f3336
 358:	00532e62 	0x532e62
 35c:	00000000 	nop
 360:	a0020500 	sb	v0,1280(zero)
 364:	18bfc02e 	0x18bfc02e
 368:	50024c4b 	beql	zero,v0,13498 <data_size+0x13488>
 36c:	13500213 	beq	k0,s0,bbc <data_size+0xbac>
 370:	02135002 	0x2135002
 374:	50021350 	beql	zero,v0,50b8 <data_size+0x50a8>
 378:	13500213 	beq	k0,s0,bc8 <data_size+0xbb8>
 37c:	02135002 	0x2135002
 380:	50021350 	beql	zero,v0,50c4 <data_size+0x50b4>
 384:	13500213 	beq	k0,s0,bd4 <data_size+0xbc4>
 388:	02135002 	0x2135002
 38c:	50021350 	beql	zero,v0,50d0 <data_size+0x50c0>
 390:	13500213 	beq	k0,s0,be0 <data_size+0xbd0>
 394:	02135002 	0x2135002
 398:	50021350 	beql	zero,v0,50dc <data_size+0x50cc>
 39c:	13500213 	beq	k0,s0,bec <data_size+0xbdc>
 3a0:	02135002 	0x2135002
 3a4:	50021350 	beql	zero,v0,50e8 <data_size+0x50d8>
 3a8:	01900213 	0x1900213
 3ac:	13500213 	beq	k0,s0,bfc <data_size+0xbec>
 3b0:	02135002 	0x2135002
 3b4:	02130190 	0x2130190
 3b8:	50021350 	beql	zero,v0,50fc <data_size+0x50ec>
 3bc:	13500213 	beq	k0,s0,c0c <data_size+0xbfc>
 3c0:	02135002 	0x2135002
 3c4:	50021350 	beql	zero,v0,5108 <data_size+0x50f8>
 3c8:	13500213 	beq	k0,s0,c18 <data_size+0xc08>
 3cc:	02135002 	0x2135002
 3d0:	02130190 	0x2130190
 3d4:	02130190 	0x2130190
 3d8:	8c021350 	lw	v0,4944(zero)
 3dc:	4c021301 	0x4c021301
 3e0:	134c0213 	beq	k0,t4,c30 <data_size+0xc20>
 3e4:	02134c02 	0x2134c02
 3e8:	4c02134c 	0x4c02134c
 3ec:	018c0213 	0x18c0213
 3f0:	018c0213 	0x18c0213
 3f4:	134c0213 	beq	k0,t4,c44 <data_size+0xc34>
 3f8:	13018c02 	beq	t8,at,fffe3404 <_etext+0x403d439c>
 3fc:	13018c02 	beq	t8,at,fffe3408 <_etext+0x403d43a0>
 400:	13018c02 	beq	t8,at,fffe340c <_etext+0x403d43a4>
 404:	02134c02 	0x2134c02
 408:	8c02134c 	lw	v0,4940(zero)
 40c:	8c021301 	lw	v0,4865(zero)
 410:	8c021301 	lw	v0,4865(zero)
 414:	8c021301 	lw	v0,4865(zero)
 418:	4c021301 	0x4c021301
 41c:	134c0213 	beq	k0,t4,c6c <data_size+0xc5c>
 420:	02134c02 	0x2134c02
 424:	0213018c 	syscall	0x84c06
 428:	0213018c 	syscall	0x84c06
 42c:	8c02134c 	lw	v0,4940(zero)
 430:	8c021301 	lw	v0,4865(zero)
 434:	4c021301 	0x4c021301
 438:	018c0213 	0x18c0213
 43c:	134c0213 	beq	k0,t4,c8c <data_size+0xc7c>
 440:	02134c02 	0x2134c02
 444:	4c02134c 	0x4c02134c
 448:	018c0213 	0x18c0213
 44c:	018c0213 	0x18c0213
 450:	018c0213 	0x18c0213
 454:	134c0213 	beq	k0,t4,ca4 <data_size+0xc94>
 458:	13018c02 	beq	t8,at,fffe3464 <_etext+0x403d43fc>
 45c:	13018c02 	beq	t8,at,fffe3468 <_etext+0x403d4400>
 460:	02134c02 	0x2134c02
 464:	8c02134c 	lw	v0,4940(zero)
 468:	8c021301 	lw	v0,4865(zero)
 46c:	8c021301 	lw	v0,4865(zero)
 470:	4c021301 	0x4c021301
 474:	134c0213 	beq	k0,t4,cc4 <data_size+0xcb4>
 478:	02134c02 	0x2134c02
 47c:	4c02134c 	0x4c02134c
 480:	134c0213 	beq	k0,t4,cd0 <data_size+0xcc0>
 484:	02134c02 	0x2134c02
 488:	4c02134c 	0x4c02134c
 48c:	134c0213 	beq	k0,t4,cdc <data_size+0xccc>
 490:	02134c02 	0x2134c02
 494:	4c02134c 	0x4c02134c
 498:	134c0213 	beq	k0,t4,ce8 <data_size+0xcd8>
 49c:	02134c02 	0x2134c02
 4a0:	4c02134c 	0x4c02134c
 4a4:	134c0213 	beq	k0,t4,cf4 <data_size+0xce4>
 4a8:	02134c02 	0x2134c02
 4ac:	4c02134c 	0x4c02134c
 4b0:	134c0213 	beq	k0,t4,d00 <data_size+0xcf0>
 4b4:	02134c02 	0x2134c02
 4b8:	4c02134c 	0x4c02134c
 4bc:	134c0213 	beq	k0,t4,d0c <data_size+0xcfc>
 4c0:	02134c02 	0x2134c02
 4c4:	4c02134c 	0x4c02134c
 4c8:	134c0213 	beq	k0,t4,d18 <data_size+0xd08>
 4cc:	02134c02 	0x2134c02
 4d0:	4c02134c 	0x4c02134c
 4d4:	14400213 	bnez	v0,d24 <data_size+0xd14>
 4d8:	4b4d4c4b 	c2	0x14d4c4b
 4dc:	024b4b4b 	0x24b4b4b
 4e0:	01010004 	sllv	zero,at,t0
 4e4:	0000019a 	0x19a
 4e8:	001f0002 	srl	zero,ra,0x0
 4ec:	01010000 	0x1010000
 4f0:	000d0efb 	0xd0efb
 4f4:	01010101 	0x1010101
 4f8:	01000000 	0x1000000
 4fc:	00010000 	sll	zero,at,0x0
 500:	5f39356e 	0x5f39356e
 504:	532e626c 	beql	t9,t6,18eb8 <data_size+0x18ea8>
 508:	00000000 	nop
 50c:	02050000 	0x2050000
 510:	bfc057a0 	cache	0x0,22432(s8)
 514:	024c4b18 	0x24c4b18
 518:	78021340 	0x78021340
 51c:	13780213 	beq	k1,t8,d6c <data_size+0xd5c>
 520:	02134002 	0x2134002
 524:	40021340 	0x40021340
 528:	13400213 	beqz	k0,d78 <data_size+0xd68>
 52c:	02134002 	0x2134002
 530:	78021340 	0x78021340
 534:	13400213 	beqz	k0,d84 <data_size+0xd74>
 538:	02134002 	0x2134002
 53c:	40021340 	0x40021340
 540:	13400213 	beqz	k0,d90 <data_size+0xd80>
 544:	02134002 	0x2134002
 548:	40021340 	0x40021340
 54c:	13400213 	beqz	k0,d9c <data_size+0xd8c>
 550:	02134002 	0x2134002
 554:	40021340 	0x40021340
 558:	13400213 	beqz	k0,da8 <data_size+0xd98>
 55c:	02137802 	0x2137802
 560:	40021340 	0x40021340
 564:	13780213 	beq	k1,t8,db4 <data_size+0xda4>
 568:	02134002 	0x2134002
 56c:	40021340 	0x40021340
 570:	13400213 	beqz	k0,dc0 <data_size+0xdb0>
 574:	02137802 	0x2137802
 578:	40021340 	0x40021340
 57c:	13780213 	beq	k1,t8,dcc <data_size+0xdbc>
 580:	02137802 	0x2137802
 584:	40021340 	0x40021340
 588:	13400213 	beqz	k0,dd8 <data_size+0xdc8>
 58c:	02134002 	0x2134002
 590:	78021378 	0x78021378
 594:	13400213 	beqz	k0,de4 <data_size+0xdd4>
 598:	02134002 	0x2134002
 59c:	40021378 	0x40021378
 5a0:	13780213 	beq	k1,t8,df0 <data_size+0xde0>
 5a4:	02134002 	0x2134002
 5a8:	40021378 	0x40021378
 5ac:	13400213 	beqz	k0,dfc <data_size+0xdec>
 5b0:	02134002 	0x2134002
 5b4:	40021340 	0x40021340
 5b8:	13400213 	beqz	k0,e08 <data_size+0xdf8>
 5bc:	02134002 	0x2134002
 5c0:	74021340 	jalx	84d00 <data_size+0x84cf0>
 5c4:	133c0213 	beq	t9,gp,e14 <data_size+0xe04>
 5c8:	02137402 	0x2137402
 5cc:	3c021374 	lui	v0,0x1374
 5d0:	133c0213 	beq	t9,gp,e20 <data_size+0xe10>
 5d4:	02133c02 	0x2133c02
 5d8:	3c02133c 	lui	v0,0x133c
 5dc:	133c0213 	beq	t9,gp,e2c <data_size+0xe1c>
 5e0:	02133c02 	0x2133c02
 5e4:	3c021374 	lui	v0,0x1374
 5e8:	13740213 	beq	k1,s4,e38 <data_size+0xe28>
 5ec:	02137402 	0x2137402
 5f0:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
 5f4:	13740213 	beq	k1,s4,e44 <data_size+0xe34>
 5f8:	02137402 	0x2137402
 5fc:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
 600:	13740213 	beq	k1,s4,e50 <data_size+0xe40>
 604:	02133c02 	0x2133c02
 608:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 60c:	133c0213 	beq	t9,gp,e5c <data_size+0xe4c>
 610:	02133c02 	0x2133c02
 614:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 618:	133c0213 	beq	t9,gp,e68 <data_size+0xe58>
 61c:	02137402 	0x2137402
 620:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 624:	133c0213 	beq	t9,gp,e74 <data_size+0xe64>
 628:	02137402 	0x2137402
 62c:	3c021374 	lui	v0,0x1374
 630:	133c0213 	beq	t9,gp,e80 <data_size+0xe70>
 634:	02133c02 	0x2133c02
 638:	3c02133c 	lui	v0,0x133c
 63c:	133c0213 	beq	t9,gp,e8c <data_size+0xe7c>
 640:	02133c02 	0x2133c02
 644:	3c02133c 	lui	v0,0x133c
 648:	133c0213 	beq	t9,gp,e98 <data_size+0xe88>
 64c:	02133c02 	0x2133c02
 650:	3c02133c 	lui	v0,0x133c
 654:	133c0213 	beq	t9,gp,ea4 <data_size+0xe94>
 658:	02133c02 	0x2133c02
 65c:	3c02133c 	lui	v0,0x133c
 660:	133c0213 	beq	t9,gp,eb0 <data_size+0xea0>
 664:	02133c02 	0x2133c02
 668:	3c02133c 	lui	v0,0x133c
 66c:	133c0213 	beq	t9,gp,ebc <data_size+0xeac>
 670:	02133c02 	0x2133c02
 674:	4c4b1438 	0x4c4b1438
 678:	4b4b4b4d 	c2	0x14b4b4d
 67c:	0004024b 	0x4024b
 680:	013d0101 	0x13d0101
 684:	00020000 	sll	zero,v0,0x0
 688:	0000001f 	0x1f
 68c:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
 690:	0101000d 	break	0x101
 694:	00000101 	0x101
 698:	00000100 	sll	zero,zero,0x4
 69c:	366e0001 	ori	t6,s3,0x1
 6a0:	686c5f31 	0x686c5f31
 6a4:	0000532e 	0x532e
 6a8:	00000000 	nop
 6ac:	7b500205 	0x7b500205
 6b0:	4b18bfc0 	c2	0x118bfc0
 6b4:	1340024c 	beqz	k0,fe8 <data_size+0xfd8>
 6b8:	02137802 	0x2137802
 6bc:	40021378 	0x40021378
 6c0:	13780213 	beq	k1,t8,f10 <data_size+0xf00>
 6c4:	02134002 	0x2134002
 6c8:	40021340 	0x40021340
 6cc:	13780213 	beq	k1,t8,f1c <data_size+0xf0c>
 6d0:	02137802 	0x2137802
 6d4:	40021340 	0x40021340
 6d8:	13400213 	beqz	k0,f28 <data_size+0xf18>
 6dc:	02134002 	0x2134002
 6e0:	40021378 	0x40021378
 6e4:	13780213 	beq	k1,t8,f34 <data_size+0xf24>
 6e8:	02134002 	0x2134002
 6ec:	78021378 	0x78021378
 6f0:	13400213 	beqz	k0,f40 <data_size+0xf30>
 6f4:	02137802 	0x2137802
 6f8:	78021340 	0x78021340
 6fc:	13780213 	beq	k1,t8,f4c <data_size+0xf3c>
 700:	02134002 	0x2134002
 704:	40021340 	0x40021340
 708:	13400213 	beqz	k0,f58 <data_size+0xf48>
 70c:	02137802 	0x2137802
 710:	40021340 	0x40021340
 714:	13400213 	beqz	k0,f64 <data_size+0xf54>
 718:	02134002 	0x2134002
 71c:	40021340 	0x40021340
 720:	13400213 	beqz	k0,f70 <data_size+0xf60>
 724:	02137402 	0x2137402
 728:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 72c:	133c0213 	beq	t9,gp,f7c <data_size+0xf6c>
 730:	02137402 	0x2137402
 734:	3c021374 	lui	v0,0x1374
 738:	13740213 	beq	k1,s4,f88 <data_size+0xf78>
 73c:	02133c02 	0x2133c02
 740:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
 744:	133c0213 	beq	t9,gp,f94 <data_size+0xf84>
 748:	02137402 	0x2137402
 74c:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 750:	13740213 	beq	k1,s4,fa0 <data_size+0xf90>
 754:	02133c02 	0x2133c02
 758:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
 75c:	13740213 	beq	k1,s4,fac <data_size+0xf9c>
 760:	02137402 	0x2137402
 764:	3c021374 	lui	v0,0x1374
 768:	133c0213 	beq	t9,gp,fb8 <data_size+0xfa8>
 76c:	02133c02 	0x2133c02
 770:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 774:	13740213 	beq	k1,s4,fc4 <data_size+0xfb4>
 778:	02133c02 	0x2133c02
 77c:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 780:	133c0213 	beq	t9,gp,fd0 <data_size+0xfc0>
 784:	02133c02 	0x2133c02
 788:	3c021374 	lui	v0,0x1374
 78c:	133c0213 	beq	t9,gp,fdc <data_size+0xfcc>
 790:	02133c02 	0x2133c02
 794:	3c02133c 	lui	v0,0x133c
 798:	133c0213 	beq	t9,gp,fe8 <data_size+0xfd8>
 79c:	02133c02 	0x2133c02
 7a0:	3c02133c 	lui	v0,0x133c
 7a4:	133c0213 	beq	t9,gp,ff4 <data_size+0xfe4>
 7a8:	02133c02 	0x2133c02
 7ac:	3c02133c 	lui	v0,0x133c
 7b0:	133c0213 	beq	t9,gp,1000 <data_size+0xff0>
 7b4:	4b143802 	c2	0x1143802
 7b8:	4b4b4d4c 	c2	0x14b4d4c
 7bc:	04024b4b 	bltzl	zero,134ec <data_size+0x134dc>
 7c0:	8e010100 	lw	at,256(s0)
 7c4:	02000001 	movf	zero,s0,$fcc0
 7c8:	00001f00 	sll	v1,zero,0x1c
 7cc:	fb010100 	sdc2	$1,256(t8)
 7d0:	01000d0e 	0x1000d0e
 7d4:	00010101 	0x10101
 7d8:	00010000 	sll	zero,at,0x0
 7dc:	6e000100 	0x6e000100
 7e0:	735f3436 	0x735f3436
 7e4:	00532e68 	0x532e68
 7e8:	00000000 	nop
 7ec:	a0020500 	sb	v0,1280(zero)
 7f0:	18bfc097 	0x18bfc097
 7f4:	50024c4b 	beql	zero,v0,13924 <data_size+0x13914>
 7f8:	13500213 	beq	k0,s0,1048 <data_size+0x1038>
 7fc:	02135002 	0x2135002
 800:	50021350 	beql	zero,v0,5544 <data_size+0x5534>
 804:	13500213 	beq	k0,s0,1054 <data_size+0x1044>
 808:	02135002 	0x2135002
 80c:	50021350 	beql	zero,v0,5550 <data_size+0x5540>
 810:	13500213 	beq	k0,s0,1060 <data_size+0x1050>
 814:	02135002 	0x2135002
 818:	50021350 	beql	zero,v0,555c <data_size+0x554c>
 81c:	13500213 	beq	k0,s0,106c <data_size+0x105c>
 820:	02135002 	0x2135002
 824:	02130190 	0x2130190
 828:	02130190 	0x2130190
 82c:	50021350 	beql	zero,v0,5570 <data_size+0x5560>
 830:	13500213 	beq	k0,s0,1080 <data_size+0x1070>
 834:	02135002 	0x2135002
 838:	02130190 	0x2130190
 83c:	90021350 	lbu	v0,4944(zero)
 840:	90021301 	lbu	v0,4865(zero)
 844:	50021301 	beql	zero,v0,544c <data_size+0x543c>
 848:	13500213 	beq	k0,s0,1098 <data_size+0x1088>
 84c:	13019002 	beq	t8,at,fffe4858 <_etext+0x403d57f0>
 850:	02135002 	0x2135002
 854:	50021350 	beql	zero,v0,5598 <data_size+0x5588>
 858:	13500213 	beq	k0,s0,10a8 <data_size+0x1098>
 85c:	02135002 	0x2135002
 860:	02130190 	0x2130190
 864:	50021350 	beql	zero,v0,55a8 <data_size+0x5598>
 868:	13500213 	beq	k0,s0,10b8 <data_size+0x10a8>
 86c:	02135002 	0x2135002
 870:	90021350 	lbu	v0,4944(zero)
 874:	8c021301 	lw	v0,4865(zero)
 878:	4c021301 	0x4c021301
 87c:	134c0213 	beq	k0,t4,10cc <data_size+0x10bc>
 880:	02134c02 	0x2134c02
 884:	4c02134c 	0x4c02134c
 888:	018c0213 	0x18c0213
 88c:	018c0213 	0x18c0213
 890:	018c0213 	0x18c0213
 894:	018c0213 	0x18c0213
 898:	018c0213 	0x18c0213
 89c:	134c0213 	beq	k0,t4,10ec <data_size+0x10dc>
 8a0:	13018c02 	beq	t8,at,fffe38ac <_etext+0x403d4844>
 8a4:	13018c02 	beq	t8,at,fffe38b0 <_etext+0x403d4848>
 8a8:	02134c02 	0x2134c02
 8ac:	4c02134c 	0x4c02134c
 8b0:	018c0213 	0x18c0213
 8b4:	018c0213 	0x18c0213
 8b8:	018c0213 	0x18c0213
 8bc:	018c0213 	0x18c0213
 8c0:	134c0213 	beq	k0,t4,1110 <data_size+0x1100>
 8c4:	13018c02 	beq	t8,at,fffe38d0 <_etext+0x403d4868>
 8c8:	13018c02 	beq	t8,at,fffe38d4 <_etext+0x403d486c>
 8cc:	13018c02 	beq	t8,at,fffe38d8 <_etext+0x403d4870>
 8d0:	02134c02 	0x2134c02
 8d4:	8c02134c 	lw	v0,4940(zero)
 8d8:	4c021301 	0x4c021301
 8dc:	134c0213 	beq	k0,t4,112c <data_size+0x111c>
 8e0:	13018c02 	beq	t8,at,fffe38ec <_etext+0x403d4884>
 8e4:	13018c02 	beq	t8,at,fffe38f0 <_etext+0x403d4888>
 8e8:	02134c02 	0x2134c02
 8ec:	0213018c 	syscall	0x84c06
 8f0:	8c02134c 	lw	v0,4940(zero)
 8f4:	8c021301 	lw	v0,4865(zero)
 8f8:	8c021301 	lw	v0,4865(zero)
 8fc:	4c021301 	0x4c021301
 900:	134c0213 	beq	k0,t4,1150 <data_size+0x1140>
 904:	02134c02 	0x2134c02
 908:	4c02134c 	0x4c02134c
 90c:	134c0213 	beq	k0,t4,115c <data_size+0x114c>
 910:	02134c02 	0x2134c02
 914:	4c02134c 	0x4c02134c
 918:	134c0213 	beq	k0,t4,1168 <data_size+0x1158>
 91c:	02134c02 	0x2134c02
 920:	4c02134c 	0x4c02134c
 924:	13480213 	beq	k0,t0,1174 <data_size+0x1164>
 928:	02134c02 	0x2134c02
 92c:	4c02134c 	0x4c02134c
 930:	134c0213 	beq	k0,t4,1180 <data_size+0x1170>
 934:	02134c02 	0x2134c02
 938:	4c02134c 	0x4c02134c
 93c:	134c0213 	beq	k0,t4,118c <data_size+0x117c>
 940:	02134c02 	0x2134c02
 944:	4002134c 	0x4002134c
 948:	4d4c4b14 	0x4d4c4b14
 94c:	4b4b4b4b 	c2	0x14b4b4b
 950:	01000402 	0x1000402
 954:	0001c801 	movt	t9,zero,$fcc0
 958:	1f000200 	bgtz	t8,115c <data_size+0x114c>
 95c:	01000000 	0x1000000
 960:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 964:	01010100 	0x1010100
 968:	00000001 	movf	zero,zero,$fcc0
 96c:	01000001 	movf	zero,t0,$fcc0
 970:	5f316e00 	0x5f316e00
 974:	2e69756c 	sltiu	t1,s3,30060
 978:	00000053 	mtlhx	zero
 97c:	05000000 	bltz	t0,980 <data_size+0x970>
 980:	c0be7002 	ll	s8,28674(a1)
 984:	4b4b18bf 	c2	0x14b18bf
 988:	75084b4c 	jalx	4212d30 <data_size+0x4212d20>
 98c:	75087508 	jalx	421d420 <data_size+0x421d410>
 990:	75087508 	jalx	421d420 <data_size+0x421d410>
 994:	75087508 	jalx	421d420 <data_size+0x421d410>
 998:	75087508 	jalx	421d420 <data_size+0x421d410>
 99c:	75087508 	jalx	421d420 <data_size+0x421d410>
 9a0:	75087508 	jalx	421d420 <data_size+0x421d410>
 9a4:	75087508 	jalx	421d420 <data_size+0x421d410>
 9a8:	084b7508 	j	12dd420 <data_size+0x12dd410>
 9ac:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 9b0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 9b4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 9b8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 9bc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 9c0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 9c4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 9c8:	4b750875 	c2	0x1750875
 9cc:	75087508 	jalx	421d420 <data_size+0x421d410>
 9d0:	75087508 	jalx	421d420 <data_size+0x421d410>
 9d4:	75087508 	jalx	421d420 <data_size+0x421d410>
 9d8:	75087508 	jalx	421d420 <data_size+0x421d410>
 9dc:	75087508 	jalx	421d420 <data_size+0x421d410>
 9e0:	75087508 	jalx	421d420 <data_size+0x421d410>
 9e4:	75087508 	jalx	421d420 <data_size+0x421d410>
 9e8:	75087508 	jalx	421d420 <data_size+0x421d410>
 9ec:	0875084b 	j	1d4212c <data_size+0x1d4211c>
 9f0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 9f4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 9f8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 9fc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a00:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a04:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a08:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a0c:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
 a10:	75087508 	jalx	421d420 <data_size+0x421d410>
 a14:	75087508 	jalx	421d420 <data_size+0x421d410>
 a18:	75087508 	jalx	421d420 <data_size+0x421d410>
 a1c:	75087508 	jalx	421d420 <data_size+0x421d410>
 a20:	75087508 	jalx	421d420 <data_size+0x421d410>
 a24:	75087508 	jalx	421d420 <data_size+0x421d410>
 a28:	75087508 	jalx	421d420 <data_size+0x421d410>
 a2c:	084b7508 	j	12dd420 <data_size+0x12dd410>
 a30:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a34:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a38:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a3c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a40:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a44:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a48:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a4c:	4b750875 	c2	0x1750875
 a50:	75087508 	jalx	421d420 <data_size+0x421d410>
 a54:	75087508 	jalx	421d420 <data_size+0x421d410>
 a58:	75087508 	jalx	421d420 <data_size+0x421d410>
 a5c:	75087508 	jalx	421d420 <data_size+0x421d410>
 a60:	75087508 	jalx	421d420 <data_size+0x421d410>
 a64:	75087508 	jalx	421d420 <data_size+0x421d410>
 a68:	75087508 	jalx	421d420 <data_size+0x421d410>
 a6c:	75087508 	jalx	421d420 <data_size+0x421d410>
 a70:	0875084b 	j	1d4212c <data_size+0x1d4211c>
 a74:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a78:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a7c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a80:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a84:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a88:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a8c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 a90:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
 a94:	75087508 	jalx	421d420 <data_size+0x421d410>
 a98:	75087508 	jalx	421d420 <data_size+0x421d410>
 a9c:	75087508 	jalx	421d420 <data_size+0x421d410>
 aa0:	75087508 	jalx	421d420 <data_size+0x421d410>
 aa4:	75087508 	jalx	421d420 <data_size+0x421d410>
 aa8:	75087508 	jalx	421d420 <data_size+0x421d410>
 aac:	75087508 	jalx	421d420 <data_size+0x421d410>
 ab0:	084b7508 	j	12dd420 <data_size+0x12dd410>
 ab4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 ab8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 abc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 ac0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 ac4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 ac8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 acc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 ad0:	4b750875 	c2	0x1750875
 ad4:	75087508 	jalx	421d420 <data_size+0x421d410>
 ad8:	75087508 	jalx	421d420 <data_size+0x421d410>
 adc:	75087508 	jalx	421d420 <data_size+0x421d410>
 ae0:	75087508 	jalx	421d420 <data_size+0x421d410>
 ae4:	75087508 	jalx	421d420 <data_size+0x421d410>
 ae8:	75087508 	jalx	421d420 <data_size+0x421d410>
 aec:	75087508 	jalx	421d420 <data_size+0x421d410>
 af0:	75087508 	jalx	421d420 <data_size+0x421d410>
 af4:	0875084b 	j	1d4212c <data_size+0x1d4211c>
 af8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 afc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b00:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b04:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b08:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b0c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b10:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b14:	4d4c4b76 	0x4d4c4b76
 b18:	4b4b4b4b 	c2	0x14b4b4b
 b1c:	01000402 	0x1000402
 b20:	00018601 	0x18601
 b24:	20000200 	addi	zero,zero,512
 b28:	01000000 	0x1000000
 b2c:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 b30:	01010100 	0x1010100
 b34:	00000001 	movf	zero,zero,$fcc0
 b38:	01000001 	movf	zero,t0,$fcc0
 b3c:	32366e00 	andi	s6,s1,0x6e00
 b40:	75686c5f 	jalx	5a1b17c <data_size+0x5a1b16c>
 b44:	0000532e 	0x532e
 b48:	00000000 	nop
 b4c:	d0d00205 	0xd0d00205
 b50:	4b18bfc0 	c2	0x118bfc0
 b54:	1378024c 	beq	k1,t8,1488 <data_size+0x1478>
 b58:	02134002 	0x2134002
 b5c:	40021340 	0x40021340
 b60:	13400213 	beqz	k0,13b0 <data_size+0x13a0>
 b64:	02134002 	0x2134002
 b68:	40021340 	0x40021340
 b6c:	13780213 	beq	k1,t8,13bc <data_size+0x13ac>
 b70:	02134002 	0x2134002
 b74:	40021340 	0x40021340
 b78:	13400213 	beqz	k0,13c8 <data_size+0x13b8>
 b7c:	02134002 	0x2134002
 b80:	78021340 	0x78021340
 b84:	13400213 	beqz	k0,13d4 <data_size+0x13c4>
 b88:	02134002 	0x2134002
 b8c:	40021378 	0x40021378
 b90:	13400213 	beqz	k0,13e0 <data_size+0x13d0>
 b94:	02134002 	0x2134002
 b98:	40021378 	0x40021378
 b9c:	13400213 	beqz	k0,13ec <data_size+0x13dc>
 ba0:	02134002 	0x2134002
 ba4:	40021340 	0x40021340
 ba8:	13400213 	beqz	k0,13f8 <data_size+0x13e8>
 bac:	02134002 	0x2134002
 bb0:	40021340 	0x40021340
 bb4:	13400213 	beqz	k0,1404 <data_size+0x13f4>
 bb8:	02137402 	0x2137402
 bbc:	3c02133c 	lui	v0,0x133c
 bc0:	133c0213 	beq	t9,gp,1410 <data_size+0x1400>
 bc4:	02137402 	0x2137402
 bc8:	74021374 	jalx	84dd0 <data_size+0x84dc0>
 bcc:	133c0213 	beq	t9,gp,141c <data_size+0x140c>
 bd0:	02137402 	0x2137402
 bd4:	7402133c 	jalx	84cf0 <data_size+0x84ce0>
 bd8:	13740213 	beq	k1,s4,1428 <data_size+0x1418>
 bdc:	02137402 	0x2137402
 be0:	3c021374 	lui	v0,0x1374
 be4:	133c0213 	beq	t9,gp,1434 <data_size+0x1424>
 be8:	02133c02 	0x2133c02
 bec:	3c021374 	lui	v0,0x1374
 bf0:	133c0213 	beq	t9,gp,1440 <data_size+0x1430>
 bf4:	02137402 	0x2137402
 bf8:	3c02133c 	lui	v0,0x133c
 bfc:	133c0213 	beq	t9,gp,144c <data_size+0x143c>
 c00:	02137402 	0x2137402
 c04:	3c021374 	lui	v0,0x1374
 c08:	133c0213 	beq	t9,gp,1458 <data_size+0x1448>
 c0c:	02137402 	0x2137402
 c10:	3c02133c 	lui	v0,0x133c
 c14:	133c0213 	beq	t9,gp,1464 <data_size+0x1454>
 c18:	02137402 	0x2137402
 c1c:	3c021374 	lui	v0,0x1374
 c20:	13740213 	beq	k1,s4,1470 <data_size+0x1460>
 c24:	02137402 	0x2137402
 c28:	3c02133c 	lui	v0,0x133c
 c2c:	133c0213 	beq	t9,gp,147c <data_size+0x146c>
 c30:	02133c02 	0x2133c02
 c34:	3c02133c 	lui	v0,0x133c
 c38:	133c0213 	beq	t9,gp,1488 <data_size+0x1478>
 c3c:	02133c02 	0x2133c02
 c40:	3c02133c 	lui	v0,0x133c
 c44:	133c0213 	beq	t9,gp,1494 <data_size+0x1484>
 c48:	02133c02 	0x2133c02
 c4c:	3c02133c 	lui	v0,0x133c
 c50:	133c0213 	beq	t9,gp,14a0 <data_size+0x1490>
 c54:	02133c02 	0x2133c02
 c58:	3c02133c 	lui	v0,0x133c
 c5c:	133c0213 	beq	t9,gp,14ac <data_size+0x149c>
 c60:	02133c02 	0x2133c02
 c64:	3c02133c 	lui	v0,0x133c
 c68:	133c0213 	beq	t9,gp,14b8 <data_size+0x14a8>
 c6c:	02133c02 	0x2133c02
 c70:	3c02133c 	lui	v0,0x133c
 c74:	133c0213 	beq	t9,gp,14c4 <data_size+0x14b4>
 c78:	02133c02 	0x2133c02
 c7c:	3c02133c 	lui	v0,0x133c
 c80:	133c0213 	beq	t9,gp,14d0 <data_size+0x14c0>
 c84:	02133c02 	0x2133c02
 c88:	3c02133c 	lui	v0,0x133c
 c8c:	133c0213 	beq	t9,gp,14dc <data_size+0x14cc>
 c90:	02133c02 	0x2133c02
 c94:	3c02133c 	lui	v0,0x133c
 c98:	133c0213 	beq	t9,gp,14e8 <data_size+0x14d8>
 c9c:	4b143802 	c2	0x1143802
 ca0:	4b4b4d4c 	c2	0x14b4d4c
 ca4:	04024b4b 	bltzl	zero,139d4 <data_size+0x139c4>
 ca8:	Address 0x0000000000000ca8 is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000003c 	0x3c
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000000 	nop
  10:	bfc00000 	cache	0x0,0(s8)
  14:	bfc0086c 	cache	0x0,2156(s8)
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
  40:	00000043 	sra	zero,zero,0x1
  44:	00140002 	srl	zero,s4,0x0
  48:	01040000 	0x1040000
  4c:	0000017d 	0x17d
  50:	bfc00870 	cache	0x0,2160(s8)
  54:	bfc02e98 	cache	0x0,11928(s8)
  58:	5f30366e 	0x5f30366e
  5c:	2e75626c 	sltiu	s5,s3,25196
  60:	682f0053 	0x682f0053
  64:	2f656d6f 	sltiu	a1,k1,28015
  68:	2f797363 	sltiu	t9,k1,29539
  6c:	636e7566 	0x636e7566
  70:	736e692f 	0x736e692f
  74:	4e470074 	c3	0x470074
  78:	53412055 	beql	k0,at,81d0 <data_size+0x81c0>
  7c:	312e3220 	andi	t6,t1,0x3220
  80:	30352e38 	andi	s5,at,0x2e38
  84:	42800100 	c0	0x800100
  88:	02000000 	0x2000000
  8c:	00002800 	sll	a1,zero,0x0
  90:	37010400 	ori	at,t8,0x400
  94:	a0000003 	sb	zero,3(zero)
  98:	98bfc02e 	lwr	ra,-16338(a1)
  9c:	6ebfc057 	0x6ebfc057
  a0:	735f3336 	0x735f3336
  a4:	00532e62 	0x532e62
  a8:	6d6f682f 	0x6d6f682f
  ac:	73632f65 	0x73632f65
  b0:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
  b4:	692f636e 	0x692f636e
  b8:	0074736e 	0x74736e
  bc:	20554e47 	addi	s5,v0,20039
  c0:	32205341 	andi	zero,s1,0x5341
  c4:	2e38312e 	sltiu	t8,s1,12590
  c8:	01003035 	0x1003035
  cc:	00004280 	sll	t0,zero,0xa
  d0:	3c000200 	lui	zero,0x200
  d4:	04000000 	bltz	zero,d8 <data_size+0xc8>
  d8:	0004e401 	0x4e401
  dc:	c057a000 	ll	s7,-24576(v0)
  e0:	c07b4cbf 	ll	k1,19647(v1)
  e4:	39356ebf 	xori	s5,t1,0x6ebf
  e8:	2e626c5f 	sltiu	v0,s3,27743
  ec:	682f0053 	0x682f0053
  f0:	2f656d6f 	sltiu	a1,k1,28015
  f4:	2f797363 	sltiu	t9,k1,29539
  f8:	636e7566 	0x636e7566
  fc:	736e692f 	0x736e692f
 100:	4e470074 	c3	0x470074
 104:	53412055 	beql	k0,at,825c <data_size+0x824c>
 108:	312e3220 	andi	t6,t1,0x3220
 10c:	30352e38 	andi	s5,at,0x2e38
 110:	42800100 	c0	0x800100
 114:	02000000 	0x2000000
 118:	00005000 	sll	t2,zero,0x0
 11c:	82010400 	lb	at,1024(s0)
 120:	50000006 	beqzl	zero,13c <data_size+0x12c>
 124:	a0bfc07b 	sb	ra,-16261(a1)
 128:	6ebfc097 	0x6ebfc097
 12c:	6c5f3136 	0x6c5f3136
 130:	00532e68 	0x532e68
 134:	6d6f682f 	0x6d6f682f
 138:	73632f65 	0x73632f65
 13c:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 140:	692f636e 	0x692f636e
 144:	0074736e 	0x74736e
 148:	20554e47 	addi	s5,v0,20039
 14c:	32205341 	andi	zero,s1,0x5341
 150:	2e38312e 	sltiu	t8,s1,12590
 154:	01003035 	0x1003035
 158:	00004280 	sll	t0,zero,0xa
 15c:	64000200 	0x64000200
 160:	04000000 	bltz	zero,164 <data_size+0x154>
 164:	0007c301 	0x7c301
 168:	c097a000 	ll	s7,-24576(a0)
 16c:	c0be6cbf 	ll	s8,27839(a1)
 170:	34366ebf 	ori	s6,at,0x6ebf
 174:	2e68735f 	sltiu	t0,s3,29535
 178:	682f0053 	0x682f0053
 17c:	2f656d6f 	sltiu	a1,k1,28015
 180:	2f797363 	sltiu	t9,k1,29539
 184:	636e7566 	0x636e7566
 188:	736e692f 	0x736e692f
 18c:	4e470074 	c3	0x470074
 190:	53412055 	beql	k0,at,82e8 <data_size+0x82d8>
 194:	312e3220 	andi	t6,t1,0x3220
 198:	30352e38 	andi	s5,at,0x2e38
 19c:	42800100 	c0	0x800100
 1a0:	02000000 	0x2000000
 1a4:	00007800 	sll	t7,zero,0x0
 1a8:	55010400 	bnel	t0,at,11ac <data_size+0x119c>
 1ac:	70000009 	0x70000009
 1b0:	ccbfc0be 	pref	0x1f,-16194(a1)
 1b4:	6ebfc0d0 	0x6ebfc0d0
 1b8:	756c5f31 	jalx	5b17cc4 <data_size+0x5b17cb4>
 1bc:	00532e69 	0x532e69
 1c0:	6d6f682f 	0x6d6f682f
 1c4:	73632f65 	0x73632f65
 1c8:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 1cc:	692f636e 	0x692f636e
 1d0:	0074736e 	0x74736e
 1d4:	20554e47 	addi	s5,v0,20039
 1d8:	32205341 	andi	zero,s1,0x5341
 1dc:	2e38312e 	sltiu	t8,s1,12590
 1e0:	01003035 	0x1003035
 1e4:	00004380 	sll	t0,zero,0xe
 1e8:	8c000200 	lw	zero,512(zero)
 1ec:	04000000 	bltz	zero,1f0 <data_size+0x1e0>
 1f0:	000b2101 	0xb2101
 1f4:	c0d0d000 	ll	s0,-12288(a2)
 1f8:	c0f048bf 	ll	s0,18623(a3)
 1fc:	32366ebf 	andi	s6,s1,0x6ebf
 200:	75686c5f 	jalx	5a1b17c <data_size+0x5a1b16c>
 204:	2f00532e 	sltiu	zero,t8,21294
 208:	656d6f68 	0x656d6f68
 20c:	7973632f 	0x7973632f
 210:	6e75662f 	0x6e75662f
 214:	6e692f63 	0x6e692f63
 218:	47007473 	c1	0x1007473
 21c:	4120554e 	0x4120554e
 220:	2e322053 	sltiu	s2,s1,8275
 224:	352e3831 	ori	t6,t1,0x3831
 228:	80010030 	lb	at,48(zero)

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
