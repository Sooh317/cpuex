	.text
	sub		r0, r0, r0
	b		_min_caml_start
	# fib.176
fib.176:
.Entry@fib.176:
	mv		r2, r1				# 0
	sw		r2, 0(r3)				# 0
	cmpi	r2, 1
	ble		.b687				# 18
.b688:
	addi	r1, r2, -1				# 42
	mflr	r63
	sw		r63, -1(r3)
	addi	r3, r3, -2
	bl		fib.176
	addi	r3, r3, 2
	lw		r63, -1(r3)
	mtlr	r63				# 42
	mv		r9, r2				# 42
	sw		r9, -1(r3)				# 42
	lw		r9, 0(r3)				# 56
	addi	r1, r9, -2				# 56
	mflr	r63
	sw		r63, -2(r3)
	addi	r3, r3, -3
	bl		fib.176
	addi	r3, r3, 3
	lw		r63, -2(r3)
	mtlr	r63				# 42
	mv		r9, r2				# 42
	lw		r61, -1(r3)				# 42
	add		r2, r61, r9				# 42
	blr				# 42
.b687:
	blr				# 33
	# main program start
_min_caml_start:
	addi	r1, r0, 1				# 71
	mflr	r63
	sw		r63, 0(r3)
	addi	r3, r3, -1
	bl		fib.176
	addi	r3, r3, 1
	lw		r63, 0(r3)
	mtlr	r63				# 71
	mv		r41, r2				# 71
	addi	r10, r0, 0				# 1797
	cmpi	r41, 0
	bge		.b690				# 1797
.b691:
	addi	r61, r0, 45				# 1823
	out		r61				# 946
	sub		r61, r0, r41				# 1859
	cmpi	r61, 0
	beq		.b692				# 1907
.b693:
	cmpi	r61, 256
	bge		.b694				# 1942
.b695:
	cmpi	r61, 200
	bge		.b768				# 1098
.b769:
	cmpi	r61, 100
	bge		.b770				# 1157
.b771:
	mv		r28, r61				# 1220
	cmpi	r28, 10
	bge		.b772				# 1245
.b773:
	addi	r9, r28, 48				# 1264
	out		r9				# 946
	b		_min_caml_end				# 962
.b772:
	mv		r62, r28				# 990
	addi	r28, r0, 0				# 990
T.loop775:
	sw		r28, 0(r3)				# 990
	sw		r62, -1(r3)				# 990
	lw		r62, -1(r3)				# 990
	cmpi	r62, 10
	bge		.b776				# 990
.b777:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r9, 0(r61)				# 1032
	sw		r62, 1(r61)				# 1032
	mv		r9, r61				# 1032
	lw		r28, 1(r9)				# 1295
	lw		r61, 0(r9)				# 1295
	cmpi	r61, 0
	beq		.b778				# 1326
.b779:
	addi	r9, r61, 48				# 1383
	out		r9				# 946
	addi	r9, r28, 48				# 1410
	out		r9				# 946
	b		_min_caml_end				# 962
.b778:
	addi	r9, r28, 48				# 1346
	out		r9				# 946
	b		_min_caml_end				# 962
.b776:
	addi	r28, r62, -10				# 1005
	lw		r9, 0(r3)				# 1005
	addi	r61, r9, 1				# 1005
	mv		r62, r28				# 1005
	mv		r28, r61				# 1005
	b		T.loop775				# 1005
.b770:
	addi	r28, r0, 49				# 1180
	out		r28				# 946
	addi	r28, r61, -100				# 1199
	cmpi	r28, 10
	bge		.b772				# 1245
	b		.b773
.b768:
	addi	r28, r0, 50				# 1121
	out		r28				# 946
	addi	r28, r61, -200				# 1140
	cmpi	r28, 10
	bge		.b772				# 1245
	b		.b773
.b694:
	mv		r9, r4
	addi	r4, r4, 10				# 1984
	sw		r10, 0(r9)				# 1984
	sw		r10, 1(r9)				# 1984
	sw		r10, 2(r9)				# 1984
	sw		r10, 3(r9)				# 1984
	sw		r10, 4(r9)				# 1984
	sw		r10, 5(r9)				# 1984
	sw		r10, 6(r9)				# 1984
	sw		r10, 7(r9)				# 1984
	sw		r10, 8(r9)				# 1984
	sw		r10, 9(r9)				# 1984
	addis	r10, r0, 15258
	ori		r10, r10, 51712				# 2025
	cmp		r10, r61
	ble		.b697				# 2025
