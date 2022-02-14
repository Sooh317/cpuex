	.text
	sub		r0, r0, r0
	b		_min_caml_start
	# fib.176
fib.176:
.Entry@fib.176:
	mv		r2, r1				# 0
	sw		r2, 0(r3)				# 0
	cmpi	r2, 1
	ble		.b686				# 18
.b687:
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
.b686:
	blr				# 33
	# main program start
_min_caml_start:
	addi	r1, r0, 30				# 71
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
	bge		.b689				# 1797
.b690:
	addi	r61, r0, 45				# 1823
	out		r61				# 946
	sub		r61, r0, r41				# 1859
	cmpi	r61, 0
	beq		.b691				# 1907
.b692:
	cmpi	r61, 256
	bge		.b693				# 1942
.b694:
	cmpi	r61, 200
	bge		.b767				# 1098
.b768:
	cmpi	r61, 100
	bge		.b769				# 1157
.b770:
	mv		r28, r61				# 1220
	cmpi	r28, 10
	bge		.b771				# 1245
.b772:
	addi	r9, r28, 48				# 1264
	out		r9				# 946
	b		_min_caml_end				# 962
.b771:
	mv		r62, r28				# 990
	addi	r28, r0, 0				# 990
T.loop774:
	sw		r28, 0(r3)				# 990
	sw		r62, -1(r3)				# 990
	lw		r62, -1(r3)				# 990
	cmpi	r62, 10
	bge		.b775				# 990
.b776:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r9, 0(r61)				# 1032
	sw		r62, 1(r61)				# 1032
	mv		r9, r61				# 1032
	lw		r28, 1(r9)				# 1295
	lw		r61, 0(r9)				# 1295
	cmpi	r61, 0
	beq		.b777				# 1326
.b778:
	addi	r9, r61, 48				# 1383
	out		r9				# 946
	addi	r9, r28, 48				# 1410
	out		r9				# 946
	b		_min_caml_end				# 962
.b777:
	addi	r9, r28, 48				# 1346
	out		r9				# 946
	b		_min_caml_end				# 962
.b775:
	addi	r28, r62, -10				# 1005
	lw		r9, 0(r3)				# 1005
	addi	r61, r9, 1				# 1005
	mv		r62, r28				# 1005
	mv		r28, r61				# 1005
	b		T.loop774				# 1005
.b769:
	addi	r28, r0, 49				# 1180
	out		r28				# 946
	addi	r28, r61, -100				# 1199
	cmpi	r28, 10
	bge		.b771				# 1245
	b		.b772
.b767:
	addi	r28, r0, 50				# 1121
	out		r28				# 946
	addi	r28, r61, -200				# 1140
	cmpi	r28, 10
	bge		.b771				# 1245
	b		.b772
.b693:
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
	ble		.b696				# 2025
.b697:
	mv		r10, r61				# 2131
	addis	r61, r0, 1525
	ori		r61, r61, 57600				# 2148
	cmp		r61, r10
	ble		.b703				# 2148
.b704:
	mv		r54, r10				# 2252
	addis	r61, r0, 152
	ori		r61, r61, 38528				# 2269
	cmp		r61, r54
	ble		.b710				# 2269
.b711:
	mv		r10, r54				# 2371
	addis	r61, r0, 15
	ori		r61, r61, 16960				# 2388
	cmp		r61, r10
	ble		.b717				# 2388
.b718:
	mv		r54, r10				# 2488
	addis	r61, r0, 1
	ori		r61, r61, 34464				# 2505
	cmp		r61, r54
	ble		.b724				# 2505
.b725:
	mv		r10, r54				# 2603
	cmpi	r10, 10000
	bge		.b731				# 2620
.b732:
	mv		r61, r10				# 2716
	cmpi	r61, 1000
	bge		.b738				# 2733
.b739:
	mv		r15, r61				# 2827
	cmpi	r15, 100
	bge		.b745				# 2844
.b746:
	mv		r61, r15				# 2936
	cmpi	r61, 10
	bge		.b752				# 2953
.b753:
	mv		r28, r61				# 3043
.b751:
	sw		r28, 0(r9)				# 3052
	addi	r62, r0, 9				# 1483
	addi	r61, r0, 0				# 1483
T.loop758:
	sw		r61, 0(r3)				# 1483
	sw		r62, -1(r3)				# 1483
	lw		r62, -1(r3)				# 1483
	cmpi	r62, 0
	bge		.b759				# 1483
	b		_min_caml_end
.b759:
	lwx		r61, r9, r62				# 1508
	cmpi	r61, 0
	beq		.b761				# 1533
.b762:
	addi	r28, r61, 48				# 1661
	out		r28				# 946
	addi	r28, r0, 1				# 1707
	addi	r61, r62, -1				# 1688
	mv		r62, r61				# 1688
	mv		r61, r28				# 1688
	b		T.loop758				# 1688
.b761:
	lw		r28, 0(r3)				# 1555
	cmpi	r28, 0
	beq		.b763				# 1555
