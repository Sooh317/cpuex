	.text
	sub		r0, r0, r0
	b		_min_caml_start
	# read_net_item.2793
read_net_item.2793:
.Entry@read_net_item.2793:
	sw		r1, 0(r3)				# 0
	addi	r28, r0, -1				# 1498
	in		r9				# 1498
	sw		r9, -1(r3)				# 1498
	cmpi	r9, -1
	beq		.b18016				# 12740
.b18017:
	addi	r1, r1, 1				# 12806
	mflr	r63
	sw		r63, -2(r3)
	addi	r3, r3, -3
	bl		read_net_item.2793
	addi	r3, r3, 3
	lw		r63, -2(r3)
	mtlr	r63				# 12798
	lw		r9, -1(r3)				# 12841
	lw		r61, 0(r3)				# 12841
	swx		r9, r61, r2				# 12841
	blr				# 12861
.b18016:
	addi	r9, r1, 1				# 12758
	mv		r2, r4
	add		r4, r4, r9				# 12758
	addi	r61, r9, -1				# 12758
	addi	r9, r0, 0				# 12758
	cmp		r9, r61
	ble		.b18020				# 12758
.b18018:
	blr				# 12758
.b18020:
	swx		r28, r9, r2				# 12758
	addi	r9, r9, 1				# 12758
	cmp		r9, r61
	ble		.b18020				# 12758
	b		.b18018
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
	mv		r9, r2				# 12903
	sw		r9, -1(r3)				# 12903
	lw		r61, 0(r9)				# 12934
	cmpi	r61, -1
	beq		.b18022				# 12934
.b18023:
	lw		r9, 0(r3)				# 13006
	addi	r1, r9, 1				# 13006
	mflr	r63
	sw		r63, -2(r3)
	addi	r3, r3, -3
	bl		read_or_network.2795
	addi	r3, r3, 3
	lw		r63, -2(r3)
	mtlr	r63				# 12998
	lw		r61, 0(r3)				# 13043
	lw		r9, -1(r3)				# 13043
	swx		r9, r61, r2				# 13043
	blr				# 13062
.b18022:
	lw		r61, 0(r3)				# 12959
	addi	r61, r61, 1				# 12959
	mv		r2, r4
	add		r4, r4, r61				# 12959
	addi	r28, r61, -1				# 12959
	addi	r61, r0, 0				# 12959
	cmp		r61, r28
	ble		.b18026				# 12959
.b18024:
	blr				# 12959
.b18026:
	swx		r9, r61, r2				# 12959
	addi	r61, r61, 1				# 12959
	cmp		r61, r28
	ble		.b18026				# 12959
	b		.b18024
	# solver.2841
solver.2841:
.Entry@solver.2841:
	addi	r41, r0, 0				# 15582
	lli		r61, objects.2491				# 15582
	lli		r54, solver_dist.2518				# 15582
	mul16i	r9, r1, 1				# 15590
	add		r57, r61, r9				# 15582
	lw		r9, 0(r5)				# 15621
	lw		r28, 5(r57)				# 4475
	lw		r61, 0(r28)				# 15621
	fsub	r25, r9, r61				# 15611
	lw		r9, 1(r5)				# 15659
	lw		r61, 1(r28)				# 15659
	fsub	r62, r9, r61				# 15649
	lw		r61, 2(r5)				# 15697
	lw		r9, 2(r28)				# 15697
	fsub	r15, r61, r9				# 15687
	lw		r13, 1(r57)				# 2994
	cmpi	r13, 1
	beq		.b18028				# 15753
.b18029:
	cmpi	r13, 2
	beq		.b18087				# 15817
.b18088:
	lw		r23, 0(r2)				# 15037
	lw		r37, 1(r2)				# 15037
	lw		r26, 2(r2)				# 15037
	fmul	r9, r23, r23				# 14374
	lw		r28, 4(r57)				# 3734
	lw		r10, 0(r28)				# 14374
	fmul	r61, r9, r10				# 14374
	fmul	r9, r37, r37				# 14400
	lw		r51, 1(r28)				# 14400
	fmul	r9, r9, r51				# 14374
	fadd	r9, r61, r9				# 14374
	fmul	r61, r26, r26				# 14426
	lw		r46, 2(r28)				# 14426
	fmul	r61, r61, r46				# 14374
	fadd	r9, r9, r61				# 14354
	lw		r7, 3(r57)				# 3553
	cmpi	r7, 0
	beq		.b18092				# 14456
.b18093:
	fmul	r61, r37, r26				# 14522
	lw		r30, 9(r57)				# 5989
	lw		r28, 0(r30)				# 14522
	fmul	r61, r61, r28				# 14503
	fadd	r61, r9, r61				# 14503
	fmul	r28, r26, r23				# 14556
	lw		r9, 1(r30)				# 14556
	fmul	r9, r28, r9				# 14503
	fadd	r28, r61, r9				# 14503
	fmul	r61, r23, r37				# 14590
	lw		r9, 2(r30)				# 14590
	fmul	r9, r61, r9				# 14503
	fadd	r9, r28, r9				# 14503
	fcmp	r9, r41
	beq		.b18094				# 3126
.b18095:
	fmul	r61, r23, r25				# 14680
	fmul	r61, r61, r10				# 14680
	fmul	r28, r37, r62				# 14713
	fmul	r28, r28, r51				# 14680
	fadd	r28, r61, r28				# 14680
	fmul	r61, r26, r15				# 14746
	fmul	r61, r61, r46				# 14680
	fadd	r28, r28, r61				# 14660
	cmpi	r7, 0
	beq		.b18097				# 14777
.b18098:
	fmul	r30, r26, r62				# 14851
	fmul	r61, r37, r15				# 14851
	fadd	r30, r30, r61				# 14850
	lw		r39, 9(r57)				# 5989
	lw		r61, 0(r39)				# 14850
	fmul	r30, r30, r61				# 14850
	fmul	r61, r23, r15				# 14895
	fmul	r26, r26, r25				# 14895
	fadd	r26, r61, r26				# 14894
	lw		r61, 1(r39)				# 14894
	fmul	r61, r26, r61				# 14850
	fadd	r61, r30, r61				# 14850
	fmul	r26, r23, r62				# 14939
	fmul	r30, r37, r25				# 14939
	fadd	r37, r26, r30				# 14938
	lw		r30, 2(r39)				# 14938
	fmul	r30, r37, r30				# 14850
	fadd	r61, r61, r30				# 14837
	addis	r30, r0, 16384
	ori		r30, r30, 0				# 2996
	fdiv	r61, r61, r30				# 14824
	fadd	r28, r28, r61				# 14824
.b18096:
	fmul	r61, r25, r25				# 14374
	fmul	r10, r61, r10				# 14374
	fmul	r61, r62, r62				# 14400
	fmul	r61, r61, r51				# 14374
	fadd	r61, r10, r61				# 14374
	fmul	r10, r15, r15				# 14426
	fmul	r10, r10, r46				# 14374
	fadd	r61, r61, r10				# 14354
	cmpi	r7, 0
	beq		.b18100				# 14456
.b18101:
	fmul	r10, r62, r15				# 14522
	lw		r51, 9(r57)				# 5989
	lw		r7, 0(r51)				# 14522
	fmul	r10, r10, r7				# 14503
	fadd	r61, r61, r10				# 14503
	fmul	r10, r15, r25				# 14556
	lw		r15, 1(r51)				# 14556
	fmul	r15, r10, r15				# 14503
	fadd	r61, r61, r15				# 14503
	fmul	r62, r25, r62				# 14590
	lw		r15, 2(r51)				# 14590
	fmul	r62, r62, r15				# 14503
	fadd	r61, r61, r62				# 14503
	cmpi	r13, 3
	beq		.b18103				# 15282
.b18104:
.b18102:
	fmul	r62, r28, r28				# 15338
	fmul	r61, r9, r61				# 15338
	fsub	r61, r62, r61				# 15330
	fcmp	r61, r41
	ble		.b18105				# 3156
.b18106:
	fsqrt	r61, r61				# 227
	lw		r62, 6(r57)				# 3372
	cmpi	r62, 0
	beq		.b18108				# 15425
.b18109:
.b18107:
	fsub	r61, r61, r28				# 15491
	fdiv	r9, r61, r9				# 15472
	sw		r9, 0(r54)				# 15472
	addi	r2, r0, 1				# 15510
	blr				# 15510
.b18108:
	fneg	r61, r61				# 3025
	b		.b18107				# 3025
.b18105:
	addi	r2, r0, 0				# 15535
	blr				# 15535
.b18103:
	addis	r62, r0, 16256
	ori		r62, r62, 0				# 15303
	fsub	r61, r61, r62				# 15303
	b		.b18102				# 15303
.b18100:
	cmpi	r13, 3
	beq		.b18103				# 15282
	b		.b18104
.b18097:
	b		.b18096				# 14803
.b18094:
	addi	r2, r0, 0				# 15111
	blr				# 15111
.b18092:
	fcmp	r9, r41
	beq		.b18094				# 3126
	b		.b18095
.b18087:
	lw		r51, 4(r57)				# 4293
	lw		r9, 0(r2)				# 1949
	lw		r28, 0(r51)				# 1949
	fmul	r61, r9, r28				# 1949
	lw		r9, 1(r2)				# 1967
	lw		r10, 1(r51)				# 1967
	fmul	r9, r9, r10				# 1949
	fadd	r9, r61, r9				# 1949
	lw		r61, 2(r2)				# 1985
	lw		r51, 2(r51)				# 1985
	fmul	r61, r61, r51				# 1949
	fadd	r61, r9, r61				# 14187
	fcmp	r61, r41
	ble		.b18089				# 3156
.b18090:
	fmul	r28, r28, r25				# 2037
	fmul	r9, r10, r62				# 2037
	fadd	r28, r28, r9				# 2037
	fmul	r9, r51, r15				# 2037
	fadd	r9, r28, r9				# 14262
	fneg	r9, r9				# 14262
	fdiv	r9, r9, r61				# 14243
	sw		r9, 0(r54)				# 14243
	addi	r2, r0, 1				# 14302
	blr				# 14302
.b18089:
	addi	r2, r0, 0				# 14314
	blr				# 14314
.b18028:
	lw		r51, 0(r2)				# 13452
	fcmp	r51, r41
	beq		.b18031				# 3126
.b18032:
	lw		r10, 4(r57)				# 4293
	lw		r61, 6(r57)				# 3372
	fcmp	r41, r51
	ble		.b18034				# 3186
.b18035:
	addi	r9, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b18037				# 765
.b18038:
	cmpi	r9, 0
	beq		.b18039				# 775
.b18040:
	addi	r9, r0, 0				# 775
	lw		r61, 0(r10)				# 13527
	cmpi	r9, 0
	beq		.b18042				# 905
.b18043:
.b18041:
	fsub	r9, r61, r25				# 13603
	fdiv	r28, r9, r51				# 13594
	lw		r9, 1(r2)				# 13649
	fmul	r9, r28, r9				# 13649
	fadd	r9, r9, r62				# 13643
	fabs	r61, r9				# 322
	lw		r9, 1(r10)				# 13636
	fcmp	r9, r61
	ble		.b18044				# 3096
.b18045:
	lw		r9, 2(r2)				# 13709
	fmul	r9, r28, r9				# 13709
	fadd	r9, r9, r15				# 13703
	fabs	r9, r9				# 322
	lw		r61, 2(r10)				# 13696
	fcmp	r61, r9
	ble		.b18046				# 3096
.b18047:
	sw		r28, 0(r54)				# 13756
	addi	r9, r0, 1				# 13779
	cmpi	r9, 0
	beq		.b18048				# 13860
.b18049:
	addi	r2, r0, 1				# 13917
	blr				# 13917
.b18048:
	lw		r10, 1(r2)				# 13452
	fcmp	r10, r41
	beq		.b18051				# 3126
.b18052:
	lw		r28, 4(r57)				# 4293
	lw		r61, 6(r57)				# 3372
	fcmp	r41, r10
	ble		.b18054				# 3186
.b18055:
	addi	r9, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b18057				# 765
.b18058:
	cmpi	r9, 0
	beq		.b18059				# 775
.b18060:
	addi	r9, r0, 0				# 775
	lw		r61, 1(r28)				# 13527
	cmpi	r9, 0
	beq		.b18062				# 905
.b18063:
.b18061:
	fsub	r9, r61, r62				# 13603
	fdiv	r13, r9, r10				# 13594
	lw		r9, 2(r2)				# 13649
	fmul	r9, r13, r9				# 13649
	fadd	r9, r9, r15				# 13643
	fabs	r9, r9				# 322
	lw		r61, 2(r28)				# 13636
	fcmp	r61, r9
	ble		.b18064				# 3096
.b18065:
	fmul	r9, r13, r51				# 13709
	fadd	r9, r9, r25				# 13703
	fabs	r9, r9				# 322
	lw		r61, 0(r28)				# 13696
	fcmp	r61, r9
	ble		.b18066				# 3096
.b18067:
	sw		r13, 0(r54)				# 13756
	addi	r9, r0, 1				# 13779
	cmpi	r9, 0
	beq		.b18068				# 13928
.b18069:
	addi	r2, r0, 2				# 13980
	blr				# 13980
.b18068:
	lw		r28, 2(r2)				# 13452
	fcmp	r28, r41
	beq		.b18070				# 3126
.b18071:
	lw		r13, 4(r57)				# 4293
	lw		r61, 6(r57)				# 3372
	fcmp	r41, r28
	ble		.b18073				# 3186
.b18074:
	addi	r9, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b18076				# 765
.b18077:
	cmpi	r9, 0
	beq		.b18078				# 775
.b18079:
	addi	r9, r0, 0				# 775
	lw		r61, 2(r13)				# 13527
	cmpi	r9, 0
	beq		.b18081				# 905
.b18082:
.b18080:
	fsub	r9, r61, r15				# 13603
	fdiv	r28, r9, r28				# 13594
	fmul	r9, r28, r51				# 13649
	fadd	r9, r9, r25				# 13643
	fabs	r9, r9				# 322
	lw		r61, 0(r13)				# 13636
	fcmp	r61, r9
	ble		.b18083				# 3096
.b18084:
	fmul	r9, r28, r10				# 13709
	fadd	r9, r9, r62				# 13703
	fabs	r9, r9				# 322
	lw		r61, 1(r13)				# 13696
	fcmp	r61, r9
	ble		.b18085				# 3096
.b18086:
	sw		r28, 0(r54)				# 13756
	addi	r2, r0, 3				# 14043
	blr				# 14043
.b18085:
	addi	r2, r0, 0				# 14107
	blr				# 14107
.b18083:
	addi	r2, r0, 0				# 14107
	blr				# 14107
.b18081:
	fneg	r61, r61				# 3025
	b		.b18080				# 3025
.b18078:
	addi	r9, r0, 1				# 775
	lw		r61, 2(r13)				# 13527
	cmpi	r9, 0
	beq		.b18081				# 905
	b		.b18082
.b18076:
	lw		r61, 2(r13)				# 13527
	cmpi	r9, 0
	beq		.b18081				# 905
	b		.b18082
.b18073:
	addi	r9, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b18076				# 765
	b		.b18077
.b18070:
	addi	r2, r0, 0				# 14107
	blr				# 14107
.b18066:
	addi	r9, r0, 0				# 13794
	cmpi	r9, 0
	beq		.b18068				# 13928
	b		.b18069
.b18064:
	addi	r9, r0, 0				# 13807
	cmpi	r9, 0
	beq		.b18068				# 13928
	b		.b18069
.b18062:
	fneg	r61, r61				# 3025
	b		.b18061				# 3025
.b18059:
	addi	r9, r0, 1				# 775
	lw		r61, 1(r28)				# 13527
	cmpi	r9, 0
	beq		.b18062				# 905
	b		.b18063
.b18057:
	lw		r61, 1(r28)				# 13527
	cmpi	r9, 0
	beq		.b18062				# 905
	b		.b18063
.b18054:
	addi	r9, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b18057				# 765
	b		.b18058
.b18051:
	addi	r9, r0, 0				# 13477
	cmpi	r9, 0
	beq		.b18068				# 13928
	b		.b18069
.b18046:
	addi	r9, r0, 0				# 13794
	cmpi	r9, 0
	beq		.b18048				# 13860
	b		.b18049
.b18044:
	addi	r9, r0, 0				# 13807
	cmpi	r9, 0
	beq		.b18048				# 13860
	b		.b18049
.b18042:
	fneg	r61, r61				# 3025
	b		.b18041				# 3025
.b18039:
	addi	r9, r0, 1				# 775
	lw		r61, 0(r10)				# 13527
	cmpi	r9, 0
	beq		.b18042				# 905
	b		.b18043
.b18037:
	lw		r61, 0(r10)				# 13527
	cmpi	r9, 0
	beq		.b18042				# 905
	b		.b18043
.b18034:
	addi	r9, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b18037				# 765
	b		.b18038
.b18031:
	addi	r9, r0, 0				# 13477
	cmpi	r9, 0
	beq		.b18048				# 13860
	b		.b18049
	# solver_fast.2864
solver_fast.2864:
.Entry@solver_fast.2864:
	addi	r54, r0, 0				# 17557
	lli		r9, objects.2491				# 17557
	lli		r13, solver_dist.2518				# 17557
	mul16i	r61, r1, 1				# 17565
	add		r51, r9, r61				# 17557
	lw		r9, 0(r5)				# 17595
	lw		r61, 5(r51)				# 4475
	lw		r28, 0(r61)				# 17595
	fsub	r30, r9, r28				# 17586
	lw		r28, 1(r5)				# 17632
	lw		r9, 1(r61)				# 17632
	fsub	r25, r28, r9				# 17623
	lw		r9, 2(r5)				# 17669
	lw		r61, 2(r61)				# 17669
	fsub	r41, r9, r61				# 17660
	lw		r9, 1(r2)				# 8141
	lwx		r62, r9, r1				# 17731
	lw		r10, 1(r51)				# 2994
	cmpi	r10, 1
	beq		.b18110				# 17793
.b18111:
	cmpi	r10, 2
	beq		.b18136				# 17874
.b18137:
	lw		r57, 0(r62)				# 17054
	fcmp	r57, r54
	beq		.b18140				# 3126
.b18141:
	lw		r9, 1(r62)				# 17128
	fmul	r61, r9, r30				# 17128
	lw		r9, 2(r62)				# 17148
	fmul	r9, r9, r25				# 17128
	fadd	r61, r61, r9				# 17128
	lw		r9, 3(r62)				# 17168
	fmul	r9, r9, r41				# 17128
	fadd	r28, r61, r9				# 17115
	fmul	r61, r30, r30				# 14374
	lw		r7, 4(r51)				# 3734
	lw		r9, 0(r7)				# 14374
	fmul	r9, r61, r9				# 14374
	fmul	r15, r25, r25				# 14400
	lw		r61, 1(r7)				# 14400
	fmul	r61, r15, r61				# 14374
	fadd	r61, r9, r61				# 14374
	fmul	r9, r41, r41				# 14426
	lw		r15, 2(r7)				# 14426
	fmul	r9, r9, r15				# 14374
	fadd	r9, r61, r9				# 14354
	lw		r61, 3(r51)				# 3553
	cmpi	r61, 0
	beq		.b18143				# 14456
.b18144:
	fmul	r15, r25, r41				# 14522
	lw		r7, 9(r51)				# 5989
	lw		r61, 0(r7)				# 14522
	fmul	r61, r15, r61				# 14503
	fadd	r9, r9, r61				# 14503
	fmul	r61, r41, r30				# 14556
	lw		r15, 1(r7)				# 14556
	fmul	r61, r61, r15				# 14503
	fadd	r61, r9, r61				# 14503
	fmul	r9, r30, r25				# 14590
	lw		r15, 2(r7)				# 14590
	fmul	r9, r9, r15				# 14503
	fadd	r9, r61, r9				# 14503
	cmpi	r10, 3
	beq		.b18146				# 17239
.b18147:
.b18145:
	fmul	r61, r28, r28				# 17295
	fmul	r9, r57, r9				# 17295
	fsub	r9, r61, r9				# 17287
	fcmp	r9, r54
	ble		.b18148				# 3156
.b18149:
	lw		r61, 6(r51)				# 3372
	cmpi	r61, 0
	beq		.b18151				# 17353
.b18152:
	fsqrt	r9, r9				# 227
	fadd	r9, r28, r9				# 17394
	lw		r61, 4(r62)				# 17394
	fmul	r9, r9, r61				# 17375
	sw		r9, 0(r13)				# 17375
	addi	r2, r0, 1				# 17498
	blr				# 17498
.b18151:
	fsqrt	r9, r9				# 227
	fsub	r61, r28, r9				# 17458
	lw		r9, 4(r62)				# 17458
	fmul	r9, r61, r9				# 17439
	sw		r9, 0(r13)				# 17439
	addi	r2, r0, 1				# 17498
	blr				# 17498
.b18148:
	addi	r2, r0, 0				# 17510
	blr				# 17510
.b18146:
	addis	r61, r0, 16256
	ori		r61, r61, 0				# 17260
	fsub	r9, r9, r61				# 17260
	b		.b18145				# 17260
.b18143:
	cmpi	r10, 3
	beq		.b18146				# 17239
	b		.b18147
.b18140:
	addi	r2, r0, 0				# 17102
	blr				# 17102
.b18136:
	lw		r9, 0(r62)				# 16870
	fcmp	r54, r9
	ble		.b18138				# 3186
.b18139:
	lw		r9, 1(r62)				# 16924
	fmul	r9, r9, r30				# 16924
	lw		r61, 2(r62)				# 16944
	fmul	r61, r61, r25				# 16924
	fadd	r61, r9, r61				# 16924
	lw		r9, 3(r62)				# 16964
	fmul	r9, r9, r41				# 16924
	fadd	r9, r61, r9				# 16899
	sw		r9, 0(r13)				# 16899
	addi	r2, r0, 1				# 16986
	blr				# 16986
.b18138:
	addi	r2, r0, 0				# 16998
	blr				# 16998
.b18110:
	lw		r61, 0(r2)				# 8078
	lw		r9, 0(r62)				# 15996
	fsub	r9, r9, r30				# 15995
	lw		r10, 1(r62)				# 15995
	fmul	r28, r9, r10				# 15986
	lw		r15, 1(r61)				# 16056
	fmul	r9, r28, r15				# 16056
	fadd	r9, r9, r25				# 16050
	fabs	r9, r9				# 322
	lw		r37, 4(r51)				# 3920
	lw		r57, 1(r37)				# 16043
	fcmp	r57, r9
	ble		.b18113				# 3096
.b18114:
	lw		r9, 2(r61)				# 16117
	fmul	r9, r28, r9				# 16117
	fadd	r9, r9, r41				# 16111
	fabs	r9, r9				# 322
	lw		r51, 2(r37)				# 16104
	fcmp	r51, r9
	ble		.b18115				# 3096
.b18116:
	fcmp	r10, r54
	beq		.b18117				# 3126
.b18118:
	addi	r9, r0, 1				# 16157
	cmpi	r9, 0
	beq		.b18119				# 16033
.b18120:
	sw		r28, 0(r13)				# 16226
	addi	r2, r0, 1				# 16249
	blr				# 16249
.b18119:
	lw		r9, 2(r62)				# 16269
	fsub	r9, r9, r25				# 16268
	lw		r51, 3(r62)				# 16268
	fmul	r10, r9, r51				# 16259
	lw		r28, 0(r61)				# 16330
	fmul	r9, r10, r28				# 16330
	fadd	r9, r9, r30				# 16324
	fabs	r9, r9				# 322
	lw		r7, 0(r37)				# 16317
	fcmp	r7, r9
	ble		.b18122				# 3096
.b18123:
	lw		r9, 2(r61)				# 16391
	fmul	r9, r10, r9				# 16391
	fadd	r9, r9, r41				# 16385
	fabs	r9, r9				# 322
	lw		r61, 2(r37)				# 16378
	fcmp	r61, r9
	ble		.b18124				# 3096
.b18125:
	fcmp	r51, r54
	beq		.b18126				# 3126
.b18127:
	addi	r9, r0, 1				# 16431
	cmpi	r9, 0
	beq		.b18128				# 16306
.b18129:
	sw		r10, 0(r13)				# 16500
	addi	r2, r0, 2				# 16523
	blr				# 16523
.b18128:
	lw		r9, 4(r62)				# 16543
	fsub	r9, r9, r41				# 16542
	lw		r61, 5(r62)				# 16542
	fmul	r62, r9, r61				# 16533
	fmul	r9, r62, r28				# 16604
	fadd	r9, r9, r30				# 16598
	fabs	r9, r9				# 322
	fcmp	r7, r9
	ble		.b18130				# 3096
.b18131:
	fmul	r9, r62, r15				# 16665
	fadd	r9, r9, r25				# 16659
	fabs	r9, r9				# 322
	fcmp	r57, r9
	ble		.b18132				# 3096
.b18133:
	fcmp	r61, r54
	beq		.b18134				# 3126
.b18135:
	sw		r62, 0(r13)				# 16774
	addi	r2, r0, 3				# 16797
	blr				# 16797
.b18134:
	addi	r2, r0, 0				# 16811
	blr				# 16811
.b18132:
	addi	r2, r0, 0				# 16811
	blr				# 16811
.b18130:
	addi	r2, r0, 0				# 16811
	blr				# 16811
.b18126:
	addi	r9, r0, 0				# 16431
	cmpi	r9, 0
	beq		.b18128				# 16306
	b		.b18129
.b18124:
	addi	r9, r0, 0				# 16467
	cmpi	r9, 0
	beq		.b18128				# 16306
	b		.b18129
.b18122:
	addi	r9, r0, 0				# 16482
	cmpi	r9, 0
	beq		.b18128				# 16306
	b		.b18129
.b18117:
	addi	r9, r0, 0				# 16157
	cmpi	r9, 0
	beq		.b18119				# 16033
	b		.b18120
.b18115:
	addi	r9, r0, 0				# 16193
	cmpi	r9, 0
	beq		.b18119				# 16033
	b		.b18120
.b18113:
	addi	r9, r0, 0				# 16208
	cmpi	r9, 0
	beq		.b18119				# 16033
	b		.b18120
	# solver_fast2.2882
solver_fast2.2882:
.Entry@solver_fast2.2882:
	addi	r13, r0, 0				# 18636
	lli		r61, objects.2491				# 18636
	lli		r30, solver_dist.2518				# 18636
	mul16i	r9, r1, 1				# 18644
	add		r15, r61, r9				# 18636
	lw		r28, 10(r15)				# 6561
	lw		r54, 0(r28)				# 18698
	lw		r25, 1(r28)				# 18723
	lw		r37, 2(r28)				# 18748
	lw		r9, 1(r2)				# 8141
	lwx		r41, r9, r1				# 18807
	lw		r9, 1(r15)				# 2994
	cmpi	r9, 1
	beq		.b18153				# 18869
.b18154:
	cmpi	r9, 2
	beq		.b18179				# 18950
.b18180:
	lw		r62, 0(r41)				# 18204
	fcmp	r62, r13
	beq		.b18183				# 3126
.b18184:
	lw		r9, 1(r41)				# 18278
	fmul	r61, r9, r54				# 18278
	lw		r9, 2(r41)				# 18298
	fmul	r9, r9, r25				# 18278
	fadd	r61, r61, r9				# 18278
	lw		r9, 3(r41)				# 18318
	fmul	r9, r9, r37				# 18278
	fadd	r61, r61, r9				# 18265
	lw		r9, 3(r28)				# 18342
	fmul	r28, r61, r61				# 18377
	fmul	r9, r62, r9				# 18377
	fsub	r9, r28, r9				# 18369
	fcmp	r9, r13
	ble		.b18185				# 3156
.b18186:
	lw		r28, 6(r15)				# 3372
	cmpi	r28, 0
	beq		.b18188				# 18435
.b18189:
	fsqrt	r9, r9				# 227
	fadd	r61, r61, r9				# 18476
	lw		r9, 4(r41)				# 18476
	fmul	r9, r61, r9				# 18457
	sw		r9, 0(r30)				# 18457
	addi	r2, r0, 1				# 18580
	blr				# 18580
.b18188:
	fsqrt	r9, r9				# 227
	fsub	r61, r61, r9				# 18540
	lw		r9, 4(r41)				# 18540
	fmul	r9, r61, r9				# 18521
	sw		r9, 0(r30)				# 18521
	addi	r2, r0, 1				# 18580
	blr				# 18580
.b18185:
	addi	r2, r0, 0				# 18592
	blr				# 18592
.b18183:
	addi	r2, r0, 0				# 18252
	blr				# 18252
.b18179:
	lw		r61, 0(r41)				# 18051
	fcmp	r13, r61
	ble		.b18181				# 3186
.b18182:
	lw		r9, 3(r28)				# 18099
	fmul	r9, r61, r9				# 18080
	sw		r9, 0(r30)				# 18080
	addi	r2, r0, 1				# 18129
	blr				# 18129
.b18181:
	addi	r2, r0, 0				# 18141
	blr				# 18141
.b18153:
	lw		r7, 0(r2)				# 8078
	lw		r9, 0(r41)				# 15996
	fsub	r9, r9, r54				# 15995
	lw		r62, 1(r41)				# 15995
	fmul	r61, r9, r62				# 15986
	lw		r28, 1(r7)				# 16056
	fmul	r9, r61, r28				# 16056
	fadd	r9, r9, r25				# 16050
	fabs	r9, r9				# 322
	lw		r15, 4(r15)				# 3920
	lw		r10, 1(r15)				# 16043
	fcmp	r10, r9
	ble		.b18156				# 3096
.b18157:
	lw		r9, 2(r7)				# 16117
	fmul	r9, r61, r9				# 16117
	fadd	r9, r9, r37				# 16111
	fabs	r51, r9				# 322
	lw		r9, 2(r15)				# 16104
	fcmp	r9, r51
	ble		.b18158				# 3096
.b18159:
	fcmp	r62, r13
	beq		.b18160				# 3126
.b18161:
	addi	r9, r0, 1				# 16157
	cmpi	r9, 0
	beq		.b18162				# 16033
.b18163:
	sw		r61, 0(r30)				# 16226
	addi	r2, r0, 1				# 16249
	blr				# 16249
.b18162:
	lw		r9, 2(r41)				# 16269
	fsub	r9, r9, r25				# 16268
	lw		r61, 3(r41)				# 16268
	fmul	r57, r9, r61				# 16259
	lw		r51, 0(r7)				# 16330
	fmul	r9, r57, r51				# 16330
	fadd	r9, r9, r54				# 16324
	fabs	r9, r9				# 322
	lw		r62, 0(r15)				# 16317
	fcmp	r62, r9
	ble		.b18165				# 3096
.b18166:
	lw		r9, 2(r7)				# 16391
	fmul	r9, r57, r9				# 16391
	fadd	r9, r9, r37				# 16385
	fabs	r9, r9				# 322
	lw		r15, 2(r15)				# 16378
	fcmp	r15, r9
	ble		.b18167				# 3096
.b18168:
	fcmp	r61, r13
	beq		.b18169				# 3126
.b18170:
	addi	r9, r0, 1				# 16431
	cmpi	r9, 0
	beq		.b18171				# 16306
.b18172:
	sw		r57, 0(r30)				# 16500
	addi	r2, r0, 2				# 16523
	blr				# 16523
.b18171:
	lw		r9, 4(r41)				# 16543
	fsub	r61, r9, r37				# 16542
	lw		r9, 5(r41)				# 16542
	fmul	r15, r61, r9				# 16533
	fmul	r61, r15, r51				# 16604
	fadd	r61, r61, r54				# 16598
	fabs	r61, r61				# 322
	fcmp	r62, r61
	ble		.b18173				# 3096
.b18174:
	fmul	r61, r15, r28				# 16665
	fadd	r61, r61, r25				# 16659
	fabs	r61, r61				# 322
	fcmp	r10, r61
	ble		.b18175				# 3096
.b18176:
	fcmp	r9, r13
	beq		.b18177				# 3126
.b18178:
	sw		r15, 0(r30)				# 16774
	addi	r2, r0, 3				# 16797
	blr				# 16797
.b18177:
	addi	r2, r0, 0				# 16811
	blr				# 16811
.b18175:
	addi	r2, r0, 0				# 16811
	blr				# 16811
.b18173:
	addi	r2, r0, 0				# 16811
	blr				# 16811
.b18169:
	addi	r9, r0, 0				# 16431
	cmpi	r9, 0
	beq		.b18171				# 16306
	b		.b18172
.b18167:
	addi	r9, r0, 0				# 16467
	cmpi	r9, 0
	beq		.b18171				# 16306
	b		.b18172
.b18165:
	addi	r9, r0, 0				# 16482
	cmpi	r9, 0
	beq		.b18171				# 16306
	b		.b18172
.b18160:
	addi	r9, r0, 0				# 16157
	cmpi	r9, 0
	beq		.b18162				# 16033
	b		.b18163
.b18158:
	addi	r9, r0, 0				# 16193
	cmpi	r9, 0
	beq		.b18162				# 16033
	b		.b18163
.b18156:
	addi	r9, r0, 0				# 16208
	cmpi	r9, 0
	beq		.b18162				# 16033
	b		.b18163
	# setup_dirvec_constants.2897
setup_dirvec_constants.2897:
.Entry@setup_dirvec_constants.2897:
	lli		r9, n_objects.2480				# 21353
	addi	r51, r0, 0				# 21353
	lli		r13, objects.2491				# 21353
	addi	r9, r9, 0				# 21353
	addi	r61, r9, -1				# 21317
	cmpi	r61, 0
	bge		.b18191				# 20796
.b18192:
	blr				# 21268
.b18191:
	mul16i	r9, r61, 1				# 20829
	add		r25, r13, r9				# 20821
	lw		r10, 1(r1)				# 8141
	lw		r7, 0(r1)				# 8078
	lw		r9, 1(r25)				# 2994
	cmpi	r9, 1
	beq		.b18194				# 20947
.b18195:
	cmpi	r9, 2
	beq		.b18242				# 21033
.b18243:
	mv		r28, r4
	addi	r4, r4, 5				# 20110
	sw		r51, 0(r28)				# 20110
	sw		r51, 1(r28)				# 20110
	sw		r51, 2(r28)				# 20110
	sw		r51, 3(r28)				# 20110
	sw		r51, 4(r28)				# 20110
	lw		r41, 0(r7)				# 20142
	lw		r26, 1(r7)				# 20142
	lw		r54, 2(r7)				# 20142
	fmul	r9, r41, r41				# 14374
	lw		r15, 4(r25)				# 3734
	lw		r23, 0(r15)				# 14374
	fmul	r62, r9, r23				# 14374
	fmul	r9, r26, r26				# 14400
	lw		r46, 1(r15)				# 14400
	fmul	r9, r9, r46				# 14374
	fadd	r62, r62, r9				# 14374
	fmul	r9, r54, r54				# 14426
	lw		r37, 2(r15)				# 14426
	fmul	r9, r9, r37				# 14374
	fadd	r9, r62, r9				# 14354
	lw		r57, 3(r25)				# 3553
	cmpi	r57, 0
	beq		.b18252				# 14456
.b18253:
	fmul	r62, r26, r54				# 14522
	lw		r15, 9(r25)				# 5989
	lw		r30, 0(r15)				# 14522
	fmul	r62, r62, r30				# 14503
	fadd	r62, r9, r62				# 14503
	fmul	r9, r54, r41				# 14556
	lw		r30, 1(r15)				# 14556
	fmul	r9, r9, r30				# 14503
	fadd	r62, r62, r9				# 14503
	fmul	r9, r41, r26				# 14590
	lw		r15, 2(r15)				# 14590
	fmul	r9, r9, r15				# 14503
	fadd	r9, r62, r9				# 14503
.b18251:
	fmul	r62, r41, r23				# 20186
	fneg	r15, r62				# 20177
	fmul	r62, r26, r46				# 20228
	fneg	r46, r62				# 20219
	fmul	r62, r54, r37				# 20270
	fneg	r41, r62				# 20261
	sw		r9, 0(r28)				# 20304
	cmpi	r57, 0
	beq		.b18255				# 20324
.b18256:
	lw		r62, 2(r7)				# 20379
	lw		r25, 9(r25)				# 6179
	lw		r54, 1(r25)				# 20379
	fmul	r54, r62, r54				# 20379
	lw		r62, 1(r7)				# 20404
	lw		r30, 2(r25)				# 20404
	fmul	r62, r62, r30				# 20379
	fadd	r62, r54, r62				# 20372
	addis	r54, r0, 16384
	ori		r54, r54, 0				# 2996
	fdiv	r62, r62, r54				# 20366
	fsub	r62, r15, r62				# 20353
	sw		r62, 1(r28)				# 20353
	lw		r62, 2(r7)				# 20458
	lw		r15, 0(r25)				# 20458
	fmul	r15, r62, r15				# 20458
	lw		r30, 0(r7)				# 20483
	lw		r62, 2(r25)				# 20483
	fmul	r62, r30, r62				# 20458
	fadd	r62, r15, r62				# 20451
	fdiv	r62, r62, r54				# 20445
	fsub	r62, r46, r62				# 20432
	sw		r62, 2(r28)				# 20353
	lw		r62, 1(r7)				# 20537
	lw		r15, 0(r25)				# 20537
	fmul	r15, r62, r15				# 20537
	lw		r7, 0(r7)				# 20562
	lw		r62, 1(r25)				# 20562
	fmul	r62, r7, r62				# 20537
	fadd	r62, r15, r62				# 20530
	fdiv	r62, r62, r54				# 20524
	fsub	r62, r41, r62				# 20511
	sw		r62, 3(r28)				# 20511
	fcmp	r9, r51
	beq		.b18257				# 3126
.b18259:
	addis	r62, r0, 16256
	ori		r62, r62, 0				# 20709
	fdiv	r9, r62, r9				# 20696
	sw		r9, 4(r28)				# 20696
.b18257:
	swx		r28, r61, r10				# 21165
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b18191				# 20796
	b		.b18192
.b18255:
	sw		r15, 1(r28)				# 20601
	sw		r46, 2(r28)				# 20601
	sw		r41, 3(r28)				# 20643
	fcmp	r9, r51
	beq		.b18257				# 3126
	b		.b18259
.b18252:
	b		.b18251				# 14482
.b18242:
	addi	r9, r0, 4				# 19730
	mv		r28, r4
	addi	r4, r4, 4				# 19730
	addi	r62, r9, -1				# 19730
	addi	r9, r0, 0				# 19730
	cmp		r9, r62
	ble		.b18246				# 19730
.b18244:
	lw		r9, 0(r7)				# 19764
	lw		r54, 4(r25)				# 3734
	lw		r62, 0(r54)				# 19764
	fmul	r15, r9, r62				# 19764
	lw		r9, 1(r7)				# 19790
	lw		r62, 1(r54)				# 19790
	fmul	r9, r9, r62				# 19764
	fadd	r62, r15, r9				# 19764
	lw		r9, 2(r7)				# 19816
	lw		r15, 2(r54)				# 19816
	fmul	r9, r9, r15				# 19764
	fadd	r62, r62, r9				# 19752
	fcmp	r62, r51
	ble		.b18249				# 3156
