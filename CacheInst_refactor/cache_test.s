
main.elf:     file format elf32-tradlittlemips
main.elf


Disassembly of section .text:

bfc00000 <_ftext>:
/media/sf_ucas19_20_all/release/cache_func/start.S:18
bfc00000:	3c1bbfb0 	lui	k1,0xbfb0
bfc00004:	af608ffc 	sw	zero,-28676(k1)
bfc00008:	af608ffc 	sw	zero,-28676(k1)
bfc0000c:	af60fff8 	sw	zero,-8(k1)
bfc00010:	af608ffc 	sw	zero,-28676(k1)
bfc00014:	af608ffc 	sw	zero,-28676(k1)
bfc00018:	8f608ffc 	lw	zero,-28676(k1)
bfc0001c:	8f7bfff8 	lw	k1,-8(k1)
/media/sf_ucas19_20_all/release/cache_func/start.S:22
bfc00020:	40088000 	mfc0	t0,$16
/media/sf_ucas19_20_all/release/cache_func/start.S:23
bfc00024:	3108fff8 	andi	t0,t0,0xfff8
/media/sf_ucas19_20_all/release/cache_func/start.S:24
bfc00028:	35080003 	ori	t0,t0,0x3
/media/sf_ucas19_20_all/release/cache_func/start.S:25
bfc0002c:	40888000 	mtc0	t0,$16
/media/sf_ucas19_20_all/release/cache_func/start.S:28
bfc00030:	3c08bfc0 	lui	t0,0xbfc0
bfc00034:	25080394 	addiu	t0,t0,916
/media/sf_ucas19_20_all/release/cache_func/start.S:29
bfc00038:	3c09dfff 	lui	t1,0xdfff
bfc0003c:	3529ffff 	ori	t1,t1,0xffff
/media/sf_ucas19_20_all/release/cache_func/start.S:30
bfc00040:	01094024 	and	t0,t0,t1
/media/sf_ucas19_20_all/release/cache_func/start.S:31
bfc00044:	01000008 	jr	t0
bfc00048:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:32
bfc0004c:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:35
bfc00050:	3c088000 	lui	t0,0x8000
/media/sf_ucas19_20_all/release/cache_func/start.S:36
bfc00054:	25290001 	addiu	t1,t1,1
/media/sf_ucas19_20_all/release/cache_func/start.S:37
bfc00058:	01005025 	move	t2,t0
/media/sf_ucas19_20_all/release/cache_func/start.S:38
bfc0005c:	01ae5821 	addu	t3,t5,t6
/media/sf_ucas19_20_all/release/cache_func/start.S:39
bfc00060:	8d0c0000 	lw	t4,0(t0)
	...
/media/sf_ucas19_20_all/release/cache_func/start.S:44
bfc000e8:	3c088000 	lui	t0,0x8000
/media/sf_ucas19_20_all/release/cache_func/start.S:45
bfc000ec:	25290001 	addiu	t1,t1,1
/media/sf_ucas19_20_all/release/cache_func/start.S:46
bfc000f0:	01005025 	move	t2,t0
/media/sf_ucas19_20_all/release/cache_func/start.S:47
bfc000f4:	01ae5821 	addu	t3,t5,t6
/media/sf_ucas19_20_all/release/cache_func/start.S:48
bfc000f8:	8d0c0000 	lw	t4,0(t0)
/media/sf_ucas19_20_all/release/cache_func/start.S:49
bfc000fc:	00000000 	nop

bfc00100 <test_finish>:
/media/sf_ucas19_20_all/release/cache_func/start.S:52
bfc00100:	1000ffff 	b	bfc00100 <test_finish>
/media/sf_ucas19_20_all/release/cache_func/start.S:53
bfc00104:	25080001 	addiu	t0,t0,1
/media/sf_ucas19_20_all/release/cache_func/start.S:54
bfc00108:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:56
bfc0010c:	3c088000 	lui	t0,0x8000
/media/sf_ucas19_20_all/release/cache_func/start.S:57
bfc00110:	25290001 	addiu	t1,t1,1
/media/sf_ucas19_20_all/release/cache_func/start.S:58
bfc00114:	01005025 	move	t2,t0
/media/sf_ucas19_20_all/release/cache_func/start.S:59
bfc00118:	01ae5821 	addu	t3,t5,t6
/media/sf_ucas19_20_all/release/cache_func/start.S:60
bfc0011c:	8d0c0000 	lw	t4,0(t0)
	...
/media/sf_ucas19_20_all/release/cache_func/start.S:67
bfc00200:	1000005f 	b	bfc00380 <cache_fail>
bfc00204:	00000000 	nop
	...

bfc00380 <cache_fail>:
/media/sf_ucas19_20_all/release/cache_func/start.S:72
bfc00380:	00104e00 	sll	t1,s0,0x18
/media/sf_ucas19_20_all/release/cache_func/start.S:73
bfc00384:	01334025 	or	t0,t1,s3
/media/sf_ucas19_20_all/release/cache_func/start.S:74
bfc00388:	03e00008 	jr	ra
/media/sf_ucas19_20_all/release/cache_func/start.S:75
bfc0038c:	ae280000 	sw	t0,0(s1)
/media/sf_ucas19_20_all/release/cache_func/start.S:76
bfc00390:	00000000 	nop

bfc00394 <locate>:
/media/sf_ucas19_20_all/release/cache_func/start.S:82
bfc00394:	3c04bfb0 	lui	a0,0xbfb0
bfc00398:	2484f008 	addiu	a0,a0,-4088
/media/sf_ucas19_20_all/release/cache_func/start.S:83
bfc0039c:	3c05bfb0 	lui	a1,0xbfb0
bfc003a0:	24a5f004 	addiu	a1,a1,-4092
/media/sf_ucas19_20_all/release/cache_func/start.S:84
bfc003a4:	3c06bfb0 	lui	a2,0xbfb0
bfc003a8:	24c6f000 	addiu	a2,a2,-4096
/media/sf_ucas19_20_all/release/cache_func/start.S:85
bfc003ac:	3c11bfb0 	lui	s1,0xbfb0
bfc003b0:	2631f010 	addiu	s1,s1,-4080
/media/sf_ucas19_20_all/release/cache_func/start.S:87
bfc003b4:	3c090000 	lui	t1,0x0
bfc003b8:	25290002 	addiu	t1,t1,2
/media/sf_ucas19_20_all/release/cache_func/start.S:88
bfc003bc:	3c0a0000 	lui	t2,0x0
bfc003c0:	254a0001 	addiu	t2,t2,1
/media/sf_ucas19_20_all/release/cache_func/start.S:89
bfc003c4:	3c0b0001 	lui	t3,0x1
bfc003c8:	256bffff 	addiu	t3,t3,-1
/media/sf_ucas19_20_all/release/cache_func/start.S:90
bfc003cc:	3c130000 	lui	s3,0x0
/media/sf_ucas19_20_all/release/cache_func/start.S:92
bfc003d0:	ac890000 	sw	t1,0(a0)
/media/sf_ucas19_20_all/release/cache_func/start.S:93
bfc003d4:	acaa0000 	sw	t2,0(a1)
/media/sf_ucas19_20_all/release/cache_func/start.S:94
bfc003d8:	accb0000 	sw	t3,0(a2)
/media/sf_ucas19_20_all/release/cache_func/start.S:95
bfc003dc:	ae330000 	sw	s3,0(s1)
/media/sf_ucas19_20_all/release/cache_func/start.S:96
bfc003e0:	3c100000 	lui	s0,0x0

