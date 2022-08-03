
gzrom:     file format elf32-tradlittlemips
gzrom


Disassembly of section .text:

87900000 <_ftext>:
_ftext():
87900000:	40806000 	mtc0	zero,c0_sr
87900004:	40806800 	mtc0	zero,c0_cause
87900008:	3c080040 	lui	t0,0x40
8790000c:	40886000 	mtc0	t0,c0_sr
87900010:	3c1d8790 	lui	sp,0x8790
87900014:	27bdc000 	addiu	sp,sp,-16384
87900018:	3c1c8795 	lui	gp,0x8795
8790001c:	279c6000 	addiu	gp,gp,24576
87900020:	00000000 	nop
87900024:	041101c4 	bal	87900738 <locate>
87900028:	00000000 	nop

8790002c <uncached>:
uncached():
8790002c:	3c01a000 	lui	at,0xa000
87900030:	03e1f825 	or	ra,ra,at
87900034:	03e00008 	jr	ra
87900038:	00000000 	nop
	...

87900200 <ext_map_and_reboot>:
ext_map_and_reboot():
87900200:	3c041000 	lui	a0,0x1000
87900204:	009f2024 	and	a0,a0,ra
87900208:	3c048790 	lui	a0,0x8790
8790020c:	24840000 	addiu	a0,a0,0
87900210:	14800003 	bnez	a0,87900220 <ext_map_and_reboot+0x20>
87900214:	00000000 	nop
87900218:	3c10bfc0 	lui	s0,0xbfc0
8790021c:	02048023 	subu	s0,s0,a0
87900220:	3c048790 	lui	a0,0x8790
87900224:	24843291 	addiu	a0,a0,12945
87900228:	04110271 	bal	87900bf0 <stringserial>
8790022c:	00000000 	nop
87900230:	100000b3 	b	87900500 <exc_common>
87900234:	00000000 	nop
	...
87900280:	3c048790 	lui	a0,0x8790
87900284:	248432bd 	addiu	a0,a0,12989
87900288:	04110259 	bal	87900bf0 <stringserial>
8790028c:	00000000 	nop
87900290:	1000009b 	b	87900500 <exc_common>
87900294:	00000000 	nop
	...
87900300:	3c048790 	lui	a0,0x8790
87900304:	248430c0 	addiu	a0,a0,12480
87900308:	04110239 	bal	87900bf0 <stringserial>
8790030c:	00000000 	nop
87900310:	4004d800 	mfc0	a0,$27
87900314:	0411024e 	bal	87900c50 <hexserial>
87900318:	00000000 	nop
8790031c:	10000078 	b	87900500 <exc_common>
87900320:	00000000 	nop
	...
87900380:	3c041000 	lui	a0,0x1000
87900384:	009f2024 	and	a0,a0,ra
87900388:	3c048790 	lui	a0,0x8790
8790038c:	24840000 	addiu	a0,a0,0
87900390:	14800003 	bnez	a0,879003a0 <ext_map_and_reboot+0x1a0>
87900394:	00000000 	nop
87900398:	3c10bfc0 	lui	s0,0xbfc0
8790039c:	02048023 	subu	s0,s0,a0
879003a0:	3c048790 	lui	a0,0x8790
879003a4:	248432ea 	addiu	a0,a0,13034
879003a8:	04110211 	bal	87900bf0 <stringserial>
879003ac:	00000000 	nop
879003b0:	10000053 	b	87900500 <exc_common>
879003b4:	00000000 	nop
	...
87900400:	3c048790 	lui	a0,0x8790
87900404:	24843313 	addiu	a0,a0,13075
87900408:	041101f9 	bal	87900bf0 <stringserial>
8790040c:	00000000 	nop
87900410:	1000003b 	b	87900500 <exc_common>
87900414:	00000000 	nop
	...
87900480:	3c048790 	lui	a0,0x8790
87900484:	2484333e 	addiu	a0,a0,13118
87900488:	041101d9 	bal	87900bf0 <stringserial>
8790048c:	00000000 	nop
87900490:	1000001b 	b	87900500 <exc_common>
87900494:	00000000 	nop
	...

87900500 <exc_common>:
exc_common():
87900500:	3c048790 	lui	a0,0x8790
87900504:	248430ec 	addiu	a0,a0,12524
87900508:	041101b9 	bal	87900bf0 <stringserial>
8790050c:	00000000 	nop
87900510:	40046800 	mfc0	a0,c0_cause
87900514:	041101ce 	bal	87900c50 <hexserial>
87900518:	00000000 	nop
8790051c:	3c048790 	lui	a0,0x8790
87900520:	248430f5 	addiu	a0,a0,12533
87900524:	041101b2 	bal	87900bf0 <stringserial>
87900528:	00000000 	nop
8790052c:	40046000 	mfc0	a0,c0_sr
87900530:	041101c7 	bal	87900c50 <hexserial>
87900534:	00000000 	nop
87900538:	3c048790 	lui	a0,0x8790
8790053c:	248430ff 	addiu	a0,a0,12543
87900540:	041101ab 	bal	87900bf0 <stringserial>
87900544:	00000000 	nop
87900548:	4004f000 	mfc0	a0,$30
8790054c:	041101c0 	bal	87900c50 <hexserial>
87900550:	00000000 	nop
87900554:	3c048790 	lui	a0,0x8790
87900558:	2484310a 	addiu	a0,a0,12554
8790055c:	041101a4 	bal	87900bf0 <stringserial>
87900560:	00000000 	nop
87900564:	40047000 	mfc0	a0,c0_epc
87900568:	041101b9 	bal	87900c50 <hexserial>
8790056c:	00000000 	nop
87900570:	3c048790 	lui	a0,0x8790
87900574:	24843111 	addiu	a0,a0,12561
87900578:	0411019d 	bal	87900bf0 <stringserial>
8790057c:	00000000 	nop
87900580:	40044000 	mfc0	a0,c0_badvaddr
87900584:	041101b2 	bal	87900c50 <hexserial>
87900588:	00000000 	nop
8790058c:	1000ffff 	b	8790058c <exc_common+0x8c>
87900590:	00000000 	nop
	...
87900700:	8794f014 	lh	s4,-4076(gp)
87900704:	8794f010 	lh	s4,-4080(gp)
87900708:	8794f01c 	lh	s4,-4068(gp)
8790070c:	8794f024 	lh	s4,-4060(gp)
87900710:	87900d80 	lh	s0,3456(gp)
87900714:	8794f000 	lh	s4,-4096(gp)
87900718:	8794f004 	lh	s4,-4092(gp)
8790071c:	87900d80 	lh	s0,3456(gp)
87900720:	87900d80 	lh	s0,3456(gp)
87900724:	8794f00c 	lh	s4,-4084(gp)
87900728:	87900d80 	lh	s0,3456(gp)
8790072c:	87900d80 	lh	s0,3456(gp)
87900730:	87900d80 	lh	s0,3456(gp)
87900734:	87900d80 	lh	s0,3456(gp)

87900738 <locate>:
locate():
87900738:	3c108790 	lui	s0,0x8790
8790073c:	2610002c 	addiu	s0,s0,44
87900740:	03f08023 	subu	s0,ra,s0
87900744:	3c080040 	lui	t0,0x40
87900748:	40886000 	mtc0	t0,c0_sr
8790074c:	40806800 	mtc0	zero,c0_cause
87900750:	3c08bfe8 	lui	t0,0xbfe8
87900754:	24090017 	li	t1,23
87900758:	a1090004 	sb	t1,4(t0)
8790075c:	3c04bfd0 	lui	a0,0xbfd0
87900760:	ac8010c0 	sw	zero,4288(a0)
87900764:	ac8010c4 	sw	zero,4292(a0)
87900768:	24040000 	li	a0,0
8790076c:	04110164 	bal	87900d00 <initserial>
87900770:	00000000 	nop
87900774:	3c048790 	lui	a0,0x8790
87900778:	2484311c 	addiu	a0,a0,12572
8790077c:	0411011c 	bal	87900bf0 <stringserial>
87900780:	00000000 	nop
87900784:	3c048790 	lui	a0,0x8790
87900788:	24843147 	addiu	a0,a0,12615
8790078c:	04110118 	bal	87900bf0 <stringserial>
87900790:	00000000 	nop
87900794:	4004f000 	mfc0	a0,$30
87900798:	0411012d 	bal	87900c50 <hexserial>
8790079c:	00000000 	nop
879007a0:	3c048790 	lui	a0,0x8790
879007a4:	24843150 	addiu	a0,a0,12624
879007a8:	04110111 	bal	87900bf0 <stringserial>
879007ac:	00000000 	nop
879007b0:	40048000 	mfc0	a0,$16
879007b4:	04110126 	bal	87900c50 <hexserial>
879007b8:	00000000 	nop
879007bc:	3c048790 	lui	a0,0x8790
879007c0:	24843159 	addiu	a0,a0,12633
879007c4:	0411010a 	bal	87900bf0 <stringserial>
879007c8:	00000000 	nop
879007cc:	3c048790 	lui	a0,0x8790
879007d0:	2484315c 	addiu	a0,a0,12636
879007d4:	04110106 	bal	87900bf0 <stringserial>
879007d8:	00000000 	nop
879007dc:	40047800 	mfc0	a0,c0_prid
879007e0:	0411011b 	bal	87900c50 <hexserial>
879007e4:	00000000 	nop
879007e8:	3c048790 	lui	a0,0x8790
879007ec:	24843163 	addiu	a0,a0,12643
879007f0:	041100ff 	bal	87900bf0 <stringserial>
879007f4:	00000000 	nop
879007f8:	16000004 	bnez	s0,8790080c <do_caches>
879007fc:	00000000 	nop
87900800:	24040080 	li	a0,128
87900804:	0de409fd 	jal	879027f4 <initmips>
87900808:	00000000 	nop

8790080c <do_caches>:
do_caches():
8790080c:	3c048790 	lui	a0,0x8790
87900810:	24843166 	addiu	a0,a0,12646
87900814:	041100f6 	bal	87900bf0 <stringserial>
87900818:	00000000 	nop
8790081c:	24170000 	li	s7,0
87900820:	241e0000 	li	s8,0
87900824:	3c048790 	lui	a0,0x8790
87900828:	24843184 	addiu	a0,a0,12676
8790082c:	041100f0 	bal	87900bf0 <stringserial>
87900830:	00000000 	nop
87900834:	04110154 	bal	87900d88 <cache_init>
87900838:	00000000 	nop
8790083c:	3c048790 	lui	a0,0x8790
87900840:	2484319b 	addiu	a0,a0,12699
87900844:	041100ea 	bal	87900bf0 <stringserial>
87900848:	00000000 	nop
8790084c:	40048000 	mfc0	a0,$16
87900850:	041100ff 	bal	87900c50 <hexserial>
87900854:	00000000 	nop
87900858:	3c048790 	lui	a0,0x8790
8790085c:	248431b4 	addiu	a0,a0,12724
87900860:	041100e3 	bal	87900bf0 <stringserial>
87900864:	00000000 	nop
87900868:	40048000 	mfc0	a0,$16
8790086c:	2401fff8 	li	at,-8
87900870:	00812024 	and	a0,a0,at
87900874:	34840003 	ori	a0,a0,0x3
87900878:	40848000 	mtc0	a0,$16

8790087c <bootnow>:
bootnow():
8790087c:	3c088790 	lui	t0,0x8790
87900880:	250808c0 	addiu	t0,t0,2240
87900884:	01104021 	addu	t0,t0,s0
87900888:	3c098790 	lui	t1,0x8790
8790088c:	25290b30 	addiu	t1,t1,2864
87900890:	01304821 	addu	t1,t1,s0
87900894:	3c0aa000 	lui	t2,0xa000
87900898:	8d020000 	lw	v0,0(t0)
8790089c:	ad420000 	sw	v0,0(t2)
879008a0:	25080004 	addiu	t0,t0,4
879008a4:	254a0004 	addiu	t2,t2,4
879008a8:	0128082a 	slt	at,t1,t0
879008ac:	1020fffa 	beqz	at,87900898 <bootnow+0x1c>
879008b0:	00000000 	nop
879008b4:	3c08a000 	lui	t0,0xa000
879008b8:	01000008 	jr	t0
879008bc:	00000000 	nop
879008c0:	3c048790 	lui	a0,0x8790
879008c4:	248431b9 	addiu	a0,a0,12729
879008c8:	3c028790 	lui	v0,0x8790
879008cc:	24420bf0 	addiu	v0,v0,3056
879008d0:	00501021 	addu	v0,v0,s0
879008d4:	0040f809 	jalr	v0
879008d8:	00000000 	nop
879008dc:	3c048790 	lui	a0,0x8790
879008e0:	248431dc 	addiu	a0,a0,12764
879008e4:	3c028790 	lui	v0,0x8790
879008e8:	24420bf0 	addiu	v0,v0,3056
879008ec:	00501021 	addu	v0,v0,s0
879008f0:	0040f809 	jalr	v0
879008f4:	00000000 	nop
879008f8:	3c048790 	lui	a0,0x8790
879008fc:	24840000 	addiu	a0,a0,0
87900900:	3c028790 	lui	v0,0x8790
87900904:	24420c50 	addiu	v0,v0,3152
87900908:	00501021 	addu	v0,v0,s0
8790090c:	0040f809 	jalr	v0
87900910:	00000000 	nop
87900914:	00000000 	nop
87900918:	3c048790 	lui	a0,0x8790
8790091c:	248431e9 	addiu	a0,a0,12777
87900920:	3c028790 	lui	v0,0x8790
87900924:	24420bf0 	addiu	v0,v0,3056
87900928:	00501021 	addu	v0,v0,s0
8790092c:	0040f809 	jalr	v0
87900930:	00000000 	nop
87900934:	02002021 	move	a0,s0
87900938:	3c028790 	lui	v0,0x8790
8790093c:	24420c50 	addiu	v0,v0,3152
87900940:	00501021 	addu	v0,v0,s0
87900944:	0040f809 	jalr	v0
87900948:	00000000 	nop
8790094c:	00000000 	nop
87900950:	3c048790 	lui	a0,0x8790
87900954:	248431f5 	addiu	a0,a0,12789
87900958:	3c028790 	lui	v0,0x8790
8790095c:	24420bf0 	addiu	v0,v0,3056
87900960:	00501021 	addu	v0,v0,s0
87900964:	0040f809 	jalr	v0
87900968:	00000000 	nop
8790096c:	3c048795 	lui	a0,0x8795
87900970:	2484e010 	addiu	a0,a0,-8176
87900974:	3c028790 	lui	v0,0x8790
87900978:	24420c50 	addiu	v0,v0,3152
8790097c:	00501021 	addu	v0,v0,s0
87900980:	0040f809 	jalr	v0
87900984:	00000000 	nop
87900988:	00000000 	nop
8790098c:	3c048790 	lui	a0,0x8790
87900990:	24843205 	addiu	a0,a0,12805
87900994:	3c028790 	lui	v0,0x8790
87900998:	24420bf0 	addiu	v0,v0,3056
8790099c:	00501021 	addu	v0,v0,s0
879009a0:	0040f809 	jalr	v0
879009a4:	00000000 	nop
879009a8:	3c048795 	lui	a0,0x8795
879009ac:	2484f028 	addiu	a0,a0,-4056
879009b0:	3c028790 	lui	v0,0x8790
879009b4:	24420c50 	addiu	v0,v0,3152
879009b8:	00501021 	addu	v0,v0,s0
879009bc:	0040f809 	jalr	v0
879009c0:	00000000 	nop
879009c4:	00000000 	nop
879009c8:	3c048790 	lui	a0,0x8790
879009cc:	24843213 	addiu	a0,a0,12819
879009d0:	3c028790 	lui	v0,0x8790
879009d4:	24420bf0 	addiu	v0,v0,3056
879009d8:	00501021 	addu	v0,v0,s0
879009dc:	0040f809 	jalr	v0
879009e0:	00000000 	nop
879009e4:	3c048790 	lui	a0,0x8790
879009e8:	24840000 	addiu	a0,a0,0
879009ec:	00902821 	addu	a1,a0,s0
879009f0:	3c068795 	lui	a2,0x8795
879009f4:	24c6e010 	addiu	a2,a2,-8176
879009f8:	3c01a000 	lui	at,0xa000
879009fc:	00812025 	or	a0,a0,at
87900a00:	3c01a000 	lui	at,0xa000
87900a04:	00c13025 	or	a2,a2,at
87900a08:	00c44823 	subu	t1,a2,a0
87900a0c:	00094882 	srl	t1,t1,0x2
87900a10:	00804021 	move	t0,a0
87900a14:	00a04821 	move	t1,a1
87900a18:	00c05021 	move	t2,a2
87900a1c:	310bffff 	andi	t3,t0,0xffff
87900a20:	1560000f 	bnez	t3,87900a60 <bootnow+0x1e4>
87900a24:	00000000 	nop
87900a28:	01002021 	move	a0,t0
87900a2c:	3c028790 	lui	v0,0x8790
87900a30:	24420c50 	addiu	v0,v0,3152
87900a34:	00501021 	addu	v0,v0,s0
87900a38:	0040f809 	jalr	v0
87900a3c:	00000000 	nop
87900a40:	00000000 	nop
87900a44:	2404000d 	li	a0,13
87900a48:	3c028790 	lui	v0,0x8790
87900a4c:	24420ca0 	addiu	v0,v0,3232
87900a50:	00501021 	addu	v0,v0,s0
87900a54:	0040f809 	jalr	v0
87900a58:	00000000 	nop
87900a5c:	00000000 	nop
87900a60:	8d2b0000 	lw	t3,0(t1)
87900a64:	00000000 	nop
87900a68:	ad0b0000 	sw	t3,0(t0)
87900a6c:	25080004 	addiu	t0,t0,4
87900a70:	25290004 	addiu	t1,t1,4
87900a74:	1548ffe9 	bne	t2,t0,87900a1c <bootnow+0x1a0>
87900a78:	00000000 	nop
87900a7c:	3c048790 	lui	a0,0x8790
87900a80:	24843216 	addiu	a0,a0,12822
87900a84:	3c028790 	lui	v0,0x8790
87900a88:	24420bf0 	addiu	v0,v0,3056
87900a8c:	00501021 	addu	v0,v0,s0
87900a90:	0040f809 	jalr	v0
87900a94:	00000000 	nop
87900a98:	3c048795 	lui	a0,0x8795
87900a9c:	2484e010 	addiu	a0,a0,-8176
87900aa0:	3c068795 	lui	a2,0x8795
87900aa4:	24c6f028 	addiu	a2,a2,-4056
87900aa8:	ac800000 	sw	zero,0(a0)
87900aac:	14c4fffe 	bne	a2,a0,87900aa8 <bootnow+0x22c>
87900ab0:	24840004 	addiu	a0,a0,4
87900ab4:	3c048790 	lui	a0,0x8790
87900ab8:	24843231 	addiu	a0,a0,12849
87900abc:	3c028790 	lui	v0,0x8790
87900ac0:	24420bf0 	addiu	v0,v0,3056
87900ac4:	00501021 	addu	v0,v0,s0
87900ac8:	0040f809 	jalr	v0
87900acc:	00000000 	nop
87900ad0:	3c048790 	lui	a0,0x8790
87900ad4:	24843257 	addiu	a0,a0,12887
87900ad8:	3c028790 	lui	v0,0x8790
87900adc:	24420bf0 	addiu	v0,v0,3056
87900ae0:	00501021 	addu	v0,v0,s0
87900ae4:	0040f809 	jalr	v0
87900ae8:	00000000 	nop
87900aec:	03a02021 	move	a0,sp
87900af0:	3c028790 	lui	v0,0x8790
87900af4:	24420c50 	addiu	v0,v0,3152
87900af8:	00501021 	addu	v0,v0,s0
87900afc:	0040f809 	jalr	v0
87900b00:	00000000 	nop
87900b04:	00000000 	nop
87900b08:	24040000 	li	a0,0
87900b0c:	3c018795 	lui	at,0x8795
87900b10:	ac24f018 	sw	a0,-4072(at)
87900b14:	3c120800 	lui	s2,0x800
87900b18:	02402021 	move	a0,s2
87900b1c:	00042502 	srl	a0,a0,0x14
87900b20:	3c028790 	lui	v0,0x8790
87900b24:	244227f4 	addiu	v0,v0,10228
87900b28:	0040f809 	jalr	v0
87900b2c:	00000000 	nop

87900b30 <stuck>:
stuck():
87900b30:	1000ffff 	b	87900b30 <stuck>
87900b34:	00000000 	nop

87900b38 <CPU_TLBClear>:
CPU_TLBClear():
87900b38:	10000001 	b	87900b40 <CPU_TLBInit>
87900b3c:	00000000 	nop

87900b40 <CPU_TLBInit>:
CPU_TLBInit():
87900b40:	24070000 	li	a3,0
87900b44:	24060000 	li	a2,0
87900b48:	40862800 	mtc0	a2,$5
87900b4c:	3c04bfc0 	lui	a0,0xbfc0
87900b50:	40845000 	mtc0	a0,c0_entryhi
87900b54:	40801000 	mtc0	zero,c0_entrylo
87900b58:	40801800 	mtc0	zero,$3
87900b5c:	40870000 	mtc0	a3,c0_index
87900b60:	24e70001 	addiu	a3,a3,1
87900b64:	24060020 	li	a2,32
	...
87900b70:	42000002 	tlbwi
87900b74:	14e6fff5 	bne	a3,a2,87900b4c <CPU_TLBInit+0xc>
87900b78:	00000000 	nop

87900b7c <TLBInit_finish>:
TLBInit_finish():
87900b7c:	03e00008 	jr	ra
87900b80:	00000000 	nop
87900b84:	00000000 	nop

87900b88 <suspend_resume>:
suspend_resume():
87900b88:	3c08a01f 	lui	t0,0xa01f
87900b8c:	3508fc00 	ori	t0,t0,0xfc00
87900b90:	8d1f0000 	lw	ra,0(t0)
87900b94:	8d1d0004 	lw	sp,4(t0)
87900b98:	8d1e0008 	lw	s8,8(t0)
87900b9c:	8d1c000c 	lw	gp,12(t0)
87900ba0:	8d100010 	lw	s0,16(t0)
87900ba4:	8d110014 	lw	s1,20(t0)
87900ba8:	8d120018 	lw	s2,24(t0)
87900bac:	8d13001c 	lw	s3,28(t0)
87900bb0:	8d140020 	lw	s4,32(t0)
87900bb4:	8d150024 	lw	s5,36(t0)
87900bb8:	8d160028 	lw	s6,40(t0)
87900bbc:	8d17002c 	lw	s7,44(t0)
87900bc0:	8d1a0030 	lw	k0,48(t0)
87900bc4:	8d1b0034 	lw	k1,52(t0)
87900bc8:	8d020038 	lw	v0,56(t0)
87900bcc:	8d03003c 	lw	v1,60(t0)
87900bd0:	8d090040 	lw	t1,64(t0)
87900bd4:	40896000 	mtc0	t1,c0_sr
87900bd8:	8d090044 	lw	t1,68(t0)
87900bdc:	40892000 	mtc0	t1,c0_context
87900be0:	8d090048 	lw	t1,72(t0)
87900be4:	40892800 	mtc0	t1,$5
87900be8:	03e00008 	jr	ra
87900bec:	00000000 	nop

