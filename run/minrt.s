	.data
	.literal4
	.align 2
l.12835:	 # 128.000000
	.long	1124073472
	.align 2
l.12817:	 # 1000000000.000000
	.long	1315859240
	.align 2
l.12711:	 # 0.900000
	.long	1063675494
	.align 2
l.12710:	 # 0.200000
	.long	1045220557
	.align 2
l.12406:	 # 150.000000
	.long	1125515264
	.align 2
l.12382:	 # -150.000000
	.long	-1021968384
	.align 2
l.12356:	 # 0.100000
	.long	1036831949
	.align 2
l.12303:	 # -2.000000
	.long	-1073741824
	.align 2
l.12289:	 # 0.003906
	.long	998244352
	.align 2
l.12214:	 # 100000000.000000
	.long	1287568416
	.align 2
l.12208:	 # 255.000000
	.long	1132396544
	.align 2
l.12205:	 # 20.000000
	.long	1101004800
	.align 2
l.12204:	 # 0.050000
	.long	1028443341
	.align 2
l.12199:	 # 0.250000
	.long	1048576000
	.align 2
l.12195:	 # 10.000000
	.long	1092616192
	.align 2
l.12189:	 # 0.300000
	.long	1050253722
	.align 2
l.12188:	 # 0.500000
	.long	1056964608
	.align 2
l.12187:	 # 0.150000
	.long	1041865114
	.align 2
l.12183:	 # 3.141593
	.long	1078530011
	.align 2
l.12182:	 # 30.000000
	.long	1106247680
	.align 2
l.12181:	 # 15.000000
	.long	1097859072
	.align 2
l.12180:	 # 0.000100
	.long	953267991
	.align 2
l.11981:	 # -0.100000
	.long	-1110651699
	.align 2
l.11955:	 # 0.010000
	.long	1008981770
	.align 2
l.11954:	 # -0.200000
	.long	-1102263091
	.align 2
l.11707:	 # -200.000000
	.long	-1018691584
	.align 2
l.11705:	 # 200.000000
	.long	1128792064
	.align 2
l.11690:	 # 0.000000
	.long	1056964608
	.align 2
l.11682:	 # -1.000000
	.long	-1082130432
	.align 2
l.11681:	 # 1.000000
	.long	1065353216
	.align 2
l.11661:	 # 0.017453
	.long	1016003125
	.align 2
l.11646:	 # 2.000000
	.long	1073741824
	.text
	.globl _min_caml_start
	.align 2
rotate_quadratic_matrix.2613:
	lwz	r6, 12(r1)				# 614
	lwz	r7, 8(r1)				# 614
	lwz	r8, 4(r1)				# 614
	slwi	r9, r7, 2				# 616
	lfsx	f0, r5, r9				# 616
	stw	r2, 0(r3)				# 616
	stw	r6, 4(r3)				# 616
	stw	r8, 8(r3)				# 616
	stw	r5, 12(r3)				# 616
	stw	r7, 16(r3)				# 616
	mfspr	r31, 8				# 616
	stw	r31, 20(r3)				# 616
	addi	r3, r3, 24				# 616
	bl	min_caml_cos				# 616
	addi	r3, r3, -24				# 616
	lwz	r31, 20(r3)				# 616
	mtspr	8, r31				# 616
	lwz	r2, 16(r3)				# 617
	slwi	r5, r2, 2				# 617
	lwz	r6, 12(r3)				# 617
	lfsx	f1, r6, r5				# 617
	stfs	f0, 24(r3)				# 617
	mfspr	r31, 8				# 617
	fmr	f0, f1				# 617
	stw	r31, 32(r3)				# 617
	addi	r3, r3, 36				# 617
	bl	min_caml_sin				# 617
	addi	r3, r3, -36				# 617
	lwz	r31, 32(r3)				# 617
	mtspr	8, r31				# 617
	lwz	r2, 8(r3)				# 618
	slwi	r5, r2, 2				# 618
	lwz	r6, 12(r3)				# 618
	lfsx	f1, r6, r5				# 618
	stfs	f0, 32(r3)				# 618
	mfspr	r31, 8				# 618
	fmr	f0, f1				# 618
	stw	r31, 40(r3)				# 618
	addi	r3, r3, 44				# 618
	bl	min_caml_cos				# 618
	addi	r3, r3, -44				# 618
	lwz	r31, 40(r3)				# 618
	mtspr	8, r31				# 618
	lwz	r2, 8(r3)				# 619
	slwi	r5, r2, 2				# 619
	lwz	r6, 12(r3)				# 619
	lfsx	f1, r6, r5				# 619
	stfs	f0, 40(r3)				# 619
	mfspr	r31, 8				# 619
	fmr	f0, f1				# 619
	stw	r31, 48(r3)				# 619
	addi	r3, r3, 52				# 619
	bl	min_caml_sin				# 619
	addi	r3, r3, -52				# 619
	lwz	r31, 48(r3)				# 619
	mtspr	8, r31				# 619
	lwz	r2, 4(r3)				# 620
	slwi	r5, r2, 2				# 620
	lwz	r6, 12(r3)				# 620
	lfsx	f1, r6, r5				# 620
	stfs	f0, 48(r3)				# 620
	mfspr	r31, 8				# 620
	fmr	f0, f1				# 620
	stw	r31, 56(r3)				# 620
	addi	r3, r3, 60				# 620
	bl	min_caml_cos				# 620
	addi	r3, r3, -60				# 620
	lwz	r31, 56(r3)				# 620
	mtspr	8, r31				# 620
	lwz	r2, 4(r3)				# 621
	slwi	r5, r2, 2				# 621
	lwz	r6, 12(r3)				# 621
	lfsx	f1, r6, r5				# 621
	stfs	f0, 56(r3)				# 621
	mfspr	r31, 8				# 621
	fmr	f0, f1				# 621
	stw	r31, 64(r3)				# 621
	addi	r3, r3, 68				# 621
	bl	min_caml_sin				# 621
	addi	r3, r3, -68				# 621
	lwz	r31, 64(r3)				# 621
	mtspr	8, r31				# 621
	lfs	f1, 56(r3)				# 623
	lfs	f2, 40(r3)				# 623
	fmul	f3, f2, f1				# 623
	lfs	f4, 48(r3)				# 624
	lfs	f5, 32(r3)				# 624
	fmul	f6, f5, f4				# 624
	fmul	f7, f6, f1				# 624
	lfs	f8, 24(r3)				# 624
	fmul	f9, f8, f0				# 624
	fsub	f7, f7, f9				# 624
	fmul	f9, f8, f4				# 625
	fmul	f10, f9, f1				# 625
	fmul	f11, f5, f0				# 625
	fadd	f10, f10, f11				# 625
	fmul	f11, f2, f0				# 627
	fmul	f6, f6, f0				# 628
	fmul	f12, f8, f1				# 628
	fadd	f6, f6, f12				# 628
	fmul	f0, f9, f0				# 629
	fmul	f1, f5, f1				# 629
	fsub	f0, f0, f1				# 629
	fneg	f1, f4				# 107
	fmul	f4, f5, f2				# 632
	fmul	f2, f8, f2				# 633
	lwz	r2, 16(r3)				# 636
	slwi	r5, r2, 2				# 636
	lwz	r6, 0(r3)				# 636
	lfsx	f5, r6, r5				# 636
	lwz	r5, 8(r3)				# 637
	slwi	r7, r5, 2				# 637
	lfsx	f8, r6, r7				# 637
	lwz	r7, 4(r3)				# 638
	slwi	r8, r7, 2				# 638
	lfsx	f9, r6, r8				# 638
	fmul	f12, f3, f3				# 103
	fmul	f12, f5, f12				# 643
	fmul	f13, f11, f11				# 103
	fmul	f13, f8, f13				# 643
	fadd	f12, f12, f13				# 643
	fmul	f13, f1, f1				# 103
	fmul	f13, f9, f13				# 643
	fadd	f12, f12, f13				# 643
	slwi	r8, r2, 2				# 643
	stfsx	f12, r6, r8				# 643
	fmul	f12, f7, f7				# 103
	fmul	f12, f5, f12				# 644
	fmul	f13, f6, f6				# 103
	fmul	f13, f8, f13				# 644
	fadd	f12, f12, f13				# 644
	fmul	f13, f4, f4				# 103
	fmul	f13, f9, f13				# 644
	fadd	f12, f12, f13				# 644
	slwi	r8, r5, 2				# 644
	stfsx	f12, r6, r8				# 644
	fmul	f12, f10, f10				# 103
	fmul	f12, f5, f12				# 645
	fmul	f13, f0, f0				# 103
	fmul	f13, f8, f13				# 645
	fadd	f12, f12, f13				# 645
	fmul	f13, f2, f2				# 103
	fmul	f13, f9, f13				# 645
	fadd	f12, f12, f13				# 645
	slwi	r8, r7, 2				# 645
	stfsx	f12, r6, r8				# 645
	lis	r31, ha16(l.11646)
	addi	r31, r31, lo16(l.11646)
	lfs	f12, 0(r31)				# 648
	fmul	f13, f5, f7				# 648
	fmul	f13, f13, f10				# 648
	fmul	f14, f8, f6				# 648
	fmul	f14, f14, f0				# 648
	fadd	f13, f13, f14				# 648
	fmul	f14, f9, f4				# 648
	fmul	f14, f14, f2				# 648
	fadd	f13, f13, f14				# 648
	fmul	f13, f12, f13				# 648
	slwi	r2, r2, 2				# 648
	lwz	r6, 12(r3)				# 648
	stfsx	f13, r6, r2				# 648
	fmul	f3, f5, f3				# 649
	fmul	f5, f3, f10				# 649
	fmul	f8, f8, f11				# 649
	fmul	f0, f8, f0				# 649
	fadd	f0, f5, f0				# 649
	fmul	f1, f9, f1				# 649
	fmul	f2, f1, f2				# 649
	fadd	f0, f0, f2				# 649
	fmul	f0, f12, f0				# 649
	slwi	r2, r5, 2				# 649
	stfsx	f0, r6, r2				# 649
	fmul	f0, f3, f7				# 650
	fmul	f2, f8, f6				# 650
	fadd	f0, f0, f2				# 650
	fmul	f1, f1, f4				# 650
	fadd	f0, f0, f1				# 650
	fmul	f0, f12, f0				# 650
	slwi	r2, r7, 2				# 650
	stfsx	f0, r6, r2				# 650
	blr
read_nth_object.2616:
	lwz	r5, 32(r1)				# 655
	lwz	r6, 28(r1)				# 655
	lwz	r7, 24(r1)				# 655
	lwz	r8, 20(r1)				# 655
	lwz	r9, 16(r1)				# 655
	lwz	r10, 12(r1)				# 655
	lwz	r11, 8(r1)				# 655
	lfs	f0, 4(r1)				# 655
	stw	r5, 0(r3)				# 657
	stw	r6, 4(r3)				# 657
	stw	r2, 8(r3)				# 657
	stw	r7, 12(r3)				# 657
	stw	r11, 16(r3)				# 657
	stw	r10, 20(r3)				# 657
	stfs	f0, 24(r3)				# 657
	stw	r9, 32(r3)				# 657
	stw	r8, 36(r3)				# 657
	mfspr	r31, 8				# 657
	stw	r31, 40(r3)				# 657
	addi	r3, r3, 44				# 657
	bl	min_caml_read_int				# 657
	addi	r3, r3, -44				# 657
	lwz	r31, 40(r3)				# 657
	mtspr	8, r31				# 657
	lwz	r5, 36(r3)				# 658
	cmpw	cr7, r2, r5				# 658
	bne	cr7, beq_else.15779				# 658
	addi	r2, 0, 0
	blr
beq_else.15779:
	stw	r2, 40(r3)				# 660
	mfspr	r31, 8				# 660
	stw	r31, 44(r3)				# 660
	addi	r3, r3, 48				# 660
	bl	min_caml_read_int				# 660
	addi	r3, r3, -48				# 660
	lwz	r31, 44(r3)				# 660
	mtspr	8, r31				# 660
	stw	r2, 44(r3)				# 661
	mfspr	r31, 8				# 661
	stw	r31, 48(r3)				# 661
	addi	r3, r3, 52				# 661
	bl	min_caml_read_int				# 661
	addi	r3, r3, -52				# 661
	lwz	r31, 48(r3)				# 661
	mtspr	8, r31				# 661
	stw	r2, 48(r3)				# 662
	mfspr	r31, 8				# 662
	stw	r31, 52(r3)				# 662
	addi	r3, r3, 56				# 662
	bl	min_caml_read_int				# 662
	addi	r3, r3, -56				# 662
	lwz	r31, 52(r3)				# 662
	mtspr	8, r31				# 662
	lfs	f0, 24(r3)				# 664
	lwz	r5, 32(r3)				# 664
	stw	r2, 52(r3)				# 664
	mfspr	r31, 8				# 664
	mr	r2, r5				# 664
	stw	r31, 56(r3)				# 664
	addi	r3, r3, 60				# 664
	bl	min_caml_create_float_array				# 664
	addi	r3, r3, -60				# 664
	lwz	r31, 56(r3)				# 664
	mtspr	8, r31				# 664
	stw	r2, 56(r3)				# 665
	mfspr	r31, 8				# 665
	stw	r31, 60(r3)				# 665
	addi	r3, r3, 64				# 665
	bl	min_caml_read_float				# 665
	addi	r3, r3, -64				# 665
	lwz	r31, 60(r3)				# 665
	mtspr	8, r31				# 665
	lwz	r2, 20(r3)				# 665
	slwi	r5, r2, 2				# 665
	lwz	r6, 56(r3)				# 665
	stfsx	f0, r6, r5				# 665
	mfspr	r31, 8				# 666
	stw	r31, 60(r3)				# 666
	addi	r3, r3, 64				# 666
	bl	min_caml_read_float				# 666
	addi	r3, r3, -64				# 666
	lwz	r31, 60(r3)				# 666
	mtspr	8, r31				# 666
	lwz	r2, 16(r3)				# 666
	slwi	r5, r2, 2				# 666
	lwz	r6, 56(r3)				# 666
	stfsx	f0, r6, r5				# 666
	mfspr	r31, 8				# 667
	stw	r31, 60(r3)				# 667
	addi	r3, r3, 64				# 667
	bl	min_caml_read_float				# 667
	addi	r3, r3, -64				# 667
	lwz	r31, 60(r3)				# 667
	mtspr	8, r31				# 667
	lwz	r2, 12(r3)				# 667
	slwi	r5, r2, 2				# 667
	lwz	r6, 56(r3)				# 667
	stfsx	f0, r6, r5				# 667
	lfs	f0, 24(r3)				# 669
	lwz	r5, 32(r3)				# 669
	mfspr	r31, 8				# 669
	mr	r2, r5				# 669
	stw	r31, 60(r3)				# 669
	addi	r3, r3, 64				# 669
	bl	min_caml_create_float_array				# 669
	addi	r3, r3, -64				# 669
	lwz	r31, 60(r3)				# 669
	mtspr	8, r31				# 669
	stw	r2, 60(r3)				# 670
	mfspr	r31, 8				# 670
	stw	r31, 64(r3)				# 670
	addi	r3, r3, 68				# 670
	bl	min_caml_read_float				# 670
	addi	r3, r3, -68				# 670
	lwz	r31, 64(r3)				# 670
	mtspr	8, r31				# 670
	lwz	r2, 20(r3)				# 670
	slwi	r5, r2, 2				# 670
	lwz	r6, 60(r3)				# 670
	stfsx	f0, r6, r5				# 670
	mfspr	r31, 8				# 671
	stw	r31, 64(r3)				# 671
	addi	r3, r3, 68				# 671
	bl	min_caml_read_float				# 671
	addi	r3, r3, -68				# 671
	lwz	r31, 64(r3)				# 671
	mtspr	8, r31				# 671
	lwz	r2, 16(r3)				# 671
	slwi	r5, r2, 2				# 671
	lwz	r6, 60(r3)				# 671
	stfsx	f0, r6, r5				# 671
	mfspr	r31, 8				# 672
	stw	r31, 64(r3)				# 672
	addi	r3, r3, 68				# 672
	bl	min_caml_read_float				# 672
	addi	r3, r3, -68				# 672
	lwz	r31, 64(r3)				# 672
	mtspr	8, r31				# 672
	lwz	r2, 12(r3)				# 672
	slwi	r5, r2, 2				# 672
	lwz	r6, 60(r3)				# 672
	stfsx	f0, r6, r5				# 672
	mfspr	r31, 8				# 674
	stw	r31, 64(r3)				# 674
	addi	r3, r3, 68				# 674
	bl	min_caml_read_float				# 674
	addi	r3, r3, -68				# 674
	lwz	r31, 64(r3)				# 674
	mtspr	8, r31				# 674
	lfs	f1, 24(r3)				# 115
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.15780				# 115
	addi	r2, 0, 0
	b	ble_cont.15781				# 115
ble_else.15780:
	addi	r2, 0, 1
ble_cont.15781:
	lwz	r5, 12(r3)				# 676
	stw	r2, 64(r3)				# 676
	mfspr	r31, 8				# 676
	mr	r2, r5				# 676
	fmr	f0, f1				# 676
	stw	r31, 68(r3)				# 676
	addi	r3, r3, 72				# 676
	bl	min_caml_create_float_array				# 676
	addi	r3, r3, -72				# 676
	lwz	r31, 68(r3)				# 676
	mtspr	8, r31				# 676
	stw	r2, 68(r3)				# 677
	mfspr	r31, 8				# 677
	stw	r31, 72(r3)				# 677
	addi	r3, r3, 76				# 677
	bl	min_caml_read_float				# 677
	addi	r3, r3, -76				# 677
	lwz	r31, 72(r3)				# 677
	mtspr	8, r31				# 677
	lwz	r2, 20(r3)				# 677
	slwi	r5, r2, 2				# 677
	lwz	r6, 68(r3)				# 677
	stfsx	f0, r6, r5				# 677
	mfspr	r31, 8				# 678
	stw	r31, 72(r3)				# 678
	addi	r3, r3, 76				# 678
	bl	min_caml_read_float				# 678
	addi	r3, r3, -76				# 678
	lwz	r31, 72(r3)				# 678
	mtspr	8, r31				# 678
	lwz	r2, 16(r3)				# 678
	slwi	r5, r2, 2				# 678
	lwz	r6, 68(r3)				# 678
	stfsx	f0, r6, r5				# 678
	lfs	f0, 24(r3)				# 680
	lwz	r5, 32(r3)				# 680
	mfspr	r31, 8				# 680
	mr	r2, r5				# 680
	stw	r31, 72(r3)				# 680
	addi	r3, r3, 76				# 680
	bl	min_caml_create_float_array				# 680
	addi	r3, r3, -76				# 680
	lwz	r31, 72(r3)				# 680
	mtspr	8, r31				# 680
	stw	r2, 72(r3)				# 681
	mfspr	r31, 8				# 681
	stw	r31, 76(r3)				# 681
	addi	r3, r3, 80				# 681
	bl	min_caml_read_float				# 681
	addi	r3, r3, -80				# 681
	lwz	r31, 76(r3)				# 681
	mtspr	8, r31				# 681
	lwz	r2, 20(r3)				# 681
	slwi	r5, r2, 2				# 681
	lwz	r6, 72(r3)				# 681
	stfsx	f0, r6, r5				# 681
	mfspr	r31, 8				# 682
	stw	r31, 76(r3)				# 682
	addi	r3, r3, 80				# 682
	bl	min_caml_read_float				# 682
	addi	r3, r3, -80				# 682
	lwz	r31, 76(r3)				# 682
	mtspr	8, r31				# 682
	lwz	r2, 16(r3)				# 682
	slwi	r5, r2, 2				# 682
	lwz	r6, 72(r3)				# 682
	stfsx	f0, r6, r5				# 682
	mfspr	r31, 8				# 683
	stw	r31, 76(r3)				# 683
	addi	r3, r3, 80				# 683
	bl	min_caml_read_float				# 683
	addi	r3, r3, -80				# 683
	lwz	r31, 76(r3)				# 683
	mtspr	8, r31				# 683
	lwz	r2, 12(r3)				# 683
	slwi	r5, r2, 2				# 683
	lwz	r6, 72(r3)				# 683
	stfsx	f0, r6, r5				# 683
	lfs	f0, 24(r3)				# 685
	lwz	r5, 32(r3)				# 685
	mfspr	r31, 8				# 685
	mr	r2, r5				# 685
	stw	r31, 76(r3)				# 685
	addi	r3, r3, 80				# 685
	bl	min_caml_create_float_array				# 685
	addi	r3, r3, -80				# 685
	lwz	r31, 76(r3)				# 685
	mtspr	8, r31				# 685
	lwz	r5, 20(r3)				# 686
	lwz	r6, 52(r3)				# 686
	stw	r2, 76(r3)				# 686
	cmpw	cr7, r6, r5				# 686
	bne	cr7, beq_else.15782				# 686
	b	beq_cont.15783				# 686
beq_else.15782:
	mfspr	r31, 8				# 688
	stw	r31, 80(r3)				# 688
	addi	r3, r3, 84				# 688
	bl	min_caml_read_float				# 688
	addi	r3, r3, -84				# 688
	lwz	r31, 80(r3)				# 688
	mtspr	8, r31				# 688
	lis	r31, ha16(l.11661)
	addi	r31, r31, lo16(l.11661)
	lfs	f1, 0(r31)				# 555
	fmul	f0, f0, f1				# 555
	lwz	r2, 20(r3)				# 688
	slwi	r5, r2, 2				# 688
	lwz	r6, 76(r3)				# 688
	stfsx	f0, r6, r5				# 688
	stfs	f1, 80(r3)				# 689
	mfspr	r31, 8				# 689
	stw	r31, 88(r3)				# 689
	addi	r3, r3, 92				# 689
	bl	min_caml_read_float				# 689
	addi	r3, r3, -92				# 689
	lwz	r31, 88(r3)				# 689
	mtspr	8, r31				# 689
	lfs	f1, 80(r3)				# 555
	fmul	f0, f0, f1				# 555
	lwz	r2, 16(r3)				# 689
	slwi	r5, r2, 2				# 689
	lwz	r6, 76(r3)				# 689
	stfsx	f0, r6, r5				# 689
	mfspr	r31, 8				# 690
	stw	r31, 88(r3)				# 690
	addi	r3, r3, 92				# 690
	bl	min_caml_read_float				# 690
	addi	r3, r3, -92				# 690
	lwz	r31, 88(r3)				# 690
	mtspr	8, r31				# 690
	lfs	f1, 80(r3)				# 555
	fmul	f0, f0, f1				# 555
	lwz	r2, 12(r3)				# 690
	slwi	r5, r2, 2				# 690
	lwz	r6, 76(r3)				# 690
	stfsx	f0, r6, r5				# 690
beq_cont.15783:
	lwz	r2, 12(r3)				# 697
	lwz	r5, 44(r3)				# 697
	cmpw	cr7, r5, r2				# 697
	bne	cr7, beq_else.15784				# 697
	addi	r6, 0, 1
	b	beq_cont.15785				# 697
beq_else.15784:
	lwz	r6, 64(r3)				# 697
beq_cont.15785:
	addi	r7, 0, 4
	lfs	f0, 24(r3)				# 698
	stw	r6, 88(r3)				# 698
	mfspr	r31, 8				# 698
	mr	r2, r7				# 698
	stw	r31, 92(r3)				# 698
	addi	r3, r3, 96				# 698
	bl	min_caml_create_float_array				# 698
	addi	r3, r3, -96				# 698
	lwz	r31, 92(r3)				# 698
	mtspr	8, r31				# 698
	mr	r5, r4				# 701
	addi	r4, r4, 44				# 701
	stw	r2, 40(r5)				# 701
	lwz	r2, 76(r3)				# 701
	stw	r2, 36(r5)				# 701
	lwz	r6, 72(r3)				# 701
	stw	r6, 32(r5)				# 701
	lwz	r6, 68(r3)				# 701
	stw	r6, 28(r5)				# 701
	lwz	r6, 88(r3)				# 701
	stw	r6, 24(r5)				# 701
	lwz	r6, 60(r3)				# 701
	stw	r6, 20(r5)				# 701
	lwz	r6, 56(r3)				# 701
	stw	r6, 16(r5)				# 701
	lwz	r7, 52(r3)				# 701
	stw	r7, 12(r5)				# 701
	lwz	r8, 48(r3)				# 701
	stw	r8, 8(r5)				# 701
	lwz	r8, 44(r3)				# 701
	stw	r8, 4(r5)				# 701
	lwz	r9, 40(r3)				# 701
	stw	r9, 0(r5)				# 701
	lwz	r9, 8(r3)				# 709
	slwi	r9, r9, 2				# 709
	lwz	r10, 4(r3)				# 709
	stwx	r5, r10, r9				# 709
	lwz	r5, 32(r3)				# 711
	cmpw	cr7, r8, r5				# 711
	bne	cr7, beq_else.15786				# 711
	lwz	r5, 20(r3)				# 714
	slwi	r8, r5, 2				# 714
	lfsx	f0, r6, r8				# 714
	lfs	f1, 24(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.15788				# 111
	addi	r8, 0, 1
	b	beq_cont.15789				# 111
beq_else.15788:
	addi	r8, 0, 0
beq_cont.15789:
	cmpw	cr7, r8, r5				# 715
	bne	cr7, beq_else.15790				# 715
	cmpw	cr7, r8, r5				# 125
	bne	cr7, beq_else.15792				# 125
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.15794				# 113
	addi	r8, 0, 0
	b	ble_cont.15795				# 113
ble_else.15794:
	addi	r8, 0, 1
ble_cont.15795:
	cmpw	cr7, r8, r5				# 126
	bne	cr7, beq_else.15796				# 126
	lis	r31, ha16(l.11682)
	addi	r31, r31, lo16(l.11682)
	lfs	f2, 0(r31)				# 127
	b	beq_cont.15797				# 126
beq_else.15796:
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f2, 0(r31)				# 126
beq_cont.15797:
	b	beq_cont.15793				# 125
beq_else.15792:
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f2, 0(r31)				# 125
beq_cont.15793:
	fmul	f0, f0, f0				# 103
	fdiv	f0, f2, f0				# 715
	b	beq_cont.15791				# 715
beq_else.15790:
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f0, 0(r31)				# 715
beq_cont.15791:
	slwi	r8, r5, 2				# 715
	stfsx	f0, r6, r8				# 715
	lwz	r8, 16(r3)				# 716
	slwi	r9, r8, 2				# 716
	lfsx	f0, r6, r9				# 716
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.15798				# 111
	addi	r9, 0, 1
	b	beq_cont.15799				# 111
beq_else.15798:
	addi	r9, 0, 0
beq_cont.15799:
	cmpw	cr7, r9, r5				# 717
	bne	cr7, beq_else.15800				# 717
	cmpw	cr7, r9, r5				# 125
	bne	cr7, beq_else.15802				# 125
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.15804				# 113
	addi	r9, 0, 0
	b	ble_cont.15805				# 113
ble_else.15804:
	addi	r9, 0, 1
ble_cont.15805:
	cmpw	cr7, r9, r5				# 126
	bne	cr7, beq_else.15806				# 126
	lis	r31, ha16(l.11682)
	addi	r31, r31, lo16(l.11682)
	lfs	f2, 0(r31)				# 127
	b	beq_cont.15807				# 126
beq_else.15806:
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f2, 0(r31)				# 126
beq_cont.15807:
	b	beq_cont.15803				# 125
beq_else.15802:
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f2, 0(r31)				# 125
beq_cont.15803:
	fmul	f0, f0, f0				# 103
	fdiv	f0, f2, f0				# 717
	b	beq_cont.15801				# 717
beq_else.15800:
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f0, 0(r31)				# 717
beq_cont.15801:
	slwi	r8, r8, 2				# 717
	stfsx	f0, r6, r8				# 717
	lwz	r8, 12(r3)				# 718
	slwi	r9, r8, 2				# 718
	lfsx	f0, r6, r9				# 718
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.15808				# 111
	addi	r9, 0, 1
	b	beq_cont.15809				# 111
beq_else.15808:
	addi	r9, 0, 0
beq_cont.15809:
	cmpw	cr7, r9, r5				# 719
	bne	cr7, beq_else.15810				# 719
	cmpw	cr7, r9, r5				# 125
	bne	cr7, beq_else.15812				# 125
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.15814				# 113
	addi	r9, 0, 0
	b	ble_cont.15815				# 113
ble_else.15814:
	addi	r9, 0, 1
ble_cont.15815:
	cmpw	cr7, r9, r5				# 126
	bne	cr7, beq_else.15816				# 126
	lis	r31, ha16(l.11682)
	addi	r31, r31, lo16(l.11682)
	lfs	f1, 0(r31)				# 127
	b	beq_cont.15817				# 126
beq_else.15816:
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f1, 0(r31)				# 126
beq_cont.15817:
	b	beq_cont.15813				# 125
beq_else.15812:
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f1, 0(r31)				# 125
beq_cont.15813:
	fmul	f0, f0, f0				# 103
	fdiv	f0, f1, f0				# 719
	b	beq_cont.15811				# 719
beq_else.15810:
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f0, 0(r31)				# 719
beq_cont.15811:
	slwi	r8, r8, 2				# 719
	stfsx	f0, r6, r8				# 719
	b	beq_cont.15787				# 711
beq_else.15786:
	lwz	r5, 12(r3)				# 721
	cmpw	cr7, r8, r5				# 721
	bne	cr7, beq_else.15818				# 721
	lwz	r8, 20(r3)				# 723
	lwz	r9, 64(r3)				# 723
	cmpw	cr7, r9, r8				# 723
	bne	cr7, beq_else.15820				# 723
	addi	r9, 0, 1
	b	beq_cont.15821				# 723
beq_else.15820:
	addi	r9, 0, 0
beq_cont.15821:
	slwi	r10, r8, 2				# 186
	lfsx	f0, r6, r10				# 186
	fmul	f0, f0, f0				# 103
	lwz	r10, 16(r3)				# 186
	slwi	r11, r10, 2				# 186
	lfsx	f1, r6, r11				# 186
	fmul	f1, f1, f1				# 103
	fadd	f0, f0, f1				# 186
	slwi	r11, r5, 2				# 186
	lfsx	f1, r6, r11				# 186
	fmul	f1, f1, f1				# 103
	fadd	f0, f0, f1				# 186
	stw	r9, 92(r3)				# 186
	mfspr	r31, 8				# 186
	stw	r31, 96(r3)				# 186
	addi	r3, r3, 100				# 186
	bl	min_caml_sqrt				# 186
	addi	r3, r3, -100				# 186
	lwz	r31, 96(r3)				# 186
	mtspr	8, r31				# 186
	lfs	f1, 24(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.15822				# 111
	addi	r2, 0, 1
	b	beq_cont.15823				# 111
beq_else.15822:
	addi	r2, 0, 0
beq_cont.15823:
	lwz	r5, 20(r3)				# 187
	cmpw	cr7, r2, r5				# 187
	bne	cr7, beq_else.15824				# 187
	lwz	r2, 92(r3)				# 187
	cmpw	cr7, r2, r5				# 187
	bne	cr7, beq_else.15826				# 187
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f1, 0(r31)				# 187
	fdiv	f0, f1, f0				# 187
	b	beq_cont.15827				# 187
beq_else.15826:
	lis	r31, ha16(l.11682)
	addi	r31, r31, lo16(l.11682)
	lfs	f1, 0(r31)				# 187
	fdiv	f0, f1, f0				# 187
beq_cont.15827:
	b	beq_cont.15825				# 187
beq_else.15824:
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f0, 0(r31)				# 187
beq_cont.15825:
	slwi	r2, r5, 2				# 188
	lwz	r6, 56(r3)				# 188
	lfsx	f1, r6, r2				# 188
	fmul	f1, f1, f0				# 188
	slwi	r2, r5, 2				# 188
	stfsx	f1, r6, r2				# 188
	lwz	r2, 16(r3)				# 189
	slwi	r7, r2, 2				# 189
	lfsx	f1, r6, r7				# 189
	fmul	f1, f1, f0				# 189
	slwi	r2, r2, 2				# 189
	stfsx	f1, r6, r2				# 189
	lwz	r2, 12(r3)				# 190
	slwi	r7, r2, 2				# 190
	lfsx	f1, r6, r7				# 190
	fmul	f0, f1, f0				# 190
	slwi	r2, r2, 2				# 190
	stfsx	f0, r6, r2				# 190
	b	beq_cont.15819				# 721
beq_else.15818:
beq_cont.15819:
beq_cont.15787:
	lwz	r2, 20(r3)				# 727
	lwz	r5, 52(r3)				# 727
	cmpw	cr7, r5, r2				# 727
	bne	cr7, beq_else.15828				# 727
	b	beq_cont.15829				# 727
beq_else.15828:
	lwz	r5, 76(r3)				# 728
	lwz	r1, 0(r3)				# 728
	mfspr	r31, 8				# 728
	mr	r2, r6				# 728
	stw	r31, 96(r3)				# 728
	addi	r3, r3, 100				# 728
	lwz	r31, 0(r1)				# 728
	mtspr	9, r31				# 728
	bctr				# 728
	addi	r3, r3, -100				# 728
	lwz	r31, 96(r3)				# 728
	mtspr	8, r31				# 728
beq_cont.15829:
	addi	r2, 0, 1
	blr
read_object.2618:
	lwz	r5, 20(r1)				# 738
	lwz	r6, 16(r1)				# 738
	lwz	r7, 12(r1)				# 738
	lwz	r8, 8(r1)				# 738
	lwz	r9, 4(r1)				# 738
	cmpw	cr7, r7, r2				# 739
	bgt	cr7, ble_else.15830				# 739
	blr
ble_else.15830:
	stw	r1, 0(r3)				# 740
	stw	r9, 4(r3)				# 740
	stw	r6, 8(r3)				# 740
	stw	r2, 12(r3)				# 740
	stw	r8, 16(r3)				# 740
	mfspr	r31, 8				# 740
	mr	r1, r5				# 740
	stw	r31, 20(r3)				# 740
	addi	r3, r3, 24				# 740
	lwz	r31, 0(r1)				# 740
	mtspr	9, r31				# 740
	bctr				# 740
	addi	r3, r3, -24				# 740
	lwz	r31, 20(r3)				# 740
	mtspr	8, r31				# 740
	lwz	r5, 16(r3)				# 740
	cmpw	cr7, r2, r5				# 740
	bne	cr7, beq_else.15832				# 740
	slwi	r2, r5, 2				# 743
	lwz	r5, 8(r3)				# 743
	lwz	r6, 12(r3)				# 743
	stwx	r6, r5, r2				# 743
	blr
beq_else.15832:
	lwz	r2, 4(r3)				# 741
	lwz	r5, 12(r3)				# 741
	add	r2, r5, r2				# 741
	lwz	r1, 0(r3)				# 741
	lwz	r30, 0(r1)				# 741
	mtspr	9, r30
	bctr				# 741
read_net_item.2622:
	lwz	r5, 8(r1)				# 754
	lwz	r6, 4(r1)				# 754
	stw	r1, 0(r3)				# 755
	stw	r6, 4(r3)				# 755
	stw	r2, 8(r3)				# 755
	stw	r5, 12(r3)				# 755
	mfspr	r31, 8				# 755
	stw	r31, 16(r3)				# 755
	addi	r3, r3, 20				# 755
	bl	min_caml_read_int				# 755
	addi	r3, r3, -20				# 755
	lwz	r31, 16(r3)				# 755
	mtspr	8, r31				# 755
	lwz	r5, 12(r3)				# 756
	cmpw	cr7, r2, r5				# 756
	bne	cr7, beq_else.15834				# 756
	lwz	r2, 4(r3)				# 756
	lwz	r6, 8(r3)				# 756
	add	r2, r6, r2				# 756
	b	min_caml_create_array				# 756
beq_else.15834:
	lwz	r5, 4(r3)				# 758
	lwz	r6, 8(r3)				# 758
	add	r5, r6, r5				# 758
	lwz	r1, 0(r3)				# 758
	stw	r2, 16(r3)				# 758
	mfspr	r31, 8				# 758
	mr	r2, r5				# 758
	stw	r31, 20(r3)				# 758
	addi	r3, r3, 24				# 758
	lwz	r31, 0(r1)				# 758
	mtspr	9, r31				# 758
	bctr				# 758
	addi	r3, r3, -24				# 758
	lwz	r31, 20(r3)				# 758
	mtspr	8, r31				# 758
	lwz	r5, 8(r3)				# 759
	slwi	r5, r5, 2				# 759
	lwz	r6, 16(r3)				# 759
	stwx	r6, r2, r5				# 759
	blr
read_or_network.2624:
	lwz	r5, 16(r1)				# 762
	lwz	r6, 12(r1)				# 762
	lwz	r7, 8(r1)				# 762
	lwz	r8, 4(r1)				# 762
	stw	r1, 0(r3)				# 763
	stw	r8, 4(r3)				# 763
	stw	r2, 8(r3)				# 763
	stw	r6, 12(r3)				# 763
	stw	r7, 16(r3)				# 763
	mfspr	r31, 8				# 763
	mr	r2, r7				# 763
	mr	r1, r5				# 763
	stw	r31, 20(r3)				# 763
	addi	r3, r3, 24				# 763
	lwz	r31, 0(r1)				# 763
	mtspr	9, r31				# 763
	bctr				# 763
	addi	r3, r3, -24				# 763
	lwz	r31, 20(r3)				# 763
	mr	r5, r2				# 763
	mtspr	8, r31				# 763
	lwz	r2, 16(r3)				# 764
	slwi	r2, r2, 2				# 764
	lwzx	r2, r5, r2				# 764
	lwz	r6, 12(r3)				# 764
	cmpw	cr7, r2, r6				# 764
	bne	cr7, beq_else.15835				# 764
	lwz	r2, 4(r3)				# 765
	lwz	r6, 8(r3)				# 765
	add	r2, r6, r2				# 765
	b	min_caml_create_array				# 765
beq_else.15835:
	lwz	r2, 4(r3)				# 767
	lwz	r6, 8(r3)				# 767
	add	r2, r6, r2				# 767
	lwz	r1, 0(r3)				# 767
	stw	r5, 20(r3)				# 767
	mfspr	r31, 8				# 767
	stw	r31, 24(r3)				# 767
	addi	r3, r3, 28				# 767
	lwz	r31, 0(r1)				# 767
	mtspr	9, r31				# 767
	bctr				# 767
	addi	r3, r3, -28				# 767
	lwz	r31, 24(r3)				# 767
	mtspr	8, r31				# 767
	lwz	r5, 8(r3)				# 768
	slwi	r5, r5, 2				# 768
	lwz	r6, 20(r3)				# 768
	stwx	r6, r2, r5				# 768
	blr
read_and_network.2626:
	lwz	r5, 20(r1)				# 771
	lwz	r6, 16(r1)				# 771
	lwz	r7, 12(r1)				# 771
	lwz	r8, 8(r1)				# 771
	lwz	r9, 4(r1)				# 771
	stw	r1, 0(r3)				# 772
	stw	r9, 4(r3)				# 772
	stw	r6, 8(r3)				# 772
	stw	r2, 12(r3)				# 772
	stw	r7, 16(r3)				# 772
	stw	r8, 20(r3)				# 772
	mfspr	r31, 8				# 772
	mr	r2, r8				# 772
	mr	r1, r5				# 772
	stw	r31, 24(r3)				# 772
	addi	r3, r3, 28				# 772
	lwz	r31, 0(r1)				# 772
	mtspr	9, r31				# 772
	bctr				# 772
	addi	r3, r3, -28				# 772
	lwz	r31, 24(r3)				# 772
	mtspr	8, r31				# 772
	lwz	r5, 20(r3)				# 773
	slwi	r5, r5, 2				# 773
	lwzx	r5, r2, r5				# 773
	lwz	r6, 16(r3)				# 773
	cmpw	cr7, r5, r6				# 773
	bne	cr7, beq_else.15836				# 773
	blr
beq_else.15836:
	lwz	r5, 12(r3)				# 775
	slwi	r6, r5, 2				# 775
	lwz	r7, 8(r3)				# 775
	stwx	r2, r7, r6				# 775
	lwz	r2, 4(r3)				# 776
	add	r2, r5, r2				# 776
	lwz	r1, 0(r3)				# 776
	lwz	r30, 0(r1)				# 776
	mtspr	9, r30
	bctr				# 776
read_parameter.2628:
	lwz	r2, 60(r1)				# 780
	lwz	r5, 56(r1)				# 780
	lwz	r6, 52(r1)				# 780
	lwz	r7, 48(r1)				# 780
	lwz	r8, 44(r1)				# 780
	lwz	r9, 40(r1)				# 780
	lwz	r10, 36(r1)				# 780
	lwz	r11, 32(r1)				# 780
	lwz	r12, 28(r1)				# 780
	lwz	r13, 24(r1)				# 780
	lwz	r14, 20(r1)				# 780
	lwz	r15, 16(r1)				# 780
	lwz	r16, 12(r1)				# 780
	lwz	r17, 8(r1)				# 780
	lfs	f0, 4(r1)				# 780
	stw	r12, 0(r3)				# 562
	stw	r9, 4(r3)				# 562
	stw	r11, 8(r3)				# 562
	stw	r10, 12(r3)				# 562
	stw	r14, 16(r3)				# 562
	stw	r13, 20(r3)				# 562
	stw	r2, 24(r3)				# 562
	stw	r6, 28(r3)				# 562
	stfs	f0, 32(r3)				# 562
	stw	r7, 40(r3)				# 562
	stw	r5, 44(r3)				# 562
	stw	r15, 48(r3)				# 562
	stw	r17, 52(r3)				# 562
	stw	r8, 56(r3)				# 562
	stw	r16, 60(r3)				# 562
	mfspr	r31, 8				# 562
	stw	r31, 64(r3)				# 562
	addi	r3, r3, 68				# 562
	bl	min_caml_read_float				# 562
	addi	r3, r3, -68				# 562
	lwz	r31, 64(r3)				# 562
	mtspr	8, r31				# 562
	lwz	r2, 60(r3)				# 562
	slwi	r5, r2, 2				# 562
	lwz	r6, 56(r3)				# 562
	stfsx	f0, r6, r5				# 562
	mfspr	r31, 8				# 563
	stw	r31, 64(r3)				# 563
	addi	r3, r3, 68				# 563
	bl	min_caml_read_float				# 563
	addi	r3, r3, -68				# 563
	lwz	r31, 64(r3)				# 563
	mtspr	8, r31				# 563
	lwz	r2, 52(r3)				# 563
	slwi	r5, r2, 2				# 563
	lwz	r6, 56(r3)				# 563
	stfsx	f0, r6, r5				# 563
	mfspr	r31, 8				# 564
	stw	r31, 64(r3)				# 564
	addi	r3, r3, 68				# 564
	bl	min_caml_read_float				# 564
	addi	r3, r3, -68				# 564
	lwz	r31, 64(r3)				# 564
	mtspr	8, r31				# 564
	lwz	r2, 48(r3)				# 564
	slwi	r5, r2, 2				# 564
	lwz	r6, 56(r3)				# 564
	stfsx	f0, r6, r5				# 564
	mfspr	r31, 8				# 566
	stw	r31, 64(r3)				# 566
	addi	r3, r3, 68				# 566
	bl	min_caml_read_float				# 566
	addi	r3, r3, -68				# 566
	lwz	r31, 64(r3)				# 566
	mtspr	8, r31				# 566
	lis	r31, ha16(l.11661)
	addi	r31, r31, lo16(l.11661)
	lfs	f1, 0(r31)				# 555
	fmul	f0, f0, f1				# 555
	stfs	f1, 64(r3)				# 567
	stfs	f0, 72(r3)				# 567
	mfspr	r31, 8				# 567
	stw	r31, 80(r3)				# 567
	addi	r3, r3, 84				# 567
	bl	min_caml_cos				# 567
	addi	r3, r3, -84				# 567
	lwz	r31, 80(r3)				# 567
	mtspr	8, r31				# 567
	lfs	f1, 72(r3)				# 568
	stfs	f0, 80(r3)				# 568
	mfspr	r31, 8				# 568
	fmr	f0, f1				# 568
	stw	r31, 88(r3)				# 568
	addi	r3, r3, 92				# 568
	bl	min_caml_sin				# 568
	addi	r3, r3, -92				# 568
	lwz	r31, 88(r3)				# 568
	mtspr	8, r31				# 568
	stfs	f0, 88(r3)				# 569
	mfspr	r31, 8				# 569
	stw	r31, 96(r3)				# 569
	addi	r3, r3, 100				# 569
	bl	min_caml_read_float				# 569
	addi	r3, r3, -100				# 569
	lwz	r31, 96(r3)				# 569
	mtspr	8, r31				# 569
	lfs	f1, 64(r3)				# 555
	fmul	f0, f0, f1				# 555
	stfs	f0, 96(r3)				# 570
	mfspr	r31, 8				# 570
	stw	r31, 104(r3)				# 570
	addi	r3, r3, 108				# 570
	bl	min_caml_cos				# 570
	addi	r3, r3, -108				# 570
	lwz	r31, 104(r3)				# 570
	mtspr	8, r31				# 570
	lfs	f1, 96(r3)				# 571
	stfs	f0, 104(r3)				# 571
	mfspr	r31, 8				# 571
	fmr	f0, f1				# 571
	stw	r31, 112(r3)				# 571
	addi	r3, r3, 116				# 571
	bl	min_caml_sin				# 571
	addi	r3, r3, -116				# 571
	lwz	r31, 112(r3)				# 571
	mtspr	8, r31				# 571
	lfs	f1, 80(r3)				# 573
	fmul	f2, f1, f0				# 573
	lis	r31, ha16(l.11705)
	addi	r31, r31, lo16(l.11705)
	lfs	f3, 0(r31)				# 573
	fmul	f2, f2, f3				# 573
	lwz	r2, 60(r3)				# 573
	slwi	r5, r2, 2				# 573
	lwz	r6, 44(r3)				# 573
	stfsx	f2, r6, r5				# 573
	lis	r31, ha16(l.11707)
	addi	r31, r31, lo16(l.11707)
	lfs	f2, 0(r31)				# 574
	lfs	f4, 88(r3)				# 574
	fmul	f2, f4, f2				# 574
	lwz	r5, 52(r3)				# 574
	slwi	r7, r5, 2				# 574
	stfsx	f2, r6, r7				# 574
	lfs	f2, 104(r3)				# 575
	fmul	f5, f1, f2				# 575
	fmul	f3, f5, f3				# 575
	lwz	r7, 48(r3)				# 575
	slwi	r8, r7, 2				# 575
	stfsx	f3, r6, r8				# 575
	slwi	r8, r2, 2				# 577
	lwz	r9, 40(r3)				# 577
	stfsx	f2, r9, r8				# 577
	slwi	r8, r5, 2				# 578
	lfs	f3, 32(r3)				# 578
	stfsx	f3, r9, r8				# 578
	fneg	f3, f0				# 107
	slwi	r8, r7, 2				# 579
	stfsx	f3, r9, r8				# 579
	fneg	f3, f4				# 107
	fmul	f0, f3, f0				# 581
	slwi	r8, r2, 2				# 581
	lwz	r9, 28(r3)				# 581
	stfsx	f0, r9, r8				# 581
	fneg	f0, f1				# 107
	slwi	r8, r5, 2				# 582
	stfsx	f0, r9, r8				# 582
	fmul	f0, f3, f2				# 583
	slwi	r8, r7, 2				# 583
	stfsx	f0, r9, r8				# 583
	slwi	r8, r2, 2				# 585
	lwz	r9, 56(r3)				# 585
	lfsx	f0, r9, r8				# 585
	slwi	r8, r2, 2				# 585
	lfsx	f1, r6, r8				# 585
	fsub	f0, f0, f1				# 585
	slwi	r8, r2, 2				# 585
	lwz	r10, 24(r3)				# 585
	stfsx	f0, r10, r8				# 585
	slwi	r8, r5, 2				# 586
	lfsx	f0, r9, r8				# 586
	slwi	r8, r5, 2				# 586
	lfsx	f1, r6, r8				# 586
	fsub	f0, f0, f1				# 586
	slwi	r8, r5, 2				# 586
	stfsx	f0, r10, r8				# 586
	slwi	r8, r7, 2				# 587
	lfsx	f0, r9, r8				# 587
	slwi	r8, r7, 2				# 587
	lfsx	f1, r6, r8				# 587
	fsub	f0, f0, f1				# 587
	slwi	r6, r7, 2				# 587
	stfsx	f0, r10, r6				# 587
	mfspr	r31, 8				# 594
	stw	r31, 112(r3)				# 594
	addi	r3, r3, 116				# 594
	bl	min_caml_read_int				# 594
	addi	r3, r3, -116				# 594
	lwz	r31, 112(r3)				# 594
	mtspr	8, r31				# 594
	mfspr	r31, 8				# 597
	stw	r31, 112(r3)				# 597
	addi	r3, r3, 116				# 597
	bl	min_caml_read_float				# 597
	addi	r3, r3, -116				# 597
	lwz	r31, 112(r3)				# 597
	mtspr	8, r31				# 597
	lfs	f1, 64(r3)				# 555
	fmul	f0, f0, f1				# 555
	stfs	f0, 112(r3)				# 598
	mfspr	r31, 8				# 598
	stw	r31, 120(r3)				# 598
	addi	r3, r3, 124				# 598
	bl	min_caml_sin				# 598
	addi	r3, r3, -124				# 598
	lwz	r31, 120(r3)				# 598
	mtspr	8, r31				# 598
	fneg	f0, f0				# 107
	lwz	r2, 52(r3)				# 599
	slwi	r2, r2, 2				# 599
	lwz	r5, 20(r3)				# 599
	stfsx	f0, r5, r2				# 599
	mfspr	r31, 8				# 600
	stw	r31, 120(r3)				# 600
	addi	r3, r3, 124				# 600
	bl	min_caml_read_float				# 600
	addi	r3, r3, -124				# 600
	lwz	r31, 120(r3)				# 600
	mtspr	8, r31				# 600
	lfs	f1, 64(r3)				# 555
	fmul	f0, f0, f1				# 555
	lfs	f1, 112(r3)				# 601
	stfs	f0, 120(r3)				# 601
	mfspr	r31, 8				# 601
	fmr	f0, f1				# 601
	stw	r31, 128(r3)				# 601
	addi	r3, r3, 132				# 601
	bl	min_caml_cos				# 601
	addi	r3, r3, -132				# 601
	lwz	r31, 128(r3)				# 601
	mtspr	8, r31				# 601
	lfs	f1, 120(r3)				# 602
	stfs	f0, 128(r3)				# 602
	mfspr	r31, 8				# 602
	fmr	f0, f1				# 602
	stw	r31, 136(r3)				# 602
	addi	r3, r3, 140				# 602
	bl	min_caml_sin				# 602
	addi	r3, r3, -140				# 602
	lwz	r31, 136(r3)				# 602
	mtspr	8, r31				# 602
	lfs	f1, 128(r3)				# 603
	fmul	f0, f1, f0				# 603
	lwz	r2, 60(r3)				# 603
	slwi	r5, r2, 2				# 603
	lwz	r6, 20(r3)				# 603
	stfsx	f0, r6, r5				# 603
	lfs	f0, 120(r3)				# 604
	mfspr	r31, 8				# 604
	stw	r31, 136(r3)				# 604
	addi	r3, r3, 140				# 604
	bl	min_caml_cos				# 604
	addi	r3, r3, -140				# 604
	lwz	r31, 136(r3)				# 604
	mtspr	8, r31				# 604
	lfs	f1, 128(r3)				# 605
	fmul	f0, f1, f0				# 605
	lwz	r2, 48(r3)				# 605
	slwi	r2, r2, 2				# 605
	lwz	r5, 20(r3)				# 605
	stfsx	f0, r5, r2				# 605
	mfspr	r31, 8				# 606
	stw	r31, 136(r3)				# 606
	addi	r3, r3, 140				# 606
	bl	min_caml_read_float				# 606
	addi	r3, r3, -140				# 606
	lwz	r31, 136(r3)				# 606
	mtspr	8, r31				# 606
	lwz	r2, 60(r3)				# 606
	slwi	r5, r2, 2				# 606
	lwz	r6, 16(r3)				# 606
	stfsx	f0, r6, r5				# 606
	lwz	r1, 12(r3)				# 748
	mfspr	r31, 8				# 748
	stw	r31, 136(r3)				# 748
	addi	r3, r3, 140				# 748
	lwz	r31, 0(r1)				# 748
	mtspr	9, r31				# 748
	bctr				# 748
	addi	r3, r3, -140				# 748
	lwz	r31, 136(r3)				# 748
	mtspr	8, r31				# 748
	lwz	r2, 60(r3)				# 785
	lwz	r1, 8(r3)				# 785
	mfspr	r31, 8				# 785
	stw	r31, 136(r3)				# 785
	addi	r3, r3, 140				# 785
	lwz	r31, 0(r1)				# 785
	mtspr	9, r31				# 785
	bctr				# 785
	addi	r3, r3, -140				# 785
	lwz	r31, 136(r3)				# 785
	mtspr	8, r31				# 785
	lwz	r2, 60(r3)				# 786
	lwz	r1, 4(r3)				# 786
	mfspr	r31, 8				# 786
	stw	r31, 136(r3)				# 786
	addi	r3, r3, 140				# 786
	lwz	r31, 0(r1)				# 786
	mtspr	9, r31				# 786
	bctr				# 786
	addi	r3, r3, -140				# 786
	lwz	r31, 136(r3)				# 786
	mtspr	8, r31				# 786
	lwz	r5, 60(r3)				# 786
	slwi	r5, r5, 2				# 786
	lwz	r6, 0(r3)				# 786
	stwx	r2, r6, r5				# 786
	blr
solver_rect.2639:
	lwz	r6, 20(r1)				# 811
	lwz	r7, 16(r1)				# 811
	lwz	r8, 12(r1)				# 811
	lwz	r9, 8(r1)				# 811
	lfs	f3, 4(r1)				# 811
	slwi	r10, r8, 2				# 797
	lfsx	f4, r5, r10				# 797
	fcmpu	cr7, f4, f3				# 111
	bne	cr7, beq_else.15839				# 111
	addi	r10, 0, 1
	b	beq_cont.15840				# 111
beq_else.15839:
	addi	r10, 0, 0
beq_cont.15840:
	stw	r6, 0(r3)				# 797
	stfs	f0, 8(r3)				# 797
	stfs	f2, 16(r3)				# 797
	stw	r7, 24(r3)				# 797
	stfs	f1, 32(r3)				# 797
	stw	r2, 40(r3)				# 797
	stfs	f3, 48(r3)				# 797
	stw	r5, 56(r3)				# 797
	stw	r9, 60(r3)				# 797
	stw	r8, 64(r3)				# 797
	cmpw	cr7, r10, r8				# 797
	bne	cr7, beq_else.15844				# 797
	lwz	r10, 16(r2)				# 320
	lwz	r11, 24(r2)				# 272
	slwi	r12, r8, 2				# 799
	lfsx	f4, r5, r12				# 799
	fcmpu	cr7, f3, f4				# 115
	bgt	cr7, ble_else.15846				# 115
	addi	r12, 0, 0
	b	ble_cont.15847				# 115
ble_else.15846:
	addi	r12, 0, 1
ble_cont.15847:
	cmpw	cr7, r11, r8				# 119
	bne	cr7, beq_else.15848				# 119
	mr	r11, r12				# 119
	b	beq_cont.15849				# 119
beq_else.15848:
	cmpw	cr7, r12, r8				# 119
	bne	cr7, beq_else.15850				# 119
	addi	r11, 0, 1
	b	beq_cont.15851				# 119
beq_else.15850:
	addi	r11, 0, 0
beq_cont.15851:
beq_cont.15849:
	slwi	r12, r8, 2				# 799
	lfsx	f4, r10, r12				# 799
	cmpw	cr7, r11, r8				# 132
	bne	cr7, beq_else.15852				# 132
	fneg	f4, f4				# 107
	b	beq_cont.15853				# 132
beq_else.15852:
beq_cont.15853:
	fsub	f4, f4, f0				# 801
	slwi	r11, r8, 2				# 801
	lfsx	f5, r5, r11				# 801
	fdiv	f4, f4, f5				# 801
	slwi	r11, r9, 2				# 802
	lfsx	f5, r5, r11				# 802
	fmul	f5, f4, f5				# 802
	fadd	f5, f5, f1				# 802
	stfs	f4, 72(r3)				# 802
	stw	r10, 80(r3)				# 802
	mfspr	r31, 8				# 802
	fmr	f0, f5				# 802
	stw	r31, 84(r3)				# 802
	addi	r3, r3, 88				# 802
	bl	min_caml_fabs				# 802
	addi	r3, r3, -88				# 802
	lwz	r31, 84(r3)				# 802
	mtspr	8, r31				# 802
	lwz	r2, 60(r3)				# 802
	slwi	r5, r2, 2				# 802
	lwz	r6, 80(r3)				# 802
	lfsx	f1, r6, r5				# 802
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15855				# 109
	addi	r5, 0, 0
	b	ble_cont.15856				# 109
ble_else.15855:
	addi	r5, 0, 1
ble_cont.15856:
	lwz	r7, 64(r3)				# 802
	cmpw	cr7, r5, r7				# 802
	bne	cr7, beq_else.15857				# 802
	addi	r2, 0, 0
	b	beq_cont.15858				# 802
beq_else.15857:
	lwz	r5, 24(r3)				# 803
	slwi	r8, r5, 2				# 803
	lwz	r9, 56(r3)				# 803
	lfsx	f0, r9, r8				# 803
	lfs	f1, 72(r3)				# 803
	fmul	f0, f1, f0				# 803
	lfs	f2, 16(r3)				# 803
	fadd	f0, f0, f2				# 803
	mfspr	r31, 8				# 803
	stw	r31, 84(r3)				# 803
	addi	r3, r3, 88				# 803
	bl	min_caml_fabs				# 803
	addi	r3, r3, -88				# 803
	lwz	r31, 84(r3)				# 803
	mtspr	8, r31				# 803
	lwz	r2, 24(r3)				# 803
	slwi	r5, r2, 2				# 803
	lwz	r6, 80(r3)				# 803
	lfsx	f1, r6, r5				# 803
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15859				# 109
	addi	r5, 0, 0
	b	ble_cont.15860				# 109
ble_else.15859:
	addi	r5, 0, 1
ble_cont.15860:
	lwz	r6, 64(r3)				# 803
	cmpw	cr7, r5, r6				# 803
	bne	cr7, beq_else.15861				# 803
	addi	r2, 0, 0
	b	beq_cont.15862				# 803
beq_else.15861:
	slwi	r5, r6, 2				# 804
	lwz	r7, 0(r3)				# 804
	lfs	f0, 72(r3)				# 804
	stfsx	f0, r7, r5				# 804
	addi	r2, 0, 1
beq_cont.15862:
beq_cont.15858:
	b	beq_cont.15845				# 797
beq_else.15844:
	addi	r2, 0, 0
beq_cont.15845:
	lwz	r5, 64(r3)				# 812
	cmpw	cr7, r2, r5				# 812
	bne	cr7, beq_else.15863				# 812
	lwz	r2, 60(r3)				# 797
	slwi	r6, r2, 2				# 797
	lwz	r7, 56(r3)				# 797
	lfsx	f0, r7, r6				# 797
	lfs	f1, 48(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.15864				# 111
	addi	r6, 0, 1
	b	beq_cont.15865				# 111
beq_else.15864:
	addi	r6, 0, 0
beq_cont.15865:
	cmpw	cr7, r6, r5				# 797
	bne	cr7, beq_else.15866				# 797
	lwz	r6, 40(r3)				# 320
	lwz	r8, 16(r6)				# 320
	lwz	r9, 24(r6)				# 272
	slwi	r10, r2, 2				# 799
	lfsx	f0, r7, r10				# 799
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.15868				# 115
	addi	r10, 0, 0
	b	ble_cont.15869				# 115
ble_else.15868:
	addi	r10, 0, 1
ble_cont.15869:
	cmpw	cr7, r9, r5				# 119
	bne	cr7, beq_else.15870				# 119
	mr	r9, r10				# 119
	b	beq_cont.15871				# 119
beq_else.15870:
	cmpw	cr7, r10, r5				# 119
	bne	cr7, beq_else.15872				# 119
	addi	r9, 0, 1
	b	beq_cont.15873				# 119
beq_else.15872:
	addi	r9, 0, 0
beq_cont.15873:
beq_cont.15871:
	slwi	r10, r2, 2				# 799
	lfsx	f0, r8, r10				# 799
	cmpw	cr7, r9, r5				# 132
	bne	cr7, beq_else.15874				# 132
	fneg	f0, f0				# 107
	b	beq_cont.15875				# 132
beq_else.15874:
beq_cont.15875:
	lfs	f2, 32(r3)				# 801
	fsub	f0, f0, f2				# 801
	slwi	r9, r2, 2				# 801
	lfsx	f3, r7, r9				# 801
	fdiv	f0, f0, f3				# 801
	lwz	r9, 24(r3)				# 802
	slwi	r10, r9, 2				# 802
	lfsx	f3, r7, r10				# 802
	fmul	f3, f0, f3				# 802
	lfs	f4, 16(r3)				# 802
	fadd	f3, f3, f4				# 802
	stfs	f0, 88(r3)				# 802
	stw	r8, 96(r3)				# 802
	mfspr	r31, 8				# 802
	fmr	f0, f3				# 802
	stw	r31, 100(r3)				# 802
	addi	r3, r3, 104				# 802
	bl	min_caml_fabs				# 802
	addi	r3, r3, -104				# 802
	lwz	r31, 100(r3)				# 802
	mtspr	8, r31				# 802
	lwz	r2, 24(r3)				# 802
	slwi	r5, r2, 2				# 802
	lwz	r6, 96(r3)				# 802
	lfsx	f1, r6, r5				# 802
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15877				# 109
	addi	r5, 0, 0
	b	ble_cont.15878				# 109
ble_else.15877:
	addi	r5, 0, 1
ble_cont.15878:
	lwz	r7, 64(r3)				# 802
	cmpw	cr7, r5, r7				# 802
	bne	cr7, beq_else.15879				# 802
	addi	r2, 0, 0
	b	beq_cont.15880				# 802
beq_else.15879:
	slwi	r5, r7, 2				# 803
	lwz	r8, 56(r3)				# 803
	lfsx	f0, r8, r5				# 803
	lfs	f1, 88(r3)				# 803
	fmul	f0, f1, f0				# 803
	lfs	f2, 8(r3)				# 803
	fadd	f0, f0, f2				# 803
	mfspr	r31, 8				# 803
	stw	r31, 100(r3)				# 803
	addi	r3, r3, 104				# 803
	bl	min_caml_fabs				# 803
	addi	r3, r3, -104				# 803
	lwz	r31, 100(r3)				# 803
	mtspr	8, r31				# 803
	lwz	r2, 64(r3)				# 803
	slwi	r5, r2, 2				# 803
	lwz	r6, 96(r3)				# 803
	lfsx	f1, r6, r5				# 803
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15881				# 109
	addi	r5, 0, 0
	b	ble_cont.15882				# 109
ble_else.15881:
	addi	r5, 0, 1
ble_cont.15882:
	cmpw	cr7, r5, r2				# 803
	bne	cr7, beq_else.15883				# 803
	addi	r2, 0, 0
	b	beq_cont.15884				# 803
beq_else.15883:
	slwi	r5, r2, 2				# 804
	lwz	r6, 0(r3)				# 804
	lfs	f0, 88(r3)				# 804
	stfsx	f0, r6, r5				# 804
	addi	r2, 0, 1
beq_cont.15884:
beq_cont.15880:
	b	beq_cont.15867				# 797
beq_else.15866:
	addi	r2, 0, 0
beq_cont.15867:
	lwz	r5, 64(r3)				# 813
	cmpw	cr7, r2, r5				# 813
	bne	cr7, beq_else.15885				# 813
	lwz	r2, 24(r3)				# 797
	slwi	r6, r2, 2				# 797
	lwz	r7, 56(r3)				# 797
	lfsx	f0, r7, r6				# 797
	lfs	f1, 48(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.15886				# 111
	addi	r6, 0, 1
	b	beq_cont.15887				# 111
beq_else.15886:
	addi	r6, 0, 0
beq_cont.15887:
	cmpw	cr7, r6, r5				# 797
	bne	cr7, beq_else.15888				# 797
	lwz	r6, 40(r3)				# 320
	lwz	r8, 16(r6)				# 320
	lwz	r6, 24(r6)				# 272
	slwi	r9, r2, 2				# 799
	lfsx	f0, r7, r9				# 799
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.15890				# 115
	addi	r9, 0, 0
	b	ble_cont.15891				# 115
ble_else.15890:
	addi	r9, 0, 1
ble_cont.15891:
	cmpw	cr7, r6, r5				# 119
	bne	cr7, beq_else.15892				# 119
	mr	r6, r9				# 119
	b	beq_cont.15893				# 119
beq_else.15892:
	cmpw	cr7, r9, r5				# 119
	bne	cr7, beq_else.15894				# 119
	addi	r6, 0, 1
	b	beq_cont.15895				# 119
beq_else.15894:
	addi	r6, 0, 0
beq_cont.15895:
beq_cont.15893:
	slwi	r9, r2, 2				# 799
	lfsx	f0, r8, r9				# 799
	cmpw	cr7, r6, r5				# 132
	bne	cr7, beq_else.15896				# 132
	fneg	f0, f0				# 107
	b	beq_cont.15897				# 132
beq_else.15896:
beq_cont.15897:
	lfs	f1, 16(r3)				# 801
	fsub	f0, f0, f1				# 801
	slwi	r2, r2, 2				# 801
	lfsx	f1, r7, r2				# 801
	fdiv	f0, f0, f1				# 801
	slwi	r2, r5, 2				# 802
	lfsx	f1, r7, r2				# 802
	fmul	f1, f0, f1				# 802
	lfs	f2, 8(r3)				# 802
	fadd	f1, f1, f2				# 802
	stfs	f0, 104(r3)				# 802
	stw	r8, 112(r3)				# 802
	mfspr	r31, 8				# 802
	fmr	f0, f1				# 802
	stw	r31, 116(r3)				# 802
	addi	r3, r3, 120				# 802
	bl	min_caml_fabs				# 802
	addi	r3, r3, -120				# 802
	lwz	r31, 116(r3)				# 802
	mtspr	8, r31				# 802
	lwz	r2, 64(r3)				# 802
	slwi	r5, r2, 2				# 802
	lwz	r6, 112(r3)				# 802
	lfsx	f1, r6, r5				# 802
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15899				# 109
	addi	r5, 0, 0
	b	ble_cont.15900				# 109
ble_else.15899:
	addi	r5, 0, 1
ble_cont.15900:
	cmpw	cr7, r5, r2				# 802
	bne	cr7, beq_else.15901				# 802
	addi	r2, 0, 0
	b	beq_cont.15902				# 802
beq_else.15901:
	lwz	r5, 60(r3)				# 803
	slwi	r7, r5, 2				# 803
	lwz	r8, 56(r3)				# 803
	lfsx	f0, r8, r7				# 803
	lfs	f1, 104(r3)				# 803
	fmul	f0, f1, f0				# 803
	lfs	f2, 32(r3)				# 803
	fadd	f0, f0, f2				# 803
	mfspr	r31, 8				# 803
	stw	r31, 116(r3)				# 803
	addi	r3, r3, 120				# 803
	bl	min_caml_fabs				# 803
	addi	r3, r3, -120				# 803
	lwz	r31, 116(r3)				# 803
	mtspr	8, r31				# 803
	lwz	r2, 60(r3)				# 803
	slwi	r2, r2, 2				# 803
	lwz	r5, 112(r3)				# 803
	lfsx	f1, r5, r2				# 803
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15903				# 109
	addi	r2, 0, 0
	b	ble_cont.15904				# 109
ble_else.15903:
	addi	r2, 0, 1
ble_cont.15904:
	lwz	r5, 64(r3)				# 803
	cmpw	cr7, r2, r5				# 803
	bne	cr7, beq_else.15905				# 803
	addi	r2, 0, 0
	b	beq_cont.15906				# 803
beq_else.15905:
	slwi	r2, r5, 2				# 804
	lwz	r6, 0(r3)				# 804
	lfs	f0, 104(r3)				# 804
	stfsx	f0, r6, r2				# 804
	addi	r2, 0, 1
beq_cont.15906:
beq_cont.15902:
	b	beq_cont.15889				# 797
beq_else.15888:
	addi	r2, 0, 0
beq_cont.15889:
	lwz	r5, 64(r3)				# 814
	cmpw	cr7, r2, r5				# 814
	bne	cr7, beq_else.15907				# 814
	addi	r2, 0, 0
	blr
beq_else.15907:
	addi	r2, 0, 3
	blr
beq_else.15885:
	addi	r2, 0, 2
	blr
beq_else.15863:
	addi	r2, 0, 1
	blr
solver_second.2664:
	lwz	r6, 24(r1)				# 868
	lwz	r7, 20(r1)				# 868
	lwz	r8, 16(r1)				# 868
	lwz	r9, 12(r1)				# 868
	lwz	r10, 8(r1)				# 868
	lfs	f3, 4(r1)				# 868
	slwi	r11, r9, 2				# 872
	lfsx	f4, r5, r11				# 872
	slwi	r11, r10, 2				# 872
	lfsx	f5, r5, r11				# 872
	slwi	r11, r7, 2				# 872
	lfsx	f6, r5, r11				# 872
	fmul	f7, f4, f4				# 103
	lwz	r11, 16(r2)				# 290
	slwi	r12, r9, 2				# 295
	lfsx	f8, r11, r12				# 295
	fmul	f7, f7, f8				# 836
	fmul	f8, f5, f5				# 103
	lwz	r11, 16(r2)				# 300
	slwi	r12, r10, 2				# 305
	lfsx	f9, r11, r12				# 305
	fmul	f8, f8, f9				# 836
	fadd	f7, f7, f8				# 836
	fmul	f8, f6, f6				# 103
	lwz	r11, 16(r2)				# 310
	slwi	r12, r7, 2				# 315
	lfsx	f9, r11, r12				# 315
	fmul	f8, f8, f9				# 836
	fadd	f7, f7, f8				# 836
	lwz	r11, 12(r2)				# 281
	cmpw	cr7, r11, r9				# 838
	bne	cr7, beq_else.15908				# 838
	fmr	f4, f7				# 839
	b	beq_cont.15909				# 838
beq_else.15908:
	fmul	f8, f5, f6				# 842
	lwz	r11, 36(r2)				# 410
	slwi	r12, r9, 2				# 415
	lfsx	f9, r11, r12				# 415
	fmul	f8, f8, f9				# 842
	fadd	f7, f7, f8				# 841
	fmul	f6, f6, f4				# 843
	lwz	r11, 36(r2)				# 420
	slwi	r12, r10, 2				# 425
	lfsx	f8, r11, r12				# 425
	fmul	f6, f6, f8				# 843
	fadd	f6, f7, f6				# 841
	fmul	f4, f4, f5				# 844
	lwz	r11, 36(r2)				# 430
	slwi	r12, r7, 2				# 435
	lfsx	f5, r11, r12				# 435
	fmul	f4, f4, f5				# 844
	fadd	f4, f6, f4				# 841
beq_cont.15909:
	fcmpu	cr7, f4, f3				# 111
	bne	cr7, beq_else.15910				# 111
	addi	r11, 0, 1
	b	beq_cont.15911				# 111
beq_else.15910:
	addi	r11, 0, 0
beq_cont.15911:
	cmpw	cr7, r11, r9				# 874
	bne	cr7, beq_else.15912				# 874
	slwi	r11, r9, 2				# 879
	lfsx	f5, r5, r11				# 879
	slwi	r11, r10, 2				# 879
	lfsx	f6, r5, r11				# 879
	slwi	r11, r7, 2				# 879
	lfsx	f7, r5, r11				# 879
	fmul	f8, f5, f0				# 851
	lwz	r5, 16(r2)				# 290
	slwi	r11, r9, 2				# 295
	lfsx	f9, r5, r11				# 295
	fmul	f8, f8, f9				# 851
	fmul	f9, f6, f1				# 852
	lwz	r5, 16(r2)				# 300
	slwi	r11, r10, 2				# 305
	lfsx	f10, r5, r11				# 305
	fmul	f9, f9, f10				# 852
	fadd	f8, f8, f9				# 851
	fmul	f9, f7, f2				# 853
	lwz	r5, 16(r2)				# 310
	slwi	r11, r7, 2				# 315
	lfsx	f10, r5, r11				# 315
	fmul	f9, f9, f10				# 853
	fadd	f8, f8, f9				# 851
	lwz	r5, 12(r2)				# 281
	cmpw	cr7, r5, r9				# 855
	bne	cr7, beq_else.15913				# 855
	fmr	f5, f8				# 856
	b	beq_cont.15914				# 855
beq_else.15913:
	fmul	f9, f7, f1				# 859
	fmul	f10, f6, f2				# 859
	fadd	f9, f9, f10				# 859
	lwz	r5, 36(r2)				# 410
	slwi	r11, r9, 2				# 415
	lfsx	f10, r5, r11				# 415
	fmul	f9, f9, f10				# 859
	fmul	f10, f5, f2				# 860
	fmul	f7, f7, f0				# 860
	fadd	f7, f10, f7				# 860
	lwz	r5, 36(r2)				# 420
	slwi	r11, r10, 2				# 425
	lfsx	f10, r5, r11				# 425
	fmul	f7, f7, f10				# 860
	fadd	f7, f9, f7				# 859
	fmul	f5, f5, f1				# 861
	fmul	f6, f6, f0				# 861
	fadd	f5, f5, f6				# 861
	lwz	r5, 36(r2)				# 430
	slwi	r11, r7, 2				# 435
	lfsx	f6, r5, r11				# 435
	fmul	f5, f5, f6				# 861
	fadd	f5, f7, f5				# 859
	lis	r31, ha16(l.11646)
	addi	r31, r31, lo16(l.11646)
	lfs	f6, 0(r31)				# 105
	fdiv	f5, f5, f6				# 105
	fadd	f5, f8, f5				# 858
beq_cont.15914:
	fmul	f6, f0, f0				# 103
	lwz	r5, 16(r2)				# 290
	slwi	r11, r9, 2				# 295
	lfsx	f7, r5, r11				# 295
	fmul	f6, f6, f7				# 836
	fmul	f7, f1, f1				# 103
	lwz	r5, 16(r2)				# 300
	slwi	r11, r10, 2				# 305
	lfsx	f8, r5, r11				# 305
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	fmul	f7, f2, f2				# 103
	lwz	r5, 16(r2)				# 310
	slwi	r11, r7, 2				# 315
	lfsx	f8, r5, r11				# 315
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	lwz	r5, 12(r2)				# 281
	cmpw	cr7, r5, r9				# 838
	bne	cr7, beq_else.15915				# 838
	fmr	f0, f6				# 839
	b	beq_cont.15916				# 838
beq_else.15915:
	fmul	f7, f1, f2				# 842
	lwz	r5, 36(r2)				# 410
	slwi	r11, r9, 2				# 415
	lfsx	f8, r5, r11				# 415
	fmul	f7, f7, f8				# 842
	fadd	f6, f6, f7				# 841
	fmul	f2, f2, f0				# 843
	lwz	r5, 36(r2)				# 420
	slwi	r10, r10, 2				# 425
	lfsx	f7, r5, r10				# 425
	fmul	f2, f2, f7				# 843
	fadd	f2, f6, f2				# 841
	fmul	f0, f0, f1				# 844
	lwz	r5, 36(r2)				# 430
	slwi	r7, r7, 2				# 435
	lfsx	f1, r5, r7				# 435
	fmul	f0, f0, f1				# 844
	fadd	f0, f2, f0				# 841
beq_cont.15916:
	lwz	r5, 4(r2)				# 252
	cmpw	cr7, r5, r8				# 882
	bne	cr7, beq_else.15917				# 882
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f1, 0(r31)				# 882
	fsub	f0, f0, f1				# 882
	b	beq_cont.15918				# 882
beq_else.15917:
beq_cont.15918:
	fmul	f1, f5, f5				# 103
	fmul	f0, f4, f0				# 884
	fsub	f0, f1, f0				# 884
	fcmpu	cr7, f0, f3				# 113
	bgt	cr7, ble_else.15919				# 113
	addi	r5, 0, 0
	b	ble_cont.15920				# 113
ble_else.15919:
	addi	r5, 0, 1
ble_cont.15920:
	cmpw	cr7, r5, r9				# 886
	bne	cr7, beq_else.15921				# 886
	addi	r2, 0, 0
	blr
beq_else.15921:
	stw	r6, 0(r3)				# 887
	stfs	f4, 8(r3)				# 887
	stfs	f5, 16(r3)				# 887
	stw	r9, 24(r3)				# 887
	stw	r2, 28(r3)				# 887
	mfspr	r31, 8				# 887
	stw	r31, 32(r3)				# 887
	addi	r3, r3, 36				# 887
	bl	min_caml_sqrt				# 887
	addi	r3, r3, -36				# 887
	lwz	r31, 32(r3)				# 887
	mtspr	8, r31				# 887
	lwz	r2, 28(r3)				# 272
	lwz	r2, 24(r2)				# 272
	lwz	r5, 24(r3)				# 888
	cmpw	cr7, r2, r5				# 888
	bne	cr7, beq_else.15923				# 888
	fneg	f0, f0				# 107
	b	beq_cont.15924				# 888
beq_else.15923:
beq_cont.15924:
	lfs	f1, 16(r3)				# 889
	fsub	f0, f0, f1				# 889
	lfs	f1, 8(r3)				# 889
	fdiv	f0, f0, f1				# 889
	slwi	r2, r5, 2				# 889
	lwz	r5, 0(r3)				# 889
	stfsx	f0, r5, r2				# 889
	addi	r2, 0, 1
	blr
beq_else.15912:
	addi	r2, 0, 0
	blr
solver_rect_fast.2674:
	lwz	r7, 28(r1)				# 914
	lwz	r8, 24(r1)				# 914
	lwz	r9, 20(r1)				# 914
	lwz	r10, 16(r1)				# 914
	lwz	r11, 12(r1)				# 914
	lwz	r12, 8(r1)				# 914
	lfs	f3, 4(r1)				# 914
	slwi	r13, r11, 2				# 915
	lfsx	f4, r6, r13				# 915
	fsub	f4, f4, f0				# 915
	slwi	r13, r12, 2				# 915
	lfsx	f5, r6, r13				# 915
	fmul	f4, f4, f5				# 915
	slwi	r13, r12, 2				# 917
	lfsx	f5, r5, r13				# 917
	fmul	f5, f4, f5				# 917
	fadd	f5, f5, f1				# 917
	stw	r7, 0(r3)				# 917
	stw	r8, 4(r3)				# 917
	stfs	f0, 8(r3)				# 917
	stw	r10, 16(r3)				# 917
	stfs	f1, 24(r3)				# 917
	stfs	f3, 32(r3)				# 917
	stw	r6, 40(r3)				# 917
	stfs	f2, 48(r3)				# 917
	stfs	f4, 56(r3)				# 917
	stw	r5, 64(r3)				# 917
	stw	r9, 68(r3)				# 917
	stw	r11, 72(r3)				# 917
	stw	r12, 76(r3)				# 917
	stw	r2, 80(r3)				# 917
	mfspr	r31, 8				# 917
	fmr	f0, f5				# 917
	stw	r31, 84(r3)				# 917
	addi	r3, r3, 88				# 917
	bl	min_caml_fabs				# 917
	addi	r3, r3, -88				# 917
	lwz	r31, 84(r3)				# 917
	mtspr	8, r31				# 917
	lwz	r2, 80(r3)				# 300
	lwz	r5, 16(r2)				# 300
	lwz	r6, 76(r3)				# 305
	slwi	r7, r6, 2				# 305
	lfsx	f1, r5, r7				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15927				# 109
	addi	r5, 0, 0
	b	ble_cont.15928				# 109
ble_else.15927:
	addi	r5, 0, 1
ble_cont.15928:
	lwz	r7, 72(r3)				# 917
	cmpw	cr7, r5, r7				# 917
	bne	cr7, beq_else.15929				# 917
	addi	r5, 0, 0
	b	beq_cont.15930				# 917
beq_else.15929:
	lwz	r5, 68(r3)				# 918
	slwi	r8, r5, 2				# 918
	lwz	r9, 64(r3)				# 918
	lfsx	f0, r9, r8				# 918
	lfs	f1, 56(r3)				# 918
	fmul	f0, f1, f0				# 918
	lfs	f2, 48(r3)				# 918
	fadd	f0, f0, f2				# 918
	mfspr	r31, 8				# 918
	stw	r31, 84(r3)				# 918
	addi	r3, r3, 88				# 918
	bl	min_caml_fabs				# 918
	addi	r3, r3, -88				# 918
	lwz	r31, 84(r3)				# 918
	mtspr	8, r31				# 918
	lwz	r2, 80(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lwz	r6, 68(r3)				# 315
	slwi	r7, r6, 2				# 315
	lfsx	f1, r5, r7				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15931				# 109
	addi	r5, 0, 0
	b	ble_cont.15932				# 109
ble_else.15931:
	addi	r5, 0, 1
ble_cont.15932:
	lwz	r7, 72(r3)				# 918
	cmpw	cr7, r5, r7				# 918
	bne	cr7, beq_else.15933				# 918
	addi	r5, 0, 0
	b	beq_cont.15934				# 918
beq_else.15933:
	lwz	r5, 76(r3)				# 919
	slwi	r8, r5, 2				# 919
	lwz	r9, 40(r3)				# 919
	lfsx	f0, r9, r8				# 919
	lfs	f1, 32(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.15935				# 111
	addi	r8, 0, 1
	b	beq_cont.15936				# 111
beq_else.15935:
	addi	r8, 0, 0
beq_cont.15936:
	cmpw	cr7, r8, r7				# 919
	bne	cr7, beq_else.15937				# 919
	addi	r5, 0, 1
	b	beq_cont.15938				# 919
beq_else.15937:
	addi	r5, 0, 0
beq_cont.15938:
beq_cont.15934:
beq_cont.15930:
	cmpw	cr7, r5, r7				# 916
	bne	cr7, beq_else.15939				# 916
	lwz	r5, 68(r3)				# 924
	slwi	r6, r5, 2				# 924
	lwz	r8, 40(r3)				# 924
	lfsx	f0, r8, r6				# 924
	lfs	f1, 24(r3)				# 924
	fsub	f0, f0, f1				# 924
	lwz	r6, 16(r3)				# 924
	slwi	r9, r6, 2				# 924
	lfsx	f2, r8, r9				# 924
	fmul	f0, f0, f2				# 924
	slwi	r9, r7, 2				# 926
	lwz	r10, 64(r3)				# 926
	lfsx	f2, r10, r9				# 926
	fmul	f2, f0, f2				# 926
	lfs	f3, 8(r3)				# 926
	fadd	f2, f2, f3				# 926
	stfs	f0, 88(r3)				# 926
	mfspr	r31, 8				# 926
	fmr	f0, f2				# 926
	stw	r31, 96(r3)				# 926
	addi	r3, r3, 100				# 926
	bl	min_caml_fabs				# 926
	addi	r3, r3, -100				# 926
	lwz	r31, 96(r3)				# 926
	mtspr	8, r31				# 926
	lwz	r2, 80(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lwz	r6, 72(r3)				# 295
	slwi	r7, r6, 2				# 295
	lfsx	f1, r5, r7				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15941				# 109
	addi	r5, 0, 0
	b	ble_cont.15942				# 109
ble_else.15941:
	addi	r5, 0, 1
ble_cont.15942:
	cmpw	cr7, r5, r6				# 926
	bne	cr7, beq_else.15943				# 926
	addi	r5, 0, 0
	b	beq_cont.15944				# 926
beq_else.15943:
	lwz	r5, 68(r3)				# 927
	slwi	r7, r5, 2				# 927
	lwz	r8, 64(r3)				# 927
	lfsx	f0, r8, r7				# 927
	lfs	f1, 88(r3)				# 927
	fmul	f0, f1, f0				# 927
	lfs	f2, 48(r3)				# 927
	fadd	f0, f0, f2				# 927
	mfspr	r31, 8				# 927
	stw	r31, 96(r3)				# 927
	addi	r3, r3, 100				# 927
	bl	min_caml_fabs				# 927
	addi	r3, r3, -100				# 927
	lwz	r31, 96(r3)				# 927
	mtspr	8, r31				# 927
	lwz	r2, 80(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lwz	r6, 68(r3)				# 315
	slwi	r6, r6, 2				# 315
	lfsx	f1, r5, r6				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15945				# 109
	addi	r5, 0, 0
	b	ble_cont.15946				# 109
ble_else.15945:
	addi	r5, 0, 1
ble_cont.15946:
	lwz	r6, 72(r3)				# 927
	cmpw	cr7, r5, r6				# 927
	bne	cr7, beq_else.15947				# 927
	addi	r5, 0, 0
	b	beq_cont.15948				# 927
beq_else.15947:
	lwz	r5, 16(r3)				# 928
	slwi	r5, r5, 2				# 928
	lwz	r7, 40(r3)				# 928
	lfsx	f0, r7, r5				# 928
	lfs	f1, 32(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.15949				# 111
	addi	r5, 0, 1
	b	beq_cont.15950				# 111
beq_else.15949:
	addi	r5, 0, 0
beq_cont.15950:
	cmpw	cr7, r5, r6				# 928
	bne	cr7, beq_else.15951				# 928
	addi	r5, 0, 1
	b	beq_cont.15952				# 928
beq_else.15951:
	addi	r5, 0, 0
beq_cont.15952:
beq_cont.15948:
beq_cont.15944:
	cmpw	cr7, r5, r6				# 925
	bne	cr7, beq_else.15953				# 925
	lwz	r5, 40(r3)				# 933
	lfs	f0, 16(r5)				# 933
	lfs	f1, 48(r3)				# 933
	fsub	f0, f0, f1				# 933
	lwz	r7, 4(r3)				# 933
	slwi	r8, r7, 2				# 933
	lfsx	f1, r5, r8				# 933
	fmul	f0, f0, f1				# 933
	slwi	r8, r6, 2				# 935
	lwz	r9, 64(r3)				# 935
	lfsx	f1, r9, r8				# 935
	fmul	f1, f0, f1				# 935
	lfs	f2, 8(r3)				# 935
	fadd	f1, f1, f2				# 935
	stfs	f0, 96(r3)				# 935
	mfspr	r31, 8				# 935
	fmr	f0, f1				# 935
	stw	r31, 104(r3)				# 935
	addi	r3, r3, 108				# 935
	bl	min_caml_fabs				# 935
	addi	r3, r3, -108				# 935
	lwz	r31, 104(r3)				# 935
	mtspr	8, r31				# 935
	lwz	r2, 80(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lwz	r6, 72(r3)				# 295
	slwi	r7, r6, 2				# 295
	lfsx	f1, r5, r7				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15954				# 109
	addi	r5, 0, 0
	b	ble_cont.15955				# 109
ble_else.15954:
	addi	r5, 0, 1
ble_cont.15955:
	cmpw	cr7, r5, r6				# 935
	bne	cr7, beq_else.15956				# 935
	addi	r2, 0, 0
	b	beq_cont.15957				# 935
beq_else.15956:
	lwz	r5, 76(r3)				# 936
	slwi	r7, r5, 2				# 936
	lwz	r8, 64(r3)				# 936
	lfsx	f0, r8, r7				# 936
	lfs	f1, 96(r3)				# 936
	fmul	f0, f1, f0				# 936
	lfs	f2, 24(r3)				# 936
	fadd	f0, f0, f2				# 936
	mfspr	r31, 8				# 936
	stw	r31, 104(r3)				# 936
	addi	r3, r3, 108				# 936
	bl	min_caml_fabs				# 936
	addi	r3, r3, -108				# 936
	lwz	r31, 104(r3)				# 936
	mtspr	8, r31				# 936
	lwz	r2, 80(r3)				# 300
	lwz	r2, 16(r2)				# 300
	lwz	r5, 76(r3)				# 305
	slwi	r5, r5, 2				# 305
	lfsx	f1, r2, r5				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.15958				# 109
	addi	r2, 0, 0
	b	ble_cont.15959				# 109
ble_else.15958:
	addi	r2, 0, 1
ble_cont.15959:
	lwz	r5, 72(r3)				# 936
	cmpw	cr7, r2, r5				# 936
	bne	cr7, beq_else.15960				# 936
	addi	r2, 0, 0
	b	beq_cont.15961				# 936
beq_else.15960:
	lwz	r2, 4(r3)				# 937
	slwi	r2, r2, 2				# 937
	lwz	r6, 40(r3)				# 937
	lfsx	f0, r6, r2				# 937
	lfs	f1, 32(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.15962				# 111
	addi	r2, 0, 1
	b	beq_cont.15963				# 111
beq_else.15962:
	addi	r2, 0, 0
beq_cont.15963:
	cmpw	cr7, r2, r5				# 937
	bne	cr7, beq_else.15964				# 937
	addi	r2, 0, 1
	b	beq_cont.15965				# 937
beq_else.15964:
	addi	r2, 0, 0
beq_cont.15965:
beq_cont.15961:
beq_cont.15957:
	lwz	r5, 72(r3)				# 934
	cmpw	cr7, r2, r5				# 934
	bne	cr7, beq_else.15966				# 934
	addi	r2, 0, 0
	blr
beq_else.15966:
	slwi	r2, r5, 2				# 941
	lwz	r5, 0(r3)				# 941
	lfs	f0, 96(r3)				# 941
	stfsx	f0, r5, r2				# 941
	addi	r2, 0, 3
	blr
beq_else.15953:
	slwi	r2, r6, 2				# 932
	lwz	r5, 0(r3)				# 932
	lfs	f0, 88(r3)				# 932
	stfsx	f0, r5, r2				# 932
	addi	r2, 0, 2
	blr
beq_else.15939:
	slwi	r2, r7, 2				# 923
	lwz	r5, 0(r3)				# 923
	lfs	f0, 56(r3)				# 923
	stfsx	f0, r5, r2				# 923
	addi	r2, 0, 1
	blr
solver_second_fast.2687:
	lwz	r6, 24(r1)				# 956
	lwz	r7, 20(r1)				# 956
	lwz	r8, 16(r1)				# 956
	lwz	r9, 12(r1)				# 956
	lwz	r10, 8(r1)				# 956
	lfs	f3, 4(r1)				# 956
	slwi	r11, r9, 2				# 958
	lfsx	f4, r5, r11				# 958
	fcmpu	cr7, f4, f3				# 111
	bne	cr7, beq_else.15967				# 111
	addi	r11, 0, 1
	b	beq_cont.15968				# 111
beq_else.15967:
	addi	r11, 0, 0
beq_cont.15968:
	cmpw	cr7, r11, r9				# 959
	bne	cr7, beq_else.15969				# 959
	slwi	r11, r10, 2				# 962
	lfsx	f5, r5, r11				# 962
	fmul	f5, f5, f0				# 962
	slwi	r11, r7, 2				# 962
	lfsx	f6, r5, r11				# 962
	fmul	f6, f6, f1				# 962
	fadd	f5, f5, f6				# 962
	slwi	r11, r8, 2				# 962
	lfsx	f6, r5, r11				# 962
	fmul	f6, f6, f2				# 962
	fadd	f5, f5, f6				# 962
	fmul	f6, f0, f0				# 103
	lwz	r11, 16(r2)				# 290
	slwi	r12, r9, 2				# 295
	lfsx	f7, r11, r12				# 295
	fmul	f6, f6, f7				# 836
	fmul	f7, f1, f1				# 103
	lwz	r11, 16(r2)				# 300
	slwi	r12, r10, 2				# 305
	lfsx	f8, r11, r12				# 305
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	fmul	f7, f2, f2				# 103
	lwz	r11, 16(r2)				# 310
	slwi	r12, r7, 2				# 315
	lfsx	f8, r11, r12				# 315
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	lwz	r11, 12(r2)				# 281
	cmpw	cr7, r11, r9				# 838
	bne	cr7, beq_else.15970				# 838
	fmr	f0, f6				# 839
	b	beq_cont.15971				# 838
beq_else.15970:
	fmul	f7, f1, f2				# 842
	lwz	r11, 36(r2)				# 410
	slwi	r12, r9, 2				# 415
	lfsx	f8, r11, r12				# 415
	fmul	f7, f7, f8				# 842
	fadd	f6, f6, f7				# 841
	fmul	f2, f2, f0				# 843
	lwz	r11, 36(r2)				# 420
	slwi	r10, r10, 2				# 425
	lfsx	f7, r11, r10				# 425
	fmul	f2, f2, f7				# 843
	fadd	f2, f6, f2				# 841
	fmul	f0, f0, f1				# 844
	lwz	r10, 36(r2)				# 430
	slwi	r7, r7, 2				# 435
	lfsx	f1, r10, r7				# 435
	fmul	f0, f0, f1				# 844
	fadd	f0, f2, f0				# 841
beq_cont.15971:
	lwz	r7, 4(r2)				# 252
	cmpw	cr7, r7, r8				# 964
	bne	cr7, beq_else.15972				# 964
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f1, 0(r31)				# 964
	fsub	f0, f0, f1				# 964
	b	beq_cont.15973				# 964
beq_else.15972:
beq_cont.15973:
	fmul	f1, f5, f5				# 103
	fmul	f0, f4, f0				# 965
	fsub	f0, f1, f0				# 965
	fcmpu	cr7, f0, f3				# 113
	bgt	cr7, ble_else.15974				# 113
	addi	r7, 0, 0
	b	ble_cont.15975				# 113
ble_else.15974:
	addi	r7, 0, 1
ble_cont.15975:
	cmpw	cr7, r7, r9				# 966
	bne	cr7, beq_else.15976				# 966
	addi	r2, 0, 0
	blr
beq_else.15976:
	lwz	r2, 24(r2)				# 272
	cmpw	cr7, r2, r9				# 967
	bne	cr7, beq_else.15977				# 967
	stw	r6, 0(r3)				# 970
	stw	r9, 4(r3)				# 970
	stw	r5, 8(r3)				# 970
	stfs	f5, 16(r3)				# 970
	mfspr	r31, 8				# 970
	stw	r31, 24(r3)				# 970
	addi	r3, r3, 28				# 970
	bl	min_caml_sqrt				# 970
	addi	r3, r3, -28				# 970
	lwz	r31, 24(r3)				# 970
	mtspr	8, r31				# 970
	lfs	f1, 16(r3)				# 970
	fsub	f0, f1, f0				# 970
	lwz	r2, 8(r3)				# 970
	lfs	f1, 16(r2)				# 970
	fmul	f0, f0, f1				# 970
	lwz	r2, 4(r3)				# 970
	slwi	r2, r2, 2				# 970
	lwz	r5, 0(r3)				# 970
	stfsx	f0, r5, r2				# 970
	b	beq_cont.15978				# 967
beq_else.15977:
	stw	r6, 0(r3)				# 968
	stw	r9, 4(r3)				# 968
	stw	r5, 8(r3)				# 968
	stfs	f5, 16(r3)				# 968
	mfspr	r31, 8				# 968
	stw	r31, 24(r3)				# 968
	addi	r3, r3, 28				# 968
	bl	min_caml_sqrt				# 968
	addi	r3, r3, -28				# 968
	lwz	r31, 24(r3)				# 968
	mtspr	8, r31				# 968
	lfs	f1, 16(r3)				# 968
	fadd	f0, f1, f0				# 968
	lwz	r2, 8(r3)				# 968
	lfs	f1, 16(r2)				# 968
	fmul	f0, f0, f1				# 968
	lwz	r2, 4(r3)				# 968
	slwi	r2, r2, 2				# 968
	lwz	r5, 0(r3)				# 968
	stfsx	f0, r5, r2				# 968
beq_cont.15978:
	addi	r2, 0, 1
	blr
beq_else.15969:
	addi	r2, 0, 0
	blr
setup_second_table.2720:
	lwz	r6, 24(r1)				# 1089
	lwz	r7, 20(r1)				# 1089
	lwz	r8, 16(r1)				# 1089
	lwz	r9, 12(r1)				# 1089
	lwz	r10, 8(r1)				# 1089
	lfs	f0, 4(r1)				# 1089
	stfs	f0, 0(r3)				# 1090
	stw	r8, 8(r3)				# 1090
	stw	r5, 12(r3)				# 1090
	stw	r7, 16(r3)				# 1090
	stw	r10, 20(r3)				# 1090
	stw	r2, 24(r3)				# 1090
	stw	r9, 28(r3)				# 1090
	mfspr	r31, 8				# 1090
	mr	r2, r6				# 1090
	stw	r31, 32(r3)				# 1090
	addi	r3, r3, 36				# 1090
	bl	min_caml_create_float_array				# 1090
	addi	r3, r3, -36				# 1090
	lwz	r31, 32(r3)				# 1090
	mtspr	8, r31				# 1090
	lwz	r5, 28(r3)				# 1092
	slwi	r6, r5, 2				# 1092
	lwz	r7, 24(r3)				# 1092
	lfsx	f0, r7, r6				# 1092
	lwz	r6, 20(r3)				# 1092
	slwi	r8, r6, 2				# 1092
	lfsx	f1, r7, r8				# 1092
	lwz	r8, 16(r3)				# 1092
	slwi	r9, r8, 2				# 1092
	lfsx	f2, r7, r9				# 1092
	fmul	f3, f0, f0				# 103
	lwz	r9, 12(r3)				# 290
	lwz	r10, 16(r9)				# 290
	slwi	r11, r5, 2				# 295
	lfsx	f4, r10, r11				# 295
	fmul	f3, f3, f4				# 836
	fmul	f4, f1, f1				# 103
	lwz	r10, 16(r9)				# 300
	slwi	r11, r6, 2				# 305
	lfsx	f5, r10, r11				# 305
	fmul	f4, f4, f5				# 836
	fadd	f3, f3, f4				# 836
	fmul	f4, f2, f2				# 103
	lwz	r10, 16(r9)				# 310
	slwi	r11, r8, 2				# 315
	lfsx	f5, r10, r11				# 315
	fmul	f4, f4, f5				# 836
	fadd	f3, f3, f4				# 836
	lwz	r10, 12(r9)				# 281
	cmpw	cr7, r10, r5				# 838
	bne	cr7, beq_else.15980				# 838
	fmr	f0, f3				# 839
	b	beq_cont.15981				# 838
beq_else.15980:
	fmul	f4, f1, f2				# 842
	lwz	r10, 36(r9)				# 410
	slwi	r11, r5, 2				# 415
	lfsx	f5, r10, r11				# 415
	fmul	f4, f4, f5				# 842
	fadd	f3, f3, f4				# 841
	fmul	f2, f2, f0				# 843
	lwz	r10, 36(r9)				# 420
	slwi	r11, r6, 2				# 425
	lfsx	f4, r10, r11				# 425
	fmul	f2, f2, f4				# 843
	fadd	f2, f3, f2				# 841
	fmul	f0, f0, f1				# 844
	lwz	r10, 36(r9)				# 430
	slwi	r11, r8, 2				# 435
	lfsx	f1, r10, r11				# 435
	fmul	f0, f0, f1				# 844
	fadd	f0, f2, f0				# 841
beq_cont.15981:
	slwi	r10, r5, 2				# 1093
	lfsx	f1, r7, r10				# 1093
	lwz	r10, 16(r9)				# 290
	slwi	r11, r5, 2				# 295
	lfsx	f2, r10, r11				# 295
	fmul	f1, f1, f2				# 1093
	fneg	f1, f1				# 107
	slwi	r10, r6, 2				# 1094
	lfsx	f2, r7, r10				# 1094
	lwz	r10, 16(r9)				# 300
	slwi	r11, r6, 2				# 305
	lfsx	f3, r10, r11				# 305
	fmul	f2, f2, f3				# 1094
	fneg	f2, f2				# 107
	slwi	r10, r8, 2				# 1095
	lfsx	f3, r7, r10				# 1095
	lwz	r10, 16(r9)				# 310
	slwi	r11, r8, 2				# 315
	lfsx	f4, r10, r11				# 315
	fmul	f3, f3, f4				# 1095
	fneg	f3, f3				# 107
	slwi	r10, r5, 2				# 1097
	stfsx	f0, r2, r10				# 1097
	lwz	r10, 12(r9)				# 281
	cmpw	cr7, r10, r5				# 1100
	bne	cr7, beq_else.15982				# 1100
	slwi	r6, r6, 2				# 1105
	stfsx	f1, r2, r6				# 1105
	slwi	r6, r8, 2				# 1106
	stfsx	f2, r2, r6				# 1106
	lwz	r6, 8(r3)				# 1107
	slwi	r6, r6, 2				# 1107
	stfsx	f3, r2, r6				# 1107
	b	beq_cont.15983				# 1100
beq_else.15982:
	slwi	r10, r8, 2				# 1101
	lfsx	f4, r7, r10				# 1101
	lwz	r10, 36(r9)				# 420
	slwi	r11, r6, 2				# 425
	lfsx	f5, r10, r11				# 425
	fmul	f4, f4, f5				# 1101
	slwi	r10, r6, 2				# 1101
	lfsx	f5, r7, r10				# 1101
	lwz	r10, 36(r9)				# 430
	slwi	r11, r8, 2				# 435
	lfsx	f6, r10, r11				# 435
	fmul	f5, f5, f6				# 1101
	fadd	f4, f4, f5				# 1101
	lis	r31, ha16(l.11646)
	addi	r31, r31, lo16(l.11646)
	lfs	f5, 0(r31)				# 105
	fdiv	f4, f4, f5				# 105
	fsub	f1, f1, f4				# 1101
	slwi	r10, r6, 2				# 1101
	stfsx	f1, r2, r10				# 1101
	slwi	r10, r8, 2				# 1102
	lfsx	f1, r7, r10				# 1102
	lwz	r10, 36(r9)				# 410
	slwi	r11, r5, 2				# 415
	lfsx	f4, r10, r11				# 415
	fmul	f1, f1, f4				# 1102
	slwi	r10, r5, 2				# 1102
	lfsx	f4, r7, r10				# 1102
	lwz	r10, 36(r9)				# 430
	slwi	r11, r8, 2				# 435
	lfsx	f6, r10, r11				# 435
	fmul	f4, f4, f6				# 1102
	fadd	f1, f1, f4				# 1102
	fdiv	f1, f1, f5				# 105
	fsub	f1, f2, f1				# 1102
	slwi	r8, r8, 2				# 1102
	stfsx	f1, r2, r8				# 1102
	slwi	r8, r6, 2				# 1103
	lfsx	f1, r7, r8				# 1103
	lwz	r8, 36(r9)				# 410
	slwi	r10, r5, 2				# 415
	lfsx	f2, r8, r10				# 415
	fmul	f1, f1, f2				# 1103
	slwi	r8, r5, 2				# 1103
	lfsx	f2, r7, r8				# 1103
	lwz	r7, 36(r9)				# 420
	slwi	r6, r6, 2				# 425
	lfsx	f4, r7, r6				# 425
	fmul	f2, f2, f4				# 1103
	fadd	f1, f1, f2				# 1103
	fdiv	f1, f1, f5				# 105
	fsub	f1, f3, f1				# 1103
	lwz	r6, 8(r3)				# 1103
	slwi	r6, r6, 2				# 1103
	stfsx	f1, r2, r6				# 1103
beq_cont.15983:
	lfs	f1, 0(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.15984				# 111
	addi	r6, 0, 1
	b	beq_cont.15985				# 111
beq_else.15984:
	addi	r6, 0, 0
beq_cont.15985:
	cmpw	cr7, r6, r5				# 1109
	bne	cr7, beq_else.15986				# 1109
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f1, 0(r31)				# 1110
	fdiv	f0, f1, f0				# 1110
	stfs	f0, 16(r2)				# 1110
	b	beq_cont.15987				# 1109
beq_else.15986:
beq_cont.15987:
	blr
iter_setup_dirvec_constants.2723:
	lwz	r6, 32(r1)				# 1117
	lwz	r7, 28(r1)				# 1117
	lwz	r8, 24(r1)				# 1117
	lwz	r9, 20(r1)				# 1117
	lwz	r10, 16(r1)				# 1117
	lwz	r11, 12(r1)				# 1117
	lwz	r12, 8(r1)				# 1117
	lfs	f0, 4(r1)				# 1117
	cmpw	cr7, r11, r5				# 1118
	bgt	cr7, ble_else.15988				# 1118
	slwi	r13, r5, 2				# 1119
	lwzx	r7, r7, r13				# 1119
	lwz	r13, 4(r2)				# 527
	lwz	r14, 0(r2)				# 521
	lwz	r15, 4(r7)				# 252
	stw	r2, 0(r3)				# 1123
	stw	r1, 4(r3)				# 1123
	stw	r12, 8(r3)				# 1123
	cmpw	cr7, r15, r12				# 1123
	bne	cr7, beq_else.15989				# 1123
	addi	r6, 0, 6
	stw	r13, 12(r3)				# 1044
	stw	r5, 16(r3)				# 1044
	stw	r8, 20(r3)				# 1044
	stw	r10, 24(r3)				# 1044
	stw	r9, 28(r3)				# 1044
	stw	r7, 32(r3)				# 1044
	stfs	f0, 40(r3)				# 1044
	stw	r14, 48(r3)				# 1044
	stw	r11, 52(r3)				# 1044
	mfspr	r31, 8				# 1044
	mr	r2, r6				# 1044
	stw	r31, 56(r3)				# 1044
	addi	r3, r3, 60				# 1044
	bl	min_caml_create_float_array				# 1044
	addi	r3, r3, -60				# 1044
	lwz	r31, 56(r3)				# 1044
	mtspr	8, r31				# 1044
	lwz	r5, 52(r3)				# 1046
	slwi	r6, r5, 2				# 1046
	lwz	r7, 48(r3)				# 1046
	lfsx	f0, r7, r6				# 1046
	lfs	f1, 40(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.15992				# 111
	addi	r6, 0, 1
	b	beq_cont.15993				# 111
beq_else.15992:
	addi	r6, 0, 0
beq_cont.15993:
	cmpw	cr7, r6, r5				# 1046
	bne	cr7, beq_else.15994				# 1046
	lwz	r6, 32(r3)				# 272
	lwz	r8, 24(r6)				# 272
	slwi	r9, r5, 2				# 1050
	lfsx	f0, r7, r9				# 1050
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.15996				# 115
	addi	r9, 0, 0
	b	ble_cont.15997				# 115
ble_else.15996:
	addi	r9, 0, 1
ble_cont.15997:
	cmpw	cr7, r8, r5				# 119
	bne	cr7, beq_else.15998				# 119
	mr	r8, r9				# 119
	b	beq_cont.15999				# 119
beq_else.15998:
	cmpw	cr7, r9, r5				# 119
	bne	cr7, beq_else.16000				# 119
	addi	r8, 0, 1
	b	beq_cont.16001				# 119
beq_else.16000:
	addi	r8, 0, 0
beq_cont.16001:
beq_cont.15999:
	lwz	r9, 16(r6)				# 290
	slwi	r10, r5, 2				# 295
	lfsx	f0, r9, r10				# 295
	cmpw	cr7, r8, r5				# 132
	bne	cr7, beq_else.16002				# 132
	fneg	f0, f0				# 107
	b	beq_cont.16003				# 132
beq_else.16002:
beq_cont.16003:
	slwi	r8, r5, 2				# 1050
	stfsx	f0, r2, r8				# 1050
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f0, 0(r31)				# 1052
	slwi	r8, r5, 2				# 1052
	lfsx	f2, r7, r8				# 1052
	fdiv	f0, f0, f2				# 1052
	lwz	r8, 8(r3)				# 1052
	slwi	r9, r8, 2				# 1052
	stfsx	f0, r2, r9				# 1052
	b	beq_cont.15995				# 1046
beq_else.15994:
	lwz	r6, 8(r3)				# 1047
	slwi	r8, r6, 2				# 1047
	stfsx	f1, r2, r8				# 1047
beq_cont.15995:
	lwz	r6, 8(r3)				# 1054
	slwi	r8, r6, 2				# 1054
	lfsx	f0, r7, r8				# 1054
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.16004				# 111
	addi	r8, 0, 1
	b	beq_cont.16005				# 111
beq_else.16004:
	addi	r8, 0, 0
beq_cont.16005:
	cmpw	cr7, r8, r5				# 1054
	bne	cr7, beq_else.16006				# 1054
	lwz	r8, 32(r3)				# 272
	lwz	r9, 24(r8)				# 272
	slwi	r10, r6, 2				# 1057
	lfsx	f0, r7, r10				# 1057
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.16008				# 115
	addi	r10, 0, 0
	b	ble_cont.16009				# 115
ble_else.16008:
	addi	r10, 0, 1
ble_cont.16009:
	cmpw	cr7, r9, r5				# 119
	bne	cr7, beq_else.16010				# 119
	mr	r9, r10				# 119
	b	beq_cont.16011				# 119
beq_else.16010:
	cmpw	cr7, r10, r5				# 119
	bne	cr7, beq_else.16012				# 119
	addi	r9, 0, 1
	b	beq_cont.16013				# 119
beq_else.16012:
	addi	r9, 0, 0
beq_cont.16013:
beq_cont.16011:
	lwz	r10, 16(r8)				# 300
	slwi	r11, r6, 2				# 305
	lfsx	f0, r10, r11				# 305
	cmpw	cr7, r9, r5				# 132
	bne	cr7, beq_else.16014				# 132
	fneg	f0, f0				# 107
	b	beq_cont.16015				# 132
beq_else.16014:
beq_cont.16015:
	lwz	r9, 28(r3)				# 1057
	slwi	r10, r9, 2				# 1057
	stfsx	f0, r2, r10				# 1057
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f0, 0(r31)				# 1058
	slwi	r10, r6, 2				# 1058
	lfsx	f2, r7, r10				# 1058
	fdiv	f0, f0, f2				# 1058
	lwz	r10, 24(r3)				# 1058
	slwi	r10, r10, 2				# 1058
	stfsx	f0, r2, r10				# 1058
	b	beq_cont.16007				# 1054
beq_else.16006:
	lwz	r8, 24(r3)				# 1055
	slwi	r8, r8, 2				# 1055
	stfsx	f1, r2, r8				# 1055
beq_cont.16007:
	lwz	r8, 28(r3)				# 1060
	slwi	r9, r8, 2				# 1060
	lfsx	f0, r7, r9				# 1060
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.16016				# 111
	addi	r9, 0, 1
	b	beq_cont.16017				# 111
beq_else.16016:
	addi	r9, 0, 0
beq_cont.16017:
	cmpw	cr7, r9, r5				# 1060
	bne	cr7, beq_else.16018				# 1060
	lwz	r9, 32(r3)				# 272
	lwz	r10, 24(r9)				# 272
	slwi	r11, r8, 2				# 1063
	lfsx	f0, r7, r11				# 1063
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.16020				# 115
	addi	r11, 0, 0
	b	ble_cont.16021				# 115
ble_else.16020:
	addi	r11, 0, 1
ble_cont.16021:
	cmpw	cr7, r10, r5				# 119
	bne	cr7, beq_else.16022				# 119
	mr	r10, r11				# 119
	b	beq_cont.16023				# 119
beq_else.16022:
	cmpw	cr7, r11, r5				# 119
	bne	cr7, beq_else.16024				# 119
	addi	r10, 0, 1
	b	beq_cont.16025				# 119
beq_else.16024:
	addi	r10, 0, 0
beq_cont.16025:
beq_cont.16023:
	lwz	r9, 16(r9)				# 310
	slwi	r11, r8, 2				# 315
	lfsx	f0, r9, r11				# 315
	cmpw	cr7, r10, r5				# 132
	bne	cr7, beq_else.16026				# 132
	fneg	f0, f0				# 107
	b	beq_cont.16027				# 132
beq_else.16026:
beq_cont.16027:
	stfs	f0, 16(r2)				# 1063
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f0, 0(r31)				# 1064
	slwi	r5, r8, 2				# 1064
	lfsx	f1, r7, r5				# 1064
	fdiv	f0, f0, f1				# 1064
	lwz	r5, 20(r3)				# 1064
	slwi	r5, r5, 2				# 1064
	stfsx	f0, r2, r5				# 1064
	b	beq_cont.16019				# 1060
beq_else.16018:
	lwz	r5, 20(r3)				# 1061
	slwi	r5, r5, 2				# 1061
	stfsx	f1, r2, r5				# 1061
beq_cont.16019:
	lwz	r5, 16(r3)				# 1124
	slwi	r7, r5, 2				# 1124
	lwz	r8, 12(r3)				# 1124
	stwx	r2, r8, r7				# 1124
	b	beq_cont.15990				# 1123
beq_else.15989:
	cmpw	cr7, r15, r9				# 1125
	bne	cr7, beq_else.16028				# 1125
	addi	r6, 0, 4
	stw	r13, 12(r3)				# 1071
	stw	r5, 16(r3)				# 1071
	stw	r10, 24(r3)				# 1071
	stfs	f0, 40(r3)				# 1071
	stw	r9, 28(r3)				# 1071
	stw	r7, 32(r3)				# 1071
	stw	r14, 48(r3)				# 1071
	stw	r11, 52(r3)				# 1071
	mfspr	r31, 8				# 1071
	mr	r2, r6				# 1071
	stw	r31, 56(r3)				# 1071
	addi	r3, r3, 60				# 1071
	bl	min_caml_create_float_array				# 1071
	addi	r3, r3, -60				# 1071
	lwz	r31, 56(r3)				# 1071
	mtspr	8, r31				# 1071
	lwz	r5, 52(r3)				# 1073
	slwi	r6, r5, 2				# 1073
	lwz	r7, 48(r3)				# 1073
	lfsx	f0, r7, r6				# 1073
	lwz	r6, 32(r3)				# 290
	lwz	r8, 16(r6)				# 290
	slwi	r9, r5, 2				# 295
	lfsx	f1, r8, r9				# 295
	fmul	f0, f0, f1				# 1073
	lwz	r8, 8(r3)				# 1073
	slwi	r9, r8, 2				# 1073
	lfsx	f1, r7, r9				# 1073
	lwz	r9, 16(r6)				# 300
	slwi	r10, r8, 2				# 305
	lfsx	f2, r9, r10				# 305
	fmul	f1, f1, f2				# 1073
	fadd	f0, f0, f1				# 1073
	lwz	r9, 28(r3)				# 1073
	slwi	r10, r9, 2				# 1073
	lfsx	f1, r7, r10				# 1073
	lwz	r7, 16(r6)				# 310
	slwi	r10, r9, 2				# 315
	lfsx	f2, r7, r10				# 315
	fmul	f1, f1, f2				# 1073
	fadd	f0, f0, f1				# 1073
	lfs	f1, 40(r3)				# 113
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.16030				# 113
	addi	r7, 0, 0
	b	ble_cont.16031				# 113
ble_else.16030:
	addi	r7, 0, 1
ble_cont.16031:
	cmpw	cr7, r7, r5				# 1075
	bne	cr7, beq_else.16032				# 1075
	slwi	r5, r5, 2				# 1083
	stfsx	f1, r2, r5				# 1083
	b	beq_cont.16033				# 1075
beq_else.16032:
	lis	r31, ha16(l.11682)
	addi	r31, r31, lo16(l.11682)
	lfs	f1, 0(r31)				# 1077
	fdiv	f1, f1, f0				# 1077
	slwi	r7, r5, 2				# 1077
	stfsx	f1, r2, r7				# 1077
	lwz	r7, 16(r6)				# 290
	slwi	r5, r5, 2				# 295
	lfsx	f1, r7, r5				# 295
	fdiv	f1, f1, f0				# 1079
	fneg	f1, f1				# 107
	slwi	r5, r8, 2				# 1079
	stfsx	f1, r2, r5				# 1079
	lwz	r5, 16(r6)				# 300
	slwi	r7, r8, 2				# 305
	lfsx	f1, r5, r7				# 305
	fdiv	f1, f1, f0				# 1080
	fneg	f1, f1				# 107
	slwi	r5, r9, 2				# 1080
	stfsx	f1, r2, r5				# 1080
	lwz	r5, 16(r6)				# 310
	slwi	r6, r9, 2				# 315
	lfsx	f1, r5, r6				# 315
	fdiv	f0, f1, f0				# 1081
	fneg	f0, f0				# 107
	lwz	r5, 24(r3)				# 1081
	slwi	r5, r5, 2				# 1081
	stfsx	f0, r2, r5				# 1081
beq_cont.16033:
	lwz	r5, 16(r3)				# 1126
	slwi	r6, r5, 2				# 1126
	lwz	r7, 12(r3)				# 1126
	stwx	r2, r7, r6				# 1126
	b	beq_cont.16029				# 1125
beq_else.16028:
	stw	r13, 12(r3)				# 1128
	stw	r5, 16(r3)				# 1128
	mfspr	r31, 8				# 1128
	mr	r5, r7				# 1128
	mr	r2, r14				# 1128
	mr	r1, r6				# 1128
	stw	r31, 56(r3)				# 1128
	addi	r3, r3, 60				# 1128
	lwz	r31, 0(r1)				# 1128
	mtspr	9, r31				# 1128
	bctr				# 1128
	addi	r3, r3, -60				# 1128
	lwz	r31, 56(r3)				# 1128
	mtspr	8, r31				# 1128
	lwz	r5, 16(r3)				# 1128
	slwi	r6, r5, 2				# 1128
	lwz	r7, 12(r3)				# 1128
	stwx	r2, r7, r6				# 1128
beq_cont.16029:
beq_cont.15990:
	lwz	r2, 8(r3)				# 1130
	sub	r5, r5, r2				# 1130
	lwz	r2, 0(r3)				# 1130
	lwz	r1, 4(r3)				# 1130
	lwz	r30, 0(r1)				# 1130
	mtspr	9, r30
	bctr				# 1130
ble_else.15988:
	blr
setup_startp_constants.2728:
	lwz	r6, 20(r1)				# 1140
	lwz	r7, 16(r1)				# 1140
	lwz	r8, 12(r1)				# 1140
	lwz	r9, 8(r1)				# 1140
	lwz	r10, 4(r1)				# 1140
	cmpw	cr7, r9, r5				# 1141
	bgt	cr7, ble_else.16035				# 1141
	slwi	r11, r5, 2				# 1142
	lwzx	r6, r6, r11				# 1142
	lwz	r11, 40(r6)				# 441
	lwz	r12, 4(r6)				# 252
	slwi	r13, r9, 2				# 1145
	lfsx	f0, r2, r13				# 1145
	lwz	r13, 20(r6)				# 330
	slwi	r14, r9, 2				# 335
	lfsx	f1, r13, r14				# 335
	fsub	f0, f0, f1				# 1145
	slwi	r13, r9, 2				# 1145
	stfsx	f0, r11, r13				# 1145
	slwi	r13, r10, 2				# 1146
	lfsx	f0, r2, r13				# 1146
	lwz	r13, 20(r6)				# 340
	slwi	r14, r10, 2				# 345
	lfsx	f1, r13, r14				# 345
	fsub	f0, f0, f1				# 1146
	slwi	r13, r10, 2				# 1146
	stfsx	f0, r11, r13				# 1146
	slwi	r13, r7, 2				# 1147
	lfsx	f0, r2, r13				# 1147
	lwz	r13, 20(r6)				# 350
	slwi	r14, r7, 2				# 355
	lfsx	f1, r13, r14				# 355
	fsub	f0, f0, f1				# 1147
	slwi	r13, r7, 2				# 1147
	stfsx	f0, r11, r13				# 1147
	cmpw	cr7, r12, r7				# 1148
	bne	cr7, beq_else.16036				# 1148
	lwz	r6, 16(r6)				# 320
	slwi	r12, r9, 2				# 1150
	lfsx	f0, r11, r12				# 1150
	slwi	r12, r10, 2				# 1150
	lfsx	f1, r11, r12				# 1150
	slwi	r12, r7, 2				# 1150
	lfsx	f2, r11, r12				# 1150
	slwi	r9, r9, 2				# 200
	lfsx	f3, r6, r9				# 200
	fmul	f0, f3, f0				# 200
	slwi	r9, r10, 2				# 200
	lfsx	f3, r6, r9				# 200
	fmul	f1, f3, f1				# 200
	fadd	f0, f0, f1				# 200
	slwi	r7, r7, 2				# 200
	lfsx	f1, r6, r7				# 200
	fmul	f1, f1, f2				# 200
	fadd	f0, f0, f1				# 200
	slwi	r6, r8, 2				# 1149
	stfsx	f0, r11, r6				# 1149
	b	beq_cont.16037				# 1148
beq_else.16036:
	cmpw	cr7, r12, r7				# 1151
	bgt	cr7, ble_else.16038				# 1151
	b	ble_cont.16039				# 1151
ble_else.16038:
	slwi	r13, r9, 2				# 1152
	lfsx	f0, r11, r13				# 1152
	slwi	r13, r10, 2				# 1152
	lfsx	f1, r11, r13				# 1152
	slwi	r13, r7, 2				# 1152
	lfsx	f2, r11, r13				# 1152
	fmul	f3, f0, f0				# 103
	lwz	r13, 16(r6)				# 290
	slwi	r14, r9, 2				# 295
	lfsx	f4, r13, r14				# 295
	fmul	f3, f3, f4				# 836
	fmul	f4, f1, f1				# 103
	lwz	r13, 16(r6)				# 300
	slwi	r14, r10, 2				# 305
	lfsx	f5, r13, r14				# 305
	fmul	f4, f4, f5				# 836
	fadd	f3, f3, f4				# 836
	fmul	f4, f2, f2				# 103
	lwz	r13, 16(r6)				# 310
	slwi	r14, r7, 2				# 315
	lfsx	f5, r13, r14				# 315
	fmul	f4, f4, f5				# 836
	fadd	f3, f3, f4				# 836
	lwz	r13, 12(r6)				# 281
	cmpw	cr7, r13, r9				# 838
	bne	cr7, beq_else.16040				# 838
	fmr	f0, f3				# 839
	b	beq_cont.16041				# 838
beq_else.16040:
	fmul	f4, f1, f2				# 842
	lwz	r13, 36(r6)				# 410
	slwi	r9, r9, 2				# 415
	lfsx	f5, r13, r9				# 415
	fmul	f4, f4, f5				# 842
	fadd	f3, f3, f4				# 841
	fmul	f2, f2, f0				# 843
	lwz	r9, 36(r6)				# 420
	slwi	r13, r10, 2				# 425
	lfsx	f4, r9, r13				# 425
	fmul	f2, f2, f4				# 843
	fadd	f2, f3, f2				# 841
	fmul	f0, f0, f1				# 844
	lwz	r6, 36(r6)				# 430
	slwi	r7, r7, 2				# 435
	lfsx	f1, r6, r7				# 435
	fmul	f0, f0, f1				# 844
	fadd	f0, f2, f0				# 841
beq_cont.16041:
	cmpw	cr7, r12, r8				# 1153
	bne	cr7, beq_else.16042				# 1153
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f1, 0(r31)				# 1153
	fsub	f0, f0, f1				# 1153
	b	beq_cont.16043				# 1153
beq_else.16042:
beq_cont.16043:
	slwi	r6, r8, 2				# 1153
	stfsx	f0, r11, r6				# 1153
ble_cont.16039:
beq_cont.16037:
	sub	r5, r5, r10				# 1155
	lwz	r30, 0(r1)				# 1155
	mtspr	9, r30
	bctr				# 1155
ble_else.16035:
	blr
check_all_inside.2753:
	lwz	r6, 28(r1)				# 1207
	lwz	r7, 24(r1)				# 1207
	lwz	r8, 20(r1)				# 1207
	lwz	r9, 16(r1)				# 1207
	lwz	r10, 12(r1)				# 1207
	lwz	r11, 8(r1)				# 1207
	lfs	f3, 4(r1)				# 1207
	slwi	r12, r2, 2				# 1208
	lwzx	r12, r5, r12				# 1208
	cmpw	cr7, r12, r8				# 1209
	bne	cr7, beq_else.16045				# 1209
	addi	r2, 0, 1
	blr
beq_else.16045:
	slwi	r8, r12, 2				# 1212
	lwzx	r6, r6, r8				# 1212
	lwz	r8, 20(r6)				# 330
	slwi	r12, r10, 2				# 335
	lfsx	f4, r8, r12				# 335
	fsub	f4, f0, f4				# 1194
	lwz	r8, 20(r6)				# 340
	slwi	r12, r11, 2				# 345
	lfsx	f5, r8, r12				# 345
	fsub	f5, f1, f5				# 1195
	lwz	r8, 20(r6)				# 350
	slwi	r12, r7, 2				# 355
	lfsx	f6, r8, r12				# 355
	fsub	f6, f2, f6				# 1196
	lwz	r8, 4(r6)				# 252
	stfs	f2, 0(r3)				# 1198
	stfs	f1, 8(r3)				# 1198
	stfs	f0, 16(r3)				# 1198
	stw	r5, 24(r3)				# 1198
	stw	r1, 28(r3)				# 1198
	stw	r11, 32(r3)				# 1198
	stw	r2, 36(r3)				# 1198
	stw	r10, 40(r3)				# 1198
	cmpw	cr7, r8, r11				# 1198
	bne	cr7, beq_else.16046				# 1198
	stw	r7, 44(r3)				# 1171
	stfs	f6, 48(r3)				# 1171
	stfs	f5, 56(r3)				# 1171
	stw	r6, 64(r3)				# 1171
	mfspr	r31, 8				# 1171
	fmr	f0, f4				# 1171
	stw	r31, 68(r3)				# 1171
	addi	r3, r3, 72				# 1171
	bl	min_caml_fabs				# 1171
	addi	r3, r3, -72				# 1171
	lwz	r31, 68(r3)				# 1171
	mtspr	8, r31				# 1171
	lwz	r2, 64(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lwz	r6, 40(r3)				# 295
	slwi	r7, r6, 2				# 295
	lfsx	f1, r5, r7				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16048				# 109
	addi	r5, 0, 0
	b	ble_cont.16049				# 109
ble_else.16048:
	addi	r5, 0, 1
ble_cont.16049:
	cmpw	cr7, r5, r6				# 1171
	bne	cr7, beq_else.16050				# 1171
	addi	r5, 0, 0
	b	beq_cont.16051				# 1171
beq_else.16050:
	lfs	f0, 56(r3)				# 1172
	mfspr	r31, 8				# 1172
	stw	r31, 68(r3)				# 1172
	addi	r3, r3, 72				# 1172
	bl	min_caml_fabs				# 1172
	addi	r3, r3, -72				# 1172
	lwz	r31, 68(r3)				# 1172
	mtspr	8, r31				# 1172
	lwz	r2, 64(r3)				# 300
	lwz	r5, 16(r2)				# 300
	lwz	r6, 32(r3)				# 305
	slwi	r7, r6, 2				# 305
	lfsx	f1, r5, r7				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16052				# 109
	addi	r5, 0, 0
	b	ble_cont.16053				# 109
ble_else.16052:
	addi	r5, 0, 1
ble_cont.16053:
	lwz	r7, 40(r3)				# 1172
	cmpw	cr7, r5, r7				# 1172
	bne	cr7, beq_else.16054				# 1172
	addi	r5, 0, 0
	b	beq_cont.16055				# 1172
beq_else.16054:
	lfs	f0, 48(r3)				# 1173
	mfspr	r31, 8				# 1173
	stw	r31, 68(r3)				# 1173
	addi	r3, r3, 72				# 1173
	bl	min_caml_fabs				# 1173
	addi	r3, r3, -72				# 1173
	lwz	r31, 68(r3)				# 1173
	mtspr	8, r31				# 1173
	lwz	r2, 64(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lwz	r6, 44(r3)				# 315
	slwi	r6, r6, 2				# 315
	lfsx	f1, r5, r6				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16056				# 109
	addi	r5, 0, 0
	b	ble_cont.16057				# 109
ble_else.16056:
	addi	r5, 0, 1
ble_cont.16057:
beq_cont.16055:
beq_cont.16051:
	lwz	r6, 40(r3)				# 1170
	cmpw	cr7, r5, r6				# 1170
	bne	cr7, beq_else.16058				# 1170
	lwz	r2, 24(r2)				# 272
	cmpw	cr7, r2, r6				# 1176
	bne	cr7, beq_else.16060				# 1176
	addi	r2, 0, 1
	b	beq_cont.16061				# 1176
beq_else.16060:
	addi	r2, 0, 0
beq_cont.16061:
	b	beq_cont.16059				# 1170
beq_else.16058:
	lwz	r2, 24(r2)				# 272
beq_cont.16059:
	b	beq_cont.16047				# 1198
beq_else.16046:
	cmpw	cr7, r8, r7				# 1200
	bne	cr7, beq_else.16062				# 1200
	lwz	r8, 16(r6)				# 320
	slwi	r9, r10, 2				# 200
	lfsx	f7, r8, r9				# 200
	fmul	f4, f7, f4				# 200
	slwi	r9, r11, 2				# 200
	lfsx	f7, r8, r9				# 200
	fmul	f5, f7, f5				# 200
	fadd	f4, f4, f5				# 200
	slwi	r7, r7, 2				# 200
	lfsx	f5, r8, r7				# 200
	fmul	f5, f5, f6				# 200
	fadd	f4, f4, f5				# 200
	lwz	r6, 24(r6)				# 272
	fcmpu	cr7, f3, f4				# 115
	bgt	cr7, ble_else.16064				# 115
	addi	r7, 0, 0
	b	ble_cont.16065				# 115
ble_else.16064:
	addi	r7, 0, 1
ble_cont.16065:
	cmpw	cr7, r6, r10				# 119
	bne	cr7, beq_else.16066				# 119
	mr	r6, r7				# 119
	b	beq_cont.16067				# 119
beq_else.16066:
	cmpw	cr7, r7, r10				# 119
	bne	cr7, beq_else.16068				# 119
	addi	r6, 0, 1
	b	beq_cont.16069				# 119
beq_else.16068:
	addi	r6, 0, 0
beq_cont.16069:
beq_cont.16067:
	cmpw	cr7, r6, r10				# 1182
	bne	cr7, beq_else.16070				# 1182
	addi	r2, 0, 1
	b	beq_cont.16071				# 1182
beq_else.16070:
	addi	r2, 0, 0
beq_cont.16071:
	b	beq_cont.16063				# 1200
beq_else.16062:
	fmul	f7, f4, f4				# 103
	lwz	r8, 16(r6)				# 290
	slwi	r12, r10, 2				# 295
	lfsx	f8, r8, r12				# 295
	fmul	f7, f7, f8				# 836
	fmul	f8, f5, f5				# 103
	lwz	r8, 16(r6)				# 300
	slwi	r12, r11, 2				# 305
	lfsx	f9, r8, r12				# 305
	fmul	f8, f8, f9				# 836
	fadd	f7, f7, f8				# 836
	fmul	f8, f6, f6				# 103
	lwz	r8, 16(r6)				# 310
	slwi	r12, r7, 2				# 315
	lfsx	f9, r8, r12				# 315
	fmul	f8, f8, f9				# 836
	fadd	f7, f7, f8				# 836
	lwz	r8, 12(r6)				# 281
	cmpw	cr7, r8, r10				# 838
	bne	cr7, beq_else.16072				# 838
	fmr	f4, f7				# 839
	b	beq_cont.16073				# 838
beq_else.16072:
	fmul	f8, f5, f6				# 842
	lwz	r8, 36(r6)				# 410
	slwi	r12, r10, 2				# 415
	lfsx	f9, r8, r12				# 415
	fmul	f8, f8, f9				# 842
	fadd	f7, f7, f8				# 841
	fmul	f6, f6, f4				# 843
	lwz	r8, 36(r6)				# 420
	slwi	r12, r11, 2				# 425
	lfsx	f8, r8, r12				# 425
	fmul	f6, f6, f8				# 843
	fadd	f6, f7, f6				# 841
	fmul	f4, f4, f5				# 844
	lwz	r8, 36(r6)				# 430
	slwi	r7, r7, 2				# 435
	lfsx	f5, r8, r7				# 435
	fmul	f4, f4, f5				# 844
	fadd	f4, f6, f4				# 841
beq_cont.16073:
	lwz	r7, 4(r6)				# 252
	cmpw	cr7, r7, r9				# 1188
	bne	cr7, beq_else.16074				# 1188
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f5, 0(r31)				# 1188
	fsub	f4, f4, f5				# 1188
	b	beq_cont.16075				# 1188
beq_else.16074:
beq_cont.16075:
	lwz	r6, 24(r6)				# 272
	fcmpu	cr7, f3, f4				# 115
	bgt	cr7, ble_else.16076				# 115
	addi	r7, 0, 0
	b	ble_cont.16077				# 115
ble_else.16076:
	addi	r7, 0, 1
ble_cont.16077:
	cmpw	cr7, r6, r10				# 119
	bne	cr7, beq_else.16078				# 119
	mr	r6, r7				# 119
	b	beq_cont.16079				# 119
beq_else.16078:
	cmpw	cr7, r7, r10				# 119
	bne	cr7, beq_else.16080				# 119
	addi	r6, 0, 1
	b	beq_cont.16081				# 119
beq_else.16080:
	addi	r6, 0, 0
beq_cont.16081:
beq_cont.16079:
	cmpw	cr7, r6, r10				# 1189
	bne	cr7, beq_else.16082				# 1189
	addi	r2, 0, 1
	b	beq_cont.16083				# 1189
beq_else.16082:
	addi	r2, 0, 0
beq_cont.16083:
beq_cont.16063:
beq_cont.16047:
	lwz	r5, 40(r3)				# 1212
	cmpw	cr7, r2, r5				# 1212
	bne	cr7, beq_else.16084				# 1212
	lwz	r2, 32(r3)				# 1215
	lwz	r5, 36(r3)				# 1215
	add	r2, r5, r2				# 1215
	lfs	f0, 16(r3)				# 1215
	lfs	f1, 8(r3)				# 1215
	lfs	f2, 0(r3)				# 1215
	lwz	r5, 24(r3)				# 1215
	lwz	r1, 28(r3)				# 1215
	lwz	r30, 0(r1)				# 1215
	mtspr	9, r30
	bctr				# 1215
beq_else.16084:
	addi	r2, 0, 0
	blr
shadow_check_and_group.2759:
	lwz	r6, 60(r1)				# 1225
	lwz	r7, 56(r1)				# 1225
	lwz	r8, 52(r1)				# 1225
	lwz	r9, 48(r1)				# 1225
	lwz	r10, 44(r1)				# 1225
	lwz	r11, 40(r1)				# 1225
	lwz	r12, 36(r1)				# 1225
	lwz	r13, 32(r1)				# 1225
	lwz	r14, 28(r1)				# 1225
	lwz	r15, 24(r1)				# 1225
	lwz	r16, 20(r1)				# 1225
	lwz	r17, 16(r1)				# 1225
	lwz	r18, 12(r1)				# 1225
	lwz	r19, 8(r1)				# 1225
	lfs	f0, 4(r1)				# 1225
	slwi	r20, r2, 2				# 1226
	lwzx	r20, r5, r20				# 1226
	cmpw	cr7, r20, r16				# 1226
	bne	cr7, beq_else.16085				# 1226
	addi	r2, 0, 0
	blr
beq_else.16085:
	slwi	r16, r2, 2				# 1229
	lwzx	r16, r5, r16				# 1229
	slwi	r20, r16, 2				# 977
	lwzx	r20, r10, r20				# 977
	slwi	r21, r18, 2				# 978
	lfsx	f1, r12, r21				# 978
	lwz	r21, 20(r20)				# 330
	slwi	r22, r18, 2				# 335
	lfsx	f2, r21, r22				# 335
	fsub	f1, f1, f2				# 978
	slwi	r21, r19, 2				# 979
	lfsx	f2, r12, r21				# 979
	lwz	r21, 20(r20)				# 340
	slwi	r22, r19, 2				# 345
	lfsx	f3, r21, r22				# 345
	fsub	f2, f2, f3				# 979
	slwi	r21, r15, 2				# 980
	lfsx	f3, r12, r21				# 980
	lwz	r21, 20(r20)				# 350
	slwi	r22, r15, 2				# 355
	lfsx	f4, r21, r22				# 355
	fsub	f3, f3, f4				# 980
	slwi	r21, r16, 2				# 982
	lwzx	r13, r13, r21				# 982
	lwz	r21, 4(r20)				# 252
	stw	r14, 0(r3)				# 984
	stw	r15, 4(r3)				# 984
	stw	r12, 8(r3)				# 984
	stw	r11, 12(r3)				# 984
	stw	r5, 16(r3)				# 984
	stw	r1, 20(r3)				# 984
	stw	r19, 24(r3)				# 984
	stw	r2, 28(r3)				# 984
	stw	r10, 32(r3)				# 984
	stw	r16, 36(r3)				# 984
	stw	r9, 40(r3)				# 984
	stw	r18, 44(r3)				# 984
	cmpw	cr7, r21, r19				# 984
	bne	cr7, beq_else.16086				# 984
	mfspr	r31, 8				# 985
	mr	r5, r6				# 985
	mr	r2, r20				# 985
	mr	r1, r8				# 985
	mr	r6, r13				# 985
	fmr	f0, f1				# 985
	fmr	f1, f2				# 985
	fmr	f2, f3				# 985
	stw	r31, 48(r3)				# 985
	addi	r3, r3, 52				# 985
	lwz	r31, 0(r1)				# 985
	mtspr	9, r31				# 985
	bctr				# 985
	addi	r3, r3, -52				# 985
	lwz	r31, 48(r3)				# 985
	mtspr	8, r31				# 985
	b	beq_cont.16087				# 984
beq_else.16086:
	cmpw	cr7, r21, r15				# 986
	bne	cr7, beq_else.16088				# 986
	slwi	r6, r18, 2				# 948
	lfsx	f4, r13, r6				# 948
	fcmpu	cr7, f0, f4				# 115
	bgt	cr7, ble_else.16090				# 115
	addi	r6, 0, 0
	b	ble_cont.16091				# 115
ble_else.16090:
	addi	r6, 0, 1
ble_cont.16091:
	cmpw	cr7, r6, r18				# 948
	bne	cr7, beq_else.16092				# 948
	addi	r2, 0, 0
	b	beq_cont.16093				# 948
beq_else.16092:
	slwi	r6, r19, 2				# 950
	lfsx	f0, r13, r6				# 950
	fmul	f0, f0, f1				# 950
	slwi	r6, r15, 2				# 950
	lfsx	f1, r13, r6				# 950
	fmul	f1, f1, f2				# 950
	fadd	f0, f0, f1				# 950
	slwi	r6, r17, 2				# 950
	lfsx	f1, r13, r6				# 950
	fmul	f1, f1, f3				# 950
	fadd	f0, f0, f1				# 950
	slwi	r6, r18, 2				# 949
	stfsx	f0, r9, r6				# 949
	addi	r2, 0, 1
beq_cont.16093:
	b	beq_cont.16089				# 986
beq_else.16088:
	mfspr	r31, 8				# 989
	mr	r5, r13				# 989
	mr	r2, r20				# 989
	mr	r1, r7				# 989
	fmr	f0, f1				# 989
	fmr	f1, f2				# 989
	fmr	f2, f3				# 989
	stw	r31, 48(r3)				# 989
	addi	r3, r3, 52				# 989
	lwz	r31, 0(r1)				# 989
	mtspr	9, r31				# 989
	bctr				# 989
	addi	r3, r3, -52				# 989
	lwz	r31, 48(r3)				# 989
	mtspr	8, r31				# 989
beq_cont.16089:
beq_cont.16087:
	lwz	r5, 44(r3)				# 1231
	slwi	r6, r5, 2				# 1231
	lwz	r7, 40(r3)				# 1231
	lfsx	f0, r7, r6				# 1231
	cmpw	cr7, r2, r5				# 1232
	bne	cr7, beq_else.16094				# 1232
	addi	r2, 0, 0
	b	beq_cont.16095				# 1232
beq_else.16094:
	lis	r31, ha16(l.11954)
	addi	r31, r31, lo16(l.11954)
	lfs	f1, 0(r31)				# 1232
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16096				# 109
	addi	r2, 0, 0
	b	ble_cont.16097				# 109
ble_else.16096:
	addi	r2, 0, 1
ble_cont.16097:
beq_cont.16095:
	cmpw	cr7, r2, r5				# 1232
	bne	cr7, beq_else.16098				# 1232
	lwz	r2, 36(r3)				# 1248
	slwi	r2, r2, 2				# 1248
	lwz	r6, 32(r3)				# 1248
	lwzx	r2, r6, r2				# 1248
	lwz	r2, 24(r2)				# 272
	cmpw	cr7, r2, r5				# 1248
	bne	cr7, beq_else.16099				# 1248
	addi	r2, 0, 0
	blr
beq_else.16099:
	lwz	r2, 24(r3)				# 1249
	lwz	r5, 28(r3)				# 1249
	add	r2, r5, r2				# 1249
	lwz	r5, 16(r3)				# 1249
	lwz	r1, 20(r3)				# 1249
	lwz	r30, 0(r1)				# 1249
	mtspr	9, r30
	bctr				# 1249
beq_else.16098:
	lis	r31, ha16(l.11955)
	addi	r31, r31, lo16(l.11955)
	lfs	f1, 0(r31)				# 1235
	fadd	f0, f0, f1				# 1235
	slwi	r2, r5, 2				# 1236
	lwz	r6, 12(r3)				# 1236
	lfsx	f1, r6, r2				# 1236
	fmul	f1, f1, f0				# 1236
	slwi	r2, r5, 2				# 1236
	lwz	r7, 8(r3)				# 1236
	lfsx	f2, r7, r2				# 1236
	fadd	f1, f1, f2				# 1236
	lwz	r2, 24(r3)				# 1237
	slwi	r8, r2, 2				# 1237
	lfsx	f2, r6, r8				# 1237
	fmul	f2, f2, f0				# 1237
	slwi	r8, r2, 2				# 1237
	lfsx	f3, r7, r8				# 1237
	fadd	f2, f2, f3				# 1237
	lwz	r8, 4(r3)				# 1238
	slwi	r9, r8, 2				# 1238
	lfsx	f3, r6, r9				# 1238
	fmul	f0, f3, f0				# 1238
	slwi	r6, r8, 2				# 1238
	lfsx	f3, r7, r6				# 1238
	fadd	f0, f0, f3				# 1238
	lwz	r6, 16(r3)				# 1239
	lwz	r1, 0(r3)				# 1239
	mfspr	r31, 8				# 1239
	mr	r2, r5				# 1239
	mr	r5, r6				# 1239
	fmr	f31, f2				# 1239
	fmr	f2, f0				# 1239
	fmr	f0, f1				# 1239
	fmr	f1, f31				# 1239
	stw	r31, 48(r3)				# 1239
	addi	r3, r3, 52				# 1239
	lwz	r31, 0(r1)				# 1239
	mtspr	9, r31				# 1239
	bctr				# 1239
	addi	r3, r3, -52				# 1239
	lwz	r31, 48(r3)				# 1239
	mtspr	8, r31				# 1239
	lwz	r5, 44(r3)				# 1239
	cmpw	cr7, r2, r5				# 1239
	bne	cr7, beq_else.16100				# 1239
	lwz	r2, 24(r3)				# 1242
	lwz	r5, 28(r3)				# 1242
	add	r2, r5, r2				# 1242
	lwz	r5, 16(r3)				# 1242
	lwz	r1, 20(r3)				# 1242
	lwz	r30, 0(r1)				# 1242
	mtspr	9, r30
	bctr				# 1242
beq_else.16100:
	addi	r2, 0, 1
	blr
shadow_check_one_or_group.2762:
	lwz	r6, 20(r1)				# 1255
	lwz	r7, 16(r1)				# 1255
	lwz	r8, 12(r1)				# 1255
	lwz	r9, 8(r1)				# 1255
	lwz	r10, 4(r1)				# 1255
	slwi	r11, r2, 2				# 1256
	lwzx	r11, r5, r11				# 1256
	cmpw	cr7, r11, r8				# 1257
	bne	cr7, beq_else.16101				# 1257
	addi	r2, 0, 0
	blr
beq_else.16101:
	slwi	r8, r11, 2				# 1260
	lwzx	r7, r7, r8				# 1260
	stw	r5, 0(r3)				# 1261
	stw	r1, 4(r3)				# 1261
	stw	r10, 8(r3)				# 1261
	stw	r2, 12(r3)				# 1261
	stw	r9, 16(r3)				# 1261
	mfspr	r31, 8				# 1261
	mr	r5, r7				# 1261
	mr	r2, r9				# 1261
	mr	r1, r6				# 1261
	stw	r31, 20(r3)				# 1261
	addi	r3, r3, 24				# 1261
	lwz	r31, 0(r1)				# 1261
	mtspr	9, r31				# 1261
	bctr				# 1261
	addi	r3, r3, -24				# 1261
	lwz	r31, 20(r3)				# 1261
	mtspr	8, r31				# 1261
	lwz	r5, 16(r3)				# 1262
	cmpw	cr7, r2, r5				# 1262
	bne	cr7, beq_else.16102				# 1262
	lwz	r2, 8(r3)				# 1265
	lwz	r5, 12(r3)				# 1265
	add	r2, r5, r2				# 1265
	lwz	r5, 0(r3)				# 1265
	lwz	r1, 4(r3)				# 1265
	lwz	r30, 0(r1)				# 1265
	mtspr	9, r30
	bctr				# 1265
beq_else.16102:
	addi	r2, 0, 1
	blr
shadow_check_one_or_matrix.2765:
	lwz	r6, 56(r1)				# 1270
	lwz	r7, 52(r1)				# 1270
	lwz	r8, 48(r1)				# 1270
	lwz	r9, 44(r1)				# 1270
	lwz	r10, 40(r1)				# 1270
	lwz	r11, 36(r1)				# 1270
	lwz	r12, 32(r1)				# 1270
	lwz	r13, 28(r1)				# 1270
	lwz	r14, 24(r1)				# 1270
	lwz	r15, 20(r1)				# 1270
	lwz	r16, 16(r1)				# 1270
	lwz	r17, 12(r1)				# 1270
	lwz	r18, 8(r1)				# 1270
	lfs	f0, 4(r1)				# 1270
	slwi	r19, r2, 2				# 1271
	lwzx	r19, r5, r19				# 1271
	slwi	r20, r17, 2				# 1272
	lwzx	r20, r19, r20				# 1272
	cmpw	cr7, r20, r15				# 1273
	bne	cr7, beq_else.16103				# 1273
	addi	r2, 0, 0
	blr
beq_else.16103:
	stw	r19, 0(r3)				# 1277
	stw	r10, 4(r3)				# 1277
	stw	r5, 8(r3)				# 1277
	stw	r1, 12(r3)				# 1277
	stw	r18, 16(r3)				# 1277
	stw	r2, 20(r3)				# 1277
	stw	r17, 24(r3)				# 1277
	cmpwi	cr7, r20, 99				# 1277
	bne	cr7, beq_else.16104				# 1277
	addi	r2, 0, 1
	b	beq_cont.16105				# 1277
beq_else.16104:
	slwi	r15, r20, 2				# 977
	lwzx	r11, r11, r15				# 977
	slwi	r15, r17, 2				# 978
	lfsx	f1, r12, r15				# 978
	lwz	r15, 20(r11)				# 330
	slwi	r21, r17, 2				# 335
	lfsx	f2, r15, r21				# 335
	fsub	f1, f1, f2				# 978
	slwi	r15, r18, 2				# 979
	lfsx	f2, r12, r15				# 979
	lwz	r15, 20(r11)				# 340
	slwi	r21, r18, 2				# 345
	lfsx	f3, r15, r21				# 345
	fsub	f2, f2, f3				# 979
	slwi	r15, r14, 2				# 980
	lfsx	f3, r12, r15				# 980
	lwz	r12, 20(r11)				# 350
	slwi	r15, r14, 2				# 355
	lfsx	f4, r12, r15				# 355
	fsub	f3, f3, f4				# 980
	slwi	r12, r20, 2				# 982
	lwzx	r12, r13, r12				# 982
	lwz	r13, 4(r11)				# 252
	stw	r9, 28(r3)				# 984
	cmpw	cr7, r13, r18				# 984
	bne	cr7, beq_else.16106				# 984
	mfspr	r31, 8				# 985
	mr	r5, r6				# 985
	mr	r2, r11				# 985
	mr	r1, r8				# 985
	mr	r6, r12				# 985
	fmr	f0, f1				# 985
	fmr	f1, f2				# 985
	fmr	f2, f3				# 985
	stw	r31, 32(r3)				# 985
	addi	r3, r3, 36				# 985
	lwz	r31, 0(r1)				# 985
	mtspr	9, r31				# 985
	bctr				# 985
	addi	r3, r3, -36				# 985
	lwz	r31, 32(r3)				# 985
	mtspr	8, r31				# 985
	b	beq_cont.16107				# 984
beq_else.16106:
	cmpw	cr7, r13, r14				# 986
	bne	cr7, beq_else.16108				# 986
	slwi	r6, r17, 2				# 948
	lfsx	f4, r12, r6				# 948
	fcmpu	cr7, f0, f4				# 115
	bgt	cr7, ble_else.16110				# 115
	addi	r6, 0, 0
	b	ble_cont.16111				# 115
ble_else.16110:
	addi	r6, 0, 1
ble_cont.16111:
	cmpw	cr7, r6, r17				# 948
	bne	cr7, beq_else.16112				# 948
	addi	r2, 0, 0
	b	beq_cont.16113				# 948
beq_else.16112:
	slwi	r6, r18, 2				# 950
	lfsx	f0, r12, r6				# 950
	fmul	f0, f0, f1				# 950
	slwi	r6, r14, 2				# 950
	lfsx	f1, r12, r6				# 950
	fmul	f1, f1, f2				# 950
	fadd	f0, f0, f1				# 950
	slwi	r6, r16, 2				# 950
	lfsx	f1, r12, r6				# 950
	fmul	f1, f1, f3				# 950
	fadd	f0, f0, f1				# 950
	slwi	r6, r17, 2				# 949
	stfsx	f0, r9, r6				# 949
	addi	r2, 0, 1
beq_cont.16113:
	b	beq_cont.16109				# 986
beq_else.16108:
	mfspr	r31, 8				# 989
	mr	r5, r12				# 989
	mr	r2, r11				# 989
	mr	r1, r7				# 989
	fmr	f0, f1				# 989
	fmr	f1, f2				# 989
	fmr	f2, f3				# 989
	stw	r31, 32(r3)				# 989
	addi	r3, r3, 36				# 989
	lwz	r31, 0(r1)				# 989
	mtspr	9, r31				# 989
	bctr				# 989
	addi	r3, r3, -36				# 989
	lwz	r31, 32(r3)				# 989
	mtspr	8, r31				# 989
beq_cont.16109:
beq_cont.16107:
	lwz	r5, 24(r3)				# 1283
	cmpw	cr7, r2, r5				# 1283
	bne	cr7, beq_else.16114				# 1283
	addi	r2, 0, 0
	b	beq_cont.16115				# 1283
beq_else.16114:
	slwi	r2, r5, 2				# 1284
	lwz	r6, 28(r3)				# 1284
	lfsx	f0, r6, r2				# 1284
	lis	r31, ha16(l.11981)
	addi	r31, r31, lo16(l.11981)
	lfs	f1, 0(r31)				# 1284
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16116				# 109
	addi	r2, 0, 0
	b	ble_cont.16117				# 109
ble_else.16116:
	addi	r2, 0, 1
ble_cont.16117:
	cmpw	cr7, r2, r5				# 1284
	bne	cr7, beq_else.16118				# 1284
	addi	r2, 0, 0
	b	beq_cont.16119				# 1284
beq_else.16118:
	lwz	r2, 16(r3)				# 1285
	lwz	r6, 0(r3)				# 1285
	lwz	r1, 4(r3)				# 1285
	mfspr	r31, 8				# 1285
	mr	r5, r6				# 1285
	stw	r31, 32(r3)				# 1285
	addi	r3, r3, 36				# 1285
	lwz	r31, 0(r1)				# 1285
	mtspr	9, r31				# 1285
	bctr				# 1285
	addi	r3, r3, -36				# 1285
	lwz	r31, 32(r3)				# 1285
	mtspr	8, r31				# 1285
	lwz	r5, 24(r3)				# 1285
	cmpw	cr7, r2, r5				# 1285
	bne	cr7, beq_else.16120				# 1285
	addi	r2, 0, 0
	b	beq_cont.16121				# 1285
beq_else.16120:
	addi	r2, 0, 1
beq_cont.16121:
beq_cont.16119:
beq_cont.16115:
beq_cont.16105:
	lwz	r5, 24(r3)				# 1276
	cmpw	cr7, r2, r5				# 1276
	bne	cr7, beq_else.16122				# 1276
	lwz	r2, 16(r3)				# 1296
	lwz	r5, 20(r3)				# 1296
	add	r2, r5, r2				# 1296
	lwz	r5, 8(r3)				# 1296
	lwz	r1, 12(r3)				# 1296
	lwz	r30, 0(r1)				# 1296
	mtspr	9, r30
	bctr				# 1296
beq_else.16122:
	lwz	r2, 16(r3)				# 1291
	lwz	r6, 0(r3)				# 1291
	lwz	r1, 4(r3)				# 1291
	mfspr	r31, 8				# 1291
	mr	r5, r6				# 1291
	stw	r31, 32(r3)				# 1291
	addi	r3, r3, 36				# 1291
	lwz	r31, 0(r1)				# 1291
	mtspr	9, r31				# 1291
	bctr				# 1291
	addi	r3, r3, -36				# 1291
	lwz	r31, 32(r3)				# 1291
	mtspr	8, r31				# 1291
	lwz	r5, 24(r3)				# 1291
	cmpw	cr7, r2, r5				# 1291
	bne	cr7, beq_else.16123				# 1291
	lwz	r2, 16(r3)				# 1294
	lwz	r5, 20(r3)				# 1294
	add	r2, r5, r2				# 1294
	lwz	r5, 8(r3)				# 1294
	lwz	r1, 12(r3)				# 1294
	lwz	r30, 0(r1)				# 1294
	mtspr	9, r30
	bctr				# 1294
beq_else.16123:
	addi	r2, 0, 1
	blr
solve_each_element.2768:
	lwz	r7, 60(r1)				# 1304
	lwz	r8, 56(r1)				# 1304
	lwz	r9, 52(r1)				# 1304
	lwz	r10, 48(r1)				# 1304
	lwz	r11, 44(r1)				# 1304
	lwz	r12, 40(r1)				# 1304
	lwz	r13, 36(r1)				# 1304
	lwz	r14, 32(r1)				# 1304
	lwz	r15, 28(r1)				# 1304
	lwz	r16, 24(r1)				# 1304
	lwz	r17, 20(r1)				# 1304
	lwz	r18, 16(r1)				# 1304
	lwz	r19, 12(r1)				# 1304
	lwz	r20, 8(r1)				# 1304
	lfs	f0, 4(r1)				# 1304
	slwi	r21, r2, 2				# 1305
	lwzx	r21, r5, r21				# 1305
	cmpw	cr7, r21, r18				# 1306
	bne	cr7, beq_else.16124				# 1306
	blr
beq_else.16124:
	slwi	r18, r21, 2				# 898
	lwzx	r18, r12, r18				# 898
	slwi	r22, r19, 2				# 900
	lfsx	f1, r8, r22				# 900
	lwz	r22, 20(r18)				# 330
	slwi	r23, r19, 2				# 335
	lfsx	f2, r22, r23				# 335
	fsub	f1, f1, f2				# 900
	slwi	r22, r20, 2				# 901
	lfsx	f2, r8, r22				# 901
	lwz	r22, 20(r18)				# 340
	slwi	r23, r20, 2				# 345
	lfsx	f3, r22, r23				# 345
	fsub	f2, f2, f3				# 901
	slwi	r22, r17, 2				# 902
	lfsx	f3, r8, r22				# 902
	lwz	r22, 20(r18)				# 350
	slwi	r23, r17, 2				# 355
	lfsx	f4, r22, r23				# 355
	fsub	f3, f3, f4				# 902
	lwz	r22, 4(r18)				# 252
	stw	r13, 0(r3)				# 905
	stw	r15, 4(r3)				# 905
	stw	r14, 8(r3)				# 905
	stw	r16, 12(r3)				# 905
	stw	r17, 16(r3)				# 905
	stw	r8, 20(r3)				# 905
	stw	r7, 24(r3)				# 905
	stfs	f0, 32(r3)				# 905
	stw	r11, 40(r3)				# 905
	stw	r6, 44(r3)				# 905
	stw	r5, 48(r3)				# 905
	stw	r1, 52(r3)				# 905
	stw	r20, 56(r3)				# 905
	stw	r2, 60(r3)				# 905
	stw	r12, 64(r3)				# 905
	stw	r21, 68(r3)				# 905
	stw	r19, 72(r3)				# 905
	cmpw	cr7, r22, r20				# 905
	bne	cr7, beq_else.16127				# 905
	mfspr	r31, 8				# 905
	mr	r5, r6				# 905
	mr	r2, r18				# 905
	mr	r1, r10				# 905
	fmr	f0, f1				# 905
	fmr	f1, f2				# 905
	fmr	f2, f3				# 905
	stw	r31, 76(r3)				# 905
	addi	r3, r3, 80				# 905
	lwz	r31, 0(r1)				# 905
	mtspr	9, r31				# 905
	bctr				# 905
	addi	r3, r3, -80				# 905
	lwz	r31, 76(r3)				# 905
	mtspr	8, r31				# 905
	b	beq_cont.16128				# 905
beq_else.16127:
	cmpw	cr7, r22, r17				# 906
	bne	cr7, beq_else.16129				# 906
	lwz	r9, 16(r18)				# 320
	slwi	r10, r19, 2				# 195
	lfsx	f4, r6, r10				# 195
	slwi	r10, r19, 2				# 195
	lfsx	f5, r9, r10				# 195
	fmul	f4, f4, f5				# 195
	slwi	r10, r20, 2				# 195
	lfsx	f5, r6, r10				# 195
	slwi	r10, r20, 2				# 195
	lfsx	f6, r9, r10				# 195
	fmul	f5, f5, f6				# 195
	fadd	f4, f4, f5				# 195
	slwi	r10, r17, 2				# 195
	lfsx	f5, r6, r10				# 195
	slwi	r10, r17, 2				# 195
	lfsx	f6, r9, r10				# 195
	fmul	f5, f5, f6				# 195
	fadd	f4, f4, f5				# 195
	fcmpu	cr7, f4, f0				# 113
	bgt	cr7, ble_else.16131				# 113
	addi	r10, 0, 0
	b	ble_cont.16132				# 113
ble_else.16131:
	addi	r10, 0, 1
ble_cont.16132:
	cmpw	cr7, r10, r19				# 825
	bne	cr7, beq_else.16133				# 825
	addi	r2, 0, 0
	b	beq_cont.16134				# 825
beq_else.16133:
	slwi	r10, r19, 2				# 200
	lfsx	f5, r9, r10				# 200
	fmul	f1, f5, f1				# 200
	slwi	r10, r20, 2				# 200
	lfsx	f5, r9, r10				# 200
	fmul	f2, f5, f2				# 200
	fadd	f1, f1, f2				# 200
	slwi	r10, r17, 2				# 200
	lfsx	f2, r9, r10				# 200
	fmul	f2, f2, f3				# 200
	fadd	f1, f1, f2				# 200
	fneg	f1, f1				# 107
	fdiv	f1, f1, f4				# 826
	slwi	r9, r19, 2				# 826
	stfsx	f1, r11, r9				# 826
	addi	r2, 0, 1
beq_cont.16134:
	b	beq_cont.16130				# 906
beq_else.16129:
	mfspr	r31, 8				# 907
	mr	r5, r6				# 907
	mr	r2, r18				# 907
	mr	r1, r9				# 907
	fmr	f0, f1				# 907
	fmr	f1, f2				# 907
	fmr	f2, f3				# 907
	stw	r31, 76(r3)				# 907
	addi	r3, r3, 80				# 907
	lwz	r31, 0(r1)				# 907
	mtspr	9, r31				# 907
	bctr				# 907
	addi	r3, r3, -80				# 907
	lwz	r31, 76(r3)				# 907
	mtspr	8, r31				# 907
beq_cont.16130:
beq_cont.16128:
	lwz	r5, 72(r3)				# 1309
	cmpw	cr7, r2, r5				# 1309
	bne	cr7, beq_else.16135				# 1309
	lwz	r2, 68(r3)				# 1337
	slwi	r2, r2, 2				# 1337
	lwz	r6, 64(r3)				# 1337
	lwzx	r2, r6, r2				# 1337
	lwz	r2, 24(r2)				# 272
	cmpw	cr7, r2, r5				# 1337
	bne	cr7, beq_else.16136				# 1337
	blr
beq_else.16136:
	lwz	r2, 56(r3)				# 1338
	lwz	r5, 60(r3)				# 1338
	add	r2, r5, r2				# 1338
	lwz	r5, 48(r3)				# 1338
	lwz	r6, 44(r3)				# 1338
	lwz	r1, 52(r3)				# 1338
	lwz	r30, 0(r1)				# 1338
	mtspr	9, r30
	bctr				# 1338
beq_else.16135:
	slwi	r6, r5, 2				# 1313
	lwz	r7, 40(r3)				# 1313
	lfsx	f0, r7, r6				# 1313
	lfs	f1, 32(r3)				# 109
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.16138				# 109
	addi	r6, 0, 0
	b	ble_cont.16139				# 109
ble_else.16138:
	addi	r6, 0, 1
ble_cont.16139:
	cmpw	cr7, r6, r5				# 1315
	bne	cr7, beq_else.16140				# 1315
	b	beq_cont.16141				# 1315
beq_else.16140:
	slwi	r6, r5, 2				# 1316
	lwz	r7, 24(r3)				# 1316
	lfsx	f1, r7, r6				# 1316
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16142				# 109
	addi	r6, 0, 0
	b	ble_cont.16143				# 109
ble_else.16142:
	addi	r6, 0, 1
ble_cont.16143:
	cmpw	cr7, r6, r5				# 1316
	bne	cr7, beq_else.16144				# 1316
	b	beq_cont.16145				# 1316
beq_else.16144:
	lis	r31, ha16(l.11955)
	addi	r31, r31, lo16(l.11955)
	lfs	f1, 0(r31)				# 1318
	fadd	f0, f0, f1				# 1318
	slwi	r6, r5, 2				# 1319
	lwz	r8, 44(r3)				# 1319
	lfsx	f1, r8, r6				# 1319
	fmul	f1, f1, f0				# 1319
	slwi	r6, r5, 2				# 1319
	lwz	r9, 20(r3)				# 1319
	lfsx	f2, r9, r6				# 1319
	fadd	f1, f1, f2				# 1319
	lwz	r6, 56(r3)				# 1320
	slwi	r10, r6, 2				# 1320
	lfsx	f2, r8, r10				# 1320
	fmul	f2, f2, f0				# 1320
	slwi	r10, r6, 2				# 1320
	lfsx	f3, r9, r10				# 1320
	fadd	f2, f2, f3				# 1320
	lwz	r10, 16(r3)				# 1321
	slwi	r11, r10, 2				# 1321
	lfsx	f3, r8, r11				# 1321
	fmul	f3, f3, f0				# 1321
	slwi	r11, r10, 2				# 1321
	lfsx	f4, r9, r11				# 1321
	fadd	f3, f3, f4				# 1321
	lwz	r9, 48(r3)				# 1322
	lwz	r1, 12(r3)				# 1322
	stw	r2, 76(r3)				# 1322
	stfs	f3, 80(r3)				# 1322
	stfs	f2, 88(r3)				# 1322
	stfs	f1, 96(r3)				# 1322
	stfs	f0, 104(r3)				# 1322
	mfspr	r31, 8				# 1322
	mr	r2, r5				# 1322
	mr	r5, r9				# 1322
	fmr	f0, f1				# 1322
	fmr	f1, f2				# 1322
	fmr	f2, f3				# 1322
	stw	r31, 112(r3)				# 1322
	addi	r3, r3, 116				# 1322
	lwz	r31, 0(r1)				# 1322
	mtspr	9, r31				# 1322
	bctr				# 1322
	addi	r3, r3, -116				# 1322
	lwz	r31, 112(r3)				# 1322
	mtspr	8, r31				# 1322
	lwz	r5, 72(r3)				# 1322
	cmpw	cr7, r2, r5				# 1322
	bne	cr7, beq_else.16146				# 1322
	b	beq_cont.16147				# 1322
beq_else.16146:
	slwi	r2, r5, 2				# 1324
	lwz	r6, 24(r3)				# 1324
	lfs	f0, 104(r3)				# 1324
	stfsx	f0, r6, r2				# 1324
	slwi	r2, r5, 2				# 147
	lwz	r6, 8(r3)				# 147
	lfs	f0, 96(r3)				# 147
	stfsx	f0, r6, r2				# 147
	lwz	r2, 56(r3)				# 148
	slwi	r7, r2, 2				# 148
	lfs	f0, 88(r3)				# 148
	stfsx	f0, r6, r7				# 148
	lwz	r7, 16(r3)				# 149
	slwi	r7, r7, 2				# 149
	lfs	f0, 80(r3)				# 149
	stfsx	f0, r6, r7				# 149
	slwi	r6, r5, 2				# 1326
	lwz	r7, 4(r3)				# 1326
	lwz	r8, 68(r3)				# 1326
	stwx	r8, r7, r6				# 1326
	slwi	r5, r5, 2				# 1327
	lwz	r6, 0(r3)				# 1327
	lwz	r7, 76(r3)				# 1327
	stwx	r7, r6, r5				# 1327
beq_cont.16147:
beq_cont.16145:
beq_cont.16141:
	lwz	r2, 56(r3)				# 1333
	lwz	r5, 60(r3)				# 1333
	add	r2, r5, r2				# 1333
	lwz	r5, 48(r3)				# 1333
	lwz	r6, 44(r3)				# 1333
	lwz	r1, 52(r3)				# 1333
	lwz	r30, 0(r1)				# 1333
	mtspr	9, r30
	bctr				# 1333
solve_one_or_network.2772:
	lwz	r7, 20(r1)				# 1345
	lwz	r8, 16(r1)				# 1345
	lwz	r9, 12(r1)				# 1345
	lwz	r10, 8(r1)				# 1345
	lwz	r11, 4(r1)				# 1345
	slwi	r12, r2, 2				# 1346
	lwzx	r12, r5, r12				# 1346
	cmpw	cr7, r12, r9				# 1347
	bne	cr7, beq_else.16148				# 1347
	blr
beq_else.16148:
	slwi	r9, r12, 2				# 1348
	lwzx	r8, r8, r9				# 1348
	stw	r6, 0(r3)				# 1349
	stw	r5, 4(r3)				# 1349
	stw	r1, 8(r3)				# 1349
	stw	r11, 12(r3)				# 1349
	stw	r2, 16(r3)				# 1349
	mfspr	r31, 8				# 1349
	mr	r5, r8				# 1349
	mr	r2, r10				# 1349
	mr	r1, r7				# 1349
	stw	r31, 20(r3)				# 1349
	addi	r3, r3, 24				# 1349
	lwz	r31, 0(r1)				# 1349
	mtspr	9, r31				# 1349
	bctr				# 1349
	addi	r3, r3, -24				# 1349
	lwz	r31, 20(r3)				# 1349
	mtspr	8, r31				# 1349
	lwz	r2, 12(r3)				# 1350
	lwz	r5, 16(r3)				# 1350
	add	r2, r5, r2				# 1350
	lwz	r5, 4(r3)				# 1350
	lwz	r6, 0(r3)				# 1350
	lwz	r1, 8(r3)				# 1350
	lwz	r30, 0(r1)				# 1350
	mtspr	9, r30
	bctr				# 1350
trace_or_matrix.2776:
	lwz	r7, 48(r1)				# 1355
	lwz	r8, 44(r1)				# 1355
	lwz	r9, 40(r1)				# 1355
	lwz	r10, 36(r1)				# 1355
	lwz	r11, 32(r1)				# 1355
	lwz	r12, 28(r1)				# 1355
	lwz	r13, 24(r1)				# 1355
	lwz	r14, 20(r1)				# 1355
	lwz	r15, 16(r1)				# 1355
	lwz	r16, 12(r1)				# 1355
	lwz	r17, 8(r1)				# 1355
	lfs	f0, 4(r1)				# 1355
	slwi	r18, r2, 2				# 1356
	lwzx	r18, r5, r18				# 1356
	slwi	r19, r16, 2				# 1357
	lwzx	r19, r18, r19				# 1357
	cmpw	cr7, r19, r15				# 1358
	bne	cr7, beq_else.16150				# 1358
	blr
beq_else.16150:
	stw	r6, 0(r3)				# 1361
	stw	r5, 4(r3)				# 1361
	stw	r1, 8(r3)				# 1361
	stw	r17, 12(r3)				# 1361
	stw	r2, 16(r3)				# 1361
	cmpwi	cr7, r19, 99				# 1361
	bne	cr7, beq_else.16152				# 1361
	mfspr	r31, 8				# 1362
	mr	r5, r18				# 1362
	mr	r2, r17				# 1362
	mr	r1, r12				# 1362
	stw	r31, 20(r3)				# 1362
	addi	r3, r3, 24				# 1362
	lwz	r31, 0(r1)				# 1362
	mtspr	9, r31				# 1362
	bctr				# 1362
	addi	r3, r3, -24				# 1362
	lwz	r31, 20(r3)				# 1362
	mtspr	8, r31				# 1362
	b	beq_cont.16153				# 1361
beq_else.16152:
	slwi	r15, r19, 2				# 898
	lwzx	r13, r13, r15				# 898
	slwi	r15, r16, 2				# 900
	lfsx	f1, r8, r15				# 900
	lwz	r15, 20(r13)				# 330
	slwi	r19, r16, 2				# 335
	lfsx	f2, r15, r19				# 335
	fsub	f1, f1, f2				# 900
	slwi	r15, r17, 2				# 901
	lfsx	f2, r8, r15				# 901
	lwz	r15, 20(r13)				# 340
	slwi	r19, r17, 2				# 345
	lfsx	f3, r15, r19				# 345
	fsub	f2, f2, f3				# 901
	slwi	r15, r14, 2				# 902
	lfsx	f3, r8, r15				# 902
	lwz	r8, 20(r13)				# 350
	slwi	r15, r14, 2				# 355
	lfsx	f4, r8, r15				# 355
	fsub	f3, f3, f4				# 902
	lwz	r8, 4(r13)				# 252
	stw	r18, 20(r3)				# 905
	stw	r12, 24(r3)				# 905
	stw	r7, 28(r3)				# 905
	stw	r11, 32(r3)				# 905
	stw	r16, 36(r3)				# 905
	cmpw	cr7, r8, r17				# 905
	bne	cr7, beq_else.16154				# 905
	mfspr	r31, 8				# 905
	mr	r5, r6				# 905
	mr	r2, r13				# 905
	mr	r1, r10				# 905
	fmr	f0, f1				# 905
	fmr	f1, f2				# 905
	fmr	f2, f3				# 905
	stw	r31, 40(r3)				# 905
	addi	r3, r3, 44				# 905
	lwz	r31, 0(r1)				# 905
	mtspr	9, r31				# 905
	bctr				# 905
	addi	r3, r3, -44				# 905
	lwz	r31, 40(r3)				# 905
	mtspr	8, r31				# 905
	b	beq_cont.16155				# 905
beq_else.16154:
	cmpw	cr7, r8, r14				# 906
	bne	cr7, beq_else.16156				# 906
	lwz	r8, 16(r13)				# 320
	slwi	r9, r16, 2				# 195
	lfsx	f4, r6, r9				# 195
	slwi	r9, r16, 2				# 195
	lfsx	f5, r8, r9				# 195
	fmul	f4, f4, f5				# 195
	slwi	r9, r17, 2				# 195
	lfsx	f5, r6, r9				# 195
	slwi	r9, r17, 2				# 195
	lfsx	f6, r8, r9				# 195
	fmul	f5, f5, f6				# 195
	fadd	f4, f4, f5				# 195
	slwi	r9, r14, 2				# 195
	lfsx	f5, r6, r9				# 195
	slwi	r9, r14, 2				# 195
	lfsx	f6, r8, r9				# 195
	fmul	f5, f5, f6				# 195
	fadd	f4, f4, f5				# 195
	fcmpu	cr7, f4, f0				# 113
	bgt	cr7, ble_else.16158				# 113
	addi	r9, 0, 0
	b	ble_cont.16159				# 113
ble_else.16158:
	addi	r9, 0, 1
ble_cont.16159:
	cmpw	cr7, r9, r16				# 825
	bne	cr7, beq_else.16160				# 825
	addi	r2, 0, 0
	b	beq_cont.16161				# 825
beq_else.16160:
	slwi	r9, r16, 2				# 200
	lfsx	f0, r8, r9				# 200
	fmul	f0, f0, f1				# 200
	slwi	r9, r17, 2				# 200
	lfsx	f1, r8, r9				# 200
	fmul	f1, f1, f2				# 200
	fadd	f0, f0, f1				# 200
	slwi	r9, r14, 2				# 200
	lfsx	f1, r8, r9				# 200
	fmul	f1, f1, f3				# 200
	fadd	f0, f0, f1				# 200
	fneg	f0, f0				# 107
	fdiv	f0, f0, f4				# 826
	slwi	r8, r16, 2				# 826
	stfsx	f0, r11, r8				# 826
	addi	r2, 0, 1
beq_cont.16161:
	b	beq_cont.16157				# 906
beq_else.16156:
	mfspr	r31, 8				# 907
	mr	r5, r6				# 907
	mr	r2, r13				# 907
	mr	r1, r9				# 907
	fmr	f0, f1				# 907
	fmr	f1, f2				# 907
	fmr	f2, f3				# 907
	stw	r31, 40(r3)				# 907
	addi	r3, r3, 44				# 907
	lwz	r31, 0(r1)				# 907
	mtspr	9, r31				# 907
	bctr				# 907
	addi	r3, r3, -44				# 907
	lwz	r31, 40(r3)				# 907
	mtspr	8, r31				# 907
beq_cont.16157:
beq_cont.16155:
	lwz	r5, 36(r3)				# 1367
	cmpw	cr7, r2, r5				# 1367
	bne	cr7, beq_else.16162				# 1367
	b	beq_cont.16163				# 1367
beq_else.16162:
	slwi	r2, r5, 2				# 1368
	lwz	r6, 32(r3)				# 1368
	lfsx	f0, r6, r2				# 1368
	slwi	r2, r5, 2				# 1369
	lwz	r6, 28(r3)				# 1369
	lfsx	f1, r6, r2				# 1369
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16164				# 109
	addi	r2, 0, 0
	b	ble_cont.16165				# 109
ble_else.16164:
	addi	r2, 0, 1
ble_cont.16165:
	cmpw	cr7, r2, r5				# 1369
	bne	cr7, beq_else.16166				# 1369
	b	beq_cont.16167				# 1369
beq_else.16166:
	lwz	r2, 12(r3)				# 1370
	lwz	r5, 20(r3)				# 1370
	lwz	r6, 0(r3)				# 1370
	lwz	r1, 24(r3)				# 1370
	mfspr	r31, 8				# 1370
	stw	r31, 40(r3)				# 1370
	addi	r3, r3, 44				# 1370
	lwz	r31, 0(r1)				# 1370
	mtspr	9, r31				# 1370
	bctr				# 1370
	addi	r3, r3, -44				# 1370
	lwz	r31, 40(r3)				# 1370
	mtspr	8, r31				# 1370
beq_cont.16167:
beq_cont.16163:
beq_cont.16153:
	lwz	r2, 12(r3)				# 1374
	lwz	r5, 16(r3)				# 1374
	add	r2, r5, r2				# 1374
	lwz	r5, 4(r3)				# 1374
	lwz	r6, 0(r3)				# 1374
	lwz	r1, 8(r3)				# 1374
	lwz	r30, 0(r1)				# 1374
	mtspr	9, r30
	bctr				# 1374
solve_each_element_fast.2782:
	lwz	r7, 60(r1)				# 1395
	lwz	r8, 56(r1)				# 1395
	lwz	r9, 52(r1)				# 1395
	lwz	r10, 48(r1)				# 1395
	lwz	r11, 44(r1)				# 1395
	lwz	r12, 40(r1)				# 1395
	lwz	r13, 36(r1)				# 1395
	lwz	r14, 32(r1)				# 1395
	lwz	r15, 28(r1)				# 1395
	lwz	r16, 24(r1)				# 1395
	lwz	r17, 20(r1)				# 1395
	lwz	r18, 16(r1)				# 1395
	lwz	r19, 12(r1)				# 1395
	lwz	r20, 8(r1)				# 1395
	lfs	f0, 4(r1)				# 1395
	lwz	r21, 0(r6)				# 521
	slwi	r22, r2, 2				# 1397
	lwzx	r22, r5, r22				# 1397
	cmpw	cr7, r22, r17				# 1398
	bne	cr7, beq_else.16168				# 1398
	blr
beq_else.16168:
	slwi	r17, r22, 2				# 1024
	lwzx	r17, r11, r17				# 1024
	lwz	r23, 40(r17)				# 441
	slwi	r24, r19, 2				# 1026
	lfsx	f1, r23, r24				# 1026
	slwi	r24, r20, 2				# 1027
	lfsx	f2, r23, r24				# 1027
	slwi	r24, r16, 2				# 1028
	lfsx	f3, r23, r24				# 1028
	lwz	r24, 4(r6)				# 527
	slwi	r25, r22, 2				# 1030
	lwzx	r24, r24, r25				# 1030
	lwz	r25, 4(r17)				# 252
	stw	r12, 0(r3)				# 1032
	stw	r14, 4(r3)				# 1032
	stw	r13, 8(r3)				# 1032
	stw	r15, 12(r3)				# 1032
	stw	r16, 16(r3)				# 1032
	stw	r8, 20(r3)				# 1032
	stw	r21, 24(r3)				# 1032
	stw	r7, 28(r3)				# 1032
	stfs	f0, 32(r3)				# 1032
	stw	r10, 40(r3)				# 1032
	stw	r6, 44(r3)				# 1032
	stw	r5, 48(r3)				# 1032
	stw	r1, 52(r3)				# 1032
	stw	r20, 56(r3)				# 1032
	stw	r2, 60(r3)				# 1032
	stw	r11, 64(r3)				# 1032
	stw	r22, 68(r3)				# 1032
	stw	r19, 72(r3)				# 1032
	cmpw	cr7, r25, r20				# 1032
	bne	cr7, beq_else.16170				# 1032
	lwz	r18, 0(r6)				# 521
	mfspr	r31, 8				# 1033
	mr	r6, r24				# 1033
	mr	r5, r18				# 1033
	mr	r2, r17				# 1033
	mr	r1, r9				# 1033
	fmr	f0, f1				# 1033
	fmr	f1, f2				# 1033
	fmr	f2, f3				# 1033
	stw	r31, 76(r3)				# 1033
	addi	r3, r3, 80				# 1033
	lwz	r31, 0(r1)				# 1033
	mtspr	9, r31				# 1033
	bctr				# 1033
	addi	r3, r3, -80				# 1033
	lwz	r31, 76(r3)				# 1033
	mtspr	8, r31				# 1033
	b	beq_cont.16171				# 1032
beq_else.16170:
	cmpw	cr7, r25, r16				# 1034
	bne	cr7, beq_else.16172				# 1034
	slwi	r9, r19, 2				# 997
	lfsx	f1, r24, r9				# 997
	fcmpu	cr7, f0, f1				# 115
	bgt	cr7, ble_else.16174				# 115
	addi	r9, 0, 0
	b	ble_cont.16175				# 115
ble_else.16174:
	addi	r9, 0, 1
ble_cont.16175:
	cmpw	cr7, r9, r19				# 997
	bne	cr7, beq_else.16176				# 997
	addi	r2, 0, 0
	b	beq_cont.16177				# 997
beq_else.16176:
	slwi	r9, r19, 2				# 998
	lfsx	f1, r24, r9				# 998
	slwi	r9, r18, 2				# 998
	lfsx	f2, r23, r9				# 998
	fmul	f1, f1, f2				# 998
	slwi	r9, r19, 2				# 998
	stfsx	f1, r10, r9				# 998
	addi	r2, 0, 1
beq_cont.16177:
	b	beq_cont.16173				# 1034
beq_else.16172:
	slwi	r9, r19, 2				# 1006
	lfsx	f4, r24, r9				# 1006
	fcmpu	cr7, f4, f0				# 111
	bne	cr7, beq_else.16178				# 111
	addi	r9, 0, 1
	b	beq_cont.16179				# 111
beq_else.16178:
	addi	r9, 0, 0
beq_cont.16179:
	cmpw	cr7, r9, r19				# 1007
	bne	cr7, beq_else.16180				# 1007
	slwi	r9, r20, 2				# 1010
	lfsx	f5, r24, r9				# 1010
	fmul	f1, f5, f1				# 1010
	slwi	r9, r16, 2				# 1010
	lfsx	f5, r24, r9				# 1010
	fmul	f2, f5, f2				# 1010
	fadd	f1, f1, f2				# 1010
	slwi	r9, r18, 2				# 1010
	lfsx	f2, r24, r9				# 1010
	fmul	f2, f2, f3				# 1010
	fadd	f1, f1, f2				# 1010
	slwi	r9, r18, 2				# 1011
	lfsx	f2, r23, r9				# 1011
	fmul	f3, f1, f1				# 103
	fmul	f2, f4, f2				# 1012
	fsub	f2, f3, f2				# 1012
	fcmpu	cr7, f2, f0				# 113
	bgt	cr7, ble_else.16182				# 113
	addi	r9, 0, 0
	b	ble_cont.16183				# 113
ble_else.16182:
	addi	r9, 0, 1
ble_cont.16183:
	cmpw	cr7, r9, r19				# 1013
	bne	cr7, beq_else.16184				# 1013
	addi	r2, 0, 0
	b	beq_cont.16185				# 1013
beq_else.16184:
	lwz	r9, 24(r17)				# 272
	cmpw	cr7, r9, r19				# 1014
	bne	cr7, beq_else.16186				# 1014
	stw	r24, 76(r3)				# 1017
	stfs	f1, 80(r3)				# 1017
	mfspr	r31, 8				# 1017
	fmr	f0, f2				# 1017
	stw	r31, 88(r3)				# 1017
	addi	r3, r3, 92				# 1017
	bl	min_caml_sqrt				# 1017
	addi	r3, r3, -92				# 1017
	lwz	r31, 88(r3)				# 1017
	mtspr	8, r31				# 1017
	lfs	f1, 80(r3)				# 1017
	fsub	f0, f1, f0				# 1017
	lwz	r2, 76(r3)				# 1017
	lfs	f1, 16(r2)				# 1017
	fmul	f0, f0, f1				# 1017
	lwz	r2, 72(r3)				# 1017
	slwi	r5, r2, 2				# 1017
	lwz	r6, 40(r3)				# 1017
	stfsx	f0, r6, r5				# 1017
	b	beq_cont.16187				# 1014
beq_else.16186:
	stw	r24, 76(r3)				# 1015
	stfs	f1, 80(r3)				# 1015
	mfspr	r31, 8				# 1015
	fmr	f0, f2				# 1015
	stw	r31, 88(r3)				# 1015
	addi	r3, r3, 92				# 1015
	bl	min_caml_sqrt				# 1015
	addi	r3, r3, -92				# 1015
	lwz	r31, 88(r3)				# 1015
	mtspr	8, r31				# 1015
	lfs	f1, 80(r3)				# 1015
	fadd	f0, f1, f0				# 1015
	lwz	r2, 76(r3)				# 1015
	lfs	f1, 16(r2)				# 1015
	fmul	f0, f0, f1				# 1015
	lwz	r2, 72(r3)				# 1015
	slwi	r5, r2, 2				# 1015
	lwz	r6, 40(r3)				# 1015
	stfsx	f0, r6, r5				# 1015
beq_cont.16187:
	addi	r2, 0, 1
beq_cont.16185:
	b	beq_cont.16181				# 1007
beq_else.16180:
	addi	r2, 0, 0
beq_cont.16181:
beq_cont.16173:
beq_cont.16171:
	lwz	r5, 72(r3)				# 1401
	cmpw	cr7, r2, r5				# 1401
	bne	cr7, beq_else.16188				# 1401
	lwz	r2, 68(r3)				# 1429
	slwi	r2, r2, 2				# 1429
	lwz	r6, 64(r3)				# 1429
	lwzx	r2, r6, r2				# 1429
	lwz	r2, 24(r2)				# 272
	cmpw	cr7, r2, r5				# 1429
	bne	cr7, beq_else.16189				# 1429
	blr
beq_else.16189:
	lwz	r2, 56(r3)				# 1430
	lwz	r5, 60(r3)				# 1430
	add	r2, r5, r2				# 1430
	lwz	r5, 48(r3)				# 1430
	lwz	r6, 44(r3)				# 1430
	lwz	r1, 52(r3)				# 1430
	lwz	r30, 0(r1)				# 1430
	mtspr	9, r30
	bctr				# 1430
beq_else.16188:
	slwi	r6, r5, 2				# 1405
	lwz	r7, 40(r3)				# 1405
	lfsx	f0, r7, r6				# 1405
	lfs	f1, 32(r3)				# 109
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.16191				# 109
	addi	r6, 0, 0
	b	ble_cont.16192				# 109
ble_else.16191:
	addi	r6, 0, 1
ble_cont.16192:
	cmpw	cr7, r6, r5				# 1407
	bne	cr7, beq_else.16193				# 1407
	b	beq_cont.16194				# 1407
beq_else.16193:
	slwi	r6, r5, 2				# 1408
	lwz	r7, 28(r3)				# 1408
	lfsx	f1, r7, r6				# 1408
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16195				# 109
	addi	r6, 0, 0
	b	ble_cont.16196				# 109
ble_else.16195:
	addi	r6, 0, 1
ble_cont.16196:
	cmpw	cr7, r6, r5				# 1408
	bne	cr7, beq_else.16197				# 1408
	b	beq_cont.16198				# 1408
beq_else.16197:
	lis	r31, ha16(l.11955)
	addi	r31, r31, lo16(l.11955)
	lfs	f1, 0(r31)				# 1410
	fadd	f0, f0, f1				# 1410
	slwi	r6, r5, 2				# 1411
	lwz	r8, 24(r3)				# 1411
	lfsx	f1, r8, r6				# 1411
	fmul	f1, f1, f0				# 1411
	slwi	r6, r5, 2				# 1411
	lwz	r9, 20(r3)				# 1411
	lfsx	f2, r9, r6				# 1411
	fadd	f1, f1, f2				# 1411
	lwz	r6, 56(r3)				# 1412
	slwi	r10, r6, 2				# 1412
	lfsx	f2, r8, r10				# 1412
	fmul	f2, f2, f0				# 1412
	slwi	r10, r6, 2				# 1412
	lfsx	f3, r9, r10				# 1412
	fadd	f2, f2, f3				# 1412
	lwz	r10, 16(r3)				# 1413
	slwi	r11, r10, 2				# 1413
	lfsx	f3, r8, r11				# 1413
	fmul	f3, f3, f0				# 1413
	slwi	r8, r10, 2				# 1413
	lfsx	f4, r9, r8				# 1413
	fadd	f3, f3, f4				# 1413
	lwz	r8, 48(r3)				# 1414
	lwz	r1, 12(r3)				# 1414
	stw	r2, 88(r3)				# 1414
	stfs	f3, 96(r3)				# 1414
	stfs	f2, 104(r3)				# 1414
	stfs	f1, 112(r3)				# 1414
	stfs	f0, 120(r3)				# 1414
	mfspr	r31, 8				# 1414
	mr	r2, r5				# 1414
	mr	r5, r8				# 1414
	fmr	f0, f1				# 1414
	fmr	f1, f2				# 1414
	fmr	f2, f3				# 1414
	stw	r31, 128(r3)				# 1414
	addi	r3, r3, 132				# 1414
	lwz	r31, 0(r1)				# 1414
	mtspr	9, r31				# 1414
	bctr				# 1414
	addi	r3, r3, -132				# 1414
	lwz	r31, 128(r3)				# 1414
	mtspr	8, r31				# 1414
	lwz	r5, 72(r3)				# 1414
	cmpw	cr7, r2, r5				# 1414
	bne	cr7, beq_else.16200				# 1414
	b	beq_cont.16201				# 1414
beq_else.16200:
	slwi	r2, r5, 2				# 1416
	lwz	r6, 28(r3)				# 1416
	lfs	f0, 120(r3)				# 1416
	stfsx	f0, r6, r2				# 1416
	slwi	r2, r5, 2				# 147
	lwz	r6, 8(r3)				# 147
	lfs	f0, 112(r3)				# 147
	stfsx	f0, r6, r2				# 147
	lwz	r2, 56(r3)				# 148
	slwi	r7, r2, 2				# 148
	lfs	f0, 104(r3)				# 148
	stfsx	f0, r6, r7				# 148
	lwz	r7, 16(r3)				# 149
	slwi	r7, r7, 2				# 149
	lfs	f0, 96(r3)				# 149
	stfsx	f0, r6, r7				# 149
	slwi	r6, r5, 2				# 1418
	lwz	r7, 4(r3)				# 1418
	lwz	r8, 68(r3)				# 1418
	stwx	r8, r7, r6				# 1418
	slwi	r5, r5, 2				# 1419
	lwz	r6, 0(r3)				# 1419
	lwz	r7, 88(r3)				# 1419
	stwx	r7, r6, r5				# 1419
beq_cont.16201:
beq_cont.16198:
beq_cont.16194:
	lwz	r2, 56(r3)				# 1425
	lwz	r5, 60(r3)				# 1425
	add	r2, r5, r2				# 1425
	lwz	r5, 48(r3)				# 1425
	lwz	r6, 44(r3)				# 1425
	lwz	r1, 52(r3)				# 1425
	lwz	r30, 0(r1)				# 1425
	mtspr	9, r30
	bctr				# 1425
solve_one_or_network_fast.2786:
	lwz	r7, 20(r1)				# 1436
	lwz	r8, 16(r1)				# 1436
	lwz	r9, 12(r1)				# 1436
	lwz	r10, 8(r1)				# 1436
	lwz	r11, 4(r1)				# 1436
	slwi	r12, r2, 2				# 1437
	lwzx	r12, r5, r12				# 1437
	cmpw	cr7, r12, r9				# 1438
	bne	cr7, beq_else.16202				# 1438
	blr
beq_else.16202:
	slwi	r9, r12, 2				# 1439
	lwzx	r8, r8, r9				# 1439
	stw	r6, 0(r3)				# 1440
	stw	r5, 4(r3)				# 1440
	stw	r1, 8(r3)				# 1440
	stw	r11, 12(r3)				# 1440
	stw	r2, 16(r3)				# 1440
	mfspr	r31, 8				# 1440
	mr	r5, r8				# 1440
	mr	r2, r10				# 1440
	mr	r1, r7				# 1440
	stw	r31, 20(r3)				# 1440
	addi	r3, r3, 24				# 1440
	lwz	r31, 0(r1)				# 1440
	mtspr	9, r31				# 1440
	bctr				# 1440
	addi	r3, r3, -24				# 1440
	lwz	r31, 20(r3)				# 1440
	mtspr	8, r31				# 1440
	lwz	r2, 12(r3)				# 1441
	lwz	r5, 16(r3)				# 1441
	add	r2, r5, r2				# 1441
	lwz	r5, 4(r3)				# 1441
	lwz	r6, 0(r3)				# 1441
	lwz	r1, 8(r3)				# 1441
	lwz	r30, 0(r1)				# 1441
	mtspr	9, r30
	bctr				# 1441
trace_or_matrix_fast.2790:
	lwz	r7, 44(r1)				# 1446
	lwz	r8, 40(r1)				# 1446
	lwz	r9, 36(r1)				# 1446
	lwz	r10, 32(r1)				# 1446
	lwz	r11, 28(r1)				# 1446
	lwz	r12, 24(r1)				# 1446
	lwz	r13, 20(r1)				# 1446
	lwz	r14, 16(r1)				# 1446
	lwz	r15, 12(r1)				# 1446
	lwz	r16, 8(r1)				# 1446
	lfs	f0, 4(r1)				# 1446
	slwi	r17, r2, 2				# 1447
	lwzx	r17, r5, r17				# 1447
	slwi	r18, r15, 2				# 1448
	lwzx	r18, r17, r18				# 1448
	cmpw	cr7, r18, r13				# 1449
	bne	cr7, beq_else.16204				# 1449
	blr
beq_else.16204:
	stw	r6, 0(r3)				# 1452
	stw	r5, 4(r3)				# 1452
	stw	r1, 8(r3)				# 1452
	stw	r16, 12(r3)				# 1452
	stw	r2, 16(r3)				# 1452
	cmpwi	cr7, r18, 99				# 1452
	bne	cr7, beq_else.16206				# 1452
	mfspr	r31, 8				# 1453
	mr	r5, r17				# 1453
	mr	r2, r16				# 1453
	mr	r1, r10				# 1453
	stw	r31, 20(r3)				# 1453
	addi	r3, r3, 24				# 1453
	lwz	r31, 0(r1)				# 1453
	mtspr	9, r31				# 1453
	bctr				# 1453
	addi	r3, r3, -24				# 1453
	lwz	r31, 20(r3)				# 1453
	mtspr	8, r31				# 1453
	b	beq_cont.16207				# 1452
beq_else.16206:
	slwi	r13, r18, 2				# 1024
	lwzx	r11, r11, r13				# 1024
	lwz	r13, 40(r11)				# 441
	slwi	r19, r15, 2				# 1026
	lfsx	f1, r13, r19				# 1026
	slwi	r19, r16, 2				# 1027
	lfsx	f2, r13, r19				# 1027
	slwi	r19, r12, 2				# 1028
	lfsx	f3, r13, r19				# 1028
	lwz	r19, 4(r6)				# 527
	slwi	r18, r18, 2				# 1030
	lwzx	r18, r19, r18				# 1030
	lwz	r19, 4(r11)				# 252
	stw	r17, 20(r3)				# 1032
	stw	r10, 24(r3)				# 1032
	stw	r7, 28(r3)				# 1032
	stw	r9, 32(r3)				# 1032
	stw	r15, 36(r3)				# 1032
	cmpw	cr7, r19, r16				# 1032
	bne	cr7, beq_else.16208				# 1032
	lwz	r12, 0(r6)				# 521
	mfspr	r31, 8				# 1033
	mr	r6, r18				# 1033
	mr	r5, r12				# 1033
	mr	r2, r11				# 1033
	mr	r1, r8				# 1033
	fmr	f0, f1				# 1033
	fmr	f1, f2				# 1033
	fmr	f2, f3				# 1033
	stw	r31, 40(r3)				# 1033
	addi	r3, r3, 44				# 1033
	lwz	r31, 0(r1)				# 1033
	mtspr	9, r31				# 1033
	bctr				# 1033
	addi	r3, r3, -44				# 1033
	lwz	r31, 40(r3)				# 1033
	mtspr	8, r31				# 1033
	b	beq_cont.16209				# 1032
beq_else.16208:
	cmpw	cr7, r19, r12				# 1034
	bne	cr7, beq_else.16210				# 1034
	slwi	r8, r15, 2				# 997
	lfsx	f1, r18, r8				# 997
	fcmpu	cr7, f0, f1				# 115
	bgt	cr7, ble_else.16212				# 115
	addi	r8, 0, 0
	b	ble_cont.16213				# 115
ble_else.16212:
	addi	r8, 0, 1
ble_cont.16213:
	cmpw	cr7, r8, r15				# 997
	bne	cr7, beq_else.16214				# 997
	addi	r2, 0, 0
	b	beq_cont.16215				# 997
beq_else.16214:
	slwi	r8, r15, 2				# 998
	lfsx	f0, r18, r8				# 998
	slwi	r8, r14, 2				# 998
	lfsx	f1, r13, r8				# 998
	fmul	f0, f0, f1				# 998
	slwi	r8, r15, 2				# 998
	stfsx	f0, r9, r8				# 998
	addi	r2, 0, 1
beq_cont.16215:
	b	beq_cont.16211				# 1034
beq_else.16210:
	slwi	r8, r15, 2				# 1006
	lfsx	f4, r18, r8				# 1006
	fcmpu	cr7, f4, f0				# 111
	bne	cr7, beq_else.16216				# 111
	addi	r8, 0, 1
	b	beq_cont.16217				# 111
beq_else.16216:
	addi	r8, 0, 0
beq_cont.16217:
	cmpw	cr7, r8, r15				# 1007
	bne	cr7, beq_else.16218				# 1007
	slwi	r8, r16, 2				# 1010
	lfsx	f5, r18, r8				# 1010
	fmul	f1, f5, f1				# 1010
	slwi	r8, r12, 2				# 1010
	lfsx	f5, r18, r8				# 1010
	fmul	f2, f5, f2				# 1010
	fadd	f1, f1, f2				# 1010
	slwi	r8, r14, 2				# 1010
	lfsx	f2, r18, r8				# 1010
	fmul	f2, f2, f3				# 1010
	fadd	f1, f1, f2				# 1010
	slwi	r8, r14, 2				# 1011
	lfsx	f2, r13, r8				# 1011
	fmul	f3, f1, f1				# 103
	fmul	f2, f4, f2				# 1012
	fsub	f2, f3, f2				# 1012
	fcmpu	cr7, f2, f0				# 113
	bgt	cr7, ble_else.16220				# 113
	addi	r8, 0, 0
	b	ble_cont.16221				# 113
ble_else.16220:
	addi	r8, 0, 1
ble_cont.16221:
	cmpw	cr7, r8, r15				# 1013
	bne	cr7, beq_else.16222				# 1013
	addi	r2, 0, 0
	b	beq_cont.16223				# 1013
beq_else.16222:
	lwz	r8, 24(r11)				# 272
	cmpw	cr7, r8, r15				# 1014
	bne	cr7, beq_else.16224				# 1014
	stw	r18, 40(r3)				# 1017
	stfs	f1, 48(r3)				# 1017
	mfspr	r31, 8				# 1017
	fmr	f0, f2				# 1017
	stw	r31, 56(r3)				# 1017
	addi	r3, r3, 60				# 1017
	bl	min_caml_sqrt				# 1017
	addi	r3, r3, -60				# 1017
	lwz	r31, 56(r3)				# 1017
	mtspr	8, r31				# 1017
	lfs	f1, 48(r3)				# 1017
	fsub	f0, f1, f0				# 1017
	lwz	r2, 40(r3)				# 1017
	lfs	f1, 16(r2)				# 1017
	fmul	f0, f0, f1				# 1017
	lwz	r2, 36(r3)				# 1017
	slwi	r5, r2, 2				# 1017
	lwz	r6, 32(r3)				# 1017
	stfsx	f0, r6, r5				# 1017
	b	beq_cont.16225				# 1014
beq_else.16224:
	stw	r18, 40(r3)				# 1015
	stfs	f1, 48(r3)				# 1015
	mfspr	r31, 8				# 1015
	fmr	f0, f2				# 1015
	stw	r31, 56(r3)				# 1015
	addi	r3, r3, 60				# 1015
	bl	min_caml_sqrt				# 1015
	addi	r3, r3, -60				# 1015
	lwz	r31, 56(r3)				# 1015
	mtspr	8, r31				# 1015
	lfs	f1, 48(r3)				# 1015
	fadd	f0, f1, f0				# 1015
	lwz	r2, 40(r3)				# 1015
	lfs	f1, 16(r2)				# 1015
	fmul	f0, f0, f1				# 1015
	lwz	r2, 36(r3)				# 1015
	slwi	r5, r2, 2				# 1015
	lwz	r6, 32(r3)				# 1015
	stfsx	f0, r6, r5				# 1015
beq_cont.16225:
	addi	r2, 0, 1
beq_cont.16223:
	b	beq_cont.16219				# 1007
beq_else.16218:
	addi	r2, 0, 0
beq_cont.16219:
beq_cont.16211:
beq_cont.16209:
	lwz	r5, 36(r3)				# 1458
	cmpw	cr7, r2, r5				# 1458
	bne	cr7, beq_else.16227				# 1458
	b	beq_cont.16228				# 1458
beq_else.16227:
	slwi	r2, r5, 2				# 1459
	lwz	r6, 32(r3)				# 1459
	lfsx	f0, r6, r2				# 1459
	slwi	r2, r5, 2				# 1460
	lwz	r6, 28(r3)				# 1460
	lfsx	f1, r6, r2				# 1460
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16229				# 109
	addi	r2, 0, 0
	b	ble_cont.16230				# 109
ble_else.16229:
	addi	r2, 0, 1
ble_cont.16230:
	cmpw	cr7, r2, r5				# 1460
	bne	cr7, beq_else.16231				# 1460
	b	beq_cont.16232				# 1460
beq_else.16231:
	lwz	r2, 12(r3)				# 1461
	lwz	r5, 20(r3)				# 1461
	lwz	r6, 0(r3)				# 1461
	lwz	r1, 24(r3)				# 1461
	mfspr	r31, 8				# 1461
	stw	r31, 56(r3)				# 1461
	addi	r3, r3, 60				# 1461
	lwz	r31, 0(r1)				# 1461
	mtspr	9, r31				# 1461
	bctr				# 1461
	addi	r3, r3, -60				# 1461
	lwz	r31, 56(r3)				# 1461
	mtspr	8, r31				# 1461
beq_cont.16232:
beq_cont.16228:
beq_cont.16207:
	lwz	r2, 12(r3)				# 1465
	lwz	r5, 16(r3)				# 1465
	add	r2, r5, r2				# 1465
	lwz	r5, 4(r3)				# 1465
	lwz	r6, 0(r3)				# 1465
	lwz	r1, 8(r3)				# 1465
	lwz	r30, 0(r1)				# 1465
	mtspr	9, r30
	bctr				# 1465
get_nvector_second.2800:
	lwz	r5, 24(r1)				# 1505
	lwz	r6, 20(r1)				# 1505
	lwz	r7, 16(r1)				# 1505
	lwz	r8, 12(r1)				# 1505
	lwz	r9, 8(r1)				# 1505
	lfs	f0, 4(r1)				# 1505
	slwi	r10, r8, 2				# 1506
	lfsx	f1, r6, r10				# 1506
	lwz	r10, 20(r2)				# 330
	slwi	r11, r8, 2				# 335
	lfsx	f2, r10, r11				# 335
	fsub	f1, f1, f2				# 1506
	slwi	r10, r9, 2				# 1507
	lfsx	f2, r6, r10				# 1507
	lwz	r10, 20(r2)				# 340
	slwi	r11, r9, 2				# 345
	lfsx	f3, r10, r11				# 345
	fsub	f2, f2, f3				# 1507
	slwi	r10, r7, 2				# 1508
	lfsx	f3, r6, r10				# 1508
	lwz	r6, 20(r2)				# 350
	slwi	r10, r7, 2				# 355
	lfsx	f4, r6, r10				# 355
	fsub	f3, f3, f4				# 1508
	lwz	r6, 16(r2)				# 290
	slwi	r10, r8, 2				# 295
	lfsx	f4, r6, r10				# 295
	fmul	f4, f1, f4				# 1510
	lwz	r6, 16(r2)				# 300
	slwi	r10, r9, 2				# 305
	lfsx	f5, r6, r10				# 305
	fmul	f5, f2, f5				# 1511
	lwz	r6, 16(r2)				# 310
	slwi	r10, r7, 2				# 315
	lfsx	f6, r6, r10				# 315
	fmul	f6, f3, f6				# 1512
	lwz	r6, 12(r2)				# 281
	cmpw	cr7, r6, r8				# 1514
	bne	cr7, beq_else.16233				# 1514
	slwi	r6, r8, 2				# 1515
	stfsx	f4, r5, r6				# 1515
	slwi	r6, r9, 2				# 1516
	stfsx	f5, r5, r6				# 1516
	slwi	r6, r7, 2				# 1517
	stfsx	f6, r5, r6				# 1517
	b	beq_cont.16234				# 1514
beq_else.16233:
	lwz	r6, 36(r2)				# 430
	slwi	r10, r7, 2				# 435
	lfsx	f7, r6, r10				# 435
	fmul	f7, f2, f7				# 1519
	lwz	r6, 36(r2)				# 420
	slwi	r10, r9, 2				# 425
	lfsx	f8, r6, r10				# 425
	fmul	f8, f3, f8				# 1519
	fadd	f7, f7, f8				# 1519
	lis	r31, ha16(l.11646)
	addi	r31, r31, lo16(l.11646)
	lfs	f8, 0(r31)				# 105
	fdiv	f7, f7, f8				# 105
	fadd	f4, f4, f7				# 1519
	slwi	r6, r8, 2				# 1519
	stfsx	f4, r5, r6				# 1519
	lwz	r6, 36(r2)				# 430
	slwi	r10, r7, 2				# 435
	lfsx	f4, r6, r10				# 435
	fmul	f4, f1, f4				# 1520
	lwz	r6, 36(r2)				# 410
	slwi	r10, r8, 2				# 415
	lfsx	f7, r6, r10				# 415
	fmul	f3, f3, f7				# 1520
	fadd	f3, f4, f3				# 1520
	fdiv	f3, f3, f8				# 105
	fadd	f3, f5, f3				# 1520
	slwi	r6, r9, 2				# 1520
	stfsx	f3, r5, r6				# 1520
	lwz	r6, 36(r2)				# 420
	slwi	r10, r9, 2				# 425
	lfsx	f3, r6, r10				# 425
	fmul	f1, f1, f3				# 1521
	lwz	r6, 36(r2)				# 410
	slwi	r10, r8, 2				# 415
	lfsx	f3, r6, r10				# 415
	fmul	f2, f2, f3				# 1521
	fadd	f1, f1, f2				# 1521
	fdiv	f1, f1, f8				# 105
	fadd	f1, f6, f1				# 1521
	slwi	r6, r7, 2				# 1521
	stfsx	f1, r5, r6				# 1521
beq_cont.16234:
	lwz	r2, 24(r2)				# 272
	slwi	r6, r8, 2				# 186
	lfsx	f1, r5, r6				# 186
	fmul	f1, f1, f1				# 103
	slwi	r6, r9, 2				# 186
	lfsx	f2, r5, r6				# 186
	fmul	f2, f2, f2				# 103
	fadd	f1, f1, f2				# 186
	slwi	r6, r7, 2				# 186
	lfsx	f2, r5, r6				# 186
	fmul	f2, f2, f2				# 103
	fadd	f1, f1, f2				# 186
	stw	r7, 0(r3)				# 186
	stw	r9, 4(r3)				# 186
	stw	r5, 8(r3)				# 186
	stw	r2, 12(r3)				# 186
	stw	r8, 16(r3)				# 186
	stfs	f0, 24(r3)				# 186
	mfspr	r31, 8				# 186
	fmr	f0, f1				# 186
	stw	r31, 32(r3)				# 186
	addi	r3, r3, 36				# 186
	bl	min_caml_sqrt				# 186
	addi	r3, r3, -36				# 186
	lwz	r31, 32(r3)				# 186
	mtspr	8, r31				# 186
	lfs	f1, 24(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.16236				# 111
	addi	r2, 0, 1
	b	beq_cont.16237				# 111
beq_else.16236:
	addi	r2, 0, 0
beq_cont.16237:
	lwz	r5, 16(r3)				# 187
	cmpw	cr7, r2, r5				# 187
	bne	cr7, beq_else.16238				# 187
	lwz	r2, 12(r3)				# 187
	cmpw	cr7, r2, r5				# 187
	bne	cr7, beq_else.16240				# 187
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f1, 0(r31)				# 187
	fdiv	f0, f1, f0				# 187
	b	beq_cont.16241				# 187
beq_else.16240:
	lis	r31, ha16(l.11682)
	addi	r31, r31, lo16(l.11682)
	lfs	f1, 0(r31)				# 187
	fdiv	f0, f1, f0				# 187
beq_cont.16241:
	b	beq_cont.16239				# 187
beq_else.16238:
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f0, 0(r31)				# 187
beq_cont.16239:
	slwi	r2, r5, 2				# 188
	lwz	r6, 8(r3)				# 188
	lfsx	f1, r6, r2				# 188
	fmul	f1, f1, f0				# 188
	slwi	r2, r5, 2				# 188
	stfsx	f1, r6, r2				# 188
	lwz	r2, 4(r3)				# 189
	slwi	r5, r2, 2				# 189
	lfsx	f1, r6, r5				# 189
	fmul	f1, f1, f0				# 189
	slwi	r2, r2, 2				# 189
	stfsx	f1, r6, r2				# 189
	lwz	r2, 0(r3)				# 190
	slwi	r5, r2, 2				# 190
	lfsx	f1, r6, r5				# 190
	fmul	f0, f1, f0				# 190
	slwi	r2, r2, 2				# 190
	stfsx	f0, r6, r2				# 190
	blr
get_nvector.2802:
	lwz	r6, 28(r1)				# 1527
	lwz	r7, 24(r1)				# 1527
	lwz	r8, 20(r1)				# 1527
	lwz	r9, 16(r1)				# 1527
	lwz	r10, 12(r1)				# 1527
	lwz	r11, 8(r1)				# 1527
	lfs	f0, 4(r1)				# 1527
	lwz	r12, 4(r2)				# 252
	cmpw	cr7, r12, r11				# 1529
	bne	cr7, beq_else.16243				# 1529
	slwi	r2, r10, 2				# 1490
	lwzx	r2, r7, r2				# 1490
	slwi	r7, r10, 2				# 154
	stfsx	f0, r6, r7				# 154
	slwi	r7, r11, 2				# 155
	stfsx	f0, r6, r7				# 155
	slwi	r7, r9, 2				# 156
	stfsx	f0, r6, r7				# 156
	sub	r2, r2, r11				# 1493
	slwi	r7, r2, 2				# 1493
	lfsx	f1, r5, r7				# 1493
	fcmpu	cr7, f1, f0				# 111
	bne	cr7, beq_else.16244				# 111
	addi	r5, 0, 1
	b	beq_cont.16245				# 111
beq_else.16244:
	addi	r5, 0, 0
beq_cont.16245:
	cmpw	cr7, r5, r10				# 125
	bne	cr7, beq_else.16246				# 125
	fcmpu	cr7, f1, f0				# 113
	bgt	cr7, ble_else.16248				# 113
	addi	r5, 0, 0
	b	ble_cont.16249				# 113
ble_else.16248:
	addi	r5, 0, 1
ble_cont.16249:
	cmpw	cr7, r5, r10				# 126
	bne	cr7, beq_else.16250				# 126
	lis	r31, ha16(l.11682)
	addi	r31, r31, lo16(l.11682)
	lfs	f0, 0(r31)				# 127
	b	beq_cont.16251				# 126
beq_else.16250:
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f0, 0(r31)				# 126
beq_cont.16251:
	b	beq_cont.16247				# 125
beq_else.16246:
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f0, 0(r31)				# 125
beq_cont.16247:
	fneg	f0, f0				# 107
	slwi	r2, r2, 2				# 1493
	stfsx	f0, r6, r2				# 1493
	blr
beq_else.16243:
	cmpw	cr7, r12, r9				# 1531
	bne	cr7, beq_else.16253				# 1531
	lwz	r5, 16(r2)				# 290
	slwi	r7, r10, 2				# 295
	lfsx	f0, r5, r7				# 295
	fneg	f0, f0				# 107
	slwi	r5, r10, 2				# 1499
	stfsx	f0, r6, r5				# 1499
	lwz	r5, 16(r2)				# 300
	slwi	r7, r11, 2				# 305
	lfsx	f0, r5, r7				# 305
	fneg	f0, f0				# 107
	slwi	r5, r11, 2				# 1500
	stfsx	f0, r6, r5				# 1500
	lwz	r2, 16(r2)				# 310
	slwi	r5, r9, 2				# 315
	lfsx	f0, r2, r5				# 315
	fneg	f0, f0				# 107
	slwi	r2, r9, 2				# 1501
	stfsx	f0, r6, r2				# 1501
	blr
beq_else.16253:
	slwi	r5, r10, 2				# 1506
	lfsx	f1, r8, r5				# 1506
	lwz	r5, 20(r2)				# 330
	slwi	r7, r10, 2				# 335
	lfsx	f2, r5, r7				# 335
	fsub	f1, f1, f2				# 1506
	slwi	r5, r11, 2				# 1507
	lfsx	f2, r8, r5				# 1507
	lwz	r5, 20(r2)				# 340
	slwi	r7, r11, 2				# 345
	lfsx	f3, r5, r7				# 345
	fsub	f2, f2, f3				# 1507
	slwi	r5, r9, 2				# 1508
	lfsx	f3, r8, r5				# 1508
	lwz	r5, 20(r2)				# 350
	slwi	r7, r9, 2				# 355
	lfsx	f4, r5, r7				# 355
	fsub	f3, f3, f4				# 1508
	lwz	r5, 16(r2)				# 290
	slwi	r7, r10, 2				# 295
	lfsx	f4, r5, r7				# 295
	fmul	f4, f1, f4				# 1510
	lwz	r5, 16(r2)				# 300
	slwi	r7, r11, 2				# 305
	lfsx	f5, r5, r7				# 305
	fmul	f5, f2, f5				# 1511
	lwz	r5, 16(r2)				# 310
	slwi	r7, r9, 2				# 315
	lfsx	f6, r5, r7				# 315
	fmul	f6, f3, f6				# 1512
	lwz	r5, 12(r2)				# 281
	cmpw	cr7, r5, r10				# 1514
	bne	cr7, beq_else.16255				# 1514
	slwi	r5, r10, 2				# 1515
	stfsx	f4, r6, r5				# 1515
	slwi	r5, r11, 2				# 1516
	stfsx	f5, r6, r5				# 1516
	slwi	r5, r9, 2				# 1517
	stfsx	f6, r6, r5				# 1517
	b	beq_cont.16256				# 1514
beq_else.16255:
	lwz	r5, 36(r2)				# 430
	slwi	r7, r9, 2				# 435
	lfsx	f7, r5, r7				# 435
	fmul	f7, f2, f7				# 1519
	lwz	r5, 36(r2)				# 420
	slwi	r7, r11, 2				# 425
	lfsx	f8, r5, r7				# 425
	fmul	f8, f3, f8				# 1519
	fadd	f7, f7, f8				# 1519
	lis	r31, ha16(l.11646)
	addi	r31, r31, lo16(l.11646)
	lfs	f8, 0(r31)				# 105
	fdiv	f7, f7, f8				# 105
	fadd	f4, f4, f7				# 1519
	slwi	r5, r10, 2				# 1519
	stfsx	f4, r6, r5				# 1519
	lwz	r5, 36(r2)				# 430
	slwi	r7, r9, 2				# 435
	lfsx	f4, r5, r7				# 435
	fmul	f4, f1, f4				# 1520
	lwz	r5, 36(r2)				# 410
	slwi	r7, r10, 2				# 415
	lfsx	f7, r5, r7				# 415
	fmul	f3, f3, f7				# 1520
	fadd	f3, f4, f3				# 1520
	fdiv	f3, f3, f8				# 105
	fadd	f3, f5, f3				# 1520
	slwi	r5, r11, 2				# 1520
	stfsx	f3, r6, r5				# 1520
	lwz	r5, 36(r2)				# 420
	slwi	r7, r11, 2				# 425
	lfsx	f3, r5, r7				# 425
	fmul	f1, f1, f3				# 1521
	lwz	r5, 36(r2)				# 410
	slwi	r7, r10, 2				# 415
	lfsx	f3, r5, r7				# 415
	fmul	f2, f2, f3				# 1521
	fadd	f1, f1, f2				# 1521
	fdiv	f1, f1, f8				# 105
	fadd	f1, f6, f1				# 1521
	slwi	r5, r9, 2				# 1521
	stfsx	f1, r6, r5				# 1521
beq_cont.16256:
	lwz	r2, 24(r2)				# 272
	slwi	r5, r10, 2				# 186
	lfsx	f1, r6, r5				# 186
	fmul	f1, f1, f1				# 103
	slwi	r5, r11, 2				# 186
	lfsx	f2, r6, r5				# 186
	fmul	f2, f2, f2				# 103
	fadd	f1, f1, f2				# 186
	slwi	r5, r9, 2				# 186
	lfsx	f2, r6, r5				# 186
	fmul	f2, f2, f2				# 103
	fadd	f1, f1, f2				# 186
	stw	r9, 0(r3)				# 186
	stw	r11, 4(r3)				# 186
	stw	r6, 8(r3)				# 186
	stw	r2, 12(r3)				# 186
	stw	r10, 16(r3)				# 186
	stfs	f0, 24(r3)				# 186
	mfspr	r31, 8				# 186
	fmr	f0, f1				# 186
	stw	r31, 32(r3)				# 186
	addi	r3, r3, 36				# 186
	bl	min_caml_sqrt				# 186
	addi	r3, r3, -36				# 186
	lwz	r31, 32(r3)				# 186
	mtspr	8, r31				# 186
	lfs	f1, 24(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.16258				# 111
	addi	r2, 0, 1
	b	beq_cont.16259				# 111
beq_else.16258:
	addi	r2, 0, 0
beq_cont.16259:
	lwz	r5, 16(r3)				# 187
	cmpw	cr7, r2, r5				# 187
	bne	cr7, beq_else.16260				# 187
	lwz	r2, 12(r3)				# 187
	cmpw	cr7, r2, r5				# 187
	bne	cr7, beq_else.16262				# 187
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f1, 0(r31)				# 187
	fdiv	f0, f1, f0				# 187
	b	beq_cont.16263				# 187
beq_else.16262:
	lis	r31, ha16(l.11682)
	addi	r31, r31, lo16(l.11682)
	lfs	f1, 0(r31)				# 187
	fdiv	f0, f1, f0				# 187
beq_cont.16263:
	b	beq_cont.16261				# 187
beq_else.16260:
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f0, 0(r31)				# 187
beq_cont.16261:
	slwi	r2, r5, 2				# 188
	lwz	r6, 8(r3)				# 188
	lfsx	f1, r6, r2				# 188
	fmul	f1, f1, f0				# 188
	slwi	r2, r5, 2				# 188
	stfsx	f1, r6, r2				# 188
	lwz	r2, 4(r3)				# 189
	slwi	r5, r2, 2				# 189
	lfsx	f1, r6, r5				# 189
	fmul	f1, f1, f0				# 189
	slwi	r2, r2, 2				# 189
	stfsx	f1, r6, r2				# 189
	lwz	r2, 0(r3)				# 190
	slwi	r5, r2, 2				# 190
	lfsx	f1, r6, r5				# 190
	fmul	f0, f1, f0				# 190
	slwi	r2, r2, 2				# 190
	stfsx	f0, r6, r2				# 190
	blr
utexture.2805:
	lwz	r6, 28(r1)				# 1541
	lwz	r7, 24(r1)				# 1541
	lwz	r8, 20(r1)				# 1541
	lwz	r9, 16(r1)				# 1541
	lwz	r10, 12(r1)				# 1541
	lfs	f0, 8(r1)				# 1541
	lfs	f1, 4(r1)				# 1541
	lwz	r11, 0(r2)				# 242
	lwz	r12, 32(r2)				# 380
	slwi	r13, r9, 2				# 385
	lfsx	f2, r12, r13				# 385
	slwi	r12, r9, 2				# 1544
	stfsx	f2, r6, r12				# 1544
	lwz	r12, 32(r2)				# 390
	slwi	r13, r10, 2				# 395
	lfsx	f2, r12, r13				# 395
	slwi	r12, r10, 2				# 1545
	stfsx	f2, r6, r12				# 1545
	lwz	r12, 32(r2)				# 400
	slwi	r13, r7, 2				# 405
	lfsx	f2, r12, r13				# 405
	slwi	r12, r7, 2				# 1546
	stfsx	f2, r6, r12				# 1546
	cmpw	cr7, r11, r10				# 1547
	bne	cr7, beq_else.16265				# 1547
	slwi	r8, r9, 2				# 1550
	lfsx	f0, r5, r8				# 1550
	lwz	r8, 20(r2)				# 330
	slwi	r11, r9, 2				# 335
	lfsx	f1, r8, r11				# 335
	fsub	f0, f0, f1				# 1550
	lis	r31, ha16(l.12204)
	addi	r31, r31, lo16(l.12204)
	lfs	f1, 0(r31)				# 1552
	fmul	f2, f0, f1				# 1552
	stw	r6, 0(r3)				# 1552
	stw	r10, 4(r3)				# 1552
	stw	r9, 8(r3)				# 1552
	stfs	f1, 16(r3)				# 1552
	stw	r2, 24(r3)				# 1552
	stw	r5, 28(r3)				# 1552
	stw	r7, 32(r3)				# 1552
	stfs	f0, 40(r3)				# 1552
	mfspr	r31, 8				# 1552
	fmr	f0, f2				# 1552
	stw	r31, 48(r3)				# 1552
	addi	r3, r3, 52				# 1552
	bl	min_caml_floor				# 1552
	addi	r3, r3, -52				# 1552
	lwz	r31, 48(r3)				# 1552
	mtspr	8, r31				# 1552
	lis	r31, ha16(l.12205)
	addi	r31, r31, lo16(l.12205)
	lfs	f1, 0(r31)				# 1552
	fmul	f0, f0, f1				# 1552
	lfs	f2, 40(r3)				# 1553
	fsub	f0, f2, f0				# 1553
	lis	r31, ha16(l.12195)
	addi	r31, r31, lo16(l.12195)
	lfs	f2, 0(r31)				# 1553
	fcmpu	cr7, f2, f0				# 109
	bgt	cr7, ble_else.16268				# 109
	addi	r2, 0, 0
	b	ble_cont.16269				# 109
ble_else.16268:
	addi	r2, 0, 1
ble_cont.16269:
	lwz	r5, 32(r3)				# 1555
	slwi	r6, r5, 2				# 1555
	lwz	r7, 28(r3)				# 1555
	lfsx	f0, r7, r6				# 1555
	lwz	r6, 24(r3)				# 350
	lwz	r6, 20(r6)				# 350
	slwi	r5, r5, 2				# 355
	lfsx	f3, r6, r5				# 355
	fsub	f0, f0, f3				# 1555
	lfs	f3, 16(r3)				# 1557
	fmul	f3, f0, f3				# 1557
	stw	r2, 48(r3)				# 1557
	stfs	f2, 56(r3)				# 1557
	stfs	f0, 64(r3)				# 1557
	stfs	f1, 72(r3)				# 1557
	mfspr	r31, 8				# 1557
	fmr	f0, f3				# 1557
	stw	r31, 80(r3)				# 1557
	addi	r3, r3, 84				# 1557
	bl	min_caml_floor				# 1557
	addi	r3, r3, -84				# 1557
	lwz	r31, 80(r3)				# 1557
	mtspr	8, r31				# 1557
	lfs	f1, 72(r3)				# 1557
	fmul	f0, f0, f1				# 1557
	lfs	f1, 64(r3)				# 1558
	fsub	f0, f1, f0				# 1558
	lfs	f1, 56(r3)				# 109
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16271				# 109
	addi	r2, 0, 0
	b	ble_cont.16272				# 109
ble_else.16271:
	addi	r2, 0, 1
ble_cont.16272:
	lwz	r5, 8(r3)				# 1561
	lwz	r6, 48(r3)				# 1561
	cmpw	cr7, r6, r5				# 1561
	bne	cr7, beq_else.16273				# 1561
	cmpw	cr7, r2, r5				# 1563
	bne	cr7, beq_else.16275				# 1563
	lis	r31, ha16(l.12208)
	addi	r31, r31, lo16(l.12208)
	lfs	f0, 0(r31)				# 1563
	b	beq_cont.16276				# 1563
beq_else.16275:
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f0, 0(r31)				# 1563
beq_cont.16276:
	b	beq_cont.16274				# 1561
beq_else.16273:
	cmpw	cr7, r2, r5				# 1562
	bne	cr7, beq_else.16277				# 1562
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f0, 0(r31)				# 1562
	b	beq_cont.16278				# 1562
beq_else.16277:
	lis	r31, ha16(l.12208)
	addi	r31, r31, lo16(l.12208)
	lfs	f0, 0(r31)				# 1562
beq_cont.16278:
beq_cont.16274:
	lwz	r2, 4(r3)				# 1560
	slwi	r2, r2, 2				# 1560
	lwz	r5, 0(r3)				# 1560
	stfsx	f0, r5, r2				# 1560
	blr
beq_else.16265:
	cmpw	cr7, r11, r7				# 1565
	bne	cr7, beq_else.16280				# 1565
	slwi	r2, r10, 2				# 1568
	lfsx	f1, r5, r2				# 1568
	lis	r31, ha16(l.12199)
	addi	r31, r31, lo16(l.12199)
	lfs	f2, 0(r31)				# 1568
	fmul	f1, f1, f2				# 1568
	stw	r10, 4(r3)				# 1568
	stw	r6, 0(r3)				# 1568
	stw	r9, 8(r3)				# 1568
	stfs	f0, 80(r3)				# 1568
	mfspr	r31, 8				# 1568
	fmr	f0, f1				# 1568
	stw	r31, 88(r3)				# 1568
	addi	r3, r3, 92				# 1568
	bl	min_caml_sin				# 1568
	addi	r3, r3, -92				# 1568
	lwz	r31, 88(r3)				# 1568
	mtspr	8, r31				# 1568
	fmul	f0, f0, f0				# 103
	lfs	f1, 80(r3)				# 1569
	fmul	f2, f1, f0				# 1569
	lwz	r2, 8(r3)				# 1569
	slwi	r2, r2, 2				# 1569
	lwz	r5, 0(r3)				# 1569
	stfsx	f2, r5, r2				# 1569
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f2, 0(r31)				# 1570
	fsub	f0, f2, f0				# 1570
	fmul	f0, f1, f0				# 1570
	lwz	r2, 4(r3)				# 1570
	slwi	r2, r2, 2				# 1570
	stfsx	f0, r5, r2				# 1570
	blr
beq_else.16280:
	cmpw	cr7, r11, r8				# 1572
	bne	cr7, beq_else.16282				# 1572
	slwi	r8, r9, 2				# 1575
	lfsx	f1, r5, r8				# 1575
	lwz	r8, 20(r2)				# 330
	slwi	r9, r9, 2				# 335
	lfsx	f2, r8, r9				# 335
	fsub	f1, f1, f2				# 1575
	slwi	r8, r7, 2				# 1576
	lfsx	f2, r5, r8				# 1576
	lwz	r2, 20(r2)				# 350
	slwi	r5, r7, 2				# 355
	lfsx	f3, r2, r5				# 355
	fsub	f2, f2, f3				# 1576
	fmul	f1, f1, f1				# 103
	fmul	f2, f2, f2				# 103
	fadd	f1, f1, f2				# 1577
	stw	r7, 32(r3)				# 1577
	stw	r6, 0(r3)				# 1577
	stw	r10, 4(r3)				# 1577
	stfs	f0, 80(r3)				# 1577
	mfspr	r31, 8				# 1577
	fmr	f0, f1				# 1577
	stw	r31, 88(r3)				# 1577
	addi	r3, r3, 92				# 1577
	bl	min_caml_sqrt				# 1577
	addi	r3, r3, -92				# 1577
	lwz	r31, 88(r3)				# 1577
	mtspr	8, r31				# 1577
	lis	r31, ha16(l.12195)
	addi	r31, r31, lo16(l.12195)
	lfs	f1, 0(r31)				# 1577
	fdiv	f0, f0, f1				# 1577
	stfs	f0, 88(r3)				# 1578
	mfspr	r31, 8				# 1578
	stw	r31, 96(r3)				# 1578
	addi	r3, r3, 100				# 1578
	bl	min_caml_floor				# 1578
	addi	r3, r3, -100				# 1578
	lwz	r31, 96(r3)				# 1578
	mtspr	8, r31				# 1578
	lfs	f1, 88(r3)				# 1578
	fsub	f0, f1, f0				# 1578
	lis	r31, ha16(l.12183)
	addi	r31, r31, lo16(l.12183)
	lfs	f1, 0(r31)				# 1578
	fmul	f0, f0, f1				# 1578
	mfspr	r31, 8				# 1579
	stw	r31, 96(r3)				# 1579
	addi	r3, r3, 100				# 1579
	bl	min_caml_cos				# 1579
	addi	r3, r3, -100				# 1579
	lwz	r31, 96(r3)				# 1579
	mtspr	8, r31				# 1579
	fmul	f0, f0, f0				# 103
	lfs	f1, 80(r3)				# 1580
	fmul	f2, f0, f1				# 1580
	lwz	r2, 4(r3)				# 1580
	slwi	r2, r2, 2				# 1580
	lwz	r5, 0(r3)				# 1580
	stfsx	f2, r5, r2				# 1580
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f2, 0(r31)				# 1581
	fsub	f0, f2, f0				# 1581
	fmul	f0, f0, f1				# 1581
	lwz	r2, 32(r3)				# 1581
	slwi	r2, r2, 2				# 1581
	stfsx	f0, r5, r2				# 1581
	blr
beq_else.16282:
	cmpwi	cr7, r11, 4				# 1583
	bne	cr7, beq_else.16284				# 1583
	slwi	r8, r9, 2				# 1585
	lfsx	f2, r5, r8				# 1585
	lwz	r8, 20(r2)				# 330
	slwi	r11, r9, 2				# 335
	lfsx	f3, r8, r11				# 335
	fsub	f2, f2, f3				# 1585
	lwz	r8, 16(r2)				# 290
	slwi	r11, r9, 2				# 295
	lfsx	f3, r8, r11				# 295
	stw	r6, 0(r3)				# 1585
	stfs	f0, 80(r3)				# 1585
	stfs	f1, 96(r3)				# 1585
	stw	r10, 4(r3)				# 1585
	stw	r9, 8(r3)				# 1585
	stw	r2, 24(r3)				# 1585
	stw	r5, 28(r3)				# 1585
	stw	r7, 32(r3)				# 1585
	stfs	f2, 104(r3)				# 1585
	mfspr	r31, 8				# 1585
	fmr	f0, f3				# 1585
	stw	r31, 112(r3)				# 1585
	addi	r3, r3, 116				# 1585
	bl	min_caml_sqrt				# 1585
	addi	r3, r3, -116				# 1585
	lwz	r31, 112(r3)				# 1585
	mtspr	8, r31				# 1585
	lfs	f1, 104(r3)				# 1585
	fmul	f0, f1, f0				# 1585
	lwz	r2, 32(r3)				# 1586
	slwi	r5, r2, 2				# 1586
	lwz	r6, 28(r3)				# 1586
	lfsx	f1, r6, r5				# 1586
	lwz	r5, 24(r3)				# 350
	lwz	r7, 20(r5)				# 350
	slwi	r8, r2, 2				# 355
	lfsx	f2, r7, r8				# 355
	fsub	f1, f1, f2				# 1586
	lwz	r7, 16(r5)				# 310
	slwi	r8, r2, 2				# 315
	lfsx	f2, r7, r8				# 315
	stfs	f0, 112(r3)				# 1586
	stfs	f1, 120(r3)				# 1586
	mfspr	r31, 8				# 1586
	fmr	f0, f2				# 1586
	stw	r31, 128(r3)				# 1586
	addi	r3, r3, 132				# 1586
	bl	min_caml_sqrt				# 1586
	addi	r3, r3, -132				# 1586
	lwz	r31, 128(r3)				# 1586
	mtspr	8, r31				# 1586
	lfs	f1, 120(r3)				# 1586
	fmul	f0, f1, f0				# 1586
	lfs	f1, 112(r3)				# 103
	fmul	f2, f1, f1				# 103
	fmul	f3, f0, f0				# 103
	fadd	f2, f2, f3				# 1587
	stfs	f2, 128(r3)				# 1589
	stfs	f0, 136(r3)				# 1589
	mfspr	r31, 8				# 1589
	fmr	f0, f1				# 1589
	stw	r31, 144(r3)				# 1589
	addi	r3, r3, 148				# 1589
	bl	min_caml_fabs				# 1589
	addi	r3, r3, -148				# 1589
	lwz	r31, 144(r3)				# 1589
	mtspr	8, r31				# 1589
	lis	r31, ha16(l.12180)
	addi	r31, r31, lo16(l.12180)
	lfs	f1, 0(r31)				# 1589
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16285				# 109
	addi	r2, 0, 0
	b	ble_cont.16286				# 109
ble_else.16285:
	addi	r2, 0, 1
ble_cont.16286:
	lwz	r5, 8(r3)				# 1589
	stfs	f1, 144(r3)				# 1589
	cmpw	cr7, r2, r5				# 1589
	bne	cr7, beq_else.16287				# 1589
	lfs	f0, 112(r3)				# 1592
	lfs	f2, 136(r3)				# 1592
	fdiv	f0, f2, f0				# 1592
	mfspr	r31, 8				# 1592
	stw	r31, 152(r3)				# 1592
	addi	r3, r3, 156				# 1592
	bl	min_caml_fabs				# 1592
	addi	r3, r3, -156				# 1592
	lwz	r31, 152(r3)				# 1592
	mtspr	8, r31				# 1592
	mfspr	r31, 8				# 1594
	stw	r31, 152(r3)				# 1594
	addi	r3, r3, 156				# 1594
	bl	min_caml_atan				# 1594
	addi	r3, r3, -156				# 1594
	lwz	r31, 152(r3)				# 1594
	mtspr	8, r31				# 1594
	lis	r31, ha16(l.12182)
	addi	r31, r31, lo16(l.12182)
	lfs	f1, 0(r31)				# 1594
	fmul	f0, f0, f1				# 1594
	lis	r31, ha16(l.12183)
	addi	r31, r31, lo16(l.12183)
	lfs	f1, 0(r31)				# 1594
	fdiv	f0, f0, f1				# 1594
	b	beq_cont.16288				# 1589
beq_else.16287:
	lis	r31, ha16(l.12181)
	addi	r31, r31, lo16(l.12181)
	lfs	f0, 0(r31)				# 1590
beq_cont.16288:
	stfs	f0, 152(r3)				# 1596
	mfspr	r31, 8				# 1596
	stw	r31, 160(r3)				# 1596
	addi	r3, r3, 164				# 1596
	bl	min_caml_floor				# 1596
	addi	r3, r3, -164				# 1596
	lwz	r31, 160(r3)				# 1596
	mtspr	8, r31				# 1596
	lfs	f1, 152(r3)				# 1596
	fsub	f0, f1, f0				# 1596
	lwz	r2, 4(r3)				# 1598
	slwi	r5, r2, 2				# 1598
	lwz	r6, 28(r3)				# 1598
	lfsx	f1, r6, r5				# 1598
	lwz	r5, 24(r3)				# 340
	lwz	r6, 20(r5)				# 340
	slwi	r7, r2, 2				# 345
	lfsx	f2, r6, r7				# 345
	fsub	f1, f1, f2				# 1598
	lwz	r5, 16(r5)				# 300
	slwi	r2, r2, 2				# 305
	lfsx	f2, r5, r2				# 305
	stfs	f0, 160(r3)				# 1598
	stfs	f1, 168(r3)				# 1598
	mfspr	r31, 8				# 1598
	fmr	f0, f2				# 1598
	stw	r31, 176(r3)				# 1598
	addi	r3, r3, 180				# 1598
	bl	min_caml_sqrt				# 1598
	addi	r3, r3, -180				# 1598
	lwz	r31, 176(r3)				# 1598
	mtspr	8, r31				# 1598
	lfs	f1, 168(r3)				# 1598
	fmul	f0, f1, f0				# 1598
	lfs	f1, 128(r3)				# 1600
	stfs	f0, 176(r3)				# 1600
	mfspr	r31, 8				# 1600
	fmr	f0, f1				# 1600
	stw	r31, 184(r3)				# 1600
	addi	r3, r3, 188				# 1600
	bl	min_caml_fabs				# 1600
	addi	r3, r3, -188				# 1600
	lwz	r31, 184(r3)				# 1600
	mtspr	8, r31				# 1600
	lfs	f1, 144(r3)				# 109
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16289				# 109
	addi	r2, 0, 0
	b	ble_cont.16290				# 109
ble_else.16289:
	addi	r2, 0, 1
ble_cont.16290:
	lwz	r5, 8(r3)				# 1600
	cmpw	cr7, r2, r5				# 1600
	bne	cr7, beq_else.16291				# 1600
	lfs	f0, 128(r3)				# 1603
	lfs	f1, 176(r3)				# 1603
	fdiv	f0, f1, f0				# 1603
	mfspr	r31, 8				# 1603
	stw	r31, 184(r3)				# 1603
	addi	r3, r3, 188				# 1603
	bl	min_caml_fabs				# 1603
	addi	r3, r3, -188				# 1603
	lwz	r31, 184(r3)				# 1603
	mtspr	8, r31				# 1603
	mfspr	r31, 8				# 1604
	stw	r31, 184(r3)				# 1604
	addi	r3, r3, 188				# 1604
	bl	min_caml_atan				# 1604
	addi	r3, r3, -188				# 1604
	lwz	r31, 184(r3)				# 1604
	mtspr	8, r31				# 1604
	lis	r31, ha16(l.12182)
	addi	r31, r31, lo16(l.12182)
	lfs	f1, 0(r31)				# 1604
	fmul	f0, f0, f1				# 1604
	lis	r31, ha16(l.12183)
	addi	r31, r31, lo16(l.12183)
	lfs	f1, 0(r31)				# 1604
	fdiv	f0, f0, f1				# 1604
	b	beq_cont.16292				# 1600
beq_else.16291:
	lis	r31, ha16(l.12181)
	addi	r31, r31, lo16(l.12181)
	lfs	f0, 0(r31)				# 1601
beq_cont.16292:
	stfs	f0, 184(r3)				# 1606
	mfspr	r31, 8				# 1606
	stw	r31, 192(r3)				# 1606
	addi	r3, r3, 196				# 1606
	bl	min_caml_floor				# 1606
	addi	r3, r3, -196				# 1606
	lwz	r31, 192(r3)				# 1606
	mtspr	8, r31				# 1606
	lfs	f1, 184(r3)				# 1606
	fsub	f0, f1, f0				# 1606
	lis	r31, ha16(l.12187)
	addi	r31, r31, lo16(l.12187)
	lfs	f1, 0(r31)				# 1607
	lis	r31, ha16(l.12188)
	addi	r31, r31, lo16(l.12188)
	lfs	f2, 0(r31)				# 1607
	lfs	f3, 160(r3)				# 1607
	fsub	f3, f2, f3				# 1607
	fmul	f3, f3, f3				# 103
	fsub	f1, f1, f3				# 1607
	fsub	f0, f2, f0				# 1607
	fmul	f0, f0, f0				# 103
	fsub	f0, f1, f0				# 1607
	lfs	f1, 96(r3)				# 115
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.16293				# 115
	addi	r2, 0, 0
	b	ble_cont.16294				# 115
ble_else.16293:
	addi	r2, 0, 1
ble_cont.16294:
	lwz	r5, 8(r3)				# 1608
	cmpw	cr7, r2, r5				# 1608
	bne	cr7, beq_else.16295				# 1608
	b	beq_cont.16296				# 1608
beq_else.16295:
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f0, 0(r31)				# 1608
beq_cont.16296:
	lfs	f1, 80(r3)				# 1609
	fmul	f0, f1, f0				# 1609
	lis	r31, ha16(l.12189)
	addi	r31, r31, lo16(l.12189)
	lfs	f1, 0(r31)				# 1609
	fdiv	f0, f0, f1				# 1609
	lwz	r2, 32(r3)				# 1609
	slwi	r2, r2, 2				# 1609
	lwz	r5, 0(r3)				# 1609
	stfsx	f0, r5, r2				# 1609
	blr
beq_else.16284:
	blr
trace_reflections.2812:
	lwz	r6, 60(r1)				# 1634
	lwz	r7, 56(r1)				# 1634
	lwz	r8, 52(r1)				# 1634
	lwz	r9, 48(r1)				# 1634
	lwz	r10, 44(r1)				# 1634
	lwz	r11, 40(r1)				# 1634
	lwz	r12, 36(r1)				# 1634
	lwz	r13, 32(r1)				# 1634
	lwz	r14, 28(r1)				# 1634
	lwz	r15, 24(r1)				# 1634
	lwz	r16, 20(r1)				# 1634
	lwz	r17, 16(r1)				# 1634
	lwz	r18, 12(r1)				# 1634
	lfs	f2, 8(r1)				# 1634
	lfs	f3, 4(r1)				# 1634
	cmpw	cr7, r17, r2				# 1636
	bgt	cr7, ble_else.16299				# 1636
	slwi	r19, r2, 2				# 1637
	lwzx	r11, r11, r19				# 1637
	lwz	r19, 4(r11)				# 541
	slwi	r20, r17, 2				# 1472
	stfsx	f2, r7, r20				# 1472
	slwi	r20, r17, 2				# 1473
	lwzx	r20, r12, r20				# 1473
	stw	r1, 0(r3)				# 1473
	stw	r2, 4(r3)				# 1473
	stfs	f1, 8(r3)				# 1473
	stw	r8, 16(r3)				# 1473
	stw	r10, 20(r3)				# 1473
	stfs	f3, 24(r3)				# 1473
	stw	r5, 32(r3)				# 1473
	stfs	f0, 40(r3)				# 1473
	stw	r16, 48(r3)				# 1473
	stw	r18, 52(r3)				# 1473
	stw	r13, 56(r3)				# 1473
	stw	r19, 60(r3)				# 1473
	stw	r9, 64(r3)				# 1473
	stw	r12, 68(r3)				# 1473
	stw	r11, 72(r3)				# 1473
	stw	r14, 76(r3)				# 1473
	stw	r15, 80(r3)				# 1473
	stw	r7, 84(r3)				# 1473
	stw	r17, 88(r3)				# 1473
	mfspr	r31, 8				# 1473
	mr	r5, r20				# 1473
	mr	r2, r17				# 1473
	mr	r1, r6				# 1473
	mr	r6, r19				# 1473
	stw	r31, 92(r3)				# 1473
	addi	r3, r3, 96				# 1473
	lwz	r31, 0(r1)				# 1473
	mtspr	9, r31				# 1473
	bctr				# 1473
	addi	r3, r3, -96				# 1473
	lwz	r31, 92(r3)				# 1473
	mtspr	8, r31				# 1473
	lwz	r2, 88(r3)				# 1474
	slwi	r5, r2, 2				# 1474
	lwz	r6, 84(r3)				# 1474
	lfsx	f0, r6, r5				# 1474
	lis	r31, ha16(l.11981)
	addi	r31, r31, lo16(l.11981)
	lfs	f1, 0(r31)				# 1476
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.16301				# 109
	addi	r5, 0, 0
	b	ble_cont.16302				# 109
ble_else.16301:
	addi	r5, 0, 1
ble_cont.16302:
	cmpw	cr7, r5, r2				# 1476
	bne	cr7, beq_else.16303				# 1476
	addi	r5, 0, 0
	b	beq_cont.16304				# 1476
beq_else.16303:
	lis	r31, ha16(l.12214)
	addi	r31, r31, lo16(l.12214)
	lfs	f1, 0(r31)				# 1477
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16305				# 109
	addi	r5, 0, 0
	b	ble_cont.16306				# 109
ble_else.16305:
	addi	r5, 0, 1
ble_cont.16306:
beq_cont.16304:
	cmpw	cr7, r5, r2				# 1641
	bne	cr7, beq_else.16307				# 1641
	b	beq_cont.16308				# 1641
beq_else.16307:
	slwi	r5, r2, 2				# 1642
	lwz	r6, 80(r3)				# 1642
	lwzx	r5, r6, r5				# 1642
	slwi	r5, r5, 2				# 1642
	slwi	r6, r2, 2				# 1642
	lwz	r7, 76(r3)				# 1642
	lwzx	r6, r7, r6				# 1642
	add	r5, r5, r6				# 1642
	lwz	r6, 72(r3)				# 535
	lwz	r7, 0(r6)				# 535
	cmpw	cr7, r5, r7				# 1643
	bne	cr7, beq_else.16309				# 1643
	slwi	r5, r2, 2				# 1645
	lwz	r7, 68(r3)				# 1645
	lwzx	r5, r7, r5				# 1645
	lwz	r1, 64(r3)				# 1645
	mfspr	r31, 8				# 1645
	stw	r31, 92(r3)				# 1645
	addi	r3, r3, 96				# 1645
	lwz	r31, 0(r1)				# 1645
	mtspr	9, r31				# 1645
	bctr				# 1645
	addi	r3, r3, -96				# 1645
	lwz	r31, 92(r3)				# 1645
	mtspr	8, r31				# 1645
	lwz	r5, 88(r3)				# 1645
	cmpw	cr7, r2, r5				# 1645
	bne	cr7, beq_else.16311				# 1645
	lwz	r2, 60(r3)				# 521
	lwz	r6, 0(r2)				# 521
	slwi	r7, r5, 2				# 195
	lwz	r8, 56(r3)				# 195
	lfsx	f0, r8, r7				# 195
	slwi	r7, r5, 2				# 195
	lfsx	f1, r6, r7				# 195
	fmul	f0, f0, f1				# 195
	lwz	r7, 52(r3)				# 195
	slwi	r9, r7, 2				# 195
	lfsx	f1, r8, r9				# 195
	slwi	r9, r7, 2				# 195
	lfsx	f2, r6, r9				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lwz	r9, 48(r3)				# 195
	slwi	r10, r9, 2				# 195
	lfsx	f1, r8, r10				# 195
	slwi	r8, r9, 2				# 195
	lfsx	f2, r6, r8				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lwz	r6, 72(r3)				# 547
	lfs	f1, 8(r6)				# 547
	lfs	f2, 40(r3)				# 1649
	fmul	f3, f1, f2				# 1649
	fmul	f0, f3, f0				# 1649
	lwz	r2, 0(r2)				# 521
	slwi	r6, r5, 2				# 195
	lwz	r8, 32(r3)				# 195
	lfsx	f3, r8, r6				# 195
	slwi	r6, r5, 2				# 195
	lfsx	f4, r2, r6				# 195
	fmul	f3, f3, f4				# 195
	slwi	r6, r7, 2				# 195
	lfsx	f4, r8, r6				# 195
	slwi	r6, r7, 2				# 195
	lfsx	f5, r2, r6				# 195
	fmul	f4, f4, f5				# 195
	fadd	f3, f3, f4				# 195
	slwi	r6, r9, 2				# 195
	lfsx	f4, r8, r6				# 195
	slwi	r6, r9, 2				# 195
	lfsx	f5, r2, r6				# 195
	fmul	f4, f4, f5				# 195
	fadd	f3, f3, f4				# 195
	fmul	f1, f1, f3				# 1650
	lfs	f3, 24(r3)				# 113
	fcmpu	cr7, f0, f3				# 113
	bgt	cr7, ble_else.16313				# 113
	addi	r2, 0, 0
	b	ble_cont.16314				# 113
ble_else.16313:
	addi	r2, 0, 1
ble_cont.16314:
	cmpw	cr7, r2, r5				# 1620
	bne	cr7, beq_else.16315				# 1620
	b	beq_cont.16316				# 1620
beq_else.16315:
	slwi	r2, r5, 2				# 205
	lwz	r6, 20(r3)				# 205
	lfsx	f4, r6, r2				# 205
	slwi	r2, r5, 2				# 205
	lwz	r10, 16(r3)				# 205
	lfsx	f5, r10, r2				# 205
	fmul	f5, f0, f5				# 205
	fadd	f4, f4, f5				# 205
	slwi	r2, r5, 2				# 205
	stfsx	f4, r6, r2				# 205
	slwi	r2, r7, 2				# 206
	lfsx	f4, r6, r2				# 206
	slwi	r2, r7, 2				# 206
	lfsx	f5, r10, r2				# 206
	fmul	f5, f0, f5				# 206
	fadd	f4, f4, f5				# 206
	slwi	r2, r7, 2				# 206
	stfsx	f4, r6, r2				# 206
	slwi	r2, r9, 2				# 207
	lfsx	f4, r6, r2				# 207
	slwi	r2, r9, 2				# 207
	lfsx	f5, r10, r2				# 207
	fmul	f0, f0, f5				# 207
	fadd	f0, f4, f0				# 207
	slwi	r2, r9, 2				# 207
	stfsx	f0, r6, r2				# 207
beq_cont.16316:
	fcmpu	cr7, f1, f3				# 113
	bgt	cr7, ble_else.16317				# 113
	addi	r2, 0, 0
	b	ble_cont.16318				# 113
ble_else.16317:
	addi	r2, 0, 1
ble_cont.16318:
	cmpw	cr7, r2, r5				# 1625
	bne	cr7, beq_else.16319				# 1625
	b	beq_cont.16320				# 1625
beq_else.16319:
	fmul	f0, f1, f1				# 103
	fmul	f0, f0, f0				# 103
	lfs	f1, 8(r3)				# 1626
	fmul	f0, f0, f1				# 1626
	slwi	r2, r5, 2				# 1627
	lwz	r6, 20(r3)				# 1627
	lfsx	f3, r6, r2				# 1627
	fadd	f3, f3, f0				# 1627
	slwi	r2, r5, 2				# 1627
	stfsx	f3, r6, r2				# 1627
	slwi	r2, r7, 2				# 1628
	lfsx	f3, r6, r2				# 1628
	fadd	f3, f3, f0				# 1628
	slwi	r2, r7, 2				# 1628
	stfsx	f3, r6, r2				# 1628
	slwi	r2, r9, 2				# 1629
	lfsx	f3, r6, r2				# 1629
	fadd	f0, f3, f0				# 1629
	slwi	r2, r9, 2				# 1629
	stfsx	f0, r6, r2				# 1629
beq_cont.16320:
	b	beq_cont.16312				# 1645
beq_else.16311:
beq_cont.16312:
	b	beq_cont.16310				# 1643
beq_else.16309:
beq_cont.16310:
beq_cont.16308:
	lwz	r2, 52(r3)				# 1655
	lwz	r5, 4(r3)				# 1655
	sub	r2, r5, r2				# 1655
	lfs	f0, 40(r3)				# 1655
	lfs	f1, 8(r3)				# 1655
	lwz	r5, 32(r3)				# 1655
	lwz	r1, 0(r3)				# 1655
	lwz	r30, 0(r1)				# 1655
	mtspr	9, r30
	bctr				# 1655
ble_else.16299:
	blr
trace_ray.2817:
	lwz	r7, 108(r1)				# 1661
	lwz	r8, 104(r1)				# 1661
	lwz	r9, 100(r1)				# 1661
	lwz	r10, 96(r1)				# 1661
	lwz	r11, 92(r1)				# 1661
	lwz	r12, 88(r1)				# 1661
	lwz	r13, 84(r1)				# 1661
	lwz	r14, 80(r1)				# 1661
	lwz	r15, 76(r1)				# 1661
	lwz	r16, 72(r1)				# 1661
	lwz	r17, 68(r1)				# 1661
	lwz	r18, 64(r1)				# 1661
	lwz	r19, 60(r1)				# 1661
	lwz	r20, 56(r1)				# 1661
	lwz	r21, 52(r1)				# 1661
	lwz	r22, 48(r1)				# 1661
	lwz	r23, 44(r1)				# 1661
	lwz	r24, 40(r1)				# 1661
	lwz	r25, 36(r1)				# 1661
	lwz	r26, 32(r1)				# 1661
	lwz	r27, 28(r1)				# 1661
	lwz	r28, 24(r1)				# 1661
	lwz	r29, 20(r1)				# 1661
	lwz	r30, 16(r1)				# 1661
	stw	r8, 0(r3)				# 1661
	lwz	r8, 12(r1)				# 1661
	lfs	f2, 8(r1)				# 1661
	lfs	f3, 4(r1)				# 1661
	cmpwi	cr7, r2, 4				# 1662
	bgt	cr7, ble_else.16322				# 1662
	stw	r1, 4(r3)				# 468
	lwz	r1, 8(r6)				# 468
	stw	r20, 8(r3)				# 1383
	slwi	r20, r30, 2				# 1383
	stfsx	f2, r10, r20				# 1383
	slwi	r20, r30, 2				# 1384
	lwzx	r20, r17, r20				# 1384
	stfs	f1, 16(r3)				# 1384
	stw	r15, 24(r3)				# 1384
	stw	r21, 28(r3)				# 1384
	stw	r12, 32(r3)				# 1384
	stw	r14, 36(r3)				# 1384
	stw	r17, 40(r3)				# 1384
	stw	r11, 44(r3)				# 1384
	stw	r6, 48(r3)				# 1384
	stw	r7, 52(r3)				# 1384
	stw	r13, 56(r3)				# 1384
	stw	r24, 60(r3)				# 1384
	stw	r26, 64(r3)				# 1384
	stw	r19, 68(r3)				# 1384
	stw	r23, 72(r3)				# 1384
	stw	r18, 76(r3)				# 1384
	stw	r25, 80(r3)				# 1384
	stw	r16, 84(r3)				# 1384
	stw	r27, 88(r3)				# 1384
	stfs	f0, 96(r3)				# 1384
	stfs	f3, 104(r3)				# 1384
	stw	r28, 112(r3)				# 1384
	stw	r8, 116(r3)				# 1384
	stw	r22, 120(r3)				# 1384
	stw	r5, 124(r3)				# 1384
	stw	r1, 128(r3)				# 1384
	stw	r29, 132(r3)				# 1384
	stw	r2, 136(r3)				# 1384
	stw	r10, 140(r3)				# 1384
	stw	r30, 144(r3)				# 1384
	mfspr	r31, 8				# 1384
	mr	r6, r5				# 1384
	mr	r2, r30				# 1384
	mr	r1, r9				# 1384
	mr	r5, r20				# 1384
	stw	r31, 148(r3)				# 1384
	addi	r3, r3, 152				# 1384
	lwz	r31, 0(r1)				# 1384
	mtspr	9, r31				# 1384
	bctr				# 1384
	addi	r3, r3, -152				# 1384
	lwz	r31, 148(r3)				# 1384
	mtspr	8, r31				# 1384
	lwz	r2, 144(r3)				# 1385
	slwi	r5, r2, 2				# 1385
	lwz	r6, 140(r3)				# 1385
	lfsx	f0, r6, r5				# 1385
	lis	r31, ha16(l.11981)
	addi	r31, r31, lo16(l.11981)
	lfs	f1, 0(r31)				# 1387
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.16325				# 109
	addi	r5, 0, 0
	b	ble_cont.16326				# 109
ble_else.16325:
	addi	r5, 0, 1
ble_cont.16326:
	cmpw	cr7, r5, r2				# 1387
	bne	cr7, beq_else.16327				# 1387
	addi	r5, 0, 0
	b	beq_cont.16328				# 1387
beq_else.16327:
	lis	r31, ha16(l.12214)
	addi	r31, r31, lo16(l.12214)
	lfs	f1, 0(r31)				# 1388
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16329				# 109
	addi	r5, 0, 0
	b	ble_cont.16330				# 109
ble_else.16329:
	addi	r5, 0, 1
ble_cont.16330:
beq_cont.16328:
	cmpw	cr7, r5, r2				# 1664
	bne	cr7, beq_else.16331				# 1664
	lwz	r5, 136(r3)				# 1727
	slwi	r6, r5, 2				# 1727
	lwz	r7, 128(r3)				# 1727
	lwz	r8, 132(r3)				# 1727
	stwx	r8, r7, r6				# 1727
	cmpw	cr7, r5, r2				# 1729
	bne	cr7, beq_else.16332				# 1729
	blr
beq_else.16332:
	slwi	r5, r2, 2				# 195
	lwz	r6, 124(r3)				# 195
	lfsx	f0, r6, r5				# 195
	slwi	r5, r2, 2				# 195
	lwz	r7, 120(r3)				# 195
	lfsx	f1, r7, r5				# 195
	fmul	f0, f0, f1				# 195
	lwz	r5, 116(r3)				# 195
	slwi	r8, r5, 2				# 195
	lfsx	f1, r6, r8				# 195
	slwi	r8, r5, 2				# 195
	lfsx	f2, r7, r8				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lwz	r8, 112(r3)				# 195
	slwi	r9, r8, 2				# 195
	lfsx	f1, r6, r9				# 195
	slwi	r6, r8, 2				# 195
	lfsx	f2, r7, r6				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	fneg	f0, f0				# 107
	lfs	f1, 104(r3)				# 113
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.16334				# 113
	addi	r6, 0, 0
	b	ble_cont.16335				# 113
ble_else.16334:
	addi	r6, 0, 1
ble_cont.16335:
	cmpw	cr7, r6, r2				# 1732
	bne	cr7, beq_else.16336				# 1732
	blr
beq_else.16336:
	fmul	f1, f0, f0				# 103
	fmul	f0, f1, f0				# 1735
	lfs	f1, 96(r3)				# 1735
	fmul	f0, f0, f1				# 1735
	slwi	r6, r2, 2				# 1735
	lwz	r7, 88(r3)				# 1735
	lfsx	f1, r7, r6				# 1735
	fmul	f0, f0, f1				# 1735
	slwi	r6, r2, 2				# 1736
	lwz	r7, 84(r3)				# 1736
	lfsx	f1, r7, r6				# 1736
	fadd	f1, f1, f0				# 1736
	slwi	r2, r2, 2				# 1736
	stfsx	f1, r7, r2				# 1736
	slwi	r2, r5, 2				# 1737
	lfsx	f1, r7, r2				# 1737
	fadd	f1, f1, f0				# 1737
	slwi	r2, r5, 2				# 1737
	stfsx	f1, r7, r2				# 1737
	slwi	r2, r8, 2				# 1738
	lfsx	f1, r7, r2				# 1738
	fadd	f0, f1, f0				# 1738
	slwi	r2, r8, 2				# 1738
	stfsx	f0, r7, r2				# 1738
	blr
beq_else.16331:
	slwi	r5, r2, 2				# 1666
	lwz	r7, 80(r3)				# 1666
	lwzx	r5, r7, r5				# 1666
	slwi	r7, r5, 2				# 1667
	lwz	r8, 76(r3)				# 1667
	lwzx	r7, r8, r7				# 1667
	lwz	r8, 8(r7)				# 262
	lwz	r9, 28(r7)				# 360
	slwi	r10, r2, 2				# 365
	lfsx	f0, r9, r10				# 365
	lfs	f1, 96(r3)				# 1669
	fmul	f0, f0, f1				# 1669
	lwz	r9, 4(r7)				# 252
	lwz	r10, 116(r3)				# 1529
	stw	r8, 148(r3)				# 1529
	stfs	f0, 152(r3)				# 1529
	stw	r5, 160(r3)				# 1529
	stw	r7, 164(r3)				# 1529
	cmpw	cr7, r9, r10				# 1529
	bne	cr7, beq_else.16339				# 1529
	slwi	r9, r2, 2				# 1490
	lwz	r11, 72(r3)				# 1490
	lwzx	r9, r11, r9				# 1490
	slwi	r12, r2, 2				# 154
	lwz	r13, 68(r3)				# 154
	lfs	f2, 104(r3)				# 154
	stfsx	f2, r13, r12				# 154
	slwi	r12, r10, 2				# 155
	stfsx	f2, r13, r12				# 155
	lwz	r12, 112(r3)				# 156
	slwi	r14, r12, 2				# 156
	stfsx	f2, r13, r14				# 156
	sub	r9, r9, r10				# 1493
	slwi	r14, r9, 2				# 1493
	lwz	r15, 124(r3)				# 1493
	lfsx	f3, r15, r14				# 1493
	fcmpu	cr7, f3, f2				# 111
	bne	cr7, beq_else.16341				# 111
	addi	r14, 0, 1
	b	beq_cont.16342				# 111
beq_else.16341:
	addi	r14, 0, 0
beq_cont.16342:
	cmpw	cr7, r14, r2				# 125
	bne	cr7, beq_else.16343				# 125
	fcmpu	cr7, f3, f2				# 113
	bgt	cr7, ble_else.16345				# 113
	addi	r14, 0, 0
	b	ble_cont.16346				# 113
ble_else.16345:
	addi	r14, 0, 1
ble_cont.16346:
	cmpw	cr7, r14, r2				# 126
	bne	cr7, beq_else.16347				# 126
	lis	r31, ha16(l.11682)
	addi	r31, r31, lo16(l.11682)
	lfs	f3, 0(r31)				# 127
	b	beq_cont.16348				# 126
beq_else.16347:
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f3, 0(r31)				# 126
beq_cont.16348:
	b	beq_cont.16344				# 125
beq_else.16343:
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f3, 0(r31)				# 125
beq_cont.16344:
	fneg	f3, f3				# 107
	slwi	r9, r9, 2				# 1493
	stfsx	f3, r13, r9				# 1493
	b	beq_cont.16340				# 1529
beq_else.16339:
	lwz	r11, 112(r3)				# 1531
	cmpw	cr7, r9, r11				# 1531
	bne	cr7, beq_else.16349				# 1531
	lwz	r9, 16(r7)				# 290
	slwi	r12, r2, 2				# 295
	lfsx	f2, r9, r12				# 295
	fneg	f2, f2				# 107
	slwi	r9, r2, 2				# 1499
	lwz	r12, 68(r3)				# 1499
	stfsx	f2, r12, r9				# 1499
	lwz	r9, 16(r7)				# 300
	slwi	r13, r10, 2				# 305
	lfsx	f2, r9, r13				# 305
	fneg	f2, f2				# 107
	slwi	r9, r10, 2				# 1500
	stfsx	f2, r12, r9				# 1500
	lwz	r9, 16(r7)				# 310
	slwi	r13, r11, 2				# 315
	lfsx	f2, r9, r13				# 315
	fneg	f2, f2				# 107
	slwi	r9, r11, 2				# 1501
	stfsx	f2, r12, r9				# 1501
	b	beq_cont.16350				# 1531
beq_else.16349:
	lwz	r1, 64(r3)				# 1534
	mfspr	r31, 8				# 1534
	mr	r2, r7				# 1534
	stw	r31, 168(r3)				# 1534
	addi	r3, r3, 172				# 1534
	lwz	r31, 0(r1)				# 1534
	mtspr	9, r31				# 1534
	bctr				# 1534
	addi	r3, r3, -172				# 1534
	lwz	r31, 168(r3)				# 1534
	mtspr	8, r31				# 1534
beq_cont.16350:
beq_cont.16340:
	lwz	r2, 144(r3)				# 166
	slwi	r5, r2, 2				# 166
	lwz	r6, 60(r3)				# 166
	lfsx	f0, r6, r5				# 166
	slwi	r5, r2, 2				# 166
	lwz	r7, 56(r3)				# 166
	stfsx	f0, r7, r5				# 166
	lwz	r5, 116(r3)				# 167
	slwi	r8, r5, 2				# 167
	lfsx	f0, r6, r8				# 167
	slwi	r8, r5, 2				# 167
	stfsx	f0, r7, r8				# 167
	lwz	r8, 112(r3)				# 168
	slwi	r9, r8, 2				# 168
	lfsx	f0, r6, r9				# 168
	slwi	r9, r8, 2				# 168
	stfsx	f0, r7, r9				# 168
	lwz	r7, 164(r3)				# 1673
	lwz	r1, 52(r3)				# 1673
	mfspr	r31, 8				# 1673
	mr	r5, r6				# 1673
	mr	r2, r7				# 1673
	stw	r31, 168(r3)				# 1673
	addi	r3, r3, 172				# 1673
	lwz	r31, 0(r1)				# 1673
	mtspr	9, r31				# 1673
	bctr				# 1673
	addi	r3, r3, -172				# 1673
	lwz	r31, 168(r3)				# 1673
	mtspr	8, r31				# 1673
	lwz	r2, 160(r3)				# 1676
	slwi	r2, r2, 2				# 1676
	lwz	r5, 144(r3)				# 1676
	slwi	r6, r5, 2				# 1676
	lwz	r7, 72(r3)				# 1676
	lwzx	r6, r7, r6				# 1676
	add	r2, r2, r6				# 1676
	lwz	r6, 136(r3)				# 1676
	slwi	r7, r6, 2				# 1676
	lwz	r8, 128(r3)				# 1676
	stwx	r2, r8, r7				# 1676
	lwz	r2, 48(r3)				# 460
	lwz	r7, 4(r2)				# 460
	slwi	r9, r6, 2				# 1678
	lwzx	r7, r7, r9				# 1678
	slwi	r9, r5, 2				# 166
	lwz	r10, 60(r3)				# 166
	lfsx	f0, r10, r9				# 166
	slwi	r9, r5, 2				# 166
	stfsx	f0, r7, r9				# 166
	lwz	r9, 116(r3)				# 167
	slwi	r11, r9, 2				# 167
	lfsx	f0, r10, r11				# 167
	slwi	r11, r9, 2				# 167
	stfsx	f0, r7, r11				# 167
	lwz	r11, 112(r3)				# 168
	slwi	r12, r11, 2				# 168
	lfsx	f0, r10, r12				# 168
	slwi	r12, r11, 2				# 168
	stfsx	f0, r7, r12				# 168
	lwz	r7, 12(r2)				# 475
	lwz	r12, 164(r3)				# 360
	lwz	r13, 28(r12)				# 360
	slwi	r14, r5, 2				# 365
	lfsx	f0, r13, r14				# 365
	lis	r31, ha16(l.12188)
	addi	r31, r31, lo16(l.12188)
	lfs	f1, 0(r31)				# 1682
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16351				# 109
	addi	r13, 0, 0
	b	ble_cont.16352				# 109
ble_else.16351:
	addi	r13, 0, 1
ble_cont.16352:
	cmpw	cr7, r13, r5				# 1682
	bne	cr7, beq_else.16353				# 1682
	slwi	r13, r6, 2				# 1685
	stwx	r9, r7, r13				# 1685
	lwz	r7, 16(r2)				# 482
	slwi	r13, r6, 2				# 1687
	lwzx	r13, r7, r13				# 1687
	slwi	r14, r5, 2				# 166
	lwz	r15, 44(r3)				# 166
	lfsx	f0, r15, r14				# 166
	slwi	r14, r5, 2				# 166
	stfsx	f0, r13, r14				# 166
	slwi	r14, r9, 2				# 167
	lfsx	f0, r15, r14				# 167
	slwi	r14, r9, 2				# 167
	stfsx	f0, r13, r14				# 167
	slwi	r14, r11, 2				# 168
	lfsx	f0, r15, r14				# 168
	slwi	r14, r11, 2				# 168
	stfsx	f0, r13, r14				# 168
	slwi	r13, r6, 2				# 1688
	lwzx	r7, r7, r13				# 1688
	lis	r31, ha16(l.12289)
	addi	r31, r31, lo16(l.12289)
	lfs	f0, 0(r31)				# 1688
	lfs	f1, 152(r3)				# 1688
	fmul	f0, f0, f1				# 1688
	slwi	r13, r5, 2				# 226
	lfsx	f2, r7, r13				# 226
	fmul	f2, f2, f0				# 226
	slwi	r13, r5, 2				# 226
	stfsx	f2, r7, r13				# 226
	slwi	r13, r9, 2				# 227
	lfsx	f2, r7, r13				# 227
	fmul	f2, f2, f0				# 227
	slwi	r13, r9, 2				# 227
	stfsx	f2, r7, r13				# 227
	slwi	r13, r11, 2				# 228
	lfsx	f2, r7, r13				# 228
	fmul	f0, f2, f0				# 228
	slwi	r13, r11, 2				# 228
	stfsx	f0, r7, r13				# 228
	lwz	r7, 28(r2)				# 512
	slwi	r13, r6, 2				# 1690
	lwzx	r7, r7, r13				# 1690
	slwi	r13, r5, 2				# 166
	lwz	r14, 68(r3)				# 166
	lfsx	f0, r14, r13				# 166
	slwi	r13, r5, 2				# 166
	stfsx	f0, r7, r13				# 166
	slwi	r13, r9, 2				# 167
	lfsx	f0, r14, r13				# 167
	slwi	r13, r9, 2				# 167
	stfsx	f0, r7, r13				# 167
	slwi	r13, r11, 2				# 168
	lfsx	f0, r14, r13				# 168
	slwi	r13, r11, 2				# 168
	stfsx	f0, r7, r13				# 168
	b	beq_cont.16354				# 1682
beq_else.16353:
	slwi	r13, r6, 2				# 1683
	stwx	r5, r7, r13				# 1683
beq_cont.16354:
	lis	r31, ha16(l.12303)
	addi	r31, r31, lo16(l.12303)
	lfs	f0, 0(r31)				# 1693
	slwi	r7, r5, 2				# 195
	lwz	r13, 124(r3)				# 195
	lfsx	f1, r13, r7				# 195
	slwi	r7, r5, 2				# 195
	lwz	r14, 68(r3)				# 195
	lfsx	f2, r14, r7				# 195
	fmul	f1, f1, f2				# 195
	slwi	r7, r9, 2				# 195
	lfsx	f2, r13, r7				# 195
	slwi	r7, r9, 2				# 195
	lfsx	f3, r14, r7				# 195
	fmul	f2, f2, f3				# 195
	fadd	f1, f1, f2				# 195
	slwi	r7, r11, 2				# 195
	lfsx	f2, r13, r7				# 195
	slwi	r7, r11, 2				# 195
	lfsx	f3, r14, r7				# 195
	fmul	f2, f2, f3				# 195
	fadd	f1, f1, f2				# 195
	fmul	f0, f0, f1				# 1693
	slwi	r7, r5, 2				# 205
	lfsx	f1, r13, r7				# 205
	slwi	r7, r5, 2				# 205
	lfsx	f2, r14, r7				# 205
	fmul	f2, f0, f2				# 205
	fadd	f1, f1, f2				# 205
	slwi	r7, r5, 2				# 205
	stfsx	f1, r13, r7				# 205
	slwi	r7, r9, 2				# 206
	lfsx	f1, r13, r7				# 206
	slwi	r7, r9, 2				# 206
	lfsx	f2, r14, r7				# 206
	fmul	f2, f0, f2				# 206
	fadd	f1, f1, f2				# 206
	slwi	r7, r9, 2				# 206
	stfsx	f1, r13, r7				# 206
	slwi	r7, r11, 2				# 207
	lfsx	f1, r13, r7				# 207
	slwi	r7, r11, 2				# 207
	lfsx	f2, r14, r7				# 207
	fmul	f0, f0, f2				# 207
	fadd	f0, f1, f0				# 207
	slwi	r7, r11, 2				# 207
	stfsx	f0, r13, r7				# 207
	lwz	r7, 28(r12)				# 370
	slwi	r15, r9, 2				# 375
	lfsx	f0, r7, r15				# 375
	lfs	f1, 96(r3)				# 1697
	fmul	f0, f1, f0				# 1697
	slwi	r7, r5, 2				# 1700
	lwz	r15, 40(r3)				# 1700
	lwzx	r7, r15, r7				# 1700
	lwz	r1, 36(r3)				# 1700
	stfs	f0, 168(r3)				# 1700
	mfspr	r31, 8				# 1700
	mr	r2, r5				# 1700
	mr	r5, r7				# 1700
	stw	r31, 176(r3)				# 1700
	addi	r3, r3, 180				# 1700
	lwz	r31, 0(r1)				# 1700
	mtspr	9, r31				# 1700
	bctr				# 1700
	addi	r3, r3, -180				# 1700
	lwz	r31, 176(r3)				# 1700
	mtspr	8, r31				# 1700
	lwz	r5, 144(r3)				# 1700
	cmpw	cr7, r2, r5				# 1700
	bne	cr7, beq_else.16355				# 1700
	slwi	r2, r5, 2				# 195
	lwz	r6, 68(r3)				# 195
	lfsx	f0, r6, r2				# 195
	slwi	r2, r5, 2				# 195
	lwz	r7, 120(r3)				# 195
	lfsx	f1, r7, r2				# 195
	fmul	f0, f0, f1				# 195
	lwz	r2, 116(r3)				# 195
	slwi	r8, r2, 2				# 195
	lfsx	f1, r6, r8				# 195
	slwi	r8, r2, 2				# 195
	lfsx	f2, r7, r8				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lwz	r8, 112(r3)				# 195
	slwi	r9, r8, 2				# 195
	lfsx	f1, r6, r9				# 195
	slwi	r6, r8, 2				# 195
	lfsx	f2, r7, r6				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	fneg	f0, f0				# 107
	lfs	f1, 152(r3)				# 1701
	fmul	f0, f0, f1				# 1701
	slwi	r6, r5, 2				# 195
	lwz	r9, 124(r3)				# 195
	lfsx	f2, r9, r6				# 195
	slwi	r6, r5, 2				# 195
	lfsx	f3, r7, r6				# 195
	fmul	f2, f2, f3				# 195
	slwi	r6, r2, 2				# 195
	lfsx	f3, r9, r6				# 195
	slwi	r6, r2, 2				# 195
	lfsx	f4, r7, r6				# 195
	fmul	f3, f3, f4				# 195
	fadd	f2, f2, f3				# 195
	slwi	r6, r8, 2				# 195
	lfsx	f3, r9, r6				# 195
	slwi	r6, r8, 2				# 195
	lfsx	f4, r7, r6				# 195
	fmul	f3, f3, f4				# 195
	fadd	f2, f2, f3				# 195
	fneg	f2, f2				# 107
	lfs	f3, 104(r3)				# 113
	fcmpu	cr7, f0, f3				# 113
	bgt	cr7, ble_else.16357				# 113
	addi	r6, 0, 0
	b	ble_cont.16358				# 113
ble_else.16357:
	addi	r6, 0, 1
ble_cont.16358:
	cmpw	cr7, r6, r5				# 1620
	bne	cr7, beq_else.16359				# 1620
	b	beq_cont.16360				# 1620
beq_else.16359:
	slwi	r6, r5, 2				# 205
	lwz	r7, 84(r3)				# 205
	lfsx	f4, r7, r6				# 205
	slwi	r6, r5, 2				# 205
	lwz	r10, 44(r3)				# 205
	lfsx	f5, r10, r6				# 205
	fmul	f5, f0, f5				# 205
	fadd	f4, f4, f5				# 205
	slwi	r6, r5, 2				# 205
	stfsx	f4, r7, r6				# 205
	slwi	r6, r2, 2				# 206
	lfsx	f4, r7, r6				# 206
	slwi	r6, r2, 2				# 206
	lfsx	f5, r10, r6				# 206
	fmul	f5, f0, f5				# 206
	fadd	f4, f4, f5				# 206
	slwi	r6, r2, 2				# 206
	stfsx	f4, r7, r6				# 206
	slwi	r6, r8, 2				# 207
	lfsx	f4, r7, r6				# 207
	slwi	r6, r8, 2				# 207
	lfsx	f5, r10, r6				# 207
	fmul	f0, f0, f5				# 207
	fadd	f0, f4, f0				# 207
	slwi	r6, r8, 2				# 207
	stfsx	f0, r7, r6				# 207
beq_cont.16360:
	fcmpu	cr7, f2, f3				# 113
	bgt	cr7, ble_else.16361				# 113
	addi	r6, 0, 0
	b	ble_cont.16362				# 113
ble_else.16361:
	addi	r6, 0, 1
ble_cont.16362:
	cmpw	cr7, r6, r5				# 1625
	bne	cr7, beq_else.16363				# 1625
	b	beq_cont.16364				# 1625
beq_else.16363:
	fmul	f0, f2, f2				# 103
	fmul	f0, f0, f0				# 103
	lfs	f2, 168(r3)				# 1626
	fmul	f0, f0, f2				# 1626
	slwi	r6, r5, 2				# 1627
	lwz	r7, 84(r3)				# 1627
	lfsx	f3, r7, r6				# 1627
	fadd	f3, f3, f0				# 1627
	slwi	r6, r5, 2				# 1627
	stfsx	f3, r7, r6				# 1627
	slwi	r6, r2, 2				# 1628
	lfsx	f3, r7, r6				# 1628
	fadd	f3, f3, f0				# 1628
	slwi	r6, r2, 2				# 1628
	stfsx	f3, r7, r6				# 1628
	slwi	r6, r8, 2				# 1629
	lfsx	f3, r7, r6				# 1629
	fadd	f0, f3, f0				# 1629
	slwi	r6, r8, 2				# 1629
	stfsx	f0, r7, r6				# 1629
beq_cont.16364:
	b	beq_cont.16356				# 1700
beq_else.16355:
beq_cont.16356:
	slwi	r2, r5, 2				# 166
	lwz	r6, 60(r3)				# 166
	lfsx	f0, r6, r2				# 166
	slwi	r2, r5, 2				# 166
	lwz	r7, 32(r3)				# 166
	stfsx	f0, r7, r2				# 166
	lwz	r2, 116(r3)				# 167
	slwi	r8, r2, 2				# 167
	lfsx	f0, r6, r8				# 167
	slwi	r8, r2, 2				# 167
	stfsx	f0, r7, r8				# 167
	lwz	r8, 112(r3)				# 168
	slwi	r9, r8, 2				# 168
	lfsx	f0, r6, r9				# 168
	slwi	r9, r8, 2				# 168
	stfsx	f0, r7, r9				# 168
	slwi	r7, r5, 2				# 1161
	lwz	r9, 28(r3)				# 1161
	lwzx	r7, r9, r7				# 1161
	sub	r7, r7, r2				# 1161
	lwz	r1, 24(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r7				# 1161
	mr	r2, r6				# 1161
	stw	r31, 176(r3)				# 1161
	addi	r3, r3, 180				# 1161
	lwz	r31, 0(r1)				# 1161
	mtspr	9, r31				# 1161
	bctr				# 1161
	addi	r3, r3, -180				# 1161
	lwz	r31, 176(r3)				# 1161
	mtspr	8, r31				# 1161
	lwz	r2, 144(r3)				# 1708
	slwi	r5, r2, 2				# 1708
	lwz	r6, 8(r3)				# 1708
	lwzx	r5, r6, r5				# 1708
	lwz	r6, 116(r3)				# 1708
	sub	r5, r5, r6				# 1708
	lfs	f0, 152(r3)				# 1708
	lfs	f1, 168(r3)				# 1708
	lwz	r7, 124(r3)				# 1708
	lwz	r1, 0(r3)				# 1708
	mfspr	r31, 8				# 1708
	mr	r2, r5				# 1708
	mr	r5, r7				# 1708
	stw	r31, 176(r3)				# 1708
	addi	r3, r3, 180				# 1708
	lwz	r31, 0(r1)				# 1708
	mtspr	9, r31				# 1708
	bctr				# 1708
	addi	r3, r3, -180				# 1708
	lwz	r31, 176(r3)				# 1708
	mtspr	8, r31				# 1708
	lis	r31, ha16(l.12356)
	addi	r31, r31, lo16(l.12356)
	lfs	f0, 0(r31)				# 1711
	lfs	f1, 96(r3)				# 109
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16365				# 109
	addi	r2, 0, 0
	b	ble_cont.16366				# 109
ble_else.16365:
	addi	r2, 0, 1
ble_cont.16366:
	lwz	r5, 144(r3)				# 1711
	cmpw	cr7, r2, r5				# 1711
	bne	cr7, beq_else.16367				# 1711
	blr
beq_else.16367:
	lwz	r2, 136(r3)				# 1713
	cmpwi	cr7, r2, 4				# 1713
	blt	cr7, bge_else.16369				# 1713
	b	bge_cont.16370				# 1713
bge_else.16369:
	lwz	r6, 116(r3)				# 1714
	add	r7, r2, r6				# 1714
	slwi	r7, r7, 2				# 1714
	lwz	r8, 128(r3)				# 1714
	lwz	r9, 132(r3)				# 1714
	stwx	r9, r8, r7				# 1714
bge_cont.16370:
	lwz	r6, 112(r3)				# 1717
	lwz	r7, 148(r3)				# 1717
	cmpw	cr7, r7, r6				# 1717
	bne	cr7, beq_else.16371				# 1717
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f0, 0(r31)				# 1718
	lwz	r6, 164(r3)				# 360
	lwz	r6, 28(r6)				# 360
	slwi	r7, r5, 2				# 365
	lfsx	f2, r6, r7				# 365
	fsub	f0, f0, f2				# 1718
	fmul	f0, f1, f0				# 1718
	lwz	r6, 116(r3)				# 1719
	add	r2, r2, r6				# 1719
	slwi	r5, r5, 2				# 1719
	lwz	r6, 140(r3)				# 1719
	lfsx	f1, r6, r5				# 1719
	lfs	f2, 16(r3)				# 1719
	fadd	f1, f2, f1				# 1719
	lwz	r5, 124(r3)				# 1719
	lwz	r6, 48(r3)				# 1719
	lwz	r1, 4(r3)				# 1719
	lwz	r30, 0(r1)				# 1719
	mtspr	9, r30
	bctr				# 1719
beq_else.16371:
	blr
ble_else.16322:
	blr
iter_trace_diffuse_rays.2826:
	lwz	r8, 72(r1)				# 1769
	lwz	r9, 68(r1)				# 1769
	lwz	r10, 64(r1)				# 1769
	lwz	r11, 60(r1)				# 1769
	lwz	r12, 56(r1)				# 1769
	lwz	r13, 52(r1)				# 1769
	lwz	r14, 48(r1)				# 1769
	lwz	r15, 44(r1)				# 1769
	lwz	r16, 40(r1)				# 1769
	lwz	r17, 36(r1)				# 1769
	lwz	r18, 32(r1)				# 1769
	lwz	r19, 28(r1)				# 1769
	lwz	r20, 24(r1)				# 1769
	lwz	r21, 20(r1)				# 1769
	lwz	r22, 16(r1)				# 1769
	lwz	r23, 12(r1)				# 1769
	lfs	f0, 8(r1)				# 1769
	lfs	f1, 4(r1)				# 1769
	cmpw	cr7, r22, r7				# 1770
	bgt	cr7, ble_else.16374				# 1770
	slwi	r24, r7, 2				# 1771
	lwzx	r24, r2, r24				# 1771
	lwz	r24, 0(r24)				# 521
	slwi	r25, r22, 2				# 195
	lfsx	f2, r24, r25				# 195
	slwi	r25, r22, 2				# 195
	lfsx	f3, r5, r25				# 195
	fmul	f2, f2, f3				# 195
	slwi	r25, r23, 2				# 195
	lfsx	f3, r24, r25				# 195
	slwi	r25, r23, 2				# 195
	lfsx	f4, r5, r25				# 195
	fmul	f3, f3, f4				# 195
	fadd	f2, f2, f3				# 195
	slwi	r25, r21, 2				# 195
	lfsx	f3, r24, r25				# 195
	slwi	r24, r21, 2				# 195
	lfsx	f4, r5, r24				# 195
	fmul	f3, f3, f4				# 195
	fadd	f2, f2, f3				# 195
	fcmpu	cr7, f1, f2				# 115
	bgt	cr7, ble_else.16375				# 115
	addi	r24, 0, 0
	b	ble_cont.16376				# 115
ble_else.16375:
	addi	r24, 0, 1
ble_cont.16376:
	stw	r6, 0(r3)				# 1774
	stw	r5, 4(r3)				# 1774
	stw	r2, 8(r3)				# 1774
	stw	r1, 12(r3)				# 1774
	stw	r21, 16(r3)				# 1774
	stw	r7, 20(r3)				# 1774
	cmpw	cr7, r24, r22				# 1774
	bne	cr7, beq_else.16377				# 1774
	slwi	r24, r7, 2				# 1777
	lwzx	r24, r2, r24				# 1777
	lis	r31, ha16(l.12406)
	addi	r31, r31, lo16(l.12406)
	lfs	f3, 0(r31)				# 1777
	fdiv	f2, f2, f3				# 1777
	slwi	r25, r22, 2				# 1472
	stfsx	f0, r10, r25				# 1472
	slwi	r25, r22, 2				# 1473
	lwzx	r25, r13, r25				# 1473
	stw	r11, 24(r3)				# 1473
	stw	r20, 28(r3)				# 1473
	stfs	f2, 32(r3)				# 1473
	stfs	f1, 40(r3)				# 1473
	stw	r23, 48(r3)				# 1473
	stw	r16, 52(r3)				# 1473
	stw	r15, 56(r3)				# 1473
	stw	r12, 60(r3)				# 1473
	stw	r13, 64(r3)				# 1473
	stw	r17, 68(r3)				# 1473
	stw	r8, 72(r3)				# 1473
	stw	r19, 76(r3)				# 1473
	stw	r24, 80(r3)				# 1473
	stw	r14, 84(r3)				# 1473
	stw	r18, 88(r3)				# 1473
	stw	r10, 92(r3)				# 1473
	stw	r22, 96(r3)				# 1473
	mfspr	r31, 8				# 1473
	mr	r6, r24				# 1473
	mr	r5, r25				# 1473
	mr	r2, r22				# 1473
	mr	r1, r9				# 1473
	stw	r31, 100(r3)				# 1473
	addi	r3, r3, 104				# 1473
	lwz	r31, 0(r1)				# 1473
	mtspr	9, r31				# 1473
	bctr				# 1473
	addi	r3, r3, -104				# 1473
	lwz	r31, 100(r3)				# 1473
	mtspr	8, r31				# 1473
	lwz	r2, 96(r3)				# 1474
	slwi	r5, r2, 2				# 1474
	lwz	r6, 92(r3)				# 1474
	lfsx	f0, r6, r5				# 1474
	lis	r31, ha16(l.11981)
	addi	r31, r31, lo16(l.11981)
	lfs	f1, 0(r31)				# 1476
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.16379				# 109
	addi	r5, 0, 0
	b	ble_cont.16380				# 109
ble_else.16379:
	addi	r5, 0, 1
ble_cont.16380:
	cmpw	cr7, r5, r2				# 1476
	bne	cr7, beq_else.16381				# 1476
	addi	r5, 0, 0
	b	beq_cont.16382				# 1476
beq_else.16381:
	lis	r31, ha16(l.12214)
	addi	r31, r31, lo16(l.12214)
	lfs	f1, 0(r31)				# 1477
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16383				# 109
	addi	r5, 0, 0
	b	ble_cont.16384				# 109
ble_else.16383:
	addi	r5, 0, 1
ble_cont.16384:
beq_cont.16382:
	cmpw	cr7, r5, r2				# 1754
	bne	cr7, beq_else.16385				# 1754
	b	beq_cont.16386				# 1754
beq_else.16385:
	slwi	r5, r2, 2				# 1755
	lwz	r6, 88(r3)				# 1755
	lwzx	r5, r6, r5				# 1755
	slwi	r5, r5, 2				# 1755
	lwz	r6, 84(r3)				# 1755
	lwzx	r5, r6, r5				# 1755
	lwz	r6, 80(r3)				# 521
	lwz	r6, 0(r6)				# 521
	lwz	r1, 76(r3)				# 1756
	stw	r5, 100(r3)				# 1756
	mfspr	r31, 8				# 1756
	mr	r2, r5				# 1756
	mr	r5, r6				# 1756
	stw	r31, 104(r3)				# 1756
	addi	r3, r3, 108				# 1756
	lwz	r31, 0(r1)				# 1756
	mtspr	9, r31				# 1756
	bctr				# 1756
	addi	r3, r3, -108				# 1756
	lwz	r31, 104(r3)				# 1756
	mtspr	8, r31				# 1756
	lwz	r2, 100(r3)				# 1757
	lwz	r5, 68(r3)				# 1757
	lwz	r1, 72(r3)				# 1757
	mfspr	r31, 8				# 1757
	stw	r31, 104(r3)				# 1757
	addi	r3, r3, 108				# 1757
	lwz	r31, 0(r1)				# 1757
	mtspr	9, r31				# 1757
	bctr				# 1757
	addi	r3, r3, -108				# 1757
	lwz	r31, 104(r3)				# 1757
	mtspr	8, r31				# 1757
	lwz	r2, 96(r3)				# 1760
	slwi	r5, r2, 2				# 1760
	lwz	r6, 64(r3)				# 1760
	lwzx	r5, r6, r5				# 1760
	lwz	r1, 60(r3)				# 1760
	mfspr	r31, 8				# 1760
	stw	r31, 104(r3)				# 1760
	addi	r3, r3, 108				# 1760
	lwz	r31, 0(r1)				# 1760
	mtspr	9, r31				# 1760
	bctr				# 1760
	addi	r3, r3, -108				# 1760
	lwz	r31, 104(r3)				# 1760
	mtspr	8, r31				# 1760
	lwz	r5, 96(r3)				# 1760
	cmpw	cr7, r2, r5				# 1760
	bne	cr7, beq_else.16387				# 1760
	slwi	r2, r5, 2				# 195
	lwz	r6, 56(r3)				# 195
	lfsx	f0, r6, r2				# 195
	slwi	r2, r5, 2				# 195
	lwz	r7, 52(r3)				# 195
	lfsx	f1, r7, r2				# 195
	fmul	f0, f0, f1				# 195
	lwz	r2, 48(r3)				# 195
	slwi	r8, r2, 2				# 195
	lfsx	f1, r6, r8				# 195
	slwi	r8, r2, 2				# 195
	lfsx	f2, r7, r8				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lwz	r8, 16(r3)				# 195
	slwi	r9, r8, 2				# 195
	lfsx	f1, r6, r9				# 195
	slwi	r6, r8, 2				# 195
	lfsx	f2, r7, r6				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	fneg	f0, f0				# 107
	lfs	f1, 40(r3)				# 113
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.16389				# 113
	addi	r6, 0, 0
	b	ble_cont.16390				# 113
ble_else.16389:
	addi	r6, 0, 1
ble_cont.16390:
	cmpw	cr7, r6, r5				# 1762
	bne	cr7, beq_else.16391				# 1762
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f0, 0(r31)				# 1762
	b	beq_cont.16392				# 1762
beq_else.16391:
beq_cont.16392:
	lfs	f1, 32(r3)				# 1763
	fmul	f0, f1, f0				# 1763
	lwz	r6, 100(r3)				# 360
	lwz	r6, 28(r6)				# 360
	slwi	r7, r5, 2				# 365
	lfsx	f1, r6, r7				# 365
	fmul	f0, f0, f1				# 1763
	slwi	r6, r5, 2				# 205
	lwz	r7, 28(r3)				# 205
	lfsx	f1, r7, r6				# 205
	slwi	r6, r5, 2				# 205
	lwz	r9, 24(r3)				# 205
	lfsx	f2, r9, r6				# 205
	fmul	f2, f0, f2				# 205
	fadd	f1, f1, f2				# 205
	slwi	r5, r5, 2				# 205
	stfsx	f1, r7, r5				# 205
	slwi	r5, r2, 2				# 206
	lfsx	f1, r7, r5				# 206
	slwi	r5, r2, 2				# 206
	lfsx	f2, r9, r5				# 206
	fmul	f2, f0, f2				# 206
	fadd	f1, f1, f2				# 206
	slwi	r2, r2, 2				# 206
	stfsx	f1, r7, r2				# 206
	slwi	r2, r8, 2				# 207
	lfsx	f1, r7, r2				# 207
	slwi	r2, r8, 2				# 207
	lfsx	f2, r9, r2				# 207
	fmul	f0, f0, f2				# 207
	fadd	f0, f1, f0				# 207
	slwi	r2, r8, 2				# 207
	stfsx	f0, r7, r2				# 207
	b	beq_cont.16388				# 1760
beq_else.16387:
beq_cont.16388:
beq_cont.16386:
	b	beq_cont.16378				# 1774
beq_else.16377:
	add	r24, r7, r23				# 1775
	slwi	r24, r24, 2				# 1775
	lwzx	r24, r2, r24				# 1775
	lis	r31, ha16(l.12382)
	addi	r31, r31, lo16(l.12382)
	lfs	f3, 0(r31)				# 1775
	fdiv	f2, f2, f3				# 1775
	slwi	r25, r22, 2				# 1472
	stfsx	f0, r10, r25				# 1472
	slwi	r25, r22, 2				# 1473
	lwzx	r25, r13, r25				# 1473
	stw	r11, 24(r3)				# 1473
	stw	r20, 28(r3)				# 1473
	stfs	f2, 104(r3)				# 1473
	stfs	f1, 40(r3)				# 1473
	stw	r23, 48(r3)				# 1473
	stw	r16, 52(r3)				# 1473
	stw	r15, 56(r3)				# 1473
	stw	r12, 60(r3)				# 1473
	stw	r13, 64(r3)				# 1473
	stw	r17, 68(r3)				# 1473
	stw	r8, 72(r3)				# 1473
	stw	r19, 76(r3)				# 1473
	stw	r24, 112(r3)				# 1473
	stw	r14, 84(r3)				# 1473
	stw	r18, 88(r3)				# 1473
	stw	r10, 92(r3)				# 1473
	stw	r22, 96(r3)				# 1473
	mfspr	r31, 8				# 1473
	mr	r6, r24				# 1473
	mr	r5, r25				# 1473
	mr	r2, r22				# 1473
	mr	r1, r9				# 1473
	stw	r31, 116(r3)				# 1473
	addi	r3, r3, 120				# 1473
	lwz	r31, 0(r1)				# 1473
	mtspr	9, r31				# 1473
	bctr				# 1473
	addi	r3, r3, -120				# 1473
	lwz	r31, 116(r3)				# 1473
	mtspr	8, r31				# 1473
	lwz	r2, 96(r3)				# 1474
	slwi	r5, r2, 2				# 1474
	lwz	r6, 92(r3)				# 1474
	lfsx	f0, r6, r5				# 1474
	lis	r31, ha16(l.11981)
	addi	r31, r31, lo16(l.11981)
	lfs	f1, 0(r31)				# 1476
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.16393				# 109
	addi	r5, 0, 0
	b	ble_cont.16394				# 109
ble_else.16393:
	addi	r5, 0, 1
ble_cont.16394:
	cmpw	cr7, r5, r2				# 1476
	bne	cr7, beq_else.16395				# 1476
	addi	r5, 0, 0
	b	beq_cont.16396				# 1476
beq_else.16395:
	lis	r31, ha16(l.12214)
	addi	r31, r31, lo16(l.12214)
	lfs	f1, 0(r31)				# 1477
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.16397				# 109
	addi	r5, 0, 0
	b	ble_cont.16398				# 109
ble_else.16397:
	addi	r5, 0, 1
ble_cont.16398:
beq_cont.16396:
	cmpw	cr7, r5, r2				# 1754
	bne	cr7, beq_else.16399				# 1754
	b	beq_cont.16400				# 1754
beq_else.16399:
	slwi	r5, r2, 2				# 1755
	lwz	r6, 88(r3)				# 1755
	lwzx	r5, r6, r5				# 1755
	slwi	r5, r5, 2				# 1755
	lwz	r6, 84(r3)				# 1755
	lwzx	r5, r6, r5				# 1755
	lwz	r6, 112(r3)				# 521
	lwz	r6, 0(r6)				# 521
	lwz	r1, 76(r3)				# 1756
	stw	r5, 116(r3)				# 1756
	mfspr	r31, 8				# 1756
	mr	r2, r5				# 1756
	mr	r5, r6				# 1756
	stw	r31, 120(r3)				# 1756
	addi	r3, r3, 124				# 1756
	lwz	r31, 0(r1)				# 1756
	mtspr	9, r31				# 1756
	bctr				# 1756
	addi	r3, r3, -124				# 1756
	lwz	r31, 120(r3)				# 1756
	mtspr	8, r31				# 1756
	lwz	r2, 116(r3)				# 1757
	lwz	r5, 68(r3)				# 1757
	lwz	r1, 72(r3)				# 1757
	mfspr	r31, 8				# 1757
	stw	r31, 120(r3)				# 1757
	addi	r3, r3, 124				# 1757
	lwz	r31, 0(r1)				# 1757
	mtspr	9, r31				# 1757
	bctr				# 1757
	addi	r3, r3, -124				# 1757
	lwz	r31, 120(r3)				# 1757
	mtspr	8, r31				# 1757
	lwz	r2, 96(r3)				# 1760
	slwi	r5, r2, 2				# 1760
	lwz	r6, 64(r3)				# 1760
	lwzx	r5, r6, r5				# 1760
	lwz	r1, 60(r3)				# 1760
	mfspr	r31, 8				# 1760
	stw	r31, 120(r3)				# 1760
	addi	r3, r3, 124				# 1760
	lwz	r31, 0(r1)				# 1760
	mtspr	9, r31				# 1760
	bctr				# 1760
	addi	r3, r3, -124				# 1760
	lwz	r31, 120(r3)				# 1760
	mtspr	8, r31				# 1760
	lwz	r5, 96(r3)				# 1760
	cmpw	cr7, r2, r5				# 1760
	bne	cr7, beq_else.16401				# 1760
	slwi	r2, r5, 2				# 195
	lwz	r6, 56(r3)				# 195
	lfsx	f0, r6, r2				# 195
	slwi	r2, r5, 2				# 195
	lwz	r7, 52(r3)				# 195
	lfsx	f1, r7, r2				# 195
	fmul	f0, f0, f1				# 195
	lwz	r2, 48(r3)				# 195
	slwi	r8, r2, 2				# 195
	lfsx	f1, r6, r8				# 195
	slwi	r8, r2, 2				# 195
	lfsx	f2, r7, r8				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lwz	r8, 16(r3)				# 195
	slwi	r9, r8, 2				# 195
	lfsx	f1, r6, r9				# 195
	slwi	r6, r8, 2				# 195
	lfsx	f2, r7, r6				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	fneg	f0, f0				# 107
	lfs	f1, 40(r3)				# 113
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.16403				# 113
	addi	r6, 0, 0
	b	ble_cont.16404				# 113
ble_else.16403:
	addi	r6, 0, 1
ble_cont.16404:
	cmpw	cr7, r6, r5				# 1762
	bne	cr7, beq_else.16405				# 1762
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
	lfs	f0, 0(r31)				# 1762
	b	beq_cont.16406				# 1762
beq_else.16405:
beq_cont.16406:
	lfs	f1, 104(r3)				# 1763
	fmul	f0, f1, f0				# 1763
	lwz	r6, 116(r3)				# 360
	lwz	r6, 28(r6)				# 360
	slwi	r7, r5, 2				# 365
	lfsx	f1, r6, r7				# 365
	fmul	f0, f0, f1				# 1763
	slwi	r6, r5, 2				# 205
	lwz	r7, 28(r3)				# 205
	lfsx	f1, r7, r6				# 205
	slwi	r6, r5, 2				# 205
	lwz	r9, 24(r3)				# 205
	lfsx	f2, r9, r6				# 205
	fmul	f2, f0, f2				# 205
	fadd	f1, f1, f2				# 205
	slwi	r5, r5, 2				# 205
	stfsx	f1, r7, r5				# 205
	slwi	r5, r2, 2				# 206
	lfsx	f1, r7, r5				# 206
	slwi	r5, r2, 2				# 206
	lfsx	f2, r9, r5				# 206
	fmul	f2, f0, f2				# 206
	fadd	f1, f1, f2				# 206
	slwi	r2, r2, 2				# 206
	stfsx	f1, r7, r2				# 206
	slwi	r2, r8, 2				# 207
	lfsx	f1, r7, r2				# 207
	slwi	r2, r8, 2				# 207
	lfsx	f2, r9, r2				# 207
	fmul	f0, f0, f2				# 207
	fadd	f0, f1, f0				# 207
	slwi	r2, r8, 2				# 207
	stfsx	f0, r7, r2				# 207
	b	beq_cont.16402				# 1760
beq_else.16401:
beq_cont.16402:
beq_cont.16400:
beq_cont.16378:
	lwz	r2, 16(r3)				# 1779
	lwz	r5, 20(r3)				# 1779
	sub	r7, r5, r2				# 1779
	lwz	r2, 8(r3)				# 1779
	lwz	r5, 4(r3)				# 1779
	lwz	r6, 0(r3)				# 1779
	lwz	r1, 12(r3)				# 1779
	lwz	r30, 0(r1)				# 1779
	mtspr	9, r30
	bctr				# 1779
ble_else.16374:
	blr
do_without_neighbors.2848:
	lwz	r6, 44(r1)				# 1855
	lwz	r7, 40(r1)				# 1855
	lwz	r8, 36(r1)				# 1855
	lwz	r9, 32(r1)				# 1855
	lwz	r10, 28(r1)				# 1855
	lwz	r11, 24(r1)				# 1855
	lwz	r12, 20(r1)				# 1855
	lwz	r13, 16(r1)				# 1855
	lwz	r14, 12(r1)				# 1855
	lwz	r15, 8(r1)				# 1855
	lwz	r16, 4(r1)				# 1855
	cmpwi	cr7, r5, 4				# 1856
	bgt	cr7, ble_else.16408				# 1856
	lwz	r17, 8(r2)				# 468
	slwi	r18, r5, 2				# 1859
	lwzx	r17, r17, r18				# 1859
	cmpw	cr7, r15, r17				# 1859
	bgt	cr7, ble_else.16409				# 1859
	lwz	r17, 12(r2)				# 475
	slwi	r18, r5, 2				# 1861
	lwzx	r17, r17, r18				# 1861
	stw	r2, 0(r3)				# 1861
	stw	r1, 4(r3)				# 1861
	stw	r16, 8(r3)				# 1861
	stw	r5, 12(r3)				# 1861
	cmpw	cr7, r17, r15				# 1861
	bne	cr7, beq_else.16410				# 1861
	b	beq_cont.16411				# 1861
beq_else.16410:
	lwz	r17, 20(r2)				# 489
	lwz	r18, 28(r2)				# 512
	lwz	r19, 4(r2)				# 460
	lwz	r20, 16(r2)				# 482
	slwi	r21, r5, 2				# 1824
	lwzx	r17, r17, r21				# 1824
	slwi	r21, r15, 2				# 166
	lfsx	f0, r17, r21				# 166
	slwi	r21, r15, 2				# 166
	stfsx	f0, r12, r21				# 166
	slwi	r21, r16, 2				# 167
	lfsx	f0, r17, r21				# 167
	slwi	r21, r16, 2				# 167
	stfsx	f0, r12, r21				# 167
	slwi	r21, r13, 2				# 168
	lfsx	f0, r17, r21				# 168
	slwi	r17, r13, 2				# 168
	stfsx	f0, r12, r17				# 168
	lwz	r17, 24(r2)				# 498
	slwi	r21, r15, 2				# 500
	lwzx	r17, r17, r21				# 500
	slwi	r21, r5, 2				# 1827
	lwzx	r18, r18, r21				# 1827
	slwi	r21, r5, 2				# 1828
	lwzx	r19, r19, r21				# 1828
	stw	r12, 16(r3)				# 1794
	stw	r8, 20(r3)				# 1794
	stw	r20, 24(r3)				# 1794
	stw	r14, 28(r3)				# 1794
	stw	r18, 32(r3)				# 1794
	stw	r10, 36(r3)				# 1794
	stw	r7, 40(r3)				# 1794
	stw	r9, 44(r3)				# 1794
	stw	r13, 48(r3)				# 1794
	stw	r6, 52(r3)				# 1794
	stw	r19, 56(r3)				# 1794
	stw	r15, 60(r3)				# 1794
	stw	r11, 64(r3)				# 1794
	stw	r17, 68(r3)				# 1794
	cmpw	cr7, r17, r15				# 1794
	bne	cr7, beq_else.16412				# 1794
	b	beq_cont.16413				# 1794
beq_else.16412:
	slwi	r21, r15, 2				# 1795
	lwzx	r21, r11, r21				# 1795
	slwi	r22, r15, 2				# 166
	lfsx	f0, r19, r22				# 166
	slwi	r22, r15, 2				# 166
	stfsx	f0, r6, r22				# 166
	slwi	r22, r16, 2				# 167
	lfsx	f0, r19, r22				# 167
	slwi	r22, r16, 2				# 167
	stfsx	f0, r6, r22				# 167
	slwi	r22, r13, 2				# 168
	lfsx	f0, r19, r22				# 168
	slwi	r22, r13, 2				# 168
	stfsx	f0, r6, r22				# 168
	slwi	r22, r15, 2				# 1161
	lwzx	r22, r9, r22				# 1161
	sub	r22, r22, r16				# 1161
	stw	r21, 72(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r22				# 1161
	mr	r2, r19				# 1161
	mr	r1, r7				# 1161
	stw	r31, 76(r3)				# 1161
	addi	r3, r3, 80				# 1161
	lwz	r31, 0(r1)				# 1161
	mtspr	9, r31				# 1161
	bctr				# 1161
	addi	r3, r3, -80				# 1161
	lwz	r31, 76(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118
	lwz	r2, 72(r3)				# 1788
	lwz	r5, 32(r3)				# 1788
	lwz	r6, 56(r3)				# 1788
	lwz	r1, 36(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, 76(r3)				# 1788
	addi	r3, r3, 80				# 1788
	lwz	r31, 0(r1)				# 1788
	mtspr	9, r31				# 1788
	bctr				# 1788
	addi	r3, r3, -80				# 1788
	lwz	r31, 76(r3)				# 1788
	mtspr	8, r31				# 1788
beq_cont.16413:
	lwz	r2, 8(r3)				# 1798
	lwz	r5, 68(r3)				# 1798
	cmpw	cr7, r5, r2				# 1798
	bne	cr7, beq_else.16414				# 1798
	b	beq_cont.16415				# 1798
beq_else.16414:
	slwi	r6, r2, 2				# 1799
	lwz	r7, 64(r3)				# 1799
	lwzx	r6, r7, r6				# 1799
	lwz	r8, 60(r3)				# 166
	slwi	r9, r8, 2				# 166
	lwz	r10, 56(r3)				# 166
	lfsx	f0, r10, r9				# 166
	slwi	r9, r8, 2				# 166
	lwz	r11, 52(r3)				# 166
	stfsx	f0, r11, r9				# 166
	slwi	r9, r2, 2				# 167
	lfsx	f0, r10, r9				# 167
	slwi	r9, r2, 2				# 167
	stfsx	f0, r11, r9				# 167
	lwz	r9, 48(r3)				# 168
	slwi	r12, r9, 2				# 168
	lfsx	f0, r10, r12				# 168
	slwi	r12, r9, 2				# 168
	stfsx	f0, r11, r12				# 168
	slwi	r12, r8, 2				# 1161
	lwz	r13, 44(r3)				# 1161
	lwzx	r12, r13, r12				# 1161
	sub	r12, r12, r2				# 1161
	lwz	r1, 40(r3)				# 1161
	stw	r6, 76(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r12				# 1161
	mr	r2, r10				# 1161
	stw	r31, 80(r3)				# 1161
	addi	r3, r3, 84				# 1161
	lwz	r31, 0(r1)				# 1161
	mtspr	9, r31				# 1161
	bctr				# 1161
	addi	r3, r3, -84				# 1161
	lwz	r31, 80(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118
	lwz	r2, 76(r3)				# 1788
	lwz	r5, 32(r3)				# 1788
	lwz	r6, 56(r3)				# 1788
	lwz	r1, 36(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, 80(r3)				# 1788
	addi	r3, r3, 84				# 1788
	lwz	r31, 0(r1)				# 1788
	mtspr	9, r31				# 1788
	bctr				# 1788
	addi	r3, r3, -84				# 1788
	lwz	r31, 80(r3)				# 1788
	mtspr	8, r31				# 1788
beq_cont.16415:
	lwz	r2, 48(r3)				# 1802
	lwz	r5, 68(r3)				# 1802
	cmpw	cr7, r5, r2				# 1802
	bne	cr7, beq_else.16416				# 1802
	b	beq_cont.16417				# 1802
beq_else.16416:
	slwi	r6, r2, 2				# 1803
	lwz	r7, 64(r3)				# 1803
	lwzx	r6, r7, r6				# 1803
	lwz	r8, 60(r3)				# 166
	slwi	r9, r8, 2				# 166
	lwz	r10, 56(r3)				# 166
	lfsx	f0, r10, r9				# 166
	slwi	r9, r8, 2				# 166
	lwz	r11, 52(r3)				# 166
	stfsx	f0, r11, r9				# 166
	lwz	r9, 8(r3)				# 167
	slwi	r12, r9, 2				# 167
	lfsx	f0, r10, r12				# 167
	slwi	r12, r9, 2				# 167
	stfsx	f0, r11, r12				# 167
	slwi	r12, r2, 2				# 168
	lfsx	f0, r10, r12				# 168
	slwi	r12, r2, 2				# 168
	stfsx	f0, r11, r12				# 168
	slwi	r12, r8, 2				# 1161
	lwz	r13, 44(r3)				# 1161
	lwzx	r12, r13, r12				# 1161
	sub	r12, r12, r9				# 1161
	lwz	r1, 40(r3)				# 1161
	stw	r6, 80(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r12				# 1161
	mr	r2, r10				# 1161
	stw	r31, 84(r3)				# 1161
	addi	r3, r3, 88				# 1161
	lwz	r31, 0(r1)				# 1161
	mtspr	9, r31				# 1161
	bctr				# 1161
	addi	r3, r3, -88				# 1161
	lwz	r31, 84(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118
	lwz	r2, 80(r3)				# 1788
	lwz	r5, 32(r3)				# 1788
	lwz	r6, 56(r3)				# 1788
	lwz	r1, 36(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, 84(r3)				# 1788
	addi	r3, r3, 88				# 1788
	lwz	r31, 0(r1)				# 1788
	mtspr	9, r31				# 1788
	bctr				# 1788
	addi	r3, r3, -88				# 1788
	lwz	r31, 84(r3)				# 1788
	mtspr	8, r31				# 1788
beq_cont.16417:
	lwz	r2, 28(r3)				# 1806
	lwz	r5, 68(r3)				# 1806
	cmpw	cr7, r5, r2				# 1806
	bne	cr7, beq_else.16418				# 1806
	b	beq_cont.16419				# 1806
beq_else.16418:
	slwi	r2, r2, 2				# 1807
	lwz	r6, 64(r3)				# 1807
	lwzx	r2, r6, r2				# 1807
	lwz	r7, 60(r3)				# 166
	slwi	r8, r7, 2				# 166
	lwz	r9, 56(r3)				# 166
	lfsx	f0, r9, r8				# 166
	slwi	r8, r7, 2				# 166
	lwz	r10, 52(r3)				# 166
	stfsx	f0, r10, r8				# 166
	lwz	r8, 8(r3)				# 167
	slwi	r11, r8, 2				# 167
	lfsx	f0, r9, r11				# 167
	slwi	r11, r8, 2				# 167
	stfsx	f0, r10, r11				# 167
	lwz	r11, 48(r3)				# 168
	slwi	r12, r11, 2				# 168
	lfsx	f0, r9, r12				# 168
	slwi	r12, r11, 2				# 168
	stfsx	f0, r10, r12				# 168
	slwi	r12, r7, 2				# 1161
	lwz	r13, 44(r3)				# 1161
	lwzx	r12, r13, r12				# 1161
	sub	r12, r12, r8				# 1161
	lwz	r1, 40(r3)				# 1161
	stw	r2, 84(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r12				# 1161
	mr	r2, r9				# 1161
	stw	r31, 88(r3)				# 1161
	addi	r3, r3, 92				# 1161
	lwz	r31, 0(r1)				# 1161
	mtspr	9, r31				# 1161
	bctr				# 1161
	addi	r3, r3, -92				# 1161
	lwz	r31, 88(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118
	lwz	r2, 84(r3)				# 1788
	lwz	r5, 32(r3)				# 1788
	lwz	r6, 56(r3)				# 1788
	lwz	r1, 36(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, 88(r3)				# 1788
	addi	r3, r3, 92				# 1788
	lwz	r31, 0(r1)				# 1788
	mtspr	9, r31				# 1788
	bctr				# 1788
	addi	r3, r3, -92				# 1788
	lwz	r31, 88(r3)				# 1788
	mtspr	8, r31				# 1788
beq_cont.16419:
	lwz	r2, 68(r3)				# 1810
	cmpwi	cr7, r2, 4				# 1810
	bne	cr7, beq_else.16420				# 1810
	b	beq_cont.16421				# 1810
beq_else.16420:
	lwz	r2, 64(r3)				# 1811
	lwz	r2, 16(r2)				# 1811
	lwz	r5, 60(r3)				# 166
	slwi	r6, r5, 2				# 166
	lwz	r7, 56(r3)				# 166
	lfsx	f0, r7, r6				# 166
	slwi	r6, r5, 2				# 166
	lwz	r8, 52(r3)				# 166
	stfsx	f0, r8, r6				# 166
	lwz	r6, 8(r3)				# 167
	slwi	r9, r6, 2				# 167
	lfsx	f0, r7, r9				# 167
	slwi	r9, r6, 2				# 167
	stfsx	f0, r8, r9				# 167
	lwz	r9, 48(r3)				# 168
	slwi	r10, r9, 2				# 168
	lfsx	f0, r7, r10				# 168
	slwi	r10, r9, 2				# 168
	stfsx	f0, r8, r10				# 168
	slwi	r8, r5, 2				# 1161
	lwz	r10, 44(r3)				# 1161
	lwzx	r8, r10, r8				# 1161
	sub	r8, r8, r6				# 1161
	lwz	r1, 40(r3)				# 1161
	stw	r2, 88(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r8				# 1161
	mr	r2, r7				# 1161
	stw	r31, 92(r3)				# 1161
	addi	r3, r3, 96				# 1161
	lwz	r31, 0(r1)				# 1161
	mtspr	9, r31				# 1161
	bctr				# 1161
	addi	r3, r3, -96				# 1161
	lwz	r31, 92(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118
	lwz	r2, 88(r3)				# 1788
	lwz	r5, 32(r3)				# 1788
	lwz	r6, 56(r3)				# 1788
	lwz	r1, 36(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, 92(r3)				# 1788
	addi	r3, r3, 96				# 1788
	lwz	r31, 0(r1)				# 1788
	mtspr	9, r31				# 1788
	bctr				# 1788
	addi	r3, r3, -96				# 1788
	lwz	r31, 92(r3)				# 1788
	mtspr	8, r31				# 1788
beq_cont.16421:
	lwz	r2, 12(r3)				# 1829
	slwi	r5, r2, 2				# 1829
	lwz	r6, 24(r3)				# 1829
	lwzx	r5, r6, r5				# 1829
	lwz	r6, 60(r3)				# 233
	slwi	r7, r6, 2				# 233
	lwz	r8, 20(r3)				# 233
	lfsx	f0, r8, r7				# 233
	slwi	r7, r6, 2				# 233
	lfsx	f1, r5, r7				# 233
	slwi	r7, r6, 2				# 233
	lwz	r9, 16(r3)				# 233
	lfsx	f2, r9, r7				# 233
	fmul	f1, f1, f2				# 233
	fadd	f0, f0, f1				# 233
	slwi	r6, r6, 2				# 233
	stfsx	f0, r8, r6				# 233
	lwz	r6, 8(r3)				# 234
	slwi	r7, r6, 2				# 234
	lfsx	f0, r8, r7				# 234
	slwi	r7, r6, 2				# 234
	lfsx	f1, r5, r7				# 234
	slwi	r7, r6, 2				# 234
	lfsx	f2, r9, r7				# 234
	fmul	f1, f1, f2				# 234
	fadd	f0, f0, f1				# 234
	slwi	r7, r6, 2				# 234
	stfsx	f0, r8, r7				# 234
	lwz	r7, 48(r3)				# 235
	slwi	r10, r7, 2				# 235
	lfsx	f0, r8, r10				# 235
	slwi	r10, r7, 2				# 235
	lfsx	f1, r5, r10				# 235
	slwi	r5, r7, 2				# 235
	lfsx	f2, r9, r5				# 235
	fmul	f1, f1, f2				# 235
	fadd	f0, f0, f1				# 235
	slwi	r5, r7, 2				# 235
	stfsx	f0, r8, r5				# 235
beq_cont.16411:
	lwz	r2, 8(r3)				# 1864
	lwz	r5, 12(r3)				# 1864
	add	r5, r5, r2				# 1864
	lwz	r2, 0(r3)				# 1864
	lwz	r1, 4(r3)				# 1864
	lwz	r30, 0(r1)				# 1864
	mtspr	9, r30
	bctr				# 1864
ble_else.16409:
	blr
ble_else.16408:
	blr
try_exploit_neighbors.2864:
	lwz	r10, 24(r1)				# 1904
	lwz	r11, 20(r1)				# 1904
	lwz	r12, 16(r1)				# 1904
	lwz	r13, 12(r1)				# 1904
	lwz	r14, 8(r1)				# 1904
	lwz	r15, 4(r1)				# 1904
	slwi	r16, r2, 2				# 1905
	lwzx	r16, r7, r16				# 1905
	cmpwi	cr7, r9, 4				# 1906
	bgt	cr7, ble_else.16424				# 1906
	lwz	r17, 8(r16)				# 468
	slwi	r18, r9, 2				# 1884
	lwzx	r17, r17, r18				# 1884
	cmpw	cr7, r14, r17				# 1909
	bgt	cr7, ble_else.16425				# 1909
	slwi	r17, r2, 2				# 1889
	lwzx	r17, r7, r17				# 1889
	lwz	r17, 8(r17)				# 468
	slwi	r18, r9, 2				# 1884
	lwzx	r17, r17, r18				# 1884
	slwi	r18, r2, 2				# 1891
	lwzx	r18, r6, r18				# 1891
	lwz	r18, 8(r18)				# 468
	slwi	r19, r9, 2				# 1884
	lwzx	r18, r18, r19				# 1884
	cmpw	cr7, r18, r17				# 1891
	bne	cr7, beq_else.16426				# 1891
	slwi	r18, r2, 2				# 1892
	lwzx	r18, r8, r18				# 1892
	lwz	r18, 8(r18)				# 468
	slwi	r19, r9, 2				# 1884
	lwzx	r18, r18, r19				# 1884
	cmpw	cr7, r18, r17				# 1892
	bne	cr7, beq_else.16428				# 1892
	sub	r18, r2, r15				# 1893
	slwi	r18, r18, 2				# 1893
	lwzx	r18, r7, r18				# 1893
	lwz	r18, 8(r18)				# 468
	slwi	r19, r9, 2				# 1884
	lwzx	r18, r18, r19				# 1884
	cmpw	cr7, r18, r17				# 1893
	bne	cr7, beq_else.16430				# 1893
	add	r18, r2, r15				# 1894
	slwi	r18, r18, 2				# 1894
	lwzx	r18, r7, r18				# 1894
	lwz	r18, 8(r18)				# 468
	slwi	r19, r9, 2				# 1884
	lwzx	r18, r18, r19				# 1884
	cmpw	cr7, r18, r17				# 1894
	bne	cr7, beq_else.16432				# 1894
	addi	r17, 0, 1
	b	beq_cont.16433				# 1894
beq_else.16432:
	addi	r17, 0, 0
beq_cont.16433:
	b	beq_cont.16431				# 1893
beq_else.16430:
	addi	r17, 0, 0
beq_cont.16431:
	b	beq_cont.16429				# 1892
beq_else.16428:
	addi	r17, 0, 0
beq_cont.16429:
	b	beq_cont.16427				# 1891
beq_else.16426:
	addi	r17, 0, 0
beq_cont.16427:
	cmpw	cr7, r17, r14				# 1911
	bne	cr7, beq_else.16434				# 1911
	slwi	r2, r2, 2				# 1923
	lwzx	r2, r7, r2				# 1923
	mr	r5, r9				# 1923
	mr	r1, r11				# 1923
	lwz	r30, 0(r1)				# 1923
	mtspr	9, r30
	bctr				# 1923
beq_else.16434:
	lwz	r11, 12(r16)				# 475
	slwi	r16, r9, 2				# 1915
	lwzx	r11, r11, r16				# 1915
	cmpw	cr7, r11, r14				# 1915
	bne	cr7, beq_else.16435				# 1915
	b	beq_cont.16436				# 1915
beq_else.16435:
	slwi	r11, r2, 2				# 1837
	lwzx	r11, r6, r11				# 1837
	lwz	r11, 20(r11)				# 489
	sub	r16, r2, r15				# 1838
	slwi	r16, r16, 2				# 1838
	lwzx	r16, r7, r16				# 1838
	lwz	r16, 20(r16)				# 489
	slwi	r17, r2, 2				# 1839
	lwzx	r17, r7, r17				# 1839
	lwz	r17, 20(r17)				# 489
	add	r18, r2, r15				# 1840
	slwi	r18, r18, 2				# 1840
	lwzx	r18, r7, r18				# 1840
	lwz	r18, 20(r18)				# 489
	slwi	r19, r2, 2				# 1841
	lwzx	r19, r8, r19				# 1841
	lwz	r19, 20(r19)				# 489
	slwi	r20, r9, 2				# 1843
	lwzx	r11, r11, r20				# 1843
	slwi	r20, r14, 2				# 166
	lfsx	f0, r11, r20				# 166
	slwi	r20, r14, 2				# 166
	stfsx	f0, r12, r20				# 166
	slwi	r20, r15, 2				# 167
	lfsx	f0, r11, r20				# 167
	slwi	r20, r15, 2				# 167
	stfsx	f0, r12, r20				# 167
	slwi	r20, r13, 2				# 168
	lfsx	f0, r11, r20				# 168
	slwi	r11, r13, 2				# 168
	stfsx	f0, r12, r11				# 168
	slwi	r11, r9, 2				# 1844
	lwzx	r11, r16, r11				# 1844
	slwi	r16, r14, 2				# 212
	lfsx	f0, r12, r16				# 212
	slwi	r16, r14, 2				# 212
	lfsx	f1, r11, r16				# 212
	fadd	f0, f0, f1				# 212
	slwi	r16, r14, 2				# 212
	stfsx	f0, r12, r16				# 212
	slwi	r16, r15, 2				# 213
	lfsx	f0, r12, r16				# 213
	slwi	r16, r15, 2				# 213
	lfsx	f1, r11, r16				# 213
	fadd	f0, f0, f1				# 213
	slwi	r16, r15, 2				# 213
	stfsx	f0, r12, r16				# 213
	slwi	r16, r13, 2				# 214
	lfsx	f0, r12, r16				# 214
	slwi	r16, r13, 2				# 214
	lfsx	f1, r11, r16				# 214
	fadd	f0, f0, f1				# 214
	slwi	r11, r13, 2				# 214
	stfsx	f0, r12, r11				# 214
	slwi	r11, r9, 2				# 1845
	lwzx	r11, r17, r11				# 1845
	slwi	r16, r14, 2				# 212
	lfsx	f0, r12, r16				# 212
	slwi	r16, r14, 2				# 212
	lfsx	f1, r11, r16				# 212
	fadd	f0, f0, f1				# 212
	slwi	r16, r14, 2				# 212
	stfsx	f0, r12, r16				# 212
	slwi	r16, r15, 2				# 213
	lfsx	f0, r12, r16				# 213
	slwi	r16, r15, 2				# 213
	lfsx	f1, r11, r16				# 213
	fadd	f0, f0, f1				# 213
	slwi	r16, r15, 2				# 213
	stfsx	f0, r12, r16				# 213
	slwi	r16, r13, 2				# 214
	lfsx	f0, r12, r16				# 214
	slwi	r16, r13, 2				# 214
	lfsx	f1, r11, r16				# 214
	fadd	f0, f0, f1				# 214
	slwi	r11, r13, 2				# 214
	stfsx	f0, r12, r11				# 214
	slwi	r11, r9, 2				# 1846
	lwzx	r11, r18, r11				# 1846
	slwi	r16, r14, 2				# 212
	lfsx	f0, r12, r16				# 212
	slwi	r16, r14, 2				# 212
	lfsx	f1, r11, r16				# 212
	fadd	f0, f0, f1				# 212
	slwi	r16, r14, 2				# 212
	stfsx	f0, r12, r16				# 212
	slwi	r16, r15, 2				# 213
	lfsx	f0, r12, r16				# 213
	slwi	r16, r15, 2				# 213
	lfsx	f1, r11, r16				# 213
	fadd	f0, f0, f1				# 213
	slwi	r16, r15, 2				# 213
	stfsx	f0, r12, r16				# 213
	slwi	r16, r13, 2				# 214
	lfsx	f0, r12, r16				# 214
	slwi	r16, r13, 2				# 214
	lfsx	f1, r11, r16				# 214
	fadd	f0, f0, f1				# 214
	slwi	r11, r13, 2				# 214
	stfsx	f0, r12, r11				# 214
	slwi	r11, r9, 2				# 1847
	lwzx	r11, r19, r11				# 1847
	slwi	r16, r14, 2				# 212
	lfsx	f0, r12, r16				# 212
	slwi	r16, r14, 2				# 212
	lfsx	f1, r11, r16				# 212
	fadd	f0, f0, f1				# 212
	slwi	r16, r14, 2				# 212
	stfsx	f0, r12, r16				# 212
	slwi	r16, r15, 2				# 213
	lfsx	f0, r12, r16				# 213
	slwi	r16, r15, 2				# 213
	lfsx	f1, r11, r16				# 213
	fadd	f0, f0, f1				# 213
	slwi	r16, r15, 2				# 213
	stfsx	f0, r12, r16				# 213
	slwi	r16, r13, 2				# 214
	lfsx	f0, r12, r16				# 214
	slwi	r16, r13, 2				# 214
	lfsx	f1, r11, r16				# 214
	fadd	f0, f0, f1				# 214
	slwi	r11, r13, 2				# 214
	stfsx	f0, r12, r11				# 214
	slwi	r11, r2, 2				# 1849
	lwzx	r11, r7, r11				# 1849
	lwz	r11, 16(r11)				# 482
	slwi	r16, r9, 2				# 1850
	lwzx	r11, r11, r16				# 1850
	slwi	r16, r14, 2				# 233
	lfsx	f0, r10, r16				# 233
	slwi	r16, r14, 2				# 233
	lfsx	f1, r11, r16				# 233
	slwi	r16, r14, 2				# 233
	lfsx	f2, r12, r16				# 233
	fmul	f1, f1, f2				# 233
	fadd	f0, f0, f1				# 233
	slwi	r14, r14, 2				# 233
	stfsx	f0, r10, r14				# 233
	slwi	r14, r15, 2				# 234
	lfsx	f0, r10, r14				# 234
	slwi	r14, r15, 2				# 234
	lfsx	f1, r11, r14				# 234
	slwi	r14, r15, 2				# 234
	lfsx	f2, r12, r14				# 234
	fmul	f1, f1, f2				# 234
	fadd	f0, f0, f1				# 234
	slwi	r14, r15, 2				# 234
	stfsx	f0, r10, r14				# 234
	slwi	r14, r13, 2				# 235
	lfsx	f0, r10, r14				# 235
	slwi	r14, r13, 2				# 235
	lfsx	f1, r11, r14				# 235
	slwi	r11, r13, 2				# 235
	lfsx	f2, r12, r11				# 235
	fmul	f1, f1, f2				# 235
	fadd	f0, f0, f1				# 235
	slwi	r11, r13, 2				# 235
	stfsx	f0, r10, r11				# 235
beq_cont.16436:
	add	r9, r9, r15				# 1920
	lwz	r30, 0(r1)				# 1920
	mtspr	9, r30
	bctr				# 1920
ble_else.16425:
	blr
ble_else.16424:
	blr
pretrace_diffuse_rays.2877:
	lwz	r6, 40(r1)				# 1963
	lwz	r7, 36(r1)				# 1963
	lwz	r8, 32(r1)				# 1963
	lwz	r9, 28(r1)				# 1963
	lwz	r10, 24(r1)				# 1963
	lwz	r11, 20(r1)				# 1963
	lwz	r12, 16(r1)				# 1963
	lwz	r13, 12(r1)				# 1963
	lwz	r14, 8(r1)				# 1963
	lfs	f0, 4(r1)				# 1963
	cmpwi	cr7, r5, 4				# 1964
	bgt	cr7, ble_else.16439				# 1964
	lwz	r15, 8(r2)				# 468
	slwi	r16, r5, 2				# 1884
	lwzx	r15, r15, r16				# 1884
	cmpw	cr7, r13, r15				# 1968
	bgt	cr7, ble_else.16440				# 1968
	lwz	r15, 12(r2)				# 475
	slwi	r16, r5, 2				# 1971
	lwzx	r15, r15, r16				# 1971
	stw	r1, 0(r3)				# 1971
	stw	r14, 4(r3)				# 1971
	stw	r5, 8(r3)				# 1971
	cmpw	cr7, r15, r13				# 1971
	bne	cr7, beq_else.16441				# 1971
	b	beq_cont.16442				# 1971
beq_else.16441:
	lwz	r15, 24(r2)				# 498
	slwi	r16, r13, 2				# 500
	lwzx	r15, r15, r16				# 500
	slwi	r16, r13, 2				# 154
	stfsx	f0, r11, r16				# 154
	slwi	r16, r14, 2				# 155
	stfsx	f0, r11, r16				# 155
	slwi	r16, r12, 2				# 156
	stfsx	f0, r11, r16				# 156
	lwz	r16, 28(r2)				# 512
	lwz	r17, 4(r2)				# 460
	slwi	r15, r15, 2				# 1979
	lwzx	r10, r10, r15				# 1979
	slwi	r15, r5, 2				# 1980
	lwzx	r15, r16, r15				# 1980
	slwi	r16, r5, 2				# 1981
	lwzx	r16, r17, r16				# 1981
	slwi	r17, r13, 2				# 166
	lfsx	f0, r16, r17				# 166
	slwi	r17, r13, 2				# 166
	stfsx	f0, r6, r17				# 166
	slwi	r17, r14, 2				# 167
	lfsx	f0, r16, r17				# 167
	slwi	r17, r14, 2				# 167
	stfsx	f0, r6, r17				# 167
	slwi	r17, r12, 2				# 168
	lfsx	f0, r16, r17				# 168
	slwi	r17, r12, 2				# 168
	stfsx	f0, r6, r17				# 168
	slwi	r6, r13, 2				# 1161
	lwzx	r6, r8, r6				# 1161
	sub	r6, r6, r14				# 1161
	stw	r12, 12(r3)				# 1161
	stw	r11, 16(r3)				# 1161
	stw	r13, 20(r3)				# 1161
	stw	r2, 24(r3)				# 1161
	stw	r16, 28(r3)				# 1161
	stw	r15, 32(r3)				# 1161
	stw	r10, 36(r3)				# 1161
	stw	r9, 40(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r6				# 1161
	mr	r2, r16				# 1161
	mr	r1, r7				# 1161
	stw	r31, 44(r3)				# 1161
	addi	r3, r3, 48				# 1161
	lwz	r31, 0(r1)				# 1161
	mtspr	9, r31				# 1161
	bctr				# 1161
	addi	r3, r3, -48				# 1161
	lwz	r31, 44(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118
	lwz	r2, 36(r3)				# 1788
	lwz	r5, 32(r3)				# 1788
	lwz	r6, 28(r3)				# 1788
	lwz	r1, 40(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, 44(r3)				# 1788
	addi	r3, r3, 48				# 1788
	lwz	r31, 0(r1)				# 1788
	mtspr	9, r31				# 1788
	bctr				# 1788
	addi	r3, r3, -48				# 1788
	lwz	r31, 44(r3)				# 1788
	mtspr	8, r31				# 1788
	lwz	r2, 24(r3)				# 489
	lwz	r5, 20(r2)				# 489
	lwz	r6, 8(r3)				# 1983
	slwi	r7, r6, 2				# 1983
	lwzx	r5, r5, r7				# 1983
	lwz	r7, 20(r3)				# 166
	slwi	r8, r7, 2				# 166
	lwz	r9, 16(r3)				# 166
	lfsx	f0, r9, r8				# 166
	slwi	r7, r7, 2				# 166
	stfsx	f0, r5, r7				# 166
	lwz	r7, 4(r3)				# 167
	slwi	r8, r7, 2				# 167
	lfsx	f0, r9, r8				# 167
	slwi	r8, r7, 2				# 167
	stfsx	f0, r5, r8				# 167
	lwz	r8, 12(r3)				# 168
	slwi	r10, r8, 2				# 168
	lfsx	f0, r9, r10				# 168
	slwi	r8, r8, 2				# 168
	stfsx	f0, r5, r8				# 168
beq_cont.16442:
	lwz	r5, 4(r3)				# 1985
	lwz	r6, 8(r3)				# 1985
	add	r5, r6, r5				# 1985
	lwz	r1, 0(r3)				# 1985
	lwz	r30, 0(r1)				# 1985
	mtspr	9, r30
	bctr				# 1985
ble_else.16440:
	blr
ble_else.16439:
	blr
pretrace_pixels.2880:
	lwz	r7, 56(r1)				# 1992
	lwz	r8, 52(r1)				# 1992
	lwz	r9, 48(r1)				# 1992
	lwz	r10, 44(r1)				# 1992
	lwz	r11, 40(r1)				# 1992
	lwz	r12, 36(r1)				# 1992
	lwz	r13, 32(r1)				# 1992
	lwz	r14, 28(r1)				# 1992
	lwz	r15, 24(r1)				# 1992
	lwz	r16, 20(r1)				# 1992
	lwz	r17, 16(r1)				# 1992
	lwz	r18, 12(r1)				# 1992
	lwz	r19, 8(r1)				# 1992
	lfs	f3, 4(r1)				# 1992
	cmpw	cr7, r18, r5				# 1993
	bgt	cr7, ble_else.16445				# 1993
	slwi	r20, r18, 2				# 1995
	lfsx	f4, r11, r20				# 1995
	slwi	r11, r18, 2				# 1995
	lwzx	r11, r15, r11				# 1995
	sub	r11, r5, r11				# 1995
	stw	r1, 0(r3)				# 1995
	stw	r16, 4(r3)				# 1995
	stw	r14, 8(r3)				# 1995
	stw	r6, 12(r3)				# 1995
	stw	r8, 16(r3)				# 1995
	stw	r2, 20(r3)				# 1995
	stw	r5, 24(r3)				# 1995
	stw	r9, 28(r3)				# 1995
	stw	r7, 32(r3)				# 1995
	stw	r12, 36(r3)				# 1995
	stfs	f3, 40(r3)				# 1995
	stfs	f2, 48(r3)				# 1995
	stw	r17, 56(r3)				# 1995
	stfs	f1, 64(r3)				# 1995
	stw	r19, 72(r3)				# 1995
	stw	r13, 76(r3)				# 1995
	stfs	f0, 80(r3)				# 1995
	stw	r10, 88(r3)				# 1995
	stw	r18, 92(r3)				# 1995
	stfs	f4, 96(r3)				# 1995
	mfspr	r31, 8				# 1995
	mr	r2, r11				# 1995
	stw	r31, 104(r3)				# 1995
	addi	r3, r3, 108				# 1995
	bl	min_caml_float_of_int				# 1995
	addi	r3, r3, -108				# 1995
	lwz	r31, 104(r3)				# 1995
	mtspr	8, r31				# 1995
	lfs	f1, 96(r3)				# 1995
	fmul	f0, f1, f0				# 1995
	lwz	r2, 92(r3)				# 1996
	slwi	r5, r2, 2				# 1996
	lwz	r6, 88(r3)				# 1996
	lfsx	f1, r6, r5				# 1996
	fmul	f1, f0, f1				# 1996
	lfs	f2, 80(r3)				# 1996
	fadd	f1, f1, f2				# 1996
	slwi	r5, r2, 2				# 1996
	lwz	r7, 76(r3)				# 1996
	stfsx	f1, r7, r5				# 1996
	lwz	r5, 72(r3)				# 1997
	slwi	r8, r5, 2				# 1997
	lfsx	f1, r6, r8				# 1997
	fmul	f1, f0, f1				# 1997
	lfs	f3, 64(r3)				# 1997
	fadd	f1, f1, f3				# 1997
	slwi	r8, r5, 2				# 1997
	stfsx	f1, r7, r8				# 1997
	lwz	r8, 56(r3)				# 1998
	slwi	r9, r8, 2				# 1998
	lfsx	f1, r6, r9				# 1998
	fmul	f0, f0, f1				# 1998
	lfs	f1, 48(r3)				# 1998
	fadd	f0, f0, f1				# 1998
	slwi	r6, r8, 2				# 1998
	stfsx	f0, r7, r6				# 1998
	slwi	r6, r2, 2				# 186
	lfsx	f0, r7, r6				# 186
	fmul	f0, f0, f0				# 103
	slwi	r6, r5, 2				# 186
	lfsx	f4, r7, r6				# 186
	fmul	f4, f4, f4				# 103
	fadd	f0, f0, f4				# 186
	slwi	r6, r8, 2				# 186
	lfsx	f4, r7, r6				# 186
	fmul	f4, f4, f4				# 103
	fadd	f0, f0, f4				# 186
	mfspr	r31, 8				# 186
	stw	r31, 104(r3)				# 186
	addi	r3, r3, 108				# 186
	bl	min_caml_sqrt				# 186
	addi	r3, r3, -108				# 186
	lwz	r31, 104(r3)				# 186
	mtspr	8, r31				# 186
	lfs	f1, 40(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.16447				# 111
	addi	r2, 0, 1
	b	beq_cont.16448				# 111
beq_else.16447:
	addi	r2, 0, 0
beq_cont.16448:
	lwz	r5, 92(r3)				# 187
	cmpw	cr7, r2, r5				# 187
	bne	cr7, beq_else.16449				# 187
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f2, 0(r31)				# 187
	fdiv	f0, f2, f0				# 187
	b	beq_cont.16450				# 187
beq_else.16449:
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f0, 0(r31)				# 187
beq_cont.16450:
	slwi	r2, r5, 2				# 188
	lwz	r6, 76(r3)				# 188
	lfsx	f2, r6, r2				# 188
	fmul	f2, f2, f0				# 188
	slwi	r2, r5, 2				# 188
	stfsx	f2, r6, r2				# 188
	lwz	r2, 72(r3)				# 189
	slwi	r7, r2, 2				# 189
	lfsx	f2, r6, r7				# 189
	fmul	f2, f2, f0				# 189
	slwi	r7, r2, 2				# 189
	stfsx	f2, r6, r7				# 189
	lwz	r7, 56(r3)				# 190
	slwi	r8, r7, 2				# 190
	lfsx	f2, r6, r8				# 190
	fmul	f0, f2, f0				# 190
	slwi	r8, r7, 2				# 190
	stfsx	f0, r6, r8				# 190
	slwi	r8, r5, 2				# 154
	lwz	r9, 36(r3)				# 154
	stfsx	f1, r9, r8				# 154
	slwi	r8, r2, 2				# 155
	stfsx	f1, r9, r8				# 155
	slwi	r8, r7, 2				# 156
	stfsx	f1, r9, r8				# 156
	slwi	r8, r5, 2				# 166
	lwz	r10, 32(r3)				# 166
	lfsx	f0, r10, r8				# 166
	slwi	r8, r5, 2				# 166
	lwz	r11, 28(r3)				# 166
	stfsx	f0, r11, r8				# 166
	slwi	r8, r2, 2				# 167
	lfsx	f0, r10, r8				# 167
	slwi	r8, r2, 2				# 167
	stfsx	f0, r11, r8				# 167
	slwi	r8, r7, 2				# 168
	lfsx	f0, r10, r8				# 168
	slwi	r8, r7, 2				# 168
	stfsx	f0, r11, r8				# 168
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f0, 0(r31)				# 2004
	lwz	r8, 24(r3)				# 2004
	slwi	r10, r8, 2				# 2004
	lwz	r11, 20(r3)				# 2004
	lwzx	r10, r11, r10				# 2004
	lwz	r1, 16(r3)				# 2004
	mfspr	r31, 8				# 2004
	mr	r2, r5				# 2004
	mr	r5, r6				# 2004
	mr	r6, r10				# 2004
	stw	r31, 104(r3)				# 2004
	addi	r3, r3, 108				# 2004
	lwz	r31, 0(r1)				# 2004
	mtspr	9, r31				# 2004
	bctr				# 2004
	addi	r3, r3, -108				# 2004
	lwz	r31, 104(r3)				# 2004
	mtspr	8, r31				# 2004
	lwz	r2, 24(r3)				# 2005
	slwi	r5, r2, 2				# 2005
	lwz	r6, 20(r3)				# 2005
	lwzx	r5, r6, r5				# 2005
	lwz	r5, 0(r5)				# 453
	lwz	r7, 92(r3)				# 166
	slwi	r8, r7, 2				# 166
	lwz	r9, 36(r3)				# 166
	lfsx	f0, r9, r8				# 166
	slwi	r8, r7, 2				# 166
	stfsx	f0, r5, r8				# 166
	lwz	r8, 72(r3)				# 167
	slwi	r10, r8, 2				# 167
	lfsx	f0, r9, r10				# 167
	slwi	r10, r8, 2				# 167
	stfsx	f0, r5, r10				# 167
	lwz	r10, 56(r3)				# 168
	slwi	r11, r10, 2				# 168
	lfsx	f0, r9, r11				# 168
	slwi	r9, r10, 2				# 168
	stfsx	f0, r5, r9				# 168
	slwi	r5, r2, 2				# 2006
	lwzx	r5, r6, r5				# 2006
	lwz	r5, 24(r5)				# 505
	slwi	r9, r7, 2				# 507
	lwz	r10, 12(r3)				# 507
	stwx	r10, r5, r9				# 507
	slwi	r5, r2, 2				# 2009
	lwzx	r5, r6, r5				# 2009
	lwz	r1, 8(r3)				# 2009
	mfspr	r31, 8				# 2009
	mr	r2, r5				# 2009
	mr	r5, r7				# 2009
	stw	r31, 104(r3)				# 2009
	addi	r3, r3, 108				# 2009
	lwz	r31, 0(r1)				# 2009
	mtspr	9, r31				# 2009
	bctr				# 2009
	addi	r3, r3, -108				# 2009
	lwz	r31, 104(r3)				# 2009
	mtspr	8, r31				# 2009
	lwz	r2, 72(r3)				# 2011
	lwz	r5, 24(r3)				# 2011
	sub	r5, r5, r2				# 2011
	lwz	r6, 12(r3)				# 137
	add	r2, r6, r2				# 137
	lwz	r6, 4(r3)				# 138
	cmpw	cr7, r6, r2				# 138
	bgt	cr7, ble_else.16451				# 138
	sub	r6, r2, r6				# 138
	b	ble_cont.16452				# 138
ble_else.16451:
	mr	r6, r2				# 138
ble_cont.16452:
	lfs	f0, 80(r3)				# 2011
	lfs	f1, 64(r3)				# 2011
	lfs	f2, 48(r3)				# 2011
	lwz	r2, 20(r3)				# 2011
	lwz	r1, 0(r3)				# 2011
	lwz	r30, 0(r1)				# 2011
	mtspr	9, r30
	bctr				# 2011
ble_else.16445:
	blr
scan_pixel.2891:
	lwz	r9, 28(r1)				# 2031
	lwz	r10, 24(r1)				# 2031
	lwz	r11, 20(r1)				# 2031
	lwz	r12, 16(r1)				# 2031
	lwz	r13, 12(r1)				# 2031
	lwz	r14, 8(r1)				# 2031
	lwz	r15, 4(r1)				# 2031
	slwi	r16, r14, 2				# 2032
	lwzx	r16, r11, r16				# 2032
	cmpw	cr7, r16, r2				# 2032
	bgt	cr7, ble_else.16454				# 2032
	blr
ble_else.16454:
	slwi	r16, r2, 2				# 2035
	lwzx	r16, r7, r16				# 2035
	lwz	r16, 0(r16)				# 453
	slwi	r17, r14, 2				# 166
	lfsx	f0, r16, r17				# 166
	slwi	r17, r14, 2				# 166
	stfsx	f0, r10, r17				# 166
	slwi	r17, r15, 2				# 167
	lfsx	f0, r16, r17				# 167
	slwi	r17, r15, 2				# 167
	stfsx	f0, r10, r17				# 167
	slwi	r17, r13, 2				# 168
	lfsx	f0, r16, r17				# 168
	slwi	r16, r13, 2				# 168
	stfsx	f0, r10, r16				# 168
	slwi	r16, r15, 2				# 1871
	lwzx	r16, r11, r16				# 1871
	add	r17, r5, r15				# 1871
	cmpw	cr7, r16, r17				# 1871
	bgt	cr7, ble_else.16456				# 1871
	addi	r11, 0, 0
	b	ble_cont.16457				# 1871
ble_else.16456:
	cmpw	cr7, r5, r14				# 1872
	bgt	cr7, ble_else.16458				# 1872
	addi	r11, 0, 0
	b	ble_cont.16459				# 1872
ble_else.16458:
	slwi	r16, r14, 2				# 1873
	lwzx	r11, r11, r16				# 1873
	add	r16, r2, r15				# 1873
	cmpw	cr7, r11, r16				# 1873
	bgt	cr7, ble_else.16460				# 1873
	addi	r11, 0, 0
	b	ble_cont.16461				# 1873
ble_else.16460:
	cmpw	cr7, r2, r14				# 1874
	bgt	cr7, ble_else.16462				# 1874
	addi	r11, 0, 0
	b	ble_cont.16463				# 1874
ble_else.16462:
	addi	r11, 0, 1
ble_cont.16463:
ble_cont.16461:
ble_cont.16459:
ble_cont.16457:
	stw	r8, 0(r3)				# 2038
	stw	r7, 4(r3)				# 2038
	stw	r6, 8(r3)				# 2038
	stw	r5, 12(r3)				# 2038
	stw	r1, 16(r3)				# 2038
	stw	r2, 20(r3)				# 2038
	stw	r13, 24(r3)				# 2038
	stw	r15, 28(r3)				# 2038
	stw	r10, 32(r3)				# 2038
	stw	r14, 36(r3)				# 2038
	cmpw	cr7, r11, r14				# 2038
	bne	cr7, beq_else.16464				# 2038
	slwi	r9, r2, 2				# 2041
	lwzx	r9, r7, r9				# 2041
	mfspr	r31, 8				# 2041
	mr	r5, r14				# 2041
	mr	r2, r9				# 2041
	mr	r1, r12				# 2041
	stw	r31, 40(r3)				# 2041
	addi	r3, r3, 44				# 2041
	lwz	r31, 0(r1)				# 2041
	mtspr	9, r31				# 2041
	bctr				# 2041
	addi	r3, r3, -44				# 2041
	lwz	r31, 40(r3)				# 2041
	mtspr	8, r31				# 2041
	b	beq_cont.16465				# 2038
beq_else.16464:
	mfspr	r31, 8				# 2039
	mr	r1, r9				# 2039
	mr	r9, r14				# 2039
	stw	r31, 40(r3)				# 2039
	addi	r3, r3, 44				# 2039
	lwz	r31, 0(r1)				# 2039
	mtspr	9, r31				# 2039
	bctr				# 2039
	addi	r3, r3, -44				# 2039
	lwz	r31, 40(r3)				# 2039
	mtspr	8, r31				# 2039
beq_cont.16465:
	lwz	r2, 36(r3)				# 1950
	slwi	r5, r2, 2				# 1950
	lwz	r6, 32(r3)				# 1950
	lfsx	f0, r6, r5				# 1950
	mfspr	r31, 8				# 1944
	stw	r31, 40(r3)				# 1944
	addi	r3, r3, 44				# 1944
	bl	min_caml_int_of_float				# 1944
	addi	r3, r3, -44				# 1944
	lwz	r31, 40(r3)				# 1944
	mtspr	8, r31				# 1944
	cmpwi	cr7, r2, 255				# 1945
	bgt	cr7, ble_else.16466				# 1945
	lwz	r5, 36(r3)				# 1945
	cmpw	cr7, r5, r2				# 1945
	bgt	cr7, ble_else.16468				# 1945
	b	ble_cont.16469				# 1945
ble_else.16468:
	addi	r2, 0, 0
ble_cont.16469:
	b	ble_cont.16467				# 1945
ble_else.16466:
	addi	r2, 0, 255
ble_cont.16467:
	mfspr	r31, 8				# 1946
	stw	r31, 40(r3)				# 1946
	addi	r3, r3, 44				# 1946
	bl	min_caml_print_int				# 1946
	addi	r3, r3, -44				# 1946
	lwz	r31, 40(r3)				# 1946
	mtspr	8, r31				# 1946
	addi	r2, 0, 32
	stw	r2, 40(r3)				# 1951
	mfspr	r31, 8				# 1951
	stw	r31, 44(r3)				# 1951
	addi	r3, r3, 48				# 1951
	bl	min_caml_print_char				# 1951
	addi	r3, r3, -48				# 1951
	lwz	r31, 44(r3)				# 1951
	mtspr	8, r31				# 1951
	lwz	r2, 28(r3)				# 1952
	slwi	r5, r2, 2				# 1952
	lwz	r6, 32(r3)				# 1952
	lfsx	f0, r6, r5				# 1952
	mfspr	r31, 8				# 1944
	stw	r31, 44(r3)				# 1944
	addi	r3, r3, 48				# 1944
	bl	min_caml_int_of_float				# 1944
	addi	r3, r3, -48				# 1944
	lwz	r31, 44(r3)				# 1944
	mtspr	8, r31				# 1944
	cmpwi	cr7, r2, 255				# 1945
	bgt	cr7, ble_else.16470				# 1945
	lwz	r5, 36(r3)				# 1945
	cmpw	cr7, r5, r2				# 1945
	bgt	cr7, ble_else.16472				# 1945
	b	ble_cont.16473				# 1945
ble_else.16472:
	addi	r2, 0, 0
ble_cont.16473:
	b	ble_cont.16471				# 1945
ble_else.16470:
	addi	r2, 0, 255
ble_cont.16471:
	mfspr	r31, 8				# 1946
	stw	r31, 44(r3)				# 1946
	addi	r3, r3, 48				# 1946
	bl	min_caml_print_int				# 1946
	addi	r3, r3, -48				# 1946
	lwz	r31, 44(r3)				# 1946
	mtspr	8, r31				# 1946
	lwz	r2, 40(r3)				# 1953
	mfspr	r31, 8				# 1953
	stw	r31, 44(r3)				# 1953
	addi	r3, r3, 48				# 1953
	bl	min_caml_print_char				# 1953
	addi	r3, r3, -48				# 1953
	lwz	r31, 44(r3)				# 1953
	mtspr	8, r31				# 1953
	lwz	r2, 24(r3)				# 1954
	slwi	r2, r2, 2				# 1954
	lwz	r5, 32(r3)				# 1954
	lfsx	f0, r5, r2				# 1954
	mfspr	r31, 8				# 1944
	stw	r31, 44(r3)				# 1944
	addi	r3, r3, 48				# 1944
	bl	min_caml_int_of_float				# 1944
	addi	r3, r3, -48				# 1944
	lwz	r31, 44(r3)				# 1944
	mtspr	8, r31				# 1944
	cmpwi	cr7, r2, 255				# 1945
	bgt	cr7, ble_else.16474				# 1945
	lwz	r5, 36(r3)				# 1945
	cmpw	cr7, r5, r2				# 1945
	bgt	cr7, ble_else.16476				# 1945
	b	ble_cont.16477				# 1945
ble_else.16476:
	addi	r2, 0, 0
ble_cont.16477:
	b	ble_cont.16475				# 1945
ble_else.16474:
	addi	r2, 0, 255
ble_cont.16475:
	mfspr	r31, 8				# 1946
	stw	r31, 44(r3)				# 1946
	addi	r3, r3, 48				# 1946
	bl	min_caml_print_int				# 1946
	addi	r3, r3, -48				# 1946
	lwz	r31, 44(r3)				# 1946
	mtspr	8, r31				# 1946
	addi	r2, 0, 10
	mfspr	r31, 8				# 1955
	stw	r31, 44(r3)				# 1955
	addi	r3, r3, 48				# 1955
	bl	min_caml_print_char				# 1955
	addi	r3, r3, -48				# 1955
	lwz	r31, 44(r3)				# 1955
	mtspr	8, r31				# 1955
	lwz	r2, 28(r3)				# 2046
	lwz	r5, 20(r3)				# 2046
	add	r2, r5, r2				# 2046
	lwz	r5, 12(r3)				# 2046
	lwz	r6, 8(r3)				# 2046
	lwz	r7, 4(r3)				# 2046
	lwz	r8, 0(r3)				# 2046
	lwz	r1, 16(r3)				# 2046
	lwz	r30, 0(r1)				# 2046
	mtspr	9, r30
	bctr				# 2046
scan_line.2897:
	lwz	r9, 44(r1)				# 2051
	lwz	r10, 40(r1)				# 2051
	lwz	r11, 36(r1)				# 2051
	lwz	r12, 32(r1)				# 2051
	lwz	r13, 28(r1)				# 2051
	lwz	r14, 24(r1)				# 2051
	lwz	r15, 20(r1)				# 2051
	lwz	r16, 16(r1)				# 2051
	lwz	r17, 12(r1)				# 2051
	lwz	r18, 8(r1)				# 2051
	lwz	r19, 4(r1)				# 2051
	slwi	r20, r19, 2				# 2053
	lwzx	r20, r14, r20				# 2053
	cmpw	cr7, r20, r2				# 2053
	bgt	cr7, ble_else.16478				# 2053
	blr
ble_else.16478:
	slwi	r20, r19, 2				# 2055
	lwzx	r20, r14, r20				# 2055
	sub	r20, r20, r19				# 2055
	stw	r1, 0(r3)				# 2055
	stw	r16, 4(r3)				# 2055
	stw	r17, 8(r3)				# 2055
	stw	r8, 12(r3)				# 2055
	stw	r19, 16(r3)				# 2055
	stw	r7, 20(r3)				# 2055
	stw	r6, 24(r3)				# 2055
	stw	r5, 28(r3)				# 2055
	stw	r2, 32(r3)				# 2055
	stw	r18, 36(r3)				# 2055
	stw	r11, 40(r3)				# 2055
	cmpw	cr7, r20, r2				# 2055
	bgt	cr7, ble_else.16480				# 2055
	b	ble_cont.16481				# 2055
ble_else.16480:
	add	r20, r2, r19				# 2056
	slwi	r21, r18, 2				# 2018
	lfsx	f0, r12, r21				# 2018
	slwi	r12, r19, 2				# 2018
	lwzx	r12, r15, r12				# 2018
	sub	r12, r20, r12				# 2018
	stw	r13, 44(r3)				# 2018
	stw	r14, 48(r3)				# 2018
	stw	r9, 52(r3)				# 2018
	stw	r10, 56(r3)				# 2018
	stfs	f0, 64(r3)				# 2018
	mfspr	r31, 8				# 2018
	mr	r2, r12				# 2018
	stw	r31, 72(r3)				# 2018
	addi	r3, r3, 76				# 2018
	bl	min_caml_float_of_int				# 2018
	addi	r3, r3, -76				# 2018
	lwz	r31, 72(r3)				# 2018
	mtspr	8, r31				# 2018
	lfs	f1, 64(r3)				# 2018
	fmul	f0, f1, f0				# 2018
	lwz	r2, 36(r3)				# 2021
	slwi	r5, r2, 2				# 2021
	lwz	r6, 56(r3)				# 2021
	lfsx	f1, r6, r5				# 2021
	fmul	f1, f0, f1				# 2021
	slwi	r5, r2, 2				# 2021
	lwz	r7, 52(r3)				# 2021
	lfsx	f2, r7, r5				# 2021
	fadd	f1, f1, f2				# 2021
	lwz	r5, 16(r3)				# 2022
	slwi	r8, r5, 2				# 2022
	lfsx	f2, r6, r8				# 2022
	fmul	f2, f0, f2				# 2022
	slwi	r8, r5, 2				# 2022
	lfsx	f3, r7, r8				# 2022
	fadd	f2, f2, f3				# 2022
	lwz	r8, 8(r3)				# 2023
	slwi	r9, r8, 2				# 2023
	lfsx	f3, r6, r9				# 2023
	fmul	f0, f0, f3				# 2023
	slwi	r6, r8, 2				# 2023
	lfsx	f3, r7, r6				# 2023
	fadd	f0, f0, f3				# 2023
	slwi	r6, r2, 2				# 2024
	lwz	r7, 48(r3)				# 2024
	lwzx	r6, r7, r6				# 2024
	sub	r6, r6, r5				# 2024
	lwz	r7, 20(r3)				# 2024
	lwz	r9, 12(r3)				# 2024
	lwz	r1, 44(r3)				# 2024
	mfspr	r31, 8				# 2024
	mr	r5, r6				# 2024
	mr	r2, r7				# 2024
	mr	r6, r9				# 2024
	fmr	f31, f2				# 2024
	fmr	f2, f0				# 2024
	fmr	f0, f1				# 2024
	fmr	f1, f31				# 2024
	stw	r31, 72(r3)				# 2024
	addi	r3, r3, 76				# 2024
	lwz	r31, 0(r1)				# 2024
	mtspr	9, r31				# 2024
	bctr				# 2024
	addi	r3, r3, -76				# 2024
	lwz	r31, 72(r3)				# 2024
	mtspr	8, r31				# 2024
ble_cont.16481:
	lwz	r2, 36(r3)				# 2058
	lwz	r5, 32(r3)				# 2058
	lwz	r6, 28(r3)				# 2058
	lwz	r7, 24(r3)				# 2058
	lwz	r8, 20(r3)				# 2058
	lwz	r1, 40(r3)				# 2058
	mfspr	r31, 8				# 2058
	stw	r31, 72(r3)				# 2058
	addi	r3, r3, 76				# 2058
	lwz	r31, 0(r1)				# 2058
	mtspr	9, r31				# 2058
	bctr				# 2058
	addi	r3, r3, -76				# 2058
	lwz	r31, 72(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r2, 16(r3)				# 2059
	lwz	r5, 32(r3)				# 2059
	add	r2, r5, r2				# 2059
	lwz	r5, 8(r3)				# 137
	lwz	r6, 12(r3)				# 137
	add	r5, r6, r5				# 137
	lwz	r6, 4(r3)				# 138
	cmpw	cr7, r6, r5				# 138
	bgt	cr7, ble_else.16483				# 138
	sub	r8, r5, r6				# 138
	b	ble_cont.16484				# 138
ble_else.16483:
	mr	r8, r5				# 138
ble_cont.16484:
	lwz	r5, 24(r3)				# 2059
	lwz	r6, 20(r3)				# 2059
	lwz	r7, 28(r3)				# 2059
	lwz	r1, 0(r3)				# 2059
	lwz	r30, 0(r1)				# 2059
	mtspr	9, r30
	bctr				# 2059
init_line_elements.2907:
	lwz	r6, 24(r1)				# 2092
	lwz	r7, 20(r1)				# 2092
	lwz	r8, 16(r1)				# 2092
	lwz	r9, 12(r1)				# 2092
	lwz	r10, 8(r1)				# 2092
	lfs	f0, 4(r1)				# 2092
	cmpw	cr7, r9, r5				# 2093
	bgt	cr7, ble_else.16485				# 2093
	stw	r1, 0(r3)				# 2080
	stw	r2, 4(r3)				# 2080
	stw	r5, 8(r3)				# 2080
	stw	r9, 12(r3)				# 2080
	stw	r7, 16(r3)				# 2080
	stw	r10, 20(r3)				# 2080
	stw	r6, 24(r3)				# 2080
	stfs	f0, 32(r3)				# 2080
	stw	r8, 40(r3)				# 2080
	mfspr	r31, 8				# 2080
	mr	r2, r8				# 2080
	stw	r31, 44(r3)				# 2080
	addi	r3, r3, 48				# 2080
	bl	min_caml_create_float_array				# 2080
	addi	r3, r3, -48				# 2080
	lwz	r31, 44(r3)				# 2080
	mtspr	8, r31				# 2080
	lfs	f0, 32(r3)				# 2068
	lwz	r5, 40(r3)				# 2068
	stw	r2, 44(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 48(r3)				# 2068
	addi	r3, r3, 52				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -52				# 2068
	lwz	r31, 48(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 24(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 48(r3)				# 2069
	addi	r3, r3, 52				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -52				# 2069
	lwz	r31, 48(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 32(r3)				# 2070
	lwz	r5, 40(r3)				# 2070
	stw	r2, 48(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 52(r3)				# 2070
	addi	r3, r3, 56				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -56				# 2070
	lwz	r31, 52(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 20(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, 48(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, 32(r3)				# 2071
	lwz	r2, 40(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 52(r3)				# 2071
	addi	r3, r3, 56				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -56				# 2071
	lwz	r31, 52(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 16(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, 48(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, 32(r3)				# 2072
	lwz	r2, 40(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 52(r3)				# 2072
	addi	r3, r3, 56				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -56				# 2072
	lwz	r31, 52(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 40(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, 48(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, 52(r3)				# 2073
	addi	r3, r3, 56				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -56				# 2073
	lwz	r31, 52(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 48(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, 24(r3)				# 2082
	lwz	r6, 12(r3)				# 2082
	mfspr	r31, 8				# 2082
	mr	r5, r6				# 2082
	stw	r31, 52(r3)				# 2082
	addi	r3, r3, 56				# 2082
	bl	min_caml_create_array				# 2082
	addi	r3, r3, -56				# 2082
	lwz	r31, 52(r3)				# 2082
	mtspr	8, r31				# 2082
	lwz	r5, 24(r3)				# 2083
	lwz	r6, 12(r3)				# 2083
	stw	r2, 52(r3)				# 2083
	mfspr	r31, 8				# 2083
	mr	r2, r5				# 2083
	mr	r5, r6				# 2083
	stw	r31, 56(r3)				# 2083
	addi	r3, r3, 60				# 2083
	bl	min_caml_create_array				# 2083
	addi	r3, r3, -60				# 2083
	lwz	r31, 56(r3)				# 2083
	mtspr	8, r31				# 2083
	lfs	f0, 32(r3)				# 2068
	lwz	r5, 40(r3)				# 2068
	stw	r2, 56(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 60(r3)				# 2068
	addi	r3, r3, 64				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -64				# 2068
	lwz	r31, 60(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 24(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 60(r3)				# 2069
	addi	r3, r3, 64				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -64				# 2069
	lwz	r31, 60(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 32(r3)				# 2070
	lwz	r5, 40(r3)				# 2070
	stw	r2, 60(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 64(r3)				# 2070
	addi	r3, r3, 68				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -68				# 2070
	lwz	r31, 64(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 20(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, 60(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, 32(r3)				# 2071
	lwz	r2, 40(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 64(r3)				# 2071
	addi	r3, r3, 68				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -68				# 2071
	lwz	r31, 64(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 16(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, 60(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, 32(r3)				# 2072
	lwz	r2, 40(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 64(r3)				# 2072
	addi	r3, r3, 68				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -68				# 2072
	lwz	r31, 64(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 40(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, 60(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, 64(r3)				# 2073
	addi	r3, r3, 68				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -68				# 2073
	lwz	r31, 64(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 60(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lfs	f0, 32(r3)				# 2068
	lwz	r2, 40(r3)				# 2068
	mfspr	r31, 8				# 2068
	stw	r31, 64(r3)				# 2068
	addi	r3, r3, 68				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -68				# 2068
	lwz	r31, 64(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 24(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 64(r3)				# 2069
	addi	r3, r3, 68				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -68				# 2069
	lwz	r31, 64(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 32(r3)				# 2070
	lwz	r5, 40(r3)				# 2070
	stw	r2, 64(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 68(r3)				# 2070
	addi	r3, r3, 72				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -72				# 2070
	lwz	r31, 68(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 20(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, 64(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, 32(r3)				# 2071
	lwz	r2, 40(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 68(r3)				# 2071
	addi	r3, r3, 72				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -72				# 2071
	lwz	r31, 68(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 16(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, 64(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, 32(r3)				# 2072
	lwz	r2, 40(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 68(r3)				# 2072
	addi	r3, r3, 72				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -72				# 2072
	lwz	r31, 68(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 40(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, 64(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, 68(r3)				# 2073
	addi	r3, r3, 72				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -72				# 2073
	lwz	r31, 68(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 64(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, 20(r3)				# 2086
	lwz	r6, 12(r3)				# 2086
	mfspr	r31, 8				# 2086
	mr	r5, r6				# 2086
	stw	r31, 68(r3)				# 2086
	addi	r3, r3, 72				# 2086
	bl	min_caml_create_array				# 2086
	addi	r3, r3, -72				# 2086
	lwz	r31, 68(r3)				# 2086
	mtspr	8, r31				# 2086
	lfs	f0, 32(r3)				# 2068
	lwz	r5, 40(r3)				# 2068
	stw	r2, 68(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 72(r3)				# 2068
	addi	r3, r3, 76				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -76				# 2068
	lwz	r31, 72(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 24(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 72(r3)				# 2069
	addi	r3, r3, 76				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -76				# 2069
	lwz	r31, 72(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 32(r3)				# 2070
	lwz	r5, 40(r3)				# 2070
	stw	r2, 72(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 76(r3)				# 2070
	addi	r3, r3, 80				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -80				# 2070
	lwz	r31, 76(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 20(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, 72(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, 32(r3)				# 2071
	lwz	r2, 40(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 76(r3)				# 2071
	addi	r3, r3, 80				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -80				# 2071
	lwz	r31, 76(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 16(r3)				# 2071
	slwi	r5, r5, 2				# 2071
	lwz	r6, 72(r3)				# 2071
	stwx	r2, r6, r5				# 2071
	lfs	f0, 32(r3)				# 2072
	lwz	r2, 40(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 76(r3)				# 2072
	addi	r3, r3, 80				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -80				# 2072
	lwz	r31, 76(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 40(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, 72(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, 76(r3)				# 2073
	addi	r3, r3, 80				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -80				# 2073
	lwz	r31, 76(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 72(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	mr	r2, r4				# 2088
	addi	r4, r4, 32				# 2088
	stw	r5, 28(r2)				# 2088
	lwz	r5, 68(r3)				# 2088
	stw	r5, 24(r2)				# 2088
	lwz	r5, 64(r3)				# 2088
	stw	r5, 20(r2)				# 2088
	lwz	r5, 60(r3)				# 2088
	stw	r5, 16(r2)				# 2088
	lwz	r5, 56(r3)				# 2088
	stw	r5, 12(r2)				# 2088
	lwz	r5, 52(r3)				# 2088
	stw	r5, 8(r2)				# 2088
	lwz	r5, 48(r3)				# 2088
	stw	r5, 4(r2)				# 2088
	lwz	r5, 44(r3)				# 2088
	stw	r5, 0(r2)				# 2088
	lwz	r5, 8(r3)				# 2094
	slwi	r6, r5, 2				# 2094
	lwz	r7, 4(r3)				# 2094
	stwx	r2, r7, r6				# 2094
	lwz	r2, 20(r3)				# 2095
	sub	r5, r5, r2				# 2095
	lwz	r1, 0(r3)				# 2095
	mr	r2, r7				# 2095
	lwz	r30, 0(r1)				# 2095
	mtspr	9, r30
	bctr				# 2095
ble_else.16485:
	blr
calc_dirvec.2917:
	lwz	r7, 20(r1)				# 2124
	lwz	r8, 16(r1)				# 2124
	lwz	r9, 12(r1)				# 2124
	lwz	r10, 8(r1)				# 2124
	lwz	r11, 4(r1)				# 2124
	cmpw	cr7, r8, r2				# 2125
	bgt	cr7, ble_else.16487				# 2125
	fmul	f2, f0, f0				# 103
	fmul	f3, f1, f1				# 103
	fadd	f2, f2, f3				# 2126
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f3, 0(r31)				# 2126
	fadd	f2, f2, f3				# 2126
	stw	r9, 0(r3)				# 2126
	stw	r11, 4(r3)				# 2126
	stw	r10, 8(r3)				# 2126
	stw	r6, 12(r3)				# 2126
	stw	r7, 16(r3)				# 2126
	stw	r5, 20(r3)				# 2126
	stfs	f3, 24(r3)				# 2126
	stfs	f1, 32(r3)				# 2126
	stfs	f0, 40(r3)				# 2126
	mfspr	r31, 8				# 2126
	fmr	f0, f2				# 2126
	stw	r31, 48(r3)				# 2126
	addi	r3, r3, 52				# 2126
	bl	min_caml_sqrt				# 2126
	addi	r3, r3, -52				# 2126
	lwz	r31, 48(r3)				# 2126
	mtspr	8, r31				# 2126
	lfs	f1, 40(r3)				# 2127
	fdiv	f1, f1, f0				# 2127
	lfs	f2, 32(r3)				# 2128
	fdiv	f2, f2, f0				# 2128
	lfs	f3, 24(r3)				# 2129
	fdiv	f0, f3, f0				# 2129
	lwz	r2, 20(r3)				# 2132
	slwi	r2, r2, 2				# 2132
	lwz	r5, 16(r3)				# 2132
	lwzx	r2, r5, r2				# 2132
	lwz	r5, 12(r3)				# 2133
	slwi	r6, r5, 2				# 2133
	lwzx	r6, r2, r6				# 2133
	lwz	r6, 0(r6)				# 521
	lwz	r7, 8(r3)				# 147
	slwi	r8, r7, 2				# 147
	stfsx	f1, r6, r8				# 147
	lwz	r8, 4(r3)				# 148
	slwi	r9, r8, 2				# 148
	stfsx	f2, r6, r9				# 148
	lwz	r9, 0(r3)				# 149
	slwi	r10, r9, 2				# 149
	stfsx	f0, r6, r10				# 149
	addi	r6, r5, 40				# 2134
	slwi	r6, r6, 2				# 2134
	lwzx	r6, r2, r6				# 2134
	lwz	r6, 0(r6)				# 521
	fneg	f3, f2				# 107
	slwi	r10, r7, 2				# 147
	stfsx	f1, r6, r10				# 147
	slwi	r10, r8, 2				# 148
	stfsx	f0, r6, r10				# 148
	slwi	r10, r9, 2				# 149
	stfsx	f3, r6, r10				# 149
	addi	r6, r5, 80				# 2135
	slwi	r6, r6, 2				# 2135
	lwzx	r6, r2, r6				# 2135
	lwz	r6, 0(r6)				# 521
	fneg	f4, f1				# 107
	slwi	r10, r7, 2				# 147
	stfsx	f0, r6, r10				# 147
	slwi	r10, r8, 2				# 148
	stfsx	f4, r6, r10				# 148
	slwi	r10, r9, 2				# 149
	stfsx	f3, r6, r10				# 149
	add	r6, r5, r8				# 2136
	slwi	r6, r6, 2				# 2136
	lwzx	r6, r2, r6				# 2136
	lwz	r6, 0(r6)				# 521
	fneg	f0, f0				# 107
	slwi	r10, r7, 2				# 147
	stfsx	f4, r6, r10				# 147
	slwi	r10, r8, 2				# 148
	stfsx	f3, r6, r10				# 148
	slwi	r10, r9, 2				# 149
	stfsx	f0, r6, r10				# 149
	addi	r6, r5, 41				# 2137
	slwi	r6, r6, 2				# 2137
	lwzx	r6, r2, r6				# 2137
	lwz	r6, 0(r6)				# 521
	slwi	r10, r7, 2				# 147
	stfsx	f4, r6, r10				# 147
	slwi	r10, r8, 2				# 148
	stfsx	f0, r6, r10				# 148
	slwi	r10, r9, 2				# 149
	stfsx	f2, r6, r10				# 149
	addi	r5, r5, 81				# 2138
	slwi	r5, r5, 2				# 2138
	lwzx	r2, r2, r5				# 2138
	lwz	r2, 0(r2)				# 521
	slwi	r5, r7, 2				# 147
	stfsx	f0, r2, r5				# 147
	slwi	r5, r8, 2				# 148
	stfsx	f1, r2, r5				# 148
	slwi	r5, r9, 2				# 149
	stfsx	f2, r2, r5				# 149
	blr
ble_else.16487:
	fmul	f0, f1, f1				# 2116
	lis	r31, ha16(l.12356)
	addi	r31, r31, lo16(l.12356)
	lfs	f1, 0(r31)				# 2116
	fadd	f0, f0, f1				# 2116
	stw	r6, 12(r3)				# 2116
	stw	r5, 20(r3)				# 2116
	stw	r1, 48(r3)				# 2116
	stfs	f3, 56(r3)				# 2116
	stfs	f1, 64(r3)				# 2116
	stw	r11, 4(r3)				# 2116
	stw	r2, 72(r3)				# 2116
	stfs	f2, 80(r3)				# 2116
	mfspr	r31, 8				# 2116
	stw	r31, 88(r3)				# 2116
	addi	r3, r3, 92				# 2116
	bl	min_caml_sqrt				# 2116
	addi	r3, r3, -92				# 2116
	lwz	r31, 88(r3)				# 2116
	mtspr	8, r31				# 2116
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f1, 0(r31)				# 2117
	fdiv	f2, f1, f0				# 2117
	stfs	f1, 88(r3)				# 2118
	stfs	f0, 96(r3)				# 2118
	mfspr	r31, 8				# 2118
	fmr	f0, f2				# 2118
	stw	r31, 104(r3)				# 2118
	addi	r3, r3, 108				# 2118
	bl	min_caml_atan				# 2118
	addi	r3, r3, -108				# 2118
	lwz	r31, 104(r3)				# 2118
	mtspr	8, r31				# 2118
	lfs	f1, 80(r3)				# 2119
	fmul	f0, f0, f1				# 2119
	stfs	f0, 104(r3)				# 2111
	mfspr	r31, 8				# 2111
	stw	r31, 112(r3)				# 2111
	addi	r3, r3, 116				# 2111
	bl	min_caml_sin				# 2111
	addi	r3, r3, -116				# 2111
	lwz	r31, 112(r3)				# 2111
	mtspr	8, r31				# 2111
	lfs	f1, 104(r3)				# 2111
	stfs	f0, 112(r3)				# 2111
	mfspr	r31, 8				# 2111
	fmr	f0, f1				# 2111
	stw	r31, 120(r3)				# 2111
	addi	r3, r3, 124				# 2111
	bl	min_caml_cos				# 2111
	addi	r3, r3, -124				# 2111
	lwz	r31, 120(r3)				# 2111
	mtspr	8, r31				# 2111
	lfs	f1, 112(r3)				# 2111
	fdiv	f0, f1, f0				# 2111
	lfs	f1, 96(r3)				# 2120
	fmul	f0, f0, f1				# 2120
	lwz	r2, 4(r3)				# 2141
	lwz	r5, 72(r3)				# 2141
	add	r2, r5, r2				# 2141
	fmul	f1, f0, f0				# 2116
	lfs	f2, 64(r3)				# 2116
	fadd	f1, f1, f2				# 2116
	stfs	f0, 120(r3)				# 2116
	stw	r2, 128(r3)				# 2116
	mfspr	r31, 8				# 2116
	fmr	f0, f1				# 2116
	stw	r31, 132(r3)				# 2116
	addi	r3, r3, 136				# 2116
	bl	min_caml_sqrt				# 2116
	addi	r3, r3, -136				# 2116
	lwz	r31, 132(r3)				# 2116
	mtspr	8, r31				# 2116
	lfs	f1, 88(r3)				# 2117
	fdiv	f1, f1, f0				# 2117
	stfs	f0, 136(r3)				# 2118
	mfspr	r31, 8				# 2118
	fmr	f0, f1				# 2118
	stw	r31, 144(r3)				# 2118
	addi	r3, r3, 148				# 2118
	bl	min_caml_atan				# 2118
	addi	r3, r3, -148				# 2118
	lwz	r31, 144(r3)				# 2118
	mtspr	8, r31				# 2118
	lfs	f1, 56(r3)				# 2119
	fmul	f0, f0, f1				# 2119
	stfs	f0, 144(r3)				# 2111
	mfspr	r31, 8				# 2111
	stw	r31, 152(r3)				# 2111
	addi	r3, r3, 156				# 2111
	bl	min_caml_sin				# 2111
	addi	r3, r3, -156				# 2111
	lwz	r31, 152(r3)				# 2111
	mtspr	8, r31				# 2111
	lfs	f1, 144(r3)				# 2111
	stfs	f0, 152(r3)				# 2111
	mfspr	r31, 8				# 2111
	fmr	f0, f1				# 2111
	stw	r31, 160(r3)				# 2111
	addi	r3, r3, 164				# 2111
	bl	min_caml_cos				# 2111
	addi	r3, r3, -164				# 2111
	lwz	r31, 160(r3)				# 2111
	mtspr	8, r31				# 2111
	lfs	f1, 152(r3)				# 2111
	fdiv	f0, f1, f0				# 2111
	lfs	f1, 136(r3)				# 2120
	fmul	f1, f0, f1				# 2120
	lfs	f0, 120(r3)				# 2141
	lfs	f2, 80(r3)				# 2141
	lfs	f3, 56(r3)				# 2141
	lwz	r2, 128(r3)				# 2141
	lwz	r5, 20(r3)				# 2141
	lwz	r6, 12(r3)				# 2141
	lwz	r1, 48(r3)				# 2141
	lwz	r30, 0(r1)				# 2141
	mtspr	9, r30
	bctr				# 2141
calc_dirvecs.2925:
	lwz	r7, 24(r1)				# 2145
	lwz	r8, 20(r1)				# 2145
	lwz	r9, 16(r1)				# 2145
	lwz	r10, 12(r1)				# 2145
	lwz	r11, 8(r1)				# 2145
	lfs	f1, 4(r1)				# 2145
	cmpw	cr7, r10, r2				# 2146
	bgt	cr7, ble_else.16492				# 2146
	stw	r1, 0(r3)				# 2148
	stw	r8, 4(r3)				# 2148
	stw	r11, 8(r3)				# 2148
	stw	r9, 12(r3)				# 2148
	stw	r2, 16(r3)				# 2148
	stfs	f0, 24(r3)				# 2148
	stfs	f1, 32(r3)				# 2148
	stw	r6, 40(r3)				# 2148
	stw	r5, 44(r3)				# 2148
	stw	r10, 48(r3)				# 2148
	stw	r7, 52(r3)				# 2148
	mfspr	r31, 8				# 2148
	stw	r31, 56(r3)				# 2148
	addi	r3, r3, 60				# 2148
	bl	min_caml_float_of_int				# 2148
	addi	r3, r3, -60				# 2148
	lwz	r31, 56(r3)				# 2148
	mtspr	8, r31				# 2148
	lis	r31, ha16(l.12710)
	addi	r31, r31, lo16(l.12710)
	lfs	f1, 0(r31)				# 2148
	fmul	f0, f0, f1				# 2148
	lis	r31, ha16(l.12711)
	addi	r31, r31, lo16(l.12711)
	lfs	f2, 0(r31)				# 2148
	fsub	f2, f0, f2				# 2148
	lfs	f0, 32(r3)				# 2149
	lfs	f3, 24(r3)				# 2149
	lwz	r2, 48(r3)				# 2149
	lwz	r5, 44(r3)				# 2149
	lwz	r6, 40(r3)				# 2149
	lwz	r1, 52(r3)				# 2149
	stfs	f1, 56(r3)				# 2149
	mfspr	r31, 8				# 2149
	fmr	f1, f0				# 2149
	stw	r31, 64(r3)				# 2149
	addi	r3, r3, 68				# 2149
	lwz	r31, 0(r1)				# 2149
	mtspr	9, r31				# 2149
	bctr				# 2149
	addi	r3, r3, -68				# 2149
	lwz	r31, 64(r3)				# 2149
	mtspr	8, r31				# 2149
	lwz	r2, 16(r3)				# 2151
	mfspr	r31, 8				# 2151
	stw	r31, 64(r3)				# 2151
	addi	r3, r3, 68				# 2151
	bl	min_caml_float_of_int				# 2151
	addi	r3, r3, -68				# 2151
	lwz	r31, 64(r3)				# 2151
	mtspr	8, r31				# 2151
	lfs	f1, 56(r3)				# 2151
	fmul	f0, f0, f1				# 2151
	lis	r31, ha16(l.12356)
	addi	r31, r31, lo16(l.12356)
	lfs	f1, 0(r31)				# 2151
	fadd	f2, f0, f1				# 2151
	lwz	r2, 12(r3)				# 2152
	lwz	r5, 40(r3)				# 2152
	add	r6, r5, r2				# 2152
	lfs	f0, 32(r3)				# 2152
	lfs	f3, 24(r3)				# 2152
	lwz	r2, 48(r3)				# 2152
	lwz	r7, 44(r3)				# 2152
	lwz	r1, 52(r3)				# 2152
	mfspr	r31, 8				# 2152
	mr	r5, r7				# 2152
	fmr	f1, f0				# 2152
	stw	r31, 64(r3)				# 2152
	addi	r3, r3, 68				# 2152
	lwz	r31, 0(r1)				# 2152
	mtspr	9, r31				# 2152
	bctr				# 2152
	addi	r3, r3, -68				# 2152
	lwz	r31, 64(r3)				# 2152
	mtspr	8, r31				# 2152
	lwz	r2, 8(r3)				# 2154
	lwz	r5, 16(r3)				# 2154
	sub	r5, r5, r2				# 2154
	lwz	r6, 44(r3)				# 137
	add	r2, r6, r2				# 137
	lwz	r6, 4(r3)				# 138
	cmpw	cr7, r6, r2				# 138
	bgt	cr7, ble_else.16494				# 138
	sub	r2, r2, r6				# 138
	b	ble_cont.16495				# 138
ble_else.16494:
ble_cont.16495:
	lfs	f0, 24(r3)				# 2154
	lwz	r6, 40(r3)				# 2154
	lwz	r1, 0(r3)				# 2154
	mr	r30, r5				# 2154
	mr	r5, r2				# 2154
	mr	r2, r30				# 2154
	lwz	r30, 0(r1)				# 2154
	mtspr	9, r30
	bctr				# 2154
ble_else.16492:
	blr
calc_dirvec_rows.2930:
	lwz	r7, 20(r1)				# 2159
	lwz	r8, 16(r1)				# 2159
	lwz	r9, 12(r1)				# 2159
	lwz	r10, 8(r1)				# 2159
	lwz	r11, 4(r1)				# 2159
	cmpw	cr7, r10, r2				# 2160
	bgt	cr7, ble_else.16497				# 2160
	stw	r1, 0(r3)				# 2161
	stw	r8, 4(r3)				# 2161
	stw	r9, 8(r3)				# 2161
	stw	r11, 12(r3)				# 2161
	stw	r2, 16(r3)				# 2161
	stw	r6, 20(r3)				# 2161
	stw	r5, 24(r3)				# 2161
	stw	r7, 28(r3)				# 2161
	mfspr	r31, 8				# 2161
	stw	r31, 32(r3)				# 2161
	addi	r3, r3, 36				# 2161
	bl	min_caml_float_of_int				# 2161
	addi	r3, r3, -36				# 2161
	lwz	r31, 32(r3)				# 2161
	mtspr	8, r31				# 2161
	lis	r31, ha16(l.12710)
	addi	r31, r31, lo16(l.12710)
	lfs	f1, 0(r31)				# 2161
	fmul	f0, f0, f1				# 2161
	lis	r31, ha16(l.12711)
	addi	r31, r31, lo16(l.12711)
	lfs	f1, 0(r31)				# 2161
	fsub	f0, f0, f1				# 2161
	addi	r2, 0, 4
	lwz	r5, 24(r3)				# 2162
	lwz	r6, 20(r3)				# 2162
	lwz	r1, 28(r3)				# 2162
	mfspr	r31, 8				# 2162
	stw	r31, 32(r3)				# 2162
	addi	r3, r3, 36				# 2162
	lwz	r31, 0(r1)				# 2162
	mtspr	9, r31				# 2162
	bctr				# 2162
	addi	r3, r3, -36				# 2162
	lwz	r31, 32(r3)				# 2162
	mtspr	8, r31				# 2162
	lwz	r2, 12(r3)				# 2163
	lwz	r5, 16(r3)				# 2163
	sub	r2, r5, r2				# 2163
	lwz	r5, 8(r3)				# 137
	lwz	r6, 24(r3)				# 137
	add	r5, r6, r5				# 137
	lwz	r6, 4(r3)				# 138
	cmpw	cr7, r6, r5				# 138
	bgt	cr7, ble_else.16498				# 138
	sub	r5, r5, r6				# 138
	b	ble_cont.16499				# 138
ble_else.16498:
ble_cont.16499:
	lwz	r6, 20(r3)				# 2163
	addi	r6, r6, 4				# 2163
	lwz	r1, 0(r3)				# 2163
	lwz	r30, 0(r1)				# 2163
	mtspr	9, r30
	bctr				# 2163
ble_else.16497:
	blr
create_dirvec_elements.2936:
	lwz	r6, 20(r1)				# 2176
	lwz	r7, 16(r1)				# 2176
	lwz	r8, 12(r1)				# 2176
	lwz	r9, 8(r1)				# 2176
	lfs	f0, 4(r1)				# 2176
	cmpw	cr7, r8, r5				# 2177
	bgt	cr7, ble_else.16501				# 2177
	stw	r1, 0(r3)				# 2171
	stw	r9, 4(r3)				# 2171
	stw	r2, 8(r3)				# 2171
	stw	r5, 12(r3)				# 2171
	stw	r6, 16(r3)				# 2171
	stw	r8, 20(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r7				# 2171
	stw	r31, 24(r3)				# 2171
	addi	r3, r3, 28				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, -28				# 2171
	lwz	r31, 24(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, 20(r3)				# 2172
	slwi	r2, r2, 2				# 2172
	lwz	r6, 16(r3)				# 2172
	lwzx	r2, r6, r2				# 2172
	stw	r5, 24(r3)				# 2172
	mfspr	r31, 8				# 2172
	stw	r31, 28(r3)				# 2172
	addi	r3, r3, 32				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, -32				# 2172
	lwz	r31, 28(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, 24(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	mr	r2, r5				# 2173
	lwz	r5, 12(r3)				# 2178
	slwi	r6, r5, 2				# 2178
	lwz	r7, 8(r3)				# 2178
	stwx	r2, r7, r6				# 2178
	lwz	r2, 4(r3)				# 2179
	sub	r5, r5, r2				# 2179
	lwz	r1, 0(r3)				# 2179
	mr	r2, r7				# 2179
	lwz	r30, 0(r1)				# 2179
	mtspr	9, r30
	bctr				# 2179
ble_else.16501:
	blr
create_dirvecs.2939:
	lwz	r5, 28(r1)				# 2183
	lwz	r6, 24(r1)				# 2183
	lwz	r7, 20(r1)				# 2183
	lwz	r8, 16(r1)				# 2183
	lwz	r9, 12(r1)				# 2183
	lwz	r10, 8(r1)				# 2183
	lfs	f0, 4(r1)				# 2183
	cmpw	cr7, r9, r2				# 2184
	bgt	cr7, ble_else.16503				# 2184
	addi	r11, 0, 120
	stw	r1, 0(r3)				# 2171
	stw	r10, 4(r3)				# 2171
	stw	r7, 8(r3)				# 2171
	stw	r6, 12(r3)				# 2171
	stw	r2, 16(r3)				# 2171
	stw	r11, 20(r3)				# 2171
	stw	r5, 24(r3)				# 2171
	stw	r9, 28(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r8				# 2171
	stw	r31, 32(r3)				# 2171
	addi	r3, r3, 36				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, -36				# 2171
	lwz	r31, 32(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, 28(r3)				# 2172
	slwi	r2, r2, 2				# 2172
	lwz	r6, 24(r3)				# 2172
	lwzx	r2, r6, r2				# 2172
	stw	r5, 32(r3)				# 2172
	mfspr	r31, 8				# 2172
	stw	r31, 36(r3)				# 2172
	addi	r3, r3, 40				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, -40				# 2172
	lwz	r31, 36(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, 32(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	lwz	r2, 20(r3)				# 2185
	mfspr	r31, 8				# 2185
	stw	r31, 36(r3)				# 2185
	addi	r3, r3, 40				# 2185
	bl	min_caml_create_array				# 2185
	addi	r3, r3, -40				# 2185
	lwz	r31, 36(r3)				# 2185
	mtspr	8, r31				# 2185
	lwz	r5, 16(r3)				# 2185
	slwi	r6, r5, 2				# 2185
	lwz	r7, 12(r3)				# 2185
	stwx	r2, r7, r6				# 2185
	slwi	r2, r5, 2				# 2186
	lwzx	r2, r7, r2				# 2186
	addi	r6, 0, 118
	lwz	r1, 8(r3)				# 2186
	mfspr	r31, 8				# 2186
	mr	r5, r6				# 2186
	stw	r31, 36(r3)				# 2186
	addi	r3, r3, 40				# 2186
	lwz	r31, 0(r1)				# 2186
	mtspr	9, r31				# 2186
	bctr				# 2186
	addi	r3, r3, -40				# 2186
	lwz	r31, 36(r3)				# 2186
	mtspr	8, r31				# 2186
	lwz	r2, 4(r3)				# 2187
	lwz	r5, 16(r3)				# 2187
	sub	r2, r5, r2				# 2187
	lwz	r1, 0(r3)				# 2187
	lwz	r30, 0(r1)				# 2187
	mtspr	9, r30
	bctr				# 2187
ble_else.16503:
	blr
init_dirvec_constants.2941:
	lwz	r6, 16(r1)				# 2193
	lwz	r7, 12(r1)				# 2193
	lwz	r8, 8(r1)				# 2193
	lwz	r9, 4(r1)				# 2193
	cmpw	cr7, r8, r5				# 2194
	bgt	cr7, ble_else.16505				# 2194
	slwi	r10, r5, 2				# 2195
	lwzx	r10, r2, r10				# 2195
	slwi	r8, r8, 2				# 1135
	lwzx	r6, r6, r8				# 1135
	sub	r6, r6, r9				# 1135
	stw	r2, 0(r3)				# 1135
	stw	r1, 4(r3)				# 1135
	stw	r9, 8(r3)				# 1135
	stw	r5, 12(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r5, r6				# 1135
	mr	r2, r10				# 1135
	mr	r1, r7				# 1135
	stw	r31, 16(r3)				# 1135
	addi	r3, r3, 20				# 1135
	lwz	r31, 0(r1)				# 1135
	mtspr	9, r31				# 1135
	bctr				# 1135
	addi	r3, r3, -20				# 1135
	lwz	r31, 16(r3)				# 1135
	mtspr	8, r31				# 1135
	lwz	r2, 8(r3)				# 2196
	lwz	r5, 12(r3)				# 2196
	sub	r5, r5, r2				# 2196
	lwz	r2, 0(r3)				# 2196
	lwz	r1, 4(r3)				# 2196
	lwz	r30, 0(r1)				# 2196
	mtspr	9, r30
	bctr				# 2196
ble_else.16505:
	blr
init_vecset_constants.2944:
	lwz	r5, 16(r1)				# 2200
	lwz	r6, 12(r1)				# 2200
	lwz	r7, 8(r1)				# 2200
	lwz	r8, 4(r1)				# 2200
	cmpw	cr7, r7, r2				# 2201
	bgt	cr7, ble_else.16507				# 2201
	slwi	r7, r2, 2				# 2202
	lwzx	r6, r6, r7				# 2202
	addi	r7, 0, 119
	stw	r1, 0(r3)				# 2202
	stw	r8, 4(r3)				# 2202
	stw	r2, 8(r3)				# 2202
	mfspr	r31, 8				# 2202
	mr	r2, r6				# 2202
	mr	r1, r5				# 2202
	mr	r5, r7				# 2202
	stw	r31, 12(r3)				# 2202
	addi	r3, r3, 16				# 2202
	lwz	r31, 0(r1)				# 2202
	mtspr	9, r31				# 2202
	bctr				# 2202
	addi	r3, r3, -16				# 2202
	lwz	r31, 12(r3)				# 2202
	mtspr	8, r31				# 2202
	lwz	r2, 4(r3)				# 2203
	lwz	r5, 8(r3)				# 2203
	sub	r2, r5, r2				# 2203
	lwz	r1, 0(r3)				# 2203
	lwz	r30, 0(r1)				# 2203
	mtspr	9, r30
	bctr				# 2203
ble_else.16507:
	blr
setup_reflections.2961:
	lwz	r5, 44(r1)				# 2254
	lwz	r6, 40(r1)				# 2254
	lwz	r7, 36(r1)				# 2254
	lwz	r8, 32(r1)				# 2254
	lwz	r9, 28(r1)				# 2254
	lwz	r10, 24(r1)				# 2254
	lwz	r11, 20(r1)				# 2254
	lwz	r12, 16(r1)				# 2254
	lwz	r13, 12(r1)				# 2254
	lwz	r14, 8(r1)				# 2254
	lfs	f0, 4(r1)				# 2254
	cmpw	cr7, r13, r2				# 2255
	bgt	cr7, ble_else.16509				# 2255
	slwi	r15, r2, 2				# 2256
	lwzx	r6, r6, r15				# 2256
	lwz	r15, 8(r6)				# 262
	cmpw	cr7, r15, r11				# 2257
	bne	cr7, beq_else.16510				# 2257
	lwz	r15, 28(r6)				# 360
	slwi	r16, r13, 2				# 365
	lfsx	f1, r15, r16				# 365
	lis	r31, ha16(l.11681)
	addi	r31, r31, lo16(l.11681)
	lfs	f2, 0(r31)				# 2258
	fcmpu	cr7, f2, f1				# 109
	bgt	cr7, ble_else.16511				# 109
	addi	r15, 0, 0
	b	ble_cont.16512				# 109
ble_else.16511:
	addi	r15, 0, 1
ble_cont.16512:
	cmpw	cr7, r15, r13				# 2258
	bne	cr7, beq_else.16513				# 2258
	blr
beq_else.16513:
	lwz	r15, 4(r6)				# 252
	cmpw	cr7, r15, r14				# 2261
	bne	cr7, beq_else.16515				# 2261
	slwi	r2, r2, 2				# 2226
	slwi	r15, r13, 2				# 2227
	lwzx	r15, r7, r15				# 2227
	lwz	r6, 28(r6)				# 360
	slwi	r16, r13, 2				# 365
	lfsx	f1, r6, r16				# 365
	fsub	f1, f2, f1				# 2228
	slwi	r6, r13, 2				# 2229
	lfsx	f2, r9, r6				# 2229
	fneg	f2, f2				# 107
	slwi	r6, r14, 2				# 2230
	lfsx	f3, r9, r6				# 2230
	fneg	f3, f3				# 107
	slwi	r6, r11, 2				# 2231
	lfsx	f4, r9, r6				# 2231
	fneg	f4, f4				# 107
	add	r6, r2, r14				# 2232
	slwi	r16, r13, 2				# 2232
	lfsx	f5, r9, r16				# 2232
	stw	r7, 0(r3)				# 2171
	stfs	f2, 8(r3)				# 2171
	stfs	f0, 16(r3)				# 2171
	stw	r12, 24(r3)				# 2171
	stw	r9, 28(r3)				# 2171
	stw	r2, 32(r3)				# 2171
	stw	r5, 36(r3)				# 2171
	stw	r15, 40(r3)				# 2171
	stw	r6, 44(r3)				# 2171
	stfs	f1, 48(r3)				# 2171
	stw	r10, 56(r3)				# 2171
	stfs	f4, 64(r3)				# 2171
	stw	r11, 72(r3)				# 2171
	stfs	f3, 80(r3)				# 2171
	stw	r14, 88(r3)				# 2171
	stfs	f5, 96(r3)				# 2171
	stw	r8, 104(r3)				# 2171
	stw	r13, 108(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r12				# 2171
	stw	r31, 112(r3)				# 2171
	addi	r3, r3, 116				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, -116				# 2171
	lwz	r31, 112(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, 108(r3)				# 2172
	slwi	r6, r2, 2				# 2172
	lwz	r7, 104(r3)				# 2172
	lwzx	r6, r7, r6				# 2172
	stw	r5, 112(r3)				# 2172
	mfspr	r31, 8				# 2172
	mr	r2, r6				# 2172
	stw	r31, 116(r3)				# 2172
	addi	r3, r3, 120				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, -120				# 2172
	lwz	r31, 116(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, 112(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	lwz	r6, 108(r3)				# 147
	slwi	r7, r6, 2				# 147
	lfs	f0, 96(r3)				# 147
	stfsx	f0, r2, r7				# 147
	lwz	r7, 88(r3)				# 148
	slwi	r8, r7, 2				# 148
	lfs	f0, 80(r3)				# 148
	stfsx	f0, r2, r8				# 148
	lwz	r8, 72(r3)				# 149
	slwi	r9, r8, 2				# 149
	lfs	f1, 64(r3)				# 149
	stfsx	f1, r2, r9				# 149
	slwi	r2, r6, 2				# 1135
	lwz	r9, 104(r3)				# 1135
	lwzx	r2, r9, r2				# 1135
	sub	r2, r2, r7				# 1135
	lwz	r1, 56(r3)				# 1135
	stw	r5, 116(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r30, r5				# 1135
	mr	r5, r2				# 1135
	mr	r2, r30				# 1135
	stw	r31, 120(r3)				# 1135
	addi	r3, r3, 124				# 1135
	lwz	r31, 0(r1)				# 1135
	mtspr	9, r31				# 1135
	bctr				# 1135
	addi	r3, r3, -124				# 1135
	lwz	r31, 120(r3)				# 1135
	mtspr	8, r31				# 1135
	mr	r2, r4				# 2221
	addi	r4, r4, 12				# 2221
	lfs	f0, 48(r3)				# 2221
	stfs	f0, 8(r2)				# 2221
	lwz	r5, 116(r3)				# 2221
	stw	r5, 4(r2)				# 2221
	lwz	r5, 44(r3)				# 2221
	stw	r5, 0(r2)				# 2221
	lwz	r5, 40(r3)				# 2221
	slwi	r6, r5, 2				# 2221
	lwz	r7, 36(r3)				# 2221
	stwx	r2, r7, r6				# 2221
	lwz	r2, 88(r3)				# 2233
	add	r6, r5, r2				# 2233
	lwz	r8, 72(r3)				# 2233
	lwz	r9, 32(r3)				# 2233
	add	r10, r9, r8				# 2233
	slwi	r11, r2, 2				# 2233
	lwz	r12, 28(r3)				# 2233
	lfsx	f1, r12, r11				# 2233
	lfs	f2, 16(r3)				# 2171
	lwz	r11, 24(r3)				# 2171
	stw	r6, 120(r3)				# 2171
	stw	r10, 124(r3)				# 2171
	stfs	f1, 128(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r11				# 2171
	fmr	f0, f2				# 2171
	stw	r31, 136(r3)				# 2171
	addi	r3, r3, 140				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, -140				# 2171
	lwz	r31, 136(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, 108(r3)				# 2172
	slwi	r6, r2, 2				# 2172
	lwz	r7, 104(r3)				# 2172
	lwzx	r6, r7, r6				# 2172
	stw	r5, 136(r3)				# 2172
	mfspr	r31, 8				# 2172
	mr	r2, r6				# 2172
	stw	r31, 140(r3)				# 2172
	addi	r3, r3, 144				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, -144				# 2172
	lwz	r31, 140(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, 136(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	lwz	r6, 108(r3)				# 147
	slwi	r7, r6, 2				# 147
	lfs	f0, 8(r3)				# 147
	stfsx	f0, r2, r7				# 147
	lwz	r7, 88(r3)				# 148
	slwi	r8, r7, 2				# 148
	lfs	f1, 128(r3)				# 148
	stfsx	f1, r2, r8				# 148
	lwz	r8, 72(r3)				# 149
	slwi	r9, r8, 2				# 149
	lfs	f1, 64(r3)				# 149
	stfsx	f1, r2, r9				# 149
	slwi	r2, r6, 2				# 1135
	lwz	r9, 104(r3)				# 1135
	lwzx	r2, r9, r2				# 1135
	sub	r2, r2, r7				# 1135
	lwz	r1, 56(r3)				# 1135
	stw	r5, 140(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r30, r5				# 1135
	mr	r5, r2				# 1135
	mr	r2, r30				# 1135
	stw	r31, 144(r3)				# 1135
	addi	r3, r3, 148				# 1135
	lwz	r31, 0(r1)				# 1135
	mtspr	9, r31				# 1135
	bctr				# 1135
	addi	r3, r3, -148				# 1135
	lwz	r31, 144(r3)				# 1135
	mtspr	8, r31				# 1135
	mr	r2, r4				# 2221
	addi	r4, r4, 12				# 2221
	lfs	f0, 48(r3)				# 2221
	stfs	f0, 8(r2)				# 2221
	lwz	r5, 140(r3)				# 2221
	stw	r5, 4(r2)				# 2221
	lwz	r5, 124(r3)				# 2221
	stw	r5, 0(r2)				# 2221
	lwz	r5, 120(r3)				# 2221
	slwi	r5, r5, 2				# 2221
	lwz	r6, 36(r3)				# 2221
	stwx	r2, r6, r5				# 2221
	lwz	r2, 72(r3)				# 2234
	lwz	r5, 40(r3)				# 2234
	add	r7, r5, r2				# 2234
	lwz	r8, 24(r3)				# 2234
	lwz	r9, 32(r3)				# 2234
	add	r9, r9, r8				# 2234
	slwi	r10, r2, 2				# 2234
	lwz	r11, 28(r3)				# 2234
	lfsx	f1, r11, r10				# 2234
	lfs	f2, 16(r3)				# 2171
	stw	r7, 144(r3)				# 2171
	stw	r9, 148(r3)				# 2171
	stfs	f1, 152(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r8				# 2171
	fmr	f0, f2				# 2171
	stw	r31, 160(r3)				# 2171
	addi	r3, r3, 164				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, -164				# 2171
	lwz	r31, 160(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, 108(r3)				# 2172
	slwi	r6, r2, 2				# 2172
	lwz	r7, 104(r3)				# 2172
	lwzx	r6, r7, r6				# 2172
	stw	r5, 160(r3)				# 2172
	mfspr	r31, 8				# 2172
	mr	r2, r6				# 2172
	stw	r31, 164(r3)				# 2172
	addi	r3, r3, 168				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, -168				# 2172
	lwz	r31, 164(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, 160(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	lwz	r6, 108(r3)				# 147
	slwi	r7, r6, 2				# 147
	lfs	f0, 8(r3)				# 147
	stfsx	f0, r2, r7				# 147
	lwz	r7, 88(r3)				# 148
	slwi	r8, r7, 2				# 148
	lfs	f0, 80(r3)				# 148
	stfsx	f0, r2, r8				# 148
	lwz	r8, 72(r3)				# 149
	slwi	r8, r8, 2				# 149
	lfs	f0, 152(r3)				# 149
	stfsx	f0, r2, r8				# 149
	slwi	r2, r6, 2				# 1135
	lwz	r8, 104(r3)				# 1135
	lwzx	r2, r8, r2				# 1135
	sub	r2, r2, r7				# 1135
	lwz	r1, 56(r3)				# 1135
	stw	r5, 164(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r30, r5				# 1135
	mr	r5, r2				# 1135
	mr	r2, r30				# 1135
	stw	r31, 168(r3)				# 1135
	addi	r3, r3, 172				# 1135
	lwz	r31, 0(r1)				# 1135
	mtspr	9, r31				# 1135
	bctr				# 1135
	addi	r3, r3, -172				# 1135
	lwz	r31, 168(r3)				# 1135
	mtspr	8, r31				# 1135
	mr	r2, r4				# 2221
	addi	r4, r4, 12				# 2221
	lfs	f0, 48(r3)				# 2221
	stfs	f0, 8(r2)				# 2221
	lwz	r5, 164(r3)				# 2221
	stw	r5, 4(r2)				# 2221
	lwz	r5, 148(r3)				# 2221
	stw	r5, 0(r2)				# 2221
	lwz	r5, 144(r3)				# 2221
	slwi	r5, r5, 2				# 2221
	lwz	r6, 36(r3)				# 2221
	stwx	r2, r6, r5				# 2221
	lwz	r2, 24(r3)				# 2235
	lwz	r5, 40(r3)				# 2235
	add	r2, r5, r2				# 2235
	lwz	r5, 108(r3)				# 2235
	slwi	r5, r5, 2				# 2235
	lwz	r6, 0(r3)				# 2235
	stwx	r2, r6, r5				# 2235
	blr
beq_else.16515:
	cmpw	cr7, r15, r11				# 2263
	bne	cr7, beq_else.16521				# 2263
	slwi	r2, r2, 2				# 2240
	add	r2, r2, r14				# 2240
	slwi	r15, r13, 2				# 2241
	lwzx	r15, r7, r15				# 2241
	lwz	r16, 28(r6)				# 360
	slwi	r17, r13, 2				# 365
	lfsx	f1, r16, r17				# 365
	fsub	f1, f2, f1				# 2242
	lwz	r16, 16(r6)				# 320
	slwi	r17, r13, 2				# 195
	lfsx	f2, r9, r17				# 195
	slwi	r17, r13, 2				# 195
	lfsx	f3, r16, r17				# 195
	fmul	f2, f2, f3				# 195
	slwi	r17, r14, 2				# 195
	lfsx	f3, r9, r17				# 195
	slwi	r17, r14, 2				# 195
	lfsx	f4, r16, r17				# 195
	fmul	f3, f3, f4				# 195
	fadd	f2, f2, f3				# 195
	slwi	r17, r11, 2				# 195
	lfsx	f3, r9, r17				# 195
	slwi	r17, r11, 2				# 195
	lfsx	f4, r16, r17				# 195
	fmul	f3, f3, f4				# 195
	fadd	f2, f2, f3				# 195
	lis	r31, ha16(l.11646)
	addi	r31, r31, lo16(l.11646)
	lfs	f3, 0(r31)				# 2246
	lwz	r16, 16(r6)				# 290
	slwi	r17, r13, 2				# 295
	lfsx	f4, r16, r17				# 295
	fmul	f4, f3, f4				# 2246
	fmul	f4, f4, f2				# 2246
	slwi	r16, r13, 2				# 2246
	lfsx	f5, r9, r16				# 2246
	fsub	f4, f4, f5				# 2246
	lwz	r16, 16(r6)				# 300
	slwi	r17, r14, 2				# 305
	lfsx	f5, r16, r17				# 305
	fmul	f5, f3, f5				# 2247
	fmul	f5, f5, f2				# 2247
	slwi	r16, r14, 2				# 2247
	lfsx	f6, r9, r16				# 2247
	fsub	f5, f5, f6				# 2247
	lwz	r6, 16(r6)				# 310
	slwi	r16, r11, 2				# 315
	lfsx	f6, r6, r16				# 315
	fmul	f3, f3, f6				# 2248
	fmul	f2, f3, f2				# 2248
	slwi	r6, r11, 2				# 2248
	lfsx	f3, r9, r6				# 2248
	fsub	f2, f2, f3				# 2248
	stw	r7, 0(r3)				# 2171
	stw	r5, 36(r3)				# 2171
	stw	r15, 168(r3)				# 2171
	stw	r2, 172(r3)				# 2171
	stfs	f1, 176(r3)				# 2171
	stw	r10, 56(r3)				# 2171
	stfs	f2, 184(r3)				# 2171
	stw	r11, 72(r3)				# 2171
	stfs	f5, 192(r3)				# 2171
	stw	r14, 88(r3)				# 2171
	stfs	f4, 200(r3)				# 2171
	stw	r8, 104(r3)				# 2171
	stw	r13, 108(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r12				# 2171
	stw	r31, 208(r3)				# 2171
	addi	r3, r3, 212				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, -212				# 2171
	lwz	r31, 208(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, 108(r3)				# 2172
	slwi	r6, r2, 2				# 2172
	lwz	r7, 104(r3)				# 2172
	lwzx	r6, r7, r6				# 2172
	stw	r5, 208(r3)				# 2172
	mfspr	r31, 8				# 2172
	mr	r2, r6				# 2172
	stw	r31, 212(r3)				# 2172
	addi	r3, r3, 216				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, -216				# 2172
	lwz	r31, 212(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, 208(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	lwz	r6, 108(r3)				# 147
	slwi	r7, r6, 2				# 147
	lfs	f0, 200(r3)				# 147
	stfsx	f0, r2, r7				# 147
	lwz	r7, 88(r3)				# 148
	slwi	r8, r7, 2				# 148
	lfs	f0, 192(r3)				# 148
	stfsx	f0, r2, r8				# 148
	lwz	r8, 72(r3)				# 149
	slwi	r8, r8, 2				# 149
	lfs	f0, 184(r3)				# 149
	stfsx	f0, r2, r8				# 149
	slwi	r2, r6, 2				# 1135
	lwz	r8, 104(r3)				# 1135
	lwzx	r2, r8, r2				# 1135
	sub	r2, r2, r7				# 1135
	lwz	r1, 56(r3)				# 1135
	stw	r5, 212(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r30, r5				# 1135
	mr	r5, r2				# 1135
	mr	r2, r30				# 1135
	stw	r31, 216(r3)				# 1135
	addi	r3, r3, 220				# 1135
	lwz	r31, 0(r1)				# 1135
	mtspr	9, r31				# 1135
	bctr				# 1135
	addi	r3, r3, -220				# 1135
	lwz	r31, 216(r3)				# 1135
	mtspr	8, r31				# 1135
	mr	r2, r4				# 2221
	addi	r4, r4, 12				# 2221
	lfs	f0, 176(r3)				# 2221
	stfs	f0, 8(r2)				# 2221
	lwz	r5, 212(r3)				# 2221
	stw	r5, 4(r2)				# 2221
	lwz	r5, 172(r3)				# 2221
	stw	r5, 0(r2)				# 2221
	lwz	r5, 168(r3)				# 2221
	slwi	r6, r5, 2				# 2221
	lwz	r7, 36(r3)				# 2221
	stwx	r2, r7, r6				# 2221
	lwz	r2, 88(r3)				# 2249
	add	r2, r5, r2				# 2249
	lwz	r5, 108(r3)				# 2249
	slwi	r5, r5, 2				# 2249
	lwz	r6, 0(r3)				# 2249
	stwx	r2, r6, r5				# 2249
	blr
beq_else.16521:
	blr
beq_else.16510:
	blr
ble_else.16509:
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
	lis	r31, ha16(l.11690)
	addi	r31, r31, lo16(l.11690)
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
	mr	r30, r5				# 22
	mr	r5, r2				# 22
	mr	r2, r30				# 22
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
	lis	r31, ha16(l.12208)
	addi	r31, r31, lo16(l.12208)
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
	lis	r31, ha16(l.12817)
	addi	r31, r31, lo16(l.12817)
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
	mr	r5, r4				# 614
	addi	r4, r4, 16				# 614
	lis	r6, ha16(rotate_quadratic_matrix.2613)
	addi	r6, r6, lo16(rotate_quadratic_matrix.2613)
	stw	r6, 0(r5)				# 614
	lwz	r6, 128(r3)				# 614
	stw	r6, 12(r5)				# 614
	lwz	r7, 4(r3)				# 614
	stw	r7, 8(r5)				# 614
	lwz	r8, 0(r3)				# 614
	stw	r8, 4(r5)				# 614
	mr	r9, r4				# 655
	addi	r4, r4, 36				# 655
	lis	r10, ha16(read_nth_object.2616)
	addi	r10, r10, lo16(read_nth_object.2616)
	stw	r10, 0(r9)				# 655
	stw	r5, 32(r9)				# 655
	lwz	r5, 28(r3)				# 655
	stw	r5, 28(r9)				# 655
	stw	r6, 24(r9)				# 655
	lwz	r10, 64(r3)				# 655
	stw	r10, 20(r9)				# 655
	lwz	r11, 32(r3)				# 655
	stw	r11, 16(r9)				# 655
	stw	r7, 12(r9)				# 655
	stw	r8, 8(r9)				# 655
	lfs	f0, 16(r3)				# 655
	stfs	f0, 4(r9)				# 655
	mr	r12, r4				# 738
	addi	r4, r4, 24				# 738
	lis	r13, ha16(read_object.2618)
	addi	r13, r13, lo16(read_object.2618)
	stw	r13, 0(r12)				# 738
	stw	r9, 20(r12)				# 738
	lwz	r9, 8(r3)				# 738
	stw	r9, 16(r12)				# 738
	lwz	r13, 24(r3)				# 738
	stw	r13, 12(r12)				# 738
	stw	r7, 8(r12)				# 738
	stw	r8, 4(r12)				# 738
	mr	r13, r4				# 754
	addi	r4, r4, 12				# 754
	lis	r14, ha16(read_net_item.2622)
	addi	r14, r14, lo16(read_net_item.2622)
	stw	r14, 0(r13)				# 754
	stw	r10, 8(r13)				# 754
	stw	r8, 4(r13)				# 754
	mr	r14, r4				# 762
	addi	r4, r4, 20				# 762
	lis	r15, ha16(read_or_network.2624)
	addi	r15, r15, lo16(read_or_network.2624)
	stw	r15, 0(r14)				# 762
	stw	r13, 16(r14)				# 762
	stw	r10, 12(r14)				# 762
	stw	r7, 8(r14)				# 762
	stw	r8, 4(r14)				# 762
	mr	r15, r4				# 771
	addi	r4, r4, 24				# 771
	lis	r16, ha16(read_and_network.2626)
	addi	r16, r16, lo16(read_and_network.2626)
	stw	r16, 0(r15)				# 771
	stw	r13, 20(r15)				# 771
	lwz	r13, 72(r3)				# 771
	stw	r13, 16(r15)				# 771
	stw	r10, 12(r15)				# 771
	stw	r7, 8(r15)				# 771
	stw	r8, 4(r15)				# 771
	mr	r16, r4				# 780
	addi	r4, r4, 64				# 780
	lis	r17, ha16(read_parameter.2628)
	addi	r17, r17, lo16(read_parameter.2628)
	stw	r17, 0(r16)				# 780
	lwz	r17, 40(r3)				# 780
	stw	r17, 60(r16)				# 780
	lwz	r18, 160(r3)				# 780
	stw	r18, 56(r16)				# 780
	lwz	r19, 156(r3)				# 780
	stw	r19, 52(r16)				# 780
	lwz	r20, 152(r3)				# 780
	stw	r20, 48(r16)				# 780
	lwz	r21, 36(r3)				# 780
	stw	r21, 44(r16)				# 780
	stw	r14, 40(r16)				# 780
	stw	r12, 36(r16)				# 780
	stw	r15, 32(r16)				# 780
	lwz	r12, 76(r3)				# 780
	stw	r12, 28(r16)				# 780
	lwz	r14, 56(r3)				# 780
	stw	r14, 24(r16)				# 780
	lwz	r15, 60(r3)				# 780
	stw	r15, 20(r16)				# 780
	stw	r6, 16(r16)				# 780
	stw	r7, 12(r16)				# 780
	stw	r8, 8(r16)				# 780
	stfs	f0, 4(r16)				# 780
	mr	r21, r4				# 811
	addi	r4, r4, 24				# 811
	lis	r22, ha16(solver_rect.2639)
	addi	r22, r22, lo16(solver_rect.2639)
	stw	r22, 0(r21)				# 811
	lwz	r22, 80(r3)				# 811
	stw	r22, 20(r21)				# 811
	stw	r6, 16(r21)				# 811
	stw	r7, 12(r21)				# 811
	stw	r8, 8(r21)				# 811
	stfs	f0, 4(r21)				# 811
	mr	r23, r4				# 868
	addi	r4, r4, 28				# 868
	lis	r24, ha16(solver_second.2664)
	addi	r24, r24, lo16(solver_second.2664)
	stw	r24, 0(r23)				# 868
	stw	r22, 24(r23)				# 868
	stw	r6, 20(r23)				# 868
	stw	r11, 16(r23)				# 868
	stw	r7, 12(r23)				# 868
	stw	r8, 8(r23)				# 868
	stfs	f0, 4(r23)				# 868
	mr	r24, r4				# 914
	addi	r4, r4, 32				# 914
	lis	r25, ha16(solver_rect_fast.2674)
	addi	r25, r25, lo16(solver_rect_fast.2674)
	stw	r25, 0(r24)				# 914
	stw	r22, 28(r24)				# 914
	lwz	r25, 172(r3)				# 914
	stw	r25, 24(r24)				# 914
	stw	r6, 20(r24)				# 914
	stw	r11, 16(r24)				# 914
	stw	r7, 12(r24)				# 914
	stw	r8, 8(r24)				# 914
	stfs	f0, 4(r24)				# 914
	mr	r26, r4				# 956
	addi	r4, r4, 28				# 956
	lis	r27, ha16(solver_second_fast.2687)
	addi	r27, r27, lo16(solver_second_fast.2687)
	stw	r27, 0(r26)				# 956
	stw	r22, 24(r26)				# 956
	stw	r6, 20(r26)				# 956
	stw	r11, 16(r26)				# 956
	stw	r7, 12(r26)				# 956
	stw	r8, 8(r26)				# 956
	stfs	f0, 4(r26)				# 956
	mr	r27, r4				# 1089
	addi	r4, r4, 28				# 1089
	lis	r28, ha16(setup_second_table.2720)
	addi	r28, r28, lo16(setup_second_table.2720)
	stw	r28, 0(r27)				# 1089
	stw	r25, 24(r27)				# 1089
	stw	r6, 20(r27)				# 1089
	stw	r11, 16(r27)				# 1089
	stw	r7, 12(r27)				# 1089
	stw	r8, 8(r27)				# 1089
	stfs	f0, 4(r27)				# 1089
	mr	r28, r4				# 1117
	addi	r4, r4, 36				# 1117
	lis	r29, ha16(iter_setup_dirvec_constants.2723)
	addi	r29, r29, lo16(iter_setup_dirvec_constants.2723)
	stw	r29, 0(r28)				# 1117
	stw	r27, 32(r28)				# 1117
	stw	r5, 28(r28)				# 1117
	stw	r25, 24(r28)				# 1117
	stw	r6, 20(r28)				# 1117
	stw	r11, 16(r28)				# 1117
	stw	r7, 12(r28)				# 1117
	stw	r8, 8(r28)				# 1117
	stfs	f0, 4(r28)				# 1117
	mr	r27, r4				# 1140
	addi	r4, r4, 24				# 1140
	lis	r29, ha16(setup_startp_constants.2728)
	addi	r29, r29, lo16(setup_startp_constants.2728)
	stw	r29, 0(r27)				# 1140
	stw	r5, 20(r27)				# 1140
	stw	r6, 16(r27)				# 1140
	stw	r11, 12(r27)				# 1140
	stw	r7, 8(r27)				# 1140
	stw	r8, 4(r27)				# 1140
	mr	r29, r4				# 1207
	addi	r4, r4, 32				# 1207
	lis	r30, ha16(check_all_inside.2753)
	addi	r30, r30, lo16(check_all_inside.2753)
	stw	r30, 0(r29)				# 1207
	stw	r5, 28(r29)				# 1207
	stw	r6, 24(r29)				# 1207
	stw	r10, 20(r29)				# 1207
	stw	r11, 16(r29)				# 1207
	stw	r7, 12(r29)				# 1207
	stw	r8, 8(r29)				# 1207
	stfs	f0, 4(r29)				# 1207
	mr	r30, r4				# 1225
	addi	r4, r4, 64				# 1225
	lis	r1, ha16(shadow_check_and_group.2759)
	addi	r1, r1, lo16(shadow_check_and_group.2759)
	stw	r1, 0(r30)				# 1225
	lwz	r1, 184(r3)				# 1225
	stw	r1, 60(r30)				# 1225
	stw	r26, 56(r30)				# 1225
	stw	r24, 52(r30)				# 1225
	stw	r22, 48(r30)				# 1225
	stw	r5, 44(r30)				# 1225
	stw	r14, 40(r30)				# 1225
	stw	r16, 204(r3)				# 1225
	lwz	r16, 104(r3)				# 1225
	stw	r16, 36(r30)				# 1225
	stw	r28, 208(r3)				# 1225
	lwz	r28, 192(r3)				# 1225
	stw	r28, 32(r30)				# 1225
	stw	r29, 28(r30)				# 1225
	stw	r6, 24(r30)				# 1225
	stw	r10, 20(r30)				# 1225
	stw	r11, 16(r30)				# 1225
	stw	r7, 12(r30)				# 1225
	stw	r8, 8(r30)				# 1225
	stfs	f0, 4(r30)				# 1225
	mr	r19, r4				# 1255
	addi	r4, r4, 24				# 1255
	lis	r18, ha16(shadow_check_one_or_group.2762)
	addi	r18, r18, lo16(shadow_check_one_or_group.2762)
	stw	r18, 0(r19)				# 1255
	stw	r30, 20(r19)				# 1255
	stw	r13, 16(r19)				# 1255
	stw	r10, 12(r19)				# 1255
	stw	r7, 8(r19)				# 1255
	stw	r8, 4(r19)				# 1255
	mr	r18, r4				# 1270
	addi	r4, r4, 60				# 1270
	lis	r30, ha16(shadow_check_one_or_matrix.2765)
	addi	r30, r30, lo16(shadow_check_one_or_matrix.2765)
	stw	r30, 0(r18)				# 1270
	stw	r1, 56(r18)				# 1270
	stw	r26, 52(r18)				# 1270
	stw	r24, 48(r18)				# 1270
	stw	r22, 44(r18)				# 1270
	stw	r19, 40(r18)				# 1270
	stw	r5, 36(r18)				# 1270
	stw	r16, 32(r18)				# 1270
	stw	r28, 28(r18)				# 1270
	stw	r6, 24(r18)				# 1270
	stw	r10, 20(r18)				# 1270
	stw	r11, 16(r18)				# 1270
	stw	r7, 12(r18)				# 1270
	stw	r8, 8(r18)				# 1270
	stfs	f0, 4(r18)				# 1270
	mr	r19, r4				# 1304
	addi	r4, r4, 64				# 1304
	lis	r26, ha16(solve_each_element.2768)
	addi	r26, r26, lo16(solve_each_element.2768)
	stw	r26, 0(r19)				# 1304
	lwz	r26, 100(r3)				# 1304
	stw	r26, 60(r19)				# 1304
	lwz	r28, 144(r3)				# 1304
	stw	r28, 56(r19)				# 1304
	stw	r23, 52(r19)				# 1304
	stw	r21, 48(r19)				# 1304
	stw	r22, 44(r19)				# 1304
	stw	r5, 40(r19)				# 1304
	lwz	r30, 96(r3)				# 1304
	stw	r30, 36(r19)				# 1304
	stw	r16, 32(r19)				# 1304
	lwz	r1, 108(r3)				# 1304
	stw	r1, 28(r19)				# 1304
	stw	r29, 24(r19)				# 1304
	stw	r6, 20(r19)				# 1304
	stw	r10, 16(r19)				# 1304
	stw	r7, 12(r19)				# 1304
	stw	r8, 8(r19)				# 1304
	stfs	f0, 4(r19)				# 1304
	mr	r25, r4				# 1345
	addi	r4, r4, 24				# 1345
	lis	r20, ha16(solve_one_or_network.2772)
	addi	r20, r20, lo16(solve_one_or_network.2772)
	stw	r20, 0(r25)				# 1345
	stw	r19, 20(r25)				# 1345
	stw	r13, 16(r25)				# 1345
	stw	r10, 12(r25)				# 1345
	stw	r7, 8(r25)				# 1345
	stw	r8, 4(r25)				# 1345
	mr	r19, r4				# 1355
	addi	r4, r4, 52				# 1355
	lis	r20, ha16(trace_or_matrix.2776)
	addi	r20, r20, lo16(trace_or_matrix.2776)
	stw	r20, 0(r19)				# 1355
	stw	r26, 48(r19)				# 1355
	stw	r28, 44(r19)				# 1355
	stw	r23, 40(r19)				# 1355
	stw	r21, 36(r19)				# 1355
	stw	r22, 32(r19)				# 1355
	stw	r25, 28(r19)				# 1355
	stw	r5, 24(r19)				# 1355
	stw	r6, 20(r19)				# 1355
	stw	r10, 16(r19)				# 1355
	stw	r7, 12(r19)				# 1355
	stw	r8, 8(r19)				# 1355
	stfs	f0, 4(r19)				# 1355
	mr	r20, r4				# 1395
	addi	r4, r4, 64				# 1395
	lis	r21, ha16(solve_each_element_fast.2782)
	addi	r21, r21, lo16(solve_each_element_fast.2782)
	stw	r21, 0(r20)				# 1395
	stw	r26, 60(r20)				# 1395
	lwz	r21, 148(r3)				# 1395
	stw	r21, 56(r20)				# 1395
	stw	r24, 52(r20)				# 1395
	stw	r22, 48(r20)				# 1395
	stw	r5, 44(r20)				# 1395
	stw	r30, 40(r20)				# 1395
	stw	r16, 36(r20)				# 1395
	stw	r1, 32(r20)				# 1395
	stw	r29, 28(r20)				# 1395
	stw	r6, 24(r20)				# 1395
	stw	r10, 20(r20)				# 1395
	stw	r11, 16(r20)				# 1395
	stw	r7, 12(r20)				# 1395
	stw	r8, 8(r20)				# 1395
	stfs	f0, 4(r20)				# 1395
	mr	r23, r4				# 1436
	addi	r4, r4, 24				# 1436
	lis	r25, ha16(solve_one_or_network_fast.2786)
	addi	r25, r25, lo16(solve_one_or_network_fast.2786)
	stw	r25, 0(r23)				# 1436
	stw	r20, 20(r23)				# 1436
	stw	r13, 16(r23)				# 1436
	stw	r10, 12(r23)				# 1436
	stw	r7, 8(r23)				# 1436
	stw	r8, 4(r23)				# 1436
	mr	r13, r4				# 1446
	addi	r4, r4, 48				# 1446
	lis	r20, ha16(trace_or_matrix_fast.2790)
	addi	r20, r20, lo16(trace_or_matrix_fast.2790)
	stw	r20, 0(r13)				# 1446
	stw	r26, 44(r13)				# 1446
	stw	r24, 40(r13)				# 1446
	stw	r22, 36(r13)				# 1446
	stw	r23, 32(r13)				# 1446
	stw	r5, 28(r13)				# 1446
	stw	r6, 24(r13)				# 1446
	stw	r10, 20(r13)				# 1446
	stw	r11, 16(r13)				# 1446
	stw	r7, 12(r13)				# 1446
	stw	r8, 8(r13)				# 1446
	stfs	f0, 4(r13)				# 1446
	mr	r20, r4				# 1505
	addi	r4, r4, 28				# 1505
	lis	r22, ha16(get_nvector_second.2800)
	addi	r22, r22, lo16(get_nvector_second.2800)
	stw	r22, 0(r20)				# 1505
	lwz	r22, 112(r3)				# 1505
	stw	r22, 24(r20)				# 1505
	stw	r16, 20(r20)				# 1505
	stw	r6, 16(r20)				# 1505
	stw	r7, 12(r20)				# 1505
	stw	r8, 8(r20)				# 1505
	stfs	f0, 4(r20)				# 1505
	mr	r23, r4				# 1527
	addi	r4, r4, 32				# 1527
	lis	r24, ha16(get_nvector.2802)
	addi	r24, r24, lo16(get_nvector.2802)
	stw	r24, 0(r23)				# 1527
	stw	r22, 28(r23)				# 1527
	stw	r30, 24(r23)				# 1527
	stw	r16, 20(r23)				# 1527
	stw	r6, 16(r23)				# 1527
	stw	r7, 12(r23)				# 1527
	stw	r8, 8(r23)				# 1527
	stfs	f0, 4(r23)				# 1527
	mr	r24, r4				# 1541
	addi	r4, r4, 32				# 1541
	lis	r25, ha16(utexture.2805)
	addi	r25, r25, lo16(utexture.2805)
	stw	r25, 0(r24)				# 1541
	lwz	r25, 116(r3)				# 1541
	stw	r25, 28(r24)				# 1541
	stw	r6, 24(r24)				# 1541
	stw	r11, 20(r24)				# 1541
	stw	r7, 16(r24)				# 1541
	stw	r8, 12(r24)				# 1541
	lfs	f1, 48(r3)				# 1541
	stfs	f1, 8(r24)				# 1541
	stfs	f0, 4(r24)				# 1541
	mr	r29, r4				# 1634
	addi	r4, r4, 64				# 1634
	lis	r17, ha16(trace_reflections.2812)
	addi	r17, r17, lo16(trace_reflections.2812)
	stw	r17, 0(r29)				# 1634
	stw	r13, 60(r29)				# 1634
	stw	r26, 56(r29)				# 1634
	stw	r25, 52(r29)				# 1634
	stw	r18, 48(r29)				# 1634
	lwz	r17, 124(r3)				# 1634
	stw	r17, 44(r29)				# 1634
	lwz	r11, 200(r3)				# 1634
	stw	r11, 40(r29)				# 1634
	stw	r12, 36(r29)				# 1634
	stw	r22, 32(r29)				# 1634
	stw	r30, 28(r29)				# 1634
	stw	r1, 24(r29)				# 1634
	stw	r6, 20(r29)				# 1634
	stw	r7, 16(r29)				# 1634
	stw	r8, 12(r29)				# 1634
	lfs	f1, 88(r3)				# 1634
	stfs	f1, 8(r29)				# 1634
	stfs	f0, 4(r29)				# 1634
	mr	r11, r4				# 1661
	addi	r4, r4, 112				# 1661
	stw	r23, 212(r3)				# 1661
	lis	r23, ha16(trace_ray.2817)
	addi	r23, r23, lo16(trace_ray.2817)
	stw	r23, 0(r11)				# 1661
	stw	r24, 108(r11)				# 1661
	stw	r29, 104(r11)				# 1661
	stw	r19, 100(r11)				# 1661
	stw	r26, 96(r11)				# 1661
	stw	r25, 92(r11)				# 1661
	stw	r21, 88(r11)				# 1661
	stw	r28, 84(r11)				# 1661
	stw	r18, 80(r11)				# 1661
	stw	r27, 76(r11)				# 1661
	stw	r17, 72(r11)				# 1661
	stw	r12, 68(r11)				# 1661
	stw	r5, 64(r11)				# 1661
	stw	r22, 60(r11)				# 1661
	stw	r2, 56(r11)				# 1661
	stw	r9, 52(r11)				# 1661
	stw	r14, 48(r11)				# 1661
	stw	r30, 44(r11)				# 1661
	stw	r16, 40(r11)				# 1661
	stw	r1, 36(r11)				# 1661
	stw	r20, 32(r11)				# 1661
	stw	r15, 28(r11)				# 1661
	stw	r6, 24(r11)				# 1661
	stw	r10, 20(r11)				# 1661
	stw	r7, 16(r11)				# 1661
	stw	r8, 12(r11)				# 1661
	stfs	f1, 8(r11)				# 1661
	stfs	f0, 4(r11)				# 1661
	mr	r10, r4				# 1769
	addi	r4, r4, 76				# 1769
	lis	r15, ha16(iter_trace_diffuse_rays.2826)
	addi	r15, r15, lo16(iter_trace_diffuse_rays.2826)
	stw	r15, 0(r10)				# 1769
	stw	r24, 72(r10)				# 1769
	stw	r13, 68(r10)				# 1769
	stw	r26, 64(r10)				# 1769
	stw	r25, 60(r10)				# 1769
	stw	r18, 56(r10)				# 1769
	stw	r12, 52(r10)				# 1769
	stw	r5, 48(r10)				# 1769
	stw	r22, 44(r10)				# 1769
	stw	r14, 40(r10)				# 1769
	stw	r16, 36(r10)				# 1769
	stw	r1, 32(r10)				# 1769
	lwz	r12, 212(r3)				# 1769
	stw	r12, 28(r10)				# 1769
	lwz	r12, 120(r3)				# 1769
	stw	r12, 24(r10)				# 1769
	stw	r6, 20(r10)				# 1769
	stw	r7, 16(r10)				# 1769
	stw	r8, 12(r10)				# 1769
	stfs	f1, 8(r10)				# 1769
	stfs	f0, 4(r10)				# 1769
	mr	r13, r4				# 1855
	addi	r4, r4, 48				# 1855
	lis	r15, ha16(do_without_neighbors.2848)
	addi	r15, r15, lo16(do_without_neighbors.2848)
	stw	r15, 0(r13)				# 1855
	stw	r21, 44(r13)				# 1855
	stw	r27, 40(r13)				# 1855
	stw	r17, 36(r13)				# 1855
	stw	r9, 32(r13)				# 1855
	stw	r10, 28(r13)				# 1855
	lwz	r15, 176(r3)				# 1855
	stw	r15, 24(r13)				# 1855
	stw	r12, 20(r13)				# 1855
	stw	r6, 16(r13)				# 1855
	lwz	r16, 32(r3)				# 1855
	stw	r16, 12(r13)				# 1855
	stw	r7, 8(r13)				# 1855
	stw	r8, 4(r13)				# 1855
	mr	r18, r4				# 1904
	addi	r4, r4, 28				# 1904
	lis	r19, ha16(try_exploit_neighbors.2864)
	addi	r19, r19, lo16(try_exploit_neighbors.2864)
	stw	r19, 0(r18)				# 1904
	stw	r17, 24(r18)				# 1904
	stw	r13, 20(r18)				# 1904
	stw	r12, 16(r18)				# 1904
	stw	r6, 12(r18)				# 1904
	stw	r7, 8(r18)				# 1904
	stw	r8, 4(r18)				# 1904
	mr	r19, r4				# 1963
	addi	r4, r4, 44				# 1963
	lis	r20, ha16(pretrace_diffuse_rays.2877)
	addi	r20, r20, lo16(pretrace_diffuse_rays.2877)
	stw	r20, 0(r19)				# 1963
	stw	r21, 40(r19)				# 1963
	stw	r27, 36(r19)				# 1963
	stw	r9, 32(r19)				# 1963
	stw	r10, 28(r19)				# 1963
	stw	r15, 24(r19)				# 1963
	stw	r12, 20(r19)				# 1963
	stw	r6, 16(r19)				# 1963
	stw	r7, 12(r19)				# 1963
	stw	r8, 8(r19)				# 1963
	stfs	f0, 4(r19)				# 1963
	mr	r10, r4				# 1992
	addi	r4, r4, 60				# 1992
	lis	r12, ha16(pretrace_pixels.2880)
	addi	r12, r12, lo16(pretrace_pixels.2880)
	stw	r12, 0(r10)				# 1992
	lwz	r12, 40(r3)				# 1992
	stw	r12, 56(r10)				# 1992
	stw	r11, 52(r10)				# 1992
	stw	r28, 48(r10)				# 1992
	lwz	r11, 152(r3)				# 1992
	stw	r11, 44(r10)				# 1992
	lwz	r11, 140(r3)				# 1992
	stw	r11, 40(r10)				# 1992
	stw	r17, 36(r10)				# 1992
	lwz	r12, 164(r3)				# 1992
	stw	r12, 32(r10)				# 1992
	stw	r19, 28(r10)				# 1992
	lwz	r12, 136(r3)				# 1992
	stw	r12, 24(r10)				# 1992
	lwz	r19, 172(r3)				# 1992
	stw	r19, 20(r10)				# 1992
	stw	r6, 16(r10)				# 1992
	stw	r7, 12(r10)				# 1992
	stw	r8, 8(r10)				# 1992
	stfs	f0, 4(r10)				# 1992
	mr	r20, r4				# 2031
	addi	r4, r4, 32				# 2031
	lis	r21, ha16(scan_pixel.2891)
	addi	r21, r21, lo16(scan_pixel.2891)
	stw	r21, 0(r20)				# 2031
	stw	r18, 28(r20)				# 2031
	stw	r17, 24(r20)				# 2031
	lwz	r17, 132(r3)				# 2031
	stw	r17, 20(r20)				# 2031
	stw	r13, 16(r20)				# 2031
	stw	r6, 12(r20)				# 2031
	stw	r7, 8(r20)				# 2031
	stw	r8, 4(r20)				# 2031
	mr	r13, r4				# 2051
	addi	r4, r4, 48				# 2051
	lis	r18, ha16(scan_line.2897)
	addi	r18, r18, lo16(scan_line.2897)
	stw	r18, 0(r13)				# 2051
	lwz	r18, 160(r3)				# 2051
	stw	r18, 44(r13)				# 2051
	lwz	r21, 156(r3)				# 2051
	stw	r21, 40(r13)				# 2051
	stw	r20, 36(r13)				# 2051
	stw	r11, 32(r13)				# 2051
	stw	r10, 28(r13)				# 2051
	stw	r17, 24(r13)				# 2051
	stw	r12, 20(r13)				# 2051
	stw	r19, 16(r13)				# 2051
	stw	r6, 12(r13)				# 2051
	stw	r7, 8(r13)				# 2051
	stw	r8, 4(r13)				# 2051
	mr	r20, r4				# 2092
	addi	r4, r4, 28				# 2092
	lis	r22, ha16(init_line_elements.2907)
	addi	r22, r22, lo16(init_line_elements.2907)
	stw	r22, 0(r20)				# 2092
	stw	r19, 24(r20)				# 2092
	stw	r6, 20(r20)				# 2092
	stw	r16, 16(r20)				# 2092
	stw	r7, 12(r20)				# 2092
	stw	r8, 8(r20)				# 2092
	stfs	f0, 4(r20)				# 2092
	mr	r22, r4				# 2124
	addi	r4, r4, 24				# 2124
	lis	r23, ha16(calc_dirvec.2917)
	addi	r23, r23, lo16(calc_dirvec.2917)
	stw	r23, 0(r22)				# 2124
	stw	r15, 20(r22)				# 2124
	stw	r19, 16(r22)				# 2124
	stw	r6, 12(r22)				# 2124
	stw	r7, 8(r22)				# 2124
	stw	r8, 4(r22)				# 2124
	mr	r23, r4				# 2145
	addi	r4, r4, 28				# 2145
	lis	r24, ha16(calc_dirvecs.2925)
	addi	r24, r24, lo16(calc_dirvecs.2925)
	stw	r24, 0(r23)				# 2145
	stw	r22, 24(r23)				# 2145
	stw	r19, 20(r23)				# 2145
	stw	r6, 16(r23)				# 2145
	stw	r7, 12(r23)				# 2145
	stw	r8, 8(r23)				# 2145
	stfs	f0, 4(r23)				# 2145
	mr	r22, r4				# 2159
	addi	r4, r4, 24				# 2159
	lis	r24, ha16(calc_dirvec_rows.2930)
	addi	r24, r24, lo16(calc_dirvec_rows.2930)
	stw	r24, 0(r22)				# 2159
	stw	r23, 20(r22)				# 2159
	stw	r19, 16(r22)				# 2159
	stw	r6, 12(r22)				# 2159
	stw	r7, 8(r22)				# 2159
	stw	r8, 4(r22)				# 2159
	mr	r23, r4				# 2176
	addi	r4, r4, 24				# 2176
	lis	r24, ha16(create_dirvec_elements.2936)
	addi	r24, r24, lo16(create_dirvec_elements.2936)
	stw	r24, 0(r23)				# 2176
	stw	r9, 20(r23)				# 2176
	stw	r16, 16(r23)				# 2176
	stw	r7, 12(r23)				# 2176
	stw	r8, 8(r23)				# 2176
	stfs	f0, 4(r23)				# 2176
	mr	r24, r4				# 2183
	addi	r4, r4, 32				# 2183
	lis	r25, ha16(create_dirvecs.2939)
	addi	r25, r25, lo16(create_dirvecs.2939)
	stw	r25, 0(r24)				# 2183
	stw	r9, 28(r24)				# 2183
	stw	r15, 24(r24)				# 2183
	stw	r23, 20(r24)				# 2183
	stw	r16, 16(r24)				# 2183
	stw	r7, 12(r24)				# 2183
	stw	r8, 8(r24)				# 2183
	stfs	f0, 4(r24)				# 2183
	mr	r23, r4				# 2193
	addi	r4, r4, 20				# 2193
	lis	r25, ha16(init_dirvec_constants.2941)
	addi	r25, r25, lo16(init_dirvec_constants.2941)
	stw	r25, 0(r23)				# 2193
	stw	r9, 16(r23)				# 2193
	lwz	r25, 208(r3)				# 2193
	stw	r25, 12(r23)				# 2193
	stw	r7, 8(r23)				# 2193
	stw	r8, 4(r23)				# 2193
	mr	r26, r4				# 2200
	addi	r4, r4, 20				# 2200
	lis	r27, ha16(init_vecset_constants.2944)
	addi	r27, r27, lo16(init_vecset_constants.2944)
	stw	r27, 0(r26)				# 2200
	stw	r23, 16(r26)				# 2200
	stw	r15, 12(r26)				# 2200
	stw	r7, 8(r26)				# 2200
	stw	r8, 4(r26)				# 2200
	mr	r15, r4				# 2254
	addi	r4, r4, 48				# 2254
	lis	r23, ha16(setup_reflections.2961)
	addi	r23, r23, lo16(setup_reflections.2961)
	stw	r23, 0(r15)				# 2254
	lwz	r23, 200(r3)				# 2254
	stw	r23, 44(r15)				# 2254
	stw	r5, 40(r15)				# 2254
	stw	r2, 36(r15)				# 2254
	stw	r9, 32(r15)				# 2254
	stw	r14, 28(r15)				# 2254
	stw	r25, 24(r15)				# 2254
	stw	r6, 20(r15)				# 2254
	stw	r16, 16(r15)				# 2254
	stw	r7, 12(r15)				# 2254
	stw	r8, 8(r15)				# 2254
	stfs	f0, 4(r15)				# 2254
	addi	r2, 0, 512
	stw	r2, 0(r17)				# 2276
	stw	r2, 4(r17)				# 2277
	addi	r5, 0, 256
	stw	r5, 0(r12)				# 2278
	stw	r5, 4(r12)				# 2279
	lis	r31, ha16(l.12835)
	addi	r31, r31, lo16(l.12835)
	lfs	f1, 0(r31)				# 2280
	stw	r13, 216(r3)				# 2280
	stw	r10, 220(r3)				# 2280
	stw	r15, 224(r3)				# 2280
	stw	r26, 228(r3)				# 2280
	stw	r22, 232(r3)				# 2280
	stw	r24, 236(r3)				# 2280
	stw	r20, 240(r3)				# 2280
	stfs	f1, 248(r3)				# 2280
	mfspr	r31, 8				# 2280
	stw	r31, 256(r3)				# 2280
	addi	r3, r3, 260				# 2280
	bl	min_caml_float_of_int				# 2280
	addi	r3, r3, -260				# 2280
	lwz	r31, 256(r3)				# 2280
	mtspr	8, r31				# 2280
	lfs	f1, 248(r3)				# 2280
	fdiv	f0, f1, f0				# 2280
	lwz	r2, 140(r3)				# 2280
	stfs	f0, 0(r2)				# 2280
	lwz	r5, 132(r3)				# 2102
	lwz	r6, 0(r5)				# 2102
	lfs	f0, 16(r3)				# 2080
	lwz	r7, 32(r3)				# 2080
	stw	r6, 256(r3)				# 2080
	mfspr	r31, 8				# 2080
	mr	r2, r7				# 2080
	stw	r31, 260(r3)				# 2080
	addi	r3, r3, 264				# 2080
	bl	min_caml_create_float_array				# 2080
	addi	r3, r3, -264				# 2080
	lwz	r31, 260(r3)				# 2080
	mtspr	8, r31				# 2080
	lfs	f0, 16(r3)				# 2068
	lwz	r5, 32(r3)				# 2068
	stw	r2, 260(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 264(r3)				# 2068
	addi	r3, r3, 268				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -268				# 2068
	lwz	r31, 264(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 264(r3)				# 2069
	addi	r3, r3, 268				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -268				# 2069
	lwz	r31, 264(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 264(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 268(r3)				# 2070
	addi	r3, r3, 272				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -272				# 2070
	lwz	r31, 268(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 264(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 268(r3)				# 2071
	addi	r3, r3, 272				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -272				# 2071
	lwz	r31, 268(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 264(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 268(r3)				# 2072
	addi	r3, r3, 272				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -272				# 2072
	lwz	r31, 268(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 264(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	addi	r2, 0, 4
	lfs	f0, 16(r3)				# 2073
	lwz	r6, 32(r3)				# 2073
	stw	r2, 268(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r6				# 2073
	stw	r31, 272(r3)				# 2073
	addi	r3, r3, 276				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -276				# 2073
	lwz	r31, 272(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 264(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, 172(r3)				# 2082
	lwz	r6, 4(r3)				# 2082
	mfspr	r31, 8				# 2082
	mr	r5, r6				# 2082
	stw	r31, 272(r3)				# 2082
	addi	r3, r3, 276				# 2082
	bl	min_caml_create_array				# 2082
	addi	r3, r3, -276				# 2082
	lwz	r31, 272(r3)				# 2082
	mtspr	8, r31				# 2082
	lwz	r5, 172(r3)				# 2083
	lwz	r6, 4(r3)				# 2083
	stw	r2, 272(r3)				# 2083
	mfspr	r31, 8				# 2083
	mr	r2, r5				# 2083
	mr	r5, r6				# 2083
	stw	r31, 276(r3)				# 2083
	addi	r3, r3, 280				# 2083
	bl	min_caml_create_array				# 2083
	addi	r3, r3, -280				# 2083
	lwz	r31, 276(r3)				# 2083
	mtspr	8, r31				# 2083
	lfs	f0, 16(r3)				# 2068
	lwz	r5, 32(r3)				# 2068
	stw	r2, 276(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 280(r3)				# 2068
	addi	r3, r3, 284				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -284				# 2068
	lwz	r31, 280(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 280(r3)				# 2069
	addi	r3, r3, 284				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -284				# 2069
	lwz	r31, 280(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 280(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 284(r3)				# 2070
	addi	r3, r3, 288				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -288				# 2070
	lwz	r31, 284(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 280(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 284(r3)				# 2071
	addi	r3, r3, 288				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -288				# 2071
	lwz	r31, 284(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 280(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 284(r3)				# 2072
	addi	r3, r3, 288				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -288				# 2072
	lwz	r31, 284(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 280(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, 16(r3)				# 2073
	lwz	r2, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, 284(r3)				# 2073
	addi	r3, r3, 288				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -288				# 2073
	lwz	r31, 284(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 280(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lfs	f0, 16(r3)				# 2068
	lwz	r2, 32(r3)				# 2068
	mfspr	r31, 8				# 2068
	stw	r31, 284(r3)				# 2068
	addi	r3, r3, 288				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -288				# 2068
	lwz	r31, 284(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 284(r3)				# 2069
	addi	r3, r3, 288				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -288				# 2069
	lwz	r31, 284(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 284(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 288(r3)				# 2070
	addi	r3, r3, 292				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -292				# 2070
	lwz	r31, 288(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 284(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 288(r3)				# 2071
	addi	r3, r3, 292				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -292				# 2071
	lwz	r31, 288(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 284(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 288(r3)				# 2072
	addi	r3, r3, 292				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -292				# 2072
	lwz	r31, 288(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 284(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, 16(r3)				# 2073
	lwz	r2, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, 288(r3)				# 2073
	addi	r3, r3, 292				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -292				# 2073
	lwz	r31, 288(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 284(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, 0(r3)				# 2086
	lwz	r6, 4(r3)				# 2086
	mfspr	r31, 8				# 2086
	mr	r5, r6				# 2086
	stw	r31, 288(r3)				# 2086
	addi	r3, r3, 292				# 2086
	bl	min_caml_create_array				# 2086
	addi	r3, r3, -292				# 2086
	lwz	r31, 288(r3)				# 2086
	mtspr	8, r31				# 2086
	lfs	f0, 16(r3)				# 2068
	lwz	r5, 32(r3)				# 2068
	stw	r2, 288(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 292(r3)				# 2068
	addi	r3, r3, 296				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -296				# 2068
	lwz	r31, 292(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 292(r3)				# 2069
	addi	r3, r3, 296				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -296				# 2069
	lwz	r31, 292(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 292(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 296(r3)				# 2070
	addi	r3, r3, 300				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -300				# 2070
	lwz	r31, 296(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 292(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 296(r3)				# 2071
	addi	r3, r3, 300				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -300				# 2071
	lwz	r31, 296(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 292(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 296(r3)				# 2072
	addi	r3, r3, 300				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -300				# 2072
	lwz	r31, 296(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 292(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, 16(r3)				# 2073
	lwz	r2, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, 296(r3)				# 2073
	addi	r3, r3, 300				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -300				# 2073
	lwz	r31, 296(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 292(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	mr	r2, r4				# 2088
	addi	r4, r4, 32				# 2088
	stw	r5, 28(r2)				# 2088
	lwz	r5, 288(r3)				# 2088
	stw	r5, 24(r2)				# 2088
	lwz	r5, 284(r3)				# 2088
	stw	r5, 20(r2)				# 2088
	lwz	r5, 280(r3)				# 2088
	stw	r5, 16(r2)				# 2088
	lwz	r5, 276(r3)				# 2088
	stw	r5, 12(r2)				# 2088
	lwz	r5, 272(r3)				# 2088
	stw	r5, 8(r2)				# 2088
	lwz	r5, 264(r3)				# 2088
	stw	r5, 4(r2)				# 2088
	lwz	r5, 260(r3)				# 2088
	stw	r5, 0(r2)				# 2088
	mr	r5, r2				# 2088
	lwz	r2, 256(r3)				# 2102
	mfspr	r31, 8				# 2102
	stw	r31, 296(r3)				# 2102
	addi	r3, r3, 300				# 2102
	bl	min_caml_create_array				# 2102
	addi	r3, r3, -300				# 2102
	lwz	r31, 296(r3)				# 2102
	mtspr	8, r31				# 2102
	lwz	r5, 132(r3)				# 2103
	lwz	r6, 0(r5)				# 2103
	addi	r6, r6, -2				# 2103
	lwz	r1, 240(r3)				# 2103
	mfspr	r31, 8				# 2103
	mr	r5, r6				# 2103
	stw	r31, 296(r3)				# 2103
	addi	r3, r3, 300				# 2103
	lwz	r31, 0(r1)				# 2103
	mtspr	9, r31				# 2103
	bctr				# 2103
	addi	r3, r3, -300				# 2103
	lwz	r31, 296(r3)				# 2103
	mtspr	8, r31				# 2103
	lwz	r5, 132(r3)				# 2102
	lwz	r6, 0(r5)				# 2102
	lfs	f0, 16(r3)				# 2080
	lwz	r7, 32(r3)				# 2080
	stw	r2, 296(r3)				# 2080
	stw	r6, 300(r3)				# 2080
	mfspr	r31, 8				# 2080
	mr	r2, r7				# 2080
	stw	r31, 304(r3)				# 2080
	addi	r3, r3, 308				# 2080
	bl	min_caml_create_float_array				# 2080
	addi	r3, r3, -308				# 2080
	lwz	r31, 304(r3)				# 2080
	mtspr	8, r31				# 2080
	lfs	f0, 16(r3)				# 2068
	lwz	r5, 32(r3)				# 2068
	stw	r2, 304(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 308(r3)				# 2068
	addi	r3, r3, 312				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -312				# 2068
	lwz	r31, 308(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 308(r3)				# 2069
	addi	r3, r3, 312				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -312				# 2069
	lwz	r31, 308(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 308(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 312(r3)				# 2070
	addi	r3, r3, 316				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -316				# 2070
	lwz	r31, 312(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 308(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 312(r3)				# 2071
	addi	r3, r3, 316				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -316				# 2071
	lwz	r31, 312(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 308(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 312(r3)				# 2072
	addi	r3, r3, 316				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -316				# 2072
	lwz	r31, 312(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 308(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, 16(r3)				# 2073
	lwz	r2, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, 312(r3)				# 2073
	addi	r3, r3, 316				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -316				# 2073
	lwz	r31, 312(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 308(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, 172(r3)				# 2082
	lwz	r6, 4(r3)				# 2082
	mfspr	r31, 8				# 2082
	mr	r5, r6				# 2082
	stw	r31, 312(r3)				# 2082
	addi	r3, r3, 316				# 2082
	bl	min_caml_create_array				# 2082
	addi	r3, r3, -316				# 2082
	lwz	r31, 312(r3)				# 2082
	mtspr	8, r31				# 2082
	lwz	r5, 172(r3)				# 2083
	lwz	r6, 4(r3)				# 2083
	stw	r2, 312(r3)				# 2083
	mfspr	r31, 8				# 2083
	mr	r2, r5				# 2083
	mr	r5, r6				# 2083
	stw	r31, 316(r3)				# 2083
	addi	r3, r3, 320				# 2083
	bl	min_caml_create_array				# 2083
	addi	r3, r3, -320				# 2083
	lwz	r31, 316(r3)				# 2083
	mtspr	8, r31				# 2083
	lfs	f0, 16(r3)				# 2068
	lwz	r5, 32(r3)				# 2068
	stw	r2, 316(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 320(r3)				# 2068
	addi	r3, r3, 324				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -324				# 2068
	lwz	r31, 320(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 320(r3)				# 2069
	addi	r3, r3, 324				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -324				# 2069
	lwz	r31, 320(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 320(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 324(r3)				# 2070
	addi	r3, r3, 328				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -328				# 2070
	lwz	r31, 324(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 320(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 324(r3)				# 2071
	addi	r3, r3, 328				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -328				# 2071
	lwz	r31, 324(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 320(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 324(r3)				# 2072
	addi	r3, r3, 328				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -328				# 2072
	lwz	r31, 324(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 320(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, 16(r3)				# 2073
	lwz	r2, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, 324(r3)				# 2073
	addi	r3, r3, 328				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -328				# 2073
	lwz	r31, 324(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 320(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lfs	f0, 16(r3)				# 2068
	lwz	r2, 32(r3)				# 2068
	mfspr	r31, 8				# 2068
	stw	r31, 324(r3)				# 2068
	addi	r3, r3, 328				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -328				# 2068
	lwz	r31, 324(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 324(r3)				# 2069
	addi	r3, r3, 328				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -328				# 2069
	lwz	r31, 324(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 324(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 328(r3)				# 2070
	addi	r3, r3, 332				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -332				# 2070
	lwz	r31, 328(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 324(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 328(r3)				# 2071
	addi	r3, r3, 332				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -332				# 2071
	lwz	r31, 328(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 324(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 328(r3)				# 2072
	addi	r3, r3, 332				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -332				# 2072
	lwz	r31, 328(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 324(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, 16(r3)				# 2073
	lwz	r2, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, 328(r3)				# 2073
	addi	r3, r3, 332				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -332				# 2073
	lwz	r31, 328(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 324(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, 0(r3)				# 2086
	lwz	r6, 4(r3)				# 2086
	mfspr	r31, 8				# 2086
	mr	r5, r6				# 2086
	stw	r31, 328(r3)				# 2086
	addi	r3, r3, 332				# 2086
	bl	min_caml_create_array				# 2086
	addi	r3, r3, -332				# 2086
	lwz	r31, 328(r3)				# 2086
	mtspr	8, r31				# 2086
	lfs	f0, 16(r3)				# 2068
	lwz	r5, 32(r3)				# 2068
	stw	r2, 328(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 332(r3)				# 2068
	addi	r3, r3, 336				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -336				# 2068
	lwz	r31, 332(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 332(r3)				# 2069
	addi	r3, r3, 336				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -336				# 2069
	lwz	r31, 332(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 332(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 336(r3)				# 2070
	addi	r3, r3, 340				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -340				# 2070
	lwz	r31, 336(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 332(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 336(r3)				# 2071
	addi	r3, r3, 340				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -340				# 2071
	lwz	r31, 336(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 332(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 336(r3)				# 2072
	addi	r3, r3, 340				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -340				# 2072
	lwz	r31, 336(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 332(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, 16(r3)				# 2073
	lwz	r2, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, 336(r3)				# 2073
	addi	r3, r3, 340				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -340				# 2073
	lwz	r31, 336(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 332(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	mr	r2, r4				# 2088
	addi	r4, r4, 32				# 2088
	stw	r5, 28(r2)				# 2088
	lwz	r5, 328(r3)				# 2088
	stw	r5, 24(r2)				# 2088
	lwz	r5, 324(r3)				# 2088
	stw	r5, 20(r2)				# 2088
	lwz	r5, 320(r3)				# 2088
	stw	r5, 16(r2)				# 2088
	lwz	r5, 316(r3)				# 2088
	stw	r5, 12(r2)				# 2088
	lwz	r5, 312(r3)				# 2088
	stw	r5, 8(r2)				# 2088
	lwz	r5, 308(r3)				# 2088
	stw	r5, 4(r2)				# 2088
	lwz	r5, 304(r3)				# 2088
	stw	r5, 0(r2)				# 2088
	mr	r5, r2				# 2088
	lwz	r2, 300(r3)				# 2102
	mfspr	r31, 8				# 2102
	stw	r31, 336(r3)				# 2102
	addi	r3, r3, 340				# 2102
	bl	min_caml_create_array				# 2102
	addi	r3, r3, -340				# 2102
	lwz	r31, 336(r3)				# 2102
	mtspr	8, r31				# 2102
	lwz	r5, 132(r3)				# 2103
	lwz	r6, 0(r5)				# 2103
	addi	r6, r6, -2				# 2103
	lwz	r1, 240(r3)				# 2103
	mfspr	r31, 8				# 2103
	mr	r5, r6				# 2103
	stw	r31, 336(r3)				# 2103
	addi	r3, r3, 340				# 2103
	lwz	r31, 0(r1)				# 2103
	mtspr	9, r31				# 2103
	bctr				# 2103
	addi	r3, r3, -340				# 2103
	lwz	r31, 336(r3)				# 2103
	mtspr	8, r31				# 2103
	lwz	r5, 132(r3)				# 2102
	lwz	r6, 0(r5)				# 2102
	lfs	f0, 16(r3)				# 2080
	lwz	r7, 32(r3)				# 2080
	stw	r2, 336(r3)				# 2080
	stw	r6, 340(r3)				# 2080
	mfspr	r31, 8				# 2080
	mr	r2, r7				# 2080
	stw	r31, 344(r3)				# 2080
	addi	r3, r3, 348				# 2080
	bl	min_caml_create_float_array				# 2080
	addi	r3, r3, -348				# 2080
	lwz	r31, 344(r3)				# 2080
	mtspr	8, r31				# 2080
	lfs	f0, 16(r3)				# 2068
	lwz	r5, 32(r3)				# 2068
	stw	r2, 344(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 348(r3)				# 2068
	addi	r3, r3, 352				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -352				# 2068
	lwz	r31, 348(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 348(r3)				# 2069
	addi	r3, r3, 352				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -352				# 2069
	lwz	r31, 348(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 348(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 352(r3)				# 2070
	addi	r3, r3, 356				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -356				# 2070
	lwz	r31, 352(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 348(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 352(r3)				# 2071
	addi	r3, r3, 356				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -356				# 2071
	lwz	r31, 352(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 348(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 352(r3)				# 2072
	addi	r3, r3, 356				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -356				# 2072
	lwz	r31, 352(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 348(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, 16(r3)				# 2073
	lwz	r2, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, 352(r3)				# 2073
	addi	r3, r3, 356				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -356				# 2073
	lwz	r31, 352(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 348(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, 172(r3)				# 2082
	lwz	r6, 4(r3)				# 2082
	mfspr	r31, 8				# 2082
	mr	r5, r6				# 2082
	stw	r31, 352(r3)				# 2082
	addi	r3, r3, 356				# 2082
	bl	min_caml_create_array				# 2082
	addi	r3, r3, -356				# 2082
	lwz	r31, 352(r3)				# 2082
	mtspr	8, r31				# 2082
	lwz	r5, 172(r3)				# 2083
	lwz	r6, 4(r3)				# 2083
	stw	r2, 352(r3)				# 2083
	mfspr	r31, 8				# 2083
	mr	r2, r5				# 2083
	mr	r5, r6				# 2083
	stw	r31, 356(r3)				# 2083
	addi	r3, r3, 360				# 2083
	bl	min_caml_create_array				# 2083
	addi	r3, r3, -360				# 2083
	lwz	r31, 356(r3)				# 2083
	mtspr	8, r31				# 2083
	lfs	f0, 16(r3)				# 2068
	lwz	r5, 32(r3)				# 2068
	stw	r2, 356(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 360(r3)				# 2068
	addi	r3, r3, 364				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -364				# 2068
	lwz	r31, 360(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 360(r3)				# 2069
	addi	r3, r3, 364				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -364				# 2069
	lwz	r31, 360(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 360(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 364(r3)				# 2070
	addi	r3, r3, 368				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -368				# 2070
	lwz	r31, 364(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 360(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 364(r3)				# 2071
	addi	r3, r3, 368				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -368				# 2071
	lwz	r31, 364(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 360(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 364(r3)				# 2072
	addi	r3, r3, 368				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -368				# 2072
	lwz	r31, 364(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 360(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, 16(r3)				# 2073
	lwz	r2, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, 364(r3)				# 2073
	addi	r3, r3, 368				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -368				# 2073
	lwz	r31, 364(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 360(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lfs	f0, 16(r3)				# 2068
	lwz	r2, 32(r3)				# 2068
	mfspr	r31, 8				# 2068
	stw	r31, 364(r3)				# 2068
	addi	r3, r3, 368				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -368				# 2068
	lwz	r31, 364(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 364(r3)				# 2069
	addi	r3, r3, 368				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -368				# 2069
	lwz	r31, 364(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 364(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 368(r3)				# 2070
	addi	r3, r3, 372				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -372				# 2070
	lwz	r31, 368(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 364(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 368(r3)				# 2071
	addi	r3, r3, 372				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -372				# 2071
	lwz	r31, 368(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 364(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 368(r3)				# 2072
	addi	r3, r3, 372				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -372				# 2072
	lwz	r31, 368(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 364(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, 16(r3)				# 2073
	lwz	r2, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, 368(r3)				# 2073
	addi	r3, r3, 372				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -372				# 2073
	lwz	r31, 368(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 364(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, 0(r3)				# 2086
	lwz	r6, 4(r3)				# 2086
	mfspr	r31, 8				# 2086
	mr	r5, r6				# 2086
	stw	r31, 368(r3)				# 2086
	addi	r3, r3, 372				# 2086
	bl	min_caml_create_array				# 2086
	addi	r3, r3, -372				# 2086
	lwz	r31, 368(r3)				# 2086
	mtspr	8, r31				# 2086
	lfs	f0, 16(r3)				# 2068
	lwz	r5, 32(r3)				# 2068
	stw	r2, 368(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, 372(r3)				# 2068
	addi	r3, r3, 376				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, -376				# 2068
	lwz	r31, 372(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, 172(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, 372(r3)				# 2069
	addi	r3, r3, 376				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, -376				# 2069
	lwz	r31, 372(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, 16(r3)				# 2070
	lwz	r5, 32(r3)				# 2070
	stw	r2, 372(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, 376(r3)				# 2070
	addi	r3, r3, 380				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, -380				# 2070
	lwz	r31, 376(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 372(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, 16(r3)				# 2071
	lwz	r2, 32(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, 376(r3)				# 2071
	addi	r3, r3, 380				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, -380				# 2071
	lwz	r31, 376(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, 372(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, 16(r3)				# 2072
	lwz	r2, 32(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, 376(r3)				# 2072
	addi	r3, r3, 380				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, -380				# 2072
	lwz	r31, 376(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, 372(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, 16(r3)				# 2073
	lwz	r2, 32(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, 376(r3)				# 2073
	addi	r3, r3, 380				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, -380				# 2073
	lwz	r31, 376(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, 372(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	mr	r2, r4				# 2088
	addi	r4, r4, 32				# 2088
	stw	r5, 28(r2)				# 2088
	lwz	r5, 368(r3)				# 2088
	stw	r5, 24(r2)				# 2088
	lwz	r5, 364(r3)				# 2088
	stw	r5, 20(r2)				# 2088
	lwz	r5, 360(r3)				# 2088
	stw	r5, 16(r2)				# 2088
	lwz	r5, 356(r3)				# 2088
	stw	r5, 12(r2)				# 2088
	lwz	r5, 352(r3)				# 2088
	stw	r5, 8(r2)				# 2088
	lwz	r5, 348(r3)				# 2088
	stw	r5, 4(r2)				# 2088
	lwz	r5, 344(r3)				# 2088
	stw	r5, 0(r2)				# 2088
	mr	r5, r2				# 2088
	lwz	r2, 340(r3)				# 2102
	mfspr	r31, 8				# 2102
	stw	r31, 376(r3)				# 2102
	addi	r3, r3, 380				# 2102
	bl	min_caml_create_array				# 2102
	addi	r3, r3, -380				# 2102
	lwz	r31, 376(r3)				# 2102
	mtspr	8, r31				# 2102
	lwz	r5, 132(r3)				# 2103
	lwz	r6, 0(r5)				# 2103
	addi	r6, r6, -2				# 2103
	lwz	r1, 240(r3)				# 2103
	mfspr	r31, 8				# 2103
	mr	r5, r6				# 2103
	stw	r31, 376(r3)				# 2103
	addi	r3, r3, 380				# 2103
	lwz	r31, 0(r1)				# 2103
	mtspr	9, r31				# 2103
	bctr				# 2103
	addi	r3, r3, -380				# 2103
	lwz	r31, 376(r3)				# 2103
	mtspr	8, r31				# 2103
	lwz	r1, 204(r3)				# 2284
	stw	r2, 376(r3)				# 2284
	mfspr	r31, 8				# 2284
	stw	r31, 380(r3)				# 2284
	addi	r3, r3, 384				# 2284
	lwz	r31, 0(r1)				# 2284
	mtspr	9, r31				# 2284
	bctr				# 2284
	addi	r3, r3, -384				# 2284
	lwz	r31, 380(r3)				# 2284
	mtspr	8, r31				# 2284
	addi	r2, 0, 80
	mfspr	r31, 8				# 1931
	stw	r31, 380(r3)				# 1931
	addi	r3, r3, 384				# 1931
	bl	min_caml_print_char				# 1931
	addi	r3, r3, -384				# 1931
	lwz	r31, 380(r3)				# 1931
	mtspr	8, r31				# 1931
	addi	r2, 0, 51
	mfspr	r31, 8				# 1932
	stw	r31, 380(r3)				# 1932
	addi	r3, r3, 384				# 1932
	bl	min_caml_print_char				# 1932
	addi	r3, r3, -384				# 1932
	lwz	r31, 380(r3)				# 1932
	mtspr	8, r31				# 1932
	addi	r2, 0, 10
	stw	r2, 380(r3)				# 1933
	mfspr	r31, 8				# 1933
	stw	r31, 384(r3)				# 1933
	addi	r3, r3, 388				# 1933
	bl	min_caml_print_char				# 1933
	addi	r3, r3, -388				# 1933
	lwz	r31, 384(r3)				# 1933
	mtspr	8, r31				# 1933
	lwz	r2, 132(r3)				# 1934
	lwz	r5, 0(r2)				# 1934
	mfspr	r31, 8				# 1934
	mr	r2, r5				# 1934
	stw	r31, 384(r3)				# 1934
	addi	r3, r3, 388				# 1934
	bl	min_caml_print_int				# 1934
	addi	r3, r3, -388				# 1934
	lwz	r31, 384(r3)				# 1934
	mtspr	8, r31				# 1934
	addi	r2, 0, 32
	stw	r2, 384(r3)				# 1935
	mfspr	r31, 8				# 1935
	stw	r31, 388(r3)				# 1935
	addi	r3, r3, 392				# 1935
	bl	min_caml_print_char				# 1935
	addi	r3, r3, -392				# 1935
	lwz	r31, 388(r3)				# 1935
	mtspr	8, r31				# 1935
	lwz	r2, 132(r3)				# 1936
	lwz	r5, 4(r2)				# 1936
	mfspr	r31, 8				# 1936
	mr	r2, r5				# 1936
	stw	r31, 388(r3)				# 1936
	addi	r3, r3, 392				# 1936
	bl	min_caml_print_int				# 1936
	addi	r3, r3, -392				# 1936
	lwz	r31, 388(r3)				# 1936
	mtspr	8, r31				# 1936
	lwz	r2, 384(r3)				# 1937
	mfspr	r31, 8				# 1937
	stw	r31, 388(r3)				# 1937
	addi	r3, r3, 392				# 1937
	bl	min_caml_print_char				# 1937
	addi	r3, r3, -392				# 1937
	lwz	r31, 388(r3)				# 1937
	mtspr	8, r31				# 1937
	addi	r2, 0, 255
	mfspr	r31, 8				# 1938
	stw	r31, 388(r3)				# 1938
	addi	r3, r3, 392				# 1938
	bl	min_caml_print_int				# 1938
	addi	r3, r3, -392				# 1938
	lwz	r31, 388(r3)				# 1938
	mtspr	8, r31				# 1938
	lwz	r2, 380(r3)				# 1939
	mfspr	r31, 8				# 1939
	stw	r31, 388(r3)				# 1939
	addi	r3, r3, 392				# 1939
	bl	min_caml_print_char				# 1939
	addi	r3, r3, -392				# 1939
	lwz	r31, 388(r3)				# 1939
	mtspr	8, r31				# 1939
	lwz	r2, 268(r3)				# 2208
	lwz	r1, 236(r3)				# 2208
	mfspr	r31, 8				# 2208
	stw	r31, 388(r3)				# 2208
	addi	r3, r3, 392				# 2208
	lwz	r31, 0(r1)				# 2208
	mtspr	9, r31				# 2208
	bctr				# 2208
	addi	r3, r3, -392				# 2208
	lwz	r31, 388(r3)				# 2208
	mtspr	8, r31				# 2208
	addi	r2, 0, 9
	lwz	r5, 4(r3)				# 2209
	lwz	r1, 232(r3)				# 2209
	mfspr	r31, 8				# 2209
	mr	r6, r5				# 2209
	stw	r31, 388(r3)				# 2209
	addi	r3, r3, 392				# 2209
	lwz	r31, 0(r1)				# 2209
	mtspr	9, r31				# 2209
	bctr				# 2209
	addi	r3, r3, -392				# 2209
	lwz	r31, 388(r3)				# 2209
	mtspr	8, r31				# 2209
	lwz	r2, 268(r3)				# 2210
	lwz	r1, 228(r3)				# 2210
	mfspr	r31, 8				# 2210
	stw	r31, 388(r3)				# 2210
	addi	r3, r3, 392				# 2210
	lwz	r31, 0(r1)				# 2210
	mtspr	9, r31				# 2210
	bctr				# 2210
	addi	r3, r3, -392				# 2210
	lwz	r31, 388(r3)				# 2210
	mtspr	8, r31				# 2210
	lwz	r2, 56(r3)				# 166
	lfs	f0, 0(r2)				# 166
	lwz	r5, 184(r3)				# 166
	stfs	f0, 0(r5)				# 166
	lfs	f0, 4(r2)				# 167
	stfs	f0, 4(r5)				# 167
	lfs	f0, 8(r2)				# 168
	stfs	f0, 8(r5)				# 168
	lwz	r2, 8(r3)				# 1135
	lwz	r5, 0(r2)				# 1135
	addi	r5, r5, -1				# 1135
	lwz	r6, 188(r3)				# 1135
	lwz	r1, 208(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r2, r6				# 1135
	stw	r31, 388(r3)				# 1135
	addi	r3, r3, 392				# 1135
	lwz	r31, 0(r1)				# 1135
	mtspr	9, r31				# 1135
	bctr				# 1135
	addi	r3, r3, -392				# 1135
	lwz	r31, 388(r3)				# 1135
	mtspr	8, r31				# 1135
	lwz	r2, 8(r3)				# 2289
	lwz	r2, 0(r2)				# 2289
	addi	r2, r2, -1				# 2289
	lwz	r1, 224(r3)				# 2289
	mfspr	r31, 8				# 2289
	stw	r31, 388(r3)				# 2289
	addi	r3, r3, 392				# 2289
	lwz	r31, 0(r1)				# 2289
	mtspr	9, r31				# 2289
	bctr				# 2289
	addi	r3, r3, -392				# 2289
	lwz	r31, 388(r3)				# 2289
	mtspr	8, r31				# 2289
	lwz	r2, 140(r3)				# 2018
	lfs	f0, 0(r2)				# 2018
	lwz	r2, 136(r3)				# 2018
	lwz	r2, 4(r2)				# 2018
	lwz	r5, 4(r3)				# 2018
	sub	r2, r5, r2				# 2018
	stfs	f0, 392(r3)				# 2018
	mfspr	r31, 8				# 2018
	stw	r31, 400(r3)				# 2018
	addi	r3, r3, 404				# 2018
	bl	min_caml_float_of_int				# 2018
	addi	r3, r3, -404				# 2018
	lwz	r31, 400(r3)				# 2018
	mtspr	8, r31				# 2018
	lfs	f1, 392(r3)				# 2018
	fmul	f0, f1, f0				# 2018
	lwz	r2, 156(r3)				# 2021
	lfs	f1, 0(r2)				# 2021
	fmul	f1, f0, f1				# 2021
	lwz	r5, 160(r3)				# 2021
	lfs	f2, 0(r5)				# 2021
	fadd	f1, f1, f2				# 2021
	lfs	f2, 4(r2)				# 2022
	fmul	f2, f0, f2				# 2022
	lfs	f3, 4(r5)				# 2022
	fadd	f2, f2, f3				# 2022
	lfs	f3, 8(r2)				# 2023
	fmul	f0, f0, f3				# 2023
	lfs	f3, 8(r5)				# 2023
	fadd	f0, f0, f3				# 2023
	lwz	r2, 132(r3)				# 2024
	lwz	r2, 0(r2)				# 2024
	addi	r5, r2, -1				# 2024
	lwz	r2, 336(r3)				# 2024
	lwz	r6, 4(r3)				# 2024
	lwz	r1, 220(r3)				# 2024
	mfspr	r31, 8				# 2024
	fmr	f31, f2				# 2024
	fmr	f2, f0				# 2024
	fmr	f0, f1				# 2024
	fmr	f1, f31				# 2024
	stw	r31, 400(r3)				# 2024
	addi	r3, r3, 404				# 2024
	lwz	r31, 0(r1)				# 2024
	mtspr	9, r31				# 2024
	bctr				# 2024
	addi	r3, r3, -404				# 2024
	lwz	r31, 400(r3)				# 2024
	mtspr	8, r31				# 2024
	lwz	r2, 4(r3)				# 2291
	lwz	r5, 296(r3)				# 2291
	lwz	r6, 336(r3)				# 2291
	lwz	r7, 376(r3)				# 2291
	lwz	r8, 128(r3)				# 2291
	lwz	r1, 216(r3)				# 2291
	mfspr	r31, 8				# 2291
	stw	r31, 400(r3)				# 2291
	addi	r3, r3, 404				# 2291
	lwz	r31, 0(r1)				# 2291
	mtspr	9, r31				# 2291
	bctr				# 2291
	addi	r3, r3, -404				# 2291
	lwz	r31, 400(r3)				# 2291
	mtspr	8, r31				# 2291
#	main program ends
	halt