.b18250:
	addis	r9, r0, 49024
	ori		r9, r9, 0				# 19882
	fdiv	r9, r9, r62				# 19869
	sw		r9, 0(r28)				# 19869
	lw		r9, 0(r54)				# 19916
	fdiv	r9, r9, r62				# 19910
	fneg	r9, r9				# 19897
	sw		r9, 1(r28)				# 19869
	lw		r9, 1(r54)				# 19958
	fdiv	r9, r9, r62				# 19952
	fneg	r9, r9				# 19939
	sw		r9, 2(r28)				# 19869
	lw		r9, 2(r54)				# 20000
	fdiv	r9, r9, r62				# 19994
	fneg	r9, r9				# 19981
	sw		r9, 3(r28)				# 19981
.b18248:
	swx		r28, r61, r10				# 21074
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b18191				# 20796
	b		.b18192
.b18249:
	sw		r51, 0(r28)				# 20032
	b		.b18248				# 20032
.b18246:
	swx		r51, r9, r28				# 19730
	addi	r9, r9, 1				# 19730
	cmp		r9, r62
	ble		.b18246				# 19730
	b		.b18244
.b18194:
	addi	r9, r0, 6				# 19127
	mv		r62, r4
	addi	r4, r4, 6				# 19127
	addi	r28, r9, -1				# 19127
	addi	r9, r0, 0				# 19127
	cmp		r9, r28
	ble		.b18198				# 19127
.b18196:
	lw		r9, 0(r7)				# 19153
	fcmp	r9, r51
	beq		.b18201				# 3126
.b18202:
	lw		r15, 6(r25)				# 3372
	fcmp	r51, r9
	ble		.b18204				# 3186
.b18205:
	addi	r28, r0, 1				# 3186
	cmpi	r15, 0
	beq		.b18207				# 765
.b18208:
	cmpi	r28, 0
	beq		.b18209				# 775
.b18210:
	addi	r28, r0, 0				# 775
	lw		r9, 4(r25)				# 3734
	lw		r9, 0(r9)				# 19222
	cmpi	r28, 0
	beq		.b18212				# 905
.b18213:
.b18211:
	sw		r9, 0(r62)				# 19209
	addis	r28, r0, 16256
	ori		r28, r28, 0				# 19302
	lw		r9, 0(r7)				# 19302
	fdiv	r9, r28, r9				# 19289
	sw		r9, 1(r62)				# 19289
	lw		r9, 1(r7)				# 19327
	fcmp	r9, r51
	beq		.b18215				# 3126
.b18216:
	lw		r28, 6(r25)				# 3372
	fcmp	r51, r9
	ble		.b18218				# 3186
.b18219:
	addi	r9, r0, 1				# 3186
	cmpi	r28, 0
	beq		.b18221				# 765
.b18222:
	cmpi	r9, 0
	beq		.b18223				# 775
.b18224:
	addi	r9, r0, 0				# 775
	lw		r28, 4(r25)				# 3920
	lw		r28, 1(r28)				# 19395
	cmpi	r9, 0
	beq		.b18226				# 905
.b18227:
.b18225:
	sw		r28, 2(r62)				# 19382
	addis	r28, r0, 16256
	ori		r28, r28, 0				# 19475
	lw		r9, 1(r7)				# 19475
	fdiv	r9, r28, r9				# 19462
	sw		r9, 3(r62)				# 19462
	lw		r9, 2(r7)				# 19500
	fcmp	r9, r51
	beq		.b18229				# 3126
.b18230:
	lw		r28, 6(r25)				# 3372
	fcmp	r51, r9
	ble		.b18232				# 3186
.b18233:
	addi	r9, r0, 1				# 3186
	cmpi	r28, 0
	beq		.b18235				# 765
.b18236:
	cmpi	r9, 0
	beq		.b18237				# 775
.b18238:
	addi	r9, r0, 0				# 775
	lw		r28, 4(r25)				# 4105
	lw		r28, 2(r28)				# 19568
	cmpi	r9, 0
	beq		.b18240				# 905
.b18241:
.b18239:
	sw		r28, 4(r62)				# 19555
	addis	r28, r0, 16256
	ori		r28, r28, 0				# 19648
	lw		r9, 2(r7)				# 19648
	fdiv	r9, r28, r9				# 19635
	sw		r9, 5(r62)				# 19635
.b18228:
	swx		r62, r61, r10				# 20985
	addi	r61, r61, -1				# 21212
	cmpi	r61, 0
	bge		.b18191				# 20796
	b		.b18192
.b18240:
	fneg	r28, r28				# 3025
	b		.b18239				# 3025
.b18237:
	addi	r9, r0, 1				# 775
	lw		r28, 4(r25)				# 4105
	lw		r28, 2(r28)				# 19568
	cmpi	r9, 0
	beq		.b18240				# 905
	b		.b18241
.b18235:
	lw		r28, 4(r25)				# 4105
	lw		r28, 2(r28)				# 19568
	cmpi	r9, 0
	beq		.b18240				# 905
	b		.b18241
.b18232:
	addi	r9, r0, 0				# 3186
	cmpi	r28, 0
	beq		.b18235				# 765
	b		.b18236
.b18229:
	sw		r51, 5(r62)				# 19525
	b		.b18228				# 19525
.b18226:
	fneg	r28, r28				# 3025
	b		.b18225				# 3025
.b18223:
	addi	r9, r0, 1				# 775
	lw		r28, 4(r25)				# 3920
	lw		r28, 1(r28)				# 19395
	cmpi	r9, 0
	beq		.b18226				# 905
	b		.b18227
.b18221:
	lw		r28, 4(r25)				# 3920
	lw		r28, 1(r28)				# 19395
	cmpi	r9, 0
	beq		.b18226				# 905
	b		.b18227
.b18218:
	addi	r9, r0, 0				# 3186
	cmpi	r28, 0
	beq		.b18221				# 765
	b		.b18222
.b18215:
	sw		r51, 3(r62)				# 19352
	lw		r9, 2(r7)				# 19500
	fcmp	r9, r51
	beq		.b18229				# 3126
	b		.b18230
.b18212:
	fneg	r9, r9				# 3025
	b		.b18211				# 3025
.b18209:
	addi	r28, r0, 1				# 775
	lw		r9, 4(r25)				# 3734
	lw		r9, 0(r9)				# 19222
	cmpi	r28, 0
	beq		.b18212				# 905
	b		.b18213
.b18207:
	lw		r9, 4(r25)				# 3734
	lw		r9, 0(r9)				# 19222
	cmpi	r28, 0
	beq		.b18212				# 905
	b		.b18213
.b18204:
	addi	r28, r0, 0				# 3186
	cmpi	r15, 0
	beq		.b18207				# 765
	b		.b18208
.b18201:
	sw		r51, 1(r62)				# 19179
	lw		r9, 1(r7)				# 19327
	fcmp	r9, r51
	beq		.b18215				# 3126
	b		.b18216
.b18198:
	swx		r51, r9, r62				# 19127
	addi	r9, r9, 1				# 19127
	cmp		r9, r28
	ble		.b18198				# 19127
	b		.b18196
	# judge_intersection_fast.2965
judge_intersection_fast.2965:
.Entry@judge_intersection_fast.2965:
	sw		r1, 0(r3)				# 0
	lli		r62, or_net.2515				# 28622
	addis	r61, r0, 20078
	ori		r61, r61, 27432				# 28622
	lli		r9, tmin.2524				# 28622
	lwi		r28, intersection_point.2527				# 28622
	sw		r28, -1(r3)				# 28622
	sw		r61, 0(r9)				# 28622
	addi	r9, r62, 0				# 28652
	sw		r9, -2(r3)				# 28652
	addi	r9, r0, 0				# 28095
T.loop18261:
	sw		r9, -3(r3)				# 28095
	lw		r61, -2(r3)				# 28095
	lwx		r9, r61, r9				# 28095
	sw		r9, -4(r3)				# 28095
	lw		r1, 0(r9)				# 28128
	cmpi	r1, -1
	beq		.b18260				# 28164
.b18263:
	cmpi	r1, 99
	beq		.b18265				# 28213
.b18266:
	lw		r2, 0(r3)				# 28310
	mflr	r63
	sw		r63, -5(r3)
	addi	r3, r3, -6
	bl		solver_fast2.2882
	addi	r3, r3, 6
	lw		r63, -5(r3)
	mtlr	r63				# 28310
	cmpi	r2, 0
	beq		.b18264				# 28364
.b18334:
	lli		r9, solver_dist.2518				# 28381
	addi	r61, r9, 0				# 28381
	sw		r61, -5(r3)				# 28381
	lli		r9, tmin.2524				# 28414
	addi	r9, r9, 0				# 28414
	fcmp	r9, r61
	ble		.b18264				# 3096
.b18336:
	addi	r9, r0, 1				# 27829
T.loop18337:
	sw		r9, -6(r3)				# 27829
	lw		r61, -4(r3)				# 27829
	lwx		r9, r61, r9				# 27829
	cmpi	r9, -1
	beq		.b18264				# 27860
.b18339:
	mul16i	r9, r9, 1				# 27901
	lli		r61, and_net.2509				# 27885
	add		r9, r61, r9				# 27885
	sw		r9, -7(r3)				# 27885
	addi	r9, r0, 0				# 26885
T.loop18341:
	sw		r9, -8(r3)				# 26885
	lw		r2, 0(r3)				# 8078
	lw		r61, 0(r2)				# 8078
	sw		r61, -9(r3)				# 8078
	lw		r61, -7(r3)				# 26915
	lwx		r1, r61, r9				# 26915
	sw		r1, -10(r3)				# 26915
	cmpi	r1, -1
	beq		.b18340				# 26952
.b18343:
	mflr	r63
	sw		r63, -11(r3)
	addi	r3, r3, -12
	bl		solver_fast2.2882
	addi	r3, r3, 12
	lw		r63, -11(r3)
	mtlr	r63				# 26986
	cmpi	r2, 0
	beq		.b18344				# 27027
.b18345:
	addi	r25, r0, 0				# 27095
	lw		r61, -5(r3)				# 27095
	fcmp	r61, r25
	ble		.b18348				# 3096
.b18350:
	lli		r51, tmin.2524				# 27125
	addi	r9, r51, 0				# 27125
	fcmp	r9, r61
	ble		.b18348				# 3096
.b18352:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 27169
	fadd	r15, r61, r9				# 27161
	lw		r28, -9(r3)				# 27198
	lw		r9, 0(r28)				# 27198
	fmul	r62, r9, r15				# 27198
	lli		r61, startp_fast.2557				# 27198
	addi	r9, r61, 0				# 27198
	fadd	r41, r62, r9				# 27189
	lw		r9, 1(r28)				# 27247
	fmul	r62, r9, r15				# 27247
	addi	r9, r61, 1				# 27247
	fadd	r30, r62, r9				# 27238
	lw		r9, 2(r28)				# 27296
	fmul	r9, r9, r15				# 27296
	addi	r61, r61, 2				# 27296
	fadd	r57, r9, r61				# 27287
	addi	r9, r0, 0				# 23025
	lw		r61, -7(r3)				# 23025
	lwx		r61, r61, r9				# 23025
	cmpi	r61, -1
	beq		.b18355				# 23052
.b18356:
	mul16i	r28, r61, 1				# 23106
	lli		r61, objects.2491				# 23095
	add		r46, r61, r28				# 23095
	lw		r28, 5(r46)				# 4475
	lw		r61, 0(r28)				# 22709
	fsub	r10, r41, r61				# 22700
	lw		r61, 1(r28)				# 22741
	fsub	r37, r30, r61				# 22732
	lw		r61, 2(r28)				# 22773
	fsub	r54, r57, r61				# 22764
	lw		r28, 1(r46)				# 2994
	cmpi	r28, 1
	beq		.b18358				# 22824
.b18359:
	cmpi	r28, 2
	beq		.b18371				# 22882
.b18372:
	fmul	r62, r10, r10				# 14374
	lw		r13, 4(r46)				# 3734
	lw		r61, 0(r13)				# 14374
	fmul	r62, r62, r61				# 14374
	fmul	r7, r37, r37				# 14400
	lw		r61, 1(r13)				# 14400
	fmul	r61, r7, r61				# 14374
	fadd	r61, r62, r61				# 14374
	fmul	r7, r54, r54				# 14426
	lw		r62, 2(r13)				# 14426
	fmul	r62, r7, r62				# 14374
	fadd	r61, r61, r62				# 14354
	lw		r62, 3(r46)				# 3553
	cmpi	r62, 0
	beq		.b18384				# 14456
.b18385:
	fmul	r62, r37, r54				# 14522
	lw		r7, 9(r46)				# 5989
	lw		r13, 0(r7)				# 14522
	fmul	r62, r62, r13				# 14503
	fadd	r62, r61, r62				# 14503
	fmul	r61, r54, r10				# 14556
	lw		r13, 1(r7)				# 14556
	fmul	r61, r61, r13				# 14503
	fadd	r62, r62, r61				# 14503
	fmul	r10, r10, r37				# 14590
	lw		r61, 2(r7)				# 14590
	fmul	r61, r10, r61				# 14503
	fadd	r61, r62, r61				# 14503
	cmpi	r28, 3
	beq		.b18387				# 22583
.b18388:
	lw		r28, 6(r46)				# 3372
	fcmp	r25, r61
	ble		.b18390				# 3186
.b18391:
	addi	r61, r0, 1				# 3186
	cmpi	r28, 0
	beq		.b18393				# 765
.b18394:
	cmpi	r61, 0
	beq		.b18395				# 775
.b18396:
	addi	r61, r0, 0				# 775
	cmpi	r61, 0
	beq		.b18397				# 22625
.b18398:
	addi	r61, r0, 0				# 22625
	cmpi	r61, 0
	beq		.b18399				# 23092
.b18400:
	addi	r9, r0, 0				# 23141
	cmpi	r9, 0
	beq		.b18348				# 27336
.b18402:
	sw		r15, 0(r51)				# 27393
	lw		r9, -1(r3)				# 1162
	sw		r41, 0(r9)				# 1162
	sw		r30, 1(r9)				# 1162
	sw		r57, 2(r9)				# 27393
	lli		r9, intersected_object_id.2530				# 27393
	lw		r61, -10(r3)				# 27393
	sw		r61, 0(r9)				# 27393
	lli		r9, intsec_rectside.2521				# 27485
	sw		r2, 0(r9)				# 27485
.b18348:
	lw		r9, -8(r3)				# 27573
	addi	r9, r9, 1				# 27573
	b		T.loop18341				# 27573
.b18399:
	addi	r9, r9, 1				# 23162
	lw		r61, -7(r3)				# 23025
	lwx		r61, r61, r9				# 23025
	cmpi	r61, -1
	beq		.b18355				# 23052
	b		.b18356
.b18355:
	addi	r9, r0, 1				# 23074
	cmpi	r9, 0
	beq		.b18348				# 27336
	b		.b18402
.b18397:
	addi	r61, r0, 1				# 22625
	cmpi	r61, 0
	beq		.b18399				# 23092
	b		.b18400
.b18395:
	addi	r61, r0, 1				# 775
	cmpi	r61, 0
	beq		.b18397				# 22625
	b		.b18398
.b18393:
	cmpi	r61, 0
	beq		.b18397				# 22625
	b		.b18398
.b18390:
	addi	r61, r0, 0				# 3186
	cmpi	r28, 0
	beq		.b18393				# 765
	b		.b18394
.b18387:
	addis	r28, r0, 16256
	ori		r28, r28, 0				# 22604
	fsub	r61, r61, r28				# 22604
	lw		r28, 6(r46)				# 3372
	fcmp	r25, r61
	ble		.b18390				# 3186
	b		.b18391
.b18384:
	cmpi	r28, 3
	beq		.b18387				# 22583
	b		.b18388
.b18371:
	lw		r62, 4(r46)				# 4293
	lw		r61, 0(r62)				# 2037
	fmul	r28, r61, r10				# 2037
	lw		r61, 1(r62)				# 2052
	fmul	r61, r61, r37				# 2037
	fadd	r28, r28, r61				# 2037
	lw		r61, 2(r62)				# 2067
	fmul	r61, r61, r54				# 2037
	fadd	r61, r28, r61				# 22411
	lw		r28, 6(r46)				# 3372
	fcmp	r25, r61
	ble		.b18374				# 3186
.b18375:
	addi	r61, r0, 1				# 3186
	cmpi	r28, 0
	beq		.b18377				# 765
.b18378:
	cmpi	r61, 0
	beq		.b18379				# 775
.b18380:
	addi	r61, r0, 0				# 775
	cmpi	r61, 0
	beq		.b18381				# 22459
.b18382:
	addi	r61, r0, 0				# 22459
	cmpi	r61, 0
	beq		.b18399				# 23092
	b		.b18400
.b18381:
	addi	r61, r0, 1				# 22459
	cmpi	r61, 0
	beq		.b18399				# 23092
	b		.b18400
.b18379:
	addi	r61, r0, 1				# 775
	cmpi	r61, 0
	beq		.b18381				# 22459
	b		.b18382
.b18377:
	cmpi	r61, 0
	beq		.b18381				# 22459
	b		.b18382
.b18374:
	addi	r61, r0, 0				# 3186
	cmpi	r28, 0
	beq		.b18377				# 765
	b		.b18378
.b18358:
	fabs	r62, r10				# 322
	lw		r28, 4(r46)				# 3734
	lw		r61, 0(r28)				# 22178
	fcmp	r61, r62
	ble		.b18361				# 3096
.b18362:
	fabs	r62, r37				# 322
	lw		r61, 1(r28)				# 22224
	fcmp	r61, r62
	ble		.b18363				# 3096
.b18364:
	fabs	r61, r54				# 322
	lw		r28, 2(r28)				# 22261
	fcmp	r28, r61
	ble		.b18365				# 3096
.b18366:
	addi	r61, r0, 1				# 3096
	cmpi	r61, 0
	beq		.b18367				# 22167
.b18368:
	lw		r61, 6(r46)				# 3372
	cmpi	r61, 0
	beq		.b18399				# 23092
	b		.b18400
.b18367:
	lw		r61, 6(r46)				# 3372
	cmpi	r61, 0
	beq		.b18369				# 22348
.b18370:
	addi	r61, r0, 0				# 22348
	cmpi	r61, 0
	beq		.b18399				# 23092
	b		.b18400
.b18369:
	addi	r61, r0, 1				# 22348
	cmpi	r61, 0
	beq		.b18399				# 23092
	b		.b18400
.b18365:
	addi	r61, r0, 0				# 3096
	cmpi	r61, 0
	beq		.b18367				# 22167
	b		.b18368
.b18363:
	addi	r61, r0, 0				# 22302
	cmpi	r61, 0
	beq		.b18367				# 22167
	b		.b18368
.b18361:
	addi	r61, r0, 0				# 22317
	cmpi	r61, 0
	beq		.b18367				# 22167
	b		.b18368
.b18344:
	lw		r9, -10(r3)				# 27668
	mul16i	r9, r9, 1				# 27668
	lli		r61, objects.2491				# 27656
	add		r9, r61, r9				# 27656
	lw		r9, 6(r9)				# 3372
	cmpi	r9, 0
	beq		.b18340				# 27653
.b18347:
	lw		r9, -8(r3)				# 27691
	addi	r9, r9, 1				# 27691
	b		T.loop18341				# 27691
.b18340:
	lw		r9, -6(r3)				# 27971
	addi	r9, r9, 1				# 27971
	b		T.loop18337				# 27971
.b18264:
	lw		r9, -3(r3)				# 28519
	addi	r9, r9, 1				# 28519
	b		T.loop18261				# 28519
.b18265:
	addi	r9, r0, 1				# 27829
T.loop18267:
	sw		r9, -5(r3)				# 27829
	lw		r61, -4(r3)				# 27829
	lwx		r9, r61, r9				# 27829
	cmpi	r9, -1
	beq		.b18264				# 27860
.b18269:
	mul16i	r9, r9, 1				# 27901
	lli		r61, and_net.2509				# 27885
	add		r9, r61, r9				# 27885
	sw		r9, -6(r3)				# 27885
	addi	r9, r0, 0				# 26885
T.loop18271:
	sw		r9, -7(r3)				# 26885
	lw		r2, 0(r3)				# 8078
	lw		r61, 0(r2)				# 8078
	sw		r61, -8(r3)				# 8078
	lw		r61, -6(r3)				# 26915
	lwx		r1, r61, r9				# 26915
	sw		r1, -9(r3)				# 26915
	cmpi	r1, -1
	beq		.b18270				# 26952
.b18273:
	mflr	r63
	sw		r63, -10(r3)
	addi	r3, r3, -11
	bl		solver_fast2.2882
	addi	r3, r3, 11
	lw		r63, -10(r3)
	mtlr	r63				# 26986
	cmpi	r2, 0
	beq		.b18274				# 27027
.b18275:
	lli		r9, solver_dist.2518				# 27058
	addi	r9, r9, 0				# 27058
	addi	r54, r0, 0				# 27095
	fcmp	r9, r54
	ble		.b18278				# 3096
.b18280:
	lli		r30, tmin.2524				# 27125
	addi	r61, r30, 0				# 27125
	fcmp	r61, r9
	ble		.b18278				# 3096
.b18282:
	addis	r61, r0, 15395
	ori		r61, r61, 55050				# 27169
	fadd	r41, r9, r61				# 27161
	lw		r61, -8(r3)				# 27198
	lw		r9, 0(r61)				# 27198
	fmul	r9, r9, r41				# 27198
	lli		r62, startp_fast.2557				# 27198
	addi	r28, r62, 0				# 27198
	fadd	r51, r9, r28				# 27189
	lw		r9, 1(r61)				# 27247
	fmul	r9, r9, r41				# 27247
	addi	r28, r62, 1				# 27247
	fadd	r15, r9, r28				# 27238
	lw		r9, 2(r61)				# 27296
	fmul	r9, r9, r41				# 27296
	addi	r61, r62, 2				# 27296
	fadd	r37, r9, r61				# 27287
	addi	r61, r0, 0				# 23025
	lw		r9, -6(r3)				# 23025
	lwx		r9, r9, r61				# 23025
	cmpi	r9, -1
	beq		.b18285				# 23052
.b18286:
	mul16i	r9, r9, 1				# 23106
	lli		r28, objects.2491				# 23095
	add		r25, r28, r9				# 23095
	lw		r28, 5(r25)				# 4475
	lw		r9, 0(r28)				# 22709
	fsub	r46, r51, r9				# 22700
	lw		r9, 1(r28)				# 22741
	fsub	r57, r15, r9				# 22732
	lw		r9, 2(r28)				# 22773
	fsub	r7, r37, r9				# 22764
	lw		r28, 1(r25)				# 2994
	cmpi	r28, 1
	beq		.b18288				# 22824
.b18289:
	cmpi	r28, 2
	beq		.b18301				# 22882
.b18302:
	fmul	r9, r46, r46				# 14374
	lw		r13, 4(r25)				# 3734
	lw		r62, 0(r13)				# 14374
	fmul	r62, r9, r62				# 14374
	fmul	r10, r57, r57				# 14400
	lw		r9, 1(r13)				# 14400
	fmul	r9, r10, r9				# 14374
	fadd	r10, r62, r9				# 14374
	fmul	r62, r7, r7				# 14426
	lw		r9, 2(r13)				# 14426
	fmul	r9, r62, r9				# 14374
	fadd	r9, r10, r9				# 14354
	lw		r62, 3(r25)				# 3553
	cmpi	r62, 0
	beq		.b18314				# 14456
.b18315:
	fmul	r13, r57, r7				# 14522
	lw		r10, 9(r25)				# 5989
	lw		r62, 0(r10)				# 14522
	fmul	r62, r13, r62				# 14503
	fadd	r9, r9, r62				# 14503
	fmul	r13, r7, r46				# 14556
	lw		r62, 1(r10)				# 14556
	fmul	r62, r13, r62				# 14503
	fadd	r62, r9, r62				# 14503
	fmul	r13, r46, r57				# 14590
	lw		r9, 2(r10)				# 14590
	fmul	r9, r13, r9				# 14503
	fadd	r9, r62, r9				# 14503
	cmpi	r28, 3
	beq		.b18317				# 22583
.b18318:
	lw		r28, 6(r25)				# 3372
	fcmp	r54, r9
	ble		.b18320				# 3186
.b18321:
	addi	r9, r0, 1				# 3186
	cmpi	r28, 0
	beq		.b18323				# 765
.b18324:
	cmpi	r9, 0
	beq		.b18325				# 775
.b18326:
	addi	r9, r0, 0				# 775
	cmpi	r9, 0
	beq		.b18327				# 22625
.b18328:
	addi	r9, r0, 0				# 22625
	cmpi	r9, 0
	beq		.b18329				# 23092
.b18330:
	addi	r9, r0, 0				# 23141
	cmpi	r9, 0
	beq		.b18278				# 27336
.b18332:
	sw		r41, 0(r30)				# 27393
	lw		r9, -1(r3)				# 1162
	sw		r51, 0(r9)				# 1162
	sw		r15, 1(r9)				# 1162
	sw		r37, 2(r9)				# 27393
	lli		r9, intersected_object_id.2530				# 27393
	lw		r61, -9(r3)				# 27393
	sw		r61, 0(r9)				# 27393
	lli		r9, intsec_rectside.2521				# 27485
	sw		r2, 0(r9)				# 27485
.b18278:
	lw		r9, -7(r3)				# 27573
	addi	r9, r9, 1				# 27573
	b		T.loop18271				# 27573
.b18329:
	addi	r61, r61, 1				# 23162
	lw		r9, -6(r3)				# 23025
	lwx		r9, r9, r61				# 23025
	cmpi	r9, -1
	beq		.b18285				# 23052
	b		.b18286
.b18285:
	addi	r9, r0, 1				# 23074
	cmpi	r9, 0
	beq		.b18278				# 27336
	b		.b18332
.b18327:
	addi	r9, r0, 1				# 22625
	cmpi	r9, 0
	beq		.b18329				# 23092
	b		.b18330
.b18325:
	addi	r9, r0, 1				# 775
	cmpi	r9, 0
	beq		.b18327				# 22625
	b		.b18328
.b18323:
	cmpi	r9, 0
	beq		.b18327				# 22625
	b		.b18328
.b18320:
	addi	r9, r0, 0				# 3186
	cmpi	r28, 0
	beq		.b18323				# 765
	b		.b18324
.b18317:
	addis	r28, r0, 16256
	ori		r28, r28, 0				# 22604
	fsub	r9, r9, r28				# 22604
	lw		r28, 6(r25)				# 3372
	fcmp	r54, r9
	ble		.b18320				# 3186
	b		.b18321
.b18314:
	cmpi	r28, 3
	beq		.b18317				# 22583
	b		.b18318
.b18301:
	lw		r62, 4(r25)				# 4293
	lw		r9, 0(r62)				# 2037
	fmul	r28, r9, r46				# 2037
	lw		r9, 1(r62)				# 2052
	fmul	r9, r9, r57				# 2037
	fadd	r9, r28, r9				# 2037
	lw		r28, 2(r62)				# 2067
	fmul	r28, r28, r7				# 2037
	fadd	r9, r9, r28				# 22411
	lw		r28, 6(r25)				# 3372
	fcmp	r54, r9
	ble		.b18304				# 3186
.b18305:
	addi	r9, r0, 1				# 3186
	cmpi	r28, 0
	beq		.b18307				# 765
.b18308:
	cmpi	r9, 0
	beq		.b18309				# 775
.b18310:
	addi	r9, r0, 0				# 775
	cmpi	r9, 0
	beq		.b18311				# 22459
.b18312:
	addi	r9, r0, 0				# 22459
	cmpi	r9, 0
	beq		.b18329				# 23092
	b		.b18330
.b18311:
	addi	r9, r0, 1				# 22459
	cmpi	r9, 0
	beq		.b18329				# 23092
	b		.b18330
.b18309:
	addi	r9, r0, 1				# 775
	cmpi	r9, 0
	beq		.b18311				# 22459
	b		.b18312
.b18307:
	cmpi	r9, 0
	beq		.b18311				# 22459
	b		.b18312
.b18304:
	addi	r9, r0, 0				# 3186
	cmpi	r28, 0
	beq		.b18307				# 765
	b		.b18308
.b18288:
	fabs	r62, r46				# 322
	lw		r9, 4(r25)				# 3734
	lw		r28, 0(r9)				# 22178
	fcmp	r28, r62
	ble		.b18291				# 3096
.b18292:
	fabs	r28, r57				# 322
	lw		r62, 1(r9)				# 22224
	fcmp	r62, r28
	ble		.b18293				# 3096
.b18294:
	fabs	r28, r7				# 322
	lw		r9, 2(r9)				# 22261
	fcmp	r9, r28
	ble		.b18295				# 3096
.b18296:
	addi	r9, r0, 1				# 3096
	cmpi	r9, 0
	beq		.b18297				# 22167
.b18298:
	lw		r9, 6(r25)				# 3372
	cmpi	r9, 0
	beq		.b18329				# 23092
	b		.b18330
.b18297:
	lw		r9, 6(r25)				# 3372
	cmpi	r9, 0
	beq		.b18299				# 22348
.b18300:
	addi	r9, r0, 0				# 22348
	cmpi	r9, 0
	beq		.b18329				# 23092
	b		.b18330
.b18299:
	addi	r9, r0, 1				# 22348
	cmpi	r9, 0
	beq		.b18329				# 23092
	b		.b18330
.b18295:
	addi	r9, r0, 0				# 3096
	cmpi	r9, 0
	beq		.b18297				# 22167
	b		.b18298
.b18293:
	addi	r9, r0, 0				# 22302
	cmpi	r9, 0
	beq		.b18297				# 22167
	b		.b18298
.b18291:
	addi	r9, r0, 0				# 22317
	cmpi	r9, 0
	beq		.b18297				# 22167
	b		.b18298
.b18274:
	lw		r9, -9(r3)				# 27668
	mul16i	r61, r9, 1				# 27668
	lli		r9, objects.2491				# 27656
	add		r9, r9, r61				# 27656
	lw		r9, 6(r9)				# 3372
	cmpi	r9, 0
	beq		.b18270				# 27653
.b18277:
	lw		r9, -7(r3)				# 27691
	addi	r9, r9, 1				# 27691
	b		T.loop18271				# 27691
.b18270:
	lw		r9, -5(r3)				# 27971
	addi	r9, r9, 1				# 27971
	b		T.loop18267				# 27971
.b18260:
	lli		r9, tmin.2524				# 28698
	addi	r61, r9, 0				# 28698
	addis	r9, r0, 48588
	ori		r9, r9, 52429				# 28725
	fcmp	r61, r9
	ble		.b18403				# 3096
.b18404:
	addis	r9, r0, 19646
	ori		r9, r9, 48160				# 28751
	fcmp	r9, r61
	ble		.b18405				# 3096
.b18406:
	addi	r2, r0, 1				# 3096
	blr				# 3096
.b18405:
	addi	r2, r0, 0				# 3096
	blr				# 3096
.b18403:
	addi	r2, r0, 0				# 28779
	blr				# 28779
	# utexture.2976
utexture.2976:
.Entry@utexture.2976:
	addi	r13, r0, 0				# 2815
	addis	r15, r0, 17279
	ori		r15, r15, 0				# 2815
	lli		r10, texture_color.2536				# 2815
	lw		r9, 0(r1)				# 2815
	lw		r61, 8(r1)				# 5421
	lw		r28, 0(r61)				# 30014
	sw		r28, 0(r10)				# 30014
	lw		r28, 1(r61)				# 30052
	sw		r28, 1(r10)				# 30014
	lw		r61, 2(r61)				# 30092
	sw		r61, 2(r10)				# 30014
	cmpi	r9, 1
	beq		.b18407				# 30131
.b18408:
	cmpi	r9, 2
	beq		.b18422				# 30575
.b18423:
	cmpi	r9, 3
	beq		.b18424				# 30745
.b18425:
	cmpi	r9, 4
	beq		.b18426				# 31084
.b18427:
	blr				# 31851
.b18426:
	lw		r9, 0(r2)				# 31118
	lw		r7, 5(r1)				# 4475
	lw		r61, 0(r7)				# 31118
	fsub	r9, r9, r61				# 31117
	lw		r51, 4(r1)				# 3734
	lw		r61, 0(r51)				# 31144
	fsqrt	r61, r61				# 227
	fmul	r9, r9, r61				# 31108
	lw		r61, 2(r2)				# 31181
	lw		r28, 2(r7)				# 31181
	fsub	r61, r61, r28				# 31180
	lw		r28, 2(r51)				# 31207
	fsqrt	r28, r28				# 227
	fmul	r62, r61, r28				# 31171
	fmul	r61, r9, r9				# 31243
	fmul	r28, r62, r62				# 31243
	fadd	r28, r61, r28				# 31234
	fabs	r54, r9				# 322
	addis	r61, r0, 14545
	ori		r61, r61, 46871				# 31291
	fcmp	r61, r54
	ble		.b18429				# 3096
.b18430:
	addis	r9, r0, 16752
	ori		r9, r9, 0				# 31320
.b18428:
	ffloor	r62, r9				# 765
	fsub	r54, r9, r62				# 31412
	lw		r62, 1(r2)				# 31456
	lw		r9, 1(r7)				# 31456
	fsub	r62, r62, r9				# 31455
	lw		r9, 1(r51)				# 31482
	fsqrt	r9, r9				# 227
	fmul	r62, r62, r9				# 31446
	fabs	r9, r28				# 322
	fcmp	r61, r9
	ble		.b18432				# 3096
.b18433:
	addis	r61, r0, 16752
	ori		r61, r61, 0				# 31556
.b18431:
	ffloor	r9, r61				# 765
	fsub	r62, r61, r9				# 31646
	addis	r28, r0, 15897
	ori		r28, r28, 39322				# 31690
	addis	r61, r0, 16128
	ori		r61, r61, 0				# 31705
	fsub	r9, r61, r54				# 31699
	fmul	r9, r9, r9				# 31690
	fsub	r9, r28, r9				# 31690
	fsub	r61, r61, r62				# 31721
	fmul	r61, r61, r61				# 31690
	fsub	r9, r9, r61				# 31680
	fcmp	r13, r9
	ble		.b18435				# 3186
.b18436:
	addi	r9, r0, 0				# 31776
.b18434:
	fmul	r61, r15, r9				# 31817
	addis	r9, r0, 16025
	ori		r9, r9, 39322				# 31817
	fdiv	r9, r61, r9				# 31796
	sw		r9, 2(r10)				# 31796
	blr				# 31796
.b18435:
	b		.b18434				# 31785
.b18432:
	fdiv	r9, r62, r28				# 31582
	fabs	r9, r9				# 322
	fatan	r9, r9				# 440
	addis	r61, r0, 16880
	ori		r61, r61, 0				# 31603
	fmul	r9, r9, r61				# 31602
	addis	r61, r0, 16457
	ori		r61, r61, 4059				# 31602
	fdiv	r61, r9, r61				# 31602
	b		.b18431				# 31602
.b18429:
	fdiv	r9, r62, r9				# 31347
	fabs	r9, r9				# 322
	fatan	r62, r9				# 440
	addis	r9, r0, 16880
	ori		r9, r9, 0				# 31369
	fmul	r62, r62, r9				# 31368
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 31368
	fdiv	r9, r62, r9				# 31368
	b		.b18428				# 31368
.b18424:
	lw		r61, 0(r2)				# 30784
	lw		r62, 5(r1)				# 4475
	lw		r9, 0(r62)				# 30784
	fsub	r61, r61, r9				# 30775
	lw		r28, 2(r2)				# 30823
	lw		r9, 2(r62)				# 30823
	fsub	r9, r28, r9				# 30814
	fmul	r61, r61, r61				# 30868
	fmul	r9, r9, r9				# 30868
	fadd	r9, r61, r9				# 30862
	fsqrt	r61, r9				# 227
	addis	r9, r0, 16672
	ori		r9, r9, 0				# 30862
	fdiv	r61, r61, r9				# 30853
	ffloor	r9, r61				# 765
	fsub	r61, r61, r9				# 30915
	addis	r9, r0, 16457
	ori		r9, r9, 4059				# 30915
	fmul	r9, r61, r9				# 30905
	fcos	r9, r9				# 133
	fmul	r61, r9, r9				# 30954
	fmul	r9, r61, r15				# 30987
	sw		r9, 1(r10)				# 30987
	addis	r9, r0, 16256
	ori		r9, r9, 0				# 31050
	fsub	r9, r9, r61				# 31049
	fmul	r9, r9, r15				# 31028
	sw		r9, 2(r10)				# 31028
	blr				# 31028
.b18422:
	lw		r9, 1(r2)				# 30625
	addis	r61, r0, 16000
	ori		r61, r61, 0				# 30625
	fmul	r9, r9, r61				# 30620
	fsin	r9, r9				# 40
	fmul	r9, r9, r9				# 30605
	fmul	r61, r15, r9				# 30650
	sw		r61, 0(r10)				# 30650
	addis	r61, r0, 16256
	ori		r61, r61, 0				# 30721
	fsub	r9, r61, r9				# 30711
	fmul	r9, r15, r9				# 30690
	sw		r9, 1(r10)				# 30690
	blr				# 30690
.b18407:
	lw		r61, 0(r2)				# 30169
	lw		r62, 5(r1)				# 4475
	lw		r9, 0(r62)				# 30169
	fsub	r9, r61, r9				# 30160
	addis	r28, r0, 15692
	ori		r28, r28, 52429				# 30234
	fmul	r61, r9, r28				# 30227
	ffloor	r15, r61				# 765
	addis	r61, r0, 16800
	ori		r61, r61, 0				# 30226
	fmul	r15, r15, r61				# 30217
	fsub	r9, r9, r15				# 30264
	addis	r13, r0, 16672
	ori		r13, r13, 0				# 30264
	fcmp	r13, r9
	ble		.b18410				# 3096
.b18411:
	addi	r51, r0, 1				# 3096
.b18409:
	lw		r15, 2(r2)				# 30308
	lw		r9, 2(r62)				# 30308
	fsub	r62, r15, r9				# 30299
	fmul	r9, r62, r28				# 30366
	ffloor	r9, r9				# 765
	fmul	r9, r9, r61				# 30356
	fsub	r9, r62, r9				# 30404
	fcmp	r13, r9
	ble		.b18413				# 3096
.b18414:
	addi	r9, r0, 1				# 3096
	cmpi	r51, 0
	beq		.b18416				# 30467
.b18417:
	cmpi	r9, 0
	beq		.b18420				# 30489
.b18421:
	addis	r9, r0, 17279
	ori		r9, r9, 0				# 30503
	sw		r9, 1(r10)				# 30439
	blr				# 30439
.b18420:
	addi	r9, r0, 0				# 30514
	sw		r9, 1(r10)				# 30439
	blr				# 30439
.b18416:
	cmpi	r9, 0
	beq		.b18418				# 30532
.b18419:
	addi	r9, r0, 0				# 30546
	sw		r9, 1(r10)				# 30439
	blr				# 30439
.b18418:
	addis	r9, r0, 17279
	ori		r9, r9, 0				# 30555
	sw		r9, 1(r10)				# 30439
	blr				# 30439
.b18413:
	addi	r9, r0, 0				# 3096
	cmpi	r51, 0
	beq		.b18416				# 30467
	b		.b18417
.b18410:
	addi	r51, r0, 0				# 3096
	b		.b18409				# 3096
	# trace_diffuse_ray.2994