87900bf0 <stringserial>:
stringserial():
87900bf0:	00000000 	nop
87900bf4:	03e03021 	move	a2,ra
87900bf8:	00902821 	addu	a1,a0,s0
87900bfc:	90a40000 	lbu	a0,0(a1)
87900c00:	10800005 	beqz	a0,87900c18 <stringserial+0x28>
87900c04:	00000000 	nop
87900c08:	04110025 	bal	87900ca0 <tgt_putchar>
87900c0c:	24a50001 	addiu	a1,a1,1
87900c10:	1000fffb 	b	87900c00 <stringserial+0x10>
87900c14:	90a40000 	lbu	a0,0(a1)
87900c18:	00c00008 	jr	a2
87900c1c:	00000000 	nop

87900c20 <outstring>:
outstring():
87900c20:	03e03021 	move	a2,ra
87900c24:	00802821 	move	a1,a0
87900c28:	90a40000 	lbu	a0,0(a1)
87900c2c:	10800005 	beqz	a0,87900c44 <outstring+0x24>
87900c30:	00000000 	nop
87900c34:	0411001a 	bal	87900ca0 <tgt_putchar>
87900c38:	24a50001 	addiu	a1,a1,1
87900c3c:	1000fffb 	b	87900c2c <outstring+0xc>
87900c40:	90a40000 	lbu	a0,0(a1)
87900c44:	00c00008 	jr	a2
87900c48:	00000000 	nop
87900c4c:	00000000 	nop

87900c50 <hexserial>:
hexserial():
87900c50:	00000000 	nop
87900c54:	03e03021 	move	a2,ra
87900c58:	00802821 	move	a1,a0
87900c5c:	24070007 	li	a3,7
87900c60:	00050900 	sll	at,a1,0x4
87900c64:	00052702 	srl	a0,a1,0x1c
87900c68:	00812025 	or	a0,a0,at
87900c6c:	00802821 	move	a1,a0
87900c70:	3084000f 	andi	a0,a0,0xf
87900c74:	3c028790 	lui	v0,0x8790
87900c78:	2442337a 	addiu	v0,v0,13178
87900c7c:	00501021 	addu	v0,v0,s0
87900c80:	00441021 	addu	v0,v0,a0
87900c84:	04110006 	bal	87900ca0 <tgt_putchar>
87900c88:	90440000 	lbu	a0,0(v0)
87900c8c:	14e0fff4 	bnez	a3,87900c60 <hexserial+0x10>
87900c90:	24e7ffff 	addiu	a3,a3,-1
87900c94:	00c00008 	jr	a2
87900c98:	00000000 	nop
87900c9c:	00000000 	nop

87900ca0 <tgt_putchar>:
tgt_putchar():
87900ca0:	00000000 	nop
87900ca4:	3c02bfe4 	lui	v0,0xbfe4
87900ca8:	90430005 	lbu	v1,5(v0)
87900cac:	30630020 	andi	v1,v1,0x20
87900cb0:	1060fffd 	beqz	v1,87900ca8 <tgt_putchar+0x8>
87900cb4:	00000000 	nop
87900cb8:	a0440000 	sb	a0,0(v0)
87900cbc:	03e00008 	jr	ra
87900cc0:	00000000 	nop
87900cc4:	00000000 	nop

87900cc8 <tgt_testchar>:
tgt_testchar():
87900cc8:	3c02bfe4 	lui	v0,0xbfe4
87900ccc:	90430005 	lbu	v1,5(v0)
87900cd0:	30620001 	andi	v0,v1,0x1
87900cd4:	03e00008 	jr	ra
87900cd8:	00000000 	nop
87900cdc:	00000000 	nop

87900ce0 <tgt_getchar>:
tgt_getchar():
87900ce0:	3c02bfe4 	lui	v0,0xbfe4
87900ce4:	90430005 	lbu	v1,5(v0)
87900ce8:	30630001 	andi	v1,v1,0x1
87900cec:	1060fffd 	beqz	v1,87900ce4 <tgt_getchar+0x4>
87900cf0:	00000000 	nop
87900cf4:	80420000 	lb	v0,0(v0)
87900cf8:	03e00008 	jr	ra
87900cfc:	00000000 	nop

87900d00 <initserial>:
initserial():
87900d00:	3c02bfe4 	lui	v0,0xbfe4
87900d04:	24030047 	li	v1,71
87900d08:	a0430002 	sb	v1,2(v0)
87900d0c:	24030080 	li	v1,128
87900d10:	a0430003 	sb	v1,3(v0)
87900d14:	24030023 	li	v1,35
87900d18:	a0430000 	sb	v1,0(v0)
87900d1c:	00031a02 	srl	v1,v1,0x8
87900d20:	a0430001 	sb	v1,1(v0)
87900d24:	24030003 	li	v1,3
87900d28:	a0430003 	sb	v1,3(v0)
87900d2c:	24030003 	li	v1,3
87900d30:	a0430003 	sb	v1,3(v0)
87900d34:	24030003 	li	v1,3
87900d38:	a0430004 	sb	v1,4(v0)
87900d3c:	24030000 	li	v1,0
87900d40:	a0430001 	sb	v1,1(v0)
87900d44:	03e00008 	jr	ra
87900d48:	00000000 	nop

87900d4c <__main>:
87900d4c:	03e00008 00000000                       ........

87900d54 <checkerr>:
checkerr():
87900d54:	3c048790 	lui	a0,0x8790
87900d58:	2484338a 	addiu	a0,a0,13194
87900d5c:	0411ffa4 	bal	87900bf0 <stringserial>
87900d60:	00000000 	nop
87900d64:	3c09bfd0 	lui	t1,0xbfd0
87900d68:	35290010 	ori	t1,t1,0x10
87900d6c:	8d280000 	lw	t0,0(t1)
87900d70:	3108005f 	andi	t0,t0,0x5f
87900d74:	ad280000 	sw	t0,0(t1)
87900d78:	03e00008 	jr	ra
87900d7c:	00000000 	nop

87900d80 <nullfunction>:
nullfunction():
87900d80:	03e00008 	jr	ra
87900d84:	00000000 	nop

87900d88 <cache_init>:
cache_init():
87900d88:	3c038000 	lui	v1,0x8000
87900d8c:	34631000 	ori	v1,v1,0x1000
87900d90:	3c028000 	lui	v0,0x8000
87900d94:	4080e000 	mtc0	zero,$28
87900d98:	4080e800 	mtc0	zero,$29
87900d9c:	bc490000 	0xbc490000
87900da0:	bc491000 	0xbc491000
87900da4:	bc492000 	0xbc492000
87900da8:	bc493000 	0xbc493000
87900dac:	bc480000 	0xbc480000
87900db0:	bc481000 	0xbc481000
87900db4:	bc482000 	0xbc482000
87900db8:	bc483000 	0xbc483000
87900dbc:	24420020 	addiu	v0,v0,32
87900dc0:	1443fff6 	bne	v0,v1,87900d9c <cache_init+0x14>
87900dc4:	00000000 	nop

87900dc8 <cache_init_finish>:
cache_init_finish():
87900dc8:	03e00008 	jr	ra
87900dcc:	00000000 	nop

87900dd0 <ddr2_config>:
ddr2_config():
87900dd0:	3c088790 	lui	t0,0x8790
87900dd4:	250833a0 	addiu	t0,t0,13216
87900dd8:	01104021 	addu	t0,t0,s0
87900ddc:	2409001d 	li	t1,29
87900de0:	3c0aafff 	lui	t2,0xafff
87900de4:	354afe00 	ori	t2,t2,0xfe00

87900de8 <reg_write>:
reg_write():
87900de8:	8d050000 	lw	a1,0(t0)
87900dec:	8d060004 	lw	a2,4(t0)
87900df0:	ad450000 	sw	a1,0(t2)
87900df4:	ad460004 	sw	a2,4(t2)
87900df8:	2529ffff 	addiu	t1,t1,-1
87900dfc:	25080008 	addiu	t0,t0,8
87900e00:	1520fff9 	bnez	t1,87900de8 <reg_write>
87900e04:	254a0010 	addiu	t2,t2,16

87900e08 <ddr2_config_start>:
ddr2_config_start():
87900e08:	3c0aafff 	lui	t2,0xafff
87900e0c:	354afe00 	ori	t2,t2,0xfe00
87900e10:	3c088790 	lui	t0,0x8790
87900e14:	250833bc 	addiu	t0,t0,13244
87900e18:	01104021 	addu	t0,t0,s0
87900e1c:	8d050000 	lw	a1,0(t0)
87900e20:	ad450034 	sw	a1,52(t2)
87900e24:	8d050000 	lw	a1,0(t0)
87900e28:	34a50100 	ori	a1,a1,0x100
87900e2c:	ad450034 	sw	a1,52(t2)
87900e30:	8d450010 	lw	a1,16(t2)
87900e34:	8d460014 	lw	a2,20(t2)
87900e38:	30a50001 	andi	a1,a1,0x1
87900e3c:	10a0fffc 	beqz	a1,87900e30 <ddr2_config_start+0x28>
87900e40:	00000000 	nop
87900e44:	854500f2 	lh	a1,242(t2)
87900e48:	2ca50005 	sltiu	a1,a1,5
87900e4c:	10a00006 	beqz	a1,87900e68 <ddr2_config_start+0x60>
87900e50:	00000000 	nop
87900e54:	8d4500f4 	lw	a1,244(t2)
87900e58:	24a50004 	addiu	a1,a1,4
87900e5c:	ad4500f4 	sw	a1,244(t2)
87900e60:	1000ffee 	b	87900e1c <ddr2_config_start+0x14>
87900e64:	00000000 	nop
87900e68:	03e00008 	jr	ra
87900e6c:	00000000 	nop
	...

87901000 <memcpy>:
memcpy():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:6
87901000:	00a4102b 	sltu	v0,a1,a0
87901004:	1440000b 	bnez	v0,87901034 <memcpy+0x34>
87901008:	00804021 	move	t0,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:12
8790100c:	18c00007 	blez	a2,8790102c <memcpy+0x2c>
87901010:	00003821 	move	a3,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:13
87901014:	00a71021 	addu	v0,a1,a3
87901018:	90440000 	lbu	a0,0(v0)
8790101c:	01071821 	addu	v1,t0,a3
87901020:	24e70001 	addiu	a3,a3,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:12
87901024:	14e6fffb 	bne	a3,a2,87901014 <memcpy+0x14>
87901028:	a0640000 	sb	a0,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:15
8790102c:	03e00008 	jr	ra
87901030:	01001021 	move	v0,t0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:9
87901034:	18c0fffd 	blez	a2,8790102c <memcpy+0x2c>
87901038:	00861821 	addu	v1,a0,a2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:7
8790103c:	00a62821 	addu	a1,a1,a2
87901040:	00663023 	subu	a2,v1,a2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:10
87901044:	24a5ffff 	addiu	a1,a1,-1
87901048:	90a20000 	lbu	v0,0(a1)
8790104c:	2463ffff 	addiu	v1,v1,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:9
87901050:	1466fffc 	bne	v1,a2,87901044 <memcpy+0x44>
87901054:	a0620000 	sb	v0,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:15
87901058:	03e00008 	jr	ra
8790105c:	01001021 	move	v0,t0