.b765:
	addi	r61, r0, 48				# 1571
	out		r61				# 946
.b763:
	addi	r61, r62, -1				# 1600
	mv		r62, r61				# 1600
	mv		r61, r28				# 1600
	b		T.loop758				# 1600
.b752:
	mv		r62, r61				# 990
	addi	r61, r0, 0				# 990
T.loop755:
	sw		r61, 0(r3)				# 990
	sw		r62, -1(r3)				# 990
	lw		r62, -1(r3)				# 990
	cmpi	r62, 10
	bge		.b756				# 990
.b757:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r28, 0(r61)				# 1032
	sw		r62, 1(r61)				# 1032
	mv		r28, r61				# 1032
.b754:
	lw		r61, 1(r28)				# 2977
	lw		r62, 0(r28)				# 2977
	sw		r62, 1(r9)				# 3010
	mv		r28, r61				# 3030
	b		.b751				# 3030
.b756:
	addi	r61, r62, -10				# 1005
	lw		r28, 0(r3)				# 1005
	addi	r15, r28, 1				# 1005
	mv		r62, r61				# 1005
	mv		r61, r15				# 1005
	b		T.loop755				# 1005
.b745:
	mv		r61, r15				# 990
	addi	r15, r0, 0				# 990
T.loop748:
	sw		r15, 0(r3)				# 990
	sw		r61, -1(r3)				# 990
	lw		r10, -1(r3)				# 990
	cmpi	r10, 100
	bge		.b749				# 990
.b750:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r62, 0(r61)				# 1032
	sw		r10, 1(r61)				# 1032
	mv		r15, r61				# 1032
.b747:
	lw		r62, 1(r15)				# 2869
	lw		r61, 0(r15)				# 2869
	sw		r61, 2(r9)				# 2903
	mv		r61, r62				# 2923
	cmpi	r61, 10
	bge		.b752				# 2953
	b		.b753
.b749:
	addi	r15, r10, -100				# 1005
	lw		r62, 0(r3)				# 1005
	addi	r10, r62, 1				# 1005
	mv		r61, r15				# 1005
	mv		r15, r10				# 1005
	b		T.loop748				# 1005
.b738:
	mv		r10, r61				# 990
	addi	r61, r0, 0				# 990
T.loop741:
	sw		r61, 0(r3)				# 990
	sw		r10, -1(r3)				# 990
	lw		r10, -1(r3)				# 990
	cmpi	r10, 1000
	bge		.b742				# 990
.b743:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r15, 0(r61)				# 1032
	sw		r10, 1(r61)				# 1032
	mv		r15, r61				# 1032
.b740:
	lw		r61, 1(r15)				# 2759
	lw		r10, 0(r15)				# 2759
	sw		r10, 3(r9)				# 2794
	mv		r15, r61				# 2814
	cmpi	r15, 100
	bge		.b745				# 2844
	b		.b746
.b742:
	addi	r61, r10, -1000				# 1005
	lw		r15, 0(r3)				# 1005
	addi	r51, r15, 1				# 1005
	mv		r10, r61				# 1005
	mv		r61, r51				# 1005
	b		T.loop741				# 1005
.b731:
	mv		r61, r10				# 990
	addi	r10, r0, 0				# 990
T.loop734:
	sw		r10, 0(r3)				# 990
	sw		r61, -1(r3)				# 990
	lw		r61, -1(r3)				# 990
	cmpi	r61, 10000
	bge		.b735				# 990
.b736:
	mv		r10, r4
	addi	r4, r4, 2				# 1032
	sw		r51, 0(r10)				# 1032
	sw		r61, 1(r10)				# 1032
	mv		r61, r10				# 1032
.b733:
	lw		r10, 1(r61)				# 2647
	lw		r51, 0(r61)				# 2647
	sw		r51, 4(r9)				# 2683
	mv		r61, r10				# 2703
	cmpi	r61, 1000
	bge		.b738				# 2733
	b		.b739
.b735:
	addi	r10, r61, -10000				# 1005
	lw		r51, 0(r3)				# 1005
	addi	r13, r51, 1				# 1005
	mv		r61, r10				# 1005
	mv		r10, r13				# 1005
	b		T.loop734				# 1005
.b724:
	mv		r10, r54				# 990
	addi	r54, r0, 0				# 990
T.loop727:
	sw		r54, 0(r3)				# 990
	sw		r10, -1(r3)				# 990
	lw		r10, -1(r3)				# 990
	cmp		r61, r10
	ble		.b728				# 990
.b729:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r13, 0(r61)				# 1032
	sw		r10, 1(r61)				# 1032
	mv		r10, r61				# 1032
.b726:
	lw		r61, 1(r10)				# 2533
	lw		r13, 0(r10)				# 2533
	sw		r13, 5(r9)				# 2570
	mv		r10, r61				# 2590
	cmpi	r10, 10000
	bge		.b731				# 2620
	b		.b732
