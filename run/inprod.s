	.text
	sub		r0, r0, r0
	b		_min_caml_start
	# main program start
_min_caml_start:
	addis	r61, r0, 19444
	ori		r61, r61, 9216				# 237
	ftoi	r9, r61				# 543
	addi	r61, r0, 0				# 1797
	cmpi	r9, 0
	bge		.b728				# 1797
.b729:
	addi	r28, r0, 45				# 1823
	out		r28				# 946
	sub		r28, r0, r9				# 1859
	cmpi	r28, 0
	beq		.b730				# 1907
.b731:
	cmpi	r28, 256
	bge		.b732				# 1942
.b733:
	cmpi	r28, 200
	bge		.b806				# 1098
.b807:
	cmpi	r28, 100
	bge		.b808				# 1157
.b809:
	mv		r9, r28				# 1220
	cmpi	r9, 10
	bge		.b810				# 1245
.b811:
	addi	r61, r9, 48				# 1264
	out		r61				# 946

	blr				# 0
.b810:
	mv		r28, r9				# 990
	addi	r62, r0, 0				# 990
	cmpi	r28, 10
	bge		.b814				# 990
.b815:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r62, 0(r61)				# 1032
	sw		r28, 1(r61)				# 1032
	mv		r9, r61				# 1032
	lw		r28, 1(r9)				# 1295
	lw		r61, 0(r9)				# 1295
	cmpi	r61, 0
	beq		.b816				# 1326
.b817:
	addi	r9, r61, 48				# 1383
	out		r9				# 946
	addi	r9, r28, 48				# 1410
	out		r9				# 946

	blr				# 0
.b816:
	addi	r9, r28, 48				# 1346
	out		r9				# 946

	blr				# 0
.b814:
	addi	r9, r28, -10				# 1005
	addi	r61, r62, 1				# 1005
	mv		r28, r9				# 1005
	mv		r62, r61				# 1005
	cmpi	r28, 10
	bge		.b814				# 990
	b		.b815
.b808:
	addi	r9, r0, 49				# 1180
	out		r9				# 946
	addi	r9, r28, -100				# 1199
	cmpi	r9, 10
	bge		.b810				# 1245
	b		.b811
.b806:
	addi	r9, r0, 50				# 1121
	out		r9				# 946
	addi	r9, r28, -200				# 1140
	cmpi	r9, 10
	bge		.b810				# 1245
	b		.b811
.b732:
	mv		r9, r4
	addi	r4, r4, 10				# 1984
	sw		r61, 0(r9)				# 1984
	sw		r61, 1(r9)				# 1984
	sw		r61, 2(r9)				# 1984
	sw		r61, 3(r9)				# 1984
	sw		r61, 4(r9)				# 1984
	sw		r61, 5(r9)				# 1984
	sw		r61, 6(r9)				# 1984
	sw		r61, 7(r9)				# 1984
	sw		r61, 8(r9)				# 1984
	sw		r61, 9(r9)				# 1984
	addis	r10, r0, 15258
	ori		r10, r10, 51712				# 2025
	cmp		r10, r28
	ble		.b735				# 2025
.b736:
	mv		r61, r28				# 2131
	addis	r10, r0, 1525
	ori		r10, r10, 57600				# 2148
	cmp		r10, r61
	ble		.b742				# 2148
.b743:
	mv		r28, r61				# 2252
	addis	r10, r0, 152
	ori		r10, r10, 38528				# 2269
	cmp		r10, r28
	ble		.b749				# 2269
.b750:
	mv		r61, r28				# 2371
	addis	r10, r0, 15
	ori		r10, r10, 16960				# 2388
	cmp		r10, r61
	ble		.b756				# 2388
.b757:
	mv		r28, r61				# 2488
	addis	r10, r0, 1
	ori		r10, r10, 34464				# 2505
	cmp		r10, r28
	ble		.b763				# 2505
.b764:
	mv		r61, r28				# 2603
	cmpi	r61, 10000
	bge		.b770				# 2620
.b771:
	mv		r28, r61				# 2716
	cmpi	r28, 1000
	bge		.b777				# 2733
.b778:
	mv		r62, r28				# 2827
	cmpi	r62, 100
	bge		.b784				# 2844
.b785:
	mv		r61, r62				# 2936
	cmpi	r61, 10
	bge		.b791				# 2953
.b792:
	mv		r28, r61				# 3043
.b790:
	sw		r28, 0(r9)				# 3052
	addi	r62, r0, 9				# 1483
	addi	r61, r0, 0				# 1483
	cmpi	r62, 0
	bge		.b798				# 1483
	b		_min_caml_end