trace_diffuse_ray.2994:
.Entry@trace_diffuse_ray.2994:
	sw		r2, 0(r3)				# 0
	sw		r1, -1(r3)				# 0
	lwi		r9, intersection_point.2527				# 35087
	sw		r9, -2(r3)				# 35087
	lwi		r9, light_dirvec.2588				# 35087
	sw		r9, -3(r3)				# 35087
	mflr	r63
	sw		r63, -4(r3)
	addi	r3, r3, -5
	bl		judge_intersection_fast.2965
	addi	r3, r3, 5
	lw		r63, -4(r3)
	mtlr	r63				# 35087
	cmpi	r2, 0
	beq		.b18437				# 35087
.b18438:
	lli		r9, intersected_object_id.2530				# 35140
	addi	r9, r9, 0				# 35140
	mul16i	r61, r9, 1				# 35140
	lli		r9, objects.2491				# 35130
	add		r1, r9, r61				# 35130
	sw		r1, -4(r3)				# 35130
	lw		r9, -1(r3)				# 8078
	lw		r9, 0(r9)				# 8078
	lw		r61, 1(r1)				# 2994
	cmpi	r61, 1
	beq		.b18440				# 29818
.b18441:
	cmpi	r61, 2
	beq		.b18447				# 29873
.b18448:
	lw		r62, -2(r3)				# 29136
	lw		r9, 0(r62)				# 29136
	lw		r28, 5(r1)				# 4475
	lw		r61, 0(r28)				# 29136
	fsub	r15, r9, r61				# 29127
	lw		r9, 1(r62)				# 29188
	lw		r61, 1(r28)				# 29188
	fsub	r25, r9, r61				# 29179
	lw		r61, 2(r62)				# 29240
	lw		r9, 2(r28)				# 29240
	fsub	r51, r61, r9				# 29231
	lw		r61, 4(r1)				# 3734
	lw		r9, 0(r61)				# 29293
	fmul	r13, r15, r9				# 29284
	lw		r9, 1(r61)				# 29325
	fmul	r9, r25, r9				# 29316
	lw		r61, 2(r61)				# 29357
	fmul	r10, r51, r61				# 29348
	lw		r61, 3(r1)				# 3553
	cmpi	r61, 0
	beq		.b18450				# 29381
.b18451:
	lw		r62, 9(r1)				# 6369
	lw		r54, 2(r62)				# 29517
	fmul	r28, r25, r54				# 29517
	lw		r30, 1(r62)				# 29539
	fmul	r61, r51, r30				# 29517
	fadd	r61, r28, r61				# 29510
	addis	r28, r0, 16384
	ori		r28, r28, 0				# 2996
	fdiv	r61, r61, r28				# 29504
	fadd	r61, r13, r61				# 29489
	lli		r7, nvector.2533				# 29489
	sw		r61, 0(r7)				# 29489
	fmul	r13, r15, r54				# 29592
	lw		r62, 0(r62)				# 29614
	fmul	r61, r51, r62				# 29592
	fadd	r61, r13, r61				# 29585
	fdiv	r61, r61, r28				# 29579
	fadd	r9, r9, r61				# 29564
	sw		r9, 1(r7)				# 29489
	fmul	r9, r15, r30				# 29667
	fmul	r61, r25, r62				# 29667
	fadd	r9, r9, r61				# 29660
	fdiv	r9, r9, r28				# 29654
	fadd	r9, r10, r9				# 29639
	sw		r9, 2(r7)				# 29639
.b18449:
	lw		r51, 6(r1)				# 3372
	lli		r15, nvector.2533				# 1734
	addi	r10, r15, 0				# 1729
	fmul	r61, r10, r10				# 1729
	addi	r28, r15, 1				# 1743
	fmul	r9, r28, r28				# 1729
	fadd	r62, r61, r9				# 1729
	addi	r9, r15, 2				# 1757
	fmul	r61, r9, r9				# 1729
	fadd	r61, r62, r61				# 1723
	fsqrt	r62, r61				# 227
	addi	r61, r0, 0				# 1774
	fcmp	r62, r61
	beq		.b18453				# 3126
.b18454:
	cmpi	r51, 0
	beq		.b18455				# 1810
.b18456:
	addis	r61, r0, 49024
	ori		r61, r61, 0				# 1822
	fdiv	r62, r61, r62				# 1822
.b18452:
	fmul	r61, r10, r62				# 1851
	sw		r61, 0(r15)				# 1851
	fmul	r61, r28, r62				# 1875
	sw		r61, 1(r15)				# 1851
	fmul	r9, r9, r62				# 1899
	sw		r9, 2(r7)				# 1899
.b18439:
	lw		r2, -2(r3)				# 35183
	mflr	r63
	sw		r63, -5(r3)
	addi	r3, r3, -6
	bl		utexture.2976
	addi	r3, r3, 6
	lw		r63, -5(r3)
	mtlr	r63				# 35183
	lli		r9, or_net.2515				# 35265
	addi	r9, r9, 0				# 35265
	sw		r9, -5(r3)				# 35265
	addi	r9, r0, 0				# 24323
T.loop18458:
	sw		r9, -6(r3)				# 24323
	lw		r61, -5(r3)				# 24323
	lwx		r9, r61, r9				# 24323
	sw		r9, -7(r3)				# 24323
	lw		r1, 0(r9)				# 24355
	cmpi	r1, -1
	beq		.b18459				# 24391
.b18460:
	cmpi	r1, 99
	beq		.b18462				# 24451
.b18463:
	lw		r2, -3(r3)				# 24501
	lw		r5, -2(r3)				# 24501
	mflr	r63
	sw		r63, -8(r3)
	addi	r3, r3, -9
	bl		solver_fast.2864
	addi	r3, r3, 9
	lw		r63, -8(r3)
	mtlr	r63				# 24501
	cmpi	r2, 0
	beq		.b18464				# 24581
.b18465:
	lli		r9, solver_dist.2518				# 24609
	addi	r9, r9, 0				# 24609
	sw		r9, -8(r3)				# 24609
	addis	r61, r0, 48588
	ori		r61, r61, 52429				# 24609
	fcmp	r61, r9
	ble		.b18466				# 3096
.b18467:
	addi	r9, r0, 1				# 24006
T.loop18469:
	sw		r9, -9(r3)				# 24006
	lw		r61, -7(r3)				# 24006
	lwx		r9, r61, r9				# 24006
	cmpi	r9, -1
	beq		.b18470				# 24037
.b18471:
	mul16i	r9, r9, 1				# 24094
	lli		r61, and_net.2509				# 24078
	add		r9, r61, r9				# 24078
	sw		r9, -10(r3)				# 24078
	addi	r9, r0, 0				# 23266
T.loop18473:
	sw		r9, -11(r3)				# 23266
	lw		r61, -10(r3)				# 23266
	lwx		r1, r61, r9				# 23266
	sw		r1, -12(r3)				# 23266
	cmpi	r1, -1
	beq		.b18474				# 23266
.b18475:
	lw		r2, -3(r3)				# 23359
	lw		r5, -2(r3)				# 23359
	mflr	r63
	sw		r63, -13(r3)
	addi	r3, r3, -14
	bl		solver_fast.2864
	addi	r3, r3, 14
	lw		r63, -13(r3)
	mtlr	r63				# 23359
	cmpi	r2, 0
	beq		.b18477				# 23460
.b18478:
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	lw		r9, -8(r3)				# 3096
	fcmp	r61, r9
	ble		.b18479				# 3096
.b18480:
	addi	r9, r0, 1				# 3096
	cmpi	r9, 0
	beq		.b18481				# 23456
.b18482:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	lw		r61, -8(r3)				# 23516
	fadd	r61, r61, r9				# 23516
	lli		r15, light.2500				# 23554
	addi	r9, r15, 0				# 23554
	fmul	r62, r9, r61				# 23554
	lw		r28, -2(r3)				# 23554
	lw		r9, 0(r28)				# 23554
	fadd	r13, r62, r9				# 23545
	addi	r9, r15, 1				# 23613
	fmul	r62, r9, r61				# 23613
	lw		r9, 1(r28)				# 23613
	fadd	r54, r62, r9				# 23604
	addi	r9, r15, 2				# 23672
	fmul	r9, r9, r61				# 23672
	lw		r61, 2(r28)				# 23672
	fadd	r15, r9, r61				# 23663
	addi	r61, r0, 0				# 23025
	lw		r9, -10(r3)				# 23025
	lwx		r9, r9, r61				# 23025
	cmpi	r9, -1
	beq		.b18487				# 23052
.b18488:
	mul16i	r28, r9, 1				# 23106
	lli		r9, objects.2491				# 23095
	add		r25, r9, r28				# 23095
	lw		r28, 5(r25)				# 4475
	lw		r9, 0(r28)				# 22709
	fsub	r51, r13, r9				# 22700
	lw		r9, 1(r28)				# 22741
	fsub	r7, r54, r9				# 22732
	lw		r9, 2(r28)				# 22773
	fsub	r41, r15, r9				# 22764
	lw		r10, 1(r25)				# 2994
	cmpi	r10, 1
	beq		.b18490				# 22824
.b18491:
	cmpi	r10, 2
	beq		.b18503				# 22882
.b18504:
	fmul	r9, r51, r51				# 14374
	lw		r30, 4(r25)				# 3734
	lw		r28, 0(r30)				# 14374
	fmul	r28, r9, r28				# 14374
	fmul	r9, r7, r7				# 14400
	lw		r62, 1(r30)				# 14400
	fmul	r9, r9, r62				# 14374
	fadd	r62, r28, r9				# 14374
	fmul	r28, r41, r41				# 14426
	lw		r9, 2(r30)				# 14426
	fmul	r9, r28, r9				# 14374
	fadd	r9, r62, r9				# 14354
	lw		r28, 3(r25)				# 3553
	cmpi	r28, 0
	beq		.b18516				# 14456
.b18517:
	fmul	r30, r7, r41				# 14522
	lw		r28, 9(r25)				# 5989
	lw		r62, 0(r28)				# 14522
	fmul	r62, r30, r62				# 14503
	fadd	r9, r9, r62				# 14503
	fmul	r30, r41, r51				# 14556
	lw		r62, 1(r28)				# 14556
	fmul	r62, r30, r62				# 14503
	fadd	r9, r9, r62				# 14503
	fmul	r62, r51, r7				# 14590
	lw		r28, 2(r28)				# 14590
	fmul	r28, r62, r28				# 14503
	fadd	r9, r9, r28				# 14503
	cmpi	r10, 3
	beq		.b18519				# 22583
.b18520:
	lw		r28, 6(r25)				# 3372
	addi	r62, r0, 0				# 22630
	fcmp	r62, r9
	ble		.b18522				# 3186
.b18523:
	addi	r9, r0, 1				# 3186
	cmpi	r28, 0
	beq		.b18525				# 765
.b18526:
	cmpi	r9, 0
	beq		.b18527				# 775
.b18528:
	addi	r9, r0, 0				# 775
	cmpi	r9, 0
	beq		.b18529				# 22625
.b18530:
	addi	r9, r0, 0				# 22625
	cmpi	r9, 0
	beq		.b18531				# 23092
.b18532:
	addi	r9, r0, 0				# 23141
	cmpi	r9, 0
	beq		.b18533				# 23722
.b18534:
	addi	r9, r0, 1				# 23769
	cmpi	r9, 0
	beq		.b18535				# 24173
.b18536:
	addi	r9, r0, 1				# 24196
	cmpi	r9, 0
	beq		.b18537				# 24655
.b18538:
	addi	r9, r0, 1				# 24710
	cmpi	r9, 0
	beq		.b18539				# 24441
.b18540:
	addi	r9, r0, 1				# 24006
T.loop18542:
	sw		r9, -13(r3)				# 24006
	lw		r61, -7(r3)				# 24006
	lwx		r9, r61, r9				# 24006
	cmpi	r9, -1
	beq		.b18543				# 24037
.b18544:
	mul16i	r9, r9, 1				# 24094
	lli		r61, and_net.2509				# 24078
	add		r9, r61, r9				# 24078
	sw		r9, -14(r3)				# 24078
	addi	r9, r0, 0				# 23266
T.loop18546:
	sw		r9, -15(r3)				# 23266
	lw		r61, -14(r3)				# 23266
	lwx		r1, r61, r9				# 23266
	sw		r1, -16(r3)				# 23266
	cmpi	r1, -1
	beq		.b18547				# 23266
.b18548:
	lw		r5, -2(r3)				# 23359
	lw		r2, -3(r3)				# 23359
	mflr	r63
	sw		r63, -17(r3)
	addi	r3, r3, -18
	bl		solver_fast.2864
	addi	r3, r3, 18
	lw		r63, -17(r3)
	mtlr	r63				# 23359
	lli		r9, solver_dist.2518				# 23423
	addi	r61, r9, 0				# 23423
	cmpi	r2, 0
	beq		.b18550				# 23460
.b18551:
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r61
	ble		.b18552				# 3096
.b18553:
	addi	r9, r0, 1				# 3096
	cmpi	r9, 0
	beq		.b18554				# 23456
.b18555:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r15, r61, r9				# 23516
	lli		r28, light.2500				# 23554
	addi	r9, r28, 0				# 23554
	fmul	r61, r9, r15				# 23554
	lw		r62, -2(r3)				# 23554
	lw		r9, 0(r62)				# 23554
	fadd	r51, r61, r9				# 23545
	addi	r9, r28, 1				# 23613
	fmul	r61, r9, r15				# 23613
	lw		r9, 1(r62)				# 23613
	fadd	r30, r61, r9				# 23604
	addi	r9, r28, 2				# 23672
	fmul	r61, r9, r15				# 23672
	lw		r9, 2(r62)				# 23672
	fadd	r7, r61, r9				# 23663
	addi	r61, r0, 0				# 23025
	lw		r9, -14(r3)				# 23025
	lwx		r9, r9, r61				# 23025
	cmpi	r9, -1
	beq		.b18560				# 23052
.b18561:
	mul16i	r9, r9, 1				# 23106
	lli		r28, objects.2491				# 23095
	add		r41, r28, r9				# 23095
	lw		r9, 5(r41)				# 4475
	lw		r28, 0(r9)				# 22709
	fsub	r10, r51, r28				# 22700
	lw		r28, 1(r9)				# 22741
	fsub	r28, r30, r28				# 22732
	lw		r9, 2(r9)				# 22773
	fsub	r25, r7, r9				# 22764
	lw		r54, 1(r41)				# 2994
	cmpi	r54, 1
	beq		.b18563				# 22824
.b18564:
	cmpi	r54, 2
	beq		.b18576				# 22882
.b18577:
	fmul	r9, r10, r10				# 14374
	lw		r13, 4(r41)				# 3734
	lw		r62, 0(r13)				# 14374
	fmul	r62, r9, r62				# 14374
	fmul	r15, r28, r28				# 14400
	lw		r9, 1(r13)				# 14400
	fmul	r9, r15, r9				# 14374
	fadd	r9, r62, r9				# 14374
	fmul	r15, r25, r25				# 14426
	lw		r62, 2(r13)				# 14426
	fmul	r62, r15, r62				# 14374
	fadd	r9, r9, r62				# 14354
	lw		r62, 3(r41)				# 3553
	cmpi	r62, 0
	beq		.b18589				# 14456
.b18590:
	fmul	r13, r28, r25				# 14522
	lw		r15, 9(r41)				# 5989
	lw		r62, 0(r15)				# 14522
	fmul	r62, r13, r62				# 14503
	fadd	r13, r9, r62				# 14503
	fmul	r62, r25, r10				# 14556
	lw		r9, 1(r15)				# 14556
	fmul	r9, r62, r9				# 14503
	fadd	r9, r13, r9				# 14503
	fmul	r62, r10, r28				# 14590
	lw		r28, 2(r15)				# 14590
	fmul	r28, r62, r28				# 14503
	fadd	r9, r9, r28				# 14503
	cmpi	r54, 3
	beq		.b18592				# 22583
.b18593:
	lw		r62, 6(r41)				# 3372
	addi	r28, r0, 0				# 22630
	fcmp	r28, r9
	ble		.b18595				# 3186
.b18596:
	addi	r9, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b18598				# 765
.b18599:
	cmpi	r9, 0
	beq		.b18600				# 775
.b18601:
	addi	r9, r0, 0				# 775
	cmpi	r9, 0
	beq		.b18602				# 22625
.b18603:
	addi	r9, r0, 0				# 22625
	cmpi	r9, 0
	beq		.b18604				# 23092
.b18605:
	addi	r9, r0, 0				# 23141
	cmpi	r9, 0
	beq		.b18606				# 23722
.b18607:
	addi	r9, r0, 1				# 23769
	cmpi	r9, 0
	beq		.b18608				# 24173
.b18609:
	addi	r9, r0, 1				# 24196
	cmpi	r9, 0
	beq		.b18610				# 24772
.b18611:
	addi	r9, r0, 1				# 24816
	cmpi	r9, 0
	beq		.b18612				# 35257
.b18613:
	blr				# 35500
.b18612:
	lli		r28, nvector.2533				# 1949
	addi	r9, r28, 0				# 1949
	lli		r61, light.2500				# 1949
	addi	r62, r61, 0				# 1949
	fmul	r62, r9, r62				# 1949
	addi	r9, r28, 1				# 1967
	addi	r15, r61, 1				# 1967
	fmul	r9, r9, r15				# 1949
	fadd	r62, r62, r9				# 1949
	addi	r28, r28, 2				# 1985
	addi	r9, r61, 2				# 1985
	fmul	r9, r28, r9				# 1949
	fadd	r9, r62, r9				# 35327
	fneg	r9, r9				# 35317
	addi	r61, r0, 0				# 35366
	fcmp	r9, r61
	ble		.b18615				# 3156
.b18616:
.b18614:
	lw		r61, 0(r3)				# 35442
	fmul	r61, r61, r9				# 35442
	lw		r9, -4(r3)				# 5033
	lw		r9, 7(r9)				# 5033
	lw		r9, 0(r9)				# 35442
	fmul	r15, r61, r9				# 35420
	lli		r62, diffuse_ray.2539				# 2129
	addi	r28, r62, 0				# 2129
	lli		r61, texture_color.2536				# 2141
	addi	r9, r61, 0				# 2141
	fmul	r9, r15, r9				# 2129
	fadd	r9, r28, r9				# 2117
	sw		r9, 0(r62)				# 2117
	addi	r28, r62, 1				# 2171
	addi	r9, r61, 1				# 2183
	fmul	r9, r15, r9				# 2171
	fadd	r9, r28, r9				# 2159
	sw		r9, 1(r62)				# 2117
	addi	r28, r62, 2				# 2213
	addi	r9, r61, 2				# 2225
	fmul	r9, r15, r9				# 2213
	fadd	r9, r28, r9				# 2201
	sw		r9, 2(r62)				# 2201
	blr				# 2201
.b18615:
	addi	r9, r0, 0				# 35406
	b		.b18614				# 35406
.b18610:
	lw		r9, -6(r3)				# 24833
	addi	r9, r9, 1				# 24833
	b		T.loop18458				# 24833
.b18608:
	lw		r9, -13(r3)				# 24216
	addi	r9, r9, 1				# 24216
	b		T.loop18542				# 24216
.b18606:
	lw		r9, -15(r3)				# 23786
	addi	r9, r9, 1				# 23786
	b		T.loop18546				# 23786
.b18604:
	addi	r61, r61, 1				# 23162
	lw		r9, -14(r3)				# 23025
	lwx		r9, r9, r61				# 23025
	cmpi	r9, -1
	beq		.b18560				# 23052
	b		.b18561
.b18560:
	addi	r9, r0, 1				# 23074
	cmpi	r9, 0
	beq		.b18606				# 23722
	b		.b18607
.b18602:
	addi	r9, r0, 1				# 22625
	cmpi	r9, 0
	beq		.b18604				# 23092
	b		.b18605
.b18600:
	addi	r9, r0, 1				# 775
	cmpi	r9, 0
	beq		.b18602				# 22625
	b		.b18603
.b18598:
	cmpi	r9, 0
	beq		.b18602				# 22625
	b		.b18603
.b18595:
	addi	r9, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b18598				# 765
	b		.b18599
.b18592:
	addis	r28, r0, 16256
	ori		r28, r28, 0				# 22604
	fsub	r9, r9, r28				# 22604
	lw		r62, 6(r41)				# 3372
	addi	r28, r0, 0				# 22630
	fcmp	r28, r9
	ble		.b18595				# 3186
	b		.b18596
.b18589:
	cmpi	r54, 3
	beq		.b18592				# 22583
	b		.b18593
.b18576:
	lw		r9, 4(r41)				# 4293
	lw		r62, 0(r9)				# 2037
	fmul	r62, r62, r10				# 2037
	lw		r15, 1(r9)				# 2052
	fmul	r28, r15, r28				# 2037
	fadd	r28, r62, r28				# 2037
	lw		r9, 2(r9)				# 2067
	fmul	r9, r9, r25				# 2037
	fadd	r28, r28, r9				# 22411
	lw		r62, 6(r41)				# 3372
	addi	r9, r0, 0				# 22464
	fcmp	r9, r28
	ble		.b18579				# 3186
.b18580:
	addi	r9, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b18582				# 765
.b18583:
	cmpi	r9, 0
	beq		.b18584				# 775
.b18585:
	addi	r9, r0, 0				# 775
	cmpi	r9, 0
	beq		.b18586				# 22459
.b18587:
	addi	r9, r0, 0				# 22459
	cmpi	r9, 0
	beq		.b18604				# 23092
	b		.b18605
.b18586:
	addi	r9, r0, 1				# 22459
	cmpi	r9, 0
	beq		.b18604				# 23092
	b		.b18605
.b18584:
	addi	r9, r0, 1				# 775
	cmpi	r9, 0
	beq		.b18586				# 22459
	b		.b18587
.b18582:
	cmpi	r9, 0
	beq		.b18586				# 22459
	b		.b18587
.b18579:
	addi	r9, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b18582				# 765
	b		.b18583
.b18563:
	fabs	r15, r10				# 322
	lw		r9, 4(r41)				# 3734
	lw		r62, 0(r9)				# 22178
	fcmp	r62, r15
	ble		.b18566				# 3096
.b18567:
	fabs	r28, r28				# 322
	lw		r62, 1(r9)				# 22224
	fcmp	r62, r28
	ble		.b18568				# 3096
.b18569:
	fabs	r28, r25				# 322
	lw		r9, 2(r9)				# 22261
	fcmp	r9, r28
	ble		.b18570				# 3096
.b18571:
	addi	r9, r0, 1				# 3096
	cmpi	r9, 0
	beq		.b18572				# 22167
.b18573:
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b18604				# 23092
	b		.b18605
.b18572:
	lw		r9, 6(r41)				# 3372
	cmpi	r9, 0
	beq		.b18574				# 22348
.b18575:
	addi	r9, r0, 0				# 22348
	cmpi	r9, 0
	beq		.b18604				# 23092
	b		.b18605
.b18574:
	addi	r9, r0, 1				# 22348
	cmpi	r9, 0
	beq		.b18604				# 23092
	b		.b18605
.b18570:
	addi	r9, r0, 0				# 3096
	cmpi	r9, 0
	beq		.b18572				# 22167
	b		.b18573
.b18568:
	addi	r9, r0, 0				# 22302
	cmpi	r9, 0
	beq		.b18572				# 22167
	b		.b18573
.b18566:
	addi	r9, r0, 0				# 22317
	cmpi	r9, 0
	beq		.b18572				# 22167
	b		.b18573
.b18554:
	lw		r9, -16(r3)				# 23864
	mul16i	r9, r9, 1				# 23864
	lli		r61, objects.2491				# 23852
	add		r9, r61, r9				# 23852
	lw		r9, 6(r9)				# 3372
	cmpi	r9, 0
	beq		.b18556				# 23849
.b18557:
	lw		r9, -15(r3)				# 23885
	addi	r9, r9, 1				# 23885
	b		T.loop18546				# 23885
.b18556:
	addi	r9, r0, 0				# 23945
	cmpi	r9, 0
	beq		.b18608				# 24173
	b		.b18609
.b18552:
	addi	r9, r0, 0				# 3096
	cmpi	r9, 0
	beq		.b18554				# 23456
	b		.b18555
.b18550:
	addi	r9, r0, 0				# 23498
	cmpi	r9, 0
	beq		.b18554				# 23456
	b		.b18555
.b18547:
	addi	r9, r0, 0				# 23304
	cmpi	r9, 0
	beq		.b18608				# 24173
	b		.b18609
.b18543:
	addi	r9, r0, 0				# 24059
	cmpi	r9, 0
	beq		.b18610				# 24772
	b		.b18611
.b18539:
	lw		r9, -6(r3)				# 24896
	addi	r9, r9, 1				# 24896
	b		T.loop18458				# 24896
.b18537:
	addi	r9, r0, 0				# 24725
	cmpi	r9, 0
	beq		.b18539				# 24441
	b		.b18540
.b18535:
	lw		r9, -9(r3)				# 24216
	addi	r9, r9, 1				# 24216
	b		T.loop18469				# 24216
.b18533:
	lw		r9, -11(r3)				# 23786
	addi	r9, r9, 1				# 23786
	b		T.loop18473				# 23786
.b18531:
	addi	r61, r61, 1				# 23162
	lw		r9, -10(r3)				# 23025
	lwx		r9, r9, r61				# 23025
	cmpi	r9, -1
	beq		.b18487				# 23052
	b		.b18488
.b18487:
	addi	r9, r0, 1				# 23074
	cmpi	r9, 0
	beq		.b18533				# 23722
	b		.b18534
.b18529:
	addi	r9, r0, 1				# 22625
	cmpi	r9, 0
	beq		.b18531				# 23092
	b		.b18532
.b18527:
	addi	r9, r0, 1				# 775
	cmpi	r9, 0
	beq		.b18529				# 22625
	b		.b18530
.b18525:
	cmpi	r9, 0
	beq		.b18529				# 22625
	b		.b18530
.b18522:
	addi	r9, r0, 0				# 3186
	cmpi	r28, 0
	beq		.b18525				# 765
	b		.b18526
.b18519:
	addis	r28, r0, 16256
	ori		r28, r28, 0				# 22604
	fsub	r9, r9, r28				# 22604
	lw		r28, 6(r25)				# 3372
	addi	r62, r0, 0				# 22630
	fcmp	r62, r9
	ble		.b18522				# 3186
	b		.b18523
.b18516:
	cmpi	r10, 3
	beq		.b18519				# 22583
	b		.b18520
.b18503:
	lw		r62, 4(r25)				# 4293
	lw		r9, 0(r62)				# 2037
	fmul	r9, r9, r51				# 2037
	lw		r28, 1(r62)				# 2052
	fmul	r28, r28, r7				# 2037
	fadd	r28, r9, r28				# 2037
	lw		r9, 2(r62)				# 2067
	fmul	r9, r9, r41				# 2037
	fadd	r9, r28, r9				# 22411
	lw		r62, 6(r25)				# 3372
	addi	r28, r0, 0				# 22464
	fcmp	r28, r9
	ble		.b18506				# 3186
.b18507:
	addi	r9, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b18509				# 765
.b18510:
	cmpi	r9, 0
	beq		.b18511				# 775
.b18512:
	addi	r9, r0, 0				# 775
	cmpi	r9, 0
	beq		.b18513				# 22459
.b18514:
	addi	r9, r0, 0				# 22459
	cmpi	r9, 0
	beq		.b18531				# 23092
	b		.b18532
.b18513:
	addi	r9, r0, 1				# 22459
	cmpi	r9, 0
	beq		.b18531				# 23092
	b		.b18532
.b18511:
	addi	r9, r0, 1				# 775
	cmpi	r9, 0
	beq		.b18513				# 22459
	b		.b18514
.b18509:
	cmpi	r9, 0
	beq		.b18513				# 22459
	b		.b18514
.b18506:
	addi	r9, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b18509				# 765
	b		.b18510
.b18490:
	fabs	r62, r51				# 322
	lw		r28, 4(r25)				# 3734
	lw		r9, 0(r28)				# 22178
	fcmp	r9, r62
	ble		.b18493				# 3096
.b18494:
	fabs	r9, r7				# 322
	lw		r62, 1(r28)				# 22224
	fcmp	r62, r9
	ble		.b18495				# 3096
.b18496:
	fabs	r62, r41				# 322
	lw		r9, 2(r28)				# 22261
	fcmp	r9, r62
	ble		.b18497				# 3096
.b18498:
	addi	r9, r0, 1				# 3096
	cmpi	r9, 0
	beq		.b18499				# 22167
.b18500:
	lw		r9, 6(r25)				# 3372
	cmpi	r9, 0
	beq		.b18531				# 23092
	b		.b18532
.b18499:
	lw		r9, 6(r25)				# 3372
	cmpi	r9, 0
	beq		.b18501				# 22348
.b18502:
	addi	r9, r0, 0				# 22348
	cmpi	r9, 0
	beq		.b18531				# 23092
	b		.b18532
.b18501:
	addi	r9, r0, 1				# 22348
	cmpi	r9, 0
	beq		.b18531				# 23092
	b		.b18532
.b18497:
	addi	r9, r0, 0				# 3096
	cmpi	r9, 0
	beq		.b18499				# 22167
	b		.b18500
.b18495:
	addi	r9, r0, 0				# 22302
	cmpi	r9, 0
	beq		.b18499				# 22167
	b		.b18500
.b18493:
	addi	r9, r0, 0				# 22317
	cmpi	r9, 0
	beq		.b18499				# 22167
	b		.b18500
.b18481:
	lw		r9, -12(r3)				# 23864
	mul16i	r61, r9, 1				# 23864
	lli		r9, objects.2491				# 23852
	add		r9, r9, r61				# 23852
	lw		r9, 6(r9)				# 3372
	cmpi	r9, 0
	beq		.b18483				# 23849
.b18484:
	lw		r9, -11(r3)				# 23885
	addi	r9, r9, 1				# 23885
	b		T.loop18473				# 23885
.b18483:
	addi	r9, r0, 0				# 23945
	cmpi	r9, 0
	beq		.b18535				# 24173
	b		.b18536
.b18479:
	addi	r9, r0, 0				# 3096
	cmpi	r9, 0
	beq		.b18481				# 23456
	b		.b18482
.b18477:
	addi	r9, r0, 0				# 23498
	cmpi	r9, 0
	beq		.b18481				# 23456
	b		.b18482
.b18474:
	addi	r9, r0, 0				# 23304
	cmpi	r9, 0
	beq		.b18535				# 24173
	b		.b18536
.b18470:
	addi	r9, r0, 0				# 24059
	cmpi	r9, 0
	beq		.b18537				# 24655
	b		.b18538
.b18466:
	addi	r9, r0, 0				# 24739
	cmpi	r9, 0
	beq		.b18539				# 24441
	b		.b18540
.b18464:
	addi	r9, r0, 0				# 24751
	cmpi	r9, 0
	beq		.b18539				# 24441
	b		.b18540
.b18462:
	addi	r9, r0, 1				# 24483
	cmpi	r9, 0
	beq		.b18539				# 24441
	b		.b18540
.b18459:
	addi	r9, r0, 0				# 24424
	cmpi	r9, 0
	beq		.b18612				# 35257
	b		.b18613
.b18455:
	addis	r61, r0, 16256
	ori		r61, r61, 0				# 1837
	fdiv	r62, r61, r62				# 1837
	b		.b18452				# 1837
.b18453:
	addis	r62, r0, 16256
	ori		r62, r62, 0				# 1801
	b		.b18452				# 1801
.b18450:
	lli		r61, nvector.2533				# 29409
	sw		r13, 0(r61)				# 29409
	sw		r9, 1(r61)				# 29409
	sw		r10, 2(r61)				# 29455
	b		.b18449				# 29455
.b18447:
	lw		r28, 4(r1)				# 3734
	lw		r9, 0(r28)				# 28996
	fneg	r9, r9				# 28981
	lli		r61, nvector.2533				# 28981
	sw		r9, 0(r61)				# 28981
	lw		r9, 1(r28)				# 29034
	fneg	r9, r9				# 29019
	sw		r9, 1(r61)				# 28981
	lw		r9, 2(r28)				# 29071
	fneg	r9, r9				# 29056
	sw		r9, 2(r61)				# 29056
	b		.b18439				# 29056
.b18440:
	lli		r61, intsec_rectside.2521				# 28828
	addi	r28, r61, 0				# 28828
	addi	r62, r0, 0				# 1232
	lli		r61, nvector.2533				# 1232
	sw		r62, 0(r61)				# 1232
	sw		r62, 1(r61)				# 1232
	sw		r62, 2(r61)				# 28868
	addi	r28, r28, -1				# 28888
	lwx		r9, r9, r28				# 28918
	fcmp	r9, r62
	beq		.b18443				# 3126
.b18444:
	fcmp	r9, r62
	ble		.b18445				# 3156
.b18446:
	addis	r9, r0, 16256
	ori		r9, r9, 0				# 856
	fneg	r9, r9				# 28888
	swx		r9, r28, r61				# 28888
	b		.b18439				# 28888
.b18445:
	addis	r9, r0, 49024
	ori		r9, r9, 0				# 868
	fneg	r9, r9				# 28888
	swx		r9, r28, r61				# 28888
	b		.b18439				# 28888
.b18443:
	addi	r9, r0, 0				# 828
	fneg	r9, r9				# 28888
	swx		r9, r28, r61				# 28888
	b		.b18439				# 28888
.b18437:
	blr				# 35510
	# trace_diffuse_rays.3002
trace_diffuse_rays.3002:
.Entry@trace_diffuse_rays.3002:
	sw		r2, 0(r3)				# 0
	sw		r1, -1(r3)				# 0
	lli		r61, n_objects.2480				# 1353
	lli		r41, objects.2491				# 1353
	lli		r9, startp_fast.2557				# 1353
	lw		r13, 0(r5)				# 1353
	sw		r13, 0(r9)				# 1353
	lw		r25, 1(r5)				# 1376
	sw		r25, 1(r9)				# 1353
	lw		r54, 2(r5)				# 1399
	sw		r54, 2(r9)				# 22055
	addi	r9, r61, 0				# 22105
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b18619				# 21420
.b18617:
	addi	r9, r0, 118				# 35584
	sw		r9, -2(r3)				# 35584
	cmpi	r9, 0
	bge		.b18633				# 35584
.b18634:
	blr				# 35895
.b18633:
	lw		r28, -1(r3)				# 35627
	lwx		r1, r28, r9				# 35627
	lw		r15, 0(r1)				# 8078
	lw		r61, 0(r15)				# 1949
	lw		r51, 0(r3)				# 1949
	lw		r62, 0(r51)				# 1949
	fmul	r61, r61, r62				# 1949
	lw		r10, 1(r15)				# 1967
	lw		r62, 1(r51)				# 1967
	fmul	r62, r10, r62				# 1949
	fadd	r10, r61, r62				# 1949
	lw		r61, 2(r15)				# 1985
	lw		r62, 2(r51)				# 1985
	fmul	r61, r61, r62				# 1949
	fadd	r62, r10, r61				# 35609
	addi	r61, r0, 0				# 35671
	fcmp	r61, r62
	ble		.b18636				# 3186
.b18637:
	addi	r61, r0, 1				# 3186
	cmpi	r61, 0
	beq		.b18639				# 35671
.b18640:
	addi	r9, r9, 1				# 35712
	lwx		r1, r28, r9				# 35694
	addis	r9, r0, 49942
	ori		r9, r9, 0				# 35738
	fdiv	r2, r62, r9				# 35694
	mflr	r63
	sw		r63, -3(r3)
	addi	r3, r3, -4
	bl		trace_diffuse_ray.2994
	addi	r3, r3, 4
	lw		r63, -3(r3)
	mtlr	r63				# 35694
.b18638:
	lw		r9, -2(r3)				# 35824
	addi	r9, r9, -2				# 35824
	sw		r9, -2(r3)				# 35584
	cmpi	r9, 0
	bge		.b18633				# 35584
	b		.b18634
.b18639:
	addis	r9, r0, 17174
	ori		r9, r9, 0				# 35806
	fdiv	r2, r62, r9				# 35766
	mflr	r63
	sw		r63, -3(r3)
	addi	r3, r3, -4
	bl		trace_diffuse_ray.2994
	addi	r3, r3, 4
	lw		r63, -3(r3)
	mtlr	r63				# 35766
	b		.b18638				# 35766
.b18636:
	addi	r61, r0, 0				# 3186
	cmpi	r61, 0
	beq		.b18639				# 35671
	b		.b18640
.b18619:
	mul16i	r61, r9, 1				# 21455
	add		r28, r41, r61				# 21445
	lw		r10, 10(r28)				# 6561
	lw		r30, 1(r28)				# 2994
	lw		r62, 5(r28)				# 4475
	lw		r61, 0(r62)				# 21561
	fsub	r61, r13, r61				# 21547
	sw		r61, 0(r10)				# 21547
	lw		r61, 1(r62)				# 21603
	fsub	r61, r25, r61				# 21589
	sw		r61, 1(r10)				# 21547
	lw		r61, 2(r62)				# 21645
	fsub	r57, r54, r61				# 21631
	sw		r57, 2(r10)				# 21547
	cmpi	r30, 2
	beq		.b18622				# 21673
.b18623:
	cmpi	r30, 2
	ble		.b18621				# 21798
.b18625:
	lw		r51, 0(r10)				# 21847
	lw		r15, 1(r10)				# 21847
	fmul	r61, r51, r51				# 14374
	lw		r37, 4(r28)				# 3734
	lw		r62, 0(r37)				# 14374
	fmul	r7, r61, r62				# 14374
	fmul	r62, r15, r15				# 14400
	lw		r61, 1(r37)				# 14400
	fmul	r61, r62, r61				# 14374
	fadd	r61, r7, r61				# 14374
	fmul	r62, r57, r57				# 14426
	lw		r7, 2(r37)				# 14426
	fmul	r62, r62, r7				# 14374
	fadd	r61, r61, r62				# 14354
	lw		r62, 3(r28)				# 3553
	cmpi	r62, 0
	beq		.b18627				# 14456
.b18628:
	fmul	r7, r15, r57				# 14522
	lw		r62, 9(r28)				# 5989
	lw		r28, 0(r62)				# 14522
	fmul	r28, r7, r28				# 14503
	fadd	r7, r61, r28				# 14503
	fmul	r61, r57, r51				# 14556
	lw		r28, 1(r62)				# 14556
	fmul	r61, r61, r28				# 14503
	fadd	r28, r7, r61				# 14503
	fmul	r61, r51, r15				# 14590
	lw		r62, 2(r62)				# 14590
	fmul	r61, r61, r62				# 14503
	fadd	r61, r28, r61				# 14503
	cmpi	r30, 3
	beq		.b18630				# 21917
.b18631:
.b18629:
	sw		r61, 3(r10)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b18619				# 21420
	b		.b18617
.b18630:
	addis	r28, r0, 16256
	ori		r28, r28, 0				# 21937
	fsub	r61, r61, r28				# 21937
	b		.b18629				# 21937
.b18627:
	cmpi	r30, 3
	beq		.b18630				# 21917
	b		.b18631
.b18621:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b18619				# 21420
	b		.b18617
.b18622:
	lw		r15, 4(r28)				# 4293
	lw		r28, 0(r10)				# 21728
	lw		r62, 1(r10)				# 21728
	lw		r61, 0(r15)				# 2037
	fmul	r28, r61, r28				# 2037
	lw		r61, 1(r15)				# 2052
	fmul	r61, r61, r62				# 2037
	fadd	r28, r28, r61				# 2037
	lw		r61, 2(r15)				# 2067
	fmul	r61, r61, r57				# 2037
	fadd	r61, r28, r61				# 21713
	sw		r61, 3(r10)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b18619				# 21420
	b		.b18617
	# pretrace_line.3058