bfc003e4 <inst_test>:
/media/sf_ucas19_20_all/release/cache_func/start.S:98
bfc003e4:	0ff00148 	jal	bfc00520 <n1_ic_idx_inv_test>
/media/sf_ucas19_20_all/release/cache_func/start.S:99
bfc003e8:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:100
bfc003ec:	0ff00134 	jal	bfc004d0 <wait_1s>
/media/sf_ucas19_20_all/release/cache_func/start.S:101
bfc003f0:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:102
bfc003f4:	0ff001f8 	jal	bfc007e0 <n2_ic_idx_sttag_test>
/media/sf_ucas19_20_all/release/cache_func/start.S:103
bfc003f8:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:104
bfc003fc:	0ff00134 	jal	bfc004d0 <wait_1s>
/media/sf_ucas19_20_all/release/cache_func/start.S:105
bfc00400:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:106
bfc00404:	0ff00230 	jal	bfc008c0 <n3_ic_hit_inv_test>
/media/sf_ucas19_20_all/release/cache_func/start.S:107
bfc00408:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:108
bfc0040c:	0ff00134 	jal	bfc004d0 <wait_1s>
/media/sf_ucas19_20_all/release/cache_func/start.S:109
bfc00410:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:110
bfc00414:	0ff0019c 	jal	bfc00670 <n4_dc_idx_wbinv_test>
/media/sf_ucas19_20_all/release/cache_func/start.S:111
bfc00418:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:112
bfc0041c:	0ff00134 	jal	bfc004d0 <wait_1s>
/media/sf_ucas19_20_all/release/cache_func/start.S:113
bfc00420:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:114
bfc00424:	0ff00178 	jal	bfc005e0 <n5_dc_idx_sttag_test>
/media/sf_ucas19_20_all/release/cache_func/start.S:115
bfc00428:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:116
bfc0042c:	0ff00134 	jal	bfc004d0 <wait_1s>
/media/sf_ucas19_20_all/release/cache_func/start.S:117
bfc00430:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:118
bfc00434:	0ff001c0 	jal	bfc00700 <n6_dc_hit_inv_test>
/media/sf_ucas19_20_all/release/cache_func/start.S:119
bfc00438:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:120
bfc0043c:	0ff00134 	jal	bfc004d0 <wait_1s>
/media/sf_ucas19_20_all/release/cache_func/start.S:121
bfc00440:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:122
bfc00444:	0ff001dc 	jal	bfc00770 <n7_dc_hit_wbinv_test>
/media/sf_ucas19_20_all/release/cache_func/start.S:123
bfc00448:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:124
bfc0044c:	0ff00134 	jal	bfc004d0 <wait_1s>
/media/sf_ucas19_20_all/release/cache_func/start.S:125
bfc00450:	00000000 	nop

bfc00454 <test_end>:
/media/sf_ucas19_20_all/release/cache_func/start.S:128
bfc00454:	3c100000 	lui	s0,0x0
bfc00458:	26100007 	addiu	s0,s0,7
/media/sf_ucas19_20_all/release/cache_func/start.S:129
bfc0045c:	1213000e 	beq	s0,s3,bfc00498 <test_end+0x44>
/media/sf_ucas19_20_all/release/cache_func/start.S:130
bfc00460:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:132
bfc00464:	3c04bfb0 	lui	a0,0xbfb0
bfc00468:	2484f000 	addiu	a0,a0,-4096
/media/sf_ucas19_20_all/release/cache_func/start.S:133
bfc0046c:	3c05bfb0 	lui	a1,0xbfb0
bfc00470:	24a5f008 	addiu	a1,a1,-4088
/media/sf_ucas19_20_all/release/cache_func/start.S:134
bfc00474:	3c06bfb0 	lui	a2,0xbfb0
bfc00478:	24c6f004 	addiu	a2,a2,-4092
/media/sf_ucas19_20_all/release/cache_func/start.S:136
bfc0047c:	3c090000 	lui	t1,0x0
bfc00480:	25290002 	addiu	t1,t1,2
/media/sf_ucas19_20_all/release/cache_func/start.S:138
bfc00484:	ac800000 	sw	zero,0(a0)
/media/sf_ucas19_20_all/release/cache_func/start.S:139
bfc00488:	aca90000 	sw	t1,0(a1)
/media/sf_ucas19_20_all/release/cache_func/start.S:140
bfc0048c:	acc90000 	sw	t1,0(a2)
/media/sf_ucas19_20_all/release/cache_func/start.S:141
bfc00490:	10000009 	b	bfc004b8 <test_end+0x64>
/media/sf_ucas19_20_all/release/cache_func/start.S:142
bfc00494:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:144
bfc00498:	3c090000 	lui	t1,0x0
bfc0049c:	25290001 	addiu	t1,t1,1
/media/sf_ucas19_20_all/release/cache_func/start.S:145
bfc004a0:	3c04bfb0 	lui	a0,0xbfb0
bfc004a4:	2484f008 	addiu	a0,a0,-4088
/media/sf_ucas19_20_all/release/cache_func/start.S:146
bfc004a8:	3c05bfb0 	lui	a1,0xbfb0
bfc004ac:	24a5f004 	addiu	a1,a1,-4092
/media/sf_ucas19_20_all/release/cache_func/start.S:147
bfc004b0:	ac890000 	sw	t1,0(a0)
/media/sf_ucas19_20_all/release/cache_func/start.S:148
bfc004b4:	aca90000 	sw	t1,0(a1)
/media/sf_ucas19_20_all/release/cache_func/start.S:151
bfc004b8:	3c08bfc0 	lui	t0,0xbfc0
bfc004bc:	25080100 	addiu	t0,t0,256
/media/sf_ucas19_20_all/release/cache_func/start.S:152
bfc004c0:	3c092000 	lui	t1,0x2000
/media/sf_ucas19_20_all/release/cache_func/start.S:153
bfc004c4:	01284025 	or	t0,t1,t0
/media/sf_ucas19_20_all/release/cache_func/start.S:154
bfc004c8:	01000008 	jr	t0
/media/sf_ucas19_20_all/release/cache_func/start.S:155
bfc004cc:	00000000 	nop