.b728:
	sub		r54, r10, r61				# 1005
	lw		r13, 0(r3)				# 1005
	addi	r7, r13, 1				# 1005
	mv		r10, r54				# 1005
	mv		r54, r7				# 1005
	b		T.loop727				# 1005
.b717:
	mv		r54, r10				# 990
	addi	r30, r0, 0				# 990
T.loop720:
	sw		r30, 0(r3)				# 990
	sw		r54, -1(r3)				# 990
	lw		r54, -1(r3)				# 990
	cmp		r61, r54
	ble		.b721				# 990
.b722:
	mv		r10, r4
	addi	r4, r4, 2				# 1032
	sw		r7, 0(r10)				# 1032
	sw		r54, 1(r10)				# 1032
	mv		r61, r10				# 1032
.b719:
	lw		r10, 1(r61)				# 2417
	lw		r54, 0(r61)				# 2417
	sw		r54, 6(r9)				# 2455
	mv		r54, r10				# 2475
	addis	r61, r0, 1
	ori		r61, r61, 34464				# 2505
	cmp		r61, r54
	ble		.b724				# 2505
	b		.b725
.b721:
	sub		r30, r54, r61				# 1005
	lw		r7, 0(r3)				# 1005
	addi	r10, r7, 1				# 1005
	mv		r54, r30				# 1005
	mv		r30, r10				# 1005
	b		T.loop720				# 1005
.b710:
	mv		r10, r54				# 990
	addi	r25, r0, 0				# 990
T.loop713:
	sw		r25, 0(r3)				# 990
	sw		r10, -1(r3)				# 990
	lw		r10, -1(r3)				# 990
	cmp		r61, r10
	ble		.b714				# 990
.b715:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r30, 0(r61)				# 1032
	sw		r10, 1(r61)				# 1032
	mv		r10, r61				# 1032
.b712:
	lw		r61, 1(r10)				# 2299
	lw		r54, 0(r10)				# 2299
	sw		r54, 7(r9)				# 2338
	mv		r10, r61				# 2358
	addis	r61, r0, 15
	ori		r61, r61, 16960				# 2388
	cmp		r61, r10
	ble		.b717				# 2388
	b		.b718
.b714:
	sub		r25, r10, r61				# 1005
	lw		r30, 0(r3)				# 1005
	addi	r54, r30, 1				# 1005
	mv		r10, r25				# 1005
	mv		r25, r54				# 1005
	b		T.loop713				# 1005
.b703:
	mv		r25, r10				# 990
	addi	r10, r0, 0				# 990
T.loop706:
	sw		r10, 0(r3)				# 990
	sw		r25, -1(r3)				# 990
	lw		r25, -1(r3)				# 990
	cmp		r61, r25
	ble		.b707				# 990
.b708:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r54, 0(r61)				# 1032
	sw		r25, 1(r61)				# 1032
	mv		r10, r61				# 1032
.b705:
	lw		r61, 1(r10)				# 2179
	lw		r54, 0(r10)				# 2179
	sw		r54, 8(r9)				# 2219
	mv		r54, r61				# 2239
	addis	r61, r0, 152
	ori		r61, r61, 38528				# 2269
	cmp		r61, r54
	ble		.b710				# 2269
	b		.b711
.b707:
	sub		r10, r25, r61				# 1005
	lw		r54, 0(r3)				# 1005
	addi	r41, r54, 1				# 1005
	mv		r25, r10				# 1005
	mv		r10, r41				# 1005
	b		T.loop706				# 1005
.b696:
	mv		r41, r61				# 990
	addi	r61, r0, 0				# 990
T.loop699:
	sw		r61, 0(r3)				# 990
	sw		r41, -1(r3)				# 990
	lw		r61, -1(r3)				# 990
	cmp		r10, r61
	ble		.b700				# 990
.b701:
	mv		r10, r4
	addi	r4, r4, 2				# 1032
	sw		r25, 0(r10)				# 1032
	sw		r61, 1(r10)				# 1032
	mv		r61, r10				# 1032
.b698:
	lw		r25, 1(r61)				# 2057
	lw		r10, 0(r61)				# 2057
	sw		r10, 9(r9)				# 2098
	mv		r10, r25				# 2118
	addis	r61, r0, 1525
	ori		r61, r61, 57600				# 2148
	cmp		r61, r10
	ble		.b703				# 2148
	b		.b704
.b700:
	sub		r57, r61, r10				# 1005
	lw		r25, 0(r3)				# 1005
	addi	r37, r25, 1				# 1005
	mv		r41, r57				# 1005
	mv		r61, r37				# 1005
	b		T.loop699				# 1005
.b691:
	addi	r9, r0, 48				# 1921
	out		r9				# 946
	b		_min_caml_end				# 962
.b689:
	mv		r61, r41				# 1883
	cmpi	r61, 0
	beq		.b691				# 1907
	b		.b692
	# main program end
_min_caml_end:
	flush
	halt
	halt
	halt
# === .data section ===
	.data