pretrace_line.3058:
.Entry@pretrace_line.3058:
	sw		r1, 0(r3)				# 0
	lwi		r9, intersection_point.2527				# 41125
	sw		r9, -1(r3)				# 41125
	lli		r61, image_size.2545				# 41125
	lli		r10, image_center.2548				# 41125
	lli		r62, scan_pitch.2551				# 41125
	lwi		r9, startp.2554				# 41125
	sw		r9, -2(r3)				# 41125
	lli		r51, screeny_dir.2563				# 41125
	lli		r15, screenz_dir.2566				# 41125
	lwi		r9, ptrace_dirvec.2569				# 41125
	sw		r9, -3(r3)				# 41125
	lwi		r9, light_dirvec.2588				# 41125
	sw		r9, -4(r3)				# 41125
	addi	r62, r62, 0				# 41125
	sw		r62, -5(r3)				# 41125
	addi	r9, r10, 1				# 41157
	sub		r9, r2, r9				# 41143
	itof	r9, r9				# 639
	fmul	r62, r62, r9				# 41113
	addi	r9, r51, 0				# 41195
	fmul	r9, r62, r9				# 41195
	addi	r10, r15, 0				# 41195
	fadd	r9, r9, r10				# 41185
	sw		r9, -6(r3)				# 41185
	addi	r9, r51, 1				# 41254
	fmul	r10, r62, r9				# 41254
	addi	r9, r15, 1				# 41254
	fadd	r9, r10, r9				# 41244
	sw		r9, -7(r3)				# 41244
	addi	r9, r51, 2				# 41313
	fmul	r9, r62, r9				# 41313
	addi	r62, r15, 2				# 41313
	fadd	r9, r9, r62				# 41303
	sw		r9, -8(r3)				# 41303
	addi	r9, r61, 0				# 41384
	addi	r9, r9, -1				# 41362
	sw		r5, -9(r3)				# 40479
	sw		r9, -10(r3)				# 40479
	cmpi	r9, 0
	bge		.b18642				# 40479
.b18643:
	blr				# 41064
.b18642:
	lli		r61, image_center.2548				# 40545
	addi	r61, r61, 0				# 40545
	sub		r61, r9, r61				# 40531
	itof	r61, r61				# 639
	lw		r62, -5(r3)				# 40501
	fmul	r62, r62, r61				# 40501
	lli		r51, screenx_dir.2560				# 40595
	addi	r61, r51, 0				# 40595
	fmul	r61, r62, r61				# 40595
	lw		r15, -6(r3)				# 40574
	fadd	r10, r61, r15				# 40574
	lw		r54, -3(r3)				# 40574
	sw		r10, 0(r54)				# 40574
	addi	r61, r51, 1				# 40653
	fmul	r61, r62, r61				# 40653
	lw		r15, -7(r3)				# 40632
	fadd	r15, r61, r15				# 40632
	sw		r15, 1(r54)				# 40574
	addi	r61, r51, 2				# 40711
	fmul	r62, r62, r61				# 40711
	lw		r61, -8(r3)				# 40690
	fadd	r61, r62, r61				# 40690
	sw		r61, 2(r54)				# 40574
	fmul	r62, r10, r10				# 1729
	fmul	r51, r15, r15				# 1729
	fadd	r51, r62, r51				# 1729
	fmul	r62, r61, r61				# 1729
	fadd	r62, r51, r62				# 1723
	fsqrt	r13, r62				# 227
	addi	r62, r0, 0				# 1774
	fcmp	r13, r62
	beq		.b18645				# 3126
.b18646:
	addis	r51, r0, 16256
	ori		r51, r51, 0				# 1837
	fdiv	r51, r51, r13				# 1837
.b18644:
	fmul	r10, r10, r51				# 1851
	sw		r10, 0(r54)				# 1851
	fmul	r15, r15, r51				# 1875
	sw		r15, 1(r54)				# 1851
	fmul	r61, r61, r51				# 1899
	sw		r61, 2(r54)				# 40574
	lli		r61, rgb.2542				# 1232
	sw		r62, 0(r61)				# 1232
	sw		r62, 1(r61)				# 1232
	sw		r62, 2(r61)				# 40574
	lli		r61, viewpoint.2497				# 1353
	addi	r10, r61, 0				# 1353
	lw		r15, -2(r3)				# 1353
	sw		r10, 0(r15)				# 1353
	addi	r10, r61, 1				# 1376
	sw		r10, 1(r15)				# 1353
	addi	r61, r61, 2				# 1399
	sw		r61, 2(r15)				# 40574
	addis	r61, r0, 16256
	ori		r61, r61, 0				# 40833
	lw		r15, 0(r3)				# 40833
	lwx		r9, r15, r9				# 40833
	sw		r9, -11(r3)				# 40833
	addi	r9, r0, 0				# 32983
T.loop18648:
	sw		r62, -12(r3)				# 32983
	sw		r61, -13(r3)				# 32983
	sw		r9, -14(r3)				# 32983
	cmpi	r9, 4
	ble		.b18649				# 32983
.b18647:
	lw		r62, -11(r3)				# 6744
	lw		r15, 0(r62)				# 6744
	lli		r61, rgb.2542				# 1353
	addi	r9, r61, 0				# 1353
	sw		r9, 0(r15)				# 1353
	addi	r9, r61, 1				# 1376
	sw		r9, 1(r15)				# 1353
	addi	r9, r61, 2				# 1399
	sw		r9, 2(r15)				# 40574
	lw		r9, 6(r62)				# 7787
	lw		r61, -9(r3)				# 40574
	sw		r61, 0(r9)				# 40574
	addi	r9, r0, 0				# 39734
	sw		r9, -15(r3)				# 39734
	cmpi	r9, 4
	ble		.b19184				# 39734
.b19182:
	lw		r9, -10(r3)				# 40992
	addi	r9, r9, -1				# 40992
	lw		r61, -9(r3)				# 979
	addi	r5, r61, 1				# 979
	cmpi	r5, 5
	bge		.b19192				# 1000
.b19193:
.b19191:
	sw		r5, -9(r3)				# 40479
	sw		r9, -10(r3)				# 40479
	cmpi	r9, 0
	bge		.b18642				# 40479
	b		.b18643
.b19192:
	addi	r5, r5, -5				# 1017
	b		.b19191				# 1017
.b19184:
	lw		r15, -11(r3)				# 7046
	lw		r61, 2(r15)				# 7046
	lwx		r61, r61, r9				# 39789
	cmpi	r61, 0
	bge		.b19186				# 39832
	b		.b19182
.b19186:
	lw		r61, 3(r15)				# 7193
	lwx		r61, r61, r9				# 39973
	cmpi	r61, 0
	beq		.b19188				# 39973
.b19190:
	lw		r61, 6(r15)				# 7634
	lw		r10, 0(r61)				# 40004
	lli		r61, diffuse_ray.2539				# 1232
	addi	r62, r0, 0				# 1232
	sw		r62, 0(r61)				# 1232
	sw		r62, 1(r61)				# 1232
	sw		r62, 2(r61)				# 40040
	lw		r61, 7(r15)				# 7939
	lw		r15, 1(r15)				# 6897
	mul16i	r10, r10, 1				# 40180
	lli		r62, dirvecs.2579				# 40158
	add		r1, r62, r10				# 40158
	lwx		r2, r61, r9				# 40158
	lwx		r5, r15, r9				# 40158
	mflr	r63
	sw		r63, -16(r3)
	addi	r3, r3, -17
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 17
	lw		r63, -16(r3)
	mtlr	r63				# 40158
	lw		r9, -11(r3)				# 7491
	lw		r9, 5(r9)				# 7491
	lw		r61, -15(r3)				# 40298
	lwx		r61, r9, r61				# 40298
	addi	r9, r0, 0				# 1353
	sw		r9, 0(r61)				# 1353
	sw		r9, 1(r61)				# 1353
	sw		r9, 2(r61)				# 1399
.b19188:
	lw		r9, -15(r3)				# 40355
	addi	r9, r9, 1				# 40355
	sw		r9, -15(r3)				# 39734
	cmpi	r9, 4
	ble		.b19184				# 39734
	b		.b19182
.b18649:
	lw		r9, -11(r3)				# 7046
	lw		r9, 2(r9)				# 7046
	sw		r9, -15(r3)				# 7046
	addis	r61, r0, 20078
	ori		r61, r61, 27432				# 26657
	lli		r9, tmin.2524				# 26657
	sw		r61, 0(r9)				# 26657
	lli		r9, or_net.2515				# 26687
	addi	r9, r9, 0				# 26687
	sw		r9, -16(r3)				# 26687
	addi	r9, r0, 0				# 26148
T.loop18652:
	sw		r9, -17(r3)				# 26148
	lw		r61, -16(r3)				# 26148
	lwx		r9, r61, r9				# 26148
	sw		r9, -18(r3)				# 26148
	lw		r1, 0(r9)				# 26181
	cmpi	r1, -1
	beq		.b18651				# 26217
.b18654:
	cmpi	r1, 99
	beq		.b18656				# 26267
.b18657:
	lw		r2, -3(r3)				# 26361
	lw		r5, -2(r3)				# 26361
	mflr	r63
	sw		r63, -19(r3)
	addi	r3, r3, -20
	bl		solver.2841
	addi	r3, r3, 20
	lw		r63, -19(r3)
	mtlr	r63				# 26361
	cmpi	r2, 0
	beq		.b18655				# 26416
.b18725:
	lli		r9, solver_dist.2518				# 26433
	addi	r61, r9, 0				# 26433
	sw		r61, -19(r3)				# 26433
	lli		r9, tmin.2524				# 26466
	addi	r9, r9, 0				# 26466
	fcmp	r9, r61
	ble		.b18655				# 3096
.b18727:
	addi	r9, r0, 1				# 25897
T.loop18728:
	sw		r9, -20(r3)				# 25897
	lw		r61, -18(r3)				# 25897
	lwx		r9, r61, r9				# 25897
	cmpi	r9, -1
	beq		.b18655				# 25928
.b18730:
	mul16i	r9, r9, 1				# 25969
	lli		r61, and_net.2509				# 25953
	add		r9, r61, r9				# 25953
	sw		r9, -21(r3)				# 25953
	addi	r9, r0, 0				# 25005
T.loop18732:
	sw		r9, -22(r3)				# 25005
	lw		r61, -21(r3)				# 25005
	lwx		r1, r61, r9				# 25005
	sw		r1, -23(r3)				# 25005
	cmpi	r1, -1
	beq		.b18731				# 25042
.b18734:
	lw		r5, -2(r3)				# 25076
	lw		r2, -3(r3)				# 25076
	mflr	r63
	sw		r63, -24(r3)
	addi	r3, r3, -25
	bl		solver.2841
	addi	r3, r3, 25
	lw		r63, -24(r3)
	mtlr	r63				# 25076
	cmpi	r2, 0
	beq		.b18735				# 25118
.b18736:
	addi	r41, r0, 0				# 25186
	lw		r61, -19(r3)				# 25186
	fcmp	r61, r41
	ble		.b18739				# 3096
.b18741:
	lli		r25, tmin.2524				# 25216
	addi	r9, r25, 0				# 25216
	fcmp	r9, r61
	ble		.b18739				# 3096
.b18743:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 25260
	fadd	r10, r61, r9				# 25252
	lw		r15, -3(r3)				# 25289
	lw		r9, 0(r15)				# 25289
	fmul	r62, r9, r10				# 25289
	lw		r61, -2(r3)				# 25289
	lw		r9, 0(r61)				# 25289
	fadd	r62, r62, r9				# 25280
	lw		r9, 1(r15)				# 25336
	fmul	r9, r9, r10				# 25336
	lw		r51, 1(r61)				# 25336
	fadd	r57, r9, r51				# 25327
	lw		r9, 2(r15)				# 25383
	fmul	r9, r9, r10				# 25383
	lw		r61, 2(r61)				# 25383
	fadd	r54, r9, r61				# 25374
	addi	r9, r0, 0				# 23025
	lw		r61, -21(r3)				# 23025
	lwx		r61, r61, r9				# 23025
	cmpi	r61, -1
	beq		.b18746				# 23052
.b18747:
	mul16i	r15, r61, 1				# 23106
	lli		r61, objects.2491				# 23095
	add		r30, r61, r15				# 23095
	lw		r15, 5(r30)				# 4475
	lw		r61, 0(r15)				# 22709
	fsub	r7, r62, r61				# 22700
	lw		r61, 1(r15)				# 22741
	fsub	r51, r57, r61				# 22732
	lw		r61, 2(r15)				# 22773
	fsub	r46, r54, r61				# 22764
	lw		r37, 1(r30)				# 2994
	cmpi	r37, 1
	beq		.b18749				# 22824
.b18750:
	cmpi	r37, 2
	beq		.b18762				# 22882
.b18763:
	fmul	r61, r7, r7				# 14374
	lw		r26, 4(r30)				# 3734
	lw		r15, 0(r26)				# 14374
	fmul	r15, r61, r15				# 14374
	fmul	r61, r51, r51				# 14400
	lw		r13, 1(r26)				# 14400
	fmul	r61, r61, r13				# 14374
	fadd	r13, r15, r61				# 14374
	fmul	r61, r46, r46				# 14426
	lw		r15, 2(r26)				# 14426
	fmul	r61, r61, r15				# 14374
	fadd	r61, r13, r61				# 14354
	lw		r15, 3(r30)				# 3553
	cmpi	r15, 0
	beq		.b18775				# 14456
.b18776:
	fmul	r13, r51, r46				# 14522
	lw		r15, 9(r30)				# 5989
	lw		r26, 0(r15)				# 14522
	fmul	r13, r13, r26				# 14503
	fadd	r13, r61, r13				# 14503
	fmul	r46, r46, r7				# 14556
	lw		r61, 1(r15)				# 14556
	fmul	r61, r46, r61				# 14503
	fadd	r13, r13, r61				# 14503
	fmul	r61, r7, r51				# 14590
	lw		r15, 2(r15)				# 14590
	fmul	r61, r61, r15				# 14503
	fadd	r61, r13, r61				# 14503
	cmpi	r37, 3
	beq		.b18778				# 22583
.b18779:
	lw		r15, 6(r30)				# 3372
	fcmp	r41, r61
	ble		.b18781				# 3186
.b18782:
	addi	r61, r0, 1				# 3186
	cmpi	r15, 0
	beq		.b18784				# 765
.b18785:
	cmpi	r61, 0
	beq		.b18786				# 775
.b18787:
	addi	r61, r0, 0				# 775
	cmpi	r61, 0
	beq		.b18788				# 22625
.b18789:
	addi	r61, r0, 0				# 22625
	cmpi	r61, 0
	beq		.b18790				# 23092
.b18791:
	addi	r9, r0, 0				# 23141
	cmpi	r9, 0
	beq		.b18739				# 25421
.b18793:
	sw		r10, 0(r25)				# 25478
	lw		r9, -1(r3)				# 1162
	sw		r62, 0(r9)				# 1162
	sw		r57, 1(r9)				# 1162
	sw		r54, 2(r9)				# 25478
	lw		r61, -23(r3)				# 25478
	lli		r9, intersected_object_id.2530				# 25478
	sw		r61, 0(r9)				# 25478
	lli		r9, intsec_rectside.2521				# 25570
	sw		r2, 0(r9)				# 25570
.b18739:
	lw		r9, -22(r3)				# 25658
	addi	r9, r9, 1				# 25658
	b		T.loop18732				# 25658
.b18790:
	addi	r9, r9, 1				# 23162
	lw		r61, -21(r3)				# 23025
	lwx		r61, r61, r9				# 23025
	cmpi	r61, -1
	beq		.b18746				# 23052
	b		.b18747
.b18746:
	addi	r9, r0, 1				# 23074
	cmpi	r9, 0
	beq		.b18739				# 25421
	b		.b18793
.b18788:
	addi	r61, r0, 1				# 22625
	cmpi	r61, 0
	beq		.b18790				# 23092
	b		.b18791
.b18786:
	addi	r61, r0, 1				# 775
	cmpi	r61, 0
	beq		.b18788				# 22625
	b		.b18789
.b18784:
	cmpi	r61, 0
	beq		.b18788				# 22625
	b		.b18789
.b18781:
	addi	r61, r0, 0				# 3186
	cmpi	r15, 0
	beq		.b18784				# 765
	b		.b18785
.b18778:
	addis	r15, r0, 16256
	ori		r15, r15, 0				# 22604
	fsub	r61, r61, r15				# 22604
	lw		r15, 6(r30)				# 3372
	fcmp	r41, r61
	ble		.b18781				# 3186
	b		.b18782
.b18775:
	cmpi	r37, 3
	beq		.b18778				# 22583
	b		.b18779
.b18762:
	lw		r13, 4(r30)				# 4293
	lw		r61, 0(r13)				# 2037
	fmul	r15, r61, r7				# 2037
	lw		r61, 1(r13)				# 2052
	fmul	r61, r61, r51				# 2037
	fadd	r15, r15, r61				# 2037
	lw		r61, 2(r13)				# 2067
	fmul	r61, r61, r46				# 2037
	fadd	r61, r15, r61				# 22411
	lw		r15, 6(r30)				# 3372
	fcmp	r41, r61
	ble		.b18765				# 3186
.b18766:
	addi	r61, r0, 1				# 3186
	cmpi	r15, 0
	beq		.b18768				# 765
.b18769:
	cmpi	r61, 0
	beq		.b18770				# 775
.b18771:
	addi	r61, r0, 0				# 775
	cmpi	r61, 0
	beq		.b18772				# 22459
.b18773:
	addi	r61, r0, 0				# 22459
	cmpi	r61, 0
	beq		.b18790				# 23092
	b		.b18791
.b18772:
	addi	r61, r0, 1				# 22459
	cmpi	r61, 0
	beq		.b18790				# 23092
	b		.b18791
.b18770:
	addi	r61, r0, 1				# 775
	cmpi	r61, 0
	beq		.b18772				# 22459
	b		.b18773
.b18768:
	cmpi	r61, 0
	beq		.b18772				# 22459
	b		.b18773
.b18765:
	addi	r61, r0, 0				# 3186
	cmpi	r15, 0
	beq		.b18768				# 765
	b		.b18769
.b18749:
	fabs	r61, r7				# 322
	lw		r15, 4(r30)				# 3734
	lw		r13, 0(r15)				# 22178
	fcmp	r13, r61
	ble		.b18752				# 3096
.b18753:
	fabs	r51, r51				# 322
	lw		r61, 1(r15)				# 22224
	fcmp	r61, r51
	ble		.b18754				# 3096
.b18755:
	fabs	r51, r46				# 322
	lw		r61, 2(r15)				# 22261
	fcmp	r61, r51
	ble		.b18756				# 3096
.b18757:
	addi	r61, r0, 1				# 3096
	cmpi	r61, 0
	beq		.b18758				# 22167
.b18759:
	lw		r61, 6(r30)				# 3372
	cmpi	r61, 0
	beq		.b18790				# 23092
	b		.b18791
.b18758:
	lw		r61, 6(r30)				# 3372
	cmpi	r61, 0
	beq		.b18760				# 22348
.b18761:
	addi	r61, r0, 0				# 22348
	cmpi	r61, 0
	beq		.b18790				# 23092
	b		.b18791
.b18760:
	addi	r61, r0, 1				# 22348
	cmpi	r61, 0
	beq		.b18790				# 23092
	b		.b18791
.b18756:
	addi	r61, r0, 0				# 3096
	cmpi	r61, 0
	beq		.b18758				# 22167
	b		.b18759
.b18754:
	addi	r61, r0, 0				# 22302
	cmpi	r61, 0
	beq		.b18758				# 22167
	b		.b18759
.b18752:
	addi	r61, r0, 0				# 22317
	cmpi	r61, 0
	beq		.b18758				# 22167
	b		.b18759
.b18735:
	lw		r9, -23(r3)				# 25747
	mul16i	r61, r9, 1				# 25747
	lli		r9, objects.2491				# 25735
	add		r9, r9, r61				# 25735
	lw		r9, 6(r9)				# 3372
	cmpi	r9, 0
	beq		.b18731				# 25732
.b18738:
	lw		r9, -22(r3)				# 25769
	addi	r9, r9, 1				# 25769
	b		T.loop18732				# 25769
.b18731:
	lw		r9, -20(r3)				# 26034
	addi	r9, r9, 1				# 26034
	b		T.loop18728				# 26034
.b18655:
	lw		r9, -17(r3)				# 26566
	addi	r9, r9, 1				# 26566
	b		T.loop18652				# 26566
.b18656:
	addi	r9, r0, 1				# 25897
T.loop18658:
	sw		r9, -19(r3)				# 25897
	lw		r61, -18(r3)				# 25897
	lwx		r9, r61, r9				# 25897
	cmpi	r9, -1
	beq		.b18655				# 25928
.b18660:
	mul16i	r9, r9, 1				# 25969
	lli		r61, and_net.2509				# 25953
	add		r9, r61, r9				# 25953
	sw		r9, -20(r3)				# 25953
	addi	r9, r0, 0				# 25005
T.loop18662:
	sw		r9, -21(r3)				# 25005
	lw		r61, -20(r3)				# 25005
	lwx		r1, r61, r9				# 25005
	sw		r1, -22(r3)				# 25005
	cmpi	r1, -1
	beq		.b18661				# 25042
.b18664:
	lw		r5, -2(r3)				# 25076
	lw		r2, -3(r3)				# 25076
	mflr	r63
	sw		r63, -23(r3)
	addi	r3, r3, -24
	bl		solver.2841
	addi	r3, r3, 24
	lw		r63, -23(r3)
	mtlr	r63				# 25076
	cmpi	r2, 0
	beq		.b18665				# 25118
.b18666:
	lli		r9, solver_dist.2518				# 25149
	addi	r9, r9, 0				# 25149
	addi	r54, r0, 0				# 25186
	fcmp	r9, r54
	ble		.b18669				# 3096
.b18671:
	lli		r15, tmin.2524				# 25216
	addi	r61, r15, 0				# 25216
	fcmp	r61, r9
	ble		.b18669				# 3096
.b18673:
	addis	r61, r0, 15395
	ori		r61, r61, 55050				# 25260
	fadd	r25, r9, r61				# 25252
	lw		r10, -3(r3)				# 25289
	lw		r9, 0(r10)				# 25289
	fmul	r62, r9, r25				# 25289
	lw		r61, -2(r3)				# 25289
	lw		r9, 0(r61)				# 25289
	fadd	r41, r62, r9				# 25280
	lw		r9, 1(r10)				# 25336
	fmul	r62, r9, r25				# 25336
	lw		r9, 1(r61)				# 25336
	fadd	r57, r62, r9				# 25327
	lw		r9, 2(r10)				# 25383
	fmul	r9, r9, r25				# 25383
	lw		r61, 2(r61)				# 25383
	fadd	r51, r9, r61				# 25374
	addi	r61, r0, 0				# 23025
	lw		r9, -20(r3)				# 23025
	lwx		r9, r9, r61				# 23025
	cmpi	r9, -1
	beq		.b18676				# 23052
.b18677:
	mul16i	r62, r9, 1				# 23106
	lli		r9, objects.2491				# 23095
	add		r10, r9, r62				# 23095
	lw		r62, 5(r10)				# 4475
	lw		r9, 0(r62)				# 22709
	fsub	r26, r41, r9				# 22700
	lw		r9, 1(r62)				# 22741
	fsub	r37, r57, r9				# 22732
	lw		r9, 2(r62)				# 22773
	fsub	r13, r51, r9				# 22764
	lw		r46, 1(r10)				# 2994
	cmpi	r46, 1
	beq		.b18679				# 22824
.b18680:
	cmpi	r46, 2
	beq		.b18692				# 22882
.b18693:
	fmul	r9, r26, r26				# 14374
	lw		r30, 4(r10)				# 3734
	lw		r62, 0(r30)				# 14374
	fmul	r62, r9, r62				# 14374
	fmul	r9, r37, r37				# 14400
	lw		r7, 1(r30)				# 14400
	fmul	r9, r9, r7				# 14374
	fadd	r9, r62, r9				# 14374
	fmul	r7, r13, r13				# 14426
	lw		r62, 2(r30)				# 14426
	fmul	r62, r7, r62				# 14374
	fadd	r9, r9, r62				# 14354
	lw		r62, 3(r10)				# 3553
	cmpi	r62, 0
	beq		.b18705				# 14456
.b18706:
	fmul	r30, r37, r13				# 14522
	lw		r7, 9(r10)				# 5989
	lw		r62, 0(r7)				# 14522
	fmul	r62, r30, r62				# 14503
	fadd	r30, r9, r62				# 14503
	fmul	r62, r13, r26				# 14556
	lw		r9, 1(r7)				# 14556
	fmul	r9, r62, r9				# 14503
	fadd	r62, r30, r9				# 14503
	fmul	r9, r26, r37				# 14590
	lw		r13, 2(r7)				# 14590
	fmul	r9, r9, r13				# 14503
	fadd	r9, r62, r9				# 14503
	cmpi	r46, 3
	beq		.b18708				# 22583
.b18709:
	lw		r62, 6(r10)				# 3372
	fcmp	r54, r9
	ble		.b18711				# 3186
.b18712:
	addi	r9, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b18714				# 765
.b18715:
	cmpi	r9, 0
	beq		.b18716				# 775
.b18717:
	addi	r9, r0, 0				# 775
	cmpi	r9, 0
	beq		.b18718				# 22625
.b18719:
	addi	r9, r0, 0				# 22625
	cmpi	r9, 0
	beq		.b18720				# 23092
.b18721:
	addi	r9, r0, 0				# 23141
	cmpi	r9, 0
	beq		.b18669				# 25421
.b18723:
	sw		r25, 0(r15)				# 25478
	lw		r9, -1(r3)				# 1162
	sw		r41, 0(r9)				# 1162
	sw		r57, 1(r9)				# 1162
	sw		r51, 2(r9)				# 25478
	lw		r9, -22(r3)				# 25478
	lli		r61, intersected_object_id.2530				# 25478
	sw		r9, 0(r61)				# 25478
	lli		r9, intsec_rectside.2521				# 25570
	sw		r2, 0(r9)				# 25570
.b18669:
	lw		r9, -21(r3)				# 25658
	addi	r9, r9, 1				# 25658
	b		T.loop18662				# 25658
.b18720:
	addi	r61, r61, 1				# 23162
	lw		r9, -20(r3)				# 23025
	lwx		r9, r9, r61				# 23025
	cmpi	r9, -1
	beq		.b18676				# 23052
	b		.b18677
.b18676:
	addi	r9, r0, 1				# 23074
	cmpi	r9, 0
	beq		.b18669				# 25421
	b		.b18723
.b18718:
	addi	r9, r0, 1				# 22625
	cmpi	r9, 0
	beq		.b18720				# 23092
	b		.b18721
.b18716:
	addi	r9, r0, 1				# 775
	cmpi	r9, 0
	beq		.b18718				# 22625
	b		.b18719
.b18714:
	cmpi	r9, 0
	beq		.b18718				# 22625
	b		.b18719
.b18711:
	addi	r9, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b18714				# 765
	b		.b18715
.b18708:
	addis	r62, r0, 16256
	ori		r62, r62, 0				# 22604
	fsub	r9, r9, r62				# 22604
	lw		r62, 6(r10)				# 3372
	fcmp	r54, r9
	ble		.b18711				# 3186
	b		.b18712
.b18705:
	cmpi	r46, 3
	beq		.b18708				# 22583
	b		.b18709
.b18692:
	lw		r62, 4(r10)				# 4293
	lw		r9, 0(r62)				# 2037
	fmul	r7, r9, r26				# 2037
	lw		r9, 1(r62)				# 2052
	fmul	r9, r9, r37				# 2037
	fadd	r7, r7, r9				# 2037
	lw		r9, 2(r62)				# 2067
	fmul	r9, r9, r13				# 2037
	fadd	r9, r7, r9				# 22411
	lw		r62, 6(r10)				# 3372
	fcmp	r54, r9
	ble		.b18695				# 3186
.b18696:
	addi	r9, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b18698				# 765
.b18699:
	cmpi	r9, 0
	beq		.b18700				# 775
.b18701:
	addi	r9, r0, 0				# 775
	cmpi	r9, 0
	beq		.b18702				# 22459
.b18703:
	addi	r9, r0, 0				# 22459
	cmpi	r9, 0
	beq		.b18720				# 23092
	b		.b18721
.b18702:
	addi	r9, r0, 1				# 22459
	cmpi	r9, 0
	beq		.b18720				# 23092
	b		.b18721
.b18700:
	addi	r9, r0, 1				# 775
	cmpi	r9, 0
	beq		.b18702				# 22459
	b		.b18703
.b18698:
	cmpi	r9, 0
	beq		.b18702				# 22459
	b		.b18703
.b18695:
	addi	r9, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b18698				# 765
	b		.b18699
.b18679:
	fabs	r62, r26				# 322
	lw		r7, 4(r10)				# 3734
	lw		r9, 0(r7)				# 22178
	fcmp	r9, r62
	ble		.b18682				# 3096
.b18683:
	fabs	r62, r37				# 322
	lw		r9, 1(r7)				# 22224
	fcmp	r9, r62
	ble		.b18684				# 3096
.b18685:
	fabs	r62, r13				# 322
	lw		r9, 2(r7)				# 22261
	fcmp	r9, r62
	ble		.b18686				# 3096
.b18687:
	addi	r9, r0, 1				# 3096
	cmpi	r9, 0
	beq		.b18688				# 22167
.b18689:
	lw		r9, 6(r10)				# 3372
	cmpi	r9, 0
	beq		.b18720				# 23092
	b		.b18721
.b18688:
	lw		r9, 6(r10)				# 3372
	cmpi	r9, 0
	beq		.b18690				# 22348
.b18691:
	addi	r9, r0, 0				# 22348
	cmpi	r9, 0
	beq		.b18720				# 23092
	b		.b18721
.b18690:
	addi	r9, r0, 1				# 22348
	cmpi	r9, 0
	beq		.b18720				# 23092
	b		.b18721
.b18686:
	addi	r9, r0, 0				# 3096
	cmpi	r9, 0
	beq		.b18688				# 22167
	b		.b18689
.b18684:
	addi	r9, r0, 0				# 22302
	cmpi	r9, 0
	beq		.b18688				# 22167
	b		.b18689
.b18682:
	addi	r9, r0, 0				# 22317
	cmpi	r9, 0
	beq		.b18688				# 22167
	b		.b18689
.b18665:
	lw		r9, -22(r3)				# 25747
	mul16i	r61, r9, 1				# 25747
	lli		r9, objects.2491				# 25735
	add		r9, r9, r61				# 25735
	lw		r9, 6(r9)				# 3372
	cmpi	r9, 0
	beq		.b18661				# 25732
.b18668:
	lw		r9, -21(r3)				# 25769
	addi	r9, r9, 1				# 25769
	b		T.loop18662				# 25769
.b18661:
	lw		r9, -19(r3)				# 26034
	addi	r9, r9, 1				# 26034
	b		T.loop18658				# 26034
.b18651:
	lli		r9, tmin.2524				# 26728
	addi	r9, r9, 0				# 26728
	sw		r9, -19(r3)				# 26728
	addis	r61, r0, 48588
	ori		r61, r61, 52429				# 26755
	fcmp	r9, r61
	ble		.b18795				# 3096
.b18796:
	addis	r61, r0, 19646
	ori		r61, r61, 48160				# 26781
	fcmp	r61, r9
	ble		.b18797				# 3096
.b18798:
	addi	r9, r0, 1				# 3096
	cmpi	r9, 0
	beq		.b18799				# 33052
.b18800:
	lli		r9, intersected_object_id.2530				# 33094
	addi	r9, r9, 0				# 33094
	sw		r9, -20(r3)				# 33094
	mul16i	r9, r9, 1				# 33152
	lli		r61, objects.2491				# 33142
	add		r1, r61, r9				# 33142
	lw		r9, 2(r1)				# 3185
	sw		r9, -21(r3)				# 3185
	lw		r9, 7(r1)				# 5033
	sw		r9, -22(r3)				# 5033
	lw		r9, 0(r9)				# 33238
	lw		r61, -13(r3)				# 33224
	fmul	r9, r9, r61				# 33224
	sw		r9, -23(r3)				# 33224
	lw		r9, 1(r1)				# 2994
	cmpi	r9, 1
	beq		.b18806				# 29818
.b18807:
	cmpi	r9, 2
	beq		.b18813				# 29873
.b18814:
	lw		r15, -1(r3)				# 29136
	lw		r62, 0(r15)				# 29136
	lw		r9, 5(r1)				# 4475
	lw		r61, 0(r9)				# 29136
	fsub	r10, r62, r61				# 29127
	lw		r62, 1(r15)				# 29188
	lw		r61, 1(r9)				# 29188
	fsub	r62, r62, r61				# 29179
	lw		r61, 2(r15)				# 29240
	lw		r9, 2(r9)				# 29240
	fsub	r30, r61, r9				# 29231
	lw		r9, 4(r1)				# 3734
	lw		r61, 0(r9)				# 29293
	fmul	r61, r10, r61				# 29284
	lw		r15, 1(r9)				# 29325
	fmul	r51, r62, r15				# 29316
	lw		r9, 2(r9)				# 29357
	fmul	r25, r30, r9				# 29348
	lw		r9, 3(r1)				# 3553
	cmpi	r9, 0
	beq		.b18816				# 29381
.b18817:
	lw		r7, 9(r1)				# 6369
	lw		r54, 2(r7)				# 29517
	fmul	r28, r62, r54				# 29517
	lw		r15, 1(r7)				# 29539
	fmul	r9, r30, r15				# 29517
	fadd	r9, r28, r9				# 29510
	addis	r13, r0, 16384
	ori		r13, r13, 0				# 2996
	fdiv	r9, r9, r13				# 29504
	fadd	r9, r61, r9				# 29489
	lli		r28, nvector.2533				# 29489
	sw		r9, 0(r28)				# 29489
	fmul	r9, r10, r54				# 29592
	lw		r54, 0(r7)				# 29614
	fmul	r61, r30, r54				# 29592
	fadd	r9, r9, r61				# 29585
	fdiv	r9, r9, r13				# 29579
	fadd	r9, r51, r9				# 29564
	sw		r9, 1(r28)				# 29489
	fmul	r61, r10, r15				# 29667
	fmul	r9, r62, r54				# 29667
	fadd	r9, r61, r9				# 29660
	fdiv	r9, r9, r13				# 29654
	fadd	r9, r25, r9				# 29639
	sw		r9, 2(r28)				# 29639
.b18815:
	lw		r51, 6(r1)				# 3372
	lli		r61, nvector.2533				# 1734
	addi	r10, r61, 0				# 1729
	fmul	r9, r10, r10				# 1729
	addi	r15, r61, 1				# 1743
	fmul	r62, r15, r15				# 1729
	fadd	r62, r9, r62				# 1729
	addi	r13, r61, 2				# 1757
	fmul	r9, r13, r13				# 1729
	fadd	r9, r62, r9				# 1723
	fsqrt	r62, r9				# 227
	addi	r9, r0, 0				# 1774
	fcmp	r62, r9
	beq		.b18819				# 3126
.b18820:
	cmpi	r51, 0
	beq		.b18821				# 1810
.b18822:
	addis	r9, r0, 49024
	ori		r9, r9, 0				# 1822
	fdiv	r9, r9, r62				# 1822
.b18818:
	fmul	r62, r10, r9				# 1851
	sw		r62, 0(r61)				# 1851
	fmul	r62, r15, r9				# 1875
	sw		r62, 1(r61)				# 1851
	fmul	r9, r13, r9				# 1899
	sw		r9, 2(r28)				# 1899
.b18805:
	lw		r2, -1(r3)				# 1353
	lw		r9, 0(r2)				# 1353
	sw		r9, -24(r3)				# 1353
	lw		r61, -2(r3)				# 1353
	sw		r9, 0(r61)				# 1353
	lw		r9, 1(r2)				# 1376
	sw		r9, -25(r3)				# 1376
	sw		r9, 1(r61)				# 1353
	lw		r9, 2(r2)				# 1399
	sw		r9, -26(r3)				# 1399
	sw		r9, 2(r61)				# 33272
	mflr	r63
	sw		r63, -27(r3)
	addi	r3, r3, -28
	bl		utexture.2976
	addi	r3, r3, 28
	lw		r63, -27(r3)
	mtlr	r63				# 33272
	lw		r9, -20(r3)				# 33407
	slwi	r9, r9, 2				# 33407
	lli		r61, intsec_rectside.2521				# 33407
	addi	r61, r61, 0				# 33407
	sw		r61, -27(r3)				# 33407
	add		r62, r9, r61				# 33385
	lw		r9, -14(r3)				# 33272
	lw		r61, -15(r3)				# 33272
	swx		r62, r9, r61				# 33272
	lw		r15, -11(r3)				# 6897
	lw		r61, 1(r15)				# 6897
	lwx		r61, r61, r9				# 33510
	lw		r62, -24(r3)				# 1353
	sw		r62, 0(r61)				# 1353
	lw		r62, -25(r3)				# 1353
	sw		r62, 1(r61)				# 1353
	lw		r62, -26(r3)				# 33510
	sw		r62, 2(r61)				# 33510
	lw		r62, 3(r15)				# 7193
	lw		r10, -22(r3)				# 33623
	lw		r61, 0(r10)				# 33623
	addis	r51, r0, 16128
	ori		r51, r51, 0				# 33623
	fcmp	r51, r61
	ble		.b18824				# 3096
.b18825:
	addi	r61, r0, 0				# 33655
	swx		r61, r9, r62				# 33655
.b18823:
	addis	r25, r0, 49152
	ori		r25, r25, 0				# 33945
	lw		r7, -3(r3)				# 1949
	lw		r15, 0(r7)				# 1949
	lli		r9, nvector.2533				# 1949
	addi	r61, r9, 0				# 1949
	sw		r61, -28(r3)				# 1949
	fmul	r13, r15, r61				# 1949
	lw		r51, 1(r7)				# 1967
	addi	r30, r9, 1				# 1967
	sw		r30, -29(r3)				# 1967
	fmul	r62, r51, r30				# 1949
	fadd	r62, r13, r62				# 1949
	lw		r13, 2(r7)				# 1985
	addi	r54, r9, 2				# 1985
	sw		r54, -30(r3)				# 1985
	fmul	r9, r13, r54				# 1949
	fadd	r9, r62, r9				# 33945
	fmul	r62, r25, r9				# 33937
	fmul	r9, r62, r61				# 2129
	fadd	r9, r15, r9				# 2117
	sw		r9, -31(r3)				# 2117
	sw		r9, 0(r7)				# 2117
	fmul	r9, r62, r30				# 2171
	fadd	r9, r51, r9				# 2159
	sw		r9, -32(r3)				# 2159
	sw		r9, 1(r7)				# 2117
	fmul	r9, r62, r54				# 2213
	fadd	r9, r13, r9				# 2201
	sw		r9, -33(r3)				# 2201
	sw		r9, 2(r7)				# 33988
	lw		r61, 1(r10)				# 34042
	lw		r9, -13(r3)				# 34022
	fmul	r9, r9, r61				# 34022
	sw		r9, -34(r3)				# 34022
	addi	r9, r0, 0				# 24323