bfc004d0 <wait_1s>:
/media/sf_ucas19_20_all/release/cache_func/start.S:158
bfc004d0:	3c08bfb0 	lui	t0,0xbfb0
bfc004d4:	2508f02c 	addiu	t0,t0,-4052
/media/sf_ucas19_20_all/release/cache_func/start.S:159
bfc004d8:	3c090001 	lui	t1,0x1
bfc004dc:	2529aaaa 	addiu	t1,t1,-21846
/media/sf_ucas19_20_all/release/cache_func/start.S:162
bfc004e0:	8d0a0000 	lw	t2,0(t0)
/media/sf_ucas19_20_all/release/cache_func/start.S:164
bfc004e4:	01495026 	xor	t2,t2,t1
/media/sf_ucas19_20_all/release/cache_func/start.S:166
bfc004e8:	000a5a40 	sll	t3,t2,0x9
/media/sf_ucas19_20_all/release/cache_func/start.S:168
bfc004ec:	256b0001 	addiu	t3,t3,1

bfc004f0 <sub1>:
/media/sf_ucas19_20_all/release/cache_func/start.S:172
bfc004f0:	256bffff 	addiu	t3,t3,-1
/media/sf_ucas19_20_all/release/cache_func/start.S:175
bfc004f4:	8d0a0000 	lw	t2,0(t0)
/media/sf_ucas19_20_all/release/cache_func/start.S:177
bfc004f8:	01495026 	xor	t2,t2,t1
/media/sf_ucas19_20_all/release/cache_func/start.S:179
bfc004fc:	000a5240 	sll	t2,t2,0x9
/media/sf_ucas19_20_all/release/cache_func/start.S:181
bfc00500:	016a602b 	sltu	t4,t3,t2
/media/sf_ucas19_20_all/release/cache_func/start.S:183
bfc00504:	15800002 	bnez	t4,bfc00510 <sub1+0x20>
/media/sf_ucas19_20_all/release/cache_func/start.S:184
bfc00508:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:185
bfc0050c:	254b0000 	addiu	t3,t2,0
/media/sf_ucas19_20_all/release/cache_func/start.S:188
bfc00510:	1560fff7 	bnez	t3,bfc004f0 <sub1>
/media/sf_ucas19_20_all/release/cache_func/start.S:189
bfc00514:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/start.S:190
bfc00518:	03e00008 	jr	ra
/media/sf_ucas19_20_all/release/cache_func/start.S:191
bfc0051c:	00000000 	nop

bfc00520 <n1_ic_idx_inv_test>:
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:7
bfc00520:	26100001 	addiu	s0,s0,1
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:8
bfc00524:	24120000 	li	s2,0
	...

bfc00540 <code_block>:
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:15
bfc00540:	1000000b 	b	bfc00570 <change_code>
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:16
bfc00544:	00000000 	nop
	...

bfc00550 <code_to_be_changed>:
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:20
bfc00550:	0bf00172 	j	bfc005c8 <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:21
bfc00554:	00000000 	nop
	...

bfc00560 <new_code>:
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:28
bfc00560:	0bf0016f 	j	bfc005bc <inst_pass>
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:29
bfc00564:	00000000 	nop
	...

bfc00570 <change_code>: //for n1
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:35
bfc00570:	3c08bfc0 	lui	t0,0xbfc0
bfc00574:	25080550 	addiu	t0,t0,1360
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:37
bfc00578:	3c092000 	lui	t1,0x2000
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:38
bfc0057c:	01284025 	or	t0,t1,t0
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:40
bfc00580:	3c09bfc0 	lui	t1,0xbfc0
bfc00584:	25290560 	addiu	t1,t1,1376
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:41
bfc00588:	8d2a0000 	lw	t2,0(t1)
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:42
bfc0058c:	ad0a0000 	sw	t2,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:46
bfc00590:	3c08bfc0 	lui	t0,0xbfc0
bfc00594:	25080540 	addiu	t0,t0,1344
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:48
bfc00598:	24090fe0 	li	t1,4064
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:49
bfc0059c:	01284024 	and	t0,t1,t0
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:51
bfc005a0:	3c098000 	lui	t1,0x8000
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:52
bfc005a4:	01094025 	or	t0,t0,t1
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:55
bfc005a8:	bd000000 	0xbd000000 //cache ICIndexInv, 0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:58
bfc005ac:	35081000 	ori	t0,t0,0x1000
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:60
bfc005b0:	bd000000 	0xbd000000 //cache ICIndexInv, 0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:64
bfc005b4:	1000ffe6 	b	bfc00550 <code_to_be_changed>
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:65
bfc005b8:	00000000 	nop

bfc005bc <inst_pass>:
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:69
bfc005bc:	16400002 	bnez	s2,bfc005c8 <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:70
bfc005c0:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:72
bfc005c4:	26730001 	addiu	s3,s3,1

bfc005c8 <inst_error>:
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:75
bfc005c8:	00104e00 	sll	t1,s0,0x18
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:76
bfc005cc:	01334025 	or	t0,t1,s3
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:77
bfc005d0:	ae280000 	sw	t0,0(s1)
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:78
bfc005d4:	03e00008 	jr	ra
/media/sf_ucas19_20_all/release/cache_func/inst/n1_ic_idx_inv.S:79
bfc005d8:	00000000 	nop
inst_error():
bfc005dc:	00000000 	nop

bfc005e0 <n5_dc_idx_sttag_test>:
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:7
bfc005e0:	26100001 	addiu	s0,s0,1
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:8
bfc005e4:	24120000 	li	s2,0
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:13
bfc005e8:	3c08a00d 	lui	t0,0xa00d
bfc005ec:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:14
bfc005f0:	3c09bad0 	lui	t1,0xbad0
bfc005f4:	3529beef 	ori	t1,t1,0xbeef
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:15
bfc005f8:	ad090000 	sw	t1,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:17
bfc005fc:	3c08800d 	lui	t0,0x800d
bfc00600:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:18
bfc00604:	3c0ac0ff 	lui	t2,0xc0ff
bfc00608:	354aee00 	ori	t2,t2,0xee00
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:19
bfc0060c:	ad0a0000 	sw	t2,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:21
bfc00610:	3c098000 	lui	t1,0x8000
bfc00614:	35290fe0 	ori	t1,t1,0xfe0
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:22
bfc00618:	01094024 	and	t0,t0,t1
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:24
bfc0061c:	bd090000 	0xbd090000
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:26
bfc00620:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:28
bfc00624:	35081000 	ori	t0,t0,0x1000
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:30
bfc00628:	bd090000 	0xbd090000
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:32
bfc0062c:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:34
bfc00630:	3c08800d 	lui	t0,0x800d
bfc00634:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:35
bfc00638:	8d080000 	lw	t0,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:36
bfc0063c:	3c09bad0 	lui	t1,0xbad0
bfc00640:	3529beef 	ori	t1,t1,0xbeef
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:37
bfc00644:	15090004 	bne	t0,t1,bfc00658 <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:38
bfc00648:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:40
bfc0064c:	16400002 	bnez	s2,bfc00658 <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:41
bfc00650:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:43
bfc00654:	26730001 	addiu	s3,s3,1