87901060 <free>:
free():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:118
87901060:	3c098795 	lui	t1,0x8795
87901064:	8d25e018 	lw	a1,-8168(t1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:117
87901068:	2487fff8 	addiu	a3,a0,-8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:118
8790106c:	00a7402b 	sltu	t0,a1,a3
87901070:	11000010 	beqz	t0,879010b4 <free+0x54>
87901074:	00000000 	nop
87901078:	8ca30000 	lw	v1,0(a1)
8790107c:	00000000 	nop
87901080:	00e3102b 	sltu	v0,a3,v1
87901084:	1440000e 	bnez	v0,879010c0 <free+0x60>
87901088:	00a3102b 	sltu	v0,a1,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:119
8790108c:	14400005 	bnez	v0,879010a4 <free+0x44>
87901090:	00e3302b 	sltu	a2,a3,v1
87901094:	1500000a 	bnez	t0,879010c0 <free+0x60>
87901098:	00000000 	nop
8790109c:	14c00008 	bnez	a2,879010c0 <free+0x60>
879010a0:	00000000 	nop
879010a4:	00602821 	move	a1,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:118
879010a8:	00a7402b 	sltu	t0,a1,a3
879010ac:	1500fff2 	bnez	t0,87901078 <free+0x18>
879010b0:	00000000 	nop
879010b4:	8ca30000 	lw	v1,0(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:119
879010b8:	09e40423 	j	8790108c <free+0x2c>
879010bc:	00a3102b 	sltu	v0,a1,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:121
879010c0:	8ce60004 	lw	a2,4(a3)
879010c4:	00000000 	nop
879010c8:	000610c0 	sll	v0,a2,0x3
879010cc:	00e21021 	addu	v0,a3,v0
879010d0:	1043000a 	beq	v0,v1,879010fc <free+0x9c>
879010d4:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:126
879010d8:	8ca60004 	lw	a2,4(a1)
879010dc:	00000000 	nop
879010e0:	000610c0 	sll	v0,a2,0x3
879010e4:	00a21021 	addu	v0,a1,v0
879010e8:	1047000e 	beq	v0,a3,87901124 <free+0xc4>
879010ec:	ac83fff8 	sw	v1,-8(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:130
879010f0:	aca70000 	sw	a3,0(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:132
879010f4:	03e00008 	jr	ra
879010f8:	ad25e018 	sw	a1,-8168(t1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:122
879010fc:	8c620004 	lw	v0,4(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:123
87901100:	8c630000 	lw	v1,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:122
87901104:	00461021 	addu	v0,v0,a2
87901108:	ace20004 	sw	v0,4(a3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:126
8790110c:	8ca60004 	lw	a2,4(a1)
87901110:	00000000 	nop
87901114:	000610c0 	sll	v0,a2,0x3
87901118:	00a21021 	addu	v0,a1,v0
8790111c:	1447fff4 	bne	v0,a3,879010f0 <free+0x90>
87901120:	ac83fff8 	sw	v1,-8(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:127
87901124:	8ce20004 	lw	v0,4(a3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:128
87901128:	8c83fff8 	lw	v1,-8(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:127
8790112c:	00461021 	addu	v0,v0,a2
87901130:	aca20004 	sw	v0,4(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:128
87901134:	aca30000 	sw	v1,0(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:132
87901138:	03e00008 	jr	ra
8790113c:	ad25e018 	sw	a1,-8168(t1)

87901140 <malloc>:
malloc():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:66
87901140:	27bdffd0 	addiu	sp,sp,-48
87901144:	afb10018 	sw	s1,24(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:71
87901148:	3c118795 	lui	s1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:70
8790114c:	24840007 	addiu	a0,a0,7
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:71
87901150:	8e26e018 	lw	a2,-8168(s1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:70
87901154:	000420c2 	srl	a0,a0,0x3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:66
87901158:	afb00014 	sw	s0,20(sp)
8790115c:	afbf002c 	sw	ra,44(sp)
87901160:	afb50028 	sw	s5,40(sp)
87901164:	afb40024 	sw	s4,36(sp)
87901168:	afb30020 	sw	s3,32(sp)
8790116c:	afb2001c 	sw	s2,28(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:71
87901170:	10c0003b 	beqz	a2,87901260 <malloc+0x120>
87901174:	24900001 	addiu	s0,a0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:75
87901178:	8cc50000 	lw	a1,0(a2)
8790117c:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:76
87901180:	8ca40004 	lw	a0,4(a1)
87901184:	00000000 	nop
87901188:	0090102b 	sltu	v0,a0,s0
8790118c:	10400012 	beqz	v0,879011d8 <malloc+0x98>
87901190:	2602007f 	addiu	v0,s0,127
morecore():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:101
87901194:	000211c2 	srl	v0,v0,0x7
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:102
87901198:	00029a80 	sll	s3,v0,0xa
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:101
8790119c:	000291c0 	sll	s2,v0,0x7
malloc():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:87
879011a0:	3c158795 	lui	s5,0x8795
sbrk():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:18
879011a4:	3c148790 	lui	s4,0x8790
malloc():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:87
879011a8:	8e22e018 	lw	v0,-8168(s1)
879011ac:	00000000 	nop
879011b0:	10a2001d 	beq	a1,v0,87901228 <malloc+0xe8>
879011b4:	00a01821 	move	v1,a1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:75
879011b8:	8c650000 	lw	a1,0(v1)
879011bc:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:76
879011c0:	8ca40004 	lw	a0,4(a1)
879011c4:	00000000 	nop
879011c8:	0090102b 	sltu	v0,a0,s0
879011cc:	1440fff6 	bnez	v0,879011a8 <malloc+0x68>
879011d0:	00000000 	nop
879011d4:	00603021 	move	a2,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:77
879011d8:	12040010 	beq	s0,a0,8790121c <malloc+0xdc>
879011dc:	00901023 	subu	v0,a0,s0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:81
879011e0:	000218c0 	sll	v1,v0,0x3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:80
879011e4:	aca20004 	sw	v0,4(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:81
879011e8:	00a32821 	addu	a1,a1,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:82
879011ec:	acb00004 	sw	s0,4(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:84
879011f0:	ae26e018 	sw	a2,-8168(s1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:85
879011f4:	24a20008 	addiu	v0,a1,8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:91
879011f8:	8fbf002c 	lw	ra,44(sp)
879011fc:	8fb50028 	lw	s5,40(sp)
87901200:	8fb40024 	lw	s4,36(sp)
87901204:	8fb30020 	lw	s3,32(sp)
87901208:	8fb2001c 	lw	s2,28(sp)
8790120c:	8fb10018 	lw	s1,24(sp)
87901210:	8fb00014 	lw	s0,20(sp)
87901214:	03e00008 	jr	ra
87901218:	27bd0030 	addiu	sp,sp,48
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:78
8790121c:	8ca20000 	lw	v0,0(a1)
87901220:	09e4047c 	j	879011f0 <malloc+0xb0>
87901224:	acc20000 	sw	v0,0(a2)
sbrk():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:18
87901228:	8e833800 	lw	v1,14336(s4)
8790122c:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:19
87901230:	00731021 	addu	v0,v1,s3
morecore():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:107
87901234:	24640008 	addiu	a0,v1,8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:103
87901238:	10600007 	beqz	v1,87901258 <malloc+0x118>
8790123c:	ae823800 	sw	v0,14336(s4)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:107
87901240:	0de40418 	jal	87901060 <free>
87901244:	ac720004 	sw	s2,4(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:108
87901248:	8ea3e018 	lw	v1,-8168(s5)
8790124c:	00000000 	nop
malloc():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:88
87901250:	1460ffd9 	bnez	v1,879011b8 <malloc+0x78>
87901254:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:76
87901258:	09e4047e 	j	879011f8 <malloc+0xb8>
8790125c:	00001021 	move	v0,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:72
87901260:	3c028795 	lui	v0,0x8795
87901264:	2443e010 	addiu	v1,v0,-8176
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:73
87901268:	ac40e014 	sw	zero,-8172(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:72
8790126c:	ae23e018 	sw	v1,-8168(s1)
87901270:	ac43e010 	sw	v1,-8176(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/malloc.c:73
87901274:	09e4045e 	j	87901178 <malloc+0x38>
87901278:	00603021 	move	a2,v1

8790127c <huft_free>:
huft_free():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:497
8790127c:	27bdffe8 	addiu	sp,sp,-24
87901280:	afbf0014 	sw	ra,20(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:503
87901284:	10800007 	beqz	a0,879012a4 <huft_free+0x28>
87901288:	afb00010 	sw	s0,16(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:505
8790128c:	2484fff8 	addiu	a0,a0,-8
87901290:	8c900004 	lw	s0,4(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:506
87901294:	0de40418 	jal	87901060 <free>
87901298:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:503
8790129c:	1600fffb 	bnez	s0,8790128c <huft_free+0x10>
879012a0:	02002021 	move	a0,s0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:510
879012a4:	8fbf0014 	lw	ra,20(sp)
879012a8:	00001021 	move	v0,zero
879012ac:	8fb00010 	lw	s0,16(sp)
879012b0:	03e00008 	jr	ra
879012b4:	27bd0018 	addiu	sp,sp,24

879012b8 <huft_build>:
huft_build():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:287
879012b8:	27bdfa30 	addiu	sp,sp,-1488
memset():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:19
879012bc:	27ab0058 	addiu	t3,sp,88
huft_build():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:287
879012c0:	8fa805e8 	lw	t0,1512(sp)
879012c4:	afbf05cc 	sw	ra,1484(sp)
879012c8:	afbe05c8 	sw	s8,1480(sp)
879012cc:	afb705c4 	sw	s7,1476(sp)
879012d0:	afb605c0 	sw	s6,1472(sp)
879012d4:	afb505bc 	sw	s5,1468(sp)
879012d8:	afb405b8 	sw	s4,1464(sp)
879012dc:	afb305b4 	sw	s3,1460(sp)
879012e0:	afb205b0 	sw	s2,1456(sp)
879012e4:	afb105ac 	sw	s1,1452(sp)
879012e8:	afb005a8 	sw	s0,1448(sp)
879012ec:	00806021 	move	t4,a0
879012f0:	afa605d8 	sw	a2,1496(sp)
879012f4:	afa705dc 	sw	a3,1500(sp)
memset():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:19
879012f8:	01601021 	move	v0,t3
879012fc:	27aa009c 	addiu	t2,sp,156
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:22
87901300:	a0400000 	sb	zero,0(v0)
87901304:	24420001 	addiu	v0,v0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:21
87901308:	144afffd 	bne	v0,t2,87901300 <huft_build+0x48>
8790130c:	00a0b821 	move	s7,a1
87901310:	01803021 	move	a2,t4
huft_build():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:316
87901314:	8cc30000 	lw	v1,0(a2)
87901318:	27a20010 	addiu	v0,sp,16
8790131c:	00031880 	sll	v1,v1,0x2
87901320:	00431821 	addu	v1,v0,v1
87901324:	8c620048 	lw	v0,72(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:318
87901328:	26f7ffff 	addiu	s7,s7,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:316
8790132c:	24420001 	addiu	v0,v0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:317
87901330:	24c60004 	addiu	a2,a2,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:318
87901334:	16e0fff7 	bnez	s7,87901314 <huft_build+0x5c>
87901338:	ac620048 	sw	v0,72(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:319
8790133c:	8fa20058 	lw	v0,88(sp)
87901340:	00000000 	nop
87901344:	10450115 	beq	v0,a1,8790179c <huft_build+0x4e4>
87901348:	27a3005c 	addiu	v1,sp,92
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:329
8790134c:	8d150000 	lw	s5,0(t0)
87901350:	24040001 	li	a0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:330
87901354:	24060011 	li	a2,17
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:331
87901358:	8c620000 	lw	v0,0(v1)
8790135c:	00000000 	nop
87901360:	14400004 	bnez	v0,87901374 <huft_build+0xbc>
87901364:	24630004 	addiu	v1,v1,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:330
87901368:	24840001 	addiu	a0,a0,1
8790136c:	1486fffa 	bne	a0,a2,87901358 <huft_build+0xa0>
87901370:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:334
87901374:	02a4102b 	sltu	v0,s5,a0
87901378:	144000e7 	bnez	v0,87901718 <huft_build+0x460>
8790137c:	afa40588 	sw	a0,1416(sp)
87901380:	27a30098 	addiu	v1,sp,152
87901384:	24090010 	li	t1,16
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:337
87901388:	8c620000 	lw	v0,0(v1)
8790138c:	00000000 	nop
87901390:	14400004 	bnez	v0,879013a4 <huft_build+0xec>
87901394:	2463fffc 	addiu	v1,v1,-4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:336
87901398:	2529ffff 	addiu	t1,t1,-1
8790139c:	1520fffa 	bnez	t1,87901388 <huft_build+0xd0>
879013a0:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:340
879013a4:	0135102b 	sltu	v0,t1,s5
879013a8:	144000d9 	bnez	v0,87901710 <huft_build+0x458>
879013ac:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:347
879013b0:	24020001 	li	v0,1
879013b4:	0089182b 	sltu	v1,a0,t1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:342
879013b8:	ad150000 	sw	s5,0(t0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:347
879013bc:	10600016 	beqz	v1,87901418 <huft_build+0x160>
879013c0:	00823004 	sllv	a2,v0,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:348
879013c4:	00041080 	sll	v0,a0,0x2
879013c8:	27a70010 	addiu	a3,sp,16
879013cc:	00e21021 	addu	v0,a3,v0
879013d0:	8c430048 	lw	v1,72(v0)
879013d4:	00000000 	nop
879013d8:	00c33023 	subu	a2,a2,v1
879013dc:	04c000e2 	bltz	a2,87901768 <huft_build+0x4b0>
879013e0:	24820001 	addiu	v0,a0,1
879013e4:	00021080 	sll	v0,v0,0x2
879013e8:	01623821 	addu	a3,t3,v0
879013ec:	09e40502 	j	87901408 <huft_build+0x150>
879013f0:	00801821 	move	v1,a0
879013f4:	8ce20000 	lw	v0,0(a3)
879013f8:	00000000 	nop
879013fc:	00c23023 	subu	a2,a2,v0
87901400:	04c000d9 	bltz	a2,87901768 <huft_build+0x4b0>
87901404:	24e70004 	addiu	a3,a3,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:347
87901408:	24630001 	addiu	v1,v1,1
8790140c:	0069102b 	sltu	v0,v1,t1
87901410:	1440fff8 	bnez	v0,879013f4 <huft_build+0x13c>
87901414:	00063040 	sll	a2,a2,0x1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:350
87901418:	00091080 	sll	v0,t1,0x2
8790141c:	27a70010 	addiu	a3,sp,16
87901420:	00e21821 	addu	v1,a3,v0
87901424:	8c620048 	lw	v0,72(v1)
87901428:	00000000 	nop
8790142c:	00c23023 	subu	a2,a2,v0
87901430:	04c000cd 	bltz	a2,87901768 <huft_build+0x4b0>
87901434:	afa60570 	sw	a2,1392(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:352
87901438:	00c21021 	addu	v0,a2,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:359
8790143c:	2528ffff 	addiu	t0,t1,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:352
87901440:	ac620048 	sw	v0,72(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:359
87901444:	1100000b 	beqz	t0,87901474 <huft_build+0x1bc>
87901448:	afa000a0 	sw	zero,160(sp)
8790144c:	00003821 	move	a3,zero
87901450:	00003021 	move	a2,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:360
87901454:	01661021 	addu	v0,t3,a2
87901458:	8c430004 	lw	v1,4(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:359
8790145c:	2508ffff 	addiu	t0,t0,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:360
87901460:	01461021 	addu	v0,t2,a2
87901464:	00e33821 	addu	a3,a3,v1
87901468:	ac470008 	sw	a3,8(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:359
8790146c:	1500fff9 	bnez	t0,87901454 <huft_build+0x19c>
87901470:	24c60004 	addiu	a2,a2,4
87901474:	01803821 	move	a3,t4
87901478:	00003021 	move	a2,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:368
8790147c:	8ce30000 	lw	v1,0(a3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:369
87901480:	27ac0010 	addiu	t4,sp,16
87901484:	00031080 	sll	v0,v1,0x2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:368
87901488:	24e70004 	addiu	a3,a3,4
8790148c:	10600008 	beqz	v1,879014b0 <huft_build+0x1f8>
87901490:	01824021 	addu	t0,t4,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:369
87901494:	8d02008c 	lw	v0,140(t0)
87901498:	00000000 	nop
8790149c:	00021880 	sll	v1,v0,0x2
879014a0:	01831821 	addu	v1,t4,v1
879014a4:	24420001 	addiu	v0,v0,1
879014a8:	ad02008c 	sw	v0,140(t0)
879014ac:	ac6600d0 	sw	a2,208(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:370
879014b0:	24c60001 	addiu	a2,a2,1
879014b4:	00c5102b 	sltu	v0,a2,a1
879014b8:	1440fff0 	bnez	v0,8790147c <huft_build+0x1c4>
879014bc:	0124102a 	slt	v0,t1,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:385
879014c0:	1440012e 	bnez	v0,8790197c <huft_build+0x6c4>
879014c4:	24820001 	addiu	v0,a0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:448
879014c8:	00021080 	sll	v0,v0,0x2
879014cc:	3c078795 	lui	a3,0x8795
879014d0:	27a300e0 	addiu	v1,sp,224
879014d4:	01621021 	addu	v0,t3,v0
879014d8:	00052880 	sll	a1,a1,0x2
879014dc:	00042080 	sll	a0,a0,0x2
879014e0:	8ce7e040 	lw	a3,-8128(a3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:378
879014e4:	00153023 	negu	a2,s5
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:448
879014e8:	00652821 	addu	a1,v1,a1
879014ec:	afa20578 	sw	v0,1400(sp)
879014f0:	01645821 	addu	t3,t3,a0
879014f4:	afa30574 	sw	v1,1396(sp)
879014f8:	2402ffff 	li	v0,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:389
879014fc:	01351823 	subu	v1,t1,s5
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:378
87901500:	afa6056c 	sw	a2,1388(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:448
87901504:	afa70580 	sw	a3,1408(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:375
87901508:	afa0009c 	sw	zero,156(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:379
8790150c:	afa00018 	sw	zero,24(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:448
87901510:	afa50590 	sw	a1,1424(sp)
87901514:	afab057c 	sw	t3,1404(sp)
87901518:	00c06021 	move	t4,a2
8790151c:	afa20560 	sw	v0,1376(sp)
87901520:	00004021 	move	t0,zero
87901524:	afa00584 	sw	zero,1412(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:389
87901528:	afa3059c 	sw	v1,1436(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:469
8790152c:	8fa40588 	lw	a0,1416(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:388
87901530:	8fa6057c 	lw	a2,1404(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:469
87901534:	2482ffff 	addiu	v0,a0,-1
87901538:	24050001 	li	a1,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:388
8790153c:	8cc60000 	lw	a2,0(a2)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:469
87901540:	00451004 	sllv	v0,a1,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:389
87901544:	00953823 	subu	a3,a0,s5
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:469
87901548:	afa20564 	sw	v0,1380(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:388
8790154c:	afa6058c 	sw	a2,1420(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:389
87901550:	afa70598 	sw	a3,1432(sp)
87901554:	8fa5058c 	lw	a1,1420(sp)
87901558:	2406ffff 	li	a2,-1
8790155c:	24a5ffff 	addiu	a1,a1,-1
87901560:	10a600f8 	beq	a1,a2,87901944 <huft_build+0x68c>
87901564:	afa50568 	sw	a1,1384(sp)
87901568:	8fa70598 	lw	a3,1432(sp)
8790156c:	8fa2059c 	lw	v0,1436(sp)
87901570:	0195a021 	addu	s4,t4,s5
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:405
87901574:	00051827 	nor	v1,zero,a1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:389
87901578:	02809821 	move	s3,s4
8790157c:	0180f021 	move	s8,t4
87901580:	00ec9023 	subu	s2,a3,t4
87901584:	004cb023 	subu	s6,v0,t4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:405
87901588:	09e40589 	j	87901624 <huft_build+0x36c>
8790158c:	afa30594 	sw	v1,1428(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:402
87901590:	02408021 	move	s0,s2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:415
87901594:	24020001 	li	v0,1
87901598:	02021004 	sllv	v0,v0,s0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:418
8790159c:	24440001 	addiu	a0,v0,1
879015a0:	000420c0 	sll	a0,a0,0x3
879015a4:	afa905a0 	sw	t1,1440(sp)
879015a8:	afaa05a4 	sw	t2,1444(sp)
879015ac:	0de40450 	jal	87901140 <malloc>
879015b0:	afa20584 	sw	v0,1412(sp)
879015b4:	8fa905a0 	lw	t1,1440(sp)
879015b8:	8faa05a4 	lw	t2,1444(sp)
879015bc:	1040004e 	beqz	v0,879016f8 <huft_build+0x440>
879015c0:	00402821 	move	a1,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:426
879015c4:	8fa60580 	lw	a2,1408(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:429
879015c8:	00111080 	sll	v0,s1,0x2
879015cc:	27a70010 	addiu	a3,sp,16
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:426
879015d0:	24c30001 	addiu	v1,a2,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:429
879015d4:	00e23021 	addu	a2,a3,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:426
879015d8:	8fa20584 	lw	v0,1412(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:427
879015dc:	8fac05e4 	lw	t4,1508(sp)
879015e0:	24a80008 	addiu	t0,a1,8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:426
879015e4:	00621821 	addu	v1,v1,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:427
879015e8:	ad880000 	sw	t0,0(t4)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:426
879015ec:	afa30580 	sw	v1,1408(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:428
879015f0:	aca00004 	sw	zero,4(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:433
879015f4:	1620004a 	bnez	s1,87901720 <huft_build+0x468>
879015f8:	acc80008 	sw	t0,8(a2)
879015fc:	afa00560 	sw	zero,1376(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:428
87901600:	24a50004 	addiu	a1,a1,4
87901604:	afa505e4 	sw	a1,1508(sp)
87901608:	8fa5056c 	lw	a1,1388(sp)
8790160c:	02806021 	move	t4,s4
87901610:	02759821 	addu	s3,s3,s5
87901614:	03d5f021 	addu	s8,s8,s5
87901618:	02459021 	addu	s2,s2,a1
8790161c:	02c5b021 	addu	s6,s6,a1
87901620:	0295a021 	addu	s4,s4,s5
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:394
87901624:	8fa60588 	lw	a2,1416(sp)
87901628:	00000000 	nop
8790162c:	0266102a 	slt	v0,s3,a2
87901630:	1040005f 	beqz	v0,879017b0 <huft_build+0x4f8>
87901634:	00cc2823 	subu	a1,a2,t4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:402
87901638:	240c0001 	li	t4,1
8790163c:	8fa4058c 	lw	a0,1420(sp)
87901640:	024c1804 	sllv	v1,t4,s2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:397
87901644:	8fa50560 	lw	a1,1376(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:402
87901648:	0083102b 	sltu	v0,a0,v1
8790164c:	1040ffd0 	beqz	v0,87901590 <huft_build+0x2d8>
87901650:	24b10001 	addiu	s1,a1,1
87901654:	02d5102b 	sltu	v0,s6,s5
87901658:	10400002 	beqz	v0,87901664 <huft_build+0x3ac>
8790165c:	02a03021 	move	a2,s5
87901660:	02c03021 	move	a2,s6
87901664:	26500001 	addiu	s0,s2,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:407
87901668:	0206102b 	sltu	v0,s0,a2
8790166c:	1040ffca 	beqz	v0,87901598 <huft_build+0x2e0>
87901670:	24020001 	li	v0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:405
87901674:	8fa70594 	lw	a3,1428(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:409
87901678:	8fac0578 	lw	t4,1400(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:405
8790167c:	00671821 	addu	v1,v1,a3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:409
87901680:	8d840000 	lw	a0,0(t4)
87901684:	00031840 	sll	v1,v1,0x1
87901688:	0083102b 	sltu	v0,a0,v1
8790168c:	1040ffc1 	beqz	v0,87901594 <huft_build+0x2dc>
87901690:	01802821 	move	a1,t4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:411
87901694:	09e405ad 	j	879016b4 <huft_build+0x3fc>
87901698:	00641023 	subu	v0,v1,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:409
8790169c:	8ca40000 	lw	a0,0(a1)
879016a0:	00000000 	nop
879016a4:	0083102b 	sltu	v0,a0,v1
879016a8:	1040ffbb 	beqz	v0,87901598 <huft_build+0x2e0>
879016ac:	24020001 	li	v0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:411
879016b0:	00641023 	subu	v0,v1,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:407
879016b4:	26100001 	addiu	s0,s0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:409
879016b8:	00021840 	sll	v1,v0,0x1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:407
879016bc:	0206102b 	sltu	v0,s0,a2
879016c0:	1440fff6 	bnez	v0,8790169c <huft_build+0x3e4>
879016c4:	24a50004 	addiu	a1,a1,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:415
879016c8:	24020001 	li	v0,1
879016cc:	02021004 	sllv	v0,v0,s0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:418
879016d0:	24440001 	addiu	a0,v0,1
879016d4:	000420c0 	sll	a0,a0,0x3
879016d8:	afa905a0 	sw	t1,1440(sp)
879016dc:	afaa05a4 	sw	t2,1444(sp)
879016e0:	0de40450 	jal	87901140 <malloc>
879016e4:	afa20584 	sw	v0,1412(sp)
879016e8:	8fa905a0 	lw	t1,1440(sp)
879016ec:	8faa05a4 	lw	t2,1444(sp)
879016f0:	1440ffb4 	bnez	v0,879015c4 <huft_build+0x30c>
879016f4:	00402821 	move	a1,v0
879016f8:	8fa40580 	lw	a0,1408(sp)
879016fc:	3c038795 	lui	v1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:421
87901700:	1620006f 	bnez	s1,879018c0 <huft_build+0x608>
87901704:	ac64e040 	sw	a0,-8128(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:422
87901708:	09e405db 	j	8790176c <huft_build+0x4b4>
8790170c:	24020003 	li	v0,3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:340
87901710:	09e404ec 	j	879013b0 <huft_build+0xf8>
87901714:	0120a821 	move	s5,t1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:334
87901718:	09e404e0 	j	87901380 <huft_build+0xc8>
8790171c:	0080a821 	move	s5,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:440
87901720:	8fa30560 	lw	v1,1376(sp)
87901724:	27a40010 	addiu	a0,sp,16
87901728:	00031080 	sll	v0,v1,0x2
8790172c:	00821021 	addu	v0,a0,v0
87901730:	8c440008 	lw	a0,8(v0)
87901734:	26030010 	addiu	v1,s0,16
87901738:	03d71006 	srlv	v0,s7,s8
8790173c:	a3a30010 	sb	v1,16(sp)
87901740:	a3b50011 	sb	s5,17(sp)
87901744:	000210c0 	sll	v0,v0,0x3
87901748:	00822021 	addu	a0,a0,v0
8790174c:	8fa20010 	lw	v0,16(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:435
87901750:	acd7008c 	sw	s7,140(a2)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:438
87901754:	afa80014 	sw	t0,20(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:440
87901758:	ac820000 	sw	v0,0(a0)
8790175c:	ac880004 	sw	t0,4(a0)
87901760:	09e40580 	j	87901600 <huft_build+0x348>
87901764:	afb10560 	sw	s1,1376(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:487
87901768:	24020002 	li	v0,2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:488
8790176c:	8fbf05cc 	lw	ra,1484(sp)
87901770:	8fbe05c8 	lw	s8,1480(sp)
87901774:	8fb705c4 	lw	s7,1476(sp)
87901778:	8fb605c0 	lw	s6,1472(sp)
8790177c:	8fb505bc 	lw	s5,1468(sp)
87901780:	8fb405b8 	lw	s4,1464(sp)
87901784:	8fb305b4 	lw	s3,1460(sp)
87901788:	8fb205b0 	lw	s2,1456(sp)
8790178c:	8fb105ac 	lw	s1,1452(sp)
87901790:	8fb005a8 	lw	s0,1448(sp)
87901794:	03e00008 	jr	ra
87901798:	27bd05d0 	addiu	sp,sp,1488
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:321
8790179c:	8fa305e4 	lw	v1,1508(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:322
879017a0:	ad000000 	sw	zero,0(t0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:321
879017a4:	ac600000 	sw	zero,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:322
879017a8:	09e405db 	j	8790176c <huft_build+0x4b4>
879017ac:	00001021 	move	v0,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:448
879017b0:	8fa70574 	lw	a3,1396(sp)
879017b4:	8fa30590 	lw	v1,1424(sp)
879017b8:	00000000 	nop
879017bc:	00e3102b 	sltu	v0,a3,v1
879017c0:	1040003d 	beqz	v0,879018b8 <huft_build+0x600>
879017c4:	30ae00ff 	andi	t6,a1,0xff
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:450
879017c8:	8fa40574 	lw	a0,1396(sp)
879017cc:	8fa605d8 	lw	a2,1496(sp)
879017d0:	8c830000 	lw	v1,0(a0)
879017d4:	00000000 	nop
879017d8:	0066102b 	sltu	v0,v1,a2
879017dc:	1040003d 	beqz	v0,879018d4 <huft_build+0x61c>
879017e0:	24840004 	addiu	a0,a0,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:452
879017e4:	2c6d0100 	sltiu	t5,v1,256
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:453
879017e8:	a7a30014 	sh	v1,20(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:452
879017ec:	25ad000f 	addiu	t5,t5,15
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:454
879017f0:	afa40574 	sw	a0,1396(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:465
879017f4:	8fa40584 	lw	a0,1412(sp)
879017f8:	01971806 	srlv	v1,s7,t4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:464
879017fc:	24060001 	li	a2,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:465
87901800:	0064102b 	sltu	v0,v1,a0
87901804:	10400011 	beqz	v0,8790184c <huft_build+0x594>
87901808:	00a63804 	sllv	a3,a2,a1
8790180c:	000310c0 	sll	v0,v1,0x3
87901810:	01022821 	addu	a1,t0,v0
87901814:	00e33021 	addu	a2,a3,v1
87901818:	000758c0 	sll	t3,a3,0x3
8790181c:	8fa20584 	lw	v0,1412(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:466
87901820:	00c73021 	addu	a2,a2,a3
87901824:	a3ae0011 	sb	t6,17(sp)
87901828:	a3ad0010 	sb	t5,16(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:465
8790182c:	00c71823 	subu	v1,a2,a3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:466
87901830:	8fa40014 	lw	a0,20(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:465
87901834:	0062182b 	sltu	v1,v1,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:466
87901838:	8fa20010 	lw	v0,16(sp)
8790183c:	aca40004 	sw	a0,4(a1)
87901840:	aca20000 	sw	v0,0(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:465
87901844:	1460fff5 	bnez	v1,8790181c <huft_build+0x564>
87901848:	00ab2821 	addu	a1,a1,t3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:469
8790184c:	8fa30564 	lw	v1,1380(sp)
87901850:	00000000 	nop
87901854:	02e31024 	and	v0,s7,v1
87901858:	10400008 	beqz	v0,8790187c <huft_build+0x5c4>
8790185c:	00602021 	move	a0,v1
87901860:	8fa40564 	lw	a0,1380(sp)
87901864:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:470
87901868:	02e4b826 	xor	s7,s7,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:469
8790186c:	00042042 	srl	a0,a0,0x1
87901870:	00971024 	and	v0,a0,s7
87901874:	1440fffc 	bnez	v0,87901868 <huft_build+0x5b0>
87901878:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:474
8790187c:	8fa50560 	lw	a1,1376(sp)
87901880:	27a60010 	addiu	a2,sp,16
87901884:	00051080 	sll	v0,a1,0x2
87901888:	24070001 	li	a3,1
8790188c:	00c21021 	addu	v0,a2,v0
87901890:	01871804 	sllv	v1,a3,t4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:471
87901894:	02e4b826 	xor	s7,s7,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:474
87901898:	2463ffff 	addiu	v1,v1,-1
8790189c:	8c44008c 	lw	a0,140(v0)
879018a0:	02e31824 	and	v1,s7,v1
879018a4:	14640019 	bne	v1,a0,8790190c <huft_build+0x654>
879018a8:	24a4ffff 	addiu	a0,a1,-1
879018ac:	8fa40568 	lw	a0,1384(sp)
879018b0:	09e40555 	j	87901554 <huft_build+0x29c>
879018b4:	afa4058c 	sw	a0,1420(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:448
879018b8:	09e405fd 	j	879017f4 <huft_build+0x53c>
879018bc:	240d0063 	li	t5,99
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:422
879018c0:	8fa40018 	lw	a0,24(sp)
879018c4:	0de4049f 	jal	8790127c <huft_free>
879018c8:	00000000 	nop
879018cc:	09e405db 	j	8790176c <huft_build+0x4b4>
879018d0:	24020003 	li	v0,3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:458
879018d4:	8fa705d8 	lw	a3,1496(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:459
879018d8:	8fa405dc 	lw	a0,1500(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:458
879018dc:	00671023 	subu	v0,v1,a3
879018e0:	00021040 	sll	v0,v0,0x1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:459
879018e4:	00821821 	addu	v1,a0,v0
879018e8:	8fa70574 	lw	a3,1396(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:458
879018ec:	8fa605e0 	lw	a2,1504(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:459
879018f0:	94640000 	lhu	a0,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:458
879018f4:	00c21021 	addu	v0,a2,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:459
879018f8:	24e70004 	addiu	a3,a3,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:458
879018fc:	904d0000 	lbu	t5,0(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:459
87901900:	afa70574 	sw	a3,1396(sp)
87901904:	09e405fd 	j	879017f4 <huft_build+0x53c>
87901908:	a7a40014 	sh	a0,20(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:474
8790190c:	00041080 	sll	v0,a0,0x2
87901910:	01422821 	addu	a1,t2,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:287
87901914:	8fa2056c 	lw	v0,1388(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:474
87901918:	24030001 	li	v1,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:287
8790191c:	01826021 	addu	t4,t4,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:474
87901920:	01831004 	sllv	v0,v1,t4
87901924:	2442ffff 	addiu	v0,v0,-1
87901928:	8ca30000 	lw	v1,0(a1)
8790192c:	00571024 	and	v0,v0,s7
87901930:	24a5fffc 	addiu	a1,a1,-4
87901934:	1043ffdd 	beq	v0,v1,879018ac <huft_build+0x5f4>
87901938:	afa40560 	sw	a0,1376(sp)
8790193c:	09e40645 	j	87901914 <huft_build+0x65c>
87901940:	2484ffff 	addiu	a0,a0,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:385
87901944:	8fa40588 	lw	a0,1416(sp)
87901948:	8fa5057c 	lw	a1,1404(sp)
8790194c:	8fa60578 	lw	a2,1400(sp)
87901950:	24840001 	addiu	a0,a0,1
87901954:	24a50004 	addiu	a1,a1,4
87901958:	24c60004 	addiu	a2,a2,4
8790195c:	0124102a 	slt	v0,t1,a0
87901960:	afa40588 	sw	a0,1416(sp)
87901964:	afa5057c 	sw	a1,1404(sp)
87901968:	1040fef0 	beqz	v0,8790152c <huft_build+0x274>
8790196c:	afa60578 	sw	a2,1400(sp)
87901970:	8fac0580 	lw	t4,1408(sp)
87901974:	3c078795 	lui	a3,0x8795
87901978:	acece040 	sw	t4,-8128(a3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:487
8790197c:	8fa20570 	lw	v0,1392(sp)
87901980:	00000000 	nop
87901984:	1040ff79 	beqz	v0,8790176c <huft_build+0x4b4>
87901988:	00000000 	nop
8790198c:	39220001 	xori	v0,t1,0x1
87901990:	09e405db 	j	8790176c <huft_build+0x4b4>
87901994:	0002102b 	sltu	v0,zero,v0

87901998 <enable_cache>:
enable_cache():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:4
87901998:	40048000 	mfc0	a0,$16
8790199c:	2401fff8 	li	at,-8
879019a0:	00812024 	and	a0,a0,at
879019a4:	34840003 	ori	a0,a0,0x3
879019a8:	40848000 	mtc0	a0,$16
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:14
879019ac:	03e00008 	jr	ra
879019b0:	00000000 	nop

879019b4 <flush_cache>:
flush_cache():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:44
879019b4:	3c058000 	lui	a1,0x8000
879019b8:	24a61000 	addiu	a2,a1,4096
879019bc:	bca10000 	0xbca10000
879019c0:	bca11000 	0xbca11000
879019c4:	bca12000 	0xbca12000
879019c8:	bca13000 	0xbca13000
879019cc:	bca00000 	0xbca00000
879019d0:	bca01000 	0xbca01000
879019d4:	bca02000 	0xbca02000
879019d8:	bca03000 	0xbca03000
879019dc:	20a50020 	addi	a1,a1,32
879019e0:	14a6fff6 	bne	a1,a2,879019bc <flush_cache+0x8>
879019e4:	00000000 	nop
879019e8:	03e00008 	jr	ra
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:62
879019ec:	00000000 	nop

879019f0 <led_on>:
led_on():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:66
879019f0:	00042600 	sll	a0,a0,0x18
879019f4:	00042603 	sra	a0,a0,0x18
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:67
879019f8:	3c02bfd0 	lui	v0,0xbfd0
879019fc:	34420010 	ori	v0,v0,0x10
87901a00:	80430000 	lb	v1,0(v0)
87901a04:	00000000 	nop
87901a08:	00641824 	and	v1,v1,a0
87901a0c:	03e00008 	jr	ra
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:76
87901a10:	a0430000 	sb	v1,0(v0)

87901a14 <realinitmips>:
realinitmips():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:113
87901a14:	00801821 	move	v1,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:114
87901a18:	3c1d8700 	lui	sp,0x8700
87901a1c:	37bdc000 	ori	sp,sp,0xc000
87901a20:	3c028708 	lui	v0,0x8708
87901a24:	34428f2c 	ori	v0,v0,0x8f2c
87901a28:	0040f809 	jalr	v0
87901a2c:	00602021 	move	a0,v1
87901a30:	00000000 	nop
87901a34:	1000ffff 	b	87901a34 <realinitmips+0x20>
87901a38:	00000000 	nop
87901a3c:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:124
87901a40:	03e00008 	jr	ra
87901a44:	00000000 	nop

87901a48 <tgt_puts>:
tgt_puts():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:126
87901a48:	27bdffe8 	addiu	sp,sp,-24
87901a4c:	afb00010 	sw	s0,16(sp)
87901a50:	afbf0014 	sw	ra,20(sp)
87901a54:	00808021 	move	s0,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:127
87901a58:	80840000 	lb	a0,0(a0)
87901a5c:	00000000 	nop
87901a60:	10800007 	beqz	a0,87901a80 <tgt_puts+0x38>
87901a64:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:128
87901a68:	0de40328 	jal	87900ca0 <tgt_putchar>
87901a6c:	26100001 	addiu	s0,s0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:127
87901a70:	82040000 	lb	a0,0(s0)
87901a74:	00000000 	nop
87901a78:	1480fffb 	bnez	a0,87901a68 <tgt_puts+0x20>
87901a7c:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:130
87901a80:	8fbf0014 	lw	ra,20(sp)
87901a84:	00001021 	move	v0,zero
87901a88:	8fb00010 	lw	s0,16(sp)
87901a8c:	03e00008 	jr	ra
87901a90:	27bd0018 	addiu	sp,sp,24

87901a94 <flush_window>:
flush_window():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:92
87901a94:	27bdffd0 	addiu	sp,sp,-48
87901a98:	afb50028 	sw	s5,40(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:99
87901a9c:	2404002e 	li	a0,46
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:93
87901aa0:	3c158795 	lui	s5,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:92
87901aa4:	afbf002c 	sw	ra,44(sp)
87901aa8:	afb40024 	sw	s4,36(sp)
87901aac:	afb30020 	sw	s3,32(sp)
87901ab0:	afb2001c 	sw	s2,28(sp)
87901ab4:	afb10018 	sw	s1,24(sp)
87901ab8:	afb00014 	sw	s0,20(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:93
87901abc:	8eb2e044 	lw	s2,-8124(s5)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:99
87901ac0:	0de40328 	jal	87900ca0 <tgt_putchar>
87901ac4:	3c148795 	lui	s4,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:100
87901ac8:	3c028795 	lui	v0,0x8795
87901acc:	8e93e02c 	lw	s3,-8148(s4)
87901ad0:	3c108795 	lui	s0,0x8795
87901ad4:	8c51e020 	lw	s1,-8160(v0)
87901ad8:	8e04f008 	lw	a0,-4088(s0)
87901adc:	02202821 	move	a1,s1
87901ae0:	0de40400 	jal	87901000 <memcpy>
87901ae4:	02603021 	move	a2,s3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:102
87901ae8:	8e03f008 	lw	v1,-4088(s0)
87901aec:	00000000 	nop
87901af0:	00731821 	addu	v1,v1,s3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:104
87901af4:	12600010 	beqz	s3,87901b38 <flush_window+0xa4>
87901af8:	ae03f008 	sw	v1,-4088(s0)
87901afc:	3c028795 	lui	v0,0x8795
87901b00:	2446e050 	addiu	a2,v0,-8112
87901b04:	00002821 	move	a1,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:105
87901b08:	92220000 	lbu	v0,0(s1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:104
87901b0c:	24a50001 	addiu	a1,a1,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:106
87901b10:	02421026 	xor	v0,s2,v0
87901b14:	304200ff 	andi	v0,v0,0xff
87901b18:	00021080 	sll	v0,v0,0x2
87901b1c:	00c21021 	addu	v0,a2,v0
87901b20:	8c440000 	lw	a0,0(v0)
87901b24:	00121a02 	srl	v1,s2,0x8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:104
87901b28:	00b3102b 	sltu	v0,a1,s3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:106
87901b2c:	00839026 	xor	s2,a0,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:104
87901b30:	1440fff5 	bnez	v0,87901b08 <flush_window+0x74>
87901b34:	26310001 	addiu	s1,s1,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:109
87901b38:	3c038795 	lui	v1,0x8795
87901b3c:	8c62e034 	lw	v0,-8140(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:111
87901b40:	8fbf002c 	lw	ra,44(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:109
87901b44:	00531021 	addu	v0,v0,s3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:108
87901b48:	aeb2e044 	sw	s2,-8124(s5)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:110
87901b4c:	ae80e02c 	sw	zero,-8148(s4)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:111
87901b50:	8fb50028 	lw	s5,40(sp)
87901b54:	8fb40024 	lw	s4,36(sp)
87901b58:	8fb30020 	lw	s3,32(sp)
87901b5c:	8fb2001c 	lw	s2,28(sp)
87901b60:	8fb10018 	lw	s1,24(sp)
87901b64:	8fb00014 	lw	s0,20(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:109
87901b68:	ac62e034 	sw	v0,-8140(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:111
87901b6c:	03e00008 	jr	ra
87901b70:	27bd0030 	addiu	sp,sp,48

87901b74 <inflate_codes>:
inflate_codes():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:518
87901b74:	27bdffc0 	addiu	sp,sp,-64
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:534
87901b78:	00061840 	sll	v1,a2,0x1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:518
87901b7c:	afa60048 	sw	a2,72(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:534
87901b80:	3c068790 	lui	a2,0x8790
87901b84:	24c63524 	addiu	a2,a2,13604
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:535
87901b88:	00071040 	sll	v0,a3,0x1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:534
87901b8c:	00c31821 	addu	v1,a2,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:535
87901b90:	00c21021 	addu	v0,a2,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:534
87901b94:	94630000 	lhu	v1,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:535
87901b98:	94420000 	lhu	v0,0(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:534
87901b9c:	afa30014 	sw	v1,20(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:535
87901ba0:	afa20010 	sw	v0,16(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:529
87901ba4:	3c098795 	lui	t1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:530
87901ba8:	3c028795 	lui	v0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:531
87901bac:	3c038795 	lui	v1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:518
87901bb0:	afb5002c 	sw	s5,44(sp)
87901bb4:	afb1001c 	sw	s1,28(sp)
87901bb8:	afb00018 	sw	s0,24(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:529
87901bbc:	8d31e038 	lw	s1,-8136(t1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:530
87901bc0:	8c50e03c 	lw	s0,-8132(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:531
87901bc4:	8c75e02c 	lw	s5,-8148(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:518
87901bc8:	afbe0038 	sw	s8,56(sp)
87901bcc:	afb70034 	sw	s7,52(sp)
87901bd0:	afbf003c 	sw	ra,60(sp)
87901bd4:	afb60030 	sw	s6,48(sp)
87901bd8:	afb40028 	sw	s4,40(sp)
87901bdc:	afb30024 	sw	s3,36(sp)
87901be0:	afb20020 	sw	s2,32(sp)
87901be4:	afa7004c 	sw	a3,76(sp)
87901be8:	afa40040 	sw	a0,64(sp)
87901bec:	afa50044 	sw	a1,68(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:538
87901bf0:	3c178795 	lui	s7,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:587
87901bf4:	341e8000 	li	s8,0x8000
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:538
87901bf8:	8fa90048 	lw	t1,72(sp)
87901bfc:	00000000 	nop
87901c00:	0209102b 	sltu	v0,s0,t1
87901c04:	1440003d 	bnez	v0,87901cfc <inflate_codes+0x188>
87901c08:	3c068795 	lui	a2,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:539
87901c0c:	8fa30014 	lw	v1,20(sp)
87901c10:	8fa40040 	lw	a0,64(sp)
87901c14:	02231024 	and	v0,s1,v1
87901c18:	000210c0 	sll	v0,v0,0x3
87901c1c:	00824021 	addu	t0,a0,v0
87901c20:	91060000 	lbu	a2,0(t0)
87901c24:	00000000 	nop
87901c28:	2cc20011 	sltiu	v0,a2,17
87901c2c:	1440003e 	bnez	v0,87901d28 <inflate_codes+0x1b4>
87901c30:	24090063 	li	t1,99
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:541
87901c34:	10c900fd 	beq	a2,t1,8790202c <inflate_codes+0x4b8>
87901c38:	3c0c8795 	lui	t4,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:545
87901c3c:	3c028795 	lui	v0,0x8795
87901c40:	8c49e01c 	lw	t1,-8164(v0)
87901c44:	8ee7e028 	lw	a3,-8152(s7)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:543
87901c48:	91030001 	lbu	v1,1(t0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:544
87901c4c:	24c6fff0 	addiu	a2,a2,-16
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:543
87901c50:	02038023 	subu	s0,s0,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:545
87901c54:	0206102b 	sltu	v0,s0,a2
87901c58:	1040000a 	beqz	v0,87901c84 <inflate_codes+0x110>
87901c5c:	00712806 	srlv	a1,s1,v1
87901c60:	01272021 	addu	a0,t1,a3
87901c64:	90820000 	lbu	v0,0(a0)
87901c68:	24e70001 	addiu	a3,a3,1
87901c6c:	02021004 	sllv	v0,v0,s0
87901c70:	26100008 	addiu	s0,s0,8
87901c74:	0206182b 	sltu	v1,s0,a2
87901c78:	00a22825 	or	a1,a1,v0
87901c7c:	1460fff9 	bnez	v1,87901c64 <inflate_codes+0xf0>
87901c80:	24840001 	addiu	a0,a0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:546
87901c84:	3c048790 	lui	a0,0x8790
87901c88:	00061040 	sll	v0,a2,0x1
87901c8c:	24843524 	addiu	a0,a0,13604
87901c90:	00821021 	addu	v0,a0,v0
87901c94:	94430000 	lhu	v1,0(v0)
87901c98:	8d020004 	lw	v0,4(t0)
87901c9c:	00a31824 	and	v1,a1,v1
87901ca0:	000318c0 	sll	v1,v1,0x3
87901ca4:	00434021 	addu	t0,v0,v1
87901ca8:	91060000 	lbu	a2,0(t0)
87901cac:	00000000 	nop
87901cb0:	2cc20011 	sltiu	v0,a2,17
87901cb4:	1440001b 	bnez	v0,87901d24 <inflate_codes+0x1b0>
87901cb8:	00a08821 	move	s1,a1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:541
87901cbc:	24030063 	li	v1,99
87901cc0:	14c3ffe1 	bne	a2,v1,87901c48 <inflate_codes+0xd4>
87901cc4:	24020001 	li	v0,1
87901cc8:	ad87e028 	sw	a3,-8152(t4)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:618
87901ccc:	8fbf003c 	lw	ra,60(sp)
87901cd0:	8fbe0038 	lw	s8,56(sp)
87901cd4:	8fb70034 	lw	s7,52(sp)
87901cd8:	8fb60030 	lw	s6,48(sp)
87901cdc:	8fb5002c 	lw	s5,44(sp)
87901ce0:	8fb40028 	lw	s4,40(sp)
87901ce4:	8fb30024 	lw	s3,36(sp)
87901ce8:	8fb20020 	lw	s2,32(sp)
87901cec:	8fb1001c 	lw	s1,28(sp)
87901cf0:	8fb00018 	lw	s0,24(sp)
87901cf4:	03e00008 	jr	ra
87901cf8:	27bd0040 	addiu	sp,sp,64
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:538
87901cfc:	8ee4e028 	lw	a0,-8152(s7)
87901d00:	8cc2e01c 	lw	v0,-8164(a2)
87901d04:	24850001 	addiu	a1,a0,1
87901d08:	00441021 	addu	v0,v0,a0
87901d0c:	90430000 	lbu	v1,0(v0)
87901d10:	aee5e028 	sw	a1,-8152(s7)
87901d14:	02031804 	sllv	v1,v1,s0
87901d18:	02238825 	or	s1,s1,v1
87901d1c:	09e406fe 	j	87901bf8 <inflate_codes+0x84>
87901d20:	26100008 	addiu	s0,s0,8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:546
87901d24:	aee7e028 	sw	a3,-8152(s7)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:547
87901d28:	91020001 	lbu	v0,1(t0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:548
87901d2c:	24090010 	li	t1,16
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:547
87901d30:	02028023 	subu	s0,s0,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:548
87901d34:	10c900b1 	beq	a2,t1,87901ffc <inflate_codes+0x488>
87901d38:	00518806 	srlv	s1,s1,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:561
87901d3c:	2409000f 	li	t1,15
87901d40:	10c900bc 	beq	a2,t1,87902034 <inflate_codes+0x4c0>
87901d44:	3c038795 	lui	v1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:565
87901d48:	0206102b 	sltu	v0,s0,a2
87901d4c:	1040000e 	beqz	v0,87901d88 <inflate_codes+0x214>
87901d50:	3c038795 	lui	v1,0x8795
87901d54:	8ee5e028 	lw	a1,-8152(s7)
87901d58:	8c62e01c 	lw	v0,-8164(v1)
87901d5c:	00000000 	nop
87901d60:	00452021 	addu	a0,v0,a1
87901d64:	90820000 	lbu	v0,0(a0)
87901d68:	24a50001 	addiu	a1,a1,1
87901d6c:	02021004 	sllv	v0,v0,s0
87901d70:	26100008 	addiu	s0,s0,8
87901d74:	0206182b 	sltu	v1,s0,a2
87901d78:	02228825 	or	s1,s1,v0
87901d7c:	1460fff9 	bnez	v1,87901d64 <inflate_codes+0x1f0>
87901d80:	24840001 	addiu	a0,a0,1
87901d84:	aee5e028 	sw	a1,-8152(s7)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:566
87901d88:	3c048790 	lui	a0,0x8790
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:570
87901d8c:	8fa9004c 	lw	t1,76(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:567
87901d90:	02063823 	subu	a3,s0,a2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:566
87901d94:	00061040 	sll	v0,a2,0x1
87901d98:	24843524 	addiu	a0,a0,13604
87901d9c:	00821021 	addu	v0,a0,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:570
87901da0:	00e9182b 	sltu	v1,a3,t1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:566
87901da4:	950d0004 	lhu	t5,4(t0)
87901da8:	94450000 	lhu	a1,0(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:570
87901dac:	10600010 	beqz	v1,87901df0 <inflate_codes+0x27c>
87901db0:	00d14006 	srlv	t0,s1,a2
87901db4:	3c038795 	lui	v1,0x8795
87901db8:	8ee6e028 	lw	a2,-8152(s7)
87901dbc:	8c62e01c 	lw	v0,-8164(v1)
87901dc0:	00000000 	nop
87901dc4:	00462021 	addu	a0,v0,a2
87901dc8:	90820000 	lbu	v0,0(a0)
87901dcc:	8fa9004c 	lw	t1,76(sp)
87901dd0:	00e21004 	sllv	v0,v0,a3
87901dd4:	24e70008 	addiu	a3,a3,8
87901dd8:	00e9182b 	sltu	v1,a3,t1
87901ddc:	24c60001 	addiu	a2,a2,1
87901de0:	01024025 	or	t0,t0,v0
87901de4:	1460fff8 	bnez	v1,87901dc8 <inflate_codes+0x254>
87901de8:	24840001 	addiu	a0,a0,1
87901dec:	aee6e028 	sw	a2,-8152(s7)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:571
87901df0:	8fa30010 	lw	v1,16(sp)
87901df4:	8fa60044 	lw	a2,68(sp)
87901df8:	01031024 	and	v0,t0,v1
87901dfc:	000210c0 	sll	v0,v0,0x3
87901e00:	00c25021 	addu	t2,a2,v0
87901e04:	91540000 	lbu	s4,0(t2)
87901e08:	00000000 	nop
87901e0c:	2e820011 	sltiu	v0,s4,17
87901e10:	1440002a 	bnez	v0,87901ebc <inflate_codes+0x348>
87901e14:	01002021 	move	a0,t0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:573
87901e18:	24090063 	li	t1,99
87901e1c:	12890083 	beq	s4,t1,8790202c <inflate_codes+0x4b8>
87901e20:	3c0c8795 	lui	t4,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:577
87901e24:	3c028795 	lui	v0,0x8795
87901e28:	8c4be01c 	lw	t3,-8164(v0)
87901e2c:	8ee9e028 	lw	t1,-8152(s7)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:575
87901e30:	91430001 	lbu	v1,1(t2)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:576
87901e34:	2688fff0 	addiu	t0,s4,-16
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:575
87901e38:	00e33823 	subu	a3,a3,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:577
87901e3c:	00e8102b 	sltu	v0,a3,t0
87901e40:	1040000a 	beqz	v0,87901e6c <inflate_codes+0x2f8>
87901e44:	00643006 	srlv	a2,a0,v1
87901e48:	01692021 	addu	a0,t3,t1
87901e4c:	90820000 	lbu	v0,0(a0)
87901e50:	25290001 	addiu	t1,t1,1
87901e54:	00e21004 	sllv	v0,v0,a3
87901e58:	24e70008 	addiu	a3,a3,8
87901e5c:	00e8182b 	sltu	v1,a3,t0
87901e60:	00c23025 	or	a2,a2,v0
87901e64:	1460fff9 	bnez	v1,87901e4c <inflate_codes+0x2d8>
87901e68:	24840001 	addiu	a0,a0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:578
87901e6c:	3c048790 	lui	a0,0x8790
87901e70:	24843524 	addiu	a0,a0,13604
87901e74:	00081040 	sll	v0,t0,0x1
87901e78:	00821021 	addu	v0,a0,v0
87901e7c:	94430000 	lhu	v1,0(v0)
87901e80:	8d420004 	lw	v0,4(t2)
87901e84:	00c31824 	and	v1,a2,v1
87901e88:	000318c0 	sll	v1,v1,0x3
87901e8c:	00435021 	addu	t2,v0,v1
87901e90:	91540000 	lbu	s4,0(t2)
87901e94:	00000000 	nop
87901e98:	2e820011 	sltiu	v0,s4,17
87901e9c:	14400006 	bnez	v0,87901eb8 <inflate_codes+0x344>
87901ea0:	00c02021 	move	a0,a2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:573
87901ea4:	24030063 	li	v1,99
87901ea8:	1683ffe1 	bne	s4,v1,87901e30 <inflate_codes+0x2bc>
87901eac:	24020001 	li	v0,1
87901eb0:	09e40733 	j	87901ccc <inflate_codes+0x158>
87901eb4:	ad89e028 	sw	t1,-8152(t4)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:578
87901eb8:	aee9e028 	sw	t1,-8152(s7)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:579
87901ebc:	91420001 	lbu	v0,1(t2)
87901ec0:	00000000 	nop
87901ec4:	00e29823 	subu	s3,a3,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:580
87901ec8:	0274182b 	sltu	v1,s3,s4
87901ecc:	1060000f 	beqz	v1,87901f0c <inflate_codes+0x398>
87901ed0:	0044b006 	srlv	s6,a0,v0
87901ed4:	3c098795 	lui	t1,0x8795
87901ed8:	8ee6e028 	lw	a2,-8152(s7)
87901edc:	8d22e01c 	lw	v0,-8164(t1)
87901ee0:	00000000 	nop
87901ee4:	00462021 	addu	a0,v0,a2
87901ee8:	90820000 	lbu	v0,0(a0)
87901eec:	24c60001 	addiu	a2,a2,1
87901ef0:	02621004 	sllv	v0,v0,s3
87901ef4:	26730008 	addiu	s3,s3,8
87901ef8:	0274182b 	sltu	v1,s3,s4
87901efc:	02c2b025 	or	s6,s6,v0
87901f00:	1460fff9 	bnez	v1,87901ee8 <inflate_codes+0x374>
87901f04:	24840001 	addiu	a0,a0,1
87901f08:	aee6e028 	sw	a2,-8152(s7)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:581
87901f0c:	3c038790 	lui	v1,0x8790
87901f10:	24633524 	addiu	v1,v1,13604
87901f14:	00141040 	sll	v0,s4,0x1
87901f18:	00621021 	addu	v0,v1,v0
87901f1c:	95440004 	lhu	a0,4(t2)
87901f20:	94430000 	lhu	v1,0(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:566
87901f24:	02252824 	and	a1,s1,a1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:581
87901f28:	02a42023 	subu	a0,s5,a0
87901f2c:	02c31824 	and	v1,s6,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:566
87901f30:	00ad9021 	addu	s2,a1,t5
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:581
87901f34:	00838823 	subu	s1,a0,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:587
87901f38:	32317fff 	andi	s1,s1,0x7fff
87901f3c:	02b1102b 	sltu	v0,s5,s1
87901f40:	10400002 	beqz	v0,87901f4c <inflate_codes+0x3d8>
87901f44:	03d53023 	subu	a2,s8,s5
87901f48:	03d13023 	subu	a2,s8,s1
87901f4c:	0246102b 	sltu	v0,s2,a2
87901f50:	10400002 	beqz	v0,87901f5c <inflate_codes+0x3e8>
87901f54:	00c08021 	move	s0,a2
87901f58:	02408021 	move	s0,s2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:589
87901f5c:	02b11023 	subu	v0,s5,s1
87901f60:	0050102b 	sltu	v0,v0,s0
87901f64:	1040001a 	beqz	v0,87901fd0 <inflate_codes+0x45c>
87901f68:	02509023 	subu	s2,s2,s0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:598
87901f6c:	3c098795 	lui	t1,0x8795
87901f70:	8d22e020 	lw	v0,-8160(t1)
87901f74:	02002821 	move	a1,s0
87901f78:	00552021 	addu	a0,v0,s5
87901f7c:	00511821 	addu	v1,v0,s1
87901f80:	90620000 	lbu	v0,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:600
87901f84:	24a5ffff 	addiu	a1,a1,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:598
87901f88:	a0820000 	sb	v0,0(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:600
87901f8c:	24630001 	addiu	v1,v1,1
87901f90:	14a0fffb 	bnez	a1,87901f80 <inflate_codes+0x40c>
87901f94:	24840001 	addiu	a0,a0,1
87901f98:	02b0a821 	addu	s5,s5,s0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:601
87901f9c:	12be0005 	beq	s5,s8,87901fb4 <inflate_codes+0x440>
87901fa0:	02118821 	addu	s1,s0,s1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:606
87901fa4:	1640ffe4 	bnez	s2,87901f38 <inflate_codes+0x3c4>
87901fa8:	02748023 	subu	s0,s3,s4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:582
87901fac:	09e406fe 	j	87901bf8 <inflate_codes+0x84>
87901fb0:	02968806 	srlv	s1,s6,s4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:603
87901fb4:	3c028795 	lui	v0,0x8795
87901fb8:	0de406a5 	jal	87901a94 <flush_window>
87901fbc:	ac55e02c 	sw	s5,-8148(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:606
87901fc0:	1640ffdd 	bnez	s2,87901f38 <inflate_codes+0x3c4>
87901fc4:	0000a821 	move	s5,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:582
87901fc8:	09e407eb 	j	87901fac <inflate_codes+0x438>
87901fcc:	02748023 	subu	s0,s3,s4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:591
87901fd0:	3c068795 	lui	a2,0x8795
87901fd4:	8cc4e020 	lw	a0,-8160(a2)
87901fd8:	02003021 	move	a2,s0
87901fdc:	00912821 	addu	a1,a0,s1
87901fe0:	00952021 	addu	a0,a0,s5
87901fe4:	0de40400 	jal	87901000 <memcpy>
87901fe8:	02b0a821 	addu	s5,s5,s0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:601
87901fec:	16beffed 	bne	s5,s8,87901fa4 <inflate_codes+0x430>
87901ff0:	02118821 	addu	s1,s0,s1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:603
87901ff4:	09e407ee 	j	87901fb8 <inflate_codes+0x444>
87901ff8:	3c028795 	lui	v0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:550
87901ffc:	3c038795 	lui	v1,0x8795
87902000:	8c62e020 	lw	v0,-8160(v1)
87902004:	95030004 	lhu	v1,4(t0)
87902008:	00551021 	addu	v0,v0,s5
8790200c:	26b50001 	addiu	s5,s5,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:552
87902010:	16befef9 	bne	s5,s8,87901bf8 <inflate_codes+0x84>
87902014:	a0430000 	sb	v1,0(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:554
87902018:	3c048795 	lui	a0,0x8795
8790201c:	0de406a5 	jal	87901a94 <flush_window>
87902020:	ac95e02c 	sw	s5,-8148(a0)
87902024:	09e406fe 	j	87901bf8 <inflate_codes+0x84>
87902028:	0000a821 	move	s5,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:617
8790202c:	09e40733 	j	87901ccc <inflate_codes+0x158>
87902030:	24020001 	li	v0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:613
87902034:	3c048795 	lui	a0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:614
87902038:	3c068795 	lui	a2,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:612
8790203c:	ac75e02c 	sw	s5,-8148(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:613
87902040:	ac91e038 	sw	s1,-8136(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:614
87902044:	acd0e03c 	sw	s0,-8132(a2)
87902048:	09e40733 	j	87901ccc <inflate_codes+0x158>
8790204c:	00001021 	move	v0,zero

87902050 <inflate_dynamic>:
inflate_dynamic():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:759
87902050:	3c0e8795 	lui	t6,0x8795
87902054:	8dc7e03c 	lw	a3,-8132(t6)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902058:	27bdfaa8 	addiu	sp,sp,-1368
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:758
8790205c:	3c0d8795 	lui	t5,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:763
87902060:	2ce20005 	sltiu	v0,a3,5
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902064:	afbf0554 	sw	ra,1364(sp)
87902068:	afbe0550 	sw	s8,1360(sp)
8790206c:	afb7054c 	sw	s7,1356(sp)
87902070:	afb60548 	sw	s6,1352(sp)
87902074:	afb50544 	sw	s5,1348(sp)
87902078:	afb40540 	sw	s4,1344(sp)
8790207c:	afb3053c 	sw	s3,1340(sp)
87902080:	afb20538 	sw	s2,1336(sp)
87902084:	afb10534 	sw	s1,1332(sp)
87902088:	afb00530 	sw	s0,1328(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:758
8790208c:	8da6e038 	lw	a2,-8136(t5)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:763
87902090:	1040000c 	beqz	v0,879020c4 <inflate_dynamic+0x74>
87902094:	3c058795 	lui	a1,0x8795
87902098:	3c038795 	lui	v1,0x8795
8790209c:	8ca4e028 	lw	a0,-8152(a1)
879020a0:	8c62e01c 	lw	v0,-8164(v1)
879020a4:	00000000 	nop
879020a8:	00441021 	addu	v0,v0,a0
879020ac:	90430000 	lbu	v1,0(v0)
879020b0:	24840001 	addiu	a0,a0,1
879020b4:	00e31804 	sllv	v1,v1,a3
879020b8:	aca4e028 	sw	a0,-8152(a1)
879020bc:	00c33025 	or	a2,a2,v1
879020c0:	24e70008 	addiu	a3,a3,8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:765
879020c4:	24e8fffb 	addiu	t0,a3,-5
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:764
879020c8:	30c2001f 	andi	v0,a2,0x1f
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:766
879020cc:	2d030005 	sltiu	v1,t0,5
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:764
879020d0:	24570101 	addiu	s7,v0,257
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:766
879020d4:	10600012 	beqz	v1,87902120 <inflate_dynamic+0xd0>
879020d8:	00065142 	srl	t2,a2,0x5
879020dc:	3c068795 	lui	a2,0x8795
879020e0:	3c028795 	lui	v0,0x8795
879020e4:	8cc4e028 	lw	a0,-8152(a2)
879020e8:	8c43e01c 	lw	v1,-8164(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
879020ec:	24020009 	li	v0,9
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:766
879020f0:	00641821 	addu	v1,v1,a0
879020f4:	90650000 	lbu	a1,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
879020f8:	00471023 	subu	v0,v0,a3
879020fc:	000210c2 	srl	v0,v0,0x3
87902100:	24840001 	addiu	a0,a0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:766
87902104:	01052804 	sllv	a1,a1,t0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902108:	00822021 	addu	a0,a0,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:766
8790210c:	24e30003 	addiu	v1,a3,3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902110:	000210c0 	sll	v0,v0,0x3
87902114:	acc4e028 	sw	a0,-8152(a2)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:766
87902118:	01455025 	or	t2,t2,a1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
8790211c:	00624021 	addu	t0,v1,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:768
87902120:	2507fffb 	addiu	a3,t0,-5
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:769
87902124:	2ce20004 	sltiu	v0,a3,4
87902128:	10400012 	beqz	v0,87902174 <inflate_dynamic+0x124>
8790212c:	000a4942 	srl	t1,t2,0x5
87902130:	3c068795 	lui	a2,0x8795
87902134:	3c028795 	lui	v0,0x8795
87902138:	8cc4e028 	lw	a0,-8152(a2)
8790213c:	8c43e01c 	lw	v1,-8164(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902140:	24020008 	li	v0,8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:769
87902144:	00641821 	addu	v1,v1,a0
87902148:	90650000 	lbu	a1,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
8790214c:	00481023 	subu	v0,v0,t0
87902150:	000210c2 	srl	v0,v0,0x3
87902154:	24840001 	addiu	a0,a0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:769
87902158:	00e52804 	sllv	a1,a1,a3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
8790215c:	00822021 	addu	a0,a0,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:769
87902160:	25030003 	addiu	v1,t0,3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902164:	000210c0 	sll	v0,v0,0x3
87902168:	acc4e028 	sw	a0,-8152(a2)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:769
8790216c:	01254825 	or	t1,t1,a1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902170:	00623821 	addu	a3,v1,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:770
87902174:	3122000f 	andi	v0,t1,0xf
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:775
87902178:	2ee3011f 	sltiu	v1,s7,287
8790217c:	10600093 	beqz	v1,879023cc <inflate_dynamic+0x37c>
87902180:	24480004 	addiu	t0,v0,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:767
87902184:	3142001f 	andi	v0,t2,0x1f
87902188:	24560001 	addiu	s6,v0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:775
8790218c:	2ec3001f 	sltiu	v1,s6,31
87902190:	1060008e 	beqz	v1,879023cc <inflate_dynamic+0x37c>
87902194:	3c0c8795 	lui	t4,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:784
87902198:	3c028790 	lui	v0,0x8790
8790219c:	3c038795 	lui	v1,0x8795
879021a0:	244a34d8 	addiu	t2,v0,13528
879021a4:	8c74e01c 	lw	s4,-8164(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:771
879021a8:	8d92e028 	lw	s2,-8152(t4)
879021ac:	00098902 	srl	s1,t1,0x4
879021b0:	24f0fffc 	addiu	s0,a3,-4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:784
879021b4:	01402821 	move	a1,t2
879021b8:	00003021 	move	a2,zero
879021bc:	27b50020 	addiu	s5,sp,32
879021c0:	2e020003 	sltiu	v0,s0,3
879021c4:	10400006 	beqz	v0,879021e0 <inflate_dynamic+0x190>
879021c8:	02921821 	addu	v1,s4,s2
879021cc:	90620000 	lbu	v0,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
879021d0:	26520001 	addiu	s2,s2,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:784
879021d4:	02021004 	sllv	v0,v0,s0
879021d8:	02228825 	or	s1,s1,v0
879021dc:	26100008 	addiu	s0,s0,8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:785
879021e0:	8ca20000 	lw	v0,0(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:782
879021e4:	24c60001 	addiu	a2,a2,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:785
879021e8:	00021080 	sll	v0,v0,0x2
879021ec:	32230007 	andi	v1,s1,0x7
879021f0:	02a21021 	addu	v0,s5,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:782
879021f4:	00c8202b 	sltu	a0,a2,t0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:785
879021f8:	ac430010 	sw	v1,16(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:786
879021fc:	001188c2 	srl	s1,s1,0x3
87902200:	2610fffd 	addiu	s0,s0,-3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:782
87902204:	1480ffee 	bnez	a0,879021c0 <inflate_dynamic+0x170>
87902208:	24a50004 	addiu	a1,a1,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:788
8790220c:	2cc20013 	sltiu	v0,a2,19
87902210:	1040000b 	beqz	v0,87902240 <inflate_dynamic+0x1f0>
87902214:	ad92e028 	sw	s2,-8152(t4)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902218:	00061080 	sll	v0,a2,0x2
8790221c:	3c038790 	lui	v1,0x8790
87902220:	01422021 	addu	a0,t2,v0
87902224:	24633524 	addiu	v1,v1,13604
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:789
87902228:	8c820000 	lw	v0,0(a0)
8790222c:	24840004 	addiu	a0,a0,4
87902230:	00021080 	sll	v0,v0,0x2
87902234:	02a21021 	addu	v0,s5,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:788
87902238:	1464fffb 	bne	v1,a0,87902228 <inflate_dynamic+0x1d8>
8790223c:	ac400010 	sw	zero,16(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:794
87902240:	24020007 	li	v0,7
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:795
87902244:	27be0030 	addiu	s8,sp,48
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:794
87902248:	afa20028 	sw	v0,40(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:795
8790224c:	03c02021 	move	a0,s8
87902250:	27a20028 	addiu	v0,sp,40
87902254:	24050013 	li	a1,19
87902258:	24060013 	li	a2,19
8790225c:	00003821 	move	a3,zero
87902260:	afac0520 	sw	t4,1312(sp)
87902264:	afad0524 	sw	t5,1316(sp)
87902268:	afae0528 	sw	t6,1320(sp)
8790226c:	afa00010 	sw	zero,16(sp)
87902270:	afb50014 	sw	s5,20(sp)
87902274:	0de404ae 	jal	879012b8 <huft_build>
87902278:	afa20018 	sw	v0,24(sp)
8790227c:	8fac0520 	lw	t4,1312(sp)
87902280:	8fad0524 	lw	t5,1316(sp)
87902284:	8fae0528 	lw	t6,1320(sp)
87902288:	1440005e 	bnez	v0,87902404 <inflate_dynamic+0x3b4>
8790228c:	00409821 	move	s3,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:806
87902290:	8fa80028 	lw	t0,40(sp)
87902294:	3c028790 	lui	v0,0x8790
87902298:	00081840 	sll	v1,t0,0x1
8790229c:	24423524 	addiu	v0,v0,13604
879022a0:	00621821 	addu	v1,v1,v0
879022a4:	946b0000 	lhu	t3,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:811
879022a8:	8faa0020 	lw	t2,32(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:805
879022ac:	02d74821 	addu	t1,s6,s7
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:811
879022b0:	00003021 	move	a2,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:816
879022b4:	240f0010 	li	t7,16
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:826
879022b8:	24180011 	li	t8,17
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:833
879022bc:	2407ffff 	li	a3,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:808
879022c0:	0269102b 	sltu	v0,s3,t1
879022c4:	1040001e 	beqz	v0,87902340 <inflate_dynamic+0x2f0>
879022c8:	01402021 	move	a0,t2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:810
879022cc:	0208102b 	sltu	v0,s0,t0
879022d0:	10400009 	beqz	v0,879022f8 <inflate_dynamic+0x2a8>
879022d4:	02922021 	addu	a0,s4,s2
879022d8:	90820000 	lbu	v0,0(a0)
879022dc:	26520001 	addiu	s2,s2,1
879022e0:	02021004 	sllv	v0,v0,s0
879022e4:	26100008 	addiu	s0,s0,8
879022e8:	0208182b 	sltu	v1,s0,t0
879022ec:	02228825 	or	s1,s1,v0
879022f0:	1460fff9 	bnez	v1,879022d8 <inflate_dynamic+0x288>
879022f4:	24840001 	addiu	a0,a0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:811
879022f8:	022b1024 	and	v0,s1,t3
879022fc:	000210c0 	sll	v0,v0,0x3
87902300:	01421021 	addu	v0,t2,v0
87902304:	afa20024 	sw	v0,36(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:813
87902308:	94450004 	lhu	a1,4(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:811
8790230c:	90430001 	lbu	v1,1(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:814
87902310:	2ca40010 	sltiu	a0,a1,16
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:812
87902314:	02038023 	subu	s0,s0,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:814
87902318:	10800042 	beqz	a0,87902424 <inflate_dynamic+0x3d4>
8790231c:	00718806 	srlv	s1,s1,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:815
87902320:	00131080 	sll	v0,s3,0x2
87902324:	02a21021 	addu	v0,s5,v0
87902328:	26730001 	addiu	s3,s3,1
8790232c:	ac450010 	sw	a1,16(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:808
87902330:	0269102b 	sltu	v0,s3,t1
87902334:	1440ffe5 	bnez	v0,879022cc <inflate_dynamic+0x27c>
87902338:	00a03021 	move	a2,a1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:853
8790233c:	01402021 	move	a0,t2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:810
87902340:	ad92e028 	sw	s2,-8152(t4)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:853
87902344:	afad0524 	sw	t5,1316(sp)
87902348:	0de4049f 	jal	8790127c <huft_free>
8790234c:	afae0528 	sw	t6,1320(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:858
87902350:	8fad0524 	lw	t5,1316(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:859
87902354:	8fae0528 	lw	t6,1320(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:865
87902358:	3c028790 	lui	v0,0x8790
8790235c:	24423588 	addiu	v0,v0,13704
87902360:	3c078790 	lui	a3,0x8790
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:858
87902364:	adb1e038 	sw	s1,-8136(t5)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:859
87902368:	add0e03c 	sw	s0,-8132(t6)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:864
8790236c:	24030009 	li	v1,9
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:865
87902370:	afa20010 	sw	v0,16(sp)
87902374:	24e73548 	addiu	a3,a3,13640
87902378:	27a20028 	addiu	v0,sp,40
8790237c:	03c02021 	move	a0,s8
87902380:	02e02821 	move	a1,s7
87902384:	24060101 	li	a2,257
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:864
87902388:	afa30028 	sw	v1,40(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:865
8790238c:	afb50014 	sw	s5,20(sp)
87902390:	0de404ae 	jal	879012b8 <huft_build>
87902394:	afa20018 	sw	v0,24(sp)
87902398:	1040007d 	beqz	v0,87902590 <inflate_dynamic+0x540>
8790239c:	00409821 	move	s3,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:868
879023a0:	24020001 	li	v0,1
879023a4:	1662000a 	bne	s3,v0,879023d0 <inflate_dynamic+0x380>
879023a8:	3c048790 	lui	a0,0x8790
error():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
879023ac:	0de40692 	jal	87901a48 <tgt_puts>
879023b0:	24843658 	addiu	a0,a0,13912
inflate_dynamic():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:870
879023b4:	8fa40020 	lw	a0,32(sp)
error():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
879023b8:	3c028795 	lui	v0,0x8795
inflate_dynamic():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:870
879023bc:	0de4049f 	jal	8790127c <huft_free>
879023c0:	ac53e030 	sw	s3,-8144(v0)
879023c4:	09e408f4 	j	879023d0 <inflate_dynamic+0x380>
879023c8:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:905
879023cc:	24130001 	li	s3,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:906
879023d0:	8fbf0554 	lw	ra,1364(sp)
879023d4:	02601021 	move	v0,s3
879023d8:	8fbe0550 	lw	s8,1360(sp)
879023dc:	8fb7054c 	lw	s7,1356(sp)
879023e0:	8fb60548 	lw	s6,1352(sp)
879023e4:	8fb50544 	lw	s5,1348(sp)
879023e8:	8fb40540 	lw	s4,1344(sp)
879023ec:	8fb3053c 	lw	s3,1340(sp)
879023f0:	8fb20538 	lw	s2,1336(sp)
879023f4:	8fb10534 	lw	s1,1332(sp)
879023f8:	8fb00530 	lw	s0,1328(sp)
879023fc:	03e00008 	jr	ra
87902400:	27bd0558 	addiu	sp,sp,1368
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:797
87902404:	24020001 	li	v0,1
87902408:	1662fff1 	bne	s3,v0,879023d0 <inflate_dynamic+0x380>
8790240c:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:887
87902410:	8fa40020 	lw	a0,32(sp)
87902414:	0de4049f 	jal	8790127c <huft_free>
87902418:	00000000 	nop
8790241c:	09e408f4 	j	879023d0 <inflate_dynamic+0x380>
87902420:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:816
87902424:	10af0023 	beq	a1,t7,879024b4 <inflate_dynamic+0x464>
87902428:	2e020002 	sltiu	v0,s0,2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:826
8790242c:	10b8003a 	beq	a1,t8,87902518 <inflate_dynamic+0x4c8>
87902430:	2e020007 	sltiu	v0,s0,7
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:839
87902434:	1040000c 	beqz	v0,87902468 <inflate_dynamic+0x418>
87902438:	02921021 	addu	v0,s4,s2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
8790243c:	00101827 	nor	v1,zero,s0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:839
87902440:	90440000 	lbu	a0,0(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902444:	24630007 	addiu	v1,v1,7
87902448:	000318c2 	srl	v1,v1,0x3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:839
8790244c:	02042004 	sllv	a0,a0,s0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902450:	26460001 	addiu	a2,s2,1
87902454:	000328c0 	sll	a1,v1,0x3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:839
87902458:	26020008 	addiu	v0,s0,8
8790245c:	02248825 	or	s1,s1,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902460:	00458021 	addu	s0,v0,a1
87902464:	00c39021 	addu	s2,a2,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:840
87902468:	3223007f 	andi	v1,s1,0x7f
8790246c:	2462000b 	addiu	v0,v1,11
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:842
87902470:	00531021 	addu	v0,v0,s3
87902474:	0122102b 	sltu	v0,t1,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:841
87902478:	001189c2 	srl	s1,s1,0x7
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:842
8790247c:	14400041 	bnez	v0,87902584 <inflate_dynamic+0x534>
87902480:	2610fff9 	addiu	s0,s0,-7
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:844
87902484:	2464000a 	addiu	a0,v1,10
87902488:	00131080 	sll	v0,s3,0x2
8790248c:	03c21821 	addu	v1,s8,v0
87902490:	00801021 	move	v0,a0
87902494:	2442ffff 	addiu	v0,v0,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:845
87902498:	ac600000 	sw	zero,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:844
8790249c:	1447fffd 	bne	v0,a3,87902494 <inflate_dynamic+0x444>
879024a0:	24630004 	addiu	v1,v1,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
879024a4:	26620001 	addiu	v0,s3,1
879024a8:	00449821 	addu	s3,v0,a0
879024ac:	09e408b0 	j	879022c0 <inflate_dynamic+0x270>
879024b0:	00003021 	move	a2,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:818
879024b4:	10400006 	beqz	v0,879024d0 <inflate_dynamic+0x480>
879024b8:	02921821 	addu	v1,s4,s2
879024bc:	90620000 	lbu	v0,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
879024c0:	26520001 	addiu	s2,s2,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:818
879024c4:	02021004 	sllv	v0,v0,s0
879024c8:	02228825 	or	s1,s1,v0
879024cc:	26100008 	addiu	s0,s0,8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:819
879024d0:	32230003 	andi	v1,s1,0x3
879024d4:	24620003 	addiu	v0,v1,3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:821
879024d8:	00531021 	addu	v0,v0,s3
879024dc:	0122102b 	sltu	v0,t1,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:820
879024e0:	00118882 	srl	s1,s1,0x2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:821
879024e4:	14400027 	bnez	v0,87902584 <inflate_dynamic+0x534>
879024e8:	2610fffe 	addiu	s0,s0,-2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:823
879024ec:	24640002 	addiu	a0,v1,2
879024f0:	00131080 	sll	v0,s3,0x2
879024f4:	03c21821 	addu	v1,s8,v0
879024f8:	00801021 	move	v0,a0
879024fc:	2442ffff 	addiu	v0,v0,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:824
87902500:	ac660000 	sw	a2,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:823
87902504:	1447fffd 	bne	v0,a3,879024fc <inflate_dynamic+0x4ac>
87902508:	24630004 	addiu	v1,v1,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
8790250c:	26620001 	addiu	v0,s3,1
87902510:	09e408b0 	j	879022c0 <inflate_dynamic+0x270>
87902514:	00449821 	addu	s3,v0,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:828
87902518:	2e020003 	sltiu	v0,s0,3
8790251c:	10400006 	beqz	v0,87902538 <inflate_dynamic+0x4e8>
87902520:	02921821 	addu	v1,s4,s2
87902524:	90620000 	lbu	v0,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902528:	26520001 	addiu	s2,s2,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:828
8790252c:	02021004 	sllv	v0,v0,s0
87902530:	02228825 	or	s1,s1,v0
87902534:	26100008 	addiu	s0,s0,8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:829
87902538:	32230007 	andi	v1,s1,0x7
8790253c:	24620003 	addiu	v0,v1,3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:831
87902540:	00531021 	addu	v0,v0,s3
87902544:	0122102b 	sltu	v0,t1,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:830
87902548:	001188c2 	srl	s1,s1,0x3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:831
8790254c:	1440000d 	bnez	v0,87902584 <inflate_dynamic+0x534>
87902550:	2610fffd 	addiu	s0,s0,-3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:833
87902554:	24640002 	addiu	a0,v1,2
87902558:	00131080 	sll	v0,s3,0x2
8790255c:	03c21821 	addu	v1,s8,v0
87902560:	00801021 	move	v0,a0
87902564:	2442ffff 	addiu	v0,v0,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:834
87902568:	ac600000 	sw	zero,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:833
8790256c:	1447fffd 	bne	v0,a3,87902564 <inflate_dynamic+0x514>
87902570:	24630004 	addiu	v1,v1,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:734
87902574:	26620001 	addiu	v0,s3,1
87902578:	00449821 	addu	s3,v0,a0
8790257c:	09e408b0 	j	879022c0 <inflate_dynamic+0x270>
87902580:	00003021 	move	a2,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:842
87902584:	ad92e028 	sw	s2,-8152(t4)
87902588:	09e408f4 	j	879023d0 <inflate_dynamic+0x380>
8790258c:	24130001 	li	s3,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:876
87902590:	3c028790 	lui	v0,0x8790
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:875
87902594:	24030006 	li	v1,6
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:876
87902598:	24423604 	addiu	v0,v0,13828
8790259c:	00172080 	sll	a0,s7,0x2
879025a0:	3c078790 	lui	a3,0x8790
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:875
879025a4:	afa3002c 	sw	v1,44(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:876
879025a8:	afa20010 	sw	v0,16(sp)
879025ac:	27a30024 	addiu	v1,sp,36
879025b0:	27a2002c 	addiu	v0,sp,44
879025b4:	03c42021 	addu	a0,s8,a0
879025b8:	02c02821 	move	a1,s6
879025bc:	24e735c8 	addiu	a3,a3,13768
879025c0:	00003021 	move	a2,zero
879025c4:	afa30014 	sw	v1,20(sp)
879025c8:	0de404ae 	jal	879012b8 <huft_build>
879025cc:	afa20018 	sw	v0,24(sp)
879025d0:	1040000c 	beqz	v0,87902604 <inflate_dynamic+0x5b4>
879025d4:	00409821 	move	s3,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:879
879025d8:	24020001 	li	v0,1
879025dc:	1662ff8c 	bne	s3,v0,87902410 <inflate_dynamic+0x3c0>
879025e0:	3c048790 	lui	a0,0x8790
error():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
879025e4:	0de40692 	jal	87901a48 <tgt_puts>
879025e8:	24843674 	addiu	a0,a0,13940
inflate_dynamic():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:885
879025ec:	8fa40024 	lw	a0,36(sp)
error():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
879025f0:	3c028795 	lui	v0,0x8795
inflate_dynamic():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:885
879025f4:	0de4049f 	jal	8790127c <huft_free>
879025f8:	ac53e030 	sw	s3,-8144(v0)
879025fc:	09e40904 	j	87902410 <inflate_dynamic+0x3c0>
87902600:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:895
87902604:	8fa40020 	lw	a0,32(sp)
87902608:	8fa50024 	lw	a1,36(sp)
8790260c:	8fa60028 	lw	a2,40(sp)
87902610:	8fa7002c 	lw	a3,44(sp)
87902614:	0de406dd 	jal	87901b74 <inflate_codes>
87902618:	00000000 	nop
8790261c:	1440ff6b 	bnez	v0,879023cc <inflate_dynamic+0x37c>
87902620:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:901
87902624:	8fa40020 	lw	a0,32(sp)
87902628:	0de4049f 	jal	8790127c <huft_free>
8790262c:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:902
87902630:	8fa40024 	lw	a0,36(sp)
87902634:	0de4049f 	jal	8790127c <huft_free>
87902638:	00000000 	nop
8790263c:	09e408f4 	j	879023d0 <inflate_dynamic+0x380>
87902640:	00000000 	nop

87902644 <inflate_fixed>:
inflate_fixed():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:682
87902644:	27bdfb40 	addiu	sp,sp,-1216
87902648:	afb004b4 	sw	s0,1204(sp)
8790264c:	27b00030 	addiu	s0,sp,48
87902650:	afb104b8 	sw	s1,1208(sp)
87902654:	afbf04bc 	sw	ra,1212(sp)
87902658:	02008821 	move	s1,s0
8790265c:	02001021 	move	v0,s0
87902660:	27a40270 	addiu	a0,sp,624
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:694
87902664:	24030008 	li	v1,8
87902668:	ac430000 	sw	v1,0(v0)
8790266c:	24420004 	addiu	v0,v0,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:693
87902670:	1444fffd 	bne	v0,a0,87902668 <inflate_fixed+0x24>
87902674:	00000000 	nop
87902678:	27a40430 	addiu	a0,sp,1072
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:696
8790267c:	24030009 	li	v1,9
87902680:	ac430000 	sw	v1,0(v0)
87902684:	24420004 	addiu	v0,v0,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:695
87902688:	1444fffd 	bne	v0,a0,87902680 <inflate_fixed+0x3c>
8790268c:	00000000 	nop
87902690:	27a40490 	addiu	a0,sp,1168
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:698
87902694:	24030007 	li	v1,7
87902698:	ac430000 	sw	v1,0(v0)
8790269c:	24420004 	addiu	v0,v0,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:697
879026a0:	1444fffd 	bne	v0,a0,87902698 <inflate_fixed+0x54>
879026a4:	00000000 	nop
879026a8:	27a404b0 	addiu	a0,sp,1200
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:700
879026ac:	24030008 	li	v1,8
879026b0:	ac430000 	sw	v1,0(v0)
879026b4:	24420004 	addiu	v0,v0,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:699
879026b8:	1482fffd 	bne	a0,v0,879026b0 <inflate_fixed+0x6c>
879026bc:	3c078790 	lui	a3,0x8790
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:702
879026c0:	3c028790 	lui	v0,0x8790
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:701
879026c4:	24030007 	li	v1,7
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:702
879026c8:	24423588 	addiu	v0,v0,13704
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:701
879026cc:	afa30028 	sw	v1,40(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:702
879026d0:	afa20010 	sw	v0,16(sp)
879026d4:	27a30020 	addiu	v1,sp,32
879026d8:	27a20028 	addiu	v0,sp,40
879026dc:	24e73548 	addiu	a3,a3,13640
879026e0:	02002021 	move	a0,s0
879026e4:	24050120 	li	a1,288
879026e8:	24060101 	li	a2,257
879026ec:	afa30014 	sw	v1,20(sp)
879026f0:	0de404ae 	jal	879012b8 <huft_build>
879026f4:	afa20018 	sw	v0,24(sp)
879026f8:	14400020 	bnez	v0,8790277c <inflate_fixed+0x138>
879026fc:	24030005 	li	v1,5
87902700:	27a200a8 	addiu	v0,sp,168
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:708
87902704:	ae030000 	sw	v1,0(s0)
87902708:	26100004 	addiu	s0,s0,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:707
8790270c:	1450fffd 	bne	v0,s0,87902704 <inflate_fixed+0xc0>
87902710:	3c078790 	lui	a3,0x8790
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:710
87902714:	3c028790 	lui	v0,0x8790
87902718:	24423604 	addiu	v0,v0,13828
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:709
8790271c:	afa3002c 	sw	v1,44(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:710
87902720:	afa20010 	sw	v0,16(sp)
87902724:	27a30024 	addiu	v1,sp,36
87902728:	27a2002c 	addiu	v0,sp,44
8790272c:	02202021 	move	a0,s1
87902730:	24e735c8 	addiu	a3,a3,13768
87902734:	2405001e 	li	a1,30
87902738:	00003021 	move	a2,zero
8790273c:	afa30014 	sw	v1,20(sp)
87902740:	0de404ae 	jal	879012b8 <huft_build>
87902744:	afa20018 	sw	v0,24(sp)
87902748:	00408021 	move	s0,v0
8790274c:	28420002 	slti	v0,v0,2
87902750:	14400011 	bnez	v0,87902798 <inflate_fixed+0x154>
87902754:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:712
87902758:	8fa40020 	lw	a0,32(sp)
8790275c:	0de4049f 	jal	8790127c <huft_free>
87902760:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:728
87902764:	8fbf04bc 	lw	ra,1212(sp)
87902768:	02001021 	move	v0,s0
8790276c:	8fb104b8 	lw	s1,1208(sp)
87902770:	8fb004b4 	lw	s0,1204(sp)
87902774:	03e00008 	jr	ra
87902778:	27bd04c0 	addiu	sp,sp,1216
8790277c:	8fbf04bc 	lw	ra,1212(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:702
87902780:	00408021 	move	s0,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:728
87902784:	02001021 	move	v0,s0
87902788:	8fb104b8 	lw	s1,1208(sp)
8790278c:	8fb004b4 	lw	s0,1204(sp)
87902790:	03e00008 	jr	ra
87902794:	27bd04c0 	addiu	sp,sp,1216
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:720
87902798:	8fa40020 	lw	a0,32(sp)
8790279c:	8fa50024 	lw	a1,36(sp)
879027a0:	8fa60028 	lw	a2,40(sp)
879027a4:	8fa7002c 	lw	a3,44(sp)
879027a8:	0de406dd 	jal	87901b74 <inflate_codes>
879027ac:	00000000 	nop
879027b0:	10400008 	beqz	v0,879027d4 <inflate_fixed+0x190>
879027b4:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:728
879027b8:	8fbf04bc 	lw	ra,1212(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:720
879027bc:	24100001 	li	s0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:728
879027c0:	02001021 	move	v0,s0
879027c4:	8fb104b8 	lw	s1,1208(sp)
879027c8:	8fb004b4 	lw	s0,1204(sp)
879027cc:	03e00008 	jr	ra
879027d0:	27bd04c0 	addiu	sp,sp,1216
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:725
879027d4:	8fa40020 	lw	a0,32(sp)
879027d8:	0de4049f 	jal	8790127c <huft_free>
879027dc:	00008021 	move	s0,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:726
879027e0:	8fa40024 	lw	a0,36(sp)
879027e4:	0de4049f 	jal	8790127c <huft_free>
879027e8:	00000000 	nop
879027ec:	09e409d9 	j	87902764 <inflate_fixed+0x120>
879027f0:	00000000 	nop

879027f4 <initmips>:
initmips():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:79
879027f4:	27bdffc8 	addiu	sp,sp,-56
879027f8:	afbf0034 	sw	ra,52(sp)
879027fc:	afa40038 	sw	a0,56(sp)
87902800:	afa5003c 	sw	a1,60(sp)
87902804:	afbe0030 	sw	s8,48(sp)
87902808:	afb7002c 	sw	s7,44(sp)
8790280c:	afb60028 	sw	s6,40(sp)
87902810:	afb50024 	sw	s5,36(sp)
87902814:	afb40020 	sw	s4,32(sp)
87902818:	afb3001c 	sw	s3,28(sp)
8790281c:	afb20018 	sw	s2,24(sp)
87902820:	afb10014 	sw	s1,20(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:85
87902824:	0de402ce 	jal	87900b38 <CPU_TLBClear>
87902828:	afb00010 	sw	s0,16(sp)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:87
8790282c:	3c048790 	lui	a0,0x8790
87902830:	0de40692 	jal	87901a48 <tgt_puts>
87902834:	24843690 	addiu	a0,a0,13968
enable_cache():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:4
87902838:	40048000 	mfc0	a0,$16
8790283c:	2401fff8 	li	at,-8
87902840:	00812024 	and	a0,a0,at
87902844:	34840003 	ori	a0,a0,0x3
87902848:	40848000 	mtc0	a0,$16
led_on():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:67
8790284c:	2405006f 	li	a1,111
87902850:	3c02bfd0 	lui	v0,0xbfd0
87902854:	34420010 	ori	v0,v0,0x10
87902858:	80430000 	lb	v1,0(v0)
8790285c:	00000000 	nop
87902860:	00651824 	and	v1,v1,a1
87902864:	a0430000 	sb	v1,0(v0)
87902868:	3c028790 	lui	v0,0x8790
8790286c:	24423804 	addiu	v0,v0,14340
87902870:	3c138795 	lui	s3,0x8795
87902874:	245e0001 	addiu	s8,v0,1
87902878:	24560002 	addiu	s6,v0,2
8790287c:	24570003 	addiu	s7,v0,3
87902880:	3c158795 	lui	s5,0x8795
run_unzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:126
87902884:	2402ffff 	li	v0,-1
87902888:	3c038795 	lui	v1,0x8795
8790288c:	ac62e044 	sw	v0,-8124(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:131
87902890:	3c058795 	lui	a1,0x8795
87902894:	3c038701 	lui	v1,0x8701
87902898:	aca3f008 	sw	v1,-4088(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:123
8790289c:	3c038795 	lui	v1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:121
879028a0:	3c028795 	lui	v0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:123
879028a4:	ac60e02c 	sw	zero,-8148(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:130
879028a8:	3c038790 	lui	v1,0x8790
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:133
879028ac:	34048000 	li	a0,0x8000
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:121
879028b0:	ac40e024 	sw	zero,-8156(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:124
879028b4:	3c058795 	lui	a1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:125
879028b8:	3c028795 	lui	v0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:130
879028bc:	24633804 	addiu	v1,v1,14340
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:122
879028c0:	ae60e028 	sw	zero,-8152(s3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:124
879028c4:	aca0e030 	sw	zero,-8144(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:125
879028c8:	ac40e034 	sw	zero,-8140(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:133
879028cc:	0de40450 	jal	87901140 <malloc>
879028d0:	aea3e01c 	sw	v1,-8164(s5)
879028d4:	3c048795 	lui	a0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:134
879028d8:	104001f0 	beqz	v0,8790309c <initmips+0x8a8>
879028dc:	ac82e020 	sw	v0,-8160(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:136
879028e0:	3c038790 	lui	v1,0x8790
879028e4:	246334a0 	addiu	v1,v1,13472
879028e8:	00003021 	move	a2,zero
makecrc():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1035
879028ec:	2405001f 	li	a1,31
879028f0:	24040001 	li	a0,1
879028f4:	8c620000 	lw	v0,0(v1)
879028f8:	24630004 	addiu	v1,v1,4
879028fc:	00a21023 	subu	v0,a1,v0
87902900:	00441004 	sllv	v0,a0,v0
87902904:	00c23025 	or	a2,a2,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1034
87902908:	3c028790 	lui	v0,0x8790
8790290c:	244234d8 	addiu	v0,v0,13528
87902910:	1443fff8 	bne	v0,v1,879028f4 <initmips+0x100>
87902914:	3c088795 	lui	t0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1037
87902918:	3c038795 	lui	v1,0x8795
8790291c:	ac60e050 	sw	zero,-8112(v1)
87902920:	2508e054 	addiu	t0,t0,-8108
87902924:	24070001 	li	a3,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1042
87902928:	24090001 	li	t1,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1039
8790292c:	240a0100 	li	t2,256
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1042
87902930:	34e40100 	ori	a0,a3,0x100
87902934:	00001821 	move	v1,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1044
87902938:	30620001 	andi	v0,v1,0x1
8790293c:	1040002a 	beqz	v0,879029e8 <initmips+0x1f4>
87902940:	00032842 	srl	a1,v1,0x1
87902944:	00a61826 	xor	v1,a1,a2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1045
87902948:	30820001 	andi	v0,a0,0x1
8790294c:	10400002 	beqz	v0,87902958 <initmips+0x164>
87902950:	00042043 	sra	a0,a0,0x1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1046
87902954:	00661826 	xor	v1,v1,a2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1042
87902958:	1489fff8 	bne	a0,t1,8790293c <initmips+0x148>
8790295c:	30620001 	andi	v0,v1,0x1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1039
87902960:	24e70001 	addiu	a3,a3,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1048
87902964:	ad030000 	sw	v1,0(t0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1039
87902968:	14eafff1 	bne	a3,t2,87902930 <initmips+0x13c>
8790296c:	25080004 	addiu	t0,t0,4
gunzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1076
87902970:	3c058790 	lui	a1,0x8790
87902974:	24a53804 	addiu	a1,a1,14340
makecrc():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1052
87902978:	2402ffff 	li	v0,-1
8790297c:	3c038795 	lui	v1,0x8795
gunzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1076
87902980:	90a40000 	lbu	a0,0(a1)
makecrc():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1052
87902984:	ac62e044 	sw	v0,-8124(v1)
gunzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1078
87902988:	24030003 	li	v1,3
8790298c:	ae63e028 	sw	v1,-8152(s3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1080
87902990:	2402001f 	li	v0,31
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1077
87902994:	93c30000 	lbu	v1,0(s8)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1078
87902998:	92c50000 	lbu	a1,0(s6)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1080
8790299c:	14820006 	bne	a0,v0,879029b8 <initmips+0x1c4>
879029a0:	00000000 	nop
879029a4:	2402008b 	li	v0,139
879029a8:	10620011 	beq	v1,v0,879029f0 <initmips+0x1fc>
879029ac:	2402009e 	li	v0,158
879029b0:	1062000f 	beq	v1,v0,879029f0 <initmips+0x1fc>
879029b4:	00000000 	nop
error():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
879029b8:	3c048790 	lui	a0,0x8790
879029bc:	0de40692 	jal	87901a48 <tgt_puts>
879029c0:	248436d4 	addiu	a0,a0,14036
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
879029c4:	24030001 	li	v1,1
879029c8:	3c048795 	lui	a0,0x8795
879029cc:	ac83e030 	sw	v1,-8144(a0)
run_unzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:141
879029d0:	3c028795 	lui	v0,0x8795
879029d4:	8c44e020 	lw	a0,-8160(v0)
879029d8:	0de40418 	jal	87901060 <free>
879029dc:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:126
879029e0:	09e40a22 	j	87902888 <initmips+0x94>
879029e4:	2402ffff 	li	v0,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1044
879029e8:	09e40a52 	j	87902948 <initmips+0x154>
879029ec:	00031842 	srl	v1,v1,0x1
gunzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1087
879029f0:	24020008 	li	v0,8
879029f4:	14a201a3 	bne	a1,v0,87903084 <initmips+0x890>
879029f8:	3c048790 	lui	a0,0x8790
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1092
879029fc:	92e50000 	lbu	a1,0(s7)
87902a00:	24020004 	li	v0,4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1093
87902a04:	30a30020 	andi	v1,a1,0x20
87902a08:	14600197 	bnez	v1,87903068 <initmips+0x874>
87902a0c:	ae62e028 	sw	v0,-8152(s3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1097
87902a10:	30a20002 	andi	v0,a1,0x2
87902a14:	1440018e 	bnez	v0,87903050 <initmips+0x85c>
87902a18:	3c048790 	lui	a0,0x8790
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1101
87902a1c:	30a200c0 	andi	v0,a1,0xc0
87902a20:	14400161 	bnez	v0,87902fa8 <initmips+0x7b4>
87902a24:	3c038795 	lui	v1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1111
87902a28:	2404000a 	li	a0,10
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1113
87902a2c:	30a20004 	andi	v0,a1,0x4
87902a30:	1040000d 	beqz	v0,87902a68 <initmips+0x274>
87902a34:	ac64e028 	sw	a0,-8152(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1115
87902a38:	3c038790 	lui	v1,0x8790
87902a3c:	24633804 	addiu	v1,v1,14340
87902a40:	9062000b 	lbu	v0,11(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1114
87902a44:	9064000a 	lbu	a0,10(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1115
87902a48:	00021200 	sll	v0,v0,0x8
87902a4c:	00441025 	or	v0,v0,a0
87902a50:	2403000c 	li	v1,12
87902a54:	3c048795 	lui	a0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1116
87902a58:	10400003 	beqz	v0,87902a68 <initmips+0x274>
87902a5c:	ac83e028 	sw	v1,-8152(a0)
87902a60:	2442000c 	addiu	v0,v0,12
87902a64:	ac82e028 	sw	v0,-8152(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1120
87902a68:	30a20008 	andi	v0,a1,0x8
87902a6c:	1040000b 	beqz	v0,87902a9c <initmips+0x2a8>
87902a70:	30a20010 	andi	v0,a1,0x10
87902a74:	8e64e028 	lw	a0,-8152(s3)
87902a78:	3c028790 	lui	v0,0x8790
87902a7c:	24423804 	addiu	v0,v0,14340
87902a80:	00441821 	addu	v1,v0,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1122
87902a84:	90620000 	lbu	v0,0(v1)
87902a88:	24840001 	addiu	a0,a0,1
87902a8c:	1440fffd 	bnez	v0,87902a84 <initmips+0x290>
87902a90:	24630001 	addiu	v1,v1,1
87902a94:	ae64e028 	sw	a0,-8152(s3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1126
87902a98:	30a20010 	andi	v0,a1,0x10
87902a9c:	1040000b 	beqz	v0,87902acc <initmips+0x2d8>
87902aa0:	3c028795 	lui	v0,0x8795
87902aa4:	8e64e028 	lw	a0,-8152(s3)
87902aa8:	3c058790 	lui	a1,0x8790
87902aac:	24a53804 	addiu	a1,a1,14340
87902ab0:	00a41821 	addu	v1,a1,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1127
87902ab4:	90620000 	lbu	v0,0(v1)
87902ab8:	24840001 	addiu	a0,a0,1
87902abc:	1440fffd 	bnez	v0,87902ab4 <initmips+0x2c0>
87902ac0:	24630001 	addiu	v1,v1,1
87902ac4:	ae64e028 	sw	a0,-8152(s3)
inflate():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:966
87902ac8:	3c028795 	lui	v0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:967
87902acc:	3c038795 	lui	v1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:968
87902ad0:	3c048795 	lui	a0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:966
87902ad4:	ac40e02c 	sw	zero,-8148(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:967
87902ad8:	ac60e03c 	sw	zero,-8132(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:968
87902adc:	ac80e038 	sw	zero,-8136(a0)
inflate_block():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:922
87902ae0:	3c058795 	lui	a1,0x8795
87902ae4:	8ca8e03c 	lw	t0,-8132(a1)
inflate():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:974
87902ae8:	3c028795 	lui	v0,0x8795
inflate_block():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:921
87902aec:	3c038795 	lui	v1,0x8795
inflate():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:974
87902af0:	ac40e040 	sw	zero,-8128(v0)
inflate_block():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:921
87902af4:	8c66e038 	lw	a2,-8136(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:926
87902af8:	15000117 	bnez	t0,87902f58 <initmips+0x764>
87902afc:	2509ffff 	addiu	t1,t0,-1
87902b00:	8e64e028 	lw	a0,-8152(s3)
87902b04:	8ea2e01c 	lw	v0,-8164(s5)
87902b08:	24850001 	addiu	a1,a0,1
87902b0c:	00441021 	addu	v0,v0,a0
87902b10:	90430000 	lbu	v1,0(v0)
87902b14:	ae65e028 	sw	a1,-8152(s3)
87902b18:	00661825 	or	v1,v1,a2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:928
87902b1c:	00033842 	srl	a3,v1,0x1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:927
87902b20:	30740001 	andi	s4,v1,0x1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:928
87902b24:	24030005 	li	v1,5
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:938
87902b28:	3c048795 	lui	a0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:934
87902b2c:	00072882 	srl	a1,a3,0x2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:938
87902b30:	ac85e038 	sw	a1,-8136(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:939
87902b34:	3c048795 	lui	a0,0x8795
87902b38:	ac83e03c 	sw	v1,-8132(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:933
87902b3c:	30e20003 	andi	v0,a3,0x3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:942
87902b40:	24040002 	li	a0,2
87902b44:	10440053 	beq	v0,a0,87902c94 <initmips+0x4a0>
87902b48:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:944
87902b4c:	10400016 	beqz	v0,87902ba8 <initmips+0x3b4>
87902b50:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:946
87902b54:	24050001 	li	a1,1
87902b58:	104500c8 	beq	v0,a1,87902e7c <initmips+0x688>
87902b5c:	24100002 	li	s0,2
gunzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1132
87902b60:	24110001 	li	s1,1
87902b64:	121100f7 	beq	s0,s1,87902f44 <initmips+0x750>
87902b68:	3c048790 	lui	a0,0x8790
87902b6c:	2a020002 	slti	v0,s0,2
87902b70:	1440012f 	bnez	v0,87903030 <initmips+0x83c>
87902b74:	24020002 	li	v0,2
87902b78:	12020128 	beq	s0,v0,8790301c <initmips+0x828>
87902b7c:	3c048790 	lui	a0,0x8790
87902b80:	24020003 	li	v0,3
87902b84:	1202010f 	beq	s0,v0,87902fc4 <initmips+0x7d0>
87902b88:	00000000 	nop
error():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
87902b8c:	3c048790 	lui	a0,0x8790
87902b90:	0de40692 	jal	87901a48 <tgt_puts>
87902b94:	248437a8 	addiu	a0,a0,14248
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
87902b98:	24030001 	li	v1,1
87902b9c:	3c058795 	lui	a1,0x8795
87902ba0:	09e40a74 	j	879029d0 <initmips+0x1dc>
87902ba4:	aca3e030 	sw	v1,-8144(a1)
inflate_stored():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:639
87902ba8:	30620007 	andi	v0,v1,0x7
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:640
87902bac:	00622023 	subu	a0,v1,v0
87902bb0:	00454006 	srlv	t0,a1,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:644
87902bb4:	2c830010 	sltiu	v1,a0,16
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:635
87902bb8:	3c058795 	lui	a1,0x8795
87902bbc:	8caae02c 	lw	t2,-8148(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:644
87902bc0:	10600016 	beqz	v1,87902c1c <initmips+0x428>
87902bc4:	2489fff0 	addiu	t1,a0,-16
87902bc8:	8e67e028 	lw	a3,-8152(s3)
87902bcc:	8ea2e01c 	lw	v0,-8164(s5)
87902bd0:	00802821 	move	a1,a0
87902bd4:	00473021 	addu	a2,v0,a3
87902bd8:	90c20000 	lbu	v0,0(a2)
87902bdc:	24c60001 	addiu	a2,a2,1
87902be0:	00a21004 	sllv	v0,v0,a1
87902be4:	24a50008 	addiu	a1,a1,8
87902be8:	2ca30010 	sltiu	v1,a1,16
87902bec:	1460fffa 	bnez	v1,87902bd8 <initmips+0x3e4>
87902bf0:	01024025 	or	t0,t0,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:79
87902bf4:	2403000f 	li	v1,15
87902bf8:	00641023 	subu	v0,v1,a0
87902bfc:	000210c2 	srl	v0,v0,0x3
87902c00:	24e30001 	addiu	v1,a3,1
87902c04:	00431821 	addu	v1,v0,v1
87902c08:	24840008 	addiu	a0,a0,8
87902c0c:	000210c0 	sll	v0,v0,0x3
87902c10:	00822021 	addu	a0,a0,v0
87902c14:	ae63e028 	sw	v1,-8152(s3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:646
87902c18:	2489fff0 	addiu	t1,a0,-16
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:647
87902c1c:	2d220010 	sltiu	v0,t1,16
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:646
87902c20:	00083c02 	srl	a3,t0,0x10
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:647
87902c24:	10400015 	beqz	v0,87902c7c <initmips+0x488>
87902c28:	3108ffff 	andi	t0,t0,0xffff
87902c2c:	8e6be028 	lw	t3,-8152(s3)
87902c30:	8ea2e01c 	lw	v0,-8164(s5)
87902c34:	01202821 	move	a1,t1
87902c38:	004b3021 	addu	a2,v0,t3
87902c3c:	90c20000 	lbu	v0,0(a2)
87902c40:	24c60001 	addiu	a2,a2,1
87902c44:	00a21004 	sllv	v0,v0,a1
87902c48:	24a50008 	addiu	a1,a1,8
87902c4c:	2ca30010 	sltiu	v1,a1,16
87902c50:	1460fffa 	bnez	v1,87902c3c <initmips+0x448>
87902c54:	00e23825 	or	a3,a3,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:79
87902c58:	2405001f 	li	a1,31
87902c5c:	00a41023 	subu	v0,a1,a0
87902c60:	000210c2 	srl	v0,v0,0x3
87902c64:	25630001 	addiu	v1,t3,1
87902c68:	00621821 	addu	v1,v1,v0
87902c6c:	25240008 	addiu	a0,t1,8
87902c70:	000210c0 	sll	v0,v0,0x3
87902c74:	00824821 	addu	t1,a0,v0
87902c78:	ae63e028 	sw	v1,-8152(s3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:648
87902c7c:	00071027 	nor	v0,zero,a3
87902c80:	3042ffff 	andi	v0,v0,0xffff
87902c84:	11020084 	beq	t0,v0,87902e98 <initmips+0x6a4>
87902c88:	24100001 	li	s0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1132
87902c8c:	09e40ad9 	j	87902b64 <initmips+0x370>
87902c90:	24110001 	li	s1,1
inflate_block():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:943
87902c94:	0de40814 	jal	87902050 <inflate_dynamic>
87902c98:	00000000 	nop
87902c9c:	00408021 	move	s0,v0
inflate():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:976
87902ca0:	1600ffb0 	bnez	s0,87902b64 <initmips+0x370>
87902ca4:	24110001 	li	s1,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:983
87902ca8:	1280ff8e 	beqz	s4,87902ae4 <initmips+0x2f0>
87902cac:	3c058795 	lui	a1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:988
87902cb0:	3c028795 	lui	v0,0x8795
87902cb4:	8c43e03c 	lw	v1,-8132(v0)
87902cb8:	00000000 	nop
87902cbc:	2c620008 	sltiu	v0,v1,8
87902cc0:	14400009 	bnez	v0,87902ce8 <initmips+0x4f4>
87902cc4:	2463fff8 	addiu	v1,v1,-8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:990
87902cc8:	8e64e028 	lw	a0,-8152(s3)
87902ccc:	000310c2 	srl	v0,v1,0x3
87902cd0:	2484ffff 	addiu	a0,a0,-1
87902cd4:	00822023 	subu	a0,a0,v0
87902cd8:	30630007 	andi	v1,v1,0x7
87902cdc:	3c028795 	lui	v0,0x8795
87902ce0:	ac43e03c 	sw	v1,-8132(v0)
87902ce4:	ae64e028 	sw	a0,-8152(s3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:994
87902ce8:	0de406a5 	jal	87901a94 <flush_window>
87902cec:	00000000 	nop
gunzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1154
87902cf0:	8e63e028 	lw	v1,-8152(s3)
87902cf4:	8ea4e01c 	lw	a0,-8164(s5)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1165
87902cf8:	3c058795 	lui	a1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1155
87902cfc:	00831021 	addu	v0,a0,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1165
87902d00:	8caae044 	lw	t2,-8124(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1155
87902d04:	90450001 	lbu	a1,1(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1154
87902d08:	90490000 	lbu	t1,0(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1156
87902d0c:	90460002 	lbu	a2,2(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1157
87902d10:	90470003 	lbu	a3,3(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1155
87902d14:	00052a00 	sll	a1,a1,0x8
87902d18:	00a92825 	or	a1,a1,t1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1156
87902d1c:	00063400 	sll	a2,a2,0x10
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1157
87902d20:	00073e00 	sll	a3,a3,0x18
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1156
87902d24:	00a62825 	or	a1,a1,a2
87902d28:	00404021 	move	t0,v0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1157
87902d2c:	00a72825 	or	a1,a1,a3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1165
87902d30:	000a5027 	nor	t2,zero,t2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1162
87902d34:	24670008 	addiu	a3,v1,8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1159
87902d38:	90490004 	lbu	t1,4(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1161
87902d3c:	91030006 	lbu	v1,6(t0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1160
87902d40:	90420005 	lbu	v0,5(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1162
87902d44:	91040007 	lbu	a0,7(t0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1165
87902d48:	14aa00ad 	bne	a1,t2,87903000 <initmips+0x80c>
87902d4c:	ae67e028 	sw	a3,-8152(s3)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1160
87902d50:	00021200 	sll	v0,v0,0x8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1161
87902d54:	00031c00 	sll	v1,v1,0x10
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1160
87902d58:	00491025 	or	v0,v0,t1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1169
87902d5c:	3c058795 	lui	a1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1161
87902d60:	00431025 	or	v0,v0,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1169
87902d64:	00042600 	sll	a0,a0,0x18
87902d68:	8ca3e034 	lw	v1,-8140(a1)
87902d6c:	00441025 	or	v0,v0,a0
87902d70:	1443009c 	bne	v0,v1,87902fe4 <initmips+0x7f0>
87902d74:	3c058795 	lui	a1,0x8795
run_unzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:141
87902d78:	8ca4e020 	lw	a0,-8160(a1)
87902d7c:	0de40418 	jal	87901060 <free>
87902d80:	00000000 	nop
initmips():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:97
87902d84:	3c048790 	lui	a0,0x8790
87902d88:	0de40692 	jal	87901a48 <tgt_puts>
87902d8c:	248437e8 	addiu	a0,a0,14312
87902d90:	3c03870b 	lui	v1,0x870b
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:98
87902d94:	3c02870d 	lui	v0,0x870d
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:97
87902d98:	346340e0 	ori	v1,v1,0x40e0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:98
87902d9c:	344206e4 	ori	v0,v0,0x6e4
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:100
87902da0:	ac600000 	sw	zero,0(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:98
87902da4:	24630004 	addiu	v1,v1,4
87902da8:	1462fffd 	bne	v1,v0,87902da0 <initmips+0x5ac>
87902dac:	00000000 	nop
87902db0:	3c028700 	lui	v0,0x8700
87902db4:	3442f000 	ori	v0,v0,0xf000
memset():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:21
87902db8:	3c038701 	lui	v1,0x8701
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:22
87902dbc:	a0400000 	sb	zero,0(v0)
87902dc0:	24420001 	addiu	v0,v0,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/memop.c:21
87902dc4:	1443fffd 	bne	v0,v1,87902dbc <initmips+0x5c8>
87902dc8:	00000000 	nop
flush_cache():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:44
87902dcc:	3c058000 	lui	a1,0x8000
87902dd0:	24a61000 	addiu	a2,a1,4096
87902dd4:	bca10000 	0xbca10000
87902dd8:	bca11000 	0xbca11000
87902ddc:	bca12000 	0xbca12000
87902de0:	bca13000 	0xbca13000
87902de4:	bca00000 	0xbca00000
87902de8:	bca01000 	0xbca01000
87902dec:	bca02000 	0xbca02000
87902df0:	bca03000 	0xbca03000
87902df4:	20a50020 	addi	a1,a1,32
87902df8:	14a6fff6 	bne	a1,a2,87902dd4 <initmips+0x5e0>
87902dfc:	00000000 	nop
87902e00:	00000000 	nop
initmips():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:108
87902e04:	8fa40038 	lw	a0,56(sp)
87902e08:	00000000 	nop
87902e0c:	14800004 	bnez	a0,87902e20 <initmips+0x62c>
87902e10:	00000000 	nop
87902e14:	8fa5003c 	lw	a1,60(sp)
87902e18:	00000000 	nop
87902e1c:	afa50038 	sw	a1,56(sp)
realinitmips():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:114
87902e20:	8fa30038 	lw	v1,56(sp)
87902e24:	3c1d8700 	lui	sp,0x8700
87902e28:	37bdc000 	ori	sp,sp,0xc000
87902e2c:	3c028708 	lui	v0,0x8708
87902e30:	34428f2c 	ori	v0,v0,0x8f2c
87902e34:	0040f809 	jalr	v0
87902e38:	00602021 	move	a0,v1
87902e3c:	00000000 	nop
87902e40:	1000ffff 	b	87902e40 <initmips+0x64c>
87902e44:	00000000 	nop
87902e48:	00000000 	nop
initmips():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:109
87902e4c:	8fbf0034 	lw	ra,52(sp)
87902e50:	8fbe0030 	lw	s8,48(sp)
87902e54:	8fb7002c 	lw	s7,44(sp)
87902e58:	8fb60028 	lw	s6,40(sp)
87902e5c:	8fb50024 	lw	s5,36(sp)
87902e60:	8fb40020 	lw	s4,32(sp)
87902e64:	8fb3001c 	lw	s3,28(sp)
87902e68:	8fb20018 	lw	s2,24(sp)
87902e6c:	8fb10014 	lw	s1,20(sp)
87902e70:	8fb00010 	lw	s0,16(sp)
87902e74:	03e00008 	jr	ra
87902e78:	27bd0038 	addiu	sp,sp,56
inflate_block():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:947
87902e7c:	0de40991 	jal	87902644 <inflate_fixed>
87902e80:	00000000 	nop
87902e84:	00408021 	move	s0,v0
inflate():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:976
87902e88:	1200ff87 	beqz	s0,87902ca8 <initmips+0x4b4>
87902e8c:	24110001 	li	s1,1
87902e90:	09e40ad9 	j	87902b64 <initmips+0x370>
87902e94:	00000000 	nop
inflate_block():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:650
87902e98:	00078c02 	srl	s1,a3,0x10
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:654
87902e9c:	11000020 	beqz	t0,87902f20 <initmips+0x72c>
87902ea0:	2530fff0 	addiu	s0,t1,-16
87902ea4:	09e40bae 	j	87902eb8 <initmips+0x6c4>
87902ea8:	2512ffff 	addiu	s2,t0,-1
87902eac:	1240001c 	beqz	s2,87902f20 <initmips+0x72c>
87902eb0:	00118a02 	srl	s1,s1,0x8
87902eb4:	2652ffff 	addiu	s2,s2,-1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:656
87902eb8:	2e020008 	sltiu	v0,s0,8
87902ebc:	1040000b 	beqz	v0,87902eec <initmips+0x6f8>
87902ec0:	3c038795 	lui	v1,0x8795
87902ec4:	8e64e028 	lw	a0,-8152(s3)
87902ec8:	8ea2e01c 	lw	v0,-8164(s5)
87902ecc:	24850001 	addiu	a1,a0,1
87902ed0:	00441021 	addu	v0,v0,a0
87902ed4:	90430000 	lbu	v1,0(v0)
87902ed8:	ae65e028 	sw	a1,-8152(s3)
87902edc:	02031804 	sllv	v1,v1,s0
87902ee0:	02238825 	or	s1,s1,v1
87902ee4:	26100008 	addiu	s0,s0,8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:657
87902ee8:	3c038795 	lui	v1,0x8795
87902eec:	8c62e020 	lw	v0,-8160(v1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:658
87902ef0:	34048000 	li	a0,0x8000
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:657
87902ef4:	004a1021 	addu	v0,v0,t2
87902ef8:	254a0001 	addiu	t2,t2,1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:663
87902efc:	2610fff8 	addiu	s0,s0,-8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:658
87902f00:	1544ffea 	bne	t2,a0,87902eac <initmips+0x6b8>
87902f04:	a0510000 	sb	s1,0(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:660
87902f08:	3c058795 	lui	a1,0x8795
87902f0c:	acaae02c 	sw	t2,-8148(a1)
87902f10:	0de406a5 	jal	87901a94 <flush_window>
87902f14:	00118a02 	srl	s1,s1,0x8
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:654
87902f18:	1640ffe6 	bnez	s2,87902eb4 <initmips+0x6c0>
87902f1c:	00005021 	move	t2,zero
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:668
87902f20:	3c028795 	lui	v0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:669
87902f24:	3c038795 	lui	v1,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:670
87902f28:	3c048795 	lui	a0,0x8795
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:668
87902f2c:	ac4ae02c 	sw	t2,-8148(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:669
87902f30:	ac71e038 	sw	s1,-8136(v1)
inflate():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:983
87902f34:	1280feea 	beqz	s4,87902ae0 <initmips+0x2ec>
87902f38:	ac90e03c 	sw	s0,-8132(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:988
87902f3c:	09e40b2d 	j	87902cb4 <initmips+0x4c0>
87902f40:	3c028795 	lui	v0,0x8795
error():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
87902f44:	0de40692 	jal	87901a48 <tgt_puts>
87902f48:	24843750 	addiu	a0,a0,14160
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
87902f4c:	3c028795 	lui	v0,0x8795
87902f50:	09e40a74 	j	879029d0 <initmips+0x1dc>
87902f54:	ac50e030 	sw	s0,-8144(v0)
inflate_block():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:932
87902f58:	2d220002 	sltiu	v0,t1,2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:928
87902f5c:	00063842 	srl	a3,a2,0x1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:932
87902f60:	1040001e 	beqz	v0,87902fdc <initmips+0x7e8>
87902f64:	30d40001 	andi	s4,a2,0x1
87902f68:	8e64e028 	lw	a0,-8152(s3)
87902f6c:	8ea2e01c 	lw	v0,-8164(s5)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:79
87902f70:	24050002 	li	a1,2
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:932
87902f74:	00441021 	addu	v0,v0,a0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:79
87902f78:	00a81823 	subu	v1,a1,t0
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:932
87902f7c:	90450000 	lbu	a1,0(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:79
87902f80:	000318c2 	srl	v1,v1,0x3
87902f84:	24840001 	addiu	a0,a0,1
87902f88:	00832021 	addu	a0,a0,v1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:932
87902f8c:	01252804 	sllv	a1,a1,t1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:79
87902f90:	25020005 	addiu	v0,t0,5
87902f94:	000318c0 	sll	v1,v1,0x3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:932
87902f98:	00e53825 	or	a3,a3,a1
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/initmips.c:79
87902f9c:	ae64e028 	sw	a0,-8152(s3)
87902fa0:	09e40aca 	j	87902b28 <initmips+0x334>
87902fa4:	00431821 	addu	v1,v0,v1
error():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
87902fa8:	3c048790 	lui	a0,0x8790
87902fac:	0de40692 	jal	87901a48 <tgt_puts>
87902fb0:	24843734 	addiu	a0,a0,14132
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
87902fb4:	24030001 	li	v1,1
87902fb8:	3c058795 	lui	a1,0x8795
87902fbc:	09e40a74 	j	879029d0 <initmips+0x1dc>
87902fc0:	aca3e030 	sw	v1,-8144(a1)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
87902fc4:	3c048790 	lui	a0,0x8790
87902fc8:	0de40692 	jal	87901a48 <tgt_puts>
87902fcc:	24843798 	addiu	a0,a0,14232
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
87902fd0:	3c048795 	lui	a0,0x8795
87902fd4:	09e40a74 	j	879029d0 <initmips+0x1dc>
87902fd8:	ac91e030 	sw	s1,-8144(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:932
87902fdc:	09e40aca 	j	87902b28 <initmips+0x334>
87902fe0:	2503fffd 	addiu	v1,t0,-3
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
87902fe4:	3c048790 	lui	a0,0x8790
87902fe8:	0de40692 	jal	87901a48 <tgt_puts>
87902fec:	248437d8 	addiu	a0,a0,14296
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
87902ff0:	24030001 	li	v1,1
87902ff4:	3c028795 	lui	v0,0x8795
87902ff8:	09e40a74 	j	879029d0 <initmips+0x1dc>
87902ffc:	ac43e030 	sw	v1,-8144(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
87903000:	3c048790 	lui	a0,0x8790
87903004:	0de40692 	jal	87901a48 <tgt_puts>
87903008:	248437cc 	addiu	a0,a0,14284
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
8790300c:	24030001 	li	v1,1
87903010:	3c028795 	lui	v0,0x8795
87903014:	09e40a74 	j	879029d0 <initmips+0x1dc>
87903018:	ac43e030 	sw	v1,-8144(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
8790301c:	0de40692 	jal	87901a48 <tgt_puts>
87903020:	24843774 	addiu	a0,a0,14196
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
87903024:	3c038795 	lui	v1,0x8795
87903028:	09e40a74 	j	879029d0 <initmips+0x1dc>
8790302c:	ac71e030 	sw	s1,-8144(v1)
gunzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/inflate.c:1132
87903030:	1600fed7 	bnez	s0,87902b90 <initmips+0x39c>
87903034:	3c048790 	lui	a0,0x8790
run_unzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:141
87903038:	3c038795 	lui	v1,0x8795
8790303c:	8c64e020 	lw	a0,-8160(v1)
87903040:	0de40418 	jal	87901060 <free>
87903044:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:126
87903048:	09e40a22 	j	87902888 <initmips+0x94>
8790304c:	2402ffff 	li	v0,-1
error():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
87903050:	0de40692 	jal	87901a48 <tgt_puts>
87903054:	24843720 	addiu	a0,a0,14112
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
87903058:	24030001 	li	v1,1
8790305c:	3c048795 	lui	a0,0x8795
87903060:	09e40a74 	j	879029d0 <initmips+0x1dc>
87903064:	ac83e030 	sw	v1,-8144(a0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
87903068:	3c048790 	lui	a0,0x8790
8790306c:	0de40692 	jal	87901a48 <tgt_puts>
87903070:	2484370c 	addiu	a0,a0,14092
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
87903074:	24030001 	li	v1,1
87903078:	3c028795 	lui	v0,0x8795
8790307c:	09e40a74 	j	879029d0 <initmips+0x1dc>
87903080:	ac43e030 	sw	v1,-8144(v0)
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:114
87903084:	0de40692 	jal	87901a48 <tgt_puts>
87903088:	248436ec 	addiu	a0,a0,14060
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:115
8790308c:	24030001 	li	v1,1
87903090:	3c058795 	lui	a1,0x8795
87903094:	09e40a74 	j	879029d0 <initmips+0x1dc>
87903098:	aca3e030 	sw	v1,-8144(a1)
run_unzip():
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:135
8790309c:	3c048790 	lui	a0,0x8790
879030a0:	0de40692 	jal	87901a48 <tgt_puts>
879030a4:	248436ac 	addiu	a0,a0,13996
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:136
879030a8:	3c038795 	lui	v1,0x8795
879030ac:	8c64e01c 	lw	a0,-8164(v1)
879030b0:	0de40418 	jal	87901060 <free>
879030b4:	00000000 	nop
/work/work/loongson/ls232/232soc_a7_nand_ok/pmon_archlab/zloader.ls1b/zloader.c:126
879030b8:	09e40a22 	j	87902888 <initmips+0x94>
879030bc:	2402ffff 	li	v0,-1
initmips():
879030c0:	41500a0d 	0x41500a0d
879030c4:	2143494e 	addi	v1,t2,18766
879030c8:	656e5520 	0x656e5520
879030cc:	63657078 	0x63657078
879030d0:	20646574 	addi	a0,v1,25972
879030d4:	68636143 	0x68636143
879030d8:	72452065 	0x72452065
879030dc:	20726f72 	addi	s2,v1,28530
879030e0:	65637865 	0x65637865
879030e4:	6f697470 	0x6f697470
879030e8:	0020216e 	0x20216e
879030ec:	41430a0d 	0x41430a0d
879030f0:	3d455355 	0x3d455355
879030f4:	530a0d00 	0x530a0d00
879030f8:	55544154 	0x55544154
879030fc:	0d003d53 	jal	8400f54c <stack-0x38ecab4>
87903100:	5252450a 	0x5252450a
87903104:	4350524f 	c0	0x150524f
87903108:	0a0d003d 	j	883400f4 <_gp+0x9ea0f4>
8790310c:	3d435045 	0x3d435045
87903110:	420a0d00 	c0	0xa0d00
87903114:	44414441 	0x44414441
87903118:	003d5244 	0x3d5244
8790311c:	4d500a0d 	0x4d500a0d
87903120:	30324e4f 	andi	s2,at,0x4e4f
87903124:	4d203030 	0x4d203030
87903128:	20535049 	addi	s3,v0,20553
8790312c:	74696e49 	jalx	81a5b924 <stack-0x5ea06dc>
87903130:	696c6169 	0x696c6169
87903134:	676e697a 	0x676e697a
87903138:	7453202e 	jalx	814c80b8 <stack-0x6433f48>
8790313c:	62646e61 	0x62646e61
87903140:	2e2e2e79 	sltiu	t6,s1,11897
87903144:	45000a0d 	bc1f	8790597c <biosdata+0x2178>
87903148:	524f5252 	0x524f5252
8790314c:	003d4350 	0x3d4350
87903150:	4e4f4320 	c3	0x4f4320
87903154:	3d474946 	0x3d474946
87903158:	000a0d00 	sll	at,t2,0x14
8790315c:	49525020 	0x49525020
87903160:	0d003d44 	jal	8400f510 <stack-0x38ecaf0>
87903164:	6e49000a 	0x6e49000a
87903168:	63207469 	0x63207469
8790316c:	65686361 	0x65686361
87903170:	2e2e2e73 	sltiu	t6,s1,11891
87903174:	206f6420 	addi	t7,v1,25632
87903178:	69746f6e 	0x69746f6e
8790317c:	2e2e676e 	sltiu	t6,s1,26478
87903180:	000a0d2e 	0xa0d2e
87903184:	73646f67 	0x73646f67
87903188:	20316e6f 	addi	s1,at,28271
8790318c:	68636163 	0x68636163
87903190:	66207365 	0x66207365
87903194:	646e756f 	0x646e756f
87903198:	49000a0d 	bc2f	879059d0 <biosdata+0x21cc>
8790319c:	2074696e 	addi	s4,v1,26990
879031a0:	68636163 	0x68636163
879031a4:	64207365 	0x64207365
879031a8:	2c656e6f 	sltiu	a1,v1,28271
879031ac:	67666320 	0x67666320
879031b0:	00203d20 	0x203d20
879031b4:	0a0d0a0d 	j	88342834 <_gp+0x9ec834>
879031b8:	706f4300 	0x706f4300
879031bc:	4d502079 	0x4d502079
879031c0:	74204e4f 	jalx	8081393c <stack-0x70e86c4>
879031c4:	7865206f 	0x7865206f
879031c8:	74756365 	jalx	81d58d94 <stack-0x5ba326c>
879031cc:	6f6c2065 	0x6f6c2065
879031d0:	69746163 	0x69746163
879031d4:	2e2e6e6f 	sltiu	t6,s1,28271
879031d8:	000a0d2e 	0xa0d2e
879031dc:	74732020 	jalx	81cc8080 <stack-0x5c33f80>
879031e0:	20747261 	addi	s4,v1,29281
879031e4:	7830203d 	0x7830203d
879031e8:	200a0d00 	addi	t2,zero,3328
879031ec:	20307320 	addi	s0,at,29472
879031f0:	7830203d 	0x7830203d
879031f4:	200a0d00 	addi	t2,zero,3328
879031f8:	64655f20 	0x64655f20
879031fc:	20617461 	addi	at,v1,29793
87903200:	7830203d 	0x7830203d
87903204:	200a0d00 	addi	t2,zero,3328
87903208:	6e655f20 	0x6e655f20
8790320c:	203d2064 	addi	sp,at,8292
87903210:	0d007830 	jal	8401e0c0 <stack-0x38ddf40>
87903214:	630a000a 	0x630a000a
87903218:	2079706f 	addi	t9,v1,28783
8790321c:	74786574 	jalx	81e195d0 <stack-0x5ae2a30>
87903220:	63657320 	0x63657320
87903224:	6e6f6974 	0x6e6f6974
87903228:	6e6f6420 	0x6e6f6420
8790322c:	0a0d2e65 	j	8834b994 <_gp+0x9f5994>
87903230:	706f4300 	0x706f4300
87903234:	4d502079 	0x4d502079
87903238:	74204e4f 	jalx	8081393c <stack-0x70e86c4>
8790323c:	7865206f 	0x7865206f
87903240:	74756365 	jalx	81d58d94 <stack-0x5ba326c>
87903244:	6f6c2065 	0x6f6c2065
87903248:	69746163 	0x69746163
8790324c:	64206e6f 	0x64206e6f
87903250:	2e656e6f 	sltiu	a1,s3,28271
87903254:	73000a0d 	0x73000a0d
87903258:	0d003d70 	jal	8400f5c0 <stack-0x38eca40>

8790325b <transmit_pat_msg>:
transmit_pat_msg():
8790325b:	0a0d      	la	v0,8790328c <transmit_pat_msg+0x31>
8790325d:	6e49      	li	a2,73
8790325f:	6176      	btnez	8790334d <v480_msg+0xf>
87903261:	696c      	li	s1,108
87903263:	2064      	beqz	s0,8790332d <v400_msg+0x1a>
87903265:	7274      	cmpi	v0,116
87903267:	6e61      	li	a2,97
87903269:	6d73      	li	a1,115
8790326b:	7469      	cmpi	a0,105
8790326d:	7020      	cmpi	s0,32
8790326f:	7461      	cmpi	a0,97
87903271:	6574      	move	s3,a0
87903273:	6e72      	li	a2,114
87903275:	202e      	beqz	s0,879032d3 <v280_msg+0x16>
87903277:	4d20      	addiu	a1,32
87903279:	7375      	cmpi	v1,117
8790327b:	2074      	beqz	s0,87903365 <v480_msg+0x27>
8790327d:	6562      	move	v1,v0
8790327f:	4420      	addiu	s1,a0,0
87903281:	4444      	addiu	v0,a0,4
87903283:	2044      	beqz	s0,8790330d <v380_msg+0x23>
87903285:	726f      	cmpi	v0,111
87903287:	4420      	addiu	s1,a0,0
87903289:	7844      	sd	v0,32(s0)
8790328b:	4444      	addiu	v0,a0,4
8790328d:	0d78      	la	a1,8790346c <DDR2_CTL_25_DATA_HI>
8790328f:	000a      	addiu	s0,sp,40

87903291 <v200_msg>:
v200_msg():
87903291:	0a0d      	la	v0,879032c4 <v280_msg+0x7>
87903293:	4150      	daddiu	v0,s1,0
87903295:	494e      	addiu	s1,78
87903297:	2143      	beqz	s1,8790331f <v400_msg+0xc>
87903299:	5520      	slti	a1,32
8790329b:	656e      	move	t3,a2
8790329d:	7078      	cmpi	s0,120
8790329f:	6365      	addiu	sp,808
879032a1:	6574      	move	s3,a0
879032a3:	2064      	beqz	s0,8790336d <v480_msg+0x2f>
879032a5:	4c54      	addiu	a0,84
879032a7:	2042      	beqz	s0,8790332d <v400_msg+0x1a>
879032a9:	6572      	move	s3,v0
879032ab:	6966      	li	s1,102
879032ad:	6c6c      	li	a0,108
879032af:	6520      	move	at,s0
879032b1:	6378      	addiu	sp,960
879032b3:	7065      	cmpi	s0,101
879032b5:	6974      	li	s1,116
879032b7:	6e6f      	li	a2,111
879032b9:	0d21      	la	a1,8790333c <v400_msg+0x29>
879032bb:	000a      	addiu	s0,sp,40

879032bd <v280_msg>:
v280_msg():
879032bd:	0a0d      	la	v0,879032f0 <v380_msg+0x6>
879032bf:	4150      	daddiu	v0,s1,0
879032c1:	494e      	addiu	s1,78
879032c3:	2143      	beqz	s1,8790334b <v480_msg+0xd>
879032c5:	5520      	slti	a1,32
879032c7:	656e      	move	t3,a2
879032c9:	7078      	cmpi	s0,120
879032cb:	6365      	addiu	sp,808
879032cd:	6574      	move	s3,a0
879032cf:	2064      	beqz	s0,87903399 <hexchar+0x1f>
879032d1:	5458      	slti	a0,88
879032d3:	424c      	addiu	v0,v0,-4
879032d5:	7220      	cmpi	v0,32
879032d7:	6665      	0x6665
879032d9:	6c69      	li	a0,105
879032db:	206c      	beqz	s0,879033b5 <DDR2_CTL_02_DATA_HI+0x1>
879032dd:	7865      	sd	v1,40(s0)
879032df:	6563      	move	v1,v1
879032e1:	7470      	cmpi	a0,112
879032e3:	6f69      	li	a3,105
879032e5:	216e      	beqz	s1,879033c3 <DDR2_CTL_04_DATA_LO+0x3>
879032e7:	0a0d      	la	v0,87903318 <v400_msg+0x5>
	...

879032ea <v380_msg>:
v380_msg():
879032ea:	41500a0d 	0x41500a0d
879032ee:	2143494e 	addi	v1,t2,18766
879032f2:	656e5520 	0x656e5520
879032f6:	63657078 	0x63657078
879032fa:	20646574 	addi	a0,v1,25972
879032fe:	656e6547 	0x656e6547
87903302:	206c6172 	addi	t4,v1,24946
87903306:	65637865 	0x65637865
8790330a:	6f697470 	0x6f697470
8790330e:	0a0d216e 	j	883485b8 <_gp+0x9f25b8>
87903312:	500a0d00 	0x500a0d00

87903313 <v400_msg>:
v400_msg():
87903313:	0a0d      	la	v0,87903344 <v480_msg+0x6>
87903315:	4150      	daddiu	v0,s1,0
87903317:	494e      	addiu	s1,78
87903319:	2143      	beqz	s1,879033a1 <DDR2_CTL_00_DATA_LO+0x1>
8790331b:	5520      	slti	a1,32
8790331d:	656e      	move	t3,a2
8790331f:	7078      	cmpi	s0,120
87903321:	6365      	addiu	sp,808
87903323:	6574      	move	s3,a0
87903325:	2064      	beqz	s0,879033ef <DDR2_CTL_09_DATA_HI+0x3>
87903327:	6e49      	li	a2,73
87903329:	6574      	move	s3,a0
8790332b:	7272      	cmpi	v0,114
8790332d:	7075      	cmpi	s0,117
8790332f:	2074      	beqz	s0,87903419 <DDR2_CTL_15_DATA_LO+0x1>
87903331:	7865      	sd	v1,40(s0)
87903333:	6563      	move	v1,v1
87903335:	7470      	cmpi	a0,112
87903337:	6f69      	li	a3,105
87903339:	216e      	beqz	s1,87903417 <DDR2_CTL_14_DATA_HI+0x3>
8790333b:	0a0d      	la	v0,8790336c <v480_msg+0x2e>
	...

8790333e <v480_msg>:
v480_msg():
8790333e:	41500a0d 	0x41500a0d
87903342:	2143494e 	addi	v1,t2,18766
87903346:	756f5920 	jalx	85bd6480 <stack-0x1d25b80>
8790334a:	76616820 	jalx	8985a080 <_gp+0x1f04080>
8790334e:	65622065 	0x65622065
87903352:	69206e65 	0x69206e65
87903356:	6874206e 	0x6874206e
8790335a:	6a452065 	0x6a452065
8790335e:	20676174 	addi	a3,v1,24948
87903362:	75626544 	jalx	85899510 <stack-0x2062af0>
87903366:	4f4d2067 	c3	0x14d2067
8790336a:	54206564 	0x54206564
8790336e:	20706172 	addi	s0,v1,24946
87903372:	30207369 	andi	zero,at,0x7369
87903376:	000a0d21 	0xa0d21

8790337a <hexchar>:
hexchar():
8790337a:	33323130 	andi	s2,t9,0x3130
8790337e:	37363534 	ori	s6,t9,0x3534
87903382:	62613938 	0x62613938
87903386:	66656463 	0x66656463
8790338a:	6f727245 	0x6f727245
8790338e:	0d212172 	jal	848485c8 <stack-0x30b3a38>
87903392:	0000000a 	0xa
	...

879033a0 <DDR2_CTL_00_DATA_LO>:
DDR2_CTL_00_DATA_LO():
879033a0:	00000101 	0x101

879033a4 <DDR2_CTL_00_DATA_HI>:
DDR2_CTL_00_DATA_HI():
879033a4:	01000100 	0x1000100

879033a8 <DDR2_CTL_01_DATA_LO>:
DDR2_CTL_01_DATA_LO():
879033a8:	00000000 	nop

879033ac <DDR2_CTL_01_DATA_HI>:
DDR2_CTL_01_DATA_HI():
879033ac:	00000001 	0x1

879033b0 <DDR2_CTL_02_DATA_LO>:
DDR2_CTL_02_DATA_LO():
879033b0:	00000000 	nop

879033b4 <DDR2_CTL_02_DATA_HI>:
DDR2_CTL_02_DATA_HI():
879033b4:	01000101 	0x1000101

879033b8 <DDR2_CTL_03_DATA_LO>:
DDR2_CTL_03_DATA_LO():
879033b8:	01000100 	0x1000100

879033bc <DDR2_CTL_03_DATA_HI>:
DDR2_CTL_03_DATA_HI():
879033bc:	01010000 	0x1010000

879033c0 <DDR2_CTL_04_DATA_LO>:
DDR2_CTL_04_DATA_LO():
879033c0:	01010101 	0x1010101

879033c4 <DDR2_CTL_04_DATA_HI>:
DDR2_CTL_04_DATA_HI():
879033c4:	01000202 	0x1000202

879033c8 <DDR2_CTL_05_DATA_LO>:
DDR2_CTL_05_DATA_LO():
879033c8:	04040202 	0x4040202

879033cc <DDR2_CTL_05_DATA_HI>:
DDR2_CTL_05_DATA_HI():
879033cc:	00000000 	nop

879033d0 <DDR2_CTL_06_DATA_LO>:
DDR2_CTL_06_DATA_LO():
879033d0:	03050203 	0x3050203

879033d4 <DDR2_CTL_06_DATA_HI>:
DDR2_CTL_06_DATA_HI():
879033d4:	0a030306 	j	880c0c18 <_gp+0x76ac18>

879033d8 <DDR2_CTL_07_DATA_LO>:
DDR2_CTL_07_DATA_LO():
879033d8:	00010607 	0x10607

879033dc <DDR2_CTL_07_DATA_HI>:
DDR2_CTL_07_DATA_HI():
879033dc:	00000400 	sll	zero,zero,0x10

879033e0 <DDR2_CTL_08_DATA_LO>:
DDR2_CTL_08_DATA_LO():
879033e0:	00000000 	nop

879033e4 <DDR2_CTL_08_DATA_HI>:
DDR2_CTL_08_DATA_HI():
879033e4:	08040201 	j	80100804 <stack-0x77fb7fc>

879033e8 <DDR2_CTL_09_DATA_LO>:
DDR2_CTL_09_DATA_LO():
879033e8:	00000000 	nop

879033ec <DDR2_CTL_09_DATA_HI>:
DDR2_CTL_09_DATA_HI():
879033ec:	0000060c 	syscall	0x18

879033f0 <DDR2_CTL_10_DATA_LO>:
DDR2_CTL_10_DATA_LO():
879033f0:	3f1a021b 	0x3f1a021b

879033f4 <DDR2_CTL_10_DATA_HI>:
DDR2_CTL_10_DATA_HI():
879033f4:	1716173f 	bne	t8,s6,879090f4 <biosdata+0x58f0>

879033f8 <DDR2_CTL_11_DATA_LO>:
DDR2_CTL_11_DATA_LO():
879033f8:	15151010 	bne	t0,s5,8790743c <biosdata+0x3c38>

879033fc <DDR2_CTL_11_DATA_HI>:
DDR2_CTL_11_DATA_HI():
879033fc:	45601d1d 	0x45601d1d

87903400 <DDR2_CTL_12_DATA_LO>:
DDR2_CTL_12_DATA_LO():
87903400:	15000000 	bnez	t0,87903404 <DDR2_CTL_12_DATA_HI>

87903404 <DDR2_CTL_12_DATA_HI>:
DDR2_CTL_12_DATA_HI():
87903404:	002a3c05 	0x2a3c05

87903408 <DDR2_CTL_13_DATA_LO>:
DDR2_CTL_13_DATA_LO():
87903408:	00040004 	sllv	zero,a0,zero

8790340c <DDR2_CTL_13_DATA_HI>:
DDR2_CTL_13_DATA_HI():
8790340c:	00100004 	sllv	zero,s0,zero

87903410 <DDR2_CTL_14_DATA_LO>:
DDR2_CTL_14_DATA_LO():
87903410:	00100010 	0x100010

87903414 <DDR2_CTL_14_DATA_HI>:
DDR2_CTL_14_DATA_HI():
87903414:	00100010 	0x100010

87903418 <DDR2_CTL_15_DATA_LO>:
DDR2_CTL_15_DATA_LO():
87903418:	00000004 	sllv	zero,zero,zero

8790341c <DDR2_CTL_15_DATA_HI>:
DDR2_CTL_15_DATA_HI():
8790341c:	00000008 	jr	zero

87903420 <DDR2_CTL_16_DATA_LO>:
DDR2_CTL_16_DATA_LO():
87903420:	00000044 	0x44

87903424 <DDR2_CTL_16_DATA_HI>:
DDR2_CTL_16_DATA_HI():
87903424:	000007ff 	0x7ff

87903428 <DDR2_CTL_17_DATA_LO>:
DDR2_CTL_17_DATA_LO():
87903428:	000104b0 	0x104b0

8790342c <DDR2_CTL_17_DATA_HI>:
DDR2_CTL_17_DATA_HI():
8790342c:	00000000 	nop

87903430 <DDR2_CTL_18_DATA_LO>:
DDR2_CTL_18_DATA_LO():
87903430:	00000000 	nop

87903434 <DDR2_CTL_18_DATA_HI>:
DDR2_CTL_18_DATA_HI():
87903434:	ffff0000 	0xffff0000

87903438 <DDR2_CTL_19_DATA_LO>:
DDR2_CTL_19_DATA_LO():
87903438:	00c8006b 	0xc8006b

8790343c <DDR2_CTL_19_DATA_HI>:
DDR2_CTL_19_DATA_HI():
8790343c:	68e10002 	0x68e10002

87903440 <DDR2_CTL_20_DATA_LO>:
DDR2_CTL_20_DATA_LO():
87903440:	00c8002f 	0xc8002f

87903444 <DDR2_CTL_20_DATA_HI>:
DDR2_CTL_20_DATA_HI():
87903444:	00000000 	nop

87903448 <DDR2_CTL_21_DATA_LO>:
DDR2_CTL_21_DATA_LO():
87903448:	00030d40 	sll	at,v1,0x15

8790344c <DDR2_CTL_21_DATA_HI>:
DDR2_CTL_21_DATA_HI():
8790344c:	00000000 	nop

87903450 <DDR2_CTL_22_DATA_LO>:
DDR2_CTL_22_DATA_LO():
87903450:	00000000 	nop

87903454 <DDR2_CTL_22_DATA_HI>:
DDR2_CTL_22_DATA_HI():
87903454:	00000000 	nop

87903458 <DDR2_CTL_23_DATA_LO>:
DDR2_CTL_23_DATA_LO():
87903458:	00000000 	nop

8790345c <DDR2_CTL_23_DATA_HI>:
DDR2_CTL_23_DATA_HI():
8790345c:	00000000 	nop

87903460 <DDR2_CTL_24_DATA_LO>:
DDR2_CTL_24_DATA_LO():
87903460:	00000000 	nop

87903464 <DDR2_CTL_24_DATA_HI>:
DDR2_CTL_24_DATA_HI():
87903464:	00000000 	nop

87903468 <DDR2_CTL_25_DATA_LO>:
DDR2_CTL_25_DATA_LO():
87903468:	00000000 	nop

8790346c <DDR2_CTL_25_DATA_HI>:
DDR2_CTL_25_DATA_HI():
8790346c:	00000000 	nop

87903470 <DDR2_CTL_26_DATA_LO>:
DDR2_CTL_26_DATA_LO():
87903470:	00000000 	nop

87903474 <DDR2_CTL_26_DATA_HI>:
DDR2_CTL_26_DATA_HI():
87903474:	00000000 	nop

87903478 <DDR2_CTL_27_DATA_LO>:
DDR2_CTL_27_DATA_LO():
87903478:	00000000 	nop

8790347c <DDR2_CTL_27_DATA_HI>:
DDR2_CTL_27_DATA_HI():
8790347c:	00000000 	nop

87903480 <DDR2_CTL_28_DATA_LO>:
DDR2_CTL_28_DATA_LO():
87903480:	00000000 	nop

87903484 <DDR2_CTL_28_DATA_HI>:
DDR2_CTL_28_DATA_HI():
87903484:	00000000 	nop

87903488 <DDR2_CTL_start_DATA_LO>:
DDR2_CTL_start_DATA_LO():
87903488:	01000100 	0x1000100

8790348c <DDR2_CTL_start_DATA_HI>:
DDR2_CTL_start_DATA_HI():
8790348c:	01010100 	0x1010100
	...

879034a0 <p.1851>:
879034a0:	00000000 00000001 00000002 00000004     ................
879034b0:	00000005 00000007 00000008 0000000a     ................
879034c0:	0000000b 0000000c 00000010 00000016     ................
879034d0:	00000017 0000001a                       ........

879034d8 <border>:
879034d8:	00000010 00000011 00000012 00000000     ................
879034e8:	00000008 00000007 00000009 00000006     ................
879034f8:	0000000a 00000005 0000000b 00000004     ................
87903508:	0000000c 00000003 0000000d 00000002     ................
87903518:	0000000e 00000001 0000000f              ............

87903524 <mask_bits>:
87903524:	00010000 00070003 001f000f 007f003f     ............?...
87903534:	01ff00ff 07ff03ff 1fff0fff 7fff3fff     .............?..
87903544:	0000ffff                                ....

87903548 <cplens>:
87903548:	00040003 00060005 00080007 000a0009     ................
87903558:	000d000b 0011000f 00170013 001f001b     ................
87903568:	002b0023 003b0033 00530043 00730063     #.+.3.;.C.S.c.s.
87903578:	00a30083 00e300c3 00000102 00000000     ................

87903588 <cplext>:
	...
87903598:	00010001 00010001 00020002 00020002     ................
879035a8:	00030003 00030003 00040004 00040004     ................
879035b8:	00050005 00050005 00630000 00000063     ..........c.c...

879035c8 <cpdist>:
879035c8:	00020001 00040003 00070005 000d0009     ................
879035d8:	00190011 00310021 00610041 00c10081     ....!.1.A.a.....
879035e8:	01810101 03010201 06010401 0c010801     ................
879035f8:	18011001 30012001 60014001              ..... .0.@.`

87903604 <cpdext>:
	...
8790360c:	00010001 00020002 00030003 00040004     ................
8790361c:	00050005 00060006 00070007 00080008     ................
8790362c:	00090009 000a000a 000b000b 000c000c     ................
8790363c:	000d000d fcff0ffe 00000000 00000000     ................
	...
