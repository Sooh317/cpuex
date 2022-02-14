	.text
	sub		r0, r0, r0
	b		_min_caml_start
	# fib.176
fib.176:
.Entry@fib.176:
	mv		r2, r1				# 0
	sw		r2, 0(r3)				# 0
	cmpi	r2, 1
	ble		.b664				# 18
.b665:
	addi	r1, r2, -1				# 42
	mflr	r63
	sw		r63, -1(r3)
	addi	r3, r3, -2
	bl		fib.176
	addi	r3, r3, 2
	lw		r63, -1(r3)
	mtlr	r63				# 42
	sw		r2, -1(r3)				# 42
	lw		r9, 0(r3)				# 56
	addi	r1, r9, -2				# 56
	mflr	r63
	sw		r63, -2(r3)
	addi	r3, r3, -3
	bl		fib.176
	addi	r3, r3, 3
	lw		r63, -2(r3)
	mtlr	r63				# 42
	lw		r9, -1(r3)				# 42
	add		r2, r9, r2				# 42
	blr				# 42
.b664:
	blr				# 33
	# main program start
_min_caml_start:
	addi	r1, r0, 10				# 71
	mflr	r63
	sw		r63, 0(r3)
	addi	r3, r3, -1
	bl		fib.176
	addi	r3, r3, 1
	lw		r63, 0(r3)
	mtlr	r63				# 71
	addi	r61, r0, 0				# 1797
	cmpi	r2, 0
	bge		.b667				# 1797
.b668:
	addi	r9, r0, 45				# 1823
	out		r9				# 946
	sub		r2, r0, r2				# 1859
	cmpi	r2, 0
	beq		.b669				# 1907
.b670:
	cmpi	r2, 256
	bge		.b671				# 1942
.b672:
	cmpi	r2, 200
	bge		.b745				# 1098
.b746:
	cmpi	r2, 100
	bge		.b747				# 1157
.b748:
	cmpi	r2, 10
	bge		.b749				# 1245
.b750:
	addi	r9, r2, 48				# 1264
	out		r9				# 946
	b		_min_caml_end				# 962
.b749:
	addi	r9, r0, 0				# 990
	cmpi	r2, 10
	bge		.b753				# 990
.b754:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r9, 0(r61)				# 1032
	sw		r2, 1(r61)				# 1032
	lw		r28, 1(r61)				# 1295
	lw		r9, 0(r61)				# 1295
	cmpi	r9, 0
	beq		.b755				# 1326
.b756:
	addi	r9, r9, 48				# 1383
	out		r9				# 946
	addi	r9, r28, 48				# 1410
	out		r9				# 946
	b		_min_caml_end				# 962
.b755:
	addi	r9, r28, 48				# 1346
	out		r9				# 946
	b		_min_caml_end				# 962
.b753:
	addi	r2, r2, -10				# 1005
	addi	r9, r9, 1				# 1005
	cmpi	r2, 10
	bge		.b753				# 990
	b		.b754
.b747:
	addi	r9, r0, 49				# 1180
	out		r9				# 946
	addi	r2, r2, -100				# 1199
	cmpi	r2, 10
	bge		.b749				# 1245
	b		.b750
.b745:
	addi	r9, r0, 50				# 1121
	out		r9				# 946
	addi	r2, r2, -200				# 1140
	cmpi	r2, 10
	bge		.b749				# 1245
	b		.b750
.b671:
	mv		r28, r4
	addi	r4, r4, 10				# 1984
	sw		r61, 0(r28)				# 1984
	sw		r61, 1(r28)				# 1984
	sw		r61, 2(r28)				# 1984
	sw		r61, 3(r28)				# 1984
	sw		r61, 4(r28)				# 1984
	sw		r61, 5(r28)				# 1984
	sw		r61, 6(r28)				# 1984
	sw		r61, 7(r28)				# 1984
	sw		r61, 8(r28)				# 1984
	sw		r61, 9(r28)				# 1984
	addis	r61, r0, 15258
	ori		r61, r61, 51712				# 2025
	cmp		r61, r2
	ble		.b674				# 2025
.b675:
	addis	r9, r0, 1525
	ori		r9, r9, 57600				# 2148
	cmp		r9, r2
	ble		.b681				# 2148