T.loop18827:
	sw		r9, -35(r3)				# 24323
	lw		r61, -16(r3)				# 24323
	lwx		r9, r61, r9				# 24323
	sw		r9, -36(r3)				# 24323
	lw		r1, 0(r9)				# 24355
	cmpi	r1, -1
	beq		.b18828				# 24391
.b18829:
	cmpi	r1, 99
	beq		.b18831				# 24451
.b18832:
	lw		r5, -1(r3)				# 24501
	lw		r2, -4(r3)				# 24501
	mflr	r63
	sw		r63, -37(r3)
	addi	r3, r3, -38
	bl		solver_fast.2864
	addi	r3, r3, 38
	lw		r63, -37(r3)
	mtlr	r63				# 24501
	cmpi	r2, 0
	beq		.b18833				# 24581
.b18834:
	lli		r9, solver_dist.2518				# 24609
	addi	r9, r9, 0				# 24609
	sw		r9, -37(r3)				# 24609
	addis	r61, r0, 48588
	ori		r61, r61, 52429				# 3096
	fcmp	r61, r9
	ble		.b18835				# 3096
.b18836:
	addi	r9, r0, 1				# 24006
T.loop18838:
	sw		r9, -38(r3)				# 24006
	lw		r61, -36(r3)				# 24006
	lwx		r9, r61, r9				# 24006
	cmpi	r9, -1
	beq		.b18839				# 24037
.b18840:
	mul16i	r61, r9, 1				# 24094
	lli		r9, and_net.2509				# 24078
	add		r9, r9, r61				# 24078
	sw		r9, -39(r3)				# 24078
	addi	r9, r0, 0				# 23266
T.loop18842:
	sw		r9, -40(r3)				# 23266
	lw		r61, -39(r3)				# 23266
	lwx		r1, r61, r9				# 23266
	sw		r1, -41(r3)				# 23266
	cmpi	r1, -1
	beq		.b18843				# 23266
.b18844:
	lw		r2, -4(r3)				# 23359
	lw		r5, -1(r3)				# 23359
	mflr	r63
	sw		r63, -42(r3)
	addi	r3, r3, -43
	bl		solver_fast.2864
	addi	r3, r3, 43
	lw		r63, -42(r3)
	mtlr	r63				# 23359
	cmpi	r2, 0
	beq		.b18846				# 23460
.b18847:
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	lw		r61, -37(r3)				# 3096
	fcmp	r9, r61
	ble		.b18848				# 3096
.b18849:
	addi	r9, r0, 1				# 3096
	cmpi	r9, 0
	beq		.b18850				# 23456
.b18851:
	addis	r61, r0, 15395
	ori		r61, r61, 55050				# 23524
	lw		r9, -37(r3)				# 23516
	fadd	r15, r9, r61				# 23516
	lli		r62, light.2500				# 23554
	addi	r9, r62, 0				# 23554
	fmul	r9, r9, r15				# 23554
	lw		r61, -24(r3)				# 23545
	fadd	r25, r9, r61				# 23545
	addi	r9, r62, 1				# 23613
	fmul	r9, r9, r15				# 23613
	lw		r61, -25(r3)				# 23604
	fadd	r51, r9, r61				# 23604
	addi	r9, r62, 2				# 23672
	fmul	r61, r9, r15				# 23672
	lw		r9, -26(r3)				# 23663
	fadd	r15, r61, r9				# 23663
	addi	r61, r0, 0				# 23025
	lw		r9, -39(r3)				# 23025
	lwx		r9, r9, r61				# 23025
	cmpi	r9, -1
	beq		.b18856				# 23052
.b18857:
	mul16i	r62, r9, 1				# 23106
	lli		r9, objects.2491				# 23095
	add		r30, r9, r62				# 23095
	lw		r9, 5(r30)				# 4475
	lw		r62, 0(r9)				# 22709
	fsub	r54, r25, r62				# 22700
	lw		r62, 1(r9)				# 22741
	fsub	r41, r51, r62				# 22732
	lw		r9, 2(r9)				# 22773
	fsub	r10, r15, r9				# 22764
	lw		r57, 1(r30)				# 2994
	cmpi	r57, 1
	beq		.b18859				# 22824
.b18860:
	cmpi	r57, 2
	beq		.b18872				# 22882
.b18873:
	fmul	r62, r54, r54				# 14374
	lw		r9, 4(r30)				# 3734
	lw		r13, 0(r9)				# 14374
	fmul	r13, r62, r13				# 14374
	fmul	r7, r41, r41				# 14400
	lw		r62, 1(r9)				# 14400
	fmul	r62, r7, r62				# 14374
	fadd	r13, r13, r62				# 14374
	fmul	r62, r10, r10				# 14426
	lw		r9, 2(r9)				# 14426
	fmul	r9, r62, r9				# 14374
	fadd	r9, r13, r9				# 14354
	lw		r62, 3(r30)				# 3553
	cmpi	r62, 0
	beq		.b18885				# 14456
.b18886:
	fmul	r13, r41, r10				# 14522
	lw		r62, 9(r30)				# 5989
	lw		r7, 0(r62)				# 14522
	fmul	r13, r13, r7				# 14503
	fadd	r13, r9, r13				# 14503
	fmul	r9, r10, r54				# 14556
	lw		r10, 1(r62)				# 14556
	fmul	r9, r9, r10				# 14503
	fadd	r9, r13, r9				# 14503
	fmul	r10, r54, r41				# 14590
	lw		r62, 2(r62)				# 14590
	fmul	r62, r10, r62				# 14503
	fadd	r9, r9, r62				# 14503
	cmpi	r57, 3
	beq		.b18888				# 22583
.b18889:
	lw		r10, 6(r30)				# 3372
	addi	r62, r0, 0				# 22630
	fcmp	r62, r9
	ble		.b18891				# 3186
.b18892:
	addi	r9, r0, 1				# 3186
	cmpi	r10, 0
	beq		.b18894				# 765
.b18895:
	cmpi	r9, 0
	beq		.b18896				# 775
.b18897:
	addi	r9, r0, 0				# 775
	cmpi	r9, 0
	beq		.b18898				# 22625
.b18899:
	addi	r9, r0, 0				# 22625
	cmpi	r9, 0
	beq		.b18900				# 23092
.b18901:
	addi	r9, r0, 0				# 23141
	cmpi	r9, 0
	beq		.b18902				# 23722
.b18903:
	addi	r9, r0, 1				# 23769
	cmpi	r9, 0
	beq		.b18904				# 24173
.b18905:
	addi	r9, r0, 1				# 24196
	cmpi	r9, 0
	beq		.b18906				# 24655
.b18907:
	addi	r9, r0, 1				# 24710
	cmpi	r9, 0
	beq		.b18908				# 24441
.b18909:
	addi	r9, r0, 1				# 24006
T.loop18911:
	sw		r9, -42(r3)				# 24006
	lw		r61, -36(r3)				# 24006
	lwx		r9, r61, r9				# 24006
	cmpi	r9, -1
	beq		.b18912				# 24037
.b18913:
	mul16i	r9, r9, 1				# 24094
	lli		r61, and_net.2509				# 24078
	add		r9, r61, r9				# 24078
	sw		r9, -43(r3)				# 24078
	addi	r9, r0, 0				# 23266
T.loop18915:
	sw		r9, -44(r3)				# 23266
	lw		r61, -43(r3)				# 23266
	lwx		r1, r61, r9				# 23266
	sw		r1, -45(r3)				# 23266
	cmpi	r1, -1
	beq		.b18916				# 23266
.b18917:
	lw		r2, -4(r3)				# 23359
	lw		r5, -1(r3)				# 23359
	mflr	r63
	sw		r63, -46(r3)
	addi	r3, r3, -47
	bl		solver_fast.2864
	addi	r3, r3, 47
	lw		r63, -46(r3)
	mtlr	r63				# 23359
	lli		r9, solver_dist.2518				# 23423
	addi	r9, r9, 0				# 23423
	cmpi	r2, 0
	beq		.b18919				# 23460
.b18920:
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	fcmp	r61, r9
	ble		.b18921				# 3096
.b18922:
	addi	r61, r0, 1				# 3096
	cmpi	r61, 0
	beq		.b18923				# 23456
.b18924:
	addis	r61, r0, 15395
	ori		r61, r61, 55050				# 23524
	fadd	r62, r9, r61				# 23516
	lli		r61, light.2500				# 23554
	addi	r9, r61, 0				# 23554
	fmul	r9, r9, r62				# 23554
	lw		r15, -24(r3)				# 23545
	fadd	r54, r9, r15				# 23545
	addi	r9, r61, 1				# 23613
	fmul	r9, r9, r62				# 23613
	lw		r15, -25(r3)				# 23604
	fadd	r15, r9, r15				# 23604
	addi	r9, r61, 2				# 23672
	fmul	r9, r9, r62				# 23672
	lw		r61, -26(r3)				# 23663
	fadd	r25, r9, r61				# 23663
	addi	r9, r0, 0				# 23025
	lw		r61, -43(r3)				# 23025
	lwx		r61, r61, r9				# 23025
	cmpi	r61, -1
	beq		.b18929				# 23052
.b18930:
	mul16i	r62, r61, 1				# 23106
	lli		r61, objects.2491				# 23095
	add		r57, r61, r62				# 23095
	lw		r62, 5(r57)				# 4475
	lw		r61, 0(r62)				# 22709
	fsub	r41, r54, r61				# 22700
	lw		r61, 1(r62)				# 22741
	fsub	r7, r15, r61				# 22732
	lw		r61, 2(r62)				# 22773
	fsub	r10, r25, r61				# 22764
	lw		r13, 1(r57)				# 2994
	cmpi	r13, 1
	beq		.b18932				# 22824
.b18933:
	cmpi	r13, 2
	beq		.b18945				# 22882
.b18946:
	fmul	r61, r41, r41				# 14374
	lw		r51, 4(r57)				# 3734
	lw		r62, 0(r51)				# 14374
	fmul	r30, r61, r62				# 14374
	fmul	r62, r7, r7				# 14400
	lw		r61, 1(r51)				# 14400
	fmul	r61, r62, r61				# 14374
	fadd	r30, r30, r61				# 14374
	fmul	r61, r10, r10				# 14426
	lw		r62, 2(r51)				# 14426
	fmul	r61, r61, r62				# 14374
	fadd	r61, r30, r61				# 14354
	lw		r62, 3(r57)				# 3553
	cmpi	r62, 0
	beq		.b18958				# 14456
.b18959:
	fmul	r51, r7, r10				# 14522
	lw		r30, 9(r57)				# 5989
	lw		r62, 0(r30)				# 14522
	fmul	r62, r51, r62				# 14503
	fadd	r51, r61, r62				# 14503
	fmul	r61, r10, r41				# 14556
	lw		r62, 1(r30)				# 14556
	fmul	r61, r61, r62				# 14503
	fadd	r61, r51, r61				# 14503
	fmul	r10, r41, r7				# 14590
	lw		r62, 2(r30)				# 14590
	fmul	r62, r10, r62				# 14503
	fadd	r61, r61, r62				# 14503
	cmpi	r13, 3
	beq		.b18961				# 22583
.b18962:
	lw		r10, 6(r57)				# 3372
	addi	r62, r0, 0				# 22630
	fcmp	r62, r61
	ble		.b18964				# 3186
.b18965:
	addi	r61, r0, 1				# 3186
	cmpi	r10, 0
	beq		.b18967				# 765
.b18968:
	cmpi	r61, 0
	beq		.b18969				# 775
.b18970:
	addi	r61, r0, 0				# 775
	cmpi	r61, 0
	beq		.b18971				# 22625
.b18972:
	addi	r61, r0, 0				# 22625
	cmpi	r61, 0
	beq		.b18973				# 23092
.b18974:
	addi	r9, r0, 0				# 23141
	cmpi	r9, 0
	beq		.b18975				# 23722
.b18976:
	addi	r9, r0, 1				# 23769
	cmpi	r9, 0
	beq		.b18977				# 24173
.b18978:
	addi	r9, r0, 1				# 24196
	cmpi	r9, 0
	beq		.b18979				# 24772
.b18980:
	addi	r9, r0, 1				# 24816
	cmpi	r9, 0
	beq		.b18982				# 34076
.b18981:
	lw		r13, -24(r3)				# 1353
	lli		r9, startp_fast.2557				# 1353
	sw		r13, 0(r9)				# 1353
	lw		r10, -25(r3)				# 1353
	sw		r10, 1(r9)				# 1353
	lw		r37, -26(r3)				# 22055
	sw		r37, 2(r9)				# 22055
	lli		r9, n_objects.2480				# 22105
	addi	r9, r9, 0				# 22105
	addi	r9, r9, -1				# 22079
	cmpi	r9, 0
	bge		.b18991				# 21420
.b18989:
	lli		r9, n_reflections.2602				# 34376
	addi	r9, r9, 0				# 34376
	addi	r9, r9, -1				# 34357
	sw		r9, -46(r3)				# 32237
	cmpi	r9, 0
	bge		.b19006				# 32237
.b19004:
	addis	r9, r0, 15820
	ori		r9, r9, 52429				# 34437
	lw		r61, -13(r3)				# 3096
	fcmp	r61, r9
	ble		.b18647				# 3096
.b19176:
	lw		r62, -14(r3)				# 34463
	cmpi	r62, 4
	bge		.b19177				# 34463
.b19179:
	addi	r10, r62, 1				# 34484
	lw		r15, -15(r3)				# 34484
	addi	r9, r0, -1				# 34484
	swx		r9, r10, r15				# 34484
	lw		r9, -21(r3)				# 34523
	cmpi	r9, 2
	beq		.b19180				# 34523
	b		.b18647
.b19180:
	lw		r9, -22(r3)				# 34576
	lw		r9, 0(r9)				# 34576
	addis	r15, r0, 16256
	ori		r15, r15, 0				# 34565
	fsub	r9, r15, r9				# 34565
	fmul	r61, r61, r9				# 34551
	addi	r9, r62, 1				# 34604
	lw		r15, -19(r3)				# 34604
	lw		r62, -12(r3)				# 34604
	fadd	r62, r62, r15				# 34604
	b		T.loop18648				# 34604
.b19177:
	lw		r9, -21(r3)				# 34523
	cmpi	r9, 2
	beq		.b19180				# 34523
	b		.b18647
.b19006:
	mul16i	r9, r9, 1				# 32274
	lli		r61, reflections.2599				# 32262
	add		r9, r61, r9				# 32262
	sw		r9, -47(r3)				# 32262
	lw		r1, 1(r9)				# 8279
	sw		r1, -48(r3)				# 8279
	mflr	r63
	sw		r63, -49(r3)
	addi	r3, r3, -50
	bl		judge_intersection_fast.2965
	addi	r3, r3, 50
	lw		r63, -49(r3)
	mtlr	r63				# 32333
	cmpi	r2, 0
	beq		.b19008				# 32333
.b19010:
	lw		r9, -20(r3)				# 32393
	slwi	r9, r9, 2				# 32393
	lw		r61, -27(r3)				# 32376
	add		r9, r9, r61				# 32376
	lw		r61, -47(r3)				# 8211
	lw		r61, 0(r61)				# 8211
	cmp		r9, r61
	beq		.b19011				# 32454
.b19008:
	lw		r9, -46(r3)				# 32856
	addi	r9, r9, -1				# 32856
	sw		r9, -46(r3)				# 32237
	cmpi	r9, 0
	bge		.b19006				# 32237
	b		.b19004
.b19011:
	addi	r9, r0, 0				# 24323
T.loop19014:
	sw		r9, -49(r3)				# 24323
	lw		r61, -16(r3)				# 24323
	lwx		r9, r61, r9				# 24323
	sw		r9, -50(r3)				# 24323
	lw		r1, 0(r9)				# 24355
	cmpi	r1, -1
	beq		.b19015				# 24391
.b19016:
	cmpi	r1, 99
	beq		.b19018				# 24451
.b19019:
	lw		r2, -4(r3)				# 24501
	lw		r5, -1(r3)				# 24501
	mflr	r63
	sw		r63, -51(r3)
	addi	r3, r3, -52
	bl		solver_fast.2864
	addi	r3, r3, 52
	lw		r63, -51(r3)
	mtlr	r63				# 24501
	cmpi	r2, 0
	beq		.b19020				# 24581
.b19021:
	lli		r9, solver_dist.2518				# 24609
	addi	r9, r9, 0				# 24609
	sw		r9, -51(r3)				# 24609
	addis	r61, r0, 48588
	ori		r61, r61, 52429				# 3096
	fcmp	r61, r9
	ble		.b19022				# 3096
.b19023:
	addi	r9, r0, 1				# 24006
T.loop19025:
	sw		r9, -52(r3)				# 24006
	lw		r61, -50(r3)				# 24006
	lwx		r9, r61, r9				# 24006
	cmpi	r9, -1
	beq		.b19026				# 24037
.b19027:
	mul16i	r61, r9, 1				# 24094
	lli		r9, and_net.2509				# 24078
	add		r9, r9, r61				# 24078
	sw		r9, -53(r3)				# 24078
	addi	r9, r0, 0				# 23266
T.loop19029:
	sw		r9, -54(r3)				# 23266
	lw		r61, -53(r3)				# 23266
	lwx		r1, r61, r9				# 23266
	sw		r1, -55(r3)				# 23266
	cmpi	r1, -1
	beq		.b19030				# 23266
.b19031:
	lw		r5, -1(r3)				# 23359
	lw		r2, -4(r3)				# 23359
	mflr	r63
	sw		r63, -56(r3)
	addi	r3, r3, -57
	bl		solver_fast.2864
	addi	r3, r3, 57
	lw		r63, -56(r3)
	mtlr	r63				# 23359
	cmpi	r2, 0
	beq		.b19033				# 23460
.b19034:
	addis	r61, r0, 48716
	ori		r61, r61, 52429				# 23476
	lw		r9, -51(r3)				# 3096
	fcmp	r61, r9
	ble		.b19035				# 3096
.b19036:
	addi	r9, r0, 1				# 3096
	cmpi	r9, 0
	beq		.b19037				# 23456
.b19038:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	lw		r61, -51(r3)				# 23516
	fadd	r61, r61, r9				# 23516
	lli		r15, light.2500				# 23554
	addi	r9, r15, 0				# 23554
	fmul	r9, r9, r61				# 23554
	lw		r62, -24(r3)				# 23545
	fadd	r54, r9, r62				# 23545
	addi	r9, r15, 1				# 23613
	fmul	r62, r9, r61				# 23613
	lw		r9, -25(r3)				# 23604
	fadd	r7, r62, r9				# 23604
	addi	r9, r15, 2				# 23672
	fmul	r61, r9, r61				# 23672
	lw		r9, -26(r3)				# 23663
	fadd	r25, r61, r9				# 23663
	addi	r9, r0, 0				# 23025
	lw		r61, -53(r3)				# 23025
	lwx		r61, r61, r9				# 23025
	cmpi	r61, -1
	beq		.b19043				# 23052
.b19044:
	mul16i	r62, r61, 1				# 23106
	lli		r61, objects.2491				# 23095
	add		r62, r61, r62				# 23095
	lw		r61, 5(r62)				# 4475
	lw		r15, 0(r61)				# 22709
	fsub	r41, r54, r15				# 22700
	lw		r15, 1(r61)				# 22741
	fsub	r15, r7, r15				# 22732
	lw		r61, 2(r61)				# 22773
	fsub	r13, r25, r61				# 22764
	lw		r51, 1(r62)				# 2994
	cmpi	r51, 1
	beq		.b19046				# 22824
.b19047:
	cmpi	r51, 2
	beq		.b19059				# 22882
.b19060:
	fmul	r61, r41, r41				# 14374
	lw		r30, 4(r62)				# 3734
	lw		r10, 0(r30)				# 14374
	fmul	r10, r61, r10				# 14374
	fmul	r57, r15, r15				# 14400
	lw		r61, 1(r30)				# 14400
	fmul	r61, r57, r61				# 14374
	fadd	r57, r10, r61				# 14374
	fmul	r10, r13, r13				# 14426
	lw		r61, 2(r30)				# 14426
	fmul	r61, r10, r61				# 14374
	fadd	r61, r57, r61				# 14354
	lw		r10, 3(r62)				# 3553
	cmpi	r10, 0
	beq		.b19072				# 14456
.b19073:
	fmul	r30, r15, r13				# 14522
	lw		r57, 9(r62)				# 5989
	lw		r10, 0(r57)				# 14522
	fmul	r10, r30, r10				# 14503
	fadd	r30, r61, r10				# 14503
	fmul	r10, r13, r41				# 14556
	lw		r61, 1(r57)				# 14556
	fmul	r61, r10, r61				# 14503
	fadd	r10, r30, r61				# 14503
	fmul	r15, r41, r15				# 14590
	lw		r61, 2(r57)				# 14590
	fmul	r61, r15, r61				# 14503
	fadd	r61, r10, r61				# 14503
	cmpi	r51, 3
	beq		.b19075				# 22583
.b19076:
	lw		r15, 6(r62)				# 3372
	addi	r62, r0, 0				# 22630
	fcmp	r62, r61
	ble		.b19078				# 3186
.b19079:
	addi	r61, r0, 1				# 3186
	cmpi	r15, 0
	beq		.b19081				# 765
.b19082:
	cmpi	r61, 0
	beq		.b19083				# 775
.b19084:
	addi	r61, r0, 0				# 775
	cmpi	r61, 0
	beq		.b19085				# 22625
.b19086:
	addi	r61, r0, 0				# 22625
	cmpi	r61, 0
	beq		.b19087				# 23092
.b19088:
	addi	r9, r0, 0				# 23141
	cmpi	r9, 0
	beq		.b19089				# 23722
.b19090:
	addi	r9, r0, 1				# 23769
	cmpi	r9, 0
	beq		.b19091				# 24173
.b19092:
	addi	r9, r0, 1				# 24196
	cmpi	r9, 0
	beq		.b19093				# 24655
.b19094:
	addi	r9, r0, 1				# 24710
	cmpi	r9, 0
	beq		.b19095				# 24441
.b19096:
	addi	r9, r0, 1				# 24006
T.loop19098:
	sw		r9, -56(r3)				# 24006
	lw		r61, -50(r3)				# 24006
	lwx		r9, r61, r9				# 24006
	cmpi	r9, -1
	beq		.b19099				# 24037
.b19100:
	mul16i	r9, r9, 1				# 24094
	lli		r61, and_net.2509				# 24078
	add		r9, r61, r9				# 24078
	sw		r9, -57(r3)				# 24078
	addi	r9, r0, 0				# 23266
T.loop19102:
	sw		r9, -58(r3)				# 23266
	lw		r61, -57(r3)				# 23266
	lwx		r1, r61, r9				# 23266
	sw		r1, -59(r3)				# 23266
	cmpi	r1, -1
	beq		.b19103				# 23266
.b19104:
	lw		r5, -1(r3)				# 23359
	lw		r2, -4(r3)				# 23359
	mflr	r63
	sw		r63, -60(r3)
	addi	r3, r3, -61
	bl		solver_fast.2864
	addi	r3, r3, 61
	lw		r63, -60(r3)
	mtlr	r63				# 23359
	lli		r9, solver_dist.2518				# 23423
	addi	r61, r9, 0				# 23423
	cmpi	r2, 0
	beq		.b19106				# 23460
.b19107:
	addis	r9, r0, 48716
	ori		r9, r9, 52429				# 23476
	fcmp	r9, r61
	ble		.b19108				# 3096
.b19109:
	addi	r9, r0, 1				# 3096
	cmpi	r9, 0
	beq		.b19110				# 23456
.b19111:
	addis	r9, r0, 15395
	ori		r9, r9, 55050				# 23524
	fadd	r15, r61, r9				# 23516
	lli		r62, light.2500				# 23554
	addi	r9, r62, 0				# 23554
	fmul	r9, r9, r15				# 23554
	lw		r61, -24(r3)				# 23545
	fadd	r30, r9, r61				# 23545
	addi	r9, r62, 1				# 23613
	fmul	r61, r9, r15				# 23613
	lw		r9, -25(r3)				# 23604
	fadd	r7, r61, r9				# 23604
	addi	r9, r62, 2				# 23672
	fmul	r61, r9, r15				# 23672
	lw		r9, -26(r3)				# 23663
	fadd	r15, r61, r9				# 23663
	addi	r9, r0, 0				# 23025
	lw		r61, -57(r3)				# 23025
	lwx		r61, r61, r9				# 23025
	cmpi	r61, -1
	beq		.b19116				# 23052
.b19117:
	mul16i	r62, r61, 1				# 23106
	lli		r61, objects.2491				# 23095
	add		r57, r61, r62				# 23095
	lw		r62, 5(r57)				# 4475
	lw		r61, 0(r62)				# 22709
	fsub	r51, r30, r61				# 22700
	lw		r61, 1(r62)				# 22741
	fsub	r10, r7, r61				# 22732
	lw		r61, 2(r62)				# 22773
	fsub	r41, r15, r61				# 22764
	lw		r25, 1(r57)				# 2994
	cmpi	r25, 1
	beq		.b19119				# 22824
.b19120:
	cmpi	r25, 2
	beq		.b19132				# 22882
.b19133:
	fmul	r62, r51, r51				# 14374
	lw		r54, 4(r57)				# 3734
	lw		r61, 0(r54)				# 14374
	fmul	r62, r62, r61				# 14374
	fmul	r13, r10, r10				# 14400
	lw		r61, 1(r54)				# 14400
	fmul	r61, r13, r61				# 14374
	fadd	r61, r62, r61				# 14374
	fmul	r13, r41, r41				# 14426
	lw		r62, 2(r54)				# 14426
	fmul	r62, r13, r62				# 14374
	fadd	r61, r61, r62				# 14354
	lw		r62, 3(r57)				# 3553
	cmpi	r62, 0
	beq		.b19145				# 14456
.b19146:
	fmul	r13, r10, r41				# 14522
	lw		r54, 9(r57)				# 5989
	lw		r62, 0(r54)				# 14522
	fmul	r62, r13, r62				# 14503
	fadd	r62, r61, r62				# 14503
	fmul	r61, r41, r51				# 14556
	lw		r13, 1(r54)				# 14556
	fmul	r61, r61, r13				# 14503
	fadd	r61, r62, r61				# 14503
	fmul	r10, r51, r10				# 14590
	lw		r62, 2(r54)				# 14590
	fmul	r62, r10, r62				# 14503
	fadd	r61, r61, r62				# 14503
	cmpi	r25, 3
	beq		.b19148				# 22583
.b19149:
	lw		r62, 6(r57)				# 3372
	addi	r10, r0, 0				# 22630
	fcmp	r10, r61
	ble		.b19151				# 3186
.b19152:
	addi	r61, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b19154				# 765
.b19155:
	cmpi	r61, 0
	beq		.b19156				# 775
.b19157:
	addi	r61, r0, 0				# 775
	cmpi	r61, 0
	beq		.b19158				# 22625
.b19159:
	addi	r61, r0, 0				# 22625
	cmpi	r61, 0
	beq		.b19160				# 23092
.b19161:
	addi	r9, r0, 0				# 23141
	cmpi	r9, 0
	beq		.b19162				# 23722
.b19163:
	addi	r9, r0, 1				# 23769
	cmpi	r9, 0
	beq		.b19164				# 24173
.b19165:
	addi	r9, r0, 1				# 24196
	cmpi	r9, 0
	beq		.b19166				# 24772
.b19167:
	addi	r9, r0, 1				# 24816
	cmpi	r9, 0
	beq		.b19168				# 32502
	b		.b19008
.b19168:
	lw		r9, -48(r3)				# 8078
	lw		r62, 0(r9)				# 8078
	lw		r9, 0(r62)				# 1949
	lw		r61, -28(r3)				# 1949
	fmul	r10, r61, r9				# 1949
	lw		r15, 1(r62)				# 1967
	lw		r61, -29(r3)				# 1949
	fmul	r61, r61, r15				# 1949
	fadd	r61, r10, r61				# 1949
	lw		r10, 2(r62)				# 1985
	lw		r62, -30(r3)				# 1949
	fmul	r62, r62, r10				# 1949
	fadd	r62, r61, r62				# 32566
	lw		r61, -47(r3)				# 8350
	lw		r51, 2(r61)				# 8350
	lw		r61, -23(r3)				# 32670
	fmul	r61, r51, r61				# 32670
	fmul	r13, r61, r62				# 32657
	lw		r61, -31(r3)				# 1949
	fmul	r61, r61, r9				# 1949
	lw		r9, -32(r3)				# 1949
	fmul	r9, r9, r15				# 1949
	fadd	r61, r61, r9				# 1949
	lw		r9, -33(r3)				# 1949
	fmul	r9, r9, r10				# 1949
	fadd	r9, r61, r9				# 32719
	fmul	r10, r51, r9				# 32705
	addi	r15, r0, 0				# 31910
	fcmp	r13, r15
	ble		.b19170				# 3156
.b19172:
	lli		r62, rgb.2542				# 2129
	addi	r61, r62, 0				# 2129
	lli		r51, texture_color.2536				# 2141
	addi	r9, r51, 0				# 2141
	fmul	r9, r13, r9				# 2129
	fadd	r9, r61, r9				# 2117
	sw		r9, 0(r62)				# 2117
	addi	r61, r62, 1				# 2171
	addi	r9, r51, 1				# 2183
	fmul	r9, r13, r9				# 2171
	fadd	r9, r61, r9				# 2159
	sw		r9, 1(r62)				# 2117
	addi	r9, r62, 2				# 2213
	addi	r61, r51, 2				# 2225
	fmul	r61, r13, r61				# 2213
	fadd	r9, r9, r61				# 2201
	sw		r9, 2(r62)				# 2201
	fcmp	r10, r15
	ble		.b19008				# 3156
.b19174:
	fmul	r9, r10, r10				# 32023
	fmul	r9, r9, r9				# 32023
	lw		r61, -34(r3)				# 32013
	fmul	r61, r9, r61				# 32013
	lli		r62, rgb.2542				# 32078
	addi	r9, r62, 0				# 32078
	fadd	r9, r9, r61				# 32067
	sw		r9, 0(r62)				# 32067
	addi	r9, r62, 1				# 32109
	fadd	r9, r9, r61				# 32098
	sw		r9, 1(r62)				# 32067
	addi	r9, r62, 2				# 32140
	fadd	r9, r9, r61				# 32129
	sw		r9, 2(r62)				# 32129
	b		.b19008				# 32129
.b19170:
	fcmp	r10, r15
	ble		.b19008				# 3156
	b		.b19174
.b19166:
	lw		r9, -49(r3)				# 24833
	addi	r9, r9, 1				# 24833
	b		T.loop19014				# 24833
.b19164:
	lw		r9, -56(r3)				# 24216
	addi	r9, r9, 1				# 24216
	b		T.loop19098				# 24216
.b19162:
	lw		r9, -58(r3)				# 23786
	addi	r9, r9, 1				# 23786
	b		T.loop19102				# 23786
.b19160:
	addi	r9, r9, 1				# 23162
	lw		r61, -57(r3)				# 23025
	lwx		r61, r61, r9				# 23025
	cmpi	r61, -1
	beq		.b19116				# 23052
	b		.b19117
.b19116:
	addi	r9, r0, 1				# 23074
	cmpi	r9, 0
	beq		.b19162				# 23722
	b		.b19163
.b19158:
	addi	r61, r0, 1				# 22625
	cmpi	r61, 0
	beq		.b19160				# 23092
	b		.b19161
.b19156:
	addi	r61, r0, 1				# 775
	cmpi	r61, 0
	beq		.b19158				# 22625
	b		.b19159
.b19154:
	cmpi	r61, 0
	beq		.b19158				# 22625
	b		.b19159
.b19151:
	addi	r61, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b19154				# 765
	b		.b19155
.b19148:
	addis	r62, r0, 16256
	ori		r62, r62, 0				# 22604
	fsub	r61, r61, r62				# 22604
	lw		r62, 6(r57)				# 3372
	addi	r10, r0, 0				# 22630
	fcmp	r10, r61
	ble		.b19151				# 3186
	b		.b19152
.b19145:
	cmpi	r25, 3
	beq		.b19148				# 22583
	b		.b19149
.b19132:
	lw		r62, 4(r57)				# 4293
	lw		r61, 0(r62)				# 2037
	fmul	r51, r61, r51				# 2037
	lw		r61, 1(r62)				# 2052
	fmul	r61, r61, r10				# 2037
	fadd	r10, r51, r61				# 2037
	lw		r61, 2(r62)				# 2067
	fmul	r61, r61, r41				# 2037
	fadd	r62, r10, r61				# 22411
	lw		r10, 6(r57)				# 3372
	addi	r61, r0, 0				# 22464
	fcmp	r61, r62
	ble		.b19135				# 3186
.b19136:
	addi	r61, r0, 1				# 3186
	cmpi	r10, 0
	beq		.b19138				# 765
.b19139:
	cmpi	r61, 0
	beq		.b19140				# 775
.b19141:
	addi	r61, r0, 0				# 775
	cmpi	r61, 0
	beq		.b19142				# 22459
.b19143:
	addi	r61, r0, 0				# 22459
	cmpi	r61, 0
	beq		.b19160				# 23092
	b		.b19161
.b19142:
	addi	r61, r0, 1				# 22459
	cmpi	r61, 0
	beq		.b19160				# 23092
	b		.b19161
.b19140:
	addi	r61, r0, 1				# 775
	cmpi	r61, 0
	beq		.b19142				# 22459
	b		.b19143
.b19138:
	cmpi	r61, 0
	beq		.b19142				# 22459
	b		.b19143
.b19135:
	addi	r61, r0, 0				# 3186
	cmpi	r10, 0
	beq		.b19138				# 765
	b		.b19139
.b19119:
	fabs	r61, r51				# 322
	lw		r62, 4(r57)				# 3734
	lw		r51, 0(r62)				# 22178
	fcmp	r51, r61
	ble		.b19122				# 3096
.b19123:
	fabs	r61, r10				# 322
	lw		r10, 1(r62)				# 22224
	fcmp	r10, r61
	ble		.b19124				# 3096
.b19125:
	fabs	r61, r41				# 322
	lw		r62, 2(r62)				# 22261
	fcmp	r62, r61
	ble		.b19126				# 3096
.b19127:
	addi	r61, r0, 1				# 3096
	cmpi	r61, 0
	beq		.b19128				# 22167
.b19129:
	lw		r61, 6(r57)				# 3372
	cmpi	r61, 0
	beq		.b19160				# 23092
	b		.b19161
.b19128:
	lw		r61, 6(r57)				# 3372
	cmpi	r61, 0
	beq		.b19130				# 22348
.b19131:
	addi	r61, r0, 0				# 22348
	cmpi	r61, 0
	beq		.b19160				# 23092
	b		.b19161
.b19130:
	addi	r61, r0, 1				# 22348
	cmpi	r61, 0
	beq		.b19160				# 23092
	b		.b19161
.b19126:
	addi	r61, r0, 0				# 3096
	cmpi	r61, 0
	beq		.b19128				# 22167
	b		.b19129
.b19124:
	addi	r61, r0, 0				# 22302
	cmpi	r61, 0
	beq		.b19128				# 22167
	b		.b19129
.b19122:
	addi	r61, r0, 0				# 22317
	cmpi	r61, 0
	beq		.b19128				# 22167
	b		.b19129
.b19110:
	lw		r9, -59(r3)				# 23864
	mul16i	r9, r9, 1				# 23864
	lli		r61, objects.2491				# 23852
	add		r9, r61, r9				# 23852
	lw		r9, 6(r9)				# 3372
	cmpi	r9, 0
	beq		.b19112				# 23849
.b19113:
	lw		r9, -58(r3)				# 23885
	addi	r9, r9, 1				# 23885
	b		T.loop19102				# 23885
.b19112:
	addi	r9, r0, 0				# 23945
	cmpi	r9, 0
	beq		.b19164				# 24173
	b		.b19165
.b19108:
	addi	r9, r0, 0				# 3096
	cmpi	r9, 0
	beq		.b19110				# 23456
	b		.b19111
.b19106:
	addi	r9, r0, 0				# 23498
	cmpi	r9, 0
	beq		.b19110				# 23456
	b		.b19111
.b19103:
	addi	r9, r0, 0				# 23304
	cmpi	r9, 0
	beq		.b19164				# 24173
	b		.b19165
.b19099:
	addi	r9, r0, 0				# 24059
	cmpi	r9, 0
	beq		.b19166				# 24772
	b		.b19167
.b19095:
	lw		r9, -49(r3)				# 24896
	addi	r9, r9, 1				# 24896
	b		T.loop19014				# 24896
.b19093:
	addi	r9, r0, 0				# 24725
	cmpi	r9, 0
	beq		.b19095				# 24441
	b		.b19096
.b19091:
	lw		r9, -52(r3)				# 24216
	addi	r9, r9, 1				# 24216
	b		T.loop19025				# 24216
.b19089:
	lw		r9, -54(r3)				# 23786
	addi	r9, r9, 1				# 23786
	b		T.loop19029				# 23786
.b19087:
	addi	r9, r9, 1				# 23162
	lw		r61, -53(r3)				# 23025
	lwx		r61, r61, r9				# 23025
	cmpi	r61, -1
	beq		.b19043				# 23052
	b		.b19044
.b19043:
	addi	r9, r0, 1				# 23074
	cmpi	r9, 0
	beq		.b19089				# 23722
	b		.b19090
.b19085:
	addi	r61, r0, 1				# 22625
	cmpi	r61, 0
	beq		.b19087				# 23092
	b		.b19088
.b19083:
	addi	r61, r0, 1				# 775
	cmpi	r61, 0
	beq		.b19085				# 22625
	b		.b19086
.b19081:
	cmpi	r61, 0
	beq		.b19085				# 22625
	b		.b19086
.b19078:
	addi	r61, r0, 0				# 3186
	cmpi	r15, 0
	beq		.b19081				# 765
	b		.b19082
.b19075:
	addis	r15, r0, 16256
	ori		r15, r15, 0				# 22604
	fsub	r61, r61, r15				# 22604
	lw		r15, 6(r62)				# 3372
	addi	r62, r0, 0				# 22630
	fcmp	r62, r61
	ble		.b19078				# 3186
	b		.b19079
.b19072:
	cmpi	r51, 3
	beq		.b19075				# 22583
	b		.b19076
.b19059:
	lw		r51, 4(r62)				# 4293
	lw		r61, 0(r51)				# 2037
	fmul	r10, r61, r41				# 2037
	lw		r61, 1(r51)				# 2052
	fmul	r61, r61, r15				# 2037
	fadd	r15, r10, r61				# 2037
	lw		r61, 2(r51)				# 2067
	fmul	r61, r61, r13				# 2037
	fadd	r15, r15, r61				# 22411
	lw		r62, 6(r62)				# 3372
	addi	r61, r0, 0				# 22464
	fcmp	r61, r15
	ble		.b19062				# 3186
.b19063:
	addi	r61, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b19065				# 765
.b19066:
	cmpi	r61, 0
	beq		.b19067				# 775
.b19068:
	addi	r61, r0, 0				# 775
	cmpi	r61, 0
	beq		.b19069				# 22459
.b19070:
	addi	r61, r0, 0				# 22459
	cmpi	r61, 0
	beq		.b19087				# 23092
	b		.b19088
.b19069:
	addi	r61, r0, 1				# 22459
	cmpi	r61, 0
	beq		.b19087				# 23092
	b		.b19088
