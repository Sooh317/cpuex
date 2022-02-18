	.text
	sub		r0, r0, r0
	b		_min_caml_start
	# read_net_item.2806
read_net_item.2806:
.Entry@read_net_item.2806:
	sw		r1, 0(r3)				# 0
	addi	r61, r0, -1				# 1683
	in		r9				# 1683
	sw		r9, -1(r3)				# 1683
	cmpi	r9, -1
	beq		.b47448				# 12740
.b47449:
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
.b47448:
	addi	r9, r1, 1				# 12758
	mv		r2, r4
	add		r4, r4, r9				# 12758
	addi	r28, r9, -1				# 12758
	addi	r9, r0, 0				# 12758
	cmp		r9, r28
	ble		.b47452				# 12758
.b47450:
	blr				# 12758
.b47452:
	swx		r61, r9, r2				# 12758
	addi	r9, r9, 1				# 12758
	cmp		r9, r28
	ble		.b47452				# 12758
	b		.b47450
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
	sw		r2, -1(r3)				# 12903
	lw		r9, 0(r2)				# 12934
	cmpi	r9, -1
	beq		.b47454				# 12934
.b47455:
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
.b47454:
	lw		r9, 0(r3)				# 12959
	addi	r61, r9, 1				# 12959
	mv		r9, r4
	add		r4, r4, r61				# 12959
	addi	r28, r61, -1				# 12959
	addi	r61, r0, 0				# 12959
	cmp		r61, r28
	ble		.b47458				# 12959
.b47456:
	mv		r2, r9				# 12959
	blr				# 12959
.b47458:
	swx		r2, r61, r9				# 12959
	addi	r61, r61, 1				# 12959
	cmp		r61, r28
	ble		.b47458				# 12959
	b		.b47456
	# trace_diffuse_ray.3007
trace_diffuse_ray.3007:
.Entry@trace_diffuse_ray.3007:
	addi	r13, r0, 0				# 28622
	lli		r7, objects.2536				# 28622
	lli		r37, light.2545				# 28622
	addis	r48, r0, 17279				# 28622
	lli		r25, and_net.2554				# 28622
	lli		r61, or_net.2560				# 28622
	lli		r26, solver_dist.2563				# 28622
	lli		r19, intsec_rectside.2566				# 28622
	addis	r9, r0, 20078
	ori		r9, r9, 27432				# 28622
	lli		r14, tmin.2569				# 28622
	lli		r57, intersection_point.2572				# 28622
	lli		r29, intersected_object_id.2575				# 28622
	lli		r46, nvector.2578				# 28622
	lli		r41, texture_color.2581				# 28622
	lli		r30, diffuse_ray.2584				# 28622
	lli		r39, startp_fast.2602				# 28622
	lli		r54, v3.2630				# 28622
	lli		r10, consts.2632				# 28622
	sw		r9, 0(r14)				# 28622
	lw		r51, 0(r61)				# 28652
	addi	r15, r0, 0				# 28095
	lwx		r17, r51, r15				# 28095
	lw		r61, 0(r17)				# 28128
	cmpi	r61, -1
	beq		.b47460				# 28164
.b47463:
	cmpi	r61, 99
	beq		.b47465				# 28213
.b47466:
	lwx		r12, r7, r61				# 18636
	lw		r28, 10(r12)				# 6561
	lw		r9, 0(r28)				# 18698
	lw		r42, 1(r28)				# 18723
	lw		r50, 2(r28)				# 18748
	lw		r53, 1(r1)				# 8141
	lwx		r62, r53, r61				# 18807
	lw		r61, 1(r12)				# 2994
	cmpi	r61, 1
	beq		.b47572				# 18869
.b47573:
	cmpi	r61, 2
	beq		.b47598				# 18950
.b47599:
	lw		r33, 0(r62)				# 18204
	fcmp	r33, r13
	beq		.b47602				# 3128
.b47603:
	lw		r61, 1(r62)				# 18278
	fmul	r9, r61, r9				# 18278
	lw		r61, 2(r62)				# 18298
	fmul	r61, r61, r42				# 18278
	fadd	r9, r9, r61				# 18278
	lw		r61, 3(r62)				# 18318
	fmul	r61, r61, r50				# 18278
	fadd	r23, r9, r61				# 18265
	lw		r61, 3(r28)				# 18342
	fmul	r9, r23, r23				# 18377
	fmul	r61, r33, r61				# 18377
	fsub	r9, r9, r61				# 18369
	fcmp	r9, r13
	ble		.b47604				# 3158
.b47605:
	lw		r61, 6(r12)				# 3372
	cmpi	r61, 0
	beq		.b47607				# 18435
.b47608:
	fsqrt	r9, r9				# 227
	fadd	r9, r23, r9				# 18476
	lw		r61, 4(r62)				# 18476
	fmul	r9, r9, r61				# 18457
	sw		r9, 0(r26)				# 18457
	addi	r9, r0, 1				# 18580
	lw		r61, 0(r26)				# 28381
	lw		r9, 0(r14)				# 28414
	fcmp	r9, r61
	ble		.b47464				# 3098
.b47612:
	addi	r9, r0, 1				# 27829
	lwx		r61, r17, r9				# 27829
	cmpi	r61, -1
	beq		.b47464				# 27860
.b47615:
	lwx		r56, r25, r61				# 27885
	addi	r62, r0, 0				# 26885
	lw		r59, 0(r1)				# 8078
	lwx		r50, r56, r62				# 26915
	cmpi	r50, -1
	beq		.b47616				# 26952
.b47619:
	lwx		r35, r7, r50				# 18636
	lw		r33, 10(r35)				# 6561
	lw		r38, 0(r33)				# 18698
	lw		r36, 1(r33)				# 18723
	lw		r23, 2(r33)				# 18748
	lwx		r20, r53, r50				# 18807
	lw		r61, 1(r35)				# 2994
	cmpi	r61, 1
	beq		.b47621				# 18869
.b47622:
	cmpi	r61, 2
	beq		.b47647				# 18950
.b47648:
	lw		r12, 0(r20)				# 18204
	fcmp	r12, r13
	beq		.b47651				# 3128
.b47652:
	lw		r61, 1(r20)				# 18278
	fmul	r28, r61, r38				# 18278
	lw		r61, 2(r20)				# 18298
	fmul	r61, r61, r36				# 18278
	fadd	r28, r28, r61				# 18278
	lw		r61, 3(r20)				# 18318
	fmul	r61, r61, r23				# 18278
	fadd	r23, r28, r61				# 18265
	lw		r28, 3(r33)				# 18342
	fmul	r61, r23, r23				# 18377
	fmul	r28, r12, r28				# 18377
	fsub	r28, r61, r28				# 18369
	fcmp	r28, r13
	ble		.b47653				# 3158
.b47654:
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47656				# 18435
.b47657:
	fsqrt	r61, r28				# 227
	fadd	r28, r23, r61				# 18476
	lw		r61, 4(r20)				# 18476
	fmul	r61, r28, r61				# 18457
	sw		r61, 0(r26)				# 18457
	addi	r47, r0, 1				# 18580
	lw		r61, 0(r26)				# 27058
	fcmp	r61, r13
	ble		.b47662				# 3098
.b47664:
	lw		r28, 0(r14)				# 27125
	fcmp	r28, r61
	ble		.b47662				# 3098
.b47666:
	addis	r28, r0, 15395
	ori		r28, r28, 55050				# 27169
	fadd	r33, r61, r28				# 27161
	lw		r61, 0(r59)				# 27198
	fmul	r61, r61, r33				# 27198
	lw		r28, 0(r39)				# 27198
	fadd	r27, r61, r28				# 27189
	lw		r61, 1(r59)				# 27247
	fmul	r61, r61, r33				# 27247
	lw		r28, 1(r39)				# 27247
	fadd	r36, r61, r28				# 27238
	lw		r61, 2(r59)				# 27296
	fmul	r28, r61, r33				# 27296
	lw		r61, 2(r39)				# 27296
	fadd	r59, r28, r61				# 27287
	addi	r28, r0, 0				# 23025
	lwx		r61, r56, r28				# 23025
	cmpi	r61, -1
	beq		.b47669				# 23052
.b47670:
	lwx		r35, r7, r61				# 23095
	lw		r23, 5(r35)				# 4475
	lw		r61, 0(r23)				# 22709
	fsub	r12, r27, r61				# 22700
	lw		r61, 1(r23)				# 22741
	fsub	r38, r36, r61				# 22732
	lw		r61, 2(r23)				# 22773
	fsub	r44, r59, r61				# 22764
	lw		r42, 1(r35)				# 2994
	cmpi	r42, 1
	beq		.b47672				# 22824
.b47673:
	cmpi	r42, 2
	beq		.b47685				# 22882
.b47686:
	fmul	r23, r12, r12				# 14374
	lw		r49, 4(r35)				# 3734
	lw		r61, 0(r49)				# 14374
	fmul	r23, r23, r61				# 14374
	fmul	r61, r38, r38				# 14400
	lw		r20, 1(r49)				# 14400
	fmul	r61, r61, r20				# 14374
	fadd	r23, r23, r61				# 14374
	fmul	r20, r44, r44				# 14426
	lw		r61, 2(r49)				# 14426
	fmul	r61, r20, r61				# 14374
	fadd	r61, r23, r61				# 14354
	lw		r23, 3(r35)				# 3553
	cmpi	r23, 0
	beq		.b47698				# 14456
.b47699:
	fmul	r20, r38, r44				# 14522
	lw		r49, 9(r35)				# 5989
	lw		r23, 0(r49)				# 14522
	fmul	r23, r20, r23				# 14503
	fadd	r20, r61, r23				# 14503
	fmul	r23, r44, r12				# 14556
	lw		r61, 1(r49)				# 14556
	fmul	r61, r23, r61				# 14503
	fadd	r20, r20, r61				# 14503
	fmul	r23, r12, r38				# 14590
	lw		r61, 2(r49)				# 14590
	fmul	r61, r23, r61				# 14503
	fadd	r61, r20, r61				# 14503
	cmpi	r42, 3
	beq		.b47701				# 22583
.b47702:
	lw		r23, 6(r35)				# 3372
	fcmp	r13, r61
	ble		.b47704				# 3188
.b47705:
	addi	r61, r0, 1				# 3188
	cmpi	r23, 0
	beq		.b47707				# 765
.b47708:
	cmpi	r61, 0
	beq		.b47709				# 775
.b47710:
	addi	r61, r0, 0				# 775
	addi	r61, r0, 1				# 22625
	addi	r61, r0, 0				# 23141
.b47662:
	addi	r62, r62, 1				# 27573
	lw		r59, 0(r1)				# 8078
	lwx		r50, r56, r62				# 26915
	cmpi	r50, -1
	beq		.b47616				# 26952
	b		.b47619
.b47616:
	addi	r9, r9, 1				# 27971
	lwx		r61, r17, r9				# 27829
	cmpi	r61, -1
	beq		.b47464				# 27860
	b		.b47615
.b47464:
	addi	r15, r15, 1				# 28519
	lwx		r17, r51, r15				# 28095
	lw		r61, 0(r17)				# 28128
	cmpi	r61, -1
	beq		.b47460				# 28164
	b		.b47463
.b47460:
	lw		r9, 0(r14)				# 28698
	addis	r39, r0, 48588
	ori		r39, r39, 52429				# 28725
	fcmp	r9, r39
	ble		.b47717				# 3098
.b47718:
	addis	r61, r0, 19646
	ori		r61, r61, 48160				# 28751
	fcmp	r61, r9
	ble		.b47719				# 3098
.b47720:
	lw		r9, 0(r29)				# 35140
	lwx		r23, r7, r9				# 35130
	lw		r61, 0(r1)				# 8078
	lw		r9, 1(r23)				# 2994
	cmpi	r9, 1
	beq		.b47722				# 29818
.b47723:
	cmpi	r9, 2
	beq		.b47729				# 29873
.b47730:
	lw		r9, 0(r57)				# 29136
	lw		r28, 5(r23)				# 4475
	lw		r61, 0(r28)				# 29136
	fsub	r19, r9, r61				# 29127
	lw		r9, 1(r57)				# 29188
	lw		r61, 1(r28)				# 29188
	fsub	r17, r9, r61				# 29179
	lw		r61, 2(r57)				# 29240
	lw		r9, 2(r28)				# 29240
	fsub	r9, r61, r9				# 29231
	lw		r28, 4(r23)				# 3734
	lw		r61, 0(r28)				# 29293
	fmul	r14, r19, r61				# 29284
	lw		r61, 1(r28)				# 29325
	fmul	r12, r17, r61				# 29316
	lw		r61, 2(r28)				# 29357
	fmul	r61, r9, r61				# 29348
	lw		r28, 3(r23)				# 3553
	cmpi	r28, 0
	beq		.b47732				# 29381
.b47733:
	lw		r15, 9(r23)				# 6369
	lw		r29, 2(r15)				# 29517
	fmul	r50, r17, r29				# 29517
	lw		r28, 1(r15)				# 29539
	fmul	r62, r9, r28				# 29517
	fadd	r62, r50, r62				# 29510
	addis	r50, r0, 16384				# 2996
	fdiv	r62, r62, r50				# 29504
	fadd	r62, r14, r62				# 29489
	sw		r62, 0(r46)				# 29489
	fmul	r62, r19, r29				# 29592
	lw		r15, 0(r15)				# 29614
	fmul	r9, r9, r15				# 29592
	fadd	r9, r62, r9				# 29585
	fdiv	r9, r9, r50				# 29579
	fadd	r9, r12, r9				# 29564
	sw		r9, 1(r46)				# 29489
	fmul	r28, r19, r28				# 29667
	fmul	r9, r17, r15				# 29667
	fadd	r9, r28, r9				# 29660
	fdiv	r9, r9, r50				# 29654
	fadd	r9, r61, r9				# 29639
	sw		r9, 2(r46)				# 29639
.b47731:
	lw		r15, 6(r23)				# 3372
	lw		r19, 0(r46)				# 1729
	fmul	r9, r19, r19				# 1729
	lw		r28, 1(r46)				# 1743
	fmul	r61, r28, r28				# 1729
	fadd	r61, r9, r61				# 1729
	lw		r62, 2(r46)				# 1757
	fmul	r9, r62, r62				# 1729
	fadd	r9, r61, r9				# 1723
	fsqrt	r61, r9				# 227
	fcmp	r61, r13
	beq		.b47735				# 3128
.b47736:
	cmpi	r15, 0
	beq		.b47737				# 1810
.b47738:
	addis	r9, r0, 49024				# 1822
	fdiv	r61, r9, r61				# 1822
.b47734:
	fmul	r9, r19, r61				# 1851
	sw		r9, 0(r46)				# 1851
	fmul	r9, r28, r61				# 1875
	sw		r9, 1(r46)				# 1851
	fmul	r9, r62, r61				# 1899
	sw		r9, 2(r46)				# 1899
.b47721:
	lw		r61, 0(r23)				# 2815
	lw		r28, 8(r23)				# 5421
	lw		r9, 0(r28)				# 30014
	sw		r9, 0(r41)				# 30014
	lw		r9, 1(r28)				# 30052
	sw		r9, 1(r41)				# 30014
	lw		r9, 2(r28)				# 30092
	sw		r9, 2(r41)				# 30014
	cmpi	r61, 1
	beq		.b47740				# 30131
.b47741:
	cmpi	r61, 2
	beq		.b47755				# 30575
.b47756:
	cmpi	r61, 3
	beq		.b47757				# 30745
.b47758:
	cmpi	r61, 4
	beq		.b47759				# 31084
.b47739:
	addi	r9, r0, 0				# 24323
	lwx		r48, r51, r9				# 24323
	lw		r62, 0(r48)				# 24355
	cmpi	r62, -1
	beq		.b47772				# 24391
.b47773:
	cmpi	r62, 99
	beq		.b47775				# 24451
.b47776:
	lwx		r15, r7, r62				# 17557
	lw		r17, 0(r57)				# 17595
	lw		r28, 5(r15)				# 4475
	lw		r61, 0(r28)				# 17595
	fsub	r53, r17, r61				# 17586
	lw		r14, 1(r57)				# 17632
	lw		r61, 1(r28)				# 17632
	fsub	r50, r14, r61				# 17623
	lw		r29, 2(r57)				# 17669
	lw		r61, 2(r28)				# 17669
	fsub	r33, r29, r61				# 17660
	lwx		r12, r10, r62				# 17731
	lw		r1, 1(r15)				# 2994
	cmpi	r1, 1
	beq		.b47778				# 17793
.b47779:
	cmpi	r1, 2
	beq		.b47804				# 17874
.b47805:
	lw		r56, 0(r12)				# 17054
	fcmp	r56, r13
	beq		.b47808				# 3128
.b47809:
	lw		r61, 1(r12)				# 17128
	fmul	r61, r61, r53				# 17128
	lw		r28, 2(r12)				# 17148
	fmul	r28, r28, r50				# 17128
	fadd	r28, r61, r28				# 17128
	lw		r61, 3(r12)				# 17168
	fmul	r61, r61, r33				# 17128
	fadd	r62, r28, r61				# 17115
	fmul	r28, r53, r53				# 14374
	lw		r42, 4(r15)				# 3734
	lw		r61, 0(r42)				# 14374
	fmul	r19, r28, r61				# 14374
	fmul	r28, r50, r50				# 14400
	lw		r61, 1(r42)				# 14400
	fmul	r61, r28, r61				# 14374
	fadd	r28, r19, r61				# 14374
	fmul	r19, r33, r33				# 14426
	lw		r61, 2(r42)				# 14426
	fmul	r61, r19, r61				# 14374
	fadd	r61, r28, r61				# 14354
	lw		r28, 3(r15)				# 3553
	cmpi	r28, 0
	beq		.b47811				# 14456
.b47812:
	fmul	r28, r50, r33				# 14522
	lw		r42, 9(r15)				# 5989
	lw		r19, 0(r42)				# 14522
	fmul	r28, r28, r19				# 14503
	fadd	r19, r61, r28				# 14503
	fmul	r28, r33, r53				# 14556
	lw		r61, 1(r42)				# 14556
	fmul	r61, r28, r61				# 14503
	fadd	r19, r19, r61				# 14503
	fmul	r28, r53, r50				# 14590
	lw		r61, 2(r42)				# 14590
	fmul	r61, r28, r61				# 14503
	fadd	r61, r19, r61				# 14503
	cmpi	r1, 3
	beq		.b47814				# 17239
.b47815:
.b47813:
	fmul	r28, r62, r62				# 17295
	fmul	r61, r56, r61				# 17295
	fsub	r28, r28, r61				# 17287
	fcmp	r28, r13
	ble		.b47816				# 3158
.b47817:
	lw		r61, 6(r15)				# 3372
	cmpi	r61, 0
	beq		.b47819				# 17353
.b47820:
	fsqrt	r61, r28				# 227
	fadd	r61, r62, r61				# 17394
	lw		r28, 4(r12)				# 17394
	fmul	r61, r61, r28				# 17375
	sw		r61, 0(r26)				# 17375
	addi	r61, r0, 1				# 17498
	lw		r61, 0(r26)				# 24609
	fcmp	r39, r61
	ble		.b47823				# 3098
.b47824:
	addi	r15, r0, 1				# 24006
	lwx		r61, r48, r15				# 24006
	cmpi	r61, -1
	beq		.b47827				# 24037
.b47828:
	lwx		r53, r25, r61				# 24078
	addi	r61, r0, 0				# 23266
	lwx		r19, r53, r61				# 23266
	cmpi	r19, -1
	beq		.b47831				# 23266
.b47832:
	lwx		r1, r7, r19				# 17557
	lw		r28, 5(r1)				# 4475
	lw		r62, 0(r28)				# 17595
	fsub	r12, r17, r62				# 17586
	lw		r62, 1(r28)				# 17632
	fsub	r62, r14, r62				# 17623
	lw		r28, 2(r28)				# 17669
	fsub	r27, r29, r28				# 17660
	lwx		r50, r10, r19				# 17731
	lw		r56, 1(r1)				# 2994
	cmpi	r56, 1
	beq		.b47834				# 17793
.b47835:
	cmpi	r56, 2
	beq		.b47860				# 17874
.b47861:
	lw		r36, 0(r50)				# 17054
	fcmp	r36, r13
	beq		.b47864				# 3128
.b47865:
	lw		r28, 1(r50)				# 17128
	fmul	r19, r28, r12				# 17128
	lw		r28, 2(r50)				# 17148
	fmul	r28, r28, r62				# 17128
	fadd	r28, r19, r28				# 17128
	lw		r19, 3(r50)				# 17168
	fmul	r19, r19, r27				# 17128
	fadd	r33, r28, r19				# 17115
	fmul	r28, r12, r12				# 14374
	lw		r19, 4(r1)				# 3734
	lw		r42, 0(r19)				# 14374
	fmul	r42, r28, r42				# 14374
	fmul	r47, r62, r62				# 14400
	lw		r28, 1(r19)				# 14400
	fmul	r28, r47, r28				# 14374
	fadd	r42, r42, r28				# 14374
	fmul	r28, r27, r27				# 14426
	lw		r19, 2(r19)				# 14426
	fmul	r28, r28, r19				# 14374
	fadd	r28, r42, r28				# 14354
	lw		r19, 3(r1)				# 3553
	cmpi	r19, 0
	beq		.b47867				# 14456
.b47868:
	fmul	r42, r62, r27				# 14522
	lw		r19, 9(r1)				# 5989
	lw		r47, 0(r19)				# 14522
	fmul	r42, r42, r47				# 14503
	fadd	r47, r28, r42				# 14503
	fmul	r28, r27, r12				# 14556
	lw		r42, 1(r19)				# 14556
	fmul	r28, r28, r42				# 14503
	fadd	r42, r47, r28				# 14503
	fmul	r28, r12, r62				# 14590
	lw		r62, 2(r19)				# 14590
	fmul	r28, r28, r62				# 14503
	fadd	r28, r42, r28				# 14503
	cmpi	r56, 3
	beq		.b47870				# 17239
.b47871:
.b47869:
	fmul	r62, r33, r33				# 17295
	fmul	r28, r36, r28				# 17295
	fsub	r62, r62, r28				# 17287
	fcmp	r62, r13
	ble		.b47872				# 3158
.b47873:
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47875				# 17353
.b47876:
	fsqrt	r28, r62				# 227
	fadd	r62, r33, r28				# 17394
	lw		r28, 4(r50)				# 17394
	fmul	r28, r62, r28				# 17375
	sw		r28, 0(r26)				# 17375
	addi	r28, r0, 1				# 17498
	lw		r28, 0(r26)				# 23423
	addis	r62, r0, 48716
	ori		r62, r62, 52429				# 23476
	fcmp	r62, r28
	ble		.b47880				# 3098
.b47881:
	addi	r62, r0, 1				# 3098
.b47883:
	addis	r62, r0, 15395
	ori		r62, r62, 55050				# 23524
	fadd	r28, r28, r62				# 23516
	lw		r62, 0(r37)				# 23554
	fmul	r62, r62, r28				# 23554
	fadd	r50, r62, r17				# 23545
	lw		r62, 1(r37)				# 23613
	fmul	r62, r62, r28				# 23613
	fadd	r56, r62, r14				# 23604
	lw		r62, 2(r37)				# 23672
	fmul	r28, r62, r28				# 23672
	fadd	r42, r28, r29				# 23663
	addi	r62, r0, 0				# 23025
	lwx		r28, r53, r62				# 23025
	cmpi	r28, -1
	beq		.b47888				# 23052
.b47889:
	lwx		r1, r7, r28				# 23095
	lw		r28, 5(r1)				# 4475
	lw		r19, 0(r28)				# 22709
	fsub	r27, r50, r19				# 22700
	lw		r19, 1(r28)				# 22741
	fsub	r47, r56, r19				# 22732
	lw		r28, 2(r28)				# 22773
	fsub	r33, r42, r28				# 22764
	lw		r36, 1(r1)				# 2994
	cmpi	r36, 1
	beq		.b47891				# 22824
.b47892:
	cmpi	r36, 2
	beq		.b47904				# 22882
.b47905:
	fmul	r28, r27, r27				# 14374
	lw		r59, 4(r1)				# 3734
	lw		r19, 0(r59)				# 14374
	fmul	r19, r28, r19				# 14374
	fmul	r28, r47, r47				# 14400
	lw		r12, 1(r59)				# 14400
	fmul	r28, r28, r12				# 14374
	fadd	r12, r19, r28				# 14374
	fmul	r19, r33, r33				# 14426
	lw		r28, 2(r59)				# 14426
	fmul	r28, r19, r28				# 14374
	fadd	r28, r12, r28				# 14354
	lw		r19, 3(r1)				# 3553
	cmpi	r19, 0
	beq		.b47917				# 14456
.b47918:
	fmul	r12, r47, r33				# 14522
	lw		r59, 9(r1)				# 5989
	lw		r19, 0(r59)				# 14522
	fmul	r19, r12, r19				# 14503
	fadd	r12, r28, r19				# 14503
	fmul	r28, r33, r27				# 14556
	lw		r19, 1(r59)				# 14556
	fmul	r28, r28, r19				# 14503
	fadd	r19, r12, r28				# 14503
	fmul	r12, r27, r47				# 14590
	lw		r28, 2(r59)				# 14590
	fmul	r28, r12, r28				# 14503
	fadd	r28, r19, r28				# 14503
	cmpi	r36, 3
	beq		.b47920				# 22583
.b47921:
	lw		r19, 6(r1)				# 3372
	fcmp	r13, r28
	ble		.b47923				# 3188
.b47924:
	addi	r28, r0, 1				# 3188
	cmpi	r19, 0
	beq		.b47926				# 765
.b47927:
	cmpi	r28, 0
	beq		.b47928				# 775
.b47929:
	addi	r28, r0, 0				# 775
	addi	r28, r0, 1				# 22625
	addi	r28, r0, 0				# 23141
.b47934:
	addi	r61, r61, 1				# 23786
	lwx		r19, r53, r61				# 23266
	cmpi	r19, -1
	beq		.b47831				# 23266
	b		.b47832
.b47831:
	addi	r61, r0, 0				# 23304
.b47936:
	addi	r15, r15, 1				# 24216
	lwx		r61, r48, r15				# 24006
	cmpi	r61, -1
	beq		.b47827				# 24037
	b		.b47828
.b47827:
	addi	r61, r0, 0				# 24059
	addi	r61, r0, 0				# 24725
.b47940:
	addi	r9, r9, 1				# 24896
	lwx		r48, r51, r9				# 24323
	lw		r62, 0(r48)				# 24355
	cmpi	r62, -1
	beq		.b47772				# 24391
	b		.b47773
.b47772:
	addi	r9, r0, 0				# 24424
.b48057:
	lw		r9, 0(r46)				# 1949
	lw		r61, 0(r37)				# 1949
	fmul	r28, r9, r61				# 1949
	lw		r9, 1(r46)				# 1967
	lw		r61, 1(r37)				# 1967
	fmul	r9, r9, r61				# 1949
	fadd	r61, r28, r9				# 1949
	lw		r28, 2(r46)				# 1985
	lw		r9, 2(r37)				# 1985
	fmul	r9, r28, r9				# 1949
	fadd	r9, r61, r9				# 35327
	fneg	r9, r9				# 35317
	fcmp	r9, r13
	ble		.b48060				# 3158
.b48061:
.b48059:
	fmul	r61, r2, r9				# 35442
	lw		r9, 7(r23)				# 5033
	lw		r9, 0(r9)				# 35442
	fmul	r61, r61, r9				# 35420
	lw		r28, 0(r30)				# 2129
	lw		r9, 0(r41)				# 2141
	fmul	r9, r61, r9				# 2129
	fadd	r9, r28, r9				# 2117
	sw		r9, 0(r30)				# 2117
	lw		r9, 1(r30)				# 2171
	lw		r28, 1(r41)				# 2183
	fmul	r28, r61, r28				# 2171
	fadd	r9, r9, r28				# 2159
	sw		r9, 1(r30)				# 2117
	lw		r28, 2(r30)				# 2213
	lw		r9, 2(r41)				# 2225
	fmul	r9, r61, r9				# 2213
	fadd	r9, r28, r9				# 2201
	sw		r9, 2(r30)				# 2201
	blr				# 2201
.b48060:
	addi	r9, r0, 0				# 35406
	b		.b48059				# 35406
.b47928:
	addi	r28, r0, 1				# 775
	addi	r28, r0, 0				# 22625
.b47932:
	addi	r62, r62, 1				# 23162
	lwx		r28, r53, r62				# 23025
	cmpi	r28, -1
	beq		.b47888				# 23052
	b		.b47889
.b47888:
	addi	r28, r0, 1				# 23074
	addi	r61, r0, 1				# 23769
	addi	r61, r0, 1				# 24196
.b47939:
	addi	r61, r0, 1				# 24710
	addi	r62, r0, 1				# 24006
	lwx		r61, r48, r62				# 24006
	cmpi	r61, -1
	beq		.b47944				# 24037
.b47945:
	lwx		r17, r25, r61				# 24078
	addi	r28, r0, 0				# 23266
	lwx		r19, r17, r28				# 23266
	cmpi	r19, -1
	beq		.b47948				# 23266
.b47949:
	lwx		r42, r7, r19				# 17557
	lw		r12, 0(r57)				# 17595
	lw		r61, 5(r42)				# 4475
	lw		r15, 0(r61)				# 17595
	fsub	r47, r12, r15				# 17586
	lw		r53, 1(r57)				# 17632
	lw		r15, 1(r61)				# 17632
	fsub	r33, r53, r15				# 17623
	lw		r15, 2(r57)				# 17669
	lw		r61, 2(r61)				# 17669
	fsub	r27, r15, r61				# 17660
	lwx		r36, r10, r19				# 17731
	lw		r29, 1(r42)				# 2994
	cmpi	r29, 1
	beq		.b47951				# 17793
.b47952:
	cmpi	r29, 2
	beq		.b47977				# 17874
.b47978:
	lw		r56, 0(r36)				# 17054
	fcmp	r56, r13
	beq		.b47981				# 3128
.b47982:
	lw		r61, 1(r36)				# 17128
	fmul	r19, r61, r47				# 17128
	lw		r61, 2(r36)				# 17148
	fmul	r61, r61, r33				# 17128
	fadd	r19, r19, r61				# 17128
	lw		r61, 3(r36)				# 17168
	fmul	r61, r61, r27				# 17128
	fadd	r1, r19, r61				# 17115
	fmul	r61, r47, r47				# 14374
	lw		r19, 4(r42)				# 3734
	lw		r14, 0(r19)				# 14374
	fmul	r61, r61, r14				# 14374
	fmul	r14, r33, r33				# 14400
	lw		r50, 1(r19)				# 14400
	fmul	r14, r14, r50				# 14374
	fadd	r14, r61, r14				# 14374
	fmul	r61, r27, r27				# 14426
	lw		r19, 2(r19)				# 14426
	fmul	r61, r61, r19				# 14374
	fadd	r61, r14, r61				# 14354
	lw		r19, 3(r42)				# 3553
	cmpi	r19, 0
	beq		.b47984				# 14456
.b47985:
	fmul	r50, r33, r27				# 14522
	lw		r14, 9(r42)				# 5989
	lw		r19, 0(r14)				# 14522
	fmul	r19, r50, r19				# 14503
	fadd	r61, r61, r19				# 14503
	fmul	r50, r27, r47				# 14556
	lw		r19, 1(r14)				# 14556
	fmul	r19, r50, r19				# 14503
	fadd	r19, r61, r19				# 14503
	fmul	r61, r47, r33				# 14590
	lw		r14, 2(r14)				# 14590
	fmul	r61, r61, r14				# 14503
	fadd	r61, r19, r61				# 14503
	cmpi	r29, 3
	beq		.b47987				# 17239
.b47988:
.b47986:
	fmul	r19, r1, r1				# 17295
	fmul	r61, r56, r61				# 17295
	fsub	r19, r19, r61				# 17287
	fcmp	r19, r13
	ble		.b47989				# 3158
.b47990:
	lw		r61, 6(r42)				# 3372
	cmpi	r61, 0
	beq		.b47992				# 17353
.b47993:
	fsqrt	r61, r19				# 227
	fadd	r19, r1, r61				# 17394
	lw		r61, 4(r36)				# 17394
	fmul	r61, r19, r61				# 17375
	sw		r61, 0(r26)				# 17375
	addi	r61, r0, 1				# 17498
	lw		r19, 0(r26)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r19
	ble		.b47997				# 3098
.b47998:
	addi	r61, r0, 1				# 3098
.b48000:
	addis	r61, r0, 15395
	ori		r61, r61, 55050				# 23524
	fadd	r19, r19, r61				# 23516
	lw		r61, 0(r37)				# 23554
	fmul	r61, r61, r19				# 23554
	fadd	r12, r61, r12				# 23545
	lw		r61, 1(r37)				# 23613
	fmul	r61, r61, r19				# 23613
	fadd	r53, r61, r53				# 23604
	lw		r61, 2(r37)				# 23672
	fmul	r61, r61, r19				# 23672
	fadd	r33, r61, r15				# 23663
	addi	r15, r0, 0				# 23025
	lwx		r61, r17, r15				# 23025
	cmpi	r61, -1
	beq		.b48005				# 23052
.b48006:
	lwx		r19, r7, r61				# 23095
	lw		r29, 5(r19)				# 4475
	lw		r61, 0(r29)				# 22709
	fsub	r1, r12, r61				# 22700
	lw		r61, 1(r29)				# 22741
	fsub	r36, r53, r61				# 22732
	lw		r61, 2(r29)				# 22773
	fsub	r56, r33, r61				# 22764
	lw		r14, 1(r19)				# 2994
	cmpi	r14, 1
	beq		.b48008				# 22824
.b48009:
	cmpi	r14, 2
	beq		.b48021				# 22882
.b48022:
	fmul	r61, r1, r1				# 14374
	lw		r42, 4(r19)				# 3734
	lw		r29, 0(r42)				# 14374
	fmul	r50, r61, r29				# 14374
	fmul	r61, r36, r36				# 14400
	lw		r29, 1(r42)				# 14400
	fmul	r61, r61, r29				# 14374
	fadd	r61, r50, r61				# 14374
	fmul	r50, r56, r56				# 14426
	lw		r29, 2(r42)				# 14426
	fmul	r29, r50, r29				# 14374
	fadd	r61, r61, r29				# 14354
	lw		r29, 3(r19)				# 3553
	cmpi	r29, 0
	beq		.b48034				# 14456
.b48035:
	fmul	r29, r36, r56				# 14522
	lw		r42, 9(r19)				# 5989
	lw		r50, 0(r42)				# 14522
	fmul	r29, r29, r50				# 14503
	fadd	r50, r61, r29				# 14503
	fmul	r29, r56, r1				# 14556
	lw		r61, 1(r42)				# 14556
	fmul	r61, r29, r61				# 14503
	fadd	r29, r50, r61				# 14503
	fmul	r50, r1, r36				# 14590
	lw		r61, 2(r42)				# 14590
	fmul	r61, r50, r61				# 14503
	fadd	r61, r29, r61				# 14503
	cmpi	r14, 3
	beq		.b48037				# 22583
.b48038:
	lw		r19, 6(r19)				# 3372
	fcmp	r13, r61
	ble		.b48040				# 3188
.b48041:
	addi	r61, r0, 1				# 3188
	cmpi	r19, 0
	beq		.b48043				# 765
.b48044:
	cmpi	r61, 0
	beq		.b48045				# 775
.b48046:
	addi	r61, r0, 0				# 775
	addi	r61, r0, 1				# 22625
	addi	r61, r0, 0				# 23141
.b48051:
	addi	r28, r28, 1				# 23786
	lwx		r19, r17, r28				# 23266
	cmpi	r19, -1
	beq		.b47948				# 23266
	b		.b47949
.b47948:
	addi	r61, r0, 0				# 23304
.b48053:
	addi	r62, r62, 1				# 24216
	lwx		r61, r48, r62				# 24006
	cmpi	r61, -1
	beq		.b47944				# 24037
	b		.b47945
.b47944:
	addi	r61, r0, 0				# 24059
.b48055:
	addi	r9, r9, 1				# 24833
	lwx		r48, r51, r9				# 24323
	lw		r62, 0(r48)				# 24355
	cmpi	r62, -1
	beq		.b47772				# 24391
	b		.b47773
.b48045:
	addi	r61, r0, 1				# 775
	addi	r61, r0, 0				# 22625
.b48049:
	addi	r15, r15, 1				# 23162
	lwx		r61, r17, r15				# 23025
	cmpi	r61, -1
	beq		.b48005				# 23052
	b		.b48006
.b48005:
	addi	r61, r0, 1				# 23074
	addi	r61, r0, 1				# 23769
.b48054:
	addi	r61, r0, 1				# 24196
	addi	r9, r0, 1				# 24816
	blr				# 35500
.b48043:
	cmpi	r61, 0
	beq		.b48047				# 22625
.b48048:
	addi	r61, r0, 0				# 22625
	b		.b48049				# 23092
.b48047:
	addi	r61, r0, 1				# 22625
	addi	r61, r0, 0				# 23141
	b		.b48051				# 23722
.b48040:
	addi	r61, r0, 0				# 3188
	cmpi	r19, 0
	beq		.b48043				# 765
	b		.b48044
.b48037:
	addis	r29, r0, 16256				# 22604
	fsub	r61, r61, r29				# 22604
	lw		r19, 6(r19)				# 3372
	fcmp	r13, r61
	ble		.b48040				# 3188
	b		.b48041
.b48034:
	cmpi	r14, 3
	beq		.b48037				# 22583
	b		.b48038
.b48021:
	lw		r29, 4(r19)				# 4293
	lw		r61, 0(r29)				# 2037
	fmul	r14, r61, r1				# 2037
	lw		r61, 1(r29)				# 2052
	fmul	r61, r61, r36				# 2037
	fadd	r14, r14, r61				# 2037
	lw		r61, 2(r29)				# 2067
	fmul	r61, r61, r56				# 2037
	fadd	r61, r14, r61				# 22411
	lw		r19, 6(r19)				# 3372
	fcmp	r13, r61
	ble		.b48024				# 3188
.b48025:
	addi	r61, r0, 1				# 3188
	cmpi	r19, 0
	beq		.b48027				# 765
.b48028:
	cmpi	r61, 0
	beq		.b48029				# 775
.b48030:
	addi	r61, r0, 0				# 775
	addi	r61, r0, 1				# 22459
	addi	r61, r0, 0				# 23141
	b		.b48051				# 23722
.b48029:
	addi	r61, r0, 1				# 775
	addi	r61, r0, 0				# 22459
	b		.b48049				# 23092
.b48027:
	cmpi	r61, 0
	beq		.b48031				# 22459
.b48032:
	addi	r61, r0, 0				# 22459
	b		.b48049				# 23092
.b48031:
	addi	r61, r0, 1				# 22459
	addi	r61, r0, 0				# 23141
	b		.b48051				# 23722
.b48024:
	addi	r61, r0, 0				# 3188
	cmpi	r19, 0
	beq		.b48027				# 765
	b		.b48028
.b48008:
	fabs	r14, r1				# 322
	lw		r29, 4(r19)				# 3734
	lw		r61, 0(r29)				# 22178
	fcmp	r61, r14
	ble		.b48011				# 3098
.b48012:
	fabs	r14, r36				# 322
	lw		r61, 1(r29)				# 22224
	fcmp	r61, r14
	ble		.b48013				# 3098
.b48014:
	fabs	r61, r56				# 322
	lw		r29, 2(r29)				# 22261
	fcmp	r29, r61
	ble		.b48015				# 3098
.b48016:
	addi	r61, r0, 1				# 3098
	lw		r61, 6(r19)				# 3372
	cmpi	r61, 0
	beq		.b48049				# 23092
.b48050:
	addi	r61, r0, 0				# 23141
	b		.b48051				# 23722
.b48015:
	addi	r61, r0, 0				# 3098
	lw		r61, 6(r19)				# 3372
	cmpi	r61, 0
	beq		.b48019				# 22348
.b48020:
	addi	r61, r0, 0				# 22348
	b		.b48049				# 23092
.b48019:
	addi	r61, r0, 1				# 22348
	addi	r61, r0, 0				# 23141
	b		.b48051				# 23722
.b48013:
	addi	r61, r0, 0				# 22302
	lw		r61, 6(r19)				# 3372
	cmpi	r61, 0
	beq		.b48019				# 22348
	b		.b48020
.b48011:
	addi	r61, r0, 0				# 22317
	lw		r61, 6(r19)				# 3372
	cmpi	r61, 0
	beq		.b48019				# 22348
	b		.b48020
.b47997:
	addi	r61, r0, 0				# 3098
	lw		r61, 6(r42)				# 3372
	cmpi	r61, 0
	beq		.b48001				# 23849
.b48002:
	addi	r28, r28, 1				# 23885
	lwx		r19, r17, r28				# 23266
	cmpi	r19, -1
	beq		.b47948				# 23266
	b		.b47949
.b48001:
	addi	r61, r0, 0				# 23945
	b		.b48053				# 24173
.b47992:
	fsqrt	r61, r19				# 227
	fsub	r61, r1, r61				# 17458
	lw		r19, 4(r36)				# 17458
	fmul	r61, r61, r19				# 17439
	sw		r61, 0(r26)				# 17439
	addi	r61, r0, 1				# 17498
	lw		r19, 0(r26)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r19
	ble		.b47997				# 3098
	b		.b47998
.b47989:
	addi	r61, r0, 0				# 17510
	lw		r19, 0(r26)				# 23423
	addi	r61, r0, 0				# 23498
	lw		r61, 6(r42)				# 3372
	cmpi	r61, 0
	beq		.b48001				# 23849
	b		.b48002
.b47987:
	addis	r19, r0, 16256				# 17260
	fsub	r61, r61, r19				# 17260
	b		.b47986				# 17260
.b47984:
	cmpi	r29, 3
	beq		.b47987				# 17239
	b		.b47988
.b47981:
	addi	r61, r0, 0				# 17102
	lw		r19, 0(r26)				# 23423
	addi	r61, r0, 0				# 23498
	lw		r61, 6(r42)				# 3372
	cmpi	r61, 0
	beq		.b48001				# 23849
	b		.b48002
.b47977:
	lw		r61, 0(r36)				# 16870
	fcmp	r13, r61
	ble		.b47979				# 3188
.b47980:
	lw		r61, 1(r36)				# 16924
	fmul	r19, r61, r47				# 16924
	lw		r61, 2(r36)				# 16944
	fmul	r61, r61, r33				# 16924
	fadd	r19, r19, r61				# 16924
	lw		r61, 3(r36)				# 16964
	fmul	r61, r61, r27				# 16924
	fadd	r61, r19, r61				# 16899
	sw		r61, 0(r26)				# 16899
	addi	r61, r0, 1				# 16986
	lw		r19, 0(r26)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r19
	ble		.b47997				# 3098
	b		.b47998
.b47979:
	addi	r61, r0, 0				# 16998
	lw		r19, 0(r26)				# 23423
	addi	r61, r0, 0				# 23498
	lw		r61, 6(r42)				# 3372
	cmpi	r61, 0
	beq		.b48001				# 23849
	b		.b48002
.b47951:
	lw		r61, 0(r36)				# 15996
	fsub	r61, r61, r47				# 15995
	lw		r29, 1(r36)				# 15995
	fmul	r50, r61, r29				# 15986
	lw		r61, 1(r54)				# 16056
	fmul	r19, r50, r61				# 16056
	fadd	r19, r19, r33				# 16050
	fabs	r19, r19				# 322
	lw		r35, 4(r42)				# 3920
	lw		r14, 1(r35)				# 16043
	fcmp	r14, r19
	ble		.b47954				# 3098
.b47955:
	lw		r19, 2(r54)				# 16117
	fmul	r19, r50, r19				# 16117
	fadd	r19, r19, r27				# 16111
	fabs	r19, r19				# 322
	lw		r56, 2(r35)				# 16104
	fcmp	r56, r19
	ble		.b47956				# 3098
.b47957:
	fcmp	r29, r13
	beq		.b47958				# 3128
.b47959:
	addi	r19, r0, 1				# 16157
.b47961:
	sw		r50, 0(r26)				# 16226
	addi	r61, r0, 1				# 16249
	lw		r19, 0(r26)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r19
	ble		.b47997				# 3098
	b		.b47998
.b47958:
	addi	r19, r0, 0				# 16157
.b47960:
	lw		r19, 2(r36)				# 16269
	fsub	r19, r19, r33				# 16268
	lw		r56, 3(r36)				# 16268
	fmul	r19, r19, r56				# 16259
	lw		r59, 0(r54)				# 16330
	fmul	r29, r19, r59				# 16330
	fadd	r29, r29, r47				# 16324
	fabs	r29, r29				# 322
	lw		r1, 0(r35)				# 16317
	fcmp	r1, r29
	ble		.b47963				# 3098
.b47964:
	lw		r29, 2(r54)				# 16391
	fmul	r29, r19, r29				# 16391
	fadd	r29, r29, r27				# 16385
	fabs	r50, r29				# 322
	lw		r29, 2(r35)				# 16378
	fcmp	r29, r50
	ble		.b47965				# 3098
.b47966:
	fcmp	r56, r13
	beq		.b47967				# 3128
.b47968:
	addi	r29, r0, 1				# 16431
.b47970:
	sw		r19, 0(r26)				# 16500
	addi	r61, r0, 2				# 16523
	lw		r19, 0(r26)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r19
	ble		.b47997				# 3098
	b		.b47998
.b47967:
	addi	r29, r0, 0				# 16431
.b47969:
	lw		r19, 4(r36)				# 16543
	fsub	r19, r19, r27				# 16542
	lw		r29, 5(r36)				# 16542
	fmul	r19, r19, r29				# 16533
	fmul	r50, r19, r59				# 16604
	fadd	r50, r50, r47				# 16598
	fabs	r50, r50				# 322
	fcmp	r1, r50
	ble		.b47971				# 3098
.b47972:
	fmul	r61, r19, r61				# 16665
	fadd	r61, r61, r33				# 16659
	fabs	r61, r61				# 322
	fcmp	r14, r61
	ble		.b47973				# 3098
.b47974:
	fcmp	r29, r13
	beq		.b47975				# 3128
.b47976:
	sw		r19, 0(r26)				# 16774
	addi	r61, r0, 3				# 16797
	lw		r19, 0(r26)				# 23423
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r19
	ble		.b47997				# 3098
	b		.b47998
.b47975:
	addi	r61, r0, 0				# 16811
	lw		r19, 0(r26)				# 23423
	addi	r61, r0, 0				# 23498
	lw		r61, 6(r42)				# 3372
	cmpi	r61, 0
	beq		.b48001				# 23849
	b		.b48002
.b47973:
	addi	r61, r0, 0				# 16811
	lw		r19, 0(r26)				# 23423
	addi	r61, r0, 0				# 23498
	lw		r61, 6(r42)				# 3372
	cmpi	r61, 0
	beq		.b48001				# 23849
	b		.b48002
.b47971:
	addi	r61, r0, 0				# 16811
	lw		r19, 0(r26)				# 23423
	addi	r61, r0, 0				# 23498
	lw		r61, 6(r42)				# 3372
	cmpi	r61, 0
	beq		.b48001				# 23849
	b		.b48002
.b47965:
	addi	r29, r0, 0				# 16467
	b		.b47969				# 16306
.b47963:
	addi	r29, r0, 0				# 16482
	b		.b47969				# 16306
.b47956:
	addi	r19, r0, 0				# 16193
	b		.b47960				# 16033
.b47954:
	addi	r19, r0, 0				# 16208
	b		.b47960				# 16033
.b47926:
	cmpi	r28, 0
	beq		.b47930				# 22625
.b47931:
	addi	r28, r0, 0				# 22625
	b		.b47932				# 23092
.b47930:
	addi	r28, r0, 1				# 22625
	addi	r28, r0, 0				# 23141
	b		.b47934				# 23722
.b47923:
	addi	r28, r0, 0				# 3188
	cmpi	r19, 0
	beq		.b47926				# 765
	b		.b47927
.b47920:
	addis	r19, r0, 16256				# 22604
	fsub	r28, r28, r19				# 22604
	lw		r19, 6(r1)				# 3372
	fcmp	r13, r28
	ble		.b47923				# 3188
	b		.b47924
.b47917:
	cmpi	r36, 3
	beq		.b47920				# 22583
	b		.b47921
.b47904:
	lw		r19, 4(r1)				# 4293
	lw		r28, 0(r19)				# 2037
	fmul	r12, r28, r27				# 2037
	lw		r28, 1(r19)				# 2052
	fmul	r28, r28, r47				# 2037
	fadd	r12, r12, r28				# 2037
	lw		r28, 2(r19)				# 2067
	fmul	r28, r28, r33				# 2037
	fadd	r28, r12, r28				# 22411
	lw		r19, 6(r1)				# 3372
	fcmp	r13, r28
	ble		.b47907				# 3188
.b47908:
	addi	r28, r0, 1				# 3188
	cmpi	r19, 0
	beq		.b47910				# 765
.b47911:
	cmpi	r28, 0
	beq		.b47912				# 775
.b47913:
	addi	r28, r0, 0				# 775
	addi	r28, r0, 1				# 22459
	addi	r28, r0, 0				# 23141
	b		.b47934				# 23722
.b47912:
	addi	r28, r0, 1				# 775
	addi	r28, r0, 0				# 22459
	b		.b47932				# 23092
.b47910:
	cmpi	r28, 0
	beq		.b47914				# 22459
.b47915:
	addi	r28, r0, 0				# 22459
	b		.b47932				# 23092
.b47914:
	addi	r28, r0, 1				# 22459
	addi	r28, r0, 0				# 23141
	b		.b47934				# 23722
.b47907:
	addi	r28, r0, 0				# 3188
	cmpi	r19, 0
	beq		.b47910				# 765
	b		.b47911
.b47891:
	fabs	r28, r27				# 322
	lw		r19, 4(r1)				# 3734
	lw		r12, 0(r19)				# 22178
	fcmp	r12, r28
	ble		.b47894				# 3098
.b47895:
	fabs	r12, r47				# 322
	lw		r28, 1(r19)				# 22224
	fcmp	r28, r12
	ble		.b47896				# 3098
.b47897:
	fabs	r28, r33				# 322
	lw		r19, 2(r19)				# 22261
	fcmp	r19, r28
	ble		.b47898				# 3098
.b47899:
	addi	r28, r0, 1				# 3098
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47932				# 23092
.b47933:
	addi	r28, r0, 0				# 23141
	b		.b47934				# 23722
.b47898:
	addi	r28, r0, 0				# 3098
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47902				# 22348
.b47903:
	addi	r28, r0, 0				# 22348
	b		.b47932				# 23092
.b47902:
	addi	r28, r0, 1				# 22348
	addi	r28, r0, 0				# 23141
	b		.b47934				# 23722
.b47896:
	addi	r28, r0, 0				# 22302
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47902				# 22348
	b		.b47903
.b47894:
	addi	r28, r0, 0				# 22317
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47902				# 22348
	b		.b47903
.b47880:
	addi	r62, r0, 0				# 3098
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47884				# 23849
.b47885:
	addi	r61, r61, 1				# 23885
	lwx		r19, r53, r61				# 23266
	cmpi	r19, -1
	beq		.b47831				# 23266
	b		.b47832
.b47884:
	addi	r61, r0, 0				# 23945
	b		.b47936				# 24173
.b47875:
	fsqrt	r28, r62				# 227
	fsub	r28, r33, r28				# 17458
	lw		r62, 4(r50)				# 17458
	fmul	r28, r28, r62				# 17439
	sw		r28, 0(r26)				# 17439
	addi	r28, r0, 1				# 17498
	lw		r28, 0(r26)				# 23423
	addis	r62, r0, 48716
	ori		r62, r62, 52429				# 23476
	fcmp	r62, r28
	ble		.b47880				# 3098
	b		.b47881
.b47872:
	addi	r28, r0, 0				# 17510
	lw		r28, 0(r26)				# 23423
	addi	r62, r0, 0				# 23498
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47884				# 23849
	b		.b47885
.b47870:
	addis	r62, r0, 16256				# 17260
	fsub	r28, r28, r62				# 17260
	b		.b47869				# 17260
.b47867:
	cmpi	r56, 3
	beq		.b47870				# 17239
	b		.b47871
.b47864:
	addi	r28, r0, 0				# 17102
	lw		r28, 0(r26)				# 23423
	addi	r62, r0, 0				# 23498
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47884				# 23849
	b		.b47885
.b47860:
	lw		r28, 0(r50)				# 16870
	fcmp	r13, r28
	ble		.b47862				# 3188
.b47863:
	lw		r28, 1(r50)				# 16924
	fmul	r28, r28, r12				# 16924
	lw		r19, 2(r50)				# 16944
	fmul	r62, r19, r62				# 16924
	fadd	r62, r28, r62				# 16924
	lw		r28, 3(r50)				# 16964
	fmul	r28, r28, r27				# 16924
	fadd	r28, r62, r28				# 16899
	sw		r28, 0(r26)				# 16899
	addi	r28, r0, 1				# 16986
	lw		r28, 0(r26)				# 23423
	addis	r62, r0, 48716
	ori		r62, r62, 52429				# 23476
	fcmp	r62, r28
	ble		.b47880				# 3098
	b		.b47881
.b47862:
	addi	r28, r0, 0				# 16998
	lw		r28, 0(r26)				# 23423
	addi	r62, r0, 0				# 23498
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47884				# 23849
	b		.b47885
.b47834:
	lw		r28, 0(r50)				# 15996
	fsub	r19, r28, r12				# 15995
	lw		r28, 1(r50)				# 15995
	fmul	r19, r19, r28				# 15986
	lw		r42, 1(r54)				# 16056
	fmul	r33, r19, r42				# 16056
	fadd	r33, r33, r62				# 16050
	fabs	r56, r33				# 322
	lw		r33, 4(r1)				# 3920
	lw		r59, 1(r33)				# 16043
	fcmp	r59, r56
	ble		.b47837				# 3098
.b47838:
	lw		r56, 2(r54)				# 16117
	fmul	r56, r19, r56				# 16117
	fadd	r56, r56, r27				# 16111
	fabs	r36, r56				# 322
	lw		r56, 2(r33)				# 16104
	fcmp	r56, r36
	ble		.b47839				# 3098
.b47840:
	fcmp	r28, r13
	beq		.b47841				# 3128
.b47842:
	addi	r28, r0, 1				# 16157
.b47844:
	sw		r19, 0(r26)				# 16226
	addi	r28, r0, 1				# 16249
	lw		r28, 0(r26)				# 23423
	addis	r62, r0, 48716
	ori		r62, r62, 52429				# 23476
	fcmp	r62, r28
	ble		.b47880				# 3098
	b		.b47881
.b47841:
	addi	r28, r0, 0				# 16157
.b47843:
	lw		r28, 2(r50)				# 16269
	fsub	r28, r28, r62				# 16268
	lw		r19, 3(r50)				# 16268
	fmul	r56, r28, r19				# 16259
	lw		r47, 0(r54)				# 16330
	fmul	r28, r56, r47				# 16330
	fadd	r28, r28, r12				# 16324
	fabs	r28, r28				# 322
	lw		r36, 0(r33)				# 16317
	fcmp	r36, r28
	ble		.b47846				# 3098
.b47847:
	lw		r28, 2(r54)				# 16391
	fmul	r28, r56, r28				# 16391
	fadd	r28, r28, r27				# 16385
	fabs	r28, r28				# 322
	lw		r33, 2(r33)				# 16378
	fcmp	r33, r28
	ble		.b47848				# 3098
.b47849:
	fcmp	r19, r13
	beq		.b47850				# 3128
.b47851:
	addi	r28, r0, 1				# 16431
.b47853:
	sw		r56, 0(r26)				# 16500
	addi	r28, r0, 2				# 16523
	lw		r28, 0(r26)				# 23423
	addis	r62, r0, 48716
	ori		r62, r62, 52429				# 23476
	fcmp	r62, r28
	ble		.b47880				# 3098
	b		.b47881
.b47850:
	addi	r28, r0, 0				# 16431
.b47852:
	lw		r28, 4(r50)				# 16543
	fsub	r28, r28, r27				# 16542
	lw		r50, 5(r50)				# 16542
	fmul	r19, r28, r50				# 16533
	fmul	r28, r19, r47				# 16604
	fadd	r28, r28, r12				# 16598
	fabs	r28, r28				# 322
	fcmp	r36, r28
	ble		.b47854				# 3098
.b47855:
	fmul	r28, r19, r42				# 16665
	fadd	r28, r28, r62				# 16659
	fabs	r28, r28				# 322
	fcmp	r59, r28
	ble		.b47856				# 3098
.b47857:
	fcmp	r50, r13
	beq		.b47858				# 3128
.b47859:
	sw		r19, 0(r26)				# 16774
	addi	r28, r0, 3				# 16797
	lw		r28, 0(r26)				# 23423
	addis	r62, r0, 48716
	ori		r62, r62, 52429				# 23476
	fcmp	r62, r28
	ble		.b47880				# 3098
	b		.b47881
.b47858:
	addi	r28, r0, 0				# 16811
	lw		r28, 0(r26)				# 23423
	addi	r62, r0, 0				# 23498
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47884				# 23849
	b		.b47885
.b47856:
	addi	r28, r0, 0				# 16811
	lw		r28, 0(r26)				# 23423
	addi	r62, r0, 0				# 23498
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47884				# 23849
	b		.b47885
.b47854:
	addi	r28, r0, 0				# 16811
	lw		r28, 0(r26)				# 23423
	addi	r62, r0, 0				# 23498
	lw		r28, 6(r1)				# 3372
	cmpi	r28, 0
	beq		.b47884				# 23849
	b		.b47885
.b47848:
	addi	r28, r0, 0				# 16467
	b		.b47852				# 16306
.b47846:
	addi	r28, r0, 0				# 16482
	b		.b47852				# 16306
.b47839:
	addi	r28, r0, 0				# 16193
	b		.b47843				# 16033
.b47837:
	addi	r28, r0, 0				# 16208
	b		.b47843				# 16033
.b47823:
	addi	r61, r0, 0				# 24739
	b		.b47940				# 24441
.b47819:
	fsqrt	r61, r28				# 227
	fsub	r61, r62, r61				# 17458
	lw		r28, 4(r12)				# 17458
	fmul	r61, r61, r28				# 17439
	sw		r61, 0(r26)				# 17439
	addi	r61, r0, 1				# 17498
	lw		r61, 0(r26)				# 24609
	fcmp	r39, r61
	ble		.b47823				# 3098
	b		.b47824
.b47816:
	addi	r61, r0, 0				# 17510
	addi	r61, r0, 0				# 24751
	b		.b47940				# 24441
.b47814:
	addis	r28, r0, 16256				# 17260
	fsub	r61, r61, r28				# 17260
	b		.b47813				# 17260
.b47811:
	cmpi	r1, 3
	beq		.b47814				# 17239
	b		.b47815
.b47808:
	addi	r61, r0, 0				# 17102
	addi	r61, r0, 0				# 24751
	b		.b47940				# 24441
.b47804:
	lw		r61, 0(r12)				# 16870
	fcmp	r13, r61
	ble		.b47806				# 3188
.b47807:
	lw		r61, 1(r12)				# 16924
	fmul	r28, r61, r53				# 16924
	lw		r61, 2(r12)				# 16944
	fmul	r61, r61, r50				# 16924
	fadd	r61, r28, r61				# 16924
	lw		r28, 3(r12)				# 16964
	fmul	r28, r28, r33				# 16924
	fadd	r61, r61, r28				# 16899
	sw		r61, 0(r26)				# 16899
	addi	r61, r0, 1				# 16986
	lw		r61, 0(r26)				# 24609
	fcmp	r39, r61
	ble		.b47823				# 3098
	b		.b47824
.b47806:
	addi	r61, r0, 0				# 16998
	addi	r61, r0, 0				# 24751
	b		.b47940				# 24441
.b47778:
	lw		r61, 0(r12)				# 15996
	fsub	r61, r61, r53				# 15995
	lw		r62, 1(r12)				# 15995
	fmul	r28, r61, r62				# 15986
	lw		r1, 1(r54)				# 16056
	fmul	r61, r28, r1				# 16056
	fadd	r61, r61, r50				# 16050
	fabs	r19, r61				# 322
	lw		r36, 4(r15)				# 3920
	lw		r61, 1(r36)				# 16043
	fcmp	r61, r19
	ble		.b47781				# 3098
.b47782:
	lw		r15, 2(r54)				# 16117
	fmul	r15, r28, r15				# 16117
	fadd	r15, r15, r33				# 16111
	fabs	r19, r15				# 322
	lw		r15, 2(r36)				# 16104
	fcmp	r15, r19
	ble		.b47783				# 3098
.b47784:
	fcmp	r62, r13
	beq		.b47785				# 3128
.b47786:
	addi	r62, r0, 1				# 16157
.b47788:
	sw		r28, 0(r26)				# 16226
	addi	r61, r0, 1				# 16249
	lw		r61, 0(r26)				# 24609
	fcmp	r39, r61
	ble		.b47823				# 3098
	b		.b47824
.b47785:
	addi	r62, r0, 0				# 16157
.b47787:
	lw		r28, 2(r12)				# 16269
	fsub	r28, r28, r50				# 16268
	lw		r42, 3(r12)				# 16268
	fmul	r15, r28, r42				# 16259
	lw		r19, 0(r54)				# 16330
	fmul	r28, r15, r19				# 16330
	fadd	r28, r28, r53				# 16324
	fabs	r28, r28				# 322
	lw		r62, 0(r36)				# 16317
	fcmp	r62, r28
	ble		.b47790				# 3098
.b47791:
	lw		r28, 2(r54)				# 16391
	fmul	r28, r15, r28				# 16391
	fadd	r28, r28, r33				# 16385
	fabs	r56, r28				# 322
	lw		r28, 2(r36)				# 16378
	fcmp	r28, r56
	ble		.b47792				# 3098
.b47793:
	fcmp	r42, r13
	beq		.b47794				# 3128
.b47795:
	addi	r28, r0, 1				# 16431
.b47797:
	sw		r15, 0(r26)				# 16500
	addi	r61, r0, 2				# 16523
	lw		r61, 0(r26)				# 24609
	fcmp	r39, r61
	ble		.b47823				# 3098
	b		.b47824
.b47794:
	addi	r28, r0, 0				# 16431
.b47796:
	lw		r28, 4(r12)				# 16543
	fsub	r28, r28, r33				# 16542
	lw		r12, 5(r12)				# 16542
	fmul	r28, r28, r12				# 16533
	fmul	r15, r28, r19				# 16604
	fadd	r15, r15, r53				# 16598
	fabs	r15, r15				# 322
	fcmp	r62, r15
	ble		.b47798				# 3098
.b47799:
	fmul	r62, r28, r1				# 16665
	fadd	r62, r62, r50				# 16659
	fabs	r62, r62				# 322
	fcmp	r61, r62
	ble		.b47800				# 3098
.b47801:
	fcmp	r12, r13
	beq		.b47802				# 3128
.b47803:
	sw		r28, 0(r26)				# 16774
	addi	r61, r0, 3				# 16797
	lw		r61, 0(r26)				# 24609
	fcmp	r39, r61
	ble		.b47823				# 3098
	b		.b47824
.b47802:
	addi	r61, r0, 0				# 16811
	addi	r61, r0, 0				# 24751
	b		.b47940				# 24441
.b47800:
	addi	r61, r0, 0				# 16811
	addi	r61, r0, 0				# 24751
	b		.b47940				# 24441
.b47798:
	addi	r61, r0, 0				# 16811
	addi	r61, r0, 0				# 24751
	b		.b47940				# 24441
.b47792:
	addi	r28, r0, 0				# 16467
	b		.b47796				# 16306
.b47790:
	addi	r28, r0, 0				# 16482
	b		.b47796				# 16306
.b47783:
	addi	r62, r0, 0				# 16193
	b		.b47787				# 16033
.b47781:
	addi	r62, r0, 0				# 16208
	b		.b47787				# 16033
.b47775:
	addi	r61, r0, 1				# 24483
	addi	r62, r0, 1				# 24006
	lwx		r61, r48, r62				# 24006
	cmpi	r61, -1
	beq		.b47944				# 24037
	b		.b47945
.b47759:
	lw		r9, 0(r57)				# 31118
	lw		r28, 5(r23)				# 4475
	lw		r61, 0(r28)				# 31118
	fsub	r9, r9, r61				# 31117
	lw		r15, 4(r23)				# 3734
	lw		r61, 0(r15)				# 31144
	fsqrt	r61, r61				# 227
	fmul	r19, r9, r61				# 31108
	lw		r61, 2(r57)				# 31181
	lw		r9, 2(r28)				# 31181
	fsub	r61, r61, r9				# 31180
	lw		r9, 2(r15)				# 31207
	fsqrt	r9, r9				# 227
	fmul	r61, r61, r9				# 31171
	fmul	r62, r19, r19				# 31243
	fmul	r9, r61, r61				# 31243
	fadd	r29, r62, r9				# 31234
	fabs	r9, r19				# 322
	addis	r62, r0, 14545
	ori		r62, r62, 46871				# 31291
	fcmp	r62, r9
	ble		.b47762				# 3098
.b47763:
	addis	r61, r0, 16752				# 31320
.b47761:
	ffloor	r9, r61				# 765
	fsub	r19, r61, r9				# 31412
	lw		r9, 1(r57)				# 31456
	lw		r61, 1(r28)				# 31456
	fsub	r9, r9, r61				# 31455
	lw		r61, 1(r15)				# 31482
	fsqrt	r61, r61				# 227
	fmul	r9, r9, r61				# 31446
	fabs	r61, r29				# 322
	fcmp	r62, r61
	ble		.b47765				# 3098
.b47766:
	addis	r9, r0, 16752				# 31556
.b47764:
	ffloor	r61, r9				# 765
	fsub	r62, r9, r61				# 31646
	addis	r61, r0, 15897
	ori		r61, r61, 39322				# 31690
	addis	r28, r0, 16128				# 31705
	fsub	r9, r28, r19				# 31699
	fmul	r9, r9, r9				# 31690
	fsub	r9, r61, r9				# 31690
	fsub	r61, r28, r62				# 31721
	fmul	r61, r61, r61				# 31690
	fsub	r9, r9, r61				# 31680
	fcmp	r13, r9
	ble		.b47768				# 3188
.b47769:
	addi	r9, r0, 0				# 31776
.b47767:
	fmul	r61, r48, r9				# 31817
	addis	r9, r0, 16025
	ori		r9, r9, 39322				# 31817
	fdiv	r9, r61, r9				# 31796
	sw		r9, 2(r41)				# 31796
	b		.b47739				# 31796
.b47768:
	b		.b47767				# 31785
.b47765:
	fdiv	r9, r9, r29				# 31582
	fabs	r9, r9				# 322
	fatan	r61, r9				# 440
	addis	r9, r0, 16880				# 31603
	fmul	r9, r61, r9				# 31602
	addis	r61, r0, 16457
	ori		r61, r61, 4059				# 31602
	fdiv	r9, r9, r61				# 31602
	b		.b47764				# 31602
.b47762:
	fdiv	r9, r61, r19				# 31347
	fabs	r9, r9				# 322
	fatan	r61, r9				# 440
	addis	r9, r0, 16880				# 31369
	fmul	r9, r61, r9				# 31368
	addis	r61, r0, 16457
	ori		r61, r61, 4059				# 31368
	fdiv	r61, r9, r61				# 31368
	b		.b47761				# 31368
.b47757:
	lw		r28, 0(r57)				# 30784
	lw		r9, 5(r23)				# 4475
	lw		r61, 0(r9)				# 30784
	fsub	r61, r28, r61				# 30775
	lw		r28, 2(r57)				# 30823
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
	fmul	r61, r9, r9				# 30954
	fmul	r9, r61, r48				# 30987
	sw		r9, 1(r41)				# 30987
	addis	r9, r0, 16256				# 31050
	fsub	r9, r9, r61				# 31049
	fmul	r9, r9, r48				# 31028
	sw		r9, 2(r41)				# 31028
	b		.b47739				# 31028
.b47755:
	lw		r61, 1(r57)				# 30625
	addis	r9, r0, 16000				# 30625
	fmul	r9, r61, r9				# 30620
	fsin	r9, r9				# 40
	fmul	r61, r9, r9				# 30605
	fmul	r9, r48, r61				# 30650
	sw		r9, 0(r41)				# 30650
	addis	r9, r0, 16256				# 30721
	fsub	r9, r9, r61				# 30711
	fmul	r9, r48, r9				# 30690
	sw		r9, 1(r41)				# 30690
	b		.b47739				# 30690
.b47740:
	lw		r9, 0(r57)				# 30169
	lw		r62, 5(r23)				# 4475
	lw		r61, 0(r62)				# 30169
	fsub	r28, r9, r61				# 30160
	addis	r15, r0, 15692
	ori		r15, r15, 52429				# 30234
	fmul	r9, r28, r15				# 30227
	ffloor	r9, r9				# 765
	addis	r61, r0, 16800				# 30226
	fmul	r9, r9, r61				# 30217
	fsub	r9, r28, r9				# 30264
	addis	r28, r0, 16672				# 30264
	fcmp	r28, r9
	ble		.b47743				# 3098
.b47744:
	addi	r48, r0, 1				# 3098
.b47742:
	lw		r9, 2(r57)				# 30308
	lw		r62, 2(r62)				# 30308
	fsub	r62, r9, r62				# 30299
	fmul	r9, r62, r15				# 30366
	ffloor	r9, r9				# 765
	fmul	r9, r9, r61				# 30356
	fsub	r9, r62, r9				# 30404
	fcmp	r28, r9
	ble		.b47746				# 3098
.b47747:
	addi	r9, r0, 1				# 3098
	cmpi	r48, 0
	beq		.b47749				# 30467
.b47750:
	cmpi	r9, 0
	beq		.b47753				# 30489
.b47754:
	addis	r9, r0, 17279				# 30503
	sw		r9, 1(r41)				# 30439
	b		.b47739				# 30439
.b47753:
	addi	r9, r0, 0				# 30514
	sw		r9, 1(r41)				# 30439
	b		.b47739				# 30439
.b47749:
	cmpi	r9, 0
	beq		.b47751				# 30532
.b47752:
	addi	r9, r0, 0				# 30546
	sw		r9, 1(r41)				# 30439
	b		.b47739				# 30439
.b47751:
	addis	r9, r0, 17279				# 30555
	sw		r9, 1(r41)				# 30439
	b		.b47739				# 30439
.b47746:
	addi	r9, r0, 0				# 3098
	cmpi	r48, 0
	beq		.b47749				# 30467
	b		.b47750
.b47743:
	addi	r48, r0, 0				# 3098
	b		.b47742				# 3098
.b47737:
	addis	r9, r0, 16256				# 1837
	fdiv	r61, r9, r61				# 1837
	b		.b47734				# 1837
.b47735:
	addis	r61, r0, 16256				# 1801
	b		.b47734				# 1801
.b47732:
	sw		r14, 0(r46)				# 29409
	sw		r12, 1(r46)				# 29409
	sw		r61, 2(r46)				# 29455
	b		.b47731				# 29455
.b47729:
	lw		r9, 4(r23)				# 3734
	lw		r61, 0(r9)				# 28996
	fneg	r61, r61				# 28981
	sw		r61, 0(r46)				# 28981
	lw		r61, 1(r9)				# 29034
	fneg	r61, r61				# 29019
	sw		r61, 1(r46)				# 28981
	lw		r9, 2(r9)				# 29071
	fneg	r9, r9				# 29056
	sw		r9, 2(r46)				# 29056
	b		.b47721				# 29056
.b47722:
	lw		r9, 0(r19)				# 28828
	sw		r13, 0(r46)				# 1232
	sw		r13, 1(r46)				# 1232
	sw		r13, 2(r46)				# 28868
	addi	r28, r9, -1				# 28888
	lwx		r9, r61, r28				# 28918
	fcmp	r9, r13
	beq		.b47725				# 3128
.b47726:
	fcmp	r9, r13
	ble		.b47727				# 3158
.b47728:
	addis	r9, r0, 16256				# 856
	fneg	r9, r9				# 28888
	swx		r9, r28, r46				# 28888
	b		.b47721				# 28888
.b47727:
	addis	r9, r0, 49024				# 868
	fneg	r9, r9				# 28888
	swx		r9, r28, r46				# 28888
	b		.b47721				# 28888
.b47725:
	addi	r9, r0, 0				# 828
	fneg	r9, r9				# 28888
	swx		r9, r28, r46				# 28888
	b		.b47721				# 28888
.b47719:
	blr				# 35510
.b47717:
	blr				# 35510
.b47709:
	addi	r61, r0, 1				# 775
	addi	r61, r0, 0				# 22625
.b47713:
	addi	r28, r28, 1				# 23162
	lwx		r61, r56, r28				# 23025
	cmpi	r61, -1
	beq		.b47669				# 23052
	b		.b47670
.b47669:
	addi	r61, r0, 1				# 23074
.b47716:
	sw		r33, 0(r14)				# 27393
	sw		r27, 0(r57)				# 1162
	sw		r36, 1(r57)				# 1162
	sw		r59, 2(r57)				# 27393
	sw		r50, 0(r29)				# 27393
	sw		r47, 0(r19)				# 27485
	b		.b47662				# 27485
.b47707:
	cmpi	r61, 0
	beq		.b47711				# 22625
.b47712:
	addi	r61, r0, 0				# 22625
	b		.b47713				# 23092
.b47711:
	addi	r61, r0, 1				# 22625
	addi	r61, r0, 0				# 23141
	b		.b47662				# 27336
.b47704:
	addi	r61, r0, 0				# 3188
	cmpi	r23, 0
	beq		.b47707				# 765
	b		.b47708
.b47701:
	addis	r23, r0, 16256				# 22604
	fsub	r61, r61, r23				# 22604
	lw		r23, 6(r35)				# 3372
	fcmp	r13, r61
	ble		.b47704				# 3188
	b		.b47705
.b47698:
	cmpi	r42, 3
	beq		.b47701				# 22583
	b		.b47702
.b47685:
	lw		r42, 4(r35)				# 4293
	lw		r61, 0(r42)				# 2037
	fmul	r61, r61, r12				# 2037
	lw		r23, 1(r42)				# 2052
	fmul	r23, r23, r38				# 2037
	fadd	r61, r61, r23				# 2037
	lw		r23, 2(r42)				# 2067
	fmul	r23, r23, r44				# 2037
	fadd	r61, r61, r23				# 22411
	lw		r23, 6(r35)				# 3372
	fcmp	r13, r61
	ble		.b47688				# 3188
.b47689:
	addi	r61, r0, 1				# 3188
	cmpi	r23, 0
	beq		.b47691				# 765
.b47692:
	cmpi	r61, 0
	beq		.b47693				# 775
.b47694:
	addi	r61, r0, 0				# 775
	addi	r61, r0, 1				# 22459
	addi	r61, r0, 0				# 23141
	b		.b47662				# 27336
.b47693:
	addi	r61, r0, 1				# 775
	addi	r61, r0, 0				# 22459
	b		.b47713				# 23092
.b47691:
	cmpi	r61, 0
	beq		.b47695				# 22459
.b47696:
	addi	r61, r0, 0				# 22459
	b		.b47713				# 23092
.b47695:
	addi	r61, r0, 1				# 22459
	addi	r61, r0, 0				# 23141
	b		.b47662				# 27336
.b47688:
	addi	r61, r0, 0				# 3188
	cmpi	r23, 0
	beq		.b47691				# 765
	b		.b47692
.b47672:
	fabs	r23, r12				# 322
	lw		r12, 4(r35)				# 3734
	lw		r61, 0(r12)				# 22178
	fcmp	r61, r23
	ble		.b47675				# 3098
.b47676:
	fabs	r23, r38				# 322
	lw		r61, 1(r12)				# 22224
	fcmp	r61, r23
	ble		.b47677				# 3098
.b47678:
	fabs	r61, r44				# 322
	lw		r23, 2(r12)				# 22261
	fcmp	r23, r61
	ble		.b47679				# 3098
.b47680:
	addi	r61, r0, 1				# 3098
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47713				# 23092
.b47714:
	addi	r61, r0, 0				# 23141
	b		.b47662				# 27336
.b47679:
	addi	r61, r0, 0				# 3098
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47683				# 22348
.b47684:
	addi	r61, r0, 0				# 22348
	b		.b47713				# 23092
.b47683:
	addi	r61, r0, 1				# 22348
	addi	r61, r0, 0				# 23141
	b		.b47662				# 27336
.b47677:
	addi	r61, r0, 0				# 22302
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47683				# 22348
	b		.b47684
.b47675:
	addi	r61, r0, 0				# 22317
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47683				# 22348
	b		.b47684
.b47656:
	fsqrt	r61, r28				# 227
	fsub	r28, r23, r61				# 18540
	lw		r61, 4(r20)				# 18540
	fmul	r61, r28, r61				# 18521
	sw		r61, 0(r26)				# 18521
	addi	r47, r0, 1				# 18580
	lw		r61, 0(r26)				# 27058
	fcmp	r61, r13
	ble		.b47662				# 3098
	b		.b47664
.b47653:
	addi	r47, r0, 0				# 18592
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47616				# 27653
.b47661:
	addi	r62, r62, 1				# 27691
	lw		r59, 0(r1)				# 8078
	lwx		r50, r56, r62				# 26915
	cmpi	r50, -1
	beq		.b47616				# 26952
	b		.b47619
.b47651:
	addi	r47, r0, 0				# 18252
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47616				# 27653
	b		.b47661
.b47647:
	lw		r28, 0(r20)				# 18051
	fcmp	r13, r28
	ble		.b47649				# 3188
.b47650:
	lw		r61, 3(r33)				# 18099
	fmul	r61, r28, r61				# 18080
	sw		r61, 0(r26)				# 18080
	addi	r47, r0, 1				# 18129
	lw		r61, 0(r26)				# 27058
	fcmp	r61, r13
	ble		.b47662				# 3098
	b		.b47664
.b47649:
	addi	r47, r0, 0				# 18141
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47616				# 27653
	b		.b47661
.b47621:
	lw		r61, 0(r20)				# 15996
	fsub	r61, r61, r38				# 15995
	lw		r47, 1(r20)				# 15995
	fmul	r42, r61, r47				# 15986
	lw		r33, 1(r59)				# 16056
	fmul	r61, r42, r33				# 16056
	fadd	r61, r61, r36				# 16050
	fabs	r61, r61				# 322
	lw		r12, 4(r35)				# 3920
	lw		r27, 1(r12)				# 16043
	fcmp	r27, r61
	ble		.b47624				# 3098
.b47625:
	lw		r61, 2(r59)				# 16117
	fmul	r61, r42, r61				# 16117
	fadd	r61, r61, r23				# 16111
	fabs	r28, r61				# 322
	lw		r61, 2(r12)				# 16104
	fcmp	r61, r28
	ble		.b47626				# 3098
.b47627:
	fcmp	r47, r13
	beq		.b47628				# 3128
.b47629:
	addi	r61, r0, 1				# 16157
.b47631:
	sw		r42, 0(r26)				# 16226
	addi	r47, r0, 1				# 16249
	lw		r61, 0(r26)				# 27058
	fcmp	r61, r13
	ble		.b47662				# 3098
	b		.b47664
.b47628:
	addi	r61, r0, 0				# 16157
.b47630:
	lw		r61, 2(r20)				# 16269
	fsub	r61, r61, r36				# 16268
	lw		r47, 3(r20)				# 16268
	fmul	r61, r61, r47				# 16259
	lw		r28, 0(r59)				# 16330
	fmul	r42, r61, r28				# 16330
	fadd	r42, r42, r38				# 16324
	fabs	r42, r42				# 322
	lw		r44, 0(r12)				# 16317
	fcmp	r44, r42
	ble		.b47633				# 3098
.b47634:
	lw		r42, 2(r59)				# 16391
	fmul	r42, r61, r42				# 16391
	fadd	r42, r42, r23				# 16385
	fabs	r42, r42				# 322
	lw		r12, 2(r12)				# 16378
	fcmp	r12, r42
	ble		.b47635				# 3098
.b47636:
	fcmp	r47, r13
	beq		.b47637				# 3128
.b47638:
	addi	r12, r0, 1				# 16431
.b47640:
	sw		r61, 0(r26)				# 16500
	addi	r47, r0, 2				# 16523
	lw		r61, 0(r26)				# 27058
	fcmp	r61, r13
	ble		.b47662				# 3098
	b		.b47664
.b47637:
	addi	r12, r0, 0				# 16431
.b47639:
	lw		r61, 4(r20)				# 16543
	fsub	r61, r61, r23				# 16542
	lw		r12, 5(r20)				# 16542
	fmul	r23, r61, r12				# 16533
	fmul	r61, r23, r28				# 16604
	fadd	r61, r61, r38				# 16598
	fabs	r61, r61				# 322
	fcmp	r44, r61
	ble		.b47641				# 3098
.b47642:
	fmul	r61, r23, r33				# 16665
	fadd	r61, r61, r36				# 16659
	fabs	r61, r61				# 322
	fcmp	r27, r61
	ble		.b47643				# 3098
.b47644:
	fcmp	r12, r13
	beq		.b47645				# 3128
.b47646:
	sw		r23, 0(r26)				# 16774
	addi	r47, r0, 3				# 16797
	lw		r61, 0(r26)				# 27058
	fcmp	r61, r13
	ble		.b47662				# 3098
	b		.b47664
.b47645:
	addi	r47, r0, 0				# 16811
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47616				# 27653
	b		.b47661
.b47643:
	addi	r47, r0, 0				# 16811
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47616				# 27653
	b		.b47661
.b47641:
	addi	r47, r0, 0				# 16811
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47616				# 27653
	b		.b47661
.b47635:
	addi	r12, r0, 0				# 16467
	b		.b47639				# 16306
.b47633:
	addi	r12, r0, 0				# 16482
	b		.b47639				# 16306
.b47626:
	addi	r61, r0, 0				# 16193
	b		.b47630				# 16033
.b47624:
	addi	r61, r0, 0				# 16208
	b		.b47630				# 16033
.b47607:
	fsqrt	r9, r9				# 227
	fsub	r9, r23, r9				# 18540
	lw		r61, 4(r62)				# 18540
	fmul	r9, r9, r61				# 18521
	sw		r9, 0(r26)				# 18521
	addi	r9, r0, 1				# 18580
	lw		r61, 0(r26)				# 28381
	lw		r9, 0(r14)				# 28414
	fcmp	r9, r61
	ble		.b47464				# 3098
	b		.b47612
.b47604:
	addi	r9, r0, 0				# 18592
	b		.b47464				# 28364
.b47602:
	addi	r9, r0, 0				# 18252
	b		.b47464				# 28364
.b47598:
	lw		r61, 0(r62)				# 18051
	fcmp	r13, r61
	ble		.b47600				# 3188
.b47601:
	lw		r9, 3(r28)				# 18099
	fmul	r9, r61, r9				# 18080
	sw		r9, 0(r26)				# 18080
	addi	r9, r0, 1				# 18129
	lw		r61, 0(r26)				# 28381
	lw		r9, 0(r14)				# 28414
	fcmp	r9, r61
	ble		.b47464				# 3098
	b		.b47612
.b47600:
	addi	r9, r0, 0				# 18141
	b		.b47464				# 28364
.b47572:
	lw		r56, 0(r1)				# 8078
	lw		r61, 0(r62)				# 15996
	fsub	r61, r61, r9				# 15995
	lw		r28, 1(r62)				# 15995
	fmul	r23, r61, r28				# 15986
	lw		r33, 1(r56)				# 16056
	fmul	r61, r23, r33				# 16056
	fadd	r61, r61, r42				# 16050
	fabs	r61, r61				# 322
	lw		r36, 4(r12)				# 3920
	lw		r27, 1(r36)				# 16043
	fcmp	r27, r61
	ble		.b47575				# 3098
.b47576:
	lw		r61, 2(r56)				# 16117
	fmul	r61, r23, r61				# 16117
	fadd	r61, r61, r50				# 16111
	fabs	r61, r61				# 322
	lw		r12, 2(r36)				# 16104
	fcmp	r12, r61
	ble		.b47577				# 3098
.b47578:
	fcmp	r28, r13
	beq		.b47579				# 3128
.b47580:
	addi	r61, r0, 1				# 16157
.b47582:
	sw		r23, 0(r26)				# 16226
	addi	r9, r0, 1				# 16249
	lw		r61, 0(r26)				# 28381
	lw		r9, 0(r14)				# 28414
	fcmp	r9, r61
	ble		.b47464				# 3098
	b		.b47612
.b47579:
	addi	r61, r0, 0				# 16157
.b47581:
	lw		r61, 2(r62)				# 16269
	fsub	r61, r61, r42				# 16268
	lw		r47, 3(r62)				# 16268
	fmul	r12, r61, r47				# 16259
	lw		r23, 0(r56)				# 16330
	fmul	r61, r12, r23				# 16330
	fadd	r61, r61, r9				# 16324
	fabs	r61, r61				# 322
	lw		r28, 0(r36)				# 16317
	fcmp	r28, r61
	ble		.b47584				# 3098
.b47585:
	lw		r61, 2(r56)				# 16391
	fmul	r61, r12, r61				# 16391
	fadd	r61, r61, r50				# 16385
	fabs	r61, r61				# 322
	lw		r56, 2(r36)				# 16378
	fcmp	r56, r61
	ble		.b47586				# 3098
.b47587:
	fcmp	r47, r13
	beq		.b47588				# 3128
.b47589:
	addi	r61, r0, 1				# 16431
.b47591:
	sw		r12, 0(r26)				# 16500
	addi	r9, r0, 2				# 16523
	lw		r61, 0(r26)				# 28381
	lw		r9, 0(r14)				# 28414
	fcmp	r9, r61
	ble		.b47464				# 3098
	b		.b47612
.b47588:
	addi	r61, r0, 0				# 16431
.b47590:
	lw		r61, 4(r62)				# 16543
	fsub	r61, r61, r50				# 16542
	lw		r50, 5(r62)				# 16542
	fmul	r61, r61, r50				# 16533
	fmul	r62, r61, r23				# 16604
	fadd	r9, r62, r9				# 16598
	fabs	r9, r9				# 322
	fcmp	r28, r9
	ble		.b47592				# 3098
.b47593:
	fmul	r9, r61, r33				# 16665
	fadd	r9, r9, r42				# 16659
	fabs	r9, r9				# 322
	fcmp	r27, r9
	ble		.b47594				# 3098
.b47595:
	fcmp	r50, r13
	beq		.b47596				# 3128
.b47597:
	sw		r61, 0(r26)				# 16774
	addi	r9, r0, 3				# 16797
	lw		r61, 0(r26)				# 28381
	lw		r9, 0(r14)				# 28414
	fcmp	r9, r61
	ble		.b47464				# 3098
	b		.b47612
.b47596:
	addi	r9, r0, 0				# 16811
	b		.b47464				# 28364
.b47594:
	addi	r9, r0, 0				# 16811
	b		.b47464				# 28364
.b47592:
	addi	r9, r0, 0				# 16811
	b		.b47464				# 28364
.b47586:
	addi	r61, r0, 0				# 16467
	b		.b47590				# 16306
.b47584:
	addi	r61, r0, 0				# 16482
	b		.b47590				# 16306
.b47577:
	addi	r61, r0, 0				# 16193
	b		.b47581				# 16033
.b47575:
	addi	r61, r0, 0				# 16208
	b		.b47581				# 16033
.b47465:
	addi	r9, r0, 1				# 27829
	lwx		r61, r17, r9				# 27829
	cmpi	r61, -1
	beq		.b47464				# 27860
.b47469:
	lwx		r53, r25, r61				# 27885
	addi	r28, r0, 0				# 26885
	lw		r47, 0(r1)				# 8078
	lwx		r33, r53, r28				# 26915
	cmpi	r33, -1
	beq		.b47470				# 26952
.b47473:
	lwx		r27, r7, r33				# 18636
	lw		r62, 10(r27)				# 6561
	lw		r35, 0(r62)				# 18698
	lw		r56, 1(r62)				# 18723
	lw		r20, 2(r62)				# 18748
	lw		r61, 1(r1)				# 8141
	lwx		r59, r61, r33				# 18807
	lw		r61, 1(r27)				# 2994
	cmpi	r61, 1
	beq		.b47475				# 18869
.b47476:
	cmpi	r61, 2
	beq		.b47501				# 18950
.b47502:
	lw		r50, 0(r59)				# 18204
	fcmp	r50, r13
	beq		.b47505				# 3128
.b47506:
	lw		r61, 1(r59)				# 18278
	fmul	r23, r61, r35				# 18278
	lw		r61, 2(r59)				# 18298
	fmul	r61, r61, r56				# 18278
	fadd	r61, r23, r61				# 18278
	lw		r23, 3(r59)				# 18318
	fmul	r23, r23, r20				# 18278
	fadd	r23, r61, r23				# 18265
	lw		r61, 3(r62)				# 18342
	fmul	r62, r23, r23				# 18377
	fmul	r61, r50, r61				# 18377
	fsub	r62, r62, r61				# 18369
	fcmp	r62, r13
	ble		.b47507				# 3158
.b47508:
	lw		r61, 6(r27)				# 3372
	cmpi	r61, 0
	beq		.b47510				# 18435
.b47511:
	fsqrt	r61, r62				# 227
	fadd	r62, r23, r61				# 18476
	lw		r61, 4(r59)				# 18476
	fmul	r61, r62, r61				# 18457
	sw		r61, 0(r26)				# 18457
	addi	r42, r0, 1				# 18580
	lw		r62, 0(r26)				# 27058
	fcmp	r62, r13
	ble		.b47516				# 3098
.b47518:
	lw		r61, 0(r14)				# 27125
	fcmp	r61, r62
	ble		.b47516				# 3098
.b47520:
	addis	r61, r0, 15395
	ori		r61, r61, 55050				# 27169
	fadd	r56, r62, r61				# 27161
	lw		r61, 0(r47)				# 27198
	fmul	r62, r61, r56				# 27198
	lw		r61, 0(r39)				# 27198
	fadd	r36, r62, r61				# 27189
	lw		r61, 1(r47)				# 27247
	fmul	r61, r61, r56				# 27247
	lw		r62, 1(r39)				# 27247
	fadd	r27, r61, r62				# 27238
	lw		r61, 2(r47)				# 27296
	fmul	r61, r61, r56				# 27296
	lw		r62, 2(r39)				# 27296
	fadd	r23, r61, r62				# 27287
	addi	r62, r0, 0				# 23025
	lwx		r61, r53, r62				# 23025
	cmpi	r61, -1
	beq		.b47523				# 23052
.b47524:
	lwx		r35, r7, r61				# 23095
	lw		r50, 5(r35)				# 4475
	lw		r61, 0(r50)				# 22709
	fsub	r44, r36, r61				# 22700
	lw		r61, 1(r50)				# 22741
	fsub	r38, r27, r61				# 22732
	lw		r61, 2(r50)				# 22773
	fsub	r47, r23, r61				# 22764
	lw		r59, 1(r35)				# 2994
	cmpi	r59, 1
	beq		.b47526				# 22824
.b47527:
	cmpi	r59, 2
	beq		.b47539				# 22882
.b47540:
	fmul	r61, r44, r44				# 14374
	lw		r12, 4(r35)				# 3734
	lw		r50, 0(r12)				# 14374
	fmul	r61, r61, r50				# 14374
	fmul	r50, r38, r38				# 14400
	lw		r20, 1(r12)				# 14400
	fmul	r50, r50, r20				# 14374
	fadd	r50, r61, r50				# 14374
	fmul	r20, r47, r47				# 14426
	lw		r61, 2(r12)				# 14426
	fmul	r61, r20, r61				# 14374
	fadd	r61, r50, r61				# 14354
	lw		r50, 3(r35)				# 3553
	cmpi	r50, 0
	beq		.b47552				# 14456
.b47553:
	fmul	r12, r38, r47				# 14522
	lw		r50, 9(r35)				# 5989
	lw		r20, 0(r50)				# 14522
	fmul	r12, r12, r20				# 14503
	fadd	r20, r61, r12				# 14503
	fmul	r12, r47, r44				# 14556
	lw		r61, 1(r50)				# 14556
	fmul	r61, r12, r61				# 14503
	fadd	r12, r20, r61				# 14503
	fmul	r61, r44, r38				# 14590
	lw		r50, 2(r50)				# 14590
	fmul	r61, r61, r50				# 14503
	fadd	r61, r12, r61				# 14503
	cmpi	r59, 3
	beq		.b47555				# 22583
.b47556:
	lw		r50, 6(r35)				# 3372
	fcmp	r13, r61
	ble		.b47558				# 3188
.b47559:
	addi	r61, r0, 1				# 3188
	cmpi	r50, 0
	beq		.b47561				# 765
.b47562:
	cmpi	r61, 0
	beq		.b47563				# 775
.b47564:
	addi	r61, r0, 0				# 775
	addi	r61, r0, 1				# 22625
	addi	r61, r0, 0				# 23141
.b47516:
	addi	r28, r28, 1				# 27573
	lw		r47, 0(r1)				# 8078
	lwx		r33, r53, r28				# 26915
	cmpi	r33, -1
	beq		.b47470				# 26952
	b		.b47473
.b47470:
	addi	r9, r9, 1				# 27971
	lwx		r61, r17, r9				# 27829
	cmpi	r61, -1
	beq		.b47464				# 27860
	b		.b47469
.b47563:
	addi	r61, r0, 1				# 775
	addi	r61, r0, 0				# 22625
.b47567:
	addi	r62, r62, 1				# 23162
	lwx		r61, r53, r62				# 23025
	cmpi	r61, -1
	beq		.b47523				# 23052
	b		.b47524
.b47523:
	addi	r61, r0, 1				# 23074
.b47570:
	sw		r56, 0(r14)				# 27393
	sw		r36, 0(r57)				# 1162
	sw		r27, 1(r57)				# 1162
	sw		r23, 2(r57)				# 27393
	sw		r33, 0(r29)				# 27393
	sw		r42, 0(r19)				# 27485
	b		.b47516				# 27485
.b47561:
	cmpi	r61, 0
	beq		.b47565				# 22625
.b47566:
	addi	r61, r0, 0				# 22625
	b		.b47567				# 23092
.b47565:
	addi	r61, r0, 1				# 22625
	addi	r61, r0, 0				# 23141
	b		.b47516				# 27336
.b47558:
	addi	r61, r0, 0				# 3188
	cmpi	r50, 0
	beq		.b47561				# 765
	b		.b47562
.b47555:
	addis	r50, r0, 16256				# 22604
	fsub	r61, r61, r50				# 22604
	lw		r50, 6(r35)				# 3372
	fcmp	r13, r61
	ble		.b47558				# 3188
	b		.b47559
.b47552:
	cmpi	r59, 3
	beq		.b47555				# 22583
	b		.b47556
.b47539:
	lw		r12, 4(r35)				# 4293
	lw		r61, 0(r12)				# 2037
	fmul	r61, r61, r44				# 2037
	lw		r50, 1(r12)				# 2052
	fmul	r50, r50, r38				# 2037
	fadd	r61, r61, r50				# 2037
	lw		r50, 2(r12)				# 2067
	fmul	r50, r50, r47				# 2037
	fadd	r61, r61, r50				# 22411
	lw		r50, 6(r35)				# 3372
	fcmp	r13, r61
	ble		.b47542				# 3188
.b47543:
	addi	r61, r0, 1				# 3188
	cmpi	r50, 0
	beq		.b47545				# 765
.b47546:
	cmpi	r61, 0
	beq		.b47547				# 775
.b47548:
	addi	r61, r0, 0				# 775
	addi	r61, r0, 1				# 22459
	addi	r61, r0, 0				# 23141
	b		.b47516				# 27336
.b47547:
	addi	r61, r0, 1				# 775
	addi	r61, r0, 0				# 22459
	b		.b47567				# 23092
.b47545:
	cmpi	r61, 0
	beq		.b47549				# 22459
.b47550:
	addi	r61, r0, 0				# 22459
	b		.b47567				# 23092
.b47549:
	addi	r61, r0, 1				# 22459
	addi	r61, r0, 0				# 23141
	b		.b47516				# 27336
.b47542:
	addi	r61, r0, 0				# 3188
	cmpi	r50, 0
	beq		.b47545				# 765
	b		.b47546
.b47526:
	fabs	r61, r44				# 322
	lw		r12, 4(r35)				# 3734
	lw		r50, 0(r12)				# 22178
	fcmp	r50, r61
	ble		.b47529				# 3098
.b47530:
	fabs	r61, r38				# 322
	lw		r50, 1(r12)				# 22224
	fcmp	r50, r61
	ble		.b47531				# 3098
.b47532:
	fabs	r61, r47				# 322
	lw		r50, 2(r12)				# 22261
	fcmp	r50, r61
	ble		.b47533				# 3098
.b47534:
	addi	r61, r0, 1				# 3098
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47567				# 23092
.b47568:
	addi	r61, r0, 0				# 23141
	b		.b47516				# 27336
.b47533:
	addi	r61, r0, 0				# 3098
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47537				# 22348
.b47538:
	addi	r61, r0, 0				# 22348
	b		.b47567				# 23092
.b47537:
	addi	r61, r0, 1				# 22348
	addi	r61, r0, 0				# 23141
	b		.b47516				# 27336
.b47531:
	addi	r61, r0, 0				# 22302
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47537				# 22348
	b		.b47538
.b47529:
	addi	r61, r0, 0				# 22317
	lw		r61, 6(r35)				# 3372
	cmpi	r61, 0
	beq		.b47537				# 22348
	b		.b47538
.b47510:
	fsqrt	r61, r62				# 227
	fsub	r61, r23, r61				# 18540
	lw		r62, 4(r59)				# 18540
	fmul	r61, r61, r62				# 18521
	sw		r61, 0(r26)				# 18521
	addi	r42, r0, 1				# 18580
	lw		r62, 0(r26)				# 27058
	fcmp	r62, r13
	ble		.b47516				# 3098
	b		.b47518
.b47507:
	addi	r42, r0, 0				# 18592
	lw		r61, 6(r27)				# 3372
	cmpi	r61, 0
	beq		.b47470				# 27653
.b47515:
	addi	r28, r28, 1				# 27691
	lw		r47, 0(r1)				# 8078
	lwx		r33, r53, r28				# 26915
	cmpi	r33, -1
	beq		.b47470				# 26952
	b		.b47473
.b47505:
	addi	r42, r0, 0				# 18252
	lw		r61, 6(r27)				# 3372
	cmpi	r61, 0
	beq		.b47470				# 27653
	b		.b47515
.b47501:
	lw		r61, 0(r59)				# 18051
	fcmp	r13, r61
	ble		.b47503				# 3188
.b47504:
	lw		r62, 3(r62)				# 18099
	fmul	r61, r61, r62				# 18080
	sw		r61, 0(r26)				# 18080
	addi	r42, r0, 1				# 18129
	lw		r62, 0(r26)				# 27058
	fcmp	r62, r13
	ble		.b47516				# 3098
	b		.b47518
.b47503:
	addi	r42, r0, 0				# 18141
	lw		r61, 6(r27)				# 3372
	cmpi	r61, 0
	beq		.b47470				# 27653
	b		.b47515
.b47475:
	lw		r61, 0(r59)				# 15996
	fsub	r61, r61, r35				# 15995
	lw		r12, 1(r59)				# 15995
	fmul	r62, r61, r12				# 15986
	lw		r23, 1(r47)				# 16056
	fmul	r61, r62, r23				# 16056
	fadd	r61, r61, r56				# 16050
	fabs	r61, r61				# 322
	lw		r50, 4(r27)				# 3920
	lw		r36, 1(r50)				# 16043
	fcmp	r36, r61
	ble		.b47478				# 3098
.b47479:
	lw		r61, 2(r47)				# 16117
	fmul	r61, r62, r61				# 16117
	fadd	r61, r61, r20				# 16111
	fabs	r42, r61				# 322
	lw		r61, 2(r50)				# 16104
	fcmp	r61, r42
	ble		.b47480				# 3098
.b47481:
	fcmp	r12, r13
	beq		.b47482				# 3128
.b47483:
	addi	r61, r0, 1				# 16157
.b47485:
	sw		r62, 0(r26)				# 16226
	addi	r42, r0, 1				# 16249
	lw		r62, 0(r26)				# 27058
	fcmp	r62, r13
	ble		.b47516				# 3098
	b		.b47518
.b47482:
	addi	r61, r0, 0				# 16157
.b47484:
	lw		r61, 2(r59)				# 16269
	fsub	r61, r61, r56				# 16268
	lw		r44, 3(r59)				# 16268
	fmul	r61, r61, r44				# 16259
	lw		r62, 0(r47)				# 16330
	fmul	r12, r61, r62				# 16330
	fadd	r12, r12, r35				# 16324
	fabs	r12, r12				# 322
	lw		r42, 0(r50)				# 16317
	fcmp	r42, r12
	ble		.b47487				# 3098
.b47488:
	lw		r12, 2(r47)				# 16391
	fmul	r12, r61, r12				# 16391
	fadd	r12, r12, r20				# 16385
	fabs	r12, r12				# 322
	lw		r50, 2(r50)				# 16378
	fcmp	r50, r12
	ble		.b47489				# 3098
.b47490:
	fcmp	r44, r13
	beq		.b47491				# 3128
.b47492:
	addi	r50, r0, 1				# 16431
.b47494:
	sw		r61, 0(r26)				# 16500
	addi	r42, r0, 2				# 16523
	lw		r62, 0(r26)				# 27058
	fcmp	r62, r13
	ble		.b47516				# 3098
	b		.b47518
.b47491:
	addi	r50, r0, 0				# 16431
.b47493:
	lw		r61, 4(r59)				# 16543
	fsub	r50, r61, r20				# 16542
	lw		r61, 5(r59)				# 16542
	fmul	r50, r50, r61				# 16533
	fmul	r62, r50, r62				# 16604
	fadd	r62, r62, r35				# 16598
	fabs	r62, r62				# 322
	fcmp	r42, r62
	ble		.b47495				# 3098
.b47496:
	fmul	r62, r50, r23				# 16665
	fadd	r62, r62, r56				# 16659
	fabs	r62, r62				# 322
	fcmp	r36, r62
	ble		.b47497				# 3098
.b47498:
	fcmp	r61, r13
	beq		.b47499				# 3128
.b47500:
	sw		r50, 0(r26)				# 16774
	addi	r42, r0, 3				# 16797
	lw		r62, 0(r26)				# 27058
	fcmp	r62, r13
	ble		.b47516				# 3098
	b		.b47518
.b47499:
	addi	r42, r0, 0				# 16811
	lw		r61, 6(r27)				# 3372
	cmpi	r61, 0
	beq		.b47470				# 27653
	b		.b47515
.b47497:
	addi	r42, r0, 0				# 16811
	lw		r61, 6(r27)				# 3372
	cmpi	r61, 0
	beq		.b47470				# 27653
	b		.b47515
.b47495:
	addi	r42, r0, 0				# 16811
	lw		r61, 6(r27)				# 3372
	cmpi	r61, 0
	beq		.b47470				# 27653
	b		.b47515
.b47489:
	addi	r50, r0, 0				# 16467
	b		.b47493				# 16306
.b47487:
	addi	r50, r0, 0				# 16482
	b		.b47493				# 16306
.b47480:
	addi	r61, r0, 0				# 16193
	b		.b47484				# 16033
.b47478:
	addi	r61, r0, 0				# 16208
	b		.b47484				# 16033
	# pretrace_line.3071
pretrace_line.3071:
.Entry@pretrace_line.3071:
	sw		r1, 0(r3)				# 0
	lli		r28, image_size.2590				# 41125
	lli		r62, image_center.2593				# 41125
	lli		r9, scan_pitch.2596				# 41125
	lli		r15, screeny_dir.2608				# 41125
	lli		r10, screenz_dir.2611				# 41125
	lw		r61, 0(r9)				# 41125
	sw		r61, -1(r3)				# 41125
	lw		r9, 1(r62)				# 41157
	sub		r9, r2, r9				# 41143
	itof	r9, r9				# 639
	fmul	r62, r61, r9				# 41113
	lw		r9, 0(r15)				# 41195
	fmul	r61, r62, r9				# 41195
	lw		r9, 0(r10)				# 41195
	fadd	r9, r61, r9				# 41185
	sw		r9, -2(r3)				# 41185
	lw		r9, 1(r15)				# 41254
	fmul	r61, r62, r9				# 41254
	lw		r9, 1(r10)				# 41254
	fadd	r9, r61, r9				# 41244
	sw		r9, -3(r3)				# 41244
	lw		r9, 2(r15)				# 41313
	fmul	r9, r62, r9				# 41313
	lw		r61, 2(r10)				# 41313
	fadd	r9, r9, r61				# 41303
	sw		r9, -4(r3)				# 41303
	lw		r9, 0(r28)				# 41384
	addi	r9, r9, -1				# 41362
	sw		r5, -5(r3)				# 40479
	sw		r9, -6(r3)				# 40479
	cmpi	r9, 0
	bge		.b48063				# 40479
.b48064:
	blr				# 41064
.b48063:
	lli		r61, image_center.2593				# 40545
	lw		r61, 0(r61)				# 40545
	sub		r61, r9, r61				# 40531
	itof	r28, r61				# 639
	lw		r61, -1(r3)				# 40501
	fmul	r62, r61, r28				# 40501
	lli		r10, screenx_dir.2605				# 40595
	lw		r61, 0(r10)				# 40595
	fmul	r61, r62, r61				# 40595
	lw		r28, -2(r3)				# 40574
	fadd	r15, r61, r28				# 40574
	lli		r57, ptrace_dirvec.2614				# 40574
	sw		r15, 0(r57)				# 40574
	lw		r61, 1(r10)				# 40653
	fmul	r61, r62, r61				# 40653
	lw		r28, -3(r3)				# 40632
	fadd	r51, r61, r28				# 40632
	sw		r51, 1(r57)				# 40574
	lw		r61, 2(r10)				# 40711
	fmul	r61, r62, r61				# 40711
	lw		r28, -4(r3)				# 40690
	fadd	r62, r61, r28				# 40690
	sw		r62, 2(r57)				# 40574
	fmul	r28, r15, r15				# 1729
	fmul	r61, r51, r51				# 1729
	fadd	r28, r28, r61				# 1729
	fmul	r61, r62, r62				# 1729
	fadd	r61, r28, r61				# 1723
	fsqrt	r10, r61				# 227
	addi	r28, r0, 0				# 1774
	fcmp	r10, r28
	beq		.b48066				# 3128
.b48067:
	addis	r61, r0, 16256				# 1837
	fdiv	r10, r61, r10				# 1837
.b48065:
	fmul	r61, r15, r10				# 1851
	sw		r61, 0(r57)				# 1851
	fmul	r61, r51, r10				# 1875
	sw		r61, 1(r57)				# 1851
	fmul	r61, r62, r10				# 1899
	sw		r61, 2(r57)				# 40574
	lli		r29, rgb.2587				# 1232
	sw		r28, 0(r29)				# 1232
	sw		r28, 1(r29)				# 1232
	sw		r28, 2(r29)				# 40574
	lli		r62, viewpoint.2542				# 1353
	lw		r61, 0(r62)				# 1353
	lli		r48, startp.2599				# 1353
	sw		r61, 0(r48)				# 1353
	lw		r61, 1(r62)				# 1376
	sw		r61, 1(r48)				# 1353
	lw		r61, 2(r62)				# 1399
	sw		r61, 2(r48)				# 40574
	addis	r19, r0, 16256				# 40833
	lw		r61, 0(r3)				# 40833
	lwx		r51, r61, r9				# 40833
	sw		r51, -7(r3)				# 40833
	addi	r46, r0, 0				# 32983
	mv		r26, r19				# 32983
	mv		r62, r28				# 32983
.b48070:
	lw		r13, 2(r51)				# 7046
	lli		r39, tmin.2569				# 26657
	addis	r23, r0, 20078
	ori		r23, r23, 27432				# 26657
	sw		r23, 0(r39)				# 26657
	lli		r9, or_net.2560				# 26687
	lw		r10, 0(r9)				# 26687
	addi	r54, r0, 0				# 26148
	lwx		r7, r10, r54				# 26148
	lw		r9, 0(r7)				# 26181
	cmpi	r9, -1
	beq		.b48072				# 26217
.b48075:
	cmpi	r9, 99
	beq		.b48077				# 26267
.b48078:
	lli		r25, objects.2536				# 15582
	lwx		r53, r25, r9				# 15582
	lw		r37, 0(r48)				# 15621
	lw		r61, 5(r53)				# 4475
	lw		r9, 0(r61)				# 15621
	fsub	r50, r37, r9				# 15611
	lw		r41, 1(r48)				# 15659
	lw		r9, 1(r61)				# 15659
	fsub	r17, r41, r9				# 15649
	lw		r14, 2(r48)				# 15697
	lw		r9, 2(r61)				# 15697
	fsub	r12, r14, r9				# 15687
	lw		r33, 1(r53)				# 2994
	cmpi	r33, 1
	beq		.b48229				# 15753
.b48230:
	cmpi	r33, 2
	beq		.b48288				# 15817
.b48289:
	lw		r56, 0(r57)				# 15037
	lw		r59, 1(r57)				# 15037
	lw		r2, 2(r57)				# 15037
	fmul	r9, r56, r56				# 14374
	lw		r15, 4(r53)				# 3734
	lw		r47, 0(r15)				# 14374
	fmul	r9, r9, r47				# 14374
	fmul	r61, r59, r59				# 14400
	lw		r36, 1(r15)				# 14400
	fmul	r61, r61, r36				# 14374
	fadd	r9, r9, r61				# 14374
	fmul	r61, r2, r2				# 14426
	lw		r27, 2(r15)				# 14426
	fmul	r61, r61, r27				# 14374
	fadd	r9, r9, r61				# 14354
	lw		r42, 3(r53)				# 3553
	cmpi	r42, 0
	beq		.b48293				# 14456
.b48294:
	fmul	r15, r59, r2				# 14522
	lw		r30, 9(r53)				# 5989
	lw		r61, 0(r30)				# 14522
	fmul	r61, r15, r61				# 14503
	fadd	r61, r9, r61				# 14503
	fmul	r15, r2, r56				# 14556
	lw		r9, 1(r30)				# 14556
	fmul	r9, r15, r9				# 14503
	fadd	r61, r61, r9				# 14503
	fmul	r15, r56, r59				# 14590
	lw		r9, 2(r30)				# 14590
	fmul	r9, r15, r9				# 14503
	fadd	r9, r61, r9				# 14503
	fcmp	r9, r28
	beq		.b48295				# 3128
.b48296:
	fmul	r61, r56, r50				# 14680
	fmul	r15, r61, r47				# 14680
	fmul	r61, r59, r17				# 14713
	fmul	r61, r61, r36				# 14680
	fadd	r15, r15, r61				# 14680
	fmul	r61, r2, r12				# 14746
	fmul	r61, r61, r27				# 14680
	fadd	r15, r15, r61				# 14660
	cmpi	r42, 0
	beq		.b48298				# 14777
.b48299:
	fmul	r61, r2, r17				# 14851
	fmul	r30, r59, r12				# 14851
	fadd	r30, r61, r30				# 14850
	lw		r1, 9(r53)				# 5989
	lw		r61, 0(r1)				# 14850
	fmul	r35, r30, r61				# 14850
	fmul	r30, r56, r12				# 14895
	fmul	r61, r2, r50				# 14895
	fadd	r61, r30, r61				# 14894
	lw		r30, 1(r1)				# 14894
	fmul	r61, r61, r30				# 14850
	fadd	r30, r35, r61				# 14850
	fmul	r61, r56, r17				# 14939
	fmul	r56, r59, r50				# 14939
	fadd	r56, r61, r56				# 14938
	lw		r61, 2(r1)				# 14938
	fmul	r61, r56, r61				# 14850
	fadd	r61, r30, r61				# 14837
	addis	r30, r0, 16384				# 2996
	fdiv	r61, r61, r30				# 14824
	fadd	r15, r15, r61				# 14824
.b48297:
	fmul	r61, r50, r50				# 14374
	fmul	r30, r61, r47				# 14374
	fmul	r61, r17, r17				# 14400
	fmul	r61, r61, r36				# 14374
	fadd	r30, r30, r61				# 14374
	fmul	r61, r12, r12				# 14426
	fmul	r61, r61, r27				# 14374
	fadd	r61, r30, r61				# 14354
	cmpi	r42, 0
	beq		.b48301				# 14456
.b48302:
	fmul	r30, r17, r12				# 14522
	lw		r56, 9(r53)				# 5989
	lw		r42, 0(r56)				# 14522
	fmul	r30, r30, r42				# 14503
	fadd	r30, r61, r30				# 14503
	fmul	r61, r12, r50				# 14556
	lw		r12, 1(r56)				# 14556
	fmul	r61, r61, r12				# 14503
	fadd	r30, r30, r61				# 14503
	fmul	r61, r50, r17				# 14590
	lw		r17, 2(r56)				# 14590
	fmul	r61, r61, r17				# 14503
	fadd	r61, r30, r61				# 14503
	cmpi	r33, 3
	beq		.b48304				# 15282
.b48305:
.b48303:
	fmul	r30, r15, r15				# 15338
	fmul	r61, r9, r61				# 15338
	fsub	r61, r30, r61				# 15330
	fcmp	r61, r28
	ble		.b48306				# 3158
.b48307:
	fsqrt	r61, r61				# 227
	lw		r30, 6(r53)				# 3372
	cmpi	r30, 0
	beq		.b48309				# 15425
.b48310:
.b48308:
	fsub	r61, r61, r15				# 15491
	fdiv	r9, r61, r9				# 15472
	lli		r61, solver_dist.2563				# 15472
	sw		r9, 0(r61)				# 15472
	addi	r9, r0, 1				# 15510
.b48312:
	lli		r50, solver_dist.2563				# 26433
	lw		r9, 0(r50)				# 26433
	lw		r61, 0(r39)				# 26466
	fcmp	r61, r9
	ble		.b48076				# 3098
.b48314:
	addi	r30, r0, 1				# 25897
	lwx		r61, r7, r30				# 25897
	cmpi	r61, -1
	beq		.b48076				# 25928
.b48317:
	lli		r9, and_net.2554				# 25953
	lwx		r12, r9, r61				# 25953
	addi	r61, r0, 0				# 25005
	lwx		r53, r12, r61				# 25005
	cmpi	r53, -1
	beq		.b48318				# 25042
.b48321:
	lwx		r56, r25, r53				# 15582
	lw		r9, 5(r56)				# 4475
	lw		r15, 0(r9)				# 15621
	fsub	r1, r37, r15				# 15611
	lw		r15, 1(r9)				# 15659
	fsub	r36, r41, r15				# 15649
	lw		r9, 2(r9)				# 15697
	fsub	r27, r14, r9				# 15687
	lw		r42, 1(r56)				# 2994
	cmpi	r42, 1
	beq		.b48323				# 15753
.b48324:
	cmpi	r42, 2
	beq		.b48382				# 15817
.b48383:
	lw		r44, 0(r57)				# 15037
	lw		r59, 1(r57)				# 15037
	lw		r38, 2(r57)				# 15037
	fmul	r9, r44, r44				# 14374
	lw		r17, 4(r56)				# 3734
	lw		r2, 0(r17)				# 14374
	fmul	r9, r9, r2				# 14374
	fmul	r15, r59, r59				# 14400
	lw		r35, 1(r17)				# 14400
	fmul	r15, r15, r35				# 14374
	fadd	r15, r9, r15				# 14374
	fmul	r9, r38, r38				# 14426
	lw		r20, 2(r17)				# 14426
	fmul	r9, r9, r20				# 14374
	fadd	r15, r15, r9				# 14354
	lw		r47, 3(r56)				# 3553
	cmpi	r47, 0
	beq		.b48387				# 14456
.b48388:
	fmul	r9, r59, r38				# 14522
	lw		r33, 9(r56)				# 5989
	lw		r17, 0(r33)				# 14522
	fmul	r9, r9, r17				# 14503
	fadd	r17, r15, r9				# 14503
	fmul	r9, r38, r44				# 14556
	lw		r15, 1(r33)				# 14556
	fmul	r9, r9, r15				# 14503
	fadd	r15, r17, r9				# 14503
	fmul	r17, r44, r59				# 14590
	lw		r9, 2(r33)				# 14590
	fmul	r9, r17, r9				# 14503
	fadd	r15, r15, r9				# 14503
	fcmp	r15, r28
	beq		.b48389				# 3128
.b48390:
	fmul	r9, r44, r1				# 14680
	fmul	r17, r9, r2				# 14680
	fmul	r9, r59, r36				# 14713
	fmul	r9, r9, r35				# 14680
	fadd	r9, r17, r9				# 14680
	fmul	r17, r38, r27				# 14746
	fmul	r17, r17, r20				# 14680
	fadd	r17, r9, r17				# 14660
	cmpi	r47, 0
	beq		.b48392				# 14777
.b48393:
	fmul	r9, r38, r36				# 14851
	fmul	r33, r59, r27				# 14851
	fadd	r9, r9, r33				# 14850
	lw		r8, 9(r56)				# 5989
	lw		r33, 0(r8)				# 14850
	fmul	r33, r9, r33				# 14850
	fmul	r49, r44, r27				# 14895
	fmul	r9, r38, r1				# 14895
	fadd	r38, r49, r9				# 14894
	lw		r9, 1(r8)				# 14894
	fmul	r9, r38, r9				# 14850
	fadd	r33, r33, r9				# 14850
	fmul	r9, r44, r36				# 14939
	fmul	r59, r59, r1				# 14939
	fadd	r59, r9, r59				# 14938
	lw		r9, 2(r8)				# 14938
	fmul	r9, r59, r9				# 14850
	fadd	r33, r33, r9				# 14837
	addis	r9, r0, 16384				# 2996
	fdiv	r9, r33, r9				# 14824
	fadd	r17, r17, r9				# 14824
.b48391:
	fmul	r9, r1, r1				# 14374
	fmul	r33, r9, r2				# 14374
	fmul	r9, r36, r36				# 14400
	fmul	r9, r9, r35				# 14374
	fadd	r33, r33, r9				# 14374
	fmul	r9, r27, r27				# 14426
	fmul	r9, r9, r20				# 14374
	fadd	r9, r33, r9				# 14354
	cmpi	r47, 0
	beq		.b48395				# 14456
.b48396:
	fmul	r33, r36, r27				# 14522
	lw		r59, 9(r56)				# 5989
	lw		r47, 0(r59)				# 14522
	fmul	r33, r33, r47				# 14503
	fadd	r33, r9, r33				# 14503
	fmul	r27, r27, r1				# 14556
	lw		r9, 1(r59)				# 14556
	fmul	r9, r27, r9				# 14503
	fadd	r9, r33, r9				# 14503
	fmul	r33, r1, r36				# 14590
	lw		r1, 2(r59)				# 14590
	fmul	r33, r33, r1				# 14503
	fadd	r9, r9, r33				# 14503
	cmpi	r42, 3
	beq		.b48398				# 15282
.b48399:
.b48397:
	fmul	r33, r17, r17				# 15338
	fmul	r9, r15, r9				# 15338
	fsub	r9, r33, r9				# 15330
	fcmp	r9, r28
	ble		.b48400				# 3158
.b48401:
	fsqrt	r9, r9				# 227
	lw		r33, 6(r56)				# 3372
	cmpi	r33, 0
	beq		.b48403				# 15425
.b48404:
.b48402:
	fsub	r9, r9, r17				# 15491
	fdiv	r9, r9, r15				# 15472
	sw		r9, 0(r50)				# 15472
	addi	r1, r0, 1				# 15510
	lw		r9, 0(r50)				# 25149
	fcmp	r9, r28
	ble		.b48409				# 3098
.b48411:
	lw		r15, 0(r39)				# 25216
	fcmp	r15, r9
	ble		.b48409				# 3098
.b48413:
	addis	r15, r0, 15395
	ori		r15, r15, 55050				# 25260
	fadd	r47, r9, r15				# 25252
	lw		r9, 0(r57)				# 25289
	fmul	r9, r9, r47				# 25289
	fadd	r27, r9, r37				# 25280
	lw		r9, 1(r57)				# 25336
	fmul	r9, r9, r47				# 25336
	fadd	r36, r9, r41				# 25327
	lw		r9, 2(r57)				# 25383
	fmul	r9, r9, r47				# 25383
	fadd	r33, r9, r14				# 25374
	addi	r15, r0, 0				# 23025
	lwx		r9, r12, r15				# 23025
	cmpi	r9, -1
	beq		.b48416				# 23052
.b48417:
	lwx		r56, r25, r9				# 23095
	lw		r17, 5(r56)				# 4475
	lw		r9, 0(r17)				# 22709
	fsub	r2, r27, r9				# 22700
	lw		r9, 1(r17)				# 22741
	fsub	r35, r36, r9				# 22732
	lw		r9, 2(r17)				# 22773
	fsub	r44, r33, r9				# 22764
	lw		r17, 1(r56)				# 2994
	cmpi	r17, 1
	beq		.b48419				# 22824
.b48420:
	cmpi	r17, 2
	beq		.b48432				# 22882
.b48433:
	fmul	r9, r2, r2				# 14374
	lw		r59, 4(r56)				# 3734
	lw		r42, 0(r59)				# 14374
	fmul	r20, r9, r42				# 14374
	fmul	r42, r35, r35				# 14400
	lw		r9, 1(r59)				# 14400
	fmul	r9, r42, r9				# 14374
	fadd	r42, r20, r9				# 14374
	fmul	r9, r44, r44				# 14426
	lw		r59, 2(r59)				# 14426
	fmul	r9, r9, r59				# 14374
	fadd	r9, r42, r9				# 14354
	lw		r42, 3(r56)				# 3553
	cmpi	r42, 0
	beq		.b48445				# 14456
.b48446:
	fmul	r20, r35, r44				# 14522
	lw		r59, 9(r56)				# 5989
	lw		r42, 0(r59)				# 14522
	fmul	r42, r20, r42				# 14503
	fadd	r42, r9, r42				# 14503
	fmul	r9, r44, r2				# 14556
	lw		r20, 1(r59)				# 14556
	fmul	r9, r9, r20				# 14503
	fadd	r42, r42, r9				# 14503
	fmul	r2, r2, r35				# 14590
	lw		r9, 2(r59)				# 14590
	fmul	r9, r2, r9				# 14503
	fadd	r9, r42, r9				# 14503
	cmpi	r17, 3
	beq		.b48448				# 22583
.b48449:
	lw		r17, 6(r56)				# 3372
	fcmp	r28, r9
	ble		.b48451				# 3188
.b48452:
	addi	r9, r0, 1				# 3188
	cmpi	r17, 0
	beq		.b48454				# 765
.b48455:
	cmpi	r9, 0
	beq		.b48456				# 775
.b48457:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b48409:
	addi	r61, r61, 1				# 25658
	lwx		r53, r12, r61				# 25005
	cmpi	r53, -1
	beq		.b48318				# 25042
	b		.b48321
.b48318:
	addi	r30, r30, 1				# 26034
	lwx		r61, r7, r30				# 25897
	cmpi	r61, -1
	beq		.b48076				# 25928
	b		.b48317
.b48076:
	addi	r54, r54, 1				# 26566
	lwx		r7, r10, r54				# 26148
	lw		r9, 0(r7)				# 26181
	cmpi	r9, -1
	beq		.b48072				# 26217
	b		.b48075
.b48072:
	lw		r9, 0(r39)				# 26728
	addis	r50, r0, 48588
	ori		r50, r50, 52429				# 26755
	fcmp	r9, r50
	ble		.b48465				# 3098
.b48466:
	addis	r61, r0, 19646
	ori		r61, r61, 48160				# 26781
	fcmp	r61, r9
	ble		.b48467				# 3098
.b48468:
	addi	r9, r0, 1				# 3098
.b48470:
	lli		r27, intersected_object_id.2575				# 33094
	lw		r30, 0(r27)				# 33094
	lli		r41, objects.2536				# 33142
	lwx		r61, r41, r30				# 33142
	lw		r14, 2(r61)				# 3185
	lw		r7, 7(r61)				# 5033
	lw		r9, 0(r7)				# 33238
	fmul	r56, r9, r26				# 33224
	lw		r9, 1(r61)				# 2994
	cmpi	r9, 1
	beq		.b48476				# 29818
.b48477:
	cmpi	r9, 2
	beq		.b48483				# 29873
.b48484:
	lli		r15, intersection_point.2572				# 29136
	lw		r54, 0(r15)				# 29136
	lw		r25, 5(r61)				# 4475
	lw		r9, 0(r25)				# 29136
	fsub	r53, r54, r9				# 29127
	lw		r9, 1(r15)				# 29188
	lw		r54, 1(r25)				# 29188
	fsub	r12, r9, r54				# 29179
	lw		r15, 2(r15)				# 29240
	lw		r9, 2(r25)				# 29240
	fsub	r25, r15, r9				# 29231
	lw		r9, 4(r61)				# 3734
	lw		r15, 0(r9)				# 29293
	fmul	r54, r53, r15				# 29284
	lw		r15, 1(r9)				# 29325
	fmul	r42, r12, r15				# 29316
	lw		r9, 2(r9)				# 29357
	fmul	r17, r25, r9				# 29348
	lw		r9, 3(r61)				# 3553
	cmpi	r9, 0
	beq		.b48486				# 29381
.b48487:
	lw		r9, 9(r61)				# 6369
	lw		r1, 2(r9)				# 29517
	fmul	r33, r12, r1				# 29517
	lw		r37, 1(r9)				# 29539
	fmul	r15, r25, r37				# 29517
	fadd	r15, r33, r15				# 29510
	addis	r33, r0, 16384				# 2996
	fdiv	r15, r15, r33				# 29504
	fadd	r15, r54, r15				# 29489
	lli		r54, nvector.2578				# 29489
	sw		r15, 0(r54)				# 29489
	fmul	r1, r53, r1				# 29592
	lw		r15, 0(r9)				# 29614
	fmul	r9, r25, r15				# 29592
	fadd	r9, r1, r9				# 29585
	fdiv	r9, r9, r33				# 29579
	fadd	r9, r42, r9				# 29564
	sw		r9, 1(r54)				# 29489
	fmul	r25, r53, r37				# 29667
	fmul	r9, r12, r15				# 29667
	fadd	r9, r25, r9				# 29660
	fdiv	r9, r9, r33				# 29654
	fadd	r9, r17, r9				# 29639
	sw		r9, 2(r54)				# 29639
.b48485:
	lw		r9, 6(r61)				# 3372
	lli		r37, nvector.2578				# 1729
	lw		r15, 0(r37)				# 1729
	fmul	r17, r15, r15				# 1729
	lw		r25, 1(r37)				# 1743
	fmul	r54, r25, r25				# 1729
	fadd	r17, r17, r54				# 1729
	lw		r12, 2(r37)				# 1757
	fmul	r54, r12, r12				# 1729
	fadd	r54, r17, r54				# 1723
	fsqrt	r54, r54				# 227
	fcmp	r54, r28
	beq		.b48489				# 3128
.b48490:
	cmpi	r9, 0
	beq		.b48491				# 1810
.b48492:
	addis	r9, r0, 49024				# 1822
	fdiv	r54, r9, r54				# 1822
.b48488:
	fmul	r9, r15, r54				# 1851
	sw		r9, 0(r37)				# 1851
	fmul	r9, r25, r54				# 1875
	sw		r9, 1(r37)				# 1851
	fmul	r9, r12, r54				# 1899
	sw		r9, 2(r37)				# 1899
.b48475:
	lli		r33, intersection_point.2572				# 1353
	lw		r1, 0(r33)				# 1353
	sw		r1, 0(r48)				# 1353
	lw		r42, 1(r33)				# 1376
	sw		r42, 1(r48)				# 1353
	lw		r47, 2(r33)				# 1399
	sw		r47, 2(r48)				# 33272
	lw		r9, 0(r61)				# 2815
	lw		r15, 8(r61)				# 5421
	lw		r54, 0(r15)				# 30014
	lli		r36, texture_color.2581				# 30014
	sw		r54, 0(r36)				# 30014
	lw		r54, 1(r15)				# 30052
	sw		r54, 1(r36)				# 30014
	lw		r15, 2(r15)				# 30092
	sw		r15, 2(r36)				# 30014
	cmpi	r9, 1
	beq		.b48494				# 30131
.b48495:
	cmpi	r9, 2
	beq		.b48509				# 30575
.b48510:
	cmpi	r9, 3
	beq		.b48511				# 30745
.b48512:
	cmpi	r9, 4
	beq		.b48513				# 31084
.b48493:
	slwi	r61, r30, 2				# 33407
	lli		r59, intsec_rectside.2566				# 33407
	lw		r9, 0(r59)				# 33407
	add		r9, r61, r9				# 33385
	swx		r9, r46, r13				# 33272
	lw		r9, 1(r51)				# 6897
	lwx		r9, r9, r46				# 33510
	sw		r1, 0(r9)				# 1353
	sw		r42, 1(r9)				# 1353
	sw		r47, 2(r9)				# 33510
	lw		r61, 3(r51)				# 7193
	lw		r15, 0(r7)				# 33623
	addis	r9, r0, 16128				# 33623
	fcmp	r9, r15
	ble		.b48525				# 3098
.b48526:
	addi	r9, r0, 0				# 33655
	swx		r9, r46, r61				# 33655
.b48524:
	addis	r15, r0, 49152				# 33945
	lw		r30, 0(r57)				# 1949
	lli		r61, nvector.2578				# 1949
	lw		r53, 0(r61)				# 1949
	fmul	r9, r30, r53				# 1949
	lw		r12, 1(r57)				# 1967
	lw		r25, 1(r61)				# 1967
	fmul	r54, r12, r25				# 1949
	fadd	r9, r9, r54				# 1949
	lw		r17, 2(r57)				# 1985
	lw		r37, 2(r61)				# 1985
	fmul	r61, r17, r37				# 1949
	fadd	r9, r9, r61				# 33945
	fmul	r61, r15, r9				# 33937
	fmul	r9, r61, r53				# 2129
	fadd	r30, r30, r9				# 2117
	sw		r30, 0(r57)				# 2117
	fmul	r9, r61, r25				# 2171
	fadd	r54, r12, r9				# 2159
	sw		r54, 1(r57)				# 2117
	fmul	r9, r61, r37				# 2213
	fadd	r2, r17, r9				# 2201
	sw		r2, 2(r57)				# 33988
	lw		r9, 1(r7)				# 34042
	fmul	r17, r26, r9				# 34022
	addi	r61, r0, 0				# 24323
	lwx		r35, r10, r61				# 24323
	lw		r9, 0(r35)				# 24355
	cmpi	r9, -1
	beq		.b48529				# 24391
.b48530:
	cmpi	r9, 99
	beq		.b48532				# 24451
.b48533:
	lwx		r18, r41, r9				# 17557
	lw		r15, 5(r18)				# 4475
	lw		r12, 0(r15)				# 17595
	fsub	r38, r1, r12				# 17586
	lw		r12, 1(r15)				# 17632
	fsub	r49, r42, r12				# 17623
	lw		r15, 2(r15)				# 17669
	fsub	r8, r47, r15				# 17660
	lli		r44, consts.2632				# 17731
	lwx		r20, r44, r9				# 17731
	lw		r16, 1(r18)				# 2994
	cmpi	r16, 1
	beq		.b48535				# 17793
.b48536:
	cmpi	r16, 2
	beq		.b48561				# 17874
.b48562:
	lw		r12, 0(r20)				# 17054
	fcmp	r12, r28
	beq		.b48565				# 3128
.b48566:
	lw		r9, 1(r20)				# 17128
	fmul	r9, r9, r38				# 17128
	lw		r15, 2(r20)				# 17148
	fmul	r15, r15, r49				# 17128
	fadd	r9, r9, r15				# 17128
	lw		r15, 3(r20)				# 17168
	fmul	r15, r15, r8				# 17128
	fadd	r60, r9, r15				# 17115
	fmul	r11, r38, r38				# 14374
	lw		r9, 4(r18)				# 3734
	lw		r15, 0(r9)				# 14374
	fmul	r11, r11, r15				# 14374
	fmul	r52, r49, r49				# 14400
	lw		r15, 1(r9)				# 14400
	fmul	r15, r52, r15				# 14374
	fadd	r11, r11, r15				# 14374
	fmul	r15, r8, r8				# 14426
	lw		r9, 2(r9)				# 14426
	fmul	r9, r15, r9				# 14374
	fadd	r9, r11, r9				# 14354
	lw		r15, 3(r18)				# 3553
	cmpi	r15, 0
	beq		.b48568				# 14456
.b48569:
	fmul	r15, r49, r8				# 14522
	lw		r52, 9(r18)				# 5989
	lw		r11, 0(r52)				# 14522
	fmul	r15, r15, r11				# 14503
	fadd	r11, r9, r15				# 14503
	fmul	r9, r8, r38				# 14556
	lw		r15, 1(r52)				# 14556
	fmul	r9, r9, r15				# 14503
	fadd	r15, r11, r9				# 14503
	fmul	r38, r38, r49				# 14590
	lw		r9, 2(r52)				# 14590
	fmul	r9, r38, r9				# 14503
	fadd	r9, r15, r9				# 14503
	cmpi	r16, 3
	beq		.b48571				# 17239
.b48572:
.b48570:
	fmul	r15, r60, r60				# 17295
	fmul	r9, r12, r9				# 17295
	fsub	r15, r15, r9				# 17287
	fcmp	r15, r28
	ble		.b48573				# 3158
.b48574:
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48576				# 17353
.b48577:
	fsqrt	r9, r15				# 227
	fadd	r15, r60, r9				# 17394
	lw		r9, 4(r20)				# 17394
	fmul	r9, r15, r9				# 17375
	lli		r15, solver_dist.2563				# 17375
	sw		r9, 0(r15)				# 17375
	addi	r9, r0, 1				# 17498
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r50, r9
	ble		.b48580				# 3098
.b48581:
	addi	r20, r0, 1				# 24006
	lwx		r15, r35, r20				# 24006
	cmpi	r15, -1
	beq		.b48584				# 24037
.b48585:
	lli		r9, and_net.2554				# 24078
	lwx		r49, r9, r15				# 24078
	addi	r12, r0, 0				# 23266
	lwx		r15, r49, r12				# 23266
	cmpi	r15, -1
	beq		.b48588				# 23266
.b48589:
	lwx		r18, r41, r15				# 17557
	lw		r8, 5(r18)				# 4475
	lw		r9, 0(r8)				# 17595
	fsub	r16, r1, r9				# 17586
	lw		r9, 1(r8)				# 17632
	fsub	r11, r42, r9				# 17623
	lw		r9, 2(r8)				# 17669
	fsub	r52, r47, r9				# 17660
	lwx		r60, r44, r15				# 17731
	lw		r15, 1(r18)				# 2994
	cmpi	r15, 1
	beq		.b48591				# 17793
.b48592:
	cmpi	r15, 2
	beq		.b48617				# 17874
.b48618:
	lw		r43, 0(r60)				# 17054
	fcmp	r43, r28
	beq		.b48621				# 3128
.b48622:
	lw		r9, 1(r60)				# 17128
	fmul	r8, r9, r16				# 17128
	lw		r9, 2(r60)				# 17148
	fmul	r9, r9, r11				# 17128
	fadd	r8, r8, r9				# 17128
	lw		r9, 3(r60)				# 17168
	fmul	r9, r9, r52				# 17128
	fadd	r32, r8, r9				# 17115
	fmul	r9, r16, r16				# 14374
	lw		r6, 4(r18)				# 3734
	lw		r8, 0(r6)				# 14374
	fmul	r8, r9, r8				# 14374
	fmul	r55, r11, r11				# 14400
	lw		r9, 1(r6)				# 14400
	fmul	r9, r55, r9				# 14374
	fadd	r55, r8, r9				# 14374
	fmul	r9, r52, r52				# 14426
	lw		r8, 2(r6)				# 14426
	fmul	r9, r9, r8				# 14374
	fadd	r9, r55, r9				# 14354
	lw		r8, 3(r18)				# 3553
	cmpi	r8, 0
	beq		.b48624				# 14456
.b48625:
	fmul	r6, r11, r52				# 14522
	lw		r55, 9(r18)				# 5989
	lw		r8, 0(r55)				# 14522
	fmul	r8, r6, r8				# 14503
	fadd	r9, r9, r8				# 14503
	fmul	r52, r52, r16				# 14556
	lw		r8, 1(r55)				# 14556
	fmul	r8, r52, r8				# 14503
	fadd	r8, r9, r8				# 14503
	fmul	r16, r16, r11				# 14590
	lw		r9, 2(r55)				# 14590
	fmul	r9, r16, r9				# 14503
	fadd	r9, r8, r9				# 14503
	cmpi	r15, 3
	beq		.b48627				# 17239
.b48628:
.b48626:
	fmul	r15, r32, r32				# 17295
	fmul	r9, r43, r9				# 17295
	fsub	r15, r15, r9				# 17287
	fcmp	r15, r28
	ble		.b48629				# 3158
.b48630:
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48632				# 17353
.b48633:
	fsqrt	r9, r15				# 227
	fadd	r15, r32, r9				# 17394
	lw		r9, 4(r60)				# 17394
	fmul	r9, r15, r9				# 17375
	sw		r9, 0(r38)				# 17375
	addi	r9, r0, 1				# 17498
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48637				# 3098
.b48638:
	addi	r9, r0, 1				# 3098
.b48640:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r8, r15, r9				# 23516
	lli		r9, light.2545				# 23554
	lw		r15, 0(r9)				# 23554
	fmul	r15, r15, r8				# 23554
	fadd	r16, r15, r1				# 23545
	lw		r15, 1(r9)				# 23613
	fmul	r15, r15, r8				# 23613
	fadd	r60, r15, r42				# 23604
	lw		r9, 2(r9)				# 23672
	fmul	r9, r9, r8				# 23672
	fadd	r11, r9, r47				# 23663
	addi	r15, r0, 0				# 23025
	lwx		r9, r49, r15				# 23025
	cmpi	r9, -1
	beq		.b48645				# 23052
.b48646:
	lwx		r32, r41, r9				# 23095
	lw		r8, 5(r32)				# 4475
	lw		r9, 0(r8)				# 22709
	fsub	r6, r16, r9				# 22700
	lw		r9, 1(r8)				# 22741
	fsub	r55, r60, r9				# 22732
	lw		r9, 2(r8)				# 22773
	fsub	r43, r11, r9				# 22764
	lw		r8, 1(r32)				# 2994
	cmpi	r8, 1
	beq		.b48648				# 22824
.b48649:
	cmpi	r8, 2
	beq		.b48661				# 22882
.b48662:
	fmul	r18, r6, r6				# 14374
	lw		r31, 4(r32)				# 3734
	lw		r9, 0(r31)				# 14374
	fmul	r18, r18, r9				# 14374
	fmul	r52, r55, r55				# 14400
	lw		r9, 1(r31)				# 14400
	fmul	r9, r52, r9				# 14374
	fadd	r9, r18, r9				# 14374
	fmul	r18, r43, r43				# 14426
	lw		r52, 2(r31)				# 14426
	fmul	r18, r18, r52				# 14374
	fadd	r9, r9, r18				# 14354
	lw		r18, 3(r32)				# 3553
	cmpi	r18, 0
	beq		.b48674				# 14456
.b48675:
	fmul	r18, r55, r43				# 14522
	lw		r31, 9(r32)				# 5989
	lw		r52, 0(r31)				# 14522
	fmul	r18, r18, r52				# 14503
	fadd	r18, r9, r18				# 14503
	fmul	r9, r43, r6				# 14556
	lw		r52, 1(r31)				# 14556
	fmul	r9, r9, r52				# 14503
	fadd	r18, r18, r9				# 14503
	fmul	r9, r6, r55				# 14590
	lw		r52, 2(r31)				# 14590
	fmul	r9, r9, r52				# 14503
	fadd	r9, r18, r9				# 14503
	cmpi	r8, 3
	beq		.b48677				# 22583
.b48678:
	lw		r8, 6(r32)				# 3372
	fcmp	r28, r9
	ble		.b48680				# 3188
.b48681:
	addi	r9, r0, 1				# 3188
	cmpi	r8, 0
	beq		.b48683				# 765
.b48684:
	cmpi	r9, 0
	beq		.b48685				# 775
.b48686:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b48691:
	addi	r12, r12, 1				# 23786
	lwx		r15, r49, r12				# 23266
	cmpi	r15, -1
	beq		.b48588				# 23266
	b		.b48589
.b48588:
	addi	r9, r0, 0				# 23304
.b48693:
	addi	r20, r20, 1				# 24216
	lwx		r15, r35, r20				# 24006
	cmpi	r15, -1
	beq		.b48584				# 24037
	b		.b48585
.b48584:
	addi	r9, r0, 0				# 24059
	addi	r9, r0, 0				# 24725
.b48697:
	addi	r61, r61, 1				# 24896
	lwx		r35, r10, r61				# 24323
	lw		r9, 0(r35)				# 24355
	cmpi	r9, -1
	beq		.b48529				# 24391
	b		.b48530
.b48529:
	addi	r9, r0, 0				# 24424
.b48815:
	lli		r61, light.2545				# 1949
	lw		r12, 0(r61)				# 1949
	fmul	r9, r53, r12				# 1949
	lw		r35, 1(r61)				# 1967
	fmul	r15, r25, r35				# 1949
	fadd	r15, r9, r15				# 1949
	lw		r20, 2(r61)				# 1985
	fmul	r9, r37, r20				# 1949
	fadd	r9, r15, r9				# 34151
	fneg	r9, r9				# 34151
	fmul	r15, r9, r56				# 34138
	fmul	r61, r30, r12				# 1949
	fmul	r9, r54, r35				# 1949
	fadd	r61, r61, r9				# 1949
	fmul	r9, r2, r20				# 1949
	fadd	r9, r61, r9				# 34217
	fneg	r12, r9				# 34203
	fcmp	r15, r28
	ble		.b48817				# 3158
.b48819:
	lw		r61, 0(r29)				# 2129
	lw		r9, 0(r36)				# 2141
	fmul	r9, r15, r9				# 2129
	fadd	r9, r61, r9				# 2117
	sw		r9, 0(r29)				# 2117
	lw		r61, 1(r29)				# 2171
	lw		r9, 1(r36)				# 2183
	fmul	r9, r15, r9				# 2171
	fadd	r9, r61, r9				# 2159
	sw		r9, 1(r29)				# 2117
	lw		r9, 2(r29)				# 2213
	lw		r61, 2(r36)				# 2225
	fmul	r61, r15, r61				# 2213
	fadd	r9, r9, r61				# 2201
	sw		r9, 2(r29)				# 2201
	fcmp	r12, r28
	ble		.b48814				# 3158
.b48821:
	fmul	r9, r12, r12				# 32023
	fmul	r9, r9, r9				# 32023
	fmul	r61, r9, r17				# 32013
	lw		r9, 0(r29)				# 32078
	fadd	r9, r9, r61				# 32067
	sw		r9, 0(r29)				# 32067
	lw		r9, 1(r29)				# 32109
	fadd	r9, r9, r61				# 32098
	sw		r9, 1(r29)				# 32067
	lw		r9, 2(r29)				# 32140
	fadd	r9, r9, r61				# 32129
	sw		r9, 2(r29)				# 32129
.b48814:
	lli		r9, startp_fast.2602				# 1353
	sw		r1, 0(r9)				# 1353
	sw		r42, 1(r9)				# 1353
	sw		r47, 2(r9)				# 22055
	lli		r9, n_objects.2525				# 22105
	lw		r9, 0(r9)				# 22105
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b48824				# 21420
.b48822:
	lli		r9, n_reflections.2647				# 34376
	lw		r9, 0(r9)				# 34376
	addi	r61, r9, -1				# 34357
	cmpi	r61, 0
	bge		.b48839				# 32237
.b48837:
	addis	r9, r0, 15820
	ori		r9, r9, 52429				# 34437
	fcmp	r26, r9
	ble		.b48068				# 3098
.b49400:
	cmpi	r46, 4
	bge		.b49401				# 34463
.b49403:
	addi	r9, r46, 1				# 34484
	addi	r61, r0, -1				# 34484
	swx		r61, r9, r13				# 34484
	cmpi	r14, 2
	beq		.b49404				# 34523
.b48068:
	lw		r9, 0(r51)				# 6744
	lw		r61, 0(r29)				# 1353
	sw		r61, 0(r9)				# 1353
	lw		r61, 1(r29)				# 1376
	sw		r61, 1(r9)				# 1353
	lw		r61, 2(r29)				# 1399
	sw		r61, 2(r9)				# 40574
	lw		r9, 6(r51)				# 7787
	sw		r5, 0(r9)				# 40574
	addi	r9, r0, 0				# 39734
	sw		r9, -8(r3)				# 39734
.b49408:
	lw		r61, -7(r3)				# 7046
	lw		r28, 2(r61)				# 7046
	lwx		r28, r28, r9				# 39789
	cmpi	r28, 0
	bge		.b49410				# 39832
.b49406:
	lw		r9, -6(r3)				# 40992
	addi	r9, r9, -1				# 40992
	lw		r61, -5(r3)				# 979
	addi	r5, r61, 1				# 979
	cmpi	r5, 5
	bge		.b49441				# 1000
.b49442:
.b49440:
	sw		r5, -5(r3)				# 40479
	sw		r9, -6(r3)				# 40479
	cmpi	r9, 0
	bge		.b48063				# 40479
	b		.b48064
.b49441:
	addi	r5, r5, -5				# 1017
	b		.b49440				# 1017
.b49410:
	lw		r28, 3(r61)				# 7193
	lwx		r28, r28, r9				# 39973
	cmpi	r28, 0
	beq		.b49412				# 39973
.b49414:
	lw		r28, 6(r61)				# 7634
	lw		r15, 0(r28)				# 40004
	addi	r62, r0, 0				# 1232
	lli		r28, diffuse_ray.2584				# 1232
	sw		r62, 0(r28)				# 1232
	sw		r62, 1(r28)				# 1232
	sw		r62, 2(r28)				# 40040
	lw		r28, 7(r61)				# 7939
	lw		r61, 1(r61)				# 6897
	lli		r62, dirvecs.2624				# 40158
	lwx		r62, r62, r15				# 40158
	sw		r62, -9(r3)				# 40158
	lwx		r28, r28, r9				# 40158
	sw		r28, -10(r3)				# 40158
	lwx		r13, r61, r9				# 40158
	lw		r9, 0(r13)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r13)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r13)				# 1399
	sw		r9, 2(r61)				# 22055
	lli		r9, n_objects.2525				# 22105
	lw		r9, 0(r9)				# 22105
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b49417				# 21420
.b49415:
	addi	r9, r0, 118				# 35584
	sw		r9, -11(r3)				# 35584
.b49432:
	lw		r10, -9(r3)				# 35627
	lwx		r1, r10, r9				# 35627
	lw		r28, 0(r1)				# 8078
	lw		r61, 0(r28)				# 1949
	lw		r51, -10(r3)				# 1949
	lw		r62, 0(r51)				# 1949
	fmul	r62, r61, r62				# 1949
	lw		r61, 1(r28)				# 1967
	lw		r15, 1(r51)				# 1967
	fmul	r61, r61, r15				# 1949
	fadd	r62, r62, r61				# 1949
	lw		r28, 2(r28)				# 1985
	lw		r61, 2(r51)				# 1985
	fmul	r61, r28, r61				# 1949
	fadd	r28, r62, r61				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b49435				# 3188
.b49436:
	addi	r61, r0, 1				# 3188
.b49439:
	addi	r9, r9, 1				# 35712
	lwx		r1, r10, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r28, r9				# 35694
	mflr	r63
	sw		r63, -12(r3)
	addi	r3, r3, -13
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 13
	lw		r63, -12(r3)
	mtlr	r63				# 35694
.b49437:
	lw		r9, -11(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -11(r3)				# 35584
	cmpi	r9, 0
	bge		.b49432				# 35584
.b49430:
	lw		r9, -7(r3)				# 7491
	lw		r9, 5(r9)				# 7491
	lw		r61, -8(r3)				# 40298
	lwx		r61, r9, r61				# 40298
	addi	r9, r0, 0				# 1353
	sw		r9, 0(r61)				# 1353
	sw		r9, 1(r61)				# 1353
	sw		r9, 2(r61)				# 1399
.b49412:
	lw		r9, -8(r3)				# 40355
	addi	r9, r9, 1				# 40355
	sw		r9, -8(r3)				# 39734
	cmpi	r9, 4
	ble		.b49408				# 39734
	b		.b49406
.b49435:
	addi	r61, r0, 0				# 3188
.b49438:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -12(r3)
	addi	r3, r3, -13
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 13
	lw		r63, -12(r3)
	mtlr	r63				# 35766
	b		.b49437				# 35766
.b49417:
	lli		r9, objects.2536				# 21445
	lwx		r15, r9, r61				# 21445
	lw		r30, 10(r15)				# 6561
	lw		r54, 1(r15)				# 2994
	lw		r9, 0(r13)				# 21561
	lw		r62, 5(r15)				# 4475
	lw		r28, 0(r62)				# 21561
	fsub	r9, r9, r28				# 21547
	sw		r9, 0(r30)				# 21547
	lw		r9, 1(r13)				# 21603
	lw		r28, 1(r62)				# 21603
	fsub	r9, r9, r28				# 21589
	sw		r9, 1(r30)				# 21547
	lw		r9, 2(r13)				# 21645
	lw		r28, 2(r62)				# 21645
	fsub	r51, r9, r28				# 21631
	sw		r51, 2(r30)				# 21547
	cmpi	r54, 2
	beq		.b49420				# 21673
.b49421:
	cmpi	r54, 2
	ble		.b49419				# 21798
.b49423:
	lw		r62, 0(r30)				# 21847
	lw		r7, 1(r30)				# 21847
	fmul	r28, r62, r62				# 14374
	lw		r25, 4(r15)				# 3734
	lw		r9, 0(r25)				# 14374
	fmul	r28, r28, r9				# 14374
	fmul	r9, r7, r7				# 14400
	lw		r10, 1(r25)				# 14400
	fmul	r9, r9, r10				# 14374
	fadd	r28, r28, r9				# 14374
	fmul	r9, r51, r51				# 14426
	lw		r10, 2(r25)				# 14426
	fmul	r9, r9, r10				# 14374
	fadd	r9, r28, r9				# 14354
	lw		r28, 3(r15)				# 3553
	cmpi	r28, 0
	beq		.b49425				# 14456
.b49426:
	fmul	r10, r7, r51				# 14522
	lw		r15, 9(r15)				# 5989
	lw		r28, 0(r15)				# 14522
	fmul	r28, r10, r28				# 14503
	fadd	r28, r9, r28				# 14503
	fmul	r9, r51, r62				# 14556
	lw		r10, 1(r15)				# 14556
	fmul	r9, r9, r10				# 14503
	fadd	r28, r28, r9				# 14503
	fmul	r9, r62, r7				# 14590
	lw		r62, 2(r15)				# 14590
	fmul	r9, r9, r62				# 14503
	fadd	r9, r28, r9				# 14503
	cmpi	r54, 3
	beq		.b49428				# 21917
.b49429:
.b49427:
	sw		r9, 3(r30)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b49417				# 21420
	b		.b49415
.b49428:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b49427				# 21937
.b49425:
	cmpi	r54, 3
	beq		.b49428				# 21917
	b		.b49429
.b49419:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b49417				# 21420
	b		.b49415
.b49420:
	lw		r62, 4(r15)				# 4293
	lw		r9, 0(r30)				# 21728
	lw		r28, 1(r30)				# 21728
	lw		r15, 0(r62)				# 2037
	fmul	r9, r15, r9				# 2037
	lw		r15, 1(r62)				# 2052
	fmul	r28, r15, r28				# 2037
	fadd	r9, r9, r28				# 2037
	lw		r28, 2(r62)				# 2067
	fmul	r28, r28, r51				# 2037
	fadd	r9, r9, r28				# 21713
	sw		r9, 3(r30)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b49417				# 21420
	b		.b49415
.b49404:
	lw		r9, 0(r7)				# 34576
	fsub	r9, r19, r9				# 34565
	fmul	r26, r26, r9				# 34551
	addi	r46, r46, 1				# 34604
	lw		r9, 0(r39)				# 34645
	fadd	r62, r62, r9				# 34604
	cmpi	r46, 4
	ble		.b48070				# 32983
	b		.b48068
.b49401:
	cmpi	r14, 2
	beq		.b49404				# 34523
	b		.b48068
.b48839:
	lli		r9, reflections.2644				# 32262
	lwx		r20, r9, r61				# 32262
	lw		r35, 1(r20)				# 8279
	sw		r23, 0(r39)				# 28622
	addi	r38, r0, 0				# 28095
	lwx		r49, r10, r38				# 28095
	lw		r9, 0(r49)				# 28128
	cmpi	r9, -1
	beq		.b48841				# 28164
.b48844:
	cmpi	r9, 99
	beq		.b48846				# 28213
.b48847:
	lwx		r32, r41, r9				# 18636
	lw		r12, 10(r32)				# 6561
	lw		r52, 0(r12)				# 18698
	lw		r18, 1(r12)				# 18723
	lw		r11, 2(r12)				# 18748
	lw		r8, 1(r35)				# 8141
	lwx		r16, r8, r9				# 18807
	lw		r9, 1(r32)				# 2994
	cmpi	r9, 1
	beq		.b48953				# 18869
.b48954:
	cmpi	r9, 2
	beq		.b48979				# 18950
.b48980:
	lw		r44, 0(r16)				# 18204
	fcmp	r44, r28
	beq		.b48983				# 3128
.b48984:
	lw		r9, 1(r16)				# 18278
	fmul	r9, r9, r52				# 18278
	lw		r15, 2(r16)				# 18298
	fmul	r15, r15, r18				# 18278
	fadd	r15, r9, r15				# 18278
	lw		r9, 3(r16)				# 18318
	fmul	r9, r9, r11				# 18278
	fadd	r15, r15, r9				# 18265
	lw		r9, 3(r12)				# 18342
	fmul	r12, r15, r15				# 18377
	fmul	r9, r44, r9				# 18377
	fsub	r12, r12, r9				# 18369
	fcmp	r12, r28
	ble		.b48985				# 3158
.b48986:
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b48988				# 18435
.b48989:
	fsqrt	r9, r12				# 227
	fadd	r9, r15, r9				# 18476
	lw		r15, 4(r16)				# 18476
	fmul	r15, r9, r15				# 18457
	lli		r9, solver_dist.2563				# 18457
	sw		r15, 0(r9)				# 18457
	addi	r9, r0, 1				# 18580
.b48991:
	lli		r11, solver_dist.2563				# 28381
	lw		r15, 0(r11)				# 28381
	lw		r9, 0(r39)				# 28414
	fcmp	r9, r15
	ble		.b48845				# 3098
.b48993:
	addi	r15, r0, 1				# 27829
	lwx		r9, r49, r15				# 27829
	cmpi	r9, -1
	beq		.b48845				# 27860
.b48996:
	lli		r12, and_net.2554				# 27885
	lwx		r18, r12, r9				# 27885
	addi	r44, r0, 0				# 26885
	lw		r55, 0(r35)				# 8078
	lwx		r52, r18, r44				# 26915
	cmpi	r52, -1
	beq		.b48997				# 26952
.b49000:
	lwx		r16, r41, r52				# 18636
	lw		r60, 10(r16)				# 6561
	lw		r6, 0(r60)				# 18698
	lw		r12, 1(r60)				# 18723
	lw		r31, 2(r60)				# 18748
	lwx		r43, r8, r52				# 18807
	lw		r9, 1(r16)				# 2994
	cmpi	r9, 1
	beq		.b49002				# 18869
.b49003:
	cmpi	r9, 2
	beq		.b49028				# 18950
.b49029:
	lw		r32, 0(r43)				# 18204
	fcmp	r32, r28
	beq		.b49032				# 3128
.b49033:
	lw		r9, 1(r43)				# 18278
	fmul	r9, r9, r6				# 18278
	lw		r6, 2(r43)				# 18298
	fmul	r12, r6, r12				# 18278
	fadd	r9, r9, r12				# 18278
	lw		r12, 3(r43)				# 18318
	fmul	r12, r12, r31				# 18278
	fadd	r12, r9, r12				# 18265
	lw		r9, 3(r60)				# 18342
	fmul	r60, r12, r12				# 18377
	fmul	r9, r32, r9				# 18377
	fsub	r9, r60, r9				# 18369
	fcmp	r9, r28
	ble		.b49034				# 3158
.b49035:
	lw		r60, 6(r16)				# 3372
	cmpi	r60, 0
	beq		.b49037				# 18435
.b49038:
	fsqrt	r9, r9				# 227
	fadd	r12, r12, r9				# 18476
	lw		r9, 4(r43)				# 18476
	fmul	r9, r12, r9				# 18457
	sw		r9, 0(r11)				# 18457
	addi	r32, r0, 1				# 18580
	lw		r9, 0(r11)				# 27058
	fcmp	r9, r28
	ble		.b49043				# 3098
.b49045:
	lw		r12, 0(r39)				# 27125
	fcmp	r12, r9
	ble		.b49043				# 3098
.b49047:
	addis	r12, r0, 15395
	ori		r12, r12, 55050				# 27169
	fadd	r43, r9, r12				# 27161
	lw		r9, 0(r55)				# 27198
	fmul	r9, r9, r43				# 27198
	fadd	r60, r9, r1				# 27189
	lw		r9, 1(r55)				# 27247
	fmul	r9, r9, r43				# 27247
	fadd	r16, r9, r42				# 27238
	lw		r9, 2(r55)				# 27296
	fmul	r9, r9, r43				# 27296
	fadd	r55, r9, r47				# 27287
	addi	r12, r0, 0				# 23025
	lwx		r9, r18, r12				# 23025
	cmpi	r9, -1
	beq		.b49050				# 23052
.b49051:
	lwx		r24, r41, r9				# 23095
	lw		r31, 5(r24)				# 4475
	lw		r9, 0(r31)				# 22709
	fsub	r34, r60, r9				# 22700
	lw		r9, 1(r31)				# 22741
	fsub	r6, r16, r9				# 22732
	lw		r9, 2(r31)				# 22773
	fsub	r58, r55, r9				# 22764
	lw		r40, 1(r24)				# 2994
	cmpi	r40, 1
	beq		.b49053				# 22824
.b49054:
	cmpi	r40, 2
	beq		.b49066				# 22882
.b49067:
	fmul	r45, r34, r34				# 14374
	lw		r31, 4(r24)				# 3734
	lw		r9, 0(r31)				# 14374
	fmul	r45, r45, r9				# 14374
	fmul	r21, r6, r6				# 14400
	lw		r9, 1(r31)				# 14400
	fmul	r9, r21, r9				# 14374
	fadd	r21, r45, r9				# 14374
	fmul	r45, r58, r58				# 14426
	lw		r9, 2(r31)				# 14426
	fmul	r9, r45, r9				# 14374
	fadd	r9, r21, r9				# 14354
	lw		r31, 3(r24)				# 3553
	cmpi	r31, 0
	beq		.b49079				# 14456
.b49080:
	fmul	r31, r6, r58				# 14522
	lw		r45, 9(r24)				# 5989
	lw		r21, 0(r45)				# 14522
	fmul	r31, r31, r21				# 14503
	fadd	r9, r9, r31				# 14503
	fmul	r31, r58, r34				# 14556
	lw		r58, 1(r45)				# 14556
	fmul	r31, r31, r58				# 14503
	fadd	r31, r9, r31				# 14503
	fmul	r6, r34, r6				# 14590
	lw		r9, 2(r45)				# 14590
	fmul	r9, r6, r9				# 14503
	fadd	r9, r31, r9				# 14503
	cmpi	r40, 3
	beq		.b49082				# 22583
.b49083:
	lw		r6, 6(r24)				# 3372
	fcmp	r28, r9
	ble		.b49085				# 3188
.b49086:
	addi	r9, r0, 1				# 3188
	cmpi	r6, 0
	beq		.b49088				# 765
.b49089:
	cmpi	r9, 0
	beq		.b49090				# 775
.b49091:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b49043:
	addi	r44, r44, 1				# 27573
	lw		r55, 0(r35)				# 8078
	lwx		r52, r18, r44				# 26915
	cmpi	r52, -1
	beq		.b48997				# 26952
	b		.b49000
.b48997:
	addi	r15, r15, 1				# 27971
	lwx		r9, r49, r15				# 27829
	cmpi	r9, -1
	beq		.b48845				# 27860
	b		.b48996
.b48845:
	addi	r38, r38, 1				# 28519
	lwx		r49, r10, r38				# 28095
	lw		r9, 0(r49)				# 28128
	cmpi	r9, -1
	beq		.b48841				# 28164
	b		.b48844
.b48841:
	lw		r9, 0(r39)				# 28698
	fcmp	r9, r50
	ble		.b49098				# 3098
.b49100:
	addis	r15, r0, 19646
	ori		r15, r15, 48160				# 28751
	fcmp	r15, r9
	ble		.b49098				# 3098
.b49102:
	lw		r9, 0(r27)				# 32393
	slwi	r9, r9, 2				# 32393
	lw		r15, 0(r59)				# 32393
	add		r15, r9, r15				# 32376
	lw		r9, 0(r20)				# 8211
	cmp		r15, r9
	beq		.b49103				# 32454
.b49098:
	addi	r61, r61, -1				# 32856
	cmpi	r61, 0
	bge		.b48839				# 32237
	b		.b48837
.b49103:
	addi	r12, r0, 0				# 24323
	lwx		r38, r10, r12				# 24323
	lw		r44, 0(r38)				# 24355
	cmpi	r44, -1
	beq		.b49107				# 24391
.b49108:
	cmpi	r44, 99
	beq		.b49110				# 24451
.b49111:
	lwx		r6, r41, r44				# 17557
	lw		r60, 0(r33)				# 17595
	lw		r9, 5(r6)				# 4475
	lw		r15, 0(r9)				# 17595
	fsub	r43, r60, r15				# 17586
	lw		r18, 1(r33)				# 17632
	lw		r15, 1(r9)				# 17632
	fsub	r32, r18, r15				# 17623
	lw		r8, 2(r33)				# 17669
	lw		r9, 2(r9)				# 17669
	fsub	r55, r8, r9				# 17660
	lli		r49, consts.2632				# 17731
	lwx		r11, r49, r44				# 17731
	lw		r52, 1(r6)				# 2994
	cmpi	r52, 1
	beq		.b49113				# 17793
.b49114:
	cmpi	r52, 2
	beq		.b49139				# 17874
.b49140:
	lw		r15, 0(r11)				# 17054
	fcmp	r15, r28
	beq		.b49143				# 3128
.b49144:
	lw		r9, 1(r11)				# 17128
	fmul	r44, r9, r43				# 17128
	lw		r9, 2(r11)				# 17148
	fmul	r9, r9, r32				# 17128
	fadd	r44, r44, r9				# 17128
	lw		r9, 3(r11)				# 17168
	fmul	r9, r9, r55				# 17128
	fadd	r31, r44, r9				# 17115
	fmul	r9, r43, r43				# 14374
	lw		r24, 4(r6)				# 3734
	lw		r44, 0(r24)				# 14374
	fmul	r16, r9, r44				# 14374
	fmul	r9, r32, r32				# 14400
	lw		r44, 1(r24)				# 14400
	fmul	r9, r9, r44				# 14374
	fadd	r9, r16, r9				# 14374
	fmul	r44, r55, r55				# 14426
	lw		r16, 2(r24)				# 14426
	fmul	r44, r44, r16				# 14374
	fadd	r9, r9, r44				# 14354
	lw		r44, 3(r6)				# 3553
	cmpi	r44, 0
	beq		.b49146				# 14456
.b49147:
	fmul	r16, r32, r55				# 14522
	lw		r44, 9(r6)				# 5989
	lw		r24, 0(r44)				# 14522
	fmul	r16, r16, r24				# 14503
	fadd	r9, r9, r16				# 14503
	fmul	r16, r55, r43				# 14556
	lw		r55, 1(r44)				# 14556
	fmul	r16, r16, r55				# 14503
	fadd	r55, r9, r16				# 14503
	fmul	r16, r43, r32				# 14590
	lw		r9, 2(r44)				# 14590
	fmul	r9, r16, r9				# 14503
	fadd	r9, r55, r9				# 14503
	cmpi	r52, 3
	beq		.b49149				# 17239
.b49150:
.b49148:
	fmul	r44, r31, r31				# 17295
	fmul	r9, r15, r9				# 17295
	fsub	r9, r44, r9				# 17287
	fcmp	r9, r28
	ble		.b49151				# 3158
.b49152:
	lw		r15, 6(r6)				# 3372
	cmpi	r15, 0
	beq		.b49154				# 17353
.b49155:
	fsqrt	r9, r9				# 227
	fadd	r15, r31, r9				# 17394
	lw		r9, 4(r11)				# 17394
	fmul	r9, r15, r9				# 17375
	lli		r15, solver_dist.2563				# 17375
	sw		r9, 0(r15)				# 17375
	addi	r9, r0, 1				# 17498
	lli		r16, solver_dist.2563				# 24609
	lw		r9, 0(r16)				# 24609
	fcmp	r50, r9
	ble		.b49158				# 3098
.b49159:
	addi	r44, r0, 1				# 24006
	lwx		r9, r38, r44				# 24006
	cmpi	r9, -1
	beq		.b49162				# 24037
.b49163:
	lli		r15, and_net.2554				# 24078
	lwx		r11, r15, r9				# 24078
	addi	r15, r0, 0				# 23266
	lwx		r9, r11, r15				# 23266
	cmpi	r9, -1
	beq		.b49166				# 23266
.b49167:
	lwx		r55, r41, r9				# 17557
	lw		r52, 5(r55)				# 4475
	lw		r32, 0(r52)				# 17595
	fsub	r31, r60, r32				# 17586
	lw		r32, 1(r52)				# 17632
	fsub	r32, r18, r32				# 17623
	lw		r52, 2(r52)				# 17669
	fsub	r24, r8, r52				# 17660
	lwx		r6, r49, r9				# 17731
	lw		r58, 1(r55)				# 2994
	cmpi	r58, 1
	beq		.b49169				# 17793
.b49170:
	cmpi	r58, 2
	beq		.b49195				# 17874
.b49196:
	lw		r43, 0(r6)				# 17054
	fcmp	r43, r28
	beq		.b49199				# 3128
.b49200:
	lw		r9, 1(r6)				# 17128
	fmul	r52, r9, r31				# 17128
	lw		r9, 2(r6)				# 17148
	fmul	r9, r9, r32				# 17128
	fadd	r52, r52, r9				# 17128
	lw		r9, 3(r6)				# 17168
	fmul	r9, r9, r24				# 17128
	fadd	r40, r52, r9				# 17115
	fmul	r9, r31, r31				# 14374
	lw		r34, 4(r55)				# 3734
	lw		r52, 0(r34)				# 14374
	fmul	r9, r9, r52				# 14374
	fmul	r52, r32, r32				# 14400
	lw		r45, 1(r34)				# 14400
	fmul	r52, r52, r45				# 14374
	fadd	r9, r9, r52				# 14374
	fmul	r52, r24, r24				# 14426
	lw		r34, 2(r34)				# 14426
	fmul	r52, r52, r34				# 14374
	fadd	r9, r9, r52				# 14354
	lw		r52, 3(r55)				# 3553
	cmpi	r52, 0
	beq		.b49202				# 14456
.b49203:
	fmul	r52, r32, r24				# 14522
	lw		r34, 9(r55)				# 5989
	lw		r45, 0(r34)				# 14522
	fmul	r52, r52, r45				# 14503
	fadd	r9, r9, r52				# 14503
	fmul	r52, r24, r31				# 14556
	lw		r24, 1(r34)				# 14556
	fmul	r52, r52, r24				# 14503
	fadd	r24, r9, r52				# 14503
	fmul	r9, r31, r32				# 14590
	lw		r52, 2(r34)				# 14590
	fmul	r9, r9, r52				# 14503
	fadd	r9, r24, r9				# 14503
	cmpi	r58, 3
	beq		.b49205				# 17239
.b49206:
.b49204:
	fmul	r52, r40, r40				# 17295
	fmul	r9, r43, r9				# 17295
	fsub	r52, r52, r9				# 17287
	fcmp	r52, r28
	ble		.b49207				# 3158
.b49208:
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b49210				# 17353
.b49211:
	fsqrt	r9, r52				# 227
	fadd	r52, r40, r9				# 17394
	lw		r9, 4(r6)				# 17394
	fmul	r9, r52, r9				# 17375
	sw		r9, 0(r16)				# 17375
	addi	r9, r0, 1				# 17498
	lw		r52, 0(r16)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r52
	ble		.b49215				# 3098
.b49216:
	addi	r9, r0, 1				# 3098
.b49218:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r9, r52, r9				# 23516
	lli		r55, light.2545				# 23554
	lw		r52, 0(r55)				# 23554
	fmul	r52, r52, r9				# 23554
	fadd	r32, r52, r60				# 23545
	lw		r52, 1(r55)				# 23613
	fmul	r52, r52, r9				# 23613
	fadd	r43, r52, r18				# 23604
	lw		r52, 2(r55)				# 23672
	fmul	r9, r52, r9				# 23672
	fadd	r55, r9, r8				# 23663
	addi	r52, r0, 0				# 23025
	lwx		r9, r11, r52				# 23025
	cmpi	r9, -1
	beq		.b49223				# 23052
.b49224:
	lwx		r6, r41, r9				# 23095
	lw		r31, 5(r6)				# 4475
	lw		r9, 0(r31)				# 22709
	fsub	r34, r32, r9				# 22700
	lw		r9, 1(r31)				# 22741
	fsub	r40, r43, r9				# 22732
	lw		r9, 2(r31)				# 22773
	fsub	r24, r55, r9				# 22764
	lw		r58, 1(r6)				# 2994
	cmpi	r58, 1
	beq		.b49226				# 22824
.b49227:
	cmpi	r58, 2
	beq		.b49239				# 22882
.b49240:
	fmul	r31, r34, r34				# 14374
	lw		r45, 4(r6)				# 3734
	lw		r9, 0(r45)				# 14374
	fmul	r21, r31, r9				# 14374
	fmul	r31, r40, r40				# 14400
	lw		r9, 1(r45)				# 14400
	fmul	r9, r31, r9				# 14374
	fadd	r31, r21, r9				# 14374
	fmul	r21, r24, r24				# 14426
	lw		r9, 2(r45)				# 14426
	fmul	r9, r21, r9				# 14374
	fadd	r9, r31, r9				# 14354
	lw		r31, 3(r6)				# 3553
	cmpi	r31, 0
	beq		.b49252				# 14456
.b49253:
	fmul	r21, r40, r24				# 14522
	lw		r45, 9(r6)				# 5989
	lw		r31, 0(r45)				# 14522
	fmul	r31, r21, r31				# 14503
	fadd	r31, r9, r31				# 14503
	fmul	r24, r24, r34				# 14556
	lw		r9, 1(r45)				# 14556
	fmul	r9, r24, r9				# 14503
	fadd	r31, r31, r9				# 14503
	fmul	r24, r34, r40				# 14590
	lw		r9, 2(r45)				# 14590
	fmul	r9, r24, r9				# 14503
	fadd	r9, r31, r9				# 14503
	cmpi	r58, 3
	beq		.b49255				# 22583
.b49256:
	lw		r6, 6(r6)				# 3372
	fcmp	r28, r9
	ble		.b49258				# 3188
.b49259:
	addi	r9, r0, 1				# 3188
	cmpi	r6, 0
	beq		.b49261				# 765
.b49262:
	cmpi	r9, 0
	beq		.b49263				# 775
.b49264:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b49269:
	addi	r15, r15, 1				# 23786
	lwx		r9, r11, r15				# 23266
	cmpi	r9, -1
	beq		.b49166				# 23266
	b		.b49167
.b49166:
	addi	r9, r0, 0				# 23304
.b49271:
	addi	r44, r44, 1				# 24216
	lwx		r9, r38, r44				# 24006
	cmpi	r9, -1
	beq		.b49162				# 24037
	b		.b49163
.b49162:
	addi	r9, r0, 0				# 24059
	addi	r9, r0, 0				# 24725
.b49275:
	addi	r12, r12, 1				# 24896
	lwx		r38, r10, r12				# 24323
	lw		r44, 0(r38)				# 24355
	cmpi	r44, -1
	beq		.b49107				# 24391
	b		.b49108
.b49107:
	addi	r9, r0, 0				# 24424
.b49392:
	lw		r38, 0(r35)				# 8078
	lw		r44, 0(r38)				# 1949
	fmul	r9, r53, r44				# 1949
	lw		r12, 1(r38)				# 1967
	fmul	r15, r25, r12				# 1949
	fadd	r35, r9, r15				# 1949
	lw		r9, 2(r38)				# 1985
	fmul	r15, r37, r9				# 1949
	fadd	r15, r35, r15				# 32566
	lw		r35, 2(r20)				# 8350
	fmul	r20, r35, r56				# 32670
	fmul	r20, r20, r15				# 32657
	fmul	r15, r30, r44				# 1949
	fmul	r12, r54, r12				# 1949
	fadd	r15, r15, r12				# 1949
	fmul	r9, r2, r9				# 1949
	fadd	r9, r15, r9				# 32719
	fmul	r12, r35, r9				# 32705
	fcmp	r20, r28
	ble		.b49394				# 3158
.b49396:
	lw		r15, 0(r29)				# 2129
	lw		r9, 0(r36)				# 2141
	fmul	r9, r20, r9				# 2129
	fadd	r9, r15, r9				# 2117
	sw		r9, 0(r29)				# 2117
	lw		r15, 1(r29)				# 2171
	lw		r9, 1(r36)				# 2183
	fmul	r9, r20, r9				# 2171
	fadd	r9, r15, r9				# 2159
	sw		r9, 1(r29)				# 2117
	lw		r15, 2(r29)				# 2213
	lw		r9, 2(r36)				# 2225
	fmul	r9, r20, r9				# 2213
	fadd	r9, r15, r9				# 2201
	sw		r9, 2(r29)				# 2201
	fcmp	r12, r28
	ble		.b49098				# 3158
.b49398:
	fmul	r9, r12, r12				# 32023
	fmul	r9, r9, r9				# 32023
	fmul	r15, r9, r17				# 32013
	lw		r9, 0(r29)				# 32078
	fadd	r9, r9, r15				# 32067
	sw		r9, 0(r29)				# 32067
	lw		r9, 1(r29)				# 32109
	fadd	r9, r9, r15				# 32098
	sw		r9, 1(r29)				# 32067
	lw		r9, 2(r29)				# 32140
	fadd	r9, r9, r15				# 32129
	sw		r9, 2(r29)				# 32129
	addi	r61, r61, -1				# 32856
	cmpi	r61, 0
	bge		.b48839				# 32237
	b		.b48837
.b49394:
	fcmp	r12, r28
	ble		.b49098				# 3158
	b		.b49398
.b49263:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b49267:
	addi	r52, r52, 1				# 23162
	lwx		r9, r11, r52				# 23025
	cmpi	r9, -1
	beq		.b49223				# 23052
	b		.b49224
.b49223:
	addi	r9, r0, 1				# 23074
	addi	r9, r0, 1				# 23769
	addi	r9, r0, 1				# 24196
.b49274:
	addi	r9, r0, 1				# 24710
	addi	r49, r0, 1				# 24006
	lwx		r9, r38, r49				# 24006
	cmpi	r9, -1
	beq		.b49279				# 24037
.b49280:
	lli		r15, and_net.2554				# 24078
	lwx		r8, r15, r9				# 24078
	addi	r15, r0, 0				# 23266
	lwx		r9, r8, r15				# 23266
	cmpi	r9, -1
	beq		.b49283				# 23266
.b49284:
	lwx		r32, r41, r9				# 17557
	lw		r16, 0(r33)				# 17595
	lw		r18, 5(r32)				# 4475
	lw		r44, 0(r18)				# 17595
	fsub	r55, r16, r44				# 17586
	lw		r52, 1(r33)				# 17632
	lw		r44, 1(r18)				# 17632
	fsub	r60, r52, r44				# 17623
	lw		r11, 2(r33)				# 17669
	lw		r44, 2(r18)				# 17669
	fsub	r6, r11, r44				# 17660
	lli		r44, consts.2632				# 17731
	lwx		r43, r44, r9				# 17731
	lw		r44, 1(r32)				# 2994
	cmpi	r44, 1
	beq		.b49286				# 17793
.b49287:
	cmpi	r44, 2
	beq		.b49312				# 17874
.b49313:
	lw		r31, 0(r43)				# 17054
	fcmp	r31, r28
	beq		.b49316				# 3128
.b49317:
	lw		r9, 1(r43)				# 17128
	fmul	r18, r9, r55				# 17128
	lw		r9, 2(r43)				# 17148
	fmul	r9, r9, r60				# 17128
	fadd	r18, r18, r9				# 17128
	lw		r9, 3(r43)				# 17168
	fmul	r9, r9, r6				# 17128
	fadd	r24, r18, r9				# 17115
	fmul	r18, r55, r55				# 14374
	lw		r40, 4(r32)				# 3734
	lw		r9, 0(r40)				# 14374
	fmul	r58, r18, r9				# 14374
	fmul	r18, r60, r60				# 14400
	lw		r9, 1(r40)				# 14400
	fmul	r9, r18, r9				# 14374
	fadd	r9, r58, r9				# 14374
	fmul	r18, r6, r6				# 14426
	lw		r40, 2(r40)				# 14426
	fmul	r18, r18, r40				# 14374
	fadd	r9, r9, r18				# 14354
	lw		r18, 3(r32)				# 3553
	cmpi	r18, 0
	beq		.b49319				# 14456
.b49320:
	fmul	r18, r60, r6				# 14522
	lw		r40, 9(r32)				# 5989
	lw		r58, 0(r40)				# 14522
	fmul	r18, r18, r58				# 14503
	fadd	r58, r9, r18				# 14503
	fmul	r18, r6, r55				# 14556
	lw		r9, 1(r40)				# 14556
	fmul	r9, r18, r9				# 14503
	fadd	r6, r58, r9				# 14503
	fmul	r18, r55, r60				# 14590
	lw		r9, 2(r40)				# 14590
	fmul	r9, r18, r9				# 14503
	fadd	r9, r6, r9				# 14503
	cmpi	r44, 3
	beq		.b49322				# 17239
.b49323:
.b49321:
	fmul	r44, r24, r24				# 17295
	fmul	r9, r31, r9				# 17295
	fsub	r9, r44, r9				# 17287
	fcmp	r9, r28
	ble		.b49324				# 3158
.b49325:
	lw		r44, 6(r32)				# 3372
	cmpi	r44, 0
	beq		.b49327				# 17353
.b49328:
	fsqrt	r9, r9				# 227
	fadd	r44, r24, r9				# 17394
	lw		r9, 4(r43)				# 17394
	fmul	r9, r44, r9				# 17375
	lli		r44, solver_dist.2563				# 17375
	sw		r9, 0(r44)				# 17375
.b49326:
	addi	r9, r0, 1				# 17498
	lli		r9, solver_dist.2563				# 23423
	lw		r44, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r44
	ble		.b49332				# 3098
.b49333:
	addi	r9, r0, 1				# 3098
.b49335:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r18, r44, r9				# 23516
	lli		r9, light.2545				# 23554
	lw		r44, 0(r9)				# 23554
	fmul	r44, r44, r18				# 23554
	fadd	r60, r44, r16				# 23545
	lw		r44, 1(r9)				# 23613
	fmul	r44, r44, r18				# 23613
	fadd	r16, r44, r52				# 23604
	lw		r9, 2(r9)				# 23672
	fmul	r9, r9, r18				# 23672
	fadd	r52, r9, r11				# 23663
	addi	r9, r0, 0				# 23025
	lwx		r44, r8, r9				# 23025
	cmpi	r44, -1
	beq		.b49340				# 23052
.b49341:
	lwx		r43, r41, r44				# 23095
	lw		r44, 5(r43)				# 4475
	lw		r18, 0(r44)				# 22709
	fsub	r6, r60, r18				# 22700
	lw		r18, 1(r44)				# 22741
	fsub	r55, r16, r18				# 22732
	lw		r44, 2(r44)				# 22773
	fsub	r11, r52, r44				# 22764
	lw		r32, 1(r43)				# 2994
	cmpi	r32, 1
	beq		.b49343				# 22824
.b49344:
	cmpi	r32, 2
	beq		.b49356				# 22882
.b49357:
	fmul	r44, r6, r6				# 14374
	lw		r24, 4(r43)				# 3734
	lw		r18, 0(r24)				# 14374
	fmul	r18, r44, r18				# 14374
	fmul	r44, r55, r55				# 14400
	lw		r31, 1(r24)				# 14400
	fmul	r44, r44, r31				# 14374
	fadd	r18, r18, r44				# 14374
	fmul	r31, r11, r11				# 14426
	lw		r44, 2(r24)				# 14426
	fmul	r44, r31, r44				# 14374
	fadd	r44, r18, r44				# 14354
	lw		r18, 3(r43)				# 3553
	cmpi	r18, 0
	beq		.b49369				# 14456
.b49370:
	fmul	r31, r55, r11				# 14522
	lw		r24, 9(r43)				# 5989
	lw		r18, 0(r24)				# 14522
	fmul	r18, r31, r18				# 14503
	fadd	r18, r44, r18				# 14503
	fmul	r11, r11, r6				# 14556
	lw		r44, 1(r24)				# 14556
	fmul	r44, r11, r44				# 14503
	fadd	r11, r18, r44				# 14503
	fmul	r44, r6, r55				# 14590
	lw		r18, 2(r24)				# 14590
	fmul	r44, r44, r18				# 14503
	fadd	r44, r11, r44				# 14503
	cmpi	r32, 3
	beq		.b49372				# 22583
.b49373:
	lw		r18, 6(r43)				# 3372
	fcmp	r28, r44
	ble		.b49375				# 3188
.b49376:
	addi	r44, r0, 1				# 3188
	cmpi	r18, 0
	beq		.b49378				# 765
.b49379:
	cmpi	r44, 0
	beq		.b49380				# 775
.b49381:
	addi	r44, r0, 0				# 775
	addi	r44, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b49386:
	addi	r15, r15, 1				# 23786
	lwx		r9, r8, r15				# 23266
	cmpi	r9, -1
	beq		.b49283				# 23266
	b		.b49284
.b49283:
	addi	r9, r0, 0				# 23304
.b49388:
	addi	r49, r49, 1				# 24216
	lwx		r9, r38, r49				# 24006
	cmpi	r9, -1
	beq		.b49279				# 24037
	b		.b49280
.b49279:
	addi	r9, r0, 0				# 24059
.b49390:
	addi	r12, r12, 1				# 24833
	lwx		r38, r10, r12				# 24323
	lw		r44, 0(r38)				# 24355
	cmpi	r44, -1
	beq		.b49107				# 24391
	b		.b49108
.b49380:
	addi	r44, r0, 1				# 775
	addi	r44, r0, 0				# 22625
.b49384:
	addi	r9, r9, 1				# 23162
	lwx		r44, r8, r9				# 23025
	cmpi	r44, -1
	beq		.b49340				# 23052
	b		.b49341
.b49340:
	addi	r9, r0, 1				# 23074
	addi	r9, r0, 1				# 23769
	addi	r9, r0, 1				# 24196
.b49391:
	addi	r9, r0, 1				# 24816
	addi	r61, r61, -1				# 32856
	cmpi	r61, 0
	bge		.b48839				# 32237
	b		.b48837
.b49378:
	cmpi	r44, 0
	beq		.b49382				# 22625
.b49383:
	addi	r44, r0, 0				# 22625
	b		.b49384				# 23092
.b49382:
	addi	r44, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b49386				# 23722
.b49375:
	addi	r44, r0, 0				# 3188
	cmpi	r18, 0
	beq		.b49378				# 765
	b		.b49379
.b49372:
	fsub	r44, r44, r19				# 22604
	lw		r18, 6(r43)				# 3372
	fcmp	r28, r44
	ble		.b49375				# 3188
	b		.b49376
.b49369:
	cmpi	r32, 3
	beq		.b49372				# 22583
	b		.b49373
.b49356:
	lw		r44, 4(r43)				# 4293
	lw		r18, 0(r44)				# 2037
	fmul	r32, r18, r6				# 2037
	lw		r18, 1(r44)				# 2052
	fmul	r18, r18, r55				# 2037
	fadd	r18, r32, r18				# 2037
	lw		r44, 2(r44)				# 2067
	fmul	r44, r44, r11				# 2037
	fadd	r44, r18, r44				# 22411
	lw		r18, 6(r43)				# 3372
	fcmp	r28, r44
	ble		.b49359				# 3188
.b49360:
	addi	r44, r0, 1				# 3188
	cmpi	r18, 0
	beq		.b49362				# 765
.b49363:
	cmpi	r44, 0
	beq		.b49364				# 775
.b49365:
	addi	r44, r0, 0				# 775
	addi	r44, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b49386				# 23722
.b49364:
	addi	r44, r0, 1				# 775
	addi	r44, r0, 0				# 22459
	b		.b49384				# 23092
.b49362:
	cmpi	r44, 0
	beq		.b49366				# 22459
.b49367:
	addi	r44, r0, 0				# 22459
	b		.b49384				# 23092
.b49366:
	addi	r44, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b49386				# 23722
.b49359:
	addi	r44, r0, 0				# 3188
	cmpi	r18, 0
	beq		.b49362				# 765
	b		.b49363
.b49343:
	fabs	r44, r6				# 322
	lw		r18, 4(r43)				# 3734
	lw		r32, 0(r18)				# 22178
	fcmp	r32, r44
	ble		.b49346				# 3098
.b49347:
	fabs	r32, r55				# 322
	lw		r44, 1(r18)				# 22224
	fcmp	r44, r32
	ble		.b49348				# 3098
.b49349:
	fabs	r44, r11				# 322
	lw		r18, 2(r18)				# 22261
	fcmp	r18, r44
	ble		.b49350				# 3098
.b49351:
	addi	r44, r0, 1				# 3098
	lw		r44, 6(r43)				# 3372
	cmpi	r44, 0
	beq		.b49384				# 23092
.b49385:
	addi	r9, r0, 0				# 23141
	b		.b49386				# 23722
.b49350:
	addi	r44, r0, 0				# 3098
	lw		r44, 6(r43)				# 3372
	cmpi	r44, 0
	beq		.b49354				# 22348
.b49355:
	addi	r44, r0, 0				# 22348
	b		.b49384				# 23092
.b49354:
	addi	r44, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b49386				# 23722
.b49348:
	addi	r44, r0, 0				# 22302
	lw		r44, 6(r43)				# 3372
	cmpi	r44, 0
	beq		.b49354				# 22348
	b		.b49355
.b49346:
	addi	r44, r0, 0				# 22317
	lw		r44, 6(r43)				# 3372
	cmpi	r44, 0
	beq		.b49354				# 22348
	b		.b49355
.b49332:
	addi	r9, r0, 0				# 3098
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b49336				# 23849
.b49337:
	addi	r15, r15, 1				# 23885
	lwx		r9, r8, r15				# 23266
	cmpi	r9, -1
	beq		.b49283				# 23266
	b		.b49284
.b49336:
	addi	r9, r0, 0				# 23945
	b		.b49388				# 24173
.b49327:
	fsqrt	r9, r9				# 227
	fsub	r44, r24, r9				# 17458
	lw		r9, 4(r43)				# 17458
	fmul	r9, r44, r9				# 17439
	lli		r44, solver_dist.2563				# 17439
	sw		r9, 0(r44)				# 17439
	b		.b49326				# 17439
.b49324:
	addi	r9, r0, 0				# 17510
	lli		r9, solver_dist.2563				# 23423
	lw		r44, 0(r9)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b49336				# 23849
	b		.b49337
.b49322:
	fsub	r9, r9, r19				# 17260
	b		.b49321				# 17260
.b49319:
	cmpi	r44, 3
	beq		.b49322				# 17239
	b		.b49323
.b49316:
	addi	r9, r0, 0				# 17102
	lli		r9, solver_dist.2563				# 23423
	lw		r44, 0(r9)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b49336				# 23849
	b		.b49337
.b49312:
	lw		r9, 0(r43)				# 16870
	fcmp	r28, r9
	ble		.b49314				# 3188
.b49315:
	lw		r9, 1(r43)				# 16924
	fmul	r9, r9, r55				# 16924
	lw		r44, 2(r43)				# 16944
	fmul	r44, r44, r60				# 16924
	fadd	r44, r9, r44				# 16924
	lw		r9, 3(r43)				# 16964
	fmul	r9, r9, r6				# 16924
	fadd	r44, r44, r9				# 16899
	lli		r9, solver_dist.2563				# 16899
	sw		r44, 0(r9)				# 16899
	addi	r9, r0, 1				# 16986
	lli		r9, solver_dist.2563				# 23423
	lw		r44, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r44
	ble		.b49332				# 3098
	b		.b49333
.b49314:
	addi	r9, r0, 0				# 16998
	lli		r9, solver_dist.2563				# 23423
	lw		r44, 0(r9)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b49336				# 23849
	b		.b49337
.b49286:
	lw		r9, 0(r43)				# 15996
	fsub	r9, r9, r55				# 15995
	lw		r58, 1(r43)				# 15995
	fmul	r44, r9, r58				# 15986
	lli		r24, v3.2630				# 16056
	lw		r31, 1(r24)				# 16056
	fmul	r9, r44, r31				# 16056
	fadd	r9, r9, r60				# 16050
	fabs	r9, r9				# 322
	lw		r40, 4(r32)				# 3920
	lw		r18, 1(r40)				# 16043
	fcmp	r18, r9
	ble		.b49289				# 3098
.b49290:
	lw		r9, 2(r24)				# 16117
	fmul	r9, r44, r9				# 16117
	fadd	r9, r9, r6				# 16111
	fabs	r34, r9				# 322
	lw		r9, 2(r40)				# 16104
	fcmp	r9, r34
	ble		.b49291				# 3098
.b49292:
	fcmp	r58, r28
	beq		.b49293				# 3128
.b49294:
	addi	r9, r0, 1				# 16157
.b49296:
	lli		r9, solver_dist.2563				# 16226
	sw		r44, 0(r9)				# 16226
	addi	r9, r0, 1				# 16249
	lli		r9, solver_dist.2563				# 23423
	lw		r44, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r44
	ble		.b49332				# 3098
	b		.b49333
.b49293:
	addi	r9, r0, 0				# 16157
.b49295:
	lw		r9, 2(r43)				# 16269
	fsub	r9, r9, r60				# 16268
	lw		r34, 3(r43)				# 16268
	fmul	r44, r9, r34				# 16259
	lw		r45, 0(r24)				# 16330
	fmul	r9, r44, r45				# 16330
	fadd	r9, r9, r55				# 16324
	fabs	r9, r9				# 322
	lw		r58, 0(r40)				# 16317
	fcmp	r58, r9
	ble		.b49298				# 3098
.b49299:
	lw		r9, 2(r24)				# 16391
	fmul	r9, r44, r9				# 16391
	fadd	r9, r9, r6				# 16385
	fabs	r9, r9				# 322
	lw		r24, 2(r40)				# 16378
	fcmp	r24, r9
	ble		.b49300				# 3098
.b49301:
	fcmp	r34, r28
	beq		.b49302				# 3128
.b49303:
	addi	r9, r0, 1				# 16431
.b49305:
	lli		r9, solver_dist.2563				# 16500
	sw		r44, 0(r9)				# 16500
	addi	r9, r0, 2				# 16523
	lli		r9, solver_dist.2563				# 23423
	lw		r44, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r44
	ble		.b49332				# 3098
	b		.b49333
.b49302:
	addi	r9, r0, 0				# 16431
.b49304:
	lw		r9, 4(r43)				# 16543
	fsub	r9, r9, r6				# 16542
	lw		r43, 5(r43)				# 16542
	fmul	r44, r9, r43				# 16533
	fmul	r9, r44, r45				# 16604
	fadd	r9, r9, r55				# 16598
	fabs	r9, r9				# 322
	fcmp	r58, r9
	ble		.b49306				# 3098
.b49307:
	fmul	r9, r44, r31				# 16665
	fadd	r9, r9, r60				# 16659
	fabs	r9, r9				# 322
	fcmp	r18, r9
	ble		.b49308				# 3098
.b49309:
	fcmp	r43, r28
	beq		.b49310				# 3128
.b49311:
	lli		r9, solver_dist.2563				# 16774
	sw		r44, 0(r9)				# 16774
	addi	r9, r0, 3				# 16797
	lli		r9, solver_dist.2563				# 23423
	lw		r44, 0(r9)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r44
	ble		.b49332				# 3098
	b		.b49333
.b49310:
	addi	r9, r0, 0				# 16811
	lli		r9, solver_dist.2563				# 23423
	lw		r44, 0(r9)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b49336				# 23849
	b		.b49337
.b49308:
	addi	r9, r0, 0				# 16811
	lli		r9, solver_dist.2563				# 23423
	lw		r44, 0(r9)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b49336				# 23849
	b		.b49337
.b49306:
	addi	r9, r0, 0				# 16811
	lli		r9, solver_dist.2563				# 23423
	lw		r44, 0(r9)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b49336				# 23849
	b		.b49337
.b49300:
	addi	r9, r0, 0				# 16467
	b		.b49304				# 16306
.b49298:
	addi	r9, r0, 0				# 16482
	b		.b49304				# 16306
.b49291:
	addi	r9, r0, 0				# 16193
	b		.b49295				# 16033
.b49289:
	addi	r9, r0, 0				# 16208
	b		.b49295				# 16033
.b49261:
	cmpi	r9, 0
	beq		.b49265				# 22625
.b49266:
	addi	r9, r0, 0				# 22625
	b		.b49267				# 23092
.b49265:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b49269				# 23722
.b49258:
	addi	r9, r0, 0				# 3188
	cmpi	r6, 0
	beq		.b49261				# 765
	b		.b49262
.b49255:
	fsub	r9, r9, r19				# 22604
	lw		r6, 6(r6)				# 3372
	fcmp	r28, r9
	ble		.b49258				# 3188
	b		.b49259
.b49252:
	cmpi	r58, 3
	beq		.b49255				# 22583
	b		.b49256
.b49239:
	lw		r58, 4(r6)				# 4293
	lw		r9, 0(r58)				# 2037
	fmul	r9, r9, r34				# 2037
	lw		r31, 1(r58)				# 2052
	fmul	r31, r31, r40				# 2037
	fadd	r31, r9, r31				# 2037
	lw		r9, 2(r58)				# 2067
	fmul	r9, r9, r24				# 2037
	fadd	r9, r31, r9				# 22411
	lw		r6, 6(r6)				# 3372
	fcmp	r28, r9
	ble		.b49242				# 3188
.b49243:
	addi	r9, r0, 1				# 3188
	cmpi	r6, 0
	beq		.b49245				# 765
.b49246:
	cmpi	r9, 0
	beq		.b49247				# 775
.b49248:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b49269				# 23722
.b49247:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b49267				# 23092
.b49245:
	cmpi	r9, 0
	beq		.b49249				# 22459
.b49250:
	addi	r9, r0, 0				# 22459
	b		.b49267				# 23092
.b49249:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b49269				# 23722
.b49242:
	addi	r9, r0, 0				# 3188
	cmpi	r6, 0
	beq		.b49245				# 765
	b		.b49246
.b49226:
	fabs	r31, r34				# 322
	lw		r9, 4(r6)				# 3734
	lw		r58, 0(r9)				# 22178
	fcmp	r58, r31
	ble		.b49229				# 3098
.b49230:
	fabs	r31, r40				# 322
	lw		r40, 1(r9)				# 22224
	fcmp	r40, r31
	ble		.b49231				# 3098
.b49232:
	fabs	r31, r24				# 322
	lw		r9, 2(r9)				# 22261
	fcmp	r9, r31
	ble		.b49233				# 3098
.b49234:
	addi	r9, r0, 1				# 3098
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49267				# 23092
.b49268:
	addi	r9, r0, 0				# 23141
	b		.b49269				# 23722
.b49233:
	addi	r9, r0, 0				# 3098
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49237				# 22348
.b49238:
	addi	r9, r0, 0				# 22348
	b		.b49267				# 23092
.b49237:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b49269				# 23722
.b49231:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49237				# 22348
	b		.b49238
.b49229:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r6)				# 3372
	cmpi	r9, 0
	beq		.b49237				# 22348
	b		.b49238
.b49215:
	addi	r9, r0, 0				# 3098
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b49219				# 23849
.b49220:
	addi	r15, r15, 1				# 23885
	lwx		r9, r11, r15				# 23266
	cmpi	r9, -1
	beq		.b49166				# 23266
	b		.b49167
.b49219:
	addi	r9, r0, 0				# 23945
	b		.b49271				# 24173
.b49210:
	fsqrt	r9, r52				# 227
	fsub	r52, r40, r9				# 17458
	lw		r9, 4(r6)				# 17458
	fmul	r9, r52, r9				# 17439
	sw		r9, 0(r16)				# 17439
	addi	r9, r0, 1				# 17498
	lw		r52, 0(r16)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r52
	ble		.b49215				# 3098
	b		.b49216
.b49207:
	addi	r9, r0, 0				# 17510
	lw		r52, 0(r16)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b49219				# 23849
	b		.b49220
.b49205:
	fsub	r9, r9, r19				# 17260
	b		.b49204				# 17260
.b49202:
	cmpi	r58, 3
	beq		.b49205				# 17239
	b		.b49206
.b49199:
	addi	r9, r0, 0				# 17102
	lw		r52, 0(r16)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b49219				# 23849
	b		.b49220
.b49195:
	lw		r9, 0(r6)				# 16870
	fcmp	r28, r9
	ble		.b49197				# 3188
.b49198:
	lw		r9, 1(r6)				# 16924
	fmul	r52, r9, r31				# 16924
	lw		r9, 2(r6)				# 16944
	fmul	r9, r9, r32				# 16924
	fadd	r52, r52, r9				# 16924
	lw		r9, 3(r6)				# 16964
	fmul	r9, r9, r24				# 16924
	fadd	r9, r52, r9				# 16899
	sw		r9, 0(r16)				# 16899
	addi	r9, r0, 1				# 16986
	lw		r52, 0(r16)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r52
	ble		.b49215				# 3098
	b		.b49216
.b49197:
	addi	r9, r0, 0				# 16998
	lw		r52, 0(r16)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b49219				# 23849
	b		.b49220
.b49169:
	lw		r9, 0(r6)				# 15996
	fsub	r9, r9, r31				# 15995
	lw		r45, 1(r6)				# 15995
	fmul	r43, r9, r45				# 15986
	lli		r40, v3.2630				# 16056
	lw		r34, 1(r40)				# 16056
	fmul	r9, r43, r34				# 16056
	fadd	r9, r9, r32				# 16050
	fabs	r52, r9				# 322
	lw		r58, 4(r55)				# 3920
	lw		r9, 1(r58)				# 16043
	fcmp	r9, r52
	ble		.b49172				# 3098
.b49173:
	lw		r52, 2(r40)				# 16117
	fmul	r52, r43, r52				# 16117
	fadd	r52, r52, r24				# 16111
	fabs	r52, r52				# 322
	lw		r21, 2(r58)				# 16104
	fcmp	r21, r52
	ble		.b49174				# 3098
.b49175:
	fcmp	r45, r28
	beq		.b49176				# 3128
.b49177:
	addi	r52, r0, 1				# 16157
.b49179:
	sw		r43, 0(r16)				# 16226
	addi	r9, r0, 1				# 16249
	lw		r52, 0(r16)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r52
	ble		.b49215				# 3098
	b		.b49216
.b49176:
	addi	r52, r0, 0				# 16157
.b49178:
	lw		r52, 2(r6)				# 16269
	fsub	r52, r52, r32				# 16268
	lw		r43, 3(r6)				# 16268
	fmul	r21, r52, r43				# 16259
	lw		r45, 0(r40)				# 16330
	fmul	r52, r21, r45				# 16330
	fadd	r52, r52, r31				# 16324
	fabs	r22, r52				# 322
	lw		r52, 0(r58)				# 16317
	fcmp	r52, r22
	ble		.b49181				# 3098
.b49182:
	lw		r40, 2(r40)				# 16391
	fmul	r40, r21, r40				# 16391
	fadd	r40, r40, r24				# 16385
	fabs	r40, r40				# 322
	lw		r58, 2(r58)				# 16378
	fcmp	r58, r40
	ble		.b49183				# 3098
.b49184:
	fcmp	r43, r28
	beq		.b49185				# 3128
.b49186:
	addi	r43, r0, 1				# 16431
.b49188:
	sw		r21, 0(r16)				# 16500
	addi	r9, r0, 2				# 16523
	lw		r52, 0(r16)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r52
	ble		.b49215				# 3098
	b		.b49216
.b49185:
	addi	r43, r0, 0				# 16431
.b49187:
	lw		r43, 4(r6)				# 16543
	fsub	r43, r43, r24				# 16542
	lw		r6, 5(r6)				# 16542
	fmul	r43, r43, r6				# 16533
	fmul	r24, r43, r45				# 16604
	fadd	r31, r24, r31				# 16598
	fabs	r31, r31				# 322
	fcmp	r52, r31
	ble		.b49189				# 3098
.b49190:
	fmul	r52, r43, r34				# 16665
	fadd	r52, r52, r32				# 16659
	fabs	r52, r52				# 322
	fcmp	r9, r52
	ble		.b49191				# 3098
.b49192:
	fcmp	r6, r28
	beq		.b49193				# 3128
.b49194:
	sw		r43, 0(r16)				# 16774
	addi	r9, r0, 3				# 16797
	lw		r52, 0(r16)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r52
	ble		.b49215				# 3098
	b		.b49216
.b49193:
	addi	r9, r0, 0				# 16811
	lw		r52, 0(r16)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b49219				# 23849
	b		.b49220
.b49191:
	addi	r9, r0, 0				# 16811
	lw		r52, 0(r16)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b49219				# 23849
	b		.b49220
.b49189:
	addi	r9, r0, 0				# 16811
	lw		r52, 0(r16)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b49219				# 23849
	b		.b49220
.b49183:
	addi	r43, r0, 0				# 16467
	b		.b49187				# 16306
.b49181:
	addi	r43, r0, 0				# 16482
	b		.b49187				# 16306
.b49174:
	addi	r52, r0, 0				# 16193
	b		.b49178				# 16033
.b49172:
	addi	r52, r0, 0				# 16208
	b		.b49178				# 16033
.b49158:
	addi	r9, r0, 0				# 24739
	b		.b49275				# 24441
.b49154:
	fsqrt	r9, r9				# 227
	fsub	r9, r31, r9				# 17458
	lw		r15, 4(r11)				# 17458
	fmul	r15, r9, r15				# 17439
	lli		r9, solver_dist.2563				# 17439
	sw		r15, 0(r9)				# 17439
	addi	r9, r0, 1				# 17498
	lli		r16, solver_dist.2563				# 24609
	lw		r9, 0(r16)				# 24609
	fcmp	r50, r9
	ble		.b49158				# 3098
	b		.b49159
.b49151:
	addi	r9, r0, 0				# 17510
	addi	r9, r0, 0				# 24751
	b		.b49275				# 24441
.b49149:
	fsub	r9, r9, r19				# 17260
	b		.b49148				# 17260
.b49146:
	cmpi	r52, 3
	beq		.b49149				# 17239
	b		.b49150
.b49143:
	addi	r9, r0, 0				# 17102
	addi	r9, r0, 0				# 24751
	b		.b49275				# 24441
.b49139:
	lw		r9, 0(r11)				# 16870
	fcmp	r28, r9
	ble		.b49141				# 3188
.b49142:
	lw		r9, 1(r11)				# 16924
	fmul	r15, r9, r43				# 16924
	lw		r9, 2(r11)				# 16944
	fmul	r9, r9, r32				# 16924
	fadd	r15, r15, r9				# 16924
	lw		r9, 3(r11)				# 16964
	fmul	r9, r9, r55				# 16924
	fadd	r9, r15, r9				# 16899
	lli		r15, solver_dist.2563				# 16899
	sw		r9, 0(r15)				# 16899
	addi	r9, r0, 1				# 16986
	lli		r16, solver_dist.2563				# 24609
	lw		r9, 0(r16)				# 24609
	fcmp	r50, r9
	ble		.b49158				# 3098
	b		.b49159
.b49141:
	addi	r9, r0, 0				# 16998
	addi	r9, r0, 0				# 24751
	b		.b49275				# 24441
.b49113:
	lw		r9, 0(r11)				# 15996
	fsub	r9, r9, r43				# 15995
	lw		r15, 1(r11)				# 15995
	fmul	r16, r9, r15				# 15986
	lli		r31, v3.2630				# 16056
	lw		r52, 1(r31)				# 16056
	fmul	r9, r16, r52				# 16056
	fadd	r9, r9, r32				# 16050
	fabs	r9, r9				# 322
	lw		r6, 4(r6)				# 3920
	lw		r44, 1(r6)				# 16043
	fcmp	r44, r9
	ble		.b49116				# 3098
.b49117:
	lw		r9, 2(r31)				# 16117
	fmul	r9, r16, r9				# 16117
	fadd	r9, r9, r55				# 16111
	fabs	r24, r9				# 322
	lw		r9, 2(r6)				# 16104
	fcmp	r9, r24
	ble		.b49118				# 3098
.b49119:
	fcmp	r15, r28
	beq		.b49120				# 3128
.b49121:
	addi	r9, r0, 1				# 16157
.b49123:
	lli		r9, solver_dist.2563				# 16226
	sw		r16, 0(r9)				# 16226
	addi	r9, r0, 1				# 16249
	lli		r16, solver_dist.2563				# 24609
	lw		r9, 0(r16)				# 24609
	fcmp	r50, r9
	ble		.b49158				# 3098
	b		.b49159
.b49120:
	addi	r9, r0, 0				# 16157
.b49122:
	lw		r9, 2(r11)				# 16269
	fsub	r9, r9, r32				# 16268
	lw		r40, 3(r11)				# 16268
	fmul	r24, r9, r40				# 16259
	lw		r16, 0(r31)				# 16330
	fmul	r9, r24, r16				# 16330
	fadd	r9, r9, r43				# 16324
	fabs	r9, r9				# 322
	lw		r15, 0(r6)				# 16317
	fcmp	r15, r9
	ble		.b49125				# 3098
.b49126:
	lw		r9, 2(r31)				# 16391
	fmul	r9, r24, r9				# 16391
	fadd	r9, r9, r55				# 16385
	fabs	r31, r9				# 322
	lw		r9, 2(r6)				# 16378
	fcmp	r9, r31
	ble		.b49127				# 3098
.b49128:
	fcmp	r40, r28
	beq		.b49129				# 3128
.b49130:
	addi	r9, r0, 1				# 16431
.b49132:
	lli		r9, solver_dist.2563				# 16500
	sw		r24, 0(r9)				# 16500
	addi	r9, r0, 2				# 16523
	lli		r16, solver_dist.2563				# 24609
	lw		r9, 0(r16)				# 24609
	fcmp	r50, r9
	ble		.b49158				# 3098
	b		.b49159
.b49129:
	addi	r9, r0, 0				# 16431
.b49131:
	lw		r9, 4(r11)				# 16543
	fsub	r9, r9, r55				# 16542
	lw		r55, 5(r11)				# 16542
	fmul	r11, r9, r55				# 16533
	fmul	r9, r11, r16				# 16604
	fadd	r9, r9, r43				# 16598
	fabs	r9, r9				# 322
	fcmp	r15, r9
	ble		.b49133				# 3098
.b49134:
	fmul	r9, r11, r52				# 16665
	fadd	r9, r9, r32				# 16659
	fabs	r9, r9				# 322
	fcmp	r44, r9
	ble		.b49135				# 3098
.b49136:
	fcmp	r55, r28
	beq		.b49137				# 3128
.b49138:
	lli		r9, solver_dist.2563				# 16774
	sw		r11, 0(r9)				# 16774
	addi	r9, r0, 3				# 16797
	lli		r16, solver_dist.2563				# 24609
	lw		r9, 0(r16)				# 24609
	fcmp	r50, r9
	ble		.b49158				# 3098
	b		.b49159
.b49137:
	addi	r9, r0, 0				# 16811
	addi	r9, r0, 0				# 24751
	b		.b49275				# 24441
.b49135:
	addi	r9, r0, 0				# 16811
	addi	r9, r0, 0				# 24751
	b		.b49275				# 24441
.b49133:
	addi	r9, r0, 0				# 16811
	addi	r9, r0, 0				# 24751
	b		.b49275				# 24441
.b49127:
	addi	r9, r0, 0				# 16467
	b		.b49131				# 16306
.b49125:
	addi	r9, r0, 0				# 16482
	b		.b49131				# 16306
.b49118:
	addi	r9, r0, 0				# 16193
	b		.b49122				# 16033
.b49116:
	addi	r9, r0, 0				# 16208
	b		.b49122				# 16033
.b49110:
	addi	r9, r0, 1				# 24483
	addi	r49, r0, 1				# 24006
	lwx		r9, r38, r49				# 24006
	cmpi	r9, -1
	beq		.b49279				# 24037
	b		.b49280
.b49090:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b49094:
	addi	r12, r12, 1				# 23162
	lwx		r9, r18, r12				# 23025
	cmpi	r9, -1
	beq		.b49050				# 23052
	b		.b49051
.b49050:
	addi	r9, r0, 1				# 23074
.b49097:
	sw		r43, 0(r39)				# 27393
	sw		r60, 0(r33)				# 1162
	sw		r16, 1(r33)				# 1162
	sw		r55, 2(r33)				# 27393
	sw		r52, 0(r27)				# 27393
	sw		r32, 0(r59)				# 27485
	b		.b49043				# 27485
.b49088:
	cmpi	r9, 0
	beq		.b49092				# 22625
.b49093:
	addi	r9, r0, 0				# 22625
	b		.b49094				# 23092
.b49092:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b49043				# 27336
.b49085:
	addi	r9, r0, 0				# 3188
	cmpi	r6, 0
	beq		.b49088				# 765
	b		.b49089
.b49082:
	fsub	r9, r9, r19				# 22604
	lw		r6, 6(r24)				# 3372
	fcmp	r28, r9
	ble		.b49085				# 3188
	b		.b49086
.b49079:
	cmpi	r40, 3
	beq		.b49082				# 22583
	b		.b49083
.b49066:
	lw		r40, 4(r24)				# 4293
	lw		r9, 0(r40)				# 2037
	fmul	r31, r9, r34				# 2037
	lw		r9, 1(r40)				# 2052
	fmul	r9, r9, r6				# 2037
	fadd	r6, r31, r9				# 2037
	lw		r9, 2(r40)				# 2067
	fmul	r9, r9, r58				# 2037
	fadd	r9, r6, r9				# 22411
	lw		r6, 6(r24)				# 3372
	fcmp	r28, r9
	ble		.b49069				# 3188
.b49070:
	addi	r9, r0, 1				# 3188
	cmpi	r6, 0
	beq		.b49072				# 765
.b49073:
	cmpi	r9, 0
	beq		.b49074				# 775
.b49075:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b49043				# 27336
.b49074:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b49094				# 23092
.b49072:
	cmpi	r9, 0
	beq		.b49076				# 22459
.b49077:
	addi	r9, r0, 0				# 22459
	b		.b49094				# 23092
.b49076:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b49043				# 27336
.b49069:
	addi	r9, r0, 0				# 3188
	cmpi	r6, 0
	beq		.b49072				# 765
	b		.b49073
.b49053:
	fabs	r40, r34				# 322
	lw		r31, 4(r24)				# 3734
	lw		r9, 0(r31)				# 22178
	fcmp	r9, r40
	ble		.b49056				# 3098
.b49057:
	fabs	r6, r6				# 322
	lw		r9, 1(r31)				# 22224
	fcmp	r9, r6
	ble		.b49058				# 3098
.b49059:
	fabs	r6, r58				# 322
	lw		r9, 2(r31)				# 22261
	fcmp	r9, r6
	ble		.b49060				# 3098
.b49061:
	addi	r9, r0, 1				# 3098
	lw		r9, 6(r24)				# 3372
	cmpi	r9, 0
	beq		.b49094				# 23092
.b49095:
	addi	r9, r0, 0				# 23141
	b		.b49043				# 27336
.b49060:
	addi	r9, r0, 0				# 3098
	lw		r9, 6(r24)				# 3372
	cmpi	r9, 0
	beq		.b49064				# 22348
.b49065:
	addi	r9, r0, 0				# 22348
	b		.b49094				# 23092
.b49064:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b49043				# 27336
.b49058:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r24)				# 3372
	cmpi	r9, 0
	beq		.b49064				# 22348
	b		.b49065
.b49056:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r24)				# 3372
	cmpi	r9, 0
	beq		.b49064				# 22348
	b		.b49065
.b49037:
	fsqrt	r9, r9				# 227
	fsub	r12, r12, r9				# 18540
	lw		r9, 4(r43)				# 18540
	fmul	r9, r12, r9				# 18521
	sw		r9, 0(r11)				# 18521
	addi	r32, r0, 1				# 18580
	lw		r9, 0(r11)				# 27058
	fcmp	r9, r28
	ble		.b49043				# 3098
	b		.b49045
.b49034:
	addi	r32, r0, 0				# 18592
	lw		r9, 6(r16)				# 3372
	cmpi	r9, 0
	beq		.b48997				# 27653
.b49042:
	addi	r44, r44, 1				# 27691
	lw		r55, 0(r35)				# 8078
	lwx		r52, r18, r44				# 26915
	cmpi	r52, -1
	beq		.b48997				# 26952
	b		.b49000
.b49032:
	addi	r32, r0, 0				# 18252
	lw		r9, 6(r16)				# 3372
	cmpi	r9, 0
	beq		.b48997				# 27653
	b		.b49042
.b49028:
	lw		r12, 0(r43)				# 18051
	fcmp	r28, r12
	ble		.b49030				# 3188
.b49031:
	lw		r9, 3(r60)				# 18099
	fmul	r9, r12, r9				# 18080
	sw		r9, 0(r11)				# 18080
	addi	r32, r0, 1				# 18129
	lw		r9, 0(r11)				# 27058
	fcmp	r9, r28
	ble		.b49043				# 3098
	b		.b49045
.b49030:
	addi	r32, r0, 0				# 18141
	lw		r9, 6(r16)				# 3372
	cmpi	r9, 0
	beq		.b48997				# 27653
	b		.b49042
.b49002:
	lw		r9, 0(r43)				# 15996
	fsub	r9, r9, r6				# 15995
	lw		r60, 1(r43)				# 15995
	fmul	r34, r9, r60				# 15986
	lw		r24, 1(r55)				# 16056
	fmul	r9, r34, r24				# 16056
	fadd	r9, r9, r12				# 16050
	fabs	r9, r9				# 322
	lw		r58, 4(r16)				# 3920
	lw		r32, 1(r58)				# 16043
	fcmp	r32, r9
	ble		.b49005				# 3098
.b49006:
	lw		r9, 2(r55)				# 16117
	fmul	r9, r34, r9				# 16117
	fadd	r9, r9, r31				# 16111
	fabs	r9, r9				# 322
	lw		r40, 2(r58)				# 16104
	fcmp	r40, r9
	ble		.b49007				# 3098
.b49008:
	fcmp	r60, r28
	beq		.b49009				# 3128
.b49010:
	addi	r9, r0, 1				# 16157
.b49012:
	sw		r34, 0(r11)				# 16226
	addi	r32, r0, 1				# 16249
	lw		r9, 0(r11)				# 27058
	fcmp	r9, r28
	ble		.b49043				# 3098
	b		.b49045
.b49009:
	addi	r9, r0, 0				# 16157
.b49011:
	lw		r9, 2(r43)				# 16269
	fsub	r9, r9, r12				# 16268
	lw		r45, 3(r43)				# 16268
	fmul	r60, r9, r45				# 16259
	lw		r34, 0(r55)				# 16330
	fmul	r9, r60, r34				# 16330
	fadd	r9, r9, r6				# 16324
	fabs	r9, r9				# 322
	lw		r40, 0(r58)				# 16317
	fcmp	r40, r9
	ble		.b49014				# 3098
.b49015:
	lw		r9, 2(r55)				# 16391
	fmul	r9, r60, r9				# 16391
	fadd	r9, r9, r31				# 16385
	fabs	r21, r9				# 322
	lw		r9, 2(r58)				# 16378
	fcmp	r9, r21
	ble		.b49016				# 3098
.b49017:
	fcmp	r45, r28
	beq		.b49018				# 3128
.b49019:
	addi	r9, r0, 1				# 16431
.b49021:
	sw		r60, 0(r11)				# 16500
	addi	r32, r0, 2				# 16523
	lw		r9, 0(r11)				# 27058
	fcmp	r9, r28
	ble		.b49043				# 3098
	b		.b49045
.b49018:
	addi	r9, r0, 0				# 16431
.b49020:
	lw		r9, 4(r43)				# 16543
	fsub	r9, r9, r31				# 16542
	lw		r60, 5(r43)				# 16542
	fmul	r43, r9, r60				# 16533
	fmul	r9, r43, r34				# 16604
	fadd	r9, r9, r6				# 16598
	fabs	r9, r9				# 322
	fcmp	r40, r9
	ble		.b49022				# 3098
.b49023:
	fmul	r9, r43, r24				# 16665
	fadd	r9, r9, r12				# 16659
	fabs	r9, r9				# 322
	fcmp	r32, r9
	ble		.b49024				# 3098
.b49025:
	fcmp	r60, r28
	beq		.b49026				# 3128
.b49027:
	sw		r43, 0(r11)				# 16774
	addi	r32, r0, 3				# 16797
	lw		r9, 0(r11)				# 27058
	fcmp	r9, r28
	ble		.b49043				# 3098
	b		.b49045
.b49026:
	addi	r32, r0, 0				# 16811
	lw		r9, 6(r16)				# 3372
	cmpi	r9, 0
	beq		.b48997				# 27653
	b		.b49042
.b49024:
	addi	r32, r0, 0				# 16811
	lw		r9, 6(r16)				# 3372
	cmpi	r9, 0
	beq		.b48997				# 27653
	b		.b49042
.b49022:
	addi	r32, r0, 0				# 16811
	lw		r9, 6(r16)				# 3372
	cmpi	r9, 0
	beq		.b48997				# 27653
	b		.b49042
.b49016:
	addi	r9, r0, 0				# 16467
	b		.b49020				# 16306
.b49014:
	addi	r9, r0, 0				# 16482
	b		.b49020				# 16306
.b49007:
	addi	r9, r0, 0				# 16193
	b		.b49011				# 16033
.b49005:
	addi	r9, r0, 0				# 16208
	b		.b49011				# 16033
.b48988:
	fsqrt	r9, r12				# 227
	fsub	r9, r15, r9				# 18540
	lw		r15, 4(r16)				# 18540
	fmul	r15, r9, r15				# 18521
	lli		r9, solver_dist.2563				# 18521
	sw		r15, 0(r9)				# 18521
	addi	r9, r0, 1				# 18580
	b		.b48991				# 28364
.b48985:
	addi	r9, r0, 0				# 18592
	b		.b48845				# 28364
.b48983:
	addi	r9, r0, 0				# 18252
	b		.b48845				# 28364
.b48979:
	lw		r15, 0(r16)				# 18051
	fcmp	r28, r15
	ble		.b48981				# 3188
.b48982:
	lw		r9, 3(r12)				# 18099
	fmul	r15, r15, r9				# 18080
	lli		r9, solver_dist.2563				# 18080
	sw		r15, 0(r9)				# 18080
	addi	r9, r0, 1				# 18129
	b		.b48991				# 28364
.b48981:
	addi	r9, r0, 0				# 18141
	b		.b48845				# 28364
.b48953:
	lw		r60, 0(r35)				# 8078
	lw		r9, 0(r16)				# 15996
	fsub	r9, r9, r52				# 15995
	lw		r15, 1(r16)				# 15995
	fmul	r55, r9, r15				# 15986
	lw		r9, 1(r60)				# 16056
	fmul	r12, r55, r9				# 16056
	fadd	r12, r12, r18				# 16050
	fabs	r44, r12				# 322
	lw		r43, 4(r32)				# 3920
	lw		r12, 1(r43)				# 16043
	fcmp	r12, r44
	ble		.b48956				# 3098
.b48957:
	lw		r44, 2(r60)				# 16117
	fmul	r44, r55, r44				# 16117
	fadd	r44, r44, r11				# 16111
	fabs	r44, r44				# 322
	lw		r32, 2(r43)				# 16104
	fcmp	r32, r44
	ble		.b48958				# 3098
.b48959:
	fcmp	r15, r28
	beq		.b48960				# 3128
.b48961:
	addi	r15, r0, 1				# 16157
.b48963:
	lli		r9, solver_dist.2563				# 16226
	sw		r55, 0(r9)				# 16226
	addi	r9, r0, 1				# 16249
	b		.b48991				# 28364
.b48960:
	addi	r15, r0, 0				# 16157
.b48962:
	lw		r15, 2(r16)				# 16269
	fsub	r15, r15, r18				# 16268
	lw		r32, 3(r16)				# 16268
	fmul	r44, r15, r32				# 16259
	lw		r55, 0(r60)				# 16330
	fmul	r15, r44, r55				# 16330
	fadd	r15, r15, r52				# 16324
	fabs	r15, r15				# 322
	lw		r6, 0(r43)				# 16317
	fcmp	r6, r15
	ble		.b48965				# 3098
.b48966:
	lw		r15, 2(r60)				# 16391
	fmul	r15, r44, r15				# 16391
	fadd	r15, r15, r11				# 16385
	fabs	r15, r15				# 322
	lw		r60, 2(r43)				# 16378
	fcmp	r60, r15
	ble		.b48967				# 3098
.b48968:
	fcmp	r32, r28
	beq		.b48969				# 3128
.b48970:
	addi	r15, r0, 1				# 16431
.b48972:
	lli		r9, solver_dist.2563				# 16500
	sw		r44, 0(r9)				# 16500
	addi	r9, r0, 2				# 16523
	b		.b48991				# 28364
.b48969:
	addi	r15, r0, 0				# 16431
.b48971:
	lw		r15, 4(r16)				# 16543
	fsub	r15, r15, r11				# 16542
	lw		r44, 5(r16)				# 16542
	fmul	r60, r15, r44				# 16533
	fmul	r15, r60, r55				# 16604
	fadd	r15, r15, r52				# 16598
	fabs	r15, r15				# 322
	fcmp	r6, r15
	ble		.b48973				# 3098
.b48974:
	fmul	r9, r60, r9				# 16665
	fadd	r9, r9, r18				# 16659
	fabs	r9, r9				# 322
	fcmp	r12, r9
	ble		.b48975				# 3098
.b48976:
	fcmp	r44, r28
	beq		.b48977				# 3128
.b48978:
	lli		r9, solver_dist.2563				# 16774
	sw		r60, 0(r9)				# 16774
	addi	r9, r0, 3				# 16797
	b		.b48991				# 28364
.b48977:
	addi	r9, r0, 0				# 16811
	b		.b48845				# 28364
.b48975:
	addi	r9, r0, 0				# 16811
	b		.b48845				# 28364
.b48973:
	addi	r9, r0, 0				# 16811
	b		.b48845				# 28364
.b48967:
	addi	r15, r0, 0				# 16467
	b		.b48971				# 16306
.b48965:
	addi	r15, r0, 0				# 16482
	b		.b48971				# 16306
.b48958:
	addi	r15, r0, 0				# 16193
	b		.b48962				# 16033
.b48956:
	addi	r15, r0, 0				# 16208
	b		.b48962				# 16033
.b48846:
	addi	r12, r0, 1				# 27829
	lwx		r15, r49, r12				# 27829
	cmpi	r15, -1
	beq		.b48845				# 27860
.b48850:
	lli		r9, and_net.2554				# 27885
	lwx		r18, r9, r15				# 27885
	addi	r15, r0, 0				# 26885
	lw		r32, 0(r35)				# 8078
	lwx		r8, r18, r15				# 26915
	cmpi	r8, -1
	beq		.b48851				# 26952
.b48854:
	lwx		r60, r41, r8				# 18636
	lw		r43, 10(r60)				# 6561
	lw		r6, 0(r43)				# 18698
	lw		r11, 1(r43)				# 18723
	lw		r55, 2(r43)				# 18748
	lw		r9, 1(r35)				# 8141
	lwx		r16, r9, r8				# 18807
	lw		r9, 1(r60)				# 2994
	cmpi	r9, 1
	beq		.b48856				# 18869
.b48857:
	cmpi	r9, 2
	beq		.b48882				# 18950
.b48883:
	lw		r52, 0(r16)				# 18204
	fcmp	r52, r28
	beq		.b48886				# 3128
.b48887:
	lw		r9, 1(r16)				# 18278
	fmul	r44, r9, r6				# 18278
	lw		r9, 2(r16)				# 18298
	fmul	r9, r9, r11				# 18278
	fadd	r44, r44, r9				# 18278
	lw		r9, 3(r16)				# 18318
	fmul	r9, r9, r55				# 18278
	fadd	r11, r44, r9				# 18265
	lw		r9, 3(r43)				# 18342
	fmul	r44, r11, r11				# 18377
	fmul	r9, r52, r9				# 18377
	fsub	r9, r44, r9				# 18369
	fcmp	r9, r28
	ble		.b48888				# 3158
.b48889:
	lw		r44, 6(r60)				# 3372
	cmpi	r44, 0
	beq		.b48891				# 18435
.b48892:
	fsqrt	r9, r9				# 227
	fadd	r9, r11, r9				# 18476
	lw		r44, 4(r16)				# 18476
	fmul	r44, r9, r44				# 18457
	lli		r9, solver_dist.2563				# 18457
	sw		r44, 0(r9)				# 18457
	addi	r52, r0, 1				# 18580
	lli		r9, solver_dist.2563				# 27058
	lw		r44, 0(r9)				# 27058
	fcmp	r44, r28
	ble		.b48897				# 3098
.b48899:
	lw		r9, 0(r39)				# 27125
	fcmp	r9, r44
	ble		.b48897				# 3098
.b48901:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 27169
	fadd	r16, r44, r9				# 27161
	lw		r9, 0(r32)				# 27198
	fmul	r9, r9, r16				# 27198
	fadd	r11, r9, r1				# 27189
	lw		r9, 1(r32)				# 27247
	fmul	r9, r9, r16				# 27247
	fadd	r60, r9, r42				# 27238
	lw		r9, 2(r32)				# 27296
	fmul	r9, r9, r16				# 27296
	fadd	r32, r9, r47				# 27287
	addi	r44, r0, 0				# 23025
	lwx		r9, r18, r44				# 23025
	cmpi	r9, -1
	beq		.b48904				# 23052
.b48905:
	lwx		r55, r41, r9				# 23095
	lw		r43, 5(r55)				# 4475
	lw		r9, 0(r43)				# 22709
	fsub	r58, r11, r9				# 22700
	lw		r9, 1(r43)				# 22741
	fsub	r40, r60, r9				# 22732
	lw		r9, 2(r43)				# 22773
	fsub	r31, r32, r9				# 22764
	lw		r6, 1(r55)				# 2994
	cmpi	r6, 1
	beq		.b48907				# 22824
.b48908:
	cmpi	r6, 2
	beq		.b48920				# 22882
.b48921:
	fmul	r43, r58, r58				# 14374
	lw		r9, 4(r55)				# 3734
	lw		r24, 0(r9)				# 14374
	fmul	r43, r43, r24				# 14374
	fmul	r34, r40, r40				# 14400
	lw		r24, 1(r9)				# 14400
	fmul	r24, r34, r24				# 14374
	fadd	r24, r43, r24				# 14374
	fmul	r43, r31, r31				# 14426
	lw		r9, 2(r9)				# 14426
	fmul	r9, r43, r9				# 14374
	fadd	r9, r24, r9				# 14354
	lw		r43, 3(r55)				# 3553
	cmpi	r43, 0
	beq		.b48933				# 14456
.b48934:
	fmul	r24, r40, r31				# 14522
	lw		r43, 9(r55)				# 5989
	lw		r34, 0(r43)				# 14522
	fmul	r24, r24, r34				# 14503
	fadd	r24, r9, r24				# 14503
	fmul	r31, r31, r58				# 14556
	lw		r9, 1(r43)				# 14556
	fmul	r9, r31, r9				# 14503
	fadd	r31, r24, r9				# 14503
	fmul	r9, r58, r40				# 14590
	lw		r43, 2(r43)				# 14590
	fmul	r9, r9, r43				# 14503
	fadd	r9, r31, r9				# 14503
	cmpi	r6, 3
	beq		.b48936				# 22583
.b48937:
	lw		r43, 6(r55)				# 3372
	fcmp	r28, r9
	ble		.b48939				# 3188
.b48940:
	addi	r9, r0, 1				# 3188
	cmpi	r43, 0
	beq		.b48942				# 765
.b48943:
	cmpi	r9, 0
	beq		.b48944				# 775
.b48945:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b48897:
	addi	r15, r15, 1				# 27573
	lw		r32, 0(r35)				# 8078
	lwx		r8, r18, r15				# 26915
	cmpi	r8, -1
	beq		.b48851				# 26952
	b		.b48854
.b48851:
	addi	r12, r12, 1				# 27971
	lwx		r15, r49, r12				# 27829
	cmpi	r15, -1
	beq		.b48845				# 27860
	b		.b48850
.b48944:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b48948:
	addi	r44, r44, 1				# 23162
	lwx		r9, r18, r44				# 23025
	cmpi	r9, -1
	beq		.b48904				# 23052
	b		.b48905
.b48904:
	addi	r9, r0, 1				# 23074
.b48951:
	sw		r16, 0(r39)				# 27393
	sw		r11, 0(r33)				# 1162
	sw		r60, 1(r33)				# 1162
	sw		r32, 2(r33)				# 27393
	sw		r8, 0(r27)				# 27393
	sw		r52, 0(r59)				# 27485
	b		.b48897				# 27485
.b48942:
	cmpi	r9, 0
	beq		.b48946				# 22625
.b48947:
	addi	r9, r0, 0				# 22625
	b		.b48948				# 23092
.b48946:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b48897				# 27336
.b48939:
	addi	r9, r0, 0				# 3188
	cmpi	r43, 0
	beq		.b48942				# 765
	b		.b48943
.b48936:
	fsub	r9, r9, r19				# 22604
	lw		r43, 6(r55)				# 3372
	fcmp	r28, r9
	ble		.b48939				# 3188
	b		.b48940
.b48933:
	cmpi	r6, 3
	beq		.b48936				# 22583
	b		.b48937
.b48920:
	lw		r43, 4(r55)				# 4293
	lw		r9, 0(r43)				# 2037
	fmul	r6, r9, r58				# 2037
	lw		r9, 1(r43)				# 2052
	fmul	r9, r9, r40				# 2037
	fadd	r9, r6, r9				# 2037
	lw		r43, 2(r43)				# 2067
	fmul	r43, r43, r31				# 2037
	fadd	r9, r9, r43				# 22411
	lw		r43, 6(r55)				# 3372
	fcmp	r28, r9
	ble		.b48923				# 3188
.b48924:
	addi	r9, r0, 1				# 3188
	cmpi	r43, 0
	beq		.b48926				# 765
.b48927:
	cmpi	r9, 0
	beq		.b48928				# 775
.b48929:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b48897				# 27336
.b48928:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b48948				# 23092
.b48926:
	cmpi	r9, 0
	beq		.b48930				# 22459
.b48931:
	addi	r9, r0, 0				# 22459
	b		.b48948				# 23092
.b48930:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b48897				# 27336
.b48923:
	addi	r9, r0, 0				# 3188
	cmpi	r43, 0
	beq		.b48926				# 765
	b		.b48927
.b48907:
	fabs	r9, r58				# 322
	lw		r6, 4(r55)				# 3734
	lw		r43, 0(r6)				# 22178
	fcmp	r43, r9
	ble		.b48910				# 3098
.b48911:
	fabs	r43, r40				# 322
	lw		r9, 1(r6)				# 22224
	fcmp	r9, r43
	ble		.b48912				# 3098
.b48913:
	fabs	r9, r31				# 322
	lw		r43, 2(r6)				# 22261
	fcmp	r43, r9
	ble		.b48914				# 3098
.b48915:
	addi	r9, r0, 1				# 3098
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b48948				# 23092
.b48949:
	addi	r9, r0, 0				# 23141
	b		.b48897				# 27336
.b48914:
	addi	r9, r0, 0				# 3098
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b48918				# 22348
.b48919:
	addi	r9, r0, 0				# 22348
	b		.b48948				# 23092
.b48918:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b48897				# 27336
.b48912:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b48918				# 22348
	b		.b48919
.b48910:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r55)				# 3372
	cmpi	r9, 0
	beq		.b48918				# 22348
	b		.b48919
.b48891:
	fsqrt	r9, r9				# 227
	fsub	r44, r11, r9				# 18540
	lw		r9, 4(r16)				# 18540
	fmul	r44, r44, r9				# 18521
	lli		r9, solver_dist.2563				# 18521
	sw		r44, 0(r9)				# 18521
	addi	r52, r0, 1				# 18580
	lli		r9, solver_dist.2563				# 27058
	lw		r44, 0(r9)				# 27058
	fcmp	r44, r28
	ble		.b48897				# 3098
	b		.b48899
.b48888:
	addi	r52, r0, 0				# 18592
	lw		r9, 6(r60)				# 3372
	cmpi	r9, 0
	beq		.b48851				# 27653
.b48896:
	addi	r15, r15, 1				# 27691
	lw		r32, 0(r35)				# 8078
	lwx		r8, r18, r15				# 26915
	cmpi	r8, -1
	beq		.b48851				# 26952
	b		.b48854
.b48886:
	addi	r52, r0, 0				# 18252
	lw		r9, 6(r60)				# 3372
	cmpi	r9, 0
	beq		.b48851				# 27653
	b		.b48896
.b48882:
	lw		r44, 0(r16)				# 18051
	fcmp	r28, r44
	ble		.b48884				# 3188
.b48885:
	lw		r9, 3(r43)				# 18099
	fmul	r9, r44, r9				# 18080
	lli		r44, solver_dist.2563				# 18080
	sw		r9, 0(r44)				# 18080
	addi	r52, r0, 1				# 18129
	lli		r9, solver_dist.2563				# 27058
	lw		r44, 0(r9)				# 27058
	fcmp	r44, r28
	ble		.b48897				# 3098
	b		.b48899
.b48884:
	addi	r52, r0, 0				# 18141
	lw		r9, 6(r60)				# 3372
	cmpi	r9, 0
	beq		.b48851				# 27653
	b		.b48896
.b48856:
	lw		r9, 0(r16)				# 15996
	fsub	r9, r9, r6				# 15995
	lw		r44, 1(r16)				# 15995
	fmul	r40, r9, r44				# 15986
	lw		r43, 1(r32)				# 16056
	fmul	r9, r40, r43				# 16056
	fadd	r9, r9, r11				# 16050
	fabs	r9, r9				# 322
	lw		r31, 4(r60)				# 3920
	lw		r52, 1(r31)				# 16043
	fcmp	r52, r9
	ble		.b48859				# 3098
.b48860:
	lw		r9, 2(r32)				# 16117
	fmul	r9, r40, r9				# 16117
	fadd	r9, r9, r55				# 16111
	fabs	r24, r9				# 322
	lw		r9, 2(r31)				# 16104
	fcmp	r9, r24
	ble		.b48861				# 3098
.b48862:
	fcmp	r44, r28
	beq		.b48863				# 3128
.b48864:
	addi	r9, r0, 1				# 16157
.b48866:
	lli		r9, solver_dist.2563				# 16226
	sw		r40, 0(r9)				# 16226
	addi	r52, r0, 1				# 16249
	lli		r9, solver_dist.2563				# 27058
	lw		r44, 0(r9)				# 27058
	fcmp	r44, r28
	ble		.b48897				# 3098
	b		.b48899
.b48863:
	addi	r9, r0, 0				# 16157
.b48865:
	lw		r9, 2(r16)				# 16269
	fsub	r9, r9, r11				# 16268
	lw		r24, 3(r16)				# 16268
	fmul	r58, r9, r24				# 16259
	lw		r40, 0(r32)				# 16330
	fmul	r9, r58, r40				# 16330
	fadd	r9, r9, r6				# 16324
	fabs	r9, r9				# 322
	lw		r44, 0(r31)				# 16317
	fcmp	r44, r9
	ble		.b48868				# 3098
.b48869:
	lw		r9, 2(r32)				# 16391
	fmul	r9, r58, r9				# 16391
	fadd	r9, r9, r55				# 16385
	fabs	r34, r9				# 322
	lw		r9, 2(r31)				# 16378
	fcmp	r9, r34
	ble		.b48870				# 3098
.b48871:
	fcmp	r24, r28
	beq		.b48872				# 3128
.b48873:
	addi	r9, r0, 1				# 16431
.b48875:
	lli		r9, solver_dist.2563				# 16500
	sw		r58, 0(r9)				# 16500
	addi	r52, r0, 2				# 16523
	lli		r9, solver_dist.2563				# 27058
	lw		r44, 0(r9)				# 27058
	fcmp	r44, r28
	ble		.b48897				# 3098
	b		.b48899
.b48872:
	addi	r9, r0, 0				# 16431
.b48874:
	lw		r9, 4(r16)				# 16543
	fsub	r9, r9, r55				# 16542
	lw		r55, 5(r16)				# 16542
	fmul	r16, r9, r55				# 16533
	fmul	r9, r16, r40				# 16604
	fadd	r9, r9, r6				# 16598
	fabs	r9, r9				# 322
	fcmp	r44, r9
	ble		.b48876				# 3098
.b48877:
	fmul	r9, r16, r43				# 16665
	fadd	r9, r9, r11				# 16659
	fabs	r9, r9				# 322
	fcmp	r52, r9
	ble		.b48878				# 3098
.b48879:
	fcmp	r55, r28
	beq		.b48880				# 3128
.b48881:
	lli		r9, solver_dist.2563				# 16774
	sw		r16, 0(r9)				# 16774
	addi	r52, r0, 3				# 16797
	lli		r9, solver_dist.2563				# 27058
	lw		r44, 0(r9)				# 27058
	fcmp	r44, r28
	ble		.b48897				# 3098
	b		.b48899
.b48880:
	addi	r52, r0, 0				# 16811
	lw		r9, 6(r60)				# 3372
	cmpi	r9, 0
	beq		.b48851				# 27653
	b		.b48896
.b48878:
	addi	r52, r0, 0				# 16811
	lw		r9, 6(r60)				# 3372
	cmpi	r9, 0
	beq		.b48851				# 27653
	b		.b48896
.b48876:
	addi	r52, r0, 0				# 16811
	lw		r9, 6(r60)				# 3372
	cmpi	r9, 0
	beq		.b48851				# 27653
	b		.b48896
.b48870:
	addi	r9, r0, 0				# 16467
	b		.b48874				# 16306
.b48868:
	addi	r9, r0, 0				# 16482
	b		.b48874				# 16306
.b48861:
	addi	r9, r0, 0				# 16193
	b		.b48865				# 16033
.b48859:
	addi	r9, r0, 0				# 16208
	b		.b48865				# 16033
.b48824:
	lwx		r8, r41, r9				# 21445
	lw		r44, 10(r8)				# 6561
	lw		r20, 1(r8)				# 2994
	lw		r61, 5(r8)				# 4475
	lw		r15, 0(r61)				# 21561
	fsub	r15, r1, r15				# 21547
	sw		r15, 0(r44)				# 21547
	lw		r15, 1(r61)				# 21603
	fsub	r15, r42, r15				# 21589
	sw		r15, 1(r44)				# 21547
	lw		r61, 2(r61)				# 21645
	fsub	r38, r47, r61				# 21631
	sw		r38, 2(r44)				# 21547
	cmpi	r20, 2
	beq		.b48827				# 21673
.b48828:
	cmpi	r20, 2
	ble		.b48826				# 21798
.b48830:
	lw		r18, 0(r44)				# 21847
	lw		r12, 1(r44)				# 21847
	fmul	r15, r18, r18				# 14374
	lw		r49, 4(r8)				# 3734
	lw		r61, 0(r49)				# 14374
	fmul	r61, r15, r61				# 14374
	fmul	r35, r12, r12				# 14400
	lw		r15, 1(r49)				# 14400
	fmul	r15, r35, r15				# 14374
	fadd	r61, r61, r15				# 14374
	fmul	r35, r38, r38				# 14426
	lw		r15, 2(r49)				# 14426
	fmul	r15, r35, r15				# 14374
	fadd	r61, r61, r15				# 14354
	lw		r15, 3(r8)				# 3553
	cmpi	r15, 0
	beq		.b48832				# 14456
.b48833:
	fmul	r15, r12, r38				# 14522
	lw		r49, 9(r8)				# 5989
	lw		r35, 0(r49)				# 14522
	fmul	r15, r15, r35				# 14503
	fadd	r61, r61, r15				# 14503
	fmul	r15, r38, r18				# 14556
	lw		r35, 1(r49)				# 14556
	fmul	r15, r15, r35				# 14503
	fadd	r35, r61, r15				# 14503
	fmul	r15, r18, r12				# 14590
	lw		r61, 2(r49)				# 14590
	fmul	r61, r15, r61				# 14503
	fadd	r61, r35, r61				# 14503
	cmpi	r20, 3
	beq		.b48835				# 21917
.b48836:
.b48834:
	sw		r61, 3(r44)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b48824				# 21420
	b		.b48822
.b48835:
	fsub	r61, r61, r19				# 21937
	b		.b48834				# 21937
.b48832:
	cmpi	r20, 3
	beq		.b48835				# 21917
	b		.b48836
.b48826:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b48824				# 21420
	b		.b48822
.b48827:
	lw		r12, 4(r8)				# 4293
	lw		r61, 0(r44)				# 21728
	lw		r35, 1(r44)				# 21728
	lw		r15, 0(r12)				# 2037
	fmul	r61, r15, r61				# 2037
	lw		r15, 1(r12)				# 2052
	fmul	r15, r15, r35				# 2037
	fadd	r15, r61, r15				# 2037
	lw		r61, 2(r12)				# 2067
	fmul	r61, r61, r38				# 2037
	fadd	r61, r15, r61				# 21713
	sw		r61, 3(r44)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b48824				# 21420
	b		.b48822
.b48817:
	fcmp	r12, r28
	ble		.b48814				# 3158
	b		.b48821
.b48685:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b48689:
	addi	r15, r15, 1				# 23162
	lwx		r9, r49, r15				# 23025
	cmpi	r9, -1
	beq		.b48645				# 23052
	b		.b48646
.b48645:
	addi	r9, r0, 1				# 23074
	addi	r9, r0, 1				# 23769
	addi	r9, r0, 1				# 24196
.b48696:
	addi	r9, r0, 1				# 24710
	addi	r15, r0, 1				# 24006
	lwx		r12, r35, r15				# 24006
	cmpi	r12, -1
	beq		.b48701				# 24037
.b48702:
	lli		r9, and_net.2554				# 24078
	lwx		r44, r9, r12				# 24078
	addi	r20, r0, 0				# 23266
	lwx		r12, r44, r20				# 23266
	cmpi	r12, -1
	beq		.b48705				# 23266
.b48706:
	lwx		r49, r41, r12				# 17557
	lw		r38, 5(r49)				# 4475
	lw		r9, 0(r38)				# 17595
	fsub	r16, r1, r9				# 17586
	lw		r9, 1(r38)				# 17632
	fsub	r60, r42, r9				# 17623
	lw		r9, 2(r38)				# 17669
	fsub	r18, r47, r9				# 17660
	lli		r9, consts.2632				# 17731
	lwx		r8, r9, r12				# 17731
	lw		r52, 1(r49)				# 2994
	cmpi	r52, 1
	beq		.b48708				# 17793
.b48709:
	cmpi	r52, 2
	beq		.b48734				# 17874
.b48735:
	lw		r12, 0(r8)				# 17054
	fcmp	r12, r28
	beq		.b48738				# 3128
.b48739:
	lw		r9, 1(r8)				# 17128
	fmul	r38, r9, r16				# 17128
	lw		r9, 2(r8)				# 17148
	fmul	r9, r9, r60				# 17128
	fadd	r9, r38, r9				# 17128
	lw		r38, 3(r8)				# 17168
	fmul	r38, r38, r18				# 17128
	fadd	r11, r9, r38				# 17115
	fmul	r9, r16, r16				# 14374
	lw		r32, 4(r49)				# 3734
	lw		r38, 0(r32)				# 14374
	fmul	r43, r9, r38				# 14374
	fmul	r38, r60, r60				# 14400
	lw		r9, 1(r32)				# 14400
	fmul	r9, r38, r9				# 14374
	fadd	r9, r43, r9				# 14374
	fmul	r38, r18, r18				# 14426
	lw		r32, 2(r32)				# 14426
	fmul	r38, r38, r32				# 14374
	fadd	r9, r9, r38				# 14354
	lw		r38, 3(r49)				# 3553
	cmpi	r38, 0
	beq		.b48741				# 14456
.b48742:
	fmul	r43, r60, r18				# 14522
	lw		r32, 9(r49)				# 5989
	lw		r38, 0(r32)				# 14522
	fmul	r38, r43, r38				# 14503
	fadd	r9, r9, r38				# 14503
	fmul	r38, r18, r16				# 14556
	lw		r18, 1(r32)				# 14556
	fmul	r38, r38, r18				# 14503
	fadd	r18, r9, r38				# 14503
	fmul	r9, r16, r60				# 14590
	lw		r38, 2(r32)				# 14590
	fmul	r9, r9, r38				# 14503
	fadd	r9, r18, r9				# 14503
	cmpi	r52, 3
	beq		.b48744				# 17239
.b48745:
.b48743:
	fmul	r38, r11, r11				# 17295
	fmul	r9, r12, r9				# 17295
	fsub	r12, r38, r9				# 17287
	fcmp	r12, r28
	ble		.b48746				# 3158
.b48747:
	lw		r9, 6(r49)				# 3372
	cmpi	r9, 0
	beq		.b48749				# 17353
.b48750:
	fsqrt	r9, r12				# 227
	fadd	r12, r11, r9				# 17394
	lw		r9, 4(r8)				# 17394
	fmul	r9, r12, r9				# 17375
	lli		r12, solver_dist.2563				# 17375
	sw		r9, 0(r12)				# 17375
.b48748:
	addi	r9, r0, 1				# 17498
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addis	r12, r0, 48716
	ori		r12, r12, 52429				# 23476
	fcmp	r12, r9
	ble		.b48754				# 3098
.b48755:
	addi	r12, r0, 1				# 3098
.b48757:
	addis	r12, r0, 15395
	ori		r12, r12, 55050				# 23524
	fadd	r38, r9, r12				# 23516
	lli		r12, light.2545				# 23554
	lw		r9, 0(r12)				# 23554
	fmul	r9, r9, r38				# 23554
	fadd	r18, r9, r1				# 23545
	lw		r9, 1(r12)				# 23613
	fmul	r9, r9, r38				# 23613
	fadd	r60, r9, r42				# 23604
	lw		r9, 2(r12)				# 23672
	fmul	r9, r9, r38				# 23672
	fadd	r49, r9, r47				# 23663
	addi	r12, r0, 0				# 23025
	lwx		r9, r44, r12				# 23025
	cmpi	r9, -1
	beq		.b48762				# 23052
.b48763:
	lwx		r16, r41, r9				# 23095
	lw		r9, 5(r16)				# 4475
	lw		r38, 0(r9)				# 22709
	fsub	r43, r18, r38				# 22700
	lw		r38, 1(r9)				# 22741
	fsub	r52, r60, r38				# 22732
	lw		r9, 2(r9)				# 22773
	fsub	r38, r49, r9				# 22764
	lw		r32, 1(r16)				# 2994
	cmpi	r32, 1
	beq		.b48765				# 22824
.b48766:
	cmpi	r32, 2
	beq		.b48778				# 22882
.b48779:
	fmul	r8, r43, r43				# 14374
	lw		r55, 4(r16)				# 3734
	lw		r9, 0(r55)				# 14374
	fmul	r8, r8, r9				# 14374
	fmul	r9, r52, r52				# 14400
	lw		r11, 1(r55)				# 14400
	fmul	r9, r9, r11				# 14374
	fadd	r9, r8, r9				# 14374
	fmul	r8, r38, r38				# 14426
	lw		r11, 2(r55)				# 14426
	fmul	r8, r8, r11				# 14374
	fadd	r9, r9, r8				# 14354
	lw		r8, 3(r16)				# 3553
	cmpi	r8, 0
	beq		.b48791				# 14456
.b48792:
	fmul	r11, r52, r38				# 14522
	lw		r8, 9(r16)				# 5989
	lw		r55, 0(r8)				# 14522
	fmul	r11, r11, r55				# 14503
	fadd	r11, r9, r11				# 14503
	fmul	r9, r38, r43				# 14556
	lw		r38, 1(r8)				# 14556
	fmul	r9, r9, r38				# 14503
	fadd	r11, r11, r9				# 14503
	fmul	r38, r43, r52				# 14590
	lw		r9, 2(r8)				# 14590
	fmul	r9, r38, r9				# 14503
	fadd	r9, r11, r9				# 14503
	cmpi	r32, 3
	beq		.b48794				# 22583
.b48795:
	lw		r38, 6(r16)				# 3372
	fcmp	r28, r9
	ble		.b48797				# 3188
.b48798:
	addi	r9, r0, 1				# 3188
	cmpi	r38, 0
	beq		.b48800				# 765
.b48801:
	cmpi	r9, 0
	beq		.b48802				# 775
.b48803:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b48808:
	addi	r20, r20, 1				# 23786
	lwx		r12, r44, r20				# 23266
	cmpi	r12, -1
	beq		.b48705				# 23266
	b		.b48706
.b48705:
	addi	r9, r0, 0				# 23304
.b48810:
	addi	r15, r15, 1				# 24216
	lwx		r12, r35, r15				# 24006
	cmpi	r12, -1
	beq		.b48701				# 24037
	b		.b48702
.b48701:
	addi	r9, r0, 0				# 24059
.b48812:
	addi	r61, r61, 1				# 24833
	lwx		r35, r10, r61				# 24323
	lw		r9, 0(r35)				# 24355
	cmpi	r9, -1
	beq		.b48529				# 24391
	b		.b48530
.b48802:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b48806:
	addi	r12, r12, 1				# 23162
	lwx		r9, r44, r12				# 23025
	cmpi	r9, -1
	beq		.b48762				# 23052
	b		.b48763
.b48762:
	addi	r9, r0, 1				# 23074
.b48809:
	addi	r9, r0, 1				# 23769
	addi	r9, r0, 1				# 24196
	addi	r9, r0, 1				# 24816
	b		.b48814				# 34076
.b48800:
	cmpi	r9, 0
	beq		.b48804				# 22625
.b48805:
	addi	r9, r0, 0				# 22625
	b		.b48806				# 23092
.b48804:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b48808				# 23722
.b48797:
	addi	r9, r0, 0				# 3188
	cmpi	r38, 0
	beq		.b48800				# 765
	b		.b48801
.b48794:
	fsub	r9, r9, r19				# 22604
	lw		r38, 6(r16)				# 3372
	fcmp	r28, r9
	ble		.b48797				# 3188
	b		.b48798
.b48791:
	cmpi	r32, 3
	beq		.b48794				# 22583
	b		.b48795
.b48778:
	lw		r8, 4(r16)				# 4293
	lw		r9, 0(r8)				# 2037
	fmul	r9, r9, r43				# 2037
	lw		r11, 1(r8)				# 2052
	fmul	r11, r11, r52				# 2037
	fadd	r9, r9, r11				# 2037
	lw		r8, 2(r8)				# 2067
	fmul	r38, r8, r38				# 2037
	fadd	r9, r9, r38				# 22411
	lw		r38, 6(r16)				# 3372
	fcmp	r28, r9
	ble		.b48781				# 3188
.b48782:
	addi	r9, r0, 1				# 3188
	cmpi	r38, 0
	beq		.b48784				# 765
.b48785:
	cmpi	r9, 0
	beq		.b48786				# 775
.b48787:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b48808				# 23722
.b48786:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b48806				# 23092
.b48784:
	cmpi	r9, 0
	beq		.b48788				# 22459
.b48789:
	addi	r9, r0, 0				# 22459
	b		.b48806				# 23092
.b48788:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b48808				# 23722
.b48781:
	addi	r9, r0, 0				# 3188
	cmpi	r38, 0
	beq		.b48784				# 765
	b		.b48785
.b48765:
	fabs	r11, r43				# 322
	lw		r8, 4(r16)				# 3734
	lw		r9, 0(r8)				# 22178
	fcmp	r9, r11
	ble		.b48768				# 3098
.b48769:
	fabs	r9, r52				# 322
	lw		r11, 1(r8)				# 22224
	fcmp	r11, r9
	ble		.b48770				# 3098
.b48771:
	fabs	r38, r38				# 322
	lw		r9, 2(r8)				# 22261
	fcmp	r9, r38
	ble		.b48772				# 3098
.b48773:
	addi	r9, r0, 1				# 3098
	lw		r9, 6(r16)				# 3372
	cmpi	r9, 0
	beq		.b48806				# 23092
.b48807:
	addi	r9, r0, 0				# 23141
	b		.b48808				# 23722
.b48772:
	addi	r9, r0, 0				# 3098
	lw		r9, 6(r16)				# 3372
	cmpi	r9, 0
	beq		.b48776				# 22348
.b48777:
	addi	r9, r0, 0				# 22348
	b		.b48806				# 23092
.b48776:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b48808				# 23722
.b48770:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r16)				# 3372
	cmpi	r9, 0
	beq		.b48776				# 22348
	b		.b48777
.b48768:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r16)				# 3372
	cmpi	r9, 0
	beq		.b48776				# 22348
	b		.b48777
.b48754:
	addi	r12, r0, 0				# 3098
	lw		r9, 6(r49)				# 3372
	cmpi	r9, 0
	beq		.b48758				# 23849
.b48759:
	addi	r20, r20, 1				# 23885
	lwx		r12, r44, r20				# 23266
	cmpi	r12, -1
	beq		.b48705				# 23266
	b		.b48706
.b48758:
	addi	r9, r0, 0				# 23945
	b		.b48810				# 24173
.b48749:
	fsqrt	r9, r12				# 227
	fsub	r12, r11, r9				# 17458
	lw		r9, 4(r8)				# 17458
	fmul	r12, r12, r9				# 17439
	lli		r9, solver_dist.2563				# 17439
	sw		r12, 0(r9)				# 17439
	b		.b48748				# 17439
.b48746:
	addi	r9, r0, 0				# 17510
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addi	r12, r0, 0				# 23498
	lw		r9, 6(r49)				# 3372
	cmpi	r9, 0
	beq		.b48758				# 23849
	b		.b48759
.b48744:
	fsub	r9, r9, r19				# 17260
	b		.b48743				# 17260
.b48741:
	cmpi	r52, 3
	beq		.b48744				# 17239
	b		.b48745
.b48738:
	addi	r9, r0, 0				# 17102
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addi	r12, r0, 0				# 23498
	lw		r9, 6(r49)				# 3372
	cmpi	r9, 0
	beq		.b48758				# 23849
	b		.b48759
.b48734:
	lw		r9, 0(r8)				# 16870
	fcmp	r28, r9
	ble		.b48736				# 3188
.b48737:
	lw		r9, 1(r8)				# 16924
	fmul	r9, r9, r16				# 16924
	lw		r12, 2(r8)				# 16944
	fmul	r12, r12, r60				# 16924
	fadd	r12, r9, r12				# 16924
	lw		r9, 3(r8)				# 16964
	fmul	r9, r9, r18				# 16924
	fadd	r9, r12, r9				# 16899
	lli		r12, solver_dist.2563				# 16899
	sw		r9, 0(r12)				# 16899
	addi	r9, r0, 1				# 16986
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addis	r12, r0, 48716
	ori		r12, r12, 52429				# 23476
	fcmp	r12, r9
	ble		.b48754				# 3098
	b		.b48755
.b48736:
	addi	r9, r0, 0				# 16998
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addi	r12, r0, 0				# 23498
	lw		r9, 6(r49)				# 3372
	cmpi	r9, 0
	beq		.b48758				# 23849
	b		.b48759
.b48708:
	lw		r9, 0(r8)				# 15996
	fsub	r9, r9, r16				# 15995
	lw		r11, 1(r8)				# 15995
	fmul	r38, r9, r11				# 15986
	lli		r9, v3.2630				# 16056
	lw		r43, 1(r9)				# 16056
	fmul	r12, r38, r43				# 16056
	fadd	r12, r12, r60				# 16050
	fabs	r12, r12				# 322
	lw		r55, 4(r49)				# 3920
	lw		r32, 1(r55)				# 16043
	fcmp	r32, r12
	ble		.b48711				# 3098
.b48712:
	lw		r12, 2(r9)				# 16117
	fmul	r12, r38, r12				# 16117
	fadd	r12, r12, r18				# 16111
	fabs	r52, r12				# 322
	lw		r12, 2(r55)				# 16104
	fcmp	r12, r52
	ble		.b48713				# 3098
.b48714:
	fcmp	r11, r28
	beq		.b48715				# 3128
.b48716:
	addi	r12, r0, 1				# 16157
.b48718:
	lli		r9, solver_dist.2563				# 16226
	sw		r38, 0(r9)				# 16226
	addi	r9, r0, 1				# 16249
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addis	r12, r0, 48716
	ori		r12, r12, 52429				# 23476
	fcmp	r12, r9
	ble		.b48754				# 3098
	b		.b48755
.b48715:
	addi	r12, r0, 0				# 16157
.b48717:
	lw		r12, 2(r8)				# 16269
	fsub	r12, r12, r60				# 16268
	lw		r6, 3(r8)				# 16268
	fmul	r12, r12, r6				# 16259
	lw		r11, 0(r9)				# 16330
	fmul	r38, r12, r11				# 16330
	fadd	r38, r38, r16				# 16324
	fabs	r52, r38				# 322
	lw		r38, 0(r55)				# 16317
	fcmp	r38, r52
	ble		.b48720				# 3098
.b48721:
	lw		r9, 2(r9)				# 16391
	fmul	r9, r12, r9				# 16391
	fadd	r9, r9, r18				# 16385
	fabs	r52, r9				# 322
	lw		r9, 2(r55)				# 16378
	fcmp	r9, r52
	ble		.b48722				# 3098
.b48723:
	fcmp	r6, r28
	beq		.b48724				# 3128
.b48725:
	addi	r9, r0, 1				# 16431
.b48727:
	lli		r9, solver_dist.2563				# 16500
	sw		r12, 0(r9)				# 16500
	addi	r9, r0, 2				# 16523
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addis	r12, r0, 48716
	ori		r12, r12, 52429				# 23476
	fcmp	r12, r9
	ble		.b48754				# 3098
	b		.b48755
.b48724:
	addi	r9, r0, 0				# 16431
.b48726:
	lw		r9, 4(r8)				# 16543
	fsub	r9, r9, r18				# 16542
	lw		r8, 5(r8)				# 16542
	fmul	r12, r9, r8				# 16533
	fmul	r9, r12, r11				# 16604
	fadd	r9, r9, r16				# 16598
	fabs	r9, r9				# 322
	fcmp	r38, r9
	ble		.b48728				# 3098
.b48729:
	fmul	r9, r12, r43				# 16665
	fadd	r9, r9, r60				# 16659
	fabs	r9, r9				# 322
	fcmp	r32, r9
	ble		.b48730				# 3098
.b48731:
	fcmp	r8, r28
	beq		.b48732				# 3128
.b48733:
	lli		r9, solver_dist.2563				# 16774
	sw		r12, 0(r9)				# 16774
	addi	r9, r0, 3				# 16797
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addis	r12, r0, 48716
	ori		r12, r12, 52429				# 23476
	fcmp	r12, r9
	ble		.b48754				# 3098
	b		.b48755
.b48732:
	addi	r9, r0, 0				# 16811
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addi	r12, r0, 0				# 23498
	lw		r9, 6(r49)				# 3372
	cmpi	r9, 0
	beq		.b48758				# 23849
	b		.b48759
.b48730:
	addi	r9, r0, 0				# 16811
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addi	r12, r0, 0				# 23498
	lw		r9, 6(r49)				# 3372
	cmpi	r9, 0
	beq		.b48758				# 23849
	b		.b48759
.b48728:
	addi	r9, r0, 0				# 16811
	lli		r9, solver_dist.2563				# 23423
	lw		r9, 0(r9)				# 23423
	addi	r12, r0, 0				# 23498
	lw		r9, 6(r49)				# 3372
	cmpi	r9, 0
	beq		.b48758				# 23849
	b		.b48759
.b48722:
	addi	r9, r0, 0				# 16467
	b		.b48726				# 16306
.b48720:
	addi	r9, r0, 0				# 16482
	b		.b48726				# 16306
.b48713:
	addi	r12, r0, 0				# 16193
	b		.b48717				# 16033
.b48711:
	addi	r12, r0, 0				# 16208
	b		.b48717				# 16033
.b48683:
	cmpi	r9, 0
	beq		.b48687				# 22625
.b48688:
	addi	r9, r0, 0				# 22625
	b		.b48689				# 23092
.b48687:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b48691				# 23722
.b48680:
	addi	r9, r0, 0				# 3188
	cmpi	r8, 0
	beq		.b48683				# 765
	b		.b48684
.b48677:
	fsub	r9, r9, r19				# 22604
	lw		r8, 6(r32)				# 3372
	fcmp	r28, r9
	ble		.b48680				# 3188
	b		.b48681
.b48674:
	cmpi	r8, 3
	beq		.b48677				# 22583
	b		.b48678
.b48661:
	lw		r18, 4(r32)				# 4293
	lw		r9, 0(r18)				# 2037
	fmul	r8, r9, r6				# 2037
	lw		r9, 1(r18)				# 2052
	fmul	r9, r9, r55				# 2037
	fadd	r8, r8, r9				# 2037
	lw		r9, 2(r18)				# 2067
	fmul	r9, r9, r43				# 2037
	fadd	r9, r8, r9				# 22411
	lw		r8, 6(r32)				# 3372
	fcmp	r28, r9
	ble		.b48664				# 3188
.b48665:
	addi	r9, r0, 1				# 3188
	cmpi	r8, 0
	beq		.b48667				# 765
.b48668:
	cmpi	r9, 0
	beq		.b48669				# 775
.b48670:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b48691				# 23722
.b48669:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b48689				# 23092
.b48667:
	cmpi	r9, 0
	beq		.b48671				# 22459
.b48672:
	addi	r9, r0, 0				# 22459
	b		.b48689				# 23092
.b48671:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b48691				# 23722
.b48664:
	addi	r9, r0, 0				# 3188
	cmpi	r8, 0
	beq		.b48667				# 765
	b		.b48668
.b48648:
	fabs	r9, r6				# 322
	lw		r18, 4(r32)				# 3734
	lw		r8, 0(r18)				# 22178
	fcmp	r8, r9
	ble		.b48651				# 3098
.b48652:
	fabs	r9, r55				# 322
	lw		r8, 1(r18)				# 22224
	fcmp	r8, r9
	ble		.b48653				# 3098
.b48654:
	fabs	r8, r43				# 322
	lw		r9, 2(r18)				# 22261
	fcmp	r9, r8
	ble		.b48655				# 3098
.b48656:
	addi	r9, r0, 1				# 3098
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b48689				# 23092
.b48690:
	addi	r9, r0, 0				# 23141
	b		.b48691				# 23722
.b48655:
	addi	r9, r0, 0				# 3098
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b48659				# 22348
.b48660:
	addi	r9, r0, 0				# 22348
	b		.b48689				# 23092
.b48659:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b48691				# 23722
.b48653:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b48659				# 22348
	b		.b48660
.b48651:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r32)				# 3372
	cmpi	r9, 0
	beq		.b48659				# 22348
	b		.b48660
.b48637:
	addi	r9, r0, 0				# 3098
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48641				# 23849
.b48642:
	addi	r12, r12, 1				# 23885
	lwx		r15, r49, r12				# 23266
	cmpi	r15, -1
	beq		.b48588				# 23266
	b		.b48589
.b48641:
	addi	r9, r0, 0				# 23945
	b		.b48693				# 24173
.b48632:
	fsqrt	r9, r15				# 227
	fsub	r15, r32, r9				# 17458
	lw		r9, 4(r60)				# 17458
	fmul	r9, r15, r9				# 17439
	sw		r9, 0(r38)				# 17439
	addi	r9, r0, 1				# 17498
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48637				# 3098
	b		.b48638
.b48629:
	addi	r9, r0, 0				# 17510
	lw		r15, 0(r38)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48641				# 23849
	b		.b48642
.b48627:
	fsub	r9, r9, r19				# 17260
	b		.b48626				# 17260
.b48624:
	cmpi	r15, 3
	beq		.b48627				# 17239
	b		.b48628
.b48621:
	addi	r9, r0, 0				# 17102
	lw		r15, 0(r38)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48641				# 23849
	b		.b48642
.b48617:
	lw		r9, 0(r60)				# 16870
	fcmp	r28, r9
	ble		.b48619				# 3188
.b48620:
	lw		r9, 1(r60)				# 16924
	fmul	r15, r9, r16				# 16924
	lw		r9, 2(r60)				# 16944
	fmul	r9, r9, r11				# 16924
	fadd	r15, r15, r9				# 16924
	lw		r9, 3(r60)				# 16964
	fmul	r9, r9, r52				# 16924
	fadd	r9, r15, r9				# 16899
	sw		r9, 0(r38)				# 16899
	addi	r9, r0, 1				# 16986
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48637				# 3098
	b		.b48638
.b48619:
	addi	r9, r0, 0				# 16998
	lw		r15, 0(r38)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48641				# 23849
	b		.b48642
.b48591:
	lw		r9, 0(r60)				# 15996
	fsub	r9, r9, r16				# 15995
	lw		r32, 1(r60)				# 15995
	fmul	r43, r9, r32				# 15986
	lli		r9, v3.2630				# 16056
	lw		r8, 1(r9)				# 16056
	fmul	r15, r43, r8				# 16056
	fadd	r15, r15, r11				# 16050
	fabs	r15, r15				# 322
	lw		r6, 4(r18)				# 3920
	lw		r55, 1(r6)				# 16043
	fcmp	r55, r15
	ble		.b48594				# 3098
.b48595:
	lw		r15, 2(r9)				# 16117
	fmul	r15, r43, r15				# 16117
	fadd	r15, r15, r52				# 16111
	fabs	r15, r15				# 322
	lw		r31, 2(r6)				# 16104
	fcmp	r31, r15
	ble		.b48596				# 3098
.b48597:
	fcmp	r32, r28
	beq		.b48598				# 3128
.b48599:
	addi	r15, r0, 1				# 16157
.b48601:
	sw		r43, 0(r38)				# 16226
	addi	r9, r0, 1				# 16249
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48637				# 3098
	b		.b48638
.b48598:
	addi	r15, r0, 0				# 16157
.b48600:
	lw		r15, 2(r60)				# 16269
	fsub	r15, r15, r11				# 16268
	lw		r43, 3(r60)				# 16268
	fmul	r24, r15, r43				# 16259
	lw		r31, 0(r9)				# 16330
	fmul	r15, r24, r31				# 16330
	fadd	r15, r15, r16				# 16324
	fabs	r15, r15				# 322
	lw		r32, 0(r6)				# 16317
	fcmp	r32, r15
	ble		.b48603				# 3098
.b48604:
	lw		r9, 2(r9)				# 16391
	fmul	r9, r24, r9				# 16391
	fadd	r9, r9, r52				# 16385
	fabs	r9, r9				# 322
	lw		r15, 2(r6)				# 16378
	fcmp	r15, r9
	ble		.b48605				# 3098
.b48606:
	fcmp	r43, r28
	beq		.b48607				# 3128
.b48608:
	addi	r9, r0, 1				# 16431
.b48610:
	sw		r24, 0(r38)				# 16500
	addi	r9, r0, 2				# 16523
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48637				# 3098
	b		.b48638
.b48607:
	addi	r9, r0, 0				# 16431
.b48609:
	lw		r9, 4(r60)				# 16543
	fsub	r9, r9, r52				# 16542
	lw		r60, 5(r60)				# 16542
	fmul	r15, r9, r60				# 16533
	fmul	r9, r15, r31				# 16604
	fadd	r9, r9, r16				# 16598
	fabs	r9, r9				# 322
	fcmp	r32, r9
	ble		.b48611				# 3098
.b48612:
	fmul	r9, r15, r8				# 16665
	fadd	r9, r9, r11				# 16659
	fabs	r9, r9				# 322
	fcmp	r55, r9
	ble		.b48613				# 3098
.b48614:
	fcmp	r60, r28
	beq		.b48615				# 3128
.b48616:
	sw		r15, 0(r38)				# 16774
	addi	r9, r0, 3				# 16797
	lw		r15, 0(r38)				# 23423
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r15
	ble		.b48637				# 3098
	b		.b48638
.b48615:
	addi	r9, r0, 0				# 16811
	lw		r15, 0(r38)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48641				# 23849
	b		.b48642
.b48613:
	addi	r9, r0, 0				# 16811
	lw		r15, 0(r38)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48641				# 23849
	b		.b48642
.b48611:
	addi	r9, r0, 0				# 16811
	lw		r15, 0(r38)				# 23423
	addi	r9, r0, 0				# 23498
	lw		r9, 6(r18)				# 3372
	cmpi	r9, 0
	beq		.b48641				# 23849
	b		.b48642
.b48605:
	addi	r9, r0, 0				# 16467
	b		.b48609				# 16306
.b48603:
	addi	r9, r0, 0				# 16482
	b		.b48609				# 16306
.b48596:
	addi	r15, r0, 0				# 16193
	b		.b48600				# 16033
.b48594:
	addi	r15, r0, 0				# 16208
	b		.b48600				# 16033
.b48580:
	addi	r9, r0, 0				# 24739
	b		.b48697				# 24441
.b48576:
	fsqrt	r9, r15				# 227
	fsub	r15, r60, r9				# 17458
	lw		r9, 4(r20)				# 17458
	fmul	r15, r15, r9				# 17439
	lli		r9, solver_dist.2563				# 17439
	sw		r15, 0(r9)				# 17439
	addi	r9, r0, 1				# 17498
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r50, r9
	ble		.b48580				# 3098
	b		.b48581
.b48573:
	addi	r9, r0, 0				# 17510
	addi	r9, r0, 0				# 24751
	b		.b48697				# 24441
.b48571:
	fsub	r9, r9, r19				# 17260
	b		.b48570				# 17260
.b48568:
	cmpi	r16, 3
	beq		.b48571				# 17239
	b		.b48572
.b48565:
	addi	r9, r0, 0				# 17102
	addi	r9, r0, 0				# 24751
	b		.b48697				# 24441
.b48561:
	lw		r9, 0(r20)				# 16870
	fcmp	r28, r9
	ble		.b48563				# 3188
.b48564:
	lw		r9, 1(r20)				# 16924
	fmul	r15, r9, r38				# 16924
	lw		r9, 2(r20)				# 16944
	fmul	r9, r9, r49				# 16924
	fadd	r9, r15, r9				# 16924
	lw		r15, 3(r20)				# 16964
	fmul	r15, r15, r8				# 16924
	fadd	r15, r9, r15				# 16899
	lli		r9, solver_dist.2563				# 16899
	sw		r15, 0(r9)				# 16899
	addi	r9, r0, 1				# 16986
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r50, r9
	ble		.b48580				# 3098
	b		.b48581
.b48563:
	addi	r9, r0, 0				# 16998
	addi	r9, r0, 0				# 24751
	b		.b48697				# 24441
.b48535:
	lw		r9, 0(r20)				# 15996
	fsub	r9, r9, r38				# 15995
	lw		r60, 1(r20)				# 15995
	fmul	r12, r9, r60				# 15986
	lli		r16, v3.2630				# 16056
	lw		r11, 1(r16)				# 16056
	fmul	r9, r12, r11				# 16056
	fadd	r9, r9, r49				# 16050
	fabs	r9, r9				# 322
	lw		r15, 4(r18)				# 3920
	lw		r52, 1(r15)				# 16043
	fcmp	r52, r9
	ble		.b48538				# 3098
.b48539:
	lw		r9, 2(r16)				# 16117
	fmul	r9, r12, r9				# 16117
	fadd	r9, r9, r8				# 16111
	fabs	r9, r9				# 322
	lw		r18, 2(r15)				# 16104
	fcmp	r18, r9
	ble		.b48540				# 3098
.b48541:
	fcmp	r60, r28
	beq		.b48542				# 3128
.b48543:
	addi	r9, r0, 1				# 16157
.b48545:
	lli		r9, solver_dist.2563				# 16226
	sw		r12, 0(r9)				# 16226
	addi	r9, r0, 1				# 16249
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r50, r9
	ble		.b48580				# 3098
	b		.b48581
.b48542:
	addi	r9, r0, 0				# 16157
.b48544:
	lw		r9, 2(r20)				# 16269
	fsub	r12, r9, r49				# 16268
	lw		r9, 3(r20)				# 16268
	fmul	r18, r12, r9				# 16259
	lw		r32, 0(r16)				# 16330
	fmul	r12, r18, r32				# 16330
	fadd	r12, r12, r38				# 16324
	fabs	r12, r12				# 322
	lw		r60, 0(r15)				# 16317
	fcmp	r60, r12
	ble		.b48547				# 3098
.b48548:
	lw		r12, 2(r16)				# 16391
	fmul	r12, r18, r12				# 16391
	fadd	r12, r12, r8				# 16385
	fabs	r12, r12				# 322
	lw		r15, 2(r15)				# 16378
	fcmp	r15, r12
	ble		.b48549				# 3098
.b48550:
	fcmp	r9, r28
	beq		.b48551				# 3128
.b48552:
	addi	r9, r0, 1				# 16431
.b48554:
	lli		r9, solver_dist.2563				# 16500
	sw		r18, 0(r9)				# 16500
	addi	r9, r0, 2				# 16523
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r50, r9
	ble		.b48580				# 3098
	b		.b48581
.b48551:
	addi	r9, r0, 0				# 16431
.b48553:
	lw		r9, 4(r20)				# 16543
	fsub	r9, r9, r8				# 16542
	lw		r12, 5(r20)				# 16542
	fmul	r15, r9, r12				# 16533
	fmul	r9, r15, r32				# 16604
	fadd	r9, r9, r38				# 16598
	fabs	r9, r9				# 322
	fcmp	r60, r9
	ble		.b48555				# 3098
.b48556:
	fmul	r9, r15, r11				# 16665
	fadd	r9, r9, r49				# 16659
	fabs	r9, r9				# 322
	fcmp	r52, r9
	ble		.b48557				# 3098
.b48558:
	fcmp	r12, r28
	beq		.b48559				# 3128
.b48560:
	lli		r9, solver_dist.2563				# 16774
	sw		r15, 0(r9)				# 16774
	addi	r9, r0, 3				# 16797
	lli		r38, solver_dist.2563				# 24609
	lw		r9, 0(r38)				# 24609
	fcmp	r50, r9
	ble		.b48580				# 3098
	b		.b48581
.b48559:
	addi	r9, r0, 0				# 16811
	addi	r9, r0, 0				# 24751
	b		.b48697				# 24441
.b48557:
	addi	r9, r0, 0				# 16811
	addi	r9, r0, 0				# 24751
	b		.b48697				# 24441
.b48555:
	addi	r9, r0, 0				# 16811
	addi	r9, r0, 0				# 24751
	b		.b48697				# 24441
.b48549:
	addi	r9, r0, 0				# 16467
	b		.b48553				# 16306
.b48547:
	addi	r9, r0, 0				# 16482
	b		.b48553				# 16306
.b48540:
	addi	r9, r0, 0				# 16193
	b		.b48544				# 16033
.b48538:
	addi	r9, r0, 0				# 16208
	b		.b48544				# 16033
.b48532:
	addi	r9, r0, 1				# 24483
	addi	r15, r0, 1				# 24006
	lwx		r12, r35, r15				# 24006
	cmpi	r12, -1
	beq		.b48701				# 24037
	b		.b48702
.b48525:
	addi	r9, r0, 1				# 33698
	swx		r9, r46, r61				# 33698
	lw		r9, 4(r51)				# 7334
	lwx		r15, r9, r46				# 33761
	lw		r9, 0(r36)				# 1353
	sw		r9, 0(r15)				# 1353
	lw		r9, 1(r36)				# 1376
	sw		r9, 1(r15)				# 1353
	lw		r9, 2(r36)				# 1399
	sw		r9, 2(r15)				# 33761
	addis	r9, r0, 15232				# 33824
	fmul	r9, r9, r56				# 33799
	lw		r61, 0(r15)				# 2540
	fmul	r61, r61, r9				# 2528
	sw		r61, 0(r15)				# 2528
	lw		r61, 1(r15)				# 2573
	fmul	r61, r61, r9				# 2561
	sw		r61, 1(r15)				# 2528
	lw		r61, 2(r15)				# 2606
	fmul	r9, r61, r9				# 2594
	sw		r9, 2(r15)				# 33761
	lw		r9, 7(r51)				# 7939
	lwx		r15, r9, r46				# 33889
	lli		r9, nvector.2578				# 1353
	lw		r61, 0(r9)				# 1353
	sw		r61, 0(r15)				# 1353
	lw		r61, 1(r9)				# 1376
	sw		r61, 1(r15)				# 1353
	lw		r9, 2(r9)				# 1399
	sw		r9, 2(r15)				# 1399
	b		.b48524				# 1399
.b48513:
	lw		r17, 5(r61)				# 4475
	lw		r9, 0(r17)				# 31118
	fsub	r15, r1, r9				# 31117
	lw		r54, 4(r61)				# 3734
	lw		r9, 0(r54)				# 31144
	fsqrt	r9, r9				# 227
	fmul	r15, r15, r9				# 31108
	lw		r9, 2(r17)				# 31181
	fsub	r61, r47, r9				# 31180
	lw		r9, 2(r54)				# 31207
	fsqrt	r9, r9				# 227
	fmul	r25, r61, r9				# 31171
	fmul	r9, r15, r15				# 31243
	fmul	r61, r25, r25				# 31243
	fadd	r37, r9, r61				# 31234
	fabs	r9, r15				# 322
	addis	r61, r0, 14545
	ori		r61, r61, 46871				# 31291
	fcmp	r61, r9
	ble		.b48516				# 3098
.b48517:
	addis	r15, r0, 16752				# 31320
.b48515:
	ffloor	r9, r15				# 765
	fsub	r25, r15, r9				# 31412
	lw		r9, 1(r17)				# 31456
	fsub	r9, r42, r9				# 31455
	lw		r15, 1(r54)				# 31482
	fsqrt	r15, r15				# 227
	fmul	r9, r9, r15				# 31446
	fabs	r15, r37				# 322
	fcmp	r61, r15
	ble		.b48519				# 3098
.b48520:
	addis	r9, r0, 16752				# 31556
.b48518:
	ffloor	r61, r9				# 765
	fsub	r9, r9, r61				# 31646
	addis	r54, r0, 15897
	ori		r54, r54, 39322				# 31690
	addis	r15, r0, 16128				# 31705
	fsub	r61, r15, r25				# 31699
	fmul	r61, r61, r61				# 31690
	fsub	r61, r54, r61				# 31690
	fsub	r9, r15, r9				# 31721
	fmul	r9, r9, r9				# 31690
	fsub	r9, r61, r9				# 31680
	fcmp	r28, r9
	ble		.b48522				# 3188
.b48523:
	addi	r9, r0, 0				# 31776
.b48521:
	addis	r61, r0, 17279				# 31817
	fmul	r9, r61, r9				# 31817
	addis	r61, r0, 16025
	ori		r61, r61, 39322				# 31817
	fdiv	r9, r9, r61				# 31796
	sw		r9, 2(r36)				# 31796
	b		.b48493				# 31796
.b48522:
	b		.b48521				# 31785
.b48519:
	fdiv	r9, r9, r37				# 31582
	fabs	r9, r9				# 322
	fatan	r61, r9				# 440
	addis	r9, r0, 16880				# 31603
	fmul	r61, r61, r9				# 31602
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 31602
	fdiv	r9, r61, r9				# 31602
	b		.b48518				# 31602
.b48516:
	fdiv	r9, r25, r15				# 31347
	fabs	r9, r9				# 322
	fatan	r9, r9				# 440
	addis	r15, r0, 16880				# 31369
	fmul	r9, r9, r15				# 31368
	addis	r15, r0, 16457
	ori		r15, r15, 4059				# 31368
	fdiv	r15, r9, r15				# 31368
	b		.b48515				# 31368
.b48511:
	lw		r61, 5(r61)				# 4475
	lw		r9, 0(r61)				# 30784
	fsub	r9, r1, r9				# 30775
	lw		r61, 2(r61)				# 30823
	fsub	r15, r47, r61				# 30814
	fmul	r61, r9, r9				# 30868
	fmul	r9, r15, r15				# 30868
	fadd	r9, r61, r9				# 30862
	fsqrt	r9, r9				# 227
	addis	r61, r0, 16672				# 30862
	fdiv	r9, r9, r61				# 30853
	ffloor	r61, r9				# 765
	fsub	r61, r9, r61				# 30915
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 30915
	fmul	r9, r61, r9				# 30905
	fcos	r9, r9				# 133
	fmul	r15, r9, r9				# 30954
	addis	r9, r0, 17279				# 30987
	fmul	r61, r15, r9				# 30987
	sw		r61, 1(r36)				# 30987
	fsub	r61, r19, r15				# 31049
	fmul	r9, r61, r9				# 31028
	sw		r9, 2(r36)				# 31028
	b		.b48493				# 31028
.b48509:
	addis	r9, r0, 16000				# 30625
	fmul	r9, r42, r9				# 30620
	fsin	r9, r9				# 40
	fmul	r61, r9, r9				# 30605
	addis	r15, r0, 17279				# 30650
	fmul	r9, r15, r61				# 30650
	sw		r9, 0(r36)				# 30650
	fsub	r9, r19, r61				# 30711
	fmul	r9, r15, r9				# 30690
	sw		r9, 1(r36)				# 30690
	b		.b48493				# 30690
.b48494:
	lw		r9, 5(r61)				# 4475
	lw		r61, 0(r9)				# 30169
	fsub	r54, r1, r61				# 30160
	addis	r61, r0, 15692
	ori		r61, r61, 52429				# 30234
	fmul	r15, r54, r61				# 30227
	ffloor	r15, r15				# 765
	addis	r25, r0, 16800				# 30226
	fmul	r15, r15, r25				# 30217
	fsub	r54, r54, r15				# 30264
	addis	r15, r0, 16672				# 30264
	fcmp	r15, r54
	ble		.b48497				# 3098
.b48498:
	addi	r37, r0, 1				# 3098
.b48496:
	lw		r9, 2(r9)				# 30308
	fsub	r54, r47, r9				# 30299
	fmul	r9, r54, r61				# 30366
	ffloor	r9, r9				# 765
	fmul	r9, r9, r25				# 30356
	fsub	r9, r54, r9				# 30404
	fcmp	r15, r9
	ble		.b48500				# 3098
.b48501:
	addi	r9, r0, 1				# 3098
	cmpi	r37, 0
	beq		.b48503				# 30467
.b48504:
	cmpi	r9, 0
	beq		.b48507				# 30489
.b48508:
	addis	r9, r0, 17279				# 30503
	sw		r9, 1(r36)				# 30439
	b		.b48493				# 30439
.b48507:
	addi	r9, r0, 0				# 30514
	sw		r9, 1(r36)				# 30439
	b		.b48493				# 30439
.b48503:
	cmpi	r9, 0
	beq		.b48505				# 30532
.b48506:
	addi	r9, r0, 0				# 30546
	sw		r9, 1(r36)				# 30439
	b		.b48493				# 30439
.b48505:
	addis	r9, r0, 17279				# 30555
	sw		r9, 1(r36)				# 30439
	b		.b48493				# 30439
.b48500:
	addi	r9, r0, 0				# 3098
	cmpi	r37, 0
	beq		.b48503				# 30467
	b		.b48504
.b48497:
	addi	r37, r0, 0				# 3098
	b		.b48496				# 3098
.b48491:
	fdiv	r54, r19, r54				# 1837
	b		.b48488				# 1837
.b48489:
	addis	r54, r0, 16256				# 1801
	b		.b48488				# 1801
.b48486:
	lli		r9, nvector.2578				# 29409
	sw		r54, 0(r9)				# 29409
	sw		r42, 1(r9)				# 29409
	sw		r17, 2(r9)				# 29455
	b		.b48485				# 29455
.b48483:
	lw		r54, 4(r61)				# 3734
	lw		r9, 0(r54)				# 28996
	fneg	r9, r9				# 28981
	lli		r15, nvector.2578				# 28981
	sw		r9, 0(r15)				# 28981
	lw		r9, 1(r54)				# 29034
	fneg	r9, r9				# 29019
	sw		r9, 1(r15)				# 28981
	lw		r9, 2(r54)				# 29071
	fneg	r9, r9				# 29056
	sw		r9, 2(r15)				# 29056
	b		.b48475				# 29056
.b48476:
	lli		r9, intsec_rectside.2566				# 28828
	lw		r15, 0(r9)				# 28828
	lli		r9, nvector.2578				# 1232
	sw		r28, 0(r9)				# 1232
	sw		r28, 1(r9)				# 1232
	sw		r28, 2(r9)				# 28868
	addi	r54, r15, -1				# 28888
	lwx		r15, r57, r54				# 28918
	fcmp	r15, r28
	beq		.b48479				# 3128
.b48480:
	fcmp	r15, r28
	ble		.b48481				# 3158
.b48482:
	addis	r15, r0, 16256				# 856
	fneg	r15, r15				# 28888
	swx		r15, r54, r9				# 28888
	b		.b48475				# 28888
.b48481:
	addis	r15, r0, 49024				# 868
	fneg	r15, r15				# 28888
	swx		r15, r54, r9				# 28888
	b		.b48475				# 28888
.b48479:
	addi	r15, r0, 0				# 828
	fneg	r15, r15				# 28888
	swx		r15, r54, r9				# 28888
	b		.b48475				# 28888
.b48467:
	addi	r9, r0, 0				# 3098
	addi	r9, r0, -1				# 34715
	swx		r9, r46, r13				# 34715
	cmpi	r46, 0
	beq		.b48068				# 34748
.b48472:
	lw		r61, 0(r57)				# 1949
	lli		r15, light.2545				# 1949
	lw		r9, 0(r15)				# 1949
	fmul	r61, r61, r9				# 1949
	lw		r62, 1(r57)				# 1967
	lw		r9, 1(r15)				# 1967
	fmul	r9, r62, r9				# 1949
	fadd	r61, r61, r9				# 1949
	lw		r62, 2(r57)				# 1985
	lw		r9, 2(r15)				# 1985
	fmul	r9, r62, r9				# 1949
	fadd	r9, r61, r9				# 34778
	fneg	r61, r9				# 34769
	fcmp	r61, r28
	ble		.b48068				# 3158
.b48474:
	fmul	r9, r61, r61				# 34848
	fmul	r9, r9, r61				# 34848
	fmul	r9, r9, r26				# 34848
	lli		r61, beam.2548				# 34848
	lw		r61, 0(r61)				# 34848
	fmul	r9, r9, r61				# 34838
	lw		r61, 0(r29)				# 34902
	fadd	r61, r61, r9				# 34891
	sw		r61, 0(r29)				# 34891
	lw		r61, 1(r29)				# 34933
	fadd	r61, r61, r9				# 34922
	sw		r61, 1(r29)				# 34891
	lw		r61, 2(r29)				# 34964
	fadd	r9, r61, r9				# 34953
	sw		r9, 2(r29)				# 34953
	b		.b48068				# 34953
.b48465:
	addi	r9, r0, 0				# 26809
	addi	r9, r0, -1				# 34715
	swx		r9, r46, r13				# 34715
	cmpi	r46, 0
	beq		.b48068				# 34748
	b		.b48472
.b48456:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b48460:
	addi	r15, r15, 1				# 23162
	lwx		r9, r12, r15				# 23025
	cmpi	r9, -1
	beq		.b48416				# 23052
	b		.b48417
.b48416:
	addi	r9, r0, 1				# 23074
.b48463:
	sw		r47, 0(r39)				# 25478
	lli		r9, intersection_point.2572				# 1162
	sw		r27, 0(r9)				# 1162
	sw		r36, 1(r9)				# 1162
	sw		r33, 2(r9)				# 25478
	lli		r9, intersected_object_id.2575				# 25478
	sw		r53, 0(r9)				# 25478
	lli		r9, intsec_rectside.2566				# 25570
	sw		r1, 0(r9)				# 25570
	b		.b48409				# 25570
.b48454:
	cmpi	r9, 0
	beq		.b48458				# 22625
.b48459:
	addi	r9, r0, 0				# 22625
	b		.b48460				# 23092
.b48458:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b48409				# 25421
.b48451:
	addi	r9, r0, 0				# 3188
	cmpi	r17, 0
	beq		.b48454				# 765
	b		.b48455
.b48448:
	fsub	r9, r9, r19				# 22604
	lw		r17, 6(r56)				# 3372
	fcmp	r28, r9
	ble		.b48451				# 3188
	b		.b48452
.b48445:
	cmpi	r17, 3
	beq		.b48448				# 22583
	b		.b48449
.b48432:
	lw		r17, 4(r56)				# 4293
	lw		r9, 0(r17)				# 2037
	fmul	r9, r9, r2				# 2037
	lw		r42, 1(r17)				# 2052
	fmul	r42, r42, r35				# 2037
	fadd	r9, r9, r42				# 2037
	lw		r17, 2(r17)				# 2067
	fmul	r17, r17, r44				# 2037
	fadd	r9, r9, r17				# 22411
	lw		r17, 6(r56)				# 3372
	fcmp	r28, r9
	ble		.b48435				# 3188
.b48436:
	addi	r9, r0, 1				# 3188
	cmpi	r17, 0
	beq		.b48438				# 765
.b48439:
	cmpi	r9, 0
	beq		.b48440				# 775
.b48441:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b48409				# 25421
.b48440:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b48460				# 23092
.b48438:
	cmpi	r9, 0
	beq		.b48442				# 22459
.b48443:
	addi	r9, r0, 0				# 22459
	b		.b48460				# 23092
.b48442:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b48409				# 25421
.b48435:
	addi	r9, r0, 0				# 3188
	cmpi	r17, 0
	beq		.b48438				# 765
	b		.b48439
.b48419:
	fabs	r17, r2				# 322
	lw		r42, 4(r56)				# 3734
	lw		r9, 0(r42)				# 22178
	fcmp	r9, r17
	ble		.b48422				# 3098
.b48423:
	fabs	r9, r35				# 322
	lw		r17, 1(r42)				# 22224
	fcmp	r17, r9
	ble		.b48424				# 3098
.b48425:
	fabs	r17, r44				# 322
	lw		r9, 2(r42)				# 22261
	fcmp	r9, r17
	ble		.b48426				# 3098
.b48427:
	addi	r9, r0, 1				# 3098
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48460				# 23092
.b48461:
	addi	r9, r0, 0				# 23141
	b		.b48409				# 25421
.b48426:
	addi	r9, r0, 0				# 3098
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48430				# 22348
.b48431:
	addi	r9, r0, 0				# 22348
	b		.b48460				# 23092
.b48430:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b48409				# 25421
.b48424:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48430				# 22348
	b		.b48431
.b48422:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48430				# 22348
	b		.b48431
.b48403:
	fneg	r9, r9				# 3025
	b		.b48402				# 3025
.b48400:
	addi	r1, r0, 0				# 15535
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48318				# 25732
.b48408:
	addi	r61, r61, 1				# 25769
	lwx		r53, r12, r61				# 25005
	cmpi	r53, -1
	beq		.b48318				# 25042
	b		.b48321
.b48398:
	fsub	r9, r9, r19				# 15303
	b		.b48397				# 15303
.b48395:
	cmpi	r42, 3
	beq		.b48398				# 15282
	b		.b48399
.b48392:
	b		.b48391				# 14803
.b48389:
	addi	r1, r0, 0				# 15111
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48318				# 25732
	b		.b48408
.b48387:
	fcmp	r15, r28
	beq		.b48389				# 3128
	b		.b48390
.b48382:
	lw		r9, 4(r56)				# 4293
	lw		r15, 0(r57)				# 1949
	lw		r42, 0(r9)				# 1949
	fmul	r17, r15, r42				# 1949
	lw		r15, 1(r57)				# 1967
	lw		r33, 1(r9)				# 1967
	fmul	r15, r15, r33				# 1949
	fadd	r17, r17, r15				# 1949
	lw		r15, 2(r57)				# 1985
	lw		r9, 2(r9)				# 1985
	fmul	r15, r15, r9				# 1949
	fadd	r17, r17, r15				# 14187
	fcmp	r17, r28
	ble		.b48384				# 3158
.b48385:
	fmul	r15, r42, r1				# 2037
	fmul	r33, r33, r36				# 2037
	fadd	r15, r15, r33				# 2037
	fmul	r9, r9, r27				# 2037
	fadd	r9, r15, r9				# 14262
	fneg	r9, r9				# 14262
	fdiv	r9, r9, r17				# 14243
	sw		r9, 0(r50)				# 14243
	addi	r1, r0, 1				# 14302
	lw		r9, 0(r50)				# 25149
	fcmp	r9, r28
	ble		.b48409				# 3098
	b		.b48411
.b48384:
	addi	r1, r0, 0				# 14314
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48318				# 25732
	b		.b48408
.b48323:
	lw		r17, 0(r57)				# 13452
	fcmp	r17, r28
	beq		.b48326				# 3128
.b48327:
	lw		r42, 4(r56)				# 4293
	lw		r15, 6(r56)				# 3372
	fcmp	r28, r17
	ble		.b48329				# 3188
.b48330:
	addi	r9, r0, 1				# 3188
	cmpi	r15, 0
	beq		.b48332				# 765
.b48333:
	cmpi	r9, 0
	beq		.b48334				# 775
.b48335:
	addi	r9, r0, 0				# 775
	lw		r15, 0(r42)				# 13527
	fneg	r15, r15				# 3025
.b48336:
	fsub	r9, r15, r1				# 13603
	fdiv	r33, r9, r17				# 13594
	lw		r9, 1(r57)				# 13649
	fmul	r9, r33, r9				# 13649
	fadd	r9, r9, r36				# 13643
	fabs	r15, r9				# 322
	lw		r9, 1(r42)				# 13636
	fcmp	r9, r15
	ble		.b48339				# 3098
.b48340:
	lw		r9, 2(r57)				# 13709
	fmul	r9, r33, r9				# 13709
	fadd	r9, r9, r27				# 13703
	fabs	r9, r9				# 322
	lw		r15, 2(r42)				# 13696
	fcmp	r15, r9
	ble		.b48341				# 3098
.b48342:
	sw		r33, 0(r50)				# 13756
	addi	r9, r0, 1				# 13779
	addi	r1, r0, 1				# 13917
	lw		r9, 0(r50)				# 25149
	fcmp	r9, r28
	ble		.b48409				# 3098
	b		.b48411
.b48341:
	addi	r9, r0, 0				# 13794
	lw		r33, 1(r57)				# 13452
	fcmp	r33, r28
	beq		.b48346				# 3128
.b48347:
	lw		r42, 4(r56)				# 4293
	lw		r15, 6(r56)				# 3372
	fcmp	r28, r33
	ble		.b48349				# 3188
.b48350:
	addi	r9, r0, 1				# 3188
	cmpi	r15, 0
	beq		.b48352				# 765
.b48353:
	cmpi	r9, 0
	beq		.b48354				# 775
.b48355:
	addi	r9, r0, 0				# 775
	lw		r15, 1(r42)				# 13527
	fneg	r15, r15				# 3025
.b48356:
	fsub	r9, r15, r36				# 13603
	fdiv	r15, r9, r33				# 13594
	lw		r9, 2(r57)				# 13649
	fmul	r9, r15, r9				# 13649
	fadd	r9, r9, r27				# 13643
	fabs	r9, r9				# 322
	lw		r47, 2(r42)				# 13636
	fcmp	r47, r9
	ble		.b48359				# 3098
.b48360:
	fmul	r9, r15, r17				# 13709
	fadd	r9, r9, r1				# 13703
	fabs	r9, r9				# 322
	lw		r42, 0(r42)				# 13696
	fcmp	r42, r9
	ble		.b48361				# 3098
.b48362:
	sw		r15, 0(r50)				# 13756
	addi	r9, r0, 1				# 13779
	addi	r1, r0, 2				# 13980
	lw		r9, 0(r50)				# 25149
	fcmp	r9, r28
	ble		.b48409				# 3098
	b		.b48411
.b48361:
	addi	r9, r0, 0				# 13794
	lw		r42, 2(r57)				# 13452
	fcmp	r42, r28
	beq		.b48365				# 3128
.b48366:
	lw		r47, 4(r56)				# 4293
	lw		r9, 6(r56)				# 3372
	fcmp	r28, r42
	ble		.b48368				# 3188
.b48369:
	addi	r15, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48371				# 765
.b48372:
	cmpi	r15, 0
	beq		.b48373				# 775
.b48374:
	addi	r15, r0, 0				# 775
	lw		r9, 2(r47)				# 13527
	fneg	r9, r9				# 3025
.b48375:
	fsub	r9, r9, r27				# 13603
	fdiv	r15, r9, r42				# 13594
	fmul	r9, r15, r17				# 13649
	fadd	r9, r9, r1				# 13643
	fabs	r9, r9				# 322
	lw		r17, 0(r47)				# 13636
	fcmp	r17, r9
	ble		.b48378				# 3098
.b48379:
	fmul	r9, r15, r33				# 13709
	fadd	r9, r9, r36				# 13703
	fabs	r17, r9				# 322
	lw		r9, 1(r47)				# 13696
	fcmp	r9, r17
	ble		.b48380				# 3098
.b48381:
	sw		r15, 0(r50)				# 13756
	addi	r1, r0, 3				# 14043
	lw		r9, 0(r50)				# 25149
	fcmp	r9, r28
	ble		.b48409				# 3098
	b		.b48411
.b48380:
	addi	r1, r0, 0				# 14107
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48318				# 25732
	b		.b48408
.b48378:
	addi	r1, r0, 0				# 14107
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48318				# 25732
	b		.b48408
.b48373:
	addi	r15, r0, 1				# 775
	lw		r9, 2(r47)				# 13527
	b		.b48375				# 918
.b48371:
	lw		r9, 2(r47)				# 13527
	cmpi	r15, 0
	beq		.b48376				# 905
.b48377:
	b		.b48375				# 918
.b48376:
	fneg	r9, r9				# 3025
	b		.b48375				# 3025
.b48368:
	addi	r15, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48371				# 765
	b		.b48372
.b48365:
	addi	r1, r0, 0				# 14107
	lw		r9, 6(r56)				# 3372
	cmpi	r9, 0
	beq		.b48318				# 25732
	b		.b48408
.b48359:
	addi	r9, r0, 0				# 13807
	lw		r42, 2(r57)				# 13452
	fcmp	r42, r28
	beq		.b48365				# 3128
	b		.b48366
.b48354:
	addi	r9, r0, 1				# 775
	lw		r15, 1(r42)				# 13527
	b		.b48356				# 918
.b48352:
	lw		r15, 1(r42)				# 13527
	cmpi	r9, 0
	beq		.b48357				# 905
.b48358:
	b		.b48356				# 918
.b48357:
	fneg	r15, r15				# 3025
	b		.b48356				# 3025
.b48349:
	addi	r9, r0, 0				# 3188
	cmpi	r15, 0
	beq		.b48352				# 765
	b		.b48353
.b48346:
	addi	r9, r0, 0				# 13477
	lw		r42, 2(r57)				# 13452
	fcmp	r42, r28
	beq		.b48365				# 3128
	b		.b48366
.b48339:
	addi	r9, r0, 0				# 13807
	lw		r33, 1(r57)				# 13452
	fcmp	r33, r28
	beq		.b48346				# 3128
	b		.b48347
.b48334:
	addi	r9, r0, 1				# 775
	lw		r15, 0(r42)				# 13527
	b		.b48336				# 918
.b48332:
	lw		r15, 0(r42)				# 13527
	cmpi	r9, 0
	beq		.b48337				# 905
.b48338:
	b		.b48336				# 918
.b48337:
	fneg	r15, r15				# 3025
	b		.b48336				# 3025
.b48329:
	addi	r9, r0, 0				# 3188
	cmpi	r15, 0
	beq		.b48332				# 765
	b		.b48333
.b48326:
	addi	r9, r0, 0				# 13477
	lw		r33, 1(r57)				# 13452
	fcmp	r33, r28
	beq		.b48346				# 3128
	b		.b48347
.b48309:
	fneg	r61, r61				# 3025
	b		.b48308				# 3025
.b48306:
	addi	r9, r0, 0				# 15535
	b		.b48076				# 26416
.b48304:
	fsub	r61, r61, r19				# 15303
	b		.b48303				# 15303
.b48301:
	cmpi	r33, 3
	beq		.b48304				# 15282
	b		.b48305
.b48298:
	b		.b48297				# 14803
.b48295:
	addi	r9, r0, 0				# 15111
	b		.b48076				# 26416
.b48293:
	fcmp	r9, r28
	beq		.b48295				# 3128
	b		.b48296
.b48288:
	lw		r9, 4(r53)				# 4293
	lw		r61, 0(r57)				# 1949
	lw		r30, 0(r9)				# 1949
	fmul	r61, r61, r30				# 1949
	lw		r15, 1(r57)				# 1967
	lw		r53, 1(r9)				# 1967
	fmul	r15, r15, r53				# 1949
	fadd	r61, r61, r15				# 1949
	lw		r33, 2(r57)				# 1985
	lw		r15, 2(r9)				# 1985
	fmul	r9, r33, r15				# 1949
	fadd	r33, r61, r9				# 14187
	fcmp	r33, r28
	ble		.b48290				# 3158
.b48291:
	fmul	r61, r30, r50				# 2037
	fmul	r9, r53, r17				# 2037
	fadd	r9, r61, r9				# 2037
	fmul	r61, r15, r12				# 2037
	fadd	r9, r9, r61				# 14262
	fneg	r9, r9				# 14262
	fdiv	r9, r9, r33				# 14243
	lli		r61, solver_dist.2563				# 14243
	sw		r9, 0(r61)				# 14243
	addi	r9, r0, 1				# 14302
	b		.b48312				# 26416
.b48290:
	addi	r9, r0, 0				# 14314
	b		.b48076				# 26416
.b48229:
	lw		r30, 0(r57)				# 13452
	fcmp	r30, r28
	beq		.b48232				# 3128
.b48233:
	lw		r15, 4(r53)				# 4293
	lw		r9, 6(r53)				# 3372
	fcmp	r28, r30
	ble		.b48235				# 3188
.b48236:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48238				# 765
.b48239:
	cmpi	r61, 0
	beq		.b48240				# 775
.b48241:
	addi	r61, r0, 0				# 775
	lw		r9, 0(r15)				# 13527
	fneg	r9, r9				# 3025
.b48242:
	fsub	r9, r9, r50				# 13603
	fdiv	r33, r9, r30				# 13594
	lw		r9, 1(r57)				# 13649
	fmul	r9, r33, r9				# 13649
	fadd	r9, r9, r17				# 13643
	fabs	r61, r9				# 322
	lw		r9, 1(r15)				# 13636
	fcmp	r9, r61
	ble		.b48245				# 3098
.b48246:
	lw		r9, 2(r57)				# 13709
	fmul	r9, r33, r9				# 13709
	fadd	r9, r9, r12				# 13703
	fabs	r9, r9				# 322
	lw		r61, 2(r15)				# 13696
	fcmp	r61, r9
	ble		.b48247				# 3098
.b48248:
	lli		r9, solver_dist.2563				# 13756
	sw		r33, 0(r9)				# 13756
	addi	r9, r0, 1				# 13779
	addi	r9, r0, 1				# 13917
	b		.b48312				# 26416
.b48247:
	addi	r9, r0, 0				# 13794
	lw		r15, 1(r57)				# 13452
	fcmp	r15, r28
	beq		.b48252				# 3128
.b48253:
	lw		r42, 4(r53)				# 4293
	lw		r61, 6(r53)				# 3372
	fcmp	r28, r15
	ble		.b48255				# 3188
.b48256:
	addi	r9, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b48258				# 765
.b48259:
	cmpi	r9, 0
	beq		.b48260				# 775
.b48261:
	addi	r9, r0, 0				# 775
	lw		r61, 1(r42)				# 13527
	fneg	r61, r61				# 3025
.b48262:
	fsub	r9, r61, r17				# 13603
	fdiv	r61, r9, r15				# 13594
	lw		r9, 2(r57)				# 13649
	fmul	r9, r61, r9				# 13649
	fadd	r9, r9, r12				# 13643
	fabs	r9, r9				# 322
	lw		r33, 2(r42)				# 13636
	fcmp	r33, r9
	ble		.b48265				# 3098
.b48266:
	fmul	r9, r61, r30				# 13709
	fadd	r9, r9, r50				# 13703
	fabs	r33, r9				# 322
	lw		r9, 0(r42)				# 13696
	fcmp	r9, r33
	ble		.b48267				# 3098
.b48268:
	lli		r9, solver_dist.2563				# 13756
	sw		r61, 0(r9)				# 13756
	addi	r9, r0, 1				# 13779
	addi	r9, r0, 2				# 13980
	b		.b48312				# 26416
.b48267:
	addi	r9, r0, 0				# 13794
	lw		r42, 2(r57)				# 13452
	fcmp	r42, r28
	beq		.b48271				# 3128
.b48272:
	lw		r33, 4(r53)				# 4293
	lw		r9, 6(r53)				# 3372
	fcmp	r28, r42
	ble		.b48274				# 3188
.b48275:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48277				# 765
.b48278:
	cmpi	r61, 0
	beq		.b48279				# 775
.b48280:
	addi	r61, r0, 0				# 775
	lw		r9, 2(r33)				# 13527
	fneg	r9, r9				# 3025
.b48281:
	fsub	r9, r9, r12				# 13603
	fdiv	r12, r9, r42				# 13594
	fmul	r9, r12, r30				# 13649
	fadd	r9, r9, r50				# 13643
	fabs	r9, r9				# 322
	lw		r61, 0(r33)				# 13636
	fcmp	r61, r9
	ble		.b48284				# 3098
.b48285:
	fmul	r9, r12, r15				# 13709
	fadd	r9, r9, r17				# 13703
	fabs	r61, r9				# 322
	lw		r9, 1(r33)				# 13696
	fcmp	r9, r61
	ble		.b48286				# 3098
.b48287:
	lli		r9, solver_dist.2563				# 13756
	sw		r12, 0(r9)				# 13756
	addi	r9, r0, 3				# 14043
	b		.b48312				# 26416
.b48286:
	addi	r9, r0, 0				# 14107
	b		.b48076				# 26416
.b48284:
	addi	r9, r0, 0				# 14107
	b		.b48076				# 26416
.b48279:
	addi	r61, r0, 1				# 775
	lw		r9, 2(r33)				# 13527
	b		.b48281				# 918
.b48277:
	lw		r9, 2(r33)				# 13527
	cmpi	r61, 0
	beq		.b48282				# 905
.b48283:
	b		.b48281				# 918
.b48282:
	fneg	r9, r9				# 3025
	b		.b48281				# 3025
.b48274:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48277				# 765
	b		.b48278
.b48271:
	addi	r9, r0, 0				# 14107
	b		.b48076				# 26416
.b48265:
	addi	r9, r0, 0				# 13807
	lw		r42, 2(r57)				# 13452
	fcmp	r42, r28
	beq		.b48271				# 3128
	b		.b48272
.b48260:
	addi	r9, r0, 1				# 775
	lw		r61, 1(r42)				# 13527
	b		.b48262				# 918
.b48258:
	lw		r61, 1(r42)				# 13527
	cmpi	r9, 0
	beq		.b48263				# 905
.b48264:
	b		.b48262				# 918
.b48263:
	fneg	r61, r61				# 3025
	b		.b48262				# 3025
.b48255:
	addi	r9, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b48258				# 765
	b		.b48259
.b48252:
	addi	r9, r0, 0				# 13477
	lw		r42, 2(r57)				# 13452
	fcmp	r42, r28
	beq		.b48271				# 3128
	b		.b48272
.b48245:
	addi	r9, r0, 0				# 13807
	lw		r15, 1(r57)				# 13452
	fcmp	r15, r28
	beq		.b48252				# 3128
	b		.b48253
.b48240:
	addi	r61, r0, 1				# 775
	lw		r9, 0(r15)				# 13527
	b		.b48242				# 918
.b48238:
	lw		r9, 0(r15)				# 13527
	cmpi	r61, 0
	beq		.b48243				# 905
.b48244:
	b		.b48242				# 918
.b48243:
	fneg	r9, r9				# 3025
	b		.b48242				# 3025
.b48235:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48238				# 765
	b		.b48239
.b48232:
	addi	r9, r0, 0				# 13477
	lw		r15, 1(r57)				# 13452
	fcmp	r15, r28
	beq		.b48252				# 3128
	b		.b48253
.b48077:
	addi	r30, r0, 1				# 25897
	lwx		r61, r7, r30				# 25897
	cmpi	r61, -1
	beq		.b48076				# 25928
.b48081:
	lli		r9, and_net.2554				# 25953
	lwx		r37, r9, r61				# 25953
	addi	r61, r0, 0				# 25005
	lwx		r17, r37, r61				# 25005
	cmpi	r17, -1
	beq		.b48082				# 25042
.b48085:
	lli		r14, objects.2536				# 15582
	lwx		r42, r14, r17				# 15582
	lw		r53, 0(r48)				# 15621
	lw		r15, 5(r42)				# 4475
	lw		r9, 0(r15)				# 15621
	fsub	r1, r53, r9				# 15611
	lw		r50, 1(r48)				# 15659
	lw		r9, 1(r15)				# 15659
	fsub	r56, r50, r9				# 15649
	lw		r12, 2(r48)				# 15697
	lw		r9, 2(r15)				# 15697
	fsub	r33, r12, r9				# 15687
	lw		r27, 1(r42)				# 2994
	cmpi	r27, 1
	beq		.b48087				# 15753
.b48088:
	cmpi	r27, 2
	beq		.b48146				# 15817
.b48147:
	lw		r59, 0(r57)				# 15037
	lw		r36, 1(r57)				# 15037
	lw		r47, 2(r57)				# 15037
	fmul	r9, r59, r59				# 14374
	lw		r25, 4(r42)				# 3734
	lw		r2, 0(r25)				# 14374
	fmul	r15, r9, r2				# 14374
	fmul	r9, r36, r36				# 14400
	lw		r44, 1(r25)				# 14400
	fmul	r9, r9, r44				# 14374
	fadd	r9, r15, r9				# 14374
	fmul	r15, r47, r47				# 14426
	lw		r20, 2(r25)				# 14426
	fmul	r15, r15, r20				# 14374
	fadd	r15, r9, r15				# 14354
	lw		r35, 3(r42)				# 3553
	cmpi	r35, 0
	beq		.b48151				# 14456
.b48152:
	fmul	r25, r36, r47				# 14522
	lw		r41, 9(r42)				# 5989
	lw		r9, 0(r41)				# 14522
	fmul	r9, r25, r9				# 14503
	fadd	r25, r15, r9				# 14503
	fmul	r9, r47, r59				# 14556
	lw		r15, 1(r41)				# 14556
	fmul	r9, r9, r15				# 14503
	fadd	r15, r25, r9				# 14503
	fmul	r9, r59, r36				# 14590
	lw		r25, 2(r41)				# 14590
	fmul	r9, r9, r25				# 14503
	fadd	r15, r15, r9				# 14503
	fcmp	r15, r28
	beq		.b48153				# 3128
.b48154:
	fmul	r9, r59, r1				# 14680
	fmul	r25, r9, r2				# 14680
	fmul	r9, r36, r56				# 14713
	fmul	r9, r9, r44				# 14680
	fadd	r25, r25, r9				# 14680
	fmul	r9, r47, r33				# 14746
	fmul	r9, r9, r20				# 14680
	fadd	r25, r25, r9				# 14660
	cmpi	r35, 0
	beq		.b48156				# 14777
.b48157:
	fmul	r41, r47, r56				# 14851
	fmul	r9, r36, r33				# 14851
	fadd	r41, r41, r9				# 14850
	lw		r9, 9(r42)				# 5989
	lw		r38, 0(r9)				# 14850
	fmul	r38, r41, r38				# 14850
	fmul	r41, r59, r33				# 14895
	fmul	r47, r47, r1				# 14895
	fadd	r41, r41, r47				# 14894
	lw		r47, 1(r9)				# 14894
	fmul	r41, r41, r47				# 14850
	fadd	r47, r38, r41				# 14850
	fmul	r59, r59, r56				# 14939
	fmul	r41, r36, r1				# 14939
	fadd	r41, r59, r41				# 14938
	lw		r9, 2(r9)				# 14938
	fmul	r9, r41, r9				# 14850
	fadd	r9, r47, r9				# 14837
	addis	r41, r0, 16384				# 2996
	fdiv	r9, r9, r41				# 14824
	fadd	r25, r25, r9				# 14824
.b48155:
	fmul	r9, r1, r1				# 14374
	fmul	r41, r9, r2				# 14374
	fmul	r9, r56, r56				# 14400
	fmul	r9, r9, r44				# 14374
	fadd	r9, r41, r9				# 14374
	fmul	r41, r33, r33				# 14426
	fmul	r41, r41, r20				# 14374
	fadd	r9, r9, r41				# 14354
	cmpi	r35, 0
	beq		.b48159				# 14456
.b48160:
	fmul	r36, r56, r33				# 14522
	lw		r41, 9(r42)				# 5989
	lw		r47, 0(r41)				# 14522
	fmul	r36, r36, r47				# 14503
	fadd	r36, r9, r36				# 14503
	fmul	r33, r33, r1				# 14556
	lw		r9, 1(r41)				# 14556
	fmul	r9, r33, r9				# 14503
	fadd	r33, r36, r9				# 14503
	fmul	r56, r1, r56				# 14590
	lw		r9, 2(r41)				# 14590
	fmul	r9, r56, r9				# 14503
	fadd	r9, r33, r9				# 14503
	cmpi	r27, 3
	beq		.b48162				# 15282
.b48163:
.b48161:
	fmul	r41, r25, r25				# 15338
	fmul	r9, r15, r9				# 15338
	fsub	r9, r41, r9				# 15330
	fcmp	r9, r28
	ble		.b48164				# 3158
.b48165:
	fsqrt	r9, r9				# 227
	lw		r41, 6(r42)				# 3372
	cmpi	r41, 0
	beq		.b48167				# 15425
.b48168:
.b48166:
	fsub	r9, r9, r25				# 15491
	fdiv	r15, r9, r15				# 15472
	lli		r9, solver_dist.2563				# 15472
	sw		r15, 0(r9)				# 15472
	addi	r33, r0, 1				# 15510
	lli		r9, solver_dist.2563				# 25149
	lw		r15, 0(r9)				# 25149
	fcmp	r15, r28
	ble		.b48173				# 3098
.b48175:
	lw		r9, 0(r39)				# 25216
	fcmp	r9, r15
	ble		.b48173				# 3098
.b48177:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 25260
	fadd	r42, r15, r9				# 25252
	lw		r9, 0(r57)				# 25289
	fmul	r9, r9, r42				# 25289
	fadd	r53, r9, r53				# 25280
	lw		r9, 1(r57)				# 25336
	fmul	r9, r9, r42				# 25336
	fadd	r56, r9, r50				# 25327
	lw		r9, 2(r57)				# 25383
	fmul	r9, r9, r42				# 25383
	fadd	r41, r9, r12				# 25374
	addi	r15, r0, 0				# 23025
	lwx		r9, r37, r15				# 23025
	cmpi	r9, -1
	beq		.b48180				# 23052
.b48181:
	lwx		r50, r14, r9				# 23095
	lw		r9, 5(r50)				# 4475
	lw		r25, 0(r9)				# 22709
	fsub	r1, r53, r25				# 22700
	lw		r25, 1(r9)				# 22741
	fsub	r47, r56, r25				# 22732
	lw		r9, 2(r9)				# 22773
	fsub	r27, r41, r9				# 22764
	lw		r59, 1(r50)				# 2994
	cmpi	r59, 1
	beq		.b48183				# 22824
.b48184:
	cmpi	r59, 2
	beq		.b48196				# 22882
.b48197:
	fmul	r9, r1, r1				# 14374
	lw		r12, 4(r50)				# 3734
	lw		r25, 0(r12)				# 14374
	fmul	r25, r9, r25				# 14374
	fmul	r36, r47, r47				# 14400
	lw		r9, 1(r12)				# 14400
	fmul	r9, r36, r9				# 14374
	fadd	r36, r25, r9				# 14374
	fmul	r25, r27, r27				# 14426
	lw		r9, 2(r12)				# 14426
	fmul	r9, r25, r9				# 14374
	fadd	r9, r36, r9				# 14354
	lw		r25, 3(r50)				# 3553
	cmpi	r25, 0
	beq		.b48209				# 14456
.b48210:
	fmul	r12, r47, r27				# 14522
	lw		r36, 9(r50)				# 5989
	lw		r25, 0(r36)				# 14522
	fmul	r25, r12, r25				# 14503
	fadd	r12, r9, r25				# 14503
	fmul	r25, r27, r1				# 14556
	lw		r9, 1(r36)				# 14556
	fmul	r9, r25, r9				# 14503
	fadd	r9, r12, r9				# 14503
	fmul	r12, r1, r47				# 14590
	lw		r25, 2(r36)				# 14590
	fmul	r25, r12, r25				# 14503
	fadd	r9, r9, r25				# 14503
	cmpi	r59, 3
	beq		.b48212				# 22583
.b48213:
	lw		r25, 6(r50)				# 3372
	fcmp	r28, r9
	ble		.b48215				# 3188
.b48216:
	addi	r9, r0, 1				# 3188
	cmpi	r25, 0
	beq		.b48218				# 765
.b48219:
	cmpi	r9, 0
	beq		.b48220				# 775
.b48221:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
.b48173:
	addi	r61, r61, 1				# 25658
	lwx		r17, r37, r61				# 25005
	cmpi	r17, -1
	beq		.b48082				# 25042
	b		.b48085
.b48082:
	addi	r30, r30, 1				# 26034
	lwx		r61, r7, r30				# 25897
	cmpi	r61, -1
	beq		.b48076				# 25928
	b		.b48081
.b48220:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22625
.b48224:
	addi	r15, r15, 1				# 23162
	lwx		r9, r37, r15				# 23025
	cmpi	r9, -1
	beq		.b48180				# 23052
	b		.b48181
.b48180:
	addi	r9, r0, 1				# 23074
.b48227:
	sw		r42, 0(r39)				# 25478
	lli		r9, intersection_point.2572				# 1162
	sw		r53, 0(r9)				# 1162
	sw		r56, 1(r9)				# 1162
	sw		r41, 2(r9)				# 25478
	lli		r9, intersected_object_id.2575				# 25478
	sw		r17, 0(r9)				# 25478
	lli		r9, intsec_rectside.2566				# 25570
	sw		r33, 0(r9)				# 25570
	b		.b48173				# 25570
.b48218:
	cmpi	r9, 0
	beq		.b48222				# 22625
.b48223:
	addi	r9, r0, 0				# 22625
	b		.b48224				# 23092
.b48222:
	addi	r9, r0, 1				# 22625
	addi	r9, r0, 0				# 23141
	b		.b48173				# 25421
.b48215:
	addi	r9, r0, 0				# 3188
	cmpi	r25, 0
	beq		.b48218				# 765
	b		.b48219
.b48212:
	fsub	r9, r9, r19				# 22604
	lw		r25, 6(r50)				# 3372
	fcmp	r28, r9
	ble		.b48215				# 3188
	b		.b48216
.b48209:
	cmpi	r59, 3
	beq		.b48212				# 22583
	b		.b48213
.b48196:
	lw		r12, 4(r50)				# 4293
	lw		r9, 0(r12)				# 2037
	fmul	r25, r9, r1				# 2037
	lw		r9, 1(r12)				# 2052
	fmul	r9, r9, r47				# 2037
	fadd	r25, r25, r9				# 2037
	lw		r9, 2(r12)				# 2067
	fmul	r9, r9, r27				# 2037
	fadd	r9, r25, r9				# 22411
	lw		r25, 6(r50)				# 3372
	fcmp	r28, r9
	ble		.b48199				# 3188
.b48200:
	addi	r9, r0, 1				# 3188
	cmpi	r25, 0
	beq		.b48202				# 765
.b48203:
	cmpi	r9, 0
	beq		.b48204				# 775
.b48205:
	addi	r9, r0, 0				# 775
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b48173				# 25421
.b48204:
	addi	r9, r0, 1				# 775
	addi	r9, r0, 0				# 22459
	b		.b48224				# 23092
.b48202:
	cmpi	r9, 0
	beq		.b48206				# 22459
.b48207:
	addi	r9, r0, 0				# 22459
	b		.b48224				# 23092
.b48206:
	addi	r9, r0, 1				# 22459
	addi	r9, r0, 0				# 23141
	b		.b48173				# 25421
.b48199:
	addi	r9, r0, 0				# 3188
	cmpi	r25, 0
	beq		.b48202				# 765
	b		.b48203
.b48183:
	fabs	r9, r1				# 322
	lw		r12, 4(r50)				# 3734
	lw		r25, 0(r12)				# 22178
	fcmp	r25, r9
	ble		.b48186				# 3098
.b48187:
	fabs	r25, r47				# 322
	lw		r9, 1(r12)				# 22224
	fcmp	r9, r25
	ble		.b48188				# 3098
.b48189:
	fabs	r25, r27				# 322
	lw		r9, 2(r12)				# 22261
	fcmp	r9, r25
	ble		.b48190				# 3098
.b48191:
	addi	r9, r0, 1				# 3098
	lw		r9, 6(r50)				# 3372
	cmpi	r9, 0
	beq		.b48224				# 23092
.b48225:
	addi	r9, r0, 0				# 23141
	b		.b48173				# 25421
.b48190:
	addi	r9, r0, 0				# 3098
	lw		r9, 6(r50)				# 3372
	cmpi	r9, 0
	beq		.b48194				# 22348
.b48195:
	addi	r9, r0, 0				# 22348
	b		.b48224				# 23092
.b48194:
	addi	r9, r0, 1				# 22348
	addi	r9, r0, 0				# 23141
	b		.b48173				# 25421
.b48188:
	addi	r9, r0, 0				# 22302
	lw		r9, 6(r50)				# 3372
	cmpi	r9, 0
	beq		.b48194				# 22348
	b		.b48195
.b48186:
	addi	r9, r0, 0				# 22317
	lw		r9, 6(r50)				# 3372
	cmpi	r9, 0
	beq		.b48194				# 22348
	b		.b48195
.b48167:
	fneg	r9, r9				# 3025
	b		.b48166				# 3025
.b48164:
	addi	r33, r0, 0				# 15535
	lw		r9, 6(r42)				# 3372
	cmpi	r9, 0
	beq		.b48082				# 25732
.b48172:
	addi	r61, r61, 1				# 25769
	lwx		r17, r37, r61				# 25005
	cmpi	r17, -1
	beq		.b48082				# 25042
	b		.b48085
.b48162:
	fsub	r9, r9, r19				# 15303
	b		.b48161				# 15303
.b48159:
	cmpi	r27, 3
	beq		.b48162				# 15282
	b		.b48163
.b48156:
	b		.b48155				# 14803
.b48153:
	addi	r33, r0, 0				# 15111
	lw		r9, 6(r42)				# 3372
	cmpi	r9, 0
	beq		.b48082				# 25732
	b		.b48172
.b48151:
	fcmp	r15, r28
	beq		.b48153				# 3128
	b		.b48154
.b48146:
	lw		r36, 4(r42)				# 4293
	lw		r9, 0(r57)				# 1949
	lw		r25, 0(r36)				# 1949
	fmul	r41, r9, r25				# 1949
	lw		r9, 1(r57)				# 1967
	lw		r15, 1(r36)				# 1967
	fmul	r9, r9, r15				# 1949
	fadd	r27, r41, r9				# 1949
	lw		r9, 2(r57)				# 1985
	lw		r41, 2(r36)				# 1985
	fmul	r9, r9, r41				# 1949
	fadd	r9, r27, r9				# 14187
	fcmp	r9, r28
	ble		.b48148				# 3158
.b48149:
	fmul	r25, r25, r1				# 2037
	fmul	r15, r15, r56				# 2037
	fadd	r25, r25, r15				# 2037
	fmul	r15, r41, r33				# 2037
	fadd	r15, r25, r15				# 14262
	fneg	r15, r15				# 14262
	fdiv	r9, r15, r9				# 14243
	lli		r15, solver_dist.2563				# 14243
	sw		r9, 0(r15)				# 14243
	addi	r33, r0, 1				# 14302
	lli		r9, solver_dist.2563				# 25149
	lw		r15, 0(r9)				# 25149
	fcmp	r15, r28
	ble		.b48173				# 3098
	b		.b48175
.b48148:
	addi	r33, r0, 0				# 14314
	lw		r9, 6(r42)				# 3372
	cmpi	r9, 0
	beq		.b48082				# 25732
	b		.b48172
.b48087:
	lw		r25, 0(r57)				# 13452
	fcmp	r25, r28
	beq		.b48090				# 3128
.b48091:
	lw		r41, 4(r42)				# 4293
	lw		r9, 6(r42)				# 3372
	fcmp	r28, r25
	ble		.b48093				# 3188
.b48094:
	addi	r15, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48096				# 765
.b48097:
	cmpi	r15, 0
	beq		.b48098				# 775
.b48099:
	addi	r15, r0, 0				# 775
	lw		r9, 0(r41)				# 13527
	fneg	r9, r9				# 3025
.b48100:
	fsub	r9, r9, r1				# 13603
	fdiv	r15, r9, r25				# 13594
	lw		r9, 1(r57)				# 13649
	fmul	r9, r15, r9				# 13649
	fadd	r9, r9, r56				# 13643
	fabs	r36, r9				# 322
	lw		r9, 1(r41)				# 13636
	fcmp	r9, r36
	ble		.b48103				# 3098
.b48104:
	lw		r9, 2(r57)				# 13709
	fmul	r9, r15, r9				# 13709
	fadd	r9, r9, r33				# 13703
	fabs	r36, r9				# 322
	lw		r9, 2(r41)				# 13696
	fcmp	r9, r36
	ble		.b48105				# 3098
.b48106:
	lli		r9, solver_dist.2563				# 13756
	sw		r15, 0(r9)				# 13756
	addi	r9, r0, 1				# 13779
.b48108:
	addi	r33, r0, 1				# 13917
	lli		r9, solver_dist.2563				# 25149
	lw		r15, 0(r9)				# 25149
	fcmp	r15, r28
	ble		.b48173				# 3098
	b		.b48175
.b48105:
	addi	r9, r0, 0				# 13794
	lw		r41, 1(r57)				# 13452
	fcmp	r41, r28
	beq		.b48110				# 3128
.b48111:
	lw		r36, 4(r42)				# 4293
	lw		r9, 6(r42)				# 3372
	fcmp	r28, r41
	ble		.b48113				# 3188
.b48114:
	addi	r15, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48116				# 765
.b48117:
	cmpi	r15, 0
	beq		.b48118				# 775
.b48119:
	addi	r15, r0, 0				# 775
	lw		r9, 1(r36)				# 13527
	fneg	r9, r9				# 3025
.b48120:
	fsub	r9, r9, r56				# 13603
	fdiv	r15, r9, r41				# 13594
	lw		r9, 2(r57)				# 13649
	fmul	r9, r15, r9				# 13649
	fadd	r9, r9, r33				# 13643
	fabs	r9, r9				# 322
	lw		r27, 2(r36)				# 13636
	fcmp	r27, r9
	ble		.b48123				# 3098
.b48124:
	fmul	r9, r15, r25				# 13709
	fadd	r9, r9, r1				# 13703
	fabs	r9, r9				# 322
	lw		r36, 0(r36)				# 13696
	fcmp	r36, r9
	ble		.b48125				# 3098
.b48126:
	lli		r9, solver_dist.2563				# 13756
	sw		r15, 0(r9)				# 13756
	addi	r9, r0, 1				# 13779
.b48128:
	addi	r33, r0, 2				# 13980
	lli		r9, solver_dist.2563				# 25149
	lw		r15, 0(r9)				# 25149
	fcmp	r15, r28
	ble		.b48173				# 3098
	b		.b48175
.b48125:
	addi	r9, r0, 0				# 13794
	lw		r36, 2(r57)				# 13452
	fcmp	r36, r28
	beq		.b48129				# 3128
.b48130:
	lw		r27, 4(r42)				# 4293
	lw		r9, 6(r42)				# 3372
	fcmp	r28, r36
	ble		.b48132				# 3188
.b48133:
	addi	r15, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b48135				# 765
.b48136:
	cmpi	r15, 0
	beq		.b48137				# 775
.b48138:
	addi	r15, r0, 0				# 775
	lw		r9, 2(r27)				# 13527
	fneg	r9, r9				# 3025
.b48139:
	fsub	r9, r9, r33				# 13603
	fdiv	r33, r9, r36				# 13594
	fmul	r9, r33, r25				# 13649
	fadd	r9, r9, r1				# 13643
	fabs	r9, r9				# 322
	lw		r15, 0(r27)				# 13636
	fcmp	r15, r9
	ble		.b48142				# 3098
.b48143:
	fmul	r9, r33, r41				# 13709
	fadd	r9, r9, r56				# 13703
	fabs	r9, r9				# 322
	lw		r15, 1(r27)				# 13696
	fcmp	r15, r9
	ble		.b48144				# 3098
.b48145:
	lli		r9, solver_dist.2563				# 13756
	sw		r33, 0(r9)				# 13756
	addi	r33, r0, 3				# 14043
	lli		r9, solver_dist.2563				# 25149
	lw		r15, 0(r9)				# 25149
	fcmp	r15, r28
	ble		.b48173				# 3098
	b		.b48175
.b48144:
	addi	r33, r0, 0				# 14107
	lw		r9, 6(r42)				# 3372
	cmpi	r9, 0
	beq		.b48082				# 25732
	b		.b48172
.b48142:
	addi	r33, r0, 0				# 14107
	lw		r9, 6(r42)				# 3372
	cmpi	r9, 0
	beq		.b48082				# 25732
	b		.b48172
.b48137:
	addi	r15, r0, 1				# 775
	lw		r9, 2(r27)				# 13527
	b		.b48139				# 918
.b48135:
	lw		r9, 2(r27)				# 13527
	cmpi	r15, 0
	beq		.b48140				# 905
.b48141:
	b		.b48139				# 918
.b48140:
	fneg	r9, r9				# 3025
	b		.b48139				# 3025
.b48132:
	addi	r15, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48135				# 765
	b		.b48136
.b48129:
	addi	r33, r0, 0				# 14107
	lw		r9, 6(r42)				# 3372
	cmpi	r9, 0
	beq		.b48082				# 25732
	b		.b48172
.b48123:
	addi	r9, r0, 0				# 13807
	lw		r36, 2(r57)				# 13452
	fcmp	r36, r28
	beq		.b48129				# 3128
	b		.b48130
.b48118:
	addi	r15, r0, 1				# 775
	lw		r9, 1(r36)				# 13527
	b		.b48120				# 918
.b48116:
	lw		r9, 1(r36)				# 13527
	cmpi	r15, 0
	beq		.b48121				# 905
.b48122:
	b		.b48120				# 918
.b48121:
	fneg	r9, r9				# 3025
	b		.b48120				# 3025
.b48113:
	addi	r15, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48116				# 765
	b		.b48117
.b48110:
	addi	r9, r0, 0				# 13477
	lw		r36, 2(r57)				# 13452
	fcmp	r36, r28
	beq		.b48129				# 3128
	b		.b48130
.b48103:
	addi	r9, r0, 0				# 13807
	lw		r41, 1(r57)				# 13452
	fcmp	r41, r28
	beq		.b48110				# 3128
	b		.b48111
.b48098:
	addi	r15, r0, 1				# 775
	lw		r9, 0(r41)				# 13527
	b		.b48100				# 918
.b48096:
	lw		r9, 0(r41)				# 13527
	cmpi	r15, 0
	beq		.b48101				# 905
.b48102:
	b		.b48100				# 918
.b48101:
	fneg	r9, r9				# 3025
	b		.b48100				# 3025
.b48093:
	addi	r15, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b48096				# 765
	b		.b48097
.b48090:
	addi	r9, r0, 0				# 13477
	lw		r41, 1(r57)				# 13452
	fcmp	r41, r28
	beq		.b48110				# 3128
	b		.b48111
.b48066:
	addis	r10, r0, 16256				# 1801
	b		.b48065				# 1801
	# main program start
_min_caml_start:
	addi	r37, r0, 1				# 154
	addi	r25, r0, 0				# 154
	lli		r7, n_objects.2525				# 138
	sw		r25, 0(r7)				# 154
	addi	r62, r0, 0				# 279
	mv		r9, r4
	addi	r4, r4, 0				# 267
	lli		r61, dummy.2528				# 267
	sw		r9, 0(r61)				# 267
	mv		r61, r4
	addi	r4, r4, 11				# 315
	sw		r25, 0(r61)				# 315
	sw		r25, 1(r61)				# 315
	sw		r25, 2(r61)				# 315
	sw		r25, 3(r61)				# 315
	sw		r9, 4(r61)				# 315
	sw		r9, 5(r61)				# 315
	sw		r25, 6(r61)				# 315
	sw		r9, 7(r61)				# 315
	sw		r9, 8(r61)				# 315
	sw		r9, 9(r61)				# 315
	sw		r9, 10(r61)				# 315
	lli		r9, Tt270.2535				# 301
	sw		r61, 0(r9)				# 301
	lli		r10, objects.2536				# 250
	addi	r9, r0, 0				# 301
.b49445:
	swx		r61, r9, r10				# 301
	addi	r9, r9, 1				# 301
	cmpi	r9, 59
	ble		.b49445				# 301
.b49443:
	lli		r51, screen.2539				# 410
	sw		r62, 0(r51)				# 423
	sw		r62, 1(r51)				# 423
	sw		r62, 2(r51)				# 423
	lli		r54, viewpoint.2542				# 465
	sw		r62, 0(r54)				# 481
	sw		r62, 1(r54)				# 481
	sw		r62, 2(r54)				# 481
	lli		r30, light.2545				# 553
	sw		r62, 0(r30)				# 565
	sw		r62, 1(r30)				# 565
	sw		r62, 2(r30)				# 565
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
.b49449:
	swx		r61, r9, r28				# 717
	addi	r9, r9, 1				# 717
	cmpi	r9, 49
	ble		.b49449				# 717
.b49447:
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
	sw		r62, 0(r9)				# 965
	lli		r9, intsec_rectside.2566				# 1028
	sw		r25, 0(r9)				# 1050
	addis	r9, r0, 20078
	ori		r9, r9, 27432				# 1118
	lli		r61, tmin.2569				# 1107
	sw		r9, 0(r61)				# 1118
	lli		r9, intersection_point.2572				# 1171
	sw		r62, 0(r9)				# 1196
	sw		r62, 1(r9)				# 1196
	sw		r62, 2(r9)				# 1196
	lli		r9, intersected_object_id.2575				# 1259
	sw		r25, 0(r9)				# 1287
	lli		r9, nvector.2578				# 1330
	sw		r62, 0(r9)				# 1344
	sw		r62, 1(r9)				# 1344
	sw		r62, 2(r9)				# 1344
	lli		r9, texture_color.2581				# 1383
	sw		r62, 0(r9)				# 1403
	sw		r62, 1(r9)				# 1403
	sw		r62, 2(r9)				# 1403
	lli		r9, diffuse_ray.2584				# 1470
	sw		r62, 0(r9)				# 1488
	sw		r62, 1(r9)				# 1488
	sw		r62, 2(r9)				# 1488
	lli		r9, rgb.2587				# 1551
	sw		r62, 0(r9)				# 1561
	sw		r62, 1(r9)				# 1561
	sw		r62, 2(r9)				# 1561
	addi	r23, r0, 2				# 1621
	lli		r26, image_size.2590				# 1604
	sw		r25, 0(r26)				# 1621
	sw		r25, 1(r26)				# 1621
	lli		r39, image_center.2593				# 1688
	sw		r25, 0(r39)				# 1707
	sw		r25, 1(r39)				# 1707
	lli		r46, scan_pitch.2596				# 1763
	sw		r62, 0(r46)				# 1780
	lli		r9, startp.2599				# 1850
	sw		r62, 0(r9)				# 1863
	sw		r62, 1(r9)				# 1863
	sw		r62, 2(r9)				# 1863
	lli		r9, startp_fast.2602				# 1937
	sw		r62, 0(r9)				# 1955
	sw		r62, 1(r9)				# 1955
	sw		r62, 2(r9)				# 1955
	lli		r15, screenx_dir.2605				# 2031
	sw		r62, 0(r15)				# 2049
	sw		r62, 1(r15)				# 2049
	sw		r62, 2(r15)				# 2049
	lli		r41, screeny_dir.2608				# 2069
	sw		r62, 0(r41)				# 2087
	sw		r62, 1(r41)				# 2087
	sw		r62, 2(r41)				# 2087
	lli		r57, screenz_dir.2611				# 2107
	sw		r62, 0(r57)				# 2125
	sw		r62, 1(r57)				# 2125
	sw		r62, 2(r57)				# 2125
	lli		r9, ptrace_dirvec.2614				# 2198
	sw		r62, 0(r9)				# 2219
	sw		r62, 1(r9)				# 2219
	sw		r62, 2(r9)				# 2219
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
	sw		r62, 0(r9)				# 2587
	sw		r62, 1(r9)				# 2587
	sw		r62, 2(r9)				# 2587
	lli		r61, consts.2632				# 2609
	addi	r9, r0, 0				# 2622
.b49453:
	swx		r28, r9, r61				# 2622
	addi	r9, r9, 1				# 2622
	cmpi	r9, 59
	ble		.b49453				# 2622
.b49451:
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
	sw		r25, 0(r61)				# 2848
	sw		r9, 1(r61)				# 2848
	sw		r62, 2(r61)				# 2848
	lli		r9, Tt342.2643				# 2833
	sw		r61, 0(r9)				# 2833
	lli		r28, reflections.2644				# 2697
	addi	r9, r0, 0				# 2833
.b49457:
	swx		r61, r9, r28				# 2833
	addi	r9, r9, 1				# 2833
	cmpi	r9, 179
	ble		.b49457				# 2833
.b49455:
	lli		r9, n_reflections.2647				# 2911
	sw		r25, 0(r9)				# 2931
	sw		r23, 0(r26)				# 46875
	sw		r23, 1(r26)				# 46875
	sw		r37, 0(r39)				# 46875
	sw		r37, 1(r39)				# 46875
	addis	r9, r0, 17152				# 47013
	itof	r61, r23				# 639
	fdiv	r9, r9, r61				# 46995
	sw		r9, 0(r46)				# 46875
	mv		r23, r4
	addi	r4, r4, 3				# 42355
	sw		r62, 0(r23)				# 42355
	sw		r62, 1(r23)				# 42355
	sw		r62, 2(r23)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r61, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r61)				# 42151
	sw		r9, 1(r61)				# 42151
	sw		r9, 2(r61)				# 42151
	sw		r9, 3(r61)				# 42151
	sw		r9, 4(r61)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r61)				# 42173
	mv		r48, r4
	addi	r4, r4, 5				# 42435
	sw		r25, 0(r48)				# 42435
	sw		r25, 1(r48)				# 42435
	sw		r25, 2(r48)				# 42435
	sw		r25, 3(r48)				# 42435
	sw		r25, 4(r48)				# 42435
	mv		r26, r4
	addi	r4, r4, 5				# 42468
	sw		r25, 0(r26)				# 42468
	sw		r25, 1(r26)				# 42468
	sw		r25, 2(r26)				# 42468
	sw		r25, 3(r26)				# 42468
	sw		r25, 4(r26)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r28, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r28)				# 42151
	sw		r9, 1(r28)				# 42151
	sw		r9, 2(r28)				# 42151
	sw		r9, 3(r28)				# 42151
	sw		r9, 4(r28)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r28)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r37, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r37)				# 42151
	sw		r9, 1(r37)				# 42151
	sw		r9, 2(r37)				# 42151
	sw		r9, 3(r37)				# 42151
	sw		r9, 4(r37)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r37)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r37)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r37)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r37)				# 42173
	mv		r39, r4
	addi	r4, r4, 1				# 42586
	sw		r25, 0(r39)				# 42586
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r46, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r46)				# 42151
	sw		r9, 1(r46)				# 42151
	sw		r9, 2(r46)				# 42151
	sw		r9, 3(r46)				# 42151
	sw		r9, 4(r46)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 8				# 42651
	sw		r23, 0(r9)				# 42651
	sw		r61, 1(r9)				# 42651
	sw		r48, 2(r9)				# 42651
	sw		r26, 3(r9)				# 42651
	sw		r28, 4(r9)				# 42651
	sw		r37, 5(r9)				# 42651
	sw		r39, 6(r9)				# 42651
	sw		r46, 7(r9)				# 42651
	mv		r39, r4
	addi	r4, r4, 2				# 42912
	sw		r9, 0(r39)				# 42912
	sw		r9, 1(r39)				# 42912
	sw		r39, 0(r3)				# 42901
	addi	r48, r0, 0				# 42764
.b49461:
	mv		r37, r4
	addi	r4, r4, 3				# 42355
	sw		r62, 0(r37)				# 42355
	sw		r62, 1(r37)				# 42355
	sw		r62, 2(r37)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r26, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r26)				# 42151
	sw		r9, 1(r26)				# 42151
	sw		r9, 2(r26)				# 42151
	sw		r9, 3(r26)				# 42151
	sw		r9, 4(r26)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r26)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r26)				# 42173
	mv		r28, r4
	addi	r4, r4, 5				# 42435
	sw		r25, 0(r28)				# 42435
	sw		r25, 1(r28)				# 42435
	sw		r25, 2(r28)				# 42435
	sw		r25, 3(r28)				# 42435
	sw		r25, 4(r28)				# 42435
	mv		r9, r4
	addi	r4, r4, 5				# 42468
	sw		r25, 0(r9)				# 42468
	sw		r25, 1(r9)				# 42468
	sw		r25, 2(r9)				# 42468
	sw		r25, 3(r9)				# 42468
	sw		r25, 4(r9)				# 42468
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r61)				# 42117
	sw		r62, 1(r61)				# 42117
	sw		r62, 2(r61)				# 42117
	mv		r19, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r19)				# 42151
	sw		r61, 1(r19)				# 42151
	sw		r61, 2(r19)				# 42151
	sw		r61, 3(r19)				# 42151
	sw		r61, 4(r19)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r61)				# 42186
	sw		r62, 1(r61)				# 42186
	sw		r62, 2(r61)				# 42186
	sw		r61, 1(r19)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r61)				# 42219
	sw		r62, 1(r61)				# 42219
	sw		r62, 2(r61)				# 42219
	sw		r61, 2(r19)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r61)				# 42252
	sw		r62, 1(r61)				# 42252
	sw		r62, 2(r61)				# 42252
	sw		r61, 3(r19)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r61)				# 42285
	sw		r62, 1(r61)				# 42285
	sw		r62, 2(r61)				# 42285
	sw		r61, 4(r19)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r61)				# 42117
	sw		r62, 1(r61)				# 42117
	sw		r62, 2(r61)				# 42117
	mv		r46, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r46)				# 42151
	sw		r61, 1(r46)				# 42151
	sw		r61, 2(r46)				# 42151
	sw		r61, 3(r46)				# 42151
	sw		r61, 4(r46)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r61)				# 42186
	sw		r62, 1(r61)				# 42186
	sw		r62, 2(r61)				# 42186
	sw		r61, 1(r46)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r61)				# 42219
	sw		r62, 1(r61)				# 42219
	sw		r62, 2(r61)				# 42219
	sw		r61, 2(r46)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r61)				# 42252
	sw		r62, 1(r61)				# 42252
	sw		r62, 2(r61)				# 42252
	sw		r61, 3(r46)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r61)				# 42285
	sw		r62, 1(r61)				# 42285
	sw		r62, 2(r61)				# 42285
	sw		r61, 4(r46)				# 42173
	mv		r23, r4
	addi	r4, r4, 1				# 42586
	sw		r25, 0(r23)				# 42586
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r61)				# 42117
	sw		r62, 1(r61)				# 42117
	sw		r62, 2(r61)				# 42117
	mv		r29, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r29)				# 42151
	sw		r61, 1(r29)				# 42151
	sw		r61, 2(r29)				# 42151
	sw		r61, 3(r29)				# 42151
	sw		r61, 4(r29)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r61)				# 42186
	sw		r62, 1(r61)				# 42186
	sw		r62, 2(r61)				# 42186
	sw		r61, 1(r29)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r61)				# 42219
	sw		r62, 1(r61)				# 42219
	sw		r62, 2(r61)				# 42219
	sw		r61, 2(r29)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r61)				# 42252
	sw		r62, 1(r61)				# 42252
	sw		r62, 2(r61)				# 42252
	sw		r61, 3(r29)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r61)				# 42285
	sw		r62, 1(r61)				# 42285
	sw		r62, 2(r61)				# 42285
	sw		r61, 4(r29)				# 42173
	mv		r61, r4
	addi	r4, r4, 8				# 42651
	sw		r37, 0(r61)				# 42651
	sw		r26, 1(r61)				# 42651
	sw		r28, 2(r61)				# 42651
	sw		r9, 3(r61)				# 42651
	sw		r19, 4(r61)				# 42651
	sw		r46, 5(r61)				# 42651
	sw		r23, 6(r61)				# 42651
	sw		r29, 7(r61)				# 42651
	swx		r61, r48, r39				# 42785
	addi	r48, r48, -1				# 42817
	cmpi	r48, 0
	bge		.b49461				# 42764
.b49459:
	mv		r26, r4
	addi	r4, r4, 3				# 42355
	sw		r62, 0(r26)				# 42355
	sw		r62, 1(r26)				# 42355
	sw		r62, 2(r26)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r46, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r46)				# 42151
	sw		r9, 1(r46)				# 42151
	sw		r9, 2(r46)				# 42151
	sw		r9, 3(r46)				# 42151
	sw		r9, 4(r46)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r46)				# 42173
	mv		r48, r4
	addi	r4, r4, 5				# 42435
	sw		r25, 0(r48)				# 42435
	sw		r25, 1(r48)				# 42435
	sw		r25, 2(r48)				# 42435
	sw		r25, 3(r48)				# 42435
	sw		r25, 4(r48)				# 42435
	mv		r39, r4
	addi	r4, r4, 5				# 42468
	sw		r25, 0(r39)				# 42468
	sw		r25, 1(r39)				# 42468
	sw		r25, 2(r39)				# 42468
	sw		r25, 3(r39)				# 42468
	sw		r25, 4(r39)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r23, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r23)				# 42151
	sw		r9, 1(r23)				# 42151
	sw		r9, 2(r23)				# 42151
	sw		r9, 3(r23)				# 42151
	sw		r9, 4(r23)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r37, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r37)				# 42151
	sw		r9, 1(r37)				# 42151
	sw		r9, 2(r37)				# 42151
	sw		r9, 3(r37)				# 42151
	sw		r9, 4(r37)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r37)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r37)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r37)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r37)				# 42173
	mv		r9, r4
	addi	r4, r4, 1				# 42586
	sw		r25, 0(r9)				# 42586
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r61)				# 42117
	sw		r62, 1(r61)				# 42117
	sw		r62, 2(r61)				# 42117
	mv		r28, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r28)				# 42151
	sw		r61, 1(r28)				# 42151
	sw		r61, 2(r28)				# 42151
	sw		r61, 3(r28)				# 42151
	sw		r61, 4(r28)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r61)				# 42186
	sw		r62, 1(r61)				# 42186
	sw		r62, 2(r61)				# 42186
	sw		r61, 1(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r61)				# 42219
	sw		r62, 1(r61)				# 42219
	sw		r62, 2(r61)				# 42219
	sw		r61, 2(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r61)				# 42252
	sw		r62, 1(r61)				# 42252
	sw		r62, 2(r61)				# 42252
	sw		r61, 3(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r61)				# 42285
	sw		r62, 1(r61)				# 42285
	sw		r62, 2(r61)				# 42285
	sw		r61, 4(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 8				# 42651
	sw		r26, 0(r61)				# 42651
	sw		r46, 1(r61)				# 42651
	sw		r48, 2(r61)				# 42651
	sw		r39, 3(r61)				# 42651
	sw		r23, 4(r61)				# 42651
	sw		r37, 5(r61)				# 42651
	sw		r9, 6(r61)				# 42651
	sw		r28, 7(r61)				# 42651
	mv		r9, r4
	addi	r4, r4, 2				# 42912
	sw		r61, 0(r9)				# 42912
	sw		r61, 1(r9)				# 42912
	sw		r9, -1(r3)				# 42901
	addi	r61, r0, 0				# 42764
.b49465:
	mv		r48, r4
	addi	r4, r4, 3				# 42355
	sw		r62, 0(r48)				# 42355
	sw		r62, 1(r48)				# 42355
	sw		r62, 2(r48)				# 42355
	mv		r28, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r28)				# 42117
	sw		r62, 1(r28)				# 42117
	sw		r62, 2(r28)				# 42117
	mv		r23, r4
	addi	r4, r4, 5				# 42151
	sw		r28, 0(r23)				# 42151
	sw		r28, 1(r23)				# 42151
	sw		r28, 2(r23)				# 42151
	sw		r28, 3(r23)				# 42151
	sw		r28, 4(r23)				# 42151
	mv		r28, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r28)				# 42186
	sw		r62, 1(r28)				# 42186
	sw		r62, 2(r28)				# 42186
	sw		r28, 1(r23)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r28)				# 42219
	sw		r62, 1(r28)				# 42219
	sw		r62, 2(r28)				# 42219
	sw		r28, 2(r23)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r28)				# 42252
	sw		r62, 1(r28)				# 42252
	sw		r62, 2(r28)				# 42252
	sw		r28, 3(r23)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r28)				# 42285
	sw		r62, 1(r28)				# 42285
	sw		r62, 2(r28)				# 42285
	sw		r28, 4(r23)				# 42173
	mv		r46, r4
	addi	r4, r4, 5				# 42435
	sw		r25, 0(r46)				# 42435
	sw		r25, 1(r46)				# 42435
	sw		r25, 2(r46)				# 42435
	sw		r25, 3(r46)				# 42435
	sw		r25, 4(r46)				# 42435
	mv		r37, r4
	addi	r4, r4, 5				# 42468
	sw		r25, 0(r37)				# 42468
	sw		r25, 1(r37)				# 42468
	sw		r25, 2(r37)				# 42468
	sw		r25, 3(r37)				# 42468
	sw		r25, 4(r37)				# 42468
	mv		r28, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r28)				# 42117
	sw		r62, 1(r28)				# 42117
	sw		r62, 2(r28)				# 42117
	mv		r19, r4
	addi	r4, r4, 5				# 42151
	sw		r28, 0(r19)				# 42151
	sw		r28, 1(r19)				# 42151
	sw		r28, 2(r19)				# 42151
	sw		r28, 3(r19)				# 42151
	sw		r28, 4(r19)				# 42151
	mv		r28, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r28)				# 42186
	sw		r62, 1(r28)				# 42186
	sw		r62, 2(r28)				# 42186
	sw		r28, 1(r19)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r28)				# 42219
	sw		r62, 1(r28)				# 42219
	sw		r62, 2(r28)				# 42219
	sw		r28, 2(r19)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r28)				# 42252
	sw		r62, 1(r28)				# 42252
	sw		r62, 2(r28)				# 42252
	sw		r28, 3(r19)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r28)				# 42285
	sw		r62, 1(r28)				# 42285
	sw		r62, 2(r28)				# 42285
	sw		r28, 4(r19)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r28)				# 42117
	sw		r62, 1(r28)				# 42117
	sw		r62, 2(r28)				# 42117
	mv		r29, r4
	addi	r4, r4, 5				# 42151
	sw		r28, 0(r29)				# 42151
	sw		r28, 1(r29)				# 42151
	sw		r28, 2(r29)				# 42151
	sw		r28, 3(r29)				# 42151
	sw		r28, 4(r29)				# 42151
	mv		r28, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r28)				# 42186
	sw		r62, 1(r28)				# 42186
	sw		r62, 2(r28)				# 42186
	sw		r28, 1(r29)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r28)				# 42219
	sw		r62, 1(r28)				# 42219
	sw		r62, 2(r28)				# 42219
	sw		r28, 2(r29)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r28)				# 42252
	sw		r62, 1(r28)				# 42252
	sw		r62, 2(r28)				# 42252
	sw		r28, 3(r29)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r28)				# 42285
	sw		r62, 1(r28)				# 42285
	sw		r62, 2(r28)				# 42285
	sw		r28, 4(r29)				# 42173
	mv		r26, r4
	addi	r4, r4, 1				# 42586
	sw		r25, 0(r26)				# 42586
	mv		r28, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r28)				# 42117
	sw		r62, 1(r28)				# 42117
	sw		r62, 2(r28)				# 42117
	mv		r39, r4
	addi	r4, r4, 5				# 42151
	sw		r28, 0(r39)				# 42151
	sw		r28, 1(r39)				# 42151
	sw		r28, 2(r39)				# 42151
	sw		r28, 3(r39)				# 42151
	sw		r28, 4(r39)				# 42151
	mv		r28, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r28)				# 42186
	sw		r62, 1(r28)				# 42186
	sw		r62, 2(r28)				# 42186
	sw		r28, 1(r39)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r28)				# 42219
	sw		r62, 1(r28)				# 42219
	sw		r62, 2(r28)				# 42219
	sw		r28, 2(r39)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r28)				# 42252
	sw		r62, 1(r28)				# 42252
	sw		r62, 2(r28)				# 42252
	sw		r28, 3(r39)				# 42173
	mv		r28, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r28)				# 42285
	sw		r62, 1(r28)				# 42285
	sw		r62, 2(r28)				# 42285
	sw		r28, 4(r39)				# 42173
	mv		r28, r4
	addi	r4, r4, 8				# 42651
	sw		r48, 0(r28)				# 42651
	sw		r23, 1(r28)				# 42651
	sw		r46, 2(r28)				# 42651
	sw		r37, 3(r28)				# 42651
	sw		r19, 4(r28)				# 42651
	sw		r29, 5(r28)				# 42651
	sw		r26, 6(r28)				# 42651
	sw		r39, 7(r28)				# 42651
	swx		r28, r61, r9				# 42785
	addi	r61, r61, -1				# 42817
	cmpi	r61, 0
	bge		.b49465				# 42764
.b49463:
	mv		r26, r4
	addi	r4, r4, 3				# 42355
	sw		r62, 0(r26)				# 42355
	sw		r62, 1(r26)				# 42355
	sw		r62, 2(r26)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r23, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r23)				# 42151
	sw		r9, 1(r23)				# 42151
	sw		r9, 2(r23)				# 42151
	sw		r9, 3(r23)				# 42151
	sw		r9, 4(r23)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r23)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r23)				# 42173
	mv		r48, r4
	addi	r4, r4, 5				# 42435
	sw		r25, 0(r48)				# 42435
	sw		r25, 1(r48)				# 42435
	sw		r25, 2(r48)				# 42435
	sw		r25, 3(r48)				# 42435
	sw		r25, 4(r48)				# 42435
	mv		r9, r4
	addi	r4, r4, 5				# 42468
	sw		r25, 0(r9)				# 42468
	sw		r25, 1(r9)				# 42468
	sw		r25, 2(r9)				# 42468
	sw		r25, 3(r9)				# 42468
	sw		r25, 4(r9)				# 42468
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r61)				# 42117
	sw		r62, 1(r61)				# 42117
	sw		r62, 2(r61)				# 42117
	mv		r28, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r28)				# 42151
	sw		r61, 1(r28)				# 42151
	sw		r61, 2(r28)				# 42151
	sw		r61, 3(r28)				# 42151
	sw		r61, 4(r28)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r61)				# 42186
	sw		r62, 1(r61)				# 42186
	sw		r62, 2(r61)				# 42186
	sw		r61, 1(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r61)				# 42219
	sw		r62, 1(r61)				# 42219
	sw		r62, 2(r61)				# 42219
	sw		r61, 2(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r61)				# 42252
	sw		r62, 1(r61)				# 42252
	sw		r62, 2(r61)				# 42252
	sw		r61, 3(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r61)				# 42285
	sw		r62, 1(r61)				# 42285
	sw		r62, 2(r61)				# 42285
	sw		r61, 4(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r61)				# 42117
	sw		r62, 1(r61)				# 42117
	sw		r62, 2(r61)				# 42117
	mv		r37, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r37)				# 42151
	sw		r61, 1(r37)				# 42151
	sw		r61, 2(r37)				# 42151
	sw		r61, 3(r37)				# 42151
	sw		r61, 4(r37)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r61)				# 42186
	sw		r62, 1(r61)				# 42186
	sw		r62, 2(r61)				# 42186
	sw		r61, 1(r37)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r61)				# 42219
	sw		r62, 1(r61)				# 42219
	sw		r62, 2(r61)				# 42219
	sw		r61, 2(r37)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r61)				# 42252
	sw		r62, 1(r61)				# 42252
	sw		r62, 2(r61)				# 42252
	sw		r61, 3(r37)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r61)				# 42285
	sw		r62, 1(r61)				# 42285
	sw		r62, 2(r61)				# 42285
	sw		r61, 4(r37)				# 42173
	mv		r46, r4
	addi	r4, r4, 1				# 42586
	sw		r25, 0(r46)				# 42586
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r61)				# 42117
	sw		r62, 1(r61)				# 42117
	sw		r62, 2(r61)				# 42117
	mv		r39, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r39)				# 42151
	sw		r61, 1(r39)				# 42151
	sw		r61, 2(r39)				# 42151
	sw		r61, 3(r39)				# 42151
	sw		r61, 4(r39)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r61)				# 42186
	sw		r62, 1(r61)				# 42186
	sw		r62, 2(r61)				# 42186
	sw		r61, 1(r39)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r61)				# 42219
	sw		r62, 1(r61)				# 42219
	sw		r62, 2(r61)				# 42219
	sw		r61, 2(r39)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r61)				# 42252
	sw		r62, 1(r61)				# 42252
	sw		r62, 2(r61)				# 42252
	sw		r61, 3(r39)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r61)				# 42285
	sw		r62, 1(r61)				# 42285
	sw		r62, 2(r61)				# 42285
	sw		r61, 4(r39)				# 42173
	mv		r61, r4
	addi	r4, r4, 8				# 42651
	sw		r26, 0(r61)				# 42651
	sw		r23, 1(r61)				# 42651
	sw		r48, 2(r61)				# 42651
	sw		r9, 3(r61)				# 42651
	sw		r28, 4(r61)				# 42651
	sw		r37, 5(r61)				# 42651
	sw		r46, 6(r61)				# 42651
	sw		r39, 7(r61)				# 42651
	mv		r23, r4
	addi	r4, r4, 2				# 42912
	sw		r61, 0(r23)				# 42912
	sw		r61, 1(r23)				# 42912
	sw		r23, -2(r3)				# 42901
	addi	r26, r0, 0				# 42764
.b49469:
	mv		r19, r4
	addi	r4, r4, 3				# 42355
	sw		r62, 0(r19)				# 42355
	sw		r62, 1(r19)				# 42355
	sw		r62, 2(r19)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r48, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r48)				# 42151
	sw		r9, 1(r48)				# 42151
	sw		r9, 2(r48)				# 42151
	sw		r9, 3(r48)				# 42151
	sw		r9, 4(r48)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r48)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r48)				# 42173
	mv		r39, r4
	addi	r4, r4, 5				# 42435
	sw		r25, 0(r39)				# 42435
	sw		r25, 1(r39)				# 42435
	sw		r25, 2(r39)				# 42435
	sw		r25, 3(r39)				# 42435
	sw		r25, 4(r39)				# 42435
	mv		r37, r4
	addi	r4, r4, 5				# 42468
	sw		r25, 0(r37)				# 42468
	sw		r25, 1(r37)				# 42468
	sw		r25, 2(r37)				# 42468
	sw		r25, 3(r37)				# 42468
	sw		r25, 4(r37)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r61, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r61)				# 42151
	sw		r9, 1(r61)				# 42151
	sw		r9, 2(r61)				# 42151
	sw		r9, 3(r61)				# 42151
	sw		r9, 4(r61)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r46, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r46)				# 42151
	sw		r9, 1(r46)				# 42151
	sw		r9, 2(r46)				# 42151
	sw		r9, 3(r46)				# 42151
	sw		r9, 4(r46)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r46)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r46)				# 42173
	mv		r28, r4
	addi	r4, r4, 1				# 42586
	sw		r25, 0(r28)				# 42586
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r62, 0(r9)				# 42117
	sw		r62, 1(r9)				# 42117
	sw		r62, 2(r9)				# 42117
	mv		r29, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r29)				# 42151
	sw		r9, 1(r29)				# 42151
	sw		r9, 2(r29)				# 42151
	sw		r9, 3(r29)				# 42151
	sw		r9, 4(r29)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r62, 0(r9)				# 42186
	sw		r62, 1(r9)				# 42186
	sw		r62, 2(r9)				# 42186
	sw		r9, 1(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r62, 0(r9)				# 42219
	sw		r62, 1(r9)				# 42219
	sw		r62, 2(r9)				# 42219
	sw		r9, 2(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r62, 0(r9)				# 42252
	sw		r62, 1(r9)				# 42252
	sw		r62, 2(r9)				# 42252
	sw		r9, 3(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r62, 0(r9)				# 42285
	sw		r62, 1(r9)				# 42285
	sw		r62, 2(r9)				# 42285
	sw		r9, 4(r29)				# 42173
	mv		r9, r4
	addi	r4, r4, 8				# 42651
	sw		r19, 0(r9)				# 42651
	sw		r48, 1(r9)				# 42651
	sw		r39, 2(r9)				# 42651
	sw		r37, 3(r9)				# 42651
	sw		r61, 4(r9)				# 42651
	sw		r46, 5(r9)				# 42651
	sw		r28, 6(r9)				# 42651
	sw		r29, 7(r9)				# 42651
	swx		r9, r26, r23				# 42785
	addi	r26, r26, -1				# 42817
	cmpi	r26, 0
	bge		.b49469				# 42764
.b49467:
	in		r19				# 1610
	sw		r19, 0(r51)				# 8471
	in		r23				# 1610
	sw		r23, 1(r51)				# 8471
	in		r25				# 1610
	sw		r25, 2(r51)				# 8471
	in		r9				# 1610
	addis	r37, r0, 15502
	ori		r37, r37, 64053				# 8414
	fmul	r9, r9, r37				# 8565
	fcos	r61, r9				# 133
	fsin	r46, r9				# 40
	in		r9				# 1610
	fmul	r9, r9, r37				# 8649
	fcos	r28, r9				# 133
	fsin	r48, r9				# 40
	fmul	r51, r61, r48				# 8753
	addis	r9, r0, 17224				# 8753
	fmul	r51, r51, r9				# 8734
	sw		r51, 0(r57)				# 8734
	addis	r26, r0, 49992				# 8801
	fmul	r26, r46, r26				# 8782
	sw		r26, 1(r57)				# 8734
	fmul	r39, r61, r28				# 8840
	fmul	r39, r39, r9				# 8821
	sw		r39, 2(r57)				# 8734
	sw		r28, 0(r15)				# 8734
	sw		r62, 1(r15)				# 8734
	fneg	r9, r48				# 8925
	sw		r9, 2(r15)				# 8734
	fneg	r15, r46				# 8979
	fmul	r9, r15, r48				# 8960
	sw		r9, 0(r41)				# 8734
	fneg	r9, r61				# 9004
	sw		r9, 1(r41)				# 8734
	fmul	r9, r15, r28				# 9038
	sw		r9, 2(r41)				# 8734
	fsub	r9, r19, r51				# 9083
	sw		r9, 0(r54)				# 8734
	fsub	r9, r23, r26				# 9133
	sw		r9, 1(r54)				# 8734
	fsub	r9, r25, r39				# 9183
	sw		r9, 2(r54)				# 13259
	in		r9				# 1683
	in		r9				# 1610
	fmul	r9, r9, r37				# 9289
	fsin	r61, r9				# 40
	fneg	r61, r61				# 9345
	sw		r61, -3(r3)				# 9345
	sw		r61, 1(r30)				# 9345
	in		r61				# 1610
	fmul	r28, r61, r37				# 9370
	fcos	r61, r9				# 133
	fsin	r9, r28				# 40
	fmul	r9, r61, r9				# 9448
	sw		r9, -4(r3)				# 9448
	sw		r9, 0(r30)				# 9448
	fcos	r9, r28				# 133
	fmul	r9, r61, r9				# 9497
	sw		r9, -5(r3)				# 9497
	sw		r9, 2(r30)				# 9497
	in		r9				# 1610
	sw		r9, 0(r13)				# 13259
	addi	r61, r0, 0				# 12512
	in		r57				# 1683
	cmpi	r57, -1
	beq		.b49475				# 10718
.b49476:
	in		r23				# 1683
	in		r26				# 1683
	in		r46				# 1683
	mv		r30, r4
	addi	r4, r4, 3				# 10866
	sw		r62, 0(r30)				# 10866
	sw		r62, 1(r30)				# 10866
	sw		r62, 2(r30)				# 10866
	in		r9				# 1610
	sw		r9, 0(r30)				# 10892
	in		r9				# 1610
	sw		r9, 1(r30)				# 10892
	in		r9				# 1610
	sw		r9, 2(r30)				# 10892
	mv		r41, r4
	addi	r4, r4, 3				# 11007
	sw		r62, 0(r41)				# 11007
	sw		r62, 1(r41)				# 11007
	sw		r62, 2(r41)				# 11007
	in		r9				# 1610
	sw		r9, 0(r41)				# 11033
	in		r9				# 1610
	sw		r9, 1(r41)				# 11033
	in		r9				# 1610
	sw		r9, 2(r41)				# 11033
	in		r9				# 1610
	fcmp	r62, r9
	ble		.b49478				# 3188
.b49479:
	addi	r15, r0, 1				# 3188
.b49477:
	mv		r54, r4
	addi	r4, r4, 2				# 11203
	sw		r62, 0(r54)				# 11203
	sw		r62, 1(r54)				# 11203
	in		r9				# 1610
	sw		r9, 0(r54)				# 11229
	in		r9				# 1610
	sw		r9, 1(r54)				# 11229
	mv		r13, r4
	addi	r4, r4, 3				# 11346
	sw		r62, 0(r13)				# 11346
	sw		r62, 1(r13)				# 11346
	sw		r62, 2(r13)				# 11346
	in		r9				# 1610
	sw		r9, 0(r13)				# 11372
	in		r9				# 1610
	sw		r9, 1(r13)				# 11372
	in		r9				# 1610
	sw		r9, 2(r13)				# 11372
	mv		r25, r4
	addi	r4, r4, 3				# 11499
	sw		r62, 0(r25)				# 11499
	sw		r62, 1(r25)				# 11499
	sw		r62, 2(r25)				# 11499
	cmpi	r46, 0
	beq		.b49480				# 11525
.b49482:
	in		r9				# 1610
	fmul	r9, r9, r37				# 11551
	sw		r9, 0(r25)				# 11551
	in		r9				# 1610
	fmul	r9, r9, r37				# 11590
	sw		r9, 1(r25)				# 11551
	in		r9				# 1610
	fmul	r9, r9, r37				# 11629
	sw		r9, 2(r25)				# 11629
	cmpi	r23, 2
	beq		.b49484				# 11706
.b49485:
	mv		r28, r15				# 11733
.b49483:
	mv		r51, r4
	addi	r4, r4, 4				# 11762
	sw		r62, 0(r51)				# 11762
	sw		r62, 1(r51)				# 11762
	sw		r62, 2(r51)				# 11762
	sw		r62, 3(r51)				# 11762
	mv		r9, r4
	addi	r4, r4, 11				# 11799
	sw		r57, 0(r9)				# 11799
	sw		r23, 1(r9)				# 11799
	sw		r26, 2(r9)				# 11799
	sw		r46, 3(r9)				# 11799
	sw		r30, 4(r9)				# 11799
	sw		r41, 5(r9)				# 11799
	sw		r28, 6(r9)				# 11799
	sw		r54, 7(r9)				# 11799
	sw		r13, 8(r9)				# 11799
	sw		r25, 9(r9)				# 11799
	sw		r51, 10(r9)				# 11799
	swx		r9, r61, r10				# 12004
	cmpi	r23, 3
	beq		.b49487				# 12031
.b49488:
	cmpi	r23, 2
	beq		.b49513				# 12300
.b49486:
	cmpi	r46, 0
	beq		.b49523				# 12371
.b49525:
	lw		r9, 0(r25)				# 9611
	fcos	r13, r9				# 133
	lw		r9, 0(r25)				# 9640
	fsin	r39, r9				# 40
	lw		r9, 1(r25)				# 9669
	fcos	r54, r9				# 133
	lw		r9, 1(r25)				# 9698
	fsin	r9, r9				# 40
	lw		r28, 2(r25)				# 9727
	fcos	r23, r28				# 133
	lw		r28, 2(r25)				# 9756
	fsin	r28, r28				# 40
	fmul	r46, r54, r23				# 9774
	fmul	r57, r39, r9				# 9814
	fmul	r15, r57, r23				# 9814
	fmul	r51, r13, r28				# 9814
	fsub	r15, r15, r51				# 9804
	fmul	r41, r13, r9				# 9871
	fmul	r51, r41, r23				# 9871
	fmul	r26, r39, r28				# 9871
	fadd	r26, r51, r26				# 9861
	fmul	r19, r54, r28				# 9919
	fmul	r51, r57, r28				# 9959
	fmul	r57, r13, r23				# 9959
	fadd	r57, r51, r57				# 9949
	fmul	r28, r41, r28				# 10016
	fmul	r51, r39, r23				# 10016
	fsub	r48, r28, r51				# 10006
	fneg	r51, r9				# 10064
	fmul	r23, r39, r54				# 10090
	fmul	r39, r13, r54				# 10120
	lw		r13, 0(r30)				# 10151
	lw		r54, 1(r30)				# 10173
	lw		r41, 2(r30)				# 10195
	fmul	r9, r46, r46				# 10229
	fmul	r28, r13, r9				# 10229
	fmul	r9, r19, r19				# 10247
	fmul	r9, r54, r9				# 10229
	fadd	r28, r28, r9				# 10229
	fmul	r9, r51, r51				# 10265
	fmul	r9, r41, r9				# 10229
	fadd	r9, r28, r9				# 10218
	sw		r9, 0(r30)				# 10218
	fmul	r9, r15, r15				# 10294
	fmul	r28, r13, r9				# 10294
	fmul	r9, r57, r57				# 10312
	fmul	r9, r54, r9				# 10294
	fadd	r28, r28, r9				# 10294
	fmul	r9, r23, r23				# 10330
	fmul	r9, r41, r9				# 10294
	fadd	r9, r28, r9				# 10283
	sw		r9, 1(r30)				# 10218
	fmul	r9, r26, r26				# 10359
	fmul	r9, r13, r9				# 10359
	fmul	r28, r48, r48				# 10377
	fmul	r28, r54, r28				# 10359
	fadd	r28, r9, r28				# 10359
	fmul	r9, r39, r39				# 10395
	fmul	r9, r41, r9				# 10359
	fadd	r9, r28, r9				# 10348
	sw		r9, 2(r30)				# 10218
	addis	r29, r0, 16384				# 10425
	fmul	r9, r13, r15				# 10433
	fmul	r28, r9, r26				# 10433
	fmul	r9, r54, r57				# 10453
	fmul	r9, r9, r48				# 10433
	fadd	r28, r28, r9				# 10433
	fmul	r9, r41, r23				# 10473
	fmul	r9, r9, r39				# 10433
	fadd	r9, r28, r9				# 10425
	fmul	r9, r29, r9				# 10414
	sw		r9, 0(r25)				# 10218
	fmul	r13, r13, r46				# 10513
	fmul	r30, r13, r26				# 10513
	fmul	r28, r54, r19				# 10533
	fmul	r9, r28, r48				# 10513
	fadd	r54, r30, r9				# 10513
	fmul	r51, r41, r51				# 10553
	fmul	r9, r51, r39				# 10513
	fadd	r9, r54, r9				# 10505
	fmul	r9, r29, r9				# 10494
	sw		r9, 1(r25)				# 10218
	fmul	r9, r13, r15				# 10593
	fmul	r28, r28, r57				# 10593
	fadd	r28, r9, r28				# 10593
	fmul	r9, r51, r23				# 10593
	fadd	r9, r28, r9				# 10585
	fmul	r9, r29, r9				# 10574
	sw		r9, 2(r25)				# 10574
	addi	r61, r61, 1				# 12563
	cmpi	r61, 60
	bge		.b49471				# 12512
.b49474:
	in		r57				# 1683
	cmpi	r57, -1
	beq		.b49475				# 10718
	b		.b49476
.b49475:
	sw		r61, 0(r7)				# 12598
	addi	r9, r0, 0				# 13110
T.loop49527:
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
	beq		.b49526				# 13131
.b49529:
	lli		r9, and_net.2554				# 13168
	lw		r61, -6(r3)				# 13168
	swx		r2, r61, r9				# 13168
	addi	r9, r61, 1				# 13192
	b		T.loop49527				# 13192
.b49526:
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
	addi	r62, r0, 10				# 39179
	out		r62				# 946
	addi	r9, r0, 48				# 1493
	out		r9				# 946
	addi	r28, r0, 2				# 1184
	addi	r9, r0, 9				# 1002
	mul16i	r61, r9, 10				# 993
	sub		r61, r28, r61				# 1014
	cmpi	r61, 0
	bge		.b49532				# 1034
.b49533:
	addi	r9, r9, -1				# 1109
	mul16i	r61, r9, 10				# 993
	sub		r61, r28, r61				# 1014
	cmpi	r61, 0
	bge		.b49532				# 1034
	b		.b49533
.b49532:
	addi	r9, r9, 48				# 1055
	out		r9				# 946
	addi	r9, r61, 48				# 1080
	out		r9				# 946
.b49530:
	addi	r15, r0, 32				# 39228
	out		r15				# 946
	addi	r9, r0, 48				# 1493
	out		r9				# 946
	addi	r61, r0, 2				# 1184
	addi	r9, r0, 9				# 1002
	mul16i	r28, r9, 10				# 993
	sub		r28, r61, r28				# 1014
	cmpi	r28, 0
	bge		.b49536				# 1034
.b49537:
	addi	r9, r9, -1				# 1109
	mul16i	r28, r9, 10				# 993
	sub		r28, r61, r28				# 1014
	cmpi	r28, 0
	bge		.b49536				# 1034
	b		.b49537
.b49536:
	addi	r9, r9, 48				# 1055
	out		r9				# 946
	addi	r9, r28, 48				# 1080
	out		r9				# 946
.b49534:
	out		r15				# 946
	addi	r9, r0, 50				# 946
	out		r9				# 946
	addi	r28, r0, 55				# 1184
	addi	r9, r0, 9				# 1002
	mul16i	r61, r9, 10				# 993
	sub		r61, r28, r61				# 1014
	cmpi	r61, 0
	bge		.b49540				# 1034
.b49541:
	addi	r9, r9, -1				# 1109
	mul16i	r61, r9, 10				# 993
	sub		r61, r28, r61				# 1014
	cmpi	r61, 0
	bge		.b49540				# 1034
	b		.b49541
.b49540:
	addi	r9, r9, 48				# 1055
	out		r9				# 946
	addi	r9, r61, 48				# 1080
	out		r9				# 946
	out		r62				# 946
	addi	r28, r0, 4				# 44862
.b49544:
	mv		r62, r4
	addi	r4, r4, 3				# 44588
	addi	r54, r0, 0				# 44588
	sw		r54, 0(r62)				# 44588
	sw		r54, 1(r62)				# 44588
	sw		r54, 2(r62)				# 44588
	lli		r9, n_objects.2525				# 44623
	lw		r51, 0(r9)				# 44623
	mv		r9, r4
	add		r4, r4, r51				# 44623
	addi	r15, r51, -1				# 44623
	addi	r61, r0, 0				# 44623
	cmp		r61, r15
	ble		.b49548				# 44623
.b49546:
	mv		r61, r4
	addi	r4, r4, 2				# 44656
	sw		r62, 0(r61)				# 44656
	sw		r9, 1(r61)				# 44656
	mv		r15, r4
	addi	r4, r4, 120				# 44906
	addi	r9, r0, 0				# 44906
.b49552:
	swx		r61, r9, r15				# 44906
	addi	r9, r9, 1				# 44906
	cmpi	r9, 119
	ble		.b49552				# 44906
.b49550:
	lli		r9, dirvecs.2624				# 44887
	swx		r15, r28, r9				# 44887
	addi	r62, r0, 118				# 44716
.b49556:
	mv		r61, r4
	addi	r4, r4, 3				# 44588
	sw		r54, 0(r61)				# 44588
	sw		r54, 1(r61)				# 44588
	sw		r54, 2(r61)				# 44588
	mv		r10, r4
	add		r4, r4, r51				# 44623
	addi	r13, r51, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r13
	ble		.b49560				# 44623
.b49558:
	mv		r9, r4
	addi	r4, r4, 2				# 44656
	sw		r61, 0(r9)				# 44656
	sw		r10, 1(r9)				# 44656
	swx		r9, r62, r15				# 44741
	addi	r62, r62, -1				# 44775
	cmpi	r62, 0
	bge		.b49556				# 44716
.b49554:
	addi	r28, r28, -1				# 44992
	cmpi	r28, 0
	bge		.b49544				# 44862
.b49542:
	addi	r54, r0, 9				# 44363
	addi	r28, r0, 0				# 44363
	addi	r61, r0, 0				# 44363
.b49564:
	itof	r9, r54				# 639
	addis	r41, r0, 15948
	ori		r41, r41, 52429				# 44395
	fmul	r9, r9, r41				# 44395
	addis	r25, r0, 16230
	ori		r25, r25, 26214				# 44395
	fsub	r30, r9, r25				# 44386
	addi	r10, r0, 4				# 43977
	mv		r62, r28				# 43977
.b49568:
	itof	r9, r10				# 639
	fmul	r26, r9, r41				# 44029
	fsub	r46, r26, r25				# 44020
	addi	r15, r0, 0				# 44069
	addi	r9, r0, 0				# 43281
	mv		r13, r15				# 43281
	mv		r51, r15				# 43281
.b49573:
	fmul	r51, r51, r51				# 43095
	addis	r7, r0, 15820
	ori		r7, r7, 52429				# 43095
	fadd	r51, r51, r7				# 43090
	fsqrt	r13, r51				# 227
	addis	r37, r0, 16256				# 43125
	fdiv	r51, r37, r13				# 43113
	fatan	r51, r51				# 440
	fmul	r51, r51, r46				# 43182
	fsin	r57, r51				# 40
	fcos	r51, r51				# 133
	fdiv	r51, r57, r51				# 43170
	fmul	r13, r51, r13				# 43816
	addi	r9, r9, 1				# 43853
	fmul	r51, r13, r13				# 43095
	fadd	r51, r51, r7				# 43090
	fsqrt	r57, r51				# 227
	fdiv	r51, r37, r57				# 43113
	fatan	r51, r51				# 440
	fmul	r51, r51, r30				# 43182
	fsin	r7, r51				# 40
	fcos	r51, r51				# 133
	fdiv	r51, r7, r51				# 43170
	fmul	r51, r51, r57				# 43853
	cmpi	r9, 5
	bge		.b49572				# 43281
	b		.b49573
.b49572:
	fmul	r9, r13, r13				# 43320
	fmul	r7, r51, r51				# 43320
	fadd	r7, r9, r7				# 43320
	addis	r9, r0, 16256				# 43320
	fadd	r7, r7, r9				# 43315
	fsqrt	r37, r7				# 227
	fdiv	r57, r13, r37				# 43352
	fdiv	r7, r51, r37				# 43375
	fdiv	r51, r9, r37				# 43398
	lli		r9, dirvecs.2624				# 43424
	lwx		r37, r9, r62				# 43424
	lwx		r9, r37, r61				# 43471
	lw		r9, 0(r9)				# 8078
	sw		r57, 0(r9)				# 1162
	sw		r7, 1(r9)				# 1162
	sw		r51, 2(r9)				# 43463
	addi	r9, r61, 40				# 43524
	lwx		r9, r37, r9				# 43518
	lw		r9, 0(r9)				# 8078
	fneg	r13, r7				# 43510
	sw		r57, 0(r9)				# 1162
	sw		r51, 1(r9)				# 1162
	sw		r13, 2(r9)				# 43463
	addi	r9, r61, 80				# 43578
	lwx		r9, r37, r9				# 43572
	lw		r9, 0(r9)				# 8078
	fneg	r46, r57				# 43564
	sw		r51, 0(r9)				# 1162
	sw		r46, 1(r9)				# 1162
	sw		r13, 2(r9)				# 43463
	addi	r9, r61, 1				# 43639
	lwx		r9, r37, r9				# 43633
	lw		r9, 0(r9)				# 8078
	fneg	r51, r51				# 43625
	sw		r46, 0(r9)				# 1162
	sw		r13, 1(r9)				# 1162
	sw		r51, 2(r9)				# 43463
	addi	r9, r61, 41				# 43706
	lwx		r9, r37, r9				# 43700
	lw		r9, 0(r9)				# 8078
	sw		r46, 0(r9)				# 1162
	sw		r51, 1(r9)				# 1162
	sw		r7, 2(r9)				# 43463
	addi	r9, r61, 81				# 43767
	lwx		r9, r37, r9				# 43761
	lw		r9, 0(r9)				# 8078
	sw		r51, 0(r9)				# 1162
	sw		r57, 1(r9)				# 1162
	sw		r7, 2(r9)				# 1190
.b49570:
	addis	r13, r0, 15820
	ori		r13, r13, 52429				# 44147
	fadd	r7, r26, r13				# 44137
	addi	r37, r61, 2				# 44188
	addi	r51, r0, 0				# 43281
	mv		r9, r15				# 43281
.b49577:
	fmul	r9, r9, r9				# 43095
	fadd	r9, r9, r13				# 43090
	fsqrt	r57, r9				# 227
	addis	r46, r0, 16256				# 43125
	fdiv	r9, r46, r57				# 43113
	fatan	r9, r9				# 440
	fmul	r9, r9, r7				# 43182
	fsin	r15, r9				# 40
	fcos	r9, r9				# 133
	fdiv	r9, r15, r9				# 43170
	fmul	r15, r9, r57				# 43816
	addi	r51, r51, 1				# 43853
	fmul	r9, r15, r15				# 43095
	fadd	r9, r9, r13				# 43090
	fsqrt	r57, r9				# 227
	fdiv	r9, r46, r57				# 43113
	fatan	r9, r9				# 440
	fmul	r46, r9, r30				# 43182
	fsin	r9, r46				# 40
	fcos	r46, r46				# 133
	fdiv	r9, r9, r46				# 43170
	fmul	r9, r9, r57				# 43853
	cmpi	r51, 5
	bge		.b49576				# 43281
	b		.b49577
.b49576:
	fmul	r13, r15, r15				# 43320
	fmul	r51, r9, r9				# 43320
	fadd	r51, r13, r51				# 43320
	addis	r57, r0, 16256				# 43320
	fadd	r51, r51, r57				# 43315
	fsqrt	r51, r51				# 227
	fdiv	r13, r15, r51				# 43352
	fdiv	r7, r9, r51				# 43375
	fdiv	r51, r57, r51				# 43398
	lli		r9, dirvecs.2624				# 43424
	lwx		r46, r9, r62				# 43424
	lwx		r9, r46, r37				# 43471
	lw		r9, 0(r9)				# 8078
	sw		r13, 0(r9)				# 1162
	sw		r7, 1(r9)				# 1162
	sw		r51, 2(r9)				# 43463
	addi	r9, r37, 40				# 43524
	lwx		r9, r46, r9				# 43518
	lw		r15, 0(r9)				# 8078
	fneg	r9, r7				# 43510
	sw		r13, 0(r15)				# 1162
	sw		r51, 1(r15)				# 1162
	sw		r9, 2(r15)				# 43463
	addi	r15, r37, 80				# 43578
	lwx		r15, r46, r15				# 43572
	lw		r15, 0(r15)				# 8078
	fneg	r57, r13				# 43564
	sw		r51, 0(r15)				# 1162
	sw		r57, 1(r15)				# 1162
	sw		r9, 2(r15)				# 43463
	addi	r15, r37, 1				# 43639
	lwx		r15, r46, r15				# 43633
	lw		r15, 0(r15)				# 8078
	fneg	r51, r51				# 43625
	sw		r57, 0(r15)				# 1162
	sw		r9, 1(r15)				# 1162
	sw		r51, 2(r15)				# 43463
	addi	r9, r37, 41				# 43706
	lwx		r9, r46, r9				# 43700
	lw		r9, 0(r9)				# 8078
	sw		r57, 0(r9)				# 1162
	sw		r51, 1(r9)				# 1162
	sw		r7, 2(r9)				# 43463
	addi	r9, r37, 81				# 43767
	lwx		r9, r46, r9				# 43761
	lw		r9, 0(r9)				# 8078
	sw		r51, 0(r9)				# 1162
	sw		r13, 1(r9)				# 1162
	sw		r7, 2(r9)				# 1190
	addi	r10, r10, -1				# 44244
	addi	r62, r62, 1				# 979
	cmpi	r62, 5
	bge		.b49579				# 1000
.b49580:
	cmpi	r10, 0
	bge		.b49568				# 43977
.b49566:
	addi	r54, r54, -1				# 44473
	addi	r28, r28, 2				# 979
	cmpi	r28, 5
	bge		.b49582				# 1000
.b49583:
.b49581:
	addi	r61, r61, 4				# 44473
	cmpi	r54, 0
	bge		.b49564				# 44363
.b49562:
	addi	r15, r0, 4				# 45247
.b49586:
	lli		r9, dirvecs.2624				# 45272
	lwx		r25, r9, r15				# 45272
	addi	r10, r0, 119				# 45081
.b49590:
	lwx		r41, r25, r10				# 45106
	lli		r9, n_objects.2525				# 21353
	lw		r9, 0(r9)				# 21353
	addi	r62, r9, -1				# 21317
	cmpi	r62, 0
	bge		.b49594				# 20796
.b49592:
	addi	r10, r10, -1				# 45149
	cmpi	r10, 0
	bge		.b49590				# 45081
.b49588:
	addi	r15, r15, -1				# 45319
	cmpi	r15, 0
	bge		.b49586				# 45247
.b49584:
	lli		r9, v3.2630				# 1353
	lw		r15, -4(r3)				# 1353
	sw		r15, 0(r9)				# 1353
	lw		r37, -3(r3)				# 1353
	sw		r37, 1(r9)				# 1353
	lw		r7, -5(r3)				# 47149
	sw		r7, 2(r9)				# 47149
	lli		r9, n_objects.2525				# 21353
	lw		r54, 0(r9)				# 21353
	sw		r54, -7(r3)				# 21353
	addi	r28, r54, -1				# 21317
	cmpi	r28, 0
	bge		.b49661				# 20796
.b49659:
	addi	r28, r54, -1				# 47281
	cmpi	r28, 0
	bge		.b49727				# 46514
.b49726:
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
	lw		r28, -1(r3)				# 41846
	lw		r9, 0(r3)				# 41846
	lw		r1, -2(r3)				# 41846
	addi	r61, r0, 0				# 41846
	addi	r5, r0, 2				# 41846
T.loop50021:
	sw		r5, -8(r3)				# 41846
	sw		r1, -9(r3)				# 41846
	sw		r28, -10(r3)				# 41846
	sw		r9, -11(r3)				# 41846
	sw		r61, -12(r3)				# 41846
	cmpi	r61, 2
	bge		_min_caml_end				# 41839
.b50023:
	cmpi	r61, 1
	bge		.b50024				# 41873
.b50026:
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
.b50030:
	lw		r61, -10(r3)				# 41516
	lwx		r61, r61, r9				# 41516
	sw		r61, -14(r3)				# 41516
	lw		r62, 0(r61)				# 6744
	lw		r61, 0(r62)				# 1353
	lli		r28, rgb.2587				# 1353
	sw		r61, 0(r28)				# 1353
	lw		r61, 1(r62)				# 1376
	sw		r61, 1(r28)				# 1353
	lw		r61, 2(r62)				# 1399
	sw		r61, 2(r28)				# 41504
	lw		r61, -12(r3)				# 37910
	addi	r28, r61, 1				# 37910
	cmpi	r28, 2
	bge		.b50032				# 37910
.b50033:
	cmpi	r61, 0
	ble		.b50034				# 37947
.b50035:
	addi	r61, r9, 1				# 37967
	cmpi	r61, 2
	bge		.b50036				# 37967
.b50037:
	cmpi	r9, 0
	ble		.b50038				# 38001
.b50039:
	addi	r9, r0, 1				# 38018
	addi	r9, r0, 0				# 38637
.b50187:
	lw		r10, -14(r3)				# 7046
	lw		r61, 2(r10)				# 7046
	lwx		r61, r61, r9				# 38685
	cmpi	r61, 0
	bge		.b50189				# 38685
.b50040:
	lli		r28, rgb.2587				# 39509
	lw		r9, 0(r28)				# 39509
	ftoi	r9, r9				# 543
	cmpi	r9, 255
	ble		.b50349				# 39409
.b50350:
	addi	r9, r0, 255				# 39426
.b50360:
	addi	r61, r0, 50				# 946
	out		r61				# 946
	addi	r9, r9, -200				# 1411
.b50353:
	addi	r61, r0, 9				# 1002
	mul16i	r62, r61, 10				# 993
	sub		r62, r9, r62				# 1014
	cmpi	r62, 0
	bge		.b50366				# 1034
.b50367:
	addi	r61, r61, -1				# 1109
	mul16i	r62, r61, 10				# 993
	sub		r62, r9, r62				# 1014
	cmpi	r62, 0
	bge		.b50366				# 1034
	b		.b50367
.b50366:
	addi	r9, r61, 48				# 1055
	out		r9				# 946
	addi	r9, r62, 48				# 1080
	out		r9				# 946
.b50364:
	addi	r62, r0, 32				# 946
	out		r62				# 946
	lw		r9, 1(r28)				# 39569
	ftoi	r61, r9				# 543
	cmpi	r61, 255
	ble		.b50369				# 39409
.b50370:
	addi	r61, r0, 255				# 39426
.b50380:
	addi	r9, r0, 50				# 946
	out		r9				# 946
	addi	r61, r61, -200				# 1411
.b50373:
	addi	r9, r0, 9				# 1002
	mul16i	r15, r9, 10				# 993
	sub		r15, r61, r15				# 1014
	cmpi	r15, 0
	bge		.b50386				# 1034
.b50387:
	addi	r9, r9, -1				# 1109
	mul16i	r15, r9, 10				# 993
	sub		r15, r61, r15				# 1014
	cmpi	r15, 0
	bge		.b50386				# 1034
	b		.b50387
.b50386:
	addi	r9, r9, 48				# 1055
	out		r9				# 946
	addi	r9, r15, 48				# 1080
	out		r9				# 946
.b50384:
	out		r62				# 946
	lw		r9, 2(r28)				# 39629
	ftoi	r9, r9				# 543
	cmpi	r9, 255
	ble		.b50389				# 39409
.b50390:
	addi	r9, r0, 255				# 39426
.b50400:
	addi	r61, r0, 50				# 946
	out		r61				# 946
	addi	r9, r9, -200				# 1411
.b50393:
	addi	r61, r0, 9				# 1002
	mul16i	r28, r61, 10				# 993
	sub		r28, r9, r28				# 1014
	cmpi	r28, 0
	bge		.b50406				# 1034
.b50407:
	addi	r61, r61, -1				# 1109
	mul16i	r28, r61, 10				# 993
	sub		r28, r9, r28				# 1014
	cmpi	r28, 0
	bge		.b50406				# 1034
	b		.b50407
.b50406:
	addi	r9, r61, 48				# 1055
	out		r9				# 946
	addi	r9, r28, 48				# 1080
	out		r9				# 946
.b50404:
	addi	r9, r0, 10				# 946
	out		r9				# 946
	lw		r9, -13(r3)				# 41688
	addi	r9, r9, 1				# 41688
	sw		r9, -13(r3)				# 41477
	cmpi	r9, 2
	bge		.b50027				# 41470
	b		.b50030
.b50027:
	lw		r9, -12(r3)				# 41997
	addi	r61, r9, 1				# 41997
	lw		r9, -8(r3)				# 979
	addi	r5, r9, 2				# 979
	cmpi	r5, 5
	bge		.b50409				# 1000
.b50410:
.b50408:
	lw		r9, -10(r3)				# 41997
	lw		r1, -11(r3)				# 41997
	lw		r28, -9(r3)				# 41997
	b		T.loop50021				# 41997
.b50409:
	addi	r5, r5, -5				# 1017
	b		.b50408				# 1017
.b50389:
	cmpi	r9, 0
	bge		.b50391				# 39435
.b50392:
	addi	r9, r0, 0				# 39450
.b50403:
	addi	r61, r0, 48				# 1493
	out		r61				# 946
	b		.b50393				# 1512
.b50391:
	cmpi	r9, 500
	bge		.b50394				# 1192
.b50395:
	cmpi	r9, 400
	bge		.b50396				# 1251
.b50397:
	cmpi	r9, 300
	bge		.b50398				# 1310
.b50399:
	cmpi	r9, 200
	bge		.b50400				# 1369
.b50401:
	cmpi	r9, 100
	bge		.b50402				# 1428
	b		.b50403
.b50402:
	addi	r61, r0, 49				# 1451
	out		r61				# 946
	addi	r9, r9, -100				# 1470
	b		.b50393				# 1470
.b50398:
	addi	r61, r0, 51				# 946
	out		r61				# 946
	addi	r9, r9, -300				# 1352
	b		.b50393				# 1352
.b50396:
	addi	r61, r0, 52				# 1274
	out		r61				# 946
	addi	r9, r9, -400				# 1293
	b		.b50393				# 1293
.b50394:
	addi	r61, r0, 53				# 1215
	out		r61				# 946
	addi	r9, r9, -500				# 1234
	b		.b50393				# 1234
.b50369:
	cmpi	r61, 0
	bge		.b50371				# 39435
.b50372:
	addi	r61, r0, 0				# 39450
.b50383:
	addi	r9, r0, 48				# 1493
	out		r9				# 946
	b		.b50373				# 1512
.b50371:
	cmpi	r61, 500
	bge		.b50374				# 1192
.b50375:
	cmpi	r61, 400
	bge		.b50376				# 1251
.b50377:
	cmpi	r61, 300
	bge		.b50378				# 1310
.b50379:
	cmpi	r61, 200
	bge		.b50380				# 1369
.b50381:
	cmpi	r61, 100
	bge		.b50382				# 1428
	b		.b50383
.b50382:
	addi	r9, r0, 49				# 1451
	out		r9				# 946
	addi	r61, r61, -100				# 1470
	b		.b50373				# 1470
.b50378:
	addi	r9, r0, 51				# 946
	out		r9				# 946
	addi	r61, r61, -300				# 1352
	b		.b50373				# 1352
.b50376:
	addi	r9, r0, 52				# 1274
	out		r9				# 946
	addi	r61, r61, -400				# 1293
	b		.b50373				# 1293
.b50374:
	addi	r9, r0, 53				# 1215
	out		r9				# 946
	addi	r61, r61, -500				# 1234
	b		.b50373				# 1234
.b50349:
	cmpi	r9, 0
	bge		.b50351				# 39435
.b50352:
	addi	r9, r0, 0				# 39450
.b50363:
	addi	r61, r0, 48				# 1493
	out		r61				# 946
	b		.b50353				# 1512
.b50351:
	cmpi	r9, 500
	bge		.b50354				# 1192
.b50355:
	cmpi	r9, 400
	bge		.b50356				# 1251
.b50357:
	cmpi	r9, 300
	bge		.b50358				# 1310
.b50359:
	cmpi	r9, 200
	bge		.b50360				# 1369
.b50361:
	cmpi	r9, 100
	bge		.b50362				# 1428
	b		.b50363
.b50362:
	addi	r61, r0, 49				# 1451
	out		r61				# 946
	addi	r9, r9, -100				# 1470
	b		.b50353				# 1470
.b50358:
	addi	r61, r0, 51				# 946
	out		r61				# 946
	addi	r9, r9, -300				# 1352
	b		.b50353				# 1352
.b50356:
	addi	r61, r0, 52				# 1274
	out		r61				# 946
	addi	r9, r9, -400				# 1293
	b		.b50353				# 1293
.b50354:
	addi	r61, r0, 53				# 1215
	out		r61				# 946
	addi	r9, r9, -500				# 1234
	b		.b50353				# 1234
.b50189:
	lw		r61, 2(r10)				# 7046
	lwx		r51, r61, r9				# 38247
	lw		r15, -13(r3)				# 38301
	lw		r61, -11(r3)				# 38301
	lwx		r62, r61, r15				# 38301
	lw		r61, 2(r62)				# 7046
	lwx		r61, r61, r9				# 38298
	cmp		r61, r51
	beq		.b50192				# 38298
.b50193:
	addi	r61, r0, 0				# 38570
	sw		r9, -15(r3)				# 37563
	cmpi	r9, 4
	ble		.b50203				# 37563
	b		.b50040
.b50203:
	lw		r51, -14(r3)				# 7046
	lw		r61, 2(r51)				# 7046
	lwx		r61, r61, r9				# 37630
	cmpi	r61, 0
	bge		.b50205				# 37630
	b		.b50040
.b50205:
	lw		r61, 3(r51)				# 7193
	lwx		r61, r61, r9				# 37719
	cmpi	r61, 0
	beq		.b50207				# 37719
.b50209:
	lw		r28, 5(r51)				# 7491
	lw		r15, 7(r51)				# 7939
	lw		r62, 1(r51)				# 6897
	lw		r61, 4(r51)				# 7334
	sw		r61, -16(r3)				# 7334
	lwx		r10, r28, r9				# 36743
	lw		r61, 0(r10)				# 1353
	sw		r61, -17(r3)				# 1353
	lli		r28, diffuse_ray.2584				# 1353
	sw		r61, 0(r28)				# 1353
	lw		r61, 1(r10)				# 1376
	sw		r61, -18(r3)				# 1376
	sw		r61, 1(r28)				# 1353
	lw		r61, 2(r10)				# 1399
	sw		r61, -19(r3)				# 1399
	sw		r61, 2(r28)				# 36743
	lw		r61, 6(r51)				# 7634
	lw		r61, 0(r61)				# 36779
	sw		r61, -20(r3)				# 36779
	lwx		r28, r15, r9				# 36779
	sw		r28, -21(r3)				# 36779
	lwx		r7, r62, r9				# 36779
	sw		r7, -22(r3)				# 36779
	cmpi	r61, 0
	beq		.b50210				# 36097
.b50212:
	lli		r9, dirvecs.2624				# 36123
	lw		r9, 0(r9)				# 36123
	sw		r9, -23(r3)				# 36123
	lw		r9, 0(r7)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r7)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r7)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b50215				# 21420
.b50213:
	addi	r9, r0, 118				# 35584
	sw		r9, -24(r3)				# 35584
.b50229:
	lw		r51, -23(r3)				# 35627
	lwx		r1, r51, r9				# 35627
	lw		r62, 0(r1)				# 8078
	lw		r61, 0(r62)				# 1949
	lw		r15, -21(r3)				# 1949
	lw		r28, 0(r15)				# 1949
	fmul	r61, r61, r28				# 1949
	lw		r28, 1(r62)				# 1967
	lw		r10, 1(r15)				# 1967
	fmul	r28, r28, r10				# 1949
	fadd	r10, r61, r28				# 1949
	lw		r28, 2(r62)				# 1985
	lw		r61, 2(r15)				# 1985
	fmul	r61, r28, r61				# 1949
	fadd	r28, r10, r61				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b50232				# 3188
.b50233:
	addi	r61, r0, 1				# 3188
.b50236:
	addi	r9, r9, 1				# 35712
	lwx		r1, r51, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r28, r9				# 35694
	mflr	r63
	sw		r63, -25(r3)
	addi	r3, r3, -26
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 26
	lw		r63, -25(r3)
	mtlr	r63				# 35694
.b50234:
	lw		r9, -24(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -24(r3)				# 35584
	cmpi	r9, 0
	bge		.b50229				# 35584
.b50210:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 1
	beq		.b50237				# 36180
.b50239:
	lli		r9, dirvecs.2624				# 36206
	lw		r9, 1(r9)				# 36206
	sw		r9, -25(r3)				# 36206
	lw		r10, -22(r3)				# 1353
	lw		r61, 0(r10)				# 1353
	lli		r9, startp_fast.2602				# 1353
	sw		r61, 0(r9)				# 1353
	lw		r61, 1(r10)				# 1376
	sw		r61, 1(r9)				# 1353
	lw		r61, 2(r10)				# 1399
	sw		r61, 2(r9)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50242				# 21420
.b50240:
	addi	r9, r0, 118				# 35584
	sw		r9, -26(r3)				# 35584
.b50256:
	lw		r62, -25(r3)				# 35627
	lwx		r1, r62, r9				# 35627
	lw		r51, 0(r1)				# 8078
	lw		r28, 0(r51)				# 1949
	lw		r15, -21(r3)				# 1949
	lw		r61, 0(r15)				# 1949
	fmul	r28, r28, r61				# 1949
	lw		r10, 1(r51)				# 1967
	lw		r61, 1(r15)				# 1967
	fmul	r61, r10, r61				# 1949
	fadd	r61, r28, r61				# 1949
	lw		r28, 2(r51)				# 1985
	lw		r15, 2(r15)				# 1985
	fmul	r28, r28, r15				# 1949
	fadd	r61, r61, r28				# 35609
	addi	r28, r0, 0				# 35671
	fcmp	r28, r61
	ble		.b50259				# 3188
.b50260:
	addi	r28, r0, 1				# 3188
.b50263:
	addi	r9, r9, 1				# 35712
	lwx		r1, r62, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r61, r9				# 35694
	mflr	r63
	sw		r63, -27(r3)
	addi	r3, r3, -28
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 28
	lw		r63, -27(r3)
	mtlr	r63				# 35694
.b50261:
	lw		r9, -26(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -26(r3)				# 35584
	cmpi	r9, 0
	bge		.b50256				# 35584
.b50237:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 2
	beq		.b50264				# 36263
.b50266:
	lli		r9, dirvecs.2624				# 36289
	lw		r9, 2(r9)				# 36289
	sw		r9, -27(r3)				# 36289
	lw		r54, -22(r3)				# 1353
	lw		r9, 0(r54)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r54)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r54)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50269				# 21420
.b50267:
	addi	r9, r0, 118				# 35584
	sw		r9, -28(r3)				# 35584
.b50283:
	lw		r28, -27(r3)				# 35627
	lwx		r1, r28, r9				# 35627
	lw		r10, 0(r1)				# 8078
	lw		r61, 0(r10)				# 1949
	lw		r15, -21(r3)				# 1949
	lw		r62, 0(r15)				# 1949
	fmul	r62, r61, r62				# 1949
	lw		r51, 1(r10)				# 1967
	lw		r61, 1(r15)				# 1967
	fmul	r61, r51, r61				# 1949
	fadd	r51, r62, r61				# 1949
	lw		r62, 2(r10)				# 1985
	lw		r61, 2(r15)				# 1985
	fmul	r61, r62, r61				# 1949
	fadd	r62, r51, r61				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r62
	ble		.b50286				# 3188
.b50287:
	addi	r61, r0, 1				# 3188
.b50290:
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
.b50288:
	lw		r9, -28(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -28(r3)				# 35584
	cmpi	r9, 0
	bge		.b50283				# 35584
.b50264:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 3
	beq		.b50291				# 36346
.b50293:
	lli		r9, dirvecs.2624				# 36372
	lw		r9, 3(r9)				# 36372
	sw		r9, -29(r3)				# 36372
	lw		r25, -22(r3)				# 1353
	lw		r61, 0(r25)				# 1353
	lli		r9, startp_fast.2602				# 1353
	sw		r61, 0(r9)				# 1353
	lw		r61, 1(r25)				# 1376
	sw		r61, 1(r9)				# 1353
	lw		r61, 2(r25)				# 1399
	sw		r61, 2(r9)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b50296				# 21420
.b50294:
	addi	r9, r0, 118				# 35584
	sw		r9, -30(r3)				# 35584
.b50310:
	lw		r62, -29(r3)				# 35627
	lwx		r1, r62, r9				# 35627
	lw		r10, 0(r1)				# 8078
	lw		r61, 0(r10)				# 1949
	lw		r28, -21(r3)				# 1949
	lw		r15, 0(r28)				# 1949
	fmul	r15, r61, r15				# 1949
	lw		r61, 1(r10)				# 1967
	lw		r51, 1(r28)				# 1967
	fmul	r61, r61, r51				# 1949
	fadd	r15, r15, r61				# 1949
	lw		r61, 2(r10)				# 1985
	lw		r28, 2(r28)				# 1985
	fmul	r61, r61, r28				# 1949
	fadd	r28, r15, r61				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b50313				# 3188
.b50314:
	addi	r61, r0, 1				# 3188
.b50317:
	addi	r9, r9, 1				# 35712
	lwx		r1, r62, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r28, r9				# 35694
	mflr	r63
	sw		r63, -31(r3)
	addi	r3, r3, -32
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 32
	lw		r63, -31(r3)
	mtlr	r63				# 35694
.b50315:
	lw		r9, -30(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -30(r3)				# 35584
	cmpi	r9, 0
	bge		.b50310				# 35584
.b50291:
	lw		r9, -20(r3)				# 36743
	cmpi	r9, 4
	beq		.b50318				# 36429
.b50320:
	lli		r9, dirvecs.2624				# 36455
	lw		r9, 4(r9)				# 36455
	sw		r9, -31(r3)				# 36455
	lw		r13, -22(r3)				# 1353
	lw		r9, 0(r13)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r13)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r13)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50323				# 21420
.b50321:
	addi	r9, r0, 118				# 35584
	sw		r9, -32(r3)				# 35584
.b50337:
	lw		r28, -31(r3)				# 35627
	lwx		r1, r28, r9				# 35627
	lw		r15, 0(r1)				# 8078
	lw		r62, 0(r15)				# 1949
	lw		r10, -21(r3)				# 1949
	lw		r61, 0(r10)				# 1949
	fmul	r62, r62, r61				# 1949
	lw		r61, 1(r15)				# 1967
	lw		r51, 1(r10)				# 1967
	fmul	r61, r61, r51				# 1949
	fadd	r61, r62, r61				# 1949
	lw		r15, 2(r15)				# 1985
	lw		r62, 2(r10)				# 1985
	fmul	r62, r15, r62				# 1949
	fadd	r62, r61, r62				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r62
	ble		.b50340				# 3188
.b50341:
	addi	r61, r0, 1				# 3188
.b50344:
	addi	r9, r9, 1				# 35712
	lwx		r1, r28, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r62, r9				# 35694
	mflr	r63
	sw		r63, -33(r3)
	addi	r3, r3, -34
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 34
	lw		r63, -33(r3)
	mtlr	r63				# 35694
.b50342:
	lw		r9, -32(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -32(r3)				# 35584
	cmpi	r9, 0
	bge		.b50337				# 35584
.b50318:
	lw		r9, -15(r3)				# 36884
	lw		r61, -16(r3)				# 36884
	lwx		r15, r61, r9				# 36884
	lli		r61, rgb.2587				# 2671
	lw		r62, 0(r61)				# 2671
	lw		r9, 0(r15)				# 2683
	lw		r28, -17(r3)				# 2671
	fmul	r9, r9, r28				# 2671
	fadd	r9, r62, r9				# 2659
	sw		r9, 0(r61)				# 2659
	lw		r62, 1(r61)				# 2713
	lw		r28, 1(r15)				# 2725
	lw		r9, -18(r3)				# 2713
	fmul	r9, r28, r9				# 2713
	fadd	r9, r62, r9				# 2701
	sw		r9, 1(r61)				# 2659
	lw		r28, 2(r61)				# 2755
	lw		r62, 2(r15)				# 2767
	lw		r9, -19(r3)				# 2755
	fmul	r9, r62, r9				# 2755
	fadd	r9, r28, r9				# 2743
	sw		r9, 2(r61)				# 2743
.b50207:
	lw		r9, -15(r3)				# 37806
	addi	r9, r9, 1				# 37806
	sw		r9, -15(r3)				# 37563
	cmpi	r9, 4
	ble		.b50203				# 37563
	b		.b50040
.b50340:
	addi	r61, r0, 0				# 3188
.b50343:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r62, r9				# 35766
	mflr	r63
	sw		r63, -33(r3)
	addi	r3, r3, -34
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 34
	lw		r63, -33(r3)
	mtlr	r63				# 35766
	b		.b50342				# 35766
.b50323:
	lli		r61, objects.2536				# 21445
	lwx		r62, r61, r9				# 21445
	lw		r54, 10(r62)				# 6561
	lw		r30, 1(r62)				# 2994
	lw		r28, 0(r13)				# 21561
	lw		r15, 5(r62)				# 4475
	lw		r61, 0(r15)				# 21561
	fsub	r61, r28, r61				# 21547
	sw		r61, 0(r54)				# 21547
	lw		r61, 1(r13)				# 21603
	lw		r28, 1(r15)				# 21603
	fsub	r61, r61, r28				# 21589
	sw		r61, 1(r54)				# 21547
	lw		r61, 2(r13)				# 21645
	lw		r28, 2(r15)				# 21645
	fsub	r15, r61, r28				# 21631
	sw		r15, 2(r54)				# 21547
	cmpi	r30, 2
	beq		.b50326				# 21673
.b50327:
	cmpi	r30, 2
	ble		.b50325				# 21798
.b50329:
	lw		r51, 0(r54)				# 21847
	lw		r10, 1(r54)				# 21847
	fmul	r28, r51, r51				# 14374
	lw		r7, 4(r62)				# 3734
	lw		r61, 0(r7)				# 14374
	fmul	r28, r28, r61				# 14374
	fmul	r61, r10, r10				# 14400
	lw		r25, 1(r7)				# 14400
	fmul	r61, r61, r25				# 14374
	fadd	r28, r28, r61				# 14374
	fmul	r25, r15, r15				# 14426
	lw		r61, 2(r7)				# 14426
	fmul	r61, r25, r61				# 14374
	fadd	r61, r28, r61				# 14354
	lw		r28, 3(r62)				# 3553
	cmpi	r28, 0
	beq		.b50331				# 14456
.b50332:
	fmul	r7, r10, r15				# 14522
	lw		r62, 9(r62)				# 5989
	lw		r28, 0(r62)				# 14522
	fmul	r28, r7, r28				# 14503
	fadd	r28, r61, r28				# 14503
	fmul	r61, r15, r51				# 14556
	lw		r15, 1(r62)				# 14556
	fmul	r61, r61, r15				# 14503
	fadd	r61, r28, r61				# 14503
	fmul	r28, r51, r10				# 14590
	lw		r62, 2(r62)				# 14590
	fmul	r28, r28, r62				# 14503
	fadd	r61, r61, r28				# 14503
	cmpi	r30, 3
	beq		.b50334				# 21917
.b50335:
.b50333:
	sw		r61, 3(r54)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50323				# 21420
	b		.b50321
.b50334:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50333				# 21937
.b50331:
	cmpi	r30, 3
	beq		.b50334				# 21917
	b		.b50335
.b50325:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50323				# 21420
	b		.b50321
.b50326:
	lw		r28, 4(r62)				# 4293
	lw		r61, 0(r54)				# 21728
	lw		r10, 1(r54)				# 21728
	lw		r62, 0(r28)				# 2037
	fmul	r62, r62, r61				# 2037
	lw		r61, 1(r28)				# 2052
	fmul	r61, r61, r10				# 2037
	fadd	r62, r62, r61				# 2037
	lw		r61, 2(r28)				# 2067
	fmul	r61, r61, r15				# 2037
	fadd	r61, r62, r61				# 21713
	sw		r61, 3(r54)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50323				# 21420
	b		.b50321
.b50313:
	addi	r61, r0, 0				# 3188
.b50316:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -31(r3)
	addi	r3, r3, -32
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 32
	lw		r63, -31(r3)
	mtlr	r63				# 35766
	b		.b50315				# 35766
.b50296:
	lli		r9, objects.2536				# 21445
	lwx		r51, r9, r61				# 21445
	lw		r28, 10(r51)				# 6561
	lw		r15, 1(r51)				# 2994
	lw		r62, 0(r25)				# 21561
	lw		r10, 5(r51)				# 4475
	lw		r9, 0(r10)				# 21561
	fsub	r9, r62, r9				# 21547
	sw		r9, 0(r28)				# 21547
	lw		r62, 1(r25)				# 21603
	lw		r9, 1(r10)				# 21603
	fsub	r9, r62, r9				# 21589
	sw		r9, 1(r28)				# 21547
	lw		r62, 2(r25)				# 21645
	lw		r9, 2(r10)				# 21645
	fsub	r62, r62, r9				# 21631
	sw		r62, 2(r28)				# 21547
	cmpi	r15, 2
	beq		.b50299				# 21673
.b50300:
	cmpi	r15, 2
	ble		.b50298				# 21798
.b50302:
	lw		r10, 0(r28)				# 21847
	lw		r54, 1(r28)				# 21847
	fmul	r9, r10, r10				# 14374
	lw		r7, 4(r51)				# 3734
	lw		r13, 0(r7)				# 14374
	fmul	r13, r9, r13				# 14374
	fmul	r30, r54, r54				# 14400
	lw		r9, 1(r7)				# 14400
	fmul	r9, r30, r9				# 14374
	fadd	r9, r13, r9				# 14374
	fmul	r13, r62, r62				# 14426
	lw		r7, 2(r7)				# 14426
	fmul	r13, r13, r7				# 14374
	fadd	r9, r9, r13				# 14354
	lw		r13, 3(r51)				# 3553
	cmpi	r13, 0
	beq		.b50304				# 14456
.b50305:
	fmul	r13, r54, r62				# 14522
	lw		r7, 9(r51)				# 5989
	lw		r51, 0(r7)				# 14522
	fmul	r51, r13, r51				# 14503
	fadd	r9, r9, r51				# 14503
	fmul	r62, r62, r10				# 14556
	lw		r51, 1(r7)				# 14556
	fmul	r62, r62, r51				# 14503
	fadd	r51, r9, r62				# 14503
	fmul	r62, r10, r54				# 14590
	lw		r9, 2(r7)				# 14590
	fmul	r9, r62, r9				# 14503
	fadd	r9, r51, r9				# 14503
	cmpi	r15, 3
	beq		.b50307				# 21917
.b50308:
.b50306:
	sw		r9, 3(r28)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50296				# 21420
	b		.b50294
.b50307:
	addis	r62, r0, 16256				# 21937
	fsub	r9, r9, r62				# 21937
	b		.b50306				# 21937
.b50304:
	cmpi	r15, 3
	beq		.b50307				# 21917
	b		.b50308
.b50298:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50296				# 21420
	b		.b50294
.b50299:
	lw		r51, 4(r51)				# 4293
	lw		r15, 0(r28)				# 21728
	lw		r10, 1(r28)				# 21728
	lw		r9, 0(r51)				# 2037
	fmul	r15, r9, r15				# 2037
	lw		r9, 1(r51)				# 2052
	fmul	r9, r9, r10				# 2037
	fadd	r15, r15, r9				# 2037
	lw		r9, 2(r51)				# 2067
	fmul	r9, r9, r62				# 2037
	fadd	r9, r15, r9				# 21713
	sw		r9, 3(r28)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50296				# 21420
	b		.b50294
.b50286:
	addi	r61, r0, 0				# 3188
.b50289:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r62, r9				# 35766
	mflr	r63
	sw		r63, -29(r3)
	addi	r3, r3, -30
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 30
	lw		r63, -29(r3)
	mtlr	r63				# 35766
	b		.b50288				# 35766
.b50269:
	lli		r61, objects.2536				# 21445
	lwx		r10, r61, r9				# 21445
	lw		r15, 10(r10)				# 6561
	lw		r13, 1(r10)				# 2994
	lw		r61, 0(r54)				# 21561
	lw		r62, 5(r10)				# 4475
	lw		r28, 0(r62)				# 21561
	fsub	r61, r61, r28				# 21547
	sw		r61, 0(r15)				# 21547
	lw		r28, 1(r54)				# 21603
	lw		r61, 1(r62)				# 21603
	fsub	r61, r28, r61				# 21589
	sw		r61, 1(r15)				# 21547
	lw		r28, 2(r54)				# 21645
	lw		r61, 2(r62)				# 21645
	fsub	r25, r28, r61				# 21631
	sw		r25, 2(r15)				# 21547
	cmpi	r13, 2
	beq		.b50272				# 21673
.b50273:
	cmpi	r13, 2
	ble		.b50271				# 21798
.b50275:
	lw		r51, 0(r15)				# 21847
	lw		r7, 1(r15)				# 21847
	fmul	r28, r51, r51				# 14374
	lw		r62, 4(r10)				# 3734
	lw		r61, 0(r62)				# 14374
	fmul	r28, r28, r61				# 14374
	fmul	r61, r7, r7				# 14400
	lw		r30, 1(r62)				# 14400
	fmul	r61, r61, r30				# 14374
	fadd	r28, r28, r61				# 14374
	fmul	r61, r25, r25				# 14426
	lw		r62, 2(r62)				# 14426
	fmul	r61, r61, r62				# 14374
	fadd	r61, r28, r61				# 14354
	lw		r28, 3(r10)				# 3553
	cmpi	r28, 0
	beq		.b50277				# 14456
.b50278:
	fmul	r28, r7, r25				# 14522
	lw		r62, 9(r10)				# 5989
	lw		r10, 0(r62)				# 14522
	fmul	r28, r28, r10				# 14503
	fadd	r28, r61, r28				# 14503
	fmul	r61, r25, r51				# 14556
	lw		r10, 1(r62)				# 14556
	fmul	r61, r61, r10				# 14503
	fadd	r28, r28, r61				# 14503
	fmul	r10, r51, r7				# 14590
	lw		r61, 2(r62)				# 14590
	fmul	r61, r10, r61				# 14503
	fadd	r61, r28, r61				# 14503
	cmpi	r13, 3
	beq		.b50280				# 21917
.b50281:
.b50279:
	sw		r61, 3(r15)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50269				# 21420
	b		.b50267
.b50280:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50279				# 21937
.b50277:
	cmpi	r13, 3
	beq		.b50280				# 21917
	b		.b50281
.b50271:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50269				# 21420
	b		.b50267
.b50272:
	lw		r28, 4(r10)				# 4293
	lw		r10, 0(r15)				# 21728
	lw		r61, 1(r15)				# 21728
	lw		r62, 0(r28)				# 2037
	fmul	r10, r62, r10				# 2037
	lw		r62, 1(r28)				# 2052
	fmul	r61, r62, r61				# 2037
	fadd	r62, r10, r61				# 2037
	lw		r61, 2(r28)				# 2067
	fmul	r61, r61, r25				# 2037
	fadd	r61, r62, r61				# 21713
	sw		r61, 3(r15)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50269				# 21420
	b		.b50267
.b50259:
	addi	r28, r0, 0				# 3188
.b50262:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r61, r9				# 35766
	mflr	r63
	sw		r63, -27(r3)
	addi	r3, r3, -28
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 28
	lw		r63, -27(r3)
	mtlr	r63				# 35766
	b		.b50261				# 35766
.b50242:
	lli		r61, objects.2536				# 21445
	lwx		r15, r61, r9				# 21445
	lw		r28, 10(r15)				# 6561
	lw		r30, 1(r15)				# 2994
	lw		r62, 0(r10)				# 21561
	lw		r51, 5(r15)				# 4475
	lw		r61, 0(r51)				# 21561
	fsub	r61, r62, r61				# 21547
	sw		r61, 0(r28)				# 21547
	lw		r61, 1(r10)				# 21603
	lw		r62, 1(r51)				# 21603
	fsub	r61, r61, r62				# 21589
	sw		r61, 1(r28)				# 21547
	lw		r61, 2(r10)				# 21645
	lw		r62, 2(r51)				# 21645
	fsub	r25, r61, r62				# 21631
	sw		r25, 2(r28)				# 21547
	cmpi	r30, 2
	beq		.b50245				# 21673
.b50246:
	cmpi	r30, 2
	ble		.b50244				# 21798
.b50248:
	lw		r51, 0(r28)				# 21847
	lw		r7, 1(r28)				# 21847
	fmul	r13, r51, r51				# 14374
	lw		r62, 4(r15)				# 3734
	lw		r61, 0(r62)				# 14374
	fmul	r61, r13, r61				# 14374
	fmul	r54, r7, r7				# 14400
	lw		r13, 1(r62)				# 14400
	fmul	r13, r54, r13				# 14374
	fadd	r61, r61, r13				# 14374
	fmul	r13, r25, r25				# 14426
	lw		r62, 2(r62)				# 14426
	fmul	r62, r13, r62				# 14374
	fadd	r61, r61, r62				# 14354
	lw		r62, 3(r15)				# 3553
	cmpi	r62, 0
	beq		.b50250				# 14456
.b50251:
	fmul	r13, r7, r25				# 14522
	lw		r15, 9(r15)				# 5989
	lw		r62, 0(r15)				# 14522
	fmul	r62, r13, r62				# 14503
	fadd	r62, r61, r62				# 14503
	fmul	r13, r25, r51				# 14556
	lw		r61, 1(r15)				# 14556
	fmul	r61, r13, r61				# 14503
	fadd	r62, r62, r61				# 14503
	fmul	r51, r51, r7				# 14590
	lw		r61, 2(r15)				# 14590
	fmul	r61, r51, r61				# 14503
	fadd	r61, r62, r61				# 14503
	cmpi	r30, 3
	beq		.b50253				# 21917
.b50254:
.b50252:
	sw		r61, 3(r28)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50242				# 21420
	b		.b50240
.b50253:
	addis	r62, r0, 16256				# 21937
	fsub	r61, r61, r62				# 21937
	b		.b50252				# 21937
.b50250:
	cmpi	r30, 3
	beq		.b50253				# 21917
	b		.b50254
.b50244:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50242				# 21420
	b		.b50240
.b50245:
	lw		r51, 4(r15)				# 4293
	lw		r61, 0(r28)				# 21728
	lw		r62, 1(r28)				# 21728
	lw		r15, 0(r51)				# 2037
	fmul	r15, r15, r61				# 2037
	lw		r61, 1(r51)				# 2052
	fmul	r61, r61, r62				# 2037
	fadd	r62, r15, r61				# 2037
	lw		r61, 2(r51)				# 2067
	fmul	r61, r61, r25				# 2037
	fadd	r61, r62, r61				# 21713
	sw		r61, 3(r28)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50242				# 21420
	b		.b50240
.b50232:
	addi	r61, r0, 0				# 3188
.b50235:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -25(r3)
	addi	r3, r3, -26
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 26
	lw		r63, -25(r3)
	mtlr	r63				# 35766
	b		.b50234				# 35766
.b50215:
	lli		r9, objects.2536				# 21445
	lwx		r25, r9, r61				# 21445
	lw		r30, 10(r25)				# 6561
	lw		r13, 1(r25)				# 2994
	lw		r9, 0(r7)				# 21561
	lw		r62, 5(r25)				# 4475
	lw		r28, 0(r62)				# 21561
	fsub	r9, r9, r28				# 21547
	sw		r9, 0(r30)				# 21547
	lw		r28, 1(r7)				# 21603
	lw		r9, 1(r62)				# 21603
	fsub	r9, r28, r9				# 21589
	sw		r9, 1(r30)				# 21547
	lw		r28, 2(r7)				# 21645
	lw		r9, 2(r62)				# 21645
	fsub	r62, r28, r9				# 21631
	sw		r62, 2(r30)				# 21547
	cmpi	r13, 2
	beq		.b50218				# 21673
.b50219:
	cmpi	r13, 2
	ble		.b50217				# 21798
.b50221:
	lw		r28, 0(r30)				# 21847
	lw		r51, 1(r30)				# 21847
	fmul	r15, r28, r28				# 14374
	lw		r54, 4(r25)				# 3734
	lw		r9, 0(r54)				# 14374
	fmul	r10, r15, r9				# 14374
	fmul	r15, r51, r51				# 14400
	lw		r9, 1(r54)				# 14400
	fmul	r9, r15, r9				# 14374
	fadd	r15, r10, r9				# 14374
	fmul	r9, r62, r62				# 14426
	lw		r10, 2(r54)				# 14426
	fmul	r9, r9, r10				# 14374
	fadd	r9, r15, r9				# 14354
	lw		r15, 3(r25)				# 3553
	cmpi	r15, 0
	beq		.b50223				# 14456
.b50224:
	fmul	r15, r51, r62				# 14522
	lw		r10, 9(r25)				# 5989
	lw		r54, 0(r10)				# 14522
	fmul	r15, r15, r54				# 14503
	fadd	r15, r9, r15				# 14503
	fmul	r62, r62, r28				# 14556
	lw		r9, 1(r10)				# 14556
	fmul	r9, r62, r9				# 14503
	fadd	r9, r15, r9				# 14503
	fmul	r62, r28, r51				# 14590
	lw		r28, 2(r10)				# 14590
	fmul	r28, r62, r28				# 14503
	fadd	r9, r9, r28				# 14503
	cmpi	r13, 3
	beq		.b50226				# 21917
.b50227:
.b50225:
	sw		r9, 3(r30)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50215				# 21420
	b		.b50213
.b50226:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b50225				# 21937
.b50223:
	cmpi	r13, 3
	beq		.b50226				# 21917
	b		.b50227
.b50217:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50215				# 21420
	b		.b50213
.b50218:
	lw		r15, 4(r25)				# 4293
	lw		r28, 0(r30)				# 21728
	lw		r10, 1(r30)				# 21728
	lw		r9, 0(r15)				# 2037
	fmul	r28, r9, r28				# 2037
	lw		r9, 1(r15)				# 2052
	fmul	r9, r9, r10				# 2037
	fadd	r28, r28, r9				# 2037
	lw		r9, 2(r15)				# 2067
	fmul	r9, r9, r62				# 2037
	fadd	r9, r28, r9				# 21713
	sw		r9, 3(r30)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50215				# 21420
	b		.b50213
.b50192:
	lw		r61, -9(r3)				# 38355
	lwx		r61, r61, r15				# 38355
	lw		r61, 2(r61)				# 7046
	lwx		r61, r61, r9				# 38352
	cmp		r61, r51
	beq		.b50194				# 38352
.b50195:
	addi	r61, r0, 0				# 38557
	sw		r9, -15(r3)				# 37563
	cmpi	r9, 4
	ble		.b50203				# 37563
	b		.b50040
.b50194:
	addi	r61, r15, -1				# 38426
	lw		r28, -10(r3)				# 38411
	lwx		r61, r28, r61				# 38411
	lw		r61, 2(r61)				# 7046
	lwx		r61, r61, r9				# 38408
	cmp		r61, r51
	beq		.b50196				# 38408
.b50197:
	addi	r61, r0, 0				# 38542
	sw		r9, -15(r3)				# 37563
	cmpi	r9, 4
	ble		.b50203				# 37563
	b		.b50040
.b50196:
	addi	r61, r15, 1				# 38478
	lwx		r61, r28, r61				# 38463
	lw		r61, 2(r61)				# 7046
	lwx		r61, r61, r9				# 38460
	cmp		r61, r51
	beq		.b50198				# 38460
.b50199:
	addi	r61, r0, 0				# 38525
	sw		r9, -15(r3)				# 37563
	cmpi	r9, 4
	ble		.b50203				# 37563
	b		.b50040
.b50198:
	addi	r61, r0, 1				# 38514
	lw		r61, 3(r10)				# 7193
	lwx		r61, r61, r9				# 38838
	cmpi	r61, 0
	beq		.b50345				# 38838
.b50347:
	lw		r62, 5(r62)				# 7491
	addi	r28, r15, -1				# 37080
	lw		r61, -10(r3)				# 37055
	lwx		r28, r61, r28				# 37055
	lw		r51, 5(r28)				# 7491
	lw		r25, 5(r10)				# 7491
	addi	r28, r15, 1				# 37187
	lwx		r61, r61, r28				# 37162
	lw		r28, 5(r61)				# 7491
	lw		r61, -9(r3)				# 37215
	lwx		r61, r61, r15				# 37215
	lw		r15, 5(r61)				# 7491
	lwx		r62, r62, r9				# 37255
	lw		r13, 0(r62)				# 1353
	lli		r7, diffuse_ray.2584				# 1353
	sw		r13, 0(r7)				# 1353
	lw		r61, 1(r62)				# 1376
	sw		r61, 1(r7)				# 1353
	lw		r54, 2(r62)				# 1399
	sw		r54, 2(r7)				# 37255
	lwx		r51, r51, r9				# 37289
	lw		r62, 0(r51)				# 2282
	fadd	r30, r13, r62				# 2270
	sw		r30, 0(r7)				# 2270
	lw		r62, 1(r51)				# 2315
	fadd	r62, r61, r62				# 2303
	sw		r62, 1(r7)				# 2270
	lw		r61, 2(r51)				# 2348
	fadd	r13, r54, r61				# 2336
	sw		r13, 2(r7)				# 37255
	lwx		r54, r25, r9				# 37325
	lw		r61, 0(r54)				# 2282
	fadd	r61, r30, r61				# 2270
	sw		r61, 0(r7)				# 2270
	lw		r51, 1(r54)				# 2315
	fadd	r30, r62, r51				# 2303
	sw		r30, 1(r7)				# 2270
	lw		r62, 2(r54)				# 2348
	fadd	r51, r13, r62				# 2336
	sw		r51, 2(r7)				# 37255
	lwx		r28, r28, r9				# 37363
	lw		r62, 0(r28)				# 2282
	fadd	r62, r61, r62				# 2270
	sw		r62, 0(r7)				# 2270
	lw		r61, 1(r28)				# 2315
	fadd	r61, r30, r61				# 2303
	sw		r61, 1(r7)				# 2270
	lw		r28, 2(r28)				# 2348
	fadd	r51, r51, r28				# 2336
	sw		r51, 2(r7)				# 37255
	lwx		r54, r15, r9				# 37400
	lw		r28, 0(r54)				# 2282
	fadd	r13, r62, r28				# 2270
	sw		r13, 0(r7)				# 2270
	lw		r28, 1(r54)				# 2315
	fadd	r15, r61, r28				# 2303
	sw		r15, 1(r7)				# 2270
	lw		r61, 2(r54)				# 2348
	fadd	r51, r51, r61				# 2336
	sw		r51, 2(r7)				# 37255
	lw		r61, 4(r10)				# 7334
	lwx		r10, r61, r9				# 37473
	lli		r62, rgb.2587				# 2671
	lw		r28, 0(r62)				# 2671
	lw		r61, 0(r10)				# 2683
	fmul	r61, r61, r13				# 2671
	fadd	r61, r28, r61				# 2659
	sw		r61, 0(r62)				# 2659
	lw		r28, 1(r62)				# 2713
	lw		r61, 1(r10)				# 2725
	fmul	r61, r61, r15				# 2713
	fadd	r61, r28, r61				# 2701
	sw		r61, 1(r62)				# 2659
	lw		r28, 2(r62)				# 2755
	lw		r61, 2(r10)				# 2767
	fmul	r61, r61, r51				# 2755
	fadd	r61, r28, r61				# 2743
	sw		r61, 2(r62)				# 2743
	addi	r9, r9, 1				# 38929
	cmpi	r9, 4
	ble		.b50187				# 38662
	b		.b50040
.b50345:
	addi	r9, r9, 1				# 38929
	cmpi	r9, 4
	ble		.b50187				# 38662
	b		.b50040
.b50038:
	addi	r9, r0, 0				# 38029
	addi	r9, r0, 0				# 37563
	sw		r9, -15(r3)				# 37563
.b50044:
	lw		r10, -14(r3)				# 7046
	lw		r61, 2(r10)				# 7046
	lwx		r61, r61, r9				# 37630
	cmpi	r61, 0
	bge		.b50046				# 37630
	b		.b50040
.b50046:
	lw		r61, 3(r10)				# 7193
	lwx		r61, r61, r9				# 37719
	cmpi	r61, 0
	beq		.b50048				# 37719
.b50050:
	lw		r28, 5(r10)				# 7491
	lw		r51, 7(r10)				# 7939
	lw		r15, 1(r10)				# 6897
	lw		r61, 4(r10)				# 7334
	sw		r61, -16(r3)				# 7334
	lwx		r61, r28, r9				# 36743
	lw		r28, 0(r61)				# 1353
	sw		r28, -17(r3)				# 1353
	lli		r62, diffuse_ray.2584				# 1353
	sw		r28, 0(r62)				# 1353
	lw		r28, 1(r61)				# 1376
	sw		r28, -18(r3)				# 1376
	sw		r28, 1(r62)				# 1353
	lw		r61, 2(r61)				# 1399
	sw		r61, -19(r3)				# 1399
	sw		r61, 2(r62)				# 36743
	lw		r61, 6(r10)				# 7634
	lw		r28, 0(r61)				# 36779
	sw		r28, -20(r3)				# 36779
	lwx		r61, r51, r9				# 36779
	sw		r61, -21(r3)				# 36779
	lwx		r13, r15, r9				# 36779
	sw		r13, -22(r3)				# 36779
	cmpi	r28, 0
	beq		.b50051				# 36097
.b50053:
	lli		r9, dirvecs.2624				# 36123
	lw		r9, 0(r9)				# 36123
	sw		r9, -23(r3)				# 36123
	lw		r61, 0(r13)				# 1353
	lli		r9, startp_fast.2602				# 1353
	sw		r61, 0(r9)				# 1353
	lw		r61, 1(r13)				# 1376
	sw		r61, 1(r9)				# 1353
	lw		r61, 2(r13)				# 1399
	sw		r61, 2(r9)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b50056				# 21420
.b50054:
	addi	r9, r0, 118				# 35584
	sw		r9, -24(r3)				# 35584
.b50070:
	lw		r61, -23(r3)				# 35627
	lwx		r1, r61, r9				# 35627
	lw		r51, 0(r1)				# 8078
	lw		r15, 0(r51)				# 1949
	lw		r62, -21(r3)				# 1949
	lw		r28, 0(r62)				# 1949
	fmul	r28, r15, r28				# 1949
	lw		r10, 1(r51)				# 1967
	lw		r15, 1(r62)				# 1967
	fmul	r15, r10, r15				# 1949
	fadd	r15, r28, r15				# 1949
	lw		r28, 2(r51)				# 1985
	lw		r62, 2(r62)				# 1985
	fmul	r28, r28, r62				# 1949
	fadd	r62, r15, r28				# 35609
	addi	r28, r0, 0				# 35671
	fcmp	r28, r62
	ble		.b50073				# 3188
.b50074:
	addi	r28, r0, 1				# 3188
.b50077:
	addi	r9, r9, 1				# 35712
	lwx		r1, r61, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r62, r9				# 35694
	mflr	r63
	sw		r63, -25(r3)
	addi	r3, r3, -26
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 26
	lw		r63, -25(r3)
	mtlr	r63				# 35694
.b50075:
	lw		r9, -24(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -24(r3)				# 35584
	cmpi	r9, 0
	bge		.b50070				# 35584
.b50051:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 1
	beq		.b50078				# 36180
.b50080:
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
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b50083				# 21420
.b50081:
	addi	r9, r0, 118				# 35584
	sw		r9, -26(r3)				# 35584
.b50097:
	lw		r28, -25(r3)				# 35627
	lwx		r1, r28, r9				# 35627
	lw		r15, 0(r1)				# 8078
	lw		r62, 0(r15)				# 1949
	lw		r10, -21(r3)				# 1949
	lw		r61, 0(r10)				# 1949
	fmul	r62, r62, r61				# 1949
	lw		r61, 1(r15)				# 1967
	lw		r51, 1(r10)				# 1967
	fmul	r61, r61, r51				# 1949
	fadd	r62, r62, r61				# 1949
	lw		r61, 2(r15)				# 1985
	lw		r15, 2(r10)				# 1985
	fmul	r61, r61, r15				# 1949
	fadd	r61, r62, r61				# 35609
	addi	r62, r0, 0				# 35671
	fcmp	r62, r61
	ble		.b50100				# 3188
.b50101:
	addi	r62, r0, 1				# 3188
.b50104:
	addi	r9, r9, 1				# 35712
	lwx		r1, r28, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r61, r9				# 35694
	mflr	r63
	sw		r63, -27(r3)
	addi	r3, r3, -28
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 28
	lw		r63, -27(r3)
	mtlr	r63				# 35694
.b50102:
	lw		r9, -26(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -26(r3)				# 35584
	cmpi	r9, 0
	bge		.b50097				# 35584
.b50078:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 2
	beq		.b50105				# 36263
.b50107:
	lli		r9, dirvecs.2624				# 36289
	lw		r9, 2(r9)				# 36289
	sw		r9, -27(r3)				# 36289
	lw		r7, -22(r3)				# 1353
	lw		r9, 0(r7)				# 1353
	lli		r61, startp_fast.2602				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r7)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r7)				# 1399
	sw		r9, 2(r61)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50110				# 21420
.b50108:
	addi	r9, r0, 118				# 35584
	sw		r9, -28(r3)				# 35584
.b50124:
	lw		r62, -27(r3)				# 35627
	lwx		r1, r62, r9				# 35627
	lw		r28, 0(r1)				# 8078
	lw		r15, 0(r28)				# 1949
	lw		r10, -21(r3)				# 1949
	lw		r61, 0(r10)				# 1949
	fmul	r15, r15, r61				# 1949
	lw		r61, 1(r28)				# 1967
	lw		r51, 1(r10)				# 1967
	fmul	r61, r61, r51				# 1949
	fadd	r61, r15, r61				# 1949
	lw		r15, 2(r28)				# 1985
	lw		r28, 2(r10)				# 1985
	fmul	r28, r15, r28				# 1949
	fadd	r28, r61, r28				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b50127				# 3188
.b50128:
	addi	r61, r0, 1				# 3188
.b50131:
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
.b50129:
	lw		r9, -28(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -28(r3)				# 35584
	cmpi	r9, 0
	bge		.b50124				# 35584
.b50105:
	lw		r9, -20(r3)				# 36097
	cmpi	r9, 3
	beq		.b50132				# 36346
.b50134:
	lli		r9, dirvecs.2624				# 36372
	lw		r9, 3(r9)				# 36372
	sw		r9, -29(r3)				# 36372
	lw		r30, -22(r3)				# 1353
	lw		r61, 0(r30)				# 1353
	lli		r9, startp_fast.2602				# 1353
	sw		r61, 0(r9)				# 1353
	lw		r61, 1(r30)				# 1376
	sw		r61, 1(r9)				# 1353
	lw		r61, 2(r30)				# 1399
	sw		r61, 2(r9)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b50137				# 21420
.b50135:
	addi	r9, r0, 118				# 35584
	sw		r9, -30(r3)				# 35584
.b50151:
	lw		r62, -29(r3)				# 35627
	lwx		r1, r62, r9				# 35627
	lw		r10, 0(r1)				# 8078
	lw		r61, 0(r10)				# 1949
	lw		r51, -21(r3)				# 1949
	lw		r28, 0(r51)				# 1949
	fmul	r28, r61, r28				# 1949
	lw		r15, 1(r10)				# 1967
	lw		r61, 1(r51)				# 1967
	fmul	r61, r15, r61				# 1949
	fadd	r15, r28, r61				# 1949
	lw		r28, 2(r10)				# 1985
	lw		r61, 2(r51)				# 1985
	fmul	r61, r28, r61				# 1949
	fadd	r61, r15, r61				# 35609
	addi	r28, r0, 0				# 35671
	fcmp	r28, r61
	ble		.b50154				# 3188
.b50155:
	addi	r28, r0, 1				# 3188
.b50158:
	addi	r9, r9, 1				# 35712
	lwx		r1, r62, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r61, r9				# 35694
	mflr	r63
	sw		r63, -31(r3)
	addi	r3, r3, -32
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 32
	lw		r63, -31(r3)
	mtlr	r63				# 35694
.b50156:
	lw		r9, -30(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -30(r3)				# 35584
	cmpi	r9, 0
	bge		.b50151				# 35584
.b50132:
	lw		r9, -20(r3)				# 36743
	cmpi	r9, 4
	beq		.b50159				# 36429
.b50161:
	lli		r9, dirvecs.2624				# 36455
	lw		r9, 4(r9)				# 36455
	sw		r9, -31(r3)				# 36455
	lw		r51, -22(r3)				# 1353
	lw		r61, 0(r51)				# 1353
	lli		r9, startp_fast.2602				# 1353
	sw		r61, 0(r9)				# 1353
	lw		r61, 1(r51)				# 1376
	sw		r61, 1(r9)				# 1353
	lw		r61, 2(r51)				# 1399
	sw		r61, 2(r9)				# 22055
	lw		r9, -7(r3)				# 22079
	addi	r61, r9, -1				# 22079
	cmpi	r61, 0
	bge		.b50164				# 21420
.b50162:
	addi	r9, r0, 118				# 35584
	sw		r9, -32(r3)				# 35584
.b50178:
	lw		r10, -31(r3)				# 35627
	lwx		r1, r10, r9				# 35627
	lw		r15, 0(r1)				# 8078
	lw		r28, 0(r15)				# 1949
	lw		r51, -21(r3)				# 1949
	lw		r61, 0(r51)				# 1949
	fmul	r62, r28, r61				# 1949
	lw		r28, 1(r15)				# 1967
	lw		r61, 1(r51)				# 1967
	fmul	r61, r28, r61				# 1949
	fadd	r28, r62, r61				# 1949
	lw		r61, 2(r15)				# 1985
	lw		r62, 2(r51)				# 1985
	fmul	r61, r61, r62				# 1949
	fadd	r28, r28, r61				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r28
	ble		.b50181				# 3188
.b50182:
	addi	r61, r0, 1				# 3188
.b50185:
	addi	r9, r9, 1				# 35712
	lwx		r1, r10, r9				# 35694
	addis	r9, r0, 49942				# 35738
	fdiv	r2, r28, r9				# 35694
	mflr	r63
	sw		r63, -33(r3)
	addi	r3, r3, -34
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 34
	lw		r63, -33(r3)
	mtlr	r63				# 35694
.b50183:
	lw		r9, -32(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -32(r3)				# 35584
	cmpi	r9, 0
	bge		.b50178				# 35584
.b50159:
	lw		r9, -15(r3)				# 36884
	lw		r61, -16(r3)				# 36884
	lwx		r15, r61, r9				# 36884
	lli		r61, rgb.2587				# 2671
	lw		r28, 0(r61)				# 2671
	lw		r9, 0(r15)				# 2683
	lw		r62, -17(r3)				# 2671
	fmul	r9, r9, r62				# 2671
	fadd	r9, r28, r9				# 2659
	sw		r9, 0(r61)				# 2659
	lw		r28, 1(r61)				# 2713
	lw		r62, 1(r15)				# 2725
	lw		r9, -18(r3)				# 2713
	fmul	r9, r62, r9				# 2713
	fadd	r9, r28, r9				# 2701
	sw		r9, 1(r61)				# 2659
	lw		r62, 2(r61)				# 2755
	lw		r9, 2(r15)				# 2767
	lw		r28, -19(r3)				# 2755
	fmul	r9, r9, r28				# 2755
	fadd	r9, r62, r9				# 2743
	sw		r9, 2(r61)				# 2743
.b50048:
	lw		r9, -15(r3)				# 37806
	addi	r9, r9, 1				# 37806
	sw		r9, -15(r3)				# 37563
	cmpi	r9, 4
	ble		.b50044				# 37563
	b		.b50040
.b50181:
	addi	r61, r0, 0				# 3188
.b50184:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -33(r3)
	addi	r3, r3, -34
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 34
	lw		r63, -33(r3)
	mtlr	r63				# 35766
	b		.b50183				# 35766
.b50164:
	lli		r9, objects.2536				# 21445
	lwx		r54, r9, r61				# 21445
	lw		r13, 10(r54)				# 6561
	lw		r15, 1(r54)				# 2994
	lw		r9, 0(r51)				# 21561
	lw		r62, 5(r54)				# 4475
	lw		r28, 0(r62)				# 21561
	fsub	r9, r9, r28				# 21547
	sw		r9, 0(r13)				# 21547
	lw		r9, 1(r51)				# 21603
	lw		r28, 1(r62)				# 21603
	fsub	r9, r9, r28				# 21589
	sw		r9, 1(r13)				# 21547
	lw		r28, 2(r51)				# 21645
	lw		r9, 2(r62)				# 21645
	fsub	r25, r28, r9				# 21631
	sw		r25, 2(r13)				# 21547
	cmpi	r15, 2
	beq		.b50167				# 21673
.b50168:
	cmpi	r15, 2
	ble		.b50166				# 21798
.b50170:
	lw		r10, 0(r13)				# 21847
	lw		r62, 1(r13)				# 21847
	fmul	r9, r10, r10				# 14374
	lw		r7, 4(r54)				# 3734
	lw		r28, 0(r7)				# 14374
	fmul	r30, r9, r28				# 14374
	fmul	r28, r62, r62				# 14400
	lw		r9, 1(r7)				# 14400
	fmul	r9, r28, r9				# 14374
	fadd	r30, r30, r9				# 14374
	fmul	r9, r25, r25				# 14426
	lw		r28, 2(r7)				# 14426
	fmul	r9, r9, r28				# 14374
	fadd	r9, r30, r9				# 14354
	lw		r28, 3(r54)				# 3553
	cmpi	r28, 0
	beq		.b50172				# 14456
.b50173:
	fmul	r28, r62, r25				# 14522
	lw		r54, 9(r54)				# 5989
	lw		r7, 0(r54)				# 14522
	fmul	r28, r28, r7				# 14503
	fadd	r9, r9, r28				# 14503
	fmul	r7, r25, r10				# 14556
	lw		r28, 1(r54)				# 14556
	fmul	r28, r7, r28				# 14503
	fadd	r7, r9, r28				# 14503
	fmul	r28, r10, r62				# 14590
	lw		r9, 2(r54)				# 14590
	fmul	r9, r28, r9				# 14503
	fadd	r9, r7, r9				# 14503
	cmpi	r15, 3
	beq		.b50175				# 21917
.b50176:
.b50174:
	sw		r9, 3(r13)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50164				# 21420
	b		.b50162
.b50175:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b50174				# 21937
.b50172:
	cmpi	r15, 3
	beq		.b50175				# 21917
	b		.b50176
.b50166:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50164				# 21420
	b		.b50162
.b50167:
	lw		r62, 4(r54)				# 4293
	lw		r28, 0(r13)				# 21728
	lw		r15, 1(r13)				# 21728
	lw		r9, 0(r62)				# 2037
	fmul	r9, r9, r28				# 2037
	lw		r28, 1(r62)				# 2052
	fmul	r28, r28, r15				# 2037
	fadd	r28, r9, r28				# 2037
	lw		r9, 2(r62)				# 2067
	fmul	r9, r9, r25				# 2037
	fadd	r9, r28, r9				# 21713
	sw		r9, 3(r13)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50164				# 21420
	b		.b50162
.b50154:
	addi	r28, r0, 0				# 3188
.b50157:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r61, r9				# 35766
	mflr	r63
	sw		r63, -31(r3)
	addi	r3, r3, -32
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 32
	lw		r63, -31(r3)
	mtlr	r63				# 35766
	b		.b50156				# 35766
.b50137:
	lli		r61, objects.2536				# 21445
	lwx		r54, r61, r9				# 21445
	lw		r10, 10(r54)				# 6561
	lw		r15, 1(r54)				# 2994
	lw		r28, 0(r30)				# 21561
	lw		r62, 5(r54)				# 4475
	lw		r61, 0(r62)				# 21561
	fsub	r61, r28, r61				# 21547
	sw		r61, 0(r10)				# 21547
	lw		r61, 1(r30)				# 21603
	lw		r28, 1(r62)				# 21603
	fsub	r61, r61, r28				# 21589
	sw		r61, 1(r10)				# 21547
	lw		r28, 2(r30)				# 21645
	lw		r61, 2(r62)				# 21645
	fsub	r7, r28, r61				# 21631
	sw		r7, 2(r10)				# 21547
	cmpi	r15, 2
	beq		.b50140				# 21673
.b50141:
	cmpi	r15, 2
	ble		.b50139				# 21798
.b50143:
	lw		r28, 0(r10)				# 21847
	lw		r13, 1(r10)				# 21847
	fmul	r51, r28, r28				# 14374
	lw		r62, 4(r54)				# 3734
	lw		r61, 0(r62)				# 14374
	fmul	r61, r51, r61				# 14374
	fmul	r51, r13, r13				# 14400
	lw		r25, 1(r62)				# 14400
	fmul	r51, r51, r25				# 14374
	fadd	r51, r61, r51				# 14374
	fmul	r61, r7, r7				# 14426
	lw		r62, 2(r62)				# 14426
	fmul	r61, r61, r62				# 14374
	fadd	r61, r51, r61				# 14354
	lw		r62, 3(r54)				# 3553
	cmpi	r62, 0
	beq		.b50145				# 14456
.b50146:
	fmul	r51, r13, r7				# 14522
	lw		r54, 9(r54)				# 5989
	lw		r62, 0(r54)				# 14522
	fmul	r62, r51, r62				# 14503
	fadd	r61, r61, r62				# 14503
	fmul	r51, r7, r28				# 14556
	lw		r62, 1(r54)				# 14556
	fmul	r62, r51, r62				# 14503
	fadd	r61, r61, r62				# 14503
	fmul	r28, r28, r13				# 14590
	lw		r62, 2(r54)				# 14590
	fmul	r28, r28, r62				# 14503
	fadd	r61, r61, r28				# 14503
	cmpi	r15, 3
	beq		.b50148				# 21917
.b50149:
.b50147:
	sw		r61, 3(r10)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50137				# 21420
	b		.b50135
.b50148:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50147				# 21937
.b50145:
	cmpi	r15, 3
	beq		.b50148				# 21917
	b		.b50149
.b50139:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50137				# 21420
	b		.b50135
.b50140:
	lw		r28, 4(r54)				# 4293
	lw		r62, 0(r10)				# 21728
	lw		r61, 1(r10)				# 21728
	lw		r15, 0(r28)				# 2037
	fmul	r62, r15, r62				# 2037
	lw		r15, 1(r28)				# 2052
	fmul	r61, r15, r61				# 2037
	fadd	r62, r62, r61				# 2037
	lw		r61, 2(r28)				# 2067
	fmul	r61, r61, r7				# 2037
	fadd	r61, r62, r61				# 21713
	sw		r61, 3(r10)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50137				# 21420
	b		.b50135
.b50127:
	addi	r61, r0, 0				# 3188
.b50130:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r28, r9				# 35766
	mflr	r63
	sw		r63, -29(r3)
	addi	r3, r3, -30
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 30
	lw		r63, -29(r3)
	mtlr	r63				# 35766
	b		.b50129				# 35766
.b50110:
	lli		r61, objects.2536				# 21445
	lwx		r15, r61, r9				# 21445
	lw		r10, 10(r15)				# 6561
	lw		r54, 1(r15)				# 2994
	lw		r61, 0(r7)				# 21561
	lw		r28, 5(r15)				# 4475
	lw		r62, 0(r28)				# 21561
	fsub	r61, r61, r62				# 21547
	sw		r61, 0(r10)				# 21547
	lw		r61, 1(r7)				# 21603
	lw		r62, 1(r28)				# 21603
	fsub	r61, r61, r62				# 21589
	sw		r61, 1(r10)				# 21547
	lw		r61, 2(r7)				# 21645
	lw		r28, 2(r28)				# 21645
	fsub	r25, r61, r28				# 21631
	sw		r25, 2(r10)				# 21547
	cmpi	r54, 2
	beq		.b50113				# 21673
.b50114:
	cmpi	r54, 2
	ble		.b50112				# 21798
.b50116:
	lw		r51, 0(r10)				# 21847
	lw		r30, 1(r10)				# 21847
	fmul	r61, r51, r51				# 14374
	lw		r28, 4(r15)				# 3734
	lw		r62, 0(r28)				# 14374
	fmul	r13, r61, r62				# 14374
	fmul	r62, r30, r30				# 14400
	lw		r61, 1(r28)				# 14400
	fmul	r61, r62, r61				# 14374
	fadd	r61, r13, r61				# 14374
	fmul	r62, r25, r25				# 14426
	lw		r28, 2(r28)				# 14426
	fmul	r28, r62, r28				# 14374
	fadd	r61, r61, r28				# 14354
	lw		r28, 3(r15)				# 3553
	cmpi	r28, 0
	beq		.b50118				# 14456
.b50119:
	fmul	r13, r30, r25				# 14522
	lw		r62, 9(r15)				# 5989
	lw		r28, 0(r62)				# 14522
	fmul	r28, r13, r28				# 14503
	fadd	r61, r61, r28				# 14503
	fmul	r28, r25, r51				# 14556
	lw		r15, 1(r62)				# 14556
	fmul	r28, r28, r15				# 14503
	fadd	r15, r61, r28				# 14503
	fmul	r61, r51, r30				# 14590
	lw		r28, 2(r62)				# 14590
	fmul	r61, r61, r28				# 14503
	fadd	r61, r15, r61				# 14503
	cmpi	r54, 3
	beq		.b50121				# 21917
.b50122:
.b50120:
	sw		r61, 3(r10)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50110				# 21420
	b		.b50108
.b50121:
	addis	r28, r0, 16256				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b50120				# 21937
.b50118:
	cmpi	r54, 3
	beq		.b50121				# 21917
	b		.b50122
.b50112:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50110				# 21420
	b		.b50108
.b50113:
	lw		r15, 4(r15)				# 4293
	lw		r28, 0(r10)				# 21728
	lw		r62, 1(r10)				# 21728
	lw		r61, 0(r15)				# 2037
	fmul	r61, r61, r28				# 2037
	lw		r28, 1(r15)				# 2052
	fmul	r28, r28, r62				# 2037
	fadd	r61, r61, r28				# 2037
	lw		r28, 2(r15)				# 2067
	fmul	r28, r28, r25				# 2037
	fadd	r61, r61, r28				# 21713
	sw		r61, 3(r10)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b50110				# 21420
	b		.b50108
.b50100:
	addi	r62, r0, 0				# 3188
.b50103:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r61, r9				# 35766
	mflr	r63
	sw		r63, -27(r3)
	addi	r3, r3, -28
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 28
	lw		r63, -27(r3)
	mtlr	r63				# 35766
	b		.b50102				# 35766
.b50083:
	lli		r9, objects.2536				# 21445
	lwx		r28, r9, r61				# 21445
	lw		r62, 10(r28)				# 6561
	lw		r30, 1(r28)				# 2994
	lw		r10, 0(r25)				# 21561
	lw		r15, 5(r28)				# 4475
	lw		r9, 0(r15)				# 21561
	fsub	r9, r10, r9				# 21547
	sw		r9, 0(r62)				# 21547
	lw		r10, 1(r25)				# 21603
	lw		r9, 1(r15)				# 21603
	fsub	r9, r10, r9				# 21589
	sw		r9, 1(r62)				# 21547
	lw		r10, 2(r25)				# 21645
	lw		r9, 2(r15)				# 21645
	fsub	r10, r10, r9				# 21631
	sw		r10, 2(r62)				# 21547
	cmpi	r30, 2
	beq		.b50086				# 21673
.b50087:
	cmpi	r30, 2
	ble		.b50085				# 21798
.b50089:
	lw		r54, 0(r62)				# 21847
	lw		r15, 1(r62)				# 21847
	fmul	r13, r54, r54				# 14374
	lw		r51, 4(r28)				# 3734
	lw		r9, 0(r51)				# 14374
	fmul	r13, r13, r9				# 14374
	fmul	r9, r15, r15				# 14400
	lw		r7, 1(r51)				# 14400
	fmul	r9, r9, r7				# 14374
	fadd	r7, r13, r9				# 14374
	fmul	r13, r10, r10				# 14426
	lw		r9, 2(r51)				# 14426
	fmul	r9, r13, r9				# 14374
	fadd	r9, r7, r9				# 14354
	lw		r51, 3(r28)				# 3553
	cmpi	r51, 0
	beq		.b50091				# 14456
.b50092:
	fmul	r13, r15, r10				# 14522
	lw		r28, 9(r28)				# 5989
	lw		r51, 0(r28)				# 14522
	fmul	r51, r13, r51				# 14503
	fadd	r51, r9, r51				# 14503
	fmul	r10, r10, r54				# 14556
	lw		r9, 1(r28)				# 14556
	fmul	r9, r10, r9				# 14503
	fadd	r10, r51, r9				# 14503
	fmul	r15, r54, r15				# 14590
	lw		r9, 2(r28)				# 14590
	fmul	r9, r15, r9				# 14503
	fadd	r9, r10, r9				# 14503
	cmpi	r30, 3
	beq		.b50094				# 21917
.b50095:
.b50093:
	sw		r9, 3(r62)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50083				# 21420
	b		.b50081
.b50094:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b50093				# 21937
.b50091:
	cmpi	r30, 3
	beq		.b50094				# 21917
	b		.b50095
.b50085:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50083				# 21420
	b		.b50081
.b50086:
	lw		r28, 4(r28)				# 4293
	lw		r51, 0(r62)				# 21728
	lw		r15, 1(r62)				# 21728
	lw		r9, 0(r28)				# 2037
	fmul	r9, r9, r51				# 2037
	lw		r51, 1(r28)				# 2052
	fmul	r15, r51, r15				# 2037
	fadd	r15, r9, r15				# 2037
	lw		r9, 2(r28)				# 2067
	fmul	r9, r9, r10				# 2037
	fadd	r9, r15, r9				# 21713
	sw		r9, 3(r62)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50083				# 21420
	b		.b50081
.b50073:
	addi	r28, r0, 0				# 3188
.b50076:
	addis	r9, r0, 17174				# 35806
	fdiv	r2, r62, r9				# 35766
	mflr	r63
	sw		r63, -25(r3)
	addi	r3, r3, -26
	bl		trace_diffuse_ray.3007
	addi	r3, r3, 26
	lw		r63, -25(r3)
	mtlr	r63				# 35766
	b		.b50075				# 35766
.b50056:
	lli		r9, objects.2536				# 21445
	lwx		r15, r9, r61				# 21445
	lw		r54, 10(r15)				# 6561
	lw		r25, 1(r15)				# 2994
	lw		r62, 0(r13)				# 21561
	lw		r28, 5(r15)				# 4475
	lw		r9, 0(r28)				# 21561
	fsub	r9, r62, r9				# 21547
	sw		r9, 0(r54)				# 21547
	lw		r62, 1(r13)				# 21603
	lw		r9, 1(r28)				# 21603
	fsub	r9, r62, r9				# 21589
	sw		r9, 1(r54)				# 21547
	lw		r62, 2(r13)				# 21645
	lw		r9, 2(r28)				# 21645
	fsub	r30, r62, r9				# 21631
	sw		r30, 2(r54)				# 21547
	cmpi	r25, 2
	beq		.b50059				# 21673
.b50060:
	cmpi	r25, 2
	ble		.b50058				# 21798
.b50062:
	lw		r7, 0(r54)				# 21847
	lw		r62, 1(r54)				# 21847
	fmul	r28, r7, r7				# 14374
	lw		r10, 4(r15)				# 3734
	lw		r9, 0(r10)				# 14374
	fmul	r51, r28, r9				# 14374
	fmul	r9, r62, r62				# 14400
	lw		r28, 1(r10)				# 14400
	fmul	r9, r9, r28				# 14374
	fadd	r28, r51, r9				# 14374
	fmul	r9, r30, r30				# 14426
	lw		r10, 2(r10)				# 14426
	fmul	r9, r9, r10				# 14374
	fadd	r9, r28, r9				# 14354
	lw		r28, 3(r15)				# 3553
	cmpi	r28, 0
	beq		.b50064				# 14456
.b50065:
	fmul	r28, r62, r30				# 14522
	lw		r10, 9(r15)				# 5989
	lw		r15, 0(r10)				# 14522
	fmul	r28, r28, r15				# 14503
	fadd	r28, r9, r28				# 14503
	fmul	r9, r30, r7				# 14556
	lw		r15, 1(r10)				# 14556
	fmul	r9, r9, r15				# 14503
	fadd	r9, r28, r9				# 14503
	fmul	r28, r7, r62				# 14590
	lw		r62, 2(r10)				# 14590
	fmul	r28, r28, r62				# 14503
	fadd	r9, r9, r28				# 14503
	cmpi	r25, 3
	beq		.b50067				# 21917
.b50068:
.b50066:
	sw		r9, 3(r54)				# 21903
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50056				# 21420
	b		.b50054
.b50067:
	addis	r28, r0, 16256				# 21937
	fsub	r9, r9, r28				# 21937
	b		.b50066				# 21937
.b50064:
	cmpi	r25, 3
	beq		.b50067				# 21917
	b		.b50068
.b50058:
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50056				# 21420
	b		.b50054
.b50059:
	lw		r15, 4(r15)				# 4293
	lw		r9, 0(r54)				# 21728
	lw		r62, 1(r54)				# 21728
	lw		r28, 0(r15)				# 2037
	fmul	r28, r28, r9				# 2037
	lw		r9, 1(r15)				# 2052
	fmul	r9, r9, r62				# 2037
	fadd	r28, r28, r9				# 2037
	lw		r9, 2(r15)				# 2067
	fmul	r9, r9, r30				# 2037
	fadd	r9, r28, r9				# 21713
	sw		r9, 3(r54)				# 21713
	addi	r61, r61, -1				# 21974
	cmpi	r61, 0
	bge		.b50056				# 21420
	b		.b50054
.b50036:
	addi	r9, r0, 0				# 38046
	addi	r9, r0, 0				# 37563
	sw		r9, -15(r3)				# 37563
	b		.b50044				# 37563
.b50034:
	addi	r9, r0, 0				# 38061
	addi	r9, r0, 0				# 37563
	sw		r9, -15(r3)				# 37563
	b		.b50044				# 37563
.b50032:
	addi	r9, r0, 0				# 38074
	addi	r9, r0, 0				# 37563
	sw		r9, -15(r3)				# 37563
	b		.b50044				# 37563
.b50024:
	addi	r9, r0, 0				# 41477
	sw		r9, -13(r3)				# 41477
	b		.b50030				# 41470
.b49727:
	lli		r51, objects.2536				# 46538
	lwx		r61, r51, r28				# 46538
	lw		r9, 2(r61)				# 3185
	cmpi	r9, 2
	beq		.b49729				# 46572
	b		.b49726
.b49729:
	lw		r9, 7(r61)				# 5033
	lw		r62, 0(r9)				# 46614
	addis	r10, r0, 16256				# 46614
	fcmp	r10, r62
	ble		.b49726				# 3098
.b49732:
	lw		r9, 1(r61)				# 2994
	cmpi	r9, 1
	beq		.b49733				# 46675
.b49734:
	cmpi	r9, 2
	beq		.b49948				# 46737
	b		.b49726
.b49948:
	slwi	r9, r28, 2				# 46148
	addi	r41, r9, 1				# 46138
	fsub	r30, r10, r62				# 46200
	lw		r61, 4(r61)				# 4293
	lw		r13, 0(r61)				# 1949
	fmul	r28, r15, r13				# 1949
	lw		r62, 1(r61)				# 1967
	fmul	r9, r37, r62				# 1949
	fadd	r28, r28, r9				# 1949
	lw		r61, 2(r61)				# 1985
	fmul	r9, r7, r61				# 1949
	fadd	r28, r28, r9				# 46235
	addis	r57, r0, 16384				# 46312
	fmul	r9, r57, r13				# 46312
	fmul	r9, r9, r28				# 46312
	fsub	r15, r9, r15				# 46282
	fmul	r9, r57, r62				# 46357
	fmul	r9, r9, r28				# 46357
	fsub	r25, r9, r37				# 46282
	fmul	r9, r57, r61				# 46402
	fmul	r9, r9, r28				# 46402
	fsub	r62, r9, r7				# 46282
	mv		r13, r4
	addi	r4, r4, 3				# 44588
	addi	r37, r0, 0				# 44588
	sw		r37, 0(r13)				# 44588
	sw		r37, 1(r13)				# 44588
	sw		r37, 2(r13)				# 44588
	mv		r28, r4
	add		r4, r4, r54				# 44623
	addi	r61, r54, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r61
	ble		.b49952				# 44623
.b49950:
	mv		r7, r4
	addi	r4, r4, 2				# 44656
	sw		r13, 0(r7)				# 44656
	sw		r28, 1(r7)				# 44656
	sw		r15, 0(r13)				# 1162
	sw		r25, 1(r13)				# 1162
	sw		r62, 2(r13)				# 45563
	addi	r62, r54, -1				# 21317
	cmpi	r62, 0
	bge		.b49956				# 20796
.b49954:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r41, 0(r9)				# 45650
	sw		r7, 1(r9)				# 45650
	sw		r30, 2(r9)				# 45650
	lli		r61, reflections.2644				# 46282
	sw		r9, 0(r61)				# 46282
	addi	r9, r0, 1				# 46445
	lli		r61, n_reflections.2647				# 46445
	sw		r9, 0(r61)				# 46445
	b		.b49726				# 46445
.b49956:
	lwx		r25, r51, r62				# 20821
	lw		r9, 1(r25)				# 2994
	cmpi	r9, 1
	beq		.b49959				# 20947
.b49960:
	cmpi	r9, 2
	beq		.b50007				# 21033
.b50008:
	mv		r61, r4
	addi	r4, r4, 5				# 20110
	sw		r37, 0(r61)				# 20110
	sw		r37, 1(r61)				# 20110
	sw		r37, 2(r61)				# 20110
	sw		r37, 3(r61)				# 20110
	sw		r37, 4(r61)				# 20110
	lw		r29, 0(r13)				# 20142
	lw		r48, 1(r13)				# 20142
	lw		r46, 2(r13)				# 20142
	fmul	r9, r29, r29				# 14374
	lw		r54, 4(r25)				# 3734
	lw		r15, 0(r54)				# 14374
	fmul	r26, r9, r15				# 14374
	fmul	r9, r48, r48				# 14400
	lw		r23, 1(r54)				# 14400
	fmul	r9, r9, r23				# 14374
	fadd	r26, r26, r9				# 14374
	fmul	r9, r46, r46				# 14426
	lw		r39, 2(r54)				# 14426
	fmul	r9, r9, r39				# 14374
	fadd	r9, r26, r9				# 14354
	lw		r54, 3(r25)				# 3553
	cmpi	r54, 0
	beq		.b50013				# 14456
.b50014:
	fmul	r26, r48, r46				# 14522
	lw		r14, 9(r25)				# 5989
	lw		r19, 0(r14)				# 14522
	fmul	r26, r26, r19				# 14503
	fadd	r26, r9, r26				# 14503
	fmul	r46, r46, r29				# 14556
	lw		r9, 1(r14)				# 14556
	fmul	r9, r46, r9				# 14503
	fadd	r9, r26, r9				# 14503
	fmul	r46, r29, r48				# 14590
	lw		r26, 2(r14)				# 14590
	fmul	r46, r46, r26				# 14503
	fadd	r9, r9, r46				# 14503
.b50012:
	lw		r46, 0(r13)				# 20192
	fmul	r15, r46, r15				# 20186
	fneg	r46, r15				# 20177
	lw		r15, 1(r13)				# 20234
	fmul	r15, r15, r23				# 20228
	fneg	r26, r15				# 20219
	lw		r15, 2(r13)				# 20276
	fmul	r15, r15, r39				# 20270
	fneg	r39, r15				# 20261
	sw		r9, 0(r61)				# 20304
	cmpi	r54, 0
	beq		.b50016				# 20324
.b50017:
	lw		r54, 2(r13)				# 20379
	lw		r23, 9(r25)				# 6179
	lw		r15, 1(r23)				# 20379
	fmul	r25, r54, r15				# 20379
	lw		r15, 1(r13)				# 20404
	lw		r54, 2(r23)				# 20404
	fmul	r15, r15, r54				# 20379
	fadd	r15, r25, r15				# 20372
	fdiv	r15, r15, r57				# 20366
	fsub	r15, r46, r15				# 20353
	sw		r15, 1(r61)				# 20353
	lw		r54, 2(r13)				# 20458
	lw		r15, 0(r23)				# 20458
	fmul	r15, r54, r15				# 20458
	lw		r54, 0(r13)				# 20483
	lw		r25, 2(r23)				# 20483
	fmul	r54, r54, r25				# 20458
	fadd	r15, r15, r54				# 20451
	fdiv	r15, r15, r57				# 20445
	fsub	r15, r26, r15				# 20432
	sw		r15, 2(r61)				# 20353
	lw		r54, 1(r13)				# 20537
	lw		r15, 0(r23)				# 20537
	fmul	r15, r54, r15				# 20537
	lw		r54, 0(r13)				# 20562
	lw		r25, 1(r23)				# 20562
	fmul	r54, r54, r25				# 20537
	fadd	r15, r15, r54				# 20530
	fdiv	r15, r15, r57				# 20524
	fsub	r15, r39, r15				# 20511
	sw		r15, 3(r61)				# 20511
	fcmp	r9, r37
	beq		.b50018				# 3128
.b50020:
	fdiv	r9, r10, r9				# 20696
	sw		r9, 4(r61)				# 20696
.b50018:
	swx		r61, r62, r28				# 21165
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49956				# 20796
	b		.b49954
.b50016:
	sw		r46, 1(r61)				# 20601
	sw		r26, 2(r61)				# 20601
	sw		r39, 3(r61)				# 20643
	fcmp	r9, r37
	beq		.b50018				# 3128
	b		.b50020
.b50013:
	b		.b50012				# 14482
.b50007:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	sw		r37, 0(r9)				# 19730
	sw		r37, 1(r9)				# 19730
	sw		r37, 2(r9)				# 19730
	sw		r37, 3(r9)				# 19730
	lw		r61, 0(r13)				# 19764
	lw		r25, 4(r25)				# 3734
	lw		r15, 0(r25)				# 19764
	fmul	r54, r61, r15				# 19764
	lw		r61, 1(r13)				# 19790
	lw		r15, 1(r25)				# 19790
	fmul	r61, r61, r15				# 19764
	fadd	r54, r54, r61				# 19764
	lw		r15, 2(r13)				# 19816
	lw		r61, 2(r25)				# 19816
	fmul	r61, r15, r61				# 19764
	fadd	r15, r54, r61				# 19752
	fcmp	r15, r37
	ble		.b50010				# 3158
.b50011:
	addis	r61, r0, 49024				# 19882
	fdiv	r61, r61, r15				# 19869
	sw		r61, 0(r9)				# 19869
	lw		r61, 0(r25)				# 19916
	fdiv	r61, r61, r15				# 19910
	fneg	r61, r61				# 19897
	sw		r61, 1(r9)				# 19869
	lw		r61, 1(r25)				# 19958
	fdiv	r61, r61, r15				# 19952
	fneg	r61, r61				# 19939
	sw		r61, 2(r9)				# 19869
	lw		r61, 2(r25)				# 20000
	fdiv	r61, r61, r15				# 19994
	fneg	r61, r61				# 19981
	sw		r61, 3(r9)				# 19981
.b50009:
	swx		r9, r62, r28				# 21074
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49956				# 20796
	b		.b49954
.b50010:
	sw		r37, 0(r9)				# 20032
	b		.b50009				# 20032
.b49959:
	mv		r9, r4
	addi	r4, r4, 6				# 19127
	addi	r61, r0, 0				# 19127
.b49963:
	swx		r37, r61, r9				# 19127
	addi	r61, r61, 1				# 19127
	cmpi	r61, 5
	ble		.b49963				# 19127
.b49961:
	lw		r61, 0(r13)				# 19153
	fcmp	r61, r37
	beq		.b49966				# 3128
.b49967:
	lw		r54, 6(r25)				# 3372
	lw		r61, 0(r13)				# 19253
	fcmp	r37, r61
	ble		.b49969				# 3188
.b49970:
	addi	r15, r0, 1				# 3188
	cmpi	r54, 0
	beq		.b49972				# 765
.b49973:
	cmpi	r15, 0
	beq		.b49974				# 775
.b49975:
	addi	r15, r0, 0				# 775
	lw		r61, 4(r25)				# 3734
	lw		r61, 0(r61)				# 19222
	fneg	r61, r61				# 3025
.b49976:
	sw		r61, 0(r9)				# 19209
	lw		r61, 0(r13)				# 19302
	fdiv	r61, r10, r61				# 19289
	sw		r61, 1(r9)				# 19289
	lw		r61, 1(r13)				# 19327
	fcmp	r61, r37
	beq		.b49980				# 3128
.b49981:
	lw		r15, 6(r25)				# 3372
	lw		r61, 1(r13)				# 19426
	fcmp	r37, r61
	ble		.b49983				# 3188
.b49984:
	addi	r61, r0, 1				# 3188
	cmpi	r15, 0
	beq		.b49986				# 765
.b49987:
	cmpi	r61, 0
	beq		.b49988				# 775
.b49989:
	addi	r61, r0, 0				# 775
	lw		r15, 4(r25)				# 3920
	lw		r15, 1(r15)				# 19395
	fneg	r15, r15				# 3025
.b49990:
	sw		r15, 2(r9)				# 19382
	lw		r61, 1(r13)				# 19475
	fdiv	r61, r10, r61				# 19462
	sw		r61, 3(r9)				# 19462
	lw		r61, 2(r13)				# 19500
	fcmp	r61, r37
	beq		.b49994				# 3128
.b49995:
	lw		r61, 6(r25)				# 3372
	lw		r15, 2(r13)				# 19599
	fcmp	r37, r15
	ble		.b49997				# 3188
.b49998:
	addi	r15, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b50000				# 765
.b50001:
	cmpi	r15, 0
	beq		.b50002				# 775
.b50003:
	addi	r15, r0, 0				# 775
	lw		r61, 4(r25)				# 4105
	lw		r61, 2(r61)				# 19568
	fneg	r61, r61				# 3025
.b50004:
	sw		r61, 4(r9)				# 19555
	lw		r61, 2(r13)				# 19648
	fdiv	r61, r10, r61				# 19635
	sw		r61, 5(r9)				# 19635
.b49993:
	swx		r9, r62, r28				# 20985
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49956				# 20796
	b		.b49954
.b50002:
	addi	r15, r0, 1				# 775
	lw		r61, 4(r25)				# 4105
	lw		r61, 2(r61)				# 19568
	b		.b50004				# 918
.b50000:
	lw		r61, 4(r25)				# 4105
	lw		r61, 2(r61)				# 19568
	cmpi	r15, 0
	beq		.b50005				# 905
.b50006:
	b		.b50004				# 918
.b50005:
	fneg	r61, r61				# 3025
	b		.b50004				# 3025
.b49997:
	addi	r15, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b50000				# 765
	b		.b50001
.b49994:
	sw		r37, 5(r9)				# 19525
	b		.b49993				# 19525
.b49988:
	addi	r61, r0, 1				# 775
	lw		r15, 4(r25)				# 3920
	lw		r15, 1(r15)				# 19395
	b		.b49990				# 918
.b49986:
	lw		r15, 4(r25)				# 3920
	lw		r15, 1(r15)				# 19395
	cmpi	r61, 0
	beq		.b49991				# 905
.b49992:
	b		.b49990				# 918
.b49991:
	fneg	r15, r15				# 3025
	b		.b49990				# 3025
.b49983:
	addi	r61, r0, 0				# 3188
	cmpi	r15, 0
	beq		.b49986				# 765
	b		.b49987
.b49980:
	sw		r37, 3(r9)				# 19352
	lw		r61, 2(r13)				# 19500
	fcmp	r61, r37
	beq		.b49994				# 3128
	b		.b49995
.b49974:
	addi	r15, r0, 1				# 775
	lw		r61, 4(r25)				# 3734
	lw		r61, 0(r61)				# 19222
	b		.b49976				# 918
.b49972:
	lw		r61, 4(r25)				# 3734
	lw		r61, 0(r61)				# 19222
	cmpi	r15, 0
	beq		.b49977				# 905
.b49978:
	b		.b49976				# 918
.b49977:
	fneg	r61, r61				# 3025
	b		.b49976				# 3025
.b49969:
	addi	r15, r0, 0				# 3188
	cmpi	r54, 0
	beq		.b49972				# 765
	b		.b49973
.b49966:
	sw		r37, 1(r9)				# 19179
	lw		r61, 1(r13)				# 19327
	fcmp	r61, r37
	beq		.b49980				# 3128
	b		.b49981
.b49952:
	swx		r13, r9, r28				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r61
	ble		.b49952				# 44623
	b		.b49950
.b49733:
	slwi	r26, r28, 2				# 45726
	fsub	r30, r10, r62				# 45784
	fneg	r41, r15				# 45819
	fneg	r57, r37				# 45848
	fneg	r39, r7				# 45877
	addi	r23, r26, 1				# 45906
	mv		r61, r4
	addi	r4, r4, 3				# 44588
	addi	r25, r0, 0				# 44588
	sw		r25, 0(r61)				# 44588
	sw		r25, 1(r61)				# 44588
	sw		r25, 2(r61)				# 44588
	mv		r9, r4
	add		r4, r4, r54				# 44623
	addi	r62, r54, -1				# 44623
	addi	r28, r0, 0				# 44623
	cmp		r28, r62
	ble		.b49737				# 44623
.b49735:
	mv		r46, r4
	addi	r4, r4, 2				# 44656
	sw		r61, 0(r46)				# 44656
	sw		r9, 1(r46)				# 44656
	sw		r15, 0(r61)				# 1162
	sw		r57, 1(r61)				# 1162
	sw		r39, 2(r61)				# 45563
	addi	r62, r54, -1				# 21317
	cmpi	r62, 0
	bge		.b49741				# 20796
.b49739:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r23, 0(r9)				# 45650
	sw		r46, 1(r9)				# 45650
	sw		r30, 2(r9)				# 45650
	lli		r46, reflections.2644				# 45906
	sw		r9, 0(r46)				# 45906
	addi	r48, r26, 2				# 45954
	mv		r9, r4
	addi	r4, r4, 3				# 44588
	sw		r25, 0(r9)				# 44588
	sw		r25, 1(r9)				# 44588
	sw		r25, 2(r9)				# 44588
	mv		r23, r4
	add		r4, r4, r54				# 44623
	addi	r28, r54, -1				# 44623
	addi	r61, r0, 0				# 44623
	cmp		r61, r28
	ble		.b49808				# 44623
.b49806:
	mv		r13, r4
	addi	r4, r4, 2				# 44656
	sw		r9, 0(r13)				# 44656
	sw		r23, 1(r13)				# 44656
	sw		r41, 0(r9)				# 1162
	sw		r37, 1(r9)				# 1162
	sw		r39, 2(r9)				# 45563
	addi	r28, r54, -1				# 21317
	cmpi	r28, 0
	bge		.b49812				# 20796
.b49810:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r48, 0(r9)				# 45650
	sw		r13, 1(r9)				# 45650
	sw		r30, 2(r9)				# 45650
	sw		r9, 1(r46)				# 45906
	addi	r37, r26, 3				# 46006
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
	ble		.b49879				# 44623
.b49877:
	mv		r61, r4
	addi	r4, r4, 2				# 44656
	sw		r13, 0(r61)				# 44656
	sw		r9, 1(r61)				# 44656
	sw		r41, 0(r13)				# 1162
	sw		r57, 1(r13)				# 1162
	sw		r7, 2(r13)				# 45563
	addi	r28, r54, -1				# 21317
	cmpi	r28, 0
	bge		.b49883				# 20796
.b49881:
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	sw		r37, 0(r9)				# 45650
	sw		r61, 1(r9)				# 45650
	sw		r30, 2(r9)				# 45650
	sw		r9, 2(r46)				# 45906
	addi	r61, r0, 3				# 46058
	lli		r9, n_reflections.2647				# 46058
	sw		r61, 0(r9)				# 46058
	b		.b49726				# 46058
.b49883:
	lwx		r41, r51, r28				# 20821
	lw		r62, 1(r41)				# 2994
	cmpi	r62, 1
	beq		.b49886				# 20947
.b49887:
	cmpi	r62, 2
	beq		.b49934				# 21033
.b49935:
	mv		r15, r4
	addi	r4, r4, 5				# 20110
	sw		r25, 0(r15)				# 20110
	sw		r25, 1(r15)				# 20110
	sw		r25, 2(r15)				# 20110
	sw		r25, 3(r15)				# 20110
	sw		r25, 4(r15)				# 20110
	lw		r26, 0(r13)				# 20142
	lw		r54, 1(r13)				# 20142
	lw		r39, 2(r13)				# 20142
	fmul	r62, r26, r26				# 14374
	lw		r7, 4(r41)				# 3734
	lw		r48, 0(r7)				# 14374
	fmul	r57, r62, r48				# 14374
	fmul	r62, r54, r54				# 14400
	lw		r23, 1(r7)				# 14400
	fmul	r62, r62, r23				# 14374
	fadd	r62, r57, r62				# 14374
	fmul	r57, r39, r39				# 14426
	lw		r29, 2(r7)				# 14426
	fmul	r7, r57, r29				# 14374
	fadd	r62, r62, r7				# 14354
	lw		r14, 3(r41)				# 3553
	cmpi	r14, 0
	beq		.b49940				# 14456
.b49941:
	fmul	r57, r54, r39				# 14522
	lw		r7, 9(r41)				# 5989
	lw		r19, 0(r7)				# 14522
	fmul	r57, r57, r19				# 14503
	fadd	r19, r62, r57				# 14503
	fmul	r57, r39, r26				# 14556
	lw		r62, 1(r7)				# 14556
	fmul	r62, r57, r62				# 14503
	fadd	r57, r19, r62				# 14503
	fmul	r54, r26, r54				# 14590
	lw		r62, 2(r7)				# 14590
	fmul	r62, r54, r62				# 14503
	fadd	r62, r57, r62				# 14503
.b49939:
	lw		r54, 0(r13)				# 20192
	fmul	r54, r54, r48				# 20186
	fneg	r26, r54				# 20177
	lw		r54, 1(r13)				# 20234
	fmul	r54, r54, r23				# 20228
	fneg	r57, r54				# 20219
	lw		r54, 2(r13)				# 20276
	fmul	r54, r54, r29				# 20270
	fneg	r23, r54				# 20261
	sw		r62, 0(r15)				# 20304
	cmpi	r14, 0
	beq		.b49943				# 20324
.b49944:
	lw		r54, 2(r13)				# 20379
	lw		r39, 9(r41)				# 6179
	lw		r7, 1(r39)				# 20379
	fmul	r7, r54, r7				# 20379
	lw		r54, 1(r13)				# 20404
	lw		r41, 2(r39)				# 20404
	fmul	r54, r54, r41				# 20379
	fadd	r54, r7, r54				# 20372
	addis	r41, r0, 16384				# 2996
	fdiv	r54, r54, r41				# 20366
	fsub	r54, r26, r54				# 20353
	sw		r54, 1(r15)				# 20353
	lw		r7, 2(r13)				# 20458
	lw		r54, 0(r39)				# 20458
	fmul	r26, r7, r54				# 20458
	lw		r7, 0(r13)				# 20483
	lw		r54, 2(r39)				# 20483
	fmul	r54, r7, r54				# 20458
	fadd	r54, r26, r54				# 20451
	fdiv	r54, r54, r41				# 20445
	fsub	r54, r57, r54				# 20432
	sw		r54, 2(r15)				# 20353
	lw		r54, 1(r13)				# 20537
	lw		r7, 0(r39)				# 20537
	fmul	r54, r54, r7				# 20537
	lw		r7, 0(r13)				# 20562
	lw		r57, 1(r39)				# 20562
	fmul	r7, r7, r57				# 20537
	fadd	r54, r54, r7				# 20530
	fdiv	r54, r54, r41				# 20524
	fsub	r54, r23, r54				# 20511
	sw		r54, 3(r15)				# 20511
	fcmp	r62, r25
	beq		.b49945				# 3128
.b49947:
	fdiv	r62, r10, r62				# 20696
	sw		r62, 4(r15)				# 20696
.b49945:
	swx		r15, r28, r9				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49883				# 20796
	b		.b49881
.b49943:
	sw		r26, 1(r15)				# 20601
	sw		r57, 2(r15)				# 20601
	sw		r23, 3(r15)				# 20643
	fcmp	r62, r25
	beq		.b49945				# 3128
	b		.b49947
.b49940:
	b		.b49939				# 14482
.b49934:
	mv		r62, r4
	addi	r4, r4, 4				# 19730
	sw		r25, 0(r62)				# 19730
	sw		r25, 1(r62)				# 19730
	sw		r25, 2(r62)				# 19730
	sw		r25, 3(r62)				# 19730
	lw		r7, 0(r13)				# 19764
	lw		r54, 4(r41)				# 3734
	lw		r15, 0(r54)				# 19764
	fmul	r15, r7, r15				# 19764
	lw		r41, 1(r13)				# 19790
	lw		r7, 1(r54)				# 19790
	fmul	r7, r41, r7				# 19764
	fadd	r7, r15, r7				# 19764
	lw		r41, 2(r13)				# 19816
	lw		r15, 2(r54)				# 19816
	fmul	r15, r41, r15				# 19764
	fadd	r7, r7, r15				# 19752
	fcmp	r7, r25
	ble		.b49937				# 3158
.b49938:
	addis	r15, r0, 49024				# 19882
	fdiv	r15, r15, r7				# 19869
	sw		r15, 0(r62)				# 19869
	lw		r15, 0(r54)				# 19916
	fdiv	r15, r15, r7				# 19910
	fneg	r15, r15				# 19897
	sw		r15, 1(r62)				# 19869
	lw		r15, 1(r54)				# 19958
	fdiv	r15, r15, r7				# 19952
	fneg	r15, r15				# 19939
	sw		r15, 2(r62)				# 19869
	lw		r15, 2(r54)				# 20000
	fdiv	r15, r15, r7				# 19994
	fneg	r15, r15				# 19981
	sw		r15, 3(r62)				# 19981
.b49936:
	swx		r62, r28, r9				# 21074
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49883				# 20796
	b		.b49881
.b49937:
	sw		r25, 0(r62)				# 20032
	b		.b49936				# 20032
.b49886:
	mv		r54, r4
	addi	r4, r4, 6				# 19127
	addi	r62, r0, 0				# 19127
.b49890:
	swx		r25, r62, r54				# 19127
	addi	r62, r62, 1				# 19127
	cmpi	r62, 5
	ble		.b49890				# 19127
.b49888:
	lw		r62, 0(r13)				# 19153
	fcmp	r62, r25
	beq		.b49893				# 3128
.b49894:
	lw		r15, 6(r41)				# 3372
	lw		r62, 0(r13)				# 19253
	fcmp	r25, r62
	ble		.b49896				# 3188
.b49897:
	addi	r62, r0, 1				# 3188
	cmpi	r15, 0
	beq		.b49899				# 765
.b49900:
	cmpi	r62, 0
	beq		.b49901				# 775
.b49902:
	addi	r62, r0, 0				# 775
	lw		r15, 4(r41)				# 3734
	lw		r15, 0(r15)				# 19222
	fneg	r15, r15				# 3025
.b49903:
	sw		r15, 0(r54)				# 19209
	lw		r62, 0(r13)				# 19302
	fdiv	r62, r10, r62				# 19289
	sw		r62, 1(r54)				# 19289
	lw		r62, 1(r13)				# 19327
	fcmp	r62, r25
	beq		.b49907				# 3128
.b49908:
	lw		r7, 6(r41)				# 3372
	lw		r62, 1(r13)				# 19426
	fcmp	r25, r62
	ble		.b49910				# 3188
.b49911:
	addi	r15, r0, 1				# 3188
	cmpi	r7, 0
	beq		.b49913				# 765
.b49914:
	cmpi	r15, 0
	beq		.b49915				# 775
.b49916:
	addi	r15, r0, 0				# 775
	lw		r62, 4(r41)				# 3920
	lw		r62, 1(r62)				# 19395
	fneg	r62, r62				# 3025
.b49917:
	sw		r62, 2(r54)				# 19382
	lw		r62, 1(r13)				# 19475
	fdiv	r62, r10, r62				# 19462
	sw		r62, 3(r54)				# 19462
	lw		r62, 2(r13)				# 19500
	fcmp	r62, r25
	beq		.b49921				# 3128
.b49922:
	lw		r15, 6(r41)				# 3372
	lw		r62, 2(r13)				# 19599
	fcmp	r25, r62
	ble		.b49924				# 3188
.b49925:
	addi	r62, r0, 1				# 3188
	cmpi	r15, 0
	beq		.b49927				# 765
.b49928:
	cmpi	r62, 0
	beq		.b49929				# 775
.b49930:
	addi	r62, r0, 0				# 775
	lw		r15, 4(r41)				# 4105
	lw		r15, 2(r15)				# 19568
	fneg	r15, r15				# 3025
.b49931:
	sw		r15, 4(r54)				# 19555
	lw		r62, 2(r13)				# 19648
	fdiv	r62, r10, r62				# 19635
	sw		r62, 5(r54)				# 19635
.b49920:
	swx		r54, r28, r9				# 20985
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49883				# 20796
	b		.b49881
.b49929:
	addi	r62, r0, 1				# 775
	lw		r15, 4(r41)				# 4105
	lw		r15, 2(r15)				# 19568
	b		.b49931				# 918
.b49927:
	lw		r15, 4(r41)				# 4105
	lw		r15, 2(r15)				# 19568
	cmpi	r62, 0
	beq		.b49932				# 905
.b49933:
	b		.b49931				# 918
.b49932:
	fneg	r15, r15				# 3025
	b		.b49931				# 3025
.b49924:
	addi	r62, r0, 0				# 3188
	cmpi	r15, 0
	beq		.b49927				# 765
	b		.b49928
.b49921:
	sw		r25, 5(r54)				# 19525
	b		.b49920				# 19525
.b49915:
	addi	r15, r0, 1				# 775
	lw		r62, 4(r41)				# 3920
	lw		r62, 1(r62)				# 19395
	b		.b49917				# 918
.b49913:
	lw		r62, 4(r41)				# 3920
	lw		r62, 1(r62)				# 19395
	cmpi	r15, 0
	beq		.b49918				# 905
.b49919:
	b		.b49917				# 918
.b49918:
	fneg	r62, r62				# 3025
	b		.b49917				# 3025
.b49910:
	addi	r15, r0, 0				# 3188
	cmpi	r7, 0
	beq		.b49913				# 765
	b		.b49914
.b49907:
	sw		r25, 3(r54)				# 19352
	lw		r62, 2(r13)				# 19500
	fcmp	r62, r25
	beq		.b49921				# 3128
	b		.b49922
.b49901:
	addi	r62, r0, 1				# 775
	lw		r15, 4(r41)				# 3734
	lw		r15, 0(r15)				# 19222
	b		.b49903				# 918
.b49899:
	lw		r15, 4(r41)				# 3734
	lw		r15, 0(r15)				# 19222
	cmpi	r62, 0
	beq		.b49904				# 905
.b49905:
	b		.b49903				# 918
.b49904:
	fneg	r15, r15				# 3025
	b		.b49903				# 3025
.b49896:
	addi	r62, r0, 0				# 3188
	cmpi	r15, 0
	beq		.b49899				# 765
	b		.b49900
.b49893:
	sw		r25, 1(r54)				# 19179
	lw		r62, 1(r13)				# 19327
	fcmp	r62, r25
	beq		.b49907				# 3128
	b		.b49908
.b49879:
	swx		r13, r61, r9				# 44623
	addi	r61, r61, 1				# 44623
	cmp		r61, r28
	ble		.b49879				# 44623
	b		.b49877
.b49812:
	lwx		r39, r51, r28				# 20821
	lw		r61, 1(r39)				# 2994
	cmpi	r61, 1
	beq		.b49815				# 20947
.b49816:
	cmpi	r61, 2
	beq		.b49863				# 21033
.b49864:
	mv		r61, r4
	addi	r4, r4, 5				# 20110
	sw		r25, 0(r61)				# 20110
	sw		r25, 1(r61)				# 20110
	sw		r25, 2(r61)				# 20110
	sw		r25, 3(r61)				# 20110
	sw		r25, 4(r61)				# 20110
	lw		r53, 0(r9)				# 20142
	lw		r50, 1(r9)				# 20142
	lw		r29, 2(r9)				# 20142
	fmul	r62, r53, r53				# 14374
	lw		r19, 4(r39)				# 3734
	lw		r12, 0(r19)				# 14374
	fmul	r62, r62, r12				# 14374
	fmul	r37, r50, r50				# 14400
	lw		r15, 1(r19)				# 14400
	fmul	r37, r37, r15				# 14374
	fadd	r62, r62, r37				# 14374
	fmul	r37, r29, r29				# 14426
	lw		r33, 2(r19)				# 14426
	fmul	r37, r37, r33				# 14374
	fadd	r62, r62, r37				# 14354
	lw		r14, 3(r39)				# 3553
	cmpi	r14, 0
	beq		.b49869				# 14456
.b49870:
	fmul	r19, r50, r29				# 14522
	lw		r17, 9(r39)				# 5989
	lw		r37, 0(r17)				# 14522
	fmul	r37, r19, r37				# 14503
	fadd	r62, r62, r37				# 14503
	fmul	r37, r29, r53				# 14556
	lw		r19, 1(r17)				# 14556
	fmul	r37, r37, r19				# 14503
	fadd	r19, r62, r37				# 14503
	fmul	r37, r53, r50				# 14590
	lw		r62, 2(r17)				# 14590
	fmul	r62, r37, r62				# 14503
	fadd	r62, r19, r62				# 14503
.b49868:
	lw		r37, 0(r9)				# 20192
	fmul	r37, r37, r12				# 20186
	fneg	r50, r37				# 20177
	lw		r37, 1(r9)				# 20234
	fmul	r15, r37, r15				# 20228
	fneg	r19, r15				# 20219
	lw		r15, 2(r9)				# 20276
	fmul	r15, r15, r33				# 20270
	fneg	r17, r15				# 20261
	sw		r62, 0(r61)				# 20304
	cmpi	r14, 0
	beq		.b49872				# 20324
.b49873:
	lw		r29, 2(r9)				# 20379
	lw		r37, 9(r39)				# 6179
	lw		r15, 1(r37)				# 20379
	fmul	r39, r29, r15				# 20379
	lw		r29, 1(r9)				# 20404
	lw		r15, 2(r37)				# 20404
	fmul	r15, r29, r15				# 20379
	fadd	r15, r39, r15				# 20372
	addis	r29, r0, 16384				# 2996
	fdiv	r15, r15, r29				# 20366
	fsub	r15, r50, r15				# 20353
	sw		r15, 1(r61)				# 20353
	lw		r15, 2(r9)				# 20458
	lw		r39, 0(r37)				# 20458
	fmul	r39, r15, r39				# 20458
	lw		r14, 0(r9)				# 20483
	lw		r15, 2(r37)				# 20483
	fmul	r15, r14, r15				# 20458
	fadd	r15, r39, r15				# 20451
	fdiv	r15, r15, r29				# 20445
	fsub	r15, r19, r15				# 20432
	sw		r15, 2(r61)				# 20353
	lw		r39, 1(r9)				# 20537
	lw		r15, 0(r37)				# 20537
	fmul	r39, r39, r15				# 20537
	lw		r15, 0(r9)				# 20562
	lw		r37, 1(r37)				# 20562
	fmul	r15, r15, r37				# 20537
	fadd	r15, r39, r15				# 20530
	fdiv	r15, r15, r29				# 20524
	fsub	r15, r17, r15				# 20511
	sw		r15, 3(r61)				# 20511
	fcmp	r62, r25
	beq		.b49874				# 3128
.b49876:
	fdiv	r62, r10, r62				# 20696
	sw		r62, 4(r61)				# 20696
.b49874:
	swx		r61, r28, r23				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49812				# 20796
	b		.b49810
.b49872:
	sw		r50, 1(r61)				# 20601
	sw		r19, 2(r61)				# 20601
	sw		r17, 3(r61)				# 20643
	fcmp	r62, r25
	beq		.b49874				# 3128
	b		.b49876
.b49869:
	b		.b49868				# 14482
.b49863:
	mv		r61, r4
	addi	r4, r4, 4				# 19730
	sw		r25, 0(r61)				# 19730
	sw		r25, 1(r61)				# 19730
	sw		r25, 2(r61)				# 19730
	sw		r25, 3(r61)				# 19730
	lw		r62, 0(r9)				# 19764
	lw		r15, 4(r39)				# 3734
	lw		r37, 0(r15)				# 19764
	fmul	r62, r62, r37				# 19764
	lw		r39, 1(r9)				# 19790
	lw		r37, 1(r15)				# 19790
	fmul	r37, r39, r37				# 19764
	fadd	r37, r62, r37				# 19764
	lw		r39, 2(r9)				# 19816
	lw		r62, 2(r15)				# 19816
	fmul	r62, r39, r62				# 19764
	fadd	r37, r37, r62				# 19752
	fcmp	r37, r25
	ble		.b49866				# 3158
.b49867:
	addis	r62, r0, 49024				# 19882
	fdiv	r62, r62, r37				# 19869
	sw		r62, 0(r61)				# 19869
	lw		r62, 0(r15)				# 19916
	fdiv	r62, r62, r37				# 19910
	fneg	r62, r62				# 19897
	sw		r62, 1(r61)				# 19869
	lw		r62, 1(r15)				# 19958
	fdiv	r62, r62, r37				# 19952
	fneg	r62, r62				# 19939
	sw		r62, 2(r61)				# 19869
	lw		r62, 2(r15)				# 20000
	fdiv	r62, r62, r37				# 19994
	fneg	r62, r62				# 19981
	sw		r62, 3(r61)				# 19981
.b49865:
	swx		r61, r28, r23				# 21074
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49812				# 20796
	b		.b49810
.b49866:
	sw		r25, 0(r61)				# 20032
	b		.b49865				# 20032
.b49815:
	mv		r62, r4
	addi	r4, r4, 6				# 19127
	addi	r61, r0, 0				# 19127
.b49819:
	swx		r25, r61, r62				# 19127
	addi	r61, r61, 1				# 19127
	cmpi	r61, 5
	ble		.b49819				# 19127
.b49817:
	lw		r61, 0(r9)				# 19153
	fcmp	r61, r25
	beq		.b49822				# 3128
.b49823:
	lw		r37, 6(r39)				# 3372
	lw		r61, 0(r9)				# 19253
	fcmp	r25, r61
	ble		.b49825				# 3188
.b49826:
	addi	r15, r0, 1				# 3188
	cmpi	r37, 0
	beq		.b49828				# 765
.b49829:
	cmpi	r15, 0
	beq		.b49830				# 775
.b49831:
	addi	r15, r0, 0				# 775
	lw		r61, 4(r39)				# 3734
	lw		r61, 0(r61)				# 19222
	fneg	r61, r61				# 3025
.b49832:
	sw		r61, 0(r62)				# 19209
	lw		r61, 0(r9)				# 19302
	fdiv	r61, r10, r61				# 19289
	sw		r61, 1(r62)				# 19289
	lw		r61, 1(r9)				# 19327
	fcmp	r61, r25
	beq		.b49836				# 3128
.b49837:
	lw		r61, 6(r39)				# 3372
	lw		r15, 1(r9)				# 19426
	fcmp	r25, r15
	ble		.b49839				# 3188
.b49840:
	addi	r15, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b49842				# 765
.b49843:
	cmpi	r15, 0
	beq		.b49844				# 775
.b49845:
	addi	r15, r0, 0				# 775
	lw		r61, 4(r39)				# 3920
	lw		r61, 1(r61)				# 19395
	fneg	r61, r61				# 3025
.b49846:
	sw		r61, 2(r62)				# 19382
	lw		r61, 1(r9)				# 19475
	fdiv	r61, r10, r61				# 19462
	sw		r61, 3(r62)				# 19462
	lw		r61, 2(r9)				# 19500
	fcmp	r61, r25
	beq		.b49850				# 3128
.b49851:
	lw		r37, 6(r39)				# 3372
	lw		r61, 2(r9)				# 19599
	fcmp	r25, r61
	ble		.b49853				# 3188
.b49854:
	addi	r15, r0, 1				# 3188
	cmpi	r37, 0
	beq		.b49856				# 765
.b49857:
	cmpi	r15, 0
	beq		.b49858				# 775
.b49859:
	addi	r15, r0, 0				# 775
	lw		r61, 4(r39)				# 4105
	lw		r61, 2(r61)				# 19568
	fneg	r61, r61				# 3025
.b49860:
	sw		r61, 4(r62)				# 19555
	lw		r61, 2(r9)				# 19648
	fdiv	r61, r10, r61				# 19635
	sw		r61, 5(r62)				# 19635
.b49849:
	swx		r62, r28, r23				# 20985
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49812				# 20796
	b		.b49810
.b49858:
	addi	r15, r0, 1				# 775
	lw		r61, 4(r39)				# 4105
	lw		r61, 2(r61)				# 19568
	b		.b49860				# 918
.b49856:
	lw		r61, 4(r39)				# 4105
	lw		r61, 2(r61)				# 19568
	cmpi	r15, 0
	beq		.b49861				# 905
.b49862:
	b		.b49860				# 918
.b49861:
	fneg	r61, r61				# 3025
	b		.b49860				# 3025
.b49853:
	addi	r15, r0, 0				# 3188
	cmpi	r37, 0
	beq		.b49856				# 765
	b		.b49857
.b49850:
	sw		r25, 5(r62)				# 19525
	b		.b49849				# 19525
.b49844:
	addi	r15, r0, 1				# 775
	lw		r61, 4(r39)				# 3920
	lw		r61, 1(r61)				# 19395
	b		.b49846				# 918
.b49842:
	lw		r61, 4(r39)				# 3920
	lw		r61, 1(r61)				# 19395
	cmpi	r15, 0
	beq		.b49847				# 905
.b49848:
	b		.b49846				# 918
.b49847:
	fneg	r61, r61				# 3025
	b		.b49846				# 3025
.b49839:
	addi	r15, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b49842				# 765
	b		.b49843
.b49836:
	sw		r25, 3(r62)				# 19352
	lw		r61, 2(r9)				# 19500
	fcmp	r61, r25
	beq		.b49850				# 3128
	b		.b49851
.b49830:
	addi	r15, r0, 1				# 775
	lw		r61, 4(r39)				# 3734
	lw		r61, 0(r61)				# 19222
	b		.b49832				# 918
.b49828:
	lw		r61, 4(r39)				# 3734
	lw		r61, 0(r61)				# 19222
	cmpi	r15, 0
	beq		.b49833				# 905
.b49834:
	b		.b49832				# 918
.b49833:
	fneg	r61, r61				# 3025
	b		.b49832				# 3025
.b49825:
	addi	r15, r0, 0				# 3188
	cmpi	r37, 0
	beq		.b49828				# 765
	b		.b49829
.b49822:
	sw		r25, 1(r62)				# 19179
	lw		r61, 1(r9)				# 19327
	fcmp	r61, r25
	beq		.b49836				# 3128
	b		.b49837
.b49808:
	swx		r9, r61, r23				# 44623
	addi	r61, r61, 1				# 44623
	cmp		r61, r28
	ble		.b49808				# 44623
	b		.b49806
.b49741:
	lwx		r14, r51, r62				# 20821
	lw		r28, 1(r14)				# 2994
	cmpi	r28, 1
	beq		.b49744				# 20947
.b49745:
	cmpi	r28, 2
	beq		.b49792				# 21033
.b49793:
	mv		r15, r4
	addi	r4, r4, 5				# 20110
	sw		r25, 0(r15)				# 20110
	sw		r25, 1(r15)				# 20110
	sw		r25, 2(r15)				# 20110
	sw		r25, 3(r15)				# 20110
	sw		r25, 4(r15)				# 20110
	lw		r53, 0(r61)				# 20142
	lw		r17, 1(r61)				# 20142
	lw		r33, 2(r61)				# 20142
	fmul	r28, r53, r53				# 14374
	lw		r13, 4(r14)				# 3734
	lw		r29, 0(r13)				# 14374
	fmul	r48, r28, r29				# 14374
	fmul	r28, r17, r17				# 14400
	lw		r12, 1(r13)				# 14400
	fmul	r28, r28, r12				# 14374
	fadd	r48, r48, r28				# 14374
	fmul	r28, r33, r33				# 14426
	lw		r50, 2(r13)				# 14426
	fmul	r28, r28, r50				# 14374
	fadd	r28, r48, r28				# 14354
	lw		r42, 3(r14)				# 3553
	cmpi	r42, 0
	beq		.b49798				# 14456
.b49799:
	fmul	r48, r17, r33				# 14522
	lw		r19, 9(r14)				# 5989
	lw		r13, 0(r19)				# 14522
	fmul	r13, r48, r13				# 14503
	fadd	r13, r28, r13				# 14503
	fmul	r28, r33, r53				# 14556
	lw		r48, 1(r19)				# 14556
	fmul	r28, r28, r48				# 14503
	fadd	r28, r13, r28				# 14503
	fmul	r48, r53, r17				# 14590
	lw		r13, 2(r19)				# 14590
	fmul	r13, r48, r13				# 14503
	fadd	r28, r28, r13				# 14503
.b49797:
	lw		r13, 0(r61)				# 20192
	fmul	r13, r13, r29				# 20186
	fneg	r48, r13				# 20177
	lw		r13, 1(r61)				# 20234
	fmul	r13, r13, r12				# 20228
	fneg	r29, r13				# 20219
	lw		r13, 2(r61)				# 20276
	fmul	r13, r13, r50				# 20270
	fneg	r17, r13				# 20261
	sw		r28, 0(r15)				# 20304
	cmpi	r42, 0
	beq		.b49801				# 20324
.b49802:
	lw		r13, 2(r61)				# 20379
	lw		r14, 9(r14)				# 6179
	lw		r19, 1(r14)				# 20379
	fmul	r13, r13, r19				# 20379
	lw		r19, 1(r61)				# 20404
	lw		r50, 2(r14)				# 20404
	fmul	r19, r19, r50				# 20379
	fadd	r13, r13, r19				# 20372
	addis	r50, r0, 16384				# 2996
	fdiv	r13, r13, r50				# 20366
	fsub	r13, r48, r13				# 20353
	sw		r13, 1(r15)				# 20353
	lw		r13, 2(r61)				# 20458
	lw		r48, 0(r14)				# 20458
	fmul	r13, r13, r48				# 20458
	lw		r48, 0(r61)				# 20483
	lw		r19, 2(r14)				# 20483
	fmul	r48, r48, r19				# 20458
	fadd	r13, r13, r48				# 20451
	fdiv	r13, r13, r50				# 20445
	fsub	r13, r29, r13				# 20432
	sw		r13, 2(r15)				# 20353
	lw		r13, 1(r61)				# 20537
	lw		r48, 0(r14)				# 20537
	fmul	r19, r13, r48				# 20537
	lw		r13, 0(r61)				# 20562
	lw		r48, 1(r14)				# 20562
	fmul	r13, r13, r48				# 20537
	fadd	r13, r19, r13				# 20530
	fdiv	r13, r13, r50				# 20524
	fsub	r13, r17, r13				# 20511
	sw		r13, 3(r15)				# 20511
	fcmp	r28, r25
	beq		.b49803				# 3128
.b49805:
	fdiv	r28, r10, r28				# 20696
	sw		r28, 4(r15)				# 20696
.b49803:
	swx		r15, r62, r9				# 21165
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49741				# 20796
	b		.b49739
.b49801:
	sw		r48, 1(r15)				# 20601
	sw		r29, 2(r15)				# 20601
	sw		r17, 3(r15)				# 20643
	fcmp	r28, r25
	beq		.b49803				# 3128
	b		.b49805
.b49798:
	b		.b49797				# 14482
.b49792:
	mv		r28, r4
	addi	r4, r4, 4				# 19730
	sw		r25, 0(r28)				# 19730
	sw		r25, 1(r28)				# 19730
	sw		r25, 2(r28)				# 19730
	sw		r25, 3(r28)				# 19730
	lw		r48, 0(r61)				# 19764
	lw		r15, 4(r14)				# 3734
	lw		r13, 0(r15)				# 19764
	fmul	r19, r48, r13				# 19764
	lw		r48, 1(r61)				# 19790
	lw		r13, 1(r15)				# 19790
	fmul	r13, r48, r13				# 19764
	fadd	r13, r19, r13				# 19764
	lw		r48, 2(r61)				# 19816
	lw		r19, 2(r15)				# 19816
	fmul	r48, r48, r19				# 19764
	fadd	r48, r13, r48				# 19752
	fcmp	r48, r25
	ble		.b49795				# 3158
.b49796:
	addis	r13, r0, 49024				# 19882
	fdiv	r13, r13, r48				# 19869
	sw		r13, 0(r28)				# 19869
	lw		r13, 0(r15)				# 19916
	fdiv	r13, r13, r48				# 19910
	fneg	r13, r13				# 19897
	sw		r13, 1(r28)				# 19869
	lw		r13, 1(r15)				# 19958
	fdiv	r13, r13, r48				# 19952
	fneg	r13, r13				# 19939
	sw		r13, 2(r28)				# 19869
	lw		r15, 2(r15)				# 20000
	fdiv	r15, r15, r48				# 19994
	fneg	r15, r15				# 19981
	sw		r15, 3(r28)				# 19981
.b49794:
	swx		r28, r62, r9				# 21074
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49741				# 20796
	b		.b49739
.b49795:
	sw		r25, 0(r28)				# 20032
	b		.b49794				# 20032
.b49744:
	mv		r13, r4
	addi	r4, r4, 6				# 19127
	addi	r28, r0, 0				# 19127
.b49748:
	swx		r25, r28, r13				# 19127
	addi	r28, r28, 1				# 19127
	cmpi	r28, 5
	ble		.b49748				# 19127
.b49746:
	lw		r28, 0(r61)				# 19153
	fcmp	r28, r25
	beq		.b49751				# 3128
.b49752:
	lw		r28, 6(r14)				# 3372
	lw		r15, 0(r61)				# 19253
	fcmp	r25, r15
	ble		.b49754				# 3188
.b49755:
	addi	r15, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49757				# 765
.b49758:
	cmpi	r15, 0
	beq		.b49759				# 775
.b49760:
	addi	r15, r0, 0				# 775
	lw		r28, 4(r14)				# 3734
	lw		r28, 0(r28)				# 19222
	fneg	r28, r28				# 3025
.b49761:
	sw		r28, 0(r13)				# 19209
	lw		r28, 0(r61)				# 19302
	fdiv	r28, r10, r28				# 19289
	sw		r28, 1(r13)				# 19289
	lw		r28, 1(r61)				# 19327
	fcmp	r28, r25
	beq		.b49765				# 3128
.b49766:
	lw		r48, 6(r14)				# 3372
	lw		r28, 1(r61)				# 19426
	fcmp	r25, r28
	ble		.b49768				# 3188
.b49769:
	addi	r15, r0, 1				# 3188
	cmpi	r48, 0
	beq		.b49771				# 765
.b49772:
	cmpi	r15, 0
	beq		.b49773				# 775
.b49774:
	addi	r15, r0, 0				# 775
	lw		r28, 4(r14)				# 3920
	lw		r28, 1(r28)				# 19395
	fneg	r28, r28				# 3025
.b49775:
	sw		r28, 2(r13)				# 19382
	lw		r28, 1(r61)				# 19475
	fdiv	r28, r10, r28				# 19462
	sw		r28, 3(r13)				# 19462
	lw		r28, 2(r61)				# 19500
	fcmp	r28, r25
	beq		.b49779				# 3128
.b49780:
	lw		r48, 6(r14)				# 3372
	lw		r28, 2(r61)				# 19599
	fcmp	r25, r28
	ble		.b49782				# 3188
.b49783:
	addi	r15, r0, 1				# 3188
	cmpi	r48, 0
	beq		.b49785				# 765
.b49786:
	cmpi	r15, 0
	beq		.b49787				# 775
.b49788:
	addi	r15, r0, 0				# 775
	lw		r28, 4(r14)				# 4105
	lw		r28, 2(r28)				# 19568
	fneg	r28, r28				# 3025
.b49789:
	sw		r28, 4(r13)				# 19555
	lw		r28, 2(r61)				# 19648
	fdiv	r28, r10, r28				# 19635
	sw		r28, 5(r13)				# 19635
.b49778:
	swx		r13, r62, r9				# 20985
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49741				# 20796
	b		.b49739
.b49787:
	addi	r15, r0, 1				# 775
	lw		r28, 4(r14)				# 4105
	lw		r28, 2(r28)				# 19568
	b		.b49789				# 918
.b49785:
	lw		r28, 4(r14)				# 4105
	lw		r28, 2(r28)				# 19568
	cmpi	r15, 0
	beq		.b49790				# 905
.b49791:
	b		.b49789				# 918
.b49790:
	fneg	r28, r28				# 3025
	b		.b49789				# 3025
.b49782:
	addi	r15, r0, 0				# 3188
	cmpi	r48, 0
	beq		.b49785				# 765
	b		.b49786
.b49779:
	sw		r25, 5(r13)				# 19525
	b		.b49778				# 19525
.b49773:
	addi	r15, r0, 1				# 775
	lw		r28, 4(r14)				# 3920
	lw		r28, 1(r28)				# 19395
	b		.b49775				# 918
.b49771:
	lw		r28, 4(r14)				# 3920
	lw		r28, 1(r28)				# 19395
	cmpi	r15, 0
	beq		.b49776				# 905
.b49777:
	b		.b49775				# 918
.b49776:
	fneg	r28, r28				# 3025
	b		.b49775				# 3025
.b49768:
	addi	r15, r0, 0				# 3188
	cmpi	r48, 0
	beq		.b49771				# 765
	b		.b49772
.b49765:
	sw		r25, 3(r13)				# 19352
	lw		r28, 2(r61)				# 19500
	fcmp	r28, r25
	beq		.b49779				# 3128
	b		.b49780
.b49759:
	addi	r15, r0, 1				# 775
	lw		r28, 4(r14)				# 3734
	lw		r28, 0(r28)				# 19222
	b		.b49761				# 918
.b49757:
	lw		r28, 4(r14)				# 3734
	lw		r28, 0(r28)				# 19222
	cmpi	r15, 0
	beq		.b49762				# 905
.b49763:
	b		.b49761				# 918
.b49762:
	fneg	r28, r28				# 3025
	b		.b49761				# 3025
.b49754:
	addi	r15, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49757				# 765
	b		.b49758
.b49751:
	sw		r25, 1(r13)				# 19179
	lw		r28, 1(r61)				# 19327
	fcmp	r28, r25
	beq		.b49765				# 3128
	b		.b49766
.b49737:
	swx		r61, r28, r9				# 44623
	addi	r28, r28, 1				# 44623
	cmp		r28, r62
	ble		.b49737				# 44623
	b		.b49735
.b49661:
	lli		r9, objects.2536				# 20821
	lwx		r46, r9, r28				# 20821
	lw		r9, 1(r46)				# 2994
	cmpi	r9, 1
	beq		.b49664				# 20947
.b49665:
	cmpi	r9, 2
	beq		.b49712				# 21033
.b49713:
	mv		r61, r4
	addi	r4, r4, 5				# 20110
	addi	r41, r0, 0				# 20110
	sw		r41, 0(r61)				# 20110
	sw		r41, 1(r61)				# 20110
	sw		r41, 2(r61)				# 20110
	sw		r41, 3(r61)				# 20110
	sw		r41, 4(r61)				# 20110
	fmul	r9, r15, r15				# 14374
	lw		r62, 4(r46)				# 3734
	lw		r51, 0(r62)				# 14374
	fmul	r9, r9, r51				# 14374
	fmul	r10, r37, r37				# 14400
	lw		r13, 1(r62)				# 14400
	fmul	r10, r10, r13				# 14374
	fadd	r9, r9, r10				# 14374
	fmul	r10, r7, r7				# 14426
	lw		r30, 2(r62)				# 14426
	fmul	r62, r10, r30				# 14374
	fadd	r9, r9, r62				# 14354
	lw		r62, 3(r46)				# 3553
	cmpi	r62, 0
	beq		.b49718				# 14456
.b49719:
	fmul	r25, r37, r7				# 14522
	lw		r57, 9(r46)				# 5989
	lw		r10, 0(r57)				# 14522
	fmul	r10, r25, r10				# 14503
	fadd	r9, r9, r10				# 14503
	fmul	r25, r7, r15				# 14556
	lw		r10, 1(r57)				# 14556
	fmul	r10, r25, r10				# 14503
	fadd	r10, r9, r10				# 14503
	fmul	r9, r15, r37				# 14590
	lw		r25, 2(r57)				# 14590
	fmul	r9, r9, r25				# 14503
	fadd	r9, r10, r9				# 14503
.b49717:
	fmul	r10, r15, r51				# 20186
	fneg	r25, r10				# 20177
	fmul	r10, r37, r13				# 20228
	fneg	r10, r10				# 20219
	fmul	r51, r7, r30				# 20270
	fneg	r51, r51				# 20261
	sw		r9, 0(r61)				# 20304
	cmpi	r62, 0
	beq		.b49721				# 20324
.b49722:
	lw		r30, 9(r46)				# 6179
	lw		r62, 1(r30)				# 20379
	fmul	r13, r7, r62				# 20379
	lw		r62, 2(r30)				# 20404
	fmul	r62, r37, r62				# 20379
	fadd	r62, r13, r62				# 20372
	addis	r13, r0, 16384				# 2996
	fdiv	r62, r62, r13				# 20366
	fsub	r62, r25, r62				# 20353
	sw		r62, 1(r61)				# 20353
	lw		r62, 0(r30)				# 20458
	fmul	r25, r7, r62				# 20458
	lw		r62, 2(r30)				# 20483
	fmul	r62, r15, r62				# 20458
	fadd	r62, r25, r62				# 20451
	fdiv	r62, r62, r13				# 20445
	fsub	r62, r10, r62				# 20432
	sw		r62, 2(r61)				# 20353
	lw		r62, 0(r30)				# 20537
	fmul	r10, r37, r62				# 20537
	lw		r62, 1(r30)				# 20562
	fmul	r62, r15, r62				# 20537
	fadd	r62, r10, r62				# 20530
	fdiv	r62, r62, r13				# 20524
	fsub	r62, r51, r62				# 20511
	sw		r62, 3(r61)				# 20511
	fcmp	r9, r41
	beq		.b49723				# 3128
.b49725:
	addis	r62, r0, 16256				# 20709
	fdiv	r9, r62, r9				# 20696
	sw		r9, 4(r61)				# 20696
.b49723:
	lli		r9, consts.2632				# 21165
	swx		r61, r28, r9				# 21165
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49661				# 20796
	b		.b49659
.b49721:
	sw		r25, 1(r61)				# 20601
	sw		r10, 2(r61)				# 20601
	sw		r51, 3(r61)				# 20643
	fcmp	r9, r41
	beq		.b49723				# 3128
	b		.b49725
.b49718:
	b		.b49717				# 14482
.b49712:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	addi	r10, r0, 0				# 19730
	sw		r10, 0(r9)				# 19730
	sw		r10, 1(r9)				# 19730
	sw		r10, 2(r9)				# 19730
	sw		r10, 3(r9)				# 19730
	lw		r51, 4(r46)				# 3734
	lw		r61, 0(r51)				# 19764
	fmul	r61, r15, r61				# 19764
	lw		r62, 1(r51)				# 19790
	fmul	r62, r37, r62				# 19764
	fadd	r62, r61, r62				# 19764
	lw		r61, 2(r51)				# 19816
	fmul	r61, r7, r61				# 19764
	fadd	r62, r62, r61				# 19752
	fcmp	r62, r10
	ble		.b49715				# 3158
.b49716:
	addis	r61, r0, 49024				# 19882
	fdiv	r61, r61, r62				# 19869
	sw		r61, 0(r9)				# 19869
	lw		r61, 0(r51)				# 19916
	fdiv	r61, r61, r62				# 19910
	fneg	r61, r61				# 19897
	sw		r61, 1(r9)				# 19869
	lw		r61, 1(r51)				# 19958
	fdiv	r61, r61, r62				# 19952
	fneg	r61, r61				# 19939
	sw		r61, 2(r9)				# 19869
	lw		r61, 2(r51)				# 20000
	fdiv	r61, r61, r62				# 19994
	fneg	r61, r61				# 19981
	sw		r61, 3(r9)				# 19981
.b49714:
	lli		r61, consts.2632				# 21074
	swx		r9, r28, r61				# 21074
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49661				# 20796
	b		.b49659
.b49715:
	sw		r10, 0(r9)				# 20032
	b		.b49714				# 20032
.b49664:
	mv		r62, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b49668:
	addi	r61, r0, 0				# 19127
	swx		r61, r9, r62				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b49668				# 19127
.b49666:
	addi	r10, r0, 0				# 19150
	fcmp	r15, r10
	beq		.b49671				# 3128
.b49672:
	lw		r9, 6(r46)				# 3372
	fcmp	r10, r15
	ble		.b49674				# 3188
.b49675:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b49677				# 765
.b49678:
	cmpi	r61, 0
	beq		.b49679				# 775
.b49680:
	addi	r61, r0, 0				# 775
	lw		r9, 4(r46)				# 3734
	lw		r9, 0(r9)				# 19222
	fneg	r9, r9				# 3025
.b49681:
	sw		r9, 0(r62)				# 19209
	addis	r9, r0, 16256				# 19302
	fdiv	r9, r9, r15				# 19289
	sw		r9, 1(r62)				# 19289
	fcmp	r37, r10
	beq		.b49685				# 3128
.b49686:
	lw		r9, 6(r46)				# 3372
	fcmp	r10, r37
	ble		.b49688				# 3188
.b49689:
	addi	r61, r0, 1				# 3188
	cmpi	r9, 0
	beq		.b49691				# 765
.b49692:
	cmpi	r61, 0
	beq		.b49693				# 775
.b49694:
	addi	r61, r0, 0				# 775
	lw		r9, 4(r46)				# 3920
	lw		r9, 1(r9)				# 19395
	fneg	r9, r9				# 3025
.b49695:
	sw		r9, 2(r62)				# 19382
	addis	r9, r0, 16256				# 19475
	fdiv	r9, r9, r37				# 19462
	sw		r9, 3(r62)				# 19462
	fcmp	r7, r10
	beq		.b49699				# 3128
.b49700:
	lw		r61, 6(r46)				# 3372
	fcmp	r10, r7
	ble		.b49702				# 3188
.b49703:
	addi	r9, r0, 1				# 3188
	cmpi	r61, 0
	beq		.b49705				# 765
.b49706:
	cmpi	r9, 0
	beq		.b49707				# 775
.b49708:
	addi	r9, r0, 0				# 775
	lw		r61, 4(r46)				# 4105
	lw		r61, 2(r61)				# 19568
	fneg	r61, r61				# 3025
.b49709:
	sw		r61, 4(r62)				# 19555
	addis	r9, r0, 16256				# 19648
	fdiv	r9, r9, r7				# 19635
	sw		r9, 5(r62)				# 19635
.b49698:
	lli		r9, consts.2632				# 20985
	swx		r62, r28, r9				# 20985
	addi	r28, r28, -1				# 21212
	cmpi	r28, 0
	bge		.b49661				# 20796
	b		.b49659
.b49707:
	addi	r9, r0, 1				# 775
	lw		r61, 4(r46)				# 4105
	lw		r61, 2(r61)				# 19568
	b		.b49709				# 918
.b49705:
	lw		r61, 4(r46)				# 4105
	lw		r61, 2(r61)				# 19568
	cmpi	r9, 0
	beq		.b49710				# 905
.b49711:
	b		.b49709				# 918
.b49710:
	fneg	r61, r61				# 3025
	b		.b49709				# 3025
.b49702:
	addi	r9, r0, 0				# 3188
	cmpi	r61, 0
	beq		.b49705				# 765
	b		.b49706
.b49699:
	sw		r10, 5(r62)				# 19525
	b		.b49698				# 19525
.b49693:
	addi	r61, r0, 1				# 775
	lw		r9, 4(r46)				# 3920
	lw		r9, 1(r9)				# 19395
	b		.b49695				# 918
.b49691:
	lw		r9, 4(r46)				# 3920
	lw		r9, 1(r9)				# 19395
	cmpi	r61, 0
	beq		.b49696				# 905
.b49697:
	b		.b49695				# 918
.b49696:
	fneg	r9, r9				# 3025
	b		.b49695				# 3025
.b49688:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b49691				# 765
	b		.b49692
.b49685:
	sw		r10, 3(r62)				# 19352
	fcmp	r7, r10
	beq		.b49699				# 3128
	b		.b49700
.b49679:
	addi	r61, r0, 1				# 775
	lw		r9, 4(r46)				# 3734
	lw		r9, 0(r9)				# 19222
	b		.b49681				# 918
.b49677:
	lw		r9, 4(r46)				# 3734
	lw		r9, 0(r9)				# 19222
	cmpi	r61, 0
	beq		.b49682				# 905
.b49683:
	b		.b49681				# 918
.b49682:
	fneg	r9, r9				# 3025
	b		.b49681				# 3025
.b49674:
	addi	r61, r0, 0				# 3188
	cmpi	r9, 0
	beq		.b49677				# 765
	b		.b49678
.b49671:
	sw		r10, 1(r62)				# 19179
	fcmp	r37, r10
	beq		.b49685				# 3128
	b		.b49686
.b49594:
	lli		r9, objects.2536				# 20821
	lwx		r54, r9, r62				# 20821
	lw		r57, 1(r41)				# 8141
	lw		r51, 0(r41)				# 8078
	lw		r9, 1(r54)				# 2994
	cmpi	r9, 1
	beq		.b49597				# 20947
.b49598:
	cmpi	r9, 2
	beq		.b49645				# 21033
.b49646:
	mv		r9, r4
	addi	r4, r4, 5				# 20110
	addi	r48, r0, 0				# 20110
	sw		r48, 0(r9)				# 20110
	sw		r48, 1(r9)				# 20110
	sw		r48, 2(r9)				# 20110
	sw		r48, 3(r9)				# 20110
	sw		r48, 4(r9)				# 20110
	lw		r39, 0(r51)				# 20142
	lw		r28, 1(r51)				# 20142
	lw		r30, 2(r51)				# 20142
	fmul	r61, r39, r39				# 14374
	lw		r13, 4(r54)				# 3734
	lw		r26, 0(r13)				# 14374
	fmul	r37, r61, r26				# 14374
	fmul	r61, r28, r28				# 14400
	lw		r7, 1(r13)				# 14400
	fmul	r61, r61, r7				# 14374
	fadd	r37, r37, r61				# 14374
	fmul	r61, r30, r30				# 14426
	lw		r19, 2(r13)				# 14426
	fmul	r61, r61, r19				# 14374
	fadd	r61, r37, r61				# 14354
	lw		r46, 3(r54)				# 3553
	cmpi	r46, 0
	beq		.b49651				# 14456
.b49652:
	fmul	r13, r28, r30				# 14522
	lw		r23, 9(r54)				# 5989
	lw		r37, 0(r23)				# 14522
	fmul	r13, r13, r37				# 14503
	fadd	r13, r61, r13				# 14503
	fmul	r37, r30, r39				# 14556
	lw		r61, 1(r23)				# 14556
	fmul	r61, r37, r61				# 14503
	fadd	r61, r13, r61				# 14503
	fmul	r37, r39, r28				# 14590
	lw		r13, 2(r23)				# 14590
	fmul	r13, r37, r13				# 14503
	fadd	r61, r61, r13				# 14503
.b49650:
	fmul	r13, r39, r26				# 20186
	fneg	r37, r13				# 20177
	fmul	r28, r28, r7				# 20228
	fneg	r26, r28				# 20219
	fmul	r28, r30, r19				# 20270
	fneg	r7, r28				# 20261
	sw		r61, 0(r9)				# 20304
	cmpi	r46, 0
	beq		.b49654				# 20324
.b49655:
	lw		r13, 2(r51)				# 20379
	lw		r54, 9(r54)				# 6179
	lw		r28, 1(r54)				# 20379
	fmul	r30, r13, r28				# 20379
	lw		r28, 1(r51)				# 20404
	lw		r13, 2(r54)				# 20404
	fmul	r28, r28, r13				# 20379
	fadd	r28, r30, r28				# 20372
	addis	r30, r0, 16384				# 2996
	fdiv	r28, r28, r30				# 20366
	fsub	r28, r37, r28				# 20353
	sw		r28, 1(r9)				# 20353
	lw		r28, 2(r51)				# 20458
	lw		r13, 0(r54)				# 20458
	fmul	r13, r28, r13				# 20458
	lw		r28, 0(r51)				# 20483
	lw		r37, 2(r54)				# 20483
	fmul	r28, r28, r37				# 20458
	fadd	r28, r13, r28				# 20451
	fdiv	r28, r28, r30				# 20445
	fsub	r28, r26, r28				# 20432
	sw		r28, 2(r9)				# 20353
	lw		r13, 1(r51)				# 20537
	lw		r28, 0(r54)				# 20537
	fmul	r13, r13, r28				# 20537
	lw		r28, 0(r51)				# 20562
	lw		r51, 1(r54)				# 20562
	fmul	r28, r28, r51				# 20537
	fadd	r28, r13, r28				# 20530
	fdiv	r28, r28, r30				# 20524
	fsub	r28, r7, r28				# 20511
	sw		r28, 3(r9)				# 20511
	fcmp	r61, r48
	beq		.b49656				# 3128
.b49658:
	addis	r28, r0, 16256				# 20709
	fdiv	r61, r28, r61				# 20696
	sw		r61, 4(r9)				# 20696
.b49656:
	swx		r9, r62, r57				# 21165
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49594				# 20796
	b		.b49592
.b49654:
	sw		r37, 1(r9)				# 20601
	sw		r26, 2(r9)				# 20601
	sw		r7, 3(r9)				# 20643
	fcmp	r61, r48
	beq		.b49656				# 3128
	b		.b49658
.b49651:
	b		.b49650				# 14482
.b49645:
	mv		r9, r4
	addi	r4, r4, 4				# 19730
	addi	r7, r0, 0				# 19730
	sw		r7, 0(r9)				# 19730
	sw		r7, 1(r9)				# 19730
	sw		r7, 2(r9)				# 19730
	sw		r7, 3(r9)				# 19730
	lw		r28, 0(r51)				# 19764
	lw		r54, 4(r54)				# 3734
	lw		r61, 0(r54)				# 19764
	fmul	r13, r28, r61				# 19764
	lw		r61, 1(r51)				# 19790
	lw		r28, 1(r54)				# 19790
	fmul	r61, r61, r28				# 19764
	fadd	r28, r13, r61				# 19764
	lw		r51, 2(r51)				# 19816
	lw		r61, 2(r54)				# 19816
	fmul	r61, r51, r61				# 19764
	fadd	r28, r28, r61				# 19752
	fcmp	r28, r7
	ble		.b49648				# 3158
.b49649:
	addis	r61, r0, 49024				# 19882
	fdiv	r61, r61, r28				# 19869
	sw		r61, 0(r9)				# 19869
	lw		r61, 0(r54)				# 19916
	fdiv	r61, r61, r28				# 19910
	fneg	r61, r61				# 19897
	sw		r61, 1(r9)				# 19869
	lw		r61, 1(r54)				# 19958
	fdiv	r61, r61, r28				# 19952
	fneg	r61, r61				# 19939
	sw		r61, 2(r9)				# 19869
	lw		r61, 2(r54)				# 20000
	fdiv	r61, r61, r28				# 19994
	fneg	r61, r61				# 19981
	sw		r61, 3(r9)				# 19981
.b49647:
	swx		r9, r62, r57				# 21074
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49594				# 20796
	b		.b49592
.b49648:
	sw		r7, 0(r9)				# 20032
	b		.b49647				# 20032
.b49597:
	mv		r61, r4
	addi	r4, r4, 6				# 19127
	addi	r9, r0, 0				# 19127
.b49601:
	addi	r28, r0, 0				# 19127
	swx		r28, r9, r61				# 19127
	addi	r9, r9, 1				# 19127
	cmpi	r9, 5
	ble		.b49601				# 19127
.b49599:
	lw		r9, 0(r51)				# 19153
	addi	r13, r0, 0				# 19150
	fcmp	r9, r13
	beq		.b49604				# 3128
.b49605:
	lw		r28, 6(r54)				# 3372
	fcmp	r13, r9
	ble		.b49607				# 3188
.b49608:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49610				# 765
.b49611:
	cmpi	r9, 0
	beq		.b49612				# 775
.b49613:
	addi	r9, r0, 0				# 775
	lw		r28, 4(r54)				# 3734
	lw		r28, 0(r28)				# 19222
	fneg	r28, r28				# 3025
.b49614:
	sw		r28, 0(r61)				# 19209
	addis	r28, r0, 16256				# 19302
	lw		r9, 0(r51)				# 19302
	fdiv	r9, r28, r9				# 19289
	sw		r9, 1(r61)				# 19289
	lw		r9, 1(r51)				# 19327
	fcmp	r9, r13
	beq		.b49618				# 3128
.b49619:
	lw		r7, 6(r54)				# 3372
	fcmp	r13, r9
	ble		.b49621				# 3188
.b49622:
	addi	r28, r0, 1				# 3188
	cmpi	r7, 0
	beq		.b49624				# 765
.b49625:
	cmpi	r28, 0
	beq		.b49626				# 775
.b49627:
	addi	r28, r0, 0				# 775
	lw		r9, 4(r54)				# 3920
	lw		r9, 1(r9)				# 19395
	fneg	r9, r9				# 3025
.b49628:
	sw		r9, 2(r61)				# 19382
	addis	r9, r0, 16256				# 19475
	lw		r28, 1(r51)				# 19475
	fdiv	r9, r9, r28				# 19462
	sw		r9, 3(r61)				# 19462
	lw		r9, 2(r51)				# 19500
	fcmp	r9, r13
	beq		.b49632				# 3128
.b49633:
	lw		r28, 6(r54)				# 3372
	fcmp	r13, r9
	ble		.b49635				# 3188
.b49636:
	addi	r9, r0, 1				# 3188
	cmpi	r28, 0
	beq		.b49638				# 765
.b49639:
	cmpi	r9, 0
	beq		.b49640				# 775
.b49641:
	addi	r9, r0, 0				# 775
	lw		r28, 4(r54)				# 4105
	lw		r28, 2(r28)				# 19568
	fneg	r28, r28				# 3025
.b49642:
	sw		r28, 4(r61)				# 19555
	addis	r28, r0, 16256				# 19648
	lw		r9, 2(r51)				# 19648
	fdiv	r9, r28, r9				# 19635
	sw		r9, 5(r61)				# 19635
.b49631:
	swx		r61, r62, r57				# 20985
	addi	r62, r62, -1				# 21212
	cmpi	r62, 0
	bge		.b49594				# 20796
	b		.b49592
.b49640:
	addi	r9, r0, 1				# 775
	lw		r28, 4(r54)				# 4105
	lw		r28, 2(r28)				# 19568
	b		.b49642				# 918
.b49638:
	lw		r28, 4(r54)				# 4105
	lw		r28, 2(r28)				# 19568
	cmpi	r9, 0
	beq		.b49643				# 905
.b49644:
	b		.b49642				# 918
.b49643:
	fneg	r28, r28				# 3025
	b		.b49642				# 3025
.b49635:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49638				# 765
	b		.b49639
.b49632:
	sw		r13, 5(r61)				# 19525
	b		.b49631				# 19525
.b49626:
	addi	r28, r0, 1				# 775
	lw		r9, 4(r54)				# 3920
	lw		r9, 1(r9)				# 19395
	b		.b49628				# 918
.b49624:
	lw		r9, 4(r54)				# 3920
	lw		r9, 1(r9)				# 19395
	cmpi	r28, 0
	beq		.b49629				# 905
.b49630:
	b		.b49628				# 918
.b49629:
	fneg	r9, r9				# 3025
	b		.b49628				# 3025
.b49621:
	addi	r28, r0, 0				# 3188
	cmpi	r7, 0
	beq		.b49624				# 765
	b		.b49625
.b49618:
	sw		r13, 3(r61)				# 19352
	lw		r9, 2(r51)				# 19500
	fcmp	r9, r13
	beq		.b49632				# 3128
	b		.b49633
.b49612:
	addi	r9, r0, 1				# 775
	lw		r28, 4(r54)				# 3734
	lw		r28, 0(r28)				# 19222
	b		.b49614				# 918
.b49610:
	lw		r28, 4(r54)				# 3734
	lw		r28, 0(r28)				# 19222
	cmpi	r9, 0
	beq		.b49615				# 905
.b49616:
	b		.b49614				# 918
.b49615:
	fneg	r28, r28				# 3025
	b		.b49614				# 3025
.b49607:
	addi	r9, r0, 0				# 3188
	cmpi	r28, 0
	beq		.b49610				# 765
	b		.b49611
.b49604:
	sw		r13, 1(r61)				# 19179
	lw		r9, 1(r51)				# 19327
	fcmp	r9, r13
	beq		.b49618				# 3128
	b		.b49619
.b49582:
	addi	r28, r28, -5				# 1017
	b		.b49581				# 1017
.b49579:
	addi	r62, r62, -5				# 1017
	cmpi	r10, 0
	bge		.b49568				# 43977
	b		.b49566
.b49560:
	swx		r61, r9, r10				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r13
	ble		.b49560				# 44623
	b		.b49558
.b49548:
	swx		r62, r61, r9				# 44623
	addi	r61, r61, 1				# 44623
	cmp		r61, r15
	ble		.b49548				# 44623
	b		.b49546
.b49471:
	addi	r9, r0, 0				# 13110
	b		T.loop49527				# 0
.b49523:
	addi	r61, r61, 1				# 12563
	cmpi	r61, 60
	bge		.b49471				# 12512
	b		.b49474
.b49513:
	cmpi	r15, 0
	beq		.b49516				# 12335
.b49517:
	addi	r15, r0, 0				# 12335
.b49515:
	lw		r9, 0(r30)				# 1729
	fmul	r28, r9, r9				# 1729
	lw		r9, 1(r30)				# 1743
	fmul	r9, r9, r9				# 1729
	fadd	r28, r28, r9				# 1729
	lw		r9, 2(r30)				# 1757
	fmul	r9, r9, r9				# 1729
	fadd	r9, r28, r9				# 1723
	fsqrt	r9, r9				# 227
	fcmp	r9, r62
	beq		.b49519				# 3128
.b49520:
	cmpi	r15, 0
	beq		.b49521				# 1810
.b49522:
	addis	r28, r0, 49024				# 1822
	fdiv	r28, r28, r9				# 1822
.b49518:
	lw		r9, 0(r30)				# 1860
	fmul	r9, r9, r28				# 1851
	sw		r9, 0(r30)				# 1851
	lw		r9, 1(r30)				# 1884
	fmul	r9, r9, r28				# 1875
	sw		r9, 1(r30)				# 1851
	lw		r9, 2(r30)				# 1908
	fmul	r9, r9, r28				# 1899
	sw		r9, 2(r30)				# 1899
	cmpi	r46, 0
	beq		.b49523				# 12371
	b		.b49525
.b49521:
	addis	r28, r0, 16256				# 1837
	fdiv	r28, r28, r9				# 1837
	b		.b49518				# 1837
.b49519:
	addis	r28, r0, 16256				# 1801
	b		.b49518				# 1801
.b49516:
	addi	r15, r0, 1				# 12335
	b		.b49515				# 12335
.b49487:
	lw		r9, 0(r30)				# 12053
	fcmp	r9, r62
	beq		.b49490				# 3128
.b49491:
	fcmp	r9, r62
	beq		.b49493				# 3128
.b49494:
	fcmp	r9, r62
	ble		.b49495				# 3158
.b49496:
	addis	r28, r0, 16256				# 856
.b49492:
	fmul	r9, r9, r9				# 12112
	fdiv	r9, r28, r9				# 12112
	sw		r9, 0(r30)				# 12074
	lw		r9, 1(r30)				# 12132
	fcmp	r9, r62
	beq		.b49498				# 3128
.b49499:
	fcmp	r9, r62
	beq		.b49501				# 3128
.b49502:
	fcmp	r9, r62
	ble		.b49503				# 3158
.b49504:
	addis	r28, r0, 16256				# 856
.b49500:
	fmul	r9, r9, r9				# 12191
	fdiv	r9, r28, r9				# 12191
	sw		r9, 1(r30)				# 12153
	lw		r9, 2(r30)				# 12210
	fcmp	r9, r62
	beq		.b49506				# 3128
.b49507:
	fcmp	r9, r62
	beq		.b49509				# 3128
.b49510:
	fcmp	r9, r62
	ble		.b49511				# 3158
.b49512:
	addis	r28, r0, 16256				# 856
.b49508:
	fmul	r9, r9, r9				# 12269
	fdiv	r9, r28, r9				# 12269
	sw		r9, 2(r30)				# 12231
	cmpi	r46, 0
	beq		.b49523				# 12371
	b		.b49525
.b49511:
	addis	r28, r0, 49024				# 868
	b		.b49508				# 868
.b49509:
	addi	r28, r0, 0				# 828
	b		.b49508				# 828
.b49506:
	addi	r9, r0, 0				# 12260
	sw		r9, 2(r30)				# 12231
	cmpi	r46, 0
	beq		.b49523				# 12371
	b		.b49525
.b49503:
	addis	r28, r0, 49024				# 868
	b		.b49500				# 868
.b49501:
	addi	r28, r0, 0				# 828
	b		.b49500				# 828
.b49498:
	addi	r9, r0, 0				# 12182
	sw		r9, 1(r30)				# 12153
	lw		r9, 2(r30)				# 12210
	fcmp	r9, r62
	beq		.b49506				# 3128
	b		.b49507
.b49495:
	addis	r28, r0, 49024				# 868
	b		.b49492				# 868
.b49493:
	addi	r28, r0, 0				# 828
	b		.b49492				# 828
.b49490:
	addi	r9, r0, 0				# 12103
	sw		r9, 0(r30)				# 12074
	lw		r9, 1(r30)				# 12132
	fcmp	r9, r62
	beq		.b49498				# 3128
	b		.b49499
.b49484:
	addi	r28, r0, 1				# 11723
	b		.b49483				# 11723
.b49480:
	cmpi	r23, 2
	beq		.b49484				# 11706
	b		.b49485
.b49478:
	addi	r15, r0, 0				# 3188
	b		.b49477				# 3188
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