.b682:
	addis	r9, r0, 152
	ori		r9, r9, 38528				# 2269
	cmp		r9, r2
	ble		.b688				# 2269
.b689:
	addis	r9, r0, 15
	ori		r9, r9, 16960				# 2388
	cmp		r9, r2
	ble		.b695				# 2388
.b696:
	addis	r9, r0, 1
	ori		r9, r9, 34464				# 2505
	cmp		r9, r2
	ble		.b702				# 2505
.b703:
	cmpi	r2, 10000
	bge		.b709				# 2620
.b710:
	cmpi	r2, 1000
	bge		.b716				# 2733
.b717:
	cmpi	r2, 100
	bge		.b723				# 2844
.b724:
	cmpi	r2, 10
	bge		.b730				# 2953
.b731:
.b729:
	sw		r2, 0(r28)				# 3052
	addi	r61, r0, 9				# 1483
	addi	r9, r0, 0				# 1483
	cmpi	r61, 0
	bge		.b737				# 1483
	b		_min_caml_end
.b737:
	lwx		r62, r28, r61				# 1508
	cmpi	r62, 0
	beq		.b739				# 1533
.b740:
	addi	r9, r62, 48				# 1661
	out		r9				# 946
	addi	r9, r0, 1				# 1707
	addi	r61, r61, -1				# 1688
	cmpi	r61, 0
	bge		.b737				# 1483
	b		_min_caml_end
.b739:
	cmpi	r9, 0
	beq		.b741				# 1555
.b743:
	addi	r62, r0, 48				# 1571
	out		r62				# 946
.b741:
	addi	r61, r61, -1				# 1600
	cmpi	r61, 0
	bge		.b737				# 1483
	b		_min_caml_end
.b730:
	addi	r61, r0, 0				# 990
	cmpi	r2, 10
	bge		.b734				# 990
.b735:
	mv		r9, r4
	addi	r4, r4, 2				# 1032
	sw		r61, 0(r9)				# 1032
	sw		r2, 1(r9)				# 1032
.b732:
	lw		r2, 1(r9)				# 2977
	lw		r9, 0(r9)				# 2977
	sw		r9, 1(r28)				# 3010
	b		.b729				# 3030
.b734:
	addi	r2, r2, -10				# 1005
	addi	r61, r61, 1				# 1005
	cmpi	r2, 10
	bge		.b734				# 990
	b		.b735
.b723:
	addi	r9, r0, 0				# 990
	cmpi	r2, 100
	bge		.b727				# 990
.b728:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r9, 0(r61)				# 1032
	sw		r2, 1(r61)				# 1032
.b725:
	lw		r2, 1(r61)				# 2869
	lw		r9, 0(r61)				# 2869
	sw		r9, 2(r28)				# 2903
	cmpi	r2, 10
	bge		.b730				# 2953
	b		.b731
.b727:
	addi	r2, r2, -100				# 1005
	addi	r9, r9, 1				# 1005
	cmpi	r2, 100
	bge		.b727				# 990
	b		.b728
.b716:
	addi	r61, r0, 0				# 990
	cmpi	r2, 1000
	bge		.b720				# 990
.b721:
	mv		r9, r4
	addi	r4, r4, 2				# 1032
	sw		r61, 0(r9)				# 1032
	sw		r2, 1(r9)				# 1032
.b718:
	lw		r2, 1(r9)				# 2759
	lw		r9, 0(r9)				# 2759
	sw		r9, 3(r28)				# 2794
	cmpi	r2, 100
	bge		.b723				# 2844
	b		.b724
.b720:
	addi	r2, r2, -1000				# 1005
	addi	r61, r61, 1				# 1005
	cmpi	r2, 1000
	bge		.b720				# 990
	b		.b721
.b709:
	addi	r9, r0, 0				# 990
	cmpi	r2, 10000
	bge		.b713				# 990
.b714:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r9, 0(r61)				# 1032
	sw		r2, 1(r61)				# 1032
.b711:
	lw		r2, 1(r61)				# 2647
	lw		r9, 0(r61)				# 2647
	sw		r9, 4(r28)				# 2683
	cmpi	r2, 1000
	bge		.b716				# 2733
	b		.b717