.b19067:
	addi	r61, r0, 1				# 775
	cmpi	r61, 0
	beq		.b19069				# 22459
	b		.b19070
.b19065:
	cmpi	r61, 0
	beq		.b19069				# 22459
	b		.b19070
.b19062:
	addi	r61, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b19065				# 765
	b		.b19066
.b19046:
	fabs	r51, r41				# 322
	lw		r10, 4(r62)				# 3734
	lw		r61, 0(r10)				# 22178
	fcmp	r61, r51
	ble		.b19049				# 3096
.b19050:
	fabs	r15, r15				# 322
	lw		r61, 1(r10)				# 22224
	fcmp	r61, r15
	ble		.b19051				# 3096
.b19052:
	fabs	r61, r13				# 322
	lw		r15, 2(r10)				# 22261
	fcmp	r15, r61
	ble		.b19053				# 3096
.b19054:
	addi	r61, r0, 1				# 3096
	cmpi	r61, 0
	beq		.b19055				# 22167
.b19056:
	lw		r61, 6(r62)				# 3372
	cmpi	r61, 0
	beq		.b19087				# 23092
	b		.b19088
.b19055:
	lw		r61, 6(r62)				# 3372
	cmpi	r61, 0
	beq		.b19057				# 22348
.b19058:
	addi	r61, r0, 0				# 22348
	cmpi	r61, 0
	beq		.b19087				# 23092
	b		.b19088
.b19057:
	addi	r61, r0, 1				# 22348
	cmpi	r61, 0
	beq		.b19087				# 23092
	b		.b19088
.b19053:
	addi	r61, r0, 0				# 3096
	cmpi	r61, 0
	beq		.b19055				# 22167
	b		.b19056
.b19051:
	addi	r61, r0, 0				# 22302
	cmpi	r61, 0
	beq		.b19055				# 22167
	b		.b19056
.b19049:
	addi	r61, r0, 0				# 22317
	cmpi	r61, 0
	beq		.b19055				# 22167
	b		.b19056
.b19037:
	lw		r9, -55(r3)				# 23864
	mul16i	r61, r9, 1				# 23864
	lli		r9, objects.2491				# 23852
	add		r9, r9, r61				# 23852
	lw		r9, 6(r9)				# 3372
	cmpi	r9, 0
	beq		.b19039				# 23849
.b19040:
	lw		r9, -54(r3)				# 23885
	addi	r9, r9, 1				# 23885
	b		T.loop19029				# 23885
.b19039:
	addi	r9, r0, 0				# 23945
	cmpi	r9, 0
	beq		.b19091				# 24173
	b		.b19092
.b19035:
	addi	r9, r0, 0				# 3096
	cmpi	r9, 0
	beq		.b19037				# 23456
	b		.b19038
.b19033:
	addi	r9, r0, 0				# 23498
	cmpi	r9, 0
	beq		.b19037				# 23456
	b		.b19038
.b19030:
	addi	r9, r0, 0				# 23304
	cmpi	r9, 0
	beq		.b19091				# 24173
	b		.b19092
.b19026:
	addi	r9, r0, 0				# 24059
	cmpi	r9, 0
	beq		.b19093				# 24655
	b		.b19094
.b19022:
	addi	r9, r0, 0				# 24739
	cmpi	r9, 0
	beq		.b19095				# 24441
	b		.b19096
.b19020:
	addi	r9, r0, 0				# 24751
	cmpi	r9, 0
	beq		.b19095				# 24441
	b		.b19096
.b19018:
	addi	r9, r0, 1				# 24483
	cmpi	r9, 0
	beq		.b19095				# 24441
	b		.b19096
.b19015:
	addi	r9, r0, 0				# 24424
	cmpi	r9, 0
	beq		.b19168				# 32502
	b		.b19008
.b18991:
	mul16i	r61, r9, 1				# 21455
	lli		r62, objects.2491				# 21445
	add		r30, r62, r61				# 21445
	lw		r41, 10(r30)				# 6561
	lw		r7, 1(r30)				# 2994
	lw		r62, 5(r30)				# 4475
	lw		r61, 0(r62)				# 21561
	fsub	r61, r13, r61				# 21547
	sw		r61, 0(r41)				# 21547
	lw		r61, 1(r62)				# 21603
	fsub	r61, r10, r61				# 21589
	sw		r61, 1(r41)				# 21547
	lw		r61, 2(r62)				# 21645
	fsub	r25, r37, r61				# 21631
	sw		r25, 2(r41)				# 21547
	cmpi	r7, 2
	beq		.b18994				# 21673
.b18995:
	cmpi	r7, 2
	ble		.b18993				# 21798
.b18997:
	lw		r51, 0(r41)				# 21847
	lw		r54, 1(r41)				# 21847
	fmul	r61, r51, r51				# 14374
	lw		r15, 4(r30)				# 3734
	lw		r62, 0(r15)				# 14374
	fmul	r62, r61, r62				# 14374
	fmul	r57, r54, r54				# 14400
	lw		r61, 1(r15)				# 14400
	fmul	r61, r57, r61				# 14374
	fadd	r57, r62, r61				# 14374
	fmul	r62, r25, r25				# 14426
	lw		r61, 2(r15)				# 14426
	fmul	r61, r62, r61				# 14374
	fadd	r61, r57, r61				# 14354
	lw		r62, 3(r30)				# 3553
	cmpi	r62, 0
	beq		.b18999				# 14456
.b19000:
	fmul	r15, r54, r25				# 14522
	lw		r62, 9(r30)				# 5989
	lw		r30, 0(r62)				# 14522
	fmul	r15, r15, r30				# 14503
	fadd	r15, r61, r15				# 14503
	fmul	r30, r25, r51				# 14556
	lw		r61, 1(r62)				# 14556
	fmul	r61, r30, r61				# 14503
	fadd	r15, r15, r61				# 14503
	fmul	r51, r51, r54				# 14590
	lw		r61, 2(r62)				# 14590
	fmul	r61, r51, r61				# 14503
	fadd	r61, r15, r61				# 14503
	cmpi	r7, 3
	beq		.b19002				# 21917
.b19003:
.b19001:
	sw		r61, 3(r41)				# 21903
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b18991				# 21420
	b		.b18989
.b19002:
	addis	r62, r0, 16256
	ori		r62, r62, 0				# 21937
	fsub	r61, r61, r62				# 21937
	b		.b19001				# 21937
.b18999:
	cmpi	r7, 3
	beq		.b19002				# 21917
	b		.b19003
.b18993:
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b18991				# 21420
	b		.b18989
.b18994:
	lw		r51, 4(r30)				# 4293
	lw		r62, 0(r41)				# 21728
	lw		r15, 1(r41)				# 21728
	lw		r61, 0(r51)				# 2037
	fmul	r61, r61, r62				# 2037
	lw		r62, 1(r51)				# 2052
	fmul	r62, r62, r15				# 2037
	fadd	r62, r61, r62				# 2037
	lw		r61, 2(r51)				# 2067
	fmul	r61, r61, r25				# 2037
	fadd	r61, r62, r61				# 21713
	sw		r61, 3(r41)				# 21713
	addi	r9, r9, -1				# 21974
	cmpi	r9, 0
	bge		.b18991				# 21420
	b		.b18989
.b18982:
	lli		r61, light.2500				# 1949
	addi	r51, r61, 0				# 1949
	lw		r9, -28(r3)				# 1949
	fmul	r62, r9, r51				# 1949
	addi	r15, r61, 1				# 1967
	lw		r9, -29(r3)				# 1949
	fmul	r9, r9, r15				# 1949
	fadd	r62, r62, r9				# 1949
	addi	r61, r61, 2				# 1985
	lw		r9, -30(r3)				# 1949
	fmul	r9, r9, r61				# 1949
	fadd	r9, r62, r9				# 34151
	fneg	r9, r9				# 34151
	lw		r62, -23(r3)				# 34138
	fmul	r10, r9, r62				# 34138
	lw		r9, -31(r3)				# 1949
	fmul	r62, r9, r51				# 1949
	lw		r9, -32(r3)				# 1949
	fmul	r9, r9, r15				# 1949
	fadd	r62, r62, r9				# 1949
	lw		r9, -33(r3)				# 1949
	fmul	r9, r9, r61				# 1949
	fadd	r9, r62, r9				# 34217
	fneg	r13, r9				# 34203
	addi	r51, r0, 0				# 31910
	fcmp	r10, r51
	ble		.b18984				# 3156
.b18986:
	lli		r15, rgb.2542				# 2129
	addi	r9, r15, 0				# 2129
	lli		r62, texture_color.2536				# 2141
	addi	r61, r62, 0				# 2141
	fmul	r61, r10, r61				# 2129
	fadd	r9, r9, r61				# 2117
	sw		r9, 0(r15)				# 2117
	addi	r9, r15, 1				# 2171
	addi	r61, r62, 1				# 2183
	fmul	r61, r10, r61				# 2171
	fadd	r9, r9, r61				# 2159
	sw		r9, 1(r15)				# 2117
	addi	r61, r15, 2				# 2213
	addi	r9, r62, 2				# 2225
	fmul	r9, r10, r9				# 2213
	fadd	r9, r61, r9				# 2201
	sw		r9, 2(r15)				# 2201
	fcmp	r13, r51
	ble		.b18981				# 3156
.b18988:
	fmul	r9, r13, r13				# 32023
	fmul	r9, r9, r9				# 32023
	lw		r61, -34(r3)				# 32013
	fmul	r62, r9, r61				# 32013
	lli		r61, rgb.2542				# 32078
	addi	r9, r61, 0				# 32078
	fadd	r9, r9, r62				# 32067
	sw		r9, 0(r61)				# 32067
	addi	r9, r61, 1				# 32109
	fadd	r9, r9, r62				# 32098
	sw		r9, 1(r61)				# 32067
	addi	r9, r61, 2				# 32140
	fadd	r9, r9, r62				# 32129
	sw		r9, 2(r61)				# 32129
	b		.b18981				# 32129
.b18984:
	fcmp	r13, r51
	ble		.b18981				# 3156
	b		.b18988
.b18979:
	lw		r9, -35(r3)				# 24833
	addi	r9, r9, 1				# 24833
	b		T.loop18827				# 24833
.b18977:
	lw		r9, -42(r3)				# 24216
	addi	r9, r9, 1				# 24216
	b		T.loop18911				# 24216
.b18975:
	lw		r9, -44(r3)				# 23786
	addi	r9, r9, 1				# 23786
	b		T.loop18915				# 23786
.b18973:
	addi	r9, r9, 1				# 23162
	lw		r61, -43(r3)				# 23025
	lwx		r61, r61, r9				# 23025
	cmpi	r61, -1
	beq		.b18929				# 23052
	b		.b18930
.b18929:
	addi	r9, r0, 1				# 23074
	cmpi	r9, 0
	beq		.b18975				# 23722
	b		.b18976
.b18971:
	addi	r61, r0, 1				# 22625
	cmpi	r61, 0
	beq		.b18973				# 23092
	b		.b18974
.b18969:
	addi	r61, r0, 1				# 775
	cmpi	r61, 0
	beq		.b18971				# 22625
	b		.b18972
.b18967:
	cmpi	r61, 0
	beq		.b18971				# 22625
	b		.b18972
.b18964:
	addi	r61, r0, 0				# 3186
	cmpi	r10, 0
	beq		.b18967				# 765
	b		.b18968
.b18961:
	addis	r62, r0, 16256
	ori		r62, r62, 0				# 22604
	fsub	r61, r61, r62				# 22604
	lw		r10, 6(r57)				# 3372
	addi	r62, r0, 0				# 22630
	fcmp	r62, r61
	ble		.b18964				# 3186
	b		.b18965
.b18958:
	cmpi	r13, 3
	beq		.b18961				# 22583
	b		.b18962
.b18945:
	lw		r62, 4(r57)				# 4293
	lw		r61, 0(r62)				# 2037
	fmul	r51, r61, r41				# 2037
	lw		r61, 1(r62)				# 2052
	fmul	r61, r61, r7				# 2037
	fadd	r51, r51, r61				# 2037
	lw		r61, 2(r62)				# 2067
	fmul	r61, r61, r10				# 2037
	fadd	r61, r51, r61				# 22411
	lw		r62, 6(r57)				# 3372
	addi	r10, r0, 0				# 22464
	fcmp	r10, r61
	ble		.b18948				# 3186
.b18949:
	addi	r61, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b18951				# 765
.b18952:
	cmpi	r61, 0
	beq		.b18953				# 775
.b18954:
	addi	r61, r0, 0				# 775
	cmpi	r61, 0
	beq		.b18955				# 22459
.b18956:
	addi	r61, r0, 0				# 22459
	cmpi	r61, 0
	beq		.b18973				# 23092
	b		.b18974
.b18955:
	addi	r61, r0, 1				# 22459
	cmpi	r61, 0
	beq		.b18973				# 23092
	b		.b18974
.b18953:
	addi	r61, r0, 1				# 775
	cmpi	r61, 0
	beq		.b18955				# 22459
	b		.b18956
.b18951:
	cmpi	r61, 0
	beq		.b18955				# 22459
	b		.b18956
.b18948:
	addi	r61, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b18951				# 765
	b		.b18952
.b18932:
	fabs	r62, r41				# 322
	lw		r61, 4(r57)				# 3734
	lw		r51, 0(r61)				# 22178
	fcmp	r51, r62
	ble		.b18935				# 3096
.b18936:
	fabs	r62, r7				# 322
	lw		r51, 1(r61)				# 22224
	fcmp	r51, r62
	ble		.b18937				# 3096
.b18938:
	fabs	r62, r10				# 322
	lw		r61, 2(r61)				# 22261
	fcmp	r61, r62
	ble		.b18939				# 3096
.b18940:
	addi	r61, r0, 1				# 3096
	cmpi	r61, 0
	beq		.b18941				# 22167
.b18942:
	lw		r61, 6(r57)				# 3372
	cmpi	r61, 0
	beq		.b18973				# 23092
	b		.b18974
.b18941:
	lw		r61, 6(r57)				# 3372
	cmpi	r61, 0
	beq		.b18943				# 22348
.b18944:
	addi	r61, r0, 0				# 22348
	cmpi	r61, 0
	beq		.b18973				# 23092
	b		.b18974
.b18943:
	addi	r61, r0, 1				# 22348
	cmpi	r61, 0
	beq		.b18973				# 23092
	b		.b18974
.b18939:
	addi	r61, r0, 0				# 3096
	cmpi	r61, 0
	beq		.b18941				# 22167
	b		.b18942
.b18937:
	addi	r61, r0, 0				# 22302
	cmpi	r61, 0
	beq		.b18941				# 22167
	b		.b18942
.b18935:
	addi	r61, r0, 0				# 22317
	cmpi	r61, 0
	beq		.b18941				# 22167
	b		.b18942
.b18923:
	lw		r9, -45(r3)				# 23864
	mul16i	r9, r9, 1				# 23864
	lli		r61, objects.2491				# 23852
	add		r9, r61, r9				# 23852
	lw		r9, 6(r9)				# 3372
	cmpi	r9, 0
	beq		.b18925				# 23849
.b18926:
	lw		r9, -44(r3)				# 23885
	addi	r9, r9, 1				# 23885
	b		T.loop18915				# 23885
.b18925:
	addi	r9, r0, 0				# 23945
	cmpi	r9, 0
	beq		.b18977				# 24173
	b		.b18978
.b18921:
	addi	r61, r0, 0				# 3096
	cmpi	r61, 0
	beq		.b18923				# 23456
	b		.b18924
.b18919:
	addi	r61, r0, 0				# 23498
	cmpi	r61, 0
	beq		.b18923				# 23456
	b		.b18924
.b18916:
	addi	r9, r0, 0				# 23304
	cmpi	r9, 0
	beq		.b18977				# 24173
	b		.b18978
.b18912:
	addi	r9, r0, 0				# 24059
	cmpi	r9, 0
	beq		.b18979				# 24772
	b		.b18980
.b18908:
	lw		r9, -35(r3)				# 24896
	addi	r9, r9, 1				# 24896
	b		T.loop18827				# 24896
.b18906:
	addi	r9, r0, 0				# 24725
	cmpi	r9, 0
	beq		.b18908				# 24441
	b		.b18909
.b18904:
	lw		r9, -38(r3)				# 24216
	addi	r9, r9, 1				# 24216
	b		T.loop18838				# 24216
.b18902:
	lw		r9, -40(r3)				# 23786
	addi	r9, r9, 1				# 23786
	b		T.loop18842				# 23786
.b18900:
	addi	r61, r61, 1				# 23162
	lw		r9, -39(r3)				# 23025
	lwx		r9, r9, r61				# 23025
	cmpi	r9, -1
	beq		.b18856				# 23052
	b		.b18857
.b18856:
	addi	r9, r0, 1				# 23074
	cmpi	r9, 0
	beq		.b18902				# 23722
	b		.b18903
.b18898:
	addi	r9, r0, 1				# 22625
	cmpi	r9, 0
	beq		.b18900				# 23092
	b		.b18901
.b18896:
	addi	r9, r0, 1				# 775
	cmpi	r9, 0
	beq		.b18898				# 22625
	b		.b18899
.b18894:
	cmpi	r9, 0
	beq		.b18898				# 22625
	b		.b18899
.b18891:
	addi	r9, r0, 0				# 3186
	cmpi	r10, 0
	beq		.b18894				# 765
	b		.b18895
.b18888:
	addis	r62, r0, 16256
	ori		r62, r62, 0				# 22604
	fsub	r9, r9, r62				# 22604
	lw		r10, 6(r30)				# 3372
	addi	r62, r0, 0				# 22630
	fcmp	r62, r9
	ble		.b18891				# 3186
	b		.b18892
.b18885:
	cmpi	r57, 3
	beq		.b18888				# 22583
	b		.b18889
.b18872:
	lw		r62, 4(r30)				# 4293
	lw		r9, 0(r62)				# 2037
	fmul	r13, r9, r54				# 2037
	lw		r9, 1(r62)				# 2052
	fmul	r9, r9, r41				# 2037
	fadd	r13, r13, r9				# 2037
	lw		r9, 2(r62)				# 2067
	fmul	r9, r9, r10				# 2037
	fadd	r10, r13, r9				# 22411
	lw		r62, 6(r30)				# 3372
	addi	r9, r0, 0				# 22464
	fcmp	r9, r10
	ble		.b18875				# 3186
.b18876:
	addi	r9, r0, 1				# 3186
	cmpi	r62, 0
	beq		.b18878				# 765
.b18879:
	cmpi	r9, 0
	beq		.b18880				# 775
.b18881:
	addi	r9, r0, 0				# 775
	cmpi	r9, 0
	beq		.b18882				# 22459
.b18883:
	addi	r9, r0, 0				# 22459
	cmpi	r9, 0
	beq		.b18900				# 23092
	b		.b18901
.b18882:
	addi	r9, r0, 1				# 22459
	cmpi	r9, 0
	beq		.b18900				# 23092
	b		.b18901
.b18880:
	addi	r9, r0, 1				# 775
	cmpi	r9, 0
	beq		.b18882				# 22459
	b		.b18883
.b18878:
	cmpi	r9, 0
	beq		.b18882				# 22459
	b		.b18883
.b18875:
	addi	r9, r0, 0				# 3186
	cmpi	r62, 0
	beq		.b18878				# 765
	b		.b18879
.b18859:
	fabs	r62, r54				# 322
	lw		r13, 4(r30)				# 3734
	lw		r9, 0(r13)				# 22178
	fcmp	r9, r62
	ble		.b18862				# 3096
.b18863:
	fabs	r62, r41				# 322
	lw		r9, 1(r13)				# 22224
	fcmp	r9, r62
	ble		.b18864				# 3096
.b18865:
	fabs	r9, r10				# 322
	lw		r62, 2(r13)				# 22261
	fcmp	r62, r9
	ble		.b18866				# 3096
.b18867:
	addi	r9, r0, 1				# 3096
	cmpi	r9, 0
	beq		.b18868				# 22167
.b18869:
	lw		r9, 6(r30)				# 3372
	cmpi	r9, 0
	beq		.b18900				# 23092
	b		.b18901
.b18868:
	lw		r9, 6(r30)				# 3372
	cmpi	r9, 0
	beq		.b18870				# 22348
.b18871:
	addi	r9, r0, 0				# 22348
	cmpi	r9, 0
	beq		.b18900				# 23092
	b		.b18901
.b18870:
	addi	r9, r0, 1				# 22348
	cmpi	r9, 0
	beq		.b18900				# 23092
	b		.b18901
.b18866:
	addi	r9, r0, 0				# 3096
	cmpi	r9, 0
	beq		.b18868				# 22167
	b		.b18869
.b18864:
	addi	r9, r0, 0				# 22302
	cmpi	r9, 0
	beq		.b18868				# 22167
	b		.b18869
.b18862:
	addi	r9, r0, 0				# 22317
	cmpi	r9, 0
	beq		.b18868				# 22167
	b		.b18869
.b18850:
	lw		r9, -41(r3)				# 23864
	mul16i	r61, r9, 1				# 23864
	lli		r9, objects.2491				# 23852
	add		r9, r9, r61				# 23852
	lw		r9, 6(r9)				# 3372
	cmpi	r9, 0
	beq		.b18852				# 23849
.b18853:
	lw		r9, -40(r3)				# 23885
	addi	r9, r9, 1				# 23885
	b		T.loop18842				# 23885
.b18852:
	addi	r9, r0, 0				# 23945
	cmpi	r9, 0
	beq		.b18904				# 24173
	b		.b18905
.b18848:
	addi	r9, r0, 0				# 3096
	cmpi	r9, 0
	beq		.b18850				# 23456
	b		.b18851
.b18846:
	addi	r9, r0, 0				# 23498
	cmpi	r9, 0
	beq		.b18850				# 23456
	b		.b18851
.b18843:
	addi	r9, r0, 0				# 23304
	cmpi	r9, 0
	beq		.b18904				# 24173
	b		.b18905
.b18839:
	addi	r9, r0, 0				# 24059
	cmpi	r9, 0
	beq		.b18906				# 24655
	b		.b18907
.b18835:
	addi	r9, r0, 0				# 24739
	cmpi	r9, 0
	beq		.b18908				# 24441
	b		.b18909
.b18833:
	addi	r9, r0, 0				# 24751
	cmpi	r9, 0
	beq		.b18908				# 24441
	b		.b18909
.b18831:
	addi	r9, r0, 1				# 24483
	cmpi	r9, 0
	beq		.b18908				# 24441
	b		.b18909
.b18828:
	addi	r9, r0, 0				# 24424
	cmpi	r9, 0
	beq		.b18982				# 34076
	b		.b18981
.b18824:
	addi	r61, r0, 1				# 33698
	swx		r61, r9, r62				# 33698
	lw		r61, 4(r15)				# 7334
	lwx		r51, r61, r9				# 33761
	lli		r62, texture_color.2536				# 1353
	addi	r61, r62, 0				# 1353
	sw		r61, 0(r51)				# 1353
	addi	r61, r62, 1				# 1376
	sw		r61, 1(r51)				# 1353
	addi	r61, r62, 2				# 1399
	sw		r61, 2(r51)				# 33761
	addis	r61, r0, 15232
	ori		r61, r61, 0				# 33824
	lw		r62, -23(r3)				# 33799
	fmul	r62, r61, r62				# 33799
	lw		r61, 0(r51)				# 2540
	fmul	r61, r61, r62				# 2528
	sw		r61, 0(r51)				# 2528
	lw		r61, 1(r51)				# 2573
	fmul	r61, r61, r62				# 2561
	sw		r61, 1(r51)				# 2528
	lw		r61, 2(r51)				# 2606
	fmul	r61, r61, r62				# 2594
	sw		r61, 2(r51)				# 33761
	lw		r61, 7(r15)				# 7939
	lwx		r62, r61, r9				# 33889
	lli		r61, nvector.2533				# 1353
	addi	r9, r61, 0				# 1353
	sw		r9, 0(r62)				# 1353
	addi	r9, r61, 1				# 1376
	sw		r9, 1(r62)				# 1353
	addi	r9, r61, 2				# 1399
	sw		r9, 2(r62)				# 1399
	b		.b18823				# 1399
.b18821:
	addis	r9, r0, 16256
	ori		r9, r9, 0				# 1837
	fdiv	r9, r9, r62				# 1837
	b		.b18818				# 1837
.b18819:
	addis	r9, r0, 16256
	ori		r9, r9, 0				# 1801
	b		.b18818				# 1801
.b18816:
	lli		r9, nvector.2533				# 29409
	sw		r61, 0(r9)				# 29409
	sw		r51, 1(r9)				# 29409
	sw		r25, 2(r9)				# 29455
	b		.b18815				# 29455
.b18813:
	lw		r62, 4(r1)				# 3734
	lw		r9, 0(r62)				# 28996
	fneg	r9, r9				# 28981
	lli		r61, nvector.2533				# 28981
	sw		r9, 0(r61)				# 28981
	lw		r9, 1(r62)				# 29034
	fneg	r9, r9				# 29019
	sw		r9, 1(r61)				# 28981
	lw		r9, 2(r62)				# 29071
	fneg	r9, r9				# 29056
	sw		r9, 2(r61)				# 29056
	b		.b18805				# 29056
.b18806:
	lli		r9, intsec_rectside.2521				# 28828
	addi	r9, r9, 0				# 28828
	lli		r62, nvector.2533				# 1232
	addi	r15, r0, 0				# 1232
	sw		r15, 0(r62)				# 1232
	sw		r15, 1(r62)				# 1232
	sw		r15, 2(r62)				# 28868
	addi	r61, r9, -1				# 28888
	lw		r9, -3(r3)				# 28918
	lwx		r9, r9, r61				# 28918
	fcmp	r9, r15
	beq		.b18809				# 3126
.b18810:
	fcmp	r9, r15
	ble		.b18811				# 3156
.b18812:
	addis	r9, r0, 16256
	ori		r9, r9, 0				# 856
	fneg	r9, r9				# 28888
	swx		r9, r61, r62				# 28888
	b		.b18805				# 28888
.b18811:
	addis	r9, r0, 49024
	ori		r9, r9, 0				# 868
	fneg	r9, r9				# 28888
	swx		r9, r61, r62				# 28888
	b		.b18805				# 28888
.b18809:
	addi	r9, r0, 0				# 828
	fneg	r9, r9				# 28888
	swx		r9, r61, r62				# 28888
	b		.b18805				# 28888
.b18799:
	lw		r61, -15(r3)				# 34715
	lw		r62, -14(r3)				# 34715
	addi	r9, r0, -1				# 34715
	swx		r9, r62, r61				# 34715
	cmpi	r62, 0
	beq		.b18647				# 34748
.b18802:
	lw		r15, -3(r3)				# 1949
	lw		r9, 0(r15)				# 1949
	lli		r10, light.2500				# 1949
	addi	r61, r10, 0				# 1949
	fmul	r9, r9, r61				# 1949
	lw		r61, 1(r15)				# 1967
	addi	r62, r10, 1				# 1967
	fmul	r61, r61, r62				# 1949
	fadd	r62, r9, r61				# 1949
	lw		r61, 2(r15)				# 1985
	addi	r9, r10, 2				# 1985
	fmul	r9, r61, r9				# 1949
	fadd	r9, r62, r9				# 34778
	fneg	r9, r9				# 34769
	addi	r61, r0, 0				# 3156
	fcmp	r9, r61
	ble		.b18647				# 3156
.b18804:
	fmul	r61, r9, r9				# 34848
	fmul	r9, r61, r9				# 34848
	lw		r61, -13(r3)				# 34848
	fmul	r9, r9, r61				# 34848
	lli		r61, beam.2503				# 34848
	addi	r61, r61, 0				# 34848
	fmul	r62, r9, r61				# 34838
	lli		r61, rgb.2542				# 34902
	addi	r9, r61, 0				# 34902
	fadd	r9, r9, r62				# 34891
	sw		r9, 0(r61)				# 34891
	addi	r9, r61, 1				# 34933
	fadd	r9, r9, r62				# 34922
	sw		r9, 1(r61)				# 34891
	addi	r9, r61, 2				# 34964
	fadd	r9, r9, r62				# 34953
	sw		r9, 2(r61)				# 34953
	b		.b18647				# 34953
.b18797:
	addi	r9, r0, 0				# 3096
	cmpi	r9, 0
	beq		.b18799				# 33052
	b		.b18800
.b18795:
	addi	r9, r0, 0				# 26809
	cmpi	r9, 0
	beq		.b18799				# 33052
	b		.b18800
.b18645:
	addis	r51, r0, 16256
	ori		r51, r51, 0				# 1801
	b		.b18644				# 1801
	# create_pixelline.3081
