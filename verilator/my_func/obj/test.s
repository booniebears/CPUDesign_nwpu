
main.elf:     file format elf32-tradlittlemips
main.elf


Disassembly of section .text:

bfc00000 <_ftext>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:19
bfc00000:	2408ffff 	li	t0,-1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:20
bfc00004:	2408ffff 	li	t0,-1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:21
bfc00008:	100001a8 	b	bfc006ac <locate>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:22
bfc0000c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:25
bfc00010:	3c088000 	lui	t0,0x8000
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:26
bfc00014:	25290001 	addiu	t1,t1,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:27
bfc00018:	01005025 	move	t2,t0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:28
bfc0001c:	01ae5821 	addu	t3,t5,t6
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:29
bfc00020:	8d0c0000 	lw	t4,0(t0)
	...
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:34
bfc000ec:	3c088000 	lui	t0,0x8000
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:35
bfc000f0:	25290001 	addiu	t1,t1,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:36
bfc000f4:	01005025 	move	t2,t0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:37
bfc000f8:	01ae5821 	addu	t3,t5,t6
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:38
bfc000fc:	8d0c0000 	lw	t4,0(t0)

bfc00100 <test_finish>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:41
bfc00100:	25080001 	addiu	t0,t0,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:42
bfc00104:	240900ff 	li	t1,255
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:43
bfc00108:	3c0abfaf 	lui	t2,0xbfaf
bfc0010c:	354afff0 	ori	t2,t2,0xfff0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:44
bfc00110:	ad490000 	sw	t1,0(t2)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:45
bfc00114:	1000fffa 	b	bfc00100 <test_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:46
bfc00118:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:48
bfc0011c:	3c088000 	lui	t0,0x8000
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:49
bfc00120:	25290001 	addiu	t1,t1,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:50
bfc00124:	01005025 	move	t2,t0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:51
bfc00128:	01ae5821 	addu	t3,t5,t6
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:52
bfc0012c:	8d0c0000 	lw	t4,0(t0)
	...
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:58
bfc00380:	0000d010 	mfhi	k0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:59
bfc00384:	0000d812 	mflo	k1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:60
bfc00388:	3c1a800d 	lui	k0,0x800d
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:61
bfc0038c:	8f5b0000 	lw	k1,0(k0)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:62
bfc00390:	241a0001 	li	k0,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:63
bfc00394:	137a0016 	beq	k1,k0,bfc003f0 <syscall_ex>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:64
bfc00398:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:65
bfc0039c:	241a0002 	li	k0,2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:66
bfc003a0:	137a0024 	beq	k1,k0,bfc00434 <break_ex>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:67
bfc003a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:68
bfc003a8:	241a0003 	li	k0,3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:69
bfc003ac:	137a0032 	beq	k1,k0,bfc00478 <overflow_ex>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:70
bfc003b0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:71
bfc003b4:	241a0004 	li	k0,4
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:72
bfc003b8:	137a003f 	beq	k1,k0,bfc004b8 <adel_load_ex>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:73
bfc003bc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:74
bfc003c0:	241a0005 	li	k0,5
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:75
bfc003c4:	137a004d 	beq	k1,k0,bfc004fc <ades_ex>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:76
bfc003c8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:77
bfc003cc:	241a0006 	li	k0,6
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:78
bfc003d0:	137a005b 	beq	k1,k0,bfc00540 <adel_if_ex>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:79
bfc003d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:80
bfc003d8:	241a0007 	li	k0,7
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:81
bfc003dc:	137a006a 	beq	k1,k0,bfc00588 <reserved_inst_ex>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:82
bfc003e0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:83
bfc003e4:	241a0008 	li	k0,8
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:84
bfc003e8:	137a0078 	beq	k1,k0,bfc005cc <int_ex>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:85
bfc003ec:	00000000 	nop

bfc003f0 <syscall_ex>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:88
bfc003f0:	00009021 	move	s2,zero
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:89
bfc003f4:	401a7000 	mfc0	k0,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:90
bfc003f8:	1754009d 	bne	k0,s4,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:91
bfc003fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:92
bfc00400:	401a6800 	mfc0	k0,c0_cause
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:93
bfc00404:	335a007c 	andi	k0,k0,0x7c
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:94
bfc00408:	241b0020 	li	k1,32
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:95
bfc0040c:	175b0098 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:96
bfc00410:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:97
bfc00414:	401a6000 	mfc0	k0,c0_status
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:98
bfc00418:	335a0002 	andi	k0,k0,0x2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:99
bfc0041c:	241b0002 	li	k1,2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:100
bfc00420:	175b0093 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:101
bfc00424:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:102
bfc00428:	3c120001 	lui	s2,0x1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:103
bfc0042c:	10000090 	b	bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:104
bfc00430:	00000000 	nop

bfc00434 <break_ex>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:107
bfc00434:	00009021 	move	s2,zero
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:108
bfc00438:	401a7000 	mfc0	k0,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:109
bfc0043c:	1754008c 	bne	k0,s4,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:110
bfc00440:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:111
bfc00444:	401a6800 	mfc0	k0,c0_cause
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:112
bfc00448:	335a007c 	andi	k0,k0,0x7c
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:113
bfc0044c:	241b0024 	li	k1,36
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:114
bfc00450:	175b0087 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:115
bfc00454:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:116
bfc00458:	401a6000 	mfc0	k0,c0_status
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:117
bfc0045c:	335a0002 	andi	k0,k0,0x2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:118
bfc00460:	241b0002 	li	k1,2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:119
bfc00464:	175b0082 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:120
bfc00468:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:121
bfc0046c:	3c120002 	lui	s2,0x2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:122
bfc00470:	1000007f 	b	bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:123
bfc00474:	00000000 	nop

bfc00478 <overflow_ex>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:126
bfc00478:	00009021 	move	s2,zero
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:127
bfc0047c:	401a7000 	mfc0	k0,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:128
bfc00480:	1754007b 	bne	k0,s4,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:129
bfc00484:	401a6800 	mfc0	k0,c0_cause
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:130
bfc00488:	335a007c 	andi	k0,k0,0x7c
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:131
bfc0048c:	241b0030 	li	k1,48
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:132
bfc00490:	175b0077 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:133
bfc00494:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:134
bfc00498:	401a6000 	mfc0	k0,c0_status
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:135
bfc0049c:	335a0002 	andi	k0,k0,0x2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:136
bfc004a0:	241b0002 	li	k1,2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:137
bfc004a4:	175b0072 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:138
bfc004a8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:139
bfc004ac:	3c120003 	lui	s2,0x3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:140
bfc004b0:	1000006f 	b	bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:141
bfc004b4:	00000000 	nop

bfc004b8 <adel_load_ex>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:144
bfc004b8:	00009021 	move	s2,zero
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:145
bfc004bc:	401a7000 	mfc0	k0,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:146
bfc004c0:	1754006b 	bne	k0,s4,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:147
bfc004c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:148
bfc004c8:	401a6800 	mfc0	k0,c0_cause
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:149
bfc004cc:	335a007c 	andi	k0,k0,0x7c
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:150
bfc004d0:	241b0010 	li	k1,16
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:151
bfc004d4:	175b0066 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:152
bfc004d8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:153
bfc004dc:	401a6000 	mfc0	k0,c0_status
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:154
bfc004e0:	335a0002 	andi	k0,k0,0x2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:155
bfc004e4:	241b0002 	li	k1,2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:156
bfc004e8:	175b0061 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:157
bfc004ec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:158
bfc004f0:	3c120004 	lui	s2,0x4
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:159
bfc004f4:	1000005e 	b	bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:160
bfc004f8:	00000000 	nop

bfc004fc <ades_ex>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:163
bfc004fc:	00009021 	move	s2,zero
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:164
bfc00500:	401a7000 	mfc0	k0,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:165
bfc00504:	1754005a 	bne	k0,s4,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:166
bfc00508:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:167
bfc0050c:	401a6800 	mfc0	k0,c0_cause
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:168
bfc00510:	335a007c 	andi	k0,k0,0x7c
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:169
bfc00514:	241b0014 	li	k1,20
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:170
bfc00518:	175b0055 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:171
bfc0051c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:172
bfc00520:	401a6000 	mfc0	k0,c0_status
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:173
bfc00524:	335a0002 	andi	k0,k0,0x2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:174
bfc00528:	241b0002 	li	k1,2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:175
bfc0052c:	175b0050 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:176
bfc00530:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:177
bfc00534:	3c120005 	lui	s2,0x5
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:178
bfc00538:	1000004d 	b	bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:179
bfc0053c:	00000000 	nop

bfc00540 <adel_if_ex>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:182
bfc00540:	00009021 	move	s2,zero
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:183
bfc00544:	401a7000 	mfc0	k0,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:184
bfc00548:	17540049 	bne	k0,s4,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:185
bfc0054c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:186
bfc00550:	40957000 	mtc0	s5,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:187
bfc00554:	401a6800 	mfc0	k0,c0_cause
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:188
bfc00558:	335a007c 	andi	k0,k0,0x7c
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:189
bfc0055c:	241b0010 	li	k1,16
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:190
bfc00560:	175b0043 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:191
bfc00564:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:192
bfc00568:	401a6000 	mfc0	k0,c0_status
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:193
bfc0056c:	335a0002 	andi	k0,k0,0x2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:194
bfc00570:	241b0002 	li	k1,2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:195
bfc00574:	175b003e 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:196
bfc00578:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:197
bfc0057c:	3c120006 	lui	s2,0x6
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:198
bfc00580:	1000003b 	b	bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:199
bfc00584:	00000000 	nop

bfc00588 <reserved_inst_ex>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:202
bfc00588:	00009021 	move	s2,zero
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:203
bfc0058c:	401a7000 	mfc0	k0,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:204
bfc00590:	17540037 	bne	k0,s4,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:205
bfc00594:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:206
bfc00598:	401a6800 	mfc0	k0,c0_cause
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:207
bfc0059c:	335a007c 	andi	k0,k0,0x7c
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:208
bfc005a0:	241b0028 	li	k1,40
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:209
bfc005a4:	175b0032 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:210
bfc005a8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:211
bfc005ac:	401a6000 	mfc0	k0,c0_status
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:212
bfc005b0:	335a0002 	andi	k0,k0,0x2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:213
bfc005b4:	241b0002 	li	k1,2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:214
bfc005b8:	175b002d 	bne	k0,k1,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:215
bfc005bc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:216
bfc005c0:	3c120007 	lui	s2,0x7
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:217
bfc005c4:	1000002a 	b	bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:218
bfc005c8:	00000000 	nop

bfc005cc <int_ex>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:221
bfc005cc:	00009021 	move	s2,zero
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:222
bfc005d0:	401a7000 	mfc0	k0,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:223
bfc005d4:	17540026 	bne	k0,s4,bfc00670 <ex_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:224
bfc005d8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:225
bfc005dc:	275a0008 	addiu	k0,k0,8
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:226
bfc005e0:	409a7000 	mtc0	k0,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:227
bfc005e4:	3c1bbfb0 	lui	k1,0xbfb0
bfc005e8:	af608ffc 	sw	zero,-28676(k1)
bfc005ec:	af608ffc 	sw	zero,-28676(k1)
bfc005f0:	af60fff8 	sw	zero,-8(k1)
bfc005f4:	af608ffc 	sw	zero,-28676(k1)
bfc005f8:	af608ffc 	sw	zero,-28676(k1)
bfc005fc:	8f608ffc 	lw	zero,-28676(k1)
bfc00600:	8f7bfff8 	lw	k1,-8(k1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:228
bfc00604:	401a6800 	mfc0	k0,c0_cause
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:229
bfc00608:	3c1bbfb0 	lui	k1,0xbfb0
bfc0060c:	af608ffc 	sw	zero,-28676(k1)
bfc00610:	af608ffc 	sw	zero,-28676(k1)
bfc00614:	af7bfff8 	sw	k1,-8(k1)
bfc00618:	af608ffc 	sw	zero,-28676(k1)
bfc0061c:	af608ffc 	sw	zero,-28676(k1)
bfc00620:	8f608ffc 	lw	zero,-28676(k1)
bfc00624:	8f7bfff8 	lw	k1,-8(k1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:230
bfc00628:	335a007c 	andi	k0,k0,0x7c
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:231
bfc0062c:	241b0000 	li	k1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:232
bfc00630:	175b000f 	bne	k0,k1,bfc00670 <ex_finish>
bfc00634:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:233
bfc00638:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:234
bfc0063c:	401a6000 	mfc0	k0,c0_status
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:235
bfc00640:	335a0002 	andi	k0,k0,0x2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:236
bfc00644:	241b0002 	li	k1,2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:237
bfc00648:	175b0009 	bne	k0,k1,bfc00670 <ex_finish>
bfc0064c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:238
bfc00650:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:239
bfc00654:	241affff 	li	k0,-1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:240
bfc00658:	241b0000 	li	k1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:241
bfc0065c:	409a5800 	mtc0	k0,c0_compare
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:242
bfc00660:	409b6800 	mtc0	k1,c0_cause
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:243
bfc00664:	1000000f 	b	bfc006a4 <ex_ret>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:244
bfc00668:	3c120008 	lui	s2,0x8
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:245
bfc0066c:	00000000 	nop

bfc00670 <ex_finish>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:248
bfc00670:	401a6800 	mfc0	k0,c0_cause
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:249
bfc00674:	3c1b8000 	lui	k1,0x8000
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:250
bfc00678:	035bd024 	and	k0,k0,k1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:251
bfc0067c:	401b7000 	mfc0	k1,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:252
bfc00680:	13400003 	beqz	k0,bfc00690 <ex_finish+0x20>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:253
bfc00684:	277b0004 	addiu	k1,k1,4
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:254
bfc00688:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:255
bfc0068c:	277b0004 	addiu	k1,k1,4
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:257
bfc00690:	409b7000 	mtc0	k1,c0_epc
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:258
bfc00694:	16400003 	bnez	s2,bfc006a4 <ex_ret>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:259
bfc00698:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:260
bfc0069c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:261
bfc006a0:	3c12ffff 	lui	s2,0xffff

bfc006a4 <ex_ret>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:264
bfc006a4:	42000018 	eret
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:266
bfc006a8:	00000000 	nop

bfc006ac <locate>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:271
bfc006ac:	3c04bfaf 	lui	a0,0xbfaf
bfc006b0:	3484f008 	ori	a0,a0,0xf008
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:272
bfc006b4:	3c05bfaf 	lui	a1,0xbfaf
bfc006b8:	34a5f004 	ori	a1,a1,0xf004
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:273
bfc006bc:	3c11bfaf 	lui	s1,0xbfaf
bfc006c0:	3631f010 	ori	s1,s1,0xf010
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:275
bfc006c4:	24090002 	li	t1,2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:276
bfc006c8:	240a0001 	li	t2,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:277
bfc006cc:	3c130000 	lui	s3,0x0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:279
bfc006d0:	ac890000 	sw	t1,0(a0)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:280
bfc006d4:	acaa0000 	sw	t2,0(a1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:281
bfc006d8:	ae330000 	sw	s3,0(s1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:283
bfc006dc:	3c100000 	lui	s0,0x0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:285
bfc006e0:	3c09bfc0 	lui	t1,0xbfc0
bfc006e4:	252906f8 	addiu	t1,t1,1784
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:286
bfc006e8:	3c0a2000 	lui	t2,0x2000
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:287
bfc006ec:	012ac823 	subu	t9,t1,t2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:288
bfc006f0:	03200008 	jr	t9
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:289
bfc006f4:	00000000 	nop

bfc006f8 <inst_test>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:292
bfc006f8:	0ff04ca4 	jal	bfc13290 <n1_lui_test>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:293
bfc006fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:294
bfc00700:	0ff0020c 	jal	bfc00830 <wait_1s>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:295
bfc00704:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:297
bfc00708:	3c19bfc0 	lui	t9,0xbfc0
bfc0070c:	27390718 	addiu	t9,t9,1816
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:298
bfc00710:	03200008 	jr	t9
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:299
bfc00714:	00000000 	nop

bfc00718 <kseg0_kseg1>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:302
bfc00718:	0ff00220 	jal	bfc00880 <my1_clz_test>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:303
bfc0071c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:304
bfc00720:	0ff0020c 	jal	bfc00830 <wait_1s>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:305
bfc00724:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:306
bfc00728:	0ff00890 	jal	bfc02240 <my2_clo_test>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:307
bfc0072c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:308
bfc00730:	0ff0020c 	jal	bfc00830 <wait_1s>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:309
bfc00734:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:310
bfc00738:	0ff00950 	jal	bfc02540 <my3_mul_test>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:311
bfc0073c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:312
bfc00740:	0ff0020c 	jal	bfc00830 <wait_1s>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:313
bfc00744:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:314
bfc00748:	0ff03000 	jal	bfc0c000 <my4_madd_test>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:315
bfc0074c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:316
bfc00750:	0ff0020c 	jal	bfc00830 <wait_1s>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:317
bfc00754:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:318
bfc00758:	0ff00314 	jal	bfc00c50 <my5_maddu_test>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:319
bfc0075c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:320
bfc00760:	0ff0020c 	jal	bfc00830 <wait_1s>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:321
bfc00764:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:322
bfc00768:	0ff0448c 	jal	bfc11230 <my6_msub_test>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:323
bfc0076c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:324
bfc00770:	0ff0020c 	jal	bfc00830 <wait_1s>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:325
bfc00774:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:326
bfc00778:	0ff03c74 	jal	bfc0f1d0 <my7_msubu_test>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:327
bfc0077c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:328
bfc00780:	0ff0020c 	jal	bfc00830 <wait_1s>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:329
bfc00784:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:331
bfc00788:	3c04bfaf 	lui	a0,0xbfaf
bfc0078c:	3484ffec 	ori	a0,a0,0xffec
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:332
bfc00790:	24081234 	li	t0,4660
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:333
bfc00794:	ac880000 	sw	t0,0(a0)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:334
bfc00798:	8c890000 	lw	t1,0(a0)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:335
bfc0079c:	00084400 	sll	t0,t0,0x10
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:336
bfc007a0:	15090009 	bne	t0,t1,bfc007c8 <io_err>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:337
bfc007a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:339
bfc007a8:	3c085678 	lui	t0,0x5678
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:340
bfc007ac:	ac880000 	sw	t0,0(a0)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:341
bfc007b0:	00084402 	srl	t0,t0,0x10
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:342
bfc007b4:	8c890000 	lw	t1,0(a0)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:343
bfc007b8:	15090003 	bne	t0,t1,bfc007c8 <io_err>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:344
bfc007bc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:345
bfc007c0:	10000003 	b	bfc007d0 <test_end>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:346
bfc007c4:	00000000 	nop

bfc007c8 <io_err>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:348
bfc007c8:	26100001 	addiu	s0,s0,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:349
bfc007cc:	ae300000 	sw	s0,0(s1)

bfc007d0 <test_end>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:352
bfc007d0:	24100059 	li	s0,89
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:353
bfc007d4:	1213000d 	beq	s0,s3,bfc0080c <test_end+0x3c>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:354
bfc007d8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:356
bfc007dc:	3c04bfaf 	lui	a0,0xbfaf
bfc007e0:	3484f000 	ori	a0,a0,0xf000
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:357
bfc007e4:	3c05bfaf 	lui	a1,0xbfaf
bfc007e8:	34a5f008 	ori	a1,a1,0xf008
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:358
bfc007ec:	3c06bfaf 	lui	a2,0xbfaf
bfc007f0:	34c6f004 	ori	a2,a2,0xf004
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:360
bfc007f4:	24090002 	li	t1,2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:362
bfc007f8:	ac800000 	sw	zero,0(a0)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:363
bfc007fc:	aca90000 	sw	t1,0(a1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:364
bfc00800:	acc90000 	sw	t1,0(a2)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:365
bfc00804:	10000008 	b	bfc00828 <test_end+0x58>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:366
bfc00808:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:368
bfc0080c:	24090001 	li	t1,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:369
bfc00810:	3c04bfaf 	lui	a0,0xbfaf
bfc00814:	3484f008 	ori	a0,a0,0xf008
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:370
bfc00818:	3c05bfaf 	lui	a1,0xbfaf
bfc0081c:	34a5f004 	ori	a1,a1,0xf004
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:371
bfc00820:	ac890000 	sw	t1,0(a0)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:372
bfc00824:	aca90000 	sw	t1,0(a1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:375
bfc00828:	0ff00040 	jal	bfc00100 <test_finish>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:376
bfc0082c:	00000000 	nop

bfc00830 <wait_1s>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:379
bfc00830:	3c08bfaf 	lui	t0,0xbfaf
bfc00834:	3508f02c 	ori	t0,t0,0xf02c
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:380
bfc00838:	3409aaaa 	li	t1,0xaaaa
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:383
bfc0083c:	8d0a0000 	lw	t2,0(t0)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:384
bfc00840:	01495026 	xor	t2,t2,t1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:385
bfc00844:	000a5a40 	sll	t3,t2,0x9
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:386
bfc00848:	256b0001 	addiu	t3,t3,1

bfc0084c <sub1>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:389
bfc0084c:	256bffff 	addiu	t3,t3,-1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:392
bfc00850:	8d0a0000 	lw	t2,0(t0)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:393
bfc00854:	01495026 	xor	t2,t2,t1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:394
bfc00858:	000a5240 	sll	t2,t2,0x9
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:395
bfc0085c:	016a602b 	sltu	t4,t3,t2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:396
bfc00860:	15800002 	bnez	t4,bfc0086c <sub1+0x20>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:397
bfc00864:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:398
bfc00868:	254b0000 	addiu	t3,t2,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:400
bfc0086c:	1560fff7 	bnez	t3,bfc0084c <sub1>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:401
bfc00870:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:402
bfc00874:	03e00008 	jr	ra
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/start.S:403
bfc00878:	00000000 	nop
sub1():
bfc0087c:	00000000 	nop

bfc00880 <my1_clz_test>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:7
bfc00880:	26100001 	addiu	s0,s0,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:8
bfc00884:	24120000 	li	s2,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:9
bfc00888:	3c0a0001 	lui	t2,0x1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:11
bfc0088c:	24080000 	li	t0,0
bfc00890:	71021020 	clz	v0,t0
bfc00894:	24090020 	li	t1,32
bfc00898:	152200e8 	bne	t1,v0,bfc00c3c <inst_error>
bfc0089c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:12
bfc008a0:	24080001 	li	t0,1
bfc008a4:	71021020 	clz	v0,t0
bfc008a8:	2409001f 	li	t1,31
bfc008ac:	152200e3 	bne	t1,v0,bfc00c3c <inst_error>
bfc008b0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:13
bfc008b4:	24080002 	li	t0,2
bfc008b8:	71021020 	clz	v0,t0
bfc008bc:	2409001e 	li	t1,30
bfc008c0:	152200de 	bne	t1,v0,bfc00c3c <inst_error>
bfc008c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:14
bfc008c8:	24080003 	li	t0,3
bfc008cc:	71021020 	clz	v0,t0
bfc008d0:	2409001e 	li	t1,30
bfc008d4:	152200d9 	bne	t1,v0,bfc00c3c <inst_error>
bfc008d8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:15
bfc008dc:	24080004 	li	t0,4
bfc008e0:	71021020 	clz	v0,t0
bfc008e4:	2409001d 	li	t1,29
bfc008e8:	152200d4 	bne	t1,v0,bfc00c3c <inst_error>
bfc008ec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:16
bfc008f0:	24080005 	li	t0,5
bfc008f4:	71021020 	clz	v0,t0
bfc008f8:	2409001d 	li	t1,29
bfc008fc:	152200cf 	bne	t1,v0,bfc00c3c <inst_error>
bfc00900:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:17
bfc00904:	24080006 	li	t0,6
bfc00908:	71021020 	clz	v0,t0
bfc0090c:	2409001d 	li	t1,29
bfc00910:	152200ca 	bne	t1,v0,bfc00c3c <inst_error>
bfc00914:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:18
bfc00918:	24080007 	li	t0,7
bfc0091c:	71021020 	clz	v0,t0
bfc00920:	2409001d 	li	t1,29
bfc00924:	152200c5 	bne	t1,v0,bfc00c3c <inst_error>
bfc00928:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:19
bfc0092c:	24080008 	li	t0,8
bfc00930:	71021020 	clz	v0,t0
bfc00934:	2409001c 	li	t1,28
bfc00938:	152200c0 	bne	t1,v0,bfc00c3c <inst_error>
bfc0093c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:20
bfc00940:	2408000f 	li	t0,15
bfc00944:	71021020 	clz	v0,t0
bfc00948:	2409001c 	li	t1,28
bfc0094c:	152200bb 	bne	t1,v0,bfc00c3c <inst_error>
bfc00950:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:21
bfc00954:	2408001f 	li	t0,31
bfc00958:	71021020 	clz	v0,t0
bfc0095c:	2409001b 	li	t1,27
bfc00960:	152200b6 	bne	t1,v0,bfc00c3c <inst_error>
bfc00964:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:22
bfc00968:	2408002f 	li	t0,47
bfc0096c:	71021020 	clz	v0,t0
bfc00970:	2409001a 	li	t1,26
bfc00974:	152200b1 	bne	t1,v0,bfc00c3c <inst_error>
bfc00978:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:23
bfc0097c:	2408004f 	li	t0,79
bfc00980:	71021020 	clz	v0,t0
bfc00984:	24090019 	li	t1,25
bfc00988:	152200ac 	bne	t1,v0,bfc00c3c <inst_error>
bfc0098c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:24
bfc00990:	2408008f 	li	t0,143
bfc00994:	71021020 	clz	v0,t0
bfc00998:	24090018 	li	t1,24
bfc0099c:	152200a7 	bne	t1,v0,bfc00c3c <inst_error>
bfc009a0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:25
bfc009a4:	240800ff 	li	t0,255
bfc009a8:	71021020 	clz	v0,t0
bfc009ac:	24090018 	li	t1,24
bfc009b0:	152200a2 	bne	t1,v0,bfc00c3c <inst_error>
bfc009b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:26
bfc009b8:	240801ff 	li	t0,511
bfc009bc:	71021020 	clz	v0,t0
bfc009c0:	24090017 	li	t1,23
bfc009c4:	1522009d 	bne	t1,v0,bfc00c3c <inst_error>
bfc009c8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:27
bfc009cc:	240802ff 	li	t0,767
bfc009d0:	71021020 	clz	v0,t0
bfc009d4:	24090016 	li	t1,22
bfc009d8:	15220098 	bne	t1,v0,bfc00c3c <inst_error>
bfc009dc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:28
bfc009e0:	240804ff 	li	t0,1279
bfc009e4:	71021020 	clz	v0,t0
bfc009e8:	24090015 	li	t1,21
bfc009ec:	15220093 	bne	t1,v0,bfc00c3c <inst_error>
bfc009f0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:29
bfc009f4:	240808ff 	li	t0,2303
bfc009f8:	71021020 	clz	v0,t0
bfc009fc:	24090014 	li	t1,20
bfc00a00:	1522008e 	bne	t1,v0,bfc00c3c <inst_error>
bfc00a04:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:30
bfc00a08:	24081fff 	li	t0,8191
bfc00a0c:	71021020 	clz	v0,t0
bfc00a10:	24090013 	li	t1,19
bfc00a14:	15220089 	bne	t1,v0,bfc00c3c <inst_error>
bfc00a18:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:31
bfc00a1c:	24082fff 	li	t0,12287
bfc00a20:	71021020 	clz	v0,t0
bfc00a24:	24090012 	li	t1,18
bfc00a28:	15220084 	bne	t1,v0,bfc00c3c <inst_error>
bfc00a2c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:32
bfc00a30:	24084fff 	li	t0,20479
bfc00a34:	71021020 	clz	v0,t0
bfc00a38:	24090011 	li	t1,17
bfc00a3c:	1522007f 	bne	t1,v0,bfc00c3c <inst_error>
bfc00a40:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:33
bfc00a44:	34088fff 	li	t0,0x8fff
bfc00a48:	71021020 	clz	v0,t0
bfc00a4c:	24090010 	li	t1,16
bfc00a50:	1522007a 	bne	t1,v0,bfc00c3c <inst_error>
bfc00a54:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:34
bfc00a58:	3c080001 	lui	t0,0x1
bfc00a5c:	3508ffff 	ori	t0,t0,0xffff
bfc00a60:	71021020 	clz	v0,t0
bfc00a64:	2409000f 	li	t1,15
bfc00a68:	15220074 	bne	t1,v0,bfc00c3c <inst_error>
bfc00a6c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:35
bfc00a70:	3c080002 	lui	t0,0x2
bfc00a74:	3508ffff 	ori	t0,t0,0xffff
bfc00a78:	71021020 	clz	v0,t0
bfc00a7c:	2409000e 	li	t1,14
bfc00a80:	1522006e 	bne	t1,v0,bfc00c3c <inst_error>
bfc00a84:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:36
bfc00a88:	3c080004 	lui	t0,0x4
bfc00a8c:	3508ffff 	ori	t0,t0,0xffff
bfc00a90:	71021020 	clz	v0,t0
bfc00a94:	2409000d 	li	t1,13
bfc00a98:	15220068 	bne	t1,v0,bfc00c3c <inst_error>
bfc00a9c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:37
bfc00aa0:	3c080008 	lui	t0,0x8
bfc00aa4:	3508ffff 	ori	t0,t0,0xffff
bfc00aa8:	71021020 	clz	v0,t0
bfc00aac:	2409000c 	li	t1,12
bfc00ab0:	15220062 	bne	t1,v0,bfc00c3c <inst_error>
bfc00ab4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:38
bfc00ab8:	3c08001f 	lui	t0,0x1f
bfc00abc:	3508ffff 	ori	t0,t0,0xffff
bfc00ac0:	71021020 	clz	v0,t0
bfc00ac4:	2409000b 	li	t1,11
bfc00ac8:	1522005c 	bne	t1,v0,bfc00c3c <inst_error>
bfc00acc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:39
bfc00ad0:	3c08002f 	lui	t0,0x2f
bfc00ad4:	3508ffff 	ori	t0,t0,0xffff
bfc00ad8:	71021020 	clz	v0,t0
bfc00adc:	2409000a 	li	t1,10
bfc00ae0:	15220056 	bne	t1,v0,bfc00c3c <inst_error>
bfc00ae4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:40
bfc00ae8:	3c08004f 	lui	t0,0x4f
bfc00aec:	3508ffff 	ori	t0,t0,0xffff
bfc00af0:	71021020 	clz	v0,t0
bfc00af4:	24090009 	li	t1,9
bfc00af8:	15220050 	bne	t1,v0,bfc00c3c <inst_error>
bfc00afc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:41
bfc00b00:	3c08008f 	lui	t0,0x8f
bfc00b04:	3508ffff 	ori	t0,t0,0xffff
bfc00b08:	71021020 	clz	v0,t0
bfc00b0c:	24090008 	li	t1,8
bfc00b10:	1522004a 	bne	t1,v0,bfc00c3c <inst_error>
bfc00b14:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:42
bfc00b18:	3c0801ff 	lui	t0,0x1ff
bfc00b1c:	3508ffff 	ori	t0,t0,0xffff
bfc00b20:	71021020 	clz	v0,t0
bfc00b24:	24090007 	li	t1,7
bfc00b28:	15220044 	bne	t1,v0,bfc00c3c <inst_error>
bfc00b2c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:43
bfc00b30:	3c0802ff 	lui	t0,0x2ff
bfc00b34:	3508ffff 	ori	t0,t0,0xffff
bfc00b38:	71021020 	clz	v0,t0
bfc00b3c:	24090006 	li	t1,6
bfc00b40:	1522003e 	bne	t1,v0,bfc00c3c <inst_error>
bfc00b44:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:44
bfc00b48:	3c0804ff 	lui	t0,0x4ff
bfc00b4c:	3508ffff 	ori	t0,t0,0xffff
bfc00b50:	71021020 	clz	v0,t0
bfc00b54:	24090005 	li	t1,5
bfc00b58:	15220038 	bne	t1,v0,bfc00c3c <inst_error>
bfc00b5c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:45
bfc00b60:	3c0808ff 	lui	t0,0x8ff
bfc00b64:	3508ffff 	ori	t0,t0,0xffff
bfc00b68:	71021020 	clz	v0,t0
bfc00b6c:	24090004 	li	t1,4
bfc00b70:	15220032 	bne	t1,v0,bfc00c3c <inst_error>
bfc00b74:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:46
bfc00b78:	3c081fff 	lui	t0,0x1fff
bfc00b7c:	3508ffff 	ori	t0,t0,0xffff
bfc00b80:	71021020 	clz	v0,t0
bfc00b84:	24090003 	li	t1,3
bfc00b88:	1522002c 	bne	t1,v0,bfc00c3c <inst_error>
bfc00b8c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:47
bfc00b90:	3c082fff 	lui	t0,0x2fff
bfc00b94:	3508ffff 	ori	t0,t0,0xffff
bfc00b98:	71021020 	clz	v0,t0
bfc00b9c:	24090002 	li	t1,2
bfc00ba0:	15220026 	bne	t1,v0,bfc00c3c <inst_error>
bfc00ba4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:48
bfc00ba8:	3c084fff 	lui	t0,0x4fff
bfc00bac:	3508ffff 	ori	t0,t0,0xffff
bfc00bb0:	71021020 	clz	v0,t0
bfc00bb4:	24090001 	li	t1,1
bfc00bb8:	15220020 	bne	t1,v0,bfc00c3c <inst_error>
bfc00bbc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:49
bfc00bc0:	3c088fff 	lui	t0,0x8fff
bfc00bc4:	3508ffff 	ori	t0,t0,0xffff
bfc00bc8:	71021020 	clz	v0,t0
bfc00bcc:	24090000 	li	t1,0
bfc00bd0:	1522001a 	bne	t1,v0,bfc00c3c <inst_error>
bfc00bd4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:51
bfc00bd8:	2408ffff 	li	t0,-1
bfc00bdc:	71021020 	clz	v0,t0
bfc00be0:	24090000 	li	t1,0
bfc00be4:	15220015 	bne	t1,v0,bfc00c3c <inst_error>
bfc00be8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:53
bfc00bec:	24080000 	li	t0,0
bfc00bf0:	71094820 	clz	t1,t0
bfc00bf4:	24080020 	li	t0,32
bfc00bf8:	15280010 	bne	t1,t0,bfc00c3c <inst_error>
bfc00bfc:	00000000 	nop
bfc00c00:	712a5020 	clz	t2,t1
bfc00c04:	2409001a 	li	t1,26
bfc00c08:	1549000c 	bne	t2,t1,bfc00c3c <inst_error>
bfc00c0c:	00000000 	nop
bfc00c10:	714b5820 	clz	t3,t2
bfc00c14:	716c6020 	clz	t4,t3
bfc00c18:	240a001b 	li	t2,27
bfc00c1c:	156a0007 	bne	t3,t2,bfc00c3c <inst_error>
bfc00c20:	00000000 	nop
bfc00c24:	240b001b 	li	t3,27
bfc00c28:	158b0004 	bne	t4,t3,bfc00c3c <inst_error>
bfc00c2c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:56
bfc00c30:	16400002 	bnez	s2,bfc00c3c <inst_error>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:57
bfc00c34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:59
bfc00c38:	26730001 	addiu	s3,s3,1

bfc00c3c <inst_error>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:62
bfc00c3c:	00104e00 	sll	t1,s0,0x18
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:63
bfc00c40:	01334025 	or	t0,t1,s3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:64
bfc00c44:	ae280000 	sw	t0,0(s1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:65
bfc00c48:	03e00008 	jr	ra
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my1_clz.S:66
bfc00c4c:	00000000 	nop

bfc00c50 <my5_maddu_test>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:7
bfc00c50:	26100001 	addiu	s0,s0,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:8
bfc00c54:	24120000 	li	s2,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:9
bfc00c58:	3c0a0001 	lui	t2,0x1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:11
bfc00c5c:	24082222 	li	t0,8738
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:12
bfc00c60:	24093333 	li	t1,13107
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:13
bfc00c64:	240a4444 	li	t2,17476
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:14
bfc00c68:	240b5555 	li	t3,21845
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:15
bfc00c6c:	71090001 	maddu	t0,t1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:16
bfc00c70:	712a0001 	maddu	t1,t2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:17
bfc00c74:	714b0001 	maddu	t2,t3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:18
bfc00c78:	3c089474 	lui	t0,0x9474
bfc00c7c:	3508ba99 	ori	t0,t0,0xba99
bfc00c80:	3c09643c 	lui	t1,0x643c
bfc00c84:	35299869 	ori	t1,t1,0x9869
bfc00c88:	3c0a74b0 	lui	t2,0x74b0
bfc00c8c:	354adc51 	ori	t2,t2,0xdc51
bfc00c90:	3c0bd517 	lui	t3,0xd517
bfc00c94:	356b6bb6 	ori	t3,t3,0x6bb6
bfc00c98:	01600011 	mthi	t3
bfc00c9c:	01400013 	mtlo	t2
bfc00ca0:	71090001 	maddu	t0,t1
bfc00ca4:	00006010 	mfhi	t4
bfc00ca8:	00006812 	mflo	t5
bfc00cac:	3c0eaafb 	lui	t6,0xaafb
bfc00cb0:	35ce8fef 	ori	t6,t6,0x8fef
bfc00cb4:	158e055c 	bne	t4,t6,bfc02228 <inst_error>
bfc00cb8:	00000000 	nop
bfc00cbc:	3c0e2738 	lui	t6,0x2738
bfc00cc0:	35ce3d12 	ori	t6,t6,0x3d12
bfc00cc4:	15ae0558 	bne	t5,t6,bfc02228 <inst_error>
bfc00cc8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:19
bfc00ccc:	3c08238e 	lui	t0,0x238e
bfc00cd0:	35081f29 	ori	t0,t0,0x1f29
bfc00cd4:	3c093d1b 	lui	t1,0x3d1b
bfc00cd8:	352958ba 	ori	t1,t1,0x58ba
bfc00cdc:	3c0a2eb1 	lui	t2,0x2eb1
bfc00ce0:	354a41f2 	ori	t2,t2,0x41f2
bfc00ce4:	3c0b861d 	lui	t3,0x861d
bfc00ce8:	356b561d 	ori	t3,t3,0x561d
bfc00cec:	01600011 	mthi	t3
bfc00cf0:	01400013 	mtlo	t2
bfc00cf4:	71090001 	maddu	t0,t1
bfc00cf8:	00006010 	mfhi	t4
bfc00cfc:	00006812 	mflo	t5
bfc00d00:	3c0e8e99 	lui	t6,0x8e99
bfc00d04:	35ceffd9 	ori	t6,t6,0xffd9
bfc00d08:	158e0547 	bne	t4,t6,bfc02228 <inst_error>
bfc00d0c:	00000000 	nop
bfc00d10:	3c0eecfc 	lui	t6,0xecfc
bfc00d14:	35cefdbc 	ori	t6,t6,0xfdbc
bfc00d18:	15ae0543 	bne	t5,t6,bfc02228 <inst_error>
bfc00d1c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:20
bfc00d20:	3c08aea0 	lui	t0,0xaea0
bfc00d24:	3508ff84 	ori	t0,t0,0xff84
bfc00d28:	3c09eddf 	lui	t1,0xeddf
bfc00d2c:	3529f7ac 	ori	t1,t1,0xf7ac
bfc00d30:	3c0afde9 	lui	t2,0xfde9
bfc00d34:	354adce5 	ori	t2,t2,0xdce5
bfc00d38:	3c0b1190 	lui	t3,0x1190
bfc00d3c:	356bcde7 	ori	t3,t3,0xcde7
bfc00d40:	01600011 	mthi	t3
bfc00d44:	01400013 	mtlo	t2
bfc00d48:	71090001 	maddu	t0,t1
bfc00d4c:	00006010 	mfhi	t4
bfc00d50:	00006812 	mflo	t5
bfc00d54:	3c0e1753 	lui	t6,0x1753
bfc00d58:	35ceaa75 	ori	t6,t6,0xaa75
bfc00d5c:	158e0532 	bne	t4,t6,bfc02228 <inst_error>
bfc00d60:	00000000 	nop
bfc00d64:	3c0e7099 	lui	t6,0x7099
bfc00d68:	35cee595 	ori	t6,t6,0xe595
bfc00d6c:	15ae052e 	bne	t5,t6,bfc02228 <inst_error>
bfc00d70:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:21
bfc00d74:	3c08ebf1 	lui	t0,0xebf1
bfc00d78:	3508f08a 	ori	t0,t0,0xf08a
bfc00d7c:	3c09109c 	lui	t1,0x109c
bfc00d80:	3529f92e 	ori	t1,t1,0xf92e
bfc00d84:	3c0a7fdc 	lui	t2,0x7fdc
bfc00d88:	354ac233 	ori	t2,t2,0xc233
bfc00d8c:	3c0bbe58 	lui	t3,0xbe58
bfc00d90:	356b3b37 	ori	t3,t3,0x3b37
bfc00d94:	01600011 	mthi	t3
bfc00d98:	01400013 	mtlo	t2
bfc00d9c:	71090001 	maddu	t0,t1
bfc00da0:	00006010 	mfhi	t4
bfc00da4:	00006812 	mflo	t5
bfc00da8:	3c0ebd0b 	lui	t6,0xbd0b
bfc00dac:	35ce0e29 	ori	t6,t6,0xe29
bfc00db0:	158e051d 	bne	t4,t6,bfc02228 <inst_error>
bfc00db4:	00000000 	nop
bfc00db8:	3c0e6c64 	lui	t6,0x6c64
bfc00dbc:	35ce34ff 	ori	t6,t6,0x34ff
bfc00dc0:	15ae0519 	bne	t5,t6,bfc02228 <inst_error>
bfc00dc4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:22
bfc00dc8:	3c08b195 	lui	t0,0xb195
bfc00dcc:	3508049a 	ori	t0,t0,0x49a
bfc00dd0:	3c09519b 	lui	t1,0x519b
bfc00dd4:	3529500d 	ori	t1,t1,0x500d
bfc00dd8:	3c0ac0d2 	lui	t2,0xc0d2
bfc00ddc:	354a45cf 	ori	t2,t2,0x45cf
bfc00de0:	3c0bda8e 	lui	t3,0xda8e
bfc00de4:	356bcf5d 	ori	t3,t3,0xcf5d
bfc00de8:	01600011 	mthi	t3
bfc00dec:	01400013 	mtlo	t2
bfc00df0:	71090001 	maddu	t0,t1
bfc00df4:	00006010 	mfhi	t4
bfc00df8:	00006812 	mflo	t5
bfc00dfc:	3c0ec18f 	lui	t6,0xc18f
bfc00e00:	35ce6285 	ori	t6,t6,0x6285
bfc00e04:	158e0508 	bne	t4,t6,bfc02228 <inst_error>
bfc00e08:	00000000 	nop
bfc00e0c:	3c0eda11 	lui	t6,0xda11
bfc00e10:	35cea1a1 	ori	t6,t6,0xa1a1
bfc00e14:	15ae0504 	bne	t5,t6,bfc02228 <inst_error>
bfc00e18:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:23
bfc00e1c:	3c08436c 	lui	t0,0x436c
bfc00e20:	35086125 	ori	t0,t0,0x6125
bfc00e24:	3c09333a 	lui	t1,0x333a
bfc00e28:	3529b105 	ori	t1,t1,0xb105
bfc00e2c:	3c0a2443 	lui	t2,0x2443
bfc00e30:	354aa858 	ori	t2,t2,0xa858
bfc00e34:	3c0b989c 	lui	t3,0x989c
bfc00e38:	356b7ba2 	ori	t3,t3,0x7ba2
bfc00e3c:	01600011 	mthi	t3
bfc00e40:	01400013 	mtlo	t2
bfc00e44:	71090001 	maddu	t0,t1
bfc00e48:	00006010 	mfhi	t4
bfc00e4c:	00006812 	mflo	t5
bfc00e50:	3c0ea61a 	lui	t6,0xa61a
bfc00e54:	35ce8829 	ori	t6,t6,0x8829
bfc00e58:	158e04f3 	bne	t4,t6,bfc02228 <inst_error>
bfc00e5c:	00000000 	nop
bfc00e60:	3c0ec5ee 	lui	t6,0xc5ee
bfc00e64:	35ce2311 	ori	t6,t6,0x2311
bfc00e68:	15ae04ef 	bne	t5,t6,bfc02228 <inst_error>
bfc00e6c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:24
bfc00e70:	3c08f712 	lui	t0,0xf712
bfc00e74:	35084255 	ori	t0,t0,0x4255
bfc00e78:	3c09bcac 	lui	t1,0xbcac
bfc00e7c:	35292f33 	ori	t1,t1,0x2f33
bfc00e80:	3c0ae765 	lui	t2,0xe765
bfc00e84:	354a8965 	ori	t2,t2,0x8965
bfc00e88:	3c0b71f3 	lui	t3,0x71f3
bfc00e8c:	356b2454 	ori	t3,t3,0x2454
bfc00e90:	01600011 	mthi	t3
bfc00e94:	01400013 	mtlo	t2
bfc00e98:	71090001 	maddu	t0,t1
bfc00e9c:	00006010 	mfhi	t4
bfc00ea0:	00006812 	mflo	t5
bfc00ea4:	3c0e744c 	lui	t6,0x744c
bfc00ea8:	35ce4954 	ori	t6,t6,0x4954
bfc00eac:	158e04de 	bne	t4,t6,bfc02228 <inst_error>
bfc00eb0:	00000000 	nop
bfc00eb4:	3c0e7752 	lui	t6,0x7752
bfc00eb8:	35ce5b54 	ori	t6,t6,0x5b54
bfc00ebc:	15ae04da 	bne	t5,t6,bfc02228 <inst_error>
bfc00ec0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:25
bfc00ec4:	3c08f7c9 	lui	t0,0xf7c9
bfc00ec8:	35083bf2 	ori	t0,t0,0x3bf2
bfc00ecc:	3c093a95 	lui	t1,0x3a95
bfc00ed0:	3529f874 	ori	t1,t1,0xf874
bfc00ed4:	3c0a1e7f 	lui	t2,0x1e7f
bfc00ed8:	354af521 	ori	t2,t2,0xf521
bfc00edc:	3c0b737b 	lui	t3,0x737b
bfc00ee0:	356b8ddc 	ori	t3,t3,0x8ddc
bfc00ee4:	01600011 	mthi	t3
bfc00ee8:	01400013 	mtlo	t2
bfc00eec:	71090001 	maddu	t0,t1
bfc00ef0:	00006010 	mfhi	t4
bfc00ef4:	00006812 	mflo	t5
bfc00ef8:	3c0e719a 	lui	t6,0x719a
bfc00efc:	35ce5598 	ori	t6,t6,0x5598
bfc00f00:	158e04c9 	bne	t4,t6,bfc02228 <inst_error>
bfc00f04:	00000000 	nop
bfc00f08:	3c0e0f9b 	lui	t6,0xf9b
bfc00f0c:	35ce8ec9 	ori	t6,t6,0x8ec9
bfc00f10:	15ae04c5 	bne	t5,t6,bfc02228 <inst_error>
bfc00f14:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:26
bfc00f18:	3c082222 	lui	t0,0x2222
bfc00f1c:	35081a70 	ori	t0,t0,0x1a70
bfc00f20:	3c093006 	lui	t1,0x3006
bfc00f24:	3529c83e 	ori	t1,t1,0xc83e
bfc00f28:	3c0a419a 	lui	t2,0x419a
bfc00f2c:	354ac241 	ori	t2,t2,0xc241
bfc00f30:	3c0b440b 	lui	t3,0x440b
bfc00f34:	356badfc 	ori	t3,t3,0xadfc
bfc00f38:	01600011 	mthi	t3
bfc00f3c:	01400013 	mtlo	t2
bfc00f40:	71090001 	maddu	t0,t1
bfc00f44:	00006010 	mfhi	t4
bfc00f48:	00006812 	mflo	t5
bfc00f4c:	3c0e4a72 	lui	t6,0x4a72
bfc00f50:	35cefa70 	ori	t6,t6,0xfa70
bfc00f54:	158e04b4 	bne	t4,t6,bfc02228 <inst_error>
bfc00f58:	00000000 	nop
bfc00f5c:	3c0ec924 	lui	t6,0xc924
bfc00f60:	35cea961 	ori	t6,t6,0xa961
bfc00f64:	15ae04b0 	bne	t5,t6,bfc02228 <inst_error>
bfc00f68:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:27
bfc00f6c:	3c083804 	lui	t0,0x3804
bfc00f70:	3508823e 	ori	t0,t0,0x823e
bfc00f74:	3c097724 	lui	t1,0x7724
bfc00f78:	3529c67e 	ori	t1,t1,0xc67e
bfc00f7c:	3c0adb9c 	lui	t2,0xdb9c
bfc00f80:	354a4616 	ori	t2,t2,0x4616
bfc00f84:	3c0bae15 	lui	t3,0xae15
bfc00f88:	356b2c95 	ori	t3,t3,0x2c95
bfc00f8c:	01600011 	mthi	t3
bfc00f90:	01400013 	mtlo	t2
bfc00f94:	71090001 	maddu	t0,t1
bfc00f98:	00006010 	mfhi	t4
bfc00f9c:	00006812 	mflo	t5
bfc00fa0:	3c0ec827 	lui	t6,0xc827
bfc00fa4:	35ce5131 	ori	t6,t6,0x5131
bfc00fa8:	158e049f 	bne	t4,t6,bfc02228 <inst_error>
bfc00fac:	00000000 	nop
bfc00fb0:	3c0e0d48 	lui	t6,0xd48
bfc00fb4:	35ce549a 	ori	t6,t6,0x549a
bfc00fb8:	15ae049b 	bne	t5,t6,bfc02228 <inst_error>
bfc00fbc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:28
bfc00fc0:	3c08a7f4 	lui	t0,0xa7f4
bfc00fc4:	35082871 	ori	t0,t0,0x2871
bfc00fc8:	3c09c7aa 	lui	t1,0xc7aa
bfc00fcc:	3529a7a4 	ori	t1,t1,0xa7a4
bfc00fd0:	3c0a95dc 	lui	t2,0x95dc
bfc00fd4:	354abd14 	ori	t2,t2,0xbd14
bfc00fd8:	3c0b1d4e 	lui	t3,0x1d4e
bfc00fdc:	356bd43b 	ori	t3,t3,0xd43b
bfc00fe0:	01600011 	mthi	t3
bfc00fe4:	01400013 	mtlo	t2
bfc00fe8:	71090001 	maddu	t0,t1
bfc00fec:	00006010 	mfhi	t4
bfc00ff0:	00006812 	mflo	t5
bfc00ff4:	3c0e30ae 	lui	t6,0x30ae
bfc00ff8:	35cec5b4 	ori	t6,t6,0xc5b4
bfc00ffc:	158e048a 	bne	t4,t6,bfc02228 <inst_error>
bfc01000:	00000000 	nop
bfc01004:	3c0e26b2 	lui	t6,0x26b2
bfc01008:	35ce5c78 	ori	t6,t6,0x5c78
bfc0100c:	15ae0486 	bne	t5,t6,bfc02228 <inst_error>
bfc01010:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:29
bfc01014:	3c082cd8 	lui	t0,0x2cd8
bfc01018:	35089a32 	ori	t0,t0,0x9a32
bfc0101c:	3c098592 	lui	t1,0x8592
bfc01020:	352972c4 	ori	t1,t1,0x72c4
bfc01024:	3c0aabdd 	lui	t2,0xabdd
bfc01028:	354a7614 	ori	t2,t2,0x7614
bfc0102c:	3c0bc7bc 	lui	t3,0xc7bc
bfc01030:	356b8025 	ori	t3,t3,0x8025
bfc01034:	01600011 	mthi	t3
bfc01038:	01400013 	mtlo	t2
bfc0103c:	71090001 	maddu	t0,t1
bfc01040:	00006010 	mfhi	t4
bfc01044:	00006812 	mflo	t5
bfc01048:	3c0eb24a 	lui	t6,0xb24a
bfc0104c:	35ce15b1 	ori	t6,t6,0x15b1
bfc01050:	158e0475 	bne	t4,t6,bfc02228 <inst_error>
bfc01054:	00000000 	nop
bfc01058:	3c0e60e1 	lui	t6,0x60e1
bfc0105c:	35cec85c 	ori	t6,t6,0xc85c
bfc01060:	15ae0471 	bne	t5,t6,bfc02228 <inst_error>
bfc01064:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:30
bfc01068:	3c08cd00 	lui	t0,0xcd00
bfc0106c:	350806fe 	ori	t0,t0,0x6fe
bfc01070:	3c095794 	lui	t1,0x5794
bfc01074:	352978fe 	ori	t1,t1,0x78fe
bfc01078:	3c0ac23d 	lui	t2,0xc23d
bfc0107c:	354abf05 	ori	t2,t2,0xbf05
bfc01080:	3c0b865e 	lui	t3,0x865e
bfc01084:	356b2156 	ori	t3,t3,0x2156
bfc01088:	01600011 	mthi	t3
bfc0108c:	01400013 	mtlo	t2
bfc01090:	71090001 	maddu	t0,t1
bfc01094:	00006010 	mfhi	t4
bfc01098:	00006812 	mflo	t5
bfc0109c:	3c0e74eb 	lui	t6,0x74eb
bfc010a0:	35ce8f9f 	ori	t6,t6,0x8f9f
bfc010a4:	158e0460 	bne	t4,t6,bfc02228 <inst_error>
bfc010a8:	00000000 	nop
bfc010ac:	3c0e8863 	lui	t6,0x8863
bfc010b0:	35cebf09 	ori	t6,t6,0xbf09
bfc010b4:	15ae045c 	bne	t5,t6,bfc02228 <inst_error>
bfc010b8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:31
bfc010bc:	3c0812e6 	lui	t0,0x12e6
bfc010c0:	350885fb 	ori	t0,t0,0x85fb
bfc010c4:	3c09adf1 	lui	t1,0xadf1
bfc010c8:	3529122f 	ori	t1,t1,0x122f
bfc010cc:	3c0ab0b1 	lui	t2,0xb0b1
bfc010d0:	354a0ffb 	ori	t2,t2,0xffb
bfc010d4:	3c0b9b64 	lui	t3,0x9b64
bfc010d8:	356b4884 	ori	t3,t3,0x4884
bfc010dc:	01600011 	mthi	t3
bfc010e0:	01400013 	mtlo	t2
bfc010e4:	71090001 	maddu	t0,t1
bfc010e8:	00006010 	mfhi	t4
bfc010ec:	00006812 	mflo	t5
bfc010f0:	3c0e9555 	lui	t6,0x9555
bfc010f4:	35ce576f 	ori	t6,t6,0x576f
bfc010f8:	158e044b 	bne	t4,t6,bfc02228 <inst_error>
bfc010fc:	00000000 	nop
bfc01100:	3c0e1eba 	lui	t6,0x1eba
bfc01104:	35ce4f10 	ori	t6,t6,0x4f10
bfc01108:	15ae0447 	bne	t5,t6,bfc02228 <inst_error>
bfc0110c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:32
bfc01110:	3c08c6c7 	lui	t0,0xc6c7
bfc01114:	35089a8b 	ori	t0,t0,0x9a8b
bfc01118:	3c091801 	lui	t1,0x1801
bfc0111c:	352915be 	ori	t1,t1,0x15be
bfc01120:	3c0a4739 	lui	t2,0x4739
bfc01124:	354a8c89 	ori	t2,t2,0x8c89
bfc01128:	3c0b15b5 	lui	t3,0x15b5
bfc0112c:	356baf5c 	ori	t3,t3,0xaf5c
bfc01130:	01600011 	mthi	t3
bfc01134:	01400013 	mtlo	t2
bfc01138:	71090001 	maddu	t0,t1
bfc0113c:	00006010 	mfhi	t4
bfc01140:	00006812 	mflo	t5
bfc01144:	3c0e1058 	lui	t6,0x1058
bfc01148:	35ce27c4 	ori	t6,t6,0x27c4
bfc0114c:	158e0436 	bne	t4,t6,bfc02228 <inst_error>
bfc01150:	00000000 	nop
bfc01154:	3c0ed196 	lui	t6,0xd196
bfc01158:	35cea6b3 	ori	t6,t6,0xa6b3
bfc0115c:	15ae0432 	bne	t5,t6,bfc02228 <inst_error>
bfc01160:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:33
bfc01164:	3c080d34 	lui	t0,0xd34
bfc01168:	3508b6a8 	ori	t0,t0,0xb6a8
bfc0116c:	3c093f6a 	lui	t1,0x3f6a
bfc01170:	3529b60f 	ori	t1,t1,0xb60f
bfc01174:	3c0a7e0c 	lui	t2,0x7e0c
bfc01178:	354a57b1 	ori	t2,t2,0x57b1
bfc0117c:	3c0b579b 	lui	t3,0x579b
bfc01180:	356be4f1 	ori	t3,t3,0xe4f1
bfc01184:	01600011 	mthi	t3
bfc01188:	01400013 	mtlo	t2
bfc0118c:	71090001 	maddu	t0,t1
bfc01190:	00006010 	mfhi	t4
bfc01194:	00006812 	mflo	t5
bfc01198:	3c0e5ae1 	lui	t6,0x5ae1
bfc0119c:	35ce5f1c 	ori	t6,t6,0x5f1c
bfc011a0:	158e0421 	bne	t4,t6,bfc02228 <inst_error>
bfc011a4:	00000000 	nop
bfc011a8:	3c0eb78e 	lui	t6,0xb78e
bfc011ac:	35ce7b89 	ori	t6,t6,0x7b89
bfc011b0:	15ae041d 	bne	t5,t6,bfc02228 <inst_error>
bfc011b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:34
bfc011b8:	3c085ff8 	lui	t0,0x5ff8
bfc011bc:	35087e05 	ori	t0,t0,0x7e05
bfc011c0:	3c09da58 	lui	t1,0xda58
bfc011c4:	3529f409 	ori	t1,t1,0xf409
bfc011c8:	3c0a4ad0 	lui	t2,0x4ad0
bfc011cc:	354a84e9 	ori	t2,t2,0x84e9
bfc011d0:	3c0b1381 	lui	t3,0x1381
bfc011d4:	356b823a 	ori	t3,t3,0x823a
bfc011d8:	01600011 	mthi	t3
bfc011dc:	01400013 	mtlo	t2
bfc011e0:	71090001 	maddu	t0,t1
bfc011e4:	00006010 	mfhi	t4
bfc011e8:	00006812 	mflo	t5
bfc011ec:	3c0e0563 	lui	t6,0x563
bfc011f0:	35cef86d 	ori	t6,t6,0xf86d
bfc011f4:	158e040c 	bne	t4,t6,bfc02228 <inst_error>
bfc011f8:	00000000 	nop
bfc011fc:	3c0e1661 	lui	t6,0x1661
bfc01200:	35ceb716 	ori	t6,t6,0xb716
bfc01204:	15ae0408 	bne	t5,t6,bfc02228 <inst_error>
bfc01208:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:35
bfc0120c:	3c08100f 	lui	t0,0x100f
bfc01210:	35088fca 	ori	t0,t0,0x8fca
bfc01214:	3c09eafe 	lui	t1,0xeafe
bfc01218:	3529b535 	ori	t1,t1,0xb535
bfc0121c:	3c0a098a 	lui	t2,0x98a
bfc01220:	354a3148 	ori	t2,t2,0x3148
bfc01224:	3c0b06b9 	lui	t3,0x6b9
bfc01228:	356b4764 	ori	t3,t3,0x4764
bfc0122c:	01600011 	mthi	t3
bfc01230:	01400013 	mtlo	t2
bfc01234:	71090001 	maddu	t0,t1
bfc01238:	00006010 	mfhi	t4
bfc0123c:	00006812 	mflo	t5
bfc01240:	3c0e0567 	lui	t6,0x567
bfc01244:	35ceebd7 	ori	t6,t6,0xebd7
bfc01248:	158e03f7 	bne	t4,t6,bfc02228 <inst_error>
bfc0124c:	00000000 	nop
bfc01250:	3c0eabd8 	lui	t6,0xabd8
bfc01254:	35cec81a 	ori	t6,t6,0xc81a
bfc01258:	15ae03f3 	bne	t5,t6,bfc02228 <inst_error>
bfc0125c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:36
bfc01260:	3c08168e 	lui	t0,0x168e
bfc01264:	3508121f 	ori	t0,t0,0x121f
bfc01268:	3c0999e1 	lui	t1,0x99e1
bfc0126c:	3529c0e2 	ori	t1,t1,0xc0e2
bfc01270:	3c0a540a 	lui	t2,0x540a
bfc01274:	354a471c 	ori	t2,t2,0x471c
bfc01278:	3c0b51d9 	lui	t3,0x51d9
bfc0127c:	356bc564 	ori	t3,t3,0xc564
bfc01280:	01600011 	mthi	t3
bfc01284:	01400013 	mtlo	t2
bfc01288:	71090001 	maddu	t0,t1
bfc0128c:	00006010 	mfhi	t4
bfc01290:	00006812 	mflo	t5
bfc01294:	3c0e48da 	lui	t6,0x48da
bfc01298:	35ce7ff6 	ori	t6,t6,0x7ff6
bfc0129c:	158e03e2 	bne	t4,t6,bfc02228 <inst_error>
bfc012a0:	00000000 	nop
bfc012a4:	3c0e3f4c 	lui	t6,0x3f4c
bfc012a8:	35ce867a 	ori	t6,t6,0x867a
bfc012ac:	15ae03de 	bne	t5,t6,bfc02228 <inst_error>
bfc012b0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:37
bfc012b4:	3c080bf7 	lui	t0,0xbf7
bfc012b8:	35082b14 	ori	t0,t0,0x2b14
bfc012bc:	3c094296 	lui	t1,0x4296
bfc012c0:	35293e5a 	ori	t1,t1,0x3e5a
bfc012c4:	3c0a08f2 	lui	t2,0x8f2
bfc012c8:	354ab15e 	ori	t2,t2,0xb15e
bfc012cc:	3c0b3b0f 	lui	t3,0x3b0f
bfc012d0:	356bd379 	ori	t3,t3,0xd379
bfc012d4:	01600011 	mthi	t3
bfc012d8:	01400013 	mtlo	t2
bfc012dc:	71090001 	maddu	t0,t1
bfc012e0:	00006010 	mfhi	t4
bfc012e4:	00006812 	mflo	t5
bfc012e8:	3c0e3e2c 	lui	t6,0x3e2c
bfc012ec:	35ce9251 	ori	t6,t6,0x9251
bfc012f0:	158e03cd 	bne	t4,t6,bfc02228 <inst_error>
bfc012f4:	00000000 	nop
bfc012f8:	3c0e7ffe 	lui	t6,0x7ffe
bfc012fc:	35ceae66 	ori	t6,t6,0xae66
bfc01300:	15ae03c9 	bne	t5,t6,bfc02228 <inst_error>
bfc01304:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:38
bfc01308:	3c08b69d 	lui	t0,0xb69d
bfc0130c:	35087ec5 	ori	t0,t0,0x7ec5
bfc01310:	3c09f95a 	lui	t1,0xf95a
bfc01314:	3529119c 	ori	t1,t1,0x119c
bfc01318:	3c0a8000 	lui	t2,0x8000
bfc0131c:	354a35ef 	ori	t2,t2,0x35ef
bfc01320:	3c0b8e15 	lui	t3,0x8e15
bfc01324:	356beef7 	ori	t3,t3,0xeef7
bfc01328:	01600011 	mthi	t3
bfc0132c:	01400013 	mtlo	t2
bfc01330:	71090001 	maddu	t0,t1
bfc01334:	00006010 	mfhi	t4
bfc01338:	00006812 	mflo	t5
bfc0133c:	3c0e8ffd 	lui	t6,0x8ffd
bfc01340:	35ceced1 	ori	t6,t6,0xced1
bfc01344:	158e03b8 	bne	t4,t6,bfc02228 <inst_error>
bfc01348:	00000000 	nop
bfc0134c:	3c0e6ba6 	lui	t6,0x6ba6
bfc01350:	35ce8afb 	ori	t6,t6,0x8afb
bfc01354:	15ae03b4 	bne	t5,t6,bfc02228 <inst_error>
bfc01358:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:39
bfc0135c:	3c088048 	lui	t0,0x8048
bfc01360:	35081f56 	ori	t0,t0,0x1f56
bfc01364:	3c099092 	lui	t1,0x9092
bfc01368:	35292654 	ori	t1,t1,0x2654
bfc0136c:	3c0aff77 	lui	t2,0xff77
bfc01370:	354aa1e5 	ori	t2,t2,0xa1e5
bfc01374:	3c0b4c04 	lui	t3,0x4c04
bfc01378:	356ba8af 	ori	t3,t3,0xa8af
bfc0137c:	01600011 	mthi	t3
bfc01380:	01400013 	mtlo	t2
bfc01384:	71090001 	maddu	t0,t1
bfc01388:	00006010 	mfhi	t4
bfc0138c:	00006812 	mflo	t5
bfc01390:	3c0e839c 	lui	t6,0x839c
bfc01394:	35ce30fc 	ori	t6,t6,0x30fc
bfc01398:	158e03a3 	bne	t4,t6,bfc02228 <inst_error>
bfc0139c:	00000000 	nop
bfc013a0:	3c0e0ad4 	lui	t6,0xad4
bfc013a4:	35ceae1d 	ori	t6,t6,0xae1d
bfc013a8:	15ae039f 	bne	t5,t6,bfc02228 <inst_error>
bfc013ac:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:40
bfc013b0:	3c0814e1 	lui	t0,0x14e1
bfc013b4:	35087e33 	ori	t0,t0,0x7e33
bfc013b8:	3c098b21 	lui	t1,0x8b21
bfc013bc:	3529f11d 	ori	t1,t1,0xf11d
bfc013c0:	3c0a2df6 	lui	t2,0x2df6
bfc013c4:	354ad648 	ori	t2,t2,0xd648
bfc013c8:	3c0bb5d5 	lui	t3,0xb5d5
bfc013cc:	356b3ceb 	ori	t3,t3,0x3ceb
bfc013d0:	01600011 	mthi	t3
bfc013d4:	01400013 	mtlo	t2
bfc013d8:	71090001 	maddu	t0,t1
bfc013dc:	00006010 	mfhi	t4
bfc013e0:	00006812 	mflo	t5
bfc013e4:	3c0eac4c 	lui	t6,0xac4c
bfc013e8:	35cef2f9 	ori	t6,t6,0xf2f9
bfc013ec:	158e038e 	bne	t4,t6,bfc02228 <inst_error>
bfc013f0:	00000000 	nop
bfc013f4:	3c0ec8e3 	lui	t6,0xc8e3
bfc013f8:	35ce250f 	ori	t6,t6,0x250f
bfc013fc:	15ae038a 	bne	t5,t6,bfc02228 <inst_error>
bfc01400:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:41
bfc01404:	3c0857fc 	lui	t0,0x57fc
bfc01408:	35084fbb 	ori	t0,t0,0x4fbb
bfc0140c:	3c0943f1 	lui	t1,0x43f1
bfc01410:	35298422 	ori	t1,t1,0x8422
bfc01414:	3c0a26f3 	lui	t2,0x26f3
bfc01418:	354a24ba 	ori	t2,t2,0x24ba
bfc0141c:	3c0b49da 	lui	t3,0x49da
bfc01420:	356b307d 	ori	t3,t3,0x307d
bfc01424:	01600011 	mthi	t3
bfc01428:	01400013 	mtlo	t2
bfc0142c:	71090001 	maddu	t0,t1
bfc01430:	00006010 	mfhi	t4
bfc01434:	00006812 	mflo	t5
bfc01438:	3c0e6134 	lui	t6,0x6134
bfc0143c:	35ce3b4b 	ori	t6,t6,0x3b4b
bfc01440:	158e0379 	bne	t4,t6,bfc02228 <inst_error>
bfc01444:	00000000 	nop
bfc01448:	3c0eef9d 	lui	t6,0xef9d
bfc0144c:	35ce2790 	ori	t6,t6,0x2790
bfc01450:	15ae0375 	bne	t5,t6,bfc02228 <inst_error>
bfc01454:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:42
bfc01458:	3c085fb8 	lui	t0,0x5fb8
bfc0145c:	3508370b 	ori	t0,t0,0x370b
bfc01460:	3c09fb77 	lui	t1,0xfb77
bfc01464:	352953e6 	ori	t1,t1,0x53e6
bfc01468:	3c0a6aa7 	lui	t2,0x6aa7
bfc0146c:	354a8f7f 	ori	t2,t2,0x8f7f
bfc01470:	3c0b6fc7 	lui	t3,0x6fc7
bfc01474:	356b5af8 	ori	t3,t3,0x5af8
bfc01478:	01600011 	mthi	t3
bfc0147c:	01400013 	mtlo	t2
bfc01480:	71090001 	maddu	t0,t1
bfc01484:	00006010 	mfhi	t4
bfc01488:	00006812 	mflo	t5
bfc0148c:	3c0e6e15 	lui	t6,0x6e15
bfc01490:	35ce5fe5 	ori	t6,t6,0x5fe5
bfc01494:	158e0364 	bne	t4,t6,bfc02228 <inst_error>
bfc01498:	00000000 	nop
bfc0149c:	3c0e831e 	lui	t6,0x831e
bfc014a0:	35ce9461 	ori	t6,t6,0x9461
bfc014a4:	15ae0360 	bne	t5,t6,bfc02228 <inst_error>
bfc014a8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:43
bfc014ac:	3c0882a1 	lui	t0,0x82a1
bfc014b0:	3508e708 	ori	t0,t0,0xe708
bfc014b4:	3c0973a1 	lui	t1,0x73a1
bfc014b8:	3529821b 	ori	t1,t1,0x821b
bfc014bc:	3c0aaaa3 	lui	t2,0xaaa3
bfc014c0:	354aaa4b 	ori	t2,t2,0xaa4b
bfc014c4:	3c0beb03 	lui	t3,0xeb03
bfc014c8:	356b18b2 	ori	t3,t3,0x18b2
bfc014cc:	01600011 	mthi	t3
bfc014d0:	01400013 	mtlo	t2
bfc014d4:	71090001 	maddu	t0,t1
bfc014d8:	00006010 	mfhi	t4
bfc014dc:	00006812 	mflo	t5
bfc014e0:	3c0eb262 	lui	t6,0xb262
bfc014e4:	35cebb95 	ori	t6,t6,0xbb95
bfc014e8:	158e034f 	bne	t4,t6,bfc02228 <inst_error>
bfc014ec:	00000000 	nop
bfc014f0:	3c0e8d11 	lui	t6,0x8d11
bfc014f4:	35ce1823 	ori	t6,t6,0x1823
bfc014f8:	15ae034b 	bne	t5,t6,bfc02228 <inst_error>
bfc014fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:44
bfc01500:	3c088e36 	lui	t0,0x8e36
bfc01504:	3508ed68 	ori	t0,t0,0xed68
bfc01508:	3c09acd6 	lui	t1,0xacd6
bfc0150c:	352966c8 	ori	t1,t1,0x66c8
bfc01510:	3c0a5092 	lui	t2,0x5092
bfc01514:	354aca79 	ori	t2,t2,0xca79
bfc01518:	3c0ba652 	lui	t3,0xa652
bfc0151c:	356b15c3 	ori	t3,t3,0x15c3
bfc01520:	01600011 	mthi	t3
bfc01524:	01400013 	mtlo	t2
bfc01528:	71090001 	maddu	t0,t1
bfc0152c:	00006010 	mfhi	t4
bfc01530:	00006812 	mflo	t5
bfc01534:	3c0ecb48 	lui	t6,0xcb48
bfc01538:	35cec418 	ori	t6,t6,0xc418
bfc0153c:	158e033a 	bne	t4,t6,bfc02228 <inst_error>
bfc01540:	00000000 	nop
bfc01544:	3c0ea303 	lui	t6,0xa303
bfc01548:	35ceb3b9 	ori	t6,t6,0xb3b9
bfc0154c:	15ae0336 	bne	t5,t6,bfc02228 <inst_error>
bfc01550:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:45
bfc01554:	3c082a15 	lui	t0,0x2a15
bfc01558:	35085dbc 	ori	t0,t0,0x5dbc
bfc0155c:	3c09097e 	lui	t1,0x97e
bfc01560:	35291b4e 	ori	t1,t1,0x1b4e
bfc01564:	3c0a1ca0 	lui	t2,0x1ca0
bfc01568:	354ac5fa 	ori	t2,t2,0xc5fa
bfc0156c:	3c0b415e 	lui	t3,0x415e
bfc01570:	356b286c 	ori	t3,t3,0x286c
bfc01574:	01600011 	mthi	t3
bfc01578:	01400013 	mtlo	t2
bfc0157c:	71090001 	maddu	t0,t1
bfc01580:	00006010 	mfhi	t4
bfc01584:	00006812 	mflo	t5
bfc01588:	3c0e42ed 	lui	t6,0x42ed
bfc0158c:	35cea3b8 	ori	t6,t6,0xa3b8
bfc01590:	158e0325 	bne	t4,t6,bfc02228 <inst_error>
bfc01594:	00000000 	nop
bfc01598:	3c0eee8e 	lui	t6,0xee8e
bfc0159c:	35ce2942 	ori	t6,t6,0x2942
bfc015a0:	15ae0321 	bne	t5,t6,bfc02228 <inst_error>
bfc015a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:46
bfc015a8:	3c08dc27 	lui	t0,0xdc27
bfc015ac:	35089554 	ori	t0,t0,0x9554
bfc015b0:	3c095c10 	lui	t1,0x5c10
bfc015b4:	3529fe21 	ori	t1,t1,0xfe21
bfc015b8:	3c0ac3a6 	lui	t2,0xc3a6
bfc015bc:	354a6e56 	ori	t2,t2,0x6e56
bfc015c0:	3c0b8720 	lui	t3,0x8720
bfc015c4:	356b95ab 	ori	t3,t3,0x95ab
bfc015c8:	01600011 	mthi	t3
bfc015cc:	01400013 	mtlo	t2
bfc015d0:	71090001 	maddu	t0,t1
bfc015d4:	00006010 	mfhi	t4
bfc015d8:	00006812 	mflo	t5
bfc015dc:	3c0e7a3c 	lui	t6,0x7a3c
bfc015e0:	35ce6e38 	ori	t6,t6,0x6e38
bfc015e4:	158e0310 	bne	t4,t6,bfc02228 <inst_error>
bfc015e8:	00000000 	nop
bfc015ec:	3c0ef02a 	lui	t6,0xf02a
bfc015f0:	35ce062a 	ori	t6,t6,0x62a
bfc015f4:	15ae030c 	bne	t5,t6,bfc02228 <inst_error>
bfc015f8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:47
bfc015fc:	3c08d4f2 	lui	t0,0xd4f2
bfc01600:	35087242 	ori	t0,t0,0x7242
bfc01604:	3c09379e 	lui	t1,0x379e
bfc01608:	352921b5 	ori	t1,t1,0x21b5
bfc0160c:	3c0ad3d8 	lui	t2,0xd3d8
bfc01610:	354ae8c5 	ori	t2,t2,0xe8c5
bfc01614:	3c0b6aa7 	lui	t3,0x6aa7
bfc01618:	356bb75c 	ori	t3,t3,0xb75c
bfc0161c:	01600011 	mthi	t3
bfc01620:	01400013 	mtlo	t2
bfc01624:	71090001 	maddu	t0,t1
bfc01628:	00006010 	mfhi	t4
bfc0162c:	00006812 	mflo	t5
bfc01630:	3c0e614d 	lui	t6,0x614d
bfc01634:	35ce35df 	ori	t6,t6,0x35df
bfc01638:	158e02fb 	bne	t4,t6,bfc02228 <inst_error>
bfc0163c:	00000000 	nop
bfc01640:	3c0e56ba 	lui	t6,0x56ba
bfc01644:	35ce336f 	ori	t6,t6,0x336f
bfc01648:	15ae02f7 	bne	t5,t6,bfc02228 <inst_error>
bfc0164c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:48
bfc01650:	3c08a98a 	lui	t0,0xa98a
bfc01654:	350800ca 	ori	t0,t0,0xca
bfc01658:	3c093db0 	lui	t1,0x3db0
bfc0165c:	352912b3 	ori	t1,t1,0x12b3
bfc01660:	3c0aa4da 	lui	t2,0xa4da
bfc01664:	354a531e 	ori	t2,t2,0x531e
bfc01668:	3c0bb068 	lui	t3,0xb068
bfc0166c:	356b1c1c 	ori	t3,t3,0x1c1c
bfc01670:	01600011 	mthi	t3
bfc01674:	01400013 	mtlo	t2
bfc01678:	71090001 	maddu	t0,t1
bfc0167c:	00006010 	mfhi	t4
bfc01680:	00006812 	mflo	t5
bfc01684:	3c0e9b92 	lui	t6,0x9b92
bfc01688:	35ce86db 	ori	t6,t6,0x86db
bfc0168c:	158e02e6 	bne	t4,t6,bfc02228 <inst_error>
bfc01690:	00000000 	nop
bfc01694:	3c0e9147 	lui	t6,0x9147
bfc01698:	35ce145c 	ori	t6,t6,0x145c
bfc0169c:	15ae02e2 	bne	t5,t6,bfc02228 <inst_error>
bfc016a0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:49
bfc016a4:	3c08cb02 	lui	t0,0xcb02
bfc016a8:	350894b1 	ori	t0,t0,0x94b1
bfc016ac:	3c095643 	lui	t1,0x5643
bfc016b0:	35298d15 	ori	t1,t1,0x8d15
bfc016b4:	3c0ad391 	lui	t2,0xd391
bfc016b8:	354ab503 	ori	t2,t2,0xb503
bfc016bc:	3c0b4df7 	lui	t3,0x4df7
bfc016c0:	356b2e4e 	ori	t3,t3,0x2e4e
bfc016c4:	01600011 	mthi	t3
bfc016c8:	01400013 	mtlo	t2
bfc016cc:	71090001 	maddu	t0,t1
bfc016d0:	00006010 	mfhi	t4
bfc016d4:	00006812 	mflo	t5
bfc016d8:	3c0e3c1c 	lui	t6,0x3c1c
bfc016dc:	35ce10ba 	ori	t6,t6,0x10ba
bfc016e0:	158e02d1 	bne	t4,t6,bfc02228 <inst_error>
bfc016e4:	00000000 	nop
bfc016e8:	3c0e4700 	lui	t6,0x4700
bfc016ec:	35ce6488 	ori	t6,t6,0x6488
bfc016f0:	15ae02cd 	bne	t5,t6,bfc02228 <inst_error>
bfc016f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:50
bfc016f8:	3c08a277 	lui	t0,0xa277
bfc016fc:	350875f8 	ori	t0,t0,0x75f8
bfc01700:	3c09a139 	lui	t1,0xa139
bfc01704:	3529502c 	ori	t1,t1,0x502c
bfc01708:	3c0a75e0 	lui	t2,0x75e0
bfc0170c:	354a858a 	ori	t2,t2,0x858a
bfc01710:	3c0bac66 	lui	t3,0xac66
bfc01714:	356b39ac 	ori	t3,t3,0x39ac
bfc01718:	01600011 	mthi	t3
bfc0171c:	01400013 	mtlo	t2
bfc01720:	71090001 	maddu	t0,t1
bfc01724:	00006010 	mfhi	t4
bfc01728:	00006812 	mflo	t5
bfc0172c:	3c0ecf06 	lui	t6,0xcf06
bfc01730:	35cef433 	ori	t6,t6,0xf433
bfc01734:	158e02bc 	bne	t4,t6,bfc02228 <inst_error>
bfc01738:	00000000 	nop
bfc0173c:	3c0ef37e 	lui	t6,0xf37e
bfc01740:	35ce4c2a 	ori	t6,t6,0x4c2a
bfc01744:	15ae02b8 	bne	t5,t6,bfc02228 <inst_error>
bfc01748:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:51
bfc0174c:	3c08bbd8 	lui	t0,0xbbd8
bfc01750:	3508f966 	ori	t0,t0,0xf966
bfc01754:	3c092157 	lui	t1,0x2157
bfc01758:	3529f6bc 	ori	t1,t1,0xf6bc
bfc0175c:	3c0aa82d 	lui	t2,0xa82d
bfc01760:	354a0ef2 	ori	t2,t2,0xef2
bfc01764:	3c0bf1c1 	lui	t3,0xf1c1
bfc01768:	356bb858 	ori	t3,t3,0xb858
bfc0176c:	01600011 	mthi	t3
bfc01770:	01400013 	mtlo	t2
bfc01774:	71090001 	maddu	t0,t1
bfc01778:	00006010 	mfhi	t4
bfc0177c:	00006812 	mflo	t5
bfc01780:	3c0ee8e1 	lui	t6,0xe8e1
bfc01784:	35ce458b 	ori	t6,t6,0x458b
bfc01788:	158e02a7 	bne	t4,t6,bfc02228 <inst_error>
bfc0178c:	00000000 	nop
bfc01790:	3c0e02d6 	lui	t6,0x2d6
bfc01794:	35ce39da 	ori	t6,t6,0x39da
bfc01798:	15ae02a3 	bne	t5,t6,bfc02228 <inst_error>
bfc0179c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:52
bfc017a0:	3c0849d0 	lui	t0,0x49d0
bfc017a4:	3508feac 	ori	t0,t0,0xfeac
bfc017a8:	3c09aaae 	lui	t1,0xaaae
bfc017ac:	3529460d 	ori	t1,t1,0x460d
bfc017b0:	3c0a634c 	lui	t2,0x634c
bfc017b4:	354a574c 	ori	t2,t2,0x574c
bfc017b8:	3c0b2a31 	lui	t3,0x2a31
bfc017bc:	356bb62d 	ori	t3,t3,0xb62d
bfc017c0:	01600011 	mthi	t3
bfc017c4:	01400013 	mtlo	t2
bfc017c8:	71090001 	maddu	t0,t1
bfc017cc:	00006010 	mfhi	t4
bfc017d0:	00006812 	mflo	t5
bfc017d4:	3c0e1197 	lui	t6,0x1197
bfc017d8:	35cec0df 	ori	t6,t6,0xc0df
bfc017dc:	158e0292 	bne	t4,t6,bfc02228 <inst_error>
bfc017e0:	00000000 	nop
bfc017e4:	3c0e9974 	lui	t6,0x9974
bfc017e8:	35ce4e08 	ori	t6,t6,0x4e08
bfc017ec:	15ae028e 	bne	t5,t6,bfc02228 <inst_error>
bfc017f0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:53
bfc017f4:	3c088200 	lui	t0,0x8200
bfc017f8:	350862f7 	ori	t0,t0,0x62f7
bfc017fc:	3c099618 	lui	t1,0x9618
bfc01800:	35290c1b 	ori	t1,t1,0xc1b
bfc01804:	3c0a1816 	lui	t2,0x1816
bfc01808:	354af8c4 	ori	t2,t2,0xf8c4
bfc0180c:	3c0b7ab4 	lui	t3,0x7ab4
bfc01810:	356b9daf 	ori	t3,t3,0x9daf
bfc01814:	01600011 	mthi	t3
bfc01818:	01400013 	mtlo	t2
bfc0181c:	71090001 	maddu	t0,t1
bfc01820:	00006010 	mfhi	t4
bfc01824:	00006812 	mflo	t5
bfc01828:	3c0eaed4 	lui	t6,0xaed4
bfc0182c:	35ce9ec8 	ori	t6,t6,0x9ec8
bfc01830:	158e027d 	bne	t4,t6,bfc02228 <inst_error>
bfc01834:	00000000 	nop
bfc01838:	3c0ed3ec 	lui	t6,0xd3ec
bfc0183c:	35cefcd1 	ori	t6,t6,0xfcd1
bfc01840:	15ae0279 	bne	t5,t6,bfc02228 <inst_error>
bfc01844:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:54
bfc01848:	3c089e18 	lui	t0,0x9e18
bfc0184c:	3508b15d 	ori	t0,t0,0xb15d
bfc01850:	3c090f81 	lui	t1,0xf81
bfc01854:	35299e7f 	ori	t1,t1,0x9e7f
bfc01858:	3c0acede 	lui	t2,0xcede
bfc0185c:	354a9853 	ori	t2,t2,0x9853
bfc01860:	3c0b78b5 	lui	t3,0x78b5
bfc01864:	356be776 	ori	t3,t3,0xe776
bfc01868:	01600011 	mthi	t3
bfc0186c:	01400013 	mtlo	t2
bfc01870:	71090001 	maddu	t0,t1
bfc01874:	00006010 	mfhi	t4
bfc01878:	00006812 	mflo	t5
bfc0187c:	3c0e72c7 	lui	t6,0x72c7
bfc01880:	35cec7ae 	ori	t6,t6,0xc7ae
bfc01884:	158e0268 	bne	t4,t6,bfc02228 <inst_error>
bfc01888:	00000000 	nop
bfc0188c:	3c0e4d72 	lui	t6,0x4d72
bfc01890:	35cefb76 	ori	t6,t6,0xfb76
bfc01894:	15ae0264 	bne	t5,t6,bfc02228 <inst_error>
bfc01898:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:55
bfc0189c:	3c0891ac 	lui	t0,0x91ac
bfc018a0:	3508b322 	ori	t0,t0,0xb322
bfc018a4:	3c099a69 	lui	t1,0x9a69
bfc018a8:	352973e4 	ori	t1,t1,0x73e4
bfc018ac:	3c0ad9f2 	lui	t2,0xd9f2
bfc018b0:	354a73b6 	ori	t2,t2,0x73b6
bfc018b4:	3c0b8b90 	lui	t3,0x8b90
bfc018b8:	356bd1d0 	ori	t3,t3,0xd1d0
bfc018bc:	01600011 	mthi	t3
bfc018c0:	01400013 	mtlo	t2
bfc018c4:	71090001 	maddu	t0,t1
bfc018c8:	00006010 	mfhi	t4
bfc018cc:	00006812 	mflo	t5
bfc018d0:	3c0eb758 	lui	t6,0xb758
bfc018d4:	35ce9054 	ori	t6,t6,0x9054
bfc018d8:	158e0253 	bne	t4,t6,bfc02228 <inst_error>
bfc018dc:	00000000 	nop
bfc018e0:	3c0e192c 	lui	t6,0x192c
bfc018e4:	35ce43fe 	ori	t6,t6,0x43fe
bfc018e8:	15ae024f 	bne	t5,t6,bfc02228 <inst_error>
bfc018ec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:56
bfc018f0:	3c083fc3 	lui	t0,0x3fc3
bfc018f4:	35082e20 	ori	t0,t0,0x2e20
bfc018f8:	3c09eb2a 	lui	t1,0xeb2a
bfc018fc:	3529c97b 	ori	t1,t1,0xc97b
bfc01900:	3c0a9155 	lui	t2,0x9155
bfc01904:	354a7a05 	ori	t2,t2,0x7a05
bfc01908:	3c0bc4a6 	lui	t3,0xc4a6
bfc0190c:	356bb7f9 	ori	t3,t3,0xb7f9
bfc01910:	01600011 	mthi	t3
bfc01914:	01400013 	mtlo	t2
bfc01918:	71090001 	maddu	t0,t1
bfc0191c:	00006010 	mfhi	t4
bfc01920:	00006812 	mflo	t5
bfc01924:	3c0ebf76 	lui	t6,0xbf76
bfc01928:	35ce5d64 	ori	t6,t6,0x5d64
bfc0192c:	158e023e 	bne	t4,t6,bfc02228 <inst_error>
bfc01930:	00000000 	nop
bfc01934:	3c0e6493 	lui	t6,0x6493
bfc01938:	35cec365 	ori	t6,t6,0xc365
bfc0193c:	15ae023a 	bne	t5,t6,bfc02228 <inst_error>
bfc01940:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:57
bfc01944:	3c08c083 	lui	t0,0xc083
bfc01948:	3508d00c 	ori	t0,t0,0xd00c
bfc0194c:	3c091718 	lui	t1,0x1718
bfc01950:	35290b0b 	ori	t1,t1,0xb0b
bfc01954:	3c0aa2df 	lui	t2,0xa2df
bfc01958:	354aa1e0 	ori	t2,t2,0xa1e0
bfc0195c:	3c0b4d32 	lui	t3,0x4d32
bfc01960:	356bab86 	ori	t3,t3,0xab86
bfc01964:	01600011 	mthi	t3
bfc01968:	01400013 	mtlo	t2
bfc0196c:	71090001 	maddu	t0,t1
bfc01970:	00006010 	mfhi	t4
bfc01974:	00006812 	mflo	t5
bfc01978:	3c0e4778 	lui	t6,0x4778
bfc0197c:	35ce8cd5 	ori	t6,t6,0x8cd5
bfc01980:	158e0229 	bne	t4,t6,bfc02228 <inst_error>
bfc01984:	00000000 	nop
bfc01988:	3c0e279a 	lui	t6,0x279a
bfc0198c:	35ce1664 	ori	t6,t6,0x1664
bfc01990:	15ae0225 	bne	t5,t6,bfc02228 <inst_error>
bfc01994:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:58
bfc01998:	3c086b47 	lui	t0,0x6b47
bfc0199c:	3508f63e 	ori	t0,t0,0xf63e
bfc019a0:	3c09e930 	lui	t1,0xe930
bfc019a4:	35297f0f 	ori	t1,t1,0x7f0f
bfc019a8:	3c0a3fcf 	lui	t2,0x3fcf
bfc019ac:	354aaed9 	ori	t2,t2,0xaed9
bfc019b0:	3c0b11b1 	lui	t3,0x11b1
bfc019b4:	356bcc33 	ori	t3,t3,0xcc33
bfc019b8:	01600011 	mthi	t3
bfc019bc:	01400013 	mtlo	t2
bfc019c0:	71090001 	maddu	t0,t1
bfc019c4:	00006010 	mfhi	t4
bfc019c8:	00006812 	mflo	t5
bfc019cc:	3c0e0822 	lui	t6,0x822
bfc019d0:	35cea7d0 	ori	t6,t6,0xa7d0
bfc019d4:	158e0214 	bne	t4,t6,bfc02228 <inst_error>
bfc019d8:	00000000 	nop
bfc019dc:	3c0ed5cf 	lui	t6,0xd5cf
bfc019e0:	35cede7b 	ori	t6,t6,0xde7b
bfc019e4:	15ae0210 	bne	t5,t6,bfc02228 <inst_error>
bfc019e8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:59
bfc019ec:	3c08d66c 	lui	t0,0xd66c
bfc019f0:	3508b967 	ori	t0,t0,0xb967
bfc019f4:	3c097449 	lui	t1,0x7449
bfc019f8:	352939a3 	ori	t1,t1,0x39a3
bfc019fc:	3c0a6b1d 	lui	t2,0x6b1d
bfc01a00:	354a2c14 	ori	t2,t2,0x2c14
bfc01a04:	3c0bc080 	lui	t3,0xc080
bfc01a08:	356ba227 	ori	t3,t3,0xa227
bfc01a0c:	01600011 	mthi	t3
bfc01a10:	01400013 	mtlo	t2
bfc01a14:	71090001 	maddu	t0,t1
bfc01a18:	00006010 	mfhi	t4
bfc01a1c:	00006812 	mflo	t5
bfc01a20:	3c0ead9e 	lui	t6,0xad9e
bfc01a24:	35ce01ce 	ori	t6,t6,0x1ce
bfc01a28:	158e01ff 	bne	t4,t6,bfc02228 <inst_error>
bfc01a2c:	00000000 	nop
bfc01a30:	3c0eb1fe 	lui	t6,0xb1fe
bfc01a34:	35ce27a9 	ori	t6,t6,0x27a9
bfc01a38:	15ae01fb 	bne	t5,t6,bfc02228 <inst_error>
bfc01a3c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:60
bfc01a40:	3c08cd86 	lui	t0,0xcd86
bfc01a44:	3508b009 	ori	t0,t0,0xb009
bfc01a48:	3c09b210 	lui	t1,0xb210
bfc01a4c:	35292060 	ori	t1,t1,0x2060
bfc01a50:	3c0aeca4 	lui	t2,0xeca4
bfc01a54:	354a7ef0 	ori	t2,t2,0x7ef0
bfc01a58:	3c0b0dcd 	lui	t3,0xdcd
bfc01a5c:	356bf8f6 	ori	t3,t3,0xf8f6
bfc01a60:	01600011 	mthi	t3
bfc01a64:	01400013 	mtlo	t2
bfc01a68:	71090001 	maddu	t0,t1
bfc01a6c:	00006010 	mfhi	t4
bfc01a70:	00006812 	mflo	t5
bfc01a74:	3c0e1d2b 	lui	t6,0x1d2b
bfc01a78:	35cec15c 	ori	t6,t6,0xc15c
bfc01a7c:	158e01ea 	bne	t4,t6,bfc02228 <inst_error>
bfc01a80:	00000000 	nop
bfc01a84:	3c0e17b7 	lui	t6,0x17b7
bfc01a88:	35cea250 	ori	t6,t6,0xa250
bfc01a8c:	15ae01e6 	bne	t5,t6,bfc02228 <inst_error>
bfc01a90:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:61
bfc01a94:	3c082e8a 	lui	t0,0x2e8a
bfc01a98:	35086394 	ori	t0,t0,0x6394
bfc01a9c:	3c09d595 	lui	t1,0xd595
bfc01aa0:	35292642 	ori	t1,t1,0x2642
bfc01aa4:	3c0ac94d 	lui	t2,0xc94d
bfc01aa8:	354a5344 	ori	t2,t2,0x5344
bfc01aac:	3c0bb54d 	lui	t3,0xb54d
bfc01ab0:	356b9188 	ori	t3,t3,0x9188
bfc01ab4:	01600011 	mthi	t3
bfc01ab8:	01400013 	mtlo	t2
bfc01abc:	71090001 	maddu	t0,t1
bfc01ac0:	00006010 	mfhi	t4
bfc01ac4:	00006812 	mflo	t5
bfc01ac8:	3c0ead97 	lui	t6,0xad97
bfc01acc:	35ce704e 	ori	t6,t6,0x704e
bfc01ad0:	158e01d5 	bne	t4,t6,bfc02228 <inst_error>
bfc01ad4:	00000000 	nop
bfc01ad8:	3c0e6ce6 	lui	t6,0x6ce6
bfc01adc:	35cef76c 	ori	t6,t6,0xf76c
bfc01ae0:	15ae01d1 	bne	t5,t6,bfc02228 <inst_error>
bfc01ae4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:62
bfc01ae8:	3c085451 	lui	t0,0x5451
bfc01aec:	3508cf49 	ori	t0,t0,0xcf49
bfc01af0:	3c093e64 	lui	t1,0x3e64
bfc01af4:	352900e6 	ori	t1,t1,0xe6
bfc01af8:	3c0a8ef8 	lui	t2,0x8ef8
bfc01afc:	354aa830 	ori	t2,t2,0xa830
bfc01b00:	3c0b4244 	lui	t3,0x4244
bfc01b04:	356b79da 	ori	t3,t3,0x79da
bfc01b08:	01600011 	mthi	t3
bfc01b0c:	01400013 	mtlo	t2
bfc01b10:	71090001 	maddu	t0,t1
bfc01b14:	00006010 	mfhi	t4
bfc01b18:	00006812 	mflo	t5
bfc01b1c:	3c0e56d1 	lui	t6,0x56d1
bfc01b20:	35ce3a4d 	ori	t6,t6,0x3a4d
bfc01b24:	158e01c0 	bne	t4,t6,bfc02228 <inst_error>
bfc01b28:	00000000 	nop
bfc01b2c:	3c0ef6fc 	lui	t6,0xf6fc
bfc01b30:	35cee3c6 	ori	t6,t6,0xe3c6
bfc01b34:	15ae01bc 	bne	t5,t6,bfc02228 <inst_error>
bfc01b38:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:63
bfc01b3c:	3c08b8a1 	lui	t0,0xb8a1
bfc01b40:	3508da96 	ori	t0,t0,0xda96
bfc01b44:	3c0995c4 	lui	t1,0x95c4
bfc01b48:	35298eb4 	ori	t1,t1,0x8eb4
bfc01b4c:	3c0a1f46 	lui	t2,0x1f46
bfc01b50:	354a1b51 	ori	t2,t2,0x1b51
bfc01b54:	3c0ba2a4 	lui	t3,0xa2a4
bfc01b58:	356b544d 	ori	t3,t3,0x544d
bfc01b5c:	01600011 	mthi	t3
bfc01b60:	01400013 	mtlo	t2
bfc01b64:	71090001 	maddu	t0,t1
bfc01b68:	00006010 	mfhi	t4
bfc01b6c:	00006812 	mflo	t5
bfc01b70:	3c0ec041 	lui	t6,0xc041
bfc01b74:	35cee213 	ori	t6,t6,0xe213
bfc01b78:	158e01ab 	bne	t4,t6,bfc02228 <inst_error>
bfc01b7c:	00000000 	nop
bfc01b80:	3c0e612b 	lui	t6,0x612b
bfc01b84:	35ce00c9 	ori	t6,t6,0xc9
bfc01b88:	15ae01a7 	bne	t5,t6,bfc02228 <inst_error>
bfc01b8c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:64
bfc01b90:	3c087e0f 	lui	t0,0x7e0f
bfc01b94:	35086384 	ori	t0,t0,0x6384
bfc01b98:	3c098d1c 	lui	t1,0x8d1c
bfc01b9c:	3529bec6 	ori	t1,t1,0xbec6
bfc01ba0:	3c0a3494 	lui	t2,0x3494
bfc01ba4:	354ab2fb 	ori	t2,t2,0xb2fb
bfc01ba8:	3c0b9bbd 	lui	t3,0x9bbd
bfc01bac:	356b6a67 	ori	t3,t3,0x6a67
bfc01bb0:	01600011 	mthi	t3
bfc01bb4:	01400013 	mtlo	t2
bfc01bb8:	71090001 	maddu	t0,t1
bfc01bbc:	00006010 	mfhi	t4
bfc01bc0:	00006812 	mflo	t5
bfc01bc4:	3c0e632a 	lui	t6,0x632a
bfc01bc8:	35cea852 	ori	t6,t6,0xa852
bfc01bcc:	158e0196 	bne	t4,t6,bfc02228 <inst_error>
bfc01bd0:	00000000 	nop
bfc01bd4:	3c0eb6c7 	lui	t6,0xb6c7
bfc01bd8:	35cea313 	ori	t6,t6,0xa313
bfc01bdc:	15ae0192 	bne	t5,t6,bfc02228 <inst_error>
bfc01be0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:65
bfc01be4:	3c082597 	lui	t0,0x2597
bfc01be8:	35083e32 	ori	t0,t0,0x3e32
bfc01bec:	3c099136 	lui	t1,0x9136
bfc01bf0:	352927bc 	ori	t1,t1,0x27bc
bfc01bf4:	3c0af9b5 	lui	t2,0xf9b5
bfc01bf8:	354a0b65 	ori	t2,t2,0xb65
bfc01bfc:	3c0b7e44 	lui	t3,0x7e44
bfc01c00:	356b8de9 	ori	t3,t3,0x8de9
bfc01c04:	01600011 	mthi	t3
bfc01c08:	01400013 	mtlo	t2
bfc01c0c:	71090001 	maddu	t0,t1
bfc01c10:	00006010 	mfhi	t4
bfc01c14:	00006812 	mflo	t5
bfc01c18:	3c0e6dff 	lui	t6,0x6dff
bfc01c1c:	35ceedae 	ori	t6,t6,0xedae
bfc01c20:	158e0181 	bne	t4,t6,bfc02228 <inst_error>
bfc01c24:	00000000 	nop
bfc01c28:	3c0e0fcc 	lui	t6,0xfcc
bfc01c2c:	35ce561d 	ori	t6,t6,0x561d
bfc01c30:	15ae017d 	bne	t5,t6,bfc02228 <inst_error>
bfc01c34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:66
bfc01c38:	3c081afe 	lui	t0,0x1afe
bfc01c3c:	35083625 	ori	t0,t0,0x3625
bfc01c40:	3c096ebe 	lui	t1,0x6ebe
bfc01c44:	35294208 	ori	t1,t1,0x4208
bfc01c48:	3c0af341 	lui	t2,0xf341
bfc01c4c:	354aa417 	ori	t2,t2,0xa417
bfc01c50:	3c0b26a0 	lui	t3,0x26a0
bfc01c54:	356b2c5e 	ori	t3,t3,0x2c5e
bfc01c58:	01600011 	mthi	t3
bfc01c5c:	01400013 	mtlo	t2
bfc01c60:	71090001 	maddu	t0,t1
bfc01c64:	00006010 	mfhi	t4
bfc01c68:	00006812 	mflo	t5
bfc01c6c:	3c0e324d 	lui	t6,0x324d
bfc01c70:	35ce7744 	ori	t6,t6,0x7744
bfc01c74:	158e016c 	bne	t4,t6,bfc02228 <inst_error>
bfc01c78:	00000000 	nop
bfc01c7c:	3c0e6a9e 	lui	t6,0x6a9e
bfc01c80:	35cedf3f 	ori	t6,t6,0xdf3f
bfc01c84:	15ae0168 	bne	t5,t6,bfc02228 <inst_error>
bfc01c88:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:67
bfc01c8c:	3c08986f 	lui	t0,0x986f
bfc01c90:	350890a0 	ori	t0,t0,0x90a0
bfc01c94:	3c09f968 	lui	t1,0xf968
bfc01c98:	35292d2e 	ori	t1,t1,0x2d2e
bfc01c9c:	3c0a3a96 	lui	t2,0x3a96
bfc01ca0:	354a6cd0 	ori	t2,t2,0x6cd0
bfc01ca4:	3c0ba76a 	lui	t3,0xa76a
bfc01ca8:	356b0a06 	ori	t3,t3,0xa06
bfc01cac:	01600011 	mthi	t3
bfc01cb0:	01400013 	mtlo	t2
bfc01cb4:	71090001 	maddu	t0,t1
bfc01cb8:	00006010 	mfhi	t4
bfc01cbc:	00006812 	mflo	t5
bfc01cc0:	3c0eaa14 	lui	t6,0xaa14
bfc01cc4:	35ced81d 	ori	t6,t6,0xd81d
bfc01cc8:	158e0157 	bne	t4,t6,bfc02228 <inst_error>
bfc01ccc:	00000000 	nop
bfc01cd0:	3c0e9c0e 	lui	t6,0x9c0e
bfc01cd4:	35ce8990 	ori	t6,t6,0x8990
bfc01cd8:	15ae0153 	bne	t5,t6,bfc02228 <inst_error>
bfc01cdc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:70
bfc01ce0:	3c085301 	lui	t0,0x5301
bfc01ce4:	350894f0 	ori	t0,t0,0x94f0
bfc01ce8:	24090000 	li	t1,0
bfc01cec:	240a0001 	li	t2,1
bfc01cf0:	240b0001 	li	t3,1
bfc01cf4:	01600011 	mthi	t3
bfc01cf8:	01400013 	mtlo	t2
bfc01cfc:	71090001 	maddu	t0,t1
bfc01d00:	00006010 	mfhi	t4
bfc01d04:	00006812 	mflo	t5
bfc01d08:	240e0001 	li	t6,1
bfc01d0c:	158e0146 	bne	t4,t6,bfc02228 <inst_error>
bfc01d10:	00000000 	nop
bfc01d14:	240e0001 	li	t6,1
bfc01d18:	15ae0143 	bne	t5,t6,bfc02228 <inst_error>
bfc01d1c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:71
bfc01d20:	3c085a1a 	lui	t0,0x5a1a
bfc01d24:	35084f60 	ori	t0,t0,0x4f60
bfc01d28:	24090000 	li	t1,0
bfc01d2c:	240a0001 	li	t2,1
bfc01d30:	240b0001 	li	t3,1
bfc01d34:	01600011 	mthi	t3
bfc01d38:	01400013 	mtlo	t2
bfc01d3c:	71090001 	maddu	t0,t1
bfc01d40:	00006010 	mfhi	t4
bfc01d44:	00006812 	mflo	t5
bfc01d48:	240e0001 	li	t6,1
bfc01d4c:	158e0136 	bne	t4,t6,bfc02228 <inst_error>
bfc01d50:	00000000 	nop
bfc01d54:	240e0001 	li	t6,1
bfc01d58:	15ae0133 	bne	t5,t6,bfc02228 <inst_error>
bfc01d5c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:72
bfc01d60:	3c085cc4 	lui	t0,0x5cc4
bfc01d64:	3508e136 	ori	t0,t0,0xe136
bfc01d68:	24090000 	li	t1,0
bfc01d6c:	240a0001 	li	t2,1
bfc01d70:	240b0001 	li	t3,1
bfc01d74:	01600011 	mthi	t3
bfc01d78:	01400013 	mtlo	t2
bfc01d7c:	71090001 	maddu	t0,t1
bfc01d80:	00006010 	mfhi	t4
bfc01d84:	00006812 	mflo	t5
bfc01d88:	240e0001 	li	t6,1
bfc01d8c:	158e0126 	bne	t4,t6,bfc02228 <inst_error>
bfc01d90:	00000000 	nop
bfc01d94:	240e0001 	li	t6,1
bfc01d98:	15ae0123 	bne	t5,t6,bfc02228 <inst_error>
bfc01d9c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:73
bfc01da0:	3c08ab7a 	lui	t0,0xab7a
bfc01da4:	350814c0 	ori	t0,t0,0x14c0
bfc01da8:	24090000 	li	t1,0
bfc01dac:	240a0001 	li	t2,1
bfc01db0:	240b0001 	li	t3,1
bfc01db4:	01600011 	mthi	t3
bfc01db8:	01400013 	mtlo	t2
bfc01dbc:	71090001 	maddu	t0,t1
bfc01dc0:	00006010 	mfhi	t4
bfc01dc4:	00006812 	mflo	t5
bfc01dc8:	240e0001 	li	t6,1
bfc01dcc:	158e0116 	bne	t4,t6,bfc02228 <inst_error>
bfc01dd0:	00000000 	nop
bfc01dd4:	240e0001 	li	t6,1
bfc01dd8:	15ae0113 	bne	t5,t6,bfc02228 <inst_error>
bfc01ddc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:74
bfc01de0:	3c0844d1 	lui	t0,0x44d1
bfc01de4:	350826d0 	ori	t0,t0,0x26d0
bfc01de8:	24090000 	li	t1,0
bfc01dec:	240a0001 	li	t2,1
bfc01df0:	240b0001 	li	t3,1
bfc01df4:	01600011 	mthi	t3
bfc01df8:	01400013 	mtlo	t2
bfc01dfc:	71090001 	maddu	t0,t1
bfc01e00:	00006010 	mfhi	t4
bfc01e04:	00006812 	mflo	t5
bfc01e08:	240e0001 	li	t6,1
bfc01e0c:	158e0106 	bne	t4,t6,bfc02228 <inst_error>
bfc01e10:	00000000 	nop
bfc01e14:	240e0001 	li	t6,1
bfc01e18:	15ae0103 	bne	t5,t6,bfc02228 <inst_error>
bfc01e1c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:75
bfc01e20:	3c080f11 	lui	t0,0xf11
bfc01e24:	35084ff0 	ori	t0,t0,0x4ff0
bfc01e28:	24090000 	li	t1,0
bfc01e2c:	240a0001 	li	t2,1
bfc01e30:	240b0001 	li	t3,1
bfc01e34:	01600011 	mthi	t3
bfc01e38:	01400013 	mtlo	t2
bfc01e3c:	71090001 	maddu	t0,t1
bfc01e40:	00006010 	mfhi	t4
bfc01e44:	00006812 	mflo	t5
bfc01e48:	240e0001 	li	t6,1
bfc01e4c:	158e00f6 	bne	t4,t6,bfc02228 <inst_error>
bfc01e50:	00000000 	nop
bfc01e54:	240e0001 	li	t6,1
bfc01e58:	15ae00f3 	bne	t5,t6,bfc02228 <inst_error>
bfc01e5c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:76
bfc01e60:	3c0860bf 	lui	t0,0x60bf
bfc01e64:	3508e48e 	ori	t0,t0,0xe48e
bfc01e68:	24090000 	li	t1,0
bfc01e6c:	240a0001 	li	t2,1
bfc01e70:	240b0001 	li	t3,1
bfc01e74:	01600011 	mthi	t3
bfc01e78:	01400013 	mtlo	t2
bfc01e7c:	71090001 	maddu	t0,t1
bfc01e80:	00006010 	mfhi	t4
bfc01e84:	00006812 	mflo	t5
bfc01e88:	240e0001 	li	t6,1
bfc01e8c:	158e00e6 	bne	t4,t6,bfc02228 <inst_error>
bfc01e90:	00000000 	nop
bfc01e94:	240e0001 	li	t6,1
bfc01e98:	15ae00e3 	bne	t5,t6,bfc02228 <inst_error>
bfc01e9c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:77
bfc01ea0:	3c08102c 	lui	t0,0x102c
bfc01ea4:	3508eba0 	ori	t0,t0,0xeba0
bfc01ea8:	24090000 	li	t1,0
bfc01eac:	240a0001 	li	t2,1
bfc01eb0:	240b0001 	li	t3,1
bfc01eb4:	01600011 	mthi	t3
bfc01eb8:	01400013 	mtlo	t2
bfc01ebc:	71090001 	maddu	t0,t1
bfc01ec0:	00006010 	mfhi	t4
bfc01ec4:	00006812 	mflo	t5
bfc01ec8:	240e0001 	li	t6,1
bfc01ecc:	158e00d6 	bne	t4,t6,bfc02228 <inst_error>
bfc01ed0:	00000000 	nop
bfc01ed4:	240e0001 	li	t6,1
bfc01ed8:	15ae00d3 	bne	t5,t6,bfc02228 <inst_error>
bfc01edc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:78
bfc01ee0:	3c087b21 	lui	t0,0x7b21
bfc01ee4:	3508e54d 	ori	t0,t0,0xe54d
bfc01ee8:	24090000 	li	t1,0
bfc01eec:	240a0001 	li	t2,1
bfc01ef0:	240b0001 	li	t3,1
bfc01ef4:	01600011 	mthi	t3
bfc01ef8:	01400013 	mtlo	t2
bfc01efc:	71090001 	maddu	t0,t1
bfc01f00:	00006010 	mfhi	t4
bfc01f04:	00006812 	mflo	t5
bfc01f08:	240e0001 	li	t6,1
bfc01f0c:	158e00c6 	bne	t4,t6,bfc02228 <inst_error>
bfc01f10:	00000000 	nop
bfc01f14:	240e0001 	li	t6,1
bfc01f18:	15ae00c3 	bne	t5,t6,bfc02228 <inst_error>
bfc01f1c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:79
bfc01f20:	3c085d72 	lui	t0,0x5d72
bfc01f24:	3508f954 	ori	t0,t0,0xf954
bfc01f28:	24090000 	li	t1,0
bfc01f2c:	240a0001 	li	t2,1
bfc01f30:	240b0001 	li	t3,1
bfc01f34:	01600011 	mthi	t3
bfc01f38:	01400013 	mtlo	t2
bfc01f3c:	71090001 	maddu	t0,t1
bfc01f40:	00006010 	mfhi	t4
bfc01f44:	00006812 	mflo	t5
bfc01f48:	240e0001 	li	t6,1
bfc01f4c:	158e00b6 	bne	t4,t6,bfc02228 <inst_error>
bfc01f50:	00000000 	nop
bfc01f54:	240e0001 	li	t6,1
bfc01f58:	15ae00b3 	bne	t5,t6,bfc02228 <inst_error>
bfc01f5c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:80
bfc01f60:	3c082699 	lui	t0,0x2699
bfc01f64:	3508b2d4 	ori	t0,t0,0xb2d4
bfc01f68:	24090000 	li	t1,0
bfc01f6c:	240a0001 	li	t2,1
bfc01f70:	240b0001 	li	t3,1
bfc01f74:	01600011 	mthi	t3
bfc01f78:	01400013 	mtlo	t2
bfc01f7c:	71090001 	maddu	t0,t1
bfc01f80:	00006010 	mfhi	t4
bfc01f84:	00006812 	mflo	t5
bfc01f88:	240e0001 	li	t6,1
bfc01f8c:	158e00a6 	bne	t4,t6,bfc02228 <inst_error>
bfc01f90:	00000000 	nop
bfc01f94:	240e0001 	li	t6,1
bfc01f98:	15ae00a3 	bne	t5,t6,bfc02228 <inst_error>
bfc01f9c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:81
bfc01fa0:	3c0866b6 	lui	t0,0x66b6
bfc01fa4:	3508dc30 	ori	t0,t0,0xdc30
bfc01fa8:	24090000 	li	t1,0
bfc01fac:	240a0001 	li	t2,1
bfc01fb0:	240b0001 	li	t3,1
bfc01fb4:	01600011 	mthi	t3
bfc01fb8:	01400013 	mtlo	t2
bfc01fbc:	71090001 	maddu	t0,t1
bfc01fc0:	00006010 	mfhi	t4
bfc01fc4:	00006812 	mflo	t5
bfc01fc8:	240e0001 	li	t6,1
bfc01fcc:	158e0096 	bne	t4,t6,bfc02228 <inst_error>
bfc01fd0:	00000000 	nop
bfc01fd4:	240e0001 	li	t6,1
bfc01fd8:	15ae0093 	bne	t5,t6,bfc02228 <inst_error>
bfc01fdc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:82
bfc01fe0:	24080000 	li	t0,0
bfc01fe4:	3c094ae5 	lui	t1,0x4ae5
bfc01fe8:	352969a0 	ori	t1,t1,0x69a0
bfc01fec:	240a0001 	li	t2,1
bfc01ff0:	240b0001 	li	t3,1
bfc01ff4:	01600011 	mthi	t3
bfc01ff8:	01400013 	mtlo	t2
bfc01ffc:	71090001 	maddu	t0,t1
bfc02000:	00006010 	mfhi	t4
bfc02004:	00006812 	mflo	t5
bfc02008:	240e0001 	li	t6,1
bfc0200c:	158e0086 	bne	t4,t6,bfc02228 <inst_error>
bfc02010:	00000000 	nop
bfc02014:	240e0001 	li	t6,1
bfc02018:	15ae0083 	bne	t5,t6,bfc02228 <inst_error>
bfc0201c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:83
bfc02020:	24080000 	li	t0,0
bfc02024:	3c092582 	lui	t1,0x2582
bfc02028:	3529c9c0 	ori	t1,t1,0xc9c0
bfc0202c:	240a0001 	li	t2,1
bfc02030:	240b0001 	li	t3,1
bfc02034:	01600011 	mthi	t3
bfc02038:	01400013 	mtlo	t2
bfc0203c:	71090001 	maddu	t0,t1
bfc02040:	00006010 	mfhi	t4
bfc02044:	00006812 	mflo	t5
bfc02048:	240e0001 	li	t6,1
bfc0204c:	158e0076 	bne	t4,t6,bfc02228 <inst_error>
bfc02050:	00000000 	nop
bfc02054:	240e0001 	li	t6,1
bfc02058:	15ae0073 	bne	t5,t6,bfc02228 <inst_error>
bfc0205c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:84
bfc02060:	24080000 	li	t0,0
bfc02064:	3c09a2f0 	lui	t1,0xa2f0
bfc02068:	35291d2e 	ori	t1,t1,0x1d2e
bfc0206c:	240a0001 	li	t2,1
bfc02070:	240b0001 	li	t3,1
bfc02074:	01600011 	mthi	t3
bfc02078:	01400013 	mtlo	t2
bfc0207c:	71090001 	maddu	t0,t1
bfc02080:	00006010 	mfhi	t4
bfc02084:	00006812 	mflo	t5
bfc02088:	240e0001 	li	t6,1
bfc0208c:	158e0066 	bne	t4,t6,bfc02228 <inst_error>
bfc02090:	00000000 	nop
bfc02094:	240e0001 	li	t6,1
bfc02098:	15ae0063 	bne	t5,t6,bfc02228 <inst_error>
bfc0209c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:85
bfc020a0:	24080000 	li	t0,0
bfc020a4:	3c092c53 	lui	t1,0x2c53
bfc020a8:	352900d7 	ori	t1,t1,0xd7
bfc020ac:	240a0001 	li	t2,1
bfc020b0:	240b0001 	li	t3,1
bfc020b4:	01600011 	mthi	t3
bfc020b8:	01400013 	mtlo	t2
bfc020bc:	71090001 	maddu	t0,t1
bfc020c0:	00006010 	mfhi	t4
bfc020c4:	00006812 	mflo	t5
bfc020c8:	240e0001 	li	t6,1
bfc020cc:	158e0056 	bne	t4,t6,bfc02228 <inst_error>
bfc020d0:	00000000 	nop
bfc020d4:	240e0001 	li	t6,1
bfc020d8:	15ae0053 	bne	t5,t6,bfc02228 <inst_error>
bfc020dc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:86
bfc020e0:	24080000 	li	t0,0
bfc020e4:	3c097a95 	lui	t1,0x7a95
bfc020e8:	3529fab0 	ori	t1,t1,0xfab0
bfc020ec:	240a0001 	li	t2,1
bfc020f0:	240b0001 	li	t3,1
bfc020f4:	01600011 	mthi	t3
bfc020f8:	01400013 	mtlo	t2
bfc020fc:	71090001 	maddu	t0,t1
bfc02100:	00006010 	mfhi	t4
bfc02104:	00006812 	mflo	t5
bfc02108:	240e0001 	li	t6,1
bfc0210c:	158e0046 	bne	t4,t6,bfc02228 <inst_error>
bfc02110:	00000000 	nop
bfc02114:	240e0001 	li	t6,1
bfc02118:	15ae0043 	bne	t5,t6,bfc02228 <inst_error>
bfc0211c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:87
bfc02120:	24080000 	li	t0,0
bfc02124:	3c09f415 	lui	t1,0xf415
bfc02128:	3529d1b4 	ori	t1,t1,0xd1b4
bfc0212c:	240a0001 	li	t2,1
bfc02130:	240b0001 	li	t3,1
bfc02134:	01600011 	mthi	t3
bfc02138:	01400013 	mtlo	t2
bfc0213c:	71090001 	maddu	t0,t1
bfc02140:	00006010 	mfhi	t4
bfc02144:	00006812 	mflo	t5
bfc02148:	240e0001 	li	t6,1
bfc0214c:	158e0036 	bne	t4,t6,bfc02228 <inst_error>
bfc02150:	00000000 	nop
bfc02154:	240e0001 	li	t6,1
bfc02158:	15ae0033 	bne	t5,t6,bfc02228 <inst_error>
bfc0215c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:88
bfc02160:	24080000 	li	t0,0
bfc02164:	3c090caf 	lui	t1,0xcaf
bfc02168:	35297d5c 	ori	t1,t1,0x7d5c
bfc0216c:	240a0001 	li	t2,1
bfc02170:	240b0001 	li	t3,1
bfc02174:	01600011 	mthi	t3
bfc02178:	01400013 	mtlo	t2
bfc0217c:	71090001 	maddu	t0,t1
bfc02180:	00006010 	mfhi	t4
bfc02184:	00006812 	mflo	t5
bfc02188:	240e0001 	li	t6,1
bfc0218c:	158e0026 	bne	t4,t6,bfc02228 <inst_error>
bfc02190:	00000000 	nop
bfc02194:	240e0001 	li	t6,1
bfc02198:	15ae0023 	bne	t5,t6,bfc02228 <inst_error>
bfc0219c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:89
bfc021a0:	24080000 	li	t0,0
bfc021a4:	3c09ae15 	lui	t1,0xae15
bfc021a8:	3529e524 	ori	t1,t1,0xe524
bfc021ac:	240a0001 	li	t2,1
bfc021b0:	240b0001 	li	t3,1
bfc021b4:	01600011 	mthi	t3
bfc021b8:	01400013 	mtlo	t2
bfc021bc:	71090001 	maddu	t0,t1
bfc021c0:	00006010 	mfhi	t4
bfc021c4:	00006812 	mflo	t5
bfc021c8:	240e0001 	li	t6,1
bfc021cc:	158e0016 	bne	t4,t6,bfc02228 <inst_error>
bfc021d0:	00000000 	nop
bfc021d4:	240e0001 	li	t6,1
bfc021d8:	15ae0013 	bne	t5,t6,bfc02228 <inst_error>
bfc021dc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:90
bfc021e0:	24080000 	li	t0,0
bfc021e4:	24090000 	li	t1,0
bfc021e8:	240a0001 	li	t2,1
bfc021ec:	240b0001 	li	t3,1
bfc021f0:	01600011 	mthi	t3
bfc021f4:	01400013 	mtlo	t2
bfc021f8:	71090001 	maddu	t0,t1
bfc021fc:	00006010 	mfhi	t4
bfc02200:	00006812 	mflo	t5
bfc02204:	240e0001 	li	t6,1
bfc02208:	158e0007 	bne	t4,t6,bfc02228 <inst_error>
bfc0220c:	00000000 	nop
bfc02210:	240e0001 	li	t6,1
bfc02214:	15ae0004 	bne	t5,t6,bfc02228 <inst_error>
bfc02218:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:92
bfc0221c:	16400002 	bnez	s2,bfc02228 <inst_error>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:93
bfc02220:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:95
bfc02224:	26730001 	addiu	s3,s3,1

bfc02228 <inst_error>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:98
bfc02228:	00104e00 	sll	t1,s0,0x18
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:99
bfc0222c:	01334025 	or	t0,t1,s3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:100
bfc02230:	ae280000 	sw	t0,0(s1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:101
bfc02234:	03e00008 	jr	ra
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my5_maddu.S:102
bfc02238:	00000000 	nop
inst_error():
bfc0223c:	00000000 	nop

bfc02240 <my2_clo_test>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:7
bfc02240:	26100001 	addiu	s0,s0,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:8
bfc02244:	24120000 	li	s2,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:9
bfc02248:	3c0a0001 	lui	t2,0x1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:11
bfc0224c:	24080000 	li	t0,0
bfc02250:	24090000 	li	t1,0
bfc02254:	71021021 	clo	v0,t0
bfc02258:	152200b4 	bne	t1,v0,bfc0252c <inst_error>
bfc0225c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:12
bfc02260:	2408ffff 	li	t0,-1
bfc02264:	24090020 	li	t1,32
bfc02268:	71021021 	clo	v0,t0
bfc0226c:	152200af 	bne	t1,v0,bfc0252c <inst_error>
bfc02270:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:13
bfc02274:	2408fffe 	li	t0,-2
bfc02278:	2409001f 	li	t1,31
bfc0227c:	71021021 	clo	v0,t0
bfc02280:	152200aa 	bne	t1,v0,bfc0252c <inst_error>
bfc02284:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:14
bfc02288:	2408fffc 	li	t0,-4
bfc0228c:	2409001e 	li	t1,30
bfc02290:	71021021 	clo	v0,t0
bfc02294:	152200a5 	bne	t1,v0,bfc0252c <inst_error>
bfc02298:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:15
bfc0229c:	2408fff8 	li	t0,-8
bfc022a0:	2409001d 	li	t1,29
bfc022a4:	71021021 	clo	v0,t0
bfc022a8:	152200a0 	bne	t1,v0,bfc0252c <inst_error>
bfc022ac:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:17
bfc022b0:	2408fff0 	li	t0,-16
bfc022b4:	2409001c 	li	t1,28
bfc022b8:	71021021 	clo	v0,t0
bfc022bc:	1522009b 	bne	t1,v0,bfc0252c <inst_error>
bfc022c0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:18
bfc022c4:	2408ffe0 	li	t0,-32
bfc022c8:	2409001b 	li	t1,27
bfc022cc:	71021021 	clo	v0,t0
bfc022d0:	15220096 	bne	t1,v0,bfc0252c <inst_error>
bfc022d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:19
bfc022d8:	2408ffc0 	li	t0,-64
bfc022dc:	2409001a 	li	t1,26
bfc022e0:	71021021 	clo	v0,t0
bfc022e4:	15220091 	bne	t1,v0,bfc0252c <inst_error>
bfc022e8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:20
bfc022ec:	2408ff80 	li	t0,-128
bfc022f0:	24090019 	li	t1,25
bfc022f4:	71021021 	clo	v0,t0
bfc022f8:	1522008c 	bne	t1,v0,bfc0252c <inst_error>
bfc022fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:22
bfc02300:	2408ff00 	li	t0,-256
bfc02304:	24090018 	li	t1,24
bfc02308:	71021021 	clo	v0,t0
bfc0230c:	15220087 	bne	t1,v0,bfc0252c <inst_error>
bfc02310:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:23
bfc02314:	2408fe00 	li	t0,-512
bfc02318:	24090017 	li	t1,23
bfc0231c:	71021021 	clo	v0,t0
bfc02320:	15220082 	bne	t1,v0,bfc0252c <inst_error>
bfc02324:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:24
bfc02328:	2408fc00 	li	t0,-1024
bfc0232c:	24090016 	li	t1,22
bfc02330:	71021021 	clo	v0,t0
bfc02334:	1522007d 	bne	t1,v0,bfc0252c <inst_error>
bfc02338:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:25
bfc0233c:	2408f800 	li	t0,-2048
bfc02340:	24090015 	li	t1,21
bfc02344:	71021021 	clo	v0,t0
bfc02348:	15220078 	bne	t1,v0,bfc0252c <inst_error>
bfc0234c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:27
bfc02350:	2408f000 	li	t0,-4096
bfc02354:	24090014 	li	t1,20
bfc02358:	71021021 	clo	v0,t0
bfc0235c:	15220073 	bne	t1,v0,bfc0252c <inst_error>
bfc02360:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:28
bfc02364:	2408e000 	li	t0,-8192
bfc02368:	24090013 	li	t1,19
bfc0236c:	71021021 	clo	v0,t0
bfc02370:	1522006e 	bne	t1,v0,bfc0252c <inst_error>
bfc02374:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:29
bfc02378:	2408c000 	li	t0,-16384
bfc0237c:	24090012 	li	t1,18
bfc02380:	71021021 	clo	v0,t0
bfc02384:	15220069 	bne	t1,v0,bfc0252c <inst_error>
bfc02388:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:30
bfc0238c:	24088000 	li	t0,-32768
bfc02390:	24090011 	li	t1,17
bfc02394:	71021021 	clo	v0,t0
bfc02398:	15220064 	bne	t1,v0,bfc0252c <inst_error>
bfc0239c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:32
bfc023a0:	3c08ffff 	lui	t0,0xffff
bfc023a4:	24090010 	li	t1,16
bfc023a8:	71021021 	clo	v0,t0
bfc023ac:	1522005f 	bne	t1,v0,bfc0252c <inst_error>
bfc023b0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:33
bfc023b4:	3c08fffe 	lui	t0,0xfffe
bfc023b8:	2409000f 	li	t1,15
bfc023bc:	71021021 	clo	v0,t0
bfc023c0:	1522005a 	bne	t1,v0,bfc0252c <inst_error>
bfc023c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:34
bfc023c8:	3c08fffc 	lui	t0,0xfffc
bfc023cc:	2409000e 	li	t1,14
bfc023d0:	71021021 	clo	v0,t0
bfc023d4:	15220055 	bne	t1,v0,bfc0252c <inst_error>
bfc023d8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:35
bfc023dc:	3c08fff8 	lui	t0,0xfff8
bfc023e0:	2409000d 	li	t1,13
bfc023e4:	71021021 	clo	v0,t0
bfc023e8:	15220050 	bne	t1,v0,bfc0252c <inst_error>
bfc023ec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:37
bfc023f0:	3c08fff0 	lui	t0,0xfff0
bfc023f4:	2409000c 	li	t1,12
bfc023f8:	71021021 	clo	v0,t0
bfc023fc:	1522004b 	bne	t1,v0,bfc0252c <inst_error>
bfc02400:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:38
bfc02404:	3c08ffe0 	lui	t0,0xffe0
bfc02408:	2409000b 	li	t1,11
bfc0240c:	71021021 	clo	v0,t0
bfc02410:	15220046 	bne	t1,v0,bfc0252c <inst_error>
bfc02414:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:39
bfc02418:	3c08ffc0 	lui	t0,0xffc0
bfc0241c:	2409000a 	li	t1,10
bfc02420:	71021021 	clo	v0,t0
bfc02424:	15220041 	bne	t1,v0,bfc0252c <inst_error>
bfc02428:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:40
bfc0242c:	3c08ff80 	lui	t0,0xff80
bfc02430:	24090009 	li	t1,9
bfc02434:	71021021 	clo	v0,t0
bfc02438:	1522003c 	bne	t1,v0,bfc0252c <inst_error>
bfc0243c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:42
bfc02440:	3c08ff00 	lui	t0,0xff00
bfc02444:	24090008 	li	t1,8
bfc02448:	71021021 	clo	v0,t0
bfc0244c:	15220037 	bne	t1,v0,bfc0252c <inst_error>
bfc02450:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:43
bfc02454:	3c08fe00 	lui	t0,0xfe00
bfc02458:	24090007 	li	t1,7
bfc0245c:	71021021 	clo	v0,t0
bfc02460:	15220032 	bne	t1,v0,bfc0252c <inst_error>
bfc02464:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:44
bfc02468:	3c08fc00 	lui	t0,0xfc00
bfc0246c:	24090006 	li	t1,6
bfc02470:	71021021 	clo	v0,t0
bfc02474:	1522002d 	bne	t1,v0,bfc0252c <inst_error>
bfc02478:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:45
bfc0247c:	3c08f800 	lui	t0,0xf800
bfc02480:	24090005 	li	t1,5
bfc02484:	71021021 	clo	v0,t0
bfc02488:	15220028 	bne	t1,v0,bfc0252c <inst_error>
bfc0248c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:47
bfc02490:	3c08f000 	lui	t0,0xf000
bfc02494:	24090004 	li	t1,4
bfc02498:	71021021 	clo	v0,t0
bfc0249c:	15220023 	bne	t1,v0,bfc0252c <inst_error>
bfc024a0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:48
bfc024a4:	3c08e000 	lui	t0,0xe000
bfc024a8:	24090003 	li	t1,3
bfc024ac:	71021021 	clo	v0,t0
bfc024b0:	1522001e 	bne	t1,v0,bfc0252c <inst_error>
bfc024b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:49
bfc024b8:	3c08c000 	lui	t0,0xc000
bfc024bc:	24090002 	li	t1,2
bfc024c0:	71021021 	clo	v0,t0
bfc024c4:	15220019 	bne	t1,v0,bfc0252c <inst_error>
bfc024c8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:50
bfc024cc:	3c088000 	lui	t0,0x8000
bfc024d0:	24090001 	li	t1,1
bfc024d4:	71021021 	clo	v0,t0
bfc024d8:	15220014 	bne	t1,v0,bfc0252c <inst_error>
bfc024dc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:52
bfc024e0:	24080000 	li	t0,0
bfc024e4:	24090000 	li	t1,0
bfc024e8:	71021021 	clo	v0,t0
bfc024ec:	1522000f 	bne	t1,v0,bfc0252c <inst_error>
bfc024f0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:54
bfc024f4:	2408ffff 	li	t0,-1
bfc024f8:	71094821 	clo	t1,t0
bfc024fc:	24080020 	li	t0,32
bfc02500:	1528000a 	bne	t1,t0,bfc0252c <inst_error>
bfc02504:	00000000 	nop
bfc02508:	710a5021 	clo	t2,t0
bfc0250c:	714b5820 	clz	t3,t2
bfc02510:	2409001a 	li	t1,26
bfc02514:	15490005 	bne	t2,t1,bfc0252c <inst_error>
bfc02518:	00000000 	nop
bfc0251c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:57
bfc02520:	16400002 	bnez	s2,bfc0252c <inst_error>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:58
bfc02524:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:60
bfc02528:	26730001 	addiu	s3,s3,1

bfc0252c <inst_error>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:63
bfc0252c:	00104e00 	sll	t1,s0,0x18
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:64
bfc02530:	01334025 	or	t0,t1,s3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:65
bfc02534:	ae280000 	sw	t0,0(s1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:66
bfc02538:	03e00008 	jr	ra
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my2_clo.S:67
bfc0253c:	00000000 	nop

bfc02540 <my3_mul_test>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:7
bfc02540:	26100001 	addiu	s0,s0,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:8
bfc02544:	24120000 	li	s2,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:9
bfc02548:	3c0a0001 	lui	t2,0x1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:11
bfc0254c:	24081111 	li	t0,4369
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:12
bfc02550:	24092222 	li	t1,8738
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:13
bfc02554:	240a3333 	li	t2,13107
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:14
bfc02558:	240b4444 	li	t3,17476
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:15
bfc0255c:	240c5555 	li	t4,21845
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:16
bfc02560:	71096802 	mul	t5,t0,t1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:17
bfc02564:	712a7002 	mul	t6,t1,t2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:18
bfc02568:	714b7802 	mul	t7,t2,t3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:19
bfc0256c:	716cc002 	mul	t8,t3,t4
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:21
bfc02570:	34090001 	li	t1,0x1
bfc02574:	34080001 	li	t0,0x1
bfc02578:	71095002 	mul	t2,t0,t1
bfc0257c:	24180001 	li	t8,1
bfc02580:	15582698 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02584:	00000000 	nop
bfc02588:	34080001 	li	t0,0x1
bfc0258c:	34090001 	li	t1,0x1
bfc02590:	71095002 	mul	t2,t0,t1
bfc02594:	24180001 	li	t8,1
bfc02598:	15582692 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0259c:	00000000 	nop
bfc025a0:	34080001 	li	t0,0x1
bfc025a4:	34090001 	li	t1,0x1
bfc025a8:	340a8888 	li	t2,0x8888
bfc025ac:	71095802 	mul	t3,t0,t1
bfc025b0:	24180001 	li	t8,1
bfc025b4:	1578268b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc025b8:	00000000 	nop
bfc025bc:	34080001 	li	t0,0x1
bfc025c0:	340c4444 	li	t4,0x4444
bfc025c4:	34090001 	li	t1,0x1
bfc025c8:	340a8888 	li	t2,0x8888
bfc025cc:	71095802 	mul	t3,t0,t1
bfc025d0:	24180001 	li	t8,1
bfc025d4:	15782683 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc025d8:	00000000 	nop
bfc025dc:	34080001 	li	t0,0x1
bfc025e0:	34090001 	li	t1,0x1
bfc025e4:	71095002 	mul	t2,t0,t1
bfc025e8:	24180001 	li	t8,1
bfc025ec:	1558267d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc025f0:	00000000 	nop
bfc025f4:	34090001 	li	t1,0x1
bfc025f8:	34080001 	li	t0,0x1
bfc025fc:	71095002 	mul	t2,t0,t1
bfc02600:	24180001 	li	t8,1
bfc02604:	15582677 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02608:	00000000 	nop
bfc0260c:	34090001 	li	t1,0x1
bfc02610:	34080001 	li	t0,0x1
bfc02614:	340a8888 	li	t2,0x8888
bfc02618:	71095802 	mul	t3,t0,t1
bfc0261c:	24180001 	li	t8,1
bfc02620:	15782670 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02624:	00000000 	nop
bfc02628:	34090001 	li	t1,0x1
bfc0262c:	340c4444 	li	t4,0x4444
bfc02630:	34080001 	li	t0,0x1
bfc02634:	340a8888 	li	t2,0x8888
bfc02638:	71095802 	mul	t3,t0,t1
bfc0263c:	24180001 	li	t8,1
bfc02640:	15782668 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02644:	00000000 	nop
bfc02648:	34080001 	li	t0,0x1
bfc0264c:	34090001 	li	t1,0x1
bfc02650:	71095002 	mul	t2,t0,t1
bfc02654:	01405825 	move	t3,t2
bfc02658:	24180001 	li	t8,1
bfc0265c:	15782661 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02660:	00000000 	nop
bfc02664:	34090001 	li	t1,0x1
bfc02668:	34080001 	li	t0,0x1
bfc0266c:	71095002 	mul	t2,t0,t1
bfc02670:	340c3333 	li	t4,0x3333
bfc02674:	01405825 	move	t3,t2
bfc02678:	24180001 	li	t8,1
bfc0267c:	15782659 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02680:	00000000 	nop
bfc02684:	34090001 	li	t1,0x1
bfc02688:	34080001 	li	t0,0x1
bfc0268c:	71095002 	mul	t2,t0,t1
bfc02690:	340d4444 	li	t5,0x4444
bfc02694:	340c3333 	li	t4,0x3333
bfc02698:	01405825 	move	t3,t2
bfc0269c:	24180001 	li	t8,1
bfc026a0:	15782650 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc026a4:	00000000 	nop
bfc026a8:	34090001 	li	t1,0x1
bfc026ac:	34080001 	li	t0,0x1
bfc026b0:	71095002 	mul	t2,t0,t1
bfc026b4:	340d4444 	li	t5,0x4444
bfc026b8:	340c3333 	li	t4,0x3333
bfc026bc:	340e2222 	li	t6,0x2222
bfc026c0:	01405825 	move	t3,t2
bfc026c4:	24180001 	li	t8,1
bfc026c8:	15782646 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc026cc:	00000000 	nop
bfc026d0:	34080001 	li	t0,0x1
bfc026d4:	34090001 	li	t1,0x1
bfc026d8:	71095002 	mul	t2,t0,t1
bfc026dc:	000a5825 	or	t3,zero,t2
bfc026e0:	24180001 	li	t8,1
bfc026e4:	1578263f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc026e8:	00000000 	nop
bfc026ec:	34090001 	li	t1,0x1
bfc026f0:	34080001 	li	t0,0x1
bfc026f4:	71095002 	mul	t2,t0,t1
bfc026f8:	340c3333 	li	t4,0x3333
bfc026fc:	000a5825 	or	t3,zero,t2
bfc02700:	24180001 	li	t8,1
bfc02704:	15782637 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02708:	00000000 	nop
bfc0270c:	34090001 	li	t1,0x1
bfc02710:	34080001 	li	t0,0x1
bfc02714:	71095002 	mul	t2,t0,t1
bfc02718:	340d4444 	li	t5,0x4444
bfc0271c:	340c3333 	li	t4,0x3333
bfc02720:	000a5825 	or	t3,zero,t2
bfc02724:	24180001 	li	t8,1
bfc02728:	1578262e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0272c:	00000000 	nop
bfc02730:	34090001 	li	t1,0x1
bfc02734:	34080001 	li	t0,0x1
bfc02738:	71095002 	mul	t2,t0,t1
bfc0273c:	340d4444 	li	t5,0x4444
bfc02740:	340c3333 	li	t4,0x3333
bfc02744:	340e2222 	li	t6,0x2222
bfc02748:	000a5825 	or	t3,zero,t2
bfc0274c:	24180001 	li	t8,1
bfc02750:	15782624 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02754:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:22
bfc02758:	34090001 	li	t1,0x1
bfc0275c:	34080002 	li	t0,0x2
bfc02760:	71095002 	mul	t2,t0,t1
bfc02764:	24180002 	li	t8,2
bfc02768:	1558261e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0276c:	00000000 	nop
bfc02770:	34080002 	li	t0,0x2
bfc02774:	34090001 	li	t1,0x1
bfc02778:	71095002 	mul	t2,t0,t1
bfc0277c:	24180002 	li	t8,2
bfc02780:	15582618 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02784:	00000000 	nop
bfc02788:	34080002 	li	t0,0x2
bfc0278c:	34090001 	li	t1,0x1
bfc02790:	340a8888 	li	t2,0x8888
bfc02794:	71095802 	mul	t3,t0,t1
bfc02798:	24180002 	li	t8,2
bfc0279c:	15782611 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc027a0:	00000000 	nop
bfc027a4:	34080002 	li	t0,0x2
bfc027a8:	340c4444 	li	t4,0x4444
bfc027ac:	34090001 	li	t1,0x1
bfc027b0:	340a8888 	li	t2,0x8888
bfc027b4:	71095802 	mul	t3,t0,t1
bfc027b8:	24180002 	li	t8,2
bfc027bc:	15782609 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc027c0:	00000000 	nop
bfc027c4:	34080002 	li	t0,0x2
bfc027c8:	34090001 	li	t1,0x1
bfc027cc:	71095002 	mul	t2,t0,t1
bfc027d0:	24180002 	li	t8,2
bfc027d4:	15582603 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc027d8:	00000000 	nop
bfc027dc:	34090001 	li	t1,0x1
bfc027e0:	34080002 	li	t0,0x2
bfc027e4:	71095002 	mul	t2,t0,t1
bfc027e8:	24180002 	li	t8,2
bfc027ec:	155825fd 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc027f0:	00000000 	nop
bfc027f4:	34090001 	li	t1,0x1
bfc027f8:	34080002 	li	t0,0x2
bfc027fc:	340a8888 	li	t2,0x8888
bfc02800:	71095802 	mul	t3,t0,t1
bfc02804:	24180002 	li	t8,2
bfc02808:	157825f6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0280c:	00000000 	nop
bfc02810:	34090001 	li	t1,0x1
bfc02814:	340c4444 	li	t4,0x4444
bfc02818:	34080002 	li	t0,0x2
bfc0281c:	340a8888 	li	t2,0x8888
bfc02820:	71095802 	mul	t3,t0,t1
bfc02824:	24180002 	li	t8,2
bfc02828:	157825ee 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0282c:	00000000 	nop
bfc02830:	34080002 	li	t0,0x2
bfc02834:	34090001 	li	t1,0x1
bfc02838:	71095002 	mul	t2,t0,t1
bfc0283c:	01405825 	move	t3,t2
bfc02840:	24180002 	li	t8,2
bfc02844:	157825e7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02848:	00000000 	nop
bfc0284c:	34090001 	li	t1,0x1
bfc02850:	34080002 	li	t0,0x2
bfc02854:	71095002 	mul	t2,t0,t1
bfc02858:	340c3333 	li	t4,0x3333
bfc0285c:	01405825 	move	t3,t2
bfc02860:	24180002 	li	t8,2
bfc02864:	157825df 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02868:	00000000 	nop
bfc0286c:	34090001 	li	t1,0x1
bfc02870:	34080002 	li	t0,0x2
bfc02874:	71095002 	mul	t2,t0,t1
bfc02878:	340d4444 	li	t5,0x4444
bfc0287c:	340c3333 	li	t4,0x3333
bfc02880:	01405825 	move	t3,t2
bfc02884:	24180002 	li	t8,2
bfc02888:	157825d6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0288c:	00000000 	nop
bfc02890:	34090001 	li	t1,0x1
bfc02894:	34080002 	li	t0,0x2
bfc02898:	71095002 	mul	t2,t0,t1
bfc0289c:	340d4444 	li	t5,0x4444
bfc028a0:	340c3333 	li	t4,0x3333
bfc028a4:	340e2222 	li	t6,0x2222
bfc028a8:	01405825 	move	t3,t2
bfc028ac:	24180002 	li	t8,2
bfc028b0:	157825cc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc028b4:	00000000 	nop
bfc028b8:	34080002 	li	t0,0x2
bfc028bc:	34090001 	li	t1,0x1
bfc028c0:	71095002 	mul	t2,t0,t1
bfc028c4:	000a5825 	or	t3,zero,t2
bfc028c8:	24180002 	li	t8,2
bfc028cc:	157825c5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc028d0:	00000000 	nop
bfc028d4:	34090001 	li	t1,0x1
bfc028d8:	34080002 	li	t0,0x2
bfc028dc:	71095002 	mul	t2,t0,t1
bfc028e0:	340c3333 	li	t4,0x3333
bfc028e4:	000a5825 	or	t3,zero,t2
bfc028e8:	24180002 	li	t8,2
bfc028ec:	157825bd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc028f0:	00000000 	nop
bfc028f4:	34090001 	li	t1,0x1
bfc028f8:	34080002 	li	t0,0x2
bfc028fc:	71095002 	mul	t2,t0,t1
bfc02900:	340d4444 	li	t5,0x4444
bfc02904:	340c3333 	li	t4,0x3333
bfc02908:	000a5825 	or	t3,zero,t2
bfc0290c:	24180002 	li	t8,2
bfc02910:	157825b4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02914:	00000000 	nop
bfc02918:	34090001 	li	t1,0x1
bfc0291c:	34080002 	li	t0,0x2
bfc02920:	71095002 	mul	t2,t0,t1
bfc02924:	340d4444 	li	t5,0x4444
bfc02928:	340c3333 	li	t4,0x3333
bfc0292c:	340e2222 	li	t6,0x2222
bfc02930:	000a5825 	or	t3,zero,t2
bfc02934:	24180002 	li	t8,2
bfc02938:	157825aa 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0293c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:23
bfc02940:	34090001 	li	t1,0x1
bfc02944:	34080003 	li	t0,0x3
bfc02948:	71095002 	mul	t2,t0,t1
bfc0294c:	24180003 	li	t8,3
bfc02950:	155825a4 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02954:	00000000 	nop
bfc02958:	34080003 	li	t0,0x3
bfc0295c:	34090001 	li	t1,0x1
bfc02960:	71095002 	mul	t2,t0,t1
bfc02964:	24180003 	li	t8,3
bfc02968:	1558259e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0296c:	00000000 	nop
bfc02970:	34080003 	li	t0,0x3
bfc02974:	34090001 	li	t1,0x1
bfc02978:	340a8888 	li	t2,0x8888
bfc0297c:	71095802 	mul	t3,t0,t1
bfc02980:	24180003 	li	t8,3
bfc02984:	15782597 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02988:	00000000 	nop
bfc0298c:	34080003 	li	t0,0x3
bfc02990:	340c4444 	li	t4,0x4444
bfc02994:	34090001 	li	t1,0x1
bfc02998:	340a8888 	li	t2,0x8888
bfc0299c:	71095802 	mul	t3,t0,t1
bfc029a0:	24180003 	li	t8,3
bfc029a4:	1578258f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc029a8:	00000000 	nop
bfc029ac:	34080003 	li	t0,0x3
bfc029b0:	34090001 	li	t1,0x1
bfc029b4:	71095002 	mul	t2,t0,t1
bfc029b8:	24180003 	li	t8,3
bfc029bc:	15582589 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc029c0:	00000000 	nop
bfc029c4:	34090001 	li	t1,0x1
bfc029c8:	34080003 	li	t0,0x3
bfc029cc:	71095002 	mul	t2,t0,t1
bfc029d0:	24180003 	li	t8,3
bfc029d4:	15582583 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc029d8:	00000000 	nop
bfc029dc:	34090001 	li	t1,0x1
bfc029e0:	34080003 	li	t0,0x3
bfc029e4:	340a8888 	li	t2,0x8888
bfc029e8:	71095802 	mul	t3,t0,t1
bfc029ec:	24180003 	li	t8,3
bfc029f0:	1578257c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc029f4:	00000000 	nop
bfc029f8:	34090001 	li	t1,0x1
bfc029fc:	340c4444 	li	t4,0x4444
bfc02a00:	34080003 	li	t0,0x3
bfc02a04:	340a8888 	li	t2,0x8888
bfc02a08:	71095802 	mul	t3,t0,t1
bfc02a0c:	24180003 	li	t8,3
bfc02a10:	15782574 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02a14:	00000000 	nop
bfc02a18:	34080003 	li	t0,0x3
bfc02a1c:	34090001 	li	t1,0x1
bfc02a20:	71095002 	mul	t2,t0,t1
bfc02a24:	01405825 	move	t3,t2
bfc02a28:	24180003 	li	t8,3
bfc02a2c:	1578256d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02a30:	00000000 	nop
bfc02a34:	34090001 	li	t1,0x1
bfc02a38:	34080003 	li	t0,0x3
bfc02a3c:	71095002 	mul	t2,t0,t1
bfc02a40:	340c3333 	li	t4,0x3333
bfc02a44:	01405825 	move	t3,t2
bfc02a48:	24180003 	li	t8,3
bfc02a4c:	15782565 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02a50:	00000000 	nop
bfc02a54:	34090001 	li	t1,0x1
bfc02a58:	34080003 	li	t0,0x3
bfc02a5c:	71095002 	mul	t2,t0,t1
bfc02a60:	340d4444 	li	t5,0x4444
bfc02a64:	340c3333 	li	t4,0x3333
bfc02a68:	01405825 	move	t3,t2
bfc02a6c:	24180003 	li	t8,3
bfc02a70:	1578255c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02a74:	00000000 	nop
bfc02a78:	34090001 	li	t1,0x1
bfc02a7c:	34080003 	li	t0,0x3
bfc02a80:	71095002 	mul	t2,t0,t1
bfc02a84:	340d4444 	li	t5,0x4444
bfc02a88:	340c3333 	li	t4,0x3333
bfc02a8c:	340e2222 	li	t6,0x2222
bfc02a90:	01405825 	move	t3,t2
bfc02a94:	24180003 	li	t8,3
bfc02a98:	15782552 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02a9c:	00000000 	nop
bfc02aa0:	34080003 	li	t0,0x3
bfc02aa4:	34090001 	li	t1,0x1
bfc02aa8:	71095002 	mul	t2,t0,t1
bfc02aac:	000a5825 	or	t3,zero,t2
bfc02ab0:	24180003 	li	t8,3
bfc02ab4:	1578254b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02ab8:	00000000 	nop
bfc02abc:	34090001 	li	t1,0x1
bfc02ac0:	34080003 	li	t0,0x3
bfc02ac4:	71095002 	mul	t2,t0,t1
bfc02ac8:	340c3333 	li	t4,0x3333
bfc02acc:	000a5825 	or	t3,zero,t2
bfc02ad0:	24180003 	li	t8,3
bfc02ad4:	15782543 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02ad8:	00000000 	nop
bfc02adc:	34090001 	li	t1,0x1
bfc02ae0:	34080003 	li	t0,0x3
bfc02ae4:	71095002 	mul	t2,t0,t1
bfc02ae8:	340d4444 	li	t5,0x4444
bfc02aec:	340c3333 	li	t4,0x3333
bfc02af0:	000a5825 	or	t3,zero,t2
bfc02af4:	24180003 	li	t8,3
bfc02af8:	1578253a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02afc:	00000000 	nop
bfc02b00:	34090001 	li	t1,0x1
bfc02b04:	34080003 	li	t0,0x3
bfc02b08:	71095002 	mul	t2,t0,t1
bfc02b0c:	340d4444 	li	t5,0x4444
bfc02b10:	340c3333 	li	t4,0x3333
bfc02b14:	340e2222 	li	t6,0x2222
bfc02b18:	000a5825 	or	t3,zero,t2
bfc02b1c:	24180003 	li	t8,3
bfc02b20:	15782530 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02b24:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:24
bfc02b28:	34090001 	li	t1,0x1
bfc02b2c:	34080004 	li	t0,0x4
bfc02b30:	71095002 	mul	t2,t0,t1
bfc02b34:	24180004 	li	t8,4
bfc02b38:	1558252a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02b3c:	00000000 	nop
bfc02b40:	34080004 	li	t0,0x4
bfc02b44:	34090001 	li	t1,0x1
bfc02b48:	71095002 	mul	t2,t0,t1
bfc02b4c:	24180004 	li	t8,4
bfc02b50:	15582524 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02b54:	00000000 	nop
bfc02b58:	34080004 	li	t0,0x4
bfc02b5c:	34090001 	li	t1,0x1
bfc02b60:	340a8888 	li	t2,0x8888
bfc02b64:	71095802 	mul	t3,t0,t1
bfc02b68:	24180004 	li	t8,4
bfc02b6c:	1578251d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02b70:	00000000 	nop
bfc02b74:	34080004 	li	t0,0x4
bfc02b78:	340c4444 	li	t4,0x4444
bfc02b7c:	34090001 	li	t1,0x1
bfc02b80:	340a8888 	li	t2,0x8888
bfc02b84:	71095802 	mul	t3,t0,t1
bfc02b88:	24180004 	li	t8,4
bfc02b8c:	15782515 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02b90:	00000000 	nop
bfc02b94:	34080004 	li	t0,0x4
bfc02b98:	34090001 	li	t1,0x1
bfc02b9c:	71095002 	mul	t2,t0,t1
bfc02ba0:	24180004 	li	t8,4
bfc02ba4:	1558250f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02ba8:	00000000 	nop
bfc02bac:	34090001 	li	t1,0x1
bfc02bb0:	34080004 	li	t0,0x4
bfc02bb4:	71095002 	mul	t2,t0,t1
bfc02bb8:	24180004 	li	t8,4
bfc02bbc:	15582509 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02bc0:	00000000 	nop
bfc02bc4:	34090001 	li	t1,0x1
bfc02bc8:	34080004 	li	t0,0x4
bfc02bcc:	340a8888 	li	t2,0x8888
bfc02bd0:	71095802 	mul	t3,t0,t1
bfc02bd4:	24180004 	li	t8,4
bfc02bd8:	15782502 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02bdc:	00000000 	nop
bfc02be0:	34090001 	li	t1,0x1
bfc02be4:	340c4444 	li	t4,0x4444
bfc02be8:	34080004 	li	t0,0x4
bfc02bec:	340a8888 	li	t2,0x8888
bfc02bf0:	71095802 	mul	t3,t0,t1
bfc02bf4:	24180004 	li	t8,4
bfc02bf8:	157824fa 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02bfc:	00000000 	nop
bfc02c00:	34080004 	li	t0,0x4
bfc02c04:	34090001 	li	t1,0x1
bfc02c08:	71095002 	mul	t2,t0,t1
bfc02c0c:	01405825 	move	t3,t2
bfc02c10:	24180004 	li	t8,4
bfc02c14:	157824f3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02c18:	00000000 	nop
bfc02c1c:	34090001 	li	t1,0x1
bfc02c20:	34080004 	li	t0,0x4
bfc02c24:	71095002 	mul	t2,t0,t1
bfc02c28:	340c3333 	li	t4,0x3333
bfc02c2c:	01405825 	move	t3,t2
bfc02c30:	24180004 	li	t8,4
bfc02c34:	157824eb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02c38:	00000000 	nop
bfc02c3c:	34090001 	li	t1,0x1
bfc02c40:	34080004 	li	t0,0x4
bfc02c44:	71095002 	mul	t2,t0,t1
bfc02c48:	340d4444 	li	t5,0x4444
bfc02c4c:	340c3333 	li	t4,0x3333
bfc02c50:	01405825 	move	t3,t2
bfc02c54:	24180004 	li	t8,4
bfc02c58:	157824e2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02c5c:	00000000 	nop
bfc02c60:	34090001 	li	t1,0x1
bfc02c64:	34080004 	li	t0,0x4
bfc02c68:	71095002 	mul	t2,t0,t1
bfc02c6c:	340d4444 	li	t5,0x4444
bfc02c70:	340c3333 	li	t4,0x3333
bfc02c74:	340e2222 	li	t6,0x2222
bfc02c78:	01405825 	move	t3,t2
bfc02c7c:	24180004 	li	t8,4
bfc02c80:	157824d8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02c84:	00000000 	nop
bfc02c88:	34080004 	li	t0,0x4
bfc02c8c:	34090001 	li	t1,0x1
bfc02c90:	71095002 	mul	t2,t0,t1
bfc02c94:	000a5825 	or	t3,zero,t2
bfc02c98:	24180004 	li	t8,4
bfc02c9c:	157824d1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02ca0:	00000000 	nop
bfc02ca4:	34090001 	li	t1,0x1
bfc02ca8:	34080004 	li	t0,0x4
bfc02cac:	71095002 	mul	t2,t0,t1
bfc02cb0:	340c3333 	li	t4,0x3333
bfc02cb4:	000a5825 	or	t3,zero,t2
bfc02cb8:	24180004 	li	t8,4
bfc02cbc:	157824c9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02cc0:	00000000 	nop
bfc02cc4:	34090001 	li	t1,0x1
bfc02cc8:	34080004 	li	t0,0x4
bfc02ccc:	71095002 	mul	t2,t0,t1
bfc02cd0:	340d4444 	li	t5,0x4444
bfc02cd4:	340c3333 	li	t4,0x3333
bfc02cd8:	000a5825 	or	t3,zero,t2
bfc02cdc:	24180004 	li	t8,4
bfc02ce0:	157824c0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02ce4:	00000000 	nop
bfc02ce8:	34090001 	li	t1,0x1
bfc02cec:	34080004 	li	t0,0x4
bfc02cf0:	71095002 	mul	t2,t0,t1
bfc02cf4:	340d4444 	li	t5,0x4444
bfc02cf8:	340c3333 	li	t4,0x3333
bfc02cfc:	340e2222 	li	t6,0x2222
bfc02d00:	000a5825 	or	t3,zero,t2
bfc02d04:	24180004 	li	t8,4
bfc02d08:	157824b6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02d0c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:25
bfc02d10:	34090001 	li	t1,0x1
bfc02d14:	34080005 	li	t0,0x5
bfc02d18:	71095002 	mul	t2,t0,t1
bfc02d1c:	24180005 	li	t8,5
bfc02d20:	155824b0 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02d24:	00000000 	nop
bfc02d28:	34080005 	li	t0,0x5
bfc02d2c:	34090001 	li	t1,0x1
bfc02d30:	71095002 	mul	t2,t0,t1
bfc02d34:	24180005 	li	t8,5
bfc02d38:	155824aa 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02d3c:	00000000 	nop
bfc02d40:	34080005 	li	t0,0x5
bfc02d44:	34090001 	li	t1,0x1
bfc02d48:	340a8888 	li	t2,0x8888
bfc02d4c:	71095802 	mul	t3,t0,t1
bfc02d50:	24180005 	li	t8,5
bfc02d54:	157824a3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02d58:	00000000 	nop
bfc02d5c:	34080005 	li	t0,0x5
bfc02d60:	340c4444 	li	t4,0x4444
bfc02d64:	34090001 	li	t1,0x1
bfc02d68:	340a8888 	li	t2,0x8888
bfc02d6c:	71095802 	mul	t3,t0,t1
bfc02d70:	24180005 	li	t8,5
bfc02d74:	1578249b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02d78:	00000000 	nop
bfc02d7c:	34080005 	li	t0,0x5
bfc02d80:	34090001 	li	t1,0x1
bfc02d84:	71095002 	mul	t2,t0,t1
bfc02d88:	24180005 	li	t8,5
bfc02d8c:	15582495 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02d90:	00000000 	nop
bfc02d94:	34090001 	li	t1,0x1
bfc02d98:	34080005 	li	t0,0x5
bfc02d9c:	71095002 	mul	t2,t0,t1
bfc02da0:	24180005 	li	t8,5
bfc02da4:	1558248f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02da8:	00000000 	nop
bfc02dac:	34090001 	li	t1,0x1
bfc02db0:	34080005 	li	t0,0x5
bfc02db4:	340a8888 	li	t2,0x8888
bfc02db8:	71095802 	mul	t3,t0,t1
bfc02dbc:	24180005 	li	t8,5
bfc02dc0:	15782488 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02dc4:	00000000 	nop
bfc02dc8:	34090001 	li	t1,0x1
bfc02dcc:	340c4444 	li	t4,0x4444
bfc02dd0:	34080005 	li	t0,0x5
bfc02dd4:	340a8888 	li	t2,0x8888
bfc02dd8:	71095802 	mul	t3,t0,t1
bfc02ddc:	24180005 	li	t8,5
bfc02de0:	15782480 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02de4:	00000000 	nop
bfc02de8:	34080005 	li	t0,0x5
bfc02dec:	34090001 	li	t1,0x1
bfc02df0:	71095002 	mul	t2,t0,t1
bfc02df4:	01405825 	move	t3,t2
bfc02df8:	24180005 	li	t8,5
bfc02dfc:	15782479 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02e00:	00000000 	nop
bfc02e04:	34090001 	li	t1,0x1
bfc02e08:	34080005 	li	t0,0x5
bfc02e0c:	71095002 	mul	t2,t0,t1
bfc02e10:	340c3333 	li	t4,0x3333
bfc02e14:	01405825 	move	t3,t2
bfc02e18:	24180005 	li	t8,5
bfc02e1c:	15782471 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02e20:	00000000 	nop
bfc02e24:	34090001 	li	t1,0x1
bfc02e28:	34080005 	li	t0,0x5
bfc02e2c:	71095002 	mul	t2,t0,t1
bfc02e30:	340d4444 	li	t5,0x4444
bfc02e34:	340c3333 	li	t4,0x3333
bfc02e38:	01405825 	move	t3,t2
bfc02e3c:	24180005 	li	t8,5
bfc02e40:	15782468 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02e44:	00000000 	nop
bfc02e48:	34090001 	li	t1,0x1
bfc02e4c:	34080005 	li	t0,0x5
bfc02e50:	71095002 	mul	t2,t0,t1
bfc02e54:	340d4444 	li	t5,0x4444
bfc02e58:	340c3333 	li	t4,0x3333
bfc02e5c:	340e2222 	li	t6,0x2222
bfc02e60:	01405825 	move	t3,t2
bfc02e64:	24180005 	li	t8,5
bfc02e68:	1578245e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02e6c:	00000000 	nop
bfc02e70:	34080005 	li	t0,0x5
bfc02e74:	34090001 	li	t1,0x1
bfc02e78:	71095002 	mul	t2,t0,t1
bfc02e7c:	000a5825 	or	t3,zero,t2
bfc02e80:	24180005 	li	t8,5
bfc02e84:	15782457 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02e88:	00000000 	nop
bfc02e8c:	34090001 	li	t1,0x1
bfc02e90:	34080005 	li	t0,0x5
bfc02e94:	71095002 	mul	t2,t0,t1
bfc02e98:	340c3333 	li	t4,0x3333
bfc02e9c:	000a5825 	or	t3,zero,t2
bfc02ea0:	24180005 	li	t8,5
bfc02ea4:	1578244f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02ea8:	00000000 	nop
bfc02eac:	34090001 	li	t1,0x1
bfc02eb0:	34080005 	li	t0,0x5
bfc02eb4:	71095002 	mul	t2,t0,t1
bfc02eb8:	340d4444 	li	t5,0x4444
bfc02ebc:	340c3333 	li	t4,0x3333
bfc02ec0:	000a5825 	or	t3,zero,t2
bfc02ec4:	24180005 	li	t8,5
bfc02ec8:	15782446 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02ecc:	00000000 	nop
bfc02ed0:	34090001 	li	t1,0x1
bfc02ed4:	34080005 	li	t0,0x5
bfc02ed8:	71095002 	mul	t2,t0,t1
bfc02edc:	340d4444 	li	t5,0x4444
bfc02ee0:	340c3333 	li	t4,0x3333
bfc02ee4:	340e2222 	li	t6,0x2222
bfc02ee8:	000a5825 	or	t3,zero,t2
bfc02eec:	24180005 	li	t8,5
bfc02ef0:	1578243c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02ef4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:26
bfc02ef8:	34090001 	li	t1,0x1
bfc02efc:	34080006 	li	t0,0x6
bfc02f00:	71095002 	mul	t2,t0,t1
bfc02f04:	24180006 	li	t8,6
bfc02f08:	15582436 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02f0c:	00000000 	nop
bfc02f10:	34080006 	li	t0,0x6
bfc02f14:	34090001 	li	t1,0x1
bfc02f18:	71095002 	mul	t2,t0,t1
bfc02f1c:	24180006 	li	t8,6
bfc02f20:	15582430 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02f24:	00000000 	nop
bfc02f28:	34080006 	li	t0,0x6
bfc02f2c:	34090001 	li	t1,0x1
bfc02f30:	340a8888 	li	t2,0x8888
bfc02f34:	71095802 	mul	t3,t0,t1
bfc02f38:	24180006 	li	t8,6
bfc02f3c:	15782429 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02f40:	00000000 	nop
bfc02f44:	34080006 	li	t0,0x6
bfc02f48:	340c4444 	li	t4,0x4444
bfc02f4c:	34090001 	li	t1,0x1
bfc02f50:	340a8888 	li	t2,0x8888
bfc02f54:	71095802 	mul	t3,t0,t1
bfc02f58:	24180006 	li	t8,6
bfc02f5c:	15782421 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02f60:	00000000 	nop
bfc02f64:	34080006 	li	t0,0x6
bfc02f68:	34090001 	li	t1,0x1
bfc02f6c:	71095002 	mul	t2,t0,t1
bfc02f70:	24180006 	li	t8,6
bfc02f74:	1558241b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02f78:	00000000 	nop
bfc02f7c:	34090001 	li	t1,0x1
bfc02f80:	34080006 	li	t0,0x6
bfc02f84:	71095002 	mul	t2,t0,t1
bfc02f88:	24180006 	li	t8,6
bfc02f8c:	15582415 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc02f90:	00000000 	nop
bfc02f94:	34090001 	li	t1,0x1
bfc02f98:	34080006 	li	t0,0x6
bfc02f9c:	340a8888 	li	t2,0x8888
bfc02fa0:	71095802 	mul	t3,t0,t1
bfc02fa4:	24180006 	li	t8,6
bfc02fa8:	1578240e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02fac:	00000000 	nop
bfc02fb0:	34090001 	li	t1,0x1
bfc02fb4:	340c4444 	li	t4,0x4444
bfc02fb8:	34080006 	li	t0,0x6
bfc02fbc:	340a8888 	li	t2,0x8888
bfc02fc0:	71095802 	mul	t3,t0,t1
bfc02fc4:	24180006 	li	t8,6
bfc02fc8:	15782406 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02fcc:	00000000 	nop
bfc02fd0:	34080006 	li	t0,0x6
bfc02fd4:	34090001 	li	t1,0x1
bfc02fd8:	71095002 	mul	t2,t0,t1
bfc02fdc:	01405825 	move	t3,t2
bfc02fe0:	24180006 	li	t8,6
bfc02fe4:	157823ff 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc02fe8:	00000000 	nop
bfc02fec:	34090001 	li	t1,0x1
bfc02ff0:	34080006 	li	t0,0x6
bfc02ff4:	71095002 	mul	t2,t0,t1
bfc02ff8:	340c3333 	li	t4,0x3333
bfc02ffc:	01405825 	move	t3,t2
bfc03000:	24180006 	li	t8,6
bfc03004:	157823f7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03008:	00000000 	nop
bfc0300c:	34090001 	li	t1,0x1
bfc03010:	34080006 	li	t0,0x6
bfc03014:	71095002 	mul	t2,t0,t1
bfc03018:	340d4444 	li	t5,0x4444
bfc0301c:	340c3333 	li	t4,0x3333
bfc03020:	01405825 	move	t3,t2
bfc03024:	24180006 	li	t8,6
bfc03028:	157823ee 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0302c:	00000000 	nop
bfc03030:	34090001 	li	t1,0x1
bfc03034:	34080006 	li	t0,0x6
bfc03038:	71095002 	mul	t2,t0,t1
bfc0303c:	340d4444 	li	t5,0x4444
bfc03040:	340c3333 	li	t4,0x3333
bfc03044:	340e2222 	li	t6,0x2222
bfc03048:	01405825 	move	t3,t2
bfc0304c:	24180006 	li	t8,6
bfc03050:	157823e4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03054:	00000000 	nop
bfc03058:	34080006 	li	t0,0x6
bfc0305c:	34090001 	li	t1,0x1
bfc03060:	71095002 	mul	t2,t0,t1
bfc03064:	000a5825 	or	t3,zero,t2
bfc03068:	24180006 	li	t8,6
bfc0306c:	157823dd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03070:	00000000 	nop
bfc03074:	34090001 	li	t1,0x1
bfc03078:	34080006 	li	t0,0x6
bfc0307c:	71095002 	mul	t2,t0,t1
bfc03080:	340c3333 	li	t4,0x3333
bfc03084:	000a5825 	or	t3,zero,t2
bfc03088:	24180006 	li	t8,6
bfc0308c:	157823d5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03090:	00000000 	nop
bfc03094:	34090001 	li	t1,0x1
bfc03098:	34080006 	li	t0,0x6
bfc0309c:	71095002 	mul	t2,t0,t1
bfc030a0:	340d4444 	li	t5,0x4444
bfc030a4:	340c3333 	li	t4,0x3333
bfc030a8:	000a5825 	or	t3,zero,t2
bfc030ac:	24180006 	li	t8,6
bfc030b0:	157823cc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc030b4:	00000000 	nop
bfc030b8:	34090001 	li	t1,0x1
bfc030bc:	34080006 	li	t0,0x6
bfc030c0:	71095002 	mul	t2,t0,t1
bfc030c4:	340d4444 	li	t5,0x4444
bfc030c8:	340c3333 	li	t4,0x3333
bfc030cc:	340e2222 	li	t6,0x2222
bfc030d0:	000a5825 	or	t3,zero,t2
bfc030d4:	24180006 	li	t8,6
bfc030d8:	157823c2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc030dc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:27
bfc030e0:	34090001 	li	t1,0x1
bfc030e4:	34080007 	li	t0,0x7
bfc030e8:	71095002 	mul	t2,t0,t1
bfc030ec:	24180007 	li	t8,7
bfc030f0:	155823bc 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc030f4:	00000000 	nop
bfc030f8:	34080007 	li	t0,0x7
bfc030fc:	34090001 	li	t1,0x1
bfc03100:	71095002 	mul	t2,t0,t1
bfc03104:	24180007 	li	t8,7
bfc03108:	155823b6 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0310c:	00000000 	nop
bfc03110:	34080007 	li	t0,0x7
bfc03114:	34090001 	li	t1,0x1
bfc03118:	340a8888 	li	t2,0x8888
bfc0311c:	71095802 	mul	t3,t0,t1
bfc03120:	24180007 	li	t8,7
bfc03124:	157823af 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03128:	00000000 	nop
bfc0312c:	34080007 	li	t0,0x7
bfc03130:	340c4444 	li	t4,0x4444
bfc03134:	34090001 	li	t1,0x1
bfc03138:	340a8888 	li	t2,0x8888
bfc0313c:	71095802 	mul	t3,t0,t1
bfc03140:	24180007 	li	t8,7
bfc03144:	157823a7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03148:	00000000 	nop
bfc0314c:	34080007 	li	t0,0x7
bfc03150:	34090001 	li	t1,0x1
bfc03154:	71095002 	mul	t2,t0,t1
bfc03158:	24180007 	li	t8,7
bfc0315c:	155823a1 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03160:	00000000 	nop
bfc03164:	34090001 	li	t1,0x1
bfc03168:	34080007 	li	t0,0x7
bfc0316c:	71095002 	mul	t2,t0,t1
bfc03170:	24180007 	li	t8,7
bfc03174:	1558239b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03178:	00000000 	nop
bfc0317c:	34090001 	li	t1,0x1
bfc03180:	34080007 	li	t0,0x7
bfc03184:	340a8888 	li	t2,0x8888
bfc03188:	71095802 	mul	t3,t0,t1
bfc0318c:	24180007 	li	t8,7
bfc03190:	15782394 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03194:	00000000 	nop
bfc03198:	34090001 	li	t1,0x1
bfc0319c:	340c4444 	li	t4,0x4444
bfc031a0:	34080007 	li	t0,0x7
bfc031a4:	340a8888 	li	t2,0x8888
bfc031a8:	71095802 	mul	t3,t0,t1
bfc031ac:	24180007 	li	t8,7
bfc031b0:	1578238c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc031b4:	00000000 	nop
bfc031b8:	34080007 	li	t0,0x7
bfc031bc:	34090001 	li	t1,0x1
bfc031c0:	71095002 	mul	t2,t0,t1
bfc031c4:	01405825 	move	t3,t2
bfc031c8:	24180007 	li	t8,7
bfc031cc:	15782385 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc031d0:	00000000 	nop
bfc031d4:	34090001 	li	t1,0x1
bfc031d8:	34080007 	li	t0,0x7
bfc031dc:	71095002 	mul	t2,t0,t1
bfc031e0:	340c3333 	li	t4,0x3333
bfc031e4:	01405825 	move	t3,t2
bfc031e8:	24180007 	li	t8,7
bfc031ec:	1578237d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc031f0:	00000000 	nop
bfc031f4:	34090001 	li	t1,0x1
bfc031f8:	34080007 	li	t0,0x7
bfc031fc:	71095002 	mul	t2,t0,t1
bfc03200:	340d4444 	li	t5,0x4444
bfc03204:	340c3333 	li	t4,0x3333
bfc03208:	01405825 	move	t3,t2
bfc0320c:	24180007 	li	t8,7
bfc03210:	15782374 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03214:	00000000 	nop
bfc03218:	34090001 	li	t1,0x1
bfc0321c:	34080007 	li	t0,0x7
bfc03220:	71095002 	mul	t2,t0,t1
bfc03224:	340d4444 	li	t5,0x4444
bfc03228:	340c3333 	li	t4,0x3333
bfc0322c:	340e2222 	li	t6,0x2222
bfc03230:	01405825 	move	t3,t2
bfc03234:	24180007 	li	t8,7
bfc03238:	1578236a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0323c:	00000000 	nop
bfc03240:	34080007 	li	t0,0x7
bfc03244:	34090001 	li	t1,0x1
bfc03248:	71095002 	mul	t2,t0,t1
bfc0324c:	000a5825 	or	t3,zero,t2
bfc03250:	24180007 	li	t8,7
bfc03254:	15782363 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03258:	00000000 	nop
bfc0325c:	34090001 	li	t1,0x1
bfc03260:	34080007 	li	t0,0x7
bfc03264:	71095002 	mul	t2,t0,t1
bfc03268:	340c3333 	li	t4,0x3333
bfc0326c:	000a5825 	or	t3,zero,t2
bfc03270:	24180007 	li	t8,7
bfc03274:	1578235b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03278:	00000000 	nop
bfc0327c:	34090001 	li	t1,0x1
bfc03280:	34080007 	li	t0,0x7
bfc03284:	71095002 	mul	t2,t0,t1
bfc03288:	340d4444 	li	t5,0x4444
bfc0328c:	340c3333 	li	t4,0x3333
bfc03290:	000a5825 	or	t3,zero,t2
bfc03294:	24180007 	li	t8,7
bfc03298:	15782352 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0329c:	00000000 	nop
bfc032a0:	34090001 	li	t1,0x1
bfc032a4:	34080007 	li	t0,0x7
bfc032a8:	71095002 	mul	t2,t0,t1
bfc032ac:	340d4444 	li	t5,0x4444
bfc032b0:	340c3333 	li	t4,0x3333
bfc032b4:	340e2222 	li	t6,0x2222
bfc032b8:	000a5825 	or	t3,zero,t2
bfc032bc:	24180007 	li	t8,7
bfc032c0:	15782348 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc032c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:28
bfc032c8:	34090001 	li	t1,0x1
bfc032cc:	34080008 	li	t0,0x8
bfc032d0:	71095002 	mul	t2,t0,t1
bfc032d4:	24180008 	li	t8,8
bfc032d8:	15582342 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc032dc:	00000000 	nop
bfc032e0:	34080008 	li	t0,0x8
bfc032e4:	34090001 	li	t1,0x1
bfc032e8:	71095002 	mul	t2,t0,t1
bfc032ec:	24180008 	li	t8,8
bfc032f0:	1558233c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc032f4:	00000000 	nop
bfc032f8:	34080008 	li	t0,0x8
bfc032fc:	34090001 	li	t1,0x1
bfc03300:	340a8888 	li	t2,0x8888
bfc03304:	71095802 	mul	t3,t0,t1
bfc03308:	24180008 	li	t8,8
bfc0330c:	15782335 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03310:	00000000 	nop
bfc03314:	34080008 	li	t0,0x8
bfc03318:	340c4444 	li	t4,0x4444
bfc0331c:	34090001 	li	t1,0x1
bfc03320:	340a8888 	li	t2,0x8888
bfc03324:	71095802 	mul	t3,t0,t1
bfc03328:	24180008 	li	t8,8
bfc0332c:	1578232d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03330:	00000000 	nop
bfc03334:	34080008 	li	t0,0x8
bfc03338:	34090001 	li	t1,0x1
bfc0333c:	71095002 	mul	t2,t0,t1
bfc03340:	24180008 	li	t8,8
bfc03344:	15582327 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03348:	00000000 	nop
bfc0334c:	34090001 	li	t1,0x1
bfc03350:	34080008 	li	t0,0x8
bfc03354:	71095002 	mul	t2,t0,t1
bfc03358:	24180008 	li	t8,8
bfc0335c:	15582321 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03360:	00000000 	nop
bfc03364:	34090001 	li	t1,0x1
bfc03368:	34080008 	li	t0,0x8
bfc0336c:	340a8888 	li	t2,0x8888
bfc03370:	71095802 	mul	t3,t0,t1
bfc03374:	24180008 	li	t8,8
bfc03378:	1578231a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0337c:	00000000 	nop
bfc03380:	34090001 	li	t1,0x1
bfc03384:	340c4444 	li	t4,0x4444
bfc03388:	34080008 	li	t0,0x8
bfc0338c:	340a8888 	li	t2,0x8888
bfc03390:	71095802 	mul	t3,t0,t1
bfc03394:	24180008 	li	t8,8
bfc03398:	15782312 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0339c:	00000000 	nop
bfc033a0:	34080008 	li	t0,0x8
bfc033a4:	34090001 	li	t1,0x1
bfc033a8:	71095002 	mul	t2,t0,t1
bfc033ac:	01405825 	move	t3,t2
bfc033b0:	24180008 	li	t8,8
bfc033b4:	1578230b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc033b8:	00000000 	nop
bfc033bc:	34090001 	li	t1,0x1
bfc033c0:	34080008 	li	t0,0x8
bfc033c4:	71095002 	mul	t2,t0,t1
bfc033c8:	340c3333 	li	t4,0x3333
bfc033cc:	01405825 	move	t3,t2
bfc033d0:	24180008 	li	t8,8
bfc033d4:	15782303 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc033d8:	00000000 	nop
bfc033dc:	34090001 	li	t1,0x1
bfc033e0:	34080008 	li	t0,0x8
bfc033e4:	71095002 	mul	t2,t0,t1
bfc033e8:	340d4444 	li	t5,0x4444
bfc033ec:	340c3333 	li	t4,0x3333
bfc033f0:	01405825 	move	t3,t2
bfc033f4:	24180008 	li	t8,8
bfc033f8:	157822fa 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc033fc:	00000000 	nop
bfc03400:	34090001 	li	t1,0x1
bfc03404:	34080008 	li	t0,0x8
bfc03408:	71095002 	mul	t2,t0,t1
bfc0340c:	340d4444 	li	t5,0x4444
bfc03410:	340c3333 	li	t4,0x3333
bfc03414:	340e2222 	li	t6,0x2222
bfc03418:	01405825 	move	t3,t2
bfc0341c:	24180008 	li	t8,8
bfc03420:	157822f0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03424:	00000000 	nop
bfc03428:	34080008 	li	t0,0x8
bfc0342c:	34090001 	li	t1,0x1
bfc03430:	71095002 	mul	t2,t0,t1
bfc03434:	000a5825 	or	t3,zero,t2
bfc03438:	24180008 	li	t8,8
bfc0343c:	157822e9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03440:	00000000 	nop
bfc03444:	34090001 	li	t1,0x1
bfc03448:	34080008 	li	t0,0x8
bfc0344c:	71095002 	mul	t2,t0,t1
bfc03450:	340c3333 	li	t4,0x3333
bfc03454:	000a5825 	or	t3,zero,t2
bfc03458:	24180008 	li	t8,8
bfc0345c:	157822e1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03460:	00000000 	nop
bfc03464:	34090001 	li	t1,0x1
bfc03468:	34080008 	li	t0,0x8
bfc0346c:	71095002 	mul	t2,t0,t1
bfc03470:	340d4444 	li	t5,0x4444
bfc03474:	340c3333 	li	t4,0x3333
bfc03478:	000a5825 	or	t3,zero,t2
bfc0347c:	24180008 	li	t8,8
bfc03480:	157822d8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03484:	00000000 	nop
bfc03488:	34090001 	li	t1,0x1
bfc0348c:	34080008 	li	t0,0x8
bfc03490:	71095002 	mul	t2,t0,t1
bfc03494:	340d4444 	li	t5,0x4444
bfc03498:	340c3333 	li	t4,0x3333
bfc0349c:	340e2222 	li	t6,0x2222
bfc034a0:	000a5825 	or	t3,zero,t2
bfc034a4:	24180008 	li	t8,8
bfc034a8:	157822ce 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc034ac:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:29
bfc034b0:	34090001 	li	t1,0x1
bfc034b4:	34080009 	li	t0,0x9
bfc034b8:	71095002 	mul	t2,t0,t1
bfc034bc:	24180009 	li	t8,9
bfc034c0:	155822c8 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc034c4:	00000000 	nop
bfc034c8:	34080009 	li	t0,0x9
bfc034cc:	34090001 	li	t1,0x1
bfc034d0:	71095002 	mul	t2,t0,t1
bfc034d4:	24180009 	li	t8,9
bfc034d8:	155822c2 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc034dc:	00000000 	nop
bfc034e0:	34080009 	li	t0,0x9
bfc034e4:	34090001 	li	t1,0x1
bfc034e8:	340a8888 	li	t2,0x8888
bfc034ec:	71095802 	mul	t3,t0,t1
bfc034f0:	24180009 	li	t8,9
bfc034f4:	157822bb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc034f8:	00000000 	nop
bfc034fc:	34080009 	li	t0,0x9
bfc03500:	340c4444 	li	t4,0x4444
bfc03504:	34090001 	li	t1,0x1
bfc03508:	340a8888 	li	t2,0x8888
bfc0350c:	71095802 	mul	t3,t0,t1
bfc03510:	24180009 	li	t8,9
bfc03514:	157822b3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03518:	00000000 	nop
bfc0351c:	34080009 	li	t0,0x9
bfc03520:	34090001 	li	t1,0x1
bfc03524:	71095002 	mul	t2,t0,t1
bfc03528:	24180009 	li	t8,9
bfc0352c:	155822ad 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03530:	00000000 	nop
bfc03534:	34090001 	li	t1,0x1
bfc03538:	34080009 	li	t0,0x9
bfc0353c:	71095002 	mul	t2,t0,t1
bfc03540:	24180009 	li	t8,9
bfc03544:	155822a7 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03548:	00000000 	nop
bfc0354c:	34090001 	li	t1,0x1
bfc03550:	34080009 	li	t0,0x9
bfc03554:	340a8888 	li	t2,0x8888
bfc03558:	71095802 	mul	t3,t0,t1
bfc0355c:	24180009 	li	t8,9
bfc03560:	157822a0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03564:	00000000 	nop
bfc03568:	34090001 	li	t1,0x1
bfc0356c:	340c4444 	li	t4,0x4444
bfc03570:	34080009 	li	t0,0x9
bfc03574:	340a8888 	li	t2,0x8888
bfc03578:	71095802 	mul	t3,t0,t1
bfc0357c:	24180009 	li	t8,9
bfc03580:	15782298 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03584:	00000000 	nop
bfc03588:	34080009 	li	t0,0x9
bfc0358c:	34090001 	li	t1,0x1
bfc03590:	71095002 	mul	t2,t0,t1
bfc03594:	01405825 	move	t3,t2
bfc03598:	24180009 	li	t8,9
bfc0359c:	15782291 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc035a0:	00000000 	nop
bfc035a4:	34090001 	li	t1,0x1
bfc035a8:	34080009 	li	t0,0x9
bfc035ac:	71095002 	mul	t2,t0,t1
bfc035b0:	340c3333 	li	t4,0x3333
bfc035b4:	01405825 	move	t3,t2
bfc035b8:	24180009 	li	t8,9
bfc035bc:	15782289 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc035c0:	00000000 	nop
bfc035c4:	34090001 	li	t1,0x1
bfc035c8:	34080009 	li	t0,0x9
bfc035cc:	71095002 	mul	t2,t0,t1
bfc035d0:	340d4444 	li	t5,0x4444
bfc035d4:	340c3333 	li	t4,0x3333
bfc035d8:	01405825 	move	t3,t2
bfc035dc:	24180009 	li	t8,9
bfc035e0:	15782280 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc035e4:	00000000 	nop
bfc035e8:	34090001 	li	t1,0x1
bfc035ec:	34080009 	li	t0,0x9
bfc035f0:	71095002 	mul	t2,t0,t1
bfc035f4:	340d4444 	li	t5,0x4444
bfc035f8:	340c3333 	li	t4,0x3333
bfc035fc:	340e2222 	li	t6,0x2222
bfc03600:	01405825 	move	t3,t2
bfc03604:	24180009 	li	t8,9
bfc03608:	15782276 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0360c:	00000000 	nop
bfc03610:	34080009 	li	t0,0x9
bfc03614:	34090001 	li	t1,0x1
bfc03618:	71095002 	mul	t2,t0,t1
bfc0361c:	000a5825 	or	t3,zero,t2
bfc03620:	24180009 	li	t8,9
bfc03624:	1578226f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03628:	00000000 	nop
bfc0362c:	34090001 	li	t1,0x1
bfc03630:	34080009 	li	t0,0x9
bfc03634:	71095002 	mul	t2,t0,t1
bfc03638:	340c3333 	li	t4,0x3333
bfc0363c:	000a5825 	or	t3,zero,t2
bfc03640:	24180009 	li	t8,9
bfc03644:	15782267 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03648:	00000000 	nop
bfc0364c:	34090001 	li	t1,0x1
bfc03650:	34080009 	li	t0,0x9
bfc03654:	71095002 	mul	t2,t0,t1
bfc03658:	340d4444 	li	t5,0x4444
bfc0365c:	340c3333 	li	t4,0x3333
bfc03660:	000a5825 	or	t3,zero,t2
bfc03664:	24180009 	li	t8,9
bfc03668:	1578225e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0366c:	00000000 	nop
bfc03670:	34090001 	li	t1,0x1
bfc03674:	34080009 	li	t0,0x9
bfc03678:	71095002 	mul	t2,t0,t1
bfc0367c:	340d4444 	li	t5,0x4444
bfc03680:	340c3333 	li	t4,0x3333
bfc03684:	340e2222 	li	t6,0x2222
bfc03688:	000a5825 	or	t3,zero,t2
bfc0368c:	24180009 	li	t8,9
bfc03690:	15782254 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03694:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:30
bfc03698:	34090002 	li	t1,0x2
bfc0369c:	34080001 	li	t0,0x1
bfc036a0:	71095002 	mul	t2,t0,t1
bfc036a4:	24180002 	li	t8,2
bfc036a8:	1558224e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc036ac:	00000000 	nop
bfc036b0:	34080001 	li	t0,0x1
bfc036b4:	34090002 	li	t1,0x2
bfc036b8:	71095002 	mul	t2,t0,t1
bfc036bc:	24180002 	li	t8,2
bfc036c0:	15582248 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc036c4:	00000000 	nop
bfc036c8:	34080001 	li	t0,0x1
bfc036cc:	34090002 	li	t1,0x2
bfc036d0:	340a8888 	li	t2,0x8888
bfc036d4:	71095802 	mul	t3,t0,t1
bfc036d8:	24180002 	li	t8,2
bfc036dc:	15782241 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc036e0:	00000000 	nop
bfc036e4:	34080001 	li	t0,0x1
bfc036e8:	340c4444 	li	t4,0x4444
bfc036ec:	34090002 	li	t1,0x2
bfc036f0:	340a8888 	li	t2,0x8888
bfc036f4:	71095802 	mul	t3,t0,t1
bfc036f8:	24180002 	li	t8,2
bfc036fc:	15782239 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03700:	00000000 	nop
bfc03704:	34080001 	li	t0,0x1
bfc03708:	34090002 	li	t1,0x2
bfc0370c:	71095002 	mul	t2,t0,t1
bfc03710:	24180002 	li	t8,2
bfc03714:	15582233 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03718:	00000000 	nop
bfc0371c:	34090002 	li	t1,0x2
bfc03720:	34080001 	li	t0,0x1
bfc03724:	71095002 	mul	t2,t0,t1
bfc03728:	24180002 	li	t8,2
bfc0372c:	1558222d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03730:	00000000 	nop
bfc03734:	34090002 	li	t1,0x2
bfc03738:	34080001 	li	t0,0x1
bfc0373c:	340a8888 	li	t2,0x8888
bfc03740:	71095802 	mul	t3,t0,t1
bfc03744:	24180002 	li	t8,2
bfc03748:	15782226 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0374c:	00000000 	nop
bfc03750:	34090002 	li	t1,0x2
bfc03754:	340c4444 	li	t4,0x4444
bfc03758:	34080001 	li	t0,0x1
bfc0375c:	340a8888 	li	t2,0x8888
bfc03760:	71095802 	mul	t3,t0,t1
bfc03764:	24180002 	li	t8,2
bfc03768:	1578221e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0376c:	00000000 	nop
bfc03770:	34080001 	li	t0,0x1
bfc03774:	34090002 	li	t1,0x2
bfc03778:	71095002 	mul	t2,t0,t1
bfc0377c:	01405825 	move	t3,t2
bfc03780:	24180002 	li	t8,2
bfc03784:	15782217 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03788:	00000000 	nop
bfc0378c:	34090002 	li	t1,0x2
bfc03790:	34080001 	li	t0,0x1
bfc03794:	71095002 	mul	t2,t0,t1
bfc03798:	340c3333 	li	t4,0x3333
bfc0379c:	01405825 	move	t3,t2
bfc037a0:	24180002 	li	t8,2
bfc037a4:	1578220f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc037a8:	00000000 	nop
bfc037ac:	34090002 	li	t1,0x2
bfc037b0:	34080001 	li	t0,0x1
bfc037b4:	71095002 	mul	t2,t0,t1
bfc037b8:	340d4444 	li	t5,0x4444
bfc037bc:	340c3333 	li	t4,0x3333
bfc037c0:	01405825 	move	t3,t2
bfc037c4:	24180002 	li	t8,2
bfc037c8:	15782206 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc037cc:	00000000 	nop
bfc037d0:	34090002 	li	t1,0x2
bfc037d4:	34080001 	li	t0,0x1
bfc037d8:	71095002 	mul	t2,t0,t1
bfc037dc:	340d4444 	li	t5,0x4444
bfc037e0:	340c3333 	li	t4,0x3333
bfc037e4:	340e2222 	li	t6,0x2222
bfc037e8:	01405825 	move	t3,t2
bfc037ec:	24180002 	li	t8,2
bfc037f0:	157821fc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc037f4:	00000000 	nop
bfc037f8:	34080001 	li	t0,0x1
bfc037fc:	34090002 	li	t1,0x2
bfc03800:	71095002 	mul	t2,t0,t1
bfc03804:	000a5825 	or	t3,zero,t2
bfc03808:	24180002 	li	t8,2
bfc0380c:	157821f5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03810:	00000000 	nop
bfc03814:	34090002 	li	t1,0x2
bfc03818:	34080001 	li	t0,0x1
bfc0381c:	71095002 	mul	t2,t0,t1
bfc03820:	340c3333 	li	t4,0x3333
bfc03824:	000a5825 	or	t3,zero,t2
bfc03828:	24180002 	li	t8,2
bfc0382c:	157821ed 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03830:	00000000 	nop
bfc03834:	34090002 	li	t1,0x2
bfc03838:	34080001 	li	t0,0x1
bfc0383c:	71095002 	mul	t2,t0,t1
bfc03840:	340d4444 	li	t5,0x4444
bfc03844:	340c3333 	li	t4,0x3333
bfc03848:	000a5825 	or	t3,zero,t2
bfc0384c:	24180002 	li	t8,2
bfc03850:	157821e4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03854:	00000000 	nop
bfc03858:	34090002 	li	t1,0x2
bfc0385c:	34080001 	li	t0,0x1
bfc03860:	71095002 	mul	t2,t0,t1
bfc03864:	340d4444 	li	t5,0x4444
bfc03868:	340c3333 	li	t4,0x3333
bfc0386c:	340e2222 	li	t6,0x2222
bfc03870:	000a5825 	or	t3,zero,t2
bfc03874:	24180002 	li	t8,2
bfc03878:	157821da 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0387c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:31
bfc03880:	34090002 	li	t1,0x2
bfc03884:	34080002 	li	t0,0x2
bfc03888:	71095002 	mul	t2,t0,t1
bfc0388c:	24180004 	li	t8,4
bfc03890:	155821d4 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03894:	00000000 	nop
bfc03898:	34080002 	li	t0,0x2
bfc0389c:	34090002 	li	t1,0x2
bfc038a0:	71095002 	mul	t2,t0,t1
bfc038a4:	24180004 	li	t8,4
bfc038a8:	155821ce 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc038ac:	00000000 	nop
bfc038b0:	34080002 	li	t0,0x2
bfc038b4:	34090002 	li	t1,0x2
bfc038b8:	340a8888 	li	t2,0x8888
bfc038bc:	71095802 	mul	t3,t0,t1
bfc038c0:	24180004 	li	t8,4
bfc038c4:	157821c7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc038c8:	00000000 	nop
bfc038cc:	34080002 	li	t0,0x2
bfc038d0:	340c4444 	li	t4,0x4444
bfc038d4:	34090002 	li	t1,0x2
bfc038d8:	340a8888 	li	t2,0x8888
bfc038dc:	71095802 	mul	t3,t0,t1
bfc038e0:	24180004 	li	t8,4
bfc038e4:	157821bf 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc038e8:	00000000 	nop
bfc038ec:	34080002 	li	t0,0x2
bfc038f0:	34090002 	li	t1,0x2
bfc038f4:	71095002 	mul	t2,t0,t1
bfc038f8:	24180004 	li	t8,4
bfc038fc:	155821b9 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03900:	00000000 	nop
bfc03904:	34090002 	li	t1,0x2
bfc03908:	34080002 	li	t0,0x2
bfc0390c:	71095002 	mul	t2,t0,t1
bfc03910:	24180004 	li	t8,4
bfc03914:	155821b3 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03918:	00000000 	nop
bfc0391c:	34090002 	li	t1,0x2
bfc03920:	34080002 	li	t0,0x2
bfc03924:	340a8888 	li	t2,0x8888
bfc03928:	71095802 	mul	t3,t0,t1
bfc0392c:	24180004 	li	t8,4
bfc03930:	157821ac 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03934:	00000000 	nop
bfc03938:	34090002 	li	t1,0x2
bfc0393c:	340c4444 	li	t4,0x4444
bfc03940:	34080002 	li	t0,0x2
bfc03944:	340a8888 	li	t2,0x8888
bfc03948:	71095802 	mul	t3,t0,t1
bfc0394c:	24180004 	li	t8,4
bfc03950:	157821a4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03954:	00000000 	nop
bfc03958:	34080002 	li	t0,0x2
bfc0395c:	34090002 	li	t1,0x2
bfc03960:	71095002 	mul	t2,t0,t1
bfc03964:	01405825 	move	t3,t2
bfc03968:	24180004 	li	t8,4
bfc0396c:	1578219d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03970:	00000000 	nop
bfc03974:	34090002 	li	t1,0x2
bfc03978:	34080002 	li	t0,0x2
bfc0397c:	71095002 	mul	t2,t0,t1
bfc03980:	340c3333 	li	t4,0x3333
bfc03984:	01405825 	move	t3,t2
bfc03988:	24180004 	li	t8,4
bfc0398c:	15782195 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03990:	00000000 	nop
bfc03994:	34090002 	li	t1,0x2
bfc03998:	34080002 	li	t0,0x2
bfc0399c:	71095002 	mul	t2,t0,t1
bfc039a0:	340d4444 	li	t5,0x4444
bfc039a4:	340c3333 	li	t4,0x3333
bfc039a8:	01405825 	move	t3,t2
bfc039ac:	24180004 	li	t8,4
bfc039b0:	1578218c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc039b4:	00000000 	nop
bfc039b8:	34090002 	li	t1,0x2
bfc039bc:	34080002 	li	t0,0x2
bfc039c0:	71095002 	mul	t2,t0,t1
bfc039c4:	340d4444 	li	t5,0x4444
bfc039c8:	340c3333 	li	t4,0x3333
bfc039cc:	340e2222 	li	t6,0x2222
bfc039d0:	01405825 	move	t3,t2
bfc039d4:	24180004 	li	t8,4
bfc039d8:	15782182 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc039dc:	00000000 	nop
bfc039e0:	34080002 	li	t0,0x2
bfc039e4:	34090002 	li	t1,0x2
bfc039e8:	71095002 	mul	t2,t0,t1
bfc039ec:	000a5825 	or	t3,zero,t2
bfc039f0:	24180004 	li	t8,4
bfc039f4:	1578217b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc039f8:	00000000 	nop
bfc039fc:	34090002 	li	t1,0x2
bfc03a00:	34080002 	li	t0,0x2
bfc03a04:	71095002 	mul	t2,t0,t1
bfc03a08:	340c3333 	li	t4,0x3333
bfc03a0c:	000a5825 	or	t3,zero,t2
bfc03a10:	24180004 	li	t8,4
bfc03a14:	15782173 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03a18:	00000000 	nop
bfc03a1c:	34090002 	li	t1,0x2
bfc03a20:	34080002 	li	t0,0x2
bfc03a24:	71095002 	mul	t2,t0,t1
bfc03a28:	340d4444 	li	t5,0x4444
bfc03a2c:	340c3333 	li	t4,0x3333
bfc03a30:	000a5825 	or	t3,zero,t2
bfc03a34:	24180004 	li	t8,4
bfc03a38:	1578216a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03a3c:	00000000 	nop
bfc03a40:	34090002 	li	t1,0x2
bfc03a44:	34080002 	li	t0,0x2
bfc03a48:	71095002 	mul	t2,t0,t1
bfc03a4c:	340d4444 	li	t5,0x4444
bfc03a50:	340c3333 	li	t4,0x3333
bfc03a54:	340e2222 	li	t6,0x2222
bfc03a58:	000a5825 	or	t3,zero,t2
bfc03a5c:	24180004 	li	t8,4
bfc03a60:	15782160 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03a64:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:32
bfc03a68:	34090002 	li	t1,0x2
bfc03a6c:	34080003 	li	t0,0x3
bfc03a70:	71095002 	mul	t2,t0,t1
bfc03a74:	24180006 	li	t8,6
bfc03a78:	1558215a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03a7c:	00000000 	nop
bfc03a80:	34080003 	li	t0,0x3
bfc03a84:	34090002 	li	t1,0x2
bfc03a88:	71095002 	mul	t2,t0,t1
bfc03a8c:	24180006 	li	t8,6
bfc03a90:	15582154 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03a94:	00000000 	nop
bfc03a98:	34080003 	li	t0,0x3
bfc03a9c:	34090002 	li	t1,0x2
bfc03aa0:	340a8888 	li	t2,0x8888
bfc03aa4:	71095802 	mul	t3,t0,t1
bfc03aa8:	24180006 	li	t8,6
bfc03aac:	1578214d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03ab0:	00000000 	nop
bfc03ab4:	34080003 	li	t0,0x3
bfc03ab8:	340c4444 	li	t4,0x4444
bfc03abc:	34090002 	li	t1,0x2
bfc03ac0:	340a8888 	li	t2,0x8888
bfc03ac4:	71095802 	mul	t3,t0,t1
bfc03ac8:	24180006 	li	t8,6
bfc03acc:	15782145 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03ad0:	00000000 	nop
bfc03ad4:	34080003 	li	t0,0x3
bfc03ad8:	34090002 	li	t1,0x2
bfc03adc:	71095002 	mul	t2,t0,t1
bfc03ae0:	24180006 	li	t8,6
bfc03ae4:	1558213f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03ae8:	00000000 	nop
bfc03aec:	34090002 	li	t1,0x2
bfc03af0:	34080003 	li	t0,0x3
bfc03af4:	71095002 	mul	t2,t0,t1
bfc03af8:	24180006 	li	t8,6
bfc03afc:	15582139 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03b00:	00000000 	nop
bfc03b04:	34090002 	li	t1,0x2
bfc03b08:	34080003 	li	t0,0x3
bfc03b0c:	340a8888 	li	t2,0x8888
bfc03b10:	71095802 	mul	t3,t0,t1
bfc03b14:	24180006 	li	t8,6
bfc03b18:	15782132 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03b1c:	00000000 	nop
bfc03b20:	34090002 	li	t1,0x2
bfc03b24:	340c4444 	li	t4,0x4444
bfc03b28:	34080003 	li	t0,0x3
bfc03b2c:	340a8888 	li	t2,0x8888
bfc03b30:	71095802 	mul	t3,t0,t1
bfc03b34:	24180006 	li	t8,6
bfc03b38:	1578212a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03b3c:	00000000 	nop
bfc03b40:	34080003 	li	t0,0x3
bfc03b44:	34090002 	li	t1,0x2
bfc03b48:	71095002 	mul	t2,t0,t1
bfc03b4c:	01405825 	move	t3,t2
bfc03b50:	24180006 	li	t8,6
bfc03b54:	15782123 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03b58:	00000000 	nop
bfc03b5c:	34090002 	li	t1,0x2
bfc03b60:	34080003 	li	t0,0x3
bfc03b64:	71095002 	mul	t2,t0,t1
bfc03b68:	340c3333 	li	t4,0x3333
bfc03b6c:	01405825 	move	t3,t2
bfc03b70:	24180006 	li	t8,6
bfc03b74:	1578211b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03b78:	00000000 	nop
bfc03b7c:	34090002 	li	t1,0x2
bfc03b80:	34080003 	li	t0,0x3
bfc03b84:	71095002 	mul	t2,t0,t1
bfc03b88:	340d4444 	li	t5,0x4444
bfc03b8c:	340c3333 	li	t4,0x3333
bfc03b90:	01405825 	move	t3,t2
bfc03b94:	24180006 	li	t8,6
bfc03b98:	15782112 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03b9c:	00000000 	nop
bfc03ba0:	34090002 	li	t1,0x2
bfc03ba4:	34080003 	li	t0,0x3
bfc03ba8:	71095002 	mul	t2,t0,t1
bfc03bac:	340d4444 	li	t5,0x4444
bfc03bb0:	340c3333 	li	t4,0x3333
bfc03bb4:	340e2222 	li	t6,0x2222
bfc03bb8:	01405825 	move	t3,t2
bfc03bbc:	24180006 	li	t8,6
bfc03bc0:	15782108 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03bc4:	00000000 	nop
bfc03bc8:	34080003 	li	t0,0x3
bfc03bcc:	34090002 	li	t1,0x2
bfc03bd0:	71095002 	mul	t2,t0,t1
bfc03bd4:	000a5825 	or	t3,zero,t2
bfc03bd8:	24180006 	li	t8,6
bfc03bdc:	15782101 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03be0:	00000000 	nop
bfc03be4:	34090002 	li	t1,0x2
bfc03be8:	34080003 	li	t0,0x3
bfc03bec:	71095002 	mul	t2,t0,t1
bfc03bf0:	340c3333 	li	t4,0x3333
bfc03bf4:	000a5825 	or	t3,zero,t2
bfc03bf8:	24180006 	li	t8,6
bfc03bfc:	157820f9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03c00:	00000000 	nop
bfc03c04:	34090002 	li	t1,0x2
bfc03c08:	34080003 	li	t0,0x3
bfc03c0c:	71095002 	mul	t2,t0,t1
bfc03c10:	340d4444 	li	t5,0x4444
bfc03c14:	340c3333 	li	t4,0x3333
bfc03c18:	000a5825 	or	t3,zero,t2
bfc03c1c:	24180006 	li	t8,6
bfc03c20:	157820f0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03c24:	00000000 	nop
bfc03c28:	34090002 	li	t1,0x2
bfc03c2c:	34080003 	li	t0,0x3
bfc03c30:	71095002 	mul	t2,t0,t1
bfc03c34:	340d4444 	li	t5,0x4444
bfc03c38:	340c3333 	li	t4,0x3333
bfc03c3c:	340e2222 	li	t6,0x2222
bfc03c40:	000a5825 	or	t3,zero,t2
bfc03c44:	24180006 	li	t8,6
bfc03c48:	157820e6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03c4c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:33
bfc03c50:	34090002 	li	t1,0x2
bfc03c54:	34080004 	li	t0,0x4
bfc03c58:	71095002 	mul	t2,t0,t1
bfc03c5c:	24180008 	li	t8,8
bfc03c60:	155820e0 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03c64:	00000000 	nop
bfc03c68:	34080004 	li	t0,0x4
bfc03c6c:	34090002 	li	t1,0x2
bfc03c70:	71095002 	mul	t2,t0,t1
bfc03c74:	24180008 	li	t8,8
bfc03c78:	155820da 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03c7c:	00000000 	nop
bfc03c80:	34080004 	li	t0,0x4
bfc03c84:	34090002 	li	t1,0x2
bfc03c88:	340a8888 	li	t2,0x8888
bfc03c8c:	71095802 	mul	t3,t0,t1
bfc03c90:	24180008 	li	t8,8
bfc03c94:	157820d3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03c98:	00000000 	nop
bfc03c9c:	34080004 	li	t0,0x4
bfc03ca0:	340c4444 	li	t4,0x4444
bfc03ca4:	34090002 	li	t1,0x2
bfc03ca8:	340a8888 	li	t2,0x8888
bfc03cac:	71095802 	mul	t3,t0,t1
bfc03cb0:	24180008 	li	t8,8
bfc03cb4:	157820cb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03cb8:	00000000 	nop
bfc03cbc:	34080004 	li	t0,0x4
bfc03cc0:	34090002 	li	t1,0x2
bfc03cc4:	71095002 	mul	t2,t0,t1
bfc03cc8:	24180008 	li	t8,8
bfc03ccc:	155820c5 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03cd0:	00000000 	nop
bfc03cd4:	34090002 	li	t1,0x2
bfc03cd8:	34080004 	li	t0,0x4
bfc03cdc:	71095002 	mul	t2,t0,t1
bfc03ce0:	24180008 	li	t8,8
bfc03ce4:	155820bf 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03ce8:	00000000 	nop
bfc03cec:	34090002 	li	t1,0x2
bfc03cf0:	34080004 	li	t0,0x4
bfc03cf4:	340a8888 	li	t2,0x8888
bfc03cf8:	71095802 	mul	t3,t0,t1
bfc03cfc:	24180008 	li	t8,8
bfc03d00:	157820b8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03d04:	00000000 	nop
bfc03d08:	34090002 	li	t1,0x2
bfc03d0c:	340c4444 	li	t4,0x4444
bfc03d10:	34080004 	li	t0,0x4
bfc03d14:	340a8888 	li	t2,0x8888
bfc03d18:	71095802 	mul	t3,t0,t1
bfc03d1c:	24180008 	li	t8,8
bfc03d20:	157820b0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03d24:	00000000 	nop
bfc03d28:	34080004 	li	t0,0x4
bfc03d2c:	34090002 	li	t1,0x2
bfc03d30:	71095002 	mul	t2,t0,t1
bfc03d34:	01405825 	move	t3,t2
bfc03d38:	24180008 	li	t8,8
bfc03d3c:	157820a9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03d40:	00000000 	nop
bfc03d44:	34090002 	li	t1,0x2
bfc03d48:	34080004 	li	t0,0x4
bfc03d4c:	71095002 	mul	t2,t0,t1
bfc03d50:	340c3333 	li	t4,0x3333
bfc03d54:	01405825 	move	t3,t2
bfc03d58:	24180008 	li	t8,8
bfc03d5c:	157820a1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03d60:	00000000 	nop
bfc03d64:	34090002 	li	t1,0x2
bfc03d68:	34080004 	li	t0,0x4
bfc03d6c:	71095002 	mul	t2,t0,t1
bfc03d70:	340d4444 	li	t5,0x4444
bfc03d74:	340c3333 	li	t4,0x3333
bfc03d78:	01405825 	move	t3,t2
bfc03d7c:	24180008 	li	t8,8
bfc03d80:	15782098 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03d84:	00000000 	nop
bfc03d88:	34090002 	li	t1,0x2
bfc03d8c:	34080004 	li	t0,0x4
bfc03d90:	71095002 	mul	t2,t0,t1
bfc03d94:	340d4444 	li	t5,0x4444
bfc03d98:	340c3333 	li	t4,0x3333
bfc03d9c:	340e2222 	li	t6,0x2222
bfc03da0:	01405825 	move	t3,t2
bfc03da4:	24180008 	li	t8,8
bfc03da8:	1578208e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03dac:	00000000 	nop
bfc03db0:	34080004 	li	t0,0x4
bfc03db4:	34090002 	li	t1,0x2
bfc03db8:	71095002 	mul	t2,t0,t1
bfc03dbc:	000a5825 	or	t3,zero,t2
bfc03dc0:	24180008 	li	t8,8
bfc03dc4:	15782087 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03dc8:	00000000 	nop
bfc03dcc:	34090002 	li	t1,0x2
bfc03dd0:	34080004 	li	t0,0x4
bfc03dd4:	71095002 	mul	t2,t0,t1
bfc03dd8:	340c3333 	li	t4,0x3333
bfc03ddc:	000a5825 	or	t3,zero,t2
bfc03de0:	24180008 	li	t8,8
bfc03de4:	1578207f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03de8:	00000000 	nop
bfc03dec:	34090002 	li	t1,0x2
bfc03df0:	34080004 	li	t0,0x4
bfc03df4:	71095002 	mul	t2,t0,t1
bfc03df8:	340d4444 	li	t5,0x4444
bfc03dfc:	340c3333 	li	t4,0x3333
bfc03e00:	000a5825 	or	t3,zero,t2
bfc03e04:	24180008 	li	t8,8
bfc03e08:	15782076 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03e0c:	00000000 	nop
bfc03e10:	34090002 	li	t1,0x2
bfc03e14:	34080004 	li	t0,0x4
bfc03e18:	71095002 	mul	t2,t0,t1
bfc03e1c:	340d4444 	li	t5,0x4444
bfc03e20:	340c3333 	li	t4,0x3333
bfc03e24:	340e2222 	li	t6,0x2222
bfc03e28:	000a5825 	or	t3,zero,t2
bfc03e2c:	24180008 	li	t8,8
bfc03e30:	1578206c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03e34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:34
bfc03e38:	34090002 	li	t1,0x2
bfc03e3c:	34080005 	li	t0,0x5
bfc03e40:	71095002 	mul	t2,t0,t1
bfc03e44:	2418000a 	li	t8,10
bfc03e48:	15582066 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03e4c:	00000000 	nop
bfc03e50:	34080005 	li	t0,0x5
bfc03e54:	34090002 	li	t1,0x2
bfc03e58:	71095002 	mul	t2,t0,t1
bfc03e5c:	2418000a 	li	t8,10
bfc03e60:	15582060 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03e64:	00000000 	nop
bfc03e68:	34080005 	li	t0,0x5
bfc03e6c:	34090002 	li	t1,0x2
bfc03e70:	340a8888 	li	t2,0x8888
bfc03e74:	71095802 	mul	t3,t0,t1
bfc03e78:	2418000a 	li	t8,10
bfc03e7c:	15782059 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03e80:	00000000 	nop
bfc03e84:	34080005 	li	t0,0x5
bfc03e88:	340c4444 	li	t4,0x4444
bfc03e8c:	34090002 	li	t1,0x2
bfc03e90:	340a8888 	li	t2,0x8888
bfc03e94:	71095802 	mul	t3,t0,t1
bfc03e98:	2418000a 	li	t8,10
bfc03e9c:	15782051 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03ea0:	00000000 	nop
bfc03ea4:	34080005 	li	t0,0x5
bfc03ea8:	34090002 	li	t1,0x2
bfc03eac:	71095002 	mul	t2,t0,t1
bfc03eb0:	2418000a 	li	t8,10
bfc03eb4:	1558204b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03eb8:	00000000 	nop
bfc03ebc:	34090002 	li	t1,0x2
bfc03ec0:	34080005 	li	t0,0x5
bfc03ec4:	71095002 	mul	t2,t0,t1
bfc03ec8:	2418000a 	li	t8,10
bfc03ecc:	15582045 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc03ed0:	00000000 	nop
bfc03ed4:	34090002 	li	t1,0x2
bfc03ed8:	34080005 	li	t0,0x5
bfc03edc:	340a8888 	li	t2,0x8888
bfc03ee0:	71095802 	mul	t3,t0,t1
bfc03ee4:	2418000a 	li	t8,10
bfc03ee8:	1578203e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03eec:	00000000 	nop
bfc03ef0:	34090002 	li	t1,0x2
bfc03ef4:	340c4444 	li	t4,0x4444
bfc03ef8:	34080005 	li	t0,0x5
bfc03efc:	340a8888 	li	t2,0x8888
bfc03f00:	71095802 	mul	t3,t0,t1
bfc03f04:	2418000a 	li	t8,10
bfc03f08:	15782036 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03f0c:	00000000 	nop
bfc03f10:	34080005 	li	t0,0x5
bfc03f14:	34090002 	li	t1,0x2
bfc03f18:	71095002 	mul	t2,t0,t1
bfc03f1c:	01405825 	move	t3,t2
bfc03f20:	2418000a 	li	t8,10
bfc03f24:	1578202f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03f28:	00000000 	nop
bfc03f2c:	34090002 	li	t1,0x2
bfc03f30:	34080005 	li	t0,0x5
bfc03f34:	71095002 	mul	t2,t0,t1
bfc03f38:	340c3333 	li	t4,0x3333
bfc03f3c:	01405825 	move	t3,t2
bfc03f40:	2418000a 	li	t8,10
bfc03f44:	15782027 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03f48:	00000000 	nop
bfc03f4c:	34090002 	li	t1,0x2
bfc03f50:	34080005 	li	t0,0x5
bfc03f54:	71095002 	mul	t2,t0,t1
bfc03f58:	340d4444 	li	t5,0x4444
bfc03f5c:	340c3333 	li	t4,0x3333
bfc03f60:	01405825 	move	t3,t2
bfc03f64:	2418000a 	li	t8,10
bfc03f68:	1578201e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03f6c:	00000000 	nop
bfc03f70:	34090002 	li	t1,0x2
bfc03f74:	34080005 	li	t0,0x5
bfc03f78:	71095002 	mul	t2,t0,t1
bfc03f7c:	340d4444 	li	t5,0x4444
bfc03f80:	340c3333 	li	t4,0x3333
bfc03f84:	340e2222 	li	t6,0x2222
bfc03f88:	01405825 	move	t3,t2
bfc03f8c:	2418000a 	li	t8,10
bfc03f90:	15782014 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03f94:	00000000 	nop
bfc03f98:	34080005 	li	t0,0x5
bfc03f9c:	34090002 	li	t1,0x2
bfc03fa0:	71095002 	mul	t2,t0,t1
bfc03fa4:	000a5825 	or	t3,zero,t2
bfc03fa8:	2418000a 	li	t8,10
bfc03fac:	1578200d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03fb0:	00000000 	nop
bfc03fb4:	34090002 	li	t1,0x2
bfc03fb8:	34080005 	li	t0,0x5
bfc03fbc:	71095002 	mul	t2,t0,t1
bfc03fc0:	340c3333 	li	t4,0x3333
bfc03fc4:	000a5825 	or	t3,zero,t2
bfc03fc8:	2418000a 	li	t8,10
bfc03fcc:	15782005 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03fd0:	00000000 	nop
bfc03fd4:	34090002 	li	t1,0x2
bfc03fd8:	34080005 	li	t0,0x5
bfc03fdc:	71095002 	mul	t2,t0,t1
bfc03fe0:	340d4444 	li	t5,0x4444
bfc03fe4:	340c3333 	li	t4,0x3333
bfc03fe8:	000a5825 	or	t3,zero,t2
bfc03fec:	2418000a 	li	t8,10
bfc03ff0:	15781ffc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc03ff4:	00000000 	nop
bfc03ff8:	34090002 	li	t1,0x2
bfc03ffc:	34080005 	li	t0,0x5
bfc04000:	71095002 	mul	t2,t0,t1
bfc04004:	340d4444 	li	t5,0x4444
bfc04008:	340c3333 	li	t4,0x3333
bfc0400c:	340e2222 	li	t6,0x2222
bfc04010:	000a5825 	or	t3,zero,t2
bfc04014:	2418000a 	li	t8,10
bfc04018:	15781ff2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0401c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:35
bfc04020:	34090002 	li	t1,0x2
bfc04024:	34080006 	li	t0,0x6
bfc04028:	71095002 	mul	t2,t0,t1
bfc0402c:	2418000c 	li	t8,12
bfc04030:	15581fec 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04034:	00000000 	nop
bfc04038:	34080006 	li	t0,0x6
bfc0403c:	34090002 	li	t1,0x2
bfc04040:	71095002 	mul	t2,t0,t1
bfc04044:	2418000c 	li	t8,12
bfc04048:	15581fe6 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0404c:	00000000 	nop
bfc04050:	34080006 	li	t0,0x6
bfc04054:	34090002 	li	t1,0x2
bfc04058:	340a8888 	li	t2,0x8888
bfc0405c:	71095802 	mul	t3,t0,t1
bfc04060:	2418000c 	li	t8,12
bfc04064:	15781fdf 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04068:	00000000 	nop
bfc0406c:	34080006 	li	t0,0x6
bfc04070:	340c4444 	li	t4,0x4444
bfc04074:	34090002 	li	t1,0x2
bfc04078:	340a8888 	li	t2,0x8888
bfc0407c:	71095802 	mul	t3,t0,t1
bfc04080:	2418000c 	li	t8,12
bfc04084:	15781fd7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04088:	00000000 	nop
bfc0408c:	34080006 	li	t0,0x6
bfc04090:	34090002 	li	t1,0x2
bfc04094:	71095002 	mul	t2,t0,t1
bfc04098:	2418000c 	li	t8,12
bfc0409c:	15581fd1 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc040a0:	00000000 	nop
bfc040a4:	34090002 	li	t1,0x2
bfc040a8:	34080006 	li	t0,0x6
bfc040ac:	71095002 	mul	t2,t0,t1
bfc040b0:	2418000c 	li	t8,12
bfc040b4:	15581fcb 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc040b8:	00000000 	nop
bfc040bc:	34090002 	li	t1,0x2
bfc040c0:	34080006 	li	t0,0x6
bfc040c4:	340a8888 	li	t2,0x8888
bfc040c8:	71095802 	mul	t3,t0,t1
bfc040cc:	2418000c 	li	t8,12
bfc040d0:	15781fc4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc040d4:	00000000 	nop
bfc040d8:	34090002 	li	t1,0x2
bfc040dc:	340c4444 	li	t4,0x4444
bfc040e0:	34080006 	li	t0,0x6
bfc040e4:	340a8888 	li	t2,0x8888
bfc040e8:	71095802 	mul	t3,t0,t1
bfc040ec:	2418000c 	li	t8,12
bfc040f0:	15781fbc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc040f4:	00000000 	nop
bfc040f8:	34080006 	li	t0,0x6
bfc040fc:	34090002 	li	t1,0x2
bfc04100:	71095002 	mul	t2,t0,t1
bfc04104:	01405825 	move	t3,t2
bfc04108:	2418000c 	li	t8,12
bfc0410c:	15781fb5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04110:	00000000 	nop
bfc04114:	34090002 	li	t1,0x2
bfc04118:	34080006 	li	t0,0x6
bfc0411c:	71095002 	mul	t2,t0,t1
bfc04120:	340c3333 	li	t4,0x3333
bfc04124:	01405825 	move	t3,t2
bfc04128:	2418000c 	li	t8,12
bfc0412c:	15781fad 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04130:	00000000 	nop
bfc04134:	34090002 	li	t1,0x2
bfc04138:	34080006 	li	t0,0x6
bfc0413c:	71095002 	mul	t2,t0,t1
bfc04140:	340d4444 	li	t5,0x4444
bfc04144:	340c3333 	li	t4,0x3333
bfc04148:	01405825 	move	t3,t2
bfc0414c:	2418000c 	li	t8,12
bfc04150:	15781fa4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04154:	00000000 	nop
bfc04158:	34090002 	li	t1,0x2
bfc0415c:	34080006 	li	t0,0x6
bfc04160:	71095002 	mul	t2,t0,t1
bfc04164:	340d4444 	li	t5,0x4444
bfc04168:	340c3333 	li	t4,0x3333
bfc0416c:	340e2222 	li	t6,0x2222
bfc04170:	01405825 	move	t3,t2
bfc04174:	2418000c 	li	t8,12
bfc04178:	15781f9a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0417c:	00000000 	nop
bfc04180:	34080006 	li	t0,0x6
bfc04184:	34090002 	li	t1,0x2
bfc04188:	71095002 	mul	t2,t0,t1
bfc0418c:	000a5825 	or	t3,zero,t2
bfc04190:	2418000c 	li	t8,12
bfc04194:	15781f93 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04198:	00000000 	nop
bfc0419c:	34090002 	li	t1,0x2
bfc041a0:	34080006 	li	t0,0x6
bfc041a4:	71095002 	mul	t2,t0,t1
bfc041a8:	340c3333 	li	t4,0x3333
bfc041ac:	000a5825 	or	t3,zero,t2
bfc041b0:	2418000c 	li	t8,12
bfc041b4:	15781f8b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc041b8:	00000000 	nop
bfc041bc:	34090002 	li	t1,0x2
bfc041c0:	34080006 	li	t0,0x6
bfc041c4:	71095002 	mul	t2,t0,t1
bfc041c8:	340d4444 	li	t5,0x4444
bfc041cc:	340c3333 	li	t4,0x3333
bfc041d0:	000a5825 	or	t3,zero,t2
bfc041d4:	2418000c 	li	t8,12
bfc041d8:	15781f82 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc041dc:	00000000 	nop
bfc041e0:	34090002 	li	t1,0x2
bfc041e4:	34080006 	li	t0,0x6
bfc041e8:	71095002 	mul	t2,t0,t1
bfc041ec:	340d4444 	li	t5,0x4444
bfc041f0:	340c3333 	li	t4,0x3333
bfc041f4:	340e2222 	li	t6,0x2222
bfc041f8:	000a5825 	or	t3,zero,t2
bfc041fc:	2418000c 	li	t8,12
bfc04200:	15781f78 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04204:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:36
bfc04208:	34090002 	li	t1,0x2
bfc0420c:	34080007 	li	t0,0x7
bfc04210:	71095002 	mul	t2,t0,t1
bfc04214:	2418000e 	li	t8,14
bfc04218:	15581f72 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0421c:	00000000 	nop
bfc04220:	34080007 	li	t0,0x7
bfc04224:	34090002 	li	t1,0x2
bfc04228:	71095002 	mul	t2,t0,t1
bfc0422c:	2418000e 	li	t8,14
bfc04230:	15581f6c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04234:	00000000 	nop
bfc04238:	34080007 	li	t0,0x7
bfc0423c:	34090002 	li	t1,0x2
bfc04240:	340a8888 	li	t2,0x8888
bfc04244:	71095802 	mul	t3,t0,t1
bfc04248:	2418000e 	li	t8,14
bfc0424c:	15781f65 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04250:	00000000 	nop
bfc04254:	34080007 	li	t0,0x7
bfc04258:	340c4444 	li	t4,0x4444
bfc0425c:	34090002 	li	t1,0x2
bfc04260:	340a8888 	li	t2,0x8888
bfc04264:	71095802 	mul	t3,t0,t1
bfc04268:	2418000e 	li	t8,14
bfc0426c:	15781f5d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04270:	00000000 	nop
bfc04274:	34080007 	li	t0,0x7
bfc04278:	34090002 	li	t1,0x2
bfc0427c:	71095002 	mul	t2,t0,t1
bfc04280:	2418000e 	li	t8,14
bfc04284:	15581f57 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04288:	00000000 	nop
bfc0428c:	34090002 	li	t1,0x2
bfc04290:	34080007 	li	t0,0x7
bfc04294:	71095002 	mul	t2,t0,t1
bfc04298:	2418000e 	li	t8,14
bfc0429c:	15581f51 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc042a0:	00000000 	nop
bfc042a4:	34090002 	li	t1,0x2
bfc042a8:	34080007 	li	t0,0x7
bfc042ac:	340a8888 	li	t2,0x8888
bfc042b0:	71095802 	mul	t3,t0,t1
bfc042b4:	2418000e 	li	t8,14
bfc042b8:	15781f4a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc042bc:	00000000 	nop
bfc042c0:	34090002 	li	t1,0x2
bfc042c4:	340c4444 	li	t4,0x4444
bfc042c8:	34080007 	li	t0,0x7
bfc042cc:	340a8888 	li	t2,0x8888
bfc042d0:	71095802 	mul	t3,t0,t1
bfc042d4:	2418000e 	li	t8,14
bfc042d8:	15781f42 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc042dc:	00000000 	nop
bfc042e0:	34080007 	li	t0,0x7
bfc042e4:	34090002 	li	t1,0x2
bfc042e8:	71095002 	mul	t2,t0,t1
bfc042ec:	01405825 	move	t3,t2
bfc042f0:	2418000e 	li	t8,14
bfc042f4:	15781f3b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc042f8:	00000000 	nop
bfc042fc:	34090002 	li	t1,0x2
bfc04300:	34080007 	li	t0,0x7
bfc04304:	71095002 	mul	t2,t0,t1
bfc04308:	340c3333 	li	t4,0x3333
bfc0430c:	01405825 	move	t3,t2
bfc04310:	2418000e 	li	t8,14
bfc04314:	15781f33 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04318:	00000000 	nop
bfc0431c:	34090002 	li	t1,0x2
bfc04320:	34080007 	li	t0,0x7
bfc04324:	71095002 	mul	t2,t0,t1
bfc04328:	340d4444 	li	t5,0x4444
bfc0432c:	340c3333 	li	t4,0x3333
bfc04330:	01405825 	move	t3,t2
bfc04334:	2418000e 	li	t8,14
bfc04338:	15781f2a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0433c:	00000000 	nop
bfc04340:	34090002 	li	t1,0x2
bfc04344:	34080007 	li	t0,0x7
bfc04348:	71095002 	mul	t2,t0,t1
bfc0434c:	340d4444 	li	t5,0x4444
bfc04350:	340c3333 	li	t4,0x3333
bfc04354:	340e2222 	li	t6,0x2222
bfc04358:	01405825 	move	t3,t2
bfc0435c:	2418000e 	li	t8,14
bfc04360:	15781f20 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04364:	00000000 	nop
bfc04368:	34080007 	li	t0,0x7
bfc0436c:	34090002 	li	t1,0x2
bfc04370:	71095002 	mul	t2,t0,t1
bfc04374:	000a5825 	or	t3,zero,t2
bfc04378:	2418000e 	li	t8,14
bfc0437c:	15781f19 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04380:	00000000 	nop
bfc04384:	34090002 	li	t1,0x2
bfc04388:	34080007 	li	t0,0x7
bfc0438c:	71095002 	mul	t2,t0,t1
bfc04390:	340c3333 	li	t4,0x3333
bfc04394:	000a5825 	or	t3,zero,t2
bfc04398:	2418000e 	li	t8,14
bfc0439c:	15781f11 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc043a0:	00000000 	nop
bfc043a4:	34090002 	li	t1,0x2
bfc043a8:	34080007 	li	t0,0x7
bfc043ac:	71095002 	mul	t2,t0,t1
bfc043b0:	340d4444 	li	t5,0x4444
bfc043b4:	340c3333 	li	t4,0x3333
bfc043b8:	000a5825 	or	t3,zero,t2
bfc043bc:	2418000e 	li	t8,14
bfc043c0:	15781f08 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc043c4:	00000000 	nop
bfc043c8:	34090002 	li	t1,0x2
bfc043cc:	34080007 	li	t0,0x7
bfc043d0:	71095002 	mul	t2,t0,t1
bfc043d4:	340d4444 	li	t5,0x4444
bfc043d8:	340c3333 	li	t4,0x3333
bfc043dc:	340e2222 	li	t6,0x2222
bfc043e0:	000a5825 	or	t3,zero,t2
bfc043e4:	2418000e 	li	t8,14
bfc043e8:	15781efe 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc043ec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:37
bfc043f0:	34090002 	li	t1,0x2
bfc043f4:	34080008 	li	t0,0x8
bfc043f8:	71095002 	mul	t2,t0,t1
bfc043fc:	24180010 	li	t8,16
bfc04400:	15581ef8 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04404:	00000000 	nop
bfc04408:	34080008 	li	t0,0x8
bfc0440c:	34090002 	li	t1,0x2
bfc04410:	71095002 	mul	t2,t0,t1
bfc04414:	24180010 	li	t8,16
bfc04418:	15581ef2 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0441c:	00000000 	nop
bfc04420:	34080008 	li	t0,0x8
bfc04424:	34090002 	li	t1,0x2
bfc04428:	340a8888 	li	t2,0x8888
bfc0442c:	71095802 	mul	t3,t0,t1
bfc04430:	24180010 	li	t8,16
bfc04434:	15781eeb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04438:	00000000 	nop
bfc0443c:	34080008 	li	t0,0x8
bfc04440:	340c4444 	li	t4,0x4444
bfc04444:	34090002 	li	t1,0x2
bfc04448:	340a8888 	li	t2,0x8888
bfc0444c:	71095802 	mul	t3,t0,t1
bfc04450:	24180010 	li	t8,16
bfc04454:	15781ee3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04458:	00000000 	nop
bfc0445c:	34080008 	li	t0,0x8
bfc04460:	34090002 	li	t1,0x2
bfc04464:	71095002 	mul	t2,t0,t1
bfc04468:	24180010 	li	t8,16
bfc0446c:	15581edd 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04470:	00000000 	nop
bfc04474:	34090002 	li	t1,0x2
bfc04478:	34080008 	li	t0,0x8
bfc0447c:	71095002 	mul	t2,t0,t1
bfc04480:	24180010 	li	t8,16
bfc04484:	15581ed7 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04488:	00000000 	nop
bfc0448c:	34090002 	li	t1,0x2
bfc04490:	34080008 	li	t0,0x8
bfc04494:	340a8888 	li	t2,0x8888
bfc04498:	71095802 	mul	t3,t0,t1
bfc0449c:	24180010 	li	t8,16
bfc044a0:	15781ed0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc044a4:	00000000 	nop
bfc044a8:	34090002 	li	t1,0x2
bfc044ac:	340c4444 	li	t4,0x4444
bfc044b0:	34080008 	li	t0,0x8
bfc044b4:	340a8888 	li	t2,0x8888
bfc044b8:	71095802 	mul	t3,t0,t1
bfc044bc:	24180010 	li	t8,16
bfc044c0:	15781ec8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc044c4:	00000000 	nop
bfc044c8:	34080008 	li	t0,0x8
bfc044cc:	34090002 	li	t1,0x2
bfc044d0:	71095002 	mul	t2,t0,t1
bfc044d4:	01405825 	move	t3,t2
bfc044d8:	24180010 	li	t8,16
bfc044dc:	15781ec1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc044e0:	00000000 	nop
bfc044e4:	34090002 	li	t1,0x2
bfc044e8:	34080008 	li	t0,0x8
bfc044ec:	71095002 	mul	t2,t0,t1
bfc044f0:	340c3333 	li	t4,0x3333
bfc044f4:	01405825 	move	t3,t2
bfc044f8:	24180010 	li	t8,16
bfc044fc:	15781eb9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04500:	00000000 	nop
bfc04504:	34090002 	li	t1,0x2
bfc04508:	34080008 	li	t0,0x8
bfc0450c:	71095002 	mul	t2,t0,t1
bfc04510:	340d4444 	li	t5,0x4444
bfc04514:	340c3333 	li	t4,0x3333
bfc04518:	01405825 	move	t3,t2
bfc0451c:	24180010 	li	t8,16
bfc04520:	15781eb0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04524:	00000000 	nop
bfc04528:	34090002 	li	t1,0x2
bfc0452c:	34080008 	li	t0,0x8
bfc04530:	71095002 	mul	t2,t0,t1
bfc04534:	340d4444 	li	t5,0x4444
bfc04538:	340c3333 	li	t4,0x3333
bfc0453c:	340e2222 	li	t6,0x2222
bfc04540:	01405825 	move	t3,t2
bfc04544:	24180010 	li	t8,16
bfc04548:	15781ea6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0454c:	00000000 	nop
bfc04550:	34080008 	li	t0,0x8
bfc04554:	34090002 	li	t1,0x2
bfc04558:	71095002 	mul	t2,t0,t1
bfc0455c:	000a5825 	or	t3,zero,t2
bfc04560:	24180010 	li	t8,16
bfc04564:	15781e9f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04568:	00000000 	nop
bfc0456c:	34090002 	li	t1,0x2
bfc04570:	34080008 	li	t0,0x8
bfc04574:	71095002 	mul	t2,t0,t1
bfc04578:	340c3333 	li	t4,0x3333
bfc0457c:	000a5825 	or	t3,zero,t2
bfc04580:	24180010 	li	t8,16
bfc04584:	15781e97 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04588:	00000000 	nop
bfc0458c:	34090002 	li	t1,0x2
bfc04590:	34080008 	li	t0,0x8
bfc04594:	71095002 	mul	t2,t0,t1
bfc04598:	340d4444 	li	t5,0x4444
bfc0459c:	340c3333 	li	t4,0x3333
bfc045a0:	000a5825 	or	t3,zero,t2
bfc045a4:	24180010 	li	t8,16
bfc045a8:	15781e8e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc045ac:	00000000 	nop
bfc045b0:	34090002 	li	t1,0x2
bfc045b4:	34080008 	li	t0,0x8
bfc045b8:	71095002 	mul	t2,t0,t1
bfc045bc:	340d4444 	li	t5,0x4444
bfc045c0:	340c3333 	li	t4,0x3333
bfc045c4:	340e2222 	li	t6,0x2222
bfc045c8:	000a5825 	or	t3,zero,t2
bfc045cc:	24180010 	li	t8,16
bfc045d0:	15781e84 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc045d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:38
bfc045d8:	34090002 	li	t1,0x2
bfc045dc:	34080009 	li	t0,0x9
bfc045e0:	71095002 	mul	t2,t0,t1
bfc045e4:	24180012 	li	t8,18
bfc045e8:	15581e7e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc045ec:	00000000 	nop
bfc045f0:	34080009 	li	t0,0x9
bfc045f4:	34090002 	li	t1,0x2
bfc045f8:	71095002 	mul	t2,t0,t1
bfc045fc:	24180012 	li	t8,18
bfc04600:	15581e78 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04604:	00000000 	nop
bfc04608:	34080009 	li	t0,0x9
bfc0460c:	34090002 	li	t1,0x2
bfc04610:	340a8888 	li	t2,0x8888
bfc04614:	71095802 	mul	t3,t0,t1
bfc04618:	24180012 	li	t8,18
bfc0461c:	15781e71 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04620:	00000000 	nop
bfc04624:	34080009 	li	t0,0x9
bfc04628:	340c4444 	li	t4,0x4444
bfc0462c:	34090002 	li	t1,0x2
bfc04630:	340a8888 	li	t2,0x8888
bfc04634:	71095802 	mul	t3,t0,t1
bfc04638:	24180012 	li	t8,18
bfc0463c:	15781e69 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04640:	00000000 	nop
bfc04644:	34080009 	li	t0,0x9
bfc04648:	34090002 	li	t1,0x2
bfc0464c:	71095002 	mul	t2,t0,t1
bfc04650:	24180012 	li	t8,18
bfc04654:	15581e63 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04658:	00000000 	nop
bfc0465c:	34090002 	li	t1,0x2
bfc04660:	34080009 	li	t0,0x9
bfc04664:	71095002 	mul	t2,t0,t1
bfc04668:	24180012 	li	t8,18
bfc0466c:	15581e5d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04670:	00000000 	nop
bfc04674:	34090002 	li	t1,0x2
bfc04678:	34080009 	li	t0,0x9
bfc0467c:	340a8888 	li	t2,0x8888
bfc04680:	71095802 	mul	t3,t0,t1
bfc04684:	24180012 	li	t8,18
bfc04688:	15781e56 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0468c:	00000000 	nop
bfc04690:	34090002 	li	t1,0x2
bfc04694:	340c4444 	li	t4,0x4444
bfc04698:	34080009 	li	t0,0x9
bfc0469c:	340a8888 	li	t2,0x8888
bfc046a0:	71095802 	mul	t3,t0,t1
bfc046a4:	24180012 	li	t8,18
bfc046a8:	15781e4e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc046ac:	00000000 	nop
bfc046b0:	34080009 	li	t0,0x9
bfc046b4:	34090002 	li	t1,0x2
bfc046b8:	71095002 	mul	t2,t0,t1
bfc046bc:	01405825 	move	t3,t2
bfc046c0:	24180012 	li	t8,18
bfc046c4:	15781e47 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc046c8:	00000000 	nop
bfc046cc:	34090002 	li	t1,0x2
bfc046d0:	34080009 	li	t0,0x9
bfc046d4:	71095002 	mul	t2,t0,t1
bfc046d8:	340c3333 	li	t4,0x3333
bfc046dc:	01405825 	move	t3,t2
bfc046e0:	24180012 	li	t8,18
bfc046e4:	15781e3f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc046e8:	00000000 	nop
bfc046ec:	34090002 	li	t1,0x2
bfc046f0:	34080009 	li	t0,0x9
bfc046f4:	71095002 	mul	t2,t0,t1
bfc046f8:	340d4444 	li	t5,0x4444
bfc046fc:	340c3333 	li	t4,0x3333
bfc04700:	01405825 	move	t3,t2
bfc04704:	24180012 	li	t8,18
bfc04708:	15781e36 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0470c:	00000000 	nop
bfc04710:	34090002 	li	t1,0x2
bfc04714:	34080009 	li	t0,0x9
bfc04718:	71095002 	mul	t2,t0,t1
bfc0471c:	340d4444 	li	t5,0x4444
bfc04720:	340c3333 	li	t4,0x3333
bfc04724:	340e2222 	li	t6,0x2222
bfc04728:	01405825 	move	t3,t2
bfc0472c:	24180012 	li	t8,18
bfc04730:	15781e2c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04734:	00000000 	nop
bfc04738:	34080009 	li	t0,0x9
bfc0473c:	34090002 	li	t1,0x2
bfc04740:	71095002 	mul	t2,t0,t1
bfc04744:	000a5825 	or	t3,zero,t2
bfc04748:	24180012 	li	t8,18
bfc0474c:	15781e25 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04750:	00000000 	nop
bfc04754:	34090002 	li	t1,0x2
bfc04758:	34080009 	li	t0,0x9
bfc0475c:	71095002 	mul	t2,t0,t1
bfc04760:	340c3333 	li	t4,0x3333
bfc04764:	000a5825 	or	t3,zero,t2
bfc04768:	24180012 	li	t8,18
bfc0476c:	15781e1d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04770:	00000000 	nop
bfc04774:	34090002 	li	t1,0x2
bfc04778:	34080009 	li	t0,0x9
bfc0477c:	71095002 	mul	t2,t0,t1
bfc04780:	340d4444 	li	t5,0x4444
bfc04784:	340c3333 	li	t4,0x3333
bfc04788:	000a5825 	or	t3,zero,t2
bfc0478c:	24180012 	li	t8,18
bfc04790:	15781e14 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04794:	00000000 	nop
bfc04798:	34090002 	li	t1,0x2
bfc0479c:	34080009 	li	t0,0x9
bfc047a0:	71095002 	mul	t2,t0,t1
bfc047a4:	340d4444 	li	t5,0x4444
bfc047a8:	340c3333 	li	t4,0x3333
bfc047ac:	340e2222 	li	t6,0x2222
bfc047b0:	000a5825 	or	t3,zero,t2
bfc047b4:	24180012 	li	t8,18
bfc047b8:	15781e0a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc047bc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:39
bfc047c0:	34090003 	li	t1,0x3
bfc047c4:	34080001 	li	t0,0x1
bfc047c8:	71095002 	mul	t2,t0,t1
bfc047cc:	24180003 	li	t8,3
bfc047d0:	15581e04 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc047d4:	00000000 	nop
bfc047d8:	34080001 	li	t0,0x1
bfc047dc:	34090003 	li	t1,0x3
bfc047e0:	71095002 	mul	t2,t0,t1
bfc047e4:	24180003 	li	t8,3
bfc047e8:	15581dfe 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc047ec:	00000000 	nop
bfc047f0:	34080001 	li	t0,0x1
bfc047f4:	34090003 	li	t1,0x3
bfc047f8:	340a8888 	li	t2,0x8888
bfc047fc:	71095802 	mul	t3,t0,t1
bfc04800:	24180003 	li	t8,3
bfc04804:	15781df7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04808:	00000000 	nop
bfc0480c:	34080001 	li	t0,0x1
bfc04810:	340c4444 	li	t4,0x4444
bfc04814:	34090003 	li	t1,0x3
bfc04818:	340a8888 	li	t2,0x8888
bfc0481c:	71095802 	mul	t3,t0,t1
bfc04820:	24180003 	li	t8,3
bfc04824:	15781def 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04828:	00000000 	nop
bfc0482c:	34080001 	li	t0,0x1
bfc04830:	34090003 	li	t1,0x3
bfc04834:	71095002 	mul	t2,t0,t1
bfc04838:	24180003 	li	t8,3
bfc0483c:	15581de9 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04840:	00000000 	nop
bfc04844:	34090003 	li	t1,0x3
bfc04848:	34080001 	li	t0,0x1
bfc0484c:	71095002 	mul	t2,t0,t1
bfc04850:	24180003 	li	t8,3
bfc04854:	15581de3 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04858:	00000000 	nop
bfc0485c:	34090003 	li	t1,0x3
bfc04860:	34080001 	li	t0,0x1
bfc04864:	340a8888 	li	t2,0x8888
bfc04868:	71095802 	mul	t3,t0,t1
bfc0486c:	24180003 	li	t8,3
bfc04870:	15781ddc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04874:	00000000 	nop
bfc04878:	34090003 	li	t1,0x3
bfc0487c:	340c4444 	li	t4,0x4444
bfc04880:	34080001 	li	t0,0x1
bfc04884:	340a8888 	li	t2,0x8888
bfc04888:	71095802 	mul	t3,t0,t1
bfc0488c:	24180003 	li	t8,3
bfc04890:	15781dd4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04894:	00000000 	nop
bfc04898:	34080001 	li	t0,0x1
bfc0489c:	34090003 	li	t1,0x3
bfc048a0:	71095002 	mul	t2,t0,t1
bfc048a4:	01405825 	move	t3,t2
bfc048a8:	24180003 	li	t8,3
bfc048ac:	15781dcd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc048b0:	00000000 	nop
bfc048b4:	34090003 	li	t1,0x3
bfc048b8:	34080001 	li	t0,0x1
bfc048bc:	71095002 	mul	t2,t0,t1
bfc048c0:	340c3333 	li	t4,0x3333
bfc048c4:	01405825 	move	t3,t2
bfc048c8:	24180003 	li	t8,3
bfc048cc:	15781dc5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc048d0:	00000000 	nop
bfc048d4:	34090003 	li	t1,0x3
bfc048d8:	34080001 	li	t0,0x1
bfc048dc:	71095002 	mul	t2,t0,t1
bfc048e0:	340d4444 	li	t5,0x4444
bfc048e4:	340c3333 	li	t4,0x3333
bfc048e8:	01405825 	move	t3,t2
bfc048ec:	24180003 	li	t8,3
bfc048f0:	15781dbc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc048f4:	00000000 	nop
bfc048f8:	34090003 	li	t1,0x3
bfc048fc:	34080001 	li	t0,0x1
bfc04900:	71095002 	mul	t2,t0,t1
bfc04904:	340d4444 	li	t5,0x4444
bfc04908:	340c3333 	li	t4,0x3333
bfc0490c:	340e2222 	li	t6,0x2222
bfc04910:	01405825 	move	t3,t2
bfc04914:	24180003 	li	t8,3
bfc04918:	15781db2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0491c:	00000000 	nop
bfc04920:	34080001 	li	t0,0x1
bfc04924:	34090003 	li	t1,0x3
bfc04928:	71095002 	mul	t2,t0,t1
bfc0492c:	000a5825 	or	t3,zero,t2
bfc04930:	24180003 	li	t8,3
bfc04934:	15781dab 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04938:	00000000 	nop
bfc0493c:	34090003 	li	t1,0x3
bfc04940:	34080001 	li	t0,0x1
bfc04944:	71095002 	mul	t2,t0,t1
bfc04948:	340c3333 	li	t4,0x3333
bfc0494c:	000a5825 	or	t3,zero,t2
bfc04950:	24180003 	li	t8,3
bfc04954:	15781da3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04958:	00000000 	nop
bfc0495c:	34090003 	li	t1,0x3
bfc04960:	34080001 	li	t0,0x1
bfc04964:	71095002 	mul	t2,t0,t1
bfc04968:	340d4444 	li	t5,0x4444
bfc0496c:	340c3333 	li	t4,0x3333
bfc04970:	000a5825 	or	t3,zero,t2
bfc04974:	24180003 	li	t8,3
bfc04978:	15781d9a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0497c:	00000000 	nop
bfc04980:	34090003 	li	t1,0x3
bfc04984:	34080001 	li	t0,0x1
bfc04988:	71095002 	mul	t2,t0,t1
bfc0498c:	340d4444 	li	t5,0x4444
bfc04990:	340c3333 	li	t4,0x3333
bfc04994:	340e2222 	li	t6,0x2222
bfc04998:	000a5825 	or	t3,zero,t2
bfc0499c:	24180003 	li	t8,3
bfc049a0:	15781d90 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc049a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:40
bfc049a8:	34090003 	li	t1,0x3
bfc049ac:	34080002 	li	t0,0x2
bfc049b0:	71095002 	mul	t2,t0,t1
bfc049b4:	24180006 	li	t8,6
bfc049b8:	15581d8a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc049bc:	00000000 	nop
bfc049c0:	34080002 	li	t0,0x2
bfc049c4:	34090003 	li	t1,0x3
bfc049c8:	71095002 	mul	t2,t0,t1
bfc049cc:	24180006 	li	t8,6
bfc049d0:	15581d84 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc049d4:	00000000 	nop
bfc049d8:	34080002 	li	t0,0x2
bfc049dc:	34090003 	li	t1,0x3
bfc049e0:	340a8888 	li	t2,0x8888
bfc049e4:	71095802 	mul	t3,t0,t1
bfc049e8:	24180006 	li	t8,6
bfc049ec:	15781d7d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc049f0:	00000000 	nop
bfc049f4:	34080002 	li	t0,0x2
bfc049f8:	340c4444 	li	t4,0x4444
bfc049fc:	34090003 	li	t1,0x3
bfc04a00:	340a8888 	li	t2,0x8888
bfc04a04:	71095802 	mul	t3,t0,t1
bfc04a08:	24180006 	li	t8,6
bfc04a0c:	15781d75 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04a10:	00000000 	nop
bfc04a14:	34080002 	li	t0,0x2
bfc04a18:	34090003 	li	t1,0x3
bfc04a1c:	71095002 	mul	t2,t0,t1
bfc04a20:	24180006 	li	t8,6
bfc04a24:	15581d6f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04a28:	00000000 	nop
bfc04a2c:	34090003 	li	t1,0x3
bfc04a30:	34080002 	li	t0,0x2
bfc04a34:	71095002 	mul	t2,t0,t1
bfc04a38:	24180006 	li	t8,6
bfc04a3c:	15581d69 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04a40:	00000000 	nop
bfc04a44:	34090003 	li	t1,0x3
bfc04a48:	34080002 	li	t0,0x2
bfc04a4c:	340a8888 	li	t2,0x8888
bfc04a50:	71095802 	mul	t3,t0,t1
bfc04a54:	24180006 	li	t8,6
bfc04a58:	15781d62 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04a5c:	00000000 	nop
bfc04a60:	34090003 	li	t1,0x3
bfc04a64:	340c4444 	li	t4,0x4444
bfc04a68:	34080002 	li	t0,0x2
bfc04a6c:	340a8888 	li	t2,0x8888
bfc04a70:	71095802 	mul	t3,t0,t1
bfc04a74:	24180006 	li	t8,6
bfc04a78:	15781d5a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04a7c:	00000000 	nop
bfc04a80:	34080002 	li	t0,0x2
bfc04a84:	34090003 	li	t1,0x3
bfc04a88:	71095002 	mul	t2,t0,t1
bfc04a8c:	01405825 	move	t3,t2
bfc04a90:	24180006 	li	t8,6
bfc04a94:	15781d53 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04a98:	00000000 	nop
bfc04a9c:	34090003 	li	t1,0x3
bfc04aa0:	34080002 	li	t0,0x2
bfc04aa4:	71095002 	mul	t2,t0,t1
bfc04aa8:	340c3333 	li	t4,0x3333
bfc04aac:	01405825 	move	t3,t2
bfc04ab0:	24180006 	li	t8,6
bfc04ab4:	15781d4b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04ab8:	00000000 	nop
bfc04abc:	34090003 	li	t1,0x3
bfc04ac0:	34080002 	li	t0,0x2
bfc04ac4:	71095002 	mul	t2,t0,t1
bfc04ac8:	340d4444 	li	t5,0x4444
bfc04acc:	340c3333 	li	t4,0x3333
bfc04ad0:	01405825 	move	t3,t2
bfc04ad4:	24180006 	li	t8,6
bfc04ad8:	15781d42 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04adc:	00000000 	nop
bfc04ae0:	34090003 	li	t1,0x3
bfc04ae4:	34080002 	li	t0,0x2
bfc04ae8:	71095002 	mul	t2,t0,t1
bfc04aec:	340d4444 	li	t5,0x4444
bfc04af0:	340c3333 	li	t4,0x3333
bfc04af4:	340e2222 	li	t6,0x2222
bfc04af8:	01405825 	move	t3,t2
bfc04afc:	24180006 	li	t8,6
bfc04b00:	15781d38 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04b04:	00000000 	nop
bfc04b08:	34080002 	li	t0,0x2
bfc04b0c:	34090003 	li	t1,0x3
bfc04b10:	71095002 	mul	t2,t0,t1
bfc04b14:	000a5825 	or	t3,zero,t2
bfc04b18:	24180006 	li	t8,6
bfc04b1c:	15781d31 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04b20:	00000000 	nop
bfc04b24:	34090003 	li	t1,0x3
bfc04b28:	34080002 	li	t0,0x2
bfc04b2c:	71095002 	mul	t2,t0,t1
bfc04b30:	340c3333 	li	t4,0x3333
bfc04b34:	000a5825 	or	t3,zero,t2
bfc04b38:	24180006 	li	t8,6
bfc04b3c:	15781d29 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04b40:	00000000 	nop
bfc04b44:	34090003 	li	t1,0x3
bfc04b48:	34080002 	li	t0,0x2
bfc04b4c:	71095002 	mul	t2,t0,t1
bfc04b50:	340d4444 	li	t5,0x4444
bfc04b54:	340c3333 	li	t4,0x3333
bfc04b58:	000a5825 	or	t3,zero,t2
bfc04b5c:	24180006 	li	t8,6
bfc04b60:	15781d20 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04b64:	00000000 	nop
bfc04b68:	34090003 	li	t1,0x3
bfc04b6c:	34080002 	li	t0,0x2
bfc04b70:	71095002 	mul	t2,t0,t1
bfc04b74:	340d4444 	li	t5,0x4444
bfc04b78:	340c3333 	li	t4,0x3333
bfc04b7c:	340e2222 	li	t6,0x2222
bfc04b80:	000a5825 	or	t3,zero,t2
bfc04b84:	24180006 	li	t8,6
bfc04b88:	15781d16 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04b8c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:41
bfc04b90:	34090003 	li	t1,0x3
bfc04b94:	34080003 	li	t0,0x3
bfc04b98:	71095002 	mul	t2,t0,t1
bfc04b9c:	24180009 	li	t8,9
bfc04ba0:	15581d10 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04ba4:	00000000 	nop
bfc04ba8:	34080003 	li	t0,0x3
bfc04bac:	34090003 	li	t1,0x3
bfc04bb0:	71095002 	mul	t2,t0,t1
bfc04bb4:	24180009 	li	t8,9
bfc04bb8:	15581d0a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04bbc:	00000000 	nop
bfc04bc0:	34080003 	li	t0,0x3
bfc04bc4:	34090003 	li	t1,0x3
bfc04bc8:	340a8888 	li	t2,0x8888
bfc04bcc:	71095802 	mul	t3,t0,t1
bfc04bd0:	24180009 	li	t8,9
bfc04bd4:	15781d03 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04bd8:	00000000 	nop
bfc04bdc:	34080003 	li	t0,0x3
bfc04be0:	340c4444 	li	t4,0x4444
bfc04be4:	34090003 	li	t1,0x3
bfc04be8:	340a8888 	li	t2,0x8888
bfc04bec:	71095802 	mul	t3,t0,t1
bfc04bf0:	24180009 	li	t8,9
bfc04bf4:	15781cfb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04bf8:	00000000 	nop
bfc04bfc:	34080003 	li	t0,0x3
bfc04c00:	34090003 	li	t1,0x3
bfc04c04:	71095002 	mul	t2,t0,t1
bfc04c08:	24180009 	li	t8,9
bfc04c0c:	15581cf5 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04c10:	00000000 	nop
bfc04c14:	34090003 	li	t1,0x3
bfc04c18:	34080003 	li	t0,0x3
bfc04c1c:	71095002 	mul	t2,t0,t1
bfc04c20:	24180009 	li	t8,9
bfc04c24:	15581cef 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04c28:	00000000 	nop
bfc04c2c:	34090003 	li	t1,0x3
bfc04c30:	34080003 	li	t0,0x3
bfc04c34:	340a8888 	li	t2,0x8888
bfc04c38:	71095802 	mul	t3,t0,t1
bfc04c3c:	24180009 	li	t8,9
bfc04c40:	15781ce8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04c44:	00000000 	nop
bfc04c48:	34090003 	li	t1,0x3
bfc04c4c:	340c4444 	li	t4,0x4444
bfc04c50:	34080003 	li	t0,0x3
bfc04c54:	340a8888 	li	t2,0x8888
bfc04c58:	71095802 	mul	t3,t0,t1
bfc04c5c:	24180009 	li	t8,9
bfc04c60:	15781ce0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04c64:	00000000 	nop
bfc04c68:	34080003 	li	t0,0x3
bfc04c6c:	34090003 	li	t1,0x3
bfc04c70:	71095002 	mul	t2,t0,t1
bfc04c74:	01405825 	move	t3,t2
bfc04c78:	24180009 	li	t8,9
bfc04c7c:	15781cd9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04c80:	00000000 	nop
bfc04c84:	34090003 	li	t1,0x3
bfc04c88:	34080003 	li	t0,0x3
bfc04c8c:	71095002 	mul	t2,t0,t1
bfc04c90:	340c3333 	li	t4,0x3333
bfc04c94:	01405825 	move	t3,t2
bfc04c98:	24180009 	li	t8,9
bfc04c9c:	15781cd1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04ca0:	00000000 	nop
bfc04ca4:	34090003 	li	t1,0x3
bfc04ca8:	34080003 	li	t0,0x3
bfc04cac:	71095002 	mul	t2,t0,t1
bfc04cb0:	340d4444 	li	t5,0x4444
bfc04cb4:	340c3333 	li	t4,0x3333
bfc04cb8:	01405825 	move	t3,t2
bfc04cbc:	24180009 	li	t8,9
bfc04cc0:	15781cc8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04cc4:	00000000 	nop
bfc04cc8:	34090003 	li	t1,0x3
bfc04ccc:	34080003 	li	t0,0x3
bfc04cd0:	71095002 	mul	t2,t0,t1
bfc04cd4:	340d4444 	li	t5,0x4444
bfc04cd8:	340c3333 	li	t4,0x3333
bfc04cdc:	340e2222 	li	t6,0x2222
bfc04ce0:	01405825 	move	t3,t2
bfc04ce4:	24180009 	li	t8,9
bfc04ce8:	15781cbe 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04cec:	00000000 	nop
bfc04cf0:	34080003 	li	t0,0x3
bfc04cf4:	34090003 	li	t1,0x3
bfc04cf8:	71095002 	mul	t2,t0,t1
bfc04cfc:	000a5825 	or	t3,zero,t2
bfc04d00:	24180009 	li	t8,9
bfc04d04:	15781cb7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04d08:	00000000 	nop
bfc04d0c:	34090003 	li	t1,0x3
bfc04d10:	34080003 	li	t0,0x3
bfc04d14:	71095002 	mul	t2,t0,t1
bfc04d18:	340c3333 	li	t4,0x3333
bfc04d1c:	000a5825 	or	t3,zero,t2
bfc04d20:	24180009 	li	t8,9
bfc04d24:	15781caf 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04d28:	00000000 	nop
bfc04d2c:	34090003 	li	t1,0x3
bfc04d30:	34080003 	li	t0,0x3
bfc04d34:	71095002 	mul	t2,t0,t1
bfc04d38:	340d4444 	li	t5,0x4444
bfc04d3c:	340c3333 	li	t4,0x3333
bfc04d40:	000a5825 	or	t3,zero,t2
bfc04d44:	24180009 	li	t8,9
bfc04d48:	15781ca6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04d4c:	00000000 	nop
bfc04d50:	34090003 	li	t1,0x3
bfc04d54:	34080003 	li	t0,0x3
bfc04d58:	71095002 	mul	t2,t0,t1
bfc04d5c:	340d4444 	li	t5,0x4444
bfc04d60:	340c3333 	li	t4,0x3333
bfc04d64:	340e2222 	li	t6,0x2222
bfc04d68:	000a5825 	or	t3,zero,t2
bfc04d6c:	24180009 	li	t8,9
bfc04d70:	15781c9c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04d74:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:42
bfc04d78:	34090003 	li	t1,0x3
bfc04d7c:	34080004 	li	t0,0x4
bfc04d80:	71095002 	mul	t2,t0,t1
bfc04d84:	2418000c 	li	t8,12
bfc04d88:	15581c96 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04d8c:	00000000 	nop
bfc04d90:	34080004 	li	t0,0x4
bfc04d94:	34090003 	li	t1,0x3
bfc04d98:	71095002 	mul	t2,t0,t1
bfc04d9c:	2418000c 	li	t8,12
bfc04da0:	15581c90 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04da4:	00000000 	nop
bfc04da8:	34080004 	li	t0,0x4
bfc04dac:	34090003 	li	t1,0x3
bfc04db0:	340a8888 	li	t2,0x8888
bfc04db4:	71095802 	mul	t3,t0,t1
bfc04db8:	2418000c 	li	t8,12
bfc04dbc:	15781c89 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04dc0:	00000000 	nop
bfc04dc4:	34080004 	li	t0,0x4
bfc04dc8:	340c4444 	li	t4,0x4444
bfc04dcc:	34090003 	li	t1,0x3
bfc04dd0:	340a8888 	li	t2,0x8888
bfc04dd4:	71095802 	mul	t3,t0,t1
bfc04dd8:	2418000c 	li	t8,12
bfc04ddc:	15781c81 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04de0:	00000000 	nop
bfc04de4:	34080004 	li	t0,0x4
bfc04de8:	34090003 	li	t1,0x3
bfc04dec:	71095002 	mul	t2,t0,t1
bfc04df0:	2418000c 	li	t8,12
bfc04df4:	15581c7b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04df8:	00000000 	nop
bfc04dfc:	34090003 	li	t1,0x3
bfc04e00:	34080004 	li	t0,0x4
bfc04e04:	71095002 	mul	t2,t0,t1
bfc04e08:	2418000c 	li	t8,12
bfc04e0c:	15581c75 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04e10:	00000000 	nop
bfc04e14:	34090003 	li	t1,0x3
bfc04e18:	34080004 	li	t0,0x4
bfc04e1c:	340a8888 	li	t2,0x8888
bfc04e20:	71095802 	mul	t3,t0,t1
bfc04e24:	2418000c 	li	t8,12
bfc04e28:	15781c6e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04e2c:	00000000 	nop
bfc04e30:	34090003 	li	t1,0x3
bfc04e34:	340c4444 	li	t4,0x4444
bfc04e38:	34080004 	li	t0,0x4
bfc04e3c:	340a8888 	li	t2,0x8888
bfc04e40:	71095802 	mul	t3,t0,t1
bfc04e44:	2418000c 	li	t8,12
bfc04e48:	15781c66 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04e4c:	00000000 	nop
bfc04e50:	34080004 	li	t0,0x4
bfc04e54:	34090003 	li	t1,0x3
bfc04e58:	71095002 	mul	t2,t0,t1
bfc04e5c:	01405825 	move	t3,t2
bfc04e60:	2418000c 	li	t8,12
bfc04e64:	15781c5f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04e68:	00000000 	nop
bfc04e6c:	34090003 	li	t1,0x3
bfc04e70:	34080004 	li	t0,0x4
bfc04e74:	71095002 	mul	t2,t0,t1
bfc04e78:	340c3333 	li	t4,0x3333
bfc04e7c:	01405825 	move	t3,t2
bfc04e80:	2418000c 	li	t8,12
bfc04e84:	15781c57 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04e88:	00000000 	nop
bfc04e8c:	34090003 	li	t1,0x3
bfc04e90:	34080004 	li	t0,0x4
bfc04e94:	71095002 	mul	t2,t0,t1
bfc04e98:	340d4444 	li	t5,0x4444
bfc04e9c:	340c3333 	li	t4,0x3333
bfc04ea0:	01405825 	move	t3,t2
bfc04ea4:	2418000c 	li	t8,12
bfc04ea8:	15781c4e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04eac:	00000000 	nop
bfc04eb0:	34090003 	li	t1,0x3
bfc04eb4:	34080004 	li	t0,0x4
bfc04eb8:	71095002 	mul	t2,t0,t1
bfc04ebc:	340d4444 	li	t5,0x4444
bfc04ec0:	340c3333 	li	t4,0x3333
bfc04ec4:	340e2222 	li	t6,0x2222
bfc04ec8:	01405825 	move	t3,t2
bfc04ecc:	2418000c 	li	t8,12
bfc04ed0:	15781c44 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04ed4:	00000000 	nop
bfc04ed8:	34080004 	li	t0,0x4
bfc04edc:	34090003 	li	t1,0x3
bfc04ee0:	71095002 	mul	t2,t0,t1
bfc04ee4:	000a5825 	or	t3,zero,t2
bfc04ee8:	2418000c 	li	t8,12
bfc04eec:	15781c3d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04ef0:	00000000 	nop
bfc04ef4:	34090003 	li	t1,0x3
bfc04ef8:	34080004 	li	t0,0x4
bfc04efc:	71095002 	mul	t2,t0,t1
bfc04f00:	340c3333 	li	t4,0x3333
bfc04f04:	000a5825 	or	t3,zero,t2
bfc04f08:	2418000c 	li	t8,12
bfc04f0c:	15781c35 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04f10:	00000000 	nop
bfc04f14:	34090003 	li	t1,0x3
bfc04f18:	34080004 	li	t0,0x4
bfc04f1c:	71095002 	mul	t2,t0,t1
bfc04f20:	340d4444 	li	t5,0x4444
bfc04f24:	340c3333 	li	t4,0x3333
bfc04f28:	000a5825 	or	t3,zero,t2
bfc04f2c:	2418000c 	li	t8,12
bfc04f30:	15781c2c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04f34:	00000000 	nop
bfc04f38:	34090003 	li	t1,0x3
bfc04f3c:	34080004 	li	t0,0x4
bfc04f40:	71095002 	mul	t2,t0,t1
bfc04f44:	340d4444 	li	t5,0x4444
bfc04f48:	340c3333 	li	t4,0x3333
bfc04f4c:	340e2222 	li	t6,0x2222
bfc04f50:	000a5825 	or	t3,zero,t2
bfc04f54:	2418000c 	li	t8,12
bfc04f58:	15781c22 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04f5c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:43
bfc04f60:	34090003 	li	t1,0x3
bfc04f64:	34080005 	li	t0,0x5
bfc04f68:	71095002 	mul	t2,t0,t1
bfc04f6c:	2418000f 	li	t8,15
bfc04f70:	15581c1c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04f74:	00000000 	nop
bfc04f78:	34080005 	li	t0,0x5
bfc04f7c:	34090003 	li	t1,0x3
bfc04f80:	71095002 	mul	t2,t0,t1
bfc04f84:	2418000f 	li	t8,15
bfc04f88:	15581c16 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04f8c:	00000000 	nop
bfc04f90:	34080005 	li	t0,0x5
bfc04f94:	34090003 	li	t1,0x3
bfc04f98:	340a8888 	li	t2,0x8888
bfc04f9c:	71095802 	mul	t3,t0,t1
bfc04fa0:	2418000f 	li	t8,15
bfc04fa4:	15781c0f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04fa8:	00000000 	nop
bfc04fac:	34080005 	li	t0,0x5
bfc04fb0:	340c4444 	li	t4,0x4444
bfc04fb4:	34090003 	li	t1,0x3
bfc04fb8:	340a8888 	li	t2,0x8888
bfc04fbc:	71095802 	mul	t3,t0,t1
bfc04fc0:	2418000f 	li	t8,15
bfc04fc4:	15781c07 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc04fc8:	00000000 	nop
bfc04fcc:	34080005 	li	t0,0x5
bfc04fd0:	34090003 	li	t1,0x3
bfc04fd4:	71095002 	mul	t2,t0,t1
bfc04fd8:	2418000f 	li	t8,15
bfc04fdc:	15581c01 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04fe0:	00000000 	nop
bfc04fe4:	34090003 	li	t1,0x3
bfc04fe8:	34080005 	li	t0,0x5
bfc04fec:	71095002 	mul	t2,t0,t1
bfc04ff0:	2418000f 	li	t8,15
bfc04ff4:	15581bfb 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc04ff8:	00000000 	nop
bfc04ffc:	34090003 	li	t1,0x3
bfc05000:	34080005 	li	t0,0x5
bfc05004:	340a8888 	li	t2,0x8888
bfc05008:	71095802 	mul	t3,t0,t1
bfc0500c:	2418000f 	li	t8,15
bfc05010:	15781bf4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05014:	00000000 	nop
bfc05018:	34090003 	li	t1,0x3
bfc0501c:	340c4444 	li	t4,0x4444
bfc05020:	34080005 	li	t0,0x5
bfc05024:	340a8888 	li	t2,0x8888
bfc05028:	71095802 	mul	t3,t0,t1
bfc0502c:	2418000f 	li	t8,15
bfc05030:	15781bec 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05034:	00000000 	nop
bfc05038:	34080005 	li	t0,0x5
bfc0503c:	34090003 	li	t1,0x3
bfc05040:	71095002 	mul	t2,t0,t1
bfc05044:	01405825 	move	t3,t2
bfc05048:	2418000f 	li	t8,15
bfc0504c:	15781be5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05050:	00000000 	nop
bfc05054:	34090003 	li	t1,0x3
bfc05058:	34080005 	li	t0,0x5
bfc0505c:	71095002 	mul	t2,t0,t1
bfc05060:	340c3333 	li	t4,0x3333
bfc05064:	01405825 	move	t3,t2
bfc05068:	2418000f 	li	t8,15
bfc0506c:	15781bdd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05070:	00000000 	nop
bfc05074:	34090003 	li	t1,0x3
bfc05078:	34080005 	li	t0,0x5
bfc0507c:	71095002 	mul	t2,t0,t1
bfc05080:	340d4444 	li	t5,0x4444
bfc05084:	340c3333 	li	t4,0x3333
bfc05088:	01405825 	move	t3,t2
bfc0508c:	2418000f 	li	t8,15
bfc05090:	15781bd4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05094:	00000000 	nop
bfc05098:	34090003 	li	t1,0x3
bfc0509c:	34080005 	li	t0,0x5
bfc050a0:	71095002 	mul	t2,t0,t1
bfc050a4:	340d4444 	li	t5,0x4444
bfc050a8:	340c3333 	li	t4,0x3333
bfc050ac:	340e2222 	li	t6,0x2222
bfc050b0:	01405825 	move	t3,t2
bfc050b4:	2418000f 	li	t8,15
bfc050b8:	15781bca 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc050bc:	00000000 	nop
bfc050c0:	34080005 	li	t0,0x5
bfc050c4:	34090003 	li	t1,0x3
bfc050c8:	71095002 	mul	t2,t0,t1
bfc050cc:	000a5825 	or	t3,zero,t2
bfc050d0:	2418000f 	li	t8,15
bfc050d4:	15781bc3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc050d8:	00000000 	nop
bfc050dc:	34090003 	li	t1,0x3
bfc050e0:	34080005 	li	t0,0x5
bfc050e4:	71095002 	mul	t2,t0,t1
bfc050e8:	340c3333 	li	t4,0x3333
bfc050ec:	000a5825 	or	t3,zero,t2
bfc050f0:	2418000f 	li	t8,15
bfc050f4:	15781bbb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc050f8:	00000000 	nop
bfc050fc:	34090003 	li	t1,0x3
bfc05100:	34080005 	li	t0,0x5
bfc05104:	71095002 	mul	t2,t0,t1
bfc05108:	340d4444 	li	t5,0x4444
bfc0510c:	340c3333 	li	t4,0x3333
bfc05110:	000a5825 	or	t3,zero,t2
bfc05114:	2418000f 	li	t8,15
bfc05118:	15781bb2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0511c:	00000000 	nop
bfc05120:	34090003 	li	t1,0x3
bfc05124:	34080005 	li	t0,0x5
bfc05128:	71095002 	mul	t2,t0,t1
bfc0512c:	340d4444 	li	t5,0x4444
bfc05130:	340c3333 	li	t4,0x3333
bfc05134:	340e2222 	li	t6,0x2222
bfc05138:	000a5825 	or	t3,zero,t2
bfc0513c:	2418000f 	li	t8,15
bfc05140:	15781ba8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05144:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:44
bfc05148:	34090003 	li	t1,0x3
bfc0514c:	34080006 	li	t0,0x6
bfc05150:	71095002 	mul	t2,t0,t1
bfc05154:	24180012 	li	t8,18
bfc05158:	15581ba2 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0515c:	00000000 	nop
bfc05160:	34080006 	li	t0,0x6
bfc05164:	34090003 	li	t1,0x3
bfc05168:	71095002 	mul	t2,t0,t1
bfc0516c:	24180012 	li	t8,18
bfc05170:	15581b9c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05174:	00000000 	nop
bfc05178:	34080006 	li	t0,0x6
bfc0517c:	34090003 	li	t1,0x3
bfc05180:	340a8888 	li	t2,0x8888
bfc05184:	71095802 	mul	t3,t0,t1
bfc05188:	24180012 	li	t8,18
bfc0518c:	15781b95 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05190:	00000000 	nop
bfc05194:	34080006 	li	t0,0x6
bfc05198:	340c4444 	li	t4,0x4444
bfc0519c:	34090003 	li	t1,0x3
bfc051a0:	340a8888 	li	t2,0x8888
bfc051a4:	71095802 	mul	t3,t0,t1
bfc051a8:	24180012 	li	t8,18
bfc051ac:	15781b8d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc051b0:	00000000 	nop
bfc051b4:	34080006 	li	t0,0x6
bfc051b8:	34090003 	li	t1,0x3
bfc051bc:	71095002 	mul	t2,t0,t1
bfc051c0:	24180012 	li	t8,18
bfc051c4:	15581b87 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc051c8:	00000000 	nop
bfc051cc:	34090003 	li	t1,0x3
bfc051d0:	34080006 	li	t0,0x6
bfc051d4:	71095002 	mul	t2,t0,t1
bfc051d8:	24180012 	li	t8,18
bfc051dc:	15581b81 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc051e0:	00000000 	nop
bfc051e4:	34090003 	li	t1,0x3
bfc051e8:	34080006 	li	t0,0x6
bfc051ec:	340a8888 	li	t2,0x8888
bfc051f0:	71095802 	mul	t3,t0,t1
bfc051f4:	24180012 	li	t8,18
bfc051f8:	15781b7a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc051fc:	00000000 	nop
bfc05200:	34090003 	li	t1,0x3
bfc05204:	340c4444 	li	t4,0x4444
bfc05208:	34080006 	li	t0,0x6
bfc0520c:	340a8888 	li	t2,0x8888
bfc05210:	71095802 	mul	t3,t0,t1
bfc05214:	24180012 	li	t8,18
bfc05218:	15781b72 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0521c:	00000000 	nop
bfc05220:	34080006 	li	t0,0x6
bfc05224:	34090003 	li	t1,0x3
bfc05228:	71095002 	mul	t2,t0,t1
bfc0522c:	01405825 	move	t3,t2
bfc05230:	24180012 	li	t8,18
bfc05234:	15781b6b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05238:	00000000 	nop
bfc0523c:	34090003 	li	t1,0x3
bfc05240:	34080006 	li	t0,0x6
bfc05244:	71095002 	mul	t2,t0,t1
bfc05248:	340c3333 	li	t4,0x3333
bfc0524c:	01405825 	move	t3,t2
bfc05250:	24180012 	li	t8,18
bfc05254:	15781b63 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05258:	00000000 	nop
bfc0525c:	34090003 	li	t1,0x3
bfc05260:	34080006 	li	t0,0x6
bfc05264:	71095002 	mul	t2,t0,t1
bfc05268:	340d4444 	li	t5,0x4444
bfc0526c:	340c3333 	li	t4,0x3333
bfc05270:	01405825 	move	t3,t2
bfc05274:	24180012 	li	t8,18
bfc05278:	15781b5a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0527c:	00000000 	nop
bfc05280:	34090003 	li	t1,0x3
bfc05284:	34080006 	li	t0,0x6
bfc05288:	71095002 	mul	t2,t0,t1
bfc0528c:	340d4444 	li	t5,0x4444
bfc05290:	340c3333 	li	t4,0x3333
bfc05294:	340e2222 	li	t6,0x2222
bfc05298:	01405825 	move	t3,t2
bfc0529c:	24180012 	li	t8,18
bfc052a0:	15781b50 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc052a4:	00000000 	nop
bfc052a8:	34080006 	li	t0,0x6
bfc052ac:	34090003 	li	t1,0x3
bfc052b0:	71095002 	mul	t2,t0,t1
bfc052b4:	000a5825 	or	t3,zero,t2
bfc052b8:	24180012 	li	t8,18
bfc052bc:	15781b49 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc052c0:	00000000 	nop
bfc052c4:	34090003 	li	t1,0x3
bfc052c8:	34080006 	li	t0,0x6
bfc052cc:	71095002 	mul	t2,t0,t1
bfc052d0:	340c3333 	li	t4,0x3333
bfc052d4:	000a5825 	or	t3,zero,t2
bfc052d8:	24180012 	li	t8,18
bfc052dc:	15781b41 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc052e0:	00000000 	nop
bfc052e4:	34090003 	li	t1,0x3
bfc052e8:	34080006 	li	t0,0x6
bfc052ec:	71095002 	mul	t2,t0,t1
bfc052f0:	340d4444 	li	t5,0x4444
bfc052f4:	340c3333 	li	t4,0x3333
bfc052f8:	000a5825 	or	t3,zero,t2
bfc052fc:	24180012 	li	t8,18
bfc05300:	15781b38 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05304:	00000000 	nop
bfc05308:	34090003 	li	t1,0x3
bfc0530c:	34080006 	li	t0,0x6
bfc05310:	71095002 	mul	t2,t0,t1
bfc05314:	340d4444 	li	t5,0x4444
bfc05318:	340c3333 	li	t4,0x3333
bfc0531c:	340e2222 	li	t6,0x2222
bfc05320:	000a5825 	or	t3,zero,t2
bfc05324:	24180012 	li	t8,18
bfc05328:	15781b2e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0532c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:45
bfc05330:	34090003 	li	t1,0x3
bfc05334:	34080007 	li	t0,0x7
bfc05338:	71095002 	mul	t2,t0,t1
bfc0533c:	24180015 	li	t8,21
bfc05340:	15581b28 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05344:	00000000 	nop
bfc05348:	34080007 	li	t0,0x7
bfc0534c:	34090003 	li	t1,0x3
bfc05350:	71095002 	mul	t2,t0,t1
bfc05354:	24180015 	li	t8,21
bfc05358:	15581b22 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0535c:	00000000 	nop
bfc05360:	34080007 	li	t0,0x7
bfc05364:	34090003 	li	t1,0x3
bfc05368:	340a8888 	li	t2,0x8888
bfc0536c:	71095802 	mul	t3,t0,t1
bfc05370:	24180015 	li	t8,21
bfc05374:	15781b1b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05378:	00000000 	nop
bfc0537c:	34080007 	li	t0,0x7
bfc05380:	340c4444 	li	t4,0x4444
bfc05384:	34090003 	li	t1,0x3
bfc05388:	340a8888 	li	t2,0x8888
bfc0538c:	71095802 	mul	t3,t0,t1
bfc05390:	24180015 	li	t8,21
bfc05394:	15781b13 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05398:	00000000 	nop
bfc0539c:	34080007 	li	t0,0x7
bfc053a0:	34090003 	li	t1,0x3
bfc053a4:	71095002 	mul	t2,t0,t1
bfc053a8:	24180015 	li	t8,21
bfc053ac:	15581b0d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc053b0:	00000000 	nop
bfc053b4:	34090003 	li	t1,0x3
bfc053b8:	34080007 	li	t0,0x7
bfc053bc:	71095002 	mul	t2,t0,t1
bfc053c0:	24180015 	li	t8,21
bfc053c4:	15581b07 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc053c8:	00000000 	nop
bfc053cc:	34090003 	li	t1,0x3
bfc053d0:	34080007 	li	t0,0x7
bfc053d4:	340a8888 	li	t2,0x8888
bfc053d8:	71095802 	mul	t3,t0,t1
bfc053dc:	24180015 	li	t8,21
bfc053e0:	15781b00 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc053e4:	00000000 	nop
bfc053e8:	34090003 	li	t1,0x3
bfc053ec:	340c4444 	li	t4,0x4444
bfc053f0:	34080007 	li	t0,0x7
bfc053f4:	340a8888 	li	t2,0x8888
bfc053f8:	71095802 	mul	t3,t0,t1
bfc053fc:	24180015 	li	t8,21
bfc05400:	15781af8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05404:	00000000 	nop
bfc05408:	34080007 	li	t0,0x7
bfc0540c:	34090003 	li	t1,0x3
bfc05410:	71095002 	mul	t2,t0,t1
bfc05414:	01405825 	move	t3,t2
bfc05418:	24180015 	li	t8,21
bfc0541c:	15781af1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05420:	00000000 	nop
bfc05424:	34090003 	li	t1,0x3
bfc05428:	34080007 	li	t0,0x7
bfc0542c:	71095002 	mul	t2,t0,t1
bfc05430:	340c3333 	li	t4,0x3333
bfc05434:	01405825 	move	t3,t2
bfc05438:	24180015 	li	t8,21
bfc0543c:	15781ae9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05440:	00000000 	nop
bfc05444:	34090003 	li	t1,0x3
bfc05448:	34080007 	li	t0,0x7
bfc0544c:	71095002 	mul	t2,t0,t1
bfc05450:	340d4444 	li	t5,0x4444
bfc05454:	340c3333 	li	t4,0x3333
bfc05458:	01405825 	move	t3,t2
bfc0545c:	24180015 	li	t8,21
bfc05460:	15781ae0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05464:	00000000 	nop
bfc05468:	34090003 	li	t1,0x3
bfc0546c:	34080007 	li	t0,0x7
bfc05470:	71095002 	mul	t2,t0,t1
bfc05474:	340d4444 	li	t5,0x4444
bfc05478:	340c3333 	li	t4,0x3333
bfc0547c:	340e2222 	li	t6,0x2222
bfc05480:	01405825 	move	t3,t2
bfc05484:	24180015 	li	t8,21
bfc05488:	15781ad6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0548c:	00000000 	nop
bfc05490:	34080007 	li	t0,0x7
bfc05494:	34090003 	li	t1,0x3
bfc05498:	71095002 	mul	t2,t0,t1
bfc0549c:	000a5825 	or	t3,zero,t2
bfc054a0:	24180015 	li	t8,21
bfc054a4:	15781acf 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc054a8:	00000000 	nop
bfc054ac:	34090003 	li	t1,0x3
bfc054b0:	34080007 	li	t0,0x7
bfc054b4:	71095002 	mul	t2,t0,t1
bfc054b8:	340c3333 	li	t4,0x3333
bfc054bc:	000a5825 	or	t3,zero,t2
bfc054c0:	24180015 	li	t8,21
bfc054c4:	15781ac7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc054c8:	00000000 	nop
bfc054cc:	34090003 	li	t1,0x3
bfc054d0:	34080007 	li	t0,0x7
bfc054d4:	71095002 	mul	t2,t0,t1
bfc054d8:	340d4444 	li	t5,0x4444
bfc054dc:	340c3333 	li	t4,0x3333
bfc054e0:	000a5825 	or	t3,zero,t2
bfc054e4:	24180015 	li	t8,21
bfc054e8:	15781abe 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc054ec:	00000000 	nop
bfc054f0:	34090003 	li	t1,0x3
bfc054f4:	34080007 	li	t0,0x7
bfc054f8:	71095002 	mul	t2,t0,t1
bfc054fc:	340d4444 	li	t5,0x4444
bfc05500:	340c3333 	li	t4,0x3333
bfc05504:	340e2222 	li	t6,0x2222
bfc05508:	000a5825 	or	t3,zero,t2
bfc0550c:	24180015 	li	t8,21
bfc05510:	15781ab4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05514:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:46
bfc05518:	34090003 	li	t1,0x3
bfc0551c:	34080008 	li	t0,0x8
bfc05520:	71095002 	mul	t2,t0,t1
bfc05524:	24180018 	li	t8,24
bfc05528:	15581aae 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0552c:	00000000 	nop
bfc05530:	34080008 	li	t0,0x8
bfc05534:	34090003 	li	t1,0x3
bfc05538:	71095002 	mul	t2,t0,t1
bfc0553c:	24180018 	li	t8,24
bfc05540:	15581aa8 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05544:	00000000 	nop
bfc05548:	34080008 	li	t0,0x8
bfc0554c:	34090003 	li	t1,0x3
bfc05550:	340a8888 	li	t2,0x8888
bfc05554:	71095802 	mul	t3,t0,t1
bfc05558:	24180018 	li	t8,24
bfc0555c:	15781aa1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05560:	00000000 	nop
bfc05564:	34080008 	li	t0,0x8
bfc05568:	340c4444 	li	t4,0x4444
bfc0556c:	34090003 	li	t1,0x3
bfc05570:	340a8888 	li	t2,0x8888
bfc05574:	71095802 	mul	t3,t0,t1
bfc05578:	24180018 	li	t8,24
bfc0557c:	15781a99 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05580:	00000000 	nop
bfc05584:	34080008 	li	t0,0x8
bfc05588:	34090003 	li	t1,0x3
bfc0558c:	71095002 	mul	t2,t0,t1
bfc05590:	24180018 	li	t8,24
bfc05594:	15581a93 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05598:	00000000 	nop
bfc0559c:	34090003 	li	t1,0x3
bfc055a0:	34080008 	li	t0,0x8
bfc055a4:	71095002 	mul	t2,t0,t1
bfc055a8:	24180018 	li	t8,24
bfc055ac:	15581a8d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc055b0:	00000000 	nop
bfc055b4:	34090003 	li	t1,0x3
bfc055b8:	34080008 	li	t0,0x8
bfc055bc:	340a8888 	li	t2,0x8888
bfc055c0:	71095802 	mul	t3,t0,t1
bfc055c4:	24180018 	li	t8,24
bfc055c8:	15781a86 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc055cc:	00000000 	nop
bfc055d0:	34090003 	li	t1,0x3
bfc055d4:	340c4444 	li	t4,0x4444
bfc055d8:	34080008 	li	t0,0x8
bfc055dc:	340a8888 	li	t2,0x8888
bfc055e0:	71095802 	mul	t3,t0,t1
bfc055e4:	24180018 	li	t8,24
bfc055e8:	15781a7e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc055ec:	00000000 	nop
bfc055f0:	34080008 	li	t0,0x8
bfc055f4:	34090003 	li	t1,0x3
bfc055f8:	71095002 	mul	t2,t0,t1
bfc055fc:	01405825 	move	t3,t2
bfc05600:	24180018 	li	t8,24
bfc05604:	15781a77 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05608:	00000000 	nop
bfc0560c:	34090003 	li	t1,0x3
bfc05610:	34080008 	li	t0,0x8
bfc05614:	71095002 	mul	t2,t0,t1
bfc05618:	340c3333 	li	t4,0x3333
bfc0561c:	01405825 	move	t3,t2
bfc05620:	24180018 	li	t8,24
bfc05624:	15781a6f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05628:	00000000 	nop
bfc0562c:	34090003 	li	t1,0x3
bfc05630:	34080008 	li	t0,0x8
bfc05634:	71095002 	mul	t2,t0,t1
bfc05638:	340d4444 	li	t5,0x4444
bfc0563c:	340c3333 	li	t4,0x3333
bfc05640:	01405825 	move	t3,t2
bfc05644:	24180018 	li	t8,24
bfc05648:	15781a66 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0564c:	00000000 	nop
bfc05650:	34090003 	li	t1,0x3
bfc05654:	34080008 	li	t0,0x8
bfc05658:	71095002 	mul	t2,t0,t1
bfc0565c:	340d4444 	li	t5,0x4444
bfc05660:	340c3333 	li	t4,0x3333
bfc05664:	340e2222 	li	t6,0x2222
bfc05668:	01405825 	move	t3,t2
bfc0566c:	24180018 	li	t8,24
bfc05670:	15781a5c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05674:	00000000 	nop
bfc05678:	34080008 	li	t0,0x8
bfc0567c:	34090003 	li	t1,0x3
bfc05680:	71095002 	mul	t2,t0,t1
bfc05684:	000a5825 	or	t3,zero,t2
bfc05688:	24180018 	li	t8,24
bfc0568c:	15781a55 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05690:	00000000 	nop
bfc05694:	34090003 	li	t1,0x3
bfc05698:	34080008 	li	t0,0x8
bfc0569c:	71095002 	mul	t2,t0,t1
bfc056a0:	340c3333 	li	t4,0x3333
bfc056a4:	000a5825 	or	t3,zero,t2
bfc056a8:	24180018 	li	t8,24
bfc056ac:	15781a4d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc056b0:	00000000 	nop
bfc056b4:	34090003 	li	t1,0x3
bfc056b8:	34080008 	li	t0,0x8
bfc056bc:	71095002 	mul	t2,t0,t1
bfc056c0:	340d4444 	li	t5,0x4444
bfc056c4:	340c3333 	li	t4,0x3333
bfc056c8:	000a5825 	or	t3,zero,t2
bfc056cc:	24180018 	li	t8,24
bfc056d0:	15781a44 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc056d4:	00000000 	nop
bfc056d8:	34090003 	li	t1,0x3
bfc056dc:	34080008 	li	t0,0x8
bfc056e0:	71095002 	mul	t2,t0,t1
bfc056e4:	340d4444 	li	t5,0x4444
bfc056e8:	340c3333 	li	t4,0x3333
bfc056ec:	340e2222 	li	t6,0x2222
bfc056f0:	000a5825 	or	t3,zero,t2
bfc056f4:	24180018 	li	t8,24
bfc056f8:	15781a3a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc056fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:47
bfc05700:	34090003 	li	t1,0x3
bfc05704:	34080009 	li	t0,0x9
bfc05708:	71095002 	mul	t2,t0,t1
bfc0570c:	2418001b 	li	t8,27
bfc05710:	15581a34 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05714:	00000000 	nop
bfc05718:	34080009 	li	t0,0x9
bfc0571c:	34090003 	li	t1,0x3
bfc05720:	71095002 	mul	t2,t0,t1
bfc05724:	2418001b 	li	t8,27
bfc05728:	15581a2e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0572c:	00000000 	nop
bfc05730:	34080009 	li	t0,0x9
bfc05734:	34090003 	li	t1,0x3
bfc05738:	340a8888 	li	t2,0x8888
bfc0573c:	71095802 	mul	t3,t0,t1
bfc05740:	2418001b 	li	t8,27
bfc05744:	15781a27 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05748:	00000000 	nop
bfc0574c:	34080009 	li	t0,0x9
bfc05750:	340c4444 	li	t4,0x4444
bfc05754:	34090003 	li	t1,0x3
bfc05758:	340a8888 	li	t2,0x8888
bfc0575c:	71095802 	mul	t3,t0,t1
bfc05760:	2418001b 	li	t8,27
bfc05764:	15781a1f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05768:	00000000 	nop
bfc0576c:	34080009 	li	t0,0x9
bfc05770:	34090003 	li	t1,0x3
bfc05774:	71095002 	mul	t2,t0,t1
bfc05778:	2418001b 	li	t8,27
bfc0577c:	15581a19 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05780:	00000000 	nop
bfc05784:	34090003 	li	t1,0x3
bfc05788:	34080009 	li	t0,0x9
bfc0578c:	71095002 	mul	t2,t0,t1
bfc05790:	2418001b 	li	t8,27
bfc05794:	15581a13 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05798:	00000000 	nop
bfc0579c:	34090003 	li	t1,0x3
bfc057a0:	34080009 	li	t0,0x9
bfc057a4:	340a8888 	li	t2,0x8888
bfc057a8:	71095802 	mul	t3,t0,t1
bfc057ac:	2418001b 	li	t8,27
bfc057b0:	15781a0c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc057b4:	00000000 	nop
bfc057b8:	34090003 	li	t1,0x3
bfc057bc:	340c4444 	li	t4,0x4444
bfc057c0:	34080009 	li	t0,0x9
bfc057c4:	340a8888 	li	t2,0x8888
bfc057c8:	71095802 	mul	t3,t0,t1
bfc057cc:	2418001b 	li	t8,27
bfc057d0:	15781a04 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc057d4:	00000000 	nop
bfc057d8:	34080009 	li	t0,0x9
bfc057dc:	34090003 	li	t1,0x3
bfc057e0:	71095002 	mul	t2,t0,t1
bfc057e4:	01405825 	move	t3,t2
bfc057e8:	2418001b 	li	t8,27
bfc057ec:	157819fd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc057f0:	00000000 	nop
bfc057f4:	34090003 	li	t1,0x3
bfc057f8:	34080009 	li	t0,0x9
bfc057fc:	71095002 	mul	t2,t0,t1
bfc05800:	340c3333 	li	t4,0x3333
bfc05804:	01405825 	move	t3,t2
bfc05808:	2418001b 	li	t8,27
bfc0580c:	157819f5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05810:	00000000 	nop
bfc05814:	34090003 	li	t1,0x3
bfc05818:	34080009 	li	t0,0x9
bfc0581c:	71095002 	mul	t2,t0,t1
bfc05820:	340d4444 	li	t5,0x4444
bfc05824:	340c3333 	li	t4,0x3333
bfc05828:	01405825 	move	t3,t2
bfc0582c:	2418001b 	li	t8,27
bfc05830:	157819ec 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05834:	00000000 	nop
bfc05838:	34090003 	li	t1,0x3
bfc0583c:	34080009 	li	t0,0x9
bfc05840:	71095002 	mul	t2,t0,t1
bfc05844:	340d4444 	li	t5,0x4444
bfc05848:	340c3333 	li	t4,0x3333
bfc0584c:	340e2222 	li	t6,0x2222
bfc05850:	01405825 	move	t3,t2
bfc05854:	2418001b 	li	t8,27
bfc05858:	157819e2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0585c:	00000000 	nop
bfc05860:	34080009 	li	t0,0x9
bfc05864:	34090003 	li	t1,0x3
bfc05868:	71095002 	mul	t2,t0,t1
bfc0586c:	000a5825 	or	t3,zero,t2
bfc05870:	2418001b 	li	t8,27
bfc05874:	157819db 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05878:	00000000 	nop
bfc0587c:	34090003 	li	t1,0x3
bfc05880:	34080009 	li	t0,0x9
bfc05884:	71095002 	mul	t2,t0,t1
bfc05888:	340c3333 	li	t4,0x3333
bfc0588c:	000a5825 	or	t3,zero,t2
bfc05890:	2418001b 	li	t8,27
bfc05894:	157819d3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05898:	00000000 	nop
bfc0589c:	34090003 	li	t1,0x3
bfc058a0:	34080009 	li	t0,0x9
bfc058a4:	71095002 	mul	t2,t0,t1
bfc058a8:	340d4444 	li	t5,0x4444
bfc058ac:	340c3333 	li	t4,0x3333
bfc058b0:	000a5825 	or	t3,zero,t2
bfc058b4:	2418001b 	li	t8,27
bfc058b8:	157819ca 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc058bc:	00000000 	nop
bfc058c0:	34090003 	li	t1,0x3
bfc058c4:	34080009 	li	t0,0x9
bfc058c8:	71095002 	mul	t2,t0,t1
bfc058cc:	340d4444 	li	t5,0x4444
bfc058d0:	340c3333 	li	t4,0x3333
bfc058d4:	340e2222 	li	t6,0x2222
bfc058d8:	000a5825 	or	t3,zero,t2
bfc058dc:	2418001b 	li	t8,27
bfc058e0:	157819c0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc058e4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:48
bfc058e8:	34090004 	li	t1,0x4
bfc058ec:	34080001 	li	t0,0x1
bfc058f0:	71095002 	mul	t2,t0,t1
bfc058f4:	24180004 	li	t8,4
bfc058f8:	155819ba 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc058fc:	00000000 	nop
bfc05900:	34080001 	li	t0,0x1
bfc05904:	34090004 	li	t1,0x4
bfc05908:	71095002 	mul	t2,t0,t1
bfc0590c:	24180004 	li	t8,4
bfc05910:	155819b4 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05914:	00000000 	nop
bfc05918:	34080001 	li	t0,0x1
bfc0591c:	34090004 	li	t1,0x4
bfc05920:	340a8888 	li	t2,0x8888
bfc05924:	71095802 	mul	t3,t0,t1
bfc05928:	24180004 	li	t8,4
bfc0592c:	157819ad 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05930:	00000000 	nop
bfc05934:	34080001 	li	t0,0x1
bfc05938:	340c4444 	li	t4,0x4444
bfc0593c:	34090004 	li	t1,0x4
bfc05940:	340a8888 	li	t2,0x8888
bfc05944:	71095802 	mul	t3,t0,t1
bfc05948:	24180004 	li	t8,4
bfc0594c:	157819a5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05950:	00000000 	nop
bfc05954:	34080001 	li	t0,0x1
bfc05958:	34090004 	li	t1,0x4
bfc0595c:	71095002 	mul	t2,t0,t1
bfc05960:	24180004 	li	t8,4
bfc05964:	1558199f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05968:	00000000 	nop
bfc0596c:	34090004 	li	t1,0x4
bfc05970:	34080001 	li	t0,0x1
bfc05974:	71095002 	mul	t2,t0,t1
bfc05978:	24180004 	li	t8,4
bfc0597c:	15581999 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05980:	00000000 	nop
bfc05984:	34090004 	li	t1,0x4
bfc05988:	34080001 	li	t0,0x1
bfc0598c:	340a8888 	li	t2,0x8888
bfc05990:	71095802 	mul	t3,t0,t1
bfc05994:	24180004 	li	t8,4
bfc05998:	15781992 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0599c:	00000000 	nop
bfc059a0:	34090004 	li	t1,0x4
bfc059a4:	340c4444 	li	t4,0x4444
bfc059a8:	34080001 	li	t0,0x1
bfc059ac:	340a8888 	li	t2,0x8888
bfc059b0:	71095802 	mul	t3,t0,t1
bfc059b4:	24180004 	li	t8,4
bfc059b8:	1578198a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc059bc:	00000000 	nop
bfc059c0:	34080001 	li	t0,0x1
bfc059c4:	34090004 	li	t1,0x4
bfc059c8:	71095002 	mul	t2,t0,t1
bfc059cc:	01405825 	move	t3,t2
bfc059d0:	24180004 	li	t8,4
bfc059d4:	15781983 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc059d8:	00000000 	nop
bfc059dc:	34090004 	li	t1,0x4
bfc059e0:	34080001 	li	t0,0x1
bfc059e4:	71095002 	mul	t2,t0,t1
bfc059e8:	340c3333 	li	t4,0x3333
bfc059ec:	01405825 	move	t3,t2
bfc059f0:	24180004 	li	t8,4
bfc059f4:	1578197b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc059f8:	00000000 	nop
bfc059fc:	34090004 	li	t1,0x4
bfc05a00:	34080001 	li	t0,0x1
bfc05a04:	71095002 	mul	t2,t0,t1
bfc05a08:	340d4444 	li	t5,0x4444
bfc05a0c:	340c3333 	li	t4,0x3333
bfc05a10:	01405825 	move	t3,t2
bfc05a14:	24180004 	li	t8,4
bfc05a18:	15781972 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05a1c:	00000000 	nop
bfc05a20:	34090004 	li	t1,0x4
bfc05a24:	34080001 	li	t0,0x1
bfc05a28:	71095002 	mul	t2,t0,t1
bfc05a2c:	340d4444 	li	t5,0x4444
bfc05a30:	340c3333 	li	t4,0x3333
bfc05a34:	340e2222 	li	t6,0x2222
bfc05a38:	01405825 	move	t3,t2
bfc05a3c:	24180004 	li	t8,4
bfc05a40:	15781968 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05a44:	00000000 	nop
bfc05a48:	34080001 	li	t0,0x1
bfc05a4c:	34090004 	li	t1,0x4
bfc05a50:	71095002 	mul	t2,t0,t1
bfc05a54:	000a5825 	or	t3,zero,t2
bfc05a58:	24180004 	li	t8,4
bfc05a5c:	15781961 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05a60:	00000000 	nop
bfc05a64:	34090004 	li	t1,0x4
bfc05a68:	34080001 	li	t0,0x1
bfc05a6c:	71095002 	mul	t2,t0,t1
bfc05a70:	340c3333 	li	t4,0x3333
bfc05a74:	000a5825 	or	t3,zero,t2
bfc05a78:	24180004 	li	t8,4
bfc05a7c:	15781959 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05a80:	00000000 	nop
bfc05a84:	34090004 	li	t1,0x4
bfc05a88:	34080001 	li	t0,0x1
bfc05a8c:	71095002 	mul	t2,t0,t1
bfc05a90:	340d4444 	li	t5,0x4444
bfc05a94:	340c3333 	li	t4,0x3333
bfc05a98:	000a5825 	or	t3,zero,t2
bfc05a9c:	24180004 	li	t8,4
bfc05aa0:	15781950 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05aa4:	00000000 	nop
bfc05aa8:	34090004 	li	t1,0x4
bfc05aac:	34080001 	li	t0,0x1
bfc05ab0:	71095002 	mul	t2,t0,t1
bfc05ab4:	340d4444 	li	t5,0x4444
bfc05ab8:	340c3333 	li	t4,0x3333
bfc05abc:	340e2222 	li	t6,0x2222
bfc05ac0:	000a5825 	or	t3,zero,t2
bfc05ac4:	24180004 	li	t8,4
bfc05ac8:	15781946 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05acc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:49
bfc05ad0:	34090004 	li	t1,0x4
bfc05ad4:	34080002 	li	t0,0x2
bfc05ad8:	71095002 	mul	t2,t0,t1
bfc05adc:	24180008 	li	t8,8
bfc05ae0:	15581940 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05ae4:	00000000 	nop
bfc05ae8:	34080002 	li	t0,0x2
bfc05aec:	34090004 	li	t1,0x4
bfc05af0:	71095002 	mul	t2,t0,t1
bfc05af4:	24180008 	li	t8,8
bfc05af8:	1558193a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05afc:	00000000 	nop
bfc05b00:	34080002 	li	t0,0x2
bfc05b04:	34090004 	li	t1,0x4
bfc05b08:	340a8888 	li	t2,0x8888
bfc05b0c:	71095802 	mul	t3,t0,t1
bfc05b10:	24180008 	li	t8,8
bfc05b14:	15781933 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05b18:	00000000 	nop
bfc05b1c:	34080002 	li	t0,0x2
bfc05b20:	340c4444 	li	t4,0x4444
bfc05b24:	34090004 	li	t1,0x4
bfc05b28:	340a8888 	li	t2,0x8888
bfc05b2c:	71095802 	mul	t3,t0,t1
bfc05b30:	24180008 	li	t8,8
bfc05b34:	1578192b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05b38:	00000000 	nop
bfc05b3c:	34080002 	li	t0,0x2
bfc05b40:	34090004 	li	t1,0x4
bfc05b44:	71095002 	mul	t2,t0,t1
bfc05b48:	24180008 	li	t8,8
bfc05b4c:	15581925 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05b50:	00000000 	nop
bfc05b54:	34090004 	li	t1,0x4
bfc05b58:	34080002 	li	t0,0x2
bfc05b5c:	71095002 	mul	t2,t0,t1
bfc05b60:	24180008 	li	t8,8
bfc05b64:	1558191f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05b68:	00000000 	nop
bfc05b6c:	34090004 	li	t1,0x4
bfc05b70:	34080002 	li	t0,0x2
bfc05b74:	340a8888 	li	t2,0x8888
bfc05b78:	71095802 	mul	t3,t0,t1
bfc05b7c:	24180008 	li	t8,8
bfc05b80:	15781918 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05b84:	00000000 	nop
bfc05b88:	34090004 	li	t1,0x4
bfc05b8c:	340c4444 	li	t4,0x4444
bfc05b90:	34080002 	li	t0,0x2
bfc05b94:	340a8888 	li	t2,0x8888
bfc05b98:	71095802 	mul	t3,t0,t1
bfc05b9c:	24180008 	li	t8,8
bfc05ba0:	15781910 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05ba4:	00000000 	nop
bfc05ba8:	34080002 	li	t0,0x2
bfc05bac:	34090004 	li	t1,0x4
bfc05bb0:	71095002 	mul	t2,t0,t1
bfc05bb4:	01405825 	move	t3,t2
bfc05bb8:	24180008 	li	t8,8
bfc05bbc:	15781909 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05bc0:	00000000 	nop
bfc05bc4:	34090004 	li	t1,0x4
bfc05bc8:	34080002 	li	t0,0x2
bfc05bcc:	71095002 	mul	t2,t0,t1
bfc05bd0:	340c3333 	li	t4,0x3333
bfc05bd4:	01405825 	move	t3,t2
bfc05bd8:	24180008 	li	t8,8
bfc05bdc:	15781901 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05be0:	00000000 	nop
bfc05be4:	34090004 	li	t1,0x4
bfc05be8:	34080002 	li	t0,0x2
bfc05bec:	71095002 	mul	t2,t0,t1
bfc05bf0:	340d4444 	li	t5,0x4444
bfc05bf4:	340c3333 	li	t4,0x3333
bfc05bf8:	01405825 	move	t3,t2
bfc05bfc:	24180008 	li	t8,8
bfc05c00:	157818f8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05c04:	00000000 	nop
bfc05c08:	34090004 	li	t1,0x4
bfc05c0c:	34080002 	li	t0,0x2
bfc05c10:	71095002 	mul	t2,t0,t1
bfc05c14:	340d4444 	li	t5,0x4444
bfc05c18:	340c3333 	li	t4,0x3333
bfc05c1c:	340e2222 	li	t6,0x2222
bfc05c20:	01405825 	move	t3,t2
bfc05c24:	24180008 	li	t8,8
bfc05c28:	157818ee 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05c2c:	00000000 	nop
bfc05c30:	34080002 	li	t0,0x2
bfc05c34:	34090004 	li	t1,0x4
bfc05c38:	71095002 	mul	t2,t0,t1
bfc05c3c:	000a5825 	or	t3,zero,t2
bfc05c40:	24180008 	li	t8,8
bfc05c44:	157818e7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05c48:	00000000 	nop
bfc05c4c:	34090004 	li	t1,0x4
bfc05c50:	34080002 	li	t0,0x2
bfc05c54:	71095002 	mul	t2,t0,t1
bfc05c58:	340c3333 	li	t4,0x3333
bfc05c5c:	000a5825 	or	t3,zero,t2
bfc05c60:	24180008 	li	t8,8
bfc05c64:	157818df 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05c68:	00000000 	nop
bfc05c6c:	34090004 	li	t1,0x4
bfc05c70:	34080002 	li	t0,0x2
bfc05c74:	71095002 	mul	t2,t0,t1
bfc05c78:	340d4444 	li	t5,0x4444
bfc05c7c:	340c3333 	li	t4,0x3333
bfc05c80:	000a5825 	or	t3,zero,t2
bfc05c84:	24180008 	li	t8,8
bfc05c88:	157818d6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05c8c:	00000000 	nop
bfc05c90:	34090004 	li	t1,0x4
bfc05c94:	34080002 	li	t0,0x2
bfc05c98:	71095002 	mul	t2,t0,t1
bfc05c9c:	340d4444 	li	t5,0x4444
bfc05ca0:	340c3333 	li	t4,0x3333
bfc05ca4:	340e2222 	li	t6,0x2222
bfc05ca8:	000a5825 	or	t3,zero,t2
bfc05cac:	24180008 	li	t8,8
bfc05cb0:	157818cc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05cb4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:50
bfc05cb8:	34090004 	li	t1,0x4
bfc05cbc:	34080003 	li	t0,0x3
bfc05cc0:	71095002 	mul	t2,t0,t1
bfc05cc4:	2418000c 	li	t8,12
bfc05cc8:	155818c6 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05ccc:	00000000 	nop
bfc05cd0:	34080003 	li	t0,0x3
bfc05cd4:	34090004 	li	t1,0x4
bfc05cd8:	71095002 	mul	t2,t0,t1
bfc05cdc:	2418000c 	li	t8,12
bfc05ce0:	155818c0 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05ce4:	00000000 	nop
bfc05ce8:	34080003 	li	t0,0x3
bfc05cec:	34090004 	li	t1,0x4
bfc05cf0:	340a8888 	li	t2,0x8888
bfc05cf4:	71095802 	mul	t3,t0,t1
bfc05cf8:	2418000c 	li	t8,12
bfc05cfc:	157818b9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05d00:	00000000 	nop
bfc05d04:	34080003 	li	t0,0x3
bfc05d08:	340c4444 	li	t4,0x4444
bfc05d0c:	34090004 	li	t1,0x4
bfc05d10:	340a8888 	li	t2,0x8888
bfc05d14:	71095802 	mul	t3,t0,t1
bfc05d18:	2418000c 	li	t8,12
bfc05d1c:	157818b1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05d20:	00000000 	nop
bfc05d24:	34080003 	li	t0,0x3
bfc05d28:	34090004 	li	t1,0x4
bfc05d2c:	71095002 	mul	t2,t0,t1
bfc05d30:	2418000c 	li	t8,12
bfc05d34:	155818ab 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05d38:	00000000 	nop
bfc05d3c:	34090004 	li	t1,0x4
bfc05d40:	34080003 	li	t0,0x3
bfc05d44:	71095002 	mul	t2,t0,t1
bfc05d48:	2418000c 	li	t8,12
bfc05d4c:	155818a5 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05d50:	00000000 	nop
bfc05d54:	34090004 	li	t1,0x4
bfc05d58:	34080003 	li	t0,0x3
bfc05d5c:	340a8888 	li	t2,0x8888
bfc05d60:	71095802 	mul	t3,t0,t1
bfc05d64:	2418000c 	li	t8,12
bfc05d68:	1578189e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05d6c:	00000000 	nop
bfc05d70:	34090004 	li	t1,0x4
bfc05d74:	340c4444 	li	t4,0x4444
bfc05d78:	34080003 	li	t0,0x3
bfc05d7c:	340a8888 	li	t2,0x8888
bfc05d80:	71095802 	mul	t3,t0,t1
bfc05d84:	2418000c 	li	t8,12
bfc05d88:	15781896 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05d8c:	00000000 	nop
bfc05d90:	34080003 	li	t0,0x3
bfc05d94:	34090004 	li	t1,0x4
bfc05d98:	71095002 	mul	t2,t0,t1
bfc05d9c:	01405825 	move	t3,t2
bfc05da0:	2418000c 	li	t8,12
bfc05da4:	1578188f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05da8:	00000000 	nop
bfc05dac:	34090004 	li	t1,0x4
bfc05db0:	34080003 	li	t0,0x3
bfc05db4:	71095002 	mul	t2,t0,t1
bfc05db8:	340c3333 	li	t4,0x3333
bfc05dbc:	01405825 	move	t3,t2
bfc05dc0:	2418000c 	li	t8,12
bfc05dc4:	15781887 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05dc8:	00000000 	nop
bfc05dcc:	34090004 	li	t1,0x4
bfc05dd0:	34080003 	li	t0,0x3
bfc05dd4:	71095002 	mul	t2,t0,t1
bfc05dd8:	340d4444 	li	t5,0x4444
bfc05ddc:	340c3333 	li	t4,0x3333
bfc05de0:	01405825 	move	t3,t2
bfc05de4:	2418000c 	li	t8,12
bfc05de8:	1578187e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05dec:	00000000 	nop
bfc05df0:	34090004 	li	t1,0x4
bfc05df4:	34080003 	li	t0,0x3
bfc05df8:	71095002 	mul	t2,t0,t1
bfc05dfc:	340d4444 	li	t5,0x4444
bfc05e00:	340c3333 	li	t4,0x3333
bfc05e04:	340e2222 	li	t6,0x2222
bfc05e08:	01405825 	move	t3,t2
bfc05e0c:	2418000c 	li	t8,12
bfc05e10:	15781874 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05e14:	00000000 	nop
bfc05e18:	34080003 	li	t0,0x3
bfc05e1c:	34090004 	li	t1,0x4
bfc05e20:	71095002 	mul	t2,t0,t1
bfc05e24:	000a5825 	or	t3,zero,t2
bfc05e28:	2418000c 	li	t8,12
bfc05e2c:	1578186d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05e30:	00000000 	nop
bfc05e34:	34090004 	li	t1,0x4
bfc05e38:	34080003 	li	t0,0x3
bfc05e3c:	71095002 	mul	t2,t0,t1
bfc05e40:	340c3333 	li	t4,0x3333
bfc05e44:	000a5825 	or	t3,zero,t2
bfc05e48:	2418000c 	li	t8,12
bfc05e4c:	15781865 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05e50:	00000000 	nop
bfc05e54:	34090004 	li	t1,0x4
bfc05e58:	34080003 	li	t0,0x3
bfc05e5c:	71095002 	mul	t2,t0,t1
bfc05e60:	340d4444 	li	t5,0x4444
bfc05e64:	340c3333 	li	t4,0x3333
bfc05e68:	000a5825 	or	t3,zero,t2
bfc05e6c:	2418000c 	li	t8,12
bfc05e70:	1578185c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05e74:	00000000 	nop
bfc05e78:	34090004 	li	t1,0x4
bfc05e7c:	34080003 	li	t0,0x3
bfc05e80:	71095002 	mul	t2,t0,t1
bfc05e84:	340d4444 	li	t5,0x4444
bfc05e88:	340c3333 	li	t4,0x3333
bfc05e8c:	340e2222 	li	t6,0x2222
bfc05e90:	000a5825 	or	t3,zero,t2
bfc05e94:	2418000c 	li	t8,12
bfc05e98:	15781852 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05e9c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:51
bfc05ea0:	34090004 	li	t1,0x4
bfc05ea4:	34080004 	li	t0,0x4
bfc05ea8:	71095002 	mul	t2,t0,t1
bfc05eac:	24180010 	li	t8,16
bfc05eb0:	1558184c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05eb4:	00000000 	nop
bfc05eb8:	34080004 	li	t0,0x4
bfc05ebc:	34090004 	li	t1,0x4
bfc05ec0:	71095002 	mul	t2,t0,t1
bfc05ec4:	24180010 	li	t8,16
bfc05ec8:	15581846 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05ecc:	00000000 	nop
bfc05ed0:	34080004 	li	t0,0x4
bfc05ed4:	34090004 	li	t1,0x4
bfc05ed8:	340a8888 	li	t2,0x8888
bfc05edc:	71095802 	mul	t3,t0,t1
bfc05ee0:	24180010 	li	t8,16
bfc05ee4:	1578183f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05ee8:	00000000 	nop
bfc05eec:	34080004 	li	t0,0x4
bfc05ef0:	340c4444 	li	t4,0x4444
bfc05ef4:	34090004 	li	t1,0x4
bfc05ef8:	340a8888 	li	t2,0x8888
bfc05efc:	71095802 	mul	t3,t0,t1
bfc05f00:	24180010 	li	t8,16
bfc05f04:	15781837 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05f08:	00000000 	nop
bfc05f0c:	34080004 	li	t0,0x4
bfc05f10:	34090004 	li	t1,0x4
bfc05f14:	71095002 	mul	t2,t0,t1
bfc05f18:	24180010 	li	t8,16
bfc05f1c:	15581831 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05f20:	00000000 	nop
bfc05f24:	34090004 	li	t1,0x4
bfc05f28:	34080004 	li	t0,0x4
bfc05f2c:	71095002 	mul	t2,t0,t1
bfc05f30:	24180010 	li	t8,16
bfc05f34:	1558182b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc05f38:	00000000 	nop
bfc05f3c:	34090004 	li	t1,0x4
bfc05f40:	34080004 	li	t0,0x4
bfc05f44:	340a8888 	li	t2,0x8888
bfc05f48:	71095802 	mul	t3,t0,t1
bfc05f4c:	24180010 	li	t8,16
bfc05f50:	15781824 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05f54:	00000000 	nop
bfc05f58:	34090004 	li	t1,0x4
bfc05f5c:	340c4444 	li	t4,0x4444
bfc05f60:	34080004 	li	t0,0x4
bfc05f64:	340a8888 	li	t2,0x8888
bfc05f68:	71095802 	mul	t3,t0,t1
bfc05f6c:	24180010 	li	t8,16
bfc05f70:	1578181c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05f74:	00000000 	nop
bfc05f78:	34080004 	li	t0,0x4
bfc05f7c:	34090004 	li	t1,0x4
bfc05f80:	71095002 	mul	t2,t0,t1
bfc05f84:	01405825 	move	t3,t2
bfc05f88:	24180010 	li	t8,16
bfc05f8c:	15781815 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05f90:	00000000 	nop
bfc05f94:	34090004 	li	t1,0x4
bfc05f98:	34080004 	li	t0,0x4
bfc05f9c:	71095002 	mul	t2,t0,t1
bfc05fa0:	340c3333 	li	t4,0x3333
bfc05fa4:	01405825 	move	t3,t2
bfc05fa8:	24180010 	li	t8,16
bfc05fac:	1578180d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05fb0:	00000000 	nop
bfc05fb4:	34090004 	li	t1,0x4
bfc05fb8:	34080004 	li	t0,0x4
bfc05fbc:	71095002 	mul	t2,t0,t1
bfc05fc0:	340d4444 	li	t5,0x4444
bfc05fc4:	340c3333 	li	t4,0x3333
bfc05fc8:	01405825 	move	t3,t2
bfc05fcc:	24180010 	li	t8,16
bfc05fd0:	15781804 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05fd4:	00000000 	nop
bfc05fd8:	34090004 	li	t1,0x4
bfc05fdc:	34080004 	li	t0,0x4
bfc05fe0:	71095002 	mul	t2,t0,t1
bfc05fe4:	340d4444 	li	t5,0x4444
bfc05fe8:	340c3333 	li	t4,0x3333
bfc05fec:	340e2222 	li	t6,0x2222
bfc05ff0:	01405825 	move	t3,t2
bfc05ff4:	24180010 	li	t8,16
bfc05ff8:	157817fa 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc05ffc:	00000000 	nop
bfc06000:	34080004 	li	t0,0x4
bfc06004:	34090004 	li	t1,0x4
bfc06008:	71095002 	mul	t2,t0,t1
bfc0600c:	000a5825 	or	t3,zero,t2
bfc06010:	24180010 	li	t8,16
bfc06014:	157817f3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06018:	00000000 	nop
bfc0601c:	34090004 	li	t1,0x4
bfc06020:	34080004 	li	t0,0x4
bfc06024:	71095002 	mul	t2,t0,t1
bfc06028:	340c3333 	li	t4,0x3333
bfc0602c:	000a5825 	or	t3,zero,t2
bfc06030:	24180010 	li	t8,16
bfc06034:	157817eb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06038:	00000000 	nop
bfc0603c:	34090004 	li	t1,0x4
bfc06040:	34080004 	li	t0,0x4
bfc06044:	71095002 	mul	t2,t0,t1
bfc06048:	340d4444 	li	t5,0x4444
bfc0604c:	340c3333 	li	t4,0x3333
bfc06050:	000a5825 	or	t3,zero,t2
bfc06054:	24180010 	li	t8,16
bfc06058:	157817e2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0605c:	00000000 	nop
bfc06060:	34090004 	li	t1,0x4
bfc06064:	34080004 	li	t0,0x4
bfc06068:	71095002 	mul	t2,t0,t1
bfc0606c:	340d4444 	li	t5,0x4444
bfc06070:	340c3333 	li	t4,0x3333
bfc06074:	340e2222 	li	t6,0x2222
bfc06078:	000a5825 	or	t3,zero,t2
bfc0607c:	24180010 	li	t8,16
bfc06080:	157817d8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06084:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:52
bfc06088:	34090004 	li	t1,0x4
bfc0608c:	34080005 	li	t0,0x5
bfc06090:	71095002 	mul	t2,t0,t1
bfc06094:	24180014 	li	t8,20
bfc06098:	155817d2 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0609c:	00000000 	nop
bfc060a0:	34080005 	li	t0,0x5
bfc060a4:	34090004 	li	t1,0x4
bfc060a8:	71095002 	mul	t2,t0,t1
bfc060ac:	24180014 	li	t8,20
bfc060b0:	155817cc 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc060b4:	00000000 	nop
bfc060b8:	34080005 	li	t0,0x5
bfc060bc:	34090004 	li	t1,0x4
bfc060c0:	340a8888 	li	t2,0x8888
bfc060c4:	71095802 	mul	t3,t0,t1
bfc060c8:	24180014 	li	t8,20
bfc060cc:	157817c5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc060d0:	00000000 	nop
bfc060d4:	34080005 	li	t0,0x5
bfc060d8:	340c4444 	li	t4,0x4444
bfc060dc:	34090004 	li	t1,0x4
bfc060e0:	340a8888 	li	t2,0x8888
bfc060e4:	71095802 	mul	t3,t0,t1
bfc060e8:	24180014 	li	t8,20
bfc060ec:	157817bd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc060f0:	00000000 	nop
bfc060f4:	34080005 	li	t0,0x5
bfc060f8:	34090004 	li	t1,0x4
bfc060fc:	71095002 	mul	t2,t0,t1
bfc06100:	24180014 	li	t8,20
bfc06104:	155817b7 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06108:	00000000 	nop
bfc0610c:	34090004 	li	t1,0x4
bfc06110:	34080005 	li	t0,0x5
bfc06114:	71095002 	mul	t2,t0,t1
bfc06118:	24180014 	li	t8,20
bfc0611c:	155817b1 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06120:	00000000 	nop
bfc06124:	34090004 	li	t1,0x4
bfc06128:	34080005 	li	t0,0x5
bfc0612c:	340a8888 	li	t2,0x8888
bfc06130:	71095802 	mul	t3,t0,t1
bfc06134:	24180014 	li	t8,20
bfc06138:	157817aa 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0613c:	00000000 	nop
bfc06140:	34090004 	li	t1,0x4
bfc06144:	340c4444 	li	t4,0x4444
bfc06148:	34080005 	li	t0,0x5
bfc0614c:	340a8888 	li	t2,0x8888
bfc06150:	71095802 	mul	t3,t0,t1
bfc06154:	24180014 	li	t8,20
bfc06158:	157817a2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0615c:	00000000 	nop
bfc06160:	34080005 	li	t0,0x5
bfc06164:	34090004 	li	t1,0x4
bfc06168:	71095002 	mul	t2,t0,t1
bfc0616c:	01405825 	move	t3,t2
bfc06170:	24180014 	li	t8,20
bfc06174:	1578179b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06178:	00000000 	nop
bfc0617c:	34090004 	li	t1,0x4
bfc06180:	34080005 	li	t0,0x5
bfc06184:	71095002 	mul	t2,t0,t1
bfc06188:	340c3333 	li	t4,0x3333
bfc0618c:	01405825 	move	t3,t2
bfc06190:	24180014 	li	t8,20
bfc06194:	15781793 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06198:	00000000 	nop
bfc0619c:	34090004 	li	t1,0x4
bfc061a0:	34080005 	li	t0,0x5
bfc061a4:	71095002 	mul	t2,t0,t1
bfc061a8:	340d4444 	li	t5,0x4444
bfc061ac:	340c3333 	li	t4,0x3333
bfc061b0:	01405825 	move	t3,t2
bfc061b4:	24180014 	li	t8,20
bfc061b8:	1578178a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc061bc:	00000000 	nop
bfc061c0:	34090004 	li	t1,0x4
bfc061c4:	34080005 	li	t0,0x5
bfc061c8:	71095002 	mul	t2,t0,t1
bfc061cc:	340d4444 	li	t5,0x4444
bfc061d0:	340c3333 	li	t4,0x3333
bfc061d4:	340e2222 	li	t6,0x2222
bfc061d8:	01405825 	move	t3,t2
bfc061dc:	24180014 	li	t8,20
bfc061e0:	15781780 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc061e4:	00000000 	nop
bfc061e8:	34080005 	li	t0,0x5
bfc061ec:	34090004 	li	t1,0x4
bfc061f0:	71095002 	mul	t2,t0,t1
bfc061f4:	000a5825 	or	t3,zero,t2
bfc061f8:	24180014 	li	t8,20
bfc061fc:	15781779 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06200:	00000000 	nop
bfc06204:	34090004 	li	t1,0x4
bfc06208:	34080005 	li	t0,0x5
bfc0620c:	71095002 	mul	t2,t0,t1
bfc06210:	340c3333 	li	t4,0x3333
bfc06214:	000a5825 	or	t3,zero,t2
bfc06218:	24180014 	li	t8,20
bfc0621c:	15781771 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06220:	00000000 	nop
bfc06224:	34090004 	li	t1,0x4
bfc06228:	34080005 	li	t0,0x5
bfc0622c:	71095002 	mul	t2,t0,t1
bfc06230:	340d4444 	li	t5,0x4444
bfc06234:	340c3333 	li	t4,0x3333
bfc06238:	000a5825 	or	t3,zero,t2
bfc0623c:	24180014 	li	t8,20
bfc06240:	15781768 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06244:	00000000 	nop
bfc06248:	34090004 	li	t1,0x4
bfc0624c:	34080005 	li	t0,0x5
bfc06250:	71095002 	mul	t2,t0,t1
bfc06254:	340d4444 	li	t5,0x4444
bfc06258:	340c3333 	li	t4,0x3333
bfc0625c:	340e2222 	li	t6,0x2222
bfc06260:	000a5825 	or	t3,zero,t2
bfc06264:	24180014 	li	t8,20
bfc06268:	1578175e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0626c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:53
bfc06270:	34090004 	li	t1,0x4
bfc06274:	34080006 	li	t0,0x6
bfc06278:	71095002 	mul	t2,t0,t1
bfc0627c:	24180018 	li	t8,24
bfc06280:	15581758 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06284:	00000000 	nop
bfc06288:	34080006 	li	t0,0x6
bfc0628c:	34090004 	li	t1,0x4
bfc06290:	71095002 	mul	t2,t0,t1
bfc06294:	24180018 	li	t8,24
bfc06298:	15581752 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0629c:	00000000 	nop
bfc062a0:	34080006 	li	t0,0x6
bfc062a4:	34090004 	li	t1,0x4
bfc062a8:	340a8888 	li	t2,0x8888
bfc062ac:	71095802 	mul	t3,t0,t1
bfc062b0:	24180018 	li	t8,24
bfc062b4:	1578174b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc062b8:	00000000 	nop
bfc062bc:	34080006 	li	t0,0x6
bfc062c0:	340c4444 	li	t4,0x4444
bfc062c4:	34090004 	li	t1,0x4
bfc062c8:	340a8888 	li	t2,0x8888
bfc062cc:	71095802 	mul	t3,t0,t1
bfc062d0:	24180018 	li	t8,24
bfc062d4:	15781743 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc062d8:	00000000 	nop
bfc062dc:	34080006 	li	t0,0x6
bfc062e0:	34090004 	li	t1,0x4
bfc062e4:	71095002 	mul	t2,t0,t1
bfc062e8:	24180018 	li	t8,24
bfc062ec:	1558173d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc062f0:	00000000 	nop
bfc062f4:	34090004 	li	t1,0x4
bfc062f8:	34080006 	li	t0,0x6
bfc062fc:	71095002 	mul	t2,t0,t1
bfc06300:	24180018 	li	t8,24
bfc06304:	15581737 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06308:	00000000 	nop
bfc0630c:	34090004 	li	t1,0x4
bfc06310:	34080006 	li	t0,0x6
bfc06314:	340a8888 	li	t2,0x8888
bfc06318:	71095802 	mul	t3,t0,t1
bfc0631c:	24180018 	li	t8,24
bfc06320:	15781730 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06324:	00000000 	nop
bfc06328:	34090004 	li	t1,0x4
bfc0632c:	340c4444 	li	t4,0x4444
bfc06330:	34080006 	li	t0,0x6
bfc06334:	340a8888 	li	t2,0x8888
bfc06338:	71095802 	mul	t3,t0,t1
bfc0633c:	24180018 	li	t8,24
bfc06340:	15781728 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06344:	00000000 	nop
bfc06348:	34080006 	li	t0,0x6
bfc0634c:	34090004 	li	t1,0x4
bfc06350:	71095002 	mul	t2,t0,t1
bfc06354:	01405825 	move	t3,t2
bfc06358:	24180018 	li	t8,24
bfc0635c:	15781721 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06360:	00000000 	nop
bfc06364:	34090004 	li	t1,0x4
bfc06368:	34080006 	li	t0,0x6
bfc0636c:	71095002 	mul	t2,t0,t1
bfc06370:	340c3333 	li	t4,0x3333
bfc06374:	01405825 	move	t3,t2
bfc06378:	24180018 	li	t8,24
bfc0637c:	15781719 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06380:	00000000 	nop
bfc06384:	34090004 	li	t1,0x4
bfc06388:	34080006 	li	t0,0x6
bfc0638c:	71095002 	mul	t2,t0,t1
bfc06390:	340d4444 	li	t5,0x4444
bfc06394:	340c3333 	li	t4,0x3333
bfc06398:	01405825 	move	t3,t2
bfc0639c:	24180018 	li	t8,24
bfc063a0:	15781710 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc063a4:	00000000 	nop
bfc063a8:	34090004 	li	t1,0x4
bfc063ac:	34080006 	li	t0,0x6
bfc063b0:	71095002 	mul	t2,t0,t1
bfc063b4:	340d4444 	li	t5,0x4444
bfc063b8:	340c3333 	li	t4,0x3333
bfc063bc:	340e2222 	li	t6,0x2222
bfc063c0:	01405825 	move	t3,t2
bfc063c4:	24180018 	li	t8,24
bfc063c8:	15781706 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc063cc:	00000000 	nop
bfc063d0:	34080006 	li	t0,0x6
bfc063d4:	34090004 	li	t1,0x4
bfc063d8:	71095002 	mul	t2,t0,t1
bfc063dc:	000a5825 	or	t3,zero,t2
bfc063e0:	24180018 	li	t8,24
bfc063e4:	157816ff 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc063e8:	00000000 	nop
bfc063ec:	34090004 	li	t1,0x4
bfc063f0:	34080006 	li	t0,0x6
bfc063f4:	71095002 	mul	t2,t0,t1
bfc063f8:	340c3333 	li	t4,0x3333
bfc063fc:	000a5825 	or	t3,zero,t2
bfc06400:	24180018 	li	t8,24
bfc06404:	157816f7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06408:	00000000 	nop
bfc0640c:	34090004 	li	t1,0x4
bfc06410:	34080006 	li	t0,0x6
bfc06414:	71095002 	mul	t2,t0,t1
bfc06418:	340d4444 	li	t5,0x4444
bfc0641c:	340c3333 	li	t4,0x3333
bfc06420:	000a5825 	or	t3,zero,t2
bfc06424:	24180018 	li	t8,24
bfc06428:	157816ee 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0642c:	00000000 	nop
bfc06430:	34090004 	li	t1,0x4
bfc06434:	34080006 	li	t0,0x6
bfc06438:	71095002 	mul	t2,t0,t1
bfc0643c:	340d4444 	li	t5,0x4444
bfc06440:	340c3333 	li	t4,0x3333
bfc06444:	340e2222 	li	t6,0x2222
bfc06448:	000a5825 	or	t3,zero,t2
bfc0644c:	24180018 	li	t8,24
bfc06450:	157816e4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06454:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:54
bfc06458:	34090004 	li	t1,0x4
bfc0645c:	34080007 	li	t0,0x7
bfc06460:	71095002 	mul	t2,t0,t1
bfc06464:	2418001c 	li	t8,28
bfc06468:	155816de 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0646c:	00000000 	nop
bfc06470:	34080007 	li	t0,0x7
bfc06474:	34090004 	li	t1,0x4
bfc06478:	71095002 	mul	t2,t0,t1
bfc0647c:	2418001c 	li	t8,28
bfc06480:	155816d8 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06484:	00000000 	nop
bfc06488:	34080007 	li	t0,0x7
bfc0648c:	34090004 	li	t1,0x4
bfc06490:	340a8888 	li	t2,0x8888
bfc06494:	71095802 	mul	t3,t0,t1
bfc06498:	2418001c 	li	t8,28
bfc0649c:	157816d1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc064a0:	00000000 	nop
bfc064a4:	34080007 	li	t0,0x7
bfc064a8:	340c4444 	li	t4,0x4444
bfc064ac:	34090004 	li	t1,0x4
bfc064b0:	340a8888 	li	t2,0x8888
bfc064b4:	71095802 	mul	t3,t0,t1
bfc064b8:	2418001c 	li	t8,28
bfc064bc:	157816c9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc064c0:	00000000 	nop
bfc064c4:	34080007 	li	t0,0x7
bfc064c8:	34090004 	li	t1,0x4
bfc064cc:	71095002 	mul	t2,t0,t1
bfc064d0:	2418001c 	li	t8,28
bfc064d4:	155816c3 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc064d8:	00000000 	nop
bfc064dc:	34090004 	li	t1,0x4
bfc064e0:	34080007 	li	t0,0x7
bfc064e4:	71095002 	mul	t2,t0,t1
bfc064e8:	2418001c 	li	t8,28
bfc064ec:	155816bd 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc064f0:	00000000 	nop
bfc064f4:	34090004 	li	t1,0x4
bfc064f8:	34080007 	li	t0,0x7
bfc064fc:	340a8888 	li	t2,0x8888
bfc06500:	71095802 	mul	t3,t0,t1
bfc06504:	2418001c 	li	t8,28
bfc06508:	157816b6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0650c:	00000000 	nop
bfc06510:	34090004 	li	t1,0x4
bfc06514:	340c4444 	li	t4,0x4444
bfc06518:	34080007 	li	t0,0x7
bfc0651c:	340a8888 	li	t2,0x8888
bfc06520:	71095802 	mul	t3,t0,t1
bfc06524:	2418001c 	li	t8,28
bfc06528:	157816ae 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0652c:	00000000 	nop
bfc06530:	34080007 	li	t0,0x7
bfc06534:	34090004 	li	t1,0x4
bfc06538:	71095002 	mul	t2,t0,t1
bfc0653c:	01405825 	move	t3,t2
bfc06540:	2418001c 	li	t8,28
bfc06544:	157816a7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06548:	00000000 	nop
bfc0654c:	34090004 	li	t1,0x4
bfc06550:	34080007 	li	t0,0x7
bfc06554:	71095002 	mul	t2,t0,t1
bfc06558:	340c3333 	li	t4,0x3333
bfc0655c:	01405825 	move	t3,t2
bfc06560:	2418001c 	li	t8,28
bfc06564:	1578169f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06568:	00000000 	nop
bfc0656c:	34090004 	li	t1,0x4
bfc06570:	34080007 	li	t0,0x7
bfc06574:	71095002 	mul	t2,t0,t1
bfc06578:	340d4444 	li	t5,0x4444
bfc0657c:	340c3333 	li	t4,0x3333
bfc06580:	01405825 	move	t3,t2
bfc06584:	2418001c 	li	t8,28
bfc06588:	15781696 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0658c:	00000000 	nop
bfc06590:	34090004 	li	t1,0x4
bfc06594:	34080007 	li	t0,0x7
bfc06598:	71095002 	mul	t2,t0,t1
bfc0659c:	340d4444 	li	t5,0x4444
bfc065a0:	340c3333 	li	t4,0x3333
bfc065a4:	340e2222 	li	t6,0x2222
bfc065a8:	01405825 	move	t3,t2
bfc065ac:	2418001c 	li	t8,28
bfc065b0:	1578168c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc065b4:	00000000 	nop
bfc065b8:	34080007 	li	t0,0x7
bfc065bc:	34090004 	li	t1,0x4
bfc065c0:	71095002 	mul	t2,t0,t1
bfc065c4:	000a5825 	or	t3,zero,t2
bfc065c8:	2418001c 	li	t8,28
bfc065cc:	15781685 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc065d0:	00000000 	nop
bfc065d4:	34090004 	li	t1,0x4
bfc065d8:	34080007 	li	t0,0x7
bfc065dc:	71095002 	mul	t2,t0,t1
bfc065e0:	340c3333 	li	t4,0x3333
bfc065e4:	000a5825 	or	t3,zero,t2
bfc065e8:	2418001c 	li	t8,28
bfc065ec:	1578167d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc065f0:	00000000 	nop
bfc065f4:	34090004 	li	t1,0x4
bfc065f8:	34080007 	li	t0,0x7
bfc065fc:	71095002 	mul	t2,t0,t1
bfc06600:	340d4444 	li	t5,0x4444
bfc06604:	340c3333 	li	t4,0x3333
bfc06608:	000a5825 	or	t3,zero,t2
bfc0660c:	2418001c 	li	t8,28
bfc06610:	15781674 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06614:	00000000 	nop
bfc06618:	34090004 	li	t1,0x4
bfc0661c:	34080007 	li	t0,0x7
bfc06620:	71095002 	mul	t2,t0,t1
bfc06624:	340d4444 	li	t5,0x4444
bfc06628:	340c3333 	li	t4,0x3333
bfc0662c:	340e2222 	li	t6,0x2222
bfc06630:	000a5825 	or	t3,zero,t2
bfc06634:	2418001c 	li	t8,28
bfc06638:	1578166a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0663c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:55
bfc06640:	34090004 	li	t1,0x4
bfc06644:	34080008 	li	t0,0x8
bfc06648:	71095002 	mul	t2,t0,t1
bfc0664c:	24180020 	li	t8,32
bfc06650:	15581664 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06654:	00000000 	nop
bfc06658:	34080008 	li	t0,0x8
bfc0665c:	34090004 	li	t1,0x4
bfc06660:	71095002 	mul	t2,t0,t1
bfc06664:	24180020 	li	t8,32
bfc06668:	1558165e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0666c:	00000000 	nop
bfc06670:	34080008 	li	t0,0x8
bfc06674:	34090004 	li	t1,0x4
bfc06678:	340a8888 	li	t2,0x8888
bfc0667c:	71095802 	mul	t3,t0,t1
bfc06680:	24180020 	li	t8,32
bfc06684:	15781657 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06688:	00000000 	nop
bfc0668c:	34080008 	li	t0,0x8
bfc06690:	340c4444 	li	t4,0x4444
bfc06694:	34090004 	li	t1,0x4
bfc06698:	340a8888 	li	t2,0x8888
bfc0669c:	71095802 	mul	t3,t0,t1
bfc066a0:	24180020 	li	t8,32
bfc066a4:	1578164f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc066a8:	00000000 	nop
bfc066ac:	34080008 	li	t0,0x8
bfc066b0:	34090004 	li	t1,0x4
bfc066b4:	71095002 	mul	t2,t0,t1
bfc066b8:	24180020 	li	t8,32
bfc066bc:	15581649 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc066c0:	00000000 	nop
bfc066c4:	34090004 	li	t1,0x4
bfc066c8:	34080008 	li	t0,0x8
bfc066cc:	71095002 	mul	t2,t0,t1
bfc066d0:	24180020 	li	t8,32
bfc066d4:	15581643 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc066d8:	00000000 	nop
bfc066dc:	34090004 	li	t1,0x4
bfc066e0:	34080008 	li	t0,0x8
bfc066e4:	340a8888 	li	t2,0x8888
bfc066e8:	71095802 	mul	t3,t0,t1
bfc066ec:	24180020 	li	t8,32
bfc066f0:	1578163c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc066f4:	00000000 	nop
bfc066f8:	34090004 	li	t1,0x4
bfc066fc:	340c4444 	li	t4,0x4444
bfc06700:	34080008 	li	t0,0x8
bfc06704:	340a8888 	li	t2,0x8888
bfc06708:	71095802 	mul	t3,t0,t1
bfc0670c:	24180020 	li	t8,32
bfc06710:	15781634 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06714:	00000000 	nop
bfc06718:	34080008 	li	t0,0x8
bfc0671c:	34090004 	li	t1,0x4
bfc06720:	71095002 	mul	t2,t0,t1
bfc06724:	01405825 	move	t3,t2
bfc06728:	24180020 	li	t8,32
bfc0672c:	1578162d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06730:	00000000 	nop
bfc06734:	34090004 	li	t1,0x4
bfc06738:	34080008 	li	t0,0x8
bfc0673c:	71095002 	mul	t2,t0,t1
bfc06740:	340c3333 	li	t4,0x3333
bfc06744:	01405825 	move	t3,t2
bfc06748:	24180020 	li	t8,32
bfc0674c:	15781625 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06750:	00000000 	nop
bfc06754:	34090004 	li	t1,0x4
bfc06758:	34080008 	li	t0,0x8
bfc0675c:	71095002 	mul	t2,t0,t1
bfc06760:	340d4444 	li	t5,0x4444
bfc06764:	340c3333 	li	t4,0x3333
bfc06768:	01405825 	move	t3,t2
bfc0676c:	24180020 	li	t8,32
bfc06770:	1578161c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06774:	00000000 	nop
bfc06778:	34090004 	li	t1,0x4
bfc0677c:	34080008 	li	t0,0x8
bfc06780:	71095002 	mul	t2,t0,t1
bfc06784:	340d4444 	li	t5,0x4444
bfc06788:	340c3333 	li	t4,0x3333
bfc0678c:	340e2222 	li	t6,0x2222
bfc06790:	01405825 	move	t3,t2
bfc06794:	24180020 	li	t8,32
bfc06798:	15781612 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0679c:	00000000 	nop
bfc067a0:	34080008 	li	t0,0x8
bfc067a4:	34090004 	li	t1,0x4
bfc067a8:	71095002 	mul	t2,t0,t1
bfc067ac:	000a5825 	or	t3,zero,t2
bfc067b0:	24180020 	li	t8,32
bfc067b4:	1578160b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc067b8:	00000000 	nop
bfc067bc:	34090004 	li	t1,0x4
bfc067c0:	34080008 	li	t0,0x8
bfc067c4:	71095002 	mul	t2,t0,t1
bfc067c8:	340c3333 	li	t4,0x3333
bfc067cc:	000a5825 	or	t3,zero,t2
bfc067d0:	24180020 	li	t8,32
bfc067d4:	15781603 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc067d8:	00000000 	nop
bfc067dc:	34090004 	li	t1,0x4
bfc067e0:	34080008 	li	t0,0x8
bfc067e4:	71095002 	mul	t2,t0,t1
bfc067e8:	340d4444 	li	t5,0x4444
bfc067ec:	340c3333 	li	t4,0x3333
bfc067f0:	000a5825 	or	t3,zero,t2
bfc067f4:	24180020 	li	t8,32
bfc067f8:	157815fa 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc067fc:	00000000 	nop
bfc06800:	34090004 	li	t1,0x4
bfc06804:	34080008 	li	t0,0x8
bfc06808:	71095002 	mul	t2,t0,t1
bfc0680c:	340d4444 	li	t5,0x4444
bfc06810:	340c3333 	li	t4,0x3333
bfc06814:	340e2222 	li	t6,0x2222
bfc06818:	000a5825 	or	t3,zero,t2
bfc0681c:	24180020 	li	t8,32
bfc06820:	157815f0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06824:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:56
bfc06828:	34090004 	li	t1,0x4
bfc0682c:	34080009 	li	t0,0x9
bfc06830:	71095002 	mul	t2,t0,t1
bfc06834:	24180024 	li	t8,36
bfc06838:	155815ea 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0683c:	00000000 	nop
bfc06840:	34080009 	li	t0,0x9
bfc06844:	34090004 	li	t1,0x4
bfc06848:	71095002 	mul	t2,t0,t1
bfc0684c:	24180024 	li	t8,36
bfc06850:	155815e4 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06854:	00000000 	nop
bfc06858:	34080009 	li	t0,0x9
bfc0685c:	34090004 	li	t1,0x4
bfc06860:	340a8888 	li	t2,0x8888
bfc06864:	71095802 	mul	t3,t0,t1
bfc06868:	24180024 	li	t8,36
bfc0686c:	157815dd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06870:	00000000 	nop
bfc06874:	34080009 	li	t0,0x9
bfc06878:	340c4444 	li	t4,0x4444
bfc0687c:	34090004 	li	t1,0x4
bfc06880:	340a8888 	li	t2,0x8888
bfc06884:	71095802 	mul	t3,t0,t1
bfc06888:	24180024 	li	t8,36
bfc0688c:	157815d5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06890:	00000000 	nop
bfc06894:	34080009 	li	t0,0x9
bfc06898:	34090004 	li	t1,0x4
bfc0689c:	71095002 	mul	t2,t0,t1
bfc068a0:	24180024 	li	t8,36
bfc068a4:	155815cf 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc068a8:	00000000 	nop
bfc068ac:	34090004 	li	t1,0x4
bfc068b0:	34080009 	li	t0,0x9
bfc068b4:	71095002 	mul	t2,t0,t1
bfc068b8:	24180024 	li	t8,36
bfc068bc:	155815c9 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc068c0:	00000000 	nop
bfc068c4:	34090004 	li	t1,0x4
bfc068c8:	34080009 	li	t0,0x9
bfc068cc:	340a8888 	li	t2,0x8888
bfc068d0:	71095802 	mul	t3,t0,t1
bfc068d4:	24180024 	li	t8,36
bfc068d8:	157815c2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc068dc:	00000000 	nop
bfc068e0:	34090004 	li	t1,0x4
bfc068e4:	340c4444 	li	t4,0x4444
bfc068e8:	34080009 	li	t0,0x9
bfc068ec:	340a8888 	li	t2,0x8888
bfc068f0:	71095802 	mul	t3,t0,t1
bfc068f4:	24180024 	li	t8,36
bfc068f8:	157815ba 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc068fc:	00000000 	nop
bfc06900:	34080009 	li	t0,0x9
bfc06904:	34090004 	li	t1,0x4
bfc06908:	71095002 	mul	t2,t0,t1
bfc0690c:	01405825 	move	t3,t2
bfc06910:	24180024 	li	t8,36
bfc06914:	157815b3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06918:	00000000 	nop
bfc0691c:	34090004 	li	t1,0x4
bfc06920:	34080009 	li	t0,0x9
bfc06924:	71095002 	mul	t2,t0,t1
bfc06928:	340c3333 	li	t4,0x3333
bfc0692c:	01405825 	move	t3,t2
bfc06930:	24180024 	li	t8,36
bfc06934:	157815ab 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06938:	00000000 	nop
bfc0693c:	34090004 	li	t1,0x4
bfc06940:	34080009 	li	t0,0x9
bfc06944:	71095002 	mul	t2,t0,t1
bfc06948:	340d4444 	li	t5,0x4444
bfc0694c:	340c3333 	li	t4,0x3333
bfc06950:	01405825 	move	t3,t2
bfc06954:	24180024 	li	t8,36
bfc06958:	157815a2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0695c:	00000000 	nop
bfc06960:	34090004 	li	t1,0x4
bfc06964:	34080009 	li	t0,0x9
bfc06968:	71095002 	mul	t2,t0,t1
bfc0696c:	340d4444 	li	t5,0x4444
bfc06970:	340c3333 	li	t4,0x3333
bfc06974:	340e2222 	li	t6,0x2222
bfc06978:	01405825 	move	t3,t2
bfc0697c:	24180024 	li	t8,36
bfc06980:	15781598 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06984:	00000000 	nop
bfc06988:	34080009 	li	t0,0x9
bfc0698c:	34090004 	li	t1,0x4
bfc06990:	71095002 	mul	t2,t0,t1
bfc06994:	000a5825 	or	t3,zero,t2
bfc06998:	24180024 	li	t8,36
bfc0699c:	15781591 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc069a0:	00000000 	nop
bfc069a4:	34090004 	li	t1,0x4
bfc069a8:	34080009 	li	t0,0x9
bfc069ac:	71095002 	mul	t2,t0,t1
bfc069b0:	340c3333 	li	t4,0x3333
bfc069b4:	000a5825 	or	t3,zero,t2
bfc069b8:	24180024 	li	t8,36
bfc069bc:	15781589 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc069c0:	00000000 	nop
bfc069c4:	34090004 	li	t1,0x4
bfc069c8:	34080009 	li	t0,0x9
bfc069cc:	71095002 	mul	t2,t0,t1
bfc069d0:	340d4444 	li	t5,0x4444
bfc069d4:	340c3333 	li	t4,0x3333
bfc069d8:	000a5825 	or	t3,zero,t2
bfc069dc:	24180024 	li	t8,36
bfc069e0:	15781580 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc069e4:	00000000 	nop
bfc069e8:	34090004 	li	t1,0x4
bfc069ec:	34080009 	li	t0,0x9
bfc069f0:	71095002 	mul	t2,t0,t1
bfc069f4:	340d4444 	li	t5,0x4444
bfc069f8:	340c3333 	li	t4,0x3333
bfc069fc:	340e2222 	li	t6,0x2222
bfc06a00:	000a5825 	or	t3,zero,t2
bfc06a04:	24180024 	li	t8,36
bfc06a08:	15781576 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06a0c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:57
bfc06a10:	34090005 	li	t1,0x5
bfc06a14:	34080001 	li	t0,0x1
bfc06a18:	71095002 	mul	t2,t0,t1
bfc06a1c:	24180005 	li	t8,5
bfc06a20:	15581570 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06a24:	00000000 	nop
bfc06a28:	34080001 	li	t0,0x1
bfc06a2c:	34090005 	li	t1,0x5
bfc06a30:	71095002 	mul	t2,t0,t1
bfc06a34:	24180005 	li	t8,5
bfc06a38:	1558156a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06a3c:	00000000 	nop
bfc06a40:	34080001 	li	t0,0x1
bfc06a44:	34090005 	li	t1,0x5
bfc06a48:	340a8888 	li	t2,0x8888
bfc06a4c:	71095802 	mul	t3,t0,t1
bfc06a50:	24180005 	li	t8,5
bfc06a54:	15781563 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06a58:	00000000 	nop
bfc06a5c:	34080001 	li	t0,0x1
bfc06a60:	340c4444 	li	t4,0x4444
bfc06a64:	34090005 	li	t1,0x5
bfc06a68:	340a8888 	li	t2,0x8888
bfc06a6c:	71095802 	mul	t3,t0,t1
bfc06a70:	24180005 	li	t8,5
bfc06a74:	1578155b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06a78:	00000000 	nop
bfc06a7c:	34080001 	li	t0,0x1
bfc06a80:	34090005 	li	t1,0x5
bfc06a84:	71095002 	mul	t2,t0,t1
bfc06a88:	24180005 	li	t8,5
bfc06a8c:	15581555 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06a90:	00000000 	nop
bfc06a94:	34090005 	li	t1,0x5
bfc06a98:	34080001 	li	t0,0x1
bfc06a9c:	71095002 	mul	t2,t0,t1
bfc06aa0:	24180005 	li	t8,5
bfc06aa4:	1558154f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06aa8:	00000000 	nop
bfc06aac:	34090005 	li	t1,0x5
bfc06ab0:	34080001 	li	t0,0x1
bfc06ab4:	340a8888 	li	t2,0x8888
bfc06ab8:	71095802 	mul	t3,t0,t1
bfc06abc:	24180005 	li	t8,5
bfc06ac0:	15781548 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06ac4:	00000000 	nop
bfc06ac8:	34090005 	li	t1,0x5
bfc06acc:	340c4444 	li	t4,0x4444
bfc06ad0:	34080001 	li	t0,0x1
bfc06ad4:	340a8888 	li	t2,0x8888
bfc06ad8:	71095802 	mul	t3,t0,t1
bfc06adc:	24180005 	li	t8,5
bfc06ae0:	15781540 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06ae4:	00000000 	nop
bfc06ae8:	34080001 	li	t0,0x1
bfc06aec:	34090005 	li	t1,0x5
bfc06af0:	71095002 	mul	t2,t0,t1
bfc06af4:	01405825 	move	t3,t2
bfc06af8:	24180005 	li	t8,5
bfc06afc:	15781539 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06b00:	00000000 	nop
bfc06b04:	34090005 	li	t1,0x5
bfc06b08:	34080001 	li	t0,0x1
bfc06b0c:	71095002 	mul	t2,t0,t1
bfc06b10:	340c3333 	li	t4,0x3333
bfc06b14:	01405825 	move	t3,t2
bfc06b18:	24180005 	li	t8,5
bfc06b1c:	15781531 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06b20:	00000000 	nop
bfc06b24:	34090005 	li	t1,0x5
bfc06b28:	34080001 	li	t0,0x1
bfc06b2c:	71095002 	mul	t2,t0,t1
bfc06b30:	340d4444 	li	t5,0x4444
bfc06b34:	340c3333 	li	t4,0x3333
bfc06b38:	01405825 	move	t3,t2
bfc06b3c:	24180005 	li	t8,5
bfc06b40:	15781528 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06b44:	00000000 	nop
bfc06b48:	34090005 	li	t1,0x5
bfc06b4c:	34080001 	li	t0,0x1
bfc06b50:	71095002 	mul	t2,t0,t1
bfc06b54:	340d4444 	li	t5,0x4444
bfc06b58:	340c3333 	li	t4,0x3333
bfc06b5c:	340e2222 	li	t6,0x2222
bfc06b60:	01405825 	move	t3,t2
bfc06b64:	24180005 	li	t8,5
bfc06b68:	1578151e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06b6c:	00000000 	nop
bfc06b70:	34080001 	li	t0,0x1
bfc06b74:	34090005 	li	t1,0x5
bfc06b78:	71095002 	mul	t2,t0,t1
bfc06b7c:	000a5825 	or	t3,zero,t2
bfc06b80:	24180005 	li	t8,5
bfc06b84:	15781517 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06b88:	00000000 	nop
bfc06b8c:	34090005 	li	t1,0x5
bfc06b90:	34080001 	li	t0,0x1
bfc06b94:	71095002 	mul	t2,t0,t1
bfc06b98:	340c3333 	li	t4,0x3333
bfc06b9c:	000a5825 	or	t3,zero,t2
bfc06ba0:	24180005 	li	t8,5
bfc06ba4:	1578150f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06ba8:	00000000 	nop
bfc06bac:	34090005 	li	t1,0x5
bfc06bb0:	34080001 	li	t0,0x1
bfc06bb4:	71095002 	mul	t2,t0,t1
bfc06bb8:	340d4444 	li	t5,0x4444
bfc06bbc:	340c3333 	li	t4,0x3333
bfc06bc0:	000a5825 	or	t3,zero,t2
bfc06bc4:	24180005 	li	t8,5
bfc06bc8:	15781506 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06bcc:	00000000 	nop
bfc06bd0:	34090005 	li	t1,0x5
bfc06bd4:	34080001 	li	t0,0x1
bfc06bd8:	71095002 	mul	t2,t0,t1
bfc06bdc:	340d4444 	li	t5,0x4444
bfc06be0:	340c3333 	li	t4,0x3333
bfc06be4:	340e2222 	li	t6,0x2222
bfc06be8:	000a5825 	or	t3,zero,t2
bfc06bec:	24180005 	li	t8,5
bfc06bf0:	157814fc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06bf4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:58
bfc06bf8:	34090005 	li	t1,0x5
bfc06bfc:	34080002 	li	t0,0x2
bfc06c00:	71095002 	mul	t2,t0,t1
bfc06c04:	2418000a 	li	t8,10
bfc06c08:	155814f6 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06c0c:	00000000 	nop
bfc06c10:	34080002 	li	t0,0x2
bfc06c14:	34090005 	li	t1,0x5
bfc06c18:	71095002 	mul	t2,t0,t1
bfc06c1c:	2418000a 	li	t8,10
bfc06c20:	155814f0 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06c24:	00000000 	nop
bfc06c28:	34080002 	li	t0,0x2
bfc06c2c:	34090005 	li	t1,0x5
bfc06c30:	340a8888 	li	t2,0x8888
bfc06c34:	71095802 	mul	t3,t0,t1
bfc06c38:	2418000a 	li	t8,10
bfc06c3c:	157814e9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06c40:	00000000 	nop
bfc06c44:	34080002 	li	t0,0x2
bfc06c48:	340c4444 	li	t4,0x4444
bfc06c4c:	34090005 	li	t1,0x5
bfc06c50:	340a8888 	li	t2,0x8888
bfc06c54:	71095802 	mul	t3,t0,t1
bfc06c58:	2418000a 	li	t8,10
bfc06c5c:	157814e1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06c60:	00000000 	nop
bfc06c64:	34080002 	li	t0,0x2
bfc06c68:	34090005 	li	t1,0x5
bfc06c6c:	71095002 	mul	t2,t0,t1
bfc06c70:	2418000a 	li	t8,10
bfc06c74:	155814db 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06c78:	00000000 	nop
bfc06c7c:	34090005 	li	t1,0x5
bfc06c80:	34080002 	li	t0,0x2
bfc06c84:	71095002 	mul	t2,t0,t1
bfc06c88:	2418000a 	li	t8,10
bfc06c8c:	155814d5 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06c90:	00000000 	nop
bfc06c94:	34090005 	li	t1,0x5
bfc06c98:	34080002 	li	t0,0x2
bfc06c9c:	340a8888 	li	t2,0x8888
bfc06ca0:	71095802 	mul	t3,t0,t1
bfc06ca4:	2418000a 	li	t8,10
bfc06ca8:	157814ce 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06cac:	00000000 	nop
bfc06cb0:	34090005 	li	t1,0x5
bfc06cb4:	340c4444 	li	t4,0x4444
bfc06cb8:	34080002 	li	t0,0x2
bfc06cbc:	340a8888 	li	t2,0x8888
bfc06cc0:	71095802 	mul	t3,t0,t1
bfc06cc4:	2418000a 	li	t8,10
bfc06cc8:	157814c6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06ccc:	00000000 	nop
bfc06cd0:	34080002 	li	t0,0x2
bfc06cd4:	34090005 	li	t1,0x5
bfc06cd8:	71095002 	mul	t2,t0,t1
bfc06cdc:	01405825 	move	t3,t2
bfc06ce0:	2418000a 	li	t8,10
bfc06ce4:	157814bf 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06ce8:	00000000 	nop
bfc06cec:	34090005 	li	t1,0x5
bfc06cf0:	34080002 	li	t0,0x2
bfc06cf4:	71095002 	mul	t2,t0,t1
bfc06cf8:	340c3333 	li	t4,0x3333
bfc06cfc:	01405825 	move	t3,t2
bfc06d00:	2418000a 	li	t8,10
bfc06d04:	157814b7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06d08:	00000000 	nop
bfc06d0c:	34090005 	li	t1,0x5
bfc06d10:	34080002 	li	t0,0x2
bfc06d14:	71095002 	mul	t2,t0,t1
bfc06d18:	340d4444 	li	t5,0x4444
bfc06d1c:	340c3333 	li	t4,0x3333
bfc06d20:	01405825 	move	t3,t2
bfc06d24:	2418000a 	li	t8,10
bfc06d28:	157814ae 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06d2c:	00000000 	nop
bfc06d30:	34090005 	li	t1,0x5
bfc06d34:	34080002 	li	t0,0x2
bfc06d38:	71095002 	mul	t2,t0,t1
bfc06d3c:	340d4444 	li	t5,0x4444
bfc06d40:	340c3333 	li	t4,0x3333
bfc06d44:	340e2222 	li	t6,0x2222
bfc06d48:	01405825 	move	t3,t2
bfc06d4c:	2418000a 	li	t8,10
bfc06d50:	157814a4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06d54:	00000000 	nop
bfc06d58:	34080002 	li	t0,0x2
bfc06d5c:	34090005 	li	t1,0x5
bfc06d60:	71095002 	mul	t2,t0,t1
bfc06d64:	000a5825 	or	t3,zero,t2
bfc06d68:	2418000a 	li	t8,10
bfc06d6c:	1578149d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06d70:	00000000 	nop
bfc06d74:	34090005 	li	t1,0x5
bfc06d78:	34080002 	li	t0,0x2
bfc06d7c:	71095002 	mul	t2,t0,t1
bfc06d80:	340c3333 	li	t4,0x3333
bfc06d84:	000a5825 	or	t3,zero,t2
bfc06d88:	2418000a 	li	t8,10
bfc06d8c:	15781495 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06d90:	00000000 	nop
bfc06d94:	34090005 	li	t1,0x5
bfc06d98:	34080002 	li	t0,0x2
bfc06d9c:	71095002 	mul	t2,t0,t1
bfc06da0:	340d4444 	li	t5,0x4444
bfc06da4:	340c3333 	li	t4,0x3333
bfc06da8:	000a5825 	or	t3,zero,t2
bfc06dac:	2418000a 	li	t8,10
bfc06db0:	1578148c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06db4:	00000000 	nop
bfc06db8:	34090005 	li	t1,0x5
bfc06dbc:	34080002 	li	t0,0x2
bfc06dc0:	71095002 	mul	t2,t0,t1
bfc06dc4:	340d4444 	li	t5,0x4444
bfc06dc8:	340c3333 	li	t4,0x3333
bfc06dcc:	340e2222 	li	t6,0x2222
bfc06dd0:	000a5825 	or	t3,zero,t2
bfc06dd4:	2418000a 	li	t8,10
bfc06dd8:	15781482 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06ddc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:59
bfc06de0:	34090005 	li	t1,0x5
bfc06de4:	34080003 	li	t0,0x3
bfc06de8:	71095002 	mul	t2,t0,t1
bfc06dec:	2418000f 	li	t8,15
bfc06df0:	1558147c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06df4:	00000000 	nop
bfc06df8:	34080003 	li	t0,0x3
bfc06dfc:	34090005 	li	t1,0x5
bfc06e00:	71095002 	mul	t2,t0,t1
bfc06e04:	2418000f 	li	t8,15
bfc06e08:	15581476 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06e0c:	00000000 	nop
bfc06e10:	34080003 	li	t0,0x3
bfc06e14:	34090005 	li	t1,0x5
bfc06e18:	340a8888 	li	t2,0x8888
bfc06e1c:	71095802 	mul	t3,t0,t1
bfc06e20:	2418000f 	li	t8,15
bfc06e24:	1578146f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06e28:	00000000 	nop
bfc06e2c:	34080003 	li	t0,0x3
bfc06e30:	340c4444 	li	t4,0x4444
bfc06e34:	34090005 	li	t1,0x5
bfc06e38:	340a8888 	li	t2,0x8888
bfc06e3c:	71095802 	mul	t3,t0,t1
bfc06e40:	2418000f 	li	t8,15
bfc06e44:	15781467 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06e48:	00000000 	nop
bfc06e4c:	34080003 	li	t0,0x3
bfc06e50:	34090005 	li	t1,0x5
bfc06e54:	71095002 	mul	t2,t0,t1
bfc06e58:	2418000f 	li	t8,15
bfc06e5c:	15581461 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06e60:	00000000 	nop
bfc06e64:	34090005 	li	t1,0x5
bfc06e68:	34080003 	li	t0,0x3
bfc06e6c:	71095002 	mul	t2,t0,t1
bfc06e70:	2418000f 	li	t8,15
bfc06e74:	1558145b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06e78:	00000000 	nop
bfc06e7c:	34090005 	li	t1,0x5
bfc06e80:	34080003 	li	t0,0x3
bfc06e84:	340a8888 	li	t2,0x8888
bfc06e88:	71095802 	mul	t3,t0,t1
bfc06e8c:	2418000f 	li	t8,15
bfc06e90:	15781454 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06e94:	00000000 	nop
bfc06e98:	34090005 	li	t1,0x5
bfc06e9c:	340c4444 	li	t4,0x4444
bfc06ea0:	34080003 	li	t0,0x3
bfc06ea4:	340a8888 	li	t2,0x8888
bfc06ea8:	71095802 	mul	t3,t0,t1
bfc06eac:	2418000f 	li	t8,15
bfc06eb0:	1578144c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06eb4:	00000000 	nop
bfc06eb8:	34080003 	li	t0,0x3
bfc06ebc:	34090005 	li	t1,0x5
bfc06ec0:	71095002 	mul	t2,t0,t1
bfc06ec4:	01405825 	move	t3,t2
bfc06ec8:	2418000f 	li	t8,15
bfc06ecc:	15781445 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06ed0:	00000000 	nop
bfc06ed4:	34090005 	li	t1,0x5
bfc06ed8:	34080003 	li	t0,0x3
bfc06edc:	71095002 	mul	t2,t0,t1
bfc06ee0:	340c3333 	li	t4,0x3333
bfc06ee4:	01405825 	move	t3,t2
bfc06ee8:	2418000f 	li	t8,15
bfc06eec:	1578143d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06ef0:	00000000 	nop
bfc06ef4:	34090005 	li	t1,0x5
bfc06ef8:	34080003 	li	t0,0x3
bfc06efc:	71095002 	mul	t2,t0,t1
bfc06f00:	340d4444 	li	t5,0x4444
bfc06f04:	340c3333 	li	t4,0x3333
bfc06f08:	01405825 	move	t3,t2
bfc06f0c:	2418000f 	li	t8,15
bfc06f10:	15781434 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06f14:	00000000 	nop
bfc06f18:	34090005 	li	t1,0x5
bfc06f1c:	34080003 	li	t0,0x3
bfc06f20:	71095002 	mul	t2,t0,t1
bfc06f24:	340d4444 	li	t5,0x4444
bfc06f28:	340c3333 	li	t4,0x3333
bfc06f2c:	340e2222 	li	t6,0x2222
bfc06f30:	01405825 	move	t3,t2
bfc06f34:	2418000f 	li	t8,15
bfc06f38:	1578142a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06f3c:	00000000 	nop
bfc06f40:	34080003 	li	t0,0x3
bfc06f44:	34090005 	li	t1,0x5
bfc06f48:	71095002 	mul	t2,t0,t1
bfc06f4c:	000a5825 	or	t3,zero,t2
bfc06f50:	2418000f 	li	t8,15
bfc06f54:	15781423 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06f58:	00000000 	nop
bfc06f5c:	34090005 	li	t1,0x5
bfc06f60:	34080003 	li	t0,0x3
bfc06f64:	71095002 	mul	t2,t0,t1
bfc06f68:	340c3333 	li	t4,0x3333
bfc06f6c:	000a5825 	or	t3,zero,t2
bfc06f70:	2418000f 	li	t8,15
bfc06f74:	1578141b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06f78:	00000000 	nop
bfc06f7c:	34090005 	li	t1,0x5
bfc06f80:	34080003 	li	t0,0x3
bfc06f84:	71095002 	mul	t2,t0,t1
bfc06f88:	340d4444 	li	t5,0x4444
bfc06f8c:	340c3333 	li	t4,0x3333
bfc06f90:	000a5825 	or	t3,zero,t2
bfc06f94:	2418000f 	li	t8,15
bfc06f98:	15781412 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06f9c:	00000000 	nop
bfc06fa0:	34090005 	li	t1,0x5
bfc06fa4:	34080003 	li	t0,0x3
bfc06fa8:	71095002 	mul	t2,t0,t1
bfc06fac:	340d4444 	li	t5,0x4444
bfc06fb0:	340c3333 	li	t4,0x3333
bfc06fb4:	340e2222 	li	t6,0x2222
bfc06fb8:	000a5825 	or	t3,zero,t2
bfc06fbc:	2418000f 	li	t8,15
bfc06fc0:	15781408 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc06fc4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:60
bfc06fc8:	34090005 	li	t1,0x5
bfc06fcc:	34080004 	li	t0,0x4
bfc06fd0:	71095002 	mul	t2,t0,t1
bfc06fd4:	24180014 	li	t8,20
bfc06fd8:	15581402 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06fdc:	00000000 	nop
bfc06fe0:	34080004 	li	t0,0x4
bfc06fe4:	34090005 	li	t1,0x5
bfc06fe8:	71095002 	mul	t2,t0,t1
bfc06fec:	24180014 	li	t8,20
bfc06ff0:	155813fc 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc06ff4:	00000000 	nop
bfc06ff8:	34080004 	li	t0,0x4
bfc06ffc:	34090005 	li	t1,0x5
bfc07000:	340a8888 	li	t2,0x8888
bfc07004:	71095802 	mul	t3,t0,t1
bfc07008:	24180014 	li	t8,20
bfc0700c:	157813f5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07010:	00000000 	nop
bfc07014:	34080004 	li	t0,0x4
bfc07018:	340c4444 	li	t4,0x4444
bfc0701c:	34090005 	li	t1,0x5
bfc07020:	340a8888 	li	t2,0x8888
bfc07024:	71095802 	mul	t3,t0,t1
bfc07028:	24180014 	li	t8,20
bfc0702c:	157813ed 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07030:	00000000 	nop
bfc07034:	34080004 	li	t0,0x4
bfc07038:	34090005 	li	t1,0x5
bfc0703c:	71095002 	mul	t2,t0,t1
bfc07040:	24180014 	li	t8,20
bfc07044:	155813e7 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07048:	00000000 	nop
bfc0704c:	34090005 	li	t1,0x5
bfc07050:	34080004 	li	t0,0x4
bfc07054:	71095002 	mul	t2,t0,t1
bfc07058:	24180014 	li	t8,20
bfc0705c:	155813e1 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07060:	00000000 	nop
bfc07064:	34090005 	li	t1,0x5
bfc07068:	34080004 	li	t0,0x4
bfc0706c:	340a8888 	li	t2,0x8888
bfc07070:	71095802 	mul	t3,t0,t1
bfc07074:	24180014 	li	t8,20
bfc07078:	157813da 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0707c:	00000000 	nop
bfc07080:	34090005 	li	t1,0x5
bfc07084:	340c4444 	li	t4,0x4444
bfc07088:	34080004 	li	t0,0x4
bfc0708c:	340a8888 	li	t2,0x8888
bfc07090:	71095802 	mul	t3,t0,t1
bfc07094:	24180014 	li	t8,20
bfc07098:	157813d2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0709c:	00000000 	nop
bfc070a0:	34080004 	li	t0,0x4
bfc070a4:	34090005 	li	t1,0x5
bfc070a8:	71095002 	mul	t2,t0,t1
bfc070ac:	01405825 	move	t3,t2
bfc070b0:	24180014 	li	t8,20
bfc070b4:	157813cb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc070b8:	00000000 	nop
bfc070bc:	34090005 	li	t1,0x5
bfc070c0:	34080004 	li	t0,0x4
bfc070c4:	71095002 	mul	t2,t0,t1
bfc070c8:	340c3333 	li	t4,0x3333
bfc070cc:	01405825 	move	t3,t2
bfc070d0:	24180014 	li	t8,20
bfc070d4:	157813c3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc070d8:	00000000 	nop
bfc070dc:	34090005 	li	t1,0x5
bfc070e0:	34080004 	li	t0,0x4
bfc070e4:	71095002 	mul	t2,t0,t1
bfc070e8:	340d4444 	li	t5,0x4444
bfc070ec:	340c3333 	li	t4,0x3333
bfc070f0:	01405825 	move	t3,t2
bfc070f4:	24180014 	li	t8,20
bfc070f8:	157813ba 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc070fc:	00000000 	nop
bfc07100:	34090005 	li	t1,0x5
bfc07104:	34080004 	li	t0,0x4
bfc07108:	71095002 	mul	t2,t0,t1
bfc0710c:	340d4444 	li	t5,0x4444
bfc07110:	340c3333 	li	t4,0x3333
bfc07114:	340e2222 	li	t6,0x2222
bfc07118:	01405825 	move	t3,t2
bfc0711c:	24180014 	li	t8,20
bfc07120:	157813b0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07124:	00000000 	nop
bfc07128:	34080004 	li	t0,0x4
bfc0712c:	34090005 	li	t1,0x5
bfc07130:	71095002 	mul	t2,t0,t1
bfc07134:	000a5825 	or	t3,zero,t2
bfc07138:	24180014 	li	t8,20
bfc0713c:	157813a9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07140:	00000000 	nop
bfc07144:	34090005 	li	t1,0x5
bfc07148:	34080004 	li	t0,0x4
bfc0714c:	71095002 	mul	t2,t0,t1
bfc07150:	340c3333 	li	t4,0x3333
bfc07154:	000a5825 	or	t3,zero,t2
bfc07158:	24180014 	li	t8,20
bfc0715c:	157813a1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07160:	00000000 	nop
bfc07164:	34090005 	li	t1,0x5
bfc07168:	34080004 	li	t0,0x4
bfc0716c:	71095002 	mul	t2,t0,t1
bfc07170:	340d4444 	li	t5,0x4444
bfc07174:	340c3333 	li	t4,0x3333
bfc07178:	000a5825 	or	t3,zero,t2
bfc0717c:	24180014 	li	t8,20
bfc07180:	15781398 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07184:	00000000 	nop
bfc07188:	34090005 	li	t1,0x5
bfc0718c:	34080004 	li	t0,0x4
bfc07190:	71095002 	mul	t2,t0,t1
bfc07194:	340d4444 	li	t5,0x4444
bfc07198:	340c3333 	li	t4,0x3333
bfc0719c:	340e2222 	li	t6,0x2222
bfc071a0:	000a5825 	or	t3,zero,t2
bfc071a4:	24180014 	li	t8,20
bfc071a8:	1578138e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc071ac:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:61
bfc071b0:	34090005 	li	t1,0x5
bfc071b4:	34080005 	li	t0,0x5
bfc071b8:	71095002 	mul	t2,t0,t1
bfc071bc:	24180019 	li	t8,25
bfc071c0:	15581388 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc071c4:	00000000 	nop
bfc071c8:	34080005 	li	t0,0x5
bfc071cc:	34090005 	li	t1,0x5
bfc071d0:	71095002 	mul	t2,t0,t1
bfc071d4:	24180019 	li	t8,25
bfc071d8:	15581382 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc071dc:	00000000 	nop
bfc071e0:	34080005 	li	t0,0x5
bfc071e4:	34090005 	li	t1,0x5
bfc071e8:	340a8888 	li	t2,0x8888
bfc071ec:	71095802 	mul	t3,t0,t1
bfc071f0:	24180019 	li	t8,25
bfc071f4:	1578137b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc071f8:	00000000 	nop
bfc071fc:	34080005 	li	t0,0x5
bfc07200:	340c4444 	li	t4,0x4444
bfc07204:	34090005 	li	t1,0x5
bfc07208:	340a8888 	li	t2,0x8888
bfc0720c:	71095802 	mul	t3,t0,t1
bfc07210:	24180019 	li	t8,25
bfc07214:	15781373 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07218:	00000000 	nop
bfc0721c:	34080005 	li	t0,0x5
bfc07220:	34090005 	li	t1,0x5
bfc07224:	71095002 	mul	t2,t0,t1
bfc07228:	24180019 	li	t8,25
bfc0722c:	1558136d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07230:	00000000 	nop
bfc07234:	34090005 	li	t1,0x5
bfc07238:	34080005 	li	t0,0x5
bfc0723c:	71095002 	mul	t2,t0,t1
bfc07240:	24180019 	li	t8,25
bfc07244:	15581367 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07248:	00000000 	nop
bfc0724c:	34090005 	li	t1,0x5
bfc07250:	34080005 	li	t0,0x5
bfc07254:	340a8888 	li	t2,0x8888
bfc07258:	71095802 	mul	t3,t0,t1
bfc0725c:	24180019 	li	t8,25
bfc07260:	15781360 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07264:	00000000 	nop
bfc07268:	34090005 	li	t1,0x5
bfc0726c:	340c4444 	li	t4,0x4444
bfc07270:	34080005 	li	t0,0x5
bfc07274:	340a8888 	li	t2,0x8888
bfc07278:	71095802 	mul	t3,t0,t1
bfc0727c:	24180019 	li	t8,25
bfc07280:	15781358 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07284:	00000000 	nop
bfc07288:	34080005 	li	t0,0x5
bfc0728c:	34090005 	li	t1,0x5
bfc07290:	71095002 	mul	t2,t0,t1
bfc07294:	01405825 	move	t3,t2
bfc07298:	24180019 	li	t8,25
bfc0729c:	15781351 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc072a0:	00000000 	nop
bfc072a4:	34090005 	li	t1,0x5
bfc072a8:	34080005 	li	t0,0x5
bfc072ac:	71095002 	mul	t2,t0,t1
bfc072b0:	340c3333 	li	t4,0x3333
bfc072b4:	01405825 	move	t3,t2
bfc072b8:	24180019 	li	t8,25
bfc072bc:	15781349 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc072c0:	00000000 	nop
bfc072c4:	34090005 	li	t1,0x5
bfc072c8:	34080005 	li	t0,0x5
bfc072cc:	71095002 	mul	t2,t0,t1
bfc072d0:	340d4444 	li	t5,0x4444
bfc072d4:	340c3333 	li	t4,0x3333
bfc072d8:	01405825 	move	t3,t2
bfc072dc:	24180019 	li	t8,25
bfc072e0:	15781340 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc072e4:	00000000 	nop
bfc072e8:	34090005 	li	t1,0x5
bfc072ec:	34080005 	li	t0,0x5
bfc072f0:	71095002 	mul	t2,t0,t1
bfc072f4:	340d4444 	li	t5,0x4444
bfc072f8:	340c3333 	li	t4,0x3333
bfc072fc:	340e2222 	li	t6,0x2222
bfc07300:	01405825 	move	t3,t2
bfc07304:	24180019 	li	t8,25
bfc07308:	15781336 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0730c:	00000000 	nop
bfc07310:	34080005 	li	t0,0x5
bfc07314:	34090005 	li	t1,0x5
bfc07318:	71095002 	mul	t2,t0,t1
bfc0731c:	000a5825 	or	t3,zero,t2
bfc07320:	24180019 	li	t8,25
bfc07324:	1578132f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07328:	00000000 	nop
bfc0732c:	34090005 	li	t1,0x5
bfc07330:	34080005 	li	t0,0x5
bfc07334:	71095002 	mul	t2,t0,t1
bfc07338:	340c3333 	li	t4,0x3333
bfc0733c:	000a5825 	or	t3,zero,t2
bfc07340:	24180019 	li	t8,25
bfc07344:	15781327 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07348:	00000000 	nop
bfc0734c:	34090005 	li	t1,0x5
bfc07350:	34080005 	li	t0,0x5
bfc07354:	71095002 	mul	t2,t0,t1
bfc07358:	340d4444 	li	t5,0x4444
bfc0735c:	340c3333 	li	t4,0x3333
bfc07360:	000a5825 	or	t3,zero,t2
bfc07364:	24180019 	li	t8,25
bfc07368:	1578131e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0736c:	00000000 	nop
bfc07370:	34090005 	li	t1,0x5
bfc07374:	34080005 	li	t0,0x5
bfc07378:	71095002 	mul	t2,t0,t1
bfc0737c:	340d4444 	li	t5,0x4444
bfc07380:	340c3333 	li	t4,0x3333
bfc07384:	340e2222 	li	t6,0x2222
bfc07388:	000a5825 	or	t3,zero,t2
bfc0738c:	24180019 	li	t8,25
bfc07390:	15781314 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07394:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:62
bfc07398:	34090005 	li	t1,0x5
bfc0739c:	34080006 	li	t0,0x6
bfc073a0:	71095002 	mul	t2,t0,t1
bfc073a4:	2418001e 	li	t8,30
bfc073a8:	1558130e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc073ac:	00000000 	nop
bfc073b0:	34080006 	li	t0,0x6
bfc073b4:	34090005 	li	t1,0x5
bfc073b8:	71095002 	mul	t2,t0,t1
bfc073bc:	2418001e 	li	t8,30
bfc073c0:	15581308 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc073c4:	00000000 	nop
bfc073c8:	34080006 	li	t0,0x6
bfc073cc:	34090005 	li	t1,0x5
bfc073d0:	340a8888 	li	t2,0x8888
bfc073d4:	71095802 	mul	t3,t0,t1
bfc073d8:	2418001e 	li	t8,30
bfc073dc:	15781301 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc073e0:	00000000 	nop
bfc073e4:	34080006 	li	t0,0x6
bfc073e8:	340c4444 	li	t4,0x4444
bfc073ec:	34090005 	li	t1,0x5
bfc073f0:	340a8888 	li	t2,0x8888
bfc073f4:	71095802 	mul	t3,t0,t1
bfc073f8:	2418001e 	li	t8,30
bfc073fc:	157812f9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07400:	00000000 	nop
bfc07404:	34080006 	li	t0,0x6
bfc07408:	34090005 	li	t1,0x5
bfc0740c:	71095002 	mul	t2,t0,t1
bfc07410:	2418001e 	li	t8,30
bfc07414:	155812f3 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07418:	00000000 	nop
bfc0741c:	34090005 	li	t1,0x5
bfc07420:	34080006 	li	t0,0x6
bfc07424:	71095002 	mul	t2,t0,t1
bfc07428:	2418001e 	li	t8,30
bfc0742c:	155812ed 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07430:	00000000 	nop
bfc07434:	34090005 	li	t1,0x5
bfc07438:	34080006 	li	t0,0x6
bfc0743c:	340a8888 	li	t2,0x8888
bfc07440:	71095802 	mul	t3,t0,t1
bfc07444:	2418001e 	li	t8,30
bfc07448:	157812e6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0744c:	00000000 	nop
bfc07450:	34090005 	li	t1,0x5
bfc07454:	340c4444 	li	t4,0x4444
bfc07458:	34080006 	li	t0,0x6
bfc0745c:	340a8888 	li	t2,0x8888
bfc07460:	71095802 	mul	t3,t0,t1
bfc07464:	2418001e 	li	t8,30
bfc07468:	157812de 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0746c:	00000000 	nop
bfc07470:	34080006 	li	t0,0x6
bfc07474:	34090005 	li	t1,0x5
bfc07478:	71095002 	mul	t2,t0,t1
bfc0747c:	01405825 	move	t3,t2
bfc07480:	2418001e 	li	t8,30
bfc07484:	157812d7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07488:	00000000 	nop
bfc0748c:	34090005 	li	t1,0x5
bfc07490:	34080006 	li	t0,0x6
bfc07494:	71095002 	mul	t2,t0,t1
bfc07498:	340c3333 	li	t4,0x3333
bfc0749c:	01405825 	move	t3,t2
bfc074a0:	2418001e 	li	t8,30
bfc074a4:	157812cf 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc074a8:	00000000 	nop
bfc074ac:	34090005 	li	t1,0x5
bfc074b0:	34080006 	li	t0,0x6
bfc074b4:	71095002 	mul	t2,t0,t1
bfc074b8:	340d4444 	li	t5,0x4444
bfc074bc:	340c3333 	li	t4,0x3333
bfc074c0:	01405825 	move	t3,t2
bfc074c4:	2418001e 	li	t8,30
bfc074c8:	157812c6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc074cc:	00000000 	nop
bfc074d0:	34090005 	li	t1,0x5
bfc074d4:	34080006 	li	t0,0x6
bfc074d8:	71095002 	mul	t2,t0,t1
bfc074dc:	340d4444 	li	t5,0x4444
bfc074e0:	340c3333 	li	t4,0x3333
bfc074e4:	340e2222 	li	t6,0x2222
bfc074e8:	01405825 	move	t3,t2
bfc074ec:	2418001e 	li	t8,30
bfc074f0:	157812bc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc074f4:	00000000 	nop
bfc074f8:	34080006 	li	t0,0x6
bfc074fc:	34090005 	li	t1,0x5
bfc07500:	71095002 	mul	t2,t0,t1
bfc07504:	000a5825 	or	t3,zero,t2
bfc07508:	2418001e 	li	t8,30
bfc0750c:	157812b5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07510:	00000000 	nop
bfc07514:	34090005 	li	t1,0x5
bfc07518:	34080006 	li	t0,0x6
bfc0751c:	71095002 	mul	t2,t0,t1
bfc07520:	340c3333 	li	t4,0x3333
bfc07524:	000a5825 	or	t3,zero,t2
bfc07528:	2418001e 	li	t8,30
bfc0752c:	157812ad 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07530:	00000000 	nop
bfc07534:	34090005 	li	t1,0x5
bfc07538:	34080006 	li	t0,0x6
bfc0753c:	71095002 	mul	t2,t0,t1
bfc07540:	340d4444 	li	t5,0x4444
bfc07544:	340c3333 	li	t4,0x3333
bfc07548:	000a5825 	or	t3,zero,t2
bfc0754c:	2418001e 	li	t8,30
bfc07550:	157812a4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07554:	00000000 	nop
bfc07558:	34090005 	li	t1,0x5
bfc0755c:	34080006 	li	t0,0x6
bfc07560:	71095002 	mul	t2,t0,t1
bfc07564:	340d4444 	li	t5,0x4444
bfc07568:	340c3333 	li	t4,0x3333
bfc0756c:	340e2222 	li	t6,0x2222
bfc07570:	000a5825 	or	t3,zero,t2
bfc07574:	2418001e 	li	t8,30
bfc07578:	1578129a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0757c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:63
bfc07580:	34090005 	li	t1,0x5
bfc07584:	34080007 	li	t0,0x7
bfc07588:	71095002 	mul	t2,t0,t1
bfc0758c:	24180023 	li	t8,35
bfc07590:	15581294 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07594:	00000000 	nop
bfc07598:	34080007 	li	t0,0x7
bfc0759c:	34090005 	li	t1,0x5
bfc075a0:	71095002 	mul	t2,t0,t1
bfc075a4:	24180023 	li	t8,35
bfc075a8:	1558128e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc075ac:	00000000 	nop
bfc075b0:	34080007 	li	t0,0x7
bfc075b4:	34090005 	li	t1,0x5
bfc075b8:	340a8888 	li	t2,0x8888
bfc075bc:	71095802 	mul	t3,t0,t1
bfc075c0:	24180023 	li	t8,35
bfc075c4:	15781287 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc075c8:	00000000 	nop
bfc075cc:	34080007 	li	t0,0x7
bfc075d0:	340c4444 	li	t4,0x4444
bfc075d4:	34090005 	li	t1,0x5
bfc075d8:	340a8888 	li	t2,0x8888
bfc075dc:	71095802 	mul	t3,t0,t1
bfc075e0:	24180023 	li	t8,35
bfc075e4:	1578127f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc075e8:	00000000 	nop
bfc075ec:	34080007 	li	t0,0x7
bfc075f0:	34090005 	li	t1,0x5
bfc075f4:	71095002 	mul	t2,t0,t1
bfc075f8:	24180023 	li	t8,35
bfc075fc:	15581279 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07600:	00000000 	nop
bfc07604:	34090005 	li	t1,0x5
bfc07608:	34080007 	li	t0,0x7
bfc0760c:	71095002 	mul	t2,t0,t1
bfc07610:	24180023 	li	t8,35
bfc07614:	15581273 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07618:	00000000 	nop
bfc0761c:	34090005 	li	t1,0x5
bfc07620:	34080007 	li	t0,0x7
bfc07624:	340a8888 	li	t2,0x8888
bfc07628:	71095802 	mul	t3,t0,t1
bfc0762c:	24180023 	li	t8,35
bfc07630:	1578126c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07634:	00000000 	nop
bfc07638:	34090005 	li	t1,0x5
bfc0763c:	340c4444 	li	t4,0x4444
bfc07640:	34080007 	li	t0,0x7
bfc07644:	340a8888 	li	t2,0x8888
bfc07648:	71095802 	mul	t3,t0,t1
bfc0764c:	24180023 	li	t8,35
bfc07650:	15781264 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07654:	00000000 	nop
bfc07658:	34080007 	li	t0,0x7
bfc0765c:	34090005 	li	t1,0x5
bfc07660:	71095002 	mul	t2,t0,t1
bfc07664:	01405825 	move	t3,t2
bfc07668:	24180023 	li	t8,35
bfc0766c:	1578125d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07670:	00000000 	nop
bfc07674:	34090005 	li	t1,0x5
bfc07678:	34080007 	li	t0,0x7
bfc0767c:	71095002 	mul	t2,t0,t1
bfc07680:	340c3333 	li	t4,0x3333
bfc07684:	01405825 	move	t3,t2
bfc07688:	24180023 	li	t8,35
bfc0768c:	15781255 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07690:	00000000 	nop
bfc07694:	34090005 	li	t1,0x5
bfc07698:	34080007 	li	t0,0x7
bfc0769c:	71095002 	mul	t2,t0,t1
bfc076a0:	340d4444 	li	t5,0x4444
bfc076a4:	340c3333 	li	t4,0x3333
bfc076a8:	01405825 	move	t3,t2
bfc076ac:	24180023 	li	t8,35
bfc076b0:	1578124c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc076b4:	00000000 	nop
bfc076b8:	34090005 	li	t1,0x5
bfc076bc:	34080007 	li	t0,0x7
bfc076c0:	71095002 	mul	t2,t0,t1
bfc076c4:	340d4444 	li	t5,0x4444
bfc076c8:	340c3333 	li	t4,0x3333
bfc076cc:	340e2222 	li	t6,0x2222
bfc076d0:	01405825 	move	t3,t2
bfc076d4:	24180023 	li	t8,35
bfc076d8:	15781242 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc076dc:	00000000 	nop
bfc076e0:	34080007 	li	t0,0x7
bfc076e4:	34090005 	li	t1,0x5
bfc076e8:	71095002 	mul	t2,t0,t1
bfc076ec:	000a5825 	or	t3,zero,t2
bfc076f0:	24180023 	li	t8,35
bfc076f4:	1578123b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc076f8:	00000000 	nop
bfc076fc:	34090005 	li	t1,0x5
bfc07700:	34080007 	li	t0,0x7
bfc07704:	71095002 	mul	t2,t0,t1
bfc07708:	340c3333 	li	t4,0x3333
bfc0770c:	000a5825 	or	t3,zero,t2
bfc07710:	24180023 	li	t8,35
bfc07714:	15781233 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07718:	00000000 	nop
bfc0771c:	34090005 	li	t1,0x5
bfc07720:	34080007 	li	t0,0x7
bfc07724:	71095002 	mul	t2,t0,t1
bfc07728:	340d4444 	li	t5,0x4444
bfc0772c:	340c3333 	li	t4,0x3333
bfc07730:	000a5825 	or	t3,zero,t2
bfc07734:	24180023 	li	t8,35
bfc07738:	1578122a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0773c:	00000000 	nop
bfc07740:	34090005 	li	t1,0x5
bfc07744:	34080007 	li	t0,0x7
bfc07748:	71095002 	mul	t2,t0,t1
bfc0774c:	340d4444 	li	t5,0x4444
bfc07750:	340c3333 	li	t4,0x3333
bfc07754:	340e2222 	li	t6,0x2222
bfc07758:	000a5825 	or	t3,zero,t2
bfc0775c:	24180023 	li	t8,35
bfc07760:	15781220 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07764:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:64
bfc07768:	34090005 	li	t1,0x5
bfc0776c:	34080008 	li	t0,0x8
bfc07770:	71095002 	mul	t2,t0,t1
bfc07774:	24180028 	li	t8,40
bfc07778:	1558121a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0777c:	00000000 	nop
bfc07780:	34080008 	li	t0,0x8
bfc07784:	34090005 	li	t1,0x5
bfc07788:	71095002 	mul	t2,t0,t1
bfc0778c:	24180028 	li	t8,40
bfc07790:	15581214 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07794:	00000000 	nop
bfc07798:	34080008 	li	t0,0x8
bfc0779c:	34090005 	li	t1,0x5
bfc077a0:	340a8888 	li	t2,0x8888
bfc077a4:	71095802 	mul	t3,t0,t1
bfc077a8:	24180028 	li	t8,40
bfc077ac:	1578120d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc077b0:	00000000 	nop
bfc077b4:	34080008 	li	t0,0x8
bfc077b8:	340c4444 	li	t4,0x4444
bfc077bc:	34090005 	li	t1,0x5
bfc077c0:	340a8888 	li	t2,0x8888
bfc077c4:	71095802 	mul	t3,t0,t1
bfc077c8:	24180028 	li	t8,40
bfc077cc:	15781205 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc077d0:	00000000 	nop
bfc077d4:	34080008 	li	t0,0x8
bfc077d8:	34090005 	li	t1,0x5
bfc077dc:	71095002 	mul	t2,t0,t1
bfc077e0:	24180028 	li	t8,40
bfc077e4:	155811ff 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc077e8:	00000000 	nop
bfc077ec:	34090005 	li	t1,0x5
bfc077f0:	34080008 	li	t0,0x8
bfc077f4:	71095002 	mul	t2,t0,t1
bfc077f8:	24180028 	li	t8,40
bfc077fc:	155811f9 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07800:	00000000 	nop
bfc07804:	34090005 	li	t1,0x5
bfc07808:	34080008 	li	t0,0x8
bfc0780c:	340a8888 	li	t2,0x8888
bfc07810:	71095802 	mul	t3,t0,t1
bfc07814:	24180028 	li	t8,40
bfc07818:	157811f2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0781c:	00000000 	nop
bfc07820:	34090005 	li	t1,0x5
bfc07824:	340c4444 	li	t4,0x4444
bfc07828:	34080008 	li	t0,0x8
bfc0782c:	340a8888 	li	t2,0x8888
bfc07830:	71095802 	mul	t3,t0,t1
bfc07834:	24180028 	li	t8,40
bfc07838:	157811ea 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0783c:	00000000 	nop
bfc07840:	34080008 	li	t0,0x8
bfc07844:	34090005 	li	t1,0x5
bfc07848:	71095002 	mul	t2,t0,t1
bfc0784c:	01405825 	move	t3,t2
bfc07850:	24180028 	li	t8,40
bfc07854:	157811e3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07858:	00000000 	nop
bfc0785c:	34090005 	li	t1,0x5
bfc07860:	34080008 	li	t0,0x8
bfc07864:	71095002 	mul	t2,t0,t1
bfc07868:	340c3333 	li	t4,0x3333
bfc0786c:	01405825 	move	t3,t2
bfc07870:	24180028 	li	t8,40
bfc07874:	157811db 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07878:	00000000 	nop
bfc0787c:	34090005 	li	t1,0x5
bfc07880:	34080008 	li	t0,0x8
bfc07884:	71095002 	mul	t2,t0,t1
bfc07888:	340d4444 	li	t5,0x4444
bfc0788c:	340c3333 	li	t4,0x3333
bfc07890:	01405825 	move	t3,t2
bfc07894:	24180028 	li	t8,40
bfc07898:	157811d2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0789c:	00000000 	nop
bfc078a0:	34090005 	li	t1,0x5
bfc078a4:	34080008 	li	t0,0x8
bfc078a8:	71095002 	mul	t2,t0,t1
bfc078ac:	340d4444 	li	t5,0x4444
bfc078b0:	340c3333 	li	t4,0x3333
bfc078b4:	340e2222 	li	t6,0x2222
bfc078b8:	01405825 	move	t3,t2
bfc078bc:	24180028 	li	t8,40
bfc078c0:	157811c8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc078c4:	00000000 	nop
bfc078c8:	34080008 	li	t0,0x8
bfc078cc:	34090005 	li	t1,0x5
bfc078d0:	71095002 	mul	t2,t0,t1
bfc078d4:	000a5825 	or	t3,zero,t2
bfc078d8:	24180028 	li	t8,40
bfc078dc:	157811c1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc078e0:	00000000 	nop
bfc078e4:	34090005 	li	t1,0x5
bfc078e8:	34080008 	li	t0,0x8
bfc078ec:	71095002 	mul	t2,t0,t1
bfc078f0:	340c3333 	li	t4,0x3333
bfc078f4:	000a5825 	or	t3,zero,t2
bfc078f8:	24180028 	li	t8,40
bfc078fc:	157811b9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07900:	00000000 	nop
bfc07904:	34090005 	li	t1,0x5
bfc07908:	34080008 	li	t0,0x8
bfc0790c:	71095002 	mul	t2,t0,t1
bfc07910:	340d4444 	li	t5,0x4444
bfc07914:	340c3333 	li	t4,0x3333
bfc07918:	000a5825 	or	t3,zero,t2
bfc0791c:	24180028 	li	t8,40
bfc07920:	157811b0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07924:	00000000 	nop
bfc07928:	34090005 	li	t1,0x5
bfc0792c:	34080008 	li	t0,0x8
bfc07930:	71095002 	mul	t2,t0,t1
bfc07934:	340d4444 	li	t5,0x4444
bfc07938:	340c3333 	li	t4,0x3333
bfc0793c:	340e2222 	li	t6,0x2222
bfc07940:	000a5825 	or	t3,zero,t2
bfc07944:	24180028 	li	t8,40
bfc07948:	157811a6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0794c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:65
bfc07950:	34090005 	li	t1,0x5
bfc07954:	34080009 	li	t0,0x9
bfc07958:	71095002 	mul	t2,t0,t1
bfc0795c:	2418002d 	li	t8,45
bfc07960:	155811a0 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07964:	00000000 	nop
bfc07968:	34080009 	li	t0,0x9
bfc0796c:	34090005 	li	t1,0x5
bfc07970:	71095002 	mul	t2,t0,t1
bfc07974:	2418002d 	li	t8,45
bfc07978:	1558119a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0797c:	00000000 	nop
bfc07980:	34080009 	li	t0,0x9
bfc07984:	34090005 	li	t1,0x5
bfc07988:	340a8888 	li	t2,0x8888
bfc0798c:	71095802 	mul	t3,t0,t1
bfc07990:	2418002d 	li	t8,45
bfc07994:	15781193 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07998:	00000000 	nop
bfc0799c:	34080009 	li	t0,0x9
bfc079a0:	340c4444 	li	t4,0x4444
bfc079a4:	34090005 	li	t1,0x5
bfc079a8:	340a8888 	li	t2,0x8888
bfc079ac:	71095802 	mul	t3,t0,t1
bfc079b0:	2418002d 	li	t8,45
bfc079b4:	1578118b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc079b8:	00000000 	nop
bfc079bc:	34080009 	li	t0,0x9
bfc079c0:	34090005 	li	t1,0x5
bfc079c4:	71095002 	mul	t2,t0,t1
bfc079c8:	2418002d 	li	t8,45
bfc079cc:	15581185 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc079d0:	00000000 	nop
bfc079d4:	34090005 	li	t1,0x5
bfc079d8:	34080009 	li	t0,0x9
bfc079dc:	71095002 	mul	t2,t0,t1
bfc079e0:	2418002d 	li	t8,45
bfc079e4:	1558117f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc079e8:	00000000 	nop
bfc079ec:	34090005 	li	t1,0x5
bfc079f0:	34080009 	li	t0,0x9
bfc079f4:	340a8888 	li	t2,0x8888
bfc079f8:	71095802 	mul	t3,t0,t1
bfc079fc:	2418002d 	li	t8,45
bfc07a00:	15781178 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07a04:	00000000 	nop
bfc07a08:	34090005 	li	t1,0x5
bfc07a0c:	340c4444 	li	t4,0x4444
bfc07a10:	34080009 	li	t0,0x9
bfc07a14:	340a8888 	li	t2,0x8888
bfc07a18:	71095802 	mul	t3,t0,t1
bfc07a1c:	2418002d 	li	t8,45
bfc07a20:	15781170 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07a24:	00000000 	nop
bfc07a28:	34080009 	li	t0,0x9
bfc07a2c:	34090005 	li	t1,0x5
bfc07a30:	71095002 	mul	t2,t0,t1
bfc07a34:	01405825 	move	t3,t2
bfc07a38:	2418002d 	li	t8,45
bfc07a3c:	15781169 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07a40:	00000000 	nop
bfc07a44:	34090005 	li	t1,0x5
bfc07a48:	34080009 	li	t0,0x9
bfc07a4c:	71095002 	mul	t2,t0,t1
bfc07a50:	340c3333 	li	t4,0x3333
bfc07a54:	01405825 	move	t3,t2
bfc07a58:	2418002d 	li	t8,45
bfc07a5c:	15781161 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07a60:	00000000 	nop
bfc07a64:	34090005 	li	t1,0x5
bfc07a68:	34080009 	li	t0,0x9
bfc07a6c:	71095002 	mul	t2,t0,t1
bfc07a70:	340d4444 	li	t5,0x4444
bfc07a74:	340c3333 	li	t4,0x3333
bfc07a78:	01405825 	move	t3,t2
bfc07a7c:	2418002d 	li	t8,45
bfc07a80:	15781158 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07a84:	00000000 	nop
bfc07a88:	34090005 	li	t1,0x5
bfc07a8c:	34080009 	li	t0,0x9
bfc07a90:	71095002 	mul	t2,t0,t1
bfc07a94:	340d4444 	li	t5,0x4444
bfc07a98:	340c3333 	li	t4,0x3333
bfc07a9c:	340e2222 	li	t6,0x2222
bfc07aa0:	01405825 	move	t3,t2
bfc07aa4:	2418002d 	li	t8,45
bfc07aa8:	1578114e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07aac:	00000000 	nop
bfc07ab0:	34080009 	li	t0,0x9
bfc07ab4:	34090005 	li	t1,0x5
bfc07ab8:	71095002 	mul	t2,t0,t1
bfc07abc:	000a5825 	or	t3,zero,t2
bfc07ac0:	2418002d 	li	t8,45
bfc07ac4:	15781147 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07ac8:	00000000 	nop
bfc07acc:	34090005 	li	t1,0x5
bfc07ad0:	34080009 	li	t0,0x9
bfc07ad4:	71095002 	mul	t2,t0,t1
bfc07ad8:	340c3333 	li	t4,0x3333
bfc07adc:	000a5825 	or	t3,zero,t2
bfc07ae0:	2418002d 	li	t8,45
bfc07ae4:	1578113f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07ae8:	00000000 	nop
bfc07aec:	34090005 	li	t1,0x5
bfc07af0:	34080009 	li	t0,0x9
bfc07af4:	71095002 	mul	t2,t0,t1
bfc07af8:	340d4444 	li	t5,0x4444
bfc07afc:	340c3333 	li	t4,0x3333
bfc07b00:	000a5825 	or	t3,zero,t2
bfc07b04:	2418002d 	li	t8,45
bfc07b08:	15781136 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07b0c:	00000000 	nop
bfc07b10:	34090005 	li	t1,0x5
bfc07b14:	34080009 	li	t0,0x9
bfc07b18:	71095002 	mul	t2,t0,t1
bfc07b1c:	340d4444 	li	t5,0x4444
bfc07b20:	340c3333 	li	t4,0x3333
bfc07b24:	340e2222 	li	t6,0x2222
bfc07b28:	000a5825 	or	t3,zero,t2
bfc07b2c:	2418002d 	li	t8,45
bfc07b30:	1578112c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07b34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:66
bfc07b38:	34090006 	li	t1,0x6
bfc07b3c:	34080001 	li	t0,0x1
bfc07b40:	71095002 	mul	t2,t0,t1
bfc07b44:	24180006 	li	t8,6
bfc07b48:	15581126 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07b4c:	00000000 	nop
bfc07b50:	34080001 	li	t0,0x1
bfc07b54:	34090006 	li	t1,0x6
bfc07b58:	71095002 	mul	t2,t0,t1
bfc07b5c:	24180006 	li	t8,6
bfc07b60:	15581120 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07b64:	00000000 	nop
bfc07b68:	34080001 	li	t0,0x1
bfc07b6c:	34090006 	li	t1,0x6
bfc07b70:	340a8888 	li	t2,0x8888
bfc07b74:	71095802 	mul	t3,t0,t1
bfc07b78:	24180006 	li	t8,6
bfc07b7c:	15781119 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07b80:	00000000 	nop
bfc07b84:	34080001 	li	t0,0x1
bfc07b88:	340c4444 	li	t4,0x4444
bfc07b8c:	34090006 	li	t1,0x6
bfc07b90:	340a8888 	li	t2,0x8888
bfc07b94:	71095802 	mul	t3,t0,t1
bfc07b98:	24180006 	li	t8,6
bfc07b9c:	15781111 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07ba0:	00000000 	nop
bfc07ba4:	34080001 	li	t0,0x1
bfc07ba8:	34090006 	li	t1,0x6
bfc07bac:	71095002 	mul	t2,t0,t1
bfc07bb0:	24180006 	li	t8,6
bfc07bb4:	1558110b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07bb8:	00000000 	nop
bfc07bbc:	34090006 	li	t1,0x6
bfc07bc0:	34080001 	li	t0,0x1
bfc07bc4:	71095002 	mul	t2,t0,t1
bfc07bc8:	24180006 	li	t8,6
bfc07bcc:	15581105 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07bd0:	00000000 	nop
bfc07bd4:	34090006 	li	t1,0x6
bfc07bd8:	34080001 	li	t0,0x1
bfc07bdc:	340a8888 	li	t2,0x8888
bfc07be0:	71095802 	mul	t3,t0,t1
bfc07be4:	24180006 	li	t8,6
bfc07be8:	157810fe 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07bec:	00000000 	nop
bfc07bf0:	34090006 	li	t1,0x6
bfc07bf4:	340c4444 	li	t4,0x4444
bfc07bf8:	34080001 	li	t0,0x1
bfc07bfc:	340a8888 	li	t2,0x8888
bfc07c00:	71095802 	mul	t3,t0,t1
bfc07c04:	24180006 	li	t8,6
bfc07c08:	157810f6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07c0c:	00000000 	nop
bfc07c10:	34080001 	li	t0,0x1
bfc07c14:	34090006 	li	t1,0x6
bfc07c18:	71095002 	mul	t2,t0,t1
bfc07c1c:	01405825 	move	t3,t2
bfc07c20:	24180006 	li	t8,6
bfc07c24:	157810ef 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07c28:	00000000 	nop
bfc07c2c:	34090006 	li	t1,0x6
bfc07c30:	34080001 	li	t0,0x1
bfc07c34:	71095002 	mul	t2,t0,t1
bfc07c38:	340c3333 	li	t4,0x3333
bfc07c3c:	01405825 	move	t3,t2
bfc07c40:	24180006 	li	t8,6
bfc07c44:	157810e7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07c48:	00000000 	nop
bfc07c4c:	34090006 	li	t1,0x6
bfc07c50:	34080001 	li	t0,0x1
bfc07c54:	71095002 	mul	t2,t0,t1
bfc07c58:	340d4444 	li	t5,0x4444
bfc07c5c:	340c3333 	li	t4,0x3333
bfc07c60:	01405825 	move	t3,t2
bfc07c64:	24180006 	li	t8,6
bfc07c68:	157810de 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07c6c:	00000000 	nop
bfc07c70:	34090006 	li	t1,0x6
bfc07c74:	34080001 	li	t0,0x1
bfc07c78:	71095002 	mul	t2,t0,t1
bfc07c7c:	340d4444 	li	t5,0x4444
bfc07c80:	340c3333 	li	t4,0x3333
bfc07c84:	340e2222 	li	t6,0x2222
bfc07c88:	01405825 	move	t3,t2
bfc07c8c:	24180006 	li	t8,6
bfc07c90:	157810d4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07c94:	00000000 	nop
bfc07c98:	34080001 	li	t0,0x1
bfc07c9c:	34090006 	li	t1,0x6
bfc07ca0:	71095002 	mul	t2,t0,t1
bfc07ca4:	000a5825 	or	t3,zero,t2
bfc07ca8:	24180006 	li	t8,6
bfc07cac:	157810cd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07cb0:	00000000 	nop
bfc07cb4:	34090006 	li	t1,0x6
bfc07cb8:	34080001 	li	t0,0x1
bfc07cbc:	71095002 	mul	t2,t0,t1
bfc07cc0:	340c3333 	li	t4,0x3333
bfc07cc4:	000a5825 	or	t3,zero,t2
bfc07cc8:	24180006 	li	t8,6
bfc07ccc:	157810c5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07cd0:	00000000 	nop
bfc07cd4:	34090006 	li	t1,0x6
bfc07cd8:	34080001 	li	t0,0x1
bfc07cdc:	71095002 	mul	t2,t0,t1
bfc07ce0:	340d4444 	li	t5,0x4444
bfc07ce4:	340c3333 	li	t4,0x3333
bfc07ce8:	000a5825 	or	t3,zero,t2
bfc07cec:	24180006 	li	t8,6
bfc07cf0:	157810bc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07cf4:	00000000 	nop
bfc07cf8:	34090006 	li	t1,0x6
bfc07cfc:	34080001 	li	t0,0x1
bfc07d00:	71095002 	mul	t2,t0,t1
bfc07d04:	340d4444 	li	t5,0x4444
bfc07d08:	340c3333 	li	t4,0x3333
bfc07d0c:	340e2222 	li	t6,0x2222
bfc07d10:	000a5825 	or	t3,zero,t2
bfc07d14:	24180006 	li	t8,6
bfc07d18:	157810b2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07d1c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:67
bfc07d20:	34090006 	li	t1,0x6
bfc07d24:	34080002 	li	t0,0x2
bfc07d28:	71095002 	mul	t2,t0,t1
bfc07d2c:	2418000c 	li	t8,12
bfc07d30:	155810ac 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07d34:	00000000 	nop
bfc07d38:	34080002 	li	t0,0x2
bfc07d3c:	34090006 	li	t1,0x6
bfc07d40:	71095002 	mul	t2,t0,t1
bfc07d44:	2418000c 	li	t8,12
bfc07d48:	155810a6 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07d4c:	00000000 	nop
bfc07d50:	34080002 	li	t0,0x2
bfc07d54:	34090006 	li	t1,0x6
bfc07d58:	340a8888 	li	t2,0x8888
bfc07d5c:	71095802 	mul	t3,t0,t1
bfc07d60:	2418000c 	li	t8,12
bfc07d64:	1578109f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07d68:	00000000 	nop
bfc07d6c:	34080002 	li	t0,0x2
bfc07d70:	340c4444 	li	t4,0x4444
bfc07d74:	34090006 	li	t1,0x6
bfc07d78:	340a8888 	li	t2,0x8888
bfc07d7c:	71095802 	mul	t3,t0,t1
bfc07d80:	2418000c 	li	t8,12
bfc07d84:	15781097 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07d88:	00000000 	nop
bfc07d8c:	34080002 	li	t0,0x2
bfc07d90:	34090006 	li	t1,0x6
bfc07d94:	71095002 	mul	t2,t0,t1
bfc07d98:	2418000c 	li	t8,12
bfc07d9c:	15581091 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07da0:	00000000 	nop
bfc07da4:	34090006 	li	t1,0x6
bfc07da8:	34080002 	li	t0,0x2
bfc07dac:	71095002 	mul	t2,t0,t1
bfc07db0:	2418000c 	li	t8,12
bfc07db4:	1558108b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07db8:	00000000 	nop
bfc07dbc:	34090006 	li	t1,0x6
bfc07dc0:	34080002 	li	t0,0x2
bfc07dc4:	340a8888 	li	t2,0x8888
bfc07dc8:	71095802 	mul	t3,t0,t1
bfc07dcc:	2418000c 	li	t8,12
bfc07dd0:	15781084 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07dd4:	00000000 	nop
bfc07dd8:	34090006 	li	t1,0x6
bfc07ddc:	340c4444 	li	t4,0x4444
bfc07de0:	34080002 	li	t0,0x2
bfc07de4:	340a8888 	li	t2,0x8888
bfc07de8:	71095802 	mul	t3,t0,t1
bfc07dec:	2418000c 	li	t8,12
bfc07df0:	1578107c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07df4:	00000000 	nop
bfc07df8:	34080002 	li	t0,0x2
bfc07dfc:	34090006 	li	t1,0x6
bfc07e00:	71095002 	mul	t2,t0,t1
bfc07e04:	01405825 	move	t3,t2
bfc07e08:	2418000c 	li	t8,12
bfc07e0c:	15781075 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07e10:	00000000 	nop
bfc07e14:	34090006 	li	t1,0x6
bfc07e18:	34080002 	li	t0,0x2
bfc07e1c:	71095002 	mul	t2,t0,t1
bfc07e20:	340c3333 	li	t4,0x3333
bfc07e24:	01405825 	move	t3,t2
bfc07e28:	2418000c 	li	t8,12
bfc07e2c:	1578106d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07e30:	00000000 	nop
bfc07e34:	34090006 	li	t1,0x6
bfc07e38:	34080002 	li	t0,0x2
bfc07e3c:	71095002 	mul	t2,t0,t1
bfc07e40:	340d4444 	li	t5,0x4444
bfc07e44:	340c3333 	li	t4,0x3333
bfc07e48:	01405825 	move	t3,t2
bfc07e4c:	2418000c 	li	t8,12
bfc07e50:	15781064 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07e54:	00000000 	nop
bfc07e58:	34090006 	li	t1,0x6
bfc07e5c:	34080002 	li	t0,0x2
bfc07e60:	71095002 	mul	t2,t0,t1
bfc07e64:	340d4444 	li	t5,0x4444
bfc07e68:	340c3333 	li	t4,0x3333
bfc07e6c:	340e2222 	li	t6,0x2222
bfc07e70:	01405825 	move	t3,t2
bfc07e74:	2418000c 	li	t8,12
bfc07e78:	1578105a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07e7c:	00000000 	nop
bfc07e80:	34080002 	li	t0,0x2
bfc07e84:	34090006 	li	t1,0x6
bfc07e88:	71095002 	mul	t2,t0,t1
bfc07e8c:	000a5825 	or	t3,zero,t2
bfc07e90:	2418000c 	li	t8,12
bfc07e94:	15781053 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07e98:	00000000 	nop
bfc07e9c:	34090006 	li	t1,0x6
bfc07ea0:	34080002 	li	t0,0x2
bfc07ea4:	71095002 	mul	t2,t0,t1
bfc07ea8:	340c3333 	li	t4,0x3333
bfc07eac:	000a5825 	or	t3,zero,t2
bfc07eb0:	2418000c 	li	t8,12
bfc07eb4:	1578104b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07eb8:	00000000 	nop
bfc07ebc:	34090006 	li	t1,0x6
bfc07ec0:	34080002 	li	t0,0x2
bfc07ec4:	71095002 	mul	t2,t0,t1
bfc07ec8:	340d4444 	li	t5,0x4444
bfc07ecc:	340c3333 	li	t4,0x3333
bfc07ed0:	000a5825 	or	t3,zero,t2
bfc07ed4:	2418000c 	li	t8,12
bfc07ed8:	15781042 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07edc:	00000000 	nop
bfc07ee0:	34090006 	li	t1,0x6
bfc07ee4:	34080002 	li	t0,0x2
bfc07ee8:	71095002 	mul	t2,t0,t1
bfc07eec:	340d4444 	li	t5,0x4444
bfc07ef0:	340c3333 	li	t4,0x3333
bfc07ef4:	340e2222 	li	t6,0x2222
bfc07ef8:	000a5825 	or	t3,zero,t2
bfc07efc:	2418000c 	li	t8,12
bfc07f00:	15781038 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07f04:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:68
bfc07f08:	34090006 	li	t1,0x6
bfc07f0c:	34080003 	li	t0,0x3
bfc07f10:	71095002 	mul	t2,t0,t1
bfc07f14:	24180012 	li	t8,18
bfc07f18:	15581032 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07f1c:	00000000 	nop
bfc07f20:	34080003 	li	t0,0x3
bfc07f24:	34090006 	li	t1,0x6
bfc07f28:	71095002 	mul	t2,t0,t1
bfc07f2c:	24180012 	li	t8,18
bfc07f30:	1558102c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07f34:	00000000 	nop
bfc07f38:	34080003 	li	t0,0x3
bfc07f3c:	34090006 	li	t1,0x6
bfc07f40:	340a8888 	li	t2,0x8888
bfc07f44:	71095802 	mul	t3,t0,t1
bfc07f48:	24180012 	li	t8,18
bfc07f4c:	15781025 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07f50:	00000000 	nop
bfc07f54:	34080003 	li	t0,0x3
bfc07f58:	340c4444 	li	t4,0x4444
bfc07f5c:	34090006 	li	t1,0x6
bfc07f60:	340a8888 	li	t2,0x8888
bfc07f64:	71095802 	mul	t3,t0,t1
bfc07f68:	24180012 	li	t8,18
bfc07f6c:	1578101d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07f70:	00000000 	nop
bfc07f74:	34080003 	li	t0,0x3
bfc07f78:	34090006 	li	t1,0x6
bfc07f7c:	71095002 	mul	t2,t0,t1
bfc07f80:	24180012 	li	t8,18
bfc07f84:	15581017 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07f88:	00000000 	nop
bfc07f8c:	34090006 	li	t1,0x6
bfc07f90:	34080003 	li	t0,0x3
bfc07f94:	71095002 	mul	t2,t0,t1
bfc07f98:	24180012 	li	t8,18
bfc07f9c:	15581011 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc07fa0:	00000000 	nop
bfc07fa4:	34090006 	li	t1,0x6
bfc07fa8:	34080003 	li	t0,0x3
bfc07fac:	340a8888 	li	t2,0x8888
bfc07fb0:	71095802 	mul	t3,t0,t1
bfc07fb4:	24180012 	li	t8,18
bfc07fb8:	1578100a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07fbc:	00000000 	nop
bfc07fc0:	34090006 	li	t1,0x6
bfc07fc4:	340c4444 	li	t4,0x4444
bfc07fc8:	34080003 	li	t0,0x3
bfc07fcc:	340a8888 	li	t2,0x8888
bfc07fd0:	71095802 	mul	t3,t0,t1
bfc07fd4:	24180012 	li	t8,18
bfc07fd8:	15781002 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07fdc:	00000000 	nop
bfc07fe0:	34080003 	li	t0,0x3
bfc07fe4:	34090006 	li	t1,0x6
bfc07fe8:	71095002 	mul	t2,t0,t1
bfc07fec:	01405825 	move	t3,t2
bfc07ff0:	24180012 	li	t8,18
bfc07ff4:	15780ffb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc07ff8:	00000000 	nop
bfc07ffc:	34090006 	li	t1,0x6
bfc08000:	34080003 	li	t0,0x3
bfc08004:	71095002 	mul	t2,t0,t1
bfc08008:	340c3333 	li	t4,0x3333
bfc0800c:	01405825 	move	t3,t2
bfc08010:	24180012 	li	t8,18
bfc08014:	15780ff3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08018:	00000000 	nop
bfc0801c:	34090006 	li	t1,0x6
bfc08020:	34080003 	li	t0,0x3
bfc08024:	71095002 	mul	t2,t0,t1
bfc08028:	340d4444 	li	t5,0x4444
bfc0802c:	340c3333 	li	t4,0x3333
bfc08030:	01405825 	move	t3,t2
bfc08034:	24180012 	li	t8,18
bfc08038:	15780fea 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0803c:	00000000 	nop
bfc08040:	34090006 	li	t1,0x6
bfc08044:	34080003 	li	t0,0x3
bfc08048:	71095002 	mul	t2,t0,t1
bfc0804c:	340d4444 	li	t5,0x4444
bfc08050:	340c3333 	li	t4,0x3333
bfc08054:	340e2222 	li	t6,0x2222
bfc08058:	01405825 	move	t3,t2
bfc0805c:	24180012 	li	t8,18
bfc08060:	15780fe0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08064:	00000000 	nop
bfc08068:	34080003 	li	t0,0x3
bfc0806c:	34090006 	li	t1,0x6
bfc08070:	71095002 	mul	t2,t0,t1
bfc08074:	000a5825 	or	t3,zero,t2
bfc08078:	24180012 	li	t8,18
bfc0807c:	15780fd9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08080:	00000000 	nop
bfc08084:	34090006 	li	t1,0x6
bfc08088:	34080003 	li	t0,0x3
bfc0808c:	71095002 	mul	t2,t0,t1
bfc08090:	340c3333 	li	t4,0x3333
bfc08094:	000a5825 	or	t3,zero,t2
bfc08098:	24180012 	li	t8,18
bfc0809c:	15780fd1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc080a0:	00000000 	nop
bfc080a4:	34090006 	li	t1,0x6
bfc080a8:	34080003 	li	t0,0x3
bfc080ac:	71095002 	mul	t2,t0,t1
bfc080b0:	340d4444 	li	t5,0x4444
bfc080b4:	340c3333 	li	t4,0x3333
bfc080b8:	000a5825 	or	t3,zero,t2
bfc080bc:	24180012 	li	t8,18
bfc080c0:	15780fc8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc080c4:	00000000 	nop
bfc080c8:	34090006 	li	t1,0x6
bfc080cc:	34080003 	li	t0,0x3
bfc080d0:	71095002 	mul	t2,t0,t1
bfc080d4:	340d4444 	li	t5,0x4444
bfc080d8:	340c3333 	li	t4,0x3333
bfc080dc:	340e2222 	li	t6,0x2222
bfc080e0:	000a5825 	or	t3,zero,t2
bfc080e4:	24180012 	li	t8,18
bfc080e8:	15780fbe 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc080ec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:69
bfc080f0:	34090006 	li	t1,0x6
bfc080f4:	34080004 	li	t0,0x4
bfc080f8:	71095002 	mul	t2,t0,t1
bfc080fc:	24180018 	li	t8,24
bfc08100:	15580fb8 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08104:	00000000 	nop
bfc08108:	34080004 	li	t0,0x4
bfc0810c:	34090006 	li	t1,0x6
bfc08110:	71095002 	mul	t2,t0,t1
bfc08114:	24180018 	li	t8,24
bfc08118:	15580fb2 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0811c:	00000000 	nop
bfc08120:	34080004 	li	t0,0x4
bfc08124:	34090006 	li	t1,0x6
bfc08128:	340a8888 	li	t2,0x8888
bfc0812c:	71095802 	mul	t3,t0,t1
bfc08130:	24180018 	li	t8,24
bfc08134:	15780fab 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08138:	00000000 	nop
bfc0813c:	34080004 	li	t0,0x4
bfc08140:	340c4444 	li	t4,0x4444
bfc08144:	34090006 	li	t1,0x6
bfc08148:	340a8888 	li	t2,0x8888
bfc0814c:	71095802 	mul	t3,t0,t1
bfc08150:	24180018 	li	t8,24
bfc08154:	15780fa3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08158:	00000000 	nop
bfc0815c:	34080004 	li	t0,0x4
bfc08160:	34090006 	li	t1,0x6
bfc08164:	71095002 	mul	t2,t0,t1
bfc08168:	24180018 	li	t8,24
bfc0816c:	15580f9d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08170:	00000000 	nop
bfc08174:	34090006 	li	t1,0x6
bfc08178:	34080004 	li	t0,0x4
bfc0817c:	71095002 	mul	t2,t0,t1
bfc08180:	24180018 	li	t8,24
bfc08184:	15580f97 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08188:	00000000 	nop
bfc0818c:	34090006 	li	t1,0x6
bfc08190:	34080004 	li	t0,0x4
bfc08194:	340a8888 	li	t2,0x8888
bfc08198:	71095802 	mul	t3,t0,t1
bfc0819c:	24180018 	li	t8,24
bfc081a0:	15780f90 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc081a4:	00000000 	nop
bfc081a8:	34090006 	li	t1,0x6
bfc081ac:	340c4444 	li	t4,0x4444
bfc081b0:	34080004 	li	t0,0x4
bfc081b4:	340a8888 	li	t2,0x8888
bfc081b8:	71095802 	mul	t3,t0,t1
bfc081bc:	24180018 	li	t8,24
bfc081c0:	15780f88 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc081c4:	00000000 	nop
bfc081c8:	34080004 	li	t0,0x4
bfc081cc:	34090006 	li	t1,0x6
bfc081d0:	71095002 	mul	t2,t0,t1
bfc081d4:	01405825 	move	t3,t2
bfc081d8:	24180018 	li	t8,24
bfc081dc:	15780f81 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc081e0:	00000000 	nop
bfc081e4:	34090006 	li	t1,0x6
bfc081e8:	34080004 	li	t0,0x4
bfc081ec:	71095002 	mul	t2,t0,t1
bfc081f0:	340c3333 	li	t4,0x3333
bfc081f4:	01405825 	move	t3,t2
bfc081f8:	24180018 	li	t8,24
bfc081fc:	15780f79 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08200:	00000000 	nop
bfc08204:	34090006 	li	t1,0x6
bfc08208:	34080004 	li	t0,0x4
bfc0820c:	71095002 	mul	t2,t0,t1
bfc08210:	340d4444 	li	t5,0x4444
bfc08214:	340c3333 	li	t4,0x3333
bfc08218:	01405825 	move	t3,t2
bfc0821c:	24180018 	li	t8,24
bfc08220:	15780f70 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08224:	00000000 	nop
bfc08228:	34090006 	li	t1,0x6
bfc0822c:	34080004 	li	t0,0x4
bfc08230:	71095002 	mul	t2,t0,t1
bfc08234:	340d4444 	li	t5,0x4444
bfc08238:	340c3333 	li	t4,0x3333
bfc0823c:	340e2222 	li	t6,0x2222
bfc08240:	01405825 	move	t3,t2
bfc08244:	24180018 	li	t8,24
bfc08248:	15780f66 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0824c:	00000000 	nop
bfc08250:	34080004 	li	t0,0x4
bfc08254:	34090006 	li	t1,0x6
bfc08258:	71095002 	mul	t2,t0,t1
bfc0825c:	000a5825 	or	t3,zero,t2
bfc08260:	24180018 	li	t8,24
bfc08264:	15780f5f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08268:	00000000 	nop
bfc0826c:	34090006 	li	t1,0x6
bfc08270:	34080004 	li	t0,0x4
bfc08274:	71095002 	mul	t2,t0,t1
bfc08278:	340c3333 	li	t4,0x3333
bfc0827c:	000a5825 	or	t3,zero,t2
bfc08280:	24180018 	li	t8,24
bfc08284:	15780f57 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08288:	00000000 	nop
bfc0828c:	34090006 	li	t1,0x6
bfc08290:	34080004 	li	t0,0x4
bfc08294:	71095002 	mul	t2,t0,t1
bfc08298:	340d4444 	li	t5,0x4444
bfc0829c:	340c3333 	li	t4,0x3333
bfc082a0:	000a5825 	or	t3,zero,t2
bfc082a4:	24180018 	li	t8,24
bfc082a8:	15780f4e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc082ac:	00000000 	nop
bfc082b0:	34090006 	li	t1,0x6
bfc082b4:	34080004 	li	t0,0x4
bfc082b8:	71095002 	mul	t2,t0,t1
bfc082bc:	340d4444 	li	t5,0x4444
bfc082c0:	340c3333 	li	t4,0x3333
bfc082c4:	340e2222 	li	t6,0x2222
bfc082c8:	000a5825 	or	t3,zero,t2
bfc082cc:	24180018 	li	t8,24
bfc082d0:	15780f44 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc082d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:70
bfc082d8:	34090006 	li	t1,0x6
bfc082dc:	34080005 	li	t0,0x5
bfc082e0:	71095002 	mul	t2,t0,t1
bfc082e4:	2418001e 	li	t8,30
bfc082e8:	15580f3e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc082ec:	00000000 	nop
bfc082f0:	34080005 	li	t0,0x5
bfc082f4:	34090006 	li	t1,0x6
bfc082f8:	71095002 	mul	t2,t0,t1
bfc082fc:	2418001e 	li	t8,30
bfc08300:	15580f38 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08304:	00000000 	nop
bfc08308:	34080005 	li	t0,0x5
bfc0830c:	34090006 	li	t1,0x6
bfc08310:	340a8888 	li	t2,0x8888
bfc08314:	71095802 	mul	t3,t0,t1
bfc08318:	2418001e 	li	t8,30
bfc0831c:	15780f31 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08320:	00000000 	nop
bfc08324:	34080005 	li	t0,0x5
bfc08328:	340c4444 	li	t4,0x4444
bfc0832c:	34090006 	li	t1,0x6
bfc08330:	340a8888 	li	t2,0x8888
bfc08334:	71095802 	mul	t3,t0,t1
bfc08338:	2418001e 	li	t8,30
bfc0833c:	15780f29 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08340:	00000000 	nop
bfc08344:	34080005 	li	t0,0x5
bfc08348:	34090006 	li	t1,0x6
bfc0834c:	71095002 	mul	t2,t0,t1
bfc08350:	2418001e 	li	t8,30
bfc08354:	15580f23 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08358:	00000000 	nop
bfc0835c:	34090006 	li	t1,0x6
bfc08360:	34080005 	li	t0,0x5
bfc08364:	71095002 	mul	t2,t0,t1
bfc08368:	2418001e 	li	t8,30
bfc0836c:	15580f1d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08370:	00000000 	nop
bfc08374:	34090006 	li	t1,0x6
bfc08378:	34080005 	li	t0,0x5
bfc0837c:	340a8888 	li	t2,0x8888
bfc08380:	71095802 	mul	t3,t0,t1
bfc08384:	2418001e 	li	t8,30
bfc08388:	15780f16 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0838c:	00000000 	nop
bfc08390:	34090006 	li	t1,0x6
bfc08394:	340c4444 	li	t4,0x4444
bfc08398:	34080005 	li	t0,0x5
bfc0839c:	340a8888 	li	t2,0x8888
bfc083a0:	71095802 	mul	t3,t0,t1
bfc083a4:	2418001e 	li	t8,30
bfc083a8:	15780f0e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc083ac:	00000000 	nop
bfc083b0:	34080005 	li	t0,0x5
bfc083b4:	34090006 	li	t1,0x6
bfc083b8:	71095002 	mul	t2,t0,t1
bfc083bc:	01405825 	move	t3,t2
bfc083c0:	2418001e 	li	t8,30
bfc083c4:	15780f07 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc083c8:	00000000 	nop
bfc083cc:	34090006 	li	t1,0x6
bfc083d0:	34080005 	li	t0,0x5
bfc083d4:	71095002 	mul	t2,t0,t1
bfc083d8:	340c3333 	li	t4,0x3333
bfc083dc:	01405825 	move	t3,t2
bfc083e0:	2418001e 	li	t8,30
bfc083e4:	15780eff 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc083e8:	00000000 	nop
bfc083ec:	34090006 	li	t1,0x6
bfc083f0:	34080005 	li	t0,0x5
bfc083f4:	71095002 	mul	t2,t0,t1
bfc083f8:	340d4444 	li	t5,0x4444
bfc083fc:	340c3333 	li	t4,0x3333
bfc08400:	01405825 	move	t3,t2
bfc08404:	2418001e 	li	t8,30
bfc08408:	15780ef6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0840c:	00000000 	nop
bfc08410:	34090006 	li	t1,0x6
bfc08414:	34080005 	li	t0,0x5
bfc08418:	71095002 	mul	t2,t0,t1
bfc0841c:	340d4444 	li	t5,0x4444
bfc08420:	340c3333 	li	t4,0x3333
bfc08424:	340e2222 	li	t6,0x2222
bfc08428:	01405825 	move	t3,t2
bfc0842c:	2418001e 	li	t8,30
bfc08430:	15780eec 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08434:	00000000 	nop
bfc08438:	34080005 	li	t0,0x5
bfc0843c:	34090006 	li	t1,0x6
bfc08440:	71095002 	mul	t2,t0,t1
bfc08444:	000a5825 	or	t3,zero,t2
bfc08448:	2418001e 	li	t8,30
bfc0844c:	15780ee5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08450:	00000000 	nop
bfc08454:	34090006 	li	t1,0x6
bfc08458:	34080005 	li	t0,0x5
bfc0845c:	71095002 	mul	t2,t0,t1
bfc08460:	340c3333 	li	t4,0x3333
bfc08464:	000a5825 	or	t3,zero,t2
bfc08468:	2418001e 	li	t8,30
bfc0846c:	15780edd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08470:	00000000 	nop
bfc08474:	34090006 	li	t1,0x6
bfc08478:	34080005 	li	t0,0x5
bfc0847c:	71095002 	mul	t2,t0,t1
bfc08480:	340d4444 	li	t5,0x4444
bfc08484:	340c3333 	li	t4,0x3333
bfc08488:	000a5825 	or	t3,zero,t2
bfc0848c:	2418001e 	li	t8,30
bfc08490:	15780ed4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08494:	00000000 	nop
bfc08498:	34090006 	li	t1,0x6
bfc0849c:	34080005 	li	t0,0x5
bfc084a0:	71095002 	mul	t2,t0,t1
bfc084a4:	340d4444 	li	t5,0x4444
bfc084a8:	340c3333 	li	t4,0x3333
bfc084ac:	340e2222 	li	t6,0x2222
bfc084b0:	000a5825 	or	t3,zero,t2
bfc084b4:	2418001e 	li	t8,30
bfc084b8:	15780eca 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc084bc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:71
bfc084c0:	34090006 	li	t1,0x6
bfc084c4:	34080006 	li	t0,0x6
bfc084c8:	71095002 	mul	t2,t0,t1
bfc084cc:	24180024 	li	t8,36
bfc084d0:	15580ec4 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc084d4:	00000000 	nop
bfc084d8:	34080006 	li	t0,0x6
bfc084dc:	34090006 	li	t1,0x6
bfc084e0:	71095002 	mul	t2,t0,t1
bfc084e4:	24180024 	li	t8,36
bfc084e8:	15580ebe 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc084ec:	00000000 	nop
bfc084f0:	34080006 	li	t0,0x6
bfc084f4:	34090006 	li	t1,0x6
bfc084f8:	340a8888 	li	t2,0x8888
bfc084fc:	71095802 	mul	t3,t0,t1
bfc08500:	24180024 	li	t8,36
bfc08504:	15780eb7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08508:	00000000 	nop
bfc0850c:	34080006 	li	t0,0x6
bfc08510:	340c4444 	li	t4,0x4444
bfc08514:	34090006 	li	t1,0x6
bfc08518:	340a8888 	li	t2,0x8888
bfc0851c:	71095802 	mul	t3,t0,t1
bfc08520:	24180024 	li	t8,36
bfc08524:	15780eaf 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08528:	00000000 	nop
bfc0852c:	34080006 	li	t0,0x6
bfc08530:	34090006 	li	t1,0x6
bfc08534:	71095002 	mul	t2,t0,t1
bfc08538:	24180024 	li	t8,36
bfc0853c:	15580ea9 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08540:	00000000 	nop
bfc08544:	34090006 	li	t1,0x6
bfc08548:	34080006 	li	t0,0x6
bfc0854c:	71095002 	mul	t2,t0,t1
bfc08550:	24180024 	li	t8,36
bfc08554:	15580ea3 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08558:	00000000 	nop
bfc0855c:	34090006 	li	t1,0x6
bfc08560:	34080006 	li	t0,0x6
bfc08564:	340a8888 	li	t2,0x8888
bfc08568:	71095802 	mul	t3,t0,t1
bfc0856c:	24180024 	li	t8,36
bfc08570:	15780e9c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08574:	00000000 	nop
bfc08578:	34090006 	li	t1,0x6
bfc0857c:	340c4444 	li	t4,0x4444
bfc08580:	34080006 	li	t0,0x6
bfc08584:	340a8888 	li	t2,0x8888
bfc08588:	71095802 	mul	t3,t0,t1
bfc0858c:	24180024 	li	t8,36
bfc08590:	15780e94 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08594:	00000000 	nop
bfc08598:	34080006 	li	t0,0x6
bfc0859c:	34090006 	li	t1,0x6
bfc085a0:	71095002 	mul	t2,t0,t1
bfc085a4:	01405825 	move	t3,t2
bfc085a8:	24180024 	li	t8,36
bfc085ac:	15780e8d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc085b0:	00000000 	nop
bfc085b4:	34090006 	li	t1,0x6
bfc085b8:	34080006 	li	t0,0x6
bfc085bc:	71095002 	mul	t2,t0,t1
bfc085c0:	340c3333 	li	t4,0x3333
bfc085c4:	01405825 	move	t3,t2
bfc085c8:	24180024 	li	t8,36
bfc085cc:	15780e85 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc085d0:	00000000 	nop
bfc085d4:	34090006 	li	t1,0x6
bfc085d8:	34080006 	li	t0,0x6
bfc085dc:	71095002 	mul	t2,t0,t1
bfc085e0:	340d4444 	li	t5,0x4444
bfc085e4:	340c3333 	li	t4,0x3333
bfc085e8:	01405825 	move	t3,t2
bfc085ec:	24180024 	li	t8,36
bfc085f0:	15780e7c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc085f4:	00000000 	nop
bfc085f8:	34090006 	li	t1,0x6
bfc085fc:	34080006 	li	t0,0x6
bfc08600:	71095002 	mul	t2,t0,t1
bfc08604:	340d4444 	li	t5,0x4444
bfc08608:	340c3333 	li	t4,0x3333
bfc0860c:	340e2222 	li	t6,0x2222
bfc08610:	01405825 	move	t3,t2
bfc08614:	24180024 	li	t8,36
bfc08618:	15780e72 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0861c:	00000000 	nop
bfc08620:	34080006 	li	t0,0x6
bfc08624:	34090006 	li	t1,0x6
bfc08628:	71095002 	mul	t2,t0,t1
bfc0862c:	000a5825 	or	t3,zero,t2
bfc08630:	24180024 	li	t8,36
bfc08634:	15780e6b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08638:	00000000 	nop
bfc0863c:	34090006 	li	t1,0x6
bfc08640:	34080006 	li	t0,0x6
bfc08644:	71095002 	mul	t2,t0,t1
bfc08648:	340c3333 	li	t4,0x3333
bfc0864c:	000a5825 	or	t3,zero,t2
bfc08650:	24180024 	li	t8,36
bfc08654:	15780e63 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08658:	00000000 	nop
bfc0865c:	34090006 	li	t1,0x6
bfc08660:	34080006 	li	t0,0x6
bfc08664:	71095002 	mul	t2,t0,t1
bfc08668:	340d4444 	li	t5,0x4444
bfc0866c:	340c3333 	li	t4,0x3333
bfc08670:	000a5825 	or	t3,zero,t2
bfc08674:	24180024 	li	t8,36
bfc08678:	15780e5a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0867c:	00000000 	nop
bfc08680:	34090006 	li	t1,0x6
bfc08684:	34080006 	li	t0,0x6
bfc08688:	71095002 	mul	t2,t0,t1
bfc0868c:	340d4444 	li	t5,0x4444
bfc08690:	340c3333 	li	t4,0x3333
bfc08694:	340e2222 	li	t6,0x2222
bfc08698:	000a5825 	or	t3,zero,t2
bfc0869c:	24180024 	li	t8,36
bfc086a0:	15780e50 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc086a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:72
bfc086a8:	34090006 	li	t1,0x6
bfc086ac:	34080007 	li	t0,0x7
bfc086b0:	71095002 	mul	t2,t0,t1
bfc086b4:	2418002a 	li	t8,42
bfc086b8:	15580e4a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc086bc:	00000000 	nop
bfc086c0:	34080007 	li	t0,0x7
bfc086c4:	34090006 	li	t1,0x6
bfc086c8:	71095002 	mul	t2,t0,t1
bfc086cc:	2418002a 	li	t8,42
bfc086d0:	15580e44 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc086d4:	00000000 	nop
bfc086d8:	34080007 	li	t0,0x7
bfc086dc:	34090006 	li	t1,0x6
bfc086e0:	340a8888 	li	t2,0x8888
bfc086e4:	71095802 	mul	t3,t0,t1
bfc086e8:	2418002a 	li	t8,42
bfc086ec:	15780e3d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc086f0:	00000000 	nop
bfc086f4:	34080007 	li	t0,0x7
bfc086f8:	340c4444 	li	t4,0x4444
bfc086fc:	34090006 	li	t1,0x6
bfc08700:	340a8888 	li	t2,0x8888
bfc08704:	71095802 	mul	t3,t0,t1
bfc08708:	2418002a 	li	t8,42
bfc0870c:	15780e35 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08710:	00000000 	nop
bfc08714:	34080007 	li	t0,0x7
bfc08718:	34090006 	li	t1,0x6
bfc0871c:	71095002 	mul	t2,t0,t1
bfc08720:	2418002a 	li	t8,42
bfc08724:	15580e2f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08728:	00000000 	nop
bfc0872c:	34090006 	li	t1,0x6
bfc08730:	34080007 	li	t0,0x7
bfc08734:	71095002 	mul	t2,t0,t1
bfc08738:	2418002a 	li	t8,42
bfc0873c:	15580e29 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08740:	00000000 	nop
bfc08744:	34090006 	li	t1,0x6
bfc08748:	34080007 	li	t0,0x7
bfc0874c:	340a8888 	li	t2,0x8888
bfc08750:	71095802 	mul	t3,t0,t1
bfc08754:	2418002a 	li	t8,42
bfc08758:	15780e22 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0875c:	00000000 	nop
bfc08760:	34090006 	li	t1,0x6
bfc08764:	340c4444 	li	t4,0x4444
bfc08768:	34080007 	li	t0,0x7
bfc0876c:	340a8888 	li	t2,0x8888
bfc08770:	71095802 	mul	t3,t0,t1
bfc08774:	2418002a 	li	t8,42
bfc08778:	15780e1a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0877c:	00000000 	nop
bfc08780:	34080007 	li	t0,0x7
bfc08784:	34090006 	li	t1,0x6
bfc08788:	71095002 	mul	t2,t0,t1
bfc0878c:	01405825 	move	t3,t2
bfc08790:	2418002a 	li	t8,42
bfc08794:	15780e13 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08798:	00000000 	nop
bfc0879c:	34090006 	li	t1,0x6
bfc087a0:	34080007 	li	t0,0x7
bfc087a4:	71095002 	mul	t2,t0,t1
bfc087a8:	340c3333 	li	t4,0x3333
bfc087ac:	01405825 	move	t3,t2
bfc087b0:	2418002a 	li	t8,42
bfc087b4:	15780e0b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc087b8:	00000000 	nop
bfc087bc:	34090006 	li	t1,0x6
bfc087c0:	34080007 	li	t0,0x7
bfc087c4:	71095002 	mul	t2,t0,t1
bfc087c8:	340d4444 	li	t5,0x4444
bfc087cc:	340c3333 	li	t4,0x3333
bfc087d0:	01405825 	move	t3,t2
bfc087d4:	2418002a 	li	t8,42
bfc087d8:	15780e02 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc087dc:	00000000 	nop
bfc087e0:	34090006 	li	t1,0x6
bfc087e4:	34080007 	li	t0,0x7
bfc087e8:	71095002 	mul	t2,t0,t1
bfc087ec:	340d4444 	li	t5,0x4444
bfc087f0:	340c3333 	li	t4,0x3333
bfc087f4:	340e2222 	li	t6,0x2222
bfc087f8:	01405825 	move	t3,t2
bfc087fc:	2418002a 	li	t8,42
bfc08800:	15780df8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08804:	00000000 	nop
bfc08808:	34080007 	li	t0,0x7
bfc0880c:	34090006 	li	t1,0x6
bfc08810:	71095002 	mul	t2,t0,t1
bfc08814:	000a5825 	or	t3,zero,t2
bfc08818:	2418002a 	li	t8,42
bfc0881c:	15780df1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08820:	00000000 	nop
bfc08824:	34090006 	li	t1,0x6
bfc08828:	34080007 	li	t0,0x7
bfc0882c:	71095002 	mul	t2,t0,t1
bfc08830:	340c3333 	li	t4,0x3333
bfc08834:	000a5825 	or	t3,zero,t2
bfc08838:	2418002a 	li	t8,42
bfc0883c:	15780de9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08840:	00000000 	nop
bfc08844:	34090006 	li	t1,0x6
bfc08848:	34080007 	li	t0,0x7
bfc0884c:	71095002 	mul	t2,t0,t1
bfc08850:	340d4444 	li	t5,0x4444
bfc08854:	340c3333 	li	t4,0x3333
bfc08858:	000a5825 	or	t3,zero,t2
bfc0885c:	2418002a 	li	t8,42
bfc08860:	15780de0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08864:	00000000 	nop
bfc08868:	34090006 	li	t1,0x6
bfc0886c:	34080007 	li	t0,0x7
bfc08870:	71095002 	mul	t2,t0,t1
bfc08874:	340d4444 	li	t5,0x4444
bfc08878:	340c3333 	li	t4,0x3333
bfc0887c:	340e2222 	li	t6,0x2222
bfc08880:	000a5825 	or	t3,zero,t2
bfc08884:	2418002a 	li	t8,42
bfc08888:	15780dd6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0888c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:73
bfc08890:	34090006 	li	t1,0x6
bfc08894:	34080008 	li	t0,0x8
bfc08898:	71095002 	mul	t2,t0,t1
bfc0889c:	24180030 	li	t8,48
bfc088a0:	15580dd0 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc088a4:	00000000 	nop
bfc088a8:	34080008 	li	t0,0x8
bfc088ac:	34090006 	li	t1,0x6
bfc088b0:	71095002 	mul	t2,t0,t1
bfc088b4:	24180030 	li	t8,48
bfc088b8:	15580dca 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc088bc:	00000000 	nop
bfc088c0:	34080008 	li	t0,0x8
bfc088c4:	34090006 	li	t1,0x6
bfc088c8:	340a8888 	li	t2,0x8888
bfc088cc:	71095802 	mul	t3,t0,t1
bfc088d0:	24180030 	li	t8,48
bfc088d4:	15780dc3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc088d8:	00000000 	nop
bfc088dc:	34080008 	li	t0,0x8
bfc088e0:	340c4444 	li	t4,0x4444
bfc088e4:	34090006 	li	t1,0x6
bfc088e8:	340a8888 	li	t2,0x8888
bfc088ec:	71095802 	mul	t3,t0,t1
bfc088f0:	24180030 	li	t8,48
bfc088f4:	15780dbb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc088f8:	00000000 	nop
bfc088fc:	34080008 	li	t0,0x8
bfc08900:	34090006 	li	t1,0x6
bfc08904:	71095002 	mul	t2,t0,t1
bfc08908:	24180030 	li	t8,48
bfc0890c:	15580db5 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08910:	00000000 	nop
bfc08914:	34090006 	li	t1,0x6
bfc08918:	34080008 	li	t0,0x8
bfc0891c:	71095002 	mul	t2,t0,t1
bfc08920:	24180030 	li	t8,48
bfc08924:	15580daf 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08928:	00000000 	nop
bfc0892c:	34090006 	li	t1,0x6
bfc08930:	34080008 	li	t0,0x8
bfc08934:	340a8888 	li	t2,0x8888
bfc08938:	71095802 	mul	t3,t0,t1
bfc0893c:	24180030 	li	t8,48
bfc08940:	15780da8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08944:	00000000 	nop
bfc08948:	34090006 	li	t1,0x6
bfc0894c:	340c4444 	li	t4,0x4444
bfc08950:	34080008 	li	t0,0x8
bfc08954:	340a8888 	li	t2,0x8888
bfc08958:	71095802 	mul	t3,t0,t1
bfc0895c:	24180030 	li	t8,48
bfc08960:	15780da0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08964:	00000000 	nop
bfc08968:	34080008 	li	t0,0x8
bfc0896c:	34090006 	li	t1,0x6
bfc08970:	71095002 	mul	t2,t0,t1
bfc08974:	01405825 	move	t3,t2
bfc08978:	24180030 	li	t8,48
bfc0897c:	15780d99 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08980:	00000000 	nop
bfc08984:	34090006 	li	t1,0x6
bfc08988:	34080008 	li	t0,0x8
bfc0898c:	71095002 	mul	t2,t0,t1
bfc08990:	340c3333 	li	t4,0x3333
bfc08994:	01405825 	move	t3,t2
bfc08998:	24180030 	li	t8,48
bfc0899c:	15780d91 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc089a0:	00000000 	nop
bfc089a4:	34090006 	li	t1,0x6
bfc089a8:	34080008 	li	t0,0x8
bfc089ac:	71095002 	mul	t2,t0,t1
bfc089b0:	340d4444 	li	t5,0x4444
bfc089b4:	340c3333 	li	t4,0x3333
bfc089b8:	01405825 	move	t3,t2
bfc089bc:	24180030 	li	t8,48
bfc089c0:	15780d88 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc089c4:	00000000 	nop
bfc089c8:	34090006 	li	t1,0x6
bfc089cc:	34080008 	li	t0,0x8
bfc089d0:	71095002 	mul	t2,t0,t1
bfc089d4:	340d4444 	li	t5,0x4444
bfc089d8:	340c3333 	li	t4,0x3333
bfc089dc:	340e2222 	li	t6,0x2222
bfc089e0:	01405825 	move	t3,t2
bfc089e4:	24180030 	li	t8,48
bfc089e8:	15780d7e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc089ec:	00000000 	nop
bfc089f0:	34080008 	li	t0,0x8
bfc089f4:	34090006 	li	t1,0x6
bfc089f8:	71095002 	mul	t2,t0,t1
bfc089fc:	000a5825 	or	t3,zero,t2
bfc08a00:	24180030 	li	t8,48
bfc08a04:	15780d77 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08a08:	00000000 	nop
bfc08a0c:	34090006 	li	t1,0x6
bfc08a10:	34080008 	li	t0,0x8
bfc08a14:	71095002 	mul	t2,t0,t1
bfc08a18:	340c3333 	li	t4,0x3333
bfc08a1c:	000a5825 	or	t3,zero,t2
bfc08a20:	24180030 	li	t8,48
bfc08a24:	15780d6f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08a28:	00000000 	nop
bfc08a2c:	34090006 	li	t1,0x6
bfc08a30:	34080008 	li	t0,0x8
bfc08a34:	71095002 	mul	t2,t0,t1
bfc08a38:	340d4444 	li	t5,0x4444
bfc08a3c:	340c3333 	li	t4,0x3333
bfc08a40:	000a5825 	or	t3,zero,t2
bfc08a44:	24180030 	li	t8,48
bfc08a48:	15780d66 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08a4c:	00000000 	nop
bfc08a50:	34090006 	li	t1,0x6
bfc08a54:	34080008 	li	t0,0x8
bfc08a58:	71095002 	mul	t2,t0,t1
bfc08a5c:	340d4444 	li	t5,0x4444
bfc08a60:	340c3333 	li	t4,0x3333
bfc08a64:	340e2222 	li	t6,0x2222
bfc08a68:	000a5825 	or	t3,zero,t2
bfc08a6c:	24180030 	li	t8,48
bfc08a70:	15780d5c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08a74:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:74
bfc08a78:	34090006 	li	t1,0x6
bfc08a7c:	34080009 	li	t0,0x9
bfc08a80:	71095002 	mul	t2,t0,t1
bfc08a84:	24180036 	li	t8,54
bfc08a88:	15580d56 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08a8c:	00000000 	nop
bfc08a90:	34080009 	li	t0,0x9
bfc08a94:	34090006 	li	t1,0x6
bfc08a98:	71095002 	mul	t2,t0,t1
bfc08a9c:	24180036 	li	t8,54
bfc08aa0:	15580d50 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08aa4:	00000000 	nop
bfc08aa8:	34080009 	li	t0,0x9
bfc08aac:	34090006 	li	t1,0x6
bfc08ab0:	340a8888 	li	t2,0x8888
bfc08ab4:	71095802 	mul	t3,t0,t1
bfc08ab8:	24180036 	li	t8,54
bfc08abc:	15780d49 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08ac0:	00000000 	nop
bfc08ac4:	34080009 	li	t0,0x9
bfc08ac8:	340c4444 	li	t4,0x4444
bfc08acc:	34090006 	li	t1,0x6
bfc08ad0:	340a8888 	li	t2,0x8888
bfc08ad4:	71095802 	mul	t3,t0,t1
bfc08ad8:	24180036 	li	t8,54
bfc08adc:	15780d41 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08ae0:	00000000 	nop
bfc08ae4:	34080009 	li	t0,0x9
bfc08ae8:	34090006 	li	t1,0x6
bfc08aec:	71095002 	mul	t2,t0,t1
bfc08af0:	24180036 	li	t8,54
bfc08af4:	15580d3b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08af8:	00000000 	nop
bfc08afc:	34090006 	li	t1,0x6
bfc08b00:	34080009 	li	t0,0x9
bfc08b04:	71095002 	mul	t2,t0,t1
bfc08b08:	24180036 	li	t8,54
bfc08b0c:	15580d35 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08b10:	00000000 	nop
bfc08b14:	34090006 	li	t1,0x6
bfc08b18:	34080009 	li	t0,0x9
bfc08b1c:	340a8888 	li	t2,0x8888
bfc08b20:	71095802 	mul	t3,t0,t1
bfc08b24:	24180036 	li	t8,54
bfc08b28:	15780d2e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08b2c:	00000000 	nop
bfc08b30:	34090006 	li	t1,0x6
bfc08b34:	340c4444 	li	t4,0x4444
bfc08b38:	34080009 	li	t0,0x9
bfc08b3c:	340a8888 	li	t2,0x8888
bfc08b40:	71095802 	mul	t3,t0,t1
bfc08b44:	24180036 	li	t8,54
bfc08b48:	15780d26 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08b4c:	00000000 	nop
bfc08b50:	34080009 	li	t0,0x9
bfc08b54:	34090006 	li	t1,0x6
bfc08b58:	71095002 	mul	t2,t0,t1
bfc08b5c:	01405825 	move	t3,t2
bfc08b60:	24180036 	li	t8,54
bfc08b64:	15780d1f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08b68:	00000000 	nop
bfc08b6c:	34090006 	li	t1,0x6
bfc08b70:	34080009 	li	t0,0x9
bfc08b74:	71095002 	mul	t2,t0,t1
bfc08b78:	340c3333 	li	t4,0x3333
bfc08b7c:	01405825 	move	t3,t2
bfc08b80:	24180036 	li	t8,54
bfc08b84:	15780d17 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08b88:	00000000 	nop
bfc08b8c:	34090006 	li	t1,0x6
bfc08b90:	34080009 	li	t0,0x9
bfc08b94:	71095002 	mul	t2,t0,t1
bfc08b98:	340d4444 	li	t5,0x4444
bfc08b9c:	340c3333 	li	t4,0x3333
bfc08ba0:	01405825 	move	t3,t2
bfc08ba4:	24180036 	li	t8,54
bfc08ba8:	15780d0e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08bac:	00000000 	nop
bfc08bb0:	34090006 	li	t1,0x6
bfc08bb4:	34080009 	li	t0,0x9
bfc08bb8:	71095002 	mul	t2,t0,t1
bfc08bbc:	340d4444 	li	t5,0x4444
bfc08bc0:	340c3333 	li	t4,0x3333
bfc08bc4:	340e2222 	li	t6,0x2222
bfc08bc8:	01405825 	move	t3,t2
bfc08bcc:	24180036 	li	t8,54
bfc08bd0:	15780d04 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08bd4:	00000000 	nop
bfc08bd8:	34080009 	li	t0,0x9
bfc08bdc:	34090006 	li	t1,0x6
bfc08be0:	71095002 	mul	t2,t0,t1
bfc08be4:	000a5825 	or	t3,zero,t2
bfc08be8:	24180036 	li	t8,54
bfc08bec:	15780cfd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08bf0:	00000000 	nop
bfc08bf4:	34090006 	li	t1,0x6
bfc08bf8:	34080009 	li	t0,0x9
bfc08bfc:	71095002 	mul	t2,t0,t1
bfc08c00:	340c3333 	li	t4,0x3333
bfc08c04:	000a5825 	or	t3,zero,t2
bfc08c08:	24180036 	li	t8,54
bfc08c0c:	15780cf5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08c10:	00000000 	nop
bfc08c14:	34090006 	li	t1,0x6
bfc08c18:	34080009 	li	t0,0x9
bfc08c1c:	71095002 	mul	t2,t0,t1
bfc08c20:	340d4444 	li	t5,0x4444
bfc08c24:	340c3333 	li	t4,0x3333
bfc08c28:	000a5825 	or	t3,zero,t2
bfc08c2c:	24180036 	li	t8,54
bfc08c30:	15780cec 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08c34:	00000000 	nop
bfc08c38:	34090006 	li	t1,0x6
bfc08c3c:	34080009 	li	t0,0x9
bfc08c40:	71095002 	mul	t2,t0,t1
bfc08c44:	340d4444 	li	t5,0x4444
bfc08c48:	340c3333 	li	t4,0x3333
bfc08c4c:	340e2222 	li	t6,0x2222
bfc08c50:	000a5825 	or	t3,zero,t2
bfc08c54:	24180036 	li	t8,54
bfc08c58:	15780ce2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08c5c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:75
bfc08c60:	34090007 	li	t1,0x7
bfc08c64:	34080001 	li	t0,0x1
bfc08c68:	71095002 	mul	t2,t0,t1
bfc08c6c:	24180007 	li	t8,7
bfc08c70:	15580cdc 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08c74:	00000000 	nop
bfc08c78:	34080001 	li	t0,0x1
bfc08c7c:	34090007 	li	t1,0x7
bfc08c80:	71095002 	mul	t2,t0,t1
bfc08c84:	24180007 	li	t8,7
bfc08c88:	15580cd6 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08c8c:	00000000 	nop
bfc08c90:	34080001 	li	t0,0x1
bfc08c94:	34090007 	li	t1,0x7
bfc08c98:	340a8888 	li	t2,0x8888
bfc08c9c:	71095802 	mul	t3,t0,t1
bfc08ca0:	24180007 	li	t8,7
bfc08ca4:	15780ccf 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08ca8:	00000000 	nop
bfc08cac:	34080001 	li	t0,0x1
bfc08cb0:	340c4444 	li	t4,0x4444
bfc08cb4:	34090007 	li	t1,0x7
bfc08cb8:	340a8888 	li	t2,0x8888
bfc08cbc:	71095802 	mul	t3,t0,t1
bfc08cc0:	24180007 	li	t8,7
bfc08cc4:	15780cc7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08cc8:	00000000 	nop
bfc08ccc:	34080001 	li	t0,0x1
bfc08cd0:	34090007 	li	t1,0x7
bfc08cd4:	71095002 	mul	t2,t0,t1
bfc08cd8:	24180007 	li	t8,7
bfc08cdc:	15580cc1 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08ce0:	00000000 	nop
bfc08ce4:	34090007 	li	t1,0x7
bfc08ce8:	34080001 	li	t0,0x1
bfc08cec:	71095002 	mul	t2,t0,t1
bfc08cf0:	24180007 	li	t8,7
bfc08cf4:	15580cbb 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08cf8:	00000000 	nop
bfc08cfc:	34090007 	li	t1,0x7
bfc08d00:	34080001 	li	t0,0x1
bfc08d04:	340a8888 	li	t2,0x8888
bfc08d08:	71095802 	mul	t3,t0,t1
bfc08d0c:	24180007 	li	t8,7
bfc08d10:	15780cb4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08d14:	00000000 	nop
bfc08d18:	34090007 	li	t1,0x7
bfc08d1c:	340c4444 	li	t4,0x4444
bfc08d20:	34080001 	li	t0,0x1
bfc08d24:	340a8888 	li	t2,0x8888
bfc08d28:	71095802 	mul	t3,t0,t1
bfc08d2c:	24180007 	li	t8,7
bfc08d30:	15780cac 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08d34:	00000000 	nop
bfc08d38:	34080001 	li	t0,0x1
bfc08d3c:	34090007 	li	t1,0x7
bfc08d40:	71095002 	mul	t2,t0,t1
bfc08d44:	01405825 	move	t3,t2
bfc08d48:	24180007 	li	t8,7
bfc08d4c:	15780ca5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08d50:	00000000 	nop
bfc08d54:	34090007 	li	t1,0x7
bfc08d58:	34080001 	li	t0,0x1
bfc08d5c:	71095002 	mul	t2,t0,t1
bfc08d60:	340c3333 	li	t4,0x3333
bfc08d64:	01405825 	move	t3,t2
bfc08d68:	24180007 	li	t8,7
bfc08d6c:	15780c9d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08d70:	00000000 	nop
bfc08d74:	34090007 	li	t1,0x7
bfc08d78:	34080001 	li	t0,0x1
bfc08d7c:	71095002 	mul	t2,t0,t1
bfc08d80:	340d4444 	li	t5,0x4444
bfc08d84:	340c3333 	li	t4,0x3333
bfc08d88:	01405825 	move	t3,t2
bfc08d8c:	24180007 	li	t8,7
bfc08d90:	15780c94 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08d94:	00000000 	nop
bfc08d98:	34090007 	li	t1,0x7
bfc08d9c:	34080001 	li	t0,0x1
bfc08da0:	71095002 	mul	t2,t0,t1
bfc08da4:	340d4444 	li	t5,0x4444
bfc08da8:	340c3333 	li	t4,0x3333
bfc08dac:	340e2222 	li	t6,0x2222
bfc08db0:	01405825 	move	t3,t2
bfc08db4:	24180007 	li	t8,7
bfc08db8:	15780c8a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08dbc:	00000000 	nop
bfc08dc0:	34080001 	li	t0,0x1
bfc08dc4:	34090007 	li	t1,0x7
bfc08dc8:	71095002 	mul	t2,t0,t1
bfc08dcc:	000a5825 	or	t3,zero,t2
bfc08dd0:	24180007 	li	t8,7
bfc08dd4:	15780c83 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08dd8:	00000000 	nop
bfc08ddc:	34090007 	li	t1,0x7
bfc08de0:	34080001 	li	t0,0x1
bfc08de4:	71095002 	mul	t2,t0,t1
bfc08de8:	340c3333 	li	t4,0x3333
bfc08dec:	000a5825 	or	t3,zero,t2
bfc08df0:	24180007 	li	t8,7
bfc08df4:	15780c7b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08df8:	00000000 	nop
bfc08dfc:	34090007 	li	t1,0x7
bfc08e00:	34080001 	li	t0,0x1
bfc08e04:	71095002 	mul	t2,t0,t1
bfc08e08:	340d4444 	li	t5,0x4444
bfc08e0c:	340c3333 	li	t4,0x3333
bfc08e10:	000a5825 	or	t3,zero,t2
bfc08e14:	24180007 	li	t8,7
bfc08e18:	15780c72 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08e1c:	00000000 	nop
bfc08e20:	34090007 	li	t1,0x7
bfc08e24:	34080001 	li	t0,0x1
bfc08e28:	71095002 	mul	t2,t0,t1
bfc08e2c:	340d4444 	li	t5,0x4444
bfc08e30:	340c3333 	li	t4,0x3333
bfc08e34:	340e2222 	li	t6,0x2222
bfc08e38:	000a5825 	or	t3,zero,t2
bfc08e3c:	24180007 	li	t8,7
bfc08e40:	15780c68 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08e44:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:76
bfc08e48:	34090007 	li	t1,0x7
bfc08e4c:	34080002 	li	t0,0x2
bfc08e50:	71095002 	mul	t2,t0,t1
bfc08e54:	2418000e 	li	t8,14
bfc08e58:	15580c62 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08e5c:	00000000 	nop
bfc08e60:	34080002 	li	t0,0x2
bfc08e64:	34090007 	li	t1,0x7
bfc08e68:	71095002 	mul	t2,t0,t1
bfc08e6c:	2418000e 	li	t8,14
bfc08e70:	15580c5c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08e74:	00000000 	nop
bfc08e78:	34080002 	li	t0,0x2
bfc08e7c:	34090007 	li	t1,0x7
bfc08e80:	340a8888 	li	t2,0x8888
bfc08e84:	71095802 	mul	t3,t0,t1
bfc08e88:	2418000e 	li	t8,14
bfc08e8c:	15780c55 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08e90:	00000000 	nop
bfc08e94:	34080002 	li	t0,0x2
bfc08e98:	340c4444 	li	t4,0x4444
bfc08e9c:	34090007 	li	t1,0x7
bfc08ea0:	340a8888 	li	t2,0x8888
bfc08ea4:	71095802 	mul	t3,t0,t1
bfc08ea8:	2418000e 	li	t8,14
bfc08eac:	15780c4d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08eb0:	00000000 	nop
bfc08eb4:	34080002 	li	t0,0x2
bfc08eb8:	34090007 	li	t1,0x7
bfc08ebc:	71095002 	mul	t2,t0,t1
bfc08ec0:	2418000e 	li	t8,14
bfc08ec4:	15580c47 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08ec8:	00000000 	nop
bfc08ecc:	34090007 	li	t1,0x7
bfc08ed0:	34080002 	li	t0,0x2
bfc08ed4:	71095002 	mul	t2,t0,t1
bfc08ed8:	2418000e 	li	t8,14
bfc08edc:	15580c41 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc08ee0:	00000000 	nop
bfc08ee4:	34090007 	li	t1,0x7
bfc08ee8:	34080002 	li	t0,0x2
bfc08eec:	340a8888 	li	t2,0x8888
bfc08ef0:	71095802 	mul	t3,t0,t1
bfc08ef4:	2418000e 	li	t8,14
bfc08ef8:	15780c3a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08efc:	00000000 	nop
bfc08f00:	34090007 	li	t1,0x7
bfc08f04:	340c4444 	li	t4,0x4444
bfc08f08:	34080002 	li	t0,0x2
bfc08f0c:	340a8888 	li	t2,0x8888
bfc08f10:	71095802 	mul	t3,t0,t1
bfc08f14:	2418000e 	li	t8,14
bfc08f18:	15780c32 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08f1c:	00000000 	nop
bfc08f20:	34080002 	li	t0,0x2
bfc08f24:	34090007 	li	t1,0x7
bfc08f28:	71095002 	mul	t2,t0,t1
bfc08f2c:	01405825 	move	t3,t2
bfc08f30:	2418000e 	li	t8,14
bfc08f34:	15780c2b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08f38:	00000000 	nop
bfc08f3c:	34090007 	li	t1,0x7
bfc08f40:	34080002 	li	t0,0x2
bfc08f44:	71095002 	mul	t2,t0,t1
bfc08f48:	340c3333 	li	t4,0x3333
bfc08f4c:	01405825 	move	t3,t2
bfc08f50:	2418000e 	li	t8,14
bfc08f54:	15780c23 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08f58:	00000000 	nop
bfc08f5c:	34090007 	li	t1,0x7
bfc08f60:	34080002 	li	t0,0x2
bfc08f64:	71095002 	mul	t2,t0,t1
bfc08f68:	340d4444 	li	t5,0x4444
bfc08f6c:	340c3333 	li	t4,0x3333
bfc08f70:	01405825 	move	t3,t2
bfc08f74:	2418000e 	li	t8,14
bfc08f78:	15780c1a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08f7c:	00000000 	nop
bfc08f80:	34090007 	li	t1,0x7
bfc08f84:	34080002 	li	t0,0x2
bfc08f88:	71095002 	mul	t2,t0,t1
bfc08f8c:	340d4444 	li	t5,0x4444
bfc08f90:	340c3333 	li	t4,0x3333
bfc08f94:	340e2222 	li	t6,0x2222
bfc08f98:	01405825 	move	t3,t2
bfc08f9c:	2418000e 	li	t8,14
bfc08fa0:	15780c10 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08fa4:	00000000 	nop
bfc08fa8:	34080002 	li	t0,0x2
bfc08fac:	34090007 	li	t1,0x7
bfc08fb0:	71095002 	mul	t2,t0,t1
bfc08fb4:	000a5825 	or	t3,zero,t2
bfc08fb8:	2418000e 	li	t8,14
bfc08fbc:	15780c09 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08fc0:	00000000 	nop
bfc08fc4:	34090007 	li	t1,0x7
bfc08fc8:	34080002 	li	t0,0x2
bfc08fcc:	71095002 	mul	t2,t0,t1
bfc08fd0:	340c3333 	li	t4,0x3333
bfc08fd4:	000a5825 	or	t3,zero,t2
bfc08fd8:	2418000e 	li	t8,14
bfc08fdc:	15780c01 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc08fe0:	00000000 	nop
bfc08fe4:	34090007 	li	t1,0x7
bfc08fe8:	34080002 	li	t0,0x2
bfc08fec:	71095002 	mul	t2,t0,t1
bfc08ff0:	340d4444 	li	t5,0x4444
bfc08ff4:	340c3333 	li	t4,0x3333
bfc08ff8:	000a5825 	or	t3,zero,t2
bfc08ffc:	2418000e 	li	t8,14
bfc09000:	15780bf8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09004:	00000000 	nop
bfc09008:	34090007 	li	t1,0x7
bfc0900c:	34080002 	li	t0,0x2
bfc09010:	71095002 	mul	t2,t0,t1
bfc09014:	340d4444 	li	t5,0x4444
bfc09018:	340c3333 	li	t4,0x3333
bfc0901c:	340e2222 	li	t6,0x2222
bfc09020:	000a5825 	or	t3,zero,t2
bfc09024:	2418000e 	li	t8,14
bfc09028:	15780bee 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0902c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:77
bfc09030:	34090007 	li	t1,0x7
bfc09034:	34080003 	li	t0,0x3
bfc09038:	71095002 	mul	t2,t0,t1
bfc0903c:	24180015 	li	t8,21
bfc09040:	15580be8 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09044:	00000000 	nop
bfc09048:	34080003 	li	t0,0x3
bfc0904c:	34090007 	li	t1,0x7
bfc09050:	71095002 	mul	t2,t0,t1
bfc09054:	24180015 	li	t8,21
bfc09058:	15580be2 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0905c:	00000000 	nop
bfc09060:	34080003 	li	t0,0x3
bfc09064:	34090007 	li	t1,0x7
bfc09068:	340a8888 	li	t2,0x8888
bfc0906c:	71095802 	mul	t3,t0,t1
bfc09070:	24180015 	li	t8,21
bfc09074:	15780bdb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09078:	00000000 	nop
bfc0907c:	34080003 	li	t0,0x3
bfc09080:	340c4444 	li	t4,0x4444
bfc09084:	34090007 	li	t1,0x7
bfc09088:	340a8888 	li	t2,0x8888
bfc0908c:	71095802 	mul	t3,t0,t1
bfc09090:	24180015 	li	t8,21
bfc09094:	15780bd3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09098:	00000000 	nop
bfc0909c:	34080003 	li	t0,0x3
bfc090a0:	34090007 	li	t1,0x7
bfc090a4:	71095002 	mul	t2,t0,t1
bfc090a8:	24180015 	li	t8,21
bfc090ac:	15580bcd 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc090b0:	00000000 	nop
bfc090b4:	34090007 	li	t1,0x7
bfc090b8:	34080003 	li	t0,0x3
bfc090bc:	71095002 	mul	t2,t0,t1
bfc090c0:	24180015 	li	t8,21
bfc090c4:	15580bc7 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc090c8:	00000000 	nop
bfc090cc:	34090007 	li	t1,0x7
bfc090d0:	34080003 	li	t0,0x3
bfc090d4:	340a8888 	li	t2,0x8888
bfc090d8:	71095802 	mul	t3,t0,t1
bfc090dc:	24180015 	li	t8,21
bfc090e0:	15780bc0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc090e4:	00000000 	nop
bfc090e8:	34090007 	li	t1,0x7
bfc090ec:	340c4444 	li	t4,0x4444
bfc090f0:	34080003 	li	t0,0x3
bfc090f4:	340a8888 	li	t2,0x8888
bfc090f8:	71095802 	mul	t3,t0,t1
bfc090fc:	24180015 	li	t8,21
bfc09100:	15780bb8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09104:	00000000 	nop
bfc09108:	34080003 	li	t0,0x3
bfc0910c:	34090007 	li	t1,0x7
bfc09110:	71095002 	mul	t2,t0,t1
bfc09114:	01405825 	move	t3,t2
bfc09118:	24180015 	li	t8,21
bfc0911c:	15780bb1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09120:	00000000 	nop
bfc09124:	34090007 	li	t1,0x7
bfc09128:	34080003 	li	t0,0x3
bfc0912c:	71095002 	mul	t2,t0,t1
bfc09130:	340c3333 	li	t4,0x3333
bfc09134:	01405825 	move	t3,t2
bfc09138:	24180015 	li	t8,21
bfc0913c:	15780ba9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09140:	00000000 	nop
bfc09144:	34090007 	li	t1,0x7
bfc09148:	34080003 	li	t0,0x3
bfc0914c:	71095002 	mul	t2,t0,t1
bfc09150:	340d4444 	li	t5,0x4444
bfc09154:	340c3333 	li	t4,0x3333
bfc09158:	01405825 	move	t3,t2
bfc0915c:	24180015 	li	t8,21
bfc09160:	15780ba0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09164:	00000000 	nop
bfc09168:	34090007 	li	t1,0x7
bfc0916c:	34080003 	li	t0,0x3
bfc09170:	71095002 	mul	t2,t0,t1
bfc09174:	340d4444 	li	t5,0x4444
bfc09178:	340c3333 	li	t4,0x3333
bfc0917c:	340e2222 	li	t6,0x2222
bfc09180:	01405825 	move	t3,t2
bfc09184:	24180015 	li	t8,21
bfc09188:	15780b96 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0918c:	00000000 	nop
bfc09190:	34080003 	li	t0,0x3
bfc09194:	34090007 	li	t1,0x7
bfc09198:	71095002 	mul	t2,t0,t1
bfc0919c:	000a5825 	or	t3,zero,t2
bfc091a0:	24180015 	li	t8,21
bfc091a4:	15780b8f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc091a8:	00000000 	nop
bfc091ac:	34090007 	li	t1,0x7
bfc091b0:	34080003 	li	t0,0x3
bfc091b4:	71095002 	mul	t2,t0,t1
bfc091b8:	340c3333 	li	t4,0x3333
bfc091bc:	000a5825 	or	t3,zero,t2
bfc091c0:	24180015 	li	t8,21
bfc091c4:	15780b87 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc091c8:	00000000 	nop
bfc091cc:	34090007 	li	t1,0x7
bfc091d0:	34080003 	li	t0,0x3
bfc091d4:	71095002 	mul	t2,t0,t1
bfc091d8:	340d4444 	li	t5,0x4444
bfc091dc:	340c3333 	li	t4,0x3333
bfc091e0:	000a5825 	or	t3,zero,t2
bfc091e4:	24180015 	li	t8,21
bfc091e8:	15780b7e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc091ec:	00000000 	nop
bfc091f0:	34090007 	li	t1,0x7
bfc091f4:	34080003 	li	t0,0x3
bfc091f8:	71095002 	mul	t2,t0,t1
bfc091fc:	340d4444 	li	t5,0x4444
bfc09200:	340c3333 	li	t4,0x3333
bfc09204:	340e2222 	li	t6,0x2222
bfc09208:	000a5825 	or	t3,zero,t2
bfc0920c:	24180015 	li	t8,21
bfc09210:	15780b74 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09214:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:78
bfc09218:	34090007 	li	t1,0x7
bfc0921c:	34080004 	li	t0,0x4
bfc09220:	71095002 	mul	t2,t0,t1
bfc09224:	2418001c 	li	t8,28
bfc09228:	15580b6e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0922c:	00000000 	nop
bfc09230:	34080004 	li	t0,0x4
bfc09234:	34090007 	li	t1,0x7
bfc09238:	71095002 	mul	t2,t0,t1
bfc0923c:	2418001c 	li	t8,28
bfc09240:	15580b68 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09244:	00000000 	nop
bfc09248:	34080004 	li	t0,0x4
bfc0924c:	34090007 	li	t1,0x7
bfc09250:	340a8888 	li	t2,0x8888
bfc09254:	71095802 	mul	t3,t0,t1
bfc09258:	2418001c 	li	t8,28
bfc0925c:	15780b61 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09260:	00000000 	nop
bfc09264:	34080004 	li	t0,0x4
bfc09268:	340c4444 	li	t4,0x4444
bfc0926c:	34090007 	li	t1,0x7
bfc09270:	340a8888 	li	t2,0x8888
bfc09274:	71095802 	mul	t3,t0,t1
bfc09278:	2418001c 	li	t8,28
bfc0927c:	15780b59 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09280:	00000000 	nop
bfc09284:	34080004 	li	t0,0x4
bfc09288:	34090007 	li	t1,0x7
bfc0928c:	71095002 	mul	t2,t0,t1
bfc09290:	2418001c 	li	t8,28
bfc09294:	15580b53 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09298:	00000000 	nop
bfc0929c:	34090007 	li	t1,0x7
bfc092a0:	34080004 	li	t0,0x4
bfc092a4:	71095002 	mul	t2,t0,t1
bfc092a8:	2418001c 	li	t8,28
bfc092ac:	15580b4d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc092b0:	00000000 	nop
bfc092b4:	34090007 	li	t1,0x7
bfc092b8:	34080004 	li	t0,0x4
bfc092bc:	340a8888 	li	t2,0x8888
bfc092c0:	71095802 	mul	t3,t0,t1
bfc092c4:	2418001c 	li	t8,28
bfc092c8:	15780b46 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc092cc:	00000000 	nop
bfc092d0:	34090007 	li	t1,0x7
bfc092d4:	340c4444 	li	t4,0x4444
bfc092d8:	34080004 	li	t0,0x4
bfc092dc:	340a8888 	li	t2,0x8888
bfc092e0:	71095802 	mul	t3,t0,t1
bfc092e4:	2418001c 	li	t8,28
bfc092e8:	15780b3e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc092ec:	00000000 	nop
bfc092f0:	34080004 	li	t0,0x4
bfc092f4:	34090007 	li	t1,0x7
bfc092f8:	71095002 	mul	t2,t0,t1
bfc092fc:	01405825 	move	t3,t2
bfc09300:	2418001c 	li	t8,28
bfc09304:	15780b37 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09308:	00000000 	nop
bfc0930c:	34090007 	li	t1,0x7
bfc09310:	34080004 	li	t0,0x4
bfc09314:	71095002 	mul	t2,t0,t1
bfc09318:	340c3333 	li	t4,0x3333
bfc0931c:	01405825 	move	t3,t2
bfc09320:	2418001c 	li	t8,28
bfc09324:	15780b2f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09328:	00000000 	nop
bfc0932c:	34090007 	li	t1,0x7
bfc09330:	34080004 	li	t0,0x4
bfc09334:	71095002 	mul	t2,t0,t1
bfc09338:	340d4444 	li	t5,0x4444
bfc0933c:	340c3333 	li	t4,0x3333
bfc09340:	01405825 	move	t3,t2
bfc09344:	2418001c 	li	t8,28
bfc09348:	15780b26 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0934c:	00000000 	nop
bfc09350:	34090007 	li	t1,0x7
bfc09354:	34080004 	li	t0,0x4
bfc09358:	71095002 	mul	t2,t0,t1
bfc0935c:	340d4444 	li	t5,0x4444
bfc09360:	340c3333 	li	t4,0x3333
bfc09364:	340e2222 	li	t6,0x2222
bfc09368:	01405825 	move	t3,t2
bfc0936c:	2418001c 	li	t8,28
bfc09370:	15780b1c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09374:	00000000 	nop
bfc09378:	34080004 	li	t0,0x4
bfc0937c:	34090007 	li	t1,0x7
bfc09380:	71095002 	mul	t2,t0,t1
bfc09384:	000a5825 	or	t3,zero,t2
bfc09388:	2418001c 	li	t8,28
bfc0938c:	15780b15 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09390:	00000000 	nop
bfc09394:	34090007 	li	t1,0x7
bfc09398:	34080004 	li	t0,0x4
bfc0939c:	71095002 	mul	t2,t0,t1
bfc093a0:	340c3333 	li	t4,0x3333
bfc093a4:	000a5825 	or	t3,zero,t2
bfc093a8:	2418001c 	li	t8,28
bfc093ac:	15780b0d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc093b0:	00000000 	nop
bfc093b4:	34090007 	li	t1,0x7
bfc093b8:	34080004 	li	t0,0x4
bfc093bc:	71095002 	mul	t2,t0,t1
bfc093c0:	340d4444 	li	t5,0x4444
bfc093c4:	340c3333 	li	t4,0x3333
bfc093c8:	000a5825 	or	t3,zero,t2
bfc093cc:	2418001c 	li	t8,28
bfc093d0:	15780b04 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc093d4:	00000000 	nop
bfc093d8:	34090007 	li	t1,0x7
bfc093dc:	34080004 	li	t0,0x4
bfc093e0:	71095002 	mul	t2,t0,t1
bfc093e4:	340d4444 	li	t5,0x4444
bfc093e8:	340c3333 	li	t4,0x3333
bfc093ec:	340e2222 	li	t6,0x2222
bfc093f0:	000a5825 	or	t3,zero,t2
bfc093f4:	2418001c 	li	t8,28
bfc093f8:	15780afa 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc093fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:79
bfc09400:	34090007 	li	t1,0x7
bfc09404:	34080005 	li	t0,0x5
bfc09408:	71095002 	mul	t2,t0,t1
bfc0940c:	24180023 	li	t8,35
bfc09410:	15580af4 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09414:	00000000 	nop
bfc09418:	34080005 	li	t0,0x5
bfc0941c:	34090007 	li	t1,0x7
bfc09420:	71095002 	mul	t2,t0,t1
bfc09424:	24180023 	li	t8,35
bfc09428:	15580aee 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0942c:	00000000 	nop
bfc09430:	34080005 	li	t0,0x5
bfc09434:	34090007 	li	t1,0x7
bfc09438:	340a8888 	li	t2,0x8888
bfc0943c:	71095802 	mul	t3,t0,t1
bfc09440:	24180023 	li	t8,35
bfc09444:	15780ae7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09448:	00000000 	nop
bfc0944c:	34080005 	li	t0,0x5
bfc09450:	340c4444 	li	t4,0x4444
bfc09454:	34090007 	li	t1,0x7
bfc09458:	340a8888 	li	t2,0x8888
bfc0945c:	71095802 	mul	t3,t0,t1
bfc09460:	24180023 	li	t8,35
bfc09464:	15780adf 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09468:	00000000 	nop
bfc0946c:	34080005 	li	t0,0x5
bfc09470:	34090007 	li	t1,0x7
bfc09474:	71095002 	mul	t2,t0,t1
bfc09478:	24180023 	li	t8,35
bfc0947c:	15580ad9 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09480:	00000000 	nop
bfc09484:	34090007 	li	t1,0x7
bfc09488:	34080005 	li	t0,0x5
bfc0948c:	71095002 	mul	t2,t0,t1
bfc09490:	24180023 	li	t8,35
bfc09494:	15580ad3 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09498:	00000000 	nop
bfc0949c:	34090007 	li	t1,0x7
bfc094a0:	34080005 	li	t0,0x5
bfc094a4:	340a8888 	li	t2,0x8888
bfc094a8:	71095802 	mul	t3,t0,t1
bfc094ac:	24180023 	li	t8,35
bfc094b0:	15780acc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc094b4:	00000000 	nop
bfc094b8:	34090007 	li	t1,0x7
bfc094bc:	340c4444 	li	t4,0x4444
bfc094c0:	34080005 	li	t0,0x5
bfc094c4:	340a8888 	li	t2,0x8888
bfc094c8:	71095802 	mul	t3,t0,t1
bfc094cc:	24180023 	li	t8,35
bfc094d0:	15780ac4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc094d4:	00000000 	nop
bfc094d8:	34080005 	li	t0,0x5
bfc094dc:	34090007 	li	t1,0x7
bfc094e0:	71095002 	mul	t2,t0,t1
bfc094e4:	01405825 	move	t3,t2
bfc094e8:	24180023 	li	t8,35
bfc094ec:	15780abd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc094f0:	00000000 	nop
bfc094f4:	34090007 	li	t1,0x7
bfc094f8:	34080005 	li	t0,0x5
bfc094fc:	71095002 	mul	t2,t0,t1
bfc09500:	340c3333 	li	t4,0x3333
bfc09504:	01405825 	move	t3,t2
bfc09508:	24180023 	li	t8,35
bfc0950c:	15780ab5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09510:	00000000 	nop
bfc09514:	34090007 	li	t1,0x7
bfc09518:	34080005 	li	t0,0x5
bfc0951c:	71095002 	mul	t2,t0,t1
bfc09520:	340d4444 	li	t5,0x4444
bfc09524:	340c3333 	li	t4,0x3333
bfc09528:	01405825 	move	t3,t2
bfc0952c:	24180023 	li	t8,35
bfc09530:	15780aac 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09534:	00000000 	nop
bfc09538:	34090007 	li	t1,0x7
bfc0953c:	34080005 	li	t0,0x5
bfc09540:	71095002 	mul	t2,t0,t1
bfc09544:	340d4444 	li	t5,0x4444
bfc09548:	340c3333 	li	t4,0x3333
bfc0954c:	340e2222 	li	t6,0x2222
bfc09550:	01405825 	move	t3,t2
bfc09554:	24180023 	li	t8,35
bfc09558:	15780aa2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0955c:	00000000 	nop
bfc09560:	34080005 	li	t0,0x5
bfc09564:	34090007 	li	t1,0x7
bfc09568:	71095002 	mul	t2,t0,t1
bfc0956c:	000a5825 	or	t3,zero,t2
bfc09570:	24180023 	li	t8,35
bfc09574:	15780a9b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09578:	00000000 	nop
bfc0957c:	34090007 	li	t1,0x7
bfc09580:	34080005 	li	t0,0x5
bfc09584:	71095002 	mul	t2,t0,t1
bfc09588:	340c3333 	li	t4,0x3333
bfc0958c:	000a5825 	or	t3,zero,t2
bfc09590:	24180023 	li	t8,35
bfc09594:	15780a93 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09598:	00000000 	nop
bfc0959c:	34090007 	li	t1,0x7
bfc095a0:	34080005 	li	t0,0x5
bfc095a4:	71095002 	mul	t2,t0,t1
bfc095a8:	340d4444 	li	t5,0x4444
bfc095ac:	340c3333 	li	t4,0x3333
bfc095b0:	000a5825 	or	t3,zero,t2
bfc095b4:	24180023 	li	t8,35
bfc095b8:	15780a8a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc095bc:	00000000 	nop
bfc095c0:	34090007 	li	t1,0x7
bfc095c4:	34080005 	li	t0,0x5
bfc095c8:	71095002 	mul	t2,t0,t1
bfc095cc:	340d4444 	li	t5,0x4444
bfc095d0:	340c3333 	li	t4,0x3333
bfc095d4:	340e2222 	li	t6,0x2222
bfc095d8:	000a5825 	or	t3,zero,t2
bfc095dc:	24180023 	li	t8,35
bfc095e0:	15780a80 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc095e4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:80
bfc095e8:	34090007 	li	t1,0x7
bfc095ec:	34080006 	li	t0,0x6
bfc095f0:	71095002 	mul	t2,t0,t1
bfc095f4:	2418002a 	li	t8,42
bfc095f8:	15580a7a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc095fc:	00000000 	nop
bfc09600:	34080006 	li	t0,0x6
bfc09604:	34090007 	li	t1,0x7
bfc09608:	71095002 	mul	t2,t0,t1
bfc0960c:	2418002a 	li	t8,42
bfc09610:	15580a74 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09614:	00000000 	nop
bfc09618:	34080006 	li	t0,0x6
bfc0961c:	34090007 	li	t1,0x7
bfc09620:	340a8888 	li	t2,0x8888
bfc09624:	71095802 	mul	t3,t0,t1
bfc09628:	2418002a 	li	t8,42
bfc0962c:	15780a6d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09630:	00000000 	nop
bfc09634:	34080006 	li	t0,0x6
bfc09638:	340c4444 	li	t4,0x4444
bfc0963c:	34090007 	li	t1,0x7
bfc09640:	340a8888 	li	t2,0x8888
bfc09644:	71095802 	mul	t3,t0,t1
bfc09648:	2418002a 	li	t8,42
bfc0964c:	15780a65 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09650:	00000000 	nop
bfc09654:	34080006 	li	t0,0x6
bfc09658:	34090007 	li	t1,0x7
bfc0965c:	71095002 	mul	t2,t0,t1
bfc09660:	2418002a 	li	t8,42
bfc09664:	15580a5f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09668:	00000000 	nop
bfc0966c:	34090007 	li	t1,0x7
bfc09670:	34080006 	li	t0,0x6
bfc09674:	71095002 	mul	t2,t0,t1
bfc09678:	2418002a 	li	t8,42
bfc0967c:	15580a59 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09680:	00000000 	nop
bfc09684:	34090007 	li	t1,0x7
bfc09688:	34080006 	li	t0,0x6
bfc0968c:	340a8888 	li	t2,0x8888
bfc09690:	71095802 	mul	t3,t0,t1
bfc09694:	2418002a 	li	t8,42
bfc09698:	15780a52 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0969c:	00000000 	nop
bfc096a0:	34090007 	li	t1,0x7
bfc096a4:	340c4444 	li	t4,0x4444
bfc096a8:	34080006 	li	t0,0x6
bfc096ac:	340a8888 	li	t2,0x8888
bfc096b0:	71095802 	mul	t3,t0,t1
bfc096b4:	2418002a 	li	t8,42
bfc096b8:	15780a4a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc096bc:	00000000 	nop
bfc096c0:	34080006 	li	t0,0x6
bfc096c4:	34090007 	li	t1,0x7
bfc096c8:	71095002 	mul	t2,t0,t1
bfc096cc:	01405825 	move	t3,t2
bfc096d0:	2418002a 	li	t8,42
bfc096d4:	15780a43 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc096d8:	00000000 	nop
bfc096dc:	34090007 	li	t1,0x7
bfc096e0:	34080006 	li	t0,0x6
bfc096e4:	71095002 	mul	t2,t0,t1
bfc096e8:	340c3333 	li	t4,0x3333
bfc096ec:	01405825 	move	t3,t2
bfc096f0:	2418002a 	li	t8,42
bfc096f4:	15780a3b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc096f8:	00000000 	nop
bfc096fc:	34090007 	li	t1,0x7
bfc09700:	34080006 	li	t0,0x6
bfc09704:	71095002 	mul	t2,t0,t1
bfc09708:	340d4444 	li	t5,0x4444
bfc0970c:	340c3333 	li	t4,0x3333
bfc09710:	01405825 	move	t3,t2
bfc09714:	2418002a 	li	t8,42
bfc09718:	15780a32 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0971c:	00000000 	nop
bfc09720:	34090007 	li	t1,0x7
bfc09724:	34080006 	li	t0,0x6
bfc09728:	71095002 	mul	t2,t0,t1
bfc0972c:	340d4444 	li	t5,0x4444
bfc09730:	340c3333 	li	t4,0x3333
bfc09734:	340e2222 	li	t6,0x2222
bfc09738:	01405825 	move	t3,t2
bfc0973c:	2418002a 	li	t8,42
bfc09740:	15780a28 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09744:	00000000 	nop
bfc09748:	34080006 	li	t0,0x6
bfc0974c:	34090007 	li	t1,0x7
bfc09750:	71095002 	mul	t2,t0,t1
bfc09754:	000a5825 	or	t3,zero,t2
bfc09758:	2418002a 	li	t8,42
bfc0975c:	15780a21 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09760:	00000000 	nop
bfc09764:	34090007 	li	t1,0x7
bfc09768:	34080006 	li	t0,0x6
bfc0976c:	71095002 	mul	t2,t0,t1
bfc09770:	340c3333 	li	t4,0x3333
bfc09774:	000a5825 	or	t3,zero,t2
bfc09778:	2418002a 	li	t8,42
bfc0977c:	15780a19 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09780:	00000000 	nop
bfc09784:	34090007 	li	t1,0x7
bfc09788:	34080006 	li	t0,0x6
bfc0978c:	71095002 	mul	t2,t0,t1
bfc09790:	340d4444 	li	t5,0x4444
bfc09794:	340c3333 	li	t4,0x3333
bfc09798:	000a5825 	or	t3,zero,t2
bfc0979c:	2418002a 	li	t8,42
bfc097a0:	15780a10 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc097a4:	00000000 	nop
bfc097a8:	34090007 	li	t1,0x7
bfc097ac:	34080006 	li	t0,0x6
bfc097b0:	71095002 	mul	t2,t0,t1
bfc097b4:	340d4444 	li	t5,0x4444
bfc097b8:	340c3333 	li	t4,0x3333
bfc097bc:	340e2222 	li	t6,0x2222
bfc097c0:	000a5825 	or	t3,zero,t2
bfc097c4:	2418002a 	li	t8,42
bfc097c8:	15780a06 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc097cc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:81
bfc097d0:	34090007 	li	t1,0x7
bfc097d4:	34080007 	li	t0,0x7
bfc097d8:	71095002 	mul	t2,t0,t1
bfc097dc:	24180031 	li	t8,49
bfc097e0:	15580a00 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc097e4:	00000000 	nop
bfc097e8:	34080007 	li	t0,0x7
bfc097ec:	34090007 	li	t1,0x7
bfc097f0:	71095002 	mul	t2,t0,t1
bfc097f4:	24180031 	li	t8,49
bfc097f8:	155809fa 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc097fc:	00000000 	nop
bfc09800:	34080007 	li	t0,0x7
bfc09804:	34090007 	li	t1,0x7
bfc09808:	340a8888 	li	t2,0x8888
bfc0980c:	71095802 	mul	t3,t0,t1
bfc09810:	24180031 	li	t8,49
bfc09814:	157809f3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09818:	00000000 	nop
bfc0981c:	34080007 	li	t0,0x7
bfc09820:	340c4444 	li	t4,0x4444
bfc09824:	34090007 	li	t1,0x7
bfc09828:	340a8888 	li	t2,0x8888
bfc0982c:	71095802 	mul	t3,t0,t1
bfc09830:	24180031 	li	t8,49
bfc09834:	157809eb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09838:	00000000 	nop
bfc0983c:	34080007 	li	t0,0x7
bfc09840:	34090007 	li	t1,0x7
bfc09844:	71095002 	mul	t2,t0,t1
bfc09848:	24180031 	li	t8,49
bfc0984c:	155809e5 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09850:	00000000 	nop
bfc09854:	34090007 	li	t1,0x7
bfc09858:	34080007 	li	t0,0x7
bfc0985c:	71095002 	mul	t2,t0,t1
bfc09860:	24180031 	li	t8,49
bfc09864:	155809df 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09868:	00000000 	nop
bfc0986c:	34090007 	li	t1,0x7
bfc09870:	34080007 	li	t0,0x7
bfc09874:	340a8888 	li	t2,0x8888
bfc09878:	71095802 	mul	t3,t0,t1
bfc0987c:	24180031 	li	t8,49
bfc09880:	157809d8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09884:	00000000 	nop
bfc09888:	34090007 	li	t1,0x7
bfc0988c:	340c4444 	li	t4,0x4444
bfc09890:	34080007 	li	t0,0x7
bfc09894:	340a8888 	li	t2,0x8888
bfc09898:	71095802 	mul	t3,t0,t1
bfc0989c:	24180031 	li	t8,49
bfc098a0:	157809d0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc098a4:	00000000 	nop
bfc098a8:	34080007 	li	t0,0x7
bfc098ac:	34090007 	li	t1,0x7
bfc098b0:	71095002 	mul	t2,t0,t1
bfc098b4:	01405825 	move	t3,t2
bfc098b8:	24180031 	li	t8,49
bfc098bc:	157809c9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc098c0:	00000000 	nop
bfc098c4:	34090007 	li	t1,0x7
bfc098c8:	34080007 	li	t0,0x7
bfc098cc:	71095002 	mul	t2,t0,t1
bfc098d0:	340c3333 	li	t4,0x3333
bfc098d4:	01405825 	move	t3,t2
bfc098d8:	24180031 	li	t8,49
bfc098dc:	157809c1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc098e0:	00000000 	nop
bfc098e4:	34090007 	li	t1,0x7
bfc098e8:	34080007 	li	t0,0x7
bfc098ec:	71095002 	mul	t2,t0,t1
bfc098f0:	340d4444 	li	t5,0x4444
bfc098f4:	340c3333 	li	t4,0x3333
bfc098f8:	01405825 	move	t3,t2
bfc098fc:	24180031 	li	t8,49
bfc09900:	157809b8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09904:	00000000 	nop
bfc09908:	34090007 	li	t1,0x7
bfc0990c:	34080007 	li	t0,0x7
bfc09910:	71095002 	mul	t2,t0,t1
bfc09914:	340d4444 	li	t5,0x4444
bfc09918:	340c3333 	li	t4,0x3333
bfc0991c:	340e2222 	li	t6,0x2222
bfc09920:	01405825 	move	t3,t2
bfc09924:	24180031 	li	t8,49
bfc09928:	157809ae 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0992c:	00000000 	nop
bfc09930:	34080007 	li	t0,0x7
bfc09934:	34090007 	li	t1,0x7
bfc09938:	71095002 	mul	t2,t0,t1
bfc0993c:	000a5825 	or	t3,zero,t2
bfc09940:	24180031 	li	t8,49
bfc09944:	157809a7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09948:	00000000 	nop
bfc0994c:	34090007 	li	t1,0x7
bfc09950:	34080007 	li	t0,0x7
bfc09954:	71095002 	mul	t2,t0,t1
bfc09958:	340c3333 	li	t4,0x3333
bfc0995c:	000a5825 	or	t3,zero,t2
bfc09960:	24180031 	li	t8,49
bfc09964:	1578099f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09968:	00000000 	nop
bfc0996c:	34090007 	li	t1,0x7
bfc09970:	34080007 	li	t0,0x7
bfc09974:	71095002 	mul	t2,t0,t1
bfc09978:	340d4444 	li	t5,0x4444
bfc0997c:	340c3333 	li	t4,0x3333
bfc09980:	000a5825 	or	t3,zero,t2
bfc09984:	24180031 	li	t8,49
bfc09988:	15780996 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0998c:	00000000 	nop
bfc09990:	34090007 	li	t1,0x7
bfc09994:	34080007 	li	t0,0x7
bfc09998:	71095002 	mul	t2,t0,t1
bfc0999c:	340d4444 	li	t5,0x4444
bfc099a0:	340c3333 	li	t4,0x3333
bfc099a4:	340e2222 	li	t6,0x2222
bfc099a8:	000a5825 	or	t3,zero,t2
bfc099ac:	24180031 	li	t8,49
bfc099b0:	1578098c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc099b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:82
bfc099b8:	34090007 	li	t1,0x7
bfc099bc:	34080008 	li	t0,0x8
bfc099c0:	71095002 	mul	t2,t0,t1
bfc099c4:	24180038 	li	t8,56
bfc099c8:	15580986 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc099cc:	00000000 	nop
bfc099d0:	34080008 	li	t0,0x8
bfc099d4:	34090007 	li	t1,0x7
bfc099d8:	71095002 	mul	t2,t0,t1
bfc099dc:	24180038 	li	t8,56
bfc099e0:	15580980 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc099e4:	00000000 	nop
bfc099e8:	34080008 	li	t0,0x8
bfc099ec:	34090007 	li	t1,0x7
bfc099f0:	340a8888 	li	t2,0x8888
bfc099f4:	71095802 	mul	t3,t0,t1
bfc099f8:	24180038 	li	t8,56
bfc099fc:	15780979 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09a00:	00000000 	nop
bfc09a04:	34080008 	li	t0,0x8
bfc09a08:	340c4444 	li	t4,0x4444
bfc09a0c:	34090007 	li	t1,0x7
bfc09a10:	340a8888 	li	t2,0x8888
bfc09a14:	71095802 	mul	t3,t0,t1
bfc09a18:	24180038 	li	t8,56
bfc09a1c:	15780971 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09a20:	00000000 	nop
bfc09a24:	34080008 	li	t0,0x8
bfc09a28:	34090007 	li	t1,0x7
bfc09a2c:	71095002 	mul	t2,t0,t1
bfc09a30:	24180038 	li	t8,56
bfc09a34:	1558096b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09a38:	00000000 	nop
bfc09a3c:	34090007 	li	t1,0x7
bfc09a40:	34080008 	li	t0,0x8
bfc09a44:	71095002 	mul	t2,t0,t1
bfc09a48:	24180038 	li	t8,56
bfc09a4c:	15580965 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09a50:	00000000 	nop
bfc09a54:	34090007 	li	t1,0x7
bfc09a58:	34080008 	li	t0,0x8
bfc09a5c:	340a8888 	li	t2,0x8888
bfc09a60:	71095802 	mul	t3,t0,t1
bfc09a64:	24180038 	li	t8,56
bfc09a68:	1578095e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09a6c:	00000000 	nop
bfc09a70:	34090007 	li	t1,0x7
bfc09a74:	340c4444 	li	t4,0x4444
bfc09a78:	34080008 	li	t0,0x8
bfc09a7c:	340a8888 	li	t2,0x8888
bfc09a80:	71095802 	mul	t3,t0,t1
bfc09a84:	24180038 	li	t8,56
bfc09a88:	15780956 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09a8c:	00000000 	nop
bfc09a90:	34080008 	li	t0,0x8
bfc09a94:	34090007 	li	t1,0x7
bfc09a98:	71095002 	mul	t2,t0,t1
bfc09a9c:	01405825 	move	t3,t2
bfc09aa0:	24180038 	li	t8,56
bfc09aa4:	1578094f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09aa8:	00000000 	nop
bfc09aac:	34090007 	li	t1,0x7
bfc09ab0:	34080008 	li	t0,0x8
bfc09ab4:	71095002 	mul	t2,t0,t1
bfc09ab8:	340c3333 	li	t4,0x3333
bfc09abc:	01405825 	move	t3,t2
bfc09ac0:	24180038 	li	t8,56
bfc09ac4:	15780947 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09ac8:	00000000 	nop
bfc09acc:	34090007 	li	t1,0x7
bfc09ad0:	34080008 	li	t0,0x8
bfc09ad4:	71095002 	mul	t2,t0,t1
bfc09ad8:	340d4444 	li	t5,0x4444
bfc09adc:	340c3333 	li	t4,0x3333
bfc09ae0:	01405825 	move	t3,t2
bfc09ae4:	24180038 	li	t8,56
bfc09ae8:	1578093e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09aec:	00000000 	nop
bfc09af0:	34090007 	li	t1,0x7
bfc09af4:	34080008 	li	t0,0x8
bfc09af8:	71095002 	mul	t2,t0,t1
bfc09afc:	340d4444 	li	t5,0x4444
bfc09b00:	340c3333 	li	t4,0x3333
bfc09b04:	340e2222 	li	t6,0x2222
bfc09b08:	01405825 	move	t3,t2
bfc09b0c:	24180038 	li	t8,56
bfc09b10:	15780934 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09b14:	00000000 	nop
bfc09b18:	34080008 	li	t0,0x8
bfc09b1c:	34090007 	li	t1,0x7
bfc09b20:	71095002 	mul	t2,t0,t1
bfc09b24:	000a5825 	or	t3,zero,t2
bfc09b28:	24180038 	li	t8,56
bfc09b2c:	1578092d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09b30:	00000000 	nop
bfc09b34:	34090007 	li	t1,0x7
bfc09b38:	34080008 	li	t0,0x8
bfc09b3c:	71095002 	mul	t2,t0,t1
bfc09b40:	340c3333 	li	t4,0x3333
bfc09b44:	000a5825 	or	t3,zero,t2
bfc09b48:	24180038 	li	t8,56
bfc09b4c:	15780925 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09b50:	00000000 	nop
bfc09b54:	34090007 	li	t1,0x7
bfc09b58:	34080008 	li	t0,0x8
bfc09b5c:	71095002 	mul	t2,t0,t1
bfc09b60:	340d4444 	li	t5,0x4444
bfc09b64:	340c3333 	li	t4,0x3333
bfc09b68:	000a5825 	or	t3,zero,t2
bfc09b6c:	24180038 	li	t8,56
bfc09b70:	1578091c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09b74:	00000000 	nop
bfc09b78:	34090007 	li	t1,0x7
bfc09b7c:	34080008 	li	t0,0x8
bfc09b80:	71095002 	mul	t2,t0,t1
bfc09b84:	340d4444 	li	t5,0x4444
bfc09b88:	340c3333 	li	t4,0x3333
bfc09b8c:	340e2222 	li	t6,0x2222
bfc09b90:	000a5825 	or	t3,zero,t2
bfc09b94:	24180038 	li	t8,56
bfc09b98:	15780912 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09b9c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:83
bfc09ba0:	34090007 	li	t1,0x7
bfc09ba4:	34080009 	li	t0,0x9
bfc09ba8:	71095002 	mul	t2,t0,t1
bfc09bac:	2418003f 	li	t8,63
bfc09bb0:	1558090c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09bb4:	00000000 	nop
bfc09bb8:	34080009 	li	t0,0x9
bfc09bbc:	34090007 	li	t1,0x7
bfc09bc0:	71095002 	mul	t2,t0,t1
bfc09bc4:	2418003f 	li	t8,63
bfc09bc8:	15580906 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09bcc:	00000000 	nop
bfc09bd0:	34080009 	li	t0,0x9
bfc09bd4:	34090007 	li	t1,0x7
bfc09bd8:	340a8888 	li	t2,0x8888
bfc09bdc:	71095802 	mul	t3,t0,t1
bfc09be0:	2418003f 	li	t8,63
bfc09be4:	157808ff 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09be8:	00000000 	nop
bfc09bec:	34080009 	li	t0,0x9
bfc09bf0:	340c4444 	li	t4,0x4444
bfc09bf4:	34090007 	li	t1,0x7
bfc09bf8:	340a8888 	li	t2,0x8888
bfc09bfc:	71095802 	mul	t3,t0,t1
bfc09c00:	2418003f 	li	t8,63
bfc09c04:	157808f7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09c08:	00000000 	nop
bfc09c0c:	34080009 	li	t0,0x9
bfc09c10:	34090007 	li	t1,0x7
bfc09c14:	71095002 	mul	t2,t0,t1
bfc09c18:	2418003f 	li	t8,63
bfc09c1c:	155808f1 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09c20:	00000000 	nop
bfc09c24:	34090007 	li	t1,0x7
bfc09c28:	34080009 	li	t0,0x9
bfc09c2c:	71095002 	mul	t2,t0,t1
bfc09c30:	2418003f 	li	t8,63
bfc09c34:	155808eb 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09c38:	00000000 	nop
bfc09c3c:	34090007 	li	t1,0x7
bfc09c40:	34080009 	li	t0,0x9
bfc09c44:	340a8888 	li	t2,0x8888
bfc09c48:	71095802 	mul	t3,t0,t1
bfc09c4c:	2418003f 	li	t8,63
bfc09c50:	157808e4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09c54:	00000000 	nop
bfc09c58:	34090007 	li	t1,0x7
bfc09c5c:	340c4444 	li	t4,0x4444
bfc09c60:	34080009 	li	t0,0x9
bfc09c64:	340a8888 	li	t2,0x8888
bfc09c68:	71095802 	mul	t3,t0,t1
bfc09c6c:	2418003f 	li	t8,63
bfc09c70:	157808dc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09c74:	00000000 	nop
bfc09c78:	34080009 	li	t0,0x9
bfc09c7c:	34090007 	li	t1,0x7
bfc09c80:	71095002 	mul	t2,t0,t1
bfc09c84:	01405825 	move	t3,t2
bfc09c88:	2418003f 	li	t8,63
bfc09c8c:	157808d5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09c90:	00000000 	nop
bfc09c94:	34090007 	li	t1,0x7
bfc09c98:	34080009 	li	t0,0x9
bfc09c9c:	71095002 	mul	t2,t0,t1
bfc09ca0:	340c3333 	li	t4,0x3333
bfc09ca4:	01405825 	move	t3,t2
bfc09ca8:	2418003f 	li	t8,63
bfc09cac:	157808cd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09cb0:	00000000 	nop
bfc09cb4:	34090007 	li	t1,0x7
bfc09cb8:	34080009 	li	t0,0x9
bfc09cbc:	71095002 	mul	t2,t0,t1
bfc09cc0:	340d4444 	li	t5,0x4444
bfc09cc4:	340c3333 	li	t4,0x3333
bfc09cc8:	01405825 	move	t3,t2
bfc09ccc:	2418003f 	li	t8,63
bfc09cd0:	157808c4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09cd4:	00000000 	nop
bfc09cd8:	34090007 	li	t1,0x7
bfc09cdc:	34080009 	li	t0,0x9
bfc09ce0:	71095002 	mul	t2,t0,t1
bfc09ce4:	340d4444 	li	t5,0x4444
bfc09ce8:	340c3333 	li	t4,0x3333
bfc09cec:	340e2222 	li	t6,0x2222
bfc09cf0:	01405825 	move	t3,t2
bfc09cf4:	2418003f 	li	t8,63
bfc09cf8:	157808ba 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09cfc:	00000000 	nop
bfc09d00:	34080009 	li	t0,0x9
bfc09d04:	34090007 	li	t1,0x7
bfc09d08:	71095002 	mul	t2,t0,t1
bfc09d0c:	000a5825 	or	t3,zero,t2
bfc09d10:	2418003f 	li	t8,63
bfc09d14:	157808b3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09d18:	00000000 	nop
bfc09d1c:	34090007 	li	t1,0x7
bfc09d20:	34080009 	li	t0,0x9
bfc09d24:	71095002 	mul	t2,t0,t1
bfc09d28:	340c3333 	li	t4,0x3333
bfc09d2c:	000a5825 	or	t3,zero,t2
bfc09d30:	2418003f 	li	t8,63
bfc09d34:	157808ab 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09d38:	00000000 	nop
bfc09d3c:	34090007 	li	t1,0x7
bfc09d40:	34080009 	li	t0,0x9
bfc09d44:	71095002 	mul	t2,t0,t1
bfc09d48:	340d4444 	li	t5,0x4444
bfc09d4c:	340c3333 	li	t4,0x3333
bfc09d50:	000a5825 	or	t3,zero,t2
bfc09d54:	2418003f 	li	t8,63
bfc09d58:	157808a2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09d5c:	00000000 	nop
bfc09d60:	34090007 	li	t1,0x7
bfc09d64:	34080009 	li	t0,0x9
bfc09d68:	71095002 	mul	t2,t0,t1
bfc09d6c:	340d4444 	li	t5,0x4444
bfc09d70:	340c3333 	li	t4,0x3333
bfc09d74:	340e2222 	li	t6,0x2222
bfc09d78:	000a5825 	or	t3,zero,t2
bfc09d7c:	2418003f 	li	t8,63
bfc09d80:	15780898 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09d84:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:84
bfc09d88:	34090008 	li	t1,0x8
bfc09d8c:	34080001 	li	t0,0x1
bfc09d90:	71095002 	mul	t2,t0,t1
bfc09d94:	24180008 	li	t8,8
bfc09d98:	15580892 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09d9c:	00000000 	nop
bfc09da0:	34080001 	li	t0,0x1
bfc09da4:	34090008 	li	t1,0x8
bfc09da8:	71095002 	mul	t2,t0,t1
bfc09dac:	24180008 	li	t8,8
bfc09db0:	1558088c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09db4:	00000000 	nop
bfc09db8:	34080001 	li	t0,0x1
bfc09dbc:	34090008 	li	t1,0x8
bfc09dc0:	340a8888 	li	t2,0x8888
bfc09dc4:	71095802 	mul	t3,t0,t1
bfc09dc8:	24180008 	li	t8,8
bfc09dcc:	15780885 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09dd0:	00000000 	nop
bfc09dd4:	34080001 	li	t0,0x1
bfc09dd8:	340c4444 	li	t4,0x4444
bfc09ddc:	34090008 	li	t1,0x8
bfc09de0:	340a8888 	li	t2,0x8888
bfc09de4:	71095802 	mul	t3,t0,t1
bfc09de8:	24180008 	li	t8,8
bfc09dec:	1578087d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09df0:	00000000 	nop
bfc09df4:	34080001 	li	t0,0x1
bfc09df8:	34090008 	li	t1,0x8
bfc09dfc:	71095002 	mul	t2,t0,t1
bfc09e00:	24180008 	li	t8,8
bfc09e04:	15580877 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09e08:	00000000 	nop
bfc09e0c:	34090008 	li	t1,0x8
bfc09e10:	34080001 	li	t0,0x1
bfc09e14:	71095002 	mul	t2,t0,t1
bfc09e18:	24180008 	li	t8,8
bfc09e1c:	15580871 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09e20:	00000000 	nop
bfc09e24:	34090008 	li	t1,0x8
bfc09e28:	34080001 	li	t0,0x1
bfc09e2c:	340a8888 	li	t2,0x8888
bfc09e30:	71095802 	mul	t3,t0,t1
bfc09e34:	24180008 	li	t8,8
bfc09e38:	1578086a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09e3c:	00000000 	nop
bfc09e40:	34090008 	li	t1,0x8
bfc09e44:	340c4444 	li	t4,0x4444
bfc09e48:	34080001 	li	t0,0x1
bfc09e4c:	340a8888 	li	t2,0x8888
bfc09e50:	71095802 	mul	t3,t0,t1
bfc09e54:	24180008 	li	t8,8
bfc09e58:	15780862 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09e5c:	00000000 	nop
bfc09e60:	34080001 	li	t0,0x1
bfc09e64:	34090008 	li	t1,0x8
bfc09e68:	71095002 	mul	t2,t0,t1
bfc09e6c:	01405825 	move	t3,t2
bfc09e70:	24180008 	li	t8,8
bfc09e74:	1578085b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09e78:	00000000 	nop
bfc09e7c:	34090008 	li	t1,0x8
bfc09e80:	34080001 	li	t0,0x1
bfc09e84:	71095002 	mul	t2,t0,t1
bfc09e88:	340c3333 	li	t4,0x3333
bfc09e8c:	01405825 	move	t3,t2
bfc09e90:	24180008 	li	t8,8
bfc09e94:	15780853 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09e98:	00000000 	nop
bfc09e9c:	34090008 	li	t1,0x8
bfc09ea0:	34080001 	li	t0,0x1
bfc09ea4:	71095002 	mul	t2,t0,t1
bfc09ea8:	340d4444 	li	t5,0x4444
bfc09eac:	340c3333 	li	t4,0x3333
bfc09eb0:	01405825 	move	t3,t2
bfc09eb4:	24180008 	li	t8,8
bfc09eb8:	1578084a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09ebc:	00000000 	nop
bfc09ec0:	34090008 	li	t1,0x8
bfc09ec4:	34080001 	li	t0,0x1
bfc09ec8:	71095002 	mul	t2,t0,t1
bfc09ecc:	340d4444 	li	t5,0x4444
bfc09ed0:	340c3333 	li	t4,0x3333
bfc09ed4:	340e2222 	li	t6,0x2222
bfc09ed8:	01405825 	move	t3,t2
bfc09edc:	24180008 	li	t8,8
bfc09ee0:	15780840 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09ee4:	00000000 	nop
bfc09ee8:	34080001 	li	t0,0x1
bfc09eec:	34090008 	li	t1,0x8
bfc09ef0:	71095002 	mul	t2,t0,t1
bfc09ef4:	000a5825 	or	t3,zero,t2
bfc09ef8:	24180008 	li	t8,8
bfc09efc:	15780839 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09f00:	00000000 	nop
bfc09f04:	34090008 	li	t1,0x8
bfc09f08:	34080001 	li	t0,0x1
bfc09f0c:	71095002 	mul	t2,t0,t1
bfc09f10:	340c3333 	li	t4,0x3333
bfc09f14:	000a5825 	or	t3,zero,t2
bfc09f18:	24180008 	li	t8,8
bfc09f1c:	15780831 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09f20:	00000000 	nop
bfc09f24:	34090008 	li	t1,0x8
bfc09f28:	34080001 	li	t0,0x1
bfc09f2c:	71095002 	mul	t2,t0,t1
bfc09f30:	340d4444 	li	t5,0x4444
bfc09f34:	340c3333 	li	t4,0x3333
bfc09f38:	000a5825 	or	t3,zero,t2
bfc09f3c:	24180008 	li	t8,8
bfc09f40:	15780828 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09f44:	00000000 	nop
bfc09f48:	34090008 	li	t1,0x8
bfc09f4c:	34080001 	li	t0,0x1
bfc09f50:	71095002 	mul	t2,t0,t1
bfc09f54:	340d4444 	li	t5,0x4444
bfc09f58:	340c3333 	li	t4,0x3333
bfc09f5c:	340e2222 	li	t6,0x2222
bfc09f60:	000a5825 	or	t3,zero,t2
bfc09f64:	24180008 	li	t8,8
bfc09f68:	1578081e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09f6c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:85
bfc09f70:	34090008 	li	t1,0x8
bfc09f74:	34080002 	li	t0,0x2
bfc09f78:	71095002 	mul	t2,t0,t1
bfc09f7c:	24180010 	li	t8,16
bfc09f80:	15580818 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09f84:	00000000 	nop
bfc09f88:	34080002 	li	t0,0x2
bfc09f8c:	34090008 	li	t1,0x8
bfc09f90:	71095002 	mul	t2,t0,t1
bfc09f94:	24180010 	li	t8,16
bfc09f98:	15580812 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09f9c:	00000000 	nop
bfc09fa0:	34080002 	li	t0,0x2
bfc09fa4:	34090008 	li	t1,0x8
bfc09fa8:	340a8888 	li	t2,0x8888
bfc09fac:	71095802 	mul	t3,t0,t1
bfc09fb0:	24180010 	li	t8,16
bfc09fb4:	1578080b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09fb8:	00000000 	nop
bfc09fbc:	34080002 	li	t0,0x2
bfc09fc0:	340c4444 	li	t4,0x4444
bfc09fc4:	34090008 	li	t1,0x8
bfc09fc8:	340a8888 	li	t2,0x8888
bfc09fcc:	71095802 	mul	t3,t0,t1
bfc09fd0:	24180010 	li	t8,16
bfc09fd4:	15780803 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc09fd8:	00000000 	nop
bfc09fdc:	34080002 	li	t0,0x2
bfc09fe0:	34090008 	li	t1,0x8
bfc09fe4:	71095002 	mul	t2,t0,t1
bfc09fe8:	24180010 	li	t8,16
bfc09fec:	155807fd 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc09ff0:	00000000 	nop
bfc09ff4:	34090008 	li	t1,0x8
bfc09ff8:	34080002 	li	t0,0x2
bfc09ffc:	71095002 	mul	t2,t0,t1
bfc0a000:	24180010 	li	t8,16
bfc0a004:	155807f7 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a008:	00000000 	nop
bfc0a00c:	34090008 	li	t1,0x8
bfc0a010:	34080002 	li	t0,0x2
bfc0a014:	340a8888 	li	t2,0x8888
bfc0a018:	71095802 	mul	t3,t0,t1
bfc0a01c:	24180010 	li	t8,16
bfc0a020:	157807f0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a024:	00000000 	nop
bfc0a028:	34090008 	li	t1,0x8
bfc0a02c:	340c4444 	li	t4,0x4444
bfc0a030:	34080002 	li	t0,0x2
bfc0a034:	340a8888 	li	t2,0x8888
bfc0a038:	71095802 	mul	t3,t0,t1
bfc0a03c:	24180010 	li	t8,16
bfc0a040:	157807e8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a044:	00000000 	nop
bfc0a048:	34080002 	li	t0,0x2
bfc0a04c:	34090008 	li	t1,0x8
bfc0a050:	71095002 	mul	t2,t0,t1
bfc0a054:	01405825 	move	t3,t2
bfc0a058:	24180010 	li	t8,16
bfc0a05c:	157807e1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a060:	00000000 	nop
bfc0a064:	34090008 	li	t1,0x8
bfc0a068:	34080002 	li	t0,0x2
bfc0a06c:	71095002 	mul	t2,t0,t1
bfc0a070:	340c3333 	li	t4,0x3333
bfc0a074:	01405825 	move	t3,t2
bfc0a078:	24180010 	li	t8,16
bfc0a07c:	157807d9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a080:	00000000 	nop
bfc0a084:	34090008 	li	t1,0x8
bfc0a088:	34080002 	li	t0,0x2
bfc0a08c:	71095002 	mul	t2,t0,t1
bfc0a090:	340d4444 	li	t5,0x4444
bfc0a094:	340c3333 	li	t4,0x3333
bfc0a098:	01405825 	move	t3,t2
bfc0a09c:	24180010 	li	t8,16
bfc0a0a0:	157807d0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a0a4:	00000000 	nop
bfc0a0a8:	34090008 	li	t1,0x8
bfc0a0ac:	34080002 	li	t0,0x2
bfc0a0b0:	71095002 	mul	t2,t0,t1
bfc0a0b4:	340d4444 	li	t5,0x4444
bfc0a0b8:	340c3333 	li	t4,0x3333
bfc0a0bc:	340e2222 	li	t6,0x2222
bfc0a0c0:	01405825 	move	t3,t2
bfc0a0c4:	24180010 	li	t8,16
bfc0a0c8:	157807c6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a0cc:	00000000 	nop
bfc0a0d0:	34080002 	li	t0,0x2
bfc0a0d4:	34090008 	li	t1,0x8
bfc0a0d8:	71095002 	mul	t2,t0,t1
bfc0a0dc:	000a5825 	or	t3,zero,t2
bfc0a0e0:	24180010 	li	t8,16
bfc0a0e4:	157807bf 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a0e8:	00000000 	nop
bfc0a0ec:	34090008 	li	t1,0x8
bfc0a0f0:	34080002 	li	t0,0x2
bfc0a0f4:	71095002 	mul	t2,t0,t1
bfc0a0f8:	340c3333 	li	t4,0x3333
bfc0a0fc:	000a5825 	or	t3,zero,t2
bfc0a100:	24180010 	li	t8,16
bfc0a104:	157807b7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a108:	00000000 	nop
bfc0a10c:	34090008 	li	t1,0x8
bfc0a110:	34080002 	li	t0,0x2
bfc0a114:	71095002 	mul	t2,t0,t1
bfc0a118:	340d4444 	li	t5,0x4444
bfc0a11c:	340c3333 	li	t4,0x3333
bfc0a120:	000a5825 	or	t3,zero,t2
bfc0a124:	24180010 	li	t8,16
bfc0a128:	157807ae 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a12c:	00000000 	nop
bfc0a130:	34090008 	li	t1,0x8
bfc0a134:	34080002 	li	t0,0x2
bfc0a138:	71095002 	mul	t2,t0,t1
bfc0a13c:	340d4444 	li	t5,0x4444
bfc0a140:	340c3333 	li	t4,0x3333
bfc0a144:	340e2222 	li	t6,0x2222
bfc0a148:	000a5825 	or	t3,zero,t2
bfc0a14c:	24180010 	li	t8,16
bfc0a150:	157807a4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a154:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:86
bfc0a158:	34090008 	li	t1,0x8
bfc0a15c:	34080003 	li	t0,0x3
bfc0a160:	71095002 	mul	t2,t0,t1
bfc0a164:	24180018 	li	t8,24
bfc0a168:	1558079e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a16c:	00000000 	nop
bfc0a170:	34080003 	li	t0,0x3
bfc0a174:	34090008 	li	t1,0x8
bfc0a178:	71095002 	mul	t2,t0,t1
bfc0a17c:	24180018 	li	t8,24
bfc0a180:	15580798 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a184:	00000000 	nop
bfc0a188:	34080003 	li	t0,0x3
bfc0a18c:	34090008 	li	t1,0x8
bfc0a190:	340a8888 	li	t2,0x8888
bfc0a194:	71095802 	mul	t3,t0,t1
bfc0a198:	24180018 	li	t8,24
bfc0a19c:	15780791 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a1a0:	00000000 	nop
bfc0a1a4:	34080003 	li	t0,0x3
bfc0a1a8:	340c4444 	li	t4,0x4444
bfc0a1ac:	34090008 	li	t1,0x8
bfc0a1b0:	340a8888 	li	t2,0x8888
bfc0a1b4:	71095802 	mul	t3,t0,t1
bfc0a1b8:	24180018 	li	t8,24
bfc0a1bc:	15780789 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a1c0:	00000000 	nop
bfc0a1c4:	34080003 	li	t0,0x3
bfc0a1c8:	34090008 	li	t1,0x8
bfc0a1cc:	71095002 	mul	t2,t0,t1
bfc0a1d0:	24180018 	li	t8,24
bfc0a1d4:	15580783 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a1d8:	00000000 	nop
bfc0a1dc:	34090008 	li	t1,0x8
bfc0a1e0:	34080003 	li	t0,0x3
bfc0a1e4:	71095002 	mul	t2,t0,t1
bfc0a1e8:	24180018 	li	t8,24
bfc0a1ec:	1558077d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a1f0:	00000000 	nop
bfc0a1f4:	34090008 	li	t1,0x8
bfc0a1f8:	34080003 	li	t0,0x3
bfc0a1fc:	340a8888 	li	t2,0x8888
bfc0a200:	71095802 	mul	t3,t0,t1
bfc0a204:	24180018 	li	t8,24
bfc0a208:	15780776 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a20c:	00000000 	nop
bfc0a210:	34090008 	li	t1,0x8
bfc0a214:	340c4444 	li	t4,0x4444
bfc0a218:	34080003 	li	t0,0x3
bfc0a21c:	340a8888 	li	t2,0x8888
bfc0a220:	71095802 	mul	t3,t0,t1
bfc0a224:	24180018 	li	t8,24
bfc0a228:	1578076e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a22c:	00000000 	nop
bfc0a230:	34080003 	li	t0,0x3
bfc0a234:	34090008 	li	t1,0x8
bfc0a238:	71095002 	mul	t2,t0,t1
bfc0a23c:	01405825 	move	t3,t2
bfc0a240:	24180018 	li	t8,24
bfc0a244:	15780767 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a248:	00000000 	nop
bfc0a24c:	34090008 	li	t1,0x8
bfc0a250:	34080003 	li	t0,0x3
bfc0a254:	71095002 	mul	t2,t0,t1
bfc0a258:	340c3333 	li	t4,0x3333
bfc0a25c:	01405825 	move	t3,t2
bfc0a260:	24180018 	li	t8,24
bfc0a264:	1578075f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a268:	00000000 	nop
bfc0a26c:	34090008 	li	t1,0x8
bfc0a270:	34080003 	li	t0,0x3
bfc0a274:	71095002 	mul	t2,t0,t1
bfc0a278:	340d4444 	li	t5,0x4444
bfc0a27c:	340c3333 	li	t4,0x3333
bfc0a280:	01405825 	move	t3,t2
bfc0a284:	24180018 	li	t8,24
bfc0a288:	15780756 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a28c:	00000000 	nop
bfc0a290:	34090008 	li	t1,0x8
bfc0a294:	34080003 	li	t0,0x3
bfc0a298:	71095002 	mul	t2,t0,t1
bfc0a29c:	340d4444 	li	t5,0x4444
bfc0a2a0:	340c3333 	li	t4,0x3333
bfc0a2a4:	340e2222 	li	t6,0x2222
bfc0a2a8:	01405825 	move	t3,t2
bfc0a2ac:	24180018 	li	t8,24
bfc0a2b0:	1578074c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a2b4:	00000000 	nop
bfc0a2b8:	34080003 	li	t0,0x3
bfc0a2bc:	34090008 	li	t1,0x8
bfc0a2c0:	71095002 	mul	t2,t0,t1
bfc0a2c4:	000a5825 	or	t3,zero,t2
bfc0a2c8:	24180018 	li	t8,24
bfc0a2cc:	15780745 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a2d0:	00000000 	nop
bfc0a2d4:	34090008 	li	t1,0x8
bfc0a2d8:	34080003 	li	t0,0x3
bfc0a2dc:	71095002 	mul	t2,t0,t1
bfc0a2e0:	340c3333 	li	t4,0x3333
bfc0a2e4:	000a5825 	or	t3,zero,t2
bfc0a2e8:	24180018 	li	t8,24
bfc0a2ec:	1578073d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a2f0:	00000000 	nop
bfc0a2f4:	34090008 	li	t1,0x8
bfc0a2f8:	34080003 	li	t0,0x3
bfc0a2fc:	71095002 	mul	t2,t0,t1
bfc0a300:	340d4444 	li	t5,0x4444
bfc0a304:	340c3333 	li	t4,0x3333
bfc0a308:	000a5825 	or	t3,zero,t2
bfc0a30c:	24180018 	li	t8,24
bfc0a310:	15780734 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a314:	00000000 	nop
bfc0a318:	34090008 	li	t1,0x8
bfc0a31c:	34080003 	li	t0,0x3
bfc0a320:	71095002 	mul	t2,t0,t1
bfc0a324:	340d4444 	li	t5,0x4444
bfc0a328:	340c3333 	li	t4,0x3333
bfc0a32c:	340e2222 	li	t6,0x2222
bfc0a330:	000a5825 	or	t3,zero,t2
bfc0a334:	24180018 	li	t8,24
bfc0a338:	1578072a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a33c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:87
bfc0a340:	34090008 	li	t1,0x8
bfc0a344:	34080004 	li	t0,0x4
bfc0a348:	71095002 	mul	t2,t0,t1
bfc0a34c:	24180020 	li	t8,32
bfc0a350:	15580724 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a354:	00000000 	nop
bfc0a358:	34080004 	li	t0,0x4
bfc0a35c:	34090008 	li	t1,0x8
bfc0a360:	71095002 	mul	t2,t0,t1
bfc0a364:	24180020 	li	t8,32
bfc0a368:	1558071e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a36c:	00000000 	nop
bfc0a370:	34080004 	li	t0,0x4
bfc0a374:	34090008 	li	t1,0x8
bfc0a378:	340a8888 	li	t2,0x8888
bfc0a37c:	71095802 	mul	t3,t0,t1
bfc0a380:	24180020 	li	t8,32
bfc0a384:	15780717 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a388:	00000000 	nop
bfc0a38c:	34080004 	li	t0,0x4
bfc0a390:	340c4444 	li	t4,0x4444
bfc0a394:	34090008 	li	t1,0x8
bfc0a398:	340a8888 	li	t2,0x8888
bfc0a39c:	71095802 	mul	t3,t0,t1
bfc0a3a0:	24180020 	li	t8,32
bfc0a3a4:	1578070f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a3a8:	00000000 	nop
bfc0a3ac:	34080004 	li	t0,0x4
bfc0a3b0:	34090008 	li	t1,0x8
bfc0a3b4:	71095002 	mul	t2,t0,t1
bfc0a3b8:	24180020 	li	t8,32
bfc0a3bc:	15580709 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a3c0:	00000000 	nop
bfc0a3c4:	34090008 	li	t1,0x8
bfc0a3c8:	34080004 	li	t0,0x4
bfc0a3cc:	71095002 	mul	t2,t0,t1
bfc0a3d0:	24180020 	li	t8,32
bfc0a3d4:	15580703 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a3d8:	00000000 	nop
bfc0a3dc:	34090008 	li	t1,0x8
bfc0a3e0:	34080004 	li	t0,0x4
bfc0a3e4:	340a8888 	li	t2,0x8888
bfc0a3e8:	71095802 	mul	t3,t0,t1
bfc0a3ec:	24180020 	li	t8,32
bfc0a3f0:	157806fc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a3f4:	00000000 	nop
bfc0a3f8:	34090008 	li	t1,0x8
bfc0a3fc:	340c4444 	li	t4,0x4444
bfc0a400:	34080004 	li	t0,0x4
bfc0a404:	340a8888 	li	t2,0x8888
bfc0a408:	71095802 	mul	t3,t0,t1
bfc0a40c:	24180020 	li	t8,32
bfc0a410:	157806f4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a414:	00000000 	nop
bfc0a418:	34080004 	li	t0,0x4
bfc0a41c:	34090008 	li	t1,0x8
bfc0a420:	71095002 	mul	t2,t0,t1
bfc0a424:	01405825 	move	t3,t2
bfc0a428:	24180020 	li	t8,32
bfc0a42c:	157806ed 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a430:	00000000 	nop
bfc0a434:	34090008 	li	t1,0x8
bfc0a438:	34080004 	li	t0,0x4
bfc0a43c:	71095002 	mul	t2,t0,t1
bfc0a440:	340c3333 	li	t4,0x3333
bfc0a444:	01405825 	move	t3,t2
bfc0a448:	24180020 	li	t8,32
bfc0a44c:	157806e5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a450:	00000000 	nop
bfc0a454:	34090008 	li	t1,0x8
bfc0a458:	34080004 	li	t0,0x4
bfc0a45c:	71095002 	mul	t2,t0,t1
bfc0a460:	340d4444 	li	t5,0x4444
bfc0a464:	340c3333 	li	t4,0x3333
bfc0a468:	01405825 	move	t3,t2
bfc0a46c:	24180020 	li	t8,32
bfc0a470:	157806dc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a474:	00000000 	nop
bfc0a478:	34090008 	li	t1,0x8
bfc0a47c:	34080004 	li	t0,0x4
bfc0a480:	71095002 	mul	t2,t0,t1
bfc0a484:	340d4444 	li	t5,0x4444
bfc0a488:	340c3333 	li	t4,0x3333
bfc0a48c:	340e2222 	li	t6,0x2222
bfc0a490:	01405825 	move	t3,t2
bfc0a494:	24180020 	li	t8,32
bfc0a498:	157806d2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a49c:	00000000 	nop
bfc0a4a0:	34080004 	li	t0,0x4
bfc0a4a4:	34090008 	li	t1,0x8
bfc0a4a8:	71095002 	mul	t2,t0,t1
bfc0a4ac:	000a5825 	or	t3,zero,t2
bfc0a4b0:	24180020 	li	t8,32
bfc0a4b4:	157806cb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a4b8:	00000000 	nop
bfc0a4bc:	34090008 	li	t1,0x8
bfc0a4c0:	34080004 	li	t0,0x4
bfc0a4c4:	71095002 	mul	t2,t0,t1
bfc0a4c8:	340c3333 	li	t4,0x3333
bfc0a4cc:	000a5825 	or	t3,zero,t2
bfc0a4d0:	24180020 	li	t8,32
bfc0a4d4:	157806c3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a4d8:	00000000 	nop
bfc0a4dc:	34090008 	li	t1,0x8
bfc0a4e0:	34080004 	li	t0,0x4
bfc0a4e4:	71095002 	mul	t2,t0,t1
bfc0a4e8:	340d4444 	li	t5,0x4444
bfc0a4ec:	340c3333 	li	t4,0x3333
bfc0a4f0:	000a5825 	or	t3,zero,t2
bfc0a4f4:	24180020 	li	t8,32
bfc0a4f8:	157806ba 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a4fc:	00000000 	nop
bfc0a500:	34090008 	li	t1,0x8
bfc0a504:	34080004 	li	t0,0x4
bfc0a508:	71095002 	mul	t2,t0,t1
bfc0a50c:	340d4444 	li	t5,0x4444
bfc0a510:	340c3333 	li	t4,0x3333
bfc0a514:	340e2222 	li	t6,0x2222
bfc0a518:	000a5825 	or	t3,zero,t2
bfc0a51c:	24180020 	li	t8,32
bfc0a520:	157806b0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a524:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:88
bfc0a528:	34090008 	li	t1,0x8
bfc0a52c:	34080005 	li	t0,0x5
bfc0a530:	71095002 	mul	t2,t0,t1
bfc0a534:	24180028 	li	t8,40
bfc0a538:	155806aa 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a53c:	00000000 	nop
bfc0a540:	34080005 	li	t0,0x5
bfc0a544:	34090008 	li	t1,0x8
bfc0a548:	71095002 	mul	t2,t0,t1
bfc0a54c:	24180028 	li	t8,40
bfc0a550:	155806a4 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a554:	00000000 	nop
bfc0a558:	34080005 	li	t0,0x5
bfc0a55c:	34090008 	li	t1,0x8
bfc0a560:	340a8888 	li	t2,0x8888
bfc0a564:	71095802 	mul	t3,t0,t1
bfc0a568:	24180028 	li	t8,40
bfc0a56c:	1578069d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a570:	00000000 	nop
bfc0a574:	34080005 	li	t0,0x5
bfc0a578:	340c4444 	li	t4,0x4444
bfc0a57c:	34090008 	li	t1,0x8
bfc0a580:	340a8888 	li	t2,0x8888
bfc0a584:	71095802 	mul	t3,t0,t1
bfc0a588:	24180028 	li	t8,40
bfc0a58c:	15780695 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a590:	00000000 	nop
bfc0a594:	34080005 	li	t0,0x5
bfc0a598:	34090008 	li	t1,0x8
bfc0a59c:	71095002 	mul	t2,t0,t1
bfc0a5a0:	24180028 	li	t8,40
bfc0a5a4:	1558068f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a5a8:	00000000 	nop
bfc0a5ac:	34090008 	li	t1,0x8
bfc0a5b0:	34080005 	li	t0,0x5
bfc0a5b4:	71095002 	mul	t2,t0,t1
bfc0a5b8:	24180028 	li	t8,40
bfc0a5bc:	15580689 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a5c0:	00000000 	nop
bfc0a5c4:	34090008 	li	t1,0x8
bfc0a5c8:	34080005 	li	t0,0x5
bfc0a5cc:	340a8888 	li	t2,0x8888
bfc0a5d0:	71095802 	mul	t3,t0,t1
bfc0a5d4:	24180028 	li	t8,40
bfc0a5d8:	15780682 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a5dc:	00000000 	nop
bfc0a5e0:	34090008 	li	t1,0x8
bfc0a5e4:	340c4444 	li	t4,0x4444
bfc0a5e8:	34080005 	li	t0,0x5
bfc0a5ec:	340a8888 	li	t2,0x8888
bfc0a5f0:	71095802 	mul	t3,t0,t1
bfc0a5f4:	24180028 	li	t8,40
bfc0a5f8:	1578067a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a5fc:	00000000 	nop
bfc0a600:	34080005 	li	t0,0x5
bfc0a604:	34090008 	li	t1,0x8
bfc0a608:	71095002 	mul	t2,t0,t1
bfc0a60c:	01405825 	move	t3,t2
bfc0a610:	24180028 	li	t8,40
bfc0a614:	15780673 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a618:	00000000 	nop
bfc0a61c:	34090008 	li	t1,0x8
bfc0a620:	34080005 	li	t0,0x5
bfc0a624:	71095002 	mul	t2,t0,t1
bfc0a628:	340c3333 	li	t4,0x3333
bfc0a62c:	01405825 	move	t3,t2
bfc0a630:	24180028 	li	t8,40
bfc0a634:	1578066b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a638:	00000000 	nop
bfc0a63c:	34090008 	li	t1,0x8
bfc0a640:	34080005 	li	t0,0x5
bfc0a644:	71095002 	mul	t2,t0,t1
bfc0a648:	340d4444 	li	t5,0x4444
bfc0a64c:	340c3333 	li	t4,0x3333
bfc0a650:	01405825 	move	t3,t2
bfc0a654:	24180028 	li	t8,40
bfc0a658:	15780662 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a65c:	00000000 	nop
bfc0a660:	34090008 	li	t1,0x8
bfc0a664:	34080005 	li	t0,0x5
bfc0a668:	71095002 	mul	t2,t0,t1
bfc0a66c:	340d4444 	li	t5,0x4444
bfc0a670:	340c3333 	li	t4,0x3333
bfc0a674:	340e2222 	li	t6,0x2222
bfc0a678:	01405825 	move	t3,t2
bfc0a67c:	24180028 	li	t8,40
bfc0a680:	15780658 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a684:	00000000 	nop
bfc0a688:	34080005 	li	t0,0x5
bfc0a68c:	34090008 	li	t1,0x8
bfc0a690:	71095002 	mul	t2,t0,t1
bfc0a694:	000a5825 	or	t3,zero,t2
bfc0a698:	24180028 	li	t8,40
bfc0a69c:	15780651 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a6a0:	00000000 	nop
bfc0a6a4:	34090008 	li	t1,0x8
bfc0a6a8:	34080005 	li	t0,0x5
bfc0a6ac:	71095002 	mul	t2,t0,t1
bfc0a6b0:	340c3333 	li	t4,0x3333
bfc0a6b4:	000a5825 	or	t3,zero,t2
bfc0a6b8:	24180028 	li	t8,40
bfc0a6bc:	15780649 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a6c0:	00000000 	nop
bfc0a6c4:	34090008 	li	t1,0x8
bfc0a6c8:	34080005 	li	t0,0x5
bfc0a6cc:	71095002 	mul	t2,t0,t1
bfc0a6d0:	340d4444 	li	t5,0x4444
bfc0a6d4:	340c3333 	li	t4,0x3333
bfc0a6d8:	000a5825 	or	t3,zero,t2
bfc0a6dc:	24180028 	li	t8,40
bfc0a6e0:	15780640 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a6e4:	00000000 	nop
bfc0a6e8:	34090008 	li	t1,0x8
bfc0a6ec:	34080005 	li	t0,0x5
bfc0a6f0:	71095002 	mul	t2,t0,t1
bfc0a6f4:	340d4444 	li	t5,0x4444
bfc0a6f8:	340c3333 	li	t4,0x3333
bfc0a6fc:	340e2222 	li	t6,0x2222
bfc0a700:	000a5825 	or	t3,zero,t2
bfc0a704:	24180028 	li	t8,40
bfc0a708:	15780636 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a70c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:89
bfc0a710:	34090008 	li	t1,0x8
bfc0a714:	34080006 	li	t0,0x6
bfc0a718:	71095002 	mul	t2,t0,t1
bfc0a71c:	24180030 	li	t8,48
bfc0a720:	15580630 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a724:	00000000 	nop
bfc0a728:	34080006 	li	t0,0x6
bfc0a72c:	34090008 	li	t1,0x8
bfc0a730:	71095002 	mul	t2,t0,t1
bfc0a734:	24180030 	li	t8,48
bfc0a738:	1558062a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a73c:	00000000 	nop
bfc0a740:	34080006 	li	t0,0x6
bfc0a744:	34090008 	li	t1,0x8
bfc0a748:	340a8888 	li	t2,0x8888
bfc0a74c:	71095802 	mul	t3,t0,t1
bfc0a750:	24180030 	li	t8,48
bfc0a754:	15780623 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a758:	00000000 	nop
bfc0a75c:	34080006 	li	t0,0x6
bfc0a760:	340c4444 	li	t4,0x4444
bfc0a764:	34090008 	li	t1,0x8
bfc0a768:	340a8888 	li	t2,0x8888
bfc0a76c:	71095802 	mul	t3,t0,t1
bfc0a770:	24180030 	li	t8,48
bfc0a774:	1578061b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a778:	00000000 	nop
bfc0a77c:	34080006 	li	t0,0x6
bfc0a780:	34090008 	li	t1,0x8
bfc0a784:	71095002 	mul	t2,t0,t1
bfc0a788:	24180030 	li	t8,48
bfc0a78c:	15580615 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a790:	00000000 	nop
bfc0a794:	34090008 	li	t1,0x8
bfc0a798:	34080006 	li	t0,0x6
bfc0a79c:	71095002 	mul	t2,t0,t1
bfc0a7a0:	24180030 	li	t8,48
bfc0a7a4:	1558060f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a7a8:	00000000 	nop
bfc0a7ac:	34090008 	li	t1,0x8
bfc0a7b0:	34080006 	li	t0,0x6
bfc0a7b4:	340a8888 	li	t2,0x8888
bfc0a7b8:	71095802 	mul	t3,t0,t1
bfc0a7bc:	24180030 	li	t8,48
bfc0a7c0:	15780608 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a7c4:	00000000 	nop
bfc0a7c8:	34090008 	li	t1,0x8
bfc0a7cc:	340c4444 	li	t4,0x4444
bfc0a7d0:	34080006 	li	t0,0x6
bfc0a7d4:	340a8888 	li	t2,0x8888
bfc0a7d8:	71095802 	mul	t3,t0,t1
bfc0a7dc:	24180030 	li	t8,48
bfc0a7e0:	15780600 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a7e4:	00000000 	nop
bfc0a7e8:	34080006 	li	t0,0x6
bfc0a7ec:	34090008 	li	t1,0x8
bfc0a7f0:	71095002 	mul	t2,t0,t1
bfc0a7f4:	01405825 	move	t3,t2
bfc0a7f8:	24180030 	li	t8,48
bfc0a7fc:	157805f9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a800:	00000000 	nop
bfc0a804:	34090008 	li	t1,0x8
bfc0a808:	34080006 	li	t0,0x6
bfc0a80c:	71095002 	mul	t2,t0,t1
bfc0a810:	340c3333 	li	t4,0x3333
bfc0a814:	01405825 	move	t3,t2
bfc0a818:	24180030 	li	t8,48
bfc0a81c:	157805f1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a820:	00000000 	nop
bfc0a824:	34090008 	li	t1,0x8
bfc0a828:	34080006 	li	t0,0x6
bfc0a82c:	71095002 	mul	t2,t0,t1
bfc0a830:	340d4444 	li	t5,0x4444
bfc0a834:	340c3333 	li	t4,0x3333
bfc0a838:	01405825 	move	t3,t2
bfc0a83c:	24180030 	li	t8,48
bfc0a840:	157805e8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a844:	00000000 	nop
bfc0a848:	34090008 	li	t1,0x8
bfc0a84c:	34080006 	li	t0,0x6
bfc0a850:	71095002 	mul	t2,t0,t1
bfc0a854:	340d4444 	li	t5,0x4444
bfc0a858:	340c3333 	li	t4,0x3333
bfc0a85c:	340e2222 	li	t6,0x2222
bfc0a860:	01405825 	move	t3,t2
bfc0a864:	24180030 	li	t8,48
bfc0a868:	157805de 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a86c:	00000000 	nop
bfc0a870:	34080006 	li	t0,0x6
bfc0a874:	34090008 	li	t1,0x8
bfc0a878:	71095002 	mul	t2,t0,t1
bfc0a87c:	000a5825 	or	t3,zero,t2
bfc0a880:	24180030 	li	t8,48
bfc0a884:	157805d7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a888:	00000000 	nop
bfc0a88c:	34090008 	li	t1,0x8
bfc0a890:	34080006 	li	t0,0x6
bfc0a894:	71095002 	mul	t2,t0,t1
bfc0a898:	340c3333 	li	t4,0x3333
bfc0a89c:	000a5825 	or	t3,zero,t2
bfc0a8a0:	24180030 	li	t8,48
bfc0a8a4:	157805cf 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a8a8:	00000000 	nop
bfc0a8ac:	34090008 	li	t1,0x8
bfc0a8b0:	34080006 	li	t0,0x6
bfc0a8b4:	71095002 	mul	t2,t0,t1
bfc0a8b8:	340d4444 	li	t5,0x4444
bfc0a8bc:	340c3333 	li	t4,0x3333
bfc0a8c0:	000a5825 	or	t3,zero,t2
bfc0a8c4:	24180030 	li	t8,48
bfc0a8c8:	157805c6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a8cc:	00000000 	nop
bfc0a8d0:	34090008 	li	t1,0x8
bfc0a8d4:	34080006 	li	t0,0x6
bfc0a8d8:	71095002 	mul	t2,t0,t1
bfc0a8dc:	340d4444 	li	t5,0x4444
bfc0a8e0:	340c3333 	li	t4,0x3333
bfc0a8e4:	340e2222 	li	t6,0x2222
bfc0a8e8:	000a5825 	or	t3,zero,t2
bfc0a8ec:	24180030 	li	t8,48
bfc0a8f0:	157805bc 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a8f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:90
bfc0a8f8:	34090008 	li	t1,0x8
bfc0a8fc:	34080007 	li	t0,0x7
bfc0a900:	71095002 	mul	t2,t0,t1
bfc0a904:	24180038 	li	t8,56
bfc0a908:	155805b6 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a90c:	00000000 	nop
bfc0a910:	34080007 	li	t0,0x7
bfc0a914:	34090008 	li	t1,0x8
bfc0a918:	71095002 	mul	t2,t0,t1
bfc0a91c:	24180038 	li	t8,56
bfc0a920:	155805b0 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a924:	00000000 	nop
bfc0a928:	34080007 	li	t0,0x7
bfc0a92c:	34090008 	li	t1,0x8
bfc0a930:	340a8888 	li	t2,0x8888
bfc0a934:	71095802 	mul	t3,t0,t1
bfc0a938:	24180038 	li	t8,56
bfc0a93c:	157805a9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a940:	00000000 	nop
bfc0a944:	34080007 	li	t0,0x7
bfc0a948:	340c4444 	li	t4,0x4444
bfc0a94c:	34090008 	li	t1,0x8
bfc0a950:	340a8888 	li	t2,0x8888
bfc0a954:	71095802 	mul	t3,t0,t1
bfc0a958:	24180038 	li	t8,56
bfc0a95c:	157805a1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a960:	00000000 	nop
bfc0a964:	34080007 	li	t0,0x7
bfc0a968:	34090008 	li	t1,0x8
bfc0a96c:	71095002 	mul	t2,t0,t1
bfc0a970:	24180038 	li	t8,56
bfc0a974:	1558059b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a978:	00000000 	nop
bfc0a97c:	34090008 	li	t1,0x8
bfc0a980:	34080007 	li	t0,0x7
bfc0a984:	71095002 	mul	t2,t0,t1
bfc0a988:	24180038 	li	t8,56
bfc0a98c:	15580595 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0a990:	00000000 	nop
bfc0a994:	34090008 	li	t1,0x8
bfc0a998:	34080007 	li	t0,0x7
bfc0a99c:	340a8888 	li	t2,0x8888
bfc0a9a0:	71095802 	mul	t3,t0,t1
bfc0a9a4:	24180038 	li	t8,56
bfc0a9a8:	1578058e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a9ac:	00000000 	nop
bfc0a9b0:	34090008 	li	t1,0x8
bfc0a9b4:	340c4444 	li	t4,0x4444
bfc0a9b8:	34080007 	li	t0,0x7
bfc0a9bc:	340a8888 	li	t2,0x8888
bfc0a9c0:	71095802 	mul	t3,t0,t1
bfc0a9c4:	24180038 	li	t8,56
bfc0a9c8:	15780586 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a9cc:	00000000 	nop
bfc0a9d0:	34080007 	li	t0,0x7
bfc0a9d4:	34090008 	li	t1,0x8
bfc0a9d8:	71095002 	mul	t2,t0,t1
bfc0a9dc:	01405825 	move	t3,t2
bfc0a9e0:	24180038 	li	t8,56
bfc0a9e4:	1578057f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0a9e8:	00000000 	nop
bfc0a9ec:	34090008 	li	t1,0x8
bfc0a9f0:	34080007 	li	t0,0x7
bfc0a9f4:	71095002 	mul	t2,t0,t1
bfc0a9f8:	340c3333 	li	t4,0x3333
bfc0a9fc:	01405825 	move	t3,t2
bfc0aa00:	24180038 	li	t8,56
bfc0aa04:	15780577 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0aa08:	00000000 	nop
bfc0aa0c:	34090008 	li	t1,0x8
bfc0aa10:	34080007 	li	t0,0x7
bfc0aa14:	71095002 	mul	t2,t0,t1
bfc0aa18:	340d4444 	li	t5,0x4444
bfc0aa1c:	340c3333 	li	t4,0x3333
bfc0aa20:	01405825 	move	t3,t2
bfc0aa24:	24180038 	li	t8,56
bfc0aa28:	1578056e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0aa2c:	00000000 	nop
bfc0aa30:	34090008 	li	t1,0x8
bfc0aa34:	34080007 	li	t0,0x7
bfc0aa38:	71095002 	mul	t2,t0,t1
bfc0aa3c:	340d4444 	li	t5,0x4444
bfc0aa40:	340c3333 	li	t4,0x3333
bfc0aa44:	340e2222 	li	t6,0x2222
bfc0aa48:	01405825 	move	t3,t2
bfc0aa4c:	24180038 	li	t8,56
bfc0aa50:	15780564 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0aa54:	00000000 	nop
bfc0aa58:	34080007 	li	t0,0x7
bfc0aa5c:	34090008 	li	t1,0x8
bfc0aa60:	71095002 	mul	t2,t0,t1
bfc0aa64:	000a5825 	or	t3,zero,t2
bfc0aa68:	24180038 	li	t8,56
bfc0aa6c:	1578055d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0aa70:	00000000 	nop
bfc0aa74:	34090008 	li	t1,0x8
bfc0aa78:	34080007 	li	t0,0x7
bfc0aa7c:	71095002 	mul	t2,t0,t1
bfc0aa80:	340c3333 	li	t4,0x3333
bfc0aa84:	000a5825 	or	t3,zero,t2
bfc0aa88:	24180038 	li	t8,56
bfc0aa8c:	15780555 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0aa90:	00000000 	nop
bfc0aa94:	34090008 	li	t1,0x8
bfc0aa98:	34080007 	li	t0,0x7
bfc0aa9c:	71095002 	mul	t2,t0,t1
bfc0aaa0:	340d4444 	li	t5,0x4444
bfc0aaa4:	340c3333 	li	t4,0x3333
bfc0aaa8:	000a5825 	or	t3,zero,t2
bfc0aaac:	24180038 	li	t8,56
bfc0aab0:	1578054c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0aab4:	00000000 	nop
bfc0aab8:	34090008 	li	t1,0x8
bfc0aabc:	34080007 	li	t0,0x7
bfc0aac0:	71095002 	mul	t2,t0,t1
bfc0aac4:	340d4444 	li	t5,0x4444
bfc0aac8:	340c3333 	li	t4,0x3333
bfc0aacc:	340e2222 	li	t6,0x2222
bfc0aad0:	000a5825 	or	t3,zero,t2
bfc0aad4:	24180038 	li	t8,56
bfc0aad8:	15780542 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0aadc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:91
bfc0aae0:	34090008 	li	t1,0x8
bfc0aae4:	34080008 	li	t0,0x8
bfc0aae8:	71095002 	mul	t2,t0,t1
bfc0aaec:	24180040 	li	t8,64
bfc0aaf0:	1558053c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0aaf4:	00000000 	nop
bfc0aaf8:	34080008 	li	t0,0x8
bfc0aafc:	34090008 	li	t1,0x8
bfc0ab00:	71095002 	mul	t2,t0,t1
bfc0ab04:	24180040 	li	t8,64
bfc0ab08:	15580536 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0ab0c:	00000000 	nop
bfc0ab10:	34080008 	li	t0,0x8
bfc0ab14:	34090008 	li	t1,0x8
bfc0ab18:	340a8888 	li	t2,0x8888
bfc0ab1c:	71095802 	mul	t3,t0,t1
bfc0ab20:	24180040 	li	t8,64
bfc0ab24:	1578052f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ab28:	00000000 	nop
bfc0ab2c:	34080008 	li	t0,0x8
bfc0ab30:	340c4444 	li	t4,0x4444
bfc0ab34:	34090008 	li	t1,0x8
bfc0ab38:	340a8888 	li	t2,0x8888
bfc0ab3c:	71095802 	mul	t3,t0,t1
bfc0ab40:	24180040 	li	t8,64
bfc0ab44:	15780527 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ab48:	00000000 	nop
bfc0ab4c:	34080008 	li	t0,0x8
bfc0ab50:	34090008 	li	t1,0x8
bfc0ab54:	71095002 	mul	t2,t0,t1
bfc0ab58:	24180040 	li	t8,64
bfc0ab5c:	15580521 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0ab60:	00000000 	nop
bfc0ab64:	34090008 	li	t1,0x8
bfc0ab68:	34080008 	li	t0,0x8
bfc0ab6c:	71095002 	mul	t2,t0,t1
bfc0ab70:	24180040 	li	t8,64
bfc0ab74:	1558051b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0ab78:	00000000 	nop
bfc0ab7c:	34090008 	li	t1,0x8
bfc0ab80:	34080008 	li	t0,0x8
bfc0ab84:	340a8888 	li	t2,0x8888
bfc0ab88:	71095802 	mul	t3,t0,t1
bfc0ab8c:	24180040 	li	t8,64
bfc0ab90:	15780514 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ab94:	00000000 	nop
bfc0ab98:	34090008 	li	t1,0x8
bfc0ab9c:	340c4444 	li	t4,0x4444
bfc0aba0:	34080008 	li	t0,0x8
bfc0aba4:	340a8888 	li	t2,0x8888
bfc0aba8:	71095802 	mul	t3,t0,t1
bfc0abac:	24180040 	li	t8,64
bfc0abb0:	1578050c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0abb4:	00000000 	nop
bfc0abb8:	34080008 	li	t0,0x8
bfc0abbc:	34090008 	li	t1,0x8
bfc0abc0:	71095002 	mul	t2,t0,t1
bfc0abc4:	01405825 	move	t3,t2
bfc0abc8:	24180040 	li	t8,64
bfc0abcc:	15780505 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0abd0:	00000000 	nop
bfc0abd4:	34090008 	li	t1,0x8
bfc0abd8:	34080008 	li	t0,0x8
bfc0abdc:	71095002 	mul	t2,t0,t1
bfc0abe0:	340c3333 	li	t4,0x3333
bfc0abe4:	01405825 	move	t3,t2
bfc0abe8:	24180040 	li	t8,64
bfc0abec:	157804fd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0abf0:	00000000 	nop
bfc0abf4:	34090008 	li	t1,0x8
bfc0abf8:	34080008 	li	t0,0x8
bfc0abfc:	71095002 	mul	t2,t0,t1
bfc0ac00:	340d4444 	li	t5,0x4444
bfc0ac04:	340c3333 	li	t4,0x3333
bfc0ac08:	01405825 	move	t3,t2
bfc0ac0c:	24180040 	li	t8,64
bfc0ac10:	157804f4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ac14:	00000000 	nop
bfc0ac18:	34090008 	li	t1,0x8
bfc0ac1c:	34080008 	li	t0,0x8
bfc0ac20:	71095002 	mul	t2,t0,t1
bfc0ac24:	340d4444 	li	t5,0x4444
bfc0ac28:	340c3333 	li	t4,0x3333
bfc0ac2c:	340e2222 	li	t6,0x2222
bfc0ac30:	01405825 	move	t3,t2
bfc0ac34:	24180040 	li	t8,64
bfc0ac38:	157804ea 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ac3c:	00000000 	nop
bfc0ac40:	34080008 	li	t0,0x8
bfc0ac44:	34090008 	li	t1,0x8
bfc0ac48:	71095002 	mul	t2,t0,t1
bfc0ac4c:	000a5825 	or	t3,zero,t2
bfc0ac50:	24180040 	li	t8,64
bfc0ac54:	157804e3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ac58:	00000000 	nop
bfc0ac5c:	34090008 	li	t1,0x8
bfc0ac60:	34080008 	li	t0,0x8
bfc0ac64:	71095002 	mul	t2,t0,t1
bfc0ac68:	340c3333 	li	t4,0x3333
bfc0ac6c:	000a5825 	or	t3,zero,t2
bfc0ac70:	24180040 	li	t8,64
bfc0ac74:	157804db 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ac78:	00000000 	nop
bfc0ac7c:	34090008 	li	t1,0x8
bfc0ac80:	34080008 	li	t0,0x8
bfc0ac84:	71095002 	mul	t2,t0,t1
bfc0ac88:	340d4444 	li	t5,0x4444
bfc0ac8c:	340c3333 	li	t4,0x3333
bfc0ac90:	000a5825 	or	t3,zero,t2
bfc0ac94:	24180040 	li	t8,64
bfc0ac98:	157804d2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ac9c:	00000000 	nop
bfc0aca0:	34090008 	li	t1,0x8
bfc0aca4:	34080008 	li	t0,0x8
bfc0aca8:	71095002 	mul	t2,t0,t1
bfc0acac:	340d4444 	li	t5,0x4444
bfc0acb0:	340c3333 	li	t4,0x3333
bfc0acb4:	340e2222 	li	t6,0x2222
bfc0acb8:	000a5825 	or	t3,zero,t2
bfc0acbc:	24180040 	li	t8,64
bfc0acc0:	157804c8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0acc4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:92
bfc0acc8:	34090008 	li	t1,0x8
bfc0accc:	34080009 	li	t0,0x9
bfc0acd0:	71095002 	mul	t2,t0,t1
bfc0acd4:	24180048 	li	t8,72
bfc0acd8:	155804c2 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0acdc:	00000000 	nop
bfc0ace0:	34080009 	li	t0,0x9
bfc0ace4:	34090008 	li	t1,0x8
bfc0ace8:	71095002 	mul	t2,t0,t1
bfc0acec:	24180048 	li	t8,72
bfc0acf0:	155804bc 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0acf4:	00000000 	nop
bfc0acf8:	34080009 	li	t0,0x9
bfc0acfc:	34090008 	li	t1,0x8
bfc0ad00:	340a8888 	li	t2,0x8888
bfc0ad04:	71095802 	mul	t3,t0,t1
bfc0ad08:	24180048 	li	t8,72
bfc0ad0c:	157804b5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ad10:	00000000 	nop
bfc0ad14:	34080009 	li	t0,0x9
bfc0ad18:	340c4444 	li	t4,0x4444
bfc0ad1c:	34090008 	li	t1,0x8
bfc0ad20:	340a8888 	li	t2,0x8888
bfc0ad24:	71095802 	mul	t3,t0,t1
bfc0ad28:	24180048 	li	t8,72
bfc0ad2c:	157804ad 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ad30:	00000000 	nop
bfc0ad34:	34080009 	li	t0,0x9
bfc0ad38:	34090008 	li	t1,0x8
bfc0ad3c:	71095002 	mul	t2,t0,t1
bfc0ad40:	24180048 	li	t8,72
bfc0ad44:	155804a7 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0ad48:	00000000 	nop
bfc0ad4c:	34090008 	li	t1,0x8
bfc0ad50:	34080009 	li	t0,0x9
bfc0ad54:	71095002 	mul	t2,t0,t1
bfc0ad58:	24180048 	li	t8,72
bfc0ad5c:	155804a1 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0ad60:	00000000 	nop
bfc0ad64:	34090008 	li	t1,0x8
bfc0ad68:	34080009 	li	t0,0x9
bfc0ad6c:	340a8888 	li	t2,0x8888
bfc0ad70:	71095802 	mul	t3,t0,t1
bfc0ad74:	24180048 	li	t8,72
bfc0ad78:	1578049a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ad7c:	00000000 	nop
bfc0ad80:	34090008 	li	t1,0x8
bfc0ad84:	340c4444 	li	t4,0x4444
bfc0ad88:	34080009 	li	t0,0x9
bfc0ad8c:	340a8888 	li	t2,0x8888
bfc0ad90:	71095802 	mul	t3,t0,t1
bfc0ad94:	24180048 	li	t8,72
bfc0ad98:	15780492 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ad9c:	00000000 	nop
bfc0ada0:	34080009 	li	t0,0x9
bfc0ada4:	34090008 	li	t1,0x8
bfc0ada8:	71095002 	mul	t2,t0,t1
bfc0adac:	01405825 	move	t3,t2
bfc0adb0:	24180048 	li	t8,72
bfc0adb4:	1578048b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0adb8:	00000000 	nop
bfc0adbc:	34090008 	li	t1,0x8
bfc0adc0:	34080009 	li	t0,0x9
bfc0adc4:	71095002 	mul	t2,t0,t1
bfc0adc8:	340c3333 	li	t4,0x3333
bfc0adcc:	01405825 	move	t3,t2
bfc0add0:	24180048 	li	t8,72
bfc0add4:	15780483 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0add8:	00000000 	nop
bfc0addc:	34090008 	li	t1,0x8
bfc0ade0:	34080009 	li	t0,0x9
bfc0ade4:	71095002 	mul	t2,t0,t1
bfc0ade8:	340d4444 	li	t5,0x4444
bfc0adec:	340c3333 	li	t4,0x3333
bfc0adf0:	01405825 	move	t3,t2
bfc0adf4:	24180048 	li	t8,72
bfc0adf8:	1578047a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0adfc:	00000000 	nop
bfc0ae00:	34090008 	li	t1,0x8
bfc0ae04:	34080009 	li	t0,0x9
bfc0ae08:	71095002 	mul	t2,t0,t1
bfc0ae0c:	340d4444 	li	t5,0x4444
bfc0ae10:	340c3333 	li	t4,0x3333
bfc0ae14:	340e2222 	li	t6,0x2222
bfc0ae18:	01405825 	move	t3,t2
bfc0ae1c:	24180048 	li	t8,72
bfc0ae20:	15780470 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ae24:	00000000 	nop
bfc0ae28:	34080009 	li	t0,0x9
bfc0ae2c:	34090008 	li	t1,0x8
bfc0ae30:	71095002 	mul	t2,t0,t1
bfc0ae34:	000a5825 	or	t3,zero,t2
bfc0ae38:	24180048 	li	t8,72
bfc0ae3c:	15780469 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ae40:	00000000 	nop
bfc0ae44:	34090008 	li	t1,0x8
bfc0ae48:	34080009 	li	t0,0x9
bfc0ae4c:	71095002 	mul	t2,t0,t1
bfc0ae50:	340c3333 	li	t4,0x3333
bfc0ae54:	000a5825 	or	t3,zero,t2
bfc0ae58:	24180048 	li	t8,72
bfc0ae5c:	15780461 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ae60:	00000000 	nop
bfc0ae64:	34090008 	li	t1,0x8
bfc0ae68:	34080009 	li	t0,0x9
bfc0ae6c:	71095002 	mul	t2,t0,t1
bfc0ae70:	340d4444 	li	t5,0x4444
bfc0ae74:	340c3333 	li	t4,0x3333
bfc0ae78:	000a5825 	or	t3,zero,t2
bfc0ae7c:	24180048 	li	t8,72
bfc0ae80:	15780458 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ae84:	00000000 	nop
bfc0ae88:	34090008 	li	t1,0x8
bfc0ae8c:	34080009 	li	t0,0x9
bfc0ae90:	71095002 	mul	t2,t0,t1
bfc0ae94:	340d4444 	li	t5,0x4444
bfc0ae98:	340c3333 	li	t4,0x3333
bfc0ae9c:	340e2222 	li	t6,0x2222
bfc0aea0:	000a5825 	or	t3,zero,t2
bfc0aea4:	24180048 	li	t8,72
bfc0aea8:	1578044e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0aeac:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:93
bfc0aeb0:	34090009 	li	t1,0x9
bfc0aeb4:	34080001 	li	t0,0x1
bfc0aeb8:	71095002 	mul	t2,t0,t1
bfc0aebc:	24180009 	li	t8,9
bfc0aec0:	15580448 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0aec4:	00000000 	nop
bfc0aec8:	34080001 	li	t0,0x1
bfc0aecc:	34090009 	li	t1,0x9
bfc0aed0:	71095002 	mul	t2,t0,t1
bfc0aed4:	24180009 	li	t8,9
bfc0aed8:	15580442 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0aedc:	00000000 	nop
bfc0aee0:	34080001 	li	t0,0x1
bfc0aee4:	34090009 	li	t1,0x9
bfc0aee8:	340a8888 	li	t2,0x8888
bfc0aeec:	71095802 	mul	t3,t0,t1
bfc0aef0:	24180009 	li	t8,9
bfc0aef4:	1578043b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0aef8:	00000000 	nop
bfc0aefc:	34080001 	li	t0,0x1
bfc0af00:	340c4444 	li	t4,0x4444
bfc0af04:	34090009 	li	t1,0x9
bfc0af08:	340a8888 	li	t2,0x8888
bfc0af0c:	71095802 	mul	t3,t0,t1
bfc0af10:	24180009 	li	t8,9
bfc0af14:	15780433 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0af18:	00000000 	nop
bfc0af1c:	34080001 	li	t0,0x1
bfc0af20:	34090009 	li	t1,0x9
bfc0af24:	71095002 	mul	t2,t0,t1
bfc0af28:	24180009 	li	t8,9
bfc0af2c:	1558042d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0af30:	00000000 	nop
bfc0af34:	34090009 	li	t1,0x9
bfc0af38:	34080001 	li	t0,0x1
bfc0af3c:	71095002 	mul	t2,t0,t1
bfc0af40:	24180009 	li	t8,9
bfc0af44:	15580427 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0af48:	00000000 	nop
bfc0af4c:	34090009 	li	t1,0x9
bfc0af50:	34080001 	li	t0,0x1
bfc0af54:	340a8888 	li	t2,0x8888
bfc0af58:	71095802 	mul	t3,t0,t1
bfc0af5c:	24180009 	li	t8,9
bfc0af60:	15780420 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0af64:	00000000 	nop
bfc0af68:	34090009 	li	t1,0x9
bfc0af6c:	340c4444 	li	t4,0x4444
bfc0af70:	34080001 	li	t0,0x1
bfc0af74:	340a8888 	li	t2,0x8888
bfc0af78:	71095802 	mul	t3,t0,t1
bfc0af7c:	24180009 	li	t8,9
bfc0af80:	15780418 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0af84:	00000000 	nop
bfc0af88:	34080001 	li	t0,0x1
bfc0af8c:	34090009 	li	t1,0x9
bfc0af90:	71095002 	mul	t2,t0,t1
bfc0af94:	01405825 	move	t3,t2
bfc0af98:	24180009 	li	t8,9
bfc0af9c:	15780411 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0afa0:	00000000 	nop
bfc0afa4:	34090009 	li	t1,0x9
bfc0afa8:	34080001 	li	t0,0x1
bfc0afac:	71095002 	mul	t2,t0,t1
bfc0afb0:	340c3333 	li	t4,0x3333
bfc0afb4:	01405825 	move	t3,t2
bfc0afb8:	24180009 	li	t8,9
bfc0afbc:	15780409 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0afc0:	00000000 	nop
bfc0afc4:	34090009 	li	t1,0x9
bfc0afc8:	34080001 	li	t0,0x1
bfc0afcc:	71095002 	mul	t2,t0,t1
bfc0afd0:	340d4444 	li	t5,0x4444
bfc0afd4:	340c3333 	li	t4,0x3333
bfc0afd8:	01405825 	move	t3,t2
bfc0afdc:	24180009 	li	t8,9
bfc0afe0:	15780400 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0afe4:	00000000 	nop
bfc0afe8:	34090009 	li	t1,0x9
bfc0afec:	34080001 	li	t0,0x1
bfc0aff0:	71095002 	mul	t2,t0,t1
bfc0aff4:	340d4444 	li	t5,0x4444
bfc0aff8:	340c3333 	li	t4,0x3333
bfc0affc:	340e2222 	li	t6,0x2222
bfc0b000:	01405825 	move	t3,t2
bfc0b004:	24180009 	li	t8,9
bfc0b008:	157803f6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b00c:	00000000 	nop
bfc0b010:	34080001 	li	t0,0x1
bfc0b014:	34090009 	li	t1,0x9
bfc0b018:	71095002 	mul	t2,t0,t1
bfc0b01c:	000a5825 	or	t3,zero,t2
bfc0b020:	24180009 	li	t8,9
bfc0b024:	157803ef 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b028:	00000000 	nop
bfc0b02c:	34090009 	li	t1,0x9
bfc0b030:	34080001 	li	t0,0x1
bfc0b034:	71095002 	mul	t2,t0,t1
bfc0b038:	340c3333 	li	t4,0x3333
bfc0b03c:	000a5825 	or	t3,zero,t2
bfc0b040:	24180009 	li	t8,9
bfc0b044:	157803e7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b048:	00000000 	nop
bfc0b04c:	34090009 	li	t1,0x9
bfc0b050:	34080001 	li	t0,0x1
bfc0b054:	71095002 	mul	t2,t0,t1
bfc0b058:	340d4444 	li	t5,0x4444
bfc0b05c:	340c3333 	li	t4,0x3333
bfc0b060:	000a5825 	or	t3,zero,t2
bfc0b064:	24180009 	li	t8,9
bfc0b068:	157803de 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b06c:	00000000 	nop
bfc0b070:	34090009 	li	t1,0x9
bfc0b074:	34080001 	li	t0,0x1
bfc0b078:	71095002 	mul	t2,t0,t1
bfc0b07c:	340d4444 	li	t5,0x4444
bfc0b080:	340c3333 	li	t4,0x3333
bfc0b084:	340e2222 	li	t6,0x2222
bfc0b088:	000a5825 	or	t3,zero,t2
bfc0b08c:	24180009 	li	t8,9
bfc0b090:	157803d4 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b094:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:94
bfc0b098:	34090009 	li	t1,0x9
bfc0b09c:	34080002 	li	t0,0x2
bfc0b0a0:	71095002 	mul	t2,t0,t1
bfc0b0a4:	24180012 	li	t8,18
bfc0b0a8:	155803ce 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b0ac:	00000000 	nop
bfc0b0b0:	34080002 	li	t0,0x2
bfc0b0b4:	34090009 	li	t1,0x9
bfc0b0b8:	71095002 	mul	t2,t0,t1
bfc0b0bc:	24180012 	li	t8,18
bfc0b0c0:	155803c8 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b0c4:	00000000 	nop
bfc0b0c8:	34080002 	li	t0,0x2
bfc0b0cc:	34090009 	li	t1,0x9
bfc0b0d0:	340a8888 	li	t2,0x8888
bfc0b0d4:	71095802 	mul	t3,t0,t1
bfc0b0d8:	24180012 	li	t8,18
bfc0b0dc:	157803c1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b0e0:	00000000 	nop
bfc0b0e4:	34080002 	li	t0,0x2
bfc0b0e8:	340c4444 	li	t4,0x4444
bfc0b0ec:	34090009 	li	t1,0x9
bfc0b0f0:	340a8888 	li	t2,0x8888
bfc0b0f4:	71095802 	mul	t3,t0,t1
bfc0b0f8:	24180012 	li	t8,18
bfc0b0fc:	157803b9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b100:	00000000 	nop
bfc0b104:	34080002 	li	t0,0x2
bfc0b108:	34090009 	li	t1,0x9
bfc0b10c:	71095002 	mul	t2,t0,t1
bfc0b110:	24180012 	li	t8,18
bfc0b114:	155803b3 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b118:	00000000 	nop
bfc0b11c:	34090009 	li	t1,0x9
bfc0b120:	34080002 	li	t0,0x2
bfc0b124:	71095002 	mul	t2,t0,t1
bfc0b128:	24180012 	li	t8,18
bfc0b12c:	155803ad 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b130:	00000000 	nop
bfc0b134:	34090009 	li	t1,0x9
bfc0b138:	34080002 	li	t0,0x2
bfc0b13c:	340a8888 	li	t2,0x8888
bfc0b140:	71095802 	mul	t3,t0,t1
bfc0b144:	24180012 	li	t8,18
bfc0b148:	157803a6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b14c:	00000000 	nop
bfc0b150:	34090009 	li	t1,0x9
bfc0b154:	340c4444 	li	t4,0x4444
bfc0b158:	34080002 	li	t0,0x2
bfc0b15c:	340a8888 	li	t2,0x8888
bfc0b160:	71095802 	mul	t3,t0,t1
bfc0b164:	24180012 	li	t8,18
bfc0b168:	1578039e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b16c:	00000000 	nop
bfc0b170:	34080002 	li	t0,0x2
bfc0b174:	34090009 	li	t1,0x9
bfc0b178:	71095002 	mul	t2,t0,t1
bfc0b17c:	01405825 	move	t3,t2
bfc0b180:	24180012 	li	t8,18
bfc0b184:	15780397 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b188:	00000000 	nop
bfc0b18c:	34090009 	li	t1,0x9
bfc0b190:	34080002 	li	t0,0x2
bfc0b194:	71095002 	mul	t2,t0,t1
bfc0b198:	340c3333 	li	t4,0x3333
bfc0b19c:	01405825 	move	t3,t2
bfc0b1a0:	24180012 	li	t8,18
bfc0b1a4:	1578038f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b1a8:	00000000 	nop
bfc0b1ac:	34090009 	li	t1,0x9
bfc0b1b0:	34080002 	li	t0,0x2
bfc0b1b4:	71095002 	mul	t2,t0,t1
bfc0b1b8:	340d4444 	li	t5,0x4444
bfc0b1bc:	340c3333 	li	t4,0x3333
bfc0b1c0:	01405825 	move	t3,t2
bfc0b1c4:	24180012 	li	t8,18
bfc0b1c8:	15780386 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b1cc:	00000000 	nop
bfc0b1d0:	34090009 	li	t1,0x9
bfc0b1d4:	34080002 	li	t0,0x2
bfc0b1d8:	71095002 	mul	t2,t0,t1
bfc0b1dc:	340d4444 	li	t5,0x4444
bfc0b1e0:	340c3333 	li	t4,0x3333
bfc0b1e4:	340e2222 	li	t6,0x2222
bfc0b1e8:	01405825 	move	t3,t2
bfc0b1ec:	24180012 	li	t8,18
bfc0b1f0:	1578037c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b1f4:	00000000 	nop
bfc0b1f8:	34080002 	li	t0,0x2
bfc0b1fc:	34090009 	li	t1,0x9
bfc0b200:	71095002 	mul	t2,t0,t1
bfc0b204:	000a5825 	or	t3,zero,t2
bfc0b208:	24180012 	li	t8,18
bfc0b20c:	15780375 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b210:	00000000 	nop
bfc0b214:	34090009 	li	t1,0x9
bfc0b218:	34080002 	li	t0,0x2
bfc0b21c:	71095002 	mul	t2,t0,t1
bfc0b220:	340c3333 	li	t4,0x3333
bfc0b224:	000a5825 	or	t3,zero,t2
bfc0b228:	24180012 	li	t8,18
bfc0b22c:	1578036d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b230:	00000000 	nop
bfc0b234:	34090009 	li	t1,0x9
bfc0b238:	34080002 	li	t0,0x2
bfc0b23c:	71095002 	mul	t2,t0,t1
bfc0b240:	340d4444 	li	t5,0x4444
bfc0b244:	340c3333 	li	t4,0x3333
bfc0b248:	000a5825 	or	t3,zero,t2
bfc0b24c:	24180012 	li	t8,18
bfc0b250:	15780364 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b254:	00000000 	nop
bfc0b258:	34090009 	li	t1,0x9
bfc0b25c:	34080002 	li	t0,0x2
bfc0b260:	71095002 	mul	t2,t0,t1
bfc0b264:	340d4444 	li	t5,0x4444
bfc0b268:	340c3333 	li	t4,0x3333
bfc0b26c:	340e2222 	li	t6,0x2222
bfc0b270:	000a5825 	or	t3,zero,t2
bfc0b274:	24180012 	li	t8,18
bfc0b278:	1578035a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b27c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:95
bfc0b280:	34090009 	li	t1,0x9
bfc0b284:	34080003 	li	t0,0x3
bfc0b288:	71095002 	mul	t2,t0,t1
bfc0b28c:	2418001b 	li	t8,27
bfc0b290:	15580354 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b294:	00000000 	nop
bfc0b298:	34080003 	li	t0,0x3
bfc0b29c:	34090009 	li	t1,0x9
bfc0b2a0:	71095002 	mul	t2,t0,t1
bfc0b2a4:	2418001b 	li	t8,27
bfc0b2a8:	1558034e 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b2ac:	00000000 	nop
bfc0b2b0:	34080003 	li	t0,0x3
bfc0b2b4:	34090009 	li	t1,0x9
bfc0b2b8:	340a8888 	li	t2,0x8888
bfc0b2bc:	71095802 	mul	t3,t0,t1
bfc0b2c0:	2418001b 	li	t8,27
bfc0b2c4:	15780347 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b2c8:	00000000 	nop
bfc0b2cc:	34080003 	li	t0,0x3
bfc0b2d0:	340c4444 	li	t4,0x4444
bfc0b2d4:	34090009 	li	t1,0x9
bfc0b2d8:	340a8888 	li	t2,0x8888
bfc0b2dc:	71095802 	mul	t3,t0,t1
bfc0b2e0:	2418001b 	li	t8,27
bfc0b2e4:	1578033f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b2e8:	00000000 	nop
bfc0b2ec:	34080003 	li	t0,0x3
bfc0b2f0:	34090009 	li	t1,0x9
bfc0b2f4:	71095002 	mul	t2,t0,t1
bfc0b2f8:	2418001b 	li	t8,27
bfc0b2fc:	15580339 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b300:	00000000 	nop
bfc0b304:	34090009 	li	t1,0x9
bfc0b308:	34080003 	li	t0,0x3
bfc0b30c:	71095002 	mul	t2,t0,t1
bfc0b310:	2418001b 	li	t8,27
bfc0b314:	15580333 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b318:	00000000 	nop
bfc0b31c:	34090009 	li	t1,0x9
bfc0b320:	34080003 	li	t0,0x3
bfc0b324:	340a8888 	li	t2,0x8888
bfc0b328:	71095802 	mul	t3,t0,t1
bfc0b32c:	2418001b 	li	t8,27
bfc0b330:	1578032c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b334:	00000000 	nop
bfc0b338:	34090009 	li	t1,0x9
bfc0b33c:	340c4444 	li	t4,0x4444
bfc0b340:	34080003 	li	t0,0x3
bfc0b344:	340a8888 	li	t2,0x8888
bfc0b348:	71095802 	mul	t3,t0,t1
bfc0b34c:	2418001b 	li	t8,27
bfc0b350:	15780324 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b354:	00000000 	nop
bfc0b358:	34080003 	li	t0,0x3
bfc0b35c:	34090009 	li	t1,0x9
bfc0b360:	71095002 	mul	t2,t0,t1
bfc0b364:	01405825 	move	t3,t2
bfc0b368:	2418001b 	li	t8,27
bfc0b36c:	1578031d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b370:	00000000 	nop
bfc0b374:	34090009 	li	t1,0x9
bfc0b378:	34080003 	li	t0,0x3
bfc0b37c:	71095002 	mul	t2,t0,t1
bfc0b380:	340c3333 	li	t4,0x3333
bfc0b384:	01405825 	move	t3,t2
bfc0b388:	2418001b 	li	t8,27
bfc0b38c:	15780315 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b390:	00000000 	nop
bfc0b394:	34090009 	li	t1,0x9
bfc0b398:	34080003 	li	t0,0x3
bfc0b39c:	71095002 	mul	t2,t0,t1
bfc0b3a0:	340d4444 	li	t5,0x4444
bfc0b3a4:	340c3333 	li	t4,0x3333
bfc0b3a8:	01405825 	move	t3,t2
bfc0b3ac:	2418001b 	li	t8,27
bfc0b3b0:	1578030c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b3b4:	00000000 	nop
bfc0b3b8:	34090009 	li	t1,0x9
bfc0b3bc:	34080003 	li	t0,0x3
bfc0b3c0:	71095002 	mul	t2,t0,t1
bfc0b3c4:	340d4444 	li	t5,0x4444
bfc0b3c8:	340c3333 	li	t4,0x3333
bfc0b3cc:	340e2222 	li	t6,0x2222
bfc0b3d0:	01405825 	move	t3,t2
bfc0b3d4:	2418001b 	li	t8,27
bfc0b3d8:	15780302 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b3dc:	00000000 	nop
bfc0b3e0:	34080003 	li	t0,0x3
bfc0b3e4:	34090009 	li	t1,0x9
bfc0b3e8:	71095002 	mul	t2,t0,t1
bfc0b3ec:	000a5825 	or	t3,zero,t2
bfc0b3f0:	2418001b 	li	t8,27
bfc0b3f4:	157802fb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b3f8:	00000000 	nop
bfc0b3fc:	34090009 	li	t1,0x9
bfc0b400:	34080003 	li	t0,0x3
bfc0b404:	71095002 	mul	t2,t0,t1
bfc0b408:	340c3333 	li	t4,0x3333
bfc0b40c:	000a5825 	or	t3,zero,t2
bfc0b410:	2418001b 	li	t8,27
bfc0b414:	157802f3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b418:	00000000 	nop
bfc0b41c:	34090009 	li	t1,0x9
bfc0b420:	34080003 	li	t0,0x3
bfc0b424:	71095002 	mul	t2,t0,t1
bfc0b428:	340d4444 	li	t5,0x4444
bfc0b42c:	340c3333 	li	t4,0x3333
bfc0b430:	000a5825 	or	t3,zero,t2
bfc0b434:	2418001b 	li	t8,27
bfc0b438:	157802ea 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b43c:	00000000 	nop
bfc0b440:	34090009 	li	t1,0x9
bfc0b444:	34080003 	li	t0,0x3
bfc0b448:	71095002 	mul	t2,t0,t1
bfc0b44c:	340d4444 	li	t5,0x4444
bfc0b450:	340c3333 	li	t4,0x3333
bfc0b454:	340e2222 	li	t6,0x2222
bfc0b458:	000a5825 	or	t3,zero,t2
bfc0b45c:	2418001b 	li	t8,27
bfc0b460:	157802e0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b464:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:96
bfc0b468:	34090009 	li	t1,0x9
bfc0b46c:	34080004 	li	t0,0x4
bfc0b470:	71095002 	mul	t2,t0,t1
bfc0b474:	24180024 	li	t8,36
bfc0b478:	155802da 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b47c:	00000000 	nop
bfc0b480:	34080004 	li	t0,0x4
bfc0b484:	34090009 	li	t1,0x9
bfc0b488:	71095002 	mul	t2,t0,t1
bfc0b48c:	24180024 	li	t8,36
bfc0b490:	155802d4 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b494:	00000000 	nop
bfc0b498:	34080004 	li	t0,0x4
bfc0b49c:	34090009 	li	t1,0x9
bfc0b4a0:	340a8888 	li	t2,0x8888
bfc0b4a4:	71095802 	mul	t3,t0,t1
bfc0b4a8:	24180024 	li	t8,36
bfc0b4ac:	157802cd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b4b0:	00000000 	nop
bfc0b4b4:	34080004 	li	t0,0x4
bfc0b4b8:	340c4444 	li	t4,0x4444
bfc0b4bc:	34090009 	li	t1,0x9
bfc0b4c0:	340a8888 	li	t2,0x8888
bfc0b4c4:	71095802 	mul	t3,t0,t1
bfc0b4c8:	24180024 	li	t8,36
bfc0b4cc:	157802c5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b4d0:	00000000 	nop
bfc0b4d4:	34080004 	li	t0,0x4
bfc0b4d8:	34090009 	li	t1,0x9
bfc0b4dc:	71095002 	mul	t2,t0,t1
bfc0b4e0:	24180024 	li	t8,36
bfc0b4e4:	155802bf 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b4e8:	00000000 	nop
bfc0b4ec:	34090009 	li	t1,0x9
bfc0b4f0:	34080004 	li	t0,0x4
bfc0b4f4:	71095002 	mul	t2,t0,t1
bfc0b4f8:	24180024 	li	t8,36
bfc0b4fc:	155802b9 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b500:	00000000 	nop
bfc0b504:	34090009 	li	t1,0x9
bfc0b508:	34080004 	li	t0,0x4
bfc0b50c:	340a8888 	li	t2,0x8888
bfc0b510:	71095802 	mul	t3,t0,t1
bfc0b514:	24180024 	li	t8,36
bfc0b518:	157802b2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b51c:	00000000 	nop
bfc0b520:	34090009 	li	t1,0x9
bfc0b524:	340c4444 	li	t4,0x4444
bfc0b528:	34080004 	li	t0,0x4
bfc0b52c:	340a8888 	li	t2,0x8888
bfc0b530:	71095802 	mul	t3,t0,t1
bfc0b534:	24180024 	li	t8,36
bfc0b538:	157802aa 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b53c:	00000000 	nop
bfc0b540:	34080004 	li	t0,0x4
bfc0b544:	34090009 	li	t1,0x9
bfc0b548:	71095002 	mul	t2,t0,t1
bfc0b54c:	01405825 	move	t3,t2
bfc0b550:	24180024 	li	t8,36
bfc0b554:	157802a3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b558:	00000000 	nop
bfc0b55c:	34090009 	li	t1,0x9
bfc0b560:	34080004 	li	t0,0x4
bfc0b564:	71095002 	mul	t2,t0,t1
bfc0b568:	340c3333 	li	t4,0x3333
bfc0b56c:	01405825 	move	t3,t2
bfc0b570:	24180024 	li	t8,36
bfc0b574:	1578029b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b578:	00000000 	nop
bfc0b57c:	34090009 	li	t1,0x9
bfc0b580:	34080004 	li	t0,0x4
bfc0b584:	71095002 	mul	t2,t0,t1
bfc0b588:	340d4444 	li	t5,0x4444
bfc0b58c:	340c3333 	li	t4,0x3333
bfc0b590:	01405825 	move	t3,t2
bfc0b594:	24180024 	li	t8,36
bfc0b598:	15780292 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b59c:	00000000 	nop
bfc0b5a0:	34090009 	li	t1,0x9
bfc0b5a4:	34080004 	li	t0,0x4
bfc0b5a8:	71095002 	mul	t2,t0,t1
bfc0b5ac:	340d4444 	li	t5,0x4444
bfc0b5b0:	340c3333 	li	t4,0x3333
bfc0b5b4:	340e2222 	li	t6,0x2222
bfc0b5b8:	01405825 	move	t3,t2
bfc0b5bc:	24180024 	li	t8,36
bfc0b5c0:	15780288 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b5c4:	00000000 	nop
bfc0b5c8:	34080004 	li	t0,0x4
bfc0b5cc:	34090009 	li	t1,0x9
bfc0b5d0:	71095002 	mul	t2,t0,t1
bfc0b5d4:	000a5825 	or	t3,zero,t2
bfc0b5d8:	24180024 	li	t8,36
bfc0b5dc:	15780281 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b5e0:	00000000 	nop
bfc0b5e4:	34090009 	li	t1,0x9
bfc0b5e8:	34080004 	li	t0,0x4
bfc0b5ec:	71095002 	mul	t2,t0,t1
bfc0b5f0:	340c3333 	li	t4,0x3333
bfc0b5f4:	000a5825 	or	t3,zero,t2
bfc0b5f8:	24180024 	li	t8,36
bfc0b5fc:	15780279 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b600:	00000000 	nop
bfc0b604:	34090009 	li	t1,0x9
bfc0b608:	34080004 	li	t0,0x4
bfc0b60c:	71095002 	mul	t2,t0,t1
bfc0b610:	340d4444 	li	t5,0x4444
bfc0b614:	340c3333 	li	t4,0x3333
bfc0b618:	000a5825 	or	t3,zero,t2
bfc0b61c:	24180024 	li	t8,36
bfc0b620:	15780270 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b624:	00000000 	nop
bfc0b628:	34090009 	li	t1,0x9
bfc0b62c:	34080004 	li	t0,0x4
bfc0b630:	71095002 	mul	t2,t0,t1
bfc0b634:	340d4444 	li	t5,0x4444
bfc0b638:	340c3333 	li	t4,0x3333
bfc0b63c:	340e2222 	li	t6,0x2222
bfc0b640:	000a5825 	or	t3,zero,t2
bfc0b644:	24180024 	li	t8,36
bfc0b648:	15780266 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b64c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:97
bfc0b650:	34090009 	li	t1,0x9
bfc0b654:	34080005 	li	t0,0x5
bfc0b658:	71095002 	mul	t2,t0,t1
bfc0b65c:	2418002d 	li	t8,45
bfc0b660:	15580260 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b664:	00000000 	nop
bfc0b668:	34080005 	li	t0,0x5
bfc0b66c:	34090009 	li	t1,0x9
bfc0b670:	71095002 	mul	t2,t0,t1
bfc0b674:	2418002d 	li	t8,45
bfc0b678:	1558025a 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b67c:	00000000 	nop
bfc0b680:	34080005 	li	t0,0x5
bfc0b684:	34090009 	li	t1,0x9
bfc0b688:	340a8888 	li	t2,0x8888
bfc0b68c:	71095802 	mul	t3,t0,t1
bfc0b690:	2418002d 	li	t8,45
bfc0b694:	15780253 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b698:	00000000 	nop
bfc0b69c:	34080005 	li	t0,0x5
bfc0b6a0:	340c4444 	li	t4,0x4444
bfc0b6a4:	34090009 	li	t1,0x9
bfc0b6a8:	340a8888 	li	t2,0x8888
bfc0b6ac:	71095802 	mul	t3,t0,t1
bfc0b6b0:	2418002d 	li	t8,45
bfc0b6b4:	1578024b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b6b8:	00000000 	nop
bfc0b6bc:	34080005 	li	t0,0x5
bfc0b6c0:	34090009 	li	t1,0x9
bfc0b6c4:	71095002 	mul	t2,t0,t1
bfc0b6c8:	2418002d 	li	t8,45
bfc0b6cc:	15580245 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b6d0:	00000000 	nop
bfc0b6d4:	34090009 	li	t1,0x9
bfc0b6d8:	34080005 	li	t0,0x5
bfc0b6dc:	71095002 	mul	t2,t0,t1
bfc0b6e0:	2418002d 	li	t8,45
bfc0b6e4:	1558023f 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b6e8:	00000000 	nop
bfc0b6ec:	34090009 	li	t1,0x9
bfc0b6f0:	34080005 	li	t0,0x5
bfc0b6f4:	340a8888 	li	t2,0x8888
bfc0b6f8:	71095802 	mul	t3,t0,t1
bfc0b6fc:	2418002d 	li	t8,45
bfc0b700:	15780238 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b704:	00000000 	nop
bfc0b708:	34090009 	li	t1,0x9
bfc0b70c:	340c4444 	li	t4,0x4444
bfc0b710:	34080005 	li	t0,0x5
bfc0b714:	340a8888 	li	t2,0x8888
bfc0b718:	71095802 	mul	t3,t0,t1
bfc0b71c:	2418002d 	li	t8,45
bfc0b720:	15780230 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b724:	00000000 	nop
bfc0b728:	34080005 	li	t0,0x5
bfc0b72c:	34090009 	li	t1,0x9
bfc0b730:	71095002 	mul	t2,t0,t1
bfc0b734:	01405825 	move	t3,t2
bfc0b738:	2418002d 	li	t8,45
bfc0b73c:	15780229 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b740:	00000000 	nop
bfc0b744:	34090009 	li	t1,0x9
bfc0b748:	34080005 	li	t0,0x5
bfc0b74c:	71095002 	mul	t2,t0,t1
bfc0b750:	340c3333 	li	t4,0x3333
bfc0b754:	01405825 	move	t3,t2
bfc0b758:	2418002d 	li	t8,45
bfc0b75c:	15780221 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b760:	00000000 	nop
bfc0b764:	34090009 	li	t1,0x9
bfc0b768:	34080005 	li	t0,0x5
bfc0b76c:	71095002 	mul	t2,t0,t1
bfc0b770:	340d4444 	li	t5,0x4444
bfc0b774:	340c3333 	li	t4,0x3333
bfc0b778:	01405825 	move	t3,t2
bfc0b77c:	2418002d 	li	t8,45
bfc0b780:	15780218 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b784:	00000000 	nop
bfc0b788:	34090009 	li	t1,0x9
bfc0b78c:	34080005 	li	t0,0x5
bfc0b790:	71095002 	mul	t2,t0,t1
bfc0b794:	340d4444 	li	t5,0x4444
bfc0b798:	340c3333 	li	t4,0x3333
bfc0b79c:	340e2222 	li	t6,0x2222
bfc0b7a0:	01405825 	move	t3,t2
bfc0b7a4:	2418002d 	li	t8,45
bfc0b7a8:	1578020e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b7ac:	00000000 	nop
bfc0b7b0:	34080005 	li	t0,0x5
bfc0b7b4:	34090009 	li	t1,0x9
bfc0b7b8:	71095002 	mul	t2,t0,t1
bfc0b7bc:	000a5825 	or	t3,zero,t2
bfc0b7c0:	2418002d 	li	t8,45
bfc0b7c4:	15780207 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b7c8:	00000000 	nop
bfc0b7cc:	34090009 	li	t1,0x9
bfc0b7d0:	34080005 	li	t0,0x5
bfc0b7d4:	71095002 	mul	t2,t0,t1
bfc0b7d8:	340c3333 	li	t4,0x3333
bfc0b7dc:	000a5825 	or	t3,zero,t2
bfc0b7e0:	2418002d 	li	t8,45
bfc0b7e4:	157801ff 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b7e8:	00000000 	nop
bfc0b7ec:	34090009 	li	t1,0x9
bfc0b7f0:	34080005 	li	t0,0x5
bfc0b7f4:	71095002 	mul	t2,t0,t1
bfc0b7f8:	340d4444 	li	t5,0x4444
bfc0b7fc:	340c3333 	li	t4,0x3333
bfc0b800:	000a5825 	or	t3,zero,t2
bfc0b804:	2418002d 	li	t8,45
bfc0b808:	157801f6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b80c:	00000000 	nop
bfc0b810:	34090009 	li	t1,0x9
bfc0b814:	34080005 	li	t0,0x5
bfc0b818:	71095002 	mul	t2,t0,t1
bfc0b81c:	340d4444 	li	t5,0x4444
bfc0b820:	340c3333 	li	t4,0x3333
bfc0b824:	340e2222 	li	t6,0x2222
bfc0b828:	000a5825 	or	t3,zero,t2
bfc0b82c:	2418002d 	li	t8,45
bfc0b830:	157801ec 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b834:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:98
bfc0b838:	34090009 	li	t1,0x9
bfc0b83c:	34080006 	li	t0,0x6
bfc0b840:	71095002 	mul	t2,t0,t1
bfc0b844:	24180036 	li	t8,54
bfc0b848:	155801e6 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b84c:	00000000 	nop
bfc0b850:	34080006 	li	t0,0x6
bfc0b854:	34090009 	li	t1,0x9
bfc0b858:	71095002 	mul	t2,t0,t1
bfc0b85c:	24180036 	li	t8,54
bfc0b860:	155801e0 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b864:	00000000 	nop
bfc0b868:	34080006 	li	t0,0x6
bfc0b86c:	34090009 	li	t1,0x9
bfc0b870:	340a8888 	li	t2,0x8888
bfc0b874:	71095802 	mul	t3,t0,t1
bfc0b878:	24180036 	li	t8,54
bfc0b87c:	157801d9 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b880:	00000000 	nop
bfc0b884:	34080006 	li	t0,0x6
bfc0b888:	340c4444 	li	t4,0x4444
bfc0b88c:	34090009 	li	t1,0x9
bfc0b890:	340a8888 	li	t2,0x8888
bfc0b894:	71095802 	mul	t3,t0,t1
bfc0b898:	24180036 	li	t8,54
bfc0b89c:	157801d1 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b8a0:	00000000 	nop
bfc0b8a4:	34080006 	li	t0,0x6
bfc0b8a8:	34090009 	li	t1,0x9
bfc0b8ac:	71095002 	mul	t2,t0,t1
bfc0b8b0:	24180036 	li	t8,54
bfc0b8b4:	155801cb 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b8b8:	00000000 	nop
bfc0b8bc:	34090009 	li	t1,0x9
bfc0b8c0:	34080006 	li	t0,0x6
bfc0b8c4:	71095002 	mul	t2,t0,t1
bfc0b8c8:	24180036 	li	t8,54
bfc0b8cc:	155801c5 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0b8d0:	00000000 	nop
bfc0b8d4:	34090009 	li	t1,0x9
bfc0b8d8:	34080006 	li	t0,0x6
bfc0b8dc:	340a8888 	li	t2,0x8888
bfc0b8e0:	71095802 	mul	t3,t0,t1
bfc0b8e4:	24180036 	li	t8,54
bfc0b8e8:	157801be 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b8ec:	00000000 	nop
bfc0b8f0:	34090009 	li	t1,0x9
bfc0b8f4:	340c4444 	li	t4,0x4444
bfc0b8f8:	34080006 	li	t0,0x6
bfc0b8fc:	340a8888 	li	t2,0x8888
bfc0b900:	71095802 	mul	t3,t0,t1
bfc0b904:	24180036 	li	t8,54
bfc0b908:	157801b6 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b90c:	00000000 	nop
bfc0b910:	34080006 	li	t0,0x6
bfc0b914:	34090009 	li	t1,0x9
bfc0b918:	71095002 	mul	t2,t0,t1
bfc0b91c:	01405825 	move	t3,t2
bfc0b920:	24180036 	li	t8,54
bfc0b924:	157801af 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b928:	00000000 	nop
bfc0b92c:	34090009 	li	t1,0x9
bfc0b930:	34080006 	li	t0,0x6
bfc0b934:	71095002 	mul	t2,t0,t1
bfc0b938:	340c3333 	li	t4,0x3333
bfc0b93c:	01405825 	move	t3,t2
bfc0b940:	24180036 	li	t8,54
bfc0b944:	157801a7 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b948:	00000000 	nop
bfc0b94c:	34090009 	li	t1,0x9
bfc0b950:	34080006 	li	t0,0x6
bfc0b954:	71095002 	mul	t2,t0,t1
bfc0b958:	340d4444 	li	t5,0x4444
bfc0b95c:	340c3333 	li	t4,0x3333
bfc0b960:	01405825 	move	t3,t2
bfc0b964:	24180036 	li	t8,54
bfc0b968:	1578019e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b96c:	00000000 	nop
bfc0b970:	34090009 	li	t1,0x9
bfc0b974:	34080006 	li	t0,0x6
bfc0b978:	71095002 	mul	t2,t0,t1
bfc0b97c:	340d4444 	li	t5,0x4444
bfc0b980:	340c3333 	li	t4,0x3333
bfc0b984:	340e2222 	li	t6,0x2222
bfc0b988:	01405825 	move	t3,t2
bfc0b98c:	24180036 	li	t8,54
bfc0b990:	15780194 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b994:	00000000 	nop
bfc0b998:	34080006 	li	t0,0x6
bfc0b99c:	34090009 	li	t1,0x9
bfc0b9a0:	71095002 	mul	t2,t0,t1
bfc0b9a4:	000a5825 	or	t3,zero,t2
bfc0b9a8:	24180036 	li	t8,54
bfc0b9ac:	1578018d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b9b0:	00000000 	nop
bfc0b9b4:	34090009 	li	t1,0x9
bfc0b9b8:	34080006 	li	t0,0x6
bfc0b9bc:	71095002 	mul	t2,t0,t1
bfc0b9c0:	340c3333 	li	t4,0x3333
bfc0b9c4:	000a5825 	or	t3,zero,t2
bfc0b9c8:	24180036 	li	t8,54
bfc0b9cc:	15780185 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b9d0:	00000000 	nop
bfc0b9d4:	34090009 	li	t1,0x9
bfc0b9d8:	34080006 	li	t0,0x6
bfc0b9dc:	71095002 	mul	t2,t0,t1
bfc0b9e0:	340d4444 	li	t5,0x4444
bfc0b9e4:	340c3333 	li	t4,0x3333
bfc0b9e8:	000a5825 	or	t3,zero,t2
bfc0b9ec:	24180036 	li	t8,54
bfc0b9f0:	1578017c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0b9f4:	00000000 	nop
bfc0b9f8:	34090009 	li	t1,0x9
bfc0b9fc:	34080006 	li	t0,0x6
bfc0ba00:	71095002 	mul	t2,t0,t1
bfc0ba04:	340d4444 	li	t5,0x4444
bfc0ba08:	340c3333 	li	t4,0x3333
bfc0ba0c:	340e2222 	li	t6,0x2222
bfc0ba10:	000a5825 	or	t3,zero,t2
bfc0ba14:	24180036 	li	t8,54
bfc0ba18:	15780172 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ba1c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:99
bfc0ba20:	34090009 	li	t1,0x9
bfc0ba24:	34080007 	li	t0,0x7
bfc0ba28:	71095002 	mul	t2,t0,t1
bfc0ba2c:	2418003f 	li	t8,63
bfc0ba30:	1558016c 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0ba34:	00000000 	nop
bfc0ba38:	34080007 	li	t0,0x7
bfc0ba3c:	34090009 	li	t1,0x9
bfc0ba40:	71095002 	mul	t2,t0,t1
bfc0ba44:	2418003f 	li	t8,63
bfc0ba48:	15580166 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0ba4c:	00000000 	nop
bfc0ba50:	34080007 	li	t0,0x7
bfc0ba54:	34090009 	li	t1,0x9
bfc0ba58:	340a8888 	li	t2,0x8888
bfc0ba5c:	71095802 	mul	t3,t0,t1
bfc0ba60:	2418003f 	li	t8,63
bfc0ba64:	1578015f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ba68:	00000000 	nop
bfc0ba6c:	34080007 	li	t0,0x7
bfc0ba70:	340c4444 	li	t4,0x4444
bfc0ba74:	34090009 	li	t1,0x9
bfc0ba78:	340a8888 	li	t2,0x8888
bfc0ba7c:	71095802 	mul	t3,t0,t1
bfc0ba80:	2418003f 	li	t8,63
bfc0ba84:	15780157 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0ba88:	00000000 	nop
bfc0ba8c:	34080007 	li	t0,0x7
bfc0ba90:	34090009 	li	t1,0x9
bfc0ba94:	71095002 	mul	t2,t0,t1
bfc0ba98:	2418003f 	li	t8,63
bfc0ba9c:	15580151 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0baa0:	00000000 	nop
bfc0baa4:	34090009 	li	t1,0x9
bfc0baa8:	34080007 	li	t0,0x7
bfc0baac:	71095002 	mul	t2,t0,t1
bfc0bab0:	2418003f 	li	t8,63
bfc0bab4:	1558014b 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0bab8:	00000000 	nop
bfc0babc:	34090009 	li	t1,0x9
bfc0bac0:	34080007 	li	t0,0x7
bfc0bac4:	340a8888 	li	t2,0x8888
bfc0bac8:	71095802 	mul	t3,t0,t1
bfc0bacc:	2418003f 	li	t8,63
bfc0bad0:	15780144 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bad4:	00000000 	nop
bfc0bad8:	34090009 	li	t1,0x9
bfc0badc:	340c4444 	li	t4,0x4444
bfc0bae0:	34080007 	li	t0,0x7
bfc0bae4:	340a8888 	li	t2,0x8888
bfc0bae8:	71095802 	mul	t3,t0,t1
bfc0baec:	2418003f 	li	t8,63
bfc0baf0:	1578013c 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0baf4:	00000000 	nop
bfc0baf8:	34080007 	li	t0,0x7
bfc0bafc:	34090009 	li	t1,0x9
bfc0bb00:	71095002 	mul	t2,t0,t1
bfc0bb04:	01405825 	move	t3,t2
bfc0bb08:	2418003f 	li	t8,63
bfc0bb0c:	15780135 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bb10:	00000000 	nop
bfc0bb14:	34090009 	li	t1,0x9
bfc0bb18:	34080007 	li	t0,0x7
bfc0bb1c:	71095002 	mul	t2,t0,t1
bfc0bb20:	340c3333 	li	t4,0x3333
bfc0bb24:	01405825 	move	t3,t2
bfc0bb28:	2418003f 	li	t8,63
bfc0bb2c:	1578012d 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bb30:	00000000 	nop
bfc0bb34:	34090009 	li	t1,0x9
bfc0bb38:	34080007 	li	t0,0x7
bfc0bb3c:	71095002 	mul	t2,t0,t1
bfc0bb40:	340d4444 	li	t5,0x4444
bfc0bb44:	340c3333 	li	t4,0x3333
bfc0bb48:	01405825 	move	t3,t2
bfc0bb4c:	2418003f 	li	t8,63
bfc0bb50:	15780124 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bb54:	00000000 	nop
bfc0bb58:	34090009 	li	t1,0x9
bfc0bb5c:	34080007 	li	t0,0x7
bfc0bb60:	71095002 	mul	t2,t0,t1
bfc0bb64:	340d4444 	li	t5,0x4444
bfc0bb68:	340c3333 	li	t4,0x3333
bfc0bb6c:	340e2222 	li	t6,0x2222
bfc0bb70:	01405825 	move	t3,t2
bfc0bb74:	2418003f 	li	t8,63
bfc0bb78:	1578011a 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bb7c:	00000000 	nop
bfc0bb80:	34080007 	li	t0,0x7
bfc0bb84:	34090009 	li	t1,0x9
bfc0bb88:	71095002 	mul	t2,t0,t1
bfc0bb8c:	000a5825 	or	t3,zero,t2
bfc0bb90:	2418003f 	li	t8,63
bfc0bb94:	15780113 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bb98:	00000000 	nop
bfc0bb9c:	34090009 	li	t1,0x9
bfc0bba0:	34080007 	li	t0,0x7
bfc0bba4:	71095002 	mul	t2,t0,t1
bfc0bba8:	340c3333 	li	t4,0x3333
bfc0bbac:	000a5825 	or	t3,zero,t2
bfc0bbb0:	2418003f 	li	t8,63
bfc0bbb4:	1578010b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bbb8:	00000000 	nop
bfc0bbbc:	34090009 	li	t1,0x9
bfc0bbc0:	34080007 	li	t0,0x7
bfc0bbc4:	71095002 	mul	t2,t0,t1
bfc0bbc8:	340d4444 	li	t5,0x4444
bfc0bbcc:	340c3333 	li	t4,0x3333
bfc0bbd0:	000a5825 	or	t3,zero,t2
bfc0bbd4:	2418003f 	li	t8,63
bfc0bbd8:	15780102 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bbdc:	00000000 	nop
bfc0bbe0:	34090009 	li	t1,0x9
bfc0bbe4:	34080007 	li	t0,0x7
bfc0bbe8:	71095002 	mul	t2,t0,t1
bfc0bbec:	340d4444 	li	t5,0x4444
bfc0bbf0:	340c3333 	li	t4,0x3333
bfc0bbf4:	340e2222 	li	t6,0x2222
bfc0bbf8:	000a5825 	or	t3,zero,t2
bfc0bbfc:	2418003f 	li	t8,63
bfc0bc00:	157800f8 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bc04:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:100
bfc0bc08:	34090009 	li	t1,0x9
bfc0bc0c:	34080008 	li	t0,0x8
bfc0bc10:	71095002 	mul	t2,t0,t1
bfc0bc14:	24180048 	li	t8,72
bfc0bc18:	155800f2 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0bc1c:	00000000 	nop
bfc0bc20:	34080008 	li	t0,0x8
bfc0bc24:	34090009 	li	t1,0x9
bfc0bc28:	71095002 	mul	t2,t0,t1
bfc0bc2c:	24180048 	li	t8,72
bfc0bc30:	155800ec 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0bc34:	00000000 	nop
bfc0bc38:	34080008 	li	t0,0x8
bfc0bc3c:	34090009 	li	t1,0x9
bfc0bc40:	340a8888 	li	t2,0x8888
bfc0bc44:	71095802 	mul	t3,t0,t1
bfc0bc48:	24180048 	li	t8,72
bfc0bc4c:	157800e5 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bc50:	00000000 	nop
bfc0bc54:	34080008 	li	t0,0x8
bfc0bc58:	340c4444 	li	t4,0x4444
bfc0bc5c:	34090009 	li	t1,0x9
bfc0bc60:	340a8888 	li	t2,0x8888
bfc0bc64:	71095802 	mul	t3,t0,t1
bfc0bc68:	24180048 	li	t8,72
bfc0bc6c:	157800dd 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bc70:	00000000 	nop
bfc0bc74:	34080008 	li	t0,0x8
bfc0bc78:	34090009 	li	t1,0x9
bfc0bc7c:	71095002 	mul	t2,t0,t1
bfc0bc80:	24180048 	li	t8,72
bfc0bc84:	155800d7 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0bc88:	00000000 	nop
bfc0bc8c:	34090009 	li	t1,0x9
bfc0bc90:	34080008 	li	t0,0x8
bfc0bc94:	71095002 	mul	t2,t0,t1
bfc0bc98:	24180048 	li	t8,72
bfc0bc9c:	155800d1 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0bca0:	00000000 	nop
bfc0bca4:	34090009 	li	t1,0x9
bfc0bca8:	34080008 	li	t0,0x8
bfc0bcac:	340a8888 	li	t2,0x8888
bfc0bcb0:	71095802 	mul	t3,t0,t1
bfc0bcb4:	24180048 	li	t8,72
bfc0bcb8:	157800ca 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bcbc:	00000000 	nop
bfc0bcc0:	34090009 	li	t1,0x9
bfc0bcc4:	340c4444 	li	t4,0x4444
bfc0bcc8:	34080008 	li	t0,0x8
bfc0bccc:	340a8888 	li	t2,0x8888
bfc0bcd0:	71095802 	mul	t3,t0,t1
bfc0bcd4:	24180048 	li	t8,72
bfc0bcd8:	157800c2 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bcdc:	00000000 	nop
bfc0bce0:	34080008 	li	t0,0x8
bfc0bce4:	34090009 	li	t1,0x9
bfc0bce8:	71095002 	mul	t2,t0,t1
bfc0bcec:	01405825 	move	t3,t2
bfc0bcf0:	24180048 	li	t8,72
bfc0bcf4:	157800bb 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bcf8:	00000000 	nop
bfc0bcfc:	34090009 	li	t1,0x9
bfc0bd00:	34080008 	li	t0,0x8
bfc0bd04:	71095002 	mul	t2,t0,t1
bfc0bd08:	340c3333 	li	t4,0x3333
bfc0bd0c:	01405825 	move	t3,t2
bfc0bd10:	24180048 	li	t8,72
bfc0bd14:	157800b3 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bd18:	00000000 	nop
bfc0bd1c:	34090009 	li	t1,0x9
bfc0bd20:	34080008 	li	t0,0x8
bfc0bd24:	71095002 	mul	t2,t0,t1
bfc0bd28:	340d4444 	li	t5,0x4444
bfc0bd2c:	340c3333 	li	t4,0x3333
bfc0bd30:	01405825 	move	t3,t2
bfc0bd34:	24180048 	li	t8,72
bfc0bd38:	157800aa 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bd3c:	00000000 	nop
bfc0bd40:	34090009 	li	t1,0x9
bfc0bd44:	34080008 	li	t0,0x8
bfc0bd48:	71095002 	mul	t2,t0,t1
bfc0bd4c:	340d4444 	li	t5,0x4444
bfc0bd50:	340c3333 	li	t4,0x3333
bfc0bd54:	340e2222 	li	t6,0x2222
bfc0bd58:	01405825 	move	t3,t2
bfc0bd5c:	24180048 	li	t8,72
bfc0bd60:	157800a0 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bd64:	00000000 	nop
bfc0bd68:	34080008 	li	t0,0x8
bfc0bd6c:	34090009 	li	t1,0x9
bfc0bd70:	71095002 	mul	t2,t0,t1
bfc0bd74:	000a5825 	or	t3,zero,t2
bfc0bd78:	24180048 	li	t8,72
bfc0bd7c:	15780099 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bd80:	00000000 	nop
bfc0bd84:	34090009 	li	t1,0x9
bfc0bd88:	34080008 	li	t0,0x8
bfc0bd8c:	71095002 	mul	t2,t0,t1
bfc0bd90:	340c3333 	li	t4,0x3333
bfc0bd94:	000a5825 	or	t3,zero,t2
bfc0bd98:	24180048 	li	t8,72
bfc0bd9c:	15780091 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bda0:	00000000 	nop
bfc0bda4:	34090009 	li	t1,0x9
bfc0bda8:	34080008 	li	t0,0x8
bfc0bdac:	71095002 	mul	t2,t0,t1
bfc0bdb0:	340d4444 	li	t5,0x4444
bfc0bdb4:	340c3333 	li	t4,0x3333
bfc0bdb8:	000a5825 	or	t3,zero,t2
bfc0bdbc:	24180048 	li	t8,72
bfc0bdc0:	15780088 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bdc4:	00000000 	nop
bfc0bdc8:	34090009 	li	t1,0x9
bfc0bdcc:	34080008 	li	t0,0x8
bfc0bdd0:	71095002 	mul	t2,t0,t1
bfc0bdd4:	340d4444 	li	t5,0x4444
bfc0bdd8:	340c3333 	li	t4,0x3333
bfc0bddc:	340e2222 	li	t6,0x2222
bfc0bde0:	000a5825 	or	t3,zero,t2
bfc0bde4:	24180048 	li	t8,72
bfc0bde8:	1578007e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bdec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:101
bfc0bdf0:	34090009 	li	t1,0x9
bfc0bdf4:	34080009 	li	t0,0x9
bfc0bdf8:	71095002 	mul	t2,t0,t1
bfc0bdfc:	24180051 	li	t8,81
bfc0be00:	15580078 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0be04:	00000000 	nop
bfc0be08:	34080009 	li	t0,0x9
bfc0be0c:	34090009 	li	t1,0x9
bfc0be10:	71095002 	mul	t2,t0,t1
bfc0be14:	24180051 	li	t8,81
bfc0be18:	15580072 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0be1c:	00000000 	nop
bfc0be20:	34080009 	li	t0,0x9
bfc0be24:	34090009 	li	t1,0x9
bfc0be28:	340a8888 	li	t2,0x8888
bfc0be2c:	71095802 	mul	t3,t0,t1
bfc0be30:	24180051 	li	t8,81
bfc0be34:	1578006b 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0be38:	00000000 	nop
bfc0be3c:	34080009 	li	t0,0x9
bfc0be40:	340c4444 	li	t4,0x4444
bfc0be44:	34090009 	li	t1,0x9
bfc0be48:	340a8888 	li	t2,0x8888
bfc0be4c:	71095802 	mul	t3,t0,t1
bfc0be50:	24180051 	li	t8,81
bfc0be54:	15780063 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0be58:	00000000 	nop
bfc0be5c:	34080009 	li	t0,0x9
bfc0be60:	34090009 	li	t1,0x9
bfc0be64:	71095002 	mul	t2,t0,t1
bfc0be68:	24180051 	li	t8,81
bfc0be6c:	1558005d 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0be70:	00000000 	nop
bfc0be74:	34090009 	li	t1,0x9
bfc0be78:	34080009 	li	t0,0x9
bfc0be7c:	71095002 	mul	t2,t0,t1
bfc0be80:	24180051 	li	t8,81
bfc0be84:	15580057 	bne	t2,t8,bfc0bfe4 <inst_error>
bfc0be88:	00000000 	nop
bfc0be8c:	34090009 	li	t1,0x9
bfc0be90:	34080009 	li	t0,0x9
bfc0be94:	340a8888 	li	t2,0x8888
bfc0be98:	71095802 	mul	t3,t0,t1
bfc0be9c:	24180051 	li	t8,81
bfc0bea0:	15780050 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bea4:	00000000 	nop
bfc0bea8:	34090009 	li	t1,0x9
bfc0beac:	340c4444 	li	t4,0x4444
bfc0beb0:	34080009 	li	t0,0x9
bfc0beb4:	340a8888 	li	t2,0x8888
bfc0beb8:	71095802 	mul	t3,t0,t1
bfc0bebc:	24180051 	li	t8,81
bfc0bec0:	15780048 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bec4:	00000000 	nop
bfc0bec8:	34080009 	li	t0,0x9
bfc0becc:	34090009 	li	t1,0x9
bfc0bed0:	71095002 	mul	t2,t0,t1
bfc0bed4:	01405825 	move	t3,t2
bfc0bed8:	24180051 	li	t8,81
bfc0bedc:	15780041 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bee0:	00000000 	nop
bfc0bee4:	34090009 	li	t1,0x9
bfc0bee8:	34080009 	li	t0,0x9
bfc0beec:	71095002 	mul	t2,t0,t1
bfc0bef0:	340c3333 	li	t4,0x3333
bfc0bef4:	01405825 	move	t3,t2
bfc0bef8:	24180051 	li	t8,81
bfc0befc:	15780039 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bf00:	00000000 	nop
bfc0bf04:	34090009 	li	t1,0x9
bfc0bf08:	34080009 	li	t0,0x9
bfc0bf0c:	71095002 	mul	t2,t0,t1
bfc0bf10:	340d4444 	li	t5,0x4444
bfc0bf14:	340c3333 	li	t4,0x3333
bfc0bf18:	01405825 	move	t3,t2
bfc0bf1c:	24180051 	li	t8,81
bfc0bf20:	15780030 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bf24:	00000000 	nop
bfc0bf28:	34090009 	li	t1,0x9
bfc0bf2c:	34080009 	li	t0,0x9
bfc0bf30:	71095002 	mul	t2,t0,t1
bfc0bf34:	340d4444 	li	t5,0x4444
bfc0bf38:	340c3333 	li	t4,0x3333
bfc0bf3c:	340e2222 	li	t6,0x2222
bfc0bf40:	01405825 	move	t3,t2
bfc0bf44:	24180051 	li	t8,81
bfc0bf48:	15780026 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bf4c:	00000000 	nop
bfc0bf50:	34080009 	li	t0,0x9
bfc0bf54:	34090009 	li	t1,0x9
bfc0bf58:	71095002 	mul	t2,t0,t1
bfc0bf5c:	000a5825 	or	t3,zero,t2
bfc0bf60:	24180051 	li	t8,81
bfc0bf64:	1578001f 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bf68:	00000000 	nop
bfc0bf6c:	34090009 	li	t1,0x9
bfc0bf70:	34080009 	li	t0,0x9
bfc0bf74:	71095002 	mul	t2,t0,t1
bfc0bf78:	340c3333 	li	t4,0x3333
bfc0bf7c:	000a5825 	or	t3,zero,t2
bfc0bf80:	24180051 	li	t8,81
bfc0bf84:	15780017 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bf88:	00000000 	nop
bfc0bf8c:	34090009 	li	t1,0x9
bfc0bf90:	34080009 	li	t0,0x9
bfc0bf94:	71095002 	mul	t2,t0,t1
bfc0bf98:	340d4444 	li	t5,0x4444
bfc0bf9c:	340c3333 	li	t4,0x3333
bfc0bfa0:	000a5825 	or	t3,zero,t2
bfc0bfa4:	24180051 	li	t8,81
bfc0bfa8:	1578000e 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bfac:	00000000 	nop
bfc0bfb0:	34090009 	li	t1,0x9
bfc0bfb4:	34080009 	li	t0,0x9
bfc0bfb8:	71095002 	mul	t2,t0,t1
bfc0bfbc:	340d4444 	li	t5,0x4444
bfc0bfc0:	340c3333 	li	t4,0x3333
bfc0bfc4:	340e2222 	li	t6,0x2222
bfc0bfc8:	000a5825 	or	t3,zero,t2
bfc0bfcc:	24180051 	li	t8,81
bfc0bfd0:	15780004 	bne	t3,t8,bfc0bfe4 <inst_error>
bfc0bfd4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:106
bfc0bfd8:	16400002 	bnez	s2,bfc0bfe4 <inst_error>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:107
bfc0bfdc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:109
bfc0bfe0:	26730001 	addiu	s3,s3,1

bfc0bfe4 <inst_error>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:112
bfc0bfe4:	00104e00 	sll	t1,s0,0x18
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:113
bfc0bfe8:	01334025 	or	t0,t1,s3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:114
bfc0bfec:	ae280000 	sw	t0,0(s1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:115
bfc0bff0:	03e00008 	jr	ra
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my3_mul.S:116
bfc0bff4:	00000000 	nop
	...

bfc0c000 <my4_madd_test>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:7
bfc0c000:	26100001 	addiu	s0,s0,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:8
bfc0c004:	24120000 	li	s2,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:9
bfc0c008:	3c0a0001 	lui	t2,0x1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:11
bfc0c00c:	24082222 	li	t0,8738
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:12
bfc0c010:	24093333 	li	t1,13107
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:13
bfc0c014:	71090000 	madd	t0,t1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:15
bfc0c018:	3c0845b9 	lui	t0,0x45b9
bfc0c01c:	35080738 	ori	t0,t0,0x738
bfc0c020:	3c09d70d 	lui	t1,0xd70d
bfc0c024:	352964f0 	ori	t1,t1,0x64f0
bfc0c028:	240a0001 	li	t2,1
bfc0c02c:	240b0002 	li	t3,2
bfc0c030:	01600011 	mthi	t3
bfc0c034:	01400013 	mtlo	t2
bfc0c038:	71090000 	madd	t0,t1
bfc0c03c:	00006010 	mfhi	t4
bfc0c040:	00006812 	mflo	t5
bfc0c044:	3c0ef4d9 	lui	t6,0xf4d9
bfc0c048:	35ce03bd 	ori	t6,t6,0x3bd
bfc0c04c:	158e0c58 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c050:	00000000 	nop
bfc0c054:	3c0e0a20 	lui	t6,0xa20
bfc0c058:	35cea481 	ori	t6,t6,0xa481
bfc0c05c:	15ae0c54 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c060:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:16
bfc0c064:	3c0899a4 	lui	t0,0x99a4
bfc0c068:	350851b0 	ori	t0,t0,0x51b0
bfc0c06c:	3c09be3d 	lui	t1,0xbe3d
bfc0c070:	35299998 	ori	t1,t1,0x9998
bfc0c074:	240a0002 	li	t2,2
bfc0c078:	240b0003 	li	t3,3
bfc0c07c:	01600011 	mthi	t3
bfc0c080:	01400013 	mtlo	t2
bfc0c084:	71090000 	madd	t0,t1
bfc0c088:	00006010 	mfhi	t4
bfc0c08c:	00006812 	mflo	t5
bfc0c090:	3c0e1a4b 	lui	t6,0x1a4b
bfc0c094:	35ce01b1 	ori	t6,t6,0x1b1
bfc0c098:	158e0c45 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c09c:	00000000 	nop
bfc0c0a0:	3c0e8552 	lui	t6,0x8552
bfc0c0a4:	35ceb082 	ori	t6,t6,0xb082
bfc0c0a8:	15ae0c41 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c0ac:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:17
bfc0c0b0:	3c088593 	lui	t0,0x8593
bfc0c0b4:	35081c58 	ori	t0,t0,0x1c58
bfc0c0b8:	3c09fb71 	lui	t1,0xfb71
bfc0c0bc:	35290fb5 	ori	t1,t1,0xfb5
bfc0c0c0:	240a0001 	li	t2,1
bfc0c0c4:	240b0001 	li	t3,1
bfc0c0c8:	01600011 	mthi	t3
bfc0c0cc:	01400013 	mtlo	t2
bfc0c0d0:	71090000 	madd	t0,t1
bfc0c0d4:	00006010 	mfhi	t4
bfc0c0d8:	00006812 	mflo	t5
bfc0c0dc:	3c0e022e 	lui	t6,0x22e
bfc0c0e0:	35ce0edf 	ori	t6,t6,0xedf
bfc0c0e4:	158e0c32 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c0e8:	00000000 	nop
bfc0c0ec:	3c0eda84 	lui	t6,0xda84
bfc0c0f0:	35ce3239 	ori	t6,t6,0x3239
bfc0c0f4:	15ae0c2e 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c0f8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:18
bfc0c0fc:	3c08650e 	lui	t0,0x650e
bfc0c100:	35084043 	ori	t0,t0,0x4043
bfc0c104:	3c0964c1 	lui	t1,0x64c1
bfc0c108:	35297218 	ori	t1,t1,0x7218
bfc0c10c:	240a0001 	li	t2,1
bfc0c110:	240b0001 	li	t3,1
bfc0c114:	01600011 	mthi	t3
bfc0c118:	01400013 	mtlo	t2
bfc0c11c:	71090000 	madd	t0,t1
bfc0c120:	00006010 	mfhi	t4
bfc0c124:	00006812 	mflo	t5
bfc0c128:	3c0e27c5 	lui	t6,0x27c5
bfc0c12c:	35ceede3 	ori	t6,t6,0xede3
bfc0c130:	158e0c1f 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c134:	00000000 	nop
bfc0c138:	3c0e7076 	lui	t6,0x7076
bfc0c13c:	35cedc49 	ori	t6,t6,0xdc49
bfc0c140:	15ae0c1b 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c144:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:19
bfc0c148:	3c08a00c 	lui	t0,0xa00c
bfc0c14c:	35086c50 	ori	t0,t0,0x6c50
bfc0c150:	3c098e9d 	lui	t1,0x8e9d
bfc0c154:	3529f080 	ori	t1,t1,0xf080
bfc0c158:	240a0001 	li	t2,1
bfc0c15c:	240b0001 	li	t3,1
bfc0c160:	01600011 	mthi	t3
bfc0c164:	01400013 	mtlo	t2
bfc0c168:	71090000 	madd	t0,t1
bfc0c16c:	00006010 	mfhi	t4
bfc0c170:	00006812 	mflo	t5
bfc0c174:	3c0e2a7f 	lui	t6,0x2a7f
bfc0c178:	35ce453f 	ori	t6,t6,0x453f
bfc0c17c:	158e0c0c 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c180:	00000000 	nop
bfc0c184:	3c0e78d1 	lui	t6,0x78d1
bfc0c188:	35ce2801 	ori	t6,t6,0x2801
bfc0c18c:	15ae0c08 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c190:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:20
bfc0c194:	3c0899c8 	lui	t0,0x99c8
bfc0c198:	350874b6 	ori	t0,t0,0x74b6
bfc0c19c:	3c09d7ce 	lui	t1,0xd7ce
bfc0c1a0:	352983e0 	ori	t1,t1,0x83e0
bfc0c1a4:	240a0001 	li	t2,1
bfc0c1a8:	240b0001 	li	t3,1
bfc0c1ac:	01600011 	mthi	t3
bfc0c1b0:	01400013 	mtlo	t2
bfc0c1b4:	71090000 	madd	t0,t1
bfc0c1b8:	00006010 	mfhi	t4
bfc0c1bc:	00006812 	mflo	t5
bfc0c1c0:	3c0e100c 	lui	t6,0x100c
bfc0c1c4:	35ce6ff5 	ori	t6,t6,0x6ff5
bfc0c1c8:	158e0bf9 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c1cc:	00000000 	nop
bfc0c1d0:	3c0ee793 	lui	t6,0xe793
bfc0c1d4:	35ce4141 	ori	t6,t6,0x4141
bfc0c1d8:	15ae0bf5 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c1dc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:21
bfc0c1e0:	3c081c62 	lui	t0,0x1c62
bfc0c1e4:	3508f360 	ori	t0,t0,0xf360
bfc0c1e8:	3c093458 	lui	t1,0x3458
bfc0c1ec:	35290400 	ori	t1,t1,0x400
bfc0c1f0:	240a0001 	li	t2,1
bfc0c1f4:	240b0001 	li	t3,1
bfc0c1f8:	01600011 	mthi	t3
bfc0c1fc:	01400013 	mtlo	t2
bfc0c200:	71090000 	madd	t0,t1
bfc0c204:	00006010 	mfhi	t4
bfc0c208:	00006812 	mflo	t5
bfc0c20c:	3c0e05cd 	lui	t6,0x5cd
bfc0c210:	35cedbe5 	ori	t6,t6,0xdbe5
bfc0c214:	158e0be6 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c218:	00000000 	nop
bfc0c21c:	3c0eb4cd 	lui	t6,0xb4cd
bfc0c220:	35ce8001 	ori	t6,t6,0x8001
bfc0c224:	15ae0be2 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c228:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:22
bfc0c22c:	3c0899b8 	lui	t0,0x99b8
bfc0c230:	35080b00 	ori	t0,t0,0xb00
bfc0c234:	3c096c46 	lui	t1,0x6c46
bfc0c238:	35293000 	ori	t1,t1,0x3000
bfc0c23c:	240a0001 	li	t2,1
bfc0c240:	240b0001 	li	t3,1
bfc0c244:	01600011 	mthi	t3
bfc0c248:	01400013 	mtlo	t2
bfc0c24c:	71090000 	madd	t0,t1
bfc0c250:	00006010 	mfhi	t4
bfc0c254:	00006812 	mflo	t5
bfc0c258:	3c0ed4bd 	lui	t6,0xd4bd
bfc0c25c:	35ce99ca 	ori	t6,t6,0x99ca
bfc0c260:	158e0bd3 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c264:	00000000 	nop
bfc0c268:	3c0e8410 	lui	t6,0x8410
bfc0c26c:	35ce0001 	ori	t6,t6,0x1
bfc0c270:	15ae0bcf 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c274:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:23
bfc0c278:	3c08dc82 	lui	t0,0xdc82
bfc0c27c:	35083390 	ori	t0,t0,0x3390
bfc0c280:	3c095208 	lui	t1,0x5208
bfc0c284:	3529f838 	ori	t1,t1,0xf838
bfc0c288:	240a0001 	li	t2,1
bfc0c28c:	240b0001 	li	t3,1
bfc0c290:	01600011 	mthi	t3
bfc0c294:	01400013 	mtlo	t2
bfc0c298:	71090000 	madd	t0,t1
bfc0c29c:	00006010 	mfhi	t4
bfc0c2a0:	00006812 	mflo	t5
bfc0c2a4:	3c0ef4a0 	lui	t6,0xf4a0
bfc0c2a8:	35ce762d 	ori	t6,t6,0x762d
bfc0c2ac:	158e0bc0 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c2b0:	00000000 	nop
bfc0c2b4:	3c0e1aee 	lui	t6,0x1aee
bfc0c2b8:	35cec781 	ori	t6,t6,0xc781
bfc0c2bc:	15ae0bbc 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c2c0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:24
bfc0c2c4:	3c08e530 	lui	t0,0xe530
bfc0c2c8:	350880d8 	ori	t0,t0,0x80d8
bfc0c2cc:	3c09848a 	lui	t1,0x848a
bfc0c2d0:	35299c5a 	ori	t1,t1,0x9c5a
bfc0c2d4:	240a0001 	li	t2,1
bfc0c2d8:	240b0001 	li	t3,1
bfc0c2dc:	01600011 	mthi	t3
bfc0c2e0:	01400013 	mtlo	t2
bfc0c2e4:	71090000 	madd	t0,t1
bfc0c2e8:	00006010 	mfhi	t4
bfc0c2ec:	00006812 	mflo	t5
bfc0c2f0:	3c0e0ced 	lui	t6,0xced
bfc0c2f4:	35cefd5d 	ori	t6,t6,0xfd5d
bfc0c2f8:	158e0bad 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c2fc:	00000000 	nop
bfc0c300:	3c0ef600 	lui	t6,0xf600
bfc0c304:	35ceebf1 	ori	t6,t6,0xebf1
bfc0c308:	15ae0ba9 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c30c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:25
bfc0c310:	3c087f21 	lui	t0,0x7f21
bfc0c314:	350863d8 	ori	t0,t0,0x63d8
bfc0c318:	3c09ab5b 	lui	t1,0xab5b
bfc0c31c:	3529ba80 	ori	t1,t1,0xba80
bfc0c320:	240a0001 	li	t2,1
bfc0c324:	240b0001 	li	t3,1
bfc0c328:	01600011 	mthi	t3
bfc0c32c:	01400013 	mtlo	t2
bfc0c330:	71090000 	madd	t0,t1
bfc0c334:	00006010 	mfhi	t4
bfc0c338:	00006812 	mflo	t5
bfc0c33c:	3c0ed5f7 	lui	t6,0xd5f7
bfc0c340:	35ce7756 	ori	t6,t6,0x7756
bfc0c344:	158e0b9a 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c348:	00000000 	nop
bfc0c34c:	3c0e9904 	lui	t6,0x9904
bfc0c350:	35cedc01 	ori	t6,t6,0xdc01
bfc0c354:	15ae0b96 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c358:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:26
bfc0c35c:	3c08ea7b 	lui	t0,0xea7b
bfc0c360:	350888c0 	ori	t0,t0,0x88c0
bfc0c364:	3c0923ee 	lui	t1,0x23ee
bfc0c368:	3529d510 	ori	t1,t1,0xd510
bfc0c36c:	240a0001 	li	t2,1
bfc0c370:	240b0001 	li	t3,1
bfc0c374:	01600011 	mthi	t3
bfc0c378:	01400013 	mtlo	t2
bfc0c37c:	71090000 	madd	t0,t1
bfc0c380:	00006010 	mfhi	t4
bfc0c384:	00006812 	mflo	t5
bfc0c388:	3c0efcfa 	lui	t6,0xfcfa
bfc0c38c:	35ced0a3 	ori	t6,t6,0xd0a3
bfc0c390:	158e0b87 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c394:	00000000 	nop
bfc0c398:	3c0ed300 	lui	t6,0xd300
bfc0c39c:	35ce4c01 	ori	t6,t6,0x4c01
bfc0c3a0:	15ae0b83 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c3a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:27
bfc0c3a8:	3c087389 	lui	t0,0x7389
bfc0c3ac:	3508b4fd 	ori	t0,t0,0xb4fd
bfc0c3b0:	3c09ea06 	lui	t1,0xea06
bfc0c3b4:	35293940 	ori	t1,t1,0x3940
bfc0c3b8:	240a0001 	li	t2,1
bfc0c3bc:	240b0001 	li	t3,1
bfc0c3c0:	01600011 	mthi	t3
bfc0c3c4:	01400013 	mtlo	t2
bfc0c3c8:	71090000 	madd	t0,t1
bfc0c3cc:	00006010 	mfhi	t4
bfc0c3d0:	00006812 	mflo	t5
bfc0c3d4:	3c0ef614 	lui	t6,0xf614
bfc0c3d8:	35cef984 	ori	t6,t6,0xf984
bfc0c3dc:	158e0b74 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c3e0:	00000000 	nop
bfc0c3e4:	3c0e0ba7 	lui	t6,0xba7
bfc0c3e8:	35ce9441 	ori	t6,t6,0x9441
bfc0c3ec:	15ae0b70 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c3f0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:28
bfc0c3f4:	3c08bcdf 	lui	t0,0xbcdf
bfc0c3f8:	35089b20 	ori	t0,t0,0x9b20
bfc0c3fc:	3c09c145 	lui	t1,0xc145
bfc0c400:	35291978 	ori	t1,t1,0x1978
bfc0c404:	240a0001 	li	t2,1
bfc0c408:	240b0001 	li	t3,1
bfc0c40c:	01600011 	mthi	t3
bfc0c410:	01400013 	mtlo	t2
bfc0c414:	71090000 	madd	t0,t1
bfc0c418:	00006010 	mfhi	t4
bfc0c41c:	00006812 	mflo	t5
bfc0c420:	3c0e1072 	lui	t6,0x1072
bfc0c424:	35ceda6b 	ori	t6,t6,0xda6b
bfc0c428:	158e0b61 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c42c:	00000000 	nop
bfc0c430:	3c0e4e96 	lui	t6,0x4e96
bfc0c434:	35ced701 	ori	t6,t6,0xd701
bfc0c438:	15ae0b5d 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c43c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:29
bfc0c440:	3c08dcac 	lui	t0,0xdcac
bfc0c444:	3508fd50 	ori	t0,t0,0xfd50
bfc0c448:	3c09809d 	lui	t1,0x809d
bfc0c44c:	35290a80 	ori	t1,t1,0xa80
bfc0c450:	240a0001 	li	t2,1
bfc0c454:	240b0001 	li	t3,1
bfc0c458:	01600011 	mthi	t3
bfc0c45c:	01400013 	mtlo	t2
bfc0c460:	71090000 	madd	t0,t1
bfc0c464:	00006010 	mfhi	t4
bfc0c468:	00006812 	mflo	t5
bfc0c46c:	3c0e1193 	lui	t6,0x1193
bfc0c470:	35ced5fd 	ori	t6,t6,0xd5fd
bfc0c474:	158e0b4e 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c478:	00000000 	nop
bfc0c47c:	3c0e7273 	lui	t6,0x7273
bfc0c480:	35cec801 	ori	t6,t6,0xc801
bfc0c484:	15ae0b4a 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c488:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:30
bfc0c48c:	3c0855ed 	lui	t0,0x55ed
bfc0c490:	35083100 	ori	t0,t0,0x3100
bfc0c494:	3c09be5b 	lui	t1,0xbe5b
bfc0c498:	3529a9f2 	ori	t1,t1,0xa9f2
bfc0c49c:	240a0001 	li	t2,1
bfc0c4a0:	240b0001 	li	t3,1
bfc0c4a4:	01600011 	mthi	t3
bfc0c4a8:	01400013 	mtlo	t2
bfc0c4ac:	71090000 	madd	t0,t1
bfc0c4b0:	00006010 	mfhi	t4
bfc0c4b4:	00006812 	mflo	t5
bfc0c4b8:	3c0ee9f7 	lui	t6,0xe9f7
bfc0c4bc:	35ce9dba 	ori	t6,t6,0x9dba
bfc0c4c0:	158e0b3b 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c4c4:	00000000 	nop
bfc0c4c8:	3c0e3a91 	lui	t6,0x3a91
bfc0c4cc:	35ce5201 	ori	t6,t6,0x5201
bfc0c4d0:	15ae0b37 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c4d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:31
bfc0c4d8:	3c08cedb 	lui	t0,0xcedb
bfc0c4dc:	35085fd8 	ori	t0,t0,0x5fd8
bfc0c4e0:	3c09e179 	lui	t1,0xe179
bfc0c4e4:	35293b60 	ori	t1,t1,0x3b60
bfc0c4e8:	240a0001 	li	t2,1
bfc0c4ec:	240b0001 	li	t3,1
bfc0c4f0:	01600011 	mthi	t3
bfc0c4f4:	01400013 	mtlo	t2
bfc0c4f8:	71090000 	madd	t0,t1
bfc0c4fc:	00006010 	mfhi	t4
bfc0c500:	00006812 	mflo	t5
bfc0c504:	3c0e05dc 	lui	t6,0x5dc
bfc0c508:	35ce29b0 	ori	t6,t6,0x29b0
bfc0c50c:	158e0b28 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c510:	00000000 	nop
bfc0c514:	3c0e4672 	lui	t6,0x4672
bfc0c518:	35ceb901 	ori	t6,t6,0xb901
bfc0c51c:	15ae0b24 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c520:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:32
bfc0c524:	3c089d32 	lui	t0,0x9d32
bfc0c528:	3508f1b0 	ori	t0,t0,0xf1b0
bfc0c52c:	3c09bb20 	lui	t1,0xbb20
bfc0c530:	352916b8 	ori	t1,t1,0x16b8
bfc0c534:	240a0001 	li	t2,1
bfc0c538:	240b0001 	li	t3,1
bfc0c53c:	01600011 	mthi	t3
bfc0c540:	01400013 	mtlo	t2
bfc0c544:	71090000 	madd	t0,t1
bfc0c548:	00006010 	mfhi	t4
bfc0c54c:	00006812 	mflo	t5
bfc0c550:	3c0e1a94 	lui	t6,0x1a94
bfc0c554:	35cee276 	ori	t6,t6,0xe276
bfc0c558:	158e0b15 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c55c:	00000000 	nop
bfc0c560:	3c0e2362 	lui	t6,0x2362
bfc0c564:	35ced681 	ori	t6,t6,0xd681
bfc0c568:	15ae0b11 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c56c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:33
bfc0c570:	3c087091 	lui	t0,0x7091
bfc0c574:	3508ae43 	ori	t0,t0,0xae43
bfc0c578:	3c09db39 	lui	t1,0xdb39
bfc0c57c:	35290460 	ori	t1,t1,0x460
bfc0c580:	240a0001 	li	t2,1
bfc0c584:	240b0001 	li	t3,1
bfc0c588:	01600011 	mthi	t3
bfc0c58c:	01400013 	mtlo	t2
bfc0c590:	71090000 	madd	t0,t1
bfc0c594:	00006010 	mfhi	t4
bfc0c598:	00006812 	mflo	t5
bfc0c59c:	3c0eefd4 	lui	t6,0xefd4
bfc0c5a0:	35ce042d 	ori	t6,t6,0x42d
bfc0c5a4:	158e0b02 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c5a8:	00000000 	nop
bfc0c5ac:	3c0e9b45 	lui	t6,0x9b45
bfc0c5b0:	35ce6521 	ori	t6,t6,0x6521
bfc0c5b4:	15ae0afe 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c5b8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:34
bfc0c5bc:	3c08549b 	lui	t0,0x549b
bfc0c5c0:	3508f440 	ori	t0,t0,0xf440
bfc0c5c4:	3c09d1dc 	lui	t1,0xd1dc
bfc0c5c8:	35299f40 	ori	t1,t1,0x9f40
bfc0c5cc:	240a0001 	li	t2,1
bfc0c5d0:	240b0001 	li	t3,1
bfc0c5d4:	01600011 	mthi	t3
bfc0c5d8:	01400013 	mtlo	t2
bfc0c5dc:	71090000 	madd	t0,t1
bfc0c5e0:	00006010 	mfhi	t4
bfc0c5e4:	00006812 	mflo	t5
bfc0c5e8:	3c0ef0c0 	lui	t6,0xf0c0
bfc0c5ec:	35ce48d1 	ori	t6,t6,0x48d1
bfc0c5f0:	158e0aef 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c5f4:	00000000 	nop
bfc0c5f8:	3c0e2ab0 	lui	t6,0x2ab0
bfc0c5fc:	35ced001 	ori	t6,t6,0xd001
bfc0c600:	15ae0aeb 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c604:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:35
bfc0c608:	3c0863b2 	lui	t0,0x63b2
bfc0c60c:	350841cc 	ori	t0,t0,0x41cc
bfc0c610:	3c0948ae 	lui	t1,0x48ae
bfc0c614:	3529fe14 	ori	t1,t1,0xfe14
bfc0c618:	240a0001 	li	t2,1
bfc0c61c:	240b0001 	li	t3,1
bfc0c620:	01600011 	mthi	t3
bfc0c624:	01400013 	mtlo	t2
bfc0c628:	71090000 	madd	t0,t1
bfc0c62c:	00006010 	mfhi	t4
bfc0c630:	00006812 	mflo	t5
bfc0c634:	3c0e1c4e 	lui	t6,0x1c4e
bfc0c638:	35ce489d 	ori	t6,t6,0x489d
bfc0c63c:	158e0adc 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c640:	00000000 	nop
bfc0c644:	3c0ebfdd 	lui	t6,0xbfdd
bfc0c648:	35ce8bf1 	ori	t6,t6,0x8bf1
bfc0c64c:	15ae0ad8 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c650:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:36
bfc0c654:	3c084c92 	lui	t0,0x4c92
bfc0c658:	35085040 	ori	t0,t0,0x5040
bfc0c65c:	3c090855 	lui	t1,0x855
bfc0c660:	3529d2c8 	ori	t1,t1,0xd2c8
bfc0c664:	240a0001 	li	t2,1
bfc0c668:	240b0001 	li	t3,1
bfc0c66c:	01600011 	mthi	t3
bfc0c670:	01400013 	mtlo	t2
bfc0c674:	71090000 	madd	t0,t1
bfc0c678:	00006010 	mfhi	t4
bfc0c67c:	00006812 	mflo	t5
bfc0c680:	3c0e027e 	lui	t6,0x27e
bfc0c684:	35ce3e23 	ori	t6,t6,0x3e23
bfc0c688:	158e0ac9 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c68c:	00000000 	nop
bfc0c690:	3c0e7d63 	lui	t6,0x7d63
bfc0c694:	35ce3201 	ori	t6,t6,0x3201
bfc0c698:	15ae0ac5 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c69c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:37
bfc0c6a0:	3c08db2d 	lui	t0,0xdb2d
bfc0c6a4:	3508fd2c 	ori	t0,t0,0xfd2c
bfc0c6a8:	3c096c0e 	lui	t1,0x6c0e
bfc0c6ac:	35299f09 	ori	t1,t1,0x9f09
bfc0c6b0:	240a0001 	li	t2,1
bfc0c6b4:	240b0001 	li	t3,1
bfc0c6b8:	01600011 	mthi	t3
bfc0c6bc:	01400013 	mtlo	t2
bfc0c6c0:	71090000 	madd	t0,t1
bfc0c6c4:	00006010 	mfhi	t4
bfc0c6c8:	00006812 	mflo	t5
bfc0c6cc:	3c0ef075 	lui	t6,0xf075
bfc0c6d0:	35ce4c73 	ori	t6,t6,0x4c73
bfc0c6d4:	158e0ab6 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c6d8:	00000000 	nop
bfc0c6dc:	3c0ead44 	lui	t6,0xad44
bfc0c6e0:	35ce3a8d 	ori	t6,t6,0x3a8d
bfc0c6e4:	15ae0ab2 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c6e8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:38
bfc0c6ec:	3c08dfdc 	lui	t0,0xdfdc
bfc0c6f0:	35089250 	ori	t0,t0,0x9250
bfc0c6f4:	3c09bf1f 	lui	t1,0xbf1f
bfc0c6f8:	352915c3 	ori	t1,t1,0x15c3
bfc0c6fc:	240a0001 	li	t2,1
bfc0c700:	240b0001 	li	t3,1
bfc0c704:	01600011 	mthi	t3
bfc0c708:	01400013 	mtlo	t2
bfc0c70c:	71090000 	madd	t0,t1
bfc0c710:	00006010 	mfhi	t4
bfc0c714:	00006812 	mflo	t5
bfc0c718:	3c0e0825 	lui	t6,0x825
bfc0c71c:	35ce17d5 	ori	t6,t6,0x17d5
bfc0c720:	158e0aa3 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c724:	00000000 	nop
bfc0c728:	3c0e04b4 	lui	t6,0x4b4
bfc0c72c:	35ce02f1 	ori	t6,t6,0x2f1
bfc0c730:	15ae0a9f 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c734:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:39
bfc0c738:	3c081b33 	lui	t0,0x1b33
bfc0c73c:	35089b35 	ori	t0,t0,0x9b35
bfc0c740:	3c0998c1 	lui	t1,0x98c1
bfc0c744:	35294bc0 	ori	t1,t1,0x4bc0
bfc0c748:	240a0001 	li	t2,1
bfc0c74c:	240b0001 	li	t3,1
bfc0c750:	01600011 	mthi	t3
bfc0c754:	01400013 	mtlo	t2
bfc0c758:	71090000 	madd	t0,t1
bfc0c75c:	00006010 	mfhi	t4
bfc0c760:	00006812 	mflo	t5
bfc0c764:	3c0ef507 	lui	t6,0xf507
bfc0c768:	35ce92e8 	ori	t6,t6,0x92e8
bfc0c76c:	158e0a90 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c770:	00000000 	nop
bfc0c774:	3c0e0021 	lui	t6,0x21
bfc0c778:	35ceeec1 	ori	t6,t6,0xeec1
bfc0c77c:	15ae0a8c 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c780:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:40
bfc0c784:	3c08c861 	lui	t0,0xc861
bfc0c788:	35088b98 	ori	t0,t0,0x8b98
bfc0c78c:	3c096945 	lui	t1,0x6945
bfc0c790:	35292a40 	ori	t1,t1,0x2a40
bfc0c794:	240a0001 	li	t2,1
bfc0c798:	240b0001 	li	t3,1
bfc0c79c:	01600011 	mthi	t3
bfc0c7a0:	01400013 	mtlo	t2
bfc0c7a4:	71090000 	madd	t0,t1
bfc0c7a8:	00006010 	mfhi	t4
bfc0c7ac:	00006812 	mflo	t5
bfc0c7b0:	3c0ee920 	lui	t6,0xe920
bfc0c7b4:	35cefb5f 	ori	t6,t6,0xfb5f
bfc0c7b8:	158e0a7d 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c7bc:	00000000 	nop
bfc0c7c0:	3c0e1141 	lui	t6,0x1141
bfc0c7c4:	35ced601 	ori	t6,t6,0xd601
bfc0c7c8:	15ae0a79 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c7cc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:41
bfc0c7d0:	3c082aea 	lui	t0,0x2aea
bfc0c7d4:	35080580 	ori	t0,t0,0x580
bfc0c7d8:	3c097f50 	lui	t1,0x7f50
bfc0c7dc:	3529d684 	ori	t1,t1,0xd684
bfc0c7e0:	240a0001 	li	t2,1
bfc0c7e4:	240b0001 	li	t3,1
bfc0c7e8:	01600011 	mthi	t3
bfc0c7ec:	01400013 	mtlo	t2
bfc0c7f0:	71090000 	madd	t0,t1
bfc0c7f4:	00006010 	mfhi	t4
bfc0c7f8:	00006812 	mflo	t5
bfc0c7fc:	3c0e1557 	lui	t6,0x1557
bfc0c800:	35cea5d2 	ori	t6,t6,0xa5d2
bfc0c804:	158e0a6a 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c808:	00000000 	nop
bfc0c80c:	3c0ef943 	lui	t6,0xf943
bfc0c810:	35ced601 	ori	t6,t6,0xd601
bfc0c814:	15ae0a66 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c818:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:42
bfc0c81c:	3c085c69 	lui	t0,0x5c69
bfc0c820:	3508f5ec 	ori	t0,t0,0xf5ec
bfc0c824:	3c099ee2 	lui	t1,0x9ee2
bfc0c828:	35293bd2 	ori	t1,t1,0x3bd2
bfc0c82c:	240a0001 	li	t2,1
bfc0c830:	240b0001 	li	t3,1
bfc0c834:	01600011 	mthi	t3
bfc0c838:	01400013 	mtlo	t2
bfc0c83c:	71090000 	madd	t0,t1
bfc0c840:	00006010 	mfhi	t4
bfc0c844:	00006812 	mflo	t5
bfc0c848:	3c0edcf1 	lui	t6,0xdcf1
bfc0c84c:	35ce1aff 	ori	t6,t6,0x1aff
bfc0c850:	158e0a57 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c854:	00000000 	nop
bfc0c858:	3c0efcf1 	lui	t6,0xfcf1
bfc0c85c:	35ce1f99 	ori	t6,t6,0x1f99
bfc0c860:	15ae0a53 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c864:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:43
bfc0c868:	3c08b7b6 	lui	t0,0xb7b6
bfc0c86c:	35086b40 	ori	t0,t0,0x6b40
bfc0c870:	3c098b50 	lui	t1,0x8b50
bfc0c874:	3529c179 	ori	t1,t1,0xc179
bfc0c878:	240a0001 	li	t2,1
bfc0c87c:	240b0001 	li	t3,1
bfc0c880:	01600011 	mthi	t3
bfc0c884:	01400013 	mtlo	t2
bfc0c888:	71090000 	madd	t0,t1
bfc0c88c:	00006010 	mfhi	t4
bfc0c890:	00006812 	mflo	t5
bfc0c894:	3c0e20f2 	lui	t6,0x20f2
bfc0c898:	35ced35c 	ori	t6,t6,0xd35c
bfc0c89c:	158e0a44 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c8a0:	00000000 	nop
bfc0c8a4:	3c0ea013 	lui	t6,0xa013
bfc0c8a8:	35cef141 	ori	t6,t6,0xf141
bfc0c8ac:	15ae0a40 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c8b0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:44
bfc0c8b4:	3c08514e 	lui	t0,0x514e
bfc0c8b8:	350833b6 	ori	t0,t0,0x33b6
bfc0c8bc:	3c097dc3 	lui	t1,0x7dc3
bfc0c8c0:	35299988 	ori	t1,t1,0x9988
bfc0c8c4:	240a0001 	li	t2,1
bfc0c8c8:	240b0001 	li	t3,1
bfc0c8cc:	01600011 	mthi	t3
bfc0c8d0:	01400013 	mtlo	t2
bfc0c8d4:	71090000 	madd	t0,t1
bfc0c8d8:	00006010 	mfhi	t4
bfc0c8dc:	00006812 	mflo	t5
bfc0c8e0:	3c0e27f1 	lui	t6,0x27f1
bfc0c8e4:	35ce4e95 	ori	t6,t6,0x4e95
bfc0c8e8:	158e0a31 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c8ec:	00000000 	nop
bfc0c8f0:	3c0e3015 	lui	t6,0x3015
bfc0c8f4:	35ce3eb1 	ori	t6,t6,0x3eb1
bfc0c8f8:	15ae0a2d 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c8fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:45
bfc0c900:	3c0827c2 	lui	t0,0x27c2
bfc0c904:	35084e12 	ori	t0,t0,0x4e12
bfc0c908:	3c09bc0e 	lui	t1,0xbc0e
bfc0c90c:	35296874 	ori	t1,t1,0x6874
bfc0c910:	240a0001 	li	t2,1
bfc0c914:	240b0001 	li	t3,1
bfc0c918:	01600011 	mthi	t3
bfc0c91c:	01400013 	mtlo	t2
bfc0c920:	71090000 	madd	t0,t1
bfc0c924:	00006010 	mfhi	t4
bfc0c928:	00006812 	mflo	t5
bfc0c92c:	3c0ef572 	lui	t6,0xf572
bfc0c930:	35cea01d 	ori	t6,t6,0xa01d
bfc0c934:	158e0a1e 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c938:	00000000 	nop
bfc0c93c:	3c0e70be 	lui	t6,0x70be
bfc0c940:	35ceb029 	ori	t6,t6,0xb029
bfc0c944:	15ae0a1a 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c948:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:46
bfc0c94c:	3c08e7e6 	lui	t0,0xe7e6
bfc0c950:	3508eddc 	ori	t0,t0,0xeddc
bfc0c954:	3c0913a7 	lui	t1,0x13a7
bfc0c958:	3529cad0 	ori	t1,t1,0xcad0
bfc0c95c:	240a0001 	li	t2,1
bfc0c960:	240b0001 	li	t3,1
bfc0c964:	01600011 	mthi	t3
bfc0c968:	01400013 	mtlo	t2
bfc0c96c:	71090000 	madd	t0,t1
bfc0c970:	00006010 	mfhi	t4
bfc0c974:	00006812 	mflo	t5
bfc0c978:	3c0efe26 	lui	t6,0xfe26
bfc0c97c:	35ce5836 	ori	t6,t6,0x5836
bfc0c980:	158e0a0b 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c984:	00000000 	nop
bfc0c988:	3c0e21d4 	lui	t6,0x21d4
bfc0c98c:	35cedac1 	ori	t6,t6,0xdac1
bfc0c990:	15ae0a07 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c994:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:47
bfc0c998:	3c08a851 	lui	t0,0xa851
bfc0c99c:	350811c0 	ori	t0,t0,0x11c0
bfc0c9a0:	3c09a29d 	lui	t1,0xa29d
bfc0c9a4:	352950f0 	ori	t1,t1,0x50f0
bfc0c9a8:	240a0001 	li	t2,1
bfc0c9ac:	240b0001 	li	t3,1
bfc0c9b0:	01600011 	mthi	t3
bfc0c9b4:	01400013 	mtlo	t2
bfc0c9b8:	71090000 	madd	t0,t1
bfc0c9bc:	00006010 	mfhi	t4
bfc0c9c0:	00006812 	mflo	t5
bfc0c9c4:	3c0e1ffc 	lui	t6,0x1ffc
bfc0c9c8:	35ce597b 	ori	t6,t6,0x597b
bfc0c9cc:	158e09f8 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0c9d0:	00000000 	nop
bfc0c9d4:	3c0e844c 	lui	t6,0x844c
bfc0c9d8:	35cea401 	ori	t6,t6,0xa401
bfc0c9dc:	15ae09f4 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0c9e0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:48
bfc0c9e4:	3c0873d5 	lui	t0,0x73d5
bfc0c9e8:	35082eb8 	ori	t0,t0,0x2eb8
bfc0c9ec:	3c09142b 	lui	t1,0x142b
bfc0c9f0:	3529a310 	ori	t1,t1,0xa310
bfc0c9f4:	240a0001 	li	t2,1
bfc0c9f8:	240b0001 	li	t3,1
bfc0c9fc:	01600011 	mthi	t3
bfc0ca00:	01400013 	mtlo	t2
bfc0ca04:	71090000 	madd	t0,t1
bfc0ca08:	00006010 	mfhi	t4
bfc0ca0c:	00006812 	mflo	t5
bfc0ca10:	3c0e0920 	lui	t6,0x920
bfc0ca14:	35ce663e 	ori	t6,t6,0x663e
bfc0ca18:	158e09e5 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ca1c:	00000000 	nop
bfc0ca20:	3c0e32fa 	lui	t6,0x32fa
bfc0ca24:	35ce1381 	ori	t6,t6,0x1381
bfc0ca28:	15ae09e1 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ca2c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:49
bfc0ca30:	3c084115 	lui	t0,0x4115
bfc0ca34:	35086884 	ori	t0,t0,0x6884
bfc0ca38:	3c09794c 	lui	t1,0x794c
bfc0ca3c:	35295fb2 	ori	t1,t1,0x5fb2
bfc0ca40:	240a0001 	li	t2,1
bfc0ca44:	240b0001 	li	t3,1
bfc0ca48:	01600011 	mthi	t3
bfc0ca4c:	01400013 	mtlo	t2
bfc0ca50:	71090000 	madd	t0,t1
bfc0ca54:	00006010 	mfhi	t4
bfc0ca58:	00006812 	mflo	t5
bfc0ca5c:	3c0e1ed6 	lui	t6,0x1ed6
bfc0ca60:	35ce8916 	ori	t6,t6,0x8916
bfc0ca64:	158e09d2 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ca68:	00000000 	nop
bfc0ca6c:	3c0e9ddb 	lui	t6,0x9ddb
bfc0ca70:	35cea7c9 	ori	t6,t6,0xa7c9
bfc0ca74:	15ae09ce 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ca78:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:50
bfc0ca7c:	3c08a877 	lui	t0,0xa877
bfc0ca80:	35084820 	ori	t0,t0,0x4820
bfc0ca84:	3c09b2cf 	lui	t1,0xb2cf
bfc0ca88:	35290480 	ori	t1,t1,0x480
bfc0ca8c:	240a0001 	li	t2,1
bfc0ca90:	240b0001 	li	t3,1
bfc0ca94:	01600011 	mthi	t3
bfc0ca98:	01400013 	mtlo	t2
bfc0ca9c:	71090000 	madd	t0,t1
bfc0caa0:	00006010 	mfhi	t4
bfc0caa4:	00006812 	mflo	t5
bfc0caa8:	3c0e1a64 	lui	t6,0x1a64
bfc0caac:	35cedef0 	ori	t6,t6,0xdef0
bfc0cab0:	158e09bf 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cab4:	00000000 	nop
bfc0cab8:	3c0eaaa4 	lui	t6,0xaaa4
bfc0cabc:	35ce9001 	ori	t6,t6,0x9001
bfc0cac0:	15ae09bb 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cac4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:51
bfc0cac8:	3c08b69b 	lui	t0,0xb69b
bfc0cacc:	3508cb80 	ori	t0,t0,0xcb80
bfc0cad0:	3c0988d5 	lui	t1,0x88d5
bfc0cad4:	35295520 	ori	t1,t1,0x5520
bfc0cad8:	240a0001 	li	t2,1
bfc0cadc:	240b0001 	li	t3,1
bfc0cae0:	01600011 	mthi	t3
bfc0cae4:	01400013 	mtlo	t2
bfc0cae8:	71090000 	madd	t0,t1
bfc0caec:	00006010 	mfhi	t4
bfc0caf0:	00006812 	mflo	t5
bfc0caf4:	3c0e2229 	lui	t6,0x2229
bfc0caf8:	35cecfd5 	ori	t6,t6,0xcfd5
bfc0cafc:	158e09ac 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cb00:	00000000 	nop
bfc0cb04:	3c0edf8a 	lui	t6,0xdf8a
bfc0cb08:	35cef001 	ori	t6,t6,0xf001
bfc0cb0c:	15ae09a8 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cb10:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:52
bfc0cb14:	3c08e841 	lui	t0,0xe841
bfc0cb18:	350875d8 	ori	t0,t0,0x75d8
bfc0cb1c:	3c099404 	lui	t1,0x9404
bfc0cb20:	35298f1c 	ori	t1,t1,0x8f1c
bfc0cb24:	240a0001 	li	t2,1
bfc0cb28:	240b0001 	li	t3,1
bfc0cb2c:	01600011 	mthi	t3
bfc0cb30:	01400013 	mtlo	t2
bfc0cb34:	71090000 	madd	t0,t1
bfc0cb38:	00006010 	mfhi	t4
bfc0cb3c:	00006812 	mflo	t5
bfc0cb40:	3c0e0a03 	lui	t6,0xa03
bfc0cb44:	35cef609 	ori	t6,t6,0xf609
bfc0cb48:	158e0999 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cb4c:	00000000 	nop
bfc0cb50:	3c0eaf5c 	lui	t6,0xaf5c
bfc0cb54:	35ce8ba1 	ori	t6,t6,0x8ba1
bfc0cb58:	15ae0995 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cb5c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:53
bfc0cb60:	3c086fde 	lui	t0,0x6fde
bfc0cb64:	3508dbd8 	ori	t0,t0,0xdbd8
bfc0cb68:	3c0967dd 	lui	t1,0x67dd
bfc0cb6c:	35297f60 	ori	t1,t1,0x7f60
bfc0cb70:	240a0001 	li	t2,1
bfc0cb74:	240b0001 	li	t3,1
bfc0cb78:	01600011 	mthi	t3
bfc0cb7c:	01400013 	mtlo	t2
bfc0cb80:	71090000 	madd	t0,t1
bfc0cb84:	00006010 	mfhi	t4
bfc0cb88:	00006812 	mflo	t5
bfc0cb8c:	3c0e2d63 	lui	t6,0x2d63
bfc0cb90:	35ce7582 	ori	t6,t6,0x7582
bfc0cb94:	158e0986 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cb98:	00000000 	nop
bfc0cb9c:	3c0e341a 	lui	t6,0x341a
bfc0cba0:	35ce9901 	ori	t6,t6,0x9901
bfc0cba4:	15ae0982 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cba8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:54
bfc0cbac:	3c08a231 	lui	t0,0xa231
bfc0cbb0:	35089526 	ori	t0,t0,0x9526
bfc0cbb4:	3c09d5f8 	lui	t1,0xd5f8
bfc0cbb8:	35298700 	ori	t1,t1,0x8700
bfc0cbbc:	240a0001 	li	t2,1
bfc0cbc0:	240b0001 	li	t3,1
bfc0cbc4:	01600011 	mthi	t3
bfc0cbc8:	01400013 	mtlo	t2
bfc0cbcc:	71090000 	madd	t0,t1
bfc0cbd0:	00006010 	mfhi	t4
bfc0cbd4:	00006812 	mflo	t5
bfc0cbd8:	3c0e0f66 	lui	t6,0xf66
bfc0cbdc:	35ce9a84 	ori	t6,t6,0x9a84
bfc0cbe0:	158e0973 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cbe4:	00000000 	nop
bfc0cbe8:	3c0e4077 	lui	t6,0x4077
bfc0cbec:	35ce0a01 	ori	t6,t6,0xa01
bfc0cbf0:	15ae096f 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cbf4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:55
bfc0cbf8:	3c0861f8 	lui	t0,0x61f8
bfc0cbfc:	3508b9bc 	ori	t0,t0,0xb9bc
bfc0cc00:	3c09146e 	lui	t1,0x146e
bfc0cc04:	35296d38 	ori	t1,t1,0x6d38
bfc0cc08:	240a0001 	li	t2,1
bfc0cc0c:	240b0001 	li	t3,1
bfc0cc10:	01600011 	mthi	t3
bfc0cc14:	01400013 	mtlo	t2
bfc0cc18:	71090000 	madd	t0,t1
bfc0cc1c:	00006010 	mfhi	t4
bfc0cc20:	00006812 	mflo	t5
bfc0cc24:	3c0e07d1 	lui	t6,0x7d1
bfc0cc28:	35ceb12f 	ori	t6,t6,0xb12f
bfc0cc2c:	158e0960 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cc30:	00000000 	nop
bfc0cc34:	3c0ed445 	lui	t6,0xd445
bfc0cc38:	35cead21 	ori	t6,t6,0xad21
bfc0cc3c:	15ae095c 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cc40:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:56
bfc0cc44:	3c08b900 	lui	t0,0xb900
bfc0cc48:	35082828 	ori	t0,t0,0x2828
bfc0cc4c:	3c090310 	lui	t1,0x310
bfc0cc50:	3529a1b9 	ori	t1,t1,0xa1b9
bfc0cc54:	240a0001 	li	t2,1
bfc0cc58:	240b0001 	li	t3,1
bfc0cc5c:	01600011 	mthi	t3
bfc0cc60:	01400013 	mtlo	t2
bfc0cc64:	71090000 	madd	t0,t1
bfc0cc68:	00006010 	mfhi	t4
bfc0cc6c:	00006812 	mflo	t5
bfc0cc70:	3c0eff26 	lui	t6,0xff26
bfc0cc74:	35ce63a1 	ori	t6,t6,0x63a1
bfc0cc78:	158e094d 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cc7c:	00000000 	nop
bfc0cc80:	3c0ec4de 	lui	t6,0xc4de
bfc0cc84:	35ce2ce9 	ori	t6,t6,0x2ce9
bfc0cc88:	15ae0949 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cc8c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:57
bfc0cc90:	3c08b441 	lui	t0,0xb441
bfc0cc94:	35088f47 	ori	t0,t0,0x8f47
bfc0cc98:	3c09943f 	lui	t1,0x943f
bfc0cc9c:	3529129c 	ori	t1,t1,0x129c
bfc0cca0:	240a0001 	li	t2,1
bfc0cca4:	240b0001 	li	t3,1
bfc0cca8:	01600011 	mthi	t3
bfc0ccac:	01400013 	mtlo	t2
bfc0ccb0:	71090000 	madd	t0,t1
bfc0ccb4:	00006010 	mfhi	t4
bfc0ccb8:	00006812 	mflo	t5
bfc0ccbc:	3c0e1fe1 	lui	t6,0x1fe1
bfc0ccc0:	35ceae2f 	ori	t6,t6,0xae2f
bfc0ccc4:	158e093a 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ccc8:	00000000 	nop
bfc0cccc:	3c0ec27f 	lui	t6,0xc27f
bfc0ccd0:	35ce4d45 	ori	t6,t6,0x4d45
bfc0ccd4:	15ae0936 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ccd8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:58
bfc0ccdc:	3c08d701 	lui	t0,0xd701
bfc0cce0:	35081f8c 	ori	t0,t0,0x1f8c
bfc0cce4:	3c0970d8 	lui	t1,0x70d8
bfc0cce8:	3529ea80 	ori	t1,t1,0xea80
bfc0ccec:	240a0001 	li	t2,1
bfc0ccf0:	240b0001 	li	t3,1
bfc0ccf4:	01600011 	mthi	t3
bfc0ccf8:	01400013 	mtlo	t2
bfc0ccfc:	71090000 	madd	t0,t1
bfc0cd00:	00006010 	mfhi	t4
bfc0cd04:	00006812 	mflo	t5
bfc0cd08:	3c0eeded 	lui	t6,0xeded
bfc0cd0c:	35cec133 	ori	t6,t6,0xc133
bfc0cd10:	158e0927 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cd14:	00000000 	nop
bfc0cd18:	3c0e6585 	lui	t6,0x6585
bfc0cd1c:	35cebe01 	ori	t6,t6,0xbe01
bfc0cd20:	15ae0923 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cd24:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:59
bfc0cd28:	3c08058b 	lui	t0,0x58b
bfc0cd2c:	35089998 	ori	t0,t0,0x9998
bfc0cd30:	3c095539 	lui	t1,0x5539
bfc0cd34:	35295538 	ori	t1,t1,0x5538
bfc0cd38:	240a0001 	li	t2,1
bfc0cd3c:	240b0001 	li	t3,1
bfc0cd40:	01600011 	mthi	t3
bfc0cd44:	01400013 	mtlo	t2
bfc0cd48:	71090000 	madd	t0,t1
bfc0cd4c:	00006010 	mfhi	t4
bfc0cd50:	00006812 	mflo	t5
bfc0cd54:	3c0e01d8 	lui	t6,0x1d8
bfc0cd58:	35ce97ee 	ori	t6,t6,0x97ee
bfc0cd5c:	158e0914 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cd60:	00000000 	nop
bfc0cd64:	3c0e3b61 	lui	t6,0x3b61
bfc0cd68:	35ce1141 	ori	t6,t6,0x1141
bfc0cd6c:	15ae0910 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cd70:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:60
bfc0cd74:	3c08c13b 	lui	t0,0xc13b
bfc0cd78:	35087fc0 	ori	t0,t0,0x7fc0
bfc0cd7c:	3c09da19 	lui	t1,0xda19
bfc0cd80:	35292fbb 	ori	t1,t1,0x2fbb
bfc0cd84:	240a0001 	li	t2,1
bfc0cd88:	240b0001 	li	t3,1
bfc0cd8c:	01600011 	mthi	t3
bfc0cd90:	01400013 	mtlo	t2
bfc0cd94:	71090000 	madd	t0,t1
bfc0cd98:	00006010 	mfhi	t4
bfc0cd9c:	00006812 	mflo	t5
bfc0cda0:	3c0e094a 	lui	t6,0x94a
bfc0cda4:	35cefe26 	ori	t6,t6,0xfe26
bfc0cda8:	158e0901 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cdac:	00000000 	nop
bfc0cdb0:	3c0e0caa 	lui	t6,0xcaa
bfc0cdb4:	35ce9141 	ori	t6,t6,0x9141
bfc0cdb8:	15ae08fd 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cdbc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:61
bfc0cdc0:	3c08776d 	lui	t0,0x776d
bfc0cdc4:	350824b0 	ori	t0,t0,0x24b0
bfc0cdc8:	3c0966f0 	lui	t1,0x66f0
bfc0cdcc:	3529a9a4 	ori	t1,t1,0xa9a4
bfc0cdd0:	240a0001 	li	t2,1
bfc0cdd4:	240b0001 	li	t3,1
bfc0cdd8:	01600011 	mthi	t3
bfc0cddc:	01400013 	mtlo	t2
bfc0cde0:	71090000 	madd	t0,t1
bfc0cde4:	00006010 	mfhi	t4
bfc0cde8:	00006812 	mflo	t5
bfc0cdec:	3c0e3005 	lui	t6,0x3005
bfc0cdf0:	35cec215 	ori	t6,t6,0xc215
bfc0cdf4:	158e08ee 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cdf8:	00000000 	nop
bfc0cdfc:	3c0e1423 	lui	t6,0x1423
bfc0ce00:	35ceb0c1 	ori	t6,t6,0xb0c1
bfc0ce04:	15ae08ea 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ce08:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:62
bfc0ce0c:	3c086c6a 	lui	t0,0x6c6a
bfc0ce10:	3508e338 	ori	t0,t0,0xe338
bfc0ce14:	3c095c4a 	lui	t1,0x5c4a
bfc0ce18:	3529bc80 	ori	t1,t1,0xbc80
bfc0ce1c:	240a0001 	li	t2,1
bfc0ce20:	240b0001 	li	t3,1
bfc0ce24:	01600011 	mthi	t3
bfc0ce28:	01400013 	mtlo	t2
bfc0ce2c:	71090000 	madd	t0,t1
bfc0ce30:	00006010 	mfhi	t4
bfc0ce34:	00006812 	mflo	t5
bfc0ce38:	3c0e2716 	lui	t6,0x2716
bfc0ce3c:	35ce1063 	ori	t6,t6,0x1063
bfc0ce40:	158e08db 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ce44:	00000000 	nop
bfc0ce48:	3c0e827e 	lui	t6,0x827e
bfc0ce4c:	35cebc01 	ori	t6,t6,0xbc01
bfc0ce50:	15ae08d7 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ce54:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:63
bfc0ce58:	3c089dc0 	lui	t0,0x9dc0
bfc0ce5c:	350890e0 	ori	t0,t0,0x90e0
bfc0ce60:	3c09b632 	lui	t1,0xb632
bfc0ce64:	35294980 	ori	t1,t1,0x4980
bfc0ce68:	240a0001 	li	t2,1
bfc0ce6c:	240b0001 	li	t3,1
bfc0ce70:	01600011 	mthi	t3
bfc0ce74:	01400013 	mtlo	t2
bfc0ce78:	71090000 	madd	t0,t1
bfc0ce7c:	00006010 	mfhi	t4
bfc0ce80:	00006812 	mflo	t5
bfc0ce84:	3c0e1c53 	lui	t6,0x1c53
bfc0ce88:	35ce0987 	ori	t6,t6,0x987
bfc0ce8c:	158e08c8 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ce90:	00000000 	nop
bfc0ce94:	3c0e5558 	lui	t6,0x5558
bfc0ce98:	35ce5001 	ori	t6,t6,0x5001
bfc0ce9c:	15ae08c4 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cea0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:64
bfc0cea4:	3c0886d6 	lui	t0,0x86d6
bfc0cea8:	350809de 	ori	t0,t0,0x9de
bfc0ceac:	3c09cd4b 	lui	t1,0xcd4b
bfc0ceb0:	3529cb2e 	ori	t1,t1,0xcb2e
bfc0ceb4:	240a0001 	li	t2,1
bfc0ceb8:	240b0001 	li	t3,1
bfc0cebc:	01600011 	mthi	t3
bfc0cec0:	01400013 	mtlo	t2
bfc0cec4:	71090000 	madd	t0,t1
bfc0cec8:	00006010 	mfhi	t4
bfc0cecc:	00006812 	mflo	t5
bfc0ced0:	3c0e17ff 	lui	t6,0x17ff
bfc0ced4:	35ce7c94 	ori	t6,t6,0x7c94
bfc0ced8:	158e08b5 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cedc:	00000000 	nop
bfc0cee0:	3c0e9e52 	lui	t6,0x9e52
bfc0cee4:	35cecfe5 	ori	t6,t6,0xcfe5
bfc0cee8:	15ae08b1 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ceec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:65
bfc0cef0:	3c081400 	lui	t0,0x1400
bfc0cef4:	3508c7dc 	ori	t0,t0,0xc7dc
bfc0cef8:	3c09466a 	lui	t1,0x466a
bfc0cefc:	35296d5e 	ori	t1,t1,0x6d5e
bfc0cf00:	240a0001 	li	t2,1
bfc0cf04:	240b0001 	li	t3,1
bfc0cf08:	01600011 	mthi	t3
bfc0cf0c:	01400013 	mtlo	t2
bfc0cf10:	71090000 	madd	t0,t1
bfc0cf14:	00006010 	mfhi	t4
bfc0cf18:	00006812 	mflo	t5
bfc0cf1c:	3c0e0580 	lui	t6,0x580
bfc0cf20:	35ce8785 	ori	t6,t6,0x8785
bfc0cf24:	158e08a2 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cf28:	00000000 	nop
bfc0cf2c:	3c0e967a 	lui	t6,0x967a
bfc0cf30:	35ce0ec9 	ori	t6,t6,0xec9
bfc0cf34:	15ae089e 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cf38:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:66
bfc0cf3c:	3c08a2d8 	lui	t0,0xa2d8
bfc0cf40:	35088860 	ori	t0,t0,0x8860
bfc0cf44:	3c092642 	lui	t1,0x2642
bfc0cf48:	35293686 	ori	t1,t1,0x3686
bfc0cf4c:	240a0001 	li	t2,1
bfc0cf50:	240b0001 	li	t3,1
bfc0cf54:	01600011 	mthi	t3
bfc0cf58:	01400013 	mtlo	t2
bfc0cf5c:	71090000 	madd	t0,t1
bfc0cf60:	00006010 	mfhi	t4
bfc0cf64:	00006812 	mflo	t5
bfc0cf68:	3c0ef214 	lui	t6,0xf214
bfc0cf6c:	35ce0c3b 	ori	t6,t6,0xc3b
bfc0cf70:	158e088f 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cf74:	00000000 	nop
bfc0cf78:	3c0e52db 	lui	t6,0x52db
bfc0cf7c:	35cea241 	ori	t6,t6,0xa241
bfc0cf80:	15ae088b 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cf84:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:67
bfc0cf88:	3c086770 	lui	t0,0x6770
bfc0cf8c:	3508770a 	ori	t0,t0,0x770a
bfc0cf90:	3c09812c 	lui	t1,0x812c
bfc0cf94:	3529be10 	ori	t1,t1,0xbe10
bfc0cf98:	240a0001 	li	t2,1
bfc0cf9c:	240b0001 	li	t3,1
bfc0cfa0:	01600011 	mthi	t3
bfc0cfa4:	01400013 	mtlo	t2
bfc0cfa8:	71090000 	madd	t0,t1
bfc0cfac:	00006010 	mfhi	t4
bfc0cfb0:	00006812 	mflo	t5
bfc0cfb4:	3c0eccc1 	lui	t6,0xccc1
bfc0cfb8:	35ce4913 	ori	t6,t6,0x4913
bfc0cfbc:	158e087c 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0cfc0:	00000000 	nop
bfc0cfc4:	3c0e6f18 	lui	t6,0x6f18
bfc0cfc8:	35cedca1 	ori	t6,t6,0xdca1
bfc0cfcc:	15ae0878 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0cfd0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:68
bfc0cfd4:	3c089562 	lui	t0,0x9562
bfc0cfd8:	35087048 	ori	t0,t0,0x7048
bfc0cfdc:	3c09c1ba 	lui	t1,0xc1ba
bfc0cfe0:	3529e8ca 	ori	t1,t1,0xe8ca
bfc0cfe4:	240a0001 	li	t2,1
bfc0cfe8:	240b0001 	li	t3,1
bfc0cfec:	01600011 	mthi	t3
bfc0cff0:	01400013 	mtlo	t2
bfc0cff4:	71090000 	madd	t0,t1
bfc0cff8:	00006010 	mfhi	t4
bfc0cffc:	00006812 	mflo	t5
bfc0d000:	3c0e19ee 	lui	t6,0x19ee
bfc0d004:	35ceeef1 	ori	t6,t6,0xeef1
bfc0d008:	158e0869 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d00c:	00000000 	nop
bfc0d010:	3c0ef1bd 	lui	t6,0xf1bd
bfc0d014:	35ced8d1 	ori	t6,t6,0xd8d1
bfc0d018:	15ae0865 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d01c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:69
bfc0d020:	3c081dba 	lui	t0,0x1dba
bfc0d024:	3508dda0 	ori	t0,t0,0xdda0
bfc0d028:	3c095d2b 	lui	t1,0x5d2b
bfc0d02c:	35290f50 	ori	t1,t1,0xf50
bfc0d030:	240a0001 	li	t2,1
bfc0d034:	240b0001 	li	t3,1
bfc0d038:	01600011 	mthi	t3
bfc0d03c:	01400013 	mtlo	t2
bfc0d040:	71090000 	madd	t0,t1
bfc0d044:	00006010 	mfhi	t4
bfc0d048:	00006812 	mflo	t5
bfc0d04c:	3c0e0ad1 	lui	t6,0xad1
bfc0d050:	35cee2ae 	ori	t6,t6,0xe2ae
bfc0d054:	158e0856 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d058:	00000000 	nop
bfc0d05c:	3c0e9741 	lui	t6,0x9741
bfc0d060:	35cea201 	ori	t6,t6,0xa201
bfc0d064:	15ae0852 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d068:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:70
bfc0d06c:	3c08c7cf 	lui	t0,0xc7cf
bfc0d070:	35084f96 	ori	t0,t0,0x4f96
bfc0d074:	3c097dd3 	lui	t1,0x7dd3
bfc0d078:	35293820 	ori	t1,t1,0x3820
bfc0d07c:	240a0001 	li	t2,1
bfc0d080:	240b0001 	li	t3,1
bfc0d084:	01600011 	mthi	t3
bfc0d088:	01400013 	mtlo	t2
bfc0d08c:	71090000 	madd	t0,t1
bfc0d090:	00006010 	mfhi	t4
bfc0d094:	00006812 	mflo	t5
bfc0d098:	3c0ee461 	lui	t6,0xe461
bfc0d09c:	35cedd6a 	ori	t6,t6,0xdd6a
bfc0d0a0:	158e0843 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d0a4:	00000000 	nop
bfc0d0a8:	3c0e29f4 	lui	t6,0x29f4
bfc0d0ac:	35cec2c1 	ori	t6,t6,0xc2c1
bfc0d0b0:	15ae083f 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d0b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:71
bfc0d0b8:	3c08a1d8 	lui	t0,0xa1d8
bfc0d0bc:	3508f960 	ori	t0,t0,0xf960
bfc0d0c0:	3c09b83e 	lui	t1,0xb83e
bfc0d0c4:	35293183 	ori	t1,t1,0x3183
bfc0d0c8:	240a0001 	li	t2,1
bfc0d0cc:	240b0001 	li	t3,1
bfc0d0d0:	01600011 	mthi	t3
bfc0d0d4:	01400013 	mtlo	t2
bfc0d0d8:	71090000 	madd	t0,t1
bfc0d0dc:	00006010 	mfhi	t4
bfc0d0e0:	00006812 	mflo	t5
bfc0d0e4:	3c0e1a64 	lui	t6,0x1a64
bfc0d0e8:	35ce1a34 	ori	t6,t6,0x1a34
bfc0d0ec:	158e0830 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d0f0:	00000000 	nop
bfc0d0f4:	3c0ebf02 	lui	t6,0xbf02
bfc0d0f8:	35cefc21 	ori	t6,t6,0xfc21
bfc0d0fc:	15ae082c 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d100:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:72
bfc0d104:	3c08cc2c 	lui	t0,0xcc2c
bfc0d108:	3508955e 	ori	t0,t0,0x955e
bfc0d10c:	3c0963c2 	lui	t1,0x63c2
bfc0d110:	3529877e 	ori	t1,t1,0x877e
bfc0d114:	240a0001 	li	t2,1
bfc0d118:	240b0001 	li	t3,1
bfc0d11c:	01600011 	mthi	t3
bfc0d120:	01400013 	mtlo	t2
bfc0d124:	71090000 	madd	t0,t1
bfc0d128:	00006010 	mfhi	t4
bfc0d12c:	00006812 	mflo	t5
bfc0d130:	3c0eebcd 	lui	t6,0xebcd
bfc0d134:	35cedc1f 	ori	t6,t6,0xdc1f
bfc0d138:	158e081d 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d13c:	00000000 	nop
bfc0d140:	3c0e8bf2 	lui	t6,0x8bf2
bfc0d144:	35ce1645 	ori	t6,t6,0x1645
bfc0d148:	15ae0819 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d14c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:73
bfc0d150:	3c08d2d4 	lui	t0,0xd2d4
bfc0d154:	35084530 	ori	t0,t0,0x4530
bfc0d158:	3c09602b 	lui	t1,0x602b
bfc0d15c:	352939e6 	ori	t1,t1,0x39e6
bfc0d160:	240a0001 	li	t2,1
bfc0d164:	240b0001 	li	t3,1
bfc0d168:	01600011 	mthi	t3
bfc0d16c:	01400013 	mtlo	t2
bfc0d170:	71090000 	madd	t0,t1
bfc0d174:	00006010 	mfhi	t4
bfc0d178:	00006812 	mflo	t5
bfc0d17c:	3c0eef07 	lui	t6,0xef07
bfc0d180:	35cef963 	ori	t6,t6,0xf963
bfc0d184:	158e080a 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d188:	00000000 	nop
bfc0d18c:	3c0e4d2d 	lui	t6,0x4d2d
bfc0d190:	35ced921 	ori	t6,t6,0xd921
bfc0d194:	15ae0806 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d198:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:74
bfc0d19c:	3c08886c 	lui	t0,0x886c
bfc0d1a0:	35083ad7 	ori	t0,t0,0x3ad7
bfc0d1a4:	3c09e011 	lui	t1,0xe011
bfc0d1a8:	3529a4c0 	ori	t1,t1,0xa4c0
bfc0d1ac:	240a0001 	li	t2,1
bfc0d1b0:	240b0001 	li	t3,1
bfc0d1b4:	01600011 	mthi	t3
bfc0d1b8:	01400013 	mtlo	t2
bfc0d1bc:	71090000 	madd	t0,t1
bfc0d1c0:	00006010 	mfhi	t4
bfc0d1c4:	00006812 	mflo	t5
bfc0d1c8:	3c0e0eea 	lui	t6,0xeea
bfc0d1cc:	35ce3ae1 	ori	t6,t6,0x3ae1
bfc0d1d0:	158e07f7 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d1d4:	00000000 	nop
bfc0d1d8:	3c0eaf24 	lui	t6,0xaf24
bfc0d1dc:	35cedd41 	ori	t6,t6,0xdd41
bfc0d1e0:	15ae07f3 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d1e4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:75
bfc0d1e8:	3c080c45 	lui	t0,0xc45
bfc0d1ec:	3508d0c8 	ori	t0,t0,0xd0c8
bfc0d1f0:	3c09830e 	lui	t1,0x830e
bfc0d1f4:	352902fb 	ori	t1,t1,0x2fb
bfc0d1f8:	240a0001 	li	t2,1
bfc0d1fc:	240b0001 	li	t3,1
bfc0d200:	01600011 	mthi	t3
bfc0d204:	01400013 	mtlo	t2
bfc0d208:	71090000 	madd	t0,t1
bfc0d20c:	00006010 	mfhi	t4
bfc0d210:	00006812 	mflo	t5
bfc0d214:	3c0efa02 	lui	t6,0xfa02
bfc0d218:	35ce9505 	ori	t6,t6,0x9505
bfc0d21c:	158e07e4 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d220:	00000000 	nop
bfc0d224:	3c0e5705 	lui	t6,0x5705
bfc0d228:	35ce4419 	ori	t6,t6,0x4419
bfc0d22c:	15ae07e0 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d230:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:76
bfc0d234:	3c084997 	lui	t0,0x4997
bfc0d238:	35089c44 	ori	t0,t0,0x9c44
bfc0d23c:	3c092987 	lui	t1,0x2987
bfc0d240:	352942f0 	ori	t1,t1,0x42f0
bfc0d244:	240a0001 	li	t2,1
bfc0d248:	240b0001 	li	t3,1
bfc0d24c:	01600011 	mthi	t3
bfc0d250:	01400013 	mtlo	t2
bfc0d254:	71090000 	madd	t0,t1
bfc0d258:	00006010 	mfhi	t4
bfc0d25c:	00006812 	mflo	t5
bfc0d260:	3c0e0bf0 	lui	t6,0xbf0
bfc0d264:	35ce2a39 	ori	t6,t6,0x2a39
bfc0d268:	158e07d1 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d26c:	00000000 	nop
bfc0d270:	3c0e6048 	lui	t6,0x6048
bfc0d274:	35ce07c1 	ori	t6,t6,0x7c1
bfc0d278:	15ae07cd 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d27c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:77
bfc0d280:	3c082037 	lui	t0,0x2037
bfc0d284:	3508c800 	ori	t0,t0,0xc800
bfc0d288:	3c09fb35 	lui	t1,0xfb35
bfc0d28c:	35295f34 	ori	t1,t1,0x5f34
bfc0d290:	240a0001 	li	t2,1
bfc0d294:	240b0001 	li	t3,1
bfc0d298:	01600011 	mthi	t3
bfc0d29c:	01400013 	mtlo	t2
bfc0d2a0:	71090000 	madd	t0,t1
bfc0d2a4:	00006010 	mfhi	t4
bfc0d2a8:	00006812 	mflo	t5
bfc0d2ac:	3c0eff65 	lui	t6,0xff65
bfc0d2b0:	35cea0a0 	ori	t6,t6,0xa0a0
bfc0d2b4:	158e07be 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d2b8:	00000000 	nop
bfc0d2bc:	3c0ea68c 	lui	t6,0xa68c
bfc0d2c0:	35cea001 	ori	t6,t6,0xa001
bfc0d2c4:	15ae07ba 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d2c8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:78
bfc0d2cc:	3c0821e6 	lui	t0,0x21e6
bfc0d2d0:	35088aeb 	ori	t0,t0,0x8aeb
bfc0d2d4:	3c09c1cc 	lui	t1,0xc1cc
bfc0d2d8:	35294ec0 	ori	t1,t1,0x4ec0
bfc0d2dc:	240a0001 	li	t2,1
bfc0d2e0:	240b0001 	li	t3,1
bfc0d2e4:	01600011 	mthi	t3
bfc0d2e8:	01400013 	mtlo	t2
bfc0d2ec:	71090000 	madd	t0,t1
bfc0d2f0:	00006010 	mfhi	t4
bfc0d2f4:	00006812 	mflo	t5
bfc0d2f8:	3c0ef7c3 	lui	t6,0xf7c3
bfc0d2fc:	35ce51f5 	ori	t6,t6,0x51f5
bfc0d300:	158e07ab 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d304:	00000000 	nop
bfc0d308:	3c0e897f 	lui	t6,0x897f
bfc0d30c:	35ceca41 	ori	t6,t6,0xca41
bfc0d310:	15ae07a7 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d314:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:79
bfc0d318:	3c08e2c4 	lui	t0,0xe2c4
bfc0d31c:	350888b8 	ori	t0,t0,0x88b8
bfc0d320:	3c098ed6 	lui	t1,0x8ed6
bfc0d324:	3529a9d8 	ori	t1,t1,0xa9d8
bfc0d328:	240a0001 	li	t2,1
bfc0d32c:	240b0001 	li	t3,1
bfc0d330:	01600011 	mthi	t3
bfc0d334:	01400013 	mtlo	t2
bfc0d338:	71090000 	madd	t0,t1
bfc0d33c:	00006010 	mfhi	t4
bfc0d340:	00006812 	mflo	t5
bfc0d344:	3c0e0ceb 	lui	t6,0xceb
bfc0d348:	35cef804 	ori	t6,t6,0xf804
bfc0d34c:	158e0798 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d350:	00000000 	nop
bfc0d354:	3c0e6de4 	lui	t6,0x6de4
bfc0d358:	35ced341 	ori	t6,t6,0xd341
bfc0d35c:	15ae0794 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d360:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:80
bfc0d364:	3c080622 	lui	t0,0x622
bfc0d368:	3508c000 	ori	t0,t0,0xc000
bfc0d36c:	3c09849e 	lui	t1,0x849e
bfc0d370:	3529669e 	ori	t1,t1,0x669e
bfc0d374:	240a0001 	li	t2,1
bfc0d378:	240b0001 	li	t3,1
bfc0d37c:	01600011 	mthi	t3
bfc0d380:	01400013 	mtlo	t2
bfc0d384:	71090000 	madd	t0,t1
bfc0d388:	00006010 	mfhi	t4
bfc0d38c:	00006812 	mflo	t5
bfc0d390:	3c0efd0a 	lui	t6,0xfd0a
bfc0d394:	35cef6e9 	ori	t6,t6,0xf6e9
bfc0d398:	158e0785 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d39c:	00000000 	nop
bfc0d3a0:	3c0e21f2 	lui	t6,0x21f2
bfc0d3a4:	35ce8001 	ori	t6,t6,0x8001
bfc0d3a8:	15ae0781 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d3ac:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:81
bfc0d3b0:	3c08fe11 	lui	t0,0xfe11
bfc0d3b4:	3508325e 	ori	t0,t0,0x325e
bfc0d3b8:	3c095a98 	lui	t1,0x5a98
bfc0d3bc:	35290480 	ori	t1,t1,0x480
bfc0d3c0:	240a0001 	li	t2,1
bfc0d3c4:	240b0001 	li	t3,1
bfc0d3c8:	01600011 	mthi	t3
bfc0d3cc:	01400013 	mtlo	t2
bfc0d3d0:	71090000 	madd	t0,t1
bfc0d3d4:	00006010 	mfhi	t4
bfc0d3d8:	00006812 	mflo	t5
bfc0d3dc:	3c0eff50 	lui	t6,0xff50
bfc0d3e0:	35cee5e3 	ori	t6,t6,0xe5e3
bfc0d3e4:	158e0772 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d3e8:	00000000 	nop
bfc0d3ec:	3c0e4132 	lui	t6,0x4132
bfc0d3f0:	35cea701 	ori	t6,t6,0xa701
bfc0d3f4:	15ae076e 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d3f8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:82
bfc0d3fc:	3c08b582 	lui	t0,0xb582
bfc0d400:	3508a660 	ori	t0,t0,0xa660
bfc0d404:	3c092716 	lui	t1,0x2716
bfc0d408:	35291c30 	ori	t1,t1,0x1c30
bfc0d40c:	240a0001 	li	t2,1
bfc0d410:	240b0001 	li	t3,1
bfc0d414:	01600011 	mthi	t3
bfc0d418:	01400013 	mtlo	t2
bfc0d41c:	71090000 	madd	t0,t1
bfc0d420:	00006010 	mfhi	t4
bfc0d424:	00006812 	mflo	t5
bfc0d428:	3c0ef4a0 	lui	t6,0xf4a0
bfc0d42c:	35ce7860 	ori	t6,t6,0x7860
bfc0d430:	158e075f 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d434:	00000000 	nop
bfc0d438:	3c0e3ef1 	lui	t6,0x3ef1
bfc0d43c:	35ceb201 	ori	t6,t6,0xb201
bfc0d440:	15ae075b 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d444:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:83
bfc0d448:	3c08de43 	lui	t0,0xde43
bfc0d44c:	35086ee0 	ori	t0,t0,0x6ee0
bfc0d450:	3c090b8f 	lui	t1,0xb8f
bfc0d454:	3529d2ea 	ori	t1,t1,0xd2ea
bfc0d458:	240a0001 	li	t2,1
bfc0d45c:	240b0001 	li	t3,1
bfc0d460:	01600011 	mthi	t3
bfc0d464:	01400013 	mtlo	t2
bfc0d468:	71090000 	madd	t0,t1
bfc0d46c:	00006010 	mfhi	t4
bfc0d470:	00006812 	mflo	t5
bfc0d474:	3c0efe79 	lui	t6,0xfe79
bfc0d478:	35cef1a4 	ori	t6,t6,0xf1a4
bfc0d47c:	158e074c 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d480:	00000000 	nop
bfc0d484:	3c0e09b7 	lui	t6,0x9b7
bfc0d488:	35ce18c1 	ori	t6,t6,0x18c1
bfc0d48c:	15ae0748 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d490:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:84
bfc0d494:	3c083ca5 	lui	t0,0x3ca5
bfc0d498:	3508ebcc 	ori	t0,t0,0xebcc
bfc0d49c:	3c097fca 	lui	t1,0x7fca
bfc0d4a0:	352989b0 	ori	t1,t1,0x89b0
bfc0d4a4:	240a0001 	li	t2,1
bfc0d4a8:	240b0001 	li	t3,1
bfc0d4ac:	01600011 	mthi	t3
bfc0d4b0:	01400013 	mtlo	t2
bfc0d4b4:	71090000 	madd	t0,t1
bfc0d4b8:	00006010 	mfhi	t4
bfc0d4bc:	00006812 	mflo	t5
bfc0d4c0:	3c0e1e46 	lui	t6,0x1e46
bfc0d4c4:	35ce4b85 	ori	t6,t6,0x4b85
bfc0d4c8:	158e0739 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d4cc:	00000000 	nop
bfc0d4d0:	3c0ec03a 	lui	t6,0xc03a
bfc0d4d4:	35ce4841 	ori	t6,t6,0x4841
bfc0d4d8:	15ae0735 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d4dc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:85
bfc0d4e0:	3c08ed8a 	lui	t0,0xed8a
bfc0d4e4:	3508c2a2 	ori	t0,t0,0xc2a2
bfc0d4e8:	3c098e11 	lui	t1,0x8e11
bfc0d4ec:	3529d628 	ori	t1,t1,0xd628
bfc0d4f0:	240a0001 	li	t2,1
bfc0d4f4:	240b0001 	li	t3,1
bfc0d4f8:	01600011 	mthi	t3
bfc0d4fc:	01400013 	mtlo	t2
bfc0d500:	71090000 	madd	t0,t1
bfc0d504:	00006010 	mfhi	t4
bfc0d508:	00006812 	mflo	t5
bfc0d50c:	3c0e0836 	lui	t6,0x836
bfc0d510:	35ceec1a 	ori	t6,t6,0xec1a
bfc0d514:	158e0726 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d518:	00000000 	nop
bfc0d51c:	3c0ee523 	lui	t6,0xe523
bfc0d520:	35ced551 	ori	t6,t6,0xd551
bfc0d524:	15ae0722 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d528:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:86
bfc0d52c:	3c08ee62 	lui	t0,0xee62
bfc0d530:	3508ac9c 	ori	t0,t0,0xac9c
bfc0d534:	3c09446a 	lui	t1,0x446a
bfc0d538:	3529ed90 	ori	t1,t1,0xed90
bfc0d53c:	240a0001 	li	t2,1
bfc0d540:	240b0001 	li	t3,1
bfc0d544:	01600011 	mthi	t3
bfc0d548:	01400013 	mtlo	t2
bfc0d54c:	71090000 	madd	t0,t1
bfc0d550:	00006010 	mfhi	t4
bfc0d554:	00006812 	mflo	t5
bfc0d558:	3c0efb4a 	lui	t6,0xfb4a
bfc0d55c:	35ceda5d 	ori	t6,t6,0xda5d
bfc0d560:	158e0713 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d564:	00000000 	nop
bfc0d568:	3c0e59e5 	lui	t6,0x59e5
bfc0d56c:	35ce83c1 	ori	t6,t6,0x83c1
bfc0d570:	15ae070f 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d574:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:87
bfc0d578:	3c08a5a4 	lui	t0,0xa5a4
bfc0d57c:	35081fa0 	ori	t0,t0,0x1fa0
bfc0d580:	3c09901e 	lui	t1,0x901e
bfc0d584:	3529cf7a 	ori	t1,t1,0xcf7a
bfc0d588:	240a0001 	li	t2,1
bfc0d58c:	240b0001 	li	t3,1
bfc0d590:	01600011 	mthi	t3
bfc0d594:	01400013 	mtlo	t2
bfc0d598:	71090000 	madd	t0,t1
bfc0d59c:	00006010 	mfhi	t4
bfc0d5a0:	00006812 	mflo	t5
bfc0d5a4:	3c0e277d 	lui	t6,0x277d
bfc0d5a8:	35ce522b 	ori	t6,t6,0x522b
bfc0d5ac:	158e0700 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d5b0:	00000000 	nop
bfc0d5b4:	3c0e5a89 	lui	t6,0x5a89
bfc0d5b8:	35ce7241 	ori	t6,t6,0x7241
bfc0d5bc:	15ae06fc 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d5c0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:88
bfc0d5c4:	3c081665 	lui	t0,0x1665
bfc0d5c8:	3508a95c 	ori	t0,t0,0xa95c
bfc0d5cc:	3c0901fa 	lui	t1,0x1fa
bfc0d5d0:	35290f1c 	ori	t1,t1,0xf1c
bfc0d5d4:	240a0001 	li	t2,1
bfc0d5d8:	240b0001 	li	t3,1
bfc0d5dc:	01600011 	mthi	t3
bfc0d5e0:	01400013 	mtlo	t2
bfc0d5e4:	71090000 	madd	t0,t1
bfc0d5e8:	00006010 	mfhi	t4
bfc0d5ec:	00006812 	mflo	t5
bfc0d5f0:	3c0e002c 	lui	t6,0x2c
bfc0d5f4:	35ce4644 	ori	t6,t6,0x4644
bfc0d5f8:	158e06ed 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d5fc:	00000000 	nop
bfc0d600:	3c0e27e2 	lui	t6,0x27e2
bfc0d604:	35ceea11 	ori	t6,t6,0xea11
bfc0d608:	15ae06e9 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d60c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:89
bfc0d610:	3c08f760 	lui	t0,0xf760
bfc0d614:	3508c288 	ori	t0,t0,0xc288
bfc0d618:	3c09024d 	lui	t1,0x24d
bfc0d61c:	35299a70 	ori	t1,t1,0x9a70
bfc0d620:	240a0001 	li	t2,1
bfc0d624:	240b0001 	li	t3,1
bfc0d628:	01600011 	mthi	t3
bfc0d62c:	01400013 	mtlo	t2
bfc0d630:	71090000 	madd	t0,t1
bfc0d634:	00006010 	mfhi	t4
bfc0d638:	00006812 	mflo	t5
bfc0d63c:	3c0effec 	lui	t6,0xffec
bfc0d640:	35ce246d 	ori	t6,t6,0x246d
bfc0d644:	158e06da 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d648:	00000000 	nop
bfc0d64c:	3c0e0242 	lui	t6,0x242
bfc0d650:	35ceeb81 	ori	t6,t6,0xeb81
bfc0d654:	15ae06d6 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d658:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:90
bfc0d65c:	3c08e432 	lui	t0,0xe432
bfc0d660:	350873f3 	ori	t0,t0,0x73f3
bfc0d664:	3c0928ee 	lui	t1,0x28ee
bfc0d668:	35293fd8 	ori	t1,t1,0x3fd8
bfc0d66c:	3c0a6696 	lui	t2,0x6696
bfc0d670:	354a46d3 	ori	t2,t2,0x46d3
bfc0d674:	3c0b056d 	lui	t3,0x56d
bfc0d678:	356b4a7d 	ori	t3,t3,0x4a7d
bfc0d67c:	01600011 	mthi	t3
bfc0d680:	01400013 	mtlo	t2
bfc0d684:	71090000 	madd	t0,t1
bfc0d688:	00006010 	mfhi	t4
bfc0d68c:	00006812 	mflo	t5
bfc0d690:	3c0e00fb 	lui	t6,0xfb
bfc0d694:	35ce4c94 	ori	t6,t6,0x4c94
bfc0d698:	158e06c5 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d69c:	00000000 	nop
bfc0d6a0:	3c0e1f9a 	lui	t6,0x1f9a
bfc0d6a4:	35cee8db 	ori	t6,t6,0xe8db
bfc0d6a8:	15ae06c1 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d6ac:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:91
bfc0d6b0:	3c0836e0 	lui	t0,0x36e0
bfc0d6b4:	3508f524 	ori	t0,t0,0xf524
bfc0d6b8:	3c09c6a7 	lui	t1,0xc6a7
bfc0d6bc:	35295db0 	ori	t1,t1,0x5db0
bfc0d6c0:	3c0a3a08 	lui	t2,0x3a08
bfc0d6c4:	354ac84e 	ori	t2,t2,0xc84e
bfc0d6c8:	3c0b0a1b 	lui	t3,0xa1b
bfc0d6cc:	356bd1a2 	ori	t3,t3,0xd1a2
bfc0d6d0:	01600011 	mthi	t3
bfc0d6d4:	01400013 	mtlo	t2
bfc0d6d8:	71090000 	madd	t0,t1
bfc0d6dc:	00006010 	mfhi	t4
bfc0d6e0:	00006812 	mflo	t5
bfc0d6e4:	3c0efdd0 	lui	t6,0xfdd0
bfc0d6e8:	35cebaed 	ori	t6,t6,0xbaed
bfc0d6ec:	158e06b0 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d6f0:	00000000 	nop
bfc0d6f4:	3c0e703b 	lui	t6,0x703b
bfc0d6f8:	35ce650e 	ori	t6,t6,0x650e
bfc0d6fc:	15ae06ac 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d700:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:92
bfc0d704:	3c08f1f8 	lui	t0,0xf1f8
bfc0d708:	3508e6de 	ori	t0,t0,0xe6de
bfc0d70c:	3c091e59 	lui	t1,0x1e59
bfc0d710:	35298995 	ori	t1,t1,0x8995
bfc0d714:	3c0ad48a 	lui	t2,0xd48a
bfc0d718:	354aff59 	ori	t2,t2,0xff59
bfc0d71c:	3c0b55dc 	lui	t3,0x55dc
bfc0d720:	356b42ed 	ori	t3,t3,0x42ed
bfc0d724:	01600011 	mthi	t3
bfc0d728:	01400013 	mtlo	t2
bfc0d72c:	71090000 	madd	t0,t1
bfc0d730:	00006010 	mfhi	t4
bfc0d734:	00006812 	mflo	t5
bfc0d738:	3c0e5432 	lui	t6,0x5432
bfc0d73c:	35ce85f9 	ori	t6,t6,0x85f9
bfc0d740:	158e069b 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d744:	00000000 	nop
bfc0d748:	3c0e2524 	lui	t6,0x2524
bfc0d74c:	35ce2c8f 	ori	t6,t6,0x2c8f
bfc0d750:	15ae0697 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d754:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:93
bfc0d758:	3c081830 	lui	t0,0x1830
bfc0d75c:	35087cf0 	ori	t0,t0,0x7cf0
bfc0d760:	3c0973a5 	lui	t1,0x73a5
bfc0d764:	35290467 	ori	t1,t1,0x467
bfc0d768:	3c0a2dcf 	lui	t2,0x2dcf
bfc0d76c:	354abc4c 	ori	t2,t2,0xbc4c
bfc0d770:	3c0b720d 	lui	t3,0x720d
bfc0d774:	356b7c7f 	ori	t3,t3,0x7c7f
bfc0d778:	01600011 	mthi	t3
bfc0d77c:	01400013 	mtlo	t2
bfc0d780:	71090000 	madd	t0,t1
bfc0d784:	00006010 	mfhi	t4
bfc0d788:	00006812 	mflo	t5
bfc0d78c:	3c0e7cfa 	lui	t6,0x7cfa
bfc0d790:	35cedc4a 	ori	t6,t6,0xdc4a
bfc0d794:	158e0686 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d798:	00000000 	nop
bfc0d79c:	3c0e01f5 	lui	t6,0x1f5
bfc0d7a0:	35cec0dc 	ori	t6,t6,0xc0dc
bfc0d7a4:	15ae0682 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d7a8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:94
bfc0d7ac:	3c082d14 	lui	t0,0x2d14
bfc0d7b0:	35087a45 	ori	t0,t0,0x7a45
bfc0d7b4:	3c0978a8 	lui	t1,0x78a8
bfc0d7b8:	3529335c 	ori	t1,t1,0x335c
bfc0d7bc:	3c0a2340 	lui	t2,0x2340
bfc0d7c0:	354adeec 	ori	t2,t2,0xdeec
bfc0d7c4:	3c0bb629 	lui	t3,0xb629
bfc0d7c8:	356b79a6 	ori	t3,t3,0x79a6
bfc0d7cc:	01600011 	mthi	t3
bfc0d7d0:	01400013 	mtlo	t2
bfc0d7d4:	71090000 	madd	t0,t1
bfc0d7d8:	00006010 	mfhi	t4
bfc0d7dc:	00006812 	mflo	t5
bfc0d7e0:	3c0ecb68 	lui	t6,0xcb68
bfc0d7e4:	35ceb172 	ori	t6,t6,0xb172
bfc0d7e8:	158e0671 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d7ec:	00000000 	nop
bfc0d7f0:	3c0e0040 	lui	t6,0x40
bfc0d7f4:	35ce8eb8 	ori	t6,t6,0x8eb8
bfc0d7f8:	15ae066d 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d7fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:95
bfc0d800:	3c089b1e 	lui	t0,0x9b1e
bfc0d804:	3508fb5f 	ori	t0,t0,0xfb5f
bfc0d808:	3c094cf8 	lui	t1,0x4cf8
bfc0d80c:	3529216a 	ori	t1,t1,0x216a
bfc0d810:	3c0a62e8 	lui	t2,0x62e8
bfc0d814:	354aa8d5 	ori	t2,t2,0xa8d5
bfc0d818:	3c0ba95d 	lui	t3,0xa95d
bfc0d81c:	356b9c6a 	ori	t3,t3,0x9c6a
bfc0d820:	01600011 	mthi	t3
bfc0d824:	01400013 	mtlo	t2
bfc0d828:	71090000 	madd	t0,t1
bfc0d82c:	00006010 	mfhi	t4
bfc0d830:	00006812 	mflo	t5
bfc0d834:	3c0e8b09 	lui	t6,0x8b09
bfc0d838:	35ce07e3 	ori	t6,t6,0x7e3
bfc0d83c:	158e065c 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d840:	00000000 	nop
bfc0d844:	3c0e542b 	lui	t6,0x542b
bfc0d848:	35cefd2b 	ori	t6,t6,0xfd2b
bfc0d84c:	15ae0658 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d850:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:96
bfc0d854:	3c08719f 	lui	t0,0x719f
bfc0d858:	35083743 	ori	t0,t0,0x3743
bfc0d85c:	3c09e502 	lui	t1,0xe502
bfc0d860:	35295be9 	ori	t1,t1,0x5be9
bfc0d864:	3c0aa16f 	lui	t2,0xa16f
bfc0d868:	354a2ab1 	ori	t2,t2,0x2ab1
bfc0d86c:	3c0bd965 	lui	t3,0xd965
bfc0d870:	356b2ca4 	ori	t3,t3,0x2ca4
bfc0d874:	01600011 	mthi	t3
bfc0d878:	01400013 	mtlo	t2
bfc0d87c:	71090000 	madd	t0,t1
bfc0d880:	00006010 	mfhi	t4
bfc0d884:	00006812 	mflo	t5
bfc0d888:	3c0ecd6a 	lui	t6,0xcd6a
bfc0d88c:	35ce6dd9 	ori	t6,t6,0x6dd9
bfc0d890:	158e0647 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d894:	00000000 	nop
bfc0d898:	3c0e0183 	lui	t6,0x183
bfc0d89c:	35ce47ac 	ori	t6,t6,0x47ac
bfc0d8a0:	15ae0643 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d8a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:97
bfc0d8a8:	3c084cff 	lui	t0,0x4cff
bfc0d8ac:	35088e15 	ori	t0,t0,0x8e15
bfc0d8b0:	3c090049 	lui	t1,0x49
bfc0d8b4:	3529dde5 	ori	t1,t1,0xdde5
bfc0d8b8:	3c0a8664 	lui	t2,0x8664
bfc0d8bc:	354a09b2 	ori	t2,t2,0x9b2
bfc0d8c0:	3c0bbb93 	lui	t3,0xbb93
bfc0d8c4:	356b6d45 	ori	t3,t3,0x6d45
bfc0d8c8:	01600011 	mthi	t3
bfc0d8cc:	01400013 	mtlo	t2
bfc0d8d0:	71090000 	madd	t0,t1
bfc0d8d4:	00006010 	mfhi	t4
bfc0d8d8:	00006812 	mflo	t5
bfc0d8dc:	3c0ebba9 	lui	t6,0xbba9
bfc0d8e0:	35cea4e1 	ori	t6,t6,0xa4e1
bfc0d8e4:	158e0632 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d8e8:	00000000 	nop
bfc0d8ec:	3c0e88a3 	lui	t6,0x88a3
bfc0d8f0:	35ce437b 	ori	t6,t6,0x437b
bfc0d8f4:	15ae062e 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d8f8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:98
bfc0d8fc:	3c080d53 	lui	t0,0xd53
bfc0d900:	350816bb 	ori	t0,t0,0x16bb
bfc0d904:	3c093a5b 	lui	t1,0x3a5b
bfc0d908:	352931ad 	ori	t1,t1,0x31ad
bfc0d90c:	3c0a3b2a 	lui	t2,0x3b2a
bfc0d910:	354a43f1 	ori	t2,t2,0x43f1
bfc0d914:	3c0bf54a 	lui	t3,0xf54a
bfc0d918:	356b3649 	ori	t3,t3,0x3649
bfc0d91c:	01600011 	mthi	t3
bfc0d920:	01400013 	mtlo	t2
bfc0d924:	71090000 	madd	t0,t1
bfc0d928:	00006010 	mfhi	t4
bfc0d92c:	00006812 	mflo	t5
bfc0d930:	3c0ef853 	lui	t6,0xf853
bfc0d934:	35cec88e 	ori	t6,t6,0xc88e
bfc0d938:	158e061d 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d93c:	00000000 	nop
bfc0d940:	3c0e9623 	lui	t6,0x9623
bfc0d944:	35ce6b50 	ori	t6,t6,0x6b50
bfc0d948:	15ae0619 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d94c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:99
bfc0d950:	3c080760 	lui	t0,0x760
bfc0d954:	3508e0b2 	ori	t0,t0,0xe0b2
bfc0d958:	3c093ef5 	lui	t1,0x3ef5
bfc0d95c:	35291581 	ori	t1,t1,0x1581
bfc0d960:	3c0ad13e 	lui	t2,0xd13e
bfc0d964:	354a21d2 	ori	t2,t2,0x21d2
bfc0d968:	3c0ba4c6 	lui	t3,0xa4c6
bfc0d96c:	356bb481 	ori	t3,t3,0xb481
bfc0d970:	01600011 	mthi	t3
bfc0d974:	01400013 	mtlo	t2
bfc0d978:	71090000 	madd	t0,t1
bfc0d97c:	00006010 	mfhi	t4
bfc0d980:	00006812 	mflo	t5
bfc0d984:	3c0ea697 	lui	t6,0xa697
bfc0d988:	35ce3b41 	ori	t6,t6,0x3b41
bfc0d98c:	158e0608 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d990:	00000000 	nop
bfc0d994:	3c0ea1d7 	lui	t6,0xa1d7
bfc0d998:	35cef584 	ori	t6,t6,0xf584
bfc0d99c:	15ae0604 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d9a0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:100
bfc0d9a4:	3c08f56c 	lui	t0,0xf56c
bfc0d9a8:	350899bd 	ori	t0,t0,0x99bd
bfc0d9ac:	3c093d75 	lui	t1,0x3d75
bfc0d9b0:	35294d5c 	ori	t1,t1,0x4d5c
bfc0d9b4:	3c0a98ef 	lui	t2,0x98ef
bfc0d9b8:	354a2966 	ori	t2,t2,0x2966
bfc0d9bc:	3c0b5fe5 	lui	t3,0x5fe5
bfc0d9c0:	356b8dd3 	ori	t3,t3,0x8dd3
bfc0d9c4:	01600011 	mthi	t3
bfc0d9c8:	01400013 	mtlo	t2
bfc0d9cc:	71090000 	madd	t0,t1
bfc0d9d0:	00006010 	mfhi	t4
bfc0d9d4:	00006812 	mflo	t5
bfc0d9d8:	3c0e5d5b 	lui	t6,0x5d5b
bfc0d9dc:	35ce95e4 	ori	t6,t6,0x95e4
bfc0d9e0:	158e05f3 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0d9e4:	00000000 	nop
bfc0d9e8:	3c0ec295 	lui	t6,0xc295
bfc0d9ec:	35ce4252 	ori	t6,t6,0x4252
bfc0d9f0:	15ae05ef 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0d9f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:101
bfc0d9f8:	3c0881b0 	lui	t0,0x81b0
bfc0d9fc:	35080784 	ori	t0,t0,0x784
bfc0da00:	3c09d120 	lui	t1,0xd120
bfc0da04:	352950ef 	ori	t1,t1,0x50ef
bfc0da08:	3c0aad79 	lui	t2,0xad79
bfc0da0c:	354a39e4 	ori	t2,t2,0x39e4
bfc0da10:	3c0b1e9c 	lui	t3,0x1e9c
bfc0da14:	356b5f5e 	ori	t3,t3,0x5f5e
bfc0da18:	01600011 	mthi	t3
bfc0da1c:	01400013 	mtlo	t2
bfc0da20:	71090000 	madd	t0,t1
bfc0da24:	00006010 	mfhi	t4
bfc0da28:	00006812 	mflo	t5
bfc0da2c:	3c0e35bd 	lui	t6,0x35bd
bfc0da30:	35ce1c0e 	ori	t6,t6,0x1c0e
bfc0da34:	158e05de 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0da38:	00000000 	nop
bfc0da3c:	3c0e77a9 	lui	t6,0x77a9
bfc0da40:	35ce7e20 	ori	t6,t6,0x7e20
bfc0da44:	15ae05da 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0da48:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:102
bfc0da4c:	3c083061 	lui	t0,0x3061
bfc0da50:	350807e3 	ori	t0,t0,0x7e3
bfc0da54:	3c09ef92 	lui	t1,0xef92
bfc0da58:	35292d82 	ori	t1,t1,0x2d82
bfc0da5c:	3c0a5d29 	lui	t2,0x5d29
bfc0da60:	354a4913 	ori	t2,t2,0x4913
bfc0da64:	3c0b0b96 	lui	t3,0xb96
bfc0da68:	356b9466 	ori	t3,t3,0x9466
bfc0da6c:	01600011 	mthi	t3
bfc0da70:	01400013 	mtlo	t2
bfc0da74:	71090000 	madd	t0,t1
bfc0da78:	00006010 	mfhi	t4
bfc0da7c:	00006812 	mflo	t5
bfc0da80:	3c0e087b 	lui	t6,0x87b
bfc0da84:	35cec2d0 	ori	t6,t6,0xc2d0
bfc0da88:	158e05c9 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0da8c:	00000000 	nop
bfc0da90:	3c0e6948 	lui	t6,0x6948
bfc0da94:	35ce3159 	ori	t6,t6,0x3159
bfc0da98:	15ae05c5 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0da9c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:103
bfc0daa0:	3c088d2e 	lui	t0,0x8d2e
bfc0daa4:	350878aa 	ori	t0,t0,0x78aa
bfc0daa8:	3c094ed3 	lui	t1,0x4ed3
bfc0daac:	3529b34c 	ori	t1,t1,0xb34c
bfc0dab0:	3c0a9fdc 	lui	t2,0x9fdc
bfc0dab4:	354add00 	ori	t2,t2,0xdd00
bfc0dab8:	3c0b41f4 	lui	t3,0x41f4
bfc0dabc:	356b7af7 	ori	t3,t3,0x7af7
bfc0dac0:	01600011 	mthi	t3
bfc0dac4:	01400013 	mtlo	t2
bfc0dac8:	71090000 	madd	t0,t1
bfc0dacc:	00006010 	mfhi	t4
bfc0dad0:	00006812 	mflo	t5
bfc0dad4:	3c0e1e99 	lui	t6,0x1e99
bfc0dad8:	35ceb09d 	ori	t6,t6,0xb09d
bfc0dadc:	158e05b4 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0dae0:	00000000 	nop
bfc0dae4:	3c0e4825 	lui	t6,0x4825
bfc0dae8:	35ce8d78 	ori	t6,t6,0x8d78
bfc0daec:	15ae05b0 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0daf0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:104
bfc0daf4:	3c082043 	lui	t0,0x2043
bfc0daf8:	3508ee62 	ori	t0,t0,0xee62
bfc0dafc:	3c0953da 	lui	t1,0x53da
bfc0db00:	3529c4d6 	ori	t1,t1,0xc4d6
bfc0db04:	3c0a6379 	lui	t2,0x6379
bfc0db08:	354ae90c 	ori	t2,t2,0xe90c
bfc0db0c:	3c0bc49a 	lui	t3,0xc49a
bfc0db10:	356bd654 	ori	t3,t3,0xd654
bfc0db14:	01600011 	mthi	t3
bfc0db18:	01400013 	mtlo	t2
bfc0db1c:	71090000 	madd	t0,t1
bfc0db20:	00006010 	mfhi	t4
bfc0db24:	00006812 	mflo	t5
bfc0db28:	3c0ecf2c 	lui	t6,0xcf2c
bfc0db2c:	35ce6f46 	ori	t6,t6,0x6f46
bfc0db30:	158e059f 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0db34:	00000000 	nop
bfc0db38:	3c0e243a 	lui	t6,0x243a
bfc0db3c:	35ce36f8 	ori	t6,t6,0x36f8
bfc0db40:	15ae059b 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0db44:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:105
bfc0db48:	3c0813ef 	lui	t0,0x13ef
bfc0db4c:	3508be61 	ori	t0,t0,0xbe61
bfc0db50:	3c0959b5 	lui	t1,0x59b5
bfc0db54:	3529d052 	ori	t1,t1,0xd052
bfc0db58:	3c0a5d91 	lui	t2,0x5d91
bfc0db5c:	354a1a89 	ori	t2,t2,0x1a89
bfc0db60:	3c0b4650 	lui	t3,0x4650
bfc0db64:	356b6154 	ori	t3,t3,0x6154
bfc0db68:	01600011 	mthi	t3
bfc0db6c:	01400013 	mtlo	t2
bfc0db70:	71090000 	madd	t0,t1
bfc0db74:	00006010 	mfhi	t4
bfc0db78:	00006812 	mflo	t5
bfc0db7c:	3c0e4d4c 	lui	t6,0x4d4c
bfc0db80:	35cee33e 	ori	t6,t6,0xe33e
bfc0db84:	158e058a 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0db88:	00000000 	nop
bfc0db8c:	3c0ede9f 	lui	t6,0xde9f
bfc0db90:	35cee59b 	ori	t6,t6,0xe59b
bfc0db94:	15ae0586 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0db98:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:106
bfc0db9c:	3c08aeb6 	lui	t0,0xaeb6
bfc0dba0:	35083f44 	ori	t0,t0,0x3f44
bfc0dba4:	3c09797d 	lui	t1,0x797d
bfc0dba8:	35296e41 	ori	t1,t1,0x6e41
bfc0dbac:	3c0a8e1e 	lui	t2,0x8e1e
bfc0dbb0:	354a2ff9 	ori	t2,t2,0x2ff9
bfc0dbb4:	3c0bed02 	lui	t3,0xed02
bfc0dbb8:	356bcc6c 	ori	t3,t3,0xcc6c
bfc0dbbc:	01600011 	mthi	t3
bfc0dbc0:	01400013 	mtlo	t2
bfc0dbc4:	71090000 	madd	t0,t1
bfc0dbc8:	00006010 	mfhi	t4
bfc0dbcc:	00006812 	mflo	t5
bfc0dbd0:	3c0ec66f 	lui	t6,0xc66f
bfc0dbd4:	35ce1c4d 	ori	t6,t6,0x1c4d
bfc0dbd8:	158e0575 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0dbdc:	00000000 	nop
bfc0dbe0:	3c0e41c7 	lui	t6,0x41c7
bfc0dbe4:	35ce783d 	ori	t6,t6,0x783d
bfc0dbe8:	15ae0571 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0dbec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:107
bfc0dbf0:	3c084f9f 	lui	t0,0x4f9f
bfc0dbf4:	3508ac90 	ori	t0,t0,0xac90
bfc0dbf8:	3c09f9b9 	lui	t1,0xf9b9
bfc0dbfc:	3529431d 	ori	t1,t1,0x431d
bfc0dc00:	3c0af422 	lui	t2,0xf422
bfc0dc04:	354a1a53 	ori	t2,t2,0x1a53
bfc0dc08:	3c0b1a79 	lui	t3,0x1a79
bfc0dc0c:	356b58d3 	ori	t3,t3,0x58d3
bfc0dc10:	01600011 	mthi	t3
bfc0dc14:	01400013 	mtlo	t2
bfc0dc18:	71090000 	madd	t0,t1
bfc0dc1c:	00006010 	mfhi	t4
bfc0dc20:	00006812 	mflo	t5
bfc0dc24:	3c0e1885 	lui	t6,0x1885
bfc0dc28:	35ce9a5e 	ori	t6,t6,0x9a5e
bfc0dc2c:	158e0560 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0dc30:	00000000 	nop
bfc0dc34:	3c0e8772 	lui	t6,0x8772
bfc0dc38:	35ce56a3 	ori	t6,t6,0x56a3
bfc0dc3c:	15ae055c 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0dc40:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:108
bfc0dc44:	3c08b85a 	lui	t0,0xb85a
bfc0dc48:	3508ffd3 	ori	t0,t0,0xffd3
bfc0dc4c:	3c093376 	lui	t1,0x3376
bfc0dc50:	3529990c 	ori	t1,t1,0x990c
bfc0dc54:	3c0a2214 	lui	t2,0x2214
bfc0dc58:	354a7053 	ori	t2,t2,0x7053
bfc0dc5c:	3c0b0ce8 	lui	t3,0xce8
bfc0dc60:	356bcac1 	ori	t3,t3,0xcac1
bfc0dc64:	01600011 	mthi	t3
bfc0dc68:	01400013 	mtlo	t2
bfc0dc6c:	71090000 	madd	t0,t1
bfc0dc70:	00006010 	mfhi	t4
bfc0dc74:	00006812 	mflo	t5
bfc0dc78:	3c0efe81 	lui	t6,0xfe81
bfc0dc7c:	35cebad5 	ori	t6,t6,0xbad5
bfc0dc80:	158e054b 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0dc84:	00000000 	nop
bfc0dc88:	3c0e1d7f 	lui	t6,0x1d7f
bfc0dc8c:	35ce8937 	ori	t6,t6,0x8937
bfc0dc90:	15ae0547 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0dc94:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:109
bfc0dc98:	3c08a6df 	lui	t0,0xa6df
bfc0dc9c:	3508648a 	ori	t0,t0,0x648a
bfc0dca0:	3c09e385 	lui	t1,0xe385
bfc0dca4:	35294cce 	ori	t1,t1,0x4cce
bfc0dca8:	3c0a5ef0 	lui	t2,0x5ef0
bfc0dcac:	354acac5 	ori	t2,t2,0xcac5
bfc0dcb0:	3c0b44a3 	lui	t3,0x44a3
bfc0dcb4:	356bd86d 	ori	t3,t3,0xd86d
bfc0dcb8:	01600011 	mthi	t3
bfc0dcbc:	01400013 	mtlo	t2
bfc0dcc0:	71090000 	madd	t0,t1
bfc0dcc4:	00006010 	mfhi	t4
bfc0dcc8:	00006812 	mflo	t5
bfc0dccc:	3c0e4e8e 	lui	t6,0x4e8e
bfc0dcd0:	35ce215b 	ori	t6,t6,0x215b
bfc0dcd4:	158e0536 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0dcd8:	00000000 	nop
bfc0dcdc:	3c0e923e 	lui	t6,0x923e
bfc0dce0:	35cea9d1 	ori	t6,t6,0xa9d1
bfc0dce4:	15ae0532 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0dce8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:110
bfc0dcec:	3c08c676 	lui	t0,0xc676
bfc0dcf0:	3508b7a7 	ori	t0,t0,0xb7a7
bfc0dcf4:	3c095ead 	lui	t1,0x5ead
bfc0dcf8:	35299551 	ori	t1,t1,0x9551
bfc0dcfc:	3c0a4335 	lui	t2,0x4335
bfc0dd00:	354a4956 	ori	t2,t2,0x4956
bfc0dd04:	3c0befe1 	lui	t3,0xefe1
bfc0dd08:	356b9041 	ori	t3,t3,0x9041
bfc0dd0c:	01600011 	mthi	t3
bfc0dd10:	01400013 	mtlo	t2
bfc0dd14:	71090000 	madd	t0,t1
bfc0dd18:	00006010 	mfhi	t4
bfc0dd1c:	00006812 	mflo	t5
bfc0dd20:	3c0eda9a 	lui	t6,0xda9a
bfc0dd24:	35ce245b 	ori	t6,t6,0x245b
bfc0dd28:	158e0521 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0dd2c:	00000000 	nop
bfc0dd30:	3c0e9584 	lui	t6,0x9584
bfc0dd34:	35ce982d 	ori	t6,t6,0x982d
bfc0dd38:	15ae051d 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0dd3c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:111
bfc0dd40:	3c08ac84 	lui	t0,0xac84
bfc0dd44:	3508503a 	ori	t0,t0,0x503a
bfc0dd48:	3c094297 	lui	t1,0x4297
bfc0dd4c:	3529c576 	ori	t1,t1,0xc576
bfc0dd50:	3c0aa15f 	lui	t2,0xa15f
bfc0dd54:	354a9b84 	ori	t2,t2,0x9b84
bfc0dd58:	3c0b0b7b 	lui	t3,0xb7b
bfc0dd5c:	356b6983 	ori	t3,t3,0x6983
bfc0dd60:	01600011 	mthi	t3
bfc0dd64:	01400013 	mtlo	t2
bfc0dd68:	71090000 	madd	t0,t1
bfc0dd6c:	00006010 	mfhi	t4
bfc0dd70:	00006812 	mflo	t5
bfc0dd74:	3c0ef5c4 	lui	t6,0xf5c4
bfc0dd78:	35ce07d8 	ori	t6,t6,0x7d8
bfc0dd7c:	158e050c 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0dd80:	00000000 	nop
bfc0dd84:	3c0e3e4f 	lui	t6,0x3e4f
bfc0dd88:	35ce3840 	ori	t6,t6,0x3840
bfc0dd8c:	15ae0508 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0dd90:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:112
bfc0dd94:	3c084b65 	lui	t0,0x4b65
bfc0dd98:	35083bf4 	ori	t0,t0,0x3bf4
bfc0dd9c:	3c095164 	lui	t1,0x5164
bfc0dda0:	35294de3 	ori	t1,t1,0x4de3
bfc0dda4:	3c0ad232 	lui	t2,0xd232
bfc0dda8:	354a3ab8 	ori	t2,t2,0x3ab8
bfc0ddac:	3c0b237d 	lui	t3,0x237d
bfc0ddb0:	356bdafc 	ori	t3,t3,0xdafc
bfc0ddb4:	01600011 	mthi	t3
bfc0ddb8:	01400013 	mtlo	t2
bfc0ddbc:	71090000 	madd	t0,t1
bfc0ddc0:	00006010 	mfhi	t4
bfc0ddc4:	00006812 	mflo	t5
bfc0ddc8:	3c0e3b76 	lui	t6,0x3b76
bfc0ddcc:	35ce6d6f 	ori	t6,t6,0x6d6f
bfc0ddd0:	158e04f7 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ddd4:	00000000 	nop
bfc0ddd8:	3c0ebf4e 	lui	t6,0xbf4e
bfc0dddc:	35cec814 	ori	t6,t6,0xc814
bfc0dde0:	15ae04f3 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0dde4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:113
bfc0dde8:	3c0844eb 	lui	t0,0x44eb
bfc0ddec:	3508b3b8 	ori	t0,t0,0xb3b8
bfc0ddf0:	3c093da0 	lui	t1,0x3da0
bfc0ddf4:	352916bf 	ori	t1,t1,0x16bf
bfc0ddf8:	3c0add3c 	lui	t2,0xdd3c
bfc0ddfc:	354a5d4a 	ori	t2,t2,0x5d4a
bfc0de00:	3c0b5417 	lui	t3,0x5417
bfc0de04:	356b09ff 	ori	t3,t3,0x9ff
bfc0de08:	01600011 	mthi	t3
bfc0de0c:	01400013 	mtlo	t2
bfc0de10:	71090000 	madd	t0,t1
bfc0de14:	00006010 	mfhi	t4
bfc0de18:	00006812 	mflo	t5
bfc0de1c:	3c0e64ae 	lui	t6,0x64ae
bfc0de20:	35ce4d41 	ori	t6,t6,0x4d41
bfc0de24:	158e04e2 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0de28:	00000000 	nop
bfc0de2c:	3c0eb589 	lui	t6,0xb589
bfc0de30:	35ce4392 	ori	t6,t6,0x4392
bfc0de34:	15ae04de 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0de38:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:114
bfc0de3c:	3c08bf9a 	lui	t0,0xbf9a
bfc0de40:	3508ca26 	ori	t0,t0,0xca26
bfc0de44:	3c0907b8 	lui	t1,0x7b8
bfc0de48:	35290370 	ori	t1,t1,0x370
bfc0de4c:	3c0a246f 	lui	t2,0x246f
bfc0de50:	354a6835 	ori	t2,t2,0x6835
bfc0de54:	3c0be990 	lui	t3,0xe990
bfc0de58:	356b8ae9 	ori	t3,t3,0x8ae9
bfc0de5c:	01600011 	mthi	t3
bfc0de60:	01400013 	mtlo	t2
bfc0de64:	71090000 	madd	t0,t1
bfc0de68:	00006010 	mfhi	t4
bfc0de6c:	00006812 	mflo	t5
bfc0de70:	3c0ee79f 	lui	t6,0xe79f
bfc0de74:	35ce7cd4 	ori	t6,t6,0x7cd4
bfc0de78:	158e04cd 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0de7c:	00000000 	nop
bfc0de80:	3c0e1dd6 	lui	t6,0x1dd6
bfc0de84:	35ce4ad5 	ori	t6,t6,0x4ad5
bfc0de88:	15ae04c9 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0de8c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:115
bfc0de90:	3c08d1c4 	lui	t0,0xd1c4
bfc0de94:	3508602f 	ori	t0,t0,0x602f
bfc0de98:	3c095744 	lui	t1,0x5744
bfc0de9c:	3529ad6f 	ori	t1,t1,0xad6f
bfc0dea0:	3c0ac9e7 	lui	t2,0xc9e7
bfc0dea4:	354aa728 	ori	t2,t2,0xa728
bfc0dea8:	3c0bccde 	lui	t3,0xccde
bfc0deac:	356b9709 	ori	t3,t3,0x9709
bfc0deb0:	01600011 	mthi	t3
bfc0deb4:	01400013 	mtlo	t2
bfc0deb8:	71090000 	madd	t0,t1
bfc0debc:	00006010 	mfhi	t4
bfc0dec0:	00006812 	mflo	t5
bfc0dec4:	3c0ebd1b 	lui	t6,0xbd1b
bfc0dec8:	35ceec8f 	ori	t6,t6,0xec8f
bfc0decc:	158e04b8 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ded0:	00000000 	nop
bfc0ded4:	3c0ef889 	lui	t6,0xf889
bfc0ded8:	35ce1e89 	ori	t6,t6,0x1e89
bfc0dedc:	15ae04b4 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0dee0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:116
bfc0dee4:	3c08de4d 	lui	t0,0xde4d
bfc0dee8:	3508e67e 	ori	t0,t0,0xe67e
bfc0deec:	3c099108 	lui	t1,0x9108
bfc0def0:	3529beed 	ori	t1,t1,0xbeed
bfc0def4:	3c0a9d2d 	lui	t2,0x9d2d
bfc0def8:	354a3082 	ori	t2,t2,0x3082
bfc0defc:	3c0b566e 	lui	t3,0x566e
bfc0df00:	356b3f89 	ori	t3,t3,0x3f89
bfc0df04:	01600011 	mthi	t3
bfc0df08:	01400013 	mtlo	t2
bfc0df0c:	71090000 	madd	t0,t1
bfc0df10:	00006010 	mfhi	t4
bfc0df14:	00006812 	mflo	t5
bfc0df18:	3c0e6509 	lui	t6,0x6509
bfc0df1c:	35ce51e5 	ori	t6,t6,0x51e5
bfc0df20:	158e04a3 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0df24:	00000000 	nop
bfc0df28:	3c0ece4d 	lui	t6,0xce4d
bfc0df2c:	35ce1728 	ori	t6,t6,0x1728
bfc0df30:	15ae049f 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0df34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:117
bfc0df38:	3c08ad92 	lui	t0,0xad92
bfc0df3c:	350855c1 	ori	t0,t0,0x55c1
bfc0df40:	3c094b9b 	lui	t1,0x4b9b
bfc0df44:	352901b4 	ori	t1,t1,0x1b4
bfc0df48:	3c0a1652 	lui	t2,0x1652
bfc0df4c:	354a4574 	ori	t2,t2,0x4574
bfc0df50:	3c0b517e 	lui	t3,0x517e
bfc0df54:	356b3804 	ori	t3,t3,0x3804
bfc0df58:	01600011 	mthi	t3
bfc0df5c:	01400013 	mtlo	t2
bfc0df60:	71090000 	madd	t0,t1
bfc0df64:	00006010 	mfhi	t4
bfc0df68:	00006812 	mflo	t5
bfc0df6c:	3c0e3926 	lui	t6,0x3926
bfc0df70:	35ce2e31 	ori	t6,t6,0x2e31
bfc0df74:	158e048e 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0df78:	00000000 	nop
bfc0df7c:	3c0e2a67 	lui	t6,0x2a67
bfc0df80:	35ce5228 	ori	t6,t6,0x5228
bfc0df84:	15ae048a 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0df88:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:118
bfc0df8c:	3c085276 	lui	t0,0x5276
bfc0df90:	3508ab03 	ori	t0,t0,0xab03
bfc0df94:	3c095a51 	lui	t1,0x5a51
bfc0df98:	3529fa80 	ori	t1,t1,0xfa80
bfc0df9c:	3c0a710c 	lui	t2,0x710c
bfc0dfa0:	354aaea4 	ori	t2,t2,0xaea4
bfc0dfa4:	3c0b912e 	lui	t3,0x912e
bfc0dfa8:	356bd4cb 	ori	t3,t3,0xd4cb
bfc0dfac:	01600011 	mthi	t3
bfc0dfb0:	01400013 	mtlo	t2
bfc0dfb4:	71090000 	madd	t0,t1
bfc0dfb8:	00006010 	mfhi	t4
bfc0dfbc:	00006812 	mflo	t5
bfc0dfc0:	3c0eae46 	lui	t6,0xae46
bfc0dfc4:	35cef527 	ori	t6,t6,0xf527
bfc0dfc8:	158e0479 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0dfcc:	00000000 	nop
bfc0dfd0:	3c0eb956 	lui	t6,0xb956
bfc0dfd4:	35ce1e24 	ori	t6,t6,0x1e24
bfc0dfd8:	15ae0475 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0dfdc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:119
bfc0dfe0:	3c08b637 	lui	t0,0xb637
bfc0dfe4:	350855db 	ori	t0,t0,0x55db
bfc0dfe8:	3c092c24 	lui	t1,0x2c24
bfc0dfec:	352952c3 	ori	t1,t1,0x52c3
bfc0dff0:	3c0ad72a 	lui	t2,0xd72a
bfc0dff4:	354a1069 	ori	t2,t2,0x1069
bfc0dff8:	3c0b015e 	lui	t3,0x15e
bfc0dffc:	356b97c9 	ori	t3,t3,0x97c9
bfc0e000:	01600011 	mthi	t3
bfc0e004:	01400013 	mtlo	t2
bfc0e008:	71090000 	madd	t0,t1
bfc0e00c:	00006010 	mfhi	t4
bfc0e010:	00006812 	mflo	t5
bfc0e014:	3c0ef4a5 	lui	t6,0xf4a5
bfc0e018:	35cea278 	ori	t6,t6,0xa278
bfc0e01c:	158e0464 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e020:	00000000 	nop
bfc0e024:	3c0e139c 	lui	t6,0x139c
bfc0e028:	35ce9c3a 	ori	t6,t6,0x9c3a
bfc0e02c:	15ae0460 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e030:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:120
bfc0e034:	3c0863cb 	lui	t0,0x63cb
bfc0e038:	35087294 	ori	t0,t0,0x7294
bfc0e03c:	3c091a07 	lui	t1,0x1a07
bfc0e040:	3529e7e3 	ori	t1,t1,0xe7e3
bfc0e044:	3c0a02ca 	lui	t2,0x2ca
bfc0e048:	354af4ed 	ori	t2,t2,0xf4ed
bfc0e04c:	3c0b91a3 	lui	t3,0x91a3
bfc0e050:	356b3ab6 	ori	t3,t3,0x3ab6
bfc0e054:	01600011 	mthi	t3
bfc0e058:	01400013 	mtlo	t2
bfc0e05c:	71090000 	madd	t0,t1
bfc0e060:	00006010 	mfhi	t4
bfc0e064:	00006812 	mflo	t5
bfc0e068:	3c0e9bc8 	lui	t6,0x9bc8
bfc0e06c:	35cef94e 	ori	t6,t6,0xf94e
bfc0e070:	158e044f 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e074:	00000000 	nop
bfc0e078:	3c0e3ea1 	lui	t6,0x3ea1
bfc0e07c:	35ce1a29 	ori	t6,t6,0x1a29
bfc0e080:	15ae044b 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e084:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:121
bfc0e088:	3c08fb7b 	lui	t0,0xfb7b
bfc0e08c:	3508824b 	ori	t0,t0,0x824b
bfc0e090:	3c09b596 	lui	t1,0xb596
bfc0e094:	352913df 	ori	t1,t1,0x13df
bfc0e098:	3c0a59a9 	lui	t2,0x59a9
bfc0e09c:	354ad2b2 	ori	t2,t2,0xd2b2
bfc0e0a0:	3c0b718e 	lui	t3,0x718e
bfc0e0a4:	356b3e79 	ori	t3,t3,0x3e79
bfc0e0a8:	01600011 	mthi	t3
bfc0e0ac:	01400013 	mtlo	t2
bfc0e0b0:	71090000 	madd	t0,t1
bfc0e0b4:	00006010 	mfhi	t4
bfc0e0b8:	00006812 	mflo	t5
bfc0e0bc:	3c0e72de 	lui	t6,0x72de
bfc0e0c0:	35ce6951 	ori	t6,t6,0x6951
bfc0e0c4:	158e043a 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e0c8:	00000000 	nop
bfc0e0cc:	3c0ef3dd 	lui	t6,0xf3dd
bfc0e0d0:	35cee307 	ori	t6,t6,0xe307
bfc0e0d4:	15ae0436 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e0d8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:122
bfc0e0dc:	3c08751e 	lui	t0,0x751e
bfc0e0e0:	35085f9a 	ori	t0,t0,0x5f9a
bfc0e0e4:	3c092306 	lui	t1,0x2306
bfc0e0e8:	352990ee 	ori	t1,t1,0x90ee
bfc0e0ec:	3c0a3ca1 	lui	t2,0x3ca1
bfc0e0f0:	354aa890 	ori	t2,t2,0xa890
bfc0e0f4:	3c0bfa8c 	lui	t3,0xfa8c
bfc0e0f8:	356ba34b 	ori	t3,t3,0xa34b
bfc0e0fc:	01600011 	mthi	t3
bfc0e100:	01400013 	mtlo	t2
bfc0e104:	71090000 	madd	t0,t1
bfc0e108:	00006010 	mfhi	t4
bfc0e10c:	00006812 	mflo	t5
bfc0e110:	3c0e0a92 	lui	t6,0xa92
bfc0e114:	35cecb61 	ori	t6,t6,0xcb61
bfc0e118:	158e0425 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e11c:	00000000 	nop
bfc0e120:	3c0e8041 	lui	t6,0x8041
bfc0e124:	35ce29bc 	ori	t6,t6,0x29bc
bfc0e128:	15ae0421 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e12c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:123
bfc0e130:	3c08a812 	lui	t0,0xa812
bfc0e134:	35086b38 	ori	t0,t0,0x6b38
bfc0e138:	3c09064b 	lui	t1,0x64b
bfc0e13c:	352955b3 	ori	t1,t1,0x55b3
bfc0e140:	3c0a10dd 	lui	t2,0x10dd
bfc0e144:	354a6b33 	ori	t2,t2,0x6b33
bfc0e148:	3c0b4b4b 	lui	t3,0x4b4b
bfc0e14c:	356b8d78 	ori	t3,t3,0x8d78
bfc0e150:	01600011 	mthi	t3
bfc0e154:	01400013 	mtlo	t2
bfc0e158:	71090000 	madd	t0,t1
bfc0e15c:	00006010 	mfhi	t4
bfc0e160:	00006812 	mflo	t5
bfc0e164:	3c0e4922 	lui	t6,0x4922
bfc0e168:	35ce1bf1 	ori	t6,t6,0x1bf1
bfc0e16c:	158e0410 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e170:	00000000 	nop
bfc0e174:	3c0e6cbf 	lui	t6,0x6cbf
bfc0e178:	35cefb5b 	ori	t6,t6,0xfb5b
bfc0e17c:	15ae040c 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e180:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:124
bfc0e184:	3c0877ff 	lui	t0,0x77ff
bfc0e188:	3508c65a 	ori	t0,t0,0xc65a
bfc0e18c:	3c093b47 	lui	t1,0x3b47
bfc0e190:	35291fda 	ori	t1,t1,0x1fda
bfc0e194:	3c0aaa36 	lui	t2,0xaa36
bfc0e198:	354a6338 	ori	t2,t2,0x6338
bfc0e19c:	3c0baffc 	lui	t3,0xaffc
bfc0e1a0:	356ba58d 	ori	t3,t3,0xa58d
bfc0e1a4:	01600011 	mthi	t3
bfc0e1a8:	01400013 	mtlo	t2
bfc0e1ac:	71090000 	madd	t0,t1
bfc0e1b0:	00006010 	mfhi	t4
bfc0e1b4:	00006812 	mflo	t5
bfc0e1b8:	3c0ecbc5 	lui	t6,0xcbc5
bfc0e1bc:	35ceef21 	ori	t6,t6,0xef21
bfc0e1c0:	158e03fb 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e1c4:	00000000 	nop
bfc0e1c8:	3c0e9400 	lui	t6,0x9400
bfc0e1cc:	35ce31dc 	ori	t6,t6,0x31dc
bfc0e1d0:	15ae03f7 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e1d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:125
bfc0e1d8:	3c089c64 	lui	t0,0x9c64
bfc0e1dc:	350853dd 	ori	t0,t0,0x53dd
bfc0e1e0:	3c097524 	lui	t1,0x7524
bfc0e1e4:	3529dda8 	ori	t1,t1,0xdda8
bfc0e1e8:	3c0a3655 	lui	t2,0x3655
bfc0e1ec:	354a6ab9 	ori	t2,t2,0x6ab9
bfc0e1f0:	3c0b969a 	lui	t3,0x969a
bfc0e1f4:	356b0376 	ori	t3,t3,0x376
bfc0e1f8:	01600011 	mthi	t3
bfc0e1fc:	01400013 	mtlo	t2
bfc0e200:	71090000 	madd	t0,t1
bfc0e204:	00006010 	mfhi	t4
bfc0e208:	00006812 	mflo	t5
bfc0e20c:	3c0e6905 	lui	t6,0x6905
bfc0e210:	35ce85a7 	ori	t6,t6,0x85a7
bfc0e214:	158e03e6 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e218:	00000000 	nop
bfc0e21c:	3c0e40a6 	lui	t6,0x40a6
bfc0e220:	35ce3cc1 	ori	t6,t6,0x3cc1
bfc0e224:	15ae03e2 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e228:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:126
bfc0e22c:	3c083293 	lui	t0,0x3293
bfc0e230:	3508551a 	ori	t0,t0,0x551a
bfc0e234:	3c09ee61 	lui	t1,0xee61
bfc0e238:	3529276d 	ori	t1,t1,0x276d
bfc0e23c:	3c0ae1bb 	lui	t2,0xe1bb
bfc0e240:	354ab664 	ori	t2,t2,0xb664
bfc0e244:	3c0b8a60 	lui	t3,0x8a60
bfc0e248:	356bafa0 	ori	t3,t3,0xafa0
bfc0e24c:	01600011 	mthi	t3
bfc0e250:	01400013 	mtlo	t2
bfc0e254:	71090000 	madd	t0,t1
bfc0e258:	00006010 	mfhi	t4
bfc0e25c:	00006812 	mflo	t5
bfc0e260:	3c0e86e5 	lui	t6,0x86e5
bfc0e264:	35ce8541 	ori	t6,t6,0x8541
bfc0e268:	158e03d1 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e26c:	00000000 	nop
bfc0e270:	3c0e4747 	lui	t6,0x4747
bfc0e274:	35cee876 	ori	t6,t6,0xe876
bfc0e278:	15ae03cd 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e27c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:127
bfc0e280:	3c08b756 	lui	t0,0xb756
bfc0e284:	35081b40 	ori	t0,t0,0x1b40
bfc0e288:	3c0976f5 	lui	t1,0x76f5
bfc0e28c:	352962c3 	ori	t1,t1,0x62c3
bfc0e290:	3c0a0394 	lui	t2,0x394
bfc0e294:	354a9391 	ori	t2,t2,0x9391
bfc0e298:	3c0b4e30 	lui	t3,0x4e30
bfc0e29c:	356b2dbb 	ori	t3,t3,0x2dbb
bfc0e2a0:	01600011 	mthi	t3
bfc0e2a4:	01400013 	mtlo	t2
bfc0e2a8:	71090000 	madd	t0,t1
bfc0e2ac:	00006010 	mfhi	t4
bfc0e2b0:	00006812 	mflo	t5
bfc0e2b4:	3c0e2c6c 	lui	t6,0x2c6c
bfc0e2b8:	35ce37aa 	ori	t6,t6,0x37aa
bfc0e2bc:	158e03bc 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e2c0:	00000000 	nop
bfc0e2c4:	3c0e34d9 	lui	t6,0x34d9
bfc0e2c8:	35ced551 	ori	t6,t6,0xd551
bfc0e2cc:	15ae03b8 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e2d0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:128
bfc0e2d4:	3c082794 	lui	t0,0x2794
bfc0e2d8:	35086597 	ori	t0,t0,0x6597
bfc0e2dc:	3c09765f 	lui	t1,0x765f
bfc0e2e0:	35291532 	ori	t1,t1,0x1532
bfc0e2e4:	3c0a331b 	lui	t2,0x331b
bfc0e2e8:	354a32ba 	ori	t2,t2,0x32ba
bfc0e2ec:	3c0b57ac 	lui	t3,0x57ac
bfc0e2f0:	356b1cdd 	ori	t3,t3,0x1cdd
bfc0e2f4:	01600011 	mthi	t3
bfc0e2f8:	01400013 	mtlo	t2
bfc0e2fc:	71090000 	madd	t0,t1
bfc0e300:	00006010 	mfhi	t4
bfc0e304:	00006812 	mflo	t5
bfc0e308:	3c0e69f9 	lui	t6,0x69f9
bfc0e30c:	35ce3709 	ori	t6,t6,0x3709
bfc0e310:	158e03a7 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e314:	00000000 	nop
bfc0e318:	3c0e6775 	lui	t6,0x6775
bfc0e31c:	35ce6d38 	ori	t6,t6,0x6d38
bfc0e320:	15ae03a3 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e324:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:129
bfc0e328:	3c0860cf 	lui	t0,0x60cf
bfc0e32c:	3508b639 	ori	t0,t0,0xb639
bfc0e330:	3c09ac03 	lui	t1,0xac03
bfc0e334:	3529a24e 	ori	t1,t1,0xa24e
bfc0e338:	3c0acc7b 	lui	t2,0xcc7b
bfc0e33c:	354ae95a 	ori	t2,t2,0xe95a
bfc0e340:	3c0bbd67 	lui	t3,0xbd67
bfc0e344:	356b14ba 	ori	t3,t3,0x14ba
bfc0e348:	01600011 	mthi	t3
bfc0e34c:	01400013 	mtlo	t2
bfc0e350:	71090000 	madd	t0,t1
bfc0e354:	00006010 	mfhi	t4
bfc0e358:	00006812 	mflo	t5
bfc0e35c:	3c0e9da4 	lui	t6,0x9da4
bfc0e360:	35ce4cbf 	ori	t6,t6,0x4cbf
bfc0e364:	158e0392 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e368:	00000000 	nop
bfc0e36c:	3c0e2bc0 	lui	t6,0x2bc0
bfc0e370:	35ce80b8 	ori	t6,t6,0x80b8
bfc0e374:	15ae038e 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e378:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:130
bfc0e37c:	3c0849ce 	lui	t0,0x49ce
bfc0e380:	3508e7b5 	ori	t0,t0,0xe7b5
bfc0e384:	3c09aab3 	lui	t1,0xaab3
bfc0e388:	35299695 	ori	t1,t1,0x9695
bfc0e38c:	3c0a6b49 	lui	t2,0x6b49
bfc0e390:	354af921 	ori	t2,t2,0xf921
bfc0e394:	3c0ba1ba 	lui	t3,0xa1ba
bfc0e398:	356bf04a 	ori	t3,t3,0xf04a
bfc0e39c:	01600011 	mthi	t3
bfc0e3a0:	01400013 	mtlo	t2
bfc0e3a4:	71090000 	madd	t0,t1
bfc0e3a8:	00006010 	mfhi	t4
bfc0e3ac:	00006812 	mflo	t5
bfc0e3b0:	3c0e8923 	lui	t6,0x8923
bfc0e3b4:	35ce3589 	ori	t6,t6,0x3589
bfc0e3b8:	158e037d 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e3bc:	00000000 	nop
bfc0e3c0:	3c0ed209 	lui	t6,0xd209
bfc0e3c4:	35cee37a 	ori	t6,t6,0xe37a
bfc0e3c8:	15ae0379 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e3cc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:131
bfc0e3d0:	3c08b929 	lui	t0,0xb929
bfc0e3d4:	3508a021 	ori	t0,t0,0xa021
bfc0e3d8:	3c09f284 	lui	t1,0xf284
bfc0e3dc:	3529d22b 	ori	t1,t1,0xd22b
bfc0e3e0:	3c0ae884 	lui	t2,0xe884
bfc0e3e4:	354a9d4b 	ori	t2,t2,0x9d4b
bfc0e3e8:	3c0bba00 	lui	t3,0xba00
bfc0e3ec:	356bb2a5 	ori	t3,t3,0xb2a5
bfc0e3f0:	01600011 	mthi	t3
bfc0e3f4:	01400013 	mtlo	t2
bfc0e3f8:	71090000 	madd	t0,t1
bfc0e3fc:	00006010 	mfhi	t4
bfc0e400:	00006812 	mflo	t5
bfc0e404:	3c0ebdbb 	lui	t6,0xbdbb
bfc0e408:	35ceab31 	ori	t6,t6,0xab31
bfc0e40c:	158e0368 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e410:	00000000 	nop
bfc0e414:	3c0eeae1 	lui	t6,0xeae1
bfc0e418:	35ce94d6 	ori	t6,t6,0x94d6
bfc0e41c:	15ae0364 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e420:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:132
bfc0e424:	3c086522 	lui	t0,0x6522
bfc0e428:	3508a926 	ori	t0,t0,0xa926
bfc0e42c:	3c09c392 	lui	t1,0xc392
bfc0e430:	35293554 	ori	t1,t1,0x3554
bfc0e434:	3c0a02c0 	lui	t2,0x2c0
bfc0e438:	354ad232 	ori	t2,t2,0xd232
bfc0e43c:	3c0b2ef4 	lui	t3,0x2ef4
bfc0e440:	356bbabd 	ori	t3,t3,0xbabd
bfc0e444:	01600011 	mthi	t3
bfc0e448:	01400013 	mtlo	t2
bfc0e44c:	71090000 	madd	t0,t1
bfc0e450:	00006010 	mfhi	t4
bfc0e454:	00006812 	mflo	t5
bfc0e458:	3c0e1715 	lui	t6,0x1715
bfc0e45c:	35ce3b44 	ori	t6,t6,0x3b44
bfc0e460:	158e0353 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e464:	00000000 	nop
bfc0e468:	3c0ec8d1 	lui	t6,0xc8d1
bfc0e46c:	35ce30aa 	ori	t6,t6,0x30aa
bfc0e470:	15ae034f 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e474:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:133
bfc0e478:	3c0860ea 	lui	t0,0x60ea
bfc0e47c:	3508e20f 	ori	t0,t0,0xe20f
bfc0e480:	3c097ab5 	lui	t1,0x7ab5
bfc0e484:	3529a95e 	ori	t1,t1,0xa95e
bfc0e488:	3c0abfac 	lui	t2,0xbfac
bfc0e48c:	354a8d55 	ori	t2,t2,0x8d55
bfc0e490:	3c0b7a86 	lui	t3,0x7a86
bfc0e494:	356b6476 	ori	t3,t3,0x6476
bfc0e498:	01600011 	mthi	t3
bfc0e49c:	01400013 	mtlo	t2
bfc0e4a0:	71090000 	madd	t0,t1
bfc0e4a4:	00006010 	mfhi	t4
bfc0e4a8:	00006812 	mflo	t5
bfc0e4ac:	3c0ea8fb 	lui	t6,0xa8fb
bfc0e4b0:	35ce1a61 	ori	t6,t6,0x1a61
bfc0e4b4:	158e033e 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e4b8:	00000000 	nop
bfc0e4bc:	3c0e5fc2 	lui	t6,0x5fc2
bfc0e4c0:	35ce75d7 	ori	t6,t6,0x75d7
bfc0e4c4:	15ae033a 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e4c8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:134
bfc0e4cc:	3c081186 	lui	t0,0x1186
bfc0e4d0:	3508587e 	ori	t0,t0,0x587e
bfc0e4d4:	3c097235 	lui	t1,0x7235
bfc0e4d8:	35298bb3 	ori	t1,t1,0x8bb3
bfc0e4dc:	3c0a1abe 	lui	t2,0x1abe
bfc0e4e0:	354a87ac 	ori	t2,t2,0x87ac
bfc0e4e4:	3c0bcf3b 	lui	t3,0xcf3b
bfc0e4e8:	356bd07f 	ori	t3,t3,0xd07f
bfc0e4ec:	01600011 	mthi	t3
bfc0e4f0:	01400013 	mtlo	t2
bfc0e4f4:	71090000 	madd	t0,t1
bfc0e4f8:	00006010 	mfhi	t4
bfc0e4fc:	00006812 	mflo	t5
bfc0e500:	3c0ed70d 	lui	t6,0xd70d
bfc0e504:	35ce4e47 	ori	t6,t6,0x4e47
bfc0e508:	158e0329 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e50c:	00000000 	nop
bfc0e510:	3c0ebbd0 	lui	t6,0xbbd0
bfc0e514:	35ced1c6 	ori	t6,t6,0xd1c6
bfc0e518:	15ae0325 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e51c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:135
bfc0e520:	3c0825b5 	lui	t0,0x25b5
bfc0e524:	35080de3 	ori	t0,t0,0xde3
bfc0e528:	3c092bff 	lui	t1,0x2bff
bfc0e52c:	3529dafc 	ori	t1,t1,0xdafc
bfc0e530:	3c0ae615 	lui	t2,0xe615
bfc0e534:	354a4719 	ori	t2,t2,0x4719
bfc0e538:	3c0b7c40 	lui	t3,0x7c40
bfc0e53c:	356b38e5 	ori	t3,t3,0x38e5
bfc0e540:	01600011 	mthi	t3
bfc0e544:	01400013 	mtlo	t2
bfc0e548:	71090000 	madd	t0,t1
bfc0e54c:	00006010 	mfhi	t4
bfc0e550:	00006812 	mflo	t5
bfc0e554:	3c0e82bb 	lui	t6,0x82bb
bfc0e558:	35ce51d4 	ori	t6,t6,0x51d4
bfc0e55c:	158e0314 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e560:	00000000 	nop
bfc0e564:	3c0e283f 	lui	t6,0x283f
bfc0e568:	35ce408d 	ori	t6,t6,0x408d
bfc0e56c:	15ae0310 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e570:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:136
bfc0e574:	3c082e5d 	lui	t0,0x2e5d
bfc0e578:	35088ae5 	ori	t0,t0,0x8ae5
bfc0e57c:	3c09e8b4 	lui	t1,0xe8b4
bfc0e580:	3529c213 	ori	t1,t1,0xc213
bfc0e584:	3c0ab338 	lui	t2,0xb338
bfc0e588:	354a14e5 	ori	t2,t2,0x14e5
bfc0e58c:	3c0beb51 	lui	t3,0xeb51
bfc0e590:	356b1a7d 	ori	t3,t3,0x1a7d
bfc0e594:	01600011 	mthi	t3
bfc0e598:	01400013 	mtlo	t2
bfc0e59c:	71090000 	madd	t0,t1
bfc0e5a0:	00006010 	mfhi	t4
bfc0e5a4:	00006812 	mflo	t5
bfc0e5a8:	3c0ee719 	lui	t6,0xe719
bfc0e5ac:	35ce1263 	ori	t6,t6,0x1263
bfc0e5b0:	158e02ff 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e5b4:	00000000 	nop
bfc0e5b8:	3c0e386e 	lui	t6,0x386e
bfc0e5bc:	35ceede4 	ori	t6,t6,0xede4
bfc0e5c0:	15ae02fb 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e5c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:137
bfc0e5c8:	3c084931 	lui	t0,0x4931
bfc0e5cc:	35081119 	ori	t0,t0,0x1119
bfc0e5d0:	3c094221 	lui	t1,0x4221
bfc0e5d4:	3529c5df 	ori	t1,t1,0xc5df
bfc0e5d8:	3c0a4cb3 	lui	t2,0x4cb3
bfc0e5dc:	354a2386 	ori	t2,t2,0x2386
bfc0e5e0:	3c0bec59 	lui	t3,0xec59
bfc0e5e4:	356b21da 	ori	t3,t3,0x21da
bfc0e5e8:	01600011 	mthi	t3
bfc0e5ec:	01400013 	mtlo	t2
bfc0e5f0:	71090000 	madd	t0,t1
bfc0e5f4:	00006010 	mfhi	t4
bfc0e5f8:	00006812 	mflo	t5
bfc0e5fc:	3c0eff41 	lui	t6,0xff41
bfc0e600:	35ce7028 	ori	t6,t6,0x7028
bfc0e604:	158e02ea 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e608:	00000000 	nop
bfc0e60c:	3c0e76d2 	lui	t6,0x76d2
bfc0e610:	35ce454d 	ori	t6,t6,0x454d
bfc0e614:	15ae02e6 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e618:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:138
bfc0e61c:	3c080c7a 	lui	t0,0xc7a
bfc0e620:	3508f836 	ori	t0,t0,0xf836
bfc0e624:	3c095b09 	lui	t1,0x5b09
bfc0e628:	3529cda3 	ori	t1,t1,0xcda3
bfc0e62c:	3c0a5657 	lui	t2,0x5657
bfc0e630:	354a0542 	ori	t2,t2,0x542
bfc0e634:	3c0bf731 	lui	t3,0xf731
bfc0e638:	356b9891 	ori	t3,t3,0x9891
bfc0e63c:	01600011 	mthi	t3
bfc0e640:	01400013 	mtlo	t2
bfc0e644:	71090000 	madd	t0,t1
bfc0e648:	00006010 	mfhi	t4
bfc0e64c:	00006812 	mflo	t5
bfc0e650:	3c0efba1 	lui	t6,0xfba1
bfc0e654:	35cec925 	ori	t6,t6,0xc925
bfc0e658:	158e02d5 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e65c:	00000000 	nop
bfc0e660:	3c0ead4c 	lui	t6,0xad4c
bfc0e664:	35ce4da4 	ori	t6,t6,0x4da4
bfc0e668:	15ae02d1 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e66c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:139
bfc0e670:	3c084a0d 	lui	t0,0x4a0d
bfc0e674:	35085a7c 	ori	t0,t0,0x5a7c
bfc0e678:	3c09393c 	lui	t1,0x393c
bfc0e67c:	352983bf 	ori	t1,t1,0x83bf
bfc0e680:	3c0ad932 	lui	t2,0xd932
bfc0e684:	354a953d 	ori	t2,t2,0x953d
bfc0e688:	3c0b6305 	lui	t3,0x6305
bfc0e68c:	356b7571 	ori	t3,t3,0x7571
bfc0e690:	01600011 	mthi	t3
bfc0e694:	01400013 	mtlo	t2
bfc0e698:	71090000 	madd	t0,t1
bfc0e69c:	00006010 	mfhi	t4
bfc0e6a0:	00006812 	mflo	t5
bfc0e6a4:	3c0e7393 	lui	t6,0x7393
bfc0e6a8:	35ceefd3 	ori	t6,t6,0xefd3
bfc0e6ac:	158e02c0 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e6b0:	00000000 	nop
bfc0e6b4:	3c0ebf86 	lui	t6,0xbf86
bfc0e6b8:	35ce8bc1 	ori	t6,t6,0x8bc1
bfc0e6bc:	15ae02bc 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e6c0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:140
bfc0e6c4:	3c08db90 	lui	t0,0xdb90
bfc0e6c8:	35086f30 	ori	t0,t0,0x6f30
bfc0e6cc:	3c090eaf 	lui	t1,0xeaf
bfc0e6d0:	3529a7d0 	ori	t1,t1,0xa7d0
bfc0e6d4:	240a0001 	li	t2,1
bfc0e6d8:	240b0001 	li	t3,1
bfc0e6dc:	01600011 	mthi	t3
bfc0e6e0:	01400013 	mtlo	t2
bfc0e6e4:	71090000 	madd	t0,t1
bfc0e6e8:	00006010 	mfhi	t4
bfc0e6ec:	00006812 	mflo	t5
bfc0e6f0:	3c0efde8 	lui	t6,0xfde8
bfc0e6f4:	35cee5ef 	ori	t6,t6,0xe5ef
bfc0e6f8:	158e02ad 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e6fc:	00000000 	nop
bfc0e700:	3c0e3fb2 	lui	t6,0x3fb2
bfc0e704:	35cea701 	ori	t6,t6,0xa701
bfc0e708:	15ae02a9 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e70c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:141
bfc0e710:	3c085aa5 	lui	t0,0x5aa5
bfc0e714:	3508b57e 	ori	t0,t0,0xb57e
bfc0e718:	3c09eb13 	lui	t1,0xeb13
bfc0e71c:	35298c80 	ori	t1,t1,0x8c80
bfc0e720:	240a0001 	li	t2,1
bfc0e724:	240b0001 	li	t3,1
bfc0e728:	01600011 	mthi	t3
bfc0e72c:	01400013 	mtlo	t2
bfc0e730:	71090000 	madd	t0,t1
bfc0e734:	00006010 	mfhi	t4
bfc0e738:	00006812 	mflo	t5
bfc0e73c:	3c0ef897 	lui	t6,0xf897
bfc0e740:	35ce542a 	ori	t6,t6,0x542a
bfc0e744:	158e029a 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e748:	00000000 	nop
bfc0e74c:	3c0e1475 	lui	t6,0x1475
bfc0e750:	35cea701 	ori	t6,t6,0xa701
bfc0e754:	15ae0296 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e758:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:142
bfc0e75c:	3c08bc61 	lui	t0,0xbc61
bfc0e760:	3508fc9c 	ori	t0,t0,0xfc9c
bfc0e764:	3c092c0b 	lui	t1,0x2c0b
bfc0e768:	35290f78 	ori	t1,t1,0xf78
bfc0e76c:	240a0001 	li	t2,1
bfc0e770:	240b0001 	li	t3,1
bfc0e774:	01600011 	mthi	t3
bfc0e778:	01400013 	mtlo	t2
bfc0e77c:	71090000 	madd	t0,t1
bfc0e780:	00006010 	mfhi	t4
bfc0e784:	00006812 	mflo	t5
bfc0e788:	3c0ef45d 	lui	t6,0xf45d
bfc0e78c:	35ceeb8b 	ori	t6,t6,0xeb8b
bfc0e790:	158e0287 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e794:	00000000 	nop
bfc0e798:	3c0eb66f 	lui	t6,0xb66f
bfc0e79c:	35ce8d21 	ori	t6,t6,0x8d21
bfc0e7a0:	15ae0283 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e7a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:143
bfc0e7a8:	3c088b35 	lui	t0,0x8b35
bfc0e7ac:	350866b7 	ori	t0,t0,0x66b7
bfc0e7b0:	3c092b02 	lui	t1,0x2b02
bfc0e7b4:	35291ecc 	ori	t1,t1,0x1ecc
bfc0e7b8:	240a0001 	li	t2,1
bfc0e7bc:	240b0001 	li	t3,1
bfc0e7c0:	01600011 	mthi	t3
bfc0e7c4:	01400013 	mtlo	t2
bfc0e7c8:	71090000 	madd	t0,t1
bfc0e7cc:	00006010 	mfhi	t4
bfc0e7d0:	00006812 	mflo	t5
bfc0e7d4:	3c0eec61 	lui	t6,0xec61
bfc0e7d8:	35ce009f 	ori	t6,t6,0x9f
bfc0e7dc:	158e0274 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e7e0:	00000000 	nop
bfc0e7e4:	3c0ebb05 	lui	t6,0xbb05
bfc0e7e8:	35ce4bd5 	ori	t6,t6,0x4bd5
bfc0e7ec:	15ae0270 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e7f0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:144
bfc0e7f4:	3c08666e 	lui	t0,0x666e
bfc0e7f8:	350854e8 	ori	t0,t0,0x54e8
bfc0e7fc:	3c09ed91 	lui	t1,0xed91
bfc0e800:	3529452c 	ori	t1,t1,0x452c
bfc0e804:	240a0001 	li	t2,1
bfc0e808:	240b0001 	li	t3,1
bfc0e80c:	01600011 	mthi	t3
bfc0e810:	01400013 	mtlo	t2
bfc0e814:	71090000 	madd	t0,t1
bfc0e818:	00006010 	mfhi	t4
bfc0e81c:	00006812 	mflo	t5
bfc0e820:	3c0ef89f 	lui	t6,0xf89f
bfc0e824:	35ceefdf 	ori	t6,t6,0xefdf
bfc0e828:	158e0261 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e82c:	00000000 	nop
bfc0e830:	3c0e3741 	lui	t6,0x3741
bfc0e834:	35ce1fe1 	ori	t6,t6,0x1fe1
bfc0e838:	15ae025d 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e83c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:145
bfc0e840:	3c08c6e5 	lui	t0,0xc6e5
bfc0e844:	35089380 	ori	t0,t0,0x9380
bfc0e848:	3c09fa93 	lui	t1,0xfa93
bfc0e84c:	35295180 	ori	t1,t1,0x5180
bfc0e850:	240a0001 	li	t2,1
bfc0e854:	240b0001 	li	t3,1
bfc0e858:	01600011 	mthi	t3
bfc0e85c:	01400013 	mtlo	t2
bfc0e860:	71090000 	madd	t0,t1
bfc0e864:	00006010 	mfhi	t4
bfc0e868:	00006812 	mflo	t5
bfc0e86c:	3c0e0135 	lui	t6,0x135
bfc0e870:	35cec231 	ori	t6,t6,0xc231
bfc0e874:	158e024e 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e878:	00000000 	nop
bfc0e87c:	3c0ec8f5 	lui	t6,0xc8f5
bfc0e880:	35ce4001 	ori	t6,t6,0x4001
bfc0e884:	15ae024a 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e888:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:146
bfc0e88c:	3c08d921 	lui	t0,0xd921
bfc0e890:	3508e0b0 	ori	t0,t0,0xe0b0
bfc0e894:	3c091f7d 	lui	t1,0x1f7d
bfc0e898:	352965c0 	ori	t1,t1,0x65c0
bfc0e89c:	240a0001 	li	t2,1
bfc0e8a0:	240b0001 	li	t3,1
bfc0e8a4:	01600011 	mthi	t3
bfc0e8a8:	01400013 	mtlo	t2
bfc0e8ac:	71090000 	madd	t0,t1
bfc0e8b0:	00006010 	mfhi	t4
bfc0e8b4:	00006812 	mflo	t5
bfc0e8b8:	3c0efb38 	lui	t6,0xfb38
bfc0e8bc:	35ce104e 	ori	t6,t6,0x104e
bfc0e8c0:	158e023b 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e8c4:	00000000 	nop
bfc0e8c8:	3c0e3cfd 	lui	t6,0x3cfd
bfc0e8cc:	35cef401 	ori	t6,t6,0xf401
bfc0e8d0:	15ae0237 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e8d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:147
bfc0e8d8:	3c087b8d 	lui	t0,0x7b8d
bfc0e8dc:	3508b2e2 	ori	t0,t0,0xb2e2
bfc0e8e0:	3c0984d3 	lui	t1,0x84d3
bfc0e8e4:	35297b50 	ori	t1,t1,0x7b50
bfc0e8e8:	240a0001 	li	t2,1
bfc0e8ec:	240b0001 	li	t3,1
bfc0e8f0:	01600011 	mthi	t3
bfc0e8f4:	01400013 	mtlo	t2
bfc0e8f8:	71090000 	madd	t0,t1
bfc0e8fc:	00006010 	mfhi	t4
bfc0e900:	00006812 	mflo	t5
bfc0e904:	3c0ec48d 	lui	t6,0xc48d
bfc0e908:	35ce6ea9 	ori	t6,t6,0x6ea9
bfc0e90c:	158e0228 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e910:	00000000 	nop
bfc0e914:	3c0ea980 	lui	t6,0xa980
bfc0e918:	35ce7ca1 	ori	t6,t6,0x7ca1
bfc0e91c:	15ae0224 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e920:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:148
bfc0e924:	3c08f89e 	lui	t0,0xf89e
bfc0e928:	35081b58 	ori	t0,t0,0x1b58
bfc0e92c:	3c0926be 	lui	t1,0x26be
bfc0e930:	352932a0 	ori	t1,t1,0x32a0
bfc0e934:	240a0001 	li	t2,1
bfc0e938:	240b0001 	li	t3,1
bfc0e93c:	01600011 	mthi	t3
bfc0e940:	01400013 	mtlo	t2
bfc0e944:	71090000 	madd	t0,t1
bfc0e948:	00006010 	mfhi	t4
bfc0e94c:	00006812 	mflo	t5
bfc0e950:	3c0efee1 	lui	t6,0xfee1
bfc0e954:	35cefbf2 	ori	t6,t6,0xfbf2
bfc0e958:	158e0215 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e95c:	00000000 	nop
bfc0e960:	3c0e9f78 	lui	t6,0x9f78
bfc0e964:	35ce4701 	ori	t6,t6,0x4701
bfc0e968:	15ae0211 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e96c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:149
bfc0e970:	3c08524a 	lui	t0,0x524a
bfc0e974:	3508a0a6 	ori	t0,t0,0xa0a6
bfc0e978:	3c090b33 	lui	t1,0xb33
bfc0e97c:	35294594 	ori	t1,t1,0x4594
bfc0e980:	240a0001 	li	t2,1
bfc0e984:	240b0001 	li	t3,1
bfc0e988:	01600011 	mthi	t3
bfc0e98c:	01400013 	mtlo	t2
bfc0e990:	71090000 	madd	t0,t1
bfc0e994:	00006010 	mfhi	t4
bfc0e998:	00006812 	mflo	t5
bfc0e99c:	3c0e0399 	lui	t6,0x399
bfc0e9a0:	35ceb023 	ori	t6,t6,0xb023
bfc0e9a4:	158e0202 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e9a8:	00000000 	nop
bfc0e9ac:	3c0ed383 	lui	t6,0xd383
bfc0e9b0:	35ce9df9 	ori	t6,t6,0x9df9
bfc0e9b4:	15ae01fe 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0e9b8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:150
bfc0e9bc:	3c08a3be 	lui	t0,0xa3be
bfc0e9c0:	350810e8 	ori	t0,t0,0x10e8
bfc0e9c4:	3c0918db 	lui	t1,0x18db
bfc0e9c8:	3529c860 	ori	t1,t1,0xc860
bfc0e9cc:	240a0001 	li	t2,1
bfc0e9d0:	240b0001 	li	t3,1
bfc0e9d4:	01600011 	mthi	t3
bfc0e9d8:	01400013 	mtlo	t2
bfc0e9dc:	71090000 	madd	t0,t1
bfc0e9e0:	00006010 	mfhi	t4
bfc0e9e4:	00006812 	mflo	t5
bfc0e9e8:	3c0ef70a 	lui	t6,0xf70a
bfc0e9ec:	35ce9cf9 	ori	t6,t6,0x9cf9
bfc0e9f0:	158e01ef 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0e9f4:	00000000 	nop
bfc0e9f8:	3c0e1af3 	lui	t6,0x1af3
bfc0e9fc:	35ce9701 	ori	t6,t6,0x9701
bfc0ea00:	15ae01eb 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ea04:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:151
bfc0ea08:	3c08073c 	lui	t0,0x73c
bfc0ea0c:	3508f5be 	ori	t0,t0,0xf5be
bfc0ea10:	3c094fbf 	lui	t1,0x4fbf
bfc0ea14:	35294882 	ori	t1,t1,0x4882
bfc0ea18:	240a0001 	li	t2,1
bfc0ea1c:	240b0001 	li	t3,1
bfc0ea20:	01600011 	mthi	t3
bfc0ea24:	01400013 	mtlo	t2
bfc0ea28:	71090000 	madd	t0,t1
bfc0ea2c:	00006010 	mfhi	t4
bfc0ea30:	00006812 	mflo	t5
bfc0ea34:	3c0e0241 	lui	t6,0x241
bfc0ea38:	35ce385e 	ori	t6,t6,0x385e
bfc0ea3c:	158e01dc 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ea40:	00000000 	nop
bfc0ea44:	3c0eccd4 	lui	t6,0xccd4
bfc0ea48:	35ce3a7d 	ori	t6,t6,0x3a7d
bfc0ea4c:	15ae01d8 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ea50:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:152
bfc0ea54:	3c0891db 	lui	t0,0x91db
bfc0ea58:	35087100 	ori	t0,t0,0x7100
bfc0ea5c:	3c091f78 	lui	t1,0x1f78
bfc0ea60:	3529ebb0 	ori	t1,t1,0xebb0
bfc0ea64:	240a0001 	li	t2,1
bfc0ea68:	240b0001 	li	t3,1
bfc0ea6c:	01600011 	mthi	t3
bfc0ea70:	01400013 	mtlo	t2
bfc0ea74:	71090000 	madd	t0,t1
bfc0ea78:	00006010 	mfhi	t4
bfc0ea7c:	00006812 	mflo	t5
bfc0ea80:	3c0ef275 	lui	t6,0xf275
bfc0ea84:	35ce8c25 	ori	t6,t6,0x8c25
bfc0ea88:	158e01c9 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ea8c:	00000000 	nop
bfc0ea90:	3c0eaf98 	lui	t6,0xaf98
bfc0ea94:	35ceb001 	ori	t6,t6,0xb001
bfc0ea98:	15ae01c5 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ea9c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:153
bfc0eaa0:	3c08c49e 	lui	t0,0xc49e
bfc0eaa4:	350836d8 	ori	t0,t0,0x36d8
bfc0eaa8:	3c092044 	lui	t1,0x2044
bfc0eaac:	3529fa90 	ori	t1,t1,0xfa90
bfc0eab0:	240a0001 	li	t2,1
bfc0eab4:	240b0001 	li	t3,1
bfc0eab8:	01600011 	mthi	t3
bfc0eabc:	01400013 	mtlo	t2
bfc0eac0:	71090000 	madd	t0,t1
bfc0eac4:	00006010 	mfhi	t4
bfc0eac8:	00006812 	mflo	t5
bfc0eacc:	3c0ef883 	lui	t6,0xf883
bfc0ead0:	35cec6c3 	ori	t6,t6,0xc6c3
bfc0ead4:	158e01b6 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ead8:	00000000 	nop
bfc0eadc:	3c0eabed 	lui	t6,0xabed
bfc0eae0:	35cec981 	ori	t6,t6,0xc981
bfc0eae4:	15ae01b2 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0eae8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:154
bfc0eaec:	3c08af4a 	lui	t0,0xaf4a
bfc0eaf0:	3508b2b8 	ori	t0,t0,0xb2b8
bfc0eaf4:	3c09f008 	lui	t1,0xf008
bfc0eaf8:	35296f40 	ori	t1,t1,0x6f40
bfc0eafc:	240a0001 	li	t2,1
bfc0eb00:	240b0001 	li	t3,1
bfc0eb04:	01600011 	mthi	t3
bfc0eb08:	01400013 	mtlo	t2
bfc0eb0c:	71090000 	madd	t0,t1
bfc0eb10:	00006010 	mfhi	t4
bfc0eb14:	00006812 	mflo	t5
bfc0eb18:	3c0e0508 	lui	t6,0x508
bfc0eb1c:	35ceac18 	ori	t6,t6,0xac18
bfc0eb20:	158e01a3 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0eb24:	00000000 	nop
bfc0eb28:	3c0e4bea 	lui	t6,0x4bea
bfc0eb2c:	35ce7601 	ori	t6,t6,0x7601
bfc0eb30:	15ae019f 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0eb34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:155
bfc0eb38:	3c08c72f 	lui	t0,0xc72f
bfc0eb3c:	35080de2 	ori	t0,t0,0xde2
bfc0eb40:	3c09407a 	lui	t1,0x407a
bfc0eb44:	352926e0 	ori	t1,t1,0x26e0
bfc0eb48:	240a0001 	li	t2,1
bfc0eb4c:	240b0001 	li	t3,1
bfc0eb50:	01600011 	mthi	t3
bfc0eb54:	01400013 	mtlo	t2
bfc0eb58:	71090000 	madd	t0,t1
bfc0eb5c:	00006010 	mfhi	t4
bfc0eb60:	00006812 	mflo	t5
bfc0eb64:	3c0ef1b0 	lui	t6,0xf1b0
bfc0eb68:	35cea745 	ori	t6,t6,0xa745
bfc0eb6c:	158e0190 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0eb70:	00000000 	nop
bfc0eb74:	3c0e62ef 	lui	t6,0x62ef
bfc0eb78:	35ceb1c1 	ori	t6,t6,0xb1c1
bfc0eb7c:	15ae018c 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0eb80:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:156
bfc0eb84:	3c0895d2 	lui	t0,0x95d2
bfc0eb88:	35086876 	ori	t0,t0,0x6876
bfc0eb8c:	3c099aae 	lui	t1,0x9aae
bfc0eb90:	3529ce1c 	ori	t1,t1,0xce1c
bfc0eb94:	240a0001 	li	t2,1
bfc0eb98:	240b0001 	li	t3,1
bfc0eb9c:	01600011 	mthi	t3
bfc0eba0:	01400013 	mtlo	t2
bfc0eba4:	71090000 	madd	t0,t1
bfc0eba8:	00006010 	mfhi	t4
bfc0ebac:	00006812 	mflo	t5
bfc0ebb0:	3c0e2a05 	lui	t6,0x2a05
bfc0ebb4:	35cea9e8 	ori	t6,t6,0xa9e8
bfc0ebb8:	158e017d 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ebbc:	00000000 	nop
bfc0ebc0:	3c0eaf46 	lui	t6,0xaf46
bfc0ebc4:	35ce60e9 	ori	t6,t6,0x60e9
bfc0ebc8:	15ae0179 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ebcc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:157
bfc0ebd0:	3c0872e2 	lui	t0,0x72e2
bfc0ebd4:	3508ec10 	ori	t0,t0,0xec10
bfc0ebd8:	3c09b909 	lui	t1,0xb909
bfc0ebdc:	35298e00 	ori	t1,t1,0x8e00
bfc0ebe0:	240a0001 	li	t2,1
bfc0ebe4:	240b0001 	li	t3,1
bfc0ebe8:	01600011 	mthi	t3
bfc0ebec:	01400013 	mtlo	t2
bfc0ebf0:	71090000 	madd	t0,t1
bfc0ebf4:	00006010 	mfhi	t4
bfc0ebf8:	00006812 	mflo	t5
bfc0ebfc:	3c0ee027 	lui	t6,0xe027
bfc0ec00:	35ce5a3c 	ori	t6,t6,0x5a3c
bfc0ec04:	158e016a 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ec08:	00000000 	nop
bfc0ec0c:	3c0ebb80 	lui	t6,0xbb80
bfc0ec10:	35cee001 	ori	t6,t6,0xe001
bfc0ec14:	15ae0166 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ec18:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:158
bfc0ec1c:	3c08deb2 	lui	t0,0xdeb2
bfc0ec20:	35087a9c 	ori	t0,t0,0x7a9c
bfc0ec24:	3c09506c 	lui	t1,0x506c
bfc0ec28:	35290849 	ori	t1,t1,0x849
bfc0ec2c:	240a0001 	li	t2,1
bfc0ec30:	240b0001 	li	t3,1
bfc0ec34:	01600011 	mthi	t3
bfc0ec38:	01400013 	mtlo	t2
bfc0ec3c:	71090000 	madd	t0,t1
bfc0ec40:	00006010 	mfhi	t4
bfc0ec44:	00006812 	mflo	t5
bfc0ec48:	3c0ef589 	lui	t6,0xf589
bfc0ec4c:	35ceb889 	ori	t6,t6,0xb889
bfc0ec50:	158e0157 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ec54:	00000000 	nop
bfc0ec58:	3c0e8e89 	lui	t6,0x8e89
bfc0ec5c:	35ced67d 	ori	t6,t6,0xd67d
bfc0ec60:	15ae0153 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ec64:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:159
bfc0ec68:	3c085301 	lui	t0,0x5301
bfc0ec6c:	350894f0 	ori	t0,t0,0x94f0
bfc0ec70:	24090000 	li	t1,0
bfc0ec74:	240a0001 	li	t2,1
bfc0ec78:	240b0001 	li	t3,1
bfc0ec7c:	01600011 	mthi	t3
bfc0ec80:	01400013 	mtlo	t2
bfc0ec84:	71090000 	madd	t0,t1
bfc0ec88:	00006010 	mfhi	t4
bfc0ec8c:	00006812 	mflo	t5
bfc0ec90:	240e0001 	li	t6,1
bfc0ec94:	158e0146 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ec98:	00000000 	nop
bfc0ec9c:	240e0001 	li	t6,1
bfc0eca0:	15ae0143 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0eca4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:160
bfc0eca8:	3c085a1a 	lui	t0,0x5a1a
bfc0ecac:	35084f60 	ori	t0,t0,0x4f60
bfc0ecb0:	24090000 	li	t1,0
bfc0ecb4:	240a0001 	li	t2,1
bfc0ecb8:	240b0001 	li	t3,1
bfc0ecbc:	01600011 	mthi	t3
bfc0ecc0:	01400013 	mtlo	t2
bfc0ecc4:	71090000 	madd	t0,t1
bfc0ecc8:	00006010 	mfhi	t4
bfc0eccc:	00006812 	mflo	t5
bfc0ecd0:	240e0001 	li	t6,1
bfc0ecd4:	158e0136 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ecd8:	00000000 	nop
bfc0ecdc:	240e0001 	li	t6,1
bfc0ece0:	15ae0133 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ece4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:161
bfc0ece8:	3c085cc4 	lui	t0,0x5cc4
bfc0ecec:	3508e136 	ori	t0,t0,0xe136
bfc0ecf0:	24090000 	li	t1,0
bfc0ecf4:	240a0001 	li	t2,1
bfc0ecf8:	240b0001 	li	t3,1
bfc0ecfc:	01600011 	mthi	t3
bfc0ed00:	01400013 	mtlo	t2
bfc0ed04:	71090000 	madd	t0,t1
bfc0ed08:	00006010 	mfhi	t4
bfc0ed0c:	00006812 	mflo	t5
bfc0ed10:	240e0001 	li	t6,1
bfc0ed14:	158e0126 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ed18:	00000000 	nop
bfc0ed1c:	240e0001 	li	t6,1
bfc0ed20:	15ae0123 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ed24:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:162
bfc0ed28:	3c08ab7a 	lui	t0,0xab7a
bfc0ed2c:	350814c0 	ori	t0,t0,0x14c0
bfc0ed30:	24090000 	li	t1,0
bfc0ed34:	240a0001 	li	t2,1
bfc0ed38:	240b0001 	li	t3,1
bfc0ed3c:	01600011 	mthi	t3
bfc0ed40:	01400013 	mtlo	t2
bfc0ed44:	71090000 	madd	t0,t1
bfc0ed48:	00006010 	mfhi	t4
bfc0ed4c:	00006812 	mflo	t5
bfc0ed50:	240e0001 	li	t6,1
bfc0ed54:	158e0116 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ed58:	00000000 	nop
bfc0ed5c:	240e0001 	li	t6,1
bfc0ed60:	15ae0113 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ed64:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:163
bfc0ed68:	3c0844d1 	lui	t0,0x44d1
bfc0ed6c:	350826d0 	ori	t0,t0,0x26d0
bfc0ed70:	24090000 	li	t1,0
bfc0ed74:	240a0001 	li	t2,1
bfc0ed78:	240b0001 	li	t3,1
bfc0ed7c:	01600011 	mthi	t3
bfc0ed80:	01400013 	mtlo	t2
bfc0ed84:	71090000 	madd	t0,t1
bfc0ed88:	00006010 	mfhi	t4
bfc0ed8c:	00006812 	mflo	t5
bfc0ed90:	240e0001 	li	t6,1
bfc0ed94:	158e0106 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ed98:	00000000 	nop
bfc0ed9c:	240e0001 	li	t6,1
bfc0eda0:	15ae0103 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0eda4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:164
bfc0eda8:	3c080f11 	lui	t0,0xf11
bfc0edac:	35084ff0 	ori	t0,t0,0x4ff0
bfc0edb0:	24090000 	li	t1,0
bfc0edb4:	240a0001 	li	t2,1
bfc0edb8:	240b0001 	li	t3,1
bfc0edbc:	01600011 	mthi	t3
bfc0edc0:	01400013 	mtlo	t2
bfc0edc4:	71090000 	madd	t0,t1
bfc0edc8:	00006010 	mfhi	t4
bfc0edcc:	00006812 	mflo	t5
bfc0edd0:	240e0001 	li	t6,1
bfc0edd4:	158e00f6 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0edd8:	00000000 	nop
bfc0eddc:	240e0001 	li	t6,1
bfc0ede0:	15ae00f3 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ede4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:165
bfc0ede8:	3c0860bf 	lui	t0,0x60bf
bfc0edec:	3508e48e 	ori	t0,t0,0xe48e
bfc0edf0:	24090000 	li	t1,0
bfc0edf4:	240a0001 	li	t2,1
bfc0edf8:	240b0001 	li	t3,1
bfc0edfc:	01600011 	mthi	t3
bfc0ee00:	01400013 	mtlo	t2
bfc0ee04:	71090000 	madd	t0,t1
bfc0ee08:	00006010 	mfhi	t4
bfc0ee0c:	00006812 	mflo	t5
bfc0ee10:	240e0001 	li	t6,1
bfc0ee14:	158e00e6 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ee18:	00000000 	nop
bfc0ee1c:	240e0001 	li	t6,1
bfc0ee20:	15ae00e3 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ee24:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:166
bfc0ee28:	3c08102c 	lui	t0,0x102c
bfc0ee2c:	3508eba0 	ori	t0,t0,0xeba0
bfc0ee30:	24090000 	li	t1,0
bfc0ee34:	240a0001 	li	t2,1
bfc0ee38:	240b0001 	li	t3,1
bfc0ee3c:	01600011 	mthi	t3
bfc0ee40:	01400013 	mtlo	t2
bfc0ee44:	71090000 	madd	t0,t1
bfc0ee48:	00006010 	mfhi	t4
bfc0ee4c:	00006812 	mflo	t5
bfc0ee50:	240e0001 	li	t6,1
bfc0ee54:	158e00d6 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ee58:	00000000 	nop
bfc0ee5c:	240e0001 	li	t6,1
bfc0ee60:	15ae00d3 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ee64:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:167
bfc0ee68:	3c087b21 	lui	t0,0x7b21
bfc0ee6c:	3508e54d 	ori	t0,t0,0xe54d
bfc0ee70:	24090000 	li	t1,0
bfc0ee74:	240a0001 	li	t2,1
bfc0ee78:	240b0001 	li	t3,1
bfc0ee7c:	01600011 	mthi	t3
bfc0ee80:	01400013 	mtlo	t2
bfc0ee84:	71090000 	madd	t0,t1
bfc0ee88:	00006010 	mfhi	t4
bfc0ee8c:	00006812 	mflo	t5
bfc0ee90:	240e0001 	li	t6,1
bfc0ee94:	158e00c6 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ee98:	00000000 	nop
bfc0ee9c:	240e0001 	li	t6,1
bfc0eea0:	15ae00c3 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0eea4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:168
bfc0eea8:	3c085d72 	lui	t0,0x5d72
bfc0eeac:	3508f954 	ori	t0,t0,0xf954
bfc0eeb0:	24090000 	li	t1,0
bfc0eeb4:	240a0001 	li	t2,1
bfc0eeb8:	240b0001 	li	t3,1
bfc0eebc:	01600011 	mthi	t3
bfc0eec0:	01400013 	mtlo	t2
bfc0eec4:	71090000 	madd	t0,t1
bfc0eec8:	00006010 	mfhi	t4
bfc0eecc:	00006812 	mflo	t5
bfc0eed0:	240e0001 	li	t6,1
bfc0eed4:	158e00b6 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0eed8:	00000000 	nop
bfc0eedc:	240e0001 	li	t6,1
bfc0eee0:	15ae00b3 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0eee4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:169
bfc0eee8:	3c082699 	lui	t0,0x2699
bfc0eeec:	3508b2d4 	ori	t0,t0,0xb2d4
bfc0eef0:	24090000 	li	t1,0
bfc0eef4:	240a0001 	li	t2,1
bfc0eef8:	240b0001 	li	t3,1
bfc0eefc:	01600011 	mthi	t3
bfc0ef00:	01400013 	mtlo	t2
bfc0ef04:	71090000 	madd	t0,t1
bfc0ef08:	00006010 	mfhi	t4
bfc0ef0c:	00006812 	mflo	t5
bfc0ef10:	240e0001 	li	t6,1
bfc0ef14:	158e00a6 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ef18:	00000000 	nop
bfc0ef1c:	240e0001 	li	t6,1
bfc0ef20:	15ae00a3 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ef24:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:170
bfc0ef28:	3c0866b6 	lui	t0,0x66b6
bfc0ef2c:	3508dc30 	ori	t0,t0,0xdc30
bfc0ef30:	24090000 	li	t1,0
bfc0ef34:	240a0001 	li	t2,1
bfc0ef38:	240b0001 	li	t3,1
bfc0ef3c:	01600011 	mthi	t3
bfc0ef40:	01400013 	mtlo	t2
bfc0ef44:	71090000 	madd	t0,t1
bfc0ef48:	00006010 	mfhi	t4
bfc0ef4c:	00006812 	mflo	t5
bfc0ef50:	240e0001 	li	t6,1
bfc0ef54:	158e0096 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ef58:	00000000 	nop
bfc0ef5c:	240e0001 	li	t6,1
bfc0ef60:	15ae0093 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0ef64:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:171
bfc0ef68:	24080000 	li	t0,0
bfc0ef6c:	3c094ae5 	lui	t1,0x4ae5
bfc0ef70:	352969a0 	ori	t1,t1,0x69a0
bfc0ef74:	240a0001 	li	t2,1
bfc0ef78:	240b0001 	li	t3,1
bfc0ef7c:	01600011 	mthi	t3
bfc0ef80:	01400013 	mtlo	t2
bfc0ef84:	71090000 	madd	t0,t1
bfc0ef88:	00006010 	mfhi	t4
bfc0ef8c:	00006812 	mflo	t5
bfc0ef90:	240e0001 	li	t6,1
bfc0ef94:	158e0086 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0ef98:	00000000 	nop
bfc0ef9c:	240e0001 	li	t6,1
bfc0efa0:	15ae0083 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0efa4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:172
bfc0efa8:	24080000 	li	t0,0
bfc0efac:	3c092582 	lui	t1,0x2582
bfc0efb0:	3529c9c0 	ori	t1,t1,0xc9c0
bfc0efb4:	240a0001 	li	t2,1
bfc0efb8:	240b0001 	li	t3,1
bfc0efbc:	01600011 	mthi	t3
bfc0efc0:	01400013 	mtlo	t2
bfc0efc4:	71090000 	madd	t0,t1
bfc0efc8:	00006010 	mfhi	t4
bfc0efcc:	00006812 	mflo	t5
bfc0efd0:	240e0001 	li	t6,1
bfc0efd4:	158e0076 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0efd8:	00000000 	nop
bfc0efdc:	240e0001 	li	t6,1
bfc0efe0:	15ae0073 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0efe4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:173
bfc0efe8:	24080000 	li	t0,0
bfc0efec:	3c09a2f0 	lui	t1,0xa2f0
bfc0eff0:	35291d2e 	ori	t1,t1,0x1d2e
bfc0eff4:	240a0001 	li	t2,1
bfc0eff8:	240b0001 	li	t3,1
bfc0effc:	01600011 	mthi	t3
bfc0f000:	01400013 	mtlo	t2
bfc0f004:	71090000 	madd	t0,t1
bfc0f008:	00006010 	mfhi	t4
bfc0f00c:	00006812 	mflo	t5
bfc0f010:	240e0001 	li	t6,1
bfc0f014:	158e0066 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0f018:	00000000 	nop
bfc0f01c:	240e0001 	li	t6,1
bfc0f020:	15ae0063 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0f024:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:174
bfc0f028:	24080000 	li	t0,0
bfc0f02c:	3c092c53 	lui	t1,0x2c53
bfc0f030:	352900d7 	ori	t1,t1,0xd7
bfc0f034:	240a0001 	li	t2,1
bfc0f038:	240b0001 	li	t3,1
bfc0f03c:	01600011 	mthi	t3
bfc0f040:	01400013 	mtlo	t2
bfc0f044:	71090000 	madd	t0,t1
bfc0f048:	00006010 	mfhi	t4
bfc0f04c:	00006812 	mflo	t5
bfc0f050:	240e0001 	li	t6,1
bfc0f054:	158e0056 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0f058:	00000000 	nop
bfc0f05c:	240e0001 	li	t6,1
bfc0f060:	15ae0053 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0f064:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:175
bfc0f068:	24080000 	li	t0,0
bfc0f06c:	3c097a95 	lui	t1,0x7a95
bfc0f070:	3529fab0 	ori	t1,t1,0xfab0
bfc0f074:	240a0001 	li	t2,1
bfc0f078:	240b0001 	li	t3,1
bfc0f07c:	01600011 	mthi	t3
bfc0f080:	01400013 	mtlo	t2
bfc0f084:	71090000 	madd	t0,t1
bfc0f088:	00006010 	mfhi	t4
bfc0f08c:	00006812 	mflo	t5
bfc0f090:	240e0001 	li	t6,1
bfc0f094:	158e0046 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0f098:	00000000 	nop
bfc0f09c:	240e0001 	li	t6,1
bfc0f0a0:	15ae0043 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0f0a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:176
bfc0f0a8:	24080000 	li	t0,0
bfc0f0ac:	3c09f415 	lui	t1,0xf415
bfc0f0b0:	3529d1b4 	ori	t1,t1,0xd1b4
bfc0f0b4:	240a0001 	li	t2,1
bfc0f0b8:	240b0001 	li	t3,1
bfc0f0bc:	01600011 	mthi	t3
bfc0f0c0:	01400013 	mtlo	t2
bfc0f0c4:	71090000 	madd	t0,t1
bfc0f0c8:	00006010 	mfhi	t4
bfc0f0cc:	00006812 	mflo	t5
bfc0f0d0:	240e0001 	li	t6,1
bfc0f0d4:	158e0036 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0f0d8:	00000000 	nop
bfc0f0dc:	240e0001 	li	t6,1
bfc0f0e0:	15ae0033 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0f0e4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:177
bfc0f0e8:	24080000 	li	t0,0
bfc0f0ec:	3c090caf 	lui	t1,0xcaf
bfc0f0f0:	35297d5c 	ori	t1,t1,0x7d5c
bfc0f0f4:	240a0001 	li	t2,1
bfc0f0f8:	240b0001 	li	t3,1
bfc0f0fc:	01600011 	mthi	t3
bfc0f100:	01400013 	mtlo	t2
bfc0f104:	71090000 	madd	t0,t1
bfc0f108:	00006010 	mfhi	t4
bfc0f10c:	00006812 	mflo	t5
bfc0f110:	240e0001 	li	t6,1
bfc0f114:	158e0026 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0f118:	00000000 	nop
bfc0f11c:	240e0001 	li	t6,1
bfc0f120:	15ae0023 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0f124:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:178
bfc0f128:	24080000 	li	t0,0
bfc0f12c:	3c09ae15 	lui	t1,0xae15
bfc0f130:	3529e524 	ori	t1,t1,0xe524
bfc0f134:	240a0001 	li	t2,1
bfc0f138:	240b0001 	li	t3,1
bfc0f13c:	01600011 	mthi	t3
bfc0f140:	01400013 	mtlo	t2
bfc0f144:	71090000 	madd	t0,t1
bfc0f148:	00006010 	mfhi	t4
bfc0f14c:	00006812 	mflo	t5
bfc0f150:	240e0001 	li	t6,1
bfc0f154:	158e0016 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0f158:	00000000 	nop
bfc0f15c:	240e0001 	li	t6,1
bfc0f160:	15ae0013 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0f164:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:179
bfc0f168:	24080000 	li	t0,0
bfc0f16c:	24090000 	li	t1,0
bfc0f170:	240a0001 	li	t2,1
bfc0f174:	240b0001 	li	t3,1
bfc0f178:	01600011 	mthi	t3
bfc0f17c:	01400013 	mtlo	t2
bfc0f180:	71090000 	madd	t0,t1
bfc0f184:	00006010 	mfhi	t4
bfc0f188:	00006812 	mflo	t5
bfc0f18c:	240e0001 	li	t6,1
bfc0f190:	158e0007 	bne	t4,t6,bfc0f1b0 <inst_error>
bfc0f194:	00000000 	nop
bfc0f198:	240e0001 	li	t6,1
bfc0f19c:	15ae0004 	bne	t5,t6,bfc0f1b0 <inst_error>
bfc0f1a0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:181
bfc0f1a4:	16400002 	bnez	s2,bfc0f1b0 <inst_error>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:182
bfc0f1a8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:184
bfc0f1ac:	26730001 	addiu	s3,s3,1

bfc0f1b0 <inst_error>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:187
bfc0f1b0:	00104e00 	sll	t1,s0,0x18
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:188
bfc0f1b4:	01334025 	or	t0,t1,s3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:189
bfc0f1b8:	ae280000 	sw	t0,0(s1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:190
bfc0f1bc:	03e00008 	jr	ra
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my4_madd.S:191
bfc0f1c0:	00000000 	nop
	...

bfc0f1d0 <my7_msubu_test>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:7
bfc0f1d0:	26100001 	addiu	s0,s0,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:8
bfc0f1d4:	24120000 	li	s2,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:9
bfc0f1d8:	3c0a0001 	lui	t2,0x1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:12
bfc0f1dc:	24082222 	li	t0,8738
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:13
bfc0f1e0:	24093333 	li	t1,13107
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:14
bfc0f1e4:	01000013 	mtlo	t0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:15
bfc0f1e8:	01200011 	mthi	t1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:16
bfc0f1ec:	240a4444 	li	t2,17476
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:17
bfc0f1f0:	240b5555 	li	t3,21845
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:18
bfc0f1f4:	71090005 	msubu	t0,t1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:19
bfc0f1f8:	712a0005 	msubu	t1,t2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:20
bfc0f1fc:	714b0005 	msubu	t2,t3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:22
bfc0f200:	3c082602 	lui	t0,0x2602
bfc0f204:	35080297 	ori	t0,t0,0x297
bfc0f208:	3c095dfe 	lui	t1,0x5dfe
bfc0f20c:	3529b2fe 	ori	t1,t1,0xb2fe
bfc0f210:	3c0a4983 	lui	t2,0x4983
bfc0f214:	354a3c93 	ori	t2,t2,0x3c93
bfc0f218:	3c0b4f00 	lui	t3,0x4f00
bfc0f21c:	356b3039 	ori	t3,t3,0x3039
bfc0f220:	01600011 	mthi	t3
bfc0f224:	01400013 	mtlo	t2
bfc0f228:	71090005 	msubu	t0,t1
bfc0f22c:	00006010 	mfhi	t4
bfc0f230:	00006812 	mflo	t5
bfc0f234:	3c0e410b 	lui	t6,0x410b
bfc0f238:	35cea4b6 	ori	t6,t6,0xa4b6
bfc0f23c:	158e07f5 	bne	t4,t6,bfc11214 <inst_error>
bfc0f240:	00000000 	nop
bfc0f244:	3c0ec0e5 	lui	t6,0xc0e5
bfc0f248:	35ceacc1 	ori	t6,t6,0xacc1
bfc0f24c:	15ae07f1 	bne	t5,t6,bfc11214 <inst_error>
bfc0f250:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:23
bfc0f254:	3c08c951 	lui	t0,0xc951
bfc0f258:	350870ff 	ori	t0,t0,0x70ff
bfc0f25c:	3c09d6f0 	lui	t1,0xd6f0
bfc0f260:	3529109f 	ori	t1,t1,0x109f
bfc0f264:	3c0ace59 	lui	t2,0xce59
bfc0f268:	354a39d6 	ori	t2,t2,0x39d6
bfc0f26c:	3c0bd8e3 	lui	t3,0xd8e3
bfc0f270:	356bf359 	ori	t3,t3,0xf359
bfc0f274:	01600011 	mthi	t3
bfc0f278:	01400013 	mtlo	t2
bfc0f27c:	71090005 	msubu	t0,t1
bfc0f280:	00006010 	mfhi	t4
bfc0f284:	00006812 	mflo	t5
bfc0f288:	3c0ed01e 	lui	t6,0xd01e
bfc0f28c:	35ce9715 	ori	t6,t6,0x9715
bfc0f290:	158e07e0 	bne	t4,t6,bfc11214 <inst_error>
bfc0f294:	00000000 	nop
bfc0f298:	3c0e94a4 	lui	t6,0x94a4
bfc0f29c:	35ce1b75 	ori	t6,t6,0x1b75
bfc0f2a0:	15ae07dc 	bne	t5,t6,bfc11214 <inst_error>
bfc0f2a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:24
bfc0f2a8:	3c08087b 	lui	t0,0x87b
bfc0f2ac:	35082256 	ori	t0,t0,0x2256
bfc0f2b0:	3c0922cc 	lui	t1,0x22cc
bfc0f2b4:	3529dd0b 	ori	t1,t1,0xdd0b
bfc0f2b8:	3c0a9a02 	lui	t2,0x9a02
bfc0f2bc:	354a3c85 	ori	t2,t2,0x3c85
bfc0f2c0:	3c0bc731 	lui	t3,0xc731
bfc0f2c4:	356bed6f 	ori	t3,t3,0xed6f
bfc0f2c8:	01600011 	mthi	t3
bfc0f2cc:	01400013 	mtlo	t2
bfc0f2d0:	71090005 	msubu	t0,t1
bfc0f2d4:	00006010 	mfhi	t4
bfc0f2d8:	00006812 	mflo	t5
bfc0f2dc:	3c0ec60a 	lui	t6,0xc60a
bfc0f2e0:	35cec96d 	ori	t6,t6,0xc96d
bfc0f2e4:	158e07cb 	bne	t4,t6,bfc11214 <inst_error>
bfc0f2e8:	00000000 	nop
bfc0f2ec:	3c0e278b 	lui	t6,0x278b
bfc0f2f0:	35ce84d3 	ori	t6,t6,0x84d3
bfc0f2f4:	15ae07c7 	bne	t5,t6,bfc11214 <inst_error>
bfc0f2f8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:25
bfc0f2fc:	3c081b9d 	lui	t0,0x1b9d
bfc0f300:	3508208f 	ori	t0,t0,0x208f
bfc0f304:	3c09d2c1 	lui	t1,0xd2c1
bfc0f308:	3529ae28 	ori	t1,t1,0xae28
bfc0f30c:	3c0a6453 	lui	t2,0x6453
bfc0f310:	354a1bd0 	ori	t2,t2,0x1bd0
bfc0f314:	3c0b2472 	lui	t3,0x2472
bfc0f318:	356b61db 	ori	t3,t3,0x61db
bfc0f31c:	01600011 	mthi	t3
bfc0f320:	01400013 	mtlo	t2
bfc0f324:	71090005 	msubu	t0,t1
bfc0f328:	00006010 	mfhi	t4
bfc0f32c:	00006812 	mflo	t5
bfc0f330:	3c0e2953 	lui	t6,0x2953
bfc0f334:	35ceb976 	ori	t6,t6,0xb976
bfc0f338:	158e07b6 	bne	t4,t6,bfc11214 <inst_error>
bfc0f33c:	00000000 	nop
bfc0f340:	3c0e6dd5 	lui	t6,0x6dd5
bfc0f344:	35ced378 	ori	t6,t6,0xd378
bfc0f348:	15ae07b2 	bne	t5,t6,bfc11214 <inst_error>
bfc0f34c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:26
bfc0f350:	3c08823a 	lui	t0,0x823a
bfc0f354:	35085fca 	ori	t0,t0,0x5fca
bfc0f358:	3c0974db 	lui	t1,0x74db
bfc0f35c:	35299b78 	ori	t1,t1,0x9b78
bfc0f360:	3c0a6455 	lui	t2,0x6455
bfc0f364:	354ac875 	ori	t2,t2,0xc875
bfc0f368:	3c0b9ef8 	lui	t3,0x9ef8
bfc0f36c:	356b7d06 	ori	t3,t3,0x7d06
bfc0f370:	01600011 	mthi	t3
bfc0f374:	01400013 	mtlo	t2
bfc0f378:	71090005 	msubu	t0,t1
bfc0f37c:	00006010 	mfhi	t4
bfc0f380:	00006812 	mflo	t5
bfc0f384:	3c0ed861 	lui	t6,0xd861
bfc0f388:	35ceee10 	ori	t6,t6,0xee10
bfc0f38c:	158e07a1 	bne	t4,t6,bfc11214 <inst_error>
bfc0f390:	00000000 	nop
bfc0f394:	3c0e872b 	lui	t6,0x872b
bfc0f398:	35ce93c5 	ori	t6,t6,0x93c5
bfc0f39c:	15ae079d 	bne	t5,t6,bfc11214 <inst_error>
bfc0f3a0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:27
bfc0f3a4:	3c081172 	lui	t0,0x1172
bfc0f3a8:	35087559 	ori	t0,t0,0x7559
bfc0f3ac:	3c094d58 	lui	t1,0x4d58
bfc0f3b0:	352972ee 	ori	t1,t1,0x72ee
bfc0f3b4:	3c0a9c27 	lui	t2,0x9c27
bfc0f3b8:	354a227f 	ori	t2,t2,0x227f
bfc0f3bc:	3c0b78fe 	lui	t3,0x78fe
bfc0f3c0:	356b142c 	ori	t3,t3,0x142c
bfc0f3c4:	01600011 	mthi	t3
bfc0f3c8:	01400013 	mtlo	t2
bfc0f3cc:	71090005 	msubu	t0,t1
bfc0f3d0:	00006010 	mfhi	t4
bfc0f3d4:	00006812 	mflo	t5
bfc0f3d8:	3c0e73b8 	lui	t6,0x73b8
bfc0f3dc:	35ce9fb2 	ori	t6,t6,0x9fb2
bfc0f3e0:	158e078c 	bne	t4,t6,bfc11214 <inst_error>
bfc0f3e4:	00000000 	nop
bfc0f3e8:	3c0e4fe4 	lui	t6,0x4fe4
bfc0f3ec:	35ce67c1 	ori	t6,t6,0x67c1
bfc0f3f0:	15ae0788 	bne	t5,t6,bfc11214 <inst_error>
bfc0f3f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:28
bfc0f3f8:	3c081745 	lui	t0,0x1745
bfc0f3fc:	35086395 	ori	t0,t0,0x6395
bfc0f400:	3c09b429 	lui	t1,0xb429
bfc0f404:	352954d8 	ori	t1,t1,0x54d8
bfc0f408:	3c0a6116 	lui	t2,0x6116
bfc0f40c:	354a9ad9 	ori	t2,t2,0x9ad9
bfc0f410:	3c0b3468 	lui	t3,0x3468
bfc0f414:	356bfe7b 	ori	t3,t3,0xfe7b
bfc0f418:	01600011 	mthi	t3
bfc0f41c:	01400013 	mtlo	t2
bfc0f420:	71090005 	msubu	t0,t1
bfc0f424:	00006010 	mfhi	t4
bfc0f428:	00006812 	mflo	t5
bfc0f42c:	3c0e3b4d 	lui	t6,0x3b4d
bfc0f430:	35ced638 	ori	t6,t6,0xd638
bfc0f434:	158e0777 	bne	t4,t6,bfc11214 <inst_error>
bfc0f438:	00000000 	nop
bfc0f43c:	3c0e4300 	lui	t6,0x4300
bfc0f440:	35ceb121 	ori	t6,t6,0xb121
bfc0f444:	15ae0773 	bne	t5,t6,bfc11214 <inst_error>
bfc0f448:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:29
bfc0f44c:	3c0824f2 	lui	t0,0x24f2
bfc0f450:	35088fce 	ori	t0,t0,0x8fce
bfc0f454:	3c09ca9f 	lui	t1,0xca9f
bfc0f458:	35295f4f 	ori	t1,t1,0x5f4f
bfc0f45c:	3c0ad5bf 	lui	t2,0xd5bf
bfc0f460:	354ac458 	ori	t2,t2,0xc458
bfc0f464:	3c0bec65 	lui	t3,0xec65
bfc0f468:	356b35fb 	ori	t3,t3,0x35fb
bfc0f46c:	01600011 	mthi	t3
bfc0f470:	01400013 	mtlo	t2
bfc0f474:	71090005 	msubu	t0,t1
bfc0f478:	00006010 	mfhi	t4
bfc0f47c:	00006812 	mflo	t5
bfc0f480:	3c0ef419 	lui	t6,0xf419
bfc0f484:	35ce5fe7 	ori	t6,t6,0x5fe7
bfc0f488:	158e0762 	bne	t4,t6,bfc11214 <inst_error>
bfc0f48c:	00000000 	nop
bfc0f490:	3c0e8e95 	lui	t6,0x8e95
bfc0f494:	35cef1c6 	ori	t6,t6,0xf1c6
bfc0f498:	15ae075e 	bne	t5,t6,bfc11214 <inst_error>
bfc0f49c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:30
bfc0f4a0:	3c085c44 	lui	t0,0x5c44
bfc0f4a4:	35081766 	ori	t0,t0,0x1766
bfc0f4a8:	3c096f4e 	lui	t1,0x6f4e
bfc0f4ac:	3529b8a8 	ori	t1,t1,0xb8a8
bfc0f4b0:	3c0ab3ad 	lui	t2,0xb3ad
bfc0f4b4:	354aced2 	ori	t2,t2,0xced2
bfc0f4b8:	3c0b5b9e 	lui	t3,0x5b9e
bfc0f4bc:	356b3751 	ori	t3,t3,0x3751
bfc0f4c0:	01600011 	mthi	t3
bfc0f4c4:	01400013 	mtlo	t2
bfc0f4c8:	71090005 	msubu	t0,t1
bfc0f4cc:	00006010 	mfhi	t4
bfc0f4d0:	00006812 	mflo	t5
bfc0f4d4:	3c0e3380 	lui	t6,0x3380
bfc0f4d8:	35ce51de 	ori	t6,t6,0x51de
bfc0f4dc:	158e074d 	bne	t4,t6,bfc11214 <inst_error>
bfc0f4e0:	00000000 	nop
bfc0f4e4:	3c0edb19 	lui	t6,0xdb19
bfc0f4e8:	35ce23e2 	ori	t6,t6,0x23e2
bfc0f4ec:	15ae0749 	bne	t5,t6,bfc11214 <inst_error>
bfc0f4f0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:31
bfc0f4f4:	3c08a592 	lui	t0,0xa592
bfc0f4f8:	35085202 	ori	t0,t0,0x5202
bfc0f4fc:	3c0920dd 	lui	t1,0x20dd
bfc0f500:	3529e20b 	ori	t1,t1,0xe20b
bfc0f504:	3c0a1d6b 	lui	t2,0x1d6b
bfc0f508:	354a29d6 	ori	t2,t2,0x29d6
bfc0f50c:	3c0b2a9a 	lui	t3,0x2a9a
bfc0f510:	356b8b57 	ori	t3,t3,0x8b57
bfc0f514:	01600011 	mthi	t3
bfc0f518:	01400013 	mtlo	t2
bfc0f51c:	71090005 	msubu	t0,t1
bfc0f520:	00006010 	mfhi	t4
bfc0f524:	00006812 	mflo	t5
bfc0f528:	3c0e3636 	lui	t6,0x3636
bfc0f52c:	35cea19e 	ori	t6,t6,0xa19e
bfc0f530:	158e0738 	bne	t4,t6,bfc11214 <inst_error>
bfc0f534:	00000000 	nop
bfc0f538:	3c0ec801 	lui	t6,0xc801
bfc0f53c:	35cedfc0 	ori	t6,t6,0xdfc0
bfc0f540:	15ae0734 	bne	t5,t6,bfc11214 <inst_error>
bfc0f544:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:32
bfc0f548:	3c0835a6 	lui	t0,0x35a6
bfc0f54c:	3508e76e 	ori	t0,t0,0xe76e
bfc0f550:	3c09ce0c 	lui	t1,0xce0c
bfc0f554:	35294b84 	ori	t1,t1,0x4b84
bfc0f558:	3c0a7b15 	lui	t2,0x7b15
bfc0f55c:	354af439 	ori	t2,t2,0xf439
bfc0f560:	3c0b1371 	lui	t3,0x1371
bfc0f564:	356b3db1 	ori	t3,t3,0x3db1
bfc0f568:	01600011 	mthi	t3
bfc0f56c:	01400013 	mtlo	t2
bfc0f570:	71090005 	msubu	t0,t1
bfc0f574:	00006010 	mfhi	t4
bfc0f578:	00006812 	mflo	t5
bfc0f57c:	3c0e1de9 	lui	t6,0x1de9
bfc0f580:	35ce433e 	ori	t6,t6,0x433e
bfc0f584:	158e0723 	bne	t4,t6,bfc11214 <inst_error>
bfc0f588:	00000000 	nop
bfc0f58c:	3c0e8e11 	lui	t6,0x8e11
bfc0f590:	35ce6581 	ori	t6,t6,0x6581
bfc0f594:	15ae071f 	bne	t5,t6,bfc11214 <inst_error>
bfc0f598:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:33
bfc0f59c:	3c08b7fb 	lui	t0,0xb7fb
bfc0f5a0:	3508fcb6 	ori	t0,t0,0xfcb6
bfc0f5a4:	3c09294e 	lui	t1,0x294e
bfc0f5a8:	35292fa6 	ori	t1,t1,0x2fa6
bfc0f5ac:	3c0a22a4 	lui	t2,0x22a4
bfc0f5b0:	354ae0ee 	ori	t2,t2,0xe0ee
bfc0f5b4:	3c0b1a4a 	lui	t3,0x1a4a
bfc0f5b8:	356b1ad1 	ori	t3,t3,0x1ad1
bfc0f5bc:	01600011 	mthi	t3
bfc0f5c0:	01400013 	mtlo	t2
bfc0f5c4:	71090005 	msubu	t0,t1
bfc0f5c8:	00006010 	mfhi	t4
bfc0f5cc:	00006812 	mflo	t5
bfc0f5d0:	3c0e25e8 	lui	t6,0x25e8
bfc0f5d4:	35cebdf8 	ori	t6,t6,0xbdf8
bfc0f5d8:	158e070e 	bne	t4,t6,bfc11214 <inst_error>
bfc0f5dc:	00000000 	nop
bfc0f5e0:	3c0e6c65 	lui	t6,0x6c65
bfc0f5e4:	35ce98ea 	ori	t6,t6,0x98ea
bfc0f5e8:	15ae070a 	bne	t5,t6,bfc11214 <inst_error>
bfc0f5ec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:34
bfc0f5f0:	3c08455f 	lui	t0,0x455f
bfc0f5f4:	35085f29 	ori	t0,t0,0x5f29
bfc0f5f8:	3c093f82 	lui	t1,0x3f82
bfc0f5fc:	3529d830 	ori	t1,t1,0xd830
bfc0f600:	3c0aa610 	lui	t2,0xa610
bfc0f604:	354af0e4 	ori	t2,t2,0xf0e4
bfc0f608:	3c0b9089 	lui	t3,0x9089
bfc0f60c:	356bc921 	ori	t3,t3,0xc921
bfc0f610:	01600011 	mthi	t3
bfc0f614:	01400013 	mtlo	t2
bfc0f618:	71090005 	msubu	t0,t1
bfc0f61c:	00006010 	mfhi	t4
bfc0f620:	00006812 	mflo	t5
bfc0f624:	3c0e7f53 	lui	t6,0x7f53
bfc0f628:	35cedbb1 	ori	t6,t6,0xdbb1
bfc0f62c:	158e06f9 	bne	t4,t6,bfc11214 <inst_error>
bfc0f630:	00000000 	nop
bfc0f634:	3c0ec212 	lui	t6,0xc212
bfc0f638:	35ce8134 	ori	t6,t6,0x8134
bfc0f63c:	15ae06f5 	bne	t5,t6,bfc11214 <inst_error>
bfc0f640:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:35
bfc0f644:	3c08bbe8 	lui	t0,0xbbe8
bfc0f648:	3508463e 	ori	t0,t0,0x463e
bfc0f64c:	3c098d5c 	lui	t1,0x8d5c
bfc0f650:	3529b767 	ori	t1,t1,0xb767
bfc0f654:	3c0ad5cf 	lui	t2,0xd5cf
bfc0f658:	354af0df 	ori	t2,t2,0xf0df
bfc0f65c:	3c0b1633 	lui	t3,0x1633
bfc0f660:	356b7103 	ori	t3,t3,0x7103
bfc0f664:	01600011 	mthi	t3
bfc0f668:	01400013 	mtlo	t2
bfc0f66c:	71090005 	msubu	t0,t1
bfc0f670:	00006010 	mfhi	t4
bfc0f674:	00006812 	mflo	t5
bfc0f678:	3c0ef7b5 	lui	t6,0xf7b5
bfc0f67c:	35ce71df 	ori	t6,t6,0x71df
bfc0f680:	158e06e4 	bne	t4,t6,bfc11214 <inst_error>
bfc0f684:	00000000 	nop
bfc0f688:	3c0eccdd 	lui	t6,0xccdd
bfc0f68c:	35ce5bed 	ori	t6,t6,0x5bed
bfc0f690:	15ae06e0 	bne	t5,t6,bfc11214 <inst_error>
bfc0f694:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:36
bfc0f698:	3c0813af 	lui	t0,0x13af
bfc0f69c:	35080a70 	ori	t0,t0,0xa70
bfc0f6a0:	3c097694 	lui	t1,0x7694
bfc0f6a4:	352978d7 	ori	t1,t1,0x78d7
bfc0f6a8:	3c0ad17c 	lui	t2,0xd17c
bfc0f6ac:	354a278a 	ori	t2,t2,0x278a
bfc0f6b0:	3c0b2ecd 	lui	t3,0x2ecd
bfc0f6b4:	356b82b0 	ori	t3,t3,0x82b0
bfc0f6b8:	01600011 	mthi	t3
bfc0f6bc:	01400013 	mtlo	t2
bfc0f6c0:	71090005 	msubu	t0,t1
bfc0f6c4:	00006010 	mfhi	t4
bfc0f6c8:	00006812 	mflo	t5
bfc0f6cc:	3c0e25af 	lui	t6,0x25af
bfc0f6d0:	35ce6963 	ori	t6,t6,0x6963
bfc0f6d4:	158e06cf 	bne	t4,t6,bfc11214 <inst_error>
bfc0f6d8:	00000000 	nop
bfc0f6dc:	3c0e93d5 	lui	t6,0x93d5
bfc0f6e0:	35cee37a 	ori	t6,t6,0xe37a
bfc0f6e4:	15ae06cb 	bne	t5,t6,bfc11214 <inst_error>
bfc0f6e8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:37
bfc0f6ec:	3c08ad28 	lui	t0,0xad28
bfc0f6f0:	35086b16 	ori	t0,t0,0x6b16
bfc0f6f4:	3c0968cc 	lui	t1,0x68cc
bfc0f6f8:	35291ab4 	ori	t1,t1,0x1ab4
bfc0f6fc:	3c0a1504 	lui	t2,0x1504
bfc0f700:	354aac02 	ori	t2,t2,0xac02
bfc0f704:	3c0b7465 	lui	t3,0x7465
bfc0f708:	356b6e2e 	ori	t3,t3,0x6e2e
bfc0f70c:	01600011 	mthi	t3
bfc0f710:	01400013 	mtlo	t2
bfc0f714:	71090005 	msubu	t0,t1
bfc0f718:	00006010 	mfhi	t4
bfc0f71c:	00006812 	mflo	t5
bfc0f720:	3c0e964f 	lui	t6,0x964f
bfc0f724:	35ce0f1b 	ori	t6,t6,0xf1b
bfc0f728:	158e06ba 	bne	t4,t6,bfc11214 <inst_error>
bfc0f72c:	00000000 	nop
bfc0f730:	3c0ef431 	lui	t6,0xf431
bfc0f734:	35ce248a 	ori	t6,t6,0x248a
bfc0f738:	15ae06b6 	bne	t5,t6,bfc11214 <inst_error>
bfc0f73c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:38
bfc0f740:	3c08f350 	lui	t0,0xf350
bfc0f744:	3508f701 	ori	t0,t0,0xf701
bfc0f748:	3c096c15 	lui	t1,0x6c15
bfc0f74c:	35299b82 	ori	t1,t1,0x9b82
bfc0f750:	3c0a4f09 	lui	t2,0x4f09
bfc0f754:	354a55e0 	ori	t2,t2,0x55e0
bfc0f758:	3c0be505 	lui	t3,0xe505
bfc0f75c:	356b2acb 	ori	t3,t3,0x2acb
bfc0f760:	01600011 	mthi	t3
bfc0f764:	01400013 	mtlo	t2
bfc0f768:	71090005 	msubu	t0,t1
bfc0f76c:	00006010 	mfhi	t4
bfc0f770:	00006812 	mflo	t5
bfc0f774:	3c0eea60 	lui	t6,0xea60
bfc0f778:	35ce14a7 	ori	t6,t6,0x14a7
bfc0f77c:	158e06a5 	bne	t4,t6,bfc11214 <inst_error>
bfc0f780:	00000000 	nop
bfc0f784:	3c0e0b49 	lui	t6,0xb49
bfc0f788:	35ce4c5e 	ori	t6,t6,0x4c5e
bfc0f78c:	15ae06a1 	bne	t5,t6,bfc11214 <inst_error>
bfc0f790:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:39
bfc0f794:	3c089420 	lui	t0,0x9420
bfc0f798:	350814b5 	ori	t0,t0,0x14b5
bfc0f79c:	3c098b5c 	lui	t1,0x8b5c
bfc0f7a0:	35290cc6 	ori	t1,t1,0xcc6
bfc0f7a4:	3c0ad524 	lui	t2,0xd524
bfc0f7a8:	354a0e41 	ori	t2,t2,0xe41
bfc0f7ac:	3c0b75e6 	lui	t3,0x75e6
bfc0f7b0:	356bf0fc 	ori	t3,t3,0xf0fc
bfc0f7b4:	01600011 	mthi	t3
bfc0f7b8:	01400013 	mtlo	t2
bfc0f7bc:	71090005 	msubu	t0,t1
bfc0f7c0:	00006010 	mfhi	t4
bfc0f7c4:	00006812 	mflo	t5
bfc0f7c8:	3c0e44c0 	lui	t6,0x44c0
bfc0f7cc:	35ce644d 	ori	t6,t6,0x644d
bfc0f7d0:	158e0690 	bne	t4,t6,bfc11214 <inst_error>
bfc0f7d4:	00000000 	nop
bfc0f7d8:	3c0e0b4f 	lui	t6,0xb4f
bfc0f7dc:	35ce8e43 	ori	t6,t6,0x8e43
bfc0f7e0:	15ae068c 	bne	t5,t6,bfc11214 <inst_error>
bfc0f7e4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:40
bfc0f7e8:	3c0852fe 	lui	t0,0x52fe
bfc0f7ec:	350889bd 	ori	t0,t0,0x89bd
bfc0f7f0:	3c09b2b0 	lui	t1,0xb2b0
bfc0f7f4:	35290528 	ori	t1,t1,0x528
bfc0f7f8:	3c0a897e 	lui	t2,0x897e
bfc0f7fc:	354adfa4 	ori	t2,t2,0xdfa4
bfc0f800:	3c0b87f5 	lui	t3,0x87f5
bfc0f804:	356bc20b 	ori	t3,t3,0xc20b
bfc0f808:	01600011 	mthi	t3
bfc0f80c:	01400013 	mtlo	t2
bfc0f810:	71090005 	msubu	t0,t1
bfc0f814:	00006010 	mfhi	t4
bfc0f818:	00006812 	mflo	t5
bfc0f81c:	3c0ea106 	lui	t6,0xa106
bfc0f820:	35ce3f57 	ori	t6,t6,0x3f57
bfc0f824:	158e067b 	bne	t4,t6,bfc11214 <inst_error>
bfc0f828:	00000000 	nop
bfc0f82c:	3c0e7d18 	lui	t6,0x7d18
bfc0f830:	35cea91c 	ori	t6,t6,0xa91c
bfc0f834:	15ae0677 	bne	t5,t6,bfc11214 <inst_error>
bfc0f838:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:41
bfc0f83c:	3c085439 	lui	t0,0x5439
bfc0f840:	35082fdf 	ori	t0,t0,0x2fdf
bfc0f844:	3c093ed5 	lui	t1,0x3ed5
bfc0f848:	35292b1f 	ori	t1,t1,0x2b1f
bfc0f84c:	3c0a63ec 	lui	t2,0x63ec
bfc0f850:	354a8e2e 	ori	t2,t2,0x8e2e
bfc0f854:	3c0b43a1 	lui	t3,0x43a1
bfc0f858:	356be70c 	ori	t3,t3,0xe70c
bfc0f85c:	01600011 	mthi	t3
bfc0f860:	01400013 	mtlo	t2
bfc0f864:	71090005 	msubu	t0,t1
bfc0f868:	00006010 	mfhi	t4
bfc0f86c:	00006812 	mflo	t5
bfc0f870:	3c0e2ef5 	lui	t6,0x2ef5
bfc0f874:	35ceebaf 	ori	t6,t6,0xebaf
bfc0f878:	158e0666 	bne	t4,t6,bfc11214 <inst_error>
bfc0f87c:	00000000 	nop
bfc0f880:	3c0ebf6a 	lui	t6,0xbf6a
bfc0f884:	35ce4d2d 	ori	t6,t6,0x4d2d
bfc0f888:	15ae0662 	bne	t5,t6,bfc11214 <inst_error>
bfc0f88c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:42
bfc0f890:	3c0898dd 	lui	t0,0x98dd
bfc0f894:	35082054 	ori	t0,t0,0x2054
bfc0f898:	3c09a8c6 	lui	t1,0xa8c6
bfc0f89c:	352950b8 	ori	t1,t1,0x50b8
bfc0f8a0:	3c0a0b43 	lui	t2,0xb43
bfc0f8a4:	354a54f0 	ori	t2,t2,0x54f0
bfc0f8a8:	3c0b494d 	lui	t3,0x494d
bfc0f8ac:	356b452f 	ori	t3,t3,0x452f
bfc0f8b0:	01600011 	mthi	t3
bfc0f8b4:	01400013 	mtlo	t2
bfc0f8b8:	71090005 	msubu	t0,t1
bfc0f8bc:	00006010 	mfhi	t4
bfc0f8c0:	00006812 	mflo	t5
bfc0f8c4:	3c0e2629 	lui	t6,0x2629
bfc0f8c8:	35ce2dc9 	ori	t6,t6,0x2dc9
bfc0f8cc:	158e0651 	bne	t4,t6,bfc11214 <inst_error>
bfc0f8d0:	00000000 	nop
bfc0f8d4:	3c0ef141 	lui	t6,0xf141
bfc0f8d8:	35ced890 	ori	t6,t6,0xd890
bfc0f8dc:	15ae064d 	bne	t5,t6,bfc11214 <inst_error>
bfc0f8e0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:43
bfc0f8e4:	3c087fd2 	lui	t0,0x7fd2
bfc0f8e8:	3508a24c 	ori	t0,t0,0xa24c
bfc0f8ec:	3c090d33 	lui	t1,0xd33
bfc0f8f0:	35293aa8 	ori	t1,t1,0x3aa8
bfc0f8f4:	3c0ab737 	lui	t2,0xb737
bfc0f8f8:	354a6359 	ori	t2,t2,0x6359
bfc0f8fc:	3c0b6939 	lui	t3,0x6939
bfc0f900:	356b903a 	ori	t3,t3,0x903a
bfc0f904:	01600011 	mthi	t3
bfc0f908:	01400013 	mtlo	t2
bfc0f90c:	71090005 	msubu	t0,t1
bfc0f910:	00006010 	mfhi	t4
bfc0f914:	00006812 	mflo	t5
bfc0f918:	3c0e62a2 	lui	t6,0x62a2
bfc0f91c:	35ce49bb 	ori	t6,t6,0x49bb
bfc0f920:	158e063c 	bne	t4,t6,bfc11214 <inst_error>
bfc0f924:	00000000 	nop
bfc0f928:	3c0eeb13 	lui	t6,0xeb13
bfc0f92c:	35cea979 	ori	t6,t6,0xa979
bfc0f930:	15ae0638 	bne	t5,t6,bfc11214 <inst_error>
bfc0f934:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:44
bfc0f938:	3c08906a 	lui	t0,0x906a
bfc0f93c:	35086a89 	ori	t0,t0,0x6a89
bfc0f940:	3c091d49 	lui	t1,0x1d49
bfc0f944:	35298899 	ori	t1,t1,0x8899
bfc0f948:	3c0acd58 	lui	t2,0xcd58
bfc0f94c:	354af766 	ori	t2,t2,0xf766
bfc0f950:	3c0b2f6f 	lui	t3,0x2f6f
bfc0f954:	356b6b1a 	ori	t3,t3,0x6b1a
bfc0f958:	01600011 	mthi	t3
bfc0f95c:	01400013 	mtlo	t2
bfc0f960:	71090005 	msubu	t0,t1
bfc0f964:	00006010 	mfhi	t4
bfc0f968:	00006812 	mflo	t5
bfc0f96c:	3c0e3c33 	lui	t6,0x3c33
bfc0f970:	35ce6a3a 	ori	t6,t6,0x6a3a
bfc0f974:	158e0627 	bne	t4,t6,bfc11214 <inst_error>
bfc0f978:	00000000 	nop
bfc0f97c:	3c0e0f15 	lui	t6,0xf15
bfc0f980:	35ce8385 	ori	t6,t6,0x8385
bfc0f984:	15ae0623 	bne	t5,t6,bfc11214 <inst_error>
bfc0f988:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:45
bfc0f98c:	3c08762a 	lui	t0,0x762a
bfc0f990:	35081f37 	ori	t0,t0,0x1f37
bfc0f994:	3c09701e 	lui	t1,0x701e
bfc0f998:	3529145a 	ori	t1,t1,0x145a
bfc0f99c:	3c0ade80 	lui	t2,0xde80
bfc0f9a0:	354ad079 	ori	t2,t2,0xd079
bfc0f9a4:	3c0b4ab2 	lui	t3,0x4ab2
bfc0f9a8:	356b4493 	ori	t3,t3,0x4493
bfc0f9ac:	01600011 	mthi	t3
bfc0f9b0:	01400013 	mtlo	t2
bfc0f9b4:	71090005 	msubu	t0,t1
bfc0f9b8:	00006010 	mfhi	t4
bfc0f9bc:	00006812 	mflo	t5
bfc0f9c0:	3c0e16f1 	lui	t6,0x16f1
bfc0f9c4:	35cef496 	ori	t6,t6,0xf496
bfc0f9c8:	158e0612 	bne	t4,t6,bfc11214 <inst_error>
bfc0f9cc:	00000000 	nop
bfc0f9d0:	3c0e50cf 	lui	t6,0x50cf
bfc0f9d4:	35ce8b23 	ori	t6,t6,0x8b23
bfc0f9d8:	15ae060e 	bne	t5,t6,bfc11214 <inst_error>
bfc0f9dc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:46
bfc0f9e0:	3c086377 	lui	t0,0x6377
bfc0f9e4:	35087df5 	ori	t0,t0,0x7df5
bfc0f9e8:	3c093ece 	lui	t1,0x3ece
bfc0f9ec:	352944bf 	ori	t1,t1,0x44bf
bfc0f9f0:	3c0aebdf 	lui	t2,0xebdf
bfc0f9f4:	354a87a7 	ori	t2,t2,0x87a7
bfc0f9f8:	3c0b65de 	lui	t3,0x65de
bfc0f9fc:	356b1320 	ori	t3,t3,0x1320
bfc0fa00:	01600011 	mthi	t3
bfc0fa04:	01400013 	mtlo	t2
bfc0fa08:	71090005 	msubu	t0,t1
bfc0fa0c:	00006010 	mfhi	t4
bfc0fa10:	00006812 	mflo	t5
bfc0fa14:	3c0e4d76 	lui	t6,0x4d76
bfc0fa18:	35cefdc1 	ori	t6,t6,0xfdc1
bfc0fa1c:	158e05fd 	bne	t4,t6,bfc11214 <inst_error>
bfc0fa20:	00000000 	nop
bfc0fa24:	3c0e471d 	lui	t6,0x471d
bfc0fa28:	35ce79dc 	ori	t6,t6,0x79dc
bfc0fa2c:	15ae05f9 	bne	t5,t6,bfc11214 <inst_error>
bfc0fa30:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:47
bfc0fa34:	3c08b9f3 	lui	t0,0xb9f3
bfc0fa38:	35083da8 	ori	t0,t0,0x3da8
bfc0fa3c:	3c093ea1 	lui	t1,0x3ea1
bfc0fa40:	3529aeb0 	ori	t1,t1,0xaeb0
bfc0fa44:	3c0a89d4 	lui	t2,0x89d4
bfc0fa48:	354a8694 	ori	t2,t2,0x8694
bfc0fa4c:	3c0bd563 	lui	t3,0xd563
bfc0fa50:	356b7a9c 	ori	t3,t3,0x7a9c
bfc0fa54:	01600011 	mthi	t3
bfc0fa58:	01400013 	mtlo	t2
bfc0fa5c:	71090005 	msubu	t0,t1
bfc0fa60:	00006010 	mfhi	t4
bfc0fa64:	00006812 	mflo	t5
bfc0fa68:	3c0ee686 	lui	t6,0xe686
bfc0fa6c:	35cecf7f 	ori	t6,t6,0xcf7f
bfc0fa70:	158e05e8 	bne	t4,t6,bfc11214 <inst_error>
bfc0fa74:	00000000 	nop
bfc0fa78:	3c0ee809 	lui	t6,0xe809
bfc0fa7c:	35cef314 	ori	t6,t6,0xf314
bfc0fa80:	15ae05e4 	bne	t5,t6,bfc11214 <inst_error>
bfc0fa84:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:48
bfc0fa88:	3c085e64 	lui	t0,0x5e64
bfc0fa8c:	3508c9fc 	ori	t0,t0,0xc9fc
bfc0fa90:	3c09b428 	lui	t1,0xb428
bfc0fa94:	35293b49 	ori	t1,t1,0x3b49
bfc0fa98:	3c0a5d39 	lui	t2,0x5d39
bfc0fa9c:	354ad48b 	ori	t2,t2,0xd48b
bfc0faa0:	3c0be813 	lui	t3,0xe813
bfc0faa4:	356bf4f0 	ori	t3,t3,0xf4f0
bfc0faa8:	01600011 	mthi	t3
bfc0faac:	01400013 	mtlo	t2
bfc0fab0:	71090005 	msubu	t0,t1
bfc0fab4:	00006010 	mfhi	t4
bfc0fab8:	00006812 	mflo	t5
bfc0fabc:	3c0e040b 	lui	t6,0x40b
bfc0fac0:	35ce0b4b 	ori	t6,t6,0xb4b
bfc0fac4:	158e05d3 	bne	t4,t6,bfc11214 <inst_error>
bfc0fac8:	00000000 	nop
bfc0facc:	3c0e788f 	lui	t6,0x788f
bfc0fad0:	35ce27af 	ori	t6,t6,0x27af
bfc0fad4:	15ae05cf 	bne	t5,t6,bfc11214 <inst_error>
bfc0fad8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:49
bfc0fadc:	3c089674 	lui	t0,0x9674
bfc0fae0:	350839f5 	ori	t0,t0,0x39f5
bfc0fae4:	3c09d285 	lui	t1,0xd285
bfc0fae8:	35295ed8 	ori	t1,t1,0x5ed8
bfc0faec:	3c0a3bca 	lui	t2,0x3bca
bfc0faf0:	354a1ad1 	ori	t2,t2,0x1ad1
bfc0faf4:	3c0bec52 	lui	t3,0xec52
bfc0faf8:	356bfb3b 	ori	t3,t3,0xfb3b
bfc0fafc:	01600011 	mthi	t3
bfc0fb00:	01400013 	mtlo	t2
bfc0fb04:	71090005 	msubu	t0,t1
bfc0fb08:	00006010 	mfhi	t4
bfc0fb0c:	00006812 	mflo	t5
bfc0fb10:	3c0ed992 	lui	t6,0xd992
bfc0fb14:	35ceda5d 	ori	t6,t6,0xda5d
bfc0fb18:	158e05be 	bne	t4,t6,bfc11214 <inst_error>
bfc0fb1c:	00000000 	nop
bfc0fb20:	3c0e8628 	lui	t6,0x8628
bfc0fb24:	35ce3e19 	ori	t6,t6,0x3e19
bfc0fb28:	15ae05ba 	bne	t5,t6,bfc11214 <inst_error>
bfc0fb2c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:50
bfc0fb30:	3c08e5e7 	lui	t0,0xe5e7
bfc0fb34:	3508266a 	ori	t0,t0,0x266a
bfc0fb38:	3c090dfc 	lui	t1,0xdfc
bfc0fb3c:	35296bab 	ori	t1,t1,0x6bab
bfc0fb40:	3c0a5a96 	lui	t2,0x5a96
bfc0fb44:	354ad373 	ori	t2,t2,0xd373
bfc0fb48:	3c0b422c 	lui	t3,0x422c
bfc0fb4c:	356b6c94 	ori	t3,t3,0x6c94
bfc0fb50:	01600011 	mthi	t3
bfc0fb54:	01400013 	mtlo	t2
bfc0fb58:	71090005 	msubu	t0,t1
bfc0fb5c:	00006010 	mfhi	t4
bfc0fb60:	00006812 	mflo	t5
bfc0fb64:	3c0e4399 	lui	t6,0x4399
bfc0fb68:	35ce6b10 	ori	t6,t6,0x6b10
bfc0fb6c:	158e05a9 	bne	t4,t6,bfc11214 <inst_error>
bfc0fb70:	00000000 	nop
bfc0fb74:	3c0ef9c9 	lui	t6,0xf9c9
bfc0fb78:	35cedca5 	ori	t6,t6,0xdca5
bfc0fb7c:	15ae05a5 	bne	t5,t6,bfc11214 <inst_error>
bfc0fb80:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:51
bfc0fb84:	3c089914 	lui	t0,0x9914
bfc0fb88:	3508336c 	ori	t0,t0,0x336c
bfc0fb8c:	3c09d087 	lui	t1,0xd087
bfc0fb90:	35290b36 	ori	t1,t1,0xb36
bfc0fb94:	3c0a28a9 	lui	t2,0x28a9
bfc0fb98:	354a5a2e 	ori	t2,t2,0x5a2e
bfc0fb9c:	3c0bbd27 	lui	t3,0xbd27
bfc0fba0:	356bab1c 	ori	t3,t3,0xab1c
bfc0fba4:	01600011 	mthi	t3
bfc0fba8:	01400013 	mtlo	t2
bfc0fbac:	71090005 	msubu	t0,t1
bfc0fbb0:	00006010 	mfhi	t4
bfc0fbb4:	00006812 	mflo	t5
bfc0fbb8:	3c0eaa11 	lui	t6,0xaa11
bfc0fbbc:	35cebf9b 	ori	t6,t6,0xbf9b
bfc0fbc0:	158e0594 	bne	t4,t6,bfc11214 <inst_error>
bfc0fbc4:	00000000 	nop
bfc0fbc8:	3c0e223c 	lui	t6,0x223c
bfc0fbcc:	35cedd66 	ori	t6,t6,0xdd66
bfc0fbd0:	15ae0590 	bne	t5,t6,bfc11214 <inst_error>
bfc0fbd4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:52
bfc0fbd8:	3c08de04 	lui	t0,0xde04
bfc0fbdc:	350877d4 	ori	t0,t0,0x77d4
bfc0fbe0:	3c09e7e6 	lui	t1,0xe7e6
bfc0fbe4:	3529093f 	ori	t1,t1,0x93f
bfc0fbe8:	3c0a09f7 	lui	t2,0x9f7
bfc0fbec:	354a496d 	ori	t2,t2,0x496d
bfc0fbf0:	3c0bad66 	lui	t3,0xad66
bfc0fbf4:	356baf86 	ori	t3,t3,0xaf86
bfc0fbf8:	01600011 	mthi	t3
bfc0fbfc:	01400013 	mtlo	t2
bfc0fc00:	71090005 	msubu	t0,t1
bfc0fc04:	00006010 	mfhi	t4
bfc0fc08:	00006812 	mflo	t5
bfc0fc0c:	3c0eaa33 	lui	t6,0xaa33
bfc0fc10:	35cea870 	ori	t6,t6,0xa870
bfc0fc14:	158e057f 	bne	t4,t6,bfc11214 <inst_error>
bfc0fc18:	00000000 	nop
bfc0fc1c:	3c0e4a2f 	lui	t6,0x4a2f
bfc0fc20:	35ce5841 	ori	t6,t6,0x5841
bfc0fc24:	15ae057b 	bne	t5,t6,bfc11214 <inst_error>
bfc0fc28:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:53
bfc0fc2c:	3c08c7ef 	lui	t0,0xc7ef
bfc0fc30:	3508dec5 	ori	t0,t0,0xdec5
bfc0fc34:	3c098171 	lui	t1,0x8171
bfc0fc38:	3529faf6 	ori	t1,t1,0xfaf6
bfc0fc3c:	3c0a7840 	lui	t2,0x7840
bfc0fc40:	354ad75d 	ori	t2,t2,0xd75d
bfc0fc44:	3c0bece4 	lui	t3,0xece4
bfc0fc48:	356b2b2e 	ori	t3,t3,0x2b2e
bfc0fc4c:	01600011 	mthi	t3
bfc0fc50:	01400013 	mtlo	t2
bfc0fc54:	71090005 	msubu	t0,t1
bfc0fc58:	00006010 	mfhi	t4
bfc0fc5c:	00006812 	mflo	t5
bfc0fc60:	3c0ed12d 	lui	t6,0xd12d
bfc0fc64:	35ce20c6 	ori	t6,t6,0x20c6
bfc0fc68:	158e056a 	bne	t4,t6,bfc11214 <inst_error>
bfc0fc6c:	00000000 	nop
bfc0fc70:	3c0e7e3f 	lui	t6,0x7e3f
bfc0fc74:	35ce640f 	ori	t6,t6,0x640f
bfc0fc78:	15ae0566 	bne	t5,t6,bfc11214 <inst_error>
bfc0fc7c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:54
bfc0fc80:	3c0864b6 	lui	t0,0x64b6
bfc0fc84:	35085354 	ori	t0,t0,0x5354
bfc0fc88:	3c094093 	lui	t1,0x4093
bfc0fc8c:	352902e3 	ori	t1,t1,0x2e3
bfc0fc90:	3c0aeb0d 	lui	t2,0xeb0d
bfc0fc94:	354a40b7 	ori	t2,t2,0x40b7
bfc0fc98:	3c0b5ff0 	lui	t3,0x5ff0
bfc0fc9c:	356bbc92 	ori	t3,t3,0xbc92
bfc0fca0:	01600011 	mthi	t3
bfc0fca4:	01400013 	mtlo	t2
bfc0fca8:	71090005 	msubu	t0,t1
bfc0fcac:	00006010 	mfhi	t4
bfc0fcb0:	00006812 	mflo	t5
bfc0fcb4:	3c0e4689 	lui	t6,0x4689
bfc0fcb8:	35ce51e8 	ori	t6,t6,0x51e8
bfc0fcbc:	158e0555 	bne	t4,t6,bfc11214 <inst_error>
bfc0fcc0:	00000000 	nop
bfc0fcc4:	3c0e577e 	lui	t6,0x577e
bfc0fcc8:	35ceb53b 	ori	t6,t6,0xb53b
bfc0fccc:	15ae0551 	bne	t5,t6,bfc11214 <inst_error>
bfc0fcd0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:55
bfc0fcd4:	3c08fc72 	lui	t0,0xfc72
bfc0fcd8:	35087544 	ori	t0,t0,0x7544
bfc0fcdc:	3c0958f5 	lui	t1,0x58f5
bfc0fce0:	3529d1dd 	ori	t1,t1,0xd1dd
bfc0fce4:	3c0a9680 	lui	t2,0x9680
bfc0fce8:	354ad475 	ori	t2,t2,0xd475
bfc0fcec:	3c0bccba 	lui	t3,0xccba
bfc0fcf0:	356bf6eb 	ori	t3,t3,0xf6eb
bfc0fcf4:	01600011 	mthi	t3
bfc0fcf8:	01400013 	mtlo	t2
bfc0fcfc:	71090005 	msubu	t0,t1
bfc0fd00:	00006010 	mfhi	t4
bfc0fd04:	00006812 	mflo	t5
bfc0fd08:	3c0ecdf7 	lui	t6,0xcdf7
bfc0fd0c:	35ce07fa 	ori	t6,t6,0x7fa
bfc0fd10:	158e0540 	bne	t4,t6,bfc11214 <inst_error>
bfc0fd14:	00000000 	nop
bfc0fd18:	3c0e9be1 	lui	t6,0x9be1
bfc0fd1c:	35ce14c1 	ori	t6,t6,0x14c1
bfc0fd20:	15ae053c 	bne	t5,t6,bfc11214 <inst_error>
bfc0fd24:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:56
bfc0fd28:	3c08d581 	lui	t0,0xd581
bfc0fd2c:	3508bfa2 	ori	t0,t0,0xbfa2
bfc0fd30:	3c090ab0 	lui	t1,0xab0
bfc0fd34:	35291070 	ori	t1,t1,0x1070
bfc0fd38:	3c0a849a 	lui	t2,0x849a
bfc0fd3c:	354afe59 	ori	t2,t2,0xfe59
bfc0fd40:	3c0b27f8 	lui	t3,0x27f8
bfc0fd44:	356b9944 	ori	t3,t3,0x9944
bfc0fd48:	01600011 	mthi	t3
bfc0fd4c:	01400013 	mtlo	t2
bfc0fd50:	71090005 	msubu	t0,t1
bfc0fd54:	00006010 	mfhi	t4
bfc0fd58:	00006812 	mflo	t5
bfc0fd5c:	3c0e29be 	lui	t6,0x29be
bfc0fd60:	35cec14d 	ori	t6,t6,0xc14d
bfc0fd64:	158e052b 	bne	t4,t6,bfc11214 <inst_error>
bfc0fd68:	00000000 	nop
bfc0fd6c:	3c0eec7d 	lui	t6,0xec7d
bfc0fd70:	35ce0779 	ori	t6,t6,0x779
bfc0fd74:	15ae0527 	bne	t5,t6,bfc11214 <inst_error>
bfc0fd78:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:57
bfc0fd7c:	3c08a2a2 	lui	t0,0xa2a2
bfc0fd80:	3508ad73 	ori	t0,t0,0xad73
bfc0fd84:	3c09d8b0 	lui	t1,0xd8b0
bfc0fd88:	3529a111 	ori	t1,t1,0xa111
bfc0fd8c:	3c0ac73e 	lui	t2,0xc73e
bfc0fd90:	354a57e2 	ori	t2,t2,0x57e2
bfc0fd94:	3c0b9808 	lui	t3,0x9808
bfc0fd98:	356b2522 	ori	t3,t3,0x2522
bfc0fd9c:	01600011 	mthi	t3
bfc0fda0:	01400013 	mtlo	t2
bfc0fda4:	71090005 	msubu	t0,t1
bfc0fda8:	00006010 	mfhi	t4
bfc0fdac:	00006812 	mflo	t5
bfc0fdb0:	3c0e89b1 	lui	t6,0x89b1
bfc0fdb4:	35cefb22 	ori	t6,t6,0xfb22
bfc0fdb8:	158e0516 	bne	t4,t6,bfc11214 <inst_error>
bfc0fdbc:	00000000 	nop
bfc0fdc0:	3c0e644b 	lui	t6,0x644b
bfc0fdc4:	35ce803f 	ori	t6,t6,0x803f
bfc0fdc8:	15ae0512 	bne	t5,t6,bfc11214 <inst_error>
bfc0fdcc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:58
bfc0fdd0:	3c08a47c 	lui	t0,0xa47c
bfc0fdd4:	35088bc1 	ori	t0,t0,0x8bc1
bfc0fdd8:	3c09a33a 	lui	t1,0xa33a
bfc0fddc:	3529ddc7 	ori	t1,t1,0xddc7
bfc0fde0:	3c0a2b4a 	lui	t2,0x2b4a
bfc0fde4:	354a4d3a 	ori	t2,t2,0x4d3a
bfc0fde8:	3c0b93ab 	lui	t3,0x93ab
bfc0fdec:	356b409b 	ori	t3,t3,0x409b
bfc0fdf0:	01600011 	mthi	t3
bfc0fdf4:	01400013 	mtlo	t2
bfc0fdf8:	71090005 	msubu	t0,t1
bfc0fdfc:	00006010 	mfhi	t4
bfc0fe00:	00006812 	mflo	t5
bfc0fe04:	3c0e7281 	lui	t6,0x7281
bfc0fe08:	35ce8a70 	ori	t6,t6,0x8a70
bfc0fe0c:	158e0501 	bne	t4,t6,bfc11214 <inst_error>
bfc0fe10:	00000000 	nop
bfc0fe14:	3c0e3d1a 	lui	t6,0x3d1a
bfc0fe18:	35ce0d33 	ori	t6,t6,0xd33
bfc0fe1c:	15ae04fd 	bne	t5,t6,bfc11214 <inst_error>
bfc0fe20:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:59
bfc0fe24:	3c084c1f 	lui	t0,0x4c1f
bfc0fe28:	35089027 	ori	t0,t0,0x9027
bfc0fe2c:	3c095b0e 	lui	t1,0x5b0e
bfc0fe30:	3529bce1 	ori	t1,t1,0xbce1
bfc0fe34:	3c0a6118 	lui	t2,0x6118
bfc0fe38:	354ab805 	ori	t2,t2,0xb805
bfc0fe3c:	3c0b4119 	lui	t3,0x4119
bfc0fe40:	356b6f6b 	ori	t3,t3,0x6f6b
bfc0fe44:	01600011 	mthi	t3
bfc0fe48:	01400013 	mtlo	t2
bfc0fe4c:	71090005 	msubu	t0,t1
bfc0fe50:	00006010 	mfhi	t4
bfc0fe54:	00006812 	mflo	t5
bfc0fe58:	3c0e2605 	lui	t6,0x2605
bfc0fe5c:	35ced549 	ori	t6,t6,0xd549
bfc0fe60:	158e04ec 	bne	t4,t6,bfc11214 <inst_error>
bfc0fe64:	00000000 	nop
bfc0fe68:	3c0e8c5c 	lui	t6,0x8c5c
bfc0fe6c:	35ce61be 	ori	t6,t6,0x61be
bfc0fe70:	15ae04e8 	bne	t5,t6,bfc11214 <inst_error>
bfc0fe74:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:60
bfc0fe78:	3c0859b2 	lui	t0,0x59b2
bfc0fe7c:	3508c5cd 	ori	t0,t0,0xc5cd
bfc0fe80:	3c09400c 	lui	t1,0x400c
bfc0fe84:	3529822e 	ori	t1,t1,0x822e
bfc0fe88:	3c0ad6ed 	lui	t2,0xd6ed
bfc0fe8c:	354a1f3b 	ori	t2,t2,0x1f3b
bfc0fe90:	3c0bf773 	lui	t3,0xf773
bfc0fe94:	356b15a8 	ori	t3,t3,0x15a8
bfc0fe98:	01600011 	mthi	t3
bfc0fe9c:	01400013 	mtlo	t2
bfc0fea0:	71090005 	msubu	t0,t1
bfc0fea4:	00006010 	mfhi	t4
bfc0fea8:	00006812 	mflo	t5
bfc0feac:	3c0ee102 	lui	t6,0xe102
bfc0feb0:	35ce0236 	ori	t6,t6,0x236
bfc0feb4:	158e04d7 	bne	t4,t6,bfc11214 <inst_error>
bfc0feb8:	00000000 	nop
bfc0febc:	3c0e6abf 	lui	t6,0x6abf
bfc0fec0:	35ce7a65 	ori	t6,t6,0x7a65
bfc0fec4:	15ae04d3 	bne	t5,t6,bfc11214 <inst_error>
bfc0fec8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:61
bfc0fecc:	3c080e8b 	lui	t0,0xe8b
bfc0fed0:	3508b9c1 	ori	t0,t0,0xb9c1
bfc0fed4:	3c095c0e 	lui	t1,0x5c0e
bfc0fed8:	35295d3d 	ori	t1,t1,0x5d3d
bfc0fedc:	3c0a6a47 	lui	t2,0x6a47
bfc0fee0:	354a7d09 	ori	t2,t2,0x7d09
bfc0fee4:	3c0b64c5 	lui	t3,0x64c5
bfc0fee8:	356b5d51 	ori	t3,t3,0x5d51
bfc0feec:	01600011 	mthi	t3
bfc0fef0:	01400013 	mtlo	t2
bfc0fef4:	71090005 	msubu	t0,t1
bfc0fef8:	00006010 	mfhi	t4
bfc0fefc:	00006812 	mflo	t5
bfc0ff00:	3c0e5f8a 	lui	t6,0x5f8a
bfc0ff04:	35ce559f 	ori	t6,t6,0x559f
bfc0ff08:	158e04c2 	bne	t4,t6,bfc11214 <inst_error>
bfc0ff0c:	00000000 	nop
bfc0ff10:	3c0eabf3 	lui	t6,0xabf3
bfc0ff14:	35ce1d0c 	ori	t6,t6,0x1d0c
bfc0ff18:	15ae04be 	bne	t5,t6,bfc11214 <inst_error>
bfc0ff1c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:62
bfc0ff20:	3c08936e 	lui	t0,0x936e
bfc0ff24:	3508ea23 	ori	t0,t0,0xea23
bfc0ff28:	3c093641 	lui	t1,0x3641
bfc0ff2c:	352924d1 	ori	t1,t1,0x24d1
bfc0ff30:	3c0a7e40 	lui	t2,0x7e40
bfc0ff34:	354a5e55 	ori	t2,t2,0x5e55
bfc0ff38:	3c0bb94c 	lui	t3,0xb94c
bfc0ff3c:	356bc4f2 	ori	t3,t3,0xc4f2
bfc0ff40:	01600011 	mthi	t3
bfc0ff44:	01400013 	mtlo	t2
bfc0ff48:	71090005 	msubu	t0,t1
bfc0ff4c:	00006010 	mfhi	t4
bfc0ff50:	00006812 	mflo	t5
bfc0ff54:	3c0ed04f 	lui	t6,0xd04f
bfc0ff58:	35ce0002 	ori	t6,t6,0x2
bfc0ff5c:	158e04ad 	bne	t4,t6,bfc11214 <inst_error>
bfc0ff60:	00000000 	nop
bfc0ff64:	3c0eb2e3 	lui	t6,0xb2e3
bfc0ff68:	35ce4bc2 	ori	t6,t6,0x4bc2
bfc0ff6c:	15ae04a9 	bne	t5,t6,bfc11214 <inst_error>
bfc0ff70:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:63
bfc0ff74:	3c0867e0 	lui	t0,0x67e0
bfc0ff78:	3508757a 	ori	t0,t0,0x757a
bfc0ff7c:	3c097ffe 	lui	t1,0x7ffe
bfc0ff80:	3529aa2f 	ori	t1,t1,0xaa2f
bfc0ff84:	3c0acfea 	lui	t2,0xcfea
bfc0ff88:	354a421a 	ori	t2,t2,0x421a
bfc0ff8c:	3c0bab6f 	lui	t3,0xab6f
bfc0ff90:	356bda1e 	ori	t3,t3,0xda1e
bfc0ff94:	01600011 	mthi	t3
bfc0ff98:	01400013 	mtlo	t2
bfc0ff9c:	71090005 	msubu	t0,t1
bfc0ffa0:	00006010 	mfhi	t4
bfc0ffa4:	00006812 	mflo	t5
bfc0ffa8:	3c0e7780 	lui	t6,0x7780
bfc0ffac:	35ce2a13 	ori	t6,t6,0x2a13
bfc0ffb0:	158e0498 	bne	t4,t6,bfc11214 <inst_error>
bfc0ffb4:	00000000 	nop
bfc0ffb8:	3c0e9aa5 	lui	t6,0x9aa5
bfc0ffbc:	35ceacb4 	ori	t6,t6,0xacb4
bfc0ffc0:	15ae0494 	bne	t5,t6,bfc11214 <inst_error>
bfc0ffc4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:64
bfc0ffc8:	3c08f31e 	lui	t0,0xf31e
bfc0ffcc:	3508668b 	ori	t0,t0,0x668b
bfc0ffd0:	3c095ee0 	lui	t1,0x5ee0
bfc0ffd4:	35294b29 	ori	t1,t1,0x4b29
bfc0ffd8:	3c0a7ca1 	lui	t2,0x7ca1
bfc0ffdc:	354ac383 	ori	t2,t2,0xc383
bfc0ffe0:	3c0bc39b 	lui	t3,0xc39b
bfc0ffe4:	356b5273 	ori	t3,t3,0x5273
bfc0ffe8:	01600011 	mthi	t3
bfc0ffec:	01400013 	mtlo	t2
bfc0fff0:	71090005 	msubu	t0,t1
bfc0fff4:	00006010 	mfhi	t4
bfc0fff8:	00006812 	mflo	t5
bfc0fffc:	3c0ec861 	lui	t6,0xc861
bfc10000:	35ce71fa 	ori	t6,t6,0x71fa
bfc10004:	158e0483 	bne	t4,t6,bfc11214 <inst_error>
bfc10008:	00000000 	nop
bfc1000c:	3c0ee118 	lui	t6,0xe118
bfc10010:	35ce9e40 	ori	t6,t6,0x9e40
bfc10014:	15ae047f 	bne	t5,t6,bfc11214 <inst_error>
bfc10018:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:65
bfc1001c:	3c08e8b6 	lui	t0,0xe8b6
bfc10020:	35088138 	ori	t0,t0,0x8138
bfc10024:	3c09ad85 	lui	t1,0xad85
bfc10028:	352920dd 	ori	t1,t1,0x20dd
bfc1002c:	3c0aa386 	lui	t2,0xa386
bfc10030:	354abd1a 	ori	t2,t2,0xbd1a
bfc10034:	3c0b475b 	lui	t3,0x475b
bfc10038:	356bed1b 	ori	t3,t3,0xed1b
bfc1003c:	01600011 	mthi	t3
bfc10040:	01400013 	mtlo	t2
bfc10044:	71090005 	msubu	t0,t1
bfc10048:	00006010 	mfhi	t4
bfc1004c:	00006812 	mflo	t5
bfc10050:	3c0e3fdb 	lui	t6,0x3fdb
bfc10054:	35ce352b 	ori	t6,t6,0x352b
bfc10058:	158e046e 	bne	t4,t6,bfc11214 <inst_error>
bfc1005c:	00000000 	nop
bfc10060:	3c0ef3ba 	lui	t6,0xf3ba
bfc10064:	35ce2fc2 	ori	t6,t6,0x2fc2
bfc10068:	15ae046a 	bne	t5,t6,bfc11214 <inst_error>
bfc1006c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:66
bfc10070:	3c088735 	lui	t0,0x8735
bfc10074:	35084402 	ori	t0,t0,0x4402
bfc10078:	3c0960e5 	lui	t1,0x60e5
bfc1007c:	3529bbdb 	ori	t1,t1,0xbbdb
bfc10080:	3c0a2032 	lui	t2,0x2032
bfc10084:	354af623 	ori	t2,t2,0xf623
bfc10088:	3c0b416b 	lui	t3,0x416b
bfc1008c:	356b08cf 	ori	t3,t3,0x8cf
bfc10090:	01600011 	mthi	t3
bfc10094:	01400013 	mtlo	t2
bfc10098:	71090005 	msubu	t0,t1
bfc1009c:	00006010 	mfhi	t4
bfc100a0:	00006812 	mflo	t5
bfc100a4:	3c0e6f23 	lui	t6,0x6f23
bfc100a8:	35ce754b 	ori	t6,t6,0x754b
bfc100ac:	158e0459 	bne	t4,t6,bfc11214 <inst_error>
bfc100b0:	00000000 	nop
bfc100b4:	3c0ef72a 	lui	t6,0xf72a
bfc100b8:	35ce526d 	ori	t6,t6,0x526d
bfc100bc:	15ae0455 	bne	t5,t6,bfc11214 <inst_error>
bfc100c0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:67
bfc100c4:	3c08495a 	lui	t0,0x495a
bfc100c8:	3508eed8 	ori	t0,t0,0xeed8
bfc100cc:	3c09510c 	lui	t1,0x510c
bfc100d0:	3529991c 	ori	t1,t1,0x991c
bfc100d4:	3c0afd7e 	lui	t2,0xfd7e
bfc100d8:	354a3367 	ori	t2,t2,0x3367
bfc100dc:	3c0b0339 	lui	t3,0x339
bfc100e0:	356b3073 	ori	t3,t3,0x3073
bfc100e4:	01600011 	mthi	t3
bfc100e8:	01400013 	mtlo	t2
bfc100ec:	71090005 	msubu	t0,t1
bfc100f0:	00006010 	mfhi	t4
bfc100f4:	00006812 	mflo	t5
bfc100f8:	3c0eebff 	lui	t6,0xebff
bfc100fc:	35cecebe 	ori	t6,t6,0xcebe
bfc10100:	158e0444 	bne	t4,t6,bfc11214 <inst_error>
bfc10104:	00000000 	nop
bfc10108:	3c0e14ac 	lui	t6,0x14ac
bfc1010c:	35cefbc7 	ori	t6,t6,0xfbc7
bfc10110:	15ae0440 	bne	t5,t6,bfc11214 <inst_error>
bfc10114:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:68
bfc10118:	3c08c5c6 	lui	t0,0xc5c6
bfc1011c:	350898f1 	ori	t0,t0,0x98f1
bfc10120:	3c09baa8 	lui	t1,0xbaa8
bfc10124:	35291fb6 	ori	t1,t1,0x1fb6
bfc10128:	3c0a4986 	lui	t2,0x4986
bfc1012c:	354ab11d 	ori	t2,t2,0xb11d
bfc10130:	3c0b4208 	lui	t3,0x4208
bfc10134:	356ba7d6 	ori	t3,t3,0xa7d6
bfc10138:	01600011 	mthi	t3
bfc1013c:	01400013 	mtlo	t2
bfc10140:	71090005 	msubu	t0,t1
bfc10144:	00006010 	mfhi	t4
bfc10148:	00006812 	mflo	t5
bfc1014c:	3c0e3243 	lui	t6,0x3243
bfc10150:	35ce328a 	ori	t6,t6,0x328a
bfc10154:	158e042f 	bne	t4,t6,bfc11214 <inst_error>
bfc10158:	00000000 	nop
bfc1015c:	3c0e29a8 	lui	t6,0x29a8
bfc10160:	35cec6c7 	ori	t6,t6,0xc6c7
bfc10164:	15ae042b 	bne	t5,t6,bfc11214 <inst_error>
bfc10168:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:69
bfc1016c:	3c081a2f 	lui	t0,0x1a2f
bfc10170:	350898a2 	ori	t0,t0,0x98a2
bfc10174:	3c099d9e 	lui	t1,0x9d9e
bfc10178:	3529d449 	ori	t1,t1,0xd449
bfc1017c:	3c0ab43c 	lui	t2,0xb43c
bfc10180:	354a3c93 	ori	t2,t2,0x3c93
bfc10184:	3c0b3fb3 	lui	t3,0x3fb3
bfc10188:	356b344b 	ori	t3,t3,0x344b
bfc1018c:	01600011 	mthi	t3
bfc10190:	01400013 	mtlo	t2
bfc10194:	71090005 	msubu	t0,t1
bfc10198:	00006010 	mfhi	t4
bfc1019c:	00006812 	mflo	t5
bfc101a0:	3c0e49c3 	lui	t6,0x49c3
bfc101a4:	35ce5d3a 	ori	t6,t6,0x5d3a
bfc101a8:	158e041a 	bne	t4,t6,bfc11214 <inst_error>
bfc101ac:	00000000 	nop
bfc101b0:	3c0e4447 	lui	t6,0x4447
bfc101b4:	35ce8e61 	ori	t6,t6,0x8e61
bfc101b8:	15ae0416 	bne	t5,t6,bfc11214 <inst_error>
bfc101bc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:70
bfc101c0:	3c08d8a5 	lui	t0,0xd8a5
bfc101c4:	3508d541 	ori	t0,t0,0xd541
bfc101c8:	3c09c466 	lui	t1,0xc466
bfc101cc:	35296642 	ori	t1,t1,0x6642
bfc101d0:	3c0a4831 	lui	t2,0x4831
bfc101d4:	354ae70f 	ori	t2,t2,0xe70f
bfc101d8:	3c0bb05f 	lui	t3,0xb05f
bfc101dc:	356b7380 	ori	t3,t3,0x7380
bfc101e0:	01600011 	mthi	t3
bfc101e4:	01400013 	mtlo	t2
bfc101e8:	71090005 	msubu	t0,t1
bfc101ec:	00006010 	mfhi	t4
bfc101f0:	00006812 	mflo	t5
bfc101f4:	3c0ea736 	lui	t6,0xa736
bfc101f8:	35ce0f20 	ori	t6,t6,0xf20
bfc101fc:	158e0405 	bne	t4,t6,bfc11214 <inst_error>
bfc10200:	00000000 	nop
bfc10204:	3c0e9e93 	lui	t6,0x9e93
bfc10208:	35ce064d 	ori	t6,t6,0x64d
bfc1020c:	15ae0401 	bne	t5,t6,bfc11214 <inst_error>
bfc10210:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:71
bfc10214:	3c08c191 	lui	t0,0xc191
bfc10218:	3508aa74 	ori	t0,t0,0xaa74
bfc1021c:	3c09f502 	lui	t1,0xf502
bfc10220:	35297d59 	ori	t1,t1,0x7d59
bfc10224:	3c0ab9b6 	lui	t2,0xb9b6
bfc10228:	354a1b65 	ori	t2,t2,0x1b65
bfc1022c:	3c0bafac 	lui	t3,0xafac
bfc10230:	356b77cb 	ori	t3,t3,0x77cb
bfc10234:	01600011 	mthi	t3
bfc10238:	01400013 	mtlo	t2
bfc1023c:	71090005 	msubu	t0,t1
bfc10240:	00006010 	mfhi	t4
bfc10244:	00006812 	mflo	t5
bfc10248:	3c0eacfe 	lui	t6,0xacfe
bfc1024c:	35ce558b 	ori	t6,t6,0x558b
bfc10250:	158e03f0 	bne	t4,t6,bfc11214 <inst_error>
bfc10254:	00000000 	nop
bfc10258:	3c0ef4ef 	lui	t6,0xf4ef
bfc1025c:	35ce3511 	ori	t6,t6,0x3511
bfc10260:	15ae03ec 	bne	t5,t6,bfc11214 <inst_error>
bfc10264:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:73
bfc10268:	3c089f15 	lui	t0,0x9f15
bfc1026c:	35086635 	ori	t0,t0,0x6635
bfc10270:	24090000 	li	t1,0
bfc10274:	3c0abf90 	lui	t2,0xbf90
bfc10278:	354a9417 	ori	t2,t2,0x9417
bfc1027c:	3c0bff5d 	lui	t3,0xff5d
bfc10280:	356bb112 	ori	t3,t3,0xb112
bfc10284:	01600011 	mthi	t3
bfc10288:	01400013 	mtlo	t2
bfc1028c:	71090005 	msubu	t0,t1
bfc10290:	00006010 	mfhi	t4
bfc10294:	00006812 	mflo	t5
bfc10298:	3c0eff5d 	lui	t6,0xff5d
bfc1029c:	35ceb111 	ori	t6,t6,0xb111
bfc102a0:	158e03dc 	bne	t4,t6,bfc11214 <inst_error>
bfc102a4:	00000000 	nop
bfc102a8:	3c0ebf90 	lui	t6,0xbf90
bfc102ac:	35ce9417 	ori	t6,t6,0x9417
bfc102b0:	15ae03d8 	bne	t5,t6,bfc11214 <inst_error>
bfc102b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:74
bfc102b8:	3c08ed7d 	lui	t0,0xed7d
bfc102bc:	3508dd46 	ori	t0,t0,0xdd46
bfc102c0:	24090000 	li	t1,0
bfc102c4:	3c0a31a3 	lui	t2,0x31a3
bfc102c8:	354a74d8 	ori	t2,t2,0x74d8
bfc102cc:	3c0bcedf 	lui	t3,0xcedf
bfc102d0:	356bc44c 	ori	t3,t3,0xc44c
bfc102d4:	01600011 	mthi	t3
bfc102d8:	01400013 	mtlo	t2
bfc102dc:	71090005 	msubu	t0,t1
bfc102e0:	00006010 	mfhi	t4
bfc102e4:	00006812 	mflo	t5
bfc102e8:	3c0ecedf 	lui	t6,0xcedf
bfc102ec:	35cec44c 	ori	t6,t6,0xc44c
bfc102f0:	158e03c8 	bne	t4,t6,bfc11214 <inst_error>
bfc102f4:	00000000 	nop
bfc102f8:	3c0e31a3 	lui	t6,0x31a3
bfc102fc:	35ce74d8 	ori	t6,t6,0x74d8
bfc10300:	15ae03c4 	bne	t5,t6,bfc11214 <inst_error>
bfc10304:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:75
bfc10308:	3c08d8af 	lui	t0,0xd8af
bfc1030c:	350822ef 	ori	t0,t0,0x22ef
bfc10310:	24090000 	li	t1,0
bfc10314:	3c0a7eee 	lui	t2,0x7eee
bfc10318:	354a45bf 	ori	t2,t2,0x45bf
bfc1031c:	3c0bf544 	lui	t3,0xf544
bfc10320:	356bbe74 	ori	t3,t3,0xbe74
bfc10324:	01600011 	mthi	t3
bfc10328:	01400013 	mtlo	t2
bfc1032c:	71090005 	msubu	t0,t1
bfc10330:	00006010 	mfhi	t4
bfc10334:	00006812 	mflo	t5
bfc10338:	3c0ef544 	lui	t6,0xf544
bfc1033c:	35cebe74 	ori	t6,t6,0xbe74
bfc10340:	158e03b4 	bne	t4,t6,bfc11214 <inst_error>
bfc10344:	00000000 	nop
bfc10348:	3c0e7eee 	lui	t6,0x7eee
bfc1034c:	35ce45bf 	ori	t6,t6,0x45bf
bfc10350:	15ae03b0 	bne	t5,t6,bfc11214 <inst_error>
bfc10354:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:76
bfc10358:	3c08e28d 	lui	t0,0xe28d
bfc1035c:	3508641f 	ori	t0,t0,0x641f
bfc10360:	24090000 	li	t1,0
bfc10364:	3c0abd29 	lui	t2,0xbd29
bfc10368:	354a7f04 	ori	t2,t2,0x7f04
bfc1036c:	3c0b7484 	lui	t3,0x7484
bfc10370:	356bca6b 	ori	t3,t3,0xca6b
bfc10374:	01600011 	mthi	t3
bfc10378:	01400013 	mtlo	t2
bfc1037c:	71090005 	msubu	t0,t1
bfc10380:	00006010 	mfhi	t4
bfc10384:	00006812 	mflo	t5
bfc10388:	3c0e7484 	lui	t6,0x7484
bfc1038c:	35ceca6a 	ori	t6,t6,0xca6a
bfc10390:	158e03a0 	bne	t4,t6,bfc11214 <inst_error>
bfc10394:	00000000 	nop
bfc10398:	3c0ebd29 	lui	t6,0xbd29
bfc1039c:	35ce7f04 	ori	t6,t6,0x7f04
bfc103a0:	15ae039c 	bne	t5,t6,bfc11214 <inst_error>
bfc103a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:77
bfc103a8:	3c08ecbd 	lui	t0,0xecbd
bfc103ac:	35087495 	ori	t0,t0,0x7495
bfc103b0:	24090000 	li	t1,0
bfc103b4:	3c0a4343 	lui	t2,0x4343
bfc103b8:	354a7b21 	ori	t2,t2,0x7b21
bfc103bc:	3c0bfaa6 	lui	t3,0xfaa6
bfc103c0:	356bb29b 	ori	t3,t3,0xb29b
bfc103c4:	01600011 	mthi	t3
bfc103c8:	01400013 	mtlo	t2
bfc103cc:	71090005 	msubu	t0,t1
bfc103d0:	00006010 	mfhi	t4
bfc103d4:	00006812 	mflo	t5
bfc103d8:	3c0efaa6 	lui	t6,0xfaa6
bfc103dc:	35ceb29b 	ori	t6,t6,0xb29b
bfc103e0:	158e038c 	bne	t4,t6,bfc11214 <inst_error>
bfc103e4:	00000000 	nop
bfc103e8:	3c0e4343 	lui	t6,0x4343
bfc103ec:	35ce7b21 	ori	t6,t6,0x7b21
bfc103f0:	15ae0388 	bne	t5,t6,bfc11214 <inst_error>
bfc103f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:78
bfc103f8:	3c085578 	lui	t0,0x5578
bfc103fc:	3508cfe0 	ori	t0,t0,0xcfe0
bfc10400:	24090000 	li	t1,0
bfc10404:	3c0adf43 	lui	t2,0xdf43
bfc10408:	354abbff 	ori	t2,t2,0xbbff
bfc1040c:	3c0bf9b0 	lui	t3,0xf9b0
bfc10410:	356b0d04 	ori	t3,t3,0xd04
bfc10414:	01600011 	mthi	t3
bfc10418:	01400013 	mtlo	t2
bfc1041c:	71090005 	msubu	t0,t1
bfc10420:	00006010 	mfhi	t4
bfc10424:	00006812 	mflo	t5
bfc10428:	3c0ef9b0 	lui	t6,0xf9b0
bfc1042c:	35ce0d03 	ori	t6,t6,0xd03
bfc10430:	158e0378 	bne	t4,t6,bfc11214 <inst_error>
bfc10434:	00000000 	nop
bfc10438:	3c0edf43 	lui	t6,0xdf43
bfc1043c:	35cebbff 	ori	t6,t6,0xbbff
bfc10440:	15ae0374 	bne	t5,t6,bfc11214 <inst_error>
bfc10444:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:79
bfc10448:	3c08865b 	lui	t0,0x865b
bfc1044c:	3508f02e 	ori	t0,t0,0xf02e
bfc10450:	24090000 	li	t1,0
bfc10454:	3c0aecd5 	lui	t2,0xecd5
bfc10458:	354a267e 	ori	t2,t2,0x267e
bfc1045c:	3c0b4dc0 	lui	t3,0x4dc0
bfc10460:	356bb750 	ori	t3,t3,0xb750
bfc10464:	01600011 	mthi	t3
bfc10468:	01400013 	mtlo	t2
bfc1046c:	71090005 	msubu	t0,t1
bfc10470:	00006010 	mfhi	t4
bfc10474:	00006812 	mflo	t5
bfc10478:	3c0e4dc0 	lui	t6,0x4dc0
bfc1047c:	35ceb74f 	ori	t6,t6,0xb74f
bfc10480:	158e0364 	bne	t4,t6,bfc11214 <inst_error>
bfc10484:	00000000 	nop
bfc10488:	3c0eecd5 	lui	t6,0xecd5
bfc1048c:	35ce267e 	ori	t6,t6,0x267e
bfc10490:	15ae0360 	bne	t5,t6,bfc11214 <inst_error>
bfc10494:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:80
bfc10498:	3c082efa 	lui	t0,0x2efa
bfc1049c:	3508ea86 	ori	t0,t0,0xea86
bfc104a0:	24090000 	li	t1,0
bfc104a4:	3c0a52e7 	lui	t2,0x52e7
bfc104a8:	354a876f 	ori	t2,t2,0x876f
bfc104ac:	3c0b8b17 	lui	t3,0x8b17
bfc104b0:	356b505e 	ori	t3,t3,0x505e
bfc104b4:	01600011 	mthi	t3
bfc104b8:	01400013 	mtlo	t2
bfc104bc:	71090005 	msubu	t0,t1
bfc104c0:	00006010 	mfhi	t4
bfc104c4:	00006812 	mflo	t5
bfc104c8:	3c0e8b17 	lui	t6,0x8b17
bfc104cc:	35ce505e 	ori	t6,t6,0x505e
bfc104d0:	158e0350 	bne	t4,t6,bfc11214 <inst_error>
bfc104d4:	00000000 	nop
bfc104d8:	3c0e52e7 	lui	t6,0x52e7
bfc104dc:	35ce876f 	ori	t6,t6,0x876f
bfc104e0:	15ae034c 	bne	t5,t6,bfc11214 <inst_error>
bfc104e4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:81
bfc104e8:	3c08d884 	lui	t0,0xd884
bfc104ec:	35089541 	ori	t0,t0,0x9541
bfc104f0:	24090000 	li	t1,0
bfc104f4:	3c0ae3ef 	lui	t2,0xe3ef
bfc104f8:	354aea9a 	ori	t2,t2,0xea9a
bfc104fc:	3c0b5ac0 	lui	t3,0x5ac0
bfc10500:	356b2cfa 	ori	t3,t3,0x2cfa
bfc10504:	01600011 	mthi	t3
bfc10508:	01400013 	mtlo	t2
bfc1050c:	71090005 	msubu	t0,t1
bfc10510:	00006010 	mfhi	t4
bfc10514:	00006812 	mflo	t5
bfc10518:	3c0e5ac0 	lui	t6,0x5ac0
bfc1051c:	35ce2cf9 	ori	t6,t6,0x2cf9
bfc10520:	158e033c 	bne	t4,t6,bfc11214 <inst_error>
bfc10524:	00000000 	nop
bfc10528:	3c0ee3ef 	lui	t6,0xe3ef
bfc1052c:	35ceea9a 	ori	t6,t6,0xea9a
bfc10530:	15ae0338 	bne	t5,t6,bfc11214 <inst_error>
bfc10534:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:82
bfc10538:	3c08bb8e 	lui	t0,0xbb8e
bfc1053c:	3508065b 	ori	t0,t0,0x65b
bfc10540:	24090000 	li	t1,0
bfc10544:	3c0a36d2 	lui	t2,0x36d2
bfc10548:	354a086e 	ori	t2,t2,0x86e
bfc1054c:	3c0b01f7 	lui	t3,0x1f7
bfc10550:	356b4aa6 	ori	t3,t3,0x4aa6
bfc10554:	01600011 	mthi	t3
bfc10558:	01400013 	mtlo	t2
bfc1055c:	71090005 	msubu	t0,t1
bfc10560:	00006010 	mfhi	t4
bfc10564:	00006812 	mflo	t5
bfc10568:	3c0e01f7 	lui	t6,0x1f7
bfc1056c:	35ce4aa6 	ori	t6,t6,0x4aa6
bfc10570:	158e0328 	bne	t4,t6,bfc11214 <inst_error>
bfc10574:	00000000 	nop
bfc10578:	3c0e36d2 	lui	t6,0x36d2
bfc1057c:	35ce086e 	ori	t6,t6,0x86e
bfc10580:	15ae0324 	bne	t5,t6,bfc11214 <inst_error>
bfc10584:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:83
bfc10588:	3c08c971 	lui	t0,0xc971
bfc1058c:	35082469 	ori	t0,t0,0x2469
bfc10590:	24090000 	li	t1,0
bfc10594:	3c0a7ffa 	lui	t2,0x7ffa
bfc10598:	354aabd7 	ori	t2,t2,0xabd7
bfc1059c:	3c0be8a9 	lui	t3,0xe8a9
bfc105a0:	356b9a2a 	ori	t3,t3,0x9a2a
bfc105a4:	01600011 	mthi	t3
bfc105a8:	01400013 	mtlo	t2
bfc105ac:	71090005 	msubu	t0,t1
bfc105b0:	00006010 	mfhi	t4
bfc105b4:	00006812 	mflo	t5
bfc105b8:	3c0ee8a9 	lui	t6,0xe8a9
bfc105bc:	35ce9a2a 	ori	t6,t6,0x9a2a
bfc105c0:	158e0314 	bne	t4,t6,bfc11214 <inst_error>
bfc105c4:	00000000 	nop
bfc105c8:	3c0e7ffa 	lui	t6,0x7ffa
bfc105cc:	35ceabd7 	ori	t6,t6,0xabd7
bfc105d0:	15ae0310 	bne	t5,t6,bfc11214 <inst_error>
bfc105d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:84
bfc105d8:	3c08bef2 	lui	t0,0xbef2
bfc105dc:	35083c7f 	ori	t0,t0,0x3c7f
bfc105e0:	24090000 	li	t1,0
bfc105e4:	3c0a69d1 	lui	t2,0x69d1
bfc105e8:	354a054d 	ori	t2,t2,0x54d
bfc105ec:	3c0ba09b 	lui	t3,0xa09b
bfc105f0:	356bcf56 	ori	t3,t3,0xcf56
bfc105f4:	01600011 	mthi	t3
bfc105f8:	01400013 	mtlo	t2
bfc105fc:	71090005 	msubu	t0,t1
bfc10600:	00006010 	mfhi	t4
bfc10604:	00006812 	mflo	t5
bfc10608:	3c0ea09b 	lui	t6,0xa09b
bfc1060c:	35cecf56 	ori	t6,t6,0xcf56
bfc10610:	158e0300 	bne	t4,t6,bfc11214 <inst_error>
bfc10614:	00000000 	nop
bfc10618:	3c0e69d1 	lui	t6,0x69d1
bfc1061c:	35ce054d 	ori	t6,t6,0x54d
bfc10620:	15ae02fc 	bne	t5,t6,bfc11214 <inst_error>
bfc10624:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:85
bfc10628:	3c08e10d 	lui	t0,0xe10d
bfc1062c:	35084d40 	ori	t0,t0,0x4d40
bfc10630:	24090000 	li	t1,0
bfc10634:	3c0acc4b 	lui	t2,0xcc4b
bfc10638:	354aac73 	ori	t2,t2,0xac73
bfc1063c:	3c0b31a1 	lui	t3,0x31a1
bfc10640:	356b10af 	ori	t3,t3,0x10af
bfc10644:	01600011 	mthi	t3
bfc10648:	01400013 	mtlo	t2
bfc1064c:	71090005 	msubu	t0,t1
bfc10650:	00006010 	mfhi	t4
bfc10654:	00006812 	mflo	t5
bfc10658:	3c0e31a1 	lui	t6,0x31a1
bfc1065c:	35ce10ae 	ori	t6,t6,0x10ae
bfc10660:	158e02ec 	bne	t4,t6,bfc11214 <inst_error>
bfc10664:	00000000 	nop
bfc10668:	3c0ecc4b 	lui	t6,0xcc4b
bfc1066c:	35ceac73 	ori	t6,t6,0xac73
bfc10670:	15ae02e8 	bne	t5,t6,bfc11214 <inst_error>
bfc10674:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:86
bfc10678:	3c08a22f 	lui	t0,0xa22f
bfc1067c:	350817eb 	ori	t0,t0,0x17eb
bfc10680:	24090000 	li	t1,0
bfc10684:	3c0abf2b 	lui	t2,0xbf2b
bfc10688:	354a090b 	ori	t2,t2,0x90b
bfc1068c:	3c0b57f7 	lui	t3,0x57f7
bfc10690:	356b3426 	ori	t3,t3,0x3426
bfc10694:	01600011 	mthi	t3
bfc10698:	01400013 	mtlo	t2
bfc1069c:	71090005 	msubu	t0,t1
bfc106a0:	00006010 	mfhi	t4
bfc106a4:	00006812 	mflo	t5
bfc106a8:	3c0e57f7 	lui	t6,0x57f7
bfc106ac:	35ce3425 	ori	t6,t6,0x3425
bfc106b0:	158e02d8 	bne	t4,t6,bfc11214 <inst_error>
bfc106b4:	00000000 	nop
bfc106b8:	3c0ebf2b 	lui	t6,0xbf2b
bfc106bc:	35ce090b 	ori	t6,t6,0x90b
bfc106c0:	15ae02d4 	bne	t5,t6,bfc11214 <inst_error>
bfc106c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:87
bfc106c8:	3c0844c5 	lui	t0,0x44c5
bfc106cc:	350849d4 	ori	t0,t0,0x49d4
bfc106d0:	24090000 	li	t1,0
bfc106d4:	3c0aed2a 	lui	t2,0xed2a
bfc106d8:	354a5d5b 	ori	t2,t2,0x5d5b
bfc106dc:	3c0b1a77 	lui	t3,0x1a77
bfc106e0:	356b3039 	ori	t3,t3,0x3039
bfc106e4:	01600011 	mthi	t3
bfc106e8:	01400013 	mtlo	t2
bfc106ec:	71090005 	msubu	t0,t1
bfc106f0:	00006010 	mfhi	t4
bfc106f4:	00006812 	mflo	t5
bfc106f8:	3c0e1a77 	lui	t6,0x1a77
bfc106fc:	35ce3038 	ori	t6,t6,0x3038
bfc10700:	158e02c4 	bne	t4,t6,bfc11214 <inst_error>
bfc10704:	00000000 	nop
bfc10708:	3c0eed2a 	lui	t6,0xed2a
bfc1070c:	35ce5d5b 	ori	t6,t6,0x5d5b
bfc10710:	15ae02c0 	bne	t5,t6,bfc11214 <inst_error>
bfc10714:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:88
bfc10718:	3c0844c2 	lui	t0,0x44c2
bfc1071c:	3508f645 	ori	t0,t0,0xf645
bfc10720:	24090000 	li	t1,0
bfc10724:	3c0aee84 	lui	t2,0xee84
bfc10728:	354a9923 	ori	t2,t2,0x9923
bfc1072c:	3c0b6efe 	lui	t3,0x6efe
bfc10730:	356b23c9 	ori	t3,t3,0x23c9
bfc10734:	01600011 	mthi	t3
bfc10738:	01400013 	mtlo	t2
bfc1073c:	71090005 	msubu	t0,t1
bfc10740:	00006010 	mfhi	t4
bfc10744:	00006812 	mflo	t5
bfc10748:	3c0e6efe 	lui	t6,0x6efe
bfc1074c:	35ce23c8 	ori	t6,t6,0x23c8
bfc10750:	158e02b0 	bne	t4,t6,bfc11214 <inst_error>
bfc10754:	00000000 	nop
bfc10758:	3c0eee84 	lui	t6,0xee84
bfc1075c:	35ce9923 	ori	t6,t6,0x9923
bfc10760:	15ae02ac 	bne	t5,t6,bfc11214 <inst_error>
bfc10764:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:89
bfc10768:	3c0829ce 	lui	t0,0x29ce
bfc1076c:	3508d8a3 	ori	t0,t0,0xd8a3
bfc10770:	24090000 	li	t1,0
bfc10774:	3c0a07a3 	lui	t2,0x7a3
bfc10778:	354ab643 	ori	t2,t2,0xb643
bfc1077c:	3c0b571f 	lui	t3,0x571f
bfc10780:	356b91b8 	ori	t3,t3,0x91b8
bfc10784:	01600011 	mthi	t3
bfc10788:	01400013 	mtlo	t2
bfc1078c:	71090005 	msubu	t0,t1
bfc10790:	00006010 	mfhi	t4
bfc10794:	00006812 	mflo	t5
bfc10798:	3c0e571f 	lui	t6,0x571f
bfc1079c:	35ce91b8 	ori	t6,t6,0x91b8
bfc107a0:	158e029c 	bne	t4,t6,bfc11214 <inst_error>
bfc107a4:	00000000 	nop
bfc107a8:	3c0e07a3 	lui	t6,0x7a3
bfc107ac:	35ceb643 	ori	t6,t6,0xb643
bfc107b0:	15ae0298 	bne	t5,t6,bfc11214 <inst_error>
bfc107b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:90
bfc107b8:	3c08124d 	lui	t0,0x124d
bfc107bc:	350877da 	ori	t0,t0,0x77da
bfc107c0:	24090000 	li	t1,0
bfc107c4:	3c0aeb47 	lui	t2,0xeb47
bfc107c8:	354a5377 	ori	t2,t2,0x5377
bfc107cc:	3c0bb470 	lui	t3,0xb470
bfc107d0:	356b61c0 	ori	t3,t3,0x61c0
bfc107d4:	01600011 	mthi	t3
bfc107d8:	01400013 	mtlo	t2
bfc107dc:	71090005 	msubu	t0,t1
bfc107e0:	00006010 	mfhi	t4
bfc107e4:	00006812 	mflo	t5
bfc107e8:	3c0eb470 	lui	t6,0xb470
bfc107ec:	35ce61bf 	ori	t6,t6,0x61bf
bfc107f0:	158e0288 	bne	t4,t6,bfc11214 <inst_error>
bfc107f4:	00000000 	nop
bfc107f8:	3c0eeb47 	lui	t6,0xeb47
bfc107fc:	35ce5377 	ori	t6,t6,0x5377
bfc10800:	15ae0284 	bne	t5,t6,bfc11214 <inst_error>
bfc10804:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:91
bfc10808:	3c08b485 	lui	t0,0xb485
bfc1080c:	35088d37 	ori	t0,t0,0x8d37
bfc10810:	24090000 	li	t1,0
bfc10814:	3c0a6c70 	lui	t2,0x6c70
bfc10818:	354a97be 	ori	t2,t2,0x97be
bfc1081c:	3c0bf207 	lui	t3,0xf207
bfc10820:	356b18e0 	ori	t3,t3,0x18e0
bfc10824:	01600011 	mthi	t3
bfc10828:	01400013 	mtlo	t2
bfc1082c:	71090005 	msubu	t0,t1
bfc10830:	00006010 	mfhi	t4
bfc10834:	00006812 	mflo	t5
bfc10838:	3c0ef207 	lui	t6,0xf207
bfc1083c:	35ce18e0 	ori	t6,t6,0x18e0
bfc10840:	158e0274 	bne	t4,t6,bfc11214 <inst_error>
bfc10844:	00000000 	nop
bfc10848:	3c0e6c70 	lui	t6,0x6c70
bfc1084c:	35ce97be 	ori	t6,t6,0x97be
bfc10850:	15ae0270 	bne	t5,t6,bfc11214 <inst_error>
bfc10854:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:92
bfc10858:	3c081b1b 	lui	t0,0x1b1b
bfc1085c:	35089d18 	ori	t0,t0,0x9d18
bfc10860:	24090000 	li	t1,0
bfc10864:	3c0a76e3 	lui	t2,0x76e3
bfc10868:	354a0455 	ori	t2,t2,0x455
bfc1086c:	3c0b228f 	lui	t3,0x228f
bfc10870:	356b12a8 	ori	t3,t3,0x12a8
bfc10874:	01600011 	mthi	t3
bfc10878:	01400013 	mtlo	t2
bfc1087c:	71090005 	msubu	t0,t1
bfc10880:	00006010 	mfhi	t4
bfc10884:	00006812 	mflo	t5
bfc10888:	3c0e228f 	lui	t6,0x228f
bfc1088c:	35ce12a8 	ori	t6,t6,0x12a8
bfc10890:	158e0260 	bne	t4,t6,bfc11214 <inst_error>
bfc10894:	00000000 	nop
bfc10898:	3c0e76e3 	lui	t6,0x76e3
bfc1089c:	35ce0455 	ori	t6,t6,0x455
bfc108a0:	15ae025c 	bne	t5,t6,bfc11214 <inst_error>
bfc108a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:93
bfc108a8:	3c08ff5b 	lui	t0,0xff5b
bfc108ac:	3508236a 	ori	t0,t0,0x236a
bfc108b0:	24090000 	li	t1,0
bfc108b4:	3c0ad832 	lui	t2,0xd832
bfc108b8:	354a2b61 	ori	t2,t2,0x2b61
bfc108bc:	3c0baec2 	lui	t3,0xaec2
bfc108c0:	356b1f7a 	ori	t3,t3,0x1f7a
bfc108c4:	01600011 	mthi	t3
bfc108c8:	01400013 	mtlo	t2
bfc108cc:	71090005 	msubu	t0,t1
bfc108d0:	00006010 	mfhi	t4
bfc108d4:	00006812 	mflo	t5
bfc108d8:	3c0eaec2 	lui	t6,0xaec2
bfc108dc:	35ce1f79 	ori	t6,t6,0x1f79
bfc108e0:	158e024c 	bne	t4,t6,bfc11214 <inst_error>
bfc108e4:	00000000 	nop
bfc108e8:	3c0ed832 	lui	t6,0xd832
bfc108ec:	35ce2b61 	ori	t6,t6,0x2b61
bfc108f0:	15ae0248 	bne	t5,t6,bfc11214 <inst_error>
bfc108f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:94
bfc108f8:	3c080ba8 	lui	t0,0xba8
bfc108fc:	3508b2e3 	ori	t0,t0,0xb2e3
bfc10900:	24090000 	li	t1,0
bfc10904:	3c0ab22f 	lui	t2,0xb22f
bfc10908:	354afba0 	ori	t2,t2,0xfba0
bfc1090c:	3c0b1189 	lui	t3,0x1189
bfc10910:	356bce63 	ori	t3,t3,0xce63
bfc10914:	01600011 	mthi	t3
bfc10918:	01400013 	mtlo	t2
bfc1091c:	71090005 	msubu	t0,t1
bfc10920:	00006010 	mfhi	t4
bfc10924:	00006812 	mflo	t5
bfc10928:	3c0e1189 	lui	t6,0x1189
bfc1092c:	35cece62 	ori	t6,t6,0xce62
bfc10930:	158e0238 	bne	t4,t6,bfc11214 <inst_error>
bfc10934:	00000000 	nop
bfc10938:	3c0eb22f 	lui	t6,0xb22f
bfc1093c:	35cefba0 	ori	t6,t6,0xfba0
bfc10940:	15ae0234 	bne	t5,t6,bfc11214 <inst_error>
bfc10944:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:95
bfc10948:	3c08523b 	lui	t0,0x523b
bfc1094c:	35081e80 	ori	t0,t0,0x1e80
bfc10950:	24090000 	li	t1,0
bfc10954:	3c0abd0a 	lui	t2,0xbd0a
bfc10958:	354a1bd1 	ori	t2,t2,0x1bd1
bfc1095c:	3c0b62db 	lui	t3,0x62db
bfc10960:	356b68bb 	ori	t3,t3,0x68bb
bfc10964:	01600011 	mthi	t3
bfc10968:	01400013 	mtlo	t2
bfc1096c:	71090005 	msubu	t0,t1
bfc10970:	00006010 	mfhi	t4
bfc10974:	00006812 	mflo	t5
bfc10978:	3c0e62db 	lui	t6,0x62db
bfc1097c:	35ce68ba 	ori	t6,t6,0x68ba
bfc10980:	158e0224 	bne	t4,t6,bfc11214 <inst_error>
bfc10984:	00000000 	nop
bfc10988:	3c0ebd0a 	lui	t6,0xbd0a
bfc1098c:	35ce1bd1 	ori	t6,t6,0x1bd1
bfc10990:	15ae0220 	bne	t5,t6,bfc11214 <inst_error>
bfc10994:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:96
bfc10998:	3c08575e 	lui	t0,0x575e
bfc1099c:	35087888 	ori	t0,t0,0x7888
bfc109a0:	24090000 	li	t1,0
bfc109a4:	3c0af7ef 	lui	t2,0xf7ef
bfc109a8:	354a394b 	ori	t2,t2,0x394b
bfc109ac:	3c0bb443 	lui	t3,0xb443
bfc109b0:	356b51f6 	ori	t3,t3,0x51f6
bfc109b4:	01600011 	mthi	t3
bfc109b8:	01400013 	mtlo	t2
bfc109bc:	71090005 	msubu	t0,t1
bfc109c0:	00006010 	mfhi	t4
bfc109c4:	00006812 	mflo	t5
bfc109c8:	3c0eb443 	lui	t6,0xb443
bfc109cc:	35ce51f5 	ori	t6,t6,0x51f5
bfc109d0:	158e0210 	bne	t4,t6,bfc11214 <inst_error>
bfc109d4:	00000000 	nop
bfc109d8:	3c0ef7ef 	lui	t6,0xf7ef
bfc109dc:	35ce394b 	ori	t6,t6,0x394b
bfc109e0:	15ae020c 	bne	t5,t6,bfc11214 <inst_error>
bfc109e4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:97
bfc109e8:	3c083fc9 	lui	t0,0x3fc9
bfc109ec:	3508abce 	ori	t0,t0,0xabce
bfc109f0:	24090000 	li	t1,0
bfc109f4:	3c0adbda 	lui	t2,0xdbda
bfc109f8:	354a0712 	ori	t2,t2,0x712
bfc109fc:	3c0b676a 	lui	t3,0x676a
bfc10a00:	356b1362 	ori	t3,t3,0x1362
bfc10a04:	01600011 	mthi	t3
bfc10a08:	01400013 	mtlo	t2
bfc10a0c:	71090005 	msubu	t0,t1
bfc10a10:	00006010 	mfhi	t4
bfc10a14:	00006812 	mflo	t5
bfc10a18:	3c0e676a 	lui	t6,0x676a
bfc10a1c:	35ce1361 	ori	t6,t6,0x1361
bfc10a20:	158e01fc 	bne	t4,t6,bfc11214 <inst_error>
bfc10a24:	00000000 	nop
bfc10a28:	3c0edbda 	lui	t6,0xdbda
bfc10a2c:	35ce0712 	ori	t6,t6,0x712
bfc10a30:	15ae01f8 	bne	t5,t6,bfc11214 <inst_error>
bfc10a34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:98
bfc10a38:	3c08adb7 	lui	t0,0xadb7
bfc10a3c:	35088a52 	ori	t0,t0,0x8a52
bfc10a40:	24090000 	li	t1,0
bfc10a44:	3c0a4a4b 	lui	t2,0x4a4b
bfc10a48:	354a1769 	ori	t2,t2,0x1769
bfc10a4c:	3c0bf702 	lui	t3,0xf702
bfc10a50:	356b56ce 	ori	t3,t3,0x56ce
bfc10a54:	01600011 	mthi	t3
bfc10a58:	01400013 	mtlo	t2
bfc10a5c:	71090005 	msubu	t0,t1
bfc10a60:	00006010 	mfhi	t4
bfc10a64:	00006812 	mflo	t5
bfc10a68:	3c0ef702 	lui	t6,0xf702
bfc10a6c:	35ce56ce 	ori	t6,t6,0x56ce
bfc10a70:	158e01e8 	bne	t4,t6,bfc11214 <inst_error>
bfc10a74:	00000000 	nop
bfc10a78:	3c0e4a4b 	lui	t6,0x4a4b
bfc10a7c:	35ce1769 	ori	t6,t6,0x1769
bfc10a80:	15ae01e4 	bne	t5,t6,bfc11214 <inst_error>
bfc10a84:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:99
bfc10a88:	24080000 	li	t0,0
bfc10a8c:	3c0905d6 	lui	t1,0x5d6
bfc10a90:	35292199 	ori	t1,t1,0x2199
bfc10a94:	3c0ac493 	lui	t2,0xc493
bfc10a98:	354a32ae 	ori	t2,t2,0x32ae
bfc10a9c:	3c0b0838 	lui	t3,0x838
bfc10aa0:	356be45a 	ori	t3,t3,0xe45a
bfc10aa4:	01600011 	mthi	t3
bfc10aa8:	01400013 	mtlo	t2
bfc10aac:	71090005 	msubu	t0,t1
bfc10ab0:	00006010 	mfhi	t4
bfc10ab4:	00006812 	mflo	t5
bfc10ab8:	3c0e0838 	lui	t6,0x838
bfc10abc:	35cee459 	ori	t6,t6,0xe459
bfc10ac0:	158e01d4 	bne	t4,t6,bfc11214 <inst_error>
bfc10ac4:	00000000 	nop
bfc10ac8:	3c0ec493 	lui	t6,0xc493
bfc10acc:	35ce32ae 	ori	t6,t6,0x32ae
bfc10ad0:	15ae01d0 	bne	t5,t6,bfc11214 <inst_error>
bfc10ad4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:100
bfc10ad8:	24080000 	li	t0,0
bfc10adc:	3c09182f 	lui	t1,0x182f
bfc10ae0:	352997b2 	ori	t1,t1,0x97b2
bfc10ae4:	3c0aa67b 	lui	t2,0xa67b
bfc10ae8:	354a17ed 	ori	t2,t2,0x17ed
bfc10aec:	3c0b0ed4 	lui	t3,0xed4
bfc10af0:	356bb4fd 	ori	t3,t3,0xb4fd
bfc10af4:	01600011 	mthi	t3
bfc10af8:	01400013 	mtlo	t2
bfc10afc:	71090005 	msubu	t0,t1
bfc10b00:	00006010 	mfhi	t4
bfc10b04:	00006812 	mflo	t5
bfc10b08:	3c0e0ed4 	lui	t6,0xed4
bfc10b0c:	35ceb4fc 	ori	t6,t6,0xb4fc
bfc10b10:	158e01c0 	bne	t4,t6,bfc11214 <inst_error>
bfc10b14:	00000000 	nop
bfc10b18:	3c0ea67b 	lui	t6,0xa67b
bfc10b1c:	35ce17ed 	ori	t6,t6,0x17ed
bfc10b20:	15ae01bc 	bne	t5,t6,bfc11214 <inst_error>
bfc10b24:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:101
bfc10b28:	24080000 	li	t0,0
bfc10b2c:	3c09f216 	lui	t1,0xf216
bfc10b30:	35295655 	ori	t1,t1,0x5655
bfc10b34:	3c0a5fa5 	lui	t2,0x5fa5
bfc10b38:	354aed20 	ori	t2,t2,0xed20
bfc10b3c:	3c0bfab1 	lui	t3,0xfab1
bfc10b40:	356b55ac 	ori	t3,t3,0x55ac
bfc10b44:	01600011 	mthi	t3
bfc10b48:	01400013 	mtlo	t2
bfc10b4c:	71090005 	msubu	t0,t1
bfc10b50:	00006010 	mfhi	t4
bfc10b54:	00006812 	mflo	t5
bfc10b58:	3c0efab1 	lui	t6,0xfab1
bfc10b5c:	35ce55ac 	ori	t6,t6,0x55ac
bfc10b60:	158e01ac 	bne	t4,t6,bfc11214 <inst_error>
bfc10b64:	00000000 	nop
bfc10b68:	3c0e5fa5 	lui	t6,0x5fa5
bfc10b6c:	35ceed20 	ori	t6,t6,0xed20
bfc10b70:	15ae01a8 	bne	t5,t6,bfc11214 <inst_error>
bfc10b74:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:102
bfc10b78:	24080000 	li	t0,0
bfc10b7c:	3c09e964 	lui	t1,0xe964
bfc10b80:	35294517 	ori	t1,t1,0x4517
bfc10b84:	3c0a3b69 	lui	t2,0x3b69
bfc10b88:	354a6414 	ori	t2,t2,0x6414
bfc10b8c:	3c0b9b76 	lui	t3,0x9b76
bfc10b90:	356b14a2 	ori	t3,t3,0x14a2
bfc10b94:	01600011 	mthi	t3
bfc10b98:	01400013 	mtlo	t2
bfc10b9c:	71090005 	msubu	t0,t1
bfc10ba0:	00006010 	mfhi	t4
bfc10ba4:	00006812 	mflo	t5
bfc10ba8:	3c0e9b76 	lui	t6,0x9b76
bfc10bac:	35ce14a2 	ori	t6,t6,0x14a2
bfc10bb0:	158e0198 	bne	t4,t6,bfc11214 <inst_error>
bfc10bb4:	00000000 	nop
bfc10bb8:	3c0e3b69 	lui	t6,0x3b69
bfc10bbc:	35ce6414 	ori	t6,t6,0x6414
bfc10bc0:	15ae0194 	bne	t5,t6,bfc11214 <inst_error>
bfc10bc4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:103
bfc10bc8:	24080000 	li	t0,0
bfc10bcc:	3c09000c 	lui	t1,0xc
bfc10bd0:	352952bf 	ori	t1,t1,0x52bf
bfc10bd4:	3c0aacee 	lui	t2,0xacee
bfc10bd8:	354a68b5 	ori	t2,t2,0x68b5
bfc10bdc:	3c0b249b 	lui	t3,0x249b
bfc10be0:	356ba976 	ori	t3,t3,0xa976
bfc10be4:	01600011 	mthi	t3
bfc10be8:	01400013 	mtlo	t2
bfc10bec:	71090005 	msubu	t0,t1
bfc10bf0:	00006010 	mfhi	t4
bfc10bf4:	00006812 	mflo	t5
bfc10bf8:	3c0e249b 	lui	t6,0x249b
bfc10bfc:	35cea975 	ori	t6,t6,0xa975
bfc10c00:	158e0184 	bne	t4,t6,bfc11214 <inst_error>
bfc10c04:	00000000 	nop
bfc10c08:	3c0eacee 	lui	t6,0xacee
bfc10c0c:	35ce68b5 	ori	t6,t6,0x68b5
bfc10c10:	15ae0180 	bne	t5,t6,bfc11214 <inst_error>
bfc10c14:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:104
bfc10c18:	24080000 	li	t0,0
bfc10c1c:	3c092873 	lui	t1,0x2873
bfc10c20:	35297e50 	ori	t1,t1,0x7e50
bfc10c24:	3c0a20b7 	lui	t2,0x20b7
bfc10c28:	354a86e5 	ori	t2,t2,0x86e5
bfc10c2c:	3c0b9ece 	lui	t3,0x9ece
bfc10c30:	356b2561 	ori	t3,t3,0x2561
bfc10c34:	01600011 	mthi	t3
bfc10c38:	01400013 	mtlo	t2
bfc10c3c:	71090005 	msubu	t0,t1
bfc10c40:	00006010 	mfhi	t4
bfc10c44:	00006812 	mflo	t5
bfc10c48:	3c0e9ece 	lui	t6,0x9ece
bfc10c4c:	35ce2561 	ori	t6,t6,0x2561
bfc10c50:	158e0170 	bne	t4,t6,bfc11214 <inst_error>
bfc10c54:	00000000 	nop
bfc10c58:	3c0e20b7 	lui	t6,0x20b7
bfc10c5c:	35ce86e5 	ori	t6,t6,0x86e5
bfc10c60:	15ae016c 	bne	t5,t6,bfc11214 <inst_error>
bfc10c64:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:105
bfc10c68:	24080000 	li	t0,0
bfc10c6c:	3c092579 	lui	t1,0x2579
bfc10c70:	3529208c 	ori	t1,t1,0x208c
bfc10c74:	3c0a9b90 	lui	t2,0x9b90
bfc10c78:	354abea9 	ori	t2,t2,0xbea9
bfc10c7c:	3c0b39c5 	lui	t3,0x39c5
bfc10c80:	356b530d 	ori	t3,t3,0x530d
bfc10c84:	01600011 	mthi	t3
bfc10c88:	01400013 	mtlo	t2
bfc10c8c:	71090005 	msubu	t0,t1
bfc10c90:	00006010 	mfhi	t4
bfc10c94:	00006812 	mflo	t5
bfc10c98:	3c0e39c5 	lui	t6,0x39c5
bfc10c9c:	35ce530c 	ori	t6,t6,0x530c
bfc10ca0:	158e015c 	bne	t4,t6,bfc11214 <inst_error>
bfc10ca4:	00000000 	nop
bfc10ca8:	3c0e9b90 	lui	t6,0x9b90
bfc10cac:	35cebea9 	ori	t6,t6,0xbea9
bfc10cb0:	15ae0158 	bne	t5,t6,bfc11214 <inst_error>
bfc10cb4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:106
bfc10cb8:	24080000 	li	t0,0
bfc10cbc:	3c097f87 	lui	t1,0x7f87
bfc10cc0:	35295f65 	ori	t1,t1,0x5f65
bfc10cc4:	3c0a6ffa 	lui	t2,0x6ffa
bfc10cc8:	354a7211 	ori	t2,t2,0x7211
bfc10ccc:	3c0bc5f7 	lui	t3,0xc5f7
bfc10cd0:	356bc7b7 	ori	t3,t3,0xc7b7
bfc10cd4:	01600011 	mthi	t3
bfc10cd8:	01400013 	mtlo	t2
bfc10cdc:	71090005 	msubu	t0,t1
bfc10ce0:	00006010 	mfhi	t4
bfc10ce4:	00006812 	mflo	t5
bfc10ce8:	3c0ec5f7 	lui	t6,0xc5f7
bfc10cec:	35cec7b7 	ori	t6,t6,0xc7b7
bfc10cf0:	158e0148 	bne	t4,t6,bfc11214 <inst_error>
bfc10cf4:	00000000 	nop
bfc10cf8:	3c0e6ffa 	lui	t6,0x6ffa
bfc10cfc:	35ce7211 	ori	t6,t6,0x7211
bfc10d00:	15ae0144 	bne	t5,t6,bfc11214 <inst_error>
bfc10d04:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:107
bfc10d08:	24080000 	li	t0,0
bfc10d0c:	3c09def4 	lui	t1,0xdef4
bfc10d10:	35296903 	ori	t1,t1,0x6903
bfc10d14:	3c0abda6 	lui	t2,0xbda6
bfc10d18:	354a3dde 	ori	t2,t2,0x3dde
bfc10d1c:	3c0b5b3d 	lui	t3,0x5b3d
bfc10d20:	356b1679 	ori	t3,t3,0x1679
bfc10d24:	01600011 	mthi	t3
bfc10d28:	01400013 	mtlo	t2
bfc10d2c:	71090005 	msubu	t0,t1
bfc10d30:	00006010 	mfhi	t4
bfc10d34:	00006812 	mflo	t5
bfc10d38:	3c0e5b3d 	lui	t6,0x5b3d
bfc10d3c:	35ce1678 	ori	t6,t6,0x1678
bfc10d40:	158e0134 	bne	t4,t6,bfc11214 <inst_error>
bfc10d44:	00000000 	nop
bfc10d48:	3c0ebda6 	lui	t6,0xbda6
bfc10d4c:	35ce3dde 	ori	t6,t6,0x3dde
bfc10d50:	15ae0130 	bne	t5,t6,bfc11214 <inst_error>
bfc10d54:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:108
bfc10d58:	24080000 	li	t0,0
bfc10d5c:	3c099468 	lui	t1,0x9468
bfc10d60:	35292dd2 	ori	t1,t1,0x2dd2
bfc10d64:	3c0a3af8 	lui	t2,0x3af8
bfc10d68:	354ac817 	ori	t2,t2,0xc817
bfc10d6c:	3c0b8bd0 	lui	t3,0x8bd0
bfc10d70:	356ba03c 	ori	t3,t3,0xa03c
bfc10d74:	01600011 	mthi	t3
bfc10d78:	01400013 	mtlo	t2
bfc10d7c:	71090005 	msubu	t0,t1
bfc10d80:	00006010 	mfhi	t4
bfc10d84:	00006812 	mflo	t5
bfc10d88:	3c0e8bd0 	lui	t6,0x8bd0
bfc10d8c:	35cea03c 	ori	t6,t6,0xa03c
bfc10d90:	158e0120 	bne	t4,t6,bfc11214 <inst_error>
bfc10d94:	00000000 	nop
bfc10d98:	3c0e3af8 	lui	t6,0x3af8
bfc10d9c:	35cec817 	ori	t6,t6,0xc817
bfc10da0:	15ae011c 	bne	t5,t6,bfc11214 <inst_error>
bfc10da4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:109
bfc10da8:	24080000 	li	t0,0
bfc10dac:	3c09d994 	lui	t1,0xd994
bfc10db0:	35292297 	ori	t1,t1,0x2297
bfc10db4:	3c0a4470 	lui	t2,0x4470
bfc10db8:	354a4b31 	ori	t2,t2,0x4b31
bfc10dbc:	3c0b92d5 	lui	t3,0x92d5
bfc10dc0:	356bc8e8 	ori	t3,t3,0xc8e8
bfc10dc4:	01600011 	mthi	t3
bfc10dc8:	01400013 	mtlo	t2
bfc10dcc:	71090005 	msubu	t0,t1
bfc10dd0:	00006010 	mfhi	t4
bfc10dd4:	00006812 	mflo	t5
bfc10dd8:	3c0e92d5 	lui	t6,0x92d5
bfc10ddc:	35cec8e8 	ori	t6,t6,0xc8e8
bfc10de0:	158e010c 	bne	t4,t6,bfc11214 <inst_error>
bfc10de4:	00000000 	nop
bfc10de8:	3c0e4470 	lui	t6,0x4470
bfc10dec:	35ce4b31 	ori	t6,t6,0x4b31
bfc10df0:	15ae0108 	bne	t5,t6,bfc11214 <inst_error>
bfc10df4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:110
bfc10df8:	24080000 	li	t0,0
bfc10dfc:	3c090497 	lui	t1,0x497
bfc10e00:	3529850b 	ori	t1,t1,0x850b
bfc10e04:	3c0aaf3d 	lui	t2,0xaf3d
bfc10e08:	354a1ebf 	ori	t2,t2,0x1ebf
bfc10e0c:	3c0b0b59 	lui	t3,0xb59
bfc10e10:	356b4e5d 	ori	t3,t3,0x4e5d
bfc10e14:	01600011 	mthi	t3
bfc10e18:	01400013 	mtlo	t2
bfc10e1c:	71090005 	msubu	t0,t1
bfc10e20:	00006010 	mfhi	t4
bfc10e24:	00006812 	mflo	t5
bfc10e28:	3c0e0b59 	lui	t6,0xb59
bfc10e2c:	35ce4e5c 	ori	t6,t6,0x4e5c
bfc10e30:	158e00f8 	bne	t4,t6,bfc11214 <inst_error>
bfc10e34:	00000000 	nop
bfc10e38:	3c0eaf3d 	lui	t6,0xaf3d
bfc10e3c:	35ce1ebf 	ori	t6,t6,0x1ebf
bfc10e40:	15ae00f4 	bne	t5,t6,bfc11214 <inst_error>
bfc10e44:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:111
bfc10e48:	24080000 	li	t0,0
bfc10e4c:	3c0940b7 	lui	t1,0x40b7
bfc10e50:	35292801 	ori	t1,t1,0x2801
bfc10e54:	3c0a720c 	lui	t2,0x720c
bfc10e58:	354a25cf 	ori	t2,t2,0x25cf
bfc10e5c:	3c0b9abb 	lui	t3,0x9abb
bfc10e60:	356b9f62 	ori	t3,t3,0x9f62
bfc10e64:	01600011 	mthi	t3
bfc10e68:	01400013 	mtlo	t2
bfc10e6c:	71090005 	msubu	t0,t1
bfc10e70:	00006010 	mfhi	t4
bfc10e74:	00006812 	mflo	t5
bfc10e78:	3c0e9abb 	lui	t6,0x9abb
bfc10e7c:	35ce9f62 	ori	t6,t6,0x9f62
bfc10e80:	158e00e4 	bne	t4,t6,bfc11214 <inst_error>
bfc10e84:	00000000 	nop
bfc10e88:	3c0e720c 	lui	t6,0x720c
bfc10e8c:	35ce25cf 	ori	t6,t6,0x25cf
bfc10e90:	15ae00e0 	bne	t5,t6,bfc11214 <inst_error>
bfc10e94:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:112
bfc10e98:	24080000 	li	t0,0
bfc10e9c:	3c09e857 	lui	t1,0xe857
bfc10ea0:	35295012 	ori	t1,t1,0x5012
bfc10ea4:	3c0a1da5 	lui	t2,0x1da5
bfc10ea8:	354adf9a 	ori	t2,t2,0xdf9a
bfc10eac:	3c0be483 	lui	t3,0xe483
bfc10eb0:	356b0873 	ori	t3,t3,0x873
bfc10eb4:	01600011 	mthi	t3
bfc10eb8:	01400013 	mtlo	t2
bfc10ebc:	71090005 	msubu	t0,t1
bfc10ec0:	00006010 	mfhi	t4
bfc10ec4:	00006812 	mflo	t5
bfc10ec8:	3c0ee483 	lui	t6,0xe483
bfc10ecc:	35ce0873 	ori	t6,t6,0x873
bfc10ed0:	158e00d0 	bne	t4,t6,bfc11214 <inst_error>
bfc10ed4:	00000000 	nop
bfc10ed8:	3c0e1da5 	lui	t6,0x1da5
bfc10edc:	35cedf9a 	ori	t6,t6,0xdf9a
bfc10ee0:	15ae00cc 	bne	t5,t6,bfc11214 <inst_error>
bfc10ee4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:113
bfc10ee8:	24080000 	li	t0,0
bfc10eec:	3c0979df 	lui	t1,0x79df
bfc10ef0:	35298320 	ori	t1,t1,0x8320
bfc10ef4:	3c0adde5 	lui	t2,0xdde5
bfc10ef8:	354afa93 	ori	t2,t2,0xfa93
bfc10efc:	3c0b30c0 	lui	t3,0x30c0
bfc10f00:	356b114a 	ori	t3,t3,0x114a
bfc10f04:	01600011 	mthi	t3
bfc10f08:	01400013 	mtlo	t2
bfc10f0c:	71090005 	msubu	t0,t1
bfc10f10:	00006010 	mfhi	t4
bfc10f14:	00006812 	mflo	t5
bfc10f18:	3c0e30c0 	lui	t6,0x30c0
bfc10f1c:	35ce1149 	ori	t6,t6,0x1149
bfc10f20:	158e00bc 	bne	t4,t6,bfc11214 <inst_error>
bfc10f24:	00000000 	nop
bfc10f28:	3c0edde5 	lui	t6,0xdde5
bfc10f2c:	35cefa93 	ori	t6,t6,0xfa93
bfc10f30:	15ae00b8 	bne	t5,t6,bfc11214 <inst_error>
bfc10f34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:114
bfc10f38:	24080000 	li	t0,0
bfc10f3c:	3c097338 	lui	t1,0x7338
bfc10f40:	3529f45a 	ori	t1,t1,0xf45a
bfc10f44:	3c0a73f7 	lui	t2,0x73f7
bfc10f48:	354a53aa 	ori	t2,t2,0x53aa
bfc10f4c:	3c0b43b2 	lui	t3,0x43b2
bfc10f50:	356b6af2 	ori	t3,t3,0x6af2
bfc10f54:	01600011 	mthi	t3
bfc10f58:	01400013 	mtlo	t2
bfc10f5c:	71090005 	msubu	t0,t1
bfc10f60:	00006010 	mfhi	t4
bfc10f64:	00006812 	mflo	t5
bfc10f68:	3c0e43b2 	lui	t6,0x43b2
bfc10f6c:	35ce6af2 	ori	t6,t6,0x6af2
bfc10f70:	158e00a8 	bne	t4,t6,bfc11214 <inst_error>
bfc10f74:	00000000 	nop
bfc10f78:	3c0e73f7 	lui	t6,0x73f7
bfc10f7c:	35ce53aa 	ori	t6,t6,0x53aa
bfc10f80:	15ae00a4 	bne	t5,t6,bfc11214 <inst_error>
bfc10f84:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:115
bfc10f88:	24080000 	li	t0,0
bfc10f8c:	3c0927b9 	lui	t1,0x27b9
bfc10f90:	3529a686 	ori	t1,t1,0xa686
bfc10f94:	3c0a205d 	lui	t2,0x205d
bfc10f98:	354ad16f 	ori	t2,t2,0xd16f
bfc10f9c:	3c0bee7e 	lui	t3,0xee7e
bfc10fa0:	356b0ab3 	ori	t3,t3,0xab3
bfc10fa4:	01600011 	mthi	t3
bfc10fa8:	01400013 	mtlo	t2
bfc10fac:	71090005 	msubu	t0,t1
bfc10fb0:	00006010 	mfhi	t4
bfc10fb4:	00006812 	mflo	t5
bfc10fb8:	3c0eee7e 	lui	t6,0xee7e
bfc10fbc:	35ce0ab3 	ori	t6,t6,0xab3
bfc10fc0:	158e0094 	bne	t4,t6,bfc11214 <inst_error>
bfc10fc4:	00000000 	nop
bfc10fc8:	3c0e205d 	lui	t6,0x205d
bfc10fcc:	35ced16f 	ori	t6,t6,0xd16f
bfc10fd0:	15ae0090 	bne	t5,t6,bfc11214 <inst_error>
bfc10fd4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:116
bfc10fd8:	24080000 	li	t0,0
bfc10fdc:	3c09e55f 	lui	t1,0xe55f
bfc10fe0:	3529bff0 	ori	t1,t1,0xbff0
bfc10fe4:	3c0a3502 	lui	t2,0x3502
bfc10fe8:	354ab4ef 	ori	t2,t2,0xb4ef
bfc10fec:	3c0b550b 	lui	t3,0x550b
bfc10ff0:	356b2a3e 	ori	t3,t3,0x2a3e
bfc10ff4:	01600011 	mthi	t3
bfc10ff8:	01400013 	mtlo	t2
bfc10ffc:	71090005 	msubu	t0,t1
bfc11000:	00006010 	mfhi	t4
bfc11004:	00006812 	mflo	t5
bfc11008:	3c0e550b 	lui	t6,0x550b
bfc1100c:	35ce2a3e 	ori	t6,t6,0x2a3e
bfc11010:	158e0080 	bne	t4,t6,bfc11214 <inst_error>
bfc11014:	00000000 	nop
bfc11018:	3c0e3502 	lui	t6,0x3502
bfc1101c:	35ceb4ef 	ori	t6,t6,0xb4ef
bfc11020:	15ae007c 	bne	t5,t6,bfc11214 <inst_error>
bfc11024:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:117
bfc11028:	24080000 	li	t0,0
bfc1102c:	3c094474 	lui	t1,0x4474
bfc11030:	35292028 	ori	t1,t1,0x2028
bfc11034:	3c0aca0b 	lui	t2,0xca0b
bfc11038:	354a9869 	ori	t2,t2,0x9869
bfc1103c:	3c0b6ccc 	lui	t3,0x6ccc
bfc11040:	356b55dc 	ori	t3,t3,0x55dc
bfc11044:	01600011 	mthi	t3
bfc11048:	01400013 	mtlo	t2
bfc1104c:	71090005 	msubu	t0,t1
bfc11050:	00006010 	mfhi	t4
bfc11054:	00006812 	mflo	t5
bfc11058:	3c0e6ccc 	lui	t6,0x6ccc
bfc1105c:	35ce55db 	ori	t6,t6,0x55db
bfc11060:	158e006c 	bne	t4,t6,bfc11214 <inst_error>
bfc11064:	00000000 	nop
bfc11068:	3c0eca0b 	lui	t6,0xca0b
bfc1106c:	35ce9869 	ori	t6,t6,0x9869
bfc11070:	15ae0068 	bne	t5,t6,bfc11214 <inst_error>
bfc11074:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:118
bfc11078:	24080000 	li	t0,0
bfc1107c:	3c09d1d2 	lui	t1,0xd1d2
bfc11080:	352915bc 	ori	t1,t1,0x15bc
bfc11084:	3c0a5e97 	lui	t2,0x5e97
bfc11088:	354a8cee 	ori	t2,t2,0x8cee
bfc1108c:	3c0bf4d1 	lui	t3,0xf4d1
bfc11090:	356b4887 	ori	t3,t3,0x4887
bfc11094:	01600011 	mthi	t3
bfc11098:	01400013 	mtlo	t2
bfc1109c:	71090005 	msubu	t0,t1
bfc110a0:	00006010 	mfhi	t4
bfc110a4:	00006812 	mflo	t5
bfc110a8:	3c0ef4d1 	lui	t6,0xf4d1
bfc110ac:	35ce4887 	ori	t6,t6,0x4887
bfc110b0:	158e0058 	bne	t4,t6,bfc11214 <inst_error>
bfc110b4:	00000000 	nop
bfc110b8:	3c0e5e97 	lui	t6,0x5e97
bfc110bc:	35ce8cee 	ori	t6,t6,0x8cee
bfc110c0:	15ae0054 	bne	t5,t6,bfc11214 <inst_error>
bfc110c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:119
bfc110c8:	24080000 	li	t0,0
bfc110cc:	3c09d96d 	lui	t1,0xd96d
bfc110d0:	3529fd1e 	ori	t1,t1,0xfd1e
bfc110d4:	3c0a3fe6 	lui	t2,0x3fe6
bfc110d8:	354a6524 	ori	t2,t2,0x6524
bfc110dc:	3c0ba955 	lui	t3,0xa955
bfc110e0:	356ba1b2 	ori	t3,t3,0xa1b2
bfc110e4:	01600011 	mthi	t3
bfc110e8:	01400013 	mtlo	t2
bfc110ec:	71090005 	msubu	t0,t1
bfc110f0:	00006010 	mfhi	t4
bfc110f4:	00006812 	mflo	t5
bfc110f8:	3c0ea955 	lui	t6,0xa955
bfc110fc:	35cea1b2 	ori	t6,t6,0xa1b2
bfc11100:	158e0044 	bne	t4,t6,bfc11214 <inst_error>
bfc11104:	00000000 	nop
bfc11108:	3c0e3fe6 	lui	t6,0x3fe6
bfc1110c:	35ce6524 	ori	t6,t6,0x6524
bfc11110:	15ae0040 	bne	t5,t6,bfc11214 <inst_error>
bfc11114:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:120
bfc11118:	24080000 	li	t0,0
bfc1111c:	3c09e6bf 	lui	t1,0xe6bf
bfc11120:	3529475d 	ori	t1,t1,0x475d
bfc11124:	3c0a2767 	lui	t2,0x2767
bfc11128:	354ad5fc 	ori	t2,t2,0xd5fc
bfc1112c:	3c0b8f3b 	lui	t3,0x8f3b
bfc11130:	356b68b3 	ori	t3,t3,0x68b3
bfc11134:	01600011 	mthi	t3
bfc11138:	01400013 	mtlo	t2
bfc1113c:	71090005 	msubu	t0,t1
bfc11140:	00006010 	mfhi	t4
bfc11144:	00006812 	mflo	t5
bfc11148:	3c0e8f3b 	lui	t6,0x8f3b
bfc1114c:	35ce68b3 	ori	t6,t6,0x68b3
bfc11150:	158e0030 	bne	t4,t6,bfc11214 <inst_error>
bfc11154:	00000000 	nop
bfc11158:	3c0e2767 	lui	t6,0x2767
bfc1115c:	35ced5fc 	ori	t6,t6,0xd5fc
bfc11160:	15ae002c 	bne	t5,t6,bfc11214 <inst_error>
bfc11164:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:121
bfc11168:	24080000 	li	t0,0
bfc1116c:	3c09c672 	lui	t1,0xc672
bfc11170:	35290b6f 	ori	t1,t1,0xb6f
bfc11174:	3c0ad593 	lui	t2,0xd593
bfc11178:	354a1718 	ori	t2,t2,0x1718
bfc1117c:	3c0b8325 	lui	t3,0x8325
bfc11180:	356b4fdb 	ori	t3,t3,0x4fdb
bfc11184:	01600011 	mthi	t3
bfc11188:	01400013 	mtlo	t2
bfc1118c:	71090005 	msubu	t0,t1
bfc11190:	00006010 	mfhi	t4
bfc11194:	00006812 	mflo	t5
bfc11198:	3c0e8325 	lui	t6,0x8325
bfc1119c:	35ce4fda 	ori	t6,t6,0x4fda
bfc111a0:	158e001c 	bne	t4,t6,bfc11214 <inst_error>
bfc111a4:	00000000 	nop
bfc111a8:	3c0ed593 	lui	t6,0xd593
bfc111ac:	35ce1718 	ori	t6,t6,0x1718
bfc111b0:	15ae0018 	bne	t5,t6,bfc11214 <inst_error>
bfc111b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:122
bfc111b8:	24080000 	li	t0,0
bfc111bc:	3c098c84 	lui	t1,0x8c84
bfc111c0:	352933de 	ori	t1,t1,0x33de
bfc111c4:	3c0a1ce8 	lui	t2,0x1ce8
bfc111c8:	354aefa1 	ori	t2,t2,0xefa1
bfc111cc:	3c0b917a 	lui	t3,0x917a
bfc111d0:	356b296d 	ori	t3,t3,0x296d
bfc111d4:	01600011 	mthi	t3
bfc111d8:	01400013 	mtlo	t2
bfc111dc:	71090005 	msubu	t0,t1
bfc111e0:	00006010 	mfhi	t4
bfc111e4:	00006812 	mflo	t5
bfc111e8:	3c0e917a 	lui	t6,0x917a
bfc111ec:	35ce296d 	ori	t6,t6,0x296d
bfc111f0:	158e0008 	bne	t4,t6,bfc11214 <inst_error>
bfc111f4:	00000000 	nop
bfc111f8:	3c0e1ce8 	lui	t6,0x1ce8
bfc111fc:	35ceefa1 	ori	t6,t6,0xefa1
bfc11200:	15ae0004 	bne	t5,t6,bfc11214 <inst_error>
bfc11204:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:126
bfc11208:	16400002 	bnez	s2,bfc11214 <inst_error>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:127
bfc1120c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:129
bfc11210:	26730001 	addiu	s3,s3,1

bfc11214 <inst_error>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:132
bfc11214:	00104e00 	sll	t1,s0,0x18
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:133
bfc11218:	01334025 	or	t0,t1,s3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:134
bfc1121c:	ae280000 	sw	t0,0(s1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:135
bfc11220:	03e00008 	jr	ra
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my7_msubu.S:136
bfc11224:	00000000 	nop
	...

bfc11230 <my6_msub_test>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:7
bfc11230:	26100001 	addiu	s0,s0,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:8
bfc11234:	24120000 	li	s2,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:9
bfc11238:	3c0a0001 	lui	t2,0x1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:12
bfc1123c:	24082222 	li	t0,8738
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:13
bfc11240:	24093333 	li	t1,13107
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:14
bfc11244:	01000013 	mtlo	t0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:15
bfc11248:	01200011 	mthi	t1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:16
bfc1124c:	240a4444 	li	t2,17476
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:17
bfc11250:	240b5555 	li	t3,21845
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:18
bfc11254:	71090004 	msub	t0,t1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:19
bfc11258:	712a0004 	msub	t1,t2
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:20
bfc1125c:	714b0004 	msub	t2,t3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:21
bfc11260:	3c08ad32 	lui	t0,0xad32
bfc11264:	3508d1c7 	ori	t0,t0,0xd1c7
bfc11268:	3c09ca9d 	lui	t1,0xca9d
bfc1126c:	35290615 	ori	t1,t1,0x615
bfc11270:	3c0ac415 	lui	t2,0xc415
bfc11274:	354a72ff 	ori	t2,t2,0x72ff
bfc11278:	3c0b79c7 	lui	t3,0x79c7
bfc1127c:	356bdf11 	ori	t3,t3,0xdf11
bfc11280:	01600011 	mthi	t3
bfc11284:	01400013 	mtlo	t2
bfc11288:	71090004 	msub	t0,t1
bfc1128c:	00006010 	mfhi	t4
bfc11290:	00006812 	mflo	t5
bfc11294:	3c0e6883 	lui	t6,0x6883
bfc11298:	35ce611d 	ori	t6,t6,0x611d
bfc1129c:	158e07f5 	bne	t4,t6,bfc13274 <inst_error>
bfc112a0:	00000000 	nop
bfc112a4:	3c0eb0f4 	lui	t6,0xb0f4
bfc112a8:	35ce93ac 	ori	t6,t6,0x93ac
bfc112ac:	15ae07f1 	bne	t5,t6,bfc13274 <inst_error>
bfc112b0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:22
bfc112b4:	3c08b43d 	lui	t0,0xb43d
bfc112b8:	3508e0e6 	ori	t0,t0,0xe0e6
bfc112bc:	3c09de84 	lui	t1,0xde84
bfc112c0:	35293a51 	ori	t1,t1,0x3a51
bfc112c4:	3c0a8284 	lui	t2,0x8284
bfc112c8:	354a402b 	ori	t2,t2,0x402b
bfc112cc:	3c0bd2f2 	lui	t3,0xd2f2
bfc112d0:	356b5ec4 	ori	t3,t3,0x5ec4
bfc112d4:	01600011 	mthi	t3
bfc112d8:	01400013 	mtlo	t2
bfc112dc:	71090004 	msub	t0,t1
bfc112e0:	00006010 	mfhi	t4
bfc112e4:	00006812 	mflo	t5
bfc112e8:	3c0ec909 	lui	t6,0xc909
bfc112ec:	35ceb7fc 	ori	t6,t6,0xb7fc
bfc112f0:	158e07e0 	bne	t4,t6,bfc13274 <inst_error>
bfc112f4:	00000000 	nop
bfc112f8:	3c0e0b63 	lui	t6,0xb63
bfc112fc:	35cefb65 	ori	t6,t6,0xfb65
bfc11300:	15ae07dc 	bne	t5,t6,bfc13274 <inst_error>
bfc11304:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:23
bfc11308:	3c08c358 	lui	t0,0xc358
bfc1130c:	35081c15 	ori	t0,t0,0x1c15
bfc11310:	3c090e5d 	lui	t1,0xe5d
bfc11314:	35299cd7 	ori	t1,t1,0x9cd7
bfc11318:	3c0ad25c 	lui	t2,0xd25c
bfc1131c:	354a4a8c 	ori	t2,t2,0x4a8c
bfc11320:	3c0ba358 	lui	t3,0xa358
bfc11324:	356bbc11 	ori	t3,t3,0xbc11
bfc11328:	01600011 	mthi	t3
bfc1132c:	01400013 	mtlo	t2
bfc11330:	71090004 	msub	t0,t1
bfc11334:	00006010 	mfhi	t4
bfc11338:	00006812 	mflo	t5
bfc1133c:	3c0ea6c0 	lui	t6,0xa6c0
bfc11340:	35ce18ae 	ori	t6,t6,0x18ae
bfc11344:	158e07cb 	bne	t4,t6,bfc13274 <inst_error>
bfc11348:	00000000 	nop
bfc1134c:	3c0eb89e 	lui	t6,0xb89e
bfc11350:	35cee8e9 	ori	t6,t6,0xe8e9
bfc11354:	15ae07c7 	bne	t5,t6,bfc13274 <inst_error>
bfc11358:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:24
bfc1135c:	3c086b11 	lui	t0,0x6b11
bfc11360:	35089dae 	ori	t0,t0,0x9dae
bfc11364:	3c09b4ff 	lui	t1,0xb4ff
bfc11368:	35296188 	ori	t1,t1,0x6188
bfc1136c:	3c0a1cdd 	lui	t2,0x1cdd
bfc11370:	354a0985 	ori	t2,t2,0x985
bfc11374:	3c0bb525 	lui	t3,0xb525
bfc11378:	356b276e 	ori	t3,t3,0x276e
bfc1137c:	01600011 	mthi	t3
bfc11380:	01400013 	mtlo	t2
bfc11384:	71090004 	msub	t0,t1
bfc11388:	00006010 	mfhi	t4
bfc1138c:	00006812 	mflo	t5
bfc11390:	3c0ed483 	lui	t6,0xd483
bfc11394:	35ce92e7 	ori	t6,t6,0x92e7
bfc11398:	158e07b6 	bne	t4,t6,bfc13274 <inst_error>
bfc1139c:	00000000 	nop
bfc113a0:	3c0e2670 	lui	t6,0x2670
bfc113a4:	35ce5715 	ori	t6,t6,0x5715
bfc113a8:	15ae07b2 	bne	t5,t6,bfc13274 <inst_error>
bfc113ac:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:25
bfc113b0:	3c080de8 	lui	t0,0xde8
bfc113b4:	35082135 	ori	t0,t0,0x2135
bfc113b8:	3c099b9d 	lui	t1,0x9b9d
bfc113bc:	352976e2 	ori	t1,t1,0x76e2
bfc113c0:	3c0ac7b0 	lui	t2,0xc7b0
bfc113c4:	354ac6e5 	ori	t2,t2,0xc6e5
bfc113c8:	3c0b00b4 	lui	t3,0xb4
bfc113cc:	356b1777 	ori	t3,t3,0x1777
bfc113d0:	01600011 	mthi	t3
bfc113d4:	01400013 	mtlo	t2
bfc113d8:	71090004 	msub	t0,t1
bfc113dc:	00006010 	mfhi	t4
bfc113e0:	00006812 	mflo	t5
bfc113e4:	3c0e0628 	lui	t6,0x628
bfc113e8:	35ce1ebf 	ori	t6,t6,0x1ebf
bfc113ec:	158e07a1 	bne	t4,t6,bfc13274 <inst_error>
bfc113f0:	00000000 	nop
bfc113f4:	3c0e0cf4 	lui	t6,0xcf4
bfc113f8:	35ce081b 	ori	t6,t6,0x81b
bfc113fc:	15ae079d 	bne	t5,t6,bfc13274 <inst_error>
bfc11400:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:26
bfc11404:	3c08d53a 	lui	t0,0xd53a
bfc11408:	3508a408 	ori	t0,t0,0xa408
bfc1140c:	3c09c656 	lui	t1,0xc656
bfc11410:	35294580 	ori	t1,t1,0x4580
bfc11414:	3c0aac26 	lui	t2,0xac26
bfc11418:	354a138e 	ori	t2,t2,0x138e
bfc1141c:	3c0bc2d5 	lui	t3,0xc2d5
bfc11420:	356b0c34 	ori	t3,t3,0xc34
bfc11424:	01600011 	mthi	t3
bfc11428:	01400013 	mtlo	t2
bfc1142c:	71090004 	msub	t0,t1
bfc11430:	00006010 	mfhi	t4
bfc11434:	00006812 	mflo	t5
bfc11438:	3c0eb932 	lui	t6,0xb932
bfc1143c:	35cebf46 	ori	t6,t6,0xbf46
bfc11440:	158e078c 	bne	t4,t6,bfc13274 <inst_error>
bfc11444:	00000000 	nop
bfc11448:	3c0ef5ed 	lui	t6,0xf5ed
bfc1144c:	35cee78e 	ori	t6,t6,0xe78e
bfc11450:	15ae0788 	bne	t5,t6,bfc13274 <inst_error>
bfc11454:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:27
bfc11458:	3c087df1 	lui	t0,0x7df1
bfc1145c:	3508b9e4 	ori	t0,t0,0xb9e4
bfc11460:	3c098ca6 	lui	t1,0x8ca6
bfc11464:	35290733 	ori	t1,t1,0x733
bfc11468:	3c0a98f0 	lui	t2,0x98f0
bfc1146c:	354a59b4 	ori	t2,t2,0x59b4
bfc11470:	3c0bbb3c 	lui	t3,0xbb3c
bfc11474:	356baa69 	ori	t3,t3,0xaa69
bfc11478:	01600011 	mthi	t3
bfc1147c:	01400013 	mtlo	t2
bfc11480:	71090004 	msub	t0,t1
bfc11484:	00006010 	mfhi	t4
bfc11488:	00006812 	mflo	t5
bfc1148c:	3c0ef3fc 	lui	t6,0xf3fc
bfc11490:	35ce845a 	ori	t6,t6,0x845a
bfc11494:	158e0777 	bne	t4,t6,bfc13274 <inst_error>
bfc11498:	00000000 	nop
bfc1149c:	3c0eabdb 	lui	t6,0xabdb
bfc114a0:	35ce1548 	ori	t6,t6,0x1548
bfc114a4:	15ae0773 	bne	t5,t6,bfc13274 <inst_error>
bfc114a8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:28
bfc114ac:	3c083fcd 	lui	t0,0x3fcd
bfc114b0:	35082580 	ori	t0,t0,0x2580
bfc114b4:	3c093453 	lui	t1,0x3453
bfc114b8:	3529576f 	ori	t1,t1,0x576f
bfc114bc:	3c0a65fa 	lui	t2,0x65fa
bfc114c0:	354a3824 	ori	t2,t2,0x3824
bfc114c4:	3c0b4c54 	lui	t3,0x4c54
bfc114c8:	356b66c3 	ori	t3,t3,0x66c3
bfc114cc:	01600011 	mthi	t3
bfc114d0:	01400013 	mtlo	t2
bfc114d4:	71090004 	msub	t0,t1
bfc114d8:	00006010 	mfhi	t4
bfc114dc:	00006812 	mflo	t5
bfc114e0:	3c0e3f49 	lui	t6,0x3f49
bfc114e4:	35cef5d7 	ori	t6,t6,0xf5d7
bfc114e8:	158e0762 	bne	t4,t6,bfc13274 <inst_error>
bfc114ec:	00000000 	nop
bfc114f0:	3c0edbc8 	lui	t6,0xdbc8
bfc114f4:	35ce75a4 	ori	t6,t6,0x75a4
bfc114f8:	15ae075e 	bne	t5,t6,bfc13274 <inst_error>
bfc114fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:29
bfc11500:	3c088093 	lui	t0,0x8093
bfc11504:	3508fd81 	ori	t0,t0,0xfd81
bfc11508:	3c09c24a 	lui	t1,0xc24a
bfc1150c:	3529f870 	ori	t1,t1,0xf870
bfc11510:	3c0a0ee1 	lui	t2,0xee1
bfc11514:	354a5812 	ori	t2,t2,0x5812
bfc11518:	3c0bc433 	lui	t3,0xc433
bfc1151c:	356b6c30 	ori	t3,t3,0x6c30
bfc11520:	01600011 	mthi	t3
bfc11524:	01400013 	mtlo	t2
bfc11528:	71090004 	msub	t0,t1
bfc1152c:	00006010 	mfhi	t4
bfc11530:	00006812 	mflo	t5
bfc11534:	3c0ea57c 	lui	t6,0xa57c
bfc11538:	35ce9476 	ori	t6,t6,0x9476
bfc1153c:	158e074d 	bne	t4,t6,bfc13274 <inst_error>
bfc11540:	00000000 	nop
bfc11544:	3c0e6743 	lui	t6,0x6743
bfc11548:	35ce77a2 	ori	t6,t6,0x77a2
bfc1154c:	15ae0749 	bne	t5,t6,bfc13274 <inst_error>
bfc11550:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:30
bfc11554:	3c089f67 	lui	t0,0x9f67
bfc11558:	350803d2 	ori	t0,t0,0x3d2
bfc1155c:	3c099e18 	lui	t1,0x9e18
bfc11560:	35293028 	ori	t1,t1,0x3028
bfc11564:	3c0aa3d2 	lui	t2,0xa3d2
bfc11568:	354a55f4 	ori	t2,t2,0x55f4
bfc1156c:	3c0b44f4 	lui	t3,0x44f4
bfc11570:	356bb8fe 	ori	t3,t3,0xb8fe
bfc11574:	01600011 	mthi	t3
bfc11578:	01400013 	mtlo	t2
bfc1157c:	71090004 	msub	t0,t1
bfc11580:	00006010 	mfhi	t4
bfc11584:	00006812 	mflo	t5
bfc11588:	3c0e2003 	lui	t6,0x2003
bfc1158c:	35ce48f7 	ori	t6,t6,0x48f7
bfc11590:	158e0738 	bne	t4,t6,bfc13274 <inst_error>
bfc11594:	00000000 	nop
bfc11598:	3c0e7352 	lui	t6,0x7352
bfc1159c:	35ce5d24 	ori	t6,t6,0x5d24
bfc115a0:	15ae0734 	bne	t5,t6,bfc13274 <inst_error>
bfc115a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:31
bfc115a8:	3c086a9b 	lui	t0,0x6a9b
bfc115ac:	35085448 	ori	t0,t0,0x5448
bfc115b0:	3c09fa4b 	lui	t1,0xfa4b
bfc115b4:	35292cb7 	ori	t1,t1,0x2cb7
bfc115b8:	3c0af7b0 	lui	t2,0xf7b0
bfc115bc:	354a1178 	ori	t2,t2,0x1178
bfc115c0:	3c0bdc33 	lui	t3,0xdc33
bfc115c4:	356bc172 	ori	t3,t3,0xc172
bfc115c8:	01600011 	mthi	t3
bfc115cc:	01400013 	mtlo	t2
bfc115d0:	71090004 	msub	t0,t1
bfc115d4:	00006010 	mfhi	t4
bfc115d8:	00006812 	mflo	t5
bfc115dc:	3c0ede94 	lui	t6,0xde94
bfc115e0:	35ce174b 	ori	t6,t6,0x174b
bfc115e4:	158e0723 	bne	t4,t6,bfc13274 <inst_error>
bfc115e8:	00000000 	nop
bfc115ec:	3c0e0f12 	lui	t6,0xf12
bfc115f0:	35ce7200 	ori	t6,t6,0x7200
bfc115f4:	15ae071f 	bne	t5,t6,bfc13274 <inst_error>
bfc115f8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:32
bfc115fc:	3c085a3c 	lui	t0,0x5a3c
bfc11600:	35081cef 	ori	t0,t0,0x1cef
bfc11604:	3c0924c7 	lui	t1,0x24c7
bfc11608:	3529430d 	ori	t1,t1,0x430d
bfc1160c:	3c0aa8b2 	lui	t2,0xa8b2
bfc11610:	354a3a01 	ori	t2,t2,0x3a01
bfc11614:	3c0bcbe7 	lui	t3,0xcbe7
bfc11618:	356b5193 	ori	t3,t3,0x5193
bfc1161c:	01600011 	mthi	t3
bfc11620:	01400013 	mtlo	t2
bfc11624:	71090004 	msub	t0,t1
bfc11628:	00006010 	mfhi	t4
bfc1162c:	00006812 	mflo	t5
bfc11630:	3c0ebef0 	lui	t6,0xbef0
bfc11634:	35cea124 	ori	t6,t6,0xa124
bfc11638:	158e070e 	bne	t4,t6,bfc13274 <inst_error>
bfc1163c:	00000000 	nop
bfc11640:	3c0e3e49 	lui	t6,0x3e49
bfc11644:	35ce34de 	ori	t6,t6,0x34de
bfc11648:	15ae070a 	bne	t5,t6,bfc13274 <inst_error>
bfc1164c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:33
bfc11650:	3c0821d2 	lui	t0,0x21d2
bfc11654:	350899b2 	ori	t0,t0,0x99b2
bfc11658:	3c09f18a 	lui	t1,0xf18a
bfc1165c:	3529fbe8 	ori	t1,t1,0xfbe8
bfc11660:	3c0acfc9 	lui	t2,0xcfc9
bfc11664:	354a2afc 	ori	t2,t2,0x2afc
bfc11668:	3c0b95a5 	lui	t3,0x95a5
bfc1166c:	356b5a31 	ori	t3,t3,0x5a31
bfc11670:	01600011 	mthi	t3
bfc11674:	01400013 	mtlo	t2
bfc11678:	71090004 	msub	t0,t1
bfc1167c:	00006010 	mfhi	t4
bfc11680:	00006812 	mflo	t5
bfc11684:	3c0e978e 	lui	t6,0x978e
bfc11688:	35ce5463 	ori	t6,t6,0x5463
bfc1168c:	158e06f9 	bne	t4,t6,bfc13274 <inst_error>
bfc11690:	00000000 	nop
bfc11694:	3c0e4048 	lui	t6,0x4048
bfc11698:	35ce5bac 	ori	t6,t6,0x5bac
bfc1169c:	15ae06f5 	bne	t5,t6,bfc13274 <inst_error>
bfc116a0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:34
bfc116a4:	3c083fb7 	lui	t0,0x3fb7
bfc116a8:	3508e638 	ori	t0,t0,0xe638
bfc116ac:	3c094542 	lui	t1,0x4542
bfc116b0:	3529b9d3 	ori	t1,t1,0xb9d3
bfc116b4:	3c0a6b55 	lui	t2,0x6b55
bfc116b8:	354a394c 	ori	t2,t2,0x394c
bfc116bc:	3c0b89fb 	lui	t3,0x89fb
bfc116c0:	356b0bca 	ori	t3,t3,0xbca
bfc116c4:	01600011 	mthi	t3
bfc116c8:	01400013 	mtlo	t2
bfc116cc:	71090004 	msub	t0,t1
bfc116d0:	00006010 	mfhi	t4
bfc116d4:	00006812 	mflo	t5
bfc116d8:	3c0e78bd 	lui	t6,0x78bd
bfc116dc:	35cedf13 	ori	t6,t6,0xdf13
bfc116e0:	158e06e4 	bne	t4,t6,bfc13274 <inst_error>
bfc116e4:	00000000 	nop
bfc116e8:	3c0e8ef4 	lui	t6,0x8ef4
bfc116ec:	35ce0124 	ori	t6,t6,0x124
bfc116f0:	15ae06e0 	bne	t5,t6,bfc13274 <inst_error>
bfc116f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:35
bfc116f8:	3c084286 	lui	t0,0x4286
bfc116fc:	3508249d 	ori	t0,t0,0x249d
bfc11700:	3c09279b 	lui	t1,0x279b
bfc11704:	35298828 	ori	t1,t1,0x8828
bfc11708:	3c0ab9ce 	lui	t2,0xb9ce
bfc1170c:	354a0fa0 	ori	t2,t2,0xfa0
bfc11710:	3c0b12f3 	lui	t3,0x12f3
bfc11714:	356b272d 	ori	t3,t3,0x272d
bfc11718:	01600011 	mthi	t3
bfc1171c:	01400013 	mtlo	t2
bfc11720:	71090004 	msub	t0,t1
bfc11724:	00006010 	mfhi	t4
bfc11728:	00006812 	mflo	t5
bfc1172c:	3c0e08a8 	lui	t6,0x8a8
bfc11730:	35ce4cfe 	ori	t6,t6,0x4cfe
bfc11734:	158e06cf 	bne	t4,t6,bfc13274 <inst_error>
bfc11738:	00000000 	nop
bfc1173c:	3c0efb55 	lui	t6,0xfb55
bfc11740:	35ceef18 	ori	t6,t6,0xef18
bfc11744:	15ae06cb 	bne	t5,t6,bfc13274 <inst_error>
bfc11748:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:36
bfc1174c:	3c08dc78 	lui	t0,0xdc78
bfc11750:	3508a34c 	ori	t0,t0,0xa34c
bfc11754:	3c0960a4 	lui	t1,0x60a4
bfc11758:	35296263 	ori	t1,t1,0x6263
bfc1175c:	3c0ad729 	lui	t2,0xd729
bfc11760:	354aebf6 	ori	t2,t2,0xebf6
bfc11764:	3c0b518e 	lui	t3,0x518e
bfc11768:	356beb31 	ori	t3,t3,0xeb31
bfc1176c:	01600011 	mthi	t3
bfc11770:	01400013 	mtlo	t2
bfc11774:	71090004 	msub	t0,t1
bfc11778:	00006010 	mfhi	t4
bfc1177c:	00006812 	mflo	t5
bfc11780:	3c0e5ef8 	lui	t6,0x5ef8
bfc11784:	35ce7e53 	ori	t6,t6,0x7e53
bfc11788:	158e06ba 	bne	t4,t6,bfc13274 <inst_error>
bfc1178c:	00000000 	nop
bfc11790:	3c0e494f 	lui	t6,0x494f
bfc11794:	35cead92 	ori	t6,t6,0xad92
bfc11798:	15ae06b6 	bne	t5,t6,bfc13274 <inst_error>
bfc1179c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:37
bfc117a0:	3c08068a 	lui	t0,0x68a
bfc117a4:	3508c6cd 	ori	t0,t0,0xc6cd
bfc117a8:	3c097b5c 	lui	t1,0x7b5c
bfc117ac:	35299f81 	ori	t1,t1,0x9f81
bfc117b0:	3c0ad5ba 	lui	t2,0xd5ba
bfc117b4:	354a78ce 	ori	t2,t2,0x78ce
bfc117b8:	3c0bb86e 	lui	t3,0xb86e
bfc117bc:	356b92fc 	ori	t3,t3,0x92fc
bfc117c0:	01600011 	mthi	t3
bfc117c4:	01400013 	mtlo	t2
bfc117c8:	71090004 	msub	t0,t1
bfc117cc:	00006010 	mfhi	t4
bfc117d0:	00006812 	mflo	t5
bfc117d4:	3c0eb547 	lui	t6,0xb547
bfc117d8:	35ce8784 	ori	t6,t6,0x8784
bfc117dc:	158e06a5 	bne	t4,t6,bfc13274 <inst_error>
bfc117e0:	00000000 	nop
bfc117e4:	3c0e67a6 	lui	t6,0x67a6
bfc117e8:	35cef881 	ori	t6,t6,0xf881
bfc117ec:	15ae06a1 	bne	t5,t6,bfc13274 <inst_error>
bfc117f0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:38
bfc117f4:	3c0831f9 	lui	t0,0x31f9
bfc117f8:	3508baf8 	ori	t0,t0,0xbaf8
bfc117fc:	3c09fa1d 	lui	t1,0xfa1d
bfc11800:	35290251 	ori	t1,t1,0x251
bfc11804:	3c0a170b 	lui	t2,0x170b
bfc11808:	354a99a8 	ori	t2,t2,0x99a8
bfc1180c:	3c0b733f 	lui	t3,0x733f
bfc11810:	356b81d8 	ori	t3,t3,0x81d8
bfc11814:	01600011 	mthi	t3
bfc11818:	01400013 	mtlo	t2
bfc1181c:	71090004 	msub	t0,t1
bfc11820:	00006010 	mfhi	t4
bfc11824:	00006812 	mflo	t5
bfc11828:	3c0e7465 	lui	t6,0x7465
bfc1182c:	35ceb27b 	ori	t6,t6,0xb27b
bfc11830:	158e0690 	bne	t4,t6,bfc13274 <inst_error>
bfc11834:	00000000 	nop
bfc11838:	3c0ef579 	lui	t6,0xf579
bfc1183c:	35ce8130 	ori	t6,t6,0x8130
bfc11840:	15ae068c 	bne	t5,t6,bfc13274 <inst_error>
bfc11844:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:39
bfc11848:	3c08885e 	lui	t0,0x885e
bfc1184c:	3508469b 	ori	t0,t0,0x469b
bfc11850:	3c092467 	lui	t1,0x2467
bfc11854:	3529d16a 	ori	t1,t1,0xd16a
bfc11858:	3c0a6642 	lui	t2,0x6642
bfc1185c:	354ad0b6 	ori	t2,t2,0xd0b6
bfc11860:	3c0ba1be 	lui	t3,0xa1be
bfc11864:	356b48ec 	ori	t3,t3,0x48ec
bfc11868:	01600011 	mthi	t3
bfc1186c:	01400013 	mtlo	t2
bfc11870:	71090004 	msub	t0,t1
bfc11874:	00006010 	mfhi	t4
bfc11878:	00006812 	mflo	t5
bfc1187c:	3c0eb2c1 	lui	t6,0xb2c1
bfc11880:	35ce8aec 	ori	t6,t6,0x8aec
bfc11884:	158e067b 	bne	t4,t6,bfc13274 <inst_error>
bfc11888:	00000000 	nop
bfc1188c:	3c0ec338 	lui	t6,0xc338
bfc11890:	35ce0988 	ori	t6,t6,0x988
bfc11894:	15ae0677 	bne	t5,t6,bfc13274 <inst_error>
bfc11898:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:40
bfc1189c:	3c086f15 	lui	t0,0x6f15
bfc118a0:	350862d1 	ori	t0,t0,0x62d1
bfc118a4:	3c09fb60 	lui	t1,0xfb60
bfc118a8:	3529afe3 	ori	t1,t1,0xafe3
bfc118ac:	3c0aac5c 	lui	t2,0xac5c
bfc118b0:	354ad5b9 	ori	t2,t2,0xd5b9
bfc118b4:	3c0b9d6b 	lui	t3,0x9d6b
bfc118b8:	356bdb67 	ori	t3,t3,0xdb67
bfc118bc:	01600011 	mthi	t3
bfc118c0:	01400013 	mtlo	t2
bfc118c4:	71090004 	msub	t0,t1
bfc118c8:	00006010 	mfhi	t4
bfc118cc:	00006812 	mflo	t5
bfc118d0:	3c0e9f6d 	lui	t6,0x9f6d
bfc118d4:	35ce51fd 	ori	t6,t6,0x51fd
bfc118d8:	158e0666 	bne	t4,t6,bfc13274 <inst_error>
bfc118dc:	00000000 	nop
bfc118e0:	3c0e9479 	lui	t6,0x9479
bfc118e4:	35ce5766 	ori	t6,t6,0x5766
bfc118e8:	15ae0662 	bne	t5,t6,bfc13274 <inst_error>
bfc118ec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:41
bfc118f0:	3c08c9cd 	lui	t0,0xc9cd
bfc118f4:	3508d568 	ori	t0,t0,0xd568
bfc118f8:	3c09ef10 	lui	t1,0xef10
bfc118fc:	3529731a 	ori	t1,t1,0x731a
bfc11900:	3c0abc57 	lui	t2,0xbc57
bfc11904:	354af695 	ori	t2,t2,0xf695
bfc11908:	3c0b4a75 	lui	t3,0x4a75
bfc1190c:	356b1f34 	ori	t3,t3,0x1f34
bfc11910:	01600011 	mthi	t3
bfc11914:	01400013 	mtlo	t2
bfc11918:	71090004 	msub	t0,t1
bfc1191c:	00006010 	mfhi	t4
bfc11920:	00006812 	mflo	t5
bfc11924:	3c0e46df 	lui	t6,0x46df
bfc11928:	35ce45e0 	ori	t6,t6,0x45e0
bfc1192c:	158e0651 	bne	t4,t6,bfc13274 <inst_error>
bfc11930:	00000000 	nop
bfc11934:	3c0e5812 	lui	t6,0x5812
bfc11938:	35ce9205 	ori	t6,t6,0x9205
bfc1193c:	15ae064d 	bne	t5,t6,bfc13274 <inst_error>
bfc11940:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:42
bfc11944:	3c089aaa 	lui	t0,0x9aaa
bfc11948:	3508df3f 	ori	t0,t0,0xdf3f
bfc1194c:	3c0912f0 	lui	t1,0x12f0
bfc11950:	3529b8a7 	ori	t1,t1,0xb8a7
bfc11954:	3c0a4c40 	lui	t2,0x4c40
bfc11958:	354a0ec9 	ori	t2,t2,0xec9
bfc1195c:	3c0baa0d 	lui	t3,0xaa0d
bfc11960:	356b8751 	ori	t3,t3,0x8751
bfc11964:	01600011 	mthi	t3
bfc11968:	01400013 	mtlo	t2
bfc1196c:	71090004 	msub	t0,t1
bfc11970:	00006010 	mfhi	t4
bfc11974:	00006812 	mflo	t5
bfc11978:	3c0eb18c 	lui	t6,0xb18c
bfc1197c:	35cecc84 	ori	t6,t6,0xcc84
bfc11980:	158e063c 	bne	t4,t6,bfc13274 <inst_error>
bfc11984:	00000000 	nop
bfc11988:	3c0edd43 	lui	t6,0xdd43
bfc1198c:	35ce24b0 	ori	t6,t6,0x24b0
bfc11990:	15ae0638 	bne	t5,t6,bfc13274 <inst_error>
bfc11994:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:43
bfc11998:	3c08210b 	lui	t0,0x210b
bfc1199c:	3508447f 	ori	t0,t0,0x447f
bfc119a0:	3c0901b5 	lui	t1,0x1b5
bfc119a4:	352971f3 	ori	t1,t1,0x71f3
bfc119a8:	3c0ace4a 	lui	t2,0xce4a
bfc119ac:	354abd4f 	ori	t2,t2,0xbd4f
bfc119b0:	3c0beee7 	lui	t3,0xeee7
bfc119b4:	356bbd60 	ori	t3,t3,0xbd60
bfc119b8:	01600011 	mthi	t3
bfc119bc:	01400013 	mtlo	t2
bfc119c0:	71090004 	msub	t0,t1
bfc119c4:	00006010 	mfhi	t4
bfc119c8:	00006812 	mflo	t5
bfc119cc:	3c0eeeaf 	lui	t6,0xeeaf
bfc119d0:	35ce466e 	ori	t6,t6,0x466e
bfc119d4:	158e0627 	bne	t4,t6,bfc13274 <inst_error>
bfc119d8:	00000000 	nop
bfc119dc:	3c0e8a91 	lui	t6,0x8a91
bfc119e0:	35cea9c2 	ori	t6,t6,0xa9c2
bfc119e4:	15ae0623 	bne	t5,t6,bfc13274 <inst_error>
bfc119e8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:44
bfc119ec:	3c081edd 	lui	t0,0x1edd
bfc119f0:	3508427f 	ori	t0,t0,0x427f
bfc119f4:	3c0938b6 	lui	t1,0x38b6
bfc119f8:	35291c5e 	ori	t1,t1,0x1c5e
bfc119fc:	3c0a6be5 	lui	t2,0x6be5
bfc11a00:	354ace0c 	ori	t2,t2,0xce0c
bfc11a04:	3c0bb351 	lui	t3,0xb351
bfc11a08:	356ba225 	ori	t3,t3,0xa225
bfc11a0c:	01600011 	mthi	t3
bfc11a10:	01400013 	mtlo	t2
bfc11a14:	71090004 	msub	t0,t1
bfc11a18:	00006010 	mfhi	t4
bfc11a1c:	00006812 	mflo	t5
bfc11a20:	3c0eac7b 	lui	t6,0xac7b
bfc11a24:	35ce46e0 	ori	t6,t6,0x46e0
bfc11a28:	158e0612 	bne	t4,t6,bfc13274 <inst_error>
bfc11a2c:	00000000 	nop
bfc11a30:	3c0ed517 	lui	t6,0xd517
bfc11a34:	35ce7f6a 	ori	t6,t6,0x7f6a
bfc11a38:	15ae060e 	bne	t5,t6,bfc13274 <inst_error>
bfc11a3c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:45
bfc11a40:	3c08793b 	lui	t0,0x793b
bfc11a44:	35080512 	ori	t0,t0,0x512
bfc11a48:	3c09028f 	lui	t1,0x28f
bfc11a4c:	3529aa6e 	ori	t1,t1,0xaa6e
bfc11a50:	3c0ac9e1 	lui	t2,0xc9e1
bfc11a54:	354a1b55 	ori	t2,t2,0x1b55
bfc11a58:	3c0bcd7b 	lui	t3,0xcd7b
bfc11a5c:	356b2d20 	ori	t3,t3,0x2d20
bfc11a60:	01600011 	mthi	t3
bfc11a64:	01400013 	mtlo	t2
bfc11a68:	71090004 	msub	t0,t1
bfc11a6c:	00006010 	mfhi	t4
bfc11a70:	00006812 	mflo	t5
bfc11a74:	3c0ecc44 	lui	t6,0xcc44
bfc11a78:	35ceae68 	ori	t6,t6,0xae68
bfc11a7c:	158e05fd 	bne	t4,t6,bfc13274 <inst_error>
bfc11a80:	00000000 	nop
bfc11a84:	3c0e8818 	lui	t6,0x8818
bfc11a88:	35cef999 	ori	t6,t6,0xf999
bfc11a8c:	15ae05f9 	bne	t5,t6,bfc13274 <inst_error>
bfc11a90:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:46
bfc11a94:	3c081d5c 	lui	t0,0x1d5c
bfc11a98:	3508e686 	ori	t0,t0,0xe686
bfc11a9c:	3c09e82b 	lui	t1,0xe82b
bfc11aa0:	3529402a 	ori	t1,t1,0x402a
bfc11aa4:	3c0a4ba5 	lui	t2,0x4ba5
bfc11aa8:	354ac606 	ori	t2,t2,0xc606
bfc11aac:	3c0b2d7e 	lui	t3,0x2d7e
bfc11ab0:	356bbd7e 	ori	t3,t3,0xbd7e
bfc11ab4:	01600011 	mthi	t3
bfc11ab8:	01400013 	mtlo	t2
bfc11abc:	71090004 	msub	t0,t1
bfc11ac0:	00006010 	mfhi	t4
bfc11ac4:	00006812 	mflo	t5
bfc11ac8:	3c0e303a 	lui	t6,0x303a
bfc11acc:	35ce7d24 	ori	t6,t6,0x7d24
bfc11ad0:	158e05e8 	bne	t4,t6,bfc13274 <inst_error>
bfc11ad4:	00000000 	nop
bfc11ad8:	3c0e1844 	lui	t6,0x1844
bfc11adc:	35ce740a 	ori	t6,t6,0x740a
bfc11ae0:	15ae05e4 	bne	t5,t6,bfc13274 <inst_error>
bfc11ae4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:47
bfc11ae8:	3c0897de 	lui	t0,0x97de
bfc11aec:	35087d62 	ori	t0,t0,0x7d62
bfc11af0:	3c0973ff 	lui	t1,0x73ff
bfc11af4:	35291fba 	ori	t1,t1,0x1fba
bfc11af8:	3c0af0d4 	lui	t2,0xf0d4
bfc11afc:	354aa786 	ori	t2,t2,0xa786
bfc11b00:	3c0b3aa1 	lui	t3,0x3aa1
bfc11b04:	356b6ad2 	ori	t3,t3,0x6ad2
bfc11b08:	01600011 	mthi	t3
bfc11b0c:	01400013 	mtlo	t2
bfc11b10:	71090004 	msub	t0,t1
bfc11b14:	00006010 	mfhi	t4
bfc11b18:	00006812 	mflo	t5
bfc11b1c:	3c0e69d0 	lui	t6,0x69d0
bfc11b20:	35ce3ec7 	ori	t6,t6,0x3ec7
bfc11b24:	158e05d3 	bne	t4,t6,bfc13274 <inst_error>
bfc11b28:	00000000 	nop
bfc11b2c:	3c0ebd60 	lui	t6,0xbd60
bfc11b30:	35ceb052 	ori	t6,t6,0xb052
bfc11b34:	15ae05cf 	bne	t5,t6,bfc13274 <inst_error>
bfc11b38:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:48
bfc11b3c:	3c08e531 	lui	t0,0xe531
bfc11b40:	35080ae8 	ori	t0,t0,0xae8
bfc11b44:	3c09df76 	lui	t1,0xdf76
bfc11b48:	3529f840 	ori	t1,t1,0xf840
bfc11b4c:	3c0af15e 	lui	t2,0xf15e
bfc11b50:	354a37d8 	ori	t2,t2,0x37d8
bfc11b54:	3c0bd733 	lui	t3,0xd733
bfc11b58:	356b4438 	ori	t3,t3,0x4438
bfc11b5c:	01600011 	mthi	t3
bfc11b60:	01400013 	mtlo	t2
bfc11b64:	71090004 	msub	t0,t1
bfc11b68:	00006010 	mfhi	t4
bfc11b6c:	00006812 	mflo	t5
bfc11b70:	3c0ed3cb 	lui	t6,0xd3cb
bfc11b74:	35ce0c04 	ori	t6,t6,0xc04
bfc11b78:	158e05be 	bne	t4,t6,bfc13274 <inst_error>
bfc11b7c:	00000000 	nop
bfc11b80:	3c0e039a 	lui	t6,0x39a
bfc11b84:	35cebdd8 	ori	t6,t6,0xbdd8
bfc11b88:	15ae05ba 	bne	t5,t6,bfc13274 <inst_error>
bfc11b8c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:49
bfc11b90:	3c08b52a 	lui	t0,0xb52a
bfc11b94:	3508afa3 	ori	t0,t0,0xafa3
bfc11b98:	3c0944bf 	lui	t1,0x44bf
bfc11b9c:	3529dbb7 	ori	t1,t1,0xdbb7
bfc11ba0:	3c0a7861 	lui	t2,0x7861
bfc11ba4:	354a2fd8 	ori	t2,t2,0x2fd8
bfc11ba8:	3c0b1c68 	lui	t3,0x1c68
bfc11bac:	356b3a75 	ori	t3,t3,0x3a75
bfc11bb0:	01600011 	mthi	t3
bfc11bb4:	01400013 	mtlo	t2
bfc11bb8:	71090004 	msub	t0,t1
bfc11bbc:	00006010 	mfhi	t4
bfc11bc0:	00006812 	mflo	t5
bfc11bc4:	3c0e3080 	lui	t6,0x3080
bfc11bc8:	35cef92f 	ori	t6,t6,0xf92f
bfc11bcc:	158e05a9 	bne	t4,t6,bfc13274 <inst_error>
bfc11bd0:	00000000 	nop
bfc11bd4:	3c0e1c00 	lui	t6,0x1c00
bfc11bd8:	35ce3153 	ori	t6,t6,0x3153
bfc11bdc:	15ae05a5 	bne	t5,t6,bfc13274 <inst_error>
bfc11be0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:50
bfc11be4:	3c083cba 	lui	t0,0x3cba
bfc11be8:	35083a1e 	ori	t0,t0,0x3a1e
bfc11bec:	3c0980a4 	lui	t1,0x80a4
bfc11bf0:	3529f451 	ori	t1,t1,0xf451
bfc11bf4:	3c0a2204 	lui	t2,0x2204
bfc11bf8:	354a32d0 	ori	t2,t2,0x32d0
bfc11bfc:	3c0b7511 	lui	t3,0x7511
bfc11c00:	356b0aa9 	ori	t3,t3,0xaa9
bfc11c04:	01600011 	mthi	t3
bfc11c08:	01400013 	mtlo	t2
bfc11c0c:	71090004 	msub	t0,t1
bfc11c10:	00006010 	mfhi	t4
bfc11c14:	00006812 	mflo	t5
bfc11c18:	3c0e9347 	lui	t6,0x9347
bfc11c1c:	35ce0676 	ori	t6,t6,0x676
bfc11c20:	158e0594 	bne	t4,t6,bfc13274 <inst_error>
bfc11c24:	00000000 	nop
bfc11c28:	3c0e307b 	lui	t6,0x307b
bfc11c2c:	35ce3752 	ori	t6,t6,0x3752
bfc11c30:	15ae0590 	bne	t5,t6,bfc13274 <inst_error>
bfc11c34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:51
bfc11c38:	3c085c0d 	lui	t0,0x5c0d
bfc11c3c:	3508f89f 	ori	t0,t0,0xf89f
bfc11c40:	3c0923fc 	lui	t1,0x23fc
bfc11c44:	35297abe 	ori	t1,t1,0x7abe
bfc11c48:	3c0a91d8 	lui	t2,0x91d8
bfc11c4c:	354a7342 	ori	t2,t2,0x7342
bfc11c50:	3c0be6be 	lui	t3,0xe6be
bfc11c54:	356b13ed 	ori	t3,t3,0x13ed
bfc11c58:	01600011 	mthi	t3
bfc11c5c:	01400013 	mtlo	t2
bfc11c60:	71090004 	msub	t0,t1
bfc11c64:	00006010 	mfhi	t4
bfc11c68:	00006812 	mflo	t5
bfc11c6c:	3c0ed9cd 	lui	t6,0xd9cd
bfc11c70:	35ce610b 	ori	t6,t6,0x610b
bfc11c74:	158e057f 	bne	t4,t6,bfc13274 <inst_error>
bfc11c78:	00000000 	nop
bfc11c7c:	3c0e1d7a 	lui	t6,0x1d7a
bfc11c80:	35ce2740 	ori	t6,t6,0x2740
bfc11c84:	15ae057b 	bne	t5,t6,bfc13274 <inst_error>
bfc11c88:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:52
bfc11c8c:	3c0851f5 	lui	t0,0x51f5
bfc11c90:	35086cc1 	ori	t0,t0,0x6cc1
bfc11c94:	3c090fab 	lui	t1,0xfab
bfc11c98:	352944fa 	ori	t1,t1,0x44fa
bfc11c9c:	3c0ad8fd 	lui	t2,0xd8fd
bfc11ca0:	354aa691 	ori	t2,t2,0xa691
bfc11ca4:	3c0b6874 	lui	t3,0x6874
bfc11ca8:	356b0223 	ori	t3,t3,0x223
bfc11cac:	01600011 	mthi	t3
bfc11cb0:	01400013 	mtlo	t2
bfc11cb4:	71090004 	msub	t0,t1
bfc11cb8:	00006010 	mfhi	t4
bfc11cbc:	00006812 	mflo	t5
bfc11cc0:	3c0e636f 	lui	t6,0x636f
bfc11cc4:	35cecbbe 	ori	t6,t6,0xcbbe
bfc11cc8:	158e056a 	bne	t4,t6,bfc13274 <inst_error>
bfc11ccc:	00000000 	nop
bfc11cd0:	3c0eaa83 	lui	t6,0xaa83
bfc11cd4:	35ce2e17 	ori	t6,t6,0x2e17
bfc11cd8:	15ae0566 	bne	t5,t6,bfc13274 <inst_error>
bfc11cdc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:53
bfc11ce0:	3c089c2b 	lui	t0,0x9c2b
bfc11ce4:	35089908 	ori	t0,t0,0x9908
bfc11ce8:	3c098d34 	lui	t1,0x8d34
bfc11cec:	3529212a 	ori	t1,t1,0x212a
bfc11cf0:	3c0a2478 	lui	t2,0x2478
bfc11cf4:	354a8c71 	ori	t2,t2,0x8c71
bfc11cf8:	3c0b71f3 	lui	t3,0x71f3
bfc11cfc:	356bad2f 	ori	t3,t3,0xad2f
bfc11d00:	01600011 	mthi	t3
bfc11d04:	01400013 	mtlo	t2
bfc11d08:	71090004 	msub	t0,t1
bfc11d0c:	00006010 	mfhi	t4
bfc11d10:	00006812 	mflo	t5
bfc11d14:	3c0e452f 	lui	t6,0x452f
bfc11d18:	35ce9701 	ori	t6,t6,0x9701
bfc11d1c:	158e0555 	bne	t4,t6,bfc13274 <inst_error>
bfc11d20:	00000000 	nop
bfc11d24:	3c0e68f7 	lui	t6,0x68f7
bfc11d28:	35ce6921 	ori	t6,t6,0x6921
bfc11d2c:	15ae0551 	bne	t5,t6,bfc13274 <inst_error>
bfc11d30:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:54
bfc11d34:	3c08bc8e 	lui	t0,0xbc8e
bfc11d38:	3508ec69 	ori	t0,t0,0xec69
bfc11d3c:	3c096992 	lui	t1,0x6992
bfc11d40:	3529c6b3 	ori	t1,t1,0xc6b3
bfc11d44:	3c0ae1d7 	lui	t2,0xe1d7
bfc11d48:	354a7df4 	ori	t2,t2,0x7df4
bfc11d4c:	3c0b6f9a 	lui	t3,0x6f9a
bfc11d50:	356bfbd6 	ori	t3,t3,0xfbd6
bfc11d54:	01600011 	mthi	t3
bfc11d58:	01400013 	mtlo	t2
bfc11d5c:	71090004 	msub	t0,t1
bfc11d60:	00006010 	mfhi	t4
bfc11d64:	00006812 	mflo	t5
bfc11d68:	3c0e8b6b 	lui	t6,0x8b6b
bfc11d6c:	35ce07b4 	ori	t6,t6,0x7b4
bfc11d70:	158e0540 	bne	t4,t6,bfc13274 <inst_error>
bfc11d74:	00000000 	nop
bfc11d78:	3c0e9a2c 	lui	t6,0x9a2c
bfc11d7c:	35cefa89 	ori	t6,t6,0xfa89
bfc11d80:	15ae053c 	bne	t5,t6,bfc13274 <inst_error>
bfc11d84:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:55
bfc11d88:	3c0847b3 	lui	t0,0x47b3
bfc11d8c:	3508fbbf 	ori	t0,t0,0xfbbf
bfc11d90:	3c09656f 	lui	t1,0x656f
bfc11d94:	3529cbc5 	ori	t1,t1,0xcbc5
bfc11d98:	3c0a8dca 	lui	t2,0x8dca
bfc11d9c:	354aa3db 	ori	t2,t2,0xa3db
bfc11da0:	3c0bc12d 	lui	t3,0xc12d
bfc11da4:	356bf5ad 	ori	t3,t3,0xf5ad
bfc11da8:	01600011 	mthi	t3
bfc11dac:	01400013 	mtlo	t2
bfc11db0:	71090004 	msub	t0,t1
bfc11db4:	00006010 	mfhi	t4
bfc11db8:	00006812 	mflo	t5
bfc11dbc:	3c0ea4c4 	lui	t6,0xa4c4
bfc11dc0:	35cea33d 	ori	t6,t6,0xa33d
bfc11dc4:	158e052b 	bne	t4,t6,bfc13274 <inst_error>
bfc11dc8:	00000000 	nop
bfc11dcc:	3c0e24d8 	lui	t6,0x24d8
bfc11dd0:	35ce74e0 	ori	t6,t6,0x74e0
bfc11dd4:	15ae0527 	bne	t5,t6,bfc13274 <inst_error>
bfc11dd8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:56
bfc11ddc:	3c08387c 	lui	t0,0x387c
bfc11de0:	3508abab 	ori	t0,t0,0xabab
bfc11de4:	3c0924c1 	lui	t1,0x24c1
bfc11de8:	3529fdcf 	ori	t1,t1,0xfdcf
bfc11dec:	3c0af90a 	lui	t2,0xf90a
bfc11df0:	354aaff1 	ori	t2,t2,0xaff1
bfc11df4:	3c0b5156 	lui	t3,0x5156
bfc11df8:	356baee8 	ori	t3,t3,0xaee8
bfc11dfc:	01600011 	mthi	t3
bfc11e00:	01400013 	mtlo	t2
bfc11e04:	71090004 	msub	t0,t1
bfc11e08:	00006010 	mfhi	t4
bfc11e0c:	00006812 	mflo	t5
bfc11e10:	3c0e493a 	lui	t6,0x493a
bfc11e14:	35ce58c5 	ori	t6,t6,0x58c5
bfc11e18:	158e0516 	bne	t4,t6,bfc13274 <inst_error>
bfc11e1c:	00000000 	nop
bfc11e20:	3c0e9ea8 	lui	t6,0x9ea8
bfc11e24:	35cee1ac 	ori	t6,t6,0xe1ac
bfc11e28:	15ae0512 	bne	t5,t6,bfc13274 <inst_error>
bfc11e2c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:57
bfc11e30:	3c08c596 	lui	t0,0xc596
bfc11e34:	35082234 	ori	t0,t0,0x2234
bfc11e38:	3c0946ff 	lui	t1,0x46ff
bfc11e3c:	35294dd8 	ori	t1,t1,0x4dd8
bfc11e40:	3c0a5356 	lui	t2,0x5356
bfc11e44:	354aa709 	ori	t2,t2,0xa709
bfc11e48:	3c0bbfea 	lui	t3,0xbfea
bfc11e4c:	356bcf34 	ori	t3,t3,0xcf34
bfc11e50:	01600011 	mthi	t3
bfc11e54:	01400013 	mtlo	t2
bfc11e58:	71090004 	msub	t0,t1
bfc11e5c:	00006010 	mfhi	t4
bfc11e60:	00006812 	mflo	t5
bfc11e64:	3c0ed01e 	lui	t6,0xd01e
bfc11e68:	35ce0311 	ori	t6,t6,0x311
bfc11e6c:	158e0501 	bne	t4,t6,bfc13274 <inst_error>
bfc11e70:	00000000 	nop
bfc11e74:	3c0e2a94 	lui	t6,0x2a94
bfc11e78:	35ce2729 	ori	t6,t6,0x2729
bfc11e7c:	15ae04fd 	bne	t5,t6,bfc13274 <inst_error>
bfc11e80:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:58
bfc11e84:	3c082a41 	lui	t0,0x2a41
bfc11e88:	3508b3e6 	ori	t0,t0,0xb3e6
bfc11e8c:	3c0983c2 	lui	t1,0x83c2
bfc11e90:	3529fef8 	ori	t1,t1,0xfef8
bfc11e94:	3c0af7b4 	lui	t2,0xf7b4
bfc11e98:	354a3725 	ori	t2,t2,0x3725
bfc11e9c:	3c0b42a0 	lui	t3,0x42a0
bfc11ea0:	356bb09d 	ori	t3,t3,0xb09d
bfc11ea4:	01600011 	mthi	t3
bfc11ea8:	01400013 	mtlo	t2
bfc11eac:	71090004 	msub	t0,t1
bfc11eb0:	00006010 	mfhi	t4
bfc11eb4:	00006812 	mflo	t5
bfc11eb8:	3c0e5722 	lui	t6,0x5722
bfc11ebc:	35ce9593 	ori	t6,t6,0x9593
bfc11ec0:	158e04ec 	bne	t4,t6,bfc13274 <inst_error>
bfc11ec4:	00000000 	nop
bfc11ec8:	3c0ed143 	lui	t6,0xd143
bfc11ecc:	35cebc55 	ori	t6,t6,0xbc55
bfc11ed0:	15ae04e8 	bne	t5,t6,bfc13274 <inst_error>
bfc11ed4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:59
bfc11ed8:	3c088090 	lui	t0,0x8090
bfc11edc:	35088c8d 	ori	t0,t0,0x8c8d
bfc11ee0:	3c0905db 	lui	t1,0x5db
bfc11ee4:	35294d18 	ori	t1,t1,0x4d18
bfc11ee8:	3c0ad93d 	lui	t2,0xd93d
bfc11eec:	354acbc6 	ori	t2,t2,0xcbc6
bfc11ef0:	3c0bca30 	lui	t3,0xca30
bfc11ef4:	356b6781 	ori	t3,t3,0x6781
bfc11ef8:	01600011 	mthi	t3
bfc11efc:	01400013 	mtlo	t2
bfc11f00:	71090004 	msub	t0,t1
bfc11f04:	00006010 	mfhi	t4
bfc11f08:	00006812 	mflo	t5
bfc11f0c:	3c0ecd1a 	lui	t6,0xcd1a
bfc11f10:	35cebf7a 	ori	t6,t6,0xbf7a
bfc11f14:	158e04d7 	bne	t4,t6,bfc13274 <inst_error>
bfc11f18:	00000000 	nop
bfc11f1c:	3c0e53cb 	lui	t6,0x53cb
bfc11f20:	35ce358e 	ori	t6,t6,0x358e
bfc11f24:	15ae04d3 	bne	t5,t6,bfc13274 <inst_error>
bfc11f28:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:60
bfc11f2c:	3c08132a 	lui	t0,0x132a
bfc11f30:	3508a6b9 	ori	t0,t0,0xa6b9
bfc11f34:	3c093ebd 	lui	t1,0x3ebd
bfc11f38:	3529e501 	ori	t1,t1,0xe501
bfc11f3c:	3c0a67c7 	lui	t2,0x67c7
bfc11f40:	354a9641 	ori	t2,t2,0x9641
bfc11f44:	3c0bfb16 	lui	t3,0xfb16
bfc11f48:	356b5230 	ori	t3,t3,0x5230
bfc11f4c:	01600011 	mthi	t3
bfc11f50:	01400013 	mtlo	t2
bfc11f54:	71090004 	msub	t0,t1
bfc11f58:	00006010 	mfhi	t4
bfc11f5c:	00006812 	mflo	t5
bfc11f60:	3c0ef663 	lui	t6,0xf663
bfc11f64:	35cec62d 	ori	t6,t6,0xc62d
bfc11f68:	158e04c2 	bne	t4,t6,bfc13274 <inst_error>
bfc11f6c:	00000000 	nop
bfc11f70:	3c0e48e4 	lui	t6,0x48e4
bfc11f74:	35ce7288 	ori	t6,t6,0x7288
bfc11f78:	15ae04be 	bne	t5,t6,bfc13274 <inst_error>
bfc11f7c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:61
bfc11f80:	3c08abc8 	lui	t0,0xabc8
bfc11f84:	3508de59 	ori	t0,t0,0xde59
bfc11f88:	3c09feec 	lui	t1,0xfeec
bfc11f8c:	352921b5 	ori	t1,t1,0x21b5
bfc11f90:	3c0afb24 	lui	t2,0xfb24
bfc11f94:	354a0950 	ori	t2,t2,0x950
bfc11f98:	3c0bc1aa 	lui	t3,0xc1aa
bfc11f9c:	356b7caf 	ori	t3,t3,0x7caf
bfc11fa0:	01600011 	mthi	t3
bfc11fa4:	01400013 	mtlo	t2
bfc11fa8:	71090004 	msub	t0,t1
bfc11fac:	00006010 	mfhi	t4
bfc11fb0:	00006812 	mflo	t5
bfc11fb4:	3c0ec14f 	lui	t6,0xc14f
bfc11fb8:	35cebc55 	ori	t6,t6,0xbc55
bfc11fbc:	158e04ad 	bne	t4,t6,bfc13274 <inst_error>
bfc11fc0:	00000000 	nop
bfc11fc4:	3c0e5969 	lui	t6,0x5969
bfc11fc8:	35ce5b63 	ori	t6,t6,0x5b63
bfc11fcc:	15ae04a9 	bne	t5,t6,bfc13274 <inst_error>
bfc11fd0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:62
bfc11fd4:	3c086ad1 	lui	t0,0x6ad1
bfc11fd8:	35080697 	ori	t0,t0,0x697
bfc11fdc:	3c097787 	lui	t1,0x7787
bfc11fe0:	3529e088 	ori	t1,t1,0xe088
bfc11fe4:	3c0a266a 	lui	t2,0x266a
bfc11fe8:	354a8137 	ori	t2,t2,0x8137
bfc11fec:	3c0b431c 	lui	t3,0x431c
bfc11ff0:	356b940e 	ori	t3,t3,0x940e
bfc11ff4:	01600011 	mthi	t3
bfc11ff8:	01400013 	mtlo	t2
bfc11ffc:	71090004 	msub	t0,t1
bfc12000:	00006010 	mfhi	t4
bfc12004:	00006812 	mflo	t5
bfc12008:	3c0e113c 	lui	t6,0x113c
bfc1200c:	35ceb813 	ori	t6,t6,0xb813
bfc12010:	158e0498 	bne	t4,t6,bfc13274 <inst_error>
bfc12014:	00000000 	nop
bfc12018:	3c0ed6f9 	lui	t6,0xd6f9
bfc1201c:	35cee0ff 	ori	t6,t6,0xe0ff
bfc12020:	15ae0494 	bne	t5,t6,bfc13274 <inst_error>
bfc12024:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:63
bfc12028:	3c089dc6 	lui	t0,0x9dc6
bfc1202c:	3508f278 	ori	t0,t0,0xf278
bfc12030:	3c09e881 	lui	t1,0xe881
bfc12034:	35293bbc 	ori	t1,t1,0x3bbc
bfc12038:	3c0a0da5 	lui	t2,0xda5
bfc1203c:	354a3892 	ori	t2,t2,0x3892
bfc12040:	3c0b97c5 	lui	t3,0x97c5
bfc12044:	356bde58 	ori	t3,t3,0xde58
bfc12048:	01600011 	mthi	t3
bfc1204c:	01400013 	mtlo	t2
bfc12050:	71090004 	msub	t0,t1
bfc12054:	00006010 	mfhi	t4
bfc12058:	00006812 	mflo	t5
bfc1205c:	3c0e8ec2 	lui	t6,0x8ec2
bfc12060:	35ce1abe 	ori	t6,t6,0x1abe
bfc12064:	158e0483 	bne	t4,t6,bfc13274 <inst_error>
bfc12068:	00000000 	nop
bfc1206c:	3c0e6731 	lui	t6,0x6731
bfc12070:	35ce8072 	ori	t6,t6,0x8072
bfc12074:	15ae047f 	bne	t5,t6,bfc13274 <inst_error>
bfc12078:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:64
bfc1207c:	3c0827df 	lui	t0,0x27df
bfc12080:	3508f312 	ori	t0,t0,0xf312
bfc12084:	3c09c510 	lui	t1,0xc510
bfc12088:	352929eb 	ori	t1,t1,0x29eb
bfc1208c:	3c0a370c 	lui	t2,0x370c
bfc12090:	354a9a92 	ori	t2,t2,0x9a92
bfc12094:	3c0b31d8 	lui	t3,0x31d8
bfc12098:	356bfd62 	ori	t3,t3,0xfd62
bfc1209c:	01600011 	mthi	t3
bfc120a0:	01400013 	mtlo	t2
bfc120a4:	71090004 	msub	t0,t1
bfc120a8:	00006010 	mfhi	t4
bfc120ac:	00006812 	mflo	t5
bfc120b0:	3c0e3b07 	lui	t6,0x3b07
bfc120b4:	35ce15e0 	ori	t6,t6,0x15e0
bfc120b8:	158e046e 	bne	t4,t6,bfc13274 <inst_error>
bfc120bc:	00000000 	nop
bfc120c0:	3c0eb36a 	lui	t6,0xb36a
bfc120c4:	35ce970c 	ori	t6,t6,0x970c
bfc120c8:	15ae046a 	bne	t5,t6,bfc13274 <inst_error>
bfc120cc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:65
bfc120d0:	3c080bc2 	lui	t0,0xbc2
bfc120d4:	35087f8e 	ori	t0,t0,0x7f8e
bfc120d8:	3c09cd2e 	lui	t1,0xcd2e
bfc120dc:	35297b16 	ori	t1,t1,0x7b16
bfc120e0:	3c0a7415 	lui	t2,0x7415
bfc120e4:	354aeac5 	ori	t2,t2,0xeac5
bfc120e8:	3c0b3fbc 	lui	t3,0x3fbc
bfc120ec:	356b20d4 	ori	t3,t3,0x20d4
bfc120f0:	01600011 	mthi	t3
bfc120f4:	01400013 	mtlo	t2
bfc120f8:	71090004 	msub	t0,t1
bfc120fc:	00006010 	mfhi	t4
bfc12100:	00006812 	mflo	t5
bfc12104:	3c0e4211 	lui	t6,0x4211
bfc12108:	35cebda3 	ori	t6,t6,0xbda3
bfc1210c:	158e0459 	bne	t4,t6,bfc13274 <inst_error>
bfc12110:	00000000 	nop
bfc12114:	3c0e5c91 	lui	t6,0x5c91
bfc12118:	35ceba91 	ori	t6,t6,0xba91
bfc1211c:	15ae0455 	bne	t5,t6,bfc13274 <inst_error>
bfc12120:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:66
bfc12124:	3c08d446 	lui	t0,0xd446
bfc12128:	3508736c 	ori	t0,t0,0x736c
bfc1212c:	3c095203 	lui	t1,0x5203
bfc12130:	3529c0d0 	ori	t1,t1,0xc0d0
bfc12134:	3c0a8e93 	lui	t2,0x8e93
bfc12138:	354a6d7f 	ori	t2,t2,0x6d7f
bfc1213c:	3c0b77fe 	lui	t3,0x77fe
bfc12140:	356b0276 	ori	t3,t3,0x276
bfc12144:	01600011 	mthi	t3
bfc12148:	01400013 	mtlo	t2
bfc1214c:	71090004 	msub	t0,t1
bfc12150:	00006010 	mfhi	t4
bfc12154:	00006812 	mflo	t5
bfc12158:	3c0e8600 	lui	t6,0x8600
bfc1215c:	35ce1598 	ori	t6,t6,0x1598
bfc12160:	158e0444 	bne	t4,t6,bfc13274 <inst_error>
bfc12164:	00000000 	nop
bfc12168:	3c0e4c80 	lui	t6,0x4c80
bfc1216c:	35cea5bf 	ori	t6,t6,0xa5bf
bfc12170:	15ae0440 	bne	t5,t6,bfc13274 <inst_error>
bfc12174:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:67
bfc12178:	3c08a1e7 	lui	t0,0xa1e7
bfc1217c:	3508c9fc 	ori	t0,t0,0xc9fc
bfc12180:	3c095ca0 	lui	t1,0x5ca0
bfc12184:	3529e1cc 	ori	t1,t1,0xe1cc
bfc12188:	3c0aa334 	lui	t2,0xa334
bfc1218c:	354adc82 	ori	t2,t2,0xdc82
bfc12190:	3c0bf372 	lui	t3,0xf372
bfc12194:	356bb21d 	ori	t3,t3,0xb21d
bfc12198:	01600011 	mthi	t3
bfc1219c:	01400013 	mtlo	t2
bfc121a0:	71090004 	msub	t0,t1
bfc121a4:	00006010 	mfhi	t4
bfc121a8:	00006812 	mflo	t5
bfc121ac:	3c0e157e 	lui	t6,0x157e
bfc121b0:	35ce87a6 	ori	t6,t6,0x87a6
bfc121b4:	158e042f 	bne	t4,t6,bfc13274 <inst_error>
bfc121b8:	00000000 	nop
bfc121bc:	3c0e1879 	lui	t6,0x1879
bfc121c0:	35ce6bb2 	ori	t6,t6,0x6bb2
bfc121c4:	15ae042b 	bne	t5,t6,bfc13274 <inst_error>
bfc121c8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:68
bfc121cc:	3c08942c 	lui	t0,0x942c
bfc121d0:	3508f5e2 	ori	t0,t0,0xf5e2
bfc121d4:	3c09ebad 	lui	t1,0xebad
bfc121d8:	3529601c 	ori	t1,t1,0x601c
bfc121dc:	3c0af8a9 	lui	t2,0xf8a9
bfc121e0:	354a5823 	ori	t2,t2,0x5823
bfc121e4:	3c0b2e23 	lui	t3,0x2e23
bfc121e8:	356b60ea 	ori	t3,t3,0x60ea
bfc121ec:	01600011 	mthi	t3
bfc121f0:	01400013 	mtlo	t2
bfc121f4:	71090004 	msub	t0,t1
bfc121f8:	00006010 	mfhi	t4
bfc121fc:	00006812 	mflo	t5
bfc12200:	3c0e2594 	lui	t6,0x2594
bfc12204:	35ce172e 	ori	t6,t6,0x172e
bfc12208:	158e041a 	bne	t4,t6,bfc13274 <inst_error>
bfc1220c:	00000000 	nop
bfc12210:	3c0e47cf 	lui	t6,0x47cf
bfc12214:	35ceb36b 	ori	t6,t6,0xb36b
bfc12218:	15ae0416 	bne	t5,t6,bfc13274 <inst_error>
bfc1221c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:69
bfc12220:	3c0886e7 	lui	t0,0x86e7
bfc12224:	3508870c 	ori	t0,t0,0x870c
bfc12228:	3c0923b7 	lui	t1,0x23b7
bfc1222c:	35299da9 	ori	t1,t1,0x9da9
bfc12230:	3c0a521b 	lui	t2,0x521b
bfc12234:	354aee0f 	ori	t2,t2,0xee0f
bfc12238:	3c0b4c15 	lui	t3,0x4c15
bfc1223c:	356b5516 	ori	t3,t3,0x5516
bfc12240:	01600011 	mthi	t3
bfc12244:	01400013 	mtlo	t2
bfc12248:	71090004 	msub	t0,t1
bfc1224c:	00006010 	mfhi	t4
bfc12250:	00006812 	mflo	t5
bfc12254:	3c0e5cfa 	lui	t6,0x5cfa
bfc12258:	35ce88b2 	ori	t6,t6,0x88b2
bfc1225c:	158e0405 	bne	t4,t6,bfc13274 <inst_error>
bfc12260:	00000000 	nop
bfc12264:	3c0e17dd 	lui	t6,0x17dd
bfc12268:	35ce6b23 	ori	t6,t6,0x6b23
bfc1226c:	15ae0401 	bne	t5,t6,bfc13274 <inst_error>
bfc12270:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:70
bfc12274:	3c08e548 	lui	t0,0xe548
bfc12278:	35084027 	ori	t0,t0,0x4027
bfc1227c:	3c094ff9 	lui	t1,0x4ff9
bfc12280:	3529886e 	ori	t1,t1,0x886e
bfc12284:	3c0a3339 	lui	t2,0x3339
bfc12288:	354a6ac4 	ori	t2,t2,0x6ac4
bfc1228c:	3c0b5fc9 	lui	t3,0x5fc9
bfc12290:	356bf264 	ori	t3,t3,0xf264
bfc12294:	01600011 	mthi	t3
bfc12298:	01400013 	mtlo	t2
bfc1229c:	71090004 	msub	t0,t1
bfc122a0:	00006010 	mfhi	t4
bfc122a4:	00006812 	mflo	t5
bfc122a8:	3c0e6822 	lui	t6,0x6822
bfc122ac:	35ceb18e 	ori	t6,t6,0xb18e
bfc122b0:	158e03f0 	bne	t4,t6,bfc13274 <inst_error>
bfc122b4:	00000000 	nop
bfc122b8:	3c0edd2a 	lui	t6,0xdd2a
bfc122bc:	35ce2202 	ori	t6,t6,0x2202
bfc122c0:	15ae03ec 	bne	t5,t6,bfc13274 <inst_error>
bfc122c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:74
bfc122c8:	24080000 	li	t0,0
bfc122cc:	3c0943b3 	lui	t1,0x43b3
bfc122d0:	35294456 	ori	t1,t1,0x4456
bfc122d4:	3c0aaa30 	lui	t2,0xaa30
bfc122d8:	354a9260 	ori	t2,t2,0x9260
bfc122dc:	3c0b08ed 	lui	t3,0x8ed
bfc122e0:	356b6f2c 	ori	t3,t3,0x6f2c
bfc122e4:	01600011 	mthi	t3
bfc122e8:	01400013 	mtlo	t2
bfc122ec:	71090004 	msub	t0,t1
bfc122f0:	00006010 	mfhi	t4
bfc122f4:	00006812 	mflo	t5
bfc122f8:	3c0e08ed 	lui	t6,0x8ed
bfc122fc:	35ce6f2b 	ori	t6,t6,0x6f2b
bfc12300:	158e03dc 	bne	t4,t6,bfc13274 <inst_error>
bfc12304:	00000000 	nop
bfc12308:	3c0eaa30 	lui	t6,0xaa30
bfc1230c:	35ce9260 	ori	t6,t6,0x9260
bfc12310:	15ae03d8 	bne	t5,t6,bfc13274 <inst_error>
bfc12314:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:75
bfc12318:	24080000 	li	t0,0
bfc1231c:	3c098443 	lui	t1,0x8443
bfc12320:	3529477b 	ori	t1,t1,0x477b
bfc12324:	3c0a9c6e 	lui	t2,0x9c6e
bfc12328:	354a8235 	ori	t2,t2,0x8235
bfc1232c:	3c0bad21 	lui	t3,0xad21
bfc12330:	356b14f2 	ori	t3,t3,0x14f2
bfc12334:	01600011 	mthi	t3
bfc12338:	01400013 	mtlo	t2
bfc1233c:	71090004 	msub	t0,t1
bfc12340:	00006010 	mfhi	t4
bfc12344:	00006812 	mflo	t5
bfc12348:	3c0ead21 	lui	t6,0xad21
bfc1234c:	35ce14f1 	ori	t6,t6,0x14f1
bfc12350:	158e03c8 	bne	t4,t6,bfc13274 <inst_error>
bfc12354:	00000000 	nop
bfc12358:	3c0e9c6e 	lui	t6,0x9c6e
bfc1235c:	35ce8235 	ori	t6,t6,0x8235
bfc12360:	15ae03c4 	bne	t5,t6,bfc13274 <inst_error>
bfc12364:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:76
bfc12368:	24080000 	li	t0,0
bfc1236c:	3c094fbf 	lui	t1,0x4fbf
bfc12370:	3529a773 	ori	t1,t1,0xa773
bfc12374:	3c0a94ba 	lui	t2,0x94ba
bfc12378:	354a7a7d 	ori	t2,t2,0x7a7d
bfc1237c:	3c0b1620 	lui	t3,0x1620
bfc12380:	356bff48 	ori	t3,t3,0xff48
bfc12384:	01600011 	mthi	t3
bfc12388:	01400013 	mtlo	t2
bfc1238c:	71090004 	msub	t0,t1
bfc12390:	00006010 	mfhi	t4
bfc12394:	00006812 	mflo	t5
bfc12398:	3c0e1620 	lui	t6,0x1620
bfc1239c:	35ceff47 	ori	t6,t6,0xff47
bfc123a0:	158e03b4 	bne	t4,t6,bfc13274 <inst_error>
bfc123a4:	00000000 	nop
bfc123a8:	3c0e94ba 	lui	t6,0x94ba
bfc123ac:	35ce7a7d 	ori	t6,t6,0x7a7d
bfc123b0:	15ae03b0 	bne	t5,t6,bfc13274 <inst_error>
bfc123b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:77
bfc123b8:	24080000 	li	t0,0
bfc123bc:	3c09500a 	lui	t1,0x500a
bfc123c0:	35292f34 	ori	t1,t1,0x2f34
bfc123c4:	3c0a7f5d 	lui	t2,0x7f5d
bfc123c8:	354aaaf6 	ori	t2,t2,0xaaf6
bfc123cc:	3c0be696 	lui	t3,0xe696
bfc123d0:	356bf5d5 	ori	t3,t3,0xf5d5
bfc123d4:	01600011 	mthi	t3
bfc123d8:	01400013 	mtlo	t2
bfc123dc:	71090004 	msub	t0,t1
bfc123e0:	00006010 	mfhi	t4
bfc123e4:	00006812 	mflo	t5
bfc123e8:	3c0ee696 	lui	t6,0xe696
bfc123ec:	35cef5d5 	ori	t6,t6,0xf5d5
bfc123f0:	158e03a0 	bne	t4,t6,bfc13274 <inst_error>
bfc123f4:	00000000 	nop
bfc123f8:	3c0e7f5d 	lui	t6,0x7f5d
bfc123fc:	35ceaaf6 	ori	t6,t6,0xaaf6
bfc12400:	15ae039c 	bne	t5,t6,bfc13274 <inst_error>
bfc12404:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:78
bfc12408:	24080000 	li	t0,0
bfc1240c:	3c09a70d 	lui	t1,0xa70d
bfc12410:	35292ace 	ori	t1,t1,0x2ace
bfc12414:	3c0ae80f 	lui	t2,0xe80f
bfc12418:	354ad955 	ori	t2,t2,0xd955
bfc1241c:	3c0b16d3 	lui	t3,0x16d3
bfc12420:	356b729f 	ori	t3,t3,0x729f
bfc12424:	01600011 	mthi	t3
bfc12428:	01400013 	mtlo	t2
bfc1242c:	71090004 	msub	t0,t1
bfc12430:	00006010 	mfhi	t4
bfc12434:	00006812 	mflo	t5
bfc12438:	3c0e16d3 	lui	t6,0x16d3
bfc1243c:	35ce729e 	ori	t6,t6,0x729e
bfc12440:	158e038c 	bne	t4,t6,bfc13274 <inst_error>
bfc12444:	00000000 	nop
bfc12448:	3c0ee80f 	lui	t6,0xe80f
bfc1244c:	35ced955 	ori	t6,t6,0xd955
bfc12450:	15ae0388 	bne	t5,t6,bfc13274 <inst_error>
bfc12454:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:79
bfc12458:	24080000 	li	t0,0
bfc1245c:	3c09fdf9 	lui	t1,0xfdf9
bfc12460:	3529e579 	ori	t1,t1,0xe579
bfc12464:	3c0a49fe 	lui	t2,0x49fe
bfc12468:	354a209b 	ori	t2,t2,0x209b
bfc1246c:	3c0b67cd 	lui	t3,0x67cd
bfc12470:	356b5eaf 	ori	t3,t3,0x5eaf
bfc12474:	01600011 	mthi	t3
bfc12478:	01400013 	mtlo	t2
bfc1247c:	71090004 	msub	t0,t1
bfc12480:	00006010 	mfhi	t4
bfc12484:	00006812 	mflo	t5
bfc12488:	3c0e67cd 	lui	t6,0x67cd
bfc1248c:	35ce5eaf 	ori	t6,t6,0x5eaf
bfc12490:	158e0378 	bne	t4,t6,bfc13274 <inst_error>
bfc12494:	00000000 	nop
bfc12498:	3c0e49fe 	lui	t6,0x49fe
bfc1249c:	35ce209b 	ori	t6,t6,0x209b
bfc124a0:	15ae0374 	bne	t5,t6,bfc13274 <inst_error>
bfc124a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:80
bfc124a8:	24080000 	li	t0,0
bfc124ac:	3c0914f4 	lui	t1,0x14f4
bfc124b0:	352943fa 	ori	t1,t1,0x43fa
bfc124b4:	3c0a9431 	lui	t2,0x9431
bfc124b8:	354a9410 	ori	t2,t2,0x9410
bfc124bc:	3c0b8e0f 	lui	t3,0x8e0f
bfc124c0:	356b3994 	ori	t3,t3,0x3994
bfc124c4:	01600011 	mthi	t3
bfc124c8:	01400013 	mtlo	t2
bfc124cc:	71090004 	msub	t0,t1
bfc124d0:	00006010 	mfhi	t4
bfc124d4:	00006812 	mflo	t5
bfc124d8:	3c0e8e0f 	lui	t6,0x8e0f
bfc124dc:	35ce3993 	ori	t6,t6,0x3993
bfc124e0:	158e0364 	bne	t4,t6,bfc13274 <inst_error>
bfc124e4:	00000000 	nop
bfc124e8:	3c0e9431 	lui	t6,0x9431
bfc124ec:	35ce9410 	ori	t6,t6,0x9410
bfc124f0:	15ae0360 	bne	t5,t6,bfc13274 <inst_error>
bfc124f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:81
bfc124f8:	24080000 	li	t0,0
bfc124fc:	3c09094c 	lui	t1,0x94c
bfc12500:	3529aebc 	ori	t1,t1,0xaebc
bfc12504:	3c0a1e6b 	lui	t2,0x1e6b
bfc12508:	354a96b7 	ori	t2,t2,0x96b7
bfc1250c:	3c0bdc6d 	lui	t3,0xdc6d
bfc12510:	356b2ea7 	ori	t3,t3,0x2ea7
bfc12514:	01600011 	mthi	t3
bfc12518:	01400013 	mtlo	t2
bfc1251c:	71090004 	msub	t0,t1
bfc12520:	00006010 	mfhi	t4
bfc12524:	00006812 	mflo	t5
bfc12528:	3c0edc6d 	lui	t6,0xdc6d
bfc1252c:	35ce2ea7 	ori	t6,t6,0x2ea7
bfc12530:	158e0350 	bne	t4,t6,bfc13274 <inst_error>
bfc12534:	00000000 	nop
bfc12538:	3c0e1e6b 	lui	t6,0x1e6b
bfc1253c:	35ce96b7 	ori	t6,t6,0x96b7
bfc12540:	15ae034c 	bne	t5,t6,bfc13274 <inst_error>
bfc12544:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:82
bfc12548:	24080000 	li	t0,0
bfc1254c:	3c09bcfa 	lui	t1,0xbcfa
bfc12550:	352909cc 	ori	t1,t1,0x9cc
bfc12554:	3c0aa19a 	lui	t2,0xa19a
bfc12558:	354a1517 	ori	t2,t2,0x1517
bfc1255c:	3c0bdfe5 	lui	t3,0xdfe5
bfc12560:	356b8e41 	ori	t3,t3,0x8e41
bfc12564:	01600011 	mthi	t3
bfc12568:	01400013 	mtlo	t2
bfc1256c:	71090004 	msub	t0,t1
bfc12570:	00006010 	mfhi	t4
bfc12574:	00006812 	mflo	t5
bfc12578:	3c0edfe5 	lui	t6,0xdfe5
bfc1257c:	35ce8e40 	ori	t6,t6,0x8e40
bfc12580:	158e033c 	bne	t4,t6,bfc13274 <inst_error>
bfc12584:	00000000 	nop
bfc12588:	3c0ea19a 	lui	t6,0xa19a
bfc1258c:	35ce1517 	ori	t6,t6,0x1517
bfc12590:	15ae0338 	bne	t5,t6,bfc13274 <inst_error>
bfc12594:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:83
bfc12598:	24080000 	li	t0,0
bfc1259c:	3c099afe 	lui	t1,0x9afe
bfc125a0:	35296b95 	ori	t1,t1,0x6b95
bfc125a4:	3c0a88fa 	lui	t2,0x88fa
bfc125a8:	354a6e25 	ori	t2,t2,0x6e25
bfc125ac:	3c0b6992 	lui	t3,0x6992
bfc125b0:	356bfd13 	ori	t3,t3,0xfd13
bfc125b4:	01600011 	mthi	t3
bfc125b8:	01400013 	mtlo	t2
bfc125bc:	71090004 	msub	t0,t1
bfc125c0:	00006010 	mfhi	t4
bfc125c4:	00006812 	mflo	t5
bfc125c8:	3c0e6992 	lui	t6,0x6992
bfc125cc:	35cefd12 	ori	t6,t6,0xfd12
bfc125d0:	158e0328 	bne	t4,t6,bfc13274 <inst_error>
bfc125d4:	00000000 	nop
bfc125d8:	3c0e88fa 	lui	t6,0x88fa
bfc125dc:	35ce6e25 	ori	t6,t6,0x6e25
bfc125e0:	15ae0324 	bne	t5,t6,bfc13274 <inst_error>
bfc125e4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:84
bfc125e8:	24080000 	li	t0,0
bfc125ec:	3c09ce0d 	lui	t1,0xce0d
bfc125f0:	3529e07e 	ori	t1,t1,0xe07e
bfc125f4:	3c0ad663 	lui	t2,0xd663
bfc125f8:	354a7bb1 	ori	t2,t2,0x7bb1
bfc125fc:	3c0b9a8e 	lui	t3,0x9a8e
bfc12600:	356bd2bc 	ori	t3,t3,0xd2bc
bfc12604:	01600011 	mthi	t3
bfc12608:	01400013 	mtlo	t2
bfc1260c:	71090004 	msub	t0,t1
bfc12610:	00006010 	mfhi	t4
bfc12614:	00006812 	mflo	t5
bfc12618:	3c0e9a8e 	lui	t6,0x9a8e
bfc1261c:	35ced2bb 	ori	t6,t6,0xd2bb
bfc12620:	158e0314 	bne	t4,t6,bfc13274 <inst_error>
bfc12624:	00000000 	nop
bfc12628:	3c0ed663 	lui	t6,0xd663
bfc1262c:	35ce7bb1 	ori	t6,t6,0x7bb1
bfc12630:	15ae0310 	bne	t5,t6,bfc13274 <inst_error>
bfc12634:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:85
bfc12638:	24080000 	li	t0,0
bfc1263c:	3c098517 	lui	t1,0x8517
bfc12640:	352993cd 	ori	t1,t1,0x93cd
bfc12644:	3c0aee8c 	lui	t2,0xee8c
bfc12648:	354a6b19 	ori	t2,t2,0x6b19
bfc1264c:	3c0bb5e5 	lui	t3,0xb5e5
bfc12650:	356b7e14 	ori	t3,t3,0x7e14
bfc12654:	01600011 	mthi	t3
bfc12658:	01400013 	mtlo	t2
bfc1265c:	71090004 	msub	t0,t1
bfc12660:	00006010 	mfhi	t4
bfc12664:	00006812 	mflo	t5
bfc12668:	3c0eb5e5 	lui	t6,0xb5e5
bfc1266c:	35ce7e13 	ori	t6,t6,0x7e13
bfc12670:	158e0300 	bne	t4,t6,bfc13274 <inst_error>
bfc12674:	00000000 	nop
bfc12678:	3c0eee8c 	lui	t6,0xee8c
bfc1267c:	35ce6b19 	ori	t6,t6,0x6b19
bfc12680:	15ae02fc 	bne	t5,t6,bfc13274 <inst_error>
bfc12684:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:86
bfc12688:	24080000 	li	t0,0
bfc1268c:	3c092907 	lui	t1,0x2907
bfc12690:	3529ca64 	ori	t1,t1,0xca64
bfc12694:	3c0a66f9 	lui	t2,0x66f9
bfc12698:	354ae0f5 	ori	t2,t2,0xe0f5
bfc1269c:	3c0bd6ae 	lui	t3,0xd6ae
bfc126a0:	356b303a 	ori	t3,t3,0x303a
bfc126a4:	01600011 	mthi	t3
bfc126a8:	01400013 	mtlo	t2
bfc126ac:	71090004 	msub	t0,t1
bfc126b0:	00006010 	mfhi	t4
bfc126b4:	00006812 	mflo	t5
bfc126b8:	3c0ed6ae 	lui	t6,0xd6ae
bfc126bc:	35ce303a 	ori	t6,t6,0x303a
bfc126c0:	158e02ec 	bne	t4,t6,bfc13274 <inst_error>
bfc126c4:	00000000 	nop
bfc126c8:	3c0e66f9 	lui	t6,0x66f9
bfc126cc:	35cee0f5 	ori	t6,t6,0xe0f5
bfc126d0:	15ae02e8 	bne	t5,t6,bfc13274 <inst_error>
bfc126d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:87
bfc126d8:	24080000 	li	t0,0
bfc126dc:	3c09f634 	lui	t1,0xf634
bfc126e0:	3529d67e 	ori	t1,t1,0xd67e
bfc126e4:	3c0a5b22 	lui	t2,0x5b22
bfc126e8:	354a574b 	ori	t2,t2,0x574b
bfc126ec:	3c0b4121 	lui	t3,0x4121
bfc126f0:	356b7031 	ori	t3,t3,0x7031
bfc126f4:	01600011 	mthi	t3
bfc126f8:	01400013 	mtlo	t2
bfc126fc:	71090004 	msub	t0,t1
bfc12700:	00006010 	mfhi	t4
bfc12704:	00006812 	mflo	t5
bfc12708:	3c0e4121 	lui	t6,0x4121
bfc1270c:	35ce7031 	ori	t6,t6,0x7031
bfc12710:	158e02d8 	bne	t4,t6,bfc13274 <inst_error>
bfc12714:	00000000 	nop
bfc12718:	3c0e5b22 	lui	t6,0x5b22
bfc1271c:	35ce574b 	ori	t6,t6,0x574b
bfc12720:	15ae02d4 	bne	t5,t6,bfc13274 <inst_error>
bfc12724:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:88
bfc12728:	24080000 	li	t0,0
bfc1272c:	3c094fa8 	lui	t1,0x4fa8
bfc12730:	3529b5b3 	ori	t1,t1,0xb5b3
bfc12734:	3c0a16f6 	lui	t2,0x16f6
bfc12738:	354a75a1 	ori	t2,t2,0x75a1
bfc1273c:	3c0b91ea 	lui	t3,0x91ea
bfc12740:	356b7149 	ori	t3,t3,0x7149
bfc12744:	01600011 	mthi	t3
bfc12748:	01400013 	mtlo	t2
bfc1274c:	71090004 	msub	t0,t1
bfc12750:	00006010 	mfhi	t4
bfc12754:	00006812 	mflo	t5
bfc12758:	3c0e91ea 	lui	t6,0x91ea
bfc1275c:	35ce7149 	ori	t6,t6,0x7149
bfc12760:	158e02c4 	bne	t4,t6,bfc13274 <inst_error>
bfc12764:	00000000 	nop
bfc12768:	3c0e16f6 	lui	t6,0x16f6
bfc1276c:	35ce75a1 	ori	t6,t6,0x75a1
bfc12770:	15ae02c0 	bne	t5,t6,bfc13274 <inst_error>
bfc12774:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:89
bfc12778:	24080000 	li	t0,0
bfc1277c:	3c09011d 	lui	t1,0x11d
bfc12780:	3529c377 	ori	t1,t1,0xc377
bfc12784:	3c0a0779 	lui	t2,0x779
bfc12788:	354a3877 	ori	t2,t2,0x3877
bfc1278c:	3c0b4690 	lui	t3,0x4690
bfc12790:	356bf02f 	ori	t3,t3,0xf02f
bfc12794:	01600011 	mthi	t3
bfc12798:	01400013 	mtlo	t2
bfc1279c:	71090004 	msub	t0,t1
bfc127a0:	00006010 	mfhi	t4
bfc127a4:	00006812 	mflo	t5
bfc127a8:	3c0e4690 	lui	t6,0x4690
bfc127ac:	35cef02f 	ori	t6,t6,0xf02f
bfc127b0:	158e02b0 	bne	t4,t6,bfc13274 <inst_error>
bfc127b4:	00000000 	nop
bfc127b8:	3c0e0779 	lui	t6,0x779
bfc127bc:	35ce3877 	ori	t6,t6,0x3877
bfc127c0:	15ae02ac 	bne	t5,t6,bfc13274 <inst_error>
bfc127c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:90
bfc127c8:	24080000 	li	t0,0
bfc127cc:	3c091be0 	lui	t1,0x1be0
bfc127d0:	3529eb90 	ori	t1,t1,0xeb90
bfc127d4:	3c0ac745 	lui	t2,0xc745
bfc127d8:	354a094a 	ori	t2,t2,0x94a
bfc127dc:	3c0b12b6 	lui	t3,0x12b6
bfc127e0:	356b1367 	ori	t3,t3,0x1367
bfc127e4:	01600011 	mthi	t3
bfc127e8:	01400013 	mtlo	t2
bfc127ec:	71090004 	msub	t0,t1
bfc127f0:	00006010 	mfhi	t4
bfc127f4:	00006812 	mflo	t5
bfc127f8:	3c0e12b6 	lui	t6,0x12b6
bfc127fc:	35ce1366 	ori	t6,t6,0x1366
bfc12800:	158e029c 	bne	t4,t6,bfc13274 <inst_error>
bfc12804:	00000000 	nop
bfc12808:	3c0ec745 	lui	t6,0xc745
bfc1280c:	35ce094a 	ori	t6,t6,0x94a
bfc12810:	15ae0298 	bne	t5,t6,bfc13274 <inst_error>
bfc12814:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:91
bfc12818:	24080000 	li	t0,0
bfc1281c:	3c09f9b9 	lui	t1,0xf9b9
bfc12820:	3529e69d 	ori	t1,t1,0xe69d
bfc12824:	3c0af020 	lui	t2,0xf020
bfc12828:	354a9c82 	ori	t2,t2,0x9c82
bfc1282c:	3c0bf1d9 	lui	t3,0xf1d9
bfc12830:	356b38a7 	ori	t3,t3,0x38a7
bfc12834:	01600011 	mthi	t3
bfc12838:	01400013 	mtlo	t2
bfc1283c:	71090004 	msub	t0,t1
bfc12840:	00006010 	mfhi	t4
bfc12844:	00006812 	mflo	t5
bfc12848:	3c0ef1d9 	lui	t6,0xf1d9
bfc1284c:	35ce38a6 	ori	t6,t6,0x38a6
bfc12850:	158e0288 	bne	t4,t6,bfc13274 <inst_error>
bfc12854:	00000000 	nop
bfc12858:	3c0ef020 	lui	t6,0xf020
bfc1285c:	35ce9c82 	ori	t6,t6,0x9c82
bfc12860:	15ae0284 	bne	t5,t6,bfc13274 <inst_error>
bfc12864:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:92
bfc12868:	24080000 	li	t0,0
bfc1286c:	3c091d46 	lui	t1,0x1d46
bfc12870:	3529b712 	ori	t1,t1,0xb712
bfc12874:	3c0a12e9 	lui	t2,0x12e9
bfc12878:	354a6004 	ori	t2,t2,0x6004
bfc1287c:	3c0bb1ba 	lui	t3,0xb1ba
bfc12880:	356b1fe7 	ori	t3,t3,0x1fe7
bfc12884:	01600011 	mthi	t3
bfc12888:	01400013 	mtlo	t2
bfc1288c:	71090004 	msub	t0,t1
bfc12890:	00006010 	mfhi	t4
bfc12894:	00006812 	mflo	t5
bfc12898:	3c0eb1ba 	lui	t6,0xb1ba
bfc1289c:	35ce1fe7 	ori	t6,t6,0x1fe7
bfc128a0:	158e0274 	bne	t4,t6,bfc13274 <inst_error>
bfc128a4:	00000000 	nop
bfc128a8:	3c0e12e9 	lui	t6,0x12e9
bfc128ac:	35ce6004 	ori	t6,t6,0x6004
bfc128b0:	15ae0270 	bne	t5,t6,bfc13274 <inst_error>
bfc128b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:93
bfc128b8:	24080000 	li	t0,0
bfc128bc:	3c096c0c 	lui	t1,0x6c0c
bfc128c0:	352972db 	ori	t1,t1,0x72db
bfc128c4:	3c0a1a9b 	lui	t2,0x1a9b
bfc128c8:	354ae8f4 	ori	t2,t2,0xe8f4
bfc128cc:	3c0be1b2 	lui	t3,0xe1b2
bfc128d0:	356b6a46 	ori	t3,t3,0x6a46
bfc128d4:	01600011 	mthi	t3
bfc128d8:	01400013 	mtlo	t2
bfc128dc:	71090004 	msub	t0,t1
bfc128e0:	00006010 	mfhi	t4
bfc128e4:	00006812 	mflo	t5
bfc128e8:	3c0ee1b2 	lui	t6,0xe1b2
bfc128ec:	35ce6a46 	ori	t6,t6,0x6a46
bfc128f0:	158e0260 	bne	t4,t6,bfc13274 <inst_error>
bfc128f4:	00000000 	nop
bfc128f8:	3c0e1a9b 	lui	t6,0x1a9b
bfc128fc:	35cee8f4 	ori	t6,t6,0xe8f4
bfc12900:	15ae025c 	bne	t5,t6,bfc13274 <inst_error>
bfc12904:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:94
bfc12908:	24080000 	li	t0,0
bfc1290c:	3c093247 	lui	t1,0x3247
bfc12910:	352944f2 	ori	t1,t1,0x44f2
bfc12914:	3c0a7f61 	lui	t2,0x7f61
bfc12918:	354a3ca1 	ori	t2,t2,0x3ca1
bfc1291c:	3c0b8111 	lui	t3,0x8111
bfc12920:	356b2c8c 	ori	t3,t3,0x2c8c
bfc12924:	01600011 	mthi	t3
bfc12928:	01400013 	mtlo	t2
bfc1292c:	71090004 	msub	t0,t1
bfc12930:	00006010 	mfhi	t4
bfc12934:	00006812 	mflo	t5
bfc12938:	3c0e8111 	lui	t6,0x8111
bfc1293c:	35ce2c8c 	ori	t6,t6,0x2c8c
bfc12940:	158e024c 	bne	t4,t6,bfc13274 <inst_error>
bfc12944:	00000000 	nop
bfc12948:	3c0e7f61 	lui	t6,0x7f61
bfc1294c:	35ce3ca1 	ori	t6,t6,0x3ca1
bfc12950:	15ae0248 	bne	t5,t6,bfc13274 <inst_error>
bfc12954:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:95
bfc12958:	24080000 	li	t0,0
bfc1295c:	3c09018f 	lui	t1,0x18f
bfc12960:	3529d2fb 	ori	t1,t1,0xd2fb
bfc12964:	3c0ab363 	lui	t2,0xb363
bfc12968:	354a8994 	ori	t2,t2,0x8994
bfc1296c:	3c0b8cdd 	lui	t3,0x8cdd
bfc12970:	356b3c1e 	ori	t3,t3,0x3c1e
bfc12974:	01600011 	mthi	t3
bfc12978:	01400013 	mtlo	t2
bfc1297c:	71090004 	msub	t0,t1
bfc12980:	00006010 	mfhi	t4
bfc12984:	00006812 	mflo	t5
bfc12988:	3c0e8cdd 	lui	t6,0x8cdd
bfc1298c:	35ce3c1d 	ori	t6,t6,0x3c1d
bfc12990:	158e0238 	bne	t4,t6,bfc13274 <inst_error>
bfc12994:	00000000 	nop
bfc12998:	3c0eb363 	lui	t6,0xb363
bfc1299c:	35ce8994 	ori	t6,t6,0x8994
bfc129a0:	15ae0234 	bne	t5,t6,bfc13274 <inst_error>
bfc129a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:96
bfc129a8:	24080000 	li	t0,0
bfc129ac:	3c095889 	lui	t1,0x5889
bfc129b0:	35291e9d 	ori	t1,t1,0x1e9d
bfc129b4:	3c0ae43a 	lui	t2,0xe43a
bfc129b8:	354a3f43 	ori	t2,t2,0x3f43
bfc129bc:	3c0b3730 	lui	t3,0x3730
bfc129c0:	356b9661 	ori	t3,t3,0x9661
bfc129c4:	01600011 	mthi	t3
bfc129c8:	01400013 	mtlo	t2
bfc129cc:	71090004 	msub	t0,t1
bfc129d0:	00006010 	mfhi	t4
bfc129d4:	00006812 	mflo	t5
bfc129d8:	3c0e3730 	lui	t6,0x3730
bfc129dc:	35ce9660 	ori	t6,t6,0x9660
bfc129e0:	158e0224 	bne	t4,t6,bfc13274 <inst_error>
bfc129e4:	00000000 	nop
bfc129e8:	3c0ee43a 	lui	t6,0xe43a
bfc129ec:	35ce3f43 	ori	t6,t6,0x3f43
bfc129f0:	15ae0220 	bne	t5,t6,bfc13274 <inst_error>
bfc129f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:97
bfc129f8:	24080000 	li	t0,0
bfc129fc:	3c090bf3 	lui	t1,0xbf3
bfc12a00:	35297a9c 	ori	t1,t1,0x7a9c
bfc12a04:	3c0aaa25 	lui	t2,0xaa25
bfc12a08:	354a93b9 	ori	t2,t2,0x93b9
bfc12a0c:	3c0bfc3c 	lui	t3,0xfc3c
bfc12a10:	356bce4d 	ori	t3,t3,0xce4d
bfc12a14:	01600011 	mthi	t3
bfc12a18:	01400013 	mtlo	t2
bfc12a1c:	71090004 	msub	t0,t1
bfc12a20:	00006010 	mfhi	t4
bfc12a24:	00006812 	mflo	t5
bfc12a28:	3c0efc3c 	lui	t6,0xfc3c
bfc12a2c:	35cece4c 	ori	t6,t6,0xce4c
bfc12a30:	158e0210 	bne	t4,t6,bfc13274 <inst_error>
bfc12a34:	00000000 	nop
bfc12a38:	3c0eaa25 	lui	t6,0xaa25
bfc12a3c:	35ce93b9 	ori	t6,t6,0x93b9
bfc12a40:	15ae020c 	bne	t5,t6,bfc13274 <inst_error>
bfc12a44:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:98
bfc12a48:	24080000 	li	t0,0
bfc12a4c:	3c09acfe 	lui	t1,0xacfe
bfc12a50:	352961c5 	ori	t1,t1,0x61c5
bfc12a54:	3c0a7b07 	lui	t2,0x7b07
bfc12a58:	354aceff 	ori	t2,t2,0xceff
bfc12a5c:	3c0bc947 	lui	t3,0xc947
bfc12a60:	356bd596 	ori	t3,t3,0xd596
bfc12a64:	01600011 	mthi	t3
bfc12a68:	01400013 	mtlo	t2
bfc12a6c:	71090004 	msub	t0,t1
bfc12a70:	00006010 	mfhi	t4
bfc12a74:	00006812 	mflo	t5
bfc12a78:	3c0ec947 	lui	t6,0xc947
bfc12a7c:	35ced596 	ori	t6,t6,0xd596
bfc12a80:	158e01fc 	bne	t4,t6,bfc13274 <inst_error>
bfc12a84:	00000000 	nop
bfc12a88:	3c0e7b07 	lui	t6,0x7b07
bfc12a8c:	35ceceff 	ori	t6,t6,0xceff
bfc12a90:	15ae01f8 	bne	t5,t6,bfc13274 <inst_error>
bfc12a94:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:99
bfc12a98:	24080000 	li	t0,0
bfc12a9c:	3c09b21b 	lui	t1,0xb21b
bfc12aa0:	3529a2fd 	ori	t1,t1,0xa2fd
bfc12aa4:	3c0a47fe 	lui	t2,0x47fe
bfc12aa8:	354a97ba 	ori	t2,t2,0x97ba
bfc12aac:	3c0b2ad9 	lui	t3,0x2ad9
bfc12ab0:	356b64a8 	ori	t3,t3,0x64a8
bfc12ab4:	01600011 	mthi	t3
bfc12ab8:	01400013 	mtlo	t2
bfc12abc:	71090004 	msub	t0,t1
bfc12ac0:	00006010 	mfhi	t4
bfc12ac4:	00006812 	mflo	t5
bfc12ac8:	3c0e2ad9 	lui	t6,0x2ad9
bfc12acc:	35ce64a8 	ori	t6,t6,0x64a8
bfc12ad0:	158e01e8 	bne	t4,t6,bfc13274 <inst_error>
bfc12ad4:	00000000 	nop
bfc12ad8:	3c0e47fe 	lui	t6,0x47fe
bfc12adc:	35ce97ba 	ori	t6,t6,0x97ba
bfc12ae0:	15ae01e4 	bne	t5,t6,bfc13274 <inst_error>
bfc12ae4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:100
bfc12ae8:	3c0835f4 	lui	t0,0x35f4
bfc12aec:	35082680 	ori	t0,t0,0x2680
bfc12af0:	24090000 	li	t1,0
bfc12af4:	3c0a2a31 	lui	t2,0x2a31
bfc12af8:	354a81fb 	ori	t2,t2,0x81fb
bfc12afc:	3c0b82a9 	lui	t3,0x82a9
bfc12b00:	356ba1f8 	ori	t3,t3,0xa1f8
bfc12b04:	01600011 	mthi	t3
bfc12b08:	01400013 	mtlo	t2
bfc12b0c:	71090004 	msub	t0,t1
bfc12b10:	00006010 	mfhi	t4
bfc12b14:	00006812 	mflo	t5
bfc12b18:	3c0e82a9 	lui	t6,0x82a9
bfc12b1c:	35cea1f8 	ori	t6,t6,0xa1f8
bfc12b20:	158e01d4 	bne	t4,t6,bfc13274 <inst_error>
bfc12b24:	00000000 	nop
bfc12b28:	3c0e2a31 	lui	t6,0x2a31
bfc12b2c:	35ce81fb 	ori	t6,t6,0x81fb
bfc12b30:	15ae01d0 	bne	t5,t6,bfc13274 <inst_error>
bfc12b34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:101
bfc12b38:	3c083132 	lui	t0,0x3132
bfc12b3c:	3508af7d 	ori	t0,t0,0xaf7d
bfc12b40:	24090000 	li	t1,0
bfc12b44:	3c0a338a 	lui	t2,0x338a
bfc12b48:	354ae8fb 	ori	t2,t2,0xe8fb
bfc12b4c:	3c0ba1b3 	lui	t3,0xa1b3
bfc12b50:	356b43b5 	ori	t3,t3,0x43b5
bfc12b54:	01600011 	mthi	t3
bfc12b58:	01400013 	mtlo	t2
bfc12b5c:	71090004 	msub	t0,t1
bfc12b60:	00006010 	mfhi	t4
bfc12b64:	00006812 	mflo	t5
bfc12b68:	3c0ea1b3 	lui	t6,0xa1b3
bfc12b6c:	35ce43b5 	ori	t6,t6,0x43b5
bfc12b70:	158e01c0 	bne	t4,t6,bfc13274 <inst_error>
bfc12b74:	00000000 	nop
bfc12b78:	3c0e338a 	lui	t6,0x338a
bfc12b7c:	35cee8fb 	ori	t6,t6,0xe8fb
bfc12b80:	15ae01bc 	bne	t5,t6,bfc13274 <inst_error>
bfc12b84:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:102
bfc12b88:	3c087bcb 	lui	t0,0x7bcb
bfc12b8c:	350848de 	ori	t0,t0,0x48de
bfc12b90:	24090000 	li	t1,0
bfc12b94:	3c0a033e 	lui	t2,0x33e
bfc12b98:	354acc35 	ori	t2,t2,0xcc35
bfc12b9c:	3c0b428e 	lui	t3,0x428e
bfc12ba0:	356b8b17 	ori	t3,t3,0x8b17
bfc12ba4:	01600011 	mthi	t3
bfc12ba8:	01400013 	mtlo	t2
bfc12bac:	71090004 	msub	t0,t1
bfc12bb0:	00006010 	mfhi	t4
bfc12bb4:	00006812 	mflo	t5
bfc12bb8:	3c0e428e 	lui	t6,0x428e
bfc12bbc:	35ce8b17 	ori	t6,t6,0x8b17
bfc12bc0:	158e01ac 	bne	t4,t6,bfc13274 <inst_error>
bfc12bc4:	00000000 	nop
bfc12bc8:	3c0e033e 	lui	t6,0x33e
bfc12bcc:	35cecc35 	ori	t6,t6,0xcc35
bfc12bd0:	15ae01a8 	bne	t5,t6,bfc13274 <inst_error>
bfc12bd4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:103
bfc12bd8:	3c0881da 	lui	t0,0x81da
bfc12bdc:	3508004f 	ori	t0,t0,0x4f
bfc12be0:	24090000 	li	t1,0
bfc12be4:	3c0a517a 	lui	t2,0x517a
bfc12be8:	354a0900 	ori	t2,t2,0x900
bfc12bec:	3c0b97b1 	lui	t3,0x97b1
bfc12bf0:	356b487d 	ori	t3,t3,0x487d
bfc12bf4:	01600011 	mthi	t3
bfc12bf8:	01400013 	mtlo	t2
bfc12bfc:	71090004 	msub	t0,t1
bfc12c00:	00006010 	mfhi	t4
bfc12c04:	00006812 	mflo	t5
bfc12c08:	3c0e97b1 	lui	t6,0x97b1
bfc12c0c:	35ce487d 	ori	t6,t6,0x487d
bfc12c10:	158e0198 	bne	t4,t6,bfc13274 <inst_error>
bfc12c14:	00000000 	nop
bfc12c18:	3c0e517a 	lui	t6,0x517a
bfc12c1c:	35ce0900 	ori	t6,t6,0x900
bfc12c20:	15ae0194 	bne	t5,t6,bfc13274 <inst_error>
bfc12c24:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:104
bfc12c28:	3c081021 	lui	t0,0x1021
bfc12c2c:	35080171 	ori	t0,t0,0x171
bfc12c30:	24090000 	li	t1,0
bfc12c34:	3c0a0b67 	lui	t2,0xb67
bfc12c38:	354a9ae4 	ori	t2,t2,0x9ae4
bfc12c3c:	3c0b8908 	lui	t3,0x8908
bfc12c40:	356b7224 	ori	t3,t3,0x7224
bfc12c44:	01600011 	mthi	t3
bfc12c48:	01400013 	mtlo	t2
bfc12c4c:	71090004 	msub	t0,t1
bfc12c50:	00006010 	mfhi	t4
bfc12c54:	00006812 	mflo	t5
bfc12c58:	3c0e8908 	lui	t6,0x8908
bfc12c5c:	35ce7224 	ori	t6,t6,0x7224
bfc12c60:	158e0184 	bne	t4,t6,bfc13274 <inst_error>
bfc12c64:	00000000 	nop
bfc12c68:	3c0e0b67 	lui	t6,0xb67
bfc12c6c:	35ce9ae4 	ori	t6,t6,0x9ae4
bfc12c70:	15ae0180 	bne	t5,t6,bfc13274 <inst_error>
bfc12c74:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:105
bfc12c78:	3c08fdfa 	lui	t0,0xfdfa
bfc12c7c:	35086c99 	ori	t0,t0,0x6c99
bfc12c80:	24090000 	li	t1,0
bfc12c84:	3c0aa2df 	lui	t2,0xa2df
bfc12c88:	354ae176 	ori	t2,t2,0xe176
bfc12c8c:	3c0b6246 	lui	t3,0x6246
bfc12c90:	356b9bb6 	ori	t3,t3,0x9bb6
bfc12c94:	01600011 	mthi	t3
bfc12c98:	01400013 	mtlo	t2
bfc12c9c:	71090004 	msub	t0,t1
bfc12ca0:	00006010 	mfhi	t4
bfc12ca4:	00006812 	mflo	t5
bfc12ca8:	3c0e6246 	lui	t6,0x6246
bfc12cac:	35ce9bb5 	ori	t6,t6,0x9bb5
bfc12cb0:	158e0170 	bne	t4,t6,bfc13274 <inst_error>
bfc12cb4:	00000000 	nop
bfc12cb8:	3c0ea2df 	lui	t6,0xa2df
bfc12cbc:	35cee176 	ori	t6,t6,0xe176
bfc12cc0:	15ae016c 	bne	t5,t6,bfc13274 <inst_error>
bfc12cc4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:106
bfc12cc8:	3c082e28 	lui	t0,0x2e28
bfc12ccc:	35089d36 	ori	t0,t0,0x9d36
bfc12cd0:	24090000 	li	t1,0
bfc12cd4:	3c0aef6a 	lui	t2,0xef6a
bfc12cd8:	354aa822 	ori	t2,t2,0xa822
bfc12cdc:	3c0b90bc 	lui	t3,0x90bc
bfc12ce0:	356b5ed6 	ori	t3,t3,0x5ed6
bfc12ce4:	01600011 	mthi	t3
bfc12ce8:	01400013 	mtlo	t2
bfc12cec:	71090004 	msub	t0,t1
bfc12cf0:	00006010 	mfhi	t4
bfc12cf4:	00006812 	mflo	t5
bfc12cf8:	3c0e90bc 	lui	t6,0x90bc
bfc12cfc:	35ce5ed5 	ori	t6,t6,0x5ed5
bfc12d00:	158e015c 	bne	t4,t6,bfc13274 <inst_error>
bfc12d04:	00000000 	nop
bfc12d08:	3c0eef6a 	lui	t6,0xef6a
bfc12d0c:	35cea822 	ori	t6,t6,0xa822
bfc12d10:	15ae0158 	bne	t5,t6,bfc13274 <inst_error>
bfc12d14:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:107
bfc12d18:	3c082e2a 	lui	t0,0x2e2a
bfc12d1c:	3508d0f5 	ori	t0,t0,0xd0f5
bfc12d20:	24090000 	li	t1,0
bfc12d24:	3c0ae996 	lui	t2,0xe996
bfc12d28:	354afacc 	ori	t2,t2,0xfacc
bfc12d2c:	3c0b8a71 	lui	t3,0x8a71
bfc12d30:	356b41bd 	ori	t3,t3,0x41bd
bfc12d34:	01600011 	mthi	t3
bfc12d38:	01400013 	mtlo	t2
bfc12d3c:	71090004 	msub	t0,t1
bfc12d40:	00006010 	mfhi	t4
bfc12d44:	00006812 	mflo	t5
bfc12d48:	3c0e8a71 	lui	t6,0x8a71
bfc12d4c:	35ce41bc 	ori	t6,t6,0x41bc
bfc12d50:	158e0148 	bne	t4,t6,bfc13274 <inst_error>
bfc12d54:	00000000 	nop
bfc12d58:	3c0ee996 	lui	t6,0xe996
bfc12d5c:	35cefacc 	ori	t6,t6,0xfacc
bfc12d60:	15ae0144 	bne	t5,t6,bfc13274 <inst_error>
bfc12d64:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:108
bfc12d68:	3c08e6a1 	lui	t0,0xe6a1
bfc12d6c:	3508a994 	ori	t0,t0,0xa994
bfc12d70:	24090000 	li	t1,0
bfc12d74:	3c0aecd8 	lui	t2,0xecd8
bfc12d78:	354ae0d2 	ori	t2,t2,0xe0d2
bfc12d7c:	3c0ba412 	lui	t3,0xa412
bfc12d80:	356b9d9e 	ori	t3,t3,0x9d9e
bfc12d84:	01600011 	mthi	t3
bfc12d88:	01400013 	mtlo	t2
bfc12d8c:	71090004 	msub	t0,t1
bfc12d90:	00006010 	mfhi	t4
bfc12d94:	00006812 	mflo	t5
bfc12d98:	3c0ea412 	lui	t6,0xa412
bfc12d9c:	35ce9d9d 	ori	t6,t6,0x9d9d
bfc12da0:	158e0134 	bne	t4,t6,bfc13274 <inst_error>
bfc12da4:	00000000 	nop
bfc12da8:	3c0eecd8 	lui	t6,0xecd8
bfc12dac:	35cee0d2 	ori	t6,t6,0xe0d2
bfc12db0:	15ae0130 	bne	t5,t6,bfc13274 <inst_error>
bfc12db4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:109
bfc12db8:	3c088bcb 	lui	t0,0x8bcb
bfc12dbc:	3508879a 	ori	t0,t0,0x879a
bfc12dc0:	24090000 	li	t1,0
bfc12dc4:	3c0a3e45 	lui	t2,0x3e45
bfc12dc8:	354a457b 	ori	t2,t2,0x457b
bfc12dcc:	3c0b5dc0 	lui	t3,0x5dc0
bfc12dd0:	356bb68d 	ori	t3,t3,0xb68d
bfc12dd4:	01600011 	mthi	t3
bfc12dd8:	01400013 	mtlo	t2
bfc12ddc:	71090004 	msub	t0,t1
bfc12de0:	00006010 	mfhi	t4
bfc12de4:	00006812 	mflo	t5
bfc12de8:	3c0e5dc0 	lui	t6,0x5dc0
bfc12dec:	35ceb68d 	ori	t6,t6,0xb68d
bfc12df0:	158e0120 	bne	t4,t6,bfc13274 <inst_error>
bfc12df4:	00000000 	nop
bfc12df8:	3c0e3e45 	lui	t6,0x3e45
bfc12dfc:	35ce457b 	ori	t6,t6,0x457b
bfc12e00:	15ae011c 	bne	t5,t6,bfc13274 <inst_error>
bfc12e04:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:110
bfc12e08:	3c089b3a 	lui	t0,0x9b3a
bfc12e0c:	350899df 	ori	t0,t0,0x99df
bfc12e10:	24090000 	li	t1,0
bfc12e14:	3c0a7ca0 	lui	t2,0x7ca0
bfc12e18:	354a7c11 	ori	t2,t2,0x7c11
bfc12e1c:	3c0bbf7c 	lui	t3,0xbf7c
bfc12e20:	356be6e4 	ori	t3,t3,0xe6e4
bfc12e24:	01600011 	mthi	t3
bfc12e28:	01400013 	mtlo	t2
bfc12e2c:	71090004 	msub	t0,t1
bfc12e30:	00006010 	mfhi	t4
bfc12e34:	00006812 	mflo	t5
bfc12e38:	3c0ebf7c 	lui	t6,0xbf7c
bfc12e3c:	35cee6e4 	ori	t6,t6,0xe6e4
bfc12e40:	158e010c 	bne	t4,t6,bfc13274 <inst_error>
bfc12e44:	00000000 	nop
bfc12e48:	3c0e7ca0 	lui	t6,0x7ca0
bfc12e4c:	35ce7c11 	ori	t6,t6,0x7c11
bfc12e50:	15ae0108 	bne	t5,t6,bfc13274 <inst_error>
bfc12e54:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:111
bfc12e58:	3c08506e 	lui	t0,0x506e
bfc12e5c:	3508a5e4 	ori	t0,t0,0xa5e4
bfc12e60:	24090000 	li	t1,0
bfc12e64:	3c0a0527 	lui	t2,0x527
bfc12e68:	354a728a 	ori	t2,t2,0x728a
bfc12e6c:	3c0be559 	lui	t3,0xe559
bfc12e70:	356b65d2 	ori	t3,t3,0x65d2
bfc12e74:	01600011 	mthi	t3
bfc12e78:	01400013 	mtlo	t2
bfc12e7c:	71090004 	msub	t0,t1
bfc12e80:	00006010 	mfhi	t4
bfc12e84:	00006812 	mflo	t5
bfc12e88:	3c0ee559 	lui	t6,0xe559
bfc12e8c:	35ce65d2 	ori	t6,t6,0x65d2
bfc12e90:	158e00f8 	bne	t4,t6,bfc13274 <inst_error>
bfc12e94:	00000000 	nop
bfc12e98:	3c0e0527 	lui	t6,0x527
bfc12e9c:	35ce728a 	ori	t6,t6,0x728a
bfc12ea0:	15ae00f4 	bne	t5,t6,bfc13274 <inst_error>
bfc12ea4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:112
bfc12ea8:	3c0885f8 	lui	t0,0x85f8
bfc12eac:	3508259a 	ori	t0,t0,0x259a
bfc12eb0:	24090000 	li	t1,0
bfc12eb4:	3c0a445a 	lui	t2,0x445a
bfc12eb8:	354ad4e2 	ori	t2,t2,0xd4e2
bfc12ebc:	3c0b08bc 	lui	t3,0x8bc
bfc12ec0:	356b9a56 	ori	t3,t3,0x9a56
bfc12ec4:	01600011 	mthi	t3
bfc12ec8:	01400013 	mtlo	t2
bfc12ecc:	71090004 	msub	t0,t1
bfc12ed0:	00006010 	mfhi	t4
bfc12ed4:	00006812 	mflo	t5
bfc12ed8:	3c0e08bc 	lui	t6,0x8bc
bfc12edc:	35ce9a56 	ori	t6,t6,0x9a56
bfc12ee0:	158e00e4 	bne	t4,t6,bfc13274 <inst_error>
bfc12ee4:	00000000 	nop
bfc12ee8:	3c0e445a 	lui	t6,0x445a
bfc12eec:	35ced4e2 	ori	t6,t6,0xd4e2
bfc12ef0:	15ae00e0 	bne	t5,t6,bfc13274 <inst_error>
bfc12ef4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:113
bfc12ef8:	3c08ed84 	lui	t0,0xed84
bfc12efc:	3508c951 	ori	t0,t0,0xc951
bfc12f00:	24090000 	li	t1,0
bfc12f04:	3c0aac93 	lui	t2,0xac93
bfc12f08:	354ad926 	ori	t2,t2,0xd926
bfc12f0c:	3c0bbdec 	lui	t3,0xbdec
bfc12f10:	356b983f 	ori	t3,t3,0x983f
bfc12f14:	01600011 	mthi	t3
bfc12f18:	01400013 	mtlo	t2
bfc12f1c:	71090004 	msub	t0,t1
bfc12f20:	00006010 	mfhi	t4
bfc12f24:	00006812 	mflo	t5
bfc12f28:	3c0ebdec 	lui	t6,0xbdec
bfc12f2c:	35ce983e 	ori	t6,t6,0x983e
bfc12f30:	158e00d0 	bne	t4,t6,bfc13274 <inst_error>
bfc12f34:	00000000 	nop
bfc12f38:	3c0eac93 	lui	t6,0xac93
bfc12f3c:	35ced926 	ori	t6,t6,0xd926
bfc12f40:	15ae00cc 	bne	t5,t6,bfc13274 <inst_error>
bfc12f44:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:114
bfc12f48:	3c084d1b 	lui	t0,0x4d1b
bfc12f4c:	3508701c 	ori	t0,t0,0x701c
bfc12f50:	24090000 	li	t1,0
bfc12f54:	3c0a851e 	lui	t2,0x851e
bfc12f58:	354a2ad2 	ori	t2,t2,0x2ad2
bfc12f5c:	3c0b7690 	lui	t3,0x7690
bfc12f60:	356b498c 	ori	t3,t3,0x498c
bfc12f64:	01600011 	mthi	t3
bfc12f68:	01400013 	mtlo	t2
bfc12f6c:	71090004 	msub	t0,t1
bfc12f70:	00006010 	mfhi	t4
bfc12f74:	00006812 	mflo	t5
bfc12f78:	3c0e7690 	lui	t6,0x7690
bfc12f7c:	35ce498b 	ori	t6,t6,0x498b
bfc12f80:	158e00bc 	bne	t4,t6,bfc13274 <inst_error>
bfc12f84:	00000000 	nop
bfc12f88:	3c0e851e 	lui	t6,0x851e
bfc12f8c:	35ce2ad2 	ori	t6,t6,0x2ad2
bfc12f90:	15ae00b8 	bne	t5,t6,bfc13274 <inst_error>
bfc12f94:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:115
bfc12f98:	3c08ebcf 	lui	t0,0xebcf
bfc12f9c:	3508d550 	ori	t0,t0,0xd550
bfc12fa0:	24090000 	li	t1,0
bfc12fa4:	3c0af303 	lui	t2,0xf303
bfc12fa8:	354aac69 	ori	t2,t2,0xac69
bfc12fac:	3c0b3b57 	lui	t3,0x3b57
bfc12fb0:	356bbeda 	ori	t3,t3,0xbeda
bfc12fb4:	01600011 	mthi	t3
bfc12fb8:	01400013 	mtlo	t2
bfc12fbc:	71090004 	msub	t0,t1
bfc12fc0:	00006010 	mfhi	t4
bfc12fc4:	00006812 	mflo	t5
bfc12fc8:	3c0e3b57 	lui	t6,0x3b57
bfc12fcc:	35cebed9 	ori	t6,t6,0xbed9
bfc12fd0:	158e00a8 	bne	t4,t6,bfc13274 <inst_error>
bfc12fd4:	00000000 	nop
bfc12fd8:	3c0ef303 	lui	t6,0xf303
bfc12fdc:	35ceac69 	ori	t6,t6,0xac69
bfc12fe0:	15ae00a4 	bne	t5,t6,bfc13274 <inst_error>
bfc12fe4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:116
bfc12fe8:	3c08c882 	lui	t0,0xc882
bfc12fec:	35084583 	ori	t0,t0,0x4583
bfc12ff0:	24090000 	li	t1,0
bfc12ff4:	3c0af4ab 	lui	t2,0xf4ab
bfc12ff8:	354a29f7 	ori	t2,t2,0x29f7
bfc12ffc:	3c0bdbee 	lui	t3,0xdbee
bfc13000:	356b7f22 	ori	t3,t3,0x7f22
bfc13004:	01600011 	mthi	t3
bfc13008:	01400013 	mtlo	t2
bfc1300c:	71090004 	msub	t0,t1
bfc13010:	00006010 	mfhi	t4
bfc13014:	00006812 	mflo	t5
bfc13018:	3c0edbee 	lui	t6,0xdbee
bfc1301c:	35ce7f21 	ori	t6,t6,0x7f21
bfc13020:	158e0094 	bne	t4,t6,bfc13274 <inst_error>
bfc13024:	00000000 	nop
bfc13028:	3c0ef4ab 	lui	t6,0xf4ab
bfc1302c:	35ce29f7 	ori	t6,t6,0x29f7
bfc13030:	15ae0090 	bne	t5,t6,bfc13274 <inst_error>
bfc13034:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:117
bfc13038:	3c08316a 	lui	t0,0x316a
bfc1303c:	350880aa 	ori	t0,t0,0x80aa
bfc13040:	24090000 	li	t1,0
bfc13044:	3c0a26c8 	lui	t2,0x26c8
bfc13048:	354aa4ca 	ori	t2,t2,0xa4ca
bfc1304c:	3c0be76f 	lui	t3,0xe76f
bfc13050:	356b5209 	ori	t3,t3,0x5209
bfc13054:	01600011 	mthi	t3
bfc13058:	01400013 	mtlo	t2
bfc1305c:	71090004 	msub	t0,t1
bfc13060:	00006010 	mfhi	t4
bfc13064:	00006812 	mflo	t5
bfc13068:	3c0ee76f 	lui	t6,0xe76f
bfc1306c:	35ce5209 	ori	t6,t6,0x5209
bfc13070:	158e0080 	bne	t4,t6,bfc13274 <inst_error>
bfc13074:	00000000 	nop
bfc13078:	3c0e26c8 	lui	t6,0x26c8
bfc1307c:	35cea4ca 	ori	t6,t6,0xa4ca
bfc13080:	15ae007c 	bne	t5,t6,bfc13274 <inst_error>
bfc13084:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:118
bfc13088:	3c08e44c 	lui	t0,0xe44c
bfc1308c:	35085d25 	ori	t0,t0,0x5d25
bfc13090:	24090000 	li	t1,0
bfc13094:	3c0a734a 	lui	t2,0x734a
bfc13098:	354aa74b 	ori	t2,t2,0xa74b
bfc1309c:	3c0b518d 	lui	t3,0x518d
bfc130a0:	356b08d1 	ori	t3,t3,0x8d1
bfc130a4:	01600011 	mthi	t3
bfc130a8:	01400013 	mtlo	t2
bfc130ac:	71090004 	msub	t0,t1
bfc130b0:	00006010 	mfhi	t4
bfc130b4:	00006812 	mflo	t5
bfc130b8:	3c0e518d 	lui	t6,0x518d
bfc130bc:	35ce08d1 	ori	t6,t6,0x8d1
bfc130c0:	158e006c 	bne	t4,t6,bfc13274 <inst_error>
bfc130c4:	00000000 	nop
bfc130c8:	3c0e734a 	lui	t6,0x734a
bfc130cc:	35cea74b 	ori	t6,t6,0xa74b
bfc130d0:	15ae0068 	bne	t5,t6,bfc13274 <inst_error>
bfc130d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:119
bfc130d8:	3c08710b 	lui	t0,0x710b
bfc130dc:	35080069 	ori	t0,t0,0x69
bfc130e0:	24090000 	li	t1,0
bfc130e4:	3c0a1493 	lui	t2,0x1493
bfc130e8:	354af860 	ori	t2,t2,0xf860
bfc130ec:	3c0bc117 	lui	t3,0xc117
bfc130f0:	356b591e 	ori	t3,t3,0x591e
bfc130f4:	01600011 	mthi	t3
bfc130f8:	01400013 	mtlo	t2
bfc130fc:	71090004 	msub	t0,t1
bfc13100:	00006010 	mfhi	t4
bfc13104:	00006812 	mflo	t5
bfc13108:	3c0ec117 	lui	t6,0xc117
bfc1310c:	35ce591e 	ori	t6,t6,0x591e
bfc13110:	158e0058 	bne	t4,t6,bfc13274 <inst_error>
bfc13114:	00000000 	nop
bfc13118:	3c0e1493 	lui	t6,0x1493
bfc1311c:	35cef860 	ori	t6,t6,0xf860
bfc13120:	15ae0054 	bne	t5,t6,bfc13274 <inst_error>
bfc13124:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:120
bfc13128:	3c081ea6 	lui	t0,0x1ea6
bfc1312c:	35083833 	ori	t0,t0,0x3833
bfc13130:	24090000 	li	t1,0
bfc13134:	3c0a36a0 	lui	t2,0x36a0
bfc13138:	354ab634 	ori	t2,t2,0xb634
bfc1313c:	3c0b2c54 	lui	t3,0x2c54
bfc13140:	356b3729 	ori	t3,t3,0x3729
bfc13144:	01600011 	mthi	t3
bfc13148:	01400013 	mtlo	t2
bfc1314c:	71090004 	msub	t0,t1
bfc13150:	00006010 	mfhi	t4
bfc13154:	00006812 	mflo	t5
bfc13158:	3c0e2c54 	lui	t6,0x2c54
bfc1315c:	35ce3729 	ori	t6,t6,0x3729
bfc13160:	158e0044 	bne	t4,t6,bfc13274 <inst_error>
bfc13164:	00000000 	nop
bfc13168:	3c0e36a0 	lui	t6,0x36a0
bfc1316c:	35ceb634 	ori	t6,t6,0xb634
bfc13170:	15ae0040 	bne	t5,t6,bfc13274 <inst_error>
bfc13174:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:121
bfc13178:	3c08fb9c 	lui	t0,0xfb9c
bfc1317c:	350853d0 	ori	t0,t0,0x53d0
bfc13180:	24090000 	li	t1,0
bfc13184:	3c0a513c 	lui	t2,0x513c
bfc13188:	354aa03f 	ori	t2,t2,0xa03f
bfc1318c:	3c0b42fa 	lui	t3,0x42fa
bfc13190:	356bfb32 	ori	t3,t3,0xfb32
bfc13194:	01600011 	mthi	t3
bfc13198:	01400013 	mtlo	t2
bfc1319c:	71090004 	msub	t0,t1
bfc131a0:	00006010 	mfhi	t4
bfc131a4:	00006812 	mflo	t5
bfc131a8:	3c0e42fa 	lui	t6,0x42fa
bfc131ac:	35cefb32 	ori	t6,t6,0xfb32
bfc131b0:	158e0030 	bne	t4,t6,bfc13274 <inst_error>
bfc131b4:	00000000 	nop
bfc131b8:	3c0e513c 	lui	t6,0x513c
bfc131bc:	35cea03f 	ori	t6,t6,0xa03f
bfc131c0:	15ae002c 	bne	t5,t6,bfc13274 <inst_error>
bfc131c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:122
bfc131c8:	3c0800cb 	lui	t0,0xcb
bfc131cc:	3508e209 	ori	t0,t0,0xe209
bfc131d0:	24090000 	li	t1,0
bfc131d4:	3c0a8f0d 	lui	t2,0x8f0d
bfc131d8:	354a758b 	ori	t2,t2,0x758b
bfc131dc:	3c0b6582 	lui	t3,0x6582
bfc131e0:	356b3a1b 	ori	t3,t3,0x3a1b
bfc131e4:	01600011 	mthi	t3
bfc131e8:	01400013 	mtlo	t2
bfc131ec:	71090004 	msub	t0,t1
bfc131f0:	00006010 	mfhi	t4
bfc131f4:	00006812 	mflo	t5
bfc131f8:	3c0e6582 	lui	t6,0x6582
bfc131fc:	35ce3a1a 	ori	t6,t6,0x3a1a
bfc13200:	158e001c 	bne	t4,t6,bfc13274 <inst_error>
bfc13204:	00000000 	nop
bfc13208:	3c0e8f0d 	lui	t6,0x8f0d
bfc1320c:	35ce758b 	ori	t6,t6,0x758b
bfc13210:	15ae0018 	bne	t5,t6,bfc13274 <inst_error>
bfc13214:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:123
bfc13218:	3c083074 	lui	t0,0x3074
bfc1321c:	350895bc 	ori	t0,t0,0x95bc
bfc13220:	24090000 	li	t1,0
bfc13224:	3c0afd10 	lui	t2,0xfd10
bfc13228:	354a0638 	ori	t2,t2,0x638
bfc1322c:	3c0bbbe6 	lui	t3,0xbbe6
bfc13230:	356b3b6c 	ori	t3,t3,0x3b6c
bfc13234:	01600011 	mthi	t3
bfc13238:	01400013 	mtlo	t2
bfc1323c:	71090004 	msub	t0,t1
bfc13240:	00006010 	mfhi	t4
bfc13244:	00006812 	mflo	t5
bfc13248:	3c0ebbe6 	lui	t6,0xbbe6
bfc1324c:	35ce3b6b 	ori	t6,t6,0x3b6b
bfc13250:	158e0008 	bne	t4,t6,bfc13274 <inst_error>
bfc13254:	00000000 	nop
bfc13258:	3c0efd10 	lui	t6,0xfd10
bfc1325c:	35ce0638 	ori	t6,t6,0x638
bfc13260:	15ae0004 	bne	t5,t6,bfc13274 <inst_error>
bfc13264:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:126
bfc13268:	16400002 	bnez	s2,bfc13274 <inst_error>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:127
bfc1326c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:129
bfc13270:	26730001 	addiu	s3,s3,1

bfc13274 <inst_error>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:132
bfc13274:	00104e00 	sll	t1,s0,0x18
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:133
bfc13278:	01334025 	or	t0,t1,s3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:134
bfc1327c:	ae280000 	sw	t0,0(s1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:135
bfc13280:	03e00008 	jr	ra
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/my6_msub.S:136
bfc13284:	00000000 	nop
	...

bfc13290 <n1_lui_test>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:7
bfc13290:	26100001 	addiu	s0,s0,1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:8
bfc13294:	24120000 	li	s2,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:9
bfc13298:	3c0a0001 	lui	t2,0x1
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:11
bfc1329c:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:12
bfc132a0:	3c040000 	lui	a0,0x0
bfc132a4:	3c080000 	lui	t0,0x0
bfc132a8:	00892021 	addu	a0,a0,t1
bfc132ac:	012a4821 	addu	t1,t1,t2
bfc132b0:	15040489 	bne	t0,a0,bfc144d8 <inst_error>
bfc132b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:13
bfc132b8:	3c040000 	lui	a0,0x0
bfc132bc:	3c080001 	lui	t0,0x1
bfc132c0:	00892021 	addu	a0,a0,t1
bfc132c4:	012a4821 	addu	t1,t1,t2
bfc132c8:	15040483 	bne	t0,a0,bfc144d8 <inst_error>
bfc132cc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:14
bfc132d0:	3c040000 	lui	a0,0x0
bfc132d4:	3c080002 	lui	t0,0x2
bfc132d8:	00892021 	addu	a0,a0,t1
bfc132dc:	012a4821 	addu	t1,t1,t2
bfc132e0:	1504047d 	bne	t0,a0,bfc144d8 <inst_error>
bfc132e4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:15
bfc132e8:	3c040000 	lui	a0,0x0
bfc132ec:	3c080003 	lui	t0,0x3
bfc132f0:	00892021 	addu	a0,a0,t1
bfc132f4:	012a4821 	addu	t1,t1,t2
bfc132f8:	15040477 	bne	t0,a0,bfc144d8 <inst_error>
bfc132fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:16
bfc13300:	3c040000 	lui	a0,0x0
bfc13304:	3c080004 	lui	t0,0x4
bfc13308:	00892021 	addu	a0,a0,t1
bfc1330c:	012a4821 	addu	t1,t1,t2
bfc13310:	15040471 	bne	t0,a0,bfc144d8 <inst_error>
bfc13314:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:17
bfc13318:	3c040000 	lui	a0,0x0
bfc1331c:	3c080005 	lui	t0,0x5
bfc13320:	00892021 	addu	a0,a0,t1
bfc13324:	012a4821 	addu	t1,t1,t2
bfc13328:	1504046b 	bne	t0,a0,bfc144d8 <inst_error>
bfc1332c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:18
bfc13330:	3c040000 	lui	a0,0x0
bfc13334:	3c080006 	lui	t0,0x6
bfc13338:	00892021 	addu	a0,a0,t1
bfc1333c:	012a4821 	addu	t1,t1,t2
bfc13340:	15040465 	bne	t0,a0,bfc144d8 <inst_error>
bfc13344:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:19
bfc13348:	3c040000 	lui	a0,0x0
bfc1334c:	3c080007 	lui	t0,0x7
bfc13350:	00892021 	addu	a0,a0,t1
bfc13354:	012a4821 	addu	t1,t1,t2
bfc13358:	1504045f 	bne	t0,a0,bfc144d8 <inst_error>
bfc1335c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:20
bfc13360:	3c040000 	lui	a0,0x0
bfc13364:	3c080008 	lui	t0,0x8
bfc13368:	00892021 	addu	a0,a0,t1
bfc1336c:	012a4821 	addu	t1,t1,t2
bfc13370:	15040459 	bne	t0,a0,bfc144d8 <inst_error>
bfc13374:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:21
bfc13378:	3c040000 	lui	a0,0x0
bfc1337c:	3c080009 	lui	t0,0x9
bfc13380:	00892021 	addu	a0,a0,t1
bfc13384:	012a4821 	addu	t1,t1,t2
bfc13388:	15040453 	bne	t0,a0,bfc144d8 <inst_error>
bfc1338c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:22
bfc13390:	3c040000 	lui	a0,0x0
bfc13394:	3c08000a 	lui	t0,0xa
bfc13398:	00892021 	addu	a0,a0,t1
bfc1339c:	012a4821 	addu	t1,t1,t2
bfc133a0:	1504044d 	bne	t0,a0,bfc144d8 <inst_error>
bfc133a4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:23
bfc133a8:	3c040000 	lui	a0,0x0
bfc133ac:	3c08000b 	lui	t0,0xb
bfc133b0:	00892021 	addu	a0,a0,t1
bfc133b4:	012a4821 	addu	t1,t1,t2
bfc133b8:	15040447 	bne	t0,a0,bfc144d8 <inst_error>
bfc133bc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:24
bfc133c0:	3c040000 	lui	a0,0x0
bfc133c4:	3c08000c 	lui	t0,0xc
bfc133c8:	00892021 	addu	a0,a0,t1
bfc133cc:	012a4821 	addu	t1,t1,t2
bfc133d0:	15040441 	bne	t0,a0,bfc144d8 <inst_error>
bfc133d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:25
bfc133d8:	3c040000 	lui	a0,0x0
bfc133dc:	3c08000d 	lui	t0,0xd
bfc133e0:	00892021 	addu	a0,a0,t1
bfc133e4:	012a4821 	addu	t1,t1,t2
bfc133e8:	1504043b 	bne	t0,a0,bfc144d8 <inst_error>
bfc133ec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:26
bfc133f0:	3c040000 	lui	a0,0x0
bfc133f4:	3c08000e 	lui	t0,0xe
bfc133f8:	00892021 	addu	a0,a0,t1
bfc133fc:	012a4821 	addu	t1,t1,t2
bfc13400:	15040435 	bne	t0,a0,bfc144d8 <inst_error>
bfc13404:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:27
bfc13408:	3c040000 	lui	a0,0x0
bfc1340c:	3c08000f 	lui	t0,0xf
bfc13410:	00892021 	addu	a0,a0,t1
bfc13414:	012a4821 	addu	t1,t1,t2
bfc13418:	1504042f 	bne	t0,a0,bfc144d8 <inst_error>
bfc1341c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:28
bfc13420:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:29
bfc13424:	3c041010 	lui	a0,0x1010
bfc13428:	3c081010 	lui	t0,0x1010
bfc1342c:	00892021 	addu	a0,a0,t1
bfc13430:	012a4821 	addu	t1,t1,t2
bfc13434:	15040428 	bne	t0,a0,bfc144d8 <inst_error>
bfc13438:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:30
bfc1343c:	3c041010 	lui	a0,0x1010
bfc13440:	3c081011 	lui	t0,0x1011
bfc13444:	00892021 	addu	a0,a0,t1
bfc13448:	012a4821 	addu	t1,t1,t2
bfc1344c:	15040422 	bne	t0,a0,bfc144d8 <inst_error>
bfc13450:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:31
bfc13454:	3c041010 	lui	a0,0x1010
bfc13458:	3c081012 	lui	t0,0x1012
bfc1345c:	00892021 	addu	a0,a0,t1
bfc13460:	012a4821 	addu	t1,t1,t2
bfc13464:	1504041c 	bne	t0,a0,bfc144d8 <inst_error>
bfc13468:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:32
bfc1346c:	3c041010 	lui	a0,0x1010
bfc13470:	3c081013 	lui	t0,0x1013
bfc13474:	00892021 	addu	a0,a0,t1
bfc13478:	012a4821 	addu	t1,t1,t2
bfc1347c:	15040416 	bne	t0,a0,bfc144d8 <inst_error>
bfc13480:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:33
bfc13484:	3c041010 	lui	a0,0x1010
bfc13488:	3c081014 	lui	t0,0x1014
bfc1348c:	00892021 	addu	a0,a0,t1
bfc13490:	012a4821 	addu	t1,t1,t2
bfc13494:	15040410 	bne	t0,a0,bfc144d8 <inst_error>
bfc13498:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:34
bfc1349c:	3c041010 	lui	a0,0x1010
bfc134a0:	3c081015 	lui	t0,0x1015
bfc134a4:	00892021 	addu	a0,a0,t1
bfc134a8:	012a4821 	addu	t1,t1,t2
bfc134ac:	1504040a 	bne	t0,a0,bfc144d8 <inst_error>
bfc134b0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:35
bfc134b4:	3c041010 	lui	a0,0x1010
bfc134b8:	3c081016 	lui	t0,0x1016
bfc134bc:	00892021 	addu	a0,a0,t1
bfc134c0:	012a4821 	addu	t1,t1,t2
bfc134c4:	15040404 	bne	t0,a0,bfc144d8 <inst_error>
bfc134c8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:36
bfc134cc:	3c041010 	lui	a0,0x1010
bfc134d0:	3c081017 	lui	t0,0x1017
bfc134d4:	00892021 	addu	a0,a0,t1
bfc134d8:	012a4821 	addu	t1,t1,t2
bfc134dc:	150403fe 	bne	t0,a0,bfc144d8 <inst_error>
bfc134e0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:37
bfc134e4:	3c041010 	lui	a0,0x1010
bfc134e8:	3c081018 	lui	t0,0x1018
bfc134ec:	00892021 	addu	a0,a0,t1
bfc134f0:	012a4821 	addu	t1,t1,t2
bfc134f4:	150403f8 	bne	t0,a0,bfc144d8 <inst_error>
bfc134f8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:38
bfc134fc:	3c041010 	lui	a0,0x1010
bfc13500:	3c081019 	lui	t0,0x1019
bfc13504:	00892021 	addu	a0,a0,t1
bfc13508:	012a4821 	addu	t1,t1,t2
bfc1350c:	150403f2 	bne	t0,a0,bfc144d8 <inst_error>
bfc13510:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:39
bfc13514:	3c041010 	lui	a0,0x1010
bfc13518:	3c08101a 	lui	t0,0x101a
bfc1351c:	00892021 	addu	a0,a0,t1
bfc13520:	012a4821 	addu	t1,t1,t2
bfc13524:	150403ec 	bne	t0,a0,bfc144d8 <inst_error>
bfc13528:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:40
bfc1352c:	3c041010 	lui	a0,0x1010
bfc13530:	3c08101b 	lui	t0,0x101b
bfc13534:	00892021 	addu	a0,a0,t1
bfc13538:	012a4821 	addu	t1,t1,t2
bfc1353c:	150403e6 	bne	t0,a0,bfc144d8 <inst_error>
bfc13540:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:41
bfc13544:	3c041010 	lui	a0,0x1010
bfc13548:	3c08101c 	lui	t0,0x101c
bfc1354c:	00892021 	addu	a0,a0,t1
bfc13550:	012a4821 	addu	t1,t1,t2
bfc13554:	150403e0 	bne	t0,a0,bfc144d8 <inst_error>
bfc13558:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:42
bfc1355c:	3c041010 	lui	a0,0x1010
bfc13560:	3c08101d 	lui	t0,0x101d
bfc13564:	00892021 	addu	a0,a0,t1
bfc13568:	012a4821 	addu	t1,t1,t2
bfc1356c:	150403da 	bne	t0,a0,bfc144d8 <inst_error>
bfc13570:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:43
bfc13574:	3c041010 	lui	a0,0x1010
bfc13578:	3c08101e 	lui	t0,0x101e
bfc1357c:	00892021 	addu	a0,a0,t1
bfc13580:	012a4821 	addu	t1,t1,t2
bfc13584:	150403d4 	bne	t0,a0,bfc144d8 <inst_error>
bfc13588:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:44
bfc1358c:	3c041010 	lui	a0,0x1010
bfc13590:	3c08101f 	lui	t0,0x101f
bfc13594:	00892021 	addu	a0,a0,t1
bfc13598:	012a4821 	addu	t1,t1,t2
bfc1359c:	150403ce 	bne	t0,a0,bfc144d8 <inst_error>
bfc135a0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:45
bfc135a4:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:46
bfc135a8:	3c042020 	lui	a0,0x2020
bfc135ac:	3c082020 	lui	t0,0x2020
bfc135b0:	00892021 	addu	a0,a0,t1
bfc135b4:	012a4821 	addu	t1,t1,t2
bfc135b8:	150403c7 	bne	t0,a0,bfc144d8 <inst_error>
bfc135bc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:47
bfc135c0:	3c042020 	lui	a0,0x2020
bfc135c4:	3c082021 	lui	t0,0x2021
bfc135c8:	00892021 	addu	a0,a0,t1
bfc135cc:	012a4821 	addu	t1,t1,t2
bfc135d0:	150403c1 	bne	t0,a0,bfc144d8 <inst_error>
bfc135d4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:48
bfc135d8:	3c042020 	lui	a0,0x2020
bfc135dc:	3c082022 	lui	t0,0x2022
bfc135e0:	00892021 	addu	a0,a0,t1
bfc135e4:	012a4821 	addu	t1,t1,t2
bfc135e8:	150403bb 	bne	t0,a0,bfc144d8 <inst_error>
bfc135ec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:49
bfc135f0:	3c042020 	lui	a0,0x2020
bfc135f4:	3c082023 	lui	t0,0x2023
bfc135f8:	00892021 	addu	a0,a0,t1
bfc135fc:	012a4821 	addu	t1,t1,t2
bfc13600:	150403b5 	bne	t0,a0,bfc144d8 <inst_error>
bfc13604:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:50
bfc13608:	3c042020 	lui	a0,0x2020
bfc1360c:	3c082024 	lui	t0,0x2024
bfc13610:	00892021 	addu	a0,a0,t1
bfc13614:	012a4821 	addu	t1,t1,t2
bfc13618:	150403af 	bne	t0,a0,bfc144d8 <inst_error>
bfc1361c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:51
bfc13620:	3c042020 	lui	a0,0x2020
bfc13624:	3c082025 	lui	t0,0x2025
bfc13628:	00892021 	addu	a0,a0,t1
bfc1362c:	012a4821 	addu	t1,t1,t2
bfc13630:	150403a9 	bne	t0,a0,bfc144d8 <inst_error>
bfc13634:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:52
bfc13638:	3c042020 	lui	a0,0x2020
bfc1363c:	3c082026 	lui	t0,0x2026
bfc13640:	00892021 	addu	a0,a0,t1
bfc13644:	012a4821 	addu	t1,t1,t2
bfc13648:	150403a3 	bne	t0,a0,bfc144d8 <inst_error>
bfc1364c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:53
bfc13650:	3c042020 	lui	a0,0x2020
bfc13654:	3c082027 	lui	t0,0x2027
bfc13658:	00892021 	addu	a0,a0,t1
bfc1365c:	012a4821 	addu	t1,t1,t2
bfc13660:	1504039d 	bne	t0,a0,bfc144d8 <inst_error>
bfc13664:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:54
bfc13668:	3c042020 	lui	a0,0x2020
bfc1366c:	3c082028 	lui	t0,0x2028
bfc13670:	00892021 	addu	a0,a0,t1
bfc13674:	012a4821 	addu	t1,t1,t2
bfc13678:	15040397 	bne	t0,a0,bfc144d8 <inst_error>
bfc1367c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:55
bfc13680:	3c042020 	lui	a0,0x2020
bfc13684:	3c082029 	lui	t0,0x2029
bfc13688:	00892021 	addu	a0,a0,t1
bfc1368c:	012a4821 	addu	t1,t1,t2
bfc13690:	15040391 	bne	t0,a0,bfc144d8 <inst_error>
bfc13694:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:56
bfc13698:	3c042020 	lui	a0,0x2020
bfc1369c:	3c08202a 	lui	t0,0x202a
bfc136a0:	00892021 	addu	a0,a0,t1
bfc136a4:	012a4821 	addu	t1,t1,t2
bfc136a8:	1504038b 	bne	t0,a0,bfc144d8 <inst_error>
bfc136ac:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:57
bfc136b0:	3c042020 	lui	a0,0x2020
bfc136b4:	3c08202b 	lui	t0,0x202b
bfc136b8:	00892021 	addu	a0,a0,t1
bfc136bc:	012a4821 	addu	t1,t1,t2
bfc136c0:	15040385 	bne	t0,a0,bfc144d8 <inst_error>
bfc136c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:58
bfc136c8:	3c042020 	lui	a0,0x2020
bfc136cc:	3c08202c 	lui	t0,0x202c
bfc136d0:	00892021 	addu	a0,a0,t1
bfc136d4:	012a4821 	addu	t1,t1,t2
bfc136d8:	1504037f 	bne	t0,a0,bfc144d8 <inst_error>
bfc136dc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:59
bfc136e0:	3c042020 	lui	a0,0x2020
bfc136e4:	3c08202d 	lui	t0,0x202d
bfc136e8:	00892021 	addu	a0,a0,t1
bfc136ec:	012a4821 	addu	t1,t1,t2
bfc136f0:	15040379 	bne	t0,a0,bfc144d8 <inst_error>
bfc136f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:60
bfc136f8:	3c042020 	lui	a0,0x2020
bfc136fc:	3c08202e 	lui	t0,0x202e
bfc13700:	00892021 	addu	a0,a0,t1
bfc13704:	012a4821 	addu	t1,t1,t2
bfc13708:	15040373 	bne	t0,a0,bfc144d8 <inst_error>
bfc1370c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:61
bfc13710:	3c042020 	lui	a0,0x2020
bfc13714:	3c08202f 	lui	t0,0x202f
bfc13718:	00892021 	addu	a0,a0,t1
bfc1371c:	012a4821 	addu	t1,t1,t2
bfc13720:	1504036d 	bne	t0,a0,bfc144d8 <inst_error>
bfc13724:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:62
bfc13728:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:63
bfc1372c:	3c043030 	lui	a0,0x3030
bfc13730:	3c083030 	lui	t0,0x3030
bfc13734:	00892021 	addu	a0,a0,t1
bfc13738:	012a4821 	addu	t1,t1,t2
bfc1373c:	15040366 	bne	t0,a0,bfc144d8 <inst_error>
bfc13740:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:64
bfc13744:	3c043030 	lui	a0,0x3030
bfc13748:	3c083031 	lui	t0,0x3031
bfc1374c:	00892021 	addu	a0,a0,t1
bfc13750:	012a4821 	addu	t1,t1,t2
bfc13754:	15040360 	bne	t0,a0,bfc144d8 <inst_error>
bfc13758:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:65
bfc1375c:	3c043030 	lui	a0,0x3030
bfc13760:	3c083032 	lui	t0,0x3032
bfc13764:	00892021 	addu	a0,a0,t1
bfc13768:	012a4821 	addu	t1,t1,t2
bfc1376c:	1504035a 	bne	t0,a0,bfc144d8 <inst_error>
bfc13770:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:66
bfc13774:	3c043030 	lui	a0,0x3030
bfc13778:	3c083033 	lui	t0,0x3033
bfc1377c:	00892021 	addu	a0,a0,t1
bfc13780:	012a4821 	addu	t1,t1,t2
bfc13784:	15040354 	bne	t0,a0,bfc144d8 <inst_error>
bfc13788:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:67
bfc1378c:	3c043030 	lui	a0,0x3030
bfc13790:	3c083034 	lui	t0,0x3034
bfc13794:	00892021 	addu	a0,a0,t1
bfc13798:	012a4821 	addu	t1,t1,t2
bfc1379c:	1504034e 	bne	t0,a0,bfc144d8 <inst_error>
bfc137a0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:68
bfc137a4:	3c043030 	lui	a0,0x3030
bfc137a8:	3c083035 	lui	t0,0x3035
bfc137ac:	00892021 	addu	a0,a0,t1
bfc137b0:	012a4821 	addu	t1,t1,t2
bfc137b4:	15040348 	bne	t0,a0,bfc144d8 <inst_error>
bfc137b8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:69
bfc137bc:	3c043030 	lui	a0,0x3030
bfc137c0:	3c083036 	lui	t0,0x3036
bfc137c4:	00892021 	addu	a0,a0,t1
bfc137c8:	012a4821 	addu	t1,t1,t2
bfc137cc:	15040342 	bne	t0,a0,bfc144d8 <inst_error>
bfc137d0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:70
bfc137d4:	3c043030 	lui	a0,0x3030
bfc137d8:	3c083037 	lui	t0,0x3037
bfc137dc:	00892021 	addu	a0,a0,t1
bfc137e0:	012a4821 	addu	t1,t1,t2
bfc137e4:	1504033c 	bne	t0,a0,bfc144d8 <inst_error>
bfc137e8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:71
bfc137ec:	3c043030 	lui	a0,0x3030
bfc137f0:	3c083038 	lui	t0,0x3038
bfc137f4:	00892021 	addu	a0,a0,t1
bfc137f8:	012a4821 	addu	t1,t1,t2
bfc137fc:	15040336 	bne	t0,a0,bfc144d8 <inst_error>
bfc13800:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:72
bfc13804:	3c043030 	lui	a0,0x3030
bfc13808:	3c083039 	lui	t0,0x3039
bfc1380c:	00892021 	addu	a0,a0,t1
bfc13810:	012a4821 	addu	t1,t1,t2
bfc13814:	15040330 	bne	t0,a0,bfc144d8 <inst_error>
bfc13818:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:73
bfc1381c:	3c043030 	lui	a0,0x3030
bfc13820:	3c08303a 	lui	t0,0x303a
bfc13824:	00892021 	addu	a0,a0,t1
bfc13828:	012a4821 	addu	t1,t1,t2
bfc1382c:	1504032a 	bne	t0,a0,bfc144d8 <inst_error>
bfc13830:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:74
bfc13834:	3c043030 	lui	a0,0x3030
bfc13838:	3c08303b 	lui	t0,0x303b
bfc1383c:	00892021 	addu	a0,a0,t1
bfc13840:	012a4821 	addu	t1,t1,t2
bfc13844:	15040324 	bne	t0,a0,bfc144d8 <inst_error>
bfc13848:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:75
bfc1384c:	3c043030 	lui	a0,0x3030
bfc13850:	3c08303c 	lui	t0,0x303c
bfc13854:	00892021 	addu	a0,a0,t1
bfc13858:	012a4821 	addu	t1,t1,t2
bfc1385c:	1504031e 	bne	t0,a0,bfc144d8 <inst_error>
bfc13860:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:76
bfc13864:	3c043030 	lui	a0,0x3030
bfc13868:	3c08303d 	lui	t0,0x303d
bfc1386c:	00892021 	addu	a0,a0,t1
bfc13870:	012a4821 	addu	t1,t1,t2
bfc13874:	15040318 	bne	t0,a0,bfc144d8 <inst_error>
bfc13878:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:77
bfc1387c:	3c043030 	lui	a0,0x3030
bfc13880:	3c08303e 	lui	t0,0x303e
bfc13884:	00892021 	addu	a0,a0,t1
bfc13888:	012a4821 	addu	t1,t1,t2
bfc1388c:	15040312 	bne	t0,a0,bfc144d8 <inst_error>
bfc13890:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:78
bfc13894:	3c043030 	lui	a0,0x3030
bfc13898:	3c08303f 	lui	t0,0x303f
bfc1389c:	00892021 	addu	a0,a0,t1
bfc138a0:	012a4821 	addu	t1,t1,t2
bfc138a4:	1504030c 	bne	t0,a0,bfc144d8 <inst_error>
bfc138a8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:79
bfc138ac:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:80
bfc138b0:	3c044040 	lui	a0,0x4040
bfc138b4:	3c084040 	lui	t0,0x4040
bfc138b8:	00892021 	addu	a0,a0,t1
bfc138bc:	012a4821 	addu	t1,t1,t2
bfc138c0:	15040305 	bne	t0,a0,bfc144d8 <inst_error>
bfc138c4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:81
bfc138c8:	3c044040 	lui	a0,0x4040
bfc138cc:	3c084041 	lui	t0,0x4041
bfc138d0:	00892021 	addu	a0,a0,t1
bfc138d4:	012a4821 	addu	t1,t1,t2
bfc138d8:	150402ff 	bne	t0,a0,bfc144d8 <inst_error>
bfc138dc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:82
bfc138e0:	3c044040 	lui	a0,0x4040
bfc138e4:	3c084042 	lui	t0,0x4042
bfc138e8:	00892021 	addu	a0,a0,t1
bfc138ec:	012a4821 	addu	t1,t1,t2
bfc138f0:	150402f9 	bne	t0,a0,bfc144d8 <inst_error>
bfc138f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:83
bfc138f8:	3c044040 	lui	a0,0x4040
bfc138fc:	3c084043 	lui	t0,0x4043
bfc13900:	00892021 	addu	a0,a0,t1
bfc13904:	012a4821 	addu	t1,t1,t2
bfc13908:	150402f3 	bne	t0,a0,bfc144d8 <inst_error>
bfc1390c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:84
bfc13910:	3c044040 	lui	a0,0x4040
bfc13914:	3c084044 	lui	t0,0x4044
bfc13918:	00892021 	addu	a0,a0,t1
bfc1391c:	012a4821 	addu	t1,t1,t2
bfc13920:	150402ed 	bne	t0,a0,bfc144d8 <inst_error>
bfc13924:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:85
bfc13928:	3c044040 	lui	a0,0x4040
bfc1392c:	3c084045 	lui	t0,0x4045
bfc13930:	00892021 	addu	a0,a0,t1
bfc13934:	012a4821 	addu	t1,t1,t2
bfc13938:	150402e7 	bne	t0,a0,bfc144d8 <inst_error>
bfc1393c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:86
bfc13940:	3c044040 	lui	a0,0x4040
bfc13944:	3c084046 	lui	t0,0x4046
bfc13948:	00892021 	addu	a0,a0,t1
bfc1394c:	012a4821 	addu	t1,t1,t2
bfc13950:	150402e1 	bne	t0,a0,bfc144d8 <inst_error>
bfc13954:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:87
bfc13958:	3c044040 	lui	a0,0x4040
bfc1395c:	3c084047 	lui	t0,0x4047
bfc13960:	00892021 	addu	a0,a0,t1
bfc13964:	012a4821 	addu	t1,t1,t2
bfc13968:	150402db 	bne	t0,a0,bfc144d8 <inst_error>
bfc1396c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:88
bfc13970:	3c044040 	lui	a0,0x4040
bfc13974:	3c084048 	lui	t0,0x4048
bfc13978:	00892021 	addu	a0,a0,t1
bfc1397c:	012a4821 	addu	t1,t1,t2
bfc13980:	150402d5 	bne	t0,a0,bfc144d8 <inst_error>
bfc13984:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:89
bfc13988:	3c044040 	lui	a0,0x4040
bfc1398c:	3c084049 	lui	t0,0x4049
bfc13990:	00892021 	addu	a0,a0,t1
bfc13994:	012a4821 	addu	t1,t1,t2
bfc13998:	150402cf 	bne	t0,a0,bfc144d8 <inst_error>
bfc1399c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:90
bfc139a0:	3c044040 	lui	a0,0x4040
bfc139a4:	3c08404a 	lui	t0,0x404a
bfc139a8:	00892021 	addu	a0,a0,t1
bfc139ac:	012a4821 	addu	t1,t1,t2
bfc139b0:	150402c9 	bne	t0,a0,bfc144d8 <inst_error>
bfc139b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:91
bfc139b8:	3c044040 	lui	a0,0x4040
bfc139bc:	3c08404b 	lui	t0,0x404b
bfc139c0:	00892021 	addu	a0,a0,t1
bfc139c4:	012a4821 	addu	t1,t1,t2
bfc139c8:	150402c3 	bne	t0,a0,bfc144d8 <inst_error>
bfc139cc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:92
bfc139d0:	3c044040 	lui	a0,0x4040
bfc139d4:	3c08404c 	lui	t0,0x404c
bfc139d8:	00892021 	addu	a0,a0,t1
bfc139dc:	012a4821 	addu	t1,t1,t2
bfc139e0:	150402bd 	bne	t0,a0,bfc144d8 <inst_error>
bfc139e4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:93
bfc139e8:	3c044040 	lui	a0,0x4040
bfc139ec:	3c08404d 	lui	t0,0x404d
bfc139f0:	00892021 	addu	a0,a0,t1
bfc139f4:	012a4821 	addu	t1,t1,t2
bfc139f8:	150402b7 	bne	t0,a0,bfc144d8 <inst_error>
bfc139fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:94
bfc13a00:	3c044040 	lui	a0,0x4040
bfc13a04:	3c08404e 	lui	t0,0x404e
bfc13a08:	00892021 	addu	a0,a0,t1
bfc13a0c:	012a4821 	addu	t1,t1,t2
bfc13a10:	150402b1 	bne	t0,a0,bfc144d8 <inst_error>
bfc13a14:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:95
bfc13a18:	3c044040 	lui	a0,0x4040
bfc13a1c:	3c08404f 	lui	t0,0x404f
bfc13a20:	00892021 	addu	a0,a0,t1
bfc13a24:	012a4821 	addu	t1,t1,t2
bfc13a28:	150402ab 	bne	t0,a0,bfc144d8 <inst_error>
bfc13a2c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:96
bfc13a30:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:97
bfc13a34:	3c045040 	lui	a0,0x5040
bfc13a38:	3c085040 	lui	t0,0x5040
bfc13a3c:	00892021 	addu	a0,a0,t1
bfc13a40:	012a4821 	addu	t1,t1,t2
bfc13a44:	150402a4 	bne	t0,a0,bfc144d8 <inst_error>
bfc13a48:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:98
bfc13a4c:	3c045040 	lui	a0,0x5040
bfc13a50:	3c085041 	lui	t0,0x5041
bfc13a54:	00892021 	addu	a0,a0,t1
bfc13a58:	012a4821 	addu	t1,t1,t2
bfc13a5c:	1504029e 	bne	t0,a0,bfc144d8 <inst_error>
bfc13a60:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:99
bfc13a64:	3c045040 	lui	a0,0x5040
bfc13a68:	3c085042 	lui	t0,0x5042
bfc13a6c:	00892021 	addu	a0,a0,t1
bfc13a70:	012a4821 	addu	t1,t1,t2
bfc13a74:	15040298 	bne	t0,a0,bfc144d8 <inst_error>
bfc13a78:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:100
bfc13a7c:	3c045040 	lui	a0,0x5040
bfc13a80:	3c085043 	lui	t0,0x5043
bfc13a84:	00892021 	addu	a0,a0,t1
bfc13a88:	012a4821 	addu	t1,t1,t2
bfc13a8c:	15040292 	bne	t0,a0,bfc144d8 <inst_error>
bfc13a90:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:101
bfc13a94:	3c045040 	lui	a0,0x5040
bfc13a98:	3c085044 	lui	t0,0x5044
bfc13a9c:	00892021 	addu	a0,a0,t1
bfc13aa0:	012a4821 	addu	t1,t1,t2
bfc13aa4:	1504028c 	bne	t0,a0,bfc144d8 <inst_error>
bfc13aa8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:102
bfc13aac:	3c045040 	lui	a0,0x5040
bfc13ab0:	3c085045 	lui	t0,0x5045
bfc13ab4:	00892021 	addu	a0,a0,t1
bfc13ab8:	012a4821 	addu	t1,t1,t2
bfc13abc:	15040286 	bne	t0,a0,bfc144d8 <inst_error>
bfc13ac0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:103
bfc13ac4:	3c045040 	lui	a0,0x5040
bfc13ac8:	3c085046 	lui	t0,0x5046
bfc13acc:	00892021 	addu	a0,a0,t1
bfc13ad0:	012a4821 	addu	t1,t1,t2
bfc13ad4:	15040280 	bne	t0,a0,bfc144d8 <inst_error>
bfc13ad8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:104
bfc13adc:	3c045040 	lui	a0,0x5040
bfc13ae0:	3c085047 	lui	t0,0x5047
bfc13ae4:	00892021 	addu	a0,a0,t1
bfc13ae8:	012a4821 	addu	t1,t1,t2
bfc13aec:	1504027a 	bne	t0,a0,bfc144d8 <inst_error>
bfc13af0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:105
bfc13af4:	3c045040 	lui	a0,0x5040
bfc13af8:	3c085048 	lui	t0,0x5048
bfc13afc:	00892021 	addu	a0,a0,t1
bfc13b00:	012a4821 	addu	t1,t1,t2
bfc13b04:	15040274 	bne	t0,a0,bfc144d8 <inst_error>
bfc13b08:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:106
bfc13b0c:	3c045040 	lui	a0,0x5040
bfc13b10:	3c085049 	lui	t0,0x5049
bfc13b14:	00892021 	addu	a0,a0,t1
bfc13b18:	012a4821 	addu	t1,t1,t2
bfc13b1c:	1504026e 	bne	t0,a0,bfc144d8 <inst_error>
bfc13b20:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:107
bfc13b24:	3c045040 	lui	a0,0x5040
bfc13b28:	3c08504a 	lui	t0,0x504a
bfc13b2c:	00892021 	addu	a0,a0,t1
bfc13b30:	012a4821 	addu	t1,t1,t2
bfc13b34:	15040268 	bne	t0,a0,bfc144d8 <inst_error>
bfc13b38:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:108
bfc13b3c:	3c045040 	lui	a0,0x5040
bfc13b40:	3c08504b 	lui	t0,0x504b
bfc13b44:	00892021 	addu	a0,a0,t1
bfc13b48:	012a4821 	addu	t1,t1,t2
bfc13b4c:	15040262 	bne	t0,a0,bfc144d8 <inst_error>
bfc13b50:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:109
bfc13b54:	3c045040 	lui	a0,0x5040
bfc13b58:	3c08504c 	lui	t0,0x504c
bfc13b5c:	00892021 	addu	a0,a0,t1
bfc13b60:	012a4821 	addu	t1,t1,t2
bfc13b64:	1504025c 	bne	t0,a0,bfc144d8 <inst_error>
bfc13b68:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:110
bfc13b6c:	3c045040 	lui	a0,0x5040
bfc13b70:	3c08504d 	lui	t0,0x504d
bfc13b74:	00892021 	addu	a0,a0,t1
bfc13b78:	012a4821 	addu	t1,t1,t2
bfc13b7c:	15040256 	bne	t0,a0,bfc144d8 <inst_error>
bfc13b80:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:111
bfc13b84:	3c045040 	lui	a0,0x5040
bfc13b88:	3c08504e 	lui	t0,0x504e
bfc13b8c:	00892021 	addu	a0,a0,t1
bfc13b90:	012a4821 	addu	t1,t1,t2
bfc13b94:	15040250 	bne	t0,a0,bfc144d8 <inst_error>
bfc13b98:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:112
bfc13b9c:	3c045040 	lui	a0,0x5040
bfc13ba0:	3c08504f 	lui	t0,0x504f
bfc13ba4:	00892021 	addu	a0,a0,t1
bfc13ba8:	012a4821 	addu	t1,t1,t2
bfc13bac:	1504024a 	bne	t0,a0,bfc144d8 <inst_error>
bfc13bb0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:113
bfc13bb4:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:114
bfc13bb8:	3c046050 	lui	a0,0x6050
bfc13bbc:	3c086050 	lui	t0,0x6050
bfc13bc0:	00892021 	addu	a0,a0,t1
bfc13bc4:	012a4821 	addu	t1,t1,t2
bfc13bc8:	15040243 	bne	t0,a0,bfc144d8 <inst_error>
bfc13bcc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:115
bfc13bd0:	3c046050 	lui	a0,0x6050
bfc13bd4:	3c086051 	lui	t0,0x6051
bfc13bd8:	00892021 	addu	a0,a0,t1
bfc13bdc:	012a4821 	addu	t1,t1,t2
bfc13be0:	1504023d 	bne	t0,a0,bfc144d8 <inst_error>
bfc13be4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:116
bfc13be8:	3c046050 	lui	a0,0x6050
bfc13bec:	3c086052 	lui	t0,0x6052
bfc13bf0:	00892021 	addu	a0,a0,t1
bfc13bf4:	012a4821 	addu	t1,t1,t2
bfc13bf8:	15040237 	bne	t0,a0,bfc144d8 <inst_error>
bfc13bfc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:117
bfc13c00:	3c046050 	lui	a0,0x6050
bfc13c04:	3c086053 	lui	t0,0x6053
bfc13c08:	00892021 	addu	a0,a0,t1
bfc13c0c:	012a4821 	addu	t1,t1,t2
bfc13c10:	15040231 	bne	t0,a0,bfc144d8 <inst_error>
bfc13c14:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:118
bfc13c18:	3c046050 	lui	a0,0x6050
bfc13c1c:	3c086054 	lui	t0,0x6054
bfc13c20:	00892021 	addu	a0,a0,t1
bfc13c24:	012a4821 	addu	t1,t1,t2
bfc13c28:	1504022b 	bne	t0,a0,bfc144d8 <inst_error>
bfc13c2c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:119
bfc13c30:	3c046050 	lui	a0,0x6050
bfc13c34:	3c086055 	lui	t0,0x6055
bfc13c38:	00892021 	addu	a0,a0,t1
bfc13c3c:	012a4821 	addu	t1,t1,t2
bfc13c40:	15040225 	bne	t0,a0,bfc144d8 <inst_error>
bfc13c44:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:120
bfc13c48:	3c046050 	lui	a0,0x6050
bfc13c4c:	3c086056 	lui	t0,0x6056
bfc13c50:	00892021 	addu	a0,a0,t1
bfc13c54:	012a4821 	addu	t1,t1,t2
bfc13c58:	1504021f 	bne	t0,a0,bfc144d8 <inst_error>
bfc13c5c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:121
bfc13c60:	3c046050 	lui	a0,0x6050
bfc13c64:	3c086057 	lui	t0,0x6057
bfc13c68:	00892021 	addu	a0,a0,t1
bfc13c6c:	012a4821 	addu	t1,t1,t2
bfc13c70:	15040219 	bne	t0,a0,bfc144d8 <inst_error>
bfc13c74:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:122
bfc13c78:	3c046050 	lui	a0,0x6050
bfc13c7c:	3c086058 	lui	t0,0x6058
bfc13c80:	00892021 	addu	a0,a0,t1
bfc13c84:	012a4821 	addu	t1,t1,t2
bfc13c88:	15040213 	bne	t0,a0,bfc144d8 <inst_error>
bfc13c8c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:123
bfc13c90:	3c046050 	lui	a0,0x6050
bfc13c94:	3c086059 	lui	t0,0x6059
bfc13c98:	00892021 	addu	a0,a0,t1
bfc13c9c:	012a4821 	addu	t1,t1,t2
bfc13ca0:	1504020d 	bne	t0,a0,bfc144d8 <inst_error>
bfc13ca4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:124
bfc13ca8:	3c046050 	lui	a0,0x6050
bfc13cac:	3c08605a 	lui	t0,0x605a
bfc13cb0:	00892021 	addu	a0,a0,t1
bfc13cb4:	012a4821 	addu	t1,t1,t2
bfc13cb8:	15040207 	bne	t0,a0,bfc144d8 <inst_error>
bfc13cbc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:125
bfc13cc0:	3c046050 	lui	a0,0x6050
bfc13cc4:	3c08605b 	lui	t0,0x605b
bfc13cc8:	00892021 	addu	a0,a0,t1
bfc13ccc:	012a4821 	addu	t1,t1,t2
bfc13cd0:	15040201 	bne	t0,a0,bfc144d8 <inst_error>
bfc13cd4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:126
bfc13cd8:	3c046050 	lui	a0,0x6050
bfc13cdc:	3c08605c 	lui	t0,0x605c
bfc13ce0:	00892021 	addu	a0,a0,t1
bfc13ce4:	012a4821 	addu	t1,t1,t2
bfc13ce8:	150401fb 	bne	t0,a0,bfc144d8 <inst_error>
bfc13cec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:127
bfc13cf0:	3c046050 	lui	a0,0x6050
bfc13cf4:	3c08605d 	lui	t0,0x605d
bfc13cf8:	00892021 	addu	a0,a0,t1
bfc13cfc:	012a4821 	addu	t1,t1,t2
bfc13d00:	150401f5 	bne	t0,a0,bfc144d8 <inst_error>
bfc13d04:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:128
bfc13d08:	3c046050 	lui	a0,0x6050
bfc13d0c:	3c08605e 	lui	t0,0x605e
bfc13d10:	00892021 	addu	a0,a0,t1
bfc13d14:	012a4821 	addu	t1,t1,t2
bfc13d18:	150401ef 	bne	t0,a0,bfc144d8 <inst_error>
bfc13d1c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:129
bfc13d20:	3c046050 	lui	a0,0x6050
bfc13d24:	3c08605f 	lui	t0,0x605f
bfc13d28:	00892021 	addu	a0,a0,t1
bfc13d2c:	012a4821 	addu	t1,t1,t2
bfc13d30:	150401e9 	bne	t0,a0,bfc144d8 <inst_error>
bfc13d34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:130
bfc13d38:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:131
bfc13d3c:	3c048060 	lui	a0,0x8060
bfc13d40:	3c088060 	lui	t0,0x8060
bfc13d44:	00892021 	addu	a0,a0,t1
bfc13d48:	012a4821 	addu	t1,t1,t2
bfc13d4c:	150401e2 	bne	t0,a0,bfc144d8 <inst_error>
bfc13d50:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:132
bfc13d54:	3c048060 	lui	a0,0x8060
bfc13d58:	3c088061 	lui	t0,0x8061
bfc13d5c:	00892021 	addu	a0,a0,t1
bfc13d60:	012a4821 	addu	t1,t1,t2
bfc13d64:	150401dc 	bne	t0,a0,bfc144d8 <inst_error>
bfc13d68:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:133
bfc13d6c:	3c048060 	lui	a0,0x8060
bfc13d70:	3c088062 	lui	t0,0x8062
bfc13d74:	00892021 	addu	a0,a0,t1
bfc13d78:	012a4821 	addu	t1,t1,t2
bfc13d7c:	150401d6 	bne	t0,a0,bfc144d8 <inst_error>
bfc13d80:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:134
bfc13d84:	3c048060 	lui	a0,0x8060
bfc13d88:	3c088063 	lui	t0,0x8063
bfc13d8c:	00892021 	addu	a0,a0,t1
bfc13d90:	012a4821 	addu	t1,t1,t2
bfc13d94:	150401d0 	bne	t0,a0,bfc144d8 <inst_error>
bfc13d98:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:135
bfc13d9c:	3c048060 	lui	a0,0x8060
bfc13da0:	3c088064 	lui	t0,0x8064
bfc13da4:	00892021 	addu	a0,a0,t1
bfc13da8:	012a4821 	addu	t1,t1,t2
bfc13dac:	150401ca 	bne	t0,a0,bfc144d8 <inst_error>
bfc13db0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:136
bfc13db4:	3c048060 	lui	a0,0x8060
bfc13db8:	3c088065 	lui	t0,0x8065
bfc13dbc:	00892021 	addu	a0,a0,t1
bfc13dc0:	012a4821 	addu	t1,t1,t2
bfc13dc4:	150401c4 	bne	t0,a0,bfc144d8 <inst_error>
bfc13dc8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:137
bfc13dcc:	3c048060 	lui	a0,0x8060
bfc13dd0:	3c088066 	lui	t0,0x8066
bfc13dd4:	00892021 	addu	a0,a0,t1
bfc13dd8:	012a4821 	addu	t1,t1,t2
bfc13ddc:	150401be 	bne	t0,a0,bfc144d8 <inst_error>
bfc13de0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:138
bfc13de4:	3c048060 	lui	a0,0x8060
bfc13de8:	3c088067 	lui	t0,0x8067
bfc13dec:	00892021 	addu	a0,a0,t1
bfc13df0:	012a4821 	addu	t1,t1,t2
bfc13df4:	150401b8 	bne	t0,a0,bfc144d8 <inst_error>
bfc13df8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:139
bfc13dfc:	3c048060 	lui	a0,0x8060
bfc13e00:	3c088068 	lui	t0,0x8068
bfc13e04:	00892021 	addu	a0,a0,t1
bfc13e08:	012a4821 	addu	t1,t1,t2
bfc13e0c:	150401b2 	bne	t0,a0,bfc144d8 <inst_error>
bfc13e10:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:140
bfc13e14:	3c048060 	lui	a0,0x8060
bfc13e18:	3c088069 	lui	t0,0x8069
bfc13e1c:	00892021 	addu	a0,a0,t1
bfc13e20:	012a4821 	addu	t1,t1,t2
bfc13e24:	150401ac 	bne	t0,a0,bfc144d8 <inst_error>
bfc13e28:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:141
bfc13e2c:	3c048060 	lui	a0,0x8060
bfc13e30:	3c08806a 	lui	t0,0x806a
bfc13e34:	00892021 	addu	a0,a0,t1
bfc13e38:	012a4821 	addu	t1,t1,t2
bfc13e3c:	150401a6 	bne	t0,a0,bfc144d8 <inst_error>
bfc13e40:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:142
bfc13e44:	3c048060 	lui	a0,0x8060
bfc13e48:	3c08806b 	lui	t0,0x806b
bfc13e4c:	00892021 	addu	a0,a0,t1
bfc13e50:	012a4821 	addu	t1,t1,t2
bfc13e54:	150401a0 	bne	t0,a0,bfc144d8 <inst_error>
bfc13e58:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:143
bfc13e5c:	3c048060 	lui	a0,0x8060
bfc13e60:	3c08806c 	lui	t0,0x806c
bfc13e64:	00892021 	addu	a0,a0,t1
bfc13e68:	012a4821 	addu	t1,t1,t2
bfc13e6c:	1504019a 	bne	t0,a0,bfc144d8 <inst_error>
bfc13e70:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:144
bfc13e74:	3c048060 	lui	a0,0x8060
bfc13e78:	3c08806d 	lui	t0,0x806d
bfc13e7c:	00892021 	addu	a0,a0,t1
bfc13e80:	012a4821 	addu	t1,t1,t2
bfc13e84:	15040194 	bne	t0,a0,bfc144d8 <inst_error>
bfc13e88:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:145
bfc13e8c:	3c048060 	lui	a0,0x8060
bfc13e90:	3c08806e 	lui	t0,0x806e
bfc13e94:	00892021 	addu	a0,a0,t1
bfc13e98:	012a4821 	addu	t1,t1,t2
bfc13e9c:	1504018e 	bne	t0,a0,bfc144d8 <inst_error>
bfc13ea0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:146
bfc13ea4:	3c048060 	lui	a0,0x8060
bfc13ea8:	3c08806f 	lui	t0,0x806f
bfc13eac:	00892021 	addu	a0,a0,t1
bfc13eb0:	012a4821 	addu	t1,t1,t2
bfc13eb4:	15040188 	bne	t0,a0,bfc144d8 <inst_error>
bfc13eb8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:147
bfc13ebc:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:148
bfc13ec0:	3c04a070 	lui	a0,0xa070
bfc13ec4:	3c08a070 	lui	t0,0xa070
bfc13ec8:	00892021 	addu	a0,a0,t1
bfc13ecc:	012a4821 	addu	t1,t1,t2
bfc13ed0:	15040181 	bne	t0,a0,bfc144d8 <inst_error>
bfc13ed4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:149
bfc13ed8:	3c04a070 	lui	a0,0xa070
bfc13edc:	3c08a071 	lui	t0,0xa071
bfc13ee0:	00892021 	addu	a0,a0,t1
bfc13ee4:	012a4821 	addu	t1,t1,t2
bfc13ee8:	1504017b 	bne	t0,a0,bfc144d8 <inst_error>
bfc13eec:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:150
bfc13ef0:	3c04a070 	lui	a0,0xa070
bfc13ef4:	3c08a072 	lui	t0,0xa072
bfc13ef8:	00892021 	addu	a0,a0,t1
bfc13efc:	012a4821 	addu	t1,t1,t2
bfc13f00:	15040175 	bne	t0,a0,bfc144d8 <inst_error>
bfc13f04:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:151
bfc13f08:	3c04a070 	lui	a0,0xa070
bfc13f0c:	3c08a073 	lui	t0,0xa073
bfc13f10:	00892021 	addu	a0,a0,t1
bfc13f14:	012a4821 	addu	t1,t1,t2
bfc13f18:	1504016f 	bne	t0,a0,bfc144d8 <inst_error>
bfc13f1c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:152
bfc13f20:	3c04a070 	lui	a0,0xa070
bfc13f24:	3c08a074 	lui	t0,0xa074
bfc13f28:	00892021 	addu	a0,a0,t1
bfc13f2c:	012a4821 	addu	t1,t1,t2
bfc13f30:	15040169 	bne	t0,a0,bfc144d8 <inst_error>
bfc13f34:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:153
bfc13f38:	3c04a070 	lui	a0,0xa070
bfc13f3c:	3c08a075 	lui	t0,0xa075
bfc13f40:	00892021 	addu	a0,a0,t1
bfc13f44:	012a4821 	addu	t1,t1,t2
bfc13f48:	15040163 	bne	t0,a0,bfc144d8 <inst_error>
bfc13f4c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:154
bfc13f50:	3c04a070 	lui	a0,0xa070
bfc13f54:	3c08a076 	lui	t0,0xa076
bfc13f58:	00892021 	addu	a0,a0,t1
bfc13f5c:	012a4821 	addu	t1,t1,t2
bfc13f60:	1504015d 	bne	t0,a0,bfc144d8 <inst_error>
bfc13f64:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:155
bfc13f68:	3c04a070 	lui	a0,0xa070
bfc13f6c:	3c08a077 	lui	t0,0xa077
bfc13f70:	00892021 	addu	a0,a0,t1
bfc13f74:	012a4821 	addu	t1,t1,t2
bfc13f78:	15040157 	bne	t0,a0,bfc144d8 <inst_error>
bfc13f7c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:156
bfc13f80:	3c04a070 	lui	a0,0xa070
bfc13f84:	3c08a078 	lui	t0,0xa078
bfc13f88:	00892021 	addu	a0,a0,t1
bfc13f8c:	012a4821 	addu	t1,t1,t2
bfc13f90:	15040151 	bne	t0,a0,bfc144d8 <inst_error>
bfc13f94:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:157
bfc13f98:	3c04a070 	lui	a0,0xa070
bfc13f9c:	3c08a079 	lui	t0,0xa079
bfc13fa0:	00892021 	addu	a0,a0,t1
bfc13fa4:	012a4821 	addu	t1,t1,t2
bfc13fa8:	1504014b 	bne	t0,a0,bfc144d8 <inst_error>
bfc13fac:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:158
bfc13fb0:	3c04a070 	lui	a0,0xa070
bfc13fb4:	3c08a07a 	lui	t0,0xa07a
bfc13fb8:	00892021 	addu	a0,a0,t1
bfc13fbc:	012a4821 	addu	t1,t1,t2
bfc13fc0:	15040145 	bne	t0,a0,bfc144d8 <inst_error>
bfc13fc4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:159
bfc13fc8:	3c04a070 	lui	a0,0xa070
bfc13fcc:	3c08a07b 	lui	t0,0xa07b
bfc13fd0:	00892021 	addu	a0,a0,t1
bfc13fd4:	012a4821 	addu	t1,t1,t2
bfc13fd8:	1504013f 	bne	t0,a0,bfc144d8 <inst_error>
bfc13fdc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:160
bfc13fe0:	3c04a070 	lui	a0,0xa070
bfc13fe4:	3c08a07c 	lui	t0,0xa07c
bfc13fe8:	00892021 	addu	a0,a0,t1
bfc13fec:	012a4821 	addu	t1,t1,t2
bfc13ff0:	15040139 	bne	t0,a0,bfc144d8 <inst_error>
bfc13ff4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:161
bfc13ff8:	3c04a070 	lui	a0,0xa070
bfc13ffc:	3c08a07d 	lui	t0,0xa07d
bfc14000:	00892021 	addu	a0,a0,t1
bfc14004:	012a4821 	addu	t1,t1,t2
bfc14008:	15040133 	bne	t0,a0,bfc144d8 <inst_error>
bfc1400c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:162
bfc14010:	3c04a070 	lui	a0,0xa070
bfc14014:	3c08a07e 	lui	t0,0xa07e
bfc14018:	00892021 	addu	a0,a0,t1
bfc1401c:	012a4821 	addu	t1,t1,t2
bfc14020:	1504012d 	bne	t0,a0,bfc144d8 <inst_error>
bfc14024:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:163
bfc14028:	3c04a070 	lui	a0,0xa070
bfc1402c:	3c08a07f 	lui	t0,0xa07f
bfc14030:	00892021 	addu	a0,a0,t1
bfc14034:	012a4821 	addu	t1,t1,t2
bfc14038:	15040127 	bne	t0,a0,bfc144d8 <inst_error>
bfc1403c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:164
bfc14040:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:165
bfc14044:	3c04c080 	lui	a0,0xc080
bfc14048:	3c08c080 	lui	t0,0xc080
bfc1404c:	00892021 	addu	a0,a0,t1
bfc14050:	012a4821 	addu	t1,t1,t2
bfc14054:	15040120 	bne	t0,a0,bfc144d8 <inst_error>
bfc14058:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:166
bfc1405c:	3c04c080 	lui	a0,0xc080
bfc14060:	3c08c081 	lui	t0,0xc081
bfc14064:	00892021 	addu	a0,a0,t1
bfc14068:	012a4821 	addu	t1,t1,t2
bfc1406c:	1504011a 	bne	t0,a0,bfc144d8 <inst_error>
bfc14070:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:167
bfc14074:	3c04c080 	lui	a0,0xc080
bfc14078:	3c08c082 	lui	t0,0xc082
bfc1407c:	00892021 	addu	a0,a0,t1
bfc14080:	012a4821 	addu	t1,t1,t2
bfc14084:	15040114 	bne	t0,a0,bfc144d8 <inst_error>
bfc14088:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:168
bfc1408c:	3c04c080 	lui	a0,0xc080
bfc14090:	3c08c083 	lui	t0,0xc083
bfc14094:	00892021 	addu	a0,a0,t1
bfc14098:	012a4821 	addu	t1,t1,t2
bfc1409c:	1504010e 	bne	t0,a0,bfc144d8 <inst_error>
bfc140a0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:169
bfc140a4:	3c04c080 	lui	a0,0xc080
bfc140a8:	3c08c084 	lui	t0,0xc084
bfc140ac:	00892021 	addu	a0,a0,t1
bfc140b0:	012a4821 	addu	t1,t1,t2
bfc140b4:	15040108 	bne	t0,a0,bfc144d8 <inst_error>
bfc140b8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:170
bfc140bc:	3c04c080 	lui	a0,0xc080
bfc140c0:	3c08c085 	lui	t0,0xc085
bfc140c4:	00892021 	addu	a0,a0,t1
bfc140c8:	012a4821 	addu	t1,t1,t2
bfc140cc:	15040102 	bne	t0,a0,bfc144d8 <inst_error>
bfc140d0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:171
bfc140d4:	3c04c080 	lui	a0,0xc080
bfc140d8:	3c08c086 	lui	t0,0xc086
bfc140dc:	00892021 	addu	a0,a0,t1
bfc140e0:	012a4821 	addu	t1,t1,t2
bfc140e4:	150400fc 	bne	t0,a0,bfc144d8 <inst_error>
bfc140e8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:172
bfc140ec:	3c04c080 	lui	a0,0xc080
bfc140f0:	3c08c087 	lui	t0,0xc087
bfc140f4:	00892021 	addu	a0,a0,t1
bfc140f8:	012a4821 	addu	t1,t1,t2
bfc140fc:	150400f6 	bne	t0,a0,bfc144d8 <inst_error>
bfc14100:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:173
bfc14104:	3c04c080 	lui	a0,0xc080
bfc14108:	3c08c088 	lui	t0,0xc088
bfc1410c:	00892021 	addu	a0,a0,t1
bfc14110:	012a4821 	addu	t1,t1,t2
bfc14114:	150400f0 	bne	t0,a0,bfc144d8 <inst_error>
bfc14118:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:174
bfc1411c:	3c04c080 	lui	a0,0xc080
bfc14120:	3c08c089 	lui	t0,0xc089
bfc14124:	00892021 	addu	a0,a0,t1
bfc14128:	012a4821 	addu	t1,t1,t2
bfc1412c:	150400ea 	bne	t0,a0,bfc144d8 <inst_error>
bfc14130:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:175
bfc14134:	3c04c080 	lui	a0,0xc080
bfc14138:	3c08c08a 	lui	t0,0xc08a
bfc1413c:	00892021 	addu	a0,a0,t1
bfc14140:	012a4821 	addu	t1,t1,t2
bfc14144:	150400e4 	bne	t0,a0,bfc144d8 <inst_error>
bfc14148:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:176
bfc1414c:	3c04c080 	lui	a0,0xc080
bfc14150:	3c08c08b 	lui	t0,0xc08b
bfc14154:	00892021 	addu	a0,a0,t1
bfc14158:	012a4821 	addu	t1,t1,t2
bfc1415c:	150400de 	bne	t0,a0,bfc144d8 <inst_error>
bfc14160:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:177
bfc14164:	3c04c080 	lui	a0,0xc080
bfc14168:	3c08c08c 	lui	t0,0xc08c
bfc1416c:	00892021 	addu	a0,a0,t1
bfc14170:	012a4821 	addu	t1,t1,t2
bfc14174:	150400d8 	bne	t0,a0,bfc144d8 <inst_error>
bfc14178:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:178
bfc1417c:	3c04c080 	lui	a0,0xc080
bfc14180:	3c08c08d 	lui	t0,0xc08d
bfc14184:	00892021 	addu	a0,a0,t1
bfc14188:	012a4821 	addu	t1,t1,t2
bfc1418c:	150400d2 	bne	t0,a0,bfc144d8 <inst_error>
bfc14190:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:179
bfc14194:	3c04c080 	lui	a0,0xc080
bfc14198:	3c08c08e 	lui	t0,0xc08e
bfc1419c:	00892021 	addu	a0,a0,t1
bfc141a0:	012a4821 	addu	t1,t1,t2
bfc141a4:	150400cc 	bne	t0,a0,bfc144d8 <inst_error>
bfc141a8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:180
bfc141ac:	3c04c080 	lui	a0,0xc080
bfc141b0:	3c08c08f 	lui	t0,0xc08f
bfc141b4:	00892021 	addu	a0,a0,t1
bfc141b8:	012a4821 	addu	t1,t1,t2
bfc141bc:	150400c6 	bne	t0,a0,bfc144d8 <inst_error>
bfc141c0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:181
bfc141c4:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:182
bfc141c8:	3c04e090 	lui	a0,0xe090
bfc141cc:	3c08e090 	lui	t0,0xe090
bfc141d0:	00892021 	addu	a0,a0,t1
bfc141d4:	012a4821 	addu	t1,t1,t2
bfc141d8:	150400bf 	bne	t0,a0,bfc144d8 <inst_error>
bfc141dc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:183
bfc141e0:	3c04e090 	lui	a0,0xe090
bfc141e4:	3c08e091 	lui	t0,0xe091
bfc141e8:	00892021 	addu	a0,a0,t1
bfc141ec:	012a4821 	addu	t1,t1,t2
bfc141f0:	150400b9 	bne	t0,a0,bfc144d8 <inst_error>
bfc141f4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:184
bfc141f8:	3c04e090 	lui	a0,0xe090
bfc141fc:	3c08e092 	lui	t0,0xe092
bfc14200:	00892021 	addu	a0,a0,t1
bfc14204:	012a4821 	addu	t1,t1,t2
bfc14208:	150400b3 	bne	t0,a0,bfc144d8 <inst_error>
bfc1420c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:185
bfc14210:	3c04e090 	lui	a0,0xe090
bfc14214:	3c08e093 	lui	t0,0xe093
bfc14218:	00892021 	addu	a0,a0,t1
bfc1421c:	012a4821 	addu	t1,t1,t2
bfc14220:	150400ad 	bne	t0,a0,bfc144d8 <inst_error>
bfc14224:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:186
bfc14228:	3c04e090 	lui	a0,0xe090
bfc1422c:	3c08e094 	lui	t0,0xe094
bfc14230:	00892021 	addu	a0,a0,t1
bfc14234:	012a4821 	addu	t1,t1,t2
bfc14238:	150400a7 	bne	t0,a0,bfc144d8 <inst_error>
bfc1423c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:187
bfc14240:	3c04e090 	lui	a0,0xe090
bfc14244:	3c08e095 	lui	t0,0xe095
bfc14248:	00892021 	addu	a0,a0,t1
bfc1424c:	012a4821 	addu	t1,t1,t2
bfc14250:	150400a1 	bne	t0,a0,bfc144d8 <inst_error>
bfc14254:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:188
bfc14258:	3c04e090 	lui	a0,0xe090
bfc1425c:	3c08e096 	lui	t0,0xe096
bfc14260:	00892021 	addu	a0,a0,t1
bfc14264:	012a4821 	addu	t1,t1,t2
bfc14268:	1504009b 	bne	t0,a0,bfc144d8 <inst_error>
bfc1426c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:189
bfc14270:	3c04e090 	lui	a0,0xe090
bfc14274:	3c08e097 	lui	t0,0xe097
bfc14278:	00892021 	addu	a0,a0,t1
bfc1427c:	012a4821 	addu	t1,t1,t2
bfc14280:	15040095 	bne	t0,a0,bfc144d8 <inst_error>
bfc14284:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:190
bfc14288:	3c04e090 	lui	a0,0xe090
bfc1428c:	3c08e098 	lui	t0,0xe098
bfc14290:	00892021 	addu	a0,a0,t1
bfc14294:	012a4821 	addu	t1,t1,t2
bfc14298:	1504008f 	bne	t0,a0,bfc144d8 <inst_error>
bfc1429c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:191
bfc142a0:	3c04e090 	lui	a0,0xe090
bfc142a4:	3c08e099 	lui	t0,0xe099
bfc142a8:	00892021 	addu	a0,a0,t1
bfc142ac:	012a4821 	addu	t1,t1,t2
bfc142b0:	15040089 	bne	t0,a0,bfc144d8 <inst_error>
bfc142b4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:192
bfc142b8:	3c04e090 	lui	a0,0xe090
bfc142bc:	3c08e09a 	lui	t0,0xe09a
bfc142c0:	00892021 	addu	a0,a0,t1
bfc142c4:	012a4821 	addu	t1,t1,t2
bfc142c8:	15040083 	bne	t0,a0,bfc144d8 <inst_error>
bfc142cc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:193
bfc142d0:	3c04e090 	lui	a0,0xe090
bfc142d4:	3c08e09b 	lui	t0,0xe09b
bfc142d8:	00892021 	addu	a0,a0,t1
bfc142dc:	012a4821 	addu	t1,t1,t2
bfc142e0:	1504007d 	bne	t0,a0,bfc144d8 <inst_error>
bfc142e4:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:194
bfc142e8:	3c04e090 	lui	a0,0xe090
bfc142ec:	3c08e09c 	lui	t0,0xe09c
bfc142f0:	00892021 	addu	a0,a0,t1
bfc142f4:	012a4821 	addu	t1,t1,t2
bfc142f8:	15040077 	bne	t0,a0,bfc144d8 <inst_error>
bfc142fc:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:195
bfc14300:	3c04e090 	lui	a0,0xe090
bfc14304:	3c08e09d 	lui	t0,0xe09d
bfc14308:	00892021 	addu	a0,a0,t1
bfc1430c:	012a4821 	addu	t1,t1,t2
bfc14310:	15040071 	bne	t0,a0,bfc144d8 <inst_error>
bfc14314:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:196
bfc14318:	3c04e090 	lui	a0,0xe090
bfc1431c:	3c08e09e 	lui	t0,0xe09e
bfc14320:	00892021 	addu	a0,a0,t1
bfc14324:	012a4821 	addu	t1,t1,t2
bfc14328:	1504006b 	bne	t0,a0,bfc144d8 <inst_error>
bfc1432c:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:197
bfc14330:	3c04e090 	lui	a0,0xe090
bfc14334:	3c08e09f 	lui	t0,0xe09f
bfc14338:	00892021 	addu	a0,a0,t1
bfc1433c:	012a4821 	addu	t1,t1,t2
bfc14340:	15040065 	bne	t0,a0,bfc144d8 <inst_error>
bfc14344:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:198
bfc14348:	24090000 	li	t1,0
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:199
bfc1434c:	3c04f0a0 	lui	a0,0xf0a0
bfc14350:	3c08f0a0 	lui	t0,0xf0a0
bfc14354:	00892021 	addu	a0,a0,t1
bfc14358:	012a4821 	addu	t1,t1,t2
bfc1435c:	1504005e 	bne	t0,a0,bfc144d8 <inst_error>
bfc14360:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:200
bfc14364:	3c04f0a0 	lui	a0,0xf0a0
bfc14368:	3c08f0a1 	lui	t0,0xf0a1
bfc1436c:	00892021 	addu	a0,a0,t1
bfc14370:	012a4821 	addu	t1,t1,t2
bfc14374:	15040058 	bne	t0,a0,bfc144d8 <inst_error>
bfc14378:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:201
bfc1437c:	3c04f0a0 	lui	a0,0xf0a0
bfc14380:	3c08f0a2 	lui	t0,0xf0a2
bfc14384:	00892021 	addu	a0,a0,t1
bfc14388:	012a4821 	addu	t1,t1,t2
bfc1438c:	15040052 	bne	t0,a0,bfc144d8 <inst_error>
bfc14390:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:202
bfc14394:	3c04f0a0 	lui	a0,0xf0a0
bfc14398:	3c08f0a3 	lui	t0,0xf0a3
bfc1439c:	00892021 	addu	a0,a0,t1
bfc143a0:	012a4821 	addu	t1,t1,t2
bfc143a4:	1504004c 	bne	t0,a0,bfc144d8 <inst_error>
bfc143a8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:203
bfc143ac:	3c04f0a0 	lui	a0,0xf0a0
bfc143b0:	3c08f0a4 	lui	t0,0xf0a4
bfc143b4:	00892021 	addu	a0,a0,t1
bfc143b8:	012a4821 	addu	t1,t1,t2
bfc143bc:	15040046 	bne	t0,a0,bfc144d8 <inst_error>
bfc143c0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:204
bfc143c4:	3c04f0a0 	lui	a0,0xf0a0
bfc143c8:	3c08f0a5 	lui	t0,0xf0a5
bfc143cc:	00892021 	addu	a0,a0,t1
bfc143d0:	012a4821 	addu	t1,t1,t2
bfc143d4:	15040040 	bne	t0,a0,bfc144d8 <inst_error>
bfc143d8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:205
bfc143dc:	3c04f0a0 	lui	a0,0xf0a0
bfc143e0:	3c08f0a6 	lui	t0,0xf0a6
bfc143e4:	00892021 	addu	a0,a0,t1
bfc143e8:	012a4821 	addu	t1,t1,t2
bfc143ec:	1504003a 	bne	t0,a0,bfc144d8 <inst_error>
bfc143f0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:206
bfc143f4:	3c04f0a0 	lui	a0,0xf0a0
bfc143f8:	3c08f0a7 	lui	t0,0xf0a7
bfc143fc:	00892021 	addu	a0,a0,t1
bfc14400:	012a4821 	addu	t1,t1,t2
bfc14404:	15040034 	bne	t0,a0,bfc144d8 <inst_error>
bfc14408:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:207
bfc1440c:	3c04f0a0 	lui	a0,0xf0a0
bfc14410:	3c08f0a8 	lui	t0,0xf0a8
bfc14414:	00892021 	addu	a0,a0,t1
bfc14418:	012a4821 	addu	t1,t1,t2
bfc1441c:	1504002e 	bne	t0,a0,bfc144d8 <inst_error>
bfc14420:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:208
bfc14424:	3c04f0a0 	lui	a0,0xf0a0
bfc14428:	3c08f0a9 	lui	t0,0xf0a9
bfc1442c:	00892021 	addu	a0,a0,t1
bfc14430:	012a4821 	addu	t1,t1,t2
bfc14434:	15040028 	bne	t0,a0,bfc144d8 <inst_error>
bfc14438:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:209
bfc1443c:	3c04f0a0 	lui	a0,0xf0a0
bfc14440:	3c08f0aa 	lui	t0,0xf0aa
bfc14444:	00892021 	addu	a0,a0,t1
bfc14448:	012a4821 	addu	t1,t1,t2
bfc1444c:	15040022 	bne	t0,a0,bfc144d8 <inst_error>
bfc14450:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:210
bfc14454:	3c04f0a0 	lui	a0,0xf0a0
bfc14458:	3c08f0ab 	lui	t0,0xf0ab
bfc1445c:	00892021 	addu	a0,a0,t1
bfc14460:	012a4821 	addu	t1,t1,t2
bfc14464:	1504001c 	bne	t0,a0,bfc144d8 <inst_error>
bfc14468:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:211
bfc1446c:	3c04f0a0 	lui	a0,0xf0a0
bfc14470:	3c08f0ac 	lui	t0,0xf0ac
bfc14474:	00892021 	addu	a0,a0,t1
bfc14478:	012a4821 	addu	t1,t1,t2
bfc1447c:	15040016 	bne	t0,a0,bfc144d8 <inst_error>
bfc14480:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:212
bfc14484:	3c04f0a0 	lui	a0,0xf0a0
bfc14488:	3c08f0ad 	lui	t0,0xf0ad
bfc1448c:	00892021 	addu	a0,a0,t1
bfc14490:	012a4821 	addu	t1,t1,t2
bfc14494:	15040010 	bne	t0,a0,bfc144d8 <inst_error>
bfc14498:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:213
bfc1449c:	3c04f0a0 	lui	a0,0xf0a0
bfc144a0:	3c08f0ae 	lui	t0,0xf0ae
bfc144a4:	00892021 	addu	a0,a0,t1
bfc144a8:	012a4821 	addu	t1,t1,t2
bfc144ac:	1504000a 	bne	t0,a0,bfc144d8 <inst_error>
bfc144b0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:214
bfc144b4:	3c04f0a0 	lui	a0,0xf0a0
bfc144b8:	3c08f0af 	lui	t0,0xf0af
bfc144bc:	00892021 	addu	a0,a0,t1
bfc144c0:	012a4821 	addu	t1,t1,t2
bfc144c4:	15040004 	bne	t0,a0,bfc144d8 <inst_error>
bfc144c8:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:216
bfc144cc:	16400002 	bnez	s2,bfc144d8 <inst_error>
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:217
bfc144d0:	00000000 	nop
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:219
bfc144d4:	26730001 	addiu	s3,s3,1

bfc144d8 <inst_error>:
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:222
bfc144d8:	00104e00 	sll	t1,s0,0x18
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:223
bfc144dc:	01334025 	or	t0,t1,s3
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:224
bfc144e0:	ae280000 	sw	t0,0(s1)
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:225
bfc144e4:	03e00008 	jr	ra
/home/yang/D/nscscc2021_group_v0.01/my_file/my_func/inst/n1_lui.S:226
bfc144e8:	00000000 	nop
bfc144ec:	00000000 	nop
bfc144f0:	9e3f7f70 	0x9e3f7f70
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
  14:	0000087c 	0x87c
	...
  20:	0000001c 	0x1c
  24:	00650002 	0x650002
  28:	00040000 	sll	zero,a0,0x0
  2c:	00000000 	nop
  30:	bfc00880 	cache	0x0,2176(s8)
  34:	000003d0 	0x3d0
	...
  40:	0000001c 	0x1c
  44:	00d10002 	0xd10002
  48:	00040000 	sll	zero,a0,0x0
  4c:	00000000 	nop
  50:	bfc00c50 	cache	0x0,3152(s8)
  54:	000015ec 	0x15ec
	...
  60:	0000001c 	0x1c
  64:	013f0002 	0x13f0002
  68:	00040000 	sll	zero,a0,0x0
  6c:	00000000 	nop
  70:	bfc02240 	cache	0x0,8768(s8)
  74:	00000300 	sll	zero,zero,0xc
	...
  80:	0000001c 	0x1c
  84:	01ab0002 	0x1ab0002
  88:	00040000 	sll	zero,a0,0x0
  8c:	00000000 	nop
  90:	bfc02540 	cache	0x0,9536(s8)
  94:	00009ab8 	0x9ab8
	...
  a0:	0000001c 	0x1c
  a4:	02170002 	0x2170002
  a8:	00040000 	sll	zero,a0,0x0
  ac:	00000000 	nop
  b0:	bfc0c000 	cache	0x0,-16384(s8)
  b4:	000031c4 	0x31c4
	...
  c0:	0000001c 	0x1c
  c4:	02840002 	0x2840002
  c8:	00040000 	sll	zero,a0,0x0
  cc:	00000000 	nop
  d0:	bfc0f1d0 	cache	0x0,-3632(s8)
  d4:	00002058 	0x2058
	...
  e0:	0000001c 	0x1c
  e4:	02f20002 	0x2f20002
  e8:	00040000 	sll	zero,a0,0x0
  ec:	00000000 	nop
  f0:	bfc11230 	cache	0x1,4656(s8)
  f4:	00002058 	0x2058
	...
 100:	0000001c 	0x1c
 104:	035f0002 	0x35f0002
 108:	00040000 	sll	zero,a0,0x0
 10c:	00000000 	nop
 110:	bfc13290 	cache	0x1,12944(s8)
 114:	0000125c 	0x125c
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	bfc00880 	cache	0x0,2176(s8)
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	bfc00c50 	cache	0x0,3152(s8)
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	bfc02240 	cache	0x0,8768(s8)
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	bfc02540 	cache	0x0,9536(s8)
	...
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	bfc0c000 	cache	0x0,-16384(s8)
	...
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	bfc0f1d0 	cache	0x0,-3632(s8)
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	bfc11230 	cache	0x1,4656(s8)
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f
  e0:	bfc13290 	cache	0x1,12944(s8)
	...
  f8:	0000001d 	0x1d
  fc:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000177 	0x177
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
 124:	4b4b4b4d 	c2	0x14b4b4d
 128:	4b4b4b4b 	c2	0x14b4b4b
 12c:	4b4b4b4b 	c2	0x14b4b4b
 130:	4b4b4b4b 	c2	0x14b4b4b
 134:	4b4b4b4b 	c2	0x14b4b4b
 138:	4b4b4b4b 	c2	0x14b4b4b
 13c:	4b4b4b4b 	c2	0x14b4b4b
 140:	4b4b834c 	c2	0x14b834c
 144:	4c4b4b4b 	0x4c4b4b4b
 148:	4b4b4b4b 	c2	0x14b4b4b
 14c:	4c4b4b4b 	0x4c4b4b4b
 150:	4b4b4d4b 	c2	0x14b4d4b
 154:	8483834c 	lh	v1,-31924(a0)
 158:	4b4b4b4c 	c2	0x14b4b4c
 15c:	834b4c4b 	lb	t3,19531(k0)
 160:	4b4d4b83 	c2	0x14d4b83
 164:	4b4d834d 	c2	0x14d834d
 168:	4d4d4b4b 	0x4d4d4b4b
 16c:	4b4b4b4b 	c2	0x14b4b4b
 170:	4b4c4b4b 	c2	0x14c4b4b
 174:	04024b4b 	bltzl	zero,12ea4 <data_size+0x12e94>
 178:	90010100 	lbu	at,256(zero)
 17c:	02000000 	0x2000000
 180:	00002000 	sll	a0,zero,0x0
 184:	fb010100 	sdc2	$1,256(t8)
 188:	01000d0e 	0x1000d0e
 18c:	00010101 	0x10101
 190:	00010000 	sll	zero,at,0x0
 194:	6d000100 	0x6d000100
 198:	635f3179 	0x635f3179
 19c:	532e7a6c 	beql	t9,t6,1eb50 <data_size+0x1eb40>
 1a0:	00000000 	nop
 1a4:	02050000 	0x2050000
 1a8:	bfc00880 	cache	0x0,2176(s8)
 1ac:	4c4b4b18 	0x4c4b4b18
 1b0:	3d083d08 	0x3d083d08
 1b4:	3d083d08 	0x3d083d08
 1b8:	3d083d08 	0x3d083d08
 1bc:	3d083d08 	0x3d083d08
 1c0:	3d083d08 	0x3d083d08
 1c4:	3d083d08 	0x3d083d08
 1c8:	3d083d08 	0x3d083d08
 1cc:	3d083d08 	0x3d083d08
 1d0:	3d083d08 	0x3d083d08
 1d4:	3d083d08 	0x3d083d08
 1d8:	3d083d08 	0x3d083d08
 1dc:	75083d08 	jalx	420f420 <data_size+0x420f410>
 1e0:	75087508 	jalx	421d420 <data_size+0x421d410>
 1e4:	75087508 	jalx	421d420 <data_size+0x421d410>
 1e8:	75087508 	jalx	421d420 <data_size+0x421d410>
 1ec:	75087508 	jalx	421d420 <data_size+0x421d410>
 1f0:	75087508 	jalx	421d420 <data_size+0x421d410>
 1f4:	75087508 	jalx	421d420 <data_size+0x421d410>
 1f8:	75087508 	jalx	421d420 <data_size+0x421d410>
 1fc:	3e087608 	0x3e087608
 200:	4b154402 	c2	0x1154402
 204:	4b4b4d4c 	c2	0x14b4d4c
 208:	04024b4b 	bltzl	zero,12f38 <data_size+0x12f28>
 20c:	1b010100 	0x1b010100
 210:	02000001 	movf	zero,s0,$fcc0
 214:	00002200 	sll	a0,zero,0x8
 218:	fb010100 	sdc2	$1,256(t8)
 21c:	01000d0e 	0x1000d0e
 220:	00010101 	0x10101
 224:	00010000 	sll	zero,at,0x0
 228:	6d000100 	0x6d000100
 22c:	6d5f3579 	0x6d5f3579
 230:	75646461 	jalx	5919184 <data_size+0x5919174>
 234:	0000532e 	0x532e
 238:	00000000 	nop
 23c:	0c500205 	jal	1400814 <data_size+0x1400804>
 240:	4b18bfc0 	c2	0x118bfc0
 244:	4b4b4c4b 	c2	0x14b4c4b
 248:	4b4b4b4b 	c2	0x14b4b4b
 24c:	1354024b 	beq	k0,s4,b7c <data_size+0xb6c>
 250:	02135402 	0x2135402
 254:	54021354 	bnel	zero,v0,4fa8 <data_size+0x4f98>
 258:	13540213 	beq	k0,s4,aa8 <data_size+0xa98>
 25c:	02135402 	0x2135402
 260:	54021354 	bnel	zero,v0,4fb4 <data_size+0x4fa4>
 264:	13540213 	beq	k0,s4,ab4 <data_size+0xaa4>
 268:	02135402 	0x2135402
 26c:	54021354 	bnel	zero,v0,4fc0 <data_size+0x4fb0>
 270:	13540213 	beq	k0,s4,ac0 <data_size+0xab0>
 274:	02135402 	0x2135402
 278:	54021354 	bnel	zero,v0,4fcc <data_size+0x4fbc>
 27c:	13540213 	beq	k0,s4,acc <data_size+0xabc>
 280:	02135402 	0x2135402
 284:	54021354 	bnel	zero,v0,4fd8 <data_size+0x4fc8>
 288:	13540213 	beq	k0,s4,ad8 <data_size+0xac8>
 28c:	02135402 	0x2135402
 290:	54021354 	bnel	zero,v0,4fe4 <data_size+0x4fd4>
 294:	13540213 	beq	k0,s4,ae4 <data_size+0xad4>
 298:	02135402 	0x2135402
 29c:	54021354 	bnel	zero,v0,4ff0 <data_size+0x4fe0>
 2a0:	13540213 	beq	k0,s4,af0 <data_size+0xae0>
 2a4:	02135402 	0x2135402
 2a8:	54021354 	bnel	zero,v0,4ffc <data_size+0x4fec>
 2ac:	13540213 	beq	k0,s4,afc <data_size+0xaec>
 2b0:	02135402 	0x2135402
 2b4:	54021354 	bnel	zero,v0,5008 <data_size+0x4ff8>
 2b8:	13540213 	beq	k0,s4,b08 <data_size+0xaf8>
 2bc:	02135402 	0x2135402
 2c0:	54021354 	bnel	zero,v0,5014 <data_size+0x5004>
 2c4:	13540213 	beq	k0,s4,b14 <data_size+0xb04>
 2c8:	02135402 	0x2135402
 2cc:	54021354 	bnel	zero,v0,5020 <data_size+0x5010>
 2d0:	13540213 	beq	k0,s4,b20 <data_size+0xb10>
 2d4:	02135402 	0x2135402
 2d8:	54021354 	bnel	zero,v0,502c <data_size+0x501c>
 2dc:	13540213 	beq	k0,s4,b2c <data_size+0xb1c>
 2e0:	02155402 	0x2155402
 2e4:	40021340 	0x40021340
 2e8:	13400213 	beqz	k0,b38 <data_size+0xb28>
 2ec:	02134002 	0x2134002
 2f0:	40021340 	0x40021340
 2f4:	13400213 	beqz	k0,b44 <data_size+0xb34>
 2f8:	02134002 	0x2134002
 2fc:	40021340 	0x40021340
 300:	13400213 	beqz	k0,b50 <data_size+0xb40>
 304:	02134002 	0x2134002
 308:	40021340 	0x40021340
 30c:	13400213 	beqz	k0,b5c <data_size+0xb4c>
 310:	02134002 	0x2134002
 314:	40021340 	0x40021340
 318:	13400213 	beqz	k0,b68 <data_size+0xb58>
 31c:	02134002 	0x2134002
 320:	4c4b143c 	0x4c4b143c
 324:	4b4b4b4d 	c2	0x14b4b4d
 328:	0004024b 	0x4024b
 32c:	00840101 	0x840101
 330:	00020000 	sll	zero,v0,0x0
 334:	00000020 	add	zero,zero,zero
 338:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
 33c:	0101000d 	break	0x101
 340:	00000101 	0x101
 344:	00000100 	sll	zero,zero,0x4
 348:	796d0001 	0x796d0001
 34c:	6c635f32 	0x6c635f32
 350:	00532e6f 	0x532e6f
 354:	00000000 	nop
 358:	40020500 	0x40020500
 35c:	18bfc022 	0x18bfc022
 360:	084c4b4b 	j	1312d2c <data_size+0x1312d1c>
 364:	083d083d 	j	f420f4 <data_size+0xf420e4>
 368:	083d083d 	j	f420f4 <data_size+0xf420e4>
 36c:	083d083e 	j	f420f8 <data_size+0xf420e8>
 370:	083d083d 	j	f420f4 <data_size+0xf420e4>
 374:	083d083e 	j	f420f8 <data_size+0xf420e8>
 378:	083d083d 	j	f420f4 <data_size+0xf420e4>
 37c:	083d083e 	j	f420f8 <data_size+0xf420e8>
 380:	083d083d 	j	f420f4 <data_size+0xf420e4>
 384:	083d083e 	j	f420f8 <data_size+0xf420e8>
 388:	083d083d 	j	f420f4 <data_size+0xf420e4>
 38c:	083d083e 	j	f420f8 <data_size+0xf420e8>
 390:	083d083d 	j	f420f4 <data_size+0xf420e4>
 394:	083d083e 	j	f420f8 <data_size+0xf420e8>
 398:	083d083d 	j	f420f4 <data_size+0xf420e4>
 39c:	083d083e 	j	f420f8 <data_size+0xf420e8>
 3a0:	083d083d 	j	f420f4 <data_size+0xf420e4>
 3a4:	023e083e 	0x23e083e
 3a8:	4c4b152c 	0x4c4b152c
 3ac:	4b4b4b4d 	c2	0x14b4b4d
 3b0:	0004024b 	0x4024b
 3b4:	018a0101 	0x18a0101
 3b8:	00020000 	sll	zero,v0,0x0
 3bc:	00000020 	add	zero,zero,zero
 3c0:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
 3c4:	0101000d 	break	0x101
 3c8:	00000101 	0x101
 3cc:	00000100 	sll	zero,zero,0x4
 3d0:	796d0001 	0x796d0001
 3d4:	756d5f33 	jalx	5b57ccc <data_size+0x5b57cbc>
 3d8:	00532e6c 	0x532e6c
 3dc:	00000000 	nop
 3e0:	40020500 	0x40020500
 3e4:	18bfc025 	0x18bfc025
 3e8:	4b4c4b4b 	c2	0x14c4b4b
 3ec:	4b4b4b4b 	c2	0x14b4b4b
 3f0:	4c4b4b4b 	0x4c4b4b4b
 3f4:	1303e802 	beq	t8,v1,ffffa400 <_etext+0x403e5ef8>
 3f8:	1303e802 	beq	t8,v1,ffffa404 <_etext+0x403e5efc>
 3fc:	1303e802 	beq	t8,v1,ffffa408 <_etext+0x403e5f00>
 400:	1303e802 	beq	t8,v1,ffffa40c <_etext+0x403e5f04>
 404:	1303e802 	beq	t8,v1,ffffa410 <_etext+0x403e5f08>
 408:	1303e802 	beq	t8,v1,ffffa414 <_etext+0x403e5f0c>
 40c:	1303e802 	beq	t8,v1,ffffa418 <_etext+0x403e5f10>
 410:	1303e802 	beq	t8,v1,ffffa41c <_etext+0x403e5f14>
 414:	1303e802 	beq	t8,v1,ffffa420 <_etext+0x403e5f18>
 418:	1303e802 	beq	t8,v1,ffffa424 <_etext+0x403e5f1c>
 41c:	1303e802 	beq	t8,v1,ffffa428 <_etext+0x403e5f20>
 420:	1303e802 	beq	t8,v1,ffffa42c <_etext+0x403e5f24>
 424:	1303e802 	beq	t8,v1,ffffa430 <_etext+0x403e5f28>
 428:	1303e802 	beq	t8,v1,ffffa434 <_etext+0x403e5f2c>
 42c:	1303e802 	beq	t8,v1,ffffa438 <_etext+0x403e5f30>
 430:	1303e802 	beq	t8,v1,ffffa43c <_etext+0x403e5f34>
 434:	1303e802 	beq	t8,v1,ffffa440 <_etext+0x403e5f38>
 438:	1303e802 	beq	t8,v1,ffffa444 <_etext+0x403e5f3c>
 43c:	1303e802 	beq	t8,v1,ffffa448 <_etext+0x403e5f40>
 440:	1303e802 	beq	t8,v1,ffffa44c <_etext+0x403e5f44>
 444:	1303e802 	beq	t8,v1,ffffa450 <_etext+0x403e5f48>
 448:	1303e802 	beq	t8,v1,ffffa454 <_etext+0x403e5f4c>
 44c:	1303e802 	beq	t8,v1,ffffa458 <_etext+0x403e5f50>
 450:	1303e802 	beq	t8,v1,ffffa45c <_etext+0x403e5f54>
 454:	1303e802 	beq	t8,v1,ffffa460 <_etext+0x403e5f58>
 458:	1303e802 	beq	t8,v1,ffffa464 <_etext+0x403e5f5c>
 45c:	1303e802 	beq	t8,v1,ffffa468 <_etext+0x403e5f60>
 460:	1303e802 	beq	t8,v1,ffffa46c <_etext+0x403e5f64>
 464:	1303e802 	beq	t8,v1,ffffa470 <_etext+0x403e5f68>
 468:	1303e802 	beq	t8,v1,ffffa474 <_etext+0x403e5f6c>
 46c:	1303e802 	beq	t8,v1,ffffa478 <_etext+0x403e5f70>
 470:	1303e802 	beq	t8,v1,ffffa47c <_etext+0x403e5f74>
 474:	1303e802 	beq	t8,v1,ffffa480 <_etext+0x403e5f78>
 478:	1303e802 	beq	t8,v1,ffffa484 <_etext+0x403e5f7c>
 47c:	1303e802 	beq	t8,v1,ffffa488 <_etext+0x403e5f80>
 480:	1303e802 	beq	t8,v1,ffffa48c <_etext+0x403e5f84>
 484:	1303e802 	beq	t8,v1,ffffa490 <_etext+0x403e5f88>
 488:	1303e802 	beq	t8,v1,ffffa494 <_etext+0x403e5f8c>
 48c:	1303e802 	beq	t8,v1,ffffa498 <_etext+0x403e5f90>
 490:	1303e802 	beq	t8,v1,ffffa49c <_etext+0x403e5f94>
 494:	1303e802 	beq	t8,v1,ffffa4a0 <_etext+0x403e5f98>
 498:	1303e802 	beq	t8,v1,ffffa4a4 <_etext+0x403e5f9c>
 49c:	1303e802 	beq	t8,v1,ffffa4a8 <_etext+0x403e5fa0>
 4a0:	1303e802 	beq	t8,v1,ffffa4ac <_etext+0x403e5fa4>
 4a4:	1303e802 	beq	t8,v1,ffffa4b0 <_etext+0x403e5fa8>
 4a8:	1303e802 	beq	t8,v1,ffffa4b4 <_etext+0x403e5fac>
 4ac:	1303e802 	beq	t8,v1,ffffa4b8 <_etext+0x403e5fb0>
 4b0:	1303e802 	beq	t8,v1,ffffa4bc <_etext+0x403e5fb4>
 4b4:	1303e802 	beq	t8,v1,ffffa4c0 <_etext+0x403e5fb8>
 4b8:	1303e802 	beq	t8,v1,ffffa4c4 <_etext+0x403e5fbc>
 4bc:	1303e802 	beq	t8,v1,ffffa4c8 <_etext+0x403e5fc0>
 4c0:	1303e802 	beq	t8,v1,ffffa4cc <_etext+0x403e5fc4>
 4c4:	1303e802 	beq	t8,v1,ffffa4d0 <_etext+0x403e5fc8>
 4c8:	1303e802 	beq	t8,v1,ffffa4d4 <_etext+0x403e5fcc>
 4cc:	1303e802 	beq	t8,v1,ffffa4d8 <_etext+0x403e5fd0>
 4d0:	1303e802 	beq	t8,v1,ffffa4dc <_etext+0x403e5fd4>
 4d4:	1303e802 	beq	t8,v1,ffffa4e0 <_etext+0x403e5fd8>
 4d8:	1303e802 	beq	t8,v1,ffffa4e4 <_etext+0x403e5fdc>
 4dc:	1303e802 	beq	t8,v1,ffffa4e8 <_etext+0x403e5fe0>
 4e0:	1303e802 	beq	t8,v1,ffffa4ec <_etext+0x403e5fe4>
 4e4:	1303e802 	beq	t8,v1,ffffa4f0 <_etext+0x403e5fe8>
 4e8:	1303e802 	beq	t8,v1,ffffa4f4 <_etext+0x403e5fec>
 4ec:	1303e802 	beq	t8,v1,ffffa4f8 <_etext+0x403e5ff0>
 4f0:	1303e802 	beq	t8,v1,ffffa4fc <_etext+0x403e5ff4>
 4f4:	1303e802 	beq	t8,v1,ffffa500 <_etext+0x403e5ff8>
 4f8:	1303e802 	beq	t8,v1,ffffa504 <_etext+0x403e5ffc>
 4fc:	1303e802 	beq	t8,v1,ffffa508 <_etext+0x403e6000>
 500:	1303e802 	beq	t8,v1,ffffa50c <_etext+0x403e6004>
 504:	1303e802 	beq	t8,v1,ffffa510 <_etext+0x403e6008>
 508:	1303e802 	beq	t8,v1,ffffa514 <_etext+0x403e600c>
 50c:	1303e802 	beq	t8,v1,ffffa518 <_etext+0x403e6010>
 510:	1303e802 	beq	t8,v1,ffffa51c <_etext+0x403e6014>
 514:	1303e802 	beq	t8,v1,ffffa520 <_etext+0x403e6018>
 518:	1303e802 	beq	t8,v1,ffffa524 <_etext+0x403e601c>
 51c:	1303e802 	beq	t8,v1,ffffa528 <_etext+0x403e6020>
 520:	1303e802 	beq	t8,v1,ffffa52c <_etext+0x403e6024>
 524:	1303e802 	beq	t8,v1,ffffa530 <_etext+0x403e6028>
 528:	1303e802 	beq	t8,v1,ffffa534 <_etext+0x403e602c>
 52c:	1303e802 	beq	t8,v1,ffffa538 <_etext+0x403e6030>
 530:	1303e802 	beq	t8,v1,ffffa53c <_etext+0x403e6034>
 534:	1703e802 	bne	t8,v1,ffffa540 <_etext+0x403e6038>
 538:	4b4d4c4b 	c2	0x14d4c4b
 53c:	024b4b4b 	0x24b4b4b
 540:	01010004 	sllv	zero,at,t0
 544:	00000230 	tge	zero,zero,0x8
 548:	00210002 	ror	zero,at,0x0
 54c:	01010000 	0x1010000
 550:	000d0efb 	0xd0efb
 554:	01010101 	0x1010101
 558:	01000000 	0x1000000
 55c:	00010000 	sll	zero,at,0x0
 560:	5f34796d 	0x5f34796d
 564:	6464616d 	0x6464616d
 568:	0000532e 	0x532e
 56c:	00000000 	nop
 570:	c0000205 	ll	zero,517(zero)
 574:	4b18bfc0 	c2	0x118bfc0
 578:	4b4b4c4b 	c2	0x14b4c4b
 57c:	134c024c 	beq	k0,t4,eb0 <data_size+0xea0>
 580:	02134c02 	0x2134c02
 584:	4c02134c 	0x4c02134c
 588:	134c0213 	beq	k0,t4,dd8 <data_size+0xdc8>
 58c:	02134c02 	0x2134c02
 590:	4c02134c 	0x4c02134c
 594:	134c0213 	beq	k0,t4,de4 <data_size+0xdd4>
 598:	02134c02 	0x2134c02
 59c:	4c02134c 	0x4c02134c
 5a0:	134c0213 	beq	k0,t4,df0 <data_size+0xde0>
 5a4:	02134c02 	0x2134c02
 5a8:	4c02134c 	0x4c02134c
 5ac:	134c0213 	beq	k0,t4,dfc <data_size+0xdec>
 5b0:	02134c02 	0x2134c02
 5b4:	4c02134c 	0x4c02134c
 5b8:	134c0213 	beq	k0,t4,e08 <data_size+0xdf8>
 5bc:	02134c02 	0x2134c02
 5c0:	4c02134c 	0x4c02134c
 5c4:	134c0213 	beq	k0,t4,e14 <data_size+0xe04>
 5c8:	02134c02 	0x2134c02
 5cc:	4c02134c 	0x4c02134c
 5d0:	134c0213 	beq	k0,t4,e20 <data_size+0xe10>
 5d4:	02134c02 	0x2134c02
 5d8:	4c02134c 	0x4c02134c
 5dc:	134c0213 	beq	k0,t4,e2c <data_size+0xe1c>
 5e0:	02134c02 	0x2134c02
 5e4:	4c02134c 	0x4c02134c
 5e8:	134c0213 	beq	k0,t4,e38 <data_size+0xe28>
 5ec:	02134c02 	0x2134c02
 5f0:	4c02134c 	0x4c02134c
 5f4:	134c0213 	beq	k0,t4,e44 <data_size+0xe34>
 5f8:	02134c02 	0x2134c02
 5fc:	4c02134c 	0x4c02134c
 600:	134c0213 	beq	k0,t4,e50 <data_size+0xe40>
 604:	02134c02 	0x2134c02
 608:	4c02134c 	0x4c02134c
 60c:	134c0213 	beq	k0,t4,e5c <data_size+0xe4c>
 610:	02134c02 	0x2134c02
 614:	4c02134c 	0x4c02134c
 618:	134c0213 	beq	k0,t4,e68 <data_size+0xe58>
 61c:	02134c02 	0x2134c02
 620:	4c02134c 	0x4c02134c
 624:	134c0213 	beq	k0,t4,e74 <data_size+0xe64>
 628:	02134c02 	0x2134c02
 62c:	4c02134c 	0x4c02134c
 630:	134c0213 	beq	k0,t4,e80 <data_size+0xe70>
 634:	02134c02 	0x2134c02
 638:	4c02134c 	0x4c02134c
 63c:	134c0213 	beq	k0,t4,e8c <data_size+0xe7c>
 640:	02134c02 	0x2134c02
 644:	4c02134c 	0x4c02134c
 648:	134c0213 	beq	k0,t4,e98 <data_size+0xe88>
 64c:	02134c02 	0x2134c02
 650:	4c02134c 	0x4c02134c
 654:	134c0213 	beq	k0,t4,ea4 <data_size+0xe94>
 658:	02134c02 	0x2134c02
 65c:	5402134c 	bnel	zero,v0,5390 <data_size+0x5380>
 660:	13540213 	beq	k0,s4,eb0 <data_size+0xea0>
 664:	02135402 	0x2135402
 668:	54021354 	bnel	zero,v0,53bc <data_size+0x53ac>
 66c:	13540213 	beq	k0,s4,ebc <data_size+0xeac>
 670:	02135402 	0x2135402
 674:	54021354 	bnel	zero,v0,53c8 <data_size+0x53b8>
 678:	13540213 	beq	k0,s4,ec8 <data_size+0xeb8>
 67c:	02135402 	0x2135402
 680:	54021354 	bnel	zero,v0,53d4 <data_size+0x53c4>
 684:	13540213 	beq	k0,s4,ed4 <data_size+0xec4>
 688:	02135402 	0x2135402
 68c:	54021354 	bnel	zero,v0,53e0 <data_size+0x53d0>
 690:	13540213 	beq	k0,s4,ee0 <data_size+0xed0>
 694:	02135402 	0x2135402
 698:	54021354 	bnel	zero,v0,53ec <data_size+0x53dc>
 69c:	13540213 	beq	k0,s4,eec <data_size+0xedc>
 6a0:	02135402 	0x2135402
 6a4:	54021354 	bnel	zero,v0,53f8 <data_size+0x53e8>
 6a8:	13540213 	beq	k0,s4,ef8 <data_size+0xee8>
 6ac:	02135402 	0x2135402
 6b0:	54021354 	bnel	zero,v0,5404 <data_size+0x53f4>
 6b4:	13540213 	beq	k0,s4,f04 <data_size+0xef4>
 6b8:	02135402 	0x2135402
 6bc:	54021354 	bnel	zero,v0,5410 <data_size+0x5400>
 6c0:	13540213 	beq	k0,s4,f10 <data_size+0xf00>
 6c4:	02135402 	0x2135402
 6c8:	54021354 	bnel	zero,v0,541c <data_size+0x540c>
 6cc:	13540213 	beq	k0,s4,f1c <data_size+0xf0c>
 6d0:	02135402 	0x2135402
 6d4:	54021354 	bnel	zero,v0,5428 <data_size+0x5418>
 6d8:	13540213 	beq	k0,s4,f28 <data_size+0xf18>
 6dc:	02135402 	0x2135402
 6e0:	54021354 	bnel	zero,v0,5434 <data_size+0x5424>
 6e4:	13540213 	beq	k0,s4,f34 <data_size+0xf24>
 6e8:	02135402 	0x2135402
 6ec:	54021354 	bnel	zero,v0,5440 <data_size+0x5430>
 6f0:	13540213 	beq	k0,s4,f40 <data_size+0xf30>
 6f4:	02134c02 	0x2134c02
 6f8:	4c02134c 	0x4c02134c
 6fc:	134c0213 	beq	k0,t4,f4c <data_size+0xf3c>
 700:	02134c02 	0x2134c02
 704:	4c02134c 	0x4c02134c
 708:	134c0213 	beq	k0,t4,f58 <data_size+0xf48>
 70c:	02134c02 	0x2134c02
 710:	4c02134c 	0x4c02134c
 714:	134c0213 	beq	k0,t4,f64 <data_size+0xf54>
 718:	02134c02 	0x2134c02
 71c:	4c02134c 	0x4c02134c
 720:	134c0213 	beq	k0,t4,f70 <data_size+0xf60>
 724:	02134c02 	0x2134c02
 728:	4c02134c 	0x4c02134c
 72c:	13400213 	beqz	k0,f7c <data_size+0xf6c>
 730:	02134002 	0x2134002
 734:	40021340 	0x40021340
 738:	13400213 	beqz	k0,f88 <data_size+0xf78>
 73c:	02134002 	0x2134002
 740:	40021340 	0x40021340
 744:	13400213 	beqz	k0,f94 <data_size+0xf84>
 748:	02134002 	0x2134002
 74c:	40021340 	0x40021340
 750:	13400213 	beqz	k0,fa0 <data_size+0xf90>
 754:	02134002 	0x2134002
 758:	40021340 	0x40021340
 75c:	13400213 	beqz	k0,fac <data_size+0xf9c>
 760:	02134002 	0x2134002
 764:	40021340 	0x40021340
 768:	143c0213 	bne	at,gp,fb8 <data_size+0xfa8>
 76c:	4b4d4c4b 	c2	0x14d4c4b
 770:	024b4b4b 	0x24b4b4b
 774:	01010004 	sllv	zero,at,t0
 778:	00000174 	teq	zero,zero,0x5
 77c:	00220002 	ror	zero,v0,0x0
 780:	01010000 	0x1010000
 784:	000d0efb 	0xd0efb
 788:	01010101 	0x1010101
 78c:	01000000 	0x1000000
 790:	00010000 	sll	zero,at,0x0
 794:	5f37796d 	0x5f37796d
 798:	6275736d 	0x6275736d
 79c:	00532e75 	0x532e75
 7a0:	00000000 	nop
 7a4:	d0020500 	0xd0020500
 7a8:	18bfc0f1 	0x18bfc0f1
 7ac:	4b4d4b4b 	c2	0x14d4b4b
 7b0:	4b4b4b4b 	c2	0x14b4b4b
 7b4:	4c4b4b4b 	0x4c4b4b4b
 7b8:	02135402 	0x2135402
 7bc:	54021354 	bnel	zero,v0,5510 <data_size+0x5500>
 7c0:	13540213 	beq	k0,s4,1010 <data_size+0x1000>
 7c4:	02135402 	0x2135402
 7c8:	54021354 	bnel	zero,v0,551c <data_size+0x550c>
 7cc:	13540213 	beq	k0,s4,101c <data_size+0x100c>
 7d0:	02135402 	0x2135402
 7d4:	54021354 	bnel	zero,v0,5528 <data_size+0x5518>
 7d8:	13540213 	beq	k0,s4,1028 <data_size+0x1018>
 7dc:	02135402 	0x2135402
 7e0:	54021354 	bnel	zero,v0,5534 <data_size+0x5524>
 7e4:	13540213 	beq	k0,s4,1034 <data_size+0x1024>
 7e8:	02135402 	0x2135402
 7ec:	54021354 	bnel	zero,v0,5540 <data_size+0x5530>
 7f0:	13540213 	beq	k0,s4,1040 <data_size+0x1030>
 7f4:	02135402 	0x2135402
 7f8:	54021354 	bnel	zero,v0,554c <data_size+0x553c>
 7fc:	13540213 	beq	k0,s4,104c <data_size+0x103c>
 800:	02135402 	0x2135402
 804:	54021354 	bnel	zero,v0,5558 <data_size+0x5548>
 808:	13540213 	beq	k0,s4,1058 <data_size+0x1048>
 80c:	02135402 	0x2135402
 810:	54021354 	bnel	zero,v0,5564 <data_size+0x5554>
 814:	13540213 	beq	k0,s4,1064 <data_size+0x1054>
 818:	02135402 	0x2135402
 81c:	54021354 	bnel	zero,v0,5570 <data_size+0x5560>
 820:	13540213 	beq	k0,s4,1070 <data_size+0x1060>
 824:	02135402 	0x2135402
 828:	54021354 	bnel	zero,v0,557c <data_size+0x556c>
 82c:	13540213 	beq	k0,s4,107c <data_size+0x106c>
 830:	02135402 	0x2135402
 834:	54021354 	bnel	zero,v0,5588 <data_size+0x5578>
 838:	13540213 	beq	k0,s4,1088 <data_size+0x1078>
 83c:	02135402 	0x2135402
 840:	54021354 	bnel	zero,v0,5594 <data_size+0x5584>
 844:	13540213 	beq	k0,s4,1094 <data_size+0x1084>
 848:	02135402 	0x2135402
 84c:	50021454 	beql	zero,v0,59a0 <data_size+0x5990>
 850:	13500213 	beq	k0,s0,10a0 <data_size+0x1090>
 854:	02135002 	0x2135002
 858:	50021350 	beql	zero,v0,559c <data_size+0x558c>
 85c:	13500213 	beq	k0,s0,10ac <data_size+0x109c>
 860:	02135002 	0x2135002
 864:	50021350 	beql	zero,v0,55a8 <data_size+0x5598>
 868:	13500213 	beq	k0,s0,10b8 <data_size+0x10a8>
 86c:	02135002 	0x2135002
 870:	50021350 	beql	zero,v0,55b4 <data_size+0x55a4>
 874:	13500213 	beq	k0,s0,10c4 <data_size+0x10b4>
 878:	02135002 	0x2135002
 87c:	50021350 	beql	zero,v0,55c0 <data_size+0x55b0>
 880:	13500213 	beq	k0,s0,10d0 <data_size+0x10c0>
 884:	02135002 	0x2135002
 888:	50021350 	beql	zero,v0,55cc <data_size+0x55bc>
 88c:	13500213 	beq	k0,s0,10dc <data_size+0x10cc>
 890:	02135002 	0x2135002
 894:	50021350 	beql	zero,v0,55d8 <data_size+0x55c8>
 898:	13500213 	beq	k0,s0,10e8 <data_size+0x10d8>
 89c:	02135002 	0x2135002
 8a0:	50021350 	beql	zero,v0,55e4 <data_size+0x55d4>
 8a4:	13500213 	beq	k0,s0,10f4 <data_size+0x10e4>
 8a8:	02135002 	0x2135002
 8ac:	50021350 	beql	zero,v0,55f0 <data_size+0x55e0>
 8b0:	13500213 	beq	k0,s0,1100 <data_size+0x10f0>
 8b4:	02135002 	0x2135002
 8b8:	50021350 	beql	zero,v0,55fc <data_size+0x55ec>
 8bc:	13500213 	beq	k0,s0,110c <data_size+0x10fc>
 8c0:	02135002 	0x2135002
 8c4:	50021350 	beql	zero,v0,5608 <data_size+0x55f8>
 8c8:	13500213 	beq	k0,s0,1118 <data_size+0x1108>
 8cc:	02135002 	0x2135002
 8d0:	50021350 	beql	zero,v0,5614 <data_size+0x5604>
 8d4:	13500213 	beq	k0,s0,1124 <data_size+0x1114>
 8d8:	02135002 	0x2135002
 8dc:	50021350 	beql	zero,v0,5620 <data_size+0x5610>
 8e0:	16500213 	bne	s2,s0,1130 <data_size+0x1120>
 8e4:	4b4d4c4b 	c2	0x14d4c4b
 8e8:	024b4b4b 	0x24b4b4b
 8ec:	01010004 	sllv	zero,at,t0
 8f0:	00000173 	tltu	zero,zero,0x5
 8f4:	00210002 	ror	zero,at,0x0
 8f8:	01010000 	0x1010000
 8fc:	000d0efb 	0xd0efb
 900:	01010101 	0x1010101
 904:	01000000 	0x1000000
 908:	00010000 	sll	zero,at,0x0
 90c:	5f36796d 	0x5f36796d
 910:	6275736d 	0x6275736d
 914:	0000532e 	0x532e
 918:	00000000 	nop
 91c:	12300205 	beq	s1,s0,1134 <data_size+0x1124>
 920:	4b18bfc1 	c2	0x118bfc1
 924:	4b4b4d4b 	c2	0x14b4d4b
 928:	4b4b4b4b 	c2	0x14b4b4b
 92c:	024b4b4b 	0x24b4b4b
 930:	54021354 	bnel	zero,v0,5684 <data_size+0x5674>
 934:	13540213 	beq	k0,s4,1184 <data_size+0x1174>
 938:	02135402 	0x2135402
 93c:	54021354 	bnel	zero,v0,5690 <data_size+0x5680>
 940:	13540213 	beq	k0,s4,1190 <data_size+0x1180>
 944:	02135402 	0x2135402
 948:	54021354 	bnel	zero,v0,569c <data_size+0x568c>
 94c:	13540213 	beq	k0,s4,119c <data_size+0x118c>
 950:	02135402 	0x2135402
 954:	54021354 	bnel	zero,v0,56a8 <data_size+0x5698>
 958:	13540213 	beq	k0,s4,11a8 <data_size+0x1198>
 95c:	02135402 	0x2135402
 960:	54021354 	bnel	zero,v0,56b4 <data_size+0x56a4>
 964:	13540213 	beq	k0,s4,11b4 <data_size+0x11a4>
 968:	02135402 	0x2135402
 96c:	54021354 	bnel	zero,v0,56c0 <data_size+0x56b0>
 970:	13540213 	beq	k0,s4,11c0 <data_size+0x11b0>
 974:	02135402 	0x2135402
 978:	54021354 	bnel	zero,v0,56cc <data_size+0x56bc>
 97c:	13540213 	beq	k0,s4,11cc <data_size+0x11bc>
 980:	02135402 	0x2135402
 984:	54021354 	bnel	zero,v0,56d8 <data_size+0x56c8>
 988:	13540213 	beq	k0,s4,11d8 <data_size+0x11c8>
 98c:	02135402 	0x2135402
 990:	54021354 	bnel	zero,v0,56e4 <data_size+0x56d4>
 994:	13540213 	beq	k0,s4,11e4 <data_size+0x11d4>
 998:	02135402 	0x2135402
 99c:	54021354 	bnel	zero,v0,56f0 <data_size+0x56e0>
 9a0:	13540213 	beq	k0,s4,11f0 <data_size+0x11e0>
 9a4:	02135402 	0x2135402
 9a8:	54021354 	bnel	zero,v0,56fc <data_size+0x56ec>
 9ac:	13540213 	beq	k0,s4,11fc <data_size+0x11ec>
 9b0:	02135402 	0x2135402
 9b4:	54021354 	bnel	zero,v0,5708 <data_size+0x56f8>
 9b8:	13540213 	beq	k0,s4,1208 <data_size+0x11f8>
 9bc:	02135402 	0x2135402
 9c0:	54021354 	bnel	zero,v0,5714 <data_size+0x5704>
 9c4:	13500216 	beq	k0,s0,1220 <data_size+0x1210>
 9c8:	02135002 	0x2135002
 9cc:	50021350 	beql	zero,v0,5710 <data_size+0x5700>
 9d0:	13500213 	beq	k0,s0,1220 <data_size+0x1210>
 9d4:	02135002 	0x2135002
 9d8:	50021350 	beql	zero,v0,571c <data_size+0x570c>
 9dc:	13500213 	beq	k0,s0,122c <data_size+0x121c>
 9e0:	02135002 	0x2135002
 9e4:	50021350 	beql	zero,v0,5728 <data_size+0x5718>
 9e8:	13500213 	beq	k0,s0,1238 <data_size+0x1228>
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
 a14:	50021350 	beql	zero,v0,5758 <data_size+0x5748>
 a18:	13500213 	beq	k0,s0,1268 <data_size+0x1258>
 a1c:	02135002 	0x2135002
 a20:	50021350 	beql	zero,v0,5764 <data_size+0x5754>
 a24:	13500213 	beq	k0,s0,1274 <data_size+0x1264>
 a28:	02135002 	0x2135002
 a2c:	50021350 	beql	zero,v0,5770 <data_size+0x5760>
 a30:	13500213 	beq	k0,s0,1280 <data_size+0x1270>
 a34:	02135002 	0x2135002
 a38:	50021350 	beql	zero,v0,577c <data_size+0x576c>
 a3c:	13500213 	beq	k0,s0,128c <data_size+0x127c>
 a40:	02135002 	0x2135002
 a44:	50021350 	beql	zero,v0,5788 <data_size+0x5778>
 a48:	13500213 	beq	k0,s0,1298 <data_size+0x1288>
 a4c:	02135002 	0x2135002
 a50:	50021350 	beql	zero,v0,5794 <data_size+0x5784>
 a54:	13500213 	beq	k0,s0,12a4 <data_size+0x1294>
 a58:	4b155002 	c2	0x1155002
 a5c:	4b4b4d4c 	c2	0x14b4d4c
 a60:	04024b4b 	bltzl	zero,13790 <data_size+0x13780>
 a64:	c8010100 	lwc2	$1,256(zero)
 a68:	02000001 	movf	zero,s0,$fcc0
 a6c:	00001f00 	sll	v1,zero,0x1c
 a70:	fb010100 	sdc2	$1,256(t8)
 a74:	01000d0e 	0x1000d0e
 a78:	00010101 	0x10101
 a7c:	00010000 	sll	zero,at,0x0
 a80:	6e000100 	0x6e000100
 a84:	756c5f31 	jalx	5b17cc4 <data_size+0x5b17cb4>
 a88:	00532e69 	0x532e69
 a8c:	00000000 	nop
 a90:	90020500 	lbu	v0,1280(zero)
 a94:	18bfc132 	0x18bfc132
 a98:	4b4c4b4b 	c2	0x14c4b4b
 a9c:	75087508 	jalx	421d420 <data_size+0x421d410>
 aa0:	75087508 	jalx	421d420 <data_size+0x421d410>
 aa4:	75087508 	jalx	421d420 <data_size+0x421d410>
 aa8:	75087508 	jalx	421d420 <data_size+0x421d410>
 aac:	75087508 	jalx	421d420 <data_size+0x421d410>
 ab0:	75087508 	jalx	421d420 <data_size+0x421d410>
 ab4:	75087508 	jalx	421d420 <data_size+0x421d410>
 ab8:	75087508 	jalx	421d420 <data_size+0x421d410>
 abc:	0875084b 	j	1d4212c <data_size+0x1d4211c>
 ac0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 ac4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 ac8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 acc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 ad0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 ad4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 ad8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 adc:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
 ae0:	75087508 	jalx	421d420 <data_size+0x421d410>
 ae4:	75087508 	jalx	421d420 <data_size+0x421d410>
 ae8:	75087508 	jalx	421d420 <data_size+0x421d410>
 aec:	75087508 	jalx	421d420 <data_size+0x421d410>
 af0:	75087508 	jalx	421d420 <data_size+0x421d410>
 af4:	75087508 	jalx	421d420 <data_size+0x421d410>
 af8:	75087508 	jalx	421d420 <data_size+0x421d410>
 afc:	084b7508 	j	12dd420 <data_size+0x12dd410>
 b00:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b04:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b08:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b0c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b10:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b14:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b18:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b1c:	4b750875 	c2	0x1750875
 b20:	75087508 	jalx	421d420 <data_size+0x421d410>
 b24:	75087508 	jalx	421d420 <data_size+0x421d410>
 b28:	75087508 	jalx	421d420 <data_size+0x421d410>
 b2c:	75087508 	jalx	421d420 <data_size+0x421d410>
 b30:	75087508 	jalx	421d420 <data_size+0x421d410>
 b34:	75087508 	jalx	421d420 <data_size+0x421d410>
 b38:	75087508 	jalx	421d420 <data_size+0x421d410>
 b3c:	75087508 	jalx	421d420 <data_size+0x421d410>
 b40:	0875084b 	j	1d4212c <data_size+0x1d4211c>
 b44:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b48:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b4c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b50:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b54:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b58:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b5c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b60:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
 b64:	75087508 	jalx	421d420 <data_size+0x421d410>
 b68:	75087508 	jalx	421d420 <data_size+0x421d410>
 b6c:	75087508 	jalx	421d420 <data_size+0x421d410>
 b70:	75087508 	jalx	421d420 <data_size+0x421d410>
 b74:	75087508 	jalx	421d420 <data_size+0x421d410>
 b78:	75087508 	jalx	421d420 <data_size+0x421d410>
 b7c:	75087508 	jalx	421d420 <data_size+0x421d410>
 b80:	084b7508 	j	12dd420 <data_size+0x12dd410>
 b84:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b88:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b8c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b90:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b94:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b98:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 b9c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 ba0:	4b750875 	c2	0x1750875
 ba4:	75087508 	jalx	421d420 <data_size+0x421d410>
 ba8:	75087508 	jalx	421d420 <data_size+0x421d410>
 bac:	75087508 	jalx	421d420 <data_size+0x421d410>
 bb0:	75087508 	jalx	421d420 <data_size+0x421d410>
 bb4:	75087508 	jalx	421d420 <data_size+0x421d410>
 bb8:	75087508 	jalx	421d420 <data_size+0x421d410>
 bbc:	75087508 	jalx	421d420 <data_size+0x421d410>
 bc0:	75087508 	jalx	421d420 <data_size+0x421d410>
 bc4:	0875084b 	j	1d4212c <data_size+0x1d4211c>
 bc8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 bcc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 bd0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 bd4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 bd8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 bdc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 be0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 be4:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
 be8:	75087508 	jalx	421d420 <data_size+0x421d410>
 bec:	75087508 	jalx	421d420 <data_size+0x421d410>
 bf0:	75087508 	jalx	421d420 <data_size+0x421d410>
 bf4:	75087508 	jalx	421d420 <data_size+0x421d410>
 bf8:	75087508 	jalx	421d420 <data_size+0x421d410>
 bfc:	75087508 	jalx	421d420 <data_size+0x421d410>
 c00:	75087508 	jalx	421d420 <data_size+0x421d410>
 c04:	084b7508 	j	12dd420 <data_size+0x12dd410>
 c08:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 c0c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 c10:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 c14:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 c18:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 c1c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 c20:	08750875 	j	1d421d4 <data_size+0x1d421c4>
 c24:	4b760875 	c2	0x1760875
 c28:	4b4b4d4c 	c2	0x14b4d4c
 c2c:	04024b4b 	bltzl	zero,1395c <data_size+0x1394c>
 c30:	Address 0x0000000000000c30 is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000061 	0x61
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000000 	nop
  10:	bfc00000 	cache	0x0,0(s8)
  14:	bfc0087c 	cache	0x0,2172(s8)
  18:	72617473 	0x72617473
  1c:	00532e74 	teq	v0,s3,0xb9
  20:	6d6f682f 	0x6d6f682f
  24:	61792f65 	0x61792f65
  28:	442f676e 	0x442f676e
  2c:	63736e2f 	0x63736e2f
  30:	32636373 	andi	v1,s3,0x6373
  34:	5f313230 	0x5f313230
  38:	756f7267 	jalx	5bdc99c <data_size+0x5bdc98c>
  3c:	30765f70 	andi	s6,v1,0x5f70
  40:	2f31302e 	sltiu	s1,t9,12334
  44:	665f796d 	0x665f796d
  48:	2f656c69 	sltiu	a1,k1,27753
  4c:	665f796d 	0x665f796d
  50:	00636e75 	0x636e75
  54:	20554e47 	addi	s5,v0,20039
  58:	32205341 	andi	zero,s1,0x5341
  5c:	2e38312e 	sltiu	t8,s1,12590
  60:	01003035 	0x1003035
  64:	00006880 	sll	t5,zero,0x2
  68:	14000200 	bnez	zero,86c <data_size+0x85c>
  6c:	04000000 	bltz	zero,70 <data_size+0x60>
  70:	00017b01 	0x17b01
  74:	c0088000 	ll	t0,-32768(zero)
  78:	c00c50bf 	ll	t4,20671(zero)
  7c:	31796dbf 	andi	t9,t3,0x6dbf
  80:	7a6c635f 	0x7a6c635f
  84:	2f00532e 	sltiu	zero,t8,21294
  88:	656d6f68 	0x656d6f68
  8c:	6e61792f 	0x6e61792f
  90:	2f442f67 	sltiu	a0,k0,12135
  94:	7363736e 	0x7363736e
  98:	30326363 	andi	s2,at,0x6363
  9c:	675f3132 	0x675f3132
  a0:	70756f72 	0x70756f72
  a4:	2e30765f 	sltiu	s0,s1,30303
  a8:	6d2f3130 	0x6d2f3130
  ac:	69665f79 	0x69665f79
  b0:	6d2f656c 	0x6d2f656c
  b4:	75665f79 	jalx	5997de4 <data_size+0x5997dd4>
  b8:	692f636e 	0x692f636e
  bc:	0074736e 	0x74736e
  c0:	20554e47 	addi	s5,v0,20039
  c4:	32205341 	andi	zero,s1,0x5341
  c8:	2e38312e 	sltiu	t8,s1,12590
  cc:	01003035 	0x1003035
  d0:	00006a80 	sll	t5,zero,0xa
  d4:	28000200 	slti	zero,zero,512
  d8:	04000000 	bltz	zero,dc <data_size+0xcc>
  dc:	00020f01 	0x20f01
  e0:	c00c5000 	ll	t4,20480(zero)
  e4:	c0223cbf 	ll	v0,15551(at)
  e8:	35796dbf 	ori	t9,t3,0x6dbf
  ec:	64616d5f 	0x64616d5f
  f0:	532e7564 	beql	t9,t6,1d684 <data_size+0x1d674>
  f4:	6f682f00 	0x6f682f00
  f8:	792f656d 	0x792f656d
  fc:	2f676e61 	sltiu	a3,k1,28257
 100:	736e2f44 	0x736e2f44
 104:	63637363 	0x63637363
 108:	31323032 	andi	s2,t1,0x3032
 10c:	6f72675f 	0x6f72675f
 110:	765f7075 	jalx	97dc1d4 <data_size+0x97dc1c4>
 114:	31302e30 	andi	s0,t1,0x2e30
 118:	5f796d2f 	0x5f796d2f
 11c:	656c6966 	0x656c6966
 120:	5f796d2f 	0x5f796d2f
 124:	636e7566 	0x636e7566
 128:	736e692f 	0x736e692f
 12c:	4e470074 	c3	0x470074
 130:	53412055 	beql	k0,at,8288 <data_size+0x8278>
 134:	312e3220 	andi	t6,t1,0x3220
 138:	30352e38 	andi	s5,at,0x2e38
 13c:	68800100 	0x68800100
 140:	02000000 	0x2000000
 144:	00003c00 	sll	a3,zero,0x10
 148:	2e010400 	sltiu	at,s0,1024
 14c:	40000003 	mfc0	zero,$0,3
 150:	40bfc022 	0x40bfc022
 154:	6dbfc025 	0x6dbfc025
 158:	635f3279 	0x635f3279
 15c:	532e6f6c 	beql	t9,t6,1bf10 <data_size+0x1bf00>
 160:	6f682f00 	0x6f682f00
 164:	792f656d 	0x792f656d
 168:	2f676e61 	sltiu	a3,k1,28257
 16c:	736e2f44 	0x736e2f44
 170:	63637363 	0x63637363
 174:	31323032 	andi	s2,t1,0x3032
 178:	6f72675f 	0x6f72675f
 17c:	765f7075 	jalx	97dc1d4 <data_size+0x97dc1c4>
 180:	31302e30 	andi	s0,t1,0x2e30
 184:	5f796d2f 	0x5f796d2f
 188:	656c6966 	0x656c6966
 18c:	5f796d2f 	0x5f796d2f
 190:	636e7566 	0x636e7566
 194:	736e692f 	0x736e692f
 198:	4e470074 	c3	0x470074
 19c:	53412055 	beql	k0,at,82f4 <data_size+0x82e4>
 1a0:	312e3220 	andi	t6,t1,0x3220
 1a4:	30352e38 	andi	s5,at,0x2e38
 1a8:	68800100 	0x68800100
 1ac:	02000000 	0x2000000
 1b0:	00005000 	sll	t2,zero,0x0
 1b4:	b6010400 	0xb6010400
 1b8:	40000003 	mfc0	zero,$0,3
 1bc:	f8bfc025 	sdc2	$31,-16347(a1)
 1c0:	6dbfc0bf 	0x6dbfc0bf
 1c4:	6d5f3379 	0x6d5f3379
 1c8:	532e6c75 	beql	t9,t6,1b3a0 <data_size+0x1b390>
 1cc:	6f682f00 	0x6f682f00
 1d0:	792f656d 	0x792f656d
 1d4:	2f676e61 	sltiu	a3,k1,28257
 1d8:	736e2f44 	0x736e2f44
 1dc:	63637363 	0x63637363
 1e0:	31323032 	andi	s2,t1,0x3032
 1e4:	6f72675f 	0x6f72675f
 1e8:	765f7075 	jalx	97dc1d4 <data_size+0x97dc1c4>
 1ec:	31302e30 	andi	s0,t1,0x2e30
 1f0:	5f796d2f 	0x5f796d2f
 1f4:	656c6966 	0x656c6966
 1f8:	5f796d2f 	0x5f796d2f
 1fc:	636e7566 	0x636e7566
 200:	736e692f 	0x736e692f
 204:	4e470074 	c3	0x470074
 208:	53412055 	beql	k0,at,8360 <data_size+0x8350>
 20c:	312e3220 	andi	t6,t1,0x3220
 210:	30352e38 	andi	s5,at,0x2e38
 214:	69800100 	0x69800100
 218:	02000000 	0x2000000
 21c:	00006400 	sll	t4,zero,0x10
 220:	44010400 	0x44010400
 224:	00000005 	0x5
 228:	c4bfc0c0 	lwc1	$f31,-16192(a1)
 22c:	6dbfc0f1 	0x6dbfc0f1
 230:	6d5f3479 	0x6d5f3479
 234:	2e646461 	sltiu	a0,s3,25697
 238:	682f0053 	0x682f0053
 23c:	2f656d6f 	sltiu	a1,k1,28015
 240:	676e6179 	0x676e6179
 244:	6e2f442f 	0x6e2f442f
 248:	63736373 	0x63736373
 24c:	32303263 	andi	s0,s1,0x3263
 250:	72675f31 	0x72675f31
 254:	5f70756f 	0x5f70756f
 258:	302e3076 	andi	t6,at,0x3076
 25c:	796d2f31 	0x796d2f31
 260:	6c69665f 	0x6c69665f
 264:	796d2f65 	0x796d2f65
 268:	6e75665f 	0x6e75665f
 26c:	6e692f63 	0x6e692f63
 270:	47007473 	c1	0x1007473
 274:	4120554e 	0x4120554e
 278:	2e322053 	sltiu	s2,s1,8275
 27c:	352e3831 	ori	t6,t1,0x3831
 280:	80010030 	lb	at,48(zero)
 284:	0000006a 	0x6a
 288:	00780002 	0x780002
 28c:	01040000 	0x1040000
 290:	00000778 	0x778
 294:	bfc0f1d0 	cache	0x0,-3632(s8)
 298:	bfc11228 	cache	0x1,4648(s8)
 29c:	5f37796d 	0x5f37796d
 2a0:	6275736d 	0x6275736d
 2a4:	00532e75 	0x532e75
 2a8:	6d6f682f 	0x6d6f682f
 2ac:	61792f65 	0x61792f65
 2b0:	442f676e 	0x442f676e
 2b4:	63736e2f 	0x63736e2f
 2b8:	32636373 	andi	v1,s3,0x6373
 2bc:	5f313230 	0x5f313230
 2c0:	756f7267 	jalx	5bdc99c <data_size+0x5bdc98c>
 2c4:	30765f70 	andi	s6,v1,0x5f70
 2c8:	2f31302e 	sltiu	s1,t9,12334
 2cc:	665f796d 	0x665f796d
 2d0:	2f656c69 	sltiu	a1,k1,27753
 2d4:	665f796d 	0x665f796d
 2d8:	2f636e75 	sltiu	v1,k1,28277
 2dc:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 2e0:	554e4700 	bnel	t2,t6,11ee4 <data_size+0x11ed4>
 2e4:	20534120 	addi	s3,v0,16672
 2e8:	38312e32 	xori	s1,at,0x2e32
 2ec:	0030352e 	0x30352e
 2f0:	00698001 	movt	s0,v1,$fcc2
 2f4:	00020000 	sll	zero,v0,0x0
 2f8:	0000008c 	syscall	0x2
 2fc:	08f00104 	j	3c00410 <data_size+0x3c00400>
 300:	12300000 	beq	s1,s0,304 <data_size+0x2f4>
 304:	3288bfc1 	andi	t0,s4,0xbfc1
 308:	796dbfc1 	0x796dbfc1
 30c:	736d5f36 	0x736d5f36
 310:	532e6275 	beql	t9,t6,18ce8 <data_size+0x18cd8>
 314:	6f682f00 	0x6f682f00
 318:	792f656d 	0x792f656d
 31c:	2f676e61 	sltiu	a3,k1,28257
 320:	736e2f44 	0x736e2f44
 324:	63637363 	0x63637363
 328:	31323032 	andi	s2,t1,0x3032
 32c:	6f72675f 	0x6f72675f
 330:	765f7075 	jalx	97dc1d4 <data_size+0x97dc1c4>
 334:	31302e30 	andi	s0,t1,0x2e30
 338:	5f796d2f 	0x5f796d2f
 33c:	656c6966 	0x656c6966
 340:	5f796d2f 	0x5f796d2f
 344:	636e7566 	0x636e7566
 348:	736e692f 	0x736e692f
 34c:	4e470074 	c3	0x470074
 350:	53412055 	beql	k0,at,84a8 <data_size+0x8498>
 354:	312e3220 	andi	t6,t1,0x3220
 358:	30352e38 	andi	s5,at,0x2e38
 35c:	67800100 	0x67800100
 360:	02000000 	0x2000000
 364:	0000a000 	sll	s4,zero,0x0
 368:	67010400 	0x67010400
 36c:	9000000a 	lbu	zero,10(zero)
 370:	ecbfc132 	swc3	$31,-16078(a1)
 374:	6ebfc144 	0x6ebfc144
 378:	756c5f31 	jalx	5b17cc4 <data_size+0x5b17cb4>
 37c:	00532e69 	0x532e69
 380:	6d6f682f 	0x6d6f682f
 384:	61792f65 	0x61792f65
 388:	442f676e 	0x442f676e
 38c:	63736e2f 	0x63736e2f
 390:	32636373 	andi	v1,s3,0x6373
 394:	5f313230 	0x5f313230
 398:	756f7267 	jalx	5bdc99c <data_size+0x5bdc98c>
 39c:	30765f70 	andi	s6,v1,0x5f70
 3a0:	2f31302e 	sltiu	s1,t9,12334
 3a4:	665f796d 	0x665f796d
 3a8:	2f656c69 	sltiu	a1,k1,27753
 3ac:	665f796d 	0x665f796d
 3b0:	2f636e75 	sltiu	v1,k1,28277
 3b4:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 3b8:	554e4700 	bnel	t2,t6,11fbc <data_size+0x11fac>
 3bc:	20534120 	addi	s3,v0,16672
 3c0:	38312e32 	xori	s1,at,0x2e32
 3c4:	0030352e 	0x30352e
 3c8:	Address 0x00000000000003c8 is out of bounds.


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