.b798:
	lwx		r28, r9, r62				# 1508
	cmpi	r28, 0
	beq		.b800				# 1533
.b801:
	addi	r61, r28, 48				# 1661
	out		r61				# 946
	addi	r28, r0, 1				# 1707
	addi	r61, r62, -1				# 1688
	mv		r62, r61				# 1688
	mv		r61, r28				# 1688
	cmpi	r62, 0
	bge		.b798				# 1483
	b		_min_caml_end
.b800:
	cmpi	r61, 0
	beq		.b802				# 1555
.b804:
	addi	r28, r0, 48				# 1571
	out		r28				# 946

.b802:
	addi	r28, r62, -1				# 1600
	mv		r62, r28				# 1600

	cmpi	r62, 0
	bge		.b798				# 1483
	b		_min_caml_end
.b791:
	mv		r15, r61				# 990
	addi	r28, r0, 0				# 990
	cmpi	r15, 10
	bge		.b795				# 990
.b796:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r28, 0(r61)				# 1032
	sw		r15, 1(r61)				# 1032
	mv		r28, r61				# 1032
.b793:
	lw		r61, 1(r28)				# 2977
	lw		r62, 0(r28)				# 2977
	sw		r62, 1(r9)				# 3010
	mv		r28, r61				# 3030
	b		.b790				# 3030
.b795:
	addi	r62, r15, -10				# 1005
	addi	r61, r28, 1				# 1005
	mv		r15, r62				# 1005
	mv		r28, r61				# 1005
	cmpi	r15, 10
	bge		.b795				# 990
	b		.b796
.b784:
	mv		r61, r62				# 990
	addi	r62, r0, 0				# 990
	cmpi	r61, 100
	bge		.b788				# 990
.b789:
	mv		r28, r4
	addi	r4, r4, 2				# 1032
	sw		r62, 0(r28)				# 1032
	sw		r61, 1(r28)				# 1032
	mv		r61, r28				# 1032
.b786:
	lw		r28, 1(r61)				# 2869
	lw		r62, 0(r61)				# 2869
	sw		r62, 2(r9)				# 2903
	mv		r61, r28				# 2923
	cmpi	r61, 10
	bge		.b791				# 2953
	b		.b792
.b788:
	addi	r15, r61, -100				# 1005
	addi	r28, r62, 1				# 1005
	mv		r61, r15				# 1005
	mv		r62, r28				# 1005
	cmpi	r61, 100
	bge		.b788				# 990
	b		.b789
.b777:
	mv		r61, r28				# 990
	addi	r62, r0, 0				# 990
	cmpi	r61, 1000
	bge		.b781				# 990
.b782:
	mv		r28, r4
	addi	r4, r4, 2				# 1032
	sw		r62, 0(r28)				# 1032
	sw		r61, 1(r28)				# 1032
	mv		r61, r28				# 1032
.b779:
	lw		r28, 1(r61)				# 2759
	lw		r62, 0(r61)				# 2759
	sw		r62, 3(r9)				# 2794
	mv		r62, r28				# 2814
	cmpi	r62, 100
	bge		.b784				# 2844
	b		.b785
.b781:
	addi	r15, r61, -1000				# 1005
	addi	r28, r62, 1				# 1005
	mv		r61, r15				# 1005
	mv		r62, r28				# 1005
	cmpi	r61, 1000
	bge		.b781				# 990
	b		.b782
.b770:
	mv		r62, r61				# 990
	addi	r28, r0, 0				# 990
	cmpi	r62, 10000
	bge		.b774				# 990
.b775:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r28, 0(r61)				# 1032
	sw		r62, 1(r61)				# 1032
	mv		r28, r61				# 1032
.b772:
	lw		r61, 1(r28)				# 2647
	lw		r62, 0(r28)				# 2647
	sw		r62, 4(r9)				# 2683
	mv		r28, r61				# 2703
	cmpi	r28, 1000
	bge		.b777				# 2733
	b		.b778
.b774:
	addi	r15, r62, -10000				# 1005
	addi	r61, r28, 1				# 1005
	mv		r62, r15				# 1005
	mv		r28, r61				# 1005
	cmpi	r62, 10000
	bge		.b774				# 990
	b		.b775
.b763:
	mv		r61, r28				# 990
	addi	r15, r0, 0				# 990
	cmp		r10, r61
	ble		.b767				# 990
.b768:
	mv		r28, r4
	addi	r4, r4, 2				# 1032
	sw		r15, 0(r28)				# 1032
	sw		r61, 1(r28)				# 1032
	mv		r61, r28				# 1032