bfc00658 <inst_error>:
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:46
bfc00658:	00104e00 	sll	t1,s0,0x18
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:47
bfc0065c:	01334025 	or	t0,t1,s3
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:48
bfc00660:	ae280000 	sw	t0,0(s1)
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:49
bfc00664:	03e00008 	jr	ra
/media/sf_ucas19_20_all/release/cache_func/inst/n5_dc_idx_sttag.S:50
bfc00668:	00000000 	nop
bfc0066c:	00000000 	nop

bfc00670 <n4_dc_idx_wbinv_test>:
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:7
bfc00670:	26100001 	addiu	s0,s0,1
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:8
bfc00674:	24120000 	li	s2,0
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:13
bfc00678:	3c08a00d 	lui	t0,0xa00d
bfc0067c:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:14
bfc00680:	3c09bad0 	lui	t1,0xbad0
bfc00684:	3529beef 	ori	t1,t1,0xbeef
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:15
bfc00688:	ad090000 	sw	t1,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:17
bfc0068c:	3c08800d 	lui	t0,0x800d
bfc00690:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:18
bfc00694:	3c0ac0ff 	lui	t2,0xc0ff
bfc00698:	354aee00 	ori	t2,t2,0xee00
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:19
bfc0069c:	ad0a0000 	sw	t2,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:21
bfc006a0:	3c098000 	lui	t1,0x8000
bfc006a4:	35290fe0 	ori	t1,t1,0xfe0
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:22
bfc006a8:	01094024 	and	t0,t0,t1
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:24
bfc006ac:	bd010000 	0xbd010000
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:26
bfc006b0:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:28
bfc006b4:	35081000 	ori	t0,t0,0x1000
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:30
bfc006b8:	bd010000 	0xbd010000
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:32
bfc006bc:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:34
bfc006c0:	3c08a00d 	lui	t0,0xa00d
bfc006c4:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:35
bfc006c8:	8d080000 	lw	t0,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:36
bfc006cc:	150a0004 	bne	t0,t2,bfc006e0 <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:37
bfc006d0:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:39
bfc006d4:	16400002 	bnez	s2,bfc006e0 <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:40
bfc006d8:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:42
bfc006dc:	26730001 	addiu	s3,s3,1

bfc006e0 <inst_error>:
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:45
bfc006e0:	00104e00 	sll	t1,s0,0x18
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:46
bfc006e4:	01334025 	or	t0,t1,s3
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:47
bfc006e8:	ae280000 	sw	t0,0(s1)
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:48
bfc006ec:	03e00008 	jr	ra
/media/sf_ucas19_20_all/release/cache_func/inst/n4_dc_idx_wbinv.S:49
bfc006f0:	00000000 	nop
	...

bfc00700 <n6_dc_hit_inv_test>:
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:7
bfc00700:	26100001 	addiu	s0,s0,1
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:8
bfc00704:	24120000 	li	s2,0
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:13
bfc00708:	3c08a00d 	lui	t0,0xa00d
bfc0070c:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:14
bfc00710:	3c09bad0 	lui	t1,0xbad0
bfc00714:	3529beef 	ori	t1,t1,0xbeef
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:15
bfc00718:	ad090000 	sw	t1,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:17
bfc0071c:	3c08800d 	lui	t0,0x800d
bfc00720:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:18
bfc00724:	3c0ac0ff 	lui	t2,0xc0ff
bfc00728:	354aee00 	ori	t2,t2,0xee00
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:19
bfc0072c:	ad0a0000 	sw	t2,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:22
bfc00730:	bd110000 	0xbd110000
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:25
bfc00734:	3c08800d 	lui	t0,0x800d
bfc00738:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:26
bfc0073c:	8d080000 	lw	t0,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:27
bfc00740:	3c09bad0 	lui	t1,0xbad0
bfc00744:	3529beef 	ori	t1,t1,0xbeef
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:28
bfc00748:	15090004 	bne	t0,t1,bfc0075c <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:29
bfc0074c:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:31
bfc00750:	16400002 	bnez	s2,bfc0075c <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:32
bfc00754:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:34
bfc00758:	26730001 	addiu	s3,s3,1

bfc0075c <inst_error>:
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:37
bfc0075c:	00104e00 	sll	t1,s0,0x18
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:38
bfc00760:	01334025 	or	t0,t1,s3
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:39
bfc00764:	ae280000 	sw	t0,0(s1)
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:40
bfc00768:	03e00008 	jr	ra
/media/sf_ucas19_20_all/release/cache_func/inst/n6_dc_hit_inv.S:41
bfc0076c:	00000000 	nop

bfc00770 <n7_dc_hit_wbinv_test>:
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:7
bfc00770:	26100001 	addiu	s0,s0,1
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:8
bfc00774:	24120000 	li	s2,0
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:13
bfc00778:	3c08a00d 	lui	t0,0xa00d
bfc0077c:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:14
bfc00780:	3c09bad0 	lui	t1,0xbad0
bfc00784:	3529beef 	ori	t1,t1,0xbeef
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:15
bfc00788:	ad090000 	sw	t1,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:17
bfc0078c:	3c08800d 	lui	t0,0x800d
bfc00790:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:18
bfc00794:	3c0ac0ff 	lui	t2,0xc0ff
bfc00798:	354aee00 	ori	t2,t2,0xee00
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:19
bfc0079c:	ad0a0000 	sw	t2,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:22
bfc007a0:	bd150000 	0xbd150000
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:25
bfc007a4:	3c08a00d 	lui	t0,0xa00d
bfc007a8:	35080020 	ori	t0,t0,0x20
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:26
bfc007ac:	8d080000 	lw	t0,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:27
bfc007b0:	150a0004 	bne	t0,t2,bfc007c4 <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:28
bfc007b4:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:30
bfc007b8:	16400002 	bnez	s2,bfc007c4 <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:31
bfc007bc:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:33
bfc007c0:	26730001 	addiu	s3,s3,1

bfc007c4 <inst_error>:
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:36
bfc007c4:	00104e00 	sll	t1,s0,0x18
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:37
bfc007c8:	01334025 	or	t0,t1,s3
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:38
bfc007cc:	ae280000 	sw	t0,0(s1)
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:39
bfc007d0:	03e00008 	jr	ra
/media/sf_ucas19_20_all/release/cache_func/inst/n7_dc_hit_wbinv.S:40
bfc007d4:	00000000 	nop
	...

bfc007e0 <n2_ic_idx_sttag_test>:
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:7
bfc007e0:	26100001 	addiu	s0,s0,1
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:8
bfc007e4:	24120000 	li	s2,0
	...

bfc00800 <code_block>:
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:15
bfc00800:	1000000b 	b	bfc00830 <change_code>
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:16
bfc00804:	00000000 	nop
	...

bfc00810 <code_to_be_changed>:
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:20
bfc00810:	0bf00227 	j	bfc0089c <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:21
bfc00814:	00000000 	nop
	...

bfc00820 <new_code>:
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:28
bfc00820:	0bf00224 	j	bfc00890 <inst_pass>
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:29
bfc00824:	00000000 	nop
	...

