	.data
	.literal4
	.align 2
l.12803:	 # 128.000000
	.long	1124073472
	.align 2
l.12785:	 # 1000000000.000000
	.long	1315859240
	.align 2
l.12679:	 # 0.900000
	.long	1063675494
	.align 2
l.12678:	 # 0.200000
	.long	1045220557
	.align 2
l.12374:	 # 150.000000
	.long	1125515264
	.align 2
l.12350:	 # -150.000000
	.long	-1021968384
	.align 2
l.12324:	 # 0.100000
	.long	1036831949
	.align 2
l.12271:	 # -2.000000
	.long	-1073741824
	.align 2
l.12257:	 # 0.003906
	.long	998244352
	.align 2
l.12182:	 # 100000000.000000
	.long	1287568416
	.align 2
l.12176:	 # 255.000000
	.long	1132396544
	.align 2
l.12173:	 # 20.000000
	.long	1101004800
	.align 2
l.12172:	 # 0.050000
	.long	1028443341
	.align 2
l.12167:	 # 0.250000
	.long	1048576000
	.align 2
l.12163:	 # 10.000000
	.long	1092616192
	.align 2
l.12157:	 # 0.300000
	.long	1050253722
	.align 2
l.12156:	 # 0.500000
	.long	1056964608
	.align 2
l.12155:	 # 0.150000
	.long	1041865114
	.align 2
l.12151:	 # 3.141593
	.long	1078530011
	.align 2
l.12150:	 # 30.000000
	.long	1106247680
	.align 2
l.12149:	 # 15.000000
	.long	1097859072
	.align 2
l.12148:	 # 0.000100
	.long	953267991
	.align 2
l.11949:	 # -0.100000
	.long	-1110651699
	.align 2
l.11923:	 # 0.010000
	.long	1008981770
	.align 2
l.11922:	 # -0.200000
	.long	-1102263091
	.align 2
l.11675:	 # -200.000000
	.long	-1018691584
	.align 2
l.11673:	 # 200.000000
	.long	1128792064
	.align 2
l.11658:	 # 0.000000
	.long	1056964608
	.align 2
l.11650:	 # -1.000000
	.long	-1082130432
	.align 2
l.11649:	 # 1.000000
	.long	1065353216
	.align 2
l.11629:	 # 0.017453
	.long	1016003125
	.align 2
l.11614:	 # 2.000000
	.long	1073741824
	.text
	.globl _min_caml_start
	.align 2
rotate_quadratic_matrix.2595:
	lwz	r6, 12(r30)				# 601
	lwz	r7, 8(r30)				# 601
	lwz	r8, 4(r30)				# 601
	slwi	r9, r7, 2				# 603
	lfsx	f0, r5, r9				# 603
	stw	r2, 0(r3)				# 603
	stw	r6, 4(r3)				# 603
	stw	r8, 8(r3)				# 603
	stw	r5, 12(r3)				# 603
	stw	r7, 16(r3)				# 603
	mfspr	r31, 8				# 603
	stw	r31, 20(r3)				# 603
	addi	r3, r3, 24				# 603
	bl	min_caml_cos				# 603
	addi	r3, r3, -24				# 603
	lwz	r31, 20(r3)				# 603
	mtspr	8, r31				# 603
	lwz	r2, 16(r3)				# 604
	slwi	r5, r2, 2				# 604
	lwz	r6, 12(r3)				# 604
	lfsx	f1, r6, r5				# 604
	stfs	f0, 24(r3)				# 604
	mfspr	r31, 8				# 604
	fmr	f0, f1				# 604
	stw	r31, 32(r3)				# 604
	addi	r3, r3, 36				# 604
	bl	min_caml_sin				# 604
	addi	r3, r3, -36				# 604
	lwz	r31, 32(r3)				# 604
	mtspr	8, r31				# 604
	lwz	r2, 8(r3)				# 605
	slwi	r5, r2, 2				# 605
	lwz	r6, 12(r3)				# 605
	lfsx	f1, r6, r5				# 605
	stfs	f0, 32(r3)				# 605
	mfspr	r31, 8				# 605
	fmr	f0, f1				# 605
	stw	r31, 40(r3)				# 605
	addi	r3, r3, 44				# 605
	bl	min_caml_cos				# 605
	addi	r3, r3, -44				# 605
	lwz	r31, 40(r3)				# 605
	mtspr	8, r31				# 605
	lwz	r2, 8(r3)				# 606
	slwi	r5, r2, 2				# 606
	lwz	r6, 12(r3)				# 606
	lfsx	f1, r6, r5				# 606
	stfs	f0, 40(r3)				# 606
	mfspr	r31, 8				# 606
	fmr	f0, f1				# 606
	stw	r31, 48(r3)				# 606
	addi	r3, r3, 52				# 606
	bl	min_caml_sin				# 606
	addi	r3, r3, -52				# 606
	lwz	r31, 48(r3)				# 606
	mtspr	8, r31				# 606
	lwz	r2, 4(r3)				# 607
	slwi	r5, r2, 2				# 607
	lwz	r6, 12(r3)				# 607
	lfsx	f1, r6, r5				# 607
	stfs	f0, 48(r3)				# 607
	mfspr	r31, 8				# 607
	fmr	f0, f1				# 607
	stw	r31, 56(r3)				# 607
	addi	r3, r3, 60				# 607
	bl	min_caml_cos				# 607
	addi	r3, r3, -60				# 607
	lwz	r31, 56(r3)				# 607
	mtspr	8, r31				# 607
	lwz	r2, 4(r3)				# 608
	slwi	r5, r2, 2				# 608
	lwz	r6, 12(r3)				# 608
	lfsx	f1, r6, r5				# 608
	stfs	f0, 56(r3)				# 608
	mfspr	r31, 8				# 608
	fmr	f0, f1				# 608
	stw	r31, 64(r3)				# 608
	addi	r3, r3, 68				# 608
	bl	min_caml_sin				# 608
	addi	r3, r3, -68				# 608
	lwz	r31, 64(r3)				# 608
	mtspr	8, r31				# 608
	lfs	f1, 56(r3)				# 610
	lfs	f2, 40(r3)				# 610
	fmul	f3, f2, f1				# 610
	lfs	f4, 48(r3)				# 611
	lfs	f5, 32(r3)				# 611
	fmul	f6, f5, f4				# 611
	fmul	f7, f6, f1				# 611
	lfs	f8, 24(r3)				# 611
	fmul	f9, f8, f0				# 611
	fsub	f7, f7, f9				# 611
	fmul	f9, f8, f4				# 612
	fmul	f10, f9, f1				# 612
	fmul	f11, f5, f0				# 612
	fadd	f10, f10, f11				# 612
	fmul	f11, f2, f0				# 614
	fmul	f6, f6, f0				# 615
	fmul	f12, f8, f1				# 615
	fadd	f6, f6, f12				# 615
	fmul	f0, f9, f0				# 616
	fmul	f1, f5, f1				# 616
	fsub	f0, f0, f1				# 616
	stfs	f0, 64(r3)				# 618
	stfs	f10, 72(r3)				# 618
	stfs	f6, 80(r3)				# 618
	stfs	f7, 88(r3)				# 618
	stfs	f11, 96(r3)				# 618
	stfs	f3, 104(r3)				# 618
	mfspr	r31, 8				# 618
	fmr	f0, f4				# 618
	stw	r31, 112(r3)				# 618
	addi	r3, r3, 116				# 618
	bl	min_caml_fneg				# 618
	addi	r3, r3, -116				# 618
	lwz	r31, 112(r3)				# 618
	mtspr	8, r31				# 618
	lfs	f1, 40(r3)				# 619
	lfs	f2, 32(r3)				# 619
	fmul	f2, f2, f1				# 619
	lfs	f3, 24(r3)				# 620
	fmul	f1, f3, f1				# 620
	lwz	r2, 16(r3)				# 623
	slwi	r5, r2, 2				# 623
	lwz	r6, 0(r3)				# 623
	lfsx	f3, r6, r5				# 623
	lwz	r5, 8(r3)				# 624
	slwi	r7, r5, 2				# 624
	lfsx	f4, r6, r7				# 624
	lwz	r7, 4(r3)				# 625
	slwi	r8, r7, 2				# 625
	lfsx	f5, r6, r8				# 625
	lfs	f6, 104(r3)				# 630
	stfs	f1, 112(r3)				# 630
	stfs	f2, 120(r3)				# 630
	stfs	f5, 128(r3)				# 630
	stfs	f0, 136(r3)				# 630
	stfs	f4, 144(r3)				# 630
	stfs	f3, 152(r3)				# 630
	mfspr	r31, 8				# 630
	fmr	f0, f6				# 630
	stw	r31, 160(r3)				# 630
	addi	r3, r3, 164				# 630
	bl	min_caml_fsqr				# 630
	addi	r3, r3, -164				# 630
	lwz	r31, 160(r3)				# 630
	mtspr	8, r31				# 630
	lfs	f1, 152(r3)				# 630
	fmul	f0, f1, f0				# 630
	lfs	f2, 96(r3)				# 630
	stfs	f0, 160(r3)				# 630
	mfspr	r31, 8				# 630
	fmr	f0, f2				# 630
	stw	r31, 168(r3)				# 630
	addi	r3, r3, 172				# 630
	bl	min_caml_fsqr				# 630
	addi	r3, r3, -172				# 630
	lwz	r31, 168(r3)				# 630
	mtspr	8, r31				# 630
	lfs	f1, 144(r3)				# 630
	fmul	f0, f1, f0				# 630
	lfs	f2, 160(r3)				# 630
	fadd	f0, f2, f0				# 630
	lfs	f2, 136(r3)				# 630
	stfs	f0, 168(r3)				# 630
	mfspr	r31, 8				# 630
	fmr	f0, f2				# 630
	stw	r31, 176(r3)				# 630
	addi	r3, r3, 180				# 630
	bl	min_caml_fsqr				# 630
	addi	r3, r3, -180				# 630
	lwz	r31, 176(r3)				# 630
	mtspr	8, r31				# 630
	lfs	f1, 128(r3)				# 630
	fmul	f0, f1, f0				# 630
	lfs	f2, 168(r3)				# 630
	fadd	f0, f2, f0				# 630
	lwz	r2, 16(r3)				# 630
	slwi	r5, r2, 2				# 630
	lwz	r6, 0(r3)				# 630
	stfsx	f0, r6, r5				# 630
	lfs	f0, 88(r3)				# 631
	mfspr	r31, 8				# 631
	stw	r31, 176(r3)				# 631
	addi	r3, r3, 180				# 631
	bl	min_caml_fsqr				# 631
	addi	r3, r3, -180				# 631
	lwz	r31, 176(r3)				# 631
	mtspr	8, r31				# 631
	lfs	f1, 152(r3)				# 631
	fmul	f0, f1, f0				# 631
	lfs	f2, 80(r3)				# 631
	stfs	f0, 176(r3)				# 631
	mfspr	r31, 8				# 631
	fmr	f0, f2				# 631
	stw	r31, 184(r3)				# 631
	addi	r3, r3, 188				# 631
	bl	min_caml_fsqr				# 631
	addi	r3, r3, -188				# 631
	lwz	r31, 184(r3)				# 631
	mtspr	8, r31				# 631
	lfs	f1, 144(r3)				# 631
	fmul	f0, f1, f0				# 631
	lfs	f2, 176(r3)				# 631
	fadd	f0, f2, f0				# 631
	lfs	f2, 120(r3)				# 631
	stfs	f0, 184(r3)				# 631
	mfspr	r31, 8				# 631
	fmr	f0, f2				# 631
	stw	r31, 192(r3)				# 631
	addi	r3, r3, 196				# 631
	bl	min_caml_fsqr				# 631
	addi	r3, r3, -196				# 631
	lwz	r31, 192(r3)				# 631
	mtspr	8, r31				# 631
	lfs	f1, 128(r3)				# 631
	fmul	f0, f1, f0				# 631
	lfs	f2, 184(r3)				# 631
	fadd	f0, f2, f0				# 631
	lwz	r2, 8(r3)				# 631
	slwi	r5, r2, 2				# 631
	lwz	r6, 0(r3)				# 631
	stfsx	f0, r6, r5				# 631
	lfs	f0, 72(r3)				# 632
	mfspr	r31, 8				# 632
	stw	r31, 192(r3)				# 632
	addi	r3, r3, 196				# 632
	bl	min_caml_fsqr				# 632
	addi	r3, r3, -196				# 632
	lwz	r31, 192(r3)				# 632
	mtspr	8, r31				# 632
	lfs	f1, 152(r3)				# 632
	fmul	f0, f1, f0				# 632
	lfs	f2, 64(r3)				# 632
	stfs	f0, 192(r3)				# 632
	mfspr	r31, 8				# 632
	fmr	f0, f2				# 632
	stw	r31, 200(r3)				# 632
	addi	r3, r3, 204				# 632
	bl	min_caml_fsqr				# 632
	addi	r3, r3, -204				# 632
	lwz	r31, 200(r3)				# 632
	mtspr	8, r31				# 632
	lfs	f1, 144(r3)				# 632
	fmul	f0, f1, f0				# 632
	lfs	f2, 192(r3)				# 632
	fadd	f0, f2, f0				# 632
	lfs	f2, 112(r3)				# 632
	stfs	f0, 200(r3)				# 632
	mfspr	r31, 8				# 632
	fmr	f0, f2				# 632
	stw	r31, 208(r3)				# 632
	addi	r3, r3, 212				# 632
	bl	min_caml_fsqr				# 632
	addi	r3, r3, -212				# 632
	lwz	r31, 208(r3)				# 632
	mtspr	8, r31				# 632
	lfs	f1, 128(r3)				# 632
	fmul	f0, f1, f0				# 632
	lfs	f2, 200(r3)				# 632
	fadd	f0, f2, f0				# 632
	lwz	r2, 4(r3)				# 632
	slwi	r5, r2, 2				# 632
	lwz	r6, 0(r3)				# 632
	stfsx	f0, r6, r5				# 632
	lis	r31, ha16(l.11614)
	addi	r31, r31, lo16(l.11614)
	lfs	f0, 0(r31)				# 635
	lfs	f2, 88(r3)				# 635
	lfs	f3, 152(r3)				# 635
	fmul	f4, f3, f2				# 635
	lfs	f5, 72(r3)				# 635
	fmul	f4, f4, f5				# 635
	lfs	f6, 80(r3)				# 635
	lfs	f7, 144(r3)				# 635
	fmul	f8, f7, f6				# 635
	lfs	f9, 64(r3)				# 635
	fmul	f8, f8, f9				# 635
	fadd	f4, f4, f8				# 635
	lfs	f8, 120(r3)				# 635
	fmul	f10, f1, f8				# 635
	lfs	f11, 112(r3)				# 635
	fmul	f10, f10, f11				# 635
	fadd	f4, f4, f10				# 635
	fmul	f4, f0, f4				# 635
	lwz	r5, 16(r3)				# 635
	slwi	r5, r5, 2				# 635
	lwz	r6, 12(r3)				# 635
	stfsx	f4, r6, r5				# 635
	lfs	f4, 104(r3)				# 636
	fmul	f3, f3, f4				# 636
	fmul	f4, f3, f5				# 636
	lfs	f5, 96(r3)				# 636
	fmul	f5, f7, f5				# 636
	fmul	f7, f5, f9				# 636
	fadd	f4, f4, f7				# 636
	lfs	f7, 136(r3)				# 636
	fmul	f1, f1, f7				# 636
	fmul	f7, f1, f11				# 636
	fadd	f4, f4, f7				# 636
	fmul	f4, f0, f4				# 636
	lwz	r5, 8(r3)				# 636
	slwi	r5, r5, 2				# 636
	stfsx	f4, r6, r5				# 636
	fmul	f2, f3, f2				# 637
	fmul	f3, f5, f6				# 637
	fadd	f2, f2, f3				# 637
	fmul	f1, f1, f8				# 637
	fadd	f1, f2, f1				# 637
	fmul	f0, f0, f1				# 637
	slwi	r2, r2, 2				# 637
	stfsx	f0, r6, r2				# 637
	blr
read_nth_object.2598:
	lwz	r5, 32(r30)				# 642
	lwz	r6, 28(r30)				# 642
	lwz	r7, 24(r30)				# 642
	lwz	r8, 20(r30)				# 642
	lwz	r9, 16(r30)				# 642
	lwz	r10, 12(r30)				# 642
	lwz	r11, 8(r30)				# 642
	lfs	f0, 4(r30)				# 642
	stw	r5, 0(r3)				# 644
	stw	r6, 4(r3)				# 644
	stw	r2, 8(r3)				# 644
	stw	r7, 12(r3)				# 644
	stw	r11, 16(r3)				# 644
	stw	r10, 20(r3)				# 644
	stfs	f0, 24(r3)				# 644
	stw	r9, 32(r3)				# 644
	stw	r8, 36(r3)				# 644
	mfspr	r31, 8				# 644
	stw	r31, 40(r3)				# 644
	addi	r3, r3, 44				# 644
	bl	min_caml_read_int				# 644
	addi	r3, r3, -44				# 644
	lwz	r31, 40(r3)				# 644
	mtspr	8, r31				# 644
	lwz	r5, 36(r3)				# 645
	cmpw	cr7, r2, r5				# 645
	bne	cr7, beq_else.17610				# 645
	addi	r2, 0, 0
	blr
beq_else.17610:
	stw	r2, 40(r3)				# 647
	mfspr	r31, 8				# 647
	stw	r31, 44(r3)				# 647
	addi	r3, r3, 48				# 647
	bl	min_caml_read_int				# 647
	addi	r3, r3, -48				# 647
	lwz	r31, 44(r3)				# 647
	mtspr	8, r31				# 647
	stw	r2, 44(r3)				# 648
	mfspr	r31, 8				# 648
	stw	r31, 48(r3)				# 648
	addi	r3, r3, 52				# 648
	bl	min_caml_read_int				# 648
	addi	r3, r3, -52				# 648
	lwz	r31, 48(r3)				# 648
	mtspr	8, r31				# 648
	stw	r2, 48(r3)				# 649
	mfspr	r31, 8				# 649
	stw	r31, 52(r3)				# 649
	addi	r3, r3, 56				# 649
	bl	min_caml_read_int				# 649
	addi	r3, r3, -56				# 649
	lwz	r31, 52(r3)				# 649
	mtspr	8, r31				# 649
	lfs	f0, 24(r3)				# 651
	lwz	r5, 32(r3)				# 651
	stw	r2, 52(r3)				# 651
	mfspr	r31, 8				# 651
	mr	r2, r5				# 651
	stw	r31, 56(r3)				# 651
	addi	r3, r3, 60				# 651
	bl	min_caml_create_float_array				# 651
	addi	r3, r3, -60				# 651
	lwz	r31, 56(r3)				# 651
	mtspr	8, r31				# 651
	stw	r2, 56(r3)				# 652
	mfspr	r31, 8				# 652
	stw	r31, 60(r3)				# 652
	addi	r3, r3, 64				# 652
	bl	min_caml_read_float				# 652
	addi	r3, r3, -64				# 652
	lwz	r31, 60(r3)				# 652
	mtspr	8, r31				# 652
	lwz	r2, 20(r3)				# 652
	slwi	r5, r2, 2				# 652
	lwz	r6, 56(r3)				# 652
	stfsx	f0, r6, r5				# 652
	mfspr	r31, 8				# 653
	stw	r31, 60(r3)				# 653
	addi	r3, r3, 64				# 653
	bl	min_caml_read_float				# 653
	addi	r3, r3, -64				# 653
	lwz	r31, 60(r3)				# 653
	mtspr	8, r31				# 653
	lwz	r2, 16(r3)				# 653
	slwi	r5, r2, 2				# 653
	lwz	r6, 56(r3)				# 653
	stfsx	f0, r6, r5				# 653
	mfspr	r31, 8				# 654
	stw	r31, 60(r3)				# 654
	addi	r3, r3, 64				# 654
	bl	min_caml_read_float				# 654
	addi	r3, r3, -64				# 654
	lwz	r31, 60(r3)				# 654
	mtspr	8, r31				# 654
	lwz	r2, 12(r3)				# 654
	slwi	r5, r2, 2				# 654
	lwz	r6, 56(r3)				# 654
	stfsx	f0, r6, r5				# 654
	lfs	f0, 24(r3)				# 656
	lwz	r5, 32(r3)				# 656
	mfspr	r31, 8				# 656
	mr	r2, r5				# 656
	stw	r31, 60(r3)				# 656
	addi	r3, r3, 64				# 656
	bl	min_caml_create_float_array				# 656
	addi	r3, r3, -64				# 656
	lwz	r31, 60(r3)				# 656
	mtspr	8, r31				# 656
	stw	r2, 60(r3)				# 657
	mfspr	r31, 8				# 657
	stw	r31, 64(r3)				# 657
	addi	r3, r3, 68				# 657
	bl	min_caml_read_float				# 657
	addi	r3, r3, -68				# 657
	lwz	r31, 64(r3)				# 657
	mtspr	8, r31				# 657
	lwz	r2, 20(r3)				# 657
	slwi	r5, r2, 2				# 657
	lwz	r6, 60(r3)				# 657
	stfsx	f0, r6, r5				# 657
	mfspr	r31, 8				# 658
	stw	r31, 64(r3)				# 658
	addi	r3, r3, 68				# 658
	bl	min_caml_read_float				# 658
	addi	r3, r3, -68				# 658
	lwz	r31, 64(r3)				# 658
	mtspr	8, r31				# 658
	lwz	r2, 16(r3)				# 658
	slwi	r5, r2, 2				# 658
	lwz	r6, 60(r3)				# 658
	stfsx	f0, r6, r5				# 658
	mfspr	r31, 8				# 659
	stw	r31, 64(r3)				# 659
	addi	r3, r3, 68				# 659
	bl	min_caml_read_float				# 659
	addi	r3, r3, -68				# 659
	lwz	r31, 64(r3)				# 659
	mtspr	8, r31				# 659
	lwz	r2, 12(r3)				# 659
	slwi	r5, r2, 2				# 659
	lwz	r6, 60(r3)				# 659
	stfsx	f0, r6, r5				# 659
	mfspr	r31, 8				# 661
	stw	r31, 64(r3)				# 661
	addi	r3, r3, 68				# 661
	bl	min_caml_read_float				# 661
	addi	r3, r3, -68				# 661
	lwz	r31, 64(r3)				# 661
	mtspr	8, r31				# 661
	mfspr	r31, 8				# 661
	stw	r31, 64(r3)				# 661
	addi	r3, r3, 68				# 661
	bl	min_caml_fisneg				# 661
	addi	r3, r3, -68				# 661
	lwz	r31, 64(r3)				# 661
	mtspr	8, r31				# 661
	lfs	f0, 24(r3)				# 663
	lwz	r5, 12(r3)				# 663
	stw	r2, 64(r3)				# 663
	mfspr	r31, 8				# 663
	mr	r2, r5				# 663
	stw	r31, 68(r3)				# 663
	addi	r3, r3, 72				# 663
	bl	min_caml_create_float_array				# 663
	addi	r3, r3, -72				# 663
	lwz	r31, 68(r3)				# 663
	mtspr	8, r31				# 663
	stw	r2, 68(r3)				# 664
	mfspr	r31, 8				# 664
	stw	r31, 72(r3)				# 664
	addi	r3, r3, 76				# 664
	bl	min_caml_read_float				# 664
	addi	r3, r3, -76				# 664
	lwz	r31, 72(r3)				# 664
	mtspr	8, r31				# 664
	lwz	r2, 20(r3)				# 664
	slwi	r5, r2, 2				# 664
	lwz	r6, 68(r3)				# 664
	stfsx	f0, r6, r5				# 664
	mfspr	r31, 8				# 665
	stw	r31, 72(r3)				# 665
	addi	r3, r3, 76				# 665
	bl	min_caml_read_float				# 665
	addi	r3, r3, -76				# 665
	lwz	r31, 72(r3)				# 665
	mtspr	8, r31				# 665
	lwz	r2, 16(r3)				# 665
	slwi	r5, r2, 2				# 665
	lwz	r6, 68(r3)				# 665
	stfsx	f0, r6, r5				# 665
	lfs	f0, 24(r3)				# 667
	lwz	r5, 32(r3)				# 667
	mfspr	r31, 8				# 667
	mr	r2, r5				# 667
	stw	r31, 72(r3)				# 667
	addi	r3, r3, 76				# 667
	bl	min_caml_create_float_array				# 667
	addi	r3, r3, -76				# 667
	lwz	r31, 72(r3)				# 667
	mtspr	8, r31				# 667
	stw	r2, 72(r3)				# 668
	mfspr	r31, 8				# 668
	stw	r31, 76(r3)				# 668
	addi	r3, r3, 80				# 668
	bl	min_caml_read_float				# 668
	addi	r3, r3, -80				# 668
	lwz	r31, 76(r3)				# 668
	mtspr	8, r31				# 668
	lwz	r2, 20(r3)				# 668
	slwi	r5, r2, 2				# 668
	lwz	r6, 72(r3)				# 668
	stfsx	f0, r6, r5				# 668
	mfspr	r31, 8				# 669
	stw	r31, 76(r3)				# 669
	addi	r3, r3, 80				# 669
	bl	min_caml_read_float				# 669
	addi	r3, r3, -80				# 669
	lwz	r31, 76(r3)				# 669
	mtspr	8, r31				# 669
	lwz	r2, 16(r3)				# 669
	slwi	r5, r2, 2				# 669
	lwz	r6, 72(r3)				# 669
	stfsx	f0, r6, r5				# 669
	mfspr	r31, 8				# 670
	stw	r31, 76(r3)				# 670
	addi	r3, r3, 80				# 670
	bl	min_caml_read_float				# 670
	addi	r3, r3, -80				# 670
	lwz	r31, 76(r3)				# 670
	mtspr	8, r31				# 670
	lwz	r2, 12(r3)				# 670
	slwi	r5, r2, 2				# 670
	lwz	r6, 72(r3)				# 670
	stfsx	f0, r6, r5				# 670
	lfs	f0, 24(r3)				# 672
	lwz	r5, 32(r3)				# 672
	mfspr	r31, 8				# 672
	mr	r2, r5				# 672
	stw	r31, 76(r3)				# 672
	addi	r3, r3, 80				# 672
	bl	min_caml_create_float_array				# 672
	addi	r3, r3, -80				# 672
	lwz	r31, 76(r3)				# 672
	mtspr	8, r31				# 672
	lwz	r5, 20(r3)				# 673
	lwz	r6, 52(r3)				# 673
	stw	r2, 76(r3)				# 673
	cmpw	cr7, r6, r5				# 673
	bne	cr7, beq_else.17611				# 673
	b	beq_cont.17612				# 673
beq_else.17611:
	mfspr	r31, 8				# 675
	stw	r31, 80(r3)				# 675
	addi	r3, r3, 84				# 675
	bl	min_caml_read_float				# 675
	addi	r3, r3, -84				# 675
	lwz	r31, 80(r3)				# 675
	mtspr	8, r31				# 675
	lis	r31, ha16(l.11629)
	addi	r31, r31, lo16(l.11629)
	lfs	f1, 0(r31)				# 542
	fmul	f0, f0, f1				# 542
	lwz	r2, 20(r3)				# 675
	slwi	r5, r2, 2				# 675
	lwz	r6, 76(r3)				# 675
	stfsx	f0, r6, r5				# 675
	stfs	f1, 80(r3)				# 676
	mfspr	r31, 8				# 676
	stw	r31, 88(r3)				# 676
	addi	r3, r3, 92				# 676
	bl	min_caml_read_float				# 676
	addi	r3, r3, -92				# 676
	lwz	r31, 88(r3)				# 676
	mtspr	8, r31				# 676
	lfs	f1, 80(r3)				# 542
	fmul	f0, f0, f1				# 542
	lwz	r2, 16(r3)				# 676
	slwi	r5, r2, 2				# 676
	lwz	r6, 76(r3)				# 676
	stfsx	f0, r6, r5				# 676
	mfspr	r31, 8				# 677
	stw	r31, 88(r3)				# 677
	addi	r3, r3, 92				# 677
	bl	min_caml_read_float				# 677
	addi	r3, r3, -92				# 677
	lwz	r31, 88(r3)				# 677
	mtspr	8, r31				# 677
	lfs	f1, 80(r3)				# 542
	fmul	f0, f0, f1				# 542
	lwz	r2, 12(r3)				# 677
	slwi	r5, r2, 2				# 677
	lwz	r6, 76(r3)				# 677
	stfsx	f0, r6, r5				# 677
beq_cont.17612:
	lwz	r2, 12(r3)				# 684
	lwz	r5, 44(r3)				# 684
	cmpw	cr7, r5, r2				# 684
	bne	cr7, beq_else.17613				# 684
	addi	r6, 0, 1
	b	beq_cont.17614				# 684
beq_else.17613:
	lwz	r6, 64(r3)				# 684
beq_cont.17614:
	addi	r7, 0, 4
	lfs	f0, 24(r3)				# 685
	stw	r6, 88(r3)				# 685
	mfspr	r31, 8				# 685
	mr	r2, r7				# 685
	stw	r31, 92(r3)				# 685
	addi	r3, r3, 96				# 685
	bl	min_caml_create_float_array				# 685
	addi	r3, r3, -96				# 685
	lwz	r31, 92(r3)				# 685
	mtspr	8, r31				# 685
	mr	r5, r4				# 688
	addi	r4, r4, 44				# 688
	stw	r2, 40(r5)				# 688
	lwz	r2, 76(r3)				# 688
	stw	r2, 36(r5)				# 688
	lwz	r6, 72(r3)				# 688
	stw	r6, 32(r5)				# 688
	lwz	r6, 68(r3)				# 688
	stw	r6, 28(r5)				# 688
	lwz	r6, 88(r3)				# 688
	stw	r6, 24(r5)				# 688
	lwz	r6, 60(r3)				# 688
	stw	r6, 20(r5)				# 688
	lwz	r6, 56(r3)				# 688
	stw	r6, 16(r5)				# 688
	lwz	r7, 52(r3)				# 688
	stw	r7, 12(r5)				# 688
	lwz	r8, 48(r3)				# 688
	stw	r8, 8(r5)				# 688
	lwz	r8, 44(r3)				# 688
	stw	r8, 4(r5)				# 688
	lwz	r9, 40(r3)				# 688
	stw	r9, 0(r5)				# 688
	lwz	r9, 8(r3)				# 696
	slwi	r9, r9, 2				# 696
	lwz	r10, 4(r3)				# 696
	stwx	r5, r10, r9				# 696
	lwz	r5, 32(r3)				# 698
	cmpw	cr7, r8, r5				# 698
	bne	cr7, beq_else.17615				# 698
	lwz	r5, 20(r3)				# 701
	slwi	r8, r5, 2				# 701
	lfsx	f0, r6, r8				# 701
	stfs	f0, 96(r3)				# 702
	mfspr	r31, 8				# 702
	stw	r31, 104(r3)				# 702
	addi	r3, r3, 108				# 702
	bl	min_caml_fiszero				# 702
	addi	r3, r3, -108				# 702
	lwz	r31, 104(r3)				# 702
	mtspr	8, r31				# 702
	lwz	r5, 20(r3)				# 702
	cmpw	cr7, r2, r5				# 702
	bne	cr7, beq_else.17618				# 702
	lfs	f0, 96(r3)				# 112
	mfspr	r31, 8				# 112
	stw	r31, 104(r3)				# 112
	addi	r3, r3, 108				# 112
	bl	min_caml_fiszero				# 112
	addi	r3, r3, -108				# 112
	lwz	r31, 104(r3)				# 112
	mtspr	8, r31				# 112
	lwz	r5, 20(r3)				# 112
	cmpw	cr7, r2, r5				# 112
	bne	cr7, beq_else.17620				# 112
	lfs	f0, 96(r3)				# 113
	mfspr	r31, 8				# 113
	stw	r31, 104(r3)				# 113
	addi	r3, r3, 108				# 113
	bl	min_caml_fispos				# 113
	addi	r3, r3, -108				# 113
	lwz	r31, 104(r3)				# 113
	mtspr	8, r31				# 113
	lwz	r5, 20(r3)				# 113
	cmpw	cr7, r2, r5				# 113
	bne	cr7, beq_else.17622				# 113
	lis	r31, ha16(l.11650)
	addi	r31, r31, lo16(l.11650)
	lfs	f0, 0(r31)				# 114
	b	beq_cont.17623				# 113
beq_else.17622:
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 113
beq_cont.17623:
	b	beq_cont.17621				# 112
beq_else.17620:
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 112
beq_cont.17621:
	lfs	f1, 96(r3)				# 702
	stfs	f0, 104(r3)				# 702
	mfspr	r31, 8				# 702
	fmr	f0, f1				# 702
	stw	r31, 112(r3)				# 702
	addi	r3, r3, 116				# 702
	bl	min_caml_fsqr				# 702
	addi	r3, r3, -116				# 702
	lwz	r31, 112(r3)				# 702
	mtspr	8, r31				# 702
	lfs	f1, 104(r3)				# 702
	fdiv	f0, f1, f0				# 702
	b	beq_cont.17619				# 702
beq_else.17618:
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 702
beq_cont.17619:
	lwz	r2, 20(r3)				# 702
	slwi	r5, r2, 2				# 702
	lwz	r6, 56(r3)				# 702
	stfsx	f0, r6, r5				# 702
	lwz	r5, 16(r3)				# 703
	slwi	r7, r5, 2				# 703
	lfsx	f0, r6, r7				# 703
	stfs	f0, 112(r3)				# 704
	mfspr	r31, 8				# 704
	stw	r31, 120(r3)				# 704
	addi	r3, r3, 124				# 704
	bl	min_caml_fiszero				# 704
	addi	r3, r3, -124				# 704
	lwz	r31, 120(r3)				# 704
	mtspr	8, r31				# 704
	lwz	r5, 20(r3)				# 704
	cmpw	cr7, r2, r5				# 704
	bne	cr7, beq_else.17624				# 704
	lfs	f0, 112(r3)				# 112
	mfspr	r31, 8				# 112
	stw	r31, 120(r3)				# 112
	addi	r3, r3, 124				# 112
	bl	min_caml_fiszero				# 112
	addi	r3, r3, -124				# 112
	lwz	r31, 120(r3)				# 112
	mtspr	8, r31				# 112
	lwz	r5, 20(r3)				# 112
	cmpw	cr7, r2, r5				# 112
	bne	cr7, beq_else.17626				# 112
	lfs	f0, 112(r3)				# 113
	mfspr	r31, 8				# 113
	stw	r31, 120(r3)				# 113
	addi	r3, r3, 124				# 113
	bl	min_caml_fispos				# 113
	addi	r3, r3, -124				# 113
	lwz	r31, 120(r3)				# 113
	mtspr	8, r31				# 113
	lwz	r5, 20(r3)				# 113
	cmpw	cr7, r2, r5				# 113
	bne	cr7, beq_else.17628				# 113
	lis	r31, ha16(l.11650)
	addi	r31, r31, lo16(l.11650)
	lfs	f0, 0(r31)				# 114
	b	beq_cont.17629				# 113
beq_else.17628:
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 113
beq_cont.17629:
	b	beq_cont.17627				# 112
beq_else.17626:
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 112
beq_cont.17627:
	lfs	f1, 112(r3)				# 704
	stfs	f0, 120(r3)				# 704
	mfspr	r31, 8				# 704
	fmr	f0, f1				# 704
	stw	r31, 128(r3)				# 704
	addi	r3, r3, 132				# 704
	bl	min_caml_fsqr				# 704
	addi	r3, r3, -132				# 704
	lwz	r31, 128(r3)				# 704
	mtspr	8, r31				# 704
	lfs	f1, 120(r3)				# 704
	fdiv	f0, f1, f0				# 704
	b	beq_cont.17625				# 704
beq_else.17624:
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 704
beq_cont.17625:
	lwz	r2, 16(r3)				# 704
	slwi	r2, r2, 2				# 704
	lwz	r5, 56(r3)				# 704
	stfsx	f0, r5, r2				# 704
	lwz	r2, 12(r3)				# 705
	slwi	r6, r2, 2				# 705
	lfsx	f0, r5, r6				# 705
	stfs	f0, 128(r3)				# 706
	mfspr	r31, 8				# 706
	stw	r31, 136(r3)				# 706
	addi	r3, r3, 140				# 706
	bl	min_caml_fiszero				# 706
	addi	r3, r3, -140				# 706
	lwz	r31, 136(r3)				# 706
	mtspr	8, r31				# 706
	lwz	r5, 20(r3)				# 706
	cmpw	cr7, r2, r5				# 706
	bne	cr7, beq_else.17630				# 706
	lfs	f0, 128(r3)				# 112
	mfspr	r31, 8				# 112
	stw	r31, 136(r3)				# 112
	addi	r3, r3, 140				# 112
	bl	min_caml_fiszero				# 112
	addi	r3, r3, -140				# 112
	lwz	r31, 136(r3)				# 112
	mtspr	8, r31				# 112
	lwz	r5, 20(r3)				# 112
	cmpw	cr7, r2, r5				# 112
	bne	cr7, beq_else.17632				# 112
	lfs	f0, 128(r3)				# 113
	mfspr	r31, 8				# 113
	stw	r31, 136(r3)				# 113
	addi	r3, r3, 140				# 113
	bl	min_caml_fispos				# 113
	addi	r3, r3, -140				# 113
	lwz	r31, 136(r3)				# 113
	mtspr	8, r31				# 113
	lwz	r5, 20(r3)				# 113
	cmpw	cr7, r2, r5				# 113
	bne	cr7, beq_else.17634				# 113
	lis	r31, ha16(l.11650)
	addi	r31, r31, lo16(l.11650)
	lfs	f0, 0(r31)				# 114
	b	beq_cont.17635				# 113
beq_else.17634:
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 113
beq_cont.17635:
	b	beq_cont.17633				# 112
beq_else.17632:
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 112
beq_cont.17633:
	lfs	f1, 128(r3)				# 706
	stfs	f0, 136(r3)				# 706
	mfspr	r31, 8				# 706
	fmr	f0, f1				# 706
	stw	r31, 144(r3)				# 706
	addi	r3, r3, 148				# 706
	bl	min_caml_fsqr				# 706
	addi	r3, r3, -148				# 706
	lwz	r31, 144(r3)				# 706
	mtspr	8, r31				# 706
	lfs	f1, 136(r3)				# 706
	fdiv	f0, f1, f0				# 706
	b	beq_cont.17631				# 706
beq_else.17630:
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 706
beq_cont.17631:
	lwz	r2, 12(r3)				# 706
	slwi	r2, r2, 2				# 706
	lwz	r5, 56(r3)				# 706
	stfsx	f0, r5, r2				# 706
	b	beq_cont.17616				# 698
beq_else.17615:
	lwz	r5, 12(r3)				# 708
	cmpw	cr7, r8, r5				# 708
	bne	cr7, beq_else.17636				# 708
	lwz	r8, 20(r3)				# 710
	lwz	r9, 64(r3)				# 710
	cmpw	cr7, r9, r8				# 710
	bne	cr7, beq_else.17638				# 710
	addi	r9, 0, 1
	b	beq_cont.17639				# 710
beq_else.17638:
	addi	r9, 0, 0
beq_cont.17639:
	slwi	r10, r8, 2				# 173
	lfsx	f0, r6, r10				# 173
	stw	r9, 144(r3)				# 173
	mfspr	r31, 8				# 173
	stw	r31, 148(r3)				# 173
	addi	r3, r3, 152				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -152				# 173
	lwz	r31, 148(r3)				# 173
	mtspr	8, r31				# 173
	lwz	r2, 16(r3)				# 173
	slwi	r5, r2, 2				# 173
	lwz	r6, 56(r3)				# 173
	lfsx	f1, r6, r5				# 173
	stfs	f0, 152(r3)				# 173
	mfspr	r31, 8				# 173
	fmr	f0, f1				# 173
	stw	r31, 160(r3)				# 173
	addi	r3, r3, 164				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -164				# 173
	lwz	r31, 160(r3)				# 173
	mtspr	8, r31				# 173
	lfs	f1, 152(r3)				# 173
	fadd	f0, f1, f0				# 173
	lwz	r2, 12(r3)				# 173
	slwi	r5, r2, 2				# 173
	lwz	r6, 56(r3)				# 173
	lfsx	f1, r6, r5				# 173
	stfs	f0, 160(r3)				# 173
	mfspr	r31, 8				# 173
	fmr	f0, f1				# 173
	stw	r31, 168(r3)				# 173
	addi	r3, r3, 172				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -172				# 173
	lwz	r31, 168(r3)				# 173
	mtspr	8, r31				# 173
	lfs	f1, 160(r3)				# 173
	fadd	f0, f1, f0				# 173
	mfspr	r31, 8				# 173
	stw	r31, 168(r3)				# 173
	addi	r3, r3, 172				# 173
	bl	min_caml_sqrt				# 173
	addi	r3, r3, -172				# 173
	lwz	r31, 168(r3)				# 173
	mtspr	8, r31				# 173
	stfs	f0, 168(r3)				# 174
	mfspr	r31, 8				# 174
	stw	r31, 176(r3)				# 174
	addi	r3, r3, 180				# 174
	bl	min_caml_fiszero				# 174
	addi	r3, r3, -180				# 174
	lwz	r31, 176(r3)				# 174
	mtspr	8, r31				# 174
	lwz	r5, 20(r3)				# 174
	cmpw	cr7, r2, r5				# 174
	bne	cr7, beq_else.17641				# 174
	lwz	r2, 144(r3)				# 174
	cmpw	cr7, r2, r5				# 174
	bne	cr7, beq_else.17643				# 174
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 174
	lfs	f1, 168(r3)				# 174
	fdiv	f0, f0, f1				# 174
	b	beq_cont.17644				# 174
beq_else.17643:
	lis	r31, ha16(l.11650)
	addi	r31, r31, lo16(l.11650)
	lfs	f0, 0(r31)				# 174
	lfs	f1, 168(r3)				# 174
	fdiv	f0, f0, f1				# 174
beq_cont.17644:
	b	beq_cont.17642				# 174
beq_else.17641:
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 174
beq_cont.17642:
	slwi	r2, r5, 2				# 175
	lwz	r6, 56(r3)				# 175
	lfsx	f1, r6, r2				# 175
	fmul	f1, f1, f0				# 175
	slwi	r2, r5, 2				# 175
	stfsx	f1, r6, r2				# 175
	lwz	r2, 16(r3)				# 176
	slwi	r7, r2, 2				# 176
	lfsx	f1, r6, r7				# 176
	fmul	f1, f1, f0				# 176
	slwi	r2, r2, 2				# 176
	stfsx	f1, r6, r2				# 176
	lwz	r2, 12(r3)				# 177
	slwi	r7, r2, 2				# 177
	lfsx	f1, r6, r7				# 177
	fmul	f0, f1, f0				# 177
	slwi	r2, r2, 2				# 177
	stfsx	f0, r6, r2				# 177
	b	beq_cont.17637				# 708
beq_else.17636:
beq_cont.17637:
beq_cont.17616:
	lwz	r2, 20(r3)				# 714
	lwz	r5, 52(r3)				# 714
	cmpw	cr7, r5, r2				# 714
	bne	cr7, beq_else.17645				# 714
	b	beq_cont.17646				# 714
beq_else.17645:
	lwz	r2, 56(r3)				# 715
	lwz	r5, 76(r3)				# 715
	lwz	r30, 0(r3)				# 715
	mfspr	r31, 8				# 715
	stw	r31, 176(r3)				# 715
	addi	r3, r3, 180				# 715
	lwz	r31, 0(r30)				# 715
	mtspr	9, r31				# 715
	bctrl				# 715
	addi	r3, r3, -180				# 715
	lwz	r31, 176(r3)				# 715
	mtspr	8, r31				# 715
beq_cont.17646:
	addi	r2, 0, 1
	blr
read_object.2600:
	lwz	r5, 20(r30)				# 725
	lwz	r6, 16(r30)				# 725
	lwz	r7, 12(r30)				# 725
	lwz	r8, 8(r30)				# 725
	lwz	r9, 4(r30)				# 725
	cmpw	cr7, r7, r2				# 726
	bgt	cr7, ble_else.17647				# 726
	blr
ble_else.17647:
	stw	r30, 0(r3)				# 727
	stw	r9, 4(r3)				# 727
	stw	r6, 8(r3)				# 727
	stw	r2, 12(r3)				# 727
	stw	r8, 16(r3)				# 727
	mfspr	r31, 8				# 727
	mr	r30, r5				# 727
	stw	r31, 20(r3)				# 727
	addi	r3, r3, 24				# 727
	lwz	r31, 0(r30)				# 727
	mtspr	9, r31				# 727
	bctrl				# 727
	addi	r3, r3, -24				# 727
	lwz	r31, 20(r3)				# 727
	mtspr	8, r31				# 727
	lwz	r5, 16(r3)				# 727
	cmpw	cr7, r2, r5				# 727
	bne	cr7, beq_else.17649				# 727
	slwi	r2, r5, 2				# 730
	lwz	r5, 8(r3)				# 730
	lwz	r6, 12(r3)				# 730
	stwx	r6, r5, r2				# 730
	blr
beq_else.17649:
	lwz	r2, 4(r3)				# 728
	lwz	r5, 12(r3)				# 728
	add	r2, r5, r2				# 728
	lwz	r30, 0(r3)				# 728
	lwz	r29, 0(r30)				# 728
	mtspr	9, r29
	bctr				# 728
read_net_item.2604:
	lwz	r5, 8(r30)				# 741
	lwz	r6, 4(r30)				# 741
	stw	r30, 0(r3)				# 742
	stw	r6, 4(r3)				# 742
	stw	r2, 8(r3)				# 742
	stw	r5, 12(r3)				# 742
	mfspr	r31, 8				# 742
	stw	r31, 16(r3)				# 742
	addi	r3, r3, 20				# 742
	bl	min_caml_read_int				# 742
	addi	r3, r3, -20				# 742
	lwz	r31, 16(r3)				# 742
	mtspr	8, r31				# 742
	lwz	r5, 12(r3)				# 743
	cmpw	cr7, r2, r5				# 743
	bne	cr7, beq_else.17651				# 743
	lwz	r2, 4(r3)				# 743
	lwz	r6, 8(r3)				# 743
	add	r2, r6, r2				# 743
	b	min_caml_create_array				# 743
beq_else.17651:
	lwz	r5, 4(r3)				# 745
	lwz	r6, 8(r3)				# 745
	add	r5, r6, r5				# 745
	lwz	r30, 0(r3)				# 745
	stw	r2, 16(r3)				# 745
	mfspr	r31, 8				# 745
	mr	r2, r5				# 745
	stw	r31, 20(r3)				# 745
	addi	r3, r3, 24				# 745
	lwz	r31, 0(r30)				# 745
	mtspr	9, r31				# 745
	bctrl				# 745
	addi	r3, r3, -24				# 745
	lwz	r31, 20(r3)				# 745
	mtspr	8, r31				# 745
	lwz	r5, 8(r3)				# 746
	slwi	r5, r5, 2				# 746
	lwz	r6, 16(r3)				# 746
	stwx	r6, r2, r5				# 746
	blr
read_or_network.2606:
	lwz	r5, 16(r30)				# 749
	lwz	r6, 12(r30)				# 749
	lwz	r7, 8(r30)				# 749
	lwz	r8, 4(r30)				# 749
	stw	r30, 0(r3)				# 750
	stw	r8, 4(r3)				# 750
	stw	r2, 8(r3)				# 750
	stw	r6, 12(r3)				# 750
	stw	r7, 16(r3)				# 750
	mfspr	r31, 8				# 750
	mr	r2, r7				# 750
	mr	r30, r5				# 750
	stw	r31, 20(r3)				# 750
	addi	r3, r3, 24				# 750
	lwz	r31, 0(r30)				# 750
	mtspr	9, r31				# 750
	bctrl				# 750
	addi	r3, r3, -24				# 750
	lwz	r31, 20(r3)				# 750
	mr	r5, r2				# 750
	mtspr	8, r31				# 750
	lwz	r2, 16(r3)				# 751
	slwi	r2, r2, 2				# 751
	lwzx	r2, r5, r2				# 751
	lwz	r6, 12(r3)				# 751
	cmpw	cr7, r2, r6				# 751
	bne	cr7, beq_else.17652				# 751
	lwz	r2, 4(r3)				# 752
	lwz	r6, 8(r3)				# 752
	add	r2, r6, r2				# 752
	b	min_caml_create_array				# 752
beq_else.17652:
	lwz	r2, 4(r3)				# 754
	lwz	r6, 8(r3)				# 754
	add	r2, r6, r2				# 754
	lwz	r30, 0(r3)				# 754
	stw	r5, 20(r3)				# 754
	mfspr	r31, 8				# 754
	stw	r31, 24(r3)				# 754
	addi	r3, r3, 28				# 754
	lwz	r31, 0(r30)				# 754
	mtspr	9, r31				# 754
	bctrl				# 754
	addi	r3, r3, -28				# 754
	lwz	r31, 24(r3)				# 754
	mtspr	8, r31				# 754
	lwz	r5, 8(r3)				# 755
	slwi	r5, r5, 2				# 755
	lwz	r6, 20(r3)				# 755
	stwx	r6, r2, r5				# 755
	blr
read_and_network.2608:
	lwz	r5, 20(r30)				# 758
	lwz	r6, 16(r30)				# 758
	lwz	r7, 12(r30)				# 758
	lwz	r8, 8(r30)				# 758
	lwz	r9, 4(r30)				# 758
	stw	r30, 0(r3)				# 759
	stw	r9, 4(r3)				# 759
	stw	r6, 8(r3)				# 759
	stw	r2, 12(r3)				# 759
	stw	r7, 16(r3)				# 759
	stw	r8, 20(r3)				# 759
	mfspr	r31, 8				# 759
	mr	r2, r8				# 759
	mr	r30, r5				# 759
	stw	r31, 24(r3)				# 759
	addi	r3, r3, 28				# 759
	lwz	r31, 0(r30)				# 759
	mtspr	9, r31				# 759
	bctrl				# 759
	addi	r3, r3, -28				# 759
	lwz	r31, 24(r3)				# 759
	mtspr	8, r31				# 759
	lwz	r5, 20(r3)				# 760
	slwi	r5, r5, 2				# 760
	lwzx	r5, r2, r5				# 760
	lwz	r6, 16(r3)				# 760
	cmpw	cr7, r5, r6				# 760
	bne	cr7, beq_else.17653				# 760
	blr
beq_else.17653:
	lwz	r5, 12(r3)				# 762
	slwi	r6, r5, 2				# 762
	lwz	r7, 8(r3)				# 762
	stwx	r2, r7, r6				# 762
	lwz	r2, 4(r3)				# 763
	add	r2, r5, r2				# 763
	lwz	r30, 0(r3)				# 763
	lwz	r29, 0(r30)				# 763
	mtspr	9, r29
	bctr				# 763
read_parameter.2610:
	lwz	r2, 60(r30)				# 767
	lwz	r5, 56(r30)				# 767
	lwz	r6, 52(r30)				# 767
	lwz	r7, 48(r30)				# 767
	lwz	r8, 44(r30)				# 767
	lwz	r9, 40(r30)				# 767
	lwz	r10, 36(r30)				# 767
	lwz	r11, 32(r30)				# 767
	lwz	r12, 28(r30)				# 767
	lwz	r13, 24(r30)				# 767
	lwz	r14, 20(r30)				# 767
	lwz	r15, 16(r30)				# 767
	lwz	r16, 12(r30)				# 767
	lwz	r17, 8(r30)				# 767
	lfs	f0, 4(r30)				# 767
	stw	r12, 0(r3)				# 549
	stw	r9, 4(r3)				# 549
	stw	r11, 8(r3)				# 549
	stw	r10, 12(r3)				# 549
	stw	r14, 16(r3)				# 549
	stw	r13, 20(r3)				# 549
	stw	r2, 24(r3)				# 549
	stw	r6, 28(r3)				# 549
	stfs	f0, 32(r3)				# 549
	stw	r7, 40(r3)				# 549
	stw	r5, 44(r3)				# 549
	stw	r15, 48(r3)				# 549
	stw	r17, 52(r3)				# 549
	stw	r8, 56(r3)				# 549
	stw	r16, 60(r3)				# 549
	mfspr	r31, 8				# 549
	stw	r31, 64(r3)				# 549
	addi	r3, r3, 68				# 549
	bl	min_caml_read_float				# 549
	addi	r3, r3, -68				# 549
	lwz	r31, 64(r3)				# 549
	mtspr	8, r31				# 549
	lwz	r2, 60(r3)				# 549
	slwi	r5, r2, 2				# 549
	lwz	r6, 56(r3)				# 549
	stfsx	f0, r6, r5				# 549
	mfspr	r31, 8				# 550
	stw	r31, 64(r3)				# 550
	addi	r3, r3, 68				# 550
	bl	min_caml_read_float				# 550
	addi	r3, r3, -68				# 550
	lwz	r31, 64(r3)				# 550
	mtspr	8, r31				# 550
	lwz	r2, 52(r3)				# 550
	slwi	r5, r2, 2				# 550
	lwz	r6, 56(r3)				# 550
	stfsx	f0, r6, r5				# 550
	mfspr	r31, 8				# 551
	stw	r31, 64(r3)				# 551
	addi	r3, r3, 68				# 551
	bl	min_caml_read_float				# 551
	addi	r3, r3, -68				# 551
	lwz	r31, 64(r3)				# 551
	mtspr	8, r31				# 551
	lwz	r2, 48(r3)				# 551
	slwi	r5, r2, 2				# 551
	lwz	r6, 56(r3)				# 551
	stfsx	f0, r6, r5				# 551
	mfspr	r31, 8				# 553
	stw	r31, 64(r3)				# 553
	addi	r3, r3, 68				# 553
	bl	min_caml_read_float				# 553
	addi	r3, r3, -68				# 553
	lwz	r31, 64(r3)				# 553
	mtspr	8, r31				# 553
	lis	r31, ha16(l.11629)
	addi	r31, r31, lo16(l.11629)
	lfs	f1, 0(r31)				# 542
	fmul	f0, f0, f1				# 542
	stfs	f1, 64(r3)				# 554
	stfs	f0, 72(r3)				# 554
	mfspr	r31, 8				# 554
	stw	r31, 80(r3)				# 554
	addi	r3, r3, 84				# 554
	bl	min_caml_cos				# 554
	addi	r3, r3, -84				# 554
	lwz	r31, 80(r3)				# 554
	mtspr	8, r31				# 554
	lfs	f1, 72(r3)				# 555
	stfs	f0, 80(r3)				# 555
	mfspr	r31, 8				# 555
	fmr	f0, f1				# 555
	stw	r31, 88(r3)				# 555
	addi	r3, r3, 92				# 555
	bl	min_caml_sin				# 555
	addi	r3, r3, -92				# 555
	lwz	r31, 88(r3)				# 555
	mtspr	8, r31				# 555
	stfs	f0, 88(r3)				# 556
	mfspr	r31, 8				# 556
	stw	r31, 96(r3)				# 556
	addi	r3, r3, 100				# 556
	bl	min_caml_read_float				# 556
	addi	r3, r3, -100				# 556
	lwz	r31, 96(r3)				# 556
	mtspr	8, r31				# 556
	lfs	f1, 64(r3)				# 542
	fmul	f0, f0, f1				# 542
	stfs	f0, 96(r3)				# 557
	mfspr	r31, 8				# 557
	stw	r31, 104(r3)				# 557
	addi	r3, r3, 108				# 557
	bl	min_caml_cos				# 557
	addi	r3, r3, -108				# 557
	lwz	r31, 104(r3)				# 557
	mtspr	8, r31				# 557
	lfs	f1, 96(r3)				# 558
	stfs	f0, 104(r3)				# 558
	mfspr	r31, 8				# 558
	fmr	f0, f1				# 558
	stw	r31, 112(r3)				# 558
	addi	r3, r3, 116				# 558
	bl	min_caml_sin				# 558
	addi	r3, r3, -116				# 558
	lwz	r31, 112(r3)				# 558
	mtspr	8, r31				# 558
	lfs	f1, 80(r3)				# 560
	fmul	f2, f1, f0				# 560
	lis	r31, ha16(l.11673)
	addi	r31, r31, lo16(l.11673)
	lfs	f3, 0(r31)				# 560
	fmul	f2, f2, f3				# 560
	lwz	r2, 60(r3)				# 560
	slwi	r5, r2, 2				# 560
	lwz	r6, 44(r3)				# 560
	stfsx	f2, r6, r5				# 560
	lis	r31, ha16(l.11675)
	addi	r31, r31, lo16(l.11675)
	lfs	f2, 0(r31)				# 561
	lfs	f4, 88(r3)				# 561
	fmul	f2, f4, f2				# 561
	lwz	r5, 52(r3)				# 561
	slwi	r7, r5, 2				# 561
	stfsx	f2, r6, r7				# 561
	lfs	f2, 104(r3)				# 562
	fmul	f5, f1, f2				# 562
	fmul	f3, f5, f3				# 562
	lwz	r7, 48(r3)				# 562
	slwi	r8, r7, 2				# 562
	stfsx	f3, r6, r8				# 562
	slwi	r8, r2, 2				# 564
	lwz	r9, 40(r3)				# 564
	stfsx	f2, r9, r8				# 564
	slwi	r8, r5, 2				# 565
	lfs	f3, 32(r3)				# 565
	stfsx	f3, r9, r8				# 565
	stfs	f0, 112(r3)				# 566
	mfspr	r31, 8				# 566
	stw	r31, 120(r3)				# 566
	addi	r3, r3, 124				# 566
	bl	min_caml_fneg				# 566
	addi	r3, r3, -124				# 566
	lwz	r31, 120(r3)				# 566
	mtspr	8, r31				# 566
	lwz	r2, 48(r3)				# 566
	slwi	r5, r2, 2				# 566
	lwz	r6, 40(r3)				# 566
	stfsx	f0, r6, r5				# 566
	lfs	f0, 88(r3)				# 568
	mfspr	r31, 8				# 568
	stw	r31, 120(r3)				# 568
	addi	r3, r3, 124				# 568
	bl	min_caml_fneg				# 568
	addi	r3, r3, -124				# 568
	lwz	r31, 120(r3)				# 568
	mtspr	8, r31				# 568
	lfs	f1, 112(r3)				# 568
	fmul	f0, f0, f1				# 568
	lwz	r2, 60(r3)				# 568
	slwi	r5, r2, 2				# 568
	lwz	r6, 28(r3)				# 568
	stfsx	f0, r6, r5				# 568
	lfs	f0, 80(r3)				# 569
	mfspr	r31, 8				# 569
	stw	r31, 120(r3)				# 569
	addi	r3, r3, 124				# 569
	bl	min_caml_fneg				# 569
	addi	r3, r3, -124				# 569
	lwz	r31, 120(r3)				# 569
	mtspr	8, r31				# 569
	lwz	r2, 52(r3)				# 569
	slwi	r5, r2, 2				# 569
	lwz	r6, 28(r3)				# 569
	stfsx	f0, r6, r5				# 569
	lfs	f0, 88(r3)				# 570
	mfspr	r31, 8				# 570
	stw	r31, 120(r3)				# 570
	addi	r3, r3, 124				# 570
	bl	min_caml_fneg				# 570
	addi	r3, r3, -124				# 570
	lwz	r31, 120(r3)				# 570
	mtspr	8, r31				# 570
	lfs	f1, 104(r3)				# 570
	fmul	f0, f0, f1				# 570
	lwz	r2, 48(r3)				# 570
	slwi	r5, r2, 2				# 570
	lwz	r6, 28(r3)				# 570
	stfsx	f0, r6, r5				# 570
	lwz	r5, 60(r3)				# 572
	slwi	r6, r5, 2				# 572
	lwz	r7, 56(r3)				# 572
	lfsx	f0, r7, r6				# 572
	slwi	r6, r5, 2				# 572
	lwz	r8, 44(r3)				# 572
	lfsx	f1, r8, r6				# 572
	fsub	f0, f0, f1				# 572
	slwi	r6, r5, 2				# 572
	lwz	r9, 24(r3)				# 572
	stfsx	f0, r9, r6				# 572
	lwz	r6, 52(r3)				# 573
	slwi	r10, r6, 2				# 573
	lfsx	f0, r7, r10				# 573
	slwi	r10, r6, 2				# 573
	lfsx	f1, r8, r10				# 573
	fsub	f0, f0, f1				# 573
	slwi	r10, r6, 2				# 573
	stfsx	f0, r9, r10				# 573
	slwi	r10, r2, 2				# 574
	lfsx	f0, r7, r10				# 574
	slwi	r7, r2, 2				# 574
	lfsx	f1, r8, r7				# 574
	fsub	f0, f0, f1				# 574
	slwi	r7, r2, 2				# 574
	stfsx	f0, r9, r7				# 574
	mfspr	r31, 8				# 581
	stw	r31, 120(r3)				# 581
	addi	r3, r3, 124				# 581
	bl	min_caml_read_int				# 581
	addi	r3, r3, -124				# 581
	lwz	r31, 120(r3)				# 581
	mtspr	8, r31				# 581
	mfspr	r31, 8				# 584
	stw	r31, 120(r3)				# 584
	addi	r3, r3, 124				# 584
	bl	min_caml_read_float				# 584
	addi	r3, r3, -124				# 584
	lwz	r31, 120(r3)				# 584
	mtspr	8, r31				# 584
	lfs	f1, 64(r3)				# 542
	fmul	f0, f0, f1				# 542
	stfs	f0, 120(r3)				# 585
	mfspr	r31, 8				# 585
	stw	r31, 128(r3)				# 585
	addi	r3, r3, 132				# 585
	bl	min_caml_sin				# 585
	addi	r3, r3, -132				# 585
	lwz	r31, 128(r3)				# 585
	mtspr	8, r31				# 585
	mfspr	r31, 8				# 586
	stw	r31, 128(r3)				# 586
	addi	r3, r3, 132				# 586
	bl	min_caml_fneg				# 586
	addi	r3, r3, -132				# 586
	lwz	r31, 128(r3)				# 586
	mtspr	8, r31				# 586
	lwz	r2, 52(r3)				# 586
	slwi	r2, r2, 2				# 586
	lwz	r5, 20(r3)				# 586
	stfsx	f0, r5, r2				# 586
	mfspr	r31, 8				# 587
	stw	r31, 128(r3)				# 587
	addi	r3, r3, 132				# 587
	bl	min_caml_read_float				# 587
	addi	r3, r3, -132				# 587
	lwz	r31, 128(r3)				# 587
	mtspr	8, r31				# 587
	lfs	f1, 64(r3)				# 542
	fmul	f0, f0, f1				# 542
	lfs	f1, 120(r3)				# 588
	stfs	f0, 128(r3)				# 588
	mfspr	r31, 8				# 588
	fmr	f0, f1				# 588
	stw	r31, 136(r3)				# 588
	addi	r3, r3, 140				# 588
	bl	min_caml_cos				# 588
	addi	r3, r3, -140				# 588
	lwz	r31, 136(r3)				# 588
	mtspr	8, r31				# 588
	lfs	f1, 128(r3)				# 589
	stfs	f0, 136(r3)				# 589
	mfspr	r31, 8				# 589
	fmr	f0, f1				# 589
	stw	r31, 144(r3)				# 589
	addi	r3, r3, 148				# 589
	bl	min_caml_sin				# 589
	addi	r3, r3, -148				# 589
	lwz	r31, 144(r3)				# 589
	mtspr	8, r31				# 589
	lfs	f1, 136(r3)				# 590
	fmul	f0, f1, f0				# 590
	lwz	r2, 60(r3)				# 590
	slwi	r5, r2, 2				# 590
	lwz	r6, 20(r3)				# 590
	stfsx	f0, r6, r5				# 590
	lfs	f0, 128(r3)				# 591
	mfspr	r31, 8				# 591
	stw	r31, 144(r3)				# 591
	addi	r3, r3, 148				# 591
	bl	min_caml_cos				# 591
	addi	r3, r3, -148				# 591
	lwz	r31, 144(r3)				# 591
	mtspr	8, r31				# 591
	lfs	f1, 136(r3)				# 592
	fmul	f0, f1, f0				# 592
	lwz	r2, 48(r3)				# 592
	slwi	r2, r2, 2				# 592
	lwz	r5, 20(r3)				# 592
	stfsx	f0, r5, r2				# 592
	mfspr	r31, 8				# 593
	stw	r31, 144(r3)				# 593
	addi	r3, r3, 148				# 593
	bl	min_caml_read_float				# 593
	addi	r3, r3, -148				# 593
	lwz	r31, 144(r3)				# 593
	mtspr	8, r31				# 593
	lwz	r2, 60(r3)				# 593
	slwi	r5, r2, 2				# 593
	lwz	r6, 16(r3)				# 593
	stfsx	f0, r6, r5				# 593
	lwz	r30, 12(r3)				# 735
	mfspr	r31, 8				# 735
	stw	r31, 144(r3)				# 735
	addi	r3, r3, 148				# 735
	lwz	r31, 0(r30)				# 735
	mtspr	9, r31				# 735
	bctrl				# 735
	addi	r3, r3, -148				# 735
	lwz	r31, 144(r3)				# 735
	mtspr	8, r31				# 735
	lwz	r2, 60(r3)				# 772
	lwz	r30, 8(r3)				# 772
	mfspr	r31, 8				# 772
	stw	r31, 144(r3)				# 772
	addi	r3, r3, 148				# 772
	lwz	r31, 0(r30)				# 772
	mtspr	9, r31				# 772
	bctrl				# 772
	addi	r3, r3, -148				# 772
	lwz	r31, 144(r3)				# 772
	mtspr	8, r31				# 772
	lwz	r2, 60(r3)				# 773
	lwz	r30, 4(r3)				# 773
	mfspr	r31, 8				# 773
	stw	r31, 144(r3)				# 773
	addi	r3, r3, 148				# 773
	lwz	r31, 0(r30)				# 773
	mtspr	9, r31				# 773
	bctrl				# 773
	addi	r3, r3, -148				# 773
	lwz	r31, 144(r3)				# 773
	mtspr	8, r31				# 773
	lwz	r5, 60(r3)				# 773
	slwi	r5, r5, 2				# 773
	lwz	r6, 0(r3)				# 773
	stwx	r2, r6, r5				# 773
	blr
solver_rect.2621:
	lwz	r6, 16(r30)				# 798
	lwz	r7, 12(r30)				# 798
	lwz	r8, 8(r30)				# 798
	lwz	r9, 4(r30)				# 798
	slwi	r10, r8, 2				# 784
	lfsx	f3, r5, r10				# 784
	stw	r6, 0(r3)				# 784
	stfs	f2, 8(r3)				# 784
	stw	r7, 16(r3)				# 784
	stfs	f1, 24(r3)				# 784
	stw	r9, 32(r3)				# 784
	stfs	f0, 40(r3)				# 784
	stw	r5, 48(r3)				# 784
	stw	r2, 52(r3)				# 784
	stw	r8, 56(r3)				# 784
	mfspr	r31, 8				# 784
	fmr	f0, f3				# 784
	stw	r31, 60(r3)				# 784
	addi	r3, r3, 64				# 784
	bl	min_caml_fiszero				# 784
	addi	r3, r3, -64				# 784
	lwz	r31, 60(r3)				# 784
	mtspr	8, r31				# 784
	lwz	r5, 56(r3)				# 784
	cmpw	cr7, r2, r5				# 784
	bne	cr7, beq_else.17659				# 784
	lwz	r2, 52(r3)				# 307
	lwz	r6, 16(r2)				# 307
	lwz	r7, 24(r2)				# 259
	slwi	r8, r5, 2				# 786
	lwz	r9, 48(r3)				# 786
	lfsx	f0, r9, r8				# 786
	stw	r6, 60(r3)				# 786
	stw	r7, 64(r3)				# 786
	mfspr	r31, 8				# 786
	stw	r31, 68(r3)				# 786
	addi	r3, r3, 72				# 786
	bl	min_caml_fisneg				# 786
	addi	r3, r3, -72				# 786
	lwz	r31, 68(r3)				# 786
	mtspr	8, r31				# 786
	lwz	r5, 56(r3)				# 106
	lwz	r6, 64(r3)				# 106
	cmpw	cr7, r6, r5				# 106
	bne	cr7, beq_else.17661				# 106
	b	beq_cont.17662				# 106
beq_else.17661:
	cmpw	cr7, r2, r5				# 106
	bne	cr7, beq_else.17663				# 106
	addi	r2, 0, 1
	b	beq_cont.17664				# 106
beq_else.17663:
	addi	r2, 0, 0
beq_cont.17664:
beq_cont.17662:
	slwi	r6, r5, 2				# 786
	lwz	r7, 60(r3)				# 786
	lfsx	f0, r7, r6				# 786
	cmpw	cr7, r2, r5				# 119
	bne	cr7, beq_else.17665				# 119
	mfspr	r31, 8				# 119
	stw	r31, 68(r3)				# 119
	addi	r3, r3, 72				# 119
	bl	min_caml_fneg				# 119
	addi	r3, r3, -72				# 119
	lwz	r31, 68(r3)				# 119
	mtspr	8, r31				# 119
	b	beq_cont.17666				# 119
beq_else.17665:
beq_cont.17666:
	lfs	f1, 40(r3)				# 788
	fsub	f0, f0, f1				# 788
	lwz	r2, 56(r3)				# 788
	slwi	r5, r2, 2				# 788
	lwz	r6, 48(r3)				# 788
	lfsx	f2, r6, r5				# 788
	fdiv	f0, f0, f2				# 788
	lwz	r5, 32(r3)				# 789
	slwi	r7, r5, 2				# 789
	lfsx	f2, r6, r7				# 789
	fmul	f2, f0, f2				# 789
	lfs	f3, 24(r3)				# 789
	fadd	f2, f2, f3				# 789
	stfs	f0, 72(r3)				# 789
	mfspr	r31, 8				# 789
	fmr	f0, f2				# 789
	stw	r31, 80(r3)				# 789
	addi	r3, r3, 84				# 789
	bl	min_caml_fabs				# 789
	addi	r3, r3, -84				# 789
	lwz	r31, 80(r3)				# 789
	mtspr	8, r31				# 789
	lwz	r2, 32(r3)				# 789
	slwi	r5, r2, 2				# 789
	lwz	r6, 60(r3)				# 789
	lfsx	f1, r6, r5				# 789
	mfspr	r31, 8				# 789
	stw	r31, 80(r3)				# 789
	addi	r3, r3, 84				# 789
	bl	min_caml_fless				# 789
	addi	r3, r3, -84				# 789
	lwz	r31, 80(r3)				# 789
	mtspr	8, r31				# 789
	lwz	r5, 56(r3)				# 789
	cmpw	cr7, r2, r5				# 789
	bne	cr7, beq_else.17668				# 789
	addi	r2, 0, 0
	b	beq_cont.17669				# 789
beq_else.17668:
	lwz	r2, 16(r3)				# 790
	slwi	r6, r2, 2				# 790
	lwz	r7, 48(r3)				# 790
	lfsx	f0, r7, r6				# 790
	lfs	f1, 72(r3)				# 790
	fmul	f0, f1, f0				# 790
	lfs	f2, 8(r3)				# 790
	fadd	f0, f0, f2				# 790
	mfspr	r31, 8				# 790
	stw	r31, 80(r3)				# 790
	addi	r3, r3, 84				# 790
	bl	min_caml_fabs				# 790
	addi	r3, r3, -84				# 790
	lwz	r31, 80(r3)				# 790
	mtspr	8, r31				# 790
	lwz	r2, 16(r3)				# 790
	slwi	r5, r2, 2				# 790
	lwz	r6, 60(r3)				# 790
	lfsx	f1, r6, r5				# 790
	mfspr	r31, 8				# 790
	stw	r31, 80(r3)				# 790
	addi	r3, r3, 84				# 790
	bl	min_caml_fless				# 790
	addi	r3, r3, -84				# 790
	lwz	r31, 80(r3)				# 790
	mtspr	8, r31				# 790
	lwz	r5, 56(r3)				# 790
	cmpw	cr7, r2, r5				# 790
	bne	cr7, beq_else.17670				# 790
	addi	r2, 0, 0
	b	beq_cont.17671				# 790
beq_else.17670:
	slwi	r2, r5, 2				# 791
	lwz	r6, 0(r3)				# 791
	lfs	f0, 72(r3)				# 791
	stfsx	f0, r6, r2				# 791
	addi	r2, 0, 1
beq_cont.17671:
beq_cont.17669:
	b	beq_cont.17660				# 784
beq_else.17659:
	addi	r2, 0, 0
beq_cont.17660:
	cmpw	cr7, r2, r5				# 799
	bne	cr7, beq_else.17672				# 799
	lwz	r2, 32(r3)				# 784
	slwi	r6, r2, 2				# 784
	lwz	r7, 48(r3)				# 784
	lfsx	f0, r7, r6				# 784
	mfspr	r31, 8				# 784
	stw	r31, 80(r3)				# 784
	addi	r3, r3, 84				# 784
	bl	min_caml_fiszero				# 784
	addi	r3, r3, -84				# 784
	lwz	r31, 80(r3)				# 784
	mtspr	8, r31				# 784
	lwz	r5, 56(r3)				# 784
	cmpw	cr7, r2, r5				# 784
	bne	cr7, beq_else.17673				# 784
	lwz	r2, 52(r3)				# 307
	lwz	r6, 16(r2)				# 307
	lwz	r7, 24(r2)				# 259
	lwz	r8, 32(r3)				# 786
	slwi	r9, r8, 2				# 786
	lwz	r10, 48(r3)				# 786
	lfsx	f0, r10, r9				# 786
	stw	r6, 80(r3)				# 786
	stw	r7, 84(r3)				# 786
	mfspr	r31, 8				# 786
	stw	r31, 88(r3)				# 786
	addi	r3, r3, 92				# 786
	bl	min_caml_fisneg				# 786
	addi	r3, r3, -92				# 786
	lwz	r31, 88(r3)				# 786
	mtspr	8, r31				# 786
	lwz	r5, 56(r3)				# 106
	lwz	r6, 84(r3)				# 106
	cmpw	cr7, r6, r5				# 106
	bne	cr7, beq_else.17675				# 106
	b	beq_cont.17676				# 106
beq_else.17675:
	cmpw	cr7, r2, r5				# 106
	bne	cr7, beq_else.17677				# 106
	addi	r2, 0, 1
	b	beq_cont.17678				# 106
beq_else.17677:
	addi	r2, 0, 0
beq_cont.17678:
beq_cont.17676:
	lwz	r6, 32(r3)				# 786
	slwi	r7, r6, 2				# 786
	lwz	r8, 80(r3)				# 786
	lfsx	f0, r8, r7				# 786
	cmpw	cr7, r2, r5				# 119
	bne	cr7, beq_else.17679				# 119
	mfspr	r31, 8				# 119
	stw	r31, 88(r3)				# 119
	addi	r3, r3, 92				# 119
	bl	min_caml_fneg				# 119
	addi	r3, r3, -92				# 119
	lwz	r31, 88(r3)				# 119
	mtspr	8, r31				# 119
	b	beq_cont.17680				# 119
beq_else.17679:
beq_cont.17680:
	lfs	f1, 24(r3)				# 788
	fsub	f0, f0, f1				# 788
	lwz	r2, 32(r3)				# 788
	slwi	r5, r2, 2				# 788
	lwz	r6, 48(r3)				# 788
	lfsx	f2, r6, r5				# 788
	fdiv	f0, f0, f2				# 788
	lwz	r5, 16(r3)				# 789
	slwi	r7, r5, 2				# 789
	lfsx	f2, r6, r7				# 789
	fmul	f2, f0, f2				# 789
	lfs	f3, 8(r3)				# 789
	fadd	f2, f2, f3				# 789
	stfs	f0, 88(r3)				# 789
	mfspr	r31, 8				# 789
	fmr	f0, f2				# 789
	stw	r31, 96(r3)				# 789
	addi	r3, r3, 100				# 789
	bl	min_caml_fabs				# 789
	addi	r3, r3, -100				# 789
	lwz	r31, 96(r3)				# 789
	mtspr	8, r31				# 789
	lwz	r2, 16(r3)				# 789
	slwi	r5, r2, 2				# 789
	lwz	r6, 80(r3)				# 789
	lfsx	f1, r6, r5				# 789
	mfspr	r31, 8				# 789
	stw	r31, 96(r3)				# 789
	addi	r3, r3, 100				# 789
	bl	min_caml_fless				# 789
	addi	r3, r3, -100				# 789
	lwz	r31, 96(r3)				# 789
	mtspr	8, r31				# 789
	lwz	r5, 56(r3)				# 789
	cmpw	cr7, r2, r5				# 789
	bne	cr7, beq_else.17681				# 789
	addi	r2, 0, 0
	b	beq_cont.17682				# 789
beq_else.17681:
	slwi	r2, r5, 2				# 790
	lwz	r6, 48(r3)				# 790
	lfsx	f0, r6, r2				# 790
	lfs	f1, 88(r3)				# 790
	fmul	f0, f1, f0				# 790
	lfs	f2, 40(r3)				# 790
	fadd	f0, f0, f2				# 790
	mfspr	r31, 8				# 790
	stw	r31, 96(r3)				# 790
	addi	r3, r3, 100				# 790
	bl	min_caml_fabs				# 790
	addi	r3, r3, -100				# 790
	lwz	r31, 96(r3)				# 790
	mtspr	8, r31				# 790
	lwz	r2, 56(r3)				# 790
	slwi	r5, r2, 2				# 790
	lwz	r6, 80(r3)				# 790
	lfsx	f1, r6, r5				# 790
	mfspr	r31, 8				# 790
	stw	r31, 96(r3)				# 790
	addi	r3, r3, 100				# 790
	bl	min_caml_fless				# 790
	addi	r3, r3, -100				# 790
	lwz	r31, 96(r3)				# 790
	mtspr	8, r31				# 790
	lwz	r5, 56(r3)				# 790
	cmpw	cr7, r2, r5				# 790
	bne	cr7, beq_else.17683				# 790
	addi	r2, 0, 0
	b	beq_cont.17684				# 790
beq_else.17683:
	slwi	r2, r5, 2				# 791
	lwz	r6, 0(r3)				# 791
	lfs	f0, 88(r3)				# 791
	stfsx	f0, r6, r2				# 791
	addi	r2, 0, 1
beq_cont.17684:
beq_cont.17682:
	b	beq_cont.17674				# 784
beq_else.17673:
	addi	r2, 0, 0
beq_cont.17674:
	cmpw	cr7, r2, r5				# 800
	bne	cr7, beq_else.17685				# 800
	lwz	r2, 16(r3)				# 784
	slwi	r6, r2, 2				# 784
	lwz	r7, 48(r3)				# 784
	lfsx	f0, r7, r6				# 784
	mfspr	r31, 8				# 784
	stw	r31, 96(r3)				# 784
	addi	r3, r3, 100				# 784
	bl	min_caml_fiszero				# 784
	addi	r3, r3, -100				# 784
	lwz	r31, 96(r3)				# 784
	mtspr	8, r31				# 784
	lwz	r5, 56(r3)				# 784
	cmpw	cr7, r2, r5				# 784
	bne	cr7, beq_else.17686				# 784
	lwz	r2, 52(r3)				# 307
	lwz	r6, 16(r2)				# 307
	lwz	r2, 24(r2)				# 259
	lwz	r7, 16(r3)				# 786
	slwi	r8, r7, 2				# 786
	lwz	r9, 48(r3)				# 786
	lfsx	f0, r9, r8				# 786
	stw	r6, 96(r3)				# 786
	stw	r2, 100(r3)				# 786
	mfspr	r31, 8				# 786
	stw	r31, 104(r3)				# 786
	addi	r3, r3, 108				# 786
	bl	min_caml_fisneg				# 786
	addi	r3, r3, -108				# 786
	lwz	r31, 104(r3)				# 786
	mtspr	8, r31				# 786
	lwz	r5, 56(r3)				# 106
	lwz	r6, 100(r3)				# 106
	cmpw	cr7, r6, r5				# 106
	bne	cr7, beq_else.17688				# 106
	b	beq_cont.17689				# 106
beq_else.17688:
	cmpw	cr7, r2, r5				# 106
	bne	cr7, beq_else.17690				# 106
	addi	r2, 0, 1
	b	beq_cont.17691				# 106
beq_else.17690:
	addi	r2, 0, 0
beq_cont.17691:
beq_cont.17689:
	lwz	r6, 16(r3)				# 786
	slwi	r7, r6, 2				# 786
	lwz	r8, 96(r3)				# 786
	lfsx	f0, r8, r7				# 786
	cmpw	cr7, r2, r5				# 119
	bne	cr7, beq_else.17692				# 119
	mfspr	r31, 8				# 119
	stw	r31, 104(r3)				# 119
	addi	r3, r3, 108				# 119
	bl	min_caml_fneg				# 119
	addi	r3, r3, -108				# 119
	lwz	r31, 104(r3)				# 119
	mtspr	8, r31				# 119
	b	beq_cont.17693				# 119
beq_else.17692:
beq_cont.17693:
	lfs	f1, 8(r3)				# 788
	fsub	f0, f0, f1				# 788
	lwz	r2, 16(r3)				# 788
	slwi	r2, r2, 2				# 788
	lwz	r5, 48(r3)				# 788
	lfsx	f1, r5, r2				# 788
	fdiv	f0, f0, f1				# 788
	lwz	r2, 56(r3)				# 789
	slwi	r6, r2, 2				# 789
	lfsx	f1, r5, r6				# 789
	fmul	f1, f0, f1				# 789
	lfs	f2, 40(r3)				# 789
	fadd	f1, f1, f2				# 789
	stfs	f0, 104(r3)				# 789
	mfspr	r31, 8				# 789
	fmr	f0, f1				# 789
	stw	r31, 112(r3)				# 789
	addi	r3, r3, 116				# 789
	bl	min_caml_fabs				# 789
	addi	r3, r3, -116				# 789
	lwz	r31, 112(r3)				# 789
	mtspr	8, r31				# 789
	lwz	r2, 56(r3)				# 789
	slwi	r5, r2, 2				# 789
	lwz	r6, 96(r3)				# 789
	lfsx	f1, r6, r5				# 789
	mfspr	r31, 8				# 789
	stw	r31, 112(r3)				# 789
	addi	r3, r3, 116				# 789
	bl	min_caml_fless				# 789
	addi	r3, r3, -116				# 789
	lwz	r31, 112(r3)				# 789
	mtspr	8, r31				# 789
	lwz	r5, 56(r3)				# 789
	cmpw	cr7, r2, r5				# 789
	bne	cr7, beq_else.17694				# 789
	addi	r2, 0, 0
	b	beq_cont.17695				# 789
beq_else.17694:
	lwz	r2, 32(r3)				# 790
	slwi	r6, r2, 2				# 790
	lwz	r7, 48(r3)				# 790
	lfsx	f0, r7, r6				# 790
	lfs	f1, 104(r3)				# 790
	fmul	f0, f1, f0				# 790
	lfs	f2, 24(r3)				# 790
	fadd	f0, f0, f2				# 790
	mfspr	r31, 8				# 790
	stw	r31, 112(r3)				# 790
	addi	r3, r3, 116				# 790
	bl	min_caml_fabs				# 790
	addi	r3, r3, -116				# 790
	lwz	r31, 112(r3)				# 790
	mtspr	8, r31				# 790
	lwz	r2, 32(r3)				# 790
	slwi	r2, r2, 2				# 790
	lwz	r5, 96(r3)				# 790
	lfsx	f1, r5, r2				# 790
	mfspr	r31, 8				# 790
	stw	r31, 112(r3)				# 790
	addi	r3, r3, 116				# 790
	bl	min_caml_fless				# 790
	addi	r3, r3, -116				# 790
	lwz	r31, 112(r3)				# 790
	mtspr	8, r31				# 790
	lwz	r5, 56(r3)				# 790
	cmpw	cr7, r2, r5				# 790
	bne	cr7, beq_else.17696				# 790
	addi	r2, 0, 0
	b	beq_cont.17697				# 790
beq_else.17696:
	slwi	r2, r5, 2				# 791
	lwz	r6, 0(r3)				# 791
	lfs	f0, 104(r3)				# 791
	stfsx	f0, r6, r2				# 791
	addi	r2, 0, 1
beq_cont.17697:
beq_cont.17695:
	b	beq_cont.17687				# 784
beq_else.17686:
	addi	r2, 0, 0
beq_cont.17687:
	cmpw	cr7, r2, r5				# 801
	bne	cr7, beq_else.17698				# 801
	addi	r2, 0, 0
	blr
beq_else.17698:
	addi	r2, 0, 3
	blr
beq_else.17685:
	addi	r2, 0, 2
	blr
beq_else.17672:
	addi	r2, 0, 1
	blr
solver_second.2646:
	lwz	r6, 20(r30)				# 855
	lwz	r7, 16(r30)				# 855
	lwz	r8, 12(r30)				# 855
	lwz	r9, 8(r30)				# 855
	lwz	r10, 4(r30)				# 855
	slwi	r11, r9, 2				# 859
	lfsx	f3, r5, r11				# 859
	slwi	r11, r10, 2				# 859
	lfsx	f4, r5, r11				# 859
	slwi	r11, r7, 2				# 859
	lfsx	f5, r5, r11				# 859
	stw	r6, 0(r3)				# 823
	stw	r8, 4(r3)				# 823
	stfs	f2, 8(r3)				# 823
	stfs	f1, 16(r3)				# 823
	stfs	f0, 24(r3)				# 823
	stw	r5, 32(r3)				# 823
	stfs	f3, 40(r3)				# 823
	stw	r7, 48(r3)				# 823
	stfs	f5, 56(r3)				# 823
	stw	r10, 64(r3)				# 823
	stfs	f4, 72(r3)				# 823
	stw	r9, 80(r3)				# 823
	stw	r2, 84(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f3				# 823
	stw	r31, 88(r3)				# 823
	addi	r3, r3, 92				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -92				# 823
	lwz	r31, 88(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 84(r3)				# 277
	lwz	r5, 16(r2)				# 277
	lwz	r6, 80(r3)				# 282
	slwi	r7, r6, 2				# 282
	lfsx	f1, r5, r7				# 282
	fmul	f0, f0, f1				# 823
	lfs	f1, 72(r3)				# 823
	stfs	f0, 88(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 96(r3)				# 823
	addi	r3, r3, 100				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -100				# 823
	lwz	r31, 96(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 84(r3)				# 287
	lwz	r5, 16(r2)				# 287
	lwz	r6, 64(r3)				# 292
	slwi	r7, r6, 2				# 292
	lfsx	f1, r5, r7				# 292
	fmul	f0, f0, f1				# 823
	lfs	f1, 88(r3)				# 823
	fadd	f0, f1, f0				# 823
	lfs	f1, 56(r3)				# 823
	stfs	f0, 96(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 104(r3)				# 823
	addi	r3, r3, 108				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -108				# 823
	lwz	r31, 104(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 84(r3)				# 297
	lwz	r5, 16(r2)				# 297
	lwz	r6, 48(r3)				# 302
	slwi	r7, r6, 2				# 302
	lfsx	f1, r5, r7				# 302
	fmul	f0, f0, f1				# 823
	lfs	f1, 96(r3)				# 823
	fadd	f0, f1, f0				# 823
	lwz	r5, 12(r2)				# 268
	lwz	r7, 80(r3)				# 825
	cmpw	cr7, r5, r7				# 825
	bne	cr7, beq_else.17702				# 825
	b	beq_cont.17703				# 825
beq_else.17702:
	lfs	f1, 56(r3)				# 829
	lfs	f2, 72(r3)				# 829
	fmul	f3, f2, f1				# 829
	lwz	r5, 36(r2)				# 397
	slwi	r8, r7, 2				# 402
	lfsx	f4, r5, r8				# 402
	fmul	f3, f3, f4				# 829
	fadd	f0, f0, f3				# 828
	lfs	f3, 40(r3)				# 830
	fmul	f1, f1, f3				# 830
	lwz	r5, 36(r2)				# 407
	lwz	r8, 64(r3)				# 412
	slwi	r9, r8, 2				# 412
	lfsx	f4, r5, r9				# 412
	fmul	f1, f1, f4				# 830
	fadd	f0, f0, f1				# 828
	fmul	f1, f3, f2				# 831
	lwz	r5, 36(r2)				# 417
	slwi	r9, r6, 2				# 422
	lfsx	f2, r5, r9				# 422
	fmul	f1, f1, f2				# 831
	fadd	f0, f0, f1				# 828
beq_cont.17703:
	stfs	f0, 104(r3)				# 861
	mfspr	r31, 8				# 861
	stw	r31, 112(r3)				# 861
	addi	r3, r3, 116				# 861
	bl	min_caml_fiszero				# 861
	addi	r3, r3, -116				# 861
	lwz	r31, 112(r3)				# 861
	mtspr	8, r31				# 861
	lwz	r5, 80(r3)				# 861
	cmpw	cr7, r2, r5				# 861
	bne	cr7, beq_else.17704				# 861
	slwi	r2, r5, 2				# 866
	lwz	r6, 32(r3)				# 866
	lfsx	f0, r6, r2				# 866
	lwz	r2, 64(r3)				# 866
	slwi	r7, r2, 2				# 866
	lfsx	f1, r6, r7				# 866
	lwz	r7, 48(r3)				# 866
	slwi	r8, r7, 2				# 866
	lfsx	f2, r6, r8				# 866
	lfs	f3, 24(r3)				# 838
	fmul	f4, f0, f3				# 838
	lwz	r6, 84(r3)				# 277
	lwz	r8, 16(r6)				# 277
	slwi	r9, r5, 2				# 282
	lfsx	f5, r8, r9				# 282
	fmul	f4, f4, f5				# 838
	lfs	f5, 16(r3)				# 839
	fmul	f6, f1, f5				# 839
	lwz	r8, 16(r6)				# 287
	slwi	r9, r2, 2				# 292
	lfsx	f7, r8, r9				# 292
	fmul	f6, f6, f7				# 839
	fadd	f4, f4, f6				# 838
	lfs	f6, 8(r3)				# 840
	fmul	f7, f2, f6				# 840
	lwz	r8, 16(r6)				# 297
	slwi	r9, r7, 2				# 302
	lfsx	f8, r8, r9				# 302
	fmul	f7, f7, f8				# 840
	fadd	f4, f4, f7				# 838
	lwz	r8, 12(r6)				# 268
	cmpw	cr7, r8, r5				# 842
	bne	cr7, beq_else.17705				# 842
	fmr	f0, f4				# 843
	b	beq_cont.17706				# 842
beq_else.17705:
	fmul	f7, f2, f5				# 846
	fmul	f8, f1, f6				# 846
	fadd	f7, f7, f8				# 846
	lwz	r8, 36(r6)				# 397
	slwi	r9, r5, 2				# 402
	lfsx	f8, r8, r9				# 402
	fmul	f7, f7, f8				# 846
	fmul	f8, f0, f6				# 847
	fmul	f2, f2, f3				# 847
	fadd	f2, f8, f2				# 847
	lwz	r8, 36(r6)				# 407
	slwi	r9, r2, 2				# 412
	lfsx	f8, r8, r9				# 412
	fmul	f2, f2, f8				# 847
	fadd	f2, f7, f2				# 846
	fmul	f0, f0, f5				# 848
	fmul	f1, f1, f3				# 848
	fadd	f0, f0, f1				# 848
	lwz	r8, 36(r6)				# 417
	slwi	r9, r7, 2				# 422
	lfsx	f1, r8, r9				# 422
	fmul	f0, f0, f1				# 848
	fadd	f0, f2, f0				# 846
	stfs	f4, 112(r3)				# 845
	mfspr	r31, 8				# 845
	stw	r31, 120(r3)				# 845
	addi	r3, r3, 124				# 845
	bl	min_caml_fhalf				# 845
	addi	r3, r3, -124				# 845
	lwz	r31, 120(r3)				# 845
	mtspr	8, r31				# 845
	lfs	f1, 112(r3)				# 845
	fadd	f0, f1, f0				# 845
beq_cont.17706:
	lfs	f1, 24(r3)				# 823
	stfs	f0, 120(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 128(r3)				# 823
	addi	r3, r3, 132				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -132				# 823
	lwz	r31, 128(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 84(r3)				# 277
	lwz	r5, 16(r2)				# 277
	lwz	r6, 80(r3)				# 282
	slwi	r7, r6, 2				# 282
	lfsx	f1, r5, r7				# 282
	fmul	f0, f0, f1				# 823
	lfs	f1, 16(r3)				# 823
	stfs	f0, 128(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 136(r3)				# 823
	addi	r3, r3, 140				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -140				# 823
	lwz	r31, 136(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 84(r3)				# 287
	lwz	r5, 16(r2)				# 287
	lwz	r6, 64(r3)				# 292
	slwi	r7, r6, 2				# 292
	lfsx	f1, r5, r7				# 292
	fmul	f0, f0, f1				# 823
	lfs	f1, 128(r3)				# 823
	fadd	f0, f1, f0				# 823
	lfs	f1, 8(r3)				# 823
	stfs	f0, 136(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 144(r3)				# 823
	addi	r3, r3, 148				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -148				# 823
	lwz	r31, 144(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 84(r3)				# 297
	lwz	r5, 16(r2)				# 297
	lwz	r6, 48(r3)				# 302
	slwi	r7, r6, 2				# 302
	lfsx	f1, r5, r7				# 302
	fmul	f0, f0, f1				# 823
	lfs	f1, 136(r3)				# 823
	fadd	f0, f1, f0				# 823
	lwz	r5, 12(r2)				# 268
	lwz	r7, 80(r3)				# 825
	cmpw	cr7, r5, r7				# 825
	bne	cr7, beq_else.17707				# 825
	b	beq_cont.17708				# 825
beq_else.17707:
	lfs	f1, 8(r3)				# 829
	lfs	f2, 16(r3)				# 829
	fmul	f3, f2, f1				# 829
	lwz	r5, 36(r2)				# 397
	slwi	r8, r7, 2				# 402
	lfsx	f4, r5, r8				# 402
	fmul	f3, f3, f4				# 829
	fadd	f0, f0, f3				# 828
	lfs	f3, 24(r3)				# 830
	fmul	f1, f1, f3				# 830
	lwz	r5, 36(r2)				# 407
	lwz	r8, 64(r3)				# 412
	slwi	r8, r8, 2				# 412
	lfsx	f4, r5, r8				# 412
	fmul	f1, f1, f4				# 830
	fadd	f0, f0, f1				# 828
	fmul	f1, f3, f2				# 831
	lwz	r5, 36(r2)				# 417
	slwi	r6, r6, 2				# 422
	lfsx	f2, r5, r6				# 422
	fmul	f1, f1, f2				# 831
	fadd	f0, f0, f1				# 828
beq_cont.17708:
	lwz	r5, 4(r2)				# 239
	lwz	r6, 4(r3)				# 869
	cmpw	cr7, r5, r6				# 869
	bne	cr7, beq_else.17709				# 869
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f1, 0(r31)				# 869
	fsub	f0, f0, f1				# 869
	b	beq_cont.17710				# 869
beq_else.17709:
beq_cont.17710:
	lfs	f1, 120(r3)				# 871
	stfs	f0, 144(r3)				# 871
	mfspr	r31, 8				# 871
	fmr	f0, f1				# 871
	stw	r31, 152(r3)				# 871
	addi	r3, r3, 156				# 871
	bl	min_caml_fsqr				# 871
	addi	r3, r3, -156				# 871
	lwz	r31, 152(r3)				# 871
	mtspr	8, r31				# 871
	lfs	f1, 144(r3)				# 871
	lfs	f2, 104(r3)				# 871
	fmul	f1, f2, f1				# 871
	fsub	f0, f0, f1				# 871
	stfs	f0, 152(r3)				# 873
	mfspr	r31, 8				# 873
	stw	r31, 160(r3)				# 873
	addi	r3, r3, 164				# 873
	bl	min_caml_fispos				# 873
	addi	r3, r3, -164				# 873
	lwz	r31, 160(r3)				# 873
	mtspr	8, r31				# 873
	lwz	r5, 80(r3)				# 873
	cmpw	cr7, r2, r5				# 873
	bne	cr7, beq_else.17711				# 873
	addi	r2, 0, 0
	blr
beq_else.17711:
	lfs	f0, 152(r3)				# 874
	mfspr	r31, 8				# 874
	stw	r31, 160(r3)				# 874
	addi	r3, r3, 164				# 874
	bl	min_caml_sqrt				# 874
	addi	r3, r3, -164				# 874
	lwz	r31, 160(r3)				# 874
	mtspr	8, r31				# 874
	lwz	r2, 84(r3)				# 259
	lwz	r2, 24(r2)				# 259
	lwz	r5, 80(r3)				# 875
	cmpw	cr7, r2, r5				# 875
	bne	cr7, beq_else.17712				# 875
	mfspr	r31, 8				# 875
	stw	r31, 160(r3)				# 875
	addi	r3, r3, 164				# 875
	bl	min_caml_fneg				# 875
	addi	r3, r3, -164				# 875
	lwz	r31, 160(r3)				# 875
	mtspr	8, r31				# 875
	b	beq_cont.17713				# 875
beq_else.17712:
beq_cont.17713:
	lfs	f1, 120(r3)				# 876
	fsub	f0, f0, f1				# 876
	lfs	f1, 104(r3)				# 876
	fdiv	f0, f0, f1				# 876
	lwz	r2, 80(r3)				# 876
	slwi	r2, r2, 2				# 876
	lwz	r5, 0(r3)				# 876
	stfsx	f0, r5, r2				# 876
	addi	r2, 0, 1
	blr
beq_else.17704:
	addi	r2, 0, 0
	blr
solver_rect_fast.2656:
	lwz	r7, 24(r30)				# 901
	lwz	r8, 20(r30)				# 901
	lwz	r9, 16(r30)				# 901
	lwz	r10, 12(r30)				# 901
	lwz	r11, 8(r30)				# 901
	lwz	r12, 4(r30)				# 901
	slwi	r13, r11, 2				# 902
	lfsx	f3, r6, r13				# 902
	fsub	f3, f3, f0				# 902
	slwi	r13, r12, 2				# 902
	lfsx	f4, r6, r13				# 902
	fmul	f3, f3, f4				# 902
	slwi	r13, r12, 2				# 904
	lfsx	f4, r5, r13				# 904
	fmul	f4, f3, f4				# 904
	fadd	f4, f4, f1				# 904
	stw	r7, 0(r3)				# 904
	stw	r8, 4(r3)				# 904
	stfs	f0, 8(r3)				# 904
	stw	r10, 16(r3)				# 904
	stfs	f1, 24(r3)				# 904
	stw	r6, 32(r3)				# 904
	stfs	f2, 40(r3)				# 904
	stfs	f3, 48(r3)				# 904
	stw	r5, 56(r3)				# 904
	stw	r9, 60(r3)				# 904
	stw	r11, 64(r3)				# 904
	stw	r12, 68(r3)				# 904
	stw	r2, 72(r3)				# 904
	mfspr	r31, 8				# 904
	fmr	f0, f4				# 904
	stw	r31, 76(r3)				# 904
	addi	r3, r3, 80				# 904
	bl	min_caml_fabs				# 904
	addi	r3, r3, -80				# 904
	lwz	r31, 76(r3)				# 904
	mtspr	8, r31				# 904
	lwz	r2, 72(r3)				# 287
	lwz	r5, 16(r2)				# 287
	lwz	r6, 68(r3)				# 292
	slwi	r7, r6, 2				# 292
	lfsx	f1, r5, r7				# 292
	mfspr	r31, 8				# 904
	stw	r31, 76(r3)				# 904
	addi	r3, r3, 80				# 904
	bl	min_caml_fless				# 904
	addi	r3, r3, -80				# 904
	lwz	r31, 76(r3)				# 904
	mtspr	8, r31				# 904
	lwz	r5, 64(r3)				# 904
	cmpw	cr7, r2, r5				# 904
	bne	cr7, beq_else.17716				# 904
	addi	r2, 0, 0
	b	beq_cont.17717				# 904
beq_else.17716:
	lwz	r2, 60(r3)				# 905
	slwi	r6, r2, 2				# 905
	lwz	r7, 56(r3)				# 905
	lfsx	f0, r7, r6				# 905
	lfs	f1, 48(r3)				# 905
	fmul	f0, f1, f0				# 905
	lfs	f2, 40(r3)				# 905
	fadd	f0, f0, f2				# 905
	mfspr	r31, 8				# 905
	stw	r31, 76(r3)				# 905
	addi	r3, r3, 80				# 905
	bl	min_caml_fabs				# 905
	addi	r3, r3, -80				# 905
	lwz	r31, 76(r3)				# 905
	mtspr	8, r31				# 905
	lwz	r2, 72(r3)				# 297
	lwz	r5, 16(r2)				# 297
	lwz	r6, 60(r3)				# 302
	slwi	r7, r6, 2				# 302
	lfsx	f1, r5, r7				# 302
	mfspr	r31, 8				# 905
	stw	r31, 76(r3)				# 905
	addi	r3, r3, 80				# 905
	bl	min_caml_fless				# 905
	addi	r3, r3, -80				# 905
	lwz	r31, 76(r3)				# 905
	mtspr	8, r31				# 905
	lwz	r5, 64(r3)				# 905
	cmpw	cr7, r2, r5				# 905
	bne	cr7, beq_else.17718				# 905
	addi	r2, 0, 0
	b	beq_cont.17719				# 905
beq_else.17718:
	lwz	r2, 68(r3)				# 906
	slwi	r6, r2, 2				# 906
	lwz	r7, 32(r3)				# 906
	lfsx	f0, r7, r6				# 906
	mfspr	r31, 8				# 906
	stw	r31, 76(r3)				# 906
	addi	r3, r3, 80				# 906
	bl	min_caml_fiszero				# 906
	addi	r3, r3, -80				# 906
	lwz	r31, 76(r3)				# 906
	mtspr	8, r31				# 906
	lwz	r5, 64(r3)				# 906
	cmpw	cr7, r2, r5				# 906
	bne	cr7, beq_else.17720				# 906
	addi	r2, 0, 1
	b	beq_cont.17721				# 906
beq_else.17720:
	addi	r2, 0, 0
beq_cont.17721:
beq_cont.17719:
beq_cont.17717:
	cmpw	cr7, r2, r5				# 903
	bne	cr7, beq_else.17722				# 903
	lwz	r2, 60(r3)				# 911
	slwi	r6, r2, 2				# 911
	lwz	r7, 32(r3)				# 911
	lfsx	f0, r7, r6				# 911
	lfs	f1, 24(r3)				# 911
	fsub	f0, f0, f1				# 911
	lwz	r6, 16(r3)				# 911
	slwi	r8, r6, 2				# 911
	lfsx	f2, r7, r8				# 911
	fmul	f0, f0, f2				# 911
	slwi	r8, r5, 2				# 913
	lwz	r9, 56(r3)				# 913
	lfsx	f2, r9, r8				# 913
	fmul	f2, f0, f2				# 913
	lfs	f3, 8(r3)				# 913
	fadd	f2, f2, f3				# 913
	stfs	f0, 80(r3)				# 913
	mfspr	r31, 8				# 913
	fmr	f0, f2				# 913
	stw	r31, 88(r3)				# 913
	addi	r3, r3, 92				# 913
	bl	min_caml_fabs				# 913
	addi	r3, r3, -92				# 913
	lwz	r31, 88(r3)				# 913
	mtspr	8, r31				# 913
	lwz	r2, 72(r3)				# 277
	lwz	r5, 16(r2)				# 277
	lwz	r6, 64(r3)				# 282
	slwi	r7, r6, 2				# 282
	lfsx	f1, r5, r7				# 282
	mfspr	r31, 8				# 913
	stw	r31, 88(r3)				# 913
	addi	r3, r3, 92				# 913
	bl	min_caml_fless				# 913
	addi	r3, r3, -92				# 913
	lwz	r31, 88(r3)				# 913
	mtspr	8, r31				# 913
	lwz	r5, 64(r3)				# 913
	cmpw	cr7, r2, r5				# 913
	bne	cr7, beq_else.17724				# 913
	addi	r2, 0, 0
	b	beq_cont.17725				# 913
beq_else.17724:
	lwz	r2, 60(r3)				# 914
	slwi	r6, r2, 2				# 914
	lwz	r7, 56(r3)				# 914
	lfsx	f0, r7, r6				# 914
	lfs	f1, 80(r3)				# 914
	fmul	f0, f1, f0				# 914
	lfs	f2, 40(r3)				# 914
	fadd	f0, f0, f2				# 914
	mfspr	r31, 8				# 914
	stw	r31, 88(r3)				# 914
	addi	r3, r3, 92				# 914
	bl	min_caml_fabs				# 914
	addi	r3, r3, -92				# 914
	lwz	r31, 88(r3)				# 914
	mtspr	8, r31				# 914
	lwz	r2, 72(r3)				# 297
	lwz	r5, 16(r2)				# 297
	lwz	r6, 60(r3)				# 302
	slwi	r6, r6, 2				# 302
	lfsx	f1, r5, r6				# 302
	mfspr	r31, 8				# 914
	stw	r31, 88(r3)				# 914
	addi	r3, r3, 92				# 914
	bl	min_caml_fless				# 914
	addi	r3, r3, -92				# 914
	lwz	r31, 88(r3)				# 914
	mtspr	8, r31				# 914
	lwz	r5, 64(r3)				# 914
	cmpw	cr7, r2, r5				# 914
	bne	cr7, beq_else.17726				# 914
	addi	r2, 0, 0
	b	beq_cont.17727				# 914
beq_else.17726:
	lwz	r2, 16(r3)				# 915
	slwi	r2, r2, 2				# 915
	lwz	r6, 32(r3)				# 915
	lfsx	f0, r6, r2				# 915
	mfspr	r31, 8				# 915
	stw	r31, 88(r3)				# 915
	addi	r3, r3, 92				# 915
	bl	min_caml_fiszero				# 915
	addi	r3, r3, -92				# 915
	lwz	r31, 88(r3)				# 915
	mtspr	8, r31				# 915
	lwz	r5, 64(r3)				# 915
	cmpw	cr7, r2, r5				# 915
	bne	cr7, beq_else.17728				# 915
	addi	r2, 0, 1
	b	beq_cont.17729				# 915
beq_else.17728:
	addi	r2, 0, 0
beq_cont.17729:
beq_cont.17727:
beq_cont.17725:
	cmpw	cr7, r2, r5				# 912
	bne	cr7, beq_else.17730				# 912
	lwz	r2, 32(r3)				# 920
	lfs	f0, 16(r2)				# 920
	lfs	f1, 40(r3)				# 920
	fsub	f0, f0, f1				# 920
	lwz	r6, 4(r3)				# 920
	slwi	r7, r6, 2				# 920
	lfsx	f1, r2, r7				# 920
	fmul	f0, f0, f1				# 920
	slwi	r7, r5, 2				# 922
	lwz	r8, 56(r3)				# 922
	lfsx	f1, r8, r7				# 922
	fmul	f1, f0, f1				# 922
	lfs	f2, 8(r3)				# 922
	fadd	f1, f1, f2				# 922
	stfs	f0, 88(r3)				# 922
	mfspr	r31, 8				# 922
	fmr	f0, f1				# 922
	stw	r31, 96(r3)				# 922
	addi	r3, r3, 100				# 922
	bl	min_caml_fabs				# 922
	addi	r3, r3, -100				# 922
	lwz	r31, 96(r3)				# 922
	mtspr	8, r31				# 922
	lwz	r2, 72(r3)				# 277
	lwz	r5, 16(r2)				# 277
	lwz	r6, 64(r3)				# 282
	slwi	r7, r6, 2				# 282
	lfsx	f1, r5, r7				# 282
	mfspr	r31, 8				# 922
	stw	r31, 96(r3)				# 922
	addi	r3, r3, 100				# 922
	bl	min_caml_fless				# 922
	addi	r3, r3, -100				# 922
	lwz	r31, 96(r3)				# 922
	mtspr	8, r31				# 922
	lwz	r5, 64(r3)				# 922
	cmpw	cr7, r2, r5				# 922
	bne	cr7, beq_else.17731				# 922
	addi	r2, 0, 0
	b	beq_cont.17732				# 922
beq_else.17731:
	lwz	r2, 68(r3)				# 923
	slwi	r6, r2, 2				# 923
	lwz	r7, 56(r3)				# 923
	lfsx	f0, r7, r6				# 923
	lfs	f1, 88(r3)				# 923
	fmul	f0, f1, f0				# 923
	lfs	f2, 24(r3)				# 923
	fadd	f0, f0, f2				# 923
	mfspr	r31, 8				# 923
	stw	r31, 96(r3)				# 923
	addi	r3, r3, 100				# 923
	bl	min_caml_fabs				# 923
	addi	r3, r3, -100				# 923
	lwz	r31, 96(r3)				# 923
	mtspr	8, r31				# 923
	lwz	r2, 72(r3)				# 287
	lwz	r2, 16(r2)				# 287
	lwz	r5, 68(r3)				# 292
	slwi	r5, r5, 2				# 292
	lfsx	f1, r2, r5				# 292
	mfspr	r31, 8				# 923
	stw	r31, 96(r3)				# 923
	addi	r3, r3, 100				# 923
	bl	min_caml_fless				# 923
	addi	r3, r3, -100				# 923
	lwz	r31, 96(r3)				# 923
	mtspr	8, r31				# 923
	lwz	r5, 64(r3)				# 923
	cmpw	cr7, r2, r5				# 923
	bne	cr7, beq_else.17733				# 923
	addi	r2, 0, 0
	b	beq_cont.17734				# 923
beq_else.17733:
	lwz	r2, 4(r3)				# 924
	slwi	r2, r2, 2				# 924
	lwz	r6, 32(r3)				# 924
	lfsx	f0, r6, r2				# 924
	mfspr	r31, 8				# 924
	stw	r31, 96(r3)				# 924
	addi	r3, r3, 100				# 924
	bl	min_caml_fiszero				# 924
	addi	r3, r3, -100				# 924
	lwz	r31, 96(r3)				# 924
	mtspr	8, r31				# 924
	lwz	r5, 64(r3)				# 924
	cmpw	cr7, r2, r5				# 924
	bne	cr7, beq_else.17735				# 924
	addi	r2, 0, 1
	b	beq_cont.17736				# 924
beq_else.17735:
	addi	r2, 0, 0
beq_cont.17736:
beq_cont.17734:
beq_cont.17732:
	cmpw	cr7, r2, r5				# 921
	bne	cr7, beq_else.17737				# 921
	addi	r2, 0, 0
	blr
beq_else.17737:
	slwi	r2, r5, 2				# 928
	lwz	r5, 0(r3)				# 928
	lfs	f0, 88(r3)				# 928
	stfsx	f0, r5, r2				# 928
	addi	r2, 0, 3
	blr
beq_else.17730:
	slwi	r2, r5, 2				# 919
	lwz	r5, 0(r3)				# 919
	lfs	f0, 80(r3)				# 919
	stfsx	f0, r5, r2				# 919
	addi	r2, 0, 2
	blr
beq_else.17722:
	slwi	r2, r5, 2				# 910
	lwz	r5, 0(r3)				# 910
	lfs	f0, 48(r3)				# 910
	stfsx	f0, r5, r2				# 910
	addi	r2, 0, 1
	blr
solver_second_fast.2669:
	lwz	r6, 20(r30)				# 943
	lwz	r7, 16(r30)				# 943
	lwz	r8, 12(r30)				# 943
	lwz	r9, 8(r30)				# 943
	lwz	r10, 4(r30)				# 943
	slwi	r11, r9, 2				# 945
	lfsx	f3, r5, r11				# 945
	stw	r6, 0(r3)				# 946
	stfs	f3, 8(r3)				# 946
	stw	r2, 16(r3)				# 946
	stfs	f2, 24(r3)				# 946
	stw	r8, 32(r3)				# 946
	stfs	f1, 40(r3)				# 946
	stw	r7, 48(r3)				# 946
	stfs	f0, 56(r3)				# 946
	stw	r5, 64(r3)				# 946
	stw	r10, 68(r3)				# 946
	stw	r9, 72(r3)				# 946
	mfspr	r31, 8				# 946
	fmr	f0, f3				# 946
	stw	r31, 76(r3)				# 946
	addi	r3, r3, 80				# 946
	bl	min_caml_fiszero				# 946
	addi	r3, r3, -80				# 946
	lwz	r31, 76(r3)				# 946
	mtspr	8, r31				# 946
	lwz	r5, 72(r3)				# 946
	cmpw	cr7, r2, r5				# 946
	bne	cr7, beq_else.17742				# 946
	lwz	r2, 68(r3)				# 949
	slwi	r6, r2, 2				# 949
	lwz	r7, 64(r3)				# 949
	lfsx	f0, r7, r6				# 949
	lfs	f1, 56(r3)				# 949
	fmul	f0, f0, f1				# 949
	lwz	r6, 48(r3)				# 949
	slwi	r8, r6, 2				# 949
	lfsx	f2, r7, r8				# 949
	lfs	f3, 40(r3)				# 949
	fmul	f2, f2, f3				# 949
	fadd	f0, f0, f2				# 949
	lwz	r8, 32(r3)				# 949
	slwi	r9, r8, 2				# 949
	lfsx	f2, r7, r9				# 949
	lfs	f4, 24(r3)				# 949
	fmul	f2, f2, f4				# 949
	fadd	f0, f0, f2				# 949
	stfs	f0, 80(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 88(r3)				# 823
	addi	r3, r3, 92				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -92				# 823
	lwz	r31, 88(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 16(r3)				# 277
	lwz	r5, 16(r2)				# 277
	lwz	r6, 72(r3)				# 282
	slwi	r7, r6, 2				# 282
	lfsx	f1, r5, r7				# 282
	fmul	f0, f0, f1				# 823
	lfs	f1, 40(r3)				# 823
	stfs	f0, 88(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 96(r3)				# 823
	addi	r3, r3, 100				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -100				# 823
	lwz	r31, 96(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 16(r3)				# 287
	lwz	r5, 16(r2)				# 287
	lwz	r6, 68(r3)				# 292
	slwi	r7, r6, 2				# 292
	lfsx	f1, r5, r7				# 292
	fmul	f0, f0, f1				# 823
	lfs	f1, 88(r3)				# 823
	fadd	f0, f1, f0				# 823
	lfs	f1, 24(r3)				# 823
	stfs	f0, 96(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 104(r3)				# 823
	addi	r3, r3, 108				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -108				# 823
	lwz	r31, 104(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 16(r3)				# 297
	lwz	r5, 16(r2)				# 297
	lwz	r6, 48(r3)				# 302
	slwi	r7, r6, 2				# 302
	lfsx	f1, r5, r7				# 302
	fmul	f0, f0, f1				# 823
	lfs	f1, 96(r3)				# 823
	fadd	f0, f1, f0				# 823
	lwz	r5, 12(r2)				# 268
	lwz	r7, 72(r3)				# 825
	cmpw	cr7, r5, r7				# 825
	bne	cr7, beq_else.17744				# 825
	b	beq_cont.17745				# 825
beq_else.17744:
	lfs	f1, 24(r3)				# 829
	lfs	f2, 40(r3)				# 829
	fmul	f3, f2, f1				# 829
	lwz	r5, 36(r2)				# 397
	slwi	r8, r7, 2				# 402
	lfsx	f4, r5, r8				# 402
	fmul	f3, f3, f4				# 829
	fadd	f0, f0, f3				# 828
	lfs	f3, 56(r3)				# 830
	fmul	f1, f1, f3				# 830
	lwz	r5, 36(r2)				# 407
	lwz	r8, 68(r3)				# 412
	slwi	r8, r8, 2				# 412
	lfsx	f4, r5, r8				# 412
	fmul	f1, f1, f4				# 830
	fadd	f0, f0, f1				# 828
	fmul	f1, f3, f2				# 831
	lwz	r5, 36(r2)				# 417
	slwi	r6, r6, 2				# 422
	lfsx	f2, r5, r6				# 422
	fmul	f1, f1, f2				# 831
	fadd	f0, f0, f1				# 828
beq_cont.17745:
	lwz	r5, 4(r2)				# 239
	lwz	r6, 32(r3)				# 951
	cmpw	cr7, r5, r6				# 951
	bne	cr7, beq_else.17746				# 951
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f1, 0(r31)				# 951
	fsub	f0, f0, f1				# 951
	b	beq_cont.17747				# 951
beq_else.17746:
beq_cont.17747:
	lfs	f1, 80(r3)				# 952
	stfs	f0, 104(r3)				# 952
	mfspr	r31, 8				# 952
	fmr	f0, f1				# 952
	stw	r31, 112(r3)				# 952
	addi	r3, r3, 116				# 952
	bl	min_caml_fsqr				# 952
	addi	r3, r3, -116				# 952
	lwz	r31, 112(r3)				# 952
	mtspr	8, r31				# 952
	lfs	f1, 104(r3)				# 952
	lfs	f2, 8(r3)				# 952
	fmul	f1, f2, f1				# 952
	fsub	f0, f0, f1				# 952
	stfs	f0, 112(r3)				# 953
	mfspr	r31, 8				# 953
	stw	r31, 120(r3)				# 953
	addi	r3, r3, 124				# 953
	bl	min_caml_fispos				# 953
	addi	r3, r3, -124				# 953
	lwz	r31, 120(r3)				# 953
	mtspr	8, r31				# 953
	lwz	r5, 72(r3)				# 953
	cmpw	cr7, r2, r5				# 953
	bne	cr7, beq_else.17748				# 953
	addi	r2, 0, 0
	blr
beq_else.17748:
	lwz	r2, 16(r3)				# 259
	lwz	r2, 24(r2)				# 259
	cmpw	cr7, r2, r5				# 954
	bne	cr7, beq_else.17749				# 954
	lfs	f0, 112(r3)				# 957
	mfspr	r31, 8				# 957
	stw	r31, 120(r3)				# 957
	addi	r3, r3, 124				# 957
	bl	min_caml_sqrt				# 957
	addi	r3, r3, -124				# 957
	lwz	r31, 120(r3)				# 957
	mtspr	8, r31				# 957
	lfs	f1, 80(r3)				# 957
	fsub	f0, f1, f0				# 957
	lwz	r2, 64(r3)				# 957
	lfs	f1, 16(r2)				# 957
	fmul	f0, f0, f1				# 957
	lwz	r2, 72(r3)				# 957
	slwi	r2, r2, 2				# 957
	lwz	r5, 0(r3)				# 957
	stfsx	f0, r5, r2				# 957
	b	beq_cont.17750				# 954
beq_else.17749:
	lfs	f0, 112(r3)				# 955
	mfspr	r31, 8				# 955
	stw	r31, 120(r3)				# 955
	addi	r3, r3, 124				# 955
	bl	min_caml_sqrt				# 955
	addi	r3, r3, -124				# 955
	lwz	r31, 120(r3)				# 955
	mtspr	8, r31				# 955
	lfs	f1, 80(r3)				# 955
	fadd	f0, f1, f0				# 955
	lwz	r2, 64(r3)				# 955
	lfs	f1, 16(r2)				# 955
	fmul	f0, f0, f1				# 955
	lwz	r2, 72(r3)				# 955
	slwi	r2, r2, 2				# 955
	lwz	r5, 0(r3)				# 955
	stfsx	f0, r5, r2				# 955
beq_cont.17750:
	addi	r2, 0, 1
	blr
beq_else.17742:
	addi	r2, 0, 0
	blr
setup_second_table.2702:
	lwz	r6, 24(r30)				# 1076
	lwz	r7, 20(r30)				# 1076
	lwz	r8, 16(r30)				# 1076
	lwz	r9, 12(r30)				# 1076
	lwz	r10, 8(r30)				# 1076
	lfs	f0, 4(r30)				# 1076
	stw	r8, 0(r3)				# 1077
	stw	r5, 4(r3)				# 1077
	stw	r7, 8(r3)				# 1077
	stw	r10, 12(r3)				# 1077
	stw	r2, 16(r3)				# 1077
	stw	r9, 20(r3)				# 1077
	mfspr	r31, 8				# 1077
	mr	r2, r6				# 1077
	stw	r31, 24(r3)				# 1077
	addi	r3, r3, 28				# 1077
	bl	min_caml_create_float_array				# 1077
	addi	r3, r3, -28				# 1077
	lwz	r31, 24(r3)				# 1077
	mtspr	8, r31				# 1077
	lwz	r5, 20(r3)				# 1079
	slwi	r6, r5, 2				# 1079
	lwz	r7, 16(r3)				# 1079
	lfsx	f0, r7, r6				# 1079
	lwz	r6, 12(r3)				# 1079
	slwi	r8, r6, 2				# 1079
	lfsx	f1, r7, r8				# 1079
	lwz	r8, 8(r3)				# 1079
	slwi	r9, r8, 2				# 1079
	lfsx	f2, r7, r9				# 1079
	stw	r2, 24(r3)				# 823
	stfs	f0, 32(r3)				# 823
	stfs	f2, 40(r3)				# 823
	stfs	f1, 48(r3)				# 823
	mfspr	r31, 8				# 823
	stw	r31, 56(r3)				# 823
	addi	r3, r3, 60				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -60				# 823
	lwz	r31, 56(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 4(r3)				# 277
	lwz	r5, 16(r2)				# 277
	lwz	r6, 20(r3)				# 282
	slwi	r7, r6, 2				# 282
	lfsx	f1, r5, r7				# 282
	fmul	f0, f0, f1				# 823
	lfs	f1, 48(r3)				# 823
	stfs	f0, 56(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 64(r3)				# 823
	addi	r3, r3, 68				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -68				# 823
	lwz	r31, 64(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 4(r3)				# 287
	lwz	r5, 16(r2)				# 287
	lwz	r6, 12(r3)				# 292
	slwi	r7, r6, 2				# 292
	lfsx	f1, r5, r7				# 292
	fmul	f0, f0, f1				# 823
	lfs	f1, 56(r3)				# 823
	fadd	f0, f1, f0				# 823
	lfs	f1, 40(r3)				# 823
	stfs	f0, 64(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 72(r3)				# 823
	addi	r3, r3, 76				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -76				# 823
	lwz	r31, 72(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 4(r3)				# 297
	lwz	r5, 16(r2)				# 297
	lwz	r6, 8(r3)				# 302
	slwi	r7, r6, 2				# 302
	lfsx	f1, r5, r7				# 302
	fmul	f0, f0, f1				# 823
	lfs	f1, 64(r3)				# 823
	fadd	f0, f1, f0				# 823
	lwz	r5, 12(r2)				# 268
	lwz	r7, 20(r3)				# 825
	cmpw	cr7, r5, r7				# 825
	bne	cr7, beq_else.17752				# 825
	b	beq_cont.17753				# 825
beq_else.17752:
	lfs	f1, 40(r3)				# 829
	lfs	f2, 48(r3)				# 829
	fmul	f3, f2, f1				# 829
	lwz	r5, 36(r2)				# 397
	slwi	r8, r7, 2				# 402
	lfsx	f4, r5, r8				# 402
	fmul	f3, f3, f4				# 829
	fadd	f0, f0, f3				# 828
	lfs	f3, 32(r3)				# 830
	fmul	f1, f1, f3				# 830
	lwz	r5, 36(r2)				# 407
	lwz	r8, 12(r3)				# 412
	slwi	r9, r8, 2				# 412
	lfsx	f4, r5, r9				# 412
	fmul	f1, f1, f4				# 830
	fadd	f0, f0, f1				# 828
	fmul	f1, f3, f2				# 831
	lwz	r5, 36(r2)				# 417
	slwi	r9, r6, 2				# 422
	lfsx	f2, r5, r9				# 422
	fmul	f1, f1, f2				# 831
	fadd	f0, f0, f1				# 828
beq_cont.17753:
	slwi	r5, r7, 2				# 1080
	lwz	r8, 16(r3)				# 1080
	lfsx	f1, r8, r5				# 1080
	lwz	r5, 16(r2)				# 277
	slwi	r9, r7, 2				# 282
	lfsx	f2, r5, r9				# 282
	fmul	f1, f1, f2				# 1080
	stfs	f0, 72(r3)				# 1080
	mfspr	r31, 8				# 1080
	fmr	f0, f1				# 1080
	stw	r31, 80(r3)				# 1080
	addi	r3, r3, 84				# 1080
	bl	min_caml_fneg				# 1080
	addi	r3, r3, -84				# 1080
	lwz	r31, 80(r3)				# 1080
	mtspr	8, r31				# 1080
	lwz	r2, 12(r3)				# 1081
	slwi	r5, r2, 2				# 1081
	lwz	r6, 16(r3)				# 1081
	lfsx	f1, r6, r5				# 1081
	lwz	r5, 4(r3)				# 287
	lwz	r7, 16(r5)				# 287
	slwi	r8, r2, 2				# 292
	lfsx	f2, r7, r8				# 292
	fmul	f1, f1, f2				# 1081
	stfs	f0, 80(r3)				# 1081
	mfspr	r31, 8				# 1081
	fmr	f0, f1				# 1081
	stw	r31, 88(r3)				# 1081
	addi	r3, r3, 92				# 1081
	bl	min_caml_fneg				# 1081
	addi	r3, r3, -92				# 1081
	lwz	r31, 88(r3)				# 1081
	mtspr	8, r31				# 1081
	lwz	r2, 8(r3)				# 1082
	slwi	r5, r2, 2				# 1082
	lwz	r6, 16(r3)				# 1082
	lfsx	f1, r6, r5				# 1082
	lwz	r5, 4(r3)				# 297
	lwz	r7, 16(r5)				# 297
	slwi	r8, r2, 2				# 302
	lfsx	f2, r7, r8				# 302
	fmul	f1, f1, f2				# 1082
	stfs	f0, 88(r3)				# 1082
	mfspr	r31, 8				# 1082
	fmr	f0, f1				# 1082
	stw	r31, 96(r3)				# 1082
	addi	r3, r3, 100				# 1082
	bl	min_caml_fneg				# 1082
	addi	r3, r3, -100				# 1082
	lwz	r31, 96(r3)				# 1082
	mtspr	8, r31				# 1082
	lwz	r2, 20(r3)				# 1084
	slwi	r5, r2, 2				# 1084
	lwz	r6, 24(r3)				# 1084
	lfs	f1, 72(r3)				# 1084
	stfsx	f1, r6, r5				# 1084
	lwz	r5, 4(r3)				# 268
	lwz	r7, 12(r5)				# 268
	cmpw	cr7, r7, r2				# 1087
	bne	cr7, beq_else.17754				# 1087
	lwz	r5, 12(r3)				# 1092
	slwi	r5, r5, 2				# 1092
	lfs	f2, 80(r3)				# 1092
	stfsx	f2, r6, r5				# 1092
	lwz	r5, 8(r3)				# 1093
	slwi	r5, r5, 2				# 1093
	lfs	f2, 88(r3)				# 1093
	stfsx	f2, r6, r5				# 1093
	lwz	r5, 0(r3)				# 1094
	slwi	r5, r5, 2				# 1094
	stfsx	f0, r6, r5				# 1094
	b	beq_cont.17755				# 1087
beq_else.17754:
	lwz	r7, 8(r3)				# 1088
	slwi	r8, r7, 2				# 1088
	lwz	r9, 16(r3)				# 1088
	lfsx	f2, r9, r8				# 1088
	lwz	r8, 36(r5)				# 407
	lwz	r10, 12(r3)				# 412
	slwi	r11, r10, 2				# 412
	lfsx	f3, r8, r11				# 412
	fmul	f2, f2, f3				# 1088
	slwi	r8, r10, 2				# 1088
	lfsx	f3, r9, r8				# 1088
	lwz	r8, 36(r5)				# 417
	slwi	r11, r7, 2				# 422
	lfsx	f4, r8, r11				# 422
	fmul	f3, f3, f4				# 1088
	fadd	f2, f2, f3				# 1088
	stfs	f0, 96(r3)				# 1088
	mfspr	r31, 8				# 1088
	fmr	f0, f2				# 1088
	stw	r31, 104(r3)				# 1088
	addi	r3, r3, 108				# 1088
	bl	min_caml_fhalf				# 1088
	addi	r3, r3, -108				# 1088
	lwz	r31, 104(r3)				# 1088
	mtspr	8, r31				# 1088
	lfs	f1, 80(r3)				# 1088
	fsub	f0, f1, f0				# 1088
	lwz	r2, 12(r3)				# 1088
	slwi	r5, r2, 2				# 1088
	lwz	r6, 24(r3)				# 1088
	stfsx	f0, r6, r5				# 1088
	lwz	r5, 8(r3)				# 1089
	slwi	r7, r5, 2				# 1089
	lwz	r8, 16(r3)				# 1089
	lfsx	f0, r8, r7				# 1089
	lwz	r7, 4(r3)				# 397
	lwz	r9, 36(r7)				# 397
	lwz	r10, 20(r3)				# 402
	slwi	r11, r10, 2				# 402
	lfsx	f1, r9, r11				# 402
	fmul	f0, f0, f1				# 1089
	slwi	r9, r10, 2				# 1089
	lfsx	f1, r8, r9				# 1089
	lwz	r9, 36(r7)				# 417
	slwi	r11, r5, 2				# 422
	lfsx	f2, r9, r11				# 422
	fmul	f1, f1, f2				# 1089
	fadd	f0, f0, f1				# 1089
	mfspr	r31, 8				# 1089
	stw	r31, 104(r3)				# 1089
	addi	r3, r3, 108				# 1089
	bl	min_caml_fhalf				# 1089
	addi	r3, r3, -108				# 1089
	lwz	r31, 104(r3)				# 1089
	mtspr	8, r31				# 1089
	lfs	f1, 88(r3)				# 1089
	fsub	f0, f1, f0				# 1089
	lwz	r2, 8(r3)				# 1089
	slwi	r2, r2, 2				# 1089
	lwz	r5, 24(r3)				# 1089
	stfsx	f0, r5, r2				# 1089
	lwz	r2, 12(r3)				# 1090
	slwi	r6, r2, 2				# 1090
	lwz	r7, 16(r3)				# 1090
	lfsx	f0, r7, r6				# 1090
	lwz	r6, 4(r3)				# 397
	lwz	r8, 36(r6)				# 397
	lwz	r9, 20(r3)				# 402
	slwi	r10, r9, 2				# 402
	lfsx	f1, r8, r10				# 402
	fmul	f0, f0, f1				# 1090
	slwi	r8, r9, 2				# 1090
	lfsx	f1, r7, r8				# 1090
	lwz	r6, 36(r6)				# 407
	slwi	r2, r2, 2				# 412
	lfsx	f2, r6, r2				# 412
	fmul	f1, f1, f2				# 1090
	fadd	f0, f0, f1				# 1090
	mfspr	r31, 8				# 1090
	stw	r31, 104(r3)				# 1090
	addi	r3, r3, 108				# 1090
	bl	min_caml_fhalf				# 1090
	addi	r3, r3, -108				# 1090
	lwz	r31, 104(r3)				# 1090
	mtspr	8, r31				# 1090
	lfs	f1, 96(r3)				# 1090
	fsub	f0, f1, f0				# 1090
	lwz	r2, 0(r3)				# 1090
	slwi	r2, r2, 2				# 1090
	lwz	r5, 24(r3)				# 1090
	stfsx	f0, r5, r2				# 1090
beq_cont.17755:
	lfs	f0, 72(r3)				# 1096
	mfspr	r31, 8				# 1096
	stw	r31, 104(r3)				# 1096
	addi	r3, r3, 108				# 1096
	bl	min_caml_fiszero				# 1096
	addi	r3, r3, -108				# 1096
	lwz	r31, 104(r3)				# 1096
	mtspr	8, r31				# 1096
	lwz	r5, 20(r3)				# 1096
	cmpw	cr7, r2, r5				# 1096
	bne	cr7, beq_else.17756				# 1096
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 1097
	lfs	f1, 72(r3)				# 1097
	fdiv	f0, f0, f1				# 1097
	lwz	r2, 24(r3)				# 1097
	stfs	f0, 16(r2)				# 1097
	b	beq_cont.17757				# 1096
beq_else.17756:
beq_cont.17757:
	lwz	r2, 24(r3)				# 1099
	blr
iter_setup_dirvec_constants.2705:
	lwz	r6, 32(r30)				# 1104
	lwz	r7, 28(r30)				# 1104
	lwz	r8, 24(r30)				# 1104
	lwz	r9, 20(r30)				# 1104
	lwz	r10, 16(r30)				# 1104
	lwz	r11, 12(r30)				# 1104
	lwz	r12, 8(r30)				# 1104
	lfs	f0, 4(r30)				# 1104
	cmpw	cr7, r11, r5				# 1105
	bgt	cr7, ble_else.17758				# 1105
	slwi	r13, r5, 2				# 1106
	lwzx	r7, r7, r13				# 1106
	lwz	r13, 4(r2)				# 514
	lwz	r14, 0(r2)				# 508
	lwz	r15, 4(r7)				# 239
	stw	r2, 0(r3)				# 1110
	stw	r30, 4(r3)				# 1110
	stw	r12, 8(r3)				# 1110
	stw	r5, 12(r3)				# 1110
	cmpw	cr7, r15, r12				# 1110
	bne	cr7, beq_else.17759				# 1110
	addi	r6, 0, 6
	stw	r13, 16(r3)				# 1031
	stw	r8, 20(r3)				# 1031
	stw	r10, 24(r3)				# 1031
	stw	r9, 28(r3)				# 1031
	stfs	f0, 32(r3)				# 1031
	stw	r7, 40(r3)				# 1031
	stw	r14, 44(r3)				# 1031
	stw	r11, 48(r3)				# 1031
	mfspr	r31, 8				# 1031
	mr	r2, r6				# 1031
	stw	r31, 52(r3)				# 1031
	addi	r3, r3, 56				# 1031
	bl	min_caml_create_float_array				# 1031
	addi	r3, r3, -56				# 1031
	lwz	r31, 52(r3)				# 1031
	mtspr	8, r31				# 1031
	lwz	r5, 48(r3)				# 1033
	slwi	r6, r5, 2				# 1033
	lwz	r7, 44(r3)				# 1033
	lfsx	f0, r7, r6				# 1033
	stw	r2, 52(r3)				# 1033
	mfspr	r31, 8				# 1033
	stw	r31, 56(r3)				# 1033
	addi	r3, r3, 60				# 1033
	bl	min_caml_fiszero				# 1033
	addi	r3, r3, -60				# 1033
	lwz	r31, 56(r3)				# 1033
	mtspr	8, r31				# 1033
	lwz	r5, 48(r3)				# 1033
	cmpw	cr7, r2, r5				# 1033
	bne	cr7, beq_else.17761				# 1033
	lwz	r2, 40(r3)				# 259
	lwz	r6, 24(r2)				# 259
	slwi	r7, r5, 2				# 1037
	lwz	r8, 44(r3)				# 1037
	lfsx	f0, r8, r7				# 1037
	stw	r6, 56(r3)				# 1037
	mfspr	r31, 8				# 1037
	stw	r31, 60(r3)				# 1037
	addi	r3, r3, 64				# 1037
	bl	min_caml_fisneg				# 1037
	addi	r3, r3, -64				# 1037
	lwz	r31, 60(r3)				# 1037
	mtspr	8, r31				# 1037
	lwz	r5, 48(r3)				# 106
	lwz	r6, 56(r3)				# 106
	cmpw	cr7, r6, r5				# 106
	bne	cr7, beq_else.17763				# 106
	b	beq_cont.17764				# 106
beq_else.17763:
	cmpw	cr7, r2, r5				# 106
	bne	cr7, beq_else.17765				# 106
	addi	r2, 0, 1
	b	beq_cont.17766				# 106
beq_else.17765:
	addi	r2, 0, 0
beq_cont.17766:
beq_cont.17764:
	lwz	r6, 40(r3)				# 277
	lwz	r7, 16(r6)				# 277
	slwi	r8, r5, 2				# 282
	lfsx	f0, r7, r8				# 282
	cmpw	cr7, r2, r5				# 119
	bne	cr7, beq_else.17767				# 119
	mfspr	r31, 8				# 119
	stw	r31, 60(r3)				# 119
	addi	r3, r3, 64				# 119
	bl	min_caml_fneg				# 119
	addi	r3, r3, -64				# 119
	lwz	r31, 60(r3)				# 119
	mtspr	8, r31				# 119
	b	beq_cont.17768				# 119
beq_else.17767:
beq_cont.17768:
	lwz	r2, 48(r3)				# 1037
	slwi	r5, r2, 2				# 1037
	lwz	r6, 52(r3)				# 1037
	stfsx	f0, r6, r5				# 1037
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 1039
	slwi	r5, r2, 2				# 1039
	lwz	r7, 44(r3)				# 1039
	lfsx	f1, r7, r5				# 1039
	fdiv	f0, f0, f1				# 1039
	lwz	r5, 8(r3)				# 1039
	slwi	r8, r5, 2				# 1039
	stfsx	f0, r6, r8				# 1039
	b	beq_cont.17762				# 1033
beq_else.17761:
	lwz	r2, 8(r3)				# 1034
	slwi	r6, r2, 2				# 1034
	lwz	r7, 52(r3)				# 1034
	lfs	f0, 32(r3)				# 1034
	stfsx	f0, r7, r6				# 1034
beq_cont.17762:
	lwz	r2, 8(r3)				# 1041
	slwi	r5, r2, 2				# 1041
	lwz	r6, 44(r3)				# 1041
	lfsx	f0, r6, r5				# 1041
	mfspr	r31, 8				# 1041
	stw	r31, 60(r3)				# 1041
	addi	r3, r3, 64				# 1041
	bl	min_caml_fiszero				# 1041
	addi	r3, r3, -64				# 1041
	lwz	r31, 60(r3)				# 1041
	mtspr	8, r31				# 1041
	lwz	r5, 48(r3)				# 1041
	cmpw	cr7, r2, r5				# 1041
	bne	cr7, beq_else.17769				# 1041
	lwz	r2, 40(r3)				# 259
	lwz	r6, 24(r2)				# 259
	lwz	r7, 8(r3)				# 1044
	slwi	r8, r7, 2				# 1044
	lwz	r9, 44(r3)				# 1044
	lfsx	f0, r9, r8				# 1044
	stw	r6, 60(r3)				# 1044
	mfspr	r31, 8				# 1044
	stw	r31, 64(r3)				# 1044
	addi	r3, r3, 68				# 1044
	bl	min_caml_fisneg				# 1044
	addi	r3, r3, -68				# 1044
	lwz	r31, 64(r3)				# 1044
	mtspr	8, r31				# 1044
	lwz	r5, 48(r3)				# 106
	lwz	r6, 60(r3)				# 106
	cmpw	cr7, r6, r5				# 106
	bne	cr7, beq_else.17771				# 106
	b	beq_cont.17772				# 106
beq_else.17771:
	cmpw	cr7, r2, r5				# 106
	bne	cr7, beq_else.17773				# 106
	addi	r2, 0, 1
	b	beq_cont.17774				# 106
beq_else.17773:
	addi	r2, 0, 0
beq_cont.17774:
beq_cont.17772:
	lwz	r6, 40(r3)				# 287
	lwz	r7, 16(r6)				# 287
	lwz	r8, 8(r3)				# 292
	slwi	r9, r8, 2				# 292
	lfsx	f0, r7, r9				# 292
	cmpw	cr7, r2, r5				# 119
	bne	cr7, beq_else.17775				# 119
	mfspr	r31, 8				# 119
	stw	r31, 64(r3)				# 119
	addi	r3, r3, 68				# 119
	bl	min_caml_fneg				# 119
	addi	r3, r3, -68				# 119
	lwz	r31, 64(r3)				# 119
	mtspr	8, r31				# 119
	b	beq_cont.17776				# 119
beq_else.17775:
beq_cont.17776:
	lwz	r2, 28(r3)				# 1044
	slwi	r5, r2, 2				# 1044
	lwz	r6, 52(r3)				# 1044
	stfsx	f0, r6, r5				# 1044
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 1045
	lwz	r5, 8(r3)				# 1045
	slwi	r7, r5, 2				# 1045
	lwz	r8, 44(r3)				# 1045
	lfsx	f1, r8, r7				# 1045
	fdiv	f0, f0, f1				# 1045
	lwz	r7, 24(r3)				# 1045
	slwi	r7, r7, 2				# 1045
	stfsx	f0, r6, r7				# 1045
	b	beq_cont.17770				# 1041
beq_else.17769:
	lwz	r2, 24(r3)				# 1042
	slwi	r2, r2, 2				# 1042
	lwz	r6, 52(r3)				# 1042
	lfs	f0, 32(r3)				# 1042
	stfsx	f0, r6, r2				# 1042
beq_cont.17770:
	lwz	r2, 28(r3)				# 1047
	slwi	r5, r2, 2				# 1047
	lwz	r7, 44(r3)				# 1047
	lfsx	f0, r7, r5				# 1047
	mfspr	r31, 8				# 1047
	stw	r31, 64(r3)				# 1047
	addi	r3, r3, 68				# 1047
	bl	min_caml_fiszero				# 1047
	addi	r3, r3, -68				# 1047
	lwz	r31, 64(r3)				# 1047
	mtspr	8, r31				# 1047
	lwz	r5, 48(r3)				# 1047
	cmpw	cr7, r2, r5				# 1047
	bne	cr7, beq_else.17777				# 1047
	lwz	r2, 40(r3)				# 259
	lwz	r6, 24(r2)				# 259
	lwz	r7, 28(r3)				# 1050
	slwi	r8, r7, 2				# 1050
	lwz	r9, 44(r3)				# 1050
	lfsx	f0, r9, r8				# 1050
	stw	r6, 64(r3)				# 1050
	mfspr	r31, 8				# 1050
	stw	r31, 68(r3)				# 1050
	addi	r3, r3, 72				# 1050
	bl	min_caml_fisneg				# 1050
	addi	r3, r3, -72				# 1050
	lwz	r31, 68(r3)				# 1050
	mtspr	8, r31				# 1050
	lwz	r5, 48(r3)				# 106
	lwz	r6, 64(r3)				# 106
	cmpw	cr7, r6, r5				# 106
	bne	cr7, beq_else.17779				# 106
	b	beq_cont.17780				# 106
beq_else.17779:
	cmpw	cr7, r2, r5				# 106
	bne	cr7, beq_else.17781				# 106
	addi	r2, 0, 1
	b	beq_cont.17782				# 106
beq_else.17781:
	addi	r2, 0, 0
beq_cont.17782:
beq_cont.17780:
	lwz	r6, 40(r3)				# 297
	lwz	r6, 16(r6)				# 297
	lwz	r7, 28(r3)				# 302
	slwi	r8, r7, 2				# 302
	lfsx	f0, r6, r8				# 302
	cmpw	cr7, r2, r5				# 119
	bne	cr7, beq_else.17783				# 119
	mfspr	r31, 8				# 119
	stw	r31, 68(r3)				# 119
	addi	r3, r3, 72				# 119
	bl	min_caml_fneg				# 119
	addi	r3, r3, -72				# 119
	lwz	r31, 68(r3)				# 119
	mtspr	8, r31				# 119
	b	beq_cont.17784				# 119
beq_else.17783:
beq_cont.17784:
	lwz	r2, 52(r3)				# 1050
	stfs	f0, 16(r2)				# 1050
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 1051
	lwz	r5, 28(r3)				# 1051
	slwi	r5, r5, 2				# 1051
	lwz	r6, 44(r3)				# 1051
	lfsx	f1, r6, r5				# 1051
	fdiv	f0, f0, f1				# 1051
	lwz	r5, 20(r3)				# 1051
	slwi	r5, r5, 2				# 1051
	stfsx	f0, r2, r5				# 1051
	b	beq_cont.17778				# 1047
beq_else.17777:
	lwz	r2, 20(r3)				# 1048
	slwi	r2, r2, 2				# 1048
	lwz	r5, 52(r3)				# 1048
	lfs	f0, 32(r3)				# 1048
	stfsx	f0, r5, r2				# 1048
beq_cont.17778:
	lwz	r2, 12(r3)				# 1111
	slwi	r5, r2, 2				# 1111
	lwz	r6, 16(r3)				# 1111
	lwz	r7, 52(r3)				# 1111
	stwx	r7, r6, r5				# 1111
	b	beq_cont.17760				# 1110
beq_else.17759:
	cmpw	cr7, r15, r9				# 1112
	bne	cr7, beq_else.17785				# 1112
	addi	r6, 0, 4
	stw	r13, 16(r3)				# 1058
	stw	r10, 24(r3)				# 1058
	stfs	f0, 32(r3)				# 1058
	stw	r9, 28(r3)				# 1058
	stw	r7, 40(r3)				# 1058
	stw	r14, 44(r3)				# 1058
	stw	r11, 48(r3)				# 1058
	mfspr	r31, 8				# 1058
	mr	r2, r6				# 1058
	stw	r31, 68(r3)				# 1058
	addi	r3, r3, 72				# 1058
	bl	min_caml_create_float_array				# 1058
	addi	r3, r3, -72				# 1058
	lwz	r31, 68(r3)				# 1058
	mtspr	8, r31				# 1058
	lwz	r5, 48(r3)				# 1060
	slwi	r6, r5, 2				# 1060
	lwz	r7, 44(r3)				# 1060
	lfsx	f0, r7, r6				# 1060
	lwz	r6, 40(r3)				# 277
	lwz	r8, 16(r6)				# 277
	slwi	r9, r5, 2				# 282
	lfsx	f1, r8, r9				# 282
	fmul	f0, f0, f1				# 1060
	lwz	r8, 8(r3)				# 1060
	slwi	r9, r8, 2				# 1060
	lfsx	f1, r7, r9				# 1060
	lwz	r9, 16(r6)				# 287
	slwi	r10, r8, 2				# 292
	lfsx	f2, r9, r10				# 292
	fmul	f1, f1, f2				# 1060
	fadd	f0, f0, f1				# 1060
	lwz	r9, 28(r3)				# 1060
	slwi	r10, r9, 2				# 1060
	lfsx	f1, r7, r10				# 1060
	lwz	r7, 16(r6)				# 297
	slwi	r10, r9, 2				# 302
	lfsx	f2, r7, r10				# 302
	fmul	f1, f1, f2				# 1060
	fadd	f0, f0, f1				# 1060
	stfs	f0, 72(r3)				# 1062
	stw	r2, 80(r3)				# 1062
	mfspr	r31, 8				# 1062
	stw	r31, 84(r3)				# 1062
	addi	r3, r3, 88				# 1062
	bl	min_caml_fispos				# 1062
	addi	r3, r3, -88				# 1062
	lwz	r31, 84(r3)				# 1062
	mtspr	8, r31				# 1062
	lwz	r5, 48(r3)				# 1062
	cmpw	cr7, r2, r5				# 1062
	bne	cr7, beq_else.17788				# 1062
	slwi	r2, r5, 2				# 1070
	lwz	r5, 80(r3)				# 1070
	lfs	f0, 32(r3)				# 1070
	stfsx	f0, r5, r2				# 1070
	b	beq_cont.17789				# 1062
beq_else.17788:
	lis	r31, ha16(l.11650)
	addi	r31, r31, lo16(l.11650)
	lfs	f0, 0(r31)				# 1064
	lfs	f1, 72(r3)				# 1064
	fdiv	f0, f0, f1				# 1064
	slwi	r2, r5, 2				# 1064
	lwz	r6, 80(r3)				# 1064
	stfsx	f0, r6, r2				# 1064
	lwz	r2, 40(r3)				# 277
	lwz	r7, 16(r2)				# 277
	slwi	r5, r5, 2				# 282
	lfsx	f0, r7, r5				# 282
	fdiv	f0, f0, f1				# 1066
	mfspr	r31, 8				# 1066
	stw	r31, 84(r3)				# 1066
	addi	r3, r3, 88				# 1066
	bl	min_caml_fneg				# 1066
	addi	r3, r3, -88				# 1066
	lwz	r31, 84(r3)				# 1066
	mtspr	8, r31				# 1066
	lwz	r2, 8(r3)				# 1066
	slwi	r5, r2, 2				# 1066
	lwz	r6, 80(r3)				# 1066
	stfsx	f0, r6, r5				# 1066
	lwz	r5, 40(r3)				# 287
	lwz	r7, 16(r5)				# 287
	slwi	r8, r2, 2				# 292
	lfsx	f0, r7, r8				# 292
	lfs	f1, 72(r3)				# 1067
	fdiv	f0, f0, f1				# 1067
	mfspr	r31, 8				# 1067
	stw	r31, 84(r3)				# 1067
	addi	r3, r3, 88				# 1067
	bl	min_caml_fneg				# 1067
	addi	r3, r3, -88				# 1067
	lwz	r31, 84(r3)				# 1067
	mtspr	8, r31				# 1067
	lwz	r2, 28(r3)				# 1067
	slwi	r5, r2, 2				# 1067
	lwz	r6, 80(r3)				# 1067
	stfsx	f0, r6, r5				# 1067
	lwz	r5, 40(r3)				# 297
	lwz	r5, 16(r5)				# 297
	slwi	r2, r2, 2				# 302
	lfsx	f0, r5, r2				# 302
	lfs	f1, 72(r3)				# 1068
	fdiv	f0, f0, f1				# 1068
	mfspr	r31, 8				# 1068
	stw	r31, 84(r3)				# 1068
	addi	r3, r3, 88				# 1068
	bl	min_caml_fneg				# 1068
	addi	r3, r3, -88				# 1068
	lwz	r31, 84(r3)				# 1068
	mtspr	8, r31				# 1068
	lwz	r2, 24(r3)				# 1068
	slwi	r2, r2, 2				# 1068
	lwz	r5, 80(r3)				# 1068
	stfsx	f0, r5, r2				# 1068
beq_cont.17789:
	lwz	r2, 12(r3)				# 1113
	slwi	r6, r2, 2				# 1113
	lwz	r7, 16(r3)				# 1113
	stwx	r5, r7, r6				# 1113
	b	beq_cont.17786				# 1112
beq_else.17785:
	stw	r13, 16(r3)				# 1115
	mfspr	r31, 8				# 1115
	mr	r5, r7				# 1115
	mr	r2, r14				# 1115
	mr	r30, r6				# 1115
	stw	r31, 84(r3)				# 1115
	addi	r3, r3, 88				# 1115
	lwz	r31, 0(r30)				# 1115
	mtspr	9, r31				# 1115
	bctrl				# 1115
	addi	r3, r3, -88				# 1115
	lwz	r31, 84(r3)				# 1115
	mtspr	8, r31				# 1115
	lwz	r5, 12(r3)				# 1115
	slwi	r6, r5, 2				# 1115
	lwz	r7, 16(r3)				# 1115
	stwx	r2, r7, r6				# 1115
beq_cont.17786:
beq_cont.17760:
	lwz	r2, 8(r3)				# 1117
	lwz	r5, 12(r3)				# 1117
	sub	r5, r5, r2				# 1117
	lwz	r2, 0(r3)				# 1117
	lwz	r30, 4(r3)				# 1117
	lwz	r29, 0(r30)				# 1117
	mtspr	9, r29
	bctr				# 1117
ble_else.17758:
	blr
setup_startp_constants.2710:
	lwz	r6, 20(r30)				# 1127
	lwz	r7, 16(r30)				# 1127
	lwz	r8, 12(r30)				# 1127
	lwz	r9, 8(r30)				# 1127
	lwz	r10, 4(r30)				# 1127
	cmpw	cr7, r9, r5				# 1128
	bgt	cr7, ble_else.17791				# 1128
	slwi	r11, r5, 2				# 1129
	lwzx	r6, r6, r11				# 1129
	lwz	r11, 40(r6)				# 428
	lwz	r12, 4(r6)				# 239
	slwi	r13, r9, 2				# 1132
	lfsx	f0, r2, r13				# 1132
	lwz	r13, 20(r6)				# 317
	slwi	r14, r9, 2				# 322
	lfsx	f1, r13, r14				# 322
	fsub	f0, f0, f1				# 1132
	slwi	r13, r9, 2				# 1132
	stfsx	f0, r11, r13				# 1132
	slwi	r13, r10, 2				# 1133
	lfsx	f0, r2, r13				# 1133
	lwz	r13, 20(r6)				# 327
	slwi	r14, r10, 2				# 332
	lfsx	f1, r13, r14				# 332
	fsub	f0, f0, f1				# 1133
	slwi	r13, r10, 2				# 1133
	stfsx	f0, r11, r13				# 1133
	slwi	r13, r7, 2				# 1134
	lfsx	f0, r2, r13				# 1134
	lwz	r13, 20(r6)				# 337
	slwi	r14, r7, 2				# 342
	lfsx	f1, r13, r14				# 342
	fsub	f0, f0, f1				# 1134
	slwi	r13, r7, 2				# 1134
	stfsx	f0, r11, r13				# 1134
	stw	r2, 0(r3)				# 1135
	stw	r30, 4(r3)				# 1135
	stw	r10, 8(r3)				# 1135
	stw	r5, 12(r3)				# 1135
	cmpw	cr7, r12, r7				# 1135
	bne	cr7, beq_else.17792				# 1135
	lwz	r6, 16(r6)				# 307
	slwi	r12, r9, 2				# 1137
	lfsx	f0, r11, r12				# 1137
	slwi	r12, r10, 2				# 1137
	lfsx	f1, r11, r12				# 1137
	slwi	r12, r7, 2				# 1137
	lfsx	f2, r11, r12				# 1137
	slwi	r9, r9, 2				# 187
	lfsx	f3, r6, r9				# 187
	fmul	f0, f3, f0				# 187
	slwi	r9, r10, 2				# 187
	lfsx	f3, r6, r9				# 187
	fmul	f1, f3, f1				# 187
	fadd	f0, f0, f1				# 187
	slwi	r7, r7, 2				# 187
	lfsx	f1, r6, r7				# 187
	fmul	f1, f1, f2				# 187
	fadd	f0, f0, f1				# 187
	slwi	r6, r8, 2				# 1136
	stfsx	f0, r11, r6				# 1136
	b	beq_cont.17793				# 1135
beq_else.17792:
	cmpw	cr7, r12, r7				# 1138
	bgt	cr7, ble_else.17794				# 1138
	b	ble_cont.17795				# 1138
ble_else.17794:
	slwi	r13, r9, 2				# 1139
	lfsx	f0, r11, r13				# 1139
	slwi	r13, r10, 2				# 1139
	lfsx	f1, r11, r13				# 1139
	slwi	r13, r7, 2				# 1139
	lfsx	f2, r11, r13				# 1139
	stw	r11, 16(r3)				# 823
	stw	r8, 20(r3)				# 823
	stw	r12, 24(r3)				# 823
	stfs	f0, 32(r3)				# 823
	stw	r7, 40(r3)				# 823
	stfs	f2, 48(r3)				# 823
	stfs	f1, 56(r3)				# 823
	stw	r9, 64(r3)				# 823
	stw	r6, 68(r3)				# 823
	mfspr	r31, 8				# 823
	stw	r31, 72(r3)				# 823
	addi	r3, r3, 76				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -76				# 823
	lwz	r31, 72(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 68(r3)				# 277
	lwz	r5, 16(r2)				# 277
	lwz	r6, 64(r3)				# 282
	slwi	r7, r6, 2				# 282
	lfsx	f1, r5, r7				# 282
	fmul	f0, f0, f1				# 823
	lfs	f1, 56(r3)				# 823
	stfs	f0, 72(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 80(r3)				# 823
	addi	r3, r3, 84				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -84				# 823
	lwz	r31, 80(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 68(r3)				# 287
	lwz	r5, 16(r2)				# 287
	lwz	r6, 8(r3)				# 292
	slwi	r7, r6, 2				# 292
	lfsx	f1, r5, r7				# 292
	fmul	f0, f0, f1				# 823
	lfs	f1, 72(r3)				# 823
	fadd	f0, f1, f0				# 823
	lfs	f1, 48(r3)				# 823
	stfs	f0, 80(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 88(r3)				# 823
	addi	r3, r3, 92				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -92				# 823
	lwz	r31, 88(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 68(r3)				# 297
	lwz	r5, 16(r2)				# 297
	lwz	r6, 40(r3)				# 302
	slwi	r7, r6, 2				# 302
	lfsx	f1, r5, r7				# 302
	fmul	f0, f0, f1				# 823
	lfs	f1, 80(r3)				# 823
	fadd	f0, f1, f0				# 823
	lwz	r5, 12(r2)				# 268
	lwz	r7, 64(r3)				# 825
	cmpw	cr7, r5, r7				# 825
	bne	cr7, beq_else.17798				# 825
	b	beq_cont.17799				# 825
beq_else.17798:
	lfs	f1, 48(r3)				# 829
	lfs	f2, 56(r3)				# 829
	fmul	f3, f2, f1				# 829
	lwz	r5, 36(r2)				# 397
	slwi	r7, r7, 2				# 402
	lfsx	f4, r5, r7				# 402
	fmul	f3, f3, f4				# 829
	fadd	f0, f0, f3				# 828
	lfs	f3, 32(r3)				# 830
	fmul	f1, f1, f3				# 830
	lwz	r5, 36(r2)				# 407
	lwz	r7, 8(r3)				# 412
	slwi	r8, r7, 2				# 412
	lfsx	f4, r5, r8				# 412
	fmul	f1, f1, f4				# 830
	fadd	f0, f0, f1				# 828
	fmul	f1, f3, f2				# 831
	lwz	r2, 36(r2)				# 417
	slwi	r5, r6, 2				# 422
	lfsx	f2, r2, r5				# 422
	fmul	f1, f1, f2				# 831
	fadd	f0, f0, f1				# 828
beq_cont.17799:
	lwz	r2, 20(r3)				# 1140
	lwz	r5, 24(r3)				# 1140
	cmpw	cr7, r5, r2				# 1140
	bne	cr7, beq_else.17800				# 1140
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f1, 0(r31)				# 1140
	fsub	f0, f0, f1				# 1140
	b	beq_cont.17801				# 1140
beq_else.17800:
beq_cont.17801:
	slwi	r2, r2, 2				# 1140
	lwz	r5, 16(r3)				# 1140
	stfsx	f0, r5, r2				# 1140
ble_cont.17795:
beq_cont.17793:
	lwz	r2, 8(r3)				# 1142
	lwz	r5, 12(r3)				# 1142
	sub	r5, r5, r2				# 1142
	lwz	r2, 0(r3)				# 1142
	lwz	r30, 4(r3)				# 1142
	lwz	r29, 0(r30)				# 1142
	mtspr	9, r29
	bctr				# 1142
ble_else.17791:
	blr
check_all_inside.2735:
	lwz	r6, 24(r30)				# 1194
	lwz	r7, 20(r30)				# 1194
	lwz	r8, 16(r30)				# 1194
	lwz	r9, 12(r30)				# 1194
	lwz	r10, 8(r30)				# 1194
	lwz	r11, 4(r30)				# 1194
	slwi	r12, r2, 2				# 1195
	lwzx	r12, r5, r12				# 1195
	cmpw	cr7, r12, r8				# 1196
	bne	cr7, beq_else.17803				# 1196
	addi	r2, 0, 1
	blr
beq_else.17803:
	slwi	r8, r12, 2				# 1199
	lwzx	r6, r6, r8				# 1199
	lwz	r8, 20(r6)				# 317
	slwi	r12, r10, 2				# 322
	lfsx	f3, r8, r12				# 322
	fsub	f3, f0, f3				# 1181
	lwz	r8, 20(r6)				# 327
	slwi	r12, r11, 2				# 332
	lfsx	f4, r8, r12				# 332
	fsub	f4, f1, f4				# 1182
	lwz	r8, 20(r6)				# 337
	slwi	r12, r7, 2				# 342
	lfsx	f5, r8, r12				# 342
	fsub	f5, f2, f5				# 1183
	lwz	r8, 4(r6)				# 239
	stfs	f2, 0(r3)				# 1185
	stfs	f1, 8(r3)				# 1185
	stfs	f0, 16(r3)				# 1185
	stw	r5, 24(r3)				# 1185
	stw	r30, 28(r3)				# 1185
	stw	r11, 32(r3)				# 1185
	stw	r2, 36(r3)				# 1185
	cmpw	cr7, r8, r11				# 1185
	bne	cr7, beq_else.17804				# 1185
	stw	r7, 40(r3)				# 1158
	stfs	f5, 48(r3)				# 1158
	stfs	f4, 56(r3)				# 1158
	stw	r10, 64(r3)				# 1158
	stw	r6, 68(r3)				# 1158
	mfspr	r31, 8				# 1158
	fmr	f0, f3				# 1158
	stw	r31, 72(r3)				# 1158
	addi	r3, r3, 76				# 1158
	bl	min_caml_fabs				# 1158
	addi	r3, r3, -76				# 1158
	lwz	r31, 72(r3)				# 1158
	mtspr	8, r31				# 1158
	lwz	r2, 68(r3)				# 277
	lwz	r5, 16(r2)				# 277
	lwz	r6, 64(r3)				# 282
	slwi	r7, r6, 2				# 282
	lfsx	f1, r5, r7				# 282
	mfspr	r31, 8				# 1158
	stw	r31, 72(r3)				# 1158
	addi	r3, r3, 76				# 1158
	bl	min_caml_fless				# 1158
	addi	r3, r3, -76				# 1158
	lwz	r31, 72(r3)				# 1158
	mtspr	8, r31				# 1158
	lwz	r5, 64(r3)				# 1158
	cmpw	cr7, r2, r5				# 1158
	bne	cr7, beq_else.17807				# 1158
	addi	r2, 0, 0
	b	beq_cont.17808				# 1158
beq_else.17807:
	lfs	f0, 56(r3)				# 1159
	mfspr	r31, 8				# 1159
	stw	r31, 72(r3)				# 1159
	addi	r3, r3, 76				# 1159
	bl	min_caml_fabs				# 1159
	addi	r3, r3, -76				# 1159
	lwz	r31, 72(r3)				# 1159
	mtspr	8, r31				# 1159
	lwz	r2, 68(r3)				# 287
	lwz	r5, 16(r2)				# 287
	lwz	r6, 32(r3)				# 292
	slwi	r7, r6, 2				# 292
	lfsx	f1, r5, r7				# 292
	mfspr	r31, 8				# 1159
	stw	r31, 72(r3)				# 1159
	addi	r3, r3, 76				# 1159
	bl	min_caml_fless				# 1159
	addi	r3, r3, -76				# 1159
	lwz	r31, 72(r3)				# 1159
	mtspr	8, r31				# 1159
	lwz	r5, 64(r3)				# 1159
	cmpw	cr7, r2, r5				# 1159
	bne	cr7, beq_else.17809				# 1159
	addi	r2, 0, 0
	b	beq_cont.17810				# 1159
beq_else.17809:
	lfs	f0, 48(r3)				# 1160
	mfspr	r31, 8				# 1160
	stw	r31, 72(r3)				# 1160
	addi	r3, r3, 76				# 1160
	bl	min_caml_fabs				# 1160
	addi	r3, r3, -76				# 1160
	lwz	r31, 72(r3)				# 1160
	mtspr	8, r31				# 1160
	lwz	r2, 68(r3)				# 297
	lwz	r5, 16(r2)				# 297
	lwz	r6, 40(r3)				# 302
	slwi	r6, r6, 2				# 302
	lfsx	f1, r5, r6				# 302
	mfspr	r31, 8				# 1160
	stw	r31, 72(r3)				# 1160
	addi	r3, r3, 76				# 1160
	bl	min_caml_fless				# 1160
	addi	r3, r3, -76				# 1160
	lwz	r31, 72(r3)				# 1160
	mtspr	8, r31				# 1160
beq_cont.17810:
beq_cont.17808:
	lwz	r5, 64(r3)				# 1157
	cmpw	cr7, r2, r5				# 1157
	bne	cr7, beq_else.17811				# 1157
	lwz	r2, 68(r3)				# 259
	lwz	r2, 24(r2)				# 259
	cmpw	cr7, r2, r5				# 1163
	bne	cr7, beq_else.17813				# 1163
	addi	r2, 0, 1
	b	beq_cont.17814				# 1163
beq_else.17813:
	addi	r2, 0, 0
beq_cont.17814:
	b	beq_cont.17812				# 1157
beq_else.17811:
	lwz	r2, 68(r3)				# 259
	lwz	r2, 24(r2)				# 259
beq_cont.17812:
	b	beq_cont.17805				# 1185
beq_else.17804:
	cmpw	cr7, r8, r7				# 1187
	bne	cr7, beq_else.17815				# 1187
	lwz	r8, 16(r6)				# 307
	slwi	r9, r10, 2				# 187
	lfsx	f6, r8, r9				# 187
	fmul	f3, f6, f3				# 187
	slwi	r9, r11, 2				# 187
	lfsx	f6, r8, r9				# 187
	fmul	f4, f6, f4				# 187
	fadd	f3, f3, f4				# 187
	slwi	r7, r7, 2				# 187
	lfsx	f4, r8, r7				# 187
	fmul	f4, f4, f5				# 187
	fadd	f3, f3, f4				# 187
	lwz	r6, 24(r6)				# 259
	stw	r10, 64(r3)				# 1169
	stw	r6, 72(r3)				# 1169
	mfspr	r31, 8				# 1169
	fmr	f0, f3				# 1169
	stw	r31, 76(r3)				# 1169
	addi	r3, r3, 80				# 1169
	bl	min_caml_fisneg				# 1169
	addi	r3, r3, -80				# 1169
	lwz	r31, 76(r3)				# 1169
	mtspr	8, r31				# 1169
	lwz	r5, 64(r3)				# 106
	lwz	r6, 72(r3)				# 106
	cmpw	cr7, r6, r5				# 106
	bne	cr7, beq_else.17817				# 106
	b	beq_cont.17818				# 106
beq_else.17817:
	cmpw	cr7, r2, r5				# 106
	bne	cr7, beq_else.17819				# 106
	addi	r2, 0, 1
	b	beq_cont.17820				# 106
beq_else.17819:
	addi	r2, 0, 0
beq_cont.17820:
beq_cont.17818:
	cmpw	cr7, r2, r5				# 1169
	bne	cr7, beq_else.17821				# 1169
	addi	r2, 0, 1
	b	beq_cont.17822				# 1169
beq_else.17821:
	addi	r2, 0, 0
beq_cont.17822:
	b	beq_cont.17816				# 1187
beq_else.17815:
	stw	r9, 76(r3)				# 823
	stfs	f3, 80(r3)				# 823
	stw	r7, 40(r3)				# 823
	stfs	f5, 48(r3)				# 823
	stfs	f4, 56(r3)				# 823
	stw	r10, 64(r3)				# 823
	stw	r6, 68(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f3				# 823
	stw	r31, 88(r3)				# 823
	addi	r3, r3, 92				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -92				# 823
	lwz	r31, 88(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 68(r3)				# 277
	lwz	r5, 16(r2)				# 277
	lwz	r6, 64(r3)				# 282
	slwi	r7, r6, 2				# 282
	lfsx	f1, r5, r7				# 282
	fmul	f0, f0, f1				# 823
	lfs	f1, 56(r3)				# 823
	stfs	f0, 88(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 96(r3)				# 823
	addi	r3, r3, 100				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -100				# 823
	lwz	r31, 96(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 68(r3)				# 287
	lwz	r5, 16(r2)				# 287
	lwz	r6, 32(r3)				# 292
	slwi	r7, r6, 2				# 292
	lfsx	f1, r5, r7				# 292
	fmul	f0, f0, f1				# 823
	lfs	f1, 88(r3)				# 823
	fadd	f0, f1, f0				# 823
	lfs	f1, 48(r3)				# 823
	stfs	f0, 96(r3)				# 823
	mfspr	r31, 8				# 823
	fmr	f0, f1				# 823
	stw	r31, 104(r3)				# 823
	addi	r3, r3, 108				# 823
	bl	min_caml_fsqr				# 823
	addi	r3, r3, -108				# 823
	lwz	r31, 104(r3)				# 823
	mtspr	8, r31				# 823
	lwz	r2, 68(r3)				# 297
	lwz	r5, 16(r2)				# 297
	lwz	r6, 40(r3)				# 302
	slwi	r7, r6, 2				# 302
	lfsx	f1, r5, r7				# 302
	fmul	f0, f0, f1				# 823
	lfs	f1, 96(r3)				# 823
	fadd	f0, f1, f0				# 823
	lwz	r5, 12(r2)				# 268
	lwz	r7, 64(r3)				# 825
	cmpw	cr7, r5, r7				# 825
	bne	cr7, beq_else.17823				# 825
	b	beq_cont.17824				# 825
beq_else.17823:
	lfs	f1, 48(r3)				# 829
	lfs	f2, 56(r3)				# 829
	fmul	f3, f2, f1				# 829
	lwz	r5, 36(r2)				# 397
	slwi	r8, r7, 2				# 402
	lfsx	f4, r5, r8				# 402
	fmul	f3, f3, f4				# 829
	fadd	f0, f0, f3				# 828
	lfs	f3, 80(r3)				# 830
	fmul	f1, f1, f3				# 830
	lwz	r5, 36(r2)				# 407
	lwz	r8, 32(r3)				# 412
	slwi	r9, r8, 2				# 412
	lfsx	f4, r5, r9				# 412
	fmul	f1, f1, f4				# 830
	fadd	f0, f0, f1				# 828
	fmul	f1, f3, f2				# 831
	lwz	r5, 36(r2)				# 417
	slwi	r6, r6, 2				# 422
	lfsx	f2, r5, r6				# 422
	fmul	f1, f1, f2				# 831
	fadd	f0, f0, f1				# 828
beq_cont.17824:
	lwz	r5, 4(r2)				# 239
	lwz	r6, 76(r3)				# 1175
	cmpw	cr7, r5, r6				# 1175
	bne	cr7, beq_else.17825				# 1175
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f1, 0(r31)				# 1175
	fsub	f0, f0, f1				# 1175
	b	beq_cont.17826				# 1175
beq_else.17825:
beq_cont.17826:
	lwz	r2, 24(r2)				# 259
	stw	r2, 104(r3)				# 1176
	mfspr	r31, 8				# 1176
	stw	r31, 108(r3)				# 1176
	addi	r3, r3, 112				# 1176
	bl	min_caml_fisneg				# 1176
	addi	r3, r3, -112				# 1176
	lwz	r31, 108(r3)				# 1176
	mtspr	8, r31				# 1176
	lwz	r5, 64(r3)				# 106
	lwz	r6, 104(r3)				# 106
	cmpw	cr7, r6, r5				# 106
	bne	cr7, beq_else.17827				# 106
	b	beq_cont.17828				# 106
beq_else.17827:
	cmpw	cr7, r2, r5				# 106
	bne	cr7, beq_else.17829				# 106
	addi	r2, 0, 1
	b	beq_cont.17830				# 106
beq_else.17829:
	addi	r2, 0, 0
beq_cont.17830:
beq_cont.17828:
	cmpw	cr7, r2, r5				# 1176
	bne	cr7, beq_else.17831				# 1176
	addi	r2, 0, 1
	b	beq_cont.17832				# 1176
beq_else.17831:
	addi	r2, 0, 0
beq_cont.17832:
beq_cont.17816:
beq_cont.17805:
	cmpw	cr7, r2, r5				# 1199
	bne	cr7, beq_else.17833				# 1199
	lwz	r2, 32(r3)				# 1202
	lwz	r5, 36(r3)				# 1202
	add	r2, r5, r2				# 1202
	lfs	f0, 16(r3)				# 1202
	lfs	f1, 8(r3)				# 1202
	lfs	f2, 0(r3)				# 1202
	lwz	r5, 24(r3)				# 1202
	lwz	r30, 28(r3)				# 1202
	lwz	r29, 0(r30)				# 1202
	mtspr	9, r29
	bctr				# 1202
beq_else.17833:
	addi	r2, 0, 0
	blr
shadow_check_and_group.2741:
	lwz	r6, 56(r30)				# 1212
	lwz	r7, 52(r30)				# 1212
	lwz	r8, 48(r30)				# 1212
	lwz	r9, 44(r30)				# 1212
	lwz	r10, 40(r30)				# 1212
	lwz	r11, 36(r30)				# 1212
	lwz	r12, 32(r30)				# 1212
	lwz	r13, 28(r30)				# 1212
	lwz	r14, 24(r30)				# 1212
	lwz	r15, 20(r30)				# 1212
	lwz	r16, 16(r30)				# 1212
	lwz	r17, 12(r30)				# 1212
	lwz	r18, 8(r30)				# 1212
	lwz	r19, 4(r30)				# 1212
	slwi	r20, r2, 2				# 1213
	lwzx	r20, r5, r20				# 1213
	cmpw	cr7, r20, r16				# 1213
	bne	cr7, beq_else.17834				# 1213
	addi	r2, 0, 0
	blr
beq_else.17834:
	slwi	r16, r2, 2				# 1216
	lwzx	r16, r5, r16				# 1216
	slwi	r20, r16, 2				# 964
	lwzx	r20, r10, r20				# 964
	slwi	r21, r18, 2				# 965
	lfsx	f0, r12, r21				# 965
	lwz	r21, 20(r20)				# 317
	slwi	r22, r18, 2				# 322
	lfsx	f1, r21, r22				# 322
	fsub	f0, f0, f1				# 965
	slwi	r21, r19, 2				# 966
	lfsx	f1, r12, r21				# 966
	lwz	r21, 20(r20)				# 327
	slwi	r22, r19, 2				# 332
	lfsx	f2, r21, r22				# 332
	fsub	f1, f1, f2				# 966
	slwi	r21, r15, 2				# 967
	lfsx	f2, r12, r21				# 967
	lwz	r21, 20(r20)				# 337
	slwi	r22, r15, 2				# 342
	lfsx	f3, r21, r22				# 342
	fsub	f2, f2, f3				# 967
	slwi	r21, r16, 2				# 969
	lwzx	r13, r13, r21				# 969
	lwz	r21, 4(r20)				# 239
	stw	r14, 0(r3)				# 971
	stw	r15, 4(r3)				# 971
	stw	r12, 8(r3)				# 971
	stw	r11, 12(r3)				# 971
	stw	r5, 16(r3)				# 971
	stw	r30, 20(r3)				# 971
	stw	r19, 24(r3)				# 971
	stw	r2, 28(r3)				# 971
	stw	r10, 32(r3)				# 971
	stw	r16, 36(r3)				# 971
	stw	r9, 40(r3)				# 971
	stw	r18, 44(r3)				# 971
	cmpw	cr7, r21, r19				# 971
	bne	cr7, beq_else.17835				# 971
	mfspr	r31, 8				# 972
	mr	r5, r6				# 972
	mr	r2, r20				# 972
	mr	r30, r8				# 972
	mr	r6, r13				# 972
	stw	r31, 48(r3)				# 972
	addi	r3, r3, 52				# 972
	lwz	r31, 0(r30)				# 972
	mtspr	9, r31				# 972
	bctrl				# 972
	addi	r3, r3, -52				# 972
	lwz	r31, 48(r3)				# 972
	mtspr	8, r31				# 972
	b	beq_cont.17836				# 971
beq_else.17835:
	cmpw	cr7, r21, r15				# 973
	bne	cr7, beq_else.17837				# 973
	slwi	r6, r18, 2				# 935
	lfsx	f3, r13, r6				# 935
	stfs	f2, 48(r3)				# 935
	stw	r17, 56(r3)				# 935
	stfs	f1, 64(r3)				# 935
	stfs	f0, 72(r3)				# 935
	stw	r13, 80(r3)				# 935
	mfspr	r31, 8				# 935
	fmr	f0, f3				# 935
	stw	r31, 84(r3)				# 935
	addi	r3, r3, 88				# 935
	bl	min_caml_fisneg				# 935
	addi	r3, r3, -88				# 935
	lwz	r31, 84(r3)				# 935
	mtspr	8, r31				# 935
	lwz	r5, 44(r3)				# 935
	cmpw	cr7, r2, r5				# 935
	bne	cr7, beq_else.17840				# 935
	addi	r2, 0, 0
	b	beq_cont.17841				# 935
beq_else.17840:
	lwz	r2, 24(r3)				# 937
	slwi	r6, r2, 2				# 937
	lwz	r7, 80(r3)				# 937
	lfsx	f0, r7, r6				# 937
	lfs	f1, 72(r3)				# 937
	fmul	f0, f0, f1				# 937
	lwz	r6, 4(r3)				# 937
	slwi	r8, r6, 2				# 937
	lfsx	f1, r7, r8				# 937
	lfs	f2, 64(r3)				# 937
	fmul	f1, f1, f2				# 937
	fadd	f0, f0, f1				# 937
	lwz	r8, 56(r3)				# 937
	slwi	r8, r8, 2				# 937
	lfsx	f1, r7, r8				# 937
	lfs	f2, 48(r3)				# 937
	fmul	f1, f1, f2				# 937
	fadd	f0, f0, f1				# 937
	slwi	r7, r5, 2				# 936
	lwz	r8, 40(r3)				# 936
	stfsx	f0, r8, r7				# 936
	addi	r2, 0, 1
beq_cont.17841:
	b	beq_cont.17838				# 973
beq_else.17837:
	mfspr	r31, 8				# 976
	mr	r5, r13				# 976
	mr	r2, r20				# 976
	mr	r30, r7				# 976
	stw	r31, 84(r3)				# 976
	addi	r3, r3, 88				# 976
	lwz	r31, 0(r30)				# 976
	mtspr	9, r31				# 976
	bctrl				# 976
	addi	r3, r3, -88				# 976
	lwz	r31, 84(r3)				# 976
	mtspr	8, r31				# 976
beq_cont.17838:
beq_cont.17836:
	lwz	r5, 44(r3)				# 1218
	slwi	r6, r5, 2				# 1218
	lwz	r7, 40(r3)				# 1218
	lfsx	f0, r7, r6				# 1218
	stfs	f0, 88(r3)				# 1219
	cmpw	cr7, r2, r5				# 1219
	bne	cr7, beq_else.17843				# 1219
	addi	r2, 0, 0
	b	beq_cont.17844				# 1219
beq_else.17843:
	lis	r31, ha16(l.11922)
	addi	r31, r31, lo16(l.11922)
	lfs	f1, 0(r31)				# 1219
	mfspr	r31, 8				# 1219
	stw	r31, 96(r3)				# 1219
	addi	r3, r3, 100				# 1219
	bl	min_caml_fless				# 1219
	addi	r3, r3, -100				# 1219
	lwz	r31, 96(r3)				# 1219
	mtspr	8, r31				# 1219
beq_cont.17844:
	lwz	r5, 44(r3)				# 1219
	cmpw	cr7, r2, r5				# 1219
	bne	cr7, beq_else.17845				# 1219
	lwz	r2, 36(r3)				# 1235
	slwi	r2, r2, 2				# 1235
	lwz	r6, 32(r3)				# 1235
	lwzx	r2, r6, r2				# 1235
	lwz	r2, 24(r2)				# 259
	cmpw	cr7, r2, r5				# 1235
	bne	cr7, beq_else.17846				# 1235
	addi	r2, 0, 0
	blr
beq_else.17846:
	lwz	r2, 24(r3)				# 1236
	lwz	r5, 28(r3)				# 1236
	add	r2, r5, r2				# 1236
	lwz	r5, 16(r3)				# 1236
	lwz	r30, 20(r3)				# 1236
	lwz	r29, 0(r30)				# 1236
	mtspr	9, r29
	bctr				# 1236
beq_else.17845:
	lis	r31, ha16(l.11923)
	addi	r31, r31, lo16(l.11923)
	lfs	f0, 0(r31)				# 1222
	lfs	f1, 88(r3)				# 1222
	fadd	f0, f1, f0				# 1222
	slwi	r2, r5, 2				# 1223
	lwz	r6, 12(r3)				# 1223
	lfsx	f1, r6, r2				# 1223
	fmul	f1, f1, f0				# 1223
	slwi	r2, r5, 2				# 1223
	lwz	r7, 8(r3)				# 1223
	lfsx	f2, r7, r2				# 1223
	fadd	f1, f1, f2				# 1223
	lwz	r2, 24(r3)				# 1224
	slwi	r8, r2, 2				# 1224
	lfsx	f2, r6, r8				# 1224
	fmul	f2, f2, f0				# 1224
	slwi	r8, r2, 2				# 1224
	lfsx	f3, r7, r8				# 1224
	fadd	f2, f2, f3				# 1224
	lwz	r8, 4(r3)				# 1225
	slwi	r9, r8, 2				# 1225
	lfsx	f3, r6, r9				# 1225
	fmul	f0, f3, f0				# 1225
	slwi	r6, r8, 2				# 1225
	lfsx	f3, r7, r6				# 1225
	fadd	f0, f0, f3				# 1225
	lwz	r6, 16(r3)				# 1226
	lwz	r30, 0(r3)				# 1226
	mfspr	r31, 8				# 1226
	mr	r2, r5				# 1226
	mr	r5, r6				# 1226
	fmr	f31, f2				# 1226
	fmr	f2, f0				# 1226
	fmr	f0, f1				# 1226
	fmr	f1, f31				# 1226
	stw	r31, 96(r3)				# 1226
	addi	r3, r3, 100				# 1226
	lwz	r31, 0(r30)				# 1226
	mtspr	9, r31				# 1226
	bctrl				# 1226
	addi	r3, r3, -100				# 1226
	lwz	r31, 96(r3)				# 1226
	mtspr	8, r31				# 1226
	lwz	r5, 44(r3)				# 1226
	cmpw	cr7, r2, r5				# 1226
	bne	cr7, beq_else.17847				# 1226
	lwz	r2, 24(r3)				# 1229
	lwz	r5, 28(r3)				# 1229
	add	r2, r5, r2				# 1229
	lwz	r5, 16(r3)				# 1229
	lwz	r30, 20(r3)				# 1229
	lwz	r29, 0(r30)				# 1229
	mtspr	9, r29
	bctr				# 1229
beq_else.17847:
	addi	r2, 0, 1
	blr
shadow_check_one_or_group.2744:
	lwz	r6, 20(r30)				# 1242
	lwz	r7, 16(r30)				# 1242
	lwz	r8, 12(r30)				# 1242
	lwz	r9, 8(r30)				# 1242
	lwz	r10, 4(r30)				# 1242
	slwi	r11, r2, 2				# 1243
	lwzx	r11, r5, r11				# 1243
	cmpw	cr7, r11, r8				# 1244
	bne	cr7, beq_else.17848				# 1244
	addi	r2, 0, 0
	blr
beq_else.17848:
	slwi	r8, r11, 2				# 1247
	lwzx	r7, r7, r8				# 1247
	stw	r5, 0(r3)				# 1248
	stw	r30, 4(r3)				# 1248
	stw	r10, 8(r3)				# 1248
	stw	r2, 12(r3)				# 1248
	stw	r9, 16(r3)				# 1248
	mfspr	r31, 8				# 1248
	mr	r5, r7				# 1248
	mr	r2, r9				# 1248
	mr	r30, r6				# 1248
	stw	r31, 20(r3)				# 1248
	addi	r3, r3, 24				# 1248
	lwz	r31, 0(r30)				# 1248
	mtspr	9, r31				# 1248
	bctrl				# 1248
	addi	r3, r3, -24				# 1248
	lwz	r31, 20(r3)				# 1248
	mtspr	8, r31				# 1248
	lwz	r5, 16(r3)				# 1249
	cmpw	cr7, r2, r5				# 1249
	bne	cr7, beq_else.17849				# 1249
	lwz	r2, 8(r3)				# 1252
	lwz	r5, 12(r3)				# 1252
	add	r2, r5, r2				# 1252
	lwz	r5, 0(r3)				# 1252
	lwz	r30, 4(r3)				# 1252
	lwz	r29, 0(r30)				# 1252
	mtspr	9, r29
	bctr				# 1252
beq_else.17849:
	addi	r2, 0, 1
	blr
shadow_check_one_or_matrix.2747:
	lwz	r6, 52(r30)				# 1257
	lwz	r7, 48(r30)				# 1257
	lwz	r8, 44(r30)				# 1257
	lwz	r9, 40(r30)				# 1257
	lwz	r10, 36(r30)				# 1257
	lwz	r11, 32(r30)				# 1257
	lwz	r12, 28(r30)				# 1257
	lwz	r13, 24(r30)				# 1257
	lwz	r14, 20(r30)				# 1257
	lwz	r15, 16(r30)				# 1257
	lwz	r16, 12(r30)				# 1257
	lwz	r17, 8(r30)				# 1257
	lwz	r18, 4(r30)				# 1257
	slwi	r19, r2, 2				# 1258
	lwzx	r19, r5, r19				# 1258
	slwi	r20, r17, 2				# 1259
	lwzx	r20, r19, r20				# 1259
	cmpw	cr7, r20, r15				# 1260
	bne	cr7, beq_else.17850				# 1260
	addi	r2, 0, 0
	blr
beq_else.17850:
	stw	r19, 0(r3)				# 1264
	stw	r10, 4(r3)				# 1264
	stw	r5, 8(r3)				# 1264
	stw	r30, 12(r3)				# 1264
	stw	r18, 16(r3)				# 1264
	stw	r2, 20(r3)				# 1264
	stw	r17, 24(r3)				# 1264
	cmpwi	cr7, r20, 99				# 1264
	bne	cr7, beq_else.17851				# 1264
	addi	r2, 0, 1
	b	beq_cont.17852				# 1264
beq_else.17851:
	slwi	r15, r20, 2				# 964
	lwzx	r11, r11, r15				# 964
	slwi	r15, r17, 2				# 965
	lfsx	f0, r12, r15				# 965
	lwz	r15, 20(r11)				# 317
	slwi	r21, r17, 2				# 322
	lfsx	f1, r15, r21				# 322
	fsub	f0, f0, f1				# 965
	slwi	r15, r18, 2				# 966
	lfsx	f1, r12, r15				# 966
	lwz	r15, 20(r11)				# 327
	slwi	r21, r18, 2				# 332
	lfsx	f2, r15, r21				# 332
	fsub	f1, f1, f2				# 966
	slwi	r15, r14, 2				# 967
	lfsx	f2, r12, r15				# 967
	lwz	r12, 20(r11)				# 337
	slwi	r15, r14, 2				# 342
	lfsx	f3, r12, r15				# 342
	fsub	f2, f2, f3				# 967
	slwi	r12, r20, 2				# 969
	lwzx	r12, r13, r12				# 969
	lwz	r13, 4(r11)				# 239
	stw	r9, 28(r3)				# 971
	cmpw	cr7, r13, r18				# 971
	bne	cr7, beq_else.17853				# 971
	mfspr	r31, 8				# 972
	mr	r5, r6				# 972
	mr	r2, r11				# 972
	mr	r30, r8				# 972
	mr	r6, r12				# 972
	stw	r31, 32(r3)				# 972
	addi	r3, r3, 36				# 972
	lwz	r31, 0(r30)				# 972
	mtspr	9, r31				# 972
	bctrl				# 972
	addi	r3, r3, -36				# 972
	lwz	r31, 32(r3)				# 972
	mtspr	8, r31				# 972
	b	beq_cont.17854				# 971
beq_else.17853:
	cmpw	cr7, r13, r14				# 973
	bne	cr7, beq_else.17855				# 973
	slwi	r6, r17, 2				# 935
	lfsx	f3, r12, r6				# 935
	stfs	f2, 32(r3)				# 935
	stw	r16, 40(r3)				# 935
	stfs	f1, 48(r3)				# 935
	stw	r14, 56(r3)				# 935
	stfs	f0, 64(r3)				# 935
	stw	r12, 72(r3)				# 935
	mfspr	r31, 8				# 935
	fmr	f0, f3				# 935
	stw	r31, 76(r3)				# 935
	addi	r3, r3, 80				# 935
	bl	min_caml_fisneg				# 935
	addi	r3, r3, -80				# 935
	lwz	r31, 76(r3)				# 935
	mtspr	8, r31				# 935
	lwz	r5, 24(r3)				# 935
	cmpw	cr7, r2, r5				# 935
	bne	cr7, beq_else.17859				# 935
	addi	r2, 0, 0
	b	beq_cont.17860				# 935
beq_else.17859:
	lwz	r2, 16(r3)				# 937
	slwi	r6, r2, 2				# 937
	lwz	r7, 72(r3)				# 937
	lfsx	f0, r7, r6				# 937
	lfs	f1, 64(r3)				# 937
	fmul	f0, f0, f1				# 937
	lwz	r6, 56(r3)				# 937
	slwi	r6, r6, 2				# 937
	lfsx	f1, r7, r6				# 937
	lfs	f2, 48(r3)				# 937
	fmul	f1, f1, f2				# 937
	fadd	f0, f0, f1				# 937
	lwz	r6, 40(r3)				# 937
	slwi	r6, r6, 2				# 937
	lfsx	f1, r7, r6				# 937
	lfs	f2, 32(r3)				# 937
	fmul	f1, f1, f2				# 937
	fadd	f0, f0, f1				# 937
	slwi	r6, r5, 2				# 936
	lwz	r7, 28(r3)				# 936
	stfsx	f0, r7, r6				# 936
	addi	r2, 0, 1
beq_cont.17860:
	b	beq_cont.17856				# 973
beq_else.17855:
	mfspr	r31, 8				# 976
	mr	r5, r12				# 976
	mr	r2, r11				# 976
	mr	r30, r7				# 976
	stw	r31, 76(r3)				# 976
	addi	r3, r3, 80				# 976
	lwz	r31, 0(r30)				# 976
	mtspr	9, r31				# 976
	bctrl				# 976
	addi	r3, r3, -80				# 976
	lwz	r31, 76(r3)				# 976
	mtspr	8, r31				# 976
beq_cont.17856:
beq_cont.17854:
	lwz	r5, 24(r3)				# 1270
	cmpw	cr7, r2, r5				# 1270
	bne	cr7, beq_else.17861				# 1270
	addi	r2, 0, 0
	b	beq_cont.17862				# 1270
beq_else.17861:
	slwi	r2, r5, 2				# 1271
	lwz	r6, 28(r3)				# 1271
	lfsx	f0, r6, r2				# 1271
	lis	r31, ha16(l.11949)
	addi	r31, r31, lo16(l.11949)
	lfs	f1, 0(r31)				# 1271
	mfspr	r31, 8				# 1271
	stw	r31, 76(r3)				# 1271
	addi	r3, r3, 80				# 1271
	bl	min_caml_fless				# 1271
	addi	r3, r3, -80				# 1271
	lwz	r31, 76(r3)				# 1271
	mtspr	8, r31				# 1271
	lwz	r5, 24(r3)				# 1271
	cmpw	cr7, r2, r5				# 1271
	bne	cr7, beq_else.17863				# 1271
	addi	r2, 0, 0
	b	beq_cont.17864				# 1271
beq_else.17863:
	lwz	r2, 16(r3)				# 1272
	lwz	r6, 0(r3)				# 1272
	lwz	r30, 4(r3)				# 1272
	mfspr	r31, 8				# 1272
	mr	r5, r6				# 1272
	stw	r31, 76(r3)				# 1272
	addi	r3, r3, 80				# 1272
	lwz	r31, 0(r30)				# 1272
	mtspr	9, r31				# 1272
	bctrl				# 1272
	addi	r3, r3, -80				# 1272
	lwz	r31, 76(r3)				# 1272
	mtspr	8, r31				# 1272
	lwz	r5, 24(r3)				# 1272
	cmpw	cr7, r2, r5				# 1272
	bne	cr7, beq_else.17865				# 1272
	addi	r2, 0, 0
	b	beq_cont.17866				# 1272
beq_else.17865:
	addi	r2, 0, 1
beq_cont.17866:
beq_cont.17864:
beq_cont.17862:
beq_cont.17852:
	lwz	r5, 24(r3)				# 1263
	cmpw	cr7, r2, r5				# 1263
	bne	cr7, beq_else.17867				# 1263
	lwz	r2, 16(r3)				# 1283
	lwz	r5, 20(r3)				# 1283
	add	r2, r5, r2				# 1283
	lwz	r5, 8(r3)				# 1283
	lwz	r30, 12(r3)				# 1283
	lwz	r29, 0(r30)				# 1283
	mtspr	9, r29
	bctr				# 1283
beq_else.17867:
	lwz	r2, 16(r3)				# 1278
	lwz	r6, 0(r3)				# 1278
	lwz	r30, 4(r3)				# 1278
	mfspr	r31, 8				# 1278
	mr	r5, r6				# 1278
	stw	r31, 76(r3)				# 1278
	addi	r3, r3, 80				# 1278
	lwz	r31, 0(r30)				# 1278
	mtspr	9, r31				# 1278
	bctrl				# 1278
	addi	r3, r3, -80				# 1278
	lwz	r31, 76(r3)				# 1278
	mtspr	8, r31				# 1278
	lwz	r5, 24(r3)				# 1278
	cmpw	cr7, r2, r5				# 1278
	bne	cr7, beq_else.17868				# 1278
	lwz	r2, 16(r3)				# 1281
	lwz	r5, 20(r3)				# 1281
	add	r2, r5, r2				# 1281
	lwz	r5, 8(r3)				# 1281
	lwz	r30, 12(r3)				# 1281
	lwz	r29, 0(r30)				# 1281
	mtspr	9, r29
	bctr				# 1281
beq_else.17868:
	addi	r2, 0, 1
	blr
solve_each_element.2750:
	lwz	r7, 60(r30)				# 1291
	lwz	r8, 56(r30)				# 1291
	lwz	r9, 52(r30)				# 1291
	lwz	r10, 48(r30)				# 1291
	lwz	r11, 44(r30)				# 1291
	lwz	r12, 40(r30)				# 1291
	lwz	r13, 36(r30)				# 1291
	lwz	r14, 32(r30)				# 1291
	lwz	r15, 28(r30)				# 1291
	lwz	r16, 24(r30)				# 1291
	lwz	r17, 20(r30)				# 1291
	lwz	r18, 16(r30)				# 1291
	lwz	r19, 12(r30)				# 1291
	lwz	r20, 8(r30)				# 1291
	lfs	f0, 4(r30)				# 1291
	slwi	r21, r2, 2				# 1292
	lwzx	r21, r5, r21				# 1292
	cmpw	cr7, r21, r18				# 1293
	bne	cr7, beq_else.17869				# 1293
	blr
beq_else.17869:
	slwi	r18, r21, 2				# 885
	lwzx	r18, r12, r18				# 885
	slwi	r22, r19, 2				# 887
	lfsx	f1, r8, r22				# 887
	lwz	r22, 20(r18)				# 317
	slwi	r23, r19, 2				# 322
	lfsx	f2, r22, r23				# 322
	fsub	f1, f1, f2				# 887
	slwi	r22, r20, 2				# 888
	lfsx	f2, r8, r22				# 888
	lwz	r22, 20(r18)				# 327
	slwi	r23, r20, 2				# 332
	lfsx	f3, r22, r23				# 332
	fsub	f2, f2, f3				# 888
	slwi	r22, r17, 2				# 889
	lfsx	f3, r8, r22				# 889
	lwz	r22, 20(r18)				# 337
	slwi	r23, r17, 2				# 342
	lfsx	f4, r22, r23				# 342
	fsub	f3, f3, f4				# 889
	lwz	r22, 4(r18)				# 239
	stw	r13, 0(r3)				# 892
	stw	r15, 4(r3)				# 892
	stw	r14, 8(r3)				# 892
	stw	r16, 12(r3)				# 892
	stw	r17, 16(r3)				# 892
	stw	r8, 20(r3)				# 892
	stw	r7, 24(r3)				# 892
	stfs	f0, 32(r3)				# 892
	stw	r11, 40(r3)				# 892
	stw	r6, 44(r3)				# 892
	stw	r5, 48(r3)				# 892
	stw	r30, 52(r3)				# 892
	stw	r20, 56(r3)				# 892
	stw	r2, 60(r3)				# 892
	stw	r12, 64(r3)				# 892
	stw	r21, 68(r3)				# 892
	stw	r19, 72(r3)				# 892
	cmpw	cr7, r22, r20				# 892
	bne	cr7, beq_else.17872				# 892
	mfspr	r31, 8				# 892
	mr	r5, r6				# 892
	mr	r2, r18				# 892
	mr	r30, r10				# 892
	fmr	f0, f1				# 892
	fmr	f1, f2				# 892
	fmr	f2, f3				# 892
	stw	r31, 76(r3)				# 892
	addi	r3, r3, 80				# 892
	lwz	r31, 0(r30)				# 892
	mtspr	9, r31				# 892
	bctrl				# 892
	addi	r3, r3, -80				# 892
	lwz	r31, 76(r3)				# 892
	mtspr	8, r31				# 892
	b	beq_cont.17873				# 892
beq_else.17872:
	cmpw	cr7, r22, r17				# 893
	bne	cr7, beq_else.17874				# 893
	lwz	r9, 16(r18)				# 307
	slwi	r10, r19, 2				# 182
	lfsx	f4, r6, r10				# 182
	slwi	r10, r19, 2				# 182
	lfsx	f5, r9, r10				# 182
	fmul	f4, f4, f5				# 182
	slwi	r10, r20, 2				# 182
	lfsx	f5, r6, r10				# 182
	slwi	r10, r20, 2				# 182
	lfsx	f6, r9, r10				# 182
	fmul	f5, f5, f6				# 182
	fadd	f4, f4, f5				# 182
	slwi	r10, r17, 2				# 182
	lfsx	f5, r6, r10				# 182
	slwi	r10, r17, 2				# 182
	lfsx	f6, r9, r10				# 182
	fmul	f5, f5, f6				# 182
	fadd	f4, f4, f5				# 182
	stfs	f4, 80(r3)				# 812
	stfs	f3, 88(r3)				# 812
	stfs	f2, 96(r3)				# 812
	stfs	f1, 104(r3)				# 812
	stw	r9, 112(r3)				# 812
	mfspr	r31, 8				# 812
	fmr	f0, f4				# 812
	stw	r31, 116(r3)				# 812
	addi	r3, r3, 120				# 812
	bl	min_caml_fispos				# 812
	addi	r3, r3, -120				# 812
	lwz	r31, 116(r3)				# 812
	mtspr	8, r31				# 812
	lwz	r5, 72(r3)				# 812
	cmpw	cr7, r2, r5				# 812
	bne	cr7, beq_else.17877				# 812
	addi	r2, 0, 0
	b	beq_cont.17878				# 812
beq_else.17877:
	slwi	r2, r5, 2				# 187
	lwz	r6, 112(r3)				# 187
	lfsx	f0, r6, r2				# 187
	lfs	f1, 104(r3)				# 187
	fmul	f0, f0, f1				# 187
	lwz	r2, 56(r3)				# 187
	slwi	r7, r2, 2				# 187
	lfsx	f1, r6, r7				# 187
	lfs	f2, 96(r3)				# 187
	fmul	f1, f1, f2				# 187
	fadd	f0, f0, f1				# 187
	lwz	r7, 16(r3)				# 187
	slwi	r8, r7, 2				# 187
	lfsx	f1, r6, r8				# 187
	lfs	f2, 88(r3)				# 187
	fmul	f1, f1, f2				# 187
	fadd	f0, f0, f1				# 187
	mfspr	r31, 8				# 813
	stw	r31, 116(r3)				# 813
	addi	r3, r3, 120				# 813
	bl	min_caml_fneg				# 813
	addi	r3, r3, -120				# 813
	lwz	r31, 116(r3)				# 813
	mtspr	8, r31				# 813
	lfs	f1, 80(r3)				# 813
	fdiv	f0, f0, f1				# 813
	lwz	r2, 72(r3)				# 813
	slwi	r5, r2, 2				# 813
	lwz	r6, 40(r3)				# 813
	stfsx	f0, r6, r5				# 813
	addi	r2, 0, 1
beq_cont.17878:
	b	beq_cont.17875				# 893
beq_else.17874:
	mfspr	r31, 8				# 894
	mr	r5, r6				# 894
	mr	r2, r18				# 894
	mr	r30, r9				# 894
	fmr	f0, f1				# 894
	fmr	f1, f2				# 894
	fmr	f2, f3				# 894
	stw	r31, 116(r3)				# 894
	addi	r3, r3, 120				# 894
	lwz	r31, 0(r30)				# 894
	mtspr	9, r31				# 894
	bctrl				# 894
	addi	r3, r3, -120				# 894
	lwz	r31, 116(r3)				# 894
	mtspr	8, r31				# 894
beq_cont.17875:
beq_cont.17873:
	lwz	r5, 72(r3)				# 1296
	cmpw	cr7, r2, r5				# 1296
	bne	cr7, beq_else.17879				# 1296
	lwz	r2, 68(r3)				# 1324
	slwi	r2, r2, 2				# 1324
	lwz	r6, 64(r3)				# 1324
	lwzx	r2, r6, r2				# 1324
	lwz	r2, 24(r2)				# 259
	cmpw	cr7, r2, r5				# 1324
	bne	cr7, beq_else.17880				# 1324
	blr
beq_else.17880:
	lwz	r2, 56(r3)				# 1325
	lwz	r5, 60(r3)				# 1325
	add	r2, r5, r2				# 1325
	lwz	r5, 48(r3)				# 1325
	lwz	r6, 44(r3)				# 1325
	lwz	r30, 52(r3)				# 1325
	lwz	r29, 0(r30)				# 1325
	mtspr	9, r29
	bctr				# 1325
beq_else.17879:
	slwi	r6, r5, 2				# 1300
	lwz	r7, 40(r3)				# 1300
	lfsx	f1, r7, r6				# 1300
	lfs	f0, 32(r3)				# 1302
	stw	r2, 116(r3)				# 1302
	stfs	f1, 120(r3)				# 1302
	mfspr	r31, 8				# 1302
	stw	r31, 128(r3)				# 1302
	addi	r3, r3, 132				# 1302
	bl	min_caml_fless				# 1302
	addi	r3, r3, -132				# 1302
	lwz	r31, 128(r3)				# 1302
	mtspr	8, r31				# 1302
	lwz	r5, 72(r3)				# 1302
	cmpw	cr7, r2, r5				# 1302
	bne	cr7, beq_else.17882				# 1302
	b	beq_cont.17883				# 1302
beq_else.17882:
	slwi	r2, r5, 2				# 1303
	lwz	r6, 24(r3)				# 1303
	lfsx	f1, r6, r2				# 1303
	lfs	f0, 120(r3)				# 1303
	mfspr	r31, 8				# 1303
	stw	r31, 128(r3)				# 1303
	addi	r3, r3, 132				# 1303
	bl	min_caml_fless				# 1303
	addi	r3, r3, -132				# 1303
	lwz	r31, 128(r3)				# 1303
	mtspr	8, r31				# 1303
	lwz	r5, 72(r3)				# 1303
	cmpw	cr7, r2, r5				# 1303
	bne	cr7, beq_else.17884				# 1303
	b	beq_cont.17885				# 1303
beq_else.17884:
	lis	r31, ha16(l.11923)
	addi	r31, r31, lo16(l.11923)
	lfs	f0, 0(r31)				# 1305
	lfs	f1, 120(r3)				# 1305
	fadd	f0, f1, f0				# 1305
	slwi	r2, r5, 2				# 1306
	lwz	r6, 44(r3)				# 1306
	lfsx	f1, r6, r2				# 1306
	fmul	f1, f1, f0				# 1306
	slwi	r2, r5, 2				# 1306
	lwz	r7, 20(r3)				# 1306
	lfsx	f2, r7, r2				# 1306
	fadd	f1, f1, f2				# 1306
	lwz	r2, 56(r3)				# 1307
	slwi	r8, r2, 2				# 1307
	lfsx	f2, r6, r8				# 1307
	fmul	f2, f2, f0				# 1307
	slwi	r8, r2, 2				# 1307
	lfsx	f3, r7, r8				# 1307
	fadd	f2, f2, f3				# 1307
	lwz	r8, 16(r3)				# 1308
	slwi	r9, r8, 2				# 1308
	lfsx	f3, r6, r9				# 1308
	fmul	f3, f3, f0				# 1308
	slwi	r9, r8, 2				# 1308
	lfsx	f4, r7, r9				# 1308
	fadd	f3, f3, f4				# 1308
	lwz	r7, 48(r3)				# 1309
	lwz	r30, 12(r3)				# 1309
	stfs	f3, 128(r3)				# 1309
	stfs	f2, 136(r3)				# 1309
	stfs	f1, 144(r3)				# 1309
	stfs	f0, 152(r3)				# 1309
	mfspr	r31, 8				# 1309
	mr	r2, r5				# 1309
	mr	r5, r7				# 1309
	fmr	f0, f1				# 1309
	fmr	f1, f2				# 1309
	fmr	f2, f3				# 1309
	stw	r31, 160(r3)				# 1309
	addi	r3, r3, 164				# 1309
	lwz	r31, 0(r30)				# 1309
	mtspr	9, r31				# 1309
	bctrl				# 1309
	addi	r3, r3, -164				# 1309
	lwz	r31, 160(r3)				# 1309
	mtspr	8, r31				# 1309
	lwz	r5, 72(r3)				# 1309
	cmpw	cr7, r2, r5				# 1309
	bne	cr7, beq_else.17886				# 1309
	b	beq_cont.17887				# 1309
beq_else.17886:
	slwi	r2, r5, 2				# 1311
	lwz	r6, 24(r3)				# 1311
	lfs	f0, 152(r3)				# 1311
	stfsx	f0, r6, r2				# 1311
	slwi	r2, r5, 2				# 134
	lwz	r6, 8(r3)				# 134
	lfs	f0, 144(r3)				# 134
	stfsx	f0, r6, r2				# 134
	lwz	r2, 56(r3)				# 135
	slwi	r7, r2, 2				# 135
	lfs	f0, 136(r3)				# 135
	stfsx	f0, r6, r7				# 135
	lwz	r7, 16(r3)				# 136
	slwi	r7, r7, 2				# 136
	lfs	f0, 128(r3)				# 136
	stfsx	f0, r6, r7				# 136
	slwi	r6, r5, 2				# 1313
	lwz	r7, 4(r3)				# 1313
	lwz	r8, 68(r3)				# 1313
	stwx	r8, r7, r6				# 1313
	slwi	r5, r5, 2				# 1314
	lwz	r6, 0(r3)				# 1314
	lwz	r7, 116(r3)				# 1314
	stwx	r7, r6, r5				# 1314
beq_cont.17887:
beq_cont.17885:
beq_cont.17883:
	lwz	r2, 56(r3)				# 1320
	lwz	r5, 60(r3)				# 1320
	add	r2, r5, r2				# 1320
	lwz	r5, 48(r3)				# 1320
	lwz	r6, 44(r3)				# 1320
	lwz	r30, 52(r3)				# 1320
	lwz	r29, 0(r30)				# 1320
	mtspr	9, r29
	bctr				# 1320
solve_one_or_network.2754:
	lwz	r7, 20(r30)				# 1332
	lwz	r8, 16(r30)				# 1332
	lwz	r9, 12(r30)				# 1332
	lwz	r10, 8(r30)				# 1332
	lwz	r11, 4(r30)				# 1332
	slwi	r12, r2, 2				# 1333
	lwzx	r12, r5, r12				# 1333
	cmpw	cr7, r12, r9				# 1334
	bne	cr7, beq_else.17888				# 1334
	blr
beq_else.17888:
	slwi	r9, r12, 2				# 1335
	lwzx	r8, r8, r9				# 1335
	stw	r6, 0(r3)				# 1336
	stw	r5, 4(r3)				# 1336
	stw	r30, 8(r3)				# 1336
	stw	r11, 12(r3)				# 1336
	stw	r2, 16(r3)				# 1336
	mfspr	r31, 8				# 1336
	mr	r5, r8				# 1336
	mr	r2, r10				# 1336
	mr	r30, r7				# 1336
	stw	r31, 20(r3)				# 1336
	addi	r3, r3, 24				# 1336
	lwz	r31, 0(r30)				# 1336
	mtspr	9, r31				# 1336
	bctrl				# 1336
	addi	r3, r3, -24				# 1336
	lwz	r31, 20(r3)				# 1336
	mtspr	8, r31				# 1336
	lwz	r2, 12(r3)				# 1337
	lwz	r5, 16(r3)				# 1337
	add	r2, r5, r2				# 1337
	lwz	r5, 4(r3)				# 1337
	lwz	r6, 0(r3)				# 1337
	lwz	r30, 8(r3)				# 1337
	lwz	r29, 0(r30)				# 1337
	mtspr	9, r29
	bctr				# 1337
trace_or_matrix.2758:
	lwz	r7, 44(r30)				# 1342
	lwz	r8, 40(r30)				# 1342
	lwz	r9, 36(r30)				# 1342
	lwz	r10, 32(r30)				# 1342
	lwz	r11, 28(r30)				# 1342
	lwz	r12, 24(r30)				# 1342
	lwz	r13, 20(r30)				# 1342
	lwz	r14, 16(r30)				# 1342
	lwz	r15, 12(r30)				# 1342
	lwz	r16, 8(r30)				# 1342
	lwz	r17, 4(r30)				# 1342
	slwi	r18, r2, 2				# 1343
	lwzx	r18, r5, r18				# 1343
	slwi	r19, r16, 2				# 1344
	lwzx	r19, r18, r19				# 1344
	cmpw	cr7, r19, r15				# 1345
	bne	cr7, beq_else.17890				# 1345
	blr
beq_else.17890:
	stw	r6, 0(r3)				# 1348
	stw	r5, 4(r3)				# 1348
	stw	r30, 8(r3)				# 1348
	stw	r17, 12(r3)				# 1348
	stw	r2, 16(r3)				# 1348
	cmpwi	cr7, r19, 99				# 1348
	bne	cr7, beq_else.17892				# 1348
	mfspr	r31, 8				# 1349
	mr	r5, r18				# 1349
	mr	r2, r17				# 1349
	mr	r30, r12				# 1349
	stw	r31, 20(r3)				# 1349
	addi	r3, r3, 24				# 1349
	lwz	r31, 0(r30)				# 1349
	mtspr	9, r31				# 1349
	bctrl				# 1349
	addi	r3, r3, -24				# 1349
	lwz	r31, 20(r3)				# 1349
	mtspr	8, r31				# 1349
	b	beq_cont.17893				# 1348
beq_else.17892:
	slwi	r15, r19, 2				# 885
	lwzx	r13, r13, r15				# 885
	slwi	r15, r16, 2				# 887
	lfsx	f0, r8, r15				# 887
	lwz	r15, 20(r13)				# 317
	slwi	r19, r16, 2				# 322
	lfsx	f1, r15, r19				# 322
	fsub	f0, f0, f1				# 887
	slwi	r15, r17, 2				# 888
	lfsx	f1, r8, r15				# 888
	lwz	r15, 20(r13)				# 327
	slwi	r19, r17, 2				# 332
	lfsx	f2, r15, r19				# 332
	fsub	f1, f1, f2				# 888
	slwi	r15, r14, 2				# 889
	lfsx	f2, r8, r15				# 889
	lwz	r8, 20(r13)				# 337
	slwi	r15, r14, 2				# 342
	lfsx	f3, r8, r15				# 342
	fsub	f2, f2, f3				# 889
	lwz	r8, 4(r13)				# 239
	stw	r18, 20(r3)				# 892
	stw	r12, 24(r3)				# 892
	stw	r7, 28(r3)				# 892
	stw	r11, 32(r3)				# 892
	stw	r16, 36(r3)				# 892
	cmpw	cr7, r8, r17				# 892
	bne	cr7, beq_else.17894				# 892
	mfspr	r31, 8				# 892
	mr	r5, r6				# 892
	mr	r2, r13				# 892
	mr	r30, r10				# 892
	stw	r31, 40(r3)				# 892
	addi	r3, r3, 44				# 892
	lwz	r31, 0(r30)				# 892
	mtspr	9, r31				# 892
	bctrl				# 892
	addi	r3, r3, -44				# 892
	lwz	r31, 40(r3)				# 892
	mtspr	8, r31				# 892
	b	beq_cont.17895				# 892
beq_else.17894:
	cmpw	cr7, r8, r14				# 893
	bne	cr7, beq_else.17896				# 893
	lwz	r8, 16(r13)				# 307
	slwi	r9, r16, 2				# 182
	lfsx	f3, r6, r9				# 182
	slwi	r9, r16, 2				# 182
	lfsx	f4, r8, r9				# 182
	fmul	f3, f3, f4				# 182
	slwi	r9, r17, 2				# 182
	lfsx	f4, r6, r9				# 182
	slwi	r9, r17, 2				# 182
	lfsx	f5, r8, r9				# 182
	fmul	f4, f4, f5				# 182
	fadd	f3, f3, f4				# 182
	slwi	r9, r14, 2				# 182
	lfsx	f4, r6, r9				# 182
	slwi	r9, r14, 2				# 182
	lfsx	f5, r8, r9				# 182
	fmul	f4, f4, f5				# 182
	fadd	f3, f3, f4				# 182
	stfs	f3, 40(r3)				# 812
	stfs	f2, 48(r3)				# 812
	stw	r14, 56(r3)				# 812
	stfs	f1, 64(r3)				# 812
	stfs	f0, 72(r3)				# 812
	stw	r8, 80(r3)				# 812
	mfspr	r31, 8				# 812
	fmr	f0, f3				# 812
	stw	r31, 84(r3)				# 812
	addi	r3, r3, 88				# 812
	bl	min_caml_fispos				# 812
	addi	r3, r3, -88				# 812
	lwz	r31, 84(r3)				# 812
	mtspr	8, r31				# 812
	lwz	r5, 36(r3)				# 812
	cmpw	cr7, r2, r5				# 812
	bne	cr7, beq_else.17899				# 812
	addi	r2, 0, 0
	b	beq_cont.17900				# 812
beq_else.17899:
	slwi	r2, r5, 2				# 187
	lwz	r6, 80(r3)				# 187
	lfsx	f0, r6, r2				# 187
	lfs	f1, 72(r3)				# 187
	fmul	f0, f0, f1				# 187
	lwz	r2, 12(r3)				# 187
	slwi	r7, r2, 2				# 187
	lfsx	f1, r6, r7				# 187
	lfs	f2, 64(r3)				# 187
	fmul	f1, f1, f2				# 187
	fadd	f0, f0, f1				# 187
	lwz	r7, 56(r3)				# 187
	slwi	r7, r7, 2				# 187
	lfsx	f1, r6, r7				# 187
	lfs	f2, 48(r3)				# 187
	fmul	f1, f1, f2				# 187
	fadd	f0, f0, f1				# 187
	mfspr	r31, 8				# 813
	stw	r31, 84(r3)				# 813
	addi	r3, r3, 88				# 813
	bl	min_caml_fneg				# 813
	addi	r3, r3, -88				# 813
	lwz	r31, 84(r3)				# 813
	mtspr	8, r31				# 813
	lfs	f1, 40(r3)				# 813
	fdiv	f0, f0, f1				# 813
	lwz	r2, 36(r3)				# 813
	slwi	r5, r2, 2				# 813
	lwz	r6, 32(r3)				# 813
	stfsx	f0, r6, r5				# 813
	addi	r2, 0, 1
beq_cont.17900:
	b	beq_cont.17897				# 893
beq_else.17896:
	mfspr	r31, 8				# 894
	mr	r5, r6				# 894
	mr	r2, r13				# 894
	mr	r30, r9				# 894
	stw	r31, 84(r3)				# 894
	addi	r3, r3, 88				# 894
	lwz	r31, 0(r30)				# 894
	mtspr	9, r31				# 894
	bctrl				# 894
	addi	r3, r3, -88				# 894
	lwz	r31, 84(r3)				# 894
	mtspr	8, r31				# 894
beq_cont.17897:
beq_cont.17895:
	lwz	r5, 36(r3)				# 1354
	cmpw	cr7, r2, r5				# 1354
	bne	cr7, beq_else.17901				# 1354
	b	beq_cont.17902				# 1354
beq_else.17901:
	slwi	r2, r5, 2				# 1355
	lwz	r6, 32(r3)				# 1355
	lfsx	f0, r6, r2				# 1355
	slwi	r2, r5, 2				# 1356
	lwz	r6, 28(r3)				# 1356
	lfsx	f1, r6, r2				# 1356
	mfspr	r31, 8				# 1356
	stw	r31, 84(r3)				# 1356
	addi	r3, r3, 88				# 1356
	bl	min_caml_fless				# 1356
	addi	r3, r3, -88				# 1356
	lwz	r31, 84(r3)				# 1356
	mtspr	8, r31				# 1356
	lwz	r5, 36(r3)				# 1356
	cmpw	cr7, r2, r5				# 1356
	bne	cr7, beq_else.17903				# 1356
	b	beq_cont.17904				# 1356
beq_else.17903:
	lwz	r2, 12(r3)				# 1357
	lwz	r5, 20(r3)				# 1357
	lwz	r6, 0(r3)				# 1357
	lwz	r30, 24(r3)				# 1357
	mfspr	r31, 8				# 1357
	stw	r31, 84(r3)				# 1357
	addi	r3, r3, 88				# 1357
	lwz	r31, 0(r30)				# 1357
	mtspr	9, r31				# 1357
	bctrl				# 1357
	addi	r3, r3, -88				# 1357
	lwz	r31, 84(r3)				# 1357
	mtspr	8, r31				# 1357
beq_cont.17904:
beq_cont.17902:
beq_cont.17893:
	lwz	r2, 12(r3)				# 1361
	lwz	r5, 16(r3)				# 1361
	add	r2, r5, r2				# 1361
	lwz	r5, 4(r3)				# 1361
	lwz	r6, 0(r3)				# 1361
	lwz	r30, 8(r3)				# 1361
	lwz	r29, 0(r30)				# 1361
	mtspr	9, r29
	bctr				# 1361
solve_each_element_fast.2764:
	lwz	r7, 60(r30)				# 1382
	lwz	r8, 56(r30)				# 1382
	lwz	r9, 52(r30)				# 1382
	lwz	r10, 48(r30)				# 1382
	lwz	r11, 44(r30)				# 1382
	lwz	r12, 40(r30)				# 1382
	lwz	r13, 36(r30)				# 1382
	lwz	r14, 32(r30)				# 1382
	lwz	r15, 28(r30)				# 1382
	lwz	r16, 24(r30)				# 1382
	lwz	r17, 20(r30)				# 1382
	lwz	r18, 16(r30)				# 1382
	lwz	r19, 12(r30)				# 1382
	lwz	r20, 8(r30)				# 1382
	lfs	f0, 4(r30)				# 1382
	lwz	r21, 0(r6)				# 508
	slwi	r22, r2, 2				# 1384
	lwzx	r22, r5, r22				# 1384
	cmpw	cr7, r22, r17				# 1385
	bne	cr7, beq_else.17905				# 1385
	blr
beq_else.17905:
	slwi	r17, r22, 2				# 1011
	lwzx	r17, r11, r17				# 1011
	lwz	r23, 40(r17)				# 428
	slwi	r24, r19, 2				# 1013
	lfsx	f1, r23, r24				# 1013
	slwi	r24, r20, 2				# 1014
	lfsx	f2, r23, r24				# 1014
	slwi	r24, r16, 2				# 1015
	lfsx	f3, r23, r24				# 1015
	lwz	r24, 4(r6)				# 514
	slwi	r25, r22, 2				# 1017
	lwzx	r24, r24, r25				# 1017
	lwz	r25, 4(r17)				# 239
	stw	r12, 0(r3)				# 1019
	stw	r14, 4(r3)				# 1019
	stw	r13, 8(r3)				# 1019
	stw	r15, 12(r3)				# 1019
	stw	r16, 16(r3)				# 1019
	stw	r8, 20(r3)				# 1019
	stw	r21, 24(r3)				# 1019
	stw	r7, 28(r3)				# 1019
	stfs	f0, 32(r3)				# 1019
	stw	r10, 40(r3)				# 1019
	stw	r6, 44(r3)				# 1019
	stw	r5, 48(r3)				# 1019
	stw	r30, 52(r3)				# 1019
	stw	r20, 56(r3)				# 1019
	stw	r2, 60(r3)				# 1019
	stw	r11, 64(r3)				# 1019
	stw	r22, 68(r3)				# 1019
	stw	r19, 72(r3)				# 1019
	cmpw	cr7, r25, r20				# 1019
	bne	cr7, beq_else.17907				# 1019
	lwz	r18, 0(r6)				# 508
	mfspr	r31, 8				# 1020
	mr	r6, r24				# 1020
	mr	r5, r18				# 1020
	mr	r2, r17				# 1020
	mr	r30, r9				# 1020
	fmr	f0, f1				# 1020
	fmr	f1, f2				# 1020
	fmr	f2, f3				# 1020
	stw	r31, 76(r3)				# 1020
	addi	r3, r3, 80				# 1020
	lwz	r31, 0(r30)				# 1020
	mtspr	9, r31				# 1020
	bctrl				# 1020
	addi	r3, r3, -80				# 1020
	lwz	r31, 76(r3)				# 1020
	mtspr	8, r31				# 1020
	b	beq_cont.17908				# 1019
beq_else.17907:
	cmpw	cr7, r25, r16				# 1021
	bne	cr7, beq_else.17909				# 1021
	slwi	r9, r19, 2				# 984
	lfsx	f1, r24, r9				# 984
	stw	r23, 76(r3)				# 984
	stw	r18, 80(r3)				# 984
	stw	r24, 84(r3)				# 984
	mfspr	r31, 8				# 984
	fmr	f0, f1				# 984
	stw	r31, 88(r3)				# 984
	addi	r3, r3, 92				# 984
	bl	min_caml_fisneg				# 984
	addi	r3, r3, -92				# 984
	lwz	r31, 88(r3)				# 984
	mtspr	8, r31				# 984
	lwz	r5, 72(r3)				# 984
	cmpw	cr7, r2, r5				# 984
	bne	cr7, beq_else.17911				# 984
	addi	r2, 0, 0
	b	beq_cont.17912				# 984
beq_else.17911:
	slwi	r2, r5, 2				# 985
	lwz	r6, 84(r3)				# 985
	lfsx	f0, r6, r2				# 985
	lwz	r2, 80(r3)				# 985
	slwi	r2, r2, 2				# 985
	lwz	r6, 76(r3)				# 985
	lfsx	f1, r6, r2				# 985
	fmul	f0, f0, f1				# 985
	slwi	r2, r5, 2				# 985
	lwz	r6, 40(r3)				# 985
	stfsx	f0, r6, r2				# 985
	addi	r2, 0, 1
beq_cont.17912:
	b	beq_cont.17910				# 1021
beq_else.17909:
	slwi	r9, r19, 2				# 993
	lfsx	f4, r24, r9				# 993
	stw	r17, 88(r3)				# 994
	stfs	f4, 96(r3)				# 994
	stw	r23, 76(r3)				# 994
	stfs	f3, 104(r3)				# 994
	stw	r18, 80(r3)				# 994
	stfs	f2, 112(r3)				# 994
	stfs	f1, 120(r3)				# 994
	stw	r24, 84(r3)				# 994
	mfspr	r31, 8				# 994
	fmr	f0, f4				# 994
	stw	r31, 128(r3)				# 994
	addi	r3, r3, 132				# 994
	bl	min_caml_fiszero				# 994
	addi	r3, r3, -132				# 994
	lwz	r31, 128(r3)				# 994
	mtspr	8, r31				# 994
	lwz	r5, 72(r3)				# 994
	cmpw	cr7, r2, r5				# 994
	bne	cr7, beq_else.17914				# 994
	lwz	r2, 56(r3)				# 997
	slwi	r6, r2, 2				# 997
	lwz	r7, 84(r3)				# 997
	lfsx	f0, r7, r6				# 997
	lfs	f1, 120(r3)				# 997
	fmul	f0, f0, f1				# 997
	lwz	r6, 16(r3)				# 997
	slwi	r8, r6, 2				# 997
	lfsx	f1, r7, r8				# 997
	lfs	f2, 112(r3)				# 997
	fmul	f1, f1, f2				# 997
	fadd	f0, f0, f1				# 997
	lwz	r8, 80(r3)				# 997
	slwi	r9, r8, 2				# 997
	lfsx	f1, r7, r9				# 997
	lfs	f2, 104(r3)				# 997
	fmul	f1, f1, f2				# 997
	fadd	f0, f0, f1				# 997
	slwi	r8, r8, 2				# 998
	lwz	r9, 76(r3)				# 998
	lfsx	f1, r9, r8				# 998
	stfs	f0, 128(r3)				# 999
	stfs	f1, 136(r3)				# 999
	mfspr	r31, 8				# 999
	stw	r31, 144(r3)				# 999
	addi	r3, r3, 148				# 999
	bl	min_caml_fsqr				# 999
	addi	r3, r3, -148				# 999
	lwz	r31, 144(r3)				# 999
	mtspr	8, r31				# 999
	lfs	f1, 136(r3)				# 999
	lfs	f2, 96(r3)				# 999
	fmul	f1, f2, f1				# 999
	fsub	f0, f0, f1				# 999
	stfs	f0, 144(r3)				# 1000
	mfspr	r31, 8				# 1000
	stw	r31, 152(r3)				# 1000
	addi	r3, r3, 156				# 1000
	bl	min_caml_fispos				# 1000
	addi	r3, r3, -156				# 1000
	lwz	r31, 152(r3)				# 1000
	mtspr	8, r31				# 1000
	lwz	r5, 72(r3)				# 1000
	cmpw	cr7, r2, r5				# 1000
	bne	cr7, beq_else.17916				# 1000
	addi	r2, 0, 0
	b	beq_cont.17917				# 1000
beq_else.17916:
	lwz	r2, 88(r3)				# 259
	lwz	r2, 24(r2)				# 259
	cmpw	cr7, r2, r5				# 1001
	bne	cr7, beq_else.17918				# 1001
	lfs	f0, 144(r3)				# 1004
	mfspr	r31, 8				# 1004
	stw	r31, 152(r3)				# 1004
	addi	r3, r3, 156				# 1004
	bl	min_caml_sqrt				# 1004
	addi	r3, r3, -156				# 1004
	lwz	r31, 152(r3)				# 1004
	mtspr	8, r31				# 1004
	lfs	f1, 128(r3)				# 1004
	fsub	f0, f1, f0				# 1004
	lwz	r2, 84(r3)				# 1004
	lfs	f1, 16(r2)				# 1004
	fmul	f0, f0, f1				# 1004
	lwz	r2, 72(r3)				# 1004
	slwi	r5, r2, 2				# 1004
	lwz	r6, 40(r3)				# 1004
	stfsx	f0, r6, r5				# 1004
	b	beq_cont.17919				# 1001
beq_else.17918:
	lfs	f0, 144(r3)				# 1002
	mfspr	r31, 8				# 1002
	stw	r31, 152(r3)				# 1002
	addi	r3, r3, 156				# 1002
	bl	min_caml_sqrt				# 1002
	addi	r3, r3, -156				# 1002
	lwz	r31, 152(r3)				# 1002
	mtspr	8, r31				# 1002
	lfs	f1, 128(r3)				# 1002
	fadd	f0, f1, f0				# 1002
	lwz	r2, 84(r3)				# 1002
	lfs	f1, 16(r2)				# 1002
	fmul	f0, f0, f1				# 1002
	lwz	r2, 72(r3)				# 1002
	slwi	r5, r2, 2				# 1002
	lwz	r6, 40(r3)				# 1002
	stfsx	f0, r6, r5				# 1002
beq_cont.17919:
	addi	r2, 0, 1
beq_cont.17917:
	b	beq_cont.17915				# 994
beq_else.17914:
	addi	r2, 0, 0
beq_cont.17915:
beq_cont.17910:
beq_cont.17908:
	lwz	r5, 72(r3)				# 1388
	cmpw	cr7, r2, r5				# 1388
	bne	cr7, beq_else.17920				# 1388
	lwz	r2, 68(r3)				# 1416
	slwi	r2, r2, 2				# 1416
	lwz	r6, 64(r3)				# 1416
	lwzx	r2, r6, r2				# 1416
	lwz	r2, 24(r2)				# 259
	cmpw	cr7, r2, r5				# 1416
	bne	cr7, beq_else.17921				# 1416
	blr
beq_else.17921:
	lwz	r2, 56(r3)				# 1417
	lwz	r5, 60(r3)				# 1417
	add	r2, r5, r2				# 1417
	lwz	r5, 48(r3)				# 1417
	lwz	r6, 44(r3)				# 1417
	lwz	r30, 52(r3)				# 1417
	lwz	r29, 0(r30)				# 1417
	mtspr	9, r29
	bctr				# 1417
beq_else.17920:
	slwi	r6, r5, 2				# 1392
	lwz	r7, 40(r3)				# 1392
	lfsx	f1, r7, r6				# 1392
	lfs	f0, 32(r3)				# 1394
	stw	r2, 152(r3)				# 1394
	stfs	f1, 160(r3)				# 1394
	mfspr	r31, 8				# 1394
	stw	r31, 168(r3)				# 1394
	addi	r3, r3, 172				# 1394
	bl	min_caml_fless				# 1394
	addi	r3, r3, -172				# 1394
	lwz	r31, 168(r3)				# 1394
	mtspr	8, r31				# 1394
	lwz	r5, 72(r3)				# 1394
	cmpw	cr7, r2, r5				# 1394
	bne	cr7, beq_else.17924				# 1394
	b	beq_cont.17925				# 1394
beq_else.17924:
	slwi	r2, r5, 2				# 1395
	lwz	r6, 28(r3)				# 1395
	lfsx	f1, r6, r2				# 1395
	lfs	f0, 160(r3)				# 1395
	mfspr	r31, 8				# 1395
	stw	r31, 168(r3)				# 1395
	addi	r3, r3, 172				# 1395
	bl	min_caml_fless				# 1395
	addi	r3, r3, -172				# 1395
	lwz	r31, 168(r3)				# 1395
	mtspr	8, r31				# 1395
	lwz	r5, 72(r3)				# 1395
	cmpw	cr7, r2, r5				# 1395
	bne	cr7, beq_else.17926				# 1395
	b	beq_cont.17927				# 1395
beq_else.17926:
	lis	r31, ha16(l.11923)
	addi	r31, r31, lo16(l.11923)
	lfs	f0, 0(r31)				# 1397
	lfs	f1, 160(r3)				# 1397
	fadd	f0, f1, f0				# 1397
	slwi	r2, r5, 2				# 1398
	lwz	r6, 24(r3)				# 1398
	lfsx	f1, r6, r2				# 1398
	fmul	f1, f1, f0				# 1398
	slwi	r2, r5, 2				# 1398
	lwz	r7, 20(r3)				# 1398
	lfsx	f2, r7, r2				# 1398
	fadd	f1, f1, f2				# 1398
	lwz	r2, 56(r3)				# 1399
	slwi	r8, r2, 2				# 1399
	lfsx	f2, r6, r8				# 1399
	fmul	f2, f2, f0				# 1399
	slwi	r8, r2, 2				# 1399
	lfsx	f3, r7, r8				# 1399
	fadd	f2, f2, f3				# 1399
	lwz	r8, 16(r3)				# 1400
	slwi	r9, r8, 2				# 1400
	lfsx	f3, r6, r9				# 1400
	fmul	f3, f3, f0				# 1400
	slwi	r6, r8, 2				# 1400
	lfsx	f4, r7, r6				# 1400
	fadd	f3, f3, f4				# 1400
	lwz	r6, 48(r3)				# 1401
	lwz	r30, 12(r3)				# 1401
	stfs	f3, 168(r3)				# 1401
	stfs	f2, 176(r3)				# 1401
	stfs	f1, 184(r3)				# 1401
	stfs	f0, 192(r3)				# 1401
	mfspr	r31, 8				# 1401
	mr	r2, r5				# 1401
	mr	r5, r6				# 1401
	fmr	f0, f1				# 1401
	fmr	f1, f2				# 1401
	fmr	f2, f3				# 1401
	stw	r31, 200(r3)				# 1401
	addi	r3, r3, 204				# 1401
	lwz	r31, 0(r30)				# 1401
	mtspr	9, r31				# 1401
	bctrl				# 1401
	addi	r3, r3, -204				# 1401
	lwz	r31, 200(r3)				# 1401
	mtspr	8, r31				# 1401
	lwz	r5, 72(r3)				# 1401
	cmpw	cr7, r2, r5				# 1401
	bne	cr7, beq_else.17928				# 1401
	b	beq_cont.17929				# 1401
beq_else.17928:
	slwi	r2, r5, 2				# 1403
	lwz	r6, 28(r3)				# 1403
	lfs	f0, 192(r3)				# 1403
	stfsx	f0, r6, r2				# 1403
	slwi	r2, r5, 2				# 134
	lwz	r6, 8(r3)				# 134
	lfs	f0, 184(r3)				# 134
	stfsx	f0, r6, r2				# 134
	lwz	r2, 56(r3)				# 135
	slwi	r7, r2, 2				# 135
	lfs	f0, 176(r3)				# 135
	stfsx	f0, r6, r7				# 135
	lwz	r7, 16(r3)				# 136
	slwi	r7, r7, 2				# 136
	lfs	f0, 168(r3)				# 136
	stfsx	f0, r6, r7				# 136
	slwi	r6, r5, 2				# 1405
	lwz	r7, 4(r3)				# 1405
	lwz	r8, 68(r3)				# 1405
	stwx	r8, r7, r6				# 1405
	slwi	r5, r5, 2				# 1406
	lwz	r6, 0(r3)				# 1406
	lwz	r7, 152(r3)				# 1406
	stwx	r7, r6, r5				# 1406
beq_cont.17929:
beq_cont.17927:
beq_cont.17925:
	lwz	r2, 56(r3)				# 1412
	lwz	r5, 60(r3)				# 1412
	add	r2, r5, r2				# 1412
	lwz	r5, 48(r3)				# 1412
	lwz	r6, 44(r3)				# 1412
	lwz	r30, 52(r3)				# 1412
	lwz	r29, 0(r30)				# 1412
	mtspr	9, r29
	bctr				# 1412
solve_one_or_network_fast.2768:
	lwz	r7, 20(r30)				# 1423
	lwz	r8, 16(r30)				# 1423
	lwz	r9, 12(r30)				# 1423
	lwz	r10, 8(r30)				# 1423
	lwz	r11, 4(r30)				# 1423
	slwi	r12, r2, 2				# 1424
	lwzx	r12, r5, r12				# 1424
	cmpw	cr7, r12, r9				# 1425
	bne	cr7, beq_else.17930				# 1425
	blr
beq_else.17930:
	slwi	r9, r12, 2				# 1426
	lwzx	r8, r8, r9				# 1426
	stw	r6, 0(r3)				# 1427
	stw	r5, 4(r3)				# 1427
	stw	r30, 8(r3)				# 1427
	stw	r11, 12(r3)				# 1427
	stw	r2, 16(r3)				# 1427
	mfspr	r31, 8				# 1427
	mr	r5, r8				# 1427
	mr	r2, r10				# 1427
	mr	r30, r7				# 1427
	stw	r31, 20(r3)				# 1427
	addi	r3, r3, 24				# 1427
	lwz	r31, 0(r30)				# 1427
	mtspr	9, r31				# 1427
	bctrl				# 1427
	addi	r3, r3, -24				# 1427
	lwz	r31, 20(r3)				# 1427
	mtspr	8, r31				# 1427
	lwz	r2, 12(r3)				# 1428
	lwz	r5, 16(r3)				# 1428
	add	r2, r5, r2				# 1428
	lwz	r5, 4(r3)				# 1428
	lwz	r6, 0(r3)				# 1428
	lwz	r30, 8(r3)				# 1428
	lwz	r29, 0(r30)				# 1428
	mtspr	9, r29
	bctr				# 1428
trace_or_matrix_fast.2772:
	lwz	r7, 40(r30)				# 1433
	lwz	r8, 36(r30)				# 1433
	lwz	r9, 32(r30)				# 1433
	lwz	r10, 28(r30)				# 1433
	lwz	r11, 24(r30)				# 1433
	lwz	r12, 20(r30)				# 1433
	lwz	r13, 16(r30)				# 1433
	lwz	r14, 12(r30)				# 1433
	lwz	r15, 8(r30)				# 1433
	lwz	r16, 4(r30)				# 1433
	slwi	r17, r2, 2				# 1434
	lwzx	r17, r5, r17				# 1434
	slwi	r18, r15, 2				# 1435
	lwzx	r18, r17, r18				# 1435
	cmpw	cr7, r18, r13				# 1436
	bne	cr7, beq_else.17932				# 1436
	blr
beq_else.17932:
	stw	r6, 0(r3)				# 1439
	stw	r5, 4(r3)				# 1439
	stw	r30, 8(r3)				# 1439
	stw	r16, 12(r3)				# 1439
	stw	r2, 16(r3)				# 1439
	cmpwi	cr7, r18, 99				# 1439
	bne	cr7, beq_else.17934				# 1439
	mfspr	r31, 8				# 1440
	mr	r5, r17				# 1440
	mr	r2, r16				# 1440
	mr	r30, r10				# 1440
	stw	r31, 20(r3)				# 1440
	addi	r3, r3, 24				# 1440
	lwz	r31, 0(r30)				# 1440
	mtspr	9, r31				# 1440
	bctrl				# 1440
	addi	r3, r3, -24				# 1440
	lwz	r31, 20(r3)				# 1440
	mtspr	8, r31				# 1440
	b	beq_cont.17935				# 1439
beq_else.17934:
	slwi	r13, r18, 2				# 1011
	lwzx	r11, r11, r13				# 1011
	lwz	r13, 40(r11)				# 428
	slwi	r19, r15, 2				# 1013
	lfsx	f0, r13, r19				# 1013
	slwi	r19, r16, 2				# 1014
	lfsx	f1, r13, r19				# 1014
	slwi	r19, r12, 2				# 1015
	lfsx	f2, r13, r19				# 1015
	lwz	r19, 4(r6)				# 514
	slwi	r18, r18, 2				# 1017
	lwzx	r18, r19, r18				# 1017
	lwz	r19, 4(r11)				# 239
	stw	r17, 20(r3)				# 1019
	stw	r10, 24(r3)				# 1019
	stw	r7, 28(r3)				# 1019
	stw	r9, 32(r3)				# 1019
	stw	r15, 36(r3)				# 1019
	cmpw	cr7, r19, r16				# 1019
	bne	cr7, beq_else.17936				# 1019
	lwz	r12, 0(r6)				# 508
	mfspr	r31, 8				# 1020
	mr	r6, r18				# 1020
	mr	r5, r12				# 1020
	mr	r2, r11				# 1020
	mr	r30, r8				# 1020
	stw	r31, 40(r3)				# 1020
	addi	r3, r3, 44				# 1020
	lwz	r31, 0(r30)				# 1020
	mtspr	9, r31				# 1020
	bctrl				# 1020
	addi	r3, r3, -44				# 1020
	lwz	r31, 40(r3)				# 1020
	mtspr	8, r31				# 1020
	b	beq_cont.17937				# 1019
beq_else.17936:
	cmpw	cr7, r19, r12				# 1021
	bne	cr7, beq_else.17938				# 1021
	slwi	r8, r15, 2				# 984
	lfsx	f0, r18, r8				# 984
	stw	r13, 40(r3)				# 984
	stw	r14, 44(r3)				# 984
	stw	r18, 48(r3)				# 984
	mfspr	r31, 8				# 984
	stw	r31, 52(r3)				# 984
	addi	r3, r3, 56				# 984
	bl	min_caml_fisneg				# 984
	addi	r3, r3, -56				# 984
	lwz	r31, 52(r3)				# 984
	mtspr	8, r31				# 984
	lwz	r5, 36(r3)				# 984
	cmpw	cr7, r2, r5				# 984
	bne	cr7, beq_else.17940				# 984
	addi	r2, 0, 0
	b	beq_cont.17941				# 984
beq_else.17940:
	slwi	r2, r5, 2				# 985
	lwz	r6, 48(r3)				# 985
	lfsx	f0, r6, r2				# 985
	lwz	r2, 44(r3)				# 985
	slwi	r2, r2, 2				# 985
	lwz	r6, 40(r3)				# 985
	lfsx	f1, r6, r2				# 985
	fmul	f0, f0, f1				# 985
	slwi	r2, r5, 2				# 985
	lwz	r6, 32(r3)				# 985
	stfsx	f0, r6, r2				# 985
	addi	r2, 0, 1
beq_cont.17941:
	b	beq_cont.17939				# 1021
beq_else.17938:
	slwi	r8, r15, 2				# 993
	lfsx	f3, r18, r8				# 993
	stw	r11, 52(r3)				# 994
	stfs	f3, 56(r3)				# 994
	stw	r13, 40(r3)				# 994
	stfs	f2, 64(r3)				# 994
	stw	r14, 44(r3)				# 994
	stfs	f1, 72(r3)				# 994
	stw	r12, 80(r3)				# 994
	stfs	f0, 88(r3)				# 994
	stw	r18, 48(r3)				# 994
	mfspr	r31, 8				# 994
	fmr	f0, f3				# 994
	stw	r31, 96(r3)				# 994
	addi	r3, r3, 100				# 994
	bl	min_caml_fiszero				# 994
	addi	r3, r3, -100				# 994
	lwz	r31, 96(r3)				# 994
	mtspr	8, r31				# 994
	lwz	r5, 36(r3)				# 994
	cmpw	cr7, r2, r5				# 994
	bne	cr7, beq_else.17943				# 994
	lwz	r2, 12(r3)				# 997
	slwi	r6, r2, 2				# 997
	lwz	r7, 48(r3)				# 997
	lfsx	f0, r7, r6				# 997
	lfs	f1, 88(r3)				# 997
	fmul	f0, f0, f1				# 997
	lwz	r6, 80(r3)				# 997
	slwi	r6, r6, 2				# 997
	lfsx	f1, r7, r6				# 997
	lfs	f2, 72(r3)				# 997
	fmul	f1, f1, f2				# 997
	fadd	f0, f0, f1				# 997
	lwz	r6, 44(r3)				# 997
	slwi	r8, r6, 2				# 997
	lfsx	f1, r7, r8				# 997
	lfs	f2, 64(r3)				# 997
	fmul	f1, f1, f2				# 997
	fadd	f0, f0, f1				# 997
	slwi	r6, r6, 2				# 998
	lwz	r8, 40(r3)				# 998
	lfsx	f1, r8, r6				# 998
	stfs	f0, 96(r3)				# 999
	stfs	f1, 104(r3)				# 999
	mfspr	r31, 8				# 999
	stw	r31, 112(r3)				# 999
	addi	r3, r3, 116				# 999
	bl	min_caml_fsqr				# 999
	addi	r3, r3, -116				# 999
	lwz	r31, 112(r3)				# 999
	mtspr	8, r31				# 999
	lfs	f1, 104(r3)				# 999
	lfs	f2, 56(r3)				# 999
	fmul	f1, f2, f1				# 999
	fsub	f0, f0, f1				# 999
	stfs	f0, 112(r3)				# 1000
	mfspr	r31, 8				# 1000
	stw	r31, 120(r3)				# 1000
	addi	r3, r3, 124				# 1000
	bl	min_caml_fispos				# 1000
	addi	r3, r3, -124				# 1000
	lwz	r31, 120(r3)				# 1000
	mtspr	8, r31				# 1000
	lwz	r5, 36(r3)				# 1000
	cmpw	cr7, r2, r5				# 1000
	bne	cr7, beq_else.17945				# 1000
	addi	r2, 0, 0
	b	beq_cont.17946				# 1000
beq_else.17945:
	lwz	r2, 52(r3)				# 259
	lwz	r2, 24(r2)				# 259
	cmpw	cr7, r2, r5				# 1001
	bne	cr7, beq_else.17947				# 1001
	lfs	f0, 112(r3)				# 1004
	mfspr	r31, 8				# 1004
	stw	r31, 120(r3)				# 1004
	addi	r3, r3, 124				# 1004
	bl	min_caml_sqrt				# 1004
	addi	r3, r3, -124				# 1004
	lwz	r31, 120(r3)				# 1004
	mtspr	8, r31				# 1004
	lfs	f1, 96(r3)				# 1004
	fsub	f0, f1, f0				# 1004
	lwz	r2, 48(r3)				# 1004
	lfs	f1, 16(r2)				# 1004
	fmul	f0, f0, f1				# 1004
	lwz	r2, 36(r3)				# 1004
	slwi	r5, r2, 2				# 1004
	lwz	r6, 32(r3)				# 1004
	stfsx	f0, r6, r5				# 1004
	b	beq_cont.17948				# 1001
beq_else.17947:
	lfs	f0, 112(r3)				# 1002
	mfspr	r31, 8				# 1002
	stw	r31, 120(r3)				# 1002
	addi	r3, r3, 124				# 1002
	bl	min_caml_sqrt				# 1002
	addi	r3, r3, -124				# 1002
	lwz	r31, 120(r3)				# 1002
	mtspr	8, r31				# 1002
	lfs	f1, 96(r3)				# 1002
	fadd	f0, f1, f0				# 1002
	lwz	r2, 48(r3)				# 1002
	lfs	f1, 16(r2)				# 1002
	fmul	f0, f0, f1				# 1002
	lwz	r2, 36(r3)				# 1002
	slwi	r5, r2, 2				# 1002
	lwz	r6, 32(r3)				# 1002
	stfsx	f0, r6, r5				# 1002
beq_cont.17948:
	addi	r2, 0, 1
beq_cont.17946:
	b	beq_cont.17944				# 994
beq_else.17943:
	addi	r2, 0, 0
beq_cont.17944:
beq_cont.17939:
beq_cont.17937:
	lwz	r5, 36(r3)				# 1445
	cmpw	cr7, r2, r5				# 1445
	bne	cr7, beq_else.17949				# 1445
	b	beq_cont.17950				# 1445
beq_else.17949:
	slwi	r2, r5, 2				# 1446
	lwz	r6, 32(r3)				# 1446
	lfsx	f0, r6, r2				# 1446
	slwi	r2, r5, 2				# 1447
	lwz	r6, 28(r3)				# 1447
	lfsx	f1, r6, r2				# 1447
	mfspr	r31, 8				# 1447
	stw	r31, 120(r3)				# 1447
	addi	r3, r3, 124				# 1447
	bl	min_caml_fless				# 1447
	addi	r3, r3, -124				# 1447
	lwz	r31, 120(r3)				# 1447
	mtspr	8, r31				# 1447
	lwz	r5, 36(r3)				# 1447
	cmpw	cr7, r2, r5				# 1447
	bne	cr7, beq_else.17951				# 1447
	b	beq_cont.17952				# 1447
beq_else.17951:
	lwz	r2, 12(r3)				# 1448
	lwz	r5, 20(r3)				# 1448
	lwz	r6, 0(r3)				# 1448
	lwz	r30, 24(r3)				# 1448
	mfspr	r31, 8				# 1448
	stw	r31, 120(r3)				# 1448
	addi	r3, r3, 124				# 1448
	lwz	r31, 0(r30)				# 1448
	mtspr	9, r31				# 1448
	bctrl				# 1448
	addi	r3, r3, -124				# 1448
	lwz	r31, 120(r3)				# 1448
	mtspr	8, r31				# 1448
beq_cont.17952:
beq_cont.17950:
beq_cont.17935:
	lwz	r2, 12(r3)				# 1452
	lwz	r5, 16(r3)				# 1452
	add	r2, r5, r2				# 1452
	lwz	r5, 4(r3)				# 1452
	lwz	r6, 0(r3)				# 1452
	lwz	r30, 8(r3)				# 1452
	lwz	r29, 0(r30)				# 1452
	mtspr	9, r29
	bctr				# 1452
get_nvector_second.2782:
	lwz	r5, 20(r30)				# 1492
	lwz	r6, 16(r30)				# 1492
	lwz	r7, 12(r30)				# 1492
	lwz	r8, 8(r30)				# 1492
	lwz	r9, 4(r30)				# 1492
	slwi	r10, r8, 2				# 1493
	lfsx	f0, r6, r10				# 1493
	lwz	r10, 20(r2)				# 317
	slwi	r11, r8, 2				# 322
	lfsx	f1, r10, r11				# 322
	fsub	f0, f0, f1				# 1493
	slwi	r10, r9, 2				# 1494
	lfsx	f1, r6, r10				# 1494
	lwz	r10, 20(r2)				# 327
	slwi	r11, r9, 2				# 332
	lfsx	f2, r10, r11				# 332
	fsub	f1, f1, f2				# 1494
	slwi	r10, r7, 2				# 1495
	lfsx	f2, r6, r10				# 1495
	lwz	r6, 20(r2)				# 337
	slwi	r10, r7, 2				# 342
	lfsx	f3, r6, r10				# 342
	fsub	f2, f2, f3				# 1495
	lwz	r6, 16(r2)				# 277
	slwi	r10, r8, 2				# 282
	lfsx	f3, r6, r10				# 282
	fmul	f3, f0, f3				# 1497
	lwz	r6, 16(r2)				# 287
	slwi	r10, r9, 2				# 292
	lfsx	f4, r6, r10				# 292
	fmul	f4, f1, f4				# 1498
	lwz	r6, 16(r2)				# 297
	slwi	r10, r7, 2				# 302
	lfsx	f5, r6, r10				# 302
	fmul	f5, f2, f5				# 1499
	lwz	r6, 12(r2)				# 268
	stw	r7, 0(r3)				# 1501
	stw	r9, 4(r3)				# 1501
	stw	r5, 8(r3)				# 1501
	stw	r8, 12(r3)				# 1501
	stw	r2, 16(r3)				# 1501
	cmpw	cr7, r6, r8				# 1501
	bne	cr7, beq_else.17953				# 1501
	slwi	r6, r8, 2				# 1502
	stfsx	f3, r5, r6				# 1502
	slwi	r6, r9, 2				# 1503
	stfsx	f4, r5, r6				# 1503
	slwi	r6, r7, 2				# 1504
	stfsx	f5, r5, r6				# 1504
	b	beq_cont.17954				# 1501
beq_else.17953:
	lwz	r6, 36(r2)				# 417
	slwi	r10, r7, 2				# 422
	lfsx	f6, r6, r10				# 422
	fmul	f6, f1, f6				# 1506
	lwz	r6, 36(r2)				# 407
	slwi	r10, r9, 2				# 412
	lfsx	f7, r6, r10				# 412
	fmul	f7, f2, f7				# 1506
	fadd	f6, f6, f7				# 1506
	stfs	f5, 24(r3)				# 1506
	stfs	f1, 32(r3)				# 1506
	stfs	f4, 40(r3)				# 1506
	stfs	f2, 48(r3)				# 1506
	stfs	f0, 56(r3)				# 1506
	stfs	f3, 64(r3)				# 1506
	mfspr	r31, 8				# 1506
	fmr	f0, f6				# 1506
	stw	r31, 72(r3)				# 1506
	addi	r3, r3, 76				# 1506
	bl	min_caml_fhalf				# 1506
	addi	r3, r3, -76				# 1506
	lwz	r31, 72(r3)				# 1506
	mtspr	8, r31				# 1506
	lfs	f1, 64(r3)				# 1506
	fadd	f0, f1, f0				# 1506
	lwz	r2, 12(r3)				# 1506
	slwi	r5, r2, 2				# 1506
	lwz	r6, 8(r3)				# 1506
	stfsx	f0, r6, r5				# 1506
	lwz	r5, 16(r3)				# 417
	lwz	r7, 36(r5)				# 417
	lwz	r8, 0(r3)				# 422
	slwi	r9, r8, 2				# 422
	lfsx	f0, r7, r9				# 422
	lfs	f1, 56(r3)				# 1507
	fmul	f0, f1, f0				# 1507
	lwz	r7, 36(r5)				# 397
	slwi	r9, r2, 2				# 402
	lfsx	f2, r7, r9				# 402
	lfs	f3, 48(r3)				# 1507
	fmul	f2, f3, f2				# 1507
	fadd	f0, f0, f2				# 1507
	mfspr	r31, 8				# 1507
	stw	r31, 72(r3)				# 1507
	addi	r3, r3, 76				# 1507
	bl	min_caml_fhalf				# 1507
	addi	r3, r3, -76				# 1507
	lwz	r31, 72(r3)				# 1507
	mtspr	8, r31				# 1507
	lfs	f1, 40(r3)				# 1507
	fadd	f0, f1, f0				# 1507
	lwz	r2, 4(r3)				# 1507
	slwi	r5, r2, 2				# 1507
	lwz	r6, 8(r3)				# 1507
	stfsx	f0, r6, r5				# 1507
	lwz	r5, 16(r3)				# 407
	lwz	r7, 36(r5)				# 407
	slwi	r8, r2, 2				# 412
	lfsx	f0, r7, r8				# 412
	lfs	f1, 56(r3)				# 1508
	fmul	f0, f1, f0				# 1508
	lwz	r7, 36(r5)				# 397
	lwz	r8, 12(r3)				# 402
	slwi	r9, r8, 2				# 402
	lfsx	f1, r7, r9				# 402
	lfs	f2, 32(r3)				# 1508
	fmul	f1, f2, f1				# 1508
	fadd	f0, f0, f1				# 1508
	mfspr	r31, 8				# 1508
	stw	r31, 72(r3)				# 1508
	addi	r3, r3, 76				# 1508
	bl	min_caml_fhalf				# 1508
	addi	r3, r3, -76				# 1508
	lwz	r31, 72(r3)				# 1508
	mtspr	8, r31				# 1508
	lfs	f1, 24(r3)				# 1508
	fadd	f0, f1, f0				# 1508
	lwz	r2, 0(r3)				# 1508
	slwi	r5, r2, 2				# 1508
	lwz	r6, 8(r3)				# 1508
	stfsx	f0, r6, r5				# 1508
beq_cont.17954:
	lwz	r2, 16(r3)				# 259
	lwz	r2, 24(r2)				# 259
	lwz	r5, 12(r3)				# 173
	slwi	r6, r5, 2				# 173
	lwz	r7, 8(r3)				# 173
	lfsx	f0, r7, r6				# 173
	stw	r2, 72(r3)				# 173
	mfspr	r31, 8				# 173
	stw	r31, 76(r3)				# 173
	addi	r3, r3, 80				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -80				# 173
	lwz	r31, 76(r3)				# 173
	mtspr	8, r31				# 173
	lwz	r2, 4(r3)				# 173
	slwi	r5, r2, 2				# 173
	lwz	r6, 8(r3)				# 173
	lfsx	f1, r6, r5				# 173
	stfs	f0, 80(r3)				# 173
	mfspr	r31, 8				# 173
	fmr	f0, f1				# 173
	stw	r31, 88(r3)				# 173
	addi	r3, r3, 92				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -92				# 173
	lwz	r31, 88(r3)				# 173
	mtspr	8, r31				# 173
	lfs	f1, 80(r3)				# 173
	fadd	f0, f1, f0				# 173
	lwz	r2, 0(r3)				# 173
	slwi	r5, r2, 2				# 173
	lwz	r6, 8(r3)				# 173
	lfsx	f1, r6, r5				# 173
	stfs	f0, 88(r3)				# 173
	mfspr	r31, 8				# 173
	fmr	f0, f1				# 173
	stw	r31, 96(r3)				# 173
	addi	r3, r3, 100				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -100				# 173
	lwz	r31, 96(r3)				# 173
	mtspr	8, r31				# 173
	lfs	f1, 88(r3)				# 173
	fadd	f0, f1, f0				# 173
	mfspr	r31, 8				# 173
	stw	r31, 96(r3)				# 173
	addi	r3, r3, 100				# 173
	bl	min_caml_sqrt				# 173
	addi	r3, r3, -100				# 173
	lwz	r31, 96(r3)				# 173
	mtspr	8, r31				# 173
	stfs	f0, 96(r3)				# 174
	mfspr	r31, 8				# 174
	stw	r31, 104(r3)				# 174
	addi	r3, r3, 108				# 174
	bl	min_caml_fiszero				# 174
	addi	r3, r3, -108				# 174
	lwz	r31, 104(r3)				# 174
	mtspr	8, r31				# 174
	lwz	r5, 12(r3)				# 174
	cmpw	cr7, r2, r5				# 174
	bne	cr7, beq_else.17957				# 174
	lwz	r2, 72(r3)				# 174
	cmpw	cr7, r2, r5				# 174
	bne	cr7, beq_else.17959				# 174
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 174
	lfs	f1, 96(r3)				# 174
	fdiv	f0, f0, f1				# 174
	b	beq_cont.17960				# 174
beq_else.17959:
	lis	r31, ha16(l.11650)
	addi	r31, r31, lo16(l.11650)
	lfs	f0, 0(r31)				# 174
	lfs	f1, 96(r3)				# 174
	fdiv	f0, f0, f1				# 174
beq_cont.17960:
	b	beq_cont.17958				# 174
beq_else.17957:
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 174
beq_cont.17958:
	slwi	r2, r5, 2				# 175
	lwz	r6, 8(r3)				# 175
	lfsx	f1, r6, r2				# 175
	fmul	f1, f1, f0				# 175
	slwi	r2, r5, 2				# 175
	stfsx	f1, r6, r2				# 175
	lwz	r2, 4(r3)				# 176
	slwi	r5, r2, 2				# 176
	lfsx	f1, r6, r5				# 176
	fmul	f1, f1, f0				# 176
	slwi	r2, r2, 2				# 176
	stfsx	f1, r6, r2				# 176
	lwz	r2, 0(r3)				# 177
	slwi	r5, r2, 2				# 177
	lfsx	f1, r6, r5				# 177
	fmul	f0, f1, f0				# 177
	slwi	r2, r2, 2				# 177
	stfsx	f0, r6, r2				# 177
	blr
get_nvector.2784:
	lwz	r6, 28(r30)				# 1514
	lwz	r7, 24(r30)				# 1514
	lwz	r8, 20(r30)				# 1514
	lwz	r9, 16(r30)				# 1514
	lwz	r10, 12(r30)				# 1514
	lwz	r11, 8(r30)				# 1514
	lfs	f0, 4(r30)				# 1514
	lwz	r12, 4(r2)				# 239
	cmpw	cr7, r12, r11				# 1516
	bne	cr7, beq_else.17962				# 1516
	slwi	r2, r10, 2				# 1477
	lwzx	r2, r7, r2				# 1477
	slwi	r7, r10, 2				# 141
	stfsx	f0, r6, r7				# 141
	slwi	r7, r11, 2				# 142
	stfsx	f0, r6, r7				# 142
	slwi	r7, r9, 2				# 143
	stfsx	f0, r6, r7				# 143
	sub	r2, r2, r11				# 1480
	slwi	r7, r2, 2				# 1480
	lfsx	f0, r5, r7				# 1480
	stw	r6, 0(r3)				# 112
	stw	r2, 4(r3)				# 112
	stfs	f0, 8(r3)				# 112
	stw	r10, 16(r3)				# 112
	mfspr	r31, 8				# 112
	stw	r31, 20(r3)				# 112
	addi	r3, r3, 24				# 112
	bl	min_caml_fiszero				# 112
	addi	r3, r3, -24				# 112
	lwz	r31, 20(r3)				# 112
	mtspr	8, r31				# 112
	lwz	r5, 16(r3)				# 112
	cmpw	cr7, r2, r5				# 112
	bne	cr7, beq_else.17963				# 112
	lfs	f0, 8(r3)				# 113
	mfspr	r31, 8				# 113
	stw	r31, 20(r3)				# 113
	addi	r3, r3, 24				# 113
	bl	min_caml_fispos				# 113
	addi	r3, r3, -24				# 113
	lwz	r31, 20(r3)				# 113
	mtspr	8, r31				# 113
	lwz	r5, 16(r3)				# 113
	cmpw	cr7, r2, r5				# 113
	bne	cr7, beq_else.17965				# 113
	lis	r31, ha16(l.11650)
	addi	r31, r31, lo16(l.11650)
	lfs	f0, 0(r31)				# 114
	b	beq_cont.17966				# 113
beq_else.17965:
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 113
beq_cont.17966:
	b	beq_cont.17964				# 112
beq_else.17963:
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 112
beq_cont.17964:
	mfspr	r31, 8				# 1480
	stw	r31, 20(r3)				# 1480
	addi	r3, r3, 24				# 1480
	bl	min_caml_fneg				# 1480
	addi	r3, r3, -24				# 1480
	lwz	r31, 20(r3)				# 1480
	mtspr	8, r31				# 1480
	lwz	r2, 4(r3)				# 1480
	slwi	r2, r2, 2				# 1480
	lwz	r5, 0(r3)				# 1480
	stfsx	f0, r5, r2				# 1480
	blr
beq_else.17962:
	cmpw	cr7, r12, r9				# 1518
	bne	cr7, beq_else.17968				# 1518
	lwz	r5, 16(r2)				# 277
	slwi	r7, r10, 2				# 282
	lfsx	f0, r5, r7				# 282
	stw	r9, 20(r3)				# 1486
	stw	r11, 24(r3)				# 1486
	stw	r2, 28(r3)				# 1486
	stw	r6, 0(r3)				# 1486
	stw	r10, 16(r3)				# 1486
	mfspr	r31, 8				# 1486
	stw	r31, 32(r3)				# 1486
	addi	r3, r3, 36				# 1486
	bl	min_caml_fneg				# 1486
	addi	r3, r3, -36				# 1486
	lwz	r31, 32(r3)				# 1486
	mtspr	8, r31				# 1486
	lwz	r2, 16(r3)				# 1486
	slwi	r2, r2, 2				# 1486
	lwz	r5, 0(r3)				# 1486
	stfsx	f0, r5, r2				# 1486
	lwz	r2, 28(r3)				# 287
	lwz	r6, 16(r2)				# 287
	lwz	r7, 24(r3)				# 292
	slwi	r8, r7, 2				# 292
	lfsx	f0, r6, r8				# 292
	mfspr	r31, 8				# 1487
	stw	r31, 32(r3)				# 1487
	addi	r3, r3, 36				# 1487
	bl	min_caml_fneg				# 1487
	addi	r3, r3, -36				# 1487
	lwz	r31, 32(r3)				# 1487
	mtspr	8, r31				# 1487
	lwz	r2, 24(r3)				# 1487
	slwi	r2, r2, 2				# 1487
	lwz	r5, 0(r3)				# 1487
	stfsx	f0, r5, r2				# 1487
	lwz	r2, 28(r3)				# 297
	lwz	r2, 16(r2)				# 297
	lwz	r6, 20(r3)				# 302
	slwi	r7, r6, 2				# 302
	lfsx	f0, r2, r7				# 302
	mfspr	r31, 8				# 1488
	stw	r31, 32(r3)				# 1488
	addi	r3, r3, 36				# 1488
	bl	min_caml_fneg				# 1488
	addi	r3, r3, -36				# 1488
	lwz	r31, 32(r3)				# 1488
	mtspr	8, r31				# 1488
	lwz	r2, 20(r3)				# 1488
	slwi	r2, r2, 2				# 1488
	lwz	r5, 0(r3)				# 1488
	stfsx	f0, r5, r2				# 1488
	blr
beq_else.17968:
	slwi	r5, r10, 2				# 1493
	lfsx	f0, r8, r5				# 1493
	lwz	r5, 20(r2)				# 317
	slwi	r7, r10, 2				# 322
	lfsx	f1, r5, r7				# 322
	fsub	f0, f0, f1				# 1493
	slwi	r5, r11, 2				# 1494
	lfsx	f1, r8, r5				# 1494
	lwz	r5, 20(r2)				# 327
	slwi	r7, r11, 2				# 332
	lfsx	f2, r5, r7				# 332
	fsub	f1, f1, f2				# 1494
	slwi	r5, r9, 2				# 1495
	lfsx	f2, r8, r5				# 1495
	lwz	r5, 20(r2)				# 337
	slwi	r7, r9, 2				# 342
	lfsx	f3, r5, r7				# 342
	fsub	f2, f2, f3				# 1495
	lwz	r5, 16(r2)				# 277
	slwi	r7, r10, 2				# 282
	lfsx	f3, r5, r7				# 282
	fmul	f3, f0, f3				# 1497
	lwz	r5, 16(r2)				# 287
	slwi	r7, r11, 2				# 292
	lfsx	f4, r5, r7				# 292
	fmul	f4, f1, f4				# 1498
	lwz	r5, 16(r2)				# 297
	slwi	r7, r9, 2				# 302
	lfsx	f5, r5, r7				# 302
	fmul	f5, f2, f5				# 1499
	lwz	r5, 12(r2)				# 268
	stw	r9, 20(r3)				# 1501
	stw	r11, 24(r3)				# 1501
	stw	r10, 16(r3)				# 1501
	stw	r2, 28(r3)				# 1501
	cmpw	cr7, r5, r10				# 1501
	bne	cr7, beq_else.17970				# 1501
	slwi	r5, r10, 2				# 1502
	stfsx	f3, r6, r5				# 1502
	slwi	r5, r11, 2				# 1503
	stfsx	f4, r6, r5				# 1503
	slwi	r5, r9, 2				# 1504
	stfsx	f5, r6, r5				# 1504
	b	beq_cont.17971				# 1501
beq_else.17970:
	lwz	r5, 36(r2)				# 417
	slwi	r7, r9, 2				# 422
	lfsx	f6, r5, r7				# 422
	fmul	f6, f1, f6				# 1506
	lwz	r5, 36(r2)				# 407
	slwi	r7, r11, 2				# 412
	lfsx	f7, r5, r7				# 412
	fmul	f7, f2, f7				# 1506
	fadd	f6, f6, f7				# 1506
	stfs	f5, 32(r3)				# 1506
	stfs	f1, 40(r3)				# 1506
	stfs	f4, 48(r3)				# 1506
	stfs	f2, 56(r3)				# 1506
	stfs	f0, 64(r3)				# 1506
	stw	r6, 0(r3)				# 1506
	stfs	f3, 72(r3)				# 1506
	mfspr	r31, 8				# 1506
	fmr	f0, f6				# 1506
	stw	r31, 80(r3)				# 1506
	addi	r3, r3, 84				# 1506
	bl	min_caml_fhalf				# 1506
	addi	r3, r3, -84				# 1506
	lwz	r31, 80(r3)				# 1506
	mtspr	8, r31				# 1506
	lfs	f1, 72(r3)				# 1506
	fadd	f0, f1, f0				# 1506
	lwz	r2, 16(r3)				# 1506
	slwi	r5, r2, 2				# 1506
	lwz	r6, 0(r3)				# 1506
	stfsx	f0, r6, r5				# 1506
	lwz	r5, 28(r3)				# 417
	lwz	r7, 36(r5)				# 417
	lwz	r8, 20(r3)				# 422
	slwi	r9, r8, 2				# 422
	lfsx	f0, r7, r9				# 422
	lfs	f1, 64(r3)				# 1507
	fmul	f0, f1, f0				# 1507
	lwz	r7, 36(r5)				# 397
	slwi	r9, r2, 2				# 402
	lfsx	f2, r7, r9				# 402
	lfs	f3, 56(r3)				# 1507
	fmul	f2, f3, f2				# 1507
	fadd	f0, f0, f2				# 1507
	mfspr	r31, 8				# 1507
	stw	r31, 80(r3)				# 1507
	addi	r3, r3, 84				# 1507
	bl	min_caml_fhalf				# 1507
	addi	r3, r3, -84				# 1507
	lwz	r31, 80(r3)				# 1507
	mtspr	8, r31				# 1507
	lfs	f1, 48(r3)				# 1507
	fadd	f0, f1, f0				# 1507
	lwz	r2, 24(r3)				# 1507
	slwi	r5, r2, 2				# 1507
	lwz	r6, 0(r3)				# 1507
	stfsx	f0, r6, r5				# 1507
	lwz	r5, 28(r3)				# 407
	lwz	r7, 36(r5)				# 407
	slwi	r8, r2, 2				# 412
	lfsx	f0, r7, r8				# 412
	lfs	f1, 64(r3)				# 1508
	fmul	f0, f1, f0				# 1508
	lwz	r7, 36(r5)				# 397
	lwz	r8, 16(r3)				# 402
	slwi	r9, r8, 2				# 402
	lfsx	f1, r7, r9				# 402
	lfs	f2, 40(r3)				# 1508
	fmul	f1, f2, f1				# 1508
	fadd	f0, f0, f1				# 1508
	mfspr	r31, 8				# 1508
	stw	r31, 80(r3)				# 1508
	addi	r3, r3, 84				# 1508
	bl	min_caml_fhalf				# 1508
	addi	r3, r3, -84				# 1508
	lwz	r31, 80(r3)				# 1508
	mtspr	8, r31				# 1508
	lfs	f1, 32(r3)				# 1508
	fadd	f0, f1, f0				# 1508
	lwz	r2, 20(r3)				# 1508
	slwi	r5, r2, 2				# 1508
	lwz	r6, 0(r3)				# 1508
	stfsx	f0, r6, r5				# 1508
beq_cont.17971:
	lwz	r2, 28(r3)				# 259
	lwz	r2, 24(r2)				# 259
	lwz	r5, 16(r3)				# 173
	slwi	r7, r5, 2				# 173
	lfsx	f0, r6, r7				# 173
	stw	r2, 80(r3)				# 173
	stw	r6, 0(r3)				# 173
	mfspr	r31, 8				# 173
	stw	r31, 84(r3)				# 173
	addi	r3, r3, 88				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -88				# 173
	lwz	r31, 84(r3)				# 173
	mtspr	8, r31				# 173
	lwz	r2, 24(r3)				# 173
	slwi	r5, r2, 2				# 173
	lwz	r6, 0(r3)				# 173
	lfsx	f1, r6, r5				# 173
	stfs	f0, 88(r3)				# 173
	mfspr	r31, 8				# 173
	fmr	f0, f1				# 173
	stw	r31, 96(r3)				# 173
	addi	r3, r3, 100				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -100				# 173
	lwz	r31, 96(r3)				# 173
	mtspr	8, r31				# 173
	lfs	f1, 88(r3)				# 173
	fadd	f0, f1, f0				# 173
	lwz	r2, 20(r3)				# 173
	slwi	r5, r2, 2				# 173
	lwz	r6, 0(r3)				# 173
	lfsx	f1, r6, r5				# 173
	stfs	f0, 96(r3)				# 173
	mfspr	r31, 8				# 173
	fmr	f0, f1				# 173
	stw	r31, 104(r3)				# 173
	addi	r3, r3, 108				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -108				# 173
	lwz	r31, 104(r3)				# 173
	mtspr	8, r31				# 173
	lfs	f1, 96(r3)				# 173
	fadd	f0, f1, f0				# 173
	mfspr	r31, 8				# 173
	stw	r31, 104(r3)				# 173
	addi	r3, r3, 108				# 173
	bl	min_caml_sqrt				# 173
	addi	r3, r3, -108				# 173
	lwz	r31, 104(r3)				# 173
	mtspr	8, r31				# 173
	stfs	f0, 104(r3)				# 174
	mfspr	r31, 8				# 174
	stw	r31, 112(r3)				# 174
	addi	r3, r3, 116				# 174
	bl	min_caml_fiszero				# 174
	addi	r3, r3, -116				# 174
	lwz	r31, 112(r3)				# 174
	mtspr	8, r31				# 174
	lwz	r5, 16(r3)				# 174
	cmpw	cr7, r2, r5				# 174
	bne	cr7, beq_else.17973				# 174
	lwz	r2, 80(r3)				# 174
	cmpw	cr7, r2, r5				# 174
	bne	cr7, beq_else.17975				# 174
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 174
	lfs	f1, 104(r3)				# 174
	fdiv	f0, f0, f1				# 174
	b	beq_cont.17976				# 174
beq_else.17975:
	lis	r31, ha16(l.11650)
	addi	r31, r31, lo16(l.11650)
	lfs	f0, 0(r31)				# 174
	lfs	f1, 104(r3)				# 174
	fdiv	f0, f0, f1				# 174
beq_cont.17976:
	b	beq_cont.17974				# 174
beq_else.17973:
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 174
beq_cont.17974:
	slwi	r2, r5, 2				# 175
	lwz	r6, 0(r3)				# 175
	lfsx	f1, r6, r2				# 175
	fmul	f1, f1, f0				# 175
	slwi	r2, r5, 2				# 175
	stfsx	f1, r6, r2				# 175
	lwz	r2, 24(r3)				# 176
	slwi	r5, r2, 2				# 176
	lfsx	f1, r6, r5				# 176
	fmul	f1, f1, f0				# 176
	slwi	r2, r2, 2				# 176
	stfsx	f1, r6, r2				# 176
	lwz	r2, 20(r3)				# 177
	slwi	r5, r2, 2				# 177
	lfsx	f1, r6, r5				# 177
	fmul	f0, f1, f0				# 177
	slwi	r2, r2, 2				# 177
	stfsx	f0, r6, r2				# 177
	blr
utexture.2787:
	lwz	r6, 24(r30)				# 1528
	lwz	r7, 20(r30)				# 1528
	lwz	r8, 16(r30)				# 1528
	lwz	r9, 12(r30)				# 1528
	lwz	r10, 8(r30)				# 1528
	lfs	f0, 4(r30)				# 1528
	lwz	r11, 0(r2)				# 229
	lwz	r12, 32(r2)				# 367
	slwi	r13, r9, 2				# 372
	lfsx	f1, r12, r13				# 372
	slwi	r12, r9, 2				# 1531
	stfsx	f1, r6, r12				# 1531
	lwz	r12, 32(r2)				# 377
	slwi	r13, r10, 2				# 382
	lfsx	f1, r12, r13				# 382
	slwi	r12, r10, 2				# 1532
	stfsx	f1, r6, r12				# 1532
	lwz	r12, 32(r2)				# 387
	slwi	r13, r7, 2				# 392
	lfsx	f1, r12, r13				# 392
	slwi	r12, r7, 2				# 1533
	stfsx	f1, r6, r12				# 1533
	cmpw	cr7, r11, r10				# 1535
	bne	cr7, beq_else.17978				# 1535
	slwi	r8, r9, 2				# 1538
	lfsx	f0, r5, r8				# 1538
	lwz	r8, 20(r2)				# 317
	slwi	r11, r9, 2				# 322
	lfsx	f1, r8, r11				# 322
	fsub	f0, f0, f1				# 1538
	lis	r31, ha16(l.12172)
	addi	r31, r31, lo16(l.12172)
	lfs	f1, 0(r31)				# 1540
	fmul	f2, f0, f1				# 1540
	stw	r6, 0(r3)				# 1540
	stw	r10, 4(r3)				# 1540
	stw	r9, 8(r3)				# 1540
	stfs	f1, 16(r3)				# 1540
	stw	r2, 24(r3)				# 1540
	stw	r5, 28(r3)				# 1540
	stw	r7, 32(r3)				# 1540
	stfs	f0, 40(r3)				# 1540
	mfspr	r31, 8				# 1540
	fmr	f0, f2				# 1540
	stw	r31, 48(r3)				# 1540
	addi	r3, r3, 52				# 1540
	bl	min_caml_floor				# 1540
	addi	r3, r3, -52				# 1540
	lwz	r31, 48(r3)				# 1540
	mtspr	8, r31				# 1540
	lis	r31, ha16(l.12173)
	addi	r31, r31, lo16(l.12173)
	lfs	f1, 0(r31)				# 1540
	fmul	f0, f0, f1				# 1540
	lfs	f2, 40(r3)				# 1541
	fsub	f0, f2, f0				# 1541
	lis	r31, ha16(l.12163)
	addi	r31, r31, lo16(l.12163)
	lfs	f2, 0(r31)				# 1541
	stfs	f2, 48(r3)				# 1541
	stfs	f1, 56(r3)				# 1541
	mfspr	r31, 8				# 1541
	fmr	f1, f2				# 1541
	stw	r31, 64(r3)				# 1541
	addi	r3, r3, 68				# 1541
	bl	min_caml_fless				# 1541
	addi	r3, r3, -68				# 1541
	lwz	r31, 64(r3)				# 1541
	mtspr	8, r31				# 1541
	lwz	r5, 32(r3)				# 1543
	slwi	r6, r5, 2				# 1543
	lwz	r7, 28(r3)				# 1543
	lfsx	f0, r7, r6				# 1543
	lwz	r6, 24(r3)				# 337
	lwz	r6, 20(r6)				# 337
	slwi	r5, r5, 2				# 342
	lfsx	f1, r6, r5				# 342
	fsub	f0, f0, f1				# 1543
	lfs	f1, 16(r3)				# 1545
	fmul	f1, f0, f1				# 1545
	stw	r2, 64(r3)				# 1545
	stfs	f0, 72(r3)				# 1545
	mfspr	r31, 8				# 1545
	fmr	f0, f1				# 1545
	stw	r31, 80(r3)				# 1545
	addi	r3, r3, 84				# 1545
	bl	min_caml_floor				# 1545
	addi	r3, r3, -84				# 1545
	lwz	r31, 80(r3)				# 1545
	mtspr	8, r31				# 1545
	lfs	f1, 56(r3)				# 1545
	fmul	f0, f0, f1				# 1545
	lfs	f1, 72(r3)				# 1546
	fsub	f0, f1, f0				# 1546
	lfs	f1, 48(r3)				# 1546
	mfspr	r31, 8				# 1546
	stw	r31, 80(r3)				# 1546
	addi	r3, r3, 84				# 1546
	bl	min_caml_fless				# 1546
	addi	r3, r3, -84				# 1546
	lwz	r31, 80(r3)				# 1546
	mtspr	8, r31				# 1546
	lwz	r5, 8(r3)				# 1549
	lwz	r6, 64(r3)				# 1549
	cmpw	cr7, r6, r5				# 1549
	bne	cr7, beq_else.17982				# 1549
	cmpw	cr7, r2, r5				# 1551
	bne	cr7, beq_else.17984				# 1551
	lis	r31, ha16(l.12176)
	addi	r31, r31, lo16(l.12176)
	lfs	f0, 0(r31)				# 1551
	b	beq_cont.17985				# 1551
beq_else.17984:
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 1551
beq_cont.17985:
	b	beq_cont.17983				# 1549
beq_else.17982:
	cmpw	cr7, r2, r5				# 1550
	bne	cr7, beq_else.17986				# 1550
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 1550
	b	beq_cont.17987				# 1550
beq_else.17986:
	lis	r31, ha16(l.12176)
	addi	r31, r31, lo16(l.12176)
	lfs	f0, 0(r31)				# 1550
beq_cont.17987:
beq_cont.17983:
	lwz	r2, 4(r3)				# 1548
	slwi	r2, r2, 2				# 1548
	lwz	r5, 0(r3)				# 1548
	stfsx	f0, r5, r2				# 1548
	blr
beq_else.17978:
	cmpw	cr7, r11, r7				# 1553
	bne	cr7, beq_else.17989				# 1553
	slwi	r2, r10, 2				# 1556
	lfsx	f1, r5, r2				# 1556
	lis	r31, ha16(l.12167)
	addi	r31, r31, lo16(l.12167)
	lfs	f2, 0(r31)				# 1556
	fmul	f1, f1, f2				# 1556
	stw	r10, 4(r3)				# 1556
	stw	r6, 0(r3)				# 1556
	stw	r9, 8(r3)				# 1556
	stfs	f0, 80(r3)				# 1556
	mfspr	r31, 8				# 1556
	fmr	f0, f1				# 1556
	stw	r31, 88(r3)				# 1556
	addi	r3, r3, 92				# 1556
	bl	min_caml_sin				# 1556
	addi	r3, r3, -92				# 1556
	lwz	r31, 88(r3)				# 1556
	mtspr	8, r31				# 1556
	mfspr	r31, 8				# 1556
	stw	r31, 88(r3)				# 1556
	addi	r3, r3, 92				# 1556
	bl	min_caml_fsqr				# 1556
	addi	r3, r3, -92				# 1556
	lwz	r31, 88(r3)				# 1556
	mtspr	8, r31				# 1556
	lfs	f1, 80(r3)				# 1557
	fmul	f2, f1, f0				# 1557
	lwz	r2, 8(r3)				# 1557
	slwi	r2, r2, 2				# 1557
	lwz	r5, 0(r3)				# 1557
	stfsx	f2, r5, r2				# 1557
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f2, 0(r31)				# 1558
	fsub	f0, f2, f0				# 1558
	fmul	f0, f1, f0				# 1558
	lwz	r2, 4(r3)				# 1558
	slwi	r2, r2, 2				# 1558
	stfsx	f0, r5, r2				# 1558
	blr
beq_else.17989:
	cmpw	cr7, r11, r8				# 1560
	bne	cr7, beq_else.17991				# 1560
	slwi	r8, r9, 2				# 1563
	lfsx	f1, r5, r8				# 1563
	lwz	r8, 20(r2)				# 317
	slwi	r9, r9, 2				# 322
	lfsx	f2, r8, r9				# 322
	fsub	f1, f1, f2				# 1563
	slwi	r8, r7, 2				# 1564
	lfsx	f2, r5, r8				# 1564
	lwz	r2, 20(r2)				# 337
	slwi	r5, r7, 2				# 342
	lfsx	f3, r2, r5				# 342
	fsub	f2, f2, f3				# 1564
	stw	r7, 32(r3)				# 1565
	stw	r6, 0(r3)				# 1565
	stw	r10, 4(r3)				# 1565
	stfs	f0, 80(r3)				# 1565
	stfs	f2, 88(r3)				# 1565
	mfspr	r31, 8				# 1565
	fmr	f0, f1				# 1565
	stw	r31, 96(r3)				# 1565
	addi	r3, r3, 100				# 1565
	bl	min_caml_fsqr				# 1565
	addi	r3, r3, -100				# 1565
	lwz	r31, 96(r3)				# 1565
	mtspr	8, r31				# 1565
	lfs	f1, 88(r3)				# 1565
	stfs	f0, 96(r3)				# 1565
	mfspr	r31, 8				# 1565
	fmr	f0, f1				# 1565
	stw	r31, 104(r3)				# 1565
	addi	r3, r3, 108				# 1565
	bl	min_caml_fsqr				# 1565
	addi	r3, r3, -108				# 1565
	lwz	r31, 104(r3)				# 1565
	mtspr	8, r31				# 1565
	lfs	f1, 96(r3)				# 1565
	fadd	f0, f1, f0				# 1565
	mfspr	r31, 8				# 1565
	stw	r31, 104(r3)				# 1565
	addi	r3, r3, 108				# 1565
	bl	min_caml_sqrt				# 1565
	addi	r3, r3, -108				# 1565
	lwz	r31, 104(r3)				# 1565
	mtspr	8, r31				# 1565
	lis	r31, ha16(l.12163)
	addi	r31, r31, lo16(l.12163)
	lfs	f1, 0(r31)				# 1565
	fdiv	f0, f0, f1				# 1565
	stfs	f0, 104(r3)				# 1566
	mfspr	r31, 8				# 1566
	stw	r31, 112(r3)				# 1566
	addi	r3, r3, 116				# 1566
	bl	min_caml_floor				# 1566
	addi	r3, r3, -116				# 1566
	lwz	r31, 112(r3)				# 1566
	mtspr	8, r31				# 1566
	lfs	f1, 104(r3)				# 1566
	fsub	f0, f1, f0				# 1566
	lis	r31, ha16(l.12151)
	addi	r31, r31, lo16(l.12151)
	lfs	f1, 0(r31)				# 1566
	fmul	f0, f0, f1				# 1566
	mfspr	r31, 8				# 1567
	stw	r31, 112(r3)				# 1567
	addi	r3, r3, 116				# 1567
	bl	min_caml_cos				# 1567
	addi	r3, r3, -116				# 1567
	lwz	r31, 112(r3)				# 1567
	mtspr	8, r31				# 1567
	mfspr	r31, 8				# 1567
	stw	r31, 112(r3)				# 1567
	addi	r3, r3, 116				# 1567
	bl	min_caml_fsqr				# 1567
	addi	r3, r3, -116				# 1567
	lwz	r31, 112(r3)				# 1567
	mtspr	8, r31				# 1567
	lfs	f1, 80(r3)				# 1568
	fmul	f2, f0, f1				# 1568
	lwz	r2, 4(r3)				# 1568
	slwi	r2, r2, 2				# 1568
	lwz	r5, 0(r3)				# 1568
	stfsx	f2, r5, r2				# 1568
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f2, 0(r31)				# 1569
	fsub	f0, f2, f0				# 1569
	fmul	f0, f0, f1				# 1569
	lwz	r2, 32(r3)				# 1569
	slwi	r2, r2, 2				# 1569
	stfsx	f0, r5, r2				# 1569
	blr
beq_else.17991:
	cmpwi	cr7, r11, 4				# 1571
	bne	cr7, beq_else.17993				# 1571
	slwi	r8, r9, 2				# 1573
	lfsx	f1, r5, r8				# 1573
	lwz	r8, 20(r2)				# 317
	slwi	r11, r9, 2				# 322
	lfsx	f2, r8, r11				# 322
	fsub	f1, f1, f2				# 1573
	lwz	r8, 16(r2)				# 277
	slwi	r11, r9, 2				# 282
	lfsx	f2, r8, r11				# 282
	stw	r6, 0(r3)				# 1573
	stfs	f0, 80(r3)				# 1573
	stw	r10, 4(r3)				# 1573
	stw	r9, 8(r3)				# 1573
	stw	r2, 24(r3)				# 1573
	stw	r5, 28(r3)				# 1573
	stw	r7, 32(r3)				# 1573
	stfs	f1, 112(r3)				# 1573
	mfspr	r31, 8				# 1573
	fmr	f0, f2				# 1573
	stw	r31, 120(r3)				# 1573
	addi	r3, r3, 124				# 1573
	bl	min_caml_sqrt				# 1573
	addi	r3, r3, -124				# 1573
	lwz	r31, 120(r3)				# 1573
	mtspr	8, r31				# 1573
	lfs	f1, 112(r3)				# 1573
	fmul	f0, f1, f0				# 1573
	lwz	r2, 32(r3)				# 1574
	slwi	r5, r2, 2				# 1574
	lwz	r6, 28(r3)				# 1574
	lfsx	f1, r6, r5				# 1574
	lwz	r5, 24(r3)				# 337
	lwz	r7, 20(r5)				# 337
	slwi	r8, r2, 2				# 342
	lfsx	f2, r7, r8				# 342
	fsub	f1, f1, f2				# 1574
	lwz	r7, 16(r5)				# 297
	slwi	r8, r2, 2				# 302
	lfsx	f2, r7, r8				# 302
	stfs	f0, 120(r3)				# 1574
	stfs	f1, 128(r3)				# 1574
	mfspr	r31, 8				# 1574
	fmr	f0, f2				# 1574
	stw	r31, 136(r3)				# 1574
	addi	r3, r3, 140				# 1574
	bl	min_caml_sqrt				# 1574
	addi	r3, r3, -140				# 1574
	lwz	r31, 136(r3)				# 1574
	mtspr	8, r31				# 1574
	lfs	f1, 128(r3)				# 1574
	fmul	f0, f1, f0				# 1574
	lfs	f1, 120(r3)				# 1575
	stfs	f0, 136(r3)				# 1575
	mfspr	r31, 8				# 1575
	fmr	f0, f1				# 1575
	stw	r31, 144(r3)				# 1575
	addi	r3, r3, 148				# 1575
	bl	min_caml_fsqr				# 1575
	addi	r3, r3, -148				# 1575
	lwz	r31, 144(r3)				# 1575
	mtspr	8, r31				# 1575
	lfs	f1, 136(r3)				# 1575
	stfs	f0, 144(r3)				# 1575
	mfspr	r31, 8				# 1575
	fmr	f0, f1				# 1575
	stw	r31, 152(r3)				# 1575
	addi	r3, r3, 156				# 1575
	bl	min_caml_fsqr				# 1575
	addi	r3, r3, -156				# 1575
	lwz	r31, 152(r3)				# 1575
	mtspr	8, r31				# 1575
	lfs	f1, 144(r3)				# 1575
	fadd	f0, f1, f0				# 1575
	lfs	f1, 120(r3)				# 1577
	stfs	f0, 152(r3)				# 1577
	mfspr	r31, 8				# 1577
	fmr	f0, f1				# 1577
	stw	r31, 160(r3)				# 1577
	addi	r3, r3, 164				# 1577
	bl	min_caml_fabs				# 1577
	addi	r3, r3, -164				# 1577
	lwz	r31, 160(r3)				# 1577
	mtspr	8, r31				# 1577
	lis	r31, ha16(l.12148)
	addi	r31, r31, lo16(l.12148)
	lfs	f1, 0(r31)				# 1577
	stfs	f1, 160(r3)				# 1577
	mfspr	r31, 8				# 1577
	stw	r31, 168(r3)				# 1577
	addi	r3, r3, 172				# 1577
	bl	min_caml_fless				# 1577
	addi	r3, r3, -172				# 1577
	lwz	r31, 168(r3)				# 1577
	mtspr	8, r31				# 1577
	lwz	r5, 8(r3)				# 1577
	cmpw	cr7, r2, r5				# 1577
	bne	cr7, beq_else.17994				# 1577
	lfs	f0, 120(r3)				# 1580
	lfs	f1, 136(r3)				# 1580
	fdiv	f0, f1, f0				# 1580
	mfspr	r31, 8				# 1580
	stw	r31, 168(r3)				# 1580
	addi	r3, r3, 172				# 1580
	bl	min_caml_fabs				# 1580
	addi	r3, r3, -172				# 1580
	lwz	r31, 168(r3)				# 1580
	mtspr	8, r31				# 1580
	mfspr	r31, 8				# 1582
	stw	r31, 168(r3)				# 1582
	addi	r3, r3, 172				# 1582
	bl	min_caml_atan				# 1582
	addi	r3, r3, -172				# 1582
	lwz	r31, 168(r3)				# 1582
	mtspr	8, r31				# 1582
	lis	r31, ha16(l.12150)
	addi	r31, r31, lo16(l.12150)
	lfs	f1, 0(r31)				# 1582
	fmul	f0, f0, f1				# 1582
	lis	r31, ha16(l.12151)
	addi	r31, r31, lo16(l.12151)
	lfs	f1, 0(r31)				# 1582
	fdiv	f0, f0, f1				# 1582
	b	beq_cont.17995				# 1577
beq_else.17994:
	lis	r31, ha16(l.12149)
	addi	r31, r31, lo16(l.12149)
	lfs	f0, 0(r31)				# 1578
beq_cont.17995:
	stfs	f0, 168(r3)				# 1584
	mfspr	r31, 8				# 1584
	stw	r31, 176(r3)				# 1584
	addi	r3, r3, 180				# 1584
	bl	min_caml_floor				# 1584
	addi	r3, r3, -180				# 1584
	lwz	r31, 176(r3)				# 1584
	mtspr	8, r31				# 1584
	lfs	f1, 168(r3)				# 1584
	fsub	f0, f1, f0				# 1584
	lwz	r2, 4(r3)				# 1586
	slwi	r5, r2, 2				# 1586
	lwz	r6, 28(r3)				# 1586
	lfsx	f1, r6, r5				# 1586
	lwz	r5, 24(r3)				# 327
	lwz	r6, 20(r5)				# 327
	slwi	r7, r2, 2				# 332
	lfsx	f2, r6, r7				# 332
	fsub	f1, f1, f2				# 1586
	lwz	r5, 16(r5)				# 287
	slwi	r2, r2, 2				# 292
	lfsx	f2, r5, r2				# 292
	stfs	f0, 176(r3)				# 1586
	stfs	f1, 184(r3)				# 1586
	mfspr	r31, 8				# 1586
	fmr	f0, f2				# 1586
	stw	r31, 192(r3)				# 1586
	addi	r3, r3, 196				# 1586
	bl	min_caml_sqrt				# 1586
	addi	r3, r3, -196				# 1586
	lwz	r31, 192(r3)				# 1586
	mtspr	8, r31				# 1586
	lfs	f1, 184(r3)				# 1586
	fmul	f0, f1, f0				# 1586
	lfs	f1, 152(r3)				# 1588
	stfs	f0, 192(r3)				# 1588
	mfspr	r31, 8				# 1588
	fmr	f0, f1				# 1588
	stw	r31, 200(r3)				# 1588
	addi	r3, r3, 204				# 1588
	bl	min_caml_fabs				# 1588
	addi	r3, r3, -204				# 1588
	lwz	r31, 200(r3)				# 1588
	mtspr	8, r31				# 1588
	lfs	f1, 160(r3)				# 1588
	mfspr	r31, 8				# 1588
	stw	r31, 200(r3)				# 1588
	addi	r3, r3, 204				# 1588
	bl	min_caml_fless				# 1588
	addi	r3, r3, -204				# 1588
	lwz	r31, 200(r3)				# 1588
	mtspr	8, r31				# 1588
	lwz	r5, 8(r3)				# 1588
	cmpw	cr7, r2, r5				# 1588
	bne	cr7, beq_else.17996				# 1588
	lfs	f0, 152(r3)				# 1591
	lfs	f1, 192(r3)				# 1591
	fdiv	f0, f1, f0				# 1591
	mfspr	r31, 8				# 1591
	stw	r31, 200(r3)				# 1591
	addi	r3, r3, 204				# 1591
	bl	min_caml_fabs				# 1591
	addi	r3, r3, -204				# 1591
	lwz	r31, 200(r3)				# 1591
	mtspr	8, r31				# 1591
	mfspr	r31, 8				# 1592
	stw	r31, 200(r3)				# 1592
	addi	r3, r3, 204				# 1592
	bl	min_caml_atan				# 1592
	addi	r3, r3, -204				# 1592
	lwz	r31, 200(r3)				# 1592
	mtspr	8, r31				# 1592
	lis	r31, ha16(l.12150)
	addi	r31, r31, lo16(l.12150)
	lfs	f1, 0(r31)				# 1592
	fmul	f0, f0, f1				# 1592
	lis	r31, ha16(l.12151)
	addi	r31, r31, lo16(l.12151)
	lfs	f1, 0(r31)				# 1592
	fdiv	f0, f0, f1				# 1592
	b	beq_cont.17997				# 1588
beq_else.17996:
	lis	r31, ha16(l.12149)
	addi	r31, r31, lo16(l.12149)
	lfs	f0, 0(r31)				# 1589
beq_cont.17997:
	stfs	f0, 200(r3)				# 1594
	mfspr	r31, 8				# 1594
	stw	r31, 208(r3)				# 1594
	addi	r3, r3, 212				# 1594
	bl	min_caml_floor				# 1594
	addi	r3, r3, -212				# 1594
	lwz	r31, 208(r3)				# 1594
	mtspr	8, r31				# 1594
	lfs	f1, 200(r3)				# 1594
	fsub	f0, f1, f0				# 1594
	lis	r31, ha16(l.12155)
	addi	r31, r31, lo16(l.12155)
	lfs	f1, 0(r31)				# 1595
	lis	r31, ha16(l.12156)
	addi	r31, r31, lo16(l.12156)
	lfs	f2, 0(r31)				# 1595
	lfs	f3, 176(r3)				# 1595
	fsub	f3, f2, f3				# 1595
	stfs	f0, 208(r3)				# 1595
	stfs	f2, 216(r3)				# 1595
	stfs	f1, 224(r3)				# 1595
	mfspr	r31, 8				# 1595
	fmr	f0, f3				# 1595
	stw	r31, 232(r3)				# 1595
	addi	r3, r3, 236				# 1595
	bl	min_caml_fsqr				# 1595
	addi	r3, r3, -236				# 1595
	lwz	r31, 232(r3)				# 1595
	mtspr	8, r31				# 1595
	lfs	f1, 224(r3)				# 1595
	fsub	f0, f1, f0				# 1595
	lfs	f1, 208(r3)				# 1595
	lfs	f2, 216(r3)				# 1595
	fsub	f1, f2, f1				# 1595
	stfs	f0, 232(r3)				# 1595
	mfspr	r31, 8				# 1595
	fmr	f0, f1				# 1595
	stw	r31, 240(r3)				# 1595
	addi	r3, r3, 244				# 1595
	bl	min_caml_fsqr				# 1595
	addi	r3, r3, -244				# 1595
	lwz	r31, 240(r3)				# 1595
	mtspr	8, r31				# 1595
	lfs	f1, 232(r3)				# 1595
	fsub	f0, f1, f0				# 1595
	stfs	f0, 240(r3)				# 1596
	mfspr	r31, 8				# 1596
	stw	r31, 248(r3)				# 1596
	addi	r3, r3, 252				# 1596
	bl	min_caml_fisneg				# 1596
	addi	r3, r3, -252				# 1596
	lwz	r31, 248(r3)				# 1596
	mtspr	8, r31				# 1596
	lwz	r5, 8(r3)				# 1596
	cmpw	cr7, r2, r5				# 1596
	bne	cr7, beq_else.17998				# 1596
	lfs	f0, 240(r3)				# 1596
	b	beq_cont.17999				# 1596
beq_else.17998:
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 1596
beq_cont.17999:
	lfs	f1, 80(r3)				# 1597
	fmul	f0, f1, f0				# 1597
	lis	r31, ha16(l.12157)
	addi	r31, r31, lo16(l.12157)
	lfs	f1, 0(r31)				# 1597
	fdiv	f0, f0, f1				# 1597
	lwz	r2, 32(r3)				# 1597
	slwi	r2, r2, 2				# 1597
	lwz	r5, 0(r3)				# 1597
	stfsx	f0, r5, r2				# 1597
	blr
beq_else.17993:
	blr
trace_reflections.2794:
	lwz	r6, 56(r30)				# 1622
	lwz	r7, 52(r30)				# 1622
	lwz	r8, 48(r30)				# 1622
	lwz	r9, 44(r30)				# 1622
	lwz	r10, 40(r30)				# 1622
	lwz	r11, 36(r30)				# 1622
	lwz	r12, 32(r30)				# 1622
	lwz	r13, 28(r30)				# 1622
	lwz	r14, 24(r30)				# 1622
	lwz	r15, 20(r30)				# 1622
	lwz	r16, 16(r30)				# 1622
	lwz	r17, 12(r30)				# 1622
	lwz	r18, 8(r30)				# 1622
	lfs	f2, 4(r30)				# 1622
	cmpw	cr7, r17, r2				# 1624
	bgt	cr7, ble_else.18002				# 1624
	slwi	r19, r2, 2				# 1625
	lwzx	r11, r11, r19				# 1625
	lwz	r19, 4(r11)				# 528
	slwi	r20, r17, 2				# 1459
	stfsx	f2, r7, r20				# 1459
	slwi	r20, r17, 2				# 1460
	lwzx	r20, r12, r20				# 1460
	stw	r30, 0(r3)				# 1460
	stw	r2, 4(r3)				# 1460
	stfs	f1, 8(r3)				# 1460
	stw	r8, 16(r3)				# 1460
	stw	r10, 20(r3)				# 1460
	stw	r5, 24(r3)				# 1460
	stfs	f0, 32(r3)				# 1460
	stw	r16, 40(r3)				# 1460
	stw	r18, 44(r3)				# 1460
	stw	r13, 48(r3)				# 1460
	stw	r19, 52(r3)				# 1460
	stw	r9, 56(r3)				# 1460
	stw	r12, 60(r3)				# 1460
	stw	r11, 64(r3)				# 1460
	stw	r14, 68(r3)				# 1460
	stw	r15, 72(r3)				# 1460
	stw	r7, 76(r3)				# 1460
	stw	r17, 80(r3)				# 1460
	mfspr	r31, 8				# 1460
	mr	r5, r20				# 1460
	mr	r2, r17				# 1460
	mr	r30, r6				# 1460
	mr	r6, r19				# 1460
	stw	r31, 84(r3)				# 1460
	addi	r3, r3, 88				# 1460
	lwz	r31, 0(r30)				# 1460
	mtspr	9, r31				# 1460
	bctrl				# 1460
	addi	r3, r3, -88				# 1460
	lwz	r31, 84(r3)				# 1460
	mtspr	8, r31				# 1460
	lwz	r2, 80(r3)				# 1461
	slwi	r5, r2, 2				# 1461
	lwz	r6, 76(r3)				# 1461
	lfsx	f1, r6, r5				# 1461
	lis	r31, ha16(l.11949)
	addi	r31, r31, lo16(l.11949)
	lfs	f0, 0(r31)				# 1463
	stfs	f1, 88(r3)				# 1463
	mfspr	r31, 8				# 1463
	stw	r31, 96(r3)				# 1463
	addi	r3, r3, 100				# 1463
	bl	min_caml_fless				# 1463
	addi	r3, r3, -100				# 1463
	lwz	r31, 96(r3)				# 1463
	mtspr	8, r31				# 1463
	lwz	r5, 80(r3)				# 1463
	cmpw	cr7, r2, r5				# 1463
	bne	cr7, beq_else.18005				# 1463
	addi	r2, 0, 0
	b	beq_cont.18006				# 1463
beq_else.18005:
	lis	r31, ha16(l.12182)
	addi	r31, r31, lo16(l.12182)
	lfs	f1, 0(r31)				# 1464
	lfs	f0, 88(r3)				# 1464
	mfspr	r31, 8				# 1464
	stw	r31, 96(r3)				# 1464
	addi	r3, r3, 100				# 1464
	bl	min_caml_fless				# 1464
	addi	r3, r3, -100				# 1464
	lwz	r31, 96(r3)				# 1464
	mtspr	8, r31				# 1464
beq_cont.18006:
	lwz	r5, 80(r3)				# 1629
	cmpw	cr7, r2, r5				# 1629
	bne	cr7, beq_else.18007				# 1629
	b	beq_cont.18008				# 1629
beq_else.18007:
	slwi	r2, r5, 2				# 1630
	lwz	r6, 72(r3)				# 1630
	lwzx	r2, r6, r2				# 1630
	slwi	r2, r2, 2				# 1630
	slwi	r6, r5, 2				# 1630
	lwz	r7, 68(r3)				# 1630
	lwzx	r6, r7, r6				# 1630
	add	r2, r2, r6				# 1630
	lwz	r6, 64(r3)				# 522
	lwz	r7, 0(r6)				# 522
	cmpw	cr7, r2, r7				# 1631
	bne	cr7, beq_else.18009				# 1631
	slwi	r2, r5, 2				# 1633
	lwz	r7, 60(r3)				# 1633
	lwzx	r2, r7, r2				# 1633
	lwz	r30, 56(r3)				# 1633
	mfspr	r31, 8				# 1633
	mr	r29, r5				# 1633
	mr	r5, r2				# 1633
	mr	r2, r29				# 1633
	stw	r31, 96(r3)				# 1633
	addi	r3, r3, 100				# 1633
	lwz	r31, 0(r30)				# 1633
	mtspr	9, r31				# 1633
	bctrl				# 1633
	addi	r3, r3, -100				# 1633
	lwz	r31, 96(r3)				# 1633
	mtspr	8, r31				# 1633
	lwz	r5, 80(r3)				# 1633
	cmpw	cr7, r2, r5				# 1633
	bne	cr7, beq_else.18011				# 1633
	lwz	r2, 52(r3)				# 508
	lwz	r6, 0(r2)				# 508
	slwi	r7, r5, 2				# 182
	lwz	r8, 48(r3)				# 182
	lfsx	f0, r8, r7				# 182
	slwi	r7, r5, 2				# 182
	lfsx	f1, r6, r7				# 182
	fmul	f0, f0, f1				# 182
	lwz	r7, 44(r3)				# 182
	slwi	r9, r7, 2				# 182
	lfsx	f1, r8, r9				# 182
	slwi	r9, r7, 2				# 182
	lfsx	f2, r6, r9				# 182
	fmul	f1, f1, f2				# 182
	fadd	f0, f0, f1				# 182
	lwz	r9, 40(r3)				# 182
	slwi	r10, r9, 2				# 182
	lfsx	f1, r8, r10				# 182
	slwi	r8, r9, 2				# 182
	lfsx	f2, r6, r8				# 182
	fmul	f1, f1, f2				# 182
	fadd	f0, f0, f1				# 182
	lwz	r6, 64(r3)				# 534
	lfs	f1, 8(r6)				# 534
	lfs	f2, 32(r3)				# 1637
	fmul	f3, f1, f2				# 1637
	fmul	f0, f3, f0				# 1637
	lwz	r2, 0(r2)				# 508
	slwi	r6, r5, 2				# 182
	lwz	r8, 24(r3)				# 182
	lfsx	f3, r8, r6				# 182
	slwi	r6, r5, 2				# 182
	lfsx	f4, r2, r6				# 182
	fmul	f3, f3, f4				# 182
	slwi	r6, r7, 2				# 182
	lfsx	f4, r8, r6				# 182
	slwi	r6, r7, 2				# 182
	lfsx	f5, r2, r6				# 182
	fmul	f4, f4, f5				# 182
	fadd	f3, f3, f4				# 182
	slwi	r6, r9, 2				# 182
	lfsx	f4, r8, r6				# 182
	slwi	r6, r9, 2				# 182
	lfsx	f5, r2, r6				# 182
	fmul	f4, f4, f5				# 182
	fadd	f3, f3, f4				# 182
	fmul	f1, f1, f3				# 1638
	stfs	f1, 96(r3)				# 1608
	stfs	f0, 104(r3)				# 1608
	mfspr	r31, 8				# 1608
	stw	r31, 112(r3)				# 1608
	addi	r3, r3, 116				# 1608
	bl	min_caml_fispos				# 1608
	addi	r3, r3, -116				# 1608
	lwz	r31, 112(r3)				# 1608
	mtspr	8, r31				# 1608
	lwz	r5, 80(r3)				# 1608
	cmpw	cr7, r2, r5				# 1608
	bne	cr7, beq_else.18013				# 1608
	b	beq_cont.18014				# 1608
beq_else.18013:
	slwi	r2, r5, 2				# 192
	lwz	r6, 20(r3)				# 192
	lfsx	f0, r6, r2				# 192
	slwi	r2, r5, 2				# 192
	lwz	r7, 16(r3)				# 192
	lfsx	f1, r7, r2				# 192
	lfs	f2, 104(r3)				# 192
	fmul	f1, f2, f1				# 192
	fadd	f0, f0, f1				# 192
	slwi	r2, r5, 2				# 192
	stfsx	f0, r6, r2				# 192
	lwz	r2, 44(r3)				# 193
	slwi	r8, r2, 2				# 193
	lfsx	f0, r6, r8				# 193
	slwi	r8, r2, 2				# 193
	lfsx	f1, r7, r8				# 193
	fmul	f1, f2, f1				# 193
	fadd	f0, f0, f1				# 193
	slwi	r8, r2, 2				# 193
	stfsx	f0, r6, r8				# 193
	lwz	r8, 40(r3)				# 194
	slwi	r9, r8, 2				# 194
	lfsx	f0, r6, r9				# 194
	slwi	r9, r8, 2				# 194
	lfsx	f1, r7, r9				# 194
	fmul	f1, f2, f1				# 194
	fadd	f0, f0, f1				# 194
	slwi	r7, r8, 2				# 194
	stfsx	f0, r6, r7				# 194
beq_cont.18014:
	lfs	f0, 96(r3)				# 1613
	mfspr	r31, 8				# 1613
	stw	r31, 112(r3)				# 1613
	addi	r3, r3, 116				# 1613
	bl	min_caml_fispos				# 1613
	addi	r3, r3, -116				# 1613
	lwz	r31, 112(r3)				# 1613
	mtspr	8, r31				# 1613
	lwz	r5, 80(r3)				# 1613
	cmpw	cr7, r2, r5				# 1613
	bne	cr7, beq_else.18015				# 1613
	b	beq_cont.18016				# 1613
beq_else.18015:
	lfs	f0, 96(r3)				# 1614
	mfspr	r31, 8				# 1614
	stw	r31, 112(r3)				# 1614
	addi	r3, r3, 116				# 1614
	bl	min_caml_fsqr				# 1614
	addi	r3, r3, -116				# 1614
	lwz	r31, 112(r3)				# 1614
	mtspr	8, r31				# 1614
	mfspr	r31, 8				# 1614
	stw	r31, 112(r3)				# 1614
	addi	r3, r3, 116				# 1614
	bl	min_caml_fsqr				# 1614
	addi	r3, r3, -116				# 1614
	lwz	r31, 112(r3)				# 1614
	mtspr	8, r31				# 1614
	lfs	f1, 8(r3)				# 1614
	fmul	f0, f0, f1				# 1614
	lwz	r2, 80(r3)				# 1615
	slwi	r5, r2, 2				# 1615
	lwz	r6, 20(r3)				# 1615
	lfsx	f2, r6, r5				# 1615
	fadd	f2, f2, f0				# 1615
	slwi	r2, r2, 2				# 1615
	stfsx	f2, r6, r2				# 1615
	lwz	r2, 44(r3)				# 1616
	slwi	r5, r2, 2				# 1616
	lfsx	f2, r6, r5				# 1616
	fadd	f2, f2, f0				# 1616
	slwi	r5, r2, 2				# 1616
	stfsx	f2, r6, r5				# 1616
	lwz	r5, 40(r3)				# 1617
	slwi	r7, r5, 2				# 1617
	lfsx	f2, r6, r7				# 1617
	fadd	f0, f2, f0				# 1617
	slwi	r5, r5, 2				# 1617
	stfsx	f0, r6, r5				# 1617
beq_cont.18016:
	b	beq_cont.18012				# 1633
beq_else.18011:
beq_cont.18012:
	b	beq_cont.18010				# 1631
beq_else.18009:
beq_cont.18010:
beq_cont.18008:
	lwz	r2, 44(r3)				# 1643
	lwz	r5, 4(r3)				# 1643
	sub	r2, r5, r2				# 1643
	lfs	f0, 32(r3)				# 1643
	lfs	f1, 8(r3)				# 1643
	lwz	r5, 24(r3)				# 1643
	lwz	r30, 0(r3)				# 1643
	lwz	r29, 0(r30)				# 1643
	mtspr	9, r29
	bctr				# 1643
ble_else.18002:
	blr
trace_ray.2799:
	lwz	r7, 108(r30)				# 1649
	lwz	r8, 104(r30)				# 1649
	lwz	r9, 100(r30)				# 1649
	lwz	r10, 96(r30)				# 1649
	lwz	r11, 92(r30)				# 1649
	lwz	r12, 88(r30)				# 1649
	lwz	r13, 84(r30)				# 1649
	lwz	r14, 80(r30)				# 1649
	lwz	r15, 76(r30)				# 1649
	lwz	r16, 72(r30)				# 1649
	lwz	r17, 68(r30)				# 1649
	lwz	r18, 64(r30)				# 1649
	lwz	r19, 60(r30)				# 1649
	lwz	r20, 56(r30)				# 1649
	lwz	r21, 52(r30)				# 1649
	lwz	r22, 48(r30)				# 1649
	lwz	r23, 44(r30)				# 1649
	lwz	r24, 40(r30)				# 1649
	lwz	r25, 36(r30)				# 1649
	lwz	r26, 32(r30)				# 1649
	lwz	r27, 28(r30)				# 1649
	lwz	r28, 24(r30)				# 1649
	lwz	r29, 20(r30)				# 1649
	stw	r8, 0(r3)				# 1649
	lwz	r8, 16(r30)				# 1649
	stw	r20, 4(r3)				# 1649
	lwz	r20, 12(r30)				# 1649
	lfs	f2, 8(r30)				# 1649
	lfs	f3, 4(r30)				# 1649
	cmpwi	cr7, r2, 4				# 1650
	bgt	cr7, ble_else.18018				# 1650
	stw	r30, 8(r3)				# 455
	lwz	r30, 8(r6)				# 455
	stw	r15, 12(r3)				# 1370
	slwi	r15, r8, 2				# 1370
	stfsx	f2, r10, r15				# 1370
	slwi	r15, r8, 2				# 1371
	lwzx	r15, r17, r15				# 1371
	stfs	f1, 16(r3)				# 1371
	stw	r21, 24(r3)				# 1371
	stw	r12, 28(r3)				# 1371
	stw	r14, 32(r3)				# 1371
	stw	r17, 36(r3)				# 1371
	stw	r11, 40(r3)				# 1371
	stw	r6, 44(r3)				# 1371
	stw	r7, 48(r3)				# 1371
	stw	r13, 52(r3)				# 1371
	stw	r24, 56(r3)				# 1371
	stw	r26, 60(r3)				# 1371
	stw	r19, 64(r3)				# 1371
	stfs	f3, 72(r3)				# 1371
	stw	r23, 80(r3)				# 1371
	stw	r18, 84(r3)				# 1371
	stw	r25, 88(r3)				# 1371
	stw	r16, 92(r3)				# 1371
	stw	r27, 96(r3)				# 1371
	stfs	f0, 104(r3)				# 1371
	stw	r28, 112(r3)				# 1371
	stw	r20, 116(r3)				# 1371
	stw	r22, 120(r3)				# 1371
	stw	r5, 124(r3)				# 1371
	stw	r30, 128(r3)				# 1371
	stw	r29, 132(r3)				# 1371
	stw	r2, 136(r3)				# 1371
	stw	r10, 140(r3)				# 1371
	stw	r8, 144(r3)				# 1371
	mfspr	r31, 8				# 1371
	mr	r6, r5				# 1371
	mr	r2, r8				# 1371
	mr	r30, r9				# 1371
	mr	r5, r15				# 1371
	stw	r31, 148(r3)				# 1371
	addi	r3, r3, 152				# 1371
	lwz	r31, 0(r30)				# 1371
	mtspr	9, r31				# 1371
	bctrl				# 1371
	addi	r3, r3, -152				# 1371
	lwz	r31, 148(r3)				# 1371
	mtspr	8, r31				# 1371
	lwz	r2, 144(r3)				# 1372
	slwi	r5, r2, 2				# 1372
	lwz	r6, 140(r3)				# 1372
	lfsx	f1, r6, r5				# 1372
	lis	r31, ha16(l.11949)
	addi	r31, r31, lo16(l.11949)
	lfs	f0, 0(r31)				# 1374
	stfs	f1, 152(r3)				# 1374
	mfspr	r31, 8				# 1374
	stw	r31, 160(r3)				# 1374
	addi	r3, r3, 164				# 1374
	bl	min_caml_fless				# 1374
	addi	r3, r3, -164				# 1374
	lwz	r31, 160(r3)				# 1374
	mtspr	8, r31				# 1374
	lwz	r5, 144(r3)				# 1374
	cmpw	cr7, r2, r5				# 1374
	bne	cr7, beq_else.18022				# 1374
	addi	r2, 0, 0
	b	beq_cont.18023				# 1374
beq_else.18022:
	lis	r31, ha16(l.12182)
	addi	r31, r31, lo16(l.12182)
	lfs	f1, 0(r31)				# 1375
	lfs	f0, 152(r3)				# 1375
	mfspr	r31, 8				# 1375
	stw	r31, 160(r3)				# 1375
	addi	r3, r3, 164				# 1375
	bl	min_caml_fless				# 1375
	addi	r3, r3, -164				# 1375
	lwz	r31, 160(r3)				# 1375
	mtspr	8, r31				# 1375
beq_cont.18023:
	lwz	r5, 144(r3)				# 1652
	cmpw	cr7, r2, r5				# 1652
	bne	cr7, beq_else.18024				# 1652
	lwz	r2, 136(r3)				# 1715
	slwi	r6, r2, 2				# 1715
	lwz	r7, 128(r3)				# 1715
	lwz	r8, 132(r3)				# 1715
	stwx	r8, r7, r6				# 1715
	cmpw	cr7, r2, r5				# 1717
	bne	cr7, beq_else.18025				# 1717
	blr
beq_else.18025:
	slwi	r2, r5, 2				# 182
	lwz	r6, 124(r3)				# 182
	lfsx	f0, r6, r2				# 182
	slwi	r2, r5, 2				# 182
	lwz	r7, 120(r3)				# 182
	lfsx	f1, r7, r2				# 182
	fmul	f0, f0, f1				# 182
	lwz	r2, 116(r3)				# 182
	slwi	r8, r2, 2				# 182
	lfsx	f1, r6, r8				# 182
	slwi	r8, r2, 2				# 182
	lfsx	f2, r7, r8				# 182
	fmul	f1, f1, f2				# 182
	fadd	f0, f0, f1				# 182
	lwz	r8, 112(r3)				# 182
	slwi	r9, r8, 2				# 182
	lfsx	f1, r6, r9				# 182
	slwi	r6, r8, 2				# 182
	lfsx	f2, r7, r6				# 182
	fmul	f1, f1, f2				# 182
	fadd	f0, f0, f1				# 182
	mfspr	r31, 8				# 1718
	stw	r31, 160(r3)				# 1718
	addi	r3, r3, 164				# 1718
	bl	min_caml_fneg				# 1718
	addi	r3, r3, -164				# 1718
	lwz	r31, 160(r3)				# 1718
	mtspr	8, r31				# 1718
	stfs	f0, 160(r3)				# 1720
	mfspr	r31, 8				# 1720
	stw	r31, 168(r3)				# 1720
	addi	r3, r3, 172				# 1720
	bl	min_caml_fispos				# 1720
	addi	r3, r3, -172				# 1720
	lwz	r31, 168(r3)				# 1720
	mtspr	8, r31				# 1720
	lwz	r5, 144(r3)				# 1720
	cmpw	cr7, r2, r5				# 1720
	bne	cr7, beq_else.18027				# 1720
	blr
beq_else.18027:
	lfs	f0, 160(r3)				# 1723
	mfspr	r31, 8				# 1723
	stw	r31, 168(r3)				# 1723
	addi	r3, r3, 172				# 1723
	bl	min_caml_fsqr				# 1723
	addi	r3, r3, -172				# 1723
	lwz	r31, 168(r3)				# 1723
	mtspr	8, r31				# 1723
	lfs	f1, 160(r3)				# 1723
	fmul	f0, f0, f1				# 1723
	lfs	f1, 104(r3)				# 1723
	fmul	f0, f0, f1				# 1723
	lwz	r2, 144(r3)				# 1723
	slwi	r5, r2, 2				# 1723
	lwz	r6, 96(r3)				# 1723
	lfsx	f1, r6, r5				# 1723
	fmul	f0, f0, f1				# 1723
	slwi	r5, r2, 2				# 1724
	lwz	r6, 92(r3)				# 1724
	lfsx	f1, r6, r5				# 1724
	fadd	f1, f1, f0				# 1724
	slwi	r2, r2, 2				# 1724
	stfsx	f1, r6, r2				# 1724
	lwz	r2, 116(r3)				# 1725
	slwi	r5, r2, 2				# 1725
	lfsx	f1, r6, r5				# 1725
	fadd	f1, f1, f0				# 1725
	slwi	r2, r2, 2				# 1725
	stfsx	f1, r6, r2				# 1725
	lwz	r2, 112(r3)				# 1726
	slwi	r5, r2, 2				# 1726
	lfsx	f1, r6, r5				# 1726
	fadd	f0, f1, f0				# 1726
	slwi	r2, r2, 2				# 1726
	stfsx	f0, r6, r2				# 1726
	blr
beq_else.18024:
	slwi	r2, r5, 2				# 1654
	lwz	r6, 88(r3)				# 1654
	lwzx	r2, r6, r2				# 1654
	slwi	r6, r2, 2				# 1655
	lwz	r7, 84(r3)				# 1655
	lwzx	r6, r7, r6				# 1655
	lwz	r7, 8(r6)				# 249
	lwz	r8, 28(r6)				# 347
	slwi	r9, r5, 2				# 352
	lfsx	f0, r8, r9				# 352
	lfs	f1, 104(r3)				# 1657
	fmul	f0, f0, f1				# 1657
	lwz	r8, 4(r6)				# 239
	lwz	r9, 116(r3)				# 1516
	stw	r7, 168(r3)				# 1516
	stfs	f0, 176(r3)				# 1516
	stw	r2, 184(r3)				# 1516
	stw	r6, 188(r3)				# 1516
	cmpw	cr7, r8, r9				# 1516
	bne	cr7, beq_else.18031				# 1516
	slwi	r8, r5, 2				# 1477
	lwz	r10, 80(r3)				# 1477
	lwzx	r8, r10, r8				# 1477
	slwi	r11, r5, 2				# 141
	lwz	r12, 64(r3)				# 141
	lfs	f2, 72(r3)				# 141
	stfsx	f2, r12, r11				# 141
	slwi	r11, r9, 2				# 142
	stfsx	f2, r12, r11				# 142
	lwz	r11, 112(r3)				# 143
	slwi	r13, r11, 2				# 143
	stfsx	f2, r12, r13				# 143
	sub	r8, r8, r9				# 1480
	slwi	r13, r8, 2				# 1480
	lwz	r14, 124(r3)				# 1480
	lfsx	f2, r14, r13				# 1480
	stw	r8, 192(r3)				# 112
	stfs	f2, 200(r3)				# 112
	mfspr	r31, 8				# 112
	fmr	f0, f2				# 112
	stw	r31, 208(r3)				# 112
	addi	r3, r3, 212				# 112
	bl	min_caml_fiszero				# 112
	addi	r3, r3, -212				# 112
	lwz	r31, 208(r3)				# 112
	mtspr	8, r31				# 112
	lwz	r5, 144(r3)				# 112
	cmpw	cr7, r2, r5				# 112
	bne	cr7, beq_else.18034				# 112
	lfs	f0, 200(r3)				# 113
	mfspr	r31, 8				# 113
	stw	r31, 208(r3)				# 113
	addi	r3, r3, 212				# 113
	bl	min_caml_fispos				# 113
	addi	r3, r3, -212				# 113
	lwz	r31, 208(r3)				# 113
	mtspr	8, r31				# 113
	lwz	r5, 144(r3)				# 113
	cmpw	cr7, r2, r5				# 113
	bne	cr7, beq_else.18036				# 113
	lis	r31, ha16(l.11650)
	addi	r31, r31, lo16(l.11650)
	lfs	f0, 0(r31)				# 114
	b	beq_cont.18037				# 113
beq_else.18036:
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 113
beq_cont.18037:
	b	beq_cont.18035				# 112
beq_else.18034:
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 112
beq_cont.18035:
	mfspr	r31, 8				# 1480
	stw	r31, 208(r3)				# 1480
	addi	r3, r3, 212				# 1480
	bl	min_caml_fneg				# 1480
	addi	r3, r3, -212				# 1480
	lwz	r31, 208(r3)				# 1480
	mtspr	8, r31				# 1480
	lwz	r2, 192(r3)				# 1480
	slwi	r2, r2, 2				# 1480
	lwz	r5, 64(r3)				# 1480
	stfsx	f0, r5, r2				# 1480
	b	beq_cont.18032				# 1516
beq_else.18031:
	lwz	r10, 112(r3)				# 1518
	cmpw	cr7, r8, r10				# 1518
	bne	cr7, beq_else.18038				# 1518
	lwz	r8, 16(r6)				# 277
	slwi	r11, r5, 2				# 282
	lfsx	f2, r8, r11				# 282
	mfspr	r31, 8				# 1486
	fmr	f0, f2				# 1486
	stw	r31, 208(r3)				# 1486
	addi	r3, r3, 212				# 1486
	bl	min_caml_fneg				# 1486
	addi	r3, r3, -212				# 1486
	lwz	r31, 208(r3)				# 1486
	mtspr	8, r31				# 1486
	lwz	r2, 144(r3)				# 1486
	slwi	r5, r2, 2				# 1486
	lwz	r6, 64(r3)				# 1486
	stfsx	f0, r6, r5				# 1486
	lwz	r5, 188(r3)				# 287
	lwz	r7, 16(r5)				# 287
	lwz	r8, 116(r3)				# 292
	slwi	r9, r8, 2				# 292
	lfsx	f0, r7, r9				# 292
	mfspr	r31, 8				# 1487
	stw	r31, 208(r3)				# 1487
	addi	r3, r3, 212				# 1487
	bl	min_caml_fneg				# 1487
	addi	r3, r3, -212				# 1487
	lwz	r31, 208(r3)				# 1487
	mtspr	8, r31				# 1487
	lwz	r2, 116(r3)				# 1487
	slwi	r5, r2, 2				# 1487
	lwz	r6, 64(r3)				# 1487
	stfsx	f0, r6, r5				# 1487
	lwz	r5, 188(r3)				# 297
	lwz	r7, 16(r5)				# 297
	lwz	r8, 112(r3)				# 302
	slwi	r9, r8, 2				# 302
	lfsx	f0, r7, r9				# 302
	mfspr	r31, 8				# 1488
	stw	r31, 208(r3)				# 1488
	addi	r3, r3, 212				# 1488
	bl	min_caml_fneg				# 1488
	addi	r3, r3, -212				# 1488
	lwz	r31, 208(r3)				# 1488
	mtspr	8, r31				# 1488
	lwz	r2, 112(r3)				# 1488
	slwi	r5, r2, 2				# 1488
	lwz	r6, 64(r3)				# 1488
	stfsx	f0, r6, r5				# 1488
	b	beq_cont.18039				# 1518
beq_else.18038:
	lwz	r30, 60(r3)				# 1521
	mfspr	r31, 8				# 1521
	mr	r2, r6				# 1521
	stw	r31, 208(r3)				# 1521
	addi	r3, r3, 212				# 1521
	lwz	r31, 0(r30)				# 1521
	mtspr	9, r31				# 1521
	bctrl				# 1521
	addi	r3, r3, -212				# 1521
	lwz	r31, 208(r3)				# 1521
	mtspr	8, r31				# 1521
beq_cont.18039:
beq_cont.18032:
	lwz	r2, 144(r3)				# 153
	slwi	r5, r2, 2				# 153
	lwz	r6, 56(r3)				# 153
	lfsx	f0, r6, r5				# 153
	slwi	r5, r2, 2				# 153
	lwz	r7, 52(r3)				# 153
	stfsx	f0, r7, r5				# 153
	lwz	r5, 116(r3)				# 154
	slwi	r8, r5, 2				# 154
	lfsx	f0, r6, r8				# 154
	slwi	r8, r5, 2				# 154
	stfsx	f0, r7, r8				# 154
	lwz	r8, 112(r3)				# 155
	slwi	r9, r8, 2				# 155
	lfsx	f0, r6, r9				# 155
	slwi	r9, r8, 2				# 155
	stfsx	f0, r7, r9				# 155
	lwz	r7, 188(r3)				# 1661
	lwz	r30, 48(r3)				# 1661
	mfspr	r31, 8				# 1661
	mr	r5, r6				# 1661
	mr	r2, r7				# 1661
	stw	r31, 208(r3)				# 1661
	addi	r3, r3, 212				# 1661
	lwz	r31, 0(r30)				# 1661
	mtspr	9, r31				# 1661
	bctrl				# 1661
	addi	r3, r3, -212				# 1661
	lwz	r31, 208(r3)				# 1661
	mtspr	8, r31				# 1661
	lwz	r2, 184(r3)				# 1664
	slwi	r2, r2, 2				# 1664
	lwz	r5, 144(r3)				# 1664
	slwi	r6, r5, 2				# 1664
	lwz	r7, 80(r3)				# 1664
	lwzx	r6, r7, r6				# 1664
	add	r2, r2, r6				# 1664
	lwz	r6, 136(r3)				# 1664
	slwi	r7, r6, 2				# 1664
	lwz	r8, 128(r3)				# 1664
	stwx	r2, r8, r7				# 1664
	lwz	r2, 44(r3)				# 447
	lwz	r7, 4(r2)				# 447
	slwi	r9, r6, 2				# 1666
	lwzx	r7, r7, r9				# 1666
	slwi	r9, r5, 2				# 153
	lwz	r10, 56(r3)				# 153
	lfsx	f0, r10, r9				# 153
	slwi	r9, r5, 2				# 153
	stfsx	f0, r7, r9				# 153
	lwz	r9, 116(r3)				# 154
	slwi	r11, r9, 2				# 154
	lfsx	f0, r10, r11				# 154
	slwi	r11, r9, 2				# 154
	stfsx	f0, r7, r11				# 154
	lwz	r11, 112(r3)				# 155
	slwi	r12, r11, 2				# 155
	lfsx	f0, r10, r12				# 155
	slwi	r12, r11, 2				# 155
	stfsx	f0, r7, r12				# 155
	lwz	r7, 12(r2)				# 462
	lwz	r12, 188(r3)				# 347
	lwz	r13, 28(r12)				# 347
	slwi	r14, r5, 2				# 352
	lfsx	f0, r13, r14				# 352
	lis	r31, ha16(l.12156)
	addi	r31, r31, lo16(l.12156)
	lfs	f1, 0(r31)				# 1670
	stw	r7, 208(r3)				# 1670
	mfspr	r31, 8				# 1670
	stw	r31, 212(r3)				# 1670
	addi	r3, r3, 216				# 1670
	bl	min_caml_fless				# 1670
	addi	r3, r3, -216				# 1670
	lwz	r31, 212(r3)				# 1670
	mtspr	8, r31				# 1670
	lwz	r5, 144(r3)				# 1670
	cmpw	cr7, r2, r5				# 1670
	bne	cr7, beq_else.18040				# 1670
	lwz	r2, 136(r3)				# 1673
	slwi	r6, r2, 2				# 1673
	lwz	r7, 208(r3)				# 1673
	lwz	r8, 116(r3)				# 1673
	stwx	r8, r7, r6				# 1673
	lwz	r6, 44(r3)				# 469
	lwz	r7, 16(r6)				# 469
	slwi	r9, r2, 2				# 1675
	lwzx	r9, r7, r9				# 1675
	slwi	r10, r5, 2				# 153
	lwz	r11, 40(r3)				# 153
	lfsx	f0, r11, r10				# 153
	slwi	r10, r5, 2				# 153
	stfsx	f0, r9, r10				# 153
	slwi	r10, r8, 2				# 154
	lfsx	f0, r11, r10				# 154
	slwi	r10, r8, 2				# 154
	stfsx	f0, r9, r10				# 154
	lwz	r10, 112(r3)				# 155
	slwi	r12, r10, 2				# 155
	lfsx	f0, r11, r12				# 155
	slwi	r12, r10, 2				# 155
	stfsx	f0, r9, r12				# 155
	slwi	r9, r2, 2				# 1676
	lwzx	r7, r7, r9				# 1676
	lis	r31, ha16(l.12257)
	addi	r31, r31, lo16(l.12257)
	lfs	f0, 0(r31)				# 1676
	lfs	f1, 176(r3)				# 1676
	fmul	f0, f0, f1				# 1676
	slwi	r9, r5, 2				# 213
	lfsx	f2, r7, r9				# 213
	fmul	f2, f2, f0				# 213
	slwi	r9, r5, 2				# 213
	stfsx	f2, r7, r9				# 213
	slwi	r9, r8, 2				# 214
	lfsx	f2, r7, r9				# 214
	fmul	f2, f2, f0				# 214
	slwi	r9, r8, 2				# 214
	stfsx	f2, r7, r9				# 214
	slwi	r9, r10, 2				# 215
	lfsx	f2, r7, r9				# 215
	fmul	f0, f2, f0				# 215
	slwi	r9, r10, 2				# 215
	stfsx	f0, r7, r9				# 215
	lwz	r7, 28(r6)				# 499
	slwi	r9, r2, 2				# 1678
	lwzx	r7, r7, r9				# 1678
	slwi	r9, r5, 2				# 153
	lwz	r12, 64(r3)				# 153
	lfsx	f0, r12, r9				# 153
	slwi	r9, r5, 2				# 153
	stfsx	f0, r7, r9				# 153
	slwi	r9, r8, 2				# 154
	lfsx	f0, r12, r9				# 154
	slwi	r9, r8, 2				# 154
	stfsx	f0, r7, r9				# 154
	slwi	r9, r10, 2				# 155
	lfsx	f0, r12, r9				# 155
	slwi	r9, r10, 2				# 155
	stfsx	f0, r7, r9				# 155
	b	beq_cont.18041				# 1670
beq_else.18040:
	lwz	r2, 136(r3)				# 1671
	slwi	r6, r2, 2				# 1671
	lwz	r7, 208(r3)				# 1671
	stwx	r5, r7, r6				# 1671
beq_cont.18041:
	lis	r31, ha16(l.12271)
	addi	r31, r31, lo16(l.12271)
	lfs	f0, 0(r31)				# 1681
	slwi	r6, r5, 2				# 182
	lwz	r7, 124(r3)				# 182
	lfsx	f1, r7, r6				# 182
	slwi	r6, r5, 2				# 182
	lwz	r8, 64(r3)				# 182
	lfsx	f2, r8, r6				# 182
	fmul	f1, f1, f2				# 182
	lwz	r6, 116(r3)				# 182
	slwi	r9, r6, 2				# 182
	lfsx	f2, r7, r9				# 182
	slwi	r9, r6, 2				# 182
	lfsx	f3, r8, r9				# 182
	fmul	f2, f2, f3				# 182
	fadd	f1, f1, f2				# 182
	lwz	r9, 112(r3)				# 182
	slwi	r10, r9, 2				# 182
	lfsx	f2, r7, r10				# 182
	slwi	r10, r9, 2				# 182
	lfsx	f3, r8, r10				# 182
	fmul	f2, f2, f3				# 182
	fadd	f1, f1, f2				# 182
	fmul	f0, f0, f1				# 1681
	slwi	r10, r5, 2				# 192
	lfsx	f1, r7, r10				# 192
	slwi	r10, r5, 2				# 192
	lfsx	f2, r8, r10				# 192
	fmul	f2, f0, f2				# 192
	fadd	f1, f1, f2				# 192
	slwi	r10, r5, 2				# 192
	stfsx	f1, r7, r10				# 192
	slwi	r10, r6, 2				# 193
	lfsx	f1, r7, r10				# 193
	slwi	r10, r6, 2				# 193
	lfsx	f2, r8, r10				# 193
	fmul	f2, f0, f2				# 193
	fadd	f1, f1, f2				# 193
	slwi	r10, r6, 2				# 193
	stfsx	f1, r7, r10				# 193
	slwi	r10, r9, 2				# 194
	lfsx	f1, r7, r10				# 194
	slwi	r10, r9, 2				# 194
	lfsx	f2, r8, r10				# 194
	fmul	f0, f0, f2				# 194
	fadd	f0, f1, f0				# 194
	slwi	r10, r9, 2				# 194
	stfsx	f0, r7, r10				# 194
	lwz	r10, 188(r3)				# 357
	lwz	r11, 28(r10)				# 357
	slwi	r12, r6, 2				# 362
	lfsx	f0, r11, r12				# 362
	lfs	f1, 104(r3)				# 1685
	fmul	f0, f1, f0				# 1685
	slwi	r11, r5, 2				# 1688
	lwz	r12, 36(r3)				# 1688
	lwzx	r11, r12, r11				# 1688
	lwz	r30, 32(r3)				# 1688
	stfs	f0, 216(r3)				# 1688
	mfspr	r31, 8				# 1688
	mr	r2, r5				# 1688
	mr	r5, r11				# 1688
	stw	r31, 224(r3)				# 1688
	addi	r3, r3, 228				# 1688
	lwz	r31, 0(r30)				# 1688
	mtspr	9, r31				# 1688
	bctrl				# 1688
	addi	r3, r3, -228				# 1688
	lwz	r31, 224(r3)				# 1688
	mtspr	8, r31				# 1688
	lwz	r5, 144(r3)				# 1688
	cmpw	cr7, r2, r5				# 1688
	bne	cr7, beq_else.18043				# 1688
	slwi	r2, r5, 2				# 182
	lwz	r6, 64(r3)				# 182
	lfsx	f0, r6, r2				# 182
	slwi	r2, r5, 2				# 182
	lwz	r7, 120(r3)				# 182
	lfsx	f1, r7, r2				# 182
	fmul	f0, f0, f1				# 182
	lwz	r2, 116(r3)				# 182
	slwi	r8, r2, 2				# 182
	lfsx	f1, r6, r8				# 182
	slwi	r8, r2, 2				# 182
	lfsx	f2, r7, r8				# 182
	fmul	f1, f1, f2				# 182
	fadd	f0, f0, f1				# 182
	lwz	r8, 112(r3)				# 182
	slwi	r9, r8, 2				# 182
	lfsx	f1, r6, r9				# 182
	slwi	r6, r8, 2				# 182
	lfsx	f2, r7, r6				# 182
	fmul	f1, f1, f2				# 182
	fadd	f0, f0, f1				# 182
	mfspr	r31, 8				# 1689
	stw	r31, 224(r3)				# 1689
	addi	r3, r3, 228				# 1689
	bl	min_caml_fneg				# 1689
	addi	r3, r3, -228				# 1689
	lwz	r31, 224(r3)				# 1689
	mtspr	8, r31				# 1689
	lfs	f1, 176(r3)				# 1689
	fmul	f0, f0, f1				# 1689
	lwz	r2, 144(r3)				# 182
	slwi	r5, r2, 2				# 182
	lwz	r6, 124(r3)				# 182
	lfsx	f2, r6, r5				# 182
	slwi	r5, r2, 2				# 182
	lwz	r7, 120(r3)				# 182
	lfsx	f3, r7, r5				# 182
	fmul	f2, f2, f3				# 182
	lwz	r5, 116(r3)				# 182
	slwi	r8, r5, 2				# 182
	lfsx	f3, r6, r8				# 182
	slwi	r8, r5, 2				# 182
	lfsx	f4, r7, r8				# 182
	fmul	f3, f3, f4				# 182
	fadd	f2, f2, f3				# 182
	lwz	r8, 112(r3)				# 182
	slwi	r9, r8, 2				# 182
	lfsx	f3, r6, r9				# 182
	slwi	r9, r8, 2				# 182
	lfsx	f4, r7, r9				# 182
	fmul	f3, f3, f4				# 182
	fadd	f2, f2, f3				# 182
	stfs	f0, 224(r3)				# 1690
	mfspr	r31, 8				# 1690
	fmr	f0, f2				# 1690
	stw	r31, 232(r3)				# 1690
	addi	r3, r3, 236				# 1690
	bl	min_caml_fneg				# 1690
	addi	r3, r3, -236				# 1690
	lwz	r31, 232(r3)				# 1690
	mtspr	8, r31				# 1690
	lfs	f1, 224(r3)				# 1608
	stfs	f0, 232(r3)				# 1608
	mfspr	r31, 8				# 1608
	fmr	f0, f1				# 1608
	stw	r31, 240(r3)				# 1608
	addi	r3, r3, 244				# 1608
	bl	min_caml_fispos				# 1608
	addi	r3, r3, -244				# 1608
	lwz	r31, 240(r3)				# 1608
	mtspr	8, r31				# 1608
	lwz	r5, 144(r3)				# 1608
	cmpw	cr7, r2, r5				# 1608
	bne	cr7, beq_else.18045				# 1608
	b	beq_cont.18046				# 1608
beq_else.18045:
	slwi	r2, r5, 2				# 192
	lwz	r6, 92(r3)				# 192
	lfsx	f0, r6, r2				# 192
	slwi	r2, r5, 2				# 192
	lwz	r7, 40(r3)				# 192
	lfsx	f1, r7, r2				# 192
	lfs	f2, 224(r3)				# 192
	fmul	f1, f2, f1				# 192
	fadd	f0, f0, f1				# 192
	slwi	r2, r5, 2				# 192
	stfsx	f0, r6, r2				# 192
	lwz	r2, 116(r3)				# 193
	slwi	r8, r2, 2				# 193
	lfsx	f0, r6, r8				# 193
	slwi	r8, r2, 2				# 193
	lfsx	f1, r7, r8				# 193
	fmul	f1, f2, f1				# 193
	fadd	f0, f0, f1				# 193
	slwi	r8, r2, 2				# 193
	stfsx	f0, r6, r8				# 193
	lwz	r8, 112(r3)				# 194
	slwi	r9, r8, 2				# 194
	lfsx	f0, r6, r9				# 194
	slwi	r9, r8, 2				# 194
	lfsx	f1, r7, r9				# 194
	fmul	f1, f2, f1				# 194
	fadd	f0, f0, f1				# 194
	slwi	r7, r8, 2				# 194
	stfsx	f0, r6, r7				# 194
beq_cont.18046:
	lfs	f0, 232(r3)				# 1613
	mfspr	r31, 8				# 1613
	stw	r31, 240(r3)				# 1613
	addi	r3, r3, 244				# 1613
	bl	min_caml_fispos				# 1613
	addi	r3, r3, -244				# 1613
	lwz	r31, 240(r3)				# 1613
	mtspr	8, r31				# 1613
	lwz	r5, 144(r3)				# 1613
	cmpw	cr7, r2, r5				# 1613
	bne	cr7, beq_else.18047				# 1613
	b	beq_cont.18048				# 1613
beq_else.18047:
	lfs	f0, 232(r3)				# 1614
	mfspr	r31, 8				# 1614
	stw	r31, 240(r3)				# 1614
	addi	r3, r3, 244				# 1614
	bl	min_caml_fsqr				# 1614
	addi	r3, r3, -244				# 1614
	lwz	r31, 240(r3)				# 1614
	mtspr	8, r31				# 1614
	mfspr	r31, 8				# 1614
	stw	r31, 240(r3)				# 1614
	addi	r3, r3, 244				# 1614
	bl	min_caml_fsqr				# 1614
	addi	r3, r3, -244				# 1614
	lwz	r31, 240(r3)				# 1614
	mtspr	8, r31				# 1614
	lfs	f1, 216(r3)				# 1614
	fmul	f0, f0, f1				# 1614
	lwz	r2, 144(r3)				# 1615
	slwi	r5, r2, 2				# 1615
	lwz	r6, 92(r3)				# 1615
	lfsx	f2, r6, r5				# 1615
	fadd	f2, f2, f0				# 1615
	slwi	r5, r2, 2				# 1615
	stfsx	f2, r6, r5				# 1615
	lwz	r5, 116(r3)				# 1616
	slwi	r7, r5, 2				# 1616
	lfsx	f2, r6, r7				# 1616
	fadd	f2, f2, f0				# 1616
	slwi	r7, r5, 2				# 1616
	stfsx	f2, r6, r7				# 1616
	lwz	r7, 112(r3)				# 1617
	slwi	r8, r7, 2				# 1617
	lfsx	f2, r6, r8				# 1617
	fadd	f0, f2, f0				# 1617
	slwi	r8, r7, 2				# 1617
	stfsx	f0, r6, r8				# 1617
beq_cont.18048:
	b	beq_cont.18044				# 1688
beq_else.18043:
beq_cont.18044:
	lwz	r2, 144(r3)				# 153
	slwi	r5, r2, 2				# 153
	lwz	r6, 56(r3)				# 153
	lfsx	f0, r6, r5				# 153
	slwi	r5, r2, 2				# 153
	lwz	r7, 28(r3)				# 153
	stfsx	f0, r7, r5				# 153
	lwz	r5, 116(r3)				# 154
	slwi	r8, r5, 2				# 154
	lfsx	f0, r6, r8				# 154
	slwi	r8, r5, 2				# 154
	stfsx	f0, r7, r8				# 154
	lwz	r8, 112(r3)				# 155
	slwi	r9, r8, 2				# 155
	lfsx	f0, r6, r9				# 155
	slwi	r9, r8, 2				# 155
	stfsx	f0, r7, r9				# 155
	slwi	r7, r2, 2				# 1148
	lwz	r9, 24(r3)				# 1148
	lwzx	r7, r9, r7				# 1148
	sub	r7, r7, r5				# 1148
	lwz	r30, 12(r3)				# 1148
	mfspr	r31, 8				# 1148
	mr	r5, r7				# 1148
	mr	r2, r6				# 1148
	stw	r31, 240(r3)				# 1148
	addi	r3, r3, 244				# 1148
	lwz	r31, 0(r30)				# 1148
	mtspr	9, r31				# 1148
	bctrl				# 1148
	addi	r3, r3, -244				# 1148
	lwz	r31, 240(r3)				# 1148
	mtspr	8, r31				# 1148
	lwz	r2, 144(r3)				# 1696
	slwi	r5, r2, 2				# 1696
	lwz	r6, 4(r3)				# 1696
	lwzx	r5, r6, r5				# 1696
	lwz	r6, 116(r3)				# 1696
	sub	r5, r5, r6				# 1696
	lfs	f0, 176(r3)				# 1696
	lfs	f1, 216(r3)				# 1696
	lwz	r7, 124(r3)				# 1696
	lwz	r30, 0(r3)				# 1696
	mfspr	r31, 8				# 1696
	mr	r2, r5				# 1696
	mr	r5, r7				# 1696
	stw	r31, 240(r3)				# 1696
	addi	r3, r3, 244				# 1696
	lwz	r31, 0(r30)				# 1696
	mtspr	9, r31				# 1696
	bctrl				# 1696
	addi	r3, r3, -244				# 1696
	lwz	r31, 240(r3)				# 1696
	mtspr	8, r31				# 1696
	lis	r31, ha16(l.12324)
	addi	r31, r31, lo16(l.12324)
	lfs	f0, 0(r31)				# 1699
	lfs	f1, 104(r3)				# 1699
	mfspr	r31, 8				# 1699
	stw	r31, 240(r3)				# 1699
	addi	r3, r3, 244				# 1699
	bl	min_caml_fless				# 1699
	addi	r3, r3, -244				# 1699
	lwz	r31, 240(r3)				# 1699
	mtspr	8, r31				# 1699
	lwz	r5, 144(r3)				# 1699
	cmpw	cr7, r2, r5				# 1699
	bne	cr7, beq_else.18049				# 1699
	blr
beq_else.18049:
	lwz	r2, 136(r3)				# 1701
	cmpwi	cr7, r2, 4				# 1701
	blt	cr7, bge_else.18051				# 1701
	b	bge_cont.18052				# 1701
bge_else.18051:
	lwz	r6, 116(r3)				# 1702
	add	r7, r2, r6				# 1702
	slwi	r7, r7, 2				# 1702
	lwz	r8, 128(r3)				# 1702
	lwz	r9, 132(r3)				# 1702
	stwx	r9, r8, r7				# 1702
bge_cont.18052:
	lwz	r6, 112(r3)				# 1705
	lwz	r7, 168(r3)				# 1705
	cmpw	cr7, r7, r6				# 1705
	bne	cr7, beq_else.18053				# 1705
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 1706
	lwz	r6, 188(r3)				# 347
	lwz	r6, 28(r6)				# 347
	slwi	r7, r5, 2				# 352
	lfsx	f1, r6, r7				# 352
	fsub	f0, f0, f1				# 1706
	lfs	f1, 104(r3)				# 1706
	fmul	f0, f1, f0				# 1706
	lwz	r6, 116(r3)				# 1707
	add	r2, r2, r6				# 1707
	slwi	r5, r5, 2				# 1707
	lwz	r6, 140(r3)				# 1707
	lfsx	f1, r6, r5				# 1707
	lfs	f2, 16(r3)				# 1707
	fadd	f1, f2, f1				# 1707
	lwz	r5, 124(r3)				# 1707
	lwz	r6, 44(r3)				# 1707
	lwz	r30, 8(r3)				# 1707
	lwz	r29, 0(r30)				# 1707
	mtspr	9, r29
	bctr				# 1707
beq_else.18053:
	blr
ble_else.18018:
	blr
iter_trace_diffuse_rays.2808:
	lwz	r8, 68(r30)				# 1757
	lwz	r9, 64(r30)				# 1757
	lwz	r10, 60(r30)				# 1757
	lwz	r11, 56(r30)				# 1757
	lwz	r12, 52(r30)				# 1757
	lwz	r13, 48(r30)				# 1757
	lwz	r14, 44(r30)				# 1757
	lwz	r15, 40(r30)				# 1757
	lwz	r16, 36(r30)				# 1757
	lwz	r17, 32(r30)				# 1757
	lwz	r18, 28(r30)				# 1757
	lwz	r19, 24(r30)				# 1757
	lwz	r20, 20(r30)				# 1757
	lwz	r21, 16(r30)				# 1757
	lwz	r22, 12(r30)				# 1757
	lwz	r23, 8(r30)				# 1757
	lfs	f0, 4(r30)				# 1757
	cmpw	cr7, r22, r7				# 1758
	bgt	cr7, ble_else.18056				# 1758
	slwi	r24, r7, 2				# 1759
	lwzx	r24, r2, r24				# 1759
	lwz	r24, 0(r24)				# 508
	slwi	r25, r22, 2				# 182
	lfsx	f1, r24, r25				# 182
	slwi	r25, r22, 2				# 182
	lfsx	f2, r5, r25				# 182
	fmul	f1, f1, f2				# 182
	slwi	r25, r23, 2				# 182
	lfsx	f2, r24, r25				# 182
	slwi	r25, r23, 2				# 182
	lfsx	f3, r5, r25				# 182
	fmul	f2, f2, f3				# 182
	fadd	f1, f1, f2				# 182
	slwi	r25, r21, 2				# 182
	lfsx	f2, r24, r25				# 182
	slwi	r24, r21, 2				# 182
	lfsx	f3, r5, r24				# 182
	fmul	f2, f2, f3				# 182
	fadd	f1, f1, f2				# 182
	stw	r6, 0(r3)				# 1762
	stw	r5, 4(r3)				# 1762
	stw	r30, 8(r3)				# 1762
	stw	r11, 12(r3)				# 1762
	stw	r20, 16(r3)				# 1762
	stw	r21, 20(r3)				# 1762
	stw	r23, 24(r3)				# 1762
	stw	r16, 28(r3)				# 1762
	stw	r15, 32(r3)				# 1762
	stw	r12, 36(r3)				# 1762
	stw	r17, 40(r3)				# 1762
	stw	r8, 44(r3)				# 1762
	stw	r19, 48(r3)				# 1762
	stw	r14, 52(r3)				# 1762
	stw	r18, 56(r3)				# 1762
	stw	r9, 60(r3)				# 1762
	stw	r13, 64(r3)				# 1762
	stw	r10, 68(r3)				# 1762
	stfs	f0, 72(r3)				# 1762
	stfs	f1, 80(r3)				# 1762
	stw	r2, 88(r3)				# 1762
	stw	r7, 92(r3)				# 1762
	stw	r22, 96(r3)				# 1762
	mfspr	r31, 8				# 1762
	fmr	f0, f1				# 1762
	stw	r31, 100(r3)				# 1762
	addi	r3, r3, 104				# 1762
	bl	min_caml_fisneg				# 1762
	addi	r3, r3, -104				# 1762
	lwz	r31, 100(r3)				# 1762
	mtspr	8, r31				# 1762
	lwz	r5, 96(r3)				# 1762
	cmpw	cr7, r2, r5				# 1762
	bne	cr7, beq_else.18057				# 1762
	lwz	r2, 92(r3)				# 1765
	slwi	r6, r2, 2				# 1765
	lwz	r7, 88(r3)				# 1765
	lwzx	r6, r7, r6				# 1765
	lis	r31, ha16(l.12374)
	addi	r31, r31, lo16(l.12374)
	lfs	f0, 0(r31)				# 1765
	lfs	f1, 80(r3)				# 1765
	fdiv	f0, f1, f0				# 1765
	slwi	r8, r5, 2				# 1459
	lwz	r9, 68(r3)				# 1459
	lfs	f1, 72(r3)				# 1459
	stfsx	f1, r9, r8				# 1459
	slwi	r8, r5, 2				# 1460
	lwz	r10, 64(r3)				# 1460
	lwzx	r8, r10, r8				# 1460
	lwz	r30, 60(r3)				# 1460
	stfs	f0, 104(r3)				# 1460
	stw	r6, 112(r3)				# 1460
	mfspr	r31, 8				# 1460
	mr	r2, r5				# 1460
	mr	r5, r8				# 1460
	stw	r31, 116(r3)				# 1460
	addi	r3, r3, 120				# 1460
	lwz	r31, 0(r30)				# 1460
	mtspr	9, r31				# 1460
	bctrl				# 1460
	addi	r3, r3, -120				# 1460
	lwz	r31, 116(r3)				# 1460
	mtspr	8, r31				# 1460
	lwz	r2, 96(r3)				# 1461
	slwi	r5, r2, 2				# 1461
	lwz	r6, 68(r3)				# 1461
	lfsx	f1, r6, r5				# 1461
	lis	r31, ha16(l.11949)
	addi	r31, r31, lo16(l.11949)
	lfs	f0, 0(r31)				# 1463
	stfs	f1, 120(r3)				# 1463
	mfspr	r31, 8				# 1463
	stw	r31, 128(r3)				# 1463
	addi	r3, r3, 132				# 1463
	bl	min_caml_fless				# 1463
	addi	r3, r3, -132				# 1463
	lwz	r31, 128(r3)				# 1463
	mtspr	8, r31				# 1463
	lwz	r5, 96(r3)				# 1463
	cmpw	cr7, r2, r5				# 1463
	bne	cr7, beq_else.18061				# 1463
	addi	r2, 0, 0
	b	beq_cont.18062				# 1463
beq_else.18061:
	lis	r31, ha16(l.12182)
	addi	r31, r31, lo16(l.12182)
	lfs	f1, 0(r31)				# 1464
	lfs	f0, 120(r3)				# 1464
	mfspr	r31, 8				# 1464
	stw	r31, 128(r3)				# 1464
	addi	r3, r3, 132				# 1464
	bl	min_caml_fless				# 1464
	addi	r3, r3, -132				# 1464
	lwz	r31, 128(r3)				# 1464
	mtspr	8, r31				# 1464
beq_cont.18062:
	lwz	r5, 96(r3)				# 1742
	cmpw	cr7, r2, r5				# 1742
	bne	cr7, beq_else.18063				# 1742
	b	beq_cont.18064				# 1742
beq_else.18063:
	slwi	r2, r5, 2				# 1743
	lwz	r6, 56(r3)				# 1743
	lwzx	r2, r6, r2				# 1743
	slwi	r2, r2, 2				# 1743
	lwz	r6, 52(r3)				# 1743
	lwzx	r2, r6, r2				# 1743
	lwz	r6, 112(r3)				# 508
	lwz	r6, 0(r6)				# 508
	lwz	r30, 48(r3)				# 1744
	stw	r2, 128(r3)				# 1744
	mfspr	r31, 8				# 1744
	mr	r5, r6				# 1744
	stw	r31, 132(r3)				# 1744
	addi	r3, r3, 136				# 1744
	lwz	r31, 0(r30)				# 1744
	mtspr	9, r31				# 1744
	bctrl				# 1744
	addi	r3, r3, -136				# 1744
	lwz	r31, 132(r3)				# 1744
	mtspr	8, r31				# 1744
	lwz	r2, 128(r3)				# 1745
	lwz	r5, 40(r3)				# 1745
	lwz	r30, 44(r3)				# 1745
	mfspr	r31, 8				# 1745
	stw	r31, 132(r3)				# 1745
	addi	r3, r3, 136				# 1745
	lwz	r31, 0(r30)				# 1745
	mtspr	9, r31				# 1745
	bctrl				# 1745
	addi	r3, r3, -136				# 1745
	lwz	r31, 132(r3)				# 1745
	mtspr	8, r31				# 1745
	lwz	r2, 96(r3)				# 1748
	slwi	r5, r2, 2				# 1748
	lwz	r6, 64(r3)				# 1748
	lwzx	r5, r6, r5				# 1748
	lwz	r30, 36(r3)				# 1748
	mfspr	r31, 8				# 1748
	stw	r31, 132(r3)				# 1748
	addi	r3, r3, 136				# 1748
	lwz	r31, 0(r30)				# 1748
	mtspr	9, r31				# 1748
	bctrl				# 1748
	addi	r3, r3, -136				# 1748
	lwz	r31, 132(r3)				# 1748
	mtspr	8, r31				# 1748
	lwz	r5, 96(r3)				# 1748
	cmpw	cr7, r2, r5				# 1748
	bne	cr7, beq_else.18065				# 1748
	slwi	r2, r5, 2				# 182
	lwz	r6, 32(r3)				# 182
	lfsx	f0, r6, r2				# 182
	slwi	r2, r5, 2				# 182
	lwz	r7, 28(r3)				# 182
	lfsx	f1, r7, r2				# 182
	fmul	f0, f0, f1				# 182
	lwz	r2, 24(r3)				# 182
	slwi	r8, r2, 2				# 182
	lfsx	f1, r6, r8				# 182
	slwi	r8, r2, 2				# 182
	lfsx	f2, r7, r8				# 182
	fmul	f1, f1, f2				# 182
	fadd	f0, f0, f1				# 182
	lwz	r8, 20(r3)				# 182
	slwi	r9, r8, 2				# 182
	lfsx	f1, r6, r9				# 182
	slwi	r6, r8, 2				# 182
	lfsx	f2, r7, r6				# 182
	fmul	f1, f1, f2				# 182
	fadd	f0, f0, f1				# 182
	mfspr	r31, 8				# 1749
	stw	r31, 132(r3)				# 1749
	addi	r3, r3, 136				# 1749
	bl	min_caml_fneg				# 1749
	addi	r3, r3, -136				# 1749
	lwz	r31, 132(r3)				# 1749
	mtspr	8, r31				# 1749
	stfs	f0, 136(r3)				# 1750
	mfspr	r31, 8				# 1750
	stw	r31, 144(r3)				# 1750
	addi	r3, r3, 148				# 1750
	bl	min_caml_fispos				# 1750
	addi	r3, r3, -148				# 1750
	lwz	r31, 144(r3)				# 1750
	mtspr	8, r31				# 1750
	lwz	r5, 96(r3)				# 1750
	cmpw	cr7, r2, r5				# 1750
	bne	cr7, beq_else.18068				# 1750
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 1750
	b	beq_cont.18069				# 1750
beq_else.18068:
	lfs	f0, 136(r3)				# 1750
beq_cont.18069:
	lfs	f1, 104(r3)				# 1751
	fmul	f0, f1, f0				# 1751
	lwz	r2, 128(r3)				# 347
	lwz	r2, 28(r2)				# 347
	slwi	r6, r5, 2				# 352
	lfsx	f1, r2, r6				# 352
	fmul	f0, f0, f1				# 1751
	slwi	r2, r5, 2				# 192
	lwz	r6, 16(r3)				# 192
	lfsx	f1, r6, r2				# 192
	slwi	r2, r5, 2				# 192
	lwz	r7, 12(r3)				# 192
	lfsx	f2, r7, r2				# 192
	fmul	f2, f0, f2				# 192
	fadd	f1, f1, f2				# 192
	slwi	r2, r5, 2				# 192
	stfsx	f1, r6, r2				# 192
	lwz	r2, 24(r3)				# 193
	slwi	r5, r2, 2				# 193
	lfsx	f1, r6, r5				# 193
	slwi	r5, r2, 2				# 193
	lfsx	f2, r7, r5				# 193
	fmul	f2, f0, f2				# 193
	fadd	f1, f1, f2				# 193
	slwi	r2, r2, 2				# 193
	stfsx	f1, r6, r2				# 193
	lwz	r2, 20(r3)				# 194
	slwi	r5, r2, 2				# 194
	lfsx	f1, r6, r5				# 194
	slwi	r5, r2, 2				# 194
	lfsx	f2, r7, r5				# 194
	fmul	f0, f0, f2				# 194
	fadd	f0, f1, f0				# 194
	slwi	r5, r2, 2				# 194
	stfsx	f0, r6, r5				# 194
	b	beq_cont.18066				# 1748
beq_else.18065:
beq_cont.18066:
beq_cont.18064:
	b	beq_cont.18058				# 1762
beq_else.18057:
	lwz	r2, 24(r3)				# 1763
	lwz	r6, 92(r3)				# 1763
	add	r7, r6, r2				# 1763
	slwi	r7, r7, 2				# 1763
	lwz	r8, 88(r3)				# 1763
	lwzx	r7, r8, r7				# 1763
	lis	r31, ha16(l.12350)
	addi	r31, r31, lo16(l.12350)
	lfs	f0, 0(r31)				# 1763
	lfs	f1, 80(r3)				# 1763
	fdiv	f0, f1, f0				# 1763
	slwi	r9, r5, 2				# 1459
	lwz	r10, 68(r3)				# 1459
	lfs	f1, 72(r3)				# 1459
	stfsx	f1, r10, r9				# 1459
	slwi	r9, r5, 2				# 1460
	lwz	r11, 64(r3)				# 1460
	lwzx	r9, r11, r9				# 1460
	lwz	r30, 60(r3)				# 1460
	stfs	f0, 144(r3)				# 1460
	stw	r7, 152(r3)				# 1460
	mfspr	r31, 8				# 1460
	mr	r6, r7				# 1460
	mr	r2, r5				# 1460
	mr	r5, r9				# 1460
	stw	r31, 156(r3)				# 1460
	addi	r3, r3, 160				# 1460
	lwz	r31, 0(r30)				# 1460
	mtspr	9, r31				# 1460
	bctrl				# 1460
	addi	r3, r3, -160				# 1460
	lwz	r31, 156(r3)				# 1460
	mtspr	8, r31				# 1460
	lwz	r2, 96(r3)				# 1461
	slwi	r5, r2, 2				# 1461
	lwz	r6, 68(r3)				# 1461
	lfsx	f1, r6, r5				# 1461
	lis	r31, ha16(l.11949)
	addi	r31, r31, lo16(l.11949)
	lfs	f0, 0(r31)				# 1463
	stfs	f1, 160(r3)				# 1463
	mfspr	r31, 8				# 1463
	stw	r31, 168(r3)				# 1463
	addi	r3, r3, 172				# 1463
	bl	min_caml_fless				# 1463
	addi	r3, r3, -172				# 1463
	lwz	r31, 168(r3)				# 1463
	mtspr	8, r31				# 1463
	lwz	r5, 96(r3)				# 1463
	cmpw	cr7, r2, r5				# 1463
	bne	cr7, beq_else.18071				# 1463
	addi	r2, 0, 0
	b	beq_cont.18072				# 1463
beq_else.18071:
	lis	r31, ha16(l.12182)
	addi	r31, r31, lo16(l.12182)
	lfs	f1, 0(r31)				# 1464
	lfs	f0, 160(r3)				# 1464
	mfspr	r31, 8				# 1464
	stw	r31, 168(r3)				# 1464
	addi	r3, r3, 172				# 1464
	bl	min_caml_fless				# 1464
	addi	r3, r3, -172				# 1464
	lwz	r31, 168(r3)				# 1464
	mtspr	8, r31				# 1464
beq_cont.18072:
	lwz	r5, 96(r3)				# 1742
	cmpw	cr7, r2, r5				# 1742
	bne	cr7, beq_else.18073				# 1742
	b	beq_cont.18074				# 1742
beq_else.18073:
	slwi	r2, r5, 2				# 1743
	lwz	r6, 56(r3)				# 1743
	lwzx	r2, r6, r2				# 1743
	slwi	r2, r2, 2				# 1743
	lwz	r6, 52(r3)				# 1743
	lwzx	r2, r6, r2				# 1743
	lwz	r6, 152(r3)				# 508
	lwz	r6, 0(r6)				# 508
	lwz	r30, 48(r3)				# 1744
	stw	r2, 168(r3)				# 1744
	mfspr	r31, 8				# 1744
	mr	r5, r6				# 1744
	stw	r31, 172(r3)				# 1744
	addi	r3, r3, 176				# 1744
	lwz	r31, 0(r30)				# 1744
	mtspr	9, r31				# 1744
	bctrl				# 1744
	addi	r3, r3, -176				# 1744
	lwz	r31, 172(r3)				# 1744
	mtspr	8, r31				# 1744
	lwz	r2, 168(r3)				# 1745
	lwz	r5, 40(r3)				# 1745
	lwz	r30, 44(r3)				# 1745
	mfspr	r31, 8				# 1745
	stw	r31, 172(r3)				# 1745
	addi	r3, r3, 176				# 1745
	lwz	r31, 0(r30)				# 1745
	mtspr	9, r31				# 1745
	bctrl				# 1745
	addi	r3, r3, -176				# 1745
	lwz	r31, 172(r3)				# 1745
	mtspr	8, r31				# 1745
	lwz	r2, 96(r3)				# 1748
	slwi	r5, r2, 2				# 1748
	lwz	r6, 64(r3)				# 1748
	lwzx	r5, r6, r5				# 1748
	lwz	r30, 36(r3)				# 1748
	mfspr	r31, 8				# 1748
	stw	r31, 172(r3)				# 1748
	addi	r3, r3, 176				# 1748
	lwz	r31, 0(r30)				# 1748
	mtspr	9, r31				# 1748
	bctrl				# 1748
	addi	r3, r3, -176				# 1748
	lwz	r31, 172(r3)				# 1748
	mtspr	8, r31				# 1748
	lwz	r5, 96(r3)				# 1748
	cmpw	cr7, r2, r5				# 1748
	bne	cr7, beq_else.18075				# 1748
	slwi	r2, r5, 2				# 182
	lwz	r6, 32(r3)				# 182
	lfsx	f0, r6, r2				# 182
	slwi	r2, r5, 2				# 182
	lwz	r7, 28(r3)				# 182
	lfsx	f1, r7, r2				# 182
	fmul	f0, f0, f1				# 182
	lwz	r2, 24(r3)				# 182
	slwi	r8, r2, 2				# 182
	lfsx	f1, r6, r8				# 182
	slwi	r8, r2, 2				# 182
	lfsx	f2, r7, r8				# 182
	fmul	f1, f1, f2				# 182
	fadd	f0, f0, f1				# 182
	lwz	r8, 20(r3)				# 182
	slwi	r9, r8, 2				# 182
	lfsx	f1, r6, r9				# 182
	slwi	r6, r8, 2				# 182
	lfsx	f2, r7, r6				# 182
	fmul	f1, f1, f2				# 182
	fadd	f0, f0, f1				# 182
	mfspr	r31, 8				# 1749
	stw	r31, 172(r3)				# 1749
	addi	r3, r3, 176				# 1749
	bl	min_caml_fneg				# 1749
	addi	r3, r3, -176				# 1749
	lwz	r31, 172(r3)				# 1749
	mtspr	8, r31				# 1749
	stfs	f0, 176(r3)				# 1750
	mfspr	r31, 8				# 1750
	stw	r31, 184(r3)				# 1750
	addi	r3, r3, 188				# 1750
	bl	min_caml_fispos				# 1750
	addi	r3, r3, -188				# 1750
	lwz	r31, 184(r3)				# 1750
	mtspr	8, r31				# 1750
	lwz	r5, 96(r3)				# 1750
	cmpw	cr7, r2, r5				# 1750
	bne	cr7, beq_else.18078				# 1750
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 1750
	b	beq_cont.18079				# 1750
beq_else.18078:
	lfs	f0, 176(r3)				# 1750
beq_cont.18079:
	lfs	f1, 144(r3)				# 1751
	fmul	f0, f1, f0				# 1751
	lwz	r2, 168(r3)				# 347
	lwz	r2, 28(r2)				# 347
	slwi	r6, r5, 2				# 352
	lfsx	f1, r2, r6				# 352
	fmul	f0, f0, f1				# 1751
	slwi	r2, r5, 2				# 192
	lwz	r6, 16(r3)				# 192
	lfsx	f1, r6, r2				# 192
	slwi	r2, r5, 2				# 192
	lwz	r7, 12(r3)				# 192
	lfsx	f2, r7, r2				# 192
	fmul	f2, f0, f2				# 192
	fadd	f1, f1, f2				# 192
	slwi	r2, r5, 2				# 192
	stfsx	f1, r6, r2				# 192
	lwz	r2, 24(r3)				# 193
	slwi	r5, r2, 2				# 193
	lfsx	f1, r6, r5				# 193
	slwi	r5, r2, 2				# 193
	lfsx	f2, r7, r5				# 193
	fmul	f2, f0, f2				# 193
	fadd	f1, f1, f2				# 193
	slwi	r2, r2, 2				# 193
	stfsx	f1, r6, r2				# 193
	lwz	r2, 20(r3)				# 194
	slwi	r5, r2, 2				# 194
	lfsx	f1, r6, r5				# 194
	slwi	r5, r2, 2				# 194
	lfsx	f2, r7, r5				# 194
	fmul	f0, f0, f2				# 194
	fadd	f0, f1, f0				# 194
	slwi	r5, r2, 2				# 194
	stfsx	f0, r6, r5				# 194
	b	beq_cont.18076				# 1748
beq_else.18075:
beq_cont.18076:
beq_cont.18074:
beq_cont.18058:
	lwz	r2, 20(r3)				# 1767
	lwz	r5, 92(r3)				# 1767
	sub	r7, r5, r2				# 1767
	lwz	r2, 88(r3)				# 1767
	lwz	r5, 4(r3)				# 1767
	lwz	r6, 0(r3)				# 1767
	lwz	r30, 8(r3)				# 1767
	lwz	r29, 0(r30)				# 1767
	mtspr	9, r29
	bctr				# 1767
ble_else.18056:
	blr
do_without_neighbors.2830:
	lwz	r6, 44(r30)				# 1843
	lwz	r7, 40(r30)				# 1843
	lwz	r8, 36(r30)				# 1843
	lwz	r9, 32(r30)				# 1843
	lwz	r10, 28(r30)				# 1843
	lwz	r11, 24(r30)				# 1843
	lwz	r12, 20(r30)				# 1843
	lwz	r13, 16(r30)				# 1843
	lwz	r14, 12(r30)				# 1843
	lwz	r15, 8(r30)				# 1843
	lwz	r16, 4(r30)				# 1843
	cmpwi	cr7, r5, 4				# 1844
	bgt	cr7, ble_else.18081				# 1844
	lwz	r17, 8(r2)				# 455
	slwi	r18, r5, 2				# 1847
	lwzx	r17, r17, r18				# 1847
	cmpw	cr7, r15, r17				# 1847
	bgt	cr7, ble_else.18082				# 1847
	lwz	r17, 12(r2)				# 462
	slwi	r18, r5, 2				# 1849
	lwzx	r17, r17, r18				# 1849
	stw	r2, 0(r3)				# 1849
	stw	r30, 4(r3)				# 1849
	stw	r16, 8(r3)				# 1849
	stw	r5, 12(r3)				# 1849
	cmpw	cr7, r17, r15				# 1849
	bne	cr7, beq_else.18083				# 1849
	b	beq_cont.18084				# 1849
beq_else.18083:
	lwz	r17, 20(r2)				# 476
	lwz	r18, 28(r2)				# 499
	lwz	r19, 4(r2)				# 447
	lwz	r20, 16(r2)				# 469
	slwi	r21, r5, 2				# 1812
	lwzx	r17, r17, r21				# 1812
	slwi	r21, r15, 2				# 153
	lfsx	f0, r17, r21				# 153
	slwi	r21, r15, 2				# 153
	stfsx	f0, r12, r21				# 153
	slwi	r21, r16, 2				# 154
	lfsx	f0, r17, r21				# 154
	slwi	r21, r16, 2				# 154
	stfsx	f0, r12, r21				# 154
	slwi	r21, r13, 2				# 155
	lfsx	f0, r17, r21				# 155
	slwi	r17, r13, 2				# 155
	stfsx	f0, r12, r17				# 155
	lwz	r17, 24(r2)				# 485
	slwi	r21, r15, 2				# 487
	lwzx	r17, r17, r21				# 487
	slwi	r21, r5, 2				# 1815
	lwzx	r18, r18, r21				# 1815
	slwi	r21, r5, 2				# 1816
	lwzx	r19, r19, r21				# 1816
	stw	r12, 16(r3)				# 1782
	stw	r8, 20(r3)				# 1782
	stw	r20, 24(r3)				# 1782
	stw	r14, 28(r3)				# 1782
	stw	r18, 32(r3)				# 1782
	stw	r10, 36(r3)				# 1782
	stw	r7, 40(r3)				# 1782
	stw	r9, 44(r3)				# 1782
	stw	r13, 48(r3)				# 1782
	stw	r6, 52(r3)				# 1782
	stw	r19, 56(r3)				# 1782
	stw	r15, 60(r3)				# 1782
	stw	r11, 64(r3)				# 1782
	stw	r17, 68(r3)				# 1782
	cmpw	cr7, r17, r15				# 1782
	bne	cr7, beq_else.18085				# 1782
	b	beq_cont.18086				# 1782
beq_else.18085:
	slwi	r21, r15, 2				# 1783
	lwzx	r21, r11, r21				# 1783
	slwi	r22, r15, 2				# 153
	lfsx	f0, r19, r22				# 153
	slwi	r22, r15, 2				# 153
	stfsx	f0, r6, r22				# 153
	slwi	r22, r16, 2				# 154
	lfsx	f0, r19, r22				# 154
	slwi	r22, r16, 2				# 154
	stfsx	f0, r6, r22				# 154
	slwi	r22, r13, 2				# 155
	lfsx	f0, r19, r22				# 155
	slwi	r22, r13, 2				# 155
	stfsx	f0, r6, r22				# 155
	slwi	r22, r15, 2				# 1148
	lwzx	r22, r9, r22				# 1148
	sub	r22, r22, r16				# 1148
	stw	r21, 72(r3)				# 1148
	mfspr	r31, 8				# 1148
	mr	r5, r22				# 1148
	mr	r2, r19				# 1148
	mr	r30, r7				# 1148
	stw	r31, 76(r3)				# 1148
	addi	r3, r3, 80				# 1148
	lwz	r31, 0(r30)				# 1148
	mtspr	9, r31				# 1148
	bctrl				# 1148
	addi	r3, r3, -80				# 1148
	lwz	r31, 76(r3)				# 1148
	mtspr	8, r31				# 1148
	addi	r7, 0, 118
	lwz	r2, 72(r3)				# 1776
	lwz	r5, 32(r3)				# 1776
	lwz	r6, 56(r3)				# 1776
	lwz	r30, 36(r3)				# 1776
	mfspr	r31, 8				# 1776
	stw	r31, 76(r3)				# 1776
	addi	r3, r3, 80				# 1776
	lwz	r31, 0(r30)				# 1776
	mtspr	9, r31				# 1776
	bctrl				# 1776
	addi	r3, r3, -80				# 1776
	lwz	r31, 76(r3)				# 1776
	mtspr	8, r31				# 1776
beq_cont.18086:
	lwz	r2, 8(r3)				# 1786
	lwz	r5, 68(r3)				# 1786
	cmpw	cr7, r5, r2				# 1786
	bne	cr7, beq_else.18087				# 1786
	b	beq_cont.18088				# 1786
beq_else.18087:
	slwi	r6, r2, 2				# 1787
	lwz	r7, 64(r3)				# 1787
	lwzx	r6, r7, r6				# 1787
	lwz	r8, 60(r3)				# 153
	slwi	r9, r8, 2				# 153
	lwz	r10, 56(r3)				# 153
	lfsx	f0, r10, r9				# 153
	slwi	r9, r8, 2				# 153
	lwz	r11, 52(r3)				# 153
	stfsx	f0, r11, r9				# 153
	slwi	r9, r2, 2				# 154
	lfsx	f0, r10, r9				# 154
	slwi	r9, r2, 2				# 154
	stfsx	f0, r11, r9				# 154
	lwz	r9, 48(r3)				# 155
	slwi	r12, r9, 2				# 155
	lfsx	f0, r10, r12				# 155
	slwi	r12, r9, 2				# 155
	stfsx	f0, r11, r12				# 155
	slwi	r12, r8, 2				# 1148
	lwz	r13, 44(r3)				# 1148
	lwzx	r12, r13, r12				# 1148
	sub	r12, r12, r2				# 1148
	lwz	r30, 40(r3)				# 1148
	stw	r6, 76(r3)				# 1148
	mfspr	r31, 8				# 1148
	mr	r5, r12				# 1148
	mr	r2, r10				# 1148
	stw	r31, 80(r3)				# 1148
	addi	r3, r3, 84				# 1148
	lwz	r31, 0(r30)				# 1148
	mtspr	9, r31				# 1148
	bctrl				# 1148
	addi	r3, r3, -84				# 1148
	lwz	r31, 80(r3)				# 1148
	mtspr	8, r31				# 1148
	addi	r7, 0, 118
	lwz	r2, 76(r3)				# 1776
	lwz	r5, 32(r3)				# 1776
	lwz	r6, 56(r3)				# 1776
	lwz	r30, 36(r3)				# 1776
	mfspr	r31, 8				# 1776
	stw	r31, 80(r3)				# 1776
	addi	r3, r3, 84				# 1776
	lwz	r31, 0(r30)				# 1776
	mtspr	9, r31				# 1776
	bctrl				# 1776
	addi	r3, r3, -84				# 1776
	lwz	r31, 80(r3)				# 1776
	mtspr	8, r31				# 1776
beq_cont.18088:
	lwz	r2, 48(r3)				# 1790
	lwz	r5, 68(r3)				# 1790
	cmpw	cr7, r5, r2				# 1790
	bne	cr7, beq_else.18089				# 1790
	b	beq_cont.18090				# 1790
beq_else.18089:
	slwi	r6, r2, 2				# 1791
	lwz	r7, 64(r3)				# 1791
	lwzx	r6, r7, r6				# 1791
	lwz	r8, 60(r3)				# 153
	slwi	r9, r8, 2				# 153
	lwz	r10, 56(r3)				# 153
	lfsx	f0, r10, r9				# 153
	slwi	r9, r8, 2				# 153
	lwz	r11, 52(r3)				# 153
	stfsx	f0, r11, r9				# 153
	lwz	r9, 8(r3)				# 154
	slwi	r12, r9, 2				# 154
	lfsx	f0, r10, r12				# 154
	slwi	r12, r9, 2				# 154
	stfsx	f0, r11, r12				# 154
	slwi	r12, r2, 2				# 155
	lfsx	f0, r10, r12				# 155
	slwi	r12, r2, 2				# 155
	stfsx	f0, r11, r12				# 155
	slwi	r12, r8, 2				# 1148
	lwz	r13, 44(r3)				# 1148
	lwzx	r12, r13, r12				# 1148
	sub	r12, r12, r9				# 1148
	lwz	r30, 40(r3)				# 1148
	stw	r6, 80(r3)				# 1148
	mfspr	r31, 8				# 1148
	mr	r5, r12				# 1148
	mr	r2, r10				# 1148
	stw	r31, 84(r3)				# 1148
	addi	r3, r3, 88				# 1148
	lwz	r31, 0(r30)				# 1148
	mtspr	9, r31				# 1148
	bctrl				# 1148
	addi	r3, r3, -88				# 1148
	lwz	r31, 84(r3)				# 1148
	mtspr	8, r31				# 1148
	addi	r7, 0, 118
	lwz	r2, 80(r3)				# 1776
	lwz	r5, 32(r3)				# 1776
	lwz	r6, 56(r3)				# 1776
	lwz	r30, 36(r3)				# 1776
	mfspr	r31, 8				# 1776
	stw	r31, 84(r3)				# 1776
	addi	r3, r3, 88				# 1776
	lwz	r31, 0(r30)				# 1776
	mtspr	9, r31				# 1776
	bctrl				# 1776
	addi	r3, r3, -88				# 1776
	lwz	r31, 84(r3)				# 1776
	mtspr	8, r31				# 1776
beq_cont.18090:
	lwz	r2, 28(r3)				# 1794
	lwz	r5, 68(r3)				# 1794
	cmpw	cr7, r5, r2				# 1794
	bne	cr7, beq_else.18091				# 1794
	b	beq_cont.18092				# 1794
beq_else.18091:
	slwi	r2, r2, 2				# 1795
	lwz	r6, 64(r3)				# 1795
	lwzx	r2, r6, r2				# 1795
	lwz	r7, 60(r3)				# 153
	slwi	r8, r7, 2				# 153
	lwz	r9, 56(r3)				# 153
	lfsx	f0, r9, r8				# 153
	slwi	r8, r7, 2				# 153
	lwz	r10, 52(r3)				# 153
	stfsx	f0, r10, r8				# 153
	lwz	r8, 8(r3)				# 154
	slwi	r11, r8, 2				# 154
	lfsx	f0, r9, r11				# 154
	slwi	r11, r8, 2				# 154
	stfsx	f0, r10, r11				# 154
	lwz	r11, 48(r3)				# 155
	slwi	r12, r11, 2				# 155
	lfsx	f0, r9, r12				# 155
	slwi	r12, r11, 2				# 155
	stfsx	f0, r10, r12				# 155
	slwi	r12, r7, 2				# 1148
	lwz	r13, 44(r3)				# 1148
	lwzx	r12, r13, r12				# 1148
	sub	r12, r12, r8				# 1148
	lwz	r30, 40(r3)				# 1148
	stw	r2, 84(r3)				# 1148
	mfspr	r31, 8				# 1148
	mr	r5, r12				# 1148
	mr	r2, r9				# 1148
	stw	r31, 88(r3)				# 1148
	addi	r3, r3, 92				# 1148
	lwz	r31, 0(r30)				# 1148
	mtspr	9, r31				# 1148
	bctrl				# 1148
	addi	r3, r3, -92				# 1148
	lwz	r31, 88(r3)				# 1148
	mtspr	8, r31				# 1148
	addi	r7, 0, 118
	lwz	r2, 84(r3)				# 1776
	lwz	r5, 32(r3)				# 1776
	lwz	r6, 56(r3)				# 1776
	lwz	r30, 36(r3)				# 1776
	mfspr	r31, 8				# 1776
	stw	r31, 88(r3)				# 1776
	addi	r3, r3, 92				# 1776
	lwz	r31, 0(r30)				# 1776
	mtspr	9, r31				# 1776
	bctrl				# 1776
	addi	r3, r3, -92				# 1776
	lwz	r31, 88(r3)				# 1776
	mtspr	8, r31				# 1776
beq_cont.18092:
	lwz	r2, 68(r3)				# 1798
	cmpwi	cr7, r2, 4				# 1798
	bne	cr7, beq_else.18093				# 1798
	b	beq_cont.18094				# 1798
beq_else.18093:
	lwz	r2, 64(r3)				# 1799
	lwz	r2, 16(r2)				# 1799
	lwz	r5, 60(r3)				# 153
	slwi	r6, r5, 2				# 153
	lwz	r7, 56(r3)				# 153
	lfsx	f0, r7, r6				# 153
	slwi	r6, r5, 2				# 153
	lwz	r8, 52(r3)				# 153
	stfsx	f0, r8, r6				# 153
	lwz	r6, 8(r3)				# 154
	slwi	r9, r6, 2				# 154
	lfsx	f0, r7, r9				# 154
	slwi	r9, r6, 2				# 154
	stfsx	f0, r8, r9				# 154
	lwz	r9, 48(r3)				# 155
	slwi	r10, r9, 2				# 155
	lfsx	f0, r7, r10				# 155
	slwi	r10, r9, 2				# 155
	stfsx	f0, r8, r10				# 155
	slwi	r8, r5, 2				# 1148
	lwz	r10, 44(r3)				# 1148
	lwzx	r8, r10, r8				# 1148
	sub	r8, r8, r6				# 1148
	lwz	r30, 40(r3)				# 1148
	stw	r2, 88(r3)				# 1148
	mfspr	r31, 8				# 1148
	mr	r5, r8				# 1148
	mr	r2, r7				# 1148
	stw	r31, 92(r3)				# 1148
	addi	r3, r3, 96				# 1148
	lwz	r31, 0(r30)				# 1148
	mtspr	9, r31				# 1148
	bctrl				# 1148
	addi	r3, r3, -96				# 1148
	lwz	r31, 92(r3)				# 1148
	mtspr	8, r31				# 1148
	addi	r7, 0, 118
	lwz	r2, 88(r3)				# 1776
	lwz	r5, 32(r3)				# 1776
	lwz	r6, 56(r3)				# 1776
	lwz	r30, 36(r3)				# 1776
	mfspr	r31, 8				# 1776
	stw	r31, 92(r3)				# 1776
	addi	r3, r3, 96				# 1776
	lwz	r31, 0(r30)				# 1776
	mtspr	9, r31				# 1776
	bctrl				# 1776
	addi	r3, r3, -96				# 1776
	lwz	r31, 92(r3)				# 1776
	mtspr	8, r31				# 1776
beq_cont.18094:
	lwz	r2, 12(r3)				# 1817
	slwi	r5, r2, 2				# 1817
	lwz	r6, 24(r3)				# 1817
	lwzx	r5, r6, r5				# 1817
	lwz	r6, 60(r3)				# 220
	slwi	r7, r6, 2				# 220
	lwz	r8, 20(r3)				# 220
	lfsx	f0, r8, r7				# 220
	slwi	r7, r6, 2				# 220
	lfsx	f1, r5, r7				# 220
	slwi	r7, r6, 2				# 220
	lwz	r9, 16(r3)				# 220
	lfsx	f2, r9, r7				# 220
	fmul	f1, f1, f2				# 220
	fadd	f0, f0, f1				# 220
	slwi	r6, r6, 2				# 220
	stfsx	f0, r8, r6				# 220
	lwz	r6, 8(r3)				# 221
	slwi	r7, r6, 2				# 221
	lfsx	f0, r8, r7				# 221
	slwi	r7, r6, 2				# 221
	lfsx	f1, r5, r7				# 221
	slwi	r7, r6, 2				# 221
	lfsx	f2, r9, r7				# 221
	fmul	f1, f1, f2				# 221
	fadd	f0, f0, f1				# 221
	slwi	r7, r6, 2				# 221
	stfsx	f0, r8, r7				# 221
	lwz	r7, 48(r3)				# 222
	slwi	r10, r7, 2				# 222
	lfsx	f0, r8, r10				# 222
	slwi	r10, r7, 2				# 222
	lfsx	f1, r5, r10				# 222
	slwi	r5, r7, 2				# 222
	lfsx	f2, r9, r5				# 222
	fmul	f1, f1, f2				# 222
	fadd	f0, f0, f1				# 222
	slwi	r5, r7, 2				# 222
	stfsx	f0, r8, r5				# 222
beq_cont.18084:
	lwz	r2, 8(r3)				# 1852
	lwz	r5, 12(r3)				# 1852
	add	r5, r5, r2				# 1852
	lwz	r2, 0(r3)				# 1852
	lwz	r30, 4(r3)				# 1852
	lwz	r29, 0(r30)				# 1852
	mtspr	9, r29
	bctr				# 1852
ble_else.18082:
	blr
ble_else.18081:
	blr
try_exploit_neighbors.2846:
	lwz	r10, 24(r30)				# 1892
	lwz	r11, 20(r30)				# 1892
	lwz	r12, 16(r30)				# 1892
	lwz	r13, 12(r30)				# 1892
	lwz	r14, 8(r30)				# 1892
	lwz	r15, 4(r30)				# 1892
	slwi	r16, r2, 2				# 1893
	lwzx	r16, r7, r16				# 1893
	cmpwi	cr7, r9, 4				# 1894
	bgt	cr7, ble_else.18097				# 1894
	lwz	r17, 8(r16)				# 455
	slwi	r18, r9, 2				# 1872
	lwzx	r17, r17, r18				# 1872
	cmpw	cr7, r14, r17				# 1897
	bgt	cr7, ble_else.18098				# 1897
	slwi	r17, r2, 2				# 1877
	lwzx	r17, r7, r17				# 1877
	lwz	r17, 8(r17)				# 455
	slwi	r18, r9, 2				# 1872
	lwzx	r17, r17, r18				# 1872
	slwi	r18, r2, 2				# 1879
	lwzx	r18, r6, r18				# 1879
	lwz	r18, 8(r18)				# 455
	slwi	r19, r9, 2				# 1872
	lwzx	r18, r18, r19				# 1872
	cmpw	cr7, r18, r17				# 1879
	bne	cr7, beq_else.18099				# 1879
	slwi	r18, r2, 2				# 1880
	lwzx	r18, r8, r18				# 1880
	lwz	r18, 8(r18)				# 455
	slwi	r19, r9, 2				# 1872
	lwzx	r18, r18, r19				# 1872
	cmpw	cr7, r18, r17				# 1880
	bne	cr7, beq_else.18101				# 1880
	sub	r18, r2, r15				# 1881
	slwi	r18, r18, 2				# 1881
	lwzx	r18, r7, r18				# 1881
	lwz	r18, 8(r18)				# 455
	slwi	r19, r9, 2				# 1872
	lwzx	r18, r18, r19				# 1872
	cmpw	cr7, r18, r17				# 1881
	bne	cr7, beq_else.18103				# 1881
	add	r18, r2, r15				# 1882
	slwi	r18, r18, 2				# 1882
	lwzx	r18, r7, r18				# 1882
	lwz	r18, 8(r18)				# 455
	slwi	r19, r9, 2				# 1872
	lwzx	r18, r18, r19				# 1872
	cmpw	cr7, r18, r17				# 1882
	bne	cr7, beq_else.18105				# 1882
	addi	r17, 0, 1
	b	beq_cont.18106				# 1882
beq_else.18105:
	addi	r17, 0, 0
beq_cont.18106:
	b	beq_cont.18104				# 1881
beq_else.18103:
	addi	r17, 0, 0
beq_cont.18104:
	b	beq_cont.18102				# 1880
beq_else.18101:
	addi	r17, 0, 0
beq_cont.18102:
	b	beq_cont.18100				# 1879
beq_else.18099:
	addi	r17, 0, 0
beq_cont.18100:
	cmpw	cr7, r17, r14				# 1899
	bne	cr7, beq_else.18107				# 1899
	slwi	r2, r2, 2				# 1911
	lwzx	r2, r7, r2				# 1911
	mr	r5, r9				# 1911
	mr	r30, r11				# 1911
	lwz	r29, 0(r30)				# 1911
	mtspr	9, r29
	bctr				# 1911
beq_else.18107:
	lwz	r11, 12(r16)				# 462
	slwi	r16, r9, 2				# 1903
	lwzx	r11, r11, r16				# 1903
	cmpw	cr7, r11, r14				# 1903
	bne	cr7, beq_else.18108				# 1903
	b	beq_cont.18109				# 1903
beq_else.18108:
	slwi	r11, r2, 2				# 1825
	lwzx	r11, r6, r11				# 1825
	lwz	r11, 20(r11)				# 476
	sub	r16, r2, r15				# 1826
	slwi	r16, r16, 2				# 1826
	lwzx	r16, r7, r16				# 1826
	lwz	r16, 20(r16)				# 476
	slwi	r17, r2, 2				# 1827
	lwzx	r17, r7, r17				# 1827
	lwz	r17, 20(r17)				# 476
	add	r18, r2, r15				# 1828
	slwi	r18, r18, 2				# 1828
	lwzx	r18, r7, r18				# 1828
	lwz	r18, 20(r18)				# 476
	slwi	r19, r2, 2				# 1829
	lwzx	r19, r8, r19				# 1829
	lwz	r19, 20(r19)				# 476
	slwi	r20, r9, 2				# 1831
	lwzx	r11, r11, r20				# 1831
	slwi	r20, r14, 2				# 153
	lfsx	f0, r11, r20				# 153
	slwi	r20, r14, 2				# 153
	stfsx	f0, r12, r20				# 153
	slwi	r20, r15, 2				# 154
	lfsx	f0, r11, r20				# 154
	slwi	r20, r15, 2				# 154
	stfsx	f0, r12, r20				# 154
	slwi	r20, r13, 2				# 155
	lfsx	f0, r11, r20				# 155
	slwi	r11, r13, 2				# 155
	stfsx	f0, r12, r11				# 155
	slwi	r11, r9, 2				# 1832
	lwzx	r11, r16, r11				# 1832
	slwi	r16, r14, 2				# 199
	lfsx	f0, r12, r16				# 199
	slwi	r16, r14, 2				# 199
	lfsx	f1, r11, r16				# 199
	fadd	f0, f0, f1				# 199
	slwi	r16, r14, 2				# 199
	stfsx	f0, r12, r16				# 199
	slwi	r16, r15, 2				# 200
	lfsx	f0, r12, r16				# 200
	slwi	r16, r15, 2				# 200
	lfsx	f1, r11, r16				# 200
	fadd	f0, f0, f1				# 200
	slwi	r16, r15, 2				# 200
	stfsx	f0, r12, r16				# 200
	slwi	r16, r13, 2				# 201
	lfsx	f0, r12, r16				# 201
	slwi	r16, r13, 2				# 201
	lfsx	f1, r11, r16				# 201
	fadd	f0, f0, f1				# 201
	slwi	r11, r13, 2				# 201
	stfsx	f0, r12, r11				# 201
	slwi	r11, r9, 2				# 1833
	lwzx	r11, r17, r11				# 1833
	slwi	r16, r14, 2				# 199
	lfsx	f0, r12, r16				# 199
	slwi	r16, r14, 2				# 199
	lfsx	f1, r11, r16				# 199
	fadd	f0, f0, f1				# 199
	slwi	r16, r14, 2				# 199
	stfsx	f0, r12, r16				# 199
	slwi	r16, r15, 2				# 200
	lfsx	f0, r12, r16				# 200
	slwi	r16, r15, 2				# 200
	lfsx	f1, r11, r16				# 200
	fadd	f0, f0, f1				# 200
	slwi	r16, r15, 2				# 200
	stfsx	f0, r12, r16				# 200
	slwi	r16, r13, 2				# 201
	lfsx	f0, r12, r16				# 201
	slwi	r16, r13, 2				# 201
	lfsx	f1, r11, r16				# 201
	fadd	f0, f0, f1				# 201
	slwi	r11, r13, 2				# 201
	stfsx	f0, r12, r11				# 201
	slwi	r11, r9, 2				# 1834
	lwzx	r11, r18, r11				# 1834
	slwi	r16, r14, 2				# 199
	lfsx	f0, r12, r16				# 199
	slwi	r16, r14, 2				# 199
	lfsx	f1, r11, r16				# 199
	fadd	f0, f0, f1				# 199
	slwi	r16, r14, 2				# 199
	stfsx	f0, r12, r16				# 199
	slwi	r16, r15, 2				# 200
	lfsx	f0, r12, r16				# 200
	slwi	r16, r15, 2				# 200
	lfsx	f1, r11, r16				# 200
	fadd	f0, f0, f1				# 200
	slwi	r16, r15, 2				# 200
	stfsx	f0, r12, r16				# 200
	slwi	r16, r13, 2				# 201
	lfsx	f0, r12, r16				# 201
	slwi	r16, r13, 2				# 201
	lfsx	f1, r11, r16				# 201
	fadd	f0, f0, f1				# 201
	slwi	r11, r13, 2				# 201
	stfsx	f0, r12, r11				# 201
	slwi	r11, r9, 2				# 1835
	lwzx	r11, r19, r11				# 1835
	slwi	r16, r14, 2				# 199
	lfsx	f0, r12, r16				# 199
	slwi	r16, r14, 2				# 199
	lfsx	f1, r11, r16				# 199
	fadd	f0, f0, f1				# 199
	slwi	r16, r14, 2				# 199
	stfsx	f0, r12, r16				# 199
	slwi	r16, r15, 2				# 200
	lfsx	f0, r12, r16				# 200
	slwi	r16, r15, 2				# 200
	lfsx	f1, r11, r16				# 200
	fadd	f0, f0, f1				# 200
	slwi	r16, r15, 2				# 200
	stfsx	f0, r12, r16				# 200
	slwi	r16, r13, 2				# 201
	lfsx	f0, r12, r16				# 201
	slwi	r16, r13, 2				# 201
	lfsx	f1, r11, r16				# 201
	fadd	f0, f0, f1				# 201
	slwi	r11, r13, 2				# 201
	stfsx	f0, r12, r11				# 201
	slwi	r11, r2, 2				# 1837
	lwzx	r11, r7, r11				# 1837
	lwz	r11, 16(r11)				# 469
	slwi	r16, r9, 2				# 1838
	lwzx	r11, r11, r16				# 1838
	slwi	r16, r14, 2				# 220
	lfsx	f0, r10, r16				# 220
	slwi	r16, r14, 2				# 220
	lfsx	f1, r11, r16				# 220
	slwi	r16, r14, 2				# 220
	lfsx	f2, r12, r16				# 220
	fmul	f1, f1, f2				# 220
	fadd	f0, f0, f1				# 220
	slwi	r14, r14, 2				# 220
	stfsx	f0, r10, r14				# 220
	slwi	r14, r15, 2				# 221
	lfsx	f0, r10, r14				# 221
	slwi	r14, r15, 2				# 221
	lfsx	f1, r11, r14				# 221
	slwi	r14, r15, 2				# 221
	lfsx	f2, r12, r14				# 221
	fmul	f1, f1, f2				# 221
	fadd	f0, f0, f1				# 221
	slwi	r14, r15, 2				# 221
	stfsx	f0, r10, r14				# 221
	slwi	r14, r13, 2				# 222
	lfsx	f0, r10, r14				# 222
	slwi	r14, r13, 2				# 222
	lfsx	f1, r11, r14				# 222
	slwi	r11, r13, 2				# 222
	lfsx	f2, r12, r11				# 222
	fmul	f1, f1, f2				# 222
	fadd	f0, f0, f1				# 222
	slwi	r11, r13, 2				# 222
	stfsx	f0, r10, r11				# 222
beq_cont.18109:
	add	r9, r9, r15				# 1908
	lwz	r29, 0(r30)				# 1908
	mtspr	9, r29
	bctr				# 1908
ble_else.18098:
	blr
ble_else.18097:
	blr
pretrace_diffuse_rays.2859:
	lwz	r6, 40(r30)				# 1951
	lwz	r7, 36(r30)				# 1951
	lwz	r8, 32(r30)				# 1951
	lwz	r9, 28(r30)				# 1951
	lwz	r10, 24(r30)				# 1951
	lwz	r11, 20(r30)				# 1951
	lwz	r12, 16(r30)				# 1951
	lwz	r13, 12(r30)				# 1951
	lwz	r14, 8(r30)				# 1951
	lfs	f0, 4(r30)				# 1951
	cmpwi	cr7, r5, 4				# 1952
	bgt	cr7, ble_else.18112				# 1952
	lwz	r15, 8(r2)				# 455
	slwi	r16, r5, 2				# 1872
	lwzx	r15, r15, r16				# 1872
	cmpw	cr7, r13, r15				# 1956
	bgt	cr7, ble_else.18113				# 1956
	lwz	r15, 12(r2)				# 462
	slwi	r16, r5, 2				# 1959
	lwzx	r15, r15, r16				# 1959
	stw	r30, 0(r3)				# 1959
	stw	r14, 4(r3)				# 1959
	stw	r5, 8(r3)				# 1959
	cmpw	cr7, r15, r13				# 1959
	bne	cr7, beq_else.18114				# 1959
	b	beq_cont.18115				# 1959
beq_else.18114:
	lwz	r15, 24(r2)				# 485
	slwi	r16, r13, 2				# 487
	lwzx	r15, r15, r16				# 487
	slwi	r16, r13, 2				# 141
	stfsx	f0, r11, r16				# 141
	slwi	r16, r14, 2				# 142
	stfsx	f0, r11, r16				# 142
	slwi	r16, r12, 2				# 143
	stfsx	f0, r11, r16				# 143
	lwz	r16, 28(r2)				# 499
	lwz	r17, 4(r2)				# 447
	slwi	r15, r15, 2				# 1967
	lwzx	r10, r10, r15				# 1967
	slwi	r15, r5, 2				# 1968
	lwzx	r15, r16, r15				# 1968
	slwi	r16, r5, 2				# 1969
	lwzx	r16, r17, r16				# 1969
	slwi	r17, r13, 2				# 153
	lfsx	f0, r16, r17				# 153
	slwi	r17, r13, 2				# 153
	stfsx	f0, r6, r17				# 153
	slwi	r17, r14, 2				# 154
	lfsx	f0, r16, r17				# 154
	slwi	r17, r14, 2				# 154
	stfsx	f0, r6, r17				# 154
	slwi	r17, r12, 2				# 155
	lfsx	f0, r16, r17				# 155
	slwi	r17, r12, 2				# 155
	stfsx	f0, r6, r17				# 155
	slwi	r6, r13, 2				# 1148
	lwzx	r6, r8, r6				# 1148
	sub	r6, r6, r14				# 1148
	stw	r12, 12(r3)				# 1148
	stw	r11, 16(r3)				# 1148
	stw	r13, 20(r3)				# 1148
	stw	r2, 24(r3)				# 1148
	stw	r16, 28(r3)				# 1148
	stw	r15, 32(r3)				# 1148
	stw	r10, 36(r3)				# 1148
	stw	r9, 40(r3)				# 1148
	mfspr	r31, 8				# 1148
	mr	r5, r6				# 1148
	mr	r2, r16				# 1148
	mr	r30, r7				# 1148
	stw	r31, 44(r3)				# 1148
	addi	r3, r3, 48				# 1148
	lwz	r31, 0(r30)				# 1148
	mtspr	9, r31				# 1148
	bctrl				# 1148
	addi	r3, r3, -48				# 1148
	lwz	r31, 44(r3)				# 1148
	mtspr	8, r31				# 1148
	addi	r7, 0, 118
	lwz	r2, 36(r3)				# 1776
	lwz	r5, 32(r3)				# 1776
	lwz	r6, 28(r3)				# 1776
	lwz	r30, 40(r3)				# 1776
	mfspr	r31, 8				# 1776
	stw	r31, 44(r3)				# 1776
	addi	r3, r3, 48				# 1776
	lwz	r31, 0(r30)				# 1776
	mtspr	9, r31				# 1776
	bctrl				# 1776
	addi	r3, r3, -48				# 1776
	lwz	r31, 44(r3)				# 1776
	mtspr	8, r31				# 1776
	lwz	r2, 24(r3)				# 476
	lwz	r5, 20(r2)				# 476
	lwz	r6, 8(r3)				# 1971
	slwi	r7, r6, 2				# 1971
	lwzx	r5, r5, r7				# 1971
	lwz	r7, 20(r3)				# 153
	slwi	r8, r7, 2				# 153
	lwz	r9, 16(r3)				# 153
	lfsx	f0, r9, r8				# 153
	slwi	r7, r7, 2				# 153
	stfsx	f0, r5, r7				# 153
	lwz	r7, 4(r3)				# 154
	slwi	r8, r7, 2				# 154
	lfsx	f0, r9, r8				# 154
	slwi	r8, r7, 2				# 154
	stfsx	f0, r5, r8				# 154
	lwz	r8, 12(r3)				# 155
	slwi	r10, r8, 2				# 155
	lfsx	f0, r9, r10				# 155
	slwi	r8, r8, 2				# 155
	stfsx	f0, r5, r8				# 155
beq_cont.18115:
	lwz	r5, 4(r3)				# 1973
	lwz	r6, 8(r3)				# 1973
	add	r5, r6, r5				# 1973
	lwz	r30, 0(r3)				# 1973
	lwz	r29, 0(r30)				# 1973
	mtspr	9, r29
	bctr				# 1973
ble_else.18113:
	blr
ble_else.18112:
	blr
pretrace_pixels.2862:
	lwz	r7, 56(r30)				# 1980
	lwz	r8, 52(r30)				# 1980
	lwz	r9, 48(r30)				# 1980
	lwz	r10, 44(r30)				# 1980
	lwz	r11, 40(r30)				# 1980
	lwz	r12, 36(r30)				# 1980
	lwz	r13, 32(r30)				# 1980
	lwz	r14, 28(r30)				# 1980
	lwz	r15, 24(r30)				# 1980
	lwz	r16, 20(r30)				# 1980
	lwz	r17, 16(r30)				# 1980
	lwz	r18, 12(r30)				# 1980
	lwz	r19, 8(r30)				# 1980
	lfs	f3, 4(r30)				# 1980
	cmpw	cr7, r18, r5				# 1981
	bgt	cr7, ble_else.18118				# 1981
	slwi	r20, r18, 2				# 1983
	lfsx	f4, r11, r20				# 1983
	slwi	r11, r18, 2				# 1983
	lwzx	r11, r15, r11				# 1983
	sub	r11, r5, r11				# 1983
	stw	r30, 0(r3)				# 1983
	stw	r16, 4(r3)				# 1983
	stw	r14, 8(r3)				# 1983
	stw	r6, 12(r3)				# 1983
	stw	r8, 16(r3)				# 1983
	stw	r2, 20(r3)				# 1983
	stw	r5, 24(r3)				# 1983
	stw	r9, 28(r3)				# 1983
	stw	r7, 32(r3)				# 1983
	stw	r12, 36(r3)				# 1983
	stfs	f3, 40(r3)				# 1983
	stfs	f2, 48(r3)				# 1983
	stw	r17, 56(r3)				# 1983
	stfs	f1, 64(r3)				# 1983
	stw	r19, 72(r3)				# 1983
	stw	r13, 76(r3)				# 1983
	stfs	f0, 80(r3)				# 1983
	stw	r10, 88(r3)				# 1983
	stw	r18, 92(r3)				# 1983
	stfs	f4, 96(r3)				# 1983
	mfspr	r31, 8				# 1983
	mr	r2, r11				# 1983
	stw	r31, 104(r3)				# 1983
	addi	r3, r3, 108				# 1983
	bl	min_caml_float_of_int				# 1983
	addi	r3, r3, -108				# 1983
	lwz	r31, 104(r3)				# 1983
	mtspr	8, r31				# 1983
	lfs	f1, 96(r3)				# 1983
	fmul	f0, f1, f0				# 1983
	lwz	r2, 92(r3)				# 1984
	slwi	r5, r2, 2				# 1984
	lwz	r6, 88(r3)				# 1984
	lfsx	f1, r6, r5				# 1984
	fmul	f1, f0, f1				# 1984
	lfs	f2, 80(r3)				# 1984
	fadd	f1, f1, f2				# 1984
	slwi	r5, r2, 2				# 1984
	lwz	r7, 76(r3)				# 1984
	stfsx	f1, r7, r5				# 1984
	lwz	r5, 72(r3)				# 1985
	slwi	r8, r5, 2				# 1985
	lfsx	f1, r6, r8				# 1985
	fmul	f1, f0, f1				# 1985
	lfs	f3, 64(r3)				# 1985
	fadd	f1, f1, f3				# 1985
	slwi	r8, r5, 2				# 1985
	stfsx	f1, r7, r8				# 1985
	lwz	r8, 56(r3)				# 1986
	slwi	r9, r8, 2				# 1986
	lfsx	f1, r6, r9				# 1986
	fmul	f0, f0, f1				# 1986
	lfs	f1, 48(r3)				# 1986
	fadd	f0, f0, f1				# 1986
	slwi	r6, r8, 2				# 1986
	stfsx	f0, r7, r6				# 1986
	slwi	r6, r2, 2				# 173
	lfsx	f0, r7, r6				# 173
	mfspr	r31, 8				# 173
	stw	r31, 104(r3)				# 173
	addi	r3, r3, 108				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -108				# 173
	lwz	r31, 104(r3)				# 173
	mtspr	8, r31				# 173
	lwz	r2, 72(r3)				# 173
	slwi	r5, r2, 2				# 173
	lwz	r6, 76(r3)				# 173
	lfsx	f1, r6, r5				# 173
	stfs	f0, 104(r3)				# 173
	mfspr	r31, 8				# 173
	fmr	f0, f1				# 173
	stw	r31, 112(r3)				# 173
	addi	r3, r3, 116				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -116				# 173
	lwz	r31, 112(r3)				# 173
	mtspr	8, r31				# 173
	lfs	f1, 104(r3)				# 173
	fadd	f0, f1, f0				# 173
	lwz	r2, 56(r3)				# 173
	slwi	r5, r2, 2				# 173
	lwz	r6, 76(r3)				# 173
	lfsx	f1, r6, r5				# 173
	stfs	f0, 112(r3)				# 173
	mfspr	r31, 8				# 173
	fmr	f0, f1				# 173
	stw	r31, 120(r3)				# 173
	addi	r3, r3, 124				# 173
	bl	min_caml_fsqr				# 173
	addi	r3, r3, -124				# 173
	lwz	r31, 120(r3)				# 173
	mtspr	8, r31				# 173
	lfs	f1, 112(r3)				# 173
	fadd	f0, f1, f0				# 173
	mfspr	r31, 8				# 173
	stw	r31, 120(r3)				# 173
	addi	r3, r3, 124				# 173
	bl	min_caml_sqrt				# 173
	addi	r3, r3, -124				# 173
	lwz	r31, 120(r3)				# 173
	mtspr	8, r31				# 173
	stfs	f0, 120(r3)				# 174
	mfspr	r31, 8				# 174
	stw	r31, 128(r3)				# 174
	addi	r3, r3, 132				# 174
	bl	min_caml_fiszero				# 174
	addi	r3, r3, -132				# 174
	lwz	r31, 128(r3)				# 174
	mtspr	8, r31				# 174
	lwz	r5, 92(r3)				# 174
	cmpw	cr7, r2, r5				# 174
	bne	cr7, beq_else.18120				# 174
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 174
	lfs	f1, 120(r3)				# 174
	fdiv	f0, f0, f1				# 174
	b	beq_cont.18121				# 174
beq_else.18120:
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 174
beq_cont.18121:
	slwi	r2, r5, 2				# 175
	lwz	r6, 76(r3)				# 175
	lfsx	f1, r6, r2				# 175
	fmul	f1, f1, f0				# 175
	slwi	r2, r5, 2				# 175
	stfsx	f1, r6, r2				# 175
	lwz	r2, 72(r3)				# 176
	slwi	r7, r2, 2				# 176
	lfsx	f1, r6, r7				# 176
	fmul	f1, f1, f0				# 176
	slwi	r7, r2, 2				# 176
	stfsx	f1, r6, r7				# 176
	lwz	r7, 56(r3)				# 177
	slwi	r8, r7, 2				# 177
	lfsx	f1, r6, r8				# 177
	fmul	f0, f1, f0				# 177
	slwi	r8, r7, 2				# 177
	stfsx	f0, r6, r8				# 177
	slwi	r8, r5, 2				# 141
	lwz	r9, 36(r3)				# 141
	lfs	f1, 40(r3)				# 141
	stfsx	f1, r9, r8				# 141
	slwi	r8, r2, 2				# 142
	stfsx	f1, r9, r8				# 142
	slwi	r8, r7, 2				# 143
	stfsx	f1, r9, r8				# 143
	slwi	r8, r5, 2				# 153
	lwz	r10, 32(r3)				# 153
	lfsx	f0, r10, r8				# 153
	slwi	r8, r5, 2				# 153
	lwz	r11, 28(r3)				# 153
	stfsx	f0, r11, r8				# 153
	slwi	r8, r2, 2				# 154
	lfsx	f0, r10, r8				# 154
	slwi	r8, r2, 2				# 154
	stfsx	f0, r11, r8				# 154
	slwi	r8, r7, 2				# 155
	lfsx	f0, r10, r8				# 155
	slwi	r8, r7, 2				# 155
	stfsx	f0, r11, r8				# 155
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f0, 0(r31)				# 1992
	lwz	r8, 24(r3)				# 1992
	slwi	r10, r8, 2				# 1992
	lwz	r11, 20(r3)				# 1992
	lwzx	r10, r11, r10				# 1992
	lwz	r30, 16(r3)				# 1992
	mfspr	r31, 8				# 1992
	mr	r2, r5				# 1992
	mr	r5, r6				# 1992
	mr	r6, r10				# 1992
	stw	r31, 128(r3)				# 1992
	addi	r3, r3, 132				# 1992
	lwz	r31, 0(r30)				# 1992
	mtspr	9, r31				# 1992
	bctrl				# 1992
	addi	r3, r3, -132				# 1992
	lwz	r31, 128(r3)				# 1992
	mtspr	8, r31				# 1992
	lwz	r2, 24(r3)				# 1993
	slwi	r5, r2, 2				# 1993
	lwz	r6, 20(r3)				# 1993
	lwzx	r5, r6, r5				# 1993
	lwz	r5, 0(r5)				# 440
	lwz	r7, 92(r3)				# 153
	slwi	r8, r7, 2				# 153
	lwz	r9, 36(r3)				# 153
	lfsx	f0, r9, r8				# 153
	slwi	r8, r7, 2				# 153
	stfsx	f0, r5, r8				# 153
	lwz	r8, 72(r3)				# 154
	slwi	r10, r8, 2				# 154
	lfsx	f0, r9, r10				# 154
	slwi	r10, r8, 2				# 154
	stfsx	f0, r5, r10				# 154
	lwz	r10, 56(r3)				# 155
	slwi	r11, r10, 2				# 155
	lfsx	f0, r9, r11				# 155
	slwi	r9, r10, 2				# 155
	stfsx	f0, r5, r9				# 155
	slwi	r5, r2, 2				# 1994
	lwzx	r5, r6, r5				# 1994
	lwz	r5, 24(r5)				# 492
	slwi	r9, r7, 2				# 494
	lwz	r10, 12(r3)				# 494
	stwx	r10, r5, r9				# 494
	slwi	r5, r2, 2				# 1997
	lwzx	r5, r6, r5				# 1997
	lwz	r30, 8(r3)				# 1997
	mfspr	r31, 8				# 1997
	mr	r2, r5				# 1997
	mr	r5, r7				# 1997
	stw	r31, 128(r3)				# 1997
	addi	r3, r3, 132				# 1997
	lwz	r31, 0(r30)				# 1997
	mtspr	9, r31				# 1997
	bctrl				# 1997
	addi	r3, r3, -132				# 1997
	lwz	r31, 128(r3)				# 1997
	mtspr	8, r31				# 1997
	lwz	r2, 72(r3)				# 1999
	lwz	r5, 24(r3)				# 1999
	sub	r5, r5, r2				# 1999
	lwz	r6, 12(r3)				# 124
	add	r2, r6, r2				# 124
	lwz	r6, 4(r3)				# 125
	cmpw	cr7, r6, r2				# 125
	bgt	cr7, ble_else.18122				# 125
	sub	r6, r2, r6				# 125
	b	ble_cont.18123				# 125
ble_else.18122:
	mr	r6, r2				# 125
ble_cont.18123:
	lfs	f0, 80(r3)				# 1999
	lfs	f1, 64(r3)				# 1999
	lfs	f2, 48(r3)				# 1999
	lwz	r2, 20(r3)				# 1999
	lwz	r30, 0(r3)				# 1999
	lwz	r29, 0(r30)				# 1999
	mtspr	9, r29
	bctr				# 1999
ble_else.18118:
	blr
scan_pixel.2873:
	lwz	r9, 28(r30)				# 2019
	lwz	r10, 24(r30)				# 2019
	lwz	r11, 20(r30)				# 2019
	lwz	r12, 16(r30)				# 2019
	lwz	r13, 12(r30)				# 2019
	lwz	r14, 8(r30)				# 2019
	lwz	r15, 4(r30)				# 2019
	slwi	r16, r14, 2				# 2020
	lwzx	r16, r11, r16				# 2020
	cmpw	cr7, r16, r2				# 2020
	bgt	cr7, ble_else.18125				# 2020
	blr
ble_else.18125:
	slwi	r16, r2, 2				# 2023
	lwzx	r16, r7, r16				# 2023
	lwz	r16, 0(r16)				# 440
	slwi	r17, r14, 2				# 153
	lfsx	f0, r16, r17				# 153
	slwi	r17, r14, 2				# 153
	stfsx	f0, r10, r17				# 153
	slwi	r17, r15, 2				# 154
	lfsx	f0, r16, r17				# 154
	slwi	r17, r15, 2				# 154
	stfsx	f0, r10, r17				# 154
	slwi	r17, r13, 2				# 155
	lfsx	f0, r16, r17				# 155
	slwi	r16, r13, 2				# 155
	stfsx	f0, r10, r16				# 155
	slwi	r16, r15, 2				# 1859
	lwzx	r16, r11, r16				# 1859
	add	r17, r5, r15				# 1859
	cmpw	cr7, r16, r17				# 1859
	bgt	cr7, ble_else.18127				# 1859
	addi	r11, 0, 0
	b	ble_cont.18128				# 1859
ble_else.18127:
	cmpw	cr7, r5, r14				# 1860
	bgt	cr7, ble_else.18129				# 1860
	addi	r11, 0, 0
	b	ble_cont.18130				# 1860
ble_else.18129:
	slwi	r16, r14, 2				# 1861
	lwzx	r11, r11, r16				# 1861
	add	r16, r2, r15				# 1861
	cmpw	cr7, r11, r16				# 1861
	bgt	cr7, ble_else.18131				# 1861
	addi	r11, 0, 0
	b	ble_cont.18132				# 1861
ble_else.18131:
	cmpw	cr7, r2, r14				# 1862
	bgt	cr7, ble_else.18133				# 1862
	addi	r11, 0, 0
	b	ble_cont.18134				# 1862
ble_else.18133:
	addi	r11, 0, 1
ble_cont.18134:
ble_cont.18132:
ble_cont.18130:
ble_cont.18128:
	stw	r8, 0(r3)				# 2026
	stw	r7, 4(r3)				# 2026
	stw	r6, 8(r3)				# 2026
	stw	r5, 12(r3)				# 2026
	stw	r30, 16(r3)				# 2026
	stw	r2, 20(r3)				# 2026
	stw	r13, 24(r3)				# 2026
	stw	r15, 28(r3)				# 2026
	stw	r10, 32(r3)				# 2026
	stw	r14, 36(r3)				# 2026
	cmpw	cr7, r11, r14				# 2026
	bne	cr7, beq_else.18135				# 2026
	slwi	r9, r2, 2				# 2029
	lwzx	r9, r7, r9				# 2029
	mfspr	r31, 8				# 2029
	mr	r5, r14				# 2029
	mr	r2, r9				# 2029
	mr	r30, r12				# 2029
	stw	r31, 40(r3)				# 2029
	addi	r3, r3, 44				# 2029
	lwz	r31, 0(r30)				# 2029
	mtspr	9, r31				# 2029
	bctrl				# 2029
	addi	r3, r3, -44				# 2029
	lwz	r31, 40(r3)				# 2029
	mtspr	8, r31				# 2029
	b	beq_cont.18136				# 2026
beq_else.18135:
	mfspr	r31, 8				# 2027
	mr	r30, r9				# 2027
	mr	r9, r14				# 2027
	stw	r31, 40(r3)				# 2027
	addi	r3, r3, 44				# 2027
	lwz	r31, 0(r30)				# 2027
	mtspr	9, r31				# 2027
	bctrl				# 2027
	addi	r3, r3, -44				# 2027
	lwz	r31, 40(r3)				# 2027
	mtspr	8, r31				# 2027
beq_cont.18136:
	lwz	r2, 36(r3)				# 1938
	slwi	r5, r2, 2				# 1938
	lwz	r6, 32(r3)				# 1938
	lfsx	f0, r6, r5				# 1938
	mfspr	r31, 8				# 1932
	stw	r31, 40(r3)				# 1932
	addi	r3, r3, 44				# 1932
	bl	min_caml_int_of_float				# 1932
	addi	r3, r3, -44				# 1932
	lwz	r31, 40(r3)				# 1932
	mtspr	8, r31				# 1932
	cmpwi	cr7, r2, 255				# 1933
	bgt	cr7, ble_else.18137				# 1933
	lwz	r5, 36(r3)				# 1933
	cmpw	cr7, r5, r2				# 1933
	bgt	cr7, ble_else.18139				# 1933
	b	ble_cont.18140				# 1933
ble_else.18139:
	addi	r2, 0, 0
ble_cont.18140:
	b	ble_cont.18138				# 1933
ble_else.18137:
	addi	r2, 0, 255
ble_cont.18138:
	mfspr	r31, 8				# 1934
	stw	r31, 40(r3)				# 1934
	addi	r3, r3, 44				# 1934
	bl	min_caml_print_int				# 1934
	addi	r3, r3, -44				# 1934
	lwz	r31, 40(r3)				# 1934
	mtspr	8, r31				# 1934
	addi	r2, 0, 32
	stw	r2, 40(r3)				# 1939
	mfspr	r31, 8				# 1939
	stw	r31, 44(r3)				# 1939
	addi	r3, r3, 48				# 1939
	bl	min_caml_print_char				# 1939
	addi	r3, r3, -48				# 1939
	lwz	r31, 44(r3)				# 1939
	mtspr	8, r31				# 1939
	lwz	r2, 28(r3)				# 1940
	slwi	r5, r2, 2				# 1940
	lwz	r6, 32(r3)				# 1940
	lfsx	f0, r6, r5				# 1940
	mfspr	r31, 8				# 1932
	stw	r31, 44(r3)				# 1932
	addi	r3, r3, 48				# 1932
	bl	min_caml_int_of_float				# 1932
	addi	r3, r3, -48				# 1932
	lwz	r31, 44(r3)				# 1932
	mtspr	8, r31				# 1932
	cmpwi	cr7, r2, 255				# 1933
	bgt	cr7, ble_else.18141				# 1933
	lwz	r5, 36(r3)				# 1933
	cmpw	cr7, r5, r2				# 1933
	bgt	cr7, ble_else.18143				# 1933
	b	ble_cont.18144				# 1933
ble_else.18143:
	addi	r2, 0, 0
ble_cont.18144:
	b	ble_cont.18142				# 1933
ble_else.18141:
	addi	r2, 0, 255
ble_cont.18142:
	mfspr	r31, 8				# 1934
	stw	r31, 44(r3)				# 1934
	addi	r3, r3, 48				# 1934
	bl	min_caml_print_int				# 1934
	addi	r3, r3, -48				# 1934
	lwz	r31, 44(r3)				# 1934
	mtspr	8, r31				# 1934
	lwz	r2, 40(r3)				# 1941
	mfspr	r31, 8				# 1941
	stw	r31, 44(r3)				# 1941
	addi	r3, r3, 48				# 1941
	bl	min_caml_print_char				# 1941
	addi	r3, r3, -48				# 1941
	lwz	r31, 44(r3)				# 1941
	mtspr	8, r31				# 1941
	lwz	r2, 24(r3)				# 1942
	slwi	r2, r2, 2				# 1942
	lwz	r5, 32(r3)				# 1942
	lfsx	f0, r5, r2				# 1942
	mfspr	r31, 8				# 1932
	stw	r31, 44(r3)				# 1932
	addi	r3, r3, 48				# 1932
	bl	min_caml_int_of_float				# 1932
	addi	r3, r3, -48				# 1932
	lwz	r31, 44(r3)				# 1932
	mtspr	8, r31				# 1932
	cmpwi	cr7, r2, 255				# 1933
	bgt	cr7, ble_else.18145				# 1933
	lwz	r5, 36(r3)				# 1933
	cmpw	cr7, r5, r2				# 1933
	bgt	cr7, ble_else.18147				# 1933
	b	ble_cont.18148				# 1933
ble_else.18147:
	addi	r2, 0, 0
ble_cont.18148:
	b	ble_cont.18146				# 1933
ble_else.18145:
	addi	r2, 0, 255
ble_cont.18146:
	mfspr	r31, 8				# 1934
	stw	r31, 44(r3)				# 1934
	addi	r3, r3, 48				# 1934
	bl	min_caml_print_int				# 1934
	addi	r3, r3, -48				# 1934
	lwz	r31, 44(r3)				# 1934
	mtspr	8, r31				# 1934
	addi	r2, 0, 10
	mfspr	r31, 8				# 1943
	stw	r31, 44(r3)				# 1943
	addi	r3, r3, 48				# 1943
	bl	min_caml_print_char				# 1943
	addi	r3, r3, -48				# 1943
	lwz	r31, 44(r3)				# 1943
	mtspr	8, r31				# 1943
	lwz	r2, 28(r3)				# 2034
	lwz	r5, 20(r3)				# 2034
	add	r2, r5, r2				# 2034
	lwz	r5, 12(r3)				# 2034
	lwz	r6, 8(r3)				# 2034
	lwz	r7, 4(r3)				# 2034
	lwz	r8, 0(r3)				# 2034
	lwz	r30, 16(r3)				# 2034
	lwz	r29, 0(r30)				# 2034
	mtspr	9, r29
	bctr				# 2034
scan_line.2879:
	lwz	r9, 44(r30)				# 2039
	lwz	r10, 40(r30)				# 2039
	lwz	r11, 36(r30)				# 2039
	lwz	r12, 32(r30)				# 2039
	lwz	r13, 28(r30)				# 2039
	lwz	r14, 24(r30)				# 2039
	lwz	r15, 20(r30)				# 2039
	lwz	r16, 16(r30)				# 2039
	lwz	r17, 12(r30)				# 2039
	lwz	r18, 8(r30)				# 2039
	lwz	r19, 4(r30)				# 2039
	slwi	r20, r19, 2				# 2041
	lwzx	r20, r14, r20				# 2041
	cmpw	cr7, r20, r2				# 2041
	bgt	cr7, ble_else.18149				# 2041
	blr
ble_else.18149:
	slwi	r20, r19, 2				# 2043
	lwzx	r20, r14, r20				# 2043
	sub	r20, r20, r19				# 2043
	stw	r30, 0(r3)				# 2043
	stw	r16, 4(r3)				# 2043
	stw	r17, 8(r3)				# 2043
	stw	r8, 12(r3)				# 2043
	stw	r19, 16(r3)				# 2043
	stw	r7, 20(r3)				# 2043
	stw	r6, 24(r3)				# 2043
	stw	r5, 28(r3)				# 2043
	stw	r2, 32(r3)				# 2043
	stw	r18, 36(r3)				# 2043
	stw	r11, 40(r3)				# 2043
	cmpw	cr7, r20, r2				# 2043
	bgt	cr7, ble_else.18151				# 2043
	b	ble_cont.18152				# 2043
ble_else.18151:
	add	r20, r2, r19				# 2044
	slwi	r21, r18, 2				# 2006
	lfsx	f0, r12, r21				# 2006
	slwi	r12, r19, 2				# 2006
	lwzx	r12, r15, r12				# 2006
	sub	r12, r20, r12				# 2006
	stw	r13, 44(r3)				# 2006
	stw	r14, 48(r3)				# 2006
	stw	r9, 52(r3)				# 2006
	stw	r10, 56(r3)				# 2006
	stfs	f0, 64(r3)				# 2006
	mfspr	r31, 8				# 2006
	mr	r2, r12				# 2006
	stw	r31, 72(r3)				# 2006
	addi	r3, r3, 76				# 2006
	bl	min_caml_float_of_int				# 2006
	addi	r3, r3, -76				# 2006
	lwz	r31, 72(r3)				# 2006
	mtspr	8, r31				# 2006
	lfs	f1, 64(r3)				# 2006
	fmul	f0, f1, f0				# 2006
	lwz	r2, 36(r3)				# 2009
	slwi	r5, r2, 2				# 2009
	lwz	r6, 56(r3)				# 2009
	lfsx	f1, r6, r5				# 2009
	fmul	f1, f0, f1				# 2009
	slwi	r5, r2, 2				# 2009
	lwz	r7, 52(r3)				# 2009
	lfsx	f2, r7, r5				# 2009
	fadd	f1, f1, f2				# 2009
	lwz	r5, 16(r3)				# 2010
	slwi	r8, r5, 2				# 2010
	lfsx	f2, r6, r8				# 2010
	fmul	f2, f0, f2				# 2010
	slwi	r8, r5, 2				# 2010
	lfsx	f3, r7, r8				# 2010
	fadd	f2, f2, f3				# 2010
	lwz	r8, 8(r3)				# 2011
	slwi	r9, r8, 2				# 2011
	lfsx	f3, r6, r9				# 2011
	fmul	f0, f0, f3				# 2011
	slwi	r6, r8, 2				# 2011
	lfsx	f3, r7, r6				# 2011
	fadd	f0, f0, f3				# 2011
	slwi	r6, r2, 2				# 2012
	lwz	r7, 48(r3)				# 2012
	lwzx	r6, r7, r6				# 2012
	sub	r6, r6, r5				# 2012
	lwz	r7, 20(r3)				# 2012
	lwz	r9, 12(r3)				# 2012
	lwz	r30, 44(r3)				# 2012
	mfspr	r31, 8				# 2012
	mr	r5, r6				# 2012
	mr	r2, r7				# 2012
	mr	r6, r9				# 2012
	fmr	f31, f2				# 2012
	fmr	f2, f0				# 2012
	fmr	f0, f1				# 2012
	fmr	f1, f31				# 2012
	stw	r31, 72(r3)				# 2012
	addi	r3, r3, 76				# 2012
	lwz	r31, 0(r30)				# 2012
	mtspr	9, r31				# 2012
	bctrl				# 2012
	addi	r3, r3, -76				# 2012
	lwz	r31, 72(r3)				# 2012
	mtspr	8, r31				# 2012
ble_cont.18152:
	lwz	r2, 36(r3)				# 2046
	lwz	r5, 32(r3)				# 2046
	lwz	r6, 28(r3)				# 2046
	lwz	r7, 24(r3)				# 2046
	lwz	r8, 20(r3)				# 2046
	lwz	r30, 40(r3)				# 2046
	mfspr	r31, 8				# 2046
	stw	r31, 72(r3)				# 2046
	addi	r3, r3, 76				# 2046
	lwz	r31, 0(r30)				# 2046
	mtspr	9, r31				# 2046
	bctrl				# 2046
	addi	r3, r3, -76				# 2046
	lwz	r31, 72(r3)				# 2046
	mtspr	8, r31				# 2046
	lwz	r2, 16(r3)				# 2047
	lwz	r5, 32(r3)				# 2047
	add	r2, r5, r2				# 2047
	lwz	r5, 8(r3)				# 124
	lwz	r6, 12(r3)				# 124
	add	r5, r6, r5				# 124
	lwz	r6, 4(r3)				# 125
	cmpw	cr7, r6, r5				# 125
	bgt	cr7, ble_else.18154				# 125
	sub	r8, r5, r6				# 125
	b	ble_cont.18155				# 125
ble_else.18154:
	mr	r8, r5				# 125
ble_cont.18155:
	lwz	r5, 24(r3)				# 2047
	lwz	r6, 20(r3)				# 2047
	lwz	r7, 28(r3)				# 2047
	lwz	r30, 0(r3)				# 2047
	lwz	r29, 0(r30)				# 2047
	mtspr	9, r29
	bctr				# 2047
init_line_elements.2889:
	lwz	r6, 24(r30)				# 2080
	lwz	r7, 20(r30)				# 2080
	lwz	r8, 16(r30)				# 2080
	lwz	r9, 12(r30)				# 2080
	lwz	r10, 8(r30)				# 2080
	lfs	f0, 4(r30)				# 2080
	cmpw	cr7, r9, r5				# 2081
	bgt	cr7, ble_else.18156				# 2081
	stw	r30, 0(r3)				# 2068
	stw	r2, 4(r3)				# 2068
	stw	r5, 8(r3)				# 2068
	stw	r9, 12(r3)				# 2068
	stw	r7, 16(r3)				# 2068
	stw	r10, 20(r3)				# 2068
	stw	r6, 24(r3)				# 2068
	stfs	f0, 32(r3)				# 2068
	stw	r8, 40(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r8				# 2068
	stw	r31, 44(r3)				# 2068
	addi	r3, r3, 48				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -48				# 2068
	lwz	r31, 44(r3)				# 2068
	mtspr	8, r31				# 2068
	lfs	f0, 32(r3)				# 2056
	lwz	r5, 40(r3)				# 2056
	stw	r2, 44(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 48(r3)				# 2056
	addi	r3, r3, 52				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -52				# 2056
	lwz	r31, 48(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 24(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 48(r3)				# 2057
	addi	r3, r3, 52				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -52				# 2057
	lwz	r31, 48(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 32(r3)				# 2058
	lwz	r5, 40(r3)				# 2058
	stw	r2, 48(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 52(r3)				# 2058
	addi	r3, r3, 56				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -56				# 2058
	lwz	r31, 52(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 20(r3)				# 2058
	slwi	r6, r5, 2				# 2058
	lwz	r7, 48(r3)				# 2058
	stwx	r2, r7, r6				# 2058
	lfs	f0, 32(r3)				# 2059
	lwz	r2, 40(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 52(r3)				# 2059
	addi	r3, r3, 56				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -56				# 2059
	lwz	r31, 52(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 16(r3)				# 2059
	slwi	r6, r5, 2				# 2059
	lwz	r7, 48(r3)				# 2059
	stwx	r2, r7, r6				# 2059
	lfs	f0, 32(r3)				# 2060
	lwz	r2, 40(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 52(r3)				# 2060
	addi	r3, r3, 56				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -56				# 2060
	lwz	r31, 52(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 40(r3)				# 2060
	slwi	r6, r5, 2				# 2060
	lwz	r7, 48(r3)				# 2060
	stwx	r2, r7, r6				# 2060
	lfs	f0, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	mr	r2, r5				# 2061
	stw	r31, 52(r3)				# 2061
	addi	r3, r3, 56				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -56				# 2061
	lwz	r31, 52(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 48(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lwz	r2, 24(r3)				# 2070
	lwz	r6, 12(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r5, r6				# 2070
	stw	r31, 52(r3)				# 2070
	addi	r3, r3, 56				# 2070
	bl	min_caml_create_array				# 2070
	addi	r3, r3, -56				# 2070
	lwz	r31, 52(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 24(r3)				# 2071
	lwz	r6, 12(r3)				# 2071
	stw	r2, 52(r3)				# 2071
	mfspr	r31, 8				# 2071
	mr	r2, r5				# 2071
	mr	r5, r6				# 2071
	stw	r31, 56(r3)				# 2071
	addi	r3, r3, 60				# 2071
	bl	min_caml_create_array				# 2071
	addi	r3, r3, -60				# 2071
	lwz	r31, 56(r3)				# 2071
	mtspr	8, r31				# 2071
	lfs	f0, 32(r3)				# 2056
	lwz	r5, 40(r3)				# 2056
	stw	r2, 56(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 60(r3)				# 2056
	addi	r3, r3, 64				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -64				# 2056
	lwz	r31, 60(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 24(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 60(r3)				# 2057
	addi	r3, r3, 64				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -64				# 2057
	lwz	r31, 60(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 32(r3)				# 2058
	lwz	r5, 40(r3)				# 2058
	stw	r2, 60(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 64(r3)				# 2058
	addi	r3, r3, 68				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -68				# 2058
	lwz	r31, 64(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 20(r3)				# 2058
	slwi	r6, r5, 2				# 2058
	lwz	r7, 60(r3)				# 2058
	stwx	r2, r7, r6				# 2058
	lfs	f0, 32(r3)				# 2059
	lwz	r2, 40(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 64(r3)				# 2059
	addi	r3, r3, 68				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -68				# 2059
	lwz	r31, 64(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 16(r3)				# 2059
	slwi	r6, r5, 2				# 2059
	lwz	r7, 60(r3)				# 2059
	stwx	r2, r7, r6				# 2059
	lfs	f0, 32(r3)				# 2060
	lwz	r2, 40(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 64(r3)				# 2060
	addi	r3, r3, 68				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -68				# 2060
	lwz	r31, 64(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 40(r3)				# 2060
	slwi	r6, r5, 2				# 2060
	lwz	r7, 60(r3)				# 2060
	stwx	r2, r7, r6				# 2060
	lfs	f0, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	mr	r2, r5				# 2061
	stw	r31, 64(r3)				# 2061
	addi	r3, r3, 68				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -68				# 2061
	lwz	r31, 64(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 60(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lfs	f0, 32(r3)				# 2056
	lwz	r2, 40(r3)				# 2056
	mfspr	r31, 8				# 2056
	stw	r31, 64(r3)				# 2056
	addi	r3, r3, 68				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -68				# 2056
	lwz	r31, 64(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 24(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 64(r3)				# 2057
	addi	r3, r3, 68				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -68				# 2057
	lwz	r31, 64(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 32(r3)				# 2058
	lwz	r5, 40(r3)				# 2058
	stw	r2, 64(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 68(r3)				# 2058
	addi	r3, r3, 72				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -72				# 2058
	lwz	r31, 68(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 20(r3)				# 2058
	slwi	r6, r5, 2				# 2058
	lwz	r7, 64(r3)				# 2058
	stwx	r2, r7, r6				# 2058
	lfs	f0, 32(r3)				# 2059
	lwz	r2, 40(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 68(r3)				# 2059
	addi	r3, r3, 72				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -72				# 2059
	lwz	r31, 68(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 16(r3)				# 2059
	slwi	r6, r5, 2				# 2059
	lwz	r7, 64(r3)				# 2059
	stwx	r2, r7, r6				# 2059
	lfs	f0, 32(r3)				# 2060
	lwz	r2, 40(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 68(r3)				# 2060
	addi	r3, r3, 72				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -72				# 2060
	lwz	r31, 68(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 40(r3)				# 2060
	slwi	r6, r5, 2				# 2060
	lwz	r7, 64(r3)				# 2060
	stwx	r2, r7, r6				# 2060
	lfs	f0, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	mr	r2, r5				# 2061
	stw	r31, 68(r3)				# 2061
	addi	r3, r3, 72				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -72				# 2061
	lwz	r31, 68(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 64(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lwz	r2, 20(r3)				# 2074
	lwz	r6, 12(r3)				# 2074
	mfspr	r31, 8				# 2074
	mr	r5, r6				# 2074
	stw	r31, 68(r3)				# 2074
	addi	r3, r3, 72				# 2074
	bl	min_caml_create_array				# 2074
	addi	r3, r3, -72				# 2074
	lwz	r31, 68(r3)				# 2074
	mtspr	8, r31				# 2074
	lfs	f0, 32(r3)				# 2056
	lwz	r5, 40(r3)				# 2056
	stw	r2, 68(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 72(r3)				# 2056
	addi	r3, r3, 76				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -76				# 2056
	lwz	r31, 72(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 24(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 72(r3)				# 2057
	addi	r3, r3, 76				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -76				# 2057
	lwz	r31, 72(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 32(r3)				# 2058
	lwz	r5, 40(r3)				# 2058
	stw	r2, 72(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 76(r3)				# 2058
	addi	r3, r3, 80				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -80				# 2058
	lwz	r31, 76(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 20(r3)				# 2058
	slwi	r6, r5, 2				# 2058
	lwz	r7, 72(r3)				# 2058
	stwx	r2, r7, r6				# 2058
	lfs	f0, 32(r3)				# 2059
	lwz	r2, 40(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 76(r3)				# 2059
	addi	r3, r3, 80				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -80				# 2059
	lwz	r31, 76(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 16(r3)				# 2059
	slwi	r5, r5, 2				# 2059
	lwz	r6, 72(r3)				# 2059
	stwx	r2, r6, r5				# 2059
	lfs	f0, 32(r3)				# 2060
	lwz	r2, 40(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 76(r3)				# 2060
	addi	r3, r3, 80				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -80				# 2060
	lwz	r31, 76(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 40(r3)				# 2060
	slwi	r6, r5, 2				# 2060
	lwz	r7, 72(r3)				# 2060
	stwx	r2, r7, r6				# 2060
	lfs	f0, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	mr	r2, r5				# 2061
	stw	r31, 76(r3)				# 2061
	addi	r3, r3, 80				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -80				# 2061
	lwz	r31, 76(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 72(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	mr	r2, r4				# 2076
	addi	r4, r4, 32				# 2076
	stw	r5, 28(r2)				# 2076
	lwz	r5, 68(r3)				# 2076
	stw	r5, 24(r2)				# 2076
	lwz	r5, 64(r3)				# 2076
	stw	r5, 20(r2)				# 2076
	lwz	r5, 60(r3)				# 2076
	stw	r5, 16(r2)				# 2076
	lwz	r5, 56(r3)				# 2076
	stw	r5, 12(r2)				# 2076
	lwz	r5, 52(r3)				# 2076
	stw	r5, 8(r2)				# 2076
	lwz	r5, 48(r3)				# 2076
	stw	r5, 4(r2)				# 2076
	lwz	r5, 44(r3)				# 2076
	stw	r5, 0(r2)				# 2076
	lwz	r5, 8(r3)				# 2082
	slwi	r6, r5, 2				# 2082
	lwz	r7, 4(r3)				# 2082
	stwx	r2, r7, r6				# 2082
	lwz	r2, 20(r3)				# 2083
	sub	r5, r5, r2				# 2083
	lwz	r30, 0(r3)				# 2083
	mr	r2, r7				# 2083
	lwz	r29, 0(r30)				# 2083
	mtspr	9, r29
	bctr				# 2083
ble_else.18156:
	blr
calc_dirvec.2899:
	lwz	r7, 20(r30)				# 2112
	lwz	r8, 16(r30)				# 2112
	lwz	r9, 12(r30)				# 2112
	lwz	r10, 8(r30)				# 2112
	lwz	r11, 4(r30)				# 2112
	cmpw	cr7, r8, r2				# 2113
	bgt	cr7, ble_else.18158				# 2113
	stw	r9, 0(r3)				# 2114
	stw	r11, 4(r3)				# 2114
	stw	r10, 8(r3)				# 2114
	stw	r6, 12(r3)				# 2114
	stw	r7, 16(r3)				# 2114
	stw	r5, 20(r3)				# 2114
	stfs	f0, 24(r3)				# 2114
	stfs	f1, 32(r3)				# 2114
	mfspr	r31, 8				# 2114
	stw	r31, 40(r3)				# 2114
	addi	r3, r3, 44				# 2114
	bl	min_caml_fsqr				# 2114
	addi	r3, r3, -44				# 2114
	lwz	r31, 40(r3)				# 2114
	mtspr	8, r31				# 2114
	lfs	f1, 32(r3)				# 2114
	stfs	f0, 40(r3)				# 2114
	mfspr	r31, 8				# 2114
	fmr	f0, f1				# 2114
	stw	r31, 48(r3)				# 2114
	addi	r3, r3, 52				# 2114
	bl	min_caml_fsqr				# 2114
	addi	r3, r3, -52				# 2114
	lwz	r31, 48(r3)				# 2114
	mtspr	8, r31				# 2114
	lfs	f1, 40(r3)				# 2114
	fadd	f0, f1, f0				# 2114
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f1, 0(r31)				# 2114
	fadd	f0, f0, f1				# 2114
	stfs	f1, 48(r3)				# 2114
	mfspr	r31, 8				# 2114
	stw	r31, 56(r3)				# 2114
	addi	r3, r3, 60				# 2114
	bl	min_caml_sqrt				# 2114
	addi	r3, r3, -60				# 2114
	lwz	r31, 56(r3)				# 2114
	mtspr	8, r31				# 2114
	lfs	f1, 24(r3)				# 2115
	fdiv	f1, f1, f0				# 2115
	lfs	f2, 32(r3)				# 2116
	fdiv	f2, f2, f0				# 2116
	lfs	f3, 48(r3)				# 2117
	fdiv	f0, f3, f0				# 2117
	lwz	r2, 20(r3)				# 2120
	slwi	r2, r2, 2				# 2120
	lwz	r5, 16(r3)				# 2120
	lwzx	r2, r5, r2				# 2120
	lwz	r5, 12(r3)				# 2121
	slwi	r6, r5, 2				# 2121
	lwzx	r6, r2, r6				# 2121
	lwz	r6, 0(r6)				# 508
	lwz	r7, 8(r3)				# 134
	slwi	r8, r7, 2				# 134
	stfsx	f1, r6, r8				# 134
	lwz	r8, 4(r3)				# 135
	slwi	r9, r8, 2				# 135
	stfsx	f2, r6, r9				# 135
	lwz	r9, 0(r3)				# 136
	slwi	r10, r9, 2				# 136
	stfsx	f0, r6, r10				# 136
	addi	r6, r5, 40				# 2122
	slwi	r6, r6, 2				# 2122
	lwzx	r6, r2, r6				# 2122
	lwz	r6, 0(r6)				# 508
	stfs	f2, 56(r3)				# 2122
	stw	r2, 64(r3)				# 2122
	stfs	f0, 72(r3)				# 2122
	stw	r6, 80(r3)				# 2122
	stfs	f1, 88(r3)				# 2122
	mfspr	r31, 8				# 2122
	fmr	f0, f2				# 2122
	stw	r31, 96(r3)				# 2122
	addi	r3, r3, 100				# 2122
	bl	min_caml_fneg				# 2122
	addi	r3, r3, -100				# 2122
	lwz	r31, 96(r3)				# 2122
	mtspr	8, r31				# 2122
	lwz	r2, 8(r3)				# 134
	slwi	r5, r2, 2				# 134
	lwz	r6, 80(r3)				# 134
	lfs	f1, 88(r3)				# 134
	stfsx	f1, r6, r5				# 134
	lwz	r5, 4(r3)				# 135
	slwi	r7, r5, 2				# 135
	lfs	f2, 72(r3)				# 135
	stfsx	f2, r6, r7				# 135
	lwz	r7, 0(r3)				# 136
	slwi	r8, r7, 2				# 136
	stfsx	f0, r6, r8				# 136
	lwz	r6, 12(r3)				# 2123
	addi	r8, r6, 80				# 2123
	slwi	r8, r8, 2				# 2123
	lwz	r9, 64(r3)				# 2123
	lwzx	r8, r9, r8				# 2123
	lwz	r8, 0(r8)				# 508
	stw	r8, 96(r3)				# 2123
	mfspr	r31, 8				# 2123
	fmr	f0, f1				# 2123
	stw	r31, 100(r3)				# 2123
	addi	r3, r3, 104				# 2123
	bl	min_caml_fneg				# 2123
	addi	r3, r3, -104				# 2123
	lwz	r31, 100(r3)				# 2123
	mtspr	8, r31				# 2123
	lfs	f1, 56(r3)				# 2123
	stfs	f0, 104(r3)				# 2123
	mfspr	r31, 8				# 2123
	fmr	f0, f1				# 2123
	stw	r31, 112(r3)				# 2123
	addi	r3, r3, 116				# 2123
	bl	min_caml_fneg				# 2123
	addi	r3, r3, -116				# 2123
	lwz	r31, 112(r3)				# 2123
	mtspr	8, r31				# 2123
	lwz	r2, 8(r3)				# 134
	slwi	r5, r2, 2				# 134
	lwz	r6, 96(r3)				# 134
	lfs	f1, 72(r3)				# 134
	stfsx	f1, r6, r5				# 134
	lwz	r5, 4(r3)				# 135
	slwi	r7, r5, 2				# 135
	lfs	f2, 104(r3)				# 135
	stfsx	f2, r6, r7				# 135
	lwz	r7, 0(r3)				# 136
	slwi	r8, r7, 2				# 136
	stfsx	f0, r6, r8				# 136
	lwz	r6, 12(r3)				# 2124
	add	r8, r6, r5				# 2124
	slwi	r8, r8, 2				# 2124
	lwz	r9, 64(r3)				# 2124
	lwzx	r8, r9, r8				# 2124
	lwz	r8, 0(r8)				# 508
	lfs	f0, 88(r3)				# 2124
	stw	r8, 112(r3)				# 2124
	mfspr	r31, 8				# 2124
	stw	r31, 116(r3)				# 2124
	addi	r3, r3, 120				# 2124
	bl	min_caml_fneg				# 2124
	addi	r3, r3, -120				# 2124
	lwz	r31, 116(r3)				# 2124
	mtspr	8, r31				# 2124
	lfs	f1, 56(r3)				# 2124
	stfs	f0, 120(r3)				# 2124
	mfspr	r31, 8				# 2124
	fmr	f0, f1				# 2124
	stw	r31, 128(r3)				# 2124
	addi	r3, r3, 132				# 2124
	bl	min_caml_fneg				# 2124
	addi	r3, r3, -132				# 2124
	lwz	r31, 128(r3)				# 2124
	mtspr	8, r31				# 2124
	lfs	f1, 72(r3)				# 2124
	stfs	f0, 128(r3)				# 2124
	mfspr	r31, 8				# 2124
	fmr	f0, f1				# 2124
	stw	r31, 136(r3)				# 2124
	addi	r3, r3, 140				# 2124
	bl	min_caml_fneg				# 2124
	addi	r3, r3, -140				# 2124
	lwz	r31, 136(r3)				# 2124
	mtspr	8, r31				# 2124
	lwz	r2, 8(r3)				# 134
	slwi	r5, r2, 2				# 134
	lwz	r6, 112(r3)				# 134
	lfs	f1, 120(r3)				# 134
	stfsx	f1, r6, r5				# 134
	lwz	r5, 4(r3)				# 135
	slwi	r7, r5, 2				# 135
	lfs	f1, 128(r3)				# 135
	stfsx	f1, r6, r7				# 135
	lwz	r7, 0(r3)				# 136
	slwi	r8, r7, 2				# 136
	stfsx	f0, r6, r8				# 136
	lwz	r6, 12(r3)				# 2125
	addi	r8, r6, 41				# 2125
	slwi	r8, r8, 2				# 2125
	lwz	r9, 64(r3)				# 2125
	lwzx	r8, r9, r8				# 2125
	lwz	r8, 0(r8)				# 508
	lfs	f0, 88(r3)				# 2125
	stw	r8, 136(r3)				# 2125
	mfspr	r31, 8				# 2125
	stw	r31, 140(r3)				# 2125
	addi	r3, r3, 144				# 2125
	bl	min_caml_fneg				# 2125
	addi	r3, r3, -144				# 2125
	lwz	r31, 140(r3)				# 2125
	mtspr	8, r31				# 2125
	lfs	f1, 72(r3)				# 2125
	stfs	f0, 144(r3)				# 2125
	mfspr	r31, 8				# 2125
	fmr	f0, f1				# 2125
	stw	r31, 152(r3)				# 2125
	addi	r3, r3, 156				# 2125
	bl	min_caml_fneg				# 2125
	addi	r3, r3, -156				# 2125
	lwz	r31, 152(r3)				# 2125
	mtspr	8, r31				# 2125
	lwz	r2, 8(r3)				# 134
	slwi	r5, r2, 2				# 134
	lwz	r6, 136(r3)				# 134
	lfs	f1, 144(r3)				# 134
	stfsx	f1, r6, r5				# 134
	lwz	r5, 4(r3)				# 135
	slwi	r7, r5, 2				# 135
	stfsx	f0, r6, r7				# 135
	lwz	r7, 0(r3)				# 136
	slwi	r8, r7, 2				# 136
	lfs	f0, 56(r3)				# 136
	stfsx	f0, r6, r8				# 136
	lwz	r6, 12(r3)				# 2126
	addi	r6, r6, 81				# 2126
	slwi	r6, r6, 2				# 2126
	lwz	r8, 64(r3)				# 2126
	lwzx	r6, r8, r6				# 2126
	lwz	r6, 0(r6)				# 508
	lfs	f1, 72(r3)				# 2126
	stw	r6, 152(r3)				# 2126
	mfspr	r31, 8				# 2126
	fmr	f0, f1				# 2126
	stw	r31, 156(r3)				# 2126
	addi	r3, r3, 160				# 2126
	bl	min_caml_fneg				# 2126
	addi	r3, r3, -160				# 2126
	lwz	r31, 156(r3)				# 2126
	mtspr	8, r31				# 2126
	lwz	r2, 8(r3)				# 134
	slwi	r2, r2, 2				# 134
	lwz	r5, 152(r3)				# 134
	stfsx	f0, r5, r2				# 134
	lwz	r2, 4(r3)				# 135
	slwi	r2, r2, 2				# 135
	lfs	f0, 88(r3)				# 135
	stfsx	f0, r5, r2				# 135
	lwz	r2, 0(r3)				# 136
	slwi	r2, r2, 2				# 136
	lfs	f0, 56(r3)				# 136
	stfsx	f0, r5, r2				# 136
	blr
ble_else.18158:
	fmul	f0, f1, f1				# 2104
	lis	r31, ha16(l.12324)
	addi	r31, r31, lo16(l.12324)
	lfs	f1, 0(r31)				# 2104
	fadd	f0, f0, f1				# 2104
	stw	r6, 12(r3)				# 2104
	stw	r5, 20(r3)				# 2104
	stw	r30, 156(r3)				# 2104
	stfs	f3, 160(r3)				# 2104
	stfs	f1, 168(r3)				# 2104
	stw	r11, 4(r3)				# 2104
	stw	r2, 176(r3)				# 2104
	stfs	f2, 184(r3)				# 2104
	mfspr	r31, 8				# 2104
	stw	r31, 192(r3)				# 2104
	addi	r3, r3, 196				# 2104
	bl	min_caml_sqrt				# 2104
	addi	r3, r3, -196				# 2104
	lwz	r31, 192(r3)				# 2104
	mtspr	8, r31				# 2104
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f1, 0(r31)				# 2105
	fdiv	f2, f1, f0				# 2105
	stfs	f1, 192(r3)				# 2106
	stfs	f0, 200(r3)				# 2106
	mfspr	r31, 8				# 2106
	fmr	f0, f2				# 2106
	stw	r31, 208(r3)				# 2106
	addi	r3, r3, 212				# 2106
	bl	min_caml_atan				# 2106
	addi	r3, r3, -212				# 2106
	lwz	r31, 208(r3)				# 2106
	mtspr	8, r31				# 2106
	lfs	f1, 184(r3)				# 2107
	fmul	f0, f0, f1				# 2107
	stfs	f0, 208(r3)				# 2099
	mfspr	r31, 8				# 2099
	stw	r31, 216(r3)				# 2099
	addi	r3, r3, 220				# 2099
	bl	min_caml_sin				# 2099
	addi	r3, r3, -220				# 2099
	lwz	r31, 216(r3)				# 2099
	mtspr	8, r31				# 2099
	lfs	f1, 208(r3)				# 2099
	stfs	f0, 216(r3)				# 2099
	mfspr	r31, 8				# 2099
	fmr	f0, f1				# 2099
	stw	r31, 224(r3)				# 2099
	addi	r3, r3, 228				# 2099
	bl	min_caml_cos				# 2099
	addi	r3, r3, -228				# 2099
	lwz	r31, 224(r3)				# 2099
	mtspr	8, r31				# 2099
	lfs	f1, 216(r3)				# 2099
	fdiv	f0, f1, f0				# 2099
	lfs	f1, 200(r3)				# 2108
	fmul	f0, f0, f1				# 2108
	lwz	r2, 4(r3)				# 2129
	lwz	r5, 176(r3)				# 2129
	add	r2, r5, r2				# 2129
	fmul	f1, f0, f0				# 2104
	lfs	f2, 168(r3)				# 2104
	fadd	f1, f1, f2				# 2104
	stfs	f0, 224(r3)				# 2104
	stw	r2, 232(r3)				# 2104
	mfspr	r31, 8				# 2104
	fmr	f0, f1				# 2104
	stw	r31, 236(r3)				# 2104
	addi	r3, r3, 240				# 2104
	bl	min_caml_sqrt				# 2104
	addi	r3, r3, -240				# 2104
	lwz	r31, 236(r3)				# 2104
	mtspr	8, r31				# 2104
	lfs	f1, 192(r3)				# 2105
	fdiv	f1, f1, f0				# 2105
	stfs	f0, 240(r3)				# 2106
	mfspr	r31, 8				# 2106
	fmr	f0, f1				# 2106
	stw	r31, 248(r3)				# 2106
	addi	r3, r3, 252				# 2106
	bl	min_caml_atan				# 2106
	addi	r3, r3, -252				# 2106
	lwz	r31, 248(r3)				# 2106
	mtspr	8, r31				# 2106
	lfs	f1, 160(r3)				# 2107
	fmul	f0, f0, f1				# 2107
	stfs	f0, 248(r3)				# 2099
	mfspr	r31, 8				# 2099
	stw	r31, 256(r3)				# 2099
	addi	r3, r3, 260				# 2099
	bl	min_caml_sin				# 2099
	addi	r3, r3, -260				# 2099
	lwz	r31, 256(r3)				# 2099
	mtspr	8, r31				# 2099
	lfs	f1, 248(r3)				# 2099
	stfs	f0, 256(r3)				# 2099
	mfspr	r31, 8				# 2099
	fmr	f0, f1				# 2099
	stw	r31, 264(r3)				# 2099
	addi	r3, r3, 268				# 2099
	bl	min_caml_cos				# 2099
	addi	r3, r3, -268				# 2099
	lwz	r31, 264(r3)				# 2099
	mtspr	8, r31				# 2099
	lfs	f1, 256(r3)				# 2099
	fdiv	f0, f1, f0				# 2099
	lfs	f1, 240(r3)				# 2108
	fmul	f1, f0, f1				# 2108
	lfs	f0, 224(r3)				# 2129
	lfs	f2, 184(r3)				# 2129
	lfs	f3, 160(r3)				# 2129
	lwz	r2, 232(r3)				# 2129
	lwz	r5, 20(r3)				# 2129
	lwz	r6, 12(r3)				# 2129
	lwz	r30, 156(r3)				# 2129
	lwz	r29, 0(r30)				# 2129
	mtspr	9, r29
	bctr				# 2129
calc_dirvecs.2907:
	lwz	r7, 24(r30)				# 2133
	lwz	r8, 20(r30)				# 2133
	lwz	r9, 16(r30)				# 2133
	lwz	r10, 12(r30)				# 2133
	lwz	r11, 8(r30)				# 2133
	lfs	f1, 4(r30)				# 2133
	cmpw	cr7, r10, r2				# 2134
	bgt	cr7, ble_else.18167				# 2134
	stw	r30, 0(r3)				# 2136
	stw	r8, 4(r3)				# 2136
	stw	r11, 8(r3)				# 2136
	stw	r9, 12(r3)				# 2136
	stw	r2, 16(r3)				# 2136
	stfs	f0, 24(r3)				# 2136
	stfs	f1, 32(r3)				# 2136
	stw	r6, 40(r3)				# 2136
	stw	r5, 44(r3)				# 2136
	stw	r10, 48(r3)				# 2136
	stw	r7, 52(r3)				# 2136
	mfspr	r31, 8				# 2136
	stw	r31, 56(r3)				# 2136
	addi	r3, r3, 60				# 2136
	bl	min_caml_float_of_int				# 2136
	addi	r3, r3, -60				# 2136
	lwz	r31, 56(r3)				# 2136
	mtspr	8, r31				# 2136
	lis	r31, ha16(l.12678)
	addi	r31, r31, lo16(l.12678)
	lfs	f1, 0(r31)				# 2136
	fmul	f0, f0, f1				# 2136
	lis	r31, ha16(l.12679)
	addi	r31, r31, lo16(l.12679)
	lfs	f2, 0(r31)				# 2136
	fsub	f2, f0, f2				# 2136
	lfs	f0, 32(r3)				# 2137
	lfs	f3, 24(r3)				# 2137
	lwz	r2, 48(r3)				# 2137
	lwz	r5, 44(r3)				# 2137
	lwz	r6, 40(r3)				# 2137
	lwz	r30, 52(r3)				# 2137
	stfs	f1, 56(r3)				# 2137
	mfspr	r31, 8				# 2137
	fmr	f1, f0				# 2137
	stw	r31, 64(r3)				# 2137
	addi	r3, r3, 68				# 2137
	lwz	r31, 0(r30)				# 2137
	mtspr	9, r31				# 2137
	bctrl				# 2137
	addi	r3, r3, -68				# 2137
	lwz	r31, 64(r3)				# 2137
	mtspr	8, r31				# 2137
	lwz	r2, 16(r3)				# 2139
	mfspr	r31, 8				# 2139
	stw	r31, 64(r3)				# 2139
	addi	r3, r3, 68				# 2139
	bl	min_caml_float_of_int				# 2139
	addi	r3, r3, -68				# 2139
	lwz	r31, 64(r3)				# 2139
	mtspr	8, r31				# 2139
	lfs	f1, 56(r3)				# 2139
	fmul	f0, f0, f1				# 2139
	lis	r31, ha16(l.12324)
	addi	r31, r31, lo16(l.12324)
	lfs	f1, 0(r31)				# 2139
	fadd	f2, f0, f1				# 2139
	lwz	r2, 12(r3)				# 2140
	lwz	r5, 40(r3)				# 2140
	add	r6, r5, r2				# 2140
	lfs	f0, 32(r3)				# 2140
	lfs	f3, 24(r3)				# 2140
	lwz	r2, 48(r3)				# 2140
	lwz	r7, 44(r3)				# 2140
	lwz	r30, 52(r3)				# 2140
	mfspr	r31, 8				# 2140
	mr	r5, r7				# 2140
	fmr	f1, f0				# 2140
	stw	r31, 64(r3)				# 2140
	addi	r3, r3, 68				# 2140
	lwz	r31, 0(r30)				# 2140
	mtspr	9, r31				# 2140
	bctrl				# 2140
	addi	r3, r3, -68				# 2140
	lwz	r31, 64(r3)				# 2140
	mtspr	8, r31				# 2140
	lwz	r2, 8(r3)				# 2142
	lwz	r5, 16(r3)				# 2142
	sub	r5, r5, r2				# 2142
	lwz	r6, 44(r3)				# 124
	add	r2, r6, r2				# 124
	lwz	r6, 4(r3)				# 125
	cmpw	cr7, r6, r2				# 125
	bgt	cr7, ble_else.18169				# 125
	sub	r2, r2, r6				# 125
	b	ble_cont.18170				# 125
ble_else.18169:
ble_cont.18170:
	lfs	f0, 24(r3)				# 2142
	lwz	r6, 40(r3)				# 2142
	lwz	r30, 0(r3)				# 2142
	mr	r29, r5				# 2142
	mr	r5, r2				# 2142
	mr	r2, r29				# 2142
	lwz	r29, 0(r30)				# 2142
	mtspr	9, r29
	bctr				# 2142
ble_else.18167:
	blr
calc_dirvec_rows.2912:
	lwz	r7, 20(r30)				# 2147
	lwz	r8, 16(r30)				# 2147
	lwz	r9, 12(r30)				# 2147
	lwz	r10, 8(r30)				# 2147
	lwz	r11, 4(r30)				# 2147
	cmpw	cr7, r10, r2				# 2148
	bgt	cr7, ble_else.18172				# 2148
	stw	r30, 0(r3)				# 2149
	stw	r8, 4(r3)				# 2149
	stw	r9, 8(r3)				# 2149
	stw	r11, 12(r3)				# 2149
	stw	r2, 16(r3)				# 2149
	stw	r6, 20(r3)				# 2149
	stw	r5, 24(r3)				# 2149
	stw	r7, 28(r3)				# 2149
	mfspr	r31, 8				# 2149
	stw	r31, 32(r3)				# 2149
	addi	r3, r3, 36				# 2149
	bl	min_caml_float_of_int				# 2149
	addi	r3, r3, -36				# 2149
	lwz	r31, 32(r3)				# 2149
	mtspr	8, r31				# 2149
	lis	r31, ha16(l.12678)
	addi	r31, r31, lo16(l.12678)
	lfs	f1, 0(r31)				# 2149
	fmul	f0, f0, f1				# 2149
	lis	r31, ha16(l.12679)
	addi	r31, r31, lo16(l.12679)
	lfs	f1, 0(r31)				# 2149
	fsub	f0, f0, f1				# 2149
	addi	r2, 0, 4
	lwz	r5, 24(r3)				# 2150
	lwz	r6, 20(r3)				# 2150
	lwz	r30, 28(r3)				# 2150
	mfspr	r31, 8				# 2150
	stw	r31, 32(r3)				# 2150
	addi	r3, r3, 36				# 2150
	lwz	r31, 0(r30)				# 2150
	mtspr	9, r31				# 2150
	bctrl				# 2150
	addi	r3, r3, -36				# 2150
	lwz	r31, 32(r3)				# 2150
	mtspr	8, r31				# 2150
	lwz	r2, 12(r3)				# 2151
	lwz	r5, 16(r3)				# 2151
	sub	r2, r5, r2				# 2151
	lwz	r5, 8(r3)				# 124
	lwz	r6, 24(r3)				# 124
	add	r5, r6, r5				# 124
	lwz	r6, 4(r3)				# 125
	cmpw	cr7, r6, r5				# 125
	bgt	cr7, ble_else.18173				# 125
	sub	r5, r5, r6				# 125
	b	ble_cont.18174				# 125
ble_else.18173:
ble_cont.18174:
	lwz	r6, 20(r3)				# 2151
	addi	r6, r6, 4				# 2151
	lwz	r30, 0(r3)				# 2151
	lwz	r29, 0(r30)				# 2151
	mtspr	9, r29
	bctr				# 2151
ble_else.18172:
	blr
create_dirvec_elements.2918:
	lwz	r6, 20(r30)				# 2164
	lwz	r7, 16(r30)				# 2164
	lwz	r8, 12(r30)				# 2164
	lwz	r9, 8(r30)				# 2164
	lfs	f0, 4(r30)				# 2164
	cmpw	cr7, r8, r5				# 2165
	bgt	cr7, ble_else.18176				# 2165
	stw	r30, 0(r3)				# 2159
	stw	r9, 4(r3)				# 2159
	stw	r2, 8(r3)				# 2159
	stw	r5, 12(r3)				# 2159
	stw	r6, 16(r3)				# 2159
	stw	r8, 20(r3)				# 2159
	mfspr	r31, 8				# 2159
	mr	r2, r7				# 2159
	stw	r31, 24(r3)				# 2159
	addi	r3, r3, 28				# 2159
	bl	min_caml_create_float_array				# 2159
	addi	r3, r3, -28				# 2159
	lwz	r31, 24(r3)				# 2159
	mr	r5, r2				# 2159
	mtspr	8, r31				# 2159
	lwz	r2, 20(r3)				# 2160
	slwi	r2, r2, 2				# 2160
	lwz	r6, 16(r3)				# 2160
	lwzx	r2, r6, r2				# 2160
	stw	r5, 24(r3)				# 2160
	mfspr	r31, 8				# 2160
	stw	r31, 28(r3)				# 2160
	addi	r3, r3, 32				# 2160
	bl	min_caml_create_array				# 2160
	addi	r3, r3, -32				# 2160
	lwz	r31, 28(r3)				# 2160
	mtspr	8, r31				# 2160
	mr	r5, r4				# 2161
	addi	r4, r4, 8				# 2161
	stw	r2, 4(r5)				# 2161
	lwz	r2, 24(r3)				# 2161
	stw	r2, 0(r5)				# 2161
	mr	r2, r5				# 2161
	lwz	r5, 12(r3)				# 2166
	slwi	r6, r5, 2				# 2166
	lwz	r7, 8(r3)				# 2166
	stwx	r2, r7, r6				# 2166
	lwz	r2, 4(r3)				# 2167
	sub	r5, r5, r2				# 2167
	lwz	r30, 0(r3)				# 2167
	mr	r2, r7				# 2167
	lwz	r29, 0(r30)				# 2167
	mtspr	9, r29
	bctr				# 2167
ble_else.18176:
	blr
create_dirvecs.2921:
	lwz	r5, 28(r30)				# 2171
	lwz	r6, 24(r30)				# 2171
	lwz	r7, 20(r30)				# 2171
	lwz	r8, 16(r30)				# 2171
	lwz	r9, 12(r30)				# 2171
	lwz	r10, 8(r30)				# 2171
	lfs	f0, 4(r30)				# 2171
	cmpw	cr7, r9, r2				# 2172
	bgt	cr7, ble_else.18178				# 2172
	addi	r11, 0, 120
	stw	r30, 0(r3)				# 2159
	stw	r10, 4(r3)				# 2159
	stw	r7, 8(r3)				# 2159
	stw	r6, 12(r3)				# 2159
	stw	r2, 16(r3)				# 2159
	stw	r11, 20(r3)				# 2159
	stw	r5, 24(r3)				# 2159
	stw	r9, 28(r3)				# 2159
	mfspr	r31, 8				# 2159
	mr	r2, r8				# 2159
	stw	r31, 32(r3)				# 2159
	addi	r3, r3, 36				# 2159
	bl	min_caml_create_float_array				# 2159
	addi	r3, r3, -36				# 2159
	lwz	r31, 32(r3)				# 2159
	mr	r5, r2				# 2159
	mtspr	8, r31				# 2159
	lwz	r2, 28(r3)				# 2160
	slwi	r2, r2, 2				# 2160
	lwz	r6, 24(r3)				# 2160
	lwzx	r2, r6, r2				# 2160
	stw	r5, 32(r3)				# 2160
	mfspr	r31, 8				# 2160
	stw	r31, 36(r3)				# 2160
	addi	r3, r3, 40				# 2160
	bl	min_caml_create_array				# 2160
	addi	r3, r3, -40				# 2160
	lwz	r31, 36(r3)				# 2160
	mtspr	8, r31				# 2160
	mr	r5, r4				# 2161
	addi	r4, r4, 8				# 2161
	stw	r2, 4(r5)				# 2161
	lwz	r2, 32(r3)				# 2161
	stw	r2, 0(r5)				# 2161
	lwz	r2, 20(r3)				# 2173
	mfspr	r31, 8				# 2173
	stw	r31, 36(r3)				# 2173
	addi	r3, r3, 40				# 2173
	bl	min_caml_create_array				# 2173
	addi	r3, r3, -40				# 2173
	lwz	r31, 36(r3)				# 2173
	mtspr	8, r31				# 2173
	lwz	r5, 16(r3)				# 2173
	slwi	r6, r5, 2				# 2173
	lwz	r7, 12(r3)				# 2173
	stwx	r2, r7, r6				# 2173
	slwi	r2, r5, 2				# 2174
	lwzx	r2, r7, r2				# 2174
	addi	r6, 0, 118
	lwz	r30, 8(r3)				# 2174
	mfspr	r31, 8				# 2174
	mr	r5, r6				# 2174
	stw	r31, 36(r3)				# 2174
	addi	r3, r3, 40				# 2174
	lwz	r31, 0(r30)				# 2174
	mtspr	9, r31				# 2174
	bctrl				# 2174
	addi	r3, r3, -40				# 2174
	lwz	r31, 36(r3)				# 2174
	mtspr	8, r31				# 2174
	lwz	r2, 4(r3)				# 2175
	lwz	r5, 16(r3)				# 2175
	sub	r2, r5, r2				# 2175
	lwz	r30, 0(r3)				# 2175
	lwz	r29, 0(r30)				# 2175
	mtspr	9, r29
	bctr				# 2175
ble_else.18178:
	blr
init_dirvec_constants.2923:
	lwz	r6, 16(r30)				# 2181
	lwz	r7, 12(r30)				# 2181
	lwz	r8, 8(r30)				# 2181
	lwz	r9, 4(r30)				# 2181
	cmpw	cr7, r8, r5				# 2182
	bgt	cr7, ble_else.18180				# 2182
	slwi	r10, r5, 2				# 2183
	lwzx	r10, r2, r10				# 2183
	slwi	r8, r8, 2				# 1122
	lwzx	r6, r6, r8				# 1122
	sub	r6, r6, r9				# 1122
	stw	r2, 0(r3)				# 1122
	stw	r30, 4(r3)				# 1122
	stw	r9, 8(r3)				# 1122
	stw	r5, 12(r3)				# 1122
	mfspr	r31, 8				# 1122
	mr	r5, r6				# 1122
	mr	r2, r10				# 1122
	mr	r30, r7				# 1122
	stw	r31, 16(r3)				# 1122
	addi	r3, r3, 20				# 1122
	lwz	r31, 0(r30)				# 1122
	mtspr	9, r31				# 1122
	bctrl				# 1122
	addi	r3, r3, -20				# 1122
	lwz	r31, 16(r3)				# 1122
	mtspr	8, r31				# 1122
	lwz	r2, 8(r3)				# 2184
	lwz	r5, 12(r3)				# 2184
	sub	r5, r5, r2				# 2184
	lwz	r2, 0(r3)				# 2184
	lwz	r30, 4(r3)				# 2184
	lwz	r29, 0(r30)				# 2184
	mtspr	9, r29
	bctr				# 2184
ble_else.18180:
	blr
init_vecset_constants.2926:
	lwz	r5, 16(r30)				# 2188
	lwz	r6, 12(r30)				# 2188
	lwz	r7, 8(r30)				# 2188
	lwz	r8, 4(r30)				# 2188
	cmpw	cr7, r7, r2				# 2189
	bgt	cr7, ble_else.18182				# 2189
	slwi	r7, r2, 2				# 2190
	lwzx	r6, r6, r7				# 2190
	addi	r7, 0, 119
	stw	r30, 0(r3)				# 2190
	stw	r8, 4(r3)				# 2190
	stw	r2, 8(r3)				# 2190
	mfspr	r31, 8				# 2190
	mr	r2, r6				# 2190
	mr	r30, r5				# 2190
	mr	r5, r7				# 2190
	stw	r31, 12(r3)				# 2190
	addi	r3, r3, 16				# 2190
	lwz	r31, 0(r30)				# 2190
	mtspr	9, r31				# 2190
	bctrl				# 2190
	addi	r3, r3, -16				# 2190
	lwz	r31, 12(r3)				# 2190
	mtspr	8, r31				# 2190
	lwz	r2, 4(r3)				# 2191
	lwz	r5, 8(r3)				# 2191
	sub	r2, r5, r2				# 2191
	lwz	r30, 0(r3)				# 2191
	lwz	r29, 0(r30)				# 2191
	mtspr	9, r29
	bctr				# 2191
ble_else.18182:
	blr
setup_reflections.2943:
	lwz	r5, 44(r30)				# 2242
	lwz	r6, 40(r30)				# 2242
	lwz	r7, 36(r30)				# 2242
	lwz	r8, 32(r30)				# 2242
	lwz	r9, 28(r30)				# 2242
	lwz	r10, 24(r30)				# 2242
	lwz	r11, 20(r30)				# 2242
	lwz	r12, 16(r30)				# 2242
	lwz	r13, 12(r30)				# 2242
	lwz	r14, 8(r30)				# 2242
	lfs	f0, 4(r30)				# 2242
	cmpw	cr7, r13, r2				# 2243
	bgt	cr7, ble_else.18184				# 2243
	slwi	r15, r2, 2				# 2244
	lwzx	r6, r6, r15				# 2244
	lwz	r15, 8(r6)				# 249
	cmpw	cr7, r15, r11				# 2245
	bne	cr7, beq_else.18185				# 2245
	lwz	r15, 28(r6)				# 347
	slwi	r16, r13, 2				# 352
	lfsx	f1, r15, r16				# 352
	lis	r31, ha16(l.11649)
	addi	r31, r31, lo16(l.11649)
	lfs	f2, 0(r31)				# 2246
	stw	r5, 0(r3)				# 2246
	stw	r10, 4(r3)				# 2246
	stw	r8, 8(r3)				# 2246
	stfs	f0, 16(r3)				# 2246
	stw	r12, 24(r3)				# 2246
	stw	r11, 28(r3)				# 2246
	stw	r9, 32(r3)				# 2246
	stfs	f2, 40(r3)				# 2246
	stw	r7, 48(r3)				# 2246
	stw	r2, 52(r3)				# 2246
	stw	r14, 56(r3)				# 2246
	stw	r6, 60(r3)				# 2246
	stw	r13, 64(r3)				# 2246
	mfspr	r31, 8				# 2246
	fmr	f0, f1				# 2246
	fmr	f1, f2				# 2246
	stw	r31, 68(r3)				# 2246
	addi	r3, r3, 72				# 2246
	bl	min_caml_fless				# 2246
	addi	r3, r3, -72				# 2246
	lwz	r31, 68(r3)				# 2246
	mtspr	8, r31				# 2246
	lwz	r5, 64(r3)				# 2246
	cmpw	cr7, r2, r5				# 2246
	bne	cr7, beq_else.18188				# 2246
	blr
beq_else.18188:
	lwz	r2, 60(r3)				# 239
	lwz	r6, 4(r2)				# 239
	lwz	r7, 56(r3)				# 2249
	cmpw	cr7, r6, r7				# 2249
	bne	cr7, beq_else.18190				# 2249
	lwz	r6, 52(r3)				# 2214
	slwi	r6, r6, 2				# 2214
	slwi	r8, r5, 2				# 2215
	lwz	r9, 48(r3)				# 2215
	lwzx	r8, r9, r8				# 2215
	lwz	r2, 28(r2)				# 347
	slwi	r10, r5, 2				# 352
	lfsx	f0, r2, r10				# 352
	lfs	f1, 40(r3)				# 2216
	fsub	f0, f1, f0				# 2216
	slwi	r2, r5, 2				# 2217
	lwz	r10, 32(r3)				# 2217
	lfsx	f1, r10, r2				# 2217
	stw	r8, 68(r3)				# 2217
	stfs	f0, 72(r3)				# 2217
	stw	r6, 80(r3)				# 2217
	mfspr	r31, 8				# 2217
	fmr	f0, f1				# 2217
	stw	r31, 84(r3)				# 2217
	addi	r3, r3, 88				# 2217
	bl	min_caml_fneg				# 2217
	addi	r3, r3, -88				# 2217
	lwz	r31, 84(r3)				# 2217
	mtspr	8, r31				# 2217
	lwz	r2, 56(r3)				# 2218
	slwi	r5, r2, 2				# 2218
	lwz	r6, 32(r3)				# 2218
	lfsx	f1, r6, r5				# 2218
	stfs	f0, 88(r3)				# 2218
	mfspr	r31, 8				# 2218
	fmr	f0, f1				# 2218
	stw	r31, 96(r3)				# 2218
	addi	r3, r3, 100				# 2218
	bl	min_caml_fneg				# 2218
	addi	r3, r3, -100				# 2218
	lwz	r31, 96(r3)				# 2218
	mtspr	8, r31				# 2218
	lwz	r2, 28(r3)				# 2219
	slwi	r5, r2, 2				# 2219
	lwz	r6, 32(r3)				# 2219
	lfsx	f1, r6, r5				# 2219
	stfs	f0, 96(r3)				# 2219
	mfspr	r31, 8				# 2219
	fmr	f0, f1				# 2219
	stw	r31, 104(r3)				# 2219
	addi	r3, r3, 108				# 2219
	bl	min_caml_fneg				# 2219
	addi	r3, r3, -108				# 2219
	lwz	r31, 104(r3)				# 2219
	mtspr	8, r31				# 2219
	lwz	r2, 56(r3)				# 2220
	lwz	r5, 80(r3)				# 2220
	add	r6, r5, r2				# 2220
	lwz	r7, 64(r3)				# 2220
	slwi	r8, r7, 2				# 2220
	lwz	r9, 32(r3)				# 2220
	lfsx	f1, r9, r8				# 2220
	lfs	f2, 16(r3)				# 2159
	lwz	r8, 24(r3)				# 2159
	stw	r6, 104(r3)				# 2159
	stfs	f0, 112(r3)				# 2159
	stfs	f1, 120(r3)				# 2159
	mfspr	r31, 8				# 2159
	mr	r2, r8				# 2159
	fmr	f0, f2				# 2159
	stw	r31, 128(r3)				# 2159
	addi	r3, r3, 132				# 2159
	bl	min_caml_create_float_array				# 2159
	addi	r3, r3, -132				# 2159
	lwz	r31, 128(r3)				# 2159
	mr	r5, r2				# 2159
	mtspr	8, r31				# 2159
	lwz	r2, 64(r3)				# 2160
	slwi	r6, r2, 2				# 2160
	lwz	r7, 8(r3)				# 2160
	lwzx	r6, r7, r6				# 2160
	stw	r5, 128(r3)				# 2160
	mfspr	r31, 8				# 2160
	mr	r2, r6				# 2160
	stw	r31, 132(r3)				# 2160
	addi	r3, r3, 136				# 2160
	bl	min_caml_create_array				# 2160
	addi	r3, r3, -136				# 2160
	lwz	r31, 132(r3)				# 2160
	mtspr	8, r31				# 2160
	mr	r5, r4				# 2161
	addi	r4, r4, 8				# 2161
	stw	r2, 4(r5)				# 2161
	lwz	r2, 128(r3)				# 2161
	stw	r2, 0(r5)				# 2161
	lwz	r6, 64(r3)				# 134
	slwi	r7, r6, 2				# 134
	lfs	f0, 120(r3)				# 134
	stfsx	f0, r2, r7				# 134
	lwz	r7, 56(r3)				# 135
	slwi	r8, r7, 2				# 135
	lfs	f0, 96(r3)				# 135
	stfsx	f0, r2, r8				# 135
	lwz	r8, 28(r3)				# 136
	slwi	r9, r8, 2				# 136
	lfs	f1, 112(r3)				# 136
	stfsx	f1, r2, r9				# 136
	slwi	r2, r6, 2				# 1122
	lwz	r9, 8(r3)				# 1122
	lwzx	r2, r9, r2				# 1122
	sub	r2, r2, r7				# 1122
	lwz	r30, 4(r3)				# 1122
	stw	r5, 132(r3)				# 1122
	mfspr	r31, 8				# 1122
	mr	r29, r5				# 1122
	mr	r5, r2				# 1122
	mr	r2, r29				# 1122
	stw	r31, 136(r3)				# 1122
	addi	r3, r3, 140				# 1122
	lwz	r31, 0(r30)				# 1122
	mtspr	9, r31				# 1122
	bctrl				# 1122
	addi	r3, r3, -140				# 1122
	lwz	r31, 136(r3)				# 1122
	mtspr	8, r31				# 1122
	mr	r2, r4				# 2209
	addi	r4, r4, 12				# 2209
	lfs	f0, 72(r3)				# 2209
	stfs	f0, 8(r2)				# 2209
	lwz	r5, 132(r3)				# 2209
	stw	r5, 4(r2)				# 2209
	lwz	r5, 104(r3)				# 2209
	stw	r5, 0(r2)				# 2209
	lwz	r5, 68(r3)				# 2209
	slwi	r6, r5, 2				# 2209
	lwz	r7, 0(r3)				# 2209
	stwx	r2, r7, r6				# 2209
	lwz	r2, 56(r3)				# 2221
	add	r6, r5, r2				# 2221
	lwz	r8, 28(r3)				# 2221
	lwz	r9, 80(r3)				# 2221
	add	r10, r9, r8				# 2221
	slwi	r11, r2, 2				# 2221
	lwz	r12, 32(r3)				# 2221
	lfsx	f1, r12, r11				# 2221
	lfs	f2, 16(r3)				# 2159
	lwz	r11, 24(r3)				# 2159
	stw	r6, 136(r3)				# 2159
	stw	r10, 140(r3)				# 2159
	stfs	f1, 144(r3)				# 2159
	mfspr	r31, 8				# 2159
	mr	r2, r11				# 2159
	fmr	f0, f2				# 2159
	stw	r31, 152(r3)				# 2159
	addi	r3, r3, 156				# 2159
	bl	min_caml_create_float_array				# 2159
	addi	r3, r3, -156				# 2159
	lwz	r31, 152(r3)				# 2159
	mr	r5, r2				# 2159
	mtspr	8, r31				# 2159
	lwz	r2, 64(r3)				# 2160
	slwi	r6, r2, 2				# 2160
	lwz	r7, 8(r3)				# 2160
	lwzx	r6, r7, r6				# 2160
	stw	r5, 152(r3)				# 2160
	mfspr	r31, 8				# 2160
	mr	r2, r6				# 2160
	stw	r31, 156(r3)				# 2160
	addi	r3, r3, 160				# 2160
	bl	min_caml_create_array				# 2160
	addi	r3, r3, -160				# 2160
	lwz	r31, 156(r3)				# 2160
	mtspr	8, r31				# 2160
	mr	r5, r4				# 2161
	addi	r4, r4, 8				# 2161
	stw	r2, 4(r5)				# 2161
	lwz	r2, 152(r3)				# 2161
	stw	r2, 0(r5)				# 2161
	lwz	r6, 64(r3)				# 134
	slwi	r7, r6, 2				# 134
	lfs	f0, 88(r3)				# 134
	stfsx	f0, r2, r7				# 134
	lwz	r7, 56(r3)				# 135
	slwi	r8, r7, 2				# 135
	lfs	f1, 144(r3)				# 135
	stfsx	f1, r2, r8				# 135
	lwz	r8, 28(r3)				# 136
	slwi	r9, r8, 2				# 136
	lfs	f1, 112(r3)				# 136
	stfsx	f1, r2, r9				# 136
	slwi	r2, r6, 2				# 1122
	lwz	r9, 8(r3)				# 1122
	lwzx	r2, r9, r2				# 1122
	sub	r2, r2, r7				# 1122
	lwz	r30, 4(r3)				# 1122
	stw	r5, 156(r3)				# 1122
	mfspr	r31, 8				# 1122
	mr	r29, r5				# 1122
	mr	r5, r2				# 1122
	mr	r2, r29				# 1122
	stw	r31, 160(r3)				# 1122
	addi	r3, r3, 164				# 1122
	lwz	r31, 0(r30)				# 1122
	mtspr	9, r31				# 1122
	bctrl				# 1122
	addi	r3, r3, -164				# 1122
	lwz	r31, 160(r3)				# 1122
	mtspr	8, r31				# 1122
	mr	r2, r4				# 2209
	addi	r4, r4, 12				# 2209
	lfs	f0, 72(r3)				# 2209
	stfs	f0, 8(r2)				# 2209
	lwz	r5, 156(r3)				# 2209
	stw	r5, 4(r2)				# 2209
	lwz	r5, 140(r3)				# 2209
	stw	r5, 0(r2)				# 2209
	lwz	r5, 136(r3)				# 2209
	slwi	r5, r5, 2				# 2209
	lwz	r6, 0(r3)				# 2209
	stwx	r2, r6, r5				# 2209
	lwz	r2, 28(r3)				# 2222
	lwz	r5, 68(r3)				# 2222
	add	r7, r5, r2				# 2222
	lwz	r8, 24(r3)				# 2222
	lwz	r9, 80(r3)				# 2222
	add	r9, r9, r8				# 2222
	slwi	r10, r2, 2				# 2222
	lwz	r11, 32(r3)				# 2222
	lfsx	f1, r11, r10				# 2222
	lfs	f2, 16(r3)				# 2159
	stw	r7, 160(r3)				# 2159
	stw	r9, 164(r3)				# 2159
	stfs	f1, 168(r3)				# 2159
	mfspr	r31, 8				# 2159
	mr	r2, r8				# 2159
	fmr	f0, f2				# 2159
	stw	r31, 176(r3)				# 2159
	addi	r3, r3, 180				# 2159
	bl	min_caml_create_float_array				# 2159
	addi	r3, r3, -180				# 2159
	lwz	r31, 176(r3)				# 2159
	mr	r5, r2				# 2159
	mtspr	8, r31				# 2159
	lwz	r2, 64(r3)				# 2160
	slwi	r6, r2, 2				# 2160
	lwz	r7, 8(r3)				# 2160
	lwzx	r6, r7, r6				# 2160
	stw	r5, 176(r3)				# 2160
	mfspr	r31, 8				# 2160
	mr	r2, r6				# 2160
	stw	r31, 180(r3)				# 2160
	addi	r3, r3, 184				# 2160
	bl	min_caml_create_array				# 2160
	addi	r3, r3, -184				# 2160
	lwz	r31, 180(r3)				# 2160
	mtspr	8, r31				# 2160
	mr	r5, r4				# 2161
	addi	r4, r4, 8				# 2161
	stw	r2, 4(r5)				# 2161
	lwz	r2, 176(r3)				# 2161
	stw	r2, 0(r5)				# 2161
	lwz	r6, 64(r3)				# 134
	slwi	r7, r6, 2				# 134
	lfs	f0, 88(r3)				# 134
	stfsx	f0, r2, r7				# 134
	lwz	r7, 56(r3)				# 135
	slwi	r8, r7, 2				# 135
	lfs	f0, 96(r3)				# 135
	stfsx	f0, r2, r8				# 135
	lwz	r8, 28(r3)				# 136
	slwi	r8, r8, 2				# 136
	lfs	f0, 168(r3)				# 136
	stfsx	f0, r2, r8				# 136
	slwi	r2, r6, 2				# 1122
	lwz	r8, 8(r3)				# 1122
	lwzx	r2, r8, r2				# 1122
	sub	r2, r2, r7				# 1122
	lwz	r30, 4(r3)				# 1122
	stw	r5, 180(r3)				# 1122
	mfspr	r31, 8				# 1122
	mr	r29, r5				# 1122
	mr	r5, r2				# 1122
	mr	r2, r29				# 1122
	stw	r31, 184(r3)				# 1122
	addi	r3, r3, 188				# 1122
	lwz	r31, 0(r30)				# 1122
	mtspr	9, r31				# 1122
	bctrl				# 1122
	addi	r3, r3, -188				# 1122
	lwz	r31, 184(r3)				# 1122
	mtspr	8, r31				# 1122
	mr	r2, r4				# 2209
	addi	r4, r4, 12				# 2209
	lfs	f0, 72(r3)				# 2209
	stfs	f0, 8(r2)				# 2209
	lwz	r5, 180(r3)				# 2209
	stw	r5, 4(r2)				# 2209
	lwz	r5, 164(r3)				# 2209
	stw	r5, 0(r2)				# 2209
	lwz	r5, 160(r3)				# 2209
	slwi	r5, r5, 2				# 2209
	lwz	r6, 0(r3)				# 2209
	stwx	r2, r6, r5				# 2209
	lwz	r2, 24(r3)				# 2223
	lwz	r5, 68(r3)				# 2223
	add	r2, r5, r2				# 2223
	lwz	r5, 64(r3)				# 2223
	slwi	r5, r5, 2				# 2223
	lwz	r6, 48(r3)				# 2223
	stwx	r2, r6, r5				# 2223
	blr
beq_else.18190:
	lwz	r8, 28(r3)				# 2251
	cmpw	cr7, r6, r8				# 2251
	bne	cr7, beq_else.18194				# 2251
	lwz	r6, 52(r3)				# 2228
	slwi	r6, r6, 2				# 2228
	add	r6, r6, r7				# 2228
	slwi	r9, r5, 2				# 2229
	lwz	r10, 48(r3)				# 2229
	lwzx	r9, r10, r9				# 2229
	lwz	r11, 28(r2)				# 347
	slwi	r12, r5, 2				# 352
	lfsx	f0, r11, r12				# 352
	lfs	f1, 40(r3)				# 2230
	fsub	f0, f1, f0				# 2230
	lwz	r11, 16(r2)				# 307
	slwi	r12, r5, 2				# 182
	lwz	r13, 32(r3)				# 182
	lfsx	f1, r13, r12				# 182
	slwi	r12, r5, 2				# 182
	lfsx	f2, r11, r12				# 182
	fmul	f1, f1, f2				# 182
	slwi	r12, r7, 2				# 182
	lfsx	f2, r13, r12				# 182
	slwi	r12, r7, 2				# 182
	lfsx	f3, r11, r12				# 182
	fmul	f2, f2, f3				# 182
	fadd	f1, f1, f2				# 182
	slwi	r12, r8, 2				# 182
	lfsx	f2, r13, r12				# 182
	slwi	r12, r8, 2				# 182
	lfsx	f3, r11, r12				# 182
	fmul	f2, f2, f3				# 182
	fadd	f1, f1, f2				# 182
	lis	r31, ha16(l.11614)
	addi	r31, r31, lo16(l.11614)
	lfs	f2, 0(r31)				# 2234
	lwz	r11, 16(r2)				# 277
	slwi	r12, r5, 2				# 282
	lfsx	f3, r11, r12				# 282
	fmul	f3, f2, f3				# 2234
	fmul	f3, f3, f1				# 2234
	slwi	r11, r5, 2				# 2234
	lfsx	f4, r13, r11				# 2234
	fsub	f3, f3, f4				# 2234
	lwz	r11, 16(r2)				# 287
	slwi	r12, r7, 2				# 292
	lfsx	f4, r11, r12				# 292
	fmul	f4, f2, f4				# 2235
	fmul	f4, f4, f1				# 2235
	slwi	r11, r7, 2				# 2235
	lfsx	f5, r13, r11				# 2235
	fsub	f4, f4, f5				# 2235
	lwz	r2, 16(r2)				# 297
	slwi	r11, r8, 2				# 302
	lfsx	f5, r2, r11				# 302
	fmul	f2, f2, f5				# 2236
	fmul	f1, f2, f1				# 2236
	slwi	r2, r8, 2				# 2236
	lfsx	f2, r13, r2				# 2236
	fsub	f1, f1, f2				# 2236
	lfs	f2, 16(r3)				# 2159
	lwz	r2, 24(r3)				# 2159
	stw	r9, 184(r3)				# 2159
	stw	r6, 188(r3)				# 2159
	stfs	f0, 192(r3)				# 2159
	stfs	f1, 200(r3)				# 2159
	stfs	f4, 208(r3)				# 2159
	stfs	f3, 216(r3)				# 2159
	mfspr	r31, 8				# 2159
	fmr	f0, f2				# 2159
	stw	r31, 224(r3)				# 2159
	addi	r3, r3, 228				# 2159
	bl	min_caml_create_float_array				# 2159
	addi	r3, r3, -228				# 2159
	lwz	r31, 224(r3)				# 2159
	mr	r5, r2				# 2159
	mtspr	8, r31				# 2159
	lwz	r2, 64(r3)				# 2160
	slwi	r6, r2, 2				# 2160
	lwz	r7, 8(r3)				# 2160
	lwzx	r6, r7, r6				# 2160
	stw	r5, 224(r3)				# 2160
	mfspr	r31, 8				# 2160
	mr	r2, r6				# 2160
	stw	r31, 228(r3)				# 2160
	addi	r3, r3, 232				# 2160
	bl	min_caml_create_array				# 2160
	addi	r3, r3, -232				# 2160
	lwz	r31, 228(r3)				# 2160
	mtspr	8, r31				# 2160
	mr	r5, r4				# 2161
	addi	r4, r4, 8				# 2161
	stw	r2, 4(r5)				# 2161
	lwz	r2, 224(r3)				# 2161
	stw	r2, 0(r5)				# 2161
	lwz	r6, 64(r3)				# 134
	slwi	r7, r6, 2				# 134
	lfs	f0, 216(r3)				# 134
	stfsx	f0, r2, r7				# 134
	lwz	r7, 56(r3)				# 135
	slwi	r8, r7, 2				# 135
	lfs	f0, 208(r3)				# 135
	stfsx	f0, r2, r8				# 135
	lwz	r8, 28(r3)				# 136
	slwi	r8, r8, 2				# 136
	lfs	f0, 200(r3)				# 136
	stfsx	f0, r2, r8				# 136
	slwi	r2, r6, 2				# 1122
	lwz	r8, 8(r3)				# 1122
	lwzx	r2, r8, r2				# 1122
	sub	r2, r2, r7				# 1122
	lwz	r30, 4(r3)				# 1122
	stw	r5, 228(r3)				# 1122
	mfspr	r31, 8				# 1122
	mr	r29, r5				# 1122
	mr	r5, r2				# 1122
	mr	r2, r29				# 1122
	stw	r31, 232(r3)				# 1122
	addi	r3, r3, 236				# 1122
	lwz	r31, 0(r30)				# 1122
	mtspr	9, r31				# 1122
	bctrl				# 1122
	addi	r3, r3, -236				# 1122
	lwz	r31, 232(r3)				# 1122
	mtspr	8, r31				# 1122
	mr	r2, r4				# 2209
	addi	r4, r4, 12				# 2209
	lfs	f0, 192(r3)				# 2209
	stfs	f0, 8(r2)				# 2209
	lwz	r5, 228(r3)				# 2209
	stw	r5, 4(r2)				# 2209
	lwz	r5, 188(r3)				# 2209
	stw	r5, 0(r2)				# 2209
	lwz	r5, 184(r3)				# 2209
	slwi	r6, r5, 2				# 2209
	lwz	r7, 0(r3)				# 2209
	stwx	r2, r7, r6				# 2209
	lwz	r2, 56(r3)				# 2237
	add	r2, r5, r2				# 2237
	lwz	r5, 64(r3)				# 2237
	slwi	r5, r5, 2				# 2237
	lwz	r6, 48(r3)				# 2237
	stwx	r2, r6, r5				# 2237
	blr
beq_else.18194:
	blr
beq_else.18185:
	blr
ble_else.18184:
	blr
_min_caml_start: # main entry point
	addi	r2, 0, 1
	addi	r5, 0, 0
	stw	r2, 0(r3)				# 17
	stw	r5, 4(r3)				# 17
	mfspr	r31, 8				# 17
	stw	r31, 8(r3)				# 17
	addi	r3, r3, 12				# 17
	bl	min_caml_create_array				# 17
	addi	r3, r3, -12				# 17
	lwz	r31, 8(r3)				# 17
	mtspr	8, r31				# 17
	lis	r31, ha16(l.11658)
	addi	r31, r31, lo16(l.11658)
	lfs	f0, 0(r31)				# 21
	lwz	r5, 4(r3)				# 21
	stw	r2, 8(r3)				# 21
	stfs	f0, 16(r3)				# 21
	mfspr	r31, 8				# 21
	mr	r2, r5				# 21
	stw	r31, 24(r3)				# 21
	addi	r3, r3, 28				# 21
	bl	min_caml_create_float_array				# 21
	addi	r3, r3, -28				# 21
	lwz	r31, 24(r3)				# 21
	mtspr	8, r31				# 21
	addi	r5, 0, 60
	mr	r6, r4				# 22
	addi	r4, r4, 44				# 22
	stw	r2, 40(r6)				# 22
	stw	r2, 36(r6)				# 22
	stw	r2, 32(r6)				# 22
	stw	r2, 28(r6)				# 22
	lwz	r7, 4(r3)				# 22
	stw	r7, 24(r6)				# 22
	stw	r2, 20(r6)				# 22
	stw	r2, 16(r6)				# 22
	stw	r7, 12(r6)				# 22
	stw	r7, 8(r6)				# 22
	stw	r7, 4(r6)				# 22
	stw	r7, 0(r6)				# 22
	mr	r2, r6				# 22
	stw	r5, 24(r3)				# 22
	mfspr	r31, 8				# 22
	mr	r29, r5				# 22
	mr	r5, r2				# 22
	mr	r2, r29				# 22
	stw	r31, 28(r3)				# 22
	addi	r3, r3, 32				# 22
	bl	min_caml_create_array				# 22
	addi	r3, r3, -32				# 22
	lwz	r31, 28(r3)				# 22
	mtspr	8, r31				# 22
	addi	r5, 0, 3
	lfs	f0, 16(r3)				# 25
	stw	r2, 28(r3)				# 25
	stw	r5, 32(r3)				# 25
	mfspr	r31, 8				# 25
	mr	r2, r5				# 25
	stw	r31, 36(r3)				# 25
	addi	r3, r3, 40				# 25
	bl	min_caml_create_float_array				# 25
	addi	r3, r3, -40				# 25
	lwz	r31, 36(r3)				# 25
	mtspr	8, r31				# 25
	lfs	f0, 16(r3)				# 27
	lwz	r5, 32(r3)				# 27
	stw	r2, 36(r3)				# 27
	mfspr	r31, 8				# 27
	mr	r2, r5				# 27
	stw	r31, 40(r3)				# 27
	addi	r3, r3, 44				# 27
	bl	min_caml_create_float_array				# 27
	addi	r3, r3, -44				# 27
	lwz	r31, 40(r3)				# 27
	mtspr	8, r31				# 27
	lfs	f0, 16(r3)				# 29
	lwz	r5, 32(r3)				# 29
	stw	r2, 40(r3)				# 29
	mfspr	r31, 8				# 29
	mr	r2, r5				# 29
	stw	r31, 44(r3)				# 29
	addi	r3, r3, 48				# 29
	bl	min_caml_create_float_array				# 29
	addi	r3, r3, -48				# 29
	lwz	r31, 44(r3)				# 29
	mtspr	8, r31				# 29
	lis	r31, ha16(l.12176)
	addi	r31, r31, lo16(l.12176)
	lfs	f0, 0(r31)				# 31
	lwz	r5, 0(r3)				# 31
	stfs	f0, 48(r3)				# 31
	stw	r2, 56(r3)				# 31
	mfspr	r31, 8				# 31
	mr	r2, r5				# 31
	stw	r31, 60(r3)				# 31
	addi	r3, r3, 64				# 31
	bl	min_caml_create_float_array				# 31
	addi	r3, r3, -64				# 31
	lwz	r31, 60(r3)				# 31
	mtspr	8, r31				# 31
	addi	r5, 0, 50
	addi	r6, 0, -1
	lwz	r7, 0(r3)				# 33
	stw	r2, 60(r3)				# 33
	stw	r6, 64(r3)				# 33
	stw	r5, 68(r3)				# 33
	mfspr	r31, 8				# 33
	mr	r5, r6				# 33
	mr	r2, r7				# 33
	stw	r31, 72(r3)				# 33
	addi	r3, r3, 76				# 33
	bl	min_caml_create_array				# 33
	addi	r3, r3, -76				# 33
	lwz	r31, 72(r3)				# 33
	mr	r5, r2				# 33
	mtspr	8, r31				# 33
	lwz	r2, 68(r3)				# 33
	mfspr	r31, 8				# 33
	stw	r31, 72(r3)				# 33
	addi	r3, r3, 76				# 33
	bl	min_caml_create_array				# 33
	addi	r3, r3, -76				# 33
	lwz	r31, 72(r3)				# 33
	mtspr	8, r31				# 33
	lwz	r5, 0(r2)				# 35
	lwz	r6, 0(r3)				# 35
	stw	r2, 72(r3)				# 35
	mfspr	r31, 8				# 35
	mr	r2, r6				# 35
	stw	r31, 76(r3)				# 35
	addi	r3, r3, 80				# 35
	bl	min_caml_create_array				# 35
	addi	r3, r3, -80				# 35
	lwz	r31, 76(r3)				# 35
	mr	r5, r2				# 35
	mtspr	8, r31				# 35
	lwz	r2, 0(r3)				# 35
	mfspr	r31, 8				# 35
	stw	r31, 76(r3)				# 35
	addi	r3, r3, 80				# 35
	bl	min_caml_create_array				# 35
	addi	r3, r3, -80				# 35
	lwz	r31, 76(r3)				# 35
	mtspr	8, r31				# 35
	lfs	f0, 16(r3)				# 39
	lwz	r5, 0(r3)				# 39
	stw	r2, 76(r3)				# 39
	mfspr	r31, 8				# 39
	mr	r2, r5				# 39
	stw	r31, 80(r3)				# 39
	addi	r3, r3, 84				# 39
	bl	min_caml_create_float_array				# 39
	addi	r3, r3, -84				# 39
	lwz	r31, 80(r3)				# 39
	mtspr	8, r31				# 39
	lwz	r5, 0(r3)				# 41
	lwz	r6, 4(r3)				# 41
	stw	r2, 80(r3)				# 41
	mfspr	r31, 8				# 41
	mr	r2, r5				# 41
	mr	r5, r6				# 41
	stw	r31, 84(r3)				# 41
	addi	r3, r3, 88				# 41
	bl	min_caml_create_array				# 41
	addi	r3, r3, -88				# 41
	lwz	r31, 84(r3)				# 41
	mtspr	8, r31				# 41
	lis	r31, ha16(l.12785)
	addi	r31, r31, lo16(l.12785)
	lfs	f0, 0(r31)				# 43
	lwz	r5, 0(r3)				# 43
	stfs	f0, 88(r3)				# 43
	stw	r2, 96(r3)				# 43
	mfspr	r31, 8				# 43
	mr	r2, r5				# 43
	stw	r31, 100(r3)				# 43
	addi	r3, r3, 104				# 43
	bl	min_caml_create_float_array				# 43
	addi	r3, r3, -104				# 43
	lwz	r31, 100(r3)				# 43
	mtspr	8, r31				# 43
	lfs	f0, 16(r3)				# 45
	lwz	r5, 32(r3)				# 45
	stw	r2, 100(r3)				# 45
	mfspr	r31, 8				# 45
	mr	r2, r5				# 45
	stw	r31, 104(r3)				# 45
	addi	r3, r3, 108				# 45
	bl	min_caml_create_float_array				# 45
	addi	r3, r3, -108				# 45
	lwz	r31, 104(r3)				# 45
	mtspr	8, r31				# 45
	lwz	r5, 0(r3)				# 47
	lwz	r6, 4(r3)				# 47
	stw	r2, 104(r3)				# 47
	mfspr	r31, 8				# 47
	mr	r2, r5				# 47
	mr	r5, r6				# 47
	stw	r31, 108(r3)				# 47
	addi	r3, r3, 112				# 47
	bl	min_caml_create_array				# 47
	addi	r3, r3, -112				# 47
	lwz	r31, 108(r3)				# 47
	mtspr	8, r31				# 47
	lfs	f0, 16(r3)				# 49
	lwz	r5, 32(r3)				# 49
	stw	r2, 108(r3)				# 49
	mfspr	r31, 8				# 49
	mr	r2, r5				# 49
	stw	r31, 112(r3)				# 49
	addi	r3, r3, 116				# 49
	bl	min_caml_create_float_array				# 49
	addi	r3, r3, -116				# 49
	lwz	r31, 112(r3)				# 49
	mtspr	8, r31				# 49
	lfs	f0, 16(r3)				# 51
	lwz	r5, 32(r3)				# 51
	stw	r2, 112(r3)				# 51
	mfspr	r31, 8				# 51
	mr	r2, r5				# 51
	stw	r31, 116(r3)				# 51
	addi	r3, r3, 120				# 51
	bl	min_caml_create_float_array				# 51
	addi	r3, r3, -120				# 51
	lwz	r31, 116(r3)				# 51
	mtspr	8, r31				# 51
	lfs	f0, 16(r3)				# 54
	lwz	r5, 32(r3)				# 54
	stw	r2, 116(r3)				# 54
	mfspr	r31, 8				# 54
	mr	r2, r5				# 54
	stw	r31, 120(r3)				# 54
	addi	r3, r3, 124				# 54
	bl	min_caml_create_float_array				# 54
	addi	r3, r3, -124				# 54
	lwz	r31, 120(r3)				# 54
	mtspr	8, r31				# 54
	lfs	f0, 16(r3)				# 56
	lwz	r5, 32(r3)				# 56
	stw	r2, 120(r3)				# 56
	mfspr	r31, 8				# 56
	mr	r2, r5				# 56
	stw	r31, 124(r3)				# 56
	addi	r3, r3, 128				# 56
	bl	min_caml_create_float_array				# 56
	addi	r3, r3, -128				# 56
	lwz	r31, 124(r3)				# 56
	mtspr	8, r31				# 56
	addi	r5, 0, 2
	lwz	r6, 4(r3)				# 59
	stw	r2, 124(r3)				# 59
	stw	r5, 128(r3)				# 59
	mfspr	r31, 8				# 59
	mr	r2, r5				# 59
	mr	r5, r6				# 59
	stw	r31, 132(r3)				# 59
	addi	r3, r3, 136				# 59
	bl	min_caml_create_array				# 59
	addi	r3, r3, -136				# 59
	lwz	r31, 132(r3)				# 59
	mtspr	8, r31				# 59
	lwz	r5, 128(r3)				# 61
	lwz	r6, 4(r3)				# 61
	stw	r2, 132(r3)				# 61
	mfspr	r31, 8				# 61
	mr	r2, r5				# 61
	mr	r5, r6				# 61
	stw	r31, 136(r3)				# 61
	addi	r3, r3, 140				# 61
	bl	min_caml_create_array				# 61
	addi	r3, r3, -140				# 61
	lwz	r31, 136(r3)				# 61
	mtspr	8, r31				# 61
	lfs	f0, 16(r3)				# 63
	lwz	r5, 0(r3)				# 63
	stw	r2, 136(r3)				# 63
	mfspr	r31, 8				# 63
	mr	r2, r5				# 63
	stw	r31, 140(r3)				# 63
	addi	r3, r3, 144				# 63
	bl	min_caml_create_float_array				# 63
	addi	r3, r3, -144				# 63
	lwz	r31, 140(r3)				# 63
	mtspr	8, r31				# 63
	lfs	f0, 16(r3)				# 66
	lwz	r5, 32(r3)				# 66
	stw	r2, 140(r3)				# 66
	mfspr	r31, 8				# 66
	mr	r2, r5				# 66
	stw	r31, 144(r3)				# 66
	addi	r3, r3, 148				# 66
	bl	min_caml_create_float_array				# 66
	addi	r3, r3, -148				# 66
	lwz	r31, 144(r3)				# 66
	mtspr	8, r31				# 66
	lfs	f0, 16(r3)				# 68
	lwz	r5, 32(r3)				# 68
	stw	r2, 144(r3)				# 68
	mfspr	r31, 8				# 68
	mr	r2, r5				# 68
	stw	r31, 148(r3)				# 68
	addi	r3, r3, 152				# 68
	bl	min_caml_create_float_array				# 68
	addi	r3, r3, -152				# 68
	lwz	r31, 148(r3)				# 68
	mtspr	8, r31				# 68
	lfs	f0, 16(r3)				# 71
	lwz	r5, 32(r3)				# 71
	stw	r2, 148(r3)				# 71
	mfspr	r31, 8				# 71
	mr	r2, r5				# 71
	stw	r31, 152(r3)				# 71
	addi	r3, r3, 156				# 71
	bl	min_caml_create_float_array				# 71
	addi	r3, r3, -156				# 71
	lwz	r31, 152(r3)				# 71
	mtspr	8, r31				# 71
	lfs	f0, 16(r3)				# 72
	lwz	r5, 32(r3)				# 72
	stw	r2, 152(r3)				# 72
	mfspr	r31, 8				# 72
	mr	r2, r5				# 72
	stw	r31, 156(r3)				# 72
	addi	r3, r3, 160				# 72
	bl	min_caml_create_float_array				# 72
	addi	r3, r3, -160				# 72
	lwz	r31, 156(r3)				# 72
	mtspr	8, r31				# 72
	lfs	f0, 16(r3)				# 73
	lwz	r5, 32(r3)				# 73
	stw	r2, 156(r3)				# 73
	mfspr	r31, 8				# 73
	mr	r2, r5				# 73
	stw	r31, 160(r3)				# 73
	addi	r3, r3, 164				# 73
	bl	min_caml_create_float_array				# 73
	addi	r3, r3, -164				# 73
	lwz	r31, 160(r3)				# 73
	mtspr	8, r31				# 73
	lfs	f0, 16(r3)				# 76
	lwz	r5, 32(r3)				# 76
	stw	r2, 160(r3)				# 76
	mfspr	r31, 8				# 76
	mr	r2, r5				# 76
	stw	r31, 164(r3)				# 76
	addi	r3, r3, 168				# 76
	bl	min_caml_create_float_array				# 76
	addi	r3, r3, -168				# 76
	lwz	r31, 164(r3)				# 76
	mtspr	8, r31				# 76
	lfs	f0, 16(r3)				# 80
	lwz	r5, 4(r3)				# 80
	stw	r2, 164(r3)				# 80
	mfspr	r31, 8				# 80
	mr	r2, r5				# 80
	stw	r31, 168(r3)				# 80
	addi	r3, r3, 172				# 80
	bl	min_caml_create_float_array				# 80
	addi	r3, r3, -172				# 80
	lwz	r31, 168(r3)				# 80
	mr	r5, r2				# 80
	mtspr	8, r31				# 80
	lwz	r2, 4(r3)				# 81
	stw	r5, 168(r3)				# 81
	mfspr	r31, 8				# 81
	stw	r31, 172(r3)				# 81
	addi	r3, r3, 176				# 81
	bl	min_caml_create_array				# 81
	addi	r3, r3, -176				# 81
	lwz	r31, 172(r3)				# 81
	mtspr	8, r31				# 81
	mr	r5, r4				# 82
	addi	r4, r4, 8				# 82
	stw	r2, 4(r5)				# 82
	lwz	r2, 168(r3)				# 82
	stw	r2, 0(r5)				# 82
	lwz	r2, 4(r3)				# 82
	mfspr	r31, 8				# 82
	stw	r31, 172(r3)				# 82
	addi	r3, r3, 176				# 82
	bl	min_caml_create_array				# 82
	addi	r3, r3, -176				# 82
	lwz	r31, 172(r3)				# 82
	mr	r5, r2				# 82
	mtspr	8, r31				# 82
	addi	r2, 0, 5
	stw	r2, 172(r3)				# 83
	mfspr	r31, 8				# 83
	stw	r31, 176(r3)				# 83
	addi	r3, r3, 180				# 83
	bl	min_caml_create_array				# 83
	addi	r3, r3, -180				# 83
	lwz	r31, 176(r3)				# 83
	mtspr	8, r31				# 83
	lfs	f0, 16(r3)				# 87
	lwz	r5, 4(r3)				# 87
	stw	r2, 176(r3)				# 87
	mfspr	r31, 8				# 87
	mr	r2, r5				# 87
	stw	r31, 180(r3)				# 87
	addi	r3, r3, 184				# 87
	bl	min_caml_create_float_array				# 87
	addi	r3, r3, -184				# 87
	lwz	r31, 180(r3)				# 87
	mtspr	8, r31				# 87
	lfs	f0, 16(r3)				# 88
	lwz	r5, 32(r3)				# 88
	stw	r2, 180(r3)				# 88
	mfspr	r31, 8				# 88
	mr	r2, r5				# 88
	stw	r31, 184(r3)				# 88
	addi	r3, r3, 188				# 88
	bl	min_caml_create_float_array				# 88
	addi	r3, r3, -188				# 88
	lwz	r31, 184(r3)				# 88
	mtspr	8, r31				# 88
	lwz	r5, 24(r3)				# 89
	lwz	r6, 180(r3)				# 89
	stw	r2, 184(r3)				# 89
	mfspr	r31, 8				# 89
	mr	r2, r5				# 89
	mr	r5, r6				# 89
	stw	r31, 188(r3)				# 89
	addi	r3, r3, 192				# 89
	bl	min_caml_create_array				# 89
	addi	r3, r3, -192				# 89
	lwz	r31, 188(r3)				# 89
	mtspr	8, r31				# 89
	mr	r5, r4				# 90
	addi	r4, r4, 8				# 90
	stw	r2, 4(r5)				# 90
	lwz	r6, 184(r3)				# 90
	stw	r6, 0(r5)				# 90
	lfs	f0, 16(r3)				# 94
	lwz	r7, 4(r3)				# 94
	stw	r5, 188(r3)				# 94
	stw	r2, 192(r3)				# 94
	mfspr	r31, 8				# 94
	mr	r2, r7				# 94
	stw	r31, 196(r3)				# 94
	addi	r3, r3, 200				# 94
	bl	min_caml_create_float_array				# 94
	addi	r3, r3, -200				# 94
	lwz	r31, 196(r3)				# 94
	mr	r5, r2				# 94
	mtspr	8, r31				# 94
	lwz	r2, 4(r3)				# 95
	stw	r5, 196(r3)				# 95
	mfspr	r31, 8				# 95
	stw	r31, 200(r3)				# 95
	addi	r3, r3, 204				# 95
	bl	min_caml_create_array				# 95
	addi	r3, r3, -204				# 95
	lwz	r31, 200(r3)				# 95
	mtspr	8, r31				# 95
	mr	r5, r4				# 96
	addi	r4, r4, 8				# 96
	stw	r2, 4(r5)				# 96
	lwz	r2, 196(r3)				# 96
	stw	r2, 0(r5)				# 96
	mr	r2, r5				# 96
	addi	r5, 0, 180
	mr	r6, r4				# 97
	addi	r4, r4, 12				# 97
	lfs	f0, 16(r3)				# 97
	stfs	f0, 8(r6)				# 97
	stw	r2, 4(r6)				# 97
	lwz	r2, 4(r3)				# 97
	stw	r2, 0(r6)				# 97
	mfspr	r31, 8				# 97
	mr	r2, r5				# 97
	mr	r5, r6				# 97
	stw	r31, 200(r3)				# 97
	addi	r3, r3, 204				# 97
	bl	min_caml_create_array				# 97
	addi	r3, r3, -204				# 97
	lwz	r31, 200(r3)				# 97
	mtspr	8, r31				# 97
	lwz	r5, 0(r3)				# 101
	lwz	r6, 4(r3)				# 101
	stw	r2, 200(r3)				# 101
	mfspr	r31, 8				# 101
	mr	r2, r5				# 101
	mr	r5, r6				# 101
	stw	r31, 204(r3)				# 101
	addi	r3, r3, 208				# 101
	bl	min_caml_create_array				# 101
	addi	r3, r3, -208				# 101
	lwz	r31, 204(r3)				# 101
	mtspr	8, r31				# 101
	mr	r5, r4				# 601
	addi	r4, r4, 16				# 601
	lis	r6, ha16(rotate_quadratic_matrix.2595)
	addi	r6, r6, lo16(rotate_quadratic_matrix.2595)
	stw	r6, 0(r5)				# 601
	lwz	r6, 128(r3)				# 601
	stw	r6, 12(r5)				# 601
	lwz	r7, 4(r3)				# 601
	stw	r7, 8(r5)				# 601
	lwz	r8, 0(r3)				# 601
	stw	r8, 4(r5)				# 601
	mr	r9, r4				# 642
	addi	r4, r4, 36				# 642
	lis	r10, ha16(read_nth_object.2598)
	addi	r10, r10, lo16(read_nth_object.2598)
	stw	r10, 0(r9)				# 642
	stw	r5, 32(r9)				# 642
	lwz	r5, 28(r3)				# 642
	stw	r5, 28(r9)				# 642
	stw	r6, 24(r9)				# 642
	lwz	r10, 64(r3)				# 642
	stw	r10, 20(r9)				# 642
	lwz	r11, 32(r3)				# 642
	stw	r11, 16(r9)				# 642
	stw	r7, 12(r9)				# 642
	stw	r8, 8(r9)				# 642
	lfs	f0, 16(r3)				# 642
	stfs	f0, 4(r9)				# 642
	mr	r12, r4				# 725
	addi	r4, r4, 24				# 725
	lis	r13, ha16(read_object.2600)
	addi	r13, r13, lo16(read_object.2600)
	stw	r13, 0(r12)				# 725
	stw	r9, 20(r12)				# 725
	lwz	r9, 8(r3)				# 725
	stw	r9, 16(r12)				# 725
	lwz	r13, 24(r3)				# 725
	stw	r13, 12(r12)				# 725
	stw	r7, 8(r12)				# 725
	stw	r8, 4(r12)				# 725
	mr	r13, r4				# 741
	addi	r4, r4, 12				# 741
	lis	r14, ha16(read_net_item.2604)
	addi	r14, r14, lo16(read_net_item.2604)
	stw	r14, 0(r13)				# 741
	stw	r10, 8(r13)				# 741
	stw	r8, 4(r13)				# 741
	mr	r14, r4				# 749
	addi	r4, r4, 20				# 749
	lis	r15, ha16(read_or_network.2606)
	addi	r15, r15, lo16(read_or_network.2606)
	stw	r15, 0(r14)				# 749
	stw	r13, 16(r14)				# 749
	stw	r10, 12(r14)				# 749
	stw	r7, 8(r14)				# 749
	stw	r8, 4(r14)				# 749
	mr	r15, r4				# 758
	addi	r4, r4, 24				# 758
	lis	r16, ha16(read_and_network.2608)
	addi	r16, r16, lo16(read_and_network.2608)
	stw	r16, 0(r15)				# 758
	stw	r13, 20(r15)				# 758
	lwz	r13, 72(r3)				# 758
	stw	r13, 16(r15)				# 758
	stw	r10, 12(r15)				# 758
	stw	r7, 8(r15)				# 758
	stw	r8, 4(r15)				# 758
	mr	r16, r4				# 767
	addi	r4, r4, 64				# 767
	lis	r17, ha16(read_parameter.2610)
	addi	r17, r17, lo16(read_parameter.2610)
	stw	r17, 0(r16)				# 767
	lwz	r17, 40(r3)				# 767
	stw	r17, 60(r16)				# 767
	lwz	r18, 160(r3)				# 767
	stw	r18, 56(r16)				# 767
	lwz	r19, 156(r3)				# 767
	stw	r19, 52(r16)				# 767
	lwz	r20, 152(r3)				# 767
	stw	r20, 48(r16)				# 767
	lwz	r21, 36(r3)				# 767
	stw	r21, 44(r16)				# 767
	stw	r14, 40(r16)				# 767
	stw	r12, 36(r16)				# 767
	stw	r15, 32(r16)				# 767
	lwz	r12, 76(r3)				# 767
	stw	r12, 28(r16)				# 767
	lwz	r14, 56(r3)				# 767
	stw	r14, 24(r16)				# 767
	lwz	r15, 60(r3)				# 767
	stw	r15, 20(r16)				# 767
	stw	r6, 16(r16)				# 767
	stw	r7, 12(r16)				# 767
	stw	r8, 8(r16)				# 767
	stfs	f0, 4(r16)				# 767
	mr	r21, r4				# 798
	addi	r4, r4, 20				# 798
	lis	r22, ha16(solver_rect.2621)
	addi	r22, r22, lo16(solver_rect.2621)
	stw	r22, 0(r21)				# 798
	lwz	r22, 80(r3)				# 798
	stw	r22, 16(r21)				# 798
	stw	r6, 12(r21)				# 798
	stw	r7, 8(r21)				# 798
	stw	r8, 4(r21)				# 798
	mr	r23, r4				# 855
	addi	r4, r4, 24				# 855
	lis	r24, ha16(solver_second.2646)
	addi	r24, r24, lo16(solver_second.2646)
	stw	r24, 0(r23)				# 855
	stw	r22, 20(r23)				# 855
	stw	r6, 16(r23)				# 855
	stw	r11, 12(r23)				# 855
	stw	r7, 8(r23)				# 855
	stw	r8, 4(r23)				# 855
	mr	r24, r4				# 901
	addi	r4, r4, 28				# 901
	lis	r25, ha16(solver_rect_fast.2656)
	addi	r25, r25, lo16(solver_rect_fast.2656)
	stw	r25, 0(r24)				# 901
	stw	r22, 24(r24)				# 901
	lwz	r25, 172(r3)				# 901
	stw	r25, 20(r24)				# 901
	stw	r6, 16(r24)				# 901
	stw	r11, 12(r24)				# 901
	stw	r7, 8(r24)				# 901
	stw	r8, 4(r24)				# 901
	mr	r26, r4				# 943
	addi	r4, r4, 24				# 943
	lis	r27, ha16(solver_second_fast.2669)
	addi	r27, r27, lo16(solver_second_fast.2669)
	stw	r27, 0(r26)				# 943
	stw	r22, 20(r26)				# 943
	stw	r6, 16(r26)				# 943
	stw	r11, 12(r26)				# 943
	stw	r7, 8(r26)				# 943
	stw	r8, 4(r26)				# 943
	mr	r27, r4				# 1076
	addi	r4, r4, 28				# 1076
	lis	r28, ha16(setup_second_table.2702)
	addi	r28, r28, lo16(setup_second_table.2702)
	stw	r28, 0(r27)				# 1076
	stw	r25, 24(r27)				# 1076
	stw	r6, 20(r27)				# 1076
	stw	r11, 16(r27)				# 1076
	stw	r7, 12(r27)				# 1076
	stw	r8, 8(r27)				# 1076
	stfs	f0, 4(r27)				# 1076
	mr	r28, r4				# 1104
	addi	r4, r4, 36				# 1104
	lis	r29, ha16(iter_setup_dirvec_constants.2705)
	addi	r29, r29, lo16(iter_setup_dirvec_constants.2705)
	stw	r29, 0(r28)				# 1104
	stw	r27, 32(r28)				# 1104
	stw	r5, 28(r28)				# 1104
	stw	r25, 24(r28)				# 1104
	stw	r6, 20(r28)				# 1104
	stw	r11, 16(r28)				# 1104
	stw	r7, 12(r28)				# 1104
	stw	r8, 8(r28)				# 1104
	stfs	f0, 4(r28)				# 1104
	mr	r27, r4				# 1127
	addi	r4, r4, 24				# 1127
	lis	r29, ha16(setup_startp_constants.2710)
	addi	r29, r29, lo16(setup_startp_constants.2710)
	stw	r29, 0(r27)				# 1127
	stw	r5, 20(r27)				# 1127
	stw	r6, 16(r27)				# 1127
	stw	r11, 12(r27)				# 1127
	stw	r7, 8(r27)				# 1127
	stw	r8, 4(r27)				# 1127
	mr	r29, r4				# 1194
	addi	r4, r4, 28				# 1194
	lis	r30, ha16(check_all_inside.2735)
	addi	r30, r30, lo16(check_all_inside.2735)
	stw	r30, 0(r29)				# 1194
	stw	r5, 24(r29)				# 1194
	stw	r6, 20(r29)				# 1194
	stw	r10, 16(r29)				# 1194
	stw	r11, 12(r29)				# 1194
	stw	r7, 8(r29)				# 1194
	stw	r8, 4(r29)				# 1194
	mr	r30, r4				# 1212
	addi	r4, r4, 60				# 1212
	stw	r16, 204(r3)				# 1212
	lis	r16, ha16(shadow_check_and_group.2741)
	addi	r16, r16, lo16(shadow_check_and_group.2741)
	stw	r16, 0(r30)				# 1212
	lwz	r16, 184(r3)				# 1212
	stw	r16, 56(r30)				# 1212
	stw	r26, 52(r30)				# 1212
	stw	r24, 48(r30)				# 1212
	stw	r22, 44(r30)				# 1212
	stw	r5, 40(r30)				# 1212
	stw	r14, 36(r30)				# 1212
	stw	r28, 208(r3)				# 1212
	lwz	r28, 104(r3)				# 1212
	stw	r28, 32(r30)				# 1212
	lwz	r19, 192(r3)				# 1212
	stw	r19, 28(r30)				# 1212
	stw	r29, 24(r30)				# 1212
	stw	r6, 20(r30)				# 1212
	stw	r10, 16(r30)				# 1212
	stw	r11, 12(r30)				# 1212
	stw	r7, 8(r30)				# 1212
	stw	r8, 4(r30)				# 1212
	mr	r18, r4				# 1242
	addi	r4, r4, 24				# 1242
	lis	r25, ha16(shadow_check_one_or_group.2744)
	addi	r25, r25, lo16(shadow_check_one_or_group.2744)
	stw	r25, 0(r18)				# 1242
	stw	r30, 20(r18)				# 1242
	stw	r13, 16(r18)				# 1242
	stw	r10, 12(r18)				# 1242
	stw	r7, 8(r18)				# 1242
	stw	r8, 4(r18)				# 1242
	mr	r25, r4				# 1257
	addi	r4, r4, 56				# 1257
	lis	r30, ha16(shadow_check_one_or_matrix.2747)
	addi	r30, r30, lo16(shadow_check_one_or_matrix.2747)
	stw	r30, 0(r25)				# 1257
	stw	r16, 52(r25)				# 1257
	stw	r26, 48(r25)				# 1257
	stw	r24, 44(r25)				# 1257
	stw	r22, 40(r25)				# 1257
	stw	r18, 36(r25)				# 1257
	stw	r5, 32(r25)				# 1257
	stw	r28, 28(r25)				# 1257
	stw	r19, 24(r25)				# 1257
	stw	r6, 20(r25)				# 1257
	stw	r10, 16(r25)				# 1257
	stw	r11, 12(r25)				# 1257
	stw	r7, 8(r25)				# 1257
	stw	r8, 4(r25)				# 1257
	mr	r18, r4				# 1291
	addi	r4, r4, 64				# 1291
	lis	r19, ha16(solve_each_element.2750)
	addi	r19, r19, lo16(solve_each_element.2750)
	stw	r19, 0(r18)				# 1291
	lwz	r19, 100(r3)				# 1291
	stw	r19, 60(r18)				# 1291
	lwz	r26, 144(r3)				# 1291
	stw	r26, 56(r18)				# 1291
	stw	r23, 52(r18)				# 1291
	stw	r21, 48(r18)				# 1291
	stw	r22, 44(r18)				# 1291
	stw	r5, 40(r18)				# 1291
	lwz	r30, 96(r3)				# 1291
	stw	r30, 36(r18)				# 1291
	stw	r28, 32(r18)				# 1291
	lwz	r16, 108(r3)				# 1291
	stw	r16, 28(r18)				# 1291
	stw	r29, 24(r18)				# 1291
	stw	r6, 20(r18)				# 1291
	stw	r10, 16(r18)				# 1291
	stw	r7, 12(r18)				# 1291
	stw	r8, 8(r18)				# 1291
	stfs	f0, 4(r18)				# 1291
	mr	r20, r4				# 1332
	addi	r4, r4, 24				# 1332
	lis	r17, ha16(solve_one_or_network.2754)
	addi	r17, r17, lo16(solve_one_or_network.2754)
	stw	r17, 0(r20)				# 1332
	stw	r18, 20(r20)				# 1332
	stw	r13, 16(r20)				# 1332
	stw	r10, 12(r20)				# 1332
	stw	r7, 8(r20)				# 1332
	stw	r8, 4(r20)				# 1332
	mr	r17, r4				# 1342
	addi	r4, r4, 48				# 1342
	lis	r18, ha16(trace_or_matrix.2758)
	addi	r18, r18, lo16(trace_or_matrix.2758)
	stw	r18, 0(r17)				# 1342
	stw	r19, 44(r17)				# 1342
	stw	r26, 40(r17)				# 1342
	stw	r23, 36(r17)				# 1342
	stw	r21, 32(r17)				# 1342
	stw	r22, 28(r17)				# 1342
	stw	r20, 24(r17)				# 1342
	stw	r5, 20(r17)				# 1342
	stw	r6, 16(r17)				# 1342
	stw	r10, 12(r17)				# 1342
	stw	r7, 8(r17)				# 1342
	stw	r8, 4(r17)				# 1342
	mr	r18, r4				# 1382
	addi	r4, r4, 64				# 1382
	lis	r20, ha16(solve_each_element_fast.2764)
	addi	r20, r20, lo16(solve_each_element_fast.2764)
	stw	r20, 0(r18)				# 1382
	stw	r19, 60(r18)				# 1382
	lwz	r20, 148(r3)				# 1382
	stw	r20, 56(r18)				# 1382
	stw	r24, 52(r18)				# 1382
	stw	r22, 48(r18)				# 1382
	stw	r5, 44(r18)				# 1382
	stw	r30, 40(r18)				# 1382
	stw	r28, 36(r18)				# 1382
	stw	r16, 32(r18)				# 1382
	stw	r29, 28(r18)				# 1382
	stw	r6, 24(r18)				# 1382
	stw	r10, 20(r18)				# 1382
	stw	r11, 16(r18)				# 1382
	stw	r7, 12(r18)				# 1382
	stw	r8, 8(r18)				# 1382
	stfs	f0, 4(r18)				# 1382
	mr	r21, r4				# 1423
	addi	r4, r4, 24				# 1423
	lis	r23, ha16(solve_one_or_network_fast.2768)
	addi	r23, r23, lo16(solve_one_or_network_fast.2768)
	stw	r23, 0(r21)				# 1423
	stw	r18, 20(r21)				# 1423
	stw	r13, 16(r21)				# 1423
	stw	r10, 12(r21)				# 1423
	stw	r7, 8(r21)				# 1423
	stw	r8, 4(r21)				# 1423
	mr	r13, r4				# 1433
	addi	r4, r4, 44				# 1433
	lis	r18, ha16(trace_or_matrix_fast.2772)
	addi	r18, r18, lo16(trace_or_matrix_fast.2772)
	stw	r18, 0(r13)				# 1433
	stw	r19, 40(r13)				# 1433
	stw	r24, 36(r13)				# 1433
	stw	r22, 32(r13)				# 1433
	stw	r21, 28(r13)				# 1433
	stw	r5, 24(r13)				# 1433
	stw	r6, 20(r13)				# 1433
	stw	r10, 16(r13)				# 1433
	stw	r11, 12(r13)				# 1433
	stw	r7, 8(r13)				# 1433
	stw	r8, 4(r13)				# 1433
	mr	r18, r4				# 1492
	addi	r4, r4, 24				# 1492
	lis	r21, ha16(get_nvector_second.2782)
	addi	r21, r21, lo16(get_nvector_second.2782)
	stw	r21, 0(r18)				# 1492
	lwz	r21, 112(r3)				# 1492
	stw	r21, 20(r18)				# 1492
	stw	r28, 16(r18)				# 1492
	stw	r6, 12(r18)				# 1492
	stw	r7, 8(r18)				# 1492
	stw	r8, 4(r18)				# 1492
	mr	r22, r4				# 1514
	addi	r4, r4, 32				# 1514
	lis	r23, ha16(get_nvector.2784)
	addi	r23, r23, lo16(get_nvector.2784)
	stw	r23, 0(r22)				# 1514
	stw	r21, 28(r22)				# 1514
	stw	r30, 24(r22)				# 1514
	stw	r28, 20(r22)				# 1514
	stw	r6, 16(r22)				# 1514
	stw	r7, 12(r22)				# 1514
	stw	r8, 8(r22)				# 1514
	stfs	f0, 4(r22)				# 1514
	mr	r23, r4				# 1528
	addi	r4, r4, 28				# 1528
	lis	r24, ha16(utexture.2787)
	addi	r24, r24, lo16(utexture.2787)
	stw	r24, 0(r23)				# 1528
	lwz	r24, 116(r3)				# 1528
	stw	r24, 24(r23)				# 1528
	stw	r6, 20(r23)				# 1528
	stw	r11, 16(r23)				# 1528
	stw	r7, 12(r23)				# 1528
	stw	r8, 8(r23)				# 1528
	lfs	f1, 48(r3)				# 1528
	stfs	f1, 4(r23)				# 1528
	mr	r29, r4				# 1622
	addi	r4, r4, 60				# 1622
	lis	r11, ha16(trace_reflections.2794)
	addi	r11, r11, lo16(trace_reflections.2794)
	stw	r11, 0(r29)				# 1622
	stw	r13, 56(r29)				# 1622
	stw	r19, 52(r29)				# 1622
	stw	r24, 48(r29)				# 1622
	stw	r25, 44(r29)				# 1622
	lwz	r11, 124(r3)				# 1622
	stw	r11, 40(r29)				# 1622
	stw	r22, 212(r3)				# 1622
	lwz	r22, 200(r3)				# 1622
	stw	r22, 36(r29)				# 1622
	stw	r12, 32(r29)				# 1622
	stw	r21, 28(r29)				# 1622
	stw	r30, 24(r29)				# 1622
	stw	r16, 20(r29)				# 1622
	stw	r6, 16(r29)				# 1622
	stw	r7, 12(r29)				# 1622
	stw	r8, 8(r29)				# 1622
	lfs	f1, 88(r3)				# 1622
	stfs	f1, 4(r29)				# 1622
	mr	r22, r4				# 1649
	addi	r4, r4, 112				# 1649
	stw	r13, 216(r3)				# 1649
	lis	r13, ha16(trace_ray.2799)
	addi	r13, r13, lo16(trace_ray.2799)
	stw	r13, 0(r22)				# 1649
	stw	r23, 108(r22)				# 1649
	stw	r29, 104(r22)				# 1649
	stw	r17, 100(r22)				# 1649
	stw	r19, 96(r22)				# 1649
	stw	r24, 92(r22)				# 1649
	stw	r20, 88(r22)				# 1649
	stw	r26, 84(r22)				# 1649
	stw	r25, 80(r22)				# 1649
	stw	r27, 76(r22)				# 1649
	stw	r11, 72(r22)				# 1649
	stw	r12, 68(r22)				# 1649
	stw	r5, 64(r22)				# 1649
	stw	r21, 60(r22)				# 1649
	stw	r2, 56(r22)				# 1649
	stw	r9, 52(r22)				# 1649
	stw	r14, 48(r22)				# 1649
	stw	r30, 44(r22)				# 1649
	stw	r28, 40(r22)				# 1649
	stw	r16, 36(r22)				# 1649
	stw	r18, 32(r22)				# 1649
	stw	r15, 28(r22)				# 1649
	stw	r6, 24(r22)				# 1649
	stw	r10, 20(r22)				# 1649
	stw	r7, 16(r22)				# 1649
	stw	r8, 12(r22)				# 1649
	stfs	f1, 8(r22)				# 1649
	stfs	f0, 4(r22)				# 1649
	mr	r10, r4				# 1757
	addi	r4, r4, 72				# 1757
	lis	r13, ha16(iter_trace_diffuse_rays.2808)
	addi	r13, r13, lo16(iter_trace_diffuse_rays.2808)
	stw	r13, 0(r10)				# 1757
	stw	r23, 68(r10)				# 1757
	lwz	r13, 216(r3)				# 1757
	stw	r13, 64(r10)				# 1757
	stw	r19, 60(r10)				# 1757
	stw	r24, 56(r10)				# 1757
	stw	r25, 52(r10)				# 1757
	stw	r12, 48(r10)				# 1757
	stw	r5, 44(r10)				# 1757
	stw	r21, 40(r10)				# 1757
	stw	r14, 36(r10)				# 1757
	stw	r28, 32(r10)				# 1757
	stw	r16, 28(r10)				# 1757
	lwz	r12, 212(r3)				# 1757
	stw	r12, 24(r10)				# 1757
	lwz	r12, 120(r3)				# 1757
	stw	r12, 20(r10)				# 1757
	stw	r6, 16(r10)				# 1757
	stw	r7, 12(r10)				# 1757
	stw	r8, 8(r10)				# 1757
	stfs	f1, 4(r10)				# 1757
	mr	r13, r4				# 1843
	addi	r4, r4, 48				# 1843
	lis	r15, ha16(do_without_neighbors.2830)
	addi	r15, r15, lo16(do_without_neighbors.2830)
	stw	r15, 0(r13)				# 1843
	stw	r20, 44(r13)				# 1843
	stw	r27, 40(r13)				# 1843
	stw	r11, 36(r13)				# 1843
	stw	r9, 32(r13)				# 1843
	stw	r10, 28(r13)				# 1843
	lwz	r15, 176(r3)				# 1843
	stw	r15, 24(r13)				# 1843
	stw	r12, 20(r13)				# 1843
	stw	r6, 16(r13)				# 1843
	lwz	r16, 32(r3)				# 1843
	stw	r16, 12(r13)				# 1843
	stw	r7, 8(r13)				# 1843
	stw	r8, 4(r13)				# 1843
	mr	r17, r4				# 1892
	addi	r4, r4, 28				# 1892
	lis	r18, ha16(try_exploit_neighbors.2846)
	addi	r18, r18, lo16(try_exploit_neighbors.2846)
	stw	r18, 0(r17)				# 1892
	stw	r11, 24(r17)				# 1892
	stw	r13, 20(r17)				# 1892
	stw	r12, 16(r17)				# 1892
	stw	r6, 12(r17)				# 1892
	stw	r7, 8(r17)				# 1892
	stw	r8, 4(r17)				# 1892
	mr	r18, r4				# 1951
	addi	r4, r4, 44				# 1951
	lis	r19, ha16(pretrace_diffuse_rays.2859)
	addi	r19, r19, lo16(pretrace_diffuse_rays.2859)
	stw	r19, 0(r18)				# 1951
	stw	r20, 40(r18)				# 1951
	stw	r27, 36(r18)				# 1951
	stw	r9, 32(r18)				# 1951
	stw	r10, 28(r18)				# 1951
	stw	r15, 24(r18)				# 1951
	stw	r12, 20(r18)				# 1951
	stw	r6, 16(r18)				# 1951
	stw	r7, 12(r18)				# 1951
	stw	r8, 8(r18)				# 1951
	stfs	f0, 4(r18)				# 1951
	mr	r10, r4				# 1980
	addi	r4, r4, 60				# 1980
	lis	r12, ha16(pretrace_pixels.2862)
	addi	r12, r12, lo16(pretrace_pixels.2862)
	stw	r12, 0(r10)				# 1980
	lwz	r12, 40(r3)				# 1980
	stw	r12, 56(r10)				# 1980
	stw	r22, 52(r10)				# 1980
	stw	r26, 48(r10)				# 1980
	lwz	r12, 152(r3)				# 1980
	stw	r12, 44(r10)				# 1980
	lwz	r12, 140(r3)				# 1980
	stw	r12, 40(r10)				# 1980
	stw	r11, 36(r10)				# 1980
	lwz	r19, 164(r3)				# 1980
	stw	r19, 32(r10)				# 1980
	stw	r18, 28(r10)				# 1980
	lwz	r18, 136(r3)				# 1980
	stw	r18, 24(r10)				# 1980
	lwz	r19, 172(r3)				# 1980
	stw	r19, 20(r10)				# 1980
	stw	r6, 16(r10)				# 1980
	stw	r7, 12(r10)				# 1980
	stw	r8, 8(r10)				# 1980
	stfs	f0, 4(r10)				# 1980
	mr	r20, r4				# 2019
	addi	r4, r4, 32				# 2019
	lis	r21, ha16(scan_pixel.2873)
	addi	r21, r21, lo16(scan_pixel.2873)
	stw	r21, 0(r20)				# 2019
	stw	r17, 28(r20)				# 2019
	stw	r11, 24(r20)				# 2019
	lwz	r11, 132(r3)				# 2019
	stw	r11, 20(r20)				# 2019
	stw	r13, 16(r20)				# 2019
	stw	r6, 12(r20)				# 2019
	stw	r7, 8(r20)				# 2019
	stw	r8, 4(r20)				# 2019
	mr	r13, r4				# 2039
	addi	r4, r4, 48				# 2039
	lis	r17, ha16(scan_line.2879)
	addi	r17, r17, lo16(scan_line.2879)
	stw	r17, 0(r13)				# 2039
	lwz	r17, 160(r3)				# 2039
	stw	r17, 44(r13)				# 2039
	lwz	r21, 156(r3)				# 2039
	stw	r21, 40(r13)				# 2039
	stw	r20, 36(r13)				# 2039
	stw	r12, 32(r13)				# 2039
	stw	r10, 28(r13)				# 2039
	stw	r11, 24(r13)				# 2039
	stw	r18, 20(r13)				# 2039
	stw	r19, 16(r13)				# 2039
	stw	r6, 12(r13)				# 2039
	stw	r7, 8(r13)				# 2039
	stw	r8, 4(r13)				# 2039
	mr	r20, r4				# 2080
	addi	r4, r4, 28				# 2080
	lis	r22, ha16(init_line_elements.2889)
	addi	r22, r22, lo16(init_line_elements.2889)
	stw	r22, 0(r20)				# 2080
	stw	r19, 24(r20)				# 2080
	stw	r6, 20(r20)				# 2080
	stw	r16, 16(r20)				# 2080
	stw	r7, 12(r20)				# 2080
	stw	r8, 8(r20)				# 2080
	stfs	f0, 4(r20)				# 2080
	mr	r22, r4				# 2112
	addi	r4, r4, 24				# 2112
	lis	r23, ha16(calc_dirvec.2899)
	addi	r23, r23, lo16(calc_dirvec.2899)
	stw	r23, 0(r22)				# 2112
	stw	r15, 20(r22)				# 2112
	stw	r19, 16(r22)				# 2112
	stw	r6, 12(r22)				# 2112
	stw	r7, 8(r22)				# 2112
	stw	r8, 4(r22)				# 2112
	mr	r23, r4				# 2133
	addi	r4, r4, 28				# 2133
	lis	r24, ha16(calc_dirvecs.2907)
	addi	r24, r24, lo16(calc_dirvecs.2907)
	stw	r24, 0(r23)				# 2133
	stw	r22, 24(r23)				# 2133
	stw	r19, 20(r23)				# 2133
	stw	r6, 16(r23)				# 2133
	stw	r7, 12(r23)				# 2133
	stw	r8, 8(r23)				# 2133
	stfs	f0, 4(r23)				# 2133
	mr	r22, r4				# 2147
	addi	r4, r4, 24				# 2147
	lis	r24, ha16(calc_dirvec_rows.2912)
	addi	r24, r24, lo16(calc_dirvec_rows.2912)
	stw	r24, 0(r22)				# 2147
	stw	r23, 20(r22)				# 2147
	stw	r19, 16(r22)				# 2147
	stw	r6, 12(r22)				# 2147
	stw	r7, 8(r22)				# 2147
	stw	r8, 4(r22)				# 2147
	mr	r23, r4				# 2164
	addi	r4, r4, 24				# 2164
	lis	r24, ha16(create_dirvec_elements.2918)
	addi	r24, r24, lo16(create_dirvec_elements.2918)
	stw	r24, 0(r23)				# 2164
	stw	r9, 20(r23)				# 2164
	stw	r16, 16(r23)				# 2164
	stw	r7, 12(r23)				# 2164
	stw	r8, 8(r23)				# 2164
	stfs	f0, 4(r23)				# 2164
	mr	r24, r4				# 2171
	addi	r4, r4, 32				# 2171
	lis	r25, ha16(create_dirvecs.2921)
	addi	r25, r25, lo16(create_dirvecs.2921)
	stw	r25, 0(r24)				# 2171
	stw	r9, 28(r24)				# 2171
	stw	r15, 24(r24)				# 2171
	stw	r23, 20(r24)				# 2171
	stw	r16, 16(r24)				# 2171
	stw	r7, 12(r24)				# 2171
	stw	r8, 8(r24)				# 2171
	stfs	f0, 4(r24)				# 2171
	mr	r23, r4				# 2181
	addi	r4, r4, 20				# 2181
	lis	r25, ha16(init_dirvec_constants.2923)
	addi	r25, r25, lo16(init_dirvec_constants.2923)
	stw	r25, 0(r23)				# 2181
	stw	r9, 16(r23)				# 2181
	lwz	r25, 208(r3)				# 2181
	stw	r25, 12(r23)				# 2181
	stw	r7, 8(r23)				# 2181
	stw	r8, 4(r23)				# 2181
	mr	r26, r4				# 2188
	addi	r4, r4, 20				# 2188
	lis	r27, ha16(init_vecset_constants.2926)
	addi	r27, r27, lo16(init_vecset_constants.2926)
	stw	r27, 0(r26)				# 2188
	stw	r23, 16(r26)				# 2188
	stw	r15, 12(r26)				# 2188
	stw	r7, 8(r26)				# 2188
	stw	r8, 4(r26)				# 2188
	mr	r15, r4				# 2242
	addi	r4, r4, 48				# 2242
	lis	r23, ha16(setup_reflections.2943)
	addi	r23, r23, lo16(setup_reflections.2943)
	stw	r23, 0(r15)				# 2242
	lwz	r23, 200(r3)				# 2242
	stw	r23, 44(r15)				# 2242
	stw	r5, 40(r15)				# 2242
	stw	r2, 36(r15)				# 2242
	stw	r9, 32(r15)				# 2242
	stw	r14, 28(r15)				# 2242
	stw	r25, 24(r15)				# 2242
	stw	r6, 20(r15)				# 2242
	stw	r16, 16(r15)				# 2242
	stw	r7, 12(r15)				# 2242
	stw	r8, 8(r15)				# 2242
	stfs	f0, 4(r15)				# 2242
	addi	r2, 0, 512
	stw	r2, 0(r11)				# 2264
	stw	r2, 4(r11)				# 2265
	addi	r5, 0, 256
	stw	r5, 0(r18)				# 2266
	stw	r5, 4(r18)				# 2267
	lis	r31, ha16(l.12803)
	addi	r31, r31, lo16(l.12803)
	lfs	f1, 0(r31)				# 2268
	stw	r13, 220(r3)				# 2268
	stw	r10, 224(r3)				# 2268
	stw	r15, 228(r3)				# 2268
	stw	r26, 232(r3)				# 2268
	stw	r22, 236(r3)				# 2268
	stw	r24, 240(r3)				# 2268
	stw	r20, 244(r3)				# 2268
	stfs	f1, 248(r3)				# 2268
	mfspr	r31, 8				# 2268
	stw	r31, 256(r3)				# 2268
	addi	r3, r3, 260				# 2268
	bl	min_caml_float_of_int				# 2268
	addi	r3, r3, -260				# 2268
	lwz	r31, 256(r3)				# 2268
	mtspr	8, r31				# 2268
	lfs	f1, 248(r3)				# 2268
	fdiv	f0, f1, f0				# 2268
	lwz	r2, 140(r3)				# 2268
	stfs	f0, 0(r2)				# 2268
	lwz	r5, 132(r3)				# 2090
	lwz	r6, 0(r5)				# 2090
	lfs	f0, 16(r3)				# 2068
	lwz	r7, 32(r3)				# 2068
	stw	r6, 256(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r7				# 2068
	stw	r31, 260(r3)				# 2068
	addi	r3, r3, 264				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -264				# 2068
	lwz	r31, 260(r3)				# 2068
	mtspr	8, r31				# 2068
	lfs	f0, 16(r3)				# 2056
	lwz	r5, 32(r3)				# 2056
	stw	r2, 260(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 264(r3)				# 2056
	addi	r3, r3, 268				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -268				# 2056
	lwz	r31, 264(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 264(r3)				# 2057
	addi	r3, r3, 268				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -268				# 2057
	lwz	r31, 264(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 264(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 268(r3)				# 2058
	addi	r3, r3, 272				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -272				# 2058
	lwz	r31, 268(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 264(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 268(r3)				# 2059
	addi	r3, r3, 272				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -272				# 2059
	lwz	r31, 268(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 264(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 268(r3)				# 2060
	addi	r3, r3, 272				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -272				# 2060
	lwz	r31, 268(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 264(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	addi	r2, 0, 4
	lfs	f0, 16(r3)				# 2061
	lwz	r6, 32(r3)				# 2061
	stw	r2, 268(r3)				# 2061
	mfspr	r31, 8				# 2061
	mr	r2, r6				# 2061
	stw	r31, 272(r3)				# 2061
	addi	r3, r3, 276				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -276				# 2061
	lwz	r31, 272(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 264(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lwz	r2, 172(r3)				# 2070
	lwz	r6, 4(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r5, r6				# 2070
	stw	r31, 272(r3)				# 2070
	addi	r3, r3, 276				# 2070
	bl	min_caml_create_array				# 2070
	addi	r3, r3, -276				# 2070
	lwz	r31, 272(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 172(r3)				# 2071
	lwz	r6, 4(r3)				# 2071
	stw	r2, 272(r3)				# 2071
	mfspr	r31, 8				# 2071
	mr	r2, r5				# 2071
	mr	r5, r6				# 2071
	stw	r31, 276(r3)				# 2071
	addi	r3, r3, 280				# 2071
	bl	min_caml_create_array				# 2071
	addi	r3, r3, -280				# 2071
	lwz	r31, 276(r3)				# 2071
	mtspr	8, r31				# 2071
	lfs	f0, 16(r3)				# 2056
	lwz	r5, 32(r3)				# 2056
	stw	r2, 276(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 280(r3)				# 2056
	addi	r3, r3, 284				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -284				# 2056
	lwz	r31, 280(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 280(r3)				# 2057
	addi	r3, r3, 284				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -284				# 2057
	lwz	r31, 280(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 280(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 284(r3)				# 2058
	addi	r3, r3, 288				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -288				# 2058
	lwz	r31, 284(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 280(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 284(r3)				# 2059
	addi	r3, r3, 288				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -288				# 2059
	lwz	r31, 284(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 280(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 284(r3)				# 2060
	addi	r3, r3, 288				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -288				# 2060
	lwz	r31, 284(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 280(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	lfs	f0, 16(r3)				# 2061
	lwz	r2, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	stw	r31, 284(r3)				# 2061
	addi	r3, r3, 288				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -288				# 2061
	lwz	r31, 284(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 280(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lfs	f0, 16(r3)				# 2056
	lwz	r2, 32(r3)				# 2056
	mfspr	r31, 8				# 2056
	stw	r31, 284(r3)				# 2056
	addi	r3, r3, 288				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -288				# 2056
	lwz	r31, 284(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 284(r3)				# 2057
	addi	r3, r3, 288				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -288				# 2057
	lwz	r31, 284(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 284(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 288(r3)				# 2058
	addi	r3, r3, 292				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -292				# 2058
	lwz	r31, 288(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 284(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 288(r3)				# 2059
	addi	r3, r3, 292				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -292				# 2059
	lwz	r31, 288(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 284(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 288(r3)				# 2060
	addi	r3, r3, 292				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -292				# 2060
	lwz	r31, 288(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 284(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	lfs	f0, 16(r3)				# 2061
	lwz	r2, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	stw	r31, 288(r3)				# 2061
	addi	r3, r3, 292				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -292				# 2061
	lwz	r31, 288(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 284(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lwz	r2, 0(r3)				# 2074
	lwz	r6, 4(r3)				# 2074
	mfspr	r31, 8				# 2074
	mr	r5, r6				# 2074
	stw	r31, 288(r3)				# 2074
	addi	r3, r3, 292				# 2074
	bl	min_caml_create_array				# 2074
	addi	r3, r3, -292				# 2074
	lwz	r31, 288(r3)				# 2074
	mtspr	8, r31				# 2074
	lfs	f0, 16(r3)				# 2056
	lwz	r5, 32(r3)				# 2056
	stw	r2, 288(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 292(r3)				# 2056
	addi	r3, r3, 296				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -296				# 2056
	lwz	r31, 292(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 292(r3)				# 2057
	addi	r3, r3, 296				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -296				# 2057
	lwz	r31, 292(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 292(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 296(r3)				# 2058
	addi	r3, r3, 300				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -300				# 2058
	lwz	r31, 296(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 292(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 296(r3)				# 2059
	addi	r3, r3, 300				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -300				# 2059
	lwz	r31, 296(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 292(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 296(r3)				# 2060
	addi	r3, r3, 300				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -300				# 2060
	lwz	r31, 296(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 292(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	lfs	f0, 16(r3)				# 2061
	lwz	r2, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	stw	r31, 296(r3)				# 2061
	addi	r3, r3, 300				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -300				# 2061
	lwz	r31, 296(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 292(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	mr	r2, r4				# 2076
	addi	r4, r4, 32				# 2076
	stw	r5, 28(r2)				# 2076
	lwz	r5, 288(r3)				# 2076
	stw	r5, 24(r2)				# 2076
	lwz	r5, 284(r3)				# 2076
	stw	r5, 20(r2)				# 2076
	lwz	r5, 280(r3)				# 2076
	stw	r5, 16(r2)				# 2076
	lwz	r5, 276(r3)				# 2076
	stw	r5, 12(r2)				# 2076
	lwz	r5, 272(r3)				# 2076
	stw	r5, 8(r2)				# 2076
	lwz	r5, 264(r3)				# 2076
	stw	r5, 4(r2)				# 2076
	lwz	r5, 260(r3)				# 2076
	stw	r5, 0(r2)				# 2076
	mr	r5, r2				# 2076
	lwz	r2, 256(r3)				# 2090
	mfspr	r31, 8				# 2090
	stw	r31, 296(r3)				# 2090
	addi	r3, r3, 300				# 2090
	bl	min_caml_create_array				# 2090
	addi	r3, r3, -300				# 2090
	lwz	r31, 296(r3)				# 2090
	mtspr	8, r31				# 2090
	lwz	r5, 132(r3)				# 2091
	lwz	r6, 0(r5)				# 2091
	addi	r6, r6, -2				# 2091
	lwz	r30, 244(r3)				# 2091
	mfspr	r31, 8				# 2091
	mr	r5, r6				# 2091
	stw	r31, 296(r3)				# 2091
	addi	r3, r3, 300				# 2091
	lwz	r31, 0(r30)				# 2091
	mtspr	9, r31				# 2091
	bctrl				# 2091
	addi	r3, r3, -300				# 2091
	lwz	r31, 296(r3)				# 2091
	mtspr	8, r31				# 2091
	lwz	r5, 132(r3)				# 2090
	lwz	r6, 0(r5)				# 2090
	lfs	f0, 16(r3)				# 2068
	lwz	r7, 32(r3)				# 2068
	stw	r2, 296(r3)				# 2068
	stw	r6, 300(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r7				# 2068
	stw	r31, 304(r3)				# 2068
	addi	r3, r3, 308				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -308				# 2068
	lwz	r31, 304(r3)				# 2068
	mtspr	8, r31				# 2068
	lfs	f0, 16(r3)				# 2056
	lwz	r5, 32(r3)				# 2056
	stw	r2, 304(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 308(r3)				# 2056
	addi	r3, r3, 312				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -312				# 2056
	lwz	r31, 308(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 308(r3)				# 2057
	addi	r3, r3, 312				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -312				# 2057
	lwz	r31, 308(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 308(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 312(r3)				# 2058
	addi	r3, r3, 316				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -316				# 2058
	lwz	r31, 312(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 308(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 312(r3)				# 2059
	addi	r3, r3, 316				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -316				# 2059
	lwz	r31, 312(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 308(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 312(r3)				# 2060
	addi	r3, r3, 316				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -316				# 2060
	lwz	r31, 312(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 308(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	lfs	f0, 16(r3)				# 2061
	lwz	r2, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	stw	r31, 312(r3)				# 2061
	addi	r3, r3, 316				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -316				# 2061
	lwz	r31, 312(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 308(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lwz	r2, 172(r3)				# 2070
	lwz	r6, 4(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r5, r6				# 2070
	stw	r31, 312(r3)				# 2070
	addi	r3, r3, 316				# 2070
	bl	min_caml_create_array				# 2070
	addi	r3, r3, -316				# 2070
	lwz	r31, 312(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 172(r3)				# 2071
	lwz	r6, 4(r3)				# 2071
	stw	r2, 312(r3)				# 2071
	mfspr	r31, 8				# 2071
	mr	r2, r5				# 2071
	mr	r5, r6				# 2071
	stw	r31, 316(r3)				# 2071
	addi	r3, r3, 320				# 2071
	bl	min_caml_create_array				# 2071
	addi	r3, r3, -320				# 2071
	lwz	r31, 316(r3)				# 2071
	mtspr	8, r31				# 2071
	lfs	f0, 16(r3)				# 2056
	lwz	r5, 32(r3)				# 2056
	stw	r2, 316(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 320(r3)				# 2056
	addi	r3, r3, 324				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -324				# 2056
	lwz	r31, 320(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 320(r3)				# 2057
	addi	r3, r3, 324				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -324				# 2057
	lwz	r31, 320(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 320(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 324(r3)				# 2058
	addi	r3, r3, 328				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -328				# 2058
	lwz	r31, 324(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 320(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 324(r3)				# 2059
	addi	r3, r3, 328				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -328				# 2059
	lwz	r31, 324(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 320(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 324(r3)				# 2060
	addi	r3, r3, 328				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -328				# 2060
	lwz	r31, 324(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 320(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	lfs	f0, 16(r3)				# 2061
	lwz	r2, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	stw	r31, 324(r3)				# 2061
	addi	r3, r3, 328				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -328				# 2061
	lwz	r31, 324(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 320(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lfs	f0, 16(r3)				# 2056
	lwz	r2, 32(r3)				# 2056
	mfspr	r31, 8				# 2056
	stw	r31, 324(r3)				# 2056
	addi	r3, r3, 328				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -328				# 2056
	lwz	r31, 324(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 324(r3)				# 2057
	addi	r3, r3, 328				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -328				# 2057
	lwz	r31, 324(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 324(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 328(r3)				# 2058
	addi	r3, r3, 332				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -332				# 2058
	lwz	r31, 328(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 324(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 328(r3)				# 2059
	addi	r3, r3, 332				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -332				# 2059
	lwz	r31, 328(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 324(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 328(r3)				# 2060
	addi	r3, r3, 332				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -332				# 2060
	lwz	r31, 328(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 324(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	lfs	f0, 16(r3)				# 2061
	lwz	r2, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	stw	r31, 328(r3)				# 2061
	addi	r3, r3, 332				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -332				# 2061
	lwz	r31, 328(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 324(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lwz	r2, 0(r3)				# 2074
	lwz	r6, 4(r3)				# 2074
	mfspr	r31, 8				# 2074
	mr	r5, r6				# 2074
	stw	r31, 328(r3)				# 2074
	addi	r3, r3, 332				# 2074
	bl	min_caml_create_array				# 2074
	addi	r3, r3, -332				# 2074
	lwz	r31, 328(r3)				# 2074
	mtspr	8, r31				# 2074
	lfs	f0, 16(r3)				# 2056
	lwz	r5, 32(r3)				# 2056
	stw	r2, 328(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 332(r3)				# 2056
	addi	r3, r3, 336				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -336				# 2056
	lwz	r31, 332(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 332(r3)				# 2057
	addi	r3, r3, 336				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -336				# 2057
	lwz	r31, 332(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 332(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 336(r3)				# 2058
	addi	r3, r3, 340				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -340				# 2058
	lwz	r31, 336(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 332(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 336(r3)				# 2059
	addi	r3, r3, 340				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -340				# 2059
	lwz	r31, 336(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 332(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 336(r3)				# 2060
	addi	r3, r3, 340				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -340				# 2060
	lwz	r31, 336(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 332(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	lfs	f0, 16(r3)				# 2061
	lwz	r2, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	stw	r31, 336(r3)				# 2061
	addi	r3, r3, 340				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -340				# 2061
	lwz	r31, 336(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 332(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	mr	r2, r4				# 2076
	addi	r4, r4, 32				# 2076
	stw	r5, 28(r2)				# 2076
	lwz	r5, 328(r3)				# 2076
	stw	r5, 24(r2)				# 2076
	lwz	r5, 324(r3)				# 2076
	stw	r5, 20(r2)				# 2076
	lwz	r5, 320(r3)				# 2076
	stw	r5, 16(r2)				# 2076
	lwz	r5, 316(r3)				# 2076
	stw	r5, 12(r2)				# 2076
	lwz	r5, 312(r3)				# 2076
	stw	r5, 8(r2)				# 2076
	lwz	r5, 308(r3)				# 2076
	stw	r5, 4(r2)				# 2076
	lwz	r5, 304(r3)				# 2076
	stw	r5, 0(r2)				# 2076
	mr	r5, r2				# 2076
	lwz	r2, 300(r3)				# 2090
	mfspr	r31, 8				# 2090
	stw	r31, 336(r3)				# 2090
	addi	r3, r3, 340				# 2090
	bl	min_caml_create_array				# 2090
	addi	r3, r3, -340				# 2090
	lwz	r31, 336(r3)				# 2090
	mtspr	8, r31				# 2090
	lwz	r5, 132(r3)				# 2091
	lwz	r6, 0(r5)				# 2091
	addi	r6, r6, -2				# 2091
	lwz	r30, 244(r3)				# 2091
	mfspr	r31, 8				# 2091
	mr	r5, r6				# 2091
	stw	r31, 336(r3)				# 2091
	addi	r3, r3, 340				# 2091
	lwz	r31, 0(r30)				# 2091
	mtspr	9, r31				# 2091
	bctrl				# 2091
	addi	r3, r3, -340				# 2091
	lwz	r31, 336(r3)				# 2091
	mtspr	8, r31				# 2091
	lwz	r5, 132(r3)				# 2090
	lwz	r6, 0(r5)				# 2090
	lfs	f0, 16(r3)				# 2068
	lwz	r7, 32(r3)				# 2068
	stw	r2, 336(r3)				# 2068
	stw	r6, 340(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r7				# 2068
	stw	r31, 344(r3)				# 2068
	addi	r3, r3, 348				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -348				# 2068
	lwz	r31, 344(r3)				# 2068
	mtspr	8, r31				# 2068
	lfs	f0, 16(r3)				# 2056
	lwz	r5, 32(r3)				# 2056
	stw	r2, 344(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 348(r3)				# 2056
	addi	r3, r3, 352				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -352				# 2056
	lwz	r31, 348(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 348(r3)				# 2057
	addi	r3, r3, 352				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -352				# 2057
	lwz	r31, 348(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 348(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 352(r3)				# 2058
	addi	r3, r3, 356				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -356				# 2058
	lwz	r31, 352(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 348(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 352(r3)				# 2059
	addi	r3, r3, 356				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -356				# 2059
	lwz	r31, 352(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 348(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 352(r3)				# 2060
	addi	r3, r3, 356				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -356				# 2060
	lwz	r31, 352(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 348(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	lfs	f0, 16(r3)				# 2061
	lwz	r2, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	stw	r31, 352(r3)				# 2061
	addi	r3, r3, 356				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -356				# 2061
	lwz	r31, 352(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 348(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lwz	r2, 172(r3)				# 2070
	lwz	r6, 4(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r5, r6				# 2070
	stw	r31, 352(r3)				# 2070
	addi	r3, r3, 356				# 2070
	bl	min_caml_create_array				# 2070
	addi	r3, r3, -356				# 2070
	lwz	r31, 352(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 172(r3)				# 2071
	lwz	r6, 4(r3)				# 2071
	stw	r2, 352(r3)				# 2071
	mfspr	r31, 8				# 2071
	mr	r2, r5				# 2071
	mr	r5, r6				# 2071
	stw	r31, 356(r3)				# 2071
	addi	r3, r3, 360				# 2071
	bl	min_caml_create_array				# 2071
	addi	r3, r3, -360				# 2071
	lwz	r31, 356(r3)				# 2071
	mtspr	8, r31				# 2071
	lfs	f0, 16(r3)				# 2056
	lwz	r5, 32(r3)				# 2056
	stw	r2, 356(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 360(r3)				# 2056
	addi	r3, r3, 364				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -364				# 2056
	lwz	r31, 360(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 360(r3)				# 2057
	addi	r3, r3, 364				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -364				# 2057
	lwz	r31, 360(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 360(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 364(r3)				# 2058
	addi	r3, r3, 368				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -368				# 2058
	lwz	r31, 364(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 360(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 364(r3)				# 2059
	addi	r3, r3, 368				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -368				# 2059
	lwz	r31, 364(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 360(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 364(r3)				# 2060
	addi	r3, r3, 368				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -368				# 2060
	lwz	r31, 364(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 360(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	lfs	f0, 16(r3)				# 2061
	lwz	r2, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	stw	r31, 364(r3)				# 2061
	addi	r3, r3, 368				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -368				# 2061
	lwz	r31, 364(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 360(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lfs	f0, 16(r3)				# 2056
	lwz	r2, 32(r3)				# 2056
	mfspr	r31, 8				# 2056
	stw	r31, 364(r3)				# 2056
	addi	r3, r3, 368				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -368				# 2056
	lwz	r31, 364(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 364(r3)				# 2057
	addi	r3, r3, 368				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -368				# 2057
	lwz	r31, 364(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 364(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 368(r3)				# 2058
	addi	r3, r3, 372				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -372				# 2058
	lwz	r31, 368(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 364(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 368(r3)				# 2059
	addi	r3, r3, 372				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -372				# 2059
	lwz	r31, 368(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 364(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 368(r3)				# 2060
	addi	r3, r3, 372				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -372				# 2060
	lwz	r31, 368(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 364(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	lfs	f0, 16(r3)				# 2061
	lwz	r2, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	stw	r31, 368(r3)				# 2061
	addi	r3, r3, 372				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -372				# 2061
	lwz	r31, 368(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 364(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	lwz	r2, 0(r3)				# 2074
	lwz	r6, 4(r3)				# 2074
	mfspr	r31, 8				# 2074
	mr	r5, r6				# 2074
	stw	r31, 368(r3)				# 2074
	addi	r3, r3, 372				# 2074
	bl	min_caml_create_array				# 2074
	addi	r3, r3, -372				# 2074
	lwz	r31, 368(r3)				# 2074
	mtspr	8, r31				# 2074
	lfs	f0, 16(r3)				# 2056
	lwz	r5, 32(r3)				# 2056
	stw	r2, 368(r3)				# 2056
	mfspr	r31, 8				# 2056
	mr	r2, r5				# 2056
	stw	r31, 372(r3)				# 2056
	addi	r3, r3, 376				# 2056
	bl	min_caml_create_float_array				# 2056
	addi	r3, r3, -376				# 2056
	lwz	r31, 372(r3)				# 2056
	mr	r5, r2				# 2056
	mtspr	8, r31				# 2056
	lwz	r2, 172(r3)				# 2057
	mfspr	r31, 8				# 2057
	stw	r31, 372(r3)				# 2057
	addi	r3, r3, 376				# 2057
	bl	min_caml_create_array				# 2057
	addi	r3, r3, -376				# 2057
	lwz	r31, 372(r3)				# 2057
	mtspr	8, r31				# 2057
	lfs	f0, 16(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	stw	r2, 372(r3)				# 2058
	mfspr	r31, 8				# 2058
	mr	r2, r5				# 2058
	stw	r31, 376(r3)				# 2058
	addi	r3, r3, 380				# 2058
	bl	min_caml_create_float_array				# 2058
	addi	r3, r3, -380				# 2058
	lwz	r31, 376(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r5, 372(r3)				# 2058
	stw	r2, 4(r5)				# 2058
	lfs	f0, 16(r3)				# 2059
	lwz	r2, 32(r3)				# 2059
	mfspr	r31, 8				# 2059
	stw	r31, 376(r3)				# 2059
	addi	r3, r3, 380				# 2059
	bl	min_caml_create_float_array				# 2059
	addi	r3, r3, -380				# 2059
	lwz	r31, 376(r3)				# 2059
	mtspr	8, r31				# 2059
	lwz	r5, 372(r3)				# 2059
	stw	r2, 8(r5)				# 2059
	lfs	f0, 16(r3)				# 2060
	lwz	r2, 32(r3)				# 2060
	mfspr	r31, 8				# 2060
	stw	r31, 376(r3)				# 2060
	addi	r3, r3, 380				# 2060
	bl	min_caml_create_float_array				# 2060
	addi	r3, r3, -380				# 2060
	lwz	r31, 376(r3)				# 2060
	mtspr	8, r31				# 2060
	lwz	r5, 372(r3)				# 2060
	stw	r2, 12(r5)				# 2060
	lfs	f0, 16(r3)				# 2061
	lwz	r2, 32(r3)				# 2061
	mfspr	r31, 8				# 2061
	stw	r31, 376(r3)				# 2061
	addi	r3, r3, 380				# 2061
	bl	min_caml_create_float_array				# 2061
	addi	r3, r3, -380				# 2061
	lwz	r31, 376(r3)				# 2061
	mtspr	8, r31				# 2061
	lwz	r5, 372(r3)				# 2061
	stw	r2, 16(r5)				# 2061
	mr	r2, r4				# 2076
	addi	r4, r4, 32				# 2076
	stw	r5, 28(r2)				# 2076
	lwz	r5, 368(r3)				# 2076
	stw	r5, 24(r2)				# 2076
	lwz	r5, 364(r3)				# 2076
	stw	r5, 20(r2)				# 2076
	lwz	r5, 360(r3)				# 2076
	stw	r5, 16(r2)				# 2076
	lwz	r5, 356(r3)				# 2076
	stw	r5, 12(r2)				# 2076
	lwz	r5, 352(r3)				# 2076
	stw	r5, 8(r2)				# 2076
	lwz	r5, 348(r3)				# 2076
	stw	r5, 4(r2)				# 2076
	lwz	r5, 344(r3)				# 2076
	stw	r5, 0(r2)				# 2076
	mr	r5, r2				# 2076
	lwz	r2, 340(r3)				# 2090
	mfspr	r31, 8				# 2090
	stw	r31, 376(r3)				# 2090
	addi	r3, r3, 380				# 2090
	bl	min_caml_create_array				# 2090
	addi	r3, r3, -380				# 2090
	lwz	r31, 376(r3)				# 2090
	mtspr	8, r31				# 2090
	lwz	r5, 132(r3)				# 2091
	lwz	r6, 0(r5)				# 2091
	addi	r6, r6, -2				# 2091
	lwz	r30, 244(r3)				# 2091
	mfspr	r31, 8				# 2091
	mr	r5, r6				# 2091
	stw	r31, 376(r3)				# 2091
	addi	r3, r3, 380				# 2091
	lwz	r31, 0(r30)				# 2091
	mtspr	9, r31				# 2091
	bctrl				# 2091
	addi	r3, r3, -380				# 2091
	lwz	r31, 376(r3)				# 2091
	mtspr	8, r31				# 2091
	lwz	r30, 204(r3)				# 2272
	stw	r2, 376(r3)				# 2272
	mfspr	r31, 8				# 2272
	stw	r31, 380(r3)				# 2272
	addi	r3, r3, 384				# 2272
	lwz	r31, 0(r30)				# 2272
	mtspr	9, r31				# 2272
	bctrl				# 2272
	addi	r3, r3, -384				# 2272
	lwz	r31, 380(r3)				# 2272
	mtspr	8, r31				# 2272
	addi	r2, 0, 80
	mfspr	r31, 8				# 1919
	stw	r31, 380(r3)				# 1919
	addi	r3, r3, 384				# 1919
	bl	min_caml_print_char				# 1919
	addi	r3, r3, -384				# 1919
	lwz	r31, 380(r3)				# 1919
	mtspr	8, r31				# 1919
	addi	r2, 0, 51
	mfspr	r31, 8				# 1920
	stw	r31, 380(r3)				# 1920
	addi	r3, r3, 384				# 1920
	bl	min_caml_print_char				# 1920
	addi	r3, r3, -384				# 1920
	lwz	r31, 380(r3)				# 1920
	mtspr	8, r31				# 1920
	addi	r2, 0, 10
	stw	r2, 380(r3)				# 1921
	mfspr	r31, 8				# 1921
	stw	r31, 384(r3)				# 1921
	addi	r3, r3, 388				# 1921
	bl	min_caml_print_char				# 1921
	addi	r3, r3, -388				# 1921
	lwz	r31, 384(r3)				# 1921
	mtspr	8, r31				# 1921
	lwz	r2, 132(r3)				# 1922
	lwz	r5, 0(r2)				# 1922
	mfspr	r31, 8				# 1922
	mr	r2, r5				# 1922
	stw	r31, 384(r3)				# 1922
	addi	r3, r3, 388				# 1922
	bl	min_caml_print_int				# 1922
	addi	r3, r3, -388				# 1922
	lwz	r31, 384(r3)				# 1922
	mtspr	8, r31				# 1922
	addi	r2, 0, 32
	stw	r2, 384(r3)				# 1923
	mfspr	r31, 8				# 1923
	stw	r31, 388(r3)				# 1923
	addi	r3, r3, 392				# 1923
	bl	min_caml_print_char				# 1923
	addi	r3, r3, -392				# 1923
	lwz	r31, 388(r3)				# 1923
	mtspr	8, r31				# 1923
	lwz	r2, 132(r3)				# 1924
	lwz	r5, 4(r2)				# 1924
	mfspr	r31, 8				# 1924
	mr	r2, r5				# 1924
	stw	r31, 388(r3)				# 1924
	addi	r3, r3, 392				# 1924
	bl	min_caml_print_int				# 1924
	addi	r3, r3, -392				# 1924
	lwz	r31, 388(r3)				# 1924
	mtspr	8, r31				# 1924
	lwz	r2, 384(r3)				# 1925
	mfspr	r31, 8				# 1925
	stw	r31, 388(r3)				# 1925
	addi	r3, r3, 392				# 1925
	bl	min_caml_print_char				# 1925
	addi	r3, r3, -392				# 1925
	lwz	r31, 388(r3)				# 1925
	mtspr	8, r31				# 1925
	addi	r2, 0, 255
	mfspr	r31, 8				# 1926
	stw	r31, 388(r3)				# 1926
	addi	r3, r3, 392				# 1926
	bl	min_caml_print_int				# 1926
	addi	r3, r3, -392				# 1926
	lwz	r31, 388(r3)				# 1926
	mtspr	8, r31				# 1926
	lwz	r2, 380(r3)				# 1927
	mfspr	r31, 8				# 1927
	stw	r31, 388(r3)				# 1927
	addi	r3, r3, 392				# 1927
	bl	min_caml_print_char				# 1927
	addi	r3, r3, -392				# 1927
	lwz	r31, 388(r3)				# 1927
	mtspr	8, r31				# 1927
	lwz	r2, 268(r3)				# 2196
	lwz	r30, 240(r3)				# 2196
	mfspr	r31, 8				# 2196
	stw	r31, 388(r3)				# 2196
	addi	r3, r3, 392				# 2196
	lwz	r31, 0(r30)				# 2196
	mtspr	9, r31				# 2196
	bctrl				# 2196
	addi	r3, r3, -392				# 2196
	lwz	r31, 388(r3)				# 2196
	mtspr	8, r31				# 2196
	addi	r2, 0, 9
	lwz	r5, 4(r3)				# 2197
	lwz	r30, 236(r3)				# 2197
	mfspr	r31, 8				# 2197
	mr	r6, r5				# 2197
	stw	r31, 388(r3)				# 2197
	addi	r3, r3, 392				# 2197
	lwz	r31, 0(r30)				# 2197
	mtspr	9, r31				# 2197
	bctrl				# 2197
	addi	r3, r3, -392				# 2197
	lwz	r31, 388(r3)				# 2197
	mtspr	8, r31				# 2197
	lwz	r2, 268(r3)				# 2198
	lwz	r30, 232(r3)				# 2198
	mfspr	r31, 8				# 2198
	stw	r31, 388(r3)				# 2198
	addi	r3, r3, 392				# 2198
	lwz	r31, 0(r30)				# 2198
	mtspr	9, r31				# 2198
	bctrl				# 2198
	addi	r3, r3, -392				# 2198
	lwz	r31, 388(r3)				# 2198
	mtspr	8, r31				# 2198
	lwz	r2, 56(r3)				# 153
	lfs	f0, 0(r2)				# 153
	lwz	r5, 184(r3)				# 153
	stfs	f0, 0(r5)				# 153
	lfs	f0, 4(r2)				# 154
	stfs	f0, 4(r5)				# 154
	lfs	f0, 8(r2)				# 155
	stfs	f0, 8(r5)				# 155
	lwz	r2, 8(r3)				# 1122
	lwz	r5, 0(r2)				# 1122
	addi	r5, r5, -1				# 1122
	lwz	r6, 188(r3)				# 1122
	lwz	r30, 208(r3)				# 1122
	mfspr	r31, 8				# 1122
	mr	r2, r6				# 1122
	stw	r31, 388(r3)				# 1122
	addi	r3, r3, 392				# 1122
	lwz	r31, 0(r30)				# 1122
	mtspr	9, r31				# 1122
	bctrl				# 1122
	addi	r3, r3, -392				# 1122
	lwz	r31, 388(r3)				# 1122
	mtspr	8, r31				# 1122
	lwz	r2, 8(r3)				# 2277
	lwz	r2, 0(r2)				# 2277
	addi	r2, r2, -1				# 2277
	lwz	r30, 228(r3)				# 2277
	mfspr	r31, 8				# 2277
	stw	r31, 388(r3)				# 2277
	addi	r3, r3, 392				# 2277
	lwz	r31, 0(r30)				# 2277
	mtspr	9, r31				# 2277
	bctrl				# 2277
	addi	r3, r3, -392				# 2277
	lwz	r31, 388(r3)				# 2277
	mtspr	8, r31				# 2277
	lwz	r2, 140(r3)				# 2006
	lfs	f0, 0(r2)				# 2006
	lwz	r2, 136(r3)				# 2006
	lwz	r2, 4(r2)				# 2006
	lwz	r5, 4(r3)				# 2006
	sub	r2, r5, r2				# 2006
	stfs	f0, 392(r3)				# 2006
	mfspr	r31, 8				# 2006
	stw	r31, 400(r3)				# 2006
	addi	r3, r3, 404				# 2006
	bl	min_caml_float_of_int				# 2006
	addi	r3, r3, -404				# 2006
	lwz	r31, 400(r3)				# 2006
	mtspr	8, r31				# 2006
	lfs	f1, 392(r3)				# 2006
	fmul	f0, f1, f0				# 2006
	lwz	r2, 156(r3)				# 2009
	lfs	f1, 0(r2)				# 2009
	fmul	f1, f0, f1				# 2009
	lwz	r5, 160(r3)				# 2009
	lfs	f2, 0(r5)				# 2009
	fadd	f1, f1, f2				# 2009
	lfs	f2, 4(r2)				# 2010
	fmul	f2, f0, f2				# 2010
	lfs	f3, 4(r5)				# 2010
	fadd	f2, f2, f3				# 2010
	lfs	f3, 8(r2)				# 2011
	fmul	f0, f0, f3				# 2011
	lfs	f3, 8(r5)				# 2011
	fadd	f0, f0, f3				# 2011
	lwz	r2, 132(r3)				# 2012
	lwz	r2, 0(r2)				# 2012
	addi	r5, r2, -1				# 2012
	lwz	r2, 336(r3)				# 2012
	lwz	r6, 4(r3)				# 2012
	lwz	r30, 224(r3)				# 2012
	mfspr	r31, 8				# 2012
	fmr	f31, f2				# 2012
	fmr	f2, f0				# 2012
	fmr	f0, f1				# 2012
	fmr	f1, f31				# 2012
	stw	r31, 400(r3)				# 2012
	addi	r3, r3, 404				# 2012
	lwz	r31, 0(r30)				# 2012
	mtspr	9, r31				# 2012
	bctrl				# 2012
	addi	r3, r3, -404				# 2012
	lwz	r31, 400(r3)				# 2012
	mtspr	8, r31				# 2012
	lwz	r2, 4(r3)				# 2279
	lwz	r5, 296(r3)				# 2279
	lwz	r6, 336(r3)				# 2279
	lwz	r7, 376(r3)				# 2279
	lwz	r8, 128(r3)				# 2279
	lwz	r30, 220(r3)				# 2279
	mfspr	r31, 8				# 2279
	stw	r31, 400(r3)				# 2279
	addi	r3, r3, 404				# 2279
	lwz	r31, 0(r30)				# 2279
	mtspr	9, r31				# 2279
	bctrl				# 2279
	addi	r3, r3, -404				# 2279
	lwz	r31, 400(r3)				# 2279
	mtspr	8, r31				# 2279
#	main program ends
	halt