.b698:
	mv		r10, r61				# 2131
	addis	r61, r0, 1525
	ori		r61, r61, 57600				# 2148
	cmp		r61, r10
	ble		.b704				# 2148
.b705:
	mv		r54, r10				# 2252
	addis	r61, r0, 152
	ori		r61, r61, 38528				# 2269
	cmp		r61, r54
	ble		.b711				# 2269
.b712:
	mv		r10, r54				# 2371
	addis	r61, r0, 15
	ori		r61, r61, 16960				# 2388
	cmp		r61, r10
	ble		.b718				# 2388
.b719:
	mv		r54, r10				# 2488
	addis	r61, r0, 1
	ori		r61, r61, 34464				# 2505
	cmp		r61, r54
	ble		.b725				# 2505
.b726:
	mv		r61, r54				# 2603
	cmpi	r61, 10000
	bge		.b732				# 2620
.b733:
	mv		r10, r61				# 2716
	cmpi	r10, 1000
	bge		.b739				# 2733
.b740:
	mv		r61, r10				# 2827
	cmpi	r61, 100
	bge		.b746				# 2844
.b747:
	mv		r62, r61				# 2936
	cmpi	r62, 10
	bge		.b753				# 2953
.b754:
	mv		r61, r62				# 3043
.b752:
	sw		r61, 0(r9)				# 3052
	addi	r28, r0, 9				# 1483
	addi	r61, r0, 0				# 1483
T.loop759:
	sw		r61, 0(r3)				# 1483
	sw		r28, -1(r3)				# 1483
	lw		r28, -1(r3)				# 1483
	cmpi	r28, 0
	bge		.b760				# 1483
	b		_min_caml_end
.b760:
	lwx		r61, r9, r28				# 1508
	cmpi	r61, 0
	beq		.b762				# 1533
.b763:
	addi	r62, r61, 48				# 1661
	out		r62				# 946
	addi	r61, r28, -1				# 1688
	addi	r62, r0, 1				# 1688
	mv		r28, r61				# 1688
	mv		r61, r62				# 1688
	b		T.loop759				# 1688
.b762:
	lw		r62, 0(r3)				# 1555
	cmpi	r62, 0
	beq		.b764				# 1555
.b766:
	addi	r61, r0, 48				# 1571
	out		r61				# 946
.b764:
	addi	r61, r28, -1				# 1600
	mv		r28, r61				# 1600
	mv		r61, r62				# 1600
	b		T.loop759				# 1600
.b753:
	mv		r61, r62				# 990
	addi	r62, r0, 0				# 990
T.loop756:
	sw		r62, 0(r3)				# 990
	sw		r61, -1(r3)				# 990
	lw		r15, -1(r3)				# 990
	cmpi	r15, 10
	bge		.b757				# 990
.b758:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r28, 0(r61)				# 1032
	sw		r15, 1(r61)				# 1032
	mv		r28, r61				# 1032
.b755:
	lw		r62, 1(r28)				# 2977
	lw		r61, 0(r28)				# 2977
	sw		r61, 1(r9)				# 3010
	mv		r61, r62				# 3030
	b		.b752				# 3030
.b757:
	addi	r62, r15, -10				# 1005
	lw		r28, 0(r3)				# 1005
	addi	r15, r28, 1				# 1005
	mv		r61, r62				# 1005
	mv		r62, r15				# 1005
	b		T.loop756				# 1005
.b746:
	mv		r10, r61				# 990
	addi	r15, r0, 0				# 990
T.loop749:
	sw		r15, 0(r3)				# 990
	sw		r10, -1(r3)				# 990
	lw		r10, -1(r3)				# 990
	cmpi	r10, 100
	bge		.b750				# 990
.b751:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r62, 0(r61)				# 1032
	sw		r10, 1(r61)				# 1032
	mv		r62, r61				# 1032