bfc00830 <change_code>:
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:35
bfc00830:	3c08bfc0 	lui	t0,0xbfc0
bfc00834:	25080810 	addiu	t0,t0,2064
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:37
bfc00838:	3c092000 	lui	t1,0x2000
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:38
bfc0083c:	01284025 	or	t0,t1,t0
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:40
bfc00840:	3c09bfc0 	lui	t1,0xbfc0
bfc00844:	25290820 	addiu	t1,t1,2080
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:41
bfc00848:	8d2a0000 	lw	t2,0(t1)
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:42
bfc0084c:	ad0a0000 	sw	t2,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:46
bfc00850:	3c08bfc0 	lui	t0,0xbfc0
bfc00854:	25080800 	addiu	t0,t0,2048
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:48
bfc00858:	24090fe0 	li	t1,4064
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:49
bfc0085c:	01284024 	and	t0,t1,t0
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:51
bfc00860:	3c098000 	lui	t1,0x8000
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:52
bfc00864:	01094025 	or	t0,t0,t1
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:55
bfc00868:	bd080000 	0xbd080000 //cache ICIndexStTag, 0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:58
bfc0086c:	35081000 	ori	t0,t0,0x1000
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:60
bfc00870:	bd080000 	0xbd080000 //cache ICIndexStTag, 0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:64
bfc00874:	3c08bfc0 	lui	t0,0xbfc0
bfc00878:	25080810 	addiu	t0,t0,2064
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:65
bfc0087c:	3c09dfff 	lui	t1,0xdfff
bfc00880:	3529ffff 	ori	t1,t1,0xffff
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:66
bfc00884:	01284024 	and	t0,t1,t0
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:67
bfc00888:	01000008 	jr	t0
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:68
bfc0088c:	00000000 	nop

bfc00890 <inst_pass>:
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:72
bfc00890:	16400002 	bnez	s2,bfc0089c <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:73
bfc00894:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:75
bfc00898:	26730001 	addiu	s3,s3,1

bfc0089c <inst_error>:
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:78
bfc0089c:	00104e00 	sll	t1,s0,0x18
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:79
bfc008a0:	01334025 	or	t0,t1,s3
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:80
bfc008a4:	ae280000 	sw	t0,0(s1)
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:81
bfc008a8:	03e00008 	jr	ra
/media/sf_ucas19_20_all/release/cache_func/inst/n2_ic_idx_sttag.S:82
bfc008ac:	00000000 	nop
	...

bfc008c0 <n3_ic_hit_inv_test>:
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:7
bfc008c0:	26100001 	addiu	s0,s0,1
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:8
bfc008c4:	24120000 	li	s2,0
	...

bfc008e0 <code_block>:
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:15
bfc008e0:	1000000b 	b	bfc00910 <change_code>
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:16
bfc008e4:	00000000 	nop
	...

bfc008f0 <code_to_be_changed>:
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:20
bfc008f0:	0bf00257 	j	bfc0095c <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:21
bfc008f4:	00000000 	nop
	...

bfc00900 <new_code>:
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:28
bfc00900:	0bf00254 	j	bfc00950 <inst_pass>
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:29
bfc00904:	00000000 	nop
	...

bfc00910 <change_code>:
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:35
bfc00910:	3c08bfc0 	lui	t0,0xbfc0
bfc00914:	250808f0 	addiu	t0,t0,2288
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:37
bfc00918:	3c092000 	lui	t1,0x2000
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:38
bfc0091c:	01284025 	or	t0,t1,t0
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:40
bfc00920:	3c09bfc0 	lui	t1,0xbfc0
bfc00924:	25290900 	addiu	t1,t1,2304
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:41
bfc00928:	8d2a0000 	lw	t2,0(t1)
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:42
bfc0092c:	ad0a0000 	sw	t2,0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:46
bfc00930:	3c08bfc0 	lui	t0,0xbfc0
bfc00934:	250808e0 	addiu	t0,t0,2272
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:48
bfc00938:	3c09dfff 	lui	t1,0xdfff
bfc0093c:	3529ffff 	ori	t1,t1,0xffff
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:49
bfc00940:	01094024 	and	t0,t0,t1
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:52
bfc00944:	bd100000 	0xbd100000 //cache ICHitInv, 0(t0)
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:56
bfc00948:	1000ffe9 	b	bfc008f0 <code_to_be_changed>
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:57
bfc0094c:	00000000 	nop

bfc00950 <inst_pass>:
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:61
bfc00950:	16400002 	bnez	s2,bfc0095c <inst_error>
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:62
bfc00954:	00000000 	nop
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:64
bfc00958:	26730001 	addiu	s3,s3,1

bfc0095c <inst_error>:
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:67
bfc0095c:	00104e00 	sll	t1,s0,0x18
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:68
bfc00960:	01334025 	or	t0,t1,s3
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:69
bfc00964:	ae280000 	sw	t0,0(s1)
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:70
bfc00968:	03e00008 	jr	ra
/media/sf_ucas19_20_all/release/cache_func/inst/n3_ic_hit_inv.S:71
bfc0096c:	00000000 	nop
	...