.b713:
	addi	r2, r2, -10000				# 1005
	addi	r9, r9, 1				# 1005
	cmpi	r2, 10000
	bge		.b713				# 990
	b		.b714
.b702:
	addi	r61, r0, 0				# 990
	cmp		r9, r2
	ble		.b706				# 990
.b707:
	mv		r9, r4
	addi	r4, r4, 2				# 1032
	sw		r61, 0(r9)				# 1032
	sw		r2, 1(r9)				# 1032
.b704:
	lw		r2, 1(r9)				# 2533
	lw		r9, 0(r9)				# 2533
	sw		r9, 5(r28)				# 2570
	cmpi	r2, 10000
	bge		.b709				# 2620
	b		.b710
.b706:
	sub		r2, r2, r9				# 1005
	addi	r61, r61, 1				# 1005
	cmp		r9, r2
	ble		.b706				# 990
	b		.b707
.b695:
	addi	r61, r0, 0				# 990
	cmp		r9, r2
	ble		.b699				# 990
.b700:
	mv		r9, r4
	addi	r4, r4, 2				# 1032
	sw		r61, 0(r9)				# 1032
	sw		r2, 1(r9)				# 1032
.b697:
	lw		r2, 1(r9)				# 2417
	lw		r9, 0(r9)				# 2417
	sw		r9, 6(r28)				# 2455
	addis	r9, r0, 1
	ori		r9, r9, 34464				# 2505
	cmp		r9, r2
	ble		.b702				# 2505
	b		.b703
.b699:
	sub		r2, r2, r9				# 1005
	addi	r61, r61, 1				# 1005
	cmp		r9, r2
	ble		.b699				# 990
	b		.b700
.b688:
	addi	r61, r0, 0				# 990
	cmp		r9, r2
	ble		.b692				# 990
.b693:
	mv		r9, r4
	addi	r4, r4, 2				# 1032
	sw		r61, 0(r9)				# 1032
	sw		r2, 1(r9)				# 1032
.b690:
	lw		r2, 1(r9)				# 2299
	lw		r9, 0(r9)				# 2299
	sw		r9, 7(r28)				# 2338
	addis	r9, r0, 15
	ori		r9, r9, 16960				# 2388
	cmp		r9, r2
	ble		.b695				# 2388
	b		.b696
.b692:
	sub		r2, r2, r9				# 1005
	addi	r61, r61, 1				# 1005
	cmp		r9, r2
	ble		.b692				# 990
	b		.b693
.b681:
	addi	r61, r0, 0				# 990
	cmp		r9, r2
	ble		.b685				# 990
.b686:
	mv		r9, r4
	addi	r4, r4, 2				# 1032
	sw		r61, 0(r9)				# 1032
	sw		r2, 1(r9)				# 1032
.b683:
	lw		r2, 1(r9)				# 2179
	lw		r9, 0(r9)				# 2179
	sw		r9, 8(r28)				# 2219
	addis	r9, r0, 152
	ori		r9, r9, 38528				# 2269
	cmp		r9, r2
	ble		.b688				# 2269
	b		.b689
.b685:
	sub		r2, r2, r9				# 1005
	addi	r61, r61, 1				# 1005
	cmp		r9, r2
	ble		.b685				# 990
	b		.b686
.b674:
	addi	r9, r0, 0				# 990
	cmp		r61, r2
	ble		.b678				# 990
.b679:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r9, 0(r61)				# 1032
	sw		r2, 1(r61)				# 1032
.b676:
	lw		r2, 1(r61)				# 2057
	lw		r9, 0(r61)				# 2057
	sw		r9, 9(r28)				# 2098
	addis	r9, r0, 1525
	ori		r9, r9, 57600				# 2148
	cmp		r9, r2
	ble		.b681				# 2148
	b		.b682
.b678:
	sub		r2, r2, r61				# 1005
	addi	r9, r9, 1				# 1005
	cmp		r61, r2
	ble		.b678				# 990
	b		.b679
.b669:
	addi	r9, r0, 48				# 1921
	out		r9				# 946
	b		_min_caml_end				# 962
.b667:
	cmpi	r2, 0
	beq		.b669				# 1907
	b		.b670
	# main program end
_min_caml_end:
	flush
	halt
	halt
	halt
# === .data section ===
	.data