.b765:
	lw		r28, 1(r61)				# 2533
	lw		r62, 0(r61)				# 2533
	sw		r62, 5(r9)				# 2570
	mv		r61, r28				# 2590
	cmpi	r61, 10000
	bge		.b770				# 2620
	b		.b771
.b767:
	sub		r28, r61, r10				# 1005
	addi	r62, r15, 1				# 1005
	mv		r61, r28				# 1005
	mv		r15, r62				# 1005
	cmp		r10, r61
	ble		.b767				# 990
	b		.b768
.b756:
	mv		r28, r61				# 990
	addi	r15, r0, 0				# 990
	cmp		r10, r28
	ble		.b760				# 990
.b761:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r15, 0(r61)				# 1032
	sw		r28, 1(r61)				# 1032
	mv		r28, r61				# 1032
.b758:
	lw		r61, 1(r28)				# 2417
	lw		r62, 0(r28)				# 2417
	sw		r62, 6(r9)				# 2455
	mv		r28, r61				# 2475
	addis	r10, r0, 1
	ori		r10, r10, 34464				# 2505
	cmp		r10, r28
	ble		.b763				# 2505
	b		.b764
.b760:
	sub		r61, r28, r10				# 1005
	addi	r62, r15, 1				# 1005
	mv		r28, r61				# 1005
	mv		r15, r62				# 1005
	cmp		r10, r28
	ble		.b760				# 990
	b		.b761
.b749:
	mv		r61, r28				# 990
	addi	r62, r0, 0				# 990
	cmp		r10, r61
	ble		.b753				# 990
.b754:
	mv		r28, r4
	addi	r4, r4, 2				# 1032
	sw		r62, 0(r28)				# 1032
	sw		r61, 1(r28)				# 1032
	mv		r61, r28				# 1032
.b751:
	lw		r28, 1(r61)				# 2299
	lw		r62, 0(r61)				# 2299
	sw		r62, 7(r9)				# 2338
	mv		r61, r28				# 2358
	addis	r10, r0, 15
	ori		r10, r10, 16960				# 2388
	cmp		r10, r61
	ble		.b756				# 2388
	b		.b757
.b753:
	sub		r28, r61, r10				# 1005
	addi	r15, r62, 1				# 1005
	mv		r61, r28				# 1005
	mv		r62, r15				# 1005
	cmp		r10, r61
	ble		.b753				# 990
	b		.b754
.b742:
	mv		r28, r61				# 990
	addi	r62, r0, 0				# 990
	cmp		r10, r28
	ble		.b746				# 990
.b747:
	mv		r61, r4
	addi	r4, r4, 2				# 1032
	sw		r62, 0(r61)				# 1032
	sw		r28, 1(r61)				# 1032
	mv		r28, r61				# 1032
.b744:
	lw		r61, 1(r28)				# 2179
	lw		r62, 0(r28)				# 2179
	sw		r62, 8(r9)				# 2219
	mv		r28, r61				# 2239
	addis	r10, r0, 152
	ori		r10, r10, 38528				# 2269
	cmp		r10, r28
	ble		.b749				# 2269
	b		.b750
.b746:
	sub		r15, r28, r10				# 1005
	addi	r61, r62, 1				# 1005
	mv		r28, r15				# 1005
	mv		r62, r61				# 1005
	cmp		r10, r28
	ble		.b746				# 990
	b		.b747
.b735:
	mv		r61, r28				# 990
	addi	r15, r0, 0				# 990
	cmp		r10, r61
	ble		.b739				# 990
.b740:
	mv		r28, r4
	addi	r4, r4, 2				# 1032
	sw		r15, 0(r28)				# 1032
	sw		r61, 1(r28)				# 1032
	mv		r61, r28				# 1032
.b737:
	lw		r28, 1(r61)				# 2057
	lw		r62, 0(r61)				# 2057
	sw		r62, 9(r9)				# 2098
	mv		r61, r28				# 2118
	addis	r10, r0, 1525
	ori		r10, r10, 57600				# 2148
	cmp		r10, r61
	ble		.b742				# 2148
	b		.b743
.b739:
	sub		r28, r61, r10				# 1005
	addi	r62, r15, 1				# 1005
	mv		r61, r28				# 1005
	mv		r15, r62				# 1005
	cmp		r10, r61
	ble		.b739				# 990
	b		.b740
.b730:
	addi	r9, r0, 48				# 1921
	out		r9				# 946

	blr				# 0
.b728:
	mv		r28, r9				# 1883
	cmpi	r28, 0
	beq		.b730				# 1907
	b		.b731
	# main program end
_min_caml_end:
	flush
	halt
	halt
	halt
# === .data section ===
	.data