bfc00980:	980b7f70 	lwr	t3,32624(zero)
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
  14:	00000520 	0x520
	...
  20:	0000001c 	0x1c
  24:	005c0002 	0x5c0002
  28:	00040000 	sll	zero,a0,0x0
  2c:	00000000 	nop
  30:	bfc00520 	0xbfc00520
  34:	000000bc 	0xbc
	...
  40:	0000001c 	0x1c
  44:	00c50002 	0xc50002
  48:	00040000 	sll	zero,a0,0x0
  4c:	00000000 	nop
  50:	bfc005e0 	0xbfc005e0
  54:	0000008c 	syscall	0x2
	...
  60:	0000001c 	0x1c
  64:	01300002 	0x1300002
  68:	00040000 	sll	zero,a0,0x0
  6c:	00000000 	nop
  70:	bfc00670 	0xbfc00670
  74:	00000084 	0x84
	...
  80:	0000001c 	0x1c
  84:	019b0002 	0x19b0002
  88:	00040000 	sll	zero,a0,0x0
  8c:	00000000 	nop
  90:	bfc00700 	0xbfc00700
  94:	00000070 	0x70
	...
  a0:	0000001c 	0x1c
  a4:	02040002 	0x2040002
  a8:	00040000 	sll	zero,a0,0x0
  ac:	00000000 	nop
  b0:	bfc00770 	0xbfc00770
  b4:	00000068 	0x68
	...
  c0:	0000001c 	0x1c
  c4:	026f0002 	0x26f0002
  c8:	00040000 	sll	zero,a0,0x0
  cc:	00000000 	nop
  d0:	bfc007e0 	0xbfc007e0
  d4:	000000d0 	0xd0
	...
  e0:	0000001c 	0x1c
  e4:	02da0002 	0x2da0002
  e8:	00040000 	sll	zero,a0,0x0
  ec:	00000000 	nop
  f0:	bfc008c0 	0xbfc008c0
  f4:	000000b0 	0xb0
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	bfc00520 	0xbfc00520
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	bfc005e0 	0xbfc005e0
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	bfc00670 	0xbfc00670
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	bfc00700 	0xbfc00700
	...
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	bfc00770 	0xbfc00770
	...
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	bfc007e0 	0xbfc007e0
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	bfc008c0 	0xbfc008c0
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000b2 	0xb2
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
  30:	e8080111 	swc2	$8,273(zero)
  34:	4d4b4b4b 	0x4d4b4b4b
  38:	834b8383 	lb	t3,-31869(k0)
  3c:	4b4b4b4d 	c2	0x14b4b4d
  40:	84024b4b 	lh	v0,19275(zero)
  44:	4b4b1601 	c2	0x14b1601
  48:	4d4b4b4b 	0x4d4b4b4b
  4c:	4b4c4b4b 	c2	0x14c4b4b
  50:	024b4b4b 	0x24b4b4b
  54:	831901e4 	lb	t9,484(t8)
  58:	1602f802 	bne	s0,v0,ffffe064 <_etext+0x403fd6cc>
  5c:	4b4b4b4b 	c2	0x14b4b4b
  60:	83838350 	lb	v1,-31920(gp)
  64:	83838384 	lb	v1,-31868(gp)
  68:	4b4b4b4c 	c2	0x14b4b4c
  6c:	4b4b4c4b 	c2	0x14b4c4b
  70:	4b4b4b4b 	c2	0x14b4b4b
  74:	4b4b4b4b 	c2	0x14b4b4b
  78:	4b4b4b4b 	c2	0x14b4b4b
  7c:	4b4b4b4b 	c2	0x14b4b4b
  80:	4b4b4b4b 	c2	0x14b4b4b
  84:	4b4b4b4b 	c2	0x14b4b4b
  88:	4b834d4b 	c2	0x1834d4b
  8c:	8483834c 	lh	v1,-31924(a0)
  90:	4b4b4b84 	c2	0x14b4b84
  94:	83834c4b 	lb	v1,19531(gp)
  98:	834d4b83 	lb	t5,19331(k0)
  9c:	4d4b4b4b 	0x4d4b4b4b
  a0:	4c4c8583 	0x4c4c8583
  a4:	4c4d4e4c 	0x4c4d4e4c
  a8:	4b4c4c4c 	c2	0x14c4c4c
  ac:	4b4b4d4b 	c2	0x14b4d4b
  b0:	0004024b 	0x4024b
  b4:	005f0101 	0x5f0101
  b8:	00020000 	sll	zero,v0,0x0
  bc:	00000026 	xor	zero,zero,zero
  c0:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
  c4:	0101000d 	break	0x101
  c8:	00000101 	0x101
  cc:	00000100 	sll	zero,zero,0x4
  d0:	316e0001 	andi	t6,t3,0x1
  d4:	5f63695f 	0x5f63695f
  d8:	5f786469 	0x5f786469
  dc:	2e766e69 	sltiu	s6,s3,28265
  e0:	00000053 	0x53
  e4:	05000000 	bltz	t0,e8 <data_size+0xd8>
  e8:	c0052002 	lwc0	$5,8194(zero)
  ec:	084b18bf 	j	12c62fc <data_size+0x12c62ec>
  f0:	4b4b4bb3 	c2	0x14b4bb3
  f4:	4b4b4b4c 	c2	0x14b4b4c
  f8:	4b4b4b4f 	c2	0x14b4b4f
  fc:	4c4b844e 	0x4c4b844e
 100:	844e4b83 	lh	t6,19331(v0)
 104:	4d4b4c4b 	0x4d4b4c4b
 108:	4b4e4c4d 	c2	0x14e4c4d
 10c:	4d4c4b4e 	0x4d4c4b4e
 110:	4b4b4b4b 	c2	0x14b4b4b
 114:	01000402 	0x1000402
 118:	00005601 	0x5601
 11c:	28000200 	slti	zero,zero,512
 120:	01000000 	0x1000000
 124:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 128:	01010100 	0x1010100
 12c:	00000001 	0x1
 130:	01000001 	0x1000001
 134:	5f356e00 	0x5f356e00
 138:	695f6364 	0x695f6364
 13c:	735f7864 	0x735f7864
 140:	67617474 	0x67617474
 144:	0000532e 	0x532e
 148:	00000000 	nop
 14c:	05e00205 	bltz	t7,964 <data_size+0x954>
 150:	4b18bfc0 	c2	0x118bfc0
 154:	4c83834f 	0x4c83834f
 158:	834c8383 	lb	t4,-31869(k0)
 15c:	4c4c4c4c 	0x4c4c4c4c
 160:	4b834c4c 	c2	0x1834c4c
 164:	4b4c4b83 	c2	0x14c4b83
 168:	4b4b4d4c 	c2	0x14b4d4c
 16c:	04024b4b 	0x4024b4b
 170:	55010100 	0x55010100
 174:	02000000 	0x2000000
 178:	00002800 	sll	a1,zero,0x0
 17c:	fb010100 	0xfb010100
 180:	01000d0e 	0x1000d0e
 184:	00010101 	0x10101
 188:	00010000 	sll	zero,at,0x0
 18c:	6e000100 	0x6e000100
 190:	63645f34 	0x63645f34
 194:	7864695f 	0x7864695f
 198:	6962775f 	0x6962775f
 19c:	532e766e 	0x532e766e
 1a0:	00000000 	nop
 1a4:	02050000 	0x2050000
 1a8:	bfc00670 	0xbfc00670
 1ac:	834f4b18 	lb	t7,19224(k0)
 1b0:	83834c83 	lb	v1,19587(gp)
 1b4:	4c4c834c 	0x4c4c834c
 1b8:	4c4c4c4c 	0x4c4c4c4c
 1bc:	4c4b4b83 	0x4c4b4b83
 1c0:	4b4d4c4b 	c2	0x14d4c4b
 1c4:	024b4b4b 	0x24b4b4b
 1c8:	01010004 	sllv	zero,at,t0
 1cc:	0000004e 	0x4e
 1d0:	00260002 	0x260002
 1d4:	01010000 	0x1010000
 1d8:	000d0efb 	0xd0efb
 1dc:	01010101 	0x1010101
 1e0:	01000000 	0x1000000
 1e4:	00010000 	sll	zero,at,0x0
 1e8:	645f366e 	0x645f366e
 1ec:	69685f63 	0x69685f63
 1f0:	6e695f74 	0x6e695f74
 1f4:	00532e76 	0x532e76
 1f8:	00000000 	nop
 1fc:	00020500 	sll	zero,v0,0x14
 200:	18bfc007 	0x18bfc007
 204:	83834f4b 	lb	v1,20299(gp)
 208:	4d83834c 	0x4d83834c
 20c:	834b834d 	lb	t3,-31923(k0)
 210:	4c4b4c4b 	0x4c4b4c4b
 214:	4b4b4b4d 	c2	0x14b4b4d
 218:	0004024b 	0x4024b
 21c:	004f0101 	0x4f0101
 220:	00020000 	sll	zero,v0,0x0
 224:	00000028 	0x28
 228:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
 22c:	0101000d 	break	0x101
 230:	00000101 	0x101
 234:	00000100 	sll	zero,zero,0x4
 238:	376e0001 	ori	t6,k1,0x1
 23c:	5f63645f 	0x5f63645f
 240:	5f746968 	0x5f746968
 244:	6e696277 	0x6e696277
 248:	00532e76 	0x532e76
 24c:	00000000 	nop
 250:	70020500 	0x70020500
 254:	18bfc007 	0x18bfc007
 258:	83834f4b 	lb	v1,20299(gp)
 25c:	4d83834c 	0x4d83834c
 260:	4b4b834d 	c2	0x14b834d
 264:	4d4c4b4c 	0x4d4c4b4c
 268:	4b4b4b4b 	c2	0x14b4b4b
 26c:	01000402 	0x1000402
 270:	00006401 	0x6401
 274:	28000200 	slti	zero,zero,512
 278:	01000000 	0x1000000
 27c:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 280:	01010100 	0x1010100
 284:	00000001 	0x1
 288:	01000001 	0x1000001
 28c:	5f326e00 	0x5f326e00
 290:	695f6369 	0x695f6369
 294:	735f7864 	0x735f7864
 298:	67617474 	0x67617474
 29c:	0000532e 	0x532e
 2a0:	00000000 	nop
 2a4:	07e00205 	bltz	ra,abc <data_size+0xaac>
 2a8:	4b18bfc0 	c2	0x118bfc0
 2ac:	4b4bb308 	c2	0x14bb308
 2b0:	4b4b4c4b 	c2	0x14b4c4b
 2b4:	4b4b4f4b 	c2	0x14b4f4b
 2b8:	4b844e4b 	c2	0x1844e4b
 2bc:	4e4b834c 	c3	0x4b834c
 2c0:	4b4c4b84 	c2	0x14c4b84
 2c4:	4e4c4d4d 	c3	0x4c4d4d
 2c8:	4b4b8383 	c2	0x14b8383
 2cc:	4d4c4b4e 	0x4d4c4b4e
 2d0:	4b4b4b4b 	c2	0x14b4b4b
 2d4:	01000402 	0x1000402
 2d8:	00005b01 	0x5b01
 2dc:	26000200 	addiu	zero,s0,512
 2e0:	01000000 	0x1000000
 2e4:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
 2e8:	01010100 	0x1010100
 2ec:	00000001 	0x1
 2f0:	01000001 	0x1000001
 2f4:	5f336e00 	0x5f336e00
 2f8:	685f6369 	0x685f6369
 2fc:	695f7469 	0x695f7469
 300:	532e766e 	0x532e766e
 304:	00000000 	nop
 308:	02050000 	0x2050000
 30c:	bfc008c0 	0xbfc008c0
 310:	b3084b18 	0xb3084b18
 314:	4c4b4b4b 	0x4c4b4b4b
 318:	4f4b4b4b 	c3	0x14b4b4b
 31c:	4e4b4b4b 	c3	0x4b4b4b
 320:	834c4b84 	lb	t4,19332(k0)
 324:	83844e4b 	lb	a0,20043(gp)
 328:	4e4b4e4d 	c3	0x4b4e4d
 32c:	4b4d4c4b 	c2	0x14d4c4b
 330:	024b4b4b 	0x24b4b4b
 334:	01010004 	sllv	zero,at,t0

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000058 	0x58
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000000 	nop
  10:	bfc00000 	0xbfc00000
  14:	bfc00520 	0xbfc00520
  18:	72617473 	0x72617473
  1c:	00532e74 	0x532e74
  20:	64656d2f 	0x64656d2f
  24:	732f6169 	0x732f6169
  28:	63755f66 	0x63755f66
  2c:	39317361 	xori	s1,t1,0x7361
  30:	5f30325f 	0x5f30325f
  34:	2f6c6c61 	sltiu	t4,k1,27745
  38:	656c6572 	0x656c6572
  3c:	2f657361 	sltiu	a1,k1,29537
  40:	68636163 	0x68636163
  44:	75665f65 	jalx	5997d94 <data_size+0x5997d84>
  48:	4700636e 	c1	0x100636e
  4c:	4120554e 	0x4120554e
  50:	2e322053 	sltiu	s2,s1,8275
  54:	352e3831 	ori	t6,t1,0x3831
  58:	80010030 	lb	at,48(zero)
  5c:	00000065 	0x65
  60:	00140002 	srl	zero,s4,0x0
  64:	01040000 	0x1040000
  68:	000000b6 	0xb6
  6c:	bfc00520 	0xbfc00520
  70:	bfc005dc 	0xbfc005dc
  74:	695f316e 	0x695f316e
  78:	64695f63 	0x64695f63
  7c:	6e695f78 	0x6e695f78
  80:	00532e76 	0x532e76
  84:	64656d2f 	0x64656d2f
  88:	732f6169 	0x732f6169
  8c:	63755f66 	0x63755f66
  90:	39317361 	xori	s1,t1,0x7361
  94:	5f30325f 	0x5f30325f
  98:	2f6c6c61 	sltiu	t4,k1,27745
  9c:	656c6572 	0x656c6572
  a0:	2f657361 	sltiu	a1,k1,29537
  a4:	68636163 	0x68636163
  a8:	75665f65 	jalx	5997d94 <data_size+0x5997d84>
  ac:	692f636e 	0x692f636e
  b0:	0074736e 	0x74736e
  b4:	20554e47 	addi	s5,v0,20039
  b8:	32205341 	andi	zero,s1,0x5341
  bc:	2e38312e 	sltiu	t8,s1,12590
  c0:	01003035 	0x1003035
  c4:	00006780 	sll	t4,zero,0x1e
  c8:	28000200 	slti	zero,zero,512
  cc:	04000000 	bltz	zero,d0 <data_size+0xc0>
  d0:	00011901 	0x11901
  d4:	c005e000 	lwc0	$5,-8192(zero)
  d8:	c0066cbf 	lwc0	$6,27839(zero)
  dc:	5f356ebf 	0x5f356ebf
  e0:	695f6364 	0x695f6364
  e4:	735f7864 	0x735f7864
  e8:	67617474 	0x67617474
  ec:	2f00532e 	sltiu	zero,t8,21294
  f0:	6964656d 	0x6964656d
  f4:	66732f61 	0x66732f61
  f8:	6163755f 	0x6163755f
  fc:	5f393173 	0x5f393173
 100:	615f3032 	0x615f3032
 104:	722f6c6c 	0x722f6c6c
 108:	61656c65 	0x61656c65
 10c:	632f6573 	0x632f6573
 110:	65686361 	0x65686361
 114:	6e75665f 	0x6e75665f
 118:	6e692f63 	0x6e692f63
 11c:	47007473 	c1	0x1007473
 120:	4120554e 	0x4120554e
 124:	2e322053 	sltiu	s2,s1,8275
 128:	352e3831 	ori	t6,t1,0x3831
 12c:	80010030 	lb	at,48(zero)
 130:	00000067 	0x67
 134:	003c0002 	0x3c0002
 138:	01040000 	0x1040000
 13c:	00000173 	0x173
 140:	bfc00670 	0xbfc00670
 144:	bfc006f4 	0xbfc006f4
 148:	645f346e 	0x645f346e
 14c:	64695f63 	0x64695f63
 150:	62775f78 	0x62775f78
 154:	2e766e69 	sltiu	s6,s3,28265
 158:	6d2f0053 	0x6d2f0053
 15c:	61696465 	0x61696465
 160:	5f66732f 	0x5f66732f
 164:	73616375 	0x73616375
 168:	325f3931 	andi	ra,s2,0x3931
 16c:	6c615f30 	0x6c615f30
 170:	65722f6c 	0x65722f6c
 174:	7361656c 	0x7361656c
 178:	61632f65 	0x61632f65
 17c:	5f656863 	0x5f656863
 180:	636e7566 	0x636e7566
 184:	736e692f 	0x736e692f
 188:	4e470074 	c3	0x470074
 18c:	53412055 	0x53412055
 190:	312e3220 	andi	t6,t1,0x3220
 194:	30352e38 	andi	s5,at,0x2e38
 198:	65800100 	0x65800100
 19c:	02000000 	0x2000000
 1a0:	00005000 	sll	t2,zero,0x0
 1a4:	cc010400 	lwc3	$1,1024(zero)
 1a8:	00000001 	0x1
 1ac:	70bfc007 	0x70bfc007
 1b0:	6ebfc007 	0x6ebfc007
 1b4:	63645f36 	0x63645f36
 1b8:	7469685f 	jalx	1a5a17c <data_size+0x1a5a16c>
 1bc:	766e695f 	jalx	9b9a57c <data_size+0x9b9a56c>
 1c0:	2f00532e 	sltiu	zero,t8,21294
 1c4:	6964656d 	0x6964656d
 1c8:	66732f61 	0x66732f61
 1cc:	6163755f 	0x6163755f
 1d0:	5f393173 	0x5f393173
 1d4:	615f3032 	0x615f3032
 1d8:	722f6c6c 	0x722f6c6c
 1dc:	61656c65 	0x61656c65
 1e0:	632f6573 	0x632f6573
 1e4:	65686361 	0x65686361
 1e8:	6e75665f 	0x6e75665f
 1ec:	6e692f63 	0x6e692f63
 1f0:	47007473 	c1	0x1007473
 1f4:	4120554e 	0x4120554e
 1f8:	2e322053 	sltiu	s2,s1,8275
 1fc:	352e3831 	ori	t6,t1,0x3831
 200:	80010030 	lb	at,48(zero)
 204:	00000067 	0x67
 208:	00640002 	0x640002
 20c:	01040000 	0x1040000
 210:	0000021e 	0x21e
 214:	bfc00770 	0xbfc00770
 218:	bfc007d8 	0xbfc007d8
 21c:	645f376e 	0x645f376e
 220:	69685f63 	0x69685f63
 224:	62775f74 	0x62775f74
 228:	2e766e69 	sltiu	s6,s3,28265
 22c:	6d2f0053 	0x6d2f0053
 230:	61696465 	0x61696465
 234:	5f66732f 	0x5f66732f
 238:	73616375 	0x73616375
 23c:	325f3931 	andi	ra,s2,0x3931
 240:	6c615f30 	0x6c615f30
 244:	65722f6c 	0x65722f6c
 248:	7361656c 	0x7361656c
 24c:	61632f65 	0x61632f65
 250:	5f656863 	0x5f656863
 254:	636e7566 	0x636e7566
 258:	736e692f 	0x736e692f
 25c:	4e470074 	c3	0x470074
 260:	53412055 	0x53412055
 264:	312e3220 	andi	t6,t1,0x3220
 268:	30352e38 	andi	s5,at,0x2e38
 26c:	67800100 	0x67800100
 270:	02000000 	0x2000000
 274:	00007800 	sll	t7,zero,0x0
 278:	71010400 	0x71010400
 27c:	e0000002 	swc0	$0,2(zero)
 280:	b0bfc007 	0xb0bfc007
 284:	6ebfc008 	0x6ebfc008
 288:	63695f32 	0x63695f32
 28c:	7864695f 	0x7864695f
 290:	7474735f 	jalx	1d1cd7c <data_size+0x1d1cd6c>
 294:	532e6761 	0x532e6761
 298:	656d2f00 	0x656d2f00
 29c:	2f616964 	sltiu	at,k1,26980
 2a0:	755f6673 	jalx	57d99cc <data_size+0x57d99bc>
 2a4:	31736163 	andi	s3,t3,0x6163
 2a8:	30325f39 	andi	s2,at,0x5f39
 2ac:	6c6c615f 	0x6c6c615f
 2b0:	6c65722f 	0x6c65722f
 2b4:	65736165 	0x65736165
 2b8:	6361632f 	0x6361632f
 2bc:	665f6568 	0x665f6568
 2c0:	2f636e75 	sltiu	v1,k1,28277
 2c4:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 2c8:	554e4700 	0x554e4700
 2cc:	20534120 	addi	s3,v0,16672
 2d0:	38312e32 	xori	s1,at,0x2e32
 2d4:	0030352e 	0x30352e
 2d8:	00658001 	0x658001
 2dc:	00020000 	sll	zero,v0,0x0
 2e0:	0000008c 	syscall	0x2
 2e4:	02d90104 	0x2d90104
 2e8:	08c00000 	j	3000000 <data_size+0x2fffff0>
 2ec:	0970bfc0 	j	5c2ff00 <data_size+0x5c2fef0>
 2f0:	336ebfc0 	andi	t6,k1,0xbfc0
 2f4:	5f63695f 	0x5f63695f
 2f8:	5f746968 	0x5f746968
 2fc:	2e766e69 	sltiu	s6,s3,28265
 300:	6d2f0053 	0x6d2f0053
 304:	61696465 	0x61696465
 308:	5f66732f 	0x5f66732f
 30c:	73616375 	0x73616375
 310:	325f3931 	andi	ra,s2,0x3931
 314:	6c615f30 	0x6c615f30
 318:	65722f6c 	0x65722f6c
 31c:	7361656c 	0x7361656c
 320:	61632f65 	0x61632f65
 324:	5f656863 	0x5f656863
 328:	636e7566 	0x636e7566
 32c:	736e692f 	0x736e692f
 330:	4e470074 	c3	0x470074
 334:	53412055 	0x53412055
 338:	312e3220 	andi	t6,t1,0x3220
 33c:	30352e38 	andi	s5,at,0x2e38
 340:	Address 0x0000000000000340 is out of bounds.


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