.b748:
	lw		r61, 1(r62)				# 2869
	lw		r15, 0(r62)				# 2869
	sw		r15, 2(r9)				# 2903
	mv		r62, r61				# 2923
	cmpi	r62, 10
	bge		.b753				# 2953
	b		.b754
.b750:
	addi	r15, r10, -100				# 1005
	lw		r62, 0(r3)				# 1005
	addi	r61, r62, 1				# 1005
	mv		r10, r15				# 1005
	mv		r15, r61				# 1005
	b		T.loop749				# 1005
.b739:
	mv		r61, r10				# 990
	addi	r10, r0, 0				# 990
T.loop742:
	sw		r10, 0(r3)				# 990
	sw		r61, -1(r3)				# 990
	lw		r61, -1(r3)				# 990
	cmpi	r61, 1000
	bge		.b743				# 990
.b744:
	mv		r10, r4
	addi	r4, r4, 2				# 1032
	sw		r15, 0(r10)				# 1032
	sw		r61, 1(r10)				# 1032
	mv		r61, r10				# 1032
.b741:
	lw		r15, 1(r61)				# 2759
	lw		r10, 0(r61)				# 2759
	sw		r10, 3(r9)				# 2794
	mv		r61, r15				# 2814
	cmpi	r61, 100
	bge		.b746				# 2844
	b		.b747
.b743:
	addi	r10, r61, -1000				# 1005
	lw		r15, 0(r3)				# 1005
	addi	r51, r15, 1				# 1005
	mv		r61, r10				# 1005
	mv		r10, r51				# 1005
	b		T.loop742				# 1005
.b732:
	mv		r10, r61				# 990
	addi	r61, r0, 0				# 990
T.loop735:
	sw		r61, 0(r3)				# 990
	sw		r10, -1(r3)				# 990
	lw		r13, -1(r3)				# 990
	cmpi	r13, 10000
	bge		.b736				# 990
.b737:
	mv		r10, r4
	addi	r4, r4, 2				# 1032
	sw		r51, 0(r10)				# 1032
	sw		r13, 1(r10)				# 1032
	mv		r61, r10				# 1032
.b734:
	lw		r51, 1(r61)				# 2647
	lw		r10, 0(r61)				# 2647
	sw		r10, 4(r9)				# 2683
	mv		r10, r51				# 2703
	cmpi	r10, 1000
	bge		.b739				# 2733
	b		.b740
.b736:
	addi	r61, r13, -10000				# 1005
	lw		r51, 0(r3)				# 1005
	addi	r13, r51, 1				# 1005
	mv		r10, r61				# 1005
	mv		r61, r13				# 1005
	b		T.loop735				# 1005
.b725:
	mv		r10, r54				# 990
	addi	r54, r0, 0				# 990
T.loop728:
	sw		r54, 0(r3)				# 990
	sw		r10, -1(r3)				# 990
	lw		r10, -1(r3)				# 990
	cmp		r61, r10
	ble		.b729				# 990
.b730:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r13, 0(r61)				# 1032
	sw		r10, 1(r61)				# 1032
	mv		r10, r61				# 1032
.b727:
	lw		r13, 1(r10)				# 2533
	lw		r61, 0(r10)				# 2533
	sw		r61, 5(r9)				# 2570
	mv		r61, r13				# 2590
	cmpi	r61, 10000
	bge		.b732				# 2620
	b		.b733
.b729:
	sub		r54, r10, r61				# 1005
	lw		r13, 0(r3)				# 1005
	addi	r7, r13, 1				# 1005
	mv		r10, r54				# 1005
	mv		r54, r7				# 1005
	b		T.loop728				# 1005
.b718:
	mv		r54, r10				# 990
	addi	r10, r0, 0				# 990
T.loop721:
	sw		r10, 0(r3)				# 990
	sw		r54, -1(r3)				# 990
	lw		r54, -1(r3)				# 990
	cmp		r61, r54
	ble		.b722				# 990
.b723:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r7, 0(r61)				# 1032
	sw		r54, 1(r61)				# 1032
	mv		r10, r61				# 1032
