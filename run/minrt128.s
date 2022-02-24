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
	addi	r41, r0, 0				# 28622
	lli		r30, objects.2536				# 28622
	lli		r54, light.2545				# 28622
	addis	r48, r0, 17279				# 28622
	lli		r51, and_net.2554				# 28622
	lli		r61, or_net.2560				# 28622
	lli		r37, solver_dist.2563				# 28622
	lli		r19, intsec_rectside.2566				# 28622
	addis	r9, r0, 20078
	ori		r9, r9, 27432				# 28622
	lli		r23, tmin.2569				# 28622
	lli		r25, intersection_point.2572				# 28622
	lli		r29, intersected_object_id.2575				# 28622
	lli		r7, nvector.2578				# 28622
	lli		r10, texture_color.2581				# 28622
	lli		r62, diffuse_ray.2584				# 28622
	lli		r39, startp_fast.2602				# 28622
	lli		r57, v3.2630				# 28622
	lli		r15, consts.2632				# 28622
	sw		r9, 0(r23)				# 28622
	lw		r13, 0(r61)				# 28652
	addi	r26, r0, 0				# 28095
	lwx		r14, r13, r26				# 28095
	lw		r61, 0(r14)				# 28128
	cmpi	r61, -1
	beq		.b47469				# 28164
.b47472:
	cmpi	r61, 99
	beq		.b47474				# 28213
.b47475:
	lwx		r46, r30, r61				# 18636
	lw		r9, 10(r46)				# 6561
	lw		r56, 0(r9)				# 18698
	lw		r27, 1(r9)				# 18723
	lw		r36, 2(r9)				# 18748
	lw		r17, 1(r1)				# 8141
	lwx		r42, r17, r61				# 18807
	lw		r61, 1(r46)				# 2994
	cmpi	r61, 1
	beq		.b47581				# 18869
.b47582:
	cmpi	r61, 2
	beq		.b47607				# 18950
.b47608:
	lw		r50, 0(r42)				# 18204
	fcmp	r50, r41
	beq		.b47473				# 3128
.b47612:
	lw		r28, 1(r42)				# 18278
	lw		r61, 2(r42)				# 18298
	fmul	r61, r61, r27				# 18278
	faddmul	r61, r28, r56, r61				# 18278
	lw		r28, 3(r42)				# 18318
	faddmul	r61, r28, r36, r61				# 18265
	lw		r9, 3(r9)				# 18342
	fmul	r28, r61, r61				# 18377
	fmul	r9, r50, r9				# 18377
	fsub	r9, r28, r9				# 18369
	fcmp	r9, r41
	ble		.b47473				# 3158
.b47614:
	lw		r28, 6(r46)				# 3372
	cmpi	r28, 0
	beq		.b47616				# 18435
.b47617:
	fsqrt	r9, r9				# 227
	fadd	r9, r61, r9				# 18476
	lw		r61, 4(r42)				# 18476
	fmul	r9, r9, r61				# 18457
	sw		r9, 0(r37)				# 18457
	lw		r61, 0(r37)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r61
	ble		.b47473				# 3098
.b47621:
	addi	r9, r0, 1				# 27829
	lwx		r61, r14, r9				# 27829
	cmpi	r61, -1
	beq		.b47473				# 27860
.b47624:
	lwx		r33, r51, r61				# 27885
	addi	r46, r0, 0				# 26885
	lw		r42, 0(r1)				# 8078
	lwx		r56, r33, r46				# 26915
	cmpi	r56, -1
	beq		.b47625				# 26952
.b47628:
	lwx		r50, r30, r56				# 18636
	lw		r27, 10(r50)				# 6561
	lw		r28, 0(r27)				# 18698
	lw		r20, 1(r27)				# 18723
	lw		r12, 2(r27)				# 18748
	lwx		r59, r17, r56				# 18807
	lw		r61, 1(r50)				# 2994
	cmpi	r61, 1
	beq		.b47630				# 18869
.b47631:
	cmpi	r61, 2
	beq		.b47656				# 18950
.b47657:
	lw		r61, 0(r59)				# 18204
	fcmp	r61, r41
	beq		.b47667				# 3128
.b47661:
	lw		r36, 1(r59)				# 18278
	lw		r53, 2(r59)				# 18298
	fmul	r53, r53, r20				# 18278
	faddmul	r53, r36, r28, r53				# 18278
	lw		r28, 3(r59)				# 18318
	faddmul	r12, r28, r12, r53				# 18265
	lw		r28, 3(r27)				# 18342
	fmul	r53, r12, r12				# 18377
	fmul	r61, r61, r28				# 18377
	fsub	r61, r53, r61				# 18369
	fcmp	r61, r41
	ble		.b47667				# 3158
.b47663:
	lw		r28, 6(r50)				# 3372
	cmpi	r28, 0
	beq		.b47665				# 18435
.b47666:
	fsqrt	r61, r61				# 227
	fadd	r61, r12, r61				# 18476
	lw		r28, 4(r59)				# 18476
	fmul	r61, r61, r28				# 18457
	sw		r61, 0(r37)				# 18457
	addi	r36, r0, 1				# 18580
	lw		r61, 0(r37)				# 27058
	fcmp	r61, r41
	ble		.b47671				# 3098
.b47673:
	lw		r28, 0(r23)				# 27125
	fcmp	r28, r61
	ble		.b47671				# 3098
.b47675:
	addis	r28, r0, 15395
	ori		r28, r28, 55050				# 27169
	fadd	r27, r61, r28				# 27161
	lw		r61, 0(r42)				# 27198
	lw		r28, 0(r39)				# 27198
	faddmul	r53, r61, r27, r28				# 27189
	lw		r28, 1(r42)				# 27247
	lw		r61, 1(r39)				# 27247
	faddmul	r47, r28, r27, r61				# 27238
	lw		r61, 2(r42)				# 27296
	lw		r28, 2(r39)				# 27296
	faddmul	r59, r61, r27, r28				# 27287
	addi	r28, r0, 0				# 23025
	lwx		r61, r33, r28				# 23025
	cmpi	r61, -1
	beq		.b47725				# 23052
.b47679:
	lwx		r20, r30, r61				# 23095
	lw		r61, 5(r20)				# 4475
	lw		r50, 0(r61)				# 22709
	fsub	r35, r53, r50				# 22700
	lw		r50, 1(r61)				# 22741
	fsub	r8, r47, r50				# 22732
	lw		r61, 2(r61)				# 22773
	fsub	r49, r59, r61				# 22764
	lw		r50, 1(r20)				# 2994
	cmpi	r50, 1
	beq		.b47681				# 22824
.b47682:
	cmpi	r50, 2
	beq		.b47694				# 22882
.b47695:
	fmul	r38, r35, r35				# 14374
	lw		r61, 4(r20)				# 3734
	lw		r44, 0(r61)				# 14374
	fmul	r42, r8, r8				# 14400
	lw		r12, 1(r61)				# 14400
	fmul	r12, r42, r12				# 14374
	faddmul	r42, r38, r44, r12				# 14374
	fmul	r12, r49, r49				# 14426
	lw		r61, 2(r61)				# 14426
	faddmul	r61, r12, r61, r42				# 14354
	lw		r12, 3(r20)				# 3553
	cmpi	r12, 0
	beq		.b47707				# 14456
.b47708:
	fmul	r12, r8, r49				# 14522
	lw		r44, 9(r20)				# 5989
	lw		r42, 0(r44)				# 14522
	faddmul	r12, r12, r42, r61				# 14503
	fmul	r61, r49, r35				# 14556
	lw		r42, 1(r44)				# 14556
	faddmul	r12, r61, r42, r12				# 14503
	fmul	r61, r35, r8				# 14590
	lw		r42, 2(r44)				# 14590
	faddmul	r61, r61, r42, r12				# 14503
	cmpi	r50, 3
	beq		.b47710				# 22583
.b47711:
	lw		r50, 6(r20)				# 3372
	fcmp	r41, r61
	ble		.b47713				# 3188
.b47714:
	addi	r61, r0, 1				# 3188
	cmpi	r50, 0
	beq		.b47716				# 765
.b47717:
	cmpi	r61, 0
	beq		.b47722				# 775
.b47671:
	addi	r46, r46, 1				# 27573
	lw		r42, 0(r1)				# 8078
	lwx		r56, r33, r46				# 26915
	cmpi	r56, -1
	beq		.b47625				# 26952
	b		.b47628
.b47625:
	addi	r9, r9, 1				# 27971
	lwx		r61, r14, r9				# 27829
	cmpi	r61, -1
	beq		.b47473				# 27860
	b		.b47624
.b47473:
	addi	r26, r26, 1				# 28519
	lwx		r14, r13, r26				# 28095
	lw		r61, 0(r14)				# 28128
	cmpi	r61, -1
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
	lwx		r23, r30, r9				# 35130
	lw		r61, 0(r1)				# 8078
	lw		r9, 1(r23)				# 2994
	cmpi	r9, 1
	beq		.b47731				# 29818
.b47732:
	cmpi	r9, 2
	beq		.b47738				# 29873
.b47739:
	lw		r61, 0(r25)				# 29136
	lw		r28, 5(r23)				# 4475
	lw		r9, 0(r28)				# 29136
	fsub	r19, r61, r9				# 29127
	lw		r61, 1(r25)				# 29188
	lw		r9, 1(r28)				# 29188
	fsub	r26, r61, r9				# 29179
	lw		r9, 2(r25)				# 29240
	lw		r61, 2(r28)				# 29240
	fsub	r46, r9, r61				# 29231
	lw		r9, 4(r23)				# 3734
	lw		r61, 0(r9)				# 29293
	fmul	r28, r19, r61				# 29284
	lw		r61, 1(r9)				# 29325
	fmul	r61, r26, r61				# 29316
	lw		r9, 2(r9)				# 29357
	fmul	r29, r46, r9				# 29348
	lw		r9, 3(r23)				# 3553
	cmpi	r9, 0
	beq		.b47741				# 29381
.b47742:
	lw		r50, 9(r23)				# 6369
	lw		r17, 2(r50)				# 29517
	lw		r14, 1(r50)				# 29539
	fmul	r9, r46, r14				# 29517
	faddmul	r9, r26, r17, r9				# 29510
	fhalf	r9, r9				# 29504
	fadd	r9, r28, r9				# 29489
	sw		r9, 0(r7)				# 29489
	lw		r28, 0(r50)				# 29614
	fmul	r9, r46, r28				# 29592
	faddmul	r9, r19, r17, r9				# 29585
	fhalf	r9, r9				# 29579
	fadd	r9, r61, r9				# 29564
	sw		r9, 1(r7)				# 29489
	fmul	r9, r26, r28				# 29667
	faddmul	r9, r19, r14, r9				# 29660
	fhalf	r9, r9				# 29654
	fadd	r9, r29, r9				# 29639
	sw		r9, 2(r7)				# 29639
.b47740:
	lw		r28, 6(r23)				# 3372
	lw		r9, 0(r7)				# 1729
	lw		r46, 1(r7)				# 1743
	fmul	r61, r46, r46				# 1729
	faddmul	r61, r9, r9, r61				# 1729
	lw		r26, 2(r7)				# 1757
	faddmul	r61, r26, r26, r61				# 1723
	fsqrt	r19, r61				# 227
	fcmp	r19, r41
	beq		.b47744				# 3128
.b47745:
	cmpi	r28, 0
	beq		.b47746				# 1810
.b47747:
	addis	r61, r0, 49024				# 1822
	fdiv	r61, r61, r19				# 1822
.b47743:
	fmul	r9, r9, r61				# 1851
	sw		r9, 0(r7)				# 1851
	fmul	r9, r46, r61				# 1875
	sw		r9, 1(r7)				# 1851
	fmul	r9, r26, r61				# 1899
	sw		r9, 2(r7)				# 1899
.b47730:
	lw		r28, 0(r23)				# 2815
	lw		r61, 8(r23)				# 5421
	lw		r9, 0(r61)				# 30014
	sw		r9, 0(r10)				# 30014
	lw		r9, 1(r61)				# 30052
	sw		r9, 1(r10)				# 30014
	lw		r9, 2(r61)				# 30092
	sw		r9, 2(r10)				# 30014
	cmpi	r28, 1
	beq		.b47749				# 30131
.b47750:
	cmpi	r28, 2
	beq		.b47764				# 30575
.b47765:
	cmpi	r28, 3
	beq		.b47766				# 30745
.b47767:
	cmpi	r28, 4
	beq		.b47768				# 31084
.b47748:
	addi	r26, r0, 0				# 24323
	lwx		r48, r13, r26				# 24323
	lw		r28, 0(r48)				# 24355
	cmpi	r28, -1
	beq		.b48066				# 24391
.b47782:
	cmpi	r28, 99
	beq		.b47950				# 24451
.b47785:
	lwx		r46, r30, r28				# 17557
	lw		r29, 0(r25)				# 17595
	lw		r9, 5(r46)				# 4475
	lw		r61, 0(r9)				# 17595
	fsub	r33, r29, r61				# 17586
	lw		r14, 1(r25)				# 17632
	lw		r61, 1(r9)				# 17632
	fsub	r53, r14, r61				# 17623
	lw		r19, 2(r25)				# 17669
	lw		r9, 2(r9)				# 17669
	fsub	r56, r19, r9				# 17660
	lwx		r42, r15, r28				# 17731
	lw		r17, 1(r46)				# 2994
	cmpi	r17, 1
	beq		.b47787				# 17793
.b47788:
	cmpi	r17, 2
	beq		.b47813				# 17874
.b47814:
	lw		r36, 0(r42)				# 17054
	fcmp	r36, r41
	beq		.b47949				# 3128
.b47818:
	lw		r61, 1(r42)				# 17128
	lw		r9, 2(r42)				# 17148
	fmul	r9, r9, r53				# 17128
	faddmul	r61, r61, r33, r9				# 17128
	lw		r9, 3(r42)				# 17168
	faddmul	r28, r9, r56, r61				# 17115
	fmul	r50, r33, r33				# 14374
	lw		r61, 4(r46)				# 3734
	lw		r12, 0(r61)				# 14374
	fmul	r9, r53, r53				# 14400
	lw		r1, 1(r61)				# 14400
	fmul	r9, r9, r1				# 14374
	faddmul	r50, r50, r12, r9				# 14374
	fmul	r9, r56, r56				# 14426
	lw		r61, 2(r61)				# 14426
	faddmul	r9, r9, r61, r50				# 14354
	lw		r61, 3(r46)				# 3553
	cmpi	r61, 0
	beq		.b47820				# 14456
.b47821:
	fmul	r61, r53, r56				# 14522
	lw		r12, 9(r46)				# 5989
	lw		r50, 0(r12)				# 14522
	faddmul	r50, r61, r50, r9				# 14503
	fmul	r61, r56, r33				# 14556
	lw		r9, 1(r12)				# 14556
	faddmul	r9, r61, r9, r50				# 14503
	fmul	r61, r33, r53				# 14590
	lw		r50, 2(r12)				# 14590
	faddmul	r9, r61, r50, r9				# 14503
	cmpi	r17, 3
	beq		.b47823				# 17239
.b47824:
.b47822:
	fmul	r61, r28, r28				# 17295
	fmul	r9, r36, r9				# 17295
	fsub	r61, r61, r9				# 17287
	fcmp	r61, r41
	ble		.b47949				# 3158
.b47826:
	lw		r9, 6(r46)				# 3372
	cmpi	r9, 0
	beq		.b47828				# 17353
.b47829:
	fsqrt	r9, r61				# 227
	fadd	r9, r28, r9				# 17394
	lw		r61, 4(r42)				# 17394
	fmul	r9, r9, r61				# 17375
	sw		r9, 0(r37)				# 17375
	lw		r9, 0(r37)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
.b47833:
	addi	r46, r0, 1				# 24006
	lwx		r9, r48, r46				# 24006
	cmpi	r9, -1
	beq		.b47949				# 24037
.b47837:
	lwx		r12, r51, r9				# 24078
	addi	r9, r0, 0				# 23266
	lwx		r28, r12, r9				# 23266
	cmpi	r28, -1
	beq		.b47945				# 23266
.b47841:
	lwx		r56, r30, r28				# 17557
	lw		r17, 5(r56)				# 4475
	lw		r61, 0(r17)				# 17595
	fsub	r36, r29, r61				# 17586
	lw		r61, 1(r17)				# 17632
	fsub	r53, r14, r61				# 17623
	lw		r61, 2(r17)				# 17669
	fsub	r1, r19, r61				# 17660
	lwx		r17, r15, r28				# 17731
	lw		r42, 1(r56)				# 2994
	cmpi	r42, 1
	beq		.b47843				# 17793
.b47844:
	cmpi	r42, 2
	beq		.b47869				# 17874
.b47870:
	lw		r59, 0(r17)				# 17054
	fcmp	r59, r41
	beq		.b47873				# 3128
.b47874:
	lw		r61, 1(r17)				# 17128
	lw		r28, 2(r17)				# 17148
	fmul	r28, r28, r53				# 17128
	faddmul	r61, r61, r36, r28				# 17128
	lw		r28, 3(r17)				# 17168
	faddmul	r50, r28, r1, r61				# 17115
	fmul	r28, r36, r36				# 14374
	lw		r47, 4(r56)				# 3734
	lw		r27, 0(r47)				# 14374
	fmul	r33, r53, r53				# 14400
	lw		r61, 1(r47)				# 14400
	fmul	r61, r33, r61				# 14374
	faddmul	r33, r28, r27, r61				# 14374
	fmul	r28, r1, r1				# 14426
	lw		r61, 2(r47)				# 14426
	faddmul	r61, r28, r61, r33				# 14354
	lw		r28, 3(r56)				# 3553
	cmpi	r28, 0
	beq		.b47876				# 14456
.b47877:
	fmul	r28, r53, r1				# 14522
	lw		r33, 9(r56)				# 5989
	lw		r27, 0(r33)				# 14522
	faddmul	r28, r28, r27, r61				# 14503
	fmul	r61, r1, r36				# 14556
	lw		r1, 1(r33)				# 14556
	faddmul	r1, r61, r1, r28				# 14503
	fmul	r61, r36, r53				# 14590
	lw		r28, 2(r33)				# 14590
	faddmul	r61, r61, r28, r1				# 14503
	cmpi	r42, 3
	beq		.b47879				# 17239
.b47880:
.b47878:
	fmul	r28, r50, r50				# 17295
	fmul	r61, r59, r61				# 17295
	fsub	r28, r28, r61				# 17287
	fcmp	r28, r41
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
	sw		r61, 0(r37)				# 17375
	lw		r28, 0(r37)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r28
	ble		.b47891				# 3098
.b47892:
	addis	r61, r0, 15395
	ori		r61, r61, 55050				# 23524
	fadd	r28, r28, r61				# 23516
	lw		r61, 0(r54)				# 23554
	faddmul	r56, r61, r28, r29				# 23545
	lw		r61, 1(r54)				# 23613
	faddmul	r27, r61, r28, r14				# 23604
	lw		r61, 2(r54)				# 23672
	faddmul	r47, r61, r28, r19				# 23663
	addi	r28, r0, 0				# 23025
	lwx		r61, r12, r28				# 23025
	cmpi	r61, -1
	beq		.b47950				# 23052
.b47898:
	lwx		r50, r30, r61				# 23095
	lw		r17, 5(r50)				# 4475
	lw		r61, 0(r17)				# 22709
	fsub	r53, r56, r61				# 22700
	lw		r61, 1(r17)				# 22741
	fsub	r1, r27, r61				# 22732
	lw		r61, 2(r17)				# 22773
	fsub	r42, r47, r61				# 22764
	lw		r33, 1(r50)				# 2994
	cmpi	r33, 1
	beq		.b47900				# 22824
.b47901:
	cmpi	r33, 2
	beq		.b47913				# 22882
.b47914:
	fmul	r35, r53, r53				# 14374
	lw		r59, 4(r50)				# 3734
	lw		r17, 0(r59)				# 14374
	fmul	r36, r1, r1				# 14400
	lw		r61, 1(r59)				# 14400
	fmul	r61, r36, r61				# 14374
	faddmul	r61, r35, r17, r61				# 14374
	fmul	r17, r42, r42				# 14426
	lw		r36, 2(r59)				# 14426
	faddmul	r61, r17, r36, r61				# 14354
	lw		r17, 3(r50)				# 3553
	cmpi	r17, 0
	beq		.b47926				# 14456
.b47927:
	fmul	r59, r1, r42				# 14522
	lw		r17, 9(r50)				# 5989
	lw		r36, 0(r17)				# 14522
	faddmul	r61, r59, r36, r61				# 14503
	fmul	r42, r42, r53				# 14556
	lw		r36, 1(r17)				# 14556
	faddmul	r42, r42, r36, r61				# 14503
	fmul	r53, r53, r1				# 14590
	lw		r61, 2(r17)				# 14590
	faddmul	r61, r53, r61, r42				# 14503
	cmpi	r33, 3
	beq		.b47929				# 22583
.b47930:
	lw		r17, 6(r50)				# 3372
	fcmp	r41, r61
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
	lwx		r28, r12, r9				# 23266
	cmpi	r28, -1
	beq		.b47945				# 23266
	b		.b47841
.b47945:
	addi	r46, r46, 1				# 24216
	lwx		r9, r48, r46				# 24006
	cmpi	r9, -1
	beq		.b47949				# 24037
	b		.b47837
.b47949:
	addi	r26, r26, 1				# 24896
	lwx		r48, r13, r26				# 24323
	lw		r28, 0(r48)				# 24355
	cmpi	r28, -1
	beq		.b48066				# 24391
	b		.b47782
.b48066:
	lw		r15, 0(r7)				# 1949
	lw		r61, 0(r54)				# 1949
	lw		r9, 1(r7)				# 1967
	lw		r28, 1(r54)				# 1967
	fmul	r9, r9, r28				# 1949
	faddmul	r61, r15, r61, r9				# 1949
	lw		r28, 2(r7)				# 1985
	lw		r9, 2(r54)				# 1985
	faddmul	r9, r28, r9, r61				# 35327
	fneg	r9, r9				# 35317
	fcmp	r9, r41
	ble		.b48069				# 3158
.b48070:
.b48068:
	fmul	r9, r2, r9				# 35442
	lw		r61, 7(r23)				# 5033
	lw		r61, 0(r61)				# 35442
	fmul	r61, r9, r61				# 35420
	lw		r28, 0(r62)				# 2129
	lw		r9, 0(r10)				# 2141
	faddmul	r9, r61, r9, r28				# 2117
	sw		r9, 0(r62)				# 2117
	lw		r9, 1(r62)				# 2171
	lw		r28, 1(r10)				# 2183
	faddmul	r9, r61, r28, r9				# 2159
	sw		r9, 1(r62)				# 2117
	lw		r9, 2(r62)				# 2213
	lw		r28, 2(r10)				# 2225
	faddmul	r9, r61, r28, r9				# 2201
	sw		r9, 2(r62)				# 2201
	blr				# 2201
.b48069:
	addi	r9, r0, 0				# 35406
	b		.b48068				# 35406
.b47941:
	addi	r28, r28, 1				# 23162
	lwx		r61, r12, r28				# 23025
	cmpi	r61, -1
	beq		.b47950				# 23052
	b		.b47898
.b47950:
	addi	r28, r0, 1				# 24006
	lwx		r9, r48, r28				# 24006
	cmpi	r9, -1
	beq		.b48064				# 24037
.b47954:
	lwx		r17, r51, r9				# 24078
	addi	r46, r0, 0				# 23266
	lwx		r14, r17, r46				# 23266
	cmpi	r14, -1
	beq		.b48062				# 23266
.b47958:
	lwx		r42, r30, r14				# 17557
	lw		r53, 0(r25)				# 17595
	lw		r19, 5(r42)				# 4475
	lw		r9, 0(r19)				# 17595
	fsub	r36, r53, r9				# 17586
	lw		r33, 1(r25)				# 17632
	lw		r9, 1(r19)				# 17632
	fsub	r29, r33, r9				# 17623
	lw		r61, 2(r25)				# 17669
	lw		r9, 2(r19)				# 17669
	fsub	r19, r61, r9				# 17660
	lwx		r56, r15, r14				# 17731
	lw		r27, 1(r42)				# 2994
	cmpi	r27, 1
	beq		.b47960				# 17793
.b47961:
	cmpi	r27, 2
	beq		.b47986				# 17874
.b47987:
	lw		r1, 0(r56)				# 17054
	fcmp	r1, r41
	beq		.b47990				# 3128
.b47991:
	lw		r9, 1(r56)				# 17128
	lw		r14, 2(r56)				# 17148
	fmul	r14, r14, r29				# 17128
	faddmul	r14, r9, r36, r14				# 17128
	lw		r9, 3(r56)				# 17168
	faddmul	r50, r9, r19, r14				# 17115
	fmul	r14, r36, r36				# 14374
	lw		r9, 4(r42)				# 3734
	lw		r59, 0(r9)				# 14374
	fmul	r12, r29, r29				# 14400
	lw		r47, 1(r9)				# 14400
	fmul	r12, r12, r47				# 14374
	faddmul	r12, r14, r59, r12				# 14374
	fmul	r14, r19, r19				# 14426
	lw		r9, 2(r9)				# 14426
	faddmul	r9, r14, r9, r12				# 14354
	lw		r14, 3(r42)				# 3553
	cmpi	r14, 0
	beq		.b47993				# 14456
.b47994:
	fmul	r12, r29, r19				# 14522
	lw		r14, 9(r42)				# 5989
	lw		r47, 0(r14)				# 14522
	faddmul	r12, r12, r47, r9				# 14503
	fmul	r19, r19, r36				# 14556
	lw		r9, 1(r14)				# 14556
	faddmul	r19, r19, r9, r12				# 14503
	fmul	r9, r36, r29				# 14590
	lw		r29, 2(r14)				# 14590
	faddmul	r9, r9, r29, r19				# 14503
	cmpi	r27, 3
	beq		.b47996				# 17239
.b47997:
.b47995:
	fmul	r19, r50, r50				# 17295
	fmul	r9, r1, r9				# 17295
	fsub	r9, r19, r9				# 17287
	fcmp	r9, r41
	ble		.b47998				# 3158
.b47999:
	lw		r19, 6(r42)				# 3372
	cmpi	r19, 0
	beq		.b48001				# 17353
.b48002:
	fsqrt	r9, r9				# 227
	fadd	r19, r50, r9				# 17394
	lw		r9, 4(r56)				# 17394
	fmul	r9, r19, r9				# 17375
	sw		r9, 0(r37)				# 17375
	lw		r9, 0(r37)				# 23423
	addis	r19, r0, 48716
	ori		r19, r19, 52429				# 23476
	fcmp	r19, r9
	ble		.b48008				# 3098
.b48009:
	addis	r19, r0, 15395
	ori		r19, r19, 55050				# 23524
	fadd	r19, r9, r19				# 23516
	lw		r9, 0(r54)				# 23554
	faddmul	r42, r9, r19, r53				# 23545
	lw		r9, 1(r54)				# 23613
	faddmul	r33, r9, r19, r33				# 23604
	lw		r9, 2(r54)				# 23672
	faddmul	r56, r9, r19, r61				# 23663
	addi	r61, r0, 0				# 23025
	lwx		r9, r17, r61				# 23025
	cmpi	r9, -1
	beq		.b48014				# 23052
.b48015:
	lwx		r1, r30, r9				# 23095
	lw		r9, 5(r1)				# 4475
	lw		r19, 0(r9)				# 22709
	fsub	r29, r42, r19				# 22700
	lw		r19, 1(r9)				# 22741
	fsub	r36, r33, r19				# 22732
	lw		r9, 2(r9)				# 22773
	fsub	r53, r56, r9				# 22764
	lw		r50, 1(r1)				# 2994
	cmpi	r50, 1
	beq		.b48017				# 22824
.b48018:
	cmpi	r50, 2
	beq		.b48030				# 22882
.b48031:
	fmul	r12, r29, r29				# 14374
	lw		r14, 4(r1)				# 3734
	lw		r19, 0(r14)				# 14374
	fmul	r9, r36, r36				# 14400
	lw		r27, 1(r14)				# 14400
	fmul	r9, r9, r27				# 14374
	faddmul	r9, r12, r19, r9				# 14374
	fmul	r19, r53, r53				# 14426
	lw		r14, 2(r14)				# 14426
	faddmul	r9, r19, r14, r9				# 14354
	lw		r19, 3(r1)				# 3553
	cmpi	r19, 0
	beq		.b48043				# 14456
.b48044:
	fmul	r19, r36, r53				# 14522
	lw		r12, 9(r1)				# 5989
	lw		r14, 0(r12)				# 14522
	faddmul	r14, r19, r14, r9				# 14503
	fmul	r19, r53, r29				# 14556
	lw		r9, 1(r12)				# 14556
	faddmul	r19, r19, r9, r14				# 14503
	fmul	r9, r29, r36				# 14590
	lw		r29, 2(r12)				# 14590
	faddmul	r9, r9, r29, r19				# 14503
	cmpi	r50, 3
	beq		.b48046				# 22583
.b48047:
	lw		r19, 6(r1)				# 3372
	fcmp	r41, r9
	ble		.b48049				# 3188
.b48050:
	addi	r9, r0, 1				# 3188
	cmpi	r19, 0
	beq		.b48052				# 765
.b48053:
	cmpi	r9, 0
	beq		.b48058				# 775
.b48060:
	addi	r46, r46, 1				# 23786
	lwx		r14, r17, r46				# 23266
	cmpi	r14, -1
	beq		.b48062				# 23266
	b		.b47958
.b48062:
	addi	r28, r28, 1				# 24216
	lwx		r9, r48, r28				# 24006
	cmpi	r9, -1
	beq		.b48064				# 24037
	b		.b47954
.b48064:
	addi	r26, r26, 1				# 24833
	lwx		r48, r13, r26				# 24323
	lw		r28, 0(r48)				# 24355
	cmpi	r28, -1
	beq		.b48066				# 24391
	b		.b47782
.b48058:
	addi	r61, r61, 1				# 23162
	lwx		r9, r17, r61				# 23025
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
	lw		r19, 6(r1)				# 3372
	fcmp	r41, r9
	ble		.b48049				# 3188
	b		.b48050
.b48043:
	cmpi	r50, 3
	beq		.b48046				# 22583
	b		.b48047
.b48030:
	lw		r19, 4(r1)				# 4293
	lw		r14, 0(r19)				# 2037
	lw		r9, 1(r19)				# 2052
	fmul	r9, r9, r36				# 2037
	faddmul	r29, r14, r29, r9				# 2037
	lw		r9, 2(r19)				# 2067
	faddmul	r9, r9, r53, r29				# 22411
	lw		r19, 6(r1)				# 3372
	fcmp	r41, r9
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
	fabs	r29, r29				# 322
	lw		r19, 4(r1)				# 3734
	lw		r9, 0(r19)				# 22178
	fcmp	r9, r29
	ble		.b48026				# 3098
.b48021:
	fabs	r29, r36				# 322
	lw		r9, 1(r19)				# 22224
	fcmp	r9, r29
	ble		.b48026				# 3098
.b48023:
	fabs	r29, r53				# 322
	lw		r9, 2(r19)				# 22261
	fcmp	r9, r29
	ble		.b48026				# 3098
.b48027:
	lw		r9, 6(r1)				# 3372
	cmpi	r9, 0
	beq		.b48058				# 23092
	b		.b48060
.b48026:
	lw		r9, 6(r1)				# 3372
	cmpi	r9, 0
	beq		.b48060				# 22348
	b		.b48058
.b48008:
	lw		r9, 6(r42)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
.b48011:
	addi	r46, r46, 1				# 23885
	lwx		r14, r17, r46				# 23266
	cmpi	r14, -1
	beq		.b48062				# 23266
	b		.b47958
.b48001:
	fsqrt	r9, r9				# 227
	fsub	r9, r50, r9				# 17458
	lw		r19, 4(r56)				# 17458
	fmul	r9, r9, r19				# 17439
	sw		r9, 0(r37)				# 17439
	lw		r9, 0(r37)				# 23423
	addis	r19, r0, 48716
	ori		r19, r19, 52429				# 23476
	fcmp	r19, r9
	ble		.b48008				# 3098
	b		.b48009
.b47998:
	lw		r9, 0(r37)				# 23423
	lw		r9, 6(r42)				# 3372
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
	lw		r9, 0(r37)				# 23423
	lw		r9, 6(r42)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
	b		.b48011
.b47986:
	lw		r9, 0(r56)				# 16870
	fcmp	r41, r9
	ble		.b47988				# 3188
.b47989:
	lw		r14, 1(r56)				# 16924
	lw		r9, 2(r56)				# 16944
	fmul	r9, r9, r29				# 16924
	faddmul	r9, r14, r36, r9				# 16924
	lw		r29, 3(r56)				# 16964
	faddmul	r9, r29, r19, r9				# 16899
	sw		r9, 0(r37)				# 16899
	lw		r9, 0(r37)				# 23423
	addis	r19, r0, 48716
	ori		r19, r19, 52429				# 23476
	fcmp	r19, r9
	ble		.b48008				# 3098
	b		.b48009
.b47988:
	lw		r9, 0(r37)				# 23423
	lw		r9, 6(r42)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
	b		.b48011
.b47960:
	lw		r9, 0(r56)				# 15996
	fsub	r9, r9, r36				# 15995
	lw		r14, 1(r56)				# 15995
	fmul	r12, r9, r14				# 15986
	lw		r50, 1(r57)				# 16056
	faddmul	r9, r12, r50, r29				# 16050
	fabs	r9, r9				# 322
	lw		r1, 4(r42)				# 3920
	lw		r59, 1(r1)				# 16043
	fcmp	r59, r9
	ble		.b47969				# 3098
.b47964:
	lw		r9, 2(r57)				# 16117
	faddmul	r9, r12, r9, r19				# 16111
	fabs	r27, r9				# 322
	lw		r9, 2(r1)				# 16104
	fcmp	r9, r27
	ble		.b47969				# 3098
.b47966:
	fcmp	r14, r41
	beq		.b47969				# 3128
.b47970:
	sw		r12, 0(r37)				# 16226
	lw		r9, 0(r37)				# 23423
	addis	r19, r0, 48716
	ori		r19, r19, 52429				# 23476
	fcmp	r19, r9
	ble		.b48008				# 3098
	b		.b48009
.b47969:
	lw		r9, 2(r56)				# 16269
	fsub	r9, r9, r29				# 16268
	lw		r47, 3(r56)				# 16268
	fmul	r9, r9, r47				# 16259
	lw		r12, 0(r57)				# 16330
	faddmul	r14, r9, r12, r36				# 16324
	fabs	r14, r14				# 322
	lw		r27, 0(r1)				# 16317
	fcmp	r27, r14
	ble		.b47978				# 3098
.b47973:
	lw		r14, 2(r57)				# 16391
	faddmul	r14, r9, r14, r19				# 16385
	fabs	r14, r14				# 322
	lw		r1, 2(r1)				# 16378
	fcmp	r1, r14
	ble		.b47978				# 3098
.b47975:
	fcmp	r47, r41
	beq		.b47978				# 3128
.b47979:
	sw		r9, 0(r37)				# 16500
	lw		r9, 0(r37)				# 23423
	addis	r19, r0, 48716
	ori		r19, r19, 52429				# 23476
	fcmp	r19, r9
	ble		.b48008				# 3098
	b		.b48009
.b47978:
	lw		r9, 4(r56)				# 16543
	fsub	r9, r9, r19				# 16542
	lw		r19, 5(r56)				# 16542
	fmul	r14, r9, r19				# 16533
	faddmul	r9, r14, r12, r36				# 16598
	fabs	r9, r9				# 322
	fcmp	r27, r9
	ble		.b47980				# 3098
.b47981:
	faddmul	r9, r14, r50, r29				# 16659
	fabs	r9, r9				# 322
	fcmp	r59, r9
	ble		.b47982				# 3098
.b47983:
	fcmp	r19, r41
	beq		.b47984				# 3128
.b47985:
	sw		r14, 0(r37)				# 16774
	lw		r9, 0(r37)				# 23423
	addis	r19, r0, 48716
	ori		r19, r19, 52429				# 23476
	fcmp	r19, r9
	ble		.b48008				# 3098
	b		.b48009
.b47984:
	lw		r9, 0(r37)				# 23423
	lw		r9, 6(r42)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
	b		.b48011
.b47982:
	lw		r9, 0(r37)				# 23423
	lw		r9, 6(r42)				# 3372
	cmpi	r9, 0
	beq		.b48062				# 23849
	b		.b48011
.b47980:
	lw		r9, 0(r37)				# 23423
	lw		r9, 6(r42)				# 3372
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
	lw		r17, 6(r50)				# 3372
	fcmp	r41, r61
	ble		.b47932				# 3188
	b		.b47933
.b47926:
	cmpi	r33, 3
	beq		.b47929				# 22583
	b		.b47930
.b47913:
	lw		r33, 4(r50)				# 4293
	lw		r61, 0(r33)				# 2037
	lw		r17, 1(r33)				# 2052
	fmul	r17, r17, r1				# 2037
	faddmul	r61, r61, r53, r17				# 2037
	lw		r17, 2(r33)				# 2067
	faddmul	r61, r17, r42, r61				# 22411
	lw		r17, 6(r50)				# 3372
	fcmp	r41, r61
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
	fabs	r17, r53				# 322
	lw		r53, 4(r50)				# 3734
	lw		r61, 0(r53)				# 22178
	fcmp	r61, r17
	ble		.b47909				# 3098
.b47904:
	fabs	r17, r1				# 322
	lw		r61, 1(r53)				# 22224
	fcmp	r61, r17
	ble		.b47909				# 3098
.b47906:
	fabs	r61, r42				# 322
	lw		r17, 2(r53)				# 22261
	fcmp	r17, r61
	ble		.b47909				# 3098
.b47910:
	lw		r61, 6(r50)				# 3372
	cmpi	r61, 0
	beq		.b47941				# 23092
	b		.b47943
.b47909:
	lw		r61, 6(r50)				# 3372
	cmpi	r61, 0
	beq		.b47943				# 22348
	b		.b47941
.b47891:
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
.b47894:
	addi	r9, r9, 1				# 23885
	lwx		r28, r12, r9				# 23266
	cmpi	r28, -1
	beq		.b47945				# 23266
	b		.b47841
.b47884:
	fsqrt	r61, r28				# 227
	fsub	r61, r50, r61				# 17458
	lw		r28, 4(r17)				# 17458
	fmul	r61, r61, r28				# 17439
	sw		r61, 0(r37)				# 17439
	lw		r28, 0(r37)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r28
	ble		.b47891				# 3098
	b		.b47892
.b47881:
	lw		r28, 0(r37)				# 23423
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
	lw		r28, 0(r37)				# 23423
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
	b		.b47894
.b47869:
	lw		r61, 0(r17)				# 16870
	fcmp	r41, r61
	ble		.b47871				# 3188
.b47872:
	lw		r28, 1(r17)				# 16924
	lw		r61, 2(r17)				# 16944
	fmul	r61, r61, r53				# 16924
	faddmul	r28, r28, r36, r61				# 16924
	lw		r61, 3(r17)				# 16964
	faddmul	r61, r61, r1, r28				# 16899
	sw		r61, 0(r37)				# 16899
	lw		r28, 0(r37)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r28
	ble		.b47891				# 3098
	b		.b47892
.b47871:
	lw		r28, 0(r37)				# 23423
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
	b		.b47894
.b47843:
	lw		r61, 0(r17)				# 15996
	fsub	r61, r61, r36				# 15995
	lw		r42, 1(r17)				# 15995
	fmul	r33, r61, r42				# 15986
	lw		r47, 1(r57)				# 16056
	faddmul	r61, r33, r47, r53				# 16050
	fabs	r61, r61				# 322
	lw		r50, 4(r56)				# 3920
	lw		r35, 1(r50)				# 16043
	fcmp	r35, r61
	ble		.b47852				# 3098
.b47847:
	lw		r61, 2(r57)				# 16117
	faddmul	r61, r33, r61, r1				# 16111
	fabs	r28, r61				# 322
	lw		r61, 2(r50)				# 16104
	fcmp	r61, r28
	ble		.b47852				# 3098
.b47849:
	fcmp	r42, r41
	beq		.b47852				# 3128
.b47853:
	sw		r33, 0(r37)				# 16226
	lw		r28, 0(r37)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r28
	ble		.b47891				# 3098
	b		.b47892
.b47852:
	lw		r61, 2(r17)				# 16269
	fsub	r61, r61, r53				# 16268
	lw		r28, 3(r17)				# 16268
	fmul	r27, r61, r28				# 16259
	lw		r33, 0(r57)				# 16330
	faddmul	r61, r27, r33, r36				# 16324
	fabs	r61, r61				# 322
	lw		r42, 0(r50)				# 16317
	fcmp	r42, r61
	ble		.b47861				# 3098
.b47856:
	lw		r61, 2(r57)				# 16391
	faddmul	r61, r27, r61, r1				# 16385
	fabs	r59, r61				# 322
	lw		r61, 2(r50)				# 16378
	fcmp	r61, r59
	ble		.b47861				# 3098
.b47858:
	fcmp	r28, r41
	beq		.b47861				# 3128
.b47862:
	sw		r27, 0(r37)				# 16500
	lw		r28, 0(r37)				# 23423
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
	faddmul	r61, r28, r33, r36				# 16598
	fabs	r61, r61				# 322
	fcmp	r42, r61
	ble		.b47863				# 3098
.b47864:
	faddmul	r61, r28, r47, r53				# 16659
	fabs	r61, r61				# 322
	fcmp	r35, r61
	ble		.b47865				# 3098
.b47866:
	fcmp	r17, r41
	beq		.b47867				# 3128
.b47868:
	sw		r28, 0(r37)				# 16774
	lw		r28, 0(r37)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r28
	ble		.b47891				# 3098
	b		.b47892
.b47867:
	lw		r28, 0(r37)				# 23423
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
	b		.b47894
.b47865:
	lw		r28, 0(r37)				# 23423
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
	b		.b47894
.b47863:
	lw		r28, 0(r37)				# 23423
	lw		r61, 6(r56)				# 3372
	cmpi	r61, 0
	beq		.b47945				# 23849
	b		.b47894
.b47828:
	fsqrt	r9, r61				# 227
	fsub	r9, r28, r9				# 17458
	lw		r61, 4(r42)				# 17458
	fmul	r9, r9, r61				# 17439
	sw		r9, 0(r37)				# 17439
	lw		r9, 0(r37)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
	b		.b47833
.b47823:
	addis	r61, r0, 16256				# 17260
	fsub	r9, r9, r61				# 17260
	b		.b47822				# 17260
.b47820:
	cmpi	r17, 3
	beq		.b47823				# 17239
	b		.b47824
.b47813:
	lw		r9, 0(r42)				# 16870
	fcmp	r41, r9
	ble		.b47949				# 3188
.b47816:
	lw		r9, 1(r42)				# 16924
	lw		r61, 2(r42)				# 16944
	fmul	r61, r61, r53				# 16924
	faddmul	r61, r9, r33, r61				# 16924
	lw		r9, 3(r42)				# 16964
	faddmul	r9, r9, r56, r61				# 16899
	sw		r9, 0(r37)				# 16899
	lw		r9, 0(r37)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
	b		.b47833
.b47787:
	lw		r9, 0(r42)				# 15996
	fsub	r9, r9, r33				# 15995
	lw		r61, 1(r42)				# 15995
	fmul	r28, r9, r61				# 15986
	lw		r1, 1(r57)				# 16056
	faddmul	r9, r28, r1, r53				# 16050
	fabs	r9, r9				# 322
	lw		r50, 4(r46)				# 3920
	lw		r46, 1(r50)				# 16043
	fcmp	r46, r9
	ble		.b47796				# 3098
.b47791:
	lw		r9, 2(r57)				# 16117
	faddmul	r9, r28, r9, r56				# 16111
	fabs	r9, r9				# 322
	lw		r17, 2(r50)				# 16104
	fcmp	r17, r9
	ble		.b47796				# 3098
.b47793:
	fcmp	r61, r41
	beq		.b47796				# 3128
.b47797:
	sw		r28, 0(r37)				# 16226
	lw		r9, 0(r37)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
	b		.b47833
.b47796:
	lw		r9, 2(r42)				# 16269
	fsub	r9, r9, r53				# 16268
	lw		r61, 3(r42)				# 16268
	fmul	r28, r9, r61				# 16259
	lw		r17, 0(r57)				# 16330
	faddmul	r9, r28, r17, r33				# 16324
	fabs	r9, r9				# 322
	lw		r12, 0(r50)				# 16317
	fcmp	r12, r9
	ble		.b47805				# 3098
.b47800:
	lw		r9, 2(r57)				# 16391
	faddmul	r9, r28, r9, r56				# 16385
	fabs	r36, r9				# 322
	lw		r9, 2(r50)				# 16378
	fcmp	r9, r36
	ble		.b47805				# 3098
.b47802:
	fcmp	r61, r41
	beq		.b47805				# 3128
.b47806:
	sw		r28, 0(r37)				# 16500
	lw		r9, 0(r37)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
	b		.b47833
.b47805:
	lw		r9, 4(r42)				# 16543
	fsub	r9, r9, r56				# 16542
	lw		r28, 5(r42)				# 16542
	fmul	r9, r9, r28				# 16533
	faddmul	r61, r9, r17, r33				# 16598
	fabs	r61, r61				# 322
	fcmp	r12, r61
	ble		.b47949				# 3098
.b47808:
	faddmul	r61, r9, r1, r53				# 16659
	fabs	r61, r61				# 322
	fcmp	r46, r61
	ble		.b47949				# 3098
.b47810:
	fcmp	r28, r41
	beq		.b47949				# 3128
.b47812:
	sw		r9, 0(r37)				# 16774
	lw		r9, 0(r37)				# 24609
	fcmp	r39, r9
	ble		.b47949				# 3098
	b		.b47833
.b47768:
	lw		r9, 0(r25)				# 31118
	lw		r19, 5(r23)				# 4475
	lw		r61, 0(r19)				# 31118
	fsub	r28, r9, r61				# 31117
	lw		r9, 4(r23)				# 3734
	lw		r61, 0(r9)				# 31144
	fsqrt	r61, r61				# 227
	fmul	r46, r28, r61				# 31108
	lw		r61, 2(r25)				# 31181
	lw		r28, 2(r19)				# 31181
	fsub	r28, r61, r28				# 31180
	lw		r61, 2(r9)				# 31207
	fsqrt	r61, r61				# 227
	fmul	r28, r28, r61				# 31171
	fmul	r61, r28, r28				# 31243
	faddmul	r26, r46, r46, r61				# 31234
	fabs	r61, r46				# 322
	addis	r29, r0, 14545
	ori		r29, r29, 46871				# 31291
	fcmp	r29, r61
	ble		.b47771				# 3098
.b47772:
	addis	r28, r0, 16752				# 31320
.b47770:
	ffloor	r61, r28				# 765
	fsub	r61, r28, r61				# 31412
	lw		r28, 1(r25)				# 31456
	lw		r46, 1(r19)				# 31456
	fsub	r28, r28, r46				# 31455
	lw		r9, 1(r9)				# 31482
	fsqrt	r9, r9				# 227
	fmul	r28, r28, r9				# 31446
	fabs	r9, r26				# 322
	fcmp	r29, r9
	ble		.b47774				# 3098
.b47775:
	addis	r9, r0, 16752				# 31556
.b47773:
	ffloor	r28, r9				# 765
	fsub	r26, r9, r28				# 31646
	addis	r28, r0, 15897
	ori		r28, r28, 39322				# 31690
	addis	r46, r0, 16128				# 31705
	fsub	r9, r46, r61				# 31699
	fmul	r9, r9, r9				# 31690
	fsub	r61, r28, r9				# 31690
	fsub	r9, r46, r26				# 31721
	fmul	r9, r9, r9				# 31690
	fsub	r9, r61, r9				# 31680
	fcmp	r41, r9
	ble		.b47777				# 3188
.b47778:
	addi	r9, r0, 0				# 31776
.b47776:
	fmul	r9, r48, r9				# 31817
	addis	r61, r0, 16025
	ori		r61, r61, 39322				# 31817
	fdiv	r9, r9, r61				# 31796
	sw		r9, 2(r10)				# 31796
	b		.b47748				# 31796
.b47777:
	b		.b47776				# 31785
.b47774:
	fdiv	r9, r28, r26				# 31582
	fabs	r9, r9				# 322
	fatan	r9, r9				# 440
	addis	r28, r0, 16880				# 31603
	fmul	r28, r9, r28				# 31602
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 31602
	fdiv	r9, r28, r9				# 31602
	b		.b47773				# 31602
.b47771:
	fdiv	r61, r28, r46				# 31347
	fabs	r61, r61				# 322
	fatan	r28, r61				# 440
	addis	r61, r0, 16880				# 31369
	fmul	r61, r28, r61				# 31368
	addis	r28, r0, 16457
	ori		r28, r28, 4059				# 31368
	fdiv	r28, r61, r28				# 31368
	b		.b47770				# 31368
.b47766:
	lw		r61, 0(r25)				# 30784
	lw		r28, 5(r23)				# 4475
	lw		r9, 0(r28)				# 30784
	fsub	r61, r61, r9				# 30775
	lw		r9, 2(r25)				# 30823
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
	sw		r9, 1(r10)				# 30987
	addis	r9, r0, 16256				# 31050
	fsub	r9, r9, r61				# 31049
	fmul	r9, r9, r48				# 31028
	sw		r9, 2(r10)				# 31028
	b		.b47748				# 31028
.b47764:
	lw		r9, 1(r25)				# 30625
	addis	r61, r0, 16000				# 30625
	fmul	r9, r9, r61				# 30620
	fsin	r9, r9				# 40
	fmul	r61, r9, r9				# 30605
	fmul	r9, r48, r61				# 30650
	sw		r9, 0(r10)				# 30650
	addis	r9, r0, 16256				# 30721
	fsub	r9, r9, r61				# 30711
	fmul	r9, r48, r9				# 30690
	sw		r9, 1(r10)				# 30690
	b		.b47748				# 30690
.b47749:
	lw		r61, 0(r25)				# 30169
	lw		r46, 5(r23)				# 4475
	lw		r9, 0(r46)				# 30169
	fsub	r9, r61, r9				# 30160
	addis	r19, r0, 15692
	ori		r19, r19, 52429				# 30234
	fmul	r61, r9, r19				# 30227
	ffloor	r61, r61				# 765
	addis	r28, r0, 16800				# 30226
	fmul	r61, r61, r28				# 30217
	fsub	r9, r9, r61				# 30264
	addis	r26, r0, 16672				# 30264
	fcmp	r26, r9
	ble		.b47752				# 3098
.b47753:
	addi	r48, r0, 1				# 3098
.b47751:
	lw		r9, 2(r25)				# 30308
	lw		r61, 2(r46)				# 30308
	fsub	r9, r9, r61				# 30299
	fmul	r61, r9, r19				# 30366
	ffloor	r61, r61				# 765
	fmul	r61, r61, r28				# 30356
	fsub	r9, r9, r61				# 30404
	fcmp	r26, r9
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
	sw		r9, 1(r10)				# 30439
	b		.b47748				# 30439
.b47762:
	addi	r9, r0, 0				# 30514
	sw		r9, 1(r10)				# 30439
	b		.b47748				# 30439
.b47758:
	cmpi	r9, 0
	beq		.b47760				# 30532
.b47761:
	addi	r9, r0, 0				# 30546
	sw		r9, 1(r10)				# 30439
	b		.b47748				# 30439
.b47760:
	addis	r9, r0, 17279				# 30555
	sw		r9, 1(r10)				# 30439
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
	fdiv	r61, r61, r19				# 1837
	b		.b47743				# 1837
.b47744:
	addis	r61, r0, 16256				# 1801
	b		.b47743				# 1801
.b47741:
	sw		r28, 0(r7)				# 29409
	sw		r61, 1(r7)				# 29409
	sw		r29, 2(r7)				# 29455
	b		.b47740				# 29455
.b47738:
	lw		r9, 4(r23)				# 3734
	lw		r61, 0(r9)				# 28996
	fneg	r61, r61				# 28981
	sw		r61, 0(r7)				# 28981
	lw		r61, 1(r9)				# 29034
	fneg	r61, r61				# 29019
	sw		r61, 1(r7)				# 28981
	lw		r9, 2(r9)				# 29071
	fneg	r9, r9				# 29056
	sw		r9, 2(r7)				# 29056
	b		.b47730				# 29056
.b47731:
	lw		r9, 0(r19)				# 28828
	sw		r41, 0(r7)				# 1232
	sw		r41, 1(r7)				# 1232
	sw		r41, 2(r7)				# 28868
	addi	r28, r9, -1				# 28888
	lwx		r9, r61, r28				# 28918
	fcmp	r9, r41
	beq		.b47734				# 3128
.b47735:
	fcmp	r9, r41
	ble		.b47736				# 3158
.b47737:
	addis	r9, r0, 16256				# 856
	fneg	r9, r9				# 28888
	swx		r9, r28, r7				# 28888
	b		.b47730				# 28888
.b47736:
	addis	r9, r0, 49024				# 868
	fneg	r9, r9				# 28888
	swx		r9, r28, r7				# 28888
	b		.b47730				# 28888
.b47734:
	addi	r9, r0, 0				# 828
	fneg	r9, r9				# 28888
	swx		r9, r28, r7				# 28888
	b		.b47730				# 28888
.b47728:
	blr				# 35510
.b47726:
	blr				# 35510
.b47722:
	addi	r28, r28, 1				# 23162
	lwx		r61, r33, r28				# 23025
	cmpi	r61, -1
	beq		.b47725				# 23052
	b		.b47679
.b47725:
	sw		r27, 0(r23)				# 27393
	sw		r53, 0(r25)				# 1162
	sw		r47, 1(r25)				# 1162
	sw		r59, 2(r25)				# 27393
	sw		r56, 0(r29)				# 27393
	sw		r36, 0(r19)				# 27485
	b		.b47671				# 27485
.b47716:
	cmpi	r61, 0
	beq		.b47671				# 22625
	b		.b47722
.b47713:
	addi	r61, r0, 0				# 3188
	cmpi	r50, 0
	beq		.b47716				# 765
	b		.b47717
.b47710:
	addis	r50, r0, 16256				# 22604
	fsub	r61, r61, r50				# 22604
	lw		r50, 6(r20)				# 3372
	fcmp	r41, r61
	ble		.b47713				# 3188
	b		.b47714
.b47707:
	cmpi	r50, 3
	beq		.b47710				# 22583
	b		.b47711
.b47694:
	lw		r12, 4(r20)				# 4293
	lw		r50, 0(r12)				# 2037
	lw		r61, 1(r12)				# 2052
	fmul	r61, r61, r8				# 2037
	faddmul	r61, r50, r35, r61				# 2037
	lw		r50, 2(r12)				# 2067
	faddmul	r61, r50, r49, r61				# 22411
	lw		r50, 6(r20)				# 3372
	fcmp	r41, r61
	ble		.b47697				# 3188
.b47698:
	addi	r61, r0, 1				# 3188
	cmpi	r50, 0
	beq		.b47700				# 765
.b47701:
	cmpi	r61, 0
	beq		.b47722				# 775
	b		.b47671
.b47700:
	cmpi	r61, 0
	beq		.b47671				# 22459
	b		.b47722
.b47697:
	addi	r61, r0, 0				# 3188
	cmpi	r50, 0
	beq		.b47700				# 765
	b		.b47701
.b47681:
	fabs	r61, r35				# 322
	lw		r12, 4(r20)				# 3734
	lw		r50, 0(r12)				# 22178
	fcmp	r50, r61
	ble		.b47690				# 3098
.b47685:
	fabs	r50, r8				# 322
	lw		r61, 1(r12)				# 22224
	fcmp	r61, r50
	ble		.b47690				# 3098
.b47687:
	fabs	r61, r49				# 322
	lw		r50, 2(r12)				# 22261
	fcmp	r50, r61
	ble		.b47690				# 3098
.b47691:
	lw		r61, 6(r20)				# 3372
	cmpi	r61, 0
	beq		.b47722				# 23092
	b		.b47671
.b47690:
	lw		r61, 6(r20)				# 3372
	cmpi	r61, 0
	beq		.b47671				# 22348
	b		.b47722
.b47665:
	fsqrt	r61, r61				# 227
	fsub	r28, r12, r61				# 18540
	lw		r61, 4(r59)				# 18540
	fmul	r61, r28, r61				# 18521
	sw		r61, 0(r37)				# 18521
	addi	r36, r0, 1				# 18580
	lw		r61, 0(r37)				# 27058
	fcmp	r61, r41
	ble		.b47671				# 3098
	b		.b47673
.b47667:
	lw		r61, 6(r50)				# 3372
	cmpi	r61, 0
	beq		.b47625				# 27653
.b47670:
	addi	r46, r46, 1				# 27691
	lw		r42, 0(r1)				# 8078
	lwx		r56, r33, r46				# 26915
	cmpi	r56, -1
	beq		.b47625				# 26952
	b		.b47628
.b47656:
	lw		r61, 0(r59)				# 18051
	fcmp	r41, r61
	ble		.b47667				# 3188
.b47659:
	lw		r28, 3(r27)				# 18099
	fmul	r61, r61, r28				# 18080
	sw		r61, 0(r37)				# 18080
	addi	r36, r0, 1				# 18129
	lw		r61, 0(r37)				# 27058
	fcmp	r61, r41
	ble		.b47671				# 3098
	b		.b47673
.b47630:
	lw		r61, 0(r59)				# 15996
	fsub	r61, r61, r28				# 15995
	lw		r53, 1(r59)				# 15995
	fmul	r35, r61, r53				# 15986
	lw		r47, 1(r42)				# 16056
	faddmul	r61, r35, r47, r20				# 16050
	fabs	r61, r61				# 322
	lw		r27, 4(r50)				# 3920
	lw		r36, 1(r27)				# 16043
	fcmp	r36, r61
	ble		.b47639				# 3098
.b47634:
	lw		r61, 2(r42)				# 16117
	faddmul	r61, r35, r61, r12				# 16111
	fabs	r44, r61				# 322
	lw		r61, 2(r27)				# 16104
	fcmp	r61, r44
	ble		.b47639				# 3098
.b47636:
	fcmp	r53, r41
	beq		.b47639				# 3128
.b47640:
	sw		r35, 0(r37)				# 16226
	addi	r36, r0, 1				# 16249
	lw		r61, 0(r37)				# 27058
	fcmp	r61, r41
	ble		.b47671				# 3098
	b		.b47673
.b47639:
	lw		r61, 2(r59)				# 16269
	fsub	r61, r61, r20				# 16268
	lw		r38, 3(r59)				# 16268
	fmul	r61, r61, r38				# 16259
	lw		r35, 0(r42)				# 16330
	faddmul	r53, r61, r35, r28				# 16324
	fabs	r53, r53				# 322
	lw		r44, 0(r27)				# 16317
	fcmp	r44, r53
	ble		.b47648				# 3098
.b47643:
	lw		r53, 2(r42)				# 16391
	faddmul	r53, r61, r53, r12				# 16385
	fabs	r53, r53				# 322
	lw		r27, 2(r27)				# 16378
	fcmp	r27, r53
	ble		.b47648				# 3098
.b47645:
	fcmp	r38, r41
	beq		.b47648				# 3128
.b47649:
	sw		r61, 0(r37)				# 16500
	addi	r36, r0, 2				# 16523
	lw		r61, 0(r37)				# 27058
	fcmp	r61, r41
	ble		.b47671				# 3098
	b		.b47673
.b47648:
	lw		r61, 4(r59)				# 16543
	fsub	r12, r61, r12				# 16542
	lw		r61, 5(r59)				# 16542
	fmul	r12, r12, r61				# 16533
	faddmul	r28, r12, r35, r28				# 16598
	fabs	r28, r28				# 322
	fcmp	r44, r28
	ble		.b47667				# 3098
.b47651:
	faddmul	r28, r12, r47, r20				# 16659
	fabs	r28, r28				# 322
	fcmp	r36, r28
	ble		.b47667				# 3098
.b47653:
	fcmp	r61, r41
	beq		.b47667				# 3128
.b47655:
	sw		r12, 0(r37)				# 16774
	addi	r36, r0, 3				# 16797
	lw		r61, 0(r37)				# 27058
	fcmp	r61, r41
	ble		.b47671				# 3098
	b		.b47673
.b47616:
	fsqrt	r9, r9				# 227
	fsub	r9, r61, r9				# 18540
	lw		r61, 4(r42)				# 18540
	fmul	r9, r9, r61				# 18521
	sw		r9, 0(r37)				# 18521
	lw		r61, 0(r37)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r61
	ble		.b47473				# 3098
	b		.b47621
.b47607:
	lw		r61, 0(r42)				# 18051
	fcmp	r41, r61
	ble		.b47473				# 3188
.b47610:
	lw		r9, 3(r9)				# 18099
	fmul	r9, r61, r9				# 18080
	sw		r9, 0(r37)				# 18080
	lw		r61, 0(r37)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r61
	ble		.b47473				# 3098
	b		.b47621
.b47581:
	lw		r33, 0(r1)				# 8078
	lw		r9, 0(r42)				# 15996
	fsub	r9, r9, r56				# 15995
	lw		r53, 1(r42)				# 15995
	fmul	r28, r9, r53				# 15986
	lw		r61, 1(r33)				# 16056
	faddmul	r9, r28, r61, r27				# 16050
	fabs	r9, r9				# 322
	lw		r50, 4(r46)				# 3920
	lw		r46, 1(r50)				# 16043
	fcmp	r46, r9
	ble		.b47590				# 3098
.b47585:
	lw		r9, 2(r33)				# 16117
	faddmul	r9, r28, r9, r36				# 16111
	fabs	r9, r9				# 322
	lw		r12, 2(r50)				# 16104
	fcmp	r12, r9
	ble		.b47590				# 3098
.b47587:
	fcmp	r53, r41
	beq		.b47590				# 3128
.b47591:
	sw		r28, 0(r37)				# 16226
	lw		r61, 0(r37)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r61
	ble		.b47473				# 3098
	b		.b47621
.b47590:
	lw		r9, 2(r42)				# 16269
	fsub	r9, r9, r27				# 16268
	lw		r47, 3(r42)				# 16268
	fmul	r53, r9, r47				# 16259
	lw		r12, 0(r33)				# 16330
	faddmul	r9, r53, r12, r56				# 16324
	fabs	r9, r9				# 322
	lw		r28, 0(r50)				# 16317
	fcmp	r28, r9
	ble		.b47599				# 3098
.b47594:
	lw		r9, 2(r33)				# 16391
	faddmul	r9, r53, r9, r36				# 16385
	fabs	r9, r9				# 322
	lw		r50, 2(r50)				# 16378
	fcmp	r50, r9
	ble		.b47599				# 3098
.b47596:
	fcmp	r47, r41
	beq		.b47599				# 3128
.b47600:
	sw		r53, 0(r37)				# 16500
	lw		r61, 0(r37)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r61
	ble		.b47473				# 3098
	b		.b47621
.b47599:
	lw		r9, 4(r42)				# 16543
	fsub	r50, r9, r36				# 16542
	lw		r9, 5(r42)				# 16542
	fmul	r53, r50, r9				# 16533
	faddmul	r50, r53, r12, r56				# 16598
	fabs	r50, r50				# 322
	fcmp	r28, r50
	ble		.b47473				# 3098
.b47602:
	faddmul	r61, r53, r61, r27				# 16659
	fabs	r61, r61				# 322
	fcmp	r46, r61
	ble		.b47473				# 3098
.b47604:
	fcmp	r9, r41
	beq		.b47473				# 3128
.b47606:
	sw		r53, 0(r37)				# 16774
	lw		r61, 0(r37)				# 28381
	lw		r9, 0(r23)				# 28414
	fcmp	r9, r61
	ble		.b47473				# 3098
	b		.b47621
.b47474:
	addi	r28, r0, 1				# 27829
	lwx		r9, r14, r28				# 27829
	cmpi	r9, -1
	beq		.b47473				# 27860
.b47478:
	lwx		r53, r51, r9				# 27885
	addi	r61, r0, 0				# 26885
	lw		r47, 0(r1)				# 8078
	lwx		r33, r53, r61				# 26915
	cmpi	r33, -1
	beq		.b47479				# 26952
.b47482:
	lwx		r59, r30, r33				# 18636
	lw		r17, 10(r59)				# 6561
	lw		r35, 0(r17)				# 18698
	lw		r46, 1(r17)				# 18723
	lw		r27, 2(r17)				# 18748
	lw		r9, 1(r1)				# 8141
	lwx		r56, r9, r33				# 18807
	lw		r9, 1(r59)				# 2994
	cmpi	r9, 1
	beq		.b47484				# 18869
.b47485:
	cmpi	r9, 2
	beq		.b47510				# 18950
.b47511:
	lw		r12, 0(r56)				# 18204
	fcmp	r12, r41
	beq		.b47521				# 3128
.b47515:
	lw		r50, 1(r56)				# 18278
	lw		r9, 2(r56)				# 18298
	fmul	r9, r9, r46				# 18278
	faddmul	r9, r50, r35, r9				# 18278
	lw		r46, 3(r56)				# 18318
	faddmul	r50, r46, r27, r9				# 18265
	lw		r9, 3(r17)				# 18342
	fmul	r46, r50, r50				# 18377
	fmul	r9, r12, r9				# 18377
	fsub	r9, r46, r9				# 18369
	fcmp	r9, r41
	ble		.b47521				# 3158
.b47517:
	lw		r46, 6(r59)				# 3372
	cmpi	r46, 0
	beq		.b47519				# 18435
.b47520:
	fsqrt	r9, r9				# 227
	fadd	r9, r50, r9				# 18476
	lw		r46, 4(r56)				# 18476
	fmul	r9, r9, r46				# 18457
	sw		r9, 0(r37)				# 18457
	addi	r12, r0, 1				# 18580
	lw		r9, 0(r37)				# 27058
	fcmp	r9, r41
	ble		.b47525				# 3098
.b47527:
	lw		r46, 0(r23)				# 27125
	fcmp	r46, r9
	ble		.b47525				# 3098
.b47529:
	addis	r46, r0, 15395
	ori		r46, r46, 55050				# 27169
	fadd	r56, r9, r46				# 27161
	lw		r9, 0(r47)				# 27198
	lw		r46, 0(r39)				# 27198
	faddmul	r27, r9, r56, r46				# 27189
	lw		r46, 1(r47)				# 27247
	lw		r9, 1(r39)				# 27247
	faddmul	r59, r46, r56, r9				# 27238
	lw		r9, 2(r47)				# 27296
	lw		r46, 2(r39)				# 27296
	faddmul	r47, r9, r56, r46				# 27287
	addi	r46, r0, 0				# 23025
	lwx		r9, r53, r46				# 23025
	cmpi	r9, -1
	beq		.b47579				# 23052
.b47533:
	lwx		r35, r30, r9				# 23095
	lw		r17, 5(r35)				# 4475
	lw		r9, 0(r17)				# 22709
	fsub	r42, r27, r9				# 22700
	lw		r9, 1(r17)				# 22741
	fsub	r20, r59, r9				# 22732
	lw		r9, 2(r17)				# 22773
	fsub	r50, r47, r9				# 22764
	lw		r44, 1(r35)				# 2994
	cmpi	r44, 1
	beq		.b47535				# 22824
.b47536:
	cmpi	r44, 2
	beq		.b47548				# 22882
.b47549:
	fmul	r36, r42, r42				# 14374
	lw		r17, 4(r35)				# 3734
	lw		r38, 0(r17)				# 14374
	fmul	r9, r20, r20				# 14400
	lw		r49, 1(r17)				# 14400
	fmul	r9, r9, r49				# 14374
	faddmul	r36, r36, r38, r9				# 14374
	fmul	r9, r50, r50				# 14426
	lw		r17, 2(r17)				# 14426
	faddmul	r9, r9, r17, r36				# 14354
	lw		r17, 3(r35)				# 3553
	cmpi	r17, 0
	beq		.b47561				# 14456
.b47562:
	fmul	r17, r20, r50				# 14522
	lw		r38, 9(r35)				# 5989
	lw		r36, 0(r38)				# 14522
	faddmul	r9, r17, r36, r9				# 14503
	fmul	r50, r50, r42				# 14556
	lw		r17, 1(r38)				# 14556
	faddmul	r17, r50, r17, r9				# 14503
	fmul	r9, r42, r20				# 14590
	lw		r50, 2(r38)				# 14590
	faddmul	r9, r9, r50, r17				# 14503
	cmpi	r44, 3
	beq		.b47564				# 22583
.b47565:
	lw		r17, 6(r35)				# 3372
	fcmp	r41, r9
	ble		.b47567				# 3188
.b47568:
	addi	r9, r0, 1				# 3188
	cmpi	r17, 0
	beq		.b47570				# 765
.b47571:
	cmpi	r9, 0
	beq		.b47576				# 775
.b47525:
	addi	r61, r61, 1				# 27573
	lw		r47, 0(r1)				# 8078
	lwx		r33, r53, r61				# 26915
	cmpi	r33, -1
	beq		.b47479				# 26952
	b		.b47482
.b47479:
	addi	r28, r28, 1				# 27971
	lwx		r9, r14, r28				# 27829
	cmpi	r9, -1
	beq		.b47473				# 27860
	b		.b47478
.b47576:
	addi	r46, r46, 1				# 23162
	lwx		r9, r53, r46				# 23025
	cmpi	r9, -1
	beq		.b47579				# 23052
	b		.b47533
.b47579:
	sw		r56, 0(r23)				# 27393
	sw		r27, 0(r25)				# 1162
	sw		r59, 1(r25)				# 1162
	sw		r47, 2(r25)				# 27393
	sw		r33, 0(r29)				# 27393
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
	fcmp	r41, r9
	ble		.b47567				# 3188
	b		.b47568
.b47561:
	cmpi	r44, 3
	beq		.b47564				# 22583
	b		.b47565
.b47548:
	lw		r36, 4(r35)				# 4293
	lw		r9, 0(r36)				# 2037
	lw		r17, 1(r36)				# 2052
	fmul	r17, r17, r20				# 2037
	faddmul	r9, r9, r42, r17				# 2037
	lw		r17, 2(r36)				# 2067
	faddmul	r9, r17, r50, r9				# 22411
	lw		r17, 6(r35)				# 3372
	fcmp	r41, r9
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
	fabs	r42, r42				# 322
	lw		r17, 4(r35)				# 3734
	lw		r9, 0(r17)				# 22178
	fcmp	r9, r42
	ble		.b47544				# 3098
.b47539:
	fabs	r9, r20				# 322
	lw		r42, 1(r17)				# 22224
	fcmp	r42, r9
	ble		.b47544				# 3098
.b47541:
	fabs	r50, r50				# 322
	lw		r9, 2(r17)				# 22261
	fcmp	r9, r50
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
	fsub	r9, r50, r9				# 18540
	lw		r46, 4(r56)				# 18540
	fmul	r9, r9, r46				# 18521
	sw		r9, 0(r37)				# 18521
	addi	r12, r0, 1				# 18580
	lw		r9, 0(r37)				# 27058
	fcmp	r9, r41
	ble		.b47525				# 3098
	b		.b47527
.b47521:
	lw		r9, 6(r59)				# 3372
	cmpi	r9, 0
	beq		.b47479				# 27653
.b47524:
	addi	r61, r61, 1				# 27691
	lw		r47, 0(r1)				# 8078
	lwx		r33, r53, r61				# 26915
	cmpi	r33, -1
	beq		.b47479				# 26952
	b		.b47482
.b47510:
	lw		r46, 0(r56)				# 18051
	fcmp	r41, r46
	ble		.b47521				# 3188
.b47513:
	lw		r9, 3(r17)				# 18099
	fmul	r9, r46, r9				# 18080
	sw		r9, 0(r37)				# 18080
	addi	r12, r0, 1				# 18129
	lw		r9, 0(r37)				# 27058
	fcmp	r9, r41
	ble		.b47525				# 3098
	b		.b47527
.b47484:
	lw		r9, 0(r56)				# 15996
	fsub	r9, r9, r35				# 15995
	lw		r42, 1(r56)				# 15995
	fmul	r17, r9, r42				# 15986
	lw		r50, 1(r47)				# 16056
	faddmul	r9, r17, r50, r46				# 16050
	fabs	r9, r9				# 322
	lw		r44, 4(r59)				# 3920
	lw		r36, 1(r44)				# 16043
	fcmp	r36, r9
	ble		.b47493				# 3098
.b47488:
	lw		r9, 2(r47)				# 16117
	faddmul	r9, r17, r9, r27				# 16111
	fabs	r12, r9				# 322
	lw		r9, 2(r44)				# 16104
	fcmp	r9, r12
	ble		.b47493				# 3098
.b47490:
	fcmp	r42, r41
	beq		.b47493				# 3128
.b47494:
	sw		r17, 0(r37)				# 16226
	addi	r12, r0, 1				# 16249
	lw		r9, 0(r37)				# 27058
	fcmp	r9, r41
	ble		.b47525				# 3098
	b		.b47527
.b47493:
	lw		r9, 2(r56)				# 16269
	fsub	r9, r9, r46				# 16268
	lw		r20, 3(r56)				# 16268
	fmul	r42, r9, r20				# 16259
	lw		r12, 0(r47)				# 16330
	faddmul	r9, r42, r12, r35				# 16324
	fabs	r9, r9				# 322
	lw		r17, 0(r44)				# 16317
	fcmp	r17, r9
	ble		.b47502				# 3098
.b47497:
	lw		r9, 2(r47)				# 16391
	faddmul	r9, r42, r9, r27				# 16385
	fabs	r38, r9				# 322
	lw		r9, 2(r44)				# 16378
	fcmp	r9, r38
	ble		.b47502				# 3098
.b47499:
	fcmp	r20, r41
	beq		.b47502				# 3128
.b47503:
	sw		r42, 0(r37)				# 16500
	addi	r12, r0, 2				# 16523
	lw		r9, 0(r37)				# 27058
	fcmp	r9, r41
	ble		.b47525				# 3098
	b		.b47527
.b47502:
	lw		r9, 4(r56)				# 16543
	fsub	r9, r9, r27				# 16542
	lw		r56, 5(r56)				# 16542
	fmul	r42, r9, r56				# 16533
	faddmul	r9, r42, r12, r35				# 16598
	fabs	r9, r9				# 322
	fcmp	r17, r9
	ble		.b47521				# 3098
.b47505:
	faddmul	r9, r42, r50, r46				# 16659
	fabs	r9, r9				# 322
	fcmp	r36, r9
	ble		.b47521				# 3098
.b47507:
	fcmp	r56, r41
	beq		.b47521				# 3128
.b47509:
	sw		r42, 0(r37)				# 16774
	addi	r12, r0, 3				# 16797
	lw		r9, 0(r37)				# 27058
	fcmp	r9, r41
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
	fmul	r15, r28, r9				# 41113
	lw		r9, 0(r61)				# 41195
	lw		r28, 0(r10)				# 41195
	faddmul	r9, r15, r9, r28				# 41185
	sw		r9, -2(r3)				# 41185
	lw		r9, 1(r61)				# 41254
	lw		r28, 1(r10)				# 41254
	faddmul	r9, r15, r9, r28				# 41244
	sw		r9, -3(r3)				# 41244
	lw		r9, 2(r61)				# 41313
	lw		r61, 2(r10)				# 41313
	faddmul	r9, r15, r9, r61				# 41303
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
	lli		r51, screenx_dir.2605				# 40595
	lw		r62, 0(r51)				# 40595
	lw		r28, -2(r3)				# 40574
	faddmul	r15, r61, r62, r28				# 40574
	lli		r30, ptrace_dirvec.2614				# 40574
	sw		r15, 0(r30)				# 40574
	lw		r28, 1(r51)				# 40653
	lw		r62, -3(r3)				# 40632
	faddmul	r10, r61, r28, r62				# 40632
	sw		r10, 1(r30)				# 40574
	lw		r28, 2(r51)				# 40711
	lw		r62, -4(r3)				# 40690
	faddmul	r51, r61, r28, r62				# 40690
	sw		r51, 2(r30)				# 40574
	fmul	r61, r10, r10				# 1729
	faddmul	r61, r15, r15, r61				# 1729
	faddmul	r61, r51, r51, r61				# 1723
	fsqrt	r28, r61				# 227
	addi	r62, r0, 0				# 1774
	fcmp	r28, r62
	beq		.b48075				# 3128
.b48076:
	addis	r61, r0, 16256				# 1837
	fdiv	r61, r61, r28				# 1837
.b48074:
	fmul	r28, r15, r61				# 1851
	sw		r28, 0(r30)				# 1851
	fmul	r28, r10, r61				# 1875
	sw		r28, 1(r30)				# 1851
	fmul	r61, r51, r61				# 1899
	sw		r61, 2(r30)				# 40574
	lli		r41, rgb.2587				# 1232
	sw		r62, 0(r41)				# 1232
	sw		r62, 1(r41)				# 1232
	sw		r62, 2(r41)				# 40574
	lli		r61, viewpoint.2542				# 1353
	lw		r28, 0(r61)				# 1353
	lli		r37, startp.2599				# 1353
	sw		r28, 0(r37)				# 1353
	lw		r28, 1(r61)				# 1376
	sw		r28, 1(r37)				# 1353
	lw		r61, 2(r61)				# 1399
	sw		r61, 2(r37)				# 40574
	addis	r7, r0, 16256				# 40833
	lw		r61, 0(r3)				# 40833
	lwx		r46, r61, r9				# 40833
	sw		r46, -7(r3)				# 40833
	addi	r13, r0, 0				# 32983
	mv		r25, r7				# 32983
	mv		r28, r62				# 32983
.b48079:
	lw		r57, 2(r46)				# 7046
	lli		r54, tmin.2569				# 26657
	addis	r10, r0, 20078
	ori		r10, r10, 27432				# 26657
	sw		r10, 0(r54)				# 26657
	lli		r9, or_net.2560				# 26687
	lw		r26, 0(r9)				# 26687
	addi	r51, r0, 0				# 26148
	lwx		r23, r26, r51				# 26148
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
	lw		r61, 5(r33)				# 4475
	lw		r9, 0(r61)				# 15621
	fsub	r50, r29, r9				# 15611
	lw		r19, 1(r37)				# 15659
	lw		r9, 1(r61)				# 15659
	fsub	r12, r19, r9				# 15649
	lw		r48, 2(r37)				# 15697
	lw		r9, 2(r61)				# 15697
	fsub	r53, r48, r9				# 15687
	lw		r36, 1(r33)				# 2994
	cmpi	r36, 1
	beq		.b48238				# 15753
.b48239:
	cmpi	r36, 2
	beq		.b48297				# 15817
.b48298:
	lw		r56, 0(r30)				# 15037
	lw		r35, 1(r30)				# 15037
	lw		r39, 2(r30)				# 15037
	fmul	r15, r56, r56				# 14374
	lw		r9, 4(r33)				# 3734
	lw		r61, 0(r9)				# 14374
	fmul	r17, r35, r35				# 14400
	lw		r47, 1(r9)				# 14400
	fmul	r17, r17, r47				# 14374
	faddmul	r17, r15, r61, r17				# 14374
	fmul	r15, r39, r39				# 14426
	lw		r27, 2(r9)				# 14426
	faddmul	r15, r15, r27, r17				# 14354
	lw		r17, 3(r33)				# 3553
	cmpi	r17, 0
	beq		.b48302				# 14456
.b48303:
	fmul	r42, r35, r39				# 14522
	lw		r1, 9(r33)				# 5989
	lw		r9, 0(r1)				# 14522
	faddmul	r15, r42, r9, r15				# 14503
	fmul	r9, r39, r56				# 14556
	lw		r42, 1(r1)				# 14556
	faddmul	r15, r9, r42, r15				# 14503
	fmul	r42, r56, r35				# 14590
	lw		r9, 2(r1)				# 14590
	faddmul	r15, r42, r9, r15				# 14503
	fcmp	r15, r62
	beq		.b48085				# 3128
.b48305:
	fmul	r42, r56, r50				# 14680
	fmul	r9, r35, r12				# 14713
	fmul	r9, r9, r47				# 14680
	faddmul	r42, r42, r61, r9				# 14680
	fmul	r9, r39, r53				# 14746
	faddmul	r9, r9, r27, r42				# 14660
	cmpi	r17, 0
	beq		.b48307				# 14777
.b48308:
	fmul	r42, r35, r53				# 14851
	faddmul	r1, r39, r12, r42				# 14850
	lw		r42, 9(r33)				# 5989
	lw		r59, 0(r42)				# 14850
	fmul	r39, r39, r50				# 14895
	faddmul	r39, r56, r53, r39				# 14894
	lw		r2, 1(r42)				# 14894
	fmul	r39, r39, r2				# 14850
	faddmul	r39, r1, r59, r39				# 14850
	fmul	r1, r35, r50				# 14939
	faddmul	r56, r56, r12, r1				# 14938
	lw		r42, 2(r42)				# 14938
	faddmul	r39, r56, r42, r39				# 14837
	fhalf	r39, r39				# 14824
	fadd	r9, r9, r39				# 14824
.b48306:
	fmul	r42, r50, r50				# 14374
	fmul	r39, r12, r12				# 14400
	fmul	r39, r39, r47				# 14374
	faddmul	r39, r42, r61, r39				# 14374
	fmul	r61, r53, r53				# 14426
	faddmul	r61, r61, r27, r39				# 14354
	cmpi	r17, 0
	beq		.b48310				# 14456
.b48311:
	fmul	r42, r12, r53				# 14522
	lw		r39, 9(r33)				# 5989
	lw		r17, 0(r39)				# 14522
	faddmul	r61, r42, r17, r61				# 14503
	fmul	r17, r53, r50				# 14556
	lw		r53, 1(r39)				# 14556
	faddmul	r53, r17, r53, r61				# 14503
	fmul	r17, r50, r12				# 14590
	lw		r61, 2(r39)				# 14590
	faddmul	r61, r17, r61, r53				# 14503
	cmpi	r36, 3
	beq		.b48313				# 15282
.b48314:
.b48312:
	fmul	r39, r9, r9				# 15338
	fmul	r61, r15, r61				# 15338
	fsub	r61, r39, r61				# 15330
	fcmp	r61, r62
	ble		.b48085				# 3158
.b48316:
	fsqrt	r61, r61				# 227
	lw		r39, 6(r33)				# 3372
	cmpi	r39, 0
	beq		.b48318				# 15425
.b48319:
.b48317:
	fsub	r9, r61, r9				# 15491
	fdiv	r61, r9, r15				# 15472
	lli		r9, solver_dist.2563				# 15472
	sw		r61, 0(r9)				# 15472
.b48321:
	lli		r50, solver_dist.2563				# 26433
	lw		r61, 0(r50)				# 26433
	lw		r9, 0(r54)				# 26466
	fcmp	r9, r61
	ble		.b48085				# 3098
.b48323:
	addi	r17, r0, 1				# 25897
	lwx		r61, r23, r17				# 25897
	cmpi	r61, -1
	beq		.b48085				# 25928
.b48326:
	lli		r9, and_net.2554				# 25953
	lwx		r12, r9, r61				# 25953
	addi	r9, r0, 0				# 25005
	lwx		r53, r12, r9				# 25005
	cmpi	r53, -1
	beq		.b48327				# 25042
.b48330:
	lwx		r42, r14, r53				# 15582
	lw		r15, 5(r42)				# 4475
	lw		r61, 0(r15)				# 15621
	fsub	r1, r29, r61				# 15611
	lw		r61, 1(r15)				# 15659
	fsub	r56, r19, r61				# 15649
	lw		r61, 2(r15)				# 15697
	fsub	r36, r48, r61				# 15687
	lw		r27, 1(r42)				# 2994
	cmpi	r27, 1
	beq		.b48332				# 15753
.b48333:
	cmpi	r27, 2
	beq		.b48391				# 15817
.b48392:
	lw		r35, 0(r30)				# 15037
	lw		r47, 1(r30)				# 15037
	lw		r49, 2(r30)				# 15037
	fmul	r39, r35, r35				# 14374
	lw		r15, 4(r42)				# 3734
	lw		r33, 0(r15)				# 14374
	fmul	r61, r47, r47				# 14400
	lw		r20, 1(r15)				# 14400
	fmul	r61, r61, r20				# 14374
	faddmul	r61, r39, r33, r61				# 14374
	fmul	r39, r49, r49				# 14426
	lw		r44, 2(r15)				# 14426
	faddmul	r39, r39, r44, r61				# 14354
	lw		r2, 3(r42)				# 3553
	cmpi	r2, 0
	beq		.b48396				# 14456
.b48397:
	fmul	r61, r47, r49				# 14522
	lw		r15, 9(r42)				# 5989
	lw		r59, 0(r15)				# 14522
	faddmul	r61, r61, r59, r39				# 14503
	fmul	r39, r49, r35				# 14556
	lw		r59, 1(r15)				# 14556
	faddmul	r39, r39, r59, r61				# 14503
	fmul	r59, r35, r47				# 14590
	lw		r61, 2(r15)				# 14590
	faddmul	r39, r59, r61, r39				# 14503
	fcmp	r39, r62
	beq		.b48414				# 3128
.b48399:
	fmul	r15, r35, r1				# 14680
	fmul	r61, r47, r56				# 14713
	fmul	r61, r61, r20				# 14680
	faddmul	r61, r15, r33, r61				# 14680
	fmul	r15, r49, r36				# 14746
	faddmul	r15, r15, r44, r61				# 14660
	cmpi	r2, 0
	beq		.b48401				# 14777
.b48402:
	fmul	r61, r47, r36				# 14851
	faddmul	r61, r49, r56, r61				# 14850
	lw		r38, 9(r42)				# 5989
	lw		r8, 0(r38)				# 14850
	fmul	r59, r49, r1				# 14895
	faddmul	r49, r35, r36, r59				# 14894
	lw		r59, 1(r38)				# 14894
	fmul	r59, r49, r59				# 14850
	faddmul	r59, r61, r8, r59				# 14850
	fmul	r61, r47, r1				# 14939
	faddmul	r47, r35, r56, r61				# 14938
	lw		r61, 2(r38)				# 14938
	faddmul	r61, r47, r61, r59				# 14837
	fhalf	r61, r61				# 14824
	fadd	r15, r15, r61				# 14824
.b48400:
	fmul	r47, r1, r1				# 14374
	fmul	r61, r56, r56				# 14400
	fmul	r61, r61, r20				# 14374
	faddmul	r33, r47, r33, r61				# 14374
	fmul	r61, r36, r36				# 14426
	faddmul	r61, r61, r44, r33				# 14354
	cmpi	r2, 0
	beq		.b48404				# 14456
.b48405:
	fmul	r33, r56, r36				# 14522
	lw		r47, 9(r42)				# 5989
	lw		r59, 0(r47)				# 14522
	faddmul	r33, r33, r59, r61				# 14503
	fmul	r36, r36, r1				# 14556
	lw		r61, 1(r47)				# 14556
	faddmul	r61, r36, r61, r33				# 14503
	fmul	r56, r1, r56				# 14590
	lw		r33, 2(r47)				# 14590
	faddmul	r61, r56, r33, r61				# 14503
	cmpi	r27, 3
	beq		.b48407				# 15282
.b48408:
.b48406:
	fmul	r33, r15, r15				# 15338
	fmul	r61, r39, r61				# 15338
	fsub	r61, r33, r61				# 15330
	fcmp	r61, r62
	ble		.b48414				# 3158
.b48410:
	fsqrt	r61, r61				# 227
	lw		r33, 6(r42)				# 3372
	cmpi	r33, 0
	beq		.b48412				# 15425
.b48413:
.b48411:
	fsub	r61, r61, r15				# 15491
	fdiv	r61, r61, r39				# 15472
	sw		r61, 0(r50)				# 15472
	addi	r1, r0, 1				# 15510
	lw		r61, 0(r50)				# 25149
	fcmp	r61, r62
	ble		.b48418				# 3098
.b48420:
	lw		r15, 0(r54)				# 25216
	fcmp	r15, r61
	ble		.b48418				# 3098
.b48422:
	addis	r15, r0, 15395
	ori		r15, r15, 55050				# 25260
	fadd	r27, r61, r15				# 25252
	lw		r61, 0(r30)				# 25289
	faddmul	r36, r61, r27, r29				# 25280
	lw		r61, 1(r30)				# 25336
	faddmul	r47, r61, r27, r19				# 25327
	lw		r61, 2(r30)				# 25383
	faddmul	r33, r61, r27, r48				# 25374
	addi	r15, r0, 0				# 23025
	lwx		r61, r12, r15				# 23025
	cmpi	r61, -1
	beq		.b48472				# 23052
.b48426:
	lwx		r39, r14, r61				# 23095
	lw		r42, 5(r39)				# 4475
	lw		r61, 0(r42)				# 22709
	fsub	r35, r36, r61				# 22700
	lw		r61, 1(r42)				# 22741
	fsub	r56, r47, r61				# 22732
	lw		r61, 2(r42)				# 22773
	fsub	r38, r33, r61				# 22764
	lw		r20, 1(r39)				# 2994
	cmpi	r20, 1
	beq		.b48428				# 22824
.b48429:
	cmpi	r20, 2
	beq		.b48441				# 22882
.b48442:
	fmul	r2, r35, r35				# 14374
	lw		r42, 4(r39)				# 3734
	lw		r44, 0(r42)				# 14374
	fmul	r59, r56, r56				# 14400
	lw		r61, 1(r42)				# 14400
	fmul	r61, r59, r61				# 14374
	faddmul	r61, r2, r44, r61				# 14374
	fmul	r59, r38, r38				# 14426
	lw		r42, 2(r42)				# 14426
	faddmul	r61, r59, r42, r61				# 14354
	lw		r42, 3(r39)				# 3553
	cmpi	r42, 0
	beq		.b48454				# 14456
.b48455:
	fmul	r2, r56, r38				# 14522
	lw		r59, 9(r39)				# 5989
	lw		r42, 0(r59)				# 14522
	faddmul	r2, r2, r42, r61				# 14503
	fmul	r42, r38, r35				# 14556
	lw		r61, 1(r59)				# 14556
	faddmul	r61, r42, r61, r2				# 14503
	fmul	r42, r35, r56				# 14590
	lw		r56, 2(r59)				# 14590
	faddmul	r61, r42, r56, r61				# 14503
	cmpi	r20, 3
	beq		.b48457				# 22583
.b48458:
	lw		r39, 6(r39)				# 3372
	fcmp	r62, r61
	ble		.b48460				# 3188
.b48461:
	addi	r61, r0, 1				# 3188
	cmpi	r39, 0
	beq		.b48463				# 765
.b48464:
	cmpi	r61, 0
	beq		.b48469				# 775
.b48418:
	addi	r9, r9, 1				# 25658
	lwx		r53, r12, r9				# 25005
	cmpi	r53, -1
	beq		.b48327				# 25042
	b		.b48330
.b48327:
	addi	r17, r17, 1				# 26034
	lwx		r61, r23, r17				# 25897
	cmpi	r61, -1
	beq		.b48085				# 25928
	b		.b48326
.b48085:
	addi	r51, r51, 1				# 26566
	lwx		r23, r26, r51				# 26148
	lw		r9, 0(r23)				# 26181
	cmpi	r9, -1
	beq		.b48081				# 26217
	b		.b48084
.b48081:
	lw		r9, 0(r54)				# 26728
	addis	r59, r0, 48588
	ori		r59, r59, 52429				# 26755
	fcmp	r9, r59
	ble		.b48478				# 3098
.b48475:
	addis	r61, r0, 19646
	ori		r61, r61, 48160				# 26781
	fcmp	r61, r9
	ble		.b48478				# 3098
.b48479:
	lli		r2, intersected_object_id.2575				# 33094
	lw		r15, 0(r2)				# 33094
	lli		r36, objects.2536				# 33142
	lwx		r39, r36, r15				# 33142
	lw		r42, 2(r39)				# 3185
	lw		r35, 7(r39)				# 5033
	lw		r9, 0(r35)				# 33238
	fmul	r29, r9, r25				# 33224
	lw		r9, 1(r39)				# 2994
	cmpi	r9, 1
	beq		.b48485				# 29818
.b48486:
	cmpi	r9, 2
	beq		.b48492				# 29873
.b48493:
	lli		r48, intersection_point.2572				# 29136
	lw		r51, 0(r48)				# 29136
	lw		r9, 5(r39)				# 4475
	lw		r61, 0(r9)				# 29136
	fsub	r50, r51, r61				# 29127
	lw		r61, 1(r48)				# 29188
	lw		r51, 1(r9)				# 29188
	fsub	r23, r61, r51				# 29179
	lw		r61, 2(r48)				# 29240
	lw		r9, 2(r9)				# 29240
	fsub	r14, r61, r9				# 29231
	lw		r61, 4(r39)				# 3734
	lw		r9, 0(r61)				# 29293
	fmul	r17, r50, r9				# 29284
	lw		r9, 1(r61)				# 29325
	fmul	r9, r23, r9				# 29316
	lw		r61, 2(r61)				# 29357
	fmul	r19, r14, r61				# 29348
	lw		r61, 3(r39)				# 3553
	cmpi	r61, 0
	beq		.b48495				# 29381
.b48496:
	lw		r61, 9(r39)				# 6369
	lw		r12, 2(r61)				# 29517
	lw		r48, 1(r61)				# 29539
	fmul	r51, r14, r48				# 29517
	faddmul	r51, r23, r12, r51				# 29510
	fhalf	r51, r51				# 29504
	fadd	r51, r17, r51				# 29489
	lli		r17, nvector.2578				# 29489
	sw		r51, 0(r17)				# 29489
	lw		r51, 0(r61)				# 29614
	fmul	r61, r14, r51				# 29592
	faddmul	r61, r50, r12, r61				# 29585
	fhalf	r61, r61				# 29579
	fadd	r9, r9, r61				# 29564
	sw		r9, 1(r17)				# 29489
	fmul	r9, r23, r51				# 29667
	faddmul	r9, r50, r48, r9				# 29660
	fhalf	r9, r9				# 29654
	fadd	r9, r19, r9				# 29639
	sw		r9, 2(r17)				# 29639
.b48494:
	lw		r51, 6(r39)				# 3372
	lli		r23, nvector.2578				# 1729
	lw		r61, 0(r23)				# 1729
	lw		r19, 1(r23)				# 1743
	fmul	r9, r19, r19				# 1729
	faddmul	r9, r61, r61, r9				# 1729
	lw		r14, 2(r23)				# 1757
	faddmul	r9, r14, r14, r9				# 1723
	fsqrt	r48, r9				# 227
	fcmp	r48, r62
	beq		.b48498				# 3128
.b48499:
	cmpi	r51, 0
	beq		.b48500				# 1810
.b48501:
	addis	r9, r0, 49024				# 1822
	fdiv	r51, r9, r48				# 1822
.b48497:
	fmul	r9, r61, r51				# 1851
	sw		r9, 0(r23)				# 1851
	fmul	r9, r19, r51				# 1875
	sw		r9, 1(r23)				# 1851
	fmul	r9, r14, r51				# 1899
	sw		r9, 2(r23)				# 1899
.b48484:
	lli		r50, intersection_point.2572				# 1353
	lw		r33, 0(r50)				# 1353
	sw		r33, 0(r37)				# 1353
	lw		r1, 1(r50)				# 1376
	sw		r1, 1(r37)				# 1353
	lw		r27, 2(r50)				# 1399
	sw		r27, 2(r37)				# 33272
	lw		r61, 0(r39)				# 2815
	lw		r9, 8(r39)				# 5421
	lw		r51, 0(r9)				# 30014
	lli		r48, texture_color.2581				# 30014
	sw		r51, 0(r48)				# 30014
	lw		r51, 1(r9)				# 30052
	sw		r51, 1(r48)				# 30014
	lw		r9, 2(r9)				# 30092
	sw		r9, 2(r48)				# 30014
	cmpi	r61, 1
	beq		.b48503				# 30131
.b48504:
	cmpi	r61, 2
	beq		.b48518				# 30575
.b48519:
	cmpi	r61, 3
	beq		.b48520				# 30745
.b48521:
	cmpi	r61, 4
	beq		.b48522				# 31084
.b48502:
	mul16i	r61, r15, 4				# 33407
	lli		r17, intsec_rectside.2566				# 33407
	lw		r9, 0(r17)				# 33407
	add		r9, r61, r9				# 33385
	swx		r9, r13, r57				# 33272
	lw		r9, 1(r46)				# 6897
	lwx		r9, r9, r13				# 33510
	sw		r33, 0(r9)				# 1353
	sw		r1, 1(r9)				# 1353
	sw		r27, 2(r9)				# 33510
	lw		r15, 3(r46)				# 7193
	lw		r61, 0(r35)				# 33623
	addis	r9, r0, 16128				# 33623
	fcmp	r9, r61
	ble		.b48534				# 3098
.b48535:
	addi	r9, r0, 0				# 33655
	swx		r9, r13, r15				# 33655
.b48533:
	addis	r9, r0, 49152				# 33945
	lw		r15, 0(r30)				# 1949
	lli		r23, nvector.2578				# 1949
	lw		r53, 0(r23)				# 1949
	lw		r61, 1(r30)				# 1967
	lw		r47, 1(r23)				# 1967
	fmul	r51, r61, r47				# 1949
	faddmul	r51, r15, r53, r51				# 1949
	lw		r39, 2(r30)				# 1985
	lw		r14, 2(r23)				# 1985
	faddmul	r51, r39, r14, r51				# 33945
	fmul	r9, r9, r51				# 33937
	faddmul	r19, r9, r53, r15				# 2117
	sw		r19, 0(r30)				# 2117
	faddmul	r56, r9, r47, r61				# 2159
	sw		r56, 1(r30)				# 2117
	faddmul	r12, r9, r14, r39				# 2201
	sw		r12, 2(r30)				# 33988
	lw		r9, 1(r35)				# 34042
	fmul	r39, r25, r9				# 34022
	addi	r23, r0, 0				# 24323
	lwx		r20, r26, r23				# 24323
	lw		r61, 0(r20)				# 24355
	cmpi	r61, -1
	beq		.b48824				# 24391
.b48539:
	cmpi	r61, 99
	beq		.b48707				# 24451
.b48542:
	lwx		r60, r36, r61				# 17557
	lw		r9, 5(r60)				# 4475
	lw		r15, 0(r9)				# 17595
	fsub	r18, r33, r15				# 17586
	lw		r15, 1(r9)				# 17632
	fsub	r8, r1, r15				# 17623
	lw		r9, 2(r9)				# 17669
	fsub	r49, r27, r9				# 17660
	lli		r44, consts.2632				# 17731
	lwx		r38, r44, r61				# 17731
	lw		r61, 1(r60)				# 2994
	cmpi	r61, 1
	beq		.b48544				# 17793
.b48545:
	cmpi	r61, 2
	beq		.b48570				# 17874
.b48571:
	lw		r11, 0(r38)				# 17054
	fcmp	r11, r62
	beq		.b48706				# 3128
.b48575:
	lw		r15, 1(r38)				# 17128
	lw		r9, 2(r38)				# 17148
	fmul	r9, r9, r8				# 17128
	faddmul	r15, r15, r18, r9				# 17128
	lw		r9, 3(r38)				# 17168
	faddmul	r15, r9, r49, r15				# 17115
	fmul	r9, r18, r18				# 14374
	lw		r51, 4(r60)				# 3734
	lw		r52, 0(r51)				# 14374
	fmul	r32, r8, r8				# 14400
	lw		r16, 1(r51)				# 14400
	fmul	r16, r32, r16				# 14374
	faddmul	r52, r9, r52, r16				# 14374
	fmul	r16, r49, r49				# 14426
	lw		r9, 2(r51)				# 14426
	faddmul	r9, r16, r9, r52				# 14354
	lw		r51, 3(r60)				# 3553
	cmpi	r51, 0
	beq		.b48577				# 14456
.b48578:
	fmul	r52, r8, r49				# 14522
	lw		r16, 9(r60)				# 5989
	lw		r51, 0(r16)				# 14522
	faddmul	r9, r52, r51, r9				# 14503
	fmul	r51, r49, r18				# 14556
	lw		r49, 1(r16)				# 14556
	faddmul	r49, r51, r49, r9				# 14503
	fmul	r51, r18, r8				# 14590
	lw		r9, 2(r16)				# 14590
	faddmul	r9, r51, r9, r49				# 14503
	cmpi	r61, 3
	beq		.b48580				# 17239
.b48581:
.b48579:
	fmul	r61, r15, r15				# 17295
	fmul	r9, r11, r9				# 17295
	fsub	r9, r61, r9				# 17287
	fcmp	r9, r62
	ble		.b48706				# 3158
.b48583:
	lw		r61, 6(r60)				# 3372
	cmpi	r61, 0
	beq		.b48585				# 17353
.b48586:
	fsqrt	r9, r9				# 227
	fadd	r9, r15, r9				# 17394
	lw		r61, 4(r38)				# 17394
	fmul	r61, r9, r61				# 17375
	lli		r9, solver_dist.2563				# 17375
	sw		r61, 0(r9)				# 17375
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r59, r9
	ble		.b48706				# 3098
.b48590:
	addi	r61, r0, 1				# 24006
	lwx		r15, r20, r61				# 24006
	cmpi	r15, -1
	beq		.b48706				# 24037
.b48594:
	lli		r9, and_net.2554				# 24078
	lwx		r49, r9, r15				# 24078
	addi	r51, r0, 0				# 23266
	lwx		r18, r49, r51				# 23266
	cmpi	r18, -1
	beq		.b48702				# 23266
.b48598:
	lwx		r8, r36, r18				# 17557
	lw		r15, 5(r8)				# 4475
	lw		r9, 0(r15)				# 17595
	fsub	r52, r33, r9				# 17586
	lw		r9, 1(r15)				# 17632
	fsub	r32, r1, r9				# 17623
	lw		r9, 2(r15)				# 17669
	fsub	r11, r27, r9				# 17660
	lwx		r60, r44, r18				# 17731
	lw		r6, 1(r8)				# 2994
	cmpi	r6, 1
	beq		.b48600				# 17793
.b48601:
	cmpi	r6, 2
	beq		.b48626				# 17874
.b48627:
	lw		r55, 0(r60)				# 17054
	fcmp	r55, r62
	beq		.b48630				# 3128
.b48631:
	lw		r9, 1(r60)				# 17128
	lw		r15, 2(r60)				# 17148
	fmul	r15, r15, r32				# 17128
	faddmul	r15, r9, r52, r15				# 17128
	lw		r9, 3(r60)				# 17168
	faddmul	r16, r9, r11, r15				# 17115
	fmul	r9, r52, r52				# 14374
	lw		r15, 4(r8)				# 3734
	lw		r43, 0(r15)				# 14374
	fmul	r18, r32, r32				# 14400
	lw		r31, 1(r15)				# 14400
	fmul	r18, r18, r31				# 14374
	faddmul	r43, r9, r43, r18				# 14374
	fmul	r18, r11, r11				# 14426
	lw		r9, 2(r15)				# 14426
	faddmul	r9, r18, r9, r43				# 14354
	lw		r15, 3(r8)				# 3553
	cmpi	r15, 0
	beq		.b48633				# 14456
.b48634:
	fmul	r18, r32, r11				# 14522
	lw		r43, 9(r8)				# 5989
	lw		r15, 0(r43)				# 14522
	faddmul	r15, r18, r15, r9				# 14503
	fmul	r18, r11, r52				# 14556
	lw		r9, 1(r43)				# 14556
	faddmul	r15, r18, r9, r15				# 14503
	fmul	r18, r52, r32				# 14590
	lw		r9, 2(r43)				# 14590
	faddmul	r9, r18, r9, r15				# 14503
	cmpi	r6, 3
	beq		.b48636				# 17239
.b48637:
.b48635:
	fmul	r15, r16, r16				# 17295
	fmul	r9, r55, r9				# 17295
	fsub	r15, r15, r9				# 17287
	fcmp	r15, r62
	ble		.b48638				# 3158
.b48639:
	lw		r9, 6(r8)				# 3372
	cmpi	r9, 0
	beq		.b48641				# 17353
.b48642:
	fsqrt	r9, r15				# 227
	fadd	r9, r16, r9				# 17394
	lw		r15, 4(r60)				# 17394
	fmul	r9, r9, r15				# 17375
	sw		r9, 0(r38)				# 17375
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48648				# 3098
.b48649:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r15, r15, r9				# 23516
	lli		r8, light.2545				# 23554
	lw		r9, 0(r8)				# 23554
	faddmul	r18, r9, r15, r33				# 23545
	lw		r9, 1(r8)				# 23613
	faddmul	r60, r9, r15, r1				# 23604
	lw		r9, 2(r8)				# 23672
	faddmul	r16, r9, r15, r27				# 23663
	addi	r15, r0, 0				# 23025
	lwx		r9, r49, r15				# 23025
	cmpi	r9, -1
	beq		.b48707				# 23052
.b48655:
	lwx		r52, r36, r9				# 23095
	lw		r8, 5(r52)				# 4475
	lw		r9, 0(r8)				# 22709
	fsub	r55, r18, r9				# 22700
	lw		r9, 1(r8)				# 22741
	fsub	r43, r60, r9				# 22732
	lw		r9, 2(r8)				# 22773
	fsub	r6, r16, r9				# 22764
	lw		r32, 1(r52)				# 2994
	cmpi	r32, 1
	beq		.b48657				# 22824
.b48658:
	cmpi	r32, 2
	beq		.b48670				# 22882
.b48671:
	fmul	r8, r55, r55				# 14374
	lw		r24, 4(r52)				# 3734
	lw		r11, 0(r24)				# 14374
	fmul	r9, r43, r43				# 14400
	lw		r31, 1(r24)				# 14400
	fmul	r9, r9, r31				# 14374
	faddmul	r9, r8, r11, r9				# 14374
	fmul	r11, r6, r6				# 14426
	lw		r8, 2(r24)				# 14426
	faddmul	r9, r11, r8, r9				# 14354
	lw		r8, 3(r52)				# 3553
	cmpi	r8, 0
	beq		.b48683				# 14456
.b48684:
	fmul	r8, r43, r6				# 14522
	lw		r31, 9(r52)				# 5989
	lw		r11, 0(r31)				# 14522
	faddmul	r11, r8, r11, r9				# 14503
	fmul	r9, r6, r55				# 14556
	lw		r8, 1(r31)				# 14556
	faddmul	r8, r9, r8, r11				# 14503
	fmul	r11, r55, r43				# 14590
	lw		r9, 2(r31)				# 14590
	faddmul	r9, r11, r9, r8				# 14503
	cmpi	r32, 3
	beq		.b48686				# 22583
.b48687:
	lw		r8, 6(r52)				# 3372
	fcmp	r62, r9
	ble		.b48689				# 3188
.b48690:
	addi	r9, r0, 1				# 3188
	cmpi	r8, 0
	beq		.b48692				# 765
.b48693:
	cmpi	r9, 0
	beq		.b48698				# 775
.b48700:
	addi	r51, r51, 1				# 23786
	lwx		r18, r49, r51				# 23266
	cmpi	r18, -1
	beq		.b48702				# 23266
	b		.b48598
.b48702:
	addi	r61, r61, 1				# 24216
	lwx		r15, r20, r61				# 24006
	cmpi	r15, -1
	beq		.b48706				# 24037
	b		.b48594
.b48706:
	addi	r23, r23, 1				# 24896
	lwx		r20, r26, r23				# 24323
	lw		r61, 0(r20)				# 24355
	cmpi	r61, -1
	beq		.b48824				# 24391
	b		.b48539
.b48824:
	lli		r9, light.2545				# 1949
	lw		r15, 0(r9)				# 1949
	lw		r61, 1(r9)				# 1967
	fmul	r51, r47, r61				# 1949
	faddmul	r23, r53, r15, r51				# 1949
	lw		r51, 2(r9)				# 1985
	faddmul	r9, r14, r51, r23				# 34151
	fneg	r9, r9				# 34151
	fmul	r9, r9, r29				# 34138
	fmul	r61, r56, r61				# 1949
	faddmul	r61, r19, r15, r61				# 1949
	faddmul	r61, r12, r51, r61				# 34217
	fneg	r51, r61				# 34203
	fcmp	r9, r62
	ble		.b48826				# 3158
.b48828:
	lw		r61, 0(r41)				# 2129
	lw		r15, 0(r48)				# 2141
	faddmul	r61, r9, r15, r61				# 2117
	sw		r61, 0(r41)				# 2117
	lw		r61, 1(r41)				# 2171
	lw		r15, 1(r48)				# 2183
	faddmul	r61, r9, r15, r61				# 2159
	sw		r61, 1(r41)				# 2117
	lw		r15, 2(r41)				# 2213
	lw		r61, 2(r48)				# 2225
	faddmul	r9, r9, r61, r15				# 2201
	sw		r9, 2(r41)				# 2201
	fcmp	r51, r62
	ble		.b48823				# 3158
.b48830:
	fmul	r9, r51, r51				# 32023
	fmul	r61, r9, r9				# 32023
	lw		r9, 0(r41)				# 32078
	faddmul	r9, r61, r39, r9				# 32067
	sw		r9, 0(r41)				# 32067
	lw		r9, 1(r41)				# 32109
	faddmul	r9, r61, r39, r9				# 32098
	sw		r9, 1(r41)				# 32067
	lw		r9, 2(r41)				# 32140
	faddmul	r9, r61, r39, r9				# 32129
	sw		r9, 2(r41)				# 32129
.b48823:
	lli		r9, startp_fast.2602				# 1353
	sw		r33, 0(r9)				# 1353
	sw		r1, 1(r9)				# 1353
	sw		r27, 2(r9)				# 22055
	lli		r9, n_objects.2525				# 22105
	lw		r9, 0(r9)				# 22105
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b48833				# 21420
.b48831:
	lli		r9, n_reflections.2647				# 34376
	lw		r9, 0(r9)				# 34376
	addi	r61, r9, -1				# 34357
	cmpi	r61, 0
	bge		.b48848				# 32237
.b48846:
	addis	r9, r0, 15820
	ori		r9, r9, 52429				# 34437
	fcmp	r25, r9
	ble		.b48077				# 3098
.b49409:
	cmpi	r13, 4
	bge		.b49410				# 34463
.b49412:
	addi	r9, r13, 1				# 34484
	addi	r61, r0, -1				# 34484
	swx		r61, r9, r57				# 34484
	cmpi	r42, 2
	beq		.b49413				# 34523
.b48077:
	lw		r9, 0(r46)				# 6744
	lw		r61, 0(r41)				# 1353
	sw		r61, 0(r9)				# 1353
	lw		r61, 1(r41)				# 1376
	sw		r61, 1(r9)				# 1353
	lw		r61, 2(r41)				# 1399
	sw		r61, 2(r9)				# 40574
	lw		r9, 6(r46)				# 7787
	sw		r5, 0(r9)				# 40574
	addi	r9, r0, 0				# 39734
	sw		r9, -8(r3)				# 39734
.b49417:
	lw		r62, -7(r3)				# 7046
	lw		r61, 2(r62)				# 7046
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
	lw		r61, 3(r62)				# 7193
	lwx		r61, r61, r9				# 39973
	cmpi	r61, 0
	beq		.b49421				# 39973
.b49423:
	lw		r61, 6(r62)				# 7634
	lw		r15, 0(r61)				# 40004
	addi	r28, r0, 0				# 1232
	lli		r61, diffuse_ray.2584				# 1232
	sw		r28, 0(r61)				# 1232
	sw		r28, 1(r61)				# 1232
	sw		r28, 2(r61)				# 40040
	lw		r61, 7(r62)				# 7939
	lw		r28, 1(r62)				# 6897
	lli		r62, dirvecs.2624				# 40158
	lwx		r62, r62, r15				# 40158
	sw		r62, -9(r3)				# 40158
	lwx		r61, r61, r9				# 40158
	sw		r61, -10(r3)				# 40158
	lwx		r15, r28, r9				# 40158
	lw		r9, 0(r15)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r15)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r15)				# 1399
	sw		r9, 2(r61)				# 22055
	lli		r9, n_objects.2525				# 22105
	lw		r9, 0(r9)				# 22105
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
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
	lw		r28, 1(r10)				# 1967
	lw		r62, 1(r15)				# 1967
	fmul	r28, r28, r62				# 1949
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
	lli		r61, objects.2536				# 21445
	lwx		r13, r61, r9				# 21445
	lw		r41, 10(r13)				# 6561
	lw		r28, 1(r13)				# 2994
	lw		r61, 0(r15)				# 21561
	lw		r10, 5(r13)				# 4475
	lw		r62, 0(r10)				# 21561
	fsub	r61, r61, r62				# 21547
	sw		r61, 0(r41)				# 21547
	lw		r62, 1(r15)				# 21603
	lw		r61, 1(r10)				# 21603
	fsub	r61, r62, r61				# 21589
	sw		r61, 1(r41)				# 21547
	lw		r61, 2(r15)				# 21645
	lw		r62, 2(r10)				# 21645
	fsub	r7, r61, r62				# 21631
	sw		r7, 2(r41)				# 21547
	cmpi	r28, 2
	beq		.b49429				# 21673
.b49430:
	cmpi	r28, 2
	ble		.b49428				# 21798
.b49432:
	lw		r30, 0(r41)				# 21847
	lw		r54, 1(r41)				# 21847
	fmul	r61, r30, r30				# 14374
	lw		r10, 4(r13)				# 3734
	lw		r62, 0(r10)				# 14374
	fmul	r51, r54, r54				# 14400
	lw		r25, 1(r10)				# 14400
	fmul	r51, r51, r25				# 14374
	faddmul	r62, r61, r62, r51				# 14374
	fmul	r51, r7, r7				# 14426
	lw		r61, 2(r10)				# 14426
	faddmul	r61, r51, r61, r62				# 14354
	lw		r62, 3(r13)				# 3553
	cmpi	r62, 0
	beq		.b49434				# 14456
.b49435:
	fmul	r51, r54, r7				# 14522
	lw		r10, 9(r13)				# 5989
	lw		r62, 0(r10)				# 14522
	faddmul	r62, r51, r62, r61				# 14503
	fmul	r51, r7, r30				# 14556
	lw		r61, 1(r10)				# 14556
	faddmul	r51, r51, r61, r62				# 14503
	fmul	r62, r30, r54				# 14590
	lw		r61, 2(r10)				# 14590
	faddmul	r61, r62, r61, r51				# 14503
	cmpi	r28, 3
	beq		.b49437				# 21917
.b49438:
.b49436:
	sw		r61, 3(r41)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b49426				# 21420
	b		.b49424
.b49437:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b49436				# 21937
.b49434:
	cmpi	r28, 3
	beq		.b49437				# 21917
	b		.b49438
.b49428:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b49426				# 21420
	b		.b49424
.b49429:
	lw		r51, 4(r13)				# 4293
	lw		r62, 0(r41)				# 21728
	lw		r28, 1(r41)				# 21728
	lw		r10, 0(r51)				# 2037
	lw		r61, 1(r51)				# 2052
	fmul	r61, r61, r28				# 2037
	faddmul	r28, r10, r62, r61				# 2037
	lw		r61, 2(r51)				# 2067
	faddmul	r61, r61, r7, r28				# 21713
	sw		r61, 3(r41)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b49426				# 21420
	b		.b49424
.b49413:
	lw		r9, 0(r35)				# 34576
	fsub	r9, r7, r9				# 34565
	fmul	r25, r25, r9				# 34551
	addi	r13, r13, 1				# 34604
	lw		r9, 0(r54)				# 34645
	fadd	r28, r28, r9				# 34604
	cmpi	r13, 4
	ble		.b48079				# 32983
	b		.b48077
.b49410:
	cmpi	r42, 2
	beq		.b49413				# 34523
	b		.b48077
.b48848:
	lli		r9, reflections.2644				# 32262
	lwx		r23, r9, r61				# 32262
	lw		r20, 1(r23)				# 8279
	sw		r10, 0(r54)				# 28622
	addi	r51, r0, 0				# 28095
	lwx		r49, r26, r51				# 28095
	lw		r9, 0(r49)				# 28128
	cmpi	r9, -1
	beq		.b48850				# 28164
.b48853:
	cmpi	r9, 99
	beq		.b48855				# 28213
.b48856:
	lwx		r18, r36, r9				# 18636
	lw		r11, 10(r18)				# 6561
	lw		r38, 0(r11)				# 18698
	lw		r16, 1(r11)				# 18723
	lw		r43, 2(r11)				# 18748
	lw		r60, 1(r20)				# 8141
	lwx		r44, r60, r9				# 18807
	lw		r9, 1(r18)				# 2994
	cmpi	r9, 1
	beq		.b48962				# 18869
.b48963:
	cmpi	r9, 2
	beq		.b48988				# 18950
.b48989:
	lw		r8, 0(r44)				# 18204
	fcmp	r8, r62
	beq		.b48854				# 3128
.b48993:
	lw		r15, 1(r44)				# 18278
	lw		r9, 2(r44)				# 18298
	fmul	r9, r9, r16				# 18278
	faddmul	r9, r15, r38, r9				# 18278
	lw		r15, 3(r44)				# 18318
	faddmul	r38, r15, r43, r9				# 18265
	lw		r9, 3(r11)				# 18342
	fmul	r15, r38, r38				# 18377
	fmul	r9, r8, r9				# 18377
	fsub	r15, r15, r9				# 18369
	fcmp	r15, r62
	ble		.b48854				# 3158
.b48995:
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48997				# 18435
.b48998:
	fsqrt	r9, r15				# 227
	fadd	r15, r38, r9				# 18476
	lw		r9, 4(r44)				# 18476
	fmul	r9, r15, r9				# 18457
	lli		r15, solver_dist.2563				# 18457
	sw		r9, 0(r15)				# 18457
.b49000:
	lli		r18, solver_dist.2563				# 28381
	lw		r9, 0(r18)				# 28381
	lw		r15, 0(r54)				# 28414
	fcmp	r15, r9
	ble		.b48854				# 3098
.b49002:
	addi	r38, r0, 1				# 27829
	lwx		r15, r49, r38				# 27829
	cmpi	r15, -1
	beq		.b48854				# 27860
.b49005:
	lli		r9, and_net.2554				# 27885
	lwx		r16, r9, r15				# 27885
	addi	r44, r0, 0				# 26885
	lw		r6, 0(r20)				# 8078
	lwx		r52, r16, r44				# 26915
	cmpi	r52, -1
	beq		.b49006				# 26952
.b49009:
	lwx		r43, r36, r52				# 18636
	lw		r8, 10(r43)				# 6561
	lw		r11, 0(r8)				# 18698
	lw		r15, 1(r8)				# 18723
	lw		r32, 2(r8)				# 18748
	lwx		r31, r60, r52				# 18807
	lw		r9, 1(r43)				# 2994
	cmpi	r9, 1
	beq		.b49011				# 18869
.b49012:
	cmpi	r9, 2
	beq		.b49037				# 18950
.b49038:
	lw		r55, 0(r31)				# 18204
	fcmp	r55, r62
	beq		.b49048				# 3128
.b49042:
	lw		r9, 1(r31)				# 18278
	lw		r24, 2(r31)				# 18298
	fmul	r15, r24, r15				# 18278
	faddmul	r15, r9, r11, r15				# 18278
	lw		r9, 3(r31)				# 18318
	faddmul	r15, r9, r32, r15				# 18265
	lw		r9, 3(r8)				# 18342
	fmul	r8, r15, r15				# 18377
	fmul	r9, r55, r9				# 18377
	fsub	r9, r8, r9				# 18369
	fcmp	r9, r62
	ble		.b49048				# 3158
.b49044:
	lw		r8, 6(r43)				# 3372
	cmpi	r8, 0
	beq		.b49046				# 18435
.b49047:
	fsqrt	r9, r9				# 227
	fadd	r15, r15, r9				# 18476
	lw		r9, 4(r31)				# 18476
	fmul	r9, r15, r9				# 18457
	sw		r9, 0(r18)				# 18457
	addi	r8, r0, 1				# 18580
	lw		r9, 0(r18)				# 27058
	fcmp	r9, r62
	ble		.b49052				# 3098
.b49054:
	lw		r15, 0(r54)				# 27125
	fcmp	r15, r9
	ble		.b49052				# 3098
.b49056:
	addis	r15, r0, 15395
	ori		r15, r15, 55050				# 27169
	fadd	r11, r9, r15				# 27161
	lw		r9, 0(r6)				# 27198
	faddmul	r55, r9, r11, r33				# 27189
	lw		r9, 1(r6)				# 27247
	faddmul	r43, r9, r11, r1				# 27238
	lw		r9, 2(r6)				# 27296
	faddmul	r32, r9, r11, r27				# 27287
	addi	r15, r0, 0				# 23025
	lwx		r9, r16, r15				# 23025
	cmpi	r9, -1
	beq		.b49106				# 23052
.b49060:
	lwx		r31, r36, r9				# 23095
	lw		r6, 5(r31)				# 4475
	lw		r9, 0(r6)				# 22709
	fsub	r34, r55, r9				# 22700
	lw		r9, 1(r6)				# 22741
	fsub	r24, r43, r9				# 22732
	lw		r9, 2(r6)				# 22773
	fsub	r58, r32, r9				# 22764
	lw		r40, 1(r31)				# 2994
	cmpi	r40, 1
	beq		.b49062				# 22824
.b49063:
	cmpi	r40, 2
	beq		.b49075				# 22882
.b49076:
	fmul	r21, r34, r34				# 14374
	lw		r6, 4(r31)				# 3734
	lw		r45, 0(r6)				# 14374
	fmul	r22, r24, r24				# 14400
	lw		r9, 1(r6)				# 14400
	fmul	r9, r22, r9				# 14374
	faddmul	r9, r21, r45, r9				# 14374
	fmul	r45, r58, r58				# 14426
	lw		r6, 2(r6)				# 14426
	faddmul	r9, r45, r6, r9				# 14354
	lw		r6, 3(r31)				# 3553
	cmpi	r6, 0
	beq		.b49088				# 14456
.b49089:
	fmul	r6, r24, r58				# 14522
	lw		r21, 9(r31)				# 5989
	lw		r45, 0(r21)				# 14522
	faddmul	r45, r6, r45, r9				# 14503
	fmul	r9, r58, r34				# 14556
	lw		r6, 1(r21)				# 14556
	faddmul	r6, r9, r6, r45				# 14503
	fmul	r24, r34, r24				# 14590
	lw		r9, 2(r21)				# 14590
	faddmul	r9, r24, r9, r6				# 14503
	cmpi	r40, 3
	beq		.b49091				# 22583
.b49092:
	lw		r6, 6(r31)				# 3372
	fcmp	r62, r9
	ble		.b49094				# 3188
.b49095:
	addi	r9, r0, 1				# 3188
	cmpi	r6, 0
	beq		.b49097				# 765
.b49098:
	cmpi	r9, 0
	beq		.b49103				# 775
.b49052:
	addi	r44, r44, 1				# 27573
	lw		r6, 0(r20)				# 8078
	lwx		r52, r16, r44				# 26915
	cmpi	r52, -1
	beq		.b49006				# 26952
	b		.b49009
.b49006:
	addi	r38, r38, 1				# 27971
	lwx		r15, r49, r38				# 27829
	cmpi	r15, -1
	beq		.b48854				# 27860
	b		.b49005
.b48854:
	addi	r51, r51, 1				# 28519
	lwx		r49, r26, r51				# 28095
	lw		r9, 0(r49)				# 28128
	cmpi	r9, -1
	beq		.b48850				# 28164
	b		.b48853
.b48850:
	lw		r9, 0(r54)				# 28698
	fcmp	r9, r59
	ble		.b49107				# 3098
.b49109:
	addis	r15, r0, 19646
	ori		r15, r15, 48160				# 28751
	fcmp	r15, r9
	ble		.b49107				# 3098
.b49111:
	lw		r9, 0(r2)				# 32393
	mul16i	r9, r9, 4				# 32393
	lw		r15, 0(r17)				# 32393
	add		r15, r9, r15				# 32376
	lw		r9, 0(r23)				# 8211
	cmp		r15, r9
	beq		.b49112				# 32454
.b49107:
	addi	r61, r61, -1				# 32856
	cmpi	r61, 0
	bge		.b48848				# 32237
	b		.b48846
.b49112:
	addi	r15, r0, 0				# 24323
	lwx		r38, r26, r15				# 24323
	lw		r11, 0(r38)				# 24355
	cmpi	r11, -1
	beq		.b49401				# 24391
.b49117:
	cmpi	r11, 99
	beq		.b49285				# 24451
.b49120:
	lwx		r49, r36, r11				# 17557
	lw		r18, 0(r50)				# 17595
	lw		r9, 5(r49)				# 4475
	lw		r51, 0(r9)				# 17595
	fsub	r32, r18, r51				# 17586
	lw		r16, 1(r50)				# 17632
	lw		r51, 1(r9)				# 17632
	fsub	r52, r16, r51				# 17623
	lw		r60, 2(r50)				# 17669
	lw		r9, 2(r9)				# 17669
	fsub	r44, r60, r9				# 17660
	lli		r8, consts.2632				# 17731
	lwx		r11, r8, r11				# 17731
	lw		r6, 1(r49)				# 2994
	cmpi	r6, 1
	beq		.b49122				# 17793
.b49123:
	cmpi	r6, 2
	beq		.b49148				# 17874
.b49149:
	lw		r55, 0(r11)				# 17054
	fcmp	r55, r62
	beq		.b49284				# 3128
.b49153:
	lw		r51, 1(r11)				# 17128
	lw		r9, 2(r11)				# 17148
	fmul	r9, r9, r52				# 17128
	faddmul	r51, r51, r32, r9				# 17128
	lw		r9, 3(r11)				# 17168
	faddmul	r43, r9, r44, r51				# 17115
	fmul	r51, r32, r32				# 14374
	lw		r31, 4(r49)				# 3734
	lw		r24, 0(r31)				# 14374
	fmul	r9, r52, r52				# 14400
	lw		r40, 1(r31)				# 14400
	fmul	r9, r9, r40				# 14374
	faddmul	r9, r51, r24, r9				# 14374
	fmul	r24, r44, r44				# 14426
	lw		r51, 2(r31)				# 14426
	faddmul	r9, r24, r51, r9				# 14354
	lw		r51, 3(r49)				# 3553
	cmpi	r51, 0
	beq		.b49155				# 14456
.b49156:
	fmul	r24, r52, r44				# 14522
	lw		r51, 9(r49)				# 5989
	lw		r31, 0(r51)				# 14522
	faddmul	r31, r24, r31, r9				# 14503
	fmul	r9, r44, r32				# 14556
	lw		r44, 1(r51)				# 14556
	faddmul	r9, r9, r44, r31				# 14503
	fmul	r44, r32, r52				# 14590
	lw		r51, 2(r51)				# 14590
	faddmul	r9, r44, r51, r9				# 14503
	cmpi	r6, 3
	beq		.b49158				# 17239
.b49159:
.b49157:
	fmul	r51, r43, r43				# 17295
	fmul	r9, r55, r9				# 17295
	fsub	r51, r51, r9				# 17287
	fcmp	r51, r62
	ble		.b49284				# 3158
.b49161:
	lw		r9, 6(r49)				# 3372
	cmpi	r9, 0
	beq		.b49163				# 17353
.b49164:
	fsqrt	r9, r51				# 227
	fadd	r9, r43, r9				# 17394
	lw		r51, 4(r11)				# 17394
	fmul	r51, r9, r51				# 17375
	lli		r9, solver_dist.2563				# 17375
	sw		r51, 0(r9)				# 17375
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r59, r9
	ble		.b49284				# 3098
.b49168:
	addi	r51, r0, 1				# 24006
	lwx		r9, r38, r51				# 24006
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
	lwx		r6, r36, r32				# 17557
	lw		r55, 5(r6)				# 4475
	lw		r9, 0(r55)				# 17595
	fsub	r49, r18, r9				# 17586
	lw		r9, 1(r55)				# 17632
	fsub	r43, r16, r9				# 17623
	lw		r9, 2(r55)				# 17669
	fsub	r40, r60, r9				# 17660
	lwx		r31, r8, r32				# 17731
	lw		r55, 1(r6)				# 2994
	cmpi	r55, 1
	beq		.b49178				# 17793
.b49179:
	cmpi	r55, 2
	beq		.b49204				# 17874
.b49205:
	lw		r32, 0(r31)				# 17054
	fcmp	r32, r62
	beq		.b49208				# 3128
.b49209:
	lw		r24, 1(r31)				# 17128
	lw		r9, 2(r31)				# 17148
	fmul	r9, r9, r43				# 17128
	faddmul	r9, r24, r49, r9				# 17128
	lw		r24, 3(r31)				# 17168
	faddmul	r24, r24, r40, r9				# 17115
	fmul	r34, r49, r49				# 14374
	lw		r21, 4(r6)				# 3734
	lw		r45, 0(r21)				# 14374
	fmul	r58, r43, r43				# 14400
	lw		r9, 1(r21)				# 14400
	fmul	r9, r58, r9				# 14374
	faddmul	r9, r34, r45, r9				# 14374
	fmul	r34, r40, r40				# 14426
	lw		r58, 2(r21)				# 14426
	faddmul	r9, r34, r58, r9				# 14354
	lw		r58, 3(r6)				# 3553
	cmpi	r58, 0
	beq		.b49211				# 14456
.b49212:
	fmul	r34, r43, r40				# 14522
	lw		r58, 9(r6)				# 5989
	lw		r45, 0(r58)				# 14522
	faddmul	r34, r34, r45, r9				# 14503
	fmul	r9, r40, r49				# 14556
	lw		r40, 1(r58)				# 14556
	faddmul	r9, r9, r40, r34				# 14503
	fmul	r49, r49, r43				# 14590
	lw		r43, 2(r58)				# 14590
	faddmul	r9, r49, r43, r9				# 14503
	cmpi	r55, 3
	beq		.b49214				# 17239
.b49215:
.b49213:
	fmul	r49, r24, r24				# 17295
	fmul	r9, r32, r9				# 17295
	fsub	r49, r49, r9				# 17287
	fcmp	r49, r62
	ble		.b49216				# 3158
.b49217:
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49219				# 17353
.b49220:
	fsqrt	r9, r49				# 227
	fadd	r49, r24, r9				# 17394
	lw		r9, 4(r31)				# 17394
	fmul	r9, r49, r9				# 17375
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
	lwx		r6, r36, r9				# 23095
	lw		r31, 5(r6)				# 4475
	lw		r9, 0(r31)				# 22709
	fsub	r34, r55, r9				# 22700
	lw		r9, 1(r31)				# 22741
	fsub	r58, r32, r9				# 22732
	lw		r9, 2(r31)				# 22773
	fsub	r31, r43, r9				# 22764
	lw		r40, 1(r6)				# 2994
	cmpi	r40, 1
	beq		.b49235				# 22824
.b49236:
	cmpi	r40, 2
	beq		.b49248				# 22882
.b49249:
	fmul	r24, r34, r34				# 14374
	lw		r21, 4(r6)				# 3734
	lw		r45, 0(r21)				# 14374
	fmul	r22, r58, r58				# 14400
	lw		r9, 1(r21)				# 14400
	fmul	r9, r22, r9				# 14374
	faddmul	r24, r24, r45, r9				# 14374
	fmul	r45, r31, r31				# 14426
	lw		r9, 2(r21)				# 14426
	faddmul	r9, r45, r9, r24				# 14354
	lw		r24, 3(r6)				# 3553
	cmpi	r24, 0
	beq		.b49261				# 14456
.b49262:
	fmul	r45, r58, r31				# 14522
	lw		r24, 9(r6)				# 5989
	lw		r21, 0(r24)				# 14522
	faddmul	r45, r45, r21, r9				# 14503
	fmul	r31, r31, r34				# 14556
	lw		r9, 1(r24)				# 14556
	faddmul	r31, r31, r9, r45				# 14503
	fmul	r58, r34, r58				# 14590
	lw		r9, 2(r24)				# 14590
	faddmul	r9, r58, r9, r31				# 14503
	cmpi	r40, 3
	beq		.b49264				# 22583
.b49265:
	lw		r6, 6(r6)				# 3372
	fcmp	r62, r9
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
	addi	r51, r51, 1				# 24216
	lwx		r9, r38, r51				# 24006
	cmpi	r9, -1
	beq		.b49284				# 24037
	b		.b49172
.b49284:
	addi	r15, r15, 1				# 24896
	lwx		r38, r26, r15				# 24323
	lw		r11, 0(r38)				# 24355
	cmpi	r11, -1
	beq		.b49401				# 24391
	b		.b49117
.b49401:
	lw		r15, 0(r20)				# 8078
	lw		r20, 0(r15)				# 1949
	lw		r51, 1(r15)				# 1967
	fmul	r9, r47, r51				# 1949
	faddmul	r9, r53, r20, r9				# 1949
	lw		r44, 2(r15)				# 1985
	faddmul	r15, r14, r44, r9				# 32566
	lw		r23, 2(r23)				# 8350
	fmul	r9, r23, r29				# 32670
	fmul	r15, r9, r15				# 32657
	fmul	r9, r56, r51				# 1949
	faddmul	r9, r19, r20, r9				# 1949
	faddmul	r9, r12, r44, r9				# 32719
	fmul	r23, r23, r9				# 32705
	fcmp	r15, r62
	ble		.b49403				# 3158
.b49405:
	lw		r51, 0(r41)				# 2129
	lw		r9, 0(r48)				# 2141
	faddmul	r9, r15, r9, r51				# 2117
	sw		r9, 0(r41)				# 2117
	lw		r51, 1(r41)				# 2171
	lw		r9, 1(r48)				# 2183
	faddmul	r9, r15, r9, r51				# 2159
	sw		r9, 1(r41)				# 2117
	lw		r51, 2(r41)				# 2213
	lw		r9, 2(r48)				# 2225
	faddmul	r9, r15, r9, r51				# 2201
	sw		r9, 2(r41)				# 2201
	fcmp	r23, r62
	ble		.b49107				# 3158
.b49407:
	fmul	r9, r23, r23				# 32023
	fmul	r15, r9, r9				# 32023
	lw		r9, 0(r41)				# 32078
	faddmul	r9, r15, r39, r9				# 32067
	sw		r9, 0(r41)				# 32067
	lw		r9, 1(r41)				# 32109
	faddmul	r9, r15, r39, r9				# 32098
	sw		r9, 1(r41)				# 32067
	lw		r9, 2(r41)				# 32140
	faddmul	r9, r15, r39, r9				# 32129
	sw		r9, 2(r41)				# 32129
	addi	r61, r61, -1				# 32856
	cmpi	r61, 0
	bge		.b48848				# 32237
	b		.b48846
.b49403:
	fcmp	r23, r62
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
	lli		r51, and_net.2554				# 24078
	lwx		r8, r51, r9				# 24078
	addi	r44, r0, 0				# 23266
	lwx		r18, r8, r44				# 23266
	cmpi	r18, -1
	beq		.b49397				# 23266
.b49293:
	lwx		r52, r36, r18				# 17557
	lw		r11, 0(r50)				# 17595
	lw		r51, 5(r52)				# 4475
	lw		r9, 0(r51)				# 17595
	fsub	r43, r11, r9				# 17586
	lw		r60, 1(r50)				# 17632
	lw		r9, 1(r51)				# 17632
	fsub	r32, r60, r9				# 17623
	lw		r16, 2(r50)				# 17669
	lw		r9, 2(r51)				# 17669
	fsub	r55, r16, r9				# 17660
	lli		r9, consts.2632				# 17731
	lwx		r18, r9, r18				# 17731
	lw		r31, 1(r52)				# 2994
	cmpi	r31, 1
	beq		.b49295				# 17793
.b49296:
	cmpi	r31, 2
	beq		.b49321				# 17874
.b49322:
	lw		r6, 0(r18)				# 17054
	fcmp	r6, r62
	beq		.b49325				# 3128
.b49326:
	lw		r51, 1(r18)				# 17128
	lw		r9, 2(r18)				# 17148
	fmul	r9, r9, r32				# 17128
	faddmul	r51, r51, r43, r9				# 17128
	lw		r9, 3(r18)				# 17168
	faddmul	r24, r9, r55, r51				# 17115
	fmul	r40, r43, r43				# 14374
	lw		r58, 4(r52)				# 3734
	lw		r51, 0(r58)				# 14374
	fmul	r9, r32, r32				# 14400
	lw		r34, 1(r58)				# 14400
	fmul	r9, r9, r34				# 14374
	faddmul	r51, r40, r51, r9				# 14374
	fmul	r9, r55, r55				# 14426
	lw		r40, 2(r58)				# 14426
	faddmul	r9, r9, r40, r51				# 14354
	lw		r51, 3(r52)				# 3553
	cmpi	r51, 0
	beq		.b49328				# 14456
.b49329:
	fmul	r51, r32, r55				# 14522
	lw		r58, 9(r52)				# 5989
	lw		r40, 0(r58)				# 14522
	faddmul	r40, r51, r40, r9				# 14503
	fmul	r9, r55, r43				# 14556
	lw		r51, 1(r58)				# 14556
	faddmul	r55, r9, r51, r40				# 14503
	fmul	r51, r43, r32				# 14590
	lw		r9, 2(r58)				# 14590
	faddmul	r9, r51, r9, r55				# 14503
	cmpi	r31, 3
	beq		.b49331				# 17239
.b49332:
.b49330:
	fmul	r51, r24, r24				# 17295
	fmul	r9, r6, r9				# 17295
	fsub	r9, r51, r9				# 17287
	fcmp	r9, r62
	ble		.b49333				# 3158
.b49334:
	lw		r51, 6(r52)				# 3372
	cmpi	r51, 0
	beq		.b49336				# 17353
.b49337:
	fsqrt	r9, r9				# 227
	fadd	r51, r24, r9				# 17394
	lw		r9, 4(r18)				# 17394
	fmul	r9, r51, r9				# 17375
	lli		r51, solver_dist.2563				# 17375
	sw		r9, 0(r51)				# 17375
.b49335:
	lli		r9, solver_dist.2563				# 23423
	lw		r51, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r51
	ble		.b49343				# 3098
.b49344:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r18, r51, r9				# 23516
	lli		r51, light.2545				# 23554
	lw		r9, 0(r51)				# 23554
	faddmul	r11, r9, r18, r11				# 23545
	lw		r9, 1(r51)				# 23613
	faddmul	r60, r9, r18, r60				# 23604
	lw		r9, 2(r51)				# 23672
	faddmul	r16, r9, r18, r16				# 23663
	addi	r51, r0, 0				# 23025
	lwx		r9, r8, r51				# 23025
	cmpi	r9, -1
	beq		.b49107				# 23052
.b49350:
	lwx		r52, r36, r9				# 23095
	lw		r9, 5(r52)				# 4475
	lw		r18, 0(r9)				# 22709
	fsub	r55, r11, r18				# 22700
	lw		r18, 1(r9)				# 22741
	fsub	r6, r60, r18				# 22732
	lw		r9, 2(r9)				# 22773
	fsub	r32, r16, r9				# 22764
	lw		r43, 1(r52)				# 2994
	cmpi	r43, 1
	beq		.b49352				# 22824
.b49353:
	cmpi	r43, 2
	beq		.b49365				# 22882
.b49366:
	fmul	r40, r55, r55				# 14374
	lw		r31, 4(r52)				# 3734
	lw		r24, 0(r31)				# 14374
	fmul	r9, r6, r6				# 14400
	lw		r18, 1(r31)				# 14400
	fmul	r9, r9, r18				# 14374
	faddmul	r18, r40, r24, r9				# 14374
	fmul	r24, r32, r32				# 14426
	lw		r9, 2(r31)				# 14426
	faddmul	r9, r24, r9, r18				# 14354
	lw		r18, 3(r52)				# 3553
	cmpi	r18, 0
	beq		.b49378				# 14456
.b49379:
	fmul	r24, r6, r32				# 14522
	lw		r31, 9(r52)				# 5989
	lw		r18, 0(r31)				# 14522
	faddmul	r18, r24, r18, r9				# 14503
	fmul	r32, r32, r55				# 14556
	lw		r9, 1(r31)				# 14556
	faddmul	r9, r32, r9, r18				# 14503
	fmul	r32, r55, r6				# 14590
	lw		r18, 2(r31)				# 14590
	faddmul	r9, r32, r18, r9				# 14503
	cmpi	r43, 3
	beq		.b49381				# 22583
.b49382:
	lw		r18, 6(r52)				# 3372
	fcmp	r62, r9
	ble		.b49384				# 3188
.b49385:
	addi	r9, r0, 1				# 3188
	cmpi	r18, 0
	beq		.b49387				# 765
.b49388:
	cmpi	r9, 0
	beq		.b49393				# 775
.b49395:
	addi	r44, r44, 1				# 23786
	lwx		r18, r8, r44				# 23266
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
	addi	r15, r15, 1				# 24833
	lwx		r38, r26, r15				# 24323
	lw		r11, 0(r38)				# 24355
	cmpi	r11, -1
	beq		.b49401				# 24391
	b		.b49117
.b49393:
	addi	r51, r51, 1				# 23162
	lwx		r9, r8, r51				# 23025
	cmpi	r9, -1
	beq		.b49107				# 23052
	b		.b49350
.b49387:
	cmpi	r9, 0
	beq		.b49395				# 22625
	b		.b49393
.b49384:
	addi	r9, r0, 0				# 3188
	cmpi	r18, 0
	beq		.b49387				# 765
	b		.b49388
.b49381:
	fsub	r9, r9, r7				# 22604
	lw		r18, 6(r52)				# 3372
	fcmp	r62, r9
	ble		.b49384				# 3188
	b		.b49385
.b49378:
	cmpi	r43, 3
	beq		.b49381				# 22583
	b		.b49382
.b49365:
	lw		r43, 4(r52)				# 4293
	lw		r18, 0(r43)				# 2037
	lw		r9, 1(r43)				# 2052
	fmul	r9, r9, r6				# 2037
	faddmul	r18, r18, r55, r9				# 2037
	lw		r9, 2(r43)				# 2067
	faddmul	r9, r9, r32, r18				# 22411
	lw		r18, 6(r52)				# 3372
	fcmp	r62, r9
	ble		.b49368				# 3188
.b49369:
	addi	r9, r0, 1				# 3188
	cmpi	r18, 0
	beq		.b49371				# 765
.b49372:
	cmpi	r9, 0
	beq		.b49393				# 775
	b		.b49395
.b49371:
	cmpi	r9, 0
	beq		.b49395				# 22459
	b		.b49393
.b49368:
	addi	r9, r0, 0				# 3188
	cmpi	r18, 0
	beq		.b49371				# 765
	b		.b49372
.b49352:
	fabs	r18, r55				# 322
	lw		r43, 4(r52)				# 3734
	lw		r9, 0(r43)				# 22178
	fcmp	r9, r18
	ble		.b49361				# 3098
.b49356:
	fabs	r18, r6				# 322
	lw		r9, 1(r43)				# 22224
	fcmp	r9, r18
	ble		.b49361				# 3098
.b49358:
	fabs	r18, r32				# 322
	lw		r9, 2(r43)				# 22261
	fcmp	r9, r18
	ble		.b49361				# 3098
.b49362:
	lw		r9, 6(r52)				# 3372
	cmpi	r9, 0
	beq		.b49393				# 23092
	b		.b49395
.b49361:
	lw		r9, 6(r52)				# 3372
	cmpi	r9, 0
	beq		.b49395				# 22348
	b		.b49393
.b49343:
	lw		r9, 6(r52)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
.b49346:
	addi	r44, r44, 1				# 23885
	lwx		r18, r8, r44				# 23266
	cmpi	r18, -1
	beq		.b49397				# 23266
	b		.b49293
.b49336:
	fsqrt	r9, r9				# 227
	fsub	r51, r24, r9				# 17458
	lw		r9, 4(r18)				# 17458
	fmul	r9, r51, r9				# 17439
	lli		r51, solver_dist.2563				# 17439
	sw		r9, 0(r51)				# 17439
	b		.b49335				# 17439
.b49333:
	lli		r9, solver_dist.2563				# 23423
	lw		r51, 0(r9)				# 23423
	lw		r9, 6(r52)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
	b		.b49346
.b49331:
	fsub	r9, r9, r7				# 17260
	b		.b49330				# 17260
.b49328:
	cmpi	r31, 3
	beq		.b49331				# 17239
	b		.b49332
.b49325:
	lli		r9, solver_dist.2563				# 23423
	lw		r51, 0(r9)				# 23423
	lw		r9, 6(r52)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
	b		.b49346
.b49321:
	lw		r9, 0(r18)				# 16870
	fcmp	r62, r9
	ble		.b49323				# 3188
.b49324:
	lw		r9, 1(r18)				# 16924
	lw		r51, 2(r18)				# 16944
	fmul	r51, r51, r32				# 16924
	faddmul	r9, r9, r43, r51				# 16924
	lw		r51, 3(r18)				# 16964
	faddmul	r51, r51, r55, r9				# 16899
	lli		r9, solver_dist.2563				# 16899
	sw		r51, 0(r9)				# 16899
	lli		r9, solver_dist.2563				# 23423
	lw		r51, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r51
	ble		.b49343				# 3098
	b		.b49344
.b49323:
	lli		r9, solver_dist.2563				# 23423
	lw		r51, 0(r9)				# 23423
	lw		r9, 6(r52)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
	b		.b49346
.b49295:
	lw		r9, 0(r18)				# 15996
	fsub	r9, r9, r43				# 15995
	lw		r51, 1(r18)				# 15995
	fmul	r40, r9, r51				# 15986
	lli		r58, v3.2630				# 16056
	lw		r24, 1(r58)				# 16056
	faddmul	r9, r40, r24, r32				# 16050
	fabs	r9, r9				# 322
	lw		r31, 4(r52)				# 3920
	lw		r6, 1(r31)				# 16043
	fcmp	r6, r9
	ble		.b49304				# 3098
.b49299:
	lw		r9, 2(r58)				# 16117
	faddmul	r9, r40, r9, r55				# 16111
	fabs	r9, r9				# 322
	lw		r34, 2(r31)				# 16104
	fcmp	r34, r9
	ble		.b49304				# 3098
.b49301:
	fcmp	r51, r62
	beq		.b49304				# 3128
.b49305:
	lli		r9, solver_dist.2563				# 16226
	sw		r40, 0(r9)				# 16226
	lli		r9, solver_dist.2563				# 23423
	lw		r51, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r51
	ble		.b49343				# 3098
	b		.b49344
.b49304:
	lw		r9, 2(r18)				# 16269
	fsub	r9, r9, r32				# 16268
	lw		r40, 3(r18)				# 16268
	fmul	r45, r9, r40				# 16259
	lw		r34, 0(r58)				# 16330
	faddmul	r9, r45, r34, r43				# 16324
	fabs	r9, r9				# 322
	lw		r51, 0(r31)				# 16317
	fcmp	r51, r9
	ble		.b49313				# 3098
.b49308:
	lw		r9, 2(r58)				# 16391
	faddmul	r9, r45, r9, r55				# 16385
	fabs	r58, r9				# 322
	lw		r9, 2(r31)				# 16378
	fcmp	r9, r58
	ble		.b49313				# 3098
.b49310:
	fcmp	r40, r62
	beq		.b49313				# 3128
.b49314:
	lli		r9, solver_dist.2563				# 16500
	sw		r45, 0(r9)				# 16500
	lli		r9, solver_dist.2563				# 23423
	lw		r51, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r51
	ble		.b49343				# 3098
	b		.b49344
.b49313:
	lw		r9, 4(r18)				# 16543
	fsub	r9, r9, r55				# 16542
	lw		r55, 5(r18)				# 16542
	fmul	r18, r9, r55				# 16533
	faddmul	r9, r18, r34, r43				# 16598
	fabs	r9, r9				# 322
	fcmp	r51, r9
	ble		.b49315				# 3098
.b49316:
	faddmul	r9, r18, r24, r32				# 16659
	fabs	r9, r9				# 322
	fcmp	r6, r9
	ble		.b49317				# 3098
.b49318:
	fcmp	r55, r62
	beq		.b49319				# 3128
.b49320:
	lli		r9, solver_dist.2563				# 16774
	sw		r18, 0(r9)				# 16774
	lli		r9, solver_dist.2563				# 23423
	lw		r51, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r51
	ble		.b49343				# 3098
	b		.b49344
.b49319:
	lli		r9, solver_dist.2563				# 23423
	lw		r51, 0(r9)				# 23423
	lw		r9, 6(r52)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
	b		.b49346
.b49317:
	lli		r9, solver_dist.2563				# 23423
	lw		r51, 0(r9)				# 23423
	lw		r9, 6(r52)				# 3372
	cmpi	r9, 0
	beq		.b49397				# 23849
	b		.b49346
.b49315:
	lli		r9, solver_dist.2563				# 23423
	lw		r51, 0(r9)				# 23423
	lw		r9, 6(r52)				# 3372
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
	fsub	r9, r9, r7				# 22604
	lw		r6, 6(r6)				# 3372
	fcmp	r62, r9
	ble		.b49267				# 3188
	b		.b49268
.b49261:
	cmpi	r40, 3
	beq		.b49264				# 22583
	b		.b49265
.b49248:
	lw		r24, 4(r6)				# 4293
	lw		r40, 0(r24)				# 2037
	lw		r9, 1(r24)				# 2052
	fmul	r9, r9, r58				# 2037
	faddmul	r9, r40, r34, r9				# 2037
	lw		r24, 2(r24)				# 2067
	faddmul	r9, r24, r31, r9				# 22411
	lw		r6, 6(r6)				# 3372
	fcmp	r62, r9
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
	fabs	r9, r34				# 322
	lw		r24, 4(r6)				# 3734
	lw		r40, 0(r24)				# 22178
	fcmp	r40, r9
	ble		.b49244				# 3098
.b49239:
	fabs	r9, r58				# 322
	lw		r40, 1(r24)				# 22224
	fcmp	r40, r9
	ble		.b49244				# 3098
.b49241:
	fabs	r9, r31				# 322
	lw		r31, 2(r24)				# 22261
	fcmp	r31, r9
	ble		.b49244				# 3098
.b49245:
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49276				# 23092
	b		.b49278
.b49244:
	lw		r9, 6(r6)				# 3372
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
	fsub	r49, r24, r9				# 17458
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
	fsub	r9, r9, r7				# 17260
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
	fcmp	r62, r9
	ble		.b49206				# 3188
.b49207:
	lw		r9, 1(r31)				# 16924
	lw		r32, 2(r31)				# 16944
	fmul	r32, r32, r43				# 16924
	faddmul	r9, r9, r49, r32				# 16924
	lw		r49, 3(r31)				# 16964
	faddmul	r9, r49, r40, r9				# 16899
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
	lli		r24, v3.2630				# 16056
	lw		r55, 1(r24)				# 16056
	faddmul	r9, r58, r55, r43				# 16050
	fabs	r32, r9				# 322
	lw		r34, 4(r6)				# 3920
	lw		r9, 1(r34)				# 16043
	fcmp	r9, r32
	ble		.b49187				# 3098
.b49182:
	lw		r32, 2(r24)				# 16117
	faddmul	r32, r58, r32, r40				# 16111
	fabs	r32, r32				# 322
	lw		r21, 2(r34)				# 16104
	fcmp	r21, r32
	ble		.b49187				# 3098
.b49184:
	fcmp	r45, r62
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
	fmul	r45, r58, r32				# 16259
	lw		r58, 0(r24)				# 16330
	faddmul	r21, r45, r58, r49				# 16324
	fabs	r22, r21				# 322
	lw		r21, 0(r34)				# 16317
	fcmp	r21, r22
	ble		.b49196				# 3098
.b49191:
	lw		r24, 2(r24)				# 16391
	faddmul	r24, r45, r24, r40				# 16385
	fabs	r22, r24				# 322
	lw		r24, 2(r34)				# 16378
	fcmp	r24, r22
	ble		.b49196				# 3098
.b49193:
	fcmp	r32, r62
	beq		.b49196				# 3128
.b49197:
	sw		r45, 0(r11)				# 16500
	lw		r49, 0(r11)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r49
	ble		.b49226				# 3098
	b		.b49227
.b49196:
	lw		r32, 4(r31)				# 16543
	fsub	r32, r32, r40				# 16542
	lw		r31, 5(r31)				# 16542
	fmul	r32, r32, r31				# 16533
	faddmul	r49, r32, r58, r49				# 16598
	fabs	r49, r49				# 322
	fcmp	r21, r49
	ble		.b49198				# 3098
.b49199:
	faddmul	r49, r32, r55, r43				# 16659
	fabs	r49, r49				# 322
	fcmp	r9, r49
	ble		.b49200				# 3098
.b49201:
	fcmp	r31, r62
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
	fsqrt	r9, r51				# 227
	fsub	r9, r43, r9				# 17458
	lw		r51, 4(r11)				# 17458
	fmul	r9, r9, r51				# 17439
	lli		r51, solver_dist.2563				# 17439
	sw		r9, 0(r51)				# 17439
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r59, r9
	ble		.b49284				# 3098
	b		.b49168
.b49158:
	fsub	r9, r9, r7				# 17260
	b		.b49157				# 17260
.b49155:
	cmpi	r6, 3
	beq		.b49158				# 17239
	b		.b49159
.b49148:
	lw		r9, 0(r11)				# 16870
	fcmp	r62, r9
	ble		.b49284				# 3188
.b49151:
	lw		r9, 1(r11)				# 16924
	lw		r51, 2(r11)				# 16944
	fmul	r51, r51, r52				# 16924
	faddmul	r9, r9, r32, r51				# 16924
	lw		r51, 3(r11)				# 16964
	faddmul	r51, r51, r44, r9				# 16899
	lli		r9, solver_dist.2563				# 16899
	sw		r51, 0(r9)				# 16899
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r59, r9
	ble		.b49284				# 3098
	b		.b49168
.b49122:
	lw		r9, 0(r11)				# 15996
	fsub	r9, r9, r32				# 15995
	lw		r24, 1(r11)				# 15995
	fmul	r9, r9, r24				# 15986
	lli		r6, v3.2630				# 16056
	lw		r43, 1(r6)				# 16056
	faddmul	r51, r9, r43, r52				# 16050
	fabs	r51, r51				# 322
	lw		r49, 4(r49)				# 3920
	lw		r55, 1(r49)				# 16043
	fcmp	r55, r51
	ble		.b49131				# 3098
.b49126:
	lw		r51, 2(r6)				# 16117
	faddmul	r51, r9, r51, r44				# 16111
	fabs	r31, r51				# 322
	lw		r51, 2(r49)				# 16104
	fcmp	r51, r31
	ble		.b49131				# 3098
.b49128:
	fcmp	r24, r62
	beq		.b49131				# 3128
.b49132:
	lli		r51, solver_dist.2563				# 16226
	sw		r9, 0(r51)				# 16226
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r59, r9
	ble		.b49284				# 3098
	b		.b49168
.b49131:
	lw		r9, 2(r11)				# 16269
	fsub	r9, r9, r52				# 16268
	lw		r24, 3(r11)				# 16268
	fmul	r40, r9, r24				# 16259
	lw		r31, 0(r6)				# 16330
	faddmul	r9, r40, r31, r32				# 16324
	fabs	r9, r9				# 322
	lw		r51, 0(r49)				# 16317
	fcmp	r51, r9
	ble		.b49140				# 3098
.b49135:
	lw		r9, 2(r6)				# 16391
	faddmul	r9, r40, r9, r44				# 16385
	fabs	r9, r9				# 322
	lw		r49, 2(r49)				# 16378
	fcmp	r49, r9
	ble		.b49140				# 3098
.b49137:
	fcmp	r24, r62
	beq		.b49140				# 3128
.b49141:
	lli		r9, solver_dist.2563				# 16500
	sw		r40, 0(r9)				# 16500
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r59, r9
	ble		.b49284				# 3098
	b		.b49168
.b49140:
	lw		r9, 4(r11)				# 16543
	fsub	r9, r9, r44				# 16542
	lw		r49, 5(r11)				# 16542
	fmul	r44, r9, r49				# 16533
	faddmul	r9, r44, r31, r32				# 16598
	fabs	r9, r9				# 322
	fcmp	r51, r9
	ble		.b49284				# 3098
.b49143:
	faddmul	r9, r44, r43, r52				# 16659
	fabs	r9, r9				# 322
	fcmp	r55, r9
	ble		.b49284				# 3098
.b49145:
	fcmp	r49, r62
	beq		.b49284				# 3128
.b49147:
	lli		r9, solver_dist.2563				# 16774
	sw		r44, 0(r9)				# 16774
	lli		r11, solver_dist.2563				# 24609
	lw		r9, 0(r11)				# 24609
	fcmp	r59, r9
	ble		.b49284				# 3098
	b		.b49168
.b49103:
	addi	r15, r15, 1				# 23162
	lwx		r9, r16, r15				# 23025
	cmpi	r9, -1
	beq		.b49106				# 23052
	b		.b49060
.b49106:
	sw		r11, 0(r54)				# 27393
	sw		r55, 0(r50)				# 1162
	sw		r43, 1(r50)				# 1162
	sw		r32, 2(r50)				# 27393
	sw		r52, 0(r2)				# 27393
	sw		r8, 0(r17)				# 27485
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
	fsub	r9, r9, r7				# 22604
	lw		r6, 6(r31)				# 3372
	fcmp	r62, r9
	ble		.b49094				# 3188
	b		.b49095
.b49088:
	cmpi	r40, 3
	beq		.b49091				# 22583
	b		.b49092
.b49075:
	lw		r6, 4(r31)				# 4293
	lw		r40, 0(r6)				# 2037
	lw		r9, 1(r6)				# 2052
	fmul	r9, r9, r24				# 2037
	faddmul	r9, r40, r34, r9				# 2037
	lw		r6, 2(r6)				# 2067
	faddmul	r9, r6, r58, r9				# 22411
	lw		r6, 6(r31)				# 3372
	fcmp	r62, r9
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
	fabs	r40, r34				# 322
	lw		r9, 4(r31)				# 3734
	lw		r6, 0(r9)				# 22178
	fcmp	r6, r40
	ble		.b49071				# 3098
.b49066:
	fabs	r24, r24				# 322
	lw		r6, 1(r9)				# 22224
	fcmp	r6, r24
	ble		.b49071				# 3098
.b49068:
	fabs	r6, r58				# 322
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
	fsub	r15, r15, r9				# 18540
	lw		r9, 4(r31)				# 18540
	fmul	r9, r15, r9				# 18521
	sw		r9, 0(r18)				# 18521
	addi	r8, r0, 1				# 18580
	lw		r9, 0(r18)				# 27058
	fcmp	r9, r62
	ble		.b49052				# 3098
	b		.b49054
.b49048:
	lw		r9, 6(r43)				# 3372
	cmpi	r9, 0
	beq		.b49006				# 27653
.b49051:
	addi	r44, r44, 1				# 27691
	lw		r6, 0(r20)				# 8078
	lwx		r52, r16, r44				# 26915
	cmpi	r52, -1
	beq		.b49006				# 26952
	b		.b49009
.b49037:
	lw		r9, 0(r31)				# 18051
	fcmp	r62, r9
	ble		.b49048				# 3188
.b49040:
	lw		r15, 3(r8)				# 18099
	fmul	r9, r9, r15				# 18080
	sw		r9, 0(r18)				# 18080
	addi	r8, r0, 1				# 18129
	lw		r9, 0(r18)				# 27058
	fcmp	r9, r62
	ble		.b49052				# 3098
	b		.b49054
.b49011:
	lw		r9, 0(r31)				# 15996
	fsub	r9, r9, r11				# 15995
	lw		r34, 1(r31)				# 15995
	fmul	r8, r9, r34				# 15986
	lw		r55, 1(r6)				# 16056
	faddmul	r9, r8, r55, r15				# 16050
	fabs	r40, r9				# 322
	lw		r9, 4(r43)				# 3920
	lw		r24, 1(r9)				# 16043
	fcmp	r24, r40
	ble		.b49020				# 3098
.b49015:
	lw		r40, 2(r6)				# 16117
	faddmul	r40, r8, r40, r32				# 16111
	fabs	r58, r40				# 322
	lw		r40, 2(r9)				# 16104
	fcmp	r40, r58
	ble		.b49020				# 3098
.b49017:
	fcmp	r34, r62
	beq		.b49020				# 3128
.b49021:
	sw		r8, 0(r18)				# 16226
	addi	r8, r0, 1				# 16249
	lw		r9, 0(r18)				# 27058
	fcmp	r9, r62
	ble		.b49052				# 3098
	b		.b49054
.b49020:
	lw		r8, 2(r31)				# 16269
	fsub	r8, r8, r15				# 16268
	lw		r40, 3(r31)				# 16268
	fmul	r45, r8, r40				# 16259
	lw		r34, 0(r6)				# 16330
	faddmul	r8, r45, r34, r11				# 16324
	fabs	r8, r8				# 322
	lw		r58, 0(r9)				# 16317
	fcmp	r58, r8
	ble		.b49029				# 3098
.b49024:
	lw		r8, 2(r6)				# 16391
	faddmul	r8, r45, r8, r32				# 16385
	fabs	r8, r8				# 322
	lw		r9, 2(r9)				# 16378
	fcmp	r9, r8
	ble		.b49029				# 3098
.b49026:
	fcmp	r40, r62
	beq		.b49029				# 3128
.b49030:
	sw		r45, 0(r18)				# 16500
	addi	r8, r0, 2				# 16523
	lw		r9, 0(r18)				# 27058
	fcmp	r9, r62
	ble		.b49052				# 3098
	b		.b49054
.b49029:
	lw		r9, 4(r31)				# 16543
	fsub	r9, r9, r32				# 16542
	lw		r32, 5(r31)				# 16542
	fmul	r8, r9, r32				# 16533
	faddmul	r9, r8, r34, r11				# 16598
	fabs	r9, r9				# 322
	fcmp	r58, r9
	ble		.b49048				# 3098
.b49032:
	faddmul	r9, r8, r55, r15				# 16659
	fabs	r9, r9				# 322
	fcmp	r24, r9
	ble		.b49048				# 3098
.b49034:
	fcmp	r32, r62
	beq		.b49048				# 3128
.b49036:
	sw		r8, 0(r18)				# 16774
	addi	r8, r0, 3				# 16797
	lw		r9, 0(r18)				# 27058
	fcmp	r9, r62
	ble		.b49052				# 3098
	b		.b49054
.b48997:
	fsqrt	r9, r15				# 227
	fsub	r15, r38, r9				# 18540
	lw		r9, 4(r44)				# 18540
	fmul	r15, r15, r9				# 18521
	lli		r9, solver_dist.2563				# 18521
	sw		r15, 0(r9)				# 18521
	b		.b49000				# 28364
.b48988:
	lw		r15, 0(r44)				# 18051
	fcmp	r62, r15
	ble		.b48854				# 3188
.b48991:
	lw		r9, 3(r11)				# 18099
	fmul	r9, r15, r9				# 18080
	lli		r15, solver_dist.2563				# 18080
	sw		r9, 0(r15)				# 18080
	b		.b49000				# 28364
.b48962:
	lw		r6, 0(r20)				# 8078
	lw		r9, 0(r44)				# 15996
	fsub	r15, r9, r38				# 15995
	lw		r9, 1(r44)				# 15995
	fmul	r32, r15, r9				# 15986
	lw		r8, 1(r6)				# 16056
	faddmul	r15, r32, r8, r16				# 16050
	fabs	r52, r15				# 322
	lw		r15, 4(r18)				# 3920
	lw		r11, 1(r15)				# 16043
	fcmp	r11, r52
	ble		.b48971				# 3098
.b48966:
	lw		r18, 2(r6)				# 16117
	faddmul	r18, r32, r18, r43				# 16111
	fabs	r18, r18				# 322
	lw		r52, 2(r15)				# 16104
	fcmp	r52, r18
	ble		.b48971				# 3098
.b48968:
	fcmp	r9, r62
	beq		.b48971				# 3128
.b48972:
	lli		r9, solver_dist.2563				# 16226
	sw		r32, 0(r9)				# 16226
	b		.b49000				# 28364
.b48971:
	lw		r9, 2(r44)				# 16269
	fsub	r9, r9, r16				# 16268
	lw		r55, 3(r44)				# 16268
	fmul	r18, r9, r55				# 16259
	lw		r52, 0(r6)				# 16330
	faddmul	r9, r18, r52, r38				# 16324
	fabs	r9, r9				# 322
	lw		r31, 0(r15)				# 16317
	fcmp	r31, r9
	ble		.b48980				# 3098
.b48975:
	lw		r9, 2(r6)				# 16391
	faddmul	r9, r18, r9, r43				# 16385
	fabs	r32, r9				# 322
	lw		r9, 2(r15)				# 16378
	fcmp	r9, r32
	ble		.b48980				# 3098
.b48977:
	fcmp	r55, r62
	beq		.b48980				# 3128
.b48981:
	lli		r9, solver_dist.2563				# 16500
	sw		r18, 0(r9)				# 16500
	b		.b49000				# 28364
.b48980:
	lw		r9, 4(r44)				# 16543
	fsub	r15, r9, r43				# 16542
	lw		r9, 5(r44)				# 16542
	fmul	r15, r15, r9				# 16533
	faddmul	r44, r15, r52, r38				# 16598
	fabs	r44, r44				# 322
	fcmp	r31, r44
	ble		.b48854				# 3098
.b48983:
	faddmul	r44, r15, r8, r16				# 16659
	fabs	r44, r44				# 322
	fcmp	r11, r44
	ble		.b48854				# 3098
.b48985:
	fcmp	r9, r62
	beq		.b48854				# 3128
.b48987:
	lli		r9, solver_dist.2563				# 16774
	sw		r15, 0(r9)				# 16774
	b		.b49000				# 28364
.b48855:
	addi	r44, r0, 1				# 27829
	lwx		r15, r49, r44				# 27829
	cmpi	r15, -1
	beq		.b48854				# 27860
.b48859:
	lli		r9, and_net.2554				# 27885
	lwx		r8, r9, r15				# 27885
	addi	r15, r0, 0				# 26885
	lw		r38, 0(r20)				# 8078
	lwx		r11, r8, r15				# 26915
	cmpi	r11, -1
	beq		.b48860				# 26952
.b48863:
	lwx		r32, r36, r11				# 18636
	lw		r60, 10(r32)				# 6561
	lw		r55, 0(r60)				# 18698
	lw		r16, 1(r60)				# 18723
	lw		r6, 2(r60)				# 18748
	lw		r9, 1(r20)				# 8141
	lwx		r52, r9, r11				# 18807
	lw		r9, 1(r32)				# 2994
	cmpi	r9, 1
	beq		.b48865				# 18869
.b48866:
	cmpi	r9, 2
	beq		.b48891				# 18950
.b48892:
	lw		r9, 0(r52)				# 18204
	fcmp	r9, r62
	beq		.b48902				# 3128
.b48896:
	lw		r43, 1(r52)				# 18278
	lw		r18, 2(r52)				# 18298
	fmul	r18, r18, r16				# 18278
	faddmul	r16, r43, r55, r18				# 18278
	lw		r18, 3(r52)				# 18318
	faddmul	r16, r18, r6, r16				# 18265
	lw		r60, 3(r60)				# 18342
	fmul	r18, r16, r16				# 18377
	fmul	r9, r9, r60				# 18377
	fsub	r18, r18, r9				# 18369
	fcmp	r18, r62
	ble		.b48902				# 3158
.b48898:
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b48900				# 18435
.b48901:
	fsqrt	r9, r18				# 227
	fadd	r9, r16, r9				# 18476
	lw		r18, 4(r52)				# 18476
	fmul	r18, r9, r18				# 18457
	lli		r9, solver_dist.2563				# 18457
	sw		r18, 0(r9)				# 18457
	addi	r60, r0, 1				# 18580
	lli		r9, solver_dist.2563				# 27058
	lw		r18, 0(r9)				# 27058
	fcmp	r18, r62
	ble		.b48906				# 3098
.b48908:
	lw		r9, 0(r54)				# 27125
	fcmp	r9, r18
	ble		.b48906				# 3098
.b48910:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 27169
	fadd	r52, r18, r9				# 27161
	lw		r9, 0(r38)				# 27198
	faddmul	r18, r9, r52, r33				# 27189
	lw		r9, 1(r38)				# 27247
	faddmul	r32, r9, r52, r1				# 27238
	lw		r9, 2(r38)				# 27296
	faddmul	r16, r9, r52, r27				# 27287
	addi	r38, r0, 0				# 23025
	lwx		r9, r8, r38				# 23025
	cmpi	r9, -1
	beq		.b48960				# 23052
.b48914:
	lwx		r6, r36, r9				# 23095
	lw		r43, 5(r6)				# 4475
	lw		r9, 0(r43)				# 22709
	fsub	r24, r18, r9				# 22700
	lw		r9, 1(r43)				# 22741
	fsub	r31, r32, r9				# 22732
	lw		r9, 2(r43)				# 22773
	fsub	r55, r16, r9				# 22764
	lw		r40, 1(r6)				# 2994
	cmpi	r40, 1
	beq		.b48916				# 22824
.b48917:
	cmpi	r40, 2
	beq		.b48929				# 22882
.b48930:
	fmul	r34, r24, r24				# 14374
	lw		r58, 4(r6)				# 3734
	lw		r45, 0(r58)				# 14374
	fmul	r9, r31, r31				# 14400
	lw		r43, 1(r58)				# 14400
	fmul	r9, r9, r43				# 14374
	faddmul	r9, r34, r45, r9				# 14374
	fmul	r34, r55, r55				# 14426
	lw		r43, 2(r58)				# 14426
	faddmul	r9, r34, r43, r9				# 14354
	lw		r43, 3(r6)				# 3553
	cmpi	r43, 0
	beq		.b48942				# 14456
.b48943:
	fmul	r43, r31, r55				# 14522
	lw		r58, 9(r6)				# 5989
	lw		r34, 0(r58)				# 14522
	faddmul	r34, r43, r34, r9				# 14503
	fmul	r9, r55, r24				# 14556
	lw		r43, 1(r58)				# 14556
	faddmul	r9, r9, r43, r34				# 14503
	fmul	r43, r24, r31				# 14590
	lw		r55, 2(r58)				# 14590
	faddmul	r9, r43, r55, r9				# 14503
	cmpi	r40, 3
	beq		.b48945				# 22583
.b48946:
	lw		r43, 6(r6)				# 3372
	fcmp	r62, r9
	ble		.b48948				# 3188
.b48949:
	addi	r9, r0, 1				# 3188
	cmpi	r43, 0
	beq		.b48951				# 765
.b48952:
	cmpi	r9, 0
	beq		.b48957				# 775
.b48906:
	addi	r15, r15, 1				# 27573
	lw		r38, 0(r20)				# 8078
	lwx		r11, r8, r15				# 26915
	cmpi	r11, -1
	beq		.b48860				# 26952
	b		.b48863
.b48860:
	addi	r44, r44, 1				# 27971
	lwx		r15, r49, r44				# 27829
	cmpi	r15, -1
	beq		.b48854				# 27860
	b		.b48859
.b48957:
	addi	r38, r38, 1				# 23162
	lwx		r9, r8, r38				# 23025
	cmpi	r9, -1
	beq		.b48960				# 23052
	b		.b48914
.b48960:
	sw		r52, 0(r54)				# 27393
	sw		r18, 0(r50)				# 1162
	sw		r32, 1(r50)				# 1162
	sw		r16, 2(r50)				# 27393
	sw		r11, 0(r2)				# 27393
	sw		r60, 0(r17)				# 27485
	b		.b48906				# 27485
.b48951:
	cmpi	r9, 0
	beq		.b48906				# 22625
	b		.b48957
.b48948:
	addi	r9, r0, 0				# 3188
	cmpi	r43, 0
	beq		.b48951				# 765
	b		.b48952
.b48945:
	fsub	r9, r9, r7				# 22604
	lw		r43, 6(r6)				# 3372
	fcmp	r62, r9
	ble		.b48948				# 3188
	b		.b48949
.b48942:
	cmpi	r40, 3
	beq		.b48945				# 22583
	b		.b48946
.b48929:
	lw		r43, 4(r6)				# 4293
	lw		r40, 0(r43)				# 2037
	lw		r9, 1(r43)				# 2052
	fmul	r9, r9, r31				# 2037
	faddmul	r9, r40, r24, r9				# 2037
	lw		r43, 2(r43)				# 2067
	faddmul	r9, r43, r55, r9				# 22411
	lw		r43, 6(r6)				# 3372
	fcmp	r62, r9
	ble		.b48932				# 3188
.b48933:
	addi	r9, r0, 1				# 3188
	cmpi	r43, 0
	beq		.b48935				# 765
.b48936:
	cmpi	r9, 0
	beq		.b48957				# 775
	b		.b48906
.b48935:
	cmpi	r9, 0
	beq		.b48906				# 22459
	b		.b48957
.b48932:
	addi	r9, r0, 0				# 3188
	cmpi	r43, 0
	beq		.b48935				# 765
	b		.b48936
.b48916:
	fabs	r43, r24				# 322
	lw		r24, 4(r6)				# 3734
	lw		r9, 0(r24)				# 22178
	fcmp	r9, r43
	ble		.b48925				# 3098
.b48920:
	fabs	r9, r31				# 322
	lw		r43, 1(r24)				# 22224
	fcmp	r43, r9
	ble		.b48925				# 3098
.b48922:
	fabs	r43, r55				# 322
	lw		r9, 2(r24)				# 22261
	fcmp	r9, r43
	ble		.b48925				# 3098
.b48926:
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b48957				# 23092
	b		.b48906
.b48925:
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b48906				# 22348
	b		.b48957
.b48900:
	fsqrt	r9, r18				# 227
	fsub	r9, r16, r9				# 18540
	lw		r18, 4(r52)				# 18540
	fmul	r9, r9, r18				# 18521
	lli		r18, solver_dist.2563				# 18521
	sw		r9, 0(r18)				# 18521
	addi	r60, r0, 1				# 18580
	lli		r9, solver_dist.2563				# 27058
	lw		r18, 0(r9)				# 27058
	fcmp	r18, r62
	ble		.b48906				# 3098
	b		.b48908
.b48902:
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b48860				# 27653
.b48905:
	addi	r15, r15, 1				# 27691
	lw		r38, 0(r20)				# 8078
	lwx		r11, r8, r15				# 26915
	cmpi	r11, -1
	beq		.b48860				# 26952
	b		.b48863
.b48891:
	lw		r18, 0(r52)				# 18051
	fcmp	r62, r18
	ble		.b48902				# 3188
.b48894:
	lw		r9, 3(r60)				# 18099
	fmul	r9, r18, r9				# 18080
	lli		r18, solver_dist.2563				# 18080
	sw		r9, 0(r18)				# 18080
	addi	r60, r0, 1				# 18129
	lli		r9, solver_dist.2563				# 27058
	lw		r18, 0(r9)				# 27058
	fcmp	r18, r62
	ble		.b48906				# 3098
	b		.b48908
.b48865:
	lw		r9, 0(r52)				# 15996
	fsub	r9, r9, r55				# 15995
	lw		r60, 1(r52)				# 15995
	fmul	r31, r9, r60				# 15986
	lw		r24, 1(r38)				# 16056
	faddmul	r9, r31, r24, r16				# 16050
	fabs	r9, r9				# 322
	lw		r40, 4(r32)				# 3920
	lw		r43, 1(r40)				# 16043
	fcmp	r43, r9
	ble		.b48874				# 3098
.b48869:
	lw		r9, 2(r38)				# 16117
	faddmul	r9, r31, r9, r6				# 16111
	fabs	r18, r9				# 322
	lw		r9, 2(r40)				# 16104
	fcmp	r9, r18
	ble		.b48874				# 3098
.b48871:
	fcmp	r60, r62
	beq		.b48874				# 3128
.b48875:
	lli		r9, solver_dist.2563				# 16226
	sw		r31, 0(r9)				# 16226
	addi	r60, r0, 1				# 16249
	lli		r9, solver_dist.2563				# 27058
	lw		r18, 0(r9)				# 27058
	fcmp	r18, r62
	ble		.b48906				# 3098
	b		.b48908
.b48874:
	lw		r9, 2(r52)				# 16269
	fsub	r9, r9, r16				# 16268
	lw		r31, 3(r52)				# 16268
	fmul	r18, r9, r31				# 16259
	lw		r58, 0(r38)				# 16330
	faddmul	r9, r18, r58, r55				# 16324
	fabs	r9, r9				# 322
	lw		r60, 0(r40)				# 16317
	fcmp	r60, r9
	ble		.b48883				# 3098
.b48878:
	lw		r9, 2(r38)				# 16391
	faddmul	r9, r18, r9, r6				# 16385
	fabs	r9, r9				# 322
	lw		r40, 2(r40)				# 16378
	fcmp	r40, r9
	ble		.b48883				# 3098
.b48880:
	fcmp	r31, r62
	beq		.b48883				# 3128
.b48884:
	lli		r9, solver_dist.2563				# 16500
	sw		r18, 0(r9)				# 16500
	addi	r60, r0, 2				# 16523
	lli		r9, solver_dist.2563				# 27058
	lw		r18, 0(r9)				# 27058
	fcmp	r18, r62
	ble		.b48906				# 3098
	b		.b48908
.b48883:
	lw		r9, 4(r52)				# 16543
	fsub	r9, r9, r6				# 16542
	lw		r52, 5(r52)				# 16542
	fmul	r18, r9, r52				# 16533
	faddmul	r9, r18, r58, r55				# 16598
	fabs	r9, r9				# 322
	fcmp	r60, r9
	ble		.b48902				# 3098
.b48886:
	faddmul	r9, r18, r24, r16				# 16659
	fabs	r9, r9				# 322
	fcmp	r43, r9
	ble		.b48902				# 3098
.b48888:
	fcmp	r52, r62
	beq		.b48902				# 3128
.b48890:
	lli		r9, solver_dist.2563				# 16774
	sw		r18, 0(r9)				# 16774
	addi	r60, r0, 3				# 16797
	lli		r9, solver_dist.2563				# 27058
	lw		r18, 0(r9)				# 27058
	fcmp	r18, r62
	ble		.b48906				# 3098
	b		.b48908
.b48833:
	lwx		r8, r36, r9				# 21445
	lw		r38, 10(r8)				# 6561
	lw		r20, 1(r8)				# 2994
	lw		r15, 5(r8)				# 4475
	lw		r61, 0(r15)				# 21561
	fsub	r61, r33, r61				# 21547
	sw		r61, 0(r38)				# 21547
	lw		r61, 1(r15)				# 21603
	fsub	r61, r1, r61				# 21589
	sw		r61, 1(r38)				# 21547
	lw		r61, 2(r15)				# 21645
	fsub	r49, r27, r61				# 21631
	sw		r49, 2(r38)				# 21547
	cmpi	r20, 2
	beq		.b48836				# 21673
.b48837:
	cmpi	r20, 2
	ble		.b48835				# 21798
.b48839:
	lw		r44, 0(r38)				# 21847
	lw		r51, 1(r38)				# 21847
	fmul	r60, r44, r44				# 14374
	lw		r15, 4(r8)				# 3734
	lw		r23, 0(r15)				# 14374
	fmul	r61, r51, r51				# 14400
	lw		r18, 1(r15)				# 14400
	fmul	r61, r61, r18				# 14374
	faddmul	r61, r60, r23, r61				# 14374
	fmul	r23, r49, r49				# 14426
	lw		r15, 2(r15)				# 14426
	faddmul	r61, r23, r15, r61				# 14354
	lw		r15, 3(r8)				# 3553
	cmpi	r15, 0
	beq		.b48841				# 14456
.b48842:
	fmul	r23, r51, r49				# 14522
	lw		r15, 9(r8)				# 5989
	lw		r8, 0(r15)				# 14522
	faddmul	r61, r23, r8, r61				# 14503
	fmul	r23, r49, r44				# 14556
	lw		r49, 1(r15)				# 14556
	faddmul	r23, r23, r49, r61				# 14503
	fmul	r51, r44, r51				# 14590
	lw		r61, 2(r15)				# 14590
	faddmul	r61, r51, r61, r23				# 14503
	cmpi	r20, 3
	beq		.b48844				# 21917
.b48845:
.b48843:
	sw		r61, 3(r38)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b48833				# 21420
	b		.b48831
.b48844:
	fsub	r61, r61, r7				# 21937
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
	lw		r61, 4(r8)				# 4293
	lw		r23, 0(r38)				# 21728
	lw		r20, 1(r38)				# 21728
	lw		r51, 0(r61)				# 2037
	lw		r15, 1(r61)				# 2052
	fmul	r15, r15, r20				# 2037
	faddmul	r15, r51, r23, r15				# 2037
	lw		r61, 2(r61)				# 2067
	faddmul	r61, r61, r49, r15				# 21713
	sw		r61, 3(r38)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b48833				# 21420
	b		.b48831
.b48826:
	fcmp	r51, r62
	ble		.b48823				# 3158
	b		.b48830
.b48698:
	addi	r15, r15, 1				# 23162
	lwx		r9, r49, r15				# 23025
	cmpi	r9, -1
	beq		.b48707				# 23052
	b		.b48655
.b48707:
	addi	r15, r0, 1				# 24006
	lwx		r9, r20, r15				# 24006
	cmpi	r9, -1
	beq		.b48821				# 24037
.b48711:
	lli		r61, and_net.2554				# 24078
	lwx		r44, r61, r9				# 24078
	addi	r51, r0, 0				# 23266
	lwx		r61, r44, r51				# 23266
	cmpi	r61, -1
	beq		.b48819				# 23266
.b48715:
	lwx		r18, r36, r61				# 17557
	lw		r49, 5(r18)				# 4475
	lw		r9, 0(r49)				# 17595
	fsub	r38, r33, r9				# 17586
	lw		r9, 1(r49)				# 17632
	fsub	r16, r1, r9				# 17623
	lw		r9, 2(r49)				# 17669
	fsub	r11, r27, r9				# 17660
	lli		r9, consts.2632				# 17731
	lwx		r60, r9, r61				# 17731
	lw		r61, 1(r18)				# 2994
	cmpi	r61, 1
	beq		.b48717				# 17793
.b48718:
	cmpi	r61, 2
	beq		.b48743				# 17874
.b48744:
	lw		r8, 0(r60)				# 17054
	fcmp	r8, r62
	beq		.b48747				# 3128
.b48748:
	lw		r49, 1(r60)				# 17128
	lw		r9, 2(r60)				# 17148
	fmul	r9, r9, r16				# 17128
	faddmul	r9, r49, r38, r9				# 17128
	lw		r49, 3(r60)				# 17168
	faddmul	r52, r49, r11, r9				# 17115
	fmul	r55, r38, r38				# 14374
	lw		r32, 4(r18)				# 3734
	lw		r49, 0(r32)				# 14374
	fmul	r9, r16, r16				# 14400
	lw		r43, 1(r32)				# 14400
	fmul	r9, r9, r43				# 14374
	faddmul	r9, r55, r49, r9				# 14374
	fmul	r49, r11, r11				# 14426
	lw		r32, 2(r32)				# 14426
	faddmul	r9, r49, r32, r9				# 14354
	lw		r49, 3(r18)				# 3553
	cmpi	r49, 0
	beq		.b48750				# 14456
.b48751:
	fmul	r49, r16, r11				# 14522
	lw		r43, 9(r18)				# 5989
	lw		r32, 0(r43)				# 14522
	faddmul	r9, r49, r32, r9				# 14503
	fmul	r11, r11, r38				# 14556
	lw		r49, 1(r43)				# 14556
	faddmul	r49, r11, r49, r9				# 14503
	fmul	r9, r38, r16				# 14590
	lw		r38, 2(r43)				# 14590
	faddmul	r9, r9, r38, r49				# 14503
	cmpi	r61, 3
	beq		.b48753				# 17239
.b48754:
.b48752:
	fmul	r61, r52, r52				# 17295
	fmul	r9, r8, r9				# 17295
	fsub	r61, r61, r9				# 17287
	fcmp	r61, r62
	ble		.b48755				# 3158
.b48756:
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48758				# 17353
.b48759:
	fsqrt	r9, r61				# 227
	fadd	r9, r52, r9				# 17394
	lw		r61, 4(r60)				# 17394
	fmul	r61, r9, r61				# 17375
	lli		r9, solver_dist.2563				# 17375
	sw		r61, 0(r9)				# 17375
.b48757:
	lli		r9, solver_dist.2563				# 23423
	lw		r61, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r61
	ble		.b48765				# 3098
.b48766:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r61, r61, r9				# 23516
	lli		r38, light.2545				# 23554
	lw		r9, 0(r38)				# 23554
	faddmul	r18, r9, r61, r33				# 23545
	lw		r9, 1(r38)				# 23613
	faddmul	r8, r9, r61, r1				# 23604
	lw		r9, 2(r38)				# 23672
	faddmul	r60, r9, r61, r27				# 23663
	addi	r9, r0, 0				# 23025
	lwx		r61, r44, r9				# 23025
	cmpi	r61, -1
	beq		.b48823				# 23052
.b48772:
	lwx		r16, r36, r61				# 23095
	lw		r38, 5(r16)				# 4475
	lw		r61, 0(r38)				# 22709
	fsub	r49, r18, r61				# 22700
	lw		r61, 1(r38)				# 22741
	fsub	r52, r8, r61				# 22732
	lw		r61, 2(r38)				# 22773
	fsub	r32, r60, r61				# 22764
	lw		r43, 1(r16)				# 2994
	cmpi	r43, 1
	beq		.b48774				# 22824
.b48775:
	cmpi	r43, 2
	beq		.b48787				# 22882
.b48788:
	fmul	r61, r49, r49				# 14374
	lw		r6, 4(r16)				# 3734
	lw		r55, 0(r6)				# 14374
	fmul	r38, r52, r52				# 14400
	lw		r11, 1(r6)				# 14400
	fmul	r38, r38, r11				# 14374
	faddmul	r38, r61, r55, r38				# 14374
	fmul	r61, r32, r32				# 14426
	lw		r11, 2(r6)				# 14426
	faddmul	r61, r61, r11, r38				# 14354
	lw		r38, 3(r16)				# 3553
	cmpi	r38, 0
	beq		.b48800				# 14456
.b48801:
	fmul	r11, r52, r32				# 14522
	lw		r55, 9(r16)				# 5989
	lw		r38, 0(r55)				# 14522
	faddmul	r11, r11, r38, r61				# 14503
	fmul	r61, r32, r49				# 14556
	lw		r38, 1(r55)				# 14556
	faddmul	r38, r61, r38, r11				# 14503
	fmul	r61, r49, r52				# 14590
	lw		r49, 2(r55)				# 14590
	faddmul	r61, r61, r49, r38				# 14503
	cmpi	r43, 3
	beq		.b48803				# 22583
.b48804:
	lw		r38, 6(r16)				# 3372
	fcmp	r62, r61
	ble		.b48806				# 3188
.b48807:
	addi	r61, r0, 1				# 3188
	cmpi	r38, 0
	beq		.b48809				# 765
.b48810:
	cmpi	r61, 0
	beq		.b48815				# 775
.b48817:
	addi	r51, r51, 1				# 23786
	lwx		r61, r44, r51				# 23266
	cmpi	r61, -1
	beq		.b48819				# 23266
	b		.b48715
.b48819:
	addi	r15, r15, 1				# 24216
	lwx		r9, r20, r15				# 24006
	cmpi	r9, -1
	beq		.b48821				# 24037
	b		.b48711
.b48821:
	addi	r23, r23, 1				# 24833
	lwx		r20, r26, r23				# 24323
	lw		r61, 0(r20)				# 24355
	cmpi	r61, -1
	beq		.b48824				# 24391
	b		.b48539
.b48815:
	addi	r9, r9, 1				# 23162
	lwx		r61, r44, r9				# 23025
	cmpi	r61, -1
	beq		.b48823				# 23052
	b		.b48772
.b48809:
	cmpi	r61, 0
	beq		.b48817				# 22625
	b		.b48815
.b48806:
	addi	r61, r0, 0				# 3188
	cmpi	r38, 0
	beq		.b48809				# 765
	b		.b48810
.b48803:
	fsub	r61, r61, r7				# 22604
	lw		r38, 6(r16)				# 3372
	fcmp	r62, r61
	ble		.b48806				# 3188
	b		.b48807
.b48800:
	cmpi	r43, 3
	beq		.b48803				# 22583
	b		.b48804
.b48787:
	lw		r61, 4(r16)				# 4293
	lw		r11, 0(r61)				# 2037
	lw		r38, 1(r61)				# 2052
	fmul	r38, r38, r52				# 2037
	faddmul	r38, r11, r49, r38				# 2037
	lw		r61, 2(r61)				# 2067
	faddmul	r61, r61, r32, r38				# 22411
	lw		r38, 6(r16)				# 3372
	fcmp	r62, r61
	ble		.b48790				# 3188
.b48791:
	addi	r61, r0, 1				# 3188
	cmpi	r38, 0
	beq		.b48793				# 765
.b48794:
	cmpi	r61, 0
	beq		.b48815				# 775
	b		.b48817
.b48793:
	cmpi	r61, 0
	beq		.b48817				# 22459
	b		.b48815
.b48790:
	addi	r61, r0, 0				# 3188
	cmpi	r38, 0
	beq		.b48793				# 765
	b		.b48794
.b48774:
	fabs	r61, r49				# 322
	lw		r38, 4(r16)				# 3734
	lw		r49, 0(r38)				# 22178
	fcmp	r49, r61
	ble		.b48783				# 3098
.b48778:
	fabs	r61, r52				# 322
	lw		r49, 1(r38)				# 22224
	fcmp	r49, r61
	ble		.b48783				# 3098
.b48780:
	fabs	r61, r32				# 322
	lw		r38, 2(r38)				# 22261
	fcmp	r38, r61
	ble		.b48783				# 3098
.b48784:
	lw		r61, 6(r16)				# 3372
	cmpi	r61, 0
	beq		.b48815				# 23092
	b		.b48817
.b48783:
	lw		r61, 6(r16)				# 3372
	cmpi	r61, 0
	beq		.b48817				# 22348
	b		.b48815
.b48765:
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
.b48768:
	addi	r51, r51, 1				# 23885
	lwx		r61, r44, r51				# 23266
	cmpi	r61, -1
	beq		.b48819				# 23266
	b		.b48715
.b48758:
	fsqrt	r9, r61				# 227
	fsub	r9, r52, r9				# 17458
	lw		r61, 4(r60)				# 17458
	fmul	r9, r9, r61				# 17439
	lli		r61, solver_dist.2563				# 17439
	sw		r9, 0(r61)				# 17439
	b		.b48757				# 17439
.b48755:
	lli		r9, solver_dist.2563				# 23423
	lw		r61, 0(r9)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
	b		.b48768
.b48753:
	fsub	r9, r9, r7				# 17260
	b		.b48752				# 17260
.b48750:
	cmpi	r61, 3
	beq		.b48753				# 17239
	b		.b48754
.b48747:
	lli		r9, solver_dist.2563				# 23423
	lw		r61, 0(r9)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
	b		.b48768
.b48743:
	lw		r9, 0(r60)				# 16870
	fcmp	r62, r9
	ble		.b48745				# 3188
.b48746:
	lw		r61, 1(r60)				# 16924
	lw		r9, 2(r60)				# 16944
	fmul	r9, r9, r16				# 16924
	faddmul	r61, r61, r38, r9				# 16924
	lw		r9, 3(r60)				# 16964
	faddmul	r61, r9, r11, r61				# 16899
	lli		r9, solver_dist.2563				# 16899
	sw		r61, 0(r9)				# 16899
	lli		r9, solver_dist.2563				# 23423
	lw		r61, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r61
	ble		.b48765				# 3098
	b		.b48766
.b48745:
	lli		r9, solver_dist.2563				# 23423
	lw		r61, 0(r9)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
	b		.b48768
.b48717:
	lw		r9, 0(r60)				# 15996
	fsub	r61, r9, r38				# 15995
	lw		r9, 1(r60)				# 15995
	fmul	r8, r61, r9				# 15986
	lli		r43, v3.2630				# 16056
	lw		r49, 1(r43)				# 16056
	faddmul	r61, r8, r49, r16				# 16050
	fabs	r61, r61				# 322
	lw		r55, 4(r18)				# 3920
	lw		r32, 1(r55)				# 16043
	fcmp	r32, r61
	ble		.b48726				# 3098
.b48721:
	lw		r61, 2(r43)				# 16117
	faddmul	r61, r8, r61, r11				# 16111
	fabs	r52, r61				# 322
	lw		r61, 2(r55)				# 16104
	fcmp	r61, r52
	ble		.b48726				# 3098
.b48723:
	fcmp	r9, r62
	beq		.b48726				# 3128
.b48727:
	lli		r9, solver_dist.2563				# 16226
	sw		r8, 0(r9)				# 16226
	lli		r9, solver_dist.2563				# 23423
	lw		r61, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r61
	ble		.b48765				# 3098
	b		.b48766
.b48726:
	lw		r9, 2(r60)				# 16269
	fsub	r9, r9, r16				# 16268
	lw		r8, 3(r60)				# 16268
	fmul	r61, r9, r8				# 16259
	lw		r52, 0(r43)				# 16330
	faddmul	r9, r61, r52, r38				# 16324
	fabs	r9, r9				# 322
	lw		r6, 0(r55)				# 16317
	fcmp	r6, r9
	ble		.b48735				# 3098
.b48730:
	lw		r9, 2(r43)				# 16391
	faddmul	r9, r61, r9, r11				# 16385
	fabs	r9, r9				# 322
	lw		r43, 2(r55)				# 16378
	fcmp	r43, r9
	ble		.b48735				# 3098
.b48732:
	fcmp	r8, r62
	beq		.b48735				# 3128
.b48736:
	lli		r9, solver_dist.2563				# 16500
	sw		r61, 0(r9)				# 16500
	lli		r9, solver_dist.2563				# 23423
	lw		r61, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r61
	ble		.b48765				# 3098
	b		.b48766
.b48735:
	lw		r9, 4(r60)				# 16543
	fsub	r9, r9, r11				# 16542
	lw		r8, 5(r60)				# 16542
	fmul	r61, r9, r8				# 16533
	faddmul	r9, r61, r52, r38				# 16598
	fabs	r9, r9				# 322
	fcmp	r6, r9
	ble		.b48737				# 3098
.b48738:
	faddmul	r9, r61, r49, r16				# 16659
	fabs	r9, r9				# 322
	fcmp	r32, r9
	ble		.b48739				# 3098
.b48740:
	fcmp	r8, r62
	beq		.b48741				# 3128
.b48742:
	lli		r9, solver_dist.2563				# 16774
	sw		r61, 0(r9)				# 16774
	lli		r9, solver_dist.2563				# 23423
	lw		r61, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r61
	ble		.b48765				# 3098
	b		.b48766
.b48741:
	lli		r9, solver_dist.2563				# 23423
	lw		r61, 0(r9)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
	b		.b48768
.b48739:
	lli		r9, solver_dist.2563				# 23423
	lw		r61, 0(r9)				# 23423
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48819				# 23849
	b		.b48768
.b48737:
	lli		r9, solver_dist.2563				# 23423
	lw		r61, 0(r9)				# 23423
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
	fsub	r9, r9, r7				# 22604
	lw		r8, 6(r52)				# 3372
	fcmp	r62, r9
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
	fmul	r9, r9, r43				# 2037
	faddmul	r9, r8, r55, r9				# 2037
	lw		r8, 2(r11)				# 2067
	faddmul	r9, r8, r6, r9				# 22411
	lw		r8, 6(r52)				# 3372
	fcmp	r62, r9
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
	fabs	r9, r55				# 322
	lw		r8, 4(r52)				# 3734
	lw		r11, 0(r8)				# 22178
	fcmp	r11, r9
	ble		.b48666				# 3098
.b48661:
	fabs	r9, r43				# 322
	lw		r11, 1(r8)				# 22224
	fcmp	r11, r9
	ble		.b48666				# 3098
.b48663:
	fabs	r9, r6				# 322
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
	lw		r9, 6(r8)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
.b48651:
	addi	r51, r51, 1				# 23885
	lwx		r18, r49, r51				# 23266
	cmpi	r18, -1
	beq		.b48702				# 23266
	b		.b48598
.b48641:
	fsqrt	r9, r15				# 227
	fsub	r15, r16, r9				# 17458
	lw		r9, 4(r60)				# 17458
	fmul	r9, r15, r9				# 17439
	sw		r9, 0(r38)				# 17439
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48648				# 3098
	b		.b48649
.b48638:
	lw		r15, 0(r38)				# 23423
	lw		r9, 6(r8)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48636:
	fsub	r9, r9, r7				# 17260
	b		.b48635				# 17260
.b48633:
	cmpi	r6, 3
	beq		.b48636				# 17239
	b		.b48637
.b48630:
	lw		r15, 0(r38)				# 23423
	lw		r9, 6(r8)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48626:
	lw		r9, 0(r60)				# 16870
	fcmp	r62, r9
	ble		.b48628				# 3188
.b48629:
	lw		r15, 1(r60)				# 16924
	lw		r9, 2(r60)				# 16944
	fmul	r9, r9, r32				# 16924
	faddmul	r9, r15, r52, r9				# 16924
	lw		r15, 3(r60)				# 16964
	faddmul	r9, r15, r11, r9				# 16899
	sw		r9, 0(r38)				# 16899
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48648				# 3098
	b		.b48649
.b48628:
	lw		r15, 0(r38)				# 23423
	lw		r9, 6(r8)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48600:
	lw		r9, 0(r60)				# 15996
	fsub	r9, r9, r52				# 15995
	lw		r16, 1(r60)				# 15995
	fmul	r18, r9, r16				# 15986
	lli		r9, v3.2630				# 16056
	lw		r6, 1(r9)				# 16056
	faddmul	r15, r18, r6, r32				# 16050
	fabs	r15, r15				# 322
	lw		r31, 4(r8)				# 3920
	lw		r55, 1(r31)				# 16043
	fcmp	r55, r15
	ble		.b48609				# 3098
.b48604:
	lw		r15, 2(r9)				# 16117
	faddmul	r15, r18, r15, r11				# 16111
	fabs	r15, r15				# 322
	lw		r43, 2(r31)				# 16104
	fcmp	r43, r15
	ble		.b48609				# 3098
.b48606:
	fcmp	r16, r62
	beq		.b48609				# 3128
.b48610:
	sw		r18, 0(r38)				# 16226
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48648				# 3098
	b		.b48649
.b48609:
	lw		r15, 2(r60)				# 16269
	fsub	r15, r15, r32				# 16268
	lw		r43, 3(r60)				# 16268
	fmul	r16, r15, r43				# 16259
	lw		r18, 0(r9)				# 16330
	faddmul	r15, r16, r18, r52				# 16324
	fabs	r15, r15				# 322
	lw		r24, 0(r31)				# 16317
	fcmp	r24, r15
	ble		.b48618				# 3098
.b48613:
	lw		r9, 2(r9)				# 16391
	faddmul	r9, r16, r9, r11				# 16385
	fabs	r15, r9				# 322
	lw		r9, 2(r31)				# 16378
	fcmp	r9, r15
	ble		.b48618				# 3098
.b48615:
	fcmp	r43, r62
	beq		.b48618				# 3128
.b48619:
	sw		r16, 0(r38)				# 16500
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48648				# 3098
	b		.b48649
.b48618:
	lw		r9, 4(r60)				# 16543
	fsub	r9, r9, r11				# 16542
	lw		r15, 5(r60)				# 16542
	fmul	r60, r9, r15				# 16533
	faddmul	r9, r60, r18, r52				# 16598
	fabs	r9, r9				# 322
	fcmp	r24, r9
	ble		.b48620				# 3098
.b48621:
	faddmul	r9, r60, r6, r32				# 16659
	fabs	r9, r9				# 322
	fcmp	r55, r9
	ble		.b48622				# 3098
.b48623:
	fcmp	r15, r62
	beq		.b48624				# 3128
.b48625:
	sw		r60, 0(r38)				# 16774
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48648				# 3098
	b		.b48649
.b48624:
	lw		r15, 0(r38)				# 23423
	lw		r9, 6(r8)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48622:
	lw		r15, 0(r38)				# 23423
	lw		r9, 6(r8)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48620:
	lw		r15, 0(r38)				# 23423
	lw		r9, 6(r8)				# 3372
	cmpi	r9, 0
	beq		.b48702				# 23849
	b		.b48651
.b48585:
	fsqrt	r9, r9				# 227
	fsub	r61, r15, r9				# 17458
	lw		r9, 4(r38)				# 17458
	fmul	r61, r61, r9				# 17439
	lli		r9, solver_dist.2563				# 17439
	sw		r61, 0(r9)				# 17439
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r59, r9
	ble		.b48706				# 3098
	b		.b48590
.b48580:
	fsub	r9, r9, r7				# 17260
	b		.b48579				# 17260
.b48577:
	cmpi	r61, 3
	beq		.b48580				# 17239
	b		.b48581
.b48570:
	lw		r9, 0(r38)				# 16870
	fcmp	r62, r9
	ble		.b48706				# 3188
.b48573:
	lw		r9, 1(r38)				# 16924
	lw		r61, 2(r38)				# 16944
	fmul	r61, r61, r8				# 16924
	faddmul	r9, r9, r18, r61				# 16924
	lw		r61, 3(r38)				# 16964
	faddmul	r9, r61, r49, r9				# 16899
	lli		r61, solver_dist.2563				# 16899
	sw		r9, 0(r61)				# 16899
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r59, r9
	ble		.b48706				# 3098
	b		.b48590
.b48544:
	lw		r9, 0(r38)				# 15996
	fsub	r9, r9, r18				# 15995
	lw		r61, 1(r38)				# 15995
	fmul	r51, r9, r61				# 15986
	lli		r52, v3.2630				# 16056
	lw		r16, 1(r52)				# 16056
	faddmul	r9, r51, r16, r8				# 16050
	fabs	r9, r9				# 322
	lw		r11, 4(r60)				# 3920
	lw		r60, 1(r11)				# 16043
	fcmp	r60, r9
	ble		.b48553				# 3098
.b48548:
	lw		r9, 2(r52)				# 16117
	faddmul	r9, r51, r9, r49				# 16111
	fabs	r9, r9				# 322
	lw		r15, 2(r11)				# 16104
	fcmp	r15, r9
	ble		.b48553				# 3098
.b48550:
	fcmp	r61, r62
	beq		.b48553				# 3128
.b48554:
	lli		r9, solver_dist.2563				# 16226
	sw		r51, 0(r9)				# 16226
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r59, r9
	ble		.b48706				# 3098
	b		.b48590
.b48553:
	lw		r9, 2(r38)				# 16269
	fsub	r9, r9, r8				# 16268
	lw		r32, 3(r38)				# 16268
	fmul	r15, r9, r32				# 16259
	lw		r51, 0(r52)				# 16330
	faddmul	r9, r15, r51, r18				# 16324
	fabs	r9, r9				# 322
	lw		r61, 0(r11)				# 16317
	fcmp	r61, r9
	ble		.b48562				# 3098
.b48557:
	lw		r9, 2(r52)				# 16391
	faddmul	r9, r15, r9, r49				# 16385
	fabs	r9, r9				# 322
	lw		r11, 2(r11)				# 16378
	fcmp	r11, r9
	ble		.b48562				# 3098
.b48559:
	fcmp	r32, r62
	beq		.b48562				# 3128
.b48563:
	lli		r9, solver_dist.2563				# 16500
	sw		r15, 0(r9)				# 16500
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r59, r9
	ble		.b48706				# 3098
	b		.b48590
.b48562:
	lw		r9, 4(r38)				# 16543
	fsub	r9, r9, r49				# 16542
	lw		r38, 5(r38)				# 16542
	fmul	r15, r9, r38				# 16533
	faddmul	r9, r15, r51, r18				# 16598
	fabs	r9, r9				# 322
	fcmp	r61, r9
	ble		.b48706				# 3098
.b48565:
	faddmul	r9, r15, r16, r8				# 16659
	fabs	r9, r9				# 322
	fcmp	r60, r9
	ble		.b48706				# 3098
.b48567:
	fcmp	r38, r62
	beq		.b48706				# 3128
.b48569:
	lli		r9, solver_dist.2563				# 16774
	sw		r15, 0(r9)				# 16774
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r59, r9
	ble		.b48706				# 3098
	b		.b48590
.b48534:
	addi	r9, r0, 1				# 33698
	swx		r9, r13, r15				# 33698
	lw		r9, 4(r46)				# 7334
	lwx		r15, r9, r13				# 33761
	lw		r9, 0(r48)				# 1353
	sw		r9, 0(r15)				# 1353
	lw		r9, 1(r48)				# 1376
	sw		r9, 1(r15)				# 1353
	lw		r9, 2(r48)				# 1399
	sw		r9, 2(r15)				# 33761
	addis	r9, r0, 15232				# 33824
	fmul	r61, r9, r29				# 33799
	lw		r9, 0(r15)				# 2540
	fmul	r9, r9, r61				# 2528
	sw		r9, 0(r15)				# 2528
	lw		r9, 1(r15)				# 2573
	fmul	r9, r9, r61				# 2561
	sw		r9, 1(r15)				# 2528
	lw		r9, 2(r15)				# 2606
	fmul	r9, r9, r61				# 2594
	sw		r9, 2(r15)				# 33761
	lw		r9, 7(r46)				# 7939
	lwx		r9, r9, r13				# 33889
	lli		r61, nvector.2578				# 1353
	lw		r15, 0(r61)				# 1353
	sw		r15, 0(r9)				# 1353
	lw		r15, 1(r61)				# 1376
	sw		r15, 1(r9)				# 1353
	lw		r61, 2(r61)				# 1399
	sw		r61, 2(r9)				# 1399
	b		.b48533				# 1399
.b48522:
	lw		r19, 5(r39)				# 4475
	lw		r9, 0(r19)				# 31118
	fsub	r51, r33, r9				# 31117
	lw		r9, 4(r39)				# 3734
	lw		r61, 0(r9)				# 31144
	fsqrt	r61, r61				# 227
	fmul	r23, r51, r61				# 31108
	lw		r61, 2(r19)				# 31181
	fsub	r61, r27, r61				# 31180
	lw		r51, 2(r9)				# 31207
	fsqrt	r51, r51				# 227
	fmul	r51, r61, r51				# 31171
	fmul	r61, r51, r51				# 31243
	faddmul	r14, r23, r23, r61				# 31234
	fabs	r61, r23				# 322
	addis	r39, r0, 14545
	ori		r39, r39, 46871				# 31291
	fcmp	r39, r61
	ble		.b48525				# 3098
.b48526:
	addis	r51, r0, 16752				# 31320
.b48524:
	ffloor	r61, r51				# 765
	fsub	r51, r51, r61				# 31412
	lw		r61, 1(r19)				# 31456
	fsub	r61, r1, r61				# 31455
	lw		r9, 1(r9)				# 31482
	fsqrt	r9, r9				# 227
	fmul	r9, r61, r9				# 31446
	fabs	r61, r14				# 322
	fcmp	r39, r61
	ble		.b48528				# 3098
.b48529:
	addis	r9, r0, 16752				# 31556
.b48527:
	ffloor	r61, r9				# 765
	fsub	r61, r9, r61				# 31646
	addis	r23, r0, 15897
	ori		r23, r23, 39322				# 31690
	addis	r9, r0, 16128				# 31705
	fsub	r51, r9, r51				# 31699
	fmul	r51, r51, r51				# 31690
	fsub	r51, r23, r51				# 31690
	fsub	r9, r9, r61				# 31721
	fmul	r9, r9, r9				# 31690
	fsub	r9, r51, r9				# 31680
	fcmp	r62, r9
	ble		.b48531				# 3188
.b48532:
	addi	r9, r0, 0				# 31776
.b48530:
	addis	r61, r0, 17279				# 31817
	fmul	r9, r61, r9				# 31817
	addis	r61, r0, 16025
	ori		r61, r61, 39322				# 31817
	fdiv	r9, r9, r61				# 31796
	sw		r9, 2(r48)				# 31796
	b		.b48502				# 31796
.b48531:
	b		.b48530				# 31785
.b48528:
	fdiv	r9, r9, r14				# 31582
	fabs	r9, r9				# 322
	fatan	r9, r9				# 440
	addis	r61, r0, 16880				# 31603
	fmul	r61, r9, r61				# 31602
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 31602
	fdiv	r9, r61, r9				# 31602
	b		.b48527				# 31602
.b48525:
	fdiv	r61, r51, r23				# 31347
	fabs	r61, r61				# 322
	fatan	r51, r61				# 440
	addis	r61, r0, 16880				# 31369
	fmul	r61, r51, r61				# 31368
	addis	r51, r0, 16457
	ori		r51, r51, 4059				# 31368
	fdiv	r51, r61, r51				# 31368
	b		.b48524				# 31368
.b48520:
	lw		r61, 5(r39)				# 4475
	lw		r9, 0(r61)				# 30784
	fsub	r9, r33, r9				# 30775
	lw		r61, 2(r61)				# 30823
	fsub	r61, r27, r61				# 30814
	fmul	r61, r61, r61				# 30868
	faddmul	r9, r9, r9, r61				# 30862
	fsqrt	r61, r9				# 227
	addis	r9, r0, 16672				# 30862
	fdiv	r9, r61, r9				# 30853
	ffloor	r61, r9				# 765
	fsub	r61, r9, r61				# 30915
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 30915
	fmul	r9, r61, r9				# 30905
	fcos	r9, r9				# 133
	fmul	r51, r9, r9				# 30954
	addis	r61, r0, 17279				# 30987
	fmul	r9, r51, r61				# 30987
	sw		r9, 1(r48)				# 30987
	fsub	r9, r7, r51				# 31049
	fmul	r9, r9, r61				# 31028
	sw		r9, 2(r48)				# 31028
	b		.b48502				# 31028
.b48518:
	addis	r9, r0, 16000				# 30625
	fmul	r9, r1, r9				# 30620
	fsin	r9, r9				# 40
	fmul	r51, r9, r9				# 30605
	addis	r9, r0, 17279				# 30650
	fmul	r61, r9, r51				# 30650
	sw		r61, 0(r48)				# 30650
	fsub	r61, r7, r51				# 30711
	fmul	r9, r9, r61				# 30690
	sw		r9, 1(r48)				# 30690
	b		.b48502				# 30690
.b48503:
	lw		r23, 5(r39)				# 4475
	lw		r9, 0(r23)				# 30169
	fsub	r61, r33, r9				# 30160
	addis	r51, r0, 15692
	ori		r51, r51, 52429				# 30234
	fmul	r9, r61, r51				# 30227
	ffloor	r9, r9				# 765
	addis	r39, r0, 16800				# 30226
	fmul	r9, r9, r39				# 30217
	fsub	r9, r61, r9				# 30264
	addis	r19, r0, 16672				# 30264
	fcmp	r19, r9
	ble		.b48506				# 3098
.b48507:
	addi	r61, r0, 1				# 3098
.b48505:
	lw		r9, 2(r23)				# 30308
	fsub	r23, r27, r9				# 30299
	fmul	r9, r23, r51				# 30366
	ffloor	r9, r9				# 765
	fmul	r9, r9, r39				# 30356
	fsub	r9, r23, r9				# 30404
	fcmp	r19, r9
	ble		.b48509				# 3098
.b48510:
	addi	r9, r0, 1				# 3098
	cmpi	r61, 0
	beq		.b48512				# 30467
.b48513:
	cmpi	r9, 0
	beq		.b48516				# 30489
.b48517:
	addis	r9, r0, 17279				# 30503
	sw		r9, 1(r48)				# 30439
	b		.b48502				# 30439
.b48516:
	addi	r9, r0, 0				# 30514
	sw		r9, 1(r48)				# 30439
	b		.b48502				# 30439
.b48512:
	cmpi	r9, 0
	beq		.b48514				# 30532
.b48515:
	addi	r9, r0, 0				# 30546
	sw		r9, 1(r48)				# 30439
	b		.b48502				# 30439
.b48514:
	addis	r9, r0, 17279				# 30555
	sw		r9, 1(r48)				# 30439
	b		.b48502				# 30439
.b48509:
	addi	r9, r0, 0				# 3098
	cmpi	r61, 0
	beq		.b48512				# 30467
	b		.b48513
.b48506:
	addi	r61, r0, 0				# 3098
	b		.b48505				# 3098
.b48500:
	fdiv	r51, r7, r48				# 1837
	b		.b48497				# 1837
.b48498:
	addis	r51, r0, 16256				# 1801
	b		.b48497				# 1801
.b48495:
	lli		r61, nvector.2578				# 29409
	sw		r17, 0(r61)				# 29409
	sw		r9, 1(r61)				# 29409
	sw		r19, 2(r61)				# 29455
	b		.b48494				# 29455
.b48492:
	lw		r51, 4(r39)				# 3734
	lw		r9, 0(r51)				# 28996
	fneg	r9, r9				# 28981
	lli		r61, nvector.2578				# 28981
	sw		r9, 0(r61)				# 28981
	lw		r9, 1(r51)				# 29034
	fneg	r9, r9				# 29019
	sw		r9, 1(r61)				# 28981
	lw		r9, 2(r51)				# 29071
	fneg	r9, r9				# 29056
	sw		r9, 2(r61)				# 29056
	b		.b48484				# 29056
.b48485:
	lli		r9, intsec_rectside.2566				# 28828
	lw		r9, 0(r9)				# 28828
	lli		r51, nvector.2578				# 1232
	sw		r62, 0(r51)				# 1232
	sw		r62, 1(r51)				# 1232
	sw		r62, 2(r51)				# 28868
	addi	r61, r9, -1				# 28888
	lwx		r9, r30, r61				# 28918
	fcmp	r9, r62
	beq		.b48488				# 3128
.b48489:
	fcmp	r9, r62
	ble		.b48490				# 3158
.b48491:
	addis	r9, r0, 16256				# 856
	fneg	r9, r9				# 28888
	swx		r9, r61, r51				# 28888
	b		.b48484				# 28888
.b48490:
	addis	r9, r0, 49024				# 868
	fneg	r9, r9				# 28888
	swx		r9, r61, r51				# 28888
	b		.b48484				# 28888
.b48488:
	addi	r9, r0, 0				# 828
	fneg	r9, r9				# 28888
	swx		r9, r61, r51				# 28888
	b		.b48484				# 28888
.b48478:
	addi	r9, r0, -1				# 34715
	swx		r9, r13, r57				# 34715
	cmpi	r13, 0
	beq		.b48077				# 34748
.b48481:
	lw		r28, 0(r30)				# 1949
	lli		r15, light.2545				# 1949
	lw		r10, 0(r15)				# 1949
	lw		r61, 1(r30)				# 1967
	lw		r9, 1(r15)				# 1967
	fmul	r9, r61, r9				# 1949
	faddmul	r28, r28, r10, r9				# 1949
	lw		r61, 2(r30)				# 1985
	lw		r9, 2(r15)				# 1985
	faddmul	r9, r61, r9, r28				# 34778
	fneg	r61, r9				# 34769
	fcmp	r61, r62
	ble		.b48077				# 3158
.b48483:
	fmul	r9, r61, r61				# 34848
	fmul	r9, r9, r61				# 34848
	fmul	r61, r9, r25				# 34848
	lli		r9, beam.2548				# 34848
	lw		r28, 0(r9)				# 34848
	lw		r9, 0(r41)				# 34902
	faddmul	r9, r61, r28, r9				# 34891
	sw		r9, 0(r41)				# 34891
	lw		r9, 1(r41)				# 34933
	faddmul	r9, r61, r28, r9				# 34922
	sw		r9, 1(r41)				# 34891
	lw		r9, 2(r41)				# 34964
	faddmul	r9, r61, r28, r9				# 34953
	sw		r9, 2(r41)				# 34953
	b		.b48077				# 34953
.b48469:
	addi	r15, r15, 1				# 23162
	lwx		r61, r12, r15				# 23025
	cmpi	r61, -1
	beq		.b48472				# 23052
	b		.b48426
.b48472:
	sw		r27, 0(r54)				# 25478
	lli		r61, intersection_point.2572				# 1162
	sw		r36, 0(r61)				# 1162
	sw		r47, 1(r61)				# 1162
	sw		r33, 2(r61)				# 25478
	lli		r61, intersected_object_id.2575				# 25478
	sw		r53, 0(r61)				# 25478
	lli		r61, intsec_rectside.2566				# 25570
	sw		r1, 0(r61)				# 25570
	b		.b48418				# 25570
.b48463:
	cmpi	r61, 0
	beq		.b48418				# 22625
	b		.b48469
.b48460:
	addi	r61, r0, 0				# 3188
	cmpi	r39, 0
	beq		.b48463				# 765
	b		.b48464
.b48457:
	fsub	r61, r61, r7				# 22604
	lw		r39, 6(r39)				# 3372
	fcmp	r62, r61
	ble		.b48460				# 3188
	b		.b48461
.b48454:
	cmpi	r20, 3
	beq		.b48457				# 22583
	b		.b48458
.b48441:
	lw		r42, 4(r39)				# 4293
	lw		r59, 0(r42)				# 2037
	lw		r61, 1(r42)				# 2052
	fmul	r61, r61, r56				# 2037
	faddmul	r61, r59, r35, r61				# 2037
	lw		r42, 2(r42)				# 2067
	faddmul	r61, r42, r38, r61				# 22411
	lw		r39, 6(r39)				# 3372
	fcmp	r62, r61
	ble		.b48444				# 3188
.b48445:
	addi	r61, r0, 1				# 3188
	cmpi	r39, 0
	beq		.b48447				# 765
.b48448:
	cmpi	r61, 0
	beq		.b48469				# 775
	b		.b48418
.b48447:
	cmpi	r61, 0
	beq		.b48418				# 22459
	b		.b48469
.b48444:
	addi	r61, r0, 0				# 3188
	cmpi	r39, 0
	beq		.b48447				# 765
	b		.b48448
.b48428:
	fabs	r59, r35				# 322
	lw		r61, 4(r39)				# 3734
	lw		r42, 0(r61)				# 22178
	fcmp	r42, r59
	ble		.b48437				# 3098
.b48432:
	fabs	r42, r56				# 322
	lw		r56, 1(r61)				# 22224
	fcmp	r56, r42
	ble		.b48437				# 3098
.b48434:
	fabs	r42, r38				# 322
	lw		r61, 2(r61)				# 22261
	fcmp	r61, r42
	ble		.b48437				# 3098
.b48438:
	lw		r61, 6(r39)				# 3372
	cmpi	r61, 0
	beq		.b48469				# 23092
	b		.b48418
.b48437:
	lw		r61, 6(r39)				# 3372
	cmpi	r61, 0
	beq		.b48418				# 22348
	b		.b48469
.b48412:
	fneg	r61, r61				# 3025
	b		.b48411				# 3025
.b48414:
	lw		r61, 6(r42)				# 3372
	cmpi	r61, 0
	beq		.b48327				# 25732
.b48417:
	addi	r9, r9, 1				# 25769
	lwx		r53, r12, r9				# 25005
	cmpi	r53, -1
	beq		.b48327				# 25042
	b		.b48330
.b48407:
	fsub	r61, r61, r7				# 15303
	b		.b48406				# 15303
.b48404:
	cmpi	r27, 3
	beq		.b48407				# 15282
	b		.b48408
.b48401:
	b		.b48400				# 14803
.b48396:
	fcmp	r39, r62
	beq		.b48414				# 3128
	b		.b48399
.b48391:
	lw		r15, 4(r42)				# 4293
	lw		r39, 0(r30)				# 1949
	lw		r33, 0(r15)				# 1949
	lw		r61, 1(r30)				# 1967
	lw		r27, 1(r15)				# 1967
	fmul	r61, r61, r27				# 1949
	faddmul	r61, r39, r33, r61				# 1949
	lw		r39, 2(r30)				# 1985
	lw		r15, 2(r15)				# 1985
	faddmul	r61, r39, r15, r61				# 14187
	fcmp	r61, r62
	ble		.b48414				# 3158
.b48394:
	fmul	r39, r27, r56				# 2037
	faddmul	r39, r33, r1, r39				# 2037
	faddmul	r15, r15, r36, r39				# 14262
	fneg	r15, r15				# 14262
	fdiv	r61, r15, r61				# 14243
	sw		r61, 0(r50)				# 14243
	addi	r1, r0, 1				# 14302
	lw		r61, 0(r50)				# 25149
	fcmp	r61, r62
	ble		.b48418				# 3098
	b		.b48420
.b48332:
	lw		r27, 0(r30)				# 13452
	fcmp	r27, r62
	beq		.b48352				# 3128
.b48336:
	lw		r39, 4(r42)				# 4293
	lw		r61, 6(r42)				# 3372
	fcmp	r62, r27
	ble		.b48338				# 3188
.b48339:
	addi	r15, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b48341				# 765
.b48342:
	cmpi	r15, 0
	beq		.b48343				# 775
.b48344:
	lw		r61, 0(r39)				# 13527
	fneg	r61, r61				# 3025
.b48345:
	fsub	r61, r61, r1				# 13603
	fdiv	r33, r61, r27				# 13594
	lw		r61, 1(r30)				# 13649
	faddmul	r61, r33, r61, r56				# 13643
	fabs	r61, r61				# 322
	lw		r15, 1(r39)				# 13636
	fcmp	r15, r61
	ble		.b48352				# 3098
.b48349:
	lw		r61, 2(r30)				# 13709
	faddmul	r61, r33, r61, r36				# 13703
	fabs	r61, r61				# 322
	lw		r15, 2(r39)				# 13696
	fcmp	r15, r61
	ble		.b48352				# 3098
.b48351:
	sw		r33, 0(r50)				# 13756
	addi	r1, r0, 1				# 13917
	lw		r61, 0(r50)				# 25149
	fcmp	r61, r62
	ble		.b48418				# 3098
	b		.b48420
.b48352:
	lw		r47, 1(r30)				# 13452
	fcmp	r47, r62
	beq		.b48372				# 3128
.b48356:
	lw		r39, 4(r42)				# 4293
	lw		r61, 6(r42)				# 3372
	fcmp	r62, r47
	ble		.b48358				# 3188
.b48359:
	addi	r15, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b48361				# 765
.b48362:
	cmpi	r15, 0
	beq		.b48363				# 775
.b48364:
	lw		r61, 1(r39)				# 13527
	fneg	r61, r61				# 3025
.b48365:
	fsub	r61, r61, r56				# 13603
	fdiv	r33, r61, r47				# 13594
	lw		r61, 2(r30)				# 13649
	faddmul	r61, r33, r61, r36				# 13643
	fabs	r61, r61				# 322
	lw		r15, 2(r39)				# 13636
	fcmp	r15, r61
	ble		.b48372				# 3098
.b48369:
	faddmul	r61, r33, r27, r1				# 13703
	fabs	r61, r61				# 322
	lw		r15, 0(r39)				# 13696
	fcmp	r15, r61
	ble		.b48372				# 3098
.b48371:
	sw		r33, 0(r50)				# 13756
	addi	r1, r0, 2				# 13980
	lw		r61, 0(r50)				# 25149
	fcmp	r61, r62
	ble		.b48418				# 3098
	b		.b48420
.b48372:
	lw		r39, 2(r30)				# 13452
	fcmp	r39, r62
	beq		.b48414				# 3128
.b48375:
	lw		r33, 4(r42)				# 4293
	lw		r15, 6(r42)				# 3372
	fcmp	r62, r39
	ble		.b48377				# 3188
.b48378:
	addi	r61, r0, 1				# 3188
	cmpi	r15, 0
	beq		.b48380				# 765
.b48381:
	cmpi	r61, 0
	beq		.b48382				# 775
.b48383:
	lw		r15, 2(r33)				# 13527
	fneg	r15, r15				# 3025
.b48384:
	fsub	r61, r15, r36				# 13603
	fdiv	r39, r61, r39				# 13594
	faddmul	r61, r39, r27, r1				# 13643
	fabs	r61, r61				# 322
	lw		r15, 0(r33)				# 13636
	fcmp	r15, r61
	ble		.b48414				# 3098
.b48388:
	faddmul	r61, r39, r47, r56				# 13703
	fabs	r15, r61				# 322
	lw		r61, 1(r33)				# 13696
	fcmp	r61, r15
	ble		.b48414				# 3098
.b48390:
	sw		r39, 0(r50)				# 13756
	addi	r1, r0, 3				# 14043
	lw		r61, 0(r50)				# 25149
	fcmp	r61, r62
	ble		.b48418				# 3098
	b		.b48420
.b48382:
	lw		r15, 2(r33)				# 13527
	b		.b48384				# 918
.b48380:
	lw		r15, 2(r33)				# 13527
	cmpi	r61, 0
	beq		.b48385				# 905
.b48386:
	b		.b48384				# 918
.b48385:
	fneg	r15, r15				# 3025
	b		.b48384				# 3025
.b48377:
	addi	r61, r0, 0				# 3188
	cmpi	r15, 0
	beq		.b48380				# 765
	b		.b48381
.b48363:
	lw		r61, 1(r39)				# 13527
	b		.b48365				# 918
.b48361:
	lw		r61, 1(r39)				# 13527
	cmpi	r15, 0
	beq		.b48366				# 905
.b48367:
	b		.b48365				# 918
.b48366:
	fneg	r61, r61				# 3025
	b		.b48365				# 3025
.b48358:
	addi	r15, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b48361				# 765
	b		.b48362
.b48343:
	lw		r61, 0(r39)				# 13527
	b		.b48345				# 918
.b48341:
	lw		r61, 0(r39)				# 13527
	cmpi	r15, 0
	beq		.b48346				# 905
.b48347:
	b		.b48345				# 918
.b48346:
	fneg	r61, r61				# 3025
	b		.b48345				# 3025
.b48338:
	addi	r15, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b48341				# 765
	b		.b48342
.b48318:
	fneg	r61, r61				# 3025
	b		.b48317				# 3025
.b48313:
	fsub	r61, r61, r7				# 15303
	b		.b48312				# 15303
.b48310:
	cmpi	r36, 3
	beq		.b48313				# 15282
	b		.b48314
.b48307:
	b		.b48306				# 14803
.b48302:
	fcmp	r15, r62
	beq		.b48085				# 3128
	b		.b48305
.b48297:
	lw		r39, 4(r33)				# 4293
	lw		r17, 0(r30)				# 1949
	lw		r61, 0(r39)				# 1949
	lw		r9, 1(r30)				# 1967
	lw		r15, 1(r39)				# 1967
	fmul	r9, r9, r15				# 1949
	faddmul	r17, r17, r61, r9				# 1949
	lw		r9, 2(r30)				# 1985
	lw		r39, 2(r39)				# 1985
	faddmul	r17, r9, r39, r17				# 14187
	fcmp	r17, r62
	ble		.b48085				# 3158
.b48300:
	fmul	r9, r15, r12				# 2037
	faddmul	r9, r61, r50, r9				# 2037
	faddmul	r9, r39, r53, r9				# 14262
	fneg	r9, r9				# 14262
	fdiv	r9, r9, r17				# 14243
	lli		r61, solver_dist.2563				# 14243
	sw		r9, 0(r61)				# 14243
	b		.b48321				# 26416
.b48238:
	lw		r42, 0(r30)				# 13452
	fcmp	r42, r62
	beq		.b48258				# 3128
.b48242:
	lw		r15, 4(r33)				# 4293
	lw		r61, 6(r33)				# 3372
	fcmp	r62, r42
	ble		.b48244				# 3188
.b48245:
	addi	r9, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b48247				# 765
.b48248:
	cmpi	r9, 0
	beq		.b48249				# 775
.b48250:
	lw		r61, 0(r15)				# 13527
	fneg	r61, r61				# 3025
.b48251:
	fsub	r9, r61, r50				# 13603
	fdiv	r39, r9, r42				# 13594
	lw		r9, 1(r30)				# 13649
	faddmul	r9, r39, r9, r12				# 13643
	fabs	r61, r9				# 322
	lw		r9, 1(r15)				# 13636
	fcmp	r9, r61
	ble		.b48258				# 3098
.b48255:
	lw		r9, 2(r30)				# 13709
	faddmul	r9, r39, r9, r53				# 13703
	fabs	r61, r9				# 322
	lw		r9, 2(r15)				# 13696
	fcmp	r9, r61
	ble		.b48258				# 3098
.b48257:
	lli		r9, solver_dist.2563				# 13756
	sw		r39, 0(r9)				# 13756
	b		.b48321				# 13860
.b48258:
	lw		r15, 1(r30)				# 13452
	fcmp	r15, r62
	beq		.b48278				# 3128
.b48262:
	lw		r17, 4(r33)				# 4293
	lw		r9, 6(r33)				# 3372
	fcmp	r62, r15
	ble		.b48264				# 3188
.b48265:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48267				# 765
.b48268:
	cmpi	r61, 0
	beq		.b48269				# 775
.b48270:
	lw		r9, 1(r17)				# 13527
	fneg	r9, r9				# 3025
.b48271:
	fsub	r9, r9, r12				# 13603
	fdiv	r9, r9, r15				# 13594
	lw		r61, 2(r30)				# 13649
	faddmul	r61, r9, r61, r53				# 13643
	fabs	r39, r61				# 322
	lw		r61, 2(r17)				# 13636
	fcmp	r61, r39
	ble		.b48278				# 3098
.b48275:
	faddmul	r61, r9, r42, r50				# 13703
	fabs	r39, r61				# 322
	lw		r61, 0(r17)				# 13696
	fcmp	r61, r39
	ble		.b48278				# 3098
.b48277:
	lli		r61, solver_dist.2563				# 13756
	sw		r9, 0(r61)				# 13756
	b		.b48321				# 13928
.b48278:
	lw		r39, 2(r30)				# 13452
	fcmp	r39, r62
	beq		.b48085				# 3128
.b48281:
	lw		r17, 4(r33)				# 4293
	lw		r9, 6(r33)				# 3372
	fcmp	r62, r39
	ble		.b48283				# 3188
.b48284:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48286				# 765
.b48287:
	cmpi	r61, 0
	beq		.b48288				# 775
.b48289:
	lw		r9, 2(r17)				# 13527
	fneg	r9, r9				# 3025
.b48290:
	fsub	r9, r9, r53				# 13603
	fdiv	r61, r9, r39				# 13594
	faddmul	r9, r61, r42, r50				# 13643
	fabs	r39, r9				# 322
	lw		r9, 0(r17)				# 13636
	fcmp	r9, r39
	ble		.b48085				# 3098
.b48294:
	faddmul	r9, r61, r15, r12				# 13703
	fabs	r15, r9				# 322
	lw		r9, 1(r17)				# 13696
	fcmp	r9, r15
	ble		.b48085				# 3098
.b48296:
	lli		r9, solver_dist.2563				# 13756
	sw		r61, 0(r9)				# 13756
	b		.b48321				# 26416
.b48288:
	lw		r9, 2(r17)				# 13527
	b		.b48290				# 918
.b48286:
	lw		r9, 2(r17)				# 13527
	cmpi	r61, 0
	beq		.b48291				# 905
.b48292:
	b		.b48290				# 918
.b48291:
	fneg	r9, r9				# 3025
	b		.b48290				# 3025
.b48283:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48286				# 765
	b		.b48287
.b48269:
	lw		r9, 1(r17)				# 13527
	b		.b48271				# 918
.b48267:
	lw		r9, 1(r17)				# 13527
	cmpi	r61, 0
	beq		.b48272				# 905
.b48273:
	b		.b48271				# 918
.b48272:
	fneg	r9, r9				# 3025
	b		.b48271				# 3025
.b48264:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48267				# 765
	b		.b48268
.b48249:
	lw		r61, 0(r15)				# 13527
	b		.b48251				# 918
.b48247:
	lw		r61, 0(r15)				# 13527
	cmpi	r9, 0
	beq		.b48252				# 905
.b48253:
	b		.b48251				# 918
.b48252:
	fneg	r61, r61				# 3025
	b		.b48251				# 3025
.b48244:
	addi	r9, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b48247				# 765
	b		.b48248
.b48086:
	addi	r48, r0, 1				# 25897
	lwx		r9, r23, r48				# 25897
	cmpi	r9, -1
	beq		.b48085				# 25928
.b48090:
	lli		r61, and_net.2554				# 25953
	lwx		r29, r61, r9				# 25953
	addi	r15, r0, 0				# 25005
	lwx		r17, r29, r15				# 25005
	cmpi	r17, -1
	beq		.b48091				# 25042
.b48094:
	lli		r14, objects.2536				# 15582
	lwx		r1, r14, r17				# 15582
	lw		r42, 0(r37)				# 15621
	lw		r61, 5(r1)				# 4475
	lw		r9, 0(r61)				# 15621
	fsub	r36, r42, r9				# 15611
	lw		r56, 1(r37)				# 15659
	lw		r9, 1(r61)				# 15659
	fsub	r27, r56, r9				# 15649
	lw		r33, 2(r37)				# 15697
	lw		r9, 2(r61)				# 15697
	fsub	r50, r33, r9				# 15687
	lw		r47, 1(r1)				# 2994
	cmpi	r47, 1
	beq		.b48096				# 15753
.b48097:
	cmpi	r47, 2
	beq		.b48155				# 15817
.b48156:
	lw		r53, 0(r30)				# 15037
	lw		r12, 1(r30)				# 15037
	lw		r2, 2(r30)				# 15037
	fmul	r61, r53, r53				# 14374
	lw		r39, 4(r1)				# 3734
	lw		r35, 0(r39)				# 14374
	fmul	r9, r12, r12				# 14400
	lw		r19, 1(r39)				# 14400
	fmul	r9, r9, r19				# 14374
	faddmul	r61, r61, r35, r9				# 14374
	fmul	r9, r2, r2				# 14426
	lw		r20, 2(r39)				# 14426
	faddmul	r9, r9, r20, r61				# 14354
	lw		r44, 3(r1)				# 3553
	cmpi	r44, 0
	beq		.b48160				# 14456
.b48161:
	fmul	r59, r12, r2				# 14522
	lw		r61, 9(r1)				# 5989
	lw		r39, 0(r61)				# 14522
	faddmul	r39, r59, r39, r9				# 14503
	fmul	r59, r2, r53				# 14556
	lw		r9, 1(r61)				# 14556
	faddmul	r39, r59, r9, r39				# 14503
	fmul	r9, r53, r12				# 14590
	lw		r61, 2(r61)				# 14590
	faddmul	r9, r9, r61, r39				# 14503
	fcmp	r9, r62
	beq		.b48178				# 3128
.b48163:
	fmul	r39, r53, r36				# 14680
	fmul	r61, r12, r27				# 14713
	fmul	r61, r61, r19				# 14680
	faddmul	r39, r39, r35, r61				# 14680
	fmul	r61, r2, r50				# 14746
	faddmul	r39, r61, r20, r39				# 14660
	cmpi	r44, 0
	beq		.b48165				# 14777
.b48166:
	fmul	r61, r12, r50				# 14851
	faddmul	r49, r2, r27, r61				# 14850
	lw		r59, 9(r1)				# 5989
	lw		r61, 0(r59)				# 14850
	fmul	r2, r2, r36				# 14895
	faddmul	r38, r53, r50, r2				# 14894
	lw		r2, 1(r59)				# 14894
	fmul	r2, r38, r2				# 14850
	faddmul	r2, r49, r61, r2				# 14850
	fmul	r61, r12, r36				# 14939
	faddmul	r61, r53, r27, r61				# 14938
	lw		r12, 2(r59)				# 14938
	faddmul	r61, r61, r12, r2				# 14837
	fhalf	r61, r61				# 14824
	fadd	r39, r39, r61				# 14824
.b48164:
	fmul	r61, r36, r36				# 14374
	fmul	r12, r27, r27				# 14400
	fmul	r19, r12, r19				# 14374
	faddmul	r61, r61, r35, r19				# 14374
	fmul	r19, r50, r50				# 14426
	faddmul	r61, r19, r20, r61				# 14354
	cmpi	r44, 0
	beq		.b48168				# 14456
.b48169:
	fmul	r19, r27, r50				# 14522
	lw		r12, 9(r1)				# 5989
	lw		r53, 0(r12)				# 14522
	faddmul	r53, r19, r53, r61				# 14503
	fmul	r19, r50, r36				# 14556
	lw		r61, 1(r12)				# 14556
	faddmul	r61, r19, r61, r53				# 14503
	fmul	r50, r36, r27				# 14590
	lw		r19, 2(r12)				# 14590
	faddmul	r61, r50, r19, r61				# 14503
	cmpi	r47, 3
	beq		.b48171				# 15282
.b48172:
.b48170:
	fmul	r19, r39, r39				# 15338
	fmul	r61, r9, r61				# 15338
	fsub	r61, r19, r61				# 15330
	fcmp	r61, r62
	ble		.b48178				# 3158
.b48174:
	fsqrt	r61, r61				# 227
	lw		r19, 6(r1)				# 3372
	cmpi	r19, 0
	beq		.b48176				# 15425
.b48177:
.b48175:
	fsub	r61, r61, r39				# 15491
	fdiv	r61, r61, r9				# 15472
	lli		r9, solver_dist.2563				# 15472
	sw		r61, 0(r9)				# 15472
	addi	r1, r0, 1				# 15510
	lli		r9, solver_dist.2563				# 25149
	lw		r61, 0(r9)				# 25149
	fcmp	r61, r62
	ble		.b48182				# 3098
.b48184:
	lw		r9, 0(r54)				# 25216
	fcmp	r9, r61
	ble		.b48182				# 3098
.b48186:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 25260
	fadd	r36, r61, r9				# 25252
	lw		r9, 0(r30)				# 25289
	faddmul	r12, r9, r36, r42				# 25280
	lw		r9, 1(r30)				# 25336
	faddmul	r56, r9, r36, r56				# 25327
	lw		r9, 2(r30)				# 25383
	faddmul	r33, r9, r36, r33				# 25374
	addi	r9, r0, 0				# 23025
	lwx		r61, r29, r9				# 23025
	cmpi	r61, -1
	beq		.b48236				# 23052
.b48190:
	lwx		r50, r14, r61				# 23095
	lw		r39, 5(r50)				# 4475
	lw		r61, 0(r39)				# 22709
	fsub	r53, r12, r61				# 22700
	lw		r61, 1(r39)				# 22741
	fsub	r47, r56, r61				# 22732
	lw		r61, 2(r39)				# 22773
	fsub	r19, r33, r61				# 22764
	lw		r59, 1(r50)				# 2994
	cmpi	r59, 1
	beq		.b48192				# 22824
.b48193:
	cmpi	r59, 2
	beq		.b48205				# 22882
.b48206:
	fmul	r27, r53, r53				# 14374
	lw		r42, 4(r50)				# 3734
	lw		r39, 0(r42)				# 14374
	fmul	r61, r47, r47				# 14400
	lw		r2, 1(r42)				# 14400
	fmul	r61, r61, r2				# 14374
	faddmul	r39, r27, r39, r61				# 14374
	fmul	r27, r19, r19				# 14426
	lw		r61, 2(r42)				# 14426
	faddmul	r61, r27, r61, r39				# 14354
	lw		r39, 3(r50)				# 3553
	cmpi	r39, 0
	beq		.b48218				# 14456
.b48219:
	fmul	r42, r47, r19				# 14522
	lw		r27, 9(r50)				# 5989
	lw		r39, 0(r27)				# 14522
	faddmul	r42, r42, r39, r61				# 14503
	fmul	r61, r19, r53				# 14556
	lw		r39, 1(r27)				# 14556
	faddmul	r61, r61, r39, r42				# 14503
	fmul	r19, r53, r47				# 14590
	lw		r39, 2(r27)				# 14590
	faddmul	r61, r19, r39, r61				# 14503
	cmpi	r59, 3
	beq		.b48221				# 22583
.b48222:
	lw		r39, 6(r50)				# 3372
	fcmp	r62, r61
	ble		.b48224				# 3188
.b48225:
	addi	r61, r0, 1				# 3188
	cmpi	r39, 0
	beq		.b48227				# 765
.b48228:
	cmpi	r61, 0
	beq		.b48233				# 775
.b48182:
	addi	r15, r15, 1				# 25658
	lwx		r17, r29, r15				# 25005
	cmpi	r17, -1
	beq		.b48091				# 25042
	b		.b48094
.b48091:
	addi	r48, r48, 1				# 26034
	lwx		r9, r23, r48				# 25897
	cmpi	r9, -1
	beq		.b48085				# 25928
	b		.b48090
.b48233:
	addi	r9, r9, 1				# 23162
	lwx		r61, r29, r9				# 23025
	cmpi	r61, -1
	beq		.b48236				# 23052
	b		.b48190
.b48236:
	sw		r36, 0(r54)				# 25478
	lli		r9, intersection_point.2572				# 1162
	sw		r12, 0(r9)				# 1162
	sw		r56, 1(r9)				# 1162
	sw		r33, 2(r9)				# 25478
	lli		r9, intersected_object_id.2575				# 25478
	sw		r17, 0(r9)				# 25478
	lli		r9, intsec_rectside.2566				# 25570
	sw		r1, 0(r9)				# 25570
	b		.b48182				# 25570
.b48227:
	cmpi	r61, 0
	beq		.b48182				# 22625
	b		.b48233
.b48224:
	addi	r61, r0, 0				# 3188
	cmpi	r39, 0
	beq		.b48227				# 765
	b		.b48228
.b48221:
	fsub	r61, r61, r7				# 22604
	lw		r39, 6(r50)				# 3372
	fcmp	r62, r61
	ble		.b48224				# 3188
	b		.b48225
.b48218:
	cmpi	r59, 3
	beq		.b48221				# 22583
	b		.b48222
.b48205:
	lw		r42, 4(r50)				# 4293
	lw		r61, 0(r42)				# 2037
	lw		r39, 1(r42)				# 2052
	fmul	r39, r39, r47				# 2037
	faddmul	r39, r61, r53, r39				# 2037
	lw		r61, 2(r42)				# 2067
	faddmul	r61, r61, r19, r39				# 22411
	lw		r39, 6(r50)				# 3372
	fcmp	r62, r61
	ble		.b48208				# 3188
.b48209:
	addi	r61, r0, 1				# 3188
	cmpi	r39, 0
	beq		.b48211				# 765
.b48212:
	cmpi	r61, 0
	beq		.b48233				# 775
	b		.b48182
.b48211:
	cmpi	r61, 0
	beq		.b48182				# 22459
	b		.b48233
.b48208:
	addi	r61, r0, 0				# 3188
	cmpi	r39, 0
	beq		.b48211				# 765
	b		.b48212
.b48192:
	fabs	r39, r53				# 322
	lw		r53, 4(r50)				# 3734
	lw		r61, 0(r53)				# 22178
	fcmp	r61, r39
	ble		.b48201				# 3098
.b48196:
	fabs	r39, r47				# 322
	lw		r61, 1(r53)				# 22224
	fcmp	r61, r39
	ble		.b48201				# 3098
.b48198:
	fabs	r39, r19				# 322
	lw		r61, 2(r53)				# 22261
	fcmp	r61, r39
	ble		.b48201				# 3098
.b48202:
	lw		r61, 6(r50)				# 3372
	cmpi	r61, 0
	beq		.b48233				# 23092
	b		.b48182
.b48201:
	lw		r61, 6(r50)				# 3372
	cmpi	r61, 0
	beq		.b48182				# 22348
	b		.b48233
.b48176:
	fneg	r61, r61				# 3025
	b		.b48175				# 3025
.b48178:
	lw		r9, 6(r1)				# 3372
	cmpi	r9, 0
	beq		.b48091				# 25732
.b48181:
	addi	r15, r15, 1				# 25769
	lwx		r17, r29, r15				# 25005
	cmpi	r17, -1
	beq		.b48091				# 25042
	b		.b48094
.b48171:
	fsub	r61, r61, r7				# 15303
	b		.b48170				# 15303
.b48168:
	cmpi	r47, 3
	beq		.b48171				# 15282
	b		.b48172
.b48165:
	b		.b48164				# 14803
.b48160:
	fcmp	r9, r62
	beq		.b48178				# 3128
	b		.b48163
.b48155:
	lw		r9, 4(r1)				# 4293
	lw		r39, 0(r30)				# 1949
	lw		r61, 0(r9)				# 1949
	lw		r12, 1(r30)				# 1967
	lw		r19, 1(r9)				# 1967
	fmul	r12, r12, r19				# 1949
	faddmul	r53, r39, r61, r12				# 1949
	lw		r12, 2(r30)				# 1985
	lw		r39, 2(r9)				# 1985
	faddmul	r9, r12, r39, r53				# 14187
	fcmp	r9, r62
	ble		.b48178				# 3158
.b48158:
	fmul	r19, r19, r27				# 2037
	faddmul	r61, r61, r36, r19				# 2037
	faddmul	r61, r39, r50, r61				# 14262
	fneg	r61, r61				# 14262
	fdiv	r61, r61, r9				# 14243
	lli		r9, solver_dist.2563				# 14243
	sw		r61, 0(r9)				# 14243
	addi	r1, r0, 1				# 14302
	lli		r9, solver_dist.2563				# 25149
	lw		r61, 0(r9)				# 25149
	fcmp	r61, r62
	ble		.b48182				# 3098
	b		.b48184
.b48096:
	lw		r39, 0(r30)				# 13452
	fcmp	r39, r62
	beq		.b48116				# 3128
.b48100:
	lw		r19, 4(r1)				# 4293
	lw		r9, 6(r1)				# 3372
	fcmp	r62, r39
	ble		.b48102				# 3188
.b48103:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48105				# 765
.b48106:
	cmpi	r61, 0
	beq		.b48107				# 775
.b48108:
	lw		r9, 0(r19)				# 13527
	fneg	r9, r9				# 3025
.b48109:
	fsub	r9, r9, r36				# 13603
	fdiv	r12, r9, r39				# 13594
	lw		r9, 1(r30)				# 13649
	faddmul	r9, r12, r9, r27				# 13643
	fabs	r61, r9				# 322
	lw		r9, 1(r19)				# 13636
	fcmp	r9, r61
	ble		.b48116				# 3098
.b48113:
	lw		r9, 2(r30)				# 13709
	faddmul	r9, r12, r9, r50				# 13703
	fabs	r9, r9				# 322
	lw		r61, 2(r19)				# 13696
	fcmp	r61, r9
	ble		.b48116				# 3098
.b48115:
	lli		r9, solver_dist.2563				# 13756
	sw		r12, 0(r9)				# 13756
.b48117:
	addi	r1, r0, 1				# 13917
	lli		r9, solver_dist.2563				# 25149
	lw		r61, 0(r9)				# 25149
	fcmp	r61, r62
	ble		.b48182				# 3098
	b		.b48184
.b48116:
	lw		r19, 1(r30)				# 13452
	fcmp	r19, r62
	beq		.b48136				# 3128
.b48120:
	lw		r53, 4(r1)				# 4293
	lw		r61, 6(r1)				# 3372
	fcmp	r62, r19
	ble		.b48122				# 3188
.b48123:
	addi	r9, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b48125				# 765
.b48126:
	cmpi	r9, 0
	beq		.b48127				# 775
.b48128:
	lw		r61, 1(r53)				# 13527
	fneg	r61, r61				# 3025
.b48129:
	fsub	r9, r61, r27				# 13603
	fdiv	r12, r9, r19				# 13594
	lw		r9, 2(r30)				# 13649
	faddmul	r9, r12, r9, r50				# 13643
	fabs	r61, r9				# 322
	lw		r9, 2(r53)				# 13636
	fcmp	r9, r61
	ble		.b48136				# 3098
.b48133:
	faddmul	r9, r12, r39, r36				# 13703
	fabs	r61, r9				# 322
	lw		r9, 0(r53)				# 13696
	fcmp	r9, r61
	ble		.b48136				# 3098
.b48135:
	lli		r9, solver_dist.2563				# 13756
	sw		r12, 0(r9)				# 13756
.b48137:
	addi	r1, r0, 2				# 13980
	lli		r9, solver_dist.2563				# 25149
	lw		r61, 0(r9)				# 25149
	fcmp	r61, r62
	ble		.b48182				# 3098
	b		.b48184
.b48136:
	lw		r53, 2(r30)				# 13452
	fcmp	r53, r62
	beq		.b48178				# 3128
.b48139:
	lw		r12, 4(r1)				# 4293
	lw		r9, 6(r1)				# 3372
	fcmp	r62, r53
	ble		.b48141				# 3188
.b48142:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48144				# 765
.b48145:
	cmpi	r61, 0
	beq		.b48146				# 775
.b48147:
	lw		r9, 2(r12)				# 13527
	fneg	r9, r9				# 3025
.b48148:
	fsub	r9, r9, r50				# 13603
	fdiv	r61, r9, r53				# 13594
	faddmul	r9, r61, r39, r36				# 13643
	fabs	r9, r9				# 322
	lw		r39, 0(r12)				# 13636
	fcmp	r39, r9
	ble		.b48178				# 3098
.b48152:
	faddmul	r9, r61, r19, r27				# 13703
	fabs	r39, r9				# 322
	lw		r9, 1(r12)				# 13696
	fcmp	r9, r39
	ble		.b48178				# 3098
.b48154:
	lli		r9, solver_dist.2563				# 13756
	sw		r61, 0(r9)				# 13756
	addi	r1, r0, 3				# 14043
	lli		r9, solver_dist.2563				# 25149
	lw		r61, 0(r9)				# 25149
	fcmp	r61, r62
	ble		.b48182				# 3098
	b		.b48184
.b48146:
	lw		r9, 2(r12)				# 13527
	b		.b48148				# 918
.b48144:
	lw		r9, 2(r12)				# 13527
	cmpi	r61, 0
	beq		.b48149				# 905
.b48150:
	b		.b48148				# 918
.b48149:
	fneg	r9, r9				# 3025
	b		.b48148				# 3025
.b48141:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48144				# 765
	b		.b48145
.b48127:
	lw		r61, 1(r53)				# 13527
	b		.b48129				# 918
.b48125:
	lw		r61, 1(r53)				# 13527
	cmpi	r9, 0
	beq		.b48130				# 905
.b48131:
	b		.b48129				# 918
.b48130:
	fneg	r61, r61				# 3025
	b		.b48129				# 3025
.b48122:
	addi	r9, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b48125				# 765
	b		.b48126
.b48107:
	lw		r9, 0(r19)				# 13527
	b		.b48109				# 918
.b48105:
	lw		r9, 0(r19)				# 13527
	cmpi	r61, 0
	beq		.b48110				# 905
.b48111:
	b		.b48109				# 918
.b48110:
	fneg	r9, r9				# 3025
	b		.b48109				# 3025
.b48102:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48105				# 765
	b		.b48106
.b48075:
	addis	r61, r0, 16256				# 1801
	b		.b48074				# 1801
	# main program start
_min_caml_start:
	addi	r41, r0, 0				# 154
	lli		r54, n_objects.2525				# 138
	sw		r41, 0(r54)				# 154
	addi	r13, r0, 0				# 279
	mv		r61, r4
	addi	r4, r4, 0				# 267
	lli		r9, dummy.2528				# 267
	sw		r61, 0(r9)				# 267
	mv		r9, r4
	addi	r4, r4, 11				# 315
	sw		r41, 0(r9)				# 315
	sw		r41, 1(r9)				# 315
	sw		r41, 2(r9)				# 315
	sw		r41, 3(r9)				# 315
	sw		r61, 4(r9)				# 315
	sw		r61, 5(r9)				# 315
	sw		r41, 6(r9)				# 315
	sw		r61, 7(r9)				# 315
	sw		r61, 8(r9)				# 315
	sw		r61, 9(r9)				# 315
	sw		r61, 10(r9)				# 315
	lli		r61, Tt270.2535				# 301
	sw		r9, 0(r61)				# 301
	lli		r7, objects.2536				# 250
	addi	r61, r0, 0				# 301
.b49454:
	swx		r9, r61, r7				# 301
	addi	r61, r61, 1				# 301
	cmpi	r61, 59
	ble		.b49454				# 301
.b49452:
	lli		r10, screen.2539				# 410
	sw		r13, 0(r10)				# 423
	sw		r13, 1(r10)				# 423
	sw		r13, 2(r10)				# 423
	lli		r30, viewpoint.2542				# 465
	sw		r13, 0(r30)				# 481
	sw		r13, 1(r30)				# 481
	sw		r13, 2(r30)				# 481
	lli		r25, light.2545				# 553
	sw		r13, 0(r25)				# 565
	sw		r13, 1(r25)				# 565
	sw		r13, 2(r25)				# 565
	addis	r9, r0, 17279				# 643
	lli		r51, beam.2548				# 632
	sw		r9, 0(r51)				# 643
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
	sw		r13, 0(r9)				# 965
	lli		r9, intsec_rectside.2566				# 1028
	sw		r41, 0(r9)				# 1050
	addis	r9, r0, 20078
	ori		r9, r9, 27432				# 1118
	lli		r61, tmin.2569				# 1107
	sw		r9, 0(r61)				# 1118
	lli		r9, intersection_point.2572				# 1171
	sw		r13, 0(r9)				# 1196
	sw		r13, 1(r9)				# 1196
	sw		r13, 2(r9)				# 1196
	lli		r9, intersected_object_id.2575				# 1259
	sw		r41, 0(r9)				# 1287
	lli		r9, nvector.2578				# 1330
	sw		r13, 0(r9)				# 1344
	sw		r13, 1(r9)				# 1344
	sw		r13, 2(r9)				# 1344
	lli		r9, texture_color.2581				# 1383
	sw		r13, 0(r9)				# 1403
	sw		r13, 1(r9)				# 1403
	sw		r13, 2(r9)				# 1403
	lli		r9, diffuse_ray.2584				# 1470
	sw		r13, 0(r9)				# 1488
	sw		r13, 1(r9)				# 1488
	sw		r13, 2(r9)				# 1488
	lli		r9, rgb.2587				# 1551
	sw		r13, 0(r9)				# 1561
	sw		r13, 1(r9)				# 1561
	sw		r13, 2(r9)				# 1561
	lli		r26, image_size.2590				# 1604
	sw		r41, 0(r26)				# 1621
	sw		r41, 1(r26)				# 1621
	lli		r62, image_center.2593				# 1688
	sw		r41, 0(r62)				# 1707
	sw		r41, 1(r62)				# 1707
	lli		r46, scan_pitch.2596				# 1763
	sw		r13, 0(r46)				# 1780
	lli		r9, startp.2599				# 1850
	sw		r13, 0(r9)				# 1863
	sw		r13, 1(r9)				# 1863
	sw		r13, 2(r9)				# 1863
	lli		r9, startp_fast.2602				# 1937
	sw		r13, 0(r9)				# 1955
	sw		r13, 1(r9)				# 1955
	sw		r13, 2(r9)				# 1955
	lli		r57, screenx_dir.2605				# 2031
	sw		r13, 0(r57)				# 2049
	sw		r13, 1(r57)				# 2049
	sw		r13, 2(r57)				# 2049
	lli		r15, screeny_dir.2608				# 2069
	sw		r13, 0(r15)				# 2087
	sw		r13, 1(r15)				# 2087
	sw		r13, 2(r15)				# 2087
	lli		r37, screenz_dir.2611				# 2107
	sw		r13, 0(r37)				# 2125
	sw		r13, 1(r37)				# 2125
	sw		r13, 2(r37)				# 2125
	lli		r9, ptrace_dirvec.2614				# 2198
	sw		r13, 0(r9)				# 2219
	sw		r13, 1(r9)				# 2219
	sw		r13, 2(r9)				# 2219
	mv		r28, r4
	addi	r4, r4, 0				# 2318
	lli		r9, dummyf.2617				# 2318
	sw		r28, 0(r9)				# 2318
	mv		r61, r4
	addi	r4, r4, 0				# 2353
	lli		r9, dummyff.2619				# 2353
	sw		r61, 0(r9)				# 2353
	mv		r9, r4
	addi	r4, r4, 2				# 2420
	sw		r28, 0(r9)				# 2420
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
	mv		r28, r4
	addi	r4, r4, 0				# 2542
	lli		r9, dummyf2.2627				# 2542
	sw		r28, 0(r9)				# 2542
	lli		r9, v3.2630				# 2578
	sw		r13, 0(r9)				# 2587
	sw		r13, 1(r9)				# 2587
	sw		r13, 2(r9)				# 2587
	lli		r61, consts.2632				# 2609
	addi	r9, r0, 0				# 2622
.b49462:
	swx		r28, r9, r61				# 2622
	addi	r9, r9, 1				# 2622
	cmpi	r9, 59
	ble		.b49462				# 2622
.b49460:
	mv		r28, r4
	addi	r4, r4, 0				# 2717
	lli		r9, dummyf3.2636				# 2717
	sw		r28, 0(r9)				# 2717
	mv		r61, r4
	addi	r4, r4, 0				# 2753
	lli		r9, dummyff3.2638				# 2753
	sw		r61, 0(r9)				# 2753
	mv		r9, r4
	addi	r4, r4, 2				# 2808
	sw		r28, 0(r9)				# 2808
	sw		r61, 1(r9)				# 2808
	lli		r61, dummydv.2639				# 2794
	sw		r9, 0(r61)				# 2794
	mv		r61, r4
	addi	r4, r4, 3				# 2848
	sw		r41, 0(r61)				# 2848
	sw		r9, 1(r61)				# 2848
	sw		r13, 2(r61)				# 2848
	lli		r9, Tt342.2643				# 2833
	sw		r61, 0(r9)				# 2833
	lli		r28, reflections.2644				# 2697
	addi	r9, r0, 0				# 2833
.b49466:
	swx		r61, r9, r28				# 2833
	addi	r9, r9, 1				# 2833
	cmpi	r9, 179
	ble		.b49466				# 2833
.b49464:
	lli		r9, n_reflections.2647				# 2911
	sw		r41, 0(r9)				# 2931
	addi	r9, r0, 128				# 47379
	sw		r9, 0(r26)				# 46875
	sw		r9, 1(r26)				# 46875
	addi	r61, r0, 64				# 46929
	sw		r61, 0(r62)				# 46875
	sw		r61, 1(r62)				# 46875
	addis	r61, r0, 17152				# 47013
	itof	r9, r9				# 639
	fdiv	r9, r61, r9				# 46995
	sw		r9, 0(r46)				# 46875
	mv		r39, r4
	addi	r4, r4, 3				# 42355
	sw		r13, 0(r39)				# 42355
	sw		r13, 1(r39)				# 42355
	sw		r13, 2(r39)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r23, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r23)				# 42151
	sw		r9, 1(r23)				# 42151
	sw		r9, 2(r23)				# 42151
	sw		r9, 3(r23)				# 42151
	sw		r9, 4(r23)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r23)				# 42173
	mv		r26, r4
	addi	r4, r4, 5				# 42435
	sw		r41, 0(r26)				# 42435
	sw		r41, 1(r26)				# 42435
	sw		r41, 2(r26)				# 42435
	sw		r41, 3(r26)				# 42435
	sw		r41, 4(r26)				# 42435
	mv		r9, r4
	addi	r4, r4, 5				# 42468
	sw		r41, 0(r9)				# 42468
	sw		r41, 1(r9)				# 42468
	sw		r41, 2(r9)				# 42468
	sw		r41, 3(r9)				# 42468
	sw		r41, 4(r9)				# 42468
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r61)				# 42117
	sw		r13, 1(r61)				# 42117
	sw		r13, 2(r61)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r48)				# 42151
	sw		r61, 1(r48)				# 42151
	sw		r61, 2(r48)				# 42151
	sw		r61, 3(r48)				# 42151
	sw		r61, 4(r48)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r61)				# 42186
	sw		r13, 1(r61)				# 42186
	sw		r13, 2(r61)				# 42186
	sw		r61, 1(r48)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r61)				# 42219
	sw		r13, 1(r61)				# 42219
	sw		r13, 2(r61)				# 42219
	sw		r61, 2(r48)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r61)				# 42252
	sw		r13, 1(r61)				# 42252
	sw		r13, 2(r61)				# 42252
	sw		r61, 3(r48)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r61)				# 42285
	sw		r13, 1(r61)				# 42285
	sw		r13, 2(r61)				# 42285
	sw		r61, 4(r48)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r61)				# 42117
	sw		r13, 1(r61)				# 42117
	sw		r13, 2(r61)				# 42117
	mv		r62, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r62)				# 42151
	sw		r61, 1(r62)				# 42151
	sw		r61, 2(r62)				# 42151
	sw		r61, 3(r62)				# 42151
	sw		r61, 4(r62)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r61)				# 42186
	sw		r13, 1(r61)				# 42186
	sw		r13, 2(r61)				# 42186
	sw		r61, 1(r62)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r61)				# 42219
	sw		r13, 1(r61)				# 42219
	sw		r13, 2(r61)				# 42219
	sw		r61, 2(r62)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r61)				# 42252
	sw		r13, 1(r61)				# 42252
	sw		r13, 2(r61)				# 42252
	sw		r61, 3(r62)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r61)				# 42285
	sw		r13, 1(r61)				# 42285
	sw		r13, 2(r61)				# 42285
	sw		r61, 4(r62)				# 42173
	mv		r28, r4
	addi	r4, r4, 1				# 42586
	sw		r41, 0(r28)				# 42586
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r61)				# 42117
	sw		r13, 1(r61)				# 42117
	sw		r13, 2(r61)				# 42117
	mv		r46, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r46)				# 42151
	sw		r61, 1(r46)				# 42151
	sw		r61, 2(r46)				# 42151
	sw		r61, 3(r46)				# 42151
	sw		r61, 4(r46)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r61)				# 42186
	sw		r13, 1(r61)				# 42186
	sw		r13, 2(r61)				# 42186
	sw		r61, 1(r46)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r61)				# 42219
	sw		r13, 1(r61)				# 42219
	sw		r13, 2(r61)				# 42219
	sw		r61, 2(r46)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r61)				# 42252
	sw		r13, 1(r61)				# 42252
	sw		r13, 2(r61)				# 42252
	sw		r61, 3(r46)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r61)				# 42285
	sw		r13, 1(r61)				# 42285
	sw		r13, 2(r61)				# 42285
	sw		r61, 4(r46)				# 42173
	mv		r61, r4
	addi	r4, r4, 8				# 42651
	sw		r39, 0(r61)				# 42651
	sw		r23, 1(r61)				# 42651
	sw		r26, 2(r61)				# 42651
	sw		r9, 3(r61)				# 42651
	sw		r48, 4(r61)				# 42651
	sw		r62, 5(r61)				# 42651
	sw		r28, 6(r61)				# 42651
	sw		r46, 7(r61)				# 42651
	mv		r39, r4
	addi	r4, r4, 128				# 42912
	addi	r9, r0, 0				# 42912
.b49470:
	swx		r61, r9, r39				# 42912
	addi	r9, r9, 1				# 42912
	cmpi	r9, 127
	ble		.b49470				# 42912
.b49468:
	sw		r39, 0(r3)				# 42901
	addi	r23, r0, 126				# 42764
.b49474:
	mv		r62, r4
	addi	r4, r4, 3				# 42355
	sw		r13, 0(r62)				# 42355
	sw		r13, 1(r62)				# 42355
	sw		r13, 2(r62)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r61, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r61)				# 42151
	sw		r9, 1(r61)				# 42151
	sw		r9, 2(r61)				# 42151
	sw		r9, 3(r61)				# 42151
	sw		r9, 4(r61)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r61)				# 42173
	mv		r28, r4
	addi	r4, r4, 5				# 42435
	sw		r41, 0(r28)				# 42435
	sw		r41, 1(r28)				# 42435
	sw		r41, 2(r28)				# 42435
	sw		r41, 3(r28)				# 42435
	sw		r41, 4(r28)				# 42435
	mv		r26, r4
	addi	r4, r4, 5				# 42468
	sw		r41, 0(r26)				# 42468
	sw		r41, 1(r26)				# 42468
	sw		r41, 2(r26)				# 42468
	sw		r41, 3(r26)				# 42468
	sw		r41, 4(r26)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r48)				# 42151
	sw		r9, 1(r48)				# 42151
	sw		r9, 2(r48)				# 42151
	sw		r9, 3(r48)				# 42151
	sw		r9, 4(r48)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r29, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r29)				# 42151
	sw		r9, 1(r29)				# 42151
	sw		r9, 2(r29)				# 42151
	sw		r9, 3(r29)				# 42151
	sw		r9, 4(r29)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r29)				# 42173
	mv		r46, r4
	addi	r4, r4, 1				# 42586
	sw		r41, 0(r46)				# 42586
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r19, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r19)				# 42151
	sw		r9, 1(r19)				# 42151
	sw		r9, 2(r19)				# 42151
	sw		r9, 3(r19)				# 42151
	sw		r9, 4(r19)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 8				# 42651
	sw		r62, 0(r9)				# 42651
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
	mv		r48, r4
	addi	r4, r4, 3				# 42355
	sw		r13, 0(r48)				# 42355
	sw		r13, 1(r48)				# 42355
	sw		r13, 2(r48)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r62, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r62)				# 42151
	sw		r9, 1(r62)				# 42151
	sw		r9, 2(r62)				# 42151
	sw		r9, 3(r62)				# 42151
	sw		r9, 4(r62)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r62)				# 42173
	mv		r46, r4
	addi	r4, r4, 5				# 42435
	sw		r41, 0(r46)				# 42435
	sw		r41, 1(r46)				# 42435
	sw		r41, 2(r46)				# 42435
	sw		r41, 3(r46)				# 42435
	sw		r41, 4(r46)				# 42435
	mv		r39, r4
	addi	r4, r4, 5				# 42468
	sw		r41, 0(r39)				# 42468
	sw		r41, 1(r39)				# 42468
	sw		r41, 2(r39)				# 42468
	sw		r41, 3(r39)				# 42468
	sw		r41, 4(r39)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r23, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r23)				# 42151
	sw		r9, 1(r23)				# 42151
	sw		r9, 2(r23)				# 42151
	sw		r9, 3(r23)				# 42151
	sw		r9, 4(r23)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r26, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r26)				# 42151
	sw		r9, 1(r26)				# 42151
	sw		r9, 2(r26)				# 42151
	sw		r9, 3(r26)				# 42151
	sw		r9, 4(r26)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r26)				# 42173
	mv		r28, r4
	addi	r4, r4, 1				# 42586
	sw		r41, 0(r28)				# 42586
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r61)				# 42117
	sw		r13, 1(r61)				# 42117
	sw		r13, 2(r61)				# 42117
	mv		r9, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r9)				# 42151
	sw		r61, 1(r9)				# 42151
	sw		r61, 2(r9)				# 42151
	sw		r61, 3(r9)				# 42151
	sw		r61, 4(r9)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r61)				# 42186
	sw		r13, 1(r61)				# 42186
	sw		r13, 2(r61)				# 42186
	sw		r61, 1(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r61)				# 42219
	sw		r13, 1(r61)				# 42219
	sw		r13, 2(r61)				# 42219
	sw		r61, 2(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r61)				# 42252
	sw		r13, 1(r61)				# 42252
	sw		r13, 2(r61)				# 42252
	sw		r61, 3(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r61)				# 42285
	sw		r13, 1(r61)				# 42285
	sw		r13, 2(r61)				# 42285
	sw		r61, 4(r9)				# 42173
	mv		r61, r4
	addi	r4, r4, 8				# 42651
	sw		r48, 0(r61)				# 42651
	sw		r62, 1(r61)				# 42651
	sw		r46, 2(r61)				# 42651
	sw		r39, 3(r61)				# 42651
	sw		r23, 4(r61)				# 42651
	sw		r26, 5(r61)				# 42651
	sw		r28, 6(r61)				# 42651
	sw		r9, 7(r61)				# 42651
	mv		r48, r4
	addi	r4, r4, 128				# 42912
	addi	r9, r0, 0				# 42912
.b49478:
	swx		r61, r9, r48				# 42912
	addi	r9, r9, 1				# 42912
	cmpi	r9, 127
	ble		.b49478				# 42912
.b49476:
	sw		r48, -1(r3)				# 42901
	addi	r26, r0, 126				# 42764
.b49482:
	mv		r61, r4
	addi	r4, r4, 3				# 42355
	sw		r13, 0(r61)				# 42355
	sw		r13, 1(r61)				# 42355
	sw		r13, 2(r61)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r62, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r62)				# 42151
	sw		r9, 1(r62)				# 42151
	sw		r9, 2(r62)				# 42151
	sw		r9, 3(r62)				# 42151
	sw		r9, 4(r62)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r62)				# 42173
	mv		r29, r4
	addi	r4, r4, 5				# 42435
	sw		r41, 0(r29)				# 42435
	sw		r41, 1(r29)				# 42435
	sw		r41, 2(r29)				# 42435
	sw		r41, 3(r29)				# 42435
	sw		r41, 4(r29)				# 42435
	mv		r46, r4
	addi	r4, r4, 5				# 42468
	sw		r41, 0(r46)				# 42468
	sw		r41, 1(r46)				# 42468
	sw		r41, 2(r46)				# 42468
	sw		r41, 3(r46)				# 42468
	sw		r41, 4(r46)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r19, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r19)				# 42151
	sw		r9, 1(r19)				# 42151
	sw		r9, 2(r19)				# 42151
	sw		r9, 3(r19)				# 42151
	sw		r9, 4(r19)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r19)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r28)				# 42117
	sw		r13, 1(r28)				# 42117
	sw		r13, 2(r28)				# 42117
	mv		r9, r4
	addi	r4, r4, 5				# 42151
	sw		r28, 0(r9)				# 42151
	sw		r28, 1(r9)				# 42151
	sw		r28, 2(r9)				# 42151
	sw		r28, 3(r9)				# 42151
	sw		r28, 4(r9)				# 42151
	mv		r28, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r28)				# 42186
	sw		r13, 1(r28)				# 42186
	sw		r13, 2(r28)				# 42186
	sw		r28, 1(r9)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r28)				# 42219
	sw		r13, 1(r28)				# 42219
	sw		r13, 2(r28)				# 42219
	sw		r28, 2(r9)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r28)				# 42252
	sw		r13, 1(r28)				# 42252
	sw		r13, 2(r28)				# 42252
	sw		r28, 3(r9)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r28)				# 42285
	sw		r13, 1(r28)				# 42285
	sw		r13, 2(r28)				# 42285
	sw		r28, 4(r9)				# 42173
	mv		r39, r4
	addi	r4, r4, 1				# 42586
	sw		r41, 0(r39)				# 42586
	mv		r28, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r28)				# 42117
	sw		r13, 1(r28)				# 42117
	sw		r13, 2(r28)				# 42117
	mv		r23, r4
	addi	r4, r4, 5				# 42151
	sw		r28, 0(r23)				# 42151
	sw		r28, 1(r23)				# 42151
	sw		r28, 2(r23)				# 42151
	sw		r28, 3(r23)				# 42151
	sw		r28, 4(r23)				# 42151
	mv		r28, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r28)				# 42186
	sw		r13, 1(r28)				# 42186
	sw		r13, 2(r28)				# 42186
	sw		r28, 1(r23)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r28)				# 42219
	sw		r13, 1(r28)				# 42219
	sw		r13, 2(r28)				# 42219
	sw		r28, 2(r23)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r28)				# 42252
	sw		r13, 1(r28)				# 42252
	sw		r13, 2(r28)				# 42252
	sw		r28, 3(r23)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r28)				# 42285
	sw		r13, 1(r28)				# 42285
	sw		r13, 2(r28)				# 42285
	sw		r28, 4(r23)				# 42173
	mv		r28, r4
	addi	r4, r4, 8				# 42651
	sw		r61, 0(r28)				# 42651
	sw		r62, 1(r28)				# 42651
	sw		r29, 2(r28)				# 42651
	sw		r46, 3(r28)				# 42651
	sw		r19, 4(r28)				# 42651
	sw		r9, 5(r28)				# 42651
	sw		r39, 6(r28)				# 42651
	sw		r23, 7(r28)				# 42651
	swx		r28, r26, r48				# 42785
	addi	r26, r26, -1				# 42817
	cmpi	r26, 0
	bge		.b49482				# 42764
.b49480:
	mv		r39, r4
	addi	r4, r4, 3				# 42355
	sw		r13, 0(r39)				# 42355
	sw		r13, 1(r39)				# 42355
	sw		r13, 2(r39)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r46, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r46)				# 42151
	sw		r9, 1(r46)				# 42151
	sw		r9, 2(r46)				# 42151
	sw		r9, 3(r46)				# 42151
	sw		r9, 4(r46)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r46)				# 42173
	mv		r23, r4
	addi	r4, r4, 5				# 42435
	sw		r41, 0(r23)				# 42435
	sw		r41, 1(r23)				# 42435
	sw		r41, 2(r23)				# 42435
	sw		r41, 3(r23)				# 42435
	sw		r41, 4(r23)				# 42435
	mv		r19, r4
	addi	r4, r4, 5				# 42468
	sw		r41, 0(r19)				# 42468
	sw		r41, 1(r19)				# 42468
	sw		r41, 2(r19)				# 42468
	sw		r41, 3(r19)				# 42468
	sw		r41, 4(r19)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r48)				# 42151
	sw		r9, 1(r48)				# 42151
	sw		r9, 2(r48)				# 42151
	sw		r9, 3(r48)				# 42151
	sw		r9, 4(r48)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r28, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r28)				# 42151
	sw		r9, 1(r28)				# 42151
	sw		r9, 2(r28)				# 42151
	sw		r9, 3(r28)				# 42151
	sw		r9, 4(r28)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r28)				# 42173
	mv		r62, r4
	addi	r4, r4, 1				# 42586
	sw		r41, 0(r62)				# 42586
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r26, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r26)				# 42151
	sw		r9, 1(r26)				# 42151
	sw		r9, 2(r26)				# 42151
	sw		r9, 3(r26)				# 42151
	sw		r9, 4(r26)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r26)				# 42173
	mv		r61, r4
	addi	r4, r4, 8				# 42651
	sw		r39, 0(r61)				# 42651
	sw		r46, 1(r61)				# 42651
	sw		r23, 2(r61)				# 42651
	sw		r19, 3(r61)				# 42651
	sw		r48, 4(r61)				# 42651
	sw		r28, 5(r61)				# 42651
	sw		r62, 6(r61)				# 42651
	sw		r26, 7(r61)				# 42651
	mv		r23, r4
	addi	r4, r4, 128				# 42912
	addi	r9, r0, 0				# 42912
.b49486:
	swx		r61, r9, r23				# 42912
	addi	r9, r9, 1				# 42912
	cmpi	r9, 127
	ble		.b49486				# 42912
.b49484:
	sw		r23, -2(r3)				# 42901
	addi	r39, r0, 126				# 42764
.b49490:
	mv		r61, r4
	addi	r4, r4, 3				# 42355
	sw		r13, 0(r61)				# 42355
	sw		r13, 1(r61)				# 42355
	sw		r13, 2(r61)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r46, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r46)				# 42151
	sw		r9, 1(r46)				# 42151
	sw		r9, 2(r46)				# 42151
	sw		r9, 3(r46)				# 42151
	sw		r9, 4(r46)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r46)				# 42173
	mv		r62, r4
	addi	r4, r4, 5				# 42435
	sw		r41, 0(r62)				# 42435
	sw		r41, 1(r62)				# 42435
	sw		r41, 2(r62)				# 42435
	sw		r41, 3(r62)				# 42435
	sw		r41, 4(r62)				# 42435
	mv		r28, r4
	addi	r4, r4, 5				# 42468
	sw		r41, 0(r28)				# 42468
	sw		r41, 1(r28)				# 42468
	sw		r41, 2(r28)				# 42468
	sw		r41, 3(r28)				# 42468
	sw		r41, 4(r28)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r29, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r29)				# 42151
	sw		r9, 1(r29)				# 42151
	sw		r9, 2(r29)				# 42151
	sw		r9, 3(r29)				# 42151
	sw		r9, 4(r29)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r19, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r19)				# 42151
	sw		r9, 1(r19)				# 42151
	sw		r9, 2(r19)				# 42151
	sw		r9, 3(r19)				# 42151
	sw		r9, 4(r19)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r19)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r19)				# 42173
	mv		r48, r4
	addi	r4, r4, 1				# 42586
	sw		r41, 0(r48)				# 42586
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r13, 0(r9)				# 42117
	sw		r13, 1(r9)				# 42117
	sw		r13, 2(r9)				# 42117
	mv		r26, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r26)				# 42151
	sw		r9, 1(r26)				# 42151
	sw		r9, 2(r26)				# 42151
	sw		r9, 3(r26)				# 42151
	sw		r9, 4(r26)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r13, 0(r9)				# 42186
	sw		r13, 1(r9)				# 42186
	sw		r13, 2(r9)				# 42186
	sw		r9, 1(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r13, 0(r9)				# 42219
	sw		r13, 1(r9)				# 42219
	sw		r13, 2(r9)				# 42219
	sw		r9, 2(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r13, 0(r9)				# 42252
	sw		r13, 1(r9)				# 42252
	sw		r13, 2(r9)				# 42252
	sw		r9, 3(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r13, 0(r9)				# 42285
	sw		r13, 1(r9)				# 42285
	sw		r13, 2(r9)				# 42285
	sw		r9, 4(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 8				# 42651
	sw		r61, 0(r9)				# 42651
	sw		r46, 1(r9)				# 42651
	sw		r62, 2(r9)				# 42651
	sw		r28, 3(r9)				# 42651
	sw		r29, 4(r9)				# 42651
	sw		r19, 5(r9)				# 42651
	sw		r48, 6(r9)				# 42651
	sw		r26, 7(r9)				# 42651
	swx		r9, r39, r23				# 42785
	addi	r39, r39, -1				# 42817
	cmpi	r39, 0
	bge		.b49490				# 42764
.b49488:
	in		r39				# 1610
	sw		r39, 0(r10)				# 8471
	in		r26				# 1610
	sw		r26, 1(r10)				# 8471
	in		r62				# 1610
	sw		r62, 2(r10)				# 8471
	in		r9				# 1610
	addis	r46, r0, 15502
	ori		r46, r46, 64053				# 8414
	fmul	r9, r9, r46				# 8565
	fcos	r41, r9				# 133
	fsin	r19, r9				# 40
	in		r9				# 1610
	fmul	r9, r9, r46				# 8649
	fcos	r23, r9				# 133
	fsin	r48, r9				# 40
	fmul	r9, r41, r48				# 8753
	addis	r28, r0, 17224				# 8753
	fmul	r61, r9, r28				# 8734
	sw		r61, 0(r37)				# 8734
	addis	r9, r0, 49992				# 8801
	fmul	r10, r19, r9				# 8782
	sw		r10, 1(r37)				# 8734
	fmul	r9, r41, r23				# 8840
	fmul	r28, r9, r28				# 8821
	sw		r28, 2(r37)				# 8734
	sw		r23, 0(r57)				# 8734
	sw		r13, 1(r57)				# 8734
	fneg	r9, r48				# 8925
	sw		r9, 2(r57)				# 8734
	fneg	r9, r19				# 8979
	fmul	r57, r9, r48				# 8960
	sw		r57, 0(r15)				# 8734
	fneg	r41, r41				# 9004
	sw		r41, 1(r15)				# 8734
	fmul	r9, r9, r23				# 9038
	sw		r9, 2(r15)				# 8734
	fsub	r9, r39, r61				# 9083
	sw		r9, 0(r30)				# 8734
	fsub	r9, r26, r10				# 9133
	sw		r9, 1(r30)				# 8734
	fsub	r9, r62, r28				# 9183
	sw		r9, 2(r30)				# 13259
	in		r9				# 1683
	in		r9				# 1610
	fmul	r61, r9, r46				# 9289
	fsin	r9, r61				# 40
	fneg	r9, r9				# 9345
	sw		r9, -3(r3)				# 9345
	sw		r9, 1(r25)				# 9345
	in		r9				# 1610
	fmul	r28, r9, r46				# 9370
	fcos	r9, r61				# 133
	fsin	r61, r28				# 40
	fmul	r61, r9, r61				# 9448
	sw		r61, -4(r3)				# 9448
	sw		r61, 0(r25)				# 9448
	fcos	r61, r28				# 133
	fmul	r9, r9, r61				# 9497
	sw		r9, -5(r3)				# 9497
	sw		r9, 2(r25)				# 9497
	in		r9				# 1610
	sw		r9, 0(r51)				# 13259
	addi	r25, r0, 0				# 12512
	in		r26				# 1683
	cmpi	r26, -1
	beq		.b49496				# 10718
.b49497:
	in		r37				# 1683
	in		r23				# 1683
	in		r57				# 1683
	mv		r30, r4
	addi	r4, r4, 3				# 10866
	sw		r13, 0(r30)				# 10866
	sw		r13, 1(r30)				# 10866
	sw		r13, 2(r30)				# 10866
	in		r9				# 1610
	sw		r9, 0(r30)				# 10892
	in		r9				# 1610
	sw		r9, 1(r30)				# 10892
	in		r9				# 1610
	sw		r9, 2(r30)				# 10892
	mv		r62, r4
	addi	r4, r4, 3				# 11007
	sw		r13, 0(r62)				# 11007
	sw		r13, 1(r62)				# 11007
	sw		r13, 2(r62)				# 11007
	in		r9				# 1610
	sw		r9, 0(r62)				# 11033
	in		r9				# 1610
	sw		r9, 1(r62)				# 11033
	in		r9				# 1610
	sw		r9, 2(r62)				# 11033
	in		r9				# 1610
	fcmp	r13, r9
	ble		.b49499				# 3188
.b49500:
	addi	r51, r0, 1				# 3188
.b49498:
	mv		r28, r4
	addi	r4, r4, 2				# 11203
	sw		r13, 0(r28)				# 11203
	sw		r13, 1(r28)				# 11203
	in		r9				# 1610
	sw		r9, 0(r28)				# 11229
	in		r9				# 1610
	sw		r9, 1(r28)				# 11229
	mv		r15, r4
	addi	r4, r4, 3				# 11346
	sw		r13, 0(r15)				# 11346
	sw		r13, 1(r15)				# 11346
	sw		r13, 2(r15)				# 11346
	in		r9				# 1610
	sw		r9, 0(r15)				# 11372
	in		r9				# 1610
	sw		r9, 1(r15)				# 11372
	in		r9				# 1610
	sw		r9, 2(r15)				# 11372
	mv		r9, r4
	addi	r4, r4, 3				# 11499
	sw		r13, 0(r9)				# 11499
	sw		r13, 1(r9)				# 11499
	sw		r13, 2(r9)				# 11499
	cmpi	r57, 0
	beq		.b49501				# 11525
.b49503:
	in		r61				# 1610
	fmul	r61, r61, r46				# 11551
	sw		r61, 0(r9)				# 11551
	in		r61				# 1610
	fmul	r61, r61, r46				# 11590
	sw		r61, 1(r9)				# 11551
	in		r61				# 1610
	fmul	r61, r61, r46				# 11629
	sw		r61, 2(r9)				# 11629
	cmpi	r37, 2
	beq		.b49505				# 11706
.b49506:
	mv		r10, r51				# 11733
.b49504:
	mv		r41, r4
	addi	r4, r4, 4				# 11762
	sw		r13, 0(r41)				# 11762
	sw		r13, 1(r41)				# 11762
	sw		r13, 2(r41)				# 11762
	sw		r13, 3(r41)				# 11762
	mv		r61, r4
	addi	r4, r4, 11				# 11799
	sw		r26, 0(r61)				# 11799
	sw		r37, 1(r61)				# 11799
	sw		r23, 2(r61)				# 11799
	sw		r57, 3(r61)				# 11799
	sw		r30, 4(r61)				# 11799
	sw		r62, 5(r61)				# 11799
	sw		r10, 6(r61)				# 11799
	sw		r28, 7(r61)				# 11799
	sw		r15, 8(r61)				# 11799
	sw		r9, 9(r61)				# 11799
	sw		r41, 10(r61)				# 11799
	swx		r61, r25, r7				# 12004
	cmpi	r37, 3
	beq		.b49508				# 12031
.b49509:
	cmpi	r37, 2
	beq		.b49534				# 12300
.b49507:
	cmpi	r57, 0
	beq		.b49544				# 12371
.b49546:
	lw		r61, 0(r9)				# 9611
	fcos	r28, r61				# 133
	lw		r61, 0(r9)				# 9640
	fsin	r48, r61				# 40
	lw		r61, 1(r9)				# 9669
	fcos	r37, r61				# 133
	lw		r61, 1(r9)				# 9698
	fsin	r61, r61				# 40
	lw		r62, 2(r9)				# 9727
	fcos	r57, r62				# 133
	lw		r62, 2(r9)				# 9756
	fsin	r15, r62				# 40
	fmul	r10, r37, r57				# 9774
	fmul	r41, r48, r61				# 9814
	fmul	r62, r41, r57				# 9814
	fmul	r51, r28, r15				# 9814
	fsub	r23, r62, r51				# 9804
	fmul	r51, r28, r61				# 9871
	fmul	r62, r48, r15				# 9871
	faddmul	r26, r51, r57, r62				# 9861
	fmul	r39, r37, r15				# 9919
	fmul	r62, r28, r57				# 9959
	faddmul	r41, r41, r15, r62				# 9949
	fmul	r15, r51, r15				# 10016
	fmul	r62, r48, r57				# 10016
	fsub	r57, r15, r62				# 10006
	fneg	r15, r61				# 10064
	fmul	r48, r48, r37				# 10090
	fmul	r19, r28, r37				# 10120
	lw		r62, 0(r30)				# 10151
	lw		r37, 1(r30)				# 10173
	lw		r51, 2(r30)				# 10195
	fmul	r28, r10, r10				# 10229
	fmul	r61, r39, r39				# 10247
	fmul	r61, r37, r61				# 10229
	faddmul	r61, r62, r28, r61				# 10229
	fmul	r28, r15, r15				# 10265
	faddmul	r61, r51, r28, r61				# 10218
	sw		r61, 0(r30)				# 10218
	fmul	r28, r23, r23				# 10294
	fmul	r61, r41, r41				# 10312
	fmul	r61, r37, r61				# 10294
	faddmul	r28, r62, r28, r61				# 10294
	fmul	r61, r48, r48				# 10330
	faddmul	r61, r51, r61, r28				# 10283
	sw		r61, 1(r30)				# 10218
	fmul	r28, r26, r26				# 10359
	fmul	r61, r57, r57				# 10377
	fmul	r61, r37, r61				# 10359
	faddmul	r61, r62, r28, r61				# 10359
	fmul	r28, r19, r19				# 10395
	faddmul	r61, r51, r28, r61				# 10348
	sw		r61, 2(r30)				# 10218
	addis	r28, r0, 16384				# 10425
	fmul	r61, r62, r23				# 10433
	fmul	r30, r37, r41				# 10453
	fmul	r30, r30, r57				# 10433
	faddmul	r61, r61, r26, r30				# 10433
	fmul	r30, r51, r48				# 10473
	faddmul	r61, r30, r19, r61				# 10425
	fmul	r61, r28, r61				# 10414
	sw		r61, 0(r9)				# 10218
	fmul	r62, r62, r10				# 10513
	fmul	r10, r37, r39				# 10533
	fmul	r61, r10, r57				# 10513
	faddmul	r61, r62, r26, r61				# 10513
	fmul	r15, r51, r15				# 10553
	faddmul	r61, r15, r19, r61				# 10505
	fmul	r61, r28, r61				# 10494
	sw		r61, 1(r9)				# 10218
	fmul	r61, r10, r41				# 10593
	faddmul	r61, r62, r23, r61				# 10593
	faddmul	r61, r15, r48, r61				# 10585
	fmul	r61, r28, r61				# 10574
	sw		r61, 2(r9)				# 10574
	addi	r25, r25, 1				# 12563
	cmpi	r25, 60
	bge		.b49492				# 12512
.b49495:
	in		r26				# 1683
	cmpi	r26, -1
	beq		.b49496				# 10718
	b		.b49497
.b49496:
	sw		r25, 0(r54)				# 12598
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
	addi	r9, r0, 49				# 1451
	out		r9				# 946
	addi	r62, r0, 28				# 1184
	addi	r9, r0, 9				# 1002
	mul16i	r61, r9, 10				# 993
	sub		r61, r62, r61				# 1014
	cmpi	r61, 0
	bge		.b49553				# 1034
.b49554:
	addi	r9, r9, -1				# 1109
	mul16i	r61, r9, 10				# 993
	sub		r61, r62, r61				# 1014
	cmpi	r61, 0
	bge		.b49553				# 1034
	b		.b49554
.b49553:
	addi	r9, r9, 48				# 1055
	out		r9				# 946
	addi	r9, r61, 48				# 1080
	out		r9				# 946
.b49551:
	addi	r62, r0, 32				# 39228
	out		r62				# 946
	addi	r9, r0, 49				# 1451
	out		r9				# 946
	addi	r61, r0, 28				# 1184
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
	mv		r9, r4
	addi	r4, r4, 3				# 44588
	addi	r13, r0, 0				# 44588
	sw		r13, 0(r9)				# 44588
	sw		r13, 1(r9)				# 44588
	sw		r13, 2(r9)				# 44588
	lli		r61, n_objects.2525				# 44623
	lw		r51, 0(r61)				# 44623
	mv		r28, r4
	add		r4, r4, r51				# 44623
	addi	r15, r51, -1				# 44623
	addi	r61, r0, 0				# 44623
	cmp		r61, r15
	ble		.b49569				# 44623
.b49567:
	mv		r61, r4
	addi	r4, r4, 2				# 44656
	sw		r9, 0(r61)				# 44656
	sw		r28, 1(r61)				# 44656
	mv		r28, r4
	addi	r4, r4, 120				# 44906
	addi	r9, r0, 0				# 44906
.b49573:
	swx		r61, r9, r28				# 44906
	addi	r9, r9, 1				# 44906
	cmpi	r9, 119
	ble		.b49573				# 44906
.b49571:
	lli		r9, dirvecs.2624				# 44887
	swx		r28, r62, r9				# 44887
	addi	r15, r0, 118				# 44716
.b49577:
	mv		r10, r4
	addi	r4, r4, 3				# 44588
	sw		r13, 0(r10)				# 44588
	sw		r13, 1(r10)				# 44588
	sw		r13, 2(r10)				# 44588
	mv		r61, r4
	add		r4, r4, r51				# 44623
	addi	r54, r51, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r54
	ble		.b49581				# 44623
.b49579:
	mv		r9, r4
	addi	r4, r4, 2				# 44656
	sw		r10, 0(r9)				# 44656
	sw		r61, 1(r9)				# 44656
	swx		r9, r15, r28				# 44741
	addi	r15, r15, -1				# 44775
	cmpi	r15, 0
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
	addis	r41, r0, 15948
	ori		r41, r41, 52429				# 44395
	fmul	r9, r9, r41				# 44395
	addis	r25, r0, 16230
	ori		r25, r25, 26214				# 44395
	fsub	r57, r9, r25				# 44386
	addi	r9, r0, 4				# 43977
	mv		r61, r15				# 43977
.b49589:
	itof	r28, r9				# 639
	fmul	r23, r28, r41				# 44029
	fsub	r46, r23, r25				# 44020
	addi	r62, r0, 0				# 44069
	addi	r54, r0, 0				# 43281
	mv		r51, r62				# 43281
	mv		r28, r62				# 43281
.b49594:
	addis	r30, r0, 15820
	ori		r30, r30, 52429				# 43095
	faddmul	r28, r28, r28, r30				# 43090
	fsqrt	r51, r28				# 227
	addis	r28, r0, 16256				# 43125
	fdiv	r7, r28, r51				# 43113
	fatan	r7, r7				# 440
	fmul	r7, r7, r46				# 43182
	fsin	r37, r7				# 40
	fcos	r7, r7				# 133
	fdiv	r7, r37, r7				# 43170
	fmul	r51, r7, r51				# 43816
	addi	r54, r54, 1				# 43853
	faddmul	r7, r51, r51, r30				# 43090
	fsqrt	r30, r7				# 227
	fdiv	r28, r28, r30				# 43113
	fatan	r28, r28				# 440
	fmul	r28, r28, r57				# 43182
	fsin	r7, r28				# 40
	fcos	r28, r28				# 133
	fdiv	r28, r7, r28				# 43170
	fmul	r28, r28, r30				# 43853
	cmpi	r54, 5
	bge		.b49593				# 43281
	b		.b49594
.b49593:
	fmul	r54, r28, r28				# 43320
	faddmul	r7, r51, r51, r54				# 43320
	addis	r54, r0, 16256				# 43320
	fadd	r7, r7, r54				# 43315
	fsqrt	r7, r7				# 227
	fdiv	r30, r51, r7				# 43352
	fdiv	r37, r28, r7				# 43375
	fdiv	r28, r54, r7				# 43398
	lli		r51, dirvecs.2624				# 43424
	lwx		r46, r51, r61				# 43424
	lwx		r51, r46, r10				# 43471
	lw		r51, 0(r51)				# 8078
	sw		r30, 0(r51)				# 1162
	sw		r37, 1(r51)				# 1162
	sw		r28, 2(r51)				# 43463
	addi	r51, r10, 40				# 43524
	lwx		r51, r46, r51				# 43518
	lw		r51, 0(r51)				# 8078
	fneg	r7, r37				# 43510
	sw		r30, 0(r51)				# 1162
	sw		r28, 1(r51)				# 1162
	sw		r7, 2(r51)				# 43463
	addi	r51, r10, 80				# 43578
	lwx		r51, r46, r51				# 43572
	lw		r54, 0(r51)				# 8078
	fneg	r51, r30				# 43564
	sw		r28, 0(r54)				# 1162
	sw		r51, 1(r54)				# 1162
	sw		r7, 2(r54)				# 43463
	addi	r54, r10, 1				# 43639
	lwx		r54, r46, r54				# 43633
	lw		r54, 0(r54)				# 8078
	fneg	r26, r28				# 43625
	sw		r51, 0(r54)				# 1162
	sw		r7, 1(r54)				# 1162
	sw		r26, 2(r54)				# 43463
	addi	r28, r10, 41				# 43706
	lwx		r28, r46, r28				# 43700
	lw		r28, 0(r28)				# 8078
	sw		r51, 0(r28)				# 1162
	sw		r26, 1(r28)				# 1162
	sw		r37, 2(r28)				# 43463
	addi	r28, r10, 81				# 43767
	lwx		r28, r46, r28				# 43761
	lw		r28, 0(r28)				# 8078
	sw		r26, 0(r28)				# 1162
	sw		r30, 1(r28)				# 1162
	sw		r37, 2(r28)				# 1190
.b49591:
	addis	r7, r0, 15820
	ori		r7, r7, 52429				# 44147
	fadd	r30, r23, r7				# 44137
	addi	r46, r10, 2				# 44188
	addi	r28, r0, 0				# 43281
	mv		r51, r62				# 43281
.b49598:
	faddmul	r62, r62, r62, r7				# 43090
	fsqrt	r54, r62				# 227
	addis	r37, r0, 16256				# 43125
	fdiv	r62, r37, r54				# 43113
	fatan	r62, r62				# 440
	fmul	r62, r62, r30				# 43182
	fsin	r51, r62				# 40
	fcos	r62, r62				# 133
	fdiv	r62, r51, r62				# 43170
	fmul	r51, r62, r54				# 43816
	addi	r28, r28, 1				# 43853
	faddmul	r62, r51, r51, r7				# 43090
	fsqrt	r54, r62				# 227
	fdiv	r62, r37, r54				# 43113
	fatan	r62, r62				# 440
	fmul	r62, r62, r57				# 43182
	fsin	r37, r62				# 40
	fcos	r62, r62				# 133
	fdiv	r62, r37, r62				# 43170
	fmul	r62, r62, r54				# 43853
	cmpi	r28, 5
	bge		.b49597				# 43281
	b		.b49598
.b49597:
	fmul	r28, r62, r62				# 43320
	faddmul	r54, r51, r51, r28				# 43320
	addis	r28, r0, 16256				# 43320
	fadd	r54, r54, r28				# 43315
	fsqrt	r54, r54				# 227
	fdiv	r37, r51, r54				# 43352
	fdiv	r62, r62, r54				# 43375
	fdiv	r51, r28, r54				# 43398
	lli		r28, dirvecs.2624				# 43424
	lwx		r7, r28, r61				# 43424
	lwx		r28, r7, r46				# 43471
	lw		r28, 0(r28)				# 8078
	sw		r37, 0(r28)				# 1162
	sw		r62, 1(r28)				# 1162
	sw		r51, 2(r28)				# 43463
	addi	r28, r46, 40				# 43524
	lwx		r28, r7, r28				# 43518
	lw		r28, 0(r28)				# 8078
	fneg	r30, r62				# 43510
	sw		r37, 0(r28)				# 1162
	sw		r51, 1(r28)				# 1162
	sw		r30, 2(r28)				# 43463
	addi	r28, r46, 80				# 43578
	lwx		r28, r7, r28				# 43572
	lw		r28, 0(r28)				# 8078
	fneg	r54, r37				# 43564
	sw		r51, 0(r28)				# 1162
	sw		r54, 1(r28)				# 1162
	sw		r30, 2(r28)				# 43463
	addi	r28, r46, 1				# 43639
	lwx		r28, r7, r28				# 43633
	lw		r28, 0(r28)				# 8078
	fneg	r51, r51				# 43625
	sw		r54, 0(r28)				# 1162
	sw		r30, 1(r28)				# 1162
	sw		r51, 2(r28)				# 43463
	addi	r28, r46, 41				# 43706
	lwx		r28, r7, r28				# 43700
	lw		r28, 0(r28)				# 8078
	sw		r54, 0(r28)				# 1162
	sw		r51, 1(r28)				# 1162
	sw		r62, 2(r28)				# 43463
	addi	r28, r46, 81				# 43767
	lwx		r28, r7, r28				# 43761
	lw		r28, 0(r28)				# 8078
	sw		r51, 0(r28)				# 1162
	sw		r37, 1(r28)				# 1162
	sw		r62, 2(r28)				# 1190
	addi	r9, r9, -1				# 44244
	addi	r61, r61, 1				# 979
	cmpi	r61, 5
	bge		.b49600				# 1000
.b49601:
	cmpi	r9, 0
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
	addi	r62, r0, 4				# 45247
.b49607:
	lli		r9, dirvecs.2624				# 45272
	lwx		r13, r9, r62				# 45272
	addi	r28, r0, 119				# 45081
.b49611:
	lwx		r57, r13, r28				# 45106
	lli		r9, n_objects.2525				# 21353
	lw		r9, 0(r9)				# 21353
	addi	r15, r9, -1				# 21317
	cmpi	r15, 0
	bge		.b49615				# 20796
.b49613:
	addi	r28, r28, -1				# 45149
	cmpi	r28, 0
	bge		.b49611				# 45081
.b49609:
	addi	r62, r62, -1				# 45319
	cmpi	r62, 0
	bge		.b49607				# 45247
.b49605:
	lw		r23, -4(r3)				# 1353
	lli		r9, v3.2630				# 1353
	sw		r23, 0(r9)				# 1353
	lw		r46, -3(r3)				# 1353
	sw		r46, 1(r9)				# 1353
	lw		r7, -5(r3)				# 47149
	sw		r7, 2(r9)				# 47149
	lli		r9, n_objects.2525				# 21353
	lw		r13, 0(r9)				# 21353
	sw		r13, -7(r3)				# 21353
	addi	r28, r13, -1				# 21317
	cmpi	r28, 0
	bge		.b49682				# 20796
.b49680:
	addi	r61, r13, -1				# 47281
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
	cmpi	r61, 128
	bge		_min_caml_end				# 41839
.b50044:
	cmpi	r61, 127
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
	cmpi	r61, 128
	bge		.b50053				# 37910
.b50054:
	cmpi	r28, 0
	ble		.b50055				# 37947
.b50056:
	addi	r61, r9, 1				# 37967
	cmpi	r61, 128
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
	lli		r15, rgb.2587				# 39509
	lw		r9, 0(r15)				# 39509
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
	addi	r62, r0, 32				# 946
	out		r62				# 946
	lw		r9, 1(r15)				# 39569
	ftoi	r61, r9				# 543
	cmpi	r61, 255
	ble		.b50390				# 39409
.b50391:
	addi	r61, r0, 255				# 39426
.b50401:
	addi	r9, r0, 50				# 946
	out		r9				# 946
	addi	r61, r61, -200				# 1411
.b50394:
	addi	r9, r0, 9				# 1002
	mul16i	r28, r9, 10				# 993
	sub		r28, r61, r28				# 1014
	cmpi	r28, 0
	bge		.b50407				# 1034
.b50408:
	addi	r9, r9, -1				# 1109
	mul16i	r28, r9, 10				# 993
	sub		r28, r61, r28				# 1014
	cmpi	r28, 0
	bge		.b50407				# 1034
	b		.b50408
.b50407:
	addi	r9, r9, 48				# 1055
	out		r9				# 946
	addi	r9, r28, 48				# 1080
	out		r9				# 946
.b50405:
	out		r62				# 946
	lw		r9, 2(r15)				# 39629
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
	cmpi	r9, 128
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
	cmpi	r61, 0
	bge		.b50392				# 39435
.b50393:
	addi	r61, r0, 0				# 39450
.b50404:
	addi	r9, r0, 48				# 1493
	out		r9				# 946
	b		.b50394				# 1512
.b50392:
	cmpi	r61, 500
	bge		.b50395				# 1192
.b50396:
	cmpi	r61, 400
	bge		.b50397				# 1251
.b50398:
	cmpi	r61, 300
	bge		.b50399				# 1310
.b50400:
	cmpi	r61, 200
	bge		.b50401				# 1369
.b50402:
	cmpi	r61, 100
	bge		.b50403				# 1428
	b		.b50404
.b50403:
	addi	r9, r0, 49				# 1451
	out		r9				# 946
	addi	r61, r61, -100				# 1470
	b		.b50394				# 1470
.b50399:
	addi	r9, r0, 51				# 946
	out		r9				# 946
	addi	r61, r61, -300				# 1352
	b		.b50394				# 1352
.b50397:
	addi	r9, r0, 52				# 1274
	out		r9				# 946
	addi	r61, r61, -400				# 1293
	b		.b50394				# 1293
.b50395:
	addi	r9, r0, 53				# 1215
	out		r9				# 946
	addi	r61, r61, -500				# 1234
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
	lw		r62, -13(r3)				# 38301
	lwx		r15, r61, r62				# 38301
	lw		r61, 2(r15)				# 7046
	lwx		r61, r61, r9				# 38298
	cmp		r61, r28
	beq		.b50213				# 38298
.b50221:
	sw		r9, -15(r3)				# 37563
	cmpi	r9, 4
	ble		.b50224				# 37563
	b		.b50061
.b50224:
	lw		r10, -14(r3)				# 7046
	lw		r61, 2(r10)				# 7046
	lwx		r61, r61, r9				# 37630
	cmpi	r61, 0
	bge		.b50226				# 37630
	b		.b50061
.b50226:
	lw		r61, 3(r10)				# 7193
	lwx		r61, r61, r9				# 37719
	cmpi	r61, 0
	beq		.b50228				# 37719
.b50230:
	lw		r28, 5(r10)				# 7491
	lw		r51, 7(r10)				# 7939
	lw		r15, 1(r10)				# 6897
	lw		r61, 4(r10)				# 7334
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
	lw		r61, 6(r10)				# 7634
	lw		r61, 0(r61)				# 36779
	sw		r61, -20(r3)				# 36779
	lwx		r28, r51, r9				# 36779
	sw		r28, -21(r3)				# 36779
	lwx		r15, r15, r9				# 36779
	sw		r15, -22(r3)				# 36779
	cmpi	r61, 0
	beq		.b50231				# 36097
.b50233:
	lli		r9, dirvecs.2624				# 36123
	lw		r9, 0(r9)				# 36123
	sw		r9, -23(r3)				# 36123
	lw		r9, 0(r15)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r15)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r15)				# 1399
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
	lw		r51, 0(r1)				# 8078
	lw		r28, 0(r51)				# 1949
	lw		r10, -21(r3)				# 1949
	lw		r13, 0(r10)				# 1949
	lw		r61, 1(r51)				# 1967
	lw		r15, 1(r10)				# 1967
	fmul	r61, r61, r15				# 1949
	faddmul	r15, r28, r13, r61				# 1949
	lw		r61, 2(r51)				# 1985
	lw		r28, 2(r10)				# 1985
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
	lw		r28, 0(r1)				# 8078
	lw		r62, 0(r28)				# 1949
	lw		r61, -21(r3)				# 1949
	lw		r51, 0(r61)				# 1949
	lw		r15, 1(r28)				# 1967
	lw		r10, 1(r61)				# 1967
	fmul	r15, r15, r10				# 1949
	faddmul	r62, r62, r51, r15				# 1949
	lw		r28, 2(r28)				# 1985
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
	lw		r30, -22(r3)				# 1353
	lw		r9, 0(r30)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r30)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r30)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b50290				# 21420
.b50288:
	addi	r9, r0, 118				# 35584
	sw		r9, -28(r3)				# 35584
.b50304:
	lw		r10, -27(r3)				# 35627
	lwx		r1, r10, r9				# 35627
	lw		r62, 0(r1)				# 8078
	lw		r13, 0(r62)				# 1949
	lw		r15, -21(r3)				# 1949
	lw		r51, 0(r15)				# 1949
	lw		r61, 1(r62)				# 1967
	lw		r28, 1(r15)				# 1967
	fmul	r61, r61, r28				# 1949
	faddmul	r51, r13, r51, r61				# 1949
	lw		r28, 2(r62)				# 1985
	lw		r61, 2(r15)				# 1985
	faddmul	r28, r28, r61, r51				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b50310				# 3188
.b50311:
	addi	r9, r9, 1				# 35712
	lwx		r1, r10, r9				# 35694
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
	bge		.b50317				# 21420
.b50315:
	addi	r9, r0, 118				# 35584
	sw		r9, -30(r3)				# 35584
.b50331:
	lw		r28, -29(r3)				# 35627
	lwx		r1, r28, r9				# 35627
	lw		r13, 0(r1)				# 8078
	lw		r15, 0(r13)				# 1949
	lw		r62, -21(r3)				# 1949
	lw		r61, 0(r62)				# 1949
	lw		r10, 1(r13)				# 1967
	lw		r51, 1(r62)				# 1967
	fmul	r10, r10, r51				# 1949
	faddmul	r15, r15, r61, r10				# 1949
	lw		r10, 2(r13)				# 1985
	lw		r61, 2(r62)				# 1985
	faddmul	r62, r10, r61, r15				# 35609
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
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
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
	lwx		r62, r61, r9				# 36884
	lli		r61, rgb.2587				# 2671
	lw		r15, 0(r61)				# 2671
	lw		r28, 0(r62)				# 2683
	lw		r9, -17(r3)				# 2671
	faddmul	r9, r28, r9, r15				# 2659
	sw		r9, 0(r61)				# 2659
	lw		r15, 1(r61)				# 2713
	lw		r28, 1(r62)				# 2725
	lw		r9, -18(r3)				# 2713
	faddmul	r9, r28, r9, r15				# 2701
	sw		r9, 1(r61)				# 2659
	lw		r28, 2(r61)				# 2755
	lw		r9, 2(r62)				# 2767
	lw		r62, -19(r3)				# 2755
	faddmul	r9, r9, r62, r28				# 2743
	sw		r9, 2(r61)				# 2743
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
	lli		r9, objects.2536				# 21445
	lwx		r28, r9, r61				# 21445
	lw		r54, 10(r28)				# 6561
	lw		r30, 1(r28)				# 2994
	lw		r9, 0(r41)				# 21561
	lw		r15, 5(r28)				# 4475
	lw		r62, 0(r15)				# 21561
	fsub	r9, r9, r62				# 21547
	sw		r9, 0(r54)				# 21547
	lw		r62, 1(r41)				# 21603
	lw		r9, 1(r15)				# 21603
	fsub	r9, r62, r9				# 21589
	sw		r9, 1(r54)				# 21547
	lw		r62, 2(r41)				# 21645
	lw		r9, 2(r15)				# 21645
	fsub	r10, r62, r9				# 21631
	sw		r10, 2(r54)				# 21547
	cmpi	r30, 2
	beq		.b50347				# 21673
.b50348:
	cmpi	r30, 2
	ble		.b50346				# 21798
.b50350:
	lw		r15, 0(r54)				# 21847
	lw		r25, 1(r54)				# 21847
	fmul	r7, r15, r15				# 14374
	lw		r51, 4(r28)				# 3734
	lw		r13, 0(r51)				# 14374
	fmul	r9, r25, r25				# 14400
	lw		r62, 1(r51)				# 14400
	fmul	r9, r9, r62				# 14374
	faddmul	r62, r7, r13, r9				# 14374
	fmul	r13, r10, r10				# 14426
	lw		r9, 2(r51)				# 14426
	faddmul	r9, r13, r9, r62				# 14354
	lw		r62, 3(r28)				# 3553
	cmpi	r62, 0
	beq		.b50352				# 14456
.b50353:
	fmul	r62, r25, r10				# 14522
	lw		r51, 9(r28)				# 5989
	lw		r28, 0(r51)				# 14522
	faddmul	r9, r62, r28, r9				# 14503
	fmul	r62, r10, r15				# 14556
	lw		r28, 1(r51)				# 14556
	faddmul	r28, r62, r28, r9				# 14503
	fmul	r62, r15, r25				# 14590
	lw		r9, 2(r51)				# 14590
	faddmul	r9, r62, r9, r28				# 14503
	cmpi	r30, 3
	beq		.b50355				# 21917
.b50356:
.b50354:
	sw		r9, 3(r54)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50344				# 21420
	b		.b50342
.b50355:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b50354				# 21937
.b50352:
	cmpi	r30, 3
	beq		.b50355				# 21917
	b		.b50356
.b50346:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50344				# 21420
	b		.b50342
.b50347:
	lw		r28, 4(r28)				# 4293
	lw		r51, 0(r54)				# 21728
	lw		r15, 1(r54)				# 21728
	lw		r9, 0(r28)				# 2037
	lw		r62, 1(r28)				# 2052
	fmul	r62, r62, r15				# 2037
	faddmul	r62, r9, r51, r62				# 2037
	lw		r9, 2(r28)				# 2067
	faddmul	r9, r9, r10, r62				# 21713
	sw		r9, 3(r54)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
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
	lwx		r51, r9, r61				# 21445
	lw		r28, 10(r51)				# 6561
	lw		r10, 1(r51)				# 2994
	lw		r9, 0(r62)				# 21561
	lw		r13, 5(r51)				# 4475
	lw		r15, 0(r13)				# 21561
	fsub	r9, r9, r15				# 21547
	sw		r9, 0(r28)				# 21547
	lw		r9, 1(r62)				# 21603
	lw		r15, 1(r13)				# 21603
	fsub	r9, r9, r15				# 21589
	sw		r9, 1(r28)				# 21547
	lw		r15, 2(r62)				# 21645
	lw		r9, 2(r13)				# 21645
	fsub	r13, r15, r9				# 21631
	sw		r13, 2(r28)				# 21547
	cmpi	r10, 2
	beq		.b50320				# 21673
.b50321:
	cmpi	r10, 2
	ble		.b50319				# 21798
.b50323:
	lw		r30, 0(r28)				# 21847
	lw		r54, 1(r28)				# 21847
	fmul	r9, r30, r30				# 14374
	lw		r7, 4(r51)				# 3734
	lw		r41, 0(r7)				# 14374
	fmul	r25, r54, r54				# 14400
	lw		r15, 1(r7)				# 14400
	fmul	r15, r25, r15				# 14374
	faddmul	r9, r9, r41, r15				# 14374
	fmul	r15, r13, r13				# 14426
	lw		r7, 2(r7)				# 14426
	faddmul	r9, r15, r7, r9				# 14354
	lw		r15, 3(r51)				# 3553
	cmpi	r15, 0
	beq		.b50325				# 14456
.b50326:
	fmul	r15, r54, r13				# 14522
	lw		r7, 9(r51)				# 5989
	lw		r51, 0(r7)				# 14522
	faddmul	r15, r15, r51, r9				# 14503
	fmul	r51, r13, r30				# 14556
	lw		r9, 1(r7)				# 14556
	faddmul	r15, r51, r9, r15				# 14503
	fmul	r9, r30, r54				# 14590
	lw		r51, 2(r7)				# 14590
	faddmul	r9, r9, r51, r15				# 14503
	cmpi	r10, 3
	beq		.b50328				# 21917
.b50329:
.b50327:
	sw		r9, 3(r28)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50317				# 21420
	b		.b50315
.b50328:
	addis	r15, r0, 16256				# 21937
	fsub	r9, r9, r15				# 21937
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
	lw		r10, 4(r51)				# 4293
	lw		r15, 0(r28)				# 21728
	lw		r9, 1(r28)				# 21728
	lw		r51, 0(r10)				# 2037
	lw		r54, 1(r10)				# 2052
	fmul	r9, r54, r9				# 2037
	faddmul	r9, r51, r15, r9				# 2037
	lw		r15, 2(r10)				# 2067
	faddmul	r9, r15, r13, r9				# 21713
	sw		r9, 3(r28)				# 21713
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
	lli		r9, objects.2536				# 21445
	lwx		r25, r9, r61				# 21445
	lw		r51, 10(r25)				# 6561
	lw		r41, 1(r25)				# 2994
	lw		r9, 0(r30)				# 21561
	lw		r62, 5(r25)				# 4475
	lw		r28, 0(r62)				# 21561
	fsub	r9, r9, r28				# 21547
	sw		r9, 0(r51)				# 21547
	lw		r9, 1(r30)				# 21603
	lw		r28, 1(r62)				# 21603
	fsub	r9, r9, r28				# 21589
	sw		r9, 1(r51)				# 21547
	lw		r28, 2(r30)				# 21645
	lw		r9, 2(r62)				# 21645
	fsub	r13, r28, r9				# 21631
	sw		r13, 2(r51)				# 21547
	cmpi	r41, 2
	beq		.b50293				# 21673
.b50294:
	cmpi	r41, 2
	ble		.b50292				# 21798
.b50296:
	lw		r15, 0(r51)				# 21847
	lw		r62, 1(r51)				# 21847
	fmul	r10, r15, r15				# 14374
	lw		r28, 4(r25)				# 3734
	lw		r54, 0(r28)				# 14374
	fmul	r9, r62, r62				# 14400
	lw		r7, 1(r28)				# 14400
	fmul	r9, r9, r7				# 14374
	faddmul	r10, r10, r54, r9				# 14374
	fmul	r9, r13, r13				# 14426
	lw		r28, 2(r28)				# 14426
	faddmul	r9, r9, r28, r10				# 14354
	lw		r28, 3(r25)				# 3553
	cmpi	r28, 0
	beq		.b50298				# 14456
.b50299:
	fmul	r28, r62, r13				# 14522
	lw		r54, 9(r25)				# 5989
	lw		r10, 0(r54)				# 14522
	faddmul	r10, r28, r10, r9				# 14503
	fmul	r28, r13, r15				# 14556
	lw		r9, 1(r54)				# 14556
	faddmul	r28, r28, r9, r10				# 14503
	fmul	r62, r15, r62				# 14590
	lw		r9, 2(r54)				# 14590
	faddmul	r9, r62, r9, r28				# 14503
	cmpi	r41, 3
	beq		.b50301				# 21917
.b50302:
.b50300:
	sw		r9, 3(r51)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50290				# 21420
	b		.b50288
.b50301:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b50300				# 21937
.b50298:
	cmpi	r41, 3
	beq		.b50301				# 21917
	b		.b50302
.b50292:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50290				# 21420
	b		.b50288
.b50293:
	lw		r9, 4(r25)				# 4293
	lw		r28, 0(r51)				# 21728
	lw		r10, 1(r51)				# 21728
	lw		r62, 0(r9)				# 2037
	lw		r15, 1(r9)				# 2052
	fmul	r15, r15, r10				# 2037
	faddmul	r28, r62, r28, r15				# 2037
	lw		r9, 2(r9)				# 2067
	faddmul	r9, r9, r13, r28				# 21713
	sw		r9, 3(r51)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
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
	lwx		r15, r61, r9				# 21445
	lw		r28, 10(r15)				# 6561
	lw		r30, 1(r15)				# 2994
	lw		r61, 0(r25)				# 21561
	lw		r62, 5(r15)				# 4475
	lw		r10, 0(r62)				# 21561
	fsub	r61, r61, r10				# 21547
	sw		r61, 0(r28)				# 21547
	lw		r10, 1(r25)				# 21603
	lw		r61, 1(r62)				# 21603
	fsub	r61, r10, r61				# 21589
	sw		r61, 1(r28)				# 21547
	lw		r61, 2(r25)				# 21645
	lw		r62, 2(r62)				# 21645
	fsub	r41, r61, r62				# 21631
	sw		r41, 2(r28)				# 21547
	cmpi	r30, 2
	beq		.b50266				# 21673
.b50267:
	cmpi	r30, 2
	ble		.b50265				# 21798
.b50269:
	lw		r51, 0(r28)				# 21847
	lw		r54, 1(r28)				# 21847
	fmul	r7, r51, r51				# 14374
	lw		r62, 4(r15)				# 3734
	lw		r10, 0(r62)				# 14374
	fmul	r13, r54, r54				# 14400
	lw		r61, 1(r62)				# 14400
	fmul	r61, r13, r61				# 14374
	faddmul	r10, r7, r10, r61				# 14374
	fmul	r61, r41, r41				# 14426
	lw		r62, 2(r62)				# 14426
	faddmul	r61, r61, r62, r10				# 14354
	lw		r62, 3(r15)				# 3553
	cmpi	r62, 0
	beq		.b50271				# 14456
.b50272:
	fmul	r10, r54, r41				# 14522
	lw		r15, 9(r15)				# 5989
	lw		r62, 0(r15)				# 14522
	faddmul	r10, r10, r62, r61				# 14503
	fmul	r61, r41, r51				# 14556
	lw		r62, 1(r15)				# 14556
	faddmul	r61, r61, r62, r10				# 14503
	fmul	r62, r51, r54				# 14590
	lw		r15, 2(r15)				# 14590
	faddmul	r61, r62, r15, r61				# 14503
	cmpi	r30, 3
	beq		.b50274				# 21917
.b50275:
.b50273:
	sw		r61, 3(r28)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50263				# 21420
	b		.b50261
.b50274:
	addis	r62, r0, 16256				# 21937
	fsub	r61, r61, r62				# 21937
	b		.b50273				# 21937
.b50271:
	cmpi	r30, 3
	beq		.b50274				# 21917
	b		.b50275
.b50265:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50263				# 21420
	b		.b50261
.b50266:
	lw		r61, 4(r15)				# 4293
	lw		r62, 0(r28)				# 21728
	lw		r10, 1(r28)				# 21728
	lw		r15, 0(r61)				# 2037
	lw		r51, 1(r61)				# 2052
	fmul	r10, r51, r10				# 2037
	faddmul	r62, r15, r62, r10				# 2037
	lw		r61, 2(r61)				# 2067
	faddmul	r61, r61, r41, r62				# 21713
	sw		r61, 3(r28)				# 21713
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
	lwx		r10, r9, r61				# 21445
	lw		r54, 10(r10)				# 6561
	lw		r30, 1(r10)				# 2994
	lw		r28, 0(r15)				# 21561
	lw		r62, 5(r10)				# 4475
	lw		r9, 0(r62)				# 21561
	fsub	r9, r28, r9				# 21547
	sw		r9, 0(r54)				# 21547
	lw		r9, 1(r15)				# 21603
	lw		r28, 1(r62)				# 21603
	fsub	r9, r9, r28				# 21589
	sw		r9, 1(r54)				# 21547
	lw		r9, 2(r15)				# 21645
	lw		r28, 2(r62)				# 21645
	fsub	r51, r9, r28				# 21631
	sw		r51, 2(r54)				# 21547
	cmpi	r30, 2
	beq		.b50239				# 21673
.b50240:
	cmpi	r30, 2
	ble		.b50238				# 21798
.b50242:
	lw		r62, 0(r54)				# 21847
	lw		r7, 1(r54)				# 21847
	fmul	r13, r62, r62				# 14374
	lw		r25, 4(r10)				# 3734
	lw		r28, 0(r25)				# 14374
	fmul	r9, r7, r7				# 14400
	lw		r41, 1(r25)				# 14400
	fmul	r9, r9, r41				# 14374
	faddmul	r28, r13, r28, r9				# 14374
	fmul	r13, r51, r51				# 14426
	lw		r9, 2(r25)				# 14426
	faddmul	r9, r13, r9, r28				# 14354
	lw		r28, 3(r10)				# 3553
	cmpi	r28, 0
	beq		.b50244				# 14456
.b50245:
	fmul	r28, r7, r51				# 14522
	lw		r13, 9(r10)				# 5989
	lw		r10, 0(r13)				# 14522
	faddmul	r28, r28, r10, r9				# 14503
	fmul	r9, r51, r62				# 14556
	lw		r10, 1(r13)				# 14556
	faddmul	r28, r9, r10, r28				# 14503
	fmul	r9, r62, r7				# 14590
	lw		r62, 2(r13)				# 14590
	faddmul	r9, r9, r62, r28				# 14503
	cmpi	r30, 3
	beq		.b50247				# 21917
.b50248:
.b50246:
	sw		r9, 3(r54)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50236				# 21420
	b		.b50234
.b50247:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b50246				# 21937
.b50244:
	cmpi	r30, 3
	beq		.b50247				# 21917
	b		.b50248
.b50238:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50236				# 21420
	b		.b50234
.b50239:
	lw		r10, 4(r10)				# 4293
	lw		r62, 0(r54)				# 21728
	lw		r13, 1(r54)				# 21728
	lw		r9, 0(r10)				# 2037
	lw		r28, 1(r10)				# 2052
	fmul	r28, r28, r13				# 2037
	faddmul	r9, r9, r62, r28				# 2037
	lw		r28, 2(r10)				# 2067
	faddmul	r9, r28, r51, r9				# 21713
	sw		r9, 3(r54)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50236				# 21420
	b		.b50234
.b50213:
	lw		r61, -9(r3)				# 38355
	lwx		r61, r61, r62				# 38355
	lw		r61, 2(r61)				# 7046
	lwx		r61, r61, r9				# 38352
	cmp		r61, r28
	beq		.b50215				# 38352
	b		.b50221
.b50215:
	addi	r61, r62, -1				# 38426
	lw		r10, -10(r3)				# 38411
	lwx		r61, r10, r61				# 38411
	lw		r61, 2(r61)				# 7046
	lwx		r61, r61, r9				# 38408
	cmp		r61, r28
	beq		.b50217				# 38408
	b		.b50221
.b50217:
	addi	r61, r62, 1				# 38478
	lwx		r61, r10, r61				# 38463
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
	lw		r15, 5(r15)				# 7491
	addi	r61, r62, -1				# 37080
	lw		r28, -10(r3)				# 37055
	lwx		r61, r28, r61				# 37055
	lw		r51, 5(r61)				# 7491
	lw		r54, 5(r13)				# 7491
	addi	r61, r62, 1				# 37187
	lwx		r61, r28, r61				# 37162
	lw		r10, 5(r61)				# 7491
	lw		r61, -9(r3)				# 37215
	lwx		r61, r61, r62				# 37215
	lw		r62, 5(r61)				# 7491
	lwx		r61, r15, r9				# 37255
	lw		r25, 0(r61)				# 1353
	lli		r30, diffuse_ray.2584				# 1353
	sw		r25, 0(r30)				# 1353
	lw		r15, 1(r61)				# 1376
	sw		r15, 1(r30)				# 1353
	lw		r7, 2(r61)				# 1399
	sw		r7, 2(r30)				# 37255
	lwx		r28, r51, r9				# 37289
	lw		r61, 0(r28)				# 2282
	fadd	r51, r25, r61				# 2270
	sw		r51, 0(r30)				# 2270
	lw		r61, 1(r28)				# 2315
	fadd	r15, r15, r61				# 2303
	sw		r15, 1(r30)				# 2270
	lw		r61, 2(r28)				# 2348
	fadd	r7, r7, r61				# 2336
	sw		r7, 2(r30)				# 37255
	lwx		r28, r54, r9				# 37325
	lw		r61, 0(r28)				# 2282
	fadd	r54, r51, r61				# 2270
	sw		r54, 0(r30)				# 2270
	lw		r61, 1(r28)				# 2315
	fadd	r51, r15, r61				# 2303
	sw		r51, 1(r30)				# 2270
	lw		r61, 2(r28)				# 2348
	fadd	r15, r7, r61				# 2336
	sw		r15, 2(r30)				# 37255
	lwx		r61, r10, r9				# 37363
	lw		r28, 0(r61)				# 2282
	fadd	r28, r54, r28				# 2270
	sw		r28, 0(r30)				# 2270
	lw		r10, 1(r61)				# 2315
	fadd	r10, r51, r10				# 2303
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
	lwx		r13, r61, r9				# 37473
	lli		r10, rgb.2587				# 2671
	lw		r51, 0(r10)				# 2671
	lw		r61, 0(r13)				# 2683
	faddmul	r61, r61, r28, r51				# 2659
	sw		r61, 0(r10)				# 2659
	lw		r61, 1(r10)				# 2713
	lw		r28, 1(r13)				# 2725
	faddmul	r61, r28, r15, r61				# 2701
	sw		r61, 1(r10)				# 2659
	lw		r28, 2(r10)				# 2755
	lw		r61, 2(r13)				# 2767
	faddmul	r61, r61, r62, r28				# 2743
	sw		r61, 2(r10)				# 2743
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
	lw		r61, 0(r1)				# 8078
	lw		r13, 0(r61)				# 1949
	lw		r62, -21(r3)				# 1949
	lw		r51, 0(r62)				# 1949
	lw		r28, 1(r61)				# 1967
	lw		r15, 1(r62)				# 1967
	fmul	r28, r28, r15				# 1949
	faddmul	r28, r13, r51, r28				# 1949
	lw		r61, 2(r61)				# 1985
	lw		r62, 2(r62)				# 1985
	faddmul	r61, r61, r62, r28				# 35609
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
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50104				# 21420
.b50102:
	addi	r9, r0, 118				# 35584
	sw		r9, -26(r3)				# 35584
.b50118:
	lw		r10, -25(r3)				# 35627
	lwx		r1, r10, r9				# 35627
	lw		r28, 0(r1)				# 8078
	lw		r13, 0(r28)				# 1949
	lw		r51, -21(r3)				# 1949
	lw		r15, 0(r51)				# 1949
	lw		r61, 1(r28)				# 1967
	lw		r62, 1(r51)				# 1967
	fmul	r61, r61, r62				# 1949
	faddmul	r62, r13, r15, r61				# 1949
	lw		r61, 2(r28)				# 1985
	lw		r28, 2(r51)				# 1985
	faddmul	r28, r61, r28, r62				# 35609
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
	lw		r61, 0(r15)				# 1353
	lli		r9, startp_fast.2602				# 1353
	sw		r61, 0(r9)				# 1353
	lw		r61, 1(r15)				# 1376
	sw		r61, 1(r9)				# 1353
	lw		r61, 2(r15)				# 1399
	sw		r61, 2(r9)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50131				# 21420
.b50129:
	addi	r9, r0, 118				# 35584
	sw		r9, -28(r3)				# 35584
.b50145:
	lw		r28, -27(r3)				# 35627
	lwx		r1, r28, r9				# 35627
	lw		r13, 0(r1)				# 8078
	lw		r10, 0(r13)				# 1949
	lw		r51, -21(r3)				# 1949
	lw		r62, 0(r51)				# 1949
	lw		r15, 1(r13)				# 1967
	lw		r61, 1(r51)				# 1967
	fmul	r61, r15, r61				# 1949
	faddmul	r15, r10, r62, r61				# 1949
	lw		r62, 2(r13)				# 1985
	lw		r61, 2(r51)				# 1985
	faddmul	r62, r62, r61, r15				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r62
	ble		.b50151				# 3188
.b50152:
	addi	r9, r9, 1				# 35712
	lwx		r1, r28, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r62, r9				# 35694
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
	lw		r30, -22(r3)				# 1353
	lw		r9, 0(r30)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r30)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r30)				# 1399
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
	faddmul	r62, r15, r28, r62				# 1949
	lw		r28, 2(r61)				# 1985
	lw		r61, 2(r10)				# 1985
	faddmul	r61, r28, r61, r62				# 35609
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
	lw		r15, 0(r1)				# 8078
	lw		r28, 0(r15)				# 1949
	lw		r61, -21(r3)				# 1949
	lw		r62, 0(r61)				# 1949
	lw		r51, 1(r15)				# 1967
	lw		r10, 1(r61)				# 1967
	fmul	r10, r51, r10				# 1949
	faddmul	r62, r28, r62, r10				# 1949
	lw		r28, 2(r15)				# 1985
	lw		r61, 2(r61)				# 1985
	faddmul	r28, r28, r61, r62				# 35609
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
	lli		r62, rgb.2587				# 2671
	lw		r28, 0(r62)				# 2671
	lw		r61, 0(r15)				# 2683
	lw		r9, -17(r3)				# 2671
	faddmul	r9, r61, r9, r28				# 2659
	sw		r9, 0(r62)				# 2659
	lw		r28, 1(r62)				# 2713
	lw		r9, 1(r15)				# 2725
	lw		r61, -18(r3)				# 2713
	faddmul	r9, r9, r61, r28				# 2701
	sw		r9, 1(r62)				# 2659
	lw		r61, 2(r62)				# 2755
	lw		r28, 2(r15)				# 2767
	lw		r9, -19(r3)				# 2755
	faddmul	r9, r28, r9, r61				# 2743
	sw		r9, 2(r62)				# 2743
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
	lwx		r7, r9, r61				# 21445
	lw		r54, 10(r7)				# 6561
	lw		r10, 1(r7)				# 2994
	lw		r15, 0(r28)				# 21561
	lw		r62, 5(r7)				# 4475
	lw		r9, 0(r62)				# 21561
	fsub	r9, r15, r9				# 21547
	sw		r9, 0(r54)				# 21547
	lw		r9, 1(r28)				# 21603
	lw		r15, 1(r62)				# 21603
	fsub	r9, r9, r15				# 21589
	sw		r9, 1(r54)				# 21547
	lw		r15, 2(r28)				# 21645
	lw		r9, 2(r62)				# 21645
	fsub	r41, r15, r9				# 21631
	sw		r41, 2(r54)				# 21547
	cmpi	r10, 2
	beq		.b50188				# 21673
.b50189:
	cmpi	r10, 2
	ble		.b50187				# 21798
.b50191:
	lw		r30, 0(r54)				# 21847
	lw		r51, 1(r54)				# 21847
	fmul	r9, r30, r30				# 14374
	lw		r62, 4(r7)				# 3734
	lw		r13, 0(r62)				# 14374
	fmul	r15, r51, r51				# 14400
	lw		r25, 1(r62)				# 14400
	fmul	r15, r15, r25				# 14374
	faddmul	r9, r9, r13, r15				# 14374
	fmul	r15, r41, r41				# 14426
	lw		r62, 2(r62)				# 14426
	faddmul	r9, r15, r62, r9				# 14354
	lw		r62, 3(r7)				# 3553
	cmpi	r62, 0
	beq		.b50193				# 14456
.b50194:
	fmul	r15, r51, r41				# 14522
	lw		r62, 9(r7)				# 5989
	lw		r13, 0(r62)				# 14522
	faddmul	r15, r15, r13, r9				# 14503
	fmul	r13, r41, r30				# 14556
	lw		r9, 1(r62)				# 14556
	faddmul	r13, r13, r9, r15				# 14503
	fmul	r15, r30, r51				# 14590
	lw		r9, 2(r62)				# 14590
	faddmul	r9, r15, r9, r13				# 14503
	cmpi	r10, 3
	beq		.b50196				# 21917
.b50197:
.b50195:
	sw		r9, 3(r54)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50185				# 21420
	b		.b50183
.b50196:
	addis	r62, r0, 16256				# 21937
	fsub	r9, r9, r62				# 21937
	b		.b50195				# 21937
.b50193:
	cmpi	r10, 3
	beq		.b50196				# 21917
	b		.b50197
.b50187:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50185				# 21420
	b		.b50183
.b50188:
	lw		r10, 4(r7)				# 4293
	lw		r62, 0(r54)				# 21728
	lw		r9, 1(r54)				# 21728
	lw		r51, 0(r10)				# 2037
	lw		r15, 1(r10)				# 2052
	fmul	r9, r15, r9				# 2037
	faddmul	r9, r51, r62, r9				# 2037
	lw		r62, 2(r10)				# 2067
	faddmul	r9, r62, r41, r9				# 21713
	sw		r9, 3(r54)				# 21713
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
	lwx		r7, r9, r61				# 21445
	lw		r13, 10(r7)				# 6561
	lw		r62, 1(r7)				# 2994
	lw		r9, 0(r30)				# 21561
	lw		r15, 5(r7)				# 4475
	lw		r28, 0(r15)				# 21561
	fsub	r9, r9, r28				# 21547
	sw		r9, 0(r13)				# 21547
	lw		r9, 1(r30)				# 21603
	lw		r28, 1(r15)				# 21603
	fsub	r9, r9, r28				# 21589
	sw		r9, 1(r13)				# 21547
	lw		r28, 2(r30)				# 21645
	lw		r9, 2(r15)				# 21645
	fsub	r41, r28, r9				# 21631
	sw		r41, 2(r13)				# 21547
	cmpi	r62, 2
	beq		.b50161				# 21673
.b50162:
	cmpi	r62, 2
	ble		.b50160				# 21798
.b50164:
	lw		r10, 0(r13)				# 21847
	lw		r51, 1(r13)				# 21847
	fmul	r28, r10, r10				# 14374
	lw		r15, 4(r7)				# 3734
	lw		r9, 0(r15)				# 14374
	fmul	r54, r51, r51				# 14400
	lw		r25, 1(r15)				# 14400
	fmul	r54, r54, r25				# 14374
	faddmul	r54, r28, r9, r54				# 14374
	fmul	r28, r41, r41				# 14426
	lw		r9, 2(r15)				# 14426
	faddmul	r9, r28, r9, r54				# 14354
	lw		r28, 3(r7)				# 3553
	cmpi	r28, 0
	beq		.b50166				# 14456
.b50167:
	fmul	r28, r51, r41				# 14522
	lw		r15, 9(r7)				# 5989
	lw		r54, 0(r15)				# 14522
	faddmul	r28, r28, r54, r9				# 14503
	fmul	r54, r41, r10				# 14556
	lw		r9, 1(r15)				# 14556
	faddmul	r28, r54, r9, r28				# 14503
	fmul	r10, r10, r51				# 14590
	lw		r9, 2(r15)				# 14590
	faddmul	r9, r10, r9, r28				# 14503
	cmpi	r62, 3
	beq		.b50169				# 21917
.b50170:
.b50168:
	sw		r9, 3(r13)				# 21903
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
	lw		r28, 4(r7)				# 4293
	lw		r9, 0(r13)				# 21728
	lw		r15, 1(r13)				# 21728
	lw		r10, 0(r28)				# 2037
	lw		r62, 1(r28)				# 2052
	fmul	r62, r62, r15				# 2037
	faddmul	r62, r10, r9, r62				# 2037
	lw		r9, 2(r28)				# 2067
	faddmul	r9, r9, r41, r62				# 21713
	sw		r9, 3(r13)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50158				# 21420
	b		.b50156
.b50151:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r62, r9				# 35766
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
	lwx		r54, r61, r9				# 21445
	lw		r25, 10(r54)				# 6561
	lw		r41, 1(r54)				# 2994
	lw		r62, 0(r15)				# 21561
	lw		r28, 5(r54)				# 4475
	lw		r61, 0(r28)				# 21561
	fsub	r61, r62, r61				# 21547
	sw		r61, 0(r25)				# 21547
	lw		r61, 1(r15)				# 21603
	lw		r62, 1(r28)				# 21603
	fsub	r61, r61, r62				# 21589
	sw		r61, 1(r25)				# 21547
	lw		r61, 2(r15)				# 21645
	lw		r28, 2(r28)				# 21645
	fsub	r28, r61, r28				# 21631
	sw		r28, 2(r25)				# 21547
	cmpi	r41, 2
	beq		.b50134				# 21673
.b50135:
	cmpi	r41, 2
	ble		.b50133				# 21798
.b50137:
	lw		r13, 0(r25)				# 21847
	lw		r7, 1(r25)				# 21847
	fmul	r10, r13, r13				# 14374
	lw		r61, 4(r54)				# 3734
	lw		r51, 0(r61)				# 14374
	fmul	r30, r7, r7				# 14400
	lw		r62, 1(r61)				# 14400
	fmul	r62, r30, r62				# 14374
	faddmul	r10, r10, r51, r62				# 14374
	fmul	r62, r28, r28				# 14426
	lw		r61, 2(r61)				# 14426
	faddmul	r61, r62, r61, r10				# 14354
	lw		r62, 3(r54)				# 3553
	cmpi	r62, 0
	beq		.b50139				# 14456
.b50140:
	fmul	r51, r7, r28				# 14522
	lw		r10, 9(r54)				# 5989
	lw		r62, 0(r10)				# 14522
	faddmul	r61, r51, r62, r61				# 14503
	fmul	r28, r28, r13				# 14556
	lw		r62, 1(r10)				# 14556
	faddmul	r62, r28, r62, r61				# 14503
	fmul	r28, r13, r7				# 14590
	lw		r61, 2(r10)				# 14590
	faddmul	r61, r28, r61, r62				# 14503
	cmpi	r41, 3
	beq		.b50142				# 21917
.b50143:
.b50141:
	sw		r61, 3(r25)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50131				# 21420
	b		.b50129
.b50142:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50141				# 21937
.b50139:
	cmpi	r41, 3
	beq		.b50142				# 21917
	b		.b50143
.b50133:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50131				# 21420
	b		.b50129
.b50134:
	lw		r13, 4(r54)				# 4293
	lw		r51, 0(r25)				# 21728
	lw		r10, 1(r25)				# 21728
	lw		r62, 0(r13)				# 2037
	lw		r61, 1(r13)				# 2052
	fmul	r61, r61, r10				# 2037
	faddmul	r61, r62, r51, r61				# 2037
	lw		r62, 2(r13)				# 2067
	faddmul	r61, r62, r28, r61				# 21713
	sw		r61, 3(r25)				# 21713
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
	lli		r61, objects.2536				# 21445
	lwx		r51, r61, r9				# 21445
	lw		r15, 10(r51)				# 6561
	lw		r7, 1(r51)				# 2994
	lw		r61, 0(r62)				# 21561
	lw		r28, 5(r51)				# 4475
	lw		r10, 0(r28)				# 21561
	fsub	r61, r61, r10				# 21547
	sw		r61, 0(r15)				# 21547
	lw		r10, 1(r62)				# 21603
	lw		r61, 1(r28)				# 21603
	fsub	r61, r10, r61				# 21589
	sw		r61, 1(r15)				# 21547
	lw		r10, 2(r62)				# 21645
	lw		r61, 2(r28)				# 21645
	fsub	r13, r10, r61				# 21631
	sw		r13, 2(r15)				# 21547
	cmpi	r7, 2
	beq		.b50107				# 21673
.b50108:
	cmpi	r7, 2
	ble		.b50106				# 21798
.b50110:
	lw		r54, 0(r15)				# 21847
	lw		r30, 1(r15)				# 21847
	fmul	r41, r54, r54				# 14374
	lw		r25, 4(r51)				# 3734
	lw		r10, 0(r25)				# 14374
	fmul	r61, r30, r30				# 14400
	lw		r28, 1(r25)				# 14400
	fmul	r61, r61, r28				# 14374
	faddmul	r61, r41, r10, r61				# 14374
	fmul	r28, r13, r13				# 14426
	lw		r10, 2(r25)				# 14426
	faddmul	r61, r28, r10, r61				# 14354
	lw		r28, 3(r51)				# 3553
	cmpi	r28, 0
	beq		.b50112				# 14456
.b50113:
	fmul	r10, r30, r13				# 14522
	lw		r51, 9(r51)				# 5989
	lw		r28, 0(r51)				# 14522
	faddmul	r28, r10, r28, r61				# 14503
	fmul	r10, r13, r54				# 14556
	lw		r61, 1(r51)				# 14556
	faddmul	r28, r10, r61, r28				# 14503
	fmul	r61, r54, r30				# 14590
	lw		r10, 2(r51)				# 14590
	faddmul	r61, r61, r10, r28				# 14503
	cmpi	r7, 3
	beq		.b50115				# 21917
.b50116:
.b50114:
	sw		r61, 3(r15)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50104				# 21420
	b		.b50102
.b50115:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50114				# 21937
.b50112:
	cmpi	r7, 3
	beq		.b50115				# 21917
	b		.b50116
.b50106:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50104				# 21420
	b		.b50102
.b50107:
	lw		r61, 4(r51)				# 4293
	lw		r10, 0(r15)				# 21728
	lw		r51, 1(r15)				# 21728
	lw		r28, 0(r61)				# 2037
	lw		r54, 1(r61)				# 2052
	fmul	r51, r54, r51				# 2037
	faddmul	r28, r28, r10, r51				# 2037
	lw		r61, 2(r61)				# 2067
	faddmul	r61, r61, r13, r28				# 21713
	sw		r61, 3(r15)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
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
	lwx		r62, r61, r9				# 21445
	lw		r15, 10(r62)				# 6561
	lw		r51, 1(r62)				# 2994
	lw		r61, 0(r41)				# 21561
	lw		r10, 5(r62)				# 4475
	lw		r28, 0(r10)				# 21561
	fsub	r61, r61, r28				# 21547
	sw		r61, 0(r15)				# 21547
	lw		r61, 1(r41)				# 21603
	lw		r28, 1(r10)				# 21603
	fsub	r61, r61, r28				# 21589
	sw		r61, 1(r15)				# 21547
	lw		r61, 2(r41)				# 21645
	lw		r28, 2(r10)				# 21645
	fsub	r30, r61, r28				# 21631
	sw		r30, 2(r15)				# 21547
	cmpi	r51, 2
	beq		.b50080				# 21673
.b50081:
	cmpi	r51, 2
	ble		.b50079				# 21798
.b50083:
	lw		r54, 0(r15)				# 21847
	lw		r13, 1(r15)				# 21847
	fmul	r10, r54, r54				# 14374
	lw		r25, 4(r62)				# 3734
	lw		r28, 0(r25)				# 14374
	fmul	r7, r13, r13				# 14400
	lw		r61, 1(r25)				# 14400
	fmul	r61, r7, r61				# 14374
	faddmul	r10, r10, r28, r61				# 14374
	fmul	r61, r30, r30				# 14426
	lw		r28, 2(r25)				# 14426
	faddmul	r61, r61, r28, r10				# 14354
	lw		r28, 3(r62)				# 3553
	cmpi	r28, 0
	beq		.b50085				# 14456
.b50086:
	fmul	r10, r13, r30				# 14522
	lw		r28, 9(r62)				# 5989
	lw		r62, 0(r28)				# 14522
	faddmul	r10, r10, r62, r61				# 14503
	fmul	r61, r30, r54				# 14556
	lw		r62, 1(r28)				# 14556
	faddmul	r61, r61, r62, r10				# 14503
	fmul	r62, r54, r13				# 14590
	lw		r28, 2(r28)				# 14590
	faddmul	r61, r62, r28, r61				# 14503
	cmpi	r51, 3
	beq		.b50088				# 21917
.b50089:
.b50087:
	sw		r61, 3(r15)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50077				# 21420
	b		.b50075
.b50088:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50087				# 21937
.b50085:
	cmpi	r51, 3
	beq		.b50088				# 21917
	b		.b50089
.b50079:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50077				# 21420
	b		.b50075
.b50080:
	lw		r61, 4(r62)				# 4293
	lw		r62, 0(r15)				# 21728
	lw		r28, 1(r15)				# 21728
	lw		r51, 0(r61)				# 2037
	lw		r10, 1(r61)				# 2052
	fmul	r28, r10, r28				# 2037
	faddmul	r28, r51, r62, r28				# 2037
	lw		r61, 2(r61)				# 2067
	faddmul	r61, r61, r30, r28				# 21713
	sw		r61, 3(r15)				# 21713
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
	fsub	r30, r10, r9				# 46200
	lw		r61, 4(r28)				# 4293
	lw		r62, 0(r61)				# 1949
	lw		r15, 1(r61)				# 1967
	fmul	r9, r46, r15				# 1949
	faddmul	r9, r23, r62, r9				# 1949
	lw		r61, 2(r61)				# 1985
	faddmul	r28, r7, r61, r9				# 46235
	addis	r9, r0, 16384				# 46312
	fmul	r62, r9, r62				# 46312
	fmul	r62, r62, r28				# 46312
	fsub	r41, r62, r23				# 46282
	fmul	r62, r9, r15				# 46357
	fmul	r62, r62, r28				# 46357
	fsub	r62, r62, r46				# 46282
	fmul	r9, r9, r61				# 46402
	fmul	r9, r9, r28				# 46402
	fsub	r28, r9, r7				# 46282
	mv		r54, r4
	addi	r4, r4, 3				# 44588
	addi	r37, r0, 0				# 44588
	sw		r37, 0(r54)				# 44588
	sw		r37, 1(r54)				# 44588
	sw		r37, 2(r54)				# 44588
	mv		r61, r4
	add		r4, r4, r13				# 44623
	addi	r15, r13, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r15
	ble		.b49973				# 44623
.b49971:
	mv		r15, r4
	addi	r4, r4, 2				# 44656
	sw		r54, 0(r15)				# 44656
	sw		r61, 1(r15)				# 44656
	sw		r41, 0(r54)				# 1162
	sw		r62, 1(r54)				# 1162
	sw		r28, 2(r54)				# 45563
	addi	r28, r13, -1				# 21317
	cmpi	r28, 0
	bge		.b49977				# 20796
.b49975:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r25, 0(r9)				# 45650
	sw		r15, 1(r9)				# 45650
	sw		r30, 2(r9)				# 45650
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
	mv		r9, r4
	addi	r4, r4, 5				# 20110
	sw		r37, 0(r9)				# 20110
	sw		r37, 1(r9)				# 20110
	sw		r37, 2(r9)				# 20110
	sw		r37, 3(r9)				# 20110
	sw		r37, 4(r9)				# 20110
	lw		r29, 0(r54)				# 20142
	lw		r39, 1(r54)				# 20142
	lw		r23, 2(r54)				# 20142
	fmul	r41, r29, r29				# 14374
	lw		r62, 4(r7)				# 3734
	lw		r57, 0(r62)				# 14374
	fmul	r13, r39, r39				# 14400
	lw		r48, 1(r62)				# 14400
	fmul	r13, r13, r48				# 14374
	faddmul	r41, r41, r57, r13				# 14374
	fmul	r13, r23, r23				# 14426
	lw		r19, 2(r62)				# 14426
	faddmul	r62, r13, r19, r41				# 14354
	lw		r13, 3(r7)				# 3553
	cmpi	r13, 0
	beq		.b50034				# 14456
.b50035:
	fmul	r26, r39, r23				# 14522
	lw		r46, 9(r7)				# 5989
	lw		r41, 0(r46)				# 14522
	faddmul	r26, r26, r41, r62				# 14503
	fmul	r62, r23, r29				# 14556
	lw		r41, 1(r46)				# 14556
	faddmul	r62, r62, r41, r26				# 14503
	fmul	r41, r29, r39				# 14590
	lw		r46, 2(r46)				# 14590
	faddmul	r62, r41, r46, r62				# 14503
.b50033:
	lw		r41, 0(r54)				# 20192
	fmul	r41, r41, r57				# 20186
	fneg	r46, r41				# 20177
	lw		r41, 1(r54)				# 20234
	fmul	r41, r41, r48				# 20228
	fneg	r41, r41				# 20219
	lw		r57, 2(r54)				# 20276
	fmul	r57, r57, r19				# 20270
	fneg	r39, r57				# 20261
	sw		r62, 0(r9)				# 20304
	cmpi	r13, 0
	beq		.b50037				# 20324
.b50038:
	lw		r57, 2(r54)				# 20379
	lw		r7, 9(r7)				# 6179
	lw		r23, 1(r7)				# 20379
	lw		r13, 1(r54)				# 20404
	lw		r26, 2(r7)				# 20404
	fmul	r13, r13, r26				# 20379
	faddmul	r13, r57, r23, r13				# 20372
	fhalf	r13, r13				# 20366
	fsub	r13, r46, r13				# 20353
	sw		r13, 1(r9)				# 20353
	lw		r46, 2(r54)				# 20458
	lw		r57, 0(r7)				# 20458
	lw		r13, 0(r54)				# 20483
	lw		r26, 2(r7)				# 20483
	fmul	r13, r13, r26				# 20458
	faddmul	r13, r46, r57, r13				# 20451
	fhalf	r13, r13				# 20445
	fsub	r13, r41, r13				# 20432
	sw		r13, 2(r9)				# 20353
	lw		r46, 1(r54)				# 20537
	lw		r41, 0(r7)				# 20537
	lw		r57, 0(r54)				# 20562
	lw		r13, 1(r7)				# 20562
	fmul	r13, r57, r13				# 20537
	faddmul	r13, r46, r41, r13				# 20530
	fhalf	r13, r13				# 20524
	fsub	r13, r39, r13				# 20511
	sw		r13, 3(r9)				# 20511
	fcmp	r62, r37
	beq		.b50039				# 3128
.b50041:
	fdiv	r62, r10, r62				# 20696
	sw		r62, 4(r9)				# 20696
.b50039:
	swx		r9, r28, r61				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49977				# 20796
	b		.b49975
.b50037:
	sw		r46, 1(r9)				# 20601
	sw		r41, 2(r9)				# 20601
	sw		r39, 3(r9)				# 20643
	fcmp	r62, r37
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
	lw		r57, 0(r54)				# 19764
	lw		r41, 4(r7)				# 3734
	lw		r7, 0(r41)				# 19764
	lw		r62, 1(r54)				# 19790
	lw		r13, 1(r41)				# 19790
	fmul	r62, r62, r13				# 19764
	faddmul	r62, r57, r7, r62				# 19764
	lw		r13, 2(r54)				# 19816
	lw		r7, 2(r41)				# 19816
	faddmul	r13, r13, r7, r62				# 19752
	fcmp	r13, r37
	ble		.b50031				# 3158
.b50032:
	addis	r62, r0, 49024				# 19882
	fdiv	r62, r62, r13				# 19869
	sw		r62, 0(r9)				# 19869
	lw		r62, 0(r41)				# 19916
	fdiv	r62, r62, r13				# 19910
	fneg	r62, r62				# 19897
	sw		r62, 1(r9)				# 19869
	lw		r62, 1(r41)				# 19958
	fdiv	r62, r62, r13				# 19952
	fneg	r62, r62				# 19939
	sw		r62, 2(r9)				# 19869
	lw		r62, 2(r41)				# 20000
	fdiv	r62, r62, r13				# 19994
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
	mv		r13, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b49984:
	swx		r37, r9, r13				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b49984				# 19127
.b49982:
	lw		r9, 0(r54)				# 19153
	fcmp	r9, r37
	beq		.b49987				# 3128
.b49988:
	lw		r41, 6(r7)				# 3372
	lw		r9, 0(r54)				# 19253
	fcmp	r37, r9
	ble		.b49990				# 3188
.b49991:
	addi	r62, r0, 1				# 3188
	cmpi	r41, 0
	beq		.b49993				# 765
.b49994:
	cmpi	r62, 0
	beq		.b49995				# 775
.b49996:
	lw		r9, 4(r7)				# 3734
	lw		r9, 0(r9)				# 19222
	fneg	r9, r9				# 3025
.b49997:
	sw		r9, 0(r13)				# 19209
	lw		r9, 0(r54)				# 19302
	fdiv	r9, r10, r9				# 19289
	sw		r9, 1(r13)				# 19289
	lw		r9, 1(r54)				# 19327
	fcmp	r9, r37
	beq		.b50001				# 3128
.b50002:
	lw		r41, 6(r7)				# 3372
	lw		r9, 1(r54)				# 19426
	fcmp	r37, r9
	ble		.b50004				# 3188
.b50005:
	addi	r62, r0, 1				# 3188
	cmpi	r41, 0
	beq		.b50007				# 765
.b50008:
	cmpi	r62, 0
	beq		.b50009				# 775
.b50010:
	lw		r9, 4(r7)				# 3920
	lw		r9, 1(r9)				# 19395
	fneg	r9, r9				# 3025
.b50011:
	sw		r9, 2(r13)				# 19382
	lw		r9, 1(r54)				# 19475
	fdiv	r9, r10, r9				# 19462
	sw		r9, 3(r13)				# 19462
	lw		r9, 2(r54)				# 19500
	fcmp	r9, r37
	beq		.b50015				# 3128
.b50016:
	lw		r9, 6(r7)				# 3372
	lw		r62, 2(r54)				# 19599
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
	sw		r9, 4(r13)				# 19555
	lw		r9, 2(r54)				# 19648
	fdiv	r9, r10, r9				# 19635
	sw		r9, 5(r13)				# 19635
.b50014:
	swx		r13, r28, r61				# 20985
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
	sw		r37, 5(r13)				# 19525
	b		.b50014				# 19525
.b50009:
	lw		r9, 4(r7)				# 3920
	lw		r9, 1(r9)				# 19395
	b		.b50011				# 918
.b50007:
	lw		r9, 4(r7)				# 3920
	lw		r9, 1(r9)				# 19395
	cmpi	r62, 0
	beq		.b50012				# 905
.b50013:
	b		.b50011				# 918
.b50012:
	fneg	r9, r9				# 3025
	b		.b50011				# 3025
.b50004:
	addi	r62, r0, 0				# 3188
	cmpi	r41, 0
	beq		.b50007				# 765
	b		.b50008
.b50001:
	sw		r37, 3(r13)				# 19352
	lw		r9, 2(r54)				# 19500
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
	cmpi	r41, 0
	beq		.b49993				# 765
	b		.b49994
.b49987:
	sw		r37, 1(r13)				# 19179
	lw		r9, 1(r54)				# 19327
	fcmp	r9, r37
	beq		.b50001				# 3128
	b		.b50002
.b49973:
	swx		r54, r9, r61				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r15
	ble		.b49973				# 44623
	b		.b49971
.b49754:
	slwi	r26, r61, 2				# 45726
	fsub	r30, r10, r9				# 45784
	fneg	r57, r23				# 45819
	fneg	r41, r46				# 45848
	fneg	r39, r7				# 45877
	addi	r48, r26, 1				# 45906
	mv		r15, r4
	addi	r4, r4, 3				# 44588
	addi	r54, r0, 0				# 44588
	sw		r54, 0(r15)				# 44588
	sw		r54, 1(r15)				# 44588
	sw		r54, 2(r15)				# 44588
	mv		r25, r4
	add		r4, r4, r13				# 44623
	addi	r61, r13, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r61
	ble		.b49758				# 44623
.b49756:
	mv		r37, r4
	addi	r4, r4, 2				# 44656
	sw		r15, 0(r37)				# 44656
	sw		r25, 1(r37)				# 44656
	sw		r23, 0(r15)				# 1162
	sw		r41, 1(r15)				# 1162
	sw		r39, 2(r15)				# 45563
	addi	r61, r13, -1				# 21317
	cmpi	r61, 0
	bge		.b49762				# 20796
.b49760:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r48, 0(r9)				# 45650
	sw		r37, 1(r9)				# 45650
	sw		r30, 2(r9)				# 45650
	lli		r37, reflections.2644				# 45906
	sw		r9, 0(r37)				# 45906
	addi	r48, r26, 2				# 45954
	mv		r15, r4
	addi	r4, r4, 3				# 44588
	sw		r54, 0(r15)				# 44588
	sw		r54, 1(r15)				# 44588
	sw		r54, 2(r15)				# 44588
	mv		r9, r4
	add		r4, r4, r13				# 44623
	addi	r28, r13, -1				# 44623
	addi	r61, r0, 0				# 44623
	cmp		r61, r28
	ble		.b49829				# 44623
.b49827:
	mv		r23, r4
	addi	r4, r4, 2				# 44656
	sw		r15, 0(r23)				# 44656
	sw		r9, 1(r23)				# 44656
	sw		r57, 0(r15)				# 1162
	sw		r46, 1(r15)				# 1162
	sw		r39, 2(r15)				# 45563
	addi	r28, r13, -1				# 21317
	cmpi	r28, 0
	bge		.b49833				# 20796
.b49831:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r48, 0(r9)				# 45650
	sw		r23, 1(r9)				# 45650
	sw		r30, 2(r9)				# 45650
	sw		r9, 1(r37)				# 45906
	addi	r46, r26, 3				# 46006
	mv		r62, r4
	addi	r4, r4, 3				# 44588
	sw		r54, 0(r62)				# 44588
	sw		r54, 1(r62)				# 44588
	sw		r54, 2(r62)				# 44588
	mv		r25, r4
	add		r4, r4, r13				# 44623
	addi	r61, r13, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r61
	ble		.b49900				# 44623
.b49898:
	mv		r15, r4
	addi	r4, r4, 2				# 44656
	sw		r62, 0(r15)				# 44656
	sw		r25, 1(r15)				# 44656
	sw		r57, 0(r62)				# 1162
	sw		r41, 1(r62)				# 1162
	sw		r7, 2(r62)				# 45563
	addi	r61, r13, -1				# 21317
	cmpi	r61, 0
	bge		.b49904				# 20796
.b49902:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r46, 0(r9)				# 45650
	sw		r15, 1(r9)				# 45650
	sw		r30, 2(r9)				# 45650
	sw		r9, 2(r37)				# 45906
	addi	r61, r0, 3				# 46058
	lli		r9, n_reflections.2647				# 46058
	sw		r61, 0(r9)				# 46058
	b		.b49747				# 46058
.b49904:
	lwx		r7, r51, r61				# 20821
	lw		r9, 1(r7)				# 2994
	cmpi	r9, 1
	beq		.b49907				# 20947
.b49908:
	cmpi	r9, 2
	beq		.b49955				# 21033
.b49956:
	mv		r28, r4
	addi	r4, r4, 5				# 20110
	sw		r54, 0(r28)				# 20110
	sw		r54, 1(r28)				# 20110
	sw		r54, 2(r28)				# 20110
	sw		r54, 3(r28)				# 20110
	sw		r54, 4(r28)				# 20110
	lw		r41, 0(r62)				# 20142
	lw		r14, 1(r62)				# 20142
	lw		r39, 2(r62)				# 20142
	fmul	r57, r41, r41				# 14374
	lw		r9, 4(r7)				# 3734
	lw		r29, 0(r9)				# 14374
	fmul	r13, r14, r14				# 14400
	lw		r26, 1(r9)				# 14400
	fmul	r13, r13, r26				# 14374
	faddmul	r13, r57, r29, r13				# 14374
	fmul	r57, r39, r39				# 14426
	lw		r23, 2(r9)				# 14426
	faddmul	r9, r57, r23, r13				# 14354
	lw		r19, 3(r7)				# 3553
	cmpi	r19, 0
	beq		.b49961				# 14456
.b49962:
	fmul	r48, r14, r39				# 14522
	lw		r57, 9(r7)				# 5989
	lw		r13, 0(r57)				# 14522
	faddmul	r13, r48, r13, r9				# 14503
	fmul	r9, r39, r41				# 14556
	lw		r39, 1(r57)				# 14556
	faddmul	r9, r9, r39, r13				# 14503
	fmul	r13, r41, r14				# 14590
	lw		r41, 2(r57)				# 14590
	faddmul	r9, r13, r41, r9				# 14503
.b49960:
	lw		r13, 0(r62)				# 20192
	fmul	r13, r13, r29				# 20186
	fneg	r39, r13				# 20177
	lw		r13, 1(r62)				# 20234
	fmul	r13, r13, r26				# 20228
	fneg	r41, r13				# 20219
	lw		r13, 2(r62)				# 20276
	fmul	r13, r13, r23				# 20270
	fneg	r48, r13				# 20261
	sw		r9, 0(r28)				# 20304
	cmpi	r19, 0
	beq		.b49964				# 20324
.b49965:
	lw		r26, 2(r62)				# 20379
	lw		r57, 9(r7)				# 6179
	lw		r23, 1(r57)				# 20379
	lw		r7, 1(r62)				# 20404
	lw		r13, 2(r57)				# 20404
	fmul	r13, r7, r13				# 20379
	faddmul	r13, r26, r23, r13				# 20372
	fhalf	r13, r13				# 20366
	fsub	r13, r39, r13				# 20353
	sw		r13, 1(r28)				# 20353
	lw		r26, 2(r62)				# 20458
	lw		r7, 0(r57)				# 20458
	lw		r23, 0(r62)				# 20483
	lw		r13, 2(r57)				# 20483
	fmul	r13, r23, r13				# 20458
	faddmul	r13, r26, r7, r13				# 20451
	fhalf	r13, r13				# 20445
	fsub	r13, r41, r13				# 20432
	sw		r13, 2(r28)				# 20353
	lw		r26, 1(r62)				# 20537
	lw		r13, 0(r57)				# 20537
	lw		r41, 0(r62)				# 20562
	lw		r7, 1(r57)				# 20562
	fmul	r7, r41, r7				# 20537
	faddmul	r13, r26, r13, r7				# 20530
	fhalf	r13, r13				# 20524
	fsub	r13, r48, r13				# 20511
	sw		r13, 3(r28)				# 20511
	fcmp	r9, r54
	beq		.b49966				# 3128
.b49968:
	fdiv	r9, r10, r9				# 20696
	sw		r9, 4(r28)				# 20696
.b49966:
	swx		r28, r61, r25				# 21165
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49904				# 20796
	b		.b49902
.b49964:
	sw		r39, 1(r28)				# 20601
	sw		r41, 2(r28)				# 20601
	sw		r48, 3(r28)				# 20643
	fcmp	r9, r54
	beq		.b49966				# 3128
	b		.b49968
.b49961:
	b		.b49960				# 14482
.b49955:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	sw		r54, 0(r9)				# 19730
	sw		r54, 1(r9)				# 19730
	sw		r54, 2(r9)				# 19730
	sw		r54, 3(r9)				# 19730
	lw		r57, 0(r62)				# 19764
	lw		r41, 4(r7)				# 3734
	lw		r13, 0(r41)				# 19764
	lw		r7, 1(r62)				# 19790
	lw		r28, 1(r41)				# 19790
	fmul	r28, r7, r28				# 19764
	faddmul	r7, r57, r13, r28				# 19764
	lw		r28, 2(r62)				# 19816
	lw		r13, 2(r41)				# 19816
	faddmul	r13, r28, r13, r7				# 19752
	fcmp	r13, r54
	ble		.b49958				# 3158
.b49959:
	addis	r28, r0, 49024				# 19882
	fdiv	r28, r28, r13				# 19869
	sw		r28, 0(r9)				# 19869
	lw		r28, 0(r41)				# 19916
	fdiv	r28, r28, r13				# 19910
	fneg	r28, r28				# 19897
	sw		r28, 1(r9)				# 19869
	lw		r28, 1(r41)				# 19958
	fdiv	r28, r28, r13				# 19952
	fneg	r28, r28				# 19939
	sw		r28, 2(r9)				# 19869
	lw		r28, 2(r41)				# 20000
	fdiv	r28, r28, r13				# 19994
	fneg	r28, r28				# 19981
	sw		r28, 3(r9)				# 19981
.b49957:
	swx		r9, r61, r25				# 21074
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49904				# 20796
	b		.b49902
.b49958:
	sw		r54, 0(r9)				# 20032
	b		.b49957				# 20032
.b49907:
	mv		r13, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b49911:
	swx		r54, r9, r13				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b49911				# 19127
.b49909:
	lw		r9, 0(r62)				# 19153
	fcmp	r9, r54
	beq		.b49914				# 3128
.b49915:
	lw		r28, 6(r7)				# 3372
	lw		r9, 0(r62)				# 19253
	fcmp	r54, r9
	ble		.b49917				# 3188
.b49918:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49920				# 765
.b49921:
	cmpi	r9, 0
	beq		.b49922				# 775
.b49923:
	lw		r28, 4(r7)				# 3734
	lw		r28, 0(r28)				# 19222
	fneg	r28, r28				# 3025
.b49924:
	sw		r28, 0(r13)				# 19209
	lw		r9, 0(r62)				# 19302
	fdiv	r9, r10, r9				# 19289
	sw		r9, 1(r13)				# 19289
	lw		r9, 1(r62)				# 19327
	fcmp	r9, r54
	beq		.b49928				# 3128
.b49929:
	lw		r28, 6(r7)				# 3372
	lw		r9, 1(r62)				# 19426
	fcmp	r54, r9
	ble		.b49931				# 3188
.b49932:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49934				# 765
.b49935:
	cmpi	r9, 0
	beq		.b49936				# 775
.b49937:
	lw		r28, 4(r7)				# 3920
	lw		r28, 1(r28)				# 19395
	fneg	r28, r28				# 3025
.b49938:
	sw		r28, 2(r13)				# 19382
	lw		r9, 1(r62)				# 19475
	fdiv	r9, r10, r9				# 19462
	sw		r9, 3(r13)				# 19462
	lw		r9, 2(r62)				# 19500
	fcmp	r9, r54
	beq		.b49942				# 3128
.b49943:
	lw		r28, 6(r7)				# 3372
	lw		r9, 2(r62)				# 19599
	fcmp	r54, r9
	ble		.b49945				# 3188
.b49946:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49948				# 765
.b49949:
	cmpi	r9, 0
	beq		.b49950				# 775
.b49951:
	lw		r28, 4(r7)				# 4105
	lw		r28, 2(r28)				# 19568
	fneg	r28, r28				# 3025
.b49952:
	sw		r28, 4(r13)				# 19555
	lw		r9, 2(r62)				# 19648
	fdiv	r9, r10, r9				# 19635
	sw		r9, 5(r13)				# 19635
.b49941:
	swx		r13, r61, r25				# 20985
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49904				# 20796
	b		.b49902
.b49950:
	lw		r28, 4(r7)				# 4105
	lw		r28, 2(r28)				# 19568
	b		.b49952				# 918
.b49948:
	lw		r28, 4(r7)				# 4105
	lw		r28, 2(r28)				# 19568
	cmpi	r9, 0
	beq		.b49953				# 905
.b49954:
	b		.b49952				# 918
.b49953:
	fneg	r28, r28				# 3025
	b		.b49952				# 3025
.b49945:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49948				# 765
	b		.b49949
.b49942:
	sw		r54, 5(r13)				# 19525
	b		.b49941				# 19525
.b49936:
	lw		r28, 4(r7)				# 3920
	lw		r28, 1(r28)				# 19395
	b		.b49938				# 918
.b49934:
	lw		r28, 4(r7)				# 3920
	lw		r28, 1(r28)				# 19395
	cmpi	r9, 0
	beq		.b49939				# 905
.b49940:
	b		.b49938				# 918
.b49939:
	fneg	r28, r28				# 3025
	b		.b49938				# 3025
.b49931:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49934				# 765
	b		.b49935
.b49928:
	sw		r54, 3(r13)				# 19352
	lw		r9, 2(r62)				# 19500
	fcmp	r9, r54
	beq		.b49942				# 3128
	b		.b49943
.b49922:
	lw		r28, 4(r7)				# 3734
	lw		r28, 0(r28)				# 19222
	b		.b49924				# 918
.b49920:
	lw		r28, 4(r7)				# 3734
	lw		r28, 0(r28)				# 19222
	cmpi	r9, 0
	beq		.b49925				# 905
.b49926:
	b		.b49924				# 918
.b49925:
	fneg	r28, r28				# 3025
	b		.b49924				# 3025
.b49917:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49920				# 765
	b		.b49921
.b49914:
	sw		r54, 1(r13)				# 19179
	lw		r9, 1(r62)				# 19327
	fcmp	r9, r54
	beq		.b49928				# 3128
	b		.b49929
.b49900:
	swx		r62, r9, r25				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r61
	ble		.b49900				# 44623
	b		.b49898
.b49833:
	lwx		r19, r51, r28				# 20821
	lw		r61, 1(r19)				# 2994
	cmpi	r61, 1
	beq		.b49836				# 20947
.b49837:
	cmpi	r61, 2
	beq		.b49884				# 21033
.b49885:
	mv		r62, r4
	addi	r4, r4, 5				# 20110
	sw		r54, 0(r62)				# 20110
	sw		r54, 1(r62)				# 20110
	sw		r54, 2(r62)				# 20110
	sw		r54, 3(r62)				# 20110
	sw		r54, 4(r62)				# 20110
	lw		r46, 0(r15)				# 20142
	lw		r12, 1(r15)				# 20142
	lw		r53, 2(r15)				# 20142
	fmul	r29, r46, r46				# 14374
	lw		r25, 4(r19)				# 3734
	lw		r17, 0(r25)				# 14374
	fmul	r61, r12, r12				# 14400
	lw		r39, 1(r25)				# 14400
	fmul	r61, r61, r39				# 14374
	faddmul	r29, r29, r17, r61				# 14374
	fmul	r61, r53, r53				# 14426
	lw		r14, 2(r25)				# 14426
	faddmul	r61, r61, r14, r29				# 14354
	lw		r29, 3(r19)				# 3553
	cmpi	r29, 0
	beq		.b49890				# 14456
.b49891:
	fmul	r50, r12, r53				# 14522
	lw		r33, 9(r19)				# 5989
	lw		r25, 0(r33)				# 14522
	faddmul	r61, r50, r25, r61				# 14503
	fmul	r25, r53, r46				# 14556
	lw		r50, 1(r33)				# 14556
	faddmul	r61, r25, r50, r61				# 14503
	fmul	r46, r46, r12				# 14590
	lw		r25, 2(r33)				# 14590
	faddmul	r61, r46, r25, r61				# 14503
.b49889:
	lw		r25, 0(r15)				# 20192
	fmul	r25, r25, r17				# 20186
	fneg	r50, r25				# 20177
	lw		r25, 1(r15)				# 20234
	fmul	r25, r25, r39				# 20228
	fneg	r39, r25				# 20219
	lw		r25, 2(r15)				# 20276
	fmul	r25, r25, r14				# 20270
	fneg	r14, r25				# 20261
	sw		r61, 0(r62)				# 20304
	cmpi	r29, 0
	beq		.b49893				# 20324
.b49894:
	lw		r17, 2(r15)				# 20379
	lw		r19, 9(r19)				# 6179
	lw		r29, 1(r19)				# 20379
	lw		r46, 1(r15)				# 20404
	lw		r25, 2(r19)				# 20404
	fmul	r25, r46, r25				# 20379
	faddmul	r25, r17, r29, r25				# 20372
	fhalf	r25, r25				# 20366
	fsub	r25, r50, r25				# 20353
	sw		r25, 1(r62)				# 20353
	lw		r46, 2(r15)				# 20458
	lw		r29, 0(r19)				# 20458
	lw		r17, 0(r15)				# 20483
	lw		r25, 2(r19)				# 20483
	fmul	r25, r17, r25				# 20458
	faddmul	r25, r46, r29, r25				# 20451
	fhalf	r25, r25				# 20445
	fsub	r25, r39, r25				# 20432
	sw		r25, 2(r62)				# 20353
	lw		r25, 1(r15)				# 20537
	lw		r39, 0(r19)				# 20537
	lw		r46, 0(r15)				# 20562
	lw		r19, 1(r19)				# 20562
	fmul	r46, r46, r19				# 20537
	faddmul	r25, r25, r39, r46				# 20530
	fhalf	r25, r25				# 20524
	fsub	r25, r14, r25				# 20511
	sw		r25, 3(r62)				# 20511
	fcmp	r61, r54
	beq		.b49895				# 3128
.b49897:
	fdiv	r61, r10, r61				# 20696
	sw		r61, 4(r62)				# 20696
.b49895:
	swx		r62, r28, r9				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49833				# 20796
	b		.b49831
.b49893:
	sw		r50, 1(r62)				# 20601
	sw		r39, 2(r62)				# 20601
	sw		r14, 3(r62)				# 20643
	fcmp	r61, r54
	beq		.b49895				# 3128
	b		.b49897
.b49890:
	b		.b49889				# 14482
.b49884:
	mv		r61, r4
	addi	r4, r4, 4				# 19730
	sw		r54, 0(r61)				# 19730
	sw		r54, 1(r61)				# 19730
	sw		r54, 2(r61)				# 19730
	sw		r54, 3(r61)				# 19730
	lw		r39, 0(r15)				# 19764
	lw		r25, 4(r19)				# 3734
	lw		r19, 0(r25)				# 19764
	lw		r62, 1(r15)				# 19790
	lw		r46, 1(r25)				# 19790
	fmul	r62, r62, r46				# 19764
	faddmul	r62, r39, r19, r62				# 19764
	lw		r39, 2(r15)				# 19816
	lw		r46, 2(r25)				# 19816
	faddmul	r46, r39, r46, r62				# 19752
	fcmp	r46, r54
	ble		.b49887				# 3158
.b49888:
	addis	r62, r0, 49024				# 19882
	fdiv	r62, r62, r46				# 19869
	sw		r62, 0(r61)				# 19869
	lw		r62, 0(r25)				# 19916
	fdiv	r62, r62, r46				# 19910
	fneg	r62, r62				# 19897
	sw		r62, 1(r61)				# 19869
	lw		r62, 1(r25)				# 19958
	fdiv	r62, r62, r46				# 19952
	fneg	r62, r62				# 19939
	sw		r62, 2(r61)				# 19869
	lw		r62, 2(r25)				# 20000
	fdiv	r62, r62, r46				# 19994
	fneg	r62, r62				# 19981
	sw		r62, 3(r61)				# 19981
.b49886:
	swx		r61, r28, r9				# 21074
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49833				# 20796
	b		.b49831
.b49887:
	sw		r54, 0(r61)				# 20032
	b		.b49886				# 20032
.b49836:
	mv		r25, r4
	addi	r4, r4, 6				# 19127
	addi	r61, r0, 0				# 19127
.b49840:
	swx		r54, r61, r25				# 19127
	addi	r61, r61, 1				# 19127
	cmpi	r61, 5
	ble		.b49840				# 19127
.b49838:
	lw		r61, 0(r15)				# 19153
	fcmp	r61, r54
	beq		.b49843				# 3128
.b49844:
	lw		r62, 6(r19)				# 3372
	lw		r61, 0(r15)				# 19253
	fcmp	r54, r61
	ble		.b49846				# 3188
.b49847:
	addi	r61, r0, 1				# 3188
	cmpi	r62, 0
	beq		.b49849				# 765
.b49850:
	cmpi	r61, 0
	beq		.b49851				# 775
.b49852:
	lw		r62, 4(r19)				# 3734
	lw		r62, 0(r62)				# 19222
	fneg	r62, r62				# 3025
.b49853:
	sw		r62, 0(r25)				# 19209
	lw		r61, 0(r15)				# 19302
	fdiv	r61, r10, r61				# 19289
	sw		r61, 1(r25)				# 19289
	lw		r61, 1(r15)				# 19327
	fcmp	r61, r54
	beq		.b49857				# 3128
.b49858:
	lw		r62, 6(r19)				# 3372
	lw		r61, 1(r15)				# 19426
	fcmp	r54, r61
	ble		.b49860				# 3188
.b49861:
	addi	r61, r0, 1				# 3188
	cmpi	r62, 0
	beq		.b49863				# 765
.b49864:
	cmpi	r61, 0
	beq		.b49865				# 775
.b49866:
	lw		r62, 4(r19)				# 3920
	lw		r62, 1(r62)				# 19395
	fneg	r62, r62				# 3025
.b49867:
	sw		r62, 2(r25)				# 19382
	lw		r61, 1(r15)				# 19475
	fdiv	r61, r10, r61				# 19462
	sw		r61, 3(r25)				# 19462
	lw		r61, 2(r15)				# 19500
	fcmp	r61, r54
	beq		.b49871				# 3128
.b49872:
	lw		r61, 6(r19)				# 3372
	lw		r62, 2(r15)				# 19599
	fcmp	r54, r62
	ble		.b49874				# 3188
.b49875:
	addi	r62, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b49877				# 765
.b49878:
	cmpi	r62, 0
	beq		.b49879				# 775
.b49880:
	lw		r61, 4(r19)				# 4105
	lw		r61, 2(r61)				# 19568
	fneg	r61, r61				# 3025
.b49881:
	sw		r61, 4(r25)				# 19555
	lw		r61, 2(r15)				# 19648
	fdiv	r61, r10, r61				# 19635
	sw		r61, 5(r25)				# 19635
.b49870:
	swx		r25, r28, r9				# 20985
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49833				# 20796
	b		.b49831
.b49879:
	lw		r61, 4(r19)				# 4105
	lw		r61, 2(r61)				# 19568
	b		.b49881				# 918
.b49877:
	lw		r61, 4(r19)				# 4105
	lw		r61, 2(r61)				# 19568
	cmpi	r62, 0
	beq		.b49882				# 905
.b49883:
	b		.b49881				# 918
.b49882:
	fneg	r61, r61				# 3025
	b		.b49881				# 3025
.b49874:
	addi	r62, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b49877				# 765
	b		.b49878
.b49871:
	sw		r54, 5(r25)				# 19525
	b		.b49870				# 19525
.b49865:
	lw		r62, 4(r19)				# 3920
	lw		r62, 1(r62)				# 19395
	b		.b49867				# 918
.b49863:
	lw		r62, 4(r19)				# 3920
	lw		r62, 1(r62)				# 19395
	cmpi	r61, 0
	beq		.b49868				# 905
.b49869:
	b		.b49867				# 918
.b49868:
	fneg	r62, r62				# 3025
	b		.b49867				# 3025
.b49860:
	addi	r61, r0, 0				# 3188
	cmpi	r62, 0
	beq		.b49863				# 765
	b		.b49864
.b49857:
	sw		r54, 3(r25)				# 19352
	lw		r61, 2(r15)				# 19500
	fcmp	r61, r54
	beq		.b49871				# 3128
	b		.b49872
.b49851:
	lw		r62, 4(r19)				# 3734
	lw		r62, 0(r62)				# 19222
	b		.b49853				# 918
.b49849:
	lw		r62, 4(r19)				# 3734
	lw		r62, 0(r62)				# 19222
	cmpi	r61, 0
	beq		.b49854				# 905
.b49855:
	b		.b49853				# 918
.b49854:
	fneg	r62, r62				# 3025
	b		.b49853				# 3025
.b49846:
	addi	r61, r0, 0				# 3188
	cmpi	r62, 0
	beq		.b49849				# 765
	b		.b49850
.b49843:
	sw		r54, 1(r25)				# 19179
	lw		r61, 1(r15)				# 19327
	fcmp	r61, r54
	beq		.b49857				# 3128
	b		.b49858
.b49829:
	swx		r15, r61, r9				# 44623
	addi	r61, r61, 1				# 44623
	cmp		r61, r28
	ble		.b49829				# 44623
	b		.b49827
.b49762:
	lwx		r50, r51, r61				# 20821
	lw		r9, 1(r50)				# 2994
	cmpi	r9, 1
	beq		.b49765				# 20947
.b49766:
	cmpi	r9, 2
	beq		.b49813				# 21033
.b49814:
	mv		r9, r4
	addi	r4, r4, 5				# 20110
	sw		r54, 0(r9)				# 20110
	sw		r54, 1(r9)				# 20110
	sw		r54, 2(r9)				# 20110
	sw		r54, 3(r9)				# 20110
	sw		r54, 4(r9)				# 20110
	lw		r12, 0(r15)				# 20142
	lw		r33, 1(r15)				# 20142
	lw		r62, 2(r15)				# 20142
	fmul	r19, r12, r12				# 14374
	lw		r23, 4(r50)				# 3734
	lw		r42, 0(r23)				# 14374
	fmul	r28, r33, r33				# 14400
	lw		r14, 1(r23)				# 14400
	fmul	r28, r28, r14				# 14374
	faddmul	r28, r19, r42, r28				# 14374
	fmul	r19, r62, r62				# 14426
	lw		r29, 2(r23)				# 14426
	faddmul	r28, r19, r29, r28				# 14354
	lw		r19, 3(r50)				# 3553
	cmpi	r19, 0
	beq		.b49819				# 14456
.b49820:
	fmul	r17, r33, r62				# 14522
	lw		r23, 9(r50)				# 5989
	lw		r53, 0(r23)				# 14522
	faddmul	r17, r17, r53, r28				# 14503
	fmul	r62, r62, r12				# 14556
	lw		r28, 1(r23)				# 14556
	faddmul	r28, r62, r28, r17				# 14503
	fmul	r62, r12, r33				# 14590
	lw		r23, 2(r23)				# 14590
	faddmul	r28, r62, r23, r28				# 14503
.b49818:
	lw		r62, 0(r15)				# 20192
	fmul	r62, r62, r42				# 20186
	fneg	r12, r62				# 20177
	lw		r62, 1(r15)				# 20234
	fmul	r62, r62, r14				# 20228
	fneg	r53, r62				# 20219
	lw		r62, 2(r15)				# 20276
	fmul	r62, r62, r29				# 20270
	fneg	r29, r62				# 20261
	sw		r28, 0(r9)				# 20304
	cmpi	r19, 0
	beq		.b49822				# 20324
.b49823:
	lw		r62, 2(r15)				# 20379
	lw		r19, 9(r50)				# 6179
	lw		r14, 1(r19)				# 20379
	lw		r23, 1(r15)				# 20404
	lw		r17, 2(r19)				# 20404
	fmul	r23, r23, r17				# 20379
	faddmul	r62, r62, r14, r23				# 20372
	fhalf	r62, r62				# 20366
	fsub	r62, r12, r62				# 20353
	sw		r62, 1(r9)				# 20353
	lw		r17, 2(r15)				# 20458
	lw		r14, 0(r19)				# 20458
	lw		r62, 0(r15)				# 20483
	lw		r23, 2(r19)				# 20483
	fmul	r62, r62, r23				# 20458
	faddmul	r62, r17, r14, r62				# 20451
	fhalf	r62, r62				# 20445
	fsub	r62, r53, r62				# 20432
	sw		r62, 2(r9)				# 20353
	lw		r17, 1(r15)				# 20537
	lw		r23, 0(r19)				# 20537
	lw		r14, 0(r15)				# 20562
	lw		r62, 1(r19)				# 20562
	fmul	r62, r14, r62				# 20537
	faddmul	r62, r17, r23, r62				# 20530
	fhalf	r62, r62				# 20524
	fsub	r62, r29, r62				# 20511
	sw		r62, 3(r9)				# 20511
	fcmp	r28, r54
	beq		.b49824				# 3128
.b49826:
	fdiv	r28, r10, r28				# 20696
	sw		r28, 4(r9)				# 20696
.b49824:
	swx		r9, r61, r25				# 21165
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49762				# 20796
	b		.b49760
.b49822:
	sw		r12, 1(r9)				# 20601
	sw		r53, 2(r9)				# 20601
	sw		r29, 3(r9)				# 20643
	fcmp	r28, r54
	beq		.b49824				# 3128
	b		.b49826
.b49819:
	b		.b49818				# 14482
.b49813:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	sw		r54, 0(r9)				# 19730
	sw		r54, 1(r9)				# 19730
	sw		r54, 2(r9)				# 19730
	sw		r54, 3(r9)				# 19730
	lw		r28, 0(r15)				# 19764
	lw		r62, 4(r50)				# 3734
	lw		r29, 0(r62)				# 19764
	lw		r23, 1(r15)				# 19790
	lw		r19, 1(r62)				# 19790
	fmul	r23, r23, r19				# 19764
	faddmul	r23, r28, r29, r23				# 19764
	lw		r19, 2(r15)				# 19816
	lw		r28, 2(r62)				# 19816
	faddmul	r23, r19, r28, r23				# 19752
	fcmp	r23, r54
	ble		.b49816				# 3158
.b49817:
	addis	r28, r0, 49024				# 19882
	fdiv	r28, r28, r23				# 19869
	sw		r28, 0(r9)				# 19869
	lw		r28, 0(r62)				# 19916
	fdiv	r28, r28, r23				# 19910
	fneg	r28, r28				# 19897
	sw		r28, 1(r9)				# 19869
	lw		r28, 1(r62)				# 19958
	fdiv	r28, r28, r23				# 19952
	fneg	r28, r28				# 19939
	sw		r28, 2(r9)				# 19869
	lw		r28, 2(r62)				# 20000
	fdiv	r28, r28, r23				# 19994
	fneg	r28, r28				# 19981
	sw		r28, 3(r9)				# 19981
.b49815:
	swx		r9, r61, r25				# 21074
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49762				# 20796
	b		.b49760
.b49816:
	sw		r54, 0(r9)				# 20032
	b		.b49815				# 20032
.b49765:
	mv		r62, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b49769:
	swx		r54, r9, r62				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b49769				# 19127
.b49767:
	lw		r9, 0(r15)				# 19153
	fcmp	r9, r54
	beq		.b49772				# 3128
.b49773:
	lw		r9, 6(r50)				# 3372
	lw		r28, 0(r15)				# 19253
	fcmp	r54, r28
	ble		.b49775				# 3188
.b49776:
	addi	r28, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b49778				# 765
.b49779:
	cmpi	r28, 0
	beq		.b49780				# 775
.b49781:
	lw		r9, 4(r50)				# 3734
	lw		r9, 0(r9)				# 19222
	fneg	r9, r9				# 3025
.b49782:
	sw		r9, 0(r62)				# 19209
	lw		r9, 0(r15)				# 19302
	fdiv	r9, r10, r9				# 19289
	sw		r9, 1(r62)				# 19289
	lw		r9, 1(r15)				# 19327
	fcmp	r9, r54
	beq		.b49786				# 3128
.b49787:
	lw		r23, 6(r50)				# 3372
	lw		r9, 1(r15)				# 19426
	fcmp	r54, r9
	ble		.b49789				# 3188
.b49790:
	addi	r28, r0, 1				# 3188
	cmpi	r23, 0
	beq		.b49792				# 765
.b49793:
	cmpi	r28, 0
	beq		.b49794				# 775
.b49795:
	lw		r9, 4(r50)				# 3920
	lw		r9, 1(r9)				# 19395
	fneg	r9, r9				# 3025
.b49796:
	sw		r9, 2(r62)				# 19382
	lw		r9, 1(r15)				# 19475
	fdiv	r9, r10, r9				# 19462
	sw		r9, 3(r62)				# 19462
	lw		r9, 2(r15)				# 19500
	fcmp	r9, r54
	beq		.b49800				# 3128
.b49801:
	lw		r28, 6(r50)				# 3372
	lw		r9, 2(r15)				# 19599
	fcmp	r54, r9
	ble		.b49803				# 3188
.b49804:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49806				# 765
.b49807:
	cmpi	r9, 0
	beq		.b49808				# 775
.b49809:
	lw		r28, 4(r50)				# 4105
	lw		r28, 2(r28)				# 19568
	fneg	r28, r28				# 3025
.b49810:
	sw		r28, 4(r62)				# 19555
	lw		r9, 2(r15)				# 19648
	fdiv	r9, r10, r9				# 19635
	sw		r9, 5(r62)				# 19635
.b49799:
	swx		r62, r61, r25				# 20985
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b49762				# 20796
	b		.b49760
.b49808:
	lw		r28, 4(r50)				# 4105
	lw		r28, 2(r28)				# 19568
	b		.b49810				# 918
.b49806:
	lw		r28, 4(r50)				# 4105
	lw		r28, 2(r28)				# 19568
	cmpi	r9, 0
	beq		.b49811				# 905
.b49812:
	b		.b49810				# 918
.b49811:
	fneg	r28, r28				# 3025
	b		.b49810				# 3025
.b49803:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49806				# 765
	b		.b49807
.b49800:
	sw		r54, 5(r62)				# 19525
	b		.b49799				# 19525
.b49794:
	lw		r9, 4(r50)				# 3920
	lw		r9, 1(r9)				# 19395
	b		.b49796				# 918
.b49792:
	lw		r9, 4(r50)				# 3920
	lw		r9, 1(r9)				# 19395
	cmpi	r28, 0
	beq		.b49797				# 905
.b49798:
	b		.b49796				# 918
.b49797:
	fneg	r9, r9				# 3025
	b		.b49796				# 3025
.b49789:
	addi	r28, r0, 0				# 3188
	cmpi	r23, 0
	beq		.b49792				# 765
	b		.b49793
.b49786:
	sw		r54, 3(r62)				# 19352
	lw		r9, 2(r15)				# 19500
	fcmp	r9, r54
	beq		.b49800				# 3128
	b		.b49801
.b49780:
	lw		r9, 4(r50)				# 3734
	lw		r9, 0(r9)				# 19222
	b		.b49782				# 918
.b49778:
	lw		r9, 4(r50)				# 3734
	lw		r9, 0(r9)				# 19222
	cmpi	r28, 0
	beq		.b49783				# 905
.b49784:
	b		.b49782				# 918
.b49783:
	fneg	r9, r9				# 3025
	b		.b49782				# 3025
.b49775:
	addi	r28, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b49778				# 765
	b		.b49779
.b49772:
	sw		r54, 1(r62)				# 19179
	lw		r9, 1(r15)				# 19327
	fcmp	r9, r54
	beq		.b49786				# 3128
	b		.b49787
.b49758:
	swx		r15, r9, r25				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r61
	ble		.b49758				# 44623
	b		.b49756
.b49682:
	lli		r9, objects.2536				# 20821
	lwx		r41, r9, r28				# 20821
	lw		r9, 1(r41)				# 2994
	cmpi	r9, 1
	beq		.b49685				# 20947
.b49686:
	cmpi	r9, 2
	beq		.b49733				# 21033
.b49734:
	mv		r61, r4
	addi	r4, r4, 5				# 20110
	addi	r15, r0, 0				# 20110
	sw		r15, 0(r61)				# 20110
	sw		r15, 1(r61)				# 20110
	sw		r15, 2(r61)				# 20110
	sw		r15, 3(r61)				# 20110
	sw		r15, 4(r61)				# 20110
	fmul	r10, r23, r23				# 14374
	lw		r9, 4(r41)				# 3734
	lw		r54, 0(r9)				# 14374
	fmul	r62, r46, r46				# 14400
	lw		r30, 1(r9)				# 14400
	fmul	r62, r62, r30				# 14374
	faddmul	r51, r10, r54, r62				# 14374
	fmul	r62, r7, r7				# 14426
	lw		r10, 2(r9)				# 14426
	faddmul	r9, r62, r10, r51				# 14354
	lw		r51, 3(r41)				# 3553
	cmpi	r51, 0
	beq		.b49739				# 14456
.b49740:
	fmul	r25, r46, r7				# 14522
	lw		r62, 9(r41)				# 5989
	lw		r57, 0(r62)				# 14522
	faddmul	r9, r25, r57, r9				# 14503
	fmul	r57, r7, r23				# 14556
	lw		r25, 1(r62)				# 14556
	faddmul	r9, r57, r25, r9				# 14503
	fmul	r25, r23, r46				# 14590
	lw		r62, 2(r62)				# 14590
	faddmul	r9, r25, r62, r9				# 14503
.b49738:
	fmul	r62, r23, r54				# 20186
	fneg	r25, r62				# 20177
	fmul	r62, r46, r30				# 20228
	fneg	r54, r62				# 20219
	fmul	r62, r7, r10				# 20270
	fneg	r10, r62				# 20261
	sw		r9, 0(r61)				# 20304
	cmpi	r51, 0
	beq		.b49742				# 20324
.b49743:
	lw		r30, 9(r41)				# 6179
	lw		r51, 1(r30)				# 20379
	lw		r62, 2(r30)				# 20404
	fmul	r62, r46, r62				# 20379
	faddmul	r62, r7, r51, r62				# 20372
	fhalf	r62, r62				# 20366
	fsub	r62, r25, r62				# 20353
	sw		r62, 1(r61)				# 20353
	lw		r51, 0(r30)				# 20458
	lw		r62, 2(r30)				# 20483
	fmul	r62, r23, r62				# 20458
	faddmul	r62, r7, r51, r62				# 20451
	fhalf	r62, r62				# 20445
	fsub	r62, r54, r62				# 20432
	sw		r62, 2(r61)				# 20353
	lw		r51, 0(r30)				# 20537
	lw		r62, 1(r30)				# 20562
	fmul	r62, r23, r62				# 20537
	faddmul	r62, r46, r51, r62				# 20530
	fhalf	r62, r62				# 20524
	fsub	r62, r10, r62				# 20511
	sw		r62, 3(r61)				# 20511
	fcmp	r9, r15
	beq		.b49744				# 3128
.b49746:
	addis	r62, r0, 16256				# 20709
	fdiv	r9, r62, r9				# 20696
	sw		r9, 4(r61)				# 20696
.b49744:
	lli		r9, consts.2632				# 21165
	swx		r61, r28, r9				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49682				# 20796
	b		.b49680
.b49742:
	sw		r25, 1(r61)				# 20601
	sw		r54, 2(r61)				# 20601
	sw		r10, 3(r61)				# 20643
	fcmp	r9, r15
	beq		.b49744				# 3128
	b		.b49746
.b49739:
	b		.b49738				# 14482
.b49733:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	addi	r15, r0, 0				# 19730
	sw		r15, 0(r9)				# 19730
	sw		r15, 1(r9)				# 19730
	sw		r15, 2(r9)				# 19730
	sw		r15, 3(r9)				# 19730
	lw		r10, 4(r41)				# 3734
	lw		r61, 0(r10)				# 19764
	lw		r62, 1(r10)				# 19790
	fmul	r62, r46, r62				# 19764
	faddmul	r61, r23, r61, r62				# 19764
	lw		r62, 2(r10)				# 19816
	faddmul	r62, r7, r62, r61				# 19752
	fcmp	r62, r15
	ble		.b49736				# 3158
.b49737:
	addis	r61, r0, 49024				# 19882
	fdiv	r61, r61, r62				# 19869
	sw		r61, 0(r9)				# 19869
	lw		r61, 0(r10)				# 19916
	fdiv	r61, r61, r62				# 19910
	fneg	r61, r61				# 19897
	sw		r61, 1(r9)				# 19869
	lw		r61, 1(r10)				# 19958
	fdiv	r61, r61, r62				# 19952
	fneg	r61, r61				# 19939
	sw		r61, 2(r9)				# 19869
	lw		r61, 2(r10)				# 20000
	fdiv	r61, r61, r62				# 19994
	fneg	r61, r61				# 19981
	sw		r61, 3(r9)				# 19981
.b49735:
	lli		r61, consts.2632				# 21074
	swx		r9, r28, r61				# 21074
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49682				# 20796
	b		.b49680
.b49736:
	sw		r15, 0(r9)				# 20032
	b		.b49735				# 20032
.b49685:
	mv		r62, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b49689:
	addi	r61, r0, 0				# 19127
	swx		r61, r9, r62				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b49689				# 19127
.b49687:
	addi	r15, r0, 0				# 19150
	fcmp	r23, r15
	beq		.b49692				# 3128
.b49693:
	lw		r9, 6(r41)				# 3372
	fcmp	r15, r23
	ble		.b49695				# 3188
.b49696:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b49698				# 765
.b49699:
	cmpi	r61, 0
	beq		.b49700				# 775
.b49701:
	lw		r9, 4(r41)				# 3734
	lw		r9, 0(r9)				# 19222
	fneg	r9, r9				# 3025
.b49702:
	sw		r9, 0(r62)				# 19209
	addis	r9, r0, 16256				# 19302
	fdiv	r9, r9, r23				# 19289
	sw		r9, 1(r62)				# 19289
	fcmp	r46, r15
	beq		.b49706				# 3128
.b49707:
	lw		r61, 6(r41)				# 3372
	fcmp	r15, r46
	ble		.b49709				# 3188
.b49710:
	addi	r9, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b49712				# 765
.b49713:
	cmpi	r9, 0
	beq		.b49714				# 775
.b49715:
	lw		r61, 4(r41)				# 3920
	lw		r61, 1(r61)				# 19395
	fneg	r61, r61				# 3025
.b49716:
	sw		r61, 2(r62)				# 19382
	addis	r9, r0, 16256				# 19475
	fdiv	r9, r9, r46				# 19462
	sw		r9, 3(r62)				# 19462
	fcmp	r7, r15
	beq		.b49720				# 3128
.b49721:
	lw		r61, 6(r41)				# 3372
	fcmp	r15, r7
	ble		.b49723				# 3188
.b49724:
	addi	r9, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b49726				# 765
.b49727:
	cmpi	r9, 0
	beq		.b49728				# 775
.b49729:
	lw		r61, 4(r41)				# 4105
	lw		r61, 2(r61)				# 19568
	fneg	r61, r61				# 3025
.b49730:
	sw		r61, 4(r62)				# 19555
	addis	r9, r0, 16256				# 19648
	fdiv	r9, r9, r7				# 19635
	sw		r9, 5(r62)				# 19635
.b49719:
	lli		r9, consts.2632				# 20985
	swx		r62, r28, r9				# 20985
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49682				# 20796
	b		.b49680
.b49728:
	lw		r61, 4(r41)				# 4105
	lw		r61, 2(r61)				# 19568
	b		.b49730				# 918
.b49726:
	lw		r61, 4(r41)				# 4105
	lw		r61, 2(r61)				# 19568
	cmpi	r9, 0
	beq		.b49731				# 905
.b49732:
	b		.b49730				# 918
.b49731:
	fneg	r61, r61				# 3025
	b		.b49730				# 3025
.b49723:
	addi	r9, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b49726				# 765
	b		.b49727
.b49720:
	sw		r15, 5(r62)				# 19525
	b		.b49719				# 19525
.b49714:
	lw		r61, 4(r41)				# 3920
	lw		r61, 1(r61)				# 19395
	b		.b49716				# 918
.b49712:
	lw		r61, 4(r41)				# 3920
	lw		r61, 1(r61)				# 19395
	cmpi	r9, 0
	beq		.b49717				# 905
.b49718:
	b		.b49716				# 918
.b49717:
	fneg	r61, r61				# 3025
	b		.b49716				# 3025
.b49709:
	addi	r9, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b49712				# 765
	b		.b49713
.b49706:
	sw		r15, 3(r62)				# 19352
	fcmp	r7, r15
	beq		.b49720				# 3128
	b		.b49721
.b49700:
	lw		r9, 4(r41)				# 3734
	lw		r9, 0(r9)				# 19222
	b		.b49702				# 918
.b49698:
	lw		r9, 4(r41)				# 3734
	lw		r9, 0(r9)				# 19222
	cmpi	r61, 0
	beq		.b49703				# 905
.b49704:
	b		.b49702				# 918
.b49703:
	fneg	r9, r9				# 3025
	b		.b49702				# 3025
.b49695:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b49698				# 765
	b		.b49699
.b49692:
	sw		r15, 1(r62)				# 19179
	fcmp	r46, r15
	beq		.b49706				# 3128
	b		.b49707
.b49615:
	lli		r9, objects.2536				# 20821
	lwx		r7, r9, r15				# 20821
	lw		r30, 1(r57)				# 8141
	lw		r51, 0(r57)				# 8078
	lw		r9, 1(r7)				# 2994
	cmpi	r9, 1
	beq		.b49618				# 20947
.b49619:
	cmpi	r9, 2
	beq		.b49666				# 21033
.b49667:
	mv		r61, r4
	addi	r4, r4, 5				# 20110
	addi	r54, r0, 0				# 20110
	sw		r54, 0(r61)				# 20110
	sw		r54, 1(r61)				# 20110
	sw		r54, 2(r61)				# 20110
	sw		r54, 3(r61)				# 20110
	sw		r54, 4(r61)				# 20110
	lw		r26, 0(r51)				# 20142
	lw		r25, 1(r51)				# 20142
	lw		r37, 2(r51)				# 20142
	fmul	r9, r26, r26				# 14374
	lw		r10, 4(r7)				# 3734
	lw		r19, 0(r10)				# 14374
	fmul	r41, r25, r25				# 14400
	lw		r39, 1(r10)				# 14400
	fmul	r41, r41, r39				# 14374
	faddmul	r9, r9, r19, r41				# 14374
	fmul	r41, r37, r37				# 14426
	lw		r48, 2(r10)				# 14426
	faddmul	r9, r41, r48, r9				# 14354
	lw		r23, 3(r7)				# 3553
	cmpi	r23, 0
	beq		.b49672				# 14456
.b49673:
	fmul	r10, r25, r37				# 14522
	lw		r41, 9(r7)				# 5989
	lw		r46, 0(r41)				# 14522
	faddmul	r46, r10, r46, r9				# 14503
	fmul	r10, r37, r26				# 14556
	lw		r9, 1(r41)				# 14556
	faddmul	r10, r10, r9, r46				# 14503
	fmul	r9, r26, r25				# 14590
	lw		r41, 2(r41)				# 14590
	faddmul	r9, r9, r41, r10				# 14503
.b49671:
	fmul	r10, r26, r19				# 20186
	fneg	r41, r10				# 20177
	fmul	r10, r25, r39				# 20228
	fneg	r26, r10				# 20219
	fmul	r10, r37, r48				# 20270
	fneg	r39, r10				# 20261
	sw		r9, 0(r61)				# 20304
	cmpi	r23, 0
	beq		.b49675				# 20324
.b49676:
	lw		r46, 2(r51)				# 20379
	lw		r37, 9(r7)				# 6179
	lw		r10, 1(r37)				# 20379
	lw		r7, 1(r51)				# 20404
	lw		r25, 2(r37)				# 20404
	fmul	r7, r7, r25				# 20379
	faddmul	r10, r46, r10, r7				# 20372
	fhalf	r10, r10				# 20366
	fsub	r10, r41, r10				# 20353
	sw		r10, 1(r61)				# 20353
	lw		r7, 2(r51)				# 20458
	lw		r41, 0(r37)				# 20458
	lw		r25, 0(r51)				# 20483
	lw		r10, 2(r37)				# 20483
	fmul	r10, r25, r10				# 20458
	faddmul	r10, r7, r41, r10				# 20451
	fhalf	r10, r10				# 20445
	fsub	r10, r26, r10				# 20432
	sw		r10, 2(r61)				# 20353
	lw		r10, 1(r51)				# 20537
	lw		r7, 0(r37)				# 20537
	lw		r25, 0(r51)				# 20562
	lw		r51, 1(r37)				# 20562
	fmul	r51, r25, r51				# 20537
	faddmul	r10, r10, r7, r51				# 20530
	fhalf	r10, r10				# 20524
	fsub	r10, r39, r10				# 20511
	sw		r10, 3(r61)				# 20511
	fcmp	r9, r54
	beq		.b49677				# 3128
.b49679:
	addis	r10, r0, 16256				# 20709
	fdiv	r9, r10, r9				# 20696
	sw		r9, 4(r61)				# 20696
.b49677:
	swx		r61, r15, r30				# 21165
	addi	r15, r15, -1				# 21212
	cmpi	r15, 0
	bge		.b49615				# 20796
	b		.b49613
.b49675:
	sw		r41, 1(r61)				# 20601
	sw		r26, 2(r61)				# 20601
	sw		r39, 3(r61)				# 20643
	fcmp	r9, r54
	beq		.b49677				# 3128
	b		.b49679
.b49672:
	b		.b49671				# 14482
.b49666:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	addi	r25, r0, 0				# 19730
	sw		r25, 0(r9)				# 19730
	sw		r25, 1(r9)				# 19730
	sw		r25, 2(r9)				# 19730
	sw		r25, 3(r9)				# 19730
	lw		r61, 0(r51)				# 19764
	lw		r41, 4(r7)				# 3734
	lw		r10, 0(r41)				# 19764
	lw		r54, 1(r51)				# 19790
	lw		r7, 1(r41)				# 19790
	fmul	r54, r54, r7				# 19764
	faddmul	r10, r61, r10, r54				# 19764
	lw		r61, 2(r51)				# 19816
	lw		r51, 2(r41)				# 19816
	faddmul	r10, r61, r51, r10				# 19752
	fcmp	r10, r25
	ble		.b49669				# 3158
.b49670:
	addis	r61, r0, 49024				# 19882
	fdiv	r61, r61, r10				# 19869
	sw		r61, 0(r9)				# 19869
	lw		r61, 0(r41)				# 19916
	fdiv	r61, r61, r10				# 19910
	fneg	r61, r61				# 19897
	sw		r61, 1(r9)				# 19869
	lw		r61, 1(r41)				# 19958
	fdiv	r61, r61, r10				# 19952
	fneg	r61, r61				# 19939
	sw		r61, 2(r9)				# 19869
	lw		r61, 2(r41)				# 20000
	fdiv	r61, r61, r10				# 19994
	fneg	r61, r61				# 19981
	sw		r61, 3(r9)				# 19981
.b49668:
	swx		r9, r15, r30				# 21074
	addi	r15, r15, -1				# 21212
	cmpi	r15, 0
	bge		.b49615				# 20796
	b		.b49613
.b49669:
	sw		r25, 0(r9)				# 20032
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
	lw		r61, 0(r51)				# 19153
	addi	r25, r0, 0				# 19150
	fcmp	r61, r25
	beq		.b49625				# 3128
.b49626:
	lw		r9, 6(r7)				# 3372
	fcmp	r25, r61
	ble		.b49628				# 3188
.b49629:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b49631				# 765
.b49632:
	cmpi	r61, 0
	beq		.b49633				# 775
.b49634:
	lw		r9, 4(r7)				# 3734
	lw		r9, 0(r9)				# 19222
	fneg	r9, r9				# 3025
.b49635:
	sw		r9, 0(r10)				# 19209
	addis	r61, r0, 16256				# 19302
	lw		r9, 0(r51)				# 19302
	fdiv	r9, r61, r9				# 19289
	sw		r9, 1(r10)				# 19289
	lw		r61, 1(r51)				# 19327
	fcmp	r61, r25
	beq		.b49639				# 3128
.b49640:
	lw		r9, 6(r7)				# 3372
	fcmp	r25, r61
	ble		.b49642				# 3188
.b49643:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b49645				# 765
.b49646:
	cmpi	r61, 0
	beq		.b49647				# 775
.b49648:
	lw		r9, 4(r7)				# 3920
	lw		r9, 1(r9)				# 19395
	fneg	r9, r9				# 3025
.b49649:
	sw		r9, 2(r10)				# 19382
	addis	r9, r0, 16256				# 19475
	lw		r61, 1(r51)				# 19475
	fdiv	r9, r9, r61				# 19462
	sw		r9, 3(r10)				# 19462
	lw		r9, 2(r51)				# 19500
	fcmp	r9, r25
	beq		.b49653				# 3128
.b49654:
	lw		r54, 6(r7)				# 3372
	fcmp	r25, r9
	ble		.b49656				# 3188
.b49657:
	addi	r61, r0, 1				# 3188
	cmpi	r54, 0
	beq		.b49659				# 765
.b49660:
	cmpi	r61, 0
	beq		.b49661				# 775
.b49662:
	lw		r9, 4(r7)				# 4105
	lw		r9, 2(r9)				# 19568
	fneg	r9, r9				# 3025
.b49663:
	sw		r9, 4(r10)				# 19555
	addis	r61, r0, 16256				# 19648
	lw		r9, 2(r51)				# 19648
	fdiv	r9, r61, r9				# 19635
	sw		r9, 5(r10)				# 19635
.b49652:
	swx		r10, r15, r30				# 20985
	addi	r15, r15, -1				# 21212
	cmpi	r15, 0
	bge		.b49615				# 20796
	b		.b49613
.b49661:
	lw		r9, 4(r7)				# 4105
	lw		r9, 2(r9)				# 19568
	b		.b49663				# 918
.b49659:
	lw		r9, 4(r7)				# 4105
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
	cmpi	r54, 0
	beq		.b49659				# 765
	b		.b49660
.b49653:
	sw		r25, 5(r10)				# 19525
	b		.b49652				# 19525
.b49647:
	lw		r9, 4(r7)				# 3920
	lw		r9, 1(r9)				# 19395
	b		.b49649				# 918
.b49645:
	lw		r9, 4(r7)				# 3920
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
	sw		r25, 3(r10)				# 19352
	lw		r9, 2(r51)				# 19500
	fcmp	r9, r25
	beq		.b49653				# 3128
	b		.b49654
.b49633:
	lw		r9, 4(r7)				# 3734
	lw		r9, 0(r9)				# 19222
	b		.b49635				# 918
.b49631:
	lw		r9, 4(r7)				# 3734
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
	sw		r25, 1(r10)				# 19179
	lw		r61, 1(r51)				# 19327
	fcmp	r61, r25
	beq		.b49639				# 3128
	b		.b49640
.b49603:
	addi	r15, r15, -5				# 1017
	b		.b49602				# 1017
.b49600:
	addi	r61, r61, -5				# 1017
	cmpi	r9, 0
	bge		.b49589				# 43977
	b		.b49587
.b49581:
	swx		r10, r9, r61				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r54
	ble		.b49581				# 44623
	b		.b49579
.b49569:
	swx		r9, r61, r28				# 44623
	addi	r61, r61, 1				# 44623
	cmp		r61, r15
	ble		.b49569				# 44623
	b		.b49567
.b49492:
	addi	r9, r0, 0				# 13110
	b		T.loop49548				# 0
.b49544:
	addi	r25, r25, 1				# 12563
	cmpi	r25, 60
	bge		.b49492				# 12512
	b		.b49495
.b49534:
	cmpi	r51, 0
	beq		.b49537				# 12335
.b49538:
	addi	r62, r0, 0				# 12335
.b49536:
	lw		r61, 0(r30)				# 1729
	lw		r28, 1(r30)				# 1743
	fmul	r28, r28, r28				# 1729
	faddmul	r61, r61, r61, r28				# 1729
	lw		r28, 2(r30)				# 1757
	faddmul	r61, r28, r28, r61				# 1723
	fsqrt	r28, r61				# 227
	fcmp	r28, r13
	beq		.b49540				# 3128
.b49541:
	cmpi	r62, 0
	beq		.b49542				# 1810
.b49543:
	addis	r61, r0, 49024				# 1822
	fdiv	r28, r61, r28				# 1822
.b49539:
	lw		r61, 0(r30)				# 1860
	fmul	r61, r61, r28				# 1851
	sw		r61, 0(r30)				# 1851
	lw		r61, 1(r30)				# 1884
	fmul	r61, r61, r28				# 1875
	sw		r61, 1(r30)				# 1851
	lw		r61, 2(r30)				# 1908
	fmul	r61, r61, r28				# 1899
	sw		r61, 2(r30)				# 1899
	cmpi	r57, 0
	beq		.b49544				# 12371
	b		.b49546
.b49542:
	addis	r61, r0, 16256				# 1837
	fdiv	r28, r61, r28				# 1837
	b		.b49539				# 1837
.b49540:
	addis	r28, r0, 16256				# 1801
	b		.b49539				# 1801
.b49537:
	addi	r62, r0, 1				# 12335
	b		.b49536				# 12335
.b49508:
	lw		r61, 0(r30)				# 12053
	fcmp	r61, r13
	beq		.b49511				# 3128
.b49512:
	fcmp	r61, r13
	beq		.b49514				# 3128
.b49515:
	fcmp	r61, r13
	ble		.b49516				# 3158
.b49517:
	addis	r28, r0, 16256				# 856
.b49513:
	fmul	r61, r61, r61				# 12112
	fdiv	r61, r28, r61				# 12112
	sw		r61, 0(r30)				# 12074
	lw		r61, 1(r30)				# 12132
	fcmp	r61, r13
	beq		.b49519				# 3128
.b49520:
	fcmp	r61, r13
	beq		.b49522				# 3128
.b49523:
	fcmp	r61, r13
	ble		.b49524				# 3158
.b49525:
	addis	r28, r0, 16256				# 856
.b49521:
	fmul	r61, r61, r61				# 12191
	fdiv	r61, r28, r61				# 12191
	sw		r61, 1(r30)				# 12153
	lw		r61, 2(r30)				# 12210
	fcmp	r61, r13
	beq		.b49527				# 3128
.b49528:
	fcmp	r61, r13
	beq		.b49530				# 3128
.b49531:
	fcmp	r61, r13
	ble		.b49532				# 3158
.b49533:
	addis	r28, r0, 16256				# 856
.b49529:
	fmul	r61, r61, r61				# 12269
	fdiv	r61, r28, r61				# 12269
	sw		r61, 2(r30)				# 12231
	cmpi	r57, 0
	beq		.b49544				# 12371
	b		.b49546
.b49532:
	addis	r28, r0, 49024				# 868
	b		.b49529				# 868
.b49530:
	addi	r28, r0, 0				# 828
	b		.b49529				# 828
.b49527:
	addi	r61, r0, 0				# 12260
	sw		r61, 2(r30)				# 12231
	cmpi	r57, 0
	beq		.b49544				# 12371
	b		.b49546
.b49524:
	addis	r28, r0, 49024				# 868
	b		.b49521				# 868
.b49522:
	addi	r28, r0, 0				# 828
	b		.b49521				# 828
.b49519:
	addi	r61, r0, 0				# 12182
	sw		r61, 1(r30)				# 12153
	lw		r61, 2(r30)				# 12210
	fcmp	r61, r13
	beq		.b49527				# 3128
	b		.b49528
.b49516:
	addis	r28, r0, 49024				# 868
	b		.b49513				# 868
.b49514:
	addi	r28, r0, 0				# 828
	b		.b49513				# 828
.b49511:
	addi	r61, r0, 0				# 12103
	sw		r61, 0(r30)				# 12074
	lw		r61, 1(r30)				# 12132
	fcmp	r61, r13
	beq		.b49519				# 3128
	b		.b49520
.b49505:
	addi	r10, r0, 1				# 11723
	b		.b49504				# 11723
.b49501:
	cmpi	r37, 2
	beq		.b49505				# 11706
	b		.b49506
.b49499:
	addi	r51, r0, 0				# 3188
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