	.text
	sub		r0, r0, r0
	b		_min_caml_start
	# read_net_item.2793
read_net_item.2793:
.Entry@read_net_item.2793:
	sw		r1, 0(r3)				# 0
	addi	r61, r0, -1				# 1498
	in		r9				# 1498
	sw		r9, -1(r3)				# 1498
	cmpi	r9, -1
	beq		.b32361				# 12740
.b32362:
	addi	r1, r1, 1				# 12806
	mflr	r63
	sw		r63, -2(r3)
	addi	r3, r3, -3
	bl		read_net_item.2793
	addi	r3, r3, 3
	lw		r63, -2(r3)
	mtlr	r63				# 12798
	lw		r9, 0(r3)				# 12841
	lw		r61, -1(r3)				# 12841
	swx		r61, r9, r2				# 12841
	blr				# 12861
.b32361:
	addi	r9, r1, 1				# 12758
	mv		r2, r4
	add		r4, r4, r9				# 12758
	addi	r28, r9, -1				# 12758
	addi	r9, r0, 0				# 12758
	cmp		r9, r28
	ble		.b32365				# 12758
.b32363:
	blr				# 12758
.b32365:
	swx		r61, r9, r2				# 12758
	addi	r9, r9, 1				# 12758
	cmp		r9, r28
	ble		.b32365				# 12758
	b		.b32363
	# read_or_network.2795
read_or_network.2795:
.Entry@read_or_network.2795:
	sw		r1, 0(r3)				# 0
	addi	r1, r0, 0				# 12903
	mflr	r63
	sw		r63, -1(r3)
	addi	r3, r3, -2
	bl		read_net_item.2793
	addi	r3, r3, 2
	lw		r63, -1(r3)
	mtlr	r63				# 12903
	sw		r2, -1(r3)				# 12903
	lw		r9, 0(r2)				# 12934
	cmpi	r9, -1
	beq		.b32367				# 12934
.b32368:
	lw		r9, 0(r3)				# 13006
	addi	r1, r9, 1				# 13006
	mflr	r63
	sw		r63, -2(r3)
	addi	r3, r3, -3
	bl		read_or_network.2795
	addi	r3, r3, 3
	lw		r63, -2(r3)
	mtlr	r63				# 12998
	lw		r61, -1(r3)				# 13043
	lw		r9, 0(r3)				# 13043
	swx		r61, r9, r2				# 13043
	blr				# 13062
.b32367:
	lw		r9, 0(r3)				# 12959
	addi	r9, r9, 1				# 12959
	mv		r61, r4
	add		r4, r4, r9				# 12959
	addi	r28, r9, -1				# 12959
	addi	r9, r0, 0				# 12959
	cmp		r9, r28
	ble		.b32371				# 12959
.b32369:
	mv		r2, r61				# 12959
	blr				# 12959
.b32371:
	swx		r2, r9, r61				# 12959
	addi	r9, r9, 1				# 12959
	cmp		r9, r28
	ble		.b32371				# 12959
	b		.b32369
	# shadow_check_one_or_matrix.2936
shadow_check_one_or_matrix.2936:
.Entry@shadow_check_one_or_matrix.2936:
	addi	r7, r0, 0				# 24323
	lli		r30, objects.2523				# 24323
	lli		r13, light.2532				# 24323
	lli		r10, and_net.2541				# 24323
	lli		r54, solver_dist.2550				# 24323
	lli		r15, intersection_point.2559				# 24323
	lli		r25, v3.2617				# 24323
	lli		r51, consts.2619				# 24323
	lwx		r41, r2, r1				# 24323
	lw		r61, 0(r41)				# 24355
	cmpi	r61, -1
	beq		.b32374				# 24391
.b32375:
	cmpi	r61, 99
	beq		.b32377				# 24451
.b32378:
	lwx		r19, r30, r61				# 17557
	lw		r23, 0(r15)				# 17595
	lw		r9, 5(r19)				# 4475
	lw		r28, 0(r9)				# 17595
	fsub	r62, r23, r28				# 17586
	lw		r26, 1(r15)				# 17632
	lw		r28, 1(r9)				# 17632
	fsub	r29, r26, r28				# 17623
	lw		r46, 2(r15)				# 17669
	lw		r9, 2(r9)				# 17669
	fsub	r14, r46, r9				# 17660
	lwx		r37, r51, r61				# 17731
	lw		r39, 1(r19)				# 2994
	cmpi	r39, 1
	beq		.b32380				# 17793
.b32381:
	cmpi	r39, 2
	beq		.b32406				# 17874
.b32407:
	lw		r48, 0(r37)				# 17054
	fcmp	r48, r7
	beq		.b32410				# 3126
.b32411:
	lw		r9, 1(r37)				# 17128
	fmul	r9, r9, r62				# 17128
	lw		r61, 2(r37)				# 17148
	fmul	r61, r61, r29				# 17128
	fadd	r61, r9, r61				# 17128
	lw		r9, 3(r37)				# 17168
	fmul	r9, r9, r14				# 17128
	fadd	r57, r61, r9				# 17115
	fmul	r61, r62, r62				# 14374
	lw		r9, 4(r19)				# 3734
	lw		r28, 0(r9)				# 14374
	fmul	r28, r61, r28				# 14374
	fmul	r61, r29, r29				# 14400
	lw		r17, 1(r9)				# 14400
	fmul	r61, r61, r17				# 14374
	fadd	r28, r28, r61				# 14374
	fmul	r61, r14, r14				# 14426
	lw		r9, 2(r9)				# 14426
	fmul	r9, r61, r9				# 14374
	fadd	r9, r28, r9				# 14354
	lw		r61, 3(r19)				# 3553
	cmpi	r61, 0
	beq		.b32413				# 14456
.b32414:
	fmul	r28, r29, r14				# 14522
	lw		r61, 9(r19)				# 5989
	lw		r17, 0(r61)				# 14522
	fmul	r28, r28, r17				# 14503
	fadd	r28, r9, r28				# 14503
	fmul	r9, r14, r62				# 14556
	lw		r14, 1(r61)				# 14556
	fmul	r9, r9, r14				# 14503
	fadd	r14, r28, r9				# 14503
	fmul	r28, r62, r29				# 14590
	lw		r9, 2(r61)				# 14590
	fmul	r9, r28, r9				# 14503
	fadd	r9, r14, r9				# 14503
	cmpi	r39, 3
	beq		.b32416				# 17239
.b32417:
.b32415:
	fmul	r61, r57, r57				# 17295
	fmul	r9, r48, r9				# 17295
	fsub	r9, r61, r9				# 17287
	fcmp	r9, r7
	ble		.b32418				# 3156
.b32419:
	lw		r61, 6(r19)				# 3372
	cmpi	r61, 0
	beq		.b32421				# 17353
.b32422:
	fsqrt	r9, r9				# 227
	fadd	r61, r57, r9				# 17394
	lw		r9, 4(r37)				# 17394
	fmul	r9, r61, r9				# 17375
	sw		r9, 0(r54)				# 17375
	addi	r9, r0, 1				# 17498
	lw		r61, 0(r54)				# 24609
	addis	r9, r0, 48588
	ori		r9, r9, 52429				# 24609
	fcmp	r9, r61
	ble		.b32425				# 3096
.b32426:
	addi	r62, r0, 1				# 24006
	lwx		r9, r41, r62				# 24006
	cmpi	r9, -1
	beq		.b32429				# 24037
.b32430:
	lwx		r19, r10, r9				# 24078
	addi	r61, r0, 0				# 23266
	lwx		r57, r19, r61				# 23266
	cmpi	r57, -1
	beq		.b32433				# 23266
.b32434:
	lwx		r29, r30, r57				# 17557
	lw		r28, 5(r29)				# 4475
	lw		r9, 0(r28)				# 17595
	fsub	r53, r23, r9				# 17586
	lw		r9, 1(r28)				# 17632
	fsub	r48, r26, r9				# 17623
	lw		r9, 2(r28)				# 17669
	fsub	r17, r46, r9				# 17660
	lwx		r50, r51, r57				# 17731
	lw		r28, 1(r29)				# 2994
	cmpi	r28, 1
	beq		.b32436				# 17793
.b32437:
	cmpi	r28, 2
	beq		.b32462				# 17874
.b32463:
	lw		r14, 0(r50)				# 17054
	fcmp	r14, r7
	beq		.b32466				# 3126
.b32467:
	lw		r9, 1(r50)				# 17128
	fmul	r9, r9, r53				# 17128
	lw		r57, 2(r50)				# 17148
	fmul	r57, r57, r48				# 17128
	fadd	r9, r9, r57				# 17128
	lw		r57, 3(r50)				# 17168
	fmul	r57, r57, r17				# 17128
	fadd	r39, r9, r57				# 17115
	fmul	r9, r53, r53				# 14374
	lw		r57, 4(r29)				# 3734
	lw		r37, 0(r57)				# 14374
	fmul	r37, r9, r37				# 14374
	fmul	r9, r48, r48				# 14400
	lw		r12, 1(r57)				# 14400
	fmul	r9, r9, r12				# 14374
	fadd	r37, r37, r9				# 14374
	fmul	r12, r17, r17				# 14426
	lw		r9, 2(r57)				# 14426
	fmul	r9, r12, r9				# 14374
	fadd	r9, r37, r9				# 14354
	lw		r57, 3(r29)				# 3553
	cmpi	r57, 0
	beq		.b32469				# 14456
.b32470:
	fmul	r37, r48, r17				# 14522
	lw		r12, 9(r29)				# 5989
	lw		r57, 0(r12)				# 14522
	fmul	r57, r37, r57				# 14503
	fadd	r57, r9, r57				# 14503
	fmul	r9, r17, r53				# 14556
	lw		r37, 1(r12)				# 14556
	fmul	r9, r9, r37				# 14503
	fadd	r57, r57, r9				# 14503
	fmul	r9, r53, r48				# 14590
	lw		r37, 2(r12)				# 14590
	fmul	r9, r9, r37				# 14503
	fadd	r9, r57, r9				# 14503
	cmpi	r28, 3
	beq		.b32472				# 17239
.b32473:
.b32471:
	fmul	r28, r39, r39				# 17295
	fmul	r9, r14, r9				# 17295
	fsub	r28, r28, r9				# 17287
	fcmp	r28, r7
	ble		.b32474				# 3156
.b32475:
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32477				# 17353
.b32478:
	fsqrt	r9, r28				# 227
	fadd	r28, r39, r9				# 17394
	lw		r9, 4(r50)				# 17394
	fmul	r9, r28, r9				# 17375
	sw		r9, 0(r54)				# 17375
	addi	r9, r0, 1				# 17498
	lw		r28, 0(r54)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b32482				# 3096
.b32483:
	addi	r9, r0, 1				# 3096
.b32485:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r28, r28, r9				# 23516
	lw		r9, 0(r13)				# 23554
	fmul	r9, r9, r28				# 23554
	fadd	r12, r9, r23				# 23545
	lw		r9, 1(r13)				# 23613
	fmul	r9, r9, r28				# 23613
	fadd	r39, r9, r26				# 23604
	lw		r9, 2(r13)				# 23672
	fmul	r9, r9, r28				# 23672
	fadd	r14, r9, r46				# 23663
	addi	r28, r0, 0				# 23025
	lwx		r9, r19, r28				# 23025
	cmpi	r9, -1
	beq		.b32490				# 23052
.b32491:
	lwx		r50, r30, r9				# 23095
	lw		r37, 5(r50)				# 4475
	lw		r9, 0(r37)				# 22709
	fsub	r57, r12, r9				# 22700
	lw		r9, 1(r37)				# 22741
	fsub	r33, r39, r9				# 22732
	lw		r9, 2(r37)				# 22773
	fsub	r53, r14, r9				# 22764
	lw		r17, 1(r50)				# 2994
	cmpi	r17, 1
	beq		.b32493				# 22824
.b32494:
	cmpi	r17, 2
	beq		.b32506				# 22882
.b32507:
	fmul	r37, r57, r57				# 14374
	lw		r48, 4(r50)				# 3734
	lw		r9, 0(r48)				# 14374
	fmul	r37, r37, r9				# 14374
	fmul	r29, r33, r33				# 14400
	lw		r9, 1(r48)				# 14400
	fmul	r9, r29, r9				# 14374
	fadd	r9, r37, r9				# 14374
	fmul	r37, r53, r53				# 14426
	lw		r48, 2(r48)				# 14426
	fmul	r37, r37, r48				# 14374
	fadd	r9, r9, r37				# 14354
	lw		r37, 3(r50)				# 3553
	cmpi	r37, 0
	beq		.b32519				# 14456
.b32520:
	fmul	r48, r33, r53				# 14522
	lw		r37, 9(r50)				# 5989
	lw		r29, 0(r37)				# 14522
	fmul	r48, r48, r29				# 14503
	fadd	r29, r9, r48				# 14503
	fmul	r48, r53, r57				# 14556
	lw		r9, 1(r37)				# 14556
	fmul	r9, r48, r9				# 14503
	fadd	r48, r29, r9				# 14503
	fmul	r57, r57, r33				# 14590
	lw		r9, 2(r37)				# 14590
	fmul	r9, r57, r9				# 14503
	fadd	r9, r48, r9				# 14503
	cmpi	r17, 3
	beq		.b32522				# 22583
.b32523:
	lw		r57, 6(r50)				# 3372
	fcmp	r7, r9
	ble		.b32525				# 3186
.b32526:
	addi	r9, r0, 1				# 3186
	cmpi	r57, 0
	beq		.b32528				# 765
.b32529:
	cmpi	r9, 0
	beq		.b32530				# 775
.b32531:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b32536:
	addi	r61, r61, 1				# 23786
	lwx		r57, r19, r61				# 23266
	cmpi	r57, -1
	beq		.b32433				# 23266
	b		.b32434
.b32433:
	addi	r9, r0, 0				# 23304
.b32538:
	addi	r62, r62, 1				# 24216
	lwx		r9, r41, r62				# 24006
	cmpi	r9, -1
	beq		.b32429				# 24037
	b		.b32430
.b32429:
	addi	r9, r0, 0				# 24059
	addi	r9, r0, 0				# 24725
.b32542:
	addi	r1, r1, 1				# 24896
	lwx		r41, r2, r1				# 24323
	lw		r61, 0(r41)				# 24355
	cmpi	r61, -1
	beq		.b32374				# 24391
	b		.b32375
.b32374:
	addi	r2, r0, 0				# 24424
	blr				# 24424
.b32530:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b32534:
	addi	r28, r28, 1				# 23162
	lwx		r9, r19, r28				# 23025
	cmpi	r9, -1
	beq		.b32490				# 23052
	b		.b32491
.b32490:
	addi	r9, r0, 1				# 23074
	addi	r9, r0, 1				# 23769
	addi	r9, r0, 1				# 24196
.b32541:
	addi	r9, r0, 1				# 24710
	addi	r62, r0, 1				# 24006
	lwx		r9, r41, r62				# 24006
	cmpi	r9, -1
	beq		.b32546				# 24037
.b32547:
	lwx		r26, r10, r9				# 24078
	addi	r61, r0, 0				# 23266
	lwx		r9, r26, r61				# 23266
	cmpi	r9, -1
	beq		.b32550				# 23266
.b32551:
	lwx		r29, r30, r9				# 17557
	lw		r19, 0(r15)				# 17595
	lw		r57, 5(r29)				# 4475
	lw		r28, 0(r57)				# 17595
	fsub	r50, r19, r28				# 17586
	lw		r48, 1(r15)				# 17632
	lw		r28, 1(r57)				# 17632
	fsub	r17, r48, r28				# 17623
	lw		r37, 2(r15)				# 17669
	lw		r28, 2(r57)				# 17669
	fsub	r39, r37, r28				# 17660
	lwx		r23, r51, r9				# 17731
	lw		r53, 1(r29)				# 2994
	cmpi	r53, 1
	beq		.b32553				# 17793
.b32554:
	cmpi	r53, 2
	beq		.b32579				# 17874
.b32580:
	lw		r12, 0(r23)				# 17054
	fcmp	r12, r7
	beq		.b32583				# 3126
.b32584:
	lw		r9, 1(r23)				# 17128
	fmul	r9, r9, r50				# 17128
	lw		r28, 2(r23)				# 17148
	fmul	r28, r28, r17				# 17128
	fadd	r28, r9, r28				# 17128
	lw		r9, 3(r23)				# 17168
	fmul	r9, r9, r39				# 17128
	fadd	r57, r28, r9				# 17115
	fmul	r9, r50, r50				# 14374
	lw		r28, 4(r29)				# 3734
	lw		r46, 0(r28)				# 14374
	fmul	r46, r9, r46				# 14374
	fmul	r14, r17, r17				# 14400
	lw		r9, 1(r28)				# 14400
	fmul	r9, r14, r9				# 14374
	fadd	r46, r46, r9				# 14374
	fmul	r9, r39, r39				# 14426
	lw		r28, 2(r28)				# 14426
	fmul	r9, r9, r28				# 14374
	fadd	r9, r46, r9				# 14354
	lw		r28, 3(r29)				# 3553
	cmpi	r28, 0
	beq		.b32586				# 14456
.b32587:
	fmul	r46, r17, r39				# 14522
	lw		r28, 9(r29)				# 5989
	lw		r14, 0(r28)				# 14522
	fmul	r46, r46, r14				# 14503
	fadd	r14, r9, r46				# 14503
	fmul	r9, r39, r50				# 14556
	lw		r46, 1(r28)				# 14556
	fmul	r9, r9, r46				# 14503
	fadd	r46, r14, r9				# 14503
	fmul	r9, r50, r17				# 14590
	lw		r28, 2(r28)				# 14590
	fmul	r9, r9, r28				# 14503
	fadd	r9, r46, r9				# 14503
	cmpi	r53, 3
	beq		.b32589				# 17239
.b32590:
.b32588:
	fmul	r28, r57, r57				# 17295
	fmul	r9, r12, r9				# 17295
	fsub	r28, r28, r9				# 17287
	fcmp	r28, r7
	ble		.b32591				# 3156
.b32592:
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32594				# 17353
.b32595:
	fsqrt	r9, r28				# 227
	fadd	r28, r57, r9				# 17394
	lw		r9, 4(r23)				# 17394
	fmul	r9, r28, r9				# 17375
	sw		r9, 0(r54)				# 17375
	addi	r9, r0, 1				# 17498
	lw		r9, 0(r54)				# 23423
	addis	r28, r0, 48716
	ori		r28, r28, 52429				# 23476
	fcmp	r28, r9
	ble		.b32599				# 3096
.b32600:
	addi	r28, r0, 1				# 3096
.b32602:
	addis	r28, r0, 15395
	ori		r28, r28, 55050				# 23524
	fadd	r28, r9, r28				# 23516
	lw		r9, 0(r13)				# 23554
	fmul	r9, r9, r28				# 23554
	fadd	r57, r9, r19				# 23545
	lw		r9, 1(r13)				# 23613
	fmul	r9, r9, r28				# 23613
	fadd	r39, r9, r48				# 23604
	lw		r9, 2(r13)				# 23672
	fmul	r9, r9, r28				# 23672
	fadd	r48, r9, r37				# 23663
	addi	r28, r0, 0				# 23025
	lwx		r9, r26, r28				# 23025
	cmpi	r9, -1
	beq		.b32607				# 23052
.b32608:
	lwx		r14, r30, r9				# 23095
	lw		r9, 5(r14)				# 4475
	lw		r37, 0(r9)				# 22709
	fsub	r29, r57, r37				# 22700
	lw		r37, 1(r9)				# 22741
	fsub	r46, r39, r37				# 22732
	lw		r9, 2(r9)				# 22773
	fsub	r19, r48, r9				# 22764
	lw		r17, 1(r14)				# 2994
	cmpi	r17, 1
	beq		.b32610				# 22824
.b32611:
	cmpi	r17, 2
	beq		.b32623				# 22882
.b32624:
	fmul	r23, r29, r29				# 14374
	lw		r37, 4(r14)				# 3734
	lw		r9, 0(r37)				# 14374
	fmul	r50, r23, r9				# 14374
	fmul	r23, r46, r46				# 14400
	lw		r9, 1(r37)				# 14400
	fmul	r9, r23, r9				# 14374
	fadd	r9, r50, r9				# 14374
	fmul	r23, r19, r19				# 14426
	lw		r37, 2(r37)				# 14426
	fmul	r37, r23, r37				# 14374
	fadd	r9, r9, r37				# 14354
	lw		r37, 3(r14)				# 3553
	cmpi	r37, 0
	beq		.b32636				# 14456
.b32637:
	fmul	r23, r46, r19				# 14522
	lw		r50, 9(r14)				# 5989
	lw		r37, 0(r50)				# 14522
	fmul	r37, r23, r37				# 14503
	fadd	r37, r9, r37				# 14503
	fmul	r23, r19, r29				# 14556
	lw		r9, 1(r50)				# 14556
	fmul	r9, r23, r9				# 14503
	fadd	r37, r37, r9				# 14503
	fmul	r9, r29, r46				# 14590
	lw		r46, 2(r50)				# 14590
	fmul	r9, r9, r46				# 14503
	fadd	r9, r37, r9				# 14503
	cmpi	r17, 3
	beq		.b32639				# 22583
.b32640:
	lw		r37, 6(r14)				# 3372
	fcmp	r7, r9
	ble		.b32642				# 3186
.b32643:
	addi	r9, r0, 1				# 3186
	cmpi	r37, 0
	beq		.b32645				# 765
.b32646:
	cmpi	r9, 0
	beq		.b32647				# 775
.b32648:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b32653:
	addi	r61, r61, 1				# 23786
	lwx		r9, r26, r61				# 23266
	cmpi	r9, -1
	beq		.b32550				# 23266
	b		.b32551
.b32550:
	addi	r9, r0, 0				# 23304
.b32655:
	addi	r62, r62, 1				# 24216
	lwx		r9, r41, r62				# 24006
	cmpi	r9, -1
	beq		.b32546				# 24037
	b		.b32547
.b32546:
	addi	r9, r0, 0				# 24059
.b32657:
	addi	r1, r1, 1				# 24833
	lwx		r41, r2, r1				# 24323
	lw		r61, 0(r41)				# 24355
	cmpi	r61, -1
	beq		.b32374				# 24391
	b		.b32375
.b32647:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b32651:
	addi	r28, r28, 1				# 23162
	lwx		r9, r26, r28				# 23025
	cmpi	r9, -1
	beq		.b32607				# 23052
	b		.b32608
.b32607:
	addi	r9, r0, 1				# 23074
.b32654:
	addi	r9, r0, 1				# 23769
	addi	r9, r0, 1				# 24196
	addi	r2, r0, 1				# 24816
	blr				# 24816
.b32645:
	cmpi	r9, 0
	beq		.b32649				# 22625
.b32650:
	addi	r9, r0, 0				# 22625
	b		.b32651				# 23092
.b32649:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b32653				# 23722
.b32642:
	addi	r9, r0, 0				# 3186
	cmpi	r37, 0
	beq		.b32645				# 765
	b		.b32646
.b32639:
	addis	r37, r0, 16256				# 22604
	fsub	r9, r9, r37				# 22604
	lw		r37, 6(r14)				# 3372
	fcmp	r7, r9
	ble		.b32642				# 3186
	b		.b32643
.b32636:
	cmpi	r17, 3
	beq		.b32639				# 22583
	b		.b32640
.b32623:
	lw		r23, 4(r14)				# 4293
	lw		r9, 0(r23)				# 2037
	fmul	r37, r9, r29				# 2037
	lw		r9, 1(r23)				# 2052
	fmul	r9, r9, r46				# 2037
	fadd	r37, r37, r9				# 2037
	lw		r9, 2(r23)				# 2067
	fmul	r9, r9, r19				# 2037
	fadd	r9, r37, r9				# 22411
	lw		r37, 6(r14)				# 3372
	fcmp	r7, r9
	ble		.b32626				# 3186
.b32627:
	addi	r9, r0, 1				# 3186
	cmpi	r37, 0
	beq		.b32629				# 765
.b32630:
	cmpi	r9, 0
	beq		.b32631				# 775
.b32632:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b32653				# 23722
.b32631:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b32651				# 23092
.b32629:
	cmpi	r9, 0
	beq		.b32633				# 22459
.b32634:
	addi	r9, r0, 0				# 22459
	b		.b32651				# 23092
.b32633:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b32653				# 23722
.b32626:
	addi	r9, r0, 0				# 3186
	cmpi	r37, 0
	beq		.b32629				# 765
	b		.b32630
.b32610:
	fabs	r9, r29				# 322
	lw		r23, 4(r14)				# 3734
	lw		r37, 0(r23)				# 22178
	fcmp	r37, r9
	ble		.b32613				# 3096
.b32614:
	fabs	r37, r46				# 322
	lw		r9, 1(r23)				# 22224
	fcmp	r9, r37
	ble		.b32615				# 3096
.b32616:
	fabs	r9, r19				# 322
	lw		r37, 2(r23)				# 22261
	fcmp	r37, r9
	ble		.b32617				# 3096
.b32618:
	addi	r9, r0, 1				# 3096
	lw		r9, 6(r14)				# 3372
	cmpi	r9, 0
	beq		.b32651				# 23092
.b32652:
	addi	r9, r0, 0				# 23141
	b		.b32653				# 23722
.b32617:
	addi	r9, r0, 0				# 3096
	lw		r9, 6(r14)				# 3372
	cmpi	r9, 0
	beq		.b32621				# 22348
.b32622:
	addi	r9, r0, 0				# 22348
	b		.b32651				# 23092
.b32621:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b32653				# 23722
.b32615:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r14)				# 3372
	cmpi	r9, 0
	beq		.b32621				# 22348
	b		.b32622
.b32613:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r14)				# 3372
	cmpi	r9, 0
	beq		.b32621				# 22348
	b		.b32622
.b32599:
	addi	r28, r0, 0				# 3096
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32603				# 23849
.b32604:
	addi	r61, r61, 1				# 23885
	lwx		r9, r26, r61				# 23266
	cmpi	r9, -1
	beq		.b32550				# 23266
	b		.b32551
.b32603:
	addi	r9, r0, 0				# 23945
	b		.b32655				# 24173
.b32594:
	fsqrt	r9, r28				# 227
	fsub	r9, r57, r9				# 17458
	lw		r28, 4(r23)				# 17458
	fmul	r9, r9, r28				# 17439
	sw		r9, 0(r54)				# 17439
	addi	r9, r0, 1				# 17498
	lw		r9, 0(r54)				# 23423
	addis	r28, r0, 48716
	ori		r28, r28, 52429				# 23476
	fcmp	r28, r9
	ble		.b32599				# 3096
	b		.b32600
.b32591:
	addi	r9, r0, 0				# 17510
	lw		r9, 0(r54)				# 23423
	addi	r28, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32603				# 23849
	b		.b32604
.b32589:
	addis	r28, r0, 16256				# 17260
	fsub	r9, r9, r28				# 17260
	b		.b32588				# 17260
.b32586:
	cmpi	r53, 3
	beq		.b32589				# 17239
	b		.b32590
.b32583:
	addi	r9, r0, 0				# 17102
	lw		r9, 0(r54)				# 23423
	addi	r28, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32603				# 23849
	b		.b32604
.b32579:
	lw		r9, 0(r23)				# 16870
	fcmp	r7, r9
	ble		.b32581				# 3186
.b32582:
	lw		r9, 1(r23)				# 16924
	fmul	r28, r9, r50				# 16924
	lw		r9, 2(r23)				# 16944
	fmul	r9, r9, r17				# 16924
	fadd	r28, r28, r9				# 16924
	lw		r9, 3(r23)				# 16964
	fmul	r9, r9, r39				# 16924
	fadd	r9, r28, r9				# 16899
	sw		r9, 0(r54)				# 16899
	addi	r9, r0, 1				# 16986
	lw		r9, 0(r54)				# 23423
	addis	r28, r0, 48716
	ori		r28, r28, 52429				# 23476
	fcmp	r28, r9
	ble		.b32599				# 3096
	b		.b32600
.b32581:
	addi	r9, r0, 0				# 16998
	lw		r9, 0(r54)				# 23423
	addi	r28, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32603				# 23849
	b		.b32604
.b32553:
	lw		r9, 0(r23)				# 15996
	fsub	r9, r9, r50				# 15995
	lw		r46, 1(r23)				# 15995
	fmul	r57, r9, r46				# 15986
	lw		r14, 1(r25)				# 16056
	fmul	r9, r57, r14				# 16056
	fadd	r9, r9, r17				# 16050
	fabs	r28, r9				# 322
	lw		r33, 4(r29)				# 3920
	lw		r9, 1(r33)				# 16043
	fcmp	r9, r28
	ble		.b32556				# 3096
.b32557:
	lw		r28, 2(r25)				# 16117
	fmul	r28, r57, r28				# 16117
	fadd	r28, r28, r39				# 16111
	fabs	r12, r28				# 322
	lw		r28, 2(r33)				# 16104
	fcmp	r28, r12
	ble		.b32558				# 3096
.b32559:
	fcmp	r46, r7
	beq		.b32560				# 3126
.b32561:
	addi	r28, r0, 1				# 16157
.b32563:
	sw		r57, 0(r54)				# 16226
	addi	r9, r0, 1				# 16249
	lw		r9, 0(r54)				# 23423
	addis	r28, r0, 48716
	ori		r28, r28, 52429				# 23476
	fcmp	r28, r9
	ble		.b32599				# 3096
	b		.b32600
.b32560:
	addi	r28, r0, 0				# 16157
.b32562:
	lw		r28, 2(r23)				# 16269
	fsub	r28, r28, r17				# 16268
	lw		r53, 3(r23)				# 16268
	fmul	r12, r28, r53				# 16259
	lw		r46, 0(r25)				# 16330
	fmul	r28, r12, r46				# 16330
	fadd	r28, r28, r50				# 16324
	fabs	r28, r28				# 322
	lw		r57, 0(r33)				# 16317
	fcmp	r57, r28
	ble		.b32565				# 3096
.b32566:
	lw		r28, 2(r25)				# 16391
	fmul	r28, r12, r28				# 16391
	fadd	r28, r28, r39				# 16385
	fabs	r28, r28				# 322
	lw		r33, 2(r33)				# 16378
	fcmp	r33, r28
	ble		.b32567				# 3096
.b32568:
	fcmp	r53, r7
	beq		.b32569				# 3126
.b32570:
	addi	r28, r0, 1				# 16431
.b32572:
	sw		r12, 0(r54)				# 16500
	addi	r9, r0, 2				# 16523
	lw		r9, 0(r54)				# 23423
	addis	r28, r0, 48716
	ori		r28, r28, 52429				# 23476
	fcmp	r28, r9
	ble		.b32599				# 3096
	b		.b32600
.b32569:
	addi	r28, r0, 0				# 16431
.b32571:
	lw		r28, 4(r23)				# 16543
	fsub	r39, r28, r39				# 16542
	lw		r28, 5(r23)				# 16542
	fmul	r23, r39, r28				# 16533
	fmul	r46, r23, r46				# 16604
	fadd	r46, r46, r50				# 16598
	fabs	r46, r46				# 322
	fcmp	r57, r46
	ble		.b32573				# 3096
.b32574:
	fmul	r57, r23, r14				# 16665
	fadd	r57, r57, r17				# 16659
	fabs	r57, r57				# 322
	fcmp	r9, r57
	ble		.b32575				# 3096
.b32576:
	fcmp	r28, r7
	beq		.b32577				# 3126
.b32578:
	sw		r23, 0(r54)				# 16774
	addi	r9, r0, 3				# 16797
	lw		r9, 0(r54)				# 23423
	addis	r28, r0, 48716
	ori		r28, r28, 52429				# 23476
	fcmp	r28, r9
	ble		.b32599				# 3096
	b		.b32600
.b32577:
	addi	r9, r0, 0				# 16811
	lw		r9, 0(r54)				# 23423
	addi	r28, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32603				# 23849
	b		.b32604
.b32575:
	addi	r9, r0, 0				# 16811
	lw		r9, 0(r54)				# 23423
	addi	r28, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32603				# 23849
	b		.b32604
.b32573:
	addi	r9, r0, 0				# 16811
	lw		r9, 0(r54)				# 23423
	addi	r28, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32603				# 23849
	b		.b32604
.b32567:
	addi	r28, r0, 0				# 16467
	b		.b32571				# 16306
.b32565:
	addi	r28, r0, 0				# 16482
	b		.b32571				# 16306
.b32558:
	addi	r28, r0, 0				# 16193
	b		.b32562				# 16033
.b32556:
	addi	r28, r0, 0				# 16208
	b		.b32562				# 16033
.b32528:
	cmpi	r9, 0
	beq		.b32532				# 22625
.b32533:
	addi	r9, r0, 0				# 22625
	b		.b32534				# 23092
.b32532:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b32536				# 23722
.b32525:
	addi	r9, r0, 0				# 3186
	cmpi	r57, 0
	beq		.b32528				# 765
	b		.b32529
.b32522:
	addis	r57, r0, 16256				# 22604
	fsub	r9, r9, r57				# 22604
	lw		r57, 6(r50)				# 3372
	fcmp	r7, r9
	ble		.b32525				# 3186
	b		.b32526
.b32519:
	cmpi	r17, 3
	beq		.b32522				# 22583
	b		.b32523
.b32506:
	lw		r37, 4(r50)				# 4293
	lw		r9, 0(r37)				# 2037
	fmul	r57, r9, r57				# 2037
	lw		r9, 1(r37)				# 2052
	fmul	r9, r9, r33				# 2037
	fadd	r57, r57, r9				# 2037
	lw		r9, 2(r37)				# 2067
	fmul	r9, r9, r53				# 2037
	fadd	r9, r57, r9				# 22411
	lw		r57, 6(r50)				# 3372
	fcmp	r7, r9
	ble		.b32509				# 3186
.b32510:
	addi	r9, r0, 1				# 3186
	cmpi	r57, 0
	beq		.b32512				# 765
.b32513:
	cmpi	r9, 0
	beq		.b32514				# 775
.b32515:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b32536				# 23722
.b32514:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b32534				# 23092
.b32512:
	cmpi	r9, 0
	beq		.b32516				# 22459
.b32517:
	addi	r9, r0, 0				# 22459
	b		.b32534				# 23092
.b32516:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b32536				# 23722
.b32509:
	addi	r9, r0, 0				# 3186
	cmpi	r57, 0
	beq		.b32512				# 765
	b		.b32513
.b32493:
	fabs	r57, r57				# 322
	lw		r37, 4(r50)				# 3734
	lw		r9, 0(r37)				# 22178
	fcmp	r9, r57
	ble		.b32496				# 3096
.b32497:
	fabs	r57, r33				# 322
	lw		r9, 1(r37)				# 22224
	fcmp	r9, r57
	ble		.b32498				# 3096
.b32499:
	fabs	r9, r53				# 322
	lw		r57, 2(r37)				# 22261
	fcmp	r57, r9
	ble		.b32500				# 3096
.b32501:
	addi	r9, r0, 1				# 3096
	lw		r9, 6(r50)				# 3372
	cmpi	r9, 0
	beq		.b32534				# 23092
.b32535:
	addi	r9, r0, 0				# 23141
	b		.b32536				# 23722
.b32500:
	addi	r9, r0, 0				# 3096
	lw		r9, 6(r50)				# 3372
	cmpi	r9, 0
	beq		.b32504				# 22348
.b32505:
	addi	r9, r0, 0				# 22348
	b		.b32534				# 23092
.b32504:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b32536				# 23722
.b32498:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r50)				# 3372
	cmpi	r9, 0
	beq		.b32504				# 22348
	b		.b32505
.b32496:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r50)				# 3372
	cmpi	r9, 0
	beq		.b32504				# 22348
	b		.b32505
.b32482:
	addi	r9, r0, 0				# 3096
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32486				# 23849
.b32487:
	addi	r61, r61, 1				# 23885
	lwx		r57, r19, r61				# 23266
	cmpi	r57, -1
	beq		.b32433				# 23266
	b		.b32434
.b32486:
	addi	r9, r0, 0				# 23945
	b		.b32538				# 24173
.b32477:
	fsqrt	r9, r28				# 227
	fsub	r9, r39, r9				# 17458
	lw		r28, 4(r50)				# 17458
	fmul	r9, r9, r28				# 17439
	sw		r9, 0(r54)				# 17439
	addi	r9, r0, 1				# 17498
	lw		r28, 0(r54)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b32482				# 3096
	b		.b32483
.b32474:
	addi	r9, r0, 0				# 17510
	lw		r28, 0(r54)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32486				# 23849
	b		.b32487
.b32472:
	addis	r28, r0, 16256				# 17260
	fsub	r9, r9, r28				# 17260
	b		.b32471				# 17260
.b32469:
	cmpi	r28, 3
	beq		.b32472				# 17239
	b		.b32473
.b32466:
	addi	r9, r0, 0				# 17102
	lw		r28, 0(r54)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32486				# 23849
	b		.b32487
.b32462:
	lw		r9, 0(r50)				# 16870
	fcmp	r7, r9
	ble		.b32464				# 3186
.b32465:
	lw		r9, 1(r50)				# 16924
	fmul	r9, r9, r53				# 16924
	lw		r28, 2(r50)				# 16944
	fmul	r28, r28, r48				# 16924
	fadd	r28, r9, r28				# 16924
	lw		r9, 3(r50)				# 16964
	fmul	r9, r9, r17				# 16924
	fadd	r9, r28, r9				# 16899
	sw		r9, 0(r54)				# 16899
	addi	r9, r0, 1				# 16986
	lw		r28, 0(r54)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b32482				# 3096
	b		.b32483
.b32464:
	addi	r9, r0, 0				# 16998
	lw		r28, 0(r54)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32486				# 23849
	b		.b32487
.b32436:
	lw		r9, 0(r50)				# 15996
	fsub	r9, r9, r53				# 15995
	lw		r39, 1(r50)				# 15995
	fmul	r28, r9, r39				# 15986
	lw		r9, 1(r25)				# 16056
	fmul	r57, r28, r9				# 16056
	fadd	r57, r57, r48				# 16050
	fabs	r57, r57				# 322
	lw		r33, 4(r29)				# 3920
	lw		r37, 1(r33)				# 16043
	fcmp	r37, r57
	ble		.b32439				# 3096
.b32440:
	lw		r57, 2(r25)				# 16117
	fmul	r57, r28, r57				# 16117
	fadd	r57, r57, r17				# 16111
	fabs	r14, r57				# 322
	lw		r57, 2(r33)				# 16104
	fcmp	r57, r14
	ble		.b32441				# 3096
.b32442:
	fcmp	r39, r7
	beq		.b32443				# 3126
.b32444:
	addi	r57, r0, 1				# 16157
.b32446:
	sw		r28, 0(r54)				# 16226
	addi	r9, r0, 1				# 16249
	lw		r28, 0(r54)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b32482				# 3096
	b		.b32483
.b32443:
	addi	r57, r0, 0				# 16157
.b32445:
	lw		r28, 2(r50)				# 16269
	fsub	r28, r28, r48				# 16268
	lw		r39, 3(r50)				# 16268
	fmul	r14, r28, r39				# 16259
	lw		r12, 0(r25)				# 16330
	fmul	r28, r14, r12				# 16330
	fadd	r28, r28, r53				# 16324
	fabs	r28, r28				# 322
	lw		r42, 0(r33)				# 16317
	fcmp	r42, r28
	ble		.b32448				# 3096
.b32449:
	lw		r28, 2(r25)				# 16391
	fmul	r28, r14, r28				# 16391
	fadd	r28, r28, r17				# 16385
	fabs	r28, r28				# 322
	lw		r57, 2(r33)				# 16378
	fcmp	r57, r28
	ble		.b32450				# 3096
.b32451:
	fcmp	r39, r7
	beq		.b32452				# 3126
.b32453:
	addi	r28, r0, 1				# 16431
.b32455:
	sw		r14, 0(r54)				# 16500
	addi	r9, r0, 2				# 16523
	lw		r28, 0(r54)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b32482				# 3096
	b		.b32483
.b32452:
	addi	r28, r0, 0				# 16431
.b32454:
	lw		r28, 4(r50)				# 16543
	fsub	r28, r28, r17				# 16542
	lw		r57, 5(r50)				# 16542
	fmul	r39, r28, r57				# 16533
	fmul	r28, r39, r12				# 16604
	fadd	r28, r28, r53				# 16598
	fabs	r28, r28				# 322
	fcmp	r42, r28
	ble		.b32456				# 3096
.b32457:
	fmul	r9, r39, r9				# 16665
	fadd	r9, r9, r48				# 16659
	fabs	r9, r9				# 322
	fcmp	r37, r9
	ble		.b32458				# 3096
.b32459:
	fcmp	r57, r7
	beq		.b32460				# 3126
.b32461:
	sw		r39, 0(r54)				# 16774
	addi	r9, r0, 3				# 16797
	lw		r28, 0(r54)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b32482				# 3096
	b		.b32483
.b32460:
	addi	r9, r0, 0				# 16811
	lw		r28, 0(r54)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32486				# 23849
	b		.b32487
.b32458:
	addi	r9, r0, 0				# 16811
	lw		r28, 0(r54)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32486				# 23849
	b		.b32487
.b32456:
	addi	r9, r0, 0				# 16811
	lw		r28, 0(r54)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b32486				# 23849
	b		.b32487
.b32450:
	addi	r28, r0, 0				# 16467
	b		.b32454				# 16306
.b32448:
	addi	r28, r0, 0				# 16482
	b		.b32454				# 16306
.b32441:
	addi	r57, r0, 0				# 16193
	b		.b32445				# 16033
.b32439:
	addi	r57, r0, 0				# 16208
	b		.b32445				# 16033
.b32425:
	addi	r9, r0, 0				# 24739
	b		.b32542				# 24441
.b32421:
	fsqrt	r9, r9				# 227
	fsub	r9, r57, r9				# 17458
	lw		r61, 4(r37)				# 17458
	fmul	r9, r9, r61				# 17439
	sw		r9, 0(r54)				# 17439
	addi	r9, r0, 1				# 17498
	lw		r61, 0(r54)				# 24609
	addis	r9, r0, 48588
	ori		r9, r9, 52429				# 24609
	fcmp	r9, r61
	ble		.b32425				# 3096
	b		.b32426
.b32418:
	addi	r9, r0, 0				# 17510
	addi	r9, r0, 0				# 24751
	b		.b32542				# 24441
.b32416:
	addis	r61, r0, 16256				# 17260
	fsub	r9, r9, r61				# 17260
	b		.b32415				# 17260
.b32413:
	cmpi	r39, 3
	beq		.b32416				# 17239
	b		.b32417
.b32410:
	addi	r9, r0, 0				# 17102
	addi	r9, r0, 0				# 24751
	b		.b32542				# 24441
.b32406:
	lw		r9, 0(r37)				# 16870
	fcmp	r7, r9
	ble		.b32408				# 3186
.b32409:
	lw		r9, 1(r37)				# 16924
	fmul	r61, r9, r62				# 16924
	lw		r9, 2(r37)				# 16944
	fmul	r9, r9, r29				# 16924
	fadd	r61, r61, r9				# 16924
	lw		r9, 3(r37)				# 16964
	fmul	r9, r9, r14				# 16924
	fadd	r9, r61, r9				# 16899
	sw		r9, 0(r54)				# 16899
	addi	r9, r0, 1				# 16986
	lw		r61, 0(r54)				# 24609
	addis	r9, r0, 48588
	ori		r9, r9, 52429				# 24609
	fcmp	r9, r61
	ble		.b32425				# 3096
	b		.b32426
.b32408:
	addi	r9, r0, 0				# 16998
	addi	r9, r0, 0				# 24751
	b		.b32542				# 24441
.b32380:
	lw		r9, 0(r37)				# 15996
	fsub	r9, r9, r62				# 15995
	lw		r28, 1(r37)				# 15995
	fmul	r39, r9, r28				# 15986
	lw		r61, 1(r25)				# 16056
	fmul	r9, r39, r61				# 16056
	fadd	r9, r9, r29				# 16050
	fabs	r9, r9				# 322
	lw		r48, 4(r19)				# 3920
	lw		r17, 1(r48)				# 16043
	fcmp	r17, r9
	ble		.b32383				# 3096
.b32384:
	lw		r9, 2(r25)				# 16117
	fmul	r9, r39, r9				# 16117
	fadd	r9, r9, r14				# 16111
	fabs	r9, r9				# 322
	lw		r57, 2(r48)				# 16104
	fcmp	r57, r9
	ble		.b32385				# 3096
.b32386:
	fcmp	r28, r7
	beq		.b32387				# 3126
.b32388:
	addi	r9, r0, 1				# 16157
.b32390:
	sw		r39, 0(r54)				# 16226
	addi	r9, r0, 1				# 16249
	lw		r61, 0(r54)				# 24609
	addis	r9, r0, 48588
	ori		r9, r9, 52429				# 24609
	fcmp	r9, r61
	ble		.b32425				# 3096
	b		.b32426
.b32387:
	addi	r9, r0, 0				# 16157
.b32389:
	lw		r9, 2(r37)				# 16269
	fsub	r9, r9, r29				# 16268
	lw		r19, 3(r37)				# 16268
	fmul	r9, r9, r19				# 16259
	lw		r39, 0(r25)				# 16330
	fmul	r28, r9, r39				# 16330
	fadd	r28, r28, r62				# 16324
	fabs	r28, r28				# 322
	lw		r57, 0(r48)				# 16317
	fcmp	r57, r28
	ble		.b32392				# 3096
.b32393:
	lw		r28, 2(r25)				# 16391
	fmul	r28, r9, r28				# 16391
	fadd	r28, r28, r14				# 16385
	fabs	r28, r28				# 322
	lw		r48, 2(r48)				# 16378
	fcmp	r48, r28
	ble		.b32394				# 3096
.b32395:
	fcmp	r19, r7
	beq		.b32396				# 3126
.b32397:
	addi	r28, r0, 1				# 16431
.b32399:
	sw		r9, 0(r54)				# 16500
	addi	r9, r0, 2				# 16523
	lw		r61, 0(r54)				# 24609
	addis	r9, r0, 48588
	ori		r9, r9, 52429				# 24609
	fcmp	r9, r61
	ble		.b32425				# 3096
	b		.b32426
.b32396:
	addi	r28, r0, 0				# 16431
.b32398:
	lw		r9, 4(r37)				# 16543
	fsub	r28, r9, r14				# 16542
	lw		r9, 5(r37)				# 16542
	fmul	r37, r28, r9				# 16533
	fmul	r28, r37, r39				# 16604
	fadd	r28, r28, r62				# 16598
	fabs	r28, r28				# 322
	fcmp	r57, r28
	ble		.b32400				# 3096
.b32401:
	fmul	r61, r37, r61				# 16665
	fadd	r61, r61, r29				# 16659
	fabs	r61, r61				# 322
	fcmp	r17, r61
	ble		.b32402				# 3096
.b32403:
	fcmp	r9, r7
	beq		.b32404				# 3126
.b32405:
	sw		r37, 0(r54)				# 16774
	addi	r9, r0, 3				# 16797
	lw		r61, 0(r54)				# 24609
	addis	r9, r0, 48588
	ori		r9, r9, 52429				# 24609
	fcmp	r9, r61
	ble		.b32425				# 3096
	b		.b32426
.b32404:
	addi	r9, r0, 0				# 16811
	addi	r9, r0, 0				# 24751
	b		.b32542				# 24441
.b32402:
	addi	r9, r0, 0				# 16811
	addi	r9, r0, 0				# 24751
	b		.b32542				# 24441
.b32400:
	addi	r9, r0, 0				# 16811
	addi	r9, r0, 0				# 24751
	b		.b32542				# 24441
.b32394:
	addi	r28, r0, 0				# 16467
	b		.b32398				# 16306
.b32392:
	addi	r28, r0, 0				# 16482
	b		.b32398				# 16306
.b32385:
	addi	r9, r0, 0				# 16193
	b		.b32389				# 16033
.b32383:
	addi	r9, r0, 0				# 16208
	b		.b32389				# 16033
.b32377:
	addi	r9, r0, 1				# 24483
	addi	r62, r0, 1				# 24006
	lwx		r9, r41, r62				# 24006
	cmpi	r9, -1
	beq		.b32546				# 24037
	b		.b32547
	# judge_intersection_fast.2965
judge_intersection_fast.2965:
.Entry@judge_intersection_fast.2965:
	addi	r37, r0, 0				# 28622
	lli		r46, objects.2523				# 28622
	lli		r7, and_net.2541				# 28622
	lli		r61, or_net.2547				# 28622
	lli		r57, solver_dist.2550				# 28622
	lli		r41, intsec_rectside.2553				# 28622
	addis	r9, r0, 20078
	ori		r9, r9, 27432				# 28622
	lli		r54, tmin.2556				# 28622
	lli		r13, intersection_point.2559				# 28622
	lli		r25, intersected_object_id.2562				# 28622
	lli		r30, startp_fast.2589				# 28622
	sw		r9, 0(r54)				# 28622
	lw		r26, 0(r61)				# 28652
	addi	r28, r0, 0				# 28095
	lwx		r23, r26, r28				# 28095
	lw		r9, 0(r23)				# 28128
	cmpi	r9, -1
	beq		.b32659				# 28164
.b32662:
	cmpi	r9, 99
	beq		.b32664				# 28213
.b32665:
	lwx		r10, r46, r9				# 18636
	lw		r61, 10(r10)				# 6561
	lw		r48, 0(r61)				# 18698
	lw		r17, 1(r61)				# 18723
	lw		r14, 2(r61)				# 18748
	lw		r51, 1(r1)				# 8141
	lwx		r50, r51, r9				# 18807
	lw		r9, 1(r10)				# 2994
	cmpi	r9, 1
	beq		.b32771				# 18869
.b32772:
	cmpi	r9, 2
	beq		.b32797				# 18950
.b32798:
	lw		r15, 0(r50)				# 18204
	fcmp	r15, r37
	beq		.b32801				# 3126
.b32802:
	lw		r9, 1(r50)				# 18278
	fmul	r9, r9, r48				# 18278
	lw		r62, 2(r50)				# 18298
	fmul	r62, r62, r17				# 18278
	fadd	r62, r9, r62				# 18278
	lw		r9, 3(r50)				# 18318
	fmul	r9, r9, r14				# 18278
	fadd	r62, r62, r9				# 18265
	lw		r61, 3(r61)				# 18342
	fmul	r9, r62, r62				# 18377
	fmul	r61, r15, r61				# 18377
	fsub	r61, r9, r61				# 18369
	fcmp	r61, r37
	ble		.b32803				# 3156
.b32804:
	lw		r9, 6(r10)				# 3372
	cmpi	r9, 0
	beq		.b32806				# 18435
.b32807:
	fsqrt	r9, r61				# 227
	fadd	r9, r62, r9				# 18476
	lw		r61, 4(r50)				# 18476
	fmul	r9, r9, r61				# 18457
	sw		r9, 0(r57)				# 18457
	addi	r9, r0, 1				# 18580
	lw		r9, 0(r57)				# 28381
	lw		r61, 0(r54)				# 28414
	fcmp	r61, r9
	ble		.b32663				# 3096
.b32811:
	addi	r62, r0, 1				# 27829
	lwx		r9, r23, r62				# 27829
	cmpi	r9, -1
	beq		.b32663				# 27860
.b32814:
	lwx		r39, r7, r9				# 27885
	addi	r61, r0, 0				# 26885
	lw		r14, 0(r1)				# 8078
	lwx		r48, r39, r61				# 26915
	cmpi	r48, -1
	beq		.b32815				# 26952
.b32818:
	lwx		r12, r46, r48				# 18636
	lw		r10, 10(r12)				# 6561
	lw		r33, 0(r10)				# 18698
	lw		r56, 1(r10)				# 18723
	lw		r15, 2(r10)				# 18748
	lwx		r19, r51, r48				# 18807
	lw		r9, 1(r12)				# 2994
	cmpi	r9, 1
	beq		.b32820				# 18869
.b32821:
	cmpi	r9, 2
	beq		.b32846				# 18950
.b32847:
	lw		r17, 0(r19)				# 18204
	fcmp	r17, r37
	beq		.b32850				# 3126
.b32851:
	lw		r9, 1(r19)				# 18278
	fmul	r29, r9, r33				# 18278
	lw		r9, 2(r19)				# 18298
	fmul	r9, r9, r56				# 18278
	fadd	r9, r29, r9				# 18278
	lw		r29, 3(r19)				# 18318
	fmul	r15, r29, r15				# 18278
	fadd	r15, r9, r15				# 18265
	lw		r9, 3(r10)				# 18342
	fmul	r10, r15, r15				# 18377
	fmul	r9, r17, r9				# 18377
	fsub	r9, r10, r9				# 18369
	fcmp	r9, r37
	ble		.b32852				# 3156
.b32853:
	lw		r10, 6(r12)				# 3372
	cmpi	r10, 0
	beq		.b32855				# 18435
.b32856:
	fsqrt	r9, r9				# 227
	fadd	r15, r15, r9				# 18476
	lw		r9, 4(r19)				# 18476
	fmul	r9, r15, r9				# 18457
	sw		r9, 0(r57)				# 18457
	addi	r29, r0, 1				# 18580
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r37
	ble		.b32861				# 3096
.b32863:
	lw		r9, 0(r54)				# 27125
	fcmp	r9, r15
	ble		.b32861				# 3096
.b32865:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 27169
	fadd	r53, r15, r9				# 27161
	lw		r9, 0(r14)				# 27198
	fmul	r9, r9, r53				# 27198
	lw		r15, 0(r30)				# 27198
	fadd	r50, r9, r15				# 27189
	lw		r9, 1(r14)				# 27247
	fmul	r9, r9, r53				# 27247
	lw		r15, 1(r30)				# 27247
	fadd	r33, r9, r15				# 27238
	lw		r9, 2(r14)				# 27296
	fmul	r9, r9, r53				# 27296
	lw		r15, 2(r30)				# 27296
	fadd	r19, r9, r15				# 27287
	addi	r15, r0, 0				# 23025
	lwx		r9, r39, r15				# 23025
	cmpi	r9, -1
	beq		.b32868				# 23052
.b32869:
	lwx		r56, r46, r9				# 23095
	lw		r10, 5(r56)				# 4475
	lw		r9, 0(r10)				# 22709
	fsub	r12, r50, r9				# 22700
	lw		r9, 1(r10)				# 22741
	fsub	r36, r33, r9				# 22732
	lw		r9, 2(r10)				# 22773
	fsub	r14, r19, r9				# 22764
	lw		r27, 1(r56)				# 2994
	cmpi	r27, 1
	beq		.b32871				# 22824
.b32872:
	cmpi	r27, 2
	beq		.b32884				# 22882
.b32885:
	fmul	r10, r12, r12				# 14374
	lw		r42, 4(r56)				# 3734
	lw		r9, 0(r42)				# 14374
	fmul	r9, r10, r9				# 14374
	fmul	r17, r36, r36				# 14400
	lw		r10, 1(r42)				# 14400
	fmul	r10, r17, r10				# 14374
	fadd	r10, r9, r10				# 14374
	fmul	r17, r14, r14				# 14426
	lw		r9, 2(r42)				# 14426
	fmul	r9, r17, r9				# 14374
	fadd	r9, r10, r9				# 14354
	lw		r10, 3(r56)				# 3553
	cmpi	r10, 0
	beq		.b32897				# 14456
.b32898:
	fmul	r42, r36, r14				# 14522
	lw		r17, 9(r56)				# 5989
	lw		r10, 0(r17)				# 14522
	fmul	r10, r42, r10				# 14503
	fadd	r42, r9, r10				# 14503
	fmul	r9, r14, r12				# 14556
	lw		r10, 1(r17)				# 14556
	fmul	r9, r9, r10				# 14503
	fadd	r10, r42, r9				# 14503
	fmul	r14, r12, r36				# 14590
	lw		r9, 2(r17)				# 14590
	fmul	r9, r14, r9				# 14503
	fadd	r9, r10, r9				# 14503
	cmpi	r27, 3
	beq		.b32900				# 22583
.b32901:
	lw		r10, 6(r56)				# 3372
	fcmp	r37, r9
	ble		.b32903				# 3186
.b32904:
	addi	r9, r0, 1				# 3186
	cmpi	r10, 0
	beq		.b32906				# 765
.b32907:
	cmpi	r9, 0
	beq		.b32908				# 775
.b32909:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b32861:
	addi	r61, r61, 1				# 27573
	lw		r14, 0(r1)				# 8078
	lwx		r48, r39, r61				# 26915
	cmpi	r48, -1
	beq		.b32815				# 26952
	b		.b32818
.b32815:
	addi	r62, r62, 1				# 27971
	lwx		r9, r23, r62				# 27829
	cmpi	r9, -1
	beq		.b32663				# 27860
	b		.b32814
.b32663:
	addi	r28, r28, 1				# 28519
	lwx		r23, r26, r28				# 28095
	lw		r9, 0(r23)				# 28128
	cmpi	r9, -1
	beq		.b32659				# 28164
	b		.b32662
.b32659:
	lw		r61, 0(r54)				# 28698
	addis	r9, r0, 48588
	ori		r9, r9, 52429				# 28725
	fcmp	r61, r9
	ble		.b32916				# 3096
.b32917:
	addis	r9, r0, 19646
	ori		r9, r9, 48160				# 28751
	fcmp	r9, r61
	ble		.b32918				# 3096
.b32919:
	addi	r2, r0, 1				# 3096
	blr				# 3096
.b32918:
	addi	r2, r0, 0				# 3096
	blr				# 3096
.b32916:
	addi	r2, r0, 0				# 28779
	blr				# 28779
.b32908:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b32912:
	addi	r15, r15, 1				# 23162
	lwx		r9, r39, r15				# 23025
	cmpi	r9, -1
	beq		.b32868				# 23052
	b		.b32869
.b32868:
	addi	r9, r0, 1				# 23074
.b32915:
	sw		r53, 0(r54)				# 27393
	sw		r50, 0(r13)				# 1162
	sw		r33, 1(r13)				# 1162
	sw		r19, 2(r13)				# 27393
	sw		r48, 0(r25)				# 27393
	sw		r29, 0(r41)				# 27485
	b		.b32861				# 27485
.b32906:
	cmpi	r9, 0
	beq		.b32910				# 22625
.b32911:
	addi	r9, r0, 0				# 22625
	b		.b32912				# 23092
.b32910:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b32861				# 27336
.b32903:
	addi	r9, r0, 0				# 3186
	cmpi	r10, 0
	beq		.b32906				# 765
	b		.b32907
.b32900:
	addis	r10, r0, 16256				# 22604
	fsub	r9, r9, r10				# 22604
	lw		r10, 6(r56)				# 3372
	fcmp	r37, r9
	ble		.b32903				# 3186
	b		.b32904
.b32897:
	cmpi	r27, 3
	beq		.b32900				# 22583
	b		.b32901
.b32884:
	lw		r9, 4(r56)				# 4293
	lw		r10, 0(r9)				# 2037
	fmul	r17, r10, r12				# 2037
	lw		r10, 1(r9)				# 2052
	fmul	r10, r10, r36				# 2037
	fadd	r10, r17, r10				# 2037
	lw		r9, 2(r9)				# 2067
	fmul	r9, r9, r14				# 2037
	fadd	r9, r10, r9				# 22411
	lw		r10, 6(r56)				# 3372
	fcmp	r37, r9
	ble		.b32887				# 3186
.b32888:
	addi	r9, r0, 1				# 3186
	cmpi	r10, 0
	beq		.b32890				# 765
.b32891:
	cmpi	r9, 0
	beq		.b32892				# 775
.b32893:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b32861				# 27336
.b32892:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b32912				# 23092
.b32890:
	cmpi	r9, 0
	beq		.b32894				# 22459
.b32895:
	addi	r9, r0, 0				# 22459
	b		.b32912				# 23092
.b32894:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b32861				# 27336
.b32887:
	addi	r9, r0, 0				# 3186
	cmpi	r10, 0
	beq		.b32890				# 765
	b		.b32891
.b32871:
	fabs	r9, r12				# 322
	lw		r17, 4(r56)				# 3734
	lw		r10, 0(r17)				# 22178
	fcmp	r10, r9
	ble		.b32874				# 3096
.b32875:
	fabs	r9, r36				# 322
	lw		r10, 1(r17)				# 22224
	fcmp	r10, r9
	ble		.b32876				# 3096
.b32877:
	fabs	r10, r14				# 322
	lw		r9, 2(r17)				# 22261
	fcmp	r9, r10
	ble		.b32878				# 3096
.b32879:
	addi	r9, r0, 1				# 3096
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b32912				# 23092
.b32913:
	addi	r9, r0, 0				# 23141
	b		.b32861				# 27336
.b32878:
	addi	r9, r0, 0				# 3096
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b32882				# 22348
.b32883:
	addi	r9, r0, 0				# 22348
	b		.b32912				# 23092
.b32882:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b32861				# 27336
.b32876:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b32882				# 22348
	b		.b32883
.b32874:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b32882				# 22348
	b		.b32883
.b32855:
	fsqrt	r9, r9				# 227
	fsub	r15, r15, r9				# 18540
	lw		r9, 4(r19)				# 18540
	fmul	r9, r15, r9				# 18521
	sw		r9, 0(r57)				# 18521
	addi	r29, r0, 1				# 18580
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r37
	ble		.b32861				# 3096
	b		.b32863
.b32852:
	addi	r29, r0, 0				# 18592
	lw		r9, 6(r12)				# 3372
	cmpi	r9, 0
	beq		.b32815				# 27653
.b32860:
	addi	r61, r61, 1				# 27691
	lw		r14, 0(r1)				# 8078
	lwx		r48, r39, r61				# 26915
	cmpi	r48, -1
	beq		.b32815				# 26952
	b		.b32818
.b32850:
	addi	r29, r0, 0				# 18252
	lw		r9, 6(r12)				# 3372
	cmpi	r9, 0
	beq		.b32815				# 27653
	b		.b32860
.b32846:
	lw		r9, 0(r19)				# 18051
	fcmp	r37, r9
	ble		.b32848				# 3186
.b32849:
	lw		r15, 3(r10)				# 18099
	fmul	r9, r9, r15				# 18080
	sw		r9, 0(r57)				# 18080
	addi	r29, r0, 1				# 18129
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r37
	ble		.b32861				# 3096
	b		.b32863
.b32848:
	addi	r29, r0, 0				# 18141
	lw		r9, 6(r12)				# 3372
	cmpi	r9, 0
	beq		.b32815				# 27653
	b		.b32860
.b32820:
	lw		r9, 0(r19)				# 15996
	fsub	r9, r9, r33				# 15995
	lw		r50, 1(r19)				# 15995
	fmul	r53, r9, r50				# 15986
	lw		r42, 1(r14)				# 16056
	fmul	r9, r53, r42				# 16056
	fadd	r9, r9, r56				# 16050
	fabs	r9, r9				# 322
	lw		r17, 4(r12)				# 3920
	lw		r29, 1(r17)				# 16043
	fcmp	r29, r9
	ble		.b32823				# 3096
.b32824:
	lw		r9, 2(r14)				# 16117
	fmul	r9, r53, r9				# 16117
	fadd	r9, r9, r15				# 16111
	fabs	r10, r9				# 322
	lw		r9, 2(r17)				# 16104
	fcmp	r9, r10
	ble		.b32825				# 3096
.b32826:
	fcmp	r50, r37
	beq		.b32827				# 3126
.b32828:
	addi	r9, r0, 1				# 16157
.b32830:
	sw		r53, 0(r57)				# 16226
	addi	r29, r0, 1				# 16249
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r37
	ble		.b32861				# 3096
	b		.b32863
.b32827:
	addi	r9, r0, 0				# 16157
.b32829:
	lw		r9, 2(r19)				# 16269
	fsub	r9, r9, r56				# 16268
	lw		r53, 3(r19)				# 16268
	fmul	r50, r9, r53				# 16259
	lw		r36, 0(r14)				# 16330
	fmul	r9, r50, r36				# 16330
	fadd	r9, r9, r33				# 16324
	fabs	r9, r9				# 322
	lw		r10, 0(r17)				# 16317
	fcmp	r10, r9
	ble		.b32832				# 3096
.b32833:
	lw		r9, 2(r14)				# 16391
	fmul	r9, r50, r9				# 16391
	fadd	r9, r9, r15				# 16385
	fabs	r9, r9				# 322
	lw		r17, 2(r17)				# 16378
	fcmp	r17, r9
	ble		.b32834				# 3096
.b32835:
	fcmp	r53, r37
	beq		.b32836				# 3126
.b32837:
	addi	r9, r0, 1				# 16431
.b32839:
	sw		r50, 0(r57)				# 16500
	addi	r29, r0, 2				# 16523
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r37
	ble		.b32861				# 3096
	b		.b32863
.b32836:
	addi	r9, r0, 0				# 16431
.b32838:
	lw		r9, 4(r19)				# 16543
	fsub	r9, r9, r15				# 16542
	lw		r15, 5(r19)				# 16542
	fmul	r19, r9, r15				# 16533
	fmul	r9, r19, r36				# 16604
	fadd	r9, r9, r33				# 16598
	fabs	r9, r9				# 322
	fcmp	r10, r9
	ble		.b32840				# 3096
.b32841:
	fmul	r9, r19, r42				# 16665
	fadd	r9, r9, r56				# 16659
	fabs	r9, r9				# 322
	fcmp	r29, r9
	ble		.b32842				# 3096
.b32843:
	fcmp	r15, r37
	beq		.b32844				# 3126
.b32845:
	sw		r19, 0(r57)				# 16774
	addi	r29, r0, 3				# 16797
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r37
	ble		.b32861				# 3096
	b		.b32863
.b32844:
	addi	r29, r0, 0				# 16811
	lw		r9, 6(r12)				# 3372
	cmpi	r9, 0
	beq		.b32815				# 27653
	b		.b32860
.b32842:
	addi	r29, r0, 0				# 16811
	lw		r9, 6(r12)				# 3372
	cmpi	r9, 0
	beq		.b32815				# 27653
	b		.b32860
.b32840:
	addi	r29, r0, 0				# 16811
	lw		r9, 6(r12)				# 3372
	cmpi	r9, 0
	beq		.b32815				# 27653
	b		.b32860
.b32834:
	addi	r9, r0, 0				# 16467
	b		.b32838				# 16306
.b32832:
	addi	r9, r0, 0				# 16482
	b		.b32838				# 16306
.b32825:
	addi	r9, r0, 0				# 16193
	b		.b32829				# 16033
.b32823:
	addi	r9, r0, 0				# 16208
	b		.b32829				# 16033
.b32806:
	fsqrt	r9, r61				# 227
	fsub	r9, r62, r9				# 18540
	lw		r61, 4(r50)				# 18540
	fmul	r9, r9, r61				# 18521
	sw		r9, 0(r57)				# 18521
	addi	r9, r0, 1				# 18580
	lw		r9, 0(r57)				# 28381
	lw		r61, 0(r54)				# 28414
	fcmp	r61, r9
	ble		.b32663				# 3096
	b		.b32811
.b32803:
	addi	r9, r0, 0				# 18592
	b		.b32663				# 28364
.b32801:
	addi	r9, r0, 0				# 18252
	b		.b32663				# 28364
.b32797:
	lw		r62, 0(r50)				# 18051
	fcmp	r37, r62
	ble		.b32799				# 3186
.b32800:
	lw		r9, 3(r61)				# 18099
	fmul	r9, r62, r9				# 18080
	sw		r9, 0(r57)				# 18080
	addi	r9, r0, 1				# 18129
	lw		r9, 0(r57)				# 28381
	lw		r61, 0(r54)				# 28414
	fcmp	r61, r9
	ble		.b32663				# 3096
	b		.b32811
.b32799:
	addi	r9, r0, 0				# 18141
	b		.b32663				# 28364
.b32771:
	lw		r12, 0(r1)				# 8078
	lw		r9, 0(r50)				# 15996
	fsub	r9, r9, r48				# 15995
	lw		r62, 1(r50)				# 15995
	fmul	r61, r9, r62				# 15986
	lw		r15, 1(r12)				# 16056
	fmul	r9, r61, r15				# 16056
	fadd	r9, r9, r17				# 16050
	fabs	r9, r9				# 322
	lw		r53, 4(r10)				# 3920
	lw		r19, 1(r53)				# 16043
	fcmp	r19, r9
	ble		.b32774				# 3096
.b32775:
	lw		r9, 2(r12)				# 16117
	fmul	r9, r61, r9				# 16117
	fadd	r9, r9, r14				# 16111
	fabs	r10, r9				# 322
	lw		r9, 2(r53)				# 16104
	fcmp	r9, r10
	ble		.b32776				# 3096
.b32777:
	fcmp	r62, r37
	beq		.b32778				# 3126
.b32779:
	addi	r9, r0, 1				# 16157
.b32781:
	sw		r61, 0(r57)				# 16226
	addi	r9, r0, 1				# 16249
	lw		r9, 0(r57)				# 28381
	lw		r61, 0(r54)				# 28414
	fcmp	r61, r9
	ble		.b32663				# 3096
	b		.b32811
.b32778:
	addi	r9, r0, 0				# 16157
.b32780:
	lw		r9, 2(r50)				# 16269
	fsub	r9, r9, r17				# 16268
	lw		r39, 3(r50)				# 16268
	fmul	r29, r9, r39				# 16259
	lw		r9, 0(r12)				# 16330
	fmul	r61, r29, r9				# 16330
	fadd	r61, r61, r48				# 16324
	fabs	r61, r61				# 322
	lw		r62, 0(r53)				# 16317
	fcmp	r62, r61
	ble		.b32783				# 3096
.b32784:
	lw		r61, 2(r12)				# 16391
	fmul	r61, r29, r61				# 16391
	fadd	r61, r61, r14				# 16385
	fabs	r10, r61				# 322
	lw		r61, 2(r53)				# 16378
	fcmp	r61, r10
	ble		.b32785				# 3096
.b32786:
	fcmp	r39, r37
	beq		.b32787				# 3126
.b32788:
	addi	r61, r0, 1				# 16431
.b32790:
	sw		r29, 0(r57)				# 16500
	addi	r9, r0, 2				# 16523
	lw		r9, 0(r57)				# 28381
	lw		r61, 0(r54)				# 28414
	fcmp	r61, r9
	ble		.b32663				# 3096
	b		.b32811
.b32787:
	addi	r61, r0, 0				# 16431
.b32789:
	lw		r61, 4(r50)				# 16543
	fsub	r61, r61, r14				# 16542
	lw		r10, 5(r50)				# 16542
	fmul	r61, r61, r10				# 16533
	fmul	r9, r61, r9				# 16604
	fadd	r9, r9, r48				# 16598
	fabs	r9, r9				# 322
	fcmp	r62, r9
	ble		.b32791				# 3096
.b32792:
	fmul	r9, r61, r15				# 16665
	fadd	r9, r9, r17				# 16659
	fabs	r9, r9				# 322
	fcmp	r19, r9
	ble		.b32793				# 3096
.b32794:
	fcmp	r10, r37
	beq		.b32795				# 3126
.b32796:
	sw		r61, 0(r57)				# 16774
	addi	r9, r0, 3				# 16797
	lw		r9, 0(r57)				# 28381
	lw		r61, 0(r54)				# 28414
	fcmp	r61, r9
	ble		.b32663				# 3096
	b		.b32811
.b32795:
	addi	r9, r0, 0				# 16811
	b		.b32663				# 28364
.b32793:
	addi	r9, r0, 0				# 16811
	b		.b32663				# 28364
.b32791:
	addi	r9, r0, 0				# 16811
	b		.b32663				# 28364
.b32785:
	addi	r61, r0, 0				# 16467
	b		.b32789				# 16306
.b32783:
	addi	r61, r0, 0				# 16482
	b		.b32789				# 16306
.b32776:
	addi	r9, r0, 0				# 16193
	b		.b32780				# 16033
.b32774:
	addi	r9, r0, 0				# 16208
	b		.b32780				# 16033
.b32664:
	addi	r15, r0, 1				# 27829
	lwx		r9, r23, r15				# 27829
	cmpi	r9, -1
	beq		.b32663				# 27860
.b32668:
	lwx		r51, r7, r9				# 27885
	addi	r9, r0, 0				# 26885
	lw		r19, 0(r1)				# 8078
	lwx		r29, r51, r9				# 26915
	cmpi	r29, -1
	beq		.b32669				# 26952
.b32672:
	lwx		r53, r46, r29				# 18636
	lw		r39, 10(r53)				# 6561
	lw		r56, 0(r39)				# 18698
	lw		r42, 1(r39)				# 18723
	lw		r10, 2(r39)				# 18748
	lw		r61, 1(r1)				# 8141
	lwx		r17, r61, r29				# 18807
	lw		r61, 1(r53)				# 2994
	cmpi	r61, 1
	beq		.b32674				# 18869
.b32675:
	cmpi	r61, 2
	beq		.b32700				# 18950
.b32701:
	lw		r61, 0(r17)				# 18204
	fcmp	r61, r37
	beq		.b32704				# 3126
.b32705:
	lw		r62, 1(r17)				# 18278
	fmul	r48, r62, r56				# 18278
	lw		r62, 2(r17)				# 18298
	fmul	r62, r62, r42				# 18278
	fadd	r48, r48, r62				# 18278
	lw		r62, 3(r17)				# 18318
	fmul	r62, r62, r10				# 18278
	fadd	r48, r48, r62				# 18265
	lw		r10, 3(r39)				# 18342
	fmul	r62, r48, r48				# 18377
	fmul	r61, r61, r10				# 18377
	fsub	r62, r62, r61				# 18369
	fcmp	r62, r37
	ble		.b32706				# 3156
.b32707:
	lw		r61, 6(r53)				# 3372
	cmpi	r61, 0
	beq		.b32709				# 18435
.b32710:
	fsqrt	r61, r62				# 227
	fadd	r61, r48, r61				# 18476
	lw		r62, 4(r17)				# 18476
	fmul	r61, r61, r62				# 18457
	sw		r61, 0(r57)				# 18457
	addi	r12, r0, 1				# 18580
	lw		r61, 0(r57)				# 27058
	fcmp	r61, r37
	ble		.b32715				# 3096
.b32717:
	lw		r62, 0(r54)				# 27125
	fcmp	r62, r61
	ble		.b32715				# 3096
.b32719:
	addis	r62, r0, 15395
	ori		r62, r62, 55050				# 27169
	fadd	r33, r61, r62				# 27161
	lw		r61, 0(r19)				# 27198
	fmul	r62, r61, r33				# 27198
	lw		r61, 0(r30)				# 27198
	fadd	r17, r62, r61				# 27189
	lw		r61, 1(r19)				# 27247
	fmul	r61, r61, r33				# 27247
	lw		r62, 1(r30)				# 27247
	fadd	r53, r61, r62				# 27238
	lw		r61, 2(r19)				# 27296
	fmul	r61, r61, r33				# 27296
	lw		r62, 2(r30)				# 27296
	fadd	r42, r61, r62				# 27287
	addi	r62, r0, 0				# 23025
	lwx		r61, r51, r62				# 23025
	cmpi	r61, -1
	beq		.b32722				# 23052
.b32723:
	lwx		r39, r46, r61				# 23095
	lw		r48, 5(r39)				# 4475
	lw		r61, 0(r48)				# 22709
	fsub	r10, r17, r61				# 22700
	lw		r61, 1(r48)				# 22741
	fsub	r56, r53, r61				# 22732
	lw		r61, 2(r48)				# 22773
	fsub	r14, r42, r61				# 22764
	lw		r19, 1(r39)				# 2994
	cmpi	r19, 1
	beq		.b32725				# 22824
.b32726:
	cmpi	r19, 2
	beq		.b32738				# 22882
.b32739:
	fmul	r61, r10, r10				# 14374
	lw		r36, 4(r39)				# 3734
	lw		r48, 0(r36)				# 14374
	fmul	r61, r61, r48				# 14374
	fmul	r48, r56, r56				# 14400
	lw		r50, 1(r36)				# 14400
	fmul	r48, r48, r50				# 14374
	fadd	r61, r61, r48				# 14374
	fmul	r50, r14, r14				# 14426
	lw		r48, 2(r36)				# 14426
	fmul	r48, r50, r48				# 14374
	fadd	r61, r61, r48				# 14354
	lw		r48, 3(r39)				# 3553
	cmpi	r48, 0
	beq		.b32751				# 14456
.b32752:
	fmul	r50, r56, r14				# 14522
	lw		r48, 9(r39)				# 5989
	lw		r36, 0(r48)				# 14522
	fmul	r50, r50, r36				# 14503
	fadd	r50, r61, r50				# 14503
	fmul	r14, r14, r10				# 14556
	lw		r61, 1(r48)				# 14556
	fmul	r61, r14, r61				# 14503
	fadd	r14, r50, r61				# 14503
	fmul	r61, r10, r56				# 14590
	lw		r10, 2(r48)				# 14590
	fmul	r61, r61, r10				# 14503
	fadd	r61, r14, r61				# 14503
	cmpi	r19, 3
	beq		.b32754				# 22583
.b32755:
	lw		r10, 6(r39)				# 3372
	fcmp	r37, r61
	ble		.b32757				# 3186
.b32758:
	addi	r61, r0, 1				# 3186
	cmpi	r10, 0
	beq		.b32760				# 765
.b32761:
	cmpi	r61, 0
	beq		.b32762				# 775
.b32763:
	addi	r61, r0, 0				# 775
	addi	r61, r0, 1				# 22625
	addi	r61, r0, 0				# 23141
.b32715:
	addi	r9, r9, 1				# 27573
	lw		r19, 0(r1)				# 8078
	lwx		r29, r51, r9				# 26915
	cmpi	r29, -1
	beq		.b32669				# 26952
	b		.b32672
.b32669:
	addi	r15, r15, 1				# 27971
	lwx		r9, r23, r15				# 27829
	cmpi	r9, -1
	beq		.b32663				# 27860
	b		.b32668
.b32762:
	addi	r61, r0, 1				# 775
	addi	r61, r0, 0				# 22625
.b32766:
	addi	r62, r62, 1				# 23162
	lwx		r61, r51, r62				# 23025
	cmpi	r61, -1
	beq		.b32722				# 23052
	b		.b32723
.b32722:
	addi	r61, r0, 1				# 23074
.b32769:
	sw		r33, 0(r54)				# 27393
	sw		r17, 0(r13)				# 1162
	sw		r53, 1(r13)				# 1162
	sw		r42, 2(r13)				# 27393
	sw		r29, 0(r25)				# 27393
	sw		r12, 0(r41)				# 27485
	b		.b32715				# 27485
.b32760:
	cmpi	r61, 0
	beq		.b32764				# 22625
.b32765:
	addi	r61, r0, 0				# 22625
	b		.b32766				# 23092
.b32764:
	addi	r61, r0, 1				# 22625
	addi	r61, r0, 0				# 23141
	b		.b32715				# 27336
.b32757:
	addi	r61, r0, 0				# 3186
	cmpi	r10, 0
	beq		.b32760				# 765
	b		.b32761
.b32754:
	addis	r10, r0, 16256				# 22604
	fsub	r61, r61, r10				# 22604
	lw		r10, 6(r39)				# 3372
	fcmp	r37, r61
	ble		.b32757				# 3186
	b		.b32758
.b32751:
	cmpi	r19, 3
	beq		.b32754				# 22583
	b		.b32755
.b32738:
	lw		r48, 4(r39)				# 4293
	lw		r61, 0(r48)				# 2037
	fmul	r61, r61, r10				# 2037
	lw		r10, 1(r48)				# 2052
	fmul	r10, r10, r56				# 2037
	fadd	r61, r61, r10				# 2037
	lw		r10, 2(r48)				# 2067
	fmul	r10, r10, r14				# 2037
	fadd	r61, r61, r10				# 22411
	lw		r10, 6(r39)				# 3372
	fcmp	r37, r61
	ble		.b32741				# 3186
.b32742:
	addi	r61, r0, 1				# 3186
	cmpi	r10, 0
	beq		.b32744				# 765
.b32745:
	cmpi	r61, 0
	beq		.b32746				# 775
.b32747:
	addi	r61, r0, 0				# 775
	addi	r61, r0, 1				# 22459
	addi	r61, r0, 0				# 23141
	b		.b32715				# 27336
.b32746:
	addi	r61, r0, 1				# 775
	addi	r61, r0, 0				# 22459
	b		.b32766				# 23092
.b32744:
	cmpi	r61, 0
	beq		.b32748				# 22459
.b32749:
	addi	r61, r0, 0				# 22459
	b		.b32766				# 23092
.b32748:
	addi	r61, r0, 1				# 22459
	addi	r61, r0, 0				# 23141
	b		.b32715				# 27336
.b32741:
	addi	r61, r0, 0				# 3186
	cmpi	r10, 0
	beq		.b32744				# 765
	b		.b32745
.b32725:
	fabs	r48, r10				# 322
	lw		r10, 4(r39)				# 3734
	lw		r61, 0(r10)				# 22178
	fcmp	r61, r48
	ble		.b32728				# 3096
.b32729:
	fabs	r48, r56				# 322
	lw		r61, 1(r10)				# 22224
	fcmp	r61, r48
	ble		.b32730				# 3096
.b32731:
	fabs	r48, r14				# 322
	lw		r61, 2(r10)				# 22261
	fcmp	r61, r48
	ble		.b32732				# 3096
.b32733:
	addi	r61, r0, 1				# 3096
	lw		r61, 6(r39)				# 3372
	cmpi	r61, 0
	beq		.b32766				# 23092
.b32767:
	addi	r61, r0, 0				# 23141
	b		.b32715				# 27336
.b32732:
	addi	r61, r0, 0				# 3096
	lw		r61, 6(r39)				# 3372
	cmpi	r61, 0
	beq		.b32736				# 22348
.b32737:
	addi	r61, r0, 0				# 22348
	b		.b32766				# 23092
.b32736:
	addi	r61, r0, 1				# 22348
	addi	r61, r0, 0				# 23141
	b		.b32715				# 27336
.b32730:
	addi	r61, r0, 0				# 22302
	lw		r61, 6(r39)				# 3372
	cmpi	r61, 0
	beq		.b32736				# 22348
	b		.b32737
.b32728:
	addi	r61, r0, 0				# 22317
	lw		r61, 6(r39)				# 3372
	cmpi	r61, 0
	beq		.b32736				# 22348
	b		.b32737
.b32709:
	fsqrt	r61, r62				# 227
	fsub	r62, r48, r61				# 18540
	lw		r61, 4(r17)				# 18540
	fmul	r61, r62, r61				# 18521
	sw		r61, 0(r57)				# 18521
	addi	r12, r0, 1				# 18580
	lw		r61, 0(r57)				# 27058
	fcmp	r61, r37
	ble		.b32715				# 3096
	b		.b32717
.b32706:
	addi	r12, r0, 0				# 18592
	lw		r61, 6(r53)				# 3372
	cmpi	r61, 0
	beq		.b32669				# 27653
.b32714:
	addi	r9, r9, 1				# 27691
	lw		r19, 0(r1)				# 8078
	lwx		r29, r51, r9				# 26915
	cmpi	r29, -1
	beq		.b32669				# 26952
	b		.b32672
.b32704:
	addi	r12, r0, 0				# 18252
	lw		r61, 6(r53)				# 3372
	cmpi	r61, 0
	beq		.b32669				# 27653
	b		.b32714
.b32700:
	lw		r62, 0(r17)				# 18051
	fcmp	r37, r62
	ble		.b32702				# 3186
.b32703:
	lw		r61, 3(r39)				# 18099
	fmul	r61, r62, r61				# 18080
	sw		r61, 0(r57)				# 18080
	addi	r12, r0, 1				# 18129
	lw		r61, 0(r57)				# 27058
	fcmp	r61, r37
	ble		.b32715				# 3096
	b		.b32717
.b32702:
	addi	r12, r0, 0				# 18141
	lw		r61, 6(r53)				# 3372
	cmpi	r61, 0
	beq		.b32669				# 27653
	b		.b32714
.b32674:
	lw		r61, 0(r17)				# 15996
	fsub	r61, r61, r56				# 15995
	lw		r48, 1(r17)				# 15995
	fmul	r14, r61, r48				# 15986
	lw		r62, 1(r19)				# 16056
	fmul	r61, r14, r62				# 16056
	fadd	r61, r61, r42				# 16050
	fabs	r61, r61				# 322
	lw		r12, 4(r53)				# 3920
	lw		r39, 1(r12)				# 16043
	fcmp	r39, r61
	ble		.b32677				# 3096
.b32678:
	lw		r61, 2(r19)				# 16117
	fmul	r61, r14, r61				# 16117
	fadd	r61, r61, r10				# 16111
	fabs	r50, r61				# 322
	lw		r61, 2(r12)				# 16104
	fcmp	r61, r50
	ble		.b32679				# 3096
.b32680:
	fcmp	r48, r37
	beq		.b32681				# 3126
.b32682:
	addi	r61, r0, 1				# 16157
.b32684:
	sw		r14, 0(r57)				# 16226
	addi	r12, r0, 1				# 16249
	lw		r61, 0(r57)				# 27058
	fcmp	r61, r37
	ble		.b32715				# 3096
	b		.b32717
.b32681:
	addi	r61, r0, 0				# 16157
.b32683:
	lw		r61, 2(r17)				# 16269
	fsub	r61, r61, r42				# 16268
	lw		r48, 3(r17)				# 16268
	fmul	r50, r61, r48				# 16259
	lw		r33, 0(r19)				# 16330
	fmul	r61, r50, r33				# 16330
	fadd	r61, r61, r56				# 16324
	fabs	r61, r61				# 322
	lw		r36, 0(r12)				# 16317
	fcmp	r36, r61
	ble		.b32686				# 3096
.b32687:
	lw		r61, 2(r19)				# 16391
	fmul	r61, r50, r61				# 16391
	fadd	r61, r61, r10				# 16385
	fabs	r14, r61				# 322
	lw		r61, 2(r12)				# 16378
	fcmp	r61, r14
	ble		.b32688				# 3096
.b32689:
	fcmp	r48, r37
	beq		.b32690				# 3126
.b32691:
	addi	r61, r0, 1				# 16431
.b32693:
	sw		r50, 0(r57)				# 16500
	addi	r12, r0, 2				# 16523
	lw		r61, 0(r57)				# 27058
	fcmp	r61, r37
	ble		.b32715				# 3096
	b		.b32717
.b32690:
	addi	r61, r0, 0				# 16431
.b32692:
	lw		r61, 4(r17)				# 16543
	fsub	r61, r61, r10				# 16542
	lw		r48, 5(r17)				# 16542
	fmul	r10, r61, r48				# 16533
	fmul	r61, r10, r33				# 16604
	fadd	r61, r61, r56				# 16598
	fabs	r61, r61				# 322
	fcmp	r36, r61
	ble		.b32694				# 3096
.b32695:
	fmul	r61, r10, r62				# 16665
	fadd	r61, r61, r42				# 16659
	fabs	r61, r61				# 322
	fcmp	r39, r61
	ble		.b32696				# 3096
.b32697:
	fcmp	r48, r37
	beq		.b32698				# 3126
.b32699:
	sw		r10, 0(r57)				# 16774
	addi	r12, r0, 3				# 16797
	lw		r61, 0(r57)				# 27058
	fcmp	r61, r37
	ble		.b32715				# 3096
	b		.b32717
.b32698:
	addi	r12, r0, 0				# 16811
	lw		r61, 6(r53)				# 3372
	cmpi	r61, 0
	beq		.b32669				# 27653
	b		.b32714
.b32696:
	addi	r12, r0, 0				# 16811
	lw		r61, 6(r53)				# 3372
	cmpi	r61, 0
	beq		.b32669				# 27653
	b		.b32714
.b32694:
	addi	r12, r0, 0				# 16811
	lw		r61, 6(r53)				# 3372
	cmpi	r61, 0
	beq		.b32669				# 27653
	b		.b32714
.b32688:
	addi	r61, r0, 0				# 16467
	b		.b32692				# 16306
.b32686:
	addi	r61, r0, 0				# 16482
	b		.b32692				# 16306
.b32679:
	addi	r61, r0, 0				# 16193
	b		.b32683				# 16033
.b32677:
	addi	r61, r0, 0				# 16208
	b		.b32683				# 16033
	# trace_diffuse_rays.3002
trace_diffuse_rays.3002:
.Entry@trace_diffuse_rays.3002:
	sw		r2, 0(r3)				# 0
	sw		r1, -1(r3)				# 0
	lli		r61, n_objects.2512				# 1353
	lli		r57, objects.2523				# 1353
	lli		r9, startp_fast.2589				# 1353
	lw		r28, 0(r5)				# 1353
	sw		r28, 0(r9)				# 1353
	lw		r54, 1(r5)				# 1376
	sw		r54, 1(r9)				# 1353
	lw		r30, 2(r5)				# 1399
	sw		r30, 2(r9)				# 22055
	lw		r9, 0(r61)				# 22105
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b32922				# 21420
.b32920:
	addi	r9, r0, 118				# 35584
	sw		r9, -2(r3)				# 35584
.b32936:
	lw		r15, -1(r3)				# 35627
	lwx		r1, r15, r9				# 35627
	sw		r1, -3(r3)				# 35627
	lw		r28, 0(r1)				# 8078
	lw		r61, 0(r28)				# 1949
	lw		r10, 0(r3)				# 1949
	lw		r62, 0(r10)				# 1949
	fmul	r62, r61, r62				# 1949
	lw		r51, 1(r28)				# 1967
	lw		r61, 1(r10)				# 1967
	fmul	r61, r51, r61				# 1949
	fadd	r61, r62, r61				# 1949
	lw		r28, 2(r28)				# 1985
	lw		r62, 2(r10)				# 1985
	fmul	r28, r28, r62				# 1949
	fadd	r28, r61, r28				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b32939				# 3186
.b32940:
	addi	r61, r0, 1				# 3186
.b32943:
	addi	r9, r9, 1				# 35712
	lwx		r1, r15, r9				# 35694
	sw		r1, -4(r3)				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r9, r28, r9				# 35694
	sw		r9, -5(r3)				# 35694
	mflr	r63
	sw		r63, -6(r3)
	addi	r3, r3, -7
	bl		judge_intersection_fast.2965
	addi	r3, r3, 7
	lw		r63, -6(r3)
	mtlr	r63				# 35087
	cmpi	r2, 0
	beq		.b32941				# 35087
.b33001:
	lli		r9, intersected_object_id.2562				# 35140
	lw		r9, 0(r9)				# 35140
	lli		r61, objects.2523				# 35130
	lwx		r54, r61, r9				# 35130
	sw		r54, -6(r3)				# 35130
	lw		r9, -4(r3)				# 8078
	lw		r28, 0(r9)				# 8078
	lw		r9, 1(r54)				# 2994
	cmpi	r9, 1
	beq		.b33003				# 29818
.b33004:
	cmpi	r9, 2
	beq		.b33010				# 29873
.b33011:
	lli		r62, intersection_point.2559				# 29136
	lw		r28, 0(r62)				# 29136
	lw		r9, 5(r54)				# 4475
	lw		r61, 0(r9)				# 29136
	fsub	r41, r28, r61				# 29127
	lw		r61, 1(r62)				# 29188
	lw		r28, 1(r9)				# 29188
	fsub	r61, r61, r28				# 29179
	lw		r28, 2(r62)				# 29240
	lw		r9, 2(r9)				# 29240
	fsub	r10, r28, r9				# 29231
	lw		r9, 4(r54)				# 3734
	lw		r28, 0(r9)				# 29293
	fmul	r28, r41, r28				# 29284
	lw		r62, 1(r9)				# 29325
	fmul	r51, r61, r62				# 29316
	lw		r9, 2(r9)				# 29357
	fmul	r30, r10, r9				# 29348
	lw		r9, 3(r54)				# 3553
	cmpi	r9, 0
	beq		.b33013				# 29381
.b33014:
	lw		r7, 9(r54)				# 6369
	lw		r13, 2(r7)				# 29517
	fmul	r62, r61, r13				# 29517
	lw		r15, 1(r7)				# 29539
	fmul	r9, r10, r15				# 29517
	fadd	r9, r62, r9				# 29510
	addis	r25, r0, 16384				# 2996
	fdiv	r9, r9, r25				# 29504
	fadd	r9, r28, r9				# 29489
	lli		r62, nvector.2565				# 29489
	sw		r9, 0(r62)				# 29489
	fmul	r13, r41, r13				# 29592
	lw		r28, 0(r7)				# 29614
	fmul	r9, r10, r28				# 29592
	fadd	r9, r13, r9				# 29585
	fdiv	r9, r9, r25				# 29579
	fadd	r9, r51, r9				# 29564
	sw		r9, 1(r62)				# 29489
	fmul	r9, r41, r15				# 29667
	fmul	r61, r61, r28				# 29667
	fadd	r9, r9, r61				# 29660
	fdiv	r9, r9, r25				# 29654
	fadd	r9, r30, r9				# 29639
	sw		r9, 2(r62)				# 29639
.b33012:
	lw		r10, 6(r54)				# 3372
	lli		r61, nvector.2565				# 1729
	lw		r51, 0(r61)				# 1729
	fmul	r62, r51, r51				# 1729
	lw		r28, 1(r61)				# 1743
	fmul	r9, r28, r28				# 1729
	fadd	r9, r62, r9				# 1729
	lw		r15, 2(r61)				# 1757
	fmul	r62, r15, r15				# 1729
	fadd	r9, r9, r62				# 1723
	fsqrt	r62, r9				# 227
	addi	r9, r0, 0				# 1774
	fcmp	r62, r9
	beq		.b33016				# 3126
.b33017:
	cmpi	r10, 0
	beq		.b33018				# 1810
.b33019:
	addis	r9, r0, 49024				# 1822
	fdiv	r9, r9, r62				# 1822
.b33015:
	fmul	r62, r51, r9				# 1851
	sw		r62, 0(r61)				# 1851
	fmul	r28, r28, r9				# 1875
	sw		r28, 1(r61)				# 1851
	fmul	r9, r15, r9				# 1899
	sw		r9, 2(r61)				# 1899
.b33002:
	lw		r9, 0(r54)				# 2815
	lw		r28, 8(r54)				# 5421
	lw		r61, 0(r28)				# 30014
	lli		r15, texture_color.2568				# 30014
	sw		r61, 0(r15)				# 30014
	lw		r61, 1(r28)				# 30052
	sw		r61, 1(r15)				# 30014
	lw		r61, 2(r28)				# 30092
	sw		r61, 2(r15)				# 30014
	cmpi	r9, 1
	beq		.b33021				# 30131
.b33022:
	cmpi	r9, 2
	beq		.b33036				# 30575
.b33037:
	cmpi	r9, 3
	beq		.b33038				# 30745
.b33039:
	cmpi	r9, 4
	beq		.b33040				# 31084
.b33020:
	lli		r9, or_net.2547				# 35265
	lw		r2, 0(r9)				# 35265
	addi	r1, r0, 0				# 35257
	mflr	r63
	sw		r63, -7(r3)
	addi	r3, r3, -8
	bl		shadow_check_one_or_matrix.2936
	addi	r3, r3, 8
	lw		r63, -7(r3)
	mtlr	r63				# 35257
	cmpi	r2, 0
	beq		.b33051				# 35257
.b32941:
	lw		r9, -2(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -2(r3)				# 35584
	cmpi	r9, 0
	bge		.b32936				# 35584
.b32937:
	blr				# 35895
.b33051:
	lli		r9, nvector.2565				# 1949
	lw		r28, 0(r9)				# 1949
	lli		r61, light.2532				# 1949
	lw		r62, 0(r61)				# 1949
	fmul	r62, r28, r62				# 1949
	lw		r15, 1(r9)				# 1967
	lw		r28, 1(r61)				# 1967
	fmul	r28, r15, r28				# 1949
	fadd	r28, r62, r28				# 1949
	lw		r9, 2(r9)				# 1985
	lw		r61, 2(r61)				# 1985
	fmul	r9, r9, r61				# 1949
	fadd	r9, r28, r9				# 35327
	fneg	r9, r9				# 35317
	addi	r61, r0, 0				# 35366
	fcmp	r9, r61
	ble		.b33054				# 3156
.b33055:
.b33053:
	lw		r61, -5(r3)				# 35442
	fmul	r61, r61, r9				# 35442
	lw		r9, -6(r3)				# 5033
	lw		r9, 7(r9)				# 5033
	lw		r9, 0(r9)				# 35442
	fmul	r28, r61, r9				# 35420
	lli		r15, diffuse_ray.2571				# 2129
	lw		r9, 0(r15)				# 2129
	lli		r62, texture_color.2568				# 2141
	lw		r61, 0(r62)				# 2141
	fmul	r61, r28, r61				# 2129
	fadd	r9, r9, r61				# 2117
	sw		r9, 0(r15)				# 2117
	lw		r61, 1(r15)				# 2171
	lw		r9, 1(r62)				# 2183
	fmul	r9, r28, r9				# 2171
	fadd	r9, r61, r9				# 2159
	sw		r9, 1(r15)				# 2117
	lw		r61, 2(r15)				# 2213
	lw		r9, 2(r62)				# 2225
	fmul	r9, r28, r9				# 2213
	fadd	r9, r61, r9				# 2201
	sw		r9, 2(r15)				# 2201
	b		.b32941				# 2201
.b33054:
	addi	r9, r0, 0				# 35406
	b		.b33053				# 35406
.b33040:
	lli		r62, intersection_point.2559				# 31118
	lw		r9, 0(r62)				# 31118
	lw		r7, 5(r54)				# 4475
	lw		r61, 0(r7)				# 31118
	fsub	r9, r9, r61				# 31117
	lw		r51, 4(r54)				# 3734
	lw		r61, 0(r51)				# 31144
	fsqrt	r61, r61				# 227
	fmul	r10, r9, r61				# 31108
	lw		r61, 2(r62)				# 31181
	lw		r9, 2(r7)				# 31181
	fsub	r61, r61, r9				# 31180
	lw		r9, 2(r51)				# 31207
	fsqrt	r9, r9				# 227
	fmul	r9, r61, r9				# 31171
	fmul	r61, r10, r10				# 31243
	fmul	r28, r9, r9				# 31243
	fadd	r13, r61, r28				# 31234
	fabs	r61, r10				# 322
	addis	r28, r0, 14545
	ori		r28, r28, 46871				# 31291
	fcmp	r28, r61
	ble		.b33043				# 3096
.b33044:
	addis	r61, r0, 16752				# 31320
.b33042:
	ffloor	r9, r61				# 765
	fsub	r9, r61, r9				# 31412
	lw		r61, 1(r62)				# 31456
	lw		r62, 1(r7)				# 31456
	fsub	r61, r61, r62				# 31455
	lw		r62, 1(r51)				# 31482
	fsqrt	r62, r62				# 227
	fmul	r62, r61, r62				# 31446
	fabs	r61, r13				# 322
	fcmp	r28, r61
	ble		.b33046				# 3096
.b33047:
	addis	r28, r0, 16752				# 31556
.b33045:
	ffloor	r61, r28				# 765
	fsub	r28, r28, r61				# 31646
	addis	r61, r0, 15897
	ori		r61, r61, 39322				# 31690
	addis	r62, r0, 16128				# 31705
	fsub	r9, r62, r9				# 31699
	fmul	r9, r9, r9				# 31690
	fsub	r61, r61, r9				# 31690
	fsub	r9, r62, r28				# 31721
	fmul	r9, r9, r9				# 31690
	fsub	r9, r61, r9				# 31680
	addi	r61, r0, 0				# 31747
	fcmp	r61, r9
	ble		.b33049				# 3186
.b33050:
	addi	r9, r0, 0				# 31776
.b33048:
	addis	r61, r0, 17279				# 31817
	fmul	r9, r61, r9				# 31817
	addis	r61, r0, 16025
	ori		r61, r61, 39322				# 31817
	fdiv	r9, r9, r61				# 31796
	sw		r9, 2(r15)				# 31796
	b		.b33020				# 31796
.b33049:
	b		.b33048				# 31785
.b33046:
	fdiv	r61, r62, r13				# 31582
	fabs	r61, r61				# 322
	fatan	r61, r61				# 440
	addis	r28, r0, 16880				# 31603
	fmul	r28, r61, r28				# 31602
	addis	r61, r0, 16457
	ori		r61, r61, 4059				# 31602
	fdiv	r28, r28, r61				# 31602
	b		.b33045				# 31602
.b33043:
	fdiv	r9, r9, r10				# 31347
	fabs	r9, r9				# 322
	fatan	r61, r9				# 440
	addis	r9, r0, 16880				# 31369
	fmul	r9, r61, r9				# 31368
	addis	r61, r0, 16457
	ori		r61, r61, 4059				# 31368
	fdiv	r61, r9, r61				# 31368
	b		.b33042				# 31368
.b33038:
	lli		r9, intersection_point.2559				# 30784
	lw		r28, 0(r9)				# 30784
	lw		r62, 5(r54)				# 4475
	lw		r61, 0(r62)				# 30784
	fsub	r28, r28, r61				# 30775
	lw		r9, 2(r9)				# 30823
	lw		r61, 2(r62)				# 30823
	fsub	r61, r9, r61				# 30814
	fmul	r9, r28, r28				# 30868
	fmul	r61, r61, r61				# 30868
	fadd	r9, r9, r61				# 30862
	fsqrt	r61, r9				# 227
	addis	r9, r0, 16672				# 30862
	fdiv	r9, r61, r9				# 30853
	ffloor	r61, r9				# 765
	fsub	r61, r9, r61				# 30915
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 30915
	fmul	r9, r61, r9				# 30905
	fcos	r9, r9				# 133
	fmul	r9, r9, r9				# 30954
	addis	r28, r0, 17279				# 30987
	fmul	r61, r9, r28				# 30987
	sw		r61, 1(r15)				# 30987
	addis	r61, r0, 16256				# 31050
	fsub	r9, r61, r9				# 31049
	fmul	r9, r9, r28				# 31028
	sw		r9, 2(r15)				# 31028
	b		.b33020				# 31028
.b33036:
	lli		r9, intersection_point.2559				# 30625
	lw		r61, 1(r9)				# 30625
	addis	r9, r0, 16000				# 30625
	fmul	r9, r61, r9				# 30620
	fsin	r9, r9				# 40
	fmul	r28, r9, r9				# 30605
	addis	r9, r0, 17279				# 30650
	fmul	r61, r9, r28				# 30650
	sw		r61, 0(r15)				# 30650
	addis	r61, r0, 16256				# 30721
	fsub	r61, r61, r28				# 30711
	fmul	r9, r9, r61				# 30690
	sw		r9, 1(r15)				# 30690
	b		.b33020				# 30690
.b33021:
	lli		r61, intersection_point.2559				# 30169
	lw		r62, 0(r61)				# 30169
	lw		r28, 5(r54)				# 4475
	lw		r9, 0(r28)				# 30169
	fsub	r62, r62, r9				# 30160
	addis	r13, r0, 15692
	ori		r13, r13, 52429				# 30234
	fmul	r9, r62, r13				# 30227
	ffloor	r9, r9				# 765
	addis	r10, r0, 16800				# 30226
	fmul	r9, r9, r10				# 30217
	fsub	r9, r62, r9				# 30264
	addis	r51, r0, 16672				# 30264
	fcmp	r51, r9
	ble		.b33024				# 3096
.b33025:
	addi	r62, r0, 1				# 3096
.b33023:
	lw		r61, 2(r61)				# 30308
	lw		r9, 2(r28)				# 30308
	fsub	r9, r61, r9				# 30299
	fmul	r61, r9, r13				# 30366
	ffloor	r61, r61				# 765
	fmul	r61, r61, r10				# 30356
	fsub	r9, r9, r61				# 30404
	fcmp	r51, r9
	ble		.b33027				# 3096
.b33028:
	addi	r9, r0, 1				# 3096
	cmpi	r62, 0
	beq		.b33030				# 30467
.b33031:
	cmpi	r9, 0
	beq		.b33034				# 30489
.b33035:
	addis	r9, r0, 17279				# 30503
	sw		r9, 1(r15)				# 30439
	b		.b33020				# 30439
.b33034:
	addi	r9, r0, 0				# 30514
	sw		r9, 1(r15)				# 30439
	b		.b33020				# 30439
.b33030:
	cmpi	r9, 0
	beq		.b33032				# 30532
.b33033:
	addi	r9, r0, 0				# 30546
	sw		r9, 1(r15)				# 30439
	b		.b33020				# 30439
.b33032:
	addis	r9, r0, 17279				# 30555
	sw		r9, 1(r15)				# 30439
	b		.b33020				# 30439
.b33027:
	addi	r9, r0, 0				# 3096
	cmpi	r62, 0
	beq		.b33030				# 30467
	b		.b33031
.b33024:
	addi	r62, r0, 0				# 3096
	b		.b33023				# 3096
.b33018:
	addis	r9, r0, 16256				# 1837
	fdiv	r9, r9, r62				# 1837
	b		.b33015				# 1837
.b33016:
	addis	r9, r0, 16256				# 1801
	b		.b33015				# 1801
.b33013:
	lli		r9, nvector.2565				# 29409
	sw		r28, 0(r9)				# 29409
	sw		r51, 1(r9)				# 29409
	sw		r30, 2(r9)				# 29455
	b		.b33012				# 29455
.b33010:
	lw		r61, 4(r54)				# 3734
	lw		r9, 0(r61)				# 28996
	fneg	r9, r9				# 28981
	lli		r28, nvector.2565				# 28981
	sw		r9, 0(r28)				# 28981
	lw		r9, 1(r61)				# 29034
	fneg	r9, r9				# 29019
	sw		r9, 1(r28)				# 28981
	lw		r9, 2(r61)				# 29071
	fneg	r9, r9				# 29056
	sw		r9, 2(r28)				# 29056
	b		.b33002				# 29056
.b33003:
	lli		r9, intsec_rectside.2553				# 28828
	lw		r62, 0(r9)				# 28828
	addi	r9, r0, 0				# 1232
	lli		r61, nvector.2565				# 1232
	sw		r9, 0(r61)				# 1232
	sw		r9, 1(r61)				# 1232
	sw		r9, 2(r61)				# 28868
	addi	r62, r62, -1				# 28888
	lwx		r28, r28, r62				# 28918
	fcmp	r28, r9
	beq		.b33006				# 3126
.b33007:
	fcmp	r28, r9
	ble		.b33008				# 3156
.b33009:
	addis	r9, r0, 16256				# 856
	fneg	r9, r9				# 28888
	swx		r9, r62, r61				# 28888
	b		.b33002				# 28888
.b33008:
	addis	r9, r0, 49024				# 868
	fneg	r9, r9				# 28888
	swx		r9, r62, r61				# 28888
	b		.b33002				# 28888
.b33006:
	addi	r9, r0, 0				# 828
	fneg	r9, r9				# 28888
	swx		r9, r62, r61				# 28888
	b		.b33002				# 28888
.b32939:
	addi	r61, r0, 0				# 3186
.b32942:
	addis	r9, r0, 17174				# 35806
	fdiv	r9, r28, r9				# 35766
	sw		r9, -4(r3)				# 35766
	mflr	r63
	sw		r63, -5(r3)
	addi	r3, r3, -6
	bl		judge_intersection_fast.2965
	addi	r3, r3, 6
	lw		r63, -5(r3)
	mtlr	r63				# 35087
	cmpi	r2, 0
	beq		.b32941				# 35087
.b32945:
	lli		r9, intersected_object_id.2562				# 35140
	lw		r9, 0(r9)				# 35140
	lli		r61, objects.2523				# 35130
	lwx		r15, r61, r9				# 35130
	sw		r15, -5(r3)				# 35130
	lw		r9, -3(r3)				# 8078
	lw		r62, 0(r9)				# 8078
	lw		r9, 1(r15)				# 2994
	cmpi	r9, 1
	beq		.b32947				# 29818
.b32948:
	cmpi	r9, 2
	beq		.b32954				# 29873
.b32955:
	lli		r61, intersection_point.2559				# 29136
	lw		r9, 0(r61)				# 29136
	lw		r28, 5(r15)				# 4475
	lw		r62, 0(r28)				# 29136
	fsub	r25, r9, r62				# 29127
	lw		r62, 1(r61)				# 29188
	lw		r9, 1(r28)				# 29188
	fsub	r54, r62, r9				# 29179
	lw		r9, 2(r61)				# 29240
	lw		r61, 2(r28)				# 29240
	fsub	r28, r9, r61				# 29231
	lw		r9, 4(r15)				# 3734
	lw		r61, 0(r9)				# 29293
	fmul	r41, r25, r61				# 29284
	lw		r61, 1(r9)				# 29325
	fmul	r30, r54, r61				# 29316
	lw		r9, 2(r9)				# 29357
	fmul	r62, r28, r9				# 29348
	lw		r9, 3(r15)				# 3553
	cmpi	r9, 0
	beq		.b32957				# 29381
.b32958:
	lw		r51, 9(r15)				# 6369
	lw		r10, 2(r51)				# 29517
	fmul	r9, r54, r10				# 29517
	lw		r13, 1(r51)				# 29539
	fmul	r61, r28, r13				# 29517
	fadd	r9, r9, r61				# 29510
	addis	r7, r0, 16384				# 2996
	fdiv	r9, r9, r7				# 29504
	fadd	r9, r41, r9				# 29489
	lli		r41, nvector.2565				# 29489
	sw		r9, 0(r41)				# 29489
	fmul	r9, r25, r10				# 29592
	lw		r61, 0(r51)				# 29614
	fmul	r28, r28, r61				# 29592
	fadd	r9, r9, r28				# 29585
	fdiv	r9, r9, r7				# 29579
	fadd	r9, r30, r9				# 29564
	sw		r9, 1(r41)				# 29489
	fmul	r9, r25, r13				# 29667
	fmul	r61, r54, r61				# 29667
	fadd	r9, r9, r61				# 29660
	fdiv	r9, r9, r7				# 29654
	fadd	r9, r62, r9				# 29639
	sw		r9, 2(r41)				# 29639
.b32956:
	lw		r62, 6(r15)				# 3372
	lli		r10, nvector.2565				# 1729
	lw		r51, 0(r10)				# 1729
	fmul	r61, r51, r51				# 1729
	lw		r13, 1(r10)				# 1743
	fmul	r9, r13, r13				# 1729
	fadd	r61, r61, r9				# 1729
	lw		r9, 2(r10)				# 1757
	fmul	r28, r9, r9				# 1729
	fadd	r61, r61, r28				# 1723
	fsqrt	r61, r61				# 227
	addi	r28, r0, 0				# 1774
	fcmp	r61, r28
	beq		.b32960				# 3126
.b32961:
	cmpi	r62, 0
	beq		.b32962				# 1810
.b32963:
	addis	r28, r0, 49024				# 1822
	fdiv	r28, r28, r61				# 1822
.b32959:
	fmul	r61, r51, r28				# 1851
	sw		r61, 0(r10)				# 1851
	fmul	r61, r13, r28				# 1875
	sw		r61, 1(r10)				# 1851
	fmul	r9, r9, r28				# 1899
	sw		r9, 2(r10)				# 1899
.b32946:
	lw		r61, 0(r15)				# 2815
	lw		r28, 8(r15)				# 5421
	lw		r9, 0(r28)				# 30014
	lli		r62, texture_color.2568				# 30014
	sw		r9, 0(r62)				# 30014
	lw		r9, 1(r28)				# 30052
	sw		r9, 1(r62)				# 30014
	lw		r9, 2(r28)				# 30092
	sw		r9, 2(r62)				# 30014
	cmpi	r61, 1
	beq		.b32965				# 30131
.b32966:
	cmpi	r61, 2
	beq		.b32980				# 30575
.b32981:
	cmpi	r61, 3
	beq		.b32982				# 30745
.b32983:
	cmpi	r61, 4
	beq		.b32984				# 31084
.b32964:
	lli		r9, or_net.2547				# 35265
	lw		r2, 0(r9)				# 35265
	addi	r1, r0, 0				# 35257
	mflr	r63
	sw		r63, -6(r3)
	addi	r3, r3, -7
	bl		shadow_check_one_or_matrix.2936
	addi	r3, r3, 7
	lw		r63, -6(r3)
	mtlr	r63				# 35257
	cmpi	r2, 0
	beq		.b32995				# 35257
	b		.b32941
.b32995:
	lli		r62, nvector.2565				# 1949
	lw		r9, 0(r62)				# 1949
	lli		r15, light.2532				# 1949
	lw		r61, 0(r15)				# 1949
	fmul	r9, r9, r61				# 1949
	lw		r61, 1(r62)				# 1967
	lw		r28, 1(r15)				# 1967
	fmul	r61, r61, r28				# 1949
	fadd	r28, r9, r61				# 1949
	lw		r61, 2(r62)				# 1985
	lw		r9, 2(r15)				# 1985
	fmul	r9, r61, r9				# 1949
	fadd	r9, r28, r9				# 35327
	fneg	r9, r9				# 35317
	addi	r61, r0, 0				# 35366
	fcmp	r9, r61
	ble		.b32998				# 3156
.b32999:
.b32997:
	lw		r61, -4(r3)				# 35442
	fmul	r61, r61, r9				# 35442
	lw		r9, -5(r3)				# 5033
	lw		r9, 7(r9)				# 5033
	lw		r9, 0(r9)				# 35442
	fmul	r28, r61, r9				# 35420
	lli		r61, diffuse_ray.2571				# 2129
	lw		r9, 0(r61)				# 2129
	lli		r15, texture_color.2568				# 2141
	lw		r62, 0(r15)				# 2141
	fmul	r62, r28, r62				# 2129
	fadd	r9, r9, r62				# 2117
	sw		r9, 0(r61)				# 2117
	lw		r62, 1(r61)				# 2171
	lw		r9, 1(r15)				# 2183
	fmul	r9, r28, r9				# 2171
	fadd	r9, r62, r9				# 2159
	sw		r9, 1(r61)				# 2117
	lw		r62, 2(r61)				# 2213
	lw		r9, 2(r15)				# 2225
	fmul	r9, r28, r9				# 2213
	fadd	r9, r62, r9				# 2201
	sw		r9, 2(r61)				# 2201
	b		.b32941				# 2201
.b32998:
	addi	r9, r0, 0				# 35406
	b		.b32997				# 35406
.b32984:
	lli		r28, intersection_point.2559				# 31118
	lw		r9, 0(r28)				# 31118
	lw		r13, 5(r15)				# 4475
	lw		r61, 0(r13)				# 31118
	fsub	r61, r9, r61				# 31117
	lw		r51, 4(r15)				# 3734
	lw		r9, 0(r51)				# 31144
	fsqrt	r9, r9				# 227
	fmul	r61, r61, r9				# 31108
	lw		r9, 2(r28)				# 31181
	lw		r15, 2(r13)				# 31181
	fsub	r15, r9, r15				# 31180
	lw		r9, 2(r51)				# 31207
	fsqrt	r9, r9				# 227
	fmul	r10, r15, r9				# 31171
	fmul	r9, r61, r61				# 31243
	fmul	r15, r10, r10				# 31243
	fadd	r15, r9, r15				# 31234
	fabs	r9, r61				# 322
	addis	r54, r0, 14545
	ori		r54, r54, 46871				# 31291
	fcmp	r54, r9
	ble		.b32987				# 3096
.b32988:
	addis	r61, r0, 16752				# 31320
.b32986:
	ffloor	r9, r61				# 765
	fsub	r10, r61, r9				# 31412
	lw		r61, 1(r28)				# 31456
	lw		r9, 1(r13)				# 31456
	fsub	r61, r61, r9				# 31455
	lw		r9, 1(r51)				# 31482
	fsqrt	r9, r9				# 227
	fmul	r61, r61, r9				# 31446
	fabs	r9, r15				# 322
	fcmp	r54, r9
	ble		.b32990				# 3096
.b32991:
	addis	r61, r0, 16752				# 31556
.b32989:
	ffloor	r9, r61				# 765
	fsub	r61, r61, r9				# 31646
	addis	r9, r0, 15897
	ori		r9, r9, 39322				# 31690
	addis	r28, r0, 16128				# 31705
	fsub	r15, r28, r10				# 31699
	fmul	r15, r15, r15				# 31690
	fsub	r9, r9, r15				# 31690
	fsub	r61, r28, r61				# 31721
	fmul	r61, r61, r61				# 31690
	fsub	r9, r9, r61				# 31680
	addi	r61, r0, 0				# 31747
	fcmp	r61, r9
	ble		.b32993				# 3186
.b32994:
	addi	r9, r0, 0				# 31776
.b32992:
	addis	r61, r0, 17279				# 31817
	fmul	r61, r61, r9				# 31817
	addis	r9, r0, 16025
	ori		r9, r9, 39322				# 31817
	fdiv	r9, r61, r9				# 31796
	sw		r9, 2(r62)				# 31796
	b		.b32964				# 31796
.b32993:
	b		.b32992				# 31785
.b32990:
	fdiv	r9, r61, r15				# 31582
	fabs	r9, r9				# 322
	fatan	r9, r9				# 440
	addis	r61, r0, 16880				# 31603
	fmul	r61, r9, r61				# 31602
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 31602
	fdiv	r61, r61, r9				# 31602
	b		.b32989				# 31602
.b32987:
	fdiv	r9, r10, r61				# 31347
	fabs	r9, r9				# 322
	fatan	r61, r9				# 440
	addis	r9, r0, 16880				# 31369
	fmul	r9, r61, r9				# 31368
	addis	r61, r0, 16457
	ori		r61, r61, 4059				# 31368
	fdiv	r61, r9, r61				# 31368
	b		.b32986				# 31368
.b32982:
	lli		r28, intersection_point.2559				# 30784
	lw		r61, 0(r28)				# 30784
	lw		r9, 5(r15)				# 4475
	lw		r15, 0(r9)				# 30784
	fsub	r61, r61, r15				# 30775
	lw		r28, 2(r28)				# 30823
	lw		r9, 2(r9)				# 30823
	fsub	r9, r28, r9				# 30814
	fmul	r61, r61, r61				# 30868
	fmul	r9, r9, r9				# 30868
	fadd	r9, r61, r9				# 30862
	fsqrt	r9, r9				# 227
	addis	r61, r0, 16672				# 30862
	fdiv	r9, r9, r61				# 30853
	ffloor	r61, r9				# 765
	fsub	r9, r9, r61				# 30915
	addis	r61, r0, 16457
	ori		r61, r61, 4059				# 30915
	fmul	r9, r9, r61				# 30905
	fcos	r9, r9				# 133
	fmul	r9, r9, r9				# 30954
	addis	r61, r0, 17279				# 30987
	fmul	r28, r9, r61				# 30987
	sw		r28, 1(r62)				# 30987
	addis	r28, r0, 16256				# 31050
	fsub	r9, r28, r9				# 31049
	fmul	r9, r9, r61				# 31028
	sw		r9, 2(r62)				# 31028
	b		.b32964				# 31028
.b32980:
	lli		r9, intersection_point.2559				# 30625
	lw		r61, 1(r9)				# 30625
	addis	r9, r0, 16000				# 30625
	fmul	r9, r61, r9				# 30620
	fsin	r9, r9				# 40
	fmul	r28, r9, r9				# 30605
	addis	r61, r0, 17279				# 30650
	fmul	r9, r61, r28				# 30650
	sw		r9, 0(r62)				# 30650
	addis	r9, r0, 16256				# 30721
	fsub	r9, r9, r28				# 30711
	fmul	r9, r61, r9				# 30690
	sw		r9, 1(r62)				# 30690
	b		.b32964				# 30690
.b32965:
	lli		r10, intersection_point.2559				# 30169
	lw		r9, 0(r10)				# 30169
	lw		r51, 5(r15)				# 4475
	lw		r61, 0(r51)				# 30169
	fsub	r61, r9, r61				# 30160
	addis	r28, r0, 15692
	ori		r28, r28, 52429				# 30234
	fmul	r9, r61, r28				# 30227
	ffloor	r9, r9				# 765
	addis	r54, r0, 16800				# 30226
	fmul	r9, r9, r54				# 30217
	fsub	r9, r61, r9				# 30264
	addis	r15, r0, 16672				# 30264
	fcmp	r15, r9
	ble		.b32968				# 3096
.b32969:
	addi	r13, r0, 1				# 3096
.b32967:
	lw		r61, 2(r10)				# 30308
	lw		r9, 2(r51)				# 30308
	fsub	r61, r61, r9				# 30299
	fmul	r9, r61, r28				# 30366
	ffloor	r9, r9				# 765
	fmul	r9, r9, r54				# 30356
	fsub	r9, r61, r9				# 30404
	fcmp	r15, r9
	ble		.b32971				# 3096
.b32972:
	addi	r9, r0, 1				# 3096
	cmpi	r13, 0
	beq		.b32974				# 30467
.b32975:
	cmpi	r9, 0
	beq		.b32978				# 30489
.b32979:
	addis	r9, r0, 17279				# 30503
	sw		r9, 1(r62)				# 30439
	b		.b32964				# 30439
.b32978:
	addi	r9, r0, 0				# 30514
	sw		r9, 1(r62)				# 30439
	b		.b32964				# 30439
.b32974:
	cmpi	r9, 0
	beq		.b32976				# 30532
.b32977:
	addi	r9, r0, 0				# 30546
	sw		r9, 1(r62)				# 30439
	b		.b32964				# 30439
.b32976:
	addis	r9, r0, 17279				# 30555
	sw		r9, 1(r62)				# 30439
	b		.b32964				# 30439
.b32971:
	addi	r9, r0, 0				# 3096
	cmpi	r13, 0
	beq		.b32974				# 30467
	b		.b32975
.b32968:
	addi	r13, r0, 0				# 3096
	b		.b32967				# 3096
.b32962:
	addis	r28, r0, 16256				# 1837
	fdiv	r28, r28, r61				# 1837
	b		.b32959				# 1837
.b32960:
	addis	r28, r0, 16256				# 1801
	b		.b32959				# 1801
.b32957:
	lli		r9, nvector.2565				# 29409
	sw		r41, 0(r9)				# 29409
	sw		r30, 1(r9)				# 29409
	sw		r62, 2(r9)				# 29455
	b		.b32956				# 29455
.b32954:
	lw		r61, 4(r15)				# 3734
	lw		r9, 0(r61)				# 28996
	fneg	r9, r9				# 28981
	lli		r28, nvector.2565				# 28981
	sw		r9, 0(r28)				# 28981
	lw		r9, 1(r61)				# 29034
	fneg	r9, r9				# 29019
	sw		r9, 1(r28)				# 28981
	lw		r9, 2(r61)				# 29071
	fneg	r9, r9				# 29056
	sw		r9, 2(r28)				# 29056
	b		.b32946				# 29056
.b32947:
	lli		r9, intsec_rectside.2553				# 28828
	lw		r28, 0(r9)				# 28828
	addi	r61, r0, 0				# 1232
	lli		r9, nvector.2565				# 1232
	sw		r61, 0(r9)				# 1232
	sw		r61, 1(r9)				# 1232
	sw		r61, 2(r9)				# 28868
	addi	r10, r28, -1				# 28888
	lwx		r28, r62, r10				# 28918
	fcmp	r28, r61
	beq		.b32950				# 3126
.b32951:
	fcmp	r28, r61
	ble		.b32952				# 3156
.b32953:
	addis	r61, r0, 16256				# 856
	fneg	r61, r61				# 28888
	swx		r61, r10, r9				# 28888
	b		.b32946				# 28888
.b32952:
	addis	r61, r0, 49024				# 868
	fneg	r61, r61				# 28888
	swx		r61, r10, r9				# 28888
	b		.b32946				# 28888
.b32950:
	addi	r61, r0, 0				# 828
	fneg	r61, r61				# 28888
	swx		r61, r10, r9				# 28888
	b		.b32946				# 28888
.b32922:
	lwx		r25, r57, r9				# 21445
	lw		r37, 10(r25)				# 6561
	lw		r7, 1(r25)				# 2994
	lw		r62, 5(r25)				# 4475
	lw		r61, 0(r62)				# 21561
	fsub	r61, r28, r61				# 21547
	sw		r61, 0(r37)				# 21547
	lw		r61, 1(r62)				# 21603
	fsub	r61, r54, r61				# 21589
	sw		r61, 1(r37)				# 21547
	lw		r61, 2(r62)				# 21645
	fsub	r51, r30, r61				# 21631
	sw		r51, 2(r37)				# 21547
	cmpi	r7, 2
	beq		.b32925				# 21673
.b32926:
	cmpi	r7, 2
	ble		.b32924				# 21798
.b32928:
	lw		r13, 0(r37)				# 21847
	lw		r15, 1(r37)				# 21847
	fmul	r61, r13, r13				# 14374
	lw		r10, 4(r25)				# 3734
	lw		r62, 0(r10)				# 14374
	fmul	r41, r61, r62				# 14374
	fmul	r61, r15, r15				# 14400
	lw		r62, 1(r10)				# 14400
	fmul	r61, r61, r62				# 14374
	fadd	r41, r41, r61				# 14374
	fmul	r62, r51, r51				# 14426
	lw		r61, 2(r10)				# 14426
	fmul	r61, r62, r61				# 14374
	fadd	r61, r41, r61				# 14354
	lw		r62, 3(r25)				# 3553
	cmpi	r62, 0
	beq		.b32930				# 14456
.b32931:
	fmul	r41, r15, r51				# 14522
	lw		r62, 9(r25)				# 5989
	lw		r10, 0(r62)				# 14522
	fmul	r10, r41, r10				# 14503
	fadd	r61, r61, r10				# 14503
	fmul	r10, r51, r13				# 14556
	lw		r51, 1(r62)				# 14556
	fmul	r10, r10, r51				# 14503
	fadd	r10, r61, r10				# 14503
	fmul	r15, r13, r15				# 14590
	lw		r61, 2(r62)				# 14590
	fmul	r61, r15, r61				# 14503
	fadd	r61, r10, r61				# 14503
	cmpi	r7, 3
	beq		.b32933				# 21917
.b32934:
.b32932:
	sw		r61, 3(r37)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b32922				# 21420
	b		.b32920
.b32933:
	addis	r62, r0, 16256				# 21937
	fsub	r61, r61, r62				# 21937
	b		.b32932				# 21937
.b32930:
	cmpi	r7, 3
	beq		.b32933				# 21917
	b		.b32934
.b32924:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b32922				# 21420
	b		.b32920
.b32925:
	lw		r15, 4(r25)				# 4293
	lw		r61, 0(r37)				# 21728
	lw		r62, 1(r37)				# 21728
	lw		r10, 0(r15)				# 2037
	fmul	r61, r10, r61				# 2037
	lw		r10, 1(r15)				# 2052
	fmul	r62, r10, r62				# 2037
	fadd	r61, r61, r62				# 2037
	lw		r62, 2(r15)				# 2067
	fmul	r62, r62, r51				# 2037
	fadd	r61, r61, r62				# 21713
	sw		r61, 3(r37)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b32922				# 21420
	b		.b32920
	# pretrace_line.3058
pretrace_line.3058:
.Entry@pretrace_line.3058:
	sw		r1, 0(r3)				# 0
	lli		r10, image_size.2577				# 41125
	lli		r61, image_center.2580				# 41125
	lli		r9, scan_pitch.2583				# 41125
	lli		r62, screeny_dir.2595				# 41125
	lli		r15, screenz_dir.2598				# 41125
	lw		r28, 0(r9)				# 41125
	sw		r28, -1(r3)				# 41125
	lw		r9, 1(r61)				# 41157
	sub		r9, r2, r9				# 41143
	itof	r9, r9				# 639
	fmul	r61, r28, r9				# 41113
	lw		r9, 0(r62)				# 41195
	fmul	r9, r61, r9				# 41195
	lw		r28, 0(r15)				# 41195
	fadd	r9, r9, r28				# 41185
	sw		r9, -2(r3)				# 41185
	lw		r9, 1(r62)				# 41254
	fmul	r28, r61, r9				# 41254
	lw		r9, 1(r15)				# 41254
	fadd	r9, r28, r9				# 41244
	sw		r9, -3(r3)				# 41244
	lw		r9, 2(r62)				# 41313
	fmul	r9, r61, r9				# 41313
	lw		r61, 2(r15)				# 41313
	fadd	r9, r9, r61				# 41303
	sw		r9, -4(r3)				# 41303
	lw		r9, 0(r10)				# 41384
	addi	r61, r9, -1				# 41362
	sw		r5, -5(r3)				# 40479
	sw		r61, -6(r3)				# 40479
	cmpi	r61, 0
	bge		.b33057				# 40479
.b33058:
	blr				# 41064
.b33057:
	lli		r9, image_center.2580				# 40545
	lw		r9, 0(r9)				# 40545
	sub		r9, r61, r9				# 40531
	itof	r28, r9				# 639
	lw		r9, -1(r3)				# 40501
	fmul	r51, r9, r28				# 40501
	lli		r10, screenx_dir.2592				# 40595
	lw		r9, 0(r10)				# 40595
	fmul	r28, r51, r9				# 40595
	lw		r9, -2(r3)				# 40574
	fadd	r62, r28, r9				# 40574
	lli		r13, ptrace_dirvec.2601				# 40574
	sw		r62, 0(r13)				# 40574
	lw		r9, 1(r10)				# 40653
	fmul	r9, r51, r9				# 40653
	lw		r28, -3(r3)				# 40632
	fadd	r15, r9, r28				# 40632
	sw		r15, 1(r13)				# 40574
	lw		r9, 2(r10)				# 40711
	fmul	r9, r51, r9				# 40711
	lw		r28, -4(r3)				# 40690
	fadd	r10, r9, r28				# 40690
	sw		r10, 2(r13)				# 40574
	fmul	r28, r62, r62				# 1729
	fmul	r9, r15, r15				# 1729
	fadd	r28, r28, r9				# 1729
	fmul	r9, r10, r10				# 1729
	fadd	r9, r28, r9				# 1723
	fsqrt	r51, r9				# 227
	addi	r9, r0, 0				# 1774
	fcmp	r51, r9
	beq		.b33060				# 3126
.b33061:
	addis	r28, r0, 16256				# 1837
	fdiv	r28, r28, r51				# 1837
.b33059:
	fmul	r62, r62, r28				# 1851
	sw		r62, 0(r13)				# 1851
	fmul	r62, r15, r28				# 1875
	sw		r62, 1(r13)				# 1851
	fmul	r28, r10, r28				# 1899
	sw		r28, 2(r13)				# 40574
	lli		r28, rgb.2574				# 1232
	sw		r9, 0(r28)				# 1232
	sw		r9, 1(r28)				# 1232
	sw		r9, 2(r28)				# 40574
	lli		r15, viewpoint.2529				# 1353
	lw		r28, 0(r15)				# 1353
	lli		r62, startp.2586				# 1353
	sw		r28, 0(r62)				# 1353
	lw		r28, 1(r15)				# 1376
	sw		r28, 1(r62)				# 1353
	lw		r28, 2(r15)				# 1399
	sw		r28, 2(r62)				# 40574
	addis	r62, r0, 16256				# 40833
	lw		r28, 0(r3)				# 40833
	lwx		r61, r28, r61				# 40833
	sw		r61, -7(r3)				# 40833
	addi	r51, r0, 0				# 32983
T.loop33063:
	sw		r9, -8(r3)				# 32983
	sw		r62, -9(r3)				# 32983
	sw		r51, -10(r3)				# 32983
	cmpi	r51, 4
	ble		.b33064				# 32983
.b33062:
	lw		r28, -7(r3)				# 6744
	lw		r62, 0(r28)				# 6744
	lli		r61, rgb.2574				# 1353
	lw		r9, 0(r61)				# 1353
	sw		r9, 0(r62)				# 1353
	lw		r9, 1(r61)				# 1376
	sw		r9, 1(r62)				# 1353
	lw		r9, 2(r61)				# 1399
	sw		r9, 2(r62)				# 40574
	lw		r9, 6(r28)				# 7787
	lw		r61, -5(r3)				# 40574
	sw		r61, 0(r9)				# 40574
	addi	r9, r0, 0				# 39734
	sw		r9, -11(r3)				# 39734
.b33569:
	lw		r28, -7(r3)				# 7046
	lw		r61, 2(r28)				# 7046
	lwx		r61, r61, r9				# 39789
	cmpi	r61, 0
	bge		.b33571				# 39832
.b33567:
	lw		r9, -6(r3)				# 40992
	addi	r61, r9, -1				# 40992
	lw		r9, -5(r3)				# 979
	addi	r5, r9, 1				# 979
	cmpi	r5, 5
	bge		.b33577				# 1000
.b33578:
.b33576:
	sw		r5, -5(r3)				# 40479
	sw		r61, -6(r3)				# 40479
	cmpi	r61, 0
	bge		.b33057				# 40479
	b		.b33058
.b33577:
	addi	r5, r5, -5				# 1017
	b		.b33576				# 1017
.b33571:
	lw		r61, 3(r28)				# 7193
	lwx		r61, r61, r9				# 39973
	cmpi	r61, 0
	beq		.b33573				# 39973
.b33575:
	lw		r61, 6(r28)				# 7634
	lw		r15, 0(r61)				# 40004
	addi	r61, r0, 0				# 1232
	lli		r62, diffuse_ray.2571				# 1232
	sw		r61, 0(r62)				# 1232
	sw		r61, 1(r62)				# 1232
	sw		r61, 2(r62)				# 40040
	lw		r62, 7(r28)				# 7939
	lw		r61, 1(r28)				# 6897
	lli		r28, dirvecs.2611				# 40158
	lwx		r1, r28, r15				# 40158
	lwx		r2, r62, r9				# 40158
	lwx		r5, r61, r9				# 40158
	mflr	r63
	sw		r63, -12(r3)
	addi	r3, r3, -13
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 13
	lw		r63, -12(r3)
	mtlr	r63				# 40158
	lw		r9, -7(r3)				# 7491
	lw		r61, 5(r9)				# 7491
	lw		r9, -11(r3)				# 40298
	lwx		r9, r61, r9				# 40298
	addi	r61, r0, 0				# 1353
	sw		r61, 0(r9)				# 1353
	sw		r61, 1(r9)				# 1353
	sw		r61, 2(r9)				# 1399
.b33573:
	lw		r9, -11(r3)				# 40355
	addi	r9, r9, 1				# 40355
	sw		r9, -11(r3)				# 39734
	cmpi	r9, 4
	ble		.b33569				# 39734
	b		.b33567
.b33064:
	lw		r54, -7(r3)				# 7046
	lw		r13, 2(r54)				# 7046
	sw		r13, -11(r3)				# 7046
	addis	r9, r0, 20078
	ori		r9, r9, 27432				# 26657
	lli		r30, tmin.2556				# 26657
	sw		r9, 0(r30)				# 26657
	lli		r9, or_net.2547				# 26687
	lw		r2, 0(r9)				# 26687
	sw		r2, -12(r3)				# 26687
	addi	r15, r0, 0				# 26148
	lwx		r7, r2, r15				# 26148
	lw		r9, 0(r7)				# 26181
	cmpi	r9, -1
	beq		.b33066				# 26217
.b33069:
	cmpi	r9, 99
	beq		.b33071				# 26267
.b33072:
	lli		r37, objects.2523				# 15582
	lwx		r19, r37, r9				# 15582
	lli		r9, startp.2586				# 15621
	lw		r57, 0(r9)				# 15621
	lw		r28, 5(r19)				# 4475
	lw		r61, 0(r28)				# 15621
	fsub	r39, r57, r61				# 15611
	lw		r25, 1(r9)				# 15659
	lw		r61, 1(r28)				# 15659
	fsub	r23, r25, r61				# 15649
	lw		r41, 2(r9)				# 15697
	lw		r9, 2(r28)				# 15697
	fsub	r48, r41, r9				# 15687
	lw		r14, 1(r19)				# 2994
	cmpi	r14, 1
	beq		.b33223				# 15753
.b33224:
	cmpi	r14, 2
	beq		.b33282				# 15817
.b33283:
	lli		r9, ptrace_dirvec.2601				# 15037
	lw		r26, 0(r9)				# 15037
	lw		r46, 1(r9)				# 15037
	lw		r17, 2(r9)				# 15037
	fmul	r9, r26, r26				# 14374
	lw		r28, 4(r19)				# 3734
	lw		r53, 0(r28)				# 14374
	fmul	r61, r9, r53				# 14374
	fmul	r9, r46, r46				# 14400
	lw		r33, 1(r28)				# 14400
	fmul	r9, r9, r33				# 14374
	fadd	r61, r61, r9				# 14374
	fmul	r9, r17, r17				# 14426
	lw		r50, 2(r28)				# 14426
	fmul	r9, r9, r50				# 14374
	fadd	r28, r61, r9				# 14354
	lw		r10, 3(r19)				# 3553
	cmpi	r10, 0
	beq		.b33287				# 14456
.b33288:
	fmul	r9, r46, r17				# 14522
	lw		r29, 9(r19)				# 5989
	lw		r61, 0(r29)				# 14522
	fmul	r9, r9, r61				# 14503
	fadd	r61, r28, r9				# 14503
	fmul	r9, r17, r26				# 14556
	lw		r28, 1(r29)				# 14556
	fmul	r9, r9, r28				# 14503
	fadd	r61, r61, r9				# 14503
	fmul	r9, r26, r46				# 14590
	lw		r28, 2(r29)				# 14590
	fmul	r9, r9, r28				# 14503
	fadd	r28, r61, r9				# 14503
	addi	r12, r0, 0				# 3126
	fcmp	r28, r12
	beq		.b33289				# 3126
.b33290:
	fmul	r9, r26, r39				# 14680
	fmul	r9, r9, r53				# 14680
	fmul	r61, r46, r23				# 14713
	fmul	r61, r61, r33				# 14680
	fadd	r9, r9, r61				# 14680
	fmul	r61, r17, r48				# 14746
	fmul	r61, r61, r50				# 14680
	fadd	r9, r9, r61				# 14660
	cmpi	r10, 0
	beq		.b33292				# 14777
.b33293:
	fmul	r29, r17, r23				# 14851
	fmul	r61, r46, r48				# 14851
	fadd	r42, r29, r61				# 14850
	lw		r29, 9(r19)				# 5989
	lw		r61, 0(r29)				# 14850
	fmul	r61, r42, r61				# 14850
	fmul	r42, r26, r48				# 14895
	fmul	r17, r17, r39				# 14895
	fadd	r17, r42, r17				# 14894
	lw		r42, 1(r29)				# 14894
	fmul	r17, r17, r42				# 14850
	fadd	r17, r61, r17				# 14850
	fmul	r26, r26, r23				# 14939
	fmul	r61, r46, r39				# 14939
	fadd	r46, r26, r61				# 14938
	lw		r61, 2(r29)				# 14938
	fmul	r61, r46, r61				# 14850
	fadd	r61, r17, r61				# 14837
	addis	r46, r0, 16384				# 2996
	fdiv	r61, r61, r46				# 14824
	fadd	r9, r9, r61				# 14824
.b33291:
	fmul	r61, r39, r39				# 14374
	fmul	r46, r61, r53				# 14374
	fmul	r61, r23, r23				# 14400
	fmul	r61, r61, r33				# 14374
	fadd	r61, r46, r61				# 14374
	fmul	r46, r48, r48				# 14426
	fmul	r46, r46, r50				# 14374
	fadd	r61, r61, r46				# 14354
	cmpi	r10, 0
	beq		.b33295				# 14456
.b33296:
	fmul	r10, r23, r48				# 14522
	lw		r46, 9(r19)				# 5989
	lw		r26, 0(r46)				# 14522
	fmul	r10, r10, r26				# 14503
	fadd	r26, r61, r10				# 14503
	fmul	r61, r48, r39				# 14556
	lw		r10, 1(r46)				# 14556
	fmul	r61, r61, r10				# 14503
	fadd	r26, r26, r61				# 14503
	fmul	r10, r39, r23				# 14590
	lw		r61, 2(r46)				# 14590
	fmul	r61, r10, r61				# 14503
	fadd	r61, r26, r61				# 14503
	cmpi	r14, 3
	beq		.b33298				# 15282
.b33299:
.b33297:
	fmul	r10, r9, r9				# 15338
	fmul	r61, r28, r61				# 15338
	fsub	r61, r10, r61				# 15330
	fcmp	r61, r12
	ble		.b33300				# 3156
.b33301:
	fsqrt	r61, r61				# 227
	lw		r10, 6(r19)				# 3372
	cmpi	r10, 0
	beq		.b33303				# 15425
.b33304:
.b33302:
	fsub	r9, r61, r9				# 15491
	fdiv	r9, r9, r28				# 15472
	lli		r61, solver_dist.2550				# 15472
	sw		r9, 0(r61)				# 15472
	addi	r9, r0, 1				# 15510
.b33306:
	lli		r23, solver_dist.2550				# 26433
	lw		r61, 0(r23)				# 26433
	lw		r9, 0(r30)				# 26466
	fcmp	r9, r61
	ble		.b33070				# 3096
.b33308:
	addi	r61, r0, 1				# 25897
	lwx		r28, r7, r61				# 25897
	cmpi	r28, -1
	beq		.b33070				# 25928
.b33311:
	lli		r9, and_net.2541				# 25953
	lwx		r39, r9, r28				# 25953
	addi	r28, r0, 0				# 25005
	lwx		r48, r39, r28				# 25005
	cmpi	r48, -1
	beq		.b33312				# 25042
.b33315:
	lwx		r29, r37, r48				# 15582
	lw		r10, 5(r29)				# 4475
	lw		r9, 0(r10)				# 15621
	fsub	r14, r57, r9				# 15611
	lw		r9, 1(r10)				# 15659
	fsub	r19, r25, r9				# 15649
	lw		r9, 2(r10)				# 15697
	fsub	r17, r41, r9				# 15687
	lw		r50, 1(r29)				# 2994
	cmpi	r50, 1
	beq		.b33317				# 15753
.b33318:
	cmpi	r50, 2
	beq		.b33376				# 15817
.b33377:
	lli		r9, ptrace_dirvec.2601				# 15037
	lw		r47, 0(r9)				# 15037
	lw		r27, 1(r9)				# 15037
	lw		r53, 2(r9)				# 15037
	fmul	r9, r47, r47				# 14374
	lw		r10, 4(r29)				# 3734
	lw		r36, 0(r10)				# 14374
	fmul	r46, r9, r36				# 14374
	fmul	r9, r27, r27				# 14400
	lw		r1, 1(r10)				# 14400
	fmul	r9, r9, r1				# 14374
	fadd	r46, r46, r9				# 14374
	fmul	r9, r53, r53				# 14426
	lw		r56, 2(r10)				# 14426
	fmul	r9, r9, r56				# 14374
	fadd	r10, r46, r9				# 14354
	lw		r26, 3(r29)				# 3553
	cmpi	r26, 0
	beq		.b33381				# 14456
.b33382:
	fmul	r12, r27, r53				# 14522
	lw		r46, 9(r29)				# 5989
	lw		r9, 0(r46)				# 14522
	fmul	r9, r12, r9				# 14503
	fadd	r10, r10, r9				# 14503
	fmul	r12, r53, r47				# 14556
	lw		r9, 1(r46)				# 14556
	fmul	r9, r12, r9				# 14503
	fadd	r12, r10, r9				# 14503
	fmul	r10, r47, r27				# 14590
	lw		r9, 2(r46)				# 14590
	fmul	r9, r10, r9				# 14503
	fadd	r10, r12, r9				# 14503
	addi	r42, r0, 0				# 3126
	fcmp	r10, r42
	beq		.b33383				# 3126
.b33384:
	fmul	r9, r47, r14				# 14680
	fmul	r46, r9, r36				# 14680
	fmul	r9, r27, r19				# 14713
	fmul	r9, r9, r1				# 14680
	fadd	r46, r46, r9				# 14680
	fmul	r9, r53, r17				# 14746
	fmul	r9, r9, r56				# 14680
	fadd	r46, r46, r9				# 14660
	cmpi	r26, 0
	beq		.b33386				# 14777
.b33387:
	fmul	r9, r53, r19				# 14851
	fmul	r12, r27, r17				# 14851
	fadd	r33, r9, r12				# 14850
	lw		r9, 9(r29)				# 5989
	lw		r12, 0(r9)				# 14850
	fmul	r33, r33, r12				# 14850
	fmul	r12, r47, r17				# 14895
	fmul	r53, r53, r14				# 14895
	fadd	r53, r12, r53				# 14894
	lw		r12, 1(r9)				# 14894
	fmul	r12, r53, r12				# 14850
	fadd	r33, r33, r12				# 14850
	fmul	r53, r47, r19				# 14939
	fmul	r12, r27, r14				# 14939
	fadd	r12, r53, r12				# 14938
	lw		r9, 2(r9)				# 14938
	fmul	r9, r12, r9				# 14850
	fadd	r12, r33, r9				# 14837
	addis	r9, r0, 16384				# 2996
	fdiv	r9, r12, r9				# 14824
	fadd	r46, r46, r9				# 14824
.b33385:
	fmul	r9, r14, r14				# 14374
	fmul	r12, r9, r36				# 14374
	fmul	r9, r19, r19				# 14400
	fmul	r9, r9, r1				# 14374
	fadd	r12, r12, r9				# 14374
	fmul	r9, r17, r17				# 14426
	fmul	r9, r9, r56				# 14374
	fadd	r9, r12, r9				# 14354
	cmpi	r26, 0
	beq		.b33389				# 14456
.b33390:
	fmul	r26, r19, r17				# 14522
	lw		r53, 9(r29)				# 5989
	lw		r12, 0(r53)				# 14522
	fmul	r26, r26, r12				# 14503
	fadd	r26, r9, r26				# 14503
	fmul	r17, r17, r14				# 14556
	lw		r9, 1(r53)				# 14556
	fmul	r9, r17, r9				# 14503
	fadd	r17, r26, r9				# 14503
	fmul	r26, r14, r19				# 14590
	lw		r9, 2(r53)				# 14590
	fmul	r9, r26, r9				# 14503
	fadd	r9, r17, r9				# 14503
	cmpi	r50, 3
	beq		.b33392				# 15282
.b33393:
.b33391:
	fmul	r26, r46, r46				# 15338
	fmul	r9, r10, r9				# 15338
	fsub	r9, r26, r9				# 15330
	fcmp	r9, r42
	ble		.b33394				# 3156
.b33395:
	fsqrt	r9, r9				# 227
	lw		r26, 6(r29)				# 3372
	cmpi	r26, 0
	beq		.b33397				# 15425
.b33398:
.b33396:
	fsub	r9, r9, r46				# 15491
	fdiv	r9, r9, r10				# 15472
	sw		r9, 0(r23)				# 15472
	addi	r50, r0, 1				# 15510
	lw		r10, 0(r23)				# 25149
	addi	r19, r0, 0				# 25186
	fcmp	r10, r19
	ble		.b33403				# 3096
.b33405:
	lw		r9, 0(r30)				# 25216
	fcmp	r9, r10
	ble		.b33403				# 3096
.b33407:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 25260
	fadd	r33, r10, r9				# 25252
	lli		r10, ptrace_dirvec.2601				# 25289
	lw		r9, 0(r10)				# 25289
	fmul	r9, r9, r33				# 25289
	fadd	r46, r9, r57				# 25280
	lw		r9, 1(r10)				# 25336
	fmul	r9, r9, r33				# 25336
	fadd	r12, r9, r25				# 25327
	lw		r9, 2(r10)				# 25383
	fmul	r9, r9, r33				# 25383
	fadd	r42, r9, r41				# 25374
	addi	r10, r0, 0				# 23025
	lwx		r9, r39, r10				# 23025
	cmpi	r9, -1
	beq		.b33410				# 23052
.b33411:
	lwx		r29, r37, r9				# 23095
	lw		r26, 5(r29)				# 4475
	lw		r9, 0(r26)				# 22709
	fsub	r53, r46, r9				# 22700
	lw		r9, 1(r26)				# 22741
	fsub	r14, r12, r9				# 22732
	lw		r9, 2(r26)				# 22773
	fsub	r56, r42, r9				# 22764
	lw		r36, 1(r29)				# 2994
	cmpi	r36, 1
	beq		.b33413				# 22824
.b33414:
	cmpi	r36, 2
	beq		.b33426				# 22882
.b33427:
	fmul	r9, r53, r53				# 14374
	lw		r1, 4(r29)				# 3734
	lw		r26, 0(r1)				# 14374
	fmul	r26, r9, r26				# 14374
	fmul	r9, r14, r14				# 14400
	lw		r17, 1(r1)				# 14400
	fmul	r9, r9, r17				# 14374
	fadd	r26, r26, r9				# 14374
	fmul	r17, r56, r56				# 14426
	lw		r9, 2(r1)				# 14426
	fmul	r9, r17, r9				# 14374
	fadd	r9, r26, r9				# 14354
	lw		r26, 3(r29)				# 3553
	cmpi	r26, 0
	beq		.b33439				# 14456
.b33440:
	fmul	r17, r14, r56				# 14522
	lw		r1, 9(r29)				# 5989
	lw		r26, 0(r1)				# 14522
	fmul	r26, r17, r26				# 14503
	fadd	r17, r9, r26				# 14503
	fmul	r9, r56, r53				# 14556
	lw		r26, 1(r1)				# 14556
	fmul	r9, r9, r26				# 14503
	fadd	r26, r17, r9				# 14503
	fmul	r14, r53, r14				# 14590
	lw		r9, 2(r1)				# 14590
	fmul	r9, r14, r9				# 14503
	fadd	r9, r26, r9				# 14503
	cmpi	r36, 3
	beq		.b33442				# 22583
.b33443:
	lw		r26, 6(r29)				# 3372
	fcmp	r19, r9
	ble		.b33445				# 3186
.b33446:
	addi	r9, r0, 1				# 3186
	cmpi	r26, 0
	beq		.b33448				# 765
.b33449:
	cmpi	r9, 0
	beq		.b33450				# 775
.b33451:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b33403:
	addi	r28, r28, 1				# 25658
	lwx		r48, r39, r28				# 25005
	cmpi	r48, -1
	beq		.b33312				# 25042
	b		.b33315
.b33312:
	addi	r61, r61, 1				# 26034
	lwx		r28, r7, r61				# 25897
	cmpi	r28, -1
	beq		.b33070				# 25928
	b		.b33311
.b33070:
	addi	r15, r15, 1				# 26566
	lwx		r7, r2, r15				# 26148
	lw		r9, 0(r7)				# 26181
	cmpi	r9, -1
	beq		.b33066				# 26217
	b		.b33069
.b33066:
	lw		r9, 0(r30)				# 26728
	sw		r9, -13(r3)				# 26728
	addis	r61, r0, 48588
	ori		r61, r61, 52429				# 26755
	fcmp	r9, r61
	ble		.b33459				# 3096
.b33460:
	addis	r61, r0, 19646
	ori		r61, r61, 48160				# 26781
	fcmp	r61, r9
	ble		.b33461				# 3096
.b33462:
	addi	r9, r0, 1				# 3096
.b33464:
	lli		r9, intersected_object_id.2562				# 33094
	lw		r28, 0(r9)				# 33094
	sw		r28, -14(r3)				# 33094
	lli		r9, objects.2523				# 33142
	lwx		r37, r9, r28				# 33142
	lw		r9, 2(r37)				# 3185
	sw		r9, -15(r3)				# 3185
	lw		r7, 7(r37)				# 5033
	sw		r7, -16(r3)				# 5033
	lw		r9, 0(r7)				# 33238
	fmul	r25, r9, r62				# 33224
	sw		r25, -17(r3)				# 33224
	lw		r9, 1(r37)				# 2994
	cmpi	r9, 1
	beq		.b33470				# 29818
.b33471:
	cmpi	r9, 2
	beq		.b33477				# 29873
.b33478:
	lli		r15, intersection_point.2559				# 29136
	lw		r9, 0(r15)				# 29136
	lw		r61, 5(r37)				# 4475
	lw		r10, 0(r61)				# 29136
	fsub	r10, r9, r10				# 29127
	lw		r9, 1(r15)				# 29188
	lw		r30, 1(r61)				# 29188
	fsub	r26, r9, r30				# 29179
	lw		r15, 2(r15)				# 29240
	lw		r9, 2(r61)				# 29240
	fsub	r46, r15, r9				# 29231
	lw		r15, 4(r37)				# 3734
	lw		r9, 0(r15)				# 29293
	fmul	r57, r10, r9				# 29284
	lw		r9, 1(r15)				# 29325
	fmul	r61, r26, r9				# 29316
	lw		r9, 2(r15)				# 29357
	fmul	r41, r46, r9				# 29348
	lw		r9, 3(r37)				# 3553
	cmpi	r9, 0
	beq		.b33480				# 29381
.b33481:
	lw		r30, 9(r37)				# 6369
	lw		r9, 2(r30)				# 29517
	fmul	r15, r26, r9				# 29517
	lw		r39, 1(r30)				# 29539
	fmul	r23, r46, r39				# 29517
	fadd	r15, r15, r23				# 29510
	addis	r23, r0, 16384				# 2996
	fdiv	r15, r15, r23				# 29504
	fadd	r57, r57, r15				# 29489
	lli		r15, nvector.2565				# 29489
	sw		r57, 0(r15)				# 29489
	fmul	r9, r10, r9				# 29592
	lw		r30, 0(r30)				# 29614
	fmul	r57, r46, r30				# 29592
	fadd	r9, r9, r57				# 29585
	fdiv	r9, r9, r23				# 29579
	fadd	r9, r61, r9				# 29564
	sw		r9, 1(r15)				# 29489
	fmul	r9, r10, r39				# 29667
	fmul	r61, r26, r30				# 29667
	fadd	r9, r9, r61				# 29660
	fdiv	r9, r9, r23				# 29654
	fadd	r9, r41, r9				# 29639
	sw		r9, 2(r15)				# 29639
.b33479:
	lw		r10, 6(r37)				# 3372
	lli		r41, nvector.2565				# 1729
	lw		r15, 0(r41)				# 1729
	fmul	r9, r15, r15				# 1729
	lw		r57, 1(r41)				# 1743
	fmul	r61, r57, r57				# 1729
	fadd	r9, r9, r61				# 1729
	lw		r30, 2(r41)				# 1757
	fmul	r61, r30, r30				# 1729
	fadd	r9, r9, r61				# 1723
	fsqrt	r61, r9				# 227
	addi	r9, r0, 0				# 1774
	fcmp	r61, r9
	beq		.b33483				# 3126
.b33484:
	cmpi	r10, 0
	beq		.b33485				# 1810
.b33486:
	addis	r9, r0, 49024				# 1822
	fdiv	r61, r9, r61				# 1822
.b33482:
	fmul	r9, r15, r61				# 1851
	sw		r9, 0(r41)				# 1851
	fmul	r9, r57, r61				# 1875
	sw		r9, 1(r41)				# 1851
	fmul	r9, r30, r61				# 1899
	sw		r9, 2(r41)				# 1899
.b33469:
	lli		r9, intersection_point.2559				# 1353
	lw		r41, 0(r9)				# 1353
	sw		r41, -18(r3)				# 1353
	lli		r61, startp.2586				# 1353
	sw		r41, 0(r61)				# 1353
	lw		r57, 1(r9)				# 1376
	sw		r57, -19(r3)				# 1376
	sw		r57, 1(r61)				# 1353
	lw		r15, 2(r9)				# 1399
	sw		r15, -20(r3)				# 1399
	sw		r15, 2(r61)				# 33272
	lw		r10, 0(r37)				# 2815
	lw		r61, 8(r37)				# 5421
	lw		r9, 0(r61)				# 30014
	lli		r30, texture_color.2568				# 30014
	sw		r9, 0(r30)				# 30014
	lw		r9, 1(r61)				# 30052
	sw		r9, 1(r30)				# 30014
	lw		r9, 2(r61)				# 30092
	sw		r9, 2(r30)				# 30014
	cmpi	r10, 1
	beq		.b33488				# 30131
.b33489:
	cmpi	r10, 2
	beq		.b33503				# 30575
.b33504:
	cmpi	r10, 3
	beq		.b33505				# 30745
.b33506:
	cmpi	r10, 4
	beq		.b33507				# 31084
.b33487:
	slwi	r61, r28, 2				# 33407
	lli		r9, intsec_rectside.2553				# 33407
	lw		r9, 0(r9)				# 33407
	sw		r9, -21(r3)				# 33407
	add		r9, r61, r9				# 33385
	swx		r9, r51, r13				# 33272
	lw		r9, 1(r54)				# 6897
	lwx		r9, r9, r51				# 33510
	sw		r41, 0(r9)				# 1353
	sw		r57, 1(r9)				# 1353
	sw		r15, 2(r9)				# 33510
	lw		r61, 3(r54)				# 7193
	lw		r9, 0(r7)				# 33623
	addis	r28, r0, 16128				# 33623
	fcmp	r28, r9
	ble		.b33519				# 3096
.b33520:
	addi	r9, r0, 0				# 33655
	swx		r9, r51, r61				# 33655
.b33518:
	addis	r25, r0, 49152				# 33945
	lli		r13, ptrace_dirvec.2601				# 1949
	lw		r30, 0(r13)				# 1949
	lli		r9, nvector.2565				# 1949
	lw		r51, 0(r9)				# 1949
	sw		r51, -22(r3)				# 1949
	fmul	r28, r30, r51				# 1949
	lw		r61, 1(r13)				# 1967
	lw		r10, 1(r9)				# 1967
	sw		r10, -23(r3)				# 1967
	fmul	r15, r61, r10				# 1949
	fadd	r15, r28, r15				# 1949
	lw		r28, 2(r13)				# 1985
	lw		r9, 2(r9)				# 1985
	sw		r9, -24(r3)				# 1985
	fmul	r54, r28, r9				# 1949
	fadd	r15, r15, r54				# 33945
	fmul	r54, r25, r15				# 33937
	fmul	r15, r54, r51				# 2129
	fadd	r15, r30, r15				# 2117
	sw		r15, -25(r3)				# 2117
	sw		r15, 0(r13)				# 2117
	fmul	r15, r54, r10				# 2171
	fadd	r61, r61, r15				# 2159
	sw		r61, -26(r3)				# 2159
	sw		r61, 1(r13)				# 2117
	fmul	r9, r54, r9				# 2213
	fadd	r9, r28, r9				# 2201
	sw		r9, -27(r3)				# 2201
	sw		r9, 2(r13)				# 33988
	lw		r9, 1(r7)				# 34042
	fmul	r9, r62, r9				# 34022
	sw		r9, -28(r3)				# 34022
	addi	r1, r0, 0				# 34076
	mflr	r63
	sw		r63, -29(r3)
	addi	r3, r3, -30
	bl		shadow_check_one_or_matrix.2936
	addi	r3, r3, 30
	lw		r63, -29(r3)
	mtlr	r63				# 34076
	cmpi	r2, 0
	beq		.b33522				# 34076
.b33521:
	lw		r10, -18(r3)				# 1353
	lli		r9, startp_fast.2589				# 1353
	sw		r10, 0(r9)				# 1353
	lw		r62, -19(r3)				# 1353
	sw		r62, 1(r9)				# 1353
	lw		r54, -20(r3)				# 22055
	sw		r54, 2(r9)				# 22055
	lli		r9, n_objects.2512				# 22105
	lw		r9, 0(r9)				# 22105
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b33531				# 21420
.b33529:
	lli		r9, n_reflections.2634				# 34376
	lw		r9, 0(r9)				# 34376
	addi	r9, r9, -1				# 34357
	sw		r9, -29(r3)				# 32237
	cmpi	r9, 0
	bge		.b33546				# 32237
.b33544:
	addis	r9, r0, 15820
	ori		r9, r9, 52429				# 34437
	lw		r61, -9(r3)				# 3096
	fcmp	r61, r9
	ble		.b33062				# 3096
.b33561:
	lw		r15, -10(r3)				# 34463
	cmpi	r15, 4
	bge		.b33562				# 34463
.b33564:
	addi	r28, r15, 1				# 34484
	lw		r62, -11(r3)				# 34484
	addi	r9, r0, -1				# 34484
	swx		r9, r28, r62				# 34484
	lw		r9, -15(r3)				# 34523
	cmpi	r9, 2
	beq		.b33565				# 34523
	b		.b33062
.b33565:
	lw		r9, -16(r3)				# 34576
	lw		r9, 0(r9)				# 34576
	addis	r28, r0, 16256				# 34565
	fsub	r9, r28, r9				# 34565
	fmul	r62, r61, r9				# 34551
	addi	r51, r15, 1				# 34604
	lw		r9, -13(r3)				# 34604
	lw		r61, -8(r3)				# 34604
	fadd	r9, r61, r9				# 34604
	b		T.loop33063				# 34604
.b33562:
	lw		r9, -15(r3)				# 34523
	cmpi	r9, 2
	beq		.b33565				# 34523
	b		.b33062
.b33546:
	lli		r61, reflections.2631				# 32262
	lwx		r9, r61, r9				# 32262
	sw		r9, -30(r3)				# 32262
	lw		r1, 1(r9)				# 8279
	sw		r1, -31(r3)				# 8279
	mflr	r63
	sw		r63, -32(r3)
	addi	r3, r3, -33
	bl		judge_intersection_fast.2965
	addi	r3, r3, 33
	lw		r63, -32(r3)
	mtlr	r63				# 32333
	cmpi	r2, 0
	beq		.b33548				# 32333
.b33550:
	lw		r9, -14(r3)				# 32393
	slwi	r61, r9, 2				# 32393
	lw		r9, -21(r3)				# 32376
	add		r61, r61, r9				# 32376
	lw		r9, -30(r3)				# 8211
	lw		r9, 0(r9)				# 8211
	cmp		r61, r9
	beq		.b33551				# 32454
.b33548:
	lw		r9, -29(r3)				# 32856
	addi	r9, r9, -1				# 32856
	sw		r9, -29(r3)				# 32237
	cmpi	r9, 0
	bge		.b33546				# 32237
	b		.b33544
.b33551:
	lw		r2, -12(r3)				# 32502
	addi	r1, r0, 0				# 32502
	mflr	r63
	sw		r63, -32(r3)
	addi	r3, r3, -33
	bl		shadow_check_one_or_matrix.2936
	addi	r3, r3, 33
	lw		r63, -32(r3)
	mtlr	r63				# 32502
	cmpi	r2, 0
	beq		.b33553				# 32502
	b		.b33548
.b33553:
	lw		r9, -31(r3)				# 8078
	lw		r15, 0(r9)				# 8078
	lw		r28, 0(r15)				# 1949
	lw		r9, -22(r3)				# 1949
	fmul	r61, r9, r28				# 1949
	lw		r62, 1(r15)				# 1967
	lw		r9, -23(r3)				# 1949
	fmul	r9, r9, r62				# 1949
	fadd	r61, r61, r9				# 1949
	lw		r15, 2(r15)				# 1985
	lw		r9, -24(r3)				# 1949
	fmul	r9, r9, r15				# 1949
	fadd	r9, r61, r9				# 32566
	lw		r61, -30(r3)				# 8350
	lw		r10, 2(r61)				# 8350
	lw		r61, -17(r3)				# 32670
	fmul	r61, r10, r61				# 32670
	fmul	r9, r61, r9				# 32657
	lw		r61, -25(r3)				# 1949
	fmul	r61, r61, r28				# 1949
	lw		r28, -26(r3)				# 1949
	fmul	r28, r28, r62				# 1949
	fadd	r61, r61, r28				# 1949
	lw		r28, -27(r3)				# 1949
	fmul	r28, r28, r15				# 1949
	fadd	r61, r61, r28				# 32719
	fmul	r51, r10, r61				# 32705
	addi	r62, r0, 0				# 31910
	fcmp	r9, r62
	ble		.b33555				# 3156
.b33557:
	lli		r28, rgb.2574				# 2129
	lw		r15, 0(r28)				# 2129
	lli		r10, texture_color.2568				# 2141
	lw		r61, 0(r10)				# 2141
	fmul	r61, r9, r61				# 2129
	fadd	r61, r15, r61				# 2117
	sw		r61, 0(r28)				# 2117
	lw		r61, 1(r28)				# 2171
	lw		r15, 1(r10)				# 2183
	fmul	r15, r9, r15				# 2171
	fadd	r61, r61, r15				# 2159
	sw		r61, 1(r28)				# 2117
	lw		r15, 2(r28)				# 2213
	lw		r61, 2(r10)				# 2225
	fmul	r9, r9, r61				# 2213
	fadd	r9, r15, r9				# 2201
	sw		r9, 2(r28)				# 2201
	fcmp	r51, r62
	ble		.b33548				# 3156
.b33559:
	fmul	r9, r51, r51				# 32023
	fmul	r61, r9, r9				# 32023
	lw		r9, -28(r3)				# 32013
	fmul	r61, r61, r9				# 32013
	lli		r9, rgb.2574				# 32078
	lw		r28, 0(r9)				# 32078
	fadd	r28, r28, r61				# 32067
	sw		r28, 0(r9)				# 32067
	lw		r28, 1(r9)				# 32109
	fadd	r28, r28, r61				# 32098
	sw		r28, 1(r9)				# 32067
	lw		r28, 2(r9)				# 32140
	fadd	r61, r28, r61				# 32129
	sw		r61, 2(r9)				# 32129
	b		.b33548				# 32129
.b33555:
	fcmp	r51, r62
	ble		.b33548				# 3156
	b		.b33559
.b33531:
	lli		r61, objects.2523				# 21445
	lwx		r28, r61, r9				# 21445
	lw		r57, 10(r28)				# 6561
	lw		r30, 1(r28)				# 2994
	lw		r15, 5(r28)				# 4475
	lw		r61, 0(r15)				# 21561
	fsub	r61, r10, r61				# 21547
	sw		r61, 0(r57)				# 21547
	lw		r61, 1(r15)				# 21603
	fsub	r61, r62, r61				# 21589
	sw		r61, 1(r57)				# 21547
	lw		r61, 2(r15)				# 21645
	fsub	r7, r54, r61				# 21631
	sw		r7, 2(r57)				# 21547
	cmpi	r30, 2
	beq		.b33534				# 21673
.b33535:
	cmpi	r30, 2
	ble		.b33533				# 21798
.b33537:
	lw		r41, 0(r57)				# 21847
	lw		r51, 1(r57)				# 21847
	fmul	r13, r41, r41				# 14374
	lw		r15, 4(r28)				# 3734
	lw		r61, 0(r15)				# 14374
	fmul	r61, r13, r61				# 14374
	fmul	r25, r51, r51				# 14400
	lw		r13, 1(r15)				# 14400
	fmul	r13, r25, r13				# 14374
	fadd	r25, r61, r13				# 14374
	fmul	r13, r7, r7				# 14426
	lw		r61, 2(r15)				# 14426
	fmul	r61, r13, r61				# 14374
	fadd	r61, r25, r61				# 14354
	lw		r15, 3(r28)				# 3553
	cmpi	r15, 0
	beq		.b33539				# 14456
.b33540:
	fmul	r15, r51, r7				# 14522
	lw		r13, 9(r28)				# 5989
	lw		r28, 0(r13)				# 14522
	fmul	r28, r15, r28				# 14503
	fadd	r61, r61, r28				# 14503
	fmul	r28, r7, r41				# 14556
	lw		r15, 1(r13)				# 14556
	fmul	r28, r28, r15				# 14503
	fadd	r61, r61, r28				# 14503
	fmul	r28, r41, r51				# 14590
	lw		r15, 2(r13)				# 14590
	fmul	r28, r28, r15				# 14503
	fadd	r61, r61, r28				# 14503
	cmpi	r30, 3
	beq		.b33542				# 21917
.b33543:
.b33541:
	sw		r61, 3(r57)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b33531				# 21420
	b		.b33529
.b33542:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b33541				# 21937
.b33539:
	cmpi	r30, 3
	beq		.b33542				# 21917
	b		.b33543
.b33533:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b33531				# 21420
	b		.b33529
.b33534:
	lw		r61, 4(r28)				# 4293
	lw		r28, 0(r57)				# 21728
	lw		r51, 1(r57)				# 21728
	lw		r15, 0(r61)				# 2037
	fmul	r15, r15, r28				# 2037
	lw		r28, 1(r61)				# 2052
	fmul	r28, r28, r51				# 2037
	fadd	r28, r15, r28				# 2037
	lw		r61, 2(r61)				# 2067
	fmul	r61, r61, r7				# 2037
	fadd	r61, r28, r61				# 21713
	sw		r61, 3(r57)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b33531				# 21420
	b		.b33529
.b33522:
	lli		r9, light.2532				# 1949
	lw		r28, 0(r9)				# 1949
	lw		r61, -22(r3)				# 1949
	fmul	r15, r61, r28				# 1949
	lw		r61, 1(r9)				# 1967
	lw		r62, -23(r3)				# 1949
	fmul	r62, r62, r61				# 1949
	fadd	r15, r15, r62				# 1949
	lw		r9, 2(r9)				# 1985
	lw		r62, -24(r3)				# 1949
	fmul	r62, r62, r9				# 1949
	fadd	r62, r15, r62				# 34151
	fneg	r62, r62				# 34151
	lw		r15, -17(r3)				# 34138
	fmul	r62, r62, r15				# 34138
	lw		r15, -25(r3)				# 1949
	fmul	r28, r15, r28				# 1949
	lw		r15, -26(r3)				# 1949
	fmul	r61, r15, r61				# 1949
	fadd	r61, r28, r61				# 1949
	lw		r28, -27(r3)				# 1949
	fmul	r9, r28, r9				# 1949
	fadd	r9, r61, r9				# 34217
	fneg	r15, r9				# 34203
	addi	r51, r0, 0				# 31910
	fcmp	r62, r51
	ble		.b33524				# 3156
.b33526:
	lli		r10, rgb.2574				# 2129
	lw		r9, 0(r10)				# 2129
	lli		r61, texture_color.2568				# 2141
	lw		r28, 0(r61)				# 2141
	fmul	r28, r62, r28				# 2129
	fadd	r9, r9, r28				# 2117
	sw		r9, 0(r10)				# 2117
	lw		r28, 1(r10)				# 2171
	lw		r9, 1(r61)				# 2183
	fmul	r9, r62, r9				# 2171
	fadd	r9, r28, r9				# 2159
	sw		r9, 1(r10)				# 2117
	lw		r28, 2(r10)				# 2213
	lw		r9, 2(r61)				# 2225
	fmul	r9, r62, r9				# 2213
	fadd	r9, r28, r9				# 2201
	sw		r9, 2(r10)				# 2201
	fcmp	r15, r51
	ble		.b33521				# 3156
.b33528:
	fmul	r9, r15, r15				# 32023
	fmul	r61, r9, r9				# 32023
	lw		r9, -28(r3)				# 32013
	fmul	r61, r61, r9				# 32013
	lli		r28, rgb.2574				# 32078
	lw		r9, 0(r28)				# 32078
	fadd	r9, r9, r61				# 32067
	sw		r9, 0(r28)				# 32067
	lw		r9, 1(r28)				# 32109
	fadd	r9, r9, r61				# 32098
	sw		r9, 1(r28)				# 32067
	lw		r9, 2(r28)				# 32140
	fadd	r9, r9, r61				# 32129
	sw		r9, 2(r28)				# 32129
	b		.b33521				# 32129
.b33524:
	fcmp	r15, r51
	ble		.b33521				# 3156
	b		.b33528
.b33519:
	addi	r9, r0, 1				# 33698
	swx		r9, r51, r61				# 33698
	lw		r9, 4(r54)				# 7334
	lwx		r28, r9, r51				# 33761
	lw		r9, 0(r30)				# 1353
	sw		r9, 0(r28)				# 1353
	lw		r9, 1(r30)				# 1376
	sw		r9, 1(r28)				# 1353
	lw		r9, 2(r30)				# 1399
	sw		r9, 2(r28)				# 33761
	addis	r9, r0, 15232				# 33824
	fmul	r61, r9, r25				# 33799
	lw		r9, 0(r28)				# 2540
	fmul	r9, r9, r61				# 2528
	sw		r9, 0(r28)				# 2528
	lw		r9, 1(r28)				# 2573
	fmul	r9, r9, r61				# 2561
	sw		r9, 1(r28)				# 2528
	lw		r9, 2(r28)				# 2606
	fmul	r9, r9, r61				# 2594
	sw		r9, 2(r28)				# 33761
	lw		r9, 7(r54)				# 7939
	lwx		r28, r9, r51				# 33889
	lli		r9, nvector.2565				# 1353
	lw		r61, 0(r9)				# 1353
	sw		r61, 0(r28)				# 1353
	lw		r61, 1(r9)				# 1376
	sw		r61, 1(r28)				# 1353
	lw		r9, 2(r9)				# 1399
	sw		r9, 2(r28)				# 1399
	b		.b33518				# 1399
.b33507:
	lw		r61, 5(r37)				# 4475
	lw		r9, 0(r61)				# 31118
	fsub	r9, r41, r9				# 31117
	lw		r37, 4(r37)				# 3734
	lw		r10, 0(r37)				# 31144
	fsqrt	r10, r10				# 227
	fmul	r23, r9, r10				# 31108
	lw		r9, 2(r61)				# 31181
	fsub	r9, r15, r9				# 31180
	lw		r10, 2(r37)				# 31207
	fsqrt	r10, r10				# 227
	fmul	r9, r9, r10				# 31171
	fmul	r46, r23, r23				# 31243
	fmul	r10, r9, r9				# 31243
	fadd	r46, r46, r10				# 31234
	fabs	r10, r23				# 322
	addis	r26, r0, 14545
	ori		r26, r26, 46871				# 31291
	fcmp	r26, r10
	ble		.b33510				# 3096
.b33511:
	addis	r10, r0, 16752				# 31320
.b33509:
	ffloor	r9, r10				# 765
	fsub	r10, r10, r9				# 31412
	lw		r9, 1(r61)				# 31456
	fsub	r9, r57, r9				# 31455
	lw		r61, 1(r37)				# 31482
	fsqrt	r61, r61				# 227
	fmul	r61, r9, r61				# 31446
	fabs	r9, r46				# 322
	fcmp	r26, r9
	ble		.b33513				# 3096
.b33514:
	addis	r61, r0, 16752				# 31556
.b33512:
	ffloor	r9, r61				# 765
	fsub	r61, r61, r9				# 31646
	addis	r37, r0, 15897
	ori		r37, r37, 39322				# 31690
	addis	r9, r0, 16128				# 31705
	fsub	r10, r9, r10				# 31699
	fmul	r10, r10, r10				# 31690
	fsub	r10, r37, r10				# 31690
	fsub	r9, r9, r61				# 31721
	fmul	r9, r9, r9				# 31690
	fsub	r9, r10, r9				# 31680
	addi	r61, r0, 0				# 31747
	fcmp	r61, r9
	ble		.b33516				# 3186
.b33517:
	addi	r9, r0, 0				# 31776
.b33515:
	addis	r61, r0, 17279				# 31817
	fmul	r9, r61, r9				# 31817
	addis	r61, r0, 16025
	ori		r61, r61, 39322				# 31817
	fdiv	r9, r9, r61				# 31796
	sw		r9, 2(r30)				# 31796
	b		.b33487				# 31796
.b33516:
	b		.b33515				# 31785
.b33513:
	fdiv	r9, r61, r46				# 31582
	fabs	r9, r9				# 322
	fatan	r61, r9				# 440
	addis	r9, r0, 16880				# 31603
	fmul	r9, r61, r9				# 31602
	addis	r61, r0, 16457
	ori		r61, r61, 4059				# 31602
	fdiv	r61, r9, r61				# 31602
	b		.b33512				# 31602
.b33510:
	fdiv	r9, r9, r23				# 31347
	fabs	r9, r9				# 322
	fatan	r9, r9				# 440
	addis	r10, r0, 16880				# 31369
	fmul	r10, r9, r10				# 31368
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 31368
	fdiv	r10, r10, r9				# 31368
	b		.b33509				# 31368
.b33505:
	lw		r61, 5(r37)				# 4475
	lw		r9, 0(r61)				# 30784
	fsub	r10, r41, r9				# 30775
	lw		r9, 2(r61)				# 30823
	fsub	r9, r15, r9				# 30814
	fmul	r61, r10, r10				# 30868
	fmul	r9, r9, r9				# 30868
	fadd	r9, r61, r9				# 30862
	fsqrt	r61, r9				# 227
	addis	r9, r0, 16672				# 30862
	fdiv	r61, r61, r9				# 30853
	ffloor	r9, r61				# 765
	fsub	r9, r61, r9				# 30915
	addis	r61, r0, 16457
	ori		r61, r61, 4059				# 30915
	fmul	r9, r9, r61				# 30905
	fcos	r9, r9				# 133
	fmul	r61, r9, r9				# 30954
	addis	r9, r0, 17279				# 30987
	fmul	r10, r61, r9				# 30987
	sw		r10, 1(r30)				# 30987
	addis	r10, r0, 16256				# 31049
	fsub	r61, r10, r61				# 31049
	fmul	r9, r61, r9				# 31028
	sw		r9, 2(r30)				# 31028
	b		.b33487				# 31028
.b33503:
	addis	r9, r0, 16000				# 30625
	fmul	r9, r57, r9				# 30620
	fsin	r9, r9				# 40
	fmul	r10, r9, r9				# 30605
	addis	r61, r0, 17279				# 30650
	fmul	r9, r61, r10				# 30650
	sw		r9, 0(r30)				# 30650
	addis	r9, r0, 16256				# 30711
	fsub	r9, r9, r10				# 30711
	fmul	r9, r61, r9				# 30690
	sw		r9, 1(r30)				# 30690
	b		.b33487				# 30690
.b33488:
	lw		r61, 5(r37)				# 4475
	lw		r9, 0(r61)				# 30169
	fsub	r10, r41, r9				# 30160
	addis	r9, r0, 15692
	ori		r9, r9, 52429				# 30234
	fmul	r37, r10, r9				# 30227
	ffloor	r37, r37				# 765
	addis	r46, r0, 16800				# 30226
	fmul	r37, r37, r46				# 30217
	fsub	r10, r10, r37				# 30264
	addis	r37, r0, 16672				# 30264
	fcmp	r37, r10
	ble		.b33491				# 3096
.b33492:
	addi	r10, r0, 1				# 3096
.b33490:
	lw		r61, 2(r61)				# 30308
	fsub	r61, r15, r61				# 30299
	fmul	r9, r61, r9				# 30366
	ffloor	r9, r9				# 765
	fmul	r9, r9, r46				# 30356
	fsub	r9, r61, r9				# 30404
	fcmp	r37, r9
	ble		.b33494				# 3096
.b33495:
	addi	r9, r0, 1				# 3096
	cmpi	r10, 0
	beq		.b33497				# 30467
.b33498:
	cmpi	r9, 0
	beq		.b33501				# 30489
.b33502:
	addis	r9, r0, 17279				# 30503
	sw		r9, 1(r30)				# 30439
	b		.b33487				# 30439
.b33501:
	addi	r9, r0, 0				# 30514
	sw		r9, 1(r30)				# 30439
	b		.b33487				# 30439
.b33497:
	cmpi	r9, 0
	beq		.b33499				# 30532
.b33500:
	addi	r9, r0, 0				# 30546
	sw		r9, 1(r30)				# 30439
	b		.b33487				# 30439
.b33499:
	addis	r9, r0, 17279				# 30555
	sw		r9, 1(r30)				# 30439
	b		.b33487				# 30439
.b33494:
	addi	r9, r0, 0				# 3096
	cmpi	r10, 0
	beq		.b33497				# 30467
	b		.b33498
.b33491:
	addi	r10, r0, 0				# 3096
	b		.b33490				# 3096
.b33485:
	addis	r9, r0, 16256				# 1837
	fdiv	r61, r9, r61				# 1837
	b		.b33482				# 1837
.b33483:
	addis	r61, r0, 16256				# 1801
	b		.b33482				# 1801
.b33480:
	lli		r9, nvector.2565				# 29409
	sw		r57, 0(r9)				# 29409
	sw		r61, 1(r9)				# 29409
	sw		r41, 2(r9)				# 29455
	b		.b33479				# 29455
.b33477:
	lw		r61, 4(r37)				# 3734
	lw		r9, 0(r61)				# 28996
	fneg	r9, r9				# 28981
	lli		r15, nvector.2565				# 28981
	sw		r9, 0(r15)				# 28981
	lw		r9, 1(r61)				# 29034
	fneg	r9, r9				# 29019
	sw		r9, 1(r15)				# 28981
	lw		r9, 2(r61)				# 29071
	fneg	r9, r9				# 29056
	sw		r9, 2(r15)				# 29056
	b		.b33469				# 29056
.b33470:
	lli		r9, intsec_rectside.2553				# 28828
	lw		r61, 0(r9)				# 28828
	lli		r9, nvector.2565				# 1232
	addi	r10, r0, 0				# 1232
	sw		r10, 0(r9)				# 1232
	sw		r10, 1(r9)				# 1232
	sw		r10, 2(r9)				# 28868
	addi	r15, r61, -1				# 28888
	lli		r61, ptrace_dirvec.2601				# 28918
	lwx		r61, r61, r15				# 28918
	fcmp	r61, r10
	beq		.b33473				# 3126
.b33474:
	fcmp	r61, r10
	ble		.b33475				# 3156
.b33476:
	addis	r61, r0, 16256				# 856
	fneg	r61, r61				# 28888
	swx		r61, r15, r9				# 28888
	b		.b33469				# 28888
.b33475:
	addis	r61, r0, 49024				# 868
	fneg	r61, r61				# 28888
	swx		r61, r15, r9				# 28888
	b		.b33469				# 28888
.b33473:
	addi	r61, r0, 0				# 828
	fneg	r61, r61				# 28888
	swx		r61, r15, r9				# 28888
	b		.b33469				# 28888
.b33461:
	addi	r9, r0, 0				# 3096
	addi	r9, r0, -1				# 34715
	swx		r9, r51, r13				# 34715
	cmpi	r51, 0
	beq		.b33062				# 34748
.b33466:
	lli		r61, ptrace_dirvec.2601				# 1949
	lw		r28, 0(r61)				# 1949
	lli		r10, light.2532				# 1949
	lw		r9, 0(r10)				# 1949
	fmul	r9, r28, r9				# 1949
	lw		r28, 1(r61)				# 1967
	lw		r15, 1(r10)				# 1967
	fmul	r28, r28, r15				# 1949
	fadd	r28, r9, r28				# 1949
	lw		r9, 2(r61)				# 1985
	lw		r61, 2(r10)				# 1985
	fmul	r9, r9, r61				# 1949
	fadd	r9, r28, r9				# 34778
	fneg	r61, r9				# 34769
	addi	r9, r0, 0				# 3156
	fcmp	r61, r9
	ble		.b33062				# 3156
.b33468:
	fmul	r9, r61, r61				# 34848
	fmul	r9, r9, r61				# 34848
	fmul	r9, r9, r62				# 34848
	lli		r61, beam.2535				# 34848
	lw		r61, 0(r61)				# 34848
	fmul	r61, r9, r61				# 34838
	lli		r28, rgb.2574				# 34902
	lw		r9, 0(r28)				# 34902
	fadd	r9, r9, r61				# 34891
	sw		r9, 0(r28)				# 34891
	lw		r9, 1(r28)				# 34933
	fadd	r9, r9, r61				# 34922
	sw		r9, 1(r28)				# 34891
	lw		r9, 2(r28)				# 34964
	fadd	r9, r9, r61				# 34953
	sw		r9, 2(r28)				# 34953
	b		.b33062				# 34953
.b33459:
	addi	r9, r0, 0				# 26809
	addi	r9, r0, -1				# 34715
	swx		r9, r51, r13				# 34715
	cmpi	r51, 0
	beq		.b33062				# 34748
	b		.b33466
.b33450:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b33454:
	addi	r10, r10, 1				# 23162
	lwx		r9, r39, r10				# 23025
	cmpi	r9, -1
	beq		.b33410				# 23052
	b		.b33411
.b33410:
	addi	r9, r0, 1				# 23074
.b33457:
	sw		r33, 0(r30)				# 25478
	lli		r9, intersection_point.2559				# 1162
	sw		r46, 0(r9)				# 1162
	sw		r12, 1(r9)				# 1162
	sw		r42, 2(r9)				# 25478
	lli		r9, intersected_object_id.2562				# 25478
	sw		r48, 0(r9)				# 25478
	lli		r9, intsec_rectside.2553				# 25570
	sw		r50, 0(r9)				# 25570
	b		.b33403				# 25570
.b33448:
	cmpi	r9, 0
	beq		.b33452				# 22625
.b33453:
	addi	r9, r0, 0				# 22625
	b		.b33454				# 23092
.b33452:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b33403				# 25421
.b33445:
	addi	r9, r0, 0				# 3186
	cmpi	r26, 0
	beq		.b33448				# 765
	b		.b33449
.b33442:
	addis	r26, r0, 16256				# 22604
	fsub	r9, r9, r26				# 22604
	lw		r26, 6(r29)				# 3372
	fcmp	r19, r9
	ble		.b33445				# 3186
	b		.b33446
.b33439:
	cmpi	r36, 3
	beq		.b33442				# 22583
	b		.b33443
.b33426:
	lw		r17, 4(r29)				# 4293
	lw		r9, 0(r17)				# 2037
	fmul	r9, r9, r53				# 2037
	lw		r26, 1(r17)				# 2052
	fmul	r26, r26, r14				# 2037
	fadd	r26, r9, r26				# 2037
	lw		r9, 2(r17)				# 2067
	fmul	r9, r9, r56				# 2037
	fadd	r9, r26, r9				# 22411
	lw		r26, 6(r29)				# 3372
	fcmp	r19, r9
	ble		.b33429				# 3186
.b33430:
	addi	r9, r0, 1				# 3186
	cmpi	r26, 0
	beq		.b33432				# 765
.b33433:
	cmpi	r9, 0
	beq		.b33434				# 775
.b33435:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b33403				# 25421
.b33434:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b33454				# 23092
.b33432:
	cmpi	r9, 0
	beq		.b33436				# 22459
.b33437:
	addi	r9, r0, 0				# 22459
	b		.b33454				# 23092
.b33436:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b33403				# 25421
.b33429:
	addi	r9, r0, 0				# 3186
	cmpi	r26, 0
	beq		.b33432				# 765
	b		.b33433
.b33413:
	fabs	r26, r53				# 322
	lw		r17, 4(r29)				# 3734
	lw		r9, 0(r17)				# 22178
	fcmp	r9, r26
	ble		.b33416				# 3096
.b33417:
	fabs	r26, r14				# 322
	lw		r9, 1(r17)				# 22224
	fcmp	r9, r26
	ble		.b33418				# 3096
.b33419:
	fabs	r26, r56				# 322
	lw		r9, 2(r17)				# 22261
	fcmp	r9, r26
	ble		.b33420				# 3096
.b33421:
	addi	r9, r0, 1				# 3096
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b33454				# 23092
.b33455:
	addi	r9, r0, 0				# 23141
	b		.b33403				# 25421
.b33420:
	addi	r9, r0, 0				# 3096
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b33424				# 22348
.b33425:
	addi	r9, r0, 0				# 22348
	b		.b33454				# 23092
.b33424:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b33403				# 25421
.b33418:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b33424				# 22348
	b		.b33425
.b33416:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b33424				# 22348
	b		.b33425
.b33397:
	fneg	r9, r9				# 3025
	b		.b33396				# 3025
.b33394:
	addi	r50, r0, 0				# 15535
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b33312				# 25732
.b33402:
	addi	r28, r28, 1				# 25769
	lwx		r48, r39, r28				# 25005
	cmpi	r48, -1
	beq		.b33312				# 25042
	b		.b33315
.b33392:
	addis	r26, r0, 16256				# 15303
	fsub	r9, r9, r26				# 15303
	b		.b33391				# 15303
.b33389:
	cmpi	r50, 3
	beq		.b33392				# 15282
	b		.b33393
.b33386:
	b		.b33385				# 14803
.b33383:
	addi	r50, r0, 0				# 15111
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b33312				# 25732
	b		.b33402
.b33381:
	addi	r42, r0, 0				# 3126
	fcmp	r10, r42
	beq		.b33383				# 3126
	b		.b33384
.b33376:
	lw		r46, 4(r29)				# 4293
	lli		r9, ptrace_dirvec.2601				# 1949
	lw		r10, 0(r9)				# 1949
	lw		r50, 0(r46)				# 1949
	fmul	r26, r10, r50				# 1949
	lw		r10, 1(r9)				# 1967
	lw		r12, 1(r46)				# 1967
	fmul	r10, r10, r12				# 1949
	fadd	r10, r26, r10				# 1949
	lw		r9, 2(r9)				# 1985
	lw		r46, 2(r46)				# 1985
	fmul	r9, r9, r46				# 1949
	fadd	r26, r10, r9				# 14187
	addi	r9, r0, 0				# 3156
	fcmp	r26, r9
	ble		.b33378				# 3156
.b33379:
	fmul	r9, r50, r14				# 2037
	fmul	r10, r12, r19				# 2037
	fadd	r10, r9, r10				# 2037
	fmul	r9, r46, r17				# 2037
	fadd	r9, r10, r9				# 14262
	fneg	r9, r9				# 14262
	fdiv	r9, r9, r26				# 14243
	sw		r9, 0(r23)				# 14243
	addi	r50, r0, 1				# 14302
	lw		r10, 0(r23)				# 25149
	addi	r19, r0, 0				# 25186
	fcmp	r10, r19
	ble		.b33403				# 3096
	b		.b33405
.b33378:
	addi	r50, r0, 0				# 14314
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b33312				# 25732
	b		.b33402
.b33317:
	lli		r53, ptrace_dirvec.2601				# 13452
	lw		r46, 0(r53)				# 13452
	addi	r50, r0, 0				# 13860
	fcmp	r46, r50
	beq		.b33320				# 3126
.b33321:
	lw		r12, 4(r29)				# 4293
	lw		r9, 6(r29)				# 3372
	fcmp	r50, r46
	ble		.b33323				# 3186
.b33324:
	addi	r10, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b33326				# 765
.b33327:
	cmpi	r10, 0
	beq		.b33328				# 775
.b33329:
	addi	r10, r0, 0				# 775
	lw		r9, 0(r12)				# 13527
	fneg	r9, r9				# 3025
.b33330:
	fsub	r9, r9, r14				# 13603
	fdiv	r10, r9, r46				# 13594
	lw		r9, 1(r53)				# 13649
	fmul	r9, r10, r9				# 13649
	fadd	r9, r9, r19				# 13643
	fabs	r26, r9				# 322
	lw		r9, 1(r12)				# 13636
	fcmp	r9, r26
	ble		.b33333				# 3096
.b33334:
	lw		r9, 2(r53)				# 13709
	fmul	r9, r10, r9				# 13709
	fadd	r9, r9, r17				# 13703
	fabs	r26, r9				# 322
	lw		r9, 2(r12)				# 13696
	fcmp	r9, r26
	ble		.b33335				# 3096
.b33336:
	sw		r10, 0(r23)				# 13756
	addi	r9, r0, 1				# 13779
.b33338:
	addi	r50, r0, 1				# 13917
	lw		r10, 0(r23)				# 25149
	addi	r19, r0, 0				# 25186
	fcmp	r10, r19
	ble		.b33403				# 3096
	b		.b33405
.b33335:
	addi	r9, r0, 0				# 13794
	lw		r33, 1(r53)				# 13452
	fcmp	r33, r50
	beq		.b33340				# 3126
.b33341:
	lw		r12, 4(r29)				# 4293
	lw		r9, 6(r29)				# 3372
	fcmp	r50, r33
	ble		.b33343				# 3186
.b33344:
	addi	r10, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b33346				# 765
.b33347:
	cmpi	r10, 0
	beq		.b33348				# 775
.b33349:
	addi	r10, r0, 0				# 775
	lw		r9, 1(r12)				# 13527
	fneg	r9, r9				# 3025
.b33350:
	fsub	r9, r9, r19				# 13603
	fdiv	r10, r9, r33				# 13594
	lw		r9, 2(r53)				# 13649
	fmul	r9, r10, r9				# 13649
	fadd	r9, r9, r17				# 13643
	fabs	r26, r9				# 322
	lw		r9, 2(r12)				# 13636
	fcmp	r9, r26
	ble		.b33353				# 3096
.b33354:
	fmul	r9, r10, r46				# 13709
	fadd	r9, r9, r14				# 13703
	fabs	r26, r9				# 322
	lw		r9, 0(r12)				# 13696
	fcmp	r9, r26
	ble		.b33355				# 3096
.b33356:
	sw		r10, 0(r23)				# 13756
	addi	r9, r0, 1				# 13779
.b33358:
	addi	r50, r0, 2				# 13980
	lw		r10, 0(r23)				# 25149
	addi	r19, r0, 0				# 25186
	fcmp	r10, r19
	ble		.b33403				# 3096
	b		.b33405
.b33355:
	addi	r9, r0, 0				# 13794
	lw		r12, 2(r53)				# 13452
	fcmp	r12, r50
	beq		.b33359				# 3126
.b33360:
	lw		r26, 4(r29)				# 4293
	lw		r9, 6(r29)				# 3372
	fcmp	r50, r12
	ble		.b33362				# 3186
.b33363:
	addi	r10, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b33365				# 765
.b33366:
	cmpi	r10, 0
	beq		.b33367				# 775
.b33368:
	addi	r10, r0, 0				# 775
	lw		r9, 2(r26)				# 13527
	fneg	r9, r9				# 3025
.b33369:
	fsub	r9, r9, r17				# 13603
	fdiv	r10, r9, r12				# 13594
	fmul	r9, r10, r46				# 13649
	fadd	r9, r9, r14				# 13643
	fabs	r9, r9				# 322
	lw		r46, 0(r26)				# 13636
	fcmp	r46, r9
	ble		.b33372				# 3096
.b33373:
	fmul	r9, r10, r33				# 13709
	fadd	r9, r9, r19				# 13703
	fabs	r9, r9				# 322
	lw		r46, 1(r26)				# 13696
	fcmp	r46, r9
	ble		.b33374				# 3096
.b33375:
	sw		r10, 0(r23)				# 13756
	addi	r50, r0, 3				# 14043
	lw		r10, 0(r23)				# 25149
	addi	r19, r0, 0				# 25186
	fcmp	r10, r19
	ble		.b33403				# 3096
	b		.b33405
.b33374:
	addi	r50, r0, 0				# 14107
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b33312				# 25732
	b		.b33402
.b33372:
	addi	r50, r0, 0				# 14107
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b33312				# 25732
	b		.b33402
.b33367:
	addi	r10, r0, 1				# 775
	lw		r9, 2(r26)				# 13527
	b		.b33369				# 918
.b33365:
	lw		r9, 2(r26)				# 13527
	cmpi	r10, 0
	beq		.b33370				# 905
.b33371:
	b		.b33369				# 918
.b33370:
	fneg	r9, r9				# 3025
	b		.b33369				# 3025
.b33362:
	addi	r10, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b33365				# 765
	b		.b33366
.b33359:
	addi	r50, r0, 0				# 14107
	lw		r9, 6(r29)				# 3372
	cmpi	r9, 0
	beq		.b33312				# 25732
	b		.b33402
.b33353:
	addi	r9, r0, 0				# 13807
	lw		r12, 2(r53)				# 13452
	fcmp	r12, r50
	beq		.b33359				# 3126
	b		.b33360
.b33348:
	addi	r10, r0, 1				# 775
	lw		r9, 1(r12)				# 13527
	b		.b33350				# 918
.b33346:
	lw		r9, 1(r12)				# 13527
	cmpi	r10, 0
	beq		.b33351				# 905
.b33352:
	b		.b33350				# 918
.b33351:
	fneg	r9, r9				# 3025
	b		.b33350				# 3025
.b33343:
	addi	r10, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b33346				# 765
	b		.b33347
.b33340:
	addi	r9, r0, 0				# 13477
	lw		r12, 2(r53)				# 13452
	fcmp	r12, r50
	beq		.b33359				# 3126
	b		.b33360
.b33333:
	addi	r9, r0, 0				# 13807
	lw		r33, 1(r53)				# 13452
	fcmp	r33, r50
	beq		.b33340				# 3126
	b		.b33341
.b33328:
	addi	r10, r0, 1				# 775
	lw		r9, 0(r12)				# 13527
	b		.b33330				# 918
.b33326:
	lw		r9, 0(r12)				# 13527
	cmpi	r10, 0
	beq		.b33331				# 905
.b33332:
	b		.b33330				# 918
.b33331:
	fneg	r9, r9				# 3025
	b		.b33330				# 3025
.b33323:
	addi	r10, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b33326				# 765
	b		.b33327
.b33320:
	addi	r9, r0, 0				# 13477
	lw		r33, 1(r53)				# 13452
	fcmp	r33, r50
	beq		.b33340				# 3126
	b		.b33341
.b33303:
	fneg	r61, r61				# 3025
	b		.b33302				# 3025
.b33300:
	addi	r9, r0, 0				# 15535
	b		.b33070				# 26416
.b33298:
	addis	r10, r0, 16256				# 15303
	fsub	r61, r61, r10				# 15303
	b		.b33297				# 15303
.b33295:
	cmpi	r14, 3
	beq		.b33298				# 15282
	b		.b33299
.b33292:
	b		.b33291				# 14803
.b33289:
	addi	r9, r0, 0				# 15111
	b		.b33070				# 26416
.b33287:
	addi	r12, r0, 0				# 3126
	fcmp	r28, r12
	beq		.b33289				# 3126
	b		.b33290
.b33282:
	lw		r9, 4(r19)				# 4293
	lli		r28, ptrace_dirvec.2601				# 1949
	lw		r61, 0(r28)				# 1949
	lw		r26, 0(r9)				# 1949
	fmul	r61, r61, r26				# 1949
	lw		r10, 1(r28)				# 1967
	lw		r46, 1(r9)				# 1967
	fmul	r10, r10, r46				# 1949
	fadd	r10, r61, r10				# 1949
	lw		r61, 2(r28)				# 1985
	lw		r9, 2(r9)				# 1985
	fmul	r61, r61, r9				# 1949
	fadd	r10, r10, r61				# 14187
	addi	r61, r0, 0				# 3156
	fcmp	r10, r61
	ble		.b33284				# 3156
.b33285:
	fmul	r28, r26, r39				# 2037
	fmul	r61, r46, r23				# 2037
	fadd	r61, r28, r61				# 2037
	fmul	r9, r9, r48				# 2037
	fadd	r9, r61, r9				# 14262
	fneg	r9, r9				# 14262
	fdiv	r61, r9, r10				# 14243
	lli		r9, solver_dist.2550				# 14243
	sw		r61, 0(r9)				# 14243
	addi	r9, r0, 1				# 14302
	b		.b33306				# 26416
.b33284:
	addi	r9, r0, 0				# 14314
	b		.b33070				# 26416
.b33223:
	lli		r46, ptrace_dirvec.2601				# 13452
	lw		r28, 0(r46)				# 13452
	addi	r26, r0, 0				# 13860
	fcmp	r28, r26
	beq		.b33226				# 3126
.b33227:
	lw		r10, 4(r19)				# 4293
	lw		r9, 6(r19)				# 3372
	fcmp	r26, r28
	ble		.b33229				# 3186
.b33230:
	addi	r61, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b33232				# 765
.b33233:
	cmpi	r61, 0
	beq		.b33234				# 775
.b33235:
	addi	r61, r0, 0				# 775
	lw		r9, 0(r10)				# 13527
	fneg	r9, r9				# 3025
.b33236:
	fsub	r9, r9, r39				# 13603
	fdiv	r29, r9, r28				# 13594
	lw		r9, 1(r46)				# 13649
	fmul	r9, r29, r9				# 13649
	fadd	r9, r9, r23				# 13643
	fabs	r61, r9				# 322
	lw		r9, 1(r10)				# 13636
	fcmp	r9, r61
	ble		.b33239				# 3096
.b33240:
	lw		r9, 2(r46)				# 13709
	fmul	r9, r29, r9				# 13709
	fadd	r9, r9, r48				# 13703
	fabs	r9, r9				# 322
	lw		r61, 2(r10)				# 13696
	fcmp	r61, r9
	ble		.b33241				# 3096
.b33242:
	lli		r9, solver_dist.2550				# 13756
	sw		r29, 0(r9)				# 13756
	addi	r9, r0, 1				# 13779
	addi	r9, r0, 1				# 13917
	b		.b33306				# 26416
.b33241:
	addi	r9, r0, 0				# 13794
	lw		r10, 1(r46)				# 13452
	fcmp	r10, r26
	beq		.b33246				# 3126
.b33247:
	lw		r29, 4(r19)				# 4293
	lw		r9, 6(r19)				# 3372
	fcmp	r26, r10
	ble		.b33249				# 3186
.b33250:
	addi	r61, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b33252				# 765
.b33253:
	cmpi	r61, 0
	beq		.b33254				# 775
.b33255:
	addi	r61, r0, 0				# 775
	lw		r9, 1(r29)				# 13527
	fneg	r9, r9				# 3025
.b33256:
	fsub	r9, r9, r23				# 13603
	fdiv	r14, r9, r10				# 13594
	lw		r9, 2(r46)				# 13649
	fmul	r9, r14, r9				# 13649
	fadd	r9, r9, r48				# 13643
	fabs	r61, r9				# 322
	lw		r9, 2(r29)				# 13636
	fcmp	r9, r61
	ble		.b33259				# 3096
.b33260:
	fmul	r9, r14, r28				# 13709
	fadd	r9, r9, r39				# 13703
	fabs	r9, r9				# 322
	lw		r61, 0(r29)				# 13696
	fcmp	r61, r9
	ble		.b33261				# 3096
.b33262:
	lli		r9, solver_dist.2550				# 13756
	sw		r14, 0(r9)				# 13756
	addi	r9, r0, 1				# 13779
	addi	r9, r0, 2				# 13980
	b		.b33306				# 26416
.b33261:
	addi	r9, r0, 0				# 13794
	lw		r46, 2(r46)				# 13452
	fcmp	r46, r26
	beq		.b33265				# 3126
.b33266:
	lw		r29, 4(r19)				# 4293
	lw		r9, 6(r19)				# 3372
	fcmp	r26, r46
	ble		.b33268				# 3186
.b33269:
	addi	r61, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b33271				# 765
.b33272:
	cmpi	r61, 0
	beq		.b33273				# 775
.b33274:
	addi	r61, r0, 0				# 775
	lw		r9, 2(r29)				# 13527
	fneg	r9, r9				# 3025
.b33275:
	fsub	r9, r9, r48				# 13603
	fdiv	r61, r9, r46				# 13594
	fmul	r9, r61, r28				# 13649
	fadd	r9, r9, r39				# 13643
	fabs	r28, r9				# 322
	lw		r9, 0(r29)				# 13636
	fcmp	r9, r28
	ble		.b33278				# 3096
.b33279:
	fmul	r9, r61, r10				# 13709
	fadd	r9, r9, r23				# 13703
	fabs	r28, r9				# 322
	lw		r9, 1(r29)				# 13696
	fcmp	r9, r28
	ble		.b33280				# 3096
.b33281:
	lli		r9, solver_dist.2550				# 13756
	sw		r61, 0(r9)				# 13756
	addi	r9, r0, 3				# 14043
	b		.b33306				# 26416
.b33280:
	addi	r9, r0, 0				# 14107
	b		.b33070				# 26416
.b33278:
	addi	r9, r0, 0				# 14107
	b		.b33070				# 26416
.b33273:
	addi	r61, r0, 1				# 775
	lw		r9, 2(r29)				# 13527
	b		.b33275				# 918
.b33271:
	lw		r9, 2(r29)				# 13527
	cmpi	r61, 0
	beq		.b33276				# 905
.b33277:
	b		.b33275				# 918
.b33276:
	fneg	r9, r9				# 3025
	b		.b33275				# 3025
.b33268:
	addi	r61, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b33271				# 765
	b		.b33272
.b33265:
	addi	r9, r0, 0				# 14107
	b		.b33070				# 26416
.b33259:
	addi	r9, r0, 0				# 13807
	lw		r46, 2(r46)				# 13452
	fcmp	r46, r26
	beq		.b33265				# 3126
	b		.b33266
.b33254:
	addi	r61, r0, 1				# 775
	lw		r9, 1(r29)				# 13527
	b		.b33256				# 918
.b33252:
	lw		r9, 1(r29)				# 13527
	cmpi	r61, 0
	beq		.b33257				# 905
.b33258:
	b		.b33256				# 918
.b33257:
	fneg	r9, r9				# 3025
	b		.b33256				# 3025
.b33249:
	addi	r61, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b33252				# 765
	b		.b33253
.b33246:
	addi	r9, r0, 0				# 13477
	lw		r46, 2(r46)				# 13452
	fcmp	r46, r26
	beq		.b33265				# 3126
	b		.b33266
.b33239:
	addi	r9, r0, 0				# 13807
	lw		r10, 1(r46)				# 13452
	fcmp	r10, r26
	beq		.b33246				# 3126
	b		.b33247
.b33234:
	addi	r61, r0, 1				# 775
	lw		r9, 0(r10)				# 13527
	b		.b33236				# 918
.b33232:
	lw		r9, 0(r10)				# 13527
	cmpi	r61, 0
	beq		.b33237				# 905
.b33238:
	b		.b33236				# 918
.b33237:
	fneg	r9, r9				# 3025
	b		.b33236				# 3025
.b33229:
	addi	r61, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b33232				# 765
	b		.b33233
.b33226:
	addi	r9, r0, 0				# 13477
	lw		r10, 1(r46)				# 13452
	fcmp	r10, r26
	beq		.b33246				# 3126
	b		.b33247
.b33071:
	addi	r28, r0, 1				# 25897
	lwx		r9, r7, r28				# 25897
	cmpi	r9, -1
	beq		.b33070				# 25928
.b33075:
	lli		r61, and_net.2541				# 25953
	lwx		r57, r61, r9				# 25953
	addi	r10, r0, 0				# 25005
	lwx		r37, r57, r10				# 25005
	cmpi	r37, -1
	beq		.b33076				# 25042
.b33079:
	lli		r46, objects.2523				# 15582
	lwx		r41, r46, r37				# 15582
	lli		r61, startp.2586				# 15621
	lw		r19, 0(r61)				# 15621
	lw		r25, 5(r41)				# 4475
	lw		r9, 0(r25)				# 15621
	fsub	r29, r19, r9				# 15611
	lw		r48, 1(r61)				# 15659
	lw		r9, 1(r25)				# 15659
	fsub	r14, r48, r9				# 15649
	lw		r39, 2(r61)				# 15697
	lw		r9, 2(r25)				# 15697
	fsub	r17, r39, r9				# 15687
	lw		r33, 1(r41)				# 2994
	cmpi	r33, 1
	beq		.b33081				# 15753
.b33082:
	cmpi	r33, 2
	beq		.b33140				# 15817
.b33141:
	lli		r9, ptrace_dirvec.2601				# 15037
	lw		r27, 0(r9)				# 15037
	lw		r36, 1(r9)				# 15037
	lw		r12, 2(r9)				# 15037
	fmul	r9, r27, r27				# 14374
	lw		r25, 4(r41)				# 3734
	lw		r56, 0(r25)				# 14374
	fmul	r9, r9, r56				# 14374
	fmul	r61, r36, r36				# 14400
	lw		r53, 1(r25)				# 14400
	fmul	r61, r61, r53				# 14374
	fadd	r61, r9, r61				# 14374
	fmul	r9, r12, r12				# 14426
	lw		r26, 2(r25)				# 14426
	fmul	r9, r9, r26				# 14374
	fadd	r61, r61, r9				# 14354
	lw		r1, 3(r41)				# 3553
	cmpi	r1, 0
	beq		.b33145				# 14456
.b33146:
	fmul	r9, r36, r12				# 14522
	lw		r25, 9(r41)				# 5989
	lw		r23, 0(r25)				# 14522
	fmul	r9, r9, r23				# 14503
	fadd	r9, r61, r9				# 14503
	fmul	r61, r12, r27				# 14556
	lw		r23, 1(r25)				# 14556
	fmul	r61, r61, r23				# 14503
	fadd	r61, r9, r61				# 14503
	fmul	r9, r27, r36				# 14590
	lw		r25, 2(r25)				# 14590
	fmul	r9, r9, r25				# 14503
	fadd	r61, r61, r9				# 14503
	addi	r50, r0, 0				# 3126
	fcmp	r61, r50
	beq		.b33147				# 3126
.b33148:
	fmul	r9, r27, r29				# 14680
	fmul	r25, r9, r56				# 14680
	fmul	r9, r36, r14				# 14713
	fmul	r9, r9, r53				# 14680
	fadd	r25, r25, r9				# 14680
	fmul	r9, r12, r17				# 14746
	fmul	r9, r9, r26				# 14680
	fadd	r25, r25, r9				# 14660
	cmpi	r1, 0
	beq		.b33150				# 14777
.b33151:
	fmul	r9, r12, r14				# 14851
	fmul	r23, r36, r17				# 14851
	fadd	r9, r9, r23				# 14850
	lw		r47, 9(r41)				# 5989
	lw		r23, 0(r47)				# 14850
	fmul	r42, r9, r23				# 14850
	fmul	r9, r27, r17				# 14895
	fmul	r23, r12, r29				# 14895
	fadd	r9, r9, r23				# 14894
	lw		r23, 1(r47)				# 14894
	fmul	r9, r9, r23				# 14850
	fadd	r23, r42, r9				# 14850
	fmul	r12, r27, r14				# 14939
	fmul	r9, r36, r29				# 14939
	fadd	r12, r12, r9				# 14938
	lw		r9, 2(r47)				# 14938
	fmul	r9, r12, r9				# 14850
	fadd	r9, r23, r9				# 14837
	addis	r23, r0, 16384				# 2996
	fdiv	r9, r9, r23				# 14824
	fadd	r25, r25, r9				# 14824
.b33149:
	fmul	r9, r29, r29				# 14374
	fmul	r9, r9, r56				# 14374
	fmul	r23, r14, r14				# 14400
	fmul	r23, r23, r53				# 14374
	fadd	r23, r9, r23				# 14374
	fmul	r9, r17, r17				# 14426
	fmul	r9, r9, r26				# 14374
	fadd	r9, r23, r9				# 14354
	cmpi	r1, 0
	beq		.b33153				# 14456
.b33154:
	fmul	r12, r14, r17				# 14522
	lw		r23, 9(r41)				# 5989
	lw		r26, 0(r23)				# 14522
	fmul	r26, r12, r26				# 14503
	fadd	r9, r9, r26				# 14503
	fmul	r17, r17, r29				# 14556
	lw		r26, 1(r23)				# 14556
	fmul	r26, r17, r26				# 14503
	fadd	r9, r9, r26				# 14503
	fmul	r26, r29, r14				# 14590
	lw		r23, 2(r23)				# 14590
	fmul	r26, r26, r23				# 14503
	fadd	r9, r9, r26				# 14503
	cmpi	r33, 3
	beq		.b33156				# 15282
.b33157:
.b33155:
	fmul	r26, r25, r25				# 15338
	fmul	r9, r61, r9				# 15338
	fsub	r9, r26, r9				# 15330
	fcmp	r9, r50
	ble		.b33158				# 3156
.b33159:
	fsqrt	r9, r9				# 227
	lw		r41, 6(r41)				# 3372
	cmpi	r41, 0
	beq		.b33161				# 15425
.b33162:
.b33160:
	fsub	r9, r9, r25				# 15491
	fdiv	r61, r9, r61				# 15472
	lli		r9, solver_dist.2550				# 15472
	sw		r61, 0(r9)				# 15472
	addi	r14, r0, 1				# 15510
.b33164:
	lli		r9, solver_dist.2550				# 25149
	lw		r9, 0(r9)				# 25149
	addi	r29, r0, 0				# 25186
	fcmp	r9, r29
	ble		.b33167				# 3096
.b33169:
	lw		r61, 0(r30)				# 25216
	fcmp	r61, r9
	ble		.b33167				# 3096
.b33171:
	addis	r61, r0, 15395
	ori		r61, r61, 55050				# 25260
	fadd	r17, r9, r61				# 25252
	lli		r61, ptrace_dirvec.2601				# 25289
	lw		r9, 0(r61)				# 25289
	fmul	r9, r9, r17				# 25289
	fadd	r19, r9, r19				# 25280
	lw		r9, 1(r61)				# 25336
	fmul	r9, r9, r17				# 25336
	fadd	r26, r9, r48				# 25327
	lw		r9, 2(r61)				# 25383
	fmul	r9, r9, r17				# 25383
	fadd	r50, r9, r39				# 25374
	addi	r61, r0, 0				# 23025
	lwx		r9, r57, r61				# 23025
	cmpi	r9, -1
	beq		.b33174				# 23052
.b33175:
	lwx		r41, r46, r9				# 23095
	lw		r9, 5(r41)				# 4475
	lw		r25, 0(r9)				# 22709
	fsub	r33, r19, r25				# 22700
	lw		r25, 1(r9)				# 22741
	fsub	r23, r26, r25				# 22732
	lw		r9, 2(r9)				# 22773
	fsub	r39, r50, r9				# 22764
	lw		r53, 1(r41)				# 2994
	cmpi	r53, 1
	beq		.b33177				# 22824
.b33178:
	cmpi	r53, 2
	beq		.b33190				# 22882
.b33191:
	fmul	r25, r33, r33				# 14374
	lw		r12, 4(r41)				# 3734
	lw		r9, 0(r12)				# 14374
	fmul	r25, r25, r9				# 14374
	fmul	r9, r23, r23				# 14400
	lw		r48, 1(r12)				# 14400
	fmul	r9, r9, r48				# 14374
	fadd	r25, r25, r9				# 14374
	fmul	r9, r39, r39				# 14426
	lw		r48, 2(r12)				# 14426
	fmul	r9, r9, r48				# 14374
	fadd	r9, r25, r9				# 14354
	lw		r25, 3(r41)				# 3553
	cmpi	r25, 0
	beq		.b33203				# 14456
.b33204:
	fmul	r12, r23, r39				# 14522
	lw		r48, 9(r41)				# 5989
	lw		r25, 0(r48)				# 14522
	fmul	r25, r12, r25				# 14503
	fadd	r25, r9, r25				# 14503
	fmul	r9, r39, r33				# 14556
	lw		r39, 1(r48)				# 14556
	fmul	r9, r9, r39				# 14503
	fadd	r39, r25, r9				# 14503
	fmul	r9, r33, r23				# 14590
	lw		r25, 2(r48)				# 14590
	fmul	r9, r9, r25				# 14503
	fadd	r9, r39, r9				# 14503
	cmpi	r53, 3
	beq		.b33206				# 22583
.b33207:
	lw		r25, 6(r41)				# 3372
	fcmp	r29, r9
	ble		.b33209				# 3186
.b33210:
	addi	r9, r0, 1				# 3186
	cmpi	r25, 0
	beq		.b33212				# 765
.b33213:
	cmpi	r9, 0
	beq		.b33214				# 775
.b33215:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b33167:
	addi	r10, r10, 1				# 25658
	lwx		r37, r57, r10				# 25005
	cmpi	r37, -1
	beq		.b33076				# 25042
	b		.b33079
.b33076:
	addi	r28, r28, 1				# 26034
	lwx		r9, r7, r28				# 25897
	cmpi	r9, -1
	beq		.b33070				# 25928
	b		.b33075
.b33214:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b33218:
	addi	r61, r61, 1				# 23162
	lwx		r9, r57, r61				# 23025
	cmpi	r9, -1
	beq		.b33174				# 23052
	b		.b33175
.b33174:
	addi	r9, r0, 1				# 23074
.b33221:
	sw		r17, 0(r30)				# 25478
	lli		r9, intersection_point.2559				# 1162
	sw		r19, 0(r9)				# 1162
	sw		r26, 1(r9)				# 1162
	sw		r50, 2(r9)				# 25478
	lli		r9, intersected_object_id.2562				# 25478
	sw		r37, 0(r9)				# 25478
	lli		r9, intsec_rectside.2553				# 25570
	sw		r14, 0(r9)				# 25570
	b		.b33167				# 25570
.b33212:
	cmpi	r9, 0
	beq		.b33216				# 22625
.b33217:
	addi	r9, r0, 0				# 22625
	b		.b33218				# 23092
.b33216:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b33167				# 25421
.b33209:
	addi	r9, r0, 0				# 3186
	cmpi	r25, 0
	beq		.b33212				# 765
	b		.b33213
.b33206:
	addis	r25, r0, 16256				# 22604
	fsub	r9, r9, r25				# 22604
	lw		r25, 6(r41)				# 3372
	fcmp	r29, r9
	ble		.b33209				# 3186
	b		.b33210
.b33203:
	cmpi	r53, 3
	beq		.b33206				# 22583
	b		.b33207
.b33190:
	lw		r48, 4(r41)				# 4293
	lw		r9, 0(r48)				# 2037
	fmul	r25, r9, r33				# 2037
	lw		r9, 1(r48)				# 2052
	fmul	r9, r9, r23				# 2037
	fadd	r25, r25, r9				# 2037
	lw		r9, 2(r48)				# 2067
	fmul	r9, r9, r39				# 2037
	fadd	r9, r25, r9				# 22411
	lw		r25, 6(r41)				# 3372
	fcmp	r29, r9
	ble		.b33193				# 3186
.b33194:
	addi	r9, r0, 1				# 3186
	cmpi	r25, 0
	beq		.b33196				# 765
.b33197:
	cmpi	r9, 0
	beq		.b33198				# 775
.b33199:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b33167				# 25421
.b33198:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b33218				# 23092
.b33196:
	cmpi	r9, 0
	beq		.b33200				# 22459
.b33201:
	addi	r9, r0, 0				# 22459
	b		.b33218				# 23092
.b33200:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b33167				# 25421
.b33193:
	addi	r9, r0, 0				# 3186
	cmpi	r25, 0
	beq		.b33196				# 765
	b		.b33197
.b33177:
	fabs	r9, r33				# 322
	lw		r48, 4(r41)				# 3734
	lw		r25, 0(r48)				# 22178
	fcmp	r25, r9
	ble		.b33180				# 3096
.b33181:
	fabs	r9, r23				# 322
	lw		r25, 1(r48)				# 22224
	fcmp	r25, r9
	ble		.b33182				# 3096
.b33183:
	fabs	r25, r39				# 322
	lw		r9, 2(r48)				# 22261
	fcmp	r9, r25
	ble		.b33184				# 3096
.b33185:
	addi	r9, r0, 1				# 3096
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b33218				# 23092
.b33219:
	addi	r9, r0, 0				# 23141
	b		.b33167				# 25421
.b33184:
	addi	r9, r0, 0				# 3096
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b33188				# 22348
.b33189:
	addi	r9, r0, 0				# 22348
	b		.b33218				# 23092
.b33188:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b33167				# 25421
.b33182:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b33188				# 22348
	b		.b33189
.b33180:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b33188				# 22348
	b		.b33189
.b33161:
	fneg	r9, r9				# 3025
	b		.b33160				# 3025
.b33158:
	addi	r14, r0, 0				# 15535
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b33076				# 25732
.b33166:
	addi	r10, r10, 1				# 25769
	lwx		r37, r57, r10				# 25005
	cmpi	r37, -1
	beq		.b33076				# 25042
	b		.b33079
.b33156:
	addis	r26, r0, 16256				# 15303
	fsub	r9, r9, r26				# 15303
	b		.b33155				# 15303
.b33153:
	cmpi	r33, 3
	beq		.b33156				# 15282
	b		.b33157
.b33150:
	b		.b33149				# 14803
.b33147:
	addi	r14, r0, 0				# 15111
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b33076				# 25732
	b		.b33166
.b33145:
	addi	r50, r0, 0				# 3126
	fcmp	r61, r50
	beq		.b33147				# 3126
	b		.b33148
.b33140:
	lw		r50, 4(r41)				# 4293
	lli		r9, ptrace_dirvec.2601				# 1949
	lw		r25, 0(r9)				# 1949
	lw		r61, 0(r50)				# 1949
	fmul	r26, r25, r61				# 1949
	lw		r25, 1(r9)				# 1967
	lw		r23, 1(r50)				# 1967
	fmul	r25, r25, r23				# 1949
	fadd	r25, r26, r25				# 1949
	lw		r9, 2(r9)				# 1985
	lw		r26, 2(r50)				# 1985
	fmul	r9, r9, r26				# 1949
	fadd	r25, r25, r9				# 14187
	addi	r9, r0, 0				# 3156
	fcmp	r25, r9
	ble		.b33142				# 3156
.b33143:
	fmul	r9, r61, r29				# 2037
	fmul	r61, r23, r14				# 2037
	fadd	r61, r9, r61				# 2037
	fmul	r9, r26, r17				# 2037
	fadd	r9, r61, r9				# 14262
	fneg	r9, r9				# 14262
	fdiv	r9, r9, r25				# 14243
	lli		r61, solver_dist.2550				# 14243
	sw		r9, 0(r61)				# 14243
	addi	r14, r0, 1				# 14302
	b		.b33164				# 25118
.b33142:
	addi	r14, r0, 0				# 14314
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b33076				# 25732
	b		.b33166
.b33081:
	lli		r12, ptrace_dirvec.2601				# 13452
	lw		r50, 0(r12)				# 13452
	addi	r23, r0, 0				# 13860
	fcmp	r50, r23
	beq		.b33084				# 3126
.b33085:
	lw		r25, 4(r41)				# 4293
	lw		r61, 6(r41)				# 3372
	fcmp	r23, r50
	ble		.b33087				# 3186
.b33088:
	addi	r9, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b33090				# 765
.b33091:
	cmpi	r9, 0
	beq		.b33092				# 775
.b33093:
	addi	r9, r0, 0				# 775
	lw		r61, 0(r25)				# 13527
	fneg	r61, r61				# 3025
.b33094:
	fsub	r9, r61, r29				# 13603
	fdiv	r26, r9, r50				# 13594
	lw		r9, 1(r12)				# 13649
	fmul	r9, r26, r9				# 13649
	fadd	r9, r9, r14				# 13643
	fabs	r9, r9				# 322
	lw		r61, 1(r25)				# 13636
	fcmp	r61, r9
	ble		.b33097				# 3096
.b33098:
	lw		r9, 2(r12)				# 13709
	fmul	r9, r26, r9				# 13709
	fadd	r9, r9, r17				# 13703
	fabs	r9, r9				# 322
	lw		r61, 2(r25)				# 13696
	fcmp	r61, r9
	ble		.b33099				# 3096
.b33100:
	lli		r9, solver_dist.2550				# 13756
	sw		r26, 0(r9)				# 13756
	addi	r9, r0, 1				# 13779
	addi	r14, r0, 1				# 13917
	b		.b33164				# 25118
.b33099:
	addi	r9, r0, 0				# 13794
	lw		r25, 1(r12)				# 13452
	fcmp	r25, r23
	beq		.b33104				# 3126
.b33105:
	lw		r26, 4(r41)				# 4293
	lw		r61, 6(r41)				# 3372
	fcmp	r23, r25
	ble		.b33107				# 3186
.b33108:
	addi	r9, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b33110				# 765
.b33111:
	cmpi	r9, 0
	beq		.b33112				# 775
.b33113:
	addi	r9, r0, 0				# 775
	lw		r61, 1(r26)				# 13527
	fneg	r61, r61				# 3025
.b33114:
	fsub	r9, r61, r14				# 13603
	fdiv	r61, r9, r25				# 13594
	lw		r9, 2(r12)				# 13649
	fmul	r9, r61, r9				# 13649
	fadd	r9, r9, r17				# 13643
	fabs	r9, r9				# 322
	lw		r53, 2(r26)				# 13636
	fcmp	r53, r9
	ble		.b33117				# 3096
.b33118:
	fmul	r9, r61, r50				# 13709
	fadd	r9, r9, r29				# 13703
	fabs	r53, r9				# 322
	lw		r9, 0(r26)				# 13696
	fcmp	r9, r53
	ble		.b33119				# 3096
.b33120:
	lli		r9, solver_dist.2550				# 13756
	sw		r61, 0(r9)				# 13756
	addi	r9, r0, 1				# 13779
	addi	r14, r0, 2				# 13980
	b		.b33164				# 25118
.b33119:
	addi	r9, r0, 0				# 13794
	lw		r12, 2(r12)				# 13452
	fcmp	r12, r23
	beq		.b33123				# 3126
.b33124:
	lw		r26, 4(r41)				# 4293
	lw		r9, 6(r41)				# 3372
	fcmp	r23, r12
	ble		.b33126				# 3186
.b33127:
	addi	r61, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b33129				# 765
.b33130:
	cmpi	r61, 0
	beq		.b33131				# 775
.b33132:
	addi	r61, r0, 0				# 775
	lw		r9, 2(r26)				# 13527
	fneg	r9, r9				# 3025
.b33133:
	fsub	r9, r9, r17				# 13603
	fdiv	r23, r9, r12				# 13594
	fmul	r9, r23, r50				# 13649
	fadd	r9, r9, r29				# 13643
	fabs	r61, r9				# 322
	lw		r9, 0(r26)				# 13636
	fcmp	r9, r61
	ble		.b33136				# 3096
.b33137:
	fmul	r9, r23, r25				# 13709
	fadd	r9, r9, r14				# 13703
	fabs	r9, r9				# 322
	lw		r61, 1(r26)				# 13696
	fcmp	r61, r9
	ble		.b33138				# 3096
.b33139:
	lli		r9, solver_dist.2550				# 13756
	sw		r23, 0(r9)				# 13756
	addi	r14, r0, 3				# 14043
	b		.b33164				# 25118
.b33138:
	addi	r14, r0, 0				# 14107
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b33076				# 25732
	b		.b33166
.b33136:
	addi	r14, r0, 0				# 14107
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b33076				# 25732
	b		.b33166
.b33131:
	addi	r61, r0, 1				# 775
	lw		r9, 2(r26)				# 13527
	b		.b33133				# 918
.b33129:
	lw		r9, 2(r26)				# 13527
	cmpi	r61, 0
	beq		.b33134				# 905
.b33135:
	b		.b33133				# 918
.b33134:
	fneg	r9, r9				# 3025
	b		.b33133				# 3025
.b33126:
	addi	r61, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b33129				# 765
	b		.b33130
.b33123:
	addi	r14, r0, 0				# 14107
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b33076				# 25732
	b		.b33166
.b33117:
	addi	r9, r0, 0				# 13807
	lw		r12, 2(r12)				# 13452
	fcmp	r12, r23
	beq		.b33123				# 3126
	b		.b33124
.b33112:
	addi	r9, r0, 1				# 775
	lw		r61, 1(r26)				# 13527
	b		.b33114				# 918
.b33110:
	lw		r61, 1(r26)				# 13527
	cmpi	r9, 0
	beq		.b33115				# 905
.b33116:
	b		.b33114				# 918
.b33115:
	fneg	r61, r61				# 3025
	b		.b33114				# 3025
.b33107:
	addi	r9, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b33110				# 765
	b		.b33111
.b33104:
	addi	r9, r0, 0				# 13477
	lw		r12, 2(r12)				# 13452
	fcmp	r12, r23
	beq		.b33123				# 3126
	b		.b33124
.b33097:
	addi	r9, r0, 0				# 13807
	lw		r25, 1(r12)				# 13452
	fcmp	r25, r23
	beq		.b33104				# 3126
	b		.b33105
.b33092:
	addi	r9, r0, 1				# 775
	lw		r61, 0(r25)				# 13527
	b		.b33094				# 918
.b33090:
	lw		r61, 0(r25)				# 13527
	cmpi	r9, 0
	beq		.b33095				# 905
.b33096:
	b		.b33094				# 918
.b33095:
	fneg	r61, r61				# 3025
	b		.b33094				# 3025
.b33087:
	addi	r9, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b33090				# 765
	b		.b33091
.b33084:
	addi	r9, r0, 0				# 13477
	lw		r25, 1(r12)				# 13452
	fcmp	r25, r23
	beq		.b33104				# 3126
	b		.b33105
.b33060:
	addis	r28, r0, 16256				# 1801
	b		.b33059				# 1801
	# main program start
_min_caml_start:
	addi	r7, r0, 0				# 154
	lli		r13, n_objects.2512				# 138
	sw		r7, 0(r13)				# 154
	addi	r25, r0, 0				# 279
	mv		r61, r4
	addi	r4, r4, 0				# 267
	lli		r9, dummy.2515				# 267
	sw		r61, 0(r9)				# 267
	mv		r9, r4
	addi	r4, r4, 11				# 315
	sw		r7, 0(r9)				# 315
	sw		r7, 1(r9)				# 315
	sw		r7, 2(r9)				# 315
	sw		r7, 3(r9)				# 315
	sw		r61, 4(r9)				# 315
	sw		r61, 5(r9)				# 315
	sw		r7, 6(r9)				# 315
	sw		r61, 7(r9)				# 315
	sw		r61, 8(r9)				# 315
	sw		r61, 9(r9)				# 315
	sw		r61, 10(r9)				# 315
	lli		r61, Tt267.2522				# 301
	sw		r9, 0(r61)				# 301
	lli		r41, objects.2523				# 250
	addi	r61, r0, 0				# 301
.b33581:
	swx		r9, r61, r41				# 301
	addi	r61, r61, 1				# 301
	cmpi	r61, 59
	ble		.b33581				# 301
.b33579:
	lli		r57, screen.2526				# 410
	sw		r25, 0(r57)				# 423
	sw		r25, 1(r57)				# 423
	sw		r25, 2(r57)				# 423
	lli		r10, viewpoint.2529				# 465
	sw		r25, 0(r10)				# 481
	sw		r25, 1(r10)				# 481
	sw		r25, 2(r10)				# 481
	lli		r51, light.2532				# 553
	sw		r25, 0(r51)				# 565
	sw		r25, 1(r51)				# 565
	sw		r25, 2(r51)				# 565
	addis	r9, r0, 17279				# 643
	lli		r30, beam.2535				# 632
	sw		r9, 0(r30)				# 643
	addi	r9, r0, -1				# 732
	mv		r61, r4
	addi	r4, r4, 1				# 732
	sw		r9, 0(r61)				# 732
	lli		r9, Ta280.2540				# 717
	sw		r61, 0(r9)				# 717
	lli		r28, and_net.2541				# 703
	addi	r9, r0, 0				# 717
.b33585:
	swx		r61, r9, r28				# 717
	addi	r9, r9, 1				# 717
	cmpi	r9, 49
	ble		.b33585				# 717
.b33583:
	lw		r61, 0(r28)				# 818
	lli		r9, Ta283.2545				# 818
	sw		r61, 0(r9)				# 818
	mv		r9, r4
	addi	r4, r4, 1				# 818
	sw		r61, 0(r9)				# 818
	lli		r61, Ta285.2546				# 804
	sw		r9, 0(r61)				# 804
	lli		r61, or_net.2547				# 791
	sw		r9, 0(r61)				# 804
	lli		r9, solver_dist.2550				# 947
	sw		r25, 0(r9)				# 965
	lli		r9, intsec_rectside.2553				# 1028
	sw		r7, 0(r9)				# 1050
	addis	r61, r0, 20078
	ori		r61, r61, 27432				# 1118
	lli		r9, tmin.2556				# 1107
	sw		r61, 0(r9)				# 1118
	lli		r9, intersection_point.2559				# 1171
	sw		r25, 0(r9)				# 1196
	sw		r25, 1(r9)				# 1196
	sw		r25, 2(r9)				# 1196
	lli		r9, intersected_object_id.2562				# 1259
	sw		r7, 0(r9)				# 1287
	lli		r9, nvector.2565				# 1330
	sw		r25, 0(r9)				# 1344
	sw		r25, 1(r9)				# 1344
	sw		r25, 2(r9)				# 1344
	lli		r9, texture_color.2568				# 1383
	sw		r25, 0(r9)				# 1403
	sw		r25, 1(r9)				# 1403
	sw		r25, 2(r9)				# 1403
	lli		r9, diffuse_ray.2571				# 1470
	sw		r25, 0(r9)				# 1488
	sw		r25, 1(r9)				# 1488
	sw		r25, 2(r9)				# 1488
	lli		r9, rgb.2574				# 1551
	sw		r25, 0(r9)				# 1561
	sw		r25, 1(r9)				# 1561
	sw		r25, 2(r9)				# 1561
	lli		r26, image_size.2577				# 1604
	sw		r7, 0(r26)				# 1621
	sw		r7, 1(r26)				# 1621
	lli		r15, image_center.2580				# 1688
	sw		r7, 0(r15)				# 1707
	sw		r7, 1(r15)				# 1707
	lli		r62, scan_pitch.2583				# 1763
	sw		r25, 0(r62)				# 1780
	lli		r9, startp.2586				# 1850
	sw		r25, 0(r9)				# 1863
	sw		r25, 1(r9)				# 1863
	sw		r25, 2(r9)				# 1863
	lli		r9, startp_fast.2589				# 1937
	sw		r25, 0(r9)				# 1955
	sw		r25, 1(r9)				# 1955
	sw		r25, 2(r9)				# 1955
	lli		r37, screenx_dir.2592				# 2031
	sw		r25, 0(r37)				# 2049
	sw		r25, 1(r37)				# 2049
	sw		r25, 2(r37)				# 2049
	lli		r54, screeny_dir.2595				# 2069
	sw		r25, 0(r54)				# 2087
	sw		r25, 1(r54)				# 2087
	sw		r25, 2(r54)				# 2087
	lli		r46, screenz_dir.2598				# 2107
	sw		r25, 0(r46)				# 2125
	sw		r25, 1(r46)				# 2125
	sw		r25, 2(r46)				# 2125
	lli		r9, ptrace_dirvec.2601				# 2198
	sw		r25, 0(r9)				# 2219
	sw		r25, 1(r9)				# 2219
	sw		r25, 2(r9)				# 2219
	mv		r61, r4
	addi	r4, r4, 0				# 2318
	lli		r9, dummyf.2604				# 2318
	sw		r61, 0(r9)				# 2318
	mv		r28, r4
	addi	r4, r4, 0				# 2353
	lli		r9, dummyff.2606				# 2353
	sw		r28, 0(r9)				# 2353
	mv		r9, r4
	addi	r4, r4, 2				# 2420
	sw		r61, 0(r9)				# 2420
	sw		r28, 1(r9)				# 2420
	lli		r61, Tt326.2608				# 2407
	sw		r9, 0(r61)				# 2407
	mv		r9, r4
	addi	r4, r4, 0				# 2392
	lli		r61, dummy_vs.2609				# 2392
	sw		r9, 0(r61)				# 2392
	lli		r61, dirvecs.2611				# 2301
	sw		r9, 0(r61)				# 2443
	sw		r9, 1(r61)				# 2443
	sw		r9, 2(r61)				# 2443
	sw		r9, 3(r61)				# 2443
	sw		r9, 4(r61)				# 2443
	mv		r61, r4
	addi	r4, r4, 0				# 2542
	lli		r9, dummyf2.2614				# 2542
	sw		r61, 0(r9)				# 2542
	lli		r9, v3.2617				# 2578
	sw		r25, 0(r9)				# 2587
	sw		r25, 1(r9)				# 2587
	sw		r25, 2(r9)				# 2587
	lli		r28, consts.2619				# 2609
	addi	r9, r0, 0				# 2622
.b33589:
	swx		r61, r9, r28				# 2622
	addi	r9, r9, 1				# 2622
	cmpi	r9, 59
	ble		.b33589				# 2622
.b33587:
	mv		r28, r4
	addi	r4, r4, 0				# 2717
	lli		r9, dummyf3.2623				# 2717
	sw		r28, 0(r9)				# 2717
	mv		r61, r4
	addi	r4, r4, 0				# 2753
	lli		r9, dummyff3.2625				# 2753
	sw		r61, 0(r9)				# 2753
	mv		r9, r4
	addi	r4, r4, 2				# 2808
	sw		r28, 0(r9)				# 2808
	sw		r61, 1(r9)				# 2808
	lli		r61, dummydv.2626				# 2794
	sw		r9, 0(r61)				# 2794
	mv		r61, r4
	addi	r4, r4, 3				# 2848
	sw		r7, 0(r61)				# 2848
	sw		r9, 1(r61)				# 2848
	sw		r25, 2(r61)				# 2848
	lli		r9, Tt339.2630				# 2833
	sw		r61, 0(r9)				# 2833
	lli		r28, reflections.2631				# 2697
	addi	r9, r0, 0				# 2833
.b33593:
	swx		r61, r9, r28				# 2833
	addi	r9, r9, 1				# 2833
	cmpi	r9, 179
	ble		.b33593				# 2833
.b33591:
	lli		r9, n_reflections.2634				# 2911
	sw		r7, 0(r9)				# 2931
	addi	r61, r0, 128				# 47379
	sw		r61, 0(r26)				# 46875
	sw		r61, 1(r26)				# 46875
	addi	r9, r0, 64				# 46929
	sw		r9, 0(r15)				# 46875
	sw		r9, 1(r15)				# 46875
	addis	r9, r0, 17152				# 47013
	itof	r61, r61				# 639
	fdiv	r9, r9, r61				# 46995
	sw		r9, 0(r62)				# 46875
	mv		r62, r4
	addi	r4, r4, 3				# 42355
	sw		r25, 0(r62)				# 42355
	sw		r25, 1(r62)				# 42355
	sw		r25, 2(r62)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r28, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r28)				# 42151
	sw		r9, 1(r28)				# 42151
	sw		r9, 2(r28)				# 42151
	sw		r9, 3(r28)				# 42151
	sw		r9, 4(r28)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r28)				# 42173
	mv		r26, r4
	addi	r4, r4, 5				# 42435
	sw		r7, 0(r26)				# 42435
	sw		r7, 1(r26)				# 42435
	sw		r7, 2(r26)				# 42435
	sw		r7, 3(r26)				# 42435
	sw		r7, 4(r26)				# 42435
	mv		r39, r4
	addi	r4, r4, 5				# 42468
	sw		r7, 0(r39)				# 42468
	sw		r7, 1(r39)				# 42468
	sw		r7, 2(r39)				# 42468
	sw		r7, 3(r39)				# 42468
	sw		r7, 4(r39)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r48)				# 42151
	sw		r9, 1(r48)				# 42151
	sw		r9, 2(r48)				# 42151
	sw		r9, 3(r48)				# 42151
	sw		r9, 4(r48)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r61, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r61)				# 42151
	sw		r9, 1(r61)				# 42151
	sw		r9, 2(r61)				# 42151
	sw		r9, 3(r61)				# 42151
	sw		r9, 4(r61)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r61)				# 42173
	mv		r23, r4
	addi	r4, r4, 1				# 42586
	sw		r7, 0(r23)				# 42586
	mv		r15, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r15)				# 42117
	sw		r25, 1(r15)				# 42117
	sw		r25, 2(r15)				# 42117
	mv		r9, r4
	addi	r4, r4, 5				# 42151
	sw		r15, 0(r9)				# 42151
	sw		r15, 1(r9)				# 42151
	sw		r15, 2(r9)				# 42151
	sw		r15, 3(r9)				# 42151
	sw		r15, 4(r9)				# 42151
	mv		r15, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r15)				# 42186
	sw		r25, 1(r15)				# 42186
	sw		r25, 2(r15)				# 42186
	sw		r15, 1(r9)				# 42173
	mv		r15, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r15)				# 42219
	sw		r25, 1(r15)				# 42219
	sw		r25, 2(r15)				# 42219
	sw		r15, 2(r9)				# 42173
	mv		r15, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r15)				# 42252
	sw		r25, 1(r15)				# 42252
	sw		r25, 2(r15)				# 42252
	sw		r15, 3(r9)				# 42173
	mv		r15, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r15)				# 42285
	sw		r25, 1(r15)				# 42285
	sw		r25, 2(r15)				# 42285
	sw		r15, 4(r9)				# 42173
	mv		r15, r4
	addi	r4, r4, 8				# 42651
	sw		r62, 0(r15)				# 42651
	sw		r28, 1(r15)				# 42651
	sw		r26, 2(r15)				# 42651
	sw		r39, 3(r15)				# 42651
	sw		r48, 4(r15)				# 42651
	sw		r61, 5(r15)				# 42651
	sw		r23, 6(r15)				# 42651
	sw		r9, 7(r15)				# 42651
	mv		r39, r4
	addi	r4, r4, 128				# 42912
	addi	r9, r0, 0				# 42912
.b33597:
	swx		r15, r9, r39				# 42912
	addi	r9, r9, 1				# 42912
	cmpi	r9, 127
	ble		.b33597				# 42912
.b33595:
	sw		r39, 0(r3)				# 42901
	addi	r28, r0, 126				# 42764
.b33601:
	mv		r23, r4
	addi	r4, r4, 3				# 42355
	sw		r25, 0(r23)				# 42355
	sw		r25, 1(r23)				# 42355
	sw		r25, 2(r23)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r26, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r26)				# 42151
	sw		r9, 1(r26)				# 42151
	sw		r9, 2(r26)				# 42151
	sw		r9, 3(r26)				# 42151
	sw		r9, 4(r26)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r26)				# 42173
	mv		r15, r4
	addi	r4, r4, 5				# 42435
	sw		r7, 0(r15)				# 42435
	sw		r7, 1(r15)				# 42435
	sw		r7, 2(r15)				# 42435
	sw		r7, 3(r15)				# 42435
	sw		r7, 4(r15)				# 42435
	mv		r61, r4
	addi	r4, r4, 5				# 42468
	sw		r7, 0(r61)				# 42468
	sw		r7, 1(r61)				# 42468
	sw		r7, 2(r61)				# 42468
	sw		r7, 3(r61)				# 42468
	sw		r7, 4(r61)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r29, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r29)				# 42151
	sw		r9, 1(r29)				# 42151
	sw		r9, 2(r29)				# 42151
	sw		r9, 3(r29)				# 42151
	sw		r9, 4(r29)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r48)				# 42151
	sw		r9, 1(r48)				# 42151
	sw		r9, 2(r48)				# 42151
	sw		r9, 3(r48)				# 42151
	sw		r9, 4(r48)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 1				# 42586
	sw		r7, 0(r9)				# 42586
	mv		r62, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r62)				# 42117
	sw		r25, 1(r62)				# 42117
	sw		r25, 2(r62)				# 42117
	mv		r19, r4
	addi	r4, r4, 5				# 42151
	sw		r62, 0(r19)				# 42151
	sw		r62, 1(r19)				# 42151
	sw		r62, 2(r19)				# 42151
	sw		r62, 3(r19)				# 42151
	sw		r62, 4(r19)				# 42151
	mv		r62, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r62)				# 42186
	sw		r25, 1(r62)				# 42186
	sw		r25, 2(r62)				# 42186
	sw		r62, 1(r19)				# 42173
	mv		r62, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r62)				# 42219
	sw		r25, 1(r62)				# 42219
	sw		r25, 2(r62)				# 42219
	sw		r62, 2(r19)				# 42173
	mv		r62, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r62)				# 42252
	sw		r25, 1(r62)				# 42252
	sw		r25, 2(r62)				# 42252
	sw		r62, 3(r19)				# 42173
	mv		r62, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r62)				# 42285
	sw		r25, 1(r62)				# 42285
	sw		r25, 2(r62)				# 42285
	sw		r62, 4(r19)				# 42173
	mv		r62, r4
	addi	r4, r4, 8				# 42651
	sw		r23, 0(r62)				# 42651
	sw		r26, 1(r62)				# 42651
	sw		r15, 2(r62)				# 42651
	sw		r61, 3(r62)				# 42651
	sw		r29, 4(r62)				# 42651
	sw		r48, 5(r62)				# 42651
	sw		r9, 6(r62)				# 42651
	sw		r19, 7(r62)				# 42651
	swx		r62, r28, r39				# 42785
	addi	r28, r28, -1				# 42817
	cmpi	r28, 0
	bge		.b33601				# 42764
.b33599:
	mv		r19, r4
	addi	r4, r4, 3				# 42355
	sw		r25, 0(r19)				# 42355
	sw		r25, 1(r19)				# 42355
	sw		r25, 2(r19)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r28, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r28)				# 42151
	sw		r9, 1(r28)				# 42151
	sw		r9, 2(r28)				# 42151
	sw		r9, 3(r28)				# 42151
	sw		r9, 4(r28)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 5				# 42435
	sw		r7, 0(r61)				# 42435
	sw		r7, 1(r61)				# 42435
	sw		r7, 2(r61)				# 42435
	sw		r7, 3(r61)				# 42435
	sw		r7, 4(r61)				# 42435
	mv		r15, r4
	addi	r4, r4, 5				# 42468
	sw		r7, 0(r15)				# 42468
	sw		r7, 1(r15)				# 42468
	sw		r7, 2(r15)				# 42468
	sw		r7, 3(r15)				# 42468
	sw		r7, 4(r15)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r26, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r26)				# 42151
	sw		r9, 1(r26)				# 42151
	sw		r9, 2(r26)				# 42151
	sw		r9, 3(r26)				# 42151
	sw		r9, 4(r26)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r39, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r39)				# 42151
	sw		r9, 1(r39)				# 42151
	sw		r9, 2(r39)				# 42151
	sw		r9, 3(r39)				# 42151
	sw		r9, 4(r39)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r39)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r39)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r39)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r39)				# 42173
	mv		r23, r4
	addi	r4, r4, 1				# 42586
	sw		r7, 0(r23)				# 42586
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r62, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r62)				# 42151
	sw		r9, 1(r62)				# 42151
	sw		r9, 2(r62)				# 42151
	sw		r9, 3(r62)				# 42151
	sw		r9, 4(r62)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r62)				# 42173
	mv		r48, r4
	addi	r4, r4, 8				# 42651
	sw		r19, 0(r48)				# 42651
	sw		r28, 1(r48)				# 42651
	sw		r61, 2(r48)				# 42651
	sw		r15, 3(r48)				# 42651
	sw		r26, 4(r48)				# 42651
	sw		r39, 5(r48)				# 42651
	sw		r23, 6(r48)				# 42651
	sw		r62, 7(r48)				# 42651
	mv		r26, r4
	addi	r4, r4, 128				# 42912
	addi	r9, r0, 0				# 42912
.b33605:
	swx		r48, r9, r26				# 42912
	addi	r9, r9, 1				# 42912
	cmpi	r9, 127
	ble		.b33605				# 42912
.b33603:
	sw		r26, -1(r3)				# 42901
	addi	r39, r0, 126				# 42764
.b33609:
	mv		r61, r4
	addi	r4, r4, 3				# 42355
	sw		r25, 0(r61)				# 42355
	sw		r25, 1(r61)				# 42355
	sw		r25, 2(r61)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r48)				# 42151
	sw		r9, 1(r48)				# 42151
	sw		r9, 2(r48)				# 42151
	sw		r9, 3(r48)				# 42151
	sw		r9, 4(r48)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r48)				# 42173
	mv		r19, r4
	addi	r4, r4, 5				# 42435
	sw		r7, 0(r19)				# 42435
	sw		r7, 1(r19)				# 42435
	sw		r7, 2(r19)				# 42435
	sw		r7, 3(r19)				# 42435
	sw		r7, 4(r19)				# 42435
	mv		r28, r4
	addi	r4, r4, 5				# 42468
	sw		r7, 0(r28)				# 42468
	sw		r7, 1(r28)				# 42468
	sw		r7, 2(r28)				# 42468
	sw		r7, 3(r28)				# 42468
	sw		r7, 4(r28)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r15, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r15)				# 42151
	sw		r9, 1(r15)				# 42151
	sw		r9, 2(r15)				# 42151
	sw		r9, 3(r15)				# 42151
	sw		r9, 4(r15)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r15)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r15)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r15)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r15)				# 42173
	mv		r62, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r62)				# 42117
	sw		r25, 1(r62)				# 42117
	sw		r25, 2(r62)				# 42117
	mv		r9, r4
	addi	r4, r4, 5				# 42151
	sw		r62, 0(r9)				# 42151
	sw		r62, 1(r9)				# 42151
	sw		r62, 2(r9)				# 42151
	sw		r62, 3(r9)				# 42151
	sw		r62, 4(r9)				# 42151
	mv		r62, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r62)				# 42186
	sw		r25, 1(r62)				# 42186
	sw		r25, 2(r62)				# 42186
	sw		r62, 1(r9)				# 42173
	mv		r62, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r62)				# 42219
	sw		r25, 1(r62)				# 42219
	sw		r25, 2(r62)				# 42219
	sw		r62, 2(r9)				# 42173
	mv		r62, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r62)				# 42252
	sw		r25, 1(r62)				# 42252
	sw		r25, 2(r62)				# 42252
	sw		r62, 3(r9)				# 42173
	mv		r62, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r62)				# 42285
	sw		r25, 1(r62)				# 42285
	sw		r25, 2(r62)				# 42285
	sw		r62, 4(r9)				# 42173
	mv		r62, r4
	addi	r4, r4, 1				# 42586
	sw		r7, 0(r62)				# 42586
	mv		r23, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r23)				# 42117
	sw		r25, 1(r23)				# 42117
	sw		r25, 2(r23)				# 42117
	mv		r29, r4
	addi	r4, r4, 5				# 42151
	sw		r23, 0(r29)				# 42151
	sw		r23, 1(r29)				# 42151
	sw		r23, 2(r29)				# 42151
	sw		r23, 3(r29)				# 42151
	sw		r23, 4(r29)				# 42151
	mv		r23, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r23)				# 42186
	sw		r25, 1(r23)				# 42186
	sw		r25, 2(r23)				# 42186
	sw		r23, 1(r29)				# 42173
	mv		r23, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r23)				# 42219
	sw		r25, 1(r23)				# 42219
	sw		r25, 2(r23)				# 42219
	sw		r23, 2(r29)				# 42173
	mv		r23, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r23)				# 42252
	sw		r25, 1(r23)				# 42252
	sw		r25, 2(r23)				# 42252
	sw		r23, 3(r29)				# 42173
	mv		r23, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r23)				# 42285
	sw		r25, 1(r23)				# 42285
	sw		r25, 2(r23)				# 42285
	sw		r23, 4(r29)				# 42173
	mv		r23, r4
	addi	r4, r4, 8				# 42651
	sw		r61, 0(r23)				# 42651
	sw		r48, 1(r23)				# 42651
	sw		r19, 2(r23)				# 42651
	sw		r28, 3(r23)				# 42651
	sw		r15, 4(r23)				# 42651
	sw		r9, 5(r23)				# 42651
	sw		r62, 6(r23)				# 42651
	sw		r29, 7(r23)				# 42651
	swx		r23, r39, r26				# 42785
	addi	r39, r39, -1				# 42817
	cmpi	r39, 0
	bge		.b33609				# 42764
.b33607:
	mv		r61, r4
	addi	r4, r4, 3				# 42355
	sw		r25, 0(r61)				# 42355
	sw		r25, 1(r61)				# 42355
	sw		r25, 2(r61)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r23, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r23)				# 42151
	sw		r9, 1(r23)				# 42151
	sw		r9, 2(r23)				# 42151
	sw		r9, 3(r23)				# 42151
	sw		r9, 4(r23)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r23)				# 42173
	mv		r28, r4
	addi	r4, r4, 5				# 42435
	sw		r7, 0(r28)				# 42435
	sw		r7, 1(r28)				# 42435
	sw		r7, 2(r28)				# 42435
	sw		r7, 3(r28)				# 42435
	sw		r7, 4(r28)				# 42435
	mv		r39, r4
	addi	r4, r4, 5				# 42468
	sw		r7, 0(r39)				# 42468
	sw		r7, 1(r39)				# 42468
	sw		r7, 2(r39)				# 42468
	sw		r7, 3(r39)				# 42468
	sw		r7, 4(r39)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r26, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r26)				# 42151
	sw		r9, 1(r26)				# 42151
	sw		r9, 2(r26)				# 42151
	sw		r9, 3(r26)				# 42151
	sw		r9, 4(r26)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r48)				# 42151
	sw		r9, 1(r48)				# 42151
	sw		r9, 2(r48)				# 42151
	sw		r9, 3(r48)				# 42151
	sw		r9, 4(r48)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r48)				# 42173
	mv		r15, r4
	addi	r4, r4, 1				# 42586
	sw		r7, 0(r15)				# 42586
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r62, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r62)				# 42151
	sw		r9, 1(r62)				# 42151
	sw		r9, 2(r62)				# 42151
	sw		r9, 3(r62)				# 42151
	sw		r9, 4(r62)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 8				# 42651
	sw		r61, 0(r9)				# 42651
	sw		r23, 1(r9)				# 42651
	sw		r28, 2(r9)				# 42651
	sw		r39, 3(r9)				# 42651
	sw		r26, 4(r9)				# 42651
	sw		r48, 5(r9)				# 42651
	sw		r15, 6(r9)				# 42651
	sw		r62, 7(r9)				# 42651
	mv		r48, r4
	addi	r4, r4, 128				# 42912
	addi	r61, r0, 0				# 42912
.b33613:
	swx		r9, r61, r48				# 42912
	addi	r61, r61, 1				# 42912
	cmpi	r61, 127
	ble		.b33613				# 42912
.b33611:
	sw		r48, -2(r3)				# 42901
	addi	r29, r0, 126				# 42764
.b33617:
	mv		r19, r4
	addi	r4, r4, 3				# 42355
	sw		r25, 0(r19)				# 42355
	sw		r25, 1(r19)				# 42355
	sw		r25, 2(r19)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r61, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r61)				# 42151
	sw		r9, 1(r61)				# 42151
	sw		r9, 2(r61)				# 42151
	sw		r9, 3(r61)				# 42151
	sw		r9, 4(r61)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r61)				# 42173
	mv		r39, r4
	addi	r4, r4, 5				# 42435
	sw		r7, 0(r39)				# 42435
	sw		r7, 1(r39)				# 42435
	sw		r7, 2(r39)				# 42435
	sw		r7, 3(r39)				# 42435
	sw		r7, 4(r39)				# 42435
	mv		r28, r4
	addi	r4, r4, 5				# 42468
	sw		r7, 0(r28)				# 42468
	sw		r7, 1(r28)				# 42468
	sw		r7, 2(r28)				# 42468
	sw		r7, 3(r28)				# 42468
	sw		r7, 4(r28)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r26, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r26)				# 42151
	sw		r9, 1(r26)				# 42151
	sw		r9, 2(r26)				# 42151
	sw		r9, 3(r26)				# 42151
	sw		r9, 4(r26)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r9)				# 42117
	sw		r25, 1(r9)				# 42117
	sw		r25, 2(r9)				# 42117
	mv		r23, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r23)				# 42151
	sw		r9, 1(r23)				# 42151
	sw		r9, 2(r23)				# 42151
	sw		r9, 3(r23)				# 42151
	sw		r9, 4(r23)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r9)				# 42186
	sw		r25, 1(r9)				# 42186
	sw		r25, 2(r9)				# 42186
	sw		r9, 1(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r9)				# 42219
	sw		r25, 1(r9)				# 42219
	sw		r25, 2(r9)				# 42219
	sw		r9, 2(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r9)				# 42252
	sw		r25, 1(r9)				# 42252
	sw		r25, 2(r9)				# 42252
	sw		r9, 3(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r9)				# 42285
	sw		r25, 1(r9)				# 42285
	sw		r25, 2(r9)				# 42285
	sw		r9, 4(r23)				# 42173
	mv		r15, r4
	addi	r4, r4, 1				# 42586
	sw		r7, 0(r15)				# 42586
	mv		r62, r4
	addi	r4, r4, 3				# 42117
	sw		r25, 0(r62)				# 42117
	sw		r25, 1(r62)				# 42117
	sw		r25, 2(r62)				# 42117
	mv		r9, r4
	addi	r4, r4, 5				# 42151
	sw		r62, 0(r9)				# 42151
	sw		r62, 1(r9)				# 42151
	sw		r62, 2(r9)				# 42151
	sw		r62, 3(r9)				# 42151
	sw		r62, 4(r9)				# 42151
	mv		r62, r4
	addi	r4, r4, 3				# 42186
	sw		r25, 0(r62)				# 42186
	sw		r25, 1(r62)				# 42186
	sw		r25, 2(r62)				# 42186
	sw		r62, 1(r9)				# 42173
	mv		r62, r4
	addi	r4, r4, 3				# 42219
	sw		r25, 0(r62)				# 42219
	sw		r25, 1(r62)				# 42219
	sw		r25, 2(r62)				# 42219
	sw		r62, 2(r9)				# 42173
	mv		r62, r4
	addi	r4, r4, 3				# 42252
	sw		r25, 0(r62)				# 42252
	sw		r25, 1(r62)				# 42252
	sw		r25, 2(r62)				# 42252
	sw		r62, 3(r9)				# 42173
	mv		r62, r4
	addi	r4, r4, 3				# 42285
	sw		r25, 0(r62)				# 42285
	sw		r25, 1(r62)				# 42285
	sw		r25, 2(r62)				# 42285
	sw		r62, 4(r9)				# 42173
	mv		r62, r4
	addi	r4, r4, 8				# 42651
	sw		r19, 0(r62)				# 42651
	sw		r61, 1(r62)				# 42651
	sw		r39, 2(r62)				# 42651
	sw		r28, 3(r62)				# 42651
	sw		r26, 4(r62)				# 42651
	sw		r23, 5(r62)				# 42651
	sw		r15, 6(r62)				# 42651
	sw		r9, 7(r62)				# 42651
	swx		r62, r29, r48				# 42785
	addi	r29, r29, -1				# 42817
	cmpi	r29, 0
	bge		.b33617				# 42764
.b33615:
	in		r9				# 1425
	sw		r9, 0(r57)				# 8471
	in		r7				# 1425
	sw		r7, 1(r57)				# 8471
	in		r39				# 1425
	sw		r39, 2(r57)				# 8471
	in		r61				# 1425
	addis	r26, r0, 15502
	ori		r26, r26, 64053				# 8414
	fmul	r28, r61, r26				# 8565
	fcos	r61, r28				# 133
	fsin	r23, r28				# 40
	in		r28				# 1425
	fmul	r28, r28, r26				# 8649
	fcos	r48, r28				# 133
	fsin	r15, r28				# 40
	fmul	r28, r61, r15				# 8753
	addis	r57, r0, 17224				# 8753
	fmul	r19, r28, r57				# 8734
	sw		r19, 0(r46)				# 8734
	addis	r28, r0, 49992				# 8801
	fmul	r62, r23, r28				# 8782
	sw		r62, 1(r46)				# 8734
	fmul	r28, r61, r48				# 8840
	fmul	r57, r28, r57				# 8821
	sw		r57, 2(r46)				# 8734
	sw		r48, 0(r37)				# 8734
	sw		r25, 1(r37)				# 8734
	fneg	r28, r15				# 8925
	sw		r28, 2(r37)				# 8734
	fneg	r37, r23				# 8979
	fmul	r28, r37, r15				# 8960
	sw		r28, 0(r54)				# 8734
	fneg	r61, r61				# 9004
	sw		r61, 1(r54)				# 8734
	fmul	r61, r37, r48				# 9038
	sw		r61, 2(r54)				# 8734
	fsub	r9, r9, r19				# 9083
	sw		r9, 0(r10)				# 8734
	fsub	r9, r7, r62				# 9133
	sw		r9, 1(r10)				# 8734
	fsub	r9, r39, r57				# 9183
	sw		r9, 2(r10)				# 13259
	in		r9				# 1498
	in		r9				# 1425
	fmul	r61, r9, r26				# 9289
	fsin	r9, r61				# 40
	fneg	r9, r9				# 9345
	sw		r9, -3(r3)				# 9345
	sw		r9, 1(r51)				# 9345
	in		r9				# 1425
	fmul	r9, r9, r26				# 9370
	fcos	r28, r61				# 133
	fsin	r61, r9				# 40
	fmul	r61, r28, r61				# 9448
	sw		r61, -4(r3)				# 9448
	sw		r61, 0(r51)				# 9448
	fcos	r9, r9				# 133
	fmul	r9, r28, r9				# 9497
	sw		r9, -5(r3)				# 9497
	sw		r9, 2(r51)				# 9497
	in		r9				# 1425
	sw		r9, 0(r30)				# 13259
	addi	r28, r0, 0				# 12512
	in		r57				# 1498
	cmpi	r57, -1
	beq		.b33623				# 10718
.b33624:
	in		r46				# 1498
	in		r23				# 1498
	in		r37				# 1498
	mv		r15, r4
	addi	r4, r4, 3				# 10866
	sw		r25, 0(r15)				# 10866
	sw		r25, 1(r15)				# 10866
	sw		r25, 2(r15)				# 10866
	in		r9				# 1425
	sw		r9, 0(r15)				# 10892
	in		r9				# 1425
	sw		r9, 1(r15)				# 10892
	in		r9				# 1425
	sw		r9, 2(r15)				# 10892
	mv		r51, r4
	addi	r4, r4, 3				# 11007
	sw		r25, 0(r51)				# 11007
	sw		r25, 1(r51)				# 11007
	sw		r25, 2(r51)				# 11007
	in		r9				# 1425
	sw		r9, 0(r51)				# 11033
	in		r9				# 1425
	sw		r9, 1(r51)				# 11033
	in		r9				# 1425
	sw		r9, 2(r51)				# 11033
	in		r9				# 1425
	fcmp	r25, r9
	ble		.b33626				# 3186
.b33627:
	addi	r9, r0, 1				# 3186
.b33625:
	mv		r10, r4
	addi	r4, r4, 2				# 11203
	sw		r25, 0(r10)				# 11203
	sw		r25, 1(r10)				# 11203
	in		r61				# 1425
	sw		r61, 0(r10)				# 11229
	in		r61				# 1425
	sw		r61, 1(r10)				# 11229
	mv		r7, r4
	addi	r4, r4, 3				# 11346
	sw		r25, 0(r7)				# 11346
	sw		r25, 1(r7)				# 11346
	sw		r25, 2(r7)				# 11346
	in		r61				# 1425
	sw		r61, 0(r7)				# 11372
	in		r61				# 1425
	sw		r61, 1(r7)				# 11372
	in		r61				# 1425
	sw		r61, 2(r7)				# 11372
	mv		r62, r4
	addi	r4, r4, 3				# 11499
	sw		r25, 0(r62)				# 11499
	sw		r25, 1(r62)				# 11499
	sw		r25, 2(r62)				# 11499
	cmpi	r37, 0
	beq		.b33628				# 11525
.b33630:
	in		r61				# 1425
	fmul	r61, r61, r26				# 11551
	sw		r61, 0(r62)				# 11551
	in		r61				# 1425
	fmul	r61, r61, r26				# 11590
	sw		r61, 1(r62)				# 11551
	in		r61				# 1425
	fmul	r61, r61, r26				# 11629
	sw		r61, 2(r62)				# 11629
	cmpi	r46, 2
	beq		.b33632				# 11706
.b33633:
	mv		r61, r9				# 11733
.b33631:
	mv		r30, r4
	addi	r4, r4, 4				# 11762
	sw		r25, 0(r30)				# 11762
	sw		r25, 1(r30)				# 11762
	sw		r25, 2(r30)				# 11762
	sw		r25, 3(r30)				# 11762
	mv		r54, r4
	addi	r4, r4, 11				# 11799
	sw		r57, 0(r54)				# 11799
	sw		r46, 1(r54)				# 11799
	sw		r23, 2(r54)				# 11799
	sw		r37, 3(r54)				# 11799
	sw		r15, 4(r54)				# 11799
	sw		r51, 5(r54)				# 11799
	sw		r61, 6(r54)				# 11799
	sw		r10, 7(r54)				# 11799
	sw		r7, 8(r54)				# 11799
	sw		r62, 9(r54)				# 11799
	sw		r30, 10(r54)				# 11799
	swx		r54, r28, r41				# 12004
	cmpi	r46, 3
	beq		.b33635				# 12031
.b33636:
	cmpi	r46, 2
	beq		.b33661				# 12300
.b33634:
	cmpi	r37, 0
	beq		.b33671				# 12371
.b33673:
	lw		r9, 0(r62)				# 9611
	fcos	r7, r9				# 133
	lw		r9, 0(r62)				# 9640
	fsin	r29, r9				# 40
	lw		r9, 1(r62)				# 9669
	fcos	r57, r9				# 133
	lw		r9, 1(r62)				# 9698
	fsin	r10, r9				# 40
	lw		r9, 2(r62)				# 9727
	fcos	r61, r9				# 133
	lw		r9, 2(r62)				# 9756
	fsin	r23, r9				# 40
	fmul	r19, r57, r61				# 9774
	fmul	r37, r29, r10				# 9814
	fmul	r9, r37, r61				# 9814
	fmul	r51, r7, r23				# 9814
	fsub	r30, r9, r51				# 9804
	fmul	r46, r7, r10				# 9871
	fmul	r9, r46, r61				# 9871
	fmul	r51, r29, r23				# 9871
	fadd	r48, r9, r51				# 9861
	fmul	r54, r57, r23				# 9919
	fmul	r51, r37, r23				# 9959
	fmul	r9, r7, r61				# 9959
	fadd	r37, r51, r9				# 9949
	fmul	r51, r46, r23				# 10016
	fmul	r9, r29, r61				# 10016
	fsub	r51, r51, r9				# 10006
	fneg	r39, r10				# 10064
	fmul	r46, r29, r57				# 10090
	fmul	r29, r7, r57				# 10120
	lw		r61, 0(r15)				# 10151
	lw		r7, 1(r15)				# 10173
	lw		r57, 2(r15)				# 10195
	fmul	r9, r19, r19				# 10229
	fmul	r10, r61, r9				# 10229
	fmul	r9, r54, r54				# 10247
	fmul	r9, r7, r9				# 10229
	fadd	r10, r10, r9				# 10229
	fmul	r9, r39, r39				# 10265
	fmul	r9, r57, r9				# 10229
	fadd	r9, r10, r9				# 10218
	sw		r9, 0(r15)				# 10218
	fmul	r9, r30, r30				# 10294
	fmul	r10, r61, r9				# 10294
	fmul	r9, r37, r37				# 10312
	fmul	r9, r7, r9				# 10294
	fadd	r9, r10, r9				# 10294
	fmul	r10, r46, r46				# 10330
	fmul	r10, r57, r10				# 10294
	fadd	r9, r9, r10				# 10283
	sw		r9, 1(r15)				# 10218
	fmul	r9, r48, r48				# 10359
	fmul	r9, r61, r9				# 10359
	fmul	r10, r51, r51				# 10377
	fmul	r10, r7, r10				# 10359
	fadd	r10, r9, r10				# 10359
	fmul	r9, r29, r29				# 10395
	fmul	r9, r57, r9				# 10359
	fadd	r9, r10, r9				# 10348
	sw		r9, 2(r15)				# 10218
	addis	r23, r0, 16384				# 10425
	fmul	r9, r61, r30				# 10433
	fmul	r15, r9, r48				# 10433
	fmul	r9, r7, r37				# 10453
	fmul	r9, r9, r51				# 10433
	fadd	r9, r15, r9				# 10433
	fmul	r15, r57, r46				# 10473
	fmul	r15, r15, r29				# 10433
	fadd	r9, r9, r15				# 10425
	fmul	r9, r23, r9				# 10414
	sw		r9, 0(r62)				# 10218
	fmul	r15, r61, r19				# 10513
	fmul	r9, r15, r48				# 10513
	fmul	r61, r7, r54				# 10533
	fmul	r10, r61, r51				# 10513
	fadd	r51, r9, r10				# 10513
	fmul	r10, r57, r39				# 10553
	fmul	r9, r10, r29				# 10513
	fadd	r9, r51, r9				# 10505
	fmul	r9, r23, r9				# 10494
	sw		r9, 1(r62)				# 10218
	fmul	r9, r15, r30				# 10593
	fmul	r61, r61, r37				# 10593
	fadd	r61, r9, r61				# 10593
	fmul	r9, r10, r46				# 10593
	fadd	r9, r61, r9				# 10585
	fmul	r9, r23, r9				# 10574
	sw		r9, 2(r62)				# 10574
	addi	r28, r28, 1				# 12563
	cmpi	r28, 60
	bge		.b33619				# 12512
.b33622:
	in		r57				# 1498
	cmpi	r57, -1
	beq		.b33623				# 10718
	b		.b33624
.b33623:
	sw		r28, 0(r13)				# 12598
	addi	r9, r0, 0				# 13110
T.loop33675:
	sw		r9, -6(r3)				# 13110
	addi	r1, r0, 0				# 13100
	mflr	r63
	sw		r63, -7(r3)
	addi	r3, r3, -8
	bl		read_net_item.2793
	addi	r3, r3, 8
	lw		r63, -7(r3)
	mtlr	r63				# 13100
	lw		r9, 0(r2)				# 13131
	cmpi	r9, -1
	beq		.b33674				# 13131
.b33677:
	lw		r9, -6(r3)				# 13168
	lli		r61, and_net.2541				# 13168
	swx		r2, r9, r61				# 13168
	addi	r9, r9, 1				# 13192
	b		T.loop33675				# 13192
.b33674:
	addi	r1, r0, 0				# 13349
	mflr	r63
	sw		r63, -7(r3)
	addi	r3, r3, -8
	bl		read_or_network.2795
	addi	r3, r3, 8
	lw		r63, -7(r3)
	mtlr	r63				# 13349
	lli		r9, or_net.2547				# 47149
	sw		r2, 0(r9)				# 47149
	addi	r9, r0, 80				# 39091
	out		r9				# 946
	addi	r9, r0, 51				# 39120
	out		r9				# 946
	addi	r61, r0, 10				# 39179
	out		r61				# 946
	addi	r9, r0, 49				# 1236
	out		r9				# 946
	addi	r28, r0, 28				# 1146
	addi	r9, r0, 9				# 999
	mul16i	r62, r9, 10				# 990
	cmpi	r62, 28
	ble		.b33680				# 1011
.b33681:
	addi	r9, r9, -1				# 1074
	mul16i	r62, r9, 10				# 990
	cmpi	r62, 28
	ble		.b33680				# 1011
	b		.b33681
.b33680:
	addi	r9, r9, 48				# 1033
	out		r9				# 946
	sub		r9, r28, r62				# 1058
.b33678:
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	addi	r62, r0, 32				# 39228
	out		r62				# 946
	addi	r9, r0, 49				# 1236
	out		r9				# 946
	addi	r28, r0, 28				# 1146
	addi	r9, r0, 9				# 999
	mul16i	r15, r9, 10				# 990
	cmpi	r15, 28
	ble		.b33684				# 1011
.b33685:
	addi	r9, r9, -1				# 1074
	mul16i	r15, r9, 10				# 990
	cmpi	r15, 28
	ble		.b33684				# 1011
	b		.b33685
.b33684:
	addi	r9, r9, 48				# 1033
	out		r9				# 946
	sub		r9, r28, r15				# 1058
.b33682:
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	out		r62				# 946
	addi	r9, r0, 50				# 946
	out		r9				# 946
	addi	r28, r0, 55				# 1146
	addi	r9, r0, 9				# 999
	mul16i	r62, r9, 10				# 990
	cmpi	r62, 55
	ble		.b33688				# 1011
.b33689:
	addi	r9, r9, -1				# 1074
	mul16i	r62, r9, 10				# 990
	cmpi	r62, 55
	ble		.b33688				# 1011
	b		.b33689
.b33688:
	addi	r9, r9, 48				# 1033
	out		r9				# 946
	sub		r9, r28, r62				# 1058
.b33686:
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	out		r61				# 946
	addi	r28, r0, 4				# 44862
.b33692:
	mv		r62, r4
	addi	r4, r4, 3				# 44588
	addi	r54, r0, 0				# 44588
	sw		r54, 0(r62)				# 44588
	sw		r54, 1(r62)				# 44588
	sw		r54, 2(r62)				# 44588
	lli		r9, n_objects.2512				# 44623
	lw		r13, 0(r9)				# 44623
	mv		r9, r4
	add		r4, r4, r13				# 44623
	addi	r15, r13, -1				# 44623
	addi	r61, r0, 0				# 44623
	cmp		r61, r15
	ble		.b33696				# 44623
.b33694:
	mv		r61, r4
	addi	r4, r4, 2				# 44656
	sw		r62, 0(r61)				# 44656
	sw		r9, 1(r61)				# 44656
	mv		r9, r4
	addi	r4, r4, 120				# 44906
	addi	r62, r0, 0				# 44906
.b33700:
	swx		r61, r62, r9				# 44906
	addi	r62, r62, 1				# 44906
	cmpi	r62, 119
	ble		.b33700				# 44906
.b33698:
	lli		r61, dirvecs.2611				# 44887
	swx		r9, r28, r61				# 44887
	addi	r10, r0, 118				# 44716
.b33704:
	mv		r15, r4
	addi	r4, r4, 3				# 44588
	sw		r54, 0(r15)				# 44588
	sw		r54, 1(r15)				# 44588
	sw		r54, 2(r15)				# 44588
	mv		r61, r4
	add		r4, r4, r13				# 44623
	addi	r51, r13, -1				# 44623
	addi	r62, r0, 0				# 44623
	cmp		r62, r51
	ble		.b33708				# 44623
.b33706:
	mv		r62, r4
	addi	r4, r4, 2				# 44656
	sw		r15, 0(r62)				# 44656
	sw		r61, 1(r62)				# 44656
	swx		r62, r10, r9				# 44741
	addi	r10, r10, -1				# 44775
	cmpi	r10, 0
	bge		.b33704				# 44716
.b33702:
	addi	r28, r28, -1				# 44992
	cmpi	r28, 0
	bge		.b33692				# 44862
.b33690:
	addi	r15, r0, 9				# 44363
	addi	r51, r0, 0				# 44363
	addi	r54, r0, 0				# 44363
.b33712:
	itof	r9, r15				# 639
	addis	r41, r0, 15948
	ori		r41, r41, 52429				# 44395
	fmul	r9, r9, r41				# 44395
	addis	r7, r0, 16230
	ori		r7, r7, 26214				# 44395
	fsub	r57, r9, r7				# 44386
	addi	r62, r0, 4				# 43977
	mv		r9, r51				# 43977
.b33716:
	itof	r61, r62				# 639
	fmul	r37, r61, r41				# 44029
	fsub	r46, r37, r7				# 44020
	addi	r28, r0, 0				# 44069
	addi	r13, r0, 0				# 43281
	mv		r61, r28				# 43281
	mv		r10, r28				# 43281
.b33721:
	fmul	r61, r10, r10				# 43095
	addis	r30, r0, 15820
	ori		r30, r30, 52429				# 43095
	fadd	r61, r61, r30				# 43090
	fsqrt	r26, r61				# 227
	addis	r25, r0, 16256				# 43125
	fdiv	r61, r25, r26				# 43113
	fatan	r61, r61				# 440
	fmul	r10, r61, r46				# 43182
	fsin	r61, r10				# 40
	fcos	r10, r10				# 133
	fdiv	r61, r61, r10				# 43170
	fmul	r61, r61, r26				# 43816
	addi	r13, r13, 1				# 43853
	fmul	r10, r61, r61				# 43095
	fadd	r10, r10, r30				# 43090
	fsqrt	r30, r10				# 227
	fdiv	r10, r25, r30				# 43113
	fatan	r10, r10				# 440
	fmul	r25, r10, r57				# 43182
	fsin	r10, r25				# 40
	fcos	r25, r25				# 133
	fdiv	r10, r10, r25				# 43170
	fmul	r10, r10, r30				# 43853
	cmpi	r13, 5
	bge		.b33720				# 43281
	b		.b33721
.b33720:
	fmul	r13, r61, r61				# 43320
	fmul	r30, r10, r10				# 43320
	fadd	r13, r13, r30				# 43320
	addis	r46, r0, 16256				# 43320
	fadd	r13, r13, r46				# 43315
	fsqrt	r13, r13				# 227
	fdiv	r30, r61, r13				# 43352
	fdiv	r25, r10, r13				# 43375
	fdiv	r10, r46, r13				# 43398
	lli		r61, dirvecs.2611				# 43424
	lwx		r13, r61, r9				# 43424
	lwx		r61, r13, r54				# 43471
	lw		r61, 0(r61)				# 8078
	sw		r30, 0(r61)				# 1162
	sw		r25, 1(r61)				# 1162
	sw		r10, 2(r61)				# 43463
	addi	r61, r54, 40				# 43524
	lwx		r61, r13, r61				# 43518
	lw		r61, 0(r61)				# 8078
	fneg	r46, r25				# 43510
	sw		r30, 0(r61)				# 1162
	sw		r10, 1(r61)				# 1162
	sw		r46, 2(r61)				# 43463
	addi	r61, r54, 80				# 43578
	lwx		r61, r13, r61				# 43572
	lw		r61, 0(r61)				# 8078
	fneg	r26, r30				# 43564
	sw		r10, 0(r61)				# 1162
	sw		r26, 1(r61)				# 1162
	sw		r46, 2(r61)				# 43463
	addi	r61, r54, 1				# 43639
	lwx		r61, r13, r61				# 43633
	lw		r61, 0(r61)				# 8078
	fneg	r10, r10				# 43625
	sw		r26, 0(r61)				# 1162
	sw		r46, 1(r61)				# 1162
	sw		r10, 2(r61)				# 43463
	addi	r61, r54, 41				# 43706
	lwx		r61, r13, r61				# 43700
	lw		r61, 0(r61)				# 8078
	sw		r26, 0(r61)				# 1162
	sw		r10, 1(r61)				# 1162
	sw		r25, 2(r61)				# 43463
	addi	r61, r54, 81				# 43767
	lwx		r61, r13, r61				# 43761
	lw		r61, 0(r61)				# 8078
	sw		r10, 0(r61)				# 1162
	sw		r30, 1(r61)				# 1162
	sw		r25, 2(r61)				# 1190
.b33718:
	addis	r25, r0, 15820
	ori		r25, r25, 52429				# 44147
	fadd	r13, r37, r25				# 44137
	addi	r30, r54, 2				# 44188
	addi	r10, r0, 0				# 43281
	mv		r61, r28				# 43281
.b33725:
	fmul	r61, r28, r28				# 43095
	fadd	r61, r61, r25				# 43090
	fsqrt	r28, r61				# 227
	addis	r26, r0, 16256				# 43125
	fdiv	r61, r26, r28				# 43113
	fatan	r61, r61				# 440
	fmul	r61, r61, r13				# 43182
	fsin	r37, r61				# 40
	fcos	r61, r61				# 133
	fdiv	r61, r37, r61				# 43170
	fmul	r61, r61, r28				# 43816
	addi	r10, r10, 1				# 43853
	fmul	r28, r61, r61				# 43095
	fadd	r28, r28, r25				# 43090
	fsqrt	r46, r28				# 227
	fdiv	r28, r26, r46				# 43113
	fatan	r28, r28				# 440
	fmul	r28, r28, r57				# 43182
	fsin	r37, r28				# 40
	fcos	r28, r28				# 133
	fdiv	r28, r37, r28				# 43170
	fmul	r28, r28, r46				# 43853
	cmpi	r10, 5
	bge		.b33724				# 43281
	b		.b33725
.b33724:
	fmul	r13, r61, r61				# 43320
	fmul	r10, r28, r28				# 43320
	fadd	r10, r13, r10				# 43320
	addis	r25, r0, 16256				# 43320
	fadd	r10, r10, r25				# 43315
	fsqrt	r10, r10				# 227
	fdiv	r13, r61, r10				# 43352
	fdiv	r46, r28, r10				# 43375
	fdiv	r37, r25, r10				# 43398
	lli		r61, dirvecs.2611				# 43424
	lwx		r25, r61, r9				# 43424
	lwx		r61, r25, r30				# 43471
	lw		r61, 0(r61)				# 8078
	sw		r13, 0(r61)				# 1162
	sw		r46, 1(r61)				# 1162
	sw		r37, 2(r61)				# 43463
	addi	r61, r30, 40				# 43524
	lwx		r61, r25, r61				# 43518
	lw		r28, 0(r61)				# 8078
	fneg	r61, r46				# 43510
	sw		r13, 0(r28)				# 1162
	sw		r37, 1(r28)				# 1162
	sw		r61, 2(r28)				# 43463
	addi	r28, r30, 80				# 43578
	lwx		r28, r25, r28				# 43572
	lw		r10, 0(r28)				# 8078
	fneg	r28, r13				# 43564
	sw		r37, 0(r10)				# 1162
	sw		r28, 1(r10)				# 1162
	sw		r61, 2(r10)				# 43463
	addi	r10, r30, 1				# 43639
	lwx		r10, r25, r10				# 43633
	lw		r26, 0(r10)				# 8078
	fneg	r10, r37				# 43625
	sw		r28, 0(r26)				# 1162
	sw		r61, 1(r26)				# 1162
	sw		r10, 2(r26)				# 43463
	addi	r61, r30, 41				# 43706
	lwx		r61, r25, r61				# 43700
	lw		r61, 0(r61)				# 8078
	sw		r28, 0(r61)				# 1162
	sw		r10, 1(r61)				# 1162
	sw		r46, 2(r61)				# 43463
	addi	r61, r30, 81				# 43767
	lwx		r61, r25, r61				# 43761
	lw		r61, 0(r61)				# 8078
	sw		r10, 0(r61)				# 1162
	sw		r13, 1(r61)				# 1162
	sw		r46, 2(r61)				# 1190
	addi	r62, r62, -1				# 44244
	addi	r9, r9, 1				# 979
	cmpi	r9, 5
	bge		.b33727				# 1000
.b33728:
	cmpi	r62, 0
	bge		.b33716				# 43977
.b33714:
	addi	r15, r15, -1				# 44473
	addi	r51, r51, 2				# 979
	cmpi	r51, 5
	bge		.b33730				# 1000
.b33731:
.b33729:
	addi	r54, r54, 4				# 44473
	cmpi	r15, 0
	bge		.b33712				# 44363
.b33710:
	addi	r61, r0, 4				# 45247
.b33734:
	lli		r9, dirvecs.2611				# 45272
	lwx		r30, r9, r61				# 45272
	addi	r15, r0, 119				# 45081
.b33738:
	lwx		r25, r30, r15				# 45106
	lli		r9, n_objects.2512				# 21353
	lw		r9, 0(r9)				# 21353
	addi	r28, r9, -1				# 21317
	cmpi	r28, 0
	bge		.b33742				# 20796
.b33740:
	addi	r15, r15, -1				# 45149
	cmpi	r15, 0
	bge		.b33738				# 45081
.b33736:
	addi	r61, r61, -1				# 45319
	cmpi	r61, 0
	bge		.b33734				# 45247
.b33732:
	lw		r26, -4(r3)				# 1353
	lli		r9, v3.2617				# 1353
	sw		r26, 0(r9)				# 1353
	lw		r25, -3(r3)				# 1353
	sw		r25, 1(r9)				# 1353
	lw		r54, -5(r3)				# 47149
	sw		r54, 2(r9)				# 47149
	lli		r9, n_objects.2512				# 21353
	lw		r51, 0(r9)				# 21353
	addi	r9, r51, -1				# 21317
	cmpi	r9, 0
	bge		.b33809				# 20796
.b33807:
	addi	r62, r51, -1				# 47281
	cmpi	r62, 0
	bge		.b33875				# 46514
.b33874:
	lw		r1, -1(r3)				# 47149
	addi	r2, r0, 0				# 47149
	addi	r5, r0, 0				# 47149
	mflr	r63
	sw		r63, -7(r3)
	addi	r3, r3, -8
	bl		pretrace_line.3058
	addi	r3, r3, 8
	lw		r63, -7(r3)
	mtlr	r63				# 47149
	lw		r1, -2(r3)				# 41846
	lw		r9, -1(r3)				# 41846
	lw		r61, 0(r3)				# 41846
	addi	r28, r0, 0				# 41846
	addi	r5, r0, 2				# 41846
T.loop34169:
	sw		r5, -7(r3)				# 41846
	sw		r1, -8(r3)				# 41846
	sw		r9, -9(r3)				# 41846
	sw		r61, -10(r3)				# 41846
	sw		r28, -11(r3)				# 41846
	cmpi	r28, 128
	bge		_min_caml_end				# 41839
.b34171:
	cmpi	r28, 127
	bge		.b34172				# 41873
.b34174:
	addi	r2, r28, 1				# 41910
	mflr	r63
	sw		r63, -12(r3)
	addi	r3, r3, -13
	bl		pretrace_line.3058
	addi	r3, r3, 13
	lw		r63, -12(r3)
	mtlr	r63				# 41910
	addi	r9, r0, 0				# 41477
	sw		r9, -12(r3)				# 41477
.b34178:
	lw		r61, -9(r3)				# 41516
	lwx		r61, r61, r9				# 41516
	sw		r61, -13(r3)				# 41516
	lw		r61, 0(r61)				# 6744
	lw		r62, 0(r61)				# 1353
	lli		r28, rgb.2574				# 1353
	sw		r62, 0(r28)				# 1353
	lw		r62, 1(r61)				# 1376
	sw		r62, 1(r28)				# 1353
	lw		r61, 2(r61)				# 1399
	sw		r61, 2(r28)				# 41504
	lw		r61, -11(r3)				# 37910
	addi	r28, r61, 1				# 37910
	cmpi	r28, 128
	bge		.b34180				# 37910
.b34181:
	cmpi	r61, 0
	ble		.b34182				# 37947
.b34183:
	addi	r61, r9, 1				# 37967
	cmpi	r61, 128
	bge		.b34184				# 37967
.b34185:
	cmpi	r9, 0
	ble		.b34186				# 38001
.b34187:
	addi	r9, r0, 1				# 38018
	addi	r9, r0, 0				# 38637
.b34215:
	lw		r54, -13(r3)				# 7046
	lw		r61, 2(r54)				# 7046
	lwx		r61, r61, r9				# 38685
	cmpi	r61, 0
	bge		.b34217				# 38685
.b34188:
	lli		r62, rgb.2574				# 39509
	lw		r9, 0(r62)				# 39509
	ftoi	r61, r9				# 543
	cmpi	r61, 255
	ble		.b34257				# 39409
.b34258:
	addi	r61, r0, 255				# 39426
.b34262:
	addi	r9, r0, 50				# 946
	out		r9				# 946
	addi	r61, r61, -200				# 1196
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b34268				# 1011
.b34269:
	addi	r9, r9, -1				# 1074
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b34268				# 1011
	b		.b34269
.b34268:
	addi	r9, r9, 48				# 1033
	out		r9				# 946
	sub		r9, r61, r28				# 1058
.b34266:
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	addi	r28, r0, 32				# 946
	out		r28				# 946
	lw		r9, 1(r62)				# 39569
	ftoi	r9, r9				# 543
	cmpi	r9, 255
	ble		.b34271				# 39409
.b34272:
	addi	r9, r0, 255				# 39426
.b34276:
	addi	r61, r0, 50				# 946
	out		r61				# 946
	addi	r9, r9, -200				# 1196
	addi	r61, r0, 9				# 999
	mul16i	r15, r61, 10				# 990
	cmp		r15, r9
	ble		.b34282				# 1011
.b34283:
	addi	r61, r61, -1				# 1074
	mul16i	r15, r61, 10				# 990
	cmp		r15, r9
	ble		.b34282				# 1011
	b		.b34283
.b34282:
	addi	r61, r61, 48				# 1033
	out		r61				# 946
	sub		r9, r9, r15				# 1058
.b34280:
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	out		r28				# 946
	lw		r9, 2(r62)				# 39629
	ftoi	r61, r9				# 543
	cmpi	r61, 255
	ble		.b34285				# 39409
.b34286:
	addi	r61, r0, 255				# 39426
.b34290:
	addi	r9, r0, 50				# 946
	out		r9				# 946
	addi	r61, r61, -200				# 1196
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b34296				# 1011
.b34297:
	addi	r9, r9, -1				# 1074
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b34296				# 1011
	b		.b34297
.b34296:
	addi	r9, r9, 48				# 1033
	out		r9				# 946
	sub		r9, r61, r28				# 1058
.b34294:
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	addi	r9, r0, 10				# 946
	out		r9				# 946
	lw		r9, -12(r3)				# 41688
	addi	r9, r9, 1				# 41688
	sw		r9, -12(r3)				# 41477
	cmpi	r9, 128
	bge		.b34175				# 41470
	b		.b34178
.b34175:
	lw		r9, -11(r3)				# 41997
	addi	r28, r9, 1				# 41997
	lw		r9, -7(r3)				# 979
	addi	r5, r9, 2				# 979
	cmpi	r5, 5
	bge		.b34299				# 1000
.b34300:
.b34298:
	lw		r9, -8(r3)				# 41997
	lw		r1, -10(r3)				# 41997
	lw		r61, -9(r3)				# 41997
	b		T.loop34169				# 41997
.b34299:
	addi	r5, r5, -5				# 1017
	b		.b34298				# 1017
.b34285:
	cmpi	r61, 0
	bge		.b34287				# 39435
.b34288:
	addi	r61, r0, 0				# 39450
.b34293:
	addi	r9, r0, 48				# 946
	out		r9				# 946
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b34296				# 1011
	b		.b34297
.b34287:
	cmpi	r61, 200
	bge		.b34290				# 1154
.b34291:
	cmpi	r61, 100
	bge		.b34292				# 1213
	b		.b34293
.b34292:
	addi	r9, r0, 49				# 1236
	out		r9				# 946
	addi	r61, r61, -100				# 1255
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b34296				# 1011
	b		.b34297
.b34271:
	cmpi	r9, 0
	bge		.b34273				# 39435
.b34274:
	addi	r9, r0, 0				# 39450
.b34279:
	addi	r61, r0, 48				# 946
	out		r61				# 946
	addi	r61, r0, 9				# 999
	mul16i	r15, r61, 10				# 990
	cmp		r15, r9
	ble		.b34282				# 1011
	b		.b34283
.b34273:
	cmpi	r9, 200
	bge		.b34276				# 1154
.b34277:
	cmpi	r9, 100
	bge		.b34278				# 1213
	b		.b34279
.b34278:
	addi	r61, r0, 49				# 1236
	out		r61				# 946
	addi	r9, r9, -100				# 1255
	addi	r61, r0, 9				# 999
	mul16i	r15, r61, 10				# 990
	cmp		r15, r9
	ble		.b34282				# 1011
	b		.b34283
.b34257:
	cmpi	r61, 0
	bge		.b34259				# 39435
.b34260:
	addi	r61, r0, 0				# 39450
.b34265:
	addi	r9, r0, 48				# 946
	out		r9				# 946
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b34268				# 1011
	b		.b34269
.b34259:
	cmpi	r61, 200
	bge		.b34262				# 1154
.b34263:
	cmpi	r61, 100
	bge		.b34264				# 1213
	b		.b34265
.b34264:
	addi	r9, r0, 49				# 1236
	out		r9				# 946
	addi	r61, r61, -100				# 1255
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b34268				# 1011
	b		.b34269
.b34217:
	lw		r61, 2(r54)				# 7046
	lwx		r10, r61, r9				# 38247
	lw		r61, -10(r3)				# 38301
	lw		r62, -12(r3)				# 38301
	lwx		r15, r61, r62				# 38301
	lw		r61, 2(r15)				# 7046
	lwx		r61, r61, r9				# 38298
	cmp		r61, r10
	beq		.b34220				# 38298
.b34221:
	addi	r61, r0, 0				# 38570
	sw		r9, -14(r3)				# 37563
	cmpi	r9, 4
	ble		.b34231				# 37563
	b		.b34188
.b34231:
	lw		r51, -13(r3)				# 7046
	lw		r61, 2(r51)				# 7046
	lwx		r61, r61, r9				# 37630
	cmpi	r61, 0
	bge		.b34233				# 37630
	b		.b34188
.b34233:
	lw		r61, 3(r51)				# 7193
	lwx		r61, r61, r9				# 37719
	cmpi	r61, 0
	beq		.b34235				# 37719
.b34237:
	lw		r62, 5(r51)				# 7491
	lw		r28, 7(r51)				# 7939
	lw		r15, 1(r51)				# 6897
	lw		r61, 4(r51)				# 7334
	sw		r61, -15(r3)				# 7334
	lwx		r61, r62, r9				# 36743
	lw		r10, 0(r61)				# 1353
	sw		r10, -16(r3)				# 1353
	lli		r62, diffuse_ray.2571				# 1353
	sw		r10, 0(r62)				# 1353
	lw		r10, 1(r61)				# 1376
	sw		r10, -17(r3)				# 1376
	sw		r10, 1(r62)				# 1353
	lw		r61, 2(r61)				# 1399
	sw		r61, -18(r3)				# 1399
	sw		r61, 2(r62)				# 36743
	lw		r61, 6(r51)				# 7634
	lw		r61, 0(r61)				# 36779
	sw		r61, -19(r3)				# 36779
	lwx		r2, r28, r9				# 36779
	sw		r2, -20(r3)				# 36779
	lwx		r5, r15, r9				# 36779
	sw		r5, -21(r3)				# 36779
	cmpi	r61, 0
	beq		.b34238				# 36097
.b34240:
	lli		r9, dirvecs.2611				# 36123
	lw		r1, 0(r9)				# 36123
	mflr	r63
	sw		r63, -22(r3)
	addi	r3, r3, -23
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 23
	lw		r63, -22(r3)
	mtlr	r63				# 36123
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 1
	beq		.b34241				# 36180
.b34243:
	lli		r9, dirvecs.2611				# 36206
	lw		r1, 1(r9)				# 36206
	lw		r5, -21(r3)				# 36206
	lw		r2, -20(r3)				# 36206
	mflr	r63
	sw		r63, -22(r3)
	addi	r3, r3, -23
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 23
	lw		r63, -22(r3)
	mtlr	r63				# 36206
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 2
	beq		.b34244				# 36263
.b34246:
	lli		r9, dirvecs.2611				# 36289
	lw		r1, 2(r9)				# 36289
	lw		r5, -21(r3)				# 36289
	lw		r2, -20(r3)				# 36289
	mflr	r63
	sw		r63, -22(r3)
	addi	r3, r3, -23
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 23
	lw		r63, -22(r3)
	mtlr	r63				# 36289
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 3
	beq		.b34247				# 36346
.b34249:
	lli		r9, dirvecs.2611				# 36372
	lw		r1, 3(r9)				# 36372
	lw		r5, -21(r3)				# 36372
	lw		r2, -20(r3)				# 36372
	mflr	r63
	sw		r63, -22(r3)
	addi	r3, r3, -23
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 23
	lw		r63, -22(r3)
	mtlr	r63				# 36372
	lw		r9, -19(r3)				# 36743
	cmpi	r9, 4
	beq		.b34250				# 36429
.b34252:
	lli		r9, dirvecs.2611				# 36455
	lw		r1, 4(r9)				# 36455
	lw		r5, -21(r3)				# 36455
	lw		r2, -20(r3)				# 36455
	mflr	r63
	sw		r63, -22(r3)
	addi	r3, r3, -23
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 23
	lw		r63, -22(r3)
	mtlr	r63				# 36455
.b34250:
	lw		r61, -14(r3)				# 36884
	lw		r9, -15(r3)				# 36884
	lwx		r9, r9, r61				# 36884
	lli		r61, rgb.2574				# 2671
	lw		r62, 0(r61)				# 2671
	lw		r28, 0(r9)				# 2683
	lw		r15, -16(r3)				# 2671
	fmul	r28, r28, r15				# 2671
	fadd	r28, r62, r28				# 2659
	sw		r28, 0(r61)				# 2659
	lw		r62, 1(r61)				# 2713
	lw		r15, 1(r9)				# 2725
	lw		r28, -17(r3)				# 2713
	fmul	r28, r15, r28				# 2713
	fadd	r28, r62, r28				# 2701
	sw		r28, 1(r61)				# 2659
	lw		r62, 2(r61)				# 2755
	lw		r28, 2(r9)				# 2767
	lw		r9, -18(r3)				# 2755
	fmul	r9, r28, r9				# 2755
	fadd	r9, r62, r9				# 2743
	sw		r9, 2(r61)				# 2743
.b34235:
	lw		r9, -14(r3)				# 37806
	addi	r9, r9, 1				# 37806
	sw		r9, -14(r3)				# 37563
	cmpi	r9, 4
	ble		.b34231				# 37563
	b		.b34188
.b34247:
	lw		r9, -19(r3)				# 36743
	cmpi	r9, 4
	beq		.b34250				# 36429
	b		.b34252
.b34244:
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 3
	beq		.b34247				# 36346
	b		.b34249
.b34241:
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 2
	beq		.b34244				# 36263
	b		.b34246
.b34238:
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 1
	beq		.b34241				# 36180
	b		.b34243
.b34220:
	lw		r61, -8(r3)				# 38355
	lwx		r61, r61, r62				# 38355
	lw		r61, 2(r61)				# 7046
	lwx		r61, r61, r9				# 38352
	cmp		r61, r10
	beq		.b34222				# 38352
.b34223:
	addi	r61, r0, 0				# 38557
	sw		r9, -14(r3)				# 37563
	cmpi	r9, 4
	ble		.b34231				# 37563
	b		.b34188
.b34222:
	addi	r28, r62, -1				# 38426
	lw		r61, -9(r3)				# 38411
	lwx		r28, r61, r28				# 38411
	lw		r28, 2(r28)				# 7046
	lwx		r28, r28, r9				# 38408
	cmp		r28, r10
	beq		.b34224				# 38408
.b34225:
	addi	r61, r0, 0				# 38542
	sw		r9, -14(r3)				# 37563
	cmpi	r9, 4
	ble		.b34231				# 37563
	b		.b34188
.b34224:
	addi	r28, r62, 1				# 38478
	lwx		r61, r61, r28				# 38463
	lw		r61, 2(r61)				# 7046
	lwx		r61, r61, r9				# 38460
	cmp		r61, r10
	beq		.b34226				# 38460
.b34227:
	addi	r61, r0, 0				# 38525
	sw		r9, -14(r3)				# 37563
	cmpi	r9, 4
	ble		.b34231				# 37563
	b		.b34188
.b34226:
	addi	r61, r0, 1				# 38514
	lw		r61, 3(r54)				# 7193
	lwx		r61, r61, r9				# 38838
	cmpi	r61, 0
	beq		.b34253				# 38838
.b34255:
	lw		r28, 5(r15)				# 7491
	addi	r15, r62, -1				# 37080
	lw		r61, -9(r3)				# 37055
	lwx		r15, r61, r15				# 37055
	lw		r15, 5(r15)				# 7491
	lw		r7, 5(r54)				# 7491
	addi	r10, r62, 1				# 37187
	lwx		r61, r61, r10				# 37162
	lw		r10, 5(r61)				# 7491
	lw		r61, -8(r3)				# 37215
	lwx		r61, r61, r62				# 37215
	lw		r13, 5(r61)				# 7491
	lwx		r62, r28, r9				# 37255
	lw		r28, 0(r62)				# 1353
	lli		r30, diffuse_ray.2571				# 1353
	sw		r28, 0(r30)				# 1353
	lw		r61, 1(r62)				# 1376
	sw		r61, 1(r30)				# 1353
	lw		r25, 2(r62)				# 1399
	sw		r25, 2(r30)				# 37255
	lwx		r62, r15, r9				# 37289
	lw		r15, 0(r62)				# 2282
	fadd	r51, r28, r15				# 2270
	sw		r51, 0(r30)				# 2270
	lw		r28, 1(r62)				# 2315
	fadd	r15, r61, r28				# 2303
	sw		r15, 1(r30)				# 2270
	lw		r61, 2(r62)				# 2348
	fadd	r62, r25, r61				# 2336
	sw		r62, 2(r30)				# 37255
	lwx		r61, r7, r9				# 37325
	lw		r28, 0(r61)				# 2282
	fadd	r51, r51, r28				# 2270
	sw		r51, 0(r30)				# 2270
	lw		r28, 1(r61)				# 2315
	fadd	r28, r15, r28				# 2303
	sw		r28, 1(r30)				# 2270
	lw		r61, 2(r61)				# 2348
	fadd	r7, r62, r61				# 2336
	sw		r7, 2(r30)				# 37255
	lwx		r62, r10, r9				# 37363
	lw		r61, 0(r62)				# 2282
	fadd	r61, r51, r61				# 2270
	sw		r61, 0(r30)				# 2270
	lw		r15, 1(r62)				# 2315
	fadd	r15, r28, r15				# 2303
	sw		r15, 1(r30)				# 2270
	lw		r28, 2(r62)				# 2348
	fadd	r62, r7, r28				# 2336
	sw		r62, 2(r30)				# 37255
	lwx		r10, r13, r9				# 37400
	lw		r28, 0(r10)				# 2282
	fadd	r13, r61, r28				# 2270
	sw		r13, 0(r30)				# 2270
	lw		r61, 1(r10)				# 2315
	fadd	r61, r15, r61				# 2303
	sw		r61, 1(r30)				# 2270
	lw		r28, 2(r10)				# 2348
	fadd	r62, r62, r28				# 2336
	sw		r62, 2(r30)				# 37255
	lw		r28, 4(r54)				# 7334
	lwx		r15, r28, r9				# 37473
	lli		r51, rgb.2574				# 2671
	lw		r10, 0(r51)				# 2671
	lw		r28, 0(r15)				# 2683
	fmul	r28, r28, r13				# 2671
	fadd	r28, r10, r28				# 2659
	sw		r28, 0(r51)				# 2659
	lw		r28, 1(r51)				# 2713
	lw		r10, 1(r15)				# 2725
	fmul	r61, r10, r61				# 2713
	fadd	r61, r28, r61				# 2701
	sw		r61, 1(r51)				# 2659
	lw		r28, 2(r51)				# 2755
	lw		r61, 2(r15)				# 2767
	fmul	r61, r61, r62				# 2755
	fadd	r61, r28, r61				# 2743
	sw		r61, 2(r51)				# 2743
	addi	r9, r9, 1				# 38929
	cmpi	r9, 4
	ble		.b34215				# 38662
	b		.b34188
.b34253:
	addi	r9, r9, 1				# 38929
	cmpi	r9, 4
	ble		.b34215				# 38662
	b		.b34188
.b34186:
	addi	r9, r0, 0				# 38029
	addi	r9, r0, 0				# 37563
	sw		r9, -14(r3)				# 37563
.b34192:
	lw		r51, -13(r3)				# 7046
	lw		r61, 2(r51)				# 7046
	lwx		r61, r61, r9				# 37630
	cmpi	r61, 0
	bge		.b34194				# 37630
	b		.b34188
.b34194:
	lw		r61, 3(r51)				# 7193
	lwx		r61, r61, r9				# 37719
	cmpi	r61, 0
	beq		.b34196				# 37719
.b34198:
	lw		r61, 5(r51)				# 7491
	lw		r15, 7(r51)				# 7939
	lw		r28, 1(r51)				# 6897
	lw		r62, 4(r51)				# 7334
	sw		r62, -15(r3)				# 7334
	lwx		r62, r61, r9				# 36743
	lw		r61, 0(r62)				# 1353
	sw		r61, -16(r3)				# 1353
	lli		r10, diffuse_ray.2571				# 1353
	sw		r61, 0(r10)				# 1353
	lw		r61, 1(r62)				# 1376
	sw		r61, -17(r3)				# 1376
	sw		r61, 1(r10)				# 1353
	lw		r61, 2(r62)				# 1399
	sw		r61, -18(r3)				# 1399
	sw		r61, 2(r10)				# 36743
	lw		r61, 6(r51)				# 7634
	lw		r61, 0(r61)				# 36779
	sw		r61, -19(r3)				# 36779
	lwx		r2, r15, r9				# 36779
	sw		r2, -20(r3)				# 36779
	lwx		r5, r28, r9				# 36779
	sw		r5, -21(r3)				# 36779
	cmpi	r61, 0
	beq		.b34199				# 36097
.b34201:
	lli		r9, dirvecs.2611				# 36123
	lw		r1, 0(r9)				# 36123
	mflr	r63
	sw		r63, -22(r3)
	addi	r3, r3, -23
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 23
	lw		r63, -22(r3)
	mtlr	r63				# 36123
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 1
	beq		.b34202				# 36180
.b34204:
	lli		r9, dirvecs.2611				# 36206
	lw		r1, 1(r9)				# 36206
	lw		r5, -21(r3)				# 36206
	lw		r2, -20(r3)				# 36206
	mflr	r63
	sw		r63, -22(r3)
	addi	r3, r3, -23
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 23
	lw		r63, -22(r3)
	mtlr	r63				# 36206
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 2
	beq		.b34205				# 36263
.b34207:
	lli		r9, dirvecs.2611				# 36289
	lw		r1, 2(r9)				# 36289
	lw		r5, -21(r3)				# 36289
	lw		r2, -20(r3)				# 36289
	mflr	r63
	sw		r63, -22(r3)
	addi	r3, r3, -23
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 23
	lw		r63, -22(r3)
	mtlr	r63				# 36289
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 3
	beq		.b34208				# 36346
.b34210:
	lli		r9, dirvecs.2611				# 36372
	lw		r1, 3(r9)				# 36372
	lw		r5, -21(r3)				# 36372
	lw		r2, -20(r3)				# 36372
	mflr	r63
	sw		r63, -22(r3)
	addi	r3, r3, -23
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 23
	lw		r63, -22(r3)
	mtlr	r63				# 36372
	lw		r9, -19(r3)				# 36743
	cmpi	r9, 4
	beq		.b34211				# 36429
.b34213:
	lli		r9, dirvecs.2611				# 36455
	lw		r1, 4(r9)				# 36455
	lw		r5, -21(r3)				# 36455
	lw		r2, -20(r3)				# 36455
	mflr	r63
	sw		r63, -22(r3)
	addi	r3, r3, -23
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 23
	lw		r63, -22(r3)
	mtlr	r63				# 36455
.b34211:
	lw		r61, -15(r3)				# 36884
	lw		r9, -14(r3)				# 36884
	lwx		r28, r61, r9				# 36884
	lli		r62, rgb.2574				# 2671
	lw		r61, 0(r62)				# 2671
	lw		r9, 0(r28)				# 2683
	lw		r15, -16(r3)				# 2671
	fmul	r9, r9, r15				# 2671
	fadd	r9, r61, r9				# 2659
	sw		r9, 0(r62)				# 2659
	lw		r9, 1(r62)				# 2713
	lw		r15, 1(r28)				# 2725
	lw		r61, -17(r3)				# 2713
	fmul	r61, r15, r61				# 2713
	fadd	r9, r9, r61				# 2701
	sw		r9, 1(r62)				# 2659
	lw		r15, 2(r62)				# 2755
	lw		r61, 2(r28)				# 2767
	lw		r9, -18(r3)				# 2755
	fmul	r9, r61, r9				# 2755
	fadd	r9, r15, r9				# 2743
	sw		r9, 2(r62)				# 2743
.b34196:
	lw		r9, -14(r3)				# 37806
	addi	r9, r9, 1				# 37806
	sw		r9, -14(r3)				# 37563
	cmpi	r9, 4
	ble		.b34192				# 37563
	b		.b34188
.b34208:
	lw		r9, -19(r3)				# 36743
	cmpi	r9, 4
	beq		.b34211				# 36429
	b		.b34213
.b34205:
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 3
	beq		.b34208				# 36346
	b		.b34210
.b34202:
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 2
	beq		.b34205				# 36263
	b		.b34207
.b34199:
	lw		r9, -19(r3)				# 36097
	cmpi	r9, 1
	beq		.b34202				# 36180
	b		.b34204
.b34184:
	addi	r9, r0, 0				# 38046
	addi	r9, r0, 0				# 37563
	sw		r9, -14(r3)				# 37563
	b		.b34192				# 37563
.b34182:
	addi	r9, r0, 0				# 38061
	addi	r9, r0, 0				# 37563
	sw		r9, -14(r3)				# 37563
	b		.b34192				# 37563
.b34180:
	addi	r9, r0, 0				# 38074
	addi	r9, r0, 0				# 37563
	sw		r9, -14(r3)				# 37563
	b		.b34192				# 37563
.b34172:
	addi	r9, r0, 0				# 41477
	sw		r9, -12(r3)				# 41477
	b		.b34178				# 41470
.b33875:
	lli		r10, objects.2523				# 46538
	lwx		r61, r10, r62				# 46538
	lw		r9, 2(r61)				# 3185
	cmpi	r9, 2
	beq		.b33877				# 46572
	b		.b33874
.b33877:
	lw		r9, 7(r61)				# 5033
	lw		r28, 0(r9)				# 46614
	addis	r15, r0, 16256				# 46614
	fcmp	r15, r28
	ble		.b33874				# 3096
.b33880:
	lw		r9, 1(r61)				# 2994
	cmpi	r9, 1
	beq		.b33881				# 46675
.b33882:
	cmpi	r9, 2
	beq		.b34096				# 46737
	b		.b33874
.b34096:
	slwi	r9, r62, 2				# 46148
	addi	r30, r9, 1				# 46138
	fsub	r41, r15, r28				# 46200
	lw		r28, 4(r61)				# 4293
	lw		r13, 0(r28)				# 1949
	fmul	r9, r26, r13				# 1949
	lw		r61, 1(r28)				# 1967
	fmul	r62, r25, r61				# 1949
	fadd	r9, r9, r62				# 1949
	lw		r62, 2(r28)				# 1985
	fmul	r28, r54, r62				# 1949
	fadd	r28, r9, r28				# 46235
	addis	r57, r0, 16384				# 46312
	fmul	r9, r57, r13				# 46312
	fmul	r9, r9, r28				# 46312
	fsub	r7, r9, r26				# 46282
	fmul	r9, r57, r61				# 46357
	fmul	r9, r9, r28				# 46357
	fsub	r61, r9, r25				# 46282
	fmul	r9, r57, r62				# 46402
	fmul	r9, r9, r28				# 46402
	fsub	r28, r9, r54				# 46282
	mv		r54, r4
	addi	r4, r4, 3				# 44588
	addi	r46, r0, 0				# 44588
	sw		r46, 0(r54)				# 44588
	sw		r46, 1(r54)				# 44588
	sw		r46, 2(r54)				# 44588
	mv		r13, r4
	add		r4, r4, r51				# 44623
	addi	r62, r51, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r62
	ble		.b34100				# 44623
.b34098:
	mv		r62, r4
	addi	r4, r4, 2				# 44656
	sw		r54, 0(r62)				# 44656
	sw		r13, 1(r62)				# 44656
	sw		r7, 0(r54)				# 1162
	sw		r61, 1(r54)				# 1162
	sw		r28, 2(r54)				# 45563
	addi	r28, r51, -1				# 21317
	cmpi	r28, 0
	bge		.b34104				# 20796
.b34102:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r30, 0(r9)				# 45650
	sw		r62, 1(r9)				# 45650
	sw		r41, 2(r9)				# 45650
	lli		r61, reflections.2631				# 46282
	sw		r9, 0(r61)				# 46282
	addi	r9, r0, 1				# 46445
	lli		r61, n_reflections.2634				# 46445
	sw		r9, 0(r61)				# 46445
	b		.b33874				# 46445
.b34104:
	lwx		r48, r10, r28				# 20821
	lw		r9, 1(r48)				# 2994
	cmpi	r9, 1
	beq		.b34107				# 20947
.b34108:
	cmpi	r9, 2
	beq		.b34155				# 21033
.b34156:
	mv		r61, r4
	addi	r4, r4, 5				# 20110
	sw		r46, 0(r61)				# 20110
	sw		r46, 1(r61)				# 20110
	sw		r46, 2(r61)				# 20110
	sw		r46, 3(r61)				# 20110
	sw		r46, 4(r61)				# 20110
	lw		r14, 0(r54)				# 20142
	lw		r19, 1(r54)				# 20142
	lw		r25, 2(r54)				# 20142
	fmul	r9, r14, r14				# 14374
	lw		r7, 4(r48)				# 3734
	lw		r26, 0(r7)				# 14374
	fmul	r51, r9, r26				# 14374
	fmul	r9, r19, r19				# 14400
	lw		r39, 1(r7)				# 14400
	fmul	r9, r9, r39				# 14374
	fadd	r9, r51, r9				# 14374
	fmul	r51, r25, r25				# 14426
	lw		r23, 2(r7)				# 14426
	fmul	r51, r51, r23				# 14374
	fadd	r9, r9, r51				# 14354
	lw		r7, 3(r48)				# 3553
	cmpi	r7, 0
	beq		.b34161				# 14456
.b34162:
	fmul	r29, r19, r25				# 14522
	lw		r51, 9(r48)				# 5989
	lw		r37, 0(r51)				# 14522
	fmul	r37, r29, r37				# 14503
	fadd	r37, r9, r37				# 14503
	fmul	r25, r25, r14				# 14556
	lw		r9, 1(r51)				# 14556
	fmul	r9, r25, r9				# 14503
	fadd	r25, r37, r9				# 14503
	fmul	r37, r14, r19				# 14590
	lw		r9, 2(r51)				# 14590
	fmul	r9, r37, r9				# 14503
	fadd	r9, r25, r9				# 14503
.b34160:
	lw		r51, 0(r54)				# 20192
	fmul	r51, r51, r26				# 20186
	fneg	r37, r51				# 20177
	lw		r51, 1(r54)				# 20234
	fmul	r51, r51, r39				# 20228
	fneg	r39, r51				# 20219
	lw		r51, 2(r54)				# 20276
	fmul	r51, r51, r23				# 20270
	fneg	r26, r51				# 20261
	sw		r9, 0(r61)				# 20304
	cmpi	r7, 0
	beq		.b34164				# 20324
.b34165:
	lw		r51, 2(r54)				# 20379
	lw		r7, 9(r48)				# 6179
	lw		r25, 1(r7)				# 20379
	fmul	r25, r51, r25				# 20379
	lw		r51, 1(r54)				# 20404
	lw		r23, 2(r7)				# 20404
	fmul	r51, r51, r23				# 20379
	fadd	r51, r25, r51				# 20372
	fdiv	r51, r51, r57				# 20366
	fsub	r51, r37, r51				# 20353
	sw		r51, 1(r61)				# 20353
	lw		r51, 2(r54)				# 20458
	lw		r25, 0(r7)				# 20458
	fmul	r37, r51, r25				# 20458
	lw		r51, 0(r54)				# 20483
	lw		r25, 2(r7)				# 20483
	fmul	r51, r51, r25				# 20458
	fadd	r51, r37, r51				# 20451
	fdiv	r51, r51, r57				# 20445
	fsub	r51, r39, r51				# 20432
	sw		r51, 2(r61)				# 20353
	lw		r51, 1(r54)				# 20537
	lw		r25, 0(r7)				# 20537
	fmul	r51, r51, r25				# 20537
	lw		r25, 0(r54)				# 20562
	lw		r7, 1(r7)				# 20562
	fmul	r7, r25, r7				# 20537
	fadd	r51, r51, r7				# 20530
	fdiv	r51, r51, r57				# 20524
	fsub	r51, r26, r51				# 20511
	sw		r51, 3(r61)				# 20511
	fcmp	r9, r46
	beq		.b34166				# 3126
.b34168:
	fdiv	r9, r15, r9				# 20696
	sw		r9, 4(r61)				# 20696
.b34166:
	swx		r61, r28, r13				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b34104				# 20796
	b		.b34102
.b34164:
	sw		r37, 1(r61)				# 20601
	sw		r39, 2(r61)				# 20601
	sw		r26, 3(r61)				# 20643
	fcmp	r9, r46
	beq		.b34166				# 3126
	b		.b34168
.b34161:
	b		.b34160				# 14482
.b34155:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	sw		r46, 0(r9)				# 19730
	sw		r46, 1(r9)				# 19730
	sw		r46, 2(r9)				# 19730
	sw		r46, 3(r9)				# 19730
	lw		r51, 0(r54)				# 19764
	lw		r7, 4(r48)				# 3734
	lw		r61, 0(r7)				# 19764
	fmul	r61, r51, r61				# 19764
	lw		r51, 1(r54)				# 19790
	lw		r25, 1(r7)				# 19790
	fmul	r51, r51, r25				# 19764
	fadd	r61, r61, r51				# 19764
	lw		r25, 2(r54)				# 19816
	lw		r51, 2(r7)				# 19816
	fmul	r51, r25, r51				# 19764
	fadd	r51, r61, r51				# 19752
	fcmp	r51, r46
	ble		.b34158				# 3156
.b34159:
	addis	r61, r0, 49024				# 19882
	fdiv	r61, r61, r51				# 19869
	sw		r61, 0(r9)				# 19869
	lw		r61, 0(r7)				# 19916
	fdiv	r61, r61, r51				# 19910
	fneg	r61, r61				# 19897
	sw		r61, 1(r9)				# 19869
	lw		r61, 1(r7)				# 19958
	fdiv	r61, r61, r51				# 19952
	fneg	r61, r61				# 19939
	sw		r61, 2(r9)				# 19869
	lw		r61, 2(r7)				# 20000
	fdiv	r61, r61, r51				# 19994
	fneg	r61, r61				# 19981
	sw		r61, 3(r9)				# 19981
.b34157:
	swx		r9, r28, r13				# 21074
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b34104				# 20796
	b		.b34102
.b34158:
	sw		r46, 0(r9)				# 20032
	b		.b34157				# 20032
.b34107:
	mv		r51, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b34111:
	swx		r46, r9, r51				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b34111				# 19127
.b34109:
	lw		r9, 0(r54)				# 19153
	fcmp	r9, r46
	beq		.b34114				# 3126
.b34115:
	lw		r9, 6(r48)				# 3372
	lw		r61, 0(r54)				# 19253
	fcmp	r46, r61
	ble		.b34117				# 3186
.b34118:
	addi	r61, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b34120				# 765
.b34121:
	cmpi	r61, 0
	beq		.b34122				# 775
.b34123:
	addi	r61, r0, 0				# 775
	lw		r9, 4(r48)				# 3734
	lw		r9, 0(r9)				# 19222
	fneg	r9, r9				# 3025
.b34124:
	sw		r9, 0(r51)				# 19209
	lw		r9, 0(r54)				# 19302
	fdiv	r9, r15, r9				# 19289
	sw		r9, 1(r51)				# 19289
	lw		r9, 1(r54)				# 19327
	fcmp	r9, r46
	beq		.b34128				# 3126
.b34129:
	lw		r61, 6(r48)				# 3372
	lw		r9, 1(r54)				# 19426
	fcmp	r46, r9
	ble		.b34131				# 3186
.b34132:
	addi	r9, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b34134				# 765
.b34135:
	cmpi	r9, 0
	beq		.b34136				# 775
.b34137:
	addi	r9, r0, 0				# 775
	lw		r61, 4(r48)				# 3920
	lw		r61, 1(r61)				# 19395
	fneg	r61, r61				# 3025
.b34138:
	sw		r61, 2(r51)				# 19382
	lw		r9, 1(r54)				# 19475
	fdiv	r9, r15, r9				# 19462
	sw		r9, 3(r51)				# 19462
	lw		r9, 2(r54)				# 19500
	fcmp	r9, r46
	beq		.b34142				# 3126
.b34143:
	lw		r61, 6(r48)				# 3372
	lw		r9, 2(r54)				# 19599
	fcmp	r46, r9
	ble		.b34145				# 3186
.b34146:
	addi	r9, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b34148				# 765
.b34149:
	cmpi	r9, 0
	beq		.b34150				# 775
.b34151:
	addi	r9, r0, 0				# 775
	lw		r61, 4(r48)				# 4105
	lw		r61, 2(r61)				# 19568
	fneg	r61, r61				# 3025
.b34152:
	sw		r61, 4(r51)				# 19555
	lw		r9, 2(r54)				# 19648
	fdiv	r9, r15, r9				# 19635
	sw		r9, 5(r51)				# 19635
.b34141:
	swx		r51, r28, r13				# 20985
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b34104				# 20796
	b		.b34102
.b34150:
	addi	r9, r0, 1				# 775
	lw		r61, 4(r48)				# 4105
	lw		r61, 2(r61)				# 19568
	b		.b34152				# 918
.b34148:
	lw		r61, 4(r48)				# 4105
	lw		r61, 2(r61)				# 19568
	cmpi	r9, 0
	beq		.b34153				# 905
.b34154:
	b		.b34152				# 918
.b34153:
	fneg	r61, r61				# 3025
	b		.b34152				# 3025
.b34145:
	addi	r9, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b34148				# 765
	b		.b34149
.b34142:
	sw		r46, 5(r51)				# 19525
	b		.b34141				# 19525
.b34136:
	addi	r9, r0, 1				# 775
	lw		r61, 4(r48)				# 3920
	lw		r61, 1(r61)				# 19395
	b		.b34138				# 918
.b34134:
	lw		r61, 4(r48)				# 3920
	lw		r61, 1(r61)				# 19395
	cmpi	r9, 0
	beq		.b34139				# 905
.b34140:
	b		.b34138				# 918
.b34139:
	fneg	r61, r61				# 3025
	b		.b34138				# 3025
.b34131:
	addi	r9, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b34134				# 765
	b		.b34135
.b34128:
	sw		r46, 3(r51)				# 19352
	lw		r9, 2(r54)				# 19500
	fcmp	r9, r46
	beq		.b34142				# 3126
	b		.b34143
.b34122:
	addi	r61, r0, 1				# 775
	lw		r9, 4(r48)				# 3734
	lw		r9, 0(r9)				# 19222
	b		.b34124				# 918
.b34120:
	lw		r9, 4(r48)				# 3734
	lw		r9, 0(r9)				# 19222
	cmpi	r61, 0
	beq		.b34125				# 905
.b34126:
	b		.b34124				# 918
.b34125:
	fneg	r9, r9				# 3025
	b		.b34124				# 3025
.b34117:
	addi	r61, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b34120				# 765
	b		.b34121
.b34114:
	sw		r46, 1(r51)				# 19179
	lw		r9, 1(r54)				# 19327
	fcmp	r9, r46
	beq		.b34128				# 3126
	b		.b34129
.b34100:
	swx		r54, r9, r13				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r62
	ble		.b34100				# 44623
	b		.b34098
.b33881:
	slwi	r46, r62, 2				# 45726
	fsub	r7, r15, r28				# 45784
	fneg	r41, r26				# 45819
	fneg	r37, r25				# 45848
	fneg	r23, r54				# 45877
	addi	r39, r46, 1				# 45906
	mv		r57, r4
	addi	r4, r4, 3				# 44588
	addi	r30, r0, 0				# 44588
	sw		r30, 0(r57)				# 44588
	sw		r30, 1(r57)				# 44588
	sw		r30, 2(r57)				# 44588
	mv		r28, r4
	add		r4, r4, r51				# 44623
	addi	r61, r51, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r61
	ble		.b33885				# 44623
.b33883:
	mv		r13, r4
	addi	r4, r4, 2				# 44656
	sw		r57, 0(r13)				# 44656
	sw		r28, 1(r13)				# 44656
	sw		r26, 0(r57)				# 1162
	sw		r37, 1(r57)				# 1162
	sw		r23, 2(r57)				# 45563
	addi	r9, r51, -1				# 21317
	cmpi	r9, 0
	bge		.b33889				# 20796
.b33887:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r39, 0(r9)				# 45650
	sw		r13, 1(r9)				# 45650
	sw		r7, 2(r9)				# 45650
	lli		r57, reflections.2631				# 45906
	sw		r9, 0(r57)				# 45906
	addi	r48, r46, 2				# 45954
	mv		r13, r4
	addi	r4, r4, 3				# 44588
	sw		r30, 0(r13)				# 44588
	sw		r30, 1(r13)				# 44588
	sw		r30, 2(r13)				# 44588
	mv		r26, r4
	add		r4, r4, r51				# 44623
	addi	r61, r51, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r61
	ble		.b33956				# 44623
.b33954:
	mv		r62, r4
	addi	r4, r4, 2				# 44656
	sw		r13, 0(r62)				# 44656
	sw		r26, 1(r62)				# 44656
	sw		r41, 0(r13)				# 1162
	sw		r25, 1(r13)				# 1162
	sw		r23, 2(r13)				# 45563
	addi	r28, r51, -1				# 21317
	cmpi	r28, 0
	bge		.b33960				# 20796
.b33958:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r48, 0(r9)				# 45650
	sw		r62, 1(r9)				# 45650
	sw		r7, 2(r9)				# 45650
	sw		r9, 1(r57)				# 45906
	addi	r46, r46, 3				# 46006
	mv		r13, r4
	addi	r4, r4, 3				# 44588
	sw		r30, 0(r13)				# 44588
	sw		r30, 1(r13)				# 44588
	sw		r30, 2(r13)				# 44588
	mv		r28, r4
	add		r4, r4, r51				# 44623
	addi	r61, r51, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r61
	ble		.b34027				# 44623
.b34025:
	mv		r25, r4
	addi	r4, r4, 2				# 44656
	sw		r13, 0(r25)				# 44656
	sw		r28, 1(r25)				# 44656
	sw		r41, 0(r13)				# 1162
	sw		r37, 1(r13)				# 1162
	sw		r54, 2(r13)				# 45563
	addi	r9, r51, -1				# 21317
	cmpi	r9, 0
	bge		.b34031				# 20796
.b34029:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r46, 0(r9)				# 45650
	sw		r25, 1(r9)				# 45650
	sw		r7, 2(r9)				# 45650
	sw		r9, 2(r57)				# 45906
	addi	r61, r0, 3				# 46058
	lli		r9, n_reflections.2634				# 46058
	sw		r61, 0(r9)				# 46058
	b		.b33874				# 46058
.b34031:
	lwx		r54, r10, r9				# 20821
	lw		r61, 1(r54)				# 2994
	cmpi	r61, 1
	beq		.b34034				# 20947
.b34035:
	cmpi	r61, 2
	beq		.b34082				# 21033
.b34083:
	mv		r62, r4
	addi	r4, r4, 5				# 20110
	sw		r30, 0(r62)				# 20110
	sw		r30, 1(r62)				# 20110
	sw		r30, 2(r62)				# 20110
	sw		r30, 3(r62)				# 20110
	sw		r30, 4(r62)				# 20110
	lw		r51, 0(r13)				# 20142
	lw		r39, 1(r13)				# 20142
	lw		r19, 2(r13)				# 20142
	fmul	r61, r51, r51				# 14374
	lw		r37, 4(r54)				# 3734
	lw		r14, 0(r37)				# 14374
	fmul	r41, r61, r14				# 14374
	fmul	r61, r39, r39				# 14400
	lw		r23, 1(r37)				# 14400
	fmul	r61, r61, r23				# 14374
	fadd	r61, r41, r61				# 14374
	fmul	r41, r19, r19				# 14426
	lw		r37, 2(r37)				# 14426
	fmul	r41, r41, r37				# 14374
	fadd	r61, r61, r41				# 14354
	lw		r48, 3(r54)				# 3553
	cmpi	r48, 0
	beq		.b34088				# 14456
.b34089:
	fmul	r29, r39, r19				# 14522
	lw		r26, 9(r54)				# 5989
	lw		r41, 0(r26)				# 14522
	fmul	r41, r29, r41				# 14503
	fadd	r41, r61, r41				# 14503
	fmul	r19, r19, r51				# 14556
	lw		r61, 1(r26)				# 14556
	fmul	r61, r19, r61				# 14503
	fadd	r61, r41, r61				# 14503
	fmul	r51, r51, r39				# 14590
	lw		r41, 2(r26)				# 14590
	fmul	r51, r51, r41				# 14503
	fadd	r61, r61, r51				# 14503
.b34087:
	lw		r51, 0(r13)				# 20192
	fmul	r51, r51, r14				# 20186
	fneg	r19, r51				# 20177
	lw		r51, 1(r13)				# 20234
	fmul	r51, r51, r23				# 20228
	fneg	r39, r51				# 20219
	lw		r51, 2(r13)				# 20276
	fmul	r51, r51, r37				# 20270
	fneg	r37, r51				# 20261
	sw		r61, 0(r62)				# 20304
	cmpi	r48, 0
	beq		.b34091				# 20324
.b34092:
	lw		r51, 2(r13)				# 20379
	lw		r41, 9(r54)				# 6179
	lw		r54, 1(r41)				# 20379
	fmul	r26, r51, r54				# 20379
	lw		r54, 1(r13)				# 20404
	lw		r51, 2(r41)				# 20404
	fmul	r51, r54, r51				# 20379
	fadd	r51, r26, r51				# 20372
	addis	r26, r0, 16384				# 2996
	fdiv	r51, r51, r26				# 20366
	fsub	r51, r19, r51				# 20353
	sw		r51, 1(r62)				# 20353
	lw		r51, 2(r13)				# 20458
	lw		r54, 0(r41)				# 20458
	fmul	r51, r51, r54				# 20458
	lw		r54, 0(r13)				# 20483
	lw		r23, 2(r41)				# 20483
	fmul	r54, r54, r23				# 20458
	fadd	r51, r51, r54				# 20451
	fdiv	r51, r51, r26				# 20445
	fsub	r51, r39, r51				# 20432
	sw		r51, 2(r62)				# 20353
	lw		r54, 1(r13)				# 20537
	lw		r51, 0(r41)				# 20537
	fmul	r51, r54, r51				# 20537
	lw		r54, 0(r13)				# 20562
	lw		r41, 1(r41)				# 20562
	fmul	r54, r54, r41				# 20537
	fadd	r51, r51, r54				# 20530
	fdiv	r51, r51, r26				# 20524
	fsub	r51, r37, r51				# 20511
	sw		r51, 3(r62)				# 20511
	fcmp	r61, r30
	beq		.b34093				# 3126
.b34095:
	fdiv	r61, r15, r61				# 20696
	sw		r61, 4(r62)				# 20696
.b34093:
	swx		r62, r9, r28				# 21165
	addi	r9, r9, -1				# 21212
	cmpi	r9, 0
	bge		.b34031				# 20796
	b		.b34029
.b34091:
	sw		r19, 1(r62)				# 20601
	sw		r39, 2(r62)				# 20601
	sw		r37, 3(r62)				# 20643
	fcmp	r61, r30
	beq		.b34093				# 3126
	b		.b34095
.b34088:
	b		.b34087				# 14482
.b34082:
	mv		r61, r4
	addi	r4, r4, 4				# 19730
	sw		r30, 0(r61)				# 19730
	sw		r30, 1(r61)				# 19730
	sw		r30, 2(r61)				# 19730
	sw		r30, 3(r61)				# 19730
	lw		r62, 0(r13)				# 19764
	lw		r41, 4(r54)				# 3734
	lw		r51, 0(r41)				# 19764
	fmul	r54, r62, r51				# 19764
	lw		r51, 1(r13)				# 19790
	lw		r62, 1(r41)				# 19790
	fmul	r62, r51, r62				# 19764
	fadd	r54, r54, r62				# 19764
	lw		r51, 2(r13)				# 19816
	lw		r62, 2(r41)				# 19816
	fmul	r62, r51, r62				# 19764
	fadd	r51, r54, r62				# 19752
	fcmp	r51, r30
	ble		.b34085				# 3156
.b34086:
	addis	r62, r0, 49024				# 19882
	fdiv	r62, r62, r51				# 19869
	sw		r62, 0(r61)				# 19869
	lw		r62, 0(r41)				# 19916
	fdiv	r62, r62, r51				# 19910
	fneg	r62, r62				# 19897
	sw		r62, 1(r61)				# 19869
	lw		r62, 1(r41)				# 19958
	fdiv	r62, r62, r51				# 19952
	fneg	r62, r62				# 19939
	sw		r62, 2(r61)				# 19869
	lw		r62, 2(r41)				# 20000
	fdiv	r62, r62, r51				# 19994
	fneg	r62, r62				# 19981
	sw		r62, 3(r61)				# 19981
.b34084:
	swx		r61, r9, r28				# 21074
	addi	r9, r9, -1				# 21212
	cmpi	r9, 0
	bge		.b34031				# 20796
	b		.b34029
.b34085:
	sw		r30, 0(r61)				# 20032
	b		.b34084				# 20032
.b34034:
	mv		r51, r4
	addi	r4, r4, 6				# 19127
	addi	r61, r0, 0				# 19127
.b34038:
	swx		r30, r61, r51				# 19127
	addi	r61, r61, 1				# 19127
	cmpi	r61, 5
	ble		.b34038				# 19127
.b34036:
	lw		r61, 0(r13)				# 19153
	fcmp	r61, r30
	beq		.b34041				# 3126
.b34042:
	lw		r61, 6(r54)				# 3372
	lw		r62, 0(r13)				# 19253
	fcmp	r30, r62
	ble		.b34044				# 3186
.b34045:
	addi	r62, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b34047				# 765
.b34048:
	cmpi	r62, 0
	beq		.b34049				# 775
.b34050:
	addi	r62, r0, 0				# 775
	lw		r61, 4(r54)				# 3734
	lw		r61, 0(r61)				# 19222
	fneg	r61, r61				# 3025
.b34051:
	sw		r61, 0(r51)				# 19209
	lw		r61, 0(r13)				# 19302
	fdiv	r61, r15, r61				# 19289
	sw		r61, 1(r51)				# 19289
	lw		r61, 1(r13)				# 19327
	fcmp	r61, r30
	beq		.b34055				# 3126
.b34056:
	lw		r61, 6(r54)				# 3372
	lw		r62, 1(r13)				# 19426
	fcmp	r30, r62
	ble		.b34058				# 3186
.b34059:
	addi	r62, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b34061				# 765
.b34062:
	cmpi	r62, 0
	beq		.b34063				# 775
.b34064:
	addi	r62, r0, 0				# 775
	lw		r61, 4(r54)				# 3920
	lw		r61, 1(r61)				# 19395
	fneg	r61, r61				# 3025
.b34065:
	sw		r61, 2(r51)				# 19382
	lw		r61, 1(r13)				# 19475
	fdiv	r61, r15, r61				# 19462
	sw		r61, 3(r51)				# 19462
	lw		r61, 2(r13)				# 19500
	fcmp	r61, r30
	beq		.b34069				# 3126
.b34070:
	lw		r62, 6(r54)				# 3372
	lw		r61, 2(r13)				# 19599
	fcmp	r30, r61
	ble		.b34072				# 3186
.b34073:
	addi	r61, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b34075				# 765
.b34076:
	cmpi	r61, 0
	beq		.b34077				# 775
.b34078:
	addi	r61, r0, 0				# 775
	lw		r62, 4(r54)				# 4105
	lw		r62, 2(r62)				# 19568
	fneg	r62, r62				# 3025
.b34079:
	sw		r62, 4(r51)				# 19555
	lw		r61, 2(r13)				# 19648
	fdiv	r61, r15, r61				# 19635
	sw		r61, 5(r51)				# 19635
.b34068:
	swx		r51, r9, r28				# 20985
	addi	r9, r9, -1				# 21212
	cmpi	r9, 0
	bge		.b34031				# 20796
	b		.b34029
.b34077:
	addi	r61, r0, 1				# 775
	lw		r62, 4(r54)				# 4105
	lw		r62, 2(r62)				# 19568
	b		.b34079				# 918
.b34075:
	lw		r62, 4(r54)				# 4105
	lw		r62, 2(r62)				# 19568
	cmpi	r61, 0
	beq		.b34080				# 905
.b34081:
	b		.b34079				# 918
.b34080:
	fneg	r62, r62				# 3025
	b		.b34079				# 3025
.b34072:
	addi	r61, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b34075				# 765
	b		.b34076
.b34069:
	sw		r30, 5(r51)				# 19525
	b		.b34068				# 19525
.b34063:
	addi	r62, r0, 1				# 775
	lw		r61, 4(r54)				# 3920
	lw		r61, 1(r61)				# 19395
	b		.b34065				# 918
.b34061:
	lw		r61, 4(r54)				# 3920
	lw		r61, 1(r61)				# 19395
	cmpi	r62, 0
	beq		.b34066				# 905
.b34067:
	b		.b34065				# 918
.b34066:
	fneg	r61, r61				# 3025
	b		.b34065				# 3025
.b34058:
	addi	r62, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b34061				# 765
	b		.b34062
.b34055:
	sw		r30, 3(r51)				# 19352
	lw		r61, 2(r13)				# 19500
	fcmp	r61, r30
	beq		.b34069				# 3126
	b		.b34070
.b34049:
	addi	r62, r0, 1				# 775
	lw		r61, 4(r54)				# 3734
	lw		r61, 0(r61)				# 19222
	b		.b34051				# 918
.b34047:
	lw		r61, 4(r54)				# 3734
	lw		r61, 0(r61)				# 19222
	cmpi	r62, 0
	beq		.b34052				# 905
.b34053:
	b		.b34051				# 918
.b34052:
	fneg	r61, r61				# 3025
	b		.b34051				# 3025
.b34044:
	addi	r62, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b34047				# 765
	b		.b34048
.b34041:
	sw		r30, 1(r51)				# 19179
	lw		r61, 1(r13)				# 19327
	fcmp	r61, r30
	beq		.b34055				# 3126
	b		.b34056
.b34027:
	swx		r13, r9, r28				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r61
	ble		.b34027				# 44623
	b		.b34025
.b33960:
	lwx		r23, r10, r28				# 20821
	lw		r9, 1(r23)				# 2994
	cmpi	r9, 1
	beq		.b33963				# 20947
.b33964:
	cmpi	r9, 2
	beq		.b34011				# 21033
.b34012:
	mv		r9, r4
	addi	r4, r4, 5				# 20110
	sw		r30, 0(r9)				# 20110
	sw		r30, 1(r9)				# 20110
	sw		r30, 2(r9)				# 20110
	sw		r30, 3(r9)				# 20110
	sw		r30, 4(r9)				# 20110
	lw		r50, 0(r13)				# 20142
	lw		r12, 1(r13)				# 20142
	lw		r25, 2(r13)				# 20142
	fmul	r61, r50, r50				# 14374
	lw		r29, 4(r23)				# 3734
	lw		r19, 0(r29)				# 14374
	fmul	r39, r61, r19				# 14374
	fmul	r61, r12, r12				# 14400
	lw		r17, 1(r29)				# 14400
	fmul	r61, r61, r17				# 14374
	fadd	r61, r39, r61				# 14374
	fmul	r39, r25, r25				# 14426
	lw		r29, 2(r29)				# 14426
	fmul	r39, r39, r29				# 14374
	fadd	r61, r61, r39				# 14354
	lw		r33, 3(r23)				# 3553
	cmpi	r33, 0
	beq		.b34017				# 14456
.b34018:
	fmul	r53, r12, r25				# 14522
	lw		r14, 9(r23)				# 5989
	lw		r39, 0(r14)				# 14522
	fmul	r39, r53, r39				# 14503
	fadd	r39, r61, r39				# 14503
	fmul	r61, r25, r50				# 14556
	lw		r25, 1(r14)				# 14556
	fmul	r61, r61, r25				# 14503
	fadd	r61, r39, r61				# 14503
	fmul	r25, r50, r12				# 14590
	lw		r39, 2(r14)				# 14590
	fmul	r25, r25, r39				# 14503
	fadd	r61, r61, r25				# 14503
.b34016:
	lw		r25, 0(r13)				# 20192
	fmul	r25, r25, r19				# 20186
	fneg	r50, r25				# 20177
	lw		r25, 1(r13)				# 20234
	fmul	r25, r25, r17				# 20228
	fneg	r19, r25				# 20219
	lw		r25, 2(r13)				# 20276
	fmul	r25, r25, r29				# 20270
	fneg	r14, r25				# 20261
	sw		r61, 0(r9)				# 20304
	cmpi	r33, 0
	beq		.b34020				# 20324
.b34021:
	lw		r29, 2(r13)				# 20379
	lw		r39, 9(r23)				# 6179
	lw		r25, 1(r39)				# 20379
	fmul	r29, r29, r25				# 20379
	lw		r25, 1(r13)				# 20404
	lw		r23, 2(r39)				# 20404
	fmul	r25, r25, r23				# 20379
	fadd	r23, r29, r25				# 20372
	addis	r25, r0, 16384				# 2996
	fdiv	r23, r23, r25				# 20366
	fsub	r23, r50, r23				# 20353
	sw		r23, 1(r9)				# 20353
	lw		r23, 2(r13)				# 20458
	lw		r29, 0(r39)				# 20458
	fmul	r23, r23, r29				# 20458
	lw		r29, 0(r13)				# 20483
	lw		r17, 2(r39)				# 20483
	fmul	r29, r29, r17				# 20458
	fadd	r23, r23, r29				# 20451
	fdiv	r23, r23, r25				# 20445
	fsub	r23, r19, r23				# 20432
	sw		r23, 2(r9)				# 20353
	lw		r23, 1(r13)				# 20537
	lw		r19, 0(r39)				# 20537
	fmul	r23, r23, r19				# 20537
	lw		r19, 0(r13)				# 20562
	lw		r39, 1(r39)				# 20562
	fmul	r39, r19, r39				# 20537
	fadd	r23, r23, r39				# 20530
	fdiv	r25, r23, r25				# 20524
	fsub	r25, r14, r25				# 20511
	sw		r25, 3(r9)				# 20511
	fcmp	r61, r30
	beq		.b34022				# 3126
.b34024:
	fdiv	r61, r15, r61				# 20696
	sw		r61, 4(r9)				# 20696
.b34022:
	swx		r9, r28, r26				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b33960				# 20796
	b		.b33958
.b34020:
	sw		r50, 1(r9)				# 20601
	sw		r19, 2(r9)				# 20601
	sw		r14, 3(r9)				# 20643
	fcmp	r61, r30
	beq		.b34022				# 3126
	b		.b34024
.b34017:
	b		.b34016				# 14482
.b34011:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	sw		r30, 0(r9)				# 19730
	sw		r30, 1(r9)				# 19730
	sw		r30, 2(r9)				# 19730
	sw		r30, 3(r9)				# 19730
	lw		r61, 0(r13)				# 19764
	lw		r39, 4(r23)				# 3734
	lw		r25, 0(r39)				# 19764
	fmul	r23, r61, r25				# 19764
	lw		r61, 1(r13)				# 19790
	lw		r25, 1(r39)				# 19790
	fmul	r61, r61, r25				# 19764
	fadd	r61, r23, r61				# 19764
	lw		r25, 2(r13)				# 19816
	lw		r23, 2(r39)				# 19816
	fmul	r25, r25, r23				# 19764
	fadd	r25, r61, r25				# 19752
	fcmp	r25, r30
	ble		.b34014				# 3156
.b34015:
	addis	r61, r0, 49024				# 19882
	fdiv	r61, r61, r25				# 19869
	sw		r61, 0(r9)				# 19869
	lw		r61, 0(r39)				# 19916
	fdiv	r61, r61, r25				# 19910
	fneg	r61, r61				# 19897
	sw		r61, 1(r9)				# 19869
	lw		r61, 1(r39)				# 19958
	fdiv	r61, r61, r25				# 19952
	fneg	r61, r61				# 19939
	sw		r61, 2(r9)				# 19869
	lw		r61, 2(r39)				# 20000
	fdiv	r61, r61, r25				# 19994
	fneg	r61, r61				# 19981
	sw		r61, 3(r9)				# 19981
.b34013:
	swx		r9, r28, r26				# 21074
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b33960				# 20796
	b		.b33958
.b34014:
	sw		r30, 0(r9)				# 20032
	b		.b34013				# 20032
.b33963:
	mv		r25, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b33967:
	swx		r30, r9, r25				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b33967				# 19127
.b33965:
	lw		r9, 0(r13)				# 19153
	fcmp	r9, r30
	beq		.b33970				# 3126
.b33971:
	lw		r9, 6(r23)				# 3372
	lw		r61, 0(r13)				# 19253
	fcmp	r30, r61
	ble		.b33973				# 3186
.b33974:
	addi	r61, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b33976				# 765
.b33977:
	cmpi	r61, 0
	beq		.b33978				# 775
.b33979:
	addi	r61, r0, 0				# 775
	lw		r9, 4(r23)				# 3734
	lw		r9, 0(r9)				# 19222
	fneg	r9, r9				# 3025
.b33980:
	sw		r9, 0(r25)				# 19209
	lw		r9, 0(r13)				# 19302
	fdiv	r9, r15, r9				# 19289
	sw		r9, 1(r25)				# 19289
	lw		r9, 1(r13)				# 19327
	fcmp	r9, r30
	beq		.b33984				# 3126
.b33985:
	lw		r61, 6(r23)				# 3372
	lw		r9, 1(r13)				# 19426
	fcmp	r30, r9
	ble		.b33987				# 3186
.b33988:
	addi	r9, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b33990				# 765
.b33991:
	cmpi	r9, 0
	beq		.b33992				# 775
.b33993:
	addi	r9, r0, 0				# 775
	lw		r61, 4(r23)				# 3920
	lw		r61, 1(r61)				# 19395
	fneg	r61, r61				# 3025
.b33994:
	sw		r61, 2(r25)				# 19382
	lw		r9, 1(r13)				# 19475
	fdiv	r9, r15, r9				# 19462
	sw		r9, 3(r25)				# 19462
	lw		r9, 2(r13)				# 19500
	fcmp	r9, r30
	beq		.b33998				# 3126
.b33999:
	lw		r9, 6(r23)				# 3372
	lw		r61, 2(r13)				# 19599
	fcmp	r30, r61
	ble		.b34001				# 3186
.b34002:
	addi	r61, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b34004				# 765
.b34005:
	cmpi	r61, 0
	beq		.b34006				# 775
.b34007:
	addi	r61, r0, 0				# 775
	lw		r9, 4(r23)				# 4105
	lw		r9, 2(r9)				# 19568
	fneg	r9, r9				# 3025
.b34008:
	sw		r9, 4(r25)				# 19555
	lw		r9, 2(r13)				# 19648
	fdiv	r9, r15, r9				# 19635
	sw		r9, 5(r25)				# 19635
.b33997:
	swx		r25, r28, r26				# 20985
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b33960				# 20796
	b		.b33958
.b34006:
	addi	r61, r0, 1				# 775
	lw		r9, 4(r23)				# 4105
	lw		r9, 2(r9)				# 19568
	b		.b34008				# 918
.b34004:
	lw		r9, 4(r23)				# 4105
	lw		r9, 2(r9)				# 19568
	cmpi	r61, 0
	beq		.b34009				# 905
.b34010:
	b		.b34008				# 918
.b34009:
	fneg	r9, r9				# 3025
	b		.b34008				# 3025
.b34001:
	addi	r61, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b34004				# 765
	b		.b34005
.b33998:
	sw		r30, 5(r25)				# 19525
	b		.b33997				# 19525
.b33992:
	addi	r9, r0, 1				# 775
	lw		r61, 4(r23)				# 3920
	lw		r61, 1(r61)				# 19395
	b		.b33994				# 918
.b33990:
	lw		r61, 4(r23)				# 3920
	lw		r61, 1(r61)				# 19395
	cmpi	r9, 0
	beq		.b33995				# 905
.b33996:
	b		.b33994				# 918
.b33995:
	fneg	r61, r61				# 3025
	b		.b33994				# 3025
.b33987:
	addi	r9, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b33990				# 765
	b		.b33991
.b33984:
	sw		r30, 3(r25)				# 19352
	lw		r9, 2(r13)				# 19500
	fcmp	r9, r30
	beq		.b33998				# 3126
	b		.b33999
.b33978:
	addi	r61, r0, 1				# 775
	lw		r9, 4(r23)				# 3734
	lw		r9, 0(r9)				# 19222
	b		.b33980				# 918
.b33976:
	lw		r9, 4(r23)				# 3734
	lw		r9, 0(r9)				# 19222
	cmpi	r61, 0
	beq		.b33981				# 905
.b33982:
	b		.b33980				# 918
.b33981:
	fneg	r9, r9				# 3025
	b		.b33980				# 3025
.b33973:
	addi	r61, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b33976				# 765
	b		.b33977
.b33970:
	sw		r30, 1(r25)				# 19179
	lw		r9, 1(r13)				# 19327
	fcmp	r9, r30
	beq		.b33984				# 3126
	b		.b33985
.b33956:
	swx		r13, r9, r26				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r61
	ble		.b33956				# 44623
	b		.b33954
.b33889:
	lwx		r14, r10, r9				# 20821
	lw		r61, 1(r14)				# 2994
	cmpi	r61, 1
	beq		.b33892				# 20947
.b33893:
	cmpi	r61, 2
	beq		.b33940				# 21033
.b33941:
	mv		r62, r4
	addi	r4, r4, 5				# 20110
	sw		r30, 0(r62)				# 20110
	sw		r30, 1(r62)				# 20110
	sw		r30, 2(r62)				# 20110
	sw		r30, 3(r62)				# 20110
	sw		r30, 4(r62)				# 20110
	lw		r17, 0(r57)				# 20142
	lw		r26, 1(r57)				# 20142
	lw		r53, 2(r57)				# 20142
	fmul	r61, r17, r17				# 14374
	lw		r29, 4(r14)				# 3734
	lw		r12, 0(r29)				# 14374
	fmul	r19, r61, r12				# 14374
	fmul	r61, r26, r26				# 14400
	lw		r48, 1(r29)				# 14400
	fmul	r61, r61, r48				# 14374
	fadd	r19, r19, r61				# 14374
	fmul	r61, r53, r53				# 14426
	lw		r33, 2(r29)				# 14426
	fmul	r61, r61, r33				# 14374
	fadd	r61, r19, r61				# 14354
	lw		r29, 3(r14)				# 3553
	cmpi	r29, 0
	beq		.b33946				# 14456
.b33947:
	fmul	r50, r26, r53				# 14522
	lw		r42, 9(r14)				# 5989
	lw		r19, 0(r42)				# 14522
	fmul	r19, r50, r19				# 14503
	fadd	r50, r61, r19				# 14503
	fmul	r61, r53, r17				# 14556
	lw		r19, 1(r42)				# 14556
	fmul	r61, r61, r19				# 14503
	fadd	r61, r50, r61				# 14503
	fmul	r19, r17, r26				# 14590
	lw		r26, 2(r42)				# 14590
	fmul	r26, r19, r26				# 14503
	fadd	r61, r61, r26				# 14503
.b33945:
	lw		r26, 0(r57)				# 20192
	fmul	r26, r26, r12				# 20186
	fneg	r17, r26				# 20177
	lw		r26, 1(r57)				# 20234
	fmul	r26, r26, r48				# 20228
	fneg	r50, r26				# 20219
	lw		r26, 2(r57)				# 20276
	fmul	r26, r26, r33				# 20270
	fneg	r12, r26				# 20261
	sw		r61, 0(r62)				# 20304
	cmpi	r29, 0
	beq		.b33949				# 20324
.b33950:
	lw		r26, 2(r57)				# 20379
	lw		r19, 9(r14)				# 6179
	lw		r48, 1(r19)				# 20379
	fmul	r48, r26, r48				# 20379
	lw		r26, 1(r57)				# 20404
	lw		r29, 2(r19)				# 20404
	fmul	r26, r26, r29				# 20379
	fadd	r26, r48, r26				# 20372
	addis	r14, r0, 16384				# 2996
	fdiv	r26, r26, r14				# 20366
	fsub	r26, r17, r26				# 20353
	sw		r26, 1(r62)				# 20353
	lw		r48, 2(r57)				# 20458
	lw		r26, 0(r19)				# 20458
	fmul	r29, r48, r26				# 20458
	lw		r26, 0(r57)				# 20483
	lw		r48, 2(r19)				# 20483
	fmul	r26, r26, r48				# 20458
	fadd	r26, r29, r26				# 20451
	fdiv	r26, r26, r14				# 20445
	fsub	r26, r50, r26				# 20432
	sw		r26, 2(r62)				# 20353
	lw		r26, 1(r57)				# 20537
	lw		r48, 0(r19)				# 20537
	fmul	r29, r26, r48				# 20537
	lw		r26, 0(r57)				# 20562
	lw		r48, 1(r19)				# 20562
	fmul	r26, r26, r48				# 20537
	fadd	r26, r29, r26				# 20530
	fdiv	r26, r26, r14				# 20524
	fsub	r26, r12, r26				# 20511
	sw		r26, 3(r62)				# 20511
	fcmp	r61, r30
	beq		.b33951				# 3126
.b33953:
	fdiv	r61, r15, r61				# 20696
	sw		r61, 4(r62)				# 20696
.b33951:
	swx		r62, r9, r28				# 21165
	addi	r9, r9, -1				# 21212
	cmpi	r9, 0
	bge		.b33889				# 20796
	b		.b33887
.b33949:
	sw		r17, 1(r62)				# 20601
	sw		r50, 2(r62)				# 20601
	sw		r12, 3(r62)				# 20643
	fcmp	r61, r30
	beq		.b33951				# 3126
	b		.b33953
.b33946:
	b		.b33945				# 14482
.b33940:
	mv		r61, r4
	addi	r4, r4, 4				# 19730
	sw		r30, 0(r61)				# 19730
	sw		r30, 1(r61)				# 19730
	sw		r30, 2(r61)				# 19730
	sw		r30, 3(r61)				# 19730
	lw		r62, 0(r57)				# 19764
	lw		r26, 4(r14)				# 3734
	lw		r48, 0(r26)				# 19764
	fmul	r48, r62, r48				# 19764
	lw		r62, 1(r57)				# 19790
	lw		r19, 1(r26)				# 19790
	fmul	r62, r62, r19				# 19764
	fadd	r62, r48, r62				# 19764
	lw		r48, 2(r57)				# 19816
	lw		r19, 2(r26)				# 19816
	fmul	r48, r48, r19				# 19764
	fadd	r48, r62, r48				# 19752
	fcmp	r48, r30
	ble		.b33943				# 3156
.b33944:
	addis	r62, r0, 49024				# 19882
	fdiv	r62, r62, r48				# 19869
	sw		r62, 0(r61)				# 19869
	lw		r62, 0(r26)				# 19916
	fdiv	r62, r62, r48				# 19910
	fneg	r62, r62				# 19897
	sw		r62, 1(r61)				# 19869
	lw		r62, 1(r26)				# 19958
	fdiv	r62, r62, r48				# 19952
	fneg	r62, r62				# 19939
	sw		r62, 2(r61)				# 19869
	lw		r62, 2(r26)				# 20000
	fdiv	r62, r62, r48				# 19994
	fneg	r62, r62				# 19981
	sw		r62, 3(r61)				# 19981
.b33942:
	swx		r61, r9, r28				# 21074
	addi	r9, r9, -1				# 21212
	cmpi	r9, 0
	bge		.b33889				# 20796
	b		.b33887
.b33943:
	sw		r30, 0(r61)				# 20032
	b		.b33942				# 20032
.b33892:
	mv		r26, r4
	addi	r4, r4, 6				# 19127
	addi	r61, r0, 0				# 19127
.b33896:
	swx		r30, r61, r26				# 19127
	addi	r61, r61, 1				# 19127
	cmpi	r61, 5
	ble		.b33896				# 19127
.b33894:
	lw		r61, 0(r57)				# 19153
	fcmp	r61, r30
	beq		.b33899				# 3126
.b33900:
	lw		r62, 6(r14)				# 3372
	lw		r61, 0(r57)				# 19253
	fcmp	r30, r61
	ble		.b33902				# 3186
.b33903:
	addi	r61, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b33905				# 765
.b33906:
	cmpi	r61, 0
	beq		.b33907				# 775
.b33908:
	addi	r61, r0, 0				# 775
	lw		r62, 4(r14)				# 3734
	lw		r62, 0(r62)				# 19222
	fneg	r62, r62				# 3025
.b33909:
	sw		r62, 0(r26)				# 19209
	lw		r61, 0(r57)				# 19302
	fdiv	r61, r15, r61				# 19289
	sw		r61, 1(r26)				# 19289
	lw		r61, 1(r57)				# 19327
	fcmp	r61, r30
	beq		.b33913				# 3126
.b33914:
	lw		r62, 6(r14)				# 3372
	lw		r61, 1(r57)				# 19426
	fcmp	r30, r61
	ble		.b33916				# 3186
.b33917:
	addi	r61, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b33919				# 765
.b33920:
	cmpi	r61, 0
	beq		.b33921				# 775
.b33922:
	addi	r61, r0, 0				# 775
	lw		r62, 4(r14)				# 3920
	lw		r62, 1(r62)				# 19395
	fneg	r62, r62				# 3025
.b33923:
	sw		r62, 2(r26)				# 19382
	lw		r61, 1(r57)				# 19475
	fdiv	r61, r15, r61				# 19462
	sw		r61, 3(r26)				# 19462
	lw		r61, 2(r57)				# 19500
	fcmp	r61, r30
	beq		.b33927				# 3126
.b33928:
	lw		r48, 6(r14)				# 3372
	lw		r61, 2(r57)				# 19599
	fcmp	r30, r61
	ble		.b33930				# 3186
.b33931:
	addi	r62, r0, 1				# 3186
	cmpi	r48, 0
	beq		.b33933				# 765
.b33934:
	cmpi	r62, 0
	beq		.b33935				# 775
.b33936:
	addi	r62, r0, 0				# 775
	lw		r61, 4(r14)				# 4105
	lw		r61, 2(r61)				# 19568
	fneg	r61, r61				# 3025
.b33937:
	sw		r61, 4(r26)				# 19555
	lw		r61, 2(r57)				# 19648
	fdiv	r61, r15, r61				# 19635
	sw		r61, 5(r26)				# 19635
.b33926:
	swx		r26, r9, r28				# 20985
	addi	r9, r9, -1				# 21212
	cmpi	r9, 0
	bge		.b33889				# 20796
	b		.b33887
.b33935:
	addi	r62, r0, 1				# 775
	lw		r61, 4(r14)				# 4105
	lw		r61, 2(r61)				# 19568
	b		.b33937				# 918
.b33933:
	lw		r61, 4(r14)				# 4105
	lw		r61, 2(r61)				# 19568
	cmpi	r62, 0
	beq		.b33938				# 905
.b33939:
	b		.b33937				# 918
.b33938:
	fneg	r61, r61				# 3025
	b		.b33937				# 3025
.b33930:
	addi	r62, r0, 0				# 3186
	cmpi	r48, 0
	beq		.b33933				# 765
	b		.b33934
.b33927:
	sw		r30, 5(r26)				# 19525
	b		.b33926				# 19525
.b33921:
	addi	r61, r0, 1				# 775
	lw		r62, 4(r14)				# 3920
	lw		r62, 1(r62)				# 19395
	b		.b33923				# 918
.b33919:
	lw		r62, 4(r14)				# 3920
	lw		r62, 1(r62)				# 19395
	cmpi	r61, 0
	beq		.b33924				# 905
.b33925:
	b		.b33923				# 918
.b33924:
	fneg	r62, r62				# 3025
	b		.b33923				# 3025
.b33916:
	addi	r61, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b33919				# 765
	b		.b33920
.b33913:
	sw		r30, 3(r26)				# 19352
	lw		r61, 2(r57)				# 19500
	fcmp	r61, r30
	beq		.b33927				# 3126
	b		.b33928
.b33907:
	addi	r61, r0, 1				# 775
	lw		r62, 4(r14)				# 3734
	lw		r62, 0(r62)				# 19222
	b		.b33909				# 918
.b33905:
	lw		r62, 4(r14)				# 3734
	lw		r62, 0(r62)				# 19222
	cmpi	r61, 0
	beq		.b33910				# 905
.b33911:
	b		.b33909				# 918
.b33910:
	fneg	r62, r62				# 3025
	b		.b33909				# 3025
.b33902:
	addi	r61, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b33905				# 765
	b		.b33906
.b33899:
	sw		r30, 1(r26)				# 19179
	lw		r61, 1(r57)				# 19327
	fcmp	r61, r30
	beq		.b33913				# 3126
	b		.b33914
.b33885:
	swx		r57, r9, r28				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r61
	ble		.b33885				# 44623
	b		.b33883
.b33809:
	lli		r61, objects.2523				# 20821
	lwx		r30, r61, r9				# 20821
	lw		r61, 1(r30)				# 2994
	cmpi	r61, 1
	beq		.b33812				# 20947
.b33813:
	cmpi	r61, 2
	beq		.b33860				# 21033
.b33861:
	mv		r61, r4
	addi	r4, r4, 5				# 20110
	addi	r10, r0, 0				# 20110
	sw		r10, 0(r61)				# 20110
	sw		r10, 1(r61)				# 20110
	sw		r10, 2(r61)				# 20110
	sw		r10, 3(r61)				# 20110
	sw		r10, 4(r61)				# 20110
	fmul	r28, r26, r26				# 14374
	lw		r13, 4(r30)				# 3734
	lw		r41, 0(r13)				# 14374
	fmul	r62, r28, r41				# 14374
	fmul	r28, r25, r25				# 14400
	lw		r15, 1(r13)				# 14400
	fmul	r28, r28, r15				# 14374
	fadd	r62, r62, r28				# 14374
	fmul	r28, r54, r54				# 14426
	lw		r37, 2(r13)				# 14426
	fmul	r28, r28, r37				# 14374
	fadd	r28, r62, r28				# 14354
	lw		r13, 3(r30)				# 3553
	cmpi	r13, 0
	beq		.b33866				# 14456
.b33867:
	fmul	r62, r25, r54				# 14522
	lw		r57, 9(r30)				# 5989
	lw		r7, 0(r57)				# 14522
	fmul	r62, r62, r7				# 14503
	fadd	r7, r28, r62				# 14503
	fmul	r62, r54, r26				# 14556
	lw		r28, 1(r57)				# 14556
	fmul	r28, r62, r28				# 14503
	fadd	r62, r7, r28				# 14503
	fmul	r7, r26, r25				# 14590
	lw		r28, 2(r57)				# 14590
	fmul	r28, r7, r28				# 14503
	fadd	r28, r62, r28				# 14503
.b33865:
	fmul	r62, r26, r41				# 20186
	fneg	r62, r62				# 20177
	fmul	r15, r25, r15				# 20228
	fneg	r41, r15				# 20219
	fmul	r15, r54, r37				# 20270
	fneg	r7, r15				# 20261
	sw		r28, 0(r61)				# 20304
	cmpi	r13, 0
	beq		.b33869				# 20324
.b33870:
	lw		r30, 9(r30)				# 6179
	lw		r15, 1(r30)				# 20379
	fmul	r15, r54, r15				# 20379
	lw		r13, 2(r30)				# 20404
	fmul	r13, r25, r13				# 20379
	fadd	r15, r15, r13				# 20372
	addis	r13, r0, 16384				# 2996
	fdiv	r15, r15, r13				# 20366
	fsub	r62, r62, r15				# 20353
	sw		r62, 1(r61)				# 20353
	lw		r62, 0(r30)				# 20458
	fmul	r62, r54, r62				# 20458
	lw		r15, 2(r30)				# 20483
	fmul	r15, r26, r15				# 20458
	fadd	r62, r62, r15				# 20451
	fdiv	r62, r62, r13				# 20445
	fsub	r62, r41, r62				# 20432
	sw		r62, 2(r61)				# 20353
	lw		r62, 0(r30)				# 20537
	fmul	r62, r25, r62				# 20537
	lw		r15, 1(r30)				# 20562
	fmul	r15, r26, r15				# 20537
	fadd	r62, r62, r15				# 20530
	fdiv	r62, r62, r13				# 20524
	fsub	r62, r7, r62				# 20511
	sw		r62, 3(r61)				# 20511
	fcmp	r28, r10
	beq		.b33871				# 3126
.b33873:
	addis	r62, r0, 16256				# 20709
	fdiv	r28, r62, r28				# 20696
	sw		r28, 4(r61)				# 20696
.b33871:
	lli		r28, consts.2619				# 21165
	swx		r61, r9, r28				# 21165
	addi	r9, r9, -1				# 21212
	cmpi	r9, 0
	bge		.b33809				# 20796
	b		.b33807
.b33869:
	sw		r62, 1(r61)				# 20601
	sw		r41, 2(r61)				# 20601
	sw		r7, 3(r61)				# 20643
	fcmp	r28, r10
	beq		.b33871				# 3126
	b		.b33873
.b33866:
	b		.b33865				# 14482
.b33860:
	mv		r61, r4
	addi	r4, r4, 4				# 19730
	addi	r10, r0, 0				# 19730
	sw		r10, 0(r61)				# 19730
	sw		r10, 1(r61)				# 19730
	sw		r10, 2(r61)				# 19730
	sw		r10, 3(r61)				# 19730
	lw		r15, 4(r30)				# 3734
	lw		r28, 0(r15)				# 19764
	fmul	r28, r26, r28				# 19764
	lw		r62, 1(r15)				# 19790
	fmul	r62, r25, r62				# 19764
	fadd	r62, r28, r62				# 19764
	lw		r28, 2(r15)				# 19816
	fmul	r28, r54, r28				# 19764
	fadd	r62, r62, r28				# 19752
	fcmp	r62, r10
	ble		.b33863				# 3156
.b33864:
	addis	r28, r0, 49024				# 19882
	fdiv	r28, r28, r62				# 19869
	sw		r28, 0(r61)				# 19869
	lw		r28, 0(r15)				# 19916
	fdiv	r28, r28, r62				# 19910
	fneg	r28, r28				# 19897
	sw		r28, 1(r61)				# 19869
	lw		r28, 1(r15)				# 19958
	fdiv	r28, r28, r62				# 19952
	fneg	r28, r28				# 19939
	sw		r28, 2(r61)				# 19869
	lw		r28, 2(r15)				# 20000
	fdiv	r28, r28, r62				# 19994
	fneg	r28, r28				# 19981
	sw		r28, 3(r61)				# 19981
.b33862:
	lli		r28, consts.2619				# 21074
	swx		r61, r9, r28				# 21074
	addi	r9, r9, -1				# 21212
	cmpi	r9, 0
	bge		.b33809				# 20796
	b		.b33807
.b33863:
	sw		r10, 0(r61)				# 20032
	b		.b33862				# 20032
.b33812:
	mv		r62, r4
	addi	r4, r4, 6				# 19127
	addi	r61, r0, 0				# 19127
.b33816:
	addi	r28, r0, 0				# 19127
	swx		r28, r61, r62				# 19127
	addi	r61, r61, 1				# 19127
	cmpi	r61, 5
	ble		.b33816				# 19127
.b33814:
	addi	r15, r0, 0				# 19150
	fcmp	r26, r15
	beq		.b33819				# 3126
.b33820:
	lw		r61, 6(r30)				# 3372
	fcmp	r15, r26
	ble		.b33822				# 3186
.b33823:
	addi	r28, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b33825				# 765
.b33826:
	cmpi	r28, 0
	beq		.b33827				# 775
.b33828:
	addi	r28, r0, 0				# 775
	lw		r61, 4(r30)				# 3734
	lw		r61, 0(r61)				# 19222
	fneg	r61, r61				# 3025
.b33829:
	sw		r61, 0(r62)				# 19209
	addis	r61, r0, 16256				# 19302
	fdiv	r61, r61, r26				# 19289
	sw		r61, 1(r62)				# 19289
	fcmp	r25, r15
	beq		.b33833				# 3126
.b33834:
	lw		r28, 6(r30)				# 3372
	fcmp	r15, r25
	ble		.b33836				# 3186
.b33837:
	addi	r61, r0, 1				# 3186
	cmpi	r28, 0
	beq		.b33839				# 765
.b33840:
	cmpi	r61, 0
	beq		.b33841				# 775
.b33842:
	addi	r61, r0, 0				# 775
	lw		r28, 4(r30)				# 3920
	lw		r28, 1(r28)				# 19395
	fneg	r28, r28				# 3025
.b33843:
	sw		r28, 2(r62)				# 19382
	addis	r61, r0, 16256				# 19475
	fdiv	r61, r61, r25				# 19462
	sw		r61, 3(r62)				# 19462
	fcmp	r54, r15
	beq		.b33847				# 3126
.b33848:
	lw		r61, 6(r30)				# 3372
	fcmp	r15, r54
	ble		.b33850				# 3186
.b33851:
	addi	r28, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b33853				# 765
.b33854:
	cmpi	r28, 0
	beq		.b33855				# 775
.b33856:
	addi	r28, r0, 0				# 775
	lw		r61, 4(r30)				# 4105
	lw		r61, 2(r61)				# 19568
	fneg	r61, r61				# 3025
.b33857:
	sw		r61, 4(r62)				# 19555
	addis	r61, r0, 16256				# 19648
	fdiv	r61, r61, r54				# 19635
	sw		r61, 5(r62)				# 19635
.b33846:
	lli		r61, consts.2619				# 20985
	swx		r62, r9, r61				# 20985
	addi	r9, r9, -1				# 21212
	cmpi	r9, 0
	bge		.b33809				# 20796
	b		.b33807
.b33855:
	addi	r28, r0, 1				# 775
	lw		r61, 4(r30)				# 4105
	lw		r61, 2(r61)				# 19568
	b		.b33857				# 918
.b33853:
	lw		r61, 4(r30)				# 4105
	lw		r61, 2(r61)				# 19568
	cmpi	r28, 0
	beq		.b33858				# 905
.b33859:
	b		.b33857				# 918
.b33858:
	fneg	r61, r61				# 3025
	b		.b33857				# 3025
.b33850:
	addi	r28, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b33853				# 765
	b		.b33854
.b33847:
	sw		r15, 5(r62)				# 19525
	b		.b33846				# 19525
.b33841:
	addi	r61, r0, 1				# 775
	lw		r28, 4(r30)				# 3920
	lw		r28, 1(r28)				# 19395
	b		.b33843				# 918
.b33839:
	lw		r28, 4(r30)				# 3920
	lw		r28, 1(r28)				# 19395
	cmpi	r61, 0
	beq		.b33844				# 905
.b33845:
	b		.b33843				# 918
.b33844:
	fneg	r28, r28				# 3025
	b		.b33843				# 3025
.b33836:
	addi	r61, r0, 0				# 3186
	cmpi	r28, 0
	beq		.b33839				# 765
	b		.b33840
.b33833:
	sw		r15, 3(r62)				# 19352
	fcmp	r54, r15
	beq		.b33847				# 3126
	b		.b33848
.b33827:
	addi	r28, r0, 1				# 775
	lw		r61, 4(r30)				# 3734
	lw		r61, 0(r61)				# 19222
	b		.b33829				# 918
.b33825:
	lw		r61, 4(r30)				# 3734
	lw		r61, 0(r61)				# 19222
	cmpi	r28, 0
	beq		.b33830				# 905
.b33831:
	b		.b33829				# 918
.b33830:
	fneg	r61, r61				# 3025
	b		.b33829				# 3025
.b33822:
	addi	r28, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b33825				# 765
	b		.b33826
.b33819:
	sw		r15, 1(r62)				# 19179
	fcmp	r25, r15
	beq		.b33833				# 3126
	b		.b33834
.b33742:
	lli		r9, objects.2523				# 20821
	lwx		r13, r9, r28				# 20821
	lw		r41, 1(r25)				# 8141
	lw		r57, 0(r25)				# 8078
	lw		r9, 1(r13)				# 2994
	cmpi	r9, 1
	beq		.b33745				# 20947
.b33746:
	cmpi	r9, 2
	beq		.b33793				# 21033
.b33794:
	mv		r62, r4
	addi	r4, r4, 5				# 20110
	addi	r46, r0, 0				# 20110
	sw		r46, 0(r62)				# 20110
	sw		r46, 1(r62)				# 20110
	sw		r46, 2(r62)				# 20110
	sw		r46, 3(r62)				# 20110
	sw		r46, 4(r62)				# 20110
	lw		r37, 0(r57)				# 20142
	lw		r54, 1(r57)				# 20142
	lw		r39, 2(r57)				# 20142
	fmul	r9, r37, r37				# 14374
	lw		r51, 4(r13)				# 3734
	lw		r48, 0(r51)				# 14374
	fmul	r10, r9, r48				# 14374
	fmul	r9, r54, r54				# 14400
	lw		r23, 1(r51)				# 14400
	fmul	r9, r9, r23				# 14374
	fadd	r10, r10, r9				# 14374
	fmul	r9, r39, r39				# 14426
	lw		r26, 2(r51)				# 14426
	fmul	r9, r9, r26				# 14374
	fadd	r9, r10, r9				# 14354
	lw		r10, 3(r13)				# 3553
	cmpi	r10, 0
	beq		.b33799				# 14456
.b33800:
	fmul	r51, r54, r39				# 14522
	lw		r19, 9(r13)				# 5989
	lw		r7, 0(r19)				# 14522
	fmul	r51, r51, r7				# 14503
	fadd	r7, r9, r51				# 14503
	fmul	r9, r39, r37				# 14556
	lw		r51, 1(r19)				# 14556
	fmul	r9, r9, r51				# 14503
	fadd	r9, r7, r9				# 14503
	fmul	r51, r37, r54				# 14590
	lw		r7, 2(r19)				# 14590
	fmul	r51, r51, r7				# 14503
	fadd	r9, r9, r51				# 14503
.b33798:
	fmul	r51, r37, r48				# 20186
	fneg	r48, r51				# 20177
	fmul	r51, r54, r23				# 20228
	fneg	r37, r51				# 20219
	fmul	r51, r39, r26				# 20270
	fneg	r7, r51				# 20261
	sw		r9, 0(r62)				# 20304
	cmpi	r10, 0
	beq		.b33802				# 20324
.b33803:
	lw		r10, 2(r57)				# 20379
	lw		r51, 9(r13)				# 6179
	lw		r13, 1(r51)				# 20379
	fmul	r10, r10, r13				# 20379
	lw		r54, 1(r57)				# 20404
	lw		r13, 2(r51)				# 20404
	fmul	r13, r54, r13				# 20379
	fadd	r10, r10, r13				# 20372
	addis	r54, r0, 16384				# 2996
	fdiv	r10, r10, r54				# 20366
	fsub	r10, r48, r10				# 20353
	sw		r10, 1(r62)				# 20353
	lw		r13, 2(r57)				# 20458
	lw		r10, 0(r51)				# 20458
	fmul	r26, r13, r10				# 20458
	lw		r10, 0(r57)				# 20483
	lw		r13, 2(r51)				# 20483
	fmul	r10, r10, r13				# 20458
	fadd	r10, r26, r10				# 20451
	fdiv	r10, r10, r54				# 20445
	fsub	r10, r37, r10				# 20432
	sw		r10, 2(r62)				# 20353
	lw		r13, 1(r57)				# 20537
	lw		r10, 0(r51)				# 20537
	fmul	r13, r13, r10				# 20537
	lw		r10, 0(r57)				# 20562
	lw		r51, 1(r51)				# 20562
	fmul	r10, r10, r51				# 20537
	fadd	r10, r13, r10				# 20530
	fdiv	r10, r10, r54				# 20524
	fsub	r10, r7, r10				# 20511
	sw		r10, 3(r62)				# 20511
	fcmp	r9, r46
	beq		.b33804				# 3126
.b33806:
	addis	r10, r0, 16256				# 20709
	fdiv	r9, r10, r9				# 20696
	sw		r9, 4(r62)				# 20696
.b33804:
	swx		r62, r28, r41				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b33742				# 20796
	b		.b33740
.b33802:
	sw		r48, 1(r62)				# 20601
	sw		r37, 2(r62)				# 20601
	sw		r7, 3(r62)				# 20643
	fcmp	r9, r46
	beq		.b33804				# 3126
	b		.b33806
.b33799:
	b		.b33798				# 14482
.b33793:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	addi	r51, r0, 0				# 19730
	sw		r51, 0(r9)				# 19730
	sw		r51, 1(r9)				# 19730
	sw		r51, 2(r9)				# 19730
	sw		r51, 3(r9)				# 19730
	lw		r62, 0(r57)				# 19764
	lw		r13, 4(r13)				# 3734
	lw		r10, 0(r13)				# 19764
	fmul	r54, r62, r10				# 19764
	lw		r10, 1(r57)				# 19790
	lw		r62, 1(r13)				# 19790
	fmul	r62, r10, r62				# 19764
	fadd	r54, r54, r62				# 19764
	lw		r10, 2(r57)				# 19816
	lw		r62, 2(r13)				# 19816
	fmul	r62, r10, r62				# 19764
	fadd	r10, r54, r62				# 19752
	fcmp	r10, r51
	ble		.b33796				# 3156
.b33797:
	addis	r62, r0, 49024				# 19882
	fdiv	r62, r62, r10				# 19869
	sw		r62, 0(r9)				# 19869
	lw		r62, 0(r13)				# 19916
	fdiv	r62, r62, r10				# 19910
	fneg	r62, r62				# 19897
	sw		r62, 1(r9)				# 19869
	lw		r62, 1(r13)				# 19958
	fdiv	r62, r62, r10				# 19952
	fneg	r62, r62				# 19939
	sw		r62, 2(r9)				# 19869
	lw		r62, 2(r13)				# 20000
	fdiv	r62, r62, r10				# 19994
	fneg	r62, r62				# 19981
	sw		r62, 3(r9)				# 19981
.b33795:
	swx		r9, r28, r41				# 21074
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b33742				# 20796
	b		.b33740
.b33796:
	sw		r51, 0(r9)				# 20032
	b		.b33795				# 20032
.b33745:
	mv		r10, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b33749:
	addi	r62, r0, 0				# 19127
	swx		r62, r9, r10				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b33749				# 19127
.b33747:
	lw		r9, 0(r57)				# 19153
	addi	r51, r0, 0				# 19150
	fcmp	r9, r51
	beq		.b33752				# 3126
.b33753:
	lw		r62, 6(r13)				# 3372
	fcmp	r51, r9
	ble		.b33755				# 3186
.b33756:
	addi	r9, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b33758				# 765
.b33759:
	cmpi	r9, 0
	beq		.b33760				# 775
.b33761:
	addi	r9, r0, 0				# 775
	lw		r62, 4(r13)				# 3734
	lw		r62, 0(r62)				# 19222
	fneg	r62, r62				# 3025
.b33762:
	sw		r62, 0(r10)				# 19209
	addis	r9, r0, 16256				# 19302
	lw		r62, 0(r57)				# 19302
	fdiv	r9, r9, r62				# 19289
	sw		r9, 1(r10)				# 19289
	lw		r62, 1(r57)				# 19327
	fcmp	r62, r51
	beq		.b33766				# 3126
.b33767:
	lw		r9, 6(r13)				# 3372
	fcmp	r51, r62
	ble		.b33769				# 3186
.b33770:
	addi	r62, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b33772				# 765
.b33773:
	cmpi	r62, 0
	beq		.b33774				# 775
.b33775:
	addi	r62, r0, 0				# 775
	lw		r9, 4(r13)				# 3920
	lw		r9, 1(r9)				# 19395
	fneg	r9, r9				# 3025
.b33776:
	sw		r9, 2(r10)				# 19382
	addis	r9, r0, 16256				# 19475
	lw		r62, 1(r57)				# 19475
	fdiv	r9, r9, r62				# 19462
	sw		r9, 3(r10)				# 19462
	lw		r62, 2(r57)				# 19500
	fcmp	r62, r51
	beq		.b33780				# 3126
.b33781:
	lw		r9, 6(r13)				# 3372
	fcmp	r51, r62
	ble		.b33783				# 3186
.b33784:
	addi	r62, r0, 1				# 3186
	cmpi	r9, 0
	beq		.b33786				# 765
.b33787:
	cmpi	r62, 0
	beq		.b33788				# 775
.b33789:
	addi	r62, r0, 0				# 775
	lw		r9, 4(r13)				# 4105
	lw		r9, 2(r9)				# 19568
	fneg	r9, r9				# 3025
.b33790:
	sw		r9, 4(r10)				# 19555
	addis	r9, r0, 16256				# 19648
	lw		r62, 2(r57)				# 19648
	fdiv	r9, r9, r62				# 19635
	sw		r9, 5(r10)				# 19635
.b33779:
	swx		r10, r28, r41				# 20985
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b33742				# 20796
	b		.b33740
.b33788:
	addi	r62, r0, 1				# 775
	lw		r9, 4(r13)				# 4105
	lw		r9, 2(r9)				# 19568
	b		.b33790				# 918
.b33786:
	lw		r9, 4(r13)				# 4105
	lw		r9, 2(r9)				# 19568
	cmpi	r62, 0
	beq		.b33791				# 905
.b33792:
	b		.b33790				# 918
.b33791:
	fneg	r9, r9				# 3025
	b		.b33790				# 3025
.b33783:
	addi	r62, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b33786				# 765
	b		.b33787
.b33780:
	sw		r51, 5(r10)				# 19525
	b		.b33779				# 19525
.b33774:
	addi	r62, r0, 1				# 775
	lw		r9, 4(r13)				# 3920
	lw		r9, 1(r9)				# 19395
	b		.b33776				# 918
.b33772:
	lw		r9, 4(r13)				# 3920
	lw		r9, 1(r9)				# 19395
	cmpi	r62, 0
	beq		.b33777				# 905
.b33778:
	b		.b33776				# 918
.b33777:
	fneg	r9, r9				# 3025
	b		.b33776				# 3025
.b33769:
	addi	r62, r0, 0				# 3186
	cmpi	r9, 0
	beq		.b33772				# 765
	b		.b33773
.b33766:
	sw		r51, 3(r10)				# 19352
	lw		r62, 2(r57)				# 19500
	fcmp	r62, r51
	beq		.b33780				# 3126
	b		.b33781
.b33760:
	addi	r9, r0, 1				# 775
	lw		r62, 4(r13)				# 3734
	lw		r62, 0(r62)				# 19222
	b		.b33762				# 918
.b33758:
	lw		r62, 4(r13)				# 3734
	lw		r62, 0(r62)				# 19222
	cmpi	r9, 0
	beq		.b33763				# 905
.b33764:
	b		.b33762				# 918
.b33763:
	fneg	r62, r62				# 3025
	b		.b33762				# 3025
.b33755:
	addi	r9, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b33758				# 765
	b		.b33759
.b33752:
	sw		r51, 1(r10)				# 19179
	lw		r62, 1(r57)				# 19327
	fcmp	r62, r51
	beq		.b33766				# 3126
	b		.b33767
.b33730:
	addi	r51, r51, -5				# 1017
	b		.b33729				# 1017
.b33727:
	addi	r9, r9, -5				# 1017
	cmpi	r62, 0
	bge		.b33716				# 43977
	b		.b33714
.b33708:
	swx		r15, r62, r61				# 44623
	addi	r62, r62, 1				# 44623
	cmp		r62, r51
	ble		.b33708				# 44623
	b		.b33706
.b33696:
	swx		r62, r61, r9				# 44623
	addi	r61, r61, 1				# 44623
	cmp		r61, r15
	ble		.b33696				# 44623
	b		.b33694
.b33619:
	addi	r9, r0, 0				# 13110
	b		T.loop33675				# 0
.b33671:
	addi	r28, r28, 1				# 12563
	cmpi	r28, 60
	bge		.b33619				# 12512
	b		.b33622
.b33661:
	cmpi	r9, 0
	beq		.b33664				# 12335
.b33665:
	addi	r10, r0, 0				# 12335
.b33663:
	lw		r9, 0(r15)				# 1729
	fmul	r9, r9, r9				# 1729
	lw		r61, 1(r15)				# 1743
	fmul	r61, r61, r61				# 1729
	fadd	r9, r9, r61				# 1729
	lw		r61, 2(r15)				# 1757
	fmul	r61, r61, r61				# 1729
	fadd	r9, r9, r61				# 1723
	fsqrt	r9, r9				# 227
	fcmp	r9, r25
	beq		.b33667				# 3126
.b33668:
	cmpi	r10, 0
	beq		.b33669				# 1810
.b33670:
	addis	r61, r0, 49024				# 1822
	fdiv	r61, r61, r9				# 1822
.b33666:
	lw		r9, 0(r15)				# 1860
	fmul	r9, r9, r61				# 1851
	sw		r9, 0(r15)				# 1851
	lw		r9, 1(r15)				# 1884
	fmul	r9, r9, r61				# 1875
	sw		r9, 1(r15)				# 1851
	lw		r9, 2(r15)				# 1908
	fmul	r9, r9, r61				# 1899
	sw		r9, 2(r15)				# 1899
	cmpi	r37, 0
	beq		.b33671				# 12371
	b		.b33673
.b33669:
	addis	r61, r0, 16256				# 1837
	fdiv	r61, r61, r9				# 1837
	b		.b33666				# 1837
.b33667:
	addis	r61, r0, 16256				# 1801
	b		.b33666				# 1801
.b33664:
	addi	r10, r0, 1				# 12335
	b		.b33663				# 12335
.b33635:
	lw		r9, 0(r15)				# 12053
	fcmp	r9, r25
	beq		.b33638				# 3126
.b33639:
	fcmp	r9, r25
	beq		.b33641				# 3126
.b33642:
	fcmp	r9, r25
	ble		.b33643				# 3156
.b33644:
	addis	r61, r0, 16256				# 856
.b33640:
	fmul	r9, r9, r9				# 12112
	fdiv	r9, r61, r9				# 12112
	sw		r9, 0(r15)				# 12074
	lw		r9, 1(r15)				# 12132
	fcmp	r9, r25
	beq		.b33646				# 3126
.b33647:
	fcmp	r9, r25
	beq		.b33649				# 3126
.b33650:
	fcmp	r9, r25
	ble		.b33651				# 3156
.b33652:
	addis	r61, r0, 16256				# 856
.b33648:
	fmul	r9, r9, r9				# 12191
	fdiv	r9, r61, r9				# 12191
	sw		r9, 1(r15)				# 12153
	lw		r61, 2(r15)				# 12210
	fcmp	r61, r25
	beq		.b33654				# 3126
.b33655:
	fcmp	r61, r25
	beq		.b33657				# 3126
.b33658:
	fcmp	r61, r25
	ble		.b33659				# 3156
.b33660:
	addis	r9, r0, 16256				# 856
.b33656:
	fmul	r61, r61, r61				# 12269
	fdiv	r9, r9, r61				# 12269
	sw		r9, 2(r15)				# 12231
	cmpi	r37, 0
	beq		.b33671				# 12371
	b		.b33673
.b33659:
	addis	r9, r0, 49024				# 868
	b		.b33656				# 868
.b33657:
	addi	r9, r0, 0				# 828
	b		.b33656				# 828
.b33654:
	addi	r9, r0, 0				# 12260
	sw		r9, 2(r15)				# 12231
	cmpi	r37, 0
	beq		.b33671				# 12371
	b		.b33673
.b33651:
	addis	r61, r0, 49024				# 868
	b		.b33648				# 868
.b33649:
	addi	r61, r0, 0				# 828
	b		.b33648				# 828
.b33646:
	addi	r9, r0, 0				# 12182
	sw		r9, 1(r15)				# 12153
	lw		r61, 2(r15)				# 12210
	fcmp	r61, r25
	beq		.b33654				# 3126
	b		.b33655
.b33643:
	addis	r61, r0, 49024				# 868
	b		.b33640				# 868
.b33641:
	addi	r61, r0, 0				# 828
	b		.b33640				# 828
.b33638:
	addi	r9, r0, 0				# 12103
	sw		r9, 0(r15)				# 12074
	lw		r9, 1(r15)				# 12132
	fcmp	r9, r25
	beq		.b33646				# 3126
	b		.b33647
.b33632:
	addi	r61, r0, 1				# 11723
	b		.b33631				# 11723
.b33628:
	cmpi	r46, 2
	beq		.b33632				# 11706
	b		.b33633
.b33626:
	addi	r9, r0, 0				# 3186
	b		.b33625				# 3186
	# main program end
_min_caml_end:
	flush
	halt
	halt
	halt
# === .data section ===
	.data
n_objects.2512:
	.size 1
dummy.2515:
	.size 1
Tt267.2522:
	.size 1
objects.2523:
	.size 60
screen.2526:
	.size 3
viewpoint.2529:
	.size 3
light.2532:
	.size 3
beam.2535:
	.size 1
Ta280.2540:
	.size 1
and_net.2541:
	.size 50
Ta283.2545:
	.size 1
Ta285.2546:
	.size 1
or_net.2547:
	.size 1
solver_dist.2550:
	.size 1
intsec_rectside.2553:
	.size 1
tmin.2556:
	.size 1
intersection_point.2559:
	.size 3
intersected_object_id.2562:
	.size 1
nvector.2565:
	.size 3
texture_color.2568:
	.size 3
diffuse_ray.2571:
	.size 3
rgb.2574:
	.size 3
image_size.2577:
	.size 2
image_center.2580:
	.size 2
scan_pitch.2583:
	.size 1
startp.2586:
	.size 3
startp_fast.2589:
	.size 3
screenx_dir.2592:
	.size 3
screeny_dir.2595:
	.size 3
screenz_dir.2598:
	.size 3
ptrace_dirvec.2601:
	.size 3
dummyf.2604:
	.size 1
dummyff.2606:
	.size 1
Tt326.2608:
	.size 1
dummy_vs.2609:
	.size 1
dirvecs.2611:
	.size 5
dummyf2.2614:
	.size 1
v3.2617:
	.size 3
consts.2619:
	.size 60
dummyf3.2623:
	.size 1
dummyff3.2625:
	.size 1
dummydv.2626:
	.size 1
Tt339.2630:
	.size 1
reflections.2631:
	.size 180
n_reflections.2634:
	.size 1