create_pixelline.3081:
.Entry@create_pixelline.3081:
	addi	r13, r0, 0				# 42912
	addi	r51, r0, 0				# 42912
	lli		r9, image_size.2545				# 42912
	addi	r25, r9, 0				# 42912
	mv		r28, r4
	addi	r4, r4, 3				# 42355
	sw		r51, 0(r28)				# 42355
	sw		r51, 1(r28)				# 42355
	sw		r51, 2(r28)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r51, 0(r9)				# 42117
	sw		r51, 1(r9)				# 42117
	sw		r51, 2(r9)				# 42117
	mv		r62, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r62)				# 42151
	sw		r9, 1(r62)				# 42151
	sw		r9, 2(r62)				# 42151
	sw		r9, 3(r62)				# 42151
	sw		r9, 4(r62)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r51, 0(r9)				# 42186
	sw		r51, 1(r9)				# 42186
	sw		r51, 2(r9)				# 42186
	sw		r9, 1(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r51, 0(r9)				# 42219
	sw		r51, 1(r9)				# 42219
	sw		r51, 2(r9)				# 42219
	sw		r9, 2(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r51, 0(r9)				# 42252
	sw		r51, 1(r9)				# 42252
	sw		r51, 2(r9)				# 42252
	sw		r9, 3(r62)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r51, 0(r9)				# 42285
	sw		r51, 1(r9)				# 42285
	sw		r51, 2(r9)				# 42285
	sw		r9, 4(r62)				# 42173
	mv		r15, r4
	addi	r4, r4, 5				# 42435
	sw		r13, 0(r15)				# 42435
	sw		r13, 1(r15)				# 42435
	sw		r13, 2(r15)				# 42435
	sw		r13, 3(r15)				# 42435
	sw		r13, 4(r15)				# 42435
	mv		r30, r4
	addi	r4, r4, 5				# 42468
	sw		r13, 0(r30)				# 42468
	sw		r13, 1(r30)				# 42468
	sw		r13, 2(r30)				# 42468
	sw		r13, 3(r30)				# 42468
	sw		r13, 4(r30)				# 42468
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r51, 0(r9)				# 42117
	sw		r51, 1(r9)				# 42117
	sw		r51, 2(r9)				# 42117
	mv		r10, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r10)				# 42151
	sw		r9, 1(r10)				# 42151
	sw		r9, 2(r10)				# 42151
	sw		r9, 3(r10)				# 42151
	sw		r9, 4(r10)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r51, 0(r9)				# 42186
	sw		r51, 1(r9)				# 42186
	sw		r51, 2(r9)				# 42186
	sw		r9, 1(r10)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r51, 0(r9)				# 42219
	sw		r51, 1(r9)				# 42219
	sw		r51, 2(r9)				# 42219
	sw		r9, 2(r10)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r51, 0(r9)				# 42252
	sw		r51, 1(r9)				# 42252
	sw		r51, 2(r9)				# 42252
	sw		r9, 3(r10)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r51, 0(r9)				# 42285
	sw		r51, 1(r9)				# 42285
	sw		r51, 2(r9)				# 42285
	sw		r9, 4(r10)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r51, 0(r9)				# 42117
	sw		r51, 1(r9)				# 42117
	sw		r51, 2(r9)				# 42117
	mv		r61, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r61)				# 42151
	sw		r9, 1(r61)				# 42151
	sw		r9, 2(r61)				# 42151
	sw		r9, 3(r61)				# 42151
	sw		r9, 4(r61)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r51, 0(r9)				# 42186
	sw		r51, 1(r9)				# 42186
	sw		r51, 2(r9)				# 42186
	sw		r9, 1(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r51, 0(r9)				# 42219
	sw		r51, 1(r9)				# 42219
	sw		r51, 2(r9)				# 42219
	sw		r9, 2(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r51, 0(r9)				# 42252
	sw		r51, 1(r9)				# 42252
	sw		r51, 2(r9)				# 42252
	sw		r9, 3(r61)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r51, 0(r9)				# 42285
	sw		r51, 1(r9)				# 42285
	sw		r51, 2(r9)				# 42285
	sw		r9, 4(r61)				# 42173
	mv		r54, r4
	addi	r4, r4, 1				# 42586
	sw		r13, 0(r54)				# 42586
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r51, 0(r9)				# 42117
	sw		r51, 1(r9)				# 42117
	sw		r51, 2(r9)				# 42117
	mv		r7, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r7)				# 42151
	sw		r9, 1(r7)				# 42151
	sw		r9, 2(r7)				# 42151
	sw		r9, 3(r7)				# 42151
	sw		r9, 4(r7)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r51, 0(r9)				# 42186
	sw		r51, 1(r9)				# 42186
	sw		r51, 2(r9)				# 42186
	sw		r9, 1(r7)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r51, 0(r9)				# 42219
	sw		r51, 1(r9)				# 42219
	sw		r51, 2(r9)				# 42219
	sw		r9, 2(r7)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r51, 0(r9)				# 42252
	sw		r51, 1(r9)				# 42252
	sw		r51, 2(r9)				# 42252
	sw		r9, 3(r7)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r51, 0(r9)				# 42285
	sw		r51, 1(r9)				# 42285
	sw		r51, 2(r9)				# 42285
	sw		r9, 4(r7)				# 42173
	mv		r9, r4
	addi	r4, r4, 8				# 42651
	sw		r28, 0(r9)				# 42651
	sw		r62, 1(r9)				# 42651
	sw		r15, 2(r9)				# 42651
	sw		r30, 3(r9)				# 42651
	sw		r10, 4(r9)				# 42651
	sw		r61, 5(r9)				# 42651
	sw		r54, 6(r9)				# 42651
	sw		r7, 7(r9)				# 42651
	mv		r2, r4
	add		r4, r4, r25				# 42912
	addi	r28, r25, -1				# 42912
	addi	r61, r0, 0				# 42912
	cmp		r61, r28
	ble		.b19196				# 42912
.b19194:
	addi	r54, r25, -2				# 42960
	cmpi	r54, 0
	bge		.b19200				# 42764
.b19198:
	blr				# 42861
.b19200:
	mv		r10, r4
	addi	r4, r4, 3				# 42355
	sw		r51, 0(r10)				# 42355
	sw		r51, 1(r10)				# 42355
	sw		r51, 2(r10)				# 42355
	mv		r9, r4
	addi	r4, r4, 3				# 42117
	sw		r51, 0(r9)				# 42117
	sw		r51, 1(r9)				# 42117
	sw		r51, 2(r9)				# 42117
	mv		r25, r4
	addi	r4, r4, 5				# 42151
	sw		r9, 0(r25)				# 42151
	sw		r9, 1(r25)				# 42151
	sw		r9, 2(r25)				# 42151
	sw		r9, 3(r25)				# 42151
	sw		r9, 4(r25)				# 42151
	mv		r9, r4
	addi	r4, r4, 3				# 42186
	sw		r51, 0(r9)				# 42186
	sw		r51, 1(r9)				# 42186
	sw		r51, 2(r9)				# 42186
	sw		r9, 1(r25)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42219
	sw		r51, 0(r9)				# 42219
	sw		r51, 1(r9)				# 42219
	sw		r51, 2(r9)				# 42219
	sw		r9, 2(r25)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42252
	sw		r51, 0(r9)				# 42252
	sw		r51, 1(r9)				# 42252
	sw		r51, 2(r9)				# 42252
	sw		r9, 3(r25)				# 42173
	mv		r9, r4
	addi	r4, r4, 3				# 42285
	sw		r51, 0(r9)				# 42285
	sw		r51, 1(r9)				# 42285
	sw		r51, 2(r9)				# 42285
	sw		r9, 4(r25)				# 42173
	mv		r9, r4
	addi	r4, r4, 5				# 42435
	sw		r13, 0(r9)				# 42435
	sw		r13, 1(r9)				# 42435
	sw		r13, 2(r9)				# 42435
	sw		r13, 3(r9)				# 42435
	sw		r13, 4(r9)				# 42435
	mv		r62, r4
	addi	r4, r4, 5				# 42468
	sw		r13, 0(r62)				# 42468
	sw		r13, 1(r62)				# 42468
	sw		r13, 2(r62)				# 42468
	sw		r13, 3(r62)				# 42468
	sw		r13, 4(r62)				# 42468
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r51, 0(r61)				# 42117
	sw		r51, 1(r61)				# 42117
	sw		r51, 2(r61)				# 42117
	mv		r28, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r28)				# 42151
	sw		r61, 1(r28)				# 42151
	sw		r61, 2(r28)				# 42151
	sw		r61, 3(r28)				# 42151
	sw		r61, 4(r28)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r51, 0(r61)				# 42186
	sw		r51, 1(r61)				# 42186
	sw		r51, 2(r61)				# 42186
	sw		r61, 1(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r51, 0(r61)				# 42219
	sw		r51, 1(r61)				# 42219
	sw		r51, 2(r61)				# 42219
	sw		r61, 2(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r51, 0(r61)				# 42252
	sw		r51, 1(r61)				# 42252
	sw		r51, 2(r61)				# 42252
	sw		r61, 3(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r51, 0(r61)				# 42285
	sw		r51, 1(r61)				# 42285
	sw		r51, 2(r61)				# 42285
	sw		r61, 4(r28)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r51, 0(r61)				# 42117
	sw		r51, 1(r61)				# 42117
	sw		r51, 2(r61)				# 42117
	mv		r7, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r7)				# 42151
	sw		r61, 1(r7)				# 42151
	sw		r61, 2(r7)				# 42151
	sw		r61, 3(r7)				# 42151
	sw		r61, 4(r7)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r51, 0(r61)				# 42186
	sw		r51, 1(r61)				# 42186
	sw		r51, 2(r61)				# 42186
	sw		r61, 1(r7)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r51, 0(r61)				# 42219
	sw		r51, 1(r61)				# 42219
	sw		r51, 2(r61)				# 42219
	sw		r61, 2(r7)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r51, 0(r61)				# 42252
	sw		r51, 1(r61)				# 42252
	sw		r51, 2(r61)				# 42252
	sw		r61, 3(r7)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r51, 0(r61)				# 42285
	sw		r51, 1(r61)				# 42285
	sw		r51, 2(r61)				# 42285
	sw		r61, 4(r7)				# 42173
	mv		r15, r4
	addi	r4, r4, 1				# 42586
	sw		r13, 0(r15)				# 42586
	mv		r61, r4
	addi	r4, r4, 3				# 42117
	sw		r51, 0(r61)				# 42117
	sw		r51, 1(r61)				# 42117
	sw		r51, 2(r61)				# 42117
	mv		r30, r4
	addi	r4, r4, 5				# 42151
	sw		r61, 0(r30)				# 42151
	sw		r61, 1(r30)				# 42151
	sw		r61, 2(r30)				# 42151
	sw		r61, 3(r30)				# 42151
	sw		r61, 4(r30)				# 42151
	mv		r61, r4
	addi	r4, r4, 3				# 42186
	sw		r51, 0(r61)				# 42186
	sw		r51, 1(r61)				# 42186
	sw		r51, 2(r61)				# 42186
	sw		r61, 1(r30)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42219
	sw		r51, 0(r61)				# 42219
	sw		r51, 1(r61)				# 42219
	sw		r51, 2(r61)				# 42219
	sw		r61, 2(r30)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42252
	sw		r51, 0(r61)				# 42252
	sw		r51, 1(r61)				# 42252
	sw		r51, 2(r61)				# 42252
	sw		r61, 3(r30)				# 42173
	mv		r61, r4
	addi	r4, r4, 3				# 42285
	sw		r51, 0(r61)				# 42285
	sw		r51, 1(r61)				# 42285
	sw		r51, 2(r61)				# 42285
	sw		r61, 4(r30)				# 42173
	mv		r61, r4
	addi	r4, r4, 8				# 42651
	sw		r10, 0(r61)				# 42651
	sw		r25, 1(r61)				# 42651
	sw		r9, 2(r61)				# 42651
	sw		r62, 3(r61)				# 42651
	sw		r28, 4(r61)				# 42651
	sw		r7, 5(r61)				# 42651
	sw		r15, 6(r61)				# 42651
	sw		r30, 7(r61)				# 42651
	swx		r61, r54, r2				# 42785
	addi	r54, r54, -1				# 42817
	cmpi	r54, 0
	bge		.b19200				# 42764
	b		.b19198
.b19196:
	swx		r9, r61, r2				# 42912
	addi	r61, r61, 1				# 42912
	cmp		r61, r28
	ble		.b19196				# 42912
	b		.b19194
	# main program start
_min_caml_start:
	addi	r15, r0, 1				# 154
	addi	r54, r0, 0				# 154
	addi	r62, r0, 0				# 279
	mv		r61, r4
	addi	r4, r4, 0				# 267
	lli		r9, dummy.2483				# 267
	sw		r61, 0(r9)				# 267
	mv		r9, r4
	addi	r4, r4, 11				# 315
	sw		r54, 0(r9)				# 315
	sw		r54, 1(r9)				# 315
	sw		r54, 2(r9)				# 315
	sw		r54, 3(r9)				# 315
	sw		r61, 4(r9)				# 315
	sw		r61, 5(r9)				# 315
	sw		r54, 6(r9)				# 315
	sw		r61, 7(r9)				# 315
	sw		r61, 8(r9)				# 315
	sw		r61, 9(r9)				# 315
	sw		r61, 10(r9)				# 315
	lli		r61, Tt267.2490				# 301
	sw		r9, 0(r61)				# 301
	lli		r9, and_net.2509				# 703
	addi	r61, r9, 0				# 818
	lli		r9, Ta283.2513				# 818
	sw		r61, 0(r9)				# 818
	mv		r9, r4
	addi	r4, r4, 3				# 1196
	sw		r62, 0(r9)				# 1196
	sw		r62, 1(r9)				# 1196
	sw		r62, 2(r9)				# 1196
	lli		r61, intersection_point.2527				# 1171
	sw		r9, 0(r61)				# 1171
	addi	r51, r0, 2				# 1621
	lli		r10, image_size.2545				# 1604
	lli		r7, image_center.2548				# 1688
	lli		r13, scan_pitch.2551				# 1763
	mv		r9, r4
	addi	r4, r4, 3				# 1863
	sw		r62, 0(r9)				# 1863
	sw		r62, 1(r9)				# 1863
	sw		r62, 2(r9)				# 1863
	lli		r61, startp.2554				# 1850
	sw		r9, 0(r61)				# 1850
	mv		r9, r4
	addi	r4, r4, 3				# 2219
	sw		r62, 0(r9)				# 2219
	sw		r62, 1(r9)				# 2219
	sw		r62, 2(r9)				# 2219
	lli		r61, ptrace_dirvec.2569				# 2198
	sw		r9, 0(r61)				# 2198
	mv		r28, r4
	addi	r4, r4, 0				# 2318
	lli		r9, dummyf.2572				# 2318
	sw		r28, 0(r9)				# 2318
	mv		r61, r4
	addi	r4, r4, 0				# 2353
	lli		r9, dummyff.2574				# 2353
	sw		r61, 0(r9)				# 2353
	mv		r9, r4
	addi	r4, r4, 2				# 2420
	sw		r28, 0(r9)				# 2420
	sw		r61, 1(r9)				# 2420
	lli		r61, Tt326.2576				# 2407
	sw		r9, 0(r61)				# 2407
	mv		r30, r4
	addi	r4, r4, 0				# 2542
	lli		r9, dummyf2.2582				# 2542
	sw		r30, 0(r9)				# 2542
	mv		r61, r4
	addi	r4, r4, 3				# 2587
	sw		r62, 0(r61)				# 2587
	sw		r62, 1(r61)				# 2587
	sw		r62, 2(r61)				# 2587
	sw		r61, 0(r3)				# 2578
	lli		r9, v3.2585				# 2578
	sw		r61, 0(r9)				# 2578
	mv		r28, r4
	addi	r4, r4, 60				# 2622
	addi	r9, r0, 0				# 2622
	cmpi	r9, 59
	ble		.b19204				# 2622
.b19202:
	lli		r9, consts.2587				# 2609
	sw		r28, 0(r9)				# 2609
	mv		r9, r4
	addi	r4, r4, 2				# 2649
	sw		r61, 0(r9)				# 2649
	sw		r28, 1(r9)				# 2649
	sw		r9, -1(r3)				# 2521
	lli		r61, light_dirvec.2588				# 2521
	sw		r9, 0(r61)				# 2521
	mv		r61, r4
	addi	r4, r4, 0				# 2717
	lli		r9, dummyf3.2591				# 2717
	sw		r61, 0(r9)				# 2717
	mv		r28, r4
	addi	r4, r4, 0				# 2753
	lli		r9, dummyff3.2593				# 2753
	sw		r28, 0(r9)				# 2753
	mv		r9, r4
	addi	r4, r4, 2				# 2808
	sw		r61, 0(r9)				# 2808
	sw		r28, 1(r9)				# 2808
	lli		r61, dummydv.2594				# 2794
	sw		r9, 0(r61)				# 2794
	mv		r61, r4
	addi	r4, r4, 3				# 2848
	sw		r54, 0(r61)				# 2848
	sw		r9, 1(r61)				# 2848
	sw		r62, 2(r61)				# 2848
	lli		r9, Tt339.2598				# 2833
	sw		r61, 0(r9)				# 2833
	sw		r51, 0(r10)				# 46875
	sw		r51, 1(r10)				# 46875
	sw		r15, 0(r7)				# 46875
	sw		r15, 1(r7)				# 46875
	addis	r61, r0, 17152
	ori		r61, r61, 0				# 47013
	itof	r9, r51				# 639
	fdiv	r9, r61, r9				# 46995
	sw		r9, 0(r13)				# 46875
	mflr	r63
	sw		r63, -2(r3)
	addi	r3, r3, -3
	bl		create_pixelline.3081
	addi	r3, r3, 3
	lw		r63, -2(r3)
	mtlr	r63				# 47044
	sw		r2, -2(r3)				# 47044
	mflr	r63
	sw		r63, -3(r3)
	addi	r3, r3, -4
	bl		create_pixelline.3081
	addi	r3, r3, 4
	lw		r63, -3(r3)
	mtlr	r63				# 47079
	sw		r2, -3(r3)				# 47079
	mflr	r63
	sw		r63, -4(r3)
	addi	r3, r3, -5
	bl		create_pixelline.3081
	addi	r3, r3, 5
	lw		r63, -4(r3)
	mtlr	r63				# 47114
	sw		r2, -4(r3)				# 47114
	in		r57				# 1425
	lli		r9, screen.2494				# 8471
	sw		r57, 0(r9)				# 8471
	in		r61				# 1425
	sw		r61, 1(r9)				# 8471
	in		r13				# 1425
	sw		r13, 2(r9)				# 8471
	in		r9				# 1425
	addis	r25, r0, 15502
	ori		r25, r25, 64053				# 8414
	fmul	r9, r9, r25				# 8565
	fcos	r30, r9				# 133
	fsin	r15, r9				# 40
	in		r9				# 1425
	fmul	r9, r9, r25				# 8649
	fcos	r28, r9				# 133
	fsin	r7, r9				# 40
	fmul	r9, r30, r7				# 8753
	addis	r62, r0, 17224
	ori		r62, r62, 0				# 8753
	fmul	r10, r9, r62				# 8734
	lli		r51, screenz_dir.2566				# 8734
	sw		r10, 0(r51)				# 8734
	addis	r9, r0, 49992
	ori		r9, r9, 0				# 8801
	fmul	r54, r15, r9				# 8782
	sw		r54, 1(r51)				# 8734
	fmul	r9, r30, r28				# 8840
	fmul	r62, r9, r62				# 8821
	sw		r62, 2(r51)				# 8734
	lli		r9, screenx_dir.2560				# 8734
	sw		r28, 0(r9)				# 8734
	addi	r41, r0, 0				# 8734
	sw		r41, 1(r9)				# 8734
	fneg	r51, r7				# 8925
	sw		r51, 2(r9)				# 8734
	fneg	r51, r15				# 8979
	fmul	r9, r51, r7				# 8960
	lli		r15, screeny_dir.2563				# 8734
	sw		r9, 0(r15)				# 8734
	fneg	r9, r30				# 9004
	sw		r9, 1(r15)				# 8734
	fmul	r9, r51, r28				# 9038
	sw		r9, 2(r15)				# 8734
	fsub	r28, r57, r10				# 9083
	lli		r9, viewpoint.2497				# 8734
	sw		r28, 0(r9)				# 8734
	fsub	r61, r61, r54				# 9133
	sw		r61, 1(r9)				# 8734
	fsub	r61, r13, r62				# 9183
	sw		r61, 2(r9)				# 13259
	in		r9				# 1498
	in		r9				# 1425
	fmul	r9, r9, r25				# 9289
	fsin	r61, r9				# 40
	fneg	r61, r61				# 9345
	sw		r61, -5(r3)				# 9345
	lli		r62, light.2500				# 9345
	sw		r61, 1(r62)				# 9345
	in		r61				# 1425
	fmul	r28, r61, r25				# 9370
	fcos	r61, r9				# 133
	fsin	r9, r28				# 40
	fmul	r9, r61, r9				# 9448
	sw		r9, -6(r3)				# 9448
	sw		r9, 0(r62)				# 9448
	fcos	r9, r28				# 133
	fmul	r9, r61, r9				# 9497
	sw		r9, -7(r3)				# 9497
	sw		r9, 2(r62)				# 9497
	in		r9				# 1425
	lli		r61, beam.2503				# 13259
	sw		r9, 0(r61)				# 13259
	addi	r28, r0, 0				# 12512
	cmpi	r28, 60
	bge		.b19206				# 12512
.b19209:
	in		r46				# 1498
	cmpi	r46, -1
	beq		.b19210				# 10718
.b19211:
	in		r26				# 1498
	in		r30				# 1498
	in		r37				# 1498
	mv		r15, r4
	addi	r4, r4, 3				# 10866
	sw		r41, 0(r15)				# 10866
	sw		r41, 1(r15)				# 10866
	sw		r41, 2(r15)				# 10866
	in		r9				# 1425
	sw		r9, 0(r15)				# 10892
	in		r9				# 1425
	sw		r9, 1(r15)				# 10892
	in		r9				# 1425
	sw		r9, 2(r15)				# 10892
	mv		r13, r4
	addi	r4, r4, 3				# 11007
	sw		r41, 0(r13)				# 11007
	sw		r41, 1(r13)				# 11007
	sw		r41, 2(r13)				# 11007
	in		r9				# 1425
	sw		r9, 0(r13)				# 11033
	in		r9				# 1425
	sw		r9, 1(r13)				# 11033
	in		r9				# 1425
	sw		r9, 2(r13)				# 11033
	in		r9				# 1425
	fcmp	r41, r9
	ble		.b19213				# 3186
.b19214:
	addi	r54, r0, 1				# 3186
.b19212:
	mv		r9, r4
	addi	r4, r4, 2				# 11203
	sw		r41, 0(r9)				# 11203
	sw		r41, 1(r9)				# 11203
	in		r61				# 1425
	sw		r61, 0(r9)				# 11229
	in		r61				# 1425
	sw		r61, 1(r9)				# 11229
	mv		r51, r4
	addi	r4, r4, 3				# 11346
	sw		r41, 0(r51)				# 11346
	sw		r41, 1(r51)				# 11346
	sw		r41, 2(r51)				# 11346
	in		r61				# 1425
	sw		r61, 0(r51)				# 11372
	in		r61				# 1425
	sw		r61, 1(r51)				# 11372
	in		r61				# 1425
	sw		r61, 2(r51)				# 11372
	mv		r10, r4
	addi	r4, r4, 3				# 11499
	sw		r41, 0(r10)				# 11499
	sw		r41, 1(r10)				# 11499
	sw		r41, 2(r10)				# 11499
	cmpi	r37, 0
	beq		.b19215				# 11525
.b19217:
	in		r61				# 1425
	fmul	r61, r61, r25				# 11551
	sw		r61, 0(r10)				# 11551
	in		r61				# 1425
	fmul	r61, r61, r25				# 11590
	sw		r61, 1(r10)				# 11551
	in		r61				# 1425
	fmul	r61, r61, r25				# 11629
	sw		r61, 2(r10)				# 11629
	cmpi	r26, 2
	beq		.b19219				# 11706
.b19220:
	mv		r7, r54				# 11733
.b19218:
	addi	r61, r0, 4				# 11762
	mv		r62, r4
	addi	r4, r4, 4				# 11762
	addi	r57, r61, -1				# 11762
	addi	r61, r0, 0				# 11762
	cmp		r61, r57
	ble		.b19223				# 11762
.b19221:
	mv		r61, r4
	addi	r4, r4, 11				# 11799
	sw		r46, 0(r61)				# 11799
	sw		r26, 1(r61)				# 11799
	sw		r30, 2(r61)				# 11799
	sw		r37, 3(r61)				# 11799
	sw		r15, 4(r61)				# 11799
	sw		r13, 5(r61)				# 11799
	sw		r7, 6(r61)				# 11799
	sw		r9, 7(r61)				# 11799
	sw		r51, 8(r61)				# 11799
	sw		r10, 9(r61)				# 11799
	sw		r62, 10(r61)				# 11799
	lli		r9, objects.2491				# 12004
	swx		r61, r28, r9				# 12004
	cmpi	r26, 3
	beq		.b19226				# 12031
.b19227:
	cmpi	r26, 2
	beq		.b19252				# 12300
.b19225:
	cmpi	r37, 0
	beq		.b19262				# 12371
.b19264:
	lw		r9, 0(r10)				# 9611
	fcos	r57, r9				# 133
	lw		r9, 0(r10)				# 9640
	fsin	r26, r9				# 40
	lw		r9, 1(r10)				# 9669
	fcos	r13, r9				# 133
	lw		r9, 1(r10)				# 9698
	fsin	r61, r9				# 40
	lw		r9, 2(r10)				# 9727
	fcos	r37, r9				# 133
	lw		r9, 2(r10)				# 9756
	fsin	r7, r9				# 40
	fmul	r39, r13, r37				# 9774
	fmul	r62, r26, r61				# 9814
	fmul	r51, r62, r37				# 9814
	fmul	r9, r57, r7				# 9814
	fsub	r46, r51, r9				# 9804
	fmul	r9, r57, r61				# 9871
	fmul	r54, r9, r37				# 9871
	fmul	r51, r26, r7				# 9871
	fadd	r23, r54, r51				# 9861
	fmul	r54, r13, r7				# 9919
	fmul	r62, r62, r7				# 9959
	fmul	r51, r57, r37				# 9959
	fadd	r30, r62, r51				# 9949
	fmul	r62, r9, r7				# 10016
	fmul	r9, r26, r37				# 10016
	fsub	r51, r62, r9				# 10006
	fneg	r61, r61				# 10064
	fmul	r7, r26, r13				# 10090
	fmul	r26, r57, r13				# 10120
	lw		r37, 0(r15)				# 10151
	lw		r13, 1(r15)				# 10173
	lw		r57, 2(r15)				# 10195
	fmul	r9, r39, r39				# 10229
	fmul	r9, r37, r9				# 10229
	fmul	r62, r54, r54				# 10247
	fmul	r62, r13, r62				# 10229
	fadd	r9, r9, r62				# 10229
	fmul	r62, r61, r61				# 10265
	fmul	r62, r57, r62				# 10229
	fadd	r9, r9, r62				# 10218
	sw		r9, 0(r15)				# 10218
	fmul	r9, r46, r46				# 10294
	fmul	r9, r37, r9				# 10294
	fmul	r62, r30, r30				# 10312
	fmul	r62, r13, r62				# 10294
	fadd	r62, r9, r62				# 10294
	fmul	r9, r7, r7				# 10330
	fmul	r9, r57, r9				# 10294
	fadd	r9, r62, r9				# 10283
	sw		r9, 1(r15)				# 10218
	fmul	r9, r23, r23				# 10359
	fmul	r62, r37, r9				# 10359
	fmul	r9, r51, r51				# 10377
	fmul	r9, r13, r9				# 10359
	fadd	r62, r62, r9				# 10359
	fmul	r9, r26, r26				# 10395
	fmul	r9, r57, r9				# 10359
	fadd	r9, r62, r9				# 10348
	sw		r9, 2(r15)				# 10218
	addis	r62, r0, 16384
	ori		r62, r62, 0				# 10425
	fmul	r9, r37, r46				# 10433
	fmul	r9, r9, r23				# 10433
	fmul	r15, r13, r30				# 10453
	fmul	r15, r15, r51				# 10433
	fadd	r15, r9, r15				# 10433
	fmul	r9, r57, r7				# 10473
	fmul	r9, r9, r26				# 10433
	fadd	r9, r15, r9				# 10425
	fmul	r9, r62, r9				# 10414
	sw		r9, 0(r10)				# 10218
	fmul	r37, r37, r39				# 10513
	fmul	r23, r37, r23				# 10513
	fmul	r15, r13, r54				# 10533
	fmul	r9, r15, r51				# 10513
	fadd	r9, r23, r9				# 10513
	fmul	r61, r57, r61				# 10553
	fmul	r51, r61, r26				# 10513
	fadd	r9, r9, r51				# 10505
	fmul	r9, r62, r9				# 10494
	sw		r9, 1(r10)				# 10218
	fmul	r51, r37, r46				# 10593
	fmul	r9, r15, r30				# 10593
	fadd	r9, r51, r9				# 10593
	fmul	r61, r61, r7				# 10593
	fadd	r9, r9, r61				# 10585
	fmul	r9, r62, r9				# 10574
	sw		r9, 2(r10)				# 10574
	addi	r28, r28, 1				# 12563
	cmpi	r28, 60
	bge		.b19206				# 12512
	b		.b19209
.b19206:
	addi	r9, r0, 0				# 13110
T.loop19266:
	sw		r9, -8(r3)				# 13110
	addi	r1, r0, 0				# 13100
	mflr	r63
	sw		r63, -9(r3)
	addi	r3, r3, -10
	bl		read_net_item.2793
	addi	r3, r3, 10
	lw		r63, -9(r3)
	mtlr	r63				# 13100
	lw		r9, 0(r2)				# 13131
	cmpi	r9, -1
	beq		.b19265				# 13131
.b19268:
	lli		r61, and_net.2509				# 13168
	lw		r9, -8(r3)				# 13168
	swx		r2, r9, r61				# 13168
	addi	r9, r9, 1				# 13192
	b		T.loop19266				# 13192
.b19265:
	addi	r1, r0, 0				# 13349
	mflr	r63
	sw		r63, -9(r3)
	addi	r3, r3, -10
	bl		read_or_network.2795
	addi	r3, r3, 10
	lw		r63, -9(r3)
	mtlr	r63				# 13349
	lli		r9, or_net.2515				# 47149
	sw		r2, 0(r9)				# 47149
	addi	r9, r0, 80				# 39091
	out		r9				# 946
	addi	r9, r0, 51				# 39120
	out		r9				# 946
	addi	r15, r0, 10				# 39179
	out		r15				# 946
	addi	r9, r0, 48				# 1278
	out		r9				# 946
	addi	r61, r0, 2				# 1146
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmpi	r28, 2
	ble		.b19271				# 1011
.b19272:
	addi	r9, r9, -1				# 1074
	mul16i	r28, r9, 10				# 990
	cmpi	r28, 2
	ble		.b19271				# 1011
	b		.b19272
.b19271:
	addi	r9, r9, 48				# 1033
	out		r9				# 946
	sub		r9, r61, r28				# 1058
.b19269:
	addi	r61, r0, 48				# 1359
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	addi	r62, r0, 32				# 39228
	out		r62				# 946
	out		r61				# 946
	addi	r28, r0, 2				# 1146
	addi	r9, r0, 9				# 999
	mul16i	r61, r9, 10				# 990
	cmpi	r61, 2
	ble		.b19275				# 1011
.b19276:
	addi	r9, r9, -1				# 1074
	mul16i	r61, r9, 10				# 990
	cmpi	r61, 2
	ble		.b19275				# 1011
	b		.b19276
.b19275:
	addi	r9, r9, 48				# 1033
	out		r9				# 946
	sub		r9, r28, r61				# 1058
.b19273:
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	out		r62				# 946
	addi	r9, r0, 50				# 946
	out		r9				# 946
	addi	r28, r0, 55				# 1146
	addi	r9, r0, 9				# 999
	mul16i	r61, r9, 10				# 990
	cmpi	r61, 55
	ble		.b19279				# 1011
.b19280:
	addi	r9, r9, -1				# 1074
	mul16i	r61, r9, 10				# 990
	cmpi	r61, 55
	ble		.b19279				# 1011
	b		.b19280
.b19279:
	addi	r9, r9, 48				# 1033
	out		r9				# 946
	sub		r9, r28, r61				# 1058
.b19277:
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	out		r15				# 946
	addi	r28, r0, 4				# 44862
	cmpi	r28, 0
	bge		.b19283				# 44862
.b19281:
	addi	r54, r0, 9				# 44363
	addi	r61, r0, 0				# 44363
	addi	r13, r0, 0				# 44363
	cmpi	r54, 0
	bge		.b19303				# 44363
.b19301:
	addi	r9, r0, 4				# 45247
	sw		r9, -9(r3)				# 45247
	cmpi	r9, 0
	bge		.b19325				# 45247
.b19323:
	lw		r9, 0(r3)				# 1353
	lw		r61, -6(r3)				# 1353
	sw		r61, 0(r9)				# 1353
	lw		r61, -5(r3)				# 1353
	sw		r61, 1(r9)				# 1353
	lw		r61, -7(r3)				# 47149
	sw		r61, 2(r9)				# 47149
	lw		r1, -1(r3)				# 47149
	mflr	r63
	sw		r63, -10(r3)
	addi	r3, r3, -11
	bl		setup_dirvec_constants.2897
	addi	r3, r3, 11
	lw		r63, -10(r3)
	mtlr	r63				# 47149
	lli		r9, n_objects.2480				# 47300
	addi	r10, r9, 0				# 47300
	sw		r10, -10(r3)				# 47300
	addi	r15, r10, -1				# 47281
	cmpi	r15, 0
	bge		.b19332				# 46514
.b19331:
	lw		r1, -3(r3)				# 47149
	addi	r2, r0, 0				# 47149
	addi	r5, r0, 0				# 47149
	mflr	r63
	sw		r63, -11(r3)
	addi	r3, r3, -12
	bl		pretrace_line.3058
	addi	r3, r3, 12
	lw		r63, -11(r3)
	mtlr	r63				# 47149
	lw		r1, -4(r3)				# 41846
	lw		r9, -3(r3)				# 41846
	lw		r28, -2(r3)				# 41846
	addi	r61, r0, 0				# 41846
	addi	r5, r0, 2				# 41846
T.loop19358:
	sw		r5, -11(r3)				# 41846
	sw		r1, -12(r3)				# 41846
	sw		r9, -13(r3)				# 41846
	sw		r28, -14(r3)				# 41846
	sw		r61, -15(r3)				# 41846
	cmpi	r61, 2
	bge		_min_caml_end				# 41839
.b19360:
	cmpi	r61, 1
	bge		.b19361				# 41873
.b19363:
	addi	r2, r61, 1				# 41910
	mflr	r63
	sw		r63, -16(r3)
	addi	r3, r3, -17
	bl		pretrace_line.3058
	addi	r3, r3, 17
	lw		r63, -16(r3)
	mtlr	r63				# 41910
	addi	r9, r0, 0				# 41477
	sw		r9, -16(r3)				# 41477
	cmpi	r9, 2
	bge		.b19364				# 41470
.b19367:
	lw		r61, -13(r3)				# 41516
	lwx		r61, r61, r9				# 41516
	sw		r61, -17(r3)				# 41516
	lw		r61, 0(r61)				# 6744
	lw		r28, 0(r61)				# 1353
	lli		r62, rgb.2542				# 1353
	sw		r28, 0(r62)				# 1353
	lw		r28, 1(r61)				# 1376
	sw		r28, 1(r62)				# 1353
	lw		r61, 2(r61)				# 1399
	sw		r61, 2(r62)				# 41504
	lw		r28, -15(r3)				# 37910
	addi	r61, r28, 1				# 37910
	cmpi	r61, 2
	bge		.b19369				# 37910
.b19370:
	cmpi	r28, 0
	ble		.b19371				# 37947
.b19372:
	addi	r61, r9, 1				# 37967
	cmpi	r61, 2
	bge		.b19373				# 37967
.b19374:
	cmpi	r9, 0
	ble		.b19375				# 38001
.b19376:
	addi	r9, r0, 1				# 38018
	cmpi	r9, 0
	beq		.b19378				# 41537
.b19379:
	addi	r9, r0, 0				# 38637
	cmpi	r9, 4
	ble		.b19404				# 38662
.b19377:
	lli		r62, rgb.2542				# 39509
	addi	r9, r62, 0				# 39509
	ftoi	r61, r9				# 543
	cmpi	r61, 255
	ble		.b19446				# 39409
.b19447:
	addi	r61, r0, 255				# 39426
	cmpi	r61, 200
	bge		.b19451				# 1154
.b19452:
	cmpi	r61, 100
	bge		.b19453				# 1213
.b19454:
	addi	r9, r0, 48				# 946
	out		r9				# 946
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19457				# 1011
.b19458:
	addi	r9, r9, -1				# 1074
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19457				# 1011
	b		.b19458
.b19457:
	addi	r9, r9, 48				# 1033
	out		r9				# 946
	sub		r9, r61, r28				# 1058
.b19455:
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	addi	r15, r0, 32				# 946
	out		r15				# 946
	addi	r9, r62, 1				# 39569
	ftoi	r61, r9				# 543
	cmpi	r61, 255
	ble		.b19460				# 39409
.b19461:
	addi	r61, r0, 255				# 39426
	cmpi	r61, 200
	bge		.b19465				# 1154
.b19466:
	cmpi	r61, 100
	bge		.b19467				# 1213
.b19468:
	addi	r9, r0, 48				# 946
	out		r9				# 946
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19471				# 1011
.b19472:
	addi	r9, r9, -1				# 1074
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19471				# 1011
	b		.b19472
.b19471:
	addi	r9, r9, 48				# 1033
	out		r9				# 946
	sub		r9, r61, r28				# 1058
.b19469:
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	out		r15				# 946
	addi	r9, r62, 2				# 39629
	ftoi	r61, r9				# 543
	cmpi	r61, 255
	ble		.b19474				# 39409
.b19475:
	addi	r61, r0, 255				# 39426
	cmpi	r61, 200
	bge		.b19479				# 1154
.b19480:
	cmpi	r61, 100
	bge		.b19481				# 1213
.b19482:
	addi	r9, r0, 48				# 946
	out		r9				# 946
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19485				# 1011
.b19486:
	addi	r9, r9, -1				# 1074
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19485				# 1011
	b		.b19486
.b19485:
	addi	r9, r9, 48				# 1033
	out		r9				# 946
	sub		r9, r61, r28				# 1058
.b19483:
	addi	r9, r9, 48				# 1347
	out		r9				# 946
	addi	r9, r0, 10				# 946
	out		r9				# 946
	lw		r9, -16(r3)				# 41688
	addi	r9, r9, 1				# 41688
	sw		r9, -16(r3)				# 41477
	cmpi	r9, 2
	bge		.b19364				# 41470
	b		.b19367
.b19364:
	lw		r9, -15(r3)				# 41997
	addi	r61, r9, 1				# 41997
	lw		r9, -11(r3)				# 979
	addi	r5, r9, 2				# 979
	cmpi	r5, 5
	bge		.b19488				# 1000
.b19489:
.b19487:
	lw		r9, -12(r3)				# 41997
	lw		r28, -13(r3)				# 41997
	lw		r1, -14(r3)				# 41997
	b		T.loop19358				# 41997
.b19488:
	addi	r5, r5, -5				# 1017
	b		.b19487				# 1017
.b19481:
	addi	r9, r0, 49				# 1236
	out		r9				# 946
	addi	r61, r61, -100				# 1255
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19485				# 1011
	b		.b19486
.b19479:
	addi	r9, r0, 50				# 946
	out		r9				# 946
	addi	r61, r61, -200				# 1196
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19485				# 1011
	b		.b19486
.b19474:
	cmpi	r61, 0
	bge		.b19476				# 39435
.b19477:
	addi	r61, r0, 0				# 39450
	cmpi	r61, 200
	bge		.b19479				# 1154
	b		.b19480
.b19476:
	cmpi	r61, 200
	bge		.b19479				# 1154
	b		.b19480
.b19467:
	addi	r9, r0, 49				# 1236
	out		r9				# 946
	addi	r61, r61, -100				# 1255
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19471				# 1011
	b		.b19472
.b19465:
	addi	r9, r0, 50				# 946
	out		r9				# 946
	addi	r61, r61, -200				# 1196
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19471				# 1011
	b		.b19472
.b19460:
	cmpi	r61, 0
	bge		.b19462				# 39435
.b19463:
	addi	r61, r0, 0				# 39450
	cmpi	r61, 200
	bge		.b19465				# 1154
	b		.b19466
.b19462:
	cmpi	r61, 200
	bge		.b19465				# 1154
	b		.b19466
.b19453:
	addi	r9, r0, 49				# 1236
	out		r9				# 946
	addi	r61, r61, -100				# 1255
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19457				# 1011
	b		.b19458
.b19451:
	addi	r9, r0, 50				# 946
	out		r9				# 946
	addi	r61, r61, -200				# 1196
	addi	r9, r0, 9				# 999
	mul16i	r28, r9, 10				# 990
	cmp		r28, r61
	ble		.b19457				# 1011
	b		.b19458
.b19446:
	cmpi	r61, 0
	bge		.b19448				# 39435
.b19449:
	addi	r61, r0, 0				# 39450
	cmpi	r61, 200
	bge		.b19451				# 1154
	b		.b19452
.b19448:
	cmpi	r61, 200
	bge		.b19451				# 1154
	b		.b19452
.b19404:
	lw		r13, -17(r3)				# 7046
	lw		r61, 2(r13)				# 7046
	lwx		r61, r61, r9				# 38685
	cmpi	r61, 0
	bge		.b19406				# 38685
	b		.b19377
.b19406:
	lw		r61, 2(r13)				# 7046
	lwx		r61, r61, r9				# 38247
	lw		r28, -14(r3)				# 38301
	lw		r15, -16(r3)				# 38301
	lwx		r62, r28, r15				# 38301
	lw		r28, 2(r62)				# 7046
	lwx		r28, r28, r9				# 38298
	cmp		r28, r61
	beq		.b19409				# 38298
.b19410:
	addi	r61, r0, 0				# 38570
	cmpi	r61, 0
	beq		.b19417				# 38730
.b19418:
	lw		r61, 3(r13)				# 7193
	lwx		r61, r61, r9				# 38838
	cmpi	r61, 0
	beq		.b19442				# 38838
.b19444:
	lw		r10, 5(r62)				# 7491
	addi	r61, r15, -1				# 37080
	lw		r28, -13(r3)				# 37055
	lwx		r61, r28, r61				# 37055
	lw		r30, 5(r61)				# 7491
	lw		r62, 5(r13)				# 7491
	addi	r61, r15, 1				# 37187
	lwx		r61, r28, r61				# 37162
	lw		r25, 5(r61)				# 7491
	lw		r61, -12(r3)				# 37215
	lwx		r61, r61, r15				# 37215
	lw		r54, 5(r61)				# 7491
	lwx		r61, r10, r9				# 37255
	lw		r7, 0(r61)				# 1353
	lli		r15, diffuse_ray.2539				# 1353
	sw		r7, 0(r15)				# 1353
	lw		r51, 1(r61)				# 1376
	sw		r51, 1(r15)				# 1353
	lw		r28, 2(r61)				# 1399
	sw		r28, 2(r15)				# 37255
	lwx		r61, r30, r9				# 37289
	lw		r10, 0(r61)				# 2282
	fadd	r7, r7, r10				# 2270
	sw		r7, 0(r15)				# 2270
	lw		r10, 1(r61)				# 2315
	fadd	r10, r51, r10				# 2303
	sw		r10, 1(r15)				# 2270
	lw		r61, 2(r61)				# 2348
	fadd	r28, r28, r61				# 2336
	sw		r28, 2(r15)				# 37255
	lwx		r61, r62, r9				# 37325
	lw		r62, 0(r61)				# 2282
	fadd	r7, r7, r62				# 2270
	sw		r7, 0(r15)				# 2270
	lw		r62, 1(r61)				# 2315
	fadd	r51, r10, r62				# 2303
	sw		r51, 1(r15)				# 2270
	lw		r61, 2(r61)				# 2348
	fadd	r10, r28, r61				# 2336
	sw		r10, 2(r15)				# 37255
	lwx		r62, r25, r9				# 37363
	lw		r61, 0(r62)				# 2282
	fadd	r61, r7, r61				# 2270
	sw		r61, 0(r15)				# 2270
	lw		r28, 1(r62)				# 2315
	fadd	r28, r51, r28				# 2303
	sw		r28, 1(r15)				# 2270
	lw		r62, 2(r62)				# 2348
	fadd	r62, r10, r62				# 2336
	sw		r62, 2(r15)				# 37255
	lwx		r10, r54, r9				# 37400
	lw		r51, 0(r10)				# 2282
	fadd	r54, r61, r51				# 2270
	sw		r54, 0(r15)				# 2270
	lw		r61, 1(r10)				# 2315
	fadd	r51, r28, r61				# 2303
	sw		r51, 1(r15)				# 2270
	lw		r61, 2(r10)				# 2348
	fadd	r10, r62, r61				# 2336
	sw		r10, 2(r15)				# 37255
	lw		r61, 4(r13)				# 7334
	lwx		r15, r61, r9				# 37473
	lli		r62, rgb.2542				# 2671
	addi	r28, r62, 0				# 2671
	lw		r61, 0(r15)				# 2683
	fmul	r61, r61, r54				# 2671
	fadd	r61, r28, r61				# 2659
	sw		r61, 0(r62)				# 2659
	addi	r61, r62, 1				# 2713
	lw		r28, 1(r15)				# 2725
	fmul	r28, r28, r51				# 2713
	fadd	r61, r61, r28				# 2701
	sw		r61, 1(r62)				# 2659
	addi	r28, r62, 2				# 2755
	lw		r61, 2(r15)				# 2767
	fmul	r61, r61, r10				# 2755
	fadd	r61, r28, r61				# 2743
	sw		r61, 2(r62)				# 2743
	addi	r9, r9, 1				# 38929
	cmpi	r9, 4
	ble		.b19404				# 38662
	b		.b19377
.b19442:
	addi	r9, r9, 1				# 38929
	cmpi	r9, 4
	ble		.b19404				# 38662
	b		.b19377
.b19417:
	sw		r9, -18(r3)				# 37563
	cmpi	r9, 4
	ble		.b19420				# 37563
	b		.b19377
.b19420:
	lw		r10, -17(r3)				# 7046
	lw		r61, 2(r10)				# 7046
	lwx		r61, r61, r9				# 37630
	cmpi	r61, 0
	bge		.b19422				# 37630
	b		.b19377
.b19422:
	lw		r61, 3(r10)				# 7193
	lwx		r61, r61, r9				# 37719
	cmpi	r61, 0
	beq		.b19424				# 37719
.b19426:
	lw		r61, 5(r10)				# 7491
	lw		r15, 7(r10)				# 7939
	lw		r28, 1(r10)				# 6897
	lw		r62, 4(r10)				# 7334
	sw		r62, -19(r3)				# 7334
	lwx		r61, r61, r9				# 36743
	lw		r62, 0(r61)				# 1353
	sw		r62, -20(r3)				# 1353
	lli		r51, diffuse_ray.2539				# 1353
	sw		r62, 0(r51)				# 1353
	lw		r62, 1(r61)				# 1376
	sw		r62, -21(r3)				# 1376
	sw		r62, 1(r51)				# 1353
	lw		r61, 2(r61)				# 1399
	sw		r61, -22(r3)				# 1399
	sw		r61, 2(r51)				# 36743
	lw		r61, 6(r10)				# 7634
	lw		r61, 0(r61)				# 36779
	sw		r61, -23(r3)				# 36779
	lwx		r2, r15, r9				# 36779
	sw		r2, -24(r3)				# 36779
	lwx		r5, r28, r9				# 36779
	sw		r5, -25(r3)				# 36779
	cmpi	r61, 0
	beq		.b19427				# 36097
.b19429:
	lli		r9, dirvecs.2579				# 36123
	addi	r1, r9, 0				# 36123
	mflr	r63
	sw		r63, -26(r3)
	addi	r3, r3, -27
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 27
	lw		r63, -26(r3)
	mtlr	r63				# 36123
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 1
	beq		.b19430				# 36180
.b19432:
	lli		r9, dirvecs.2579				# 36206
	addi	r1, r9, 1				# 36206
	lw		r5, -25(r3)				# 36206
	lw		r2, -24(r3)				# 36206
	mflr	r63
	sw		r63, -26(r3)
	addi	r3, r3, -27
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 27
	lw		r63, -26(r3)
	mtlr	r63				# 36206
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 2
	beq		.b19433				# 36263
.b19435:
	lli		r9, dirvecs.2579				# 36289
	addi	r1, r9, 2				# 36289
	lw		r2, -24(r3)				# 36289
	lw		r5, -25(r3)				# 36289
	mflr	r63
	sw		r63, -26(r3)
	addi	r3, r3, -27
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 27
	lw		r63, -26(r3)
	mtlr	r63				# 36289
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 3
	beq		.b19436				# 36346
.b19438:
	lli		r9, dirvecs.2579				# 36372
	addi	r1, r9, 3				# 36372
	lw		r2, -24(r3)				# 36372
	lw		r5, -25(r3)				# 36372
	mflr	r63
	sw		r63, -26(r3)
	addi	r3, r3, -27
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 27
	lw		r63, -26(r3)
	mtlr	r63				# 36372
	lw		r9, -23(r3)				# 36743
	cmpi	r9, 4
	beq		.b19439				# 36429
.b19441:
	lli		r9, dirvecs.2579				# 36455
	addi	r1, r9, 4				# 36455
	lw		r2, -24(r3)				# 36455
	lw		r5, -25(r3)				# 36455
	mflr	r63
	sw		r63, -26(r3)
	addi	r3, r3, -27
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 27
	lw		r63, -26(r3)
	mtlr	r63				# 36455
.b19439:
	lw		r9, -18(r3)				# 36884
	lw		r61, -19(r3)				# 36884
	lwx		r61, r61, r9				# 36884
	lli		r28, rgb.2542				# 2671
	addi	r15, r28, 0				# 2671
	lw		r62, 0(r61)				# 2683
	lw		r9, -20(r3)				# 2671
	fmul	r9, r62, r9				# 2671
	fadd	r9, r15, r9				# 2659
	sw		r9, 0(r28)				# 2659
	addi	r62, r28, 1				# 2713
	lw		r9, 1(r61)				# 2725
	lw		r15, -21(r3)				# 2713
	fmul	r9, r9, r15				# 2713
	fadd	r9, r62, r9				# 2701
	sw		r9, 1(r28)				# 2659
	addi	r9, r28, 2				# 2755
	lw		r61, 2(r61)				# 2767
	lw		r62, -22(r3)				# 2755
	fmul	r61, r61, r62				# 2755
	fadd	r9, r9, r61				# 2743
	sw		r9, 2(r28)				# 2743
.b19424:
	lw		r9, -18(r3)				# 37806
	addi	r9, r9, 1				# 37806
	sw		r9, -18(r3)				# 37563
	cmpi	r9, 4
	ble		.b19420				# 37563
	b		.b19377
.b19436:
	lw		r9, -23(r3)				# 36743
	cmpi	r9, 4
	beq		.b19439				# 36429
	b		.b19441
.b19433:
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 3
	beq		.b19436				# 36346
	b		.b19438
.b19430:
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 2
	beq		.b19433				# 36263
	b		.b19435
.b19427:
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 1
	beq		.b19430				# 36180
	b		.b19432
.b19409:
	lw		r28, -12(r3)				# 38355
	lwx		r28, r28, r15				# 38355
	lw		r28, 2(r28)				# 7046
	lwx		r28, r28, r9				# 38352
	cmp		r28, r61
	beq		.b19411				# 38352
.b19412:
	addi	r61, r0, 0				# 38557
	cmpi	r61, 0
	beq		.b19417				# 38730
	b		.b19418
.b19411:
	addi	r28, r15, -1				# 38426
	lw		r10, -13(r3)				# 38411
	lwx		r28, r10, r28				# 38411
	lw		r28, 2(r28)				# 7046
	lwx		r28, r28, r9				# 38408
	cmp		r28, r61
	beq		.b19413				# 38408
.b19414:
	addi	r61, r0, 0				# 38542
	cmpi	r61, 0
	beq		.b19417				# 38730
	b		.b19418
.b19413:
	addi	r28, r15, 1				# 38478
	lwx		r28, r10, r28				# 38463
	lw		r28, 2(r28)				# 7046
	lwx		r28, r28, r9				# 38460
	cmp		r28, r61
	beq		.b19415				# 38460
.b19416:
	addi	r61, r0, 0				# 38525
	cmpi	r61, 0
	beq		.b19417				# 38730
	b		.b19418
.b19415:
	addi	r61, r0, 1				# 38514
	cmpi	r61, 0
	beq		.b19417				# 38730
	b		.b19418
.b19378:
	addi	r9, r0, 0				# 37563
	sw		r9, -18(r3)				# 37563
	cmpi	r9, 4
	ble		.b19381				# 37563
	b		.b19377
.b19381:
	lw		r62, -17(r3)				# 7046
	lw		r61, 2(r62)				# 7046
	lwx		r61, r61, r9				# 37630
	cmpi	r61, 0
	bge		.b19383				# 37630
	b		.b19377
.b19383:
	lw		r61, 3(r62)				# 7193
	lwx		r61, r61, r9				# 37719
	cmpi	r61, 0
	beq		.b19385				# 37719
.b19387:
	lw		r61, 5(r62)				# 7491
	lw		r10, 7(r62)				# 7939
	lw		r28, 1(r62)				# 6897
	lw		r15, 4(r62)				# 7334
	sw		r15, -19(r3)				# 7334
	lwx		r51, r61, r9				# 36743
	lw		r15, 0(r51)				# 1353
	sw		r15, -20(r3)				# 1353
	lli		r61, diffuse_ray.2539				# 1353
	sw		r15, 0(r61)				# 1353
	lw		r15, 1(r51)				# 1376
	sw		r15, -21(r3)				# 1376
	sw		r15, 1(r61)				# 1353
	lw		r15, 2(r51)				# 1399
	sw		r15, -22(r3)				# 1399
	sw		r15, 2(r61)				# 36743
	lw		r61, 6(r62)				# 7634
	lw		r61, 0(r61)				# 36779
	sw		r61, -23(r3)				# 36779
	lwx		r2, r10, r9				# 36779
	sw		r2, -24(r3)				# 36779
	lwx		r5, r28, r9				# 36779
	sw		r5, -25(r3)				# 36779
	cmpi	r61, 0
	beq		.b19388				# 36097
.b19390:
	lli		r9, dirvecs.2579				# 36123
	addi	r1, r9, 0				# 36123
	mflr	r63
	sw		r63, -26(r3)
	addi	r3, r3, -27
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 27
	lw		r63, -26(r3)
	mtlr	r63				# 36123
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 1
	beq		.b19391				# 36180
.b19393:
	lli		r9, dirvecs.2579				# 36206
	addi	r1, r9, 1				# 36206
	lw		r5, -25(r3)				# 36206
	lw		r2, -24(r3)				# 36206
	mflr	r63
	sw		r63, -26(r3)
	addi	r3, r3, -27
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 27
	lw		r63, -26(r3)
	mtlr	r63				# 36206
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 2
	beq		.b19394				# 36263
.b19396:
	lli		r9, dirvecs.2579				# 36289
	addi	r1, r9, 2				# 36289
	lw		r5, -25(r3)				# 36289
	lw		r2, -24(r3)				# 36289
	mflr	r63
	sw		r63, -26(r3)
	addi	r3, r3, -27
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 27
	lw		r63, -26(r3)
	mtlr	r63				# 36289
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 3
	beq		.b19397				# 36346
.b19399:
	lli		r9, dirvecs.2579				# 36372
	addi	r1, r9, 3				# 36372
	lw		r5, -25(r3)				# 36372
	lw		r2, -24(r3)				# 36372
	mflr	r63
	sw		r63, -26(r3)
	addi	r3, r3, -27
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 27
	lw		r63, -26(r3)
	mtlr	r63				# 36372
	lw		r9, -23(r3)				# 36743
	cmpi	r9, 4
	beq		.b19400				# 36429
.b19402:
	lli		r9, dirvecs.2579				# 36455
	addi	r1, r9, 4				# 36455
	lw		r5, -25(r3)				# 36455
	lw		r2, -24(r3)				# 36455
	mflr	r63
	sw		r63, -26(r3)
	addi	r3, r3, -27
	bl		trace_diffuse_rays.3002
	addi	r3, r3, 27
	lw		r63, -26(r3)
	mtlr	r63				# 36455
.b19400:
	lw		r9, -19(r3)				# 36884
	lw		r61, -18(r3)				# 36884
	lwx		r62, r9, r61				# 36884
	lli		r61, rgb.2542				# 2671
	addi	r15, r61, 0				# 2671
	lw		r28, 0(r62)				# 2683
	lw		r9, -20(r3)				# 2671
	fmul	r9, r28, r9				# 2671
	fadd	r9, r15, r9				# 2659
	sw		r9, 0(r61)				# 2659
	addi	r28, r61, 1				# 2713
	lw		r9, 1(r62)				# 2725
	lw		r15, -21(r3)				# 2713
	fmul	r9, r9, r15				# 2713
	fadd	r9, r28, r9				# 2701
	sw		r9, 1(r61)				# 2659
	addi	r28, r61, 2				# 2755
	lw		r9, 2(r62)				# 2767
	lw		r62, -22(r3)				# 2755
	fmul	r9, r9, r62				# 2755
	fadd	r9, r28, r9				# 2743
	sw		r9, 2(r61)				# 2743
.b19385:
	lw		r9, -18(r3)				# 37806
	addi	r9, r9, 1				# 37806
	sw		r9, -18(r3)				# 37563
	cmpi	r9, 4
	ble		.b19381				# 37563
	b		.b19377
.b19397:
	lw		r9, -23(r3)				# 36743
	cmpi	r9, 4
	beq		.b19400				# 36429
	b		.b19402
.b19394:
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 3
	beq		.b19397				# 36346
	b		.b19399
.b19391:
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 2
	beq		.b19394				# 36263
	b		.b19396
.b19388:
	lw		r9, -23(r3)				# 36097
	cmpi	r9, 1
	beq		.b19391				# 36180
	b		.b19393
.b19375:
	addi	r9, r0, 0				# 38029
	cmpi	r9, 0
	beq		.b19378				# 41537
	b		.b19379
.b19373:
	addi	r9, r0, 0				# 38046
	cmpi	r9, 0
	beq		.b19378				# 41537
	b		.b19379
.b19371:
	addi	r9, r0, 0				# 38061
	cmpi	r9, 0
	beq		.b19378				# 41537
	b		.b19379
.b19369:
	addi	r9, r0, 0				# 38074
	cmpi	r9, 0
	beq		.b19378				# 41537
	b		.b19379
.b19361:
	addi	r9, r0, 0				# 41477
	sw		r9, -16(r3)				# 41477
	cmpi	r9, 2
	bge		.b19364				# 41470
	b		.b19367
.b19332:
	mul16i	r9, r15, 1				# 46548
	lli		r61, objects.2491				# 46538
	add		r62, r61, r9				# 46538
	lw		r9, 2(r62)				# 3185
	cmpi	r9, 2
	beq		.b19334				# 46572
	b		.b19331
.b19334:
	lw		r9, 7(r62)				# 5033
	lw		r28, 0(r9)				# 46614
	addis	r61, r0, 16256
	ori		r61, r61, 0				# 46614
	fcmp	r61, r28
	ble		.b19331				# 3096
.b19337:
	lw		r9, 1(r62)				# 2994
	cmpi	r9, 1
	beq		.b19338				# 46675
.b19339:
	cmpi	r9, 2
	beq		.b19352				# 46737
	b		.b19331
.b19352:
	slwi	r9, r15, 2				# 46148
	addi	r9, r9, 1				# 46138
	sw		r9, -11(r3)				# 46138
	lli		r9, n_reflections.2602				# 46168
	addi	r9, r9, 0				# 46168
	sw		r9, -12(r3)				# 46168
	fsub	r9, r61, r28				# 46200
	sw		r9, -13(r3)				# 46200
	lw		r61, 4(r62)				# 4293
	lw		r15, 0(r61)				# 1949
	lw		r62, -6(r3)				# 1949
	fmul	r9, r62, r15				# 1949
	lw		r54, 1(r61)				# 1967
	lw		r51, -5(r3)				# 1949
	fmul	r28, r51, r54				# 1949
	fadd	r13, r9, r28				# 1949
	lw		r61, 2(r61)				# 1985
	lw		r9, -7(r3)				# 1949
	fmul	r28, r9, r61				# 1949
	fadd	r28, r13, r28				# 46235
	addis	r13, r0, 16384
	ori		r13, r13, 0				# 46312
	fmul	r15, r13, r15				# 46312
	fmul	r15, r15, r28				# 46312
	fsub	r7, r15, r62				# 46282
	fmul	r62, r13, r54				# 46357
	fmul	r62, r62, r28				# 46357
	fsub	r62, r62, r51				# 46282
	fmul	r61, r13, r61				# 46402
	fmul	r61, r61, r28				# 46402
	fsub	r51, r61, r9				# 46282
	mv		r28, r4
	addi	r4, r4, 3				# 44588
	addi	r9, r0, 0				# 44588
	sw		r9, 0(r28)				# 44588
	sw		r9, 1(r28)				# 44588
	sw		r9, 2(r28)				# 44588
	mv		r61, r4
	add		r4, r4, r10				# 44623
	addi	r15, r10, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r15
	ble		.b19356				# 44623
.b19354:
	mv		r1, r4
	addi	r4, r4, 2				# 44656
	sw		r28, 0(r1)				# 44656
	sw		r61, 1(r1)				# 44656
	sw		r1, -14(r3)				# 45531
	sw		r7, 0(r28)				# 1162
	sw		r62, 1(r28)				# 1162
	sw		r51, 2(r28)				# 45563
	mflr	r63
	sw		r63, -15(r3)
	addi	r3, r3, -16
	bl		setup_dirvec_constants.2897
	addi	r3, r3, 16
	lw		r63, -15(r3)
	mtlr	r63				# 45563
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	lw		r61, -11(r3)				# 45650
	sw		r61, 0(r9)				# 45650
	lw		r61, -14(r3)				# 45650
	sw		r61, 1(r9)				# 45650
	lw		r61, -13(r3)				# 45650
	sw		r61, 2(r9)				# 45650
	lli		r28, reflections.2599				# 46282
	lw		r61, -12(r3)				# 46282
	swx		r9, r61, r28				# 46282
	addi	r61, r61, 1				# 46445
	lli		r9, n_reflections.2602				# 46445
	sw		r61, 0(r9)				# 46445
	b		.b19331				# 46445
.b19356:
	swx		r28, r9, r61				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r15
	ble		.b19356				# 44623
	b		.b19354
.b19338:
	slwi	r62, r15, 2				# 45726
	sw		r62, -11(r3)				# 45726
	lli		r9, n_reflections.2602				# 45752
	addi	r9, r9, 0				# 45752
	sw		r9, -12(r3)				# 45752
	fsub	r9, r61, r28				# 45784
	sw		r9, -13(r3)				# 45784
	lw		r51, -6(r3)				# 45819
	fneg	r9, r51				# 45819
	sw		r9, -14(r3)				# 45819
	lw		r9, -5(r3)				# 45848
	fneg	r13, r9				# 45848
	sw		r13, -15(r3)				# 45848
	lw		r9, -7(r3)				# 45877
	fneg	r15, r9				# 45877
	sw		r15, -16(r3)				# 45877
	addi	r9, r62, 1				# 45906
	sw		r9, -17(r3)				# 45906
	mv		r9, r4
	addi	r4, r4, 3				# 44588
	addi	r61, r0, 0				# 44588
	sw		r61, 0(r9)				# 44588
	sw		r61, 1(r9)				# 44588
	sw		r61, 2(r9)				# 44588
	mv		r61, r4
	add		r4, r4, r10				# 44623
	addi	r62, r10, -1				# 44623
	addi	r28, r0, 0				# 44623
	cmp		r28, r62
	ble		.b19342				# 44623
.b19340:
	mv		r1, r4
	addi	r4, r4, 2				# 44656
	sw		r9, 0(r1)				# 44656
	sw		r61, 1(r1)				# 44656
	sw		r1, -18(r3)				# 45531
	sw		r51, 0(r9)				# 1162
	sw		r13, 1(r9)				# 1162
	sw		r15, 2(r9)				# 45563
	mflr	r63
	sw		r63, -19(r3)
	addi	r3, r3, -20
	bl		setup_dirvec_constants.2897
	addi	r3, r3, 20
	lw		r63, -19(r3)
	mtlr	r63				# 45563
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	lw		r61, -17(r3)				# 45650
	sw		r61, 0(r9)				# 45650
	lw		r61, -18(r3)				# 45650
	sw		r61, 1(r9)				# 45650
	lw		r61, -13(r3)				# 45650
	sw		r61, 2(r9)				# 45650
	lw		r28, -12(r3)				# 45906
	lli		r61, reflections.2599				# 45906
	swx		r9, r28, r61				# 45906
	addi	r9, r28, 1				# 45954
	sw		r9, -19(r3)				# 45954
	lw		r9, -11(r3)				# 45954
	addi	r9, r9, 2				# 45954
	sw		r9, -20(r3)				# 45954
	mv		r28, r4
	addi	r4, r4, 3				# 44588
	addi	r9, r0, 0				# 44588
	sw		r9, 0(r28)				# 44588
	sw		r9, 1(r28)				# 44588
	sw		r9, 2(r28)				# 44588
	lw		r9, -10(r3)				# 44623
	mv		r61, r4
	add		r4, r4, r9				# 44623
	addi	r62, r9, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r62
	ble		.b19346				# 44623
.b19344:
	mv		r1, r4
	addi	r4, r4, 2				# 44656
	sw		r28, 0(r1)				# 44656
	sw		r61, 1(r1)				# 44656
	sw		r1, -21(r3)				# 45531
	lw		r9, -14(r3)				# 1162
	sw		r9, 0(r28)				# 1162
	lw		r9, -5(r3)				# 1162
	sw		r9, 1(r28)				# 1162
	lw		r9, -16(r3)				# 45563
	sw		r9, 2(r28)				# 45563
	mflr	r63
	sw		r63, -22(r3)
	addi	r3, r3, -23
	bl		setup_dirvec_constants.2897
	addi	r3, r3, 23
	lw		r63, -22(r3)
	mtlr	r63				# 45563
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	lw		r61, -20(r3)				# 45650
	sw		r61, 0(r9)				# 45650
	lw		r61, -21(r3)				# 45650
	sw		r61, 1(r9)				# 45650
	lw		r61, -13(r3)				# 45650
	sw		r61, 2(r9)				# 45650
	lw		r28, -19(r3)				# 45906
	lli		r61, reflections.2599				# 45906
	swx		r9, r28, r61				# 45906
	lw		r9, -12(r3)				# 46006
	addi	r9, r9, 2				# 46006
	sw		r9, -22(r3)				# 46006
	lw		r9, -11(r3)				# 46006
	addi	r9, r9, 3				# 46006
	sw		r9, -23(r3)				# 46006
	mv		r28, r4
	addi	r4, r4, 3				# 44588
	addi	r9, r0, 0				# 44588
	sw		r9, 0(r28)				# 44588
	sw		r9, 1(r28)				# 44588
	sw		r9, 2(r28)				# 44588
	lw		r61, -10(r3)				# 44623
	mv		r9, r4
	add		r4, r4, r61				# 44623
	addi	r62, r61, -1				# 44623
	addi	r61, r0, 0				# 44623
	cmp		r61, r62
	ble		.b19350				# 44623
.b19348:
	mv		r1, r4
	addi	r4, r4, 2				# 44656
	sw		r28, 0(r1)				# 44656
	sw		r9, 1(r1)				# 44656
	sw		r1, -24(r3)				# 45531
	lw		r9, -14(r3)				# 1162
	sw		r9, 0(r28)				# 1162
	lw		r9, -15(r3)				# 1162
	sw		r9, 1(r28)				# 1162
	lw		r9, -7(r3)				# 45563
	sw		r9, 2(r28)				# 45563
	mflr	r63
	sw		r63, -25(r3)
	addi	r3, r3, -26
	bl		setup_dirvec_constants.2897
	addi	r3, r3, 26
	lw		r63, -25(r3)
	mtlr	r63				# 45563
	mv		r9, r4
	addi	r4, r4, 3				# 45650
	lw		r61, -23(r3)				# 45650
	sw		r61, 0(r9)				# 45650
	lw		r61, -24(r3)				# 45650
	sw		r61, 1(r9)				# 45650
	lw		r61, -13(r3)				# 45650
	sw		r61, 2(r9)				# 45650
	lw		r28, -22(r3)				# 45906
	lli		r61, reflections.2599				# 45906
	swx		r9, r28, r61				# 45906
	lw		r9, -12(r3)				# 46058
	addi	r9, r9, 3				# 46058
	lli		r61, n_reflections.2602				# 46058
	sw		r9, 0(r61)				# 46058
	b		.b19331				# 46058
.b19350:
	swx		r28, r61, r9				# 44623
	addi	r61, r61, 1				# 44623
	cmp		r61, r62
	ble		.b19350				# 44623
	b		.b19348
.b19346:
	swx		r28, r9, r61				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r62
	ble		.b19346				# 44623
	b		.b19344
.b19342:
	swx		r9, r28, r61				# 44623
	addi	r28, r28, 1				# 44623
	cmp		r28, r62
	ble		.b19342				# 44623
	b		.b19340
.b19325:
	mul16i	r61, r9, 1				# 45294
	lli		r9, dirvecs.2579				# 45272
	add		r9, r9, r61				# 45272
	sw		r9, -10(r3)				# 45272
	addi	r9, r0, 119				# 45081
	sw		r9, -11(r3)				# 45081
	cmpi	r9, 0
	bge		.b19329				# 45081
.b19327:
	lw		r9, -9(r3)				# 45319
	addi	r9, r9, -1				# 45319
	sw		r9, -9(r3)				# 45247
	cmpi	r9, 0
	bge		.b19325				# 45247
	b		.b19323
.b19329:
	lw		r61, -10(r3)				# 45106
	lwx		r1, r61, r9				# 45106
	mflr	r63
	sw		r63, -12(r3)
	addi	r3, r3, -13
	bl		setup_dirvec_constants.2897
	addi	r3, r3, 13
	lw		r63, -12(r3)
	mtlr	r63				# 45106
	lw		r9, -11(r3)				# 45149
	addi	r9, r9, -1				# 45149
	sw		r9, -11(r3)				# 45081
	cmpi	r9, 0
	bge		.b19329				# 45081
	b		.b19327
.b19303:
	itof	r9, r54				# 639
	addis	r41, r0, 15948
	ori		r41, r41, 52429				# 44395
	fmul	r9, r9, r41				# 44395
	addis	r25, r0, 16230
	ori		r25, r25, 26214				# 44395
	fsub	r57, r9, r25				# 44386
	addi	r9, r0, 4				# 43977
	mv		r28, r61				# 43977
	cmpi	r9, 0
	bge		.b19307				# 43977
.b19305:
	addi	r54, r54, -1				# 44473
	addi	r61, r61, 2				# 979
	cmpi	r61, 5
	bge		.b19321				# 1000
.b19322:
.b19320:
	addi	r13, r13, 4				# 44473
	cmpi	r54, 0
	bge		.b19303				# 44363
	b		.b19301
.b19321:
	addi	r61, r61, -5				# 1017
	b		.b19320				# 1017
.b19307:
	itof	r62, r9				# 639
	fmul	r26, r62, r41				# 44029
	fsub	r30, r26, r25				# 44020
	addi	r62, r0, 0				# 44069
	addi	r10, r0, 0				# 43281
	mv		r15, r62				# 43281
	mv		r51, r62				# 43281
	cmpi	r10, 5
	bge		.b19311				# 43281
.b19312:
	fmul	r15, r51, r51				# 43095
	addis	r7, r0, 15820
	ori		r7, r7, 52429				# 43095
	fadd	r15, r15, r7				# 43090
	fsqrt	r15, r15				# 227
	addis	r37, r0, 16256
	ori		r37, r37, 0				# 43125
	fdiv	r51, r37, r15				# 43113
	fatan	r51, r51				# 440
	fmul	r51, r51, r30				# 43182
	fsin	r46, r51				# 40
	fcos	r51, r51				# 133
	fdiv	r51, r46, r51				# 43170
	fmul	r15, r51, r15				# 43816
	addi	r10, r10, 1				# 43853
	fmul	r51, r15, r15				# 43095
	fadd	r51, r51, r7				# 43090
	fsqrt	r46, r51				# 227
	fdiv	r51, r37, r46				# 43113
	fatan	r51, r51				# 440
	fmul	r51, r51, r57				# 43182
	fsin	r7, r51				# 40
	fcos	r51, r51				# 133
	fdiv	r51, r7, r51				# 43170
	fmul	r51, r51, r46				# 43853
	cmpi	r10, 5
	bge		.b19311				# 43281
	b		.b19312
.b19311:
	fmul	r10, r15, r15				# 43320
	fmul	r7, r51, r51				# 43320
	fadd	r10, r10, r7				# 43320
	addis	r7, r0, 16256
	ori		r7, r7, 0				# 43320
	fadd	r10, r10, r7				# 43315
	fsqrt	r10, r10				# 227
	fdiv	r30, r15, r10				# 43352
	fdiv	r46, r51, r10				# 43375
	fdiv	r7, r7, r10				# 43398
	mul16i	r10, r28, 1				# 43437
	lli		r15, dirvecs.2579				# 43424
	add		r37, r15, r10				# 43424
	lwx		r15, r37, r13				# 43471
	lw		r15, 0(r15)				# 8078
	sw		r30, 0(r15)				# 1162
	sw		r46, 1(r15)				# 1162
	sw		r7, 2(r15)				# 43463
	addi	r15, r13, 40				# 43524
	lwx		r15, r37, r15				# 43518
	lw		r15, 0(r15)				# 8078
	fneg	r10, r46				# 43510
	sw		r30, 0(r15)				# 1162
	sw		r7, 1(r15)				# 1162
	sw		r10, 2(r15)				# 43463
	addi	r15, r13, 80				# 43578
	lwx		r15, r37, r15				# 43572
	lw		r15, 0(r15)				# 8078
	fneg	r51, r30				# 43564
	sw		r7, 0(r15)				# 1162
	sw		r51, 1(r15)				# 1162
	sw		r10, 2(r15)				# 43463
	addi	r15, r13, 1				# 43639
	lwx		r15, r37, r15				# 43633
	lw		r15, 0(r15)				# 8078
	fneg	r7, r7				# 43625
	sw		r51, 0(r15)				# 1162
	sw		r10, 1(r15)				# 1162
	sw		r7, 2(r15)				# 43463
	addi	r15, r13, 41				# 43706
	lwx		r15, r37, r15				# 43700
	lw		r15, 0(r15)				# 8078
	sw		r51, 0(r15)				# 1162
	sw		r7, 1(r15)				# 1162
	sw		r46, 2(r15)				# 43463
	addi	r15, r13, 81				# 43767
	lwx		r15, r37, r15				# 43761
	lw		r15, 0(r15)				# 8078
	sw		r7, 0(r15)				# 1162
	sw		r30, 1(r15)				# 1162
	sw		r46, 2(r15)				# 1190
.b19309:
	addis	r7, r0, 15820
	ori		r7, r7, 52429				# 44147
	fadd	r30, r26, r7				# 44137
	addi	r51, r13, 2				# 44188
	addi	r10, r0, 0				# 43281
	mv		r15, r62				# 43281
	cmpi	r10, 5
	bge		.b19315				# 43281
.b19316:
	fmul	r62, r62, r62				# 43095
	fadd	r62, r62, r7				# 43090
	fsqrt	r15, r62				# 227
	addis	r37, r0, 16256
	ori		r37, r37, 0				# 43125
	fdiv	r62, r37, r15				# 43113
	fatan	r62, r62				# 440
	fmul	r62, r62, r30				# 43182
	fsin	r46, r62				# 40
	fcos	r62, r62				# 133
	fdiv	r62, r46, r62				# 43170
	fmul	r15, r62, r15				# 43816
	addi	r10, r10, 1				# 43853
	fmul	r62, r15, r15				# 43095
	fadd	r62, r62, r7				# 43090
	fsqrt	r46, r62				# 227
	fdiv	r62, r37, r46				# 43113
	fatan	r62, r62				# 440
	fmul	r62, r62, r57				# 43182
	fsin	r37, r62				# 40
	fcos	r62, r62				# 133
	fdiv	r62, r37, r62				# 43170
	fmul	r62, r62, r46				# 43853
	cmpi	r10, 5
	bge		.b19315				# 43281
	b		.b19316
.b19315:
	fmul	r7, r15, r15				# 43320
	fmul	r10, r62, r62				# 43320
	fadd	r7, r7, r10				# 43320
	addis	r10, r0, 16256
	ori		r10, r10, 0				# 43320
	fadd	r7, r7, r10				# 43315
	fsqrt	r30, r7				# 227
	fdiv	r37, r15, r30				# 43352
	fdiv	r7, r62, r30				# 43375
	fdiv	r15, r10, r30				# 43398
	mul16i	r62, r28, 1				# 43437
	lli		r10, dirvecs.2579				# 43424
	add		r30, r10, r62				# 43424
	lwx		r62, r30, r51				# 43471
	lw		r62, 0(r62)				# 8078
	sw		r37, 0(r62)				# 1162
	sw		r7, 1(r62)				# 1162
	sw		r15, 2(r62)				# 43463
	addi	r62, r51, 40				# 43524
	lwx		r62, r30, r62				# 43518
	lw		r62, 0(r62)				# 8078
	fneg	r46, r7				# 43510
	sw		r37, 0(r62)				# 1162
	sw		r15, 1(r62)				# 1162
	sw		r46, 2(r62)				# 43463
	addi	r62, r51, 80				# 43578
	lwx		r62, r30, r62				# 43572
	lw		r10, 0(r62)				# 8078
	fneg	r62, r37				# 43564
	sw		r15, 0(r10)				# 1162
	sw		r62, 1(r10)				# 1162
	sw		r46, 2(r10)				# 43463
	addi	r10, r51, 1				# 43639
	lwx		r10, r30, r10				# 43633
	lw		r10, 0(r10)				# 8078
	fneg	r26, r15				# 43625
	sw		r62, 0(r10)				# 1162
	sw		r46, 1(r10)				# 1162
	sw		r26, 2(r10)				# 43463
	addi	r15, r51, 41				# 43706
	lwx		r15, r30, r15				# 43700
	lw		r15, 0(r15)				# 8078
	sw		r62, 0(r15)				# 1162
	sw		r26, 1(r15)				# 1162
	sw		r7, 2(r15)				# 43463
	addi	r62, r51, 81				# 43767
	lwx		r62, r30, r62				# 43761
	lw		r62, 0(r62)				# 8078
	sw		r26, 0(r62)				# 1162
	sw		r37, 1(r62)				# 1162
	sw		r7, 2(r62)				# 1190
	addi	r9, r9, -1				# 44244
	addi	r28, r28, 1				# 979
	cmpi	r28, 5
	bge		.b19318				# 1000
.b19319:
	cmpi	r9, 0
	bge		.b19307				# 43977
	b		.b19305
.b19318:
	addi	r28, r28, -5				# 1017
	cmpi	r9, 0
	bge		.b19307				# 43977
	b		.b19305
.b19283:
	addi	r10, r0, 120				# 44906
	mv		r9, r4
	addi	r4, r4, 3				# 44588
	addi	r13, r0, 0				# 44588
	sw		r13, 0(r9)				# 44588
	sw		r13, 1(r9)				# 44588
	sw		r13, 2(r9)				# 44588
	lli		r61, n_objects.2480				# 44623
	addi	r54, r61, 0				# 44623
	mv		r62, r4
	add		r4, r4, r54				# 44623
	addi	r15, r54, -1				# 44623
	addi	r61, r0, 0				# 44623
	cmp		r61, r15
	ble		.b19287				# 44623
.b19285:
	mv		r15, r4
	addi	r4, r4, 2				# 44656
	sw		r9, 0(r15)				# 44656
	sw		r62, 1(r15)				# 44656
	mv		r61, r4
	addi	r4, r4, 120				# 44906
	addi	r62, r10, -1				# 44906
	addi	r9, r0, 0				# 44906
	cmp		r9, r62
	ble		.b19291				# 44906
.b19289:
	lli		r9, dirvecs.2579				# 44887
	swx		r61, r28, r9				# 44887
	addi	r10, r0, 118				# 44716
	cmpi	r10, 0
	bge		.b19295				# 44716
.b19293:
	addi	r28, r28, -1				# 44992
	cmpi	r28, 0
	bge		.b19283				# 44862
	b		.b19281
.b19295:
	mv		r62, r4
	addi	r4, r4, 3				# 44588
	sw		r13, 0(r62)				# 44588
	sw		r13, 1(r62)				# 44588
	sw		r13, 2(r62)				# 44588
	mv		r15, r4
	add		r4, r4, r54				# 44623
	addi	r51, r54, -1				# 44623
	addi	r9, r0, 0				# 44623
	cmp		r9, r51
	ble		.b19299				# 44623
.b19297:
	mv		r9, r4
	addi	r4, r4, 2				# 44656
	sw		r62, 0(r9)				# 44656
	sw		r15, 1(r9)				# 44656
	swx		r9, r10, r61				# 44741
	addi	r10, r10, -1				# 44775
	cmpi	r10, 0
	bge		.b19295				# 44716
	b		.b19293
.b19299:
	swx		r62, r9, r15				# 44623
	addi	r9, r9, 1				# 44623
	cmp		r9, r51
	ble		.b19299				# 44623
	b		.b19297
.b19291:
	swx		r15, r9, r61				# 44906
	addi	r9, r9, 1				# 44906
	cmp		r9, r62
	ble		.b19291				# 44906
	b		.b19289
.b19287:
	swx		r9, r61, r62				# 44623
	addi	r61, r61, 1				# 44623
	cmp		r61, r15
	ble		.b19287				# 44623
	b		.b19285
.b19262:
	addi	r28, r28, 1				# 12563
	cmpi	r28, 60
	bge		.b19206				# 12512
	b		.b19209
.b19252:
	cmpi	r54, 0
	beq		.b19255				# 12335
.b19256:
	addi	r62, r0, 0				# 12335
.b19254:
	lw		r9, 0(r15)				# 1729
	fmul	r61, r9, r9				# 1729
	lw		r9, 1(r15)				# 1743
	fmul	r9, r9, r9				# 1729
	fadd	r9, r61, r9				# 1729
	lw		r61, 2(r15)				# 1757
	fmul	r61, r61, r61				# 1729
	fadd	r9, r9, r61				# 1723
	fsqrt	r61, r9				# 227
	fcmp	r61, r41
	beq		.b19258				# 3126
.b19259:
	cmpi	r62, 0
	beq		.b19260				# 1810
.b19261:
	addis	r9, r0, 49024
	ori		r9, r9, 0				# 1822
	fdiv	r61, r9, r61				# 1822
.b19257:
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
	beq		.b19262				# 12371
	b		.b19264
.b19260:
	addis	r9, r0, 16256
	ori		r9, r9, 0				# 1837
	fdiv	r61, r9, r61				# 1837
	b		.b19257				# 1837
.b19258:
	addis	r61, r0, 16256
	ori		r61, r61, 0				# 1801
	b		.b19257				# 1801
.b19255:
	addi	r62, r0, 1				# 12335
	b		.b19254				# 12335
.b19226:
	lw		r61, 0(r15)				# 12053
	fcmp	r61, r41
	beq		.b19229				# 3126
.b19230:
	fcmp	r61, r41
	beq		.b19232				# 3126
.b19233:
	fcmp	r61, r41
	ble		.b19234				# 3156
.b19235:
	addis	r9, r0, 16256
	ori		r9, r9, 0				# 856
.b19231:
	fmul	r61, r61, r61				# 12112
	fdiv	r9, r9, r61				# 12112
	sw		r9, 0(r15)				# 12074
	lw		r9, 1(r15)				# 12132
	fcmp	r9, r41
	beq		.b19237				# 3126
.b19238:
	fcmp	r9, r41
	beq		.b19240				# 3126
.b19241:
	fcmp	r9, r41
	ble		.b19242				# 3156
.b19243:
	addis	r61, r0, 16256
	ori		r61, r61, 0				# 856
.b19239:
	fmul	r9, r9, r9				# 12191
	fdiv	r9, r61, r9				# 12191
	sw		r9, 1(r15)				# 12153
	lw		r9, 2(r15)				# 12210
	fcmp	r9, r41
	beq		.b19245				# 3126
.b19246:
	fcmp	r9, r41
	beq		.b19248				# 3126
.b19249:
	fcmp	r9, r41
	ble		.b19250				# 3156
.b19251:
	addis	r61, r0, 16256
	ori		r61, r61, 0				# 856
.b19247:
	fmul	r9, r9, r9				# 12269
	fdiv	r9, r61, r9				# 12269
	sw		r9, 2(r15)				# 12231
	cmpi	r37, 0
	beq		.b19262				# 12371
	b		.b19264
.b19250:
	addis	r61, r0, 49024
	ori		r61, r61, 0				# 868
	b		.b19247				# 868
.b19248:
	addi	r61, r0, 0				# 828
	b		.b19247				# 828
.b19245:
	addi	r9, r0, 0				# 12260
	sw		r9, 2(r15)				# 12231
	cmpi	r37, 0
	beq		.b19262				# 12371
	b		.b19264
.b19242:
	addis	r61, r0, 49024
	ori		r61, r61, 0				# 868
	b		.b19239				# 868
.b19240:
	addi	r61, r0, 0				# 828
	b		.b19239				# 828
.b19237:
	addi	r9, r0, 0				# 12182
	sw		r9, 1(r15)				# 12153
	lw		r9, 2(r15)				# 12210
	fcmp	r9, r41
	beq		.b19245				# 3126
	b		.b19246
.b19234:
	addis	r9, r0, 49024
	ori		r9, r9, 0				# 868
	b		.b19231				# 868
.b19232:
	addi	r9, r0, 0				# 828
	b		.b19231				# 828
.b19229:
	addi	r9, r0, 0				# 12103
	sw		r9, 0(r15)				# 12074
	lw		r9, 1(r15)				# 12132
	fcmp	r9, r41
	beq		.b19237				# 3126
	b		.b19238
.b19223:
	swx		r41, r61, r62				# 11762
	addi	r61, r61, 1				# 11762
	cmp		r61, r57
	ble		.b19223				# 11762
	b		.b19221
.b19219:
	addi	r7, r0, 1				# 11723
	b		.b19218				# 11723
.b19215:
	cmpi	r26, 2
	beq		.b19219				# 11706
	b		.b19220
.b19213:
	addi	r54, r0, 0				# 3186
	b		.b19212				# 3186
.b19210:
	lli		r9, n_objects.2480				# 12598
	sw		r28, 0(r9)				# 12598
	addi	r9, r0, 0				# 13110
	b		T.loop19266				# 0
.b19204:
	swx		r30, r9, r28				# 2622
	addi	r9, r9, 1				# 2622
	cmpi	r9, 59
	ble		.b19204				# 2622
	b		.b19202
	# main program end
_min_caml_end:
	flush
	halt
	halt
	halt
# === .data section ===
	.data
n_objects.2480:
	.size 1
dummy.2483:
	.size 1
Tt267.2490:
	.size 1
objects.2491:
	.size 60
screen.2494:
	.size 3
viewpoint.2497:
	.size 3
light.2500:
	.size 3
beam.2503:
	.size 1
and_net.2509:
	.size 50
Ta283.2513:
	.size 1
or_net.2515:
	.size 1
solver_dist.2518:
	.size 1
intsec_rectside.2521:
	.size 1
tmin.2524:
	.size 1
intersection_point.2527:
	.size 1
intersected_object_id.2530:
	.size 1
nvector.2533:
	.size 3
texture_color.2536:
	.size 3
diffuse_ray.2539:
	.size 3
rgb.2542:
	.size 3
image_size.2545:
	.size 2
image_center.2548:
	.size 2
scan_pitch.2551:
	.size 1
startp.2554:
	.size 1
startp_fast.2557:
	.size 3
screenx_dir.2560:
	.size 3
screeny_dir.2563:
	.size 3
screenz_dir.2566:
	.size 3
ptrace_dirvec.2569:
	.size 1
dummyf.2572:
	.size 1
dummyff.2574:
	.size 1
Tt326.2576:
	.size 1
dirvecs.2579:
	.size 5
dummyf2.2582:
	.size 1
v3.2585:
	.size 1
consts.2587:
	.size 1
light_dirvec.2588:
	.size 1
dummyf3.2591:
	.size 1
dummyff3.2593:
	.size 1
dummydv.2594:
	.size 1
Tt339.2598:
	.size 1
reflections.2599:
	.size 180
n_reflections.2602:
	.size 1