.b720:
	lw		r61, 1(r10)				# 2417
	lw		r54, 0(r10)				# 2417
	sw		r54, 6(r9)				# 2455
	mv		r54, r61				# 2475
	addis	r61, r0, 1
	ori		r61, r61, 34464				# 2505
	cmp		r61, r54
	ble		.b725				# 2505
	b		.b726
.b722:
	sub		r10, r54, r61				# 1005
	lw		r7, 0(r3)				# 1005
	addi	r30, r7, 1				# 1005
	mv		r54, r10				# 1005
	mv		r10, r30				# 1005
	b		T.loop721				# 1005
.b711:
	mv		r10, r54				# 990
	addi	r54, r0, 0				# 990
T.loop714:
	sw		r54, 0(r3)				# 990
	sw		r10, -1(r3)				# 990
	lw		r10, -1(r3)				# 990
	cmp		r61, r10
	ble		.b715				# 990
.b716:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r30, 0(r61)				# 1032
	sw		r10, 1(r61)				# 1032
	mv		r10, r61				# 1032
.b713:
	lw		r61, 1(r10)				# 2299
	lw		r54, 0(r10)				# 2299
	sw		r54, 7(r9)				# 2338
	mv		r10, r61				# 2358
	addis	r61, r0, 15
	ori		r61, r61, 16960				# 2388
	cmp		r61, r10
	ble		.b718				# 2388
	b		.b719
.b715:
	sub		r54, r10, r61				# 1005
	lw		r30, 0(r3)				# 1005
	addi	r25, r30, 1				# 1005
	mv		r10, r54				# 1005
	mv		r54, r25				# 1005
	b		T.loop714				# 1005
.b704:
	mv		r25, r10				# 990
	addi	r10, r0, 0				# 990
T.loop707:
	sw		r10, 0(r3)				# 990
	sw		r25, -1(r3)				# 990
	lw		r25, -1(r3)				# 990
	cmp		r61, r25
	ble		.b708				# 990
.b709:
	mv		r10, r4
	addi	r4, r4, 2				# 1032
	sw		r54, 0(r10)				# 1032
	sw		r25, 1(r10)				# 1032
	mv		r61, r10				# 1032
.b706:
	lw		r10, 1(r61)				# 2179
	lw		r54, 0(r61)				# 2179
	sw		r54, 8(r9)				# 2219
	mv		r54, r10				# 2239
	addis	r61, r0, 152
	ori		r61, r61, 38528				# 2269
	cmp		r61, r54
	ble		.b711				# 2269
	b		.b712
.b708:
	sub		r10, r25, r61				# 1005
	lw		r54, 0(r3)				# 1005
	addi	r41, r54, 1				# 1005
	mv		r25, r10				# 1005
	mv		r10, r41				# 1005
	b		T.loop707				# 1005
.b697:
	mv		r41, r61				# 990
	addi	r61, r0, 0				# 990
T.loop700:
	sw		r61, 0(r3)				# 990
	sw		r41, -1(r3)				# 990
	lw		r61, -1(r3)				# 990
	cmp		r10, r61
	ble		.b701				# 990
.b702:
	mv		r10, r4
	addi	r4, r4, 2				# 1032
	sw		r25, 0(r10)				# 1032
	sw		r61, 1(r10)				# 1032
	mv		r25, r10				# 1032
.b699:
	lw		r61, 1(r25)				# 2057
	lw		r10, 0(r25)				# 2057
	sw		r10, 9(r9)				# 2098
	mv		r10, r61				# 2118
	addis	r61, r0, 1525
	ori		r61, r61, 57600				# 2148
	cmp		r61, r10
	ble		.b704				# 2148
	b		.b705
.b701:
	sub		r57, r61, r10				# 1005
	lw		r25, 0(r3)				# 1005
	addi	r37, r25, 1				# 1005
	mv		r41, r57				# 1005
	mv		r61, r37				# 1005
	b		T.loop700				# 1005
.b692:
	addi	r9, r0, 48				# 1921
	out		r9				# 946
	b		_min_caml_end				# 962
.b690:
	mv		r61, r41				# 1883
	cmpi	r61, 0
	beq		.b692				# 1907
	b		.b693
	# main program end
_min_caml_end:
	flush
	halt
	halt
	halt
# === .data section ===
	.data