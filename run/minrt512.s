	.text
	sub		r0, r0, r0
	b		_min_caml_start
	# read_net_item.2806
read_net_item.2806:
.Entry@read_net_item.2806:
	sw		r1, 0(r3)				# 0
	addi	r28, r0, -1				# 1683
	in		r9				# 1683
	sw		r9, -1(r3)				# 1683
	cmpi	r9, -1
	beq		.b47457				# 12740
.b47458:
	addi	r1, r1, 1				# 12806
	mflr	r63
	sw		r63, -2(r3)
	addi	r3, r3, -3
	bl		read_net_item.2806
	addi	r3, r3, 3
	lw		r63, -2(r3)
	mtlr	r63				# 12798
	lw		r9, -1(r3)				# 12841
	lw		r61, 0(r3)				# 12841
	swx		r9, r61, r2				# 12841
	blr				# 12861
.b47457:
	addi	r9, r1, 1				# 12758
	mv		r2, r4
	add		r4, r4, r9				# 12758
	addi	r61, r9, -1				# 12758
	addi	r9, r0, 0				# 12758
	cmp		r9, r61
	ble		.b47461				# 12758
.b47459:
	blr				# 12758
.b47461:
	swx		r28, r9, r2				# 12758
	addi	r9, r9, 1				# 12758
	cmp		r9, r61
	ble		.b47461				# 12758
	b		.b47459
	# read_or_network.2808
read_or_network.2808:
.Entry@read_or_network.2808:
	sw		r1, 0(r3)				# 0
	addi	r1, r0, 0				# 12903
	mflr	r63
	sw		r63, -1(r3)
	addi	r3, r3, -2
	bl		read_net_item.2806
	addi	r3, r3, 2
	lw		r63, -1(r3)
	mtlr	r63				# 12903
	mv		r9, r2				# 12903
	sw		r9, -1(r3)				# 12903
	lw		r61, 0(r9)				# 12934
	cmpi	r61, -1
	beq		.b47463				# 12934
.b47464:
	lw		r9, 0(r3)				# 13006
	addi	r1, r9, 1				# 13006
	mflr	r63
	sw		r63, -2(r3)
	addi	r3, r3, -3
	bl		read_or_network.2808
	addi	r3, r3, 3
	lw		r63, -2(r3)
	mtlr	r63				# 12998
	lw		r61, 0(r3)				# 13043
	lw		r9, -1(r3)				# 13043
	swx		r9, r61, r2				# 13043
	blr				# 13062
.b47463:
	lw		r61, 0(r3)				# 12959
	addi	r61, r61, 1				# 12959
	mv		r2, r4
	add		r4, r4, r61				# 12959
	addi	r28, r61, -1				# 12959
	addi	r61, r0, 0				# 12959
	cmp		r61, r28
	ble		.b47467				# 12959
.b47465:
	blr				# 12959
.b47467:
	swx		r9, r61, r2				# 12959
	addi	r61, r61, 1				# 12959
	cmp		r61, r28
	ble		.b47467				# 12959
	b		.b47465
	# trace_diffuse_ray.3007
trace_diffuse_ray.3007:
.Entry@trace_diffuse_ray.3007:
	addi	r46, r0, 0				# 28622
	lli		r13, objects.2536				# 28622
	lli		r26, light.2545				# 28622
	addis	r48, r0, 17279				# 28622
	lli		r7, and_net.2554				# 28622
	lli		r61, or_net.2560				# 28622
	lli		r57, solver_dist.2563				# 28622
	lli		r19, intsec_rectside.2566				# 28622
	addis	r9, r0, 20078
	ori		r9, r9, 27432				# 28622
	lli		r23, tmin.2569				# 28622
	lli		r37, intersection_point.2572				# 28622
	lli		r29, intersected_object_id.2575				# 28622
	lli		r41, nvector.2578				# 28622
	lli		r54, texture_color.2581				# 28622
	lli		r10, diffuse_ray.2584				# 28622
	lli		r39, startp_fast.2602				# 28622
	lli		r25, v3.2630				# 28622
	lli		r51, consts.2632				# 28622
	sw		r9, 0(r23)				# 28622
	lw		r30, 0(r61)				# 28652
	addi	r61, r0, 0				# 28095
	lwx		r14, r30, r61				# 28095
	lw		r9, 0(r14)				# 28128
	cmpi	r9, -1
	beq		.b47469				# 28164
.b47472:
	cmpi	r9, 99
	beq		.b47474				# 28213
.b47475:
	lwx		r15, r13, r9				# 18636
	lw		r28, 10(r15)				# 6561
	lw		r42, 0(r28)				# 18698
	lw		r36, 1(r28)				# 18723
	lw		r47, 2(r28)				# 18748
	lw		r12, 1(r1)				# 8141
	lwx		r33, r12, r9				# 18807
	lw		r9, 1(r15)				# 2994
	cmpi	r9, 1
	beq		.b47581				# 18869
.b47582:
	cmpi	r9, 2
	beq		.b47607				# 18950
.b47608:
	lw		r17, 0(r33)				# 18204
	fcmp	r17, r46
	beq		.b47473				# 3128
.b47612:
	lw		r62, 1(r33)				# 18278
	lw		r9, 2(r33)				# 18298
	fmul	r9, r9, r36				# 18278
	faddmul	r62, r62, r42, r9				# 18278
	lw		r9, 3(r33)				# 18318
	faddmul	r9, r9, r47, r62				# 18265
	lw		r62, 3(r28)				# 18342
	fmul	r28, r9, r9				# 18377
	fmul	r62, r17, r62				# 18377
	fsub	r28, r28, r62				# 18369
	fcmp	r28, r46
	ble		.b47473				# 3158
.b47614:
	lw		r62, 6(r15)				# 3372
	cmpi	r62, 0
	beq		.b47616				# 18435
.b47617:
	fsqrt	r28, r28				# 227
	fadd	r9, r9, r28				# 18476
	lw		r28, 4(r33)				# 18476
	fmul	r9, r9, r28				# 18457
	sw		r9, 0(r57)				# 18457
	lw		r28, 0(r57)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r28
	ble		.b47473				# 3098
.b47621:
	addi	r28, r0, 1				# 27829
	lwx		r9, r14, r28				# 27829
	cmpi	r9, -1
	beq		.b47473				# 27860
.b47624:
	lwx		r33, r7, r9				# 27885
	addi	r62, r0, 0				# 26885
	lw		r36, 0(r1)				# 8078
	lwx		r42, r33, r62				# 26915
	cmpi	r42, -1
	beq		.b47625				# 26952
.b47628:
	lwx		r50, r13, r42				# 18636
	lw		r27, 10(r50)				# 6561
	lw		r17, 0(r27)				# 18698
	lw		r35, 1(r27)				# 18723
	lw		r15, 2(r27)				# 18748
	lwx		r59, r12, r42				# 18807
	lw		r9, 1(r50)				# 2994
	cmpi	r9, 1
	beq		.b47630				# 18869
.b47631:
	cmpi	r9, 2
	beq		.b47656				# 18950
.b47657:
	lw		r9, 0(r59)				# 18204
	fcmp	r9, r46
	beq		.b47667				# 3128
.b47661:
	lw		r56, 1(r59)				# 18278
	lw		r53, 2(r59)				# 18298
	fmul	r53, r53, r35				# 18278
	faddmul	r53, r56, r17, r53				# 18278
	lw		r17, 3(r59)				# 18318
	faddmul	r17, r17, r15, r53				# 18265
	lw		r15, 3(r27)				# 18342
	fmul	r53, r17, r17				# 18377
	fmul	r9, r9, r15				# 18377
	fsub	r9, r53, r9				# 18369
	fcmp	r9, r46
	ble		.b47667				# 3158
.b47663:
	lw		r15, 6(r50)				# 3372
	cmpi	r15, 0
	beq		.b47665				# 18435
.b47666:
	fsqrt	r9, r9				# 227
	fadd	r9, r17, r9				# 18476
	lw		r15, 4(r59)				# 18476
	fmul	r9, r9, r15				# 18457
	sw		r9, 0(r57)				# 18457
	addi	r27, r0, 1				# 18580
	lw		r9, 0(r57)				# 27058
	fcmp	r9, r46
	ble		.b47671				# 3098
.b47673:
	lw		r15, 0(r23)				# 27125
	fcmp	r15, r9
	ble		.b47671				# 3098
.b47675:
	addis	r15, r0, 15395
	ori		r15, r15, 55050				# 27169
	fadd	r47, r9, r15				# 27161
	lw		r9, 0(r36)				# 27198
	lw		r15, 0(r39)				# 27198
	faddmul	r56, r9, r47, r15				# 27189
	lw		r15, 1(r36)				# 27247
	lw		r9, 1(r39)				# 27247
	faddmul	r53, r15, r47, r9				# 27238
	lw		r15, 2(r36)				# 27296
	lw		r9, 2(r39)				# 27296
	faddmul	r59, r15, r47, r9				# 27287
	addi	r15, r0, 0				# 23025
	lwx		r9, r33, r15				# 23025
	cmpi	r9, -1
	beq		.b47725				# 23052
.b47679:
	lwx		r44, r13, r9				# 23095
	lw		r9, 5(r44)				# 4475
	lw		r17, 0(r9)				# 22709
	fsub	r20, r56, r17				# 22700
	lw		r17, 1(r9)				# 22741
	fsub	r8, r53, r17				# 22732
	lw		r9, 2(r9)				# 22773
	fsub	r38, r59, r9				# 22764
	lw		r17, 1(r44)				# 2994
	cmpi	r17, 1
	beq		.b47681				# 22824
.b47682:
	cmpi	r17, 2
	beq		.b47694				# 22882
.b47695:
	fmul	r50, r20, r20				# 14374
	lw		r49, 4(r44)				# 3734
	lw		r9, 0(r49)				# 14374
	fmul	r35, r8, r8				# 14400
	lw		r36, 1(r49)				# 14400
	fmul	r36, r35, r36				# 14374
	faddmul	r36, r50, r9, r36				# 14374
	fmul	r9, r38, r38				# 14426
	lw		r50, 2(r49)				# 14426
	faddmul	r9, r9, r50, r36				# 14354
	lw		r50, 3(r44)				# 3553
	cmpi	r50, 0
	beq		.b47707				# 14456
.b47708:
	fmul	r50, r8, r38				# 14522
	lw		r35, 9(r44)				# 5989
	lw		r36, 0(r35)				# 14522
	faddmul	r50, r50, r36, r9				# 14503
	fmul	r9, r38, r20				# 14556
	lw		r36, 1(r35)				# 14556
	faddmul	r36, r9, r36, r50				# 14503
	fmul	r9, r20, r8				# 14590
	lw		r50, 2(r35)				# 14590
	faddmul	r9, r9, r50, r36				# 14503
	cmpi	r17, 3
	beq		.b47710				# 22583
.b47711:
	lw		r17, 6(r44)				# 3372
	fcmp	r46, r9
	ble		.b47713				# 3188
.b47714:
	addi	r9, r0, 1				# 3188
	cmpi	r17, 0
	beq		.b47716				# 765
.b47717:
	cmpi	r9, 0
	beq		.b47722				# 775
.b47671:
	addi	r62, r62, 1				# 27573
	lw		r36, 0(r1)				# 8078
	lwx		r42, r33, r62				# 26915
	cmpi	r42, -1
	beq		.b47625				# 26952
	b		.b47628
.b47625:
	addi	r28, r28, 1				# 27971
	lwx		r9, r14, r28				# 27829
	cmpi	r9, -1
	beq		.b47473				# 27860
	b		.b47624
.b47473:
	addi	r61, r61, 1				# 28519
	lwx		r14, r30, r61				# 28095
	lw		r9, 0(r14)				# 28128
	cmpi	r9, -1
	beq		.b47469				# 28164
	b		.b47472
.b47469:
	lw		r61, 0(r23)				# 28698
	addis	r39, r0, 48588
	ori		r39, r39, 52429				# 28725
	fcmp	r61, r39
	ble		.b47726				# 3098
.b47727:
	addis	r9, r0, 19646
	ori		r9, r9, 48160				# 28751
	fcmp	r9, r61
	ble		.b47728				# 3098
.b47729:
	lw		r9, 0(r29)				# 35140
	lwx		r23, r13, r9				# 35130
	lw		r61, 0(r1)				# 8078
	lw		r9, 1(r23)				# 2994
	cmpi	r9, 1
	beq		.b47731				# 29818
.b47732:
	cmpi	r9, 2
	beq		.b47738				# 29873
.b47739:
	lw		r9, 0(r37)				# 29136
	lw		r28, 5(r23)				# 4475
	lw		r61, 0(r28)				# 29136
	fsub	r19, r9, r61				# 29127
	lw		r61, 1(r37)				# 29188
	lw		r9, 1(r28)				# 29188
	fsub	r15, r61, r9				# 29179
	lw		r9, 2(r37)				# 29240
	lw		r61, 2(r28)				# 29240
	fsub	r9, r9, r61				# 29231
	lw		r61, 4(r23)				# 3734
	lw		r28, 0(r61)				# 29293
	fmul	r62, r19, r28				# 29284
	lw		r28, 1(r61)				# 29325
	fmul	r28, r15, r28				# 29316
	lw		r61, 2(r61)				# 29357
	fmul	r29, r9, r61				# 29348
	lw		r61, 3(r23)				# 3553
	cmpi	r61, 0
	beq		.b47741				# 29381
.b47742:
	lw		r50, 9(r23)				# 6369
	lw		r17, 2(r50)				# 29517
	lw		r14, 1(r50)				# 29539
	fmul	r61, r9, r14				# 29517
	faddmul	r61, r15, r17, r61				# 29510
	fhalf	r61, r61				# 29504
	fadd	r61, r62, r61				# 29489
	sw		r61, 0(r41)				# 29489
	lw		r61, 0(r50)				# 29614
	fmul	r9, r9, r61				# 29592
	faddmul	r9, r19, r17, r9				# 29585
	fhalf	r9, r9				# 29579
	fadd	r9, r28, r9				# 29564
	sw		r9, 1(r41)				# 29489
	fmul	r9, r15, r61				# 29667
	faddmul	r9, r19, r14, r9				# 29660
	fhalf	r9, r9				# 29654
	fadd	r9, r29, r9				# 29639
	sw		r9, 2(r41)				# 29639
.b47740:
	lw		r62, 6(r23)				# 3372
	lw		r9, 0(r41)				# 1729
	lw		r15, 1(r41)				# 1743
	fmul	r61, r15, r15				# 1729
	faddmul	r61, r9, r9, r61				# 1729
	lw		r19, 2(r41)				# 1757
	faddmul	r61, r19, r19, r61				# 1723
	fsqrt	r28, r61				# 227
	fcmp	r28, r46
	beq		.b47744				# 3128
.b47745:
	cmpi	r62, 0
	beq		.b47746				# 1810
.b47747:
	addis	r61, r0, 49024				# 1822
	fdiv	r61, r61, r28				# 1822
.b47743:
	fmul	r9, r9, r61				# 1851
	sw		r9, 0(r41)				# 1851
	fmul	r9, r15, r61				# 1875
	sw		r9, 1(r41)				# 1851
	fmul	r9, r19, r61				# 1899
	sw		r9, 2(r41)				# 1899
.b47730:
	lw		r61, 0(r23)				# 2815
	lw		r28, 8(r23)				# 5421
	lw		r9, 0(r28)				# 30014
	sw		r9, 0(r54)				# 30014
	lw		r9, 1(r28)				# 30052
	sw		r9, 1(r54)				# 30014
	lw		r9, 2(r28)				# 30092
	sw		r9, 2(r54)				# 30014
	cmpi	r61, 1
	beq		.b47749				# 30131
.b47750:
	cmpi	r61, 2
	beq		.b47764				# 30575
.b47765:
	cmpi	r61, 3
	beq		.b47766				# 30745
.b47767:
	cmpi	r61, 4
	beq		.b47768				# 31084
.b47748:
	addi	r62, r0, 0				# 24323
	lwx		r48, r30, r62				# 24323
	lw		r15, 0(r48)				# 24355
	cmpi	r15, -1
	beq		.b48066				# 24391
.b47782:
	cmpi	r15, 99
	beq		.b47950				# 24451
.b47785:
	lwx		r28, r13, r15				# 17557
	lw		r29, 0(r37)				# 17595
	lw		r9, 5(r28)				# 4475
	lw		r61, 0(r9)				# 17595
	fsub	r33, r29, r61				# 17586
	lw		r14, 1(r37)				# 17632
	lw		r61, 1(r9)				# 17632
	fsub	r12, r14, r61				# 17623
	lw		r19, 2(r37)				# 17669
	lw		r9, 2(r9)				# 17669
	fsub	r56, r19, r9				# 17660
	lwx		r42, r51, r15				# 17731
	lw		r15, 1(r28)				# 2994
	cmpi	r15, 1
	beq		.b47787				# 17793
.b47788:
	cmpi	r15, 2
	beq		.b47813				# 17874
.b47814:
	lw		r17, 0(r42)				# 17054
	fcmp	r17, r46
	beq		.b47949				# 3128
.b47818:
	lw		r9, 1(r42)				# 17128
	lw		r61, 2(r42)				# 17148
	fmul	r61, r61, r12				# 17128
	faddmul	r61, r9, r33, r61				# 17128
	lw		r9, 3(r42)				# 17168
	faddmul	r61, r9, r56, r61				# 17115
	fmul	r50, r33, r33				# 14374
	lw		r53, 4(r28)				# 3734
	lw		r1, 0(r53)				# 14374
	fmul	r9, r12, r12				# 14400
	lw		r36, 1(r53)				# 14400
	fmul	r9, r9, r36				# 14374
	faddmul	r50, r50, r1, r9				# 14374
	fmul	r9, r56, r56				# 14426
	lw		r53, 2(r53)				# 14426
	faddmul	r9, r9, r53, r50				# 14354
	lw		r50, 3(r28)				# 3553
	cmpi	r50, 0
	beq		.b47820				# 14456
.b47821:
	fmul	r50, r12, r56				# 14522
	lw		r1, 9(r28)				# 5989
	lw		r53, 0(r1)				# 14522
	faddmul	r53, r50, r53, r9				# 14503
	fmul	r50, r56, r33				# 14556
	lw		r9, 1(r1)				# 14556
	faddmul	r53, r50, r9, r53				# 14503
	fmul	r9, r33, r12				# 14590
	lw		r50, 2(r1)				# 14590
	faddmul	r9, r9, r50, r53				# 14503
	cmpi	r15, 3
	beq		.b47823				# 17239
.b47824:
.b47822:
	fmul	r15, r61, r61				# 17295
	fmul	r9, r17, r9				# 17295
	fsub	r15, r15, r9				# 17287
	fcmp	r15, r46
	ble		.b47949				# 3158
.b47826:
	lw		r9, 6(r28)				# 3372
	cmpi	r9, 0
	beq		.b47828				# 17353
.b47829:
	fsqrt	r9, r15				# 227
	fadd	r9, r61, r9				# 17394
	lw		r61, 4(r42)				# 17394
	fmul	r9, r9, r61				# 17375
	sw		r9, 0(r57)				# 17375
	lw		r9, 0(r57)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
.b47833:
	addi	r15, r0, 1				# 24006
	lwx		r9, r48, r15				# 24006
	cmpi	r9, -1
	beq		.b47949				# 24037
.b47837:
	lwx		r53, r7, r9				# 24078
	addi	r9, r0, 0				# 23266
	lwx		r28, r53, r9				# 23266
	cmpi	r28, -1
	beq		.b47945				# 23266
.b47841:
	lwx		r56, r13, r28				# 17557
	lw		r17, 5(r56)				# 4475
	lw		r61, 0(r17)				# 17595
	fsub	r12, r29, r61				# 17586
	lw		r61, 1(r17)				# 17632
	fsub	r36, r14, r61				# 17623
	lw		r61, 2(r17)				# 17669
	fsub	r1, r19, r61				# 17660
	lwx		r17, r51, r28				# 17731
	lw		r42, 1(r56)				# 2994
	cmpi	r42, 1
	beq		.b47843				# 17793
.b47844:
	cmpi	r42, 2
	beq		.b47869				# 17874
.b47870:
	lw		r59, 0(r17)				# 17054
	fcmp	r59, r46
	beq		.b47873				# 3128
.b47874:
	lw		r61, 1(r17)				# 17128
	lw		r28, 2(r17)				# 17148
	fmul	r28, r28, r36				# 17128
	faddmul	r61, r61, r12, r28				# 17128
	lw		r28, 3(r17)				# 17168
	faddmul	r50, r28, r1, r61				# 17115
	fmul	r28, r12, r12				# 14374
	lw		r47, 4(r56)				# 3734
	lw		r27, 0(r47)				# 14374
	fmul	r33, r36, r36				# 14400
	lw		r61, 1(r47)				# 14400
	fmul	r61, r33, r61				# 14374
	faddmul	r28, r28, r27, r61				# 14374
	fmul	r33, r1, r1				# 14426
	lw		r61, 2(r47)				# 14426
	faddmul	r61, r33, r61, r28				# 14354
	lw		r28, 3(r56)				# 3553
	cmpi	r28, 0
	beq		.b47876				# 14456
.b47877:
	fmul	r28, r36, r1				# 14522
	lw		r33, 9(r56)				# 5989
	lw		r27, 0(r33)				# 14522
	faddmul	r28, r28, r27, r61				# 14503
	fmul	r61, r1, r12				# 14556
	lw		r1, 1(r33)				# 14556
	faddmul	r1, r61, r1, r28				# 14503
	fmul	r61, r12, r36				# 14590
	lw		r28, 2(r33)				# 14590
	faddmul	r61, r61, r28, r1				# 14503
	cmpi	r42, 3
	beq		.b47879				# 17239
.b47880:
.b47878:
	fmul	r28, r50, r50				# 17295
	fmul	r61, r59, r61				# 17295
	fsub	r28, r28, r61				# 17287
	fcmp	r28, r46
	ble		.b47881				# 3158
.b47882:
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47884				# 17353
.b47885:
	fsqrt	r61, r28				# 227
	fadd	r61, r50, r61				# 17394
	lw		r28, 4(r17)				# 17394
	fmul	r61, r61, r28				# 17375
	sw		r61, 0(r57)				# 17375
	lw		r28, 0(r57)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r28
	ble		.b47891				# 3098
.b47892:
	addis	r61, r0, 15395
	ori		r61, r61, 55050				# 23524
	fadd	r28, r28, r61				# 23516
	lw		r61, 0(r26)				# 23554
	faddmul	r1, r61, r28, r29				# 23545
	lw		r61, 1(r26)				# 23613
	faddmul	r27, r61, r28, r14				# 23604
	lw		r61, 2(r26)				# 23672
	faddmul	r47, r61, r28, r19				# 23663
	addi	r28, r0, 0				# 23025
	lwx		r61, r53, r28				# 23025
	cmpi	r61, -1
	beq		.b47950				# 23052
.b47898:
	lwx		r12, r13, r61				# 23095
	lw		r17, 5(r12)				# 4475
	lw		r61, 0(r17)				# 22709
	fsub	r33, r1, r61				# 22700
	lw		r61, 1(r17)				# 22741
	fsub	r50, r27, r61				# 22732
	lw		r61, 2(r17)				# 22773
	fsub	r56, r47, r61				# 22764
	lw		r42, 1(r12)				# 2994
	cmpi	r42, 1
	beq		.b47900				# 22824
.b47901:
	cmpi	r42, 2
	beq		.b47913				# 22882
.b47914:
	fmul	r35, r33, r33				# 14374
	lw		r59, 4(r12)				# 3734
	lw		r17, 0(r59)				# 14374
	fmul	r36, r50, r50				# 14400
	lw		r61, 1(r59)				# 14400
	fmul	r61, r36, r61				# 14374
	faddmul	r17, r35, r17, r61				# 14374
	fmul	r61, r56, r56				# 14426
	lw		r36, 2(r59)				# 14426
	faddmul	r61, r61, r36, r17				# 14354
	lw		r17, 3(r12)				# 3553
	cmpi	r17, 0
	beq		.b47926				# 14456
.b47927:
	fmul	r59, r50, r56				# 14522
	lw		r17, 9(r12)				# 5989
	lw		r36, 0(r17)				# 14522
	faddmul	r61, r59, r36, r61				# 14503
	fmul	r56, r56, r33				# 14556
	lw		r36, 1(r17)				# 14556
	faddmul	r56, r56, r36, r61				# 14503
	fmul	r50, r33, r50				# 14590
	lw		r61, 2(r17)				# 14590
	faddmul	r61, r50, r61, r56				# 14503
	cmpi	r42, 3
	beq		.b47929				# 22583
.b47930:
	lw		r17, 6(r12)				# 3372
	fcmp	r46, r61
	ble		.b47932				# 3188
.b47933:
	addi	r61, r0, 1				# 3188
	cmpi	r17, 0
	beq		.b47935				# 765
.b47936:
	cmpi	r61, 0
	beq		.b47941				# 775
.b47943:
	addi	r9, r9, 1				# 23786
	lwx		r28, r53, r9				# 23266
	cmpi	r28, -1
	beq		.b47945				# 23266
	b		.b47841
.b47945:
	addi	r15, r15, 1				# 24216
	lwx		r9, r48, r15				# 24006
	cmpi	r9, -1
	beq		.b47949				# 24037
	b		.b47837
.b47949:
	addi	r62, r62, 1				# 24896
	lwx		r48, r30, r62				# 24323
	lw		r15, 0(r48)				# 24355
	cmpi	r15, -1
	beq		.b48066				# 24391
	b		.b47782
.b48066:
	lw		r62, 0(r41)				# 1949
	lw		r61, 0(r26)				# 1949
	lw		r9, 1(r41)				# 1967
	lw		r28, 1(r26)				# 1967
	fmul	r9, r9, r28				# 1949
	faddmul	r9, r62, r61, r9				# 1949
	lw		r61, 2(r41)				# 1985
	lw		r28, 2(r26)				# 1985
	faddmul	r9, r61, r28, r9				# 35327
	fneg	r9, r9				# 35317
	fcmp	r9, r46
	ble		.b48069				# 3158
.b48070:
.b48068:
	fmul	r61, r2, r9				# 35442
	lw		r9, 7(r23)				# 5033
	lw		r9, 0(r9)				# 35442
	fmul	r9, r61, r9				# 35420
	lw		r28, 0(r10)				# 2129
	lw		r61, 0(r54)				# 2141
	faddmul	r61, r9, r61, r28				# 2117
	sw		r61, 0(r10)				# 2117
	lw		r61, 1(r10)				# 2171
	lw		r28, 1(r54)				# 2183
	faddmul	r61, r9, r28, r61				# 2159
	sw		r61, 1(r10)				# 2117
	lw		r61, 2(r10)				# 2213
	lw		r28, 2(r54)				# 2225
	faddmul	r9, r9, r28, r61				# 2201
	sw		r9, 2(r10)				# 2201
	blr				# 2201
.b48069:
	addi	r9, r0, 0				# 35406
	b		.b48068				# 35406
.b47941:
	addi	r28, r28, 1				# 23162
	lwx		r61, r53, r28				# 23025
	cmpi	r61, -1
	beq		.b47950				# 23052
	b		.b47898
.b47950:
	addi	r28, r0, 1				# 24006
	lwx		r9, r48, r28				# 24006
	cmpi	r9, -1
	beq		.b48064				# 24037
.b47954:
	lwx		r50, r7, r9				# 24078
	addi	r15, r0, 0				# 23266
	lwx		r29, r50, r15				# 23266
	cmpi	r29, -1
	beq		.b48062				# 23266
.b47958:
	lwx		r56, r13, r29				# 17557
	lw		r53, 0(r37)				# 17595
	lw		r9, 5(r56)				# 4475
	lw		r61, 0(r9)				# 17595
	fsub	r33, r53, r61				# 17586
	lw		r14, 1(r37)				# 17632
	lw		r61, 1(r9)				# 17632
	fsub	r42, r14, r61				# 17623
	lw		r61, 2(r37)				# 17669
	lw		r9, 2(r9)				# 17669
	fsub	r19, r61, r9				# 17660
	lwx		r36, r51, r29				# 17731
	lw		r27, 1(r56)				# 2994
	cmpi	r27, 1
	beq		.b47960				# 17793
.b47961:
	cmpi	r27, 2
	beq		.b47986				# 17874
.b47987:
	lw		r1, 0(r36)				# 17054
	fcmp	r1, r46
	beq		.b47990				# 3128
.b47991:
	lw		r29, 1(r36)				# 17128
	lw		r9, 2(r36)				# 17148
	fmul	r9, r9, r42				# 17128
	faddmul	r29, r29, r33, r9				# 17128
	lw		r9, 3(r36)				# 17168
	faddmul	r12, r9, r19, r29				# 17115
	fmul	r17, r33, r33				# 14374
	lw		r9, 4(r56)				# 3734
	lw		r59, 0(r9)				# 14374
	fmul	r29, r42, r42				# 14400
	lw		r47, 1(r9)				# 14400
	fmul	r29, r29, r47				# 14374
	faddmul	r17, r17, r59, r29				# 14374
	fmul	r29, r19, r19				# 14426
	lw		r9, 2(r9)				# 14426
	faddmul	r9, r29, r9, r17				# 14354
	lw		r29, 3(r56)				# 3553
	cmpi	r29, 0
	beq		.b47993				# 14456
.b47994:
	fmul	r29, r42, r19				# 14522
	lw		r17, 9(r56)				# 5989
	lw		r47, 0(r17)				# 14522
	faddmul	r29, r29, r47, r9				# 14503
	fmul	r19, r19, r33				# 14556
	lw		r9, 1(r17)				# 14556
	faddmul	r19, r19, r9, r29				# 14503
	fmul	r9, r33, r42				# 14590
	lw		r29, 2(r17)				# 14590
	faddmul	r9, r9, r29, r19				# 14503
	cmpi	r27, 3
	beq		.b47996				# 17239
.b47997:
.b47995:
	fmul	r19, r12, r12				# 17295
	fmul	r9, r1, r9				# 17295
	fsub	r9, r19, r9				# 17287
	fcmp	r9, r46
	ble		.b47998				# 3158
.b47999:
	lw		r19, 6(r56)				# 3372
	cmpi	r19, 0
	beq		.b48001				# 17353
.b48002:
	fsqrt	r9, r9				# 227
	fadd	r19, r12, r9				# 17394
	lw		r9, 4(r36)				# 17394
	fmul	r9, r19, r9				# 17375
	sw		r9, 0(r57)				# 17375
	lw		r19, 0(r57)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r19
	ble		.b48008				# 3098
.b48009:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r19, r19, r9				# 23516
	lw		r9, 0(r26)				# 23554
	faddmul	r33, r9, r19, r53				# 23545
	lw		r9, 1(r26)				# 23613
	faddmul	r53, r9, r19, r14				# 23604
	lw		r9, 2(r26)				# 23672
	faddmul	r42, r9, r19, r61				# 23663
	addi	r61, r0, 0				# 23025
	lwx		r9, r50, r61				# 23025
	cmpi	r9, -1
	beq		.b48014				# 23052
.b48015:
	lwx		r56, r13, r9				# 23095
	lw		r9, 5(r56)				# 4475
	lw		r19, 0(r9)				# 22709
	fsub	r1, r33, r19				# 22700
	lw		r19, 1(r9)				# 22741
	fsub	r36, r53, r19				# 22732
	lw		r9, 2(r9)				# 22773
	fsub	r12, r42, r9				# 22764
	lw		r14, 1(r56)				# 2994
	cmpi	r14, 1
	beq		.b48017				# 22824
.b48018:
	cmpi	r14, 2
	beq		.b48030				# 22882
.b48031:
	fmul	r27, r1, r1				# 14374
	lw		r29, 4(r56)				# 3734
	lw		r17, 0(r29)				# 14374
	fmul	r9, r36, r36				# 14400
	lw		r19, 1(r29)				# 14400
	fmul	r9, r9, r19				# 14374
	faddmul	r9, r27, r17, r9				# 14374
	fmul	r19, r12, r12				# 14426
	lw		r29, 2(r29)				# 14426
	faddmul	r9, r19, r29, r9				# 14354
	lw		r19, 3(r56)				# 3553
	cmpi	r19, 0
	beq		.b48043				# 14456
.b48044:
	fmul	r19, r36, r12				# 14522
	lw		r17, 9(r56)				# 5989
	lw		r29, 0(r17)				# 14522
	faddmul	r29, r19, r29, r9				# 14503
	fmul	r19, r12, r1				# 14556
	lw		r9, 1(r17)				# 14556
	faddmul	r19, r19, r9, r29				# 14503
	fmul	r9, r1, r36				# 14590
	lw		r29, 2(r17)				# 14590
	faddmul	r9, r9, r29, r19				# 14503
	cmpi	r14, 3
	beq		.b48046				# 22583
.b48047:
	lw		r19, 6(r56)				# 3372
	fcmp	r46, r9
	ble		.b48049				# 3188
.b48050:
	addi	r9, r0, 1				# 3188
	cmpi	r19, 0
	beq		.b48052				# 765
.b48053:
	cmpi	r9, 0
	beq		.b48058				# 775
.b48060:
	addi	r15, r15, 1				# 23786
	lwx		r29, r50, r15				# 23266
	cmpi	r29, -1
	beq		.b48062				# 23266
	b		.b47958
.b48062:
	addi	r28, r28, 1				# 24216
	lwx		r9, r48, r28				# 24006
	cmpi	r9, -1
	beq		.b48064				# 24037
	b		.b47954
.b48064:
	addi	r62, r62, 1				# 24833
	lwx		r48, r30, r62				# 24323
	lw		r15, 0(r48)				# 24355
	cmpi	r15, -1
	beq		.b48066				# 24391
	b		.b47782
.b48058:
	addi	r61, r61, 1				# 23162
	lwx		r9, r50, r61				# 23025
	cmpi	r9, -1
	beq		.b48014				# 23052
	b		.b48015
.b48014:
	addi	r9, r0, 1				# 23074
	addi	r9, r0, 1				# 23769
.b48063:
	addi	r9, r0, 1				# 24196
	addi	r9, r0, 1				# 24816
	blr				# 35500
.b48052:
	cmpi	r9, 0
	beq		.b48060				# 22625
	b		.b48058
.b48049:
	addi	r9, r0, 0				# 3188
	cmpi	r19, 0
	beq		.b48052				# 765
	b		.b48053
.b48046:
	addis	r19, r0, 16256				# 22604
	fsub	r9, r9, r19				# 22604
	lw		r19, 6(r56)				# 3372
	fcmp	r46, r9
	ble		.b48049				# 3188
	b		.b48050
.b48043:
	cmpi	r14, 3
	beq		.b48046				# 22583
	b		.b48047
.b48030:
	lw		r19, 4(r56)				# 4293
	lw		r29, 0(r19)				# 2037
	lw		r9, 1(r19)				# 2052
	fmul	r9, r9, r36				# 2037
	faddmul	r29, r29, r1, r9				# 2037
	lw		r9, 2(r19)				# 2067
	faddmul	r9, r9, r12, r29				# 22411
	lw		r19, 6(r56)				# 3372
	fcmp	r46, r9
	ble		.b48033				# 3188
.b48034:
	addi	r9, r0, 1				# 3188
	cmpi	r19, 0
	beq		.b48036				# 765
.b48037:
	cmpi	r9, 0
	beq		.b48058				# 775
	b		.b48060
.b48036:
	cmpi	r9, 0
	beq		.b48060				# 22459
	b		.b48058
.b48033:
	addi	r9, r0, 0				# 3188
	cmpi	r19, 0
	beq		.b48036				# 765
	b		.b48037
.b48017:
	fabs	r29, r1				# 322
	lw		r19, 4(r56)				# 3734
	lw		r9, 0(r19)				# 22178
	fcmp	r9, r29
	ble		.b48026				# 3098
.b48021:
	fabs	r29, r36				# 322
	lw		r9, 1(r19)				# 22224
	fcmp	r9, r29
	ble		.b48026				# 3098
.b48023:
	fabs	r29, r12				# 322
	lw		r9, 2(r19)				# 22261
	fcmp	r9, r29
	ble		.b48026				# 3098
.b48027:
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48058				# 23092
	b		.b48060
.b48026:
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48060				# 22348
	b		.b48058
.b48008:
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
.b48011:
	addi	r15, r15, 1				# 23885
	lwx		r29, r50, r15				# 23266
	cmpi	r29, -1
	beq		.b48062				# 23266
	b		.b47958
.b48001:
	fsqrt	r9, r9				# 227
	fsub	r9, r12, r9				# 17458
	lw		r19, 4(r36)				# 17458
	fmul	r9, r9, r19				# 17439
	sw		r9, 0(r57)				# 17439
	lw		r19, 0(r57)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r19
	ble		.b48008				# 3098
	b		.b48009
.b47998:
	lw		r19, 0(r57)				# 23423
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
	b		.b48011
.b47996:
	addis	r19, r0, 16256				# 17260
	fsub	r9, r9, r19				# 17260
	b		.b47995				# 17260
.b47993:
	cmpi	r27, 3
	beq		.b47996				# 17239
	b		.b47997
.b47990:
	lw		r19, 0(r57)				# 23423
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
	b		.b48011
.b47986:
	lw		r9, 0(r36)				# 16870
	fcmp	r46, r9
	ble		.b47988				# 3188
.b47989:
	lw		r29, 1(r36)				# 16924
	lw		r9, 2(r36)				# 16944
	fmul	r9, r9, r42				# 16924
	faddmul	r9, r29, r33, r9				# 16924
	lw		r29, 3(r36)				# 16964
	faddmul	r9, r29, r19, r9				# 16899
	sw		r9, 0(r57)				# 16899
	lw		r19, 0(r57)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r19
	ble		.b48008				# 3098
	b		.b48009
.b47988:
	lw		r19, 0(r57)				# 23423
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
	b		.b48011
.b47960:
	lw		r9, 0(r36)				# 15996
	fsub	r9, r9, r33				# 15995
	lw		r1, 1(r36)				# 15995
	fmul	r29, r9, r1				# 15986
	lw		r17, 1(r25)				# 16056
	faddmul	r9, r29, r17, r42				# 16050
	fabs	r9, r9				# 322
	lw		r27, 4(r56)				# 3920
	lw		r35, 1(r27)				# 16043
	fcmp	r35, r9
	ble		.b47969				# 3098
.b47964:
	lw		r9, 2(r25)				# 16117
	faddmul	r9, r29, r9, r19				# 16111
	fabs	r12, r9				# 322
	lw		r9, 2(r27)				# 16104
	fcmp	r9, r12
	ble		.b47969				# 3098
.b47966:
	fcmp	r1, r46
	beq		.b47969				# 3128
.b47970:
	sw		r29, 0(r57)				# 16226
	lw		r19, 0(r57)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r19
	ble		.b48008				# 3098
	b		.b48009
.b47969:
	lw		r9, 2(r36)				# 16269
	fsub	r9, r9, r42				# 16268
	lw		r47, 3(r36)				# 16268
	fmul	r9, r9, r47				# 16259
	lw		r1, 0(r25)				# 16330
	faddmul	r29, r9, r1, r33				# 16324
	fabs	r29, r29				# 322
	lw		r12, 0(r27)				# 16317
	fcmp	r12, r29
	ble		.b47978				# 3098
.b47973:
	lw		r29, 2(r25)				# 16391
	faddmul	r29, r9, r29, r19				# 16385
	fabs	r59, r29				# 322
	lw		r29, 2(r27)				# 16378
	fcmp	r29, r59
	ble		.b47978				# 3098
.b47975:
	fcmp	r47, r46
	beq		.b47978				# 3128
.b47979:
	sw		r9, 0(r57)				# 16500
	lw		r19, 0(r57)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r19
	ble		.b48008				# 3098
	b		.b48009
.b47978:
	lw		r9, 4(r36)				# 16543
	fsub	r9, r9, r19				# 16542
	lw		r19, 5(r36)				# 16542
	fmul	r29, r9, r19				# 16533
	faddmul	r9, r29, r1, r33				# 16598
	fabs	r9, r9				# 322
	fcmp	r12, r9
	ble		.b47980				# 3098
.b47981:
	faddmul	r9, r29, r17, r42				# 16659
	fabs	r9, r9				# 322
	fcmp	r35, r9
	ble		.b47982				# 3098
.b47983:
	fcmp	r19, r46
	beq		.b47984				# 3128
.b47985:
	sw		r29, 0(r57)				# 16774
	lw		r19, 0(r57)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r19
	ble		.b48008				# 3098
	b		.b48009
.b47984:
	lw		r19, 0(r57)				# 23423
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
	b		.b48011
.b47982:
	lw		r19, 0(r57)				# 23423
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
	b		.b48011
.b47980:
	lw		r19, 0(r57)				# 23423
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
	b		.b48011
.b47935:
	cmpi	r61, 0
	beq		.b47943				# 22625
	b		.b47941
.b47932:
	addi	r61, r0, 0				# 3188
	cmpi	r17, 0
	beq		.b47935				# 765
	b		.b47936
.b47929:
	addis	r17, r0, 16256				# 22604
	fsub	r61, r61, r17				# 22604
	lw		r17, 6(r12)				# 3372
	fcmp	r46, r61
	ble		.b47932				# 3188
	b		.b47933
.b47926:
	cmpi	r42, 3
	beq		.b47929				# 22583
	b		.b47930
.b47913:
	lw		r17, 4(r12)				# 4293
	lw		r61, 0(r17)				# 2037
	lw		r42, 1(r17)				# 2052
	fmul	r50, r42, r50				# 2037
	faddmul	r61, r61, r33, r50				# 2037
	lw		r17, 2(r17)				# 2067
	faddmul	r61, r17, r56, r61				# 22411
	lw		r17, 6(r12)				# 3372
	fcmp	r46, r61
	ble		.b47916				# 3188
.b47917:
	addi	r61, r0, 1				# 3188
	cmpi	r17, 0
	beq		.b47919				# 765
.b47920:
	cmpi	r61, 0
	beq		.b47941				# 775
	b		.b47943
.b47919:
	cmpi	r61, 0
	beq		.b47943				# 22459
	b		.b47941
.b47916:
	addi	r61, r0, 0				# 3188
	cmpi	r17, 0
	beq		.b47919				# 765
	b		.b47920
.b47900:
	fabs	r17, r33				# 322
	lw		r33, 4(r12)				# 3734
	lw		r61, 0(r33)				# 22178
	fcmp	r61, r17
	ble		.b47909				# 3098
.b47904:
	fabs	r17, r50				# 322
	lw		r61, 1(r33)				# 22224
	fcmp	r61, r17
	ble		.b47909				# 3098
.b47906:
	fabs	r17, r56				# 322
	lw		r61, 2(r33)				# 22261
	fcmp	r61, r17
	ble		.b47909				# 3098
.b47910:
	lw		r61, 6(r12)				# 3372
	cmpi	r61, 0
	beq		.b47941				# 23092
	b		.b47943
.b47909:
	lw		r61, 6(r12)				# 3372
	cmpi	r61, 0
	beq		.b47943				# 22348
	b		.b47941
.b47891:
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
.b47894:
	addi	r9, r9, 1				# 23885
	lwx		r28, r53, r9				# 23266
	cmpi	r28, -1
	beq		.b47945				# 23266
	b		.b47841
.b47884:
	fsqrt	r61, r28				# 227
	fsub	r61, r50, r61				# 17458
	lw		r28, 4(r17)				# 17458
	fmul	r61, r61, r28				# 17439
	sw		r61, 0(r57)				# 17439
	lw		r28, 0(r57)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r28
	ble		.b47891				# 3098
	b		.b47892
.b47881:
	lw		r28, 0(r57)				# 23423
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
	b		.b47894
.b47879:
	addis	r28, r0, 16256				# 17260
	fsub	r61, r61, r28				# 17260
	b		.b47878				# 17260
.b47876:
	cmpi	r42, 3
	beq		.b47879				# 17239
	b		.b47880
.b47873:
	lw		r28, 0(r57)				# 23423
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
	b		.b47894
.b47869:
	lw		r61, 0(r17)				# 16870
	fcmp	r46, r61
	ble		.b47871				# 3188
.b47872:
	lw		r28, 1(r17)				# 16924
	lw		r61, 2(r17)				# 16944
	fmul	r61, r61, r36				# 16924
	faddmul	r61, r28, r12, r61				# 16924
	lw		r28, 3(r17)				# 16964
	faddmul	r61, r28, r1, r61				# 16899
	sw		r61, 0(r57)				# 16899
	lw		r28, 0(r57)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r28
	ble		.b47891				# 3098
	b		.b47892
.b47871:
	lw		r28, 0(r57)				# 23423
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
	b		.b47894
.b47843:
	lw		r61, 0(r17)				# 15996
	fsub	r61, r61, r12				# 15995
	lw		r42, 1(r17)				# 15995
	fmul	r33, r61, r42				# 15986
	lw		r27, 1(r25)				# 16056
	faddmul	r61, r33, r27, r36				# 16050
	fabs	r61, r61				# 322
	lw		r50, 4(r56)				# 3920
	lw		r47, 1(r50)				# 16043
	fcmp	r47, r61
	ble		.b47852				# 3098
.b47847:
	lw		r61, 2(r25)				# 16117
	faddmul	r61, r33, r61, r1				# 16111
	fabs	r28, r61				# 322
	lw		r61, 2(r50)				# 16104
	fcmp	r61, r28
	ble		.b47852				# 3098
.b47849:
	fcmp	r42, r46
	beq		.b47852				# 3128
.b47853:
	sw		r33, 0(r57)				# 16226
	lw		r28, 0(r57)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r28
	ble		.b47891				# 3098
	b		.b47892
.b47852:
	lw		r61, 2(r17)				# 16269
	fsub	r61, r61, r36				# 16268
	lw		r28, 3(r17)				# 16268
	fmul	r59, r61, r28				# 16259
	lw		r33, 0(r25)				# 16330
	faddmul	r61, r59, r33, r12				# 16324
	fabs	r61, r61				# 322
	lw		r42, 0(r50)				# 16317
	fcmp	r42, r61
	ble		.b47861				# 3098
.b47856:
	lw		r61, 2(r25)				# 16391
	faddmul	r61, r59, r61, r1				# 16385
	fabs	r61, r61				# 322
	lw		r50, 2(r50)				# 16378
	fcmp	r50, r61
	ble		.b47861				# 3098
.b47858:
	fcmp	r28, r46
	beq		.b47861				# 3128
.b47862:
	sw		r59, 0(r57)				# 16500
	lw		r28, 0(r57)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r28
	ble		.b47891				# 3098
	b		.b47892
.b47861:
	lw		r61, 4(r17)				# 16543
	fsub	r61, r61, r1				# 16542
	lw		r17, 5(r17)				# 16542
	fmul	r28, r61, r17				# 16533
	faddmul	r61, r28, r33, r12				# 16598
	fabs	r61, r61				# 322
	fcmp	r42, r61
	ble		.b47863				# 3098
.b47864:
	faddmul	r61, r28, r27, r36				# 16659
	fabs	r61, r61				# 322
	fcmp	r47, r61
	ble		.b47865				# 3098
.b47866:
	fcmp	r17, r46
	beq		.b47867				# 3128
.b47868:
	sw		r28, 0(r57)				# 16774
	lw		r28, 0(r57)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r28
	ble		.b47891				# 3098
	b		.b47892
.b47867:
	lw		r28, 0(r57)				# 23423
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
	b		.b47894
.b47865:
	lw		r28, 0(r57)				# 23423
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
	b		.b47894
.b47863:
	lw		r28, 0(r57)				# 23423
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
	b		.b47894
.b47828:
	fsqrt	r9, r15				# 227
	fsub	r9, r61, r9				# 17458
	lw		r61, 4(r42)				# 17458
	fmul	r9, r9, r61				# 17439
	sw		r9, 0(r57)				# 17439
	lw		r9, 0(r57)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
	b		.b47833
.b47823:
	addis	r15, r0, 16256				# 17260
	fsub	r9, r9, r15				# 17260
	b		.b47822				# 17260
.b47820:
	cmpi	r15, 3
	beq		.b47823				# 17239
	b		.b47824
.b47813:
	lw		r9, 0(r42)				# 16870
	fcmp	r46, r9
	ble		.b47949				# 3188
.b47816:
	lw		r9, 1(r42)				# 16924
	lw		r61, 2(r42)				# 16944
	fmul	r61, r61, r12				# 16924
	faddmul	r61, r9, r33, r61				# 16924
	lw		r9, 3(r42)				# 16964
	faddmul	r9, r9, r56, r61				# 16899
	sw		r9, 0(r57)				# 16899
	lw		r9, 0(r57)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
	b		.b47833
.b47787:
	lw		r9, 0(r42)				# 15996
	fsub	r9, r9, r33				# 15995
	lw		r61, 1(r42)				# 15995
	fmul	r15, r9, r61				# 15986
	lw		r53, 1(r25)				# 16056
	faddmul	r9, r15, r53, r12				# 16050
	fabs	r9, r9				# 322
	lw		r50, 4(r28)				# 3920
	lw		r28, 1(r50)				# 16043
	fcmp	r28, r9
	ble		.b47796				# 3098
.b47791:
	lw		r9, 2(r25)				# 16117
	faddmul	r9, r15, r9, r56				# 16111
	fabs	r9, r9				# 322
	lw		r17, 2(r50)				# 16104
	fcmp	r17, r9
	ble		.b47796				# 3098
.b47793:
	fcmp	r61, r46
	beq		.b47796				# 3128
.b47797:
	sw		r15, 0(r57)				# 16226
	lw		r9, 0(r57)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
	b		.b47833
.b47796:
	lw		r9, 2(r42)				# 16269
	fsub	r9, r9, r12				# 16268
	lw		r61, 3(r42)				# 16268
	fmul	r1, r9, r61				# 16259
	lw		r15, 0(r25)				# 16330
	faddmul	r9, r1, r15, r33				# 16324
	fabs	r9, r9				# 322
	lw		r17, 0(r50)				# 16317
	fcmp	r17, r9
	ble		.b47805				# 3098
.b47800:
	lw		r9, 2(r25)				# 16391
	faddmul	r9, r1, r9, r56				# 16385
	fabs	r36, r9				# 322
	lw		r9, 2(r50)				# 16378
	fcmp	r9, r36
	ble		.b47805				# 3098
.b47802:
	fcmp	r61, r46
	beq		.b47805				# 3128
.b47806:
	sw		r1, 0(r57)				# 16500
	lw		r9, 0(r57)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
	b		.b47833
.b47805:
	lw		r9, 4(r42)				# 16543
	fsub	r9, r9, r56				# 16542
	lw		r50, 5(r42)				# 16542
	fmul	r9, r9, r50				# 16533
	faddmul	r61, r9, r15, r33				# 16598
	fabs	r61, r61				# 322
	fcmp	r17, r61
	ble		.b47949				# 3098
.b47808:
	faddmul	r61, r9, r53, r12				# 16659
	fabs	r61, r61				# 322
	fcmp	r28, r61
	ble		.b47949				# 3098
.b47810:
	fcmp	r50, r46
	beq		.b47949				# 3128
.b47812:
	sw		r9, 0(r57)				# 16774
	lw		r9, 0(r57)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
	b		.b47833
.b47768:
	lw		r9, 0(r37)				# 31118
	lw		r19, 5(r23)				# 4475
	lw		r61, 0(r19)				# 31118
	fsub	r28, r9, r61				# 31117
	lw		r9, 4(r23)				# 3734
	lw		r61, 0(r9)				# 31144
	fsqrt	r61, r61				# 227
	fmul	r15, r28, r61				# 31108
	lw		r61, 2(r37)				# 31181
	lw		r28, 2(r19)				# 31181
	fsub	r28, r61, r28				# 31180
	lw		r61, 2(r9)				# 31207
	fsqrt	r61, r61				# 227
	fmul	r28, r28, r61				# 31171
	fmul	r61, r28, r28				# 31243
	faddmul	r62, r15, r15, r61				# 31234
	fabs	r61, r15				# 322
	addis	r29, r0, 14545
	ori		r29, r29, 46871				# 31291
	fcmp	r29, r61
	ble		.b47771				# 3098
.b47772:
	addis	r28, r0, 16752				# 31320
.b47770:
	ffloor	r61, r28				# 765
	fsub	r61, r28, r61				# 31412
	lw		r28, 1(r37)				# 31456
	lw		r15, 1(r19)				# 31456
	fsub	r28, r28, r15				# 31455
	lw		r9, 1(r9)				# 31482
	fsqrt	r9, r9				# 227
	fmul	r28, r28, r9				# 31446
	fabs	r9, r62				# 322
	fcmp	r29, r9
	ble		.b47774				# 3098
.b47775:
	addis	r9, r0, 16752				# 31556
.b47773:
	ffloor	r28, r9				# 765
	fsub	r62, r9, r28				# 31646
	addis	r9, r0, 15897
	ori		r9, r9, 39322				# 31690
	addis	r28, r0, 16128				# 31705
	fsub	r61, r28, r61				# 31699
	fmul	r61, r61, r61				# 31690
	fsub	r61, r9, r61				# 31690
	fsub	r9, r28, r62				# 31721
	fmul	r9, r9, r9				# 31690
	fsub	r9, r61, r9				# 31680
	fcmp	r46, r9
	ble		.b47777				# 3188
.b47778:
	addi	r9, r0, 0				# 31776
.b47776:
	fmul	r9, r48, r9				# 31817
	addis	r61, r0, 16025
	ori		r61, r61, 39322				# 31817
	fdiv	r9, r9, r61				# 31796
	sw		r9, 2(r54)				# 31796
	b		.b47748				# 31796
.b47777:
	b		.b47776				# 31785
.b47774:
	fdiv	r9, r28, r62				# 31582
	fabs	r9, r9				# 322
	fatan	r9, r9				# 440
	addis	r28, r0, 16880				# 31603
	fmul	r9, r9, r28				# 31602
	addis	r28, r0, 16457
	ori		r28, r28, 4059				# 31602
	fdiv	r9, r9, r28				# 31602
	b		.b47773				# 31602
.b47771:
	fdiv	r61, r28, r15				# 31347
	fabs	r61, r61				# 322
	fatan	r61, r61				# 440
	addis	r28, r0, 16880				# 31369
	fmul	r61, r61, r28				# 31368
	addis	r28, r0, 16457
	ori		r28, r28, 4059				# 31368
	fdiv	r28, r61, r28				# 31368
	b		.b47770				# 31368
.b47766:
	lw		r61, 0(r37)				# 30784
	lw		r28, 5(r23)				# 4475
	lw		r9, 0(r28)				# 30784
	fsub	r61, r61, r9				# 30775
	lw		r9, 2(r37)				# 30823
	lw		r28, 2(r28)				# 30823
	fsub	r9, r9, r28				# 30814
	fmul	r9, r9, r9				# 30868
	faddmul	r9, r61, r61, r9				# 30862
	fsqrt	r61, r9				# 227
	addis	r9, r0, 16672				# 30862
	fdiv	r61, r61, r9				# 30853
	ffloor	r9, r61				# 765
	fsub	r61, r61, r9				# 30915
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 30915
	fmul	r9, r61, r9				# 30905
	fcos	r9, r9				# 133
	fmul	r61, r9, r9				# 30954
	fmul	r9, r61, r48				# 30987
	sw		r9, 1(r54)				# 30987
	addis	r9, r0, 16256				# 31050
	fsub	r9, r9, r61				# 31049
	fmul	r9, r9, r48				# 31028
	sw		r9, 2(r54)				# 31028
	b		.b47748				# 31028
.b47764:
	lw		r9, 1(r37)				# 30625
	addis	r61, r0, 16000				# 30625
	fmul	r9, r9, r61				# 30620
	fsin	r9, r9				# 40
	fmul	r61, r9, r9				# 30605
	fmul	r9, r48, r61				# 30650
	sw		r9, 0(r54)				# 30650
	addis	r9, r0, 16256				# 30721
	fsub	r9, r9, r61				# 30711
	fmul	r9, r48, r9				# 30690
	sw		r9, 1(r54)				# 30690
	b		.b47748				# 30690
.b47749:
	lw		r61, 0(r37)				# 30169
	lw		r62, 5(r23)				# 4475
	lw		r9, 0(r62)				# 30169
	fsub	r9, r61, r9				# 30160
	addis	r19, r0, 15692
	ori		r19, r19, 52429				# 30234
	fmul	r61, r9, r19				# 30227
	ffloor	r61, r61				# 765
	addis	r28, r0, 16800				# 30226
	fmul	r61, r61, r28				# 30217
	fsub	r9, r9, r61				# 30264
	addis	r15, r0, 16672				# 30264
	fcmp	r15, r9
	ble		.b47752				# 3098
.b47753:
	addi	r48, r0, 1				# 3098
.b47751:
	lw		r61, 2(r37)				# 30308
	lw		r9, 2(r62)				# 30308
	fsub	r9, r61, r9				# 30299
	fmul	r61, r9, r19				# 30366
	ffloor	r61, r61				# 765
	fmul	r61, r61, r28				# 30356
	fsub	r9, r9, r61				# 30404
	fcmp	r15, r9
	ble		.b47755				# 3098
.b47756:
	addi	r9, r0, 1				# 3098
	cmpi	r48, 0
	beq		.b47758				# 30467
.b47759:
	cmpi	r9, 0
	beq		.b47762				# 30489
.b47763:
	addis	r9, r0, 17279				# 30503
	sw		r9, 1(r54)				# 30439
	b		.b47748				# 30439
.b47762:
	addi	r9, r0, 0				# 30514
	sw		r9, 1(r54)				# 30439
	b		.b47748				# 30439
.b47758:
	cmpi	r9, 0
	beq		.b47760				# 30532
.b47761:
	addi	r9, r0, 0				# 30546
	sw		r9, 1(r54)				# 30439
	b		.b47748				# 30439
.b47760:
	addis	r9, r0, 17279				# 30555
	sw		r9, 1(r54)				# 30439
	b		.b47748				# 30439
.b47755:
	addi	r9, r0, 0				# 3098
	cmpi	r48, 0
	beq		.b47758				# 30467
	b		.b47759
.b47752:
	addi	r48, r0, 0				# 3098
	b		.b47751				# 3098
.b47746:
	addis	r61, r0, 16256				# 1837
	fdiv	r61, r61, r28				# 1837
	b		.b47743				# 1837
.b47744:
	addis	r61, r0, 16256				# 1801
	b		.b47743				# 1801
.b47741:
	sw		r62, 0(r41)				# 29409
	sw		r28, 1(r41)				# 29409
	sw		r29, 2(r41)				# 29455
	b		.b47740				# 29455
.b47738:
	lw		r61, 4(r23)				# 3734
	lw		r9, 0(r61)				# 28996
	fneg	r9, r9				# 28981
	sw		r9, 0(r41)				# 28981
	lw		r9, 1(r61)				# 29034
	fneg	r9, r9				# 29019
	sw		r9, 1(r41)				# 28981
	lw		r9, 2(r61)				# 29071
	fneg	r9, r9				# 29056
	sw		r9, 2(r41)				# 29056
	b		.b47730				# 29056
.b47731:
	lw		r9, 0(r19)				# 28828
	sw		r46, 0(r41)				# 1232
	sw		r46, 1(r41)				# 1232
	sw		r46, 2(r41)				# 28868
	addi	r9, r9, -1				# 28888
	lwx		r61, r61, r9				# 28918
	fcmp	r61, r46
	beq		.b47734				# 3128
.b47735:
	fcmp	r61, r46
	ble		.b47736				# 3158
.b47737:
	addis	r61, r0, 16256				# 856
	fneg	r61, r61				# 28888
	swx		r61, r9, r41				# 28888
	b		.b47730				# 28888
.b47736:
	addis	r61, r0, 49024				# 868
	fneg	r61, r61				# 28888
	swx		r61, r9, r41				# 28888
	b		.b47730				# 28888
.b47734:
	addi	r61, r0, 0				# 828
	fneg	r61, r61				# 28888
	swx		r61, r9, r41				# 28888
	b		.b47730				# 28888
.b47728:
	blr				# 35510
.b47726:
	blr				# 35510
.b47722:
	addi	r15, r15, 1				# 23162
	lwx		r9, r33, r15				# 23025
	cmpi	r9, -1
	beq		.b47725				# 23052
	b		.b47679
.b47725:
	sw		r47, 0(r23)				# 27393
	sw		r56, 0(r37)				# 1162
	sw		r53, 1(r37)				# 1162
	sw		r59, 2(r37)				# 27393
	sw		r42, 0(r29)				# 27393
	sw		r27, 0(r19)				# 27485
	b		.b47671				# 27485
.b47716:
	cmpi	r9, 0
	beq		.b47671				# 22625
	b		.b47722
.b47713:
	addi	r9, r0, 0				# 3188
	cmpi	r17, 0
	beq		.b47716				# 765
	b		.b47717
.b47710:
	addis	r17, r0, 16256				# 22604
	fsub	r9, r9, r17				# 22604
	lw		r17, 6(r44)				# 3372
	fcmp	r46, r9
	ble		.b47713				# 3188
	b		.b47714
.b47707:
	cmpi	r17, 3
	beq		.b47710				# 22583
	b		.b47711
.b47694:
	lw		r50, 4(r44)				# 4293
	lw		r9, 0(r50)				# 2037
	lw		r17, 1(r50)				# 2052
	fmul	r17, r17, r8				# 2037
	faddmul	r17, r9, r20, r17				# 2037
	lw		r9, 2(r50)				# 2067
	faddmul	r9, r9, r38, r17				# 22411
	lw		r17, 6(r44)				# 3372
	fcmp	r46, r9
	ble		.b47697				# 3188
.b47698:
	addi	r9, r0, 1				# 3188
	cmpi	r17, 0
	beq		.b47700				# 765
.b47701:
	cmpi	r9, 0
	beq		.b47722				# 775
	b		.b47671
.b47700:
	cmpi	r9, 0
	beq		.b47671				# 22459
	b		.b47722
.b47697:
	addi	r9, r0, 0				# 3188
	cmpi	r17, 0
	beq		.b47700				# 765
	b		.b47701
.b47681:
	fabs	r9, r20				# 322
	lw		r50, 4(r44)				# 3734
	lw		r17, 0(r50)				# 22178
	fcmp	r17, r9
	ble		.b47690				# 3098
.b47685:
	fabs	r9, r8				# 322
	lw		r17, 1(r50)				# 22224
	fcmp	r17, r9
	ble		.b47690				# 3098
.b47687:
	fabs	r9, r38				# 322
	lw		r17, 2(r50)				# 22261
	fcmp	r17, r9
	ble		.b47690				# 3098
.b47691:
	lw		r9, 6(r44)				# 3372
	cmpi	r9, 0
	beq		.b47722				# 23092
	b		.b47671
.b47690:
	lw		r9, 6(r44)				# 3372
	cmpi	r9, 0
	beq		.b47671				# 22348
	b		.b47722
.b47665:
	fsqrt	r9, r9				# 227
	fsub	r15, r17, r9				# 18540
	lw		r9, 4(r59)				# 18540
	fmul	r9, r15, r9				# 18521
	sw		r9, 0(r57)				# 18521
	addi	r27, r0, 1				# 18580
	lw		r9, 0(r57)				# 27058
	fcmp	r9, r46
	ble		.b47671				# 3098
	b		.b47673
.b47667:
	lw		r9, 6(r50)				# 3372
	cmpi	r9, 0
	beq		.b47625				# 27653
.b47670:
	addi	r62, r62, 1				# 27691
	lw		r36, 0(r1)				# 8078
	lwx		r42, r33, r62				# 26915
	cmpi	r42, -1
	beq		.b47625				# 26952
	b		.b47628
.b47656:
	lw		r15, 0(r59)				# 18051
	fcmp	r46, r15
	ble		.b47667				# 3188
.b47659:
	lw		r9, 3(r27)				# 18099
	fmul	r9, r15, r9				# 18080
	sw		r9, 0(r57)				# 18080
	addi	r27, r0, 1				# 18129
	lw		r9, 0(r57)				# 27058
	fcmp	r9, r46
	ble		.b47671				# 3098
	b		.b47673
.b47630:
	lw		r9, 0(r59)				# 15996
	fsub	r9, r9, r17				# 15995
	lw		r53, 1(r59)				# 15995
	fmul	r47, r9, r53				# 15986
	lw		r27, 1(r36)				# 16056
	faddmul	r9, r47, r27, r35				# 16050
	fabs	r9, r9				# 322
	lw		r56, 4(r50)				# 3920
	lw		r38, 1(r56)				# 16043
	fcmp	r38, r9
	ble		.b47639				# 3098
.b47634:
	lw		r9, 2(r36)				# 16117
	faddmul	r9, r47, r9, r15				# 16111
	fabs	r20, r9				# 322
	lw		r9, 2(r56)				# 16104
	fcmp	r9, r20
	ble		.b47639				# 3098
.b47636:
	fcmp	r53, r46
	beq		.b47639				# 3128
.b47640:
	sw		r47, 0(r57)				# 16226
	addi	r27, r0, 1				# 16249
	lw		r9, 0(r57)				# 27058
	fcmp	r9, r46
	ble		.b47671				# 3098
	b		.b47673
.b47639:
	lw		r9, 2(r59)				# 16269
	fsub	r9, r9, r35				# 16268
	lw		r44, 3(r59)				# 16268
	fmul	r53, r9, r44				# 16259
	lw		r47, 0(r36)				# 16330
	faddmul	r9, r53, r47, r17				# 16324
	fabs	r9, r9				# 322
	lw		r20, 0(r56)				# 16317
	fcmp	r20, r9
	ble		.b47648				# 3098
.b47643:
	lw		r9, 2(r36)				# 16391
	faddmul	r9, r53, r9, r15				# 16385
	fabs	r9, r9				# 322
	lw		r56, 2(r56)				# 16378
	fcmp	r56, r9
	ble		.b47648				# 3098
.b47645:
	fcmp	r44, r46
	beq		.b47648				# 3128
.b47649:
	sw		r53, 0(r57)				# 16500
	addi	r27, r0, 2				# 16523
	lw		r9, 0(r57)				# 27058
	fcmp	r9, r46
	ble		.b47671				# 3098
	b		.b47673
.b47648:
	lw		r9, 4(r59)				# 16543
	fsub	r9, r9, r15				# 16542
	lw		r15, 5(r59)				# 16542
	fmul	r53, r9, r15				# 16533
	faddmul	r9, r53, r47, r17				# 16598
	fabs	r9, r9				# 322
	fcmp	r20, r9
	ble		.b47667				# 3098
.b47651:
	faddmul	r9, r53, r27, r35				# 16659
	fabs	r9, r9				# 322
	fcmp	r38, r9
	ble		.b47667				# 3098
.b47653:
	fcmp	r15, r46
	beq		.b47667				# 3128
.b47655:
	sw		r53, 0(r57)				# 16774
	addi	r27, r0, 3				# 16797
	lw		r9, 0(r57)				# 27058
	fcmp	r9, r46
	ble		.b47671				# 3098
	b		.b47673
.b47616:
	fsqrt	r28, r28				# 227
	fsub	r9, r9, r28				# 18540
	lw		r28, 4(r33)				# 18540
	fmul	r9, r9, r28				# 18521
	sw		r9, 0(r57)				# 18521
	lw		r28, 0(r57)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r28
	ble		.b47473				# 3098
	b		.b47621
.b47607:
	lw		r62, 0(r33)				# 18051
	fcmp	r46, r62
	ble		.b47473				# 3188
.b47610:
	lw		r9, 3(r28)				# 18099
	fmul	r9, r62, r9				# 18080
	sw		r9, 0(r57)				# 18080
	lw		r28, 0(r57)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r28
	ble		.b47473				# 3098
	b		.b47621
.b47581:
	lw		r50, 0(r1)				# 8078
	lw		r9, 0(r33)				# 15996
	fsub	r9, r9, r42				# 15995
	lw		r53, 1(r33)				# 15995
	fmul	r56, r9, r53				# 15986
	lw		r28, 1(r50)				# 16056
	faddmul	r9, r56, r28, r36				# 16050
	fabs	r9, r9				# 322
	lw		r62, 4(r15)				# 3920
	lw		r17, 1(r62)				# 16043
	fcmp	r17, r9
	ble		.b47590				# 3098
.b47585:
	lw		r9, 2(r50)				# 16117
	faddmul	r9, r56, r9, r47				# 16111
	fabs	r9, r9				# 322
	lw		r15, 2(r62)				# 16104
	fcmp	r15, r9
	ble		.b47590				# 3098
.b47587:
	fcmp	r53, r46
	beq		.b47590				# 3128
.b47591:
	sw		r56, 0(r57)				# 16226
	lw		r28, 0(r57)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r28
	ble		.b47473				# 3098
	b		.b47621
.b47590:
	lw		r9, 2(r33)				# 16269
	fsub	r9, r9, r36				# 16268
	lw		r27, 3(r33)				# 16268
	fmul	r56, r9, r27				# 16259
	lw		r53, 0(r50)				# 16330
	faddmul	r9, r56, r53, r42				# 16324
	fabs	r9, r9				# 322
	lw		r15, 0(r62)				# 16317
	fcmp	r15, r9
	ble		.b47599				# 3098
.b47594:
	lw		r9, 2(r50)				# 16391
	faddmul	r9, r56, r9, r47				# 16385
	fabs	r50, r9				# 322
	lw		r9, 2(r62)				# 16378
	fcmp	r9, r50
	ble		.b47599				# 3098
.b47596:
	fcmp	r27, r46
	beq		.b47599				# 3128
.b47600:
	sw		r56, 0(r57)				# 16500
	lw		r28, 0(r57)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r28
	ble		.b47473				# 3098
	b		.b47621
.b47599:
	lw		r9, 4(r33)				# 16543
	fsub	r9, r9, r47				# 16542
	lw		r62, 5(r33)				# 16542
	fmul	r50, r9, r62				# 16533
	faddmul	r9, r50, r53, r42				# 16598
	fabs	r9, r9				# 322
	fcmp	r15, r9
	ble		.b47473				# 3098
.b47602:
	faddmul	r9, r50, r28, r36				# 16659
	fabs	r9, r9				# 322
	fcmp	r17, r9
	ble		.b47473				# 3098
.b47604:
	fcmp	r62, r46
	beq		.b47473				# 3128
.b47606:
	sw		r50, 0(r57)				# 16774
	lw		r28, 0(r57)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r28
	ble		.b47473				# 3098
	b		.b47621
.b47474:
	addi	r62, r0, 1				# 27829
	lwx		r9, r14, r62				# 27829
	cmpi	r9, -1
	beq		.b47473				# 27860
.b47478:
	lwx		r33, r7, r9				# 27885
	addi	r28, r0, 0				# 26885
	lw		r59, 0(r1)				# 8078
	lwx		r42, r33, r28				# 26915
	cmpi	r42, -1
	beq		.b47479				# 26952
.b47482:
	lwx		r47, r13, r42				# 18636
	lw		r17, 10(r47)				# 6561
	lw		r35, 0(r17)				# 18698
	lw		r15, 1(r17)				# 18723
	lw		r27, 2(r17)				# 18748
	lw		r9, 1(r1)				# 8141
	lwx		r50, r9, r42				# 18807
	lw		r9, 1(r47)				# 2994
	cmpi	r9, 1
	beq		.b47484				# 18869
.b47485:
	cmpi	r9, 2
	beq		.b47510				# 18950
.b47511:
	lw		r53, 0(r50)				# 18204
	fcmp	r53, r46
	beq		.b47521				# 3128
.b47515:
	lw		r12, 1(r50)				# 18278
	lw		r9, 2(r50)				# 18298
	fmul	r9, r9, r15				# 18278
	faddmul	r9, r12, r35, r9				# 18278
	lw		r15, 3(r50)				# 18318
	faddmul	r12, r15, r27, r9				# 18265
	lw		r15, 3(r17)				# 18342
	fmul	r9, r12, r12				# 18377
	fmul	r15, r53, r15				# 18377
	fsub	r9, r9, r15				# 18369
	fcmp	r9, r46
	ble		.b47521				# 3158
.b47517:
	lw		r15, 6(r47)				# 3372
	cmpi	r15, 0
	beq		.b47519				# 18435
.b47520:
	fsqrt	r9, r9				# 227
	fadd	r9, r12, r9				# 18476
	lw		r15, 4(r50)				# 18476
	fmul	r9, r9, r15				# 18457
	sw		r9, 0(r57)				# 18457
	addi	r12, r0, 1				# 18580
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r46
	ble		.b47525				# 3098
.b47527:
	lw		r9, 0(r23)				# 27125
	fcmp	r9, r15
	ble		.b47525				# 3098
.b47529:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 27169
	fadd	r36, r15, r9				# 27161
	lw		r9, 0(r59)				# 27198
	lw		r15, 0(r39)				# 27198
	faddmul	r27, r9, r36, r15				# 27189
	lw		r15, 1(r59)				# 27247
	lw		r9, 1(r39)				# 27247
	faddmul	r47, r15, r36, r9				# 27238
	lw		r9, 2(r59)				# 27296
	lw		r15, 2(r39)				# 27296
	faddmul	r59, r9, r36, r15				# 27287
	addi	r15, r0, 0				# 23025
	lwx		r9, r33, r15				# 23025
	cmpi	r9, -1
	beq		.b47579				# 23052
.b47533:
	lwx		r35, r13, r9				# 23095
	lw		r17, 5(r35)				# 4475
	lw		r9, 0(r17)				# 22709
	fsub	r56, r27, r9				# 22700
	lw		r9, 1(r17)				# 22741
	fsub	r44, r47, r9				# 22732
	lw		r9, 2(r17)				# 22773
	fsub	r50, r59, r9				# 22764
	lw		r38, 1(r35)				# 2994
	cmpi	r38, 1
	beq		.b47535				# 22824
.b47536:
	cmpi	r38, 2
	beq		.b47548				# 22882
.b47549:
	fmul	r17, r56, r56				# 14374
	lw		r53, 4(r35)				# 3734
	lw		r20, 0(r53)				# 14374
	fmul	r9, r44, r44				# 14400
	lw		r49, 1(r53)				# 14400
	fmul	r9, r9, r49				# 14374
	faddmul	r17, r17, r20, r9				# 14374
	fmul	r9, r50, r50				# 14426
	lw		r53, 2(r53)				# 14426
	faddmul	r9, r9, r53, r17				# 14354
	lw		r17, 3(r35)				# 3553
	cmpi	r17, 0
	beq		.b47561				# 14456
.b47562:
	fmul	r17, r44, r50				# 14522
	lw		r20, 9(r35)				# 5989
	lw		r53, 0(r20)				# 14522
	faddmul	r17, r17, r53, r9				# 14503
	fmul	r50, r50, r56				# 14556
	lw		r9, 1(r20)				# 14556
	faddmul	r17, r50, r9, r17				# 14503
	fmul	r9, r56, r44				# 14590
	lw		r50, 2(r20)				# 14590
	faddmul	r9, r9, r50, r17				# 14503
	cmpi	r38, 3
	beq		.b47564				# 22583
.b47565:
	lw		r17, 6(r35)				# 3372
	fcmp	r46, r9
	ble		.b47567				# 3188
.b47568:
	addi	r9, r0, 1				# 3188
	cmpi	r17, 0
	beq		.b47570				# 765
.b47571:
	cmpi	r9, 0
	beq		.b47576				# 775
.b47525:
	addi	r28, r28, 1				# 27573
	lw		r59, 0(r1)				# 8078
	lwx		r42, r33, r28				# 26915
	cmpi	r42, -1
	beq		.b47479				# 26952
	b		.b47482
.b47479:
	addi	r62, r62, 1				# 27971
	lwx		r9, r14, r62				# 27829
	cmpi	r9, -1
	beq		.b47473				# 27860
	b		.b47478
.b47576:
	addi	r15, r15, 1				# 23162
	lwx		r9, r33, r15				# 23025
	cmpi	r9, -1
	beq		.b47579				# 23052
	b		.b47533
.b47579:
	sw		r36, 0(r23)				# 27393
	sw		r27, 0(r37)				# 1162
	sw		r47, 1(r37)				# 1162
	sw		r59, 2(r37)				# 27393
	sw		r42, 0(r29)				# 27393
	sw		r12, 0(r19)				# 27485
	b		.b47525				# 27485
.b47570:
	cmpi	r9, 0
	beq		.b47525				# 22625
	b		.b47576
.b47567:
	addi	r9, r0, 0				# 3188
	cmpi	r17, 0
	beq		.b47570				# 765
	b		.b47571
.b47564:
	addis	r17, r0, 16256				# 22604
	fsub	r9, r9, r17				# 22604
	lw		r17, 6(r35)				# 3372
	fcmp	r46, r9
	ble		.b47567				# 3188
	b		.b47568
.b47561:
	cmpi	r38, 3
	beq		.b47564				# 22583
	b		.b47565
.b47548:
	lw		r53, 4(r35)				# 4293
	lw		r9, 0(r53)				# 2037
	lw		r17, 1(r53)				# 2052
	fmul	r17, r17, r44				# 2037
	faddmul	r9, r9, r56, r17				# 2037
	lw		r17, 2(r53)				# 2067
	faddmul	r9, r17, r50, r9				# 22411
	lw		r17, 6(r35)				# 3372
	fcmp	r46, r9
	ble		.b47551				# 3188
.b47552:
	addi	r9, r0, 1				# 3188
	cmpi	r17, 0
	beq		.b47554				# 765
.b47555:
	cmpi	r9, 0
	beq		.b47576				# 775
	b		.b47525
.b47554:
	cmpi	r9, 0
	beq		.b47525				# 22459
	b		.b47576
.b47551:
	addi	r9, r0, 0				# 3188
	cmpi	r17, 0
	beq		.b47554				# 765
	b		.b47555
.b47535:
	fabs	r17, r56				# 322
	lw		r53, 4(r35)				# 3734
	lw		r9, 0(r53)				# 22178
	fcmp	r9, r17
	ble		.b47544				# 3098
.b47539:
	fabs	r9, r44				# 322
	lw		r17, 1(r53)				# 22224
	fcmp	r17, r9
	ble		.b47544				# 3098
.b47541:
	fabs	r17, r50				# 322
	lw		r9, 2(r53)				# 22261
	fcmp	r9, r17
	ble		.b47544				# 3098
.b47545:
	lw		r9, 6(r35)				# 3372
	cmpi	r9, 0
	beq		.b47576				# 23092
	b		.b47525
.b47544:
	lw		r9, 6(r35)				# 3372
	cmpi	r9, 0
	beq		.b47525				# 22348
	b		.b47576
.b47519:
	fsqrt	r9, r9				# 227
	fsub	r15, r12, r9				# 18540
	lw		r9, 4(r50)				# 18540
	fmul	r9, r15, r9				# 18521
	sw		r9, 0(r57)				# 18521
	addi	r12, r0, 1				# 18580
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r46
	ble		.b47525				# 3098
	b		.b47527
.b47521:
	lw		r9, 6(r47)				# 3372
	cmpi	r9, 0
	beq		.b47479				# 27653
.b47524:
	addi	r28, r28, 1				# 27691
	lw		r59, 0(r1)				# 8078
	lwx		r42, r33, r28				# 26915
	cmpi	r42, -1
	beq		.b47479				# 26952
	b		.b47482
.b47510:
	lw		r15, 0(r50)				# 18051
	fcmp	r46, r15
	ble		.b47521				# 3188
.b47513:
	lw		r9, 3(r17)				# 18099
	fmul	r9, r15, r9				# 18080
	sw		r9, 0(r57)				# 18080
	addi	r12, r0, 1				# 18129
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r46
	ble		.b47525				# 3098
	b		.b47527
.b47484:
	lw		r9, 0(r50)				# 15996
	fsub	r9, r9, r35				# 15995
	lw		r56, 1(r50)				# 15995
	fmul	r17, r9, r56				# 15986
	lw		r12, 1(r59)				# 16056
	faddmul	r9, r17, r12, r15				# 16050
	fabs	r9, r9				# 322
	lw		r44, 4(r47)				# 3920
	lw		r36, 1(r44)				# 16043
	fcmp	r36, r9
	ble		.b47493				# 3098
.b47488:
	lw		r9, 2(r59)				# 16117
	faddmul	r9, r17, r9, r27				# 16111
	fabs	r53, r9				# 322
	lw		r9, 2(r44)				# 16104
	fcmp	r9, r53
	ble		.b47493				# 3098
.b47490:
	fcmp	r56, r46
	beq		.b47493				# 3128
.b47494:
	sw		r17, 0(r57)				# 16226
	addi	r12, r0, 1				# 16249
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r46
	ble		.b47525				# 3098
	b		.b47527
.b47493:
	lw		r9, 2(r50)				# 16269
	fsub	r9, r9, r15				# 16268
	lw		r20, 3(r50)				# 16268
	fmul	r56, r9, r20				# 16259
	lw		r53, 0(r59)				# 16330
	faddmul	r9, r56, r53, r35				# 16324
	fabs	r9, r9				# 322
	lw		r17, 0(r44)				# 16317
	fcmp	r17, r9
	ble		.b47502				# 3098
.b47497:
	lw		r9, 2(r59)				# 16391
	faddmul	r9, r56, r9, r27				# 16385
	fabs	r38, r9				# 322
	lw		r9, 2(r44)				# 16378
	fcmp	r9, r38
	ble		.b47502				# 3098
.b47499:
	fcmp	r20, r46
	beq		.b47502				# 3128
.b47503:
	sw		r56, 0(r57)				# 16500
	addi	r12, r0, 2				# 16523
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r46
	ble		.b47525				# 3098
	b		.b47527
.b47502:
	lw		r9, 4(r50)				# 16543
	fsub	r9, r9, r27				# 16542
	lw		r56, 5(r50)				# 16542
	fmul	r50, r9, r56				# 16533
	faddmul	r9, r50, r53, r35				# 16598
	fabs	r9, r9				# 322
	fcmp	r17, r9
	ble		.b47521				# 3098
.b47505:
	faddmul	r9, r50, r12, r15				# 16659
	fabs	r9, r9				# 322
	fcmp	r36, r9
	ble		.b47521				# 3098
.b47507:
	fcmp	r56, r46
	beq		.b47521				# 3128
.b47509:
	sw		r50, 0(r57)				# 16774
	addi	r12, r0, 3				# 16797
	lw		r15, 0(r57)				# 27058
	fcmp	r15, r46
	ble		.b47525				# 3098
	b		.b47527
	# pretrace_line.3071
pretrace_line.3071:
.Entry@pretrace_line.3071:
	sw		r1, 0(r3)				# 0
	lli		r62, image_size.2590				# 41125
	lli		r9, image_center.2593				# 41125
	lli		r28, scan_pitch.2596				# 41125
	lli		r61, screeny_dir.2608				# 41125
	lli		r10, screenz_dir.2611				# 41125
	lw		r28, 0(r28)				# 41125
	sw		r28, -1(r3)				# 41125
	lw		r9, 1(r9)				# 41157
	sub		r9, r2, r9				# 41143
	itof	r9, r9				# 639
	fmul	r28, r28, r9				# 41113
	lw		r15, 0(r61)				# 41195
	lw		r9, 0(r10)				# 41195
	faddmul	r9, r28, r15, r9				# 41185
	sw		r9, -2(r3)				# 41185
	lw		r9, 1(r61)				# 41254
	lw		r15, 1(r10)				# 41254
	faddmul	r9, r28, r9, r15				# 41244
	sw		r9, -3(r3)				# 41244
	lw		r9, 2(r61)				# 41313
	lw		r61, 2(r10)				# 41313
	faddmul	r9, r28, r9, r61				# 41303
	sw		r9, -4(r3)				# 41303
	lw		r9, 0(r62)				# 41384
	addi	r9, r9, -1				# 41362
	sw		r5, -5(r3)				# 40479
	sw		r9, -6(r3)				# 40479
	cmpi	r9, 0
	bge		.b48072				# 40479
.b48073:
	blr				# 41064
.b48072:
	lli		r61, image_center.2593				# 40545
	lw		r61, 0(r61)				# 40545
	sub		r61, r9, r61				# 40531
	itof	r28, r61				# 639
	lw		r61, -1(r3)				# 40501
	fmul	r61, r61, r28				# 40501
	lli		r15, screenx_dir.2605				# 40595
	lw		r62, 0(r15)				# 40595
	lw		r28, -2(r3)				# 40574
	faddmul	r10, r61, r62, r28				# 40574
	lli		r7, ptrace_dirvec.2614				# 40574
	sw		r10, 0(r7)				# 40574
	lw		r62, 1(r15)				# 40653
	lw		r28, -3(r3)				# 40632
	faddmul	r62, r61, r62, r28				# 40632
	sw		r62, 1(r7)				# 40574
	lw		r28, 2(r15)				# 40711
	lw		r15, -4(r3)				# 40690
	faddmul	r51, r61, r28, r15				# 40690
	sw		r51, 2(r7)				# 40574
	fmul	r61, r62, r62				# 1729
	faddmul	r61, r10, r10, r61				# 1729
	faddmul	r61, r51, r51, r61				# 1723
	fsqrt	r28, r61				# 227
	addi	r15, r0, 0				# 1774
	fcmp	r28, r15
	beq		.b48075				# 3128
.b48076:
	addis	r61, r0, 16256				# 1837
	fdiv	r28, r61, r28				# 1837
.b48074:
	fmul	r61, r10, r28				# 1851
	sw		r61, 0(r7)				# 1851
	fmul	r61, r62, r28				# 1875
	sw		r61, 1(r7)				# 1851
	fmul	r61, r51, r28				# 1899
	sw		r61, 2(r7)				# 40574
	lli		r10, rgb.2587				# 1232
	sw		r15, 0(r10)				# 1232
	sw		r15, 1(r10)				# 1232
	sw		r15, 2(r10)				# 40574
	lli		r61, viewpoint.2542				# 1353
	lw		r28, 0(r61)				# 1353
	lli		r37, startp.2599				# 1353
	sw		r28, 0(r37)				# 1353
	lw		r28, 1(r61)				# 1376
	sw		r28, 1(r37)				# 1353
	lw		r61, 2(r61)				# 1399
	sw		r61, 2(r37)				# 40574
	addis	r54, r0, 16256				# 40833
	lw		r61, 0(r3)				# 40833
	lwx		r57, r61, r9				# 40833
	sw		r57, -7(r3)				# 40833
	addi	r13, r0, 0				# 32983
	mv		r30, r54				# 32983
	mv		r61, r15				# 32983
.b48079:
	lw		r46, 2(r57)				# 7046
	lli		r41, tmin.2569				# 26657
	addis	r51, r0, 20078
	ori		r51, r51, 27432				# 26657
	sw		r51, 0(r41)				# 26657
	lli		r9, or_net.2560				# 26687
	lw		r25, 0(r9)				# 26687
	addi	r26, r0, 0				# 26148
	lwx		r23, r25, r26				# 26148
	lw		r9, 0(r23)				# 26181
	cmpi	r9, -1
	beq		.b48081				# 26217
.b48084:
	cmpi	r9, 99
	beq		.b48086				# 26267
.b48087:
	lli		r14, objects.2536				# 15582
	lwx		r33, r14, r9				# 15582
	lw		r29, 0(r37)				# 15621
	lw		r28, 5(r33)				# 4475
	lw		r9, 0(r28)				# 15621
	fsub	r50, r29, r9				# 15611
	lw		r19, 1(r37)				# 15659
	lw		r9, 1(r28)				# 15659
	fsub	r12, r19, r9				# 15649
	lw		r48, 2(r37)				# 15697
	lw		r9, 2(r28)				# 15697
	fsub	r53, r48, r9				# 15687
	lw		r42, 1(r33)				# 2994
	cmpi	r42, 1
	beq		.b48238				# 15753
.b48239:
	cmpi	r42, 2
	beq		.b48297				# 15817
.b48298:
	lw		r1, 0(r7)				# 15037
	lw		r2, 1(r7)				# 15037
	lw		r17, 2(r7)				# 15037
	fmul	r28, r1, r1				# 14374
	lw		r9, 4(r33)				# 3734
	lw		r39, 0(r9)				# 14374
	fmul	r62, r2, r2				# 14400
	lw		r47, 1(r9)				# 14400
	fmul	r62, r62, r47				# 14374
	faddmul	r62, r28, r39, r62				# 14374
	fmul	r28, r17, r17				# 14426
	lw		r27, 2(r9)				# 14426
	faddmul	r62, r28, r27, r62				# 14354
	lw		r56, 3(r33)				# 3553
	cmpi	r56, 0
	beq		.b48302				# 14456
.b48303:
	fmul	r28, r2, r17				# 14522
	lw		r36, 9(r33)				# 5989
	lw		r9, 0(r36)				# 14522
	faddmul	r9, r28, r9, r62				# 14503
	fmul	r28, r17, r1				# 14556
	lw		r62, 1(r36)				# 14556
	faddmul	r9, r28, r62, r9				# 14503
	fmul	r62, r1, r2				# 14590
	lw		r28, 2(r36)				# 14590
	faddmul	r62, r62, r28, r9				# 14503
	fcmp	r62, r15
	beq		.b48085				# 3128
.b48305:
	fmul	r28, r1, r50				# 14680
	fmul	r9, r2, r12				# 14713
	fmul	r9, r9, r47				# 14680
	faddmul	r28, r28, r39, r9				# 14680
	fmul	r9, r17, r53				# 14746
	faddmul	r28, r9, r27, r28				# 14660
	cmpi	r56, 0
	beq		.b48307				# 14777
.b48308:
	fmul	r9, r2, r53				# 14851
	faddmul	r36, r17, r12, r9				# 14850
	lw		r35, 9(r33)				# 5989
	lw		r59, 0(r35)				# 14850
	fmul	r9, r17, r50				# 14895
	faddmul	r17, r1, r53, r9				# 14894
	lw		r9, 1(r35)				# 14894
	fmul	r9, r17, r9				# 14850
	faddmul	r36, r36, r59, r9				# 14850
	fmul	r9, r2, r50				# 14939
	faddmul	r17, r1, r12, r9				# 14938
	lw		r9, 2(r35)				# 14938
	faddmul	r9, r17, r9, r36				# 14837
	fhalf	r9, r9				# 14824
	fadd	r28, r28, r9				# 14824
.b48306:
	fmul	r17, r50, r50				# 14374
	fmul	r9, r12, r12				# 14400
	fmul	r9, r9, r47				# 14374
	faddmul	r39, r17, r39, r9				# 14374
	fmul	r9, r53, r53				# 14426
	faddmul	r9, r9, r27, r39				# 14354
	cmpi	r56, 0
	beq		.b48310				# 14456
.b48311:
	fmul	r56, r12, r53				# 14522
	lw		r39, 9(r33)				# 5989
	lw		r17, 0(r39)				# 14522
	faddmul	r9, r56, r17, r9				# 14503
	fmul	r17, r53, r50				# 14556
	lw		r53, 1(r39)				# 14556
	faddmul	r17, r17, r53, r9				# 14503
	fmul	r9, r50, r12				# 14590
	lw		r39, 2(r39)				# 14590
	faddmul	r9, r9, r39, r17				# 14503
	cmpi	r42, 3
	beq		.b48313				# 15282
.b48314:
.b48312:
	fmul	r39, r28, r28				# 15338
	fmul	r9, r62, r9				# 15338
	fsub	r9, r39, r9				# 15330
	fcmp	r9, r15
	ble		.b48085				# 3158
.b48316:
	fsqrt	r9, r9				# 227
	lw		r39, 6(r33)				# 3372
	cmpi	r39, 0
	beq		.b48318				# 15425
.b48319:
.b48317:
	fsub	r9, r9, r28				# 15491
	fdiv	r28, r9, r62				# 15472
	lli		r9, solver_dist.2563				# 15472
	sw		r28, 0(r9)				# 15472
.b48321:
	lli		r50, solver_dist.2563				# 26433
	lw		r28, 0(r50)				# 26433
	lw		r9, 0(r41)				# 26466
	fcmp	r9, r28
	ble		.b48085				# 3098
.b48323:
	addi	r17, r0, 1				# 25897
	lwx		r28, r23, r17				# 25897
	cmpi	r28, -1
	beq		.b48085				# 25928
.b48326:
	lli		r9, and_net.2554				# 25953
	lwx		r12, r9, r28				# 25953
	addi	r28, r0, 0				# 25005
	lwx		r53, r12, r28				# 25005
	cmpi	r53, -1
	beq		.b48327				# 25042
.b48330:
	lwx		r33, r14, r53				# 15582
	lw		r62, 5(r33)				# 4475
	lw		r9, 0(r62)				# 15621
	fsub	r1, r29, r9				# 15611
	lw		r9, 1(r62)				# 15659
	fsub	r56, r19, r9				# 15649
	lw		r9, 2(r62)				# 15697
	fsub	r36, r48, r9				# 15687
	lw		r42, 1(r33)				# 2994
	cmpi	r42, 1
	beq		.b48332				# 15753
.b48333:
	cmpi	r42, 2
	beq		.b48391				# 15817
.b48392:
	lw		r35, 0(r7)				# 15037
	lw		r47, 1(r7)				# 15037
	lw		r49, 2(r7)				# 15037
	fmul	r39, r35, r35				# 14374
	lw		r62, 4(r33)				# 3734
	lw		r27, 0(r62)				# 14374
	fmul	r9, r47, r47				# 14400
	lw		r44, 1(r62)				# 14400
	fmul	r9, r9, r44				# 14374
	faddmul	r9, r39, r27, r9				# 14374
	fmul	r39, r49, r49				# 14426
	lw		r20, 2(r62)				# 14426
	faddmul	r39, r39, r20, r9				# 14354
	lw		r2, 3(r33)				# 3553
	cmpi	r2, 0
	beq		.b48396				# 14456
.b48397:
	fmul	r9, r47, r49				# 14522
	lw		r62, 9(r33)				# 5989
	lw		r59, 0(r62)				# 14522
	faddmul	r39, r9, r59, r39				# 14503
	fmul	r9, r49, r35				# 14556
	lw		r59, 1(r62)				# 14556
	faddmul	r39, r9, r59, r39				# 14503
	fmul	r59, r35, r47				# 14590
	lw		r9, 2(r62)				# 14590
	faddmul	r39, r59, r9, r39				# 14503
	fcmp	r39, r15
	beq		.b48414				# 3128
.b48399:
	fmul	r62, r35, r1				# 14680
	fmul	r9, r47, r56				# 14713
	fmul	r9, r9, r44				# 14680
	faddmul	r62, r62, r27, r9				# 14680
	fmul	r9, r49, r36				# 14746
	faddmul	r62, r9, r20, r62				# 14660
	cmpi	r2, 0
	beq		.b48401				# 14777
.b48402:
	fmul	r9, r47, r36				# 14851
	faddmul	r9, r49, r56, r9				# 14850
	lw		r38, 9(r33)				# 5989
	lw		r8, 0(r38)				# 14850
	fmul	r59, r49, r1				# 14895
	faddmul	r49, r35, r36, r59				# 14894
	lw		r59, 1(r38)				# 14894
	fmul	r59, r49, r59				# 14850
	faddmul	r59, r9, r8, r59				# 14850
	fmul	r9, r47, r1				# 14939
	faddmul	r47, r35, r56, r9				# 14938
	lw		r9, 2(r38)				# 14938
	faddmul	r9, r47, r9, r59				# 14837
	fhalf	r9, r9				# 14824
	fadd	r62, r62, r9				# 14824
.b48400:
	fmul	r47, r1, r1				# 14374
	fmul	r9, r56, r56				# 14400
	fmul	r9, r9, r44				# 14374
	faddmul	r9, r47, r27, r9				# 14374
	fmul	r27, r36, r36				# 14426
	faddmul	r9, r27, r20, r9				# 14354
	cmpi	r2, 0
	beq		.b48404				# 14456
.b48405:
	fmul	r27, r56, r36				# 14522
	lw		r59, 9(r33)				# 5989
	lw		r47, 0(r59)				# 14522
	faddmul	r9, r27, r47, r9				# 14503
	fmul	r36, r36, r1				# 14556
	lw		r27, 1(r59)				# 14556
	faddmul	r36, r36, r27, r9				# 14503
	fmul	r9, r1, r56				# 14590
	lw		r56, 2(r59)				# 14590
	faddmul	r9, r9, r56, r36				# 14503
	cmpi	r42, 3
	beq		.b48407				# 15282
.b48408:
.b48406:
	fmul	r42, r62, r62				# 15338
	fmul	r9, r39, r9				# 15338
	fsub	r9, r42, r9				# 15330
	fcmp	r9, r15
	ble		.b48414				# 3158
.b48410:
	fsqrt	r9, r9				# 227
	lw		r33, 6(r33)				# 3372
	cmpi	r33, 0
	beq		.b48412				# 15425
.b48413:
.b48411:
	fsub	r9, r9, r62				# 15491
	fdiv	r9, r9, r39				# 15472
	sw		r9, 0(r50)				# 15472
	addi	r56, r0, 1				# 15510
	lw		r9, 0(r50)				# 25149
	fcmp	r9, r15
	ble		.b48418				# 3098
.b48420:
	lw		r62, 0(r41)				# 25216
	fcmp	r62, r9
	ble		.b48418				# 3098
.b48422:
	addis	r62, r0, 15395
	ori		r62, r62, 55050				# 25260
	fadd	r27, r9, r62				# 25252
	lw		r9, 0(r7)				# 25289
	faddmul	r1, r9, r27, r29				# 25280
	lw		r9, 1(r7)				# 25336
	faddmul	r36, r9, r27, r19				# 25327
	lw		r9, 2(r7)				# 25383
	faddmul	r39, r9, r27, r48				# 25374
	addi	r9, r0, 0				# 23025
	lwx		r62, r12, r9				# 23025
	cmpi	r62, -1
	beq		.b48472				# 23052
.b48426:
	lwx		r59, r14, r62				# 23095
	lw		r62, 5(r59)				# 4475
	lw		r33, 0(r62)				# 22709
	fsub	r20, r1, r33				# 22700
	lw		r33, 1(r62)				# 22741
	fsub	r2, r36, r33				# 22732
	lw		r62, 2(r62)				# 22773
	fsub	r33, r39, r62				# 22764
	lw		r44, 1(r59)				# 2994
	cmpi	r44, 1
	beq		.b48428				# 22824
.b48429:
	cmpi	r44, 2
	beq		.b48441				# 22882
.b48442:
	fmul	r42, r20, r20				# 14374
	lw		r62, 4(r59)				# 3734
	lw		r38, 0(r62)				# 14374
	fmul	r47, r2, r2				# 14400
	lw		r35, 1(r62)				# 14400
	fmul	r47, r47, r35				# 14374
	faddmul	r42, r42, r38, r47				# 14374
	fmul	r47, r33, r33				# 14426
	lw		r62, 2(r62)				# 14426
	faddmul	r62, r47, r62, r42				# 14354
	lw		r42, 3(r59)				# 3553
	cmpi	r42, 0
	beq		.b48454				# 14456
.b48455:
	fmul	r35, r2, r33				# 14522
	lw		r42, 9(r59)				# 5989
	lw		r47, 0(r42)				# 14522
	faddmul	r47, r35, r47, r62				# 14503
	fmul	r33, r33, r20				# 14556
	lw		r62, 1(r42)				# 14556
	faddmul	r62, r33, r62, r47				# 14503
	fmul	r33, r20, r2				# 14590
	lw		r42, 2(r42)				# 14590
	faddmul	r62, r33, r42, r62				# 14503
	cmpi	r44, 3
	beq		.b48457				# 22583
.b48458:
	lw		r33, 6(r59)				# 3372
	fcmp	r15, r62
	ble		.b48460				# 3188
.b48461:
	addi	r62, r0, 1				# 3188
	cmpi	r33, 0
	beq		.b48463				# 765
.b48464:
	cmpi	r62, 0
	beq		.b48469				# 775
.b48418:
	addi	r28, r28, 1				# 25658
	lwx		r53, r12, r28				# 25005
	cmpi	r53, -1
	beq		.b48327				# 25042
	b		.b48330
.b48327:
	addi	r17, r17, 1				# 26034
	lwx		r28, r23, r17				# 25897
	cmpi	r28, -1
	beq		.b48085				# 25928
	b		.b48326
.b48085:
	addi	r26, r26, 1				# 26566
	lwx		r23, r25, r26				# 26148
	lw		r9, 0(r23)				# 26181
	cmpi	r9, -1
	beq		.b48081				# 26217
	b		.b48084
.b48081:
	lw		r28, 0(r41)				# 26728
	addis	r2, r0, 48588
	ori		r2, r2, 52429				# 26755
	fcmp	r28, r2
	ble		.b48478				# 3098
.b48475:
	addis	r9, r0, 19646
	ori		r9, r9, 48160				# 26781
	fcmp	r9, r28
	ble		.b48478				# 3098
.b48479:
	lli		r23, intersected_object_id.2575				# 33094
	lw		r62, 0(r23)				# 33094
	lli		r27, objects.2536				# 33142
	lwx		r29, r27, r62				# 33142
	lw		r56, 2(r29)				# 3185
	lw		r14, 7(r29)				# 5033
	lw		r9, 0(r14)				# 33238
	fmul	r19, r9, r30				# 33224
	lw		r9, 1(r29)				# 2994
	cmpi	r9, 1
	beq		.b48485				# 29818
.b48486:
	cmpi	r9, 2
	beq		.b48492				# 29873
.b48493:
	lli		r26, intersection_point.2572				# 29136
	lw		r28, 0(r26)				# 29136
	lw		r9, 5(r29)				# 4475
	lw		r39, 0(r9)				# 29136
	fsub	r53, r28, r39				# 29127
	lw		r28, 1(r26)				# 29188
	lw		r39, 1(r9)				# 29188
	fsub	r48, r28, r39				# 29179
	lw		r28, 2(r26)				# 29240
	lw		r9, 2(r9)				# 29240
	fsub	r50, r28, r9				# 29231
	lw		r28, 4(r29)				# 3734
	lw		r9, 0(r28)				# 29293
	fmul	r12, r53, r9				# 29284
	lw		r9, 1(r28)				# 29325
	fmul	r9, r48, r9				# 29316
	lw		r28, 2(r28)				# 29357
	fmul	r28, r50, r28				# 29348
	lw		r26, 3(r29)				# 3553
	cmpi	r26, 0
	beq		.b48495				# 29381
.b48496:
	lw		r39, 9(r29)				# 6369
	lw		r33, 2(r39)				# 29517
	lw		r17, 1(r39)				# 29539
	fmul	r26, r50, r17				# 29517
	faddmul	r26, r48, r33, r26				# 29510
	fhalf	r26, r26				# 29504
	fadd	r26, r12, r26				# 29489
	lli		r12, nvector.2578				# 29489
	sw		r26, 0(r12)				# 29489
	lw		r39, 0(r39)				# 29614
	fmul	r26, r50, r39				# 29592
	faddmul	r26, r53, r33, r26				# 29585
	fhalf	r26, r26				# 29579
	fadd	r9, r9, r26				# 29564
	sw		r9, 1(r12)				# 29489
	fmul	r9, r48, r39				# 29667
	faddmul	r9, r53, r17, r9				# 29660
	fhalf	r9, r9				# 29654
	fadd	r9, r28, r9				# 29639
	sw		r9, 2(r12)				# 29639
.b48494:
	lw		r26, 6(r29)				# 3372
	lli		r39, nvector.2578				# 1729
	lw		r28, 0(r39)				# 1729
	lw		r50, 1(r39)				# 1743
	fmul	r9, r50, r50				# 1729
	faddmul	r9, r28, r28, r9				# 1729
	lw		r17, 2(r39)				# 1757
	faddmul	r9, r17, r17, r9				# 1723
	fsqrt	r48, r9				# 227
	fcmp	r48, r15
	beq		.b48498				# 3128
.b48499:
	cmpi	r26, 0
	beq		.b48500				# 1810
.b48501:
	addis	r9, r0, 49024				# 1822
	fdiv	r26, r9, r48				# 1822
.b48497:
	fmul	r9, r28, r26				# 1851
	sw		r9, 0(r39)				# 1851
	fmul	r9, r50, r26				# 1875
	sw		r9, 1(r39)				# 1851
	fmul	r9, r17, r26				# 1899
	sw		r9, 2(r39)				# 1899
.b48484:
	lli		r17, intersection_point.2572				# 1353
	lw		r42, 0(r17)				# 1353
	sw		r42, 0(r37)				# 1353
	lw		r36, 1(r17)				# 1376
	sw		r36, 1(r37)				# 1353
	lw		r47, 2(r17)				# 1399
	sw		r47, 2(r37)				# 33272
	lw		r28, 0(r29)				# 2815
	lw		r9, 8(r29)				# 5421
	lw		r26, 0(r9)				# 30014
	lli		r39, texture_color.2581				# 30014
	sw		r26, 0(r39)				# 30014
	lw		r26, 1(r9)				# 30052
	sw		r26, 1(r39)				# 30014
	lw		r9, 2(r9)				# 30092
	sw		r9, 2(r39)				# 30014
	cmpi	r28, 1
	beq		.b48503				# 30131
.b48504:
	cmpi	r28, 2
	beq		.b48518				# 30575
.b48519:
	cmpi	r28, 3
	beq		.b48520				# 30745
.b48521:
	cmpi	r28, 4
	beq		.b48522				# 31084
.b48502:
	mul16i	r28, r62, 4				# 33407
	lli		r50, intsec_rectside.2566				# 33407
	lw		r9, 0(r50)				# 33407
	add		r9, r28, r9				# 33385
	swx		r9, r13, r46				# 33272
	lw		r9, 1(r57)				# 6897
	lwx		r9, r9, r13				# 33510
	sw		r42, 0(r9)				# 1353
	sw		r36, 1(r9)				# 1353
	sw		r47, 2(r9)				# 33510
	lw		r9, 3(r57)				# 7193
	lw		r28, 0(r14)				# 33623
	addis	r62, r0, 16128				# 33623
	fcmp	r62, r28
	ble		.b48534				# 3098
.b48535:
	addi	r28, r0, 0				# 33655
	swx		r28, r13, r9				# 33655
.b48533:
	addis	r48, r0, 49152				# 33945
	lw		r62, 0(r7)				# 1949
	lli		r26, nvector.2578				# 1949
	lw		r33, 0(r26)				# 1949
	lw		r28, 1(r7)				# 1967
	lw		r59, 1(r26)				# 1967
	fmul	r9, r28, r59				# 1949
	faddmul	r9, r62, r33, r9				# 1949
	lw		r12, 2(r7)				# 1985
	lw		r29, 2(r26)				# 1985
	faddmul	r9, r12, r29, r9				# 33945
	fmul	r9, r48, r9				# 33937
	faddmul	r48, r9, r33, r62				# 2117
	sw		r48, 0(r7)				# 2117
	faddmul	r1, r9, r59, r28				# 2159
	sw		r1, 1(r7)				# 2117
	faddmul	r53, r9, r29, r12				# 2201
	sw		r53, 2(r7)				# 33988
	lw		r9, 1(r14)				# 34042
	fmul	r12, r30, r9				# 34022
	addi	r35, r0, 0				# 24323
	lwx		r20, r25, r35				# 24323
	lw		r28, 0(r20)				# 24355
	cmpi	r28, -1
	beq		.b48824				# 24391
.b48539:
	cmpi	r28, 99
	beq		.b48707				# 24451
.b48542:
	lwx		r26, r27, r28				# 17557
	lw		r9, 5(r26)				# 4475
	lw		r62, 0(r9)				# 17595
	fsub	r8, r42, r62				# 17586
	lw		r62, 1(r9)				# 17632
	fsub	r49, r36, r62				# 17623
	lw		r9, 2(r9)				# 17669
	fsub	r18, r47, r9				# 17660
	lli		r44, consts.2632				# 17731
	lwx		r38, r44, r28				# 17731
	lw		r62, 1(r26)				# 2994
	cmpi	r62, 1
	beq		.b48544				# 17793
.b48545:
	cmpi	r62, 2
	beq		.b48570				# 17874
.b48571:
	lw		r11, 0(r38)				# 17054
	fcmp	r11, r15
	beq		.b48706				# 3128
.b48575:
	lw		r28, 1(r38)				# 17128
	lw		r9, 2(r38)				# 17148
	fmul	r9, r9, r49				# 17128
	faddmul	r28, r28, r8, r9				# 17128
	lw		r9, 3(r38)				# 17168
	faddmul	r16, r9, r18, r28				# 17115
	fmul	r60, r8, r8				# 14374
	lw		r28, 4(r26)				# 3734
	lw		r52, 0(r28)				# 14374
	fmul	r32, r49, r49				# 14400
	lw		r9, 1(r28)				# 14400
	fmul	r9, r32, r9				# 14374
	faddmul	r9, r60, r52, r9				# 14374
	fmul	r60, r18, r18				# 14426
	lw		r28, 2(r28)				# 14426
	faddmul	r9, r60, r28, r9				# 14354
	lw		r28, 3(r26)				# 3553
	cmpi	r28, 0
	beq		.b48577				# 14456
.b48578:
	fmul	r52, r49, r18				# 14522
	lw		r60, 9(r26)				# 5989
	lw		r28, 0(r60)				# 14522
	faddmul	r9, r52, r28, r9				# 14503
	fmul	r28, r18, r8				# 14556
	lw		r18, 1(r60)				# 14556
	faddmul	r9, r28, r18, r9				# 14503
	fmul	r49, r8, r49				# 14590
	lw		r28, 2(r60)				# 14590
	faddmul	r9, r49, r28, r9				# 14503
	cmpi	r62, 3
	beq		.b48580				# 17239
.b48581:
.b48579:
	fmul	r28, r16, r16				# 17295
	fmul	r9, r11, r9				# 17295
	fsub	r9, r28, r9				# 17287
	fcmp	r9, r15
	ble		.b48706				# 3158
.b48583:
	lw		r28, 6(r26)				# 3372
	cmpi	r28, 0
	beq		.b48585				# 17353
.b48586:
	fsqrt	r9, r9				# 227
	fadd	r9, r16, r9				# 17394
	lw		r28, 4(r38)				# 17394
	fmul	r28, r9, r28				# 17375
	lli		r9, solver_dist.2563				# 17375
	sw		r28, 0(r9)				# 17375
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r2, r9
	ble		.b48706				# 3098
.b48590:
	addi	r62, r0, 1				# 24006
	lwx		r28, r20, r62				# 24006
	cmpi	r28, -1
	beq		.b48706				# 24037
.b48594:
	lli		r9, and_net.2554				# 24078
	lwx		r49, r9, r28				# 24078
	addi	r26, r0, 0				# 23266
	lwx		r8, r49, r26				# 23266
	cmpi	r8, -1
	beq		.b48702				# 23266
.b48598:
	lwx		r18, r27, r8				# 17557
	lw		r28, 5(r18)				# 4475
	lw		r9, 0(r28)				# 17595
	fsub	r11, r42, r9				# 17586
	lw		r9, 1(r28)				# 17632
	fsub	r32, r36, r9				# 17623
	lw		r9, 2(r28)				# 17669
	fsub	r52, r47, r9				# 17660
	lwx		r60, r44, r8				# 17731
	lw		r6, 1(r18)				# 2994
	cmpi	r6, 1
	beq		.b48600				# 17793
.b48601:
	cmpi	r6, 2
	beq		.b48626				# 17874
.b48627:
	lw		r55, 0(r60)				# 17054
	fcmp	r55, r15
	beq		.b48630				# 3128
.b48631:
	lw		r9, 1(r60)				# 17128
	lw		r28, 2(r60)				# 17148
	fmul	r28, r28, r32				# 17128
	faddmul	r28, r9, r11, r28				# 17128
	lw		r9, 3(r60)				# 17168
	faddmul	r16, r9, r52, r28				# 17115
	fmul	r9, r11, r11				# 14374
	lw		r28, 4(r18)				# 3734
	lw		r43, 0(r28)				# 14374
	fmul	r8, r32, r32				# 14400
	lw		r31, 1(r28)				# 14400
	fmul	r8, r8, r31				# 14374
	faddmul	r43, r9, r43, r8				# 14374
	fmul	r8, r52, r52				# 14426
	lw		r9, 2(r28)				# 14426
	faddmul	r9, r8, r9, r43				# 14354
	lw		r28, 3(r18)				# 3553
	cmpi	r28, 0
	beq		.b48633				# 14456
.b48634:
	fmul	r8, r32, r52				# 14522
	lw		r43, 9(r18)				# 5989
	lw		r28, 0(r43)				# 14522
	faddmul	r8, r8, r28, r9				# 14503
	fmul	r28, r52, r11				# 14556
	lw		r9, 1(r43)				# 14556
	faddmul	r28, r28, r9, r8				# 14503
	fmul	r8, r11, r32				# 14590
	lw		r9, 2(r43)				# 14590
	faddmul	r9, r8, r9, r28				# 14503
	cmpi	r6, 3
	beq		.b48636				# 17239
.b48637:
.b48635:
	fmul	r28, r16, r16				# 17295
	fmul	r9, r55, r9				# 17295
	fsub	r9, r28, r9				# 17287
	fcmp	r9, r15
	ble		.b48638				# 3158
.b48639:
	lw		r28, 6(r18)				# 3372
	cmpi	r28, 0
	beq		.b48641				# 17353
.b48642:
	fsqrt	r9, r9				# 227
	fadd	r9, r16, r9				# 17394
	lw		r28, 4(r60)				# 17394
	fmul	r9, r9, r28				# 17375
	sw		r9, 0(r38)				# 17375
	lw		r28, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b48648				# 3098
.b48649:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r28, r28, r9				# 23516
	lli		r8, light.2545				# 23554
	lw		r9, 0(r8)				# 23554
	faddmul	r18, r9, r28, r42				# 23545
	lw		r9, 1(r8)				# 23613
	faddmul	r60, r9, r28, r36				# 23604
	lw		r9, 2(r8)				# 23672
	faddmul	r16, r9, r28, r47				# 23663
	addi	r28, r0, 0				# 23025
	lwx		r9, r49, r28				# 23025
	cmpi	r9, -1
	beq		.b48707				# 23052
.b48655:
	lwx		r52, r27, r9				# 23095
	lw		r8, 5(r52)				# 4475
	lw		r9, 0(r8)				# 22709
	fsub	r6, r18, r9				# 22700
	lw		r9, 1(r8)				# 22741
	fsub	r55, r60, r9				# 22732
	lw		r9, 2(r8)				# 22773
	fsub	r43, r16, r9				# 22764
	lw		r32, 1(r52)				# 2994
	cmpi	r32, 1
	beq		.b48657				# 22824
.b48658:
	cmpi	r32, 2
	beq		.b48670				# 22882
.b48671:
	fmul	r24, r6, r6				# 14374
	lw		r8, 4(r52)				# 3734
	lw		r11, 0(r8)				# 14374
	fmul	r9, r55, r55				# 14400
	lw		r31, 1(r8)				# 14400
	fmul	r9, r9, r31				# 14374
	faddmul	r9, r24, r11, r9				# 14374
	fmul	r11, r43, r43				# 14426
	lw		r8, 2(r8)				# 14426
	faddmul	r9, r11, r8, r9				# 14354
	lw		r8, 3(r52)				# 3553
	cmpi	r8, 0
	beq		.b48683				# 14456
.b48684:
	fmul	r11, r55, r43				# 14522
	lw		r31, 9(r52)				# 5989
	lw		r8, 0(r31)				# 14522
	faddmul	r11, r11, r8, r9				# 14503
	fmul	r8, r43, r6				# 14556
	lw		r9, 1(r31)				# 14556
	faddmul	r8, r8, r9, r11				# 14503
	fmul	r11, r6, r55				# 14590
	lw		r9, 2(r31)				# 14590
	faddmul	r9, r11, r9, r8				# 14503
	cmpi	r32, 3
	beq		.b48686				# 22583
.b48687:
	lw		r8, 6(r52)				# 3372
	fcmp	r15, r9
	ble		.b48689				# 3188
.b48690:
	addi	r9, r0, 1				# 3188
	cmpi	r8, 0
	beq		.b48692				# 765
.b48693:
	cmpi	r9, 0
	beq		.b48698				# 775
.b48700:
	addi	r26, r26, 1				# 23786
	lwx		r8, r49, r26				# 23266
	cmpi	r8, -1
	beq		.b48702				# 23266
	b		.b48598
.b48702:
	addi	r62, r62, 1				# 24216
	lwx		r28, r20, r62				# 24006
	cmpi	r28, -1
	beq		.b48706				# 24037
	b		.b48594
.b48706:
	addi	r35, r35, 1				# 24896
	lwx		r20, r25, r35				# 24323
	lw		r28, 0(r20)				# 24355
	cmpi	r28, -1
	beq		.b48824				# 24391
	b		.b48539
.b48824:
	lli		r9, light.2545				# 1949
	lw		r35, 0(r9)				# 1949
	lw		r26, 1(r9)				# 1967
	fmul	r28, r59, r26				# 1949
	faddmul	r28, r33, r35, r28				# 1949
	lw		r62, 2(r9)				# 1985
	faddmul	r9, r29, r62, r28				# 34151
	fneg	r9, r9				# 34151
	fmul	r9, r9, r19				# 34138
	fmul	r28, r1, r26				# 1949
	faddmul	r28, r48, r35, r28				# 1949
	faddmul	r28, r53, r62, r28				# 34217
	fneg	r26, r28				# 34203
	fcmp	r9, r15
	ble		.b48826				# 3158
.b48828:
	lw		r28, 0(r10)				# 2129
	lw		r62, 0(r39)				# 2141
	faddmul	r28, r9, r62, r28				# 2117
	sw		r28, 0(r10)				# 2117
	lw		r28, 1(r10)				# 2171
	lw		r62, 1(r39)				# 2183
	faddmul	r28, r9, r62, r28				# 2159
	sw		r28, 1(r10)				# 2117
	lw		r62, 2(r10)				# 2213
	lw		r28, 2(r39)				# 2225
	faddmul	r9, r9, r28, r62				# 2201
	sw		r9, 2(r10)				# 2201
	fcmp	r26, r15
	ble		.b48823				# 3158
.b48830:
	fmul	r9, r26, r26				# 32023
	fmul	r28, r9, r9				# 32023
	lw		r9, 0(r10)				# 32078
	faddmul	r9, r28, r12, r9				# 32067
	sw		r9, 0(r10)				# 32067
	lw		r9, 1(r10)				# 32109
	faddmul	r9, r28, r12, r9				# 32098
	sw		r9, 1(r10)				# 32067
	lw		r9, 2(r10)				# 32140
	faddmul	r9, r28, r12, r9				# 32129
	sw		r9, 2(r10)				# 32129
.b48823:
	lli		r9, startp_fast.2602				# 1353
	sw		r42, 0(r9)				# 1353
	sw		r36, 1(r9)				# 1353
	sw		r47, 2(r9)				# 22055
	lli		r9, n_objects.2525				# 22105
	lw		r9, 0(r9)				# 22105
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b48833				# 21420
.b48831:
	lli		r9, n_reflections.2647				# 34376
	lw		r9, 0(r9)				# 34376
	addi	r28, r9, -1				# 34357
	cmpi	r28, 0
	bge		.b48848				# 32237
.b48846:
	addis	r9, r0, 15820
	ori		r9, r9, 52429				# 34437
	fcmp	r30, r9
	ble		.b48077				# 3098
.b49409:
	cmpi	r13, 4
	bge		.b49410				# 34463
.b49412:
	addi	r9, r13, 1				# 34484
	addi	r28, r0, -1				# 34484
	swx		r28, r9, r46				# 34484
	cmpi	r56, 2
	beq		.b49413				# 34523
.b48077:
	lw		r9, 0(r57)				# 6744
	lw		r61, 0(r10)				# 1353
	sw		r61, 0(r9)				# 1353
	lw		r61, 1(r10)				# 1376
	sw		r61, 1(r9)				# 1353
	lw		r61, 2(r10)				# 1399
	sw		r61, 2(r9)				# 40574
	lw		r9, 6(r57)				# 7787
	sw		r5, 0(r9)				# 40574
	addi	r9, r0, 0				# 39734
	sw		r9, -8(r3)				# 39734
.b49417:
	lw		r28, -7(r3)				# 7046
	lw		r61, 2(r28)				# 7046
	lwx		r61, r61, r9				# 39789
	cmpi	r61, 0
	bge		.b49419				# 39832
.b49415:
	lw		r9, -6(r3)				# 40992
	addi	r9, r9, -1				# 40992
	lw		r61, -5(r3)				# 979
	addi	r5, r61, 1				# 979
	cmpi	r5, 5
	bge		.b49450				# 1000
.b49451:
.b49449:
	sw		r5, -5(r3)				# 40479
	sw		r9, -6(r3)				# 40479
	cmpi	r9, 0
	bge		.b48072				# 40479
	b		.b48073
.b49450:
	addi	r5, r5, -5				# 1017
	b		.b49449				# 1017
.b49419:
	lw		r61, 3(r28)				# 7193
	lwx		r61, r61, r9				# 39973
	cmpi	r61, 0
	beq		.b49421				# 39973
.b49423:
	lw		r61, 6(r28)				# 7634
	lw		r62, 0(r61)				# 40004
	addi	r15, r0, 0				# 1232
	lli		r61, diffuse_ray.2584				# 1232
	sw		r15, 0(r61)				# 1232
	sw		r15, 1(r61)				# 1232
	sw		r15, 2(r61)				# 40040
	lw		r15, 7(r28)				# 7939
	lw		r61, 1(r28)				# 6897
	lli		r28, dirvecs.2624				# 40158
	lwx		r28, r28, r62				# 40158
	sw		r28, -9(r3)				# 40158
	lwx		r28, r15, r9				# 40158
	sw		r28, -10(r3)				# 40158
	lwx		r15, r61, r9				# 40158
	lw		r9, 0(r15)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r15)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r15)				# 1399
	sw		r9, 2(r61)				# 22055
	lli		r9, n_objects.2525				# 22105
	lw		r9, 0(r9)				# 22105
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b49426				# 21420
.b49424:
	addi	r9, r0, 118				# 35584
	sw		r9, -11(r3)				# 35584
.b49441:
	lw		r13, -9(r3)				# 35627
	lwx		r1, r13, r9				# 35627
	lw		r10, 0(r1)				# 8078
	lw		r61, 0(r10)				# 1949
	lw		r15, -10(r3)				# 1949
	lw		r51, 0(r15)				# 1949
	lw		r62, 1(r10)				# 1967
	lw		r28, 1(r15)				# 1967
	fmul	r28, r62, r28				# 1949
	faddmul	r61, r61, r51, r28				# 1949
	lw		r28, 2(r10)				# 1985
	lw		r62, 2(r15)				# 1985
	faddmul	r28, r28, r62, r61				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b49447				# 3188
.b49448:
	addi	r9, r9, 1				# 35712
	lwx		r1, r13, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r28, r9				# 35694
	mflr	r63
	sw		r63, -12(r3)
	addi	r3, r3, -13
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 13
	lw		r63, -12(r3)
	mtlr	r63				# 35694
.b49446:
	lw		r9, -11(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -11(r3)				# 35584
	cmpi	r9, 0
	bge		.b49441				# 35584
.b49439:
	lw		r9, -7(r3)				# 7491
	lw		r9, 5(r9)				# 7491
	lw		r61, -8(r3)				# 40298
	lwx		r9, r9, r61				# 40298
	addi	r61, r0, 0				# 1353
	sw		r61, 0(r9)				# 1353
	sw		r61, 1(r9)				# 1353
	sw		r61, 2(r9)				# 1399
.b49421:
	lw		r9, -8(r3)				# 40355
	addi	r9, r9, 1				# 40355
	sw		r9, -8(r3)				# 39734
	cmpi	r9, 4
	ble		.b49417				# 39734
	b		.b49415
.b49447:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -12(r3)
	addi	r3, r3, -13
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 13
	lw		r63, -12(r3)
	mtlr	r63				# 35766
	b		.b49446				# 35766
.b49426:
	lli		r9, objects.2536				# 21445
	lwx		r7, r9, r61				# 21445
	lw		r41, 10(r7)				# 6561
	lw		r28, 1(r7)				# 2994
	lw		r9, 0(r15)				# 21561
	lw		r10, 5(r7)				# 4475
	lw		r62, 0(r10)				# 21561
	fsub	r9, r9, r62				# 21547
	sw		r9, 0(r41)				# 21547
	lw		r62, 1(r15)				# 21603
	lw		r9, 1(r10)				# 21603
	fsub	r9, r62, r9				# 21589
	sw		r9, 1(r41)				# 21547
	lw		r9, 2(r15)				# 21645
	lw		r62, 2(r10)				# 21645
	fsub	r13, r9, r62				# 21631
	sw		r13, 2(r41)				# 21547
	cmpi	r28, 2
	beq		.b49429				# 21673
.b49430:
	cmpi	r28, 2
	ble		.b49428				# 21798
.b49432:
	lw		r30, 0(r41)				# 21847
	lw		r10, 1(r41)				# 21847
	fmul	r9, r30, r30				# 14374
	lw		r51, 4(r7)				# 3734
	lw		r62, 0(r51)				# 14374
	fmul	r54, r10, r10				# 14400
	lw		r25, 1(r51)				# 14400
	fmul	r54, r54, r25				# 14374
	faddmul	r54, r9, r62, r54				# 14374
	fmul	r9, r13, r13				# 14426
	lw		r62, 2(r51)				# 14426
	faddmul	r9, r9, r62, r54				# 14354
	lw		r62, 3(r7)				# 3553
	cmpi	r62, 0
	beq		.b49434				# 14456
.b49435:
	fmul	r62, r10, r13				# 14522
	lw		r51, 9(r7)				# 5989
	lw		r54, 0(r51)				# 14522
	faddmul	r62, r62, r54, r9				# 14503
	fmul	r13, r13, r30				# 14556
	lw		r9, 1(r51)				# 14556
	faddmul	r9, r13, r9, r62				# 14503
	fmul	r10, r30, r10				# 14590
	lw		r62, 2(r51)				# 14590
	faddmul	r9, r10, r62, r9				# 14503
	cmpi	r28, 3
	beq		.b49437				# 21917
.b49438:
.b49436:
	sw		r9, 3(r41)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b49426				# 21420
	b		.b49424
.b49437:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b49436				# 21937
.b49434:
	cmpi	r28, 3
	beq		.b49437				# 21917
	b		.b49438
.b49428:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b49426				# 21420
	b		.b49424
.b49429:
	lw		r51, 4(r7)				# 4293
	lw		r62, 0(r41)				# 21728
	lw		r28, 1(r41)				# 21728
	lw		r10, 0(r51)				# 2037
	lw		r9, 1(r51)				# 2052
	fmul	r9, r9, r28				# 2037
	faddmul	r28, r10, r62, r9				# 2037
	lw		r9, 2(r51)				# 2067
	faddmul	r9, r9, r13, r28				# 21713
	sw		r9, 3(r41)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b49426				# 21420
	b		.b49424
.b49413:
	lw		r9, 0(r14)				# 34576
	fsub	r9, r54, r9				# 34565
	fmul	r30, r30, r9				# 34551
	addi	r13, r13, 1				# 34604
	lw		r9, 0(r41)				# 34645
	fadd	r61, r61, r9				# 34604
	cmpi	r13, 4
	ble		.b48079				# 32983
	b		.b48077
.b49410:
	cmpi	r56, 2
	beq		.b49413				# 34523
	b		.b48077
.b48848:
	lli		r9, reflections.2644				# 32262
	lwx		r35, r9, r28				# 32262
	lw		r20, 1(r35)				# 8279
	sw		r51, 0(r41)				# 28622
	addi	r44, r0, 0				# 28095
	lwx		r38, r25, r44				# 28095
	lw		r9, 0(r38)				# 28128
	cmpi	r9, -1
	beq		.b48850				# 28164
.b48853:
	cmpi	r9, 99
	beq		.b48855				# 28213
.b48856:
	lwx		r52, r27, r9				# 18636
	lw		r26, 10(r52)				# 6561
	lw		r49, 0(r26)				# 18698
	lw		r8, 1(r26)				# 18723
	lw		r32, 2(r26)				# 18748
	lw		r18, 1(r20)				# 8141
	lwx		r11, r18, r9				# 18807
	lw		r9, 1(r52)				# 2994
	cmpi	r9, 1
	beq		.b48962				# 18869
.b48963:
	cmpi	r9, 2
	beq		.b48988				# 18950
.b48989:
	lw		r60, 0(r11)				# 18204
	fcmp	r60, r15
	beq		.b48854				# 3128
.b48993:
	lw		r9, 1(r11)				# 18278
	lw		r62, 2(r11)				# 18298
	fmul	r62, r62, r8				# 18278
	faddmul	r62, r9, r49, r62				# 18278
	lw		r9, 3(r11)				# 18318
	faddmul	r49, r9, r32, r62				# 18265
	lw		r9, 3(r26)				# 18342
	fmul	r62, r49, r49				# 18377
	fmul	r9, r60, r9				# 18377
	fsub	r62, r62, r9				# 18369
	fcmp	r62, r15
	ble		.b48854				# 3158
.b48995:
	lw		r9, 6(r52)				# 3372
	cmpi	r9, 0
	beq		.b48997				# 18435
.b48998:
	fsqrt	r9, r62				# 227
	fadd	r62, r49, r9				# 18476
	lw		r9, 4(r11)				# 18476
	fmul	r9, r62, r9				# 18457
	lli		r62, solver_dist.2563				# 18457
	sw		r9, 0(r62)				# 18457
.b49000:
	lli		r16, solver_dist.2563				# 28381
	lw		r9, 0(r16)				# 28381
	lw		r62, 0(r41)				# 28414
	fcmp	r62, r9
	ble		.b48854				# 3098
.b49002:
	addi	r49, r0, 1				# 27829
	lwx		r62, r38, r49				# 27829
	cmpi	r62, -1
	beq		.b48854				# 27860
.b49005:
	lli		r9, and_net.2554				# 27885
	lwx		r11, r9, r62				# 27885
	addi	r26, r0, 0				# 26885
	lw		r62, 0(r20)				# 8078
	lwx		r32, r11, r26				# 26915
	cmpi	r32, -1
	beq		.b49006				# 26952
.b49009:
	lwx		r55, r27, r32				# 18636
	lw		r24, 10(r55)				# 6561
	lw		r60, 0(r24)				# 18698
	lw		r31, 1(r24)				# 18723
	lw		r52, 2(r24)				# 18748
	lwx		r6, r18, r32				# 18807
	lw		r9, 1(r55)				# 2994
	cmpi	r9, 1
	beq		.b49011				# 18869
.b49012:
	cmpi	r9, 2
	beq		.b49037				# 18950
.b49038:
	lw		r43, 0(r6)				# 18204
	fcmp	r43, r15
	beq		.b49048				# 3128
.b49042:
	lw		r8, 1(r6)				# 18278
	lw		r9, 2(r6)				# 18298
	fmul	r9, r9, r31				# 18278
	faddmul	r8, r8, r60, r9				# 18278
	lw		r9, 3(r6)				# 18318
	faddmul	r8, r9, r52, r8				# 18265
	lw		r9, 3(r24)				# 18342
	fmul	r60, r8, r8				# 18377
	fmul	r9, r43, r9				# 18377
	fsub	r9, r60, r9				# 18369
	fcmp	r9, r15
	ble		.b49048				# 3158
.b49044:
	lw		r60, 6(r55)				# 3372
	cmpi	r60, 0
	beq		.b49046				# 18435
.b49047:
	fsqrt	r9, r9				# 227
	fadd	r8, r8, r9				# 18476
	lw		r9, 4(r6)				# 18476
	fmul	r9, r8, r9				# 18457
	sw		r9, 0(r16)				# 18457
	addi	r8, r0, 1				# 18580
	lw		r60, 0(r16)				# 27058
	fcmp	r60, r15
	ble		.b49052				# 3098
.b49054:
	lw		r9, 0(r41)				# 27125
	fcmp	r9, r60
	ble		.b49052				# 3098
.b49056:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 27169
	fadd	r52, r60, r9				# 27161
	lw		r9, 0(r62)				# 27198
	faddmul	r60, r9, r52, r42				# 27189
	lw		r9, 1(r62)				# 27247
	faddmul	r55, r9, r52, r36				# 27238
	lw		r9, 2(r62)				# 27296
	faddmul	r43, r9, r52, r47				# 27287
	addi	r62, r0, 0				# 23025
	lwx		r9, r11, r62				# 23025
	cmpi	r9, -1
	beq		.b49106				# 23052
.b49060:
	lwx		r31, r27, r9				# 23095
	lw		r6, 5(r31)				# 4475
	lw		r9, 0(r6)				# 22709
	fsub	r34, r60, r9				# 22700
	lw		r9, 1(r6)				# 22741
	fsub	r24, r55, r9				# 22732
	lw		r9, 2(r6)				# 22773
	fsub	r40, r43, r9				# 22764
	lw		r58, 1(r31)				# 2994
	cmpi	r58, 1
	beq		.b49062				# 22824
.b49063:
	cmpi	r58, 2
	beq		.b49075				# 22882
.b49076:
	fmul	r21, r34, r34				# 14374
	lw		r6, 4(r31)				# 3734
	lw		r45, 0(r6)				# 14374
	fmul	r22, r24, r24				# 14400
	lw		r9, 1(r6)				# 14400
	fmul	r9, r22, r9				# 14374
	faddmul	r9, r21, r45, r9				# 14374
	fmul	r45, r40, r40				# 14426
	lw		r6, 2(r6)				# 14426
	faddmul	r9, r45, r6, r9				# 14354
	lw		r6, 3(r31)				# 3553
	cmpi	r6, 0
	beq		.b49088				# 14456
.b49089:
	fmul	r6, r24, r40				# 14522
	lw		r21, 9(r31)				# 5989
	lw		r45, 0(r21)				# 14522
	faddmul	r45, r6, r45, r9				# 14503
	fmul	r6, r40, r34				# 14556
	lw		r9, 1(r21)				# 14556
	faddmul	r9, r6, r9, r45				# 14503
	fmul	r6, r34, r24				# 14590
	lw		r24, 2(r21)				# 14590
	faddmul	r9, r6, r24, r9				# 14503
	cmpi	r58, 3
	beq		.b49091				# 22583
.b49092:
	lw		r6, 6(r31)				# 3372
	fcmp	r15, r9
	ble		.b49094				# 3188
.b49095:
	addi	r9, r0, 1				# 3188
	cmpi	r6, 0
	beq		.b49097				# 765
.b49098:
	cmpi	r9, 0
	beq		.b49103				# 775
.b49052:
	addi	r26, r26, 1				# 27573
	lw		r62, 0(r20)				# 8078
	lwx		r32, r11, r26				# 26915
	cmpi	r32, -1
	beq		.b49006				# 26952
	b		.b49009
.b49006:
	addi	r49, r49, 1				# 27971
	lwx		r62, r38, r49				# 27829
	cmpi	r62, -1
	beq		.b48854				# 27860
	b		.b49005
.b48854:
	addi	r44, r44, 1				# 28519
	lwx		r38, r25, r44				# 28095
	lw		r9, 0(r38)				# 28128
	cmpi	r9, -1
	beq		.b48850				# 28164
	b		.b48853
.b48850:
	lw		r9, 0(r41)				# 28698
	fcmp	r9, r2
	ble		.b49107				# 3098
.b49109:
	addis	r62, r0, 19646
	ori		r62, r62, 48160				# 28751
	fcmp	r62, r9
	ble		.b49107				# 3098
.b49111:
	lw		r9, 0(r23)				# 32393
	mul16i	r9, r9, 4				# 32393
	lw		r62, 0(r50)				# 32393
	add		r9, r9, r62				# 32376
	lw		r62, 0(r35)				# 8211
	cmp		r9, r62
	beq		.b49112				# 32454
.b49107:
	addi	r28, r28, -1				# 32856
	cmpi	r28, 0
	bge		.b48848				# 32237
	b		.b48846
.b49112:
	addi	r26, r0, 0				# 24323
	lwx		r38, r25, r26				# 24323
	lw		r11, 0(r38)				# 24355
	cmpi	r11, -1
	beq		.b49401				# 24391
.b49117:
	cmpi	r11, 99
	beq		.b49285				# 24451
.b49120:
	lwx		r49, r27, r11				# 17557
	lw		r18, 0(r17)				# 17595
	lw		r9, 5(r49)				# 4475
	lw		r62, 0(r9)				# 17595
	fsub	r32, r18, r62				# 17586
	lw		r16, 1(r17)				# 17632
	lw		r62, 1(r9)				# 17632
	fsub	r52, r16, r62				# 17623
	lw		r60, 2(r17)				# 17669
	lw		r9, 2(r9)				# 17669
	fsub	r44, r60, r9				# 17660
	lli		r8, consts.2632				# 17731
	lwx		r11, r8, r11				# 17731
	lw		r55, 1(r49)				# 2994
	cmpi	r55, 1
	beq		.b49122				# 17793
.b49123:
	cmpi	r55, 2
	beq		.b49148				# 17874
.b49149:
	lw		r43, 0(r11)				# 17054
	fcmp	r43, r15
	beq		.b49284				# 3128
.b49153:
	lw		r62, 1(r11)				# 17128
	lw		r9, 2(r11)				# 17148
	fmul	r9, r9, r52				# 17128
	faddmul	r62, r62, r32, r9				# 17128
	lw		r9, 3(r11)				# 17168
	faddmul	r6, r9, r44, r62				# 17115
	fmul	r62, r32, r32				# 14374
	lw		r31, 4(r49)				# 3734
	lw		r24, 0(r31)				# 14374
	fmul	r9, r52, r52				# 14400
	lw		r40, 1(r31)				# 14400
	fmul	r9, r9, r40				# 14374
	faddmul	r9, r62, r24, r9				# 14374
	fmul	r24, r44, r44				# 14426
	lw		r62, 2(r31)				# 14426
	faddmul	r9, r24, r62, r9				# 14354
	lw		r62, 3(r49)				# 3553
	cmpi	r62, 0
	beq		.b49155				# 14456
.b49156:
	fmul	r24, r52, r44				# 14522
	lw		r62, 9(r49)				# 5989
	lw		r31, 0(r62)				# 14522
	faddmul	r31, r24, r31, r9				# 14503
	fmul	r9, r44, r32				# 14556
	lw		r44, 1(r62)				# 14556
	faddmul	r9, r9, r44, r31				# 14503
	fmul	r44, r32, r52				# 14590
	lw		r62, 2(r62)				# 14590
	faddmul	r9, r44, r62, r9				# 14503
	cmpi	r55, 3
	beq		.b49158				# 17239
.b49159:
.b49157:
	fmul	r62, r6, r6				# 17295
	fmul	r9, r43, r9				# 17295
	fsub	r9, r62, r9				# 17287
	fcmp	r9, r15
	ble		.b49284				# 3158
.b49161:
	lw		r62, 6(r49)				# 3372
	cmpi	r62, 0
	beq		.b49163				# 17353
.b49164:
	fsqrt	r9, r9				# 227
	fadd	r62, r6, r9				# 17394
	lw		r9, 4(r11)				# 17394
	fmul	r62, r62, r9				# 17375
	lli		r9, solver_dist.2563				# 17375
	sw		r62, 0(r9)				# 17375
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r2, r9
	ble		.b49284				# 3098
.b49168:
	addi	r62, r0, 1				# 24006
	lwx		r9, r38, r62				# 24006
	cmpi	r9, -1
	beq		.b49284				# 24037
.b49172:
	lli		r44, and_net.2554				# 24078
	lwx		r52, r44, r9				# 24078
	addi	r44, r0, 0				# 23266
	lwx		r32, r52, r44				# 23266
	cmpi	r32, -1
	beq		.b49280				# 23266
.b49176:
	lwx		r6, r27, r32				# 17557
	lw		r55, 5(r6)				# 4475
	lw		r9, 0(r55)				# 17595
	fsub	r49, r18, r9				# 17586
	lw		r9, 1(r55)				# 17632
	fsub	r43, r16, r9				# 17623
	lw		r9, 2(r55)				# 17669
	fsub	r24, r60, r9				# 17660
	lwx		r31, r8, r32				# 17731
	lw		r55, 1(r6)				# 2994
	cmpi	r55, 1
	beq		.b49178				# 17793
.b49179:
	cmpi	r55, 2
	beq		.b49204				# 17874
.b49205:
	lw		r32, 0(r31)				# 17054
	fcmp	r32, r15
	beq		.b49208				# 3128
.b49209:
	lw		r40, 1(r31)				# 17128
	lw		r9, 2(r31)				# 17148
	fmul	r9, r9, r43				# 17128
	faddmul	r9, r40, r49, r9				# 17128
	lw		r40, 3(r31)				# 17168
	faddmul	r40, r40, r24, r9				# 17115
	fmul	r34, r49, r49				# 14374
	lw		r21, 4(r6)				# 3734
	lw		r45, 0(r21)				# 14374
	fmul	r58, r43, r43				# 14400
	lw		r9, 1(r21)				# 14400
	fmul	r9, r58, r9				# 14374
	faddmul	r9, r34, r45, r9				# 14374
	fmul	r34, r24, r24				# 14426
	lw		r58, 2(r21)				# 14426
	faddmul	r9, r34, r58, r9				# 14354
	lw		r58, 3(r6)				# 3553
	cmpi	r58, 0
	beq		.b49211				# 14456
.b49212:
	fmul	r34, r43, r24				# 14522
	lw		r58, 9(r6)				# 5989
	lw		r45, 0(r58)				# 14522
	faddmul	r34, r34, r45, r9				# 14503
	fmul	r9, r24, r49				# 14556
	lw		r24, 1(r58)				# 14556
	faddmul	r9, r9, r24, r34				# 14503
	fmul	r49, r49, r43				# 14590
	lw		r43, 2(r58)				# 14590
	faddmul	r9, r49, r43, r9				# 14503
	cmpi	r55, 3
	beq		.b49214				# 17239
.b49215:
.b49213:
	fmul	r49, r40, r40				# 17295
	fmul	r9, r32, r9				# 17295
	fsub	r49, r49, r9				# 17287
	fcmp	r49, r15
	ble		.b49216				# 3158
.b49217:
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49219				# 17353
.b49220:
	fsqrt	r9, r49				# 227
	fadd	r9, r40, r9				# 17394
	lw		r49, 4(r31)				# 17394
	fmul	r9, r9, r49				# 17375
	sw		r9, 0(r11)				# 17375
	lw		r49, 0(r11)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r49
	ble		.b49226				# 3098
.b49227:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r43, r49, r9				# 23516
	lli		r49, light.2545				# 23554
	lw		r9, 0(r49)				# 23554
	faddmul	r55, r9, r43, r18				# 23545
	lw		r9, 1(r49)				# 23613
	faddmul	r32, r9, r43, r16				# 23604
	lw		r9, 2(r49)				# 23672
	faddmul	r43, r9, r43, r60				# 23663
	addi	r49, r0, 0				# 23025
	lwx		r9, r52, r49				# 23025
	cmpi	r9, -1
	beq		.b49285				# 23052
.b49233:
	lwx		r31, r27, r9				# 23095
	lw		r6, 5(r31)				# 4475
	lw		r9, 0(r6)				# 22709
	fsub	r58, r55, r9				# 22700
	lw		r9, 1(r6)				# 22741
	fsub	r24, r32, r9				# 22732
	lw		r9, 2(r6)				# 22773
	fsub	r34, r43, r9				# 22764
	lw		r40, 1(r31)				# 2994
	cmpi	r40, 1
	beq		.b49235				# 22824
.b49236:
	cmpi	r40, 2
	beq		.b49248				# 22882
.b49249:
	fmul	r6, r58, r58				# 14374
	lw		r21, 4(r31)				# 3734
	lw		r45, 0(r21)				# 14374
	fmul	r22, r24, r24				# 14400
	lw		r9, 1(r21)				# 14400
	fmul	r9, r22, r9				# 14374
	faddmul	r6, r6, r45, r9				# 14374
	fmul	r45, r34, r34				# 14426
	lw		r9, 2(r21)				# 14426
	faddmul	r9, r45, r9, r6				# 14354
	lw		r6, 3(r31)				# 3553
	cmpi	r6, 0
	beq		.b49261				# 14456
.b49262:
	fmul	r21, r24, r34				# 14522
	lw		r45, 9(r31)				# 5989
	lw		r6, 0(r45)				# 14522
	faddmul	r6, r21, r6, r9				# 14503
	fmul	r34, r34, r58				# 14556
	lw		r9, 1(r45)				# 14556
	faddmul	r6, r34, r9, r6				# 14503
	fmul	r24, r58, r24				# 14590
	lw		r9, 2(r45)				# 14590
	faddmul	r9, r24, r9, r6				# 14503
	cmpi	r40, 3
	beq		.b49264				# 22583
.b49265:
	lw		r6, 6(r31)				# 3372
	fcmp	r15, r9
	ble		.b49267				# 3188
.b49268:
	addi	r9, r0, 1				# 3188
	cmpi	r6, 0
	beq		.b49270				# 765
.b49271:
	cmpi	r9, 0
	beq		.b49276				# 775
.b49278:
	addi	r44, r44, 1				# 23786
	lwx		r32, r52, r44				# 23266
	cmpi	r32, -1
	beq		.b49280				# 23266
	b		.b49176
.b49280:
	addi	r62, r62, 1				# 24216
	lwx		r9, r38, r62				# 24006
	cmpi	r9, -1
	beq		.b49284				# 24037
	b		.b49172
.b49284:
	addi	r26, r26, 1				# 24896
	lwx		r38, r25, r26				# 24323
	lw		r11, 0(r38)				# 24355
	cmpi	r11, -1
	beq		.b49401				# 24391
	b		.b49117
.b49401:
	lw		r9, 0(r20)				# 8078
	lw		r20, 0(r9)				# 1949
	lw		r26, 1(r9)				# 1967
	fmul	r62, r59, r26				# 1949
	faddmul	r62, r33, r20, r62				# 1949
	lw		r44, 2(r9)				# 1985
	faddmul	r62, r29, r44, r62				# 32566
	lw		r35, 2(r35)				# 8350
	fmul	r9, r35, r19				# 32670
	fmul	r62, r9, r62				# 32657
	fmul	r9, r1, r26				# 1949
	faddmul	r9, r48, r20, r9				# 1949
	faddmul	r9, r53, r44, r9				# 32719
	fmul	r35, r35, r9				# 32705
	fcmp	r62, r15
	ble		.b49403				# 3158
.b49405:
	lw		r26, 0(r10)				# 2129
	lw		r9, 0(r39)				# 2141
	faddmul	r9, r62, r9, r26				# 2117
	sw		r9, 0(r10)				# 2117
	lw		r26, 1(r10)				# 2171
	lw		r9, 1(r39)				# 2183
	faddmul	r9, r62, r9, r26				# 2159
	sw		r9, 1(r10)				# 2117
	lw		r26, 2(r10)				# 2213
	lw		r9, 2(r39)				# 2225
	faddmul	r9, r62, r9, r26				# 2201
	sw		r9, 2(r10)				# 2201
	fcmp	r35, r15
	ble		.b49107				# 3158
.b49407:
	fmul	r9, r35, r35				# 32023
	fmul	r62, r9, r9				# 32023
	lw		r9, 0(r10)				# 32078
	faddmul	r9, r62, r12, r9				# 32067
	sw		r9, 0(r10)				# 32067
	lw		r9, 1(r10)				# 32109
	faddmul	r9, r62, r12, r9				# 32098
	sw		r9, 1(r10)				# 32067
	lw		r9, 2(r10)				# 32140
	faddmul	r9, r62, r12, r9				# 32129
	sw		r9, 2(r10)				# 32129
	addi	r28, r28, -1				# 32856
	cmpi	r28, 0
	bge		.b48848				# 32237
	b		.b48846
.b49403:
	fcmp	r35, r15
	ble		.b49107				# 3158
	b		.b49407
.b49276:
	addi	r49, r49, 1				# 23162
	lwx		r9, r52, r49				# 23025
	cmpi	r9, -1
	beq		.b49285				# 23052
	b		.b49233
.b49285:
	addi	r49, r0, 1				# 24006
	lwx		r9, r38, r49				# 24006
	cmpi	r9, -1
	beq		.b49399				# 24037
.b49289:
	lli		r62, and_net.2554				# 24078
	lwx		r8, r62, r9				# 24078
	addi	r62, r0, 0				# 23266
	lwx		r18, r8, r62				# 23266
	cmpi	r18, -1
	beq		.b49397				# 23266
.b49293:
	lwx		r11, r27, r18				# 17557
	lw		r16, 0(r17)				# 17595
	lw		r44, 5(r11)				# 4475
	lw		r9, 0(r44)				# 17595
	fsub	r43, r16, r9				# 17586
	lw		r60, 1(r17)				# 17632
	lw		r9, 1(r44)				# 17632
	fsub	r32, r60, r9				# 17623
	lw		r52, 2(r17)				# 17669
	lw		r9, 2(r44)				# 17669
	fsub	r31, r52, r9				# 17660
	lli		r9, consts.2632				# 17731
	lwx		r18, r9, r18				# 17731
	lw		r24, 1(r11)				# 2994
	cmpi	r24, 1
	beq		.b49295				# 17793
.b49296:
	cmpi	r24, 2
	beq		.b49321				# 17874
.b49322:
	lw		r6, 0(r18)				# 17054
	fcmp	r6, r15
	beq		.b49325				# 3128
.b49326:
	lw		r44, 1(r18)				# 17128
	lw		r9, 2(r18)				# 17148
	fmul	r9, r9, r32				# 17128
	faddmul	r9, r44, r43, r9				# 17128
	lw		r44, 3(r18)				# 17168
	faddmul	r55, r44, r31, r9				# 17115
	fmul	r40, r43, r43				# 14374
	lw		r58, 4(r11)				# 3734
	lw		r44, 0(r58)				# 14374
	fmul	r9, r32, r32				# 14400
	lw		r34, 1(r58)				# 14400
	fmul	r9, r9, r34				# 14374
	faddmul	r9, r40, r44, r9				# 14374
	fmul	r44, r31, r31				# 14426
	lw		r40, 2(r58)				# 14426
	faddmul	r9, r44, r40, r9				# 14354
	lw		r44, 3(r11)				# 3553
	cmpi	r44, 0
	beq		.b49328				# 14456
.b49329:
	fmul	r44, r32, r31				# 14522
	lw		r58, 9(r11)				# 5989
	lw		r40, 0(r58)				# 14522
	faddmul	r40, r44, r40, r9				# 14503
	fmul	r9, r31, r43				# 14556
	lw		r44, 1(r58)				# 14556
	faddmul	r31, r9, r44, r40				# 14503
	fmul	r9, r43, r32				# 14590
	lw		r44, 2(r58)				# 14590
	faddmul	r9, r9, r44, r31				# 14503
	cmpi	r24, 3
	beq		.b49331				# 17239
.b49332:
.b49330:
	fmul	r44, r55, r55				# 17295
	fmul	r9, r6, r9				# 17295
	fsub	r44, r44, r9				# 17287
	fcmp	r44, r15
	ble		.b49333				# 3158
.b49334:
	lw		r9, 6(r11)				# 3372
	cmpi	r9, 0
	beq		.b49336				# 17353
.b49337:
	fsqrt	r9, r44				# 227
	fadd	r44, r55, r9				# 17394
	lw		r9, 4(r18)				# 17394
	fmul	r9, r44, r9				# 17375
	lli		r44, solver_dist.2563				# 17375
	sw		r9, 0(r44)				# 17375
.b49335:
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addis	r44, r0, 48716
	ori		r44, r44, 52429				# 23476
	fcmp	r44, r9
	ble		.b49343				# 3098
.b49344:
	addis	r44, r0, 15395
	ori		r44, r44, 55050				# 23524
	fadd	r44, r9, r44				# 23516
	lli		r18, light.2545				# 23554
	lw		r9, 0(r18)				# 23554
	faddmul	r16, r9, r44, r16				# 23545
	lw		r9, 1(r18)				# 23613
	faddmul	r11, r9, r44, r60				# 23604
	lw		r9, 2(r18)				# 23672
	faddmul	r18, r9, r44, r52				# 23663
	addi	r9, r0, 0				# 23025
	lwx		r44, r8, r9				# 23025
	cmpi	r44, -1
	beq		.b49107				# 23052
.b49350:
	lwx		r32, r27, r44				# 23095
	lw		r60, 5(r32)				# 4475
	lw		r44, 0(r60)				# 22709
	fsub	r6, r16, r44				# 22700
	lw		r44, 1(r60)				# 22741
	fsub	r31, r11, r44				# 22732
	lw		r44, 2(r60)				# 22773
	fsub	r55, r18, r44				# 22764
	lw		r43, 1(r32)				# 2994
	cmpi	r43, 1
	beq		.b49352				# 22824
.b49353:
	cmpi	r43, 2
	beq		.b49365				# 22882
.b49366:
	fmul	r40, r6, r6				# 14374
	lw		r24, 4(r32)				# 3734
	lw		r60, 0(r24)				# 14374
	fmul	r44, r31, r31				# 14400
	lw		r52, 1(r24)				# 14400
	fmul	r44, r44, r52				# 14374
	faddmul	r52, r40, r60, r44				# 14374
	fmul	r44, r55, r55				# 14426
	lw		r60, 2(r24)				# 14426
	faddmul	r44, r44, r60, r52				# 14354
	lw		r60, 3(r32)				# 3553
	cmpi	r60, 0
	beq		.b49378				# 14456
.b49379:
	fmul	r24, r31, r55				# 14522
	lw		r52, 9(r32)				# 5989
	lw		r60, 0(r52)				# 14522
	faddmul	r60, r24, r60, r44				# 14503
	fmul	r55, r55, r6				# 14556
	lw		r44, 1(r52)				# 14556
	faddmul	r44, r55, r44, r60				# 14503
	fmul	r55, r6, r31				# 14590
	lw		r60, 2(r52)				# 14590
	faddmul	r44, r55, r60, r44				# 14503
	cmpi	r43, 3
	beq		.b49381				# 22583
.b49382:
	lw		r60, 6(r32)				# 3372
	fcmp	r15, r44
	ble		.b49384				# 3188
.b49385:
	addi	r44, r0, 1				# 3188
	cmpi	r60, 0
	beq		.b49387				# 765
.b49388:
	cmpi	r44, 0
	beq		.b49393				# 775
.b49395:
	addi	r62, r62, 1				# 23786
	lwx		r18, r8, r62				# 23266
	cmpi	r18, -1
	beq		.b49397				# 23266
	b		.b49293
.b49397:
	addi	r49, r49, 1				# 24216
	lwx		r9, r38, r49				# 24006
	cmpi	r9, -1
	beq		.b49399				# 24037
	b		.b49289
.b49399:
	addi	r26, r26, 1				# 24833
	lwx		r38, r25, r26				# 24323
	lw		r11, 0(r38)				# 24355
	cmpi	r11, -1
	beq		.b49401				# 24391
	b		.b49117
.b49393:
	addi	r9, r9, 1				# 23162
	lwx		r44, r8, r9				# 23025
	cmpi	r44, -1
	beq		.b49107				# 23052
	b		.b49350
.b49387:
	cmpi	r44, 0
	beq		.b49395				# 22625
	b		.b49393
.b49384:
	addi	r44, r0, 0				# 3188
	cmpi	r60, 0
	beq		.b49387				# 765
	b		.b49388
.b49381:
	fsub	r44, r44, r54				# 22604
	lw		r60, 6(r32)				# 3372
	fcmp	r15, r44
	ble		.b49384				# 3188
	b		.b49385
.b49378:
	cmpi	r43, 3
	beq		.b49381				# 22583
	b		.b49382
.b49365:
	lw		r52, 4(r32)				# 4293
	lw		r60, 0(r52)				# 2037
	lw		r44, 1(r52)				# 2052
	fmul	r44, r44, r31				# 2037
	faddmul	r60, r60, r6, r44				# 2037
	lw		r44, 2(r52)				# 2067
	faddmul	r44, r44, r55, r60				# 22411
	lw		r60, 6(r32)				# 3372
	fcmp	r15, r44
	ble		.b49368				# 3188
.b49369:
	addi	r44, r0, 1				# 3188
	cmpi	r60, 0
	beq		.b49371				# 765
.b49372:
	cmpi	r44, 0
	beq		.b49393				# 775
	b		.b49395
.b49371:
	cmpi	r44, 0
	beq		.b49395				# 22459
	b		.b49393
.b49368:
	addi	r44, r0, 0				# 3188
	cmpi	r60, 0
	beq		.b49371				# 765
	b		.b49372
.b49352:
	fabs	r60, r6				# 322
	lw		r52, 4(r32)				# 3734
	lw		r44, 0(r52)				# 22178
	fcmp	r44, r60
	ble		.b49361				# 3098
.b49356:
	fabs	r60, r31				# 322
	lw		r44, 1(r52)				# 22224
	fcmp	r44, r60
	ble		.b49361				# 3098
.b49358:
	fabs	r44, r55				# 322
	lw		r60, 2(r52)				# 22261
	fcmp	r60, r44
	ble		.b49361				# 3098
.b49362:
	lw		r44, 6(r32)				# 3372
	cmpi	r44, 0
	beq		.b49393				# 23092
	b		.b49395
.b49361:
	lw		r44, 6(r32)				# 3372
	cmpi	r44, 0
	beq		.b49395				# 22348
	b		.b49393
.b49343:
	lw		r9, 6(r11)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
.b49346:
	addi	r62, r62, 1				# 23885
	lwx		r18, r8, r62				# 23266
	cmpi	r18, -1
	beq		.b49397				# 23266
	b		.b49293
.b49336:
	fsqrt	r9, r44				# 227
	fsub	r44, r55, r9				# 17458
	lw		r9, 4(r18)				# 17458
	fmul	r9, r44, r9				# 17439
	lli		r44, solver_dist.2563				# 17439
	sw		r9, 0(r44)				# 17439
	b		.b49335				# 17439
.b49333:
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	lw		r9, 6(r11)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
	b		.b49346
.b49331:
	fsub	r9, r9, r54				# 17260
	b		.b49330				# 17260
.b49328:
	cmpi	r24, 3
	beq		.b49331				# 17239
	b		.b49332
.b49325:
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	lw		r9, 6(r11)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
	b		.b49346
.b49321:
	lw		r9, 0(r18)				# 16870
	fcmp	r15, r9
	ble		.b49323				# 3188
.b49324:
	lw		r9, 1(r18)				# 16924
	lw		r44, 2(r18)				# 16944
	fmul	r44, r44, r32				# 16924
	faddmul	r9, r9, r43, r44				# 16924
	lw		r44, 3(r18)				# 16964
	faddmul	r44, r44, r31, r9				# 16899
	lli		r9, solver_dist.2563				# 16899
	sw		r44, 0(r9)				# 16899
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addis	r44, r0, 48716
	ori		r44, r44, 52429				# 23476
	fcmp	r44, r9
	ble		.b49343				# 3098
	b		.b49344
.b49323:
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	lw		r9, 6(r11)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
	b		.b49346
.b49295:
	lw		r9, 0(r18)				# 15996
	fsub	r44, r9, r43				# 15995
	lw		r9, 1(r18)				# 15995
	fmul	r40, r44, r9				# 15986
	lli		r58, v3.2630				# 16056
	lw		r24, 1(r58)				# 16056
	faddmul	r44, r40, r24, r32				# 16050
	fabs	r44, r44				# 322
	lw		r6, 4(r11)				# 3920
	lw		r55, 1(r6)				# 16043
	fcmp	r55, r44
	ble		.b49304				# 3098
.b49299:
	lw		r44, 2(r58)				# 16117
	faddmul	r44, r40, r44, r31				# 16111
	fabs	r44, r44				# 322
	lw		r34, 2(r6)				# 16104
	fcmp	r34, r44
	ble		.b49304				# 3098
.b49301:
	fcmp	r9, r15
	beq		.b49304				# 3128
.b49305:
	lli		r9, solver_dist.2563				# 16226
	sw		r40, 0(r9)				# 16226
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addis	r44, r0, 48716
	ori		r44, r44, 52429				# 23476
	fcmp	r44, r9
	ble		.b49343				# 3098
	b		.b49344
.b49304:
	lw		r9, 2(r18)				# 16269
	fsub	r9, r9, r32				# 16268
	lw		r34, 3(r18)				# 16268
	fmul	r45, r9, r34				# 16259
	lw		r40, 0(r58)				# 16330
	faddmul	r9, r45, r40, r43				# 16324
	fabs	r9, r9				# 322
	lw		r44, 0(r6)				# 16317
	fcmp	r44, r9
	ble		.b49313				# 3098
.b49308:
	lw		r9, 2(r58)				# 16391
	faddmul	r9, r45, r9, r31				# 16385
	fabs	r58, r9				# 322
	lw		r9, 2(r6)				# 16378
	fcmp	r9, r58
	ble		.b49313				# 3098
.b49310:
	fcmp	r34, r15
	beq		.b49313				# 3128
.b49314:
	lli		r9, solver_dist.2563				# 16500
	sw		r45, 0(r9)				# 16500
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addis	r44, r0, 48716
	ori		r44, r44, 52429				# 23476
	fcmp	r44, r9
	ble		.b49343				# 3098
	b		.b49344
.b49313:
	lw		r9, 4(r18)				# 16543
	fsub	r9, r9, r31				# 16542
	lw		r6, 5(r18)				# 16542
	fmul	r18, r9, r6				# 16533
	faddmul	r9, r18, r40, r43				# 16598
	fabs	r9, r9				# 322
	fcmp	r44, r9
	ble		.b49315				# 3098
.b49316:
	faddmul	r9, r18, r24, r32				# 16659
	fabs	r9, r9				# 322
	fcmp	r55, r9
	ble		.b49317				# 3098
.b49318:
	fcmp	r6, r15
	beq		.b49319				# 3128
.b49320:
	lli		r9, solver_dist.2563				# 16774
	sw		r18, 0(r9)				# 16774
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addis	r44, r0, 48716
	ori		r44, r44, 52429				# 23476
	fcmp	r44, r9
	ble		.b49343				# 3098
	b		.b49344
.b49319:
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	lw		r9, 6(r11)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
	b		.b49346
.b49317:
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	lw		r9, 6(r11)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
	b		.b49346
.b49315:
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	lw		r9, 6(r11)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
	b		.b49346
.b49270:
	cmpi	r9, 0
	beq		.b49278				# 22625
	b		.b49276
.b49267:
	addi	r9, r0, 0				# 3188
	cmpi	r6, 0
	beq		.b49270				# 765
	b		.b49271
.b49264:
	fsub	r9, r9, r54				# 22604
	lw		r6, 6(r31)				# 3372
	fcmp	r15, r9
	ble		.b49267				# 3188
	b		.b49268
.b49261:
	cmpi	r40, 3
	beq		.b49264				# 22583
	b		.b49265
.b49248:
	lw		r6, 4(r31)				# 4293
	lw		r40, 0(r6)				# 2037
	lw		r9, 1(r6)				# 2052
	fmul	r9, r9, r24				# 2037
	faddmul	r9, r40, r58, r9				# 2037
	lw		r6, 2(r6)				# 2067
	faddmul	r9, r6, r34, r9				# 22411
	lw		r6, 6(r31)				# 3372
	fcmp	r15, r9
	ble		.b49251				# 3188
.b49252:
	addi	r9, r0, 1				# 3188
	cmpi	r6, 0
	beq		.b49254				# 765
.b49255:
	cmpi	r9, 0
	beq		.b49276				# 775
	b		.b49278
.b49254:
	cmpi	r9, 0
	beq		.b49278				# 22459
	b		.b49276
.b49251:
	addi	r9, r0, 0				# 3188
	cmpi	r6, 0
	beq		.b49254				# 765
	b		.b49255
.b49235:
	fabs	r40, r58				# 322
	lw		r6, 4(r31)				# 3734
	lw		r9, 0(r6)				# 22178
	fcmp	r9, r40
	ble		.b49244				# 3098
.b49239:
	fabs	r9, r24				# 322
	lw		r24, 1(r6)				# 22224
	fcmp	r24, r9
	ble		.b49244				# 3098
.b49241:
	fabs	r9, r34				# 322
	lw		r6, 2(r6)				# 22261
	fcmp	r6, r9
	ble		.b49244				# 3098
.b49245:
	lw		r9, 6(r31)				# 3372
	cmpi	r9, 0
	beq		.b49276				# 23092
	b		.b49278
.b49244:
	lw		r9, 6(r31)				# 3372
	cmpi	r9, 0
	beq		.b49278				# 22348
	b		.b49276
.b49226:
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49280				# 23849
.b49229:
	addi	r44, r44, 1				# 23885
	lwx		r32, r52, r44				# 23266
	cmpi	r32, -1
	beq		.b49280				# 23266
	b		.b49176
.b49219:
	fsqrt	r9, r49				# 227
	fsub	r49, r40, r9				# 17458
	lw		r9, 4(r31)				# 17458
	fmul	r9, r49, r9				# 17439
	sw		r9, 0(r11)				# 17439
	lw		r49, 0(r11)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r49
	ble		.b49226				# 3098
	b		.b49227
.b49216:
	lw		r49, 0(r11)				# 23423
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49280				# 23849
	b		.b49229
.b49214:
	fsub	r9, r9, r54				# 17260
	b		.b49213				# 17260
.b49211:
	cmpi	r55, 3
	beq		.b49214				# 17239
	b		.b49215
.b49208:
	lw		r49, 0(r11)				# 23423
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49280				# 23849
	b		.b49229
.b49204:
	lw		r9, 0(r31)				# 16870
	fcmp	r15, r9
	ble		.b49206				# 3188
.b49207:
	lw		r9, 1(r31)				# 16924
	lw		r32, 2(r31)				# 16944
	fmul	r32, r32, r43				# 16924
	faddmul	r9, r9, r49, r32				# 16924
	lw		r49, 3(r31)				# 16964
	faddmul	r9, r49, r24, r9				# 16899
	sw		r9, 0(r11)				# 16899
	lw		r49, 0(r11)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r49
	ble		.b49226				# 3098
	b		.b49227
.b49206:
	lw		r49, 0(r11)				# 23423
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49280				# 23849
	b		.b49229
.b49178:
	lw		r9, 0(r31)				# 15996
	fsub	r9, r9, r49				# 15995
	lw		r45, 1(r31)				# 15995
	fmul	r58, r9, r45				# 15986
	lli		r40, v3.2630				# 16056
	lw		r55, 1(r40)				# 16056
	faddmul	r9, r58, r55, r43				# 16050
	fabs	r32, r9				# 322
	lw		r34, 4(r6)				# 3920
	lw		r9, 1(r34)				# 16043
	fcmp	r9, r32
	ble		.b49187				# 3098
.b49182:
	lw		r32, 2(r40)				# 16117
	faddmul	r32, r58, r32, r24				# 16111
	fabs	r21, r32				# 322
	lw		r32, 2(r34)				# 16104
	fcmp	r32, r21
	ble		.b49187				# 3098
.b49184:
	fcmp	r45, r15
	beq		.b49187				# 3128
.b49188:
	sw		r58, 0(r11)				# 16226
	lw		r49, 0(r11)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r49
	ble		.b49226				# 3098
	b		.b49227
.b49187:
	lw		r32, 2(r31)				# 16269
	fsub	r58, r32, r43				# 16268
	lw		r32, 3(r31)				# 16268
	fmul	r21, r58, r32				# 16259
	lw		r58, 0(r40)				# 16330
	faddmul	r45, r21, r58, r49				# 16324
	fabs	r22, r45				# 322
	lw		r45, 0(r34)				# 16317
	fcmp	r45, r22
	ble		.b49196				# 3098
.b49191:
	lw		r40, 2(r40)				# 16391
	faddmul	r40, r21, r40, r24				# 16385
	fabs	r22, r40				# 322
	lw		r40, 2(r34)				# 16378
	fcmp	r40, r22
	ble		.b49196				# 3098
.b49193:
	fcmp	r32, r15
	beq		.b49196				# 3128
.b49197:
	sw		r21, 0(r11)				# 16500
	lw		r49, 0(r11)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r49
	ble		.b49226				# 3098
	b		.b49227
.b49196:
	lw		r32, 4(r31)				# 16543
	fsub	r32, r32, r24				# 16542
	lw		r31, 5(r31)				# 16542
	fmul	r32, r32, r31				# 16533
	faddmul	r49, r32, r58, r49				# 16598
	fabs	r49, r49				# 322
	fcmp	r45, r49
	ble		.b49198				# 3098
.b49199:
	faddmul	r49, r32, r55, r43				# 16659
	fabs	r49, r49				# 322
	fcmp	r9, r49
	ble		.b49200				# 3098
.b49201:
	fcmp	r31, r15
	beq		.b49202				# 3128
.b49203:
	sw		r32, 0(r11)				# 16774
	lw		r49, 0(r11)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r49
	ble		.b49226				# 3098
	b		.b49227
.b49202:
	lw		r49, 0(r11)				# 23423
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49280				# 23849
	b		.b49229
.b49200:
	lw		r49, 0(r11)				# 23423
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49280				# 23849
	b		.b49229
.b49198:
	lw		r49, 0(r11)				# 23423
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49280				# 23849
	b		.b49229
.b49163:
	fsqrt	r9, r9				# 227
	fsub	r62, r6, r9				# 17458
	lw		r9, 4(r11)				# 17458
	fmul	r9, r62, r9				# 17439
	lli		r62, solver_dist.2563				# 17439
	sw		r9, 0(r62)				# 17439
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r2, r9
	ble		.b49284				# 3098
	b		.b49168
.b49158:
	fsub	r9, r9, r54				# 17260
	b		.b49157				# 17260
.b49155:
	cmpi	r55, 3
	beq		.b49158				# 17239
	b		.b49159
.b49148:
	lw		r9, 0(r11)				# 16870
	fcmp	r15, r9
	ble		.b49284				# 3188
.b49151:
	lw		r9, 1(r11)				# 16924
	lw		r62, 2(r11)				# 16944
	fmul	r62, r62, r52				# 16924
	faddmul	r9, r9, r32, r62				# 16924
	lw		r62, 3(r11)				# 16964
	faddmul	r62, r62, r44, r9				# 16899
	lli		r9, solver_dist.2563				# 16899
	sw		r62, 0(r9)				# 16899
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r2, r9
	ble		.b49284				# 3098
	b		.b49168
.b49122:
	lw		r9, 0(r11)				# 15996
	fsub	r9, r9, r32				# 15995
	lw		r43, 1(r11)				# 15995
	fmul	r9, r9, r43				# 15986
	lli		r55, v3.2630				# 16056
	lw		r6, 1(r55)				# 16056
	faddmul	r62, r9, r6, r52				# 16050
	fabs	r62, r62				# 322
	lw		r49, 4(r49)				# 3920
	lw		r31, 1(r49)				# 16043
	fcmp	r31, r62
	ble		.b49131				# 3098
.b49126:
	lw		r62, 2(r55)				# 16117
	faddmul	r62, r9, r62, r44				# 16111
	fabs	r24, r62				# 322
	lw		r62, 2(r49)				# 16104
	fcmp	r62, r24
	ble		.b49131				# 3098
.b49128:
	fcmp	r43, r15
	beq		.b49131				# 3128
.b49132:
	lli		r62, solver_dist.2563				# 16226
	sw		r9, 0(r62)				# 16226
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r2, r9
	ble		.b49284				# 3098
	b		.b49168
.b49131:
	lw		r9, 2(r11)				# 16269
	fsub	r9, r9, r52				# 16268
	lw		r43, 3(r11)				# 16268
	fmul	r40, r9, r43				# 16259
	lw		r24, 0(r55)				# 16330
	faddmul	r9, r40, r24, r32				# 16324
	fabs	r9, r9				# 322
	lw		r62, 0(r49)				# 16317
	fcmp	r62, r9
	ble		.b49140				# 3098
.b49135:
	lw		r9, 2(r55)				# 16391
	faddmul	r9, r40, r9, r44				# 16385
	fabs	r55, r9				# 322
	lw		r9, 2(r49)				# 16378
	fcmp	r9, r55
	ble		.b49140				# 3098
.b49137:
	fcmp	r43, r15
	beq		.b49140				# 3128
.b49141:
	lli		r9, solver_dist.2563				# 16500
	sw		r40, 0(r9)				# 16500
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r2, r9
	ble		.b49284				# 3098
	b		.b49168
.b49140:
	lw		r9, 4(r11)				# 16543
	fsub	r9, r9, r44				# 16542
	lw		r44, 5(r11)				# 16542
	fmul	r49, r9, r44				# 16533
	faddmul	r9, r49, r24, r32				# 16598
	fabs	r9, r9				# 322
	fcmp	r62, r9
	ble		.b49284				# 3098
.b49143:
	faddmul	r9, r49, r6, r52				# 16659
	fabs	r9, r9				# 322
	fcmp	r31, r9
	ble		.b49284				# 3098
.b49145:
	fcmp	r44, r15
	beq		.b49284				# 3128
.b49147:
	lli		r9, solver_dist.2563				# 16774
	sw		r49, 0(r9)				# 16774
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r2, r9
	ble		.b49284				# 3098
	b		.b49168
.b49103:
	addi	r62, r62, 1				# 23162
	lwx		r9, r11, r62				# 23025
	cmpi	r9, -1
	beq		.b49106				# 23052
	b		.b49060
.b49106:
	sw		r52, 0(r41)				# 27393
	sw		r60, 0(r17)				# 1162
	sw		r55, 1(r17)				# 1162
	sw		r43, 2(r17)				# 27393
	sw		r32, 0(r23)				# 27393
	sw		r8, 0(r50)				# 27485
	b		.b49052				# 27485
.b49097:
	cmpi	r9, 0
	beq		.b49052				# 22625
	b		.b49103
.b49094:
	addi	r9, r0, 0				# 3188
	cmpi	r6, 0
	beq		.b49097				# 765
	b		.b49098
.b49091:
	fsub	r9, r9, r54				# 22604
	lw		r6, 6(r31)				# 3372
	fcmp	r15, r9
	ble		.b49094				# 3188
	b		.b49095
.b49088:
	cmpi	r58, 3
	beq		.b49091				# 22583
	b		.b49092
.b49075:
	lw		r6, 4(r31)				# 4293
	lw		r58, 0(r6)				# 2037
	lw		r9, 1(r6)				# 2052
	fmul	r9, r9, r24				# 2037
	faddmul	r9, r58, r34, r9				# 2037
	lw		r6, 2(r6)				# 2067
	faddmul	r9, r6, r40, r9				# 22411
	lw		r6, 6(r31)				# 3372
	fcmp	r15, r9
	ble		.b49078				# 3188
.b49079:
	addi	r9, r0, 1				# 3188
	cmpi	r6, 0
	beq		.b49081				# 765
.b49082:
	cmpi	r9, 0
	beq		.b49103				# 775
	b		.b49052
.b49081:
	cmpi	r9, 0
	beq		.b49052				# 22459
	b		.b49103
.b49078:
	addi	r9, r0, 0				# 3188
	cmpi	r6, 0
	beq		.b49081				# 765
	b		.b49082
.b49062:
	fabs	r58, r34				# 322
	lw		r9, 4(r31)				# 3734
	lw		r6, 0(r9)				# 22178
	fcmp	r6, r58
	ble		.b49071				# 3098
.b49066:
	fabs	r24, r24				# 322
	lw		r6, 1(r9)				# 22224
	fcmp	r6, r24
	ble		.b49071				# 3098
.b49068:
	fabs	r6, r40				# 322
	lw		r9, 2(r9)				# 22261
	fcmp	r9, r6
	ble		.b49071				# 3098
.b49072:
	lw		r9, 6(r31)				# 3372
	cmpi	r9, 0
	beq		.b49103				# 23092
	b		.b49052
.b49071:
	lw		r9, 6(r31)				# 3372
	cmpi	r9, 0
	beq		.b49052				# 22348
	b		.b49103
.b49046:
	fsqrt	r9, r9				# 227
	fsub	r8, r8, r9				# 18540
	lw		r9, 4(r6)				# 18540
	fmul	r9, r8, r9				# 18521
	sw		r9, 0(r16)				# 18521
	addi	r8, r0, 1				# 18580
	lw		r60, 0(r16)				# 27058
	fcmp	r60, r15
	ble		.b49052				# 3098
	b		.b49054
.b49048:
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b49006				# 27653
.b49051:
	addi	r26, r26, 1				# 27691
	lw		r62, 0(r20)				# 8078
	lwx		r32, r11, r26				# 26915
	cmpi	r32, -1
	beq		.b49006				# 26952
	b		.b49009
.b49037:
	lw		r8, 0(r6)				# 18051
	fcmp	r15, r8
	ble		.b49048				# 3188
.b49040:
	lw		r9, 3(r24)				# 18099
	fmul	r9, r8, r9				# 18080
	sw		r9, 0(r16)				# 18080
	addi	r8, r0, 1				# 18129
	lw		r60, 0(r16)				# 27058
	fcmp	r60, r15
	ble		.b49052				# 3098
	b		.b49054
.b49011:
	lw		r9, 0(r6)				# 15996
	fsub	r9, r9, r60				# 15995
	lw		r58, 1(r6)				# 15995
	fmul	r9, r9, r58				# 15986
	lw		r43, 1(r62)				# 16056
	faddmul	r8, r9, r43, r31				# 16050
	fabs	r8, r8				# 322
	lw		r34, 4(r55)				# 3920
	lw		r24, 1(r34)				# 16043
	fcmp	r24, r8
	ble		.b49020				# 3098
.b49015:
	lw		r8, 2(r62)				# 16117
	faddmul	r8, r9, r8, r52				# 16111
	fabs	r8, r8				# 322
	lw		r40, 2(r34)				# 16104
	fcmp	r40, r8
	ble		.b49020				# 3098
.b49017:
	fcmp	r58, r15
	beq		.b49020				# 3128
.b49021:
	sw		r9, 0(r16)				# 16226
	addi	r8, r0, 1				# 16249
	lw		r60, 0(r16)				# 27058
	fcmp	r60, r15
	ble		.b49052				# 3098
	b		.b49054
.b49020:
	lw		r9, 2(r6)				# 16269
	fsub	r9, r9, r31				# 16268
	lw		r8, 3(r6)				# 16268
	fmul	r45, r9, r8				# 16259
	lw		r58, 0(r62)				# 16330
	faddmul	r9, r45, r58, r60				# 16324
	fabs	r9, r9				# 322
	lw		r40, 0(r34)				# 16317
	fcmp	r40, r9
	ble		.b49029				# 3098
.b49024:
	lw		r9, 2(r62)				# 16391
	faddmul	r9, r45, r9, r52				# 16385
	fabs	r21, r9				# 322
	lw		r9, 2(r34)				# 16378
	fcmp	r9, r21
	ble		.b49029				# 3098
.b49026:
	fcmp	r8, r15
	beq		.b49029				# 3128
.b49030:
	sw		r45, 0(r16)				# 16500
	addi	r8, r0, 2				# 16523
	lw		r60, 0(r16)				# 27058
	fcmp	r60, r15
	ble		.b49052				# 3098
	b		.b49054
.b49029:
	lw		r9, 4(r6)				# 16543
	fsub	r9, r9, r52				# 16542
	lw		r52, 5(r6)				# 16542
	fmul	r8, r9, r52				# 16533
	faddmul	r9, r8, r58, r60				# 16598
	fabs	r9, r9				# 322
	fcmp	r40, r9
	ble		.b49048				# 3098
.b49032:
	faddmul	r9, r8, r43, r31				# 16659
	fabs	r9, r9				# 322
	fcmp	r24, r9
	ble		.b49048				# 3098
.b49034:
	fcmp	r52, r15
	beq		.b49048				# 3128
.b49036:
	sw		r8, 0(r16)				# 16774
	addi	r8, r0, 3				# 16797
	lw		r60, 0(r16)				# 27058
	fcmp	r60, r15
	ble		.b49052				# 3098
	b		.b49054
.b48997:
	fsqrt	r9, r62				# 227
	fsub	r9, r49, r9				# 18540
	lw		r62, 4(r11)				# 18540
	fmul	r62, r9, r62				# 18521
	lli		r9, solver_dist.2563				# 18521
	sw		r62, 0(r9)				# 18521
	b		.b49000				# 28364
.b48988:
	lw		r62, 0(r11)				# 18051
	fcmp	r15, r62
	ble		.b48854				# 3188
.b48991:
	lw		r9, 3(r26)				# 18099
	fmul	r9, r62, r9				# 18080
	lli		r62, solver_dist.2563				# 18080
	sw		r9, 0(r62)				# 18080
	b		.b49000				# 28364
.b48962:
	lw		r55, 0(r20)				# 8078
	lw		r9, 0(r11)				# 15996
	fsub	r9, r9, r49				# 15995
	lw		r26, 1(r11)				# 15995
	fmul	r43, r9, r26				# 15986
	lw		r16, 1(r55)				# 16056
	faddmul	r9, r43, r16, r8				# 16050
	fabs	r9, r9				# 322
	lw		r62, 4(r52)				# 3920
	lw		r60, 1(r62)				# 16043
	fcmp	r60, r9
	ble		.b48971				# 3098
.b48966:
	lw		r9, 2(r55)				# 16117
	faddmul	r9, r43, r9, r32				# 16111
	fabs	r9, r9				# 322
	lw		r52, 2(r62)				# 16104
	fcmp	r52, r9
	ble		.b48971				# 3098
.b48968:
	fcmp	r26, r15
	beq		.b48971				# 3128
.b48972:
	lli		r9, solver_dist.2563				# 16226
	sw		r43, 0(r9)				# 16226
	b		.b49000				# 28364
.b48971:
	lw		r9, 2(r11)				# 16269
	fsub	r9, r9, r8				# 16268
	lw		r43, 3(r11)				# 16268
	fmul	r26, r9, r43				# 16259
	lw		r52, 0(r55)				# 16330
	faddmul	r9, r26, r52, r49				# 16324
	fabs	r9, r9				# 322
	lw		r6, 0(r62)				# 16317
	fcmp	r6, r9
	ble		.b48980				# 3098
.b48975:
	lw		r9, 2(r55)				# 16391
	faddmul	r9, r26, r9, r32				# 16385
	fabs	r55, r9				# 322
	lw		r9, 2(r62)				# 16378
	fcmp	r9, r55
	ble		.b48980				# 3098
.b48977:
	fcmp	r43, r15
	beq		.b48980				# 3128
.b48981:
	lli		r9, solver_dist.2563				# 16500
	sw		r26, 0(r9)				# 16500
	b		.b49000				# 28364
.b48980:
	lw		r9, 4(r11)				# 16543
	fsub	r9, r9, r32				# 16542
	lw		r26, 5(r11)				# 16542
	fmul	r62, r9, r26				# 16533
	faddmul	r9, r62, r52, r49				# 16598
	fabs	r9, r9				# 322
	fcmp	r6, r9
	ble		.b48854				# 3098
.b48983:
	faddmul	r9, r62, r16, r8				# 16659
	fabs	r9, r9				# 322
	fcmp	r60, r9
	ble		.b48854				# 3098
.b48985:
	fcmp	r26, r15
	beq		.b48854				# 3128
.b48987:
	lli		r9, solver_dist.2563				# 16774
	sw		r62, 0(r9)				# 16774
	b		.b49000				# 28364
.b48855:
	addi	r26, r0, 1				# 27829
	lwx		r62, r38, r26				# 27829
	cmpi	r62, -1
	beq		.b48854				# 27860
.b48859:
	lli		r9, and_net.2554				# 27885
	lwx		r18, r9, r62				# 27885
	addi	r9, r0, 0				# 26885
	lw		r49, 0(r20)				# 8078
	lwx		r11, r18, r9				# 26915
	cmpi	r11, -1
	beq		.b48860				# 26952
.b48863:
	lwx		r32, r27, r11				# 18636
	lw		r60, 10(r32)				# 6561
	lw		r55, 0(r60)				# 18698
	lw		r16, 1(r60)				# 18723
	lw		r6, 2(r60)				# 18748
	lw		r62, 1(r20)				# 8141
	lwx		r52, r62, r11				# 18807
	lw		r62, 1(r32)				# 2994
	cmpi	r62, 1
	beq		.b48865				# 18869
.b48866:
	cmpi	r62, 2
	beq		.b48891				# 18950
.b48892:
	lw		r62, 0(r52)				# 18204
	fcmp	r62, r15
	beq		.b48902				# 3128
.b48896:
	lw		r43, 1(r52)				# 18278
	lw		r8, 2(r52)				# 18298
	fmul	r8, r8, r16				# 18278
	faddmul	r16, r43, r55, r8				# 18278
	lw		r8, 3(r52)				# 18318
	faddmul	r16, r8, r6, r16				# 18265
	lw		r60, 3(r60)				# 18342
	fmul	r8, r16, r16				# 18377
	fmul	r62, r62, r60				# 18377
	fsub	r62, r8, r62				# 18369
	fcmp	r62, r15
	ble		.b48902				# 3158
.b48898:
	lw		r8, 6(r32)				# 3372
	cmpi	r8, 0
	beq		.b48900				# 18435
.b48901:
	fsqrt	r62, r62				# 227
	fadd	r62, r16, r62				# 18476
	lw		r8, 4(r52)				# 18476
	fmul	r62, r62, r8				# 18457
	lli		r8, solver_dist.2563				# 18457
	sw		r62, 0(r8)				# 18457
	addi	r8, r0, 1				# 18580
	lli		r62, solver_dist.2563				# 27058
	lw		r60, 0(r62)				# 27058
	fcmp	r60, r15
	ble		.b48906				# 3098
.b48908:
	lw		r62, 0(r41)				# 27125
	fcmp	r62, r60
	ble		.b48906				# 3098
.b48910:
	addis	r62, r0, 15395
	ori		r62, r62, 55050				# 27169
	fadd	r52, r60, r62				# 27161
	lw		r62, 0(r49)				# 27198
	faddmul	r60, r62, r52, r42				# 27189
	lw		r62, 1(r49)				# 27247
	faddmul	r32, r62, r52, r36				# 27238
	lw		r62, 2(r49)				# 27296
	faddmul	r16, r62, r52, r47				# 27287
	addi	r49, r0, 0				# 23025
	lwx		r62, r18, r49				# 23025
	cmpi	r62, -1
	beq		.b48960				# 23052
.b48914:
	lwx		r55, r27, r62				# 23095
	lw		r43, 5(r55)				# 4475
	lw		r62, 0(r43)				# 22709
	fsub	r31, r60, r62				# 22700
	lw		r62, 1(r43)				# 22741
	fsub	r24, r32, r62				# 22732
	lw		r62, 2(r43)				# 22773
	fsub	r6, r16, r62				# 22764
	lw		r40, 1(r55)				# 2994
	cmpi	r40, 1
	beq		.b48916				# 22824
.b48917:
	cmpi	r40, 2
	beq		.b48929				# 22882
.b48930:
	fmul	r34, r31, r31				# 14374
	lw		r58, 4(r55)				# 3734
	lw		r45, 0(r58)				# 14374
	fmul	r62, r24, r24				# 14400
	lw		r43, 1(r58)				# 14400
	fmul	r62, r62, r43				# 14374
	faddmul	r62, r34, r45, r62				# 14374
	fmul	r34, r6, r6				# 14426
	lw		r43, 2(r58)				# 14426
	faddmul	r62, r34, r43, r62				# 14354
	lw		r43, 3(r55)				# 3553
	cmpi	r43, 0
	beq		.b48942				# 14456
.b48943:
	fmul	r43, r24, r6				# 14522
	lw		r58, 9(r55)				# 5989
	lw		r34, 0(r58)				# 14522
	faddmul	r34, r43, r34, r62				# 14503
	fmul	r62, r6, r31				# 14556
	lw		r43, 1(r58)				# 14556
	faddmul	r62, r62, r43, r34				# 14503
	fmul	r43, r31, r24				# 14590
	lw		r6, 2(r58)				# 14590
	faddmul	r62, r43, r6, r62				# 14503
	cmpi	r40, 3
	beq		.b48945				# 22583
.b48946:
	lw		r43, 6(r55)				# 3372
	fcmp	r15, r62
	ble		.b48948				# 3188
.b48949:
	addi	r62, r0, 1				# 3188
	cmpi	r43, 0
	beq		.b48951				# 765
.b48952:
	cmpi	r62, 0
	beq		.b48957				# 775
.b48906:
	addi	r9, r9, 1				# 27573
	lw		r49, 0(r20)				# 8078
	lwx		r11, r18, r9				# 26915
	cmpi	r11, -1
	beq		.b48860				# 26952
	b		.b48863
.b48860:
	addi	r26, r26, 1				# 27971
	lwx		r62, r38, r26				# 27829
	cmpi	r62, -1
	beq		.b48854				# 27860
	b		.b48859
.b48957:
	addi	r49, r49, 1				# 23162
	lwx		r62, r18, r49				# 23025
	cmpi	r62, -1
	beq		.b48960				# 23052
	b		.b48914
.b48960:
	sw		r52, 0(r41)				# 27393
	sw		r60, 0(r17)				# 1162
	sw		r32, 1(r17)				# 1162
	sw		r16, 2(r17)				# 27393
	sw		r11, 0(r23)				# 27393
	sw		r8, 0(r50)				# 27485
	b		.b48906				# 27485
.b48951:
	cmpi	r62, 0
	beq		.b48906				# 22625
	b		.b48957
.b48948:
	addi	r62, r0, 0				# 3188
	cmpi	r43, 0
	beq		.b48951				# 765
	b		.b48952
.b48945:
	fsub	r62, r62, r54				# 22604
	lw		r43, 6(r55)				# 3372
	fcmp	r15, r62
	ble		.b48948				# 3188
	b		.b48949
.b48942:
	cmpi	r40, 3
	beq		.b48945				# 22583
	b		.b48946
.b48929:
	lw		r43, 4(r55)				# 4293
	lw		r40, 0(r43)				# 2037
	lw		r62, 1(r43)				# 2052
	fmul	r62, r62, r24				# 2037
	faddmul	r62, r40, r31, r62				# 2037
	lw		r43, 2(r43)				# 2067
	faddmul	r62, r43, r6, r62				# 22411
	lw		r43, 6(r55)				# 3372
	fcmp	r15, r62
	ble		.b48932				# 3188
.b48933:
	addi	r62, r0, 1				# 3188
	cmpi	r43, 0
	beq		.b48935				# 765
.b48936:
	cmpi	r62, 0
	beq		.b48957				# 775
	b		.b48906
.b48935:
	cmpi	r62, 0
	beq		.b48906				# 22459
	b		.b48957
.b48932:
	addi	r62, r0, 0				# 3188
	cmpi	r43, 0
	beq		.b48935				# 765
	b		.b48936
.b48916:
	fabs	r31, r31				# 322
	lw		r43, 4(r55)				# 3734
	lw		r62, 0(r43)				# 22178
	fcmp	r62, r31
	ble		.b48925				# 3098
.b48920:
	fabs	r62, r24				# 322
	lw		r31, 1(r43)				# 22224
	fcmp	r31, r62
	ble		.b48925				# 3098
.b48922:
	fabs	r62, r6				# 322
	lw		r43, 2(r43)				# 22261
	fcmp	r43, r62
	ble		.b48925				# 3098
.b48926:
	lw		r62, 6(r55)				# 3372
	cmpi	r62, 0
	beq		.b48957				# 23092
	b		.b48906
.b48925:
	lw		r62, 6(r55)				# 3372
	cmpi	r62, 0
	beq		.b48906				# 22348
	b		.b48957
.b48900:
	fsqrt	r62, r62				# 227
	fsub	r62, r16, r62				# 18540
	lw		r8, 4(r52)				# 18540
	fmul	r62, r62, r8				# 18521
	lli		r8, solver_dist.2563				# 18521
	sw		r62, 0(r8)				# 18521
	addi	r8, r0, 1				# 18580
	lli		r62, solver_dist.2563				# 27058
	lw		r60, 0(r62)				# 27058
	fcmp	r60, r15
	ble		.b48906				# 3098
	b		.b48908
.b48902:
	lw		r62, 6(r32)				# 3372
	cmpi	r62, 0
	beq		.b48860				# 27653
.b48905:
	addi	r9, r9, 1				# 27691
	lw		r49, 0(r20)				# 8078
	lwx		r11, r18, r9				# 26915
	cmpi	r11, -1
	beq		.b48860				# 26952
	b		.b48863
.b48891:
	lw		r8, 0(r52)				# 18051
	fcmp	r15, r8
	ble		.b48902				# 3188
.b48894:
	lw		r62, 3(r60)				# 18099
	fmul	r8, r8, r62				# 18080
	lli		r62, solver_dist.2563				# 18080
	sw		r8, 0(r62)				# 18080
	addi	r8, r0, 1				# 18129
	lli		r62, solver_dist.2563				# 27058
	lw		r60, 0(r62)				# 27058
	fcmp	r60, r15
	ble		.b48906				# 3098
	b		.b48908
.b48865:
	lw		r62, 0(r52)				# 15996
	fsub	r62, r62, r55				# 15995
	lw		r31, 1(r52)				# 15995
	fmul	r62, r62, r31				# 15986
	lw		r24, 1(r49)				# 16056
	faddmul	r8, r62, r24, r16				# 16050
	fabs	r8, r8				# 322
	lw		r40, 4(r32)				# 3920
	lw		r43, 1(r40)				# 16043
	fcmp	r43, r8
	ble		.b48874				# 3098
.b48869:
	lw		r8, 2(r49)				# 16117
	faddmul	r8, r62, r8, r6				# 16111
	fabs	r60, r8				# 322
	lw		r8, 2(r40)				# 16104
	fcmp	r8, r60
	ble		.b48874				# 3098
.b48871:
	fcmp	r31, r15
	beq		.b48874				# 3128
.b48875:
	lli		r8, solver_dist.2563				# 16226
	sw		r62, 0(r8)				# 16226
	addi	r8, r0, 1				# 16249
	lli		r62, solver_dist.2563				# 27058
	lw		r60, 0(r62)				# 27058
	fcmp	r60, r15
	ble		.b48906				# 3098
	b		.b48908
.b48874:
	lw		r62, 2(r52)				# 16269
	fsub	r62, r62, r16				# 16268
	lw		r31, 3(r52)				# 16268
	fmul	r8, r62, r31				# 16259
	lw		r58, 0(r49)				# 16330
	faddmul	r62, r8, r58, r55				# 16324
	fabs	r62, r62				# 322
	lw		r60, 0(r40)				# 16317
	fcmp	r60, r62
	ble		.b48883				# 3098
.b48878:
	lw		r62, 2(r49)				# 16391
	faddmul	r62, r8, r62, r6				# 16385
	fabs	r34, r62				# 322
	lw		r62, 2(r40)				# 16378
	fcmp	r62, r34
	ble		.b48883				# 3098
.b48880:
	fcmp	r31, r15
	beq		.b48883				# 3128
.b48884:
	lli		r62, solver_dist.2563				# 16500
	sw		r8, 0(r62)				# 16500
	addi	r8, r0, 2				# 16523
	lli		r62, solver_dist.2563				# 27058
	lw		r60, 0(r62)				# 27058
	fcmp	r60, r15
	ble		.b48906				# 3098
	b		.b48908
.b48883:
	lw		r62, 4(r52)				# 16543
	fsub	r62, r62, r6				# 16542
	lw		r52, 5(r52)				# 16542
	fmul	r8, r62, r52				# 16533
	faddmul	r62, r8, r58, r55				# 16598
	fabs	r62, r62				# 322
	fcmp	r60, r62
	ble		.b48902				# 3098
.b48886:
	faddmul	r62, r8, r24, r16				# 16659
	fabs	r62, r62				# 322
	fcmp	r43, r62
	ble		.b48902				# 3098
.b48888:
	fcmp	r52, r15
	beq		.b48902				# 3128
.b48890:
	lli		r62, solver_dist.2563				# 16774
	sw		r8, 0(r62)				# 16774
	addi	r8, r0, 3				# 16797
	lli		r62, solver_dist.2563				# 27058
	lw		r60, 0(r62)				# 27058
	fcmp	r60, r15
	ble		.b48906				# 3098
	b		.b48908
.b48833:
	lwx		r8, r27, r9				# 21445
	lw		r49, 10(r8)				# 6561
	lw		r20, 1(r8)				# 2994
	lw		r62, 5(r8)				# 4475
	lw		r28, 0(r62)				# 21561
	fsub	r28, r42, r28				# 21547
	sw		r28, 0(r49)				# 21547
	lw		r28, 1(r62)				# 21603
	fsub	r28, r36, r28				# 21589
	sw		r28, 1(r49)				# 21547
	lw		r28, 2(r62)				# 21645
	fsub	r44, r47, r28				# 21631
	sw		r44, 2(r49)				# 21547
	cmpi	r20, 2
	beq		.b48836				# 21673
.b48837:
	cmpi	r20, 2
	ble		.b48835				# 21798
.b48839:
	lw		r18, 0(r49)				# 21847
	lw		r26, 1(r49)				# 21847
	fmul	r62, r18, r18				# 14374
	lw		r35, 4(r8)				# 3734
	lw		r38, 0(r35)				# 14374
	fmul	r28, r26, r26				# 14400
	lw		r60, 1(r35)				# 14400
	fmul	r28, r28, r60				# 14374
	faddmul	r28, r62, r38, r28				# 14374
	fmul	r62, r44, r44				# 14426
	lw		r35, 2(r35)				# 14426
	faddmul	r28, r62, r35, r28				# 14354
	lw		r62, 3(r8)				# 3553
	cmpi	r62, 0
	beq		.b48841				# 14456
.b48842:
	fmul	r38, r26, r44				# 14522
	lw		r35, 9(r8)				# 5989
	lw		r62, 0(r35)				# 14522
	faddmul	r28, r38, r62, r28				# 14503
	fmul	r62, r44, r18				# 14556
	lw		r44, 1(r35)				# 14556
	faddmul	r62, r62, r44, r28				# 14503
	fmul	r26, r18, r26				# 14590
	lw		r28, 2(r35)				# 14590
	faddmul	r28, r26, r28, r62				# 14503
	cmpi	r20, 3
	beq		.b48844				# 21917
.b48845:
.b48843:
	sw		r28, 3(r49)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b48833				# 21420
	b		.b48831
.b48844:
	fsub	r28, r28, r54				# 21937
	b		.b48843				# 21937
.b48841:
	cmpi	r20, 3
	beq		.b48844				# 21917
	b		.b48845
.b48835:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b48833				# 21420
	b		.b48831
.b48836:
	lw		r62, 4(r8)				# 4293
	lw		r20, 0(r49)				# 21728
	lw		r28, 1(r49)				# 21728
	lw		r35, 0(r62)				# 2037
	lw		r26, 1(r62)				# 2052
	fmul	r28, r26, r28				# 2037
	faddmul	r26, r35, r20, r28				# 2037
	lw		r28, 2(r62)				# 2067
	faddmul	r28, r28, r44, r26				# 21713
	sw		r28, 3(r49)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b48833				# 21420
	b		.b48831
.b48826:
	fcmp	r26, r15
	ble		.b48823				# 3158
	b		.b48830
.b48698:
	addi	r28, r28, 1				# 23162
	lwx		r9, r49, r28				# 23025
	cmpi	r9, -1
	beq		.b48707				# 23052
	b		.b48655
.b48707:
	addi	r62, r0, 1				# 24006
	lwx		r9, r20, r62				# 24006
	cmpi	r9, -1
	beq		.b48821				# 24037
.b48711:
	lli		r28, and_net.2554				# 24078
	lwx		r44, r28, r9				# 24078
	addi	r26, r0, 0				# 23266
	lwx		r38, r44, r26				# 23266
	cmpi	r38, -1
	beq		.b48819				# 23266
.b48715:
	lwx		r18, r27, r38				# 17557
	lw		r9, 5(r18)				# 4475
	lw		r28, 0(r9)				# 17595
	fsub	r28, r42, r28				# 17586
	lw		r49, 1(r9)				# 17632
	fsub	r16, r36, r49				# 17623
	lw		r9, 2(r9)				# 17669
	fsub	r11, r47, r9				# 17660
	lli		r9, consts.2632				# 17731
	lwx		r60, r9, r38				# 17731
	lw		r32, 1(r18)				# 2994
	cmpi	r32, 1
	beq		.b48717				# 17793
.b48718:
	cmpi	r32, 2
	beq		.b48743				# 17874
.b48744:
	lw		r8, 0(r60)				# 17054
	fcmp	r8, r15
	beq		.b48747				# 3128
.b48748:
	lw		r38, 1(r60)				# 17128
	lw		r9, 2(r60)				# 17148
	fmul	r9, r9, r16				# 17128
	faddmul	r9, r38, r28, r9				# 17128
	lw		r38, 3(r60)				# 17168
	faddmul	r52, r38, r11, r9				# 17115
	fmul	r55, r28, r28				# 14374
	lw		r49, 4(r18)				# 3734
	lw		r38, 0(r49)				# 14374
	fmul	r9, r16, r16				# 14400
	lw		r43, 1(r49)				# 14400
	fmul	r9, r9, r43				# 14374
	faddmul	r9, r55, r38, r9				# 14374
	fmul	r38, r11, r11				# 14426
	lw		r49, 2(r49)				# 14426
	faddmul	r9, r38, r49, r9				# 14354
	lw		r38, 3(r18)				# 3553
	cmpi	r38, 0
	beq		.b48750				# 14456
.b48751:
	fmul	r38, r16, r11				# 14522
	lw		r49, 9(r18)				# 5989
	lw		r43, 0(r49)				# 14522
	faddmul	r9, r38, r43, r9				# 14503
	fmul	r11, r11, r28				# 14556
	lw		r38, 1(r49)				# 14556
	faddmul	r9, r11, r38, r9				# 14503
	fmul	r28, r28, r16				# 14590
	lw		r38, 2(r49)				# 14590
	faddmul	r9, r28, r38, r9				# 14503
	cmpi	r32, 3
	beq		.b48753				# 17239
.b48754:
.b48752:
	fmul	r28, r52, r52				# 17295
	fmul	r9, r8, r9				# 17295
	fsub	r28, r28, r9				# 17287
	fcmp	r28, r15
	ble		.b48755				# 3158
.b48756:
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48758				# 17353
.b48759:
	fsqrt	r9, r28				# 227
	fadd	r9, r52, r9				# 17394
	lw		r28, 4(r60)				# 17394
	fmul	r28, r9, r28				# 17375
	lli		r9, solver_dist.2563				# 17375
	sw		r28, 0(r9)				# 17375
.b48757:
	lli		r9, solver_dist.2563				# 23423
	lw		r28, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b48765				# 3098
.b48766:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r28, r28, r9				# 23516
	lli		r38, light.2545				# 23554
	lw		r9, 0(r38)				# 23554
	faddmul	r18, r9, r28, r42				# 23545
	lw		r9, 1(r38)				# 23613
	faddmul	r8, r9, r28, r36				# 23604
	lw		r9, 2(r38)				# 23672
	faddmul	r60, r9, r28, r47				# 23663
	addi	r9, r0, 0				# 23025
	lwx		r28, r44, r9				# 23025
	cmpi	r28, -1
	beq		.b48823				# 23052
.b48772:
	lwx		r16, r27, r28				# 23095
	lw		r49, 5(r16)				# 4475
	lw		r28, 0(r49)				# 22709
	fsub	r38, r18, r28				# 22700
	lw		r28, 1(r49)				# 22741
	fsub	r52, r8, r28				# 22732
	lw		r28, 2(r49)				# 22773
	fsub	r32, r60, r28				# 22764
	lw		r43, 1(r16)				# 2994
	cmpi	r43, 1
	beq		.b48774				# 22824
.b48775:
	cmpi	r43, 2
	beq		.b48787				# 22882
.b48788:
	fmul	r28, r38, r38				# 14374
	lw		r6, 4(r16)				# 3734
	lw		r55, 0(r6)				# 14374
	fmul	r49, r52, r52				# 14400
	lw		r11, 1(r6)				# 14400
	fmul	r49, r49, r11				# 14374
	faddmul	r49, r28, r55, r49				# 14374
	fmul	r28, r32, r32				# 14426
	lw		r11, 2(r6)				# 14426
	faddmul	r28, r28, r11, r49				# 14354
	lw		r49, 3(r16)				# 3553
	cmpi	r49, 0
	beq		.b48800				# 14456
.b48801:
	fmul	r49, r52, r32				# 14522
	lw		r11, 9(r16)				# 5989
	lw		r55, 0(r11)				# 14522
	faddmul	r55, r49, r55, r28				# 14503
	fmul	r49, r32, r38				# 14556
	lw		r28, 1(r11)				# 14556
	faddmul	r49, r49, r28, r55				# 14503
	fmul	r28, r38, r52				# 14590
	lw		r38, 2(r11)				# 14590
	faddmul	r28, r28, r38, r49				# 14503
	cmpi	r43, 3
	beq		.b48803				# 22583
.b48804:
	lw		r38, 6(r16)				# 3372
	fcmp	r15, r28
	ble		.b48806				# 3188
.b48807:
	addi	r28, r0, 1				# 3188
	cmpi	r38, 0
	beq		.b48809				# 765
.b48810:
	cmpi	r28, 0
	beq		.b48815				# 775
.b48817:
	addi	r26, r26, 1				# 23786
	lwx		r38, r44, r26				# 23266
	cmpi	r38, -1
	beq		.b48819				# 23266
	b		.b48715
.b48819:
	addi	r62, r62, 1				# 24216
	lwx		r9, r20, r62				# 24006
	cmpi	r9, -1
	beq		.b48821				# 24037
	b		.b48711
.b48821:
	addi	r35, r35, 1				# 24833
	lwx		r20, r25, r35				# 24323
	lw		r28, 0(r20)				# 24355
	cmpi	r28, -1
	beq		.b48824				# 24391
	b		.b48539
.b48815:
	addi	r9, r9, 1				# 23162
	lwx		r28, r44, r9				# 23025
	cmpi	r28, -1
	beq		.b48823				# 23052
	b		.b48772
.b48809:
	cmpi	r28, 0
	beq		.b48817				# 22625
	b		.b48815
.b48806:
	addi	r28, r0, 0				# 3188
	cmpi	r38, 0
	beq		.b48809				# 765
	b		.b48810
.b48803:
	fsub	r28, r28, r54				# 22604
	lw		r38, 6(r16)				# 3372
	fcmp	r15, r28
	ble		.b48806				# 3188
	b		.b48807
.b48800:
	cmpi	r43, 3
	beq		.b48803				# 22583
	b		.b48804
.b48787:
	lw		r49, 4(r16)				# 4293
	lw		r11, 0(r49)				# 2037
	lw		r28, 1(r49)				# 2052
	fmul	r28, r28, r52				# 2037
	faddmul	r28, r11, r38, r28				# 2037
	lw		r38, 2(r49)				# 2067
	faddmul	r28, r38, r32, r28				# 22411
	lw		r38, 6(r16)				# 3372
	fcmp	r15, r28
	ble		.b48790				# 3188
.b48791:
	addi	r28, r0, 1				# 3188
	cmpi	r38, 0
	beq		.b48793				# 765
.b48794:
	cmpi	r28, 0
	beq		.b48815				# 775
	b		.b48817
.b48793:
	cmpi	r28, 0
	beq		.b48817				# 22459
	b		.b48815
.b48790:
	addi	r28, r0, 0				# 3188
	cmpi	r38, 0
	beq		.b48793				# 765
	b		.b48794
.b48774:
	fabs	r28, r38				# 322
	lw		r49, 4(r16)				# 3734
	lw		r38, 0(r49)				# 22178
	fcmp	r38, r28
	ble		.b48783				# 3098
.b48778:
	fabs	r28, r52				# 322
	lw		r38, 1(r49)				# 22224
	fcmp	r38, r28
	ble		.b48783				# 3098
.b48780:
	fabs	r28, r32				# 322
	lw		r38, 2(r49)				# 22261
	fcmp	r38, r28
	ble		.b48783				# 3098
.b48784:
	lw		r28, 6(r16)				# 3372
	cmpi	r28, 0
	beq		.b48815				# 23092
	b		.b48817
.b48783:
	lw		r28, 6(r16)				# 3372
	cmpi	r28, 0
	beq		.b48817				# 22348
	b		.b48815
.b48765:
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
.b48768:
	addi	r26, r26, 1				# 23885
	lwx		r38, r44, r26				# 23266
	cmpi	r38, -1
	beq		.b48819				# 23266
	b		.b48715
.b48758:
	fsqrt	r9, r28				# 227
	fsub	r9, r52, r9				# 17458
	lw		r28, 4(r60)				# 17458
	fmul	r28, r9, r28				# 17439
	lli		r9, solver_dist.2563				# 17439
	sw		r28, 0(r9)				# 17439
	b		.b48757				# 17439
.b48755:
	lli		r9, solver_dist.2563				# 23423
	lw		r28, 0(r9)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
	b		.b48768
.b48753:
	fsub	r9, r9, r54				# 17260
	b		.b48752				# 17260
.b48750:
	cmpi	r32, 3
	beq		.b48753				# 17239
	b		.b48754
.b48747:
	lli		r9, solver_dist.2563				# 23423
	lw		r28, 0(r9)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
	b		.b48768
.b48743:
	lw		r9, 0(r60)				# 16870
	fcmp	r15, r9
	ble		.b48745				# 3188
.b48746:
	lw		r38, 1(r60)				# 16924
	lw		r9, 2(r60)				# 16944
	fmul	r9, r9, r16				# 16924
	faddmul	r28, r38, r28, r9				# 16924
	lw		r9, 3(r60)				# 16964
	faddmul	r28, r9, r11, r28				# 16899
	lli		r9, solver_dist.2563				# 16899
	sw		r28, 0(r9)				# 16899
	lli		r9, solver_dist.2563				# 23423
	lw		r28, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b48765				# 3098
	b		.b48766
.b48745:
	lli		r9, solver_dist.2563				# 23423
	lw		r28, 0(r9)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
	b		.b48768
.b48717:
	lw		r9, 0(r60)				# 15996
	fsub	r38, r9, r28				# 15995
	lw		r9, 1(r60)				# 15995
	fmul	r52, r38, r9				# 15986
	lli		r49, v3.2630				# 16056
	lw		r8, 1(r49)				# 16056
	faddmul	r38, r52, r8, r16				# 16050
	fabs	r38, r38				# 322
	lw		r55, 4(r18)				# 3920
	lw		r43, 1(r55)				# 16043
	fcmp	r43, r38
	ble		.b48726				# 3098
.b48721:
	lw		r38, 2(r49)				# 16117
	faddmul	r38, r52, r38, r11				# 16111
	fabs	r38, r38				# 322
	lw		r32, 2(r55)				# 16104
	fcmp	r32, r38
	ble		.b48726				# 3098
.b48723:
	fcmp	r9, r15
	beq		.b48726				# 3128
.b48727:
	lli		r9, solver_dist.2563				# 16226
	sw		r52, 0(r9)				# 16226
	lli		r9, solver_dist.2563				# 23423
	lw		r28, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b48765				# 3098
	b		.b48766
.b48726:
	lw		r9, 2(r60)				# 16269
	fsub	r9, r9, r16				# 16268
	lw		r52, 3(r60)				# 16268
	fmul	r38, r9, r52				# 16259
	lw		r32, 0(r49)				# 16330
	faddmul	r9, r38, r32, r28				# 16324
	fabs	r9, r9				# 322
	lw		r6, 0(r55)				# 16317
	fcmp	r6, r9
	ble		.b48735				# 3098
.b48730:
	lw		r9, 2(r49)				# 16391
	faddmul	r9, r38, r9, r11				# 16385
	fabs	r9, r9				# 322
	lw		r49, 2(r55)				# 16378
	fcmp	r49, r9
	ble		.b48735				# 3098
.b48732:
	fcmp	r52, r15
	beq		.b48735				# 3128
.b48736:
	lli		r9, solver_dist.2563				# 16500
	sw		r38, 0(r9)				# 16500
	lli		r9, solver_dist.2563				# 23423
	lw		r28, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b48765				# 3098
	b		.b48766
.b48735:
	lw		r9, 4(r60)				# 16543
	fsub	r9, r9, r11				# 16542
	lw		r49, 5(r60)				# 16542
	fmul	r38, r9, r49				# 16533
	faddmul	r9, r38, r32, r28				# 16598
	fabs	r9, r9				# 322
	fcmp	r6, r9
	ble		.b48737				# 3098
.b48738:
	faddmul	r9, r38, r8, r16				# 16659
	fabs	r9, r9				# 322
	fcmp	r43, r9
	ble		.b48739				# 3098
.b48740:
	fcmp	r49, r15
	beq		.b48741				# 3128
.b48742:
	lli		r9, solver_dist.2563				# 16774
	sw		r38, 0(r9)				# 16774
	lli		r9, solver_dist.2563				# 23423
	lw		r28, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b48765				# 3098
	b		.b48766
.b48741:
	lli		r9, solver_dist.2563				# 23423
	lw		r28, 0(r9)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
	b		.b48768
.b48739:
	lli		r9, solver_dist.2563				# 23423
	lw		r28, 0(r9)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
	b		.b48768
.b48737:
	lli		r9, solver_dist.2563				# 23423
	lw		r28, 0(r9)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
	b		.b48768
.b48692:
	cmpi	r9, 0
	beq		.b48700				# 22625
	b		.b48698
.b48689:
	addi	r9, r0, 0				# 3188
	cmpi	r8, 0
	beq		.b48692				# 765
	b		.b48693
.b48686:
	fsub	r9, r9, r54				# 22604
	lw		r8, 6(r52)				# 3372
	fcmp	r15, r9
	ble		.b48689				# 3188
	b		.b48690
.b48683:
	cmpi	r32, 3
	beq		.b48686				# 22583
	b		.b48687
.b48670:
	lw		r11, 4(r52)				# 4293
	lw		r8, 0(r11)				# 2037
	lw		r9, 1(r11)				# 2052
	fmul	r9, r9, r55				# 2037
	faddmul	r8, r8, r6, r9				# 2037
	lw		r9, 2(r11)				# 2067
	faddmul	r9, r9, r43, r8				# 22411
	lw		r8, 6(r52)				# 3372
	fcmp	r15, r9
	ble		.b48673				# 3188
.b48674:
	addi	r9, r0, 1				# 3188
	cmpi	r8, 0
	beq		.b48676				# 765
.b48677:
	cmpi	r9, 0
	beq		.b48698				# 775
	b		.b48700
.b48676:
	cmpi	r9, 0
	beq		.b48700				# 22459
	b		.b48698
.b48673:
	addi	r9, r0, 0				# 3188
	cmpi	r8, 0
	beq		.b48676				# 765
	b		.b48677
.b48657:
	fabs	r9, r6				# 322
	lw		r8, 4(r52)				# 3734
	lw		r11, 0(r8)				# 22178
	fcmp	r11, r9
	ble		.b48666				# 3098
.b48661:
	fabs	r9, r55				# 322
	lw		r11, 1(r8)				# 22224
	fcmp	r11, r9
	ble		.b48666				# 3098
.b48663:
	fabs	r9, r43				# 322
	lw		r8, 2(r8)				# 22261
	fcmp	r8, r9
	ble		.b48666				# 3098
.b48667:
	lw		r9, 6(r52)				# 3372
	cmpi	r9, 0
	beq		.b48698				# 23092
	b		.b48700
.b48666:
	lw		r9, 6(r52)				# 3372
	cmpi	r9, 0
	beq		.b48700				# 22348
	b		.b48698
.b48648:
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
.b48651:
	addi	r26, r26, 1				# 23885
	lwx		r8, r49, r26				# 23266
	cmpi	r8, -1
	beq		.b48702				# 23266
	b		.b48598
.b48641:
	fsqrt	r9, r9				# 227
	fsub	r28, r16, r9				# 17458
	lw		r9, 4(r60)				# 17458
	fmul	r9, r28, r9				# 17439
	sw		r9, 0(r38)				# 17439
	lw		r28, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b48648				# 3098
	b		.b48649
.b48638:
	lw		r28, 0(r38)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48636:
	fsub	r9, r9, r54				# 17260
	b		.b48635				# 17260
.b48633:
	cmpi	r6, 3
	beq		.b48636				# 17239
	b		.b48637
.b48630:
	lw		r28, 0(r38)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48626:
	lw		r9, 0(r60)				# 16870
	fcmp	r15, r9
	ble		.b48628				# 3188
.b48629:
	lw		r28, 1(r60)				# 16924
	lw		r9, 2(r60)				# 16944
	fmul	r9, r9, r32				# 16924
	faddmul	r9, r28, r11, r9				# 16924
	lw		r28, 3(r60)				# 16964
	faddmul	r9, r28, r52, r9				# 16899
	sw		r9, 0(r38)				# 16899
	lw		r28, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b48648				# 3098
	b		.b48649
.b48628:
	lw		r28, 0(r38)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48600:
	lw		r9, 0(r60)				# 15996
	fsub	r9, r9, r11				# 15995
	lw		r8, 1(r60)				# 15995
	fmul	r16, r9, r8				# 15986
	lli		r9, v3.2630				# 16056
	lw		r6, 1(r9)				# 16056
	faddmul	r28, r16, r6, r32				# 16050
	fabs	r43, r28				# 322
	lw		r31, 4(r18)				# 3920
	lw		r28, 1(r31)				# 16043
	fcmp	r28, r43
	ble		.b48609				# 3098
.b48604:
	lw		r43, 2(r9)				# 16117
	faddmul	r43, r16, r43, r52				# 16111
	fabs	r43, r43				# 322
	lw		r55, 2(r31)				# 16104
	fcmp	r55, r43
	ble		.b48609				# 3098
.b48606:
	fcmp	r8, r15
	beq		.b48609				# 3128
.b48610:
	sw		r16, 0(r38)				# 16226
	lw		r28, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b48648				# 3098
	b		.b48649
.b48609:
	lw		r8, 2(r60)				# 16269
	fsub	r8, r8, r32				# 16268
	lw		r55, 3(r60)				# 16268
	fmul	r43, r8, r55				# 16259
	lw		r16, 0(r9)				# 16330
	faddmul	r8, r43, r16, r11				# 16324
	fabs	r8, r8				# 322
	lw		r24, 0(r31)				# 16317
	fcmp	r24, r8
	ble		.b48618				# 3098
.b48613:
	lw		r9, 2(r9)				# 16391
	faddmul	r9, r43, r9, r52				# 16385
	fabs	r8, r9				# 322
	lw		r9, 2(r31)				# 16378
	fcmp	r9, r8
	ble		.b48618				# 3098
.b48615:
	fcmp	r55, r15
	beq		.b48618				# 3128
.b48619:
	sw		r43, 0(r38)				# 16500
	lw		r28, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b48648				# 3098
	b		.b48649
.b48618:
	lw		r9, 4(r60)				# 16543
	fsub	r9, r9, r52				# 16542
	lw		r8, 5(r60)				# 16542
	fmul	r60, r9, r8				# 16533
	faddmul	r9, r60, r16, r11				# 16598
	fabs	r9, r9				# 322
	fcmp	r24, r9
	ble		.b48620				# 3098
.b48621:
	faddmul	r9, r60, r6, r32				# 16659
	fabs	r9, r9				# 322
	fcmp	r28, r9
	ble		.b48622				# 3098
.b48623:
	fcmp	r8, r15
	beq		.b48624				# 3128
.b48625:
	sw		r60, 0(r38)				# 16774
	lw		r28, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r28
	ble		.b48648				# 3098
	b		.b48649
.b48624:
	lw		r28, 0(r38)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48622:
	lw		r28, 0(r38)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48620:
	lw		r28, 0(r38)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48585:
	fsqrt	r9, r9				# 227
	fsub	r28, r16, r9				# 17458
	lw		r9, 4(r38)				# 17458
	fmul	r28, r28, r9				# 17439
	lli		r9, solver_dist.2563				# 17439
	sw		r28, 0(r9)				# 17439
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r2, r9
	ble		.b48706				# 3098
	b		.b48590
.b48580:
	fsub	r9, r9, r54				# 17260
	b		.b48579				# 17260
.b48577:
	cmpi	r62, 3
	beq		.b48580				# 17239
	b		.b48581
.b48570:
	lw		r9, 0(r38)				# 16870
	fcmp	r15, r9
	ble		.b48706				# 3188
.b48573:
	lw		r9, 1(r38)				# 16924
	lw		r28, 2(r38)				# 16944
	fmul	r28, r28, r49				# 16924
	faddmul	r9, r9, r8, r28				# 16924
	lw		r28, 3(r38)				# 16964
	faddmul	r9, r28, r18, r9				# 16899
	lli		r28, solver_dist.2563				# 16899
	sw		r9, 0(r28)				# 16899
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r2, r9
	ble		.b48706				# 3098
	b		.b48590
.b48544:
	lw		r9, 0(r38)				# 15996
	fsub	r9, r9, r8				# 15995
	lw		r28, 1(r38)				# 15995
	fmul	r60, r9, r28				# 15986
	lli		r32, v3.2630				# 16056
	lw		r11, 1(r32)				# 16056
	faddmul	r9, r60, r11, r49				# 16050
	fabs	r9, r9				# 322
	lw		r52, 4(r26)				# 3920
	lw		r16, 1(r52)				# 16043
	fcmp	r16, r9
	ble		.b48553				# 3098
.b48548:
	lw		r9, 2(r32)				# 16117
	faddmul	r9, r60, r9, r18				# 16111
	fabs	r62, r9				# 322
	lw		r9, 2(r52)				# 16104
	fcmp	r9, r62
	ble		.b48553				# 3098
.b48550:
	fcmp	r28, r15
	beq		.b48553				# 3128
.b48554:
	lli		r9, solver_dist.2563				# 16226
	sw		r60, 0(r9)				# 16226
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r2, r9
	ble		.b48706				# 3098
	b		.b48590
.b48553:
	lw		r9, 2(r38)				# 16269
	fsub	r9, r9, r49				# 16268
	lw		r60, 3(r38)				# 16268
	fmul	r62, r9, r60				# 16259
	lw		r26, 0(r32)				# 16330
	faddmul	r9, r62, r26, r8				# 16324
	fabs	r9, r9				# 322
	lw		r28, 0(r52)				# 16317
	fcmp	r28, r9
	ble		.b48562				# 3098
.b48557:
	lw		r9, 2(r32)				# 16391
	faddmul	r9, r62, r9, r18				# 16385
	fabs	r9, r9				# 322
	lw		r52, 2(r52)				# 16378
	fcmp	r52, r9
	ble		.b48562				# 3098
.b48559:
	fcmp	r60, r15
	beq		.b48562				# 3128
.b48563:
	lli		r9, solver_dist.2563				# 16500
	sw		r62, 0(r9)				# 16500
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r2, r9
	ble		.b48706				# 3098
	b		.b48590
.b48562:
	lw		r9, 4(r38)				# 16543
	fsub	r9, r9, r18				# 16542
	lw		r38, 5(r38)				# 16542
	fmul	r62, r9, r38				# 16533
	faddmul	r9, r62, r26, r8				# 16598
	fabs	r9, r9				# 322
	fcmp	r28, r9
	ble		.b48706				# 3098
.b48565:
	faddmul	r9, r62, r11, r49				# 16659
	fabs	r9, r9				# 322
	fcmp	r16, r9
	ble		.b48706				# 3098
.b48567:
	fcmp	r38, r15
	beq		.b48706				# 3128
.b48569:
	lli		r9, solver_dist.2563				# 16774
	sw		r62, 0(r9)				# 16774
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r2, r9
	ble		.b48706				# 3098
	b		.b48590
.b48534:
	addi	r28, r0, 1				# 33698
	swx		r28, r13, r9				# 33698
	lw		r9, 4(r57)				# 7334
	lwx		r62, r9, r13				# 33761
	lw		r9, 0(r39)				# 1353
	sw		r9, 0(r62)				# 1353
	lw		r9, 1(r39)				# 1376
	sw		r9, 1(r62)				# 1353
	lw		r9, 2(r39)				# 1399
	sw		r9, 2(r62)				# 33761
	addis	r9, r0, 15232				# 33824
	fmul	r28, r9, r19				# 33799
	lw		r9, 0(r62)				# 2540
	fmul	r9, r9, r28				# 2528
	sw		r9, 0(r62)				# 2528
	lw		r9, 1(r62)				# 2573
	fmul	r9, r9, r28				# 2561
	sw		r9, 1(r62)				# 2528
	lw		r9, 2(r62)				# 2606
	fmul	r9, r9, r28				# 2594
	sw		r9, 2(r62)				# 33761
	lw		r9, 7(r57)				# 7939
	lwx		r9, r9, r13				# 33889
	lli		r62, nvector.2578				# 1353
	lw		r28, 0(r62)				# 1353
	sw		r28, 0(r9)				# 1353
	lw		r28, 1(r62)				# 1376
	sw		r28, 1(r9)				# 1353
	lw		r28, 2(r62)				# 1399
	sw		r28, 2(r9)				# 1399
	b		.b48533				# 1399
.b48522:
	lw		r50, 5(r29)				# 4475
	lw		r9, 0(r50)				# 31118
	fsub	r28, r42, r9				# 31117
	lw		r9, 4(r29)				# 3734
	lw		r26, 0(r9)				# 31144
	fsqrt	r26, r26				# 227
	fmul	r48, r28, r26				# 31108
	lw		r28, 2(r50)				# 31181
	fsub	r28, r47, r28				# 31180
	lw		r26, 2(r9)				# 31207
	fsqrt	r26, r26				# 227
	fmul	r26, r28, r26				# 31171
	fmul	r28, r26, r26				# 31243
	faddmul	r12, r48, r48, r28				# 31234
	fabs	r28, r48				# 322
	addis	r29, r0, 14545
	ori		r29, r29, 46871				# 31291
	fcmp	r29, r28
	ble		.b48525				# 3098
.b48526:
	addis	r26, r0, 16752				# 31320
.b48524:
	ffloor	r28, r26				# 765
	fsub	r28, r26, r28				# 31412
	lw		r26, 1(r50)				# 31456
	fsub	r26, r36, r26				# 31455
	lw		r9, 1(r9)				# 31482
	fsqrt	r9, r9				# 227
	fmul	r9, r26, r9				# 31446
	fabs	r26, r12				# 322
	fcmp	r29, r26
	ble		.b48528				# 3098
.b48529:
	addis	r9, r0, 16752				# 31556
.b48527:
	ffloor	r26, r9				# 765
	fsub	r26, r9, r26				# 31646
	addis	r48, r0, 15897
	ori		r48, r48, 39322				# 31690
	addis	r9, r0, 16128				# 31705
	fsub	r28, r9, r28				# 31699
	fmul	r28, r28, r28				# 31690
	fsub	r28, r48, r28				# 31690
	fsub	r9, r9, r26				# 31721
	fmul	r9, r9, r9				# 31690
	fsub	r9, r28, r9				# 31680
	fcmp	r15, r9
	ble		.b48531				# 3188
.b48532:
	addi	r9, r0, 0				# 31776
.b48530:
	addis	r28, r0, 17279				# 31817
	fmul	r9, r28, r9				# 31817
	addis	r28, r0, 16025
	ori		r28, r28, 39322				# 31817
	fdiv	r9, r9, r28				# 31796
	sw		r9, 2(r39)				# 31796
	b		.b48502				# 31796
.b48531:
	b		.b48530				# 31785
.b48528:
	fdiv	r9, r9, r12				# 31582
	fabs	r9, r9				# 322
	fatan	r9, r9				# 440
	addis	r26, r0, 16880				# 31603
	fmul	r26, r9, r26				# 31602
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 31602
	fdiv	r9, r26, r9				# 31602
	b		.b48527				# 31602
.b48525:
	fdiv	r28, r26, r48				# 31347
	fabs	r28, r28				# 322
	fatan	r26, r28				# 440
	addis	r28, r0, 16880				# 31369
	fmul	r28, r26, r28				# 31368
	addis	r26, r0, 16457
	ori		r26, r26, 4059				# 31368
	fdiv	r26, r28, r26				# 31368
	b		.b48524				# 31368
.b48520:
	lw		r26, 5(r29)				# 4475
	lw		r9, 0(r26)				# 30784
	fsub	r28, r42, r9				# 30775
	lw		r9, 2(r26)				# 30823
	fsub	r9, r47, r9				# 30814
	fmul	r9, r9, r9				# 30868
	faddmul	r9, r28, r28, r9				# 30862
	fsqrt	r28, r9				# 227
	addis	r9, r0, 16672				# 30862
	fdiv	r9, r28, r9				# 30853
	ffloor	r28, r9				# 765
	fsub	r28, r9, r28				# 30915
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 30915
	fmul	r9, r28, r9				# 30905
	fcos	r9, r9				# 133
	fmul	r9, r9, r9				# 30954
	addis	r26, r0, 17279				# 30987
	fmul	r28, r9, r26				# 30987
	sw		r28, 1(r39)				# 30987
	fsub	r9, r54, r9				# 31049
	fmul	r9, r9, r26				# 31028
	sw		r9, 2(r39)				# 31028
	b		.b48502				# 31028
.b48518:
	addis	r9, r0, 16000				# 30625
	fmul	r9, r36, r9				# 30620
	fsin	r9, r9				# 40
	fmul	r26, r9, r9				# 30605
	addis	r9, r0, 17279				# 30650
	fmul	r28, r9, r26				# 30650
	sw		r28, 0(r39)				# 30650
	fsub	r28, r54, r26				# 30711
	fmul	r9, r9, r28				# 30690
	sw		r9, 1(r39)				# 30690
	b		.b48502				# 30690
.b48503:
	lw		r9, 5(r29)				# 4475
	lw		r28, 0(r9)				# 30169
	fsub	r29, r42, r28				# 30160
	addis	r26, r0, 15692
	ori		r26, r26, 52429				# 30234
	fmul	r28, r29, r26				# 30227
	ffloor	r28, r28				# 765
	addis	r48, r0, 16800				# 30226
	fmul	r28, r28, r48				# 30217
	fsub	r28, r29, r28				# 30264
	addis	r50, r0, 16672				# 30264
	fcmp	r50, r28
	ble		.b48506				# 3098
.b48507:
	addi	r28, r0, 1				# 3098
.b48505:
	lw		r9, 2(r9)				# 30308
	fsub	r29, r47, r9				# 30299
	fmul	r9, r29, r26				# 30366
	ffloor	r9, r9				# 765
	fmul	r9, r9, r48				# 30356
	fsub	r9, r29, r9				# 30404
	fcmp	r50, r9
	ble		.b48509				# 3098
.b48510:
	addi	r9, r0, 1				# 3098
	cmpi	r28, 0
	beq		.b48512				# 30467
.b48513:
	cmpi	r9, 0
	beq		.b48516				# 30489
.b48517:
	addis	r9, r0, 17279				# 30503
	sw		r9, 1(r39)				# 30439
	b		.b48502				# 30439
.b48516:
	addi	r9, r0, 0				# 30514
	sw		r9, 1(r39)				# 30439
	b		.b48502				# 30439
.b48512:
	cmpi	r9, 0
	beq		.b48514				# 30532
.b48515:
	addi	r9, r0, 0				# 30546
	sw		r9, 1(r39)				# 30439
	b		.b48502				# 30439
.b48514:
	addis	r9, r0, 17279				# 30555
	sw		r9, 1(r39)				# 30439
	b		.b48502				# 30439
.b48509:
	addi	r9, r0, 0				# 3098
	cmpi	r28, 0
	beq		.b48512				# 30467
	b		.b48513
.b48506:
	addi	r28, r0, 0				# 3098
	b		.b48505				# 3098
.b48500:
	fdiv	r26, r54, r48				# 1837
	b		.b48497				# 1837
.b48498:
	addis	r26, r0, 16256				# 1801
	b		.b48497				# 1801
.b48495:
	lli		r26, nvector.2578				# 29409
	sw		r12, 0(r26)				# 29409
	sw		r9, 1(r26)				# 29409
	sw		r28, 2(r26)				# 29455
	b		.b48494				# 29455
.b48492:
	lw		r26, 4(r29)				# 3734
	lw		r9, 0(r26)				# 28996
	fneg	r9, r9				# 28981
	lli		r28, nvector.2578				# 28981
	sw		r9, 0(r28)				# 28981
	lw		r9, 1(r26)				# 29034
	fneg	r9, r9				# 29019
	sw		r9, 1(r28)				# 28981
	lw		r9, 2(r26)				# 29071
	fneg	r9, r9				# 29056
	sw		r9, 2(r28)				# 29056
	b		.b48484				# 29056
.b48485:
	lli		r9, intsec_rectside.2566				# 28828
	lw		r9, 0(r9)				# 28828
	lli		r26, nvector.2578				# 1232
	sw		r15, 0(r26)				# 1232
	sw		r15, 1(r26)				# 1232
	sw		r15, 2(r26)				# 28868
	addi	r28, r9, -1				# 28888
	lwx		r9, r7, r28				# 28918
	fcmp	r9, r15
	beq		.b48488				# 3128
.b48489:
	fcmp	r9, r15
	ble		.b48490				# 3158
.b48491:
	addis	r9, r0, 16256				# 856
	fneg	r9, r9				# 28888
	swx		r9, r28, r26				# 28888
	b		.b48484				# 28888
.b48490:
	addis	r9, r0, 49024				# 868
	fneg	r9, r9				# 28888
	swx		r9, r28, r26				# 28888
	b		.b48484				# 28888
.b48488:
	addi	r9, r0, 0				# 828
	fneg	r9, r9				# 28888
	swx		r9, r28, r26				# 28888
	b		.b48484				# 28888
.b48478:
	addi	r9, r0, -1				# 34715
	swx		r9, r13, r46				# 34715
	cmpi	r13, 0
	beq		.b48077				# 34748
.b48481:
	lw		r28, 0(r7)				# 1949
	lli		r62, light.2545				# 1949
	lw		r51, 0(r62)				# 1949
	lw		r61, 1(r7)				# 1967
	lw		r9, 1(r62)				# 1967
	fmul	r9, r61, r9				# 1949
	faddmul	r28, r28, r51, r9				# 1949
	lw		r9, 2(r7)				# 1985
	lw		r61, 2(r62)				# 1985
	faddmul	r9, r9, r61, r28				# 34778
	fneg	r9, r9				# 34769
	fcmp	r9, r15
	ble		.b48077				# 3158
.b48483:
	fmul	r61, r9, r9				# 34848
	fmul	r9, r61, r9				# 34848
	fmul	r61, r9, r30				# 34848
	lli		r9, beam.2548				# 34848
	lw		r28, 0(r9)				# 34848
	lw		r9, 0(r10)				# 34902
	faddmul	r9, r61, r28, r9				# 34891
	sw		r9, 0(r10)				# 34891
	lw		r9, 1(r10)				# 34933
	faddmul	r9, r61, r28, r9				# 34922
	sw		r9, 1(r10)				# 34891
	lw		r9, 2(r10)				# 34964
	faddmul	r9, r61, r28, r9				# 34953
	sw		r9, 2(r10)				# 34953
	b		.b48077				# 34953
.b48469:
	addi	r9, r9, 1				# 23162
	lwx		r62, r12, r9				# 23025
	cmpi	r62, -1
	beq		.b48472				# 23052
	b		.b48426
.b48472:
	sw		r27, 0(r41)				# 25478
	lli		r9, intersection_point.2572				# 1162
	sw		r1, 0(r9)				# 1162
	sw		r36, 1(r9)				# 1162
	sw		r39, 2(r9)				# 25478
	lli		r9, intersected_object_id.2575				# 25478
	sw		r53, 0(r9)				# 25478
	lli		r9, intsec_rectside.2566				# 25570
	sw		r56, 0(r9)				# 25570
	b		.b48418				# 25570
.b48463:
	cmpi	r62, 0
	beq		.b48418				# 22625
	b		.b48469
.b48460:
	addi	r62, r0, 0				# 3188
	cmpi	r33, 0
	beq		.b48463				# 765
	b		.b48464
.b48457:
	fsub	r62, r62, r54				# 22604
	lw		r33, 6(r59)				# 3372
	fcmp	r15, r62
	ble		.b48460				# 3188
	b		.b48461
.b48454:
	cmpi	r44, 3
	beq		.b48457				# 22583
	b		.b48458
.b48441:
	lw		r42, 4(r59)				# 4293
	lw		r47, 0(r42)				# 2037
	lw		r62, 1(r42)				# 2052
	fmul	r62, r62, r2				# 2037
	faddmul	r62, r47, r20, r62				# 2037
	lw		r42, 2(r42)				# 2067
	faddmul	r62, r42, r33, r62				# 22411
	lw		r33, 6(r59)				# 3372
	fcmp	r15, r62
	ble		.b48444				# 3188
.b48445:
	addi	r62, r0, 1				# 3188
	cmpi	r33, 0
	beq		.b48447				# 765
.b48448:
	cmpi	r62, 0
	beq		.b48469				# 775
	b		.b48418
.b48447:
	cmpi	r62, 0
	beq		.b48418				# 22459
	b		.b48469
.b48444:
	addi	r62, r0, 0				# 3188
	cmpi	r33, 0
	beq		.b48447				# 765
	b		.b48448
.b48428:
	fabs	r47, r20				# 322
	lw		r62, 4(r59)				# 3734
	lw		r42, 0(r62)				# 22178
	fcmp	r42, r47
	ble		.b48437				# 3098
.b48432:
	fabs	r42, r2				# 322
	lw		r47, 1(r62)				# 22224
	fcmp	r47, r42
	ble		.b48437				# 3098
.b48434:
	fabs	r33, r33				# 322
	lw		r62, 2(r62)				# 22261
	fcmp	r62, r33
	ble		.b48437				# 3098
.b48438:
	lw		r62, 6(r59)				# 3372
	cmpi	r62, 0
	beq		.b48469				# 23092
	b		.b48418
.b48437:
	lw		r62, 6(r59)				# 3372
	cmpi	r62, 0
	beq		.b48418				# 22348
	b		.b48469
.b48412:
	fneg	r9, r9				# 3025
	b		.b48411				# 3025
.b48414:
	lw		r9, 6(r33)				# 3372
	cmpi	r9, 0
	beq		.b48327				# 25732
.b48417:
	addi	r28, r28, 1				# 25769
	lwx		r53, r12, r28				# 25005
	cmpi	r53, -1
	beq		.b48327				# 25042
	b		.b48330
.b48407:
	fsub	r9, r9, r54				# 15303
	b		.b48406				# 15303
.b48404:
	cmpi	r42, 3
	beq		.b48407				# 15282
	b		.b48408
.b48401:
	b		.b48400				# 14803
.b48396:
	fcmp	r39, r15
	beq		.b48414				# 3128
	b		.b48399
.b48391:
	lw		r39, 4(r33)				# 4293
	lw		r62, 0(r7)				# 1949
	lw		r42, 0(r39)				# 1949
	lw		r9, 1(r7)				# 1967
	lw		r47, 1(r39)				# 1967
	fmul	r9, r9, r47				# 1949
	faddmul	r62, r62, r42, r9				# 1949
	lw		r27, 2(r7)				# 1985
	lw		r9, 2(r39)				# 1985
	faddmul	r39, r27, r9, r62				# 14187
	fcmp	r39, r15
	ble		.b48414				# 3158
.b48394:
	fmul	r62, r47, r56				# 2037
	faddmul	r62, r42, r1, r62				# 2037
	faddmul	r9, r9, r36, r62				# 14262
	fneg	r9, r9				# 14262
	fdiv	r9, r9, r39				# 14243
	sw		r9, 0(r50)				# 14243
	addi	r56, r0, 1				# 14302
	lw		r9, 0(r50)				# 25149
	fcmp	r9, r15
	ble		.b48418				# 3098
	b		.b48420
.b48332:
	lw		r27, 0(r7)				# 13452
	fcmp	r27, r15
	beq		.b48352				# 3128
.b48336:
	lw		r39, 4(r33)				# 4293
	lw		r62, 6(r33)				# 3372
	fcmp	r15, r27
	ble		.b48338				# 3188
.b48339:
	addi	r9, r0, 1				# 3188
	cmpi	r62, 0
	beq		.b48341				# 765
.b48342:
	cmpi	r9, 0
	beq		.b48343				# 775
.b48344:
	lw		r62, 0(r39)				# 13527
	fneg	r62, r62				# 3025
.b48345:
	fsub	r9, r62, r1				# 13603
	fdiv	r42, r9, r27				# 13594
	lw		r9, 1(r7)				# 13649
	faddmul	r9, r42, r9, r56				# 13643
	fabs	r9, r9				# 322
	lw		r62, 1(r39)				# 13636
	fcmp	r62, r9
	ble		.b48352				# 3098
.b48349:
	lw		r9, 2(r7)				# 13709
	faddmul	r9, r42, r9, r36				# 13703
	fabs	r9, r9				# 322
	lw		r62, 2(r39)				# 13696
	fcmp	r62, r9
	ble		.b48352				# 3098
.b48351:
	sw		r42, 0(r50)				# 13756
	addi	r56, r0, 1				# 13917
	lw		r9, 0(r50)				# 25149
	fcmp	r9, r15
	ble		.b48418				# 3098
	b		.b48420
.b48352:
	lw		r47, 1(r7)				# 13452
	fcmp	r47, r15
	beq		.b48372				# 3128
.b48356:
	lw		r39, 4(r33)				# 4293
	lw		r9, 6(r33)				# 3372
	fcmp	r15, r47
	ble		.b48358				# 3188
.b48359:
	addi	r62, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48361				# 765
.b48362:
	cmpi	r62, 0
	beq		.b48363				# 775
.b48364:
	lw		r9, 1(r39)				# 13527
	fneg	r9, r9				# 3025
.b48365:
	fsub	r9, r9, r56				# 13603
	fdiv	r9, r9, r47				# 13594
	lw		r62, 2(r7)				# 13649
	faddmul	r62, r9, r62, r36				# 13643
	fabs	r62, r62				# 322
	lw		r42, 2(r39)				# 13636
	fcmp	r42, r62
	ble		.b48372				# 3098
.b48369:
	faddmul	r62, r9, r27, r1				# 13703
	fabs	r62, r62				# 322
	lw		r39, 0(r39)				# 13696
	fcmp	r39, r62
	ble		.b48372				# 3098
.b48371:
	sw		r9, 0(r50)				# 13756
	addi	r56, r0, 2				# 13980
	lw		r9, 0(r50)				# 25149
	fcmp	r9, r15
	ble		.b48418				# 3098
	b		.b48420
.b48372:
	lw		r39, 2(r7)				# 13452
	fcmp	r39, r15
	beq		.b48414				# 3128
.b48375:
	lw		r42, 4(r33)				# 4293
	lw		r62, 6(r33)				# 3372
	fcmp	r15, r39
	ble		.b48377				# 3188
.b48378:
	addi	r9, r0, 1				# 3188
	cmpi	r62, 0
	beq		.b48380				# 765
.b48381:
	cmpi	r9, 0
	beq		.b48382				# 775
.b48383:
	lw		r62, 2(r42)				# 13527
	fneg	r62, r62				# 3025
.b48384:
	fsub	r9, r62, r36				# 13603
	fdiv	r39, r9, r39				# 13594
	faddmul	r9, r39, r27, r1				# 13643
	fabs	r9, r9				# 322
	lw		r62, 0(r42)				# 13636
	fcmp	r62, r9
	ble		.b48414				# 3098
.b48388:
	faddmul	r9, r39, r47, r56				# 13703
	fabs	r62, r9				# 322
	lw		r9, 1(r42)				# 13696
	fcmp	r9, r62
	ble		.b48414				# 3098
.b48390:
	sw		r39, 0(r50)				# 13756
	addi	r56, r0, 3				# 14043
	lw		r9, 0(r50)				# 25149
	fcmp	r9, r15
	ble		.b48418				# 3098
	b		.b48420
.b48382:
	lw		r62, 2(r42)				# 13527
	b		.b48384				# 918
.b48380:
	lw		r62, 2(r42)				# 13527
	cmpi	r9, 0
	beq		.b48385				# 905
.b48386:
	b		.b48384				# 918
.b48385:
	fneg	r62, r62				# 3025
	b		.b48384				# 3025
.b48377:
	addi	r9, r0, 0				# 3188
	cmpi	r62, 0
	beq		.b48380				# 765
	b		.b48381
.b48363:
	lw		r9, 1(r39)				# 13527
	b		.b48365				# 918
.b48361:
	lw		r9, 1(r39)				# 13527
	cmpi	r62, 0
	beq		.b48366				# 905
.b48367:
	b		.b48365				# 918
.b48366:
	fneg	r9, r9				# 3025
	b		.b48365				# 3025
.b48358:
	addi	r62, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48361				# 765
	b		.b48362
.b48343:
	lw		r62, 0(r39)				# 13527
	b		.b48345				# 918
.b48341:
	lw		r62, 0(r39)				# 13527
	cmpi	r9, 0
	beq		.b48346				# 905
.b48347:
	b		.b48345				# 918
.b48346:
	fneg	r62, r62				# 3025
	b		.b48345				# 3025
.b48338:
	addi	r9, r0, 0				# 3188
	cmpi	r62, 0
	beq		.b48341				# 765
	b		.b48342
.b48318:
	fneg	r9, r9				# 3025
	b		.b48317				# 3025
.b48313:
	fsub	r9, r9, r54				# 15303
	b		.b48312				# 15303
.b48310:
	cmpi	r42, 3
	beq		.b48313				# 15282
	b		.b48314
.b48307:
	b		.b48306				# 14803
.b48302:
	fcmp	r62, r15
	beq		.b48085				# 3128
	b		.b48305
.b48297:
	lw		r62, 4(r33)				# 4293
	lw		r39, 0(r7)				# 1949
	lw		r17, 0(r62)				# 1949
	lw		r9, 1(r7)				# 1967
	lw		r28, 1(r62)				# 1967
	fmul	r9, r9, r28				# 1949
	faddmul	r39, r39, r17, r9				# 1949
	lw		r9, 2(r7)				# 1985
	lw		r62, 2(r62)				# 1985
	faddmul	r39, r9, r62, r39				# 14187
	fcmp	r39, r15
	ble		.b48085				# 3158
.b48300:
	fmul	r9, r28, r12				# 2037
	faddmul	r9, r17, r50, r9				# 2037
	faddmul	r9, r62, r53, r9				# 14262
	fneg	r9, r9				# 14262
	fdiv	r9, r9, r39				# 14243
	lli		r28, solver_dist.2563				# 14243
	sw		r9, 0(r28)				# 14243
	b		.b48321				# 26416
.b48238:
	lw		r42, 0(r7)				# 13452
	fcmp	r42, r15
	beq		.b48258				# 3128
.b48242:
	lw		r62, 4(r33)				# 4293
	lw		r28, 6(r33)				# 3372
	fcmp	r15, r42
	ble		.b48244				# 3188
.b48245:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b48247				# 765
.b48248:
	cmpi	r9, 0
	beq		.b48249				# 775
.b48250:
	lw		r28, 0(r62)				# 13527
	fneg	r28, r28				# 3025
.b48251:
	fsub	r9, r28, r50				# 13603
	fdiv	r39, r9, r42				# 13594
	lw		r9, 1(r7)				# 13649
	faddmul	r9, r39, r9, r12				# 13643
	fabs	r28, r9				# 322
	lw		r9, 1(r62)				# 13636
	fcmp	r9, r28
	ble		.b48258				# 3098
.b48255:
	lw		r9, 2(r7)				# 13709
	faddmul	r9, r39, r9, r53				# 13703
	fabs	r28, r9				# 322
	lw		r9, 2(r62)				# 13696
	fcmp	r9, r28
	ble		.b48258				# 3098
.b48257:
	lli		r9, solver_dist.2563				# 13756
	sw		r39, 0(r9)				# 13756
	b		.b48321				# 13860
.b48258:
	lw		r39, 1(r7)				# 13452
	fcmp	r39, r15
	beq		.b48278				# 3128
.b48262:
	lw		r62, 4(r33)				# 4293
	lw		r28, 6(r33)				# 3372
	fcmp	r15, r39
	ble		.b48264				# 3188
.b48265:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b48267				# 765
.b48268:
	cmpi	r9, 0
	beq		.b48269				# 775
.b48270:
	lw		r28, 1(r62)				# 13527
	fneg	r28, r28				# 3025
.b48271:
	fsub	r9, r28, r12				# 13603
	fdiv	r9, r9, r39				# 13594
	lw		r28, 2(r7)				# 13649
	faddmul	r28, r9, r28, r53				# 13643
	fabs	r28, r28				# 322
	lw		r17, 2(r62)				# 13636
	fcmp	r17, r28
	ble		.b48278				# 3098
.b48275:
	faddmul	r28, r9, r42, r50				# 13703
	fabs	r17, r28				# 322
	lw		r28, 0(r62)				# 13696
	fcmp	r28, r17
	ble		.b48278				# 3098
.b48277:
	lli		r28, solver_dist.2563				# 13756
	sw		r9, 0(r28)				# 13756
	b		.b48321				# 13928
.b48278:
	lw		r62, 2(r7)				# 13452
	fcmp	r62, r15
	beq		.b48085				# 3128
.b48281:
	lw		r17, 4(r33)				# 4293
	lw		r9, 6(r33)				# 3372
	fcmp	r15, r62
	ble		.b48283				# 3188
.b48284:
	addi	r28, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48286				# 765
.b48287:
	cmpi	r28, 0
	beq		.b48288				# 775
.b48289:
	lw		r9, 2(r17)				# 13527
	fneg	r9, r9				# 3025
.b48290:
	fsub	r9, r9, r53				# 13603
	fdiv	r9, r9, r62				# 13594
	faddmul	r28, r9, r42, r50				# 13643
	fabs	r62, r28				# 322
	lw		r28, 0(r17)				# 13636
	fcmp	r28, r62
	ble		.b48085				# 3098
.b48294:
	faddmul	r28, r9, r39, r12				# 13703
	fabs	r62, r28				# 322
	lw		r28, 1(r17)				# 13696
	fcmp	r28, r62
	ble		.b48085				# 3098
.b48296:
	lli		r28, solver_dist.2563				# 13756
	sw		r9, 0(r28)				# 13756
	b		.b48321				# 26416
.b48288:
	lw		r9, 2(r17)				# 13527
	b		.b48290				# 918
.b48286:
	lw		r9, 2(r17)				# 13527
	cmpi	r28, 0
	beq		.b48291				# 905
.b48292:
	b		.b48290				# 918
.b48291:
	fneg	r9, r9				# 3025
	b		.b48290				# 3025
.b48283:
	addi	r28, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48286				# 765
	b		.b48287
.b48269:
	lw		r28, 1(r62)				# 13527
	b		.b48271				# 918
.b48267:
	lw		r28, 1(r62)				# 13527
	cmpi	r9, 0
	beq		.b48272				# 905
.b48273:
	b		.b48271				# 918
.b48272:
	fneg	r28, r28				# 3025
	b		.b48271				# 3025
.b48264:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b48267				# 765
	b		.b48268
.b48249:
	lw		r28, 0(r62)				# 13527
	b		.b48251				# 918
.b48247:
	lw		r28, 0(r62)				# 13527
	cmpi	r9, 0
	beq		.b48252				# 905
.b48253:
	b		.b48251				# 918
.b48252:
	fneg	r28, r28				# 3025
	b		.b48251				# 3025
.b48244:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b48247				# 765
	b		.b48248
.b48086:
	addi	r48, r0, 1				# 25897
	lwx		r9, r23, r48				# 25897
	cmpi	r9, -1
	beq		.b48085				# 25928
.b48090:
	lli		r28, and_net.2554				# 25953
	lwx		r29, r28, r9				# 25953
	addi	r62, r0, 0				# 25005
	lwx		r14, r29, r62				# 25005
	cmpi	r14, -1
	beq		.b48091				# 25042
.b48094:
	lli		r17, objects.2536				# 15582
	lwx		r1, r17, r14				# 15582
	lw		r42, 0(r37)				# 15621
	lw		r28, 5(r1)				# 4475
	lw		r9, 0(r28)				# 15621
	fsub	r36, r42, r9				# 15611
	lw		r56, 1(r37)				# 15659
	lw		r9, 1(r28)				# 15659
	fsub	r27, r56, r9				# 15649
	lw		r33, 2(r37)				# 15697
	lw		r9, 2(r28)				# 15697
	fsub	r19, r33, r9				# 15687
	lw		r47, 1(r1)				# 2994
	cmpi	r47, 1
	beq		.b48096				# 15753
.b48097:
	cmpi	r47, 2
	beq		.b48155				# 15817
.b48156:
	lw		r53, 0(r7)				# 15037
	lw		r50, 1(r7)				# 15037
	lw		r59, 2(r7)				# 15037
	fmul	r39, r53, r53				# 14374
	lw		r12, 4(r1)				# 3734
	lw		r2, 0(r12)				# 14374
	fmul	r28, r50, r50				# 14400
	lw		r9, 1(r12)				# 14400
	fmul	r28, r28, r9				# 14374
	faddmul	r39, r39, r2, r28				# 14374
	fmul	r28, r59, r59				# 14426
	lw		r35, 2(r12)				# 14426
	faddmul	r28, r28, r35, r39				# 14354
	lw		r20, 3(r1)				# 3553
	cmpi	r20, 0
	beq		.b48160				# 14456
.b48161:
	fmul	r44, r50, r59				# 14522
	lw		r39, 9(r1)				# 5989
	lw		r12, 0(r39)				# 14522
	faddmul	r28, r44, r12, r28				# 14503
	fmul	r12, r59, r53				# 14556
	lw		r44, 1(r39)				# 14556
	faddmul	r12, r12, r44, r28				# 14503
	fmul	r28, r53, r50				# 14590
	lw		r39, 2(r39)				# 14590
	faddmul	r28, r28, r39, r12				# 14503
	fcmp	r28, r15
	beq		.b48178				# 3128
.b48163:
	fmul	r12, r53, r36				# 14680
	fmul	r39, r50, r27				# 14713
	fmul	r39, r39, r9				# 14680
	faddmul	r12, r12, r2, r39				# 14680
	fmul	r39, r59, r19				# 14746
	faddmul	r39, r39, r35, r12				# 14660
	cmpi	r20, 0
	beq		.b48165				# 14777
.b48166:
	fmul	r12, r50, r19				# 14851
	faddmul	r38, r59, r27, r12				# 14850
	lw		r12, 9(r1)				# 5989
	lw		r49, 0(r12)				# 14850
	fmul	r59, r59, r36				# 14895
	faddmul	r44, r53, r19, r59				# 14894
	lw		r59, 1(r12)				# 14894
	fmul	r59, r44, r59				# 14850
	faddmul	r59, r38, r49, r59				# 14850
	fmul	r50, r50, r36				# 14939
	faddmul	r50, r53, r27, r50				# 14938
	lw		r12, 2(r12)				# 14938
	faddmul	r50, r50, r12, r59				# 14837
	fhalf	r50, r50				# 14824
	fadd	r39, r39, r50				# 14824
.b48164:
	fmul	r50, r36, r36				# 14374
	fmul	r12, r27, r27				# 14400
	fmul	r9, r12, r9				# 14374
	faddmul	r9, r50, r2, r9				# 14374
	fmul	r50, r19, r19				# 14426
	faddmul	r9, r50, r35, r9				# 14354
	cmpi	r20, 0
	beq		.b48168				# 14456
.b48169:
	fmul	r50, r27, r19				# 14522
	lw		r12, 9(r1)				# 5989
	lw		r53, 0(r12)				# 14522
	faddmul	r50, r50, r53, r9				# 14503
	fmul	r9, r19, r36				# 14556
	lw		r19, 1(r12)				# 14556
	faddmul	r9, r9, r19, r50				# 14503
	fmul	r50, r36, r27				# 14590
	lw		r19, 2(r12)				# 14590
	faddmul	r9, r50, r19, r9				# 14503
	cmpi	r47, 3
	beq		.b48171				# 15282
.b48172:
.b48170:
	fmul	r19, r39, r39				# 15338
	fmul	r9, r28, r9				# 15338
	fsub	r9, r19, r9				# 15330
	fcmp	r9, r15
	ble		.b48178				# 3158
.b48174:
	fsqrt	r9, r9				# 227
	lw		r19, 6(r1)				# 3372
	cmpi	r19, 0
	beq		.b48176				# 15425
.b48177:
.b48175:
	fsub	r9, r9, r39				# 15491
	fdiv	r28, r9, r28				# 15472
	lli		r9, solver_dist.2563				# 15472
	sw		r28, 0(r9)				# 15472
	addi	r1, r0, 1				# 15510
	lli		r9, solver_dist.2563				# 25149
	lw		r28, 0(r9)				# 25149
	fcmp	r28, r15
	ble		.b48182				# 3098
.b48184:
	lw		r9, 0(r41)				# 25216
	fcmp	r9, r28
	ble		.b48182				# 3098
.b48186:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 25260
	fadd	r36, r28, r9				# 25252
	lw		r9, 0(r7)				# 25289
	faddmul	r39, r9, r36, r42				# 25280
	lw		r9, 1(r7)				# 25336
	faddmul	r27, r9, r36, r56				# 25327
	lw		r9, 2(r7)				# 25383
	faddmul	r56, r9, r36, r33				# 25374
	addi	r28, r0, 0				# 23025
	lwx		r9, r29, r28				# 23025
	cmpi	r9, -1
	beq		.b48236				# 23052
.b48190:
	lwx		r33, r17, r9				# 23095
	lw		r19, 5(r33)				# 4475
	lw		r9, 0(r19)				# 22709
	fsub	r42, r39, r9				# 22700
	lw		r9, 1(r19)				# 22741
	fsub	r59, r27, r9				# 22732
	lw		r9, 2(r19)				# 22773
	fsub	r53, r56, r9				# 22764
	lw		r12, 1(r33)				# 2994
	cmpi	r12, 1
	beq		.b48192				# 22824
.b48193:
	cmpi	r12, 2
	beq		.b48205				# 22882
.b48206:
	fmul	r47, r42, r42				# 14374
	lw		r50, 4(r33)				# 3734
	lw		r19, 0(r50)				# 14374
	fmul	r9, r59, r59				# 14400
	lw		r2, 1(r50)				# 14400
	fmul	r9, r9, r2				# 14374
	faddmul	r19, r47, r19, r9				# 14374
	fmul	r47, r53, r53				# 14426
	lw		r9, 2(r50)				# 14426
	faddmul	r9, r47, r9, r19				# 14354
	lw		r19, 3(r33)				# 3553
	cmpi	r19, 0
	beq		.b48218				# 14456
.b48219:
	fmul	r19, r59, r53				# 14522
	lw		r47, 9(r33)				# 5989
	lw		r50, 0(r47)				# 14522
	faddmul	r50, r19, r50, r9				# 14503
	fmul	r9, r53, r42				# 14556
	lw		r19, 1(r47)				# 14556
	faddmul	r9, r9, r19, r50				# 14503
	fmul	r50, r42, r59				# 14590
	lw		r19, 2(r47)				# 14590
	faddmul	r9, r50, r19, r9				# 14503
	cmpi	r12, 3
	beq		.b48221				# 22583
.b48222:
	lw		r19, 6(r33)				# 3372
	fcmp	r15, r9
	ble		.b48224				# 3188
.b48225:
	addi	r9, r0, 1				# 3188
	cmpi	r19, 0
	beq		.b48227				# 765
.b48228:
	cmpi	r9, 0
	beq		.b48233				# 775
.b48182:
	addi	r62, r62, 1				# 25658
	lwx		r14, r29, r62				# 25005
	cmpi	r14, -1
	beq		.b48091				# 25042
	b		.b48094
.b48091:
	addi	r48, r48, 1				# 26034
	lwx		r9, r23, r48				# 25897
	cmpi	r9, -1
	beq		.b48085				# 25928
	b		.b48090
.b48233:
	addi	r28, r28, 1				# 23162
	lwx		r9, r29, r28				# 23025
	cmpi	r9, -1
	beq		.b48236				# 23052
	b		.b48190
.b48236:
	sw		r36, 0(r41)				# 25478
	lli		r9, intersection_point.2572				# 1162
	sw		r39, 0(r9)				# 1162
	sw		r27, 1(r9)				# 1162
	sw		r56, 2(r9)				# 25478
	lli		r9, intersected_object_id.2575				# 25478
	sw		r14, 0(r9)				# 25478
	lli		r9, intsec_rectside.2566				# 25570
	sw		r1, 0(r9)				# 25570
	b		.b48182				# 25570
.b48227:
	cmpi	r9, 0
	beq		.b48182				# 22625
	b		.b48233
.b48224:
	addi	r9, r0, 0				# 3188
	cmpi	r19, 0
	beq		.b48227				# 765
	b		.b48228
.b48221:
	fsub	r9, r9, r54				# 22604
	lw		r19, 6(r33)				# 3372
	fcmp	r15, r9
	ble		.b48224				# 3188
	b		.b48225
.b48218:
	cmpi	r12, 3
	beq		.b48221				# 22583
	b		.b48222
.b48205:
	lw		r19, 4(r33)				# 4293
	lw		r50, 0(r19)				# 2037
	lw		r9, 1(r19)				# 2052
	fmul	r9, r9, r59				# 2037
	faddmul	r50, r50, r42, r9				# 2037
	lw		r9, 2(r19)				# 2067
	faddmul	r9, r9, r53, r50				# 22411
	lw		r19, 6(r33)				# 3372
	fcmp	r15, r9
	ble		.b48208				# 3188
.b48209:
	addi	r9, r0, 1				# 3188
	cmpi	r19, 0
	beq		.b48211				# 765
.b48212:
	cmpi	r9, 0
	beq		.b48233				# 775
	b		.b48182
.b48211:
	cmpi	r9, 0
	beq		.b48182				# 22459
	b		.b48233
.b48208:
	addi	r9, r0, 0				# 3188
	cmpi	r19, 0
	beq		.b48211				# 765
	b		.b48212
.b48192:
	fabs	r19, r42				# 322
	lw		r50, 4(r33)				# 3734
	lw		r9, 0(r50)				# 22178
	fcmp	r9, r19
	ble		.b48201				# 3098
.b48196:
	fabs	r19, r59				# 322
	lw		r9, 1(r50)				# 22224
	fcmp	r9, r19
	ble		.b48201				# 3098
.b48198:
	fabs	r19, r53				# 322
	lw		r9, 2(r50)				# 22261
	fcmp	r9, r19
	ble		.b48201				# 3098
.b48202:
	lw		r9, 6(r33)				# 3372
	cmpi	r9, 0
	beq		.b48233				# 23092
	b		.b48182
.b48201:
	lw		r9, 6(r33)				# 3372
	cmpi	r9, 0
	beq		.b48182				# 22348
	b		.b48233
.b48176:
	fneg	r9, r9				# 3025
	b		.b48175				# 3025
.b48178:
	lw		r9, 6(r1)				# 3372
	cmpi	r9, 0
	beq		.b48091				# 25732
.b48181:
	addi	r62, r62, 1				# 25769
	lwx		r14, r29, r62				# 25005
	cmpi	r14, -1
	beq		.b48091				# 25042
	b		.b48094
.b48171:
	fsub	r9, r9, r54				# 15303
	b		.b48170				# 15303
.b48168:
	cmpi	r47, 3
	beq		.b48171				# 15282
	b		.b48172
.b48165:
	b		.b48164				# 14803
.b48160:
	fcmp	r28, r15
	beq		.b48178				# 3128
	b		.b48163
.b48155:
	lw		r9, 4(r1)				# 4293
	lw		r39, 0(r7)				# 1949
	lw		r50, 0(r9)				# 1949
	lw		r12, 1(r7)				# 1967
	lw		r28, 1(r9)				# 1967
	fmul	r12, r12, r28				# 1949
	faddmul	r12, r39, r50, r12				# 1949
	lw		r39, 2(r7)				# 1985
	lw		r9, 2(r9)				# 1985
	faddmul	r39, r39, r9, r12				# 14187
	fcmp	r39, r15
	ble		.b48178				# 3158
.b48158:
	fmul	r28, r28, r27				# 2037
	faddmul	r28, r50, r36, r28				# 2037
	faddmul	r9, r9, r19, r28				# 14262
	fneg	r9, r9				# 14262
	fdiv	r28, r9, r39				# 14243
	lli		r9, solver_dist.2563				# 14243
	sw		r28, 0(r9)				# 14243
	addi	r1, r0, 1				# 14302
	lli		r9, solver_dist.2563				# 25149
	lw		r28, 0(r9)				# 25149
	fcmp	r28, r15
	ble		.b48182				# 3098
	b		.b48184
.b48096:
	lw		r50, 0(r7)				# 13452
	fcmp	r50, r15
	beq		.b48116				# 3128
.b48100:
	lw		r12, 4(r1)				# 4293
	lw		r9, 6(r1)				# 3372
	fcmp	r15, r50
	ble		.b48102				# 3188
.b48103:
	addi	r28, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48105				# 765
.b48106:
	cmpi	r28, 0
	beq		.b48107				# 775
.b48108:
	lw		r9, 0(r12)				# 13527
	fneg	r9, r9				# 3025
.b48109:
	fsub	r9, r9, r36				# 13603
	fdiv	r39, r9, r50				# 13594
	lw		r9, 1(r7)				# 13649
	faddmul	r9, r39, r9, r27				# 13643
	fabs	r9, r9				# 322
	lw		r28, 1(r12)				# 13636
	fcmp	r28, r9
	ble		.b48116				# 3098
.b48113:
	lw		r9, 2(r7)				# 13709
	faddmul	r9, r39, r9, r19				# 13703
	fabs	r9, r9				# 322
	lw		r28, 2(r12)				# 13696
	fcmp	r28, r9
	ble		.b48116				# 3098
.b48115:
	lli		r9, solver_dist.2563				# 13756
	sw		r39, 0(r9)				# 13756
.b48117:
	addi	r1, r0, 1				# 13917
	lli		r9, solver_dist.2563				# 25149
	lw		r28, 0(r9)				# 25149
	fcmp	r28, r15
	ble		.b48182				# 3098
	b		.b48184
.b48116:
	lw		r39, 1(r7)				# 13452
	fcmp	r39, r15
	beq		.b48136				# 3128
.b48120:
	lw		r53, 4(r1)				# 4293
	lw		r28, 6(r1)				# 3372
	fcmp	r15, r39
	ble		.b48122				# 3188
.b48123:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b48125				# 765
.b48126:
	cmpi	r9, 0
	beq		.b48127				# 775
.b48128:
	lw		r28, 1(r53)				# 13527
	fneg	r28, r28				# 3025
.b48129:
	fsub	r9, r28, r27				# 13603
	fdiv	r12, r9, r39				# 13594
	lw		r9, 2(r7)				# 13649
	faddmul	r9, r12, r9, r19				# 13643
	fabs	r28, r9				# 322
	lw		r9, 2(r53)				# 13636
	fcmp	r9, r28
	ble		.b48136				# 3098
.b48133:
	faddmul	r9, r12, r50, r36				# 13703
	fabs	r9, r9				# 322
	lw		r28, 0(r53)				# 13696
	fcmp	r28, r9
	ble		.b48136				# 3098
.b48135:
	lli		r9, solver_dist.2563				# 13756
	sw		r12, 0(r9)				# 13756
.b48137:
	addi	r1, r0, 2				# 13980
	lli		r9, solver_dist.2563				# 25149
	lw		r28, 0(r9)				# 25149
	fcmp	r28, r15
	ble		.b48182				# 3098
	b		.b48184
.b48136:
	lw		r12, 2(r7)				# 13452
	fcmp	r12, r15
	beq		.b48178				# 3128
.b48139:
	lw		r53, 4(r1)				# 4293
	lw		r9, 6(r1)				# 3372
	fcmp	r15, r12
	ble		.b48141				# 3188
.b48142:
	addi	r28, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48144				# 765
.b48145:
	cmpi	r28, 0
	beq		.b48146				# 775
.b48147:
	lw		r9, 2(r53)				# 13527
	fneg	r9, r9				# 3025
.b48148:
	fsub	r9, r9, r19				# 13603
	fdiv	r28, r9, r12				# 13594
	faddmul	r9, r28, r50, r36				# 13643
	fabs	r9, r9				# 322
	lw		r19, 0(r53)				# 13636
	fcmp	r19, r9
	ble		.b48178				# 3098
.b48152:
	faddmul	r9, r28, r39, r27				# 13703
	fabs	r39, r9				# 322
	lw		r9, 1(r53)				# 13696
	fcmp	r9, r39
	ble		.b48178				# 3098
.b48154:
	lli		r9, solver_dist.2563				# 13756
	sw		r28, 0(r9)				# 13756
	addi	r1, r0, 3				# 14043
	lli		r9, solver_dist.2563				# 25149
	lw		r28, 0(r9)				# 25149
	fcmp	r28, r15
	ble		.b48182				# 3098
	b		.b48184
.b48146:
	lw		r9, 2(r53)				# 13527
	b		.b48148				# 918
.b48144:
	lw		r9, 2(r53)				# 13527
	cmpi	r28, 0
	beq		.b48149				# 905
.b48150:
	b		.b48148				# 918
.b48149:
	fneg	r9, r9				# 3025
	b		.b48148				# 3025
.b48141:
	addi	r28, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48144				# 765
	b		.b48145
.b48127:
	lw		r28, 1(r53)				# 13527
	b		.b48129				# 918
.b48125:
	lw		r28, 1(r53)				# 13527
	cmpi	r9, 0
	beq		.b48130				# 905
.b48131:
	b		.b48129				# 918
.b48130:
	fneg	r28, r28				# 3025
	b		.b48129				# 3025
.b48122:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b48125				# 765
	b		.b48126
.b48107:
	lw		r9, 0(r12)				# 13527
	b		.b48109				# 918
.b48105:
	lw		r9, 0(r12)				# 13527
	cmpi	r28, 0
	beq		.b48110				# 905
.b48111:
	b		.b48109				# 918
.b48110:
	fneg	r9, r9				# 3025
	b		.b48109				# 3025
.b48102:
	addi	r28, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48105				# 765
	b		.b48106
.b48075:
	addis	r28, r0, 16256				# 1801
	b		.b48074				# 1801
	# main program start
_min_caml_start:
	addi	r30, r0, 0				# 154
	lli		r25, n_objects.2525				# 138
	sw		r30, 0(r25)				# 154
	addi	r7, r0, 0				# 279
	mv		r61, r4
	addi	r4, r4, 0				# 267
	lli		r9, dummy.2528				# 267
	sw		r61, 0(r9)				# 267
	mv		r9, r4
	addi	r4, r4, 11				# 315
	sw		r30, 0(r9)				# 315
	sw		r30, 1(r9)				# 315
	sw		r30, 2(r9)				# 315
	sw		r30, 3(r9)				# 315
	sw		r61, 4(r9)				# 315
	sw		r61, 5(r9)				# 315
	sw		r30, 6(r9)				# 315
	sw		r61, 7(r9)				# 315
	sw		r61, 8(r9)				# 315
	sw		r61, 9(r9)				# 315
	sw		r61, 10(r9)				# 315
	lli		r61, Tt270.2535				# 301
	sw		r9, 0(r61)				# 301
	lli		r15, objects.2536				# 250
	addi	r61, r0, 0				# 301
.b49454:
	swx		r9, r61, r15				# 301
	addi	r61, r61, 1				# 301
	cmpi	r61, 59
	ble		.b49454				# 301
.b49452:
	lli		r51, screen.2539				# 410
	sw		r7, 0(r51)				# 423
	sw		r7, 1(r51)				# 423
	sw		r7, 2(r51)				# 423
	lli		r54, viewpoint.2542				# 465
	sw		r7, 0(r54)				# 481
	sw		r7, 1(r54)				# 481
	sw		r7, 2(r54)				# 481
	lli		r41, light.2545				# 553
	sw		r7, 0(r41)				# 565
	sw		r7, 1(r41)				# 565
	sw		r7, 2(r41)				# 565
	addis	r9, r0, 17279				# 643
	lli		r13, beam.2548				# 632
	sw		r9, 0(r13)				# 643
	addi	r9, r0, -1				# 732
	mv		r61, r4
	addi	r4, r4, 1				# 732
	sw		r9, 0(r61)				# 732
	lli		r9, Ta283.2553				# 717
	sw		r61, 0(r9)				# 717
	lli		r28, and_net.2554				# 703
	addi	r9, r0, 0				# 717
.b49458:
	swx		r61, r9, r28				# 717
	addi	r9, r9, 1				# 717
	cmpi	r9, 49
	ble		.b49458				# 717
.b49456:
	lw		r61, 0(r28)				# 818
	lli		r9, Ta286.2558				# 818
	sw		r61, 0(r9)				# 818
	mv		r9, r4
	addi	r4, r4, 1				# 818
	sw		r61, 0(r9)				# 818
	lli		r61, Ta288.2559				# 804
	sw		r9, 0(r61)				# 804
	lli		r61, or_net.2560				# 791
	sw		r9, 0(r61)				# 804
	lli		r9, solver_dist.2563				# 947
	sw		r7, 0(r9)				# 965
	lli		r9, intsec_rectside.2566				# 1028
	sw		r30, 0(r9)				# 1050
	addis	r9, r0, 20078
	ori		r9, r9, 27432				# 1118
	lli		r61, tmin.2569				# 1107
	sw		r9, 0(r61)				# 1118
	lli		r9, intersection_point.2572				# 1171
	sw		r7, 0(r9)				# 1196
	sw		r7, 1(r9)				# 1196
	sw		r7, 2(r9)				# 1196
	lli		r9, intersected_object_id.2575				# 1259
	sw		r30, 0(r9)				# 1287
	lli		r9, nvector.2578				# 1330
	sw		r7, 0(r9)				# 1344
	sw		r7, 1(r9)				# 1344
	sw		r7, 2(r9)				# 1344
	lli		r9, texture_color.2581				# 1383
	sw		r7, 0(r9)				# 1403
	sw		r7, 1(r9)				# 1403
	sw		r7, 2(r9)				# 1403
	lli		r9, diffuse_ray.2584				# 1470
	sw		r7, 0(r9)				# 1488
	sw		r7, 1(r9)				# 1488
	sw		r7, 2(r9)				# 1488
	lli		r9, rgb.2587				# 1551
	sw		r7, 0(r9)				# 1561
	sw		r7, 1(r9)				# 1561
	sw		r7, 2(r9)				# 1561
	lli		r26, image_size.2590				# 1604
	sw		r30, 0(r26)				# 1621
	sw		r30, 1(r26)				# 1621
	lli		r28, image_center.2593				# 1688
	sw		r30, 0(r28)				# 1707
	sw		r30, 1(r28)				# 1707
	lli		r46, scan_pitch.2596				# 1763
	sw		r7, 0(r46)				# 1780
	lli		r9, startp.2599				# 1850
	sw		r7, 0(r9)				# 1863
	sw		r7, 1(r9)				# 1863
	sw		r7, 2(r9)				# 1863
	lli		r9, startp_fast.2602				# 1937
	sw		r7, 0(r9)				# 1955
	sw		r7, 1(r9)				# 1955
	sw		r7, 2(r9)				# 1955
	lli		r10, screenx_dir.2605				# 2031
	sw		r7, 0(r10)				# 2049
	sw		r7, 1(r10)				# 2049
	sw		r7, 2(r10)				# 2049
	lli		r62, screeny_dir.2608				# 2069
	sw		r7, 0(r62)				# 2087
	sw		r7, 1(r62)				# 2087
	sw		r7, 2(r62)				# 2087
	lli		r57, screenz_dir.2611				# 2107
	sw		r7, 0(r57)				# 2125
	sw		r7, 1(r57)				# 2125
	sw		r7, 2(r57)				# 2125
	lli		r9, ptrace_dirvec.2614				# 2198
	sw		r7, 0(r9)				# 2219
	sw		r7, 1(r9)				# 2219
	sw		r7, 2(r9)				# 2219
	mv		r37, r4
	addi	r4, r4, 0				# 2318
	lli		r9, dummyf.2617				# 2318
	sw		r37, 0(r9)				# 2318
	mv		r61, r4
	addi	r4, r4, 0				# 2353
	lli		r9, dummyff.2619				# 2353
	sw		r61, 0(r9)				# 2353
	mv		r9, r4
	addi	r4, r4, 2				# 2420
	sw		r37, 0(r9)				# 2420
	sw		r61, 1(r9)				# 2420
	lli		r61, Tt329.2621				# 2407
	sw		r9, 0(r61)				# 2407
	mv		r61, r4
	addi	r4, r4, 0				# 2392
	lli		r9, dummy_vs.2622				# 2392
	sw		r61, 0(r9)				# 2392
	lli		r9, dirvecs.2624				# 2301
	sw		r61, 0(r9)				# 2443
	sw		r61, 1(r9)				# 2443
	sw		r61, 2(r9)				# 2443
	sw		r61, 3(r9)				# 2443
	sw		r61, 4(r9)				# 2443
	mv		r37, r4
	addi	r4, r4, 0				# 2542
	lli		r9, dummyf2.2627				# 2542
	sw		r37, 0(r9)				# 2542
	lli		r9, v3.2630				# 2578
	sw		r7, 0(r9)				# 2587
	sw		r7, 1(r9)				# 2587
	sw		r7, 2(r9)				# 2587
	lli		r61, consts.2632				# 2609
	addi	r9, r0, 0				# 2622
.b49462:
	swx		r37, r9, r61				# 2622
	addi	r9, r9, 1				# 2622
	cmpi	r9, 59
	ble		.b49462				# 2622
.b49460:
	mv		r37, r4
	addi	r4, r4, 0				# 2717
	lli		r9, dummyf3.2636				# 2717
	sw		r37, 0(r9)				# 2717
	mv		r9, r4
	addi	r4, r4, 0				# 2753
	lli		r61, dummyff3.2638				# 2753
	sw		r9, 0(r61)				# 2753
	mv		r61, r4
	addi	r4, r4, 2				# 2808
	sw		r37, 0(r61)				# 2808
	sw		r9, 1(r61)				# 2808
	lli		r9, dummydv.2639				# 2794
	sw		r61, 0(r9)				# 2794
	mv		r9, r4
	addi	r4, r4, 3				# 2848
	sw		r30, 0(r9)				# 2848
	sw		r61, 1(r9)				# 2848
	sw		r7, 2(r9)				# 2848
	lli		r61, Tt342.2643				# 2833
	sw		r9, 0(r61)				# 2833
	lli		r37, reflections.2644				# 2697
	addi	r61, r0, 0				# 2833
.b49466:
	swx		r9, r61, r37				# 2833
	addi	r61, r61, 1				# 2833
	cmpi	r61, 179
	ble		.b49466				# 2833
.b49464:
	lli		r9, n_reflections.2647				# 2911
	sw		r30, 0(r9)				# 2931
	addi	r61, r0, 512				# 47379
	sw		r61, 0(r26)				# 46875
	sw		r61, 1(r26)				# 46875
	addi	r9, r0, 256				# 46929
	sw		r9, 0(r28)				# 46875
	sw		r9, 1(r28)				# 46875
	addis	r9, r0, 17152				# 47013
	itof	r61, r61				# 639
	fdiv	r9, r9, r61				# 46995
	sw		r9, 0(r46)				# 46875
	mv		r39, r4
	addi	r4, r4, 3				# 42355
	sw		r7, 0(r39)				# 42355
	sw		r7, 1(r39)				# 42355
	sw		r7, 2(r39)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r23, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r23)				# 42151
	sw		r9, 1(r23)				# 42151
	sw		r9, 2(r23)				# 42151
	sw		r9, 3(r23)				# 42151
	sw		r9, 4(r23)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r23)				# 42173
	mv		r26, r4
	addi	r4, r4, 5				# 42435
	sw		r30, 0(r26)				# 42435
	sw		r30, 1(r26)				# 42435
	sw		r30, 2(r26)				# 42435
	sw		r30, 3(r26)				# 42435
	sw		r30, 4(r26)				# 42435
	mv		r61, r4
	addi	r4, r4, 5				# 42468
	sw		r30, 0(r61)				# 42468
	sw		r30, 1(r61)				# 42468
	sw		r30, 2(r61)				# 42468
	sw		r30, 3(r61)				# 42468
	sw		r30, 4(r61)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r48)				# 42151
	sw		r9, 1(r48)				# 42151
	sw		r9, 2(r48)				# 42151
	sw		r9, 3(r48)				# 42151
	sw		r9, 4(r48)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r28, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r28)				# 42151
	sw		r9, 1(r28)				# 42151
	sw		r9, 2(r28)				# 42151
	sw		r9, 3(r28)				# 42151
	sw		r9, 4(r28)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r28)				# 42173
	mv		r37, r4
	addi	r4, r4, 1				# 42586
	sw		r30, 0(r37)				# 42586
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r46, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r46)				# 42151
	sw		r9, 1(r46)				# 42151
	sw		r9, 2(r46)				# 42151
	sw		r9, 3(r46)				# 42151
	sw		r9, 4(r46)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 8				# 42651
	sw		r39, 0(r9)				# 42651
	sw		r23, 1(r9)				# 42651
	sw		r26, 2(r9)				# 42651
	sw		r61, 3(r9)				# 42651
	sw		r48, 4(r9)				# 42651
	sw		r28, 5(r9)				# 42651
	sw		r37, 6(r9)				# 42651
	sw		r46, 7(r9)				# 42651
	mv		r39, r4
	addi	r4, r4, 512				# 42912
	addi	r61, r0, 0				# 42912
.b49470:
	swx		r9, r61, r39				# 42912
	addi	r61, r61, 1				# 42912
	cmpi	r61, 511
	ble		.b49470				# 42912
.b49468:
	sw		r39, 0(r3)				# 42901
	addi	r23, r0, 510				# 42764
.b49474:
	mv		r37, r4
	addi	r4, r4, 3				# 42355
	sw		r7, 0(r37)				# 42355
	sw		r7, 1(r37)				# 42355
	sw		r7, 2(r37)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r61, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r61)				# 42151
	sw		r9, 1(r61)				# 42151
	sw		r9, 2(r61)				# 42151
	sw		r9, 3(r61)				# 42151
	sw		r9, 4(r61)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r61)				# 42173
	mv		r28, r4
	addi	r4, r4, 5				# 42435
	sw		r30, 0(r28)				# 42435
	sw		r30, 1(r28)				# 42435
	sw		r30, 2(r28)				# 42435
	sw		r30, 3(r28)				# 42435
	sw		r30, 4(r28)				# 42435
	mv		r26, r4
	addi	r4, r4, 5				# 42468
	sw		r30, 0(r26)				# 42468
	sw		r30, 1(r26)				# 42468
	sw		r30, 2(r26)				# 42468
	sw		r30, 3(r26)				# 42468
	sw		r30, 4(r26)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r48)				# 42151
	sw		r9, 1(r48)				# 42151
	sw		r9, 2(r48)				# 42151
	sw		r9, 3(r48)				# 42151
	sw		r9, 4(r48)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r29, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r29)				# 42151
	sw		r9, 1(r29)				# 42151
	sw		r9, 2(r29)				# 42151
	sw		r9, 3(r29)				# 42151
	sw		r9, 4(r29)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r29)				# 42173
	mv		r46, r4
	addi	r4, r4, 1				# 42586
	sw		r30, 0(r46)				# 42586
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r19, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r19)				# 42151
	sw		r9, 1(r19)				# 42151
	sw		r9, 2(r19)				# 42151
	sw		r9, 3(r19)				# 42151
	sw		r9, 4(r19)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 8				# 42651
	sw		r37, 0(r9)				# 42651
	sw		r61, 1(r9)				# 42651
	sw		r28, 2(r9)				# 42651
	sw		r26, 3(r9)				# 42651
	sw		r48, 4(r9)				# 42651
	sw		r29, 5(r9)				# 42651
	sw		r46, 6(r9)				# 42651
	sw		r19, 7(r9)				# 42651
	swx		r9, r23, r39				# 42785
	addi	r23, r23, -1				# 42817
	cmpi	r23, 0
	bge		.b49474				# 42764
.b49472:
	mv		r23, r4
	addi	r4, r4, 3				# 42355
	sw		r7, 0(r23)				# 42355
	sw		r7, 1(r23)				# 42355
	sw		r7, 2(r23)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r48)				# 42151
	sw		r9, 1(r48)				# 42151
	sw		r9, 2(r48)				# 42151
	sw		r9, 3(r48)				# 42151
	sw		r9, 4(r48)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r48)				# 42173
	mv		r37, r4
	addi	r4, r4, 5				# 42435
	sw		r30, 0(r37)				# 42435
	sw		r30, 1(r37)				# 42435
	sw		r30, 2(r37)				# 42435
	sw		r30, 3(r37)				# 42435
	sw		r30, 4(r37)				# 42435
	mv		r46, r4
	addi	r4, r4, 5				# 42468
	sw		r30, 0(r46)				# 42468
	sw		r30, 1(r46)				# 42468
	sw		r30, 2(r46)				# 42468
	sw		r30, 3(r46)				# 42468
	sw		r30, 4(r46)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r26, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r26)				# 42151
	sw		r9, 1(r26)				# 42151
	sw		r9, 2(r26)				# 42151
	sw		r9, 3(r26)				# 42151
	sw		r9, 4(r26)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r39, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r39)				# 42151
	sw		r9, 1(r39)				# 42151
	sw		r9, 2(r39)				# 42151
	sw		r9, 3(r39)				# 42151
	sw		r9, 4(r39)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r39)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r39)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r39)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r39)				# 42173
	mv		r28, r4
	addi	r4, r4, 1				# 42586
	sw		r30, 0(r28)				# 42586
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r61)				# 42117
	sw		r7, 1(r61)				# 42117
	sw		r7, 2(r61)				# 42117
	mv		r9, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r9)				# 42151
	sw		r61, 1(r9)				# 42151
	sw		r61, 2(r9)				# 42151
	sw		r61, 3(r9)				# 42151
	sw		r61, 4(r9)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r61)				# 42186
	sw		r7, 1(r61)				# 42186
	sw		r7, 2(r61)				# 42186
	sw		r61, 1(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r61)				# 42219
	sw		r7, 1(r61)				# 42219
	sw		r7, 2(r61)				# 42219
	sw		r61, 2(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r61)				# 42252
	sw		r7, 1(r61)				# 42252
	sw		r7, 2(r61)				# 42252
	sw		r61, 3(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r61)				# 42285
	sw		r7, 1(r61)				# 42285
	sw		r7, 2(r61)				# 42285
	sw		r61, 4(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 8				# 42651
	sw		r23, 0(r61)				# 42651
	sw		r48, 1(r61)				# 42651
	sw		r37, 2(r61)				# 42651
	sw		r46, 3(r61)				# 42651
	sw		r26, 4(r61)				# 42651
	sw		r39, 5(r61)				# 42651
	sw		r28, 6(r61)				# 42651
	sw		r9, 7(r61)				# 42651
	mv		r19, r4
	addi	r4, r4, 512				# 42912
	addi	r9, r0, 0				# 42912
.b49478:
	swx		r61, r9, r19				# 42912
	addi	r9, r9, 1				# 42912
	cmpi	r9, 511
	ble		.b49478				# 42912
.b49476:
	sw		r19, -1(r3)				# 42901
	addi	r46, r0, 510				# 42764
.b49482:
	mv		r28, r4
	addi	r4, r4, 3				# 42355
	sw		r7, 0(r28)				# 42355
	sw		r7, 1(r28)				# 42355
	sw		r7, 2(r28)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r26, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r26)				# 42151
	sw		r9, 1(r26)				# 42151
	sw		r9, 2(r26)				# 42151
	sw		r9, 3(r26)				# 42151
	sw		r9, 4(r26)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r26)				# 42173
	mv		r29, r4
	addi	r4, r4, 5				# 42435
	sw		r30, 0(r29)				# 42435
	sw		r30, 1(r29)				# 42435
	sw		r30, 2(r29)				# 42435
	sw		r30, 3(r29)				# 42435
	sw		r30, 4(r29)				# 42435
	mv		r39, r4
	addi	r4, r4, 5				# 42468
	sw		r30, 0(r39)				# 42468
	sw		r30, 1(r39)				# 42468
	sw		r30, 2(r39)				# 42468
	sw		r30, 3(r39)				# 42468
	sw		r30, 4(r39)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r23, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r23)				# 42151
	sw		r9, 1(r23)				# 42151
	sw		r9, 2(r23)				# 42151
	sw		r9, 3(r23)				# 42151
	sw		r9, 4(r23)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r23)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r61)				# 42117
	sw		r7, 1(r61)				# 42117
	sw		r7, 2(r61)				# 42117
	mv		r9, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r9)				# 42151
	sw		r61, 1(r9)				# 42151
	sw		r61, 2(r9)				# 42151
	sw		r61, 3(r9)				# 42151
	sw		r61, 4(r9)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r61)				# 42186
	sw		r7, 1(r61)				# 42186
	sw		r7, 2(r61)				# 42186
	sw		r61, 1(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r61)				# 42219
	sw		r7, 1(r61)				# 42219
	sw		r7, 2(r61)				# 42219
	sw		r61, 2(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r61)				# 42252
	sw		r7, 1(r61)				# 42252
	sw		r7, 2(r61)				# 42252
	sw		r61, 3(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r61)				# 42285
	sw		r7, 1(r61)				# 42285
	sw		r7, 2(r61)				# 42285
	sw		r61, 4(r9)				# 42173
	mv		r48, r4
	addi	r4, r4, 1				# 42586
	sw		r30, 0(r48)				# 42586
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r61)				# 42117
	sw		r7, 1(r61)				# 42117
	sw		r7, 2(r61)				# 42117
	mv		r37, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r37)				# 42151
	sw		r61, 1(r37)				# 42151
	sw		r61, 2(r37)				# 42151
	sw		r61, 3(r37)				# 42151
	sw		r61, 4(r37)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r61)				# 42186
	sw		r7, 1(r61)				# 42186
	sw		r7, 2(r61)				# 42186
	sw		r61, 1(r37)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r61)				# 42219
	sw		r7, 1(r61)				# 42219
	sw		r7, 2(r61)				# 42219
	sw		r61, 2(r37)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r61)				# 42252
	sw		r7, 1(r61)				# 42252
	sw		r7, 2(r61)				# 42252
	sw		r61, 3(r37)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r61)				# 42285
	sw		r7, 1(r61)				# 42285
	sw		r7, 2(r61)				# 42285
	sw		r61, 4(r37)				# 42173
	mv		r61, r4
	addi	r4, r4, 8				# 42651
	sw		r28, 0(r61)				# 42651
	sw		r26, 1(r61)				# 42651
	sw		r29, 2(r61)				# 42651
	sw		r39, 3(r61)				# 42651
	sw		r23, 4(r61)				# 42651
	sw		r9, 5(r61)				# 42651
	sw		r48, 6(r61)				# 42651
	sw		r37, 7(r61)				# 42651
	swx		r61, r46, r19				# 42785
	addi	r46, r46, -1				# 42817
	cmpi	r46, 0
	bge		.b49482				# 42764
.b49480:
	mv		r39, r4
	addi	r4, r4, 3				# 42355
	sw		r7, 0(r39)				# 42355
	sw		r7, 1(r39)				# 42355
	sw		r7, 2(r39)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r46, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r46)				# 42151
	sw		r9, 1(r46)				# 42151
	sw		r9, 2(r46)				# 42151
	sw		r9, 3(r46)				# 42151
	sw		r9, 4(r46)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r46)				# 42173
	mv		r23, r4
	addi	r4, r4, 5				# 42435
	sw		r30, 0(r23)				# 42435
	sw		r30, 1(r23)				# 42435
	sw		r30, 2(r23)				# 42435
	sw		r30, 3(r23)				# 42435
	sw		r30, 4(r23)				# 42435
	mv		r48, r4
	addi	r4, r4, 5				# 42468
	sw		r30, 0(r48)				# 42468
	sw		r30, 1(r48)				# 42468
	sw		r30, 2(r48)				# 42468
	sw		r30, 3(r48)				# 42468
	sw		r30, 4(r48)				# 42468
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r61)				# 42117
	sw		r7, 1(r61)				# 42117
	sw		r7, 2(r61)				# 42117
	mv		r9, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r9)				# 42151
	sw		r61, 1(r9)				# 42151
	sw		r61, 2(r9)				# 42151
	sw		r61, 3(r9)				# 42151
	sw		r61, 4(r9)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r61)				# 42186
	sw		r7, 1(r61)				# 42186
	sw		r7, 2(r61)				# 42186
	sw		r61, 1(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r61)				# 42219
	sw		r7, 1(r61)				# 42219
	sw		r7, 2(r61)				# 42219
	sw		r61, 2(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r61)				# 42252
	sw		r7, 1(r61)				# 42252
	sw		r7, 2(r61)				# 42252
	sw		r61, 3(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r61)				# 42285
	sw		r7, 1(r61)				# 42285
	sw		r7, 2(r61)				# 42285
	sw		r61, 4(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r61)				# 42117
	sw		r7, 1(r61)				# 42117
	sw		r7, 2(r61)				# 42117
	mv		r28, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r28)				# 42151
	sw		r61, 1(r28)				# 42151
	sw		r61, 2(r28)				# 42151
	sw		r61, 3(r28)				# 42151
	sw		r61, 4(r28)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r61)				# 42186
	sw		r7, 1(r61)				# 42186
	sw		r7, 2(r61)				# 42186
	sw		r61, 1(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r61)				# 42219
	sw		r7, 1(r61)				# 42219
	sw		r7, 2(r61)				# 42219
	sw		r61, 2(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r61)				# 42252
	sw		r7, 1(r61)				# 42252
	sw		r7, 2(r61)				# 42252
	sw		r61, 3(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r61)				# 42285
	sw		r7, 1(r61)				# 42285
	sw		r7, 2(r61)				# 42285
	sw		r61, 4(r28)				# 42173
	mv		r37, r4
	addi	r4, r4, 1				# 42586
	sw		r30, 0(r37)				# 42586
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r61)				# 42117
	sw		r7, 1(r61)				# 42117
	sw		r7, 2(r61)				# 42117
	mv		r26, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r26)				# 42151
	sw		r61, 1(r26)				# 42151
	sw		r61, 2(r26)				# 42151
	sw		r61, 3(r26)				# 42151
	sw		r61, 4(r26)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r61)				# 42186
	sw		r7, 1(r61)				# 42186
	sw		r7, 2(r61)				# 42186
	sw		r61, 1(r26)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r61)				# 42219
	sw		r7, 1(r61)				# 42219
	sw		r7, 2(r61)				# 42219
	sw		r61, 2(r26)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r61)				# 42252
	sw		r7, 1(r61)				# 42252
	sw		r7, 2(r61)				# 42252
	sw		r61, 3(r26)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r61)				# 42285
	sw		r7, 1(r61)				# 42285
	sw		r7, 2(r61)				# 42285
	sw		r61, 4(r26)				# 42173
	mv		r61, r4
	addi	r4, r4, 8				# 42651
	sw		r39, 0(r61)				# 42651
	sw		r46, 1(r61)				# 42651
	sw		r23, 2(r61)				# 42651
	sw		r48, 3(r61)				# 42651
	sw		r9, 4(r61)				# 42651
	sw		r28, 5(r61)				# 42651
	sw		r37, 6(r61)				# 42651
	sw		r26, 7(r61)				# 42651
	mv		r28, r4
	addi	r4, r4, 512				# 42912
	addi	r9, r0, 0				# 42912
.b49486:
	swx		r61, r9, r28				# 42912
	addi	r9, r9, 1				# 42912
	cmpi	r9, 511
	ble		.b49486				# 42912
.b49484:
	sw		r28, -2(r3)				# 42901
	addi	r26, r0, 510				# 42764
.b49490:
	mv		r61, r4
	addi	r4, r4, 3				# 42355
	sw		r7, 0(r61)				# 42355
	sw		r7, 1(r61)				# 42355
	sw		r7, 2(r61)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r46, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r46)				# 42151
	sw		r9, 1(r46)				# 42151
	sw		r9, 2(r46)				# 42151
	sw		r9, 3(r46)				# 42151
	sw		r9, 4(r46)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r46)				# 42173
	mv		r37, r4
	addi	r4, r4, 5				# 42435
	sw		r30, 0(r37)				# 42435
	sw		r30, 1(r37)				# 42435
	sw		r30, 2(r37)				# 42435
	sw		r30, 3(r37)				# 42435
	sw		r30, 4(r37)				# 42435
	mv		r29, r4
	addi	r4, r4, 5				# 42468
	sw		r30, 0(r29)				# 42468
	sw		r30, 1(r29)				# 42468
	sw		r30, 2(r29)				# 42468
	sw		r30, 3(r29)				# 42468
	sw		r30, 4(r29)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r19, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r19)				# 42151
	sw		r9, 1(r19)				# 42151
	sw		r9, 2(r19)				# 42151
	sw		r9, 3(r19)				# 42151
	sw		r9, 4(r19)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r48)				# 42151
	sw		r9, 1(r48)				# 42151
	sw		r9, 2(r48)				# 42151
	sw		r9, 3(r48)				# 42151
	sw		r9, 4(r48)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r48)				# 42173
	mv		r39, r4
	addi	r4, r4, 1				# 42586
	sw		r30, 0(r39)				# 42586
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r7, 0(r9)				# 42117
	sw		r7, 1(r9)				# 42117
	sw		r7, 2(r9)				# 42117
	mv		r23, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r23)				# 42151
	sw		r9, 1(r23)				# 42151
	sw		r9, 2(r23)				# 42151
	sw		r9, 3(r23)				# 42151
	sw		r9, 4(r23)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r7, 0(r9)				# 42186
	sw		r7, 1(r9)				# 42186
	sw		r7, 2(r9)				# 42186
	sw		r9, 1(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r7, 0(r9)				# 42219
	sw		r7, 1(r9)				# 42219
	sw		r7, 2(r9)				# 42219
	sw		r9, 2(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r7, 0(r9)				# 42252
	sw		r7, 1(r9)				# 42252
	sw		r7, 2(r9)				# 42252
	sw		r9, 3(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r7, 0(r9)				# 42285
	sw		r7, 1(r9)				# 42285
	sw		r7, 2(r9)				# 42285
	sw		r9, 4(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 8				# 42651
	sw		r61, 0(r9)				# 42651
	sw		r46, 1(r9)				# 42651
	sw		r37, 2(r9)				# 42651
	sw		r29, 3(r9)				# 42651
	sw		r19, 4(r9)				# 42651
	sw		r48, 5(r9)				# 42651
	sw		r39, 6(r9)				# 42651
	sw		r23, 7(r9)				# 42651
	swx		r9, r26, r28				# 42785
	addi	r26, r26, -1				# 42817
	cmpi	r26, 0
	bge		.b49490				# 42764
.b49488:
	in		r39				# 1610
	sw		r39, 0(r51)				# 8471
	in		r9				# 1610
	sw		r9, 1(r51)				# 8471
	in		r30				# 1610
	sw		r30, 2(r51)				# 8471
	in		r61				# 1610
	addis	r46, r0, 15502
	ori		r46, r46, 64053				# 8414
	fmul	r61, r61, r46				# 8565
	fcos	r26, r61				# 133
	fsin	r19, r61				# 40
	in		r61				# 1610
	fmul	r61, r61, r46				# 8649
	fcos	r23, r61				# 133
	fsin	r48, r61				# 40
	fmul	r61, r26, r48				# 8753
	addis	r51, r0, 17224				# 8753
	fmul	r28, r61, r51				# 8734
	sw		r28, 0(r57)				# 8734
	addis	r61, r0, 49992				# 8801
	fmul	r37, r19, r61				# 8782
	sw		r37, 1(r57)				# 8734
	fmul	r61, r26, r23				# 8840
	fmul	r51, r61, r51				# 8821
	sw		r51, 2(r57)				# 8734
	sw		r23, 0(r10)				# 8734
	sw		r7, 1(r10)				# 8734
	fneg	r61, r48				# 8925
	sw		r61, 2(r10)				# 8734
	fneg	r61, r19				# 8979
	fmul	r10, r61, r48				# 8960
	sw		r10, 0(r62)				# 8734
	fneg	r10, r26				# 9004
	sw		r10, 1(r62)				# 8734
	fmul	r61, r61, r23				# 9038
	sw		r61, 2(r62)				# 8734
	fsub	r61, r39, r28				# 9083
	sw		r61, 0(r54)				# 8734
	fsub	r9, r9, r37				# 9133
	sw		r9, 1(r54)				# 8734
	fsub	r9, r30, r51				# 9183
	sw		r9, 2(r54)				# 13259
	in		r9				# 1683
	in		r9				# 1610
	fmul	r61, r9, r46				# 9289
	fsin	r9, r61				# 40
	fneg	r9, r9				# 9345
	sw		r9, -3(r3)				# 9345
	sw		r9, 1(r41)				# 9345
	in		r9				# 1610
	fmul	r28, r9, r46				# 9370
	fcos	r9, r61				# 133
	fsin	r61, r28				# 40
	fmul	r61, r9, r61				# 9448
	sw		r61, -4(r3)				# 9448
	sw		r61, 0(r41)				# 9448
	fcos	r61, r28				# 133
	fmul	r9, r9, r61				# 9497
	sw		r9, -5(r3)				# 9497
	sw		r9, 2(r41)				# 9497
	in		r9				# 1610
	sw		r9, 0(r13)				# 13259
	addi	r54, r0, 0				# 12512
	in		r26				# 1683
	cmpi	r26, -1
	beq		.b49496				# 10718
.b49497:
	in		r37				# 1683
	in		r23				# 1683
	in		r57				# 1683
	mv		r51, r4
	addi	r4, r4, 3				# 10866
	sw		r7, 0(r51)				# 10866
	sw		r7, 1(r51)				# 10866
	sw		r7, 2(r51)				# 10866
	in		r9				# 1610
	sw		r9, 0(r51)				# 10892
	in		r9				# 1610
	sw		r9, 1(r51)				# 10892
	in		r9				# 1610
	sw		r9, 2(r51)				# 10892
	mv		r61, r4
	addi	r4, r4, 3				# 11007
	sw		r7, 0(r61)				# 11007
	sw		r7, 1(r61)				# 11007
	sw		r7, 2(r61)				# 11007
	in		r9				# 1610
	sw		r9, 0(r61)				# 11033
	in		r9				# 1610
	sw		r9, 1(r61)				# 11033
	in		r9				# 1610
	sw		r9, 2(r61)				# 11033
	in		r9				# 1610
	fcmp	r7, r9
	ble		.b49499				# 3188
.b49500:
	addi	r62, r0, 1				# 3188
.b49498:
	mv		r9, r4
	addi	r4, r4, 2				# 11203
	sw		r7, 0(r9)				# 11203
	sw		r7, 1(r9)				# 11203
	in		r28				# 1610
	sw		r28, 0(r9)				# 11229
	in		r28				# 1610
	sw		r28, 1(r9)				# 11229
	mv		r13, r4
	addi	r4, r4, 3				# 11346
	sw		r7, 0(r13)				# 11346
	sw		r7, 1(r13)				# 11346
	sw		r7, 2(r13)				# 11346
	in		r28				# 1610
	sw		r28, 0(r13)				# 11372
	in		r28				# 1610
	sw		r28, 1(r13)				# 11372
	in		r28				# 1610
	sw		r28, 2(r13)				# 11372
	mv		r41, r4
	addi	r4, r4, 3				# 11499
	sw		r7, 0(r41)				# 11499
	sw		r7, 1(r41)				# 11499
	sw		r7, 2(r41)				# 11499
	cmpi	r57, 0
	beq		.b49501				# 11525
.b49503:
	in		r28				# 1610
	fmul	r28, r28, r46				# 11551
	sw		r28, 0(r41)				# 11551
	in		r28				# 1610
	fmul	r28, r28, r46				# 11590
	sw		r28, 1(r41)				# 11551
	in		r28				# 1610
	fmul	r28, r28, r46				# 11629
	sw		r28, 2(r41)				# 11629
	cmpi	r37, 2
	beq		.b49505				# 11706
.b49506:
	mv		r28, r62				# 11733
.b49504:
	mv		r30, r4
	addi	r4, r4, 4				# 11762
	sw		r7, 0(r30)				# 11762
	sw		r7, 1(r30)				# 11762
	sw		r7, 2(r30)				# 11762
	sw		r7, 3(r30)				# 11762
	mv		r10, r4
	addi	r4, r4, 11				# 11799
	sw		r26, 0(r10)				# 11799
	sw		r37, 1(r10)				# 11799
	sw		r23, 2(r10)				# 11799
	sw		r57, 3(r10)				# 11799
	sw		r51, 4(r10)				# 11799
	sw		r61, 5(r10)				# 11799
	sw		r28, 6(r10)				# 11799
	sw		r9, 7(r10)				# 11799
	sw		r13, 8(r10)				# 11799
	sw		r41, 9(r10)				# 11799
	sw		r30, 10(r10)				# 11799
	swx		r10, r54, r15				# 12004
	cmpi	r37, 3
	beq		.b49508				# 12031
.b49509:
	cmpi	r37, 2
	beq		.b49534				# 12300
.b49507:
	cmpi	r57, 0
	beq		.b49544				# 12371
.b49546:
	lw		r9, 0(r41)				# 9611
	fcos	r61, r9				# 133
	lw		r9, 0(r41)				# 9640
	fsin	r10, r9				# 40
	lw		r9, 1(r41)				# 9669
	fcos	r13, r9				# 133
	lw		r9, 1(r41)				# 9698
	fsin	r9, r9				# 40
	lw		r28, 2(r41)				# 9727
	fcos	r37, r28				# 133
	lw		r28, 2(r41)				# 9756
	fsin	r23, r28				# 40
	fmul	r30, r13, r37				# 9774
	fmul	r57, r10, r9				# 9814
	fmul	r28, r57, r37				# 9814
	fmul	r62, r61, r23				# 9814
	fsub	r39, r28, r62				# 9804
	fmul	r62, r61, r9				# 9871
	fmul	r28, r10, r23				# 9871
	faddmul	r26, r62, r37, r28				# 9861
	fmul	r48, r13, r23				# 9919
	fmul	r28, r61, r37				# 9959
	faddmul	r57, r57, r23, r28				# 9949
	fmul	r62, r62, r23				# 10016
	fmul	r28, r10, r37				# 10016
	fsub	r37, r62, r28				# 10006
	fneg	r9, r9				# 10064
	fmul	r19, r10, r13				# 10090
	fmul	r29, r61, r13				# 10120
	lw		r10, 0(r51)				# 10151
	lw		r23, 1(r51)				# 10173
	lw		r13, 2(r51)				# 10195
	fmul	r28, r30, r30				# 10229
	fmul	r61, r48, r48				# 10247
	fmul	r61, r23, r61				# 10229
	faddmul	r61, r10, r28, r61				# 10229
	fmul	r28, r9, r9				# 10265
	faddmul	r61, r13, r28, r61				# 10218
	sw		r61, 0(r51)				# 10218
	fmul	r28, r39, r39				# 10294
	fmul	r61, r57, r57				# 10312
	fmul	r61, r23, r61				# 10294
	faddmul	r28, r10, r28, r61				# 10294
	fmul	r61, r19, r19				# 10330
	faddmul	r61, r13, r61, r28				# 10283
	sw		r61, 1(r51)				# 10218
	fmul	r28, r26, r26				# 10359
	fmul	r61, r37, r37				# 10377
	fmul	r61, r23, r61				# 10359
	faddmul	r28, r10, r28, r61				# 10359
	fmul	r61, r29, r29				# 10395
	faddmul	r61, r13, r61, r28				# 10348
	sw		r61, 2(r51)				# 10218
	addis	r28, r0, 16384				# 10425
	fmul	r61, r10, r39				# 10433
	fmul	r62, r23, r57				# 10453
	fmul	r62, r62, r37				# 10433
	faddmul	r61, r61, r26, r62				# 10433
	fmul	r62, r13, r19				# 10473
	faddmul	r61, r62, r29, r61				# 10425
	fmul	r61, r28, r61				# 10414
	sw		r61, 0(r41)				# 10218
	fmul	r61, r10, r30				# 10513
	fmul	r62, r23, r48				# 10533
	fmul	r10, r62, r37				# 10513
	faddmul	r10, r61, r26, r10				# 10513
	fmul	r51, r13, r9				# 10553
	faddmul	r9, r51, r29, r10				# 10505
	fmul	r9, r28, r9				# 10494
	sw		r9, 1(r41)				# 10218
	fmul	r9, r62, r57				# 10593
	faddmul	r9, r61, r39, r9				# 10593
	faddmul	r9, r51, r19, r9				# 10585
	fmul	r9, r28, r9				# 10574
	sw		r9, 2(r41)				# 10574
	addi	r54, r54, 1				# 12563
	cmpi	r54, 60
	bge		.b49492				# 12512
.b49495:
	in		r26				# 1683
	cmpi	r26, -1
	beq		.b49496				# 10718
	b		.b49497
.b49496:
	sw		r54, 0(r25)				# 12598
	addi	r9, r0, 0				# 13110
T.loop49548:
	sw		r9, -6(r3)				# 13110
	addi	r1, r0, 0				# 13100
	mflr	r63
	sw		r63, -7(r3)
	addi	r3, r3, -8
	bl		read_net_item.2806
	addi	r3, r3, 8
	lw		r63, -7(r3)
	mtlr	r63				# 13100
	lw		r9, 0(r2)				# 13131
	cmpi	r9, -1
	beq		.b49547				# 13131
.b49550:
	lw		r61, -6(r3)				# 13168
	lli		r9, and_net.2554				# 13168
	swx		r2, r61, r9				# 13168
	addi	r9, r61, 1				# 13192
	b		T.loop49548				# 13192
.b49547:
	addi	r1, r0, 0				# 13349
	mflr	r63
	sw		r63, -7(r3)
	addi	r3, r3, -8
	bl		read_or_network.2808
	addi	r3, r3, 8
	lw		r63, -7(r3)
	mtlr	r63				# 13349
	lli		r9, or_net.2560				# 47149
	sw		r2, 0(r9)				# 47149
	addi	r9, r0, 80				# 39091
	out		r9				# 946
	addi	r9, r0, 51				# 39120
	out		r9				# 946
	addi	r28, r0, 10				# 39179
	out		r28				# 946
	addi	r9, r0, 53				# 1215
	out		r9				# 946
	addi	r61, r0, 12				# 1184
	addi	r9, r0, 9				# 1002
	mul16i	r62, r9, 10				# 993
	sub		r62, r61, r62				# 1014
	cmpi	r62, 0
	bge		.b49553				# 1034
.b49554:
	addi	r9, r9, -1				# 1109
	mul16i	r62, r9, 10				# 993
	sub		r62, r61, r62				# 1014
	cmpi	r62, 0
	bge		.b49553				# 1034
	b		.b49554
.b49553:
	addi	r9, r9, 48				# 1055
	out		r9				# 946
	addi	r9, r62, 48				# 1080
	out		r9				# 946
.b49551:
	addi	r62, r0, 32				# 39228
	out		r62				# 946
	addi	r9, r0, 53				# 1215
	out		r9				# 946
	addi	r61, r0, 12				# 1184
	addi	r9, r0, 9				# 1002
	mul16i	r15, r9, 10				# 993
	sub		r15, r61, r15				# 1014
	cmpi	r15, 0
	bge		.b49557				# 1034
.b49558:
	addi	r9, r9, -1				# 1109
	mul16i	r15, r9, 10				# 993
	sub		r15, r61, r15				# 1014
	cmpi	r15, 0
	bge		.b49557				# 1034
	b		.b49558
.b49557:
	addi	r9, r9, 48				# 1055
	out		r9				# 946
	addi	r9, r15, 48				# 1080
	out		r9				# 946
.b49555:
	out		r62				# 946
	addi	r9, r0, 50				# 946
	out		r9				# 946
	addi	r62, r0, 55				# 1184
	addi	r9, r0, 9				# 1002
	mul16i	r61, r9, 10				# 993
	sub		r61, r62, r61				# 1014
	cmpi	r61, 0
	bge		.b49561				# 1034
.b49562:
	addi	r9, r9, -1				# 1109
	mul16i	r61, r9, 10				# 993
	sub		r61, r62, r61				# 1014
	cmpi	r61, 0
	bge		.b49561				# 1034
	b		.b49562
.b49561:
	addi	r9, r9, 48				# 1055
	out		r9				# 946
	addi	r9, r61, 48				# 1080
	out		r9				# 946
	out		r28				# 946
	addi	r62, r0, 4				# 44862
.b49565:
	mv		r61, r4
	addi	r4, r4, 3				# 44588
	addi	r51, r0, 0				# 44588
	sw		r51, 0(r61)				# 44588
	sw		r51, 1(r61)				# 44588
	sw		r51, 2(r61)				# 44588
	lli		r9, n_objects.2525				# 44623
	lw		r54, 0(r9)				# 44623
	mv		r28, r4
	add		r4, r4, r54				# 44623
	addi	r15, r54, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r15
	ble		.b49569				# 44623
.b49567:
	mv		r9, r4
	addi	r4, r4, 2				# 44656
	sw		r61, 0(r9)				# 44656
	sw		r28, 1(r9)				# 44656
	mv		r15, r4
	addi	r4, r4, 120				# 44906
	addi	r61, r0, 0				# 44906
.b49573:
	swx		r9, r61, r15				# 44906
	addi	r61, r61, 1				# 44906
	cmpi	r61, 119
	ble		.b49573				# 44906
.b49571:
	lli		r9, dirvecs.2624				# 44887
	swx		r15, r62, r9				# 44887
	addi	r10, r0, 118				# 44716
.b49577:
	mv		r61, r4
	addi	r4, r4, 3				# 44588
	sw		r51, 0(r61)				# 44588
	sw		r51, 1(r61)				# 44588
	sw		r51, 2(r61)				# 44588
	mv		r9, r4
	add		r4, r4, r54				# 44623
	addi	r13, r54, -1				# 44623
	addi	r28, r0, 0				# 44623
	cmp		r28, r13
	ble		.b49581				# 44623
.b49579:
	mv		r28, r4
	addi	r4, r4, 2				# 44656
	sw		r61, 0(r28)				# 44656
	sw		r9, 1(r28)				# 44656
	swx		r28, r10, r15				# 44741
	addi	r10, r10, -1				# 44775
	cmpi	r10, 0
	bge		.b49577				# 44716
.b49575:
	addi	r62, r62, -1				# 44992
	cmpi	r62, 0
	bge		.b49565				# 44862
.b49563:
	addi	r13, r0, 9				# 44363
	addi	r15, r0, 0				# 44363
	addi	r10, r0, 0				# 44363
.b49585:
	itof	r9, r13				# 639
	addis	r25, r0, 15948
	ori		r25, r25, 52429				# 44395
	fmul	r9, r9, r25				# 44395
	addis	r30, r0, 16230
	ori		r30, r30, 26214				# 44395
	fsub	r41, r9, r30				# 44386
	addi	r51, r0, 4				# 43977
	mv		r9, r15				# 43977
.b49589:
	itof	r61, r51				# 639
	fmul	r26, r61, r25				# 44029
	fsub	r46, r26, r30				# 44020
	addi	r62, r0, 0				# 44069
	addi	r28, r0, 0				# 43281
	mv		r61, r62				# 43281
	mv		r54, r62				# 43281
.b49594:
	addis	r57, r0, 15820
	ori		r57, r57, 52429				# 43095
	faddmul	r61, r54, r54, r57				# 43090
	fsqrt	r61, r61				# 227
	addis	r54, r0, 16256				# 43125
	fdiv	r7, r54, r61				# 43113
	fatan	r7, r7				# 440
	fmul	r7, r7, r46				# 43182
	fsin	r37, r7				# 40
	fcos	r7, r7				# 133
	fdiv	r7, r37, r7				# 43170
	fmul	r61, r7, r61				# 43816
	addi	r28, r28, 1				# 43853
	faddmul	r7, r61, r61, r57				# 43090
	fsqrt	r57, r7				# 227
	fdiv	r54, r54, r57				# 43113
	fatan	r54, r54				# 440
	fmul	r54, r54, r41				# 43182
	fsin	r7, r54				# 40
	fcos	r54, r54				# 133
	fdiv	r54, r7, r54				# 43170
	fmul	r54, r54, r57				# 43853
	cmpi	r28, 5
	bge		.b49593				# 43281
	b		.b49594
.b49593:
	fmul	r28, r54, r54				# 43320
	faddmul	r28, r61, r61, r28				# 43320
	addis	r57, r0, 16256				# 43320
	fadd	r28, r28, r57				# 43315
	fsqrt	r28, r28				# 227
	fdiv	r7, r61, r28				# 43352
	fdiv	r37, r54, r28				# 43375
	fdiv	r54, r57, r28				# 43398
	lli		r61, dirvecs.2624				# 43424
	lwx		r46, r61, r9				# 43424
	lwx		r61, r46, r10				# 43471
	lw		r61, 0(r61)				# 8078
	sw		r7, 0(r61)				# 1162
	sw		r37, 1(r61)				# 1162
	sw		r54, 2(r61)				# 43463
	addi	r61, r10, 40				# 43524
	lwx		r61, r46, r61				# 43518
	lw		r61, 0(r61)				# 8078
	fneg	r57, r37				# 43510
	sw		r7, 0(r61)				# 1162
	sw		r54, 1(r61)				# 1162
	sw		r57, 2(r61)				# 43463
	addi	r61, r10, 80				# 43578
	lwx		r61, r46, r61				# 43572
	lw		r61, 0(r61)				# 8078
	fneg	r28, r7				# 43564
	sw		r54, 0(r61)				# 1162
	sw		r28, 1(r61)				# 1162
	sw		r57, 2(r61)				# 43463
	addi	r61, r10, 1				# 43639
	lwx		r61, r46, r61				# 43633
	lw		r61, 0(r61)				# 8078
	fneg	r54, r54				# 43625
	sw		r28, 0(r61)				# 1162
	sw		r57, 1(r61)				# 1162
	sw		r54, 2(r61)				# 43463
	addi	r61, r10, 41				# 43706
	lwx		r61, r46, r61				# 43700
	lw		r61, 0(r61)				# 8078
	sw		r28, 0(r61)				# 1162
	sw		r54, 1(r61)				# 1162
	sw		r37, 2(r61)				# 43463
	addi	r61, r10, 81				# 43767
	lwx		r61, r46, r61				# 43761
	lw		r61, 0(r61)				# 8078
	sw		r54, 0(r61)				# 1162
	sw		r7, 1(r61)				# 1162
	sw		r37, 2(r61)				# 1190
.b49591:
	addis	r7, r0, 15820
	ori		r7, r7, 52429				# 44147
	fadd	r57, r26, r7				# 44137
	addi	r46, r10, 2				# 44188
	addi	r61, r0, 0				# 43281
	mv		r28, r62				# 43281
.b49598:
	faddmul	r28, r28, r28, r7				# 43090
	fsqrt	r54, r28				# 227
	addis	r37, r0, 16256				# 43125
	fdiv	r28, r37, r54				# 43113
	fatan	r28, r28				# 440
	fmul	r28, r28, r57				# 43182
	fsin	r62, r28				# 40
	fcos	r28, r28				# 133
	fdiv	r28, r62, r28				# 43170
	fmul	r62, r28, r54				# 43816
	addi	r61, r61, 1				# 43853
	faddmul	r28, r62, r62, r7				# 43090
	fsqrt	r54, r28				# 227
	fdiv	r28, r37, r54				# 43113
	fatan	r28, r28				# 440
	fmul	r28, r28, r41				# 43182
	fsin	r37, r28				# 40
	fcos	r28, r28				# 133
	fdiv	r28, r37, r28				# 43170
	fmul	r28, r28, r54				# 43853
	cmpi	r61, 5
	bge		.b49597				# 43281
	b		.b49598
.b49597:
	fmul	r61, r28, r28				# 43320
	faddmul	r54, r62, r62, r61				# 43320
	addis	r61, r0, 16256				# 43320
	fadd	r54, r54, r61				# 43315
	fsqrt	r54, r54				# 227
	fdiv	r57, r62, r54				# 43352
	fdiv	r28, r28, r54				# 43375
	fdiv	r62, r61, r54				# 43398
	lli		r61, dirvecs.2624				# 43424
	lwx		r7, r61, r9				# 43424
	lwx		r61, r7, r46				# 43471
	lw		r61, 0(r61)				# 8078
	sw		r57, 0(r61)				# 1162
	sw		r28, 1(r61)				# 1162
	sw		r62, 2(r61)				# 43463
	addi	r61, r46, 40				# 43524
	lwx		r61, r7, r61				# 43518
	lw		r61, 0(r61)				# 8078
	fneg	r37, r28				# 43510
	sw		r57, 0(r61)				# 1162
	sw		r62, 1(r61)				# 1162
	sw		r37, 2(r61)				# 43463
	addi	r61, r46, 80				# 43578
	lwx		r61, r7, r61				# 43572
	lw		r61, 0(r61)				# 8078
	fneg	r54, r57				# 43564
	sw		r62, 0(r61)				# 1162
	sw		r54, 1(r61)				# 1162
	sw		r37, 2(r61)				# 43463
	addi	r61, r46, 1				# 43639
	lwx		r61, r7, r61				# 43633
	lw		r61, 0(r61)				# 8078
	fneg	r62, r62				# 43625
	sw		r54, 0(r61)				# 1162
	sw		r37, 1(r61)				# 1162
	sw		r62, 2(r61)				# 43463
	addi	r61, r46, 41				# 43706
	lwx		r61, r7, r61				# 43700
	lw		r61, 0(r61)				# 8078
	sw		r54, 0(r61)				# 1162
	sw		r62, 1(r61)				# 1162
	sw		r28, 2(r61)				# 43463
	addi	r61, r46, 81				# 43767
	lwx		r61, r7, r61				# 43761
	lw		r61, 0(r61)				# 8078
	sw		r62, 0(r61)				# 1162
	sw		r57, 1(r61)				# 1162
	sw		r28, 2(r61)				# 1190
	addi	r51, r51, -1				# 44244
	addi	r9, r9, 1				# 979
	cmpi	r9, 5
	bge		.b49600				# 1000
.b49601:
	cmpi	r51, 0
	bge		.b49589				# 43977
.b49587:
	addi	r13, r13, -1				# 44473
	addi	r15, r15, 2				# 979
	cmpi	r15, 5
	bge		.b49603				# 1000
.b49604:
.b49602:
	addi	r10, r10, 4				# 44473
	cmpi	r13, 0
	bge		.b49585				# 44363
.b49583:
	addi	r15, r0, 4				# 45247
.b49607:
	lli		r9, dirvecs.2624				# 45272
	lwx		r51, r9, r15				# 45272
	addi	r62, r0, 119				# 45081
.b49611:
	lwx		r41, r51, r62				# 45106
	lli		r9, n_objects.2525				# 21353
	lw		r9, 0(r9)				# 21353
	addi	r28, r9, -1				# 21317
	cmpi	r28, 0
	bge		.b49615				# 20796
.b49613:
	addi	r62, r62, -1				# 45149
	cmpi	r62, 0
	bge		.b49611				# 45081
.b49609:
	addi	r15, r15, -1				# 45319
	cmpi	r15, 0
	bge		.b49607				# 45247
.b49605:
	lw		r15, -4(r3)				# 1353
	lli		r9, v3.2630				# 1353
	sw		r15, 0(r9)				# 1353
	lw		r57, -3(r3)				# 1353
	sw		r57, 1(r9)				# 1353
	lw		r7, -5(r3)				# 47149
	sw		r7, 2(r9)				# 47149
	lli		r9, n_objects.2525				# 21353
	lw		r54, 0(r9)				# 21353
	sw		r54, -7(r3)				# 21353
	addi	r61, r54, -1				# 21317
	cmpi	r61, 0
	bge		.b49682				# 20796
.b49680:
	addi	r61, r54, -1				# 47281
	cmpi	r61, 0
	bge		.b49748				# 46514
.b49747:
	lw		r1, -1(r3)				# 47149
	addi	r2, r0, 0				# 47149
	addi	r5, r0, 0				# 47149
	mflr	r63
	sw		r63, -8(r3)
	addi	r3, r3, -9
	bl		pretrace_line.3071
	addi	r3, r3, 9
	lw		r63, -8(r3)
	mtlr	r63				# 47149
	lw		r9, 0(r3)				# 41846
	lw		r1, -2(r3)				# 41846
	lw		r28, -1(r3)				# 41846
	addi	r61, r0, 0				# 41846
	addi	r5, r0, 2				# 41846
T.loop50042:
	sw		r5, -8(r3)				# 41846
	sw		r1, -9(r3)				# 41846
	sw		r28, -10(r3)				# 41846
	sw		r9, -11(r3)				# 41846
	sw		r61, -12(r3)				# 41846
	cmpi	r61, 512
	bge		_min_caml_end				# 41839
.b50044:
	cmpi	r61, 511
	bge		.b50045				# 41873
.b50047:
	addi	r2, r61, 1				# 41910
	mflr	r63
	sw		r63, -13(r3)
	addi	r3, r3, -14
	bl		pretrace_line.3071
	addi	r3, r3, 14
	lw		r63, -13(r3)
	mtlr	r63				# 41910
	addi	r9, r0, 0				# 41477
	sw		r9, -13(r3)				# 41477
.b50051:
	lw		r61, -10(r3)				# 41516
	lwx		r61, r61, r9				# 41516
	sw		r61, -14(r3)				# 41516
	lw		r28, 0(r61)				# 6744
	lw		r61, 0(r28)				# 1353
	lli		r62, rgb.2587				# 1353
	sw		r61, 0(r62)				# 1353
	lw		r61, 1(r28)				# 1376
	sw		r61, 1(r62)				# 1353
	lw		r61, 2(r28)				# 1399
	sw		r61, 2(r62)				# 41504
	lw		r28, -12(r3)				# 37910
	addi	r61, r28, 1				# 37910
	cmpi	r61, 512
	bge		.b50053				# 37910
.b50054:
	cmpi	r28, 0
	ble		.b50055				# 37947
.b50056:
	addi	r61, r9, 1				# 37967
	cmpi	r61, 512
	bge		.b50057				# 37967
.b50058:
	cmpi	r9, 0
	ble		.b50059				# 38001
.b50060:
	addi	r9, r0, 1				# 38018
	addi	r9, r0, 0				# 38637
.b50208:
	lw		r13, -14(r3)				# 7046
	lw		r61, 2(r13)				# 7046
	lwx		r61, r61, r9				# 38685
	cmpi	r61, 0
	bge		.b50210				# 38685
.b50061:
	lli		r62, rgb.2587				# 39509
	lw		r9, 0(r62)				# 39509
	ftoi	r9, r9				# 543
	cmpi	r9, 255
	ble		.b50370				# 39409
.b50371:
	addi	r9, r0, 255				# 39426
.b50381:
	addi	r61, r0, 50				# 946
	out		r61				# 946
	addi	r9, r9, -200				# 1411
.b50374:
	addi	r61, r0, 9				# 1002
	mul16i	r28, r61, 10				# 993
	sub		r28, r9, r28				# 1014
	cmpi	r28, 0
	bge		.b50387				# 1034
.b50388:
	addi	r61, r61, -1				# 1109
	mul16i	r28, r61, 10				# 993
	sub		r28, r9, r28				# 1014
	cmpi	r28, 0
	bge		.b50387				# 1034
	b		.b50388
.b50387:
	addi	r9, r61, 48				# 1055
	out		r9				# 946
	addi	r9, r28, 48				# 1080
	out		r9				# 946
.b50385:
	addi	r15, r0, 32				# 946
	out		r15				# 946
	lw		r9, 1(r62)				# 39569
	ftoi	r9, r9				# 543
	cmpi	r9, 255
	ble		.b50390				# 39409
.b50391:
	addi	r9, r0, 255				# 39426
.b50401:
	addi	r61, r0, 50				# 946
	out		r61				# 946
	addi	r9, r9, -200				# 1411
.b50394:
	addi	r61, r0, 9				# 1002
	mul16i	r28, r61, 10				# 993
	sub		r28, r9, r28				# 1014
	cmpi	r28, 0
	bge		.b50407				# 1034
.b50408:
	addi	r61, r61, -1				# 1109
	mul16i	r28, r61, 10				# 993
	sub		r28, r9, r28				# 1014
	cmpi	r28, 0
	bge		.b50407				# 1034
	b		.b50408
.b50407:
	addi	r9, r61, 48				# 1055
	out		r9				# 946
	addi	r9, r28, 48				# 1080
	out		r9				# 946
.b50405:
	out		r15				# 946
	lw		r9, 2(r62)				# 39629
	ftoi	r9, r9				# 543
	cmpi	r9, 255
	ble		.b50410				# 39409
.b50411:
	addi	r9, r0, 255				# 39426
.b50421:
	addi	r61, r0, 50				# 946
	out		r61				# 946
	addi	r9, r9, -200				# 1411
.b50414:
	addi	r61, r0, 9				# 1002
	mul16i	r28, r61, 10				# 993
	sub		r28, r9, r28				# 1014
	cmpi	r28, 0
	bge		.b50427				# 1034
.b50428:
	addi	r61, r61, -1				# 1109
	mul16i	r28, r61, 10				# 993
	sub		r28, r9, r28				# 1014
	cmpi	r28, 0
	bge		.b50427				# 1034
	b		.b50428
.b50427:
	addi	r9, r61, 48				# 1055
	out		r9				# 946
	addi	r9, r28, 48				# 1080
	out		r9				# 946
.b50425:
	addi	r9, r0, 10				# 946
	out		r9				# 946
	lw		r9, -13(r3)				# 41688
	addi	r9, r9, 1				# 41688
	sw		r9, -13(r3)				# 41477
	cmpi	r9, 512
	bge		.b50048				# 41470
	b		.b50051
.b50048:
	lw		r9, -12(r3)				# 41997
	addi	r61, r9, 1				# 41997
	lw		r9, -8(r3)				# 979
	addi	r5, r9, 2				# 979
	cmpi	r5, 5
	bge		.b50430				# 1000
.b50431:
.b50429:
	lw		r28, -9(r3)				# 41997
	lw		r1, -11(r3)				# 41997
	lw		r9, -10(r3)				# 41997
	b		T.loop50042				# 41997
.b50430:
	addi	r5, r5, -5				# 1017
	b		.b50429				# 1017
.b50410:
	cmpi	r9, 0
	bge		.b50412				# 39435
.b50413:
	addi	r9, r0, 0				# 39450
.b50424:
	addi	r61, r0, 48				# 1493
	out		r61				# 946
	b		.b50414				# 1512
.b50412:
	cmpi	r9, 500
	bge		.b50415				# 1192
.b50416:
	cmpi	r9, 400
	bge		.b50417				# 1251
.b50418:
	cmpi	r9, 300
	bge		.b50419				# 1310
.b50420:
	cmpi	r9, 200
	bge		.b50421				# 1369
.b50422:
	cmpi	r9, 100
	bge		.b50423				# 1428
	b		.b50424
.b50423:
	addi	r61, r0, 49				# 1451
	out		r61				# 946
	addi	r9, r9, -100				# 1470
	b		.b50414				# 1470
.b50419:
	addi	r61, r0, 51				# 946
	out		r61				# 946
	addi	r9, r9, -300				# 1352
	b		.b50414				# 1352
.b50417:
	addi	r61, r0, 52				# 1274
	out		r61				# 946
	addi	r9, r9, -400				# 1293
	b		.b50414				# 1293
.b50415:
	addi	r61, r0, 53				# 1215
	out		r61				# 946
	addi	r9, r9, -500				# 1234
	b		.b50414				# 1234
.b50390:
	cmpi	r9, 0
	bge		.b50392				# 39435
.b50393:
	addi	r9, r0, 0				# 39450
.b50404:
	addi	r61, r0, 48				# 1493
	out		r61				# 946
	b		.b50394				# 1512
.b50392:
	cmpi	r9, 500
	bge		.b50395				# 1192
.b50396:
	cmpi	r9, 400
	bge		.b50397				# 1251
.b50398:
	cmpi	r9, 300
	bge		.b50399				# 1310
.b50400:
	cmpi	r9, 200
	bge		.b50401				# 1369
.b50402:
	cmpi	r9, 100
	bge		.b50403				# 1428
	b		.b50404
.b50403:
	addi	r61, r0, 49				# 1451
	out		r61				# 946
	addi	r9, r9, -100				# 1470
	b		.b50394				# 1470
.b50399:
	addi	r61, r0, 51				# 946
	out		r61				# 946
	addi	r9, r9, -300				# 1352
	b		.b50394				# 1352
.b50397:
	addi	r61, r0, 52				# 1274
	out		r61				# 946
	addi	r9, r9, -400				# 1293
	b		.b50394				# 1293
.b50395:
	addi	r61, r0, 53				# 1215
	out		r61				# 946
	addi	r9, r9, -500				# 1234
	b		.b50394				# 1234
.b50370:
	cmpi	r9, 0
	bge		.b50372				# 39435
.b50373:
	addi	r9, r0, 0				# 39450
.b50384:
	addi	r61, r0, 48				# 1493
	out		r61				# 946
	b		.b50374				# 1512
.b50372:
	cmpi	r9, 500
	bge		.b50375				# 1192
.b50376:
	cmpi	r9, 400
	bge		.b50377				# 1251
.b50378:
	cmpi	r9, 300
	bge		.b50379				# 1310
.b50380:
	cmpi	r9, 200
	bge		.b50381				# 1369
.b50382:
	cmpi	r9, 100
	bge		.b50383				# 1428
	b		.b50384
.b50383:
	addi	r61, r0, 49				# 1451
	out		r61				# 946
	addi	r9, r9, -100				# 1470
	b		.b50374				# 1470
.b50379:
	addi	r61, r0, 51				# 946
	out		r61				# 946
	addi	r9, r9, -300				# 1352
	b		.b50374				# 1352
.b50377:
	addi	r61, r0, 52				# 1274
	out		r61				# 946
	addi	r9, r9, -400				# 1293
	b		.b50374				# 1293
.b50375:
	addi	r61, r0, 53				# 1215
	out		r61				# 946
	addi	r9, r9, -500				# 1234
	b		.b50374				# 1234
.b50210:
	lw		r61, 2(r13)				# 7046
	lwx		r28, r61, r9				# 38247
	lw		r61, -11(r3)				# 38301
	lw		r51, -13(r3)				# 38301
	lwx		r62, r61, r51				# 38301
	lw		r61, 2(r62)				# 7046
	lwx		r61, r61, r9				# 38298
	cmp		r61, r28
	beq		.b50213				# 38298
.b50221:
	sw		r9, -15(r3)				# 37563
	cmpi	r9, 4
	ble		.b50224				# 37563
	b		.b50061
.b50224:
	lw		r51, -14(r3)				# 7046
	lw		r61, 2(r51)				# 7046
	lwx		r61, r61, r9				# 37630
	cmpi	r61, 0
	bge		.b50226				# 37630
	b		.b50061
.b50226:
	lw		r61, 3(r51)				# 7193
	lwx		r61, r61, r9				# 37719
	cmpi	r61, 0
	beq		.b50228				# 37719
.b50230:
	lw		r28, 5(r51)				# 7491
	lw		r10, 7(r51)				# 7939
	lw		r15, 1(r51)				# 6897
	lw		r61, 4(r51)				# 7334
	sw		r61, -16(r3)				# 7334
	lwx		r28, r28, r9				# 36743
	lw		r62, 0(r28)				# 1353
	sw		r62, -17(r3)				# 1353
	lli		r61, diffuse_ray.2584				# 1353
	sw		r62, 0(r61)				# 1353
	lw		r62, 1(r28)				# 1376
	sw		r62, -18(r3)				# 1376
	sw		r62, 1(r61)				# 1353
	lw		r28, 2(r28)				# 1399
	sw		r28, -19(r3)				# 1399
	sw		r28, 2(r61)				# 36743
	lw		r61, 6(r51)				# 7634
	lw		r61, 0(r61)				# 36779
	sw		r61, -20(r3)				# 36779
	lwx		r28, r10, r9				# 36779
	sw		r28, -21(r3)				# 36779
	lwx		r51, r15, r9				# 36779
	sw		r51, -22(r3)				# 36779
	cmpi	r61, 0
	beq		.b50231				# 36097
.b50233:
	lli		r9, dirvecs.2624				# 36123
	lw		r9, 0(r9)				# 36123
	sw		r9, -23(r3)				# 36123
	lw		r9, 0(r51)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r51)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r51)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b50236				# 21420
.b50234:
	addi	r9, r0, 118				# 35584
	sw		r9, -24(r3)				# 35584
.b50250:
	lw		r62, -23(r3)				# 35627
	lwx		r1, r62, r9				# 35627
	lw		r10, 0(r1)				# 8078
	lw		r61, 0(r10)				# 1949
	lw		r28, -21(r3)				# 1949
	lw		r13, 0(r28)				# 1949
	lw		r15, 1(r10)				# 1967
	lw		r51, 1(r28)				# 1967
	fmul	r15, r15, r51				# 1949
	faddmul	r15, r61, r13, r15				# 1949
	lw		r61, 2(r10)				# 1985
	lw		r28, 2(r28)				# 1985
	faddmul	r28, r61, r28, r15				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b50256				# 3188
.b50257:
	addi	r9, r9, 1				# 35712
	lwx		r1, r62, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r28, r9				# 35694
	mflr	r63
	sw		r63, -25(r3)
	addi	r3, r3, -26
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 26
	lw		r63, -25(r3)
	mtlr	r63				# 35694
.b50255:
	lw		r9, -24(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -24(r3)				# 35584
	cmpi	r9, 0
	bge		.b50250				# 35584
.b50231:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 1
	beq		.b50258				# 36180
.b50260:
	lli		r9, dirvecs.2624				# 36206
	lw		r9, 1(r9)				# 36206
	sw		r9, -25(r3)				# 36206
	lw		r25, -22(r3)				# 1353
	lw		r9, 0(r25)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r25)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r25)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50263				# 21420
.b50261:
	addi	r9, r0, 118				# 35584
	sw		r9, -26(r3)				# 35584
.b50277:
	lw		r13, -25(r3)				# 35627
	lwx		r1, r13, r9				# 35627
	lw		r15, 0(r1)				# 8078
	lw		r28, 0(r15)				# 1949
	lw		r61, -21(r3)				# 1949
	lw		r51, 0(r61)				# 1949
	lw		r62, 1(r15)				# 1967
	lw		r10, 1(r61)				# 1967
	fmul	r62, r62, r10				# 1949
	faddmul	r62, r28, r51, r62				# 1949
	lw		r28, 2(r15)				# 1985
	lw		r61, 2(r61)				# 1985
	faddmul	r28, r28, r61, r62				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b50283				# 3188
.b50284:
	addi	r9, r9, 1				# 35712
	lwx		r1, r13, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r28, r9				# 35694
	mflr	r63
	sw		r63, -27(r3)
	addi	r3, r3, -28
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 28
	lw		r63, -27(r3)
	mtlr	r63				# 35694
.b50282:
	lw		r9, -26(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -26(r3)				# 35584
	cmpi	r9, 0
	bge		.b50277				# 35584
.b50258:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 2
	beq		.b50285				# 36263
.b50287:
	lli		r9, dirvecs.2624				# 36289
	lw		r9, 2(r9)				# 36289
	sw		r9, -27(r3)				# 36289
	lw		r41, -22(r3)				# 1353
	lw		r9, 0(r41)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r41)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r41)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50290				# 21420
.b50288:
	addi	r9, r0, 118				# 35584
	sw		r9, -28(r3)				# 35584
.b50304:
	lw		r62, -27(r3)				# 35627
	lwx		r1, r62, r9				# 35627
	lw		r10, 0(r1)				# 8078
	lw		r13, 0(r10)				# 1949
	lw		r51, -21(r3)				# 1949
	lw		r15, 0(r51)				# 1949
	lw		r61, 1(r10)				# 1967
	lw		r28, 1(r51)				# 1967
	fmul	r61, r61, r28				# 1949
	faddmul	r15, r13, r15, r61				# 1949
	lw		r28, 2(r10)				# 1985
	lw		r61, 2(r51)				# 1985
	faddmul	r28, r28, r61, r15				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b50310				# 3188
.b50311:
	addi	r9, r9, 1				# 35712
	lwx		r1, r62, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r28, r9				# 35694
	mflr	r63
	sw		r63, -29(r3)
	addi	r3, r3, -30
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 30
	lw		r63, -29(r3)
	mtlr	r63				# 35694
.b50309:
	lw		r9, -28(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -28(r3)				# 35584
	cmpi	r9, 0
	bge		.b50304				# 35584
.b50285:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 3
	beq		.b50312				# 36346
.b50314:
	lli		r9, dirvecs.2624				# 36372
	lw		r9, 3(r9)				# 36372
	sw		r9, -29(r3)				# 36372
	lw		r28, -22(r3)				# 1353
	lw		r9, 0(r28)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r28)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r28)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b50317				# 21420
.b50315:
	addi	r9, r0, 118				# 35584
	sw		r9, -30(r3)				# 35584
.b50331:
	lw		r28, -29(r3)				# 35627
	lwx		r1, r28, r9				# 35627
	lw		r51, 0(r1)				# 8078
	lw		r62, 0(r51)				# 1949
	lw		r13, -21(r3)				# 1949
	lw		r61, 0(r13)				# 1949
	lw		r15, 1(r51)				# 1967
	lw		r10, 1(r13)				# 1967
	fmul	r15, r15, r10				# 1949
	faddmul	r62, r62, r61, r15				# 1949
	lw		r15, 2(r51)				# 1985
	lw		r61, 2(r13)				# 1985
	faddmul	r62, r15, r61, r62				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r62
	ble		.b50337				# 3188
.b50338:
	addi	r9, r9, 1				# 35712
	lwx		r1, r28, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r62, r9				# 35694
	mflr	r63
	sw		r63, -31(r3)
	addi	r3, r3, -32
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 32
	lw		r63, -31(r3)
	mtlr	r63				# 35694
.b50336:
	lw		r9, -30(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -30(r3)				# 35584
	cmpi	r9, 0
	bge		.b50331				# 35584
.b50312:
	lw		r9, -20(r3)				# 36743
	cmpi	r9, 4
	beq		.b50339				# 36429
.b50341:
	lli		r9, dirvecs.2624				# 36455
	lw		r9, 4(r9)				# 36455
	sw		r9, -31(r3)				# 36455
	lw		r41, -22(r3)				# 1353
	lw		r9, 0(r41)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r41)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r41)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50344				# 21420
.b50342:
	addi	r9, r0, 118				# 35584
	sw		r9, -32(r3)				# 35584
.b50358:
	lw		r28, -31(r3)				# 35627
	lwx		r1, r28, r9				# 35627
	lw		r13, 0(r1)				# 8078
	lw		r51, 0(r13)				# 1949
	lw		r61, -21(r3)				# 1949
	lw		r15, 0(r61)				# 1949
	lw		r10, 1(r13)				# 1967
	lw		r62, 1(r61)				# 1967
	fmul	r62, r10, r62				# 1949
	faddmul	r15, r51, r15, r62				# 1949
	lw		r62, 2(r13)				# 1985
	lw		r61, 2(r61)				# 1985
	faddmul	r61, r62, r61, r15				# 35609
	addi	r62, r0, 0				# 35671
	fcmp	r62, r61
	ble		.b50364				# 3188
.b50365:
	addi	r9, r9, 1				# 35712
	lwx		r1, r28, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r61, r9				# 35694
	mflr	r63
	sw		r63, -33(r3)
	addi	r3, r3, -34
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 34
	lw		r63, -33(r3)
	mtlr	r63				# 35694
.b50363:
	lw		r9, -32(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -32(r3)				# 35584
	cmpi	r9, 0
	bge		.b50358				# 35584
.b50339:
	lw		r9, -15(r3)				# 36884
	lw		r61, -16(r3)				# 36884
	lwx		r15, r61, r9				# 36884
	lli		r28, rgb.2587				# 2671
	lw		r61, 0(r28)				# 2671
	lw		r62, 0(r15)				# 2683
	lw		r9, -17(r3)				# 2671
	faddmul	r9, r62, r9, r61				# 2659
	sw		r9, 0(r28)				# 2659
	lw		r61, 1(r28)				# 2713
	lw		r9, 1(r15)				# 2725
	lw		r62, -18(r3)				# 2713
	faddmul	r9, r9, r62, r61				# 2701
	sw		r9, 1(r28)				# 2659
	lw		r61, 2(r28)				# 2755
	lw		r9, 2(r15)				# 2767
	lw		r62, -19(r3)				# 2755
	faddmul	r9, r9, r62, r61				# 2743
	sw		r9, 2(r28)				# 2743
.b50228:
	lw		r9, -15(r3)				# 37806
	addi	r9, r9, 1				# 37806
	sw		r9, -15(r3)				# 37563
	cmpi	r9, 4
	ble		.b50224				# 37563
	b		.b50061
.b50364:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r61, r9				# 35766
	mflr	r63
	sw		r63, -33(r3)
	addi	r3, r3, -34
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 34
	lw		r63, -33(r3)
	mtlr	r63				# 35766
	b		.b50363				# 35766
.b50344:
	lli		r61, objects.2536				# 21445
	lwx		r28, r61, r9				# 21445
	lw		r51, 10(r28)				# 6561
	lw		r30, 1(r28)				# 2994
	lw		r61, 0(r41)				# 21561
	lw		r15, 5(r28)				# 4475
	lw		r62, 0(r15)				# 21561
	fsub	r61, r61, r62				# 21547
	sw		r61, 0(r51)				# 21547
	lw		r62, 1(r41)				# 21603
	lw		r61, 1(r15)				# 21603
	fsub	r61, r62, r61				# 21589
	sw		r61, 1(r51)				# 21547
	lw		r62, 2(r41)				# 21645
	lw		r61, 2(r15)				# 21645
	fsub	r25, r62, r61				# 21631
	sw		r25, 2(r51)				# 21547
	cmpi	r30, 2
	beq		.b50347				# 21673
.b50348:
	cmpi	r30, 2
	ble		.b50346				# 21798
.b50350:
	lw		r62, 0(r51)				# 21847
	lw		r54, 1(r51)				# 21847
	fmul	r7, r62, r62				# 14374
	lw		r10, 4(r28)				# 3734
	lw		r13, 0(r10)				# 14374
	fmul	r61, r54, r54				# 14400
	lw		r15, 1(r10)				# 14400
	fmul	r61, r61, r15				# 14374
	faddmul	r61, r7, r13, r61				# 14374
	fmul	r15, r25, r25				# 14426
	lw		r10, 2(r10)				# 14426
	faddmul	r61, r15, r10, r61				# 14354
	lw		r15, 3(r28)				# 3553
	cmpi	r15, 0
	beq		.b50352				# 14456
.b50353:
	fmul	r15, r54, r25				# 14522
	lw		r10, 9(r28)				# 5989
	lw		r28, 0(r10)				# 14522
	faddmul	r61, r15, r28, r61				# 14503
	fmul	r15, r25, r62				# 14556
	lw		r28, 1(r10)				# 14556
	faddmul	r28, r15, r28, r61				# 14503
	fmul	r62, r62, r54				# 14590
	lw		r61, 2(r10)				# 14590
	faddmul	r61, r62, r61, r28				# 14503
	cmpi	r30, 3
	beq		.b50355				# 21917
.b50356:
.b50354:
	sw		r61, 3(r51)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50344				# 21420
	b		.b50342
.b50355:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50354				# 21937
.b50352:
	cmpi	r30, 3
	beq		.b50355				# 21917
	b		.b50356
.b50346:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50344				# 21420
	b		.b50342
.b50347:
	lw		r62, 4(r28)				# 4293
	lw		r28, 0(r51)				# 21728
	lw		r10, 1(r51)				# 21728
	lw		r61, 0(r62)				# 2037
	lw		r15, 1(r62)				# 2052
	fmul	r15, r15, r10				# 2037
	faddmul	r28, r61, r28, r15				# 2037
	lw		r61, 2(r62)				# 2067
	faddmul	r61, r61, r25, r28				# 21713
	sw		r61, 3(r51)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50344				# 21420
	b		.b50342
.b50337:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r62, r9				# 35766
	mflr	r63
	sw		r63, -31(r3)
	addi	r3, r3, -32
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 32
	lw		r63, -31(r3)
	mtlr	r63				# 35766
	b		.b50336				# 35766
.b50317:
	lli		r9, objects.2536				# 21445
	lwx		r13, r9, r61				# 21445
	lw		r25, 10(r13)				# 6561
	lw		r10, 1(r13)				# 2994
	lw		r9, 0(r28)				# 21561
	lw		r15, 5(r13)				# 4475
	lw		r62, 0(r15)				# 21561
	fsub	r9, r9, r62				# 21547
	sw		r9, 0(r25)				# 21547
	lw		r9, 1(r28)				# 21603
	lw		r62, 1(r15)				# 21603
	fsub	r9, r9, r62				# 21589
	sw		r9, 1(r25)				# 21547
	lw		r62, 2(r28)				# 21645
	lw		r9, 2(r15)				# 21645
	fsub	r51, r62, r9				# 21631
	sw		r51, 2(r25)				# 21547
	cmpi	r10, 2
	beq		.b50320				# 21673
.b50321:
	cmpi	r10, 2
	ble		.b50319				# 21798
.b50323:
	lw		r30, 0(r25)				# 21847
	lw		r54, 1(r25)				# 21847
	fmul	r15, r30, r30				# 14374
	lw		r7, 4(r13)				# 3734
	lw		r9, 0(r7)				# 14374
	fmul	r62, r54, r54				# 14400
	lw		r41, 1(r7)				# 14400
	fmul	r62, r62, r41				# 14374
	faddmul	r9, r15, r9, r62				# 14374
	fmul	r15, r51, r51				# 14426
	lw		r62, 2(r7)				# 14426
	faddmul	r9, r15, r62, r9				# 14354
	lw		r62, 3(r13)				# 3553
	cmpi	r62, 0
	beq		.b50325				# 14456
.b50326:
	fmul	r62, r54, r51				# 14522
	lw		r13, 9(r13)				# 5989
	lw		r15, 0(r13)				# 14522
	faddmul	r62, r62, r15, r9				# 14503
	fmul	r15, r51, r30				# 14556
	lw		r9, 1(r13)				# 14556
	faddmul	r62, r15, r9, r62				# 14503
	fmul	r9, r30, r54				# 14590
	lw		r15, 2(r13)				# 14590
	faddmul	r9, r9, r15, r62				# 14503
	cmpi	r10, 3
	beq		.b50328				# 21917
.b50329:
.b50327:
	sw		r9, 3(r25)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50317				# 21420
	b		.b50315
.b50328:
	addis	r62, r0, 16256				# 21937
	fsub	r9, r9, r62				# 21937
	b		.b50327				# 21937
.b50325:
	cmpi	r10, 3
	beq		.b50328				# 21917
	b		.b50329
.b50319:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50317				# 21420
	b		.b50315
.b50320:
	lw		r15, 4(r13)				# 4293
	lw		r62, 0(r25)				# 21728
	lw		r9, 1(r25)				# 21728
	lw		r10, 0(r15)				# 2037
	lw		r13, 1(r15)				# 2052
	fmul	r9, r13, r9				# 2037
	faddmul	r9, r10, r62, r9				# 2037
	lw		r62, 2(r15)				# 2067
	faddmul	r9, r62, r51, r9				# 21713
	sw		r9, 3(r25)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50317				# 21420
	b		.b50315
.b50310:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -29(r3)
	addi	r3, r3, -30
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 30
	lw		r63, -29(r3)
	mtlr	r63				# 35766
	b		.b50309				# 35766
.b50290:
	lli		r61, objects.2536				# 21445
	lwx		r28, r61, r9				# 21445
	lw		r10, 10(r28)				# 6561
	lw		r54, 1(r28)				# 2994
	lw		r61, 0(r41)				# 21561
	lw		r15, 5(r28)				# 4475
	lw		r62, 0(r15)				# 21561
	fsub	r61, r61, r62				# 21547
	sw		r61, 0(r10)				# 21547
	lw		r61, 1(r41)				# 21603
	lw		r62, 1(r15)				# 21603
	fsub	r61, r61, r62				# 21589
	sw		r61, 1(r10)				# 21547
	lw		r62, 2(r41)				# 21645
	lw		r61, 2(r15)				# 21645
	fsub	r13, r62, r61				# 21631
	sw		r13, 2(r10)				# 21547
	cmpi	r54, 2
	beq		.b50293				# 21673
.b50294:
	cmpi	r54, 2
	ble		.b50292				# 21798
.b50296:
	lw		r15, 0(r10)				# 21847
	lw		r30, 1(r10)				# 21847
	fmul	r61, r15, r15				# 14374
	lw		r62, 4(r28)				# 3734
	lw		r7, 0(r62)				# 14374
	fmul	r51, r30, r30				# 14400
	lw		r25, 1(r62)				# 14400
	fmul	r51, r51, r25				# 14374
	faddmul	r51, r61, r7, r51				# 14374
	fmul	r61, r13, r13				# 14426
	lw		r62, 2(r62)				# 14426
	faddmul	r61, r61, r62, r51				# 14354
	lw		r62, 3(r28)				# 3553
	cmpi	r62, 0
	beq		.b50298				# 14456
.b50299:
	fmul	r62, r30, r13				# 14522
	lw		r51, 9(r28)				# 5989
	lw		r28, 0(r51)				# 14522
	faddmul	r61, r62, r28, r61				# 14503
	fmul	r28, r13, r15				# 14556
	lw		r62, 1(r51)				# 14556
	faddmul	r28, r28, r62, r61				# 14503
	fmul	r62, r15, r30				# 14590
	lw		r61, 2(r51)				# 14590
	faddmul	r61, r62, r61, r28				# 14503
	cmpi	r54, 3
	beq		.b50301				# 21917
.b50302:
.b50300:
	sw		r61, 3(r10)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50290				# 21420
	b		.b50288
.b50301:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50300				# 21937
.b50298:
	cmpi	r54, 3
	beq		.b50301				# 21917
	b		.b50302
.b50292:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50290				# 21420
	b		.b50288
.b50293:
	lw		r51, 4(r28)				# 4293
	lw		r61, 0(r10)				# 21728
	lw		r15, 1(r10)				# 21728
	lw		r28, 0(r51)				# 2037
	lw		r62, 1(r51)				# 2052
	fmul	r62, r62, r15				# 2037
	faddmul	r61, r28, r61, r62				# 2037
	lw		r28, 2(r51)				# 2067
	faddmul	r61, r28, r13, r61				# 21713
	sw		r61, 3(r10)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50290				# 21420
	b		.b50288
.b50283:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -27(r3)
	addi	r3, r3, -28
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 28
	lw		r63, -27(r3)
	mtlr	r63				# 35766
	b		.b50282				# 35766
.b50263:
	lli		r61, objects.2536				# 21445
	lwx		r62, r61, r9				# 21445
	lw		r13, 10(r62)				# 6561
	lw		r54, 1(r62)				# 2994
	lw		r61, 0(r25)				# 21561
	lw		r15, 5(r62)				# 4475
	lw		r28, 0(r15)				# 21561
	fsub	r61, r61, r28				# 21547
	sw		r61, 0(r13)				# 21547
	lw		r28, 1(r25)				# 21603
	lw		r61, 1(r15)				# 21603
	fsub	r61, r28, r61				# 21589
	sw		r61, 1(r13)				# 21547
	lw		r28, 2(r25)				# 21645
	lw		r61, 2(r15)				# 21645
	fsub	r41, r28, r61				# 21631
	sw		r41, 2(r13)				# 21547
	cmpi	r54, 2
	beq		.b50266				# 21673
.b50267:
	cmpi	r54, 2
	ble		.b50265				# 21798
.b50269:
	lw		r10, 0(r13)				# 21847
	lw		r7, 1(r13)				# 21847
	fmul	r30, r10, r10				# 14374
	lw		r28, 4(r62)				# 3734
	lw		r15, 0(r28)				# 14374
	fmul	r51, r7, r7				# 14400
	lw		r61, 1(r28)				# 14400
	fmul	r61, r51, r61				# 14374
	faddmul	r15, r30, r15, r61				# 14374
	fmul	r51, r41, r41				# 14426
	lw		r61, 2(r28)				# 14426
	faddmul	r61, r51, r61, r15				# 14354
	lw		r28, 3(r62)				# 3553
	cmpi	r28, 0
	beq		.b50271				# 14456
.b50272:
	fmul	r28, r7, r41				# 14522
	lw		r15, 9(r62)				# 5989
	lw		r62, 0(r15)				# 14522
	faddmul	r62, r28, r62, r61				# 14503
	fmul	r28, r41, r10				# 14556
	lw		r61, 1(r15)				# 14556
	faddmul	r61, r28, r61, r62				# 14503
	fmul	r62, r10, r7				# 14590
	lw		r28, 2(r15)				# 14590
	faddmul	r61, r62, r28, r61				# 14503
	cmpi	r54, 3
	beq		.b50274				# 21917
.b50275:
.b50273:
	sw		r61, 3(r13)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50263				# 21420
	b		.b50261
.b50274:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50273				# 21937
.b50271:
	cmpi	r54, 3
	beq		.b50274				# 21917
	b		.b50275
.b50265:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50263				# 21420
	b		.b50261
.b50266:
	lw		r28, 4(r62)				# 4293
	lw		r61, 0(r13)				# 21728
	lw		r15, 1(r13)				# 21728
	lw		r62, 0(r28)				# 2037
	lw		r10, 1(r28)				# 2052
	fmul	r15, r10, r15				# 2037
	faddmul	r61, r62, r61, r15				# 2037
	lw		r28, 2(r28)				# 2067
	faddmul	r61, r28, r41, r61				# 21713
	sw		r61, 3(r13)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50263				# 21420
	b		.b50261
.b50256:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -25(r3)
	addi	r3, r3, -26
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 26
	lw		r63, -25(r3)
	mtlr	r63				# 35766
	b		.b50255				# 35766
.b50236:
	lli		r9, objects.2536				# 21445
	lwx		r13, r9, r61				# 21445
	lw		r10, 10(r13)				# 6561
	lw		r25, 1(r13)				# 2994
	lw		r62, 0(r51)				# 21561
	lw		r28, 5(r13)				# 4475
	lw		r9, 0(r28)				# 21561
	fsub	r9, r62, r9				# 21547
	sw		r9, 0(r10)				# 21547
	lw		r9, 1(r51)				# 21603
	lw		r62, 1(r28)				# 21603
	fsub	r9, r9, r62				# 21589
	sw		r9, 1(r10)				# 21547
	lw		r9, 2(r51)				# 21645
	lw		r28, 2(r28)				# 21645
	fsub	r54, r9, r28				# 21631
	sw		r54, 2(r10)				# 21547
	cmpi	r25, 2
	beq		.b50239				# 21673
.b50240:
	cmpi	r25, 2
	ble		.b50238				# 21798
.b50242:
	lw		r15, 0(r10)				# 21847
	lw		r30, 1(r10)				# 21847
	fmul	r7, r15, r15				# 14374
	lw		r62, 4(r13)				# 3734
	lw		r28, 0(r62)				# 14374
	fmul	r9, r30, r30				# 14400
	lw		r41, 1(r62)				# 14400
	fmul	r9, r9, r41				# 14374
	faddmul	r9, r7, r28, r9				# 14374
	fmul	r7, r54, r54				# 14426
	lw		r28, 2(r62)				# 14426
	faddmul	r9, r7, r28, r9				# 14354
	lw		r28, 3(r13)				# 3553
	cmpi	r28, 0
	beq		.b50244				# 14456
.b50245:
	fmul	r62, r30, r54				# 14522
	lw		r13, 9(r13)				# 5989
	lw		r28, 0(r13)				# 14522
	faddmul	r28, r62, r28, r9				# 14503
	fmul	r9, r54, r15				# 14556
	lw		r62, 1(r13)				# 14556
	faddmul	r62, r9, r62, r28				# 14503
	fmul	r9, r15, r30				# 14590
	lw		r28, 2(r13)				# 14590
	faddmul	r9, r9, r28, r62				# 14503
	cmpi	r25, 3
	beq		.b50247				# 21917
.b50248:
.b50246:
	sw		r9, 3(r10)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50236				# 21420
	b		.b50234
.b50247:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b50246				# 21937
.b50244:
	cmpi	r25, 3
	beq		.b50247				# 21917
	b		.b50248
.b50238:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50236				# 21420
	b		.b50234
.b50239:
	lw		r15, 4(r13)				# 4293
	lw		r62, 0(r10)				# 21728
	lw		r13, 1(r10)				# 21728
	lw		r9, 0(r15)				# 2037
	lw		r28, 1(r15)				# 2052
	fmul	r28, r28, r13				# 2037
	faddmul	r9, r9, r62, r28				# 2037
	lw		r28, 2(r15)				# 2067
	faddmul	r9, r28, r54, r9				# 21713
	sw		r9, 3(r10)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50236				# 21420
	b		.b50234
.b50213:
	lw		r61, -9(r3)				# 38355
	lwx		r61, r61, r51				# 38355
	lw		r61, 2(r61)				# 7046
	lwx		r61, r61, r9				# 38352
	cmp		r61, r28
	beq		.b50215				# 38352
	b		.b50221
.b50215:
	addi	r61, r51, -1				# 38426
	lw		r15, -10(r3)				# 38411
	lwx		r61, r15, r61				# 38411
	lw		r61, 2(r61)				# 7046
	lwx		r61, r61, r9				# 38408
	cmp		r61, r28
	beq		.b50217				# 38408
	b		.b50221
.b50217:
	addi	r61, r51, 1				# 38478
	lwx		r61, r15, r61				# 38463
	lw		r61, 2(r61)				# 7046
	lwx		r61, r61, r9				# 38460
	cmp		r61, r28
	beq		.b50222				# 38460
	b		.b50221
.b50222:
	lw		r61, 3(r13)				# 7193
	lwx		r61, r61, r9				# 38838
	cmpi	r61, 0
	beq		.b50366				# 38838
.b50368:
	lw		r15, 5(r62)				# 7491
	addi	r28, r51, -1				# 37080
	lw		r61, -10(r3)				# 37055
	lwx		r28, r61, r28				# 37055
	lw		r54, 5(r28)				# 7491
	lw		r7, 5(r13)				# 7491
	addi	r28, r51, 1				# 37187
	lwx		r61, r61, r28				# 37162
	lw		r10, 5(r61)				# 7491
	lw		r61, -9(r3)				# 37215
	lwx		r61, r61, r51				# 37215
	lw		r62, 5(r61)				# 7491
	lwx		r61, r15, r9				# 37255
	lw		r25, 0(r61)				# 1353
	lli		r30, diffuse_ray.2584				# 1353
	sw		r25, 0(r30)				# 1353
	lw		r15, 1(r61)				# 1376
	sw		r15, 1(r30)				# 1353
	lw		r51, 2(r61)				# 1399
	sw		r51, 2(r30)				# 37255
	lwx		r28, r54, r9				# 37289
	lw		r61, 0(r28)				# 2282
	fadd	r54, r25, r61				# 2270
	sw		r54, 0(r30)				# 2270
	lw		r61, 1(r28)				# 2315
	fadd	r15, r15, r61				# 2303
	sw		r15, 1(r30)				# 2270
	lw		r61, 2(r28)				# 2348
	fadd	r28, r51, r61				# 2336
	sw		r28, 2(r30)				# 37255
	lwx		r51, r7, r9				# 37325
	lw		r61, 0(r51)				# 2282
	fadd	r7, r54, r61				# 2270
	sw		r7, 0(r30)				# 2270
	lw		r61, 1(r51)				# 2315
	fadd	r54, r15, r61				# 2303
	sw		r54, 1(r30)				# 2270
	lw		r61, 2(r51)				# 2348
	fadd	r15, r28, r61				# 2336
	sw		r15, 2(r30)				# 37255
	lwx		r61, r10, r9				# 37363
	lw		r28, 0(r61)				# 2282
	fadd	r28, r7, r28				# 2270
	sw		r28, 0(r30)				# 2270
	lw		r10, 1(r61)				# 2315
	fadd	r10, r54, r10				# 2303
	sw		r10, 1(r30)				# 2270
	lw		r61, 2(r61)				# 2348
	fadd	r61, r15, r61				# 2336
	sw		r61, 2(r30)				# 37255
	lwx		r62, r62, r9				# 37400
	lw		r15, 0(r62)				# 2282
	fadd	r28, r28, r15				# 2270
	sw		r28, 0(r30)				# 2270
	lw		r15, 1(r62)				# 2315
	fadd	r15, r10, r15				# 2303
	sw		r15, 1(r30)				# 2270
	lw		r62, 2(r62)				# 2348
	fadd	r62, r61, r62				# 2336
	sw		r62, 2(r30)				# 37255
	lw		r61, 4(r13)				# 7334
	lwx		r10, r61, r9				# 37473
	lli		r13, rgb.2587				# 2671
	lw		r61, 0(r13)				# 2671
	lw		r51, 0(r10)				# 2683
	faddmul	r61, r51, r28, r61				# 2659
	sw		r61, 0(r13)				# 2659
	lw		r61, 1(r13)				# 2713
	lw		r28, 1(r10)				# 2725
	faddmul	r61, r28, r15, r61				# 2701
	sw		r61, 1(r13)				# 2659
	lw		r28, 2(r13)				# 2755
	lw		r61, 2(r10)				# 2767
	faddmul	r61, r61, r62, r28				# 2743
	sw		r61, 2(r13)				# 2743
	addi	r9, r9, 1				# 38929
	cmpi	r9, 4
	ble		.b50208				# 38662
	b		.b50061
.b50366:
	addi	r9, r9, 1				# 38929
	cmpi	r9, 4
	ble		.b50208				# 38662
	b		.b50061
.b50059:
	addi	r9, r0, 0				# 38029
	addi	r9, r0, 0				# 37563
	sw		r9, -15(r3)				# 37563
.b50065:
	lw		r10, -14(r3)				# 7046
	lw		r61, 2(r10)				# 7046
	lwx		r61, r61, r9				# 37630
	cmpi	r61, 0
	bge		.b50067				# 37630
	b		.b50061
.b50067:
	lw		r61, 3(r10)				# 7193
	lwx		r61, r61, r9				# 37719
	cmpi	r61, 0
	beq		.b50069				# 37719
.b50071:
	lw		r61, 5(r10)				# 7491
	lw		r15, 7(r10)				# 7939
	lw		r62, 1(r10)				# 6897
	lw		r28, 4(r10)				# 7334
	sw		r28, -16(r3)				# 7334
	lwx		r51, r61, r9				# 36743
	lw		r28, 0(r51)				# 1353
	sw		r28, -17(r3)				# 1353
	lli		r61, diffuse_ray.2584				# 1353
	sw		r28, 0(r61)				# 1353
	lw		r28, 1(r51)				# 1376
	sw		r28, -18(r3)				# 1376
	sw		r28, 1(r61)				# 1353
	lw		r28, 2(r51)				# 1399
	sw		r28, -19(r3)				# 1399
	sw		r28, 2(r61)				# 36743
	lw		r61, 6(r10)				# 7634
	lw		r28, 0(r61)				# 36779
	sw		r28, -20(r3)				# 36779
	lwx		r61, r15, r9				# 36779
	sw		r61, -21(r3)				# 36779
	lwx		r41, r62, r9				# 36779
	sw		r41, -22(r3)				# 36779
	cmpi	r28, 0
	beq		.b50072				# 36097
.b50074:
	lli		r9, dirvecs.2624				# 36123
	lw		r9, 0(r9)				# 36123
	sw		r9, -23(r3)				# 36123
	lw		r61, 0(r41)				# 1353
	lli		r9, startp_fast.2602				# 1353
	sw		r61, 0(r9)				# 1353
	lw		r61, 1(r41)				# 1376
	sw		r61, 1(r9)				# 1353
	lw		r61, 2(r41)				# 1399
	sw		r61, 2(r9)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50077				# 21420
.b50075:
	addi	r9, r0, 118				# 35584
	sw		r9, -24(r3)				# 35584
.b50091:
	lw		r10, -23(r3)				# 35627
	lwx		r1, r10, r9				# 35627
	lw		r62, 0(r1)				# 8078
	lw		r13, 0(r62)				# 1949
	lw		r28, -21(r3)				# 1949
	lw		r51, 0(r28)				# 1949
	lw		r15, 1(r62)				# 1967
	lw		r61, 1(r28)				# 1967
	fmul	r61, r15, r61				# 1949
	faddmul	r61, r13, r51, r61				# 1949
	lw		r62, 2(r62)				# 1985
	lw		r28, 2(r28)				# 1985
	faddmul	r61, r62, r28, r61				# 35609
	addi	r28, r0, 0				# 35671
	fcmp	r28, r61
	ble		.b50097				# 3188
.b50098:
	addi	r9, r9, 1				# 35712
	lwx		r1, r10, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r61, r9				# 35694
	mflr	r63
	sw		r63, -25(r3)
	addi	r3, r3, -26
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 26
	lw		r63, -25(r3)
	mtlr	r63				# 35694
.b50096:
	lw		r9, -24(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -24(r3)				# 35584
	cmpi	r9, 0
	bge		.b50091				# 35584
.b50072:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 1
	beq		.b50099				# 36180
.b50101:
	lli		r9, dirvecs.2624				# 36206
	lw		r9, 1(r9)				# 36206
	sw		r9, -25(r3)				# 36206
	lw		r62, -22(r3)				# 1353
	lw		r9, 0(r62)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r62)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r62)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b50104				# 21420
.b50102:
	addi	r9, r0, 118				# 35584
	sw		r9, -26(r3)				# 35584
.b50118:
	lw		r10, -25(r3)				# 35627
	lwx		r1, r10, r9				# 35627
	lw		r62, 0(r1)				# 8078
	lw		r13, 0(r62)				# 1949
	lw		r51, -21(r3)				# 1949
	lw		r15, 0(r51)				# 1949
	lw		r28, 1(r62)				# 1967
	lw		r61, 1(r51)				# 1967
	fmul	r61, r28, r61				# 1949
	faddmul	r15, r13, r15, r61				# 1949
	lw		r28, 2(r62)				# 1985
	lw		r61, 2(r51)				# 1985
	faddmul	r28, r28, r61, r15				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b50124				# 3188
.b50125:
	addi	r9, r9, 1				# 35712
	lwx		r1, r10, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r28, r9				# 35694
	mflr	r63
	sw		r63, -27(r3)
	addi	r3, r3, -28
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 28
	lw		r63, -27(r3)
	mtlr	r63				# 35694
.b50123:
	lw		r9, -26(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -26(r3)				# 35584
	cmpi	r9, 0
	bge		.b50118				# 35584
.b50099:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 2
	beq		.b50126				# 36263
.b50128:
	lli		r9, dirvecs.2624				# 36289
	lw		r9, 2(r9)				# 36289
	sw		r9, -27(r3)				# 36289
	lw		r15, -22(r3)				# 1353
	lw		r9, 0(r15)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r15)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r15)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50131				# 21420
.b50129:
	addi	r9, r0, 118				# 35584
	sw		r9, -28(r3)				# 35584
.b50145:
	lw		r62, -27(r3)				# 35627
	lwx		r1, r62, r9				# 35627
	lw		r13, 0(r1)				# 8078
	lw		r10, 0(r13)				# 1949
	lw		r51, -21(r3)				# 1949
	lw		r28, 0(r51)				# 1949
	lw		r15, 1(r13)				# 1967
	lw		r61, 1(r51)				# 1967
	fmul	r61, r15, r61				# 1949
	faddmul	r15, r10, r28, r61				# 1949
	lw		r28, 2(r13)				# 1985
	lw		r61, 2(r51)				# 1985
	faddmul	r28, r28, r61, r15				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b50151				# 3188
.b50152:
	addi	r9, r9, 1				# 35712
	lwx		r1, r62, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r28, r9				# 35694
	mflr	r63
	sw		r63, -29(r3)
	addi	r3, r3, -30
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 30
	lw		r63, -29(r3)
	mtlr	r63				# 35694
.b50150:
	lw		r9, -28(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -28(r3)				# 35584
	cmpi	r9, 0
	bge		.b50145				# 35584
.b50126:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 3
	beq		.b50153				# 36346
.b50155:
	lli		r9, dirvecs.2624				# 36372
	lw		r9, 3(r9)				# 36372
	sw		r9, -29(r3)				# 36372
	lw		r54, -22(r3)				# 1353
	lw		r9, 0(r54)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r54)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r54)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b50158				# 21420
.b50156:
	addi	r9, r0, 118				# 35584
	sw		r9, -30(r3)				# 35584
.b50172:
	lw		r13, -29(r3)				# 35627
	lwx		r1, r13, r9				# 35627
	lw		r61, 0(r1)				# 8078
	lw		r15, 0(r61)				# 1949
	lw		r10, -21(r3)				# 1949
	lw		r28, 0(r10)				# 1949
	lw		r51, 1(r61)				# 1967
	lw		r62, 1(r10)				# 1967
	fmul	r62, r51, r62				# 1949
	faddmul	r28, r15, r28, r62				# 1949
	lw		r61, 2(r61)				# 1985
	lw		r62, 2(r10)				# 1985
	faddmul	r61, r61, r62, r28				# 35609
	addi	r28, r0, 0				# 35671
	fcmp	r28, r61
	ble		.b50178				# 3188
.b50179:
	addi	r9, r9, 1				# 35712
	lwx		r1, r13, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r61, r9				# 35694
	mflr	r63
	sw		r63, -31(r3)
	addi	r3, r3, -32
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 32
	lw		r63, -31(r3)
	mtlr	r63				# 35694
.b50177:
	lw		r9, -30(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -30(r3)				# 35584
	cmpi	r9, 0
	bge		.b50172				# 35584
.b50153:
	lw		r9, -20(r3)				# 36743
	cmpi	r9, 4
	beq		.b50180				# 36429
.b50182:
	lli		r9, dirvecs.2624				# 36455
	lw		r9, 4(r9)				# 36455
	sw		r9, -31(r3)				# 36455
	lw		r28, -22(r3)				# 1353
	lw		r9, 0(r28)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r28)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r28)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b50185				# 21420
.b50183:
	addi	r9, r0, 118				# 35584
	sw		r9, -32(r3)				# 35584
.b50199:
	lw		r13, -31(r3)				# 35627
	lwx		r1, r13, r9				# 35627
	lw		r10, 0(r1)				# 8078
	lw		r15, 0(r10)				# 1949
	lw		r62, -21(r3)				# 1949
	lw		r28, 0(r62)				# 1949
	lw		r51, 1(r10)				# 1967
	lw		r61, 1(r62)				# 1967
	fmul	r61, r51, r61				# 1949
	faddmul	r15, r15, r28, r61				# 1949
	lw		r28, 2(r10)				# 1985
	lw		r61, 2(r62)				# 1985
	faddmul	r28, r28, r61, r15				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b50205				# 3188
.b50206:
	addi	r9, r9, 1				# 35712
	lwx		r1, r13, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r28, r9				# 35694
	mflr	r63
	sw		r63, -33(r3)
	addi	r3, r3, -34
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 34
	lw		r63, -33(r3)
	mtlr	r63				# 35694
.b50204:
	lw		r9, -32(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -32(r3)				# 35584
	cmpi	r9, 0
	bge		.b50199				# 35584
.b50180:
	lw		r9, -16(r3)				# 36884
	lw		r61, -15(r3)				# 36884
	lwx		r15, r9, r61				# 36884
	lli		r28, rgb.2587				# 2671
	lw		r61, 0(r28)				# 2671
	lw		r9, 0(r15)				# 2683
	lw		r62, -17(r3)				# 2671
	faddmul	r9, r9, r62, r61				# 2659
	sw		r9, 0(r28)				# 2659
	lw		r62, 1(r28)				# 2713
	lw		r9, 1(r15)				# 2725
	lw		r61, -18(r3)				# 2713
	faddmul	r9, r9, r61, r62				# 2701
	sw		r9, 1(r28)				# 2659
	lw		r61, 2(r28)				# 2755
	lw		r62, 2(r15)				# 2767
	lw		r9, -19(r3)				# 2755
	faddmul	r9, r62, r9, r61				# 2743
	sw		r9, 2(r28)				# 2743
.b50069:
	lw		r9, -15(r3)				# 37806
	addi	r9, r9, 1				# 37806
	sw		r9, -15(r3)				# 37563
	cmpi	r9, 4
	ble		.b50065				# 37563
	b		.b50061
.b50205:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -33(r3)
	addi	r3, r3, -34
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 34
	lw		r63, -33(r3)
	mtlr	r63				# 35766
	b		.b50204				# 35766
.b50185:
	lli		r9, objects.2536				# 21445
	lwx		r30, r9, r61				# 21445
	lw		r7, 10(r30)				# 6561
	lw		r51, 1(r30)				# 2994
	lw		r62, 0(r28)				# 21561
	lw		r15, 5(r30)				# 4475
	lw		r9, 0(r15)				# 21561
	fsub	r9, r62, r9				# 21547
	sw		r9, 0(r7)				# 21547
	lw		r9, 1(r28)				# 21603
	lw		r62, 1(r15)				# 21603
	fsub	r9, r9, r62				# 21589
	sw		r9, 1(r7)				# 21547
	lw		r62, 2(r28)				# 21645
	lw		r9, 2(r15)				# 21645
	fsub	r25, r62, r9				# 21631
	sw		r25, 2(r7)				# 21547
	cmpi	r51, 2
	beq		.b50188				# 21673
.b50189:
	cmpi	r51, 2
	ble		.b50187				# 21798
.b50191:
	lw		r41, 0(r7)				# 21847
	lw		r54, 1(r7)				# 21847
	fmul	r9, r41, r41				# 14374
	lw		r10, 4(r30)				# 3734
	lw		r62, 0(r10)				# 14374
	fmul	r13, r54, r54				# 14400
	lw		r15, 1(r10)				# 14400
	fmul	r15, r13, r15				# 14374
	faddmul	r9, r9, r62, r15				# 14374
	fmul	r62, r25, r25				# 14426
	lw		r15, 2(r10)				# 14426
	faddmul	r9, r62, r15, r9				# 14354
	lw		r62, 3(r30)				# 3553
	cmpi	r62, 0
	beq		.b50193				# 14456
.b50194:
	fmul	r15, r54, r25				# 14522
	lw		r62, 9(r30)				# 5989
	lw		r10, 0(r62)				# 14522
	faddmul	r15, r15, r10, r9				# 14503
	fmul	r10, r25, r41				# 14556
	lw		r9, 1(r62)				# 14556
	faddmul	r10, r10, r9, r15				# 14503
	fmul	r15, r41, r54				# 14590
	lw		r9, 2(r62)				# 14590
	faddmul	r9, r15, r9, r10				# 14503
	cmpi	r51, 3
	beq		.b50196				# 21917
.b50197:
.b50195:
	sw		r9, 3(r7)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50185				# 21420
	b		.b50183
.b50196:
	addis	r62, r0, 16256				# 21937
	fsub	r9, r9, r62				# 21937
	b		.b50195				# 21937
.b50193:
	cmpi	r51, 3
	beq		.b50196				# 21917
	b		.b50197
.b50187:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50185				# 21420
	b		.b50183
.b50188:
	lw		r10, 4(r30)				# 4293
	lw		r62, 0(r7)				# 21728
	lw		r9, 1(r7)				# 21728
	lw		r51, 0(r10)				# 2037
	lw		r15, 1(r10)				# 2052
	fmul	r9, r15, r9				# 2037
	faddmul	r9, r51, r62, r9				# 2037
	lw		r62, 2(r10)				# 2067
	faddmul	r9, r62, r25, r9				# 21713
	sw		r9, 3(r7)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50185				# 21420
	b		.b50183
.b50178:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r61, r9				# 35766
	mflr	r63
	sw		r63, -31(r3)
	addi	r3, r3, -32
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 32
	lw		r63, -31(r3)
	mtlr	r63				# 35766
	b		.b50177				# 35766
.b50158:
	lli		r9, objects.2536				# 21445
	lwx		r13, r9, r61				# 21445
	lw		r10, 10(r13)				# 6561
	lw		r62, 1(r13)				# 2994
	lw		r28, 0(r54)				# 21561
	lw		r15, 5(r13)				# 4475
	lw		r9, 0(r15)				# 21561
	fsub	r9, r28, r9				# 21547
	sw		r9, 0(r10)				# 21547
	lw		r9, 1(r54)				# 21603
	lw		r28, 1(r15)				# 21603
	fsub	r9, r9, r28				# 21589
	sw		r9, 1(r10)				# 21547
	lw		r28, 2(r54)				# 21645
	lw		r9, 2(r15)				# 21645
	fsub	r41, r28, r9				# 21631
	sw		r41, 2(r10)				# 21547
	cmpi	r62, 2
	beq		.b50161				# 21673
.b50162:
	cmpi	r62, 2
	ble		.b50160				# 21798
.b50164:
	lw		r15, 0(r10)				# 21847
	lw		r25, 1(r10)				# 21847
	fmul	r28, r15, r15				# 14374
	lw		r30, 4(r13)				# 3734
	lw		r9, 0(r30)				# 14374
	fmul	r51, r25, r25				# 14400
	lw		r7, 1(r30)				# 14400
	fmul	r51, r51, r7				# 14374
	faddmul	r51, r28, r9, r51				# 14374
	fmul	r28, r41, r41				# 14426
	lw		r9, 2(r30)				# 14426
	faddmul	r9, r28, r9, r51				# 14354
	lw		r28, 3(r13)				# 3553
	cmpi	r28, 0
	beq		.b50166				# 14456
.b50167:
	fmul	r28, r25, r41				# 14522
	lw		r13, 9(r13)				# 5989
	lw		r51, 0(r13)				# 14522
	faddmul	r28, r28, r51, r9				# 14503
	fmul	r51, r41, r15				# 14556
	lw		r9, 1(r13)				# 14556
	faddmul	r28, r51, r9, r28				# 14503
	fmul	r15, r15, r25				# 14590
	lw		r9, 2(r13)				# 14590
	faddmul	r9, r15, r9, r28				# 14503
	cmpi	r62, 3
	beq		.b50169				# 21917
.b50170:
.b50168:
	sw		r9, 3(r10)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50158				# 21420
	b		.b50156
.b50169:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b50168				# 21937
.b50166:
	cmpi	r62, 3
	beq		.b50169				# 21917
	b		.b50170
.b50160:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50158				# 21420
	b		.b50156
.b50161:
	lw		r62, 4(r13)				# 4293
	lw		r9, 0(r10)				# 21728
	lw		r51, 1(r10)				# 21728
	lw		r15, 0(r62)				# 2037
	lw		r28, 1(r62)				# 2052
	fmul	r28, r28, r51				# 2037
	faddmul	r9, r15, r9, r28				# 2037
	lw		r28, 2(r62)				# 2067
	faddmul	r9, r28, r41, r9				# 21713
	sw		r9, 3(r10)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50158				# 21420
	b		.b50156
.b50151:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -29(r3)
	addi	r3, r3, -30
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 30
	lw		r63, -29(r3)
	mtlr	r63				# 35766
	b		.b50150				# 35766
.b50131:
	lli		r61, objects.2536				# 21445
	lwx		r41, r61, r9				# 21445
	lw		r7, 10(r41)				# 6561
	lw		r25, 1(r41)				# 2994
	lw		r62, 0(r15)				# 21561
	lw		r28, 5(r41)				# 4475
	lw		r61, 0(r28)				# 21561
	fsub	r61, r62, r61				# 21547
	sw		r61, 0(r7)				# 21547
	lw		r61, 1(r15)				# 21603
	lw		r62, 1(r28)				# 21603
	fsub	r61, r61, r62				# 21589
	sw		r61, 1(r7)				# 21547
	lw		r61, 2(r15)				# 21645
	lw		r28, 2(r28)				# 21645
	fsub	r28, r61, r28				# 21631
	sw		r28, 2(r7)				# 21547
	cmpi	r25, 2
	beq		.b50134				# 21673
.b50135:
	cmpi	r25, 2
	ble		.b50133				# 21798
.b50137:
	lw		r13, 0(r7)				# 21847
	lw		r54, 1(r7)				# 21847
	fmul	r62, r13, r13				# 14374
	lw		r61, 4(r41)				# 3734
	lw		r10, 0(r61)				# 14374
	fmul	r51, r54, r54				# 14400
	lw		r30, 1(r61)				# 14400
	fmul	r51, r51, r30				# 14374
	faddmul	r62, r62, r10, r51				# 14374
	fmul	r10, r28, r28				# 14426
	lw		r61, 2(r61)				# 14426
	faddmul	r61, r10, r61, r62				# 14354
	lw		r62, 3(r41)				# 3553
	cmpi	r62, 0
	beq		.b50139				# 14456
.b50140:
	fmul	r51, r54, r28				# 14522
	lw		r10, 9(r41)				# 5989
	lw		r62, 0(r10)				# 14522
	faddmul	r61, r51, r62, r61				# 14503
	fmul	r62, r28, r13				# 14556
	lw		r28, 1(r10)				# 14556
	faddmul	r62, r62, r28, r61				# 14503
	fmul	r61, r13, r54				# 14590
	lw		r28, 2(r10)				# 14590
	faddmul	r61, r61, r28, r62				# 14503
	cmpi	r25, 3
	beq		.b50142				# 21917
.b50143:
.b50141:
	sw		r61, 3(r7)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50131				# 21420
	b		.b50129
.b50142:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50141				# 21937
.b50139:
	cmpi	r25, 3
	beq		.b50142				# 21917
	b		.b50143
.b50133:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50131				# 21420
	b		.b50129
.b50134:
	lw		r13, 4(r41)				# 4293
	lw		r51, 0(r7)				# 21728
	lw		r10, 1(r7)				# 21728
	lw		r62, 0(r13)				# 2037
	lw		r61, 1(r13)				# 2052
	fmul	r61, r61, r10				# 2037
	faddmul	r62, r62, r51, r61				# 2037
	lw		r61, 2(r13)				# 2067
	faddmul	r61, r61, r28, r62				# 21713
	sw		r61, 3(r7)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50131				# 21420
	b		.b50129
.b50124:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -27(r3)
	addi	r3, r3, -28
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 28
	lw		r63, -27(r3)
	mtlr	r63				# 35766
	b		.b50123				# 35766
.b50104:
	lli		r9, objects.2536				# 21445
	lwx		r10, r9, r61				# 21445
	lw		r54, 10(r10)				# 6561
	lw		r13, 1(r10)				# 2994
	lw		r9, 0(r62)				# 21561
	lw		r28, 5(r10)				# 4475
	lw		r15, 0(r28)				# 21561
	fsub	r9, r9, r15				# 21547
	sw		r9, 0(r54)				# 21547
	lw		r15, 1(r62)				# 21603
	lw		r9, 1(r28)				# 21603
	fsub	r9, r15, r9				# 21589
	sw		r9, 1(r54)				# 21547
	lw		r15, 2(r62)				# 21645
	lw		r9, 2(r28)				# 21645
	fsub	r25, r15, r9				# 21631
	sw		r25, 2(r54)				# 21547
	cmpi	r13, 2
	beq		.b50107				# 21673
.b50108:
	cmpi	r13, 2
	ble		.b50106				# 21798
.b50110:
	lw		r51, 0(r54)				# 21847
	lw		r7, 1(r54)				# 21847
	fmul	r41, r51, r51				# 14374
	lw		r30, 4(r10)				# 3734
	lw		r15, 0(r30)				# 14374
	fmul	r9, r7, r7				# 14400
	lw		r28, 1(r30)				# 14400
	fmul	r9, r9, r28				# 14374
	faddmul	r9, r41, r15, r9				# 14374
	fmul	r28, r25, r25				# 14426
	lw		r15, 2(r30)				# 14426
	faddmul	r9, r28, r15, r9				# 14354
	lw		r28, 3(r10)				# 3553
	cmpi	r28, 0
	beq		.b50112				# 14456
.b50113:
	fmul	r15, r7, r25				# 14522
	lw		r10, 9(r10)				# 5989
	lw		r28, 0(r10)				# 14522
	faddmul	r28, r15, r28, r9				# 14503
	fmul	r15, r25, r51				# 14556
	lw		r9, 1(r10)				# 14556
	faddmul	r28, r15, r9, r28				# 14503
	fmul	r9, r51, r7				# 14590
	lw		r15, 2(r10)				# 14590
	faddmul	r9, r9, r15, r28				# 14503
	cmpi	r13, 3
	beq		.b50115				# 21917
.b50116:
.b50114:
	sw		r9, 3(r54)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50104				# 21420
	b		.b50102
.b50115:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b50114				# 21937
.b50112:
	cmpi	r13, 3
	beq		.b50115				# 21917
	b		.b50116
.b50106:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50104				# 21420
	b		.b50102
.b50107:
	lw		r9, 4(r10)				# 4293
	lw		r10, 0(r54)				# 21728
	lw		r15, 1(r54)				# 21728
	lw		r28, 0(r9)				# 2037
	lw		r51, 1(r9)				# 2052
	fmul	r15, r51, r15				# 2037
	faddmul	r28, r28, r10, r15				# 2037
	lw		r9, 2(r9)				# 2067
	faddmul	r9, r9, r25, r28				# 21713
	sw		r9, 3(r54)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50104				# 21420
	b		.b50102
.b50097:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r61, r9				# 35766
	mflr	r63
	sw		r63, -25(r3)
	addi	r3, r3, -26
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 26
	lw		r63, -25(r3)
	mtlr	r63				# 35766
	b		.b50096				# 35766
.b50077:
	lli		r61, objects.2536				# 21445
	lwx		r51, r61, r9				# 21445
	lw		r62, 10(r51)				# 6561
	lw		r10, 1(r51)				# 2994
	lw		r28, 0(r41)				# 21561
	lw		r15, 5(r51)				# 4475
	lw		r61, 0(r15)				# 21561
	fsub	r61, r28, r61				# 21547
	sw		r61, 0(r62)				# 21547
	lw		r61, 1(r41)				# 21603
	lw		r28, 1(r15)				# 21603
	fsub	r61, r61, r28				# 21589
	sw		r61, 1(r62)				# 21547
	lw		r61, 2(r41)				# 21645
	lw		r28, 2(r15)				# 21645
	fsub	r30, r61, r28				# 21631
	sw		r30, 2(r62)				# 21547
	cmpi	r10, 2
	beq		.b50080				# 21673
.b50081:
	cmpi	r10, 2
	ble		.b50079				# 21798
.b50083:
	lw		r54, 0(r62)				# 21847
	lw		r13, 1(r62)				# 21847
	fmul	r15, r54, r54				# 14374
	lw		r25, 4(r51)				# 3734
	lw		r28, 0(r25)				# 14374
	fmul	r7, r13, r13				# 14400
	lw		r61, 1(r25)				# 14400
	fmul	r61, r7, r61				# 14374
	faddmul	r28, r15, r28, r61				# 14374
	fmul	r61, r30, r30				# 14426
	lw		r15, 2(r25)				# 14426
	faddmul	r61, r61, r15, r28				# 14354
	lw		r28, 3(r51)				# 3553
	cmpi	r28, 0
	beq		.b50085				# 14456
.b50086:
	fmul	r28, r13, r30				# 14522
	lw		r15, 9(r51)				# 5989
	lw		r51, 0(r15)				# 14522
	faddmul	r51, r28, r51, r61				# 14503
	fmul	r61, r30, r54				# 14556
	lw		r28, 1(r15)				# 14556
	faddmul	r61, r61, r28, r51				# 14503
	fmul	r51, r54, r13				# 14590
	lw		r28, 2(r15)				# 14590
	faddmul	r61, r51, r28, r61				# 14503
	cmpi	r10, 3
	beq		.b50088				# 21917
.b50089:
.b50087:
	sw		r61, 3(r62)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50077				# 21420
	b		.b50075
.b50088:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50087				# 21937
.b50085:
	cmpi	r10, 3
	beq		.b50088				# 21917
	b		.b50089
.b50079:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50077				# 21420
	b		.b50075
.b50080:
	lw		r61, 4(r51)				# 4293
	lw		r10, 0(r62)				# 21728
	lw		r28, 1(r62)				# 21728
	lw		r15, 0(r61)				# 2037
	lw		r51, 1(r61)				# 2052
	fmul	r28, r51, r28				# 2037
	faddmul	r28, r15, r10, r28				# 2037
	lw		r61, 2(r61)				# 2067
	faddmul	r61, r61, r30, r28				# 21713
	sw		r61, 3(r62)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50077				# 21420
	b		.b50075
.b50057:
	addi	r9, r0, 0				# 38046
	addi	r9, r0, 0				# 37563
	sw		r9, -15(r3)				# 37563
	b		.b50065				# 37563
.b50055:
	addi	r9, r0, 0				# 38061
	addi	r9, r0, 0				# 37563
	sw		r9, -15(r3)				# 37563
	b		.b50065				# 37563
.b50053:
	addi	r9, r0, 0				# 38074
	addi	r9, r0, 0				# 37563
	sw		r9, -15(r3)				# 37563
	b		.b50065				# 37563
.b50045:
	addi	r9, r0, 0				# 41477
	sw		r9, -13(r3)				# 41477
	b		.b50051				# 41470
.b49748:
	lli		r51, objects.2536				# 46538
	lwx		r28, r51, r61				# 46538
	lw		r9, 2(r28)				# 3185
	cmpi	r9, 2
	beq		.b49750				# 46572
	b		.b49747
.b49750:
	lw		r9, 7(r28)				# 5033
	lw		r9, 0(r9)				# 46614
	addis	r10, r0, 16256				# 46614
	fcmp	r10, r9
	ble		.b49747				# 3098
.b49753:
	lw		r62, 1(r28)				# 2994
	cmpi	r62, 1
	beq		.b49754				# 46675
.b49755:
	cmpi	r62, 2
	beq		.b49969				# 46737
	b		.b49747
.b49969:
	slwi	r61, r61, 2				# 46148
	addi	r25, r61, 1				# 46138
	fsub	r41, r10, r9				# 46200
	lw		r61, 4(r28)				# 4293
	lw		r30, 0(r61)				# 1949
	lw		r28, 1(r61)				# 1967
	fmul	r9, r57, r28				# 1949
	faddmul	r9, r15, r30, r9				# 1949
	lw		r62, 2(r61)				# 1985
	faddmul	r13, r7, r62, r9				# 46235
	addis	r9, r0, 16384				# 46312
	fmul	r61, r9, r30				# 46312
	fmul	r61, r61, r13				# 46312
	fsub	r30, r61, r15				# 46282
	fmul	r61, r9, r28				# 46357
	fmul	r61, r61, r13				# 46357
	fsub	r28, r61, r57				# 46282
	fmul	r9, r9, r62				# 46402
	fmul	r9, r9, r13				# 46402
	fsub	r62, r9, r7				# 46282
	mv		r13, r4
	addi	r4, r4, 3				# 44588
	addi	r37, r0, 0				# 44588
	sw		r37, 0(r13)				# 44588
	sw		r37, 1(r13)				# 44588
	sw		r37, 2(r13)				# 44588
	mv		r61, r4
	add		r4, r4, r54				# 44623
	addi	r15, r54, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r15
	ble		.b49973				# 44623
.b49971:
	mv		r15, r4
	addi	r4, r4, 2				# 44656
	sw		r13, 0(r15)				# 44656
	sw		r61, 1(r15)				# 44656
	sw		r30, 0(r13)				# 1162
	sw		r28, 1(r13)				# 1162
	sw		r62, 2(r13)				# 45563
	addi	r28, r54, -1				# 21317
	cmpi	r28, 0
	bge		.b49977				# 20796
.b49975:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r25, 0(r9)				# 45650
	sw		r15, 1(r9)				# 45650
	sw		r41, 2(r9)				# 45650
	lli		r61, reflections.2644				# 46282
	sw		r9, 0(r61)				# 46282
	addi	r61, r0, 1				# 46445
	lli		r9, n_reflections.2647				# 46445
	sw		r61, 0(r9)				# 46445
	b		.b49747				# 46445
.b49977:
	lwx		r7, r51, r28				# 20821
	lw		r9, 1(r7)				# 2994
	cmpi	r9, 1
	beq		.b49980				# 20947
.b49981:
	cmpi	r9, 2
	beq		.b50028				# 21033
.b50029:
	mv		r62, r4
	addi	r4, r4, 5				# 20110
	sw		r37, 0(r62)				# 20110
	sw		r37, 1(r62)				# 20110
	sw		r37, 2(r62)				# 20110
	sw		r37, 3(r62)				# 20110
	sw		r37, 4(r62)				# 20110
	lw		r29, 0(r13)				# 20142
	lw		r39, 1(r13)				# 20142
	lw		r23, 2(r13)				# 20142
	fmul	r54, r29, r29				# 14374
	lw		r30, 4(r7)				# 3734
	lw		r57, 0(r30)				# 14374
	fmul	r9, r39, r39				# 14400
	lw		r48, 1(r30)				# 14400
	fmul	r9, r9, r48				# 14374
	faddmul	r54, r54, r57, r9				# 14374
	fmul	r9, r23, r23				# 14426
	lw		r19, 2(r30)				# 14426
	faddmul	r9, r9, r19, r54				# 14354
	lw		r54, 3(r7)				# 3553
	cmpi	r54, 0
	beq		.b50034				# 14456
.b50035:
	fmul	r26, r39, r23				# 14522
	lw		r46, 9(r7)				# 5989
	lw		r30, 0(r46)				# 14522
	faddmul	r9, r26, r30, r9				# 14503
	fmul	r30, r23, r29				# 14556
	lw		r26, 1(r46)				# 14556
	faddmul	r9, r30, r26, r9				# 14503
	fmul	r30, r29, r39				# 14590
	lw		r46, 2(r46)				# 14590
	faddmul	r9, r30, r46, r9				# 14503
.b50033:
	lw		r30, 0(r13)				# 20192
	fmul	r30, r30, r57				# 20186
	fneg	r46, r30				# 20177
	lw		r30, 1(r13)				# 20234
	fmul	r30, r30, r48				# 20228
	fneg	r30, r30				# 20219
	lw		r57, 2(r13)				# 20276
	fmul	r57, r57, r19				# 20270
	fneg	r39, r57				# 20261
	sw		r9, 0(r62)				# 20304
	cmpi	r54, 0
	beq		.b50037				# 20324
.b50038:
	lw		r57, 2(r13)				# 20379
	lw		r7, 9(r7)				# 6179
	lw		r23, 1(r7)				# 20379
	lw		r54, 1(r13)				# 20404
	lw		r26, 2(r7)				# 20404
	fmul	r54, r54, r26				# 20379
	faddmul	r54, r57, r23, r54				# 20372
	fhalf	r54, r54				# 20366
	fsub	r54, r46, r54				# 20353
	sw		r54, 1(r62)				# 20353
	lw		r46, 2(r13)				# 20458
	lw		r54, 0(r7)				# 20458
	lw		r57, 0(r13)				# 20483
	lw		r26, 2(r7)				# 20483
	fmul	r57, r57, r26				# 20458
	faddmul	r54, r46, r54, r57				# 20451
	fhalf	r54, r54				# 20445
	fsub	r54, r30, r54				# 20432
	sw		r54, 2(r62)				# 20353
	lw		r46, 1(r13)				# 20537
	lw		r30, 0(r7)				# 20537
	lw		r57, 0(r13)				# 20562
	lw		r54, 1(r7)				# 20562
	fmul	r54, r57, r54				# 20537
	faddmul	r54, r46, r30, r54				# 20530
	fhalf	r54, r54				# 20524
	fsub	r54, r39, r54				# 20511
	sw		r54, 3(r62)				# 20511
	fcmp	r9, r37
	beq		.b50039				# 3128
.b50041:
	fdiv	r9, r10, r9				# 20696
	sw		r9, 4(r62)				# 20696
.b50039:
	swx		r62, r28, r61				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49977				# 20796
	b		.b49975
.b50037:
	sw		r46, 1(r62)				# 20601
	sw		r30, 2(r62)				# 20601
	sw		r39, 3(r62)				# 20643
	fcmp	r9, r37
	beq		.b50039				# 3128
	b		.b50041
.b50034:
	b		.b50033				# 14482
.b50028:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	sw		r37, 0(r9)				# 19730
	sw		r37, 1(r9)				# 19730
	sw		r37, 2(r9)				# 19730
	sw		r37, 3(r9)				# 19730
	lw		r57, 0(r13)				# 19764
	lw		r30, 4(r7)				# 3734
	lw		r54, 0(r30)				# 19764
	lw		r62, 1(r13)				# 19790
	lw		r7, 1(r30)				# 19790
	fmul	r62, r62, r7				# 19764
	faddmul	r62, r57, r54, r62				# 19764
	lw		r54, 2(r13)				# 19816
	lw		r7, 2(r30)				# 19816
	faddmul	r54, r54, r7, r62				# 19752
	fcmp	r54, r37
	ble		.b50031				# 3158
.b50032:
	addis	r62, r0, 49024				# 19882
	fdiv	r62, r62, r54				# 19869
	sw		r62, 0(r9)				# 19869
	lw		r62, 0(r30)				# 19916
	fdiv	r62, r62, r54				# 19910
	fneg	r62, r62				# 19897
	sw		r62, 1(r9)				# 19869
	lw		r62, 1(r30)				# 19958
	fdiv	r62, r62, r54				# 19952
	fneg	r62, r62				# 19939
	sw		r62, 2(r9)				# 19869
	lw		r62, 2(r30)				# 20000
	fdiv	r62, r62, r54				# 19994
	fneg	r62, r62				# 19981
	sw		r62, 3(r9)				# 19981
.b50030:
	swx		r9, r28, r61				# 21074
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49977				# 20796
	b		.b49975
.b50031:
	sw		r37, 0(r9)				# 20032
	b		.b50030				# 20032
.b49980:
	mv		r54, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b49984:
	swx		r37, r9, r54				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b49984				# 19127
.b49982:
	lw		r9, 0(r13)				# 19153
	fcmp	r9, r37
	beq		.b49987				# 3128
.b49988:
	lw		r30, 6(r7)				# 3372
	lw		r9, 0(r13)				# 19253
	fcmp	r37, r9
	ble		.b49990				# 3188
.b49991:
	addi	r62, r0, 1				# 3188
	cmpi	r30, 0
	beq		.b49993				# 765
.b49994:
	cmpi	r62, 0
	beq		.b49995				# 775
.b49996:
	lw		r9, 4(r7)				# 3734
	lw		r9, 0(r9)				# 19222
	fneg	r9, r9				# 3025
.b49997:
	sw		r9, 0(r54)				# 19209
	lw		r9, 0(r13)				# 19302
	fdiv	r9, r10, r9				# 19289
	sw		r9, 1(r54)				# 19289
	lw		r9, 1(r13)				# 19327
	fcmp	r9, r37
	beq		.b50001				# 3128
.b50002:
	lw		r62, 6(r7)				# 3372
	lw		r9, 1(r13)				# 19426
	fcmp	r37, r9
	ble		.b50004				# 3188
.b50005:
	addi	r9, r0, 1				# 3188
	cmpi	r62, 0
	beq		.b50007				# 765
.b50008:
	cmpi	r9, 0
	beq		.b50009				# 775
.b50010:
	lw		r62, 4(r7)				# 3920
	lw		r62, 1(r62)				# 19395
	fneg	r62, r62				# 3025
.b50011:
	sw		r62, 2(r54)				# 19382
	lw		r9, 1(r13)				# 19475
	fdiv	r9, r10, r9				# 19462
	sw		r9, 3(r54)				# 19462
	lw		r9, 2(r13)				# 19500
	fcmp	r9, r37
	beq		.b50015				# 3128
.b50016:
	lw		r9, 6(r7)				# 3372
	lw		r62, 2(r13)				# 19599
	fcmp	r37, r62
	ble		.b50018				# 3188
.b50019:
	addi	r62, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b50021				# 765
.b50022:
	cmpi	r62, 0
	beq		.b50023				# 775
.b50024:
	lw		r9, 4(r7)				# 4105
	lw		r9, 2(r9)				# 19568
	fneg	r9, r9				# 3025
.b50025:
	sw		r9, 4(r54)				# 19555
	lw		r9, 2(r13)				# 19648
	fdiv	r9, r10, r9				# 19635
	sw		r9, 5(r54)				# 19635
.b50014:
	swx		r54, r28, r61				# 20985
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49977				# 20796
	b		.b49975
.b50023:
	lw		r9, 4(r7)				# 4105
	lw		r9, 2(r9)				# 19568
	b		.b50025				# 918
.b50021:
	lw		r9, 4(r7)				# 4105
	lw		r9, 2(r9)				# 19568
	cmpi	r62, 0
	beq		.b50026				# 905
.b50027:
	b		.b50025				# 918
.b50026:
	fneg	r9, r9				# 3025
	b		.b50025				# 3025
.b50018:
	addi	r62, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b50021				# 765
	b		.b50022
.b50015:
	sw		r37, 5(r54)				# 19525
	b		.b50014				# 19525
.b50009:
	lw		r62, 4(r7)				# 3920
	lw		r62, 1(r62)				# 19395
	b		.b50011				# 918
.b50007:
	lw		r62, 4(r7)				# 3920
	lw		r62, 1(r62)				# 19395
	cmpi	r9, 0
	beq		.b50012				# 905
.b50013:
	b		.b50011				# 918
.b50012:
	fneg	r62, r62				# 3025
	b		.b50011				# 3025
.b50004:
	addi	r9, r0, 0				# 3188
	cmpi	r62, 0
	beq		.b50007				# 765
	b		.b50008
.b50001:
	sw		r37, 3(r54)				# 19352
	lw		r9, 2(r13)				# 19500
	fcmp	r9, r37
	beq		.b50015				# 3128
	b		.b50016
.b49995:
	lw		r9, 4(r7)				# 3734
	lw		r9, 0(r9)				# 19222
	b		.b49997				# 918
.b49993:
	lw		r9, 4(r7)				# 3734
	lw		r9, 0(r9)				# 19222
	cmpi	r62, 0
	beq		.b49998				# 905
.b49999:
	b		.b49997				# 918
.b49998:
	fneg	r9, r9				# 3025
	b		.b49997				# 3025
.b49990:
	addi	r62, r0, 0				# 3188
	cmpi	r30, 0
	beq		.b49993				# 765
	b		.b49994
.b49987:
	sw		r37, 1(r54)				# 19179
	lw		r9, 1(r13)				# 19327
	fcmp	r9, r37
	beq		.b50001				# 3128
	b		.b50002
.b49973:
	swx		r13, r9, r61				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r15
	ble		.b49973				# 44623
	b		.b49971
.b49754:
	slwi	r26, r61, 2				# 45726
	fsub	r30, r10, r9				# 45784
	fneg	r46, r15				# 45819
	fneg	r37, r57				# 45848
	fneg	r39, r7				# 45877
	addi	r48, r26, 1				# 45906
	mv		r41, r4
	addi	r4, r4, 3				# 44588
	addi	r25, r0, 0				# 44588
	sw		r25, 0(r41)				# 44588
	sw		r25, 1(r41)				# 44588
	sw		r25, 2(r41)				# 44588
	mv		r62, r4
	add		r4, r4, r54				# 44623
	addi	r61, r54, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r61
	ble		.b49758				# 44623
.b49756:
	mv		r13, r4
	addi	r4, r4, 2				# 44656
	sw		r41, 0(r13)				# 44656
	sw		r62, 1(r13)				# 44656
	sw		r15, 0(r41)				# 1162
	sw		r37, 1(r41)				# 1162
	sw		r39, 2(r41)				# 45563
	addi	r61, r54, -1				# 21317
	cmpi	r61, 0
	bge		.b49762				# 20796
.b49760:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r48, 0(r9)				# 45650
	sw		r13, 1(r9)				# 45650
	sw		r30, 2(r9)				# 45650
	lli		r23, reflections.2644				# 45906
	sw		r9, 0(r23)				# 45906
	addi	r19, r26, 2				# 45954
	mv		r13, r4
	addi	r4, r4, 3				# 44588
	sw		r25, 0(r13)				# 44588
	sw		r25, 1(r13)				# 44588
	sw		r25, 2(r13)				# 44588
	mv		r9, r4
	add		r4, r4, r54				# 44623
	addi	r28, r54, -1				# 44623
	addi	r61, r0, 0				# 44623
	cmp		r61, r28
	ble		.b49829				# 44623
.b49827:
	mv		r28, r4
	addi	r4, r4, 2				# 44656
	sw		r13, 0(r28)				# 44656
	sw		r9, 1(r28)				# 44656
	sw		r46, 0(r13)				# 1162
	sw		r57, 1(r13)				# 1162
	sw		r39, 2(r13)				# 45563
	addi	r62, r54, -1				# 21317
	cmpi	r62, 0
	bge		.b49833				# 20796
.b49831:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r19, 0(r9)				# 45650
	sw		r28, 1(r9)				# 45650
	sw		r30, 2(r9)				# 45650
	sw		r9, 1(r23)				# 45906
	addi	r57, r26, 3				# 46006
	mv		r61, r4
	addi	r4, r4, 3				# 44588
	sw		r25, 0(r61)				# 44588
	sw		r25, 1(r61)				# 44588
	sw		r25, 2(r61)				# 44588
	mv		r41, r4
	add		r4, r4, r54				# 44623
	addi	r28, r54, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r28
	ble		.b49900				# 44623
.b49898:
	mv		r13, r4
	addi	r4, r4, 2				# 44656
	sw		r61, 0(r13)				# 44656
	sw		r41, 1(r13)				# 44656
	sw		r46, 0(r61)				# 1162
	sw		r37, 1(r61)				# 1162
	sw		r7, 2(r61)				# 45563
	addi	r28, r54, -1				# 21317
	cmpi	r28, 0
	bge		.b49904				# 20796
.b49902:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r57, 0(r9)				# 45650
	sw		r13, 1(r9)				# 45650
	sw		r30, 2(r9)				# 45650
	sw		r9, 2(r23)				# 45906
	addi	r61, r0, 3				# 46058
	lli		r9, n_reflections.2647				# 46058
	sw		r61, 0(r9)				# 46058
	b		.b49747				# 46058
.b49904:
	lwx		r48, r51, r28				# 20821
	lw		r9, 1(r48)				# 2994
	cmpi	r9, 1
	beq		.b49907				# 20947
.b49908:
	cmpi	r9, 2
	beq		.b49955				# 21033
.b49956:
	mv		r62, r4
	addi	r4, r4, 5				# 20110
	sw		r25, 0(r62)				# 20110
	sw		r25, 1(r62)				# 20110
	sw		r25, 2(r62)				# 20110
	sw		r25, 3(r62)				# 20110
	sw		r25, 4(r62)				# 20110
	lw		r54, 0(r61)				# 20142
	lw		r7, 1(r61)				# 20142
	lw		r46, 2(r61)				# 20142
	fmul	r37, r54, r54				# 14374
	lw		r15, 4(r48)				# 3734
	lw		r19, 0(r15)				# 14374
	fmul	r9, r7, r7				# 14400
	lw		r26, 1(r15)				# 14400
	fmul	r9, r9, r26				# 14374
	faddmul	r37, r37, r19, r9				# 14374
	fmul	r9, r46, r46				# 14426
	lw		r39, 2(r15)				# 14426
	faddmul	r9, r9, r39, r37				# 14354
	lw		r14, 3(r48)				# 3553
	cmpi	r14, 0
	beq		.b49961				# 14456
.b49962:
	fmul	r29, r7, r46				# 14522
	lw		r15, 9(r48)				# 5989
	lw		r37, 0(r15)				# 14522
	faddmul	r9, r29, r37, r9				# 14503
	fmul	r37, r46, r54				# 14556
	lw		r46, 1(r15)				# 14556
	faddmul	r9, r37, r46, r9				# 14503
	fmul	r54, r54, r7				# 14590
	lw		r15, 2(r15)				# 14590
	faddmul	r9, r54, r15, r9				# 14503
.b49960:
	lw		r15, 0(r61)				# 20192
	fmul	r15, r15, r19				# 20186
	fneg	r19, r15				# 20177
	lw		r15, 1(r61)				# 20234
	fmul	r15, r15, r26				# 20228
	fneg	r7, r15				# 20219
	lw		r15, 2(r61)				# 20276
	fmul	r15, r15, r39				# 20270
	fneg	r39, r15				# 20261
	sw		r9, 0(r62)				# 20304
	cmpi	r14, 0
	beq		.b49964				# 20324
.b49965:
	lw		r46, 2(r61)				# 20379
	lw		r37, 9(r48)				# 6179
	lw		r26, 1(r37)				# 20379
	lw		r54, 1(r61)				# 20404
	lw		r15, 2(r37)				# 20404
	fmul	r15, r54, r15				# 20379
	faddmul	r15, r46, r26, r15				# 20372
	fhalf	r15, r15				# 20366
	fsub	r15, r19, r15				# 20353
	sw		r15, 1(r62)				# 20353
	lw		r26, 2(r61)				# 20458
	lw		r54, 0(r37)				# 20458
	lw		r46, 0(r61)				# 20483
	lw		r15, 2(r37)				# 20483
	fmul	r15, r46, r15				# 20458
	faddmul	r15, r26, r54, r15				# 20451
	fhalf	r15, r15				# 20445
	fsub	r15, r7, r15				# 20432
	sw		r15, 2(r62)				# 20353
	lw		r46, 1(r61)				# 20537
	lw		r15, 0(r37)				# 20537
	lw		r7, 0(r61)				# 20562
	lw		r54, 1(r37)				# 20562
	fmul	r54, r7, r54				# 20537
	faddmul	r15, r46, r15, r54				# 20530
	fhalf	r15, r15				# 20524
	fsub	r15, r39, r15				# 20511
	sw		r15, 3(r62)				# 20511
	fcmp	r9, r25
	beq		.b49966				# 3128
.b49968:
	fdiv	r9, r10, r9				# 20696
	sw		r9, 4(r62)				# 20696
.b49966:
	swx		r62, r28, r41				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49904				# 20796
	b		.b49902
.b49964:
	sw		r19, 1(r62)				# 20601
	sw		r7, 2(r62)				# 20601
	sw		r39, 3(r62)				# 20643
	fcmp	r9, r25
	beq		.b49966				# 3128
	b		.b49968
.b49961:
	b		.b49960				# 14482
.b49955:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	sw		r25, 0(r9)				# 19730
	sw		r25, 1(r9)				# 19730
	sw		r25, 2(r9)				# 19730
	sw		r25, 3(r9)				# 19730
	lw		r37, 0(r61)				# 19764
	lw		r7, 4(r48)				# 3734
	lw		r15, 0(r7)				# 19764
	lw		r62, 1(r61)				# 19790
	lw		r54, 1(r7)				# 19790
	fmul	r62, r62, r54				# 19764
	faddmul	r54, r37, r15, r62				# 19764
	lw		r62, 2(r61)				# 19816
	lw		r15, 2(r7)				# 19816
	faddmul	r15, r62, r15, r54				# 19752
	fcmp	r15, r25
	ble		.b49958				# 3158
.b49959:
	addis	r62, r0, 49024				# 19882
	fdiv	r62, r62, r15				# 19869
	sw		r62, 0(r9)				# 19869
	lw		r62, 0(r7)				# 19916
	fdiv	r62, r62, r15				# 19910
	fneg	r62, r62				# 19897
	sw		r62, 1(r9)				# 19869
	lw		r62, 1(r7)				# 19958
	fdiv	r62, r62, r15				# 19952
	fneg	r62, r62				# 19939
	sw		r62, 2(r9)				# 19869
	lw		r62, 2(r7)				# 20000
	fdiv	r62, r62, r15				# 19994
	fneg	r62, r62				# 19981
	sw		r62, 3(r9)				# 19981
.b49957:
	swx		r9, r28, r41				# 21074
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49904				# 20796
	b		.b49902
.b49958:
	sw		r25, 0(r9)				# 20032
	b		.b49957				# 20032
.b49907:
	mv		r15, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b49911:
	swx		r25, r9, r15				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b49911				# 19127
.b49909:
	lw		r9, 0(r61)				# 19153
	fcmp	r9, r25
	beq		.b49914				# 3128
.b49915:
	lw		r9, 6(r48)				# 3372
	lw		r62, 0(r61)				# 19253
	fcmp	r25, r62
	ble		.b49917				# 3188
.b49918:
	addi	r62, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b49920				# 765
.b49921:
	cmpi	r62, 0
	beq		.b49922				# 775
.b49923:
	lw		r9, 4(r48)				# 3734
	lw		r9, 0(r9)				# 19222
	fneg	r9, r9				# 3025
.b49924:
	sw		r9, 0(r15)				# 19209
	lw		r9, 0(r61)				# 19302
	fdiv	r9, r10, r9				# 19289
	sw		r9, 1(r15)				# 19289
	lw		r9, 1(r61)				# 19327
	fcmp	r9, r25
	beq		.b49928				# 3128
.b49929:
	lw		r62, 6(r48)				# 3372
	lw		r9, 1(r61)				# 19426
	fcmp	r25, r9
	ble		.b49931				# 3188
.b49932:
	addi	r9, r0, 1				# 3188
	cmpi	r62, 0
	beq		.b49934				# 765
.b49935:
	cmpi	r9, 0
	beq		.b49936				# 775
.b49937:
	lw		r62, 4(r48)				# 3920
	lw		r62, 1(r62)				# 19395
	fneg	r62, r62				# 3025
.b49938:
	sw		r62, 2(r15)				# 19382
	lw		r9, 1(r61)				# 19475
	fdiv	r9, r10, r9				# 19462
	sw		r9, 3(r15)				# 19462
	lw		r9, 2(r61)				# 19500
	fcmp	r9, r25
	beq		.b49942				# 3128
.b49943:
	lw		r62, 6(r48)				# 3372
	lw		r9, 2(r61)				# 19599
	fcmp	r25, r9
	ble		.b49945				# 3188
.b49946:
	addi	r9, r0, 1				# 3188
	cmpi	r62, 0
	beq		.b49948				# 765
.b49949:
	cmpi	r9, 0
	beq		.b49950				# 775
.b49951:
	lw		r62, 4(r48)				# 4105
	lw		r62, 2(r62)				# 19568
	fneg	r62, r62				# 3025
.b49952:
	sw		r62, 4(r15)				# 19555
	lw		r9, 2(r61)				# 19648
	fdiv	r9, r10, r9				# 19635
	sw		r9, 5(r15)				# 19635
.b49941:
	swx		r15, r28, r41				# 20985
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49904				# 20796
	b		.b49902
.b49950:
	lw		r62, 4(r48)				# 4105
	lw		r62, 2(r62)				# 19568
	b		.b49952				# 918
.b49948:
	lw		r62, 4(r48)				# 4105
	lw		r62, 2(r62)				# 19568
	cmpi	r9, 0
	beq		.b49953				# 905
.b49954:
	b		.b49952				# 918
.b49953:
	fneg	r62, r62				# 3025
	b		.b49952				# 3025
.b49945:
	addi	r9, r0, 0				# 3188
	cmpi	r62, 0
	beq		.b49948				# 765
	b		.b49949
.b49942:
	sw		r25, 5(r15)				# 19525
	b		.b49941				# 19525
.b49936:
	lw		r62, 4(r48)				# 3920
	lw		r62, 1(r62)				# 19395
	b		.b49938				# 918
.b49934:
	lw		r62, 4(r48)				# 3920
	lw		r62, 1(r62)				# 19395
	cmpi	r9, 0
	beq		.b49939				# 905
.b49940:
	b		.b49938				# 918
.b49939:
	fneg	r62, r62				# 3025
	b		.b49938				# 3025
.b49931:
	addi	r9, r0, 0				# 3188
	cmpi	r62, 0
	beq		.b49934				# 765
	b		.b49935
.b49928:
	sw		r25, 3(r15)				# 19352
	lw		r9, 2(r61)				# 19500
	fcmp	r9, r25
	beq		.b49942				# 3128
	b		.b49943
.b49922:
	lw		r9, 4(r48)				# 3734
	lw		r9, 0(r9)				# 19222
	b		.b49924				# 918
.b49920:
	lw		r9, 4(r48)				# 3734
	lw		r9, 0(r9)				# 19222
	cmpi	r62, 0
	beq		.b49925				# 905
.b49926:
	b		.b49924				# 918
.b49925:
	fneg	r9, r9				# 3025
	b		.b49924				# 3025
.b49917:
	addi	r62, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b49920				# 765
	b		.b49921
.b49914:
	sw		r25, 1(r15)				# 19179
	lw		r9, 1(r61)				# 19327
	fcmp	r9, r25
	beq		.b49928				# 3128
	b		.b49929
.b49900:
	swx		r61, r9, r41				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r28
	ble		.b49900				# 44623
	b		.b49898
.b49833:
	lwx		r14, r51, r62				# 20821
	lw		r61, 1(r14)				# 2994
	cmpi	r61, 1
	beq		.b49836				# 20947
.b49837:
	cmpi	r61, 2
	beq		.b49884				# 21033
.b49885:
	mv		r15, r4
	addi	r4, r4, 5				# 20110
	sw		r25, 0(r15)				# 20110
	sw		r25, 1(r15)				# 20110
	sw		r25, 2(r15)				# 20110
	sw		r25, 3(r15)				# 20110
	sw		r25, 4(r15)				# 20110
	lw		r48, 0(r13)				# 20142
	lw		r39, 1(r13)				# 20142
	lw		r53, 2(r13)				# 20142
	fmul	r41, r48, r48				# 14374
	lw		r57, 4(r14)				# 3734
	lw		r50, 0(r57)				# 14374
	fmul	r61, r39, r39				# 14400
	lw		r29, 1(r57)				# 14400
	fmul	r61, r61, r29				# 14374
	faddmul	r61, r41, r50, r61				# 14374
	fmul	r41, r53, r53				# 14426
	lw		r17, 2(r57)				# 14426
	faddmul	r61, r41, r17, r61				# 14354
	lw		r41, 3(r14)				# 3553
	cmpi	r41, 0
	beq		.b49890				# 14456
.b49891:
	fmul	r12, r39, r53				# 14522
	lw		r33, 9(r14)				# 5989
	lw		r57, 0(r33)				# 14522
	faddmul	r61, r12, r57, r61				# 14503
	fmul	r57, r53, r48				# 14556
	lw		r12, 1(r33)				# 14556
	faddmul	r61, r57, r12, r61				# 14503
	fmul	r39, r48, r39				# 14590
	lw		r57, 2(r33)				# 14590
	faddmul	r61, r39, r57, r61				# 14503
.b49889:
	lw		r57, 0(r13)				# 20192
	fmul	r57, r57, r50				# 20186
	fneg	r50, r57				# 20177
	lw		r57, 1(r13)				# 20234
	fmul	r57, r57, r29				# 20228
	fneg	r39, r57				# 20219
	lw		r57, 2(r13)				# 20276
	fmul	r57, r57, r17				# 20270
	fneg	r17, r57				# 20261
	sw		r61, 0(r15)				# 20304
	cmpi	r41, 0
	beq		.b49893				# 20324
.b49894:
	lw		r12, 2(r13)				# 20379
	lw		r48, 9(r14)				# 6179
	lw		r29, 1(r48)				# 20379
	lw		r57, 1(r13)				# 20404
	lw		r41, 2(r48)				# 20404
	fmul	r41, r57, r41				# 20379
	faddmul	r41, r12, r29, r41				# 20372
	fhalf	r41, r41				# 20366
	fsub	r41, r50, r41				# 20353
	sw		r41, 1(r15)				# 20353
	lw		r29, 2(r13)				# 20458
	lw		r57, 0(r48)				# 20458
	lw		r14, 0(r13)				# 20483
	lw		r41, 2(r48)				# 20483
	fmul	r41, r14, r41				# 20458
	faddmul	r41, r29, r57, r41				# 20451
	fhalf	r41, r41				# 20445
	fsub	r41, r39, r41				# 20432
	sw		r41, 2(r15)				# 20353
	lw		r57, 1(r13)				# 20537
	lw		r39, 0(r48)				# 20537
	lw		r41, 0(r13)				# 20562
	lw		r48, 1(r48)				# 20562
	fmul	r41, r41, r48				# 20537
	faddmul	r41, r57, r39, r41				# 20530
	fhalf	r41, r41				# 20524
	fsub	r41, r17, r41				# 20511
	sw		r41, 3(r15)				# 20511
	fcmp	r61, r25
	beq		.b49895				# 3128
.b49897:
	fdiv	r61, r10, r61				# 20696
	sw		r61, 4(r15)				# 20696
.b49895:
	swx		r15, r62, r9				# 21165
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49833				# 20796
	b		.b49831
.b49893:
	sw		r50, 1(r15)				# 20601
	sw		r39, 2(r15)				# 20601
	sw		r17, 3(r15)				# 20643
	fcmp	r61, r25
	beq		.b49895				# 3128
	b		.b49897
.b49890:
	b		.b49889				# 14482
.b49884:
	mv		r61, r4
	addi	r4, r4, 4				# 19730
	sw		r25, 0(r61)				# 19730
	sw		r25, 1(r61)				# 19730
	sw		r25, 2(r61)				# 19730
	sw		r25, 3(r61)				# 19730
	lw		r39, 0(r13)				# 19764
	lw		r41, 4(r14)				# 3734
	lw		r48, 0(r41)				# 19764
	lw		r15, 1(r13)				# 19790
	lw		r57, 1(r41)				# 19790
	fmul	r15, r15, r57				# 19764
	faddmul	r15, r39, r48, r15				# 19764
	lw		r39, 2(r13)				# 19816
	lw		r57, 2(r41)				# 19816
	faddmul	r57, r39, r57, r15				# 19752
	fcmp	r57, r25
	ble		.b49887				# 3158
.b49888:
	addis	r15, r0, 49024				# 19882
	fdiv	r15, r15, r57				# 19869
	sw		r15, 0(r61)				# 19869
	lw		r15, 0(r41)				# 19916
	fdiv	r15, r15, r57				# 19910
	fneg	r15, r15				# 19897
	sw		r15, 1(r61)				# 19869
	lw		r15, 1(r41)				# 19958
	fdiv	r15, r15, r57				# 19952
	fneg	r15, r15				# 19939
	sw		r15, 2(r61)				# 19869
	lw		r15, 2(r41)				# 20000
	fdiv	r15, r15, r57				# 19994
	fneg	r15, r15				# 19981
	sw		r15, 3(r61)				# 19981
.b49886:
	swx		r61, r62, r9				# 21074
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49833				# 20796
	b		.b49831
.b49887:
	sw		r25, 0(r61)				# 20032
	b		.b49886				# 20032
.b49836:
	mv		r41, r4
	addi	r4, r4, 6				# 19127
	addi	r61, r0, 0				# 19127
.b49840:
	swx		r25, r61, r41				# 19127
	addi	r61, r61, 1				# 19127
	cmpi	r61, 5
	ble		.b49840				# 19127
.b49838:
	lw		r61, 0(r13)				# 19153
	fcmp	r61, r25
	beq		.b49843				# 3128
.b49844:
	lw		r15, 6(r14)				# 3372
	lw		r61, 0(r13)				# 19253
	fcmp	r25, r61
	ble		.b49846				# 3188
.b49847:
	addi	r61, r0, 1				# 3188
	cmpi	r15, 0
	beq		.b49849				# 765
.b49850:
	cmpi	r61, 0
	beq		.b49851				# 775
.b49852:
	lw		r15, 4(r14)				# 3734
	lw		r15, 0(r15)				# 19222
	fneg	r15, r15				# 3025
.b49853:
	sw		r15, 0(r41)				# 19209
	lw		r61, 0(r13)				# 19302
	fdiv	r61, r10, r61				# 19289
	sw		r61, 1(r41)				# 19289
	lw		r61, 1(r13)				# 19327
	fcmp	r61, r25
	beq		.b49857				# 3128
.b49858:
	lw		r15, 6(r14)				# 3372
	lw		r61, 1(r13)				# 19426
	fcmp	r25, r61
	ble		.b49860				# 3188
.b49861:
	addi	r61, r0, 1				# 3188
	cmpi	r15, 0
	beq		.b49863				# 765
.b49864:
	cmpi	r61, 0
	beq		.b49865				# 775
.b49866:
	lw		r15, 4(r14)				# 3920
	lw		r15, 1(r15)				# 19395
	fneg	r15, r15				# 3025
.b49867:
	sw		r15, 2(r41)				# 19382
	lw		r61, 1(r13)				# 19475
	fdiv	r61, r10, r61				# 19462
	sw		r61, 3(r41)				# 19462
	lw		r61, 2(r13)				# 19500
	fcmp	r61, r25
	beq		.b49871				# 3128
.b49872:
	lw		r61, 6(r14)				# 3372
	lw		r15, 2(r13)				# 19599
	fcmp	r25, r15
	ble		.b49874				# 3188
.b49875:
	addi	r15, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b49877				# 765
.b49878:
	cmpi	r15, 0
	beq		.b49879				# 775
.b49880:
	lw		r61, 4(r14)				# 4105
	lw		r61, 2(r61)				# 19568
	fneg	r61, r61				# 3025
.b49881:
	sw		r61, 4(r41)				# 19555
	lw		r61, 2(r13)				# 19648
	fdiv	r61, r10, r61				# 19635
	sw		r61, 5(r41)				# 19635
.b49870:
	swx		r41, r62, r9				# 20985
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49833				# 20796
	b		.b49831
.b49879:
	lw		r61, 4(r14)				# 4105
	lw		r61, 2(r61)				# 19568
	b		.b49881				# 918
.b49877:
	lw		r61, 4(r14)				# 4105
	lw		r61, 2(r61)				# 19568
	cmpi	r15, 0
	beq		.b49882				# 905
.b49883:
	b		.b49881				# 918
.b49882:
	fneg	r61, r61				# 3025
	b		.b49881				# 3025
.b49874:
	addi	r15, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b49877				# 765
	b		.b49878
.b49871:
	sw		r25, 5(r41)				# 19525
	b		.b49870				# 19525
.b49865:
	lw		r15, 4(r14)				# 3920
	lw		r15, 1(r15)				# 19395
	b		.b49867				# 918
.b49863:
	lw		r15, 4(r14)				# 3920
	lw		r15, 1(r15)				# 19395
	cmpi	r61, 0
	beq		.b49868				# 905
.b49869:
	b		.b49867				# 918
.b49868:
	fneg	r15, r15				# 3025
	b		.b49867				# 3025
.b49860:
	addi	r61, r0, 0				# 3188
	cmpi	r15, 0
	beq		.b49863				# 765
	b		.b49864
.b49857:
	sw		r25, 3(r41)				# 19352
	lw		r61, 2(r13)				# 19500
	fcmp	r61, r25
	beq		.b49871				# 3128
	b		.b49872
.b49851:
	lw		r15, 4(r14)				# 3734
	lw		r15, 0(r15)				# 19222
	b		.b49853				# 918
.b49849:
	lw		r15, 4(r14)				# 3734
	lw		r15, 0(r15)				# 19222
	cmpi	r61, 0
	beq		.b49854				# 905
.b49855:
	b		.b49853				# 918
.b49854:
	fneg	r15, r15				# 3025
	b		.b49853				# 3025
.b49846:
	addi	r61, r0, 0				# 3188
	cmpi	r15, 0
	beq		.b49849				# 765
	b		.b49850
.b49843:
	sw		r25, 1(r41)				# 19179
	lw		r61, 1(r13)				# 19327
	fcmp	r61, r25
	beq		.b49857				# 3128
	b		.b49858
.b49829:
	swx		r13, r61, r9				# 44623
	addi	r61, r61, 1				# 44623
	cmp		r61, r28
	ble		.b49829				# 44623
	b		.b49827
.b49762:
	lwx		r17, r51, r61				# 20821
	lw		r9, 1(r17)				# 2994
	cmpi	r9, 1
	beq		.b49765				# 20947
.b49766:
	cmpi	r9, 2
	beq		.b49813				# 21033
.b49814:
	mv		r9, r4
	addi	r4, r4, 5				# 20110
	sw		r25, 0(r9)				# 20110
	sw		r25, 1(r9)				# 20110
	sw		r25, 2(r9)				# 20110
	sw		r25, 3(r9)				# 20110
	sw		r25, 4(r9)				# 20110
	lw		r12, 0(r41)				# 20142
	lw		r33, 1(r41)				# 20142
	lw		r15, 2(r41)				# 20142
	fmul	r19, r12, r12				# 14374
	lw		r23, 4(r17)				# 3734
	lw		r42, 0(r23)				# 14374
	fmul	r28, r33, r33				# 14400
	lw		r14, 1(r23)				# 14400
	fmul	r28, r28, r14				# 14374
	faddmul	r28, r19, r42, r28				# 14374
	fmul	r29, r15, r15				# 14426
	lw		r19, 2(r23)				# 14426
	faddmul	r28, r29, r19, r28				# 14354
	lw		r29, 3(r17)				# 3553
	cmpi	r29, 0
	beq		.b49819				# 14456
.b49820:
	fmul	r53, r33, r15				# 14522
	lw		r23, 9(r17)				# 5989
	lw		r50, 0(r23)				# 14522
	faddmul	r50, r53, r50, r28				# 14503
	fmul	r15, r15, r12				# 14556
	lw		r28, 1(r23)				# 14556
	faddmul	r28, r15, r28, r50				# 14503
	fmul	r15, r12, r33				# 14590
	lw		r23, 2(r23)				# 14590
	faddmul	r28, r15, r23, r28				# 14503
.b49818:
	lw		r15, 0(r41)				# 20192
	fmul	r15, r15, r42				# 20186
	fneg	r50, r15				# 20177
	lw		r15, 1(r41)				# 20234
	fmul	r15, r15, r14				# 20228
	fneg	r12, r15				# 20219
	lw		r15, 2(r41)				# 20276
	fmul	r15, r15, r19				# 20270
	fneg	r14, r15				# 20261
	sw		r28, 0(r9)				# 20304
	cmpi	r29, 0
	beq		.b49822				# 20324
.b49823:
	lw		r15, 2(r41)				# 20379
	lw		r19, 9(r17)				# 6179
	lw		r29, 1(r19)				# 20379
	lw		r23, 1(r41)				# 20404
	lw		r17, 2(r19)				# 20404
	fmul	r23, r23, r17				# 20379
	faddmul	r15, r15, r29, r23				# 20372
	fhalf	r15, r15				# 20366
	fsub	r15, r50, r15				# 20353
	sw		r15, 1(r9)				# 20353
	lw		r17, 2(r41)				# 20458
	lw		r29, 0(r19)				# 20458
	lw		r15, 0(r41)				# 20483
	lw		r23, 2(r19)				# 20483
	fmul	r15, r15, r23				# 20458
	faddmul	r15, r17, r29, r15				# 20451
	fhalf	r15, r15				# 20445
	fsub	r15, r12, r15				# 20432
	sw		r15, 2(r9)				# 20353
	lw		r17, 1(r41)				# 20537
	lw		r23, 0(r19)				# 20537
	lw		r29, 0(r41)				# 20562
	lw		r15, 1(r19)				# 20562
	fmul	r15, r29, r15				# 20537
	faddmul	r15, r17, r23, r15				# 20530
	fhalf	r15, r15				# 20524
	fsub	r15, r14, r15				# 20511
	sw		r15, 3(r9)				# 20511
	fcmp	r28, r25
	beq		.b49824				# 3128
.b49826:
	fdiv	r28, r10, r28				# 20696
	sw		r28, 4(r9)				# 20696
.b49824:
	swx		r9, r61, r62				# 21165
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49762				# 20796
	b		.b49760
.b49822:
	sw		r50, 1(r9)				# 20601
	sw		r12, 2(r9)				# 20601
	sw		r14, 3(r9)				# 20643
	fcmp	r28, r25
	beq		.b49824				# 3128
	b		.b49826
.b49819:
	b		.b49818				# 14482
.b49813:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	sw		r25, 0(r9)				# 19730
	sw		r25, 1(r9)				# 19730
	sw		r25, 2(r9)				# 19730
	sw		r25, 3(r9)				# 19730
	lw		r28, 0(r41)				# 19764
	lw		r15, 4(r17)				# 3734
	lw		r19, 0(r15)				# 19764
	lw		r23, 1(r41)				# 19790
	lw		r29, 1(r15)				# 19790
	fmul	r23, r23, r29				# 19764
	faddmul	r23, r28, r19, r23				# 19764
	lw		r28, 2(r41)				# 19816
	lw		r19, 2(r15)				# 19816
	faddmul	r23, r28, r19, r23				# 19752
	fcmp	r23, r25
	ble		.b49816				# 3158
.b49817:
	addis	r28, r0, 49024				# 19882
	fdiv	r28, r28, r23				# 19869
	sw		r28, 0(r9)				# 19869
	lw		r28, 0(r15)				# 19916
	fdiv	r28, r28, r23				# 19910
	fneg	r28, r28				# 19897
	sw		r28, 1(r9)				# 19869
	lw		r28, 1(r15)				# 19958
	fdiv	r28, r28, r23				# 19952
	fneg	r28, r28				# 19939
	sw		r28, 2(r9)				# 19869
	lw		r28, 2(r15)				# 20000
	fdiv	r28, r28, r23				# 19994
	fneg	r28, r28				# 19981
	sw		r28, 3(r9)				# 19981
.b49815:
	swx		r9, r61, r62				# 21074
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49762				# 20796
	b		.b49760
.b49816:
	sw		r25, 0(r9)				# 20032
	b		.b49815				# 20032
.b49765:
	mv		r9, r4
	addi	r4, r4, 6				# 19127
	addi	r28, r0, 0				# 19127
.b49769:
	swx		r25, r28, r9				# 19127
	addi	r28, r28, 1				# 19127
	cmpi	r28, 5
	ble		.b49769				# 19127
.b49767:
	lw		r28, 0(r41)				# 19153
	fcmp	r28, r25
	beq		.b49772				# 3128
.b49773:
	lw		r28, 6(r17)				# 3372
	lw		r15, 0(r41)				# 19253
	fcmp	r25, r15
	ble		.b49775				# 3188
.b49776:
	addi	r15, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49778				# 765
.b49779:
	cmpi	r15, 0
	beq		.b49780				# 775
.b49781:
	lw		r28, 4(r17)				# 3734
	lw		r28, 0(r28)				# 19222
	fneg	r28, r28				# 3025
.b49782:
	sw		r28, 0(r9)				# 19209
	lw		r28, 0(r41)				# 19302
	fdiv	r28, r10, r28				# 19289
	sw		r28, 1(r9)				# 19289
	lw		r28, 1(r41)				# 19327
	fcmp	r28, r25
	beq		.b49786				# 3128
.b49787:
	lw		r15, 6(r17)				# 3372
	lw		r28, 1(r41)				# 19426
	fcmp	r25, r28
	ble		.b49789				# 3188
.b49790:
	addi	r28, r0, 1				# 3188
	cmpi	r15, 0
	beq		.b49792				# 765
.b49793:
	cmpi	r28, 0
	beq		.b49794				# 775
.b49795:
	lw		r15, 4(r17)				# 3920
	lw		r15, 1(r15)				# 19395
	fneg	r15, r15				# 3025
.b49796:
	sw		r15, 2(r9)				# 19382
	lw		r28, 1(r41)				# 19475
	fdiv	r28, r10, r28				# 19462
	sw		r28, 3(r9)				# 19462
	lw		r28, 2(r41)				# 19500
	fcmp	r28, r25
	beq		.b49800				# 3128
.b49801:
	lw		r28, 6(r17)				# 3372
	lw		r15, 2(r41)				# 19599
	fcmp	r25, r15
	ble		.b49803				# 3188
.b49804:
	addi	r15, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49806				# 765
.b49807:
	cmpi	r15, 0
	beq		.b49808				# 775
.b49809:
	lw		r28, 4(r17)				# 4105
	lw		r28, 2(r28)				# 19568
	fneg	r28, r28				# 3025
.b49810:
	sw		r28, 4(r9)				# 19555
	lw		r28, 2(r41)				# 19648
	fdiv	r28, r10, r28				# 19635
	sw		r28, 5(r9)				# 19635
.b49799:
	swx		r9, r61, r62				# 20985
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49762				# 20796
	b		.b49760
.b49808:
	lw		r28, 4(r17)				# 4105
	lw		r28, 2(r28)				# 19568
	b		.b49810				# 918
.b49806:
	lw		r28, 4(r17)				# 4105
	lw		r28, 2(r28)				# 19568
	cmpi	r15, 0
	beq		.b49811				# 905
.b49812:
	b		.b49810				# 918
.b49811:
	fneg	r28, r28				# 3025
	b		.b49810				# 3025
.b49803:
	addi	r15, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49806				# 765
	b		.b49807
.b49800:
	sw		r25, 5(r9)				# 19525
	b		.b49799				# 19525
.b49794:
	lw		r15, 4(r17)				# 3920
	lw		r15, 1(r15)				# 19395
	b		.b49796				# 918
.b49792:
	lw		r15, 4(r17)				# 3920
	lw		r15, 1(r15)				# 19395
	cmpi	r28, 0
	beq		.b49797				# 905
.b49798:
	b		.b49796				# 918
.b49797:
	fneg	r15, r15				# 3025
	b		.b49796				# 3025
.b49789:
	addi	r28, r0, 0				# 3188
	cmpi	r15, 0
	beq		.b49792				# 765
	b		.b49793
.b49786:
	sw		r25, 3(r9)				# 19352
	lw		r28, 2(r41)				# 19500
	fcmp	r28, r25
	beq		.b49800				# 3128
	b		.b49801
.b49780:
	lw		r28, 4(r17)				# 3734
	lw		r28, 0(r28)				# 19222
	b		.b49782				# 918
.b49778:
	lw		r28, 4(r17)				# 3734
	lw		r28, 0(r28)				# 19222
	cmpi	r15, 0
	beq		.b49783				# 905
.b49784:
	b		.b49782				# 918
.b49783:
	fneg	r28, r28				# 3025
	b		.b49782				# 3025
.b49775:
	addi	r15, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49778				# 765
	b		.b49779
.b49772:
	sw		r25, 1(r9)				# 19179
	lw		r28, 1(r41)				# 19327
	fcmp	r28, r25
	beq		.b49786				# 3128
	b		.b49787
.b49758:
	swx		r41, r9, r62				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r61
	ble		.b49758				# 44623
	b		.b49756
.b49682:
	lli		r9, objects.2536				# 20821
	lwx		r37, r9, r61				# 20821
	lw		r9, 1(r37)				# 2994
	cmpi	r9, 1
	beq		.b49685				# 20947
.b49686:
	cmpi	r9, 2
	beq		.b49733				# 21033
.b49734:
	mv		r28, r4
	addi	r4, r4, 5				# 20110
	addi	r10, r0, 0				# 20110
	sw		r10, 0(r28)				# 20110
	sw		r10, 1(r28)				# 20110
	sw		r10, 2(r28)				# 20110
	sw		r10, 3(r28)				# 20110
	sw		r10, 4(r28)				# 20110
	fmul	r51, r15, r15				# 14374
	lw		r9, 4(r37)				# 3734
	lw		r30, 0(r9)				# 14374
	fmul	r62, r57, r57				# 14400
	lw		r25, 1(r9)				# 14400
	fmul	r62, r62, r25				# 14374
	faddmul	r13, r51, r30, r62				# 14374
	fmul	r62, r7, r7				# 14426
	lw		r51, 2(r9)				# 14426
	faddmul	r9, r62, r51, r13				# 14354
	lw		r13, 3(r37)				# 3553
	cmpi	r13, 0
	beq		.b49739				# 14456
.b49740:
	fmul	r41, r57, r7				# 14522
	lw		r62, 9(r37)				# 5989
	lw		r46, 0(r62)				# 14522
	faddmul	r41, r41, r46, r9				# 14503
	fmul	r46, r7, r15				# 14556
	lw		r9, 1(r62)				# 14556
	faddmul	r9, r46, r9, r41				# 14503
	fmul	r41, r15, r57				# 14590
	lw		r62, 2(r62)				# 14590
	faddmul	r9, r41, r62, r9				# 14503
.b49738:
	fmul	r62, r15, r30				# 20186
	fneg	r30, r62				# 20177
	fmul	r62, r57, r25				# 20228
	fneg	r25, r62				# 20219
	fmul	r62, r7, r51				# 20270
	fneg	r41, r62				# 20261
	sw		r9, 0(r28)				# 20304
	cmpi	r13, 0
	beq		.b49742				# 20324
.b49743:
	lw		r13, 9(r37)				# 6179
	lw		r51, 1(r13)				# 20379
	lw		r62, 2(r13)				# 20404
	fmul	r62, r57, r62				# 20379
	faddmul	r62, r7, r51, r62				# 20372
	fhalf	r62, r62				# 20366
	fsub	r62, r30, r62				# 20353
	sw		r62, 1(r28)				# 20353
	lw		r51, 0(r13)				# 20458
	lw		r62, 2(r13)				# 20483
	fmul	r62, r15, r62				# 20458
	faddmul	r62, r7, r51, r62				# 20451
	fhalf	r62, r62				# 20445
	fsub	r62, r25, r62				# 20432
	sw		r62, 2(r28)				# 20353
	lw		r51, 0(r13)				# 20537
	lw		r62, 1(r13)				# 20562
	fmul	r62, r15, r62				# 20537
	faddmul	r62, r57, r51, r62				# 20530
	fhalf	r62, r62				# 20524
	fsub	r62, r41, r62				# 20511
	sw		r62, 3(r28)				# 20511
	fcmp	r9, r10
	beq		.b49744				# 3128
.b49746:
	addis	r62, r0, 16256				# 20709
	fdiv	r9, r62, r9				# 20696
	sw		r9, 4(r28)				# 20696
.b49744:
	lli		r9, consts.2632				# 21165
	swx		r28, r61, r9				# 21165
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49682				# 20796
	b		.b49680
.b49742:
	sw		r30, 1(r28)				# 20601
	sw		r25, 2(r28)				# 20601
	sw		r41, 3(r28)				# 20643
	fcmp	r9, r10
	beq		.b49744				# 3128
	b		.b49746
.b49739:
	b		.b49738				# 14482
.b49733:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	addi	r28, r0, 0				# 19730
	sw		r28, 0(r9)				# 19730
	sw		r28, 1(r9)				# 19730
	sw		r28, 2(r9)				# 19730
	sw		r28, 3(r9)				# 19730
	lw		r51, 4(r37)				# 3734
	lw		r62, 0(r51)				# 19764
	lw		r10, 1(r51)				# 19790
	fmul	r10, r57, r10				# 19764
	faddmul	r10, r15, r62, r10				# 19764
	lw		r62, 2(r51)				# 19816
	faddmul	r62, r7, r62, r10				# 19752
	fcmp	r62, r28
	ble		.b49736				# 3158
.b49737:
	addis	r28, r0, 49024				# 19882
	fdiv	r28, r28, r62				# 19869
	sw		r28, 0(r9)				# 19869
	lw		r28, 0(r51)				# 19916
	fdiv	r28, r28, r62				# 19910
	fneg	r28, r28				# 19897
	sw		r28, 1(r9)				# 19869
	lw		r28, 1(r51)				# 19958
	fdiv	r28, r28, r62				# 19952
	fneg	r28, r28				# 19939
	sw		r28, 2(r9)				# 19869
	lw		r28, 2(r51)				# 20000
	fdiv	r28, r28, r62				# 19994
	fneg	r28, r28				# 19981
	sw		r28, 3(r9)				# 19981
.b49735:
	lli		r28, consts.2632				# 21074
	swx		r9, r61, r28				# 21074
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49682				# 20796
	b		.b49680
.b49736:
	sw		r28, 0(r9)				# 20032
	b		.b49735				# 20032
.b49685:
	mv		r62, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b49689:
	addi	r28, r0, 0				# 19127
	swx		r28, r9, r62				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b49689				# 19127
.b49687:
	addi	r10, r0, 0				# 19150
	fcmp	r15, r10
	beq		.b49692				# 3128
.b49693:
	lw		r28, 6(r37)				# 3372
	fcmp	r10, r15
	ble		.b49695				# 3188
.b49696:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49698				# 765
.b49699:
	cmpi	r9, 0
	beq		.b49700				# 775
.b49701:
	lw		r28, 4(r37)				# 3734
	lw		r28, 0(r28)				# 19222
	fneg	r28, r28				# 3025
.b49702:
	sw		r28, 0(r62)				# 19209
	addis	r9, r0, 16256				# 19302
	fdiv	r9, r9, r15				# 19289
	sw		r9, 1(r62)				# 19289
	fcmp	r57, r10
	beq		.b49706				# 3128
.b49707:
	lw		r28, 6(r37)				# 3372
	fcmp	r10, r57
	ble		.b49709				# 3188
.b49710:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49712				# 765
.b49713:
	cmpi	r9, 0
	beq		.b49714				# 775
.b49715:
	lw		r28, 4(r37)				# 3920
	lw		r28, 1(r28)				# 19395
	fneg	r28, r28				# 3025
.b49716:
	sw		r28, 2(r62)				# 19382
	addis	r9, r0, 16256				# 19475
	fdiv	r9, r9, r57				# 19462
	sw		r9, 3(r62)				# 19462
	fcmp	r7, r10
	beq		.b49720				# 3128
.b49721:
	lw		r28, 6(r37)				# 3372
	fcmp	r10, r7
	ble		.b49723				# 3188
.b49724:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49726				# 765
.b49727:
	cmpi	r9, 0
	beq		.b49728				# 775
.b49729:
	lw		r28, 4(r37)				# 4105
	lw		r28, 2(r28)				# 19568
	fneg	r28, r28				# 3025
.b49730:
	sw		r28, 4(r62)				# 19555
	addis	r9, r0, 16256				# 19648
	fdiv	r9, r9, r7				# 19635
	sw		r9, 5(r62)				# 19635
.b49719:
	lli		r9, consts.2632				# 20985
	swx		r62, r61, r9				# 20985
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49682				# 20796
	b		.b49680
.b49728:
	lw		r28, 4(r37)				# 4105
	lw		r28, 2(r28)				# 19568
	b		.b49730				# 918
.b49726:
	lw		r28, 4(r37)				# 4105
	lw		r28, 2(r28)				# 19568
	cmpi	r9, 0
	beq		.b49731				# 905
.b49732:
	b		.b49730				# 918
.b49731:
	fneg	r28, r28				# 3025
	b		.b49730				# 3025
.b49723:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49726				# 765
	b		.b49727
.b49720:
	sw		r10, 5(r62)				# 19525
	b		.b49719				# 19525
.b49714:
	lw		r28, 4(r37)				# 3920
	lw		r28, 1(r28)				# 19395
	b		.b49716				# 918
.b49712:
	lw		r28, 4(r37)				# 3920
	lw		r28, 1(r28)				# 19395
	cmpi	r9, 0
	beq		.b49717				# 905
.b49718:
	b		.b49716				# 918
.b49717:
	fneg	r28, r28				# 3025
	b		.b49716				# 3025
.b49709:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49712				# 765
	b		.b49713
.b49706:
	sw		r10, 3(r62)				# 19352
	fcmp	r7, r10
	beq		.b49720				# 3128
	b		.b49721
.b49700:
	lw		r28, 4(r37)				# 3734
	lw		r28, 0(r28)				# 19222
	b		.b49702				# 918
.b49698:
	lw		r28, 4(r37)				# 3734
	lw		r28, 0(r28)				# 19222
	cmpi	r9, 0
	beq		.b49703				# 905
.b49704:
	b		.b49702				# 918
.b49703:
	fneg	r28, r28				# 3025
	b		.b49702				# 3025
.b49695:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49698				# 765
	b		.b49699
.b49692:
	sw		r10, 1(r62)				# 19179
	fcmp	r57, r10
	beq		.b49706				# 3128
	b		.b49707
.b49615:
	lli		r9, objects.2536				# 20821
	lwx		r39, r9, r28				# 20821
	lw		r7, 1(r41)				# 8141
	lw		r25, 0(r41)				# 8078
	lw		r9, 1(r39)				# 2994
	cmpi	r9, 1
	beq		.b49618				# 20947
.b49619:
	cmpi	r9, 2
	beq		.b49666				# 21033
.b49667:
	mv		r61, r4
	addi	r4, r4, 5				# 20110
	addi	r13, r0, 0				# 20110
	sw		r13, 0(r61)				# 20110
	sw		r13, 1(r61)				# 20110
	sw		r13, 2(r61)				# 20110
	sw		r13, 3(r61)				# 20110
	sw		r13, 4(r61)				# 20110
	lw		r46, 0(r25)				# 20142
	lw		r30, 1(r25)				# 20142
	lw		r23, 2(r25)				# 20142
	fmul	r10, r46, r46				# 14374
	lw		r54, 4(r39)				# 3734
	lw		r26, 0(r54)				# 14374
	fmul	r9, r30, r30				# 14400
	lw		r48, 1(r54)				# 14400
	fmul	r9, r9, r48				# 14374
	faddmul	r9, r10, r26, r9				# 14374
	fmul	r10, r23, r23				# 14426
	lw		r19, 2(r54)				# 14426
	faddmul	r9, r10, r19, r9				# 14354
	lw		r54, 3(r39)				# 3553
	cmpi	r54, 0
	beq		.b49672				# 14456
.b49673:
	fmul	r10, r30, r23				# 14522
	lw		r57, 9(r39)				# 5989
	lw		r37, 0(r57)				# 14522
	faddmul	r37, r10, r37, r9				# 14503
	fmul	r10, r23, r46				# 14556
	lw		r9, 1(r57)				# 14556
	faddmul	r37, r10, r9, r37				# 14503
	fmul	r9, r46, r30				# 14590
	lw		r10, 2(r57)				# 14590
	faddmul	r9, r9, r10, r37				# 14503
.b49671:
	fmul	r10, r46, r26				# 20186
	fneg	r46, r10				# 20177
	fmul	r10, r30, r48				# 20228
	fneg	r48, r10				# 20219
	fmul	r10, r23, r19				# 20270
	fneg	r57, r10				# 20261
	sw		r9, 0(r61)				# 20304
	cmpi	r54, 0
	beq		.b49675				# 20324
.b49676:
	lw		r54, 2(r25)				# 20379
	lw		r26, 9(r39)				# 6179
	lw		r10, 1(r26)				# 20379
	lw		r37, 1(r25)				# 20404
	lw		r30, 2(r26)				# 20404
	fmul	r30, r37, r30				# 20379
	faddmul	r10, r54, r10, r30				# 20372
	fhalf	r10, r10				# 20366
	fsub	r10, r46, r10				# 20353
	sw		r10, 1(r61)				# 20353
	lw		r54, 2(r25)				# 20458
	lw		r37, 0(r26)				# 20458
	lw		r30, 0(r25)				# 20483
	lw		r10, 2(r26)				# 20483
	fmul	r10, r30, r10				# 20458
	faddmul	r10, r54, r37, r10				# 20451
	fhalf	r10, r10				# 20445
	fsub	r10, r48, r10				# 20432
	sw		r10, 2(r61)				# 20353
	lw		r54, 1(r25)				# 20537
	lw		r30, 0(r26)				# 20537
	lw		r25, 0(r25)				# 20562
	lw		r10, 1(r26)				# 20562
	fmul	r10, r25, r10				# 20537
	faddmul	r10, r54, r30, r10				# 20530
	fhalf	r10, r10				# 20524
	fsub	r10, r57, r10				# 20511
	sw		r10, 3(r61)				# 20511
	fcmp	r9, r13
	beq		.b49677				# 3128
.b49679:
	addis	r10, r0, 16256				# 20709
	fdiv	r9, r10, r9				# 20696
	sw		r9, 4(r61)				# 20696
.b49677:
	swx		r61, r28, r7				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49615				# 20796
	b		.b49613
.b49675:
	sw		r46, 1(r61)				# 20601
	sw		r48, 2(r61)				# 20601
	sw		r57, 3(r61)				# 20643
	fcmp	r9, r13
	beq		.b49677				# 3128
	b		.b49679
.b49672:
	b		.b49671				# 14482
.b49666:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	addi	r30, r0, 0				# 19730
	sw		r30, 0(r9)				# 19730
	sw		r30, 1(r9)				# 19730
	sw		r30, 2(r9)				# 19730
	sw		r30, 3(r9)				# 19730
	lw		r61, 0(r25)				# 19764
	lw		r57, 4(r39)				# 3734
	lw		r10, 0(r57)				# 19764
	lw		r13, 1(r25)				# 19790
	lw		r54, 1(r57)				# 19790
	fmul	r13, r13, r54				# 19764
	faddmul	r61, r61, r10, r13				# 19764
	lw		r10, 2(r25)				# 19816
	lw		r13, 2(r57)				# 19816
	faddmul	r10, r10, r13, r61				# 19752
	fcmp	r10, r30
	ble		.b49669				# 3158
.b49670:
	addis	r61, r0, 49024				# 19882
	fdiv	r61, r61, r10				# 19869
	sw		r61, 0(r9)				# 19869
	lw		r61, 0(r57)				# 19916
	fdiv	r61, r61, r10				# 19910
	fneg	r61, r61				# 19897
	sw		r61, 1(r9)				# 19869
	lw		r61, 1(r57)				# 19958
	fdiv	r61, r61, r10				# 19952
	fneg	r61, r61				# 19939
	sw		r61, 2(r9)				# 19869
	lw		r61, 2(r57)				# 20000
	fdiv	r61, r61, r10				# 19994
	fneg	r61, r61				# 19981
	sw		r61, 3(r9)				# 19981
.b49668:
	swx		r9, r28, r7				# 21074
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49615				# 20796
	b		.b49613
.b49669:
	sw		r30, 0(r9)				# 20032
	b		.b49668				# 20032
.b49618:
	mv		r10, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b49622:
	addi	r61, r0, 0				# 19127
	swx		r61, r9, r10				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b49622				# 19127
.b49620:
	lw		r61, 0(r25)				# 19153
	addi	r13, r0, 0				# 19150
	fcmp	r61, r13
	beq		.b49625				# 3128
.b49626:
	lw		r9, 6(r39)				# 3372
	fcmp	r13, r61
	ble		.b49628				# 3188
.b49629:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b49631				# 765
.b49632:
	cmpi	r61, 0
	beq		.b49633				# 775
.b49634:
	lw		r9, 4(r39)				# 3734
	lw		r9, 0(r9)				# 19222
	fneg	r9, r9				# 3025
.b49635:
	sw		r9, 0(r10)				# 19209
	addis	r61, r0, 16256				# 19302
	lw		r9, 0(r25)				# 19302
	fdiv	r9, r61, r9				# 19289
	sw		r9, 1(r10)				# 19289
	lw		r61, 1(r25)				# 19327
	fcmp	r61, r13
	beq		.b49639				# 3128
.b49640:
	lw		r9, 6(r39)				# 3372
	fcmp	r13, r61
	ble		.b49642				# 3188
.b49643:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b49645				# 765
.b49646:
	cmpi	r61, 0
	beq		.b49647				# 775
.b49648:
	lw		r9, 4(r39)				# 3920
	lw		r9, 1(r9)				# 19395
	fneg	r9, r9				# 3025
.b49649:
	sw		r9, 2(r10)				# 19382
	addis	r9, r0, 16256				# 19475
	lw		r61, 1(r25)				# 19475
	fdiv	r9, r9, r61				# 19462
	sw		r9, 3(r10)				# 19462
	lw		r61, 2(r25)				# 19500
	fcmp	r61, r13
	beq		.b49653				# 3128
.b49654:
	lw		r9, 6(r39)				# 3372
	fcmp	r13, r61
	ble		.b49656				# 3188
.b49657:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b49659				# 765
.b49660:
	cmpi	r61, 0
	beq		.b49661				# 775
.b49662:
	lw		r9, 4(r39)				# 4105
	lw		r9, 2(r9)				# 19568
	fneg	r9, r9				# 3025
.b49663:
	sw		r9, 4(r10)				# 19555
	addis	r61, r0, 16256				# 19648
	lw		r9, 2(r25)				# 19648
	fdiv	r9, r61, r9				# 19635
	sw		r9, 5(r10)				# 19635
.b49652:
	swx		r10, r28, r7				# 20985
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49615				# 20796
	b		.b49613
.b49661:
	lw		r9, 4(r39)				# 4105
	lw		r9, 2(r9)				# 19568
	b		.b49663				# 918
.b49659:
	lw		r9, 4(r39)				# 4105
	lw		r9, 2(r9)				# 19568
	cmpi	r61, 0
	beq		.b49664				# 905
.b49665:
	b		.b49663				# 918
.b49664:
	fneg	r9, r9				# 3025
	b		.b49663				# 3025
.b49656:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b49659				# 765
	b		.b49660
.b49653:
	sw		r13, 5(r10)				# 19525
	b		.b49652				# 19525
.b49647:
	lw		r9, 4(r39)				# 3920
	lw		r9, 1(r9)				# 19395
	b		.b49649				# 918
.b49645:
	lw		r9, 4(r39)				# 3920
	lw		r9, 1(r9)				# 19395
	cmpi	r61, 0
	beq		.b49650				# 905
.b49651:
	b		.b49649				# 918
.b49650:
	fneg	r9, r9				# 3025
	b		.b49649				# 3025
.b49642:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b49645				# 765
	b		.b49646
.b49639:
	sw		r13, 3(r10)				# 19352
	lw		r61, 2(r25)				# 19500
	fcmp	r61, r13
	beq		.b49653				# 3128
	b		.b49654
.b49633:
	lw		r9, 4(r39)				# 3734
	lw		r9, 0(r9)				# 19222
	b		.b49635				# 918
.b49631:
	lw		r9, 4(r39)				# 3734
	lw		r9, 0(r9)				# 19222
	cmpi	r61, 0
	beq		.b49636				# 905
.b49637:
	b		.b49635				# 918
.b49636:
	fneg	r9, r9				# 3025
	b		.b49635				# 3025
.b49628:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b49631				# 765
	b		.b49632
.b49625:
	sw		r13, 1(r10)				# 19179
	lw		r61, 1(r25)				# 19327
	fcmp	r61, r13
	beq		.b49639				# 3128
	b		.b49640
.b49603:
	addi	r15, r15, -5				# 1017
	b		.b49602				# 1017
.b49600:
	addi	r9, r9, -5				# 1017
	cmpi	r51, 0
	bge		.b49589				# 43977
	b		.b49587
.b49581:
	swx		r61, r28, r9				# 44623
	addi	r28, r28, 1				# 44623
	cmp		r28, r13
	ble		.b49581				# 44623
	b		.b49579
.b49569:
	swx		r61, r9, r28				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r15
	ble		.b49569				# 44623
	b		.b49567
.b49492:
	addi	r9, r0, 0				# 13110
	b		T.loop49548				# 0
.b49544:
	addi	r54, r54, 1				# 12563
	cmpi	r54, 60
	bge		.b49492				# 12512
	b		.b49495
.b49534:
	cmpi	r62, 0
	beq		.b49537				# 12335
.b49538:
	addi	r9, r0, 0				# 12335
.b49536:
	lw		r61, 0(r51)				# 1729
	lw		r28, 1(r51)				# 1743
	fmul	r28, r28, r28				# 1729
	faddmul	r61, r61, r61, r28				# 1729
	lw		r28, 2(r51)				# 1757
	faddmul	r61, r28, r28, r61				# 1723
	fsqrt	r61, r61				# 227
	fcmp	r61, r7
	beq		.b49540				# 3128
.b49541:
	cmpi	r9, 0
	beq		.b49542				# 1810
.b49543:
	addis	r9, r0, 49024				# 1822
	fdiv	r61, r9, r61				# 1822
.b49539:
	lw		r9, 0(r51)				# 1860
	fmul	r9, r9, r61				# 1851
	sw		r9, 0(r51)				# 1851
	lw		r9, 1(r51)				# 1884
	fmul	r9, r9, r61				# 1875
	sw		r9, 1(r51)				# 1851
	lw		r9, 2(r51)				# 1908
	fmul	r9, r9, r61				# 1899
	sw		r9, 2(r51)				# 1899
	cmpi	r57, 0
	beq		.b49544				# 12371
	b		.b49546
.b49542:
	addis	r9, r0, 16256				# 1837
	fdiv	r61, r9, r61				# 1837
	b		.b49539				# 1837
.b49540:
	addis	r61, r0, 16256				# 1801
	b		.b49539				# 1801
.b49537:
	addi	r9, r0, 1				# 12335
	b		.b49536				# 12335
.b49508:
	lw		r9, 0(r51)				# 12053
	fcmp	r9, r7
	beq		.b49511				# 3128
.b49512:
	fcmp	r9, r7
	beq		.b49514				# 3128
.b49515:
	fcmp	r9, r7
	ble		.b49516				# 3158
.b49517:
	addis	r61, r0, 16256				# 856
.b49513:
	fmul	r9, r9, r9				# 12112
	fdiv	r9, r61, r9				# 12112
	sw		r9, 0(r51)				# 12074
	lw		r9, 1(r51)				# 12132
	fcmp	r9, r7
	beq		.b49519				# 3128
.b49520:
	fcmp	r9, r7
	beq		.b49522				# 3128
.b49523:
	fcmp	r9, r7
	ble		.b49524				# 3158
.b49525:
	addis	r61, r0, 16256				# 856
.b49521:
	fmul	r9, r9, r9				# 12191
	fdiv	r9, r61, r9				# 12191
	sw		r9, 1(r51)				# 12153
	lw		r9, 2(r51)				# 12210
	fcmp	r9, r7
	beq		.b49527				# 3128
.b49528:
	fcmp	r9, r7
	beq		.b49530				# 3128
.b49531:
	fcmp	r9, r7
	ble		.b49532				# 3158
.b49533:
	addis	r61, r0, 16256				# 856
.b49529:
	fmul	r9, r9, r9				# 12269
	fdiv	r9, r61, r9				# 12269
	sw		r9, 2(r51)				# 12231
	cmpi	r57, 0
	beq		.b49544				# 12371
	b		.b49546
.b49532:
	addis	r61, r0, 49024				# 868
	b		.b49529				# 868
.b49530:
	addi	r61, r0, 0				# 828
	b		.b49529				# 828
.b49527:
	addi	r9, r0, 0				# 12260
	sw		r9, 2(r51)				# 12231
	cmpi	r57, 0
	beq		.b49544				# 12371
	b		.b49546
.b49524:
	addis	r61, r0, 49024				# 868
	b		.b49521				# 868
.b49522:
	addi	r61, r0, 0				# 828
	b		.b49521				# 828
.b49519:
	addi	r9, r0, 0				# 12182
	sw		r9, 1(r51)				# 12153
	lw		r9, 2(r51)				# 12210
	fcmp	r9, r7
	beq		.b49527				# 3128
	b		.b49528
.b49516:
	addis	r61, r0, 49024				# 868
	b		.b49513				# 868
.b49514:
	addi	r61, r0, 0				# 828
	b		.b49513				# 828
.b49511:
	addi	r9, r0, 0				# 12103
	sw		r9, 0(r51)				# 12074
	lw		r9, 1(r51)				# 12132
	fcmp	r9, r7
	beq		.b49519				# 3128
	b		.b49520
.b49505:
	addi	r28, r0, 1				# 11723
	b		.b49504				# 11723
.b49501:
	cmpi	r37, 2
	beq		.b49505				# 11706
	b		.b49506
.b49499:
	addi	r62, r0, 0				# 3188
	b		.b49498				# 3188
	# main program end
_min_caml_end:
	flush
	halt
	halt
	halt
# === .data section ===
	.data
n_objects.2525:
	.size 1
dummy.2528:
	.size 1
Tt270.2535:
	.size 1
objects.2536:
	.size 60
screen.2539:
	.size 3
viewpoint.2542:
	.size 3
light.2545:
	.size 3
beam.2548:
	.size 1
Ta283.2553:
	.size 1
and_net.2554:
	.size 50
Ta286.2558:
	.size 1
Ta288.2559:
	.size 1
or_net.2560:
	.size 1
solver_dist.2563:
	.size 1
intsec_rectside.2566:
	.size 1
tmin.2569:
	.size 1
intersection_point.2572:
	.size 3
intersected_object_id.2575:
	.size 1
nvector.2578:
	.size 3
texture_color.2581:
	.size 3
diffuse_ray.2584:
	.size 3
rgb.2587:
	.size 3
image_size.2590:
	.size 2
image_center.2593:
	.size 2
scan_pitch.2596:
	.size 1
startp.2599:
	.size 3
startp_fast.2602:
	.size 3
screenx_dir.2605:
	.size 3
screeny_dir.2608:
	.size 3
screenz_dir.2611:
	.size 3
ptrace_dirvec.2614:
	.size 3
dummyf.2617:
	.size 1
dummyff.2619:
	.size 1
Tt329.2621:
	.size 1
dummy_vs.2622:
	.size 1
dirvecs.2624:
	.size 5
dummyf2.2627:
	.size 1
v3.2630:
	.size 3
consts.2632:
	.size 60
dummyf3.2636:
	.size 1
dummyff3.2638:
	.size 1
dummydv.2639:
	.size 1
Tt342.2643:
	.size 1
reflections.2644:
	.size 180
n_reflections.2647:
	.size 1