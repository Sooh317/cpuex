	.data
	.literal4
	.align 2
l.17709:	 # -200.000000
	.long	-1018691584
	.align 2
l.17707:	 # 200.000000
	.long	1128792064
	.align 2
l.17621:	 # 128.000000
	.long	1124073472
	.align 2
l.17576:	 # 0.900000
	.long	1063675494
	.align 2
l.17575:	 # 0.200000
	.long	1045220557
	.align 2
l.17123:	 # 150.000000
	.long	1125515264
	.align 2
l.17027:	 # -150.000000
	.long	-1021968384
	.align 2
l.16978:	 # 0.100000
	.long	1036831949
	.align 2
l.16925:	 # -2.000000
	.long	-1073741824
	.align 2
l.16911:	 # 0.003906
	.long	998244352
	.align 2
l.16887:	 # 20.000000
	.long	1101004800
	.align 2
l.16886:	 # 0.050000
	.long	1028443341
	.align 2
l.16881:	 # 0.250000
	.long	1048576000
	.align 2
l.16877:	 # 10.000000
	.long	1092616192
	.align 2
l.16871:	 # 0.300000
	.long	1050253722
	.align 2
l.16870:	 # 0.500000
	.long	1056964608
	.align 2
l.16869:	 # 0.150000
	.long	1041865114
	.align 2
l.16865:	 # 3.141593
	.long	1078530011
	.align 2
l.16864:	 # 30.000000
	.long	1106247680
	.align 2
l.16863:	 # 15.000000
	.long	1097859072
	.align 2
l.16862:	 # 0.000100
	.long	953267991
	.align 2
l.16752:	 # 100000000.000000
	.long	1287568416
	.align 2
l.16414:	 # -0.100000
	.long	-1110651699
	.align 2
l.16333:	 # 0.010000
	.long	1008981770
	.align 2
l.16332:	 # -0.200000
	.long	-1102263091
	.align 2
l.16113:	 # 2.000000
	.long	1073741824
	.align 2
l.16088:	 # -1.000000
	.long	-1082130432
	.align 2
l.16087:	 # 1.000000
	.long	1065353216
	.align 2
l.16067:	 # 0.017453
	.long	1016003125
	.align 2
n_objects.2434:
	.long	0
	.align 2
Td252.5768:	 # 0.000000
	.long	0
	.align 2
dummy.5763:
	.long	0
	.align 2
Tt259.5765:
	.long	0
	.align 2
objects.2435:
	.long	0
	.align 2
screen.2436:
	.long	0
	.align 2
viewpoint.2437:
	.long	0
	.align 2
light.2438:
	.long	0
	.align 2
Td267.5756:	 # 255.000000
	.long	1132396544
	.align 2
beam.2439:
	.long	0
	.align 2
Ta272.5752:
	.long	0
	.align 2
and_net.2440:
	.long	0
	.align 2
Ta276.5749:
	.long	0
	.align 2
Ta277.5748:
	.long	0
	.align 2
or_net.2441:
	.long	0
	.align 2
solver_dist.2442:
	.long	0
	.align 2
intsec_rectside.2443:
	.long	0
	.align 2
Td283.5742:	 # 1000000000.000000
	.long	1315859240
	.align 2
tmin.2444:
	.long	0
	.align 2
intersection_point.2445:
	.long	0
	.align 2
intersected_object_id.2446:
	.long	0
	.align 2
nvector.2447:
	.long	0
	.align 2
texture_color.2448:
	.long	0
	.align 2
diffuse_ray.2449:
	.long	0
	.align 2
rgb.2450:
	.long	0
	.align 2
image_size.2451:
	.long	0
	.align 2
image_center.2452:
	.long	0
	.align 2
scan_pitch.2453:
	.long	0
	.align 2
startp.2454:
	.long	0
	.align 2
startp_fast.2455:
	.long	0
	.align 2
screenx_dir.2456:
	.long	0
	.align 2
screeny_dir.2457:
	.long	0
	.align 2
screenz_dir.2458:
	.long	0
	.align 2
ptrace_dirvec.2459:
	.long	0
	.align 2
dummyf.5702:
	.long	0
	.align 2
dummyff.5703:
	.long	0
	.align 2
Tt318.5707:
	.long	0
	.align 2
dummy_vs.5704:
	.long	0
	.align 2
dirvecs.2460:
	.long	0
	.align 2
dummyf2.5694:
	.long	0
	.align 2
v3.5695:
	.long	0
	.align 2
consts.5696:
	.long	0
	.align 2
light_dirvec.2461:
	.long	0
	.align 2
dummyf3.5684:
	.long	0
	.align 2
dummyff3.5685:
	.long	0
	.align 2
dummydv.5686:
	.long	0
	.align 2
Tt331.5688:
	.long	0
	.align 2
reflections.2462:
	.long	0
	.align 2
n_reflections.2463:
	.long	0
	.text
	.globl _min_caml_start
	.align 2
read_object.2618:
	addis	r5, 0, ha16(objects.2435)
	ori	r5, r5, lo16(objects.2435)				# 738
	lwz	r5, 0(r5)				# 738
	addis	r6, 0, ha16(n_objects.2434)
	ori	r6, r6, lo16(n_objects.2434)				# 738
	lwz	r6, 0(r6)				# 738
	addi	r7, 0, 2				# 738
	addi	r8, 0, 3				# 738
	addis	r9, 0, ha16(Td252.5768)
	ori	r9, r9, lo16(Td252.5768)				# 738
	lfs	f0, 0(r9)				# 738
	cmpwi	cr7, r2, 60				# 739
	blt	cr7, bge_else.19990				# 739
	blr
bge_else.19990:
	stw	r6, 0(r3)				# 657
	stw	r5, -4(r3)				# 657
	stw	r2, -8(r3)				# 657
	stw	r7, -12(r3)				# 657
	stfs	f0, -16(r3)				# 657
	stw	r8, -20(r3)				# 657
	mfspr	r31, 8				# 657
	stw	r31, -24(r3)				# 657
	addi	r3, r3, -28				# 657
	bl	min_caml_read_int				# 657
	addi	r3, r3, 28				# 657
	lwz	r31, -24(r3)				# 657
	mtspr	8, r31				# 657
	cmpwi	cr7, r2, -1				# 658
	bne	cr7, beq_else.19992				# 658
	addi	r2, 0, 0				# 734
	b	beq_cont.19993				# 658
beq_else.19992:
	stw	r2, -24(r3)				# 660
	mfspr	r31, 8				# 660
	stw	r31, -28(r3)				# 660
	addi	r3, r3, -32				# 660
	bl	min_caml_read_int				# 660
	addi	r3, r3, 32				# 660
	lwz	r31, -28(r3)				# 660
	mtspr	8, r31				# 660
	stw	r2, -28(r3)				# 661
	mfspr	r31, 8				# 661
	stw	r31, -32(r3)				# 661
	addi	r3, r3, -36				# 661
	bl	min_caml_read_int				# 661
	addi	r3, r3, 36				# 661
	lwz	r31, -32(r3)				# 661
	mtspr	8, r31				# 661
	stw	r2, -32(r3)				# 662
	mfspr	r31, 8				# 662
	stw	r31, -36(r3)				# 662
	addi	r3, r3, -40				# 662
	bl	min_caml_read_int				# 662
	addi	r3, r3, 40				# 662
	lwz	r31, -36(r3)				# 662
	mtspr	8, r31				# 662
	lfs	f0, -16(r3)				# 664
	lwz	r5, -20(r3)				# 664
	stw	r2, -36(r3)				# 664
	mfspr	r31, 8				# 664
	mr	r2, r5				# 664
	stw	r31, -40(r3)				# 664
	addi	r3, r3, -44				# 664
	bl	min_caml_create_float_array				# 664
	addi	r3, r3, 44				# 664
	lwz	r31, -40(r3)				# 664
	mtspr	8, r31				# 664
	stw	r2, -40(r3)				# 665
	mfspr	r31, 8				# 665
	stw	r31, -44(r3)				# 665
	addi	r3, r3, -48				# 665
	bl	min_caml_read_float				# 665
	addi	r3, r3, 48				# 665
	lwz	r31, -44(r3)				# 665
	mtspr	8, r31				# 665
	lwz	r2, -40(r3)				# 665
	stfs	f0, 0(r2)				# 665
	mfspr	r31, 8				# 666
	stw	r31, -44(r3)				# 666
	addi	r3, r3, -48				# 666
	bl	min_caml_read_float				# 666
	addi	r3, r3, 48				# 666
	lwz	r31, -44(r3)				# 666
	mtspr	8, r31				# 666
	lwz	r2, -40(r3)				# 666
	stfs	f0, 4(r2)				# 666
	mfspr	r31, 8				# 667
	stw	r31, -44(r3)				# 667
	addi	r3, r3, -48				# 667
	bl	min_caml_read_float				# 667
	addi	r3, r3, 48				# 667
	lwz	r31, -44(r3)				# 667
	mtspr	8, r31				# 667
	lwz	r2, -40(r3)				# 667
	stfs	f0, 8(r2)				# 667
	lfs	f0, -16(r3)				# 669
	lwz	r5, -20(r3)				# 669
	mfspr	r31, 8				# 669
	mr	r2, r5				# 669
	stw	r31, -44(r3)				# 669
	addi	r3, r3, -48				# 669
	bl	min_caml_create_float_array				# 669
	addi	r3, r3, 48				# 669
	lwz	r31, -44(r3)				# 669
	mtspr	8, r31				# 669
	stw	r2, -44(r3)				# 670
	mfspr	r31, 8				# 670
	stw	r31, -48(r3)				# 670
	addi	r3, r3, -52				# 670
	bl	min_caml_read_float				# 670
	addi	r3, r3, 52				# 670
	lwz	r31, -48(r3)				# 670
	mtspr	8, r31				# 670
	lwz	r2, -44(r3)				# 670
	stfs	f0, 0(r2)				# 670
	mfspr	r31, 8				# 671
	stw	r31, -48(r3)				# 671
	addi	r3, r3, -52				# 671
	bl	min_caml_read_float				# 671
	addi	r3, r3, 52				# 671
	lwz	r31, -48(r3)				# 671
	mtspr	8, r31				# 671
	lwz	r2, -44(r3)				# 671
	stfs	f0, 4(r2)				# 671
	mfspr	r31, 8				# 672
	stw	r31, -48(r3)				# 672
	addi	r3, r3, -52				# 672
	bl	min_caml_read_float				# 672
	addi	r3, r3, 52				# 672
	lwz	r31, -48(r3)				# 672
	mtspr	8, r31				# 672
	lwz	r2, -44(r3)				# 672
	stfs	f0, 8(r2)				# 672
	mfspr	r31, 8				# 674
	stw	r31, -48(r3)				# 674
	addi	r3, r3, -52				# 674
	bl	min_caml_read_float				# 674
	addi	r3, r3, 52				# 674
	lwz	r31, -48(r3)				# 674
	mtspr	8, r31				# 674
	lfs	f1, -16(r3)				# 115
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.19994				# 115
	addi	r2, 0, 0				# 115
	b	ble_cont.19995				# 115
ble_else.19994:
	addi	r2, 0, 1				# 115
ble_cont.19995:
	lwz	r5, -12(r3)				# 676
	stw	r2, -48(r3)				# 676
	mfspr	r31, 8				# 676
	mr	r2, r5				# 676
	fmr	f0, f1				# 676
	stw	r31, -52(r3)				# 676
	addi	r3, r3, -56				# 676
	bl	min_caml_create_float_array				# 676
	addi	r3, r3, 56				# 676
	lwz	r31, -52(r3)				# 676
	mtspr	8, r31				# 676
	stw	r2, -52(r3)				# 677
	mfspr	r31, 8				# 677
	stw	r31, -56(r3)				# 677
	addi	r3, r3, -60				# 677
	bl	min_caml_read_float				# 677
	addi	r3, r3, 60				# 677
	lwz	r31, -56(r3)				# 677
	mtspr	8, r31				# 677
	lwz	r2, -52(r3)				# 677
	stfs	f0, 0(r2)				# 677
	mfspr	r31, 8				# 678
	stw	r31, -56(r3)				# 678
	addi	r3, r3, -60				# 678
	bl	min_caml_read_float				# 678
	addi	r3, r3, 60				# 678
	lwz	r31, -56(r3)				# 678
	mtspr	8, r31				# 678
	lwz	r2, -52(r3)				# 678
	stfs	f0, 4(r2)				# 678
	lfs	f0, -16(r3)				# 680
	lwz	r5, -20(r3)				# 680
	mfspr	r31, 8				# 680
	mr	r2, r5				# 680
	stw	r31, -56(r3)				# 680
	addi	r3, r3, -60				# 680
	bl	min_caml_create_float_array				# 680
	addi	r3, r3, 60				# 680
	lwz	r31, -56(r3)				# 680
	mtspr	8, r31				# 680
	stw	r2, -56(r3)				# 681
	mfspr	r31, 8				# 681
	stw	r31, -60(r3)				# 681
	addi	r3, r3, -64				# 681
	bl	min_caml_read_float				# 681
	addi	r3, r3, 64				# 681
	lwz	r31, -60(r3)				# 681
	mtspr	8, r31				# 681
	lwz	r2, -56(r3)				# 681
	stfs	f0, 0(r2)				# 681
	mfspr	r31, 8				# 682
	stw	r31, -60(r3)				# 682
	addi	r3, r3, -64				# 682
	bl	min_caml_read_float				# 682
	addi	r3, r3, 64				# 682
	lwz	r31, -60(r3)				# 682
	mtspr	8, r31				# 682
	lwz	r2, -56(r3)				# 682
	stfs	f0, 4(r2)				# 682
	mfspr	r31, 8				# 683
	stw	r31, -60(r3)				# 683
	addi	r3, r3, -64				# 683
	bl	min_caml_read_float				# 683
	addi	r3, r3, 64				# 683
	lwz	r31, -60(r3)				# 683
	mtspr	8, r31				# 683
	lwz	r2, -56(r3)				# 683
	stfs	f0, 8(r2)				# 683
	lfs	f0, -16(r3)				# 685
	lwz	r5, -20(r3)				# 685
	mfspr	r31, 8				# 685
	mr	r2, r5				# 685
	stw	r31, -60(r3)				# 685
	addi	r3, r3, -64				# 685
	bl	min_caml_create_float_array				# 685
	addi	r3, r3, 64				# 685
	lwz	r31, -60(r3)				# 685
	mtspr	8, r31				# 685
	lwz	r5, -36(r3)				# 686
	cmpwi	cr7, r5, 0				# 686
	bne	cr7, beq_else.19996				# 686
	b	beq_cont.19997				# 686
beq_else.19996:
	stw	r2, -60(r3)				# 688
	mfspr	r31, 8				# 688
	stw	r31, -64(r3)				# 688
	addi	r3, r3, -68				# 688
	bl	min_caml_read_float				# 688
	addi	r3, r3, 68				# 688
	lwz	r31, -64(r3)				# 688
	mtspr	8, r31				# 688
	addis	r31, 0, ha16(l.16067)
	ori	r31, r31, lo16(l.16067)
	lfs	f1, 0(r31)				# 555
	fmul	f0, f0, f1				# 555
	lwz	r2, -60(r3)				# 688
	stfs	f0, 0(r2)				# 688
	stfs	f1, -64(r3)				# 689
	mfspr	r31, 8				# 689
	stw	r31, -68(r3)				# 689
	addi	r3, r3, -72				# 689
	bl	min_caml_read_float				# 689
	addi	r3, r3, 72				# 689
	lwz	r31, -68(r3)				# 689
	mtspr	8, r31				# 689
	lfs	f1, -64(r3)				# 555
	fmul	f0, f0, f1				# 555
	lwz	r2, -60(r3)				# 689
	stfs	f0, 4(r2)				# 689
	mfspr	r31, 8				# 690
	stw	r31, -68(r3)				# 690
	addi	r3, r3, -72				# 690
	bl	min_caml_read_float				# 690
	addi	r3, r3, 72				# 690
	lwz	r31, -68(r3)				# 690
	mtspr	8, r31				# 690
	lfs	f1, -64(r3)				# 555
	fmul	f0, f0, f1				# 555
	lwz	r2, -60(r3)				# 690
	stfs	f0, 8(r2)				# 690
beq_cont.19997:
	lwz	r5, -28(r3)				# 697
	cmpwi	cr7, r5, 2				# 697
	bne	cr7, beq_else.19998				# 697
	addi	r6, 0, 1				# 697
	b	beq_cont.19999				# 697
beq_else.19998:
	lwz	r6, -48(r3)				# 697
beq_cont.19999:
	addi	r7, 0, 4				# 698
	lfs	f0, -16(r3)				# 698
	stw	r6, -68(r3)				# 698
	stw	r2, -60(r3)				# 698
	mfspr	r31, 8				# 698
	mr	r2, r7				# 698
	stw	r31, -72(r3)				# 698
	addi	r3, r3, -76				# 698
	bl	min_caml_create_float_array				# 698
	addi	r3, r3, 76				# 698
	lwz	r31, -72(r3)				# 698
	mtspr	8, r31				# 698
	mr	r5, r4				# 701
	addi	r4, r4, 44				# 701
	stw	r2, 40(r5)				# 701
	lwz	r2, -60(r3)				# 701
	stw	r2, 36(r5)				# 701
	lwz	r6, -56(r3)				# 701
	stw	r6, 32(r5)				# 701
	lwz	r6, -52(r3)				# 701
	stw	r6, 28(r5)				# 701
	lwz	r6, -68(r3)				# 701
	stw	r6, 24(r5)				# 701
	lwz	r6, -44(r3)				# 701
	stw	r6, 20(r5)				# 701
	lwz	r6, -40(r3)				# 701
	stw	r6, 16(r5)				# 701
	lwz	r7, -36(r3)				# 701
	stw	r7, 12(r5)				# 701
	lwz	r8, -32(r3)				# 701
	stw	r8, 8(r5)				# 701
	lwz	r8, -28(r3)				# 701
	stw	r8, 4(r5)				# 701
	lwz	r9, -24(r3)				# 701
	stw	r9, 0(r5)				# 701
	lwz	r9, -8(r3)				# 709
	slwi	r10, r9, 2				# 709
	lwz	r11, -4(r3)				# 709
	stwx	r5, r11, r10				# 709
	cmpwi	cr7, r8, 3				# 711
	bne	cr7, beq_else.20000				# 711
	lfs	f0, 0(r6)				# 714
	lfs	f1, -16(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20002				# 111
	addi	r5, 0, 1				# 111
	b	beq_cont.20003				# 111
beq_else.20002:
	addi	r5, 0, 0				# 111
beq_cont.20003:
	cmpwi	cr7, r5, 0				# 715
	bne	cr7, beq_else.20004				# 715
	cmpwi	cr7, r5, 0				# 125
	bne	cr7, beq_else.20006				# 125
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.20008				# 113
	addi	r5, 0, 0				# 113
	b	ble_cont.20009				# 113
ble_else.20008:
	addi	r5, 0, 1				# 113
ble_cont.20009:
	cmpwi	cr7, r5, 0				# 126
	bne	cr7, beq_else.20010				# 126
	addis	r31, 0, ha16(l.16088)
	ori	r31, r31, lo16(l.16088)
	lfs	f2, 0(r31)				# 127
	b	beq_cont.20011				# 126
beq_else.20010:
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 126
beq_cont.20011:
	b	beq_cont.20007				# 125
beq_else.20006:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f2, 0(r31)				# 125
beq_cont.20007:
	fmul	f0, f0, f0				# 103
	fdiv	f0, f2, f0				# 715
	b	beq_cont.20005				# 715
beq_else.20004:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 715
beq_cont.20005:
	stfs	f0, 0(r6)				# 715
	lfs	f0, 4(r6)				# 716
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20012				# 111
	addi	r5, 0, 1				# 111
	b	beq_cont.20013				# 111
beq_else.20012:
	addi	r5, 0, 0				# 111
beq_cont.20013:
	cmpwi	cr7, r5, 0				# 717
	bne	cr7, beq_else.20014				# 717
	cmpwi	cr7, r5, 0				# 125
	bne	cr7, beq_else.20016				# 125
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.20018				# 113
	addi	r5, 0, 0				# 113
	b	ble_cont.20019				# 113
ble_else.20018:
	addi	r5, 0, 1				# 113
ble_cont.20019:
	cmpwi	cr7, r5, 0				# 126
	bne	cr7, beq_else.20020				# 126
	addis	r31, 0, ha16(l.16088)
	ori	r31, r31, lo16(l.16088)
	lfs	f2, 0(r31)				# 127
	b	beq_cont.20021				# 126
beq_else.20020:
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 126
beq_cont.20021:
	b	beq_cont.20017				# 125
beq_else.20016:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f2, 0(r31)				# 125
beq_cont.20017:
	fmul	f0, f0, f0				# 103
	fdiv	f0, f2, f0				# 717
	b	beq_cont.20015				# 717
beq_else.20014:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 717
beq_cont.20015:
	stfs	f0, 4(r6)				# 717
	lfs	f0, 8(r6)				# 718
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20022				# 111
	addi	r5, 0, 1				# 111
	b	beq_cont.20023				# 111
beq_else.20022:
	addi	r5, 0, 0				# 111
beq_cont.20023:
	cmpwi	cr7, r5, 0				# 719
	bne	cr7, beq_else.20024				# 719
	cmpwi	cr7, r5, 0				# 125
	bne	cr7, beq_else.20026				# 125
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.20028				# 113
	addi	r5, 0, 0				# 113
	b	ble_cont.20029				# 113
ble_else.20028:
	addi	r5, 0, 1				# 113
ble_cont.20029:
	cmpwi	cr7, r5, 0				# 126
	bne	cr7, beq_else.20030				# 126
	addis	r31, 0, ha16(l.16088)
	ori	r31, r31, lo16(l.16088)
	lfs	f1, 0(r31)				# 127
	b	beq_cont.20031				# 126
beq_else.20030:
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f1, 0(r31)				# 126
beq_cont.20031:
	b	beq_cont.20027				# 125
beq_else.20026:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f1, 0(r31)				# 125
beq_cont.20027:
	fmul	f0, f0, f0				# 103
	fdiv	f0, f1, f0				# 719
	b	beq_cont.20025				# 719
beq_else.20024:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 719
beq_cont.20025:
	stfs	f0, 8(r6)				# 719
	b	beq_cont.20001				# 711
beq_else.20000:
	cmpwi	cr7, r8, 2				# 721
	bne	cr7, beq_else.20032				# 721
	lwz	r5, -48(r3)				# 723
	cmpwi	cr7, r5, 0				# 723
	bne	cr7, beq_else.20034				# 723
	addi	r5, 0, 1				# 723
	b	beq_cont.20035				# 723
beq_else.20034:
	addi	r5, 0, 0				# 723
beq_cont.20035:
	lfs	f0, 0(r6)				# 186
	fmul	f0, f0, f0				# 103
	lfs	f1, 4(r6)				# 186
	fmul	f1, f1, f1				# 103
	fadd	f0, f0, f1				# 186
	lfs	f1, 8(r6)				# 186
	fmul	f1, f1, f1				# 103
	fadd	f0, f0, f1				# 186
	stw	r5, -72(r3)				# 186
	mfspr	r31, 8				# 186
	stw	r31, -76(r3)				# 186
	addi	r3, r3, -80				# 186
	bl	min_caml_sqrt				# 186
	addi	r3, r3, 80				# 186
	lwz	r31, -76(r3)				# 186
	mtspr	8, r31				# 186
	lfs	f1, -16(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20036				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20037				# 111
beq_else.20036:
	addi	r2, 0, 0				# 111
beq_cont.20037:
	cmpwi	cr7, r2, 0				# 187
	bne	cr7, beq_else.20038				# 187
	lwz	r2, -72(r3)				# 187
	cmpwi	cr7, r2, 0				# 187
	bne	cr7, beq_else.20040				# 187
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f1, 0(r31)				# 187
	fdiv	f0, f1, f0				# 187
	b	beq_cont.20041				# 187
beq_else.20040:
	addis	r31, 0, ha16(l.16088)
	ori	r31, r31, lo16(l.16088)
	lfs	f1, 0(r31)				# 187
	fdiv	f0, f1, f0				# 187
beq_cont.20041:
	b	beq_cont.20039				# 187
beq_else.20038:
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f0, 0(r31)				# 187
beq_cont.20039:
	lwz	r2, -40(r3)				# 188
	lfs	f1, 0(r2)				# 188
	fmul	f1, f1, f0				# 188
	stfs	f1, 0(r2)				# 188
	lfs	f1, 4(r2)				# 189
	fmul	f1, f1, f0				# 189
	stfs	f1, 4(r2)				# 189
	lfs	f1, 8(r2)				# 190
	fmul	f0, f1, f0				# 190
	stfs	f0, 8(r2)				# 190
	b	beq_cont.20033				# 721
beq_else.20032:
beq_cont.20033:
beq_cont.20001:
	lwz	r2, -36(r3)				# 727
	cmpwi	cr7, r2, 0				# 727
	bne	cr7, beq_else.20042				# 727
	b	beq_cont.20043				# 727
beq_else.20042:
	lwz	r2, -60(r3)				# 616
	lfs	f0, 0(r2)				# 616
	mfspr	r31, 8				# 616
	stw	r31, -76(r3)				# 616
	addi	r3, r3, -80				# 616
	bl	min_caml_cos				# 616
	addi	r3, r3, 80				# 616
	lwz	r31, -76(r3)				# 616
	mtspr	8, r31				# 616
	lwz	r2, -60(r3)				# 617
	lfs	f1, 0(r2)				# 617
	stfs	f0, -76(r3)				# 617
	mfspr	r31, 8				# 617
	fmr	f0, f1				# 617
	stw	r31, -80(r3)				# 617
	addi	r3, r3, -84				# 617
	bl	min_caml_sin				# 617
	addi	r3, r3, 84				# 617
	lwz	r31, -80(r3)				# 617
	mtspr	8, r31				# 617
	lwz	r2, -60(r3)				# 618
	lfs	f1, 4(r2)				# 618
	stfs	f0, -80(r3)				# 618
	mfspr	r31, 8				# 618
	fmr	f0, f1				# 618
	stw	r31, -84(r3)				# 618
	addi	r3, r3, -88				# 618
	bl	min_caml_cos				# 618
	addi	r3, r3, 88				# 618
	lwz	r31, -84(r3)				# 618
	mtspr	8, r31				# 618
	lwz	r2, -60(r3)				# 619
	lfs	f1, 4(r2)				# 619
	stfs	f0, -84(r3)				# 619
	mfspr	r31, 8				# 619
	fmr	f0, f1				# 619
	stw	r31, -88(r3)				# 619
	addi	r3, r3, -92				# 619
	bl	min_caml_sin				# 619
	addi	r3, r3, 92				# 619
	lwz	r31, -88(r3)				# 619
	mtspr	8, r31				# 619
	lwz	r2, -60(r3)				# 620
	lfs	f1, 8(r2)				# 620
	stfs	f0, -88(r3)				# 620
	mfspr	r31, 8				# 620
	fmr	f0, f1				# 620
	stw	r31, -92(r3)				# 620
	addi	r3, r3, -96				# 620
	bl	min_caml_cos				# 620
	addi	r3, r3, 96				# 620
	lwz	r31, -92(r3)				# 620
	mtspr	8, r31				# 620
	lwz	r2, -60(r3)				# 621
	lfs	f1, 8(r2)				# 621
	stfs	f0, -92(r3)				# 621
	mfspr	r31, 8				# 621
	fmr	f0, f1				# 621
	stw	r31, -96(r3)				# 621
	addi	r3, r3, -100				# 621
	bl	min_caml_sin				# 621
	addi	r3, r3, 100				# 621
	lwz	r31, -96(r3)				# 621
	mtspr	8, r31				# 621
	lfs	f1, -92(r3)				# 623
	lfs	f2, -84(r3)				# 623
	fmul	f3, f2, f1				# 623
	lfs	f4, -88(r3)				# 624
	lfs	f5, -80(r3)				# 624
	fmul	f6, f5, f4				# 624
	fmul	f7, f6, f1				# 624
	lfs	f8, -76(r3)				# 624
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
	lwz	r2, -40(r3)				# 636
	lfs	f5, 0(r2)				# 636
	lfs	f8, 4(r2)				# 637
	lfs	f9, 8(r2)				# 638
	fmul	f12, f3, f3				# 103
	fmul	f12, f5, f12				# 643
	fmul	f13, f11, f11				# 103
	fmul	f13, f8, f13				# 643
	fadd	f12, f12, f13				# 643
	fmul	f13, f1, f1				# 103
	fmul	f13, f9, f13				# 643
	fadd	f12, f12, f13				# 643
	stfs	f12, 0(r2)				# 643
	fmul	f12, f7, f7				# 103
	fmul	f12, f5, f12				# 644
	fmul	f13, f6, f6				# 103
	fmul	f13, f8, f13				# 644
	fadd	f12, f12, f13				# 644
	fmul	f13, f4, f4				# 103
	fmul	f13, f9, f13				# 644
	fadd	f12, f12, f13				# 644
	stfs	f12, 4(r2)				# 644
	fmul	f12, f10, f10				# 103
	fmul	f12, f5, f12				# 645
	fmul	f13, f0, f0				# 103
	fmul	f13, f8, f13				# 645
	fadd	f12, f12, f13				# 645
	fmul	f13, f2, f2				# 103
	fmul	f13, f9, f13				# 645
	fadd	f12, f12, f13				# 645
	stfs	f12, 8(r2)				# 645
	addis	r31, 0, ha16(l.16113)
	ori	r31, r31, lo16(l.16113)
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
	lwz	r2, -60(r3)				# 648
	stfs	f13, 0(r2)				# 648
	fmul	f3, f5, f3				# 649
	fmul	f5, f3, f10				# 649
	fmul	f8, f8, f11				# 649
	fmul	f0, f8, f0				# 649
	fadd	f0, f5, f0				# 649
	fmul	f1, f9, f1				# 649
	fmul	f2, f1, f2				# 649
	fadd	f0, f0, f2				# 649
	fmul	f0, f12, f0				# 649
	stfs	f0, 4(r2)				# 649
	fmul	f0, f3, f7				# 650
	fmul	f2, f8, f6				# 650
	fadd	f0, f0, f2				# 650
	fmul	f1, f1, f4				# 650
	fadd	f0, f0, f1				# 650
	fmul	f0, f12, f0				# 650
	stfs	f0, 8(r2)				# 650
beq_cont.20043:
	addi	r2, 0, 1				# 731
beq_cont.19993:
	cmpwi	cr7, r2, 0				# 740
	bne	cr7, beq_else.20044				# 740
	lwz	r2, 0(r3)				# 743
	lwz	r5, -8(r3)				# 743
	stw	r5, 0(r2)				# 743
	blr
beq_else.20044:
	lwz	r2, -8(r3)				# 741
	addi	r2, r2, 1				# 741
	b	read_object.2618				# 741
read_net_item.2622:
	addi	r5, 0, -1				# 754
	stw	r5, 0(r3)				# 755
	stw	r2, -4(r3)				# 755
	mfspr	r31, 8				# 755
	stw	r31, -8(r3)				# 755
	addi	r3, r3, -12				# 755
	bl	min_caml_read_int				# 755
	addi	r3, r3, 12				# 755
	lwz	r31, -8(r3)				# 755
	mtspr	8, r31				# 755
	cmpwi	cr7, r2, -1				# 756
	bne	cr7, beq_else.20046				# 756
	lwz	r2, -4(r3)				# 756
	addi	r2, r2, 1				# 756
	lwz	r5, 0(r3)				# 756
	b	min_caml_create_array				# 756
beq_else.20046:
	lwz	r5, -4(r3)				# 758
	addi	r6, r5, 1				# 758
	stw	r2, -8(r3)				# 758
	mfspr	r31, 8				# 758
	mr	r2, r6				# 758
	stw	r31, -12(r3)				# 758
	addi	r3, r3, -16				# 758
	bl	read_net_item.2622				# 758
	addi	r3, r3, 16				# 758
	lwz	r31, -12(r3)				# 758
	mtspr	8, r31				# 758
	lwz	r5, -4(r3)				# 759
	slwi	r5, r5, 2				# 759
	lwz	r6, -8(r3)				# 759
	stwx	r6, r2, r5				# 759
	blr
read_or_network.2624:
	addi	r5, 0, 0				# 762
	stw	r2, 0(r3)				# 763
	mfspr	r31, 8				# 763
	mr	r2, r5				# 763
	stw	r31, -4(r3)				# 763
	addi	r3, r3, -8				# 763
	bl	read_net_item.2622				# 763
	addi	r3, r3, 8				# 763
	lwz	r31, -4(r3)				# 763
	mr	r5, r2				# 763
	mtspr	8, r31				# 763
	lwz	r2, 0(r5)				# 764
	cmpwi	cr7, r2, -1				# 764
	bne	cr7, beq_else.20047				# 764
	lwz	r2, 0(r3)				# 765
	addi	r2, r2, 1				# 765
	b	min_caml_create_array				# 765
beq_else.20047:
	lwz	r2, 0(r3)				# 767
	addi	r6, r2, 1				# 767
	stw	r5, -4(r3)				# 767
	mfspr	r31, 8				# 767
	mr	r2, r6				# 767
	stw	r31, -8(r3)				# 767
	addi	r3, r3, -12				# 767
	bl	read_or_network.2624				# 767
	addi	r3, r3, 12				# 767
	lwz	r31, -8(r3)				# 767
	mtspr	8, r31				# 767
	lwz	r5, 0(r3)				# 768
	slwi	r5, r5, 2				# 768
	lwz	r6, -4(r3)				# 768
	stwx	r6, r2, r5				# 768
	blr
read_and_network.2626:
	addis	r5, 0, ha16(and_net.2440)
	ori	r5, r5, lo16(and_net.2440)				# 771
	lwz	r5, 0(r5)				# 771
	addi	r6, 0, 0				# 771
	stw	r5, 0(r3)				# 772
	stw	r2, -4(r3)				# 772
	mfspr	r31, 8				# 772
	mr	r2, r6				# 772
	stw	r31, -8(r3)				# 772
	addi	r3, r3, -12				# 772
	bl	read_net_item.2622				# 772
	addi	r3, r3, 12				# 772
	lwz	r31, -8(r3)				# 772
	mtspr	8, r31				# 772
	lwz	r5, 0(r2)				# 773
	cmpwi	cr7, r5, -1				# 773
	bne	cr7, beq_else.20048				# 773
	blr
beq_else.20048:
	lwz	r5, -4(r3)				# 775
	slwi	r6, r5, 2				# 775
	lwz	r7, 0(r3)				# 775
	stwx	r2, r7, r6				# 775
	addi	r2, r5, 1				# 776
	b	read_and_network.2626				# 776
iter_setup_dirvec_constants.2723:
	addis	r6, 0, ha16(objects.2435)
	ori	r6, r6, lo16(objects.2435)				# 1117
	lwz	r6, 0(r6)				# 1117
	addi	r7, 0, 5				# 1117
	addis	r8, 0, ha16(Td252.5768)
	ori	r8, r8, lo16(Td252.5768)				# 1117
	lfs	f0, 0(r8)				# 1117
	cmpwi	cr7, r5, 0				# 1118
	blt	cr7, bge_else.20050				# 1118
	slwi	r8, r5, 2				# 1119
	lwzx	r6, r6, r8				# 1119
	lwz	r8, 4(r2)				# 527
	lwz	r9, 0(r2)				# 521
	lwz	r10, 4(r6)				# 252
	stw	r2, 0(r3)				# 1123
	cmpwi	cr7, r10, 1				# 1123
	bne	cr7, beq_else.20051				# 1123
	addi	r7, 0, 6				# 1044
	stw	r8, -4(r3)				# 1044
	stw	r5, -8(r3)				# 1044
	stw	r6, -12(r3)				# 1044
	stfs	f0, -16(r3)				# 1044
	stw	r9, -20(r3)				# 1044
	mfspr	r31, 8				# 1044
	mr	r2, r7				# 1044
	stw	r31, -24(r3)				# 1044
	addi	r3, r3, -28				# 1044
	bl	min_caml_create_float_array				# 1044
	addi	r3, r3, 28				# 1044
	lwz	r31, -24(r3)				# 1044
	mtspr	8, r31				# 1044
	lwz	r5, -20(r3)				# 1046
	lfs	f0, 0(r5)				# 1046
	lfs	f1, -16(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20053				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20054				# 111
beq_else.20053:
	addi	r6, 0, 0				# 111
beq_cont.20054:
	cmpwi	cr7, r6, 0				# 1046
	bne	cr7, beq_else.20055				# 1046
	lwz	r6, -12(r3)				# 272
	lwz	r7, 24(r6)				# 272
	lfs	f0, 0(r5)				# 1050
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.20057				# 115
	addi	r8, 0, 0				# 115
	b	ble_cont.20058				# 115
ble_else.20057:
	addi	r8, 0, 1				# 115
ble_cont.20058:
	cmpwi	cr7, r7, 0				# 119
	bne	cr7, beq_else.20059				# 119
	mr	r7, r8				# 119
	b	beq_cont.20060				# 119
beq_else.20059:
	cmpwi	cr7, r8, 0				# 119
	bne	cr7, beq_else.20061				# 119
	addi	r7, 0, 1				# 119
	b	beq_cont.20062				# 119
beq_else.20061:
	addi	r7, 0, 0				# 119
beq_cont.20062:
beq_cont.20060:
	lwz	r8, 16(r6)				# 290
	lfs	f0, 0(r8)				# 295
	cmpwi	cr7, r7, 0				# 132
	bne	cr7, beq_else.20063				# 132
	fneg	f0, f0				# 107
	b	beq_cont.20064				# 132
beq_else.20063:
beq_cont.20064:
	stfs	f0, 0(r2)				# 1050
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f0, 0(r31)				# 1052
	lfs	f2, 0(r5)				# 1052
	fdiv	f0, f0, f2				# 1052
	stfs	f0, 4(r2)				# 1052
	b	beq_cont.20056				# 1046
beq_else.20055:
	stfs	f1, 4(r2)				# 1047
beq_cont.20056:
	lfs	f0, 4(r5)				# 1054
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20065				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20066				# 111
beq_else.20065:
	addi	r6, 0, 0				# 111
beq_cont.20066:
	cmpwi	cr7, r6, 0				# 1054
	bne	cr7, beq_else.20067				# 1054
	lwz	r6, -12(r3)				# 272
	lwz	r7, 24(r6)				# 272
	lfs	f0, 4(r5)				# 1057
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.20069				# 115
	addi	r8, 0, 0				# 115
	b	ble_cont.20070				# 115
ble_else.20069:
	addi	r8, 0, 1				# 115
ble_cont.20070:
	cmpwi	cr7, r7, 0				# 119
	bne	cr7, beq_else.20071				# 119
	mr	r7, r8				# 119
	b	beq_cont.20072				# 119
beq_else.20071:
	cmpwi	cr7, r8, 0				# 119
	bne	cr7, beq_else.20073				# 119
	addi	r7, 0, 1				# 119
	b	beq_cont.20074				# 119
beq_else.20073:
	addi	r7, 0, 0				# 119
beq_cont.20074:
beq_cont.20072:
	lwz	r8, 16(r6)				# 300
	lfs	f0, 4(r8)				# 305
	cmpwi	cr7, r7, 0				# 132
	bne	cr7, beq_else.20075				# 132
	fneg	f0, f0				# 107
	b	beq_cont.20076				# 132
beq_else.20075:
beq_cont.20076:
	stfs	f0, 8(r2)				# 1057
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f0, 0(r31)				# 1058
	lfs	f2, 4(r5)				# 1058
	fdiv	f0, f0, f2				# 1058
	stfs	f0, 12(r2)				# 1058
	b	beq_cont.20068				# 1054
beq_else.20067:
	stfs	f1, 12(r2)				# 1055
beq_cont.20068:
	lfs	f0, 8(r5)				# 1060
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20077				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20078				# 111
beq_else.20077:
	addi	r6, 0, 0				# 111
beq_cont.20078:
	cmpwi	cr7, r6, 0				# 1060
	bne	cr7, beq_else.20079				# 1060
	lwz	r6, -12(r3)				# 272
	lwz	r7, 24(r6)				# 272
	lfs	f0, 8(r5)				# 1063
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.20081				# 115
	addi	r8, 0, 0				# 115
	b	ble_cont.20082				# 115
ble_else.20081:
	addi	r8, 0, 1				# 115
ble_cont.20082:
	cmpwi	cr7, r7, 0				# 119
	bne	cr7, beq_else.20083				# 119
	mr	r7, r8				# 119
	b	beq_cont.20084				# 119
beq_else.20083:
	cmpwi	cr7, r8, 0				# 119
	bne	cr7, beq_else.20085				# 119
	addi	r7, 0, 1				# 119
	b	beq_cont.20086				# 119
beq_else.20085:
	addi	r7, 0, 0				# 119
beq_cont.20086:
beq_cont.20084:
	lwz	r6, 16(r6)				# 310
	lfs	f0, 8(r6)				# 315
	cmpwi	cr7, r7, 0				# 132
	bne	cr7, beq_else.20087				# 132
	fneg	f0, f0				# 107
	b	beq_cont.20088				# 132
beq_else.20087:
beq_cont.20088:
	stfs	f0, 16(r2)				# 1063
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f0, 0(r31)				# 1064
	lfs	f1, 8(r5)				# 1064
	fdiv	f0, f0, f1				# 1064
	stfs	f0, 20(r2)				# 1064
	b	beq_cont.20080				# 1060
beq_else.20079:
	stfs	f1, 20(r2)				# 1061
beq_cont.20080:
	lwz	r5, -8(r3)				# 1124
	slwi	r6, r5, 2				# 1124
	lwz	r7, -4(r3)				# 1124
	stwx	r2, r7, r6				# 1124
	b	beq_cont.20052				# 1123
beq_else.20051:
	cmpwi	cr7, r10, 2				# 1125
	bne	cr7, beq_else.20089				# 1125
	addi	r7, 0, 4				# 1071
	stw	r8, -4(r3)				# 1071
	stw	r5, -8(r3)				# 1071
	stfs	f0, -16(r3)				# 1071
	stw	r6, -12(r3)				# 1071
	stw	r9, -20(r3)				# 1071
	mfspr	r31, 8				# 1071
	mr	r2, r7				# 1071
	stw	r31, -24(r3)				# 1071
	addi	r3, r3, -28				# 1071
	bl	min_caml_create_float_array				# 1071
	addi	r3, r3, 28				# 1071
	lwz	r31, -24(r3)				# 1071
	mtspr	8, r31				# 1071
	lwz	r5, -20(r3)				# 1073
	lfs	f0, 0(r5)				# 1073
	lwz	r6, -12(r3)				# 290
	lwz	r7, 16(r6)				# 290
	lfs	f1, 0(r7)				# 295
	fmul	f0, f0, f1				# 1073
	lfs	f1, 4(r5)				# 1073
	lwz	r7, 16(r6)				# 300
	lfs	f2, 4(r7)				# 305
	fmul	f1, f1, f2				# 1073
	fadd	f0, f0, f1				# 1073
	lfs	f1, 8(r5)				# 1073
	lwz	r5, 16(r6)				# 310
	lfs	f2, 8(r5)				# 315
	fmul	f1, f1, f2				# 1073
	fadd	f0, f0, f1				# 1073
	lfs	f1, -16(r3)				# 113
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.20091				# 113
	addi	r5, 0, 0				# 113
	b	ble_cont.20092				# 113
ble_else.20091:
	addi	r5, 0, 1				# 113
ble_cont.20092:
	cmpwi	cr7, r5, 0				# 1075
	bne	cr7, beq_else.20093				# 1075
	stfs	f1, 0(r2)				# 1083
	b	beq_cont.20094				# 1075
beq_else.20093:
	addis	r31, 0, ha16(l.16088)
	ori	r31, r31, lo16(l.16088)
	lfs	f1, 0(r31)				# 1077
	fdiv	f1, f1, f0				# 1077
	stfs	f1, 0(r2)				# 1077
	lwz	r5, 16(r6)				# 290
	lfs	f1, 0(r5)				# 295
	fdiv	f1, f1, f0				# 1079
	fneg	f1, f1				# 107
	stfs	f1, 4(r2)				# 1079
	lwz	r5, 16(r6)				# 300
	lfs	f1, 4(r5)				# 305
	fdiv	f1, f1, f0				# 1080
	fneg	f1, f1				# 107
	stfs	f1, 8(r2)				# 1080
	lwz	r5, 16(r6)				# 310
	lfs	f1, 8(r5)				# 315
	fdiv	f0, f1, f0				# 1081
	fneg	f0, f0				# 107
	stfs	f0, 12(r2)				# 1081
beq_cont.20094:
	lwz	r5, -8(r3)				# 1126
	slwi	r6, r5, 2				# 1126
	lwz	r7, -4(r3)				# 1126
	stwx	r2, r7, r6				# 1126
	b	beq_cont.20090				# 1125
beq_else.20089:
	stw	r8, -4(r3)				# 1090
	stw	r5, -8(r3)				# 1090
	stfs	f0, -16(r3)				# 1090
	stw	r6, -12(r3)				# 1090
	stw	r9, -20(r3)				# 1090
	mfspr	r31, 8				# 1090
	mr	r2, r7				# 1090
	stw	r31, -24(r3)				# 1090
	addi	r3, r3, -28				# 1090
	bl	min_caml_create_float_array				# 1090
	addi	r3, r3, 28				# 1090
	lwz	r31, -24(r3)				# 1090
	mtspr	8, r31				# 1090
	lwz	r5, -20(r3)				# 1092
	lfs	f0, 0(r5)				# 1092
	lfs	f1, 4(r5)				# 1092
	lfs	f2, 8(r5)				# 1092
	fmul	f3, f0, f0				# 103
	lwz	r6, -12(r3)				# 290
	lwz	r7, 16(r6)				# 290
	lfs	f4, 0(r7)				# 295
	fmul	f3, f3, f4				# 836
	fmul	f4, f1, f1				# 103
	lwz	r7, 16(r6)				# 300
	lfs	f5, 4(r7)				# 305
	fmul	f4, f4, f5				# 836
	fadd	f3, f3, f4				# 836
	fmul	f4, f2, f2				# 103
	lwz	r7, 16(r6)				# 310
	lfs	f5, 8(r7)				# 315
	fmul	f4, f4, f5				# 836
	fadd	f3, f3, f4				# 836
	lwz	r7, 12(r6)				# 281
	cmpwi	cr7, r7, 0				# 838
	bne	cr7, beq_else.20095				# 838
	fmr	f0, f3				# 839
	b	beq_cont.20096				# 838
beq_else.20095:
	fmul	f4, f1, f2				# 842
	lwz	r7, 36(r6)				# 410
	lfs	f5, 0(r7)				# 415
	fmul	f4, f4, f5				# 842
	fadd	f3, f3, f4				# 841
	fmul	f2, f2, f0				# 843
	lwz	r7, 36(r6)				# 420
	lfs	f4, 4(r7)				# 425
	fmul	f2, f2, f4				# 843
	fadd	f2, f3, f2				# 841
	fmul	f0, f0, f1				# 844
	lwz	r7, 36(r6)				# 430
	lfs	f1, 8(r7)				# 435
	fmul	f0, f0, f1				# 844
	fadd	f0, f2, f0				# 841
beq_cont.20096:
	lfs	f1, 0(r5)				# 1093
	lwz	r7, 16(r6)				# 290
	lfs	f2, 0(r7)				# 295
	fmul	f1, f1, f2				# 1093
	fneg	f1, f1				# 107
	lfs	f2, 4(r5)				# 1094
	lwz	r7, 16(r6)				# 300
	lfs	f3, 4(r7)				# 305
	fmul	f2, f2, f3				# 1094
	fneg	f2, f2				# 107
	lfs	f3, 8(r5)				# 1095
	lwz	r7, 16(r6)				# 310
	lfs	f4, 8(r7)				# 315
	fmul	f3, f3, f4				# 1095
	fneg	f3, f3				# 107
	stfs	f0, 0(r2)				# 1097
	lwz	r7, 12(r6)				# 281
	cmpwi	cr7, r7, 0				# 1100
	bne	cr7, beq_else.20097				# 1100
	stfs	f1, 4(r2)				# 1105
	stfs	f2, 8(r2)				# 1106
	stfs	f3, 12(r2)				# 1107
	b	beq_cont.20098				# 1100
beq_else.20097:
	lfs	f4, 8(r5)				# 1101
	lwz	r7, 36(r6)				# 420
	lfs	f5, 4(r7)				# 425
	fmul	f4, f4, f5				# 1101
	lfs	f5, 4(r5)				# 1101
	lwz	r7, 36(r6)				# 430
	lfs	f6, 8(r7)				# 435
	fmul	f5, f5, f6				# 1101
	fadd	f4, f4, f5				# 1101
	addis	r31, 0, ha16(l.16113)
	ori	r31, r31, lo16(l.16113)
	lfs	f5, 0(r31)				# 105
	fdiv	f4, f4, f5				# 105
	fsub	f1, f1, f4				# 1101
	stfs	f1, 4(r2)				# 1101
	lfs	f1, 8(r5)				# 1102
	lwz	r7, 36(r6)				# 410
	lfs	f4, 0(r7)				# 415
	fmul	f1, f1, f4				# 1102
	lfs	f4, 0(r5)				# 1102
	lwz	r7, 36(r6)				# 430
	lfs	f6, 8(r7)				# 435
	fmul	f4, f4, f6				# 1102
	fadd	f1, f1, f4				# 1102
	fdiv	f1, f1, f5				# 105
	fsub	f1, f2, f1				# 1102
	stfs	f1, 8(r2)				# 1102
	lfs	f1, 4(r5)				# 1103
	lwz	r7, 36(r6)				# 410
	lfs	f2, 0(r7)				# 415
	fmul	f1, f1, f2				# 1103
	lfs	f2, 0(r5)				# 1103
	lwz	r5, 36(r6)				# 420
	lfs	f4, 4(r5)				# 425
	fmul	f2, f2, f4				# 1103
	fadd	f1, f1, f2				# 1103
	fdiv	f1, f1, f5				# 105
	fsub	f1, f3, f1				# 1103
	stfs	f1, 12(r2)				# 1103
beq_cont.20098:
	lfs	f1, -16(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20099				# 111
	addi	r5, 0, 1				# 111
	b	beq_cont.20100				# 111
beq_else.20099:
	addi	r5, 0, 0				# 111
beq_cont.20100:
	cmpwi	cr7, r5, 0				# 1109
	bne	cr7, beq_else.20101				# 1109
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f1, 0(r31)				# 1110
	fdiv	f0, f1, f0				# 1110
	stfs	f0, 16(r2)				# 1110
	b	beq_cont.20102				# 1109
beq_else.20101:
beq_cont.20102:
	lwz	r5, -8(r3)				# 1128
	slwi	r6, r5, 2				# 1128
	lwz	r7, -4(r3)				# 1128
	stwx	r2, r7, r6				# 1128
beq_cont.20090:
beq_cont.20052:
	addi	r5, r5, -1				# 1130
	lwz	r2, 0(r3)				# 1130
	b	iter_setup_dirvec_constants.2723				# 1130
bge_else.20050:
	blr
setup_startp_constants.2728:
	addis	r6, 0, ha16(objects.2435)
	ori	r6, r6, lo16(objects.2435)				# 1140
	lwz	r6, 0(r6)				# 1140
	cmpwi	cr7, r5, 0				# 1141
	blt	cr7, bge_else.20104				# 1141
	slwi	r7, r5, 2				# 1142
	lwzx	r6, r6, r7				# 1142
	lwz	r7, 40(r6)				# 441
	lwz	r8, 4(r6)				# 252
	lfs	f0, 0(r2)				# 1145
	lwz	r9, 20(r6)				# 330
	lfs	f1, 0(r9)				# 335
	fsub	f0, f0, f1				# 1145
	stfs	f0, 0(r7)				# 1145
	lfs	f0, 4(r2)				# 1146
	lwz	r9, 20(r6)				# 340
	lfs	f1, 4(r9)				# 345
	fsub	f0, f0, f1				# 1146
	stfs	f0, 4(r7)				# 1146
	lfs	f0, 8(r2)				# 1147
	lwz	r9, 20(r6)				# 350
	lfs	f1, 8(r9)				# 355
	fsub	f0, f0, f1				# 1147
	stfs	f0, 8(r7)				# 1147
	cmpwi	cr7, r8, 2				# 1148
	bne	cr7, beq_else.20105				# 1148
	lwz	r6, 16(r6)				# 320
	lfs	f0, 0(r7)				# 1150
	lfs	f1, 4(r7)				# 1150
	lfs	f2, 8(r7)				# 1150
	lfs	f3, 0(r6)				# 200
	fmul	f0, f3, f0				# 200
	lfs	f3, 4(r6)				# 200
	fmul	f1, f3, f1				# 200
	fadd	f0, f0, f1				# 200
	lfs	f1, 8(r6)				# 200
	fmul	f1, f1, f2				# 200
	fadd	f0, f0, f1				# 200
	stfs	f0, 12(r7)				# 1149
	b	beq_cont.20106				# 1148
beq_else.20105:
	cmpwi	cr7, r8, 2				# 1151
	bgt	cr7, ble_else.20107				# 1151
	b	ble_cont.20108				# 1151
ble_else.20107:
	lfs	f0, 0(r7)				# 1152
	lfs	f1, 4(r7)				# 1152
	lfs	f2, 8(r7)				# 1152
	fmul	f3, f0, f0				# 103
	lwz	r9, 16(r6)				# 290
	lfs	f4, 0(r9)				# 295
	fmul	f3, f3, f4				# 836
	fmul	f4, f1, f1				# 103
	lwz	r9, 16(r6)				# 300
	lfs	f5, 4(r9)				# 305
	fmul	f4, f4, f5				# 836
	fadd	f3, f3, f4				# 836
	fmul	f4, f2, f2				# 103
	lwz	r9, 16(r6)				# 310
	lfs	f5, 8(r9)				# 315
	fmul	f4, f4, f5				# 836
	fadd	f3, f3, f4				# 836
	lwz	r9, 12(r6)				# 281
	cmpwi	cr7, r9, 0				# 838
	bne	cr7, beq_else.20109				# 838
	fmr	f0, f3				# 839
	b	beq_cont.20110				# 838
beq_else.20109:
	fmul	f4, f1, f2				# 842
	lwz	r9, 36(r6)				# 410
	lfs	f5, 0(r9)				# 415
	fmul	f4, f4, f5				# 842
	fadd	f3, f3, f4				# 841
	fmul	f2, f2, f0				# 843
	lwz	r9, 36(r6)				# 420
	lfs	f4, 4(r9)				# 425
	fmul	f2, f2, f4				# 843
	fadd	f2, f3, f2				# 841
	fmul	f0, f0, f1				# 844
	lwz	r6, 36(r6)				# 430
	lfs	f1, 8(r6)				# 435
	fmul	f0, f0, f1				# 844
	fadd	f0, f2, f0				# 841
beq_cont.20110:
	cmpwi	cr7, r8, 3				# 1153
	bne	cr7, beq_else.20111				# 1153
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f1, 0(r31)				# 1153
	fsub	f0, f0, f1				# 1153
	b	beq_cont.20112				# 1153
beq_else.20111:
beq_cont.20112:
	stfs	f0, 12(r7)				# 1153
ble_cont.20108:
beq_cont.20106:
	addi	r5, r5, -1				# 1155
	b	setup_startp_constants.2728				# 1155
bge_else.20104:
	blr
check_all_inside.2753:
	addis	r6, 0, ha16(objects.2435)
	ori	r6, r6, lo16(objects.2435)				# 1207
	lwz	r6, 0(r6)				# 1207
	addis	r7, 0, ha16(Td252.5768)
	ori	r7, r7, lo16(Td252.5768)				# 1207
	lfs	f3, 0(r7)				# 1207
	slwi	r7, r2, 2				# 1208
	lwzx	r7, r5, r7				# 1208
	cmpwi	cr7, r7, -1				# 1209
	bne	cr7, beq_else.20114				# 1209
	addi	r2, 0, 1				# 1210
	blr
beq_else.20114:
	slwi	r7, r7, 2				# 1212
	lwzx	r6, r6, r7				# 1212
	lwz	r7, 20(r6)				# 330
	lfs	f4, 0(r7)				# 335
	fsub	f4, f0, f4				# 1194
	lwz	r7, 20(r6)				# 340
	lfs	f5, 4(r7)				# 345
	fsub	f5, f1, f5				# 1195
	lwz	r7, 20(r6)				# 350
	lfs	f6, 8(r7)				# 355
	fsub	f6, f2, f6				# 1196
	lwz	r7, 4(r6)				# 252
	stfs	f2, 0(r3)				# 1198
	stfs	f1, -4(r3)				# 1198
	stfs	f0, -8(r3)				# 1198
	stw	r5, -12(r3)				# 1198
	stw	r2, -16(r3)				# 1198
	cmpwi	cr7, r7, 1				# 1198
	bne	cr7, beq_else.20115				# 1198
	stfs	f6, -20(r3)				# 1171
	stfs	f5, -24(r3)				# 1171
	stw	r6, -28(r3)				# 1171
	mfspr	r31, 8				# 1171
	fmr	f0, f4				# 1171
	stw	r31, -32(r3)				# 1171
	addi	r3, r3, -36				# 1171
	bl	min_caml_fabs				# 1171
	addi	r3, r3, 36				# 1171
	lwz	r31, -32(r3)				# 1171
	mtspr	8, r31				# 1171
	lwz	r2, -28(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lfs	f1, 0(r5)				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20117				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20118				# 109
ble_else.20117:
	addi	r5, 0, 1				# 109
ble_cont.20118:
	cmpwi	cr7, r5, 0				# 1171
	bne	cr7, beq_else.20119				# 1171
	addi	r5, 0, 0				# 1175
	b	beq_cont.20120				# 1171
beq_else.20119:
	lfs	f0, -24(r3)				# 1172
	mfspr	r31, 8				# 1172
	stw	r31, -32(r3)				# 1172
	addi	r3, r3, -36				# 1172
	bl	min_caml_fabs				# 1172
	addi	r3, r3, 36				# 1172
	lwz	r31, -32(r3)				# 1172
	mtspr	8, r31				# 1172
	lwz	r2, -28(r3)				# 300
	lwz	r5, 16(r2)				# 300
	lfs	f1, 4(r5)				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20121				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20122				# 109
ble_else.20121:
	addi	r5, 0, 1				# 109
ble_cont.20122:
	cmpwi	cr7, r5, 0				# 1172
	bne	cr7, beq_else.20123				# 1172
	addi	r5, 0, 0				# 1174
	b	beq_cont.20124				# 1172
beq_else.20123:
	lfs	f0, -20(r3)				# 1173
	mfspr	r31, 8				# 1173
	stw	r31, -32(r3)				# 1173
	addi	r3, r3, -36				# 1173
	bl	min_caml_fabs				# 1173
	addi	r3, r3, 36				# 1173
	lwz	r31, -32(r3)				# 1173
	mtspr	8, r31				# 1173
	lwz	r2, -28(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lfs	f1, 8(r5)				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20125				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20126				# 109
ble_else.20125:
	addi	r5, 0, 1				# 109
ble_cont.20126:
beq_cont.20124:
beq_cont.20120:
	cmpwi	cr7, r5, 0				# 1170
	bne	cr7, beq_else.20127				# 1170
	lwz	r2, 24(r2)				# 272
	cmpwi	cr7, r2, 0				# 1176
	bne	cr7, beq_else.20129				# 1176
	addi	r2, 0, 1				# 1176
	b	beq_cont.20130				# 1176
beq_else.20129:
	addi	r2, 0, 0				# 1176
beq_cont.20130:
	b	beq_cont.20128				# 1170
beq_else.20127:
	lwz	r2, 24(r2)				# 272
beq_cont.20128:
	b	beq_cont.20116				# 1198
beq_else.20115:
	cmpwi	cr7, r7, 2				# 1200
	bne	cr7, beq_else.20131				# 1200
	lwz	r7, 16(r6)				# 320
	lfs	f7, 0(r7)				# 200
	fmul	f4, f7, f4				# 200
	lfs	f7, 4(r7)				# 200
	fmul	f5, f7, f5				# 200
	fadd	f4, f4, f5				# 200
	lfs	f5, 8(r7)				# 200
	fmul	f5, f5, f6				# 200
	fadd	f4, f4, f5				# 200
	lwz	r6, 24(r6)				# 272
	fcmpu	cr7, f3, f4				# 115
	bgt	cr7, ble_else.20133				# 115
	addi	r7, 0, 0				# 115
	b	ble_cont.20134				# 115
ble_else.20133:
	addi	r7, 0, 1				# 115
ble_cont.20134:
	cmpwi	cr7, r6, 0				# 119
	bne	cr7, beq_else.20135				# 119
	mr	r6, r7				# 119
	b	beq_cont.20136				# 119
beq_else.20135:
	cmpwi	cr7, r7, 0				# 119
	bne	cr7, beq_else.20137				# 119
	addi	r6, 0, 1				# 119
	b	beq_cont.20138				# 119
beq_else.20137:
	addi	r6, 0, 0				# 119
beq_cont.20138:
beq_cont.20136:
	cmpwi	cr7, r6, 0				# 1182
	bne	cr7, beq_else.20139				# 1182
	addi	r2, 0, 1				# 1182
	b	beq_cont.20140				# 1182
beq_else.20139:
	addi	r2, 0, 0				# 1182
beq_cont.20140:
	b	beq_cont.20132				# 1200
beq_else.20131:
	fmul	f7, f4, f4				# 103
	lwz	r7, 16(r6)				# 290
	lfs	f8, 0(r7)				# 295
	fmul	f7, f7, f8				# 836
	fmul	f8, f5, f5				# 103
	lwz	r7, 16(r6)				# 300
	lfs	f9, 4(r7)				# 305
	fmul	f8, f8, f9				# 836
	fadd	f7, f7, f8				# 836
	fmul	f8, f6, f6				# 103
	lwz	r7, 16(r6)				# 310
	lfs	f9, 8(r7)				# 315
	fmul	f8, f8, f9				# 836
	fadd	f7, f7, f8				# 836
	lwz	r7, 12(r6)				# 281
	cmpwi	cr7, r7, 0				# 838
	bne	cr7, beq_else.20141				# 838
	fmr	f4, f7				# 839
	b	beq_cont.20142				# 838
beq_else.20141:
	fmul	f8, f5, f6				# 842
	lwz	r7, 36(r6)				# 410
	lfs	f9, 0(r7)				# 415
	fmul	f8, f8, f9				# 842
	fadd	f7, f7, f8				# 841
	fmul	f6, f6, f4				# 843
	lwz	r7, 36(r6)				# 420
	lfs	f8, 4(r7)				# 425
	fmul	f6, f6, f8				# 843
	fadd	f6, f7, f6				# 841
	fmul	f4, f4, f5				# 844
	lwz	r7, 36(r6)				# 430
	lfs	f5, 8(r7)				# 435
	fmul	f4, f4, f5				# 844
	fadd	f4, f6, f4				# 841
beq_cont.20142:
	lwz	r7, 4(r6)				# 252
	cmpwi	cr7, r7, 3				# 1188
	bne	cr7, beq_else.20143				# 1188
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f5, 0(r31)				# 1188
	fsub	f4, f4, f5				# 1188
	b	beq_cont.20144				# 1188
beq_else.20143:
beq_cont.20144:
	lwz	r6, 24(r6)				# 272
	fcmpu	cr7, f3, f4				# 115
	bgt	cr7, ble_else.20145				# 115
	addi	r7, 0, 0				# 115
	b	ble_cont.20146				# 115
ble_else.20145:
	addi	r7, 0, 1				# 115
ble_cont.20146:
	cmpwi	cr7, r6, 0				# 119
	bne	cr7, beq_else.20147				# 119
	mr	r6, r7				# 119
	b	beq_cont.20148				# 119
beq_else.20147:
	cmpwi	cr7, r7, 0				# 119
	bne	cr7, beq_else.20149				# 119
	addi	r6, 0, 1				# 119
	b	beq_cont.20150				# 119
beq_else.20149:
	addi	r6, 0, 0				# 119
beq_cont.20150:
beq_cont.20148:
	cmpwi	cr7, r6, 0				# 1189
	bne	cr7, beq_else.20151				# 1189
	addi	r2, 0, 1				# 1189
	b	beq_cont.20152				# 1189
beq_else.20151:
	addi	r2, 0, 0				# 1189
beq_cont.20152:
beq_cont.20132:
beq_cont.20116:
	cmpwi	cr7, r2, 0				# 1212
	bne	cr7, beq_else.20153				# 1212
	lwz	r2, -16(r3)				# 1215
	addi	r2, r2, 1				# 1215
	lfs	f0, -8(r3)				# 1215
	lfs	f1, -4(r3)				# 1215
	lfs	f2, 0(r3)				# 1215
	lwz	r5, -12(r3)				# 1215
	b	check_all_inside.2753				# 1215
beq_else.20153:
	addi	r2, 0, 0				# 1213
	blr
shadow_check_and_group.2759:
	addis	r6, 0, ha16(v3.5695)
	ori	r6, r6, lo16(v3.5695)				# 1225
	lwz	r6, 0(r6)				# 1225
	addis	r7, 0, ha16(solver_dist.2442)
	ori	r7, r7, lo16(solver_dist.2442)				# 1225
	lwz	r7, 0(r7)				# 1225
	addis	r8, 0, ha16(objects.2435)
	ori	r8, r8, lo16(objects.2435)				# 1225
	lwz	r8, 0(r8)				# 1225
	addis	r9, 0, ha16(light.2438)
	ori	r9, r9, lo16(light.2438)				# 1225
	lwz	r9, 0(r9)				# 1225
	addis	r10, 0, ha16(intersection_point.2445)
	ori	r10, r10, lo16(intersection_point.2445)				# 1225
	lwz	r10, 0(r10)				# 1225
	addis	r11, 0, ha16(consts.5696)
	ori	r11, r11, lo16(consts.5696)				# 1225
	lwz	r11, 0(r11)				# 1225
	addi	r12, 0, 0				# 1225
	addis	r13, 0, ha16(Td252.5768)
	ori	r13, r13, lo16(Td252.5768)				# 1225
	lfs	f0, 0(r13)				# 1225
	slwi	r13, r2, 2				# 1226
	lwzx	r13, r5, r13				# 1226
	cmpwi	cr7, r13, -1				# 1226
	bne	cr7, beq_else.20154				# 1226
	addi	r2, 0, 0				# 1227
	blr
beq_else.20154:
	slwi	r13, r2, 2				# 1229
	lwzx	r13, r5, r13				# 1229
	slwi	r14, r13, 2				# 977
	lwzx	r14, r8, r14				# 977
	lfs	f1, 0(r10)				# 978
	lwz	r15, 20(r14)				# 330
	lfs	f2, 0(r15)				# 335
	fsub	f1, f1, f2				# 978
	lfs	f2, 4(r10)				# 979
	lwz	r15, 20(r14)				# 340
	lfs	f3, 4(r15)				# 345
	fsub	f2, f2, f3				# 979
	lfs	f3, 8(r10)				# 980
	lwz	r15, 20(r14)				# 350
	lfs	f4, 8(r15)				# 355
	fsub	f3, f3, f4				# 980
	slwi	r15, r13, 2				# 982
	lwzx	r11, r11, r15				# 982
	lwz	r15, 4(r14)				# 252
	stw	r12, 0(r3)				# 984
	stw	r10, -4(r3)				# 984
	stw	r9, -8(r3)				# 984
	stw	r5, -12(r3)				# 984
	stw	r2, -16(r3)				# 984
	stw	r8, -20(r3)				# 984
	stw	r13, -24(r3)				# 984
	stw	r7, -28(r3)				# 984
	cmpwi	cr7, r15, 1				# 984
	bne	cr7, beq_else.20155				# 984
	lfs	f4, 0(r11)				# 915
	fsub	f4, f4, f1				# 915
	lfs	f5, 4(r11)				# 915
	fmul	f4, f4, f5				# 915
	lfs	f5, 4(r6)				# 917
	fmul	f5, f4, f5				# 917
	fadd	f5, f5, f2				# 917
	stfs	f1, -32(r3)				# 917
	stfs	f2, -36(r3)				# 917
	stfs	f0, -40(r3)				# 917
	stw	r11, -44(r3)				# 917
	stfs	f3, -48(r3)				# 917
	stfs	f4, -52(r3)				# 917
	stw	r6, -56(r3)				# 917
	stw	r14, -60(r3)				# 917
	mfspr	r31, 8				# 917
	fmr	f0, f5				# 917
	stw	r31, -64(r3)				# 917
	addi	r3, r3, -68				# 917
	bl	min_caml_fabs				# 917
	addi	r3, r3, 68				# 917
	lwz	r31, -64(r3)				# 917
	mtspr	8, r31				# 917
	lwz	r2, -60(r3)				# 300
	lwz	r5, 16(r2)				# 300
	lfs	f1, 4(r5)				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20157				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20158				# 109
ble_else.20157:
	addi	r5, 0, 1				# 109
ble_cont.20158:
	cmpwi	cr7, r5, 0				# 917
	bne	cr7, beq_else.20159				# 917
	addi	r5, 0, 0				# 921
	b	beq_cont.20160				# 917
beq_else.20159:
	lwz	r5, -56(r3)				# 918
	lfs	f0, 8(r5)				# 918
	lfs	f1, -52(r3)				# 918
	fmul	f0, f1, f0				# 918
	lfs	f2, -48(r3)				# 918
	fadd	f0, f0, f2				# 918
	mfspr	r31, 8				# 918
	stw	r31, -64(r3)				# 918
	addi	r3, r3, -68				# 918
	bl	min_caml_fabs				# 918
	addi	r3, r3, 68				# 918
	lwz	r31, -64(r3)				# 918
	mtspr	8, r31				# 918
	lwz	r2, -60(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lfs	f1, 8(r5)				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20161				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20162				# 109
ble_else.20161:
	addi	r5, 0, 1				# 109
ble_cont.20162:
	cmpwi	cr7, r5, 0				# 918
	bne	cr7, beq_else.20163				# 918
	addi	r5, 0, 0				# 920
	b	beq_cont.20164				# 918
beq_else.20163:
	lwz	r5, -44(r3)				# 919
	lfs	f0, 4(r5)				# 919
	lfs	f1, -40(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20165				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20166				# 111
beq_else.20165:
	addi	r6, 0, 0				# 111
beq_cont.20166:
	cmpwi	cr7, r6, 0				# 919
	bne	cr7, beq_else.20167				# 919
	addi	r5, 0, 1				# 919
	b	beq_cont.20168				# 919
beq_else.20167:
	addi	r5, 0, 0				# 919
beq_cont.20168:
beq_cont.20164:
beq_cont.20160:
	cmpwi	cr7, r5, 0				# 916
	bne	cr7, beq_else.20169				# 916
	lwz	r5, -44(r3)				# 924
	lfs	f0, 8(r5)				# 924
	lfs	f1, -36(r3)				# 924
	fsub	f0, f0, f1				# 924
	lfs	f2, 12(r5)				# 924
	fmul	f0, f0, f2				# 924
	lwz	r6, -56(r3)				# 926
	lfs	f2, 0(r6)				# 926
	fmul	f2, f0, f2				# 926
	lfs	f3, -32(r3)				# 926
	fadd	f2, f2, f3				# 926
	stfs	f0, -64(r3)				# 926
	mfspr	r31, 8				# 926
	fmr	f0, f2				# 926
	stw	r31, -68(r3)				# 926
	addi	r3, r3, -72				# 926
	bl	min_caml_fabs				# 926
	addi	r3, r3, 72				# 926
	lwz	r31, -68(r3)				# 926
	mtspr	8, r31				# 926
	lwz	r2, -60(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lfs	f1, 0(r5)				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20171				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20172				# 109
ble_else.20171:
	addi	r5, 0, 1				# 109
ble_cont.20172:
	cmpwi	cr7, r5, 0				# 926
	bne	cr7, beq_else.20173				# 926
	addi	r5, 0, 0				# 930
	b	beq_cont.20174				# 926
beq_else.20173:
	lwz	r5, -56(r3)				# 927
	lfs	f0, 8(r5)				# 927
	lfs	f1, -64(r3)				# 927
	fmul	f0, f1, f0				# 927
	lfs	f2, -48(r3)				# 927
	fadd	f0, f0, f2				# 927
	mfspr	r31, 8				# 927
	stw	r31, -68(r3)				# 927
	addi	r3, r3, -72				# 927
	bl	min_caml_fabs				# 927
	addi	r3, r3, 72				# 927
	lwz	r31, -68(r3)				# 927
	mtspr	8, r31				# 927
	lwz	r2, -60(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lfs	f1, 8(r5)				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20175				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20176				# 109
ble_else.20175:
	addi	r5, 0, 1				# 109
ble_cont.20176:
	cmpwi	cr7, r5, 0				# 927
	bne	cr7, beq_else.20177				# 927
	addi	r5, 0, 0				# 929
	b	beq_cont.20178				# 927
beq_else.20177:
	lwz	r5, -44(r3)				# 928
	lfs	f0, 12(r5)				# 928
	lfs	f1, -40(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20179				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20180				# 111
beq_else.20179:
	addi	r6, 0, 0				# 111
beq_cont.20180:
	cmpwi	cr7, r6, 0				# 928
	bne	cr7, beq_else.20181				# 928
	addi	r5, 0, 1				# 928
	b	beq_cont.20182				# 928
beq_else.20181:
	addi	r5, 0, 0				# 928
beq_cont.20182:
beq_cont.20178:
beq_cont.20174:
	cmpwi	cr7, r5, 0				# 925
	bne	cr7, beq_else.20183				# 925
	lwz	r5, -44(r3)				# 933
	lfs	f0, 16(r5)				# 933
	lfs	f1, -48(r3)				# 933
	fsub	f0, f0, f1				# 933
	lfs	f1, 20(r5)				# 933
	fmul	f0, f0, f1				# 933
	lwz	r6, -56(r3)				# 935
	lfs	f1, 0(r6)				# 935
	fmul	f1, f0, f1				# 935
	lfs	f2, -32(r3)				# 935
	fadd	f1, f1, f2				# 935
	stfs	f0, -68(r3)				# 935
	mfspr	r31, 8				# 935
	fmr	f0, f1				# 935
	stw	r31, -72(r3)				# 935
	addi	r3, r3, -76				# 935
	bl	min_caml_fabs				# 935
	addi	r3, r3, 76				# 935
	lwz	r31, -72(r3)				# 935
	mtspr	8, r31				# 935
	lwz	r2, -60(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lfs	f1, 0(r5)				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20185				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20186				# 109
ble_else.20185:
	addi	r5, 0, 1				# 109
ble_cont.20186:
	cmpwi	cr7, r5, 0				# 935
	bne	cr7, beq_else.20187				# 935
	addi	r2, 0, 0				# 939
	b	beq_cont.20188				# 935
beq_else.20187:
	lwz	r5, -56(r3)				# 936
	lfs	f0, 4(r5)				# 936
	lfs	f1, -68(r3)				# 936
	fmul	f0, f1, f0				# 936
	lfs	f2, -36(r3)				# 936
	fadd	f0, f0, f2				# 936
	mfspr	r31, 8				# 936
	stw	r31, -72(r3)				# 936
	addi	r3, r3, -76				# 936
	bl	min_caml_fabs				# 936
	addi	r3, r3, 76				# 936
	lwz	r31, -72(r3)				# 936
	mtspr	8, r31				# 936
	lwz	r2, -60(r3)				# 300
	lwz	r2, 16(r2)				# 300
	lfs	f1, 4(r2)				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20189				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20190				# 109
ble_else.20189:
	addi	r2, 0, 1				# 109
ble_cont.20190:
	cmpwi	cr7, r2, 0				# 936
	bne	cr7, beq_else.20191				# 936
	addi	r2, 0, 0				# 938
	b	beq_cont.20192				# 936
beq_else.20191:
	lwz	r2, -44(r3)				# 937
	lfs	f0, 20(r2)				# 937
	lfs	f1, -40(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20193				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20194				# 111
beq_else.20193:
	addi	r2, 0, 0				# 111
beq_cont.20194:
	cmpwi	cr7, r2, 0				# 937
	bne	cr7, beq_else.20195				# 937
	addi	r2, 0, 1				# 937
	b	beq_cont.20196				# 937
beq_else.20195:
	addi	r2, 0, 0				# 937
beq_cont.20196:
beq_cont.20192:
beq_cont.20188:
	cmpwi	cr7, r2, 0				# 934
	bne	cr7, beq_else.20197				# 934
	addi	r2, 0, 0				# 943
	b	beq_cont.20198				# 934
beq_else.20197:
	lwz	r2, -28(r3)				# 941
	lfs	f0, -68(r3)				# 941
	stfs	f0, 0(r2)				# 941
	addi	r2, 0, 3				# 941
beq_cont.20198:
	b	beq_cont.20184				# 925
beq_else.20183:
	lwz	r2, -28(r3)				# 932
	lfs	f0, -64(r3)				# 932
	stfs	f0, 0(r2)				# 932
	addi	r2, 0, 2				# 932
beq_cont.20184:
	b	beq_cont.20170				# 916
beq_else.20169:
	lwz	r2, -28(r3)				# 923
	lfs	f0, -52(r3)				# 923
	stfs	f0, 0(r2)				# 923
	addi	r2, 0, 1				# 923
beq_cont.20170:
	b	beq_cont.20156				# 984
beq_else.20155:
	cmpwi	cr7, r15, 2				# 986
	bne	cr7, beq_else.20199				# 986
	lfs	f4, 0(r11)				# 948
	fcmpu	cr7, f0, f4				# 115
	bgt	cr7, ble_else.20201				# 115
	addi	r6, 0, 0				# 115
	b	ble_cont.20202				# 115
ble_else.20201:
	addi	r6, 0, 1				# 115
ble_cont.20202:
	cmpwi	cr7, r6, 0				# 948
	bne	cr7, beq_else.20203				# 948
	addi	r2, 0, 0				# 952
	b	beq_cont.20204				# 948
beq_else.20203:
	lfs	f0, 4(r11)				# 950
	fmul	f0, f0, f1				# 950
	lfs	f1, 8(r11)				# 950
	fmul	f1, f1, f2				# 950
	fadd	f0, f0, f1				# 950
	lfs	f1, 12(r11)				# 950
	fmul	f1, f1, f3				# 950
	fadd	f0, f0, f1				# 950
	stfs	f0, 0(r7)				# 949
	addi	r2, 0, 1				# 951
beq_cont.20204:
	b	beq_cont.20200				# 986
beq_else.20199:
	lfs	f4, 0(r11)				# 958
	fcmpu	cr7, f4, f0				# 111
	bne	cr7, beq_else.20205				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20206				# 111
beq_else.20205:
	addi	r6, 0, 0				# 111
beq_cont.20206:
	cmpwi	cr7, r6, 0				# 959
	bne	cr7, beq_else.20207				# 959
	lfs	f5, 4(r11)				# 962
	fmul	f5, f5, f1				# 962
	lfs	f6, 8(r11)				# 962
	fmul	f6, f6, f2				# 962
	fadd	f5, f5, f6				# 962
	lfs	f6, 12(r11)				# 962
	fmul	f6, f6, f3				# 962
	fadd	f5, f5, f6				# 962
	fmul	f6, f1, f1				# 103
	lwz	r6, 16(r14)				# 290
	lfs	f7, 0(r6)				# 295
	fmul	f6, f6, f7				# 836
	fmul	f7, f2, f2				# 103
	lwz	r6, 16(r14)				# 300
	lfs	f8, 4(r6)				# 305
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	fmul	f7, f3, f3				# 103
	lwz	r6, 16(r14)				# 310
	lfs	f8, 8(r6)				# 315
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	lwz	r6, 12(r14)				# 281
	cmpwi	cr7, r6, 0				# 838
	bne	cr7, beq_else.20209				# 838
	fmr	f1, f6				# 839
	b	beq_cont.20210				# 838
beq_else.20209:
	fmul	f7, f2, f3				# 842
	lwz	r6, 36(r14)				# 410
	lfs	f8, 0(r6)				# 415
	fmul	f7, f7, f8				# 842
	fadd	f6, f6, f7				# 841
	fmul	f3, f3, f1				# 843
	lwz	r6, 36(r14)				# 420
	lfs	f7, 4(r6)				# 425
	fmul	f3, f3, f7				# 843
	fadd	f3, f6, f3				# 841
	fmul	f1, f1, f2				# 844
	lwz	r6, 36(r14)				# 430
	lfs	f2, 8(r6)				# 435
	fmul	f1, f1, f2				# 844
	fadd	f1, f3, f1				# 841
beq_cont.20210:
	lwz	r6, 4(r14)				# 252
	cmpwi	cr7, r6, 3				# 964
	bne	cr7, beq_else.20211				# 964
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 964
	fsub	f1, f1, f2				# 964
	b	beq_cont.20212				# 964
beq_else.20211:
beq_cont.20212:
	fmul	f2, f5, f5				# 103
	fmul	f1, f4, f1				# 965
	fsub	f1, f2, f1				# 965
	fcmpu	cr7, f1, f0				# 113
	bgt	cr7, ble_else.20213				# 113
	addi	r6, 0, 0				# 113
	b	ble_cont.20214				# 113
ble_else.20213:
	addi	r6, 0, 1				# 113
ble_cont.20214:
	cmpwi	cr7, r6, 0				# 966
	bne	cr7, beq_else.20215				# 966
	addi	r2, 0, 0				# 972
	b	beq_cont.20216				# 966
beq_else.20215:
	lwz	r6, 24(r14)				# 272
	cmpwi	cr7, r6, 0				# 967
	bne	cr7, beq_else.20217				# 967
	stw	r11, -44(r3)				# 970
	stfs	f5, -72(r3)				# 970
	mfspr	r31, 8				# 970
	fmr	f0, f1				# 970
	stw	r31, -76(r3)				# 970
	addi	r3, r3, -80				# 970
	bl	min_caml_sqrt				# 970
	addi	r3, r3, 80				# 970
	lwz	r31, -76(r3)				# 970
	mtspr	8, r31				# 970
	lfs	f1, -72(r3)				# 970
	fsub	f0, f1, f0				# 970
	lwz	r2, -44(r3)				# 970
	lfs	f1, 16(r2)				# 970
	fmul	f0, f0, f1				# 970
	lwz	r2, -28(r3)				# 970
	stfs	f0, 0(r2)				# 970
	b	beq_cont.20218				# 967
beq_else.20217:
	stw	r11, -44(r3)				# 968
	stfs	f5, -72(r3)				# 968
	mfspr	r31, 8				# 968
	fmr	f0, f1				# 968
	stw	r31, -76(r3)				# 968
	addi	r3, r3, -80				# 968
	bl	min_caml_sqrt				# 968
	addi	r3, r3, 80				# 968
	lwz	r31, -76(r3)				# 968
	mtspr	8, r31				# 968
	lfs	f1, -72(r3)				# 968
	fadd	f0, f1, f0				# 968
	lwz	r2, -44(r3)				# 968
	lfs	f1, 16(r2)				# 968
	fmul	f0, f0, f1				# 968
	lwz	r2, -28(r3)				# 968
	stfs	f0, 0(r2)				# 968
beq_cont.20218:
	addi	r2, 0, 1				# 971
beq_cont.20216:
	b	beq_cont.20208				# 959
beq_else.20207:
	addi	r2, 0, 0				# 960
beq_cont.20208:
beq_cont.20200:
beq_cont.20156:
	lwz	r5, -28(r3)				# 1231
	lfs	f0, 0(r5)				# 1231
	cmpwi	cr7, r2, 0				# 1232
	bne	cr7, beq_else.20219				# 1232
	addi	r2, 0, 0				# 1232
	b	beq_cont.20220				# 1232
beq_else.20219:
	addis	r31, 0, ha16(l.16332)
	ori	r31, r31, lo16(l.16332)
	lfs	f1, 0(r31)				# 1232
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20221				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20222				# 109
ble_else.20221:
	addi	r2, 0, 1				# 109
ble_cont.20222:
beq_cont.20220:
	cmpwi	cr7, r2, 0				# 1232
	bne	cr7, beq_else.20223				# 1232
	lwz	r2, -24(r3)				# 1248
	slwi	r2, r2, 2				# 1248
	lwz	r5, -20(r3)				# 1248
	lwzx	r2, r5, r2				# 1248
	lwz	r2, 24(r2)				# 272
	cmpwi	cr7, r2, 0				# 1248
	bne	cr7, beq_else.20224				# 1248
	addi	r2, 0, 0				# 1251
	blr
beq_else.20224:
	lwz	r2, -16(r3)				# 1249
	addi	r2, r2, 1				# 1249
	lwz	r5, -12(r3)				# 1249
	b	shadow_check_and_group.2759				# 1249
beq_else.20223:
	addis	r31, 0, ha16(l.16333)
	ori	r31, r31, lo16(l.16333)
	lfs	f1, 0(r31)				# 1235
	fadd	f0, f0, f1				# 1235
	lwz	r2, -8(r3)				# 1236
	lfs	f1, 0(r2)				# 1236
	fmul	f1, f1, f0				# 1236
	lwz	r5, -4(r3)				# 1236
	lfs	f2, 0(r5)				# 1236
	fadd	f1, f1, f2				# 1236
	lfs	f2, 4(r2)				# 1237
	fmul	f2, f2, f0				# 1237
	lfs	f3, 4(r5)				# 1237
	fadd	f2, f2, f3				# 1237
	lfs	f3, 8(r2)				# 1238
	fmul	f0, f3, f0				# 1238
	lfs	f3, 8(r5)				# 1238
	fadd	f0, f0, f3				# 1238
	lwz	r2, 0(r3)				# 1239
	lwz	r5, -12(r3)				# 1239
	mfspr	r31, 8				# 1239
	fmr	f31, f2				# 1239
	fmr	f2, f0				# 1239
	fmr	f0, f1				# 1239
	fmr	f1, f31				# 1239
	stw	r31, -76(r3)				# 1239
	addi	r3, r3, -80				# 1239
	bl	check_all_inside.2753				# 1239
	addi	r3, r3, 80				# 1239
	lwz	r31, -76(r3)				# 1239
	mtspr	8, r31				# 1239
	cmpwi	cr7, r2, 0				# 1239
	bne	cr7, beq_else.20225				# 1239
	lwz	r2, -16(r3)				# 1242
	addi	r2, r2, 1				# 1242
	lwz	r5, -12(r3)				# 1242
	b	shadow_check_and_group.2759				# 1242
beq_else.20225:
	addi	r2, 0, 1				# 1240
	blr
shadow_check_one_or_group.2762:
	addis	r6, 0, ha16(and_net.2440)
	ori	r6, r6, lo16(and_net.2440)				# 1255
	lwz	r6, 0(r6)				# 1255
	addi	r7, 0, 0				# 1255
	slwi	r8, r2, 2				# 1256
	lwzx	r8, r5, r8				# 1256
	cmpwi	cr7, r8, -1				# 1257
	bne	cr7, beq_else.20226				# 1257
	addi	r2, 0, 0				# 1258
	blr
beq_else.20226:
	slwi	r8, r8, 2				# 1260
	lwzx	r6, r6, r8				# 1260
	stw	r5, 0(r3)				# 1261
	stw	r2, -4(r3)				# 1261
	mfspr	r31, 8				# 1261
	mr	r5, r6				# 1261
	mr	r2, r7				# 1261
	stw	r31, -8(r3)				# 1261
	addi	r3, r3, -12				# 1261
	bl	shadow_check_and_group.2759				# 1261
	addi	r3, r3, 12				# 1261
	lwz	r31, -8(r3)				# 1261
	mtspr	8, r31				# 1261
	cmpwi	cr7, r2, 0				# 1262
	bne	cr7, beq_else.20227				# 1262
	lwz	r2, -4(r3)				# 1265
	addi	r2, r2, 1				# 1265
	lwz	r5, 0(r3)				# 1265
	b	shadow_check_one_or_group.2762				# 1265
beq_else.20227:
	addi	r2, 0, 1				# 1263
	blr
shadow_check_one_or_matrix.2765:
	addis	r6, 0, ha16(v3.5695)
	ori	r6, r6, lo16(v3.5695)				# 1270
	lwz	r6, 0(r6)				# 1270
	addis	r7, 0, ha16(solver_dist.2442)
	ori	r7, r7, lo16(solver_dist.2442)				# 1270
	lwz	r7, 0(r7)				# 1270
	addis	r8, 0, ha16(objects.2435)
	ori	r8, r8, lo16(objects.2435)				# 1270
	lwz	r8, 0(r8)				# 1270
	addis	r9, 0, ha16(intersection_point.2445)
	ori	r9, r9, lo16(intersection_point.2445)				# 1270
	lwz	r9, 0(r9)				# 1270
	addis	r10, 0, ha16(consts.5696)
	ori	r10, r10, lo16(consts.5696)				# 1270
	lwz	r10, 0(r10)				# 1270
	addi	r11, 0, 1				# 1270
	addis	r12, 0, ha16(Td252.5768)
	ori	r12, r12, lo16(Td252.5768)				# 1270
	lfs	f0, 0(r12)				# 1270
	slwi	r12, r2, 2				# 1271
	lwzx	r12, r5, r12				# 1271
	lwz	r13, 0(r12)				# 1272
	cmpwi	cr7, r13, -1				# 1273
	bne	cr7, beq_else.20228				# 1273
	addi	r2, 0, 0				# 1274
	blr
beq_else.20228:
	stw	r12, 0(r3)				# 1277
	stw	r11, -4(r3)				# 1277
	stw	r5, -8(r3)				# 1277
	stw	r2, -12(r3)				# 1277
	cmpwi	cr7, r13, 99				# 1277
	bne	cr7, beq_else.20229				# 1277
	addi	r2, 0, 1				# 1278
	b	beq_cont.20230				# 1277
beq_else.20229:
	slwi	r14, r13, 2				# 977
	lwzx	r8, r8, r14				# 977
	lfs	f1, 0(r9)				# 978
	lwz	r14, 20(r8)				# 330
	lfs	f2, 0(r14)				# 335
	fsub	f1, f1, f2				# 978
	lfs	f2, 4(r9)				# 979
	lwz	r14, 20(r8)				# 340
	lfs	f3, 4(r14)				# 345
	fsub	f2, f2, f3				# 979
	lfs	f3, 8(r9)				# 980
	lwz	r9, 20(r8)				# 350
	lfs	f4, 8(r9)				# 355
	fsub	f3, f3, f4				# 980
	slwi	r9, r13, 2				# 982
	lwzx	r9, r10, r9				# 982
	lwz	r10, 4(r8)				# 252
	stw	r7, -16(r3)				# 984
	cmpwi	cr7, r10, 1				# 984
	bne	cr7, beq_else.20231				# 984
	lfs	f4, 0(r9)				# 915
	fsub	f4, f4, f1				# 915
	lfs	f5, 4(r9)				# 915
	fmul	f4, f4, f5				# 915
	lfs	f5, 4(r6)				# 917
	fmul	f5, f4, f5				# 917
	fadd	f5, f5, f2				# 917
	stfs	f1, -20(r3)				# 917
	stfs	f2, -24(r3)				# 917
	stfs	f0, -28(r3)				# 917
	stw	r9, -32(r3)				# 917
	stfs	f3, -36(r3)				# 917
	stfs	f4, -40(r3)				# 917
	stw	r6, -44(r3)				# 917
	stw	r8, -48(r3)				# 917
	mfspr	r31, 8				# 917
	fmr	f0, f5				# 917
	stw	r31, -52(r3)				# 917
	addi	r3, r3, -56				# 917
	bl	min_caml_fabs				# 917
	addi	r3, r3, 56				# 917
	lwz	r31, -52(r3)				# 917
	mtspr	8, r31				# 917
	lwz	r2, -48(r3)				# 300
	lwz	r5, 16(r2)				# 300
	lfs	f1, 4(r5)				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20233				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20234				# 109
ble_else.20233:
	addi	r5, 0, 1				# 109
ble_cont.20234:
	cmpwi	cr7, r5, 0				# 917
	bne	cr7, beq_else.20235				# 917
	addi	r5, 0, 0				# 921
	b	beq_cont.20236				# 917
beq_else.20235:
	lwz	r5, -44(r3)				# 918
	lfs	f0, 8(r5)				# 918
	lfs	f1, -40(r3)				# 918
	fmul	f0, f1, f0				# 918
	lfs	f2, -36(r3)				# 918
	fadd	f0, f0, f2				# 918
	mfspr	r31, 8				# 918
	stw	r31, -52(r3)				# 918
	addi	r3, r3, -56				# 918
	bl	min_caml_fabs				# 918
	addi	r3, r3, 56				# 918
	lwz	r31, -52(r3)				# 918
	mtspr	8, r31				# 918
	lwz	r2, -48(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lfs	f1, 8(r5)				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20237				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20238				# 109
ble_else.20237:
	addi	r5, 0, 1				# 109
ble_cont.20238:
	cmpwi	cr7, r5, 0				# 918
	bne	cr7, beq_else.20239				# 918
	addi	r5, 0, 0				# 920
	b	beq_cont.20240				# 918
beq_else.20239:
	lwz	r5, -32(r3)				# 919
	lfs	f0, 4(r5)				# 919
	lfs	f1, -28(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20241				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20242				# 111
beq_else.20241:
	addi	r6, 0, 0				# 111
beq_cont.20242:
	cmpwi	cr7, r6, 0				# 919
	bne	cr7, beq_else.20243				# 919
	addi	r5, 0, 1				# 919
	b	beq_cont.20244				# 919
beq_else.20243:
	addi	r5, 0, 0				# 919
beq_cont.20244:
beq_cont.20240:
beq_cont.20236:
	cmpwi	cr7, r5, 0				# 916
	bne	cr7, beq_else.20245				# 916
	lwz	r5, -32(r3)				# 924
	lfs	f0, 8(r5)				# 924
	lfs	f1, -24(r3)				# 924
	fsub	f0, f0, f1				# 924
	lfs	f2, 12(r5)				# 924
	fmul	f0, f0, f2				# 924
	lwz	r6, -44(r3)				# 926
	lfs	f2, 0(r6)				# 926
	fmul	f2, f0, f2				# 926
	lfs	f3, -20(r3)				# 926
	fadd	f2, f2, f3				# 926
	stfs	f0, -52(r3)				# 926
	mfspr	r31, 8				# 926
	fmr	f0, f2				# 926
	stw	r31, -56(r3)				# 926
	addi	r3, r3, -60				# 926
	bl	min_caml_fabs				# 926
	addi	r3, r3, 60				# 926
	lwz	r31, -56(r3)				# 926
	mtspr	8, r31				# 926
	lwz	r2, -48(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lfs	f1, 0(r5)				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20247				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20248				# 109
ble_else.20247:
	addi	r5, 0, 1				# 109
ble_cont.20248:
	cmpwi	cr7, r5, 0				# 926
	bne	cr7, beq_else.20249				# 926
	addi	r5, 0, 0				# 930
	b	beq_cont.20250				# 926
beq_else.20249:
	lwz	r5, -44(r3)				# 927
	lfs	f0, 8(r5)				# 927
	lfs	f1, -52(r3)				# 927
	fmul	f0, f1, f0				# 927
	lfs	f2, -36(r3)				# 927
	fadd	f0, f0, f2				# 927
	mfspr	r31, 8				# 927
	stw	r31, -56(r3)				# 927
	addi	r3, r3, -60				# 927
	bl	min_caml_fabs				# 927
	addi	r3, r3, 60				# 927
	lwz	r31, -56(r3)				# 927
	mtspr	8, r31				# 927
	lwz	r2, -48(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lfs	f1, 8(r5)				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20251				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20252				# 109
ble_else.20251:
	addi	r5, 0, 1				# 109
ble_cont.20252:
	cmpwi	cr7, r5, 0				# 927
	bne	cr7, beq_else.20253				# 927
	addi	r5, 0, 0				# 929
	b	beq_cont.20254				# 927
beq_else.20253:
	lwz	r5, -32(r3)				# 928
	lfs	f0, 12(r5)				# 928
	lfs	f1, -28(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20255				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20256				# 111
beq_else.20255:
	addi	r6, 0, 0				# 111
beq_cont.20256:
	cmpwi	cr7, r6, 0				# 928
	bne	cr7, beq_else.20257				# 928
	addi	r5, 0, 1				# 928
	b	beq_cont.20258				# 928
beq_else.20257:
	addi	r5, 0, 0				# 928
beq_cont.20258:
beq_cont.20254:
beq_cont.20250:
	cmpwi	cr7, r5, 0				# 925
	bne	cr7, beq_else.20259				# 925
	lwz	r5, -32(r3)				# 933
	lfs	f0, 16(r5)				# 933
	lfs	f1, -36(r3)				# 933
	fsub	f0, f0, f1				# 933
	lfs	f1, 20(r5)				# 933
	fmul	f0, f0, f1				# 933
	lwz	r6, -44(r3)				# 935
	lfs	f1, 0(r6)				# 935
	fmul	f1, f0, f1				# 935
	lfs	f2, -20(r3)				# 935
	fadd	f1, f1, f2				# 935
	stfs	f0, -56(r3)				# 935
	mfspr	r31, 8				# 935
	fmr	f0, f1				# 935
	stw	r31, -60(r3)				# 935
	addi	r3, r3, -64				# 935
	bl	min_caml_fabs				# 935
	addi	r3, r3, 64				# 935
	lwz	r31, -60(r3)				# 935
	mtspr	8, r31				# 935
	lwz	r2, -48(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lfs	f1, 0(r5)				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20261				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20262				# 109
ble_else.20261:
	addi	r5, 0, 1				# 109
ble_cont.20262:
	cmpwi	cr7, r5, 0				# 935
	bne	cr7, beq_else.20263				# 935
	addi	r2, 0, 0				# 939
	b	beq_cont.20264				# 935
beq_else.20263:
	lwz	r5, -44(r3)				# 936
	lfs	f0, 4(r5)				# 936
	lfs	f1, -56(r3)				# 936
	fmul	f0, f1, f0				# 936
	lfs	f2, -24(r3)				# 936
	fadd	f0, f0, f2				# 936
	mfspr	r31, 8				# 936
	stw	r31, -60(r3)				# 936
	addi	r3, r3, -64				# 936
	bl	min_caml_fabs				# 936
	addi	r3, r3, 64				# 936
	lwz	r31, -60(r3)				# 936
	mtspr	8, r31				# 936
	lwz	r2, -48(r3)				# 300
	lwz	r2, 16(r2)				# 300
	lfs	f1, 4(r2)				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20265				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20266				# 109
ble_else.20265:
	addi	r2, 0, 1				# 109
ble_cont.20266:
	cmpwi	cr7, r2, 0				# 936
	bne	cr7, beq_else.20267				# 936
	addi	r2, 0, 0				# 938
	b	beq_cont.20268				# 936
beq_else.20267:
	lwz	r2, -32(r3)				# 937
	lfs	f0, 20(r2)				# 937
	lfs	f1, -28(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20269				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20270				# 111
beq_else.20269:
	addi	r2, 0, 0				# 111
beq_cont.20270:
	cmpwi	cr7, r2, 0				# 937
	bne	cr7, beq_else.20271				# 937
	addi	r2, 0, 1				# 937
	b	beq_cont.20272				# 937
beq_else.20271:
	addi	r2, 0, 0				# 937
beq_cont.20272:
beq_cont.20268:
beq_cont.20264:
	cmpwi	cr7, r2, 0				# 934
	bne	cr7, beq_else.20273				# 934
	addi	r2, 0, 0				# 943
	b	beq_cont.20274				# 934
beq_else.20273:
	lwz	r2, -16(r3)				# 941
	lfs	f0, -56(r3)				# 941
	stfs	f0, 0(r2)				# 941
	addi	r2, 0, 3				# 941
beq_cont.20274:
	b	beq_cont.20260				# 925
beq_else.20259:
	lwz	r2, -16(r3)				# 932
	lfs	f0, -52(r3)				# 932
	stfs	f0, 0(r2)				# 932
	addi	r2, 0, 2				# 932
beq_cont.20260:
	b	beq_cont.20246				# 916
beq_else.20245:
	lwz	r2, -16(r3)				# 923
	lfs	f0, -40(r3)				# 923
	stfs	f0, 0(r2)				# 923
	addi	r2, 0, 1				# 923
beq_cont.20246:
	b	beq_cont.20232				# 984
beq_else.20231:
	cmpwi	cr7, r10, 2				# 986
	bne	cr7, beq_else.20275				# 986
	lfs	f4, 0(r9)				# 948
	fcmpu	cr7, f0, f4				# 115
	bgt	cr7, ble_else.20277				# 115
	addi	r6, 0, 0				# 115
	b	ble_cont.20278				# 115
ble_else.20277:
	addi	r6, 0, 1				# 115
ble_cont.20278:
	cmpwi	cr7, r6, 0				# 948
	bne	cr7, beq_else.20279				# 948
	addi	r2, 0, 0				# 952
	b	beq_cont.20280				# 948
beq_else.20279:
	lfs	f0, 4(r9)				# 950
	fmul	f0, f0, f1				# 950
	lfs	f1, 8(r9)				# 950
	fmul	f1, f1, f2				# 950
	fadd	f0, f0, f1				# 950
	lfs	f1, 12(r9)				# 950
	fmul	f1, f1, f3				# 950
	fadd	f0, f0, f1				# 950
	stfs	f0, 0(r7)				# 949
	addi	r2, 0, 1				# 951
beq_cont.20280:
	b	beq_cont.20276				# 986
beq_else.20275:
	lfs	f4, 0(r9)				# 958
	fcmpu	cr7, f4, f0				# 111
	bne	cr7, beq_else.20281				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20282				# 111
beq_else.20281:
	addi	r6, 0, 0				# 111
beq_cont.20282:
	cmpwi	cr7, r6, 0				# 959
	bne	cr7, beq_else.20283				# 959
	lfs	f5, 4(r9)				# 962
	fmul	f5, f5, f1				# 962
	lfs	f6, 8(r9)				# 962
	fmul	f6, f6, f2				# 962
	fadd	f5, f5, f6				# 962
	lfs	f6, 12(r9)				# 962
	fmul	f6, f6, f3				# 962
	fadd	f5, f5, f6				# 962
	fmul	f6, f1, f1				# 103
	lwz	r6, 16(r8)				# 290
	lfs	f7, 0(r6)				# 295
	fmul	f6, f6, f7				# 836
	fmul	f7, f2, f2				# 103
	lwz	r6, 16(r8)				# 300
	lfs	f8, 4(r6)				# 305
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	fmul	f7, f3, f3				# 103
	lwz	r6, 16(r8)				# 310
	lfs	f8, 8(r6)				# 315
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	lwz	r6, 12(r8)				# 281
	cmpwi	cr7, r6, 0				# 838
	bne	cr7, beq_else.20285				# 838
	fmr	f1, f6				# 839
	b	beq_cont.20286				# 838
beq_else.20285:
	fmul	f7, f2, f3				# 842
	lwz	r6, 36(r8)				# 410
	lfs	f8, 0(r6)				# 415
	fmul	f7, f7, f8				# 842
	fadd	f6, f6, f7				# 841
	fmul	f3, f3, f1				# 843
	lwz	r6, 36(r8)				# 420
	lfs	f7, 4(r6)				# 425
	fmul	f3, f3, f7				# 843
	fadd	f3, f6, f3				# 841
	fmul	f1, f1, f2				# 844
	lwz	r6, 36(r8)				# 430
	lfs	f2, 8(r6)				# 435
	fmul	f1, f1, f2				# 844
	fadd	f1, f3, f1				# 841
beq_cont.20286:
	lwz	r6, 4(r8)				# 252
	cmpwi	cr7, r6, 3				# 964
	bne	cr7, beq_else.20287				# 964
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 964
	fsub	f1, f1, f2				# 964
	b	beq_cont.20288				# 964
beq_else.20287:
beq_cont.20288:
	fmul	f2, f5, f5				# 103
	fmul	f1, f4, f1				# 965
	fsub	f1, f2, f1				# 965
	fcmpu	cr7, f1, f0				# 113
	bgt	cr7, ble_else.20289				# 113
	addi	r6, 0, 0				# 113
	b	ble_cont.20290				# 113
ble_else.20289:
	addi	r6, 0, 1				# 113
ble_cont.20290:
	cmpwi	cr7, r6, 0				# 966
	bne	cr7, beq_else.20291				# 966
	addi	r2, 0, 0				# 972
	b	beq_cont.20292				# 966
beq_else.20291:
	lwz	r6, 24(r8)				# 272
	cmpwi	cr7, r6, 0				# 967
	bne	cr7, beq_else.20293				# 967
	stw	r9, -32(r3)				# 970
	stfs	f5, -60(r3)				# 970
	mfspr	r31, 8				# 970
	fmr	f0, f1				# 970
	stw	r31, -64(r3)				# 970
	addi	r3, r3, -68				# 970
	bl	min_caml_sqrt				# 970
	addi	r3, r3, 68				# 970
	lwz	r31, -64(r3)				# 970
	mtspr	8, r31				# 970
	lfs	f1, -60(r3)				# 970
	fsub	f0, f1, f0				# 970
	lwz	r2, -32(r3)				# 970
	lfs	f1, 16(r2)				# 970
	fmul	f0, f0, f1				# 970
	lwz	r2, -16(r3)				# 970
	stfs	f0, 0(r2)				# 970
	b	beq_cont.20294				# 967
beq_else.20293:
	stw	r9, -32(r3)				# 968
	stfs	f5, -60(r3)				# 968
	mfspr	r31, 8				# 968
	fmr	f0, f1				# 968
	stw	r31, -64(r3)				# 968
	addi	r3, r3, -68				# 968
	bl	min_caml_sqrt				# 968
	addi	r3, r3, 68				# 968
	lwz	r31, -64(r3)				# 968
	mtspr	8, r31				# 968
	lfs	f1, -60(r3)				# 968
	fadd	f0, f1, f0				# 968
	lwz	r2, -32(r3)				# 968
	lfs	f1, 16(r2)				# 968
	fmul	f0, f0, f1				# 968
	lwz	r2, -16(r3)				# 968
	stfs	f0, 0(r2)				# 968
beq_cont.20294:
	addi	r2, 0, 1				# 971
beq_cont.20292:
	b	beq_cont.20284				# 959
beq_else.20283:
	addi	r2, 0, 0				# 960
beq_cont.20284:
beq_cont.20276:
beq_cont.20232:
	cmpwi	cr7, r2, 0				# 1283
	bne	cr7, beq_else.20295				# 1283
	addi	r2, 0, 0				# 1289
	b	beq_cont.20296				# 1283
beq_else.20295:
	lwz	r2, -16(r3)				# 1284
	lfs	f0, 0(r2)				# 1284
	addis	r31, 0, ha16(l.16414)
	ori	r31, r31, lo16(l.16414)
	lfs	f1, 0(r31)				# 1284
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20297				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20298				# 109
ble_else.20297:
	addi	r2, 0, 1				# 109
ble_cont.20298:
	cmpwi	cr7, r2, 0				# 1284
	bne	cr7, beq_else.20299				# 1284
	addi	r2, 0, 0				# 1288
	b	beq_cont.20300				# 1284
beq_else.20299:
	lwz	r2, -4(r3)				# 1285
	lwz	r5, 0(r3)				# 1285
	mfspr	r31, 8				# 1285
	stw	r31, -64(r3)				# 1285
	addi	r3, r3, -68				# 1285
	bl	shadow_check_one_or_group.2762				# 1285
	addi	r3, r3, 68				# 1285
	lwz	r31, -64(r3)				# 1285
	mtspr	8, r31				# 1285
	cmpwi	cr7, r2, 0				# 1285
	bne	cr7, beq_else.20301				# 1285
	addi	r2, 0, 0				# 1287
	b	beq_cont.20302				# 1285
beq_else.20301:
	addi	r2, 0, 1				# 1286
beq_cont.20302:
beq_cont.20300:
beq_cont.20296:
beq_cont.20230:
	cmpwi	cr7, r2, 0				# 1276
	bne	cr7, beq_else.20303				# 1276
	lwz	r2, -12(r3)				# 1296
	addi	r2, r2, 1				# 1296
	lwz	r5, -8(r3)				# 1296
	b	shadow_check_one_or_matrix.2765				# 1296
beq_else.20303:
	lwz	r2, -4(r3)				# 1291
	lwz	r5, 0(r3)				# 1291
	mfspr	r31, 8				# 1291
	stw	r31, -64(r3)				# 1291
	addi	r3, r3, -68				# 1291
	bl	shadow_check_one_or_group.2762				# 1291
	addi	r3, r3, 68				# 1291
	lwz	r31, -64(r3)				# 1291
	mtspr	8, r31				# 1291
	cmpwi	cr7, r2, 0				# 1291
	bne	cr7, beq_else.20304				# 1291
	lwz	r2, -12(r3)				# 1294
	addi	r2, r2, 1				# 1294
	lwz	r5, -8(r3)				# 1294
	b	shadow_check_one_or_matrix.2765				# 1294
beq_else.20304:
	addi	r2, 0, 1				# 1292
	blr
solve_each_element.2768:
	addis	r7, 0, ha16(tmin.2444)
	ori	r7, r7, lo16(tmin.2444)				# 1304
	lwz	r7, 0(r7)				# 1304
	addis	r8, 0, ha16(startp.2454)
	ori	r8, r8, lo16(startp.2454)				# 1304
	lwz	r8, 0(r8)				# 1304
	addis	r9, 0, ha16(solver_dist.2442)
	ori	r9, r9, lo16(solver_dist.2442)				# 1304
	lwz	r9, 0(r9)				# 1304
	addis	r10, 0, ha16(objects.2435)
	ori	r10, r10, lo16(objects.2435)				# 1304
	lwz	r10, 0(r10)				# 1304
	addis	r11, 0, ha16(intsec_rectside.2443)
	ori	r11, r11, lo16(intsec_rectside.2443)				# 1304
	lwz	r11, 0(r11)				# 1304
	addis	r12, 0, ha16(intersection_point.2445)
	ori	r12, r12, lo16(intersection_point.2445)				# 1304
	lwz	r12, 0(r12)				# 1304
	addis	r13, 0, ha16(intersected_object_id.2446)
	ori	r13, r13, lo16(intersected_object_id.2446)				# 1304
	lwz	r13, 0(r13)				# 1304
	addi	r14, 0, 0				# 1304
	addis	r15, 0, ha16(Td252.5768)
	ori	r15, r15, lo16(Td252.5768)				# 1304
	lfs	f0, 0(r15)				# 1304
	slwi	r15, r2, 2				# 1305
	lwzx	r15, r5, r15				# 1305
	cmpwi	cr7, r15, -1				# 1306
	bne	cr7, beq_else.20305				# 1306
	blr
beq_else.20305:
	slwi	r16, r15, 2				# 898
	lwzx	r16, r10, r16				# 898
	lfs	f1, 0(r8)				# 900
	lwz	r17, 20(r16)				# 330
	lfs	f2, 0(r17)				# 335
	fsub	f1, f1, f2				# 900
	lfs	f2, 4(r8)				# 901
	lwz	r17, 20(r16)				# 340
	lfs	f3, 4(r17)				# 345
	fsub	f2, f2, f3				# 901
	lfs	f3, 8(r8)				# 902
	lwz	r17, 20(r16)				# 350
	lfs	f4, 8(r17)				# 355
	fsub	f3, f3, f4				# 902
	lwz	r17, 4(r16)				# 252
	stw	r11, 0(r3)				# 905
	stw	r13, -4(r3)				# 905
	stw	r12, -8(r3)				# 905
	stw	r14, -12(r3)				# 905
	stw	r8, -16(r3)				# 905
	stw	r7, -20(r3)				# 905
	stfs	f0, -24(r3)				# 905
	stw	r9, -28(r3)				# 905
	stw	r6, -32(r3)				# 905
	stw	r5, -36(r3)				# 905
	stw	r2, -40(r3)				# 905
	stw	r10, -44(r3)				# 905
	stw	r15, -48(r3)				# 905
	cmpwi	cr7, r17, 1				# 905
	bne	cr7, beq_else.20307				# 905
	lfs	f4, 0(r6)				# 797
	fcmpu	cr7, f4, f0				# 111
	bne	cr7, beq_else.20309				# 111
	addi	r17, 0, 1				# 111
	b	beq_cont.20310				# 111
beq_else.20309:
	addi	r17, 0, 0				# 111
beq_cont.20310:
	stfs	f1, -52(r3)				# 797
	stfs	f3, -56(r3)				# 797
	stfs	f2, -60(r3)				# 797
	stw	r16, -64(r3)				# 797
	cmpwi	cr7, r17, 0				# 797
	bne	cr7, beq_else.20311				# 797
	lwz	r17, 16(r16)				# 320
	lwz	r18, 24(r16)				# 272
	lfs	f4, 0(r6)				# 799
	fcmpu	cr7, f0, f4				# 115
	bgt	cr7, ble_else.20313				# 115
	addi	r19, 0, 0				# 115
	b	ble_cont.20314				# 115
ble_else.20313:
	addi	r19, 0, 1				# 115
ble_cont.20314:
	cmpwi	cr7, r18, 0				# 119
	bne	cr7, beq_else.20315				# 119
	mr	r18, r19				# 119
	b	beq_cont.20316				# 119
beq_else.20315:
	cmpwi	cr7, r19, 0				# 119
	bne	cr7, beq_else.20317				# 119
	addi	r18, 0, 1				# 119
	b	beq_cont.20318				# 119
beq_else.20317:
	addi	r18, 0, 0				# 119
beq_cont.20318:
beq_cont.20316:
	lfs	f4, 0(r17)				# 799
	cmpwi	cr7, r18, 0				# 132
	bne	cr7, beq_else.20319				# 132
	fneg	f4, f4				# 107
	b	beq_cont.20320				# 132
beq_else.20319:
beq_cont.20320:
	fsub	f4, f4, f1				# 801
	lfs	f5, 0(r6)				# 801
	fdiv	f4, f4, f5				# 801
	lfs	f5, 4(r6)				# 802
	fmul	f5, f4, f5				# 802
	fadd	f5, f5, f2				# 802
	stfs	f4, -68(r3)				# 802
	stw	r17, -72(r3)				# 802
	mfspr	r31, 8				# 802
	fmr	f0, f5				# 802
	stw	r31, -76(r3)				# 802
	addi	r3, r3, -80				# 802
	bl	min_caml_fabs				# 802
	addi	r3, r3, 80				# 802
	lwz	r31, -76(r3)				# 802
	mtspr	8, r31				# 802
	lwz	r2, -72(r3)				# 802
	lfs	f1, 4(r2)				# 802
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20321				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20322				# 109
ble_else.20321:
	addi	r5, 0, 1				# 109
ble_cont.20322:
	cmpwi	cr7, r5, 0				# 802
	bne	cr7, beq_else.20323				# 802
	addi	r2, 0, 0				# 806
	b	beq_cont.20324				# 802
beq_else.20323:
	lwz	r5, -32(r3)				# 803
	lfs	f0, 8(r5)				# 803
	lfs	f1, -68(r3)				# 803
	fmul	f0, f1, f0				# 803
	lfs	f2, -56(r3)				# 803
	fadd	f0, f0, f2				# 803
	mfspr	r31, 8				# 803
	stw	r31, -76(r3)				# 803
	addi	r3, r3, -80				# 803
	bl	min_caml_fabs				# 803
	addi	r3, r3, 80				# 803
	lwz	r31, -76(r3)				# 803
	mtspr	8, r31				# 803
	lwz	r2, -72(r3)				# 803
	lfs	f1, 8(r2)				# 803
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20325				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20326				# 109
ble_else.20325:
	addi	r2, 0, 1				# 109
ble_cont.20326:
	cmpwi	cr7, r2, 0				# 803
	bne	cr7, beq_else.20327				# 803
	addi	r2, 0, 0				# 805
	b	beq_cont.20328				# 803
beq_else.20327:
	lwz	r2, -28(r3)				# 804
	lfs	f0, -68(r3)				# 804
	stfs	f0, 0(r2)				# 804
	addi	r2, 0, 1				# 804
beq_cont.20328:
beq_cont.20324:
	b	beq_cont.20312				# 797
beq_else.20311:
	addi	r2, 0, 0				# 797
beq_cont.20312:
	cmpwi	cr7, r2, 0				# 812
	bne	cr7, beq_else.20329				# 812
	lwz	r6, -32(r3)				# 797
	lfs	f0, 4(r6)				# 797
	lfs	f1, -24(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20331				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20332				# 111
beq_else.20331:
	addi	r2, 0, 0				# 111
beq_cont.20332:
	cmpwi	cr7, r2, 0				# 797
	bne	cr7, beq_else.20333				# 797
	lwz	r2, -64(r3)				# 320
	lwz	r5, 16(r2)				# 320
	lwz	r7, 24(r2)				# 272
	lfs	f0, 4(r6)				# 799
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.20335				# 115
	addi	r8, 0, 0				# 115
	b	ble_cont.20336				# 115
ble_else.20335:
	addi	r8, 0, 1				# 115
ble_cont.20336:
	cmpwi	cr7, r7, 0				# 119
	bne	cr7, beq_else.20337				# 119
	mr	r7, r8				# 119
	b	beq_cont.20338				# 119
beq_else.20337:
	cmpwi	cr7, r8, 0				# 119
	bne	cr7, beq_else.20339				# 119
	addi	r7, 0, 1				# 119
	b	beq_cont.20340				# 119
beq_else.20339:
	addi	r7, 0, 0				# 119
beq_cont.20340:
beq_cont.20338:
	lfs	f0, 4(r5)				# 799
	cmpwi	cr7, r7, 0				# 132
	bne	cr7, beq_else.20341				# 132
	fneg	f0, f0				# 107
	b	beq_cont.20342				# 132
beq_else.20341:
beq_cont.20342:
	lfs	f2, -60(r3)				# 801
	fsub	f0, f0, f2				# 801
	lfs	f3, 4(r6)				# 801
	fdiv	f0, f0, f3				# 801
	lfs	f3, 8(r6)				# 802
	fmul	f3, f0, f3				# 802
	lfs	f4, -56(r3)				# 802
	fadd	f3, f3, f4				# 802
	stfs	f0, -76(r3)				# 802
	stw	r5, -80(r3)				# 802
	mfspr	r31, 8				# 802
	fmr	f0, f3				# 802
	stw	r31, -84(r3)				# 802
	addi	r3, r3, -88				# 802
	bl	min_caml_fabs				# 802
	addi	r3, r3, 88				# 802
	lwz	r31, -84(r3)				# 802
	mtspr	8, r31				# 802
	lwz	r2, -80(r3)				# 802
	lfs	f1, 8(r2)				# 802
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20343				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20344				# 109
ble_else.20343:
	addi	r5, 0, 1				# 109
ble_cont.20344:
	cmpwi	cr7, r5, 0				# 802
	bne	cr7, beq_else.20345				# 802
	addi	r2, 0, 0				# 806
	b	beq_cont.20346				# 802
beq_else.20345:
	lwz	r5, -32(r3)				# 803
	lfs	f0, 0(r5)				# 803
	lfs	f1, -76(r3)				# 803
	fmul	f0, f1, f0				# 803
	lfs	f2, -52(r3)				# 803
	fadd	f0, f0, f2				# 803
	mfspr	r31, 8				# 803
	stw	r31, -84(r3)				# 803
	addi	r3, r3, -88				# 803
	bl	min_caml_fabs				# 803
	addi	r3, r3, 88				# 803
	lwz	r31, -84(r3)				# 803
	mtspr	8, r31				# 803
	lwz	r2, -80(r3)				# 803
	lfs	f1, 0(r2)				# 803
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20347				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20348				# 109
ble_else.20347:
	addi	r2, 0, 1				# 109
ble_cont.20348:
	cmpwi	cr7, r2, 0				# 803
	bne	cr7, beq_else.20349				# 803
	addi	r2, 0, 0				# 805
	b	beq_cont.20350				# 803
beq_else.20349:
	lwz	r2, -28(r3)				# 804
	lfs	f0, -76(r3)				# 804
	stfs	f0, 0(r2)				# 804
	addi	r2, 0, 1				# 804
beq_cont.20350:
beq_cont.20346:
	b	beq_cont.20334				# 797
beq_else.20333:
	addi	r2, 0, 0				# 797
beq_cont.20334:
	cmpwi	cr7, r2, 0				# 813
	bne	cr7, beq_else.20351				# 813
	lwz	r6, -32(r3)				# 797
	lfs	f0, 8(r6)				# 797
	lfs	f1, -24(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20353				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20354				# 111
beq_else.20353:
	addi	r2, 0, 0				# 111
beq_cont.20354:
	cmpwi	cr7, r2, 0				# 797
	bne	cr7, beq_else.20355				# 797
	lwz	r2, -64(r3)				# 320
	lwz	r5, 16(r2)				# 320
	lwz	r2, 24(r2)				# 272
	lfs	f0, 8(r6)				# 799
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.20357				# 115
	addi	r7, 0, 0				# 115
	b	ble_cont.20358				# 115
ble_else.20357:
	addi	r7, 0, 1				# 115
ble_cont.20358:
	cmpwi	cr7, r2, 0				# 119
	bne	cr7, beq_else.20359				# 119
	mr	r2, r7				# 119
	b	beq_cont.20360				# 119
beq_else.20359:
	cmpwi	cr7, r7, 0				# 119
	bne	cr7, beq_else.20361				# 119
	addi	r2, 0, 1				# 119
	b	beq_cont.20362				# 119
beq_else.20361:
	addi	r2, 0, 0				# 119
beq_cont.20362:
beq_cont.20360:
	lfs	f0, 8(r5)				# 799
	cmpwi	cr7, r2, 0				# 132
	bne	cr7, beq_else.20363				# 132
	fneg	f0, f0				# 107
	b	beq_cont.20364				# 132
beq_else.20363:
beq_cont.20364:
	lfs	f2, -56(r3)				# 801
	fsub	f0, f0, f2				# 801
	lfs	f2, 8(r6)				# 801
	fdiv	f0, f0, f2				# 801
	lfs	f2, 0(r6)				# 802
	fmul	f2, f0, f2				# 802
	lfs	f3, -52(r3)				# 802
	fadd	f2, f2, f3				# 802
	stfs	f0, -84(r3)				# 802
	stw	r5, -88(r3)				# 802
	mfspr	r31, 8				# 802
	fmr	f0, f2				# 802
	stw	r31, -92(r3)				# 802
	addi	r3, r3, -96				# 802
	bl	min_caml_fabs				# 802
	addi	r3, r3, 96				# 802
	lwz	r31, -92(r3)				# 802
	mtspr	8, r31				# 802
	lwz	r2, -88(r3)				# 802
	lfs	f1, 0(r2)				# 802
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20365				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20366				# 109
ble_else.20365:
	addi	r5, 0, 1				# 109
ble_cont.20366:
	cmpwi	cr7, r5, 0				# 802
	bne	cr7, beq_else.20367				# 802
	addi	r2, 0, 0				# 806
	b	beq_cont.20368				# 802
beq_else.20367:
	lwz	r5, -32(r3)				# 803
	lfs	f0, 4(r5)				# 803
	lfs	f1, -84(r3)				# 803
	fmul	f0, f1, f0				# 803
	lfs	f2, -60(r3)				# 803
	fadd	f0, f0, f2				# 803
	mfspr	r31, 8				# 803
	stw	r31, -92(r3)				# 803
	addi	r3, r3, -96				# 803
	bl	min_caml_fabs				# 803
	addi	r3, r3, 96				# 803
	lwz	r31, -92(r3)				# 803
	mtspr	8, r31				# 803
	lwz	r2, -88(r3)				# 803
	lfs	f1, 4(r2)				# 803
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20369				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20370				# 109
ble_else.20369:
	addi	r2, 0, 1				# 109
ble_cont.20370:
	cmpwi	cr7, r2, 0				# 803
	bne	cr7, beq_else.20371				# 803
	addi	r2, 0, 0				# 805
	b	beq_cont.20372				# 803
beq_else.20371:
	lwz	r2, -28(r3)				# 804
	lfs	f0, -84(r3)				# 804
	stfs	f0, 0(r2)				# 804
	addi	r2, 0, 1				# 804
beq_cont.20372:
beq_cont.20368:
	b	beq_cont.20356				# 797
beq_else.20355:
	addi	r2, 0, 0				# 797
beq_cont.20356:
	cmpwi	cr7, r2, 0				# 814
	bne	cr7, beq_else.20373				# 814
	addi	r2, 0, 0				# 815
	b	beq_cont.20374				# 814
beq_else.20373:
	addi	r2, 0, 3				# 814
beq_cont.20374:
	b	beq_cont.20352				# 813
beq_else.20351:
	addi	r2, 0, 2				# 813
beq_cont.20352:
	b	beq_cont.20330				# 812
beq_else.20329:
	addi	r2, 0, 1				# 812
beq_cont.20330:
	b	beq_cont.20308				# 905
beq_else.20307:
	cmpwi	cr7, r17, 2				# 906
	bne	cr7, beq_else.20375				# 906
	lwz	r16, 16(r16)				# 320
	lfs	f4, 0(r6)				# 195
	lfs	f5, 0(r16)				# 195
	fmul	f4, f4, f5				# 195
	lfs	f5, 4(r6)				# 195
	lfs	f6, 4(r16)				# 195
	fmul	f5, f5, f6				# 195
	fadd	f4, f4, f5				# 195
	lfs	f5, 8(r6)				# 195
	lfs	f6, 8(r16)				# 195
	fmul	f5, f5, f6				# 195
	fadd	f4, f4, f5				# 195
	fcmpu	cr7, f4, f0				# 113
	bgt	cr7, ble_else.20377				# 113
	addi	r17, 0, 0				# 113
	b	ble_cont.20378				# 113
ble_else.20377:
	addi	r17, 0, 1				# 113
ble_cont.20378:
	cmpwi	cr7, r17, 0				# 825
	bne	cr7, beq_else.20379				# 825
	addi	r2, 0, 0				# 828
	b	beq_cont.20380				# 825
beq_else.20379:
	lfs	f5, 0(r16)				# 200
	fmul	f1, f5, f1				# 200
	lfs	f5, 4(r16)				# 200
	fmul	f2, f5, f2				# 200
	fadd	f1, f1, f2				# 200
	lfs	f2, 8(r16)				# 200
	fmul	f2, f2, f3				# 200
	fadd	f1, f1, f2				# 200
	fneg	f1, f1				# 107
	fdiv	f1, f1, f4				# 826
	stfs	f1, 0(r9)				# 826
	addi	r2, 0, 1				# 827
beq_cont.20380:
	b	beq_cont.20376				# 906
beq_else.20375:
	lfs	f4, 0(r6)				# 872
	lfs	f5, 4(r6)				# 872
	lfs	f6, 8(r6)				# 872
	fmul	f7, f4, f4				# 103
	lwz	r17, 16(r16)				# 290
	lfs	f8, 0(r17)				# 295
	fmul	f7, f7, f8				# 836
	fmul	f8, f5, f5				# 103
	lwz	r17, 16(r16)				# 300
	lfs	f9, 4(r17)				# 305
	fmul	f8, f8, f9				# 836
	fadd	f7, f7, f8				# 836
	fmul	f8, f6, f6				# 103
	lwz	r17, 16(r16)				# 310
	lfs	f9, 8(r17)				# 315
	fmul	f8, f8, f9				# 836
	fadd	f7, f7, f8				# 836
	lwz	r17, 12(r16)				# 281
	cmpwi	cr7, r17, 0				# 838
	bne	cr7, beq_else.20381				# 838
	fmr	f4, f7				# 839
	b	beq_cont.20382				# 838
beq_else.20381:
	fmul	f8, f5, f6				# 842
	lwz	r17, 36(r16)				# 410
	lfs	f9, 0(r17)				# 415
	fmul	f8, f8, f9				# 842
	fadd	f7, f7, f8				# 841
	fmul	f6, f6, f4				# 843
	lwz	r17, 36(r16)				# 420
	lfs	f8, 4(r17)				# 425
	fmul	f6, f6, f8				# 843
	fadd	f6, f7, f6				# 841
	fmul	f4, f4, f5				# 844
	lwz	r17, 36(r16)				# 430
	lfs	f5, 8(r17)				# 435
	fmul	f4, f4, f5				# 844
	fadd	f4, f6, f4				# 841
beq_cont.20382:
	fcmpu	cr7, f4, f0				# 111
	bne	cr7, beq_else.20383				# 111
	addi	r17, 0, 1				# 111
	b	beq_cont.20384				# 111
beq_else.20383:
	addi	r17, 0, 0				# 111
beq_cont.20384:
	cmpwi	cr7, r17, 0				# 874
	bne	cr7, beq_else.20385				# 874
	lfs	f5, 0(r6)				# 879
	lfs	f6, 4(r6)				# 879
	lfs	f7, 8(r6)				# 879
	fmul	f8, f5, f1				# 851
	lwz	r17, 16(r16)				# 290
	lfs	f9, 0(r17)				# 295
	fmul	f8, f8, f9				# 851
	fmul	f9, f6, f2				# 852
	lwz	r17, 16(r16)				# 300
	lfs	f10, 4(r17)				# 305
	fmul	f9, f9, f10				# 852
	fadd	f8, f8, f9				# 851
	fmul	f9, f7, f3				# 853
	lwz	r17, 16(r16)				# 310
	lfs	f10, 8(r17)				# 315
	fmul	f9, f9, f10				# 853
	fadd	f8, f8, f9				# 851
	lwz	r17, 12(r16)				# 281
	cmpwi	cr7, r17, 0				# 855
	bne	cr7, beq_else.20387				# 855
	fmr	f5, f8				# 856
	b	beq_cont.20388				# 855
beq_else.20387:
	fmul	f9, f7, f2				# 859
	fmul	f10, f6, f3				# 859
	fadd	f9, f9, f10				# 859
	lwz	r17, 36(r16)				# 410
	lfs	f10, 0(r17)				# 415
	fmul	f9, f9, f10				# 859
	fmul	f10, f5, f3				# 860
	fmul	f7, f7, f1				# 860
	fadd	f7, f10, f7				# 860
	lwz	r17, 36(r16)				# 420
	lfs	f10, 4(r17)				# 425
	fmul	f7, f7, f10				# 860
	fadd	f7, f9, f7				# 859
	fmul	f5, f5, f2				# 861
	fmul	f6, f6, f1				# 861
	fadd	f5, f5, f6				# 861
	lwz	r17, 36(r16)				# 430
	lfs	f6, 8(r17)				# 435
	fmul	f5, f5, f6				# 861
	fadd	f5, f7, f5				# 859
	addis	r31, 0, ha16(l.16113)
	ori	r31, r31, lo16(l.16113)
	lfs	f6, 0(r31)				# 105
	fdiv	f5, f5, f6				# 105
	fadd	f5, f8, f5				# 858
beq_cont.20388:
	fmul	f6, f1, f1				# 103
	lwz	r17, 16(r16)				# 290
	lfs	f7, 0(r17)				# 295
	fmul	f6, f6, f7				# 836
	fmul	f7, f2, f2				# 103
	lwz	r17, 16(r16)				# 300
	lfs	f8, 4(r17)				# 305
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	fmul	f7, f3, f3				# 103
	lwz	r17, 16(r16)				# 310
	lfs	f8, 8(r17)				# 315
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	lwz	r17, 12(r16)				# 281
	cmpwi	cr7, r17, 0				# 838
	bne	cr7, beq_else.20389				# 838
	fmr	f1, f6				# 839
	b	beq_cont.20390				# 838
beq_else.20389:
	fmul	f7, f2, f3				# 842
	lwz	r17, 36(r16)				# 410
	lfs	f8, 0(r17)				# 415
	fmul	f7, f7, f8				# 842
	fadd	f6, f6, f7				# 841
	fmul	f3, f3, f1				# 843
	lwz	r17, 36(r16)				# 420
	lfs	f7, 4(r17)				# 425
	fmul	f3, f3, f7				# 843
	fadd	f3, f6, f3				# 841
	fmul	f1, f1, f2				# 844
	lwz	r17, 36(r16)				# 430
	lfs	f2, 8(r17)				# 435
	fmul	f1, f1, f2				# 844
	fadd	f1, f3, f1				# 841
beq_cont.20390:
	lwz	r17, 4(r16)				# 252
	cmpwi	cr7, r17, 3				# 882
	bne	cr7, beq_else.20391				# 882
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 882
	fsub	f1, f1, f2				# 882
	b	beq_cont.20392				# 882
beq_else.20391:
beq_cont.20392:
	fmul	f2, f5, f5				# 103
	fmul	f1, f4, f1				# 884
	fsub	f1, f2, f1				# 884
	fcmpu	cr7, f1, f0				# 113
	bgt	cr7, ble_else.20393				# 113
	addi	r17, 0, 0				# 113
	b	ble_cont.20394				# 113
ble_else.20393:
	addi	r17, 0, 1				# 113
ble_cont.20394:
	cmpwi	cr7, r17, 0				# 886
	bne	cr7, beq_else.20395				# 886
	addi	r2, 0, 0				# 892
	b	beq_cont.20396				# 886
beq_else.20395:
	stfs	f4, -92(r3)				# 887
	stfs	f5, -96(r3)				# 887
	stw	r16, -64(r3)				# 887
	mfspr	r31, 8				# 887
	fmr	f0, f1				# 887
	stw	r31, -100(r3)				# 887
	addi	r3, r3, -104				# 887
	bl	min_caml_sqrt				# 887
	addi	r3, r3, 104				# 887
	lwz	r31, -100(r3)				# 887
	mtspr	8, r31				# 887
	lwz	r2, -64(r3)				# 272
	lwz	r2, 24(r2)				# 272
	cmpwi	cr7, r2, 0				# 888
	bne	cr7, beq_else.20397				# 888
	fneg	f0, f0				# 107
	b	beq_cont.20398				# 888
beq_else.20397:
beq_cont.20398:
	lfs	f1, -96(r3)				# 889
	fsub	f0, f0, f1				# 889
	lfs	f1, -92(r3)				# 889
	fdiv	f0, f0, f1				# 889
	lwz	r2, -28(r3)				# 889
	stfs	f0, 0(r2)				# 889
	addi	r2, 0, 1				# 889
beq_cont.20396:
	b	beq_cont.20386				# 874
beq_else.20385:
	addi	r2, 0, 0				# 875
beq_cont.20386:
beq_cont.20376:
beq_cont.20308:
	cmpwi	cr7, r2, 0				# 1309
	bne	cr7, beq_else.20399				# 1309
	lwz	r2, -48(r3)				# 1337
	slwi	r2, r2, 2				# 1337
	lwz	r5, -44(r3)				# 1337
	lwzx	r2, r5, r2				# 1337
	lwz	r2, 24(r2)				# 272
	cmpwi	cr7, r2, 0				# 1337
	bne	cr7, beq_else.20400				# 1337
	blr
beq_else.20400:
	lwz	r2, -40(r3)				# 1338
	addi	r2, r2, 1				# 1338
	lwz	r5, -36(r3)				# 1338
	lwz	r6, -32(r3)				# 1338
	b	solve_each_element.2768				# 1338
beq_else.20399:
	lwz	r5, -28(r3)				# 1313
	lfs	f0, 0(r5)				# 1313
	lfs	f1, -24(r3)				# 109
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.20402				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20403				# 109
ble_else.20402:
	addi	r5, 0, 1				# 109
ble_cont.20403:
	cmpwi	cr7, r5, 0				# 1315
	bne	cr7, beq_else.20404				# 1315
	b	beq_cont.20405				# 1315
beq_else.20404:
	lwz	r5, -20(r3)				# 1316
	lfs	f1, 0(r5)				# 1316
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20406				# 109
	addi	r6, 0, 0				# 109
	b	ble_cont.20407				# 109
ble_else.20406:
	addi	r6, 0, 1				# 109
ble_cont.20407:
	cmpwi	cr7, r6, 0				# 1316
	bne	cr7, beq_else.20408				# 1316
	b	beq_cont.20409				# 1316
beq_else.20408:
	addis	r31, 0, ha16(l.16333)
	ori	r31, r31, lo16(l.16333)
	lfs	f1, 0(r31)				# 1318
	fadd	f0, f0, f1				# 1318
	lwz	r6, -32(r3)				# 1319
	lfs	f1, 0(r6)				# 1319
	fmul	f1, f1, f0				# 1319
	lwz	r7, -16(r3)				# 1319
	lfs	f2, 0(r7)				# 1319
	fadd	f1, f1, f2				# 1319
	lfs	f2, 4(r6)				# 1320
	fmul	f2, f2, f0				# 1320
	lfs	f3, 4(r7)				# 1320
	fadd	f2, f2, f3				# 1320
	lfs	f3, 8(r6)				# 1321
	fmul	f3, f3, f0				# 1321
	lfs	f4, 8(r7)				# 1321
	fadd	f3, f3, f4				# 1321
	lwz	r7, -12(r3)				# 1322
	lwz	r8, -36(r3)				# 1322
	stw	r2, -100(r3)				# 1322
	stfs	f3, -104(r3)				# 1322
	stfs	f2, -108(r3)				# 1322
	stfs	f1, -112(r3)				# 1322
	stfs	f0, -116(r3)				# 1322
	mfspr	r31, 8				# 1322
	mr	r5, r8				# 1322
	mr	r2, r7				# 1322
	fmr	f0, f1				# 1322
	fmr	f1, f2				# 1322
	fmr	f2, f3				# 1322
	stw	r31, -120(r3)				# 1322
	addi	r3, r3, -124				# 1322
	bl	check_all_inside.2753				# 1322
	addi	r3, r3, 124				# 1322
	lwz	r31, -120(r3)				# 1322
	mtspr	8, r31				# 1322
	cmpwi	cr7, r2, 0				# 1322
	bne	cr7, beq_else.20410				# 1322
	b	beq_cont.20411				# 1322
beq_else.20410:
	lwz	r2, -20(r3)				# 1324
	lfs	f0, -116(r3)				# 1324
	stfs	f0, 0(r2)				# 1324
	lwz	r2, -8(r3)				# 147
	lfs	f0, -112(r3)				# 147
	stfs	f0, 0(r2)				# 147
	lfs	f0, -108(r3)				# 148
	stfs	f0, 4(r2)				# 148
	lfs	f0, -104(r3)				# 149
	stfs	f0, 8(r2)				# 149
	lwz	r2, -4(r3)				# 1326
	lwz	r5, -48(r3)				# 1326
	stw	r5, 0(r2)				# 1326
	lwz	r2, 0(r3)				# 1327
	lwz	r5, -100(r3)				# 1327
	stw	r5, 0(r2)				# 1327
beq_cont.20411:
beq_cont.20409:
beq_cont.20405:
	lwz	r2, -40(r3)				# 1333
	addi	r2, r2, 1				# 1333
	lwz	r5, -36(r3)				# 1333
	lwz	r6, -32(r3)				# 1333
	b	solve_each_element.2768				# 1333
solve_one_or_network.2772:
	addis	r7, 0, ha16(and_net.2440)
	ori	r7, r7, lo16(and_net.2440)				# 1345
	lwz	r7, 0(r7)				# 1345
	addi	r8, 0, 0				# 1345
	slwi	r9, r2, 2				# 1346
	lwzx	r9, r5, r9				# 1346
	cmpwi	cr7, r9, -1				# 1347
	bne	cr7, beq_else.20412				# 1347
	blr
beq_else.20412:
	slwi	r9, r9, 2				# 1348
	lwzx	r7, r7, r9				# 1348
	stw	r6, 0(r3)				# 1349
	stw	r5, -4(r3)				# 1349
	stw	r2, -8(r3)				# 1349
	mfspr	r31, 8				# 1349
	mr	r5, r7				# 1349
	mr	r2, r8				# 1349
	stw	r31, -12(r3)				# 1349
	addi	r3, r3, -16				# 1349
	bl	solve_each_element.2768				# 1349
	addi	r3, r3, 16				# 1349
	lwz	r31, -12(r3)				# 1349
	mtspr	8, r31				# 1349
	lwz	r2, -8(r3)				# 1350
	addi	r2, r2, 1				# 1350
	lwz	r5, -4(r3)				# 1350
	lwz	r6, 0(r3)				# 1350
	b	solve_one_or_network.2772				# 1350
trace_or_matrix.2776:
	addis	r7, 0, ha16(tmin.2444)
	ori	r7, r7, lo16(tmin.2444)				# 1355
	lwz	r7, 0(r7)				# 1355
	addis	r8, 0, ha16(startp.2454)
	ori	r8, r8, lo16(startp.2454)				# 1355
	lwz	r8, 0(r8)				# 1355
	addis	r9, 0, ha16(solver_dist.2442)
	ori	r9, r9, lo16(solver_dist.2442)				# 1355
	lwz	r9, 0(r9)				# 1355
	addis	r10, 0, ha16(objects.2435)
	ori	r10, r10, lo16(objects.2435)				# 1355
	lwz	r10, 0(r10)				# 1355
	addi	r11, 0, 1				# 1355
	addis	r12, 0, ha16(Td252.5768)
	ori	r12, r12, lo16(Td252.5768)				# 1355
	lfs	f0, 0(r12)				# 1355
	slwi	r12, r2, 2				# 1356
	lwzx	r12, r5, r12				# 1356
	lwz	r13, 0(r12)				# 1357
	cmpwi	cr7, r13, -1				# 1358
	bne	cr7, beq_else.20414				# 1358
	blr
beq_else.20414:
	stw	r6, 0(r3)				# 1361
	stw	r5, -4(r3)				# 1361
	stw	r2, -8(r3)				# 1361
	cmpwi	cr7, r13, 99				# 1361
	bne	cr7, beq_else.20416				# 1361
	mfspr	r31, 8				# 1362
	mr	r5, r12				# 1362
	mr	r2, r11				# 1362
	stw	r31, -12(r3)				# 1362
	addi	r3, r3, -16				# 1362
	bl	solve_one_or_network.2772				# 1362
	addi	r3, r3, 16				# 1362
	lwz	r31, -12(r3)				# 1362
	mtspr	8, r31				# 1362
	b	beq_cont.20417				# 1361
beq_else.20416:
	slwi	r13, r13, 2				# 898
	lwzx	r10, r10, r13				# 898
	lfs	f1, 0(r8)				# 900
	lwz	r13, 20(r10)				# 330
	lfs	f2, 0(r13)				# 335
	fsub	f1, f1, f2				# 900
	lfs	f2, 4(r8)				# 901
	lwz	r13, 20(r10)				# 340
	lfs	f3, 4(r13)				# 345
	fsub	f2, f2, f3				# 901
	lfs	f3, 8(r8)				# 902
	lwz	r8, 20(r10)				# 350
	lfs	f4, 8(r8)				# 355
	fsub	f3, f3, f4				# 902
	lwz	r8, 4(r10)				# 252
	stw	r12, -12(r3)				# 905
	stw	r11, -16(r3)				# 905
	stw	r7, -20(r3)				# 905
	stw	r9, -24(r3)				# 905
	cmpwi	cr7, r8, 1				# 905
	bne	cr7, beq_else.20418				# 905
	lfs	f4, 0(r6)				# 797
	fcmpu	cr7, f4, f0				# 111
	bne	cr7, beq_else.20420				# 111
	addi	r8, 0, 1				# 111
	b	beq_cont.20421				# 111
beq_else.20420:
	addi	r8, 0, 0				# 111
beq_cont.20421:
	stfs	f1, -28(r3)				# 797
	stfs	f3, -32(r3)				# 797
	stfs	f2, -36(r3)				# 797
	stw	r10, -40(r3)				# 797
	stfs	f0, -44(r3)				# 797
	cmpwi	cr7, r8, 0				# 797
	bne	cr7, beq_else.20422				# 797
	lwz	r8, 16(r10)				# 320
	lwz	r13, 24(r10)				# 272
	lfs	f4, 0(r6)				# 799
	fcmpu	cr7, f0, f4				# 115
	bgt	cr7, ble_else.20424				# 115
	addi	r14, 0, 0				# 115
	b	ble_cont.20425				# 115
ble_else.20424:
	addi	r14, 0, 1				# 115
ble_cont.20425:
	cmpwi	cr7, r13, 0				# 119
	bne	cr7, beq_else.20426				# 119
	mr	r13, r14				# 119
	b	beq_cont.20427				# 119
beq_else.20426:
	cmpwi	cr7, r14, 0				# 119
	bne	cr7, beq_else.20428				# 119
	addi	r13, 0, 1				# 119
	b	beq_cont.20429				# 119
beq_else.20428:
	addi	r13, 0, 0				# 119
beq_cont.20429:
beq_cont.20427:
	lfs	f4, 0(r8)				# 799
	cmpwi	cr7, r13, 0				# 132
	bne	cr7, beq_else.20430				# 132
	fneg	f4, f4				# 107
	b	beq_cont.20431				# 132
beq_else.20430:
beq_cont.20431:
	fsub	f4, f4, f1				# 801
	lfs	f5, 0(r6)				# 801
	fdiv	f4, f4, f5				# 801
	lfs	f5, 4(r6)				# 802
	fmul	f5, f4, f5				# 802
	fadd	f5, f5, f2				# 802
	stfs	f4, -48(r3)				# 802
	stw	r8, -52(r3)				# 802
	mfspr	r31, 8				# 802
	fmr	f0, f5				# 802
	stw	r31, -56(r3)				# 802
	addi	r3, r3, -60				# 802
	bl	min_caml_fabs				# 802
	addi	r3, r3, 60				# 802
	lwz	r31, -56(r3)				# 802
	mtspr	8, r31				# 802
	lwz	r2, -52(r3)				# 802
	lfs	f1, 4(r2)				# 802
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20432				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20433				# 109
ble_else.20432:
	addi	r5, 0, 1				# 109
ble_cont.20433:
	cmpwi	cr7, r5, 0				# 802
	bne	cr7, beq_else.20434				# 802
	addi	r2, 0, 0				# 806
	b	beq_cont.20435				# 802
beq_else.20434:
	lwz	r5, 0(r3)				# 803
	lfs	f0, 8(r5)				# 803
	lfs	f1, -48(r3)				# 803
	fmul	f0, f1, f0				# 803
	lfs	f2, -32(r3)				# 803
	fadd	f0, f0, f2				# 803
	mfspr	r31, 8				# 803
	stw	r31, -56(r3)				# 803
	addi	r3, r3, -60				# 803
	bl	min_caml_fabs				# 803
	addi	r3, r3, 60				# 803
	lwz	r31, -56(r3)				# 803
	mtspr	8, r31				# 803
	lwz	r2, -52(r3)				# 803
	lfs	f1, 8(r2)				# 803
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20436				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20437				# 109
ble_else.20436:
	addi	r2, 0, 1				# 109
ble_cont.20437:
	cmpwi	cr7, r2, 0				# 803
	bne	cr7, beq_else.20438				# 803
	addi	r2, 0, 0				# 805
	b	beq_cont.20439				# 803
beq_else.20438:
	lwz	r2, -24(r3)				# 804
	lfs	f0, -48(r3)				# 804
	stfs	f0, 0(r2)				# 804
	addi	r2, 0, 1				# 804
beq_cont.20439:
beq_cont.20435:
	b	beq_cont.20423				# 797
beq_else.20422:
	addi	r2, 0, 0				# 797
beq_cont.20423:
	cmpwi	cr7, r2, 0				# 812
	bne	cr7, beq_else.20440				# 812
	lwz	r6, 0(r3)				# 797
	lfs	f0, 4(r6)				# 797
	lfs	f1, -44(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20442				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20443				# 111
beq_else.20442:
	addi	r2, 0, 0				# 111
beq_cont.20443:
	cmpwi	cr7, r2, 0				# 797
	bne	cr7, beq_else.20444				# 797
	lwz	r2, -40(r3)				# 320
	lwz	r5, 16(r2)				# 320
	lwz	r7, 24(r2)				# 272
	lfs	f0, 4(r6)				# 799
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.20446				# 115
	addi	r8, 0, 0				# 115
	b	ble_cont.20447				# 115
ble_else.20446:
	addi	r8, 0, 1				# 115
ble_cont.20447:
	cmpwi	cr7, r7, 0				# 119
	bne	cr7, beq_else.20448				# 119
	mr	r7, r8				# 119
	b	beq_cont.20449				# 119
beq_else.20448:
	cmpwi	cr7, r8, 0				# 119
	bne	cr7, beq_else.20450				# 119
	addi	r7, 0, 1				# 119
	b	beq_cont.20451				# 119
beq_else.20450:
	addi	r7, 0, 0				# 119
beq_cont.20451:
beq_cont.20449:
	lfs	f0, 4(r5)				# 799
	cmpwi	cr7, r7, 0				# 132
	bne	cr7, beq_else.20452				# 132
	fneg	f0, f0				# 107
	b	beq_cont.20453				# 132
beq_else.20452:
beq_cont.20453:
	lfs	f2, -36(r3)				# 801
	fsub	f0, f0, f2				# 801
	lfs	f3, 4(r6)				# 801
	fdiv	f0, f0, f3				# 801
	lfs	f3, 8(r6)				# 802
	fmul	f3, f0, f3				# 802
	lfs	f4, -32(r3)				# 802
	fadd	f3, f3, f4				# 802
	stfs	f0, -56(r3)				# 802
	stw	r5, -60(r3)				# 802
	mfspr	r31, 8				# 802
	fmr	f0, f3				# 802
	stw	r31, -64(r3)				# 802
	addi	r3, r3, -68				# 802
	bl	min_caml_fabs				# 802
	addi	r3, r3, 68				# 802
	lwz	r31, -64(r3)				# 802
	mtspr	8, r31				# 802
	lwz	r2, -60(r3)				# 802
	lfs	f1, 8(r2)				# 802
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20454				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20455				# 109
ble_else.20454:
	addi	r5, 0, 1				# 109
ble_cont.20455:
	cmpwi	cr7, r5, 0				# 802
	bne	cr7, beq_else.20456				# 802
	addi	r2, 0, 0				# 806
	b	beq_cont.20457				# 802
beq_else.20456:
	lwz	r5, 0(r3)				# 803
	lfs	f0, 0(r5)				# 803
	lfs	f1, -56(r3)				# 803
	fmul	f0, f1, f0				# 803
	lfs	f2, -28(r3)				# 803
	fadd	f0, f0, f2				# 803
	mfspr	r31, 8				# 803
	stw	r31, -64(r3)				# 803
	addi	r3, r3, -68				# 803
	bl	min_caml_fabs				# 803
	addi	r3, r3, 68				# 803
	lwz	r31, -64(r3)				# 803
	mtspr	8, r31				# 803
	lwz	r2, -60(r3)				# 803
	lfs	f1, 0(r2)				# 803
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20458				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20459				# 109
ble_else.20458:
	addi	r2, 0, 1				# 109
ble_cont.20459:
	cmpwi	cr7, r2, 0				# 803
	bne	cr7, beq_else.20460				# 803
	addi	r2, 0, 0				# 805
	b	beq_cont.20461				# 803
beq_else.20460:
	lwz	r2, -24(r3)				# 804
	lfs	f0, -56(r3)				# 804
	stfs	f0, 0(r2)				# 804
	addi	r2, 0, 1				# 804
beq_cont.20461:
beq_cont.20457:
	b	beq_cont.20445				# 797
beq_else.20444:
	addi	r2, 0, 0				# 797
beq_cont.20445:
	cmpwi	cr7, r2, 0				# 813
	bne	cr7, beq_else.20462				# 813
	lwz	r6, 0(r3)				# 797
	lfs	f0, 8(r6)				# 797
	lfs	f1, -44(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20464				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20465				# 111
beq_else.20464:
	addi	r2, 0, 0				# 111
beq_cont.20465:
	cmpwi	cr7, r2, 0				# 797
	bne	cr7, beq_else.20466				# 797
	lwz	r2, -40(r3)				# 320
	lwz	r5, 16(r2)				# 320
	lwz	r2, 24(r2)				# 272
	lfs	f0, 8(r6)				# 799
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.20468				# 115
	addi	r7, 0, 0				# 115
	b	ble_cont.20469				# 115
ble_else.20468:
	addi	r7, 0, 1				# 115
ble_cont.20469:
	cmpwi	cr7, r2, 0				# 119
	bne	cr7, beq_else.20470				# 119
	mr	r2, r7				# 119
	b	beq_cont.20471				# 119
beq_else.20470:
	cmpwi	cr7, r7, 0				# 119
	bne	cr7, beq_else.20472				# 119
	addi	r2, 0, 1				# 119
	b	beq_cont.20473				# 119
beq_else.20472:
	addi	r2, 0, 0				# 119
beq_cont.20473:
beq_cont.20471:
	lfs	f0, 8(r5)				# 799
	cmpwi	cr7, r2, 0				# 132
	bne	cr7, beq_else.20474				# 132
	fneg	f0, f0				# 107
	b	beq_cont.20475				# 132
beq_else.20474:
beq_cont.20475:
	lfs	f1, -32(r3)				# 801
	fsub	f0, f0, f1				# 801
	lfs	f1, 8(r6)				# 801
	fdiv	f0, f0, f1				# 801
	lfs	f1, 0(r6)				# 802
	fmul	f1, f0, f1				# 802
	lfs	f2, -28(r3)				# 802
	fadd	f1, f1, f2				# 802
	stfs	f0, -64(r3)				# 802
	stw	r5, -68(r3)				# 802
	mfspr	r31, 8				# 802
	fmr	f0, f1				# 802
	stw	r31, -72(r3)				# 802
	addi	r3, r3, -76				# 802
	bl	min_caml_fabs				# 802
	addi	r3, r3, 76				# 802
	lwz	r31, -72(r3)				# 802
	mtspr	8, r31				# 802
	lwz	r2, -68(r3)				# 802
	lfs	f1, 0(r2)				# 802
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20476				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20477				# 109
ble_else.20476:
	addi	r5, 0, 1				# 109
ble_cont.20477:
	cmpwi	cr7, r5, 0				# 802
	bne	cr7, beq_else.20478				# 802
	addi	r2, 0, 0				# 806
	b	beq_cont.20479				# 802
beq_else.20478:
	lwz	r5, 0(r3)				# 803
	lfs	f0, 4(r5)				# 803
	lfs	f1, -64(r3)				# 803
	fmul	f0, f1, f0				# 803
	lfs	f2, -36(r3)				# 803
	fadd	f0, f0, f2				# 803
	mfspr	r31, 8				# 803
	stw	r31, -72(r3)				# 803
	addi	r3, r3, -76				# 803
	bl	min_caml_fabs				# 803
	addi	r3, r3, 76				# 803
	lwz	r31, -72(r3)				# 803
	mtspr	8, r31				# 803
	lwz	r2, -68(r3)				# 803
	lfs	f1, 4(r2)				# 803
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20480				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20481				# 109
ble_else.20480:
	addi	r2, 0, 1				# 109
ble_cont.20481:
	cmpwi	cr7, r2, 0				# 803
	bne	cr7, beq_else.20482				# 803
	addi	r2, 0, 0				# 805
	b	beq_cont.20483				# 803
beq_else.20482:
	lwz	r2, -24(r3)				# 804
	lfs	f0, -64(r3)				# 804
	stfs	f0, 0(r2)				# 804
	addi	r2, 0, 1				# 804
beq_cont.20483:
beq_cont.20479:
	b	beq_cont.20467				# 797
beq_else.20466:
	addi	r2, 0, 0				# 797
beq_cont.20467:
	cmpwi	cr7, r2, 0				# 814
	bne	cr7, beq_else.20484				# 814
	addi	r2, 0, 0				# 815
	b	beq_cont.20485				# 814
beq_else.20484:
	addi	r2, 0, 3				# 814
beq_cont.20485:
	b	beq_cont.20463				# 813
beq_else.20462:
	addi	r2, 0, 2				# 813
beq_cont.20463:
	b	beq_cont.20441				# 812
beq_else.20440:
	addi	r2, 0, 1				# 812
beq_cont.20441:
	b	beq_cont.20419				# 905
beq_else.20418:
	cmpwi	cr7, r8, 2				# 906
	bne	cr7, beq_else.20486				# 906
	lwz	r8, 16(r10)				# 320
	lfs	f4, 0(r6)				# 195
	lfs	f5, 0(r8)				# 195
	fmul	f4, f4, f5				# 195
	lfs	f5, 4(r6)				# 195
	lfs	f6, 4(r8)				# 195
	fmul	f5, f5, f6				# 195
	fadd	f4, f4, f5				# 195
	lfs	f5, 8(r6)				# 195
	lfs	f6, 8(r8)				# 195
	fmul	f5, f5, f6				# 195
	fadd	f4, f4, f5				# 195
	fcmpu	cr7, f4, f0				# 113
	bgt	cr7, ble_else.20488				# 113
	addi	r10, 0, 0				# 113
	b	ble_cont.20489				# 113
ble_else.20488:
	addi	r10, 0, 1				# 113
ble_cont.20489:
	cmpwi	cr7, r10, 0				# 825
	bne	cr7, beq_else.20490				# 825
	addi	r2, 0, 0				# 828
	b	beq_cont.20491				# 825
beq_else.20490:
	lfs	f0, 0(r8)				# 200
	fmul	f0, f0, f1				# 200
	lfs	f1, 4(r8)				# 200
	fmul	f1, f1, f2				# 200
	fadd	f0, f0, f1				# 200
	lfs	f1, 8(r8)				# 200
	fmul	f1, f1, f3				# 200
	fadd	f0, f0, f1				# 200
	fneg	f0, f0				# 107
	fdiv	f0, f0, f4				# 826
	stfs	f0, 0(r9)				# 826
	addi	r2, 0, 1				# 827
beq_cont.20491:
	b	beq_cont.20487				# 906
beq_else.20486:
	lfs	f4, 0(r6)				# 872
	lfs	f5, 4(r6)				# 872
	lfs	f6, 8(r6)				# 872
	fmul	f7, f4, f4				# 103
	lwz	r8, 16(r10)				# 290
	lfs	f8, 0(r8)				# 295
	fmul	f7, f7, f8				# 836
	fmul	f8, f5, f5				# 103
	lwz	r8, 16(r10)				# 300
	lfs	f9, 4(r8)				# 305
	fmul	f8, f8, f9				# 836
	fadd	f7, f7, f8				# 836
	fmul	f8, f6, f6				# 103
	lwz	r8, 16(r10)				# 310
	lfs	f9, 8(r8)				# 315
	fmul	f8, f8, f9				# 836
	fadd	f7, f7, f8				# 836
	lwz	r8, 12(r10)				# 281
	cmpwi	cr7, r8, 0				# 838
	bne	cr7, beq_else.20492				# 838
	fmr	f4, f7				# 839
	b	beq_cont.20493				# 838
beq_else.20492:
	fmul	f8, f5, f6				# 842
	lwz	r8, 36(r10)				# 410
	lfs	f9, 0(r8)				# 415
	fmul	f8, f8, f9				# 842
	fadd	f7, f7, f8				# 841
	fmul	f6, f6, f4				# 843
	lwz	r8, 36(r10)				# 420
	lfs	f8, 4(r8)				# 425
	fmul	f6, f6, f8				# 843
	fadd	f6, f7, f6				# 841
	fmul	f4, f4, f5				# 844
	lwz	r8, 36(r10)				# 430
	lfs	f5, 8(r8)				# 435
	fmul	f4, f4, f5				# 844
	fadd	f4, f6, f4				# 841
beq_cont.20493:
	fcmpu	cr7, f4, f0				# 111
	bne	cr7, beq_else.20494				# 111
	addi	r8, 0, 1				# 111
	b	beq_cont.20495				# 111
beq_else.20494:
	addi	r8, 0, 0				# 111
beq_cont.20495:
	cmpwi	cr7, r8, 0				# 874
	bne	cr7, beq_else.20496				# 874
	lfs	f5, 0(r6)				# 879
	lfs	f6, 4(r6)				# 879
	lfs	f7, 8(r6)				# 879
	fmul	f8, f5, f1				# 851
	lwz	r8, 16(r10)				# 290
	lfs	f9, 0(r8)				# 295
	fmul	f8, f8, f9				# 851
	fmul	f9, f6, f2				# 852
	lwz	r8, 16(r10)				# 300
	lfs	f10, 4(r8)				# 305
	fmul	f9, f9, f10				# 852
	fadd	f8, f8, f9				# 851
	fmul	f9, f7, f3				# 853
	lwz	r8, 16(r10)				# 310
	lfs	f10, 8(r8)				# 315
	fmul	f9, f9, f10				# 853
	fadd	f8, f8, f9				# 851
	lwz	r8, 12(r10)				# 281
	cmpwi	cr7, r8, 0				# 855
	bne	cr7, beq_else.20498				# 855
	fmr	f5, f8				# 856
	b	beq_cont.20499				# 855
beq_else.20498:
	fmul	f9, f7, f2				# 859
	fmul	f10, f6, f3				# 859
	fadd	f9, f9, f10				# 859
	lwz	r8, 36(r10)				# 410
	lfs	f10, 0(r8)				# 415
	fmul	f9, f9, f10				# 859
	fmul	f10, f5, f3				# 860
	fmul	f7, f7, f1				# 860
	fadd	f7, f10, f7				# 860
	lwz	r8, 36(r10)				# 420
	lfs	f10, 4(r8)				# 425
	fmul	f7, f7, f10				# 860
	fadd	f7, f9, f7				# 859
	fmul	f5, f5, f2				# 861
	fmul	f6, f6, f1				# 861
	fadd	f5, f5, f6				# 861
	lwz	r8, 36(r10)				# 430
	lfs	f6, 8(r8)				# 435
	fmul	f5, f5, f6				# 861
	fadd	f5, f7, f5				# 859
	addis	r31, 0, ha16(l.16113)
	ori	r31, r31, lo16(l.16113)
	lfs	f6, 0(r31)				# 105
	fdiv	f5, f5, f6				# 105
	fadd	f5, f8, f5				# 858
beq_cont.20499:
	fmul	f6, f1, f1				# 103
	lwz	r8, 16(r10)				# 290
	lfs	f7, 0(r8)				# 295
	fmul	f6, f6, f7				# 836
	fmul	f7, f2, f2				# 103
	lwz	r8, 16(r10)				# 300
	lfs	f8, 4(r8)				# 305
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	fmul	f7, f3, f3				# 103
	lwz	r8, 16(r10)				# 310
	lfs	f8, 8(r8)				# 315
	fmul	f7, f7, f8				# 836
	fadd	f6, f6, f7				# 836
	lwz	r8, 12(r10)				# 281
	cmpwi	cr7, r8, 0				# 838
	bne	cr7, beq_else.20500				# 838
	fmr	f1, f6				# 839
	b	beq_cont.20501				# 838
beq_else.20500:
	fmul	f7, f2, f3				# 842
	lwz	r8, 36(r10)				# 410
	lfs	f8, 0(r8)				# 415
	fmul	f7, f7, f8				# 842
	fadd	f6, f6, f7				# 841
	fmul	f3, f3, f1				# 843
	lwz	r8, 36(r10)				# 420
	lfs	f7, 4(r8)				# 425
	fmul	f3, f3, f7				# 843
	fadd	f3, f6, f3				# 841
	fmul	f1, f1, f2				# 844
	lwz	r8, 36(r10)				# 430
	lfs	f2, 8(r8)				# 435
	fmul	f1, f1, f2				# 844
	fadd	f1, f3, f1				# 841
beq_cont.20501:
	lwz	r8, 4(r10)				# 252
	cmpwi	cr7, r8, 3				# 882
	bne	cr7, beq_else.20502				# 882
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 882
	fsub	f1, f1, f2				# 882
	b	beq_cont.20503				# 882
beq_else.20502:
beq_cont.20503:
	fmul	f2, f5, f5				# 103
	fmul	f1, f4, f1				# 884
	fsub	f1, f2, f1				# 884
	fcmpu	cr7, f1, f0				# 113
	bgt	cr7, ble_else.20504				# 113
	addi	r8, 0, 0				# 113
	b	ble_cont.20505				# 113
ble_else.20504:
	addi	r8, 0, 1				# 113
ble_cont.20505:
	cmpwi	cr7, r8, 0				# 886
	bne	cr7, beq_else.20506				# 886
	addi	r2, 0, 0				# 892
	b	beq_cont.20507				# 886
beq_else.20506:
	stfs	f4, -72(r3)				# 887
	stfs	f5, -76(r3)				# 887
	stw	r10, -40(r3)				# 887
	mfspr	r31, 8				# 887
	fmr	f0, f1				# 887
	stw	r31, -80(r3)				# 887
	addi	r3, r3, -84				# 887
	bl	min_caml_sqrt				# 887
	addi	r3, r3, 84				# 887
	lwz	r31, -80(r3)				# 887
	mtspr	8, r31				# 887
	lwz	r2, -40(r3)				# 272
	lwz	r2, 24(r2)				# 272
	cmpwi	cr7, r2, 0				# 888
	bne	cr7, beq_else.20508				# 888
	fneg	f0, f0				# 107
	b	beq_cont.20509				# 888
beq_else.20508:
beq_cont.20509:
	lfs	f1, -76(r3)				# 889
	fsub	f0, f0, f1				# 889
	lfs	f1, -72(r3)				# 889
	fdiv	f0, f0, f1				# 889
	lwz	r2, -24(r3)				# 889
	stfs	f0, 0(r2)				# 889
	addi	r2, 0, 1				# 889
beq_cont.20507:
	b	beq_cont.20497				# 874
beq_else.20496:
	addi	r2, 0, 0				# 875
beq_cont.20497:
beq_cont.20487:
beq_cont.20419:
	cmpwi	cr7, r2, 0				# 1367
	bne	cr7, beq_else.20510				# 1367
	b	beq_cont.20511				# 1367
beq_else.20510:
	lwz	r2, -24(r3)				# 1368
	lfs	f0, 0(r2)				# 1368
	lwz	r2, -20(r3)				# 1369
	lfs	f1, 0(r2)				# 1369
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20512				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20513				# 109
ble_else.20512:
	addi	r2, 0, 1				# 109
ble_cont.20513:
	cmpwi	cr7, r2, 0				# 1369
	bne	cr7, beq_else.20514				# 1369
	b	beq_cont.20515				# 1369
beq_else.20514:
	lwz	r2, -16(r3)				# 1370
	lwz	r5, -12(r3)				# 1370
	lwz	r6, 0(r3)				# 1370
	mfspr	r31, 8				# 1370
	stw	r31, -80(r3)				# 1370
	addi	r3, r3, -84				# 1370
	bl	solve_one_or_network.2772				# 1370
	addi	r3, r3, 84				# 1370
	lwz	r31, -80(r3)				# 1370
	mtspr	8, r31				# 1370
beq_cont.20515:
beq_cont.20511:
beq_cont.20417:
	lwz	r2, -8(r3)				# 1374
	addi	r2, r2, 1				# 1374
	lwz	r5, -4(r3)				# 1374
	lwz	r6, 0(r3)				# 1374
	b	trace_or_matrix.2776				# 1374
solve_each_element_fast.2782:
	addis	r7, 0, ha16(tmin.2444)
	ori	r7, r7, lo16(tmin.2444)				# 1395
	lwz	r7, 0(r7)				# 1395
	addis	r8, 0, ha16(startp_fast.2455)
	ori	r8, r8, lo16(startp_fast.2455)				# 1395
	lwz	r8, 0(r8)				# 1395
	addis	r9, 0, ha16(solver_dist.2442)
	ori	r9, r9, lo16(solver_dist.2442)				# 1395
	lwz	r9, 0(r9)				# 1395
	addis	r10, 0, ha16(objects.2435)
	ori	r10, r10, lo16(objects.2435)				# 1395
	lwz	r10, 0(r10)				# 1395
	addis	r11, 0, ha16(intsec_rectside.2443)
	ori	r11, r11, lo16(intsec_rectside.2443)				# 1395
	lwz	r11, 0(r11)				# 1395
	addis	r12, 0, ha16(intersection_point.2445)
	ori	r12, r12, lo16(intersection_point.2445)				# 1395
	lwz	r12, 0(r12)				# 1395
	addis	r13, 0, ha16(intersected_object_id.2446)
	ori	r13, r13, lo16(intersected_object_id.2446)				# 1395
	lwz	r13, 0(r13)				# 1395
	addi	r14, 0, 0				# 1395
	addis	r15, 0, ha16(Td252.5768)
	ori	r15, r15, lo16(Td252.5768)				# 1395
	lfs	f0, 0(r15)				# 1395
	lwz	r15, 0(r6)				# 521
	slwi	r16, r2, 2				# 1397
	lwzx	r16, r5, r16				# 1397
	cmpwi	cr7, r16, -1				# 1398
	bne	cr7, beq_else.20516				# 1398
	blr
beq_else.20516:
	slwi	r17, r16, 2				# 1024
	lwzx	r17, r10, r17				# 1024
	lwz	r18, 40(r17)				# 441
	lfs	f1, 0(r18)				# 1026
	lfs	f2, 4(r18)				# 1027
	lfs	f3, 8(r18)				# 1028
	lwz	r19, 4(r6)				# 527
	slwi	r20, r16, 2				# 1030
	lwzx	r19, r19, r20				# 1030
	lwz	r20, 4(r17)				# 252
	stw	r11, 0(r3)				# 1032
	stw	r13, -4(r3)				# 1032
	stw	r12, -8(r3)				# 1032
	stw	r14, -12(r3)				# 1032
	stw	r8, -16(r3)				# 1032
	stw	r15, -20(r3)				# 1032
	stw	r7, -24(r3)				# 1032
	stfs	f0, -28(r3)				# 1032
	stw	r9, -32(r3)				# 1032
	stw	r6, -36(r3)				# 1032
	stw	r5, -40(r3)				# 1032
	stw	r2, -44(r3)				# 1032
	stw	r10, -48(r3)				# 1032
	stw	r16, -52(r3)				# 1032
	cmpwi	cr7, r20, 1				# 1032
	bne	cr7, beq_else.20518				# 1032
	lwz	r18, 0(r6)				# 521
	lfs	f4, 0(r19)				# 915
	fsub	f4, f4, f1				# 915
	lfs	f5, 4(r19)				# 915
	fmul	f4, f4, f5				# 915
	lfs	f5, 4(r18)				# 917
	fmul	f5, f4, f5				# 917
	fadd	f5, f5, f2				# 917
	stfs	f1, -56(r3)				# 917
	stfs	f2, -60(r3)				# 917
	stw	r19, -64(r3)				# 917
	stfs	f3, -68(r3)				# 917
	stfs	f4, -72(r3)				# 917
	stw	r18, -76(r3)				# 917
	stw	r17, -80(r3)				# 917
	mfspr	r31, 8				# 917
	fmr	f0, f5				# 917
	stw	r31, -84(r3)				# 917
	addi	r3, r3, -88				# 917
	bl	min_caml_fabs				# 917
	addi	r3, r3, 88				# 917
	lwz	r31, -84(r3)				# 917
	mtspr	8, r31				# 917
	lwz	r2, -80(r3)				# 300
	lwz	r5, 16(r2)				# 300
	lfs	f1, 4(r5)				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20520				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20521				# 109
ble_else.20520:
	addi	r5, 0, 1				# 109
ble_cont.20521:
	cmpwi	cr7, r5, 0				# 917
	bne	cr7, beq_else.20522				# 917
	addi	r5, 0, 0				# 921
	b	beq_cont.20523				# 917
beq_else.20522:
	lwz	r5, -76(r3)				# 918
	lfs	f0, 8(r5)				# 918
	lfs	f1, -72(r3)				# 918
	fmul	f0, f1, f0				# 918
	lfs	f2, -68(r3)				# 918
	fadd	f0, f0, f2				# 918
	mfspr	r31, 8				# 918
	stw	r31, -84(r3)				# 918
	addi	r3, r3, -88				# 918
	bl	min_caml_fabs				# 918
	addi	r3, r3, 88				# 918
	lwz	r31, -84(r3)				# 918
	mtspr	8, r31				# 918
	lwz	r2, -80(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lfs	f1, 8(r5)				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20524				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20525				# 109
ble_else.20524:
	addi	r5, 0, 1				# 109
ble_cont.20525:
	cmpwi	cr7, r5, 0				# 918
	bne	cr7, beq_else.20526				# 918
	addi	r5, 0, 0				# 920
	b	beq_cont.20527				# 918
beq_else.20526:
	lwz	r5, -64(r3)				# 919
	lfs	f0, 4(r5)				# 919
	lfs	f1, -28(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20528				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20529				# 111
beq_else.20528:
	addi	r6, 0, 0				# 111
beq_cont.20529:
	cmpwi	cr7, r6, 0				# 919
	bne	cr7, beq_else.20530				# 919
	addi	r5, 0, 1				# 919
	b	beq_cont.20531				# 919
beq_else.20530:
	addi	r5, 0, 0				# 919
beq_cont.20531:
beq_cont.20527:
beq_cont.20523:
	cmpwi	cr7, r5, 0				# 916
	bne	cr7, beq_else.20532				# 916
	lwz	r5, -64(r3)				# 924
	lfs	f0, 8(r5)				# 924
	lfs	f1, -60(r3)				# 924
	fsub	f0, f0, f1				# 924
	lfs	f2, 12(r5)				# 924
	fmul	f0, f0, f2				# 924
	lwz	r6, -76(r3)				# 926
	lfs	f2, 0(r6)				# 926
	fmul	f2, f0, f2				# 926
	lfs	f3, -56(r3)				# 926
	fadd	f2, f2, f3				# 926
	stfs	f0, -84(r3)				# 926
	mfspr	r31, 8				# 926
	fmr	f0, f2				# 926
	stw	r31, -88(r3)				# 926
	addi	r3, r3, -92				# 926
	bl	min_caml_fabs				# 926
	addi	r3, r3, 92				# 926
	lwz	r31, -88(r3)				# 926
	mtspr	8, r31				# 926
	lwz	r2, -80(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lfs	f1, 0(r5)				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20534				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20535				# 109
ble_else.20534:
	addi	r5, 0, 1				# 109
ble_cont.20535:
	cmpwi	cr7, r5, 0				# 926
	bne	cr7, beq_else.20536				# 926
	addi	r5, 0, 0				# 930
	b	beq_cont.20537				# 926
beq_else.20536:
	lwz	r5, -76(r3)				# 927
	lfs	f0, 8(r5)				# 927
	lfs	f1, -84(r3)				# 927
	fmul	f0, f1, f0				# 927
	lfs	f2, -68(r3)				# 927
	fadd	f0, f0, f2				# 927
	mfspr	r31, 8				# 927
	stw	r31, -88(r3)				# 927
	addi	r3, r3, -92				# 927
	bl	min_caml_fabs				# 927
	addi	r3, r3, 92				# 927
	lwz	r31, -88(r3)				# 927
	mtspr	8, r31				# 927
	lwz	r2, -80(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lfs	f1, 8(r5)				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20538				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20539				# 109
ble_else.20538:
	addi	r5, 0, 1				# 109
ble_cont.20539:
	cmpwi	cr7, r5, 0				# 927
	bne	cr7, beq_else.20540				# 927
	addi	r5, 0, 0				# 929
	b	beq_cont.20541				# 927
beq_else.20540:
	lwz	r5, -64(r3)				# 928
	lfs	f0, 12(r5)				# 928
	lfs	f1, -28(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20542				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20543				# 111
beq_else.20542:
	addi	r6, 0, 0				# 111
beq_cont.20543:
	cmpwi	cr7, r6, 0				# 928
	bne	cr7, beq_else.20544				# 928
	addi	r5, 0, 1				# 928
	b	beq_cont.20545				# 928
beq_else.20544:
	addi	r5, 0, 0				# 928
beq_cont.20545:
beq_cont.20541:
beq_cont.20537:
	cmpwi	cr7, r5, 0				# 925
	bne	cr7, beq_else.20546				# 925
	lwz	r5, -64(r3)				# 933
	lfs	f0, 16(r5)				# 933
	lfs	f1, -68(r3)				# 933
	fsub	f0, f0, f1				# 933
	lfs	f1, 20(r5)				# 933
	fmul	f0, f0, f1				# 933
	lwz	r6, -76(r3)				# 935
	lfs	f1, 0(r6)				# 935
	fmul	f1, f0, f1				# 935
	lfs	f2, -56(r3)				# 935
	fadd	f1, f1, f2				# 935
	stfs	f0, -88(r3)				# 935
	mfspr	r31, 8				# 935
	fmr	f0, f1				# 935
	stw	r31, -92(r3)				# 935
	addi	r3, r3, -96				# 935
	bl	min_caml_fabs				# 935
	addi	r3, r3, 96				# 935
	lwz	r31, -92(r3)				# 935
	mtspr	8, r31				# 935
	lwz	r2, -80(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lfs	f1, 0(r5)				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20548				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20549				# 109
ble_else.20548:
	addi	r5, 0, 1				# 109
ble_cont.20549:
	cmpwi	cr7, r5, 0				# 935
	bne	cr7, beq_else.20550				# 935
	addi	r2, 0, 0				# 939
	b	beq_cont.20551				# 935
beq_else.20550:
	lwz	r5, -76(r3)				# 936
	lfs	f0, 4(r5)				# 936
	lfs	f1, -88(r3)				# 936
	fmul	f0, f1, f0				# 936
	lfs	f2, -60(r3)				# 936
	fadd	f0, f0, f2				# 936
	mfspr	r31, 8				# 936
	stw	r31, -92(r3)				# 936
	addi	r3, r3, -96				# 936
	bl	min_caml_fabs				# 936
	addi	r3, r3, 96				# 936
	lwz	r31, -92(r3)				# 936
	mtspr	8, r31				# 936
	lwz	r2, -80(r3)				# 300
	lwz	r2, 16(r2)				# 300
	lfs	f1, 4(r2)				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20552				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20553				# 109
ble_else.20552:
	addi	r2, 0, 1				# 109
ble_cont.20553:
	cmpwi	cr7, r2, 0				# 936
	bne	cr7, beq_else.20554				# 936
	addi	r2, 0, 0				# 938
	b	beq_cont.20555				# 936
beq_else.20554:
	lwz	r2, -64(r3)				# 937
	lfs	f0, 20(r2)				# 937
	lfs	f1, -28(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20556				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20557				# 111
beq_else.20556:
	addi	r2, 0, 0				# 111
beq_cont.20557:
	cmpwi	cr7, r2, 0				# 937
	bne	cr7, beq_else.20558				# 937
	addi	r2, 0, 1				# 937
	b	beq_cont.20559				# 937
beq_else.20558:
	addi	r2, 0, 0				# 937
beq_cont.20559:
beq_cont.20555:
beq_cont.20551:
	cmpwi	cr7, r2, 0				# 934
	bne	cr7, beq_else.20560				# 934
	addi	r2, 0, 0				# 943
	b	beq_cont.20561				# 934
beq_else.20560:
	lwz	r2, -32(r3)				# 941
	lfs	f0, -88(r3)				# 941
	stfs	f0, 0(r2)				# 941
	addi	r2, 0, 3				# 941
beq_cont.20561:
	b	beq_cont.20547				# 925
beq_else.20546:
	lwz	r2, -32(r3)				# 932
	lfs	f0, -84(r3)				# 932
	stfs	f0, 0(r2)				# 932
	addi	r2, 0, 2				# 932
beq_cont.20547:
	b	beq_cont.20533				# 916
beq_else.20532:
	lwz	r2, -32(r3)				# 923
	lfs	f0, -72(r3)				# 923
	stfs	f0, 0(r2)				# 923
	addi	r2, 0, 1				# 923
beq_cont.20533:
	b	beq_cont.20519				# 1032
beq_else.20518:
	cmpwi	cr7, r20, 2				# 1034
	bne	cr7, beq_else.20562				# 1034
	lfs	f1, 0(r19)				# 997
	fcmpu	cr7, f0, f1				# 115
	bgt	cr7, ble_else.20564				# 115
	addi	r17, 0, 0				# 115
	b	ble_cont.20565				# 115
ble_else.20564:
	addi	r17, 0, 1				# 115
ble_cont.20565:
	cmpwi	cr7, r17, 0				# 997
	bne	cr7, beq_else.20566				# 997
	addi	r2, 0, 0				# 1000
	b	beq_cont.20567				# 997
beq_else.20566:
	lfs	f1, 0(r19)				# 998
	lfs	f2, 12(r18)				# 998
	fmul	f1, f1, f2				# 998
	stfs	f1, 0(r9)				# 998
	addi	r2, 0, 1				# 999
beq_cont.20567:
	b	beq_cont.20563				# 1034
beq_else.20562:
	lfs	f4, 0(r19)				# 1006
	fcmpu	cr7, f4, f0				# 111
	bne	cr7, beq_else.20568				# 111
	addi	r20, 0, 1				# 111
	b	beq_cont.20569				# 111
beq_else.20568:
	addi	r20, 0, 0				# 111
beq_cont.20569:
	cmpwi	cr7, r20, 0				# 1007
	bne	cr7, beq_else.20570				# 1007
	lfs	f5, 4(r19)				# 1010
	fmul	f1, f5, f1				# 1010
	lfs	f5, 8(r19)				# 1010
	fmul	f2, f5, f2				# 1010
	fadd	f1, f1, f2				# 1010
	lfs	f2, 12(r19)				# 1010
	fmul	f2, f2, f3				# 1010
	fadd	f1, f1, f2				# 1010
	lfs	f2, 12(r18)				# 1011
	fmul	f3, f1, f1				# 103
	fmul	f2, f4, f2				# 1012
	fsub	f2, f3, f2				# 1012
	fcmpu	cr7, f2, f0				# 113
	bgt	cr7, ble_else.20572				# 113
	addi	r18, 0, 0				# 113
	b	ble_cont.20573				# 113
ble_else.20572:
	addi	r18, 0, 1				# 113
ble_cont.20573:
	cmpwi	cr7, r18, 0				# 1013
	bne	cr7, beq_else.20574				# 1013
	addi	r2, 0, 0				# 1019
	b	beq_cont.20575				# 1013
beq_else.20574:
	lwz	r17, 24(r17)				# 272
	cmpwi	cr7, r17, 0				# 1014
	bne	cr7, beq_else.20576				# 1014
	stw	r19, -64(r3)				# 1017
	stfs	f1, -92(r3)				# 1017
	mfspr	r31, 8				# 1017
	fmr	f0, f2				# 1017
	stw	r31, -96(r3)				# 1017
	addi	r3, r3, -100				# 1017
	bl	min_caml_sqrt				# 1017
	addi	r3, r3, 100				# 1017
	lwz	r31, -96(r3)				# 1017
	mtspr	8, r31				# 1017
	lfs	f1, -92(r3)				# 1017
	fsub	f0, f1, f0				# 1017
	lwz	r2, -64(r3)				# 1017
	lfs	f1, 16(r2)				# 1017
	fmul	f0, f0, f1				# 1017
	lwz	r2, -32(r3)				# 1017
	stfs	f0, 0(r2)				# 1017
	b	beq_cont.20577				# 1014
beq_else.20576:
	stw	r19, -64(r3)				# 1015
	stfs	f1, -92(r3)				# 1015
	mfspr	r31, 8				# 1015
	fmr	f0, f2				# 1015
	stw	r31, -96(r3)				# 1015
	addi	r3, r3, -100				# 1015
	bl	min_caml_sqrt				# 1015
	addi	r3, r3, 100				# 1015
	lwz	r31, -96(r3)				# 1015
	mtspr	8, r31				# 1015
	lfs	f1, -92(r3)				# 1015
	fadd	f0, f1, f0				# 1015
	lwz	r2, -64(r3)				# 1015
	lfs	f1, 16(r2)				# 1015
	fmul	f0, f0, f1				# 1015
	lwz	r2, -32(r3)				# 1015
	stfs	f0, 0(r2)				# 1015
beq_cont.20577:
	addi	r2, 0, 1				# 1018
beq_cont.20575:
	b	beq_cont.20571				# 1007
beq_else.20570:
	addi	r2, 0, 0				# 1008
beq_cont.20571:
beq_cont.20563:
beq_cont.20519:
	cmpwi	cr7, r2, 0				# 1401
	bne	cr7, beq_else.20578				# 1401
	lwz	r2, -52(r3)				# 1429
	slwi	r2, r2, 2				# 1429
	lwz	r5, -48(r3)				# 1429
	lwzx	r2, r5, r2				# 1429
	lwz	r2, 24(r2)				# 272
	cmpwi	cr7, r2, 0				# 1429
	bne	cr7, beq_else.20579				# 1429
	blr
beq_else.20579:
	lwz	r2, -44(r3)				# 1430
	addi	r2, r2, 1				# 1430
	lwz	r5, -40(r3)				# 1430
	lwz	r6, -36(r3)				# 1430
	b	solve_each_element_fast.2782				# 1430
beq_else.20578:
	lwz	r5, -32(r3)				# 1405
	lfs	f0, 0(r5)				# 1405
	lfs	f1, -28(r3)				# 109
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.20581				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20582				# 109
ble_else.20581:
	addi	r5, 0, 1				# 109
ble_cont.20582:
	cmpwi	cr7, r5, 0				# 1407
	bne	cr7, beq_else.20583				# 1407
	b	beq_cont.20584				# 1407
beq_else.20583:
	lwz	r5, -24(r3)				# 1408
	lfs	f1, 0(r5)				# 1408
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20585				# 109
	addi	r6, 0, 0				# 109
	b	ble_cont.20586				# 109
ble_else.20585:
	addi	r6, 0, 1				# 109
ble_cont.20586:
	cmpwi	cr7, r6, 0				# 1408
	bne	cr7, beq_else.20587				# 1408
	b	beq_cont.20588				# 1408
beq_else.20587:
	addis	r31, 0, ha16(l.16333)
	ori	r31, r31, lo16(l.16333)
	lfs	f1, 0(r31)				# 1410
	fadd	f0, f0, f1				# 1410
	lwz	r6, -20(r3)				# 1411
	lfs	f1, 0(r6)				# 1411
	fmul	f1, f1, f0				# 1411
	lwz	r7, -16(r3)				# 1411
	lfs	f2, 0(r7)				# 1411
	fadd	f1, f1, f2				# 1411
	lfs	f2, 4(r6)				# 1412
	fmul	f2, f2, f0				# 1412
	lfs	f3, 4(r7)				# 1412
	fadd	f2, f2, f3				# 1412
	lfs	f3, 8(r6)				# 1413
	fmul	f3, f3, f0				# 1413
	lfs	f4, 8(r7)				# 1413
	fadd	f3, f3, f4				# 1413
	lwz	r6, -12(r3)				# 1414
	lwz	r7, -40(r3)				# 1414
	stw	r2, -96(r3)				# 1414
	stfs	f3, -100(r3)				# 1414
	stfs	f2, -104(r3)				# 1414
	stfs	f1, -108(r3)				# 1414
	stfs	f0, -112(r3)				# 1414
	mfspr	r31, 8				# 1414
	mr	r5, r7				# 1414
	mr	r2, r6				# 1414
	fmr	f0, f1				# 1414
	fmr	f1, f2				# 1414
	fmr	f2, f3				# 1414
	stw	r31, -116(r3)				# 1414
	addi	r3, r3, -120				# 1414
	bl	check_all_inside.2753				# 1414
	addi	r3, r3, 120				# 1414
	lwz	r31, -116(r3)				# 1414
	mtspr	8, r31				# 1414
	cmpwi	cr7, r2, 0				# 1414
	bne	cr7, beq_else.20589				# 1414
	b	beq_cont.20590				# 1414
beq_else.20589:
	lwz	r2, -24(r3)				# 1416
	lfs	f0, -112(r3)				# 1416
	stfs	f0, 0(r2)				# 1416
	lwz	r2, -8(r3)				# 147
	lfs	f0, -108(r3)				# 147
	stfs	f0, 0(r2)				# 147
	lfs	f0, -104(r3)				# 148
	stfs	f0, 4(r2)				# 148
	lfs	f0, -100(r3)				# 149
	stfs	f0, 8(r2)				# 149
	lwz	r2, -4(r3)				# 1418
	lwz	r5, -52(r3)				# 1418
	stw	r5, 0(r2)				# 1418
	lwz	r2, 0(r3)				# 1419
	lwz	r5, -96(r3)				# 1419
	stw	r5, 0(r2)				# 1419
beq_cont.20590:
beq_cont.20588:
beq_cont.20584:
	lwz	r2, -44(r3)				# 1425
	addi	r2, r2, 1				# 1425
	lwz	r5, -40(r3)				# 1425
	lwz	r6, -36(r3)				# 1425
	b	solve_each_element_fast.2782				# 1425
solve_one_or_network_fast.2786:
	addis	r7, 0, ha16(and_net.2440)
	ori	r7, r7, lo16(and_net.2440)				# 1436
	lwz	r7, 0(r7)				# 1436
	addi	r8, 0, 0				# 1436
	slwi	r9, r2, 2				# 1437
	lwzx	r9, r5, r9				# 1437
	cmpwi	cr7, r9, -1				# 1438
	bne	cr7, beq_else.20591				# 1438
	blr
beq_else.20591:
	slwi	r9, r9, 2				# 1439
	lwzx	r7, r7, r9				# 1439
	stw	r6, 0(r3)				# 1440
	stw	r5, -4(r3)				# 1440
	stw	r2, -8(r3)				# 1440
	mfspr	r31, 8				# 1440
	mr	r5, r7				# 1440
	mr	r2, r8				# 1440
	stw	r31, -12(r3)				# 1440
	addi	r3, r3, -16				# 1440
	bl	solve_each_element_fast.2782				# 1440
	addi	r3, r3, 16				# 1440
	lwz	r31, -12(r3)				# 1440
	mtspr	8, r31				# 1440
	lwz	r2, -8(r3)				# 1441
	addi	r2, r2, 1				# 1441
	lwz	r5, -4(r3)				# 1441
	lwz	r6, 0(r3)				# 1441
	b	solve_one_or_network_fast.2786				# 1441
trace_or_matrix_fast.2790:
	addis	r7, 0, ha16(tmin.2444)
	ori	r7, r7, lo16(tmin.2444)				# 1446
	lwz	r7, 0(r7)				# 1446
	addis	r8, 0, ha16(solver_dist.2442)
	ori	r8, r8, lo16(solver_dist.2442)				# 1446
	lwz	r8, 0(r8)				# 1446
	addis	r9, 0, ha16(objects.2435)
	ori	r9, r9, lo16(objects.2435)				# 1446
	lwz	r9, 0(r9)				# 1446
	addi	r10, 0, 1				# 1446
	addis	r11, 0, ha16(Td252.5768)
	ori	r11, r11, lo16(Td252.5768)				# 1446
	lfs	f0, 0(r11)				# 1446
	slwi	r11, r2, 2				# 1447
	lwzx	r11, r5, r11				# 1447
	lwz	r12, 0(r11)				# 1448
	cmpwi	cr7, r12, -1				# 1449
	bne	cr7, beq_else.20593				# 1449
	blr
beq_else.20593:
	stw	r6, 0(r3)				# 1452
	stw	r5, -4(r3)				# 1452
	stw	r2, -8(r3)				# 1452
	cmpwi	cr7, r12, 99				# 1452
	bne	cr7, beq_else.20595				# 1452
	mfspr	r31, 8				# 1453
	mr	r5, r11				# 1453
	mr	r2, r10				# 1453
	stw	r31, -12(r3)				# 1453
	addi	r3, r3, -16				# 1453
	bl	solve_one_or_network_fast.2786				# 1453
	addi	r3, r3, 16				# 1453
	lwz	r31, -12(r3)				# 1453
	mtspr	8, r31				# 1453
	b	beq_cont.20596				# 1452
beq_else.20595:
	slwi	r13, r12, 2				# 1024
	lwzx	r9, r9, r13				# 1024
	lwz	r13, 40(r9)				# 441
	lfs	f1, 0(r13)				# 1026
	lfs	f2, 4(r13)				# 1027
	lfs	f3, 8(r13)				# 1028
	lwz	r14, 4(r6)				# 527
	slwi	r12, r12, 2				# 1030
	lwzx	r12, r14, r12				# 1030
	lwz	r14, 4(r9)				# 252
	stw	r11, -12(r3)				# 1032
	stw	r10, -16(r3)				# 1032
	stw	r7, -20(r3)				# 1032
	stw	r8, -24(r3)				# 1032
	cmpwi	cr7, r14, 1				# 1032
	bne	cr7, beq_else.20597				# 1032
	lwz	r13, 0(r6)				# 521
	lfs	f4, 0(r12)				# 915
	fsub	f4, f4, f1				# 915
	lfs	f5, 4(r12)				# 915
	fmul	f4, f4, f5				# 915
	lfs	f5, 4(r13)				# 917
	fmul	f5, f4, f5				# 917
	fadd	f5, f5, f2				# 917
	stfs	f1, -28(r3)				# 917
	stfs	f2, -32(r3)				# 917
	stfs	f0, -36(r3)				# 917
	stw	r12, -40(r3)				# 917
	stfs	f3, -44(r3)				# 917
	stfs	f4, -48(r3)				# 917
	stw	r13, -52(r3)				# 917
	stw	r9, -56(r3)				# 917
	mfspr	r31, 8				# 917
	fmr	f0, f5				# 917
	stw	r31, -60(r3)				# 917
	addi	r3, r3, -64				# 917
	bl	min_caml_fabs				# 917
	addi	r3, r3, 64				# 917
	lwz	r31, -60(r3)				# 917
	mtspr	8, r31				# 917
	lwz	r2, -56(r3)				# 300
	lwz	r5, 16(r2)				# 300
	lfs	f1, 4(r5)				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20599				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20600				# 109
ble_else.20599:
	addi	r5, 0, 1				# 109
ble_cont.20600:
	cmpwi	cr7, r5, 0				# 917
	bne	cr7, beq_else.20601				# 917
	addi	r5, 0, 0				# 921
	b	beq_cont.20602				# 917
beq_else.20601:
	lwz	r5, -52(r3)				# 918
	lfs	f0, 8(r5)				# 918
	lfs	f1, -48(r3)				# 918
	fmul	f0, f1, f0				# 918
	lfs	f2, -44(r3)				# 918
	fadd	f0, f0, f2				# 918
	mfspr	r31, 8				# 918
	stw	r31, -60(r3)				# 918
	addi	r3, r3, -64				# 918
	bl	min_caml_fabs				# 918
	addi	r3, r3, 64				# 918
	lwz	r31, -60(r3)				# 918
	mtspr	8, r31				# 918
	lwz	r2, -56(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lfs	f1, 8(r5)				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20603				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20604				# 109
ble_else.20603:
	addi	r5, 0, 1				# 109
ble_cont.20604:
	cmpwi	cr7, r5, 0				# 918
	bne	cr7, beq_else.20605				# 918
	addi	r5, 0, 0				# 920
	b	beq_cont.20606				# 918
beq_else.20605:
	lwz	r5, -40(r3)				# 919
	lfs	f0, 4(r5)				# 919
	lfs	f1, -36(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20607				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20608				# 111
beq_else.20607:
	addi	r6, 0, 0				# 111
beq_cont.20608:
	cmpwi	cr7, r6, 0				# 919
	bne	cr7, beq_else.20609				# 919
	addi	r5, 0, 1				# 919
	b	beq_cont.20610				# 919
beq_else.20609:
	addi	r5, 0, 0				# 919
beq_cont.20610:
beq_cont.20606:
beq_cont.20602:
	cmpwi	cr7, r5, 0				# 916
	bne	cr7, beq_else.20611				# 916
	lwz	r5, -40(r3)				# 924
	lfs	f0, 8(r5)				# 924
	lfs	f1, -32(r3)				# 924
	fsub	f0, f0, f1				# 924
	lfs	f2, 12(r5)				# 924
	fmul	f0, f0, f2				# 924
	lwz	r6, -52(r3)				# 926
	lfs	f2, 0(r6)				# 926
	fmul	f2, f0, f2				# 926
	lfs	f3, -28(r3)				# 926
	fadd	f2, f2, f3				# 926
	stfs	f0, -60(r3)				# 926
	mfspr	r31, 8				# 926
	fmr	f0, f2				# 926
	stw	r31, -64(r3)				# 926
	addi	r3, r3, -68				# 926
	bl	min_caml_fabs				# 926
	addi	r3, r3, 68				# 926
	lwz	r31, -64(r3)				# 926
	mtspr	8, r31				# 926
	lwz	r2, -56(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lfs	f1, 0(r5)				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20613				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20614				# 109
ble_else.20613:
	addi	r5, 0, 1				# 109
ble_cont.20614:
	cmpwi	cr7, r5, 0				# 926
	bne	cr7, beq_else.20615				# 926
	addi	r5, 0, 0				# 930
	b	beq_cont.20616				# 926
beq_else.20615:
	lwz	r5, -52(r3)				# 927
	lfs	f0, 8(r5)				# 927
	lfs	f1, -60(r3)				# 927
	fmul	f0, f1, f0				# 927
	lfs	f2, -44(r3)				# 927
	fadd	f0, f0, f2				# 927
	mfspr	r31, 8				# 927
	stw	r31, -64(r3)				# 927
	addi	r3, r3, -68				# 927
	bl	min_caml_fabs				# 927
	addi	r3, r3, 68				# 927
	lwz	r31, -64(r3)				# 927
	mtspr	8, r31				# 927
	lwz	r2, -56(r3)				# 310
	lwz	r5, 16(r2)				# 310
	lfs	f1, 8(r5)				# 315
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20617				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20618				# 109
ble_else.20617:
	addi	r5, 0, 1				# 109
ble_cont.20618:
	cmpwi	cr7, r5, 0				# 927
	bne	cr7, beq_else.20619				# 927
	addi	r5, 0, 0				# 929
	b	beq_cont.20620				# 927
beq_else.20619:
	lwz	r5, -40(r3)				# 928
	lfs	f0, 12(r5)				# 928
	lfs	f1, -36(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20621				# 111
	addi	r6, 0, 1				# 111
	b	beq_cont.20622				# 111
beq_else.20621:
	addi	r6, 0, 0				# 111
beq_cont.20622:
	cmpwi	cr7, r6, 0				# 928
	bne	cr7, beq_else.20623				# 928
	addi	r5, 0, 1				# 928
	b	beq_cont.20624				# 928
beq_else.20623:
	addi	r5, 0, 0				# 928
beq_cont.20624:
beq_cont.20620:
beq_cont.20616:
	cmpwi	cr7, r5, 0				# 925
	bne	cr7, beq_else.20625				# 925
	lwz	r5, -40(r3)				# 933
	lfs	f0, 16(r5)				# 933
	lfs	f1, -44(r3)				# 933
	fsub	f0, f0, f1				# 933
	lfs	f1, 20(r5)				# 933
	fmul	f0, f0, f1				# 933
	lwz	r6, -52(r3)				# 935
	lfs	f1, 0(r6)				# 935
	fmul	f1, f0, f1				# 935
	lfs	f2, -28(r3)				# 935
	fadd	f1, f1, f2				# 935
	stfs	f0, -64(r3)				# 935
	mfspr	r31, 8				# 935
	fmr	f0, f1				# 935
	stw	r31, -68(r3)				# 935
	addi	r3, r3, -72				# 935
	bl	min_caml_fabs				# 935
	addi	r3, r3, 72				# 935
	lwz	r31, -68(r3)				# 935
	mtspr	8, r31				# 935
	lwz	r2, -56(r3)				# 290
	lwz	r5, 16(r2)				# 290
	lfs	f1, 0(r5)				# 295
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20627				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20628				# 109
ble_else.20627:
	addi	r5, 0, 1				# 109
ble_cont.20628:
	cmpwi	cr7, r5, 0				# 935
	bne	cr7, beq_else.20629				# 935
	addi	r2, 0, 0				# 939
	b	beq_cont.20630				# 935
beq_else.20629:
	lwz	r5, -52(r3)				# 936
	lfs	f0, 4(r5)				# 936
	lfs	f1, -64(r3)				# 936
	fmul	f0, f1, f0				# 936
	lfs	f2, -32(r3)				# 936
	fadd	f0, f0, f2				# 936
	mfspr	r31, 8				# 936
	stw	r31, -68(r3)				# 936
	addi	r3, r3, -72				# 936
	bl	min_caml_fabs				# 936
	addi	r3, r3, 72				# 936
	lwz	r31, -68(r3)				# 936
	mtspr	8, r31				# 936
	lwz	r2, -56(r3)				# 300
	lwz	r2, 16(r2)				# 300
	lfs	f1, 4(r2)				# 305
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20631				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20632				# 109
ble_else.20631:
	addi	r2, 0, 1				# 109
ble_cont.20632:
	cmpwi	cr7, r2, 0				# 936
	bne	cr7, beq_else.20633				# 936
	addi	r2, 0, 0				# 938
	b	beq_cont.20634				# 936
beq_else.20633:
	lwz	r2, -40(r3)				# 937
	lfs	f0, 20(r2)				# 937
	lfs	f1, -36(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20635				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20636				# 111
beq_else.20635:
	addi	r2, 0, 0				# 111
beq_cont.20636:
	cmpwi	cr7, r2, 0				# 937
	bne	cr7, beq_else.20637				# 937
	addi	r2, 0, 1				# 937
	b	beq_cont.20638				# 937
beq_else.20637:
	addi	r2, 0, 0				# 937
beq_cont.20638:
beq_cont.20634:
beq_cont.20630:
	cmpwi	cr7, r2, 0				# 934
	bne	cr7, beq_else.20639				# 934
	addi	r2, 0, 0				# 943
	b	beq_cont.20640				# 934
beq_else.20639:
	lwz	r2, -24(r3)				# 941
	lfs	f0, -64(r3)				# 941
	stfs	f0, 0(r2)				# 941
	addi	r2, 0, 3				# 941
beq_cont.20640:
	b	beq_cont.20626				# 925
beq_else.20625:
	lwz	r2, -24(r3)				# 932
	lfs	f0, -60(r3)				# 932
	stfs	f0, 0(r2)				# 932
	addi	r2, 0, 2				# 932
beq_cont.20626:
	b	beq_cont.20612				# 916
beq_else.20611:
	lwz	r2, -24(r3)				# 923
	lfs	f0, -48(r3)				# 923
	stfs	f0, 0(r2)				# 923
	addi	r2, 0, 1				# 923
beq_cont.20612:
	b	beq_cont.20598				# 1032
beq_else.20597:
	cmpwi	cr7, r14, 2				# 1034
	bne	cr7, beq_else.20641				# 1034
	lfs	f1, 0(r12)				# 997
	fcmpu	cr7, f0, f1				# 115
	bgt	cr7, ble_else.20643				# 115
	addi	r9, 0, 0				# 115
	b	ble_cont.20644				# 115
ble_else.20643:
	addi	r9, 0, 1				# 115
ble_cont.20644:
	cmpwi	cr7, r9, 0				# 997
	bne	cr7, beq_else.20645				# 997
	addi	r2, 0, 0				# 1000
	b	beq_cont.20646				# 997
beq_else.20645:
	lfs	f0, 0(r12)				# 998
	lfs	f1, 12(r13)				# 998
	fmul	f0, f0, f1				# 998
	stfs	f0, 0(r8)				# 998
	addi	r2, 0, 1				# 999
beq_cont.20646:
	b	beq_cont.20642				# 1034
beq_else.20641:
	lfs	f4, 0(r12)				# 1006
	fcmpu	cr7, f4, f0				# 111
	bne	cr7, beq_else.20647				# 111
	addi	r14, 0, 1				# 111
	b	beq_cont.20648				# 111
beq_else.20647:
	addi	r14, 0, 0				# 111
beq_cont.20648:
	cmpwi	cr7, r14, 0				# 1007
	bne	cr7, beq_else.20649				# 1007
	lfs	f5, 4(r12)				# 1010
	fmul	f1, f5, f1				# 1010
	lfs	f5, 8(r12)				# 1010
	fmul	f2, f5, f2				# 1010
	fadd	f1, f1, f2				# 1010
	lfs	f2, 12(r12)				# 1010
	fmul	f2, f2, f3				# 1010
	fadd	f1, f1, f2				# 1010
	lfs	f2, 12(r13)				# 1011
	fmul	f3, f1, f1				# 103
	fmul	f2, f4, f2				# 1012
	fsub	f2, f3, f2				# 1012
	fcmpu	cr7, f2, f0				# 113
	bgt	cr7, ble_else.20651				# 113
	addi	r13, 0, 0				# 113
	b	ble_cont.20652				# 113
ble_else.20651:
	addi	r13, 0, 1				# 113
ble_cont.20652:
	cmpwi	cr7, r13, 0				# 1013
	bne	cr7, beq_else.20653				# 1013
	addi	r2, 0, 0				# 1019
	b	beq_cont.20654				# 1013
beq_else.20653:
	lwz	r9, 24(r9)				# 272
	cmpwi	cr7, r9, 0				# 1014
	bne	cr7, beq_else.20655				# 1014
	stw	r12, -40(r3)				# 1017
	stfs	f1, -68(r3)				# 1017
	mfspr	r31, 8				# 1017
	fmr	f0, f2				# 1017
	stw	r31, -72(r3)				# 1017
	addi	r3, r3, -76				# 1017
	bl	min_caml_sqrt				# 1017
	addi	r3, r3, 76				# 1017
	lwz	r31, -72(r3)				# 1017
	mtspr	8, r31				# 1017
	lfs	f1, -68(r3)				# 1017
	fsub	f0, f1, f0				# 1017
	lwz	r2, -40(r3)				# 1017
	lfs	f1, 16(r2)				# 1017
	fmul	f0, f0, f1				# 1017
	lwz	r2, -24(r3)				# 1017
	stfs	f0, 0(r2)				# 1017
	b	beq_cont.20656				# 1014
beq_else.20655:
	stw	r12, -40(r3)				# 1015
	stfs	f1, -68(r3)				# 1015
	mfspr	r31, 8				# 1015
	fmr	f0, f2				# 1015
	stw	r31, -72(r3)				# 1015
	addi	r3, r3, -76				# 1015
	bl	min_caml_sqrt				# 1015
	addi	r3, r3, 76				# 1015
	lwz	r31, -72(r3)				# 1015
	mtspr	8, r31				# 1015
	lfs	f1, -68(r3)				# 1015
	fadd	f0, f1, f0				# 1015
	lwz	r2, -40(r3)				# 1015
	lfs	f1, 16(r2)				# 1015
	fmul	f0, f0, f1				# 1015
	lwz	r2, -24(r3)				# 1015
	stfs	f0, 0(r2)				# 1015
beq_cont.20656:
	addi	r2, 0, 1				# 1018
beq_cont.20654:
	b	beq_cont.20650				# 1007
beq_else.20649:
	addi	r2, 0, 0				# 1008
beq_cont.20650:
beq_cont.20642:
beq_cont.20598:
	cmpwi	cr7, r2, 0				# 1458
	bne	cr7, beq_else.20657				# 1458
	b	beq_cont.20658				# 1458
beq_else.20657:
	lwz	r2, -24(r3)				# 1459
	lfs	f0, 0(r2)				# 1459
	lwz	r2, -20(r3)				# 1460
	lfs	f1, 0(r2)				# 1460
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20659				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20660				# 109
ble_else.20659:
	addi	r2, 0, 1				# 109
ble_cont.20660:
	cmpwi	cr7, r2, 0				# 1460
	bne	cr7, beq_else.20661				# 1460
	b	beq_cont.20662				# 1460
beq_else.20661:
	lwz	r2, -16(r3)				# 1461
	lwz	r5, -12(r3)				# 1461
	lwz	r6, 0(r3)				# 1461
	mfspr	r31, 8				# 1461
	stw	r31, -72(r3)				# 1461
	addi	r3, r3, -76				# 1461
	bl	solve_one_or_network_fast.2786				# 1461
	addi	r3, r3, 76				# 1461
	lwz	r31, -72(r3)				# 1461
	mtspr	8, r31				# 1461
beq_cont.20662:
beq_cont.20658:
beq_cont.20596:
	lwz	r2, -8(r3)				# 1465
	addi	r2, r2, 1				# 1465
	lwz	r5, -4(r3)				# 1465
	lwz	r6, 0(r3)				# 1465
	b	trace_or_matrix_fast.2790				# 1465
trace_reflections.2812:
	addis	r6, 0, ha16(tmin.2444)
	ori	r6, r6, lo16(tmin.2444)				# 1634
	lwz	r6, 0(r6)				# 1634
	addis	r7, 0, ha16(texture_color.2448)
	ori	r7, r7, lo16(texture_color.2448)				# 1634
	lwz	r7, 0(r7)				# 1634
	addis	r8, 0, ha16(rgb.2450)
	ori	r8, r8, lo16(rgb.2450)				# 1634
	lwz	r8, 0(r8)				# 1634
	addis	r9, 0, ha16(reflections.2462)
	ori	r9, r9, lo16(reflections.2462)				# 1634
	lwz	r9, 0(r9)				# 1634
	addis	r10, 0, ha16(or_net.2441)
	ori	r10, r10, lo16(or_net.2441)				# 1634
	lwz	r10, 0(r10)				# 1634
	addis	r11, 0, ha16(nvector.2447)
	ori	r11, r11, lo16(nvector.2447)				# 1634
	lwz	r11, 0(r11)				# 1634
	addis	r12, 0, ha16(intsec_rectside.2443)
	ori	r12, r12, lo16(intsec_rectside.2443)				# 1634
	lwz	r12, 0(r12)				# 1634
	addis	r13, 0, ha16(intersected_object_id.2446)
	ori	r13, r13, lo16(intersected_object_id.2446)				# 1634
	lwz	r13, 0(r13)				# 1634
	addi	r14, 0, 0				# 1634
	addis	r15, 0, ha16(Td283.5742)
	ori	r15, r15, lo16(Td283.5742)				# 1634
	lfs	f2, 0(r15)				# 1634
	addis	r15, 0, ha16(Td252.5768)
	ori	r15, r15, lo16(Td252.5768)				# 1634
	lfs	f3, 0(r15)				# 1634
	cmpwi	cr7, r2, 0				# 1636
	blt	cr7, bge_else.20663				# 1636
	slwi	r15, r2, 2				# 1637
	lwzx	r9, r9, r15				# 1637
	lwz	r15, 4(r9)				# 541
	stfs	f2, 0(r6)				# 1472
	lwz	r16, 0(r10)				# 1473
	stw	r2, 0(r3)				# 1473
	stfs	f1, -4(r3)				# 1473
	stw	r7, -8(r3)				# 1473
	stw	r8, -12(r3)				# 1473
	stfs	f3, -16(r3)				# 1473
	stw	r5, -20(r3)				# 1473
	stfs	f0, -24(r3)				# 1473
	stw	r11, -28(r3)				# 1473
	stw	r15, -32(r3)				# 1473
	stw	r14, -36(r3)				# 1473
	stw	r10, -40(r3)				# 1473
	stw	r9, -44(r3)				# 1473
	stw	r12, -48(r3)				# 1473
	stw	r13, -52(r3)				# 1473
	stw	r6, -56(r3)				# 1473
	mfspr	r31, 8				# 1473
	mr	r6, r15				# 1473
	mr	r5, r16				# 1473
	mr	r2, r14				# 1473
	stw	r31, -60(r3)				# 1473
	addi	r3, r3, -64				# 1473
	bl	trace_or_matrix_fast.2790				# 1473
	addi	r3, r3, 64				# 1473
	lwz	r31, -60(r3)				# 1473
	mtspr	8, r31				# 1473
	lwz	r2, -56(r3)				# 1474
	lfs	f0, 0(r2)				# 1474
	addis	r31, 0, ha16(l.16414)
	ori	r31, r31, lo16(l.16414)
	lfs	f1, 0(r31)				# 1476
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.20664				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20665				# 109
ble_else.20664:
	addi	r2, 0, 1				# 109
ble_cont.20665:
	cmpwi	cr7, r2, 0				# 1476
	bne	cr7, beq_else.20666				# 1476
	addi	r2, 0, 0				# 1478
	b	beq_cont.20667				# 1476
beq_else.20666:
	addis	r31, 0, ha16(l.16752)
	ori	r31, r31, lo16(l.16752)
	lfs	f1, 0(r31)				# 1477
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20668				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20669				# 109
ble_else.20668:
	addi	r2, 0, 1				# 109
ble_cont.20669:
beq_cont.20667:
	cmpwi	cr7, r2, 0				# 1641
	bne	cr7, beq_else.20670				# 1641
	b	beq_cont.20671				# 1641
beq_else.20670:
	lwz	r2, -52(r3)				# 1642
	lwz	r2, 0(r2)				# 1642
	slwi	r2, r2, 2				# 1642
	lwz	r5, -48(r3)				# 1642
	lwz	r5, 0(r5)				# 1642
	add	r2, r2, r5				# 1642
	lwz	r5, -44(r3)				# 535
	lwz	r6, 0(r5)				# 535
	cmpw	cr7, r2, r6				# 1643
	bne	cr7, beq_else.20672				# 1643
	lwz	r2, -40(r3)				# 1645
	lwz	r2, 0(r2)				# 1645
	lwz	r6, -36(r3)				# 1645
	mfspr	r31, 8				# 1645
	mr	r5, r2				# 1645
	mr	r2, r6				# 1645
	stw	r31, -60(r3)				# 1645
	addi	r3, r3, -64				# 1645
	bl	shadow_check_one_or_matrix.2765				# 1645
	addi	r3, r3, 64				# 1645
	lwz	r31, -60(r3)				# 1645
	mtspr	8, r31				# 1645
	cmpwi	cr7, r2, 0				# 1645
	bne	cr7, beq_else.20674				# 1645
	lwz	r2, -32(r3)				# 521
	lwz	r5, 0(r2)				# 521
	lwz	r6, -28(r3)				# 195
	lfs	f0, 0(r6)				# 195
	lfs	f1, 0(r5)				# 195
	fmul	f0, f0, f1				# 195
	lfs	f1, 4(r6)				# 195
	lfs	f2, 4(r5)				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lfs	f1, 8(r6)				# 195
	lfs	f2, 8(r5)				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lwz	r5, -44(r3)				# 547
	lfs	f1, 8(r5)				# 547
	lfs	f2, -24(r3)				# 1649
	fmul	f3, f1, f2				# 1649
	fmul	f0, f3, f0				# 1649
	lwz	r2, 0(r2)				# 521
	lwz	r5, -20(r3)				# 195
	lfs	f3, 0(r5)				# 195
	lfs	f4, 0(r2)				# 195
	fmul	f3, f3, f4				# 195
	lfs	f4, 4(r5)				# 195
	lfs	f5, 4(r2)				# 195
	fmul	f4, f4, f5				# 195
	fadd	f3, f3, f4				# 195
	lfs	f4, 8(r5)				# 195
	lfs	f5, 8(r2)				# 195
	fmul	f4, f4, f5				# 195
	fadd	f3, f3, f4				# 195
	fmul	f1, f1, f3				# 1650
	lfs	f3, -16(r3)				# 113
	fcmpu	cr7, f0, f3				# 113
	bgt	cr7, ble_else.20676				# 113
	addi	r2, 0, 0				# 113
	b	ble_cont.20677				# 113
ble_else.20676:
	addi	r2, 0, 1				# 113
ble_cont.20677:
	cmpwi	cr7, r2, 0				# 1620
	bne	cr7, beq_else.20678				# 1620
	b	beq_cont.20679				# 1620
beq_else.20678:
	lwz	r2, -12(r3)				# 205
	lfs	f4, 0(r2)				# 205
	lwz	r6, -8(r3)				# 205
	lfs	f5, 0(r6)				# 205
	fmul	f5, f0, f5				# 205
	fadd	f4, f4, f5				# 205
	stfs	f4, 0(r2)				# 205
	lfs	f4, 4(r2)				# 206
	lfs	f5, 4(r6)				# 206
	fmul	f5, f0, f5				# 206
	fadd	f4, f4, f5				# 206
	stfs	f4, 4(r2)				# 206
	lfs	f4, 8(r2)				# 207
	lfs	f5, 8(r6)				# 207
	fmul	f0, f0, f5				# 207
	fadd	f0, f4, f0				# 207
	stfs	f0, 8(r2)				# 207
beq_cont.20679:
	fcmpu	cr7, f1, f3				# 113
	bgt	cr7, ble_else.20680				# 113
	addi	r2, 0, 0				# 113
	b	ble_cont.20681				# 113
ble_else.20680:
	addi	r2, 0, 1				# 113
ble_cont.20681:
	cmpwi	cr7, r2, 0				# 1625
	bne	cr7, beq_else.20682				# 1625
	b	beq_cont.20683				# 1625
beq_else.20682:
	fmul	f0, f1, f1				# 103
	fmul	f0, f0, f0				# 103
	lfs	f1, -4(r3)				# 1626
	fmul	f0, f0, f1				# 1626
	lwz	r2, -12(r3)				# 1627
	lfs	f3, 0(r2)				# 1627
	fadd	f3, f3, f0				# 1627
	stfs	f3, 0(r2)				# 1627
	lfs	f3, 4(r2)				# 1628
	fadd	f3, f3, f0				# 1628
	stfs	f3, 4(r2)				# 1628
	lfs	f3, 8(r2)				# 1629
	fadd	f0, f3, f0				# 1629
	stfs	f0, 8(r2)				# 1629
beq_cont.20683:
	b	beq_cont.20675				# 1645
beq_else.20674:
beq_cont.20675:
	b	beq_cont.20673				# 1643
beq_else.20672:
beq_cont.20673:
beq_cont.20671:
	lwz	r2, 0(r3)				# 1655
	addi	r2, r2, -1				# 1655
	lfs	f0, -24(r3)				# 1655
	lfs	f1, -4(r3)				# 1655
	lwz	r5, -20(r3)				# 1655
	b	trace_reflections.2812				# 1655
bge_else.20663:
	blr
trace_ray.2817:
	addis	r7, 0, ha16(tmin.2444)
	ori	r7, r7, lo16(tmin.2444)				# 1661
	lwz	r7, 0(r7)				# 1661
	addis	r8, 0, ha16(texture_color.2448)
	ori	r8, r8, lo16(texture_color.2448)				# 1661
	lwz	r8, 0(r8)				# 1661
	addis	r9, 0, ha16(startp_fast.2455)
	ori	r9, r9, lo16(startp_fast.2455)				# 1661
	lwz	r9, 0(r9)				# 1661
	addis	r10, 0, ha16(startp.2454)
	ori	r10, r10, lo16(startp.2454)				# 1661
	lwz	r10, 0(r10)				# 1661
	addis	r11, 0, ha16(rgb.2450)
	ori	r11, r11, lo16(rgb.2450)				# 1661
	lwz	r11, 0(r11)				# 1661
	addis	r12, 0, ha16(or_net.2441)
	ori	r12, r12, lo16(or_net.2441)				# 1661
	lwz	r12, 0(r12)				# 1661
	addis	r13, 0, ha16(objects.2435)
	ori	r13, r13, lo16(objects.2435)				# 1661
	lwz	r13, 0(r13)				# 1661
	addis	r14, 0, ha16(nvector.2447)
	ori	r14, r14, lo16(nvector.2447)				# 1661
	lwz	r14, 0(r14)				# 1661
	addis	r15, 0, ha16(n_reflections.2463)
	ori	r15, r15, lo16(n_reflections.2463)				# 1661
	lwz	r15, 0(r15)				# 1661
	addis	r16, 0, ha16(n_objects.2434)
	ori	r16, r16, lo16(n_objects.2434)				# 1661
	lwz	r16, 0(r16)				# 1661
	addis	r17, 0, ha16(light.2438)
	ori	r17, r17, lo16(light.2438)				# 1661
	lwz	r17, 0(r17)				# 1661
	addis	r18, 0, ha16(intsec_rectside.2443)
	ori	r18, r18, lo16(intsec_rectside.2443)				# 1661
	lwz	r18, 0(r18)				# 1661
	addis	r19, 0, ha16(intersection_point.2445)
	ori	r19, r19, lo16(intersection_point.2445)				# 1661
	lwz	r19, 0(r19)				# 1661
	addis	r20, 0, ha16(intersected_object_id.2446)
	ori	r20, r20, lo16(intersected_object_id.2446)				# 1661
	lwz	r20, 0(r20)				# 1661
	addis	r21, 0, ha16(beam.2439)
	ori	r21, r21, lo16(beam.2439)				# 1661
	lwz	r21, 0(r21)				# 1661
	addi	r22, 0, -1				# 1661
	addi	r23, 0, 0				# 1661
	addi	r24, 0, 1				# 1661
	addis	r25, 0, ha16(Td283.5742)
	ori	r25, r25, lo16(Td283.5742)				# 1661
	lfs	f2, 0(r25)				# 1661
	addis	r25, 0, ha16(Td267.5756)
	ori	r25, r25, lo16(Td267.5756)				# 1661
	lfs	f3, 0(r25)				# 1661
	addis	r25, 0, ha16(Td252.5768)
	ori	r25, r25, lo16(Td252.5768)				# 1661
	lfs	f4, 0(r25)				# 1661
	cmpwi	cr7, r2, 4				# 1662
	bgt	cr7, ble_else.20685				# 1662
	lwz	r25, 8(r6)				# 468
	stfs	f2, 0(r7)				# 1383
	lwz	r26, 0(r12)				# 1384
	stfs	f1, 0(r3)				# 1384
	stw	r15, -4(r3)				# 1384
	stw	r16, -8(r3)				# 1384
	stw	r9, -12(r3)				# 1384
	stw	r12, -16(r3)				# 1384
	stw	r23, -20(r3)				# 1384
	stw	r24, -24(r3)				# 1384
	stw	r6, -28(r3)				# 1384
	stfs	f3, -32(r3)				# 1384
	stw	r8, -36(r3)				# 1384
	stw	r10, -40(r3)				# 1384
	stw	r19, -44(r3)				# 1384
	stw	r14, -48(r3)				# 1384
	stw	r18, -52(r3)				# 1384
	stw	r13, -56(r3)				# 1384
	stw	r20, -60(r3)				# 1384
	stw	r11, -64(r3)				# 1384
	stw	r21, -68(r3)				# 1384
	stfs	f0, -72(r3)				# 1384
	stfs	f4, -76(r3)				# 1384
	stw	r17, -80(r3)				# 1384
	stw	r5, -84(r3)				# 1384
	stw	r25, -88(r3)				# 1384
	stw	r22, -92(r3)				# 1384
	stw	r2, -96(r3)				# 1384
	stw	r7, -100(r3)				# 1384
	mfspr	r31, 8				# 1384
	mr	r6, r5				# 1384
	mr	r2, r23				# 1384
	mr	r5, r26				# 1384
	stw	r31, -104(r3)				# 1384
	addi	r3, r3, -108				# 1384
	bl	trace_or_matrix.2776				# 1384
	addi	r3, r3, 108				# 1384
	lwz	r31, -104(r3)				# 1384
	mtspr	8, r31				# 1384
	lwz	r2, -100(r3)				# 1385
	lfs	f0, 0(r2)				# 1385
	addis	r31, 0, ha16(l.16414)
	ori	r31, r31, lo16(l.16414)
	lfs	f1, 0(r31)				# 1387
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.20686				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20687				# 109
ble_else.20686:
	addi	r5, 0, 1				# 109
ble_cont.20687:
	cmpwi	cr7, r5, 0				# 1387
	bne	cr7, beq_else.20688				# 1387
	addi	r5, 0, 0				# 1389
	b	beq_cont.20689				# 1387
beq_else.20688:
	addis	r31, 0, ha16(l.16752)
	ori	r31, r31, lo16(l.16752)
	lfs	f1, 0(r31)				# 1388
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20690				# 109
	addi	r5, 0, 0				# 109
	b	ble_cont.20691				# 109
ble_else.20690:
	addi	r5, 0, 1				# 109
ble_cont.20691:
beq_cont.20689:
	cmpwi	cr7, r5, 0				# 1664
	bne	cr7, beq_else.20692				# 1664
	lwz	r2, -96(r3)				# 1727
	slwi	r5, r2, 2				# 1727
	lwz	r6, -88(r3)				# 1727
	lwz	r7, -92(r3)				# 1727
	stwx	r7, r6, r5				# 1727
	cmpwi	cr7, r2, 0				# 1729
	bne	cr7, beq_else.20693				# 1729
	blr
beq_else.20693:
	lwz	r2, -84(r3)				# 195
	lfs	f0, 0(r2)				# 195
	lwz	r5, -80(r3)				# 195
	lfs	f1, 0(r5)				# 195
	fmul	f0, f0, f1				# 195
	lfs	f1, 4(r2)				# 195
	lfs	f2, 4(r5)				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lfs	f1, 8(r2)				# 195
	lfs	f2, 8(r5)				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	fneg	f0, f0				# 107
	lfs	f1, -76(r3)				# 113
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.20695				# 113
	addi	r2, 0, 0				# 113
	b	ble_cont.20696				# 113
ble_else.20695:
	addi	r2, 0, 1				# 113
ble_cont.20696:
	cmpwi	cr7, r2, 0				# 1732
	bne	cr7, beq_else.20697				# 1732
	blr
beq_else.20697:
	fmul	f1, f0, f0				# 103
	fmul	f0, f1, f0				# 1735
	lfs	f1, -72(r3)				# 1735
	fmul	f0, f0, f1				# 1735
	lwz	r2, -68(r3)				# 1735
	lfs	f1, 0(r2)				# 1735
	fmul	f0, f0, f1				# 1735
	lwz	r2, -64(r3)				# 1736
	lfs	f1, 0(r2)				# 1736
	fadd	f1, f1, f0				# 1736
	stfs	f1, 0(r2)				# 1736
	lfs	f1, 4(r2)				# 1737
	fadd	f1, f1, f0				# 1737
	stfs	f1, 4(r2)				# 1737
	lfs	f1, 8(r2)				# 1738
	fadd	f0, f1, f0				# 1738
	stfs	f0, 8(r2)				# 1738
	blr
beq_else.20692:
	lwz	r5, -60(r3)				# 1666
	lwz	r5, 0(r5)				# 1666
	slwi	r6, r5, 2				# 1667
	lwz	r7, -56(r3)				# 1667
	lwzx	r6, r7, r6				# 1667
	lwz	r7, 8(r6)				# 262
	lwz	r8, 28(r6)				# 360
	lfs	f0, 0(r8)				# 365
	lfs	f1, -72(r3)				# 1669
	fmul	f0, f0, f1				# 1669
	lwz	r8, 4(r6)				# 252
	stw	r7, -104(r3)				# 1529
	stfs	f0, -108(r3)				# 1529
	stw	r5, -112(r3)				# 1529
	stw	r6, -116(r3)				# 1529
	cmpwi	cr7, r8, 1				# 1529
	bne	cr7, beq_else.20700				# 1529
	lwz	r8, -52(r3)				# 1490
	lwz	r9, 0(r8)				# 1490
	lwz	r10, -48(r3)				# 154
	lfs	f2, -76(r3)				# 154
	stfs	f2, 0(r10)				# 154
	stfs	f2, 4(r10)				# 155
	stfs	f2, 8(r10)				# 156
	addi	r9, r9, -1				# 1493
	slwi	r11, r9, 2				# 1493
	lwz	r12, -84(r3)				# 1493
	lfsx	f3, r12, r11				# 1493
	fcmpu	cr7, f3, f2				# 111
	bne	cr7, beq_else.20702				# 111
	addi	r11, 0, 1				# 111
	b	beq_cont.20703				# 111
beq_else.20702:
	addi	r11, 0, 0				# 111
beq_cont.20703:
	cmpwi	cr7, r11, 0				# 125
	bne	cr7, beq_else.20704				# 125
	fcmpu	cr7, f3, f2				# 113
	bgt	cr7, ble_else.20706				# 113
	addi	r11, 0, 0				# 113
	b	ble_cont.20707				# 113
ble_else.20706:
	addi	r11, 0, 1				# 113
ble_cont.20707:
	cmpwi	cr7, r11, 0				# 126
	bne	cr7, beq_else.20708				# 126
	addis	r31, 0, ha16(l.16088)
	ori	r31, r31, lo16(l.16088)
	lfs	f3, 0(r31)				# 127
	b	beq_cont.20709				# 126
beq_else.20708:
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f3, 0(r31)				# 126
beq_cont.20709:
	b	beq_cont.20705				# 125
beq_else.20704:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f3, 0(r31)				# 125
beq_cont.20705:
	fneg	f3, f3				# 107
	slwi	r9, r9, 2				# 1493
	stfsx	f3, r10, r9				# 1493
	b	beq_cont.20701				# 1529
beq_else.20700:
	cmpwi	cr7, r8, 2				# 1531
	bne	cr7, beq_else.20710				# 1531
	lwz	r8, 16(r6)				# 290
	lfs	f2, 0(r8)				# 295
	fneg	f2, f2				# 107
	lwz	r8, -48(r3)				# 1499
	stfs	f2, 0(r8)				# 1499
	lwz	r9, 16(r6)				# 300
	lfs	f2, 4(r9)				# 305
	fneg	f2, f2				# 107
	stfs	f2, 4(r8)				# 1500
	lwz	r9, 16(r6)				# 310
	lfs	f2, 8(r9)				# 315
	fneg	f2, f2				# 107
	stfs	f2, 8(r8)				# 1501
	b	beq_cont.20711				# 1531
beq_else.20710:
	lwz	r8, -44(r3)				# 1506
	lfs	f2, 0(r8)				# 1506
	lwz	r9, 20(r6)				# 330
	lfs	f3, 0(r9)				# 335
	fsub	f2, f2, f3				# 1506
	lfs	f3, 4(r8)				# 1507
	lwz	r9, 20(r6)				# 340
	lfs	f4, 4(r9)				# 345
	fsub	f3, f3, f4				# 1507
	lfs	f4, 8(r8)				# 1508
	lwz	r9, 20(r6)				# 350
	lfs	f5, 8(r9)				# 355
	fsub	f4, f4, f5				# 1508
	lwz	r9, 16(r6)				# 290
	lfs	f5, 0(r9)				# 295
	fmul	f5, f2, f5				# 1510
	lwz	r9, 16(r6)				# 300
	lfs	f6, 4(r9)				# 305
	fmul	f6, f3, f6				# 1511
	lwz	r9, 16(r6)				# 310
	lfs	f7, 8(r9)				# 315
	fmul	f7, f4, f7				# 1512
	lwz	r9, 12(r6)				# 281
	cmpwi	cr7, r9, 0				# 1514
	bne	cr7, beq_else.20712				# 1514
	lwz	r9, -48(r3)				# 1515
	stfs	f5, 0(r9)				# 1515
	stfs	f6, 4(r9)				# 1516
	stfs	f7, 8(r9)				# 1517
	b	beq_cont.20713				# 1514
beq_else.20712:
	lwz	r9, 36(r6)				# 430
	lfs	f8, 8(r9)				# 435
	fmul	f8, f3, f8				# 1519
	lwz	r9, 36(r6)				# 420
	lfs	f9, 4(r9)				# 425
	fmul	f9, f4, f9				# 1519
	fadd	f8, f8, f9				# 1519
	addis	r31, 0, ha16(l.16113)
	ori	r31, r31, lo16(l.16113)
	lfs	f9, 0(r31)				# 105
	fdiv	f8, f8, f9				# 105
	fadd	f5, f5, f8				# 1519
	lwz	r9, -48(r3)				# 1519
	stfs	f5, 0(r9)				# 1519
	lwz	r10, 36(r6)				# 430
	lfs	f5, 8(r10)				# 435
	fmul	f5, f2, f5				# 1520
	lwz	r10, 36(r6)				# 410
	lfs	f8, 0(r10)				# 415
	fmul	f4, f4, f8				# 1520
	fadd	f4, f5, f4				# 1520
	fdiv	f4, f4, f9				# 105
	fadd	f4, f6, f4				# 1520
	stfs	f4, 4(r9)				# 1520
	lwz	r10, 36(r6)				# 420
	lfs	f4, 4(r10)				# 425
	fmul	f2, f2, f4				# 1521
	lwz	r10, 36(r6)				# 410
	lfs	f4, 0(r10)				# 415
	fmul	f3, f3, f4				# 1521
	fadd	f2, f2, f3				# 1521
	fdiv	f2, f2, f9				# 105
	fadd	f2, f7, f2				# 1521
	stfs	f2, 8(r9)				# 1521
beq_cont.20713:
	lwz	r10, 24(r6)				# 272
	lfs	f2, 0(r9)				# 186
	fmul	f2, f2, f2				# 103
	lfs	f3, 4(r9)				# 186
	fmul	f3, f3, f3				# 103
	fadd	f2, f2, f3				# 186
	lfs	f3, 8(r9)				# 186
	fmul	f3, f3, f3				# 103
	fadd	f2, f2, f3				# 186
	stw	r10, -120(r3)				# 186
	mfspr	r31, 8				# 186
	fmr	f0, f2				# 186
	stw	r31, -124(r3)				# 186
	addi	r3, r3, -128				# 186
	bl	min_caml_sqrt				# 186
	addi	r3, r3, 128				# 186
	lwz	r31, -124(r3)				# 186
	mtspr	8, r31				# 186
	lfs	f1, -76(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20714				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20715				# 111
beq_else.20714:
	addi	r2, 0, 0				# 111
beq_cont.20715:
	cmpwi	cr7, r2, 0				# 187
	bne	cr7, beq_else.20716				# 187
	lwz	r2, -120(r3)				# 187
	cmpwi	cr7, r2, 0				# 187
	bne	cr7, beq_else.20718				# 187
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 187
	fdiv	f0, f2, f0				# 187
	b	beq_cont.20719				# 187
beq_else.20718:
	addis	r31, 0, ha16(l.16088)
	ori	r31, r31, lo16(l.16088)
	lfs	f2, 0(r31)				# 187
	fdiv	f0, f2, f0				# 187
beq_cont.20719:
	b	beq_cont.20717				# 187
beq_else.20716:
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f0, 0(r31)				# 187
beq_cont.20717:
	lwz	r2, -48(r3)				# 188
	lfs	f2, 0(r2)				# 188
	fmul	f2, f2, f0				# 188
	stfs	f2, 0(r2)				# 188
	lfs	f2, 4(r2)				# 189
	fmul	f2, f2, f0				# 189
	stfs	f2, 4(r2)				# 189
	lfs	f2, 8(r2)				# 190
	fmul	f0, f2, f0				# 190
	stfs	f0, 8(r2)				# 190
beq_cont.20711:
beq_cont.20701:
	lwz	r2, -44(r3)				# 166
	lfs	f0, 0(r2)				# 166
	lwz	r5, -40(r3)				# 166
	stfs	f0, 0(r5)				# 166
	lfs	f0, 4(r2)				# 167
	stfs	f0, 4(r5)				# 167
	lfs	f0, 8(r2)				# 168
	stfs	f0, 8(r5)				# 168
	lwz	r5, -116(r3)				# 242
	lwz	r6, 0(r5)				# 242
	lwz	r7, 32(r5)				# 380
	lfs	f0, 0(r7)				# 385
	lwz	r7, -36(r3)				# 1544
	stfs	f0, 0(r7)				# 1544
	lwz	r8, 32(r5)				# 390
	lfs	f0, 4(r8)				# 395
	stfs	f0, 4(r7)				# 1545
	lwz	r8, 32(r5)				# 400
	lfs	f0, 8(r8)				# 405
	stfs	f0, 8(r7)				# 1546
	cmpwi	cr7, r6, 1				# 1547
	bne	cr7, beq_else.20720				# 1547
	lfs	f0, 0(r2)				# 1550
	lwz	r6, 20(r5)				# 330
	lfs	f1, 0(r6)				# 335
	fsub	f0, f0, f1				# 1550
	addis	r31, 0, ha16(l.16886)
	ori	r31, r31, lo16(l.16886)
	lfs	f1, 0(r31)				# 1552
	fmul	f2, f0, f1				# 1552
	stfs	f1, -124(r3)				# 1552
	stfs	f0, -128(r3)				# 1552
	mfspr	r31, 8				# 1552
	fmr	f0, f2				# 1552
	stw	r31, -132(r3)				# 1552
	addi	r3, r3, -136				# 1552
	bl	min_caml_floor				# 1552
	addi	r3, r3, 136				# 1552
	lwz	r31, -132(r3)				# 1552
	mtspr	8, r31				# 1552
	addis	r31, 0, ha16(l.16887)
	ori	r31, r31, lo16(l.16887)
	lfs	f1, 0(r31)				# 1552
	fmul	f0, f0, f1				# 1552
	lfs	f2, -128(r3)				# 1553
	fsub	f0, f2, f0				# 1553
	addis	r31, 0, ha16(l.16877)
	ori	r31, r31, lo16(l.16877)
	lfs	f2, 0(r31)				# 1553
	fcmpu	cr7, f2, f0				# 109
	bgt	cr7, ble_else.20722				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20723				# 109
ble_else.20722:
	addi	r2, 0, 1				# 109
ble_cont.20723:
	lwz	r5, -44(r3)				# 1555
	lfs	f0, 8(r5)				# 1555
	lwz	r6, -116(r3)				# 350
	lwz	r7, 20(r6)				# 350
	lfs	f3, 8(r7)				# 355
	fsub	f0, f0, f3				# 1555
	lfs	f3, -124(r3)				# 1557
	fmul	f3, f0, f3				# 1557
	stw	r2, -132(r3)				# 1557
	stfs	f2, -136(r3)				# 1557
	stfs	f0, -140(r3)				# 1557
	stfs	f1, -144(r3)				# 1557
	mfspr	r31, 8				# 1557
	fmr	f0, f3				# 1557
	stw	r31, -148(r3)				# 1557
	addi	r3, r3, -152				# 1557
	bl	min_caml_floor				# 1557
	addi	r3, r3, 152				# 1557
	lwz	r31, -148(r3)				# 1557
	mtspr	8, r31				# 1557
	lfs	f1, -144(r3)				# 1557
	fmul	f0, f0, f1				# 1557
	lfs	f1, -140(r3)				# 1558
	fsub	f0, f1, f0				# 1558
	lfs	f1, -136(r3)				# 109
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20724				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20725				# 109
ble_else.20724:
	addi	r2, 0, 1				# 109
ble_cont.20725:
	lwz	r5, -132(r3)				# 1561
	cmpwi	cr7, r5, 0				# 1561
	bne	cr7, beq_else.20726				# 1561
	cmpwi	cr7, r2, 0				# 1563
	bne	cr7, beq_else.20728				# 1563
	addis	r31, 0, ha16(Td267.5756)
	ori	r31, r31, lo16(Td267.5756)
	lfs	f0, 0(r31)				# 1563
	b	beq_cont.20729				# 1563
beq_else.20728:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 1563
beq_cont.20729:
	b	beq_cont.20727				# 1561
beq_else.20726:
	cmpwi	cr7, r2, 0				# 1562
	bne	cr7, beq_else.20730				# 1562
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 1562
	b	beq_cont.20731				# 1562
beq_else.20730:
	addis	r31, 0, ha16(Td267.5756)
	ori	r31, r31, lo16(Td267.5756)
	lfs	f0, 0(r31)				# 1562
beq_cont.20731:
beq_cont.20727:
	lwz	r2, -36(r3)				# 1560
	stfs	f0, 4(r2)				# 1560
	b	beq_cont.20721				# 1547
beq_else.20720:
	cmpwi	cr7, r6, 2				# 1565
	bne	cr7, beq_else.20732				# 1565
	lfs	f0, 4(r2)				# 1568
	addis	r31, 0, ha16(l.16881)
	ori	r31, r31, lo16(l.16881)
	lfs	f1, 0(r31)				# 1568
	fmul	f0, f0, f1				# 1568
	mfspr	r31, 8				# 1568
	stw	r31, -148(r3)				# 1568
	addi	r3, r3, -152				# 1568
	bl	min_caml_sin				# 1568
	addi	r3, r3, 152				# 1568
	lwz	r31, -148(r3)				# 1568
	mtspr	8, r31				# 1568
	fmul	f0, f0, f0				# 103
	lfs	f1, -32(r3)				# 1569
	fmul	f2, f1, f0				# 1569
	lwz	r2, -36(r3)				# 1569
	stfs	f2, 0(r2)				# 1569
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 1570
	fsub	f0, f2, f0				# 1570
	fmul	f0, f1, f0				# 1570
	stfs	f0, 4(r2)				# 1570
	b	beq_cont.20733				# 1565
beq_else.20732:
	cmpwi	cr7, r6, 3				# 1572
	bne	cr7, beq_else.20734				# 1572
	lfs	f0, 0(r2)				# 1575
	lwz	r6, 20(r5)				# 330
	lfs	f1, 0(r6)				# 335
	fsub	f0, f0, f1				# 1575
	lfs	f1, 8(r2)				# 1576
	lwz	r6, 20(r5)				# 350
	lfs	f2, 8(r6)				# 355
	fsub	f1, f1, f2				# 1576
	fmul	f0, f0, f0				# 103
	fmul	f1, f1, f1				# 103
	fadd	f0, f0, f1				# 1577
	mfspr	r31, 8				# 1577
	stw	r31, -148(r3)				# 1577
	addi	r3, r3, -152				# 1577
	bl	min_caml_sqrt				# 1577
	addi	r3, r3, 152				# 1577
	lwz	r31, -148(r3)				# 1577
	mtspr	8, r31				# 1577
	addis	r31, 0, ha16(l.16877)
	ori	r31, r31, lo16(l.16877)
	lfs	f1, 0(r31)				# 1577
	fdiv	f0, f0, f1				# 1577
	stfs	f0, -148(r3)				# 1578
	mfspr	r31, 8				# 1578
	stw	r31, -152(r3)				# 1578
	addi	r3, r3, -156				# 1578
	bl	min_caml_floor				# 1578
	addi	r3, r3, 156				# 1578
	lwz	r31, -152(r3)				# 1578
	mtspr	8, r31				# 1578
	lfs	f1, -148(r3)				# 1578
	fsub	f0, f1, f0				# 1578
	addis	r31, 0, ha16(l.16865)
	ori	r31, r31, lo16(l.16865)
	lfs	f1, 0(r31)				# 1578
	fmul	f0, f0, f1				# 1578
	mfspr	r31, 8				# 1579
	stw	r31, -152(r3)				# 1579
	addi	r3, r3, -156				# 1579
	bl	min_caml_cos				# 1579
	addi	r3, r3, 156				# 1579
	lwz	r31, -152(r3)				# 1579
	mtspr	8, r31				# 1579
	fmul	f0, f0, f0				# 103
	lfs	f1, -32(r3)				# 1580
	fmul	f2, f0, f1				# 1580
	lwz	r2, -36(r3)				# 1580
	stfs	f2, 4(r2)				# 1580
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 1581
	fsub	f0, f2, f0				# 1581
	fmul	f0, f0, f1				# 1581
	stfs	f0, 8(r2)				# 1581
	b	beq_cont.20735				# 1572
beq_else.20734:
	cmpwi	cr7, r6, 4				# 1583
	bne	cr7, beq_else.20736				# 1583
	lfs	f0, 0(r2)				# 1585
	lwz	r6, 20(r5)				# 330
	lfs	f1, 0(r6)				# 335
	fsub	f0, f0, f1				# 1585
	lwz	r6, 16(r5)				# 290
	lfs	f1, 0(r6)				# 295
	stfs	f0, -152(r3)				# 1585
	mfspr	r31, 8				# 1585
	fmr	f0, f1				# 1585
	stw	r31, -156(r3)				# 1585
	addi	r3, r3, -160				# 1585
	bl	min_caml_sqrt				# 1585
	addi	r3, r3, 160				# 1585
	lwz	r31, -156(r3)				# 1585
	mtspr	8, r31				# 1585
	lfs	f1, -152(r3)				# 1585
	fmul	f0, f1, f0				# 1585
	lwz	r2, -44(r3)				# 1586
	lfs	f1, 8(r2)				# 1586
	lwz	r5, -116(r3)				# 350
	lwz	r6, 20(r5)				# 350
	lfs	f2, 8(r6)				# 355
	fsub	f1, f1, f2				# 1586
	lwz	r6, 16(r5)				# 310
	lfs	f2, 8(r6)				# 315
	stfs	f0, -156(r3)				# 1586
	stfs	f1, -160(r3)				# 1586
	mfspr	r31, 8				# 1586
	fmr	f0, f2				# 1586
	stw	r31, -164(r3)				# 1586
	addi	r3, r3, -168				# 1586
	bl	min_caml_sqrt				# 1586
	addi	r3, r3, 168				# 1586
	lwz	r31, -164(r3)				# 1586
	mtspr	8, r31				# 1586
	lfs	f1, -160(r3)				# 1586
	fmul	f0, f1, f0				# 1586
	lfs	f1, -156(r3)				# 103
	fmul	f2, f1, f1				# 103
	fmul	f3, f0, f0				# 103
	fadd	f2, f2, f3				# 1587
	stfs	f2, -164(r3)				# 1589
	stfs	f0, -168(r3)				# 1589
	mfspr	r31, 8				# 1589
	fmr	f0, f1				# 1589
	stw	r31, -172(r3)				# 1589
	addi	r3, r3, -176				# 1589
	bl	min_caml_fabs				# 1589
	addi	r3, r3, 176				# 1589
	lwz	r31, -172(r3)				# 1589
	mtspr	8, r31				# 1589
	addis	r31, 0, ha16(l.16862)
	ori	r31, r31, lo16(l.16862)
	lfs	f1, 0(r31)				# 1589
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20738				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20739				# 109
ble_else.20738:
	addi	r2, 0, 1				# 109
ble_cont.20739:
	stfs	f1, -172(r3)				# 1589
	cmpwi	cr7, r2, 0				# 1589
	bne	cr7, beq_else.20740				# 1589
	lfs	f0, -156(r3)				# 1592
	lfs	f2, -168(r3)				# 1592
	fdiv	f0, f2, f0				# 1592
	mfspr	r31, 8				# 1592
	stw	r31, -176(r3)				# 1592
	addi	r3, r3, -180				# 1592
	bl	min_caml_fabs				# 1592
	addi	r3, r3, 180				# 1592
	lwz	r31, -176(r3)				# 1592
	mtspr	8, r31				# 1592
	mfspr	r31, 8				# 1594
	stw	r31, -176(r3)				# 1594
	addi	r3, r3, -180				# 1594
	bl	min_caml_atan				# 1594
	addi	r3, r3, 180				# 1594
	lwz	r31, -176(r3)				# 1594
	mtspr	8, r31				# 1594
	addis	r31, 0, ha16(l.16864)
	ori	r31, r31, lo16(l.16864)
	lfs	f1, 0(r31)				# 1594
	fmul	f0, f0, f1				# 1594
	addis	r31, 0, ha16(l.16865)
	ori	r31, r31, lo16(l.16865)
	lfs	f1, 0(r31)				# 1594
	fdiv	f0, f0, f1				# 1594
	b	beq_cont.20741				# 1589
beq_else.20740:
	addis	r31, 0, ha16(l.16863)
	ori	r31, r31, lo16(l.16863)
	lfs	f0, 0(r31)				# 1590
beq_cont.20741:
	stfs	f0, -176(r3)				# 1596
	mfspr	r31, 8				# 1596
	stw	r31, -180(r3)				# 1596
	addi	r3, r3, -184				# 1596
	bl	min_caml_floor				# 1596
	addi	r3, r3, 184				# 1596
	lwz	r31, -180(r3)				# 1596
	mtspr	8, r31				# 1596
	lfs	f1, -176(r3)				# 1596
	fsub	f0, f1, f0				# 1596
	lwz	r2, -44(r3)				# 1598
	lfs	f1, 4(r2)				# 1598
	lwz	r5, -116(r3)				# 340
	lwz	r6, 20(r5)				# 340
	lfs	f2, 4(r6)				# 345
	fsub	f1, f1, f2				# 1598
	lwz	r6, 16(r5)				# 300
	lfs	f2, 4(r6)				# 305
	stfs	f0, -180(r3)				# 1598
	stfs	f1, -184(r3)				# 1598
	mfspr	r31, 8				# 1598
	fmr	f0, f2				# 1598
	stw	r31, -188(r3)				# 1598
	addi	r3, r3, -192				# 1598
	bl	min_caml_sqrt				# 1598
	addi	r3, r3, 192				# 1598
	lwz	r31, -188(r3)				# 1598
	mtspr	8, r31				# 1598
	lfs	f1, -184(r3)				# 1598
	fmul	f0, f1, f0				# 1598
	lfs	f1, -164(r3)				# 1600
	stfs	f0, -188(r3)				# 1600
	mfspr	r31, 8				# 1600
	fmr	f0, f1				# 1600
	stw	r31, -192(r3)				# 1600
	addi	r3, r3, -196				# 1600
	bl	min_caml_fabs				# 1600
	addi	r3, r3, 196				# 1600
	lwz	r31, -192(r3)				# 1600
	mtspr	8, r31				# 1600
	lfs	f1, -172(r3)				# 109
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20742				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20743				# 109
ble_else.20742:
	addi	r2, 0, 1				# 109
ble_cont.20743:
	cmpwi	cr7, r2, 0				# 1600
	bne	cr7, beq_else.20744				# 1600
	lfs	f0, -164(r3)				# 1603
	lfs	f1, -188(r3)				# 1603
	fdiv	f0, f1, f0				# 1603
	mfspr	r31, 8				# 1603
	stw	r31, -192(r3)				# 1603
	addi	r3, r3, -196				# 1603
	bl	min_caml_fabs				# 1603
	addi	r3, r3, 196				# 1603
	lwz	r31, -192(r3)				# 1603
	mtspr	8, r31				# 1603
	mfspr	r31, 8				# 1604
	stw	r31, -192(r3)				# 1604
	addi	r3, r3, -196				# 1604
	bl	min_caml_atan				# 1604
	addi	r3, r3, 196				# 1604
	lwz	r31, -192(r3)				# 1604
	mtspr	8, r31				# 1604
	addis	r31, 0, ha16(l.16864)
	ori	r31, r31, lo16(l.16864)
	lfs	f1, 0(r31)				# 1604
	fmul	f0, f0, f1				# 1604
	addis	r31, 0, ha16(l.16865)
	ori	r31, r31, lo16(l.16865)
	lfs	f1, 0(r31)				# 1604
	fdiv	f0, f0, f1				# 1604
	b	beq_cont.20745				# 1600
beq_else.20744:
	addis	r31, 0, ha16(l.16863)
	ori	r31, r31, lo16(l.16863)
	lfs	f0, 0(r31)				# 1601
beq_cont.20745:
	stfs	f0, -192(r3)				# 1606
	mfspr	r31, 8				# 1606
	stw	r31, -196(r3)				# 1606
	addi	r3, r3, -200				# 1606
	bl	min_caml_floor				# 1606
	addi	r3, r3, 200				# 1606
	lwz	r31, -196(r3)				# 1606
	mtspr	8, r31				# 1606
	lfs	f1, -192(r3)				# 1606
	fsub	f0, f1, f0				# 1606
	addis	r31, 0, ha16(l.16869)
	ori	r31, r31, lo16(l.16869)
	lfs	f1, 0(r31)				# 1607
	addis	r31, 0, ha16(l.16870)
	ori	r31, r31, lo16(l.16870)
	lfs	f2, 0(r31)				# 1607
	lfs	f3, -180(r3)				# 1607
	fsub	f3, f2, f3				# 1607
	fmul	f3, f3, f3				# 103
	fsub	f1, f1, f3				# 1607
	fsub	f0, f2, f0				# 1607
	fmul	f0, f0, f0				# 103
	fsub	f0, f1, f0				# 1607
	lfs	f1, -76(r3)				# 115
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.20746				# 115
	addi	r2, 0, 0				# 115
	b	ble_cont.20747				# 115
ble_else.20746:
	addi	r2, 0, 1				# 115
ble_cont.20747:
	cmpwi	cr7, r2, 0				# 1608
	bne	cr7, beq_else.20748				# 1608
	b	beq_cont.20749				# 1608
beq_else.20748:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 1608
beq_cont.20749:
	lfs	f2, -32(r3)				# 1609
	fmul	f0, f2, f0				# 1609
	addis	r31, 0, ha16(l.16871)
	ori	r31, r31, lo16(l.16871)
	lfs	f2, 0(r31)				# 1609
	fdiv	f0, f0, f2				# 1609
	lwz	r2, -36(r3)				# 1609
	stfs	f0, 8(r2)				# 1609
	b	beq_cont.20737				# 1583
beq_else.20736:
beq_cont.20737:
beq_cont.20735:
beq_cont.20733:
beq_cont.20721:
	lwz	r2, -112(r3)				# 1676
	slwi	r2, r2, 2				# 1676
	lwz	r5, -52(r3)				# 1676
	lwz	r5, 0(r5)				# 1676
	add	r2, r2, r5				# 1676
	lwz	r5, -96(r3)				# 1676
	slwi	r6, r5, 2				# 1676
	lwz	r7, -88(r3)				# 1676
	stwx	r2, r7, r6				# 1676
	lwz	r2, -28(r3)				# 460
	lwz	r6, 4(r2)				# 460
	slwi	r8, r5, 2				# 1678
	lwzx	r6, r6, r8				# 1678
	lwz	r8, -44(r3)				# 166
	lfs	f0, 0(r8)				# 166
	stfs	f0, 0(r6)				# 166
	lfs	f0, 4(r8)				# 167
	stfs	f0, 4(r6)				# 167
	lfs	f0, 8(r8)				# 168
	stfs	f0, 8(r6)				# 168
	lwz	r6, 12(r2)				# 475
	lwz	r9, -116(r3)				# 360
	lwz	r10, 28(r9)				# 360
	lfs	f0, 0(r10)				# 365
	addis	r31, 0, ha16(l.16870)
	ori	r31, r31, lo16(l.16870)
	lfs	f1, 0(r31)				# 1682
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20750				# 109
	addi	r10, 0, 0				# 109
	b	ble_cont.20751				# 109
ble_else.20750:
	addi	r10, 0, 1				# 109
ble_cont.20751:
	cmpwi	cr7, r10, 0				# 1682
	bne	cr7, beq_else.20752				# 1682
	slwi	r10, r5, 2				# 1685
	lwz	r11, -24(r3)				# 1685
	stwx	r11, r6, r10				# 1685
	lwz	r6, 16(r2)				# 482
	slwi	r10, r5, 2				# 1687
	lwzx	r10, r6, r10				# 1687
	lwz	r11, -36(r3)				# 166
	lfs	f0, 0(r11)				# 166
	stfs	f0, 0(r10)				# 166
	lfs	f0, 4(r11)				# 167
	stfs	f0, 4(r10)				# 167
	lfs	f0, 8(r11)				# 168
	stfs	f0, 8(r10)				# 168
	slwi	r10, r5, 2				# 1688
	lwzx	r6, r6, r10				# 1688
	addis	r31, 0, ha16(l.16911)
	ori	r31, r31, lo16(l.16911)
	lfs	f0, 0(r31)				# 1688
	lfs	f1, -108(r3)				# 1688
	fmul	f0, f0, f1				# 1688
	lfs	f2, 0(r6)				# 226
	fmul	f2, f2, f0				# 226
	stfs	f2, 0(r6)				# 226
	lfs	f2, 4(r6)				# 227
	fmul	f2, f2, f0				# 227
	stfs	f2, 4(r6)				# 227
	lfs	f2, 8(r6)				# 228
	fmul	f0, f2, f0				# 228
	stfs	f0, 8(r6)				# 228
	lwz	r6, 28(r2)				# 512
	slwi	r10, r5, 2				# 1690
	lwzx	r6, r6, r10				# 1690
	lwz	r10, -48(r3)				# 166
	lfs	f0, 0(r10)				# 166
	stfs	f0, 0(r6)				# 166
	lfs	f0, 4(r10)				# 167
	stfs	f0, 4(r6)				# 167
	lfs	f0, 8(r10)				# 168
	stfs	f0, 8(r6)				# 168
	b	beq_cont.20753				# 1682
beq_else.20752:
	slwi	r10, r5, 2				# 1683
	lwz	r11, -20(r3)				# 1683
	stwx	r11, r6, r10				# 1683
beq_cont.20753:
	addis	r31, 0, ha16(l.16925)
	ori	r31, r31, lo16(l.16925)
	lfs	f0, 0(r31)				# 1693
	lwz	r6, -84(r3)				# 195
	lfs	f1, 0(r6)				# 195
	lwz	r10, -48(r3)				# 195
	lfs	f2, 0(r10)				# 195
	fmul	f1, f1, f2				# 195
	lfs	f2, 4(r6)				# 195
	lfs	f3, 4(r10)				# 195
	fmul	f2, f2, f3				# 195
	fadd	f1, f1, f2				# 195
	lfs	f2, 8(r6)				# 195
	lfs	f3, 8(r10)				# 195
	fmul	f2, f2, f3				# 195
	fadd	f1, f1, f2				# 195
	fmul	f0, f0, f1				# 1693
	lfs	f1, 0(r6)				# 205
	lfs	f2, 0(r10)				# 205
	fmul	f2, f0, f2				# 205
	fadd	f1, f1, f2				# 205
	stfs	f1, 0(r6)				# 205
	lfs	f1, 4(r6)				# 206
	lfs	f2, 4(r10)				# 206
	fmul	f2, f0, f2				# 206
	fadd	f1, f1, f2				# 206
	stfs	f1, 4(r6)				# 206
	lfs	f1, 8(r6)				# 207
	lfs	f2, 8(r10)				# 207
	fmul	f0, f0, f2				# 207
	fadd	f0, f1, f0				# 207
	stfs	f0, 8(r6)				# 207
	lwz	r11, 28(r9)				# 370
	lfs	f0, 4(r11)				# 375
	lfs	f1, -72(r3)				# 1697
	fmul	f0, f1, f0				# 1697
	lwz	r11, -16(r3)				# 1700
	lwz	r11, 0(r11)				# 1700
	lwz	r12, -20(r3)				# 1700
	stfs	f0, -196(r3)				# 1700
	mfspr	r31, 8				# 1700
	mr	r5, r11				# 1700
	mr	r2, r12				# 1700
	stw	r31, -200(r3)				# 1700
	addi	r3, r3, -204				# 1700
	bl	shadow_check_one_or_matrix.2765				# 1700
	addi	r3, r3, 204				# 1700
	lwz	r31, -200(r3)				# 1700
	mtspr	8, r31				# 1700
	cmpwi	cr7, r2, 0				# 1700
	bne	cr7, beq_else.20754				# 1700
	lwz	r2, -48(r3)				# 195
	lfs	f0, 0(r2)				# 195
	lwz	r5, -80(r3)				# 195
	lfs	f1, 0(r5)				# 195
	fmul	f0, f0, f1				# 195
	lfs	f1, 4(r2)				# 195
	lfs	f2, 4(r5)				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lfs	f1, 8(r2)				# 195
	lfs	f2, 8(r5)				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	fneg	f0, f0				# 107
	lfs	f1, -108(r3)				# 1701
	fmul	f0, f0, f1				# 1701
	lwz	r2, -84(r3)				# 195
	lfs	f2, 0(r2)				# 195
	lfs	f3, 0(r5)				# 195
	fmul	f2, f2, f3				# 195
	lfs	f3, 4(r2)				# 195
	lfs	f4, 4(r5)				# 195
	fmul	f3, f3, f4				# 195
	fadd	f2, f2, f3				# 195
	lfs	f3, 8(r2)				# 195
	lfs	f4, 8(r5)				# 195
	fmul	f3, f3, f4				# 195
	fadd	f2, f2, f3				# 195
	fneg	f2, f2				# 107
	lfs	f3, -76(r3)				# 113
	fcmpu	cr7, f0, f3				# 113
	bgt	cr7, ble_else.20756				# 113
	addi	r5, 0, 0				# 113
	b	ble_cont.20757				# 113
ble_else.20756:
	addi	r5, 0, 1				# 113
ble_cont.20757:
	cmpwi	cr7, r5, 0				# 1620
	bne	cr7, beq_else.20758				# 1620
	b	beq_cont.20759				# 1620
beq_else.20758:
	lwz	r5, -64(r3)				# 205
	lfs	f4, 0(r5)				# 205
	lwz	r6, -36(r3)				# 205
	lfs	f5, 0(r6)				# 205
	fmul	f5, f0, f5				# 205
	fadd	f4, f4, f5				# 205
	stfs	f4, 0(r5)				# 205
	lfs	f4, 4(r5)				# 206
	lfs	f5, 4(r6)				# 206
	fmul	f5, f0, f5				# 206
	fadd	f4, f4, f5				# 206
	stfs	f4, 4(r5)				# 206
	lfs	f4, 8(r5)				# 207
	lfs	f5, 8(r6)				# 207
	fmul	f0, f0, f5				# 207
	fadd	f0, f4, f0				# 207
	stfs	f0, 8(r5)				# 207
beq_cont.20759:
	fcmpu	cr7, f2, f3				# 113
	bgt	cr7, ble_else.20760				# 113
	addi	r5, 0, 0				# 113
	b	ble_cont.20761				# 113
ble_else.20760:
	addi	r5, 0, 1				# 113
ble_cont.20761:
	cmpwi	cr7, r5, 0				# 1625
	bne	cr7, beq_else.20762				# 1625
	b	beq_cont.20763				# 1625
beq_else.20762:
	fmul	f0, f2, f2				# 103
	fmul	f0, f0, f0				# 103
	lfs	f2, -196(r3)				# 1626
	fmul	f0, f0, f2				# 1626
	lwz	r5, -64(r3)				# 1627
	lfs	f3, 0(r5)				# 1627
	fadd	f3, f3, f0				# 1627
	stfs	f3, 0(r5)				# 1627
	lfs	f3, 4(r5)				# 1628
	fadd	f3, f3, f0				# 1628
	stfs	f3, 4(r5)				# 1628
	lfs	f3, 8(r5)				# 1629
	fadd	f0, f3, f0				# 1629
	stfs	f0, 8(r5)				# 1629
beq_cont.20763:
	b	beq_cont.20755				# 1700
beq_else.20754:
beq_cont.20755:
	lwz	r2, -44(r3)				# 166
	lfs	f0, 0(r2)				# 166
	lwz	r5, -12(r3)				# 166
	stfs	f0, 0(r5)				# 166
	lfs	f0, 4(r2)				# 167
	stfs	f0, 4(r5)				# 167
	lfs	f0, 8(r2)				# 168
	stfs	f0, 8(r5)				# 168
	lwz	r5, -8(r3)				# 1161
	lwz	r5, 0(r5)				# 1161
	addi	r5, r5, -1				# 1161
	mfspr	r31, 8				# 1161
	stw	r31, -200(r3)				# 1161
	addi	r3, r3, -204				# 1161
	bl	setup_startp_constants.2728				# 1161
	addi	r3, r3, 204				# 1161
	lwz	r31, -200(r3)				# 1161
	mtspr	8, r31				# 1161
	lwz	r2, -4(r3)				# 1708
	lwz	r2, 0(r2)				# 1708
	addi	r2, r2, -1				# 1708
	lfs	f0, -108(r3)				# 1708
	lfs	f1, -196(r3)				# 1708
	lwz	r5, -84(r3)				# 1708
	mfspr	r31, 8				# 1708
	stw	r31, -200(r3)				# 1708
	addi	r3, r3, -204				# 1708
	bl	trace_reflections.2812				# 1708
	addi	r3, r3, 204				# 1708
	lwz	r31, -200(r3)				# 1708
	mtspr	8, r31				# 1708
	addis	r31, 0, ha16(l.16978)
	ori	r31, r31, lo16(l.16978)
	lfs	f0, 0(r31)				# 1711
	lfs	f1, -72(r3)				# 109
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20764				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20765				# 109
ble_else.20764:
	addi	r2, 0, 1				# 109
ble_cont.20765:
	cmpwi	cr7, r2, 0				# 1711
	bne	cr7, beq_else.20766				# 1711
	blr
beq_else.20766:
	lwz	r2, -96(r3)				# 1713
	cmpwi	cr7, r2, 4				# 1713
	blt	cr7, bge_else.20768				# 1713
	b	bge_cont.20769				# 1713
bge_else.20768:
	addi	r5, r2, 1				# 1714
	slwi	r5, r5, 2				# 1714
	lwz	r6, -88(r3)				# 1714
	lwz	r7, -92(r3)				# 1714
	stwx	r7, r6, r5				# 1714
bge_cont.20769:
	lwz	r5, -104(r3)				# 1717
	cmpwi	cr7, r5, 2				# 1717
	bne	cr7, beq_else.20770				# 1717
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f0, 0(r31)				# 1718
	lwz	r5, -116(r3)				# 360
	lwz	r5, 28(r5)				# 360
	lfs	f2, 0(r5)				# 365
	fsub	f0, f0, f2				# 1718
	fmul	f0, f1, f0				# 1718
	addi	r2, r2, 1				# 1719
	lwz	r5, -100(r3)				# 1719
	lfs	f1, 0(r5)				# 1719
	lfs	f2, 0(r3)				# 1719
	fadd	f1, f2, f1				# 1719
	lwz	r5, -84(r3)				# 1719
	lwz	r6, -28(r3)				# 1719
	b	trace_ray.2817				# 1719
beq_else.20770:
	blr
ble_else.20685:
	blr
iter_trace_diffuse_rays.2826:
	addis	r8, 0, ha16(tmin.2444)
	ori	r8, r8, lo16(tmin.2444)				# 1769
	lwz	r8, 0(r8)				# 1769
	addis	r9, 0, ha16(texture_color.2448)
	ori	r9, r9, lo16(texture_color.2448)				# 1769
	lwz	r9, 0(r9)				# 1769
	addis	r10, 0, ha16(or_net.2441)
	ori	r10, r10, lo16(or_net.2441)				# 1769
	lwz	r10, 0(r10)				# 1769
	addis	r11, 0, ha16(objects.2435)
	ori	r11, r11, lo16(objects.2435)				# 1769
	lwz	r11, 0(r11)				# 1769
	addis	r12, 0, ha16(nvector.2447)
	ori	r12, r12, lo16(nvector.2447)				# 1769
	lwz	r12, 0(r12)				# 1769
	addis	r13, 0, ha16(light.2438)
	ori	r13, r13, lo16(light.2438)				# 1769
	lwz	r13, 0(r13)				# 1769
	addis	r14, 0, ha16(intsec_rectside.2443)
	ori	r14, r14, lo16(intsec_rectside.2443)				# 1769
	lwz	r14, 0(r14)				# 1769
	addis	r15, 0, ha16(intersection_point.2445)
	ori	r15, r15, lo16(intersection_point.2445)				# 1769
	lwz	r15, 0(r15)				# 1769
	addis	r16, 0, ha16(intersected_object_id.2446)
	ori	r16, r16, lo16(intersected_object_id.2446)				# 1769
	lwz	r16, 0(r16)				# 1769
	addis	r17, 0, ha16(diffuse_ray.2449)
	ori	r17, r17, lo16(diffuse_ray.2449)				# 1769
	lwz	r17, 0(r17)				# 1769
	addi	r18, 0, 0				# 1769
	addis	r19, 0, ha16(Td283.5742)
	ori	r19, r19, lo16(Td283.5742)				# 1769
	lfs	f0, 0(r19)				# 1769
	addis	r19, 0, ha16(Td267.5756)
	ori	r19, r19, lo16(Td267.5756)				# 1769
	lfs	f1, 0(r19)				# 1769
	addis	r19, 0, ha16(Td252.5768)
	ori	r19, r19, lo16(Td252.5768)				# 1769
	lfs	f2, 0(r19)				# 1769
	cmpwi	cr7, r7, 0				# 1770
	blt	cr7, bge_else.20773				# 1770
	slwi	r19, r7, 2				# 1771
	lwzx	r19, r2, r19				# 1771
	lwz	r19, 0(r19)				# 521
	lfs	f3, 0(r19)				# 195
	lfs	f4, 0(r5)				# 195
	fmul	f3, f3, f4				# 195
	lfs	f4, 4(r19)				# 195
	lfs	f5, 4(r5)				# 195
	fmul	f4, f4, f5				# 195
	fadd	f3, f3, f4				# 195
	lfs	f4, 8(r19)				# 195
	lfs	f5, 8(r5)				# 195
	fmul	f4, f4, f5				# 195
	fadd	f3, f3, f4				# 195
	fcmpu	cr7, f2, f3				# 115
	bgt	cr7, ble_else.20774				# 115
	addi	r19, 0, 0				# 115
	b	ble_cont.20775				# 115
ble_else.20774:
	addi	r19, 0, 1				# 115
ble_cont.20775:
	stw	r6, 0(r3)				# 1774
	stw	r5, -4(r3)				# 1774
	stw	r2, -8(r3)				# 1774
	stw	r7, -12(r3)				# 1774
	cmpwi	cr7, r19, 0				# 1774
	bne	cr7, beq_else.20776				# 1774
	slwi	r19, r7, 2				# 1777
	lwzx	r19, r2, r19				# 1777
	addis	r31, 0, ha16(l.17123)
	ori	r31, r31, lo16(l.17123)
	lfs	f4, 0(r31)				# 1777
	fdiv	f3, f3, f4				# 1777
	stfs	f0, 0(r8)				# 1472
	lwz	r20, 0(r10)				# 1473
	stw	r17, -16(r3)				# 1473
	stfs	f3, -20(r3)				# 1473
	stw	r13, -24(r3)				# 1473
	stw	r18, -28(r3)				# 1473
	stw	r10, -32(r3)				# 1473
	stfs	f1, -36(r3)				# 1473
	stw	r9, -40(r3)				# 1473
	stw	r15, -44(r3)				# 1473
	stw	r12, -48(r3)				# 1473
	stfs	f2, -52(r3)				# 1473
	stw	r14, -56(r3)				# 1473
	stw	r19, -60(r3)				# 1473
	stw	r11, -64(r3)				# 1473
	stw	r16, -68(r3)				# 1473
	stw	r8, -72(r3)				# 1473
	mfspr	r31, 8				# 1473
	mr	r6, r19				# 1473
	mr	r5, r20				# 1473
	mr	r2, r18				# 1473
	stw	r31, -76(r3)				# 1473
	addi	r3, r3, -80				# 1473
	bl	trace_or_matrix_fast.2790				# 1473
	addi	r3, r3, 80				# 1473
	lwz	r31, -76(r3)				# 1473
	mtspr	8, r31				# 1473
	lwz	r2, -72(r3)				# 1474
	lfs	f0, 0(r2)				# 1474
	addis	r31, 0, ha16(l.16414)
	ori	r31, r31, lo16(l.16414)
	lfs	f1, 0(r31)				# 1476
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.20778				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20779				# 109
ble_else.20778:
	addi	r2, 0, 1				# 109
ble_cont.20779:
	cmpwi	cr7, r2, 0				# 1476
	bne	cr7, beq_else.20780				# 1476
	addi	r2, 0, 0				# 1478
	b	beq_cont.20781				# 1476
beq_else.20780:
	addis	r31, 0, ha16(l.16752)
	ori	r31, r31, lo16(l.16752)
	lfs	f1, 0(r31)				# 1477
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20782				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20783				# 109
ble_else.20782:
	addi	r2, 0, 1				# 109
ble_cont.20783:
beq_cont.20781:
	cmpwi	cr7, r2, 0				# 1754
	bne	cr7, beq_else.20784				# 1754
	b	beq_cont.20785				# 1754
beq_else.20784:
	lwz	r2, -68(r3)				# 1755
	lwz	r2, 0(r2)				# 1755
	slwi	r2, r2, 2				# 1755
	lwz	r5, -64(r3)				# 1755
	lwzx	r2, r5, r2				# 1755
	lwz	r5, -60(r3)				# 521
	lwz	r5, 0(r5)				# 521
	lwz	r6, 4(r2)				# 252
	stw	r2, -76(r3)				# 1529
	cmpwi	cr7, r6, 1				# 1529
	bne	cr7, beq_else.20786				# 1529
	lwz	r6, -56(r3)				# 1490
	lwz	r6, 0(r6)				# 1490
	lwz	r7, -48(r3)				# 154
	lfs	f0, -52(r3)				# 154
	stfs	f0, 0(r7)				# 154
	stfs	f0, 4(r7)				# 155
	stfs	f0, 8(r7)				# 156
	addi	r6, r6, -1				# 1493
	slwi	r8, r6, 2				# 1493
	lfsx	f1, r5, r8				# 1493
	fcmpu	cr7, f1, f0				# 111
	bne	cr7, beq_else.20788				# 111
	addi	r5, 0, 1				# 111
	b	beq_cont.20789				# 111
beq_else.20788:
	addi	r5, 0, 0				# 111
beq_cont.20789:
	cmpwi	cr7, r5, 0				# 125
	bne	cr7, beq_else.20790				# 125
	fcmpu	cr7, f1, f0				# 113
	bgt	cr7, ble_else.20792				# 113
	addi	r5, 0, 0				# 113
	b	ble_cont.20793				# 113
ble_else.20792:
	addi	r5, 0, 1				# 113
ble_cont.20793:
	cmpwi	cr7, r5, 0				# 126
	bne	cr7, beq_else.20794				# 126
	addis	r31, 0, ha16(l.16088)
	ori	r31, r31, lo16(l.16088)
	lfs	f1, 0(r31)				# 127
	b	beq_cont.20795				# 126
beq_else.20794:
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f1, 0(r31)				# 126
beq_cont.20795:
	b	beq_cont.20791				# 125
beq_else.20790:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f1, 0(r31)				# 125
beq_cont.20791:
	fneg	f1, f1				# 107
	slwi	r5, r6, 2				# 1493
	stfsx	f1, r7, r5				# 1493
	b	beq_cont.20787				# 1529
beq_else.20786:
	cmpwi	cr7, r6, 2				# 1531
	bne	cr7, beq_else.20796				# 1531
	lwz	r5, 16(r2)				# 290
	lfs	f0, 0(r5)				# 295
	fneg	f0, f0				# 107
	lwz	r5, -48(r3)				# 1499
	stfs	f0, 0(r5)				# 1499
	lwz	r6, 16(r2)				# 300
	lfs	f0, 4(r6)				# 305
	fneg	f0, f0				# 107
	stfs	f0, 4(r5)				# 1500
	lwz	r6, 16(r2)				# 310
	lfs	f0, 8(r6)				# 315
	fneg	f0, f0				# 107
	stfs	f0, 8(r5)				# 1501
	b	beq_cont.20797				# 1531
beq_else.20796:
	lwz	r5, -44(r3)				# 1506
	lfs	f0, 0(r5)				# 1506
	lwz	r6, 20(r2)				# 330
	lfs	f1, 0(r6)				# 335
	fsub	f0, f0, f1				# 1506
	lfs	f1, 4(r5)				# 1507
	lwz	r6, 20(r2)				# 340
	lfs	f2, 4(r6)				# 345
	fsub	f1, f1, f2				# 1507
	lfs	f2, 8(r5)				# 1508
	lwz	r6, 20(r2)				# 350
	lfs	f3, 8(r6)				# 355
	fsub	f2, f2, f3				# 1508
	lwz	r6, 16(r2)				# 290
	lfs	f3, 0(r6)				# 295
	fmul	f3, f0, f3				# 1510
	lwz	r6, 16(r2)				# 300
	lfs	f4, 4(r6)				# 305
	fmul	f4, f1, f4				# 1511
	lwz	r6, 16(r2)				# 310
	lfs	f5, 8(r6)				# 315
	fmul	f5, f2, f5				# 1512
	lwz	r6, 12(r2)				# 281
	cmpwi	cr7, r6, 0				# 1514
	bne	cr7, beq_else.20798				# 1514
	lwz	r6, -48(r3)				# 1515
	stfs	f3, 0(r6)				# 1515
	stfs	f4, 4(r6)				# 1516
	stfs	f5, 8(r6)				# 1517
	b	beq_cont.20799				# 1514
beq_else.20798:
	lwz	r6, 36(r2)				# 430
	lfs	f6, 8(r6)				# 435
	fmul	f6, f1, f6				# 1519
	lwz	r6, 36(r2)				# 420
	lfs	f7, 4(r6)				# 425
	fmul	f7, f2, f7				# 1519
	fadd	f6, f6, f7				# 1519
	addis	r31, 0, ha16(l.16113)
	ori	r31, r31, lo16(l.16113)
	lfs	f7, 0(r31)				# 105
	fdiv	f6, f6, f7				# 105
	fadd	f3, f3, f6				# 1519
	lwz	r6, -48(r3)				# 1519
	stfs	f3, 0(r6)				# 1519
	lwz	r7, 36(r2)				# 430
	lfs	f3, 8(r7)				# 435
	fmul	f3, f0, f3				# 1520
	lwz	r7, 36(r2)				# 410
	lfs	f6, 0(r7)				# 415
	fmul	f2, f2, f6				# 1520
	fadd	f2, f3, f2				# 1520
	fdiv	f2, f2, f7				# 105
	fadd	f2, f4, f2				# 1520
	stfs	f2, 4(r6)				# 1520
	lwz	r7, 36(r2)				# 420
	lfs	f2, 4(r7)				# 425
	fmul	f0, f0, f2				# 1521
	lwz	r7, 36(r2)				# 410
	lfs	f2, 0(r7)				# 415
	fmul	f1, f1, f2				# 1521
	fadd	f0, f0, f1				# 1521
	fdiv	f0, f0, f7				# 105
	fadd	f0, f5, f0				# 1521
	stfs	f0, 8(r6)				# 1521
beq_cont.20799:
	lwz	r7, 24(r2)				# 272
	lfs	f0, 0(r6)				# 186
	fmul	f0, f0, f0				# 103
	lfs	f1, 4(r6)				# 186
	fmul	f1, f1, f1				# 103
	fadd	f0, f0, f1				# 186
	lfs	f1, 8(r6)				# 186
	fmul	f1, f1, f1				# 103
	fadd	f0, f0, f1				# 186
	stw	r7, -80(r3)				# 186
	mfspr	r31, 8				# 186
	stw	r31, -84(r3)				# 186
	addi	r3, r3, -88				# 186
	bl	min_caml_sqrt				# 186
	addi	r3, r3, 88				# 186
	lwz	r31, -84(r3)				# 186
	mtspr	8, r31				# 186
	lfs	f1, -52(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20800				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20801				# 111
beq_else.20800:
	addi	r2, 0, 0				# 111
beq_cont.20801:
	cmpwi	cr7, r2, 0				# 187
	bne	cr7, beq_else.20802				# 187
	lwz	r2, -80(r3)				# 187
	cmpwi	cr7, r2, 0				# 187
	bne	cr7, beq_else.20804				# 187
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 187
	fdiv	f0, f2, f0				# 187
	b	beq_cont.20805				# 187
beq_else.20804:
	addis	r31, 0, ha16(l.16088)
	ori	r31, r31, lo16(l.16088)
	lfs	f2, 0(r31)				# 187
	fdiv	f0, f2, f0				# 187
beq_cont.20805:
	b	beq_cont.20803				# 187
beq_else.20802:
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f0, 0(r31)				# 187
beq_cont.20803:
	lwz	r2, -48(r3)				# 188
	lfs	f2, 0(r2)				# 188
	fmul	f2, f2, f0				# 188
	stfs	f2, 0(r2)				# 188
	lfs	f2, 4(r2)				# 189
	fmul	f2, f2, f0				# 189
	stfs	f2, 4(r2)				# 189
	lfs	f2, 8(r2)				# 190
	fmul	f0, f2, f0				# 190
	stfs	f0, 8(r2)				# 190
beq_cont.20797:
beq_cont.20787:
	lwz	r2, -76(r3)				# 242
	lwz	r5, 0(r2)				# 242
	lwz	r6, 32(r2)				# 380
	lfs	f0, 0(r6)				# 385
	lwz	r6, -40(r3)				# 1544
	stfs	f0, 0(r6)				# 1544
	lwz	r7, 32(r2)				# 390
	lfs	f0, 4(r7)				# 395
	stfs	f0, 4(r6)				# 1545
	lwz	r7, 32(r2)				# 400
	lfs	f0, 8(r7)				# 405
	stfs	f0, 8(r6)				# 1546
	cmpwi	cr7, r5, 1				# 1547
	bne	cr7, beq_else.20806				# 1547
	lwz	r5, -44(r3)				# 1550
	lfs	f0, 0(r5)				# 1550
	lwz	r7, 20(r2)				# 330
	lfs	f1, 0(r7)				# 335
	fsub	f0, f0, f1				# 1550
	addis	r31, 0, ha16(l.16886)
	ori	r31, r31, lo16(l.16886)
	lfs	f1, 0(r31)				# 1552
	fmul	f2, f0, f1				# 1552
	stfs	f1, -84(r3)				# 1552
	stfs	f0, -88(r3)				# 1552
	mfspr	r31, 8				# 1552
	fmr	f0, f2				# 1552
	stw	r31, -92(r3)				# 1552
	addi	r3, r3, -96				# 1552
	bl	min_caml_floor				# 1552
	addi	r3, r3, 96				# 1552
	lwz	r31, -92(r3)				# 1552
	mtspr	8, r31				# 1552
	addis	r31, 0, ha16(l.16887)
	ori	r31, r31, lo16(l.16887)
	lfs	f1, 0(r31)				# 1552
	fmul	f0, f0, f1				# 1552
	lfs	f2, -88(r3)				# 1553
	fsub	f0, f2, f0				# 1553
	addis	r31, 0, ha16(l.16877)
	ori	r31, r31, lo16(l.16877)
	lfs	f2, 0(r31)				# 1553
	fcmpu	cr7, f2, f0				# 109
	bgt	cr7, ble_else.20808				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20809				# 109
ble_else.20808:
	addi	r2, 0, 1				# 109
ble_cont.20809:
	lwz	r5, -44(r3)				# 1555
	lfs	f0, 8(r5)				# 1555
	lwz	r5, -76(r3)				# 350
	lwz	r6, 20(r5)				# 350
	lfs	f3, 8(r6)				# 355
	fsub	f0, f0, f3				# 1555
	lfs	f3, -84(r3)				# 1557
	fmul	f3, f0, f3				# 1557
	stw	r2, -92(r3)				# 1557
	stfs	f2, -96(r3)				# 1557
	stfs	f0, -100(r3)				# 1557
	stfs	f1, -104(r3)				# 1557
	mfspr	r31, 8				# 1557
	fmr	f0, f3				# 1557
	stw	r31, -108(r3)				# 1557
	addi	r3, r3, -112				# 1557
	bl	min_caml_floor				# 1557
	addi	r3, r3, 112				# 1557
	lwz	r31, -108(r3)				# 1557
	mtspr	8, r31				# 1557
	lfs	f1, -104(r3)				# 1557
	fmul	f0, f0, f1				# 1557
	lfs	f1, -100(r3)				# 1558
	fsub	f0, f1, f0				# 1558
	lfs	f1, -96(r3)				# 109
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20810				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20811				# 109
ble_else.20810:
	addi	r2, 0, 1				# 109
ble_cont.20811:
	lwz	r5, -92(r3)				# 1561
	cmpwi	cr7, r5, 0				# 1561
	bne	cr7, beq_else.20812				# 1561
	cmpwi	cr7, r2, 0				# 1563
	bne	cr7, beq_else.20814				# 1563
	addis	r31, 0, ha16(Td267.5756)
	ori	r31, r31, lo16(Td267.5756)
	lfs	f0, 0(r31)				# 1563
	b	beq_cont.20815				# 1563
beq_else.20814:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 1563
beq_cont.20815:
	b	beq_cont.20813				# 1561
beq_else.20812:
	cmpwi	cr7, r2, 0				# 1562
	bne	cr7, beq_else.20816				# 1562
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 1562
	b	beq_cont.20817				# 1562
beq_else.20816:
	addis	r31, 0, ha16(Td267.5756)
	ori	r31, r31, lo16(Td267.5756)
	lfs	f0, 0(r31)				# 1562
beq_cont.20817:
beq_cont.20813:
	lwz	r2, -40(r3)				# 1560
	stfs	f0, 4(r2)				# 1560
	b	beq_cont.20807				# 1547
beq_else.20806:
	cmpwi	cr7, r5, 2				# 1565
	bne	cr7, beq_else.20818				# 1565
	lwz	r5, -44(r3)				# 1568
	lfs	f0, 4(r5)				# 1568
	addis	r31, 0, ha16(l.16881)
	ori	r31, r31, lo16(l.16881)
	lfs	f1, 0(r31)				# 1568
	fmul	f0, f0, f1				# 1568
	mfspr	r31, 8				# 1568
	stw	r31, -108(r3)				# 1568
	addi	r3, r3, -112				# 1568
	bl	min_caml_sin				# 1568
	addi	r3, r3, 112				# 1568
	lwz	r31, -108(r3)				# 1568
	mtspr	8, r31				# 1568
	fmul	f0, f0, f0				# 103
	lfs	f1, -36(r3)				# 1569
	fmul	f2, f1, f0				# 1569
	lwz	r2, -40(r3)				# 1569
	stfs	f2, 0(r2)				# 1569
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 1570
	fsub	f0, f2, f0				# 1570
	fmul	f0, f1, f0				# 1570
	stfs	f0, 4(r2)				# 1570
	b	beq_cont.20819				# 1565
beq_else.20818:
	cmpwi	cr7, r5, 3				# 1572
	bne	cr7, beq_else.20820				# 1572
	lwz	r5, -44(r3)				# 1575
	lfs	f0, 0(r5)				# 1575
	lwz	r7, 20(r2)				# 330
	lfs	f1, 0(r7)				# 335
	fsub	f0, f0, f1				# 1575
	lfs	f1, 8(r5)				# 1576
	lwz	r5, 20(r2)				# 350
	lfs	f2, 8(r5)				# 355
	fsub	f1, f1, f2				# 1576
	fmul	f0, f0, f0				# 103
	fmul	f1, f1, f1				# 103
	fadd	f0, f0, f1				# 1577
	mfspr	r31, 8				# 1577
	stw	r31, -108(r3)				# 1577
	addi	r3, r3, -112				# 1577
	bl	min_caml_sqrt				# 1577
	addi	r3, r3, 112				# 1577
	lwz	r31, -108(r3)				# 1577
	mtspr	8, r31				# 1577
	addis	r31, 0, ha16(l.16877)
	ori	r31, r31, lo16(l.16877)
	lfs	f1, 0(r31)				# 1577
	fdiv	f0, f0, f1				# 1577
	stfs	f0, -108(r3)				# 1578
	mfspr	r31, 8				# 1578
	stw	r31, -112(r3)				# 1578
	addi	r3, r3, -116				# 1578
	bl	min_caml_floor				# 1578
	addi	r3, r3, 116				# 1578
	lwz	r31, -112(r3)				# 1578
	mtspr	8, r31				# 1578
	lfs	f1, -108(r3)				# 1578
	fsub	f0, f1, f0				# 1578
	addis	r31, 0, ha16(l.16865)
	ori	r31, r31, lo16(l.16865)
	lfs	f1, 0(r31)				# 1578
	fmul	f0, f0, f1				# 1578
	mfspr	r31, 8				# 1579
	stw	r31, -112(r3)				# 1579
	addi	r3, r3, -116				# 1579
	bl	min_caml_cos				# 1579
	addi	r3, r3, 116				# 1579
	lwz	r31, -112(r3)				# 1579
	mtspr	8, r31				# 1579
	fmul	f0, f0, f0				# 103
	lfs	f1, -36(r3)				# 1580
	fmul	f2, f0, f1				# 1580
	lwz	r2, -40(r3)				# 1580
	stfs	f2, 4(r2)				# 1580
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 1581
	fsub	f0, f2, f0				# 1581
	fmul	f0, f0, f1				# 1581
	stfs	f0, 8(r2)				# 1581
	b	beq_cont.20821				# 1572
beq_else.20820:
	cmpwi	cr7, r5, 4				# 1583
	bne	cr7, beq_else.20822				# 1583
	lwz	r5, -44(r3)				# 1585
	lfs	f0, 0(r5)				# 1585
	lwz	r7, 20(r2)				# 330
	lfs	f1, 0(r7)				# 335
	fsub	f0, f0, f1				# 1585
	lwz	r7, 16(r2)				# 290
	lfs	f1, 0(r7)				# 295
	stfs	f0, -112(r3)				# 1585
	mfspr	r31, 8				# 1585
	fmr	f0, f1				# 1585
	stw	r31, -116(r3)				# 1585
	addi	r3, r3, -120				# 1585
	bl	min_caml_sqrt				# 1585
	addi	r3, r3, 120				# 1585
	lwz	r31, -116(r3)				# 1585
	mtspr	8, r31				# 1585
	lfs	f1, -112(r3)				# 1585
	fmul	f0, f1, f0				# 1585
	lwz	r2, -44(r3)				# 1586
	lfs	f1, 8(r2)				# 1586
	lwz	r5, -76(r3)				# 350
	lwz	r6, 20(r5)				# 350
	lfs	f2, 8(r6)				# 355
	fsub	f1, f1, f2				# 1586
	lwz	r6, 16(r5)				# 310
	lfs	f2, 8(r6)				# 315
	stfs	f0, -116(r3)				# 1586
	stfs	f1, -120(r3)				# 1586
	mfspr	r31, 8				# 1586
	fmr	f0, f2				# 1586
	stw	r31, -124(r3)				# 1586
	addi	r3, r3, -128				# 1586
	bl	min_caml_sqrt				# 1586
	addi	r3, r3, 128				# 1586
	lwz	r31, -124(r3)				# 1586
	mtspr	8, r31				# 1586
	lfs	f1, -120(r3)				# 1586
	fmul	f0, f1, f0				# 1586
	lfs	f1, -116(r3)				# 103
	fmul	f2, f1, f1				# 103
	fmul	f3, f0, f0				# 103
	fadd	f2, f2, f3				# 1587
	stfs	f2, -124(r3)				# 1589
	stfs	f0, -128(r3)				# 1589
	mfspr	r31, 8				# 1589
	fmr	f0, f1				# 1589
	stw	r31, -132(r3)				# 1589
	addi	r3, r3, -136				# 1589
	bl	min_caml_fabs				# 1589
	addi	r3, r3, 136				# 1589
	lwz	r31, -132(r3)				# 1589
	mtspr	8, r31				# 1589
	addis	r31, 0, ha16(l.16862)
	ori	r31, r31, lo16(l.16862)
	lfs	f1, 0(r31)				# 1589
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20824				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20825				# 109
ble_else.20824:
	addi	r2, 0, 1				# 109
ble_cont.20825:
	stfs	f1, -132(r3)				# 1589
	cmpwi	cr7, r2, 0				# 1589
	bne	cr7, beq_else.20826				# 1589
	lfs	f0, -116(r3)				# 1592
	lfs	f2, -128(r3)				# 1592
	fdiv	f0, f2, f0				# 1592
	mfspr	r31, 8				# 1592
	stw	r31, -136(r3)				# 1592
	addi	r3, r3, -140				# 1592
	bl	min_caml_fabs				# 1592
	addi	r3, r3, 140				# 1592
	lwz	r31, -136(r3)				# 1592
	mtspr	8, r31				# 1592
	mfspr	r31, 8				# 1594
	stw	r31, -136(r3)				# 1594
	addi	r3, r3, -140				# 1594
	bl	min_caml_atan				# 1594
	addi	r3, r3, 140				# 1594
	lwz	r31, -136(r3)				# 1594
	mtspr	8, r31				# 1594
	addis	r31, 0, ha16(l.16864)
	ori	r31, r31, lo16(l.16864)
	lfs	f1, 0(r31)				# 1594
	fmul	f0, f0, f1				# 1594
	addis	r31, 0, ha16(l.16865)
	ori	r31, r31, lo16(l.16865)
	lfs	f1, 0(r31)				# 1594
	fdiv	f0, f0, f1				# 1594
	b	beq_cont.20827				# 1589
beq_else.20826:
	addis	r31, 0, ha16(l.16863)
	ori	r31, r31, lo16(l.16863)
	lfs	f0, 0(r31)				# 1590
beq_cont.20827:
	stfs	f0, -136(r3)				# 1596
	mfspr	r31, 8				# 1596
	stw	r31, -140(r3)				# 1596
	addi	r3, r3, -144				# 1596
	bl	min_caml_floor				# 1596
	addi	r3, r3, 144				# 1596
	lwz	r31, -140(r3)				# 1596
	mtspr	8, r31				# 1596
	lfs	f1, -136(r3)				# 1596
	fsub	f0, f1, f0				# 1596
	lwz	r2, -44(r3)				# 1598
	lfs	f1, 4(r2)				# 1598
	lwz	r2, -76(r3)				# 340
	lwz	r5, 20(r2)				# 340
	lfs	f2, 4(r5)				# 345
	fsub	f1, f1, f2				# 1598
	lwz	r5, 16(r2)				# 300
	lfs	f2, 4(r5)				# 305
	stfs	f0, -140(r3)				# 1598
	stfs	f1, -144(r3)				# 1598
	mfspr	r31, 8				# 1598
	fmr	f0, f2				# 1598
	stw	r31, -148(r3)				# 1598
	addi	r3, r3, -152				# 1598
	bl	min_caml_sqrt				# 1598
	addi	r3, r3, 152				# 1598
	lwz	r31, -148(r3)				# 1598
	mtspr	8, r31				# 1598
	lfs	f1, -144(r3)				# 1598
	fmul	f0, f1, f0				# 1598
	lfs	f1, -124(r3)				# 1600
	stfs	f0, -148(r3)				# 1600
	mfspr	r31, 8				# 1600
	fmr	f0, f1				# 1600
	stw	r31, -152(r3)				# 1600
	addi	r3, r3, -156				# 1600
	bl	min_caml_fabs				# 1600
	addi	r3, r3, 156				# 1600
	lwz	r31, -152(r3)				# 1600
	mtspr	8, r31				# 1600
	lfs	f1, -132(r3)				# 109
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20828				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20829				# 109
ble_else.20828:
	addi	r2, 0, 1				# 109
ble_cont.20829:
	cmpwi	cr7, r2, 0				# 1600
	bne	cr7, beq_else.20830				# 1600
	lfs	f0, -124(r3)				# 1603
	lfs	f1, -148(r3)				# 1603
	fdiv	f0, f1, f0				# 1603
	mfspr	r31, 8				# 1603
	stw	r31, -152(r3)				# 1603
	addi	r3, r3, -156				# 1603
	bl	min_caml_fabs				# 1603
	addi	r3, r3, 156				# 1603
	lwz	r31, -152(r3)				# 1603
	mtspr	8, r31				# 1603
	mfspr	r31, 8				# 1604
	stw	r31, -152(r3)				# 1604
	addi	r3, r3, -156				# 1604
	bl	min_caml_atan				# 1604
	addi	r3, r3, 156				# 1604
	lwz	r31, -152(r3)				# 1604
	mtspr	8, r31				# 1604
	addis	r31, 0, ha16(l.16864)
	ori	r31, r31, lo16(l.16864)
	lfs	f1, 0(r31)				# 1604
	fmul	f0, f0, f1				# 1604
	addis	r31, 0, ha16(l.16865)
	ori	r31, r31, lo16(l.16865)
	lfs	f1, 0(r31)				# 1604
	fdiv	f0, f0, f1				# 1604
	b	beq_cont.20831				# 1600
beq_else.20830:
	addis	r31, 0, ha16(l.16863)
	ori	r31, r31, lo16(l.16863)
	lfs	f0, 0(r31)				# 1601
beq_cont.20831:
	stfs	f0, -152(r3)				# 1606
	mfspr	r31, 8				# 1606
	stw	r31, -156(r3)				# 1606
	addi	r3, r3, -160				# 1606
	bl	min_caml_floor				# 1606
	addi	r3, r3, 160				# 1606
	lwz	r31, -156(r3)				# 1606
	mtspr	8, r31				# 1606
	lfs	f1, -152(r3)				# 1606
	fsub	f0, f1, f0				# 1606
	addis	r31, 0, ha16(l.16869)
	ori	r31, r31, lo16(l.16869)
	lfs	f1, 0(r31)				# 1607
	addis	r31, 0, ha16(l.16870)
	ori	r31, r31, lo16(l.16870)
	lfs	f2, 0(r31)				# 1607
	lfs	f3, -140(r3)				# 1607
	fsub	f3, f2, f3				# 1607
	fmul	f3, f3, f3				# 103
	fsub	f1, f1, f3				# 1607
	fsub	f0, f2, f0				# 1607
	fmul	f0, f0, f0				# 103
	fsub	f0, f1, f0				# 1607
	lfs	f1, -52(r3)				# 115
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.20832				# 115
	addi	r2, 0, 0				# 115
	b	ble_cont.20833				# 115
ble_else.20832:
	addi	r2, 0, 1				# 115
ble_cont.20833:
	cmpwi	cr7, r2, 0				# 1608
	bne	cr7, beq_else.20834				# 1608
	b	beq_cont.20835				# 1608
beq_else.20834:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 1608
beq_cont.20835:
	lfs	f2, -36(r3)				# 1609
	fmul	f0, f2, f0				# 1609
	addis	r31, 0, ha16(l.16871)
	ori	r31, r31, lo16(l.16871)
	lfs	f2, 0(r31)				# 1609
	fdiv	f0, f0, f2				# 1609
	lwz	r2, -40(r3)				# 1609
	stfs	f0, 8(r2)				# 1609
	b	beq_cont.20823				# 1583
beq_else.20822:
beq_cont.20823:
beq_cont.20821:
beq_cont.20819:
beq_cont.20807:
	lwz	r2, -32(r3)				# 1760
	lwz	r5, 0(r2)				# 1760
	lwz	r2, -28(r3)				# 1760
	mfspr	r31, 8				# 1760
	stw	r31, -156(r3)				# 1760
	addi	r3, r3, -160				# 1760
	bl	shadow_check_one_or_matrix.2765				# 1760
	addi	r3, r3, 160				# 1760
	lwz	r31, -156(r3)				# 1760
	mtspr	8, r31				# 1760
	cmpwi	cr7, r2, 0				# 1760
	bne	cr7, beq_else.20836				# 1760
	lwz	r2, -48(r3)				# 195
	lfs	f0, 0(r2)				# 195
	lwz	r5, -24(r3)				# 195
	lfs	f1, 0(r5)				# 195
	fmul	f0, f0, f1				# 195
	lfs	f1, 4(r2)				# 195
	lfs	f2, 4(r5)				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lfs	f1, 8(r2)				# 195
	lfs	f2, 8(r5)				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	fneg	f0, f0				# 107
	lfs	f1, -52(r3)				# 113
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.20838				# 113
	addi	r2, 0, 0				# 113
	b	ble_cont.20839				# 113
ble_else.20838:
	addi	r2, 0, 1				# 113
ble_cont.20839:
	cmpwi	cr7, r2, 0				# 1762
	bne	cr7, beq_else.20840				# 1762
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 1762
	b	beq_cont.20841				# 1762
beq_else.20840:
beq_cont.20841:
	lfs	f1, -20(r3)				# 1763
	fmul	f0, f1, f0				# 1763
	lwz	r2, -76(r3)				# 360
	lwz	r2, 28(r2)				# 360
	lfs	f1, 0(r2)				# 365
	fmul	f0, f0, f1				# 1763
	lwz	r2, -16(r3)				# 205
	lfs	f1, 0(r2)				# 205
	lwz	r5, -40(r3)				# 205
	lfs	f2, 0(r5)				# 205
	fmul	f2, f0, f2				# 205
	fadd	f1, f1, f2				# 205
	stfs	f1, 0(r2)				# 205
	lfs	f1, 4(r2)				# 206
	lfs	f2, 4(r5)				# 206
	fmul	f2, f0, f2				# 206
	fadd	f1, f1, f2				# 206
	stfs	f1, 4(r2)				# 206
	lfs	f1, 8(r2)				# 207
	lfs	f2, 8(r5)				# 207
	fmul	f0, f0, f2				# 207
	fadd	f0, f1, f0				# 207
	stfs	f0, 8(r2)				# 207
	b	beq_cont.20837				# 1760
beq_else.20836:
beq_cont.20837:
beq_cont.20785:
	b	beq_cont.20777				# 1774
beq_else.20776:
	addi	r19, r7, 1				# 1775
	slwi	r19, r19, 2				# 1775
	lwzx	r19, r2, r19				# 1775
	addis	r31, 0, ha16(l.17027)
	ori	r31, r31, lo16(l.17027)
	lfs	f4, 0(r31)				# 1775
	fdiv	f3, f3, f4				# 1775
	stfs	f0, 0(r8)				# 1472
	lwz	r20, 0(r10)				# 1473
	stw	r17, -16(r3)				# 1473
	stfs	f3, -156(r3)				# 1473
	stw	r13, -24(r3)				# 1473
	stw	r18, -28(r3)				# 1473
	stw	r10, -32(r3)				# 1473
	stfs	f1, -36(r3)				# 1473
	stw	r9, -40(r3)				# 1473
	stw	r15, -44(r3)				# 1473
	stw	r12, -48(r3)				# 1473
	stfs	f2, -52(r3)				# 1473
	stw	r14, -56(r3)				# 1473
	stw	r19, -160(r3)				# 1473
	stw	r11, -64(r3)				# 1473
	stw	r16, -68(r3)				# 1473
	stw	r8, -72(r3)				# 1473
	mfspr	r31, 8				# 1473
	mr	r6, r19				# 1473
	mr	r5, r20				# 1473
	mr	r2, r18				# 1473
	stw	r31, -164(r3)				# 1473
	addi	r3, r3, -168				# 1473
	bl	trace_or_matrix_fast.2790				# 1473
	addi	r3, r3, 168				# 1473
	lwz	r31, -164(r3)				# 1473
	mtspr	8, r31				# 1473
	lwz	r2, -72(r3)				# 1474
	lfs	f0, 0(r2)				# 1474
	addis	r31, 0, ha16(l.16414)
	ori	r31, r31, lo16(l.16414)
	lfs	f1, 0(r31)				# 1476
	fcmpu	cr7, f0, f1				# 109
	bgt	cr7, ble_else.20842				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20843				# 109
ble_else.20842:
	addi	r2, 0, 1				# 109
ble_cont.20843:
	cmpwi	cr7, r2, 0				# 1476
	bne	cr7, beq_else.20844				# 1476
	addi	r2, 0, 0				# 1478
	b	beq_cont.20845				# 1476
beq_else.20844:
	addis	r31, 0, ha16(l.16752)
	ori	r31, r31, lo16(l.16752)
	lfs	f1, 0(r31)				# 1477
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20846				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20847				# 109
ble_else.20846:
	addi	r2, 0, 1				# 109
ble_cont.20847:
beq_cont.20845:
	cmpwi	cr7, r2, 0				# 1754
	bne	cr7, beq_else.20848				# 1754
	b	beq_cont.20849				# 1754
beq_else.20848:
	lwz	r2, -68(r3)				# 1755
	lwz	r2, 0(r2)				# 1755
	slwi	r2, r2, 2				# 1755
	lwz	r5, -64(r3)				# 1755
	lwzx	r2, r5, r2				# 1755
	lwz	r5, -160(r3)				# 521
	lwz	r5, 0(r5)				# 521
	lwz	r6, 4(r2)				# 252
	stw	r2, -164(r3)				# 1529
	cmpwi	cr7, r6, 1				# 1529
	bne	cr7, beq_else.20850				# 1529
	lwz	r6, -56(r3)				# 1490
	lwz	r6, 0(r6)				# 1490
	lwz	r7, -48(r3)				# 154
	lfs	f0, -52(r3)				# 154
	stfs	f0, 0(r7)				# 154
	stfs	f0, 4(r7)				# 155
	stfs	f0, 8(r7)				# 156
	addi	r6, r6, -1				# 1493
	slwi	r8, r6, 2				# 1493
	lfsx	f1, r5, r8				# 1493
	fcmpu	cr7, f1, f0				# 111
	bne	cr7, beq_else.20852				# 111
	addi	r5, 0, 1				# 111
	b	beq_cont.20853				# 111
beq_else.20852:
	addi	r5, 0, 0				# 111
beq_cont.20853:
	cmpwi	cr7, r5, 0				# 125
	bne	cr7, beq_else.20854				# 125
	fcmpu	cr7, f1, f0				# 113
	bgt	cr7, ble_else.20856				# 113
	addi	r5, 0, 0				# 113
	b	ble_cont.20857				# 113
ble_else.20856:
	addi	r5, 0, 1				# 113
ble_cont.20857:
	cmpwi	cr7, r5, 0				# 126
	bne	cr7, beq_else.20858				# 126
	addis	r31, 0, ha16(l.16088)
	ori	r31, r31, lo16(l.16088)
	lfs	f1, 0(r31)				# 127
	b	beq_cont.20859				# 126
beq_else.20858:
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f1, 0(r31)				# 126
beq_cont.20859:
	b	beq_cont.20855				# 125
beq_else.20854:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f1, 0(r31)				# 125
beq_cont.20855:
	fneg	f1, f1				# 107
	slwi	r5, r6, 2				# 1493
	stfsx	f1, r7, r5				# 1493
	b	beq_cont.20851				# 1529
beq_else.20850:
	cmpwi	cr7, r6, 2				# 1531
	bne	cr7, beq_else.20860				# 1531
	lwz	r5, 16(r2)				# 290
	lfs	f0, 0(r5)				# 295
	fneg	f0, f0				# 107
	lwz	r5, -48(r3)				# 1499
	stfs	f0, 0(r5)				# 1499
	lwz	r6, 16(r2)				# 300
	lfs	f0, 4(r6)				# 305
	fneg	f0, f0				# 107
	stfs	f0, 4(r5)				# 1500
	lwz	r6, 16(r2)				# 310
	lfs	f0, 8(r6)				# 315
	fneg	f0, f0				# 107
	stfs	f0, 8(r5)				# 1501
	b	beq_cont.20861				# 1531
beq_else.20860:
	lwz	r5, -44(r3)				# 1506
	lfs	f0, 0(r5)				# 1506
	lwz	r6, 20(r2)				# 330
	lfs	f1, 0(r6)				# 335
	fsub	f0, f0, f1				# 1506
	lfs	f1, 4(r5)				# 1507
	lwz	r6, 20(r2)				# 340
	lfs	f2, 4(r6)				# 345
	fsub	f1, f1, f2				# 1507
	lfs	f2, 8(r5)				# 1508
	lwz	r6, 20(r2)				# 350
	lfs	f3, 8(r6)				# 355
	fsub	f2, f2, f3				# 1508
	lwz	r6, 16(r2)				# 290
	lfs	f3, 0(r6)				# 295
	fmul	f3, f0, f3				# 1510
	lwz	r6, 16(r2)				# 300
	lfs	f4, 4(r6)				# 305
	fmul	f4, f1, f4				# 1511
	lwz	r6, 16(r2)				# 310
	lfs	f5, 8(r6)				# 315
	fmul	f5, f2, f5				# 1512
	lwz	r6, 12(r2)				# 281
	cmpwi	cr7, r6, 0				# 1514
	bne	cr7, beq_else.20862				# 1514
	lwz	r6, -48(r3)				# 1515
	stfs	f3, 0(r6)				# 1515
	stfs	f4, 4(r6)				# 1516
	stfs	f5, 8(r6)				# 1517
	b	beq_cont.20863				# 1514
beq_else.20862:
	lwz	r6, 36(r2)				# 430
	lfs	f6, 8(r6)				# 435
	fmul	f6, f1, f6				# 1519
	lwz	r6, 36(r2)				# 420
	lfs	f7, 4(r6)				# 425
	fmul	f7, f2, f7				# 1519
	fadd	f6, f6, f7				# 1519
	addis	r31, 0, ha16(l.16113)
	ori	r31, r31, lo16(l.16113)
	lfs	f7, 0(r31)				# 105
	fdiv	f6, f6, f7				# 105
	fadd	f3, f3, f6				# 1519
	lwz	r6, -48(r3)				# 1519
	stfs	f3, 0(r6)				# 1519
	lwz	r7, 36(r2)				# 430
	lfs	f3, 8(r7)				# 435
	fmul	f3, f0, f3				# 1520
	lwz	r7, 36(r2)				# 410
	lfs	f6, 0(r7)				# 415
	fmul	f2, f2, f6				# 1520
	fadd	f2, f3, f2				# 1520
	fdiv	f2, f2, f7				# 105
	fadd	f2, f4, f2				# 1520
	stfs	f2, 4(r6)				# 1520
	lwz	r7, 36(r2)				# 420
	lfs	f2, 4(r7)				# 425
	fmul	f0, f0, f2				# 1521
	lwz	r7, 36(r2)				# 410
	lfs	f2, 0(r7)				# 415
	fmul	f1, f1, f2				# 1521
	fadd	f0, f0, f1				# 1521
	fdiv	f0, f0, f7				# 105
	fadd	f0, f5, f0				# 1521
	stfs	f0, 8(r6)				# 1521
beq_cont.20863:
	lwz	r7, 24(r2)				# 272
	lfs	f0, 0(r6)				# 186
	fmul	f0, f0, f0				# 103
	lfs	f1, 4(r6)				# 186
	fmul	f1, f1, f1				# 103
	fadd	f0, f0, f1				# 186
	lfs	f1, 8(r6)				# 186
	fmul	f1, f1, f1				# 103
	fadd	f0, f0, f1				# 186
	stw	r7, -168(r3)				# 186
	mfspr	r31, 8				# 186
	stw	r31, -172(r3)				# 186
	addi	r3, r3, -176				# 186
	bl	min_caml_sqrt				# 186
	addi	r3, r3, 176				# 186
	lwz	r31, -172(r3)				# 186
	mtspr	8, r31				# 186
	lfs	f1, -52(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20864				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20865				# 111
beq_else.20864:
	addi	r2, 0, 0				# 111
beq_cont.20865:
	cmpwi	cr7, r2, 0				# 187
	bne	cr7, beq_else.20866				# 187
	lwz	r2, -168(r3)				# 187
	cmpwi	cr7, r2, 0				# 187
	bne	cr7, beq_else.20868				# 187
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 187
	fdiv	f0, f2, f0				# 187
	b	beq_cont.20869				# 187
beq_else.20868:
	addis	r31, 0, ha16(l.16088)
	ori	r31, r31, lo16(l.16088)
	lfs	f2, 0(r31)				# 187
	fdiv	f0, f2, f0				# 187
beq_cont.20869:
	b	beq_cont.20867				# 187
beq_else.20866:
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f0, 0(r31)				# 187
beq_cont.20867:
	lwz	r2, -48(r3)				# 188
	lfs	f2, 0(r2)				# 188
	fmul	f2, f2, f0				# 188
	stfs	f2, 0(r2)				# 188
	lfs	f2, 4(r2)				# 189
	fmul	f2, f2, f0				# 189
	stfs	f2, 4(r2)				# 189
	lfs	f2, 8(r2)				# 190
	fmul	f0, f2, f0				# 190
	stfs	f0, 8(r2)				# 190
beq_cont.20861:
beq_cont.20851:
	lwz	r2, -164(r3)				# 242
	lwz	r5, 0(r2)				# 242
	lwz	r6, 32(r2)				# 380
	lfs	f0, 0(r6)				# 385
	lwz	r6, -40(r3)				# 1544
	stfs	f0, 0(r6)				# 1544
	lwz	r7, 32(r2)				# 390
	lfs	f0, 4(r7)				# 395
	stfs	f0, 4(r6)				# 1545
	lwz	r7, 32(r2)				# 400
	lfs	f0, 8(r7)				# 405
	stfs	f0, 8(r6)				# 1546
	cmpwi	cr7, r5, 1				# 1547
	bne	cr7, beq_else.20870				# 1547
	lwz	r5, -44(r3)				# 1550
	lfs	f0, 0(r5)				# 1550
	lwz	r7, 20(r2)				# 330
	lfs	f1, 0(r7)				# 335
	fsub	f0, f0, f1				# 1550
	addis	r31, 0, ha16(l.16886)
	ori	r31, r31, lo16(l.16886)
	lfs	f1, 0(r31)				# 1552
	fmul	f2, f0, f1				# 1552
	stfs	f1, -172(r3)				# 1552
	stfs	f0, -176(r3)				# 1552
	mfspr	r31, 8				# 1552
	fmr	f0, f2				# 1552
	stw	r31, -180(r3)				# 1552
	addi	r3, r3, -184				# 1552
	bl	min_caml_floor				# 1552
	addi	r3, r3, 184				# 1552
	lwz	r31, -180(r3)				# 1552
	mtspr	8, r31				# 1552
	addis	r31, 0, ha16(l.16887)
	ori	r31, r31, lo16(l.16887)
	lfs	f1, 0(r31)				# 1552
	fmul	f0, f0, f1				# 1552
	lfs	f2, -176(r3)				# 1553
	fsub	f0, f2, f0				# 1553
	addis	r31, 0, ha16(l.16877)
	ori	r31, r31, lo16(l.16877)
	lfs	f2, 0(r31)				# 1553
	fcmpu	cr7, f2, f0				# 109
	bgt	cr7, ble_else.20872				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20873				# 109
ble_else.20872:
	addi	r2, 0, 1				# 109
ble_cont.20873:
	lwz	r5, -44(r3)				# 1555
	lfs	f0, 8(r5)				# 1555
	lwz	r5, -164(r3)				# 350
	lwz	r6, 20(r5)				# 350
	lfs	f3, 8(r6)				# 355
	fsub	f0, f0, f3				# 1555
	lfs	f3, -172(r3)				# 1557
	fmul	f3, f0, f3				# 1557
	stw	r2, -180(r3)				# 1557
	stfs	f2, -184(r3)				# 1557
	stfs	f0, -188(r3)				# 1557
	stfs	f1, -192(r3)				# 1557
	mfspr	r31, 8				# 1557
	fmr	f0, f3				# 1557
	stw	r31, -196(r3)				# 1557
	addi	r3, r3, -200				# 1557
	bl	min_caml_floor				# 1557
	addi	r3, r3, 200				# 1557
	lwz	r31, -196(r3)				# 1557
	mtspr	8, r31				# 1557
	lfs	f1, -192(r3)				# 1557
	fmul	f0, f0, f1				# 1557
	lfs	f1, -188(r3)				# 1558
	fsub	f0, f1, f0				# 1558
	lfs	f1, -184(r3)				# 109
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20874				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20875				# 109
ble_else.20874:
	addi	r2, 0, 1				# 109
ble_cont.20875:
	lwz	r5, -180(r3)				# 1561
	cmpwi	cr7, r5, 0				# 1561
	bne	cr7, beq_else.20876				# 1561
	cmpwi	cr7, r2, 0				# 1563
	bne	cr7, beq_else.20878				# 1563
	addis	r31, 0, ha16(Td267.5756)
	ori	r31, r31, lo16(Td267.5756)
	lfs	f0, 0(r31)				# 1563
	b	beq_cont.20879				# 1563
beq_else.20878:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 1563
beq_cont.20879:
	b	beq_cont.20877				# 1561
beq_else.20876:
	cmpwi	cr7, r2, 0				# 1562
	bne	cr7, beq_else.20880				# 1562
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 1562
	b	beq_cont.20881				# 1562
beq_else.20880:
	addis	r31, 0, ha16(Td267.5756)
	ori	r31, r31, lo16(Td267.5756)
	lfs	f0, 0(r31)				# 1562
beq_cont.20881:
beq_cont.20877:
	lwz	r2, -40(r3)				# 1560
	stfs	f0, 4(r2)				# 1560
	b	beq_cont.20871				# 1547
beq_else.20870:
	cmpwi	cr7, r5, 2				# 1565
	bne	cr7, beq_else.20882				# 1565
	lwz	r5, -44(r3)				# 1568
	lfs	f0, 4(r5)				# 1568
	addis	r31, 0, ha16(l.16881)
	ori	r31, r31, lo16(l.16881)
	lfs	f1, 0(r31)				# 1568
	fmul	f0, f0, f1				# 1568
	mfspr	r31, 8				# 1568
	stw	r31, -196(r3)				# 1568
	addi	r3, r3, -200				# 1568
	bl	min_caml_sin				# 1568
	addi	r3, r3, 200				# 1568
	lwz	r31, -196(r3)				# 1568
	mtspr	8, r31				# 1568
	fmul	f0, f0, f0				# 103
	lfs	f1, -36(r3)				# 1569
	fmul	f2, f1, f0				# 1569
	lwz	r2, -40(r3)				# 1569
	stfs	f2, 0(r2)				# 1569
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 1570
	fsub	f0, f2, f0				# 1570
	fmul	f0, f1, f0				# 1570
	stfs	f0, 4(r2)				# 1570
	b	beq_cont.20883				# 1565
beq_else.20882:
	cmpwi	cr7, r5, 3				# 1572
	bne	cr7, beq_else.20884				# 1572
	lwz	r5, -44(r3)				# 1575
	lfs	f0, 0(r5)				# 1575
	lwz	r7, 20(r2)				# 330
	lfs	f1, 0(r7)				# 335
	fsub	f0, f0, f1				# 1575
	lfs	f1, 8(r5)				# 1576
	lwz	r5, 20(r2)				# 350
	lfs	f2, 8(r5)				# 355
	fsub	f1, f1, f2				# 1576
	fmul	f0, f0, f0				# 103
	fmul	f1, f1, f1				# 103
	fadd	f0, f0, f1				# 1577
	mfspr	r31, 8				# 1577
	stw	r31, -196(r3)				# 1577
	addi	r3, r3, -200				# 1577
	bl	min_caml_sqrt				# 1577
	addi	r3, r3, 200				# 1577
	lwz	r31, -196(r3)				# 1577
	mtspr	8, r31				# 1577
	addis	r31, 0, ha16(l.16877)
	ori	r31, r31, lo16(l.16877)
	lfs	f1, 0(r31)				# 1577
	fdiv	f0, f0, f1				# 1577
	stfs	f0, -196(r3)				# 1578
	mfspr	r31, 8				# 1578
	stw	r31, -200(r3)				# 1578
	addi	r3, r3, -204				# 1578
	bl	min_caml_floor				# 1578
	addi	r3, r3, 204				# 1578
	lwz	r31, -200(r3)				# 1578
	mtspr	8, r31				# 1578
	lfs	f1, -196(r3)				# 1578
	fsub	f0, f1, f0				# 1578
	addis	r31, 0, ha16(l.16865)
	ori	r31, r31, lo16(l.16865)
	lfs	f1, 0(r31)				# 1578
	fmul	f0, f0, f1				# 1578
	mfspr	r31, 8				# 1579
	stw	r31, -200(r3)				# 1579
	addi	r3, r3, -204				# 1579
	bl	min_caml_cos				# 1579
	addi	r3, r3, 204				# 1579
	lwz	r31, -200(r3)				# 1579
	mtspr	8, r31				# 1579
	fmul	f0, f0, f0				# 103
	lfs	f1, -36(r3)				# 1580
	fmul	f2, f0, f1				# 1580
	lwz	r2, -40(r3)				# 1580
	stfs	f2, 4(r2)				# 1580
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 1581
	fsub	f0, f2, f0				# 1581
	fmul	f0, f0, f1				# 1581
	stfs	f0, 8(r2)				# 1581
	b	beq_cont.20885				# 1572
beq_else.20884:
	cmpwi	cr7, r5, 4				# 1583
	bne	cr7, beq_else.20886				# 1583
	lwz	r5, -44(r3)				# 1585
	lfs	f0, 0(r5)				# 1585
	lwz	r7, 20(r2)				# 330
	lfs	f1, 0(r7)				# 335
	fsub	f0, f0, f1				# 1585
	lwz	r7, 16(r2)				# 290
	lfs	f1, 0(r7)				# 295
	stfs	f0, -200(r3)				# 1585
	mfspr	r31, 8				# 1585
	fmr	f0, f1				# 1585
	stw	r31, -204(r3)				# 1585
	addi	r3, r3, -208				# 1585
	bl	min_caml_sqrt				# 1585
	addi	r3, r3, 208				# 1585
	lwz	r31, -204(r3)				# 1585
	mtspr	8, r31				# 1585
	lfs	f1, -200(r3)				# 1585
	fmul	f0, f1, f0				# 1585
	lwz	r2, -44(r3)				# 1586
	lfs	f1, 8(r2)				# 1586
	lwz	r5, -164(r3)				# 350
	lwz	r6, 20(r5)				# 350
	lfs	f2, 8(r6)				# 355
	fsub	f1, f1, f2				# 1586
	lwz	r6, 16(r5)				# 310
	lfs	f2, 8(r6)				# 315
	stfs	f0, -204(r3)				# 1586
	stfs	f1, -208(r3)				# 1586
	mfspr	r31, 8				# 1586
	fmr	f0, f2				# 1586
	stw	r31, -212(r3)				# 1586
	addi	r3, r3, -216				# 1586
	bl	min_caml_sqrt				# 1586
	addi	r3, r3, 216				# 1586
	lwz	r31, -212(r3)				# 1586
	mtspr	8, r31				# 1586
	lfs	f1, -208(r3)				# 1586
	fmul	f0, f1, f0				# 1586
	lfs	f1, -204(r3)				# 103
	fmul	f2, f1, f1				# 103
	fmul	f3, f0, f0				# 103
	fadd	f2, f2, f3				# 1587
	stfs	f2, -212(r3)				# 1589
	stfs	f0, -216(r3)				# 1589
	mfspr	r31, 8				# 1589
	fmr	f0, f1				# 1589
	stw	r31, -220(r3)				# 1589
	addi	r3, r3, -224				# 1589
	bl	min_caml_fabs				# 1589
	addi	r3, r3, 224				# 1589
	lwz	r31, -220(r3)				# 1589
	mtspr	8, r31				# 1589
	addis	r31, 0, ha16(l.16862)
	ori	r31, r31, lo16(l.16862)
	lfs	f1, 0(r31)				# 1589
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20888				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20889				# 109
ble_else.20888:
	addi	r2, 0, 1				# 109
ble_cont.20889:
	stfs	f1, -220(r3)				# 1589
	cmpwi	cr7, r2, 0				# 1589
	bne	cr7, beq_else.20890				# 1589
	lfs	f0, -204(r3)				# 1592
	lfs	f2, -216(r3)				# 1592
	fdiv	f0, f2, f0				# 1592
	mfspr	r31, 8				# 1592
	stw	r31, -224(r3)				# 1592
	addi	r3, r3, -228				# 1592
	bl	min_caml_fabs				# 1592
	addi	r3, r3, 228				# 1592
	lwz	r31, -224(r3)				# 1592
	mtspr	8, r31				# 1592
	mfspr	r31, 8				# 1594
	stw	r31, -224(r3)				# 1594
	addi	r3, r3, -228				# 1594
	bl	min_caml_atan				# 1594
	addi	r3, r3, 228				# 1594
	lwz	r31, -224(r3)				# 1594
	mtspr	8, r31				# 1594
	addis	r31, 0, ha16(l.16864)
	ori	r31, r31, lo16(l.16864)
	lfs	f1, 0(r31)				# 1594
	fmul	f0, f0, f1				# 1594
	addis	r31, 0, ha16(l.16865)
	ori	r31, r31, lo16(l.16865)
	lfs	f1, 0(r31)				# 1594
	fdiv	f0, f0, f1				# 1594
	b	beq_cont.20891				# 1589
beq_else.20890:
	addis	r31, 0, ha16(l.16863)
	ori	r31, r31, lo16(l.16863)
	lfs	f0, 0(r31)				# 1590
beq_cont.20891:
	stfs	f0, -224(r3)				# 1596
	mfspr	r31, 8				# 1596
	stw	r31, -228(r3)				# 1596
	addi	r3, r3, -232				# 1596
	bl	min_caml_floor				# 1596
	addi	r3, r3, 232				# 1596
	lwz	r31, -228(r3)				# 1596
	mtspr	8, r31				# 1596
	lfs	f1, -224(r3)				# 1596
	fsub	f0, f1, f0				# 1596
	lwz	r2, -44(r3)				# 1598
	lfs	f1, 4(r2)				# 1598
	lwz	r2, -164(r3)				# 340
	lwz	r5, 20(r2)				# 340
	lfs	f2, 4(r5)				# 345
	fsub	f1, f1, f2				# 1598
	lwz	r5, 16(r2)				# 300
	lfs	f2, 4(r5)				# 305
	stfs	f0, -228(r3)				# 1598
	stfs	f1, -232(r3)				# 1598
	mfspr	r31, 8				# 1598
	fmr	f0, f2				# 1598
	stw	r31, -236(r3)				# 1598
	addi	r3, r3, -240				# 1598
	bl	min_caml_sqrt				# 1598
	addi	r3, r3, 240				# 1598
	lwz	r31, -236(r3)				# 1598
	mtspr	8, r31				# 1598
	lfs	f1, -232(r3)				# 1598
	fmul	f0, f1, f0				# 1598
	lfs	f1, -212(r3)				# 1600
	stfs	f0, -236(r3)				# 1600
	mfspr	r31, 8				# 1600
	fmr	f0, f1				# 1600
	stw	r31, -240(r3)				# 1600
	addi	r3, r3, -244				# 1600
	bl	min_caml_fabs				# 1600
	addi	r3, r3, 244				# 1600
	lwz	r31, -240(r3)				# 1600
	mtspr	8, r31				# 1600
	lfs	f1, -220(r3)				# 109
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.20892				# 109
	addi	r2, 0, 0				# 109
	b	ble_cont.20893				# 109
ble_else.20892:
	addi	r2, 0, 1				# 109
ble_cont.20893:
	cmpwi	cr7, r2, 0				# 1600
	bne	cr7, beq_else.20894				# 1600
	lfs	f0, -212(r3)				# 1603
	lfs	f1, -236(r3)				# 1603
	fdiv	f0, f1, f0				# 1603
	mfspr	r31, 8				# 1603
	stw	r31, -240(r3)				# 1603
	addi	r3, r3, -244				# 1603
	bl	min_caml_fabs				# 1603
	addi	r3, r3, 244				# 1603
	lwz	r31, -240(r3)				# 1603
	mtspr	8, r31				# 1603
	mfspr	r31, 8				# 1604
	stw	r31, -240(r3)				# 1604
	addi	r3, r3, -244				# 1604
	bl	min_caml_atan				# 1604
	addi	r3, r3, 244				# 1604
	lwz	r31, -240(r3)				# 1604
	mtspr	8, r31				# 1604
	addis	r31, 0, ha16(l.16864)
	ori	r31, r31, lo16(l.16864)
	lfs	f1, 0(r31)				# 1604
	fmul	f0, f0, f1				# 1604
	addis	r31, 0, ha16(l.16865)
	ori	r31, r31, lo16(l.16865)
	lfs	f1, 0(r31)				# 1604
	fdiv	f0, f0, f1				# 1604
	b	beq_cont.20895				# 1600
beq_else.20894:
	addis	r31, 0, ha16(l.16863)
	ori	r31, r31, lo16(l.16863)
	lfs	f0, 0(r31)				# 1601
beq_cont.20895:
	stfs	f0, -240(r3)				# 1606
	mfspr	r31, 8				# 1606
	stw	r31, -244(r3)				# 1606
	addi	r3, r3, -248				# 1606
	bl	min_caml_floor				# 1606
	addi	r3, r3, 248				# 1606
	lwz	r31, -244(r3)				# 1606
	mtspr	8, r31				# 1606
	lfs	f1, -240(r3)				# 1606
	fsub	f0, f1, f0				# 1606
	addis	r31, 0, ha16(l.16869)
	ori	r31, r31, lo16(l.16869)
	lfs	f1, 0(r31)				# 1607
	addis	r31, 0, ha16(l.16870)
	ori	r31, r31, lo16(l.16870)
	lfs	f2, 0(r31)				# 1607
	lfs	f3, -228(r3)				# 1607
	fsub	f3, f2, f3				# 1607
	fmul	f3, f3, f3				# 103
	fsub	f1, f1, f3				# 1607
	fsub	f0, f2, f0				# 1607
	fmul	f0, f0, f0				# 103
	fsub	f0, f1, f0				# 1607
	lfs	f1, -52(r3)				# 115
	fcmpu	cr7, f1, f0				# 115
	bgt	cr7, ble_else.20896				# 115
	addi	r2, 0, 0				# 115
	b	ble_cont.20897				# 115
ble_else.20896:
	addi	r2, 0, 1				# 115
ble_cont.20897:
	cmpwi	cr7, r2, 0				# 1608
	bne	cr7, beq_else.20898				# 1608
	b	beq_cont.20899				# 1608
beq_else.20898:
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 1608
beq_cont.20899:
	lfs	f2, -36(r3)				# 1609
	fmul	f0, f2, f0				# 1609
	addis	r31, 0, ha16(l.16871)
	ori	r31, r31, lo16(l.16871)
	lfs	f2, 0(r31)				# 1609
	fdiv	f0, f0, f2				# 1609
	lwz	r2, -40(r3)				# 1609
	stfs	f0, 8(r2)				# 1609
	b	beq_cont.20887				# 1583
beq_else.20886:
beq_cont.20887:
beq_cont.20885:
beq_cont.20883:
beq_cont.20871:
	lwz	r2, -32(r3)				# 1760
	lwz	r5, 0(r2)				# 1760
	lwz	r2, -28(r3)				# 1760
	mfspr	r31, 8				# 1760
	stw	r31, -244(r3)				# 1760
	addi	r3, r3, -248				# 1760
	bl	shadow_check_one_or_matrix.2765				# 1760
	addi	r3, r3, 248				# 1760
	lwz	r31, -244(r3)				# 1760
	mtspr	8, r31				# 1760
	cmpwi	cr7, r2, 0				# 1760
	bne	cr7, beq_else.20900				# 1760
	lwz	r2, -48(r3)				# 195
	lfs	f0, 0(r2)				# 195
	lwz	r5, -24(r3)				# 195
	lfs	f1, 0(r5)				# 195
	fmul	f0, f0, f1				# 195
	lfs	f1, 4(r2)				# 195
	lfs	f2, 4(r5)				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	lfs	f1, 8(r2)				# 195
	lfs	f2, 8(r5)				# 195
	fmul	f1, f1, f2				# 195
	fadd	f0, f0, f1				# 195
	fneg	f0, f0				# 107
	lfs	f1, -52(r3)				# 113
	fcmpu	cr7, f0, f1				# 113
	bgt	cr7, ble_else.20902				# 113
	addi	r2, 0, 0				# 113
	b	ble_cont.20903				# 113
ble_else.20902:
	addi	r2, 0, 1				# 113
ble_cont.20903:
	cmpwi	cr7, r2, 0				# 1762
	bne	cr7, beq_else.20904				# 1762
	addis	r31, 0, ha16(Td252.5768)
	ori	r31, r31, lo16(Td252.5768)
	lfs	f0, 0(r31)				# 1762
	b	beq_cont.20905				# 1762
beq_else.20904:
beq_cont.20905:
	lfs	f1, -156(r3)				# 1763
	fmul	f0, f1, f0				# 1763
	lwz	r2, -164(r3)				# 360
	lwz	r2, 28(r2)				# 360
	lfs	f1, 0(r2)				# 365
	fmul	f0, f0, f1				# 1763
	lwz	r2, -16(r3)				# 205
	lfs	f1, 0(r2)				# 205
	lwz	r5, -40(r3)				# 205
	lfs	f2, 0(r5)				# 205
	fmul	f2, f0, f2				# 205
	fadd	f1, f1, f2				# 205
	stfs	f1, 0(r2)				# 205
	lfs	f1, 4(r2)				# 206
	lfs	f2, 4(r5)				# 206
	fmul	f2, f0, f2				# 206
	fadd	f1, f1, f2				# 206
	stfs	f1, 4(r2)				# 206
	lfs	f1, 8(r2)				# 207
	lfs	f2, 8(r5)				# 207
	fmul	f0, f0, f2				# 207
	fadd	f0, f1, f0				# 207
	stfs	f0, 8(r2)				# 207
	b	beq_cont.20901				# 1760
beq_else.20900:
beq_cont.20901:
beq_cont.20849:
beq_cont.20777:
	lwz	r2, -12(r3)				# 1779
	addi	r7, r2, -2				# 1779
	lwz	r2, -8(r3)				# 1779
	lwz	r5, -4(r3)				# 1779
	lwz	r6, 0(r3)				# 1779
	b	iter_trace_diffuse_rays.2826				# 1779
bge_else.20773:
	blr
do_without_neighbors.2848:
	addis	r6, 0, ha16(startp_fast.2455)
	ori	r6, r6, lo16(startp_fast.2455)				# 1855
	lwz	r6, 0(r6)				# 1855
	addis	r7, 0, ha16(rgb.2450)
	ori	r7, r7, lo16(rgb.2450)				# 1855
	lwz	r7, 0(r7)				# 1855
	addis	r8, 0, ha16(n_objects.2434)
	ori	r8, r8, lo16(n_objects.2434)				# 1855
	lwz	r8, 0(r8)				# 1855
	addis	r9, 0, ha16(dirvecs.2460)
	ori	r9, r9, lo16(dirvecs.2460)				# 1855
	lwz	r9, 0(r9)				# 1855
	addis	r10, 0, ha16(diffuse_ray.2449)
	ori	r10, r10, lo16(diffuse_ray.2449)				# 1855
	lwz	r10, 0(r10)				# 1855
	cmpwi	cr7, r5, 4				# 1856
	bgt	cr7, ble_else.20907				# 1856
	lwz	r11, 8(r2)				# 468
	slwi	r12, r5, 2				# 1859
	lwzx	r11, r11, r12				# 1859
	cmpwi	cr7, r11, 0				# 1859
	blt	cr7, bge_else.20908				# 1859
	lwz	r11, 12(r2)				# 475
	slwi	r12, r5, 2				# 1861
	lwzx	r11, r11, r12				# 1861
	stw	r2, 0(r3)				# 1861
	stw	r5, -4(r3)				# 1861
	cmpwi	cr7, r11, 0				# 1861
	bne	cr7, beq_else.20909				# 1861
	b	beq_cont.20910				# 1861
beq_else.20909:
	lwz	r11, 20(r2)				# 489
	lwz	r12, 28(r2)				# 512
	lwz	r13, 4(r2)				# 460
	lwz	r14, 16(r2)				# 482
	slwi	r15, r5, 2				# 1824
	lwzx	r11, r11, r15				# 1824
	lfs	f0, 0(r11)				# 166
	stfs	f0, 0(r10)				# 166
	lfs	f0, 4(r11)				# 167
	stfs	f0, 4(r10)				# 167
	lfs	f0, 8(r11)				# 168
	stfs	f0, 8(r10)				# 168
	lwz	r11, 24(r2)				# 498
	lwz	r11, 0(r11)				# 500
	slwi	r15, r5, 2				# 1827
	lwzx	r12, r12, r15				# 1827
	slwi	r15, r5, 2				# 1828
	lwzx	r13, r13, r15				# 1828
	stw	r10, -8(r3)				# 1794
	stw	r7, -12(r3)				# 1794
	stw	r14, -16(r3)				# 1794
	stw	r12, -20(r3)				# 1794
	stw	r8, -24(r3)				# 1794
	stw	r6, -28(r3)				# 1794
	stw	r13, -32(r3)				# 1794
	stw	r9, -36(r3)				# 1794
	stw	r11, -40(r3)				# 1794
	cmpwi	cr7, r11, 0				# 1794
	bne	cr7, beq_else.20911				# 1794
	b	beq_cont.20912				# 1794
beq_else.20911:
	lwz	r15, 0(r9)				# 1795
	lfs	f0, 0(r13)				# 166
	stfs	f0, 0(r6)				# 166
	lfs	f0, 4(r13)				# 167
	stfs	f0, 4(r6)				# 167
	lfs	f0, 8(r13)				# 168
	stfs	f0, 8(r6)				# 168
	lwz	r16, 0(r8)				# 1161
	addi	r16, r16, -1				# 1161
	stw	r15, -44(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r16				# 1161
	mr	r2, r13				# 1161
	stw	r31, -48(r3)				# 1161
	addi	r3, r3, -52				# 1161
	bl	setup_startp_constants.2728				# 1161
	addi	r3, r3, 52				# 1161
	lwz	r31, -48(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118				# 1788
	lwz	r2, -44(r3)				# 1788
	lwz	r5, -20(r3)				# 1788
	lwz	r6, -32(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, -48(r3)				# 1788
	addi	r3, r3, -52				# 1788
	bl	iter_trace_diffuse_rays.2826				# 1788
	addi	r3, r3, 52				# 1788
	lwz	r31, -48(r3)				# 1788
	mtspr	8, r31				# 1788
beq_cont.20912:
	lwz	r2, -40(r3)				# 1798
	cmpwi	cr7, r2, 1				# 1798
	bne	cr7, beq_else.20913				# 1798
	b	beq_cont.20914				# 1798
beq_else.20913:
	lwz	r5, -36(r3)				# 1799
	lwz	r6, 4(r5)				# 1799
	lwz	r7, -32(r3)				# 166
	lfs	f0, 0(r7)				# 166
	lwz	r8, -28(r3)				# 166
	stfs	f0, 0(r8)				# 166
	lfs	f0, 4(r7)				# 167
	stfs	f0, 4(r8)				# 167
	lfs	f0, 8(r7)				# 168
	stfs	f0, 8(r8)				# 168
	lwz	r9, -24(r3)				# 1161
	lwz	r10, 0(r9)				# 1161
	addi	r10, r10, -1				# 1161
	stw	r6, -48(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r10				# 1161
	mr	r2, r7				# 1161
	stw	r31, -52(r3)				# 1161
	addi	r3, r3, -56				# 1161
	bl	setup_startp_constants.2728				# 1161
	addi	r3, r3, 56				# 1161
	lwz	r31, -52(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118				# 1788
	lwz	r2, -48(r3)				# 1788
	lwz	r5, -20(r3)				# 1788
	lwz	r6, -32(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, -52(r3)				# 1788
	addi	r3, r3, -56				# 1788
	bl	iter_trace_diffuse_rays.2826				# 1788
	addi	r3, r3, 56				# 1788
	lwz	r31, -52(r3)				# 1788
	mtspr	8, r31				# 1788
beq_cont.20914:
	lwz	r2, -40(r3)				# 1802
	cmpwi	cr7, r2, 2				# 1802
	bne	cr7, beq_else.20915				# 1802
	b	beq_cont.20916				# 1802
beq_else.20915:
	lwz	r5, -36(r3)				# 1803
	lwz	r6, 8(r5)				# 1803
	lwz	r7, -32(r3)				# 166
	lfs	f0, 0(r7)				# 166
	lwz	r8, -28(r3)				# 166
	stfs	f0, 0(r8)				# 166
	lfs	f0, 4(r7)				# 167
	stfs	f0, 4(r8)				# 167
	lfs	f0, 8(r7)				# 168
	stfs	f0, 8(r8)				# 168
	lwz	r9, -24(r3)				# 1161
	lwz	r10, 0(r9)				# 1161
	addi	r10, r10, -1				# 1161
	stw	r6, -52(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r10				# 1161
	mr	r2, r7				# 1161
	stw	r31, -56(r3)				# 1161
	addi	r3, r3, -60				# 1161
	bl	setup_startp_constants.2728				# 1161
	addi	r3, r3, 60				# 1161
	lwz	r31, -56(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118				# 1788
	lwz	r2, -52(r3)				# 1788
	lwz	r5, -20(r3)				# 1788
	lwz	r6, -32(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, -56(r3)				# 1788
	addi	r3, r3, -60				# 1788
	bl	iter_trace_diffuse_rays.2826				# 1788
	addi	r3, r3, 60				# 1788
	lwz	r31, -56(r3)				# 1788
	mtspr	8, r31				# 1788
beq_cont.20916:
	lwz	r2, -40(r3)				# 1806
	cmpwi	cr7, r2, 3				# 1806
	bne	cr7, beq_else.20917				# 1806
	b	beq_cont.20918				# 1806
beq_else.20917:
	lwz	r5, -36(r3)				# 1807
	lwz	r6, 12(r5)				# 1807
	lwz	r7, -32(r3)				# 166
	lfs	f0, 0(r7)				# 166
	lwz	r8, -28(r3)				# 166
	stfs	f0, 0(r8)				# 166
	lfs	f0, 4(r7)				# 167
	stfs	f0, 4(r8)				# 167
	lfs	f0, 8(r7)				# 168
	stfs	f0, 8(r8)				# 168
	lwz	r9, -24(r3)				# 1161
	lwz	r10, 0(r9)				# 1161
	addi	r10, r10, -1				# 1161
	stw	r6, -56(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r10				# 1161
	mr	r2, r7				# 1161
	stw	r31, -60(r3)				# 1161
	addi	r3, r3, -64				# 1161
	bl	setup_startp_constants.2728				# 1161
	addi	r3, r3, 64				# 1161
	lwz	r31, -60(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118				# 1788
	lwz	r2, -56(r3)				# 1788
	lwz	r5, -20(r3)				# 1788
	lwz	r6, -32(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, -60(r3)				# 1788
	addi	r3, r3, -64				# 1788
	bl	iter_trace_diffuse_rays.2826				# 1788
	addi	r3, r3, 64				# 1788
	lwz	r31, -60(r3)				# 1788
	mtspr	8, r31				# 1788
beq_cont.20918:
	lwz	r2, -40(r3)				# 1810
	cmpwi	cr7, r2, 4				# 1810
	bne	cr7, beq_else.20919				# 1810
	b	beq_cont.20920				# 1810
beq_else.20919:
	lwz	r2, -36(r3)				# 1811
	lwz	r2, 16(r2)				# 1811
	lwz	r5, -32(r3)				# 166
	lfs	f0, 0(r5)				# 166
	lwz	r6, -28(r3)				# 166
	stfs	f0, 0(r6)				# 166
	lfs	f0, 4(r5)				# 167
	stfs	f0, 4(r6)				# 167
	lfs	f0, 8(r5)				# 168
	stfs	f0, 8(r6)				# 168
	lwz	r6, -24(r3)				# 1161
	lwz	r6, 0(r6)				# 1161
	addi	r6, r6, -1				# 1161
	stw	r2, -60(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r2, r5				# 1161
	mr	r5, r6				# 1161
	stw	r31, -64(r3)				# 1161
	addi	r3, r3, -68				# 1161
	bl	setup_startp_constants.2728				# 1161
	addi	r3, r3, 68				# 1161
	lwz	r31, -64(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118				# 1788
	lwz	r2, -60(r3)				# 1788
	lwz	r5, -20(r3)				# 1788
	lwz	r6, -32(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, -64(r3)				# 1788
	addi	r3, r3, -68				# 1788
	bl	iter_trace_diffuse_rays.2826				# 1788
	addi	r3, r3, 68				# 1788
	lwz	r31, -64(r3)				# 1788
	mtspr	8, r31				# 1788
beq_cont.20920:
	lwz	r2, -4(r3)				# 1829
	slwi	r5, r2, 2				# 1829
	lwz	r6, -16(r3)				# 1829
	lwzx	r5, r6, r5				# 1829
	lwz	r6, -12(r3)				# 233
	lfs	f0, 0(r6)				# 233
	lfs	f1, 0(r5)				# 233
	lwz	r7, -8(r3)				# 233
	lfs	f2, 0(r7)				# 233
	fmul	f1, f1, f2				# 233
	fadd	f0, f0, f1				# 233
	stfs	f0, 0(r6)				# 233
	lfs	f0, 4(r6)				# 234
	lfs	f1, 4(r5)				# 234
	lfs	f2, 4(r7)				# 234
	fmul	f1, f1, f2				# 234
	fadd	f0, f0, f1				# 234
	stfs	f0, 4(r6)				# 234
	lfs	f0, 8(r6)				# 235
	lfs	f1, 8(r5)				# 235
	lfs	f2, 8(r7)				# 235
	fmul	f1, f1, f2				# 235
	fadd	f0, f0, f1				# 235
	stfs	f0, 8(r6)				# 235
beq_cont.20910:
	lwz	r2, -4(r3)				# 1864
	addi	r5, r2, 1				# 1864
	lwz	r2, 0(r3)				# 1864
	b	do_without_neighbors.2848				# 1864
bge_else.20908:
	blr
ble_else.20907:
	blr
try_exploit_neighbors.2864:
	addis	r10, 0, ha16(rgb.2450)
	ori	r10, r10, lo16(rgb.2450)				# 1904
	lwz	r10, 0(r10)				# 1904
	addis	r11, 0, ha16(diffuse_ray.2449)
	ori	r11, r11, lo16(diffuse_ray.2449)				# 1904
	lwz	r11, 0(r11)				# 1904
	slwi	r12, r2, 2				# 1905
	lwzx	r12, r7, r12				# 1905
	cmpwi	cr7, r9, 4				# 1906
	bgt	cr7, ble_else.20923				# 1906
	lwz	r13, 8(r12)				# 468
	slwi	r14, r9, 2				# 1884
	lwzx	r13, r13, r14				# 1884
	cmpwi	cr7, r13, 0				# 1909
	blt	cr7, bge_else.20924				# 1909
	slwi	r13, r2, 2				# 1889
	lwzx	r13, r7, r13				# 1889
	lwz	r13, 8(r13)				# 468
	slwi	r14, r9, 2				# 1884
	lwzx	r13, r13, r14				# 1884
	slwi	r14, r2, 2				# 1891
	lwzx	r14, r6, r14				# 1891
	lwz	r14, 8(r14)				# 468
	slwi	r15, r9, 2				# 1884
	lwzx	r14, r14, r15				# 1884
	cmpw	cr7, r14, r13				# 1891
	bne	cr7, beq_else.20925				# 1891
	slwi	r14, r2, 2				# 1892
	lwzx	r14, r8, r14				# 1892
	lwz	r14, 8(r14)				# 468
	slwi	r15, r9, 2				# 1884
	lwzx	r14, r14, r15				# 1884
	cmpw	cr7, r14, r13				# 1892
	bne	cr7, beq_else.20927				# 1892
	addi	r14, r2, -1				# 1893
	slwi	r14, r14, 2				# 1893
	lwzx	r14, r7, r14				# 1893
	lwz	r14, 8(r14)				# 468
	slwi	r15, r9, 2				# 1884
	lwzx	r14, r14, r15				# 1884
	cmpw	cr7, r14, r13				# 1893
	bne	cr7, beq_else.20929				# 1893
	addi	r14, r2, 1				# 1894
	slwi	r14, r14, 2				# 1894
	lwzx	r14, r7, r14				# 1894
	lwz	r14, 8(r14)				# 468
	slwi	r15, r9, 2				# 1884
	lwzx	r14, r14, r15				# 1884
	cmpw	cr7, r14, r13				# 1894
	bne	cr7, beq_else.20931				# 1894
	addi	r13, 0, 1				# 1895
	b	beq_cont.20932				# 1894
beq_else.20931:
	addi	r13, 0, 0				# 1896
beq_cont.20932:
	b	beq_cont.20930				# 1893
beq_else.20929:
	addi	r13, 0, 0				# 1897
beq_cont.20930:
	b	beq_cont.20928				# 1892
beq_else.20927:
	addi	r13, 0, 0				# 1898
beq_cont.20928:
	b	beq_cont.20926				# 1891
beq_else.20925:
	addi	r13, 0, 0				# 1899
beq_cont.20926:
	cmpwi	cr7, r13, 0				# 1911
	bne	cr7, beq_else.20933				# 1911
	slwi	r2, r2, 2				# 1923
	lwzx	r2, r7, r2				# 1923
	mr	r5, r9				# 1923
	b	do_without_neighbors.2848				# 1923
beq_else.20933:
	lwz	r12, 12(r12)				# 475
	slwi	r13, r9, 2				# 1915
	lwzx	r12, r12, r13				# 1915
	cmpwi	cr7, r12, 0				# 1915
	bne	cr7, beq_else.20934				# 1915
	b	beq_cont.20935				# 1915
beq_else.20934:
	slwi	r12, r2, 2				# 1837
	lwzx	r12, r6, r12				# 1837
	lwz	r12, 20(r12)				# 489
	addi	r13, r2, -1				# 1838
	slwi	r13, r13, 2				# 1838
	lwzx	r13, r7, r13				# 1838
	lwz	r13, 20(r13)				# 489
	slwi	r14, r2, 2				# 1839
	lwzx	r14, r7, r14				# 1839
	lwz	r14, 20(r14)				# 489
	addi	r15, r2, 1				# 1840
	slwi	r15, r15, 2				# 1840
	lwzx	r15, r7, r15				# 1840
	lwz	r15, 20(r15)				# 489
	slwi	r16, r2, 2				# 1841
	lwzx	r16, r8, r16				# 1841
	lwz	r16, 20(r16)				# 489
	slwi	r17, r9, 2				# 1843
	lwzx	r12, r12, r17				# 1843
	lfs	f0, 0(r12)				# 166
	stfs	f0, 0(r11)				# 166
	lfs	f0, 4(r12)				# 167
	stfs	f0, 4(r11)				# 167
	lfs	f0, 8(r12)				# 168
	stfs	f0, 8(r11)				# 168
	slwi	r12, r9, 2				# 1844
	lwzx	r12, r13, r12				# 1844
	lfs	f0, 0(r11)				# 212
	lfs	f1, 0(r12)				# 212
	fadd	f0, f0, f1				# 212
	stfs	f0, 0(r11)				# 212
	lfs	f0, 4(r11)				# 213
	lfs	f1, 4(r12)				# 213
	fadd	f0, f0, f1				# 213
	stfs	f0, 4(r11)				# 213
	lfs	f0, 8(r11)				# 214
	lfs	f1, 8(r12)				# 214
	fadd	f0, f0, f1				# 214
	stfs	f0, 8(r11)				# 214
	slwi	r12, r9, 2				# 1845
	lwzx	r12, r14, r12				# 1845
	lfs	f0, 0(r11)				# 212
	lfs	f1, 0(r12)				# 212
	fadd	f0, f0, f1				# 212
	stfs	f0, 0(r11)				# 212
	lfs	f0, 4(r11)				# 213
	lfs	f1, 4(r12)				# 213
	fadd	f0, f0, f1				# 213
	stfs	f0, 4(r11)				# 213
	lfs	f0, 8(r11)				# 214
	lfs	f1, 8(r12)				# 214
	fadd	f0, f0, f1				# 214
	stfs	f0, 8(r11)				# 214
	slwi	r12, r9, 2				# 1846
	lwzx	r12, r15, r12				# 1846
	lfs	f0, 0(r11)				# 212
	lfs	f1, 0(r12)				# 212
	fadd	f0, f0, f1				# 212
	stfs	f0, 0(r11)				# 212
	lfs	f0, 4(r11)				# 213
	lfs	f1, 4(r12)				# 213
	fadd	f0, f0, f1				# 213
	stfs	f0, 4(r11)				# 213
	lfs	f0, 8(r11)				# 214
	lfs	f1, 8(r12)				# 214
	fadd	f0, f0, f1				# 214
	stfs	f0, 8(r11)				# 214
	slwi	r12, r9, 2				# 1847
	lwzx	r12, r16, r12				# 1847
	lfs	f0, 0(r11)				# 212
	lfs	f1, 0(r12)				# 212
	fadd	f0, f0, f1				# 212
	stfs	f0, 0(r11)				# 212
	lfs	f0, 4(r11)				# 213
	lfs	f1, 4(r12)				# 213
	fadd	f0, f0, f1				# 213
	stfs	f0, 4(r11)				# 213
	lfs	f0, 8(r11)				# 214
	lfs	f1, 8(r12)				# 214
	fadd	f0, f0, f1				# 214
	stfs	f0, 8(r11)				# 214
	slwi	r12, r2, 2				# 1849
	lwzx	r12, r7, r12				# 1849
	lwz	r12, 16(r12)				# 482
	slwi	r13, r9, 2				# 1850
	lwzx	r12, r12, r13				# 1850
	lfs	f0, 0(r10)				# 233
	lfs	f1, 0(r12)				# 233
	lfs	f2, 0(r11)				# 233
	fmul	f1, f1, f2				# 233
	fadd	f0, f0, f1				# 233
	stfs	f0, 0(r10)				# 233
	lfs	f0, 4(r10)				# 234
	lfs	f1, 4(r12)				# 234
	lfs	f2, 4(r11)				# 234
	fmul	f1, f1, f2				# 234
	fadd	f0, f0, f1				# 234
	stfs	f0, 4(r10)				# 234
	lfs	f0, 8(r10)				# 235
	lfs	f1, 8(r12)				# 235
	lfs	f2, 8(r11)				# 235
	fmul	f1, f1, f2				# 235
	fadd	f0, f0, f1				# 235
	stfs	f0, 8(r10)				# 235
beq_cont.20935:
	addi	r9, r9, 1				# 1920
	b	try_exploit_neighbors.2864				# 1920
bge_else.20924:
	blr
ble_else.20923:
	blr
pretrace_diffuse_rays.2877:
	addis	r6, 0, ha16(startp_fast.2455)
	ori	r6, r6, lo16(startp_fast.2455)				# 1963
	lwz	r6, 0(r6)				# 1963
	addis	r7, 0, ha16(n_objects.2434)
	ori	r7, r7, lo16(n_objects.2434)				# 1963
	lwz	r7, 0(r7)				# 1963
	addis	r8, 0, ha16(dirvecs.2460)
	ori	r8, r8, lo16(dirvecs.2460)				# 1963
	lwz	r8, 0(r8)				# 1963
	addis	r9, 0, ha16(diffuse_ray.2449)
	ori	r9, r9, lo16(diffuse_ray.2449)				# 1963
	lwz	r9, 0(r9)				# 1963
	addis	r10, 0, ha16(Td252.5768)
	ori	r10, r10, lo16(Td252.5768)				# 1963
	lfs	f0, 0(r10)				# 1963
	cmpwi	cr7, r5, 4				# 1964
	bgt	cr7, ble_else.20938				# 1964
	lwz	r10, 8(r2)				# 468
	slwi	r11, r5, 2				# 1884
	lwzx	r10, r10, r11				# 1884
	cmpwi	cr7, r10, 0				# 1968
	blt	cr7, bge_else.20939				# 1968
	lwz	r10, 12(r2)				# 475
	slwi	r11, r5, 2				# 1971
	lwzx	r10, r10, r11				# 1971
	stw	r5, 0(r3)				# 1971
	cmpwi	cr7, r10, 0				# 1971
	bne	cr7, beq_else.20940				# 1971
	b	beq_cont.20941				# 1971
beq_else.20940:
	lwz	r10, 24(r2)				# 498
	lwz	r10, 0(r10)				# 500
	stfs	f0, 0(r9)				# 154
	stfs	f0, 4(r9)				# 155
	stfs	f0, 8(r9)				# 156
	lwz	r11, 28(r2)				# 512
	lwz	r12, 4(r2)				# 460
	slwi	r10, r10, 2				# 1979
	lwzx	r8, r8, r10				# 1979
	slwi	r10, r5, 2				# 1980
	lwzx	r10, r11, r10				# 1980
	slwi	r11, r5, 2				# 1981
	lwzx	r11, r12, r11				# 1981
	lfs	f0, 0(r11)				# 166
	stfs	f0, 0(r6)				# 166
	lfs	f0, 4(r11)				# 167
	stfs	f0, 4(r6)				# 167
	lfs	f0, 8(r11)				# 168
	stfs	f0, 8(r6)				# 168
	lwz	r6, 0(r7)				# 1161
	addi	r6, r6, -1				# 1161
	stw	r9, -4(r3)				# 1161
	stw	r2, -8(r3)				# 1161
	stw	r11, -12(r3)				# 1161
	stw	r10, -16(r3)				# 1161
	stw	r8, -20(r3)				# 1161
	mfspr	r31, 8				# 1161
	mr	r5, r6				# 1161
	mr	r2, r11				# 1161
	stw	r31, -24(r3)				# 1161
	addi	r3, r3, -28				# 1161
	bl	setup_startp_constants.2728				# 1161
	addi	r3, r3, 28				# 1161
	lwz	r31, -24(r3)				# 1161
	mtspr	8, r31				# 1161
	addi	r7, 0, 118				# 1788
	lwz	r2, -20(r3)				# 1788
	lwz	r5, -16(r3)				# 1788
	lwz	r6, -12(r3)				# 1788
	mfspr	r31, 8				# 1788
	stw	r31, -24(r3)				# 1788
	addi	r3, r3, -28				# 1788
	bl	iter_trace_diffuse_rays.2826				# 1788
	addi	r3, r3, 28				# 1788
	lwz	r31, -24(r3)				# 1788
	mtspr	8, r31				# 1788
	lwz	r2, -8(r3)				# 489
	lwz	r5, 20(r2)				# 489
	lwz	r6, 0(r3)				# 1983
	slwi	r7, r6, 2				# 1983
	lwzx	r5, r5, r7				# 1983
	lwz	r7, -4(r3)				# 166
	lfs	f0, 0(r7)				# 166
	stfs	f0, 0(r5)				# 166
	lfs	f0, 4(r7)				# 167
	stfs	f0, 4(r5)				# 167
	lfs	f0, 8(r7)				# 168
	stfs	f0, 8(r5)				# 168
beq_cont.20941:
	lwz	r5, 0(r3)				# 1985
	addi	r5, r5, 1				# 1985
	b	pretrace_diffuse_rays.2877				# 1985
bge_else.20939:
	blr
ble_else.20938:
	blr
pretrace_pixels.2880:
	addis	r7, 0, ha16(viewpoint.2437)
	ori	r7, r7, lo16(viewpoint.2437)				# 1992
	lwz	r7, 0(r7)				# 1992
	addis	r8, 0, ha16(startp.2454)
	ori	r8, r8, lo16(startp.2454)				# 1992
	lwz	r8, 0(r8)				# 1992
	addis	r9, 0, ha16(screenx_dir.2456)
	ori	r9, r9, lo16(screenx_dir.2456)				# 1992
	lwz	r9, 0(r9)				# 1992
	addis	r10, 0, ha16(scan_pitch.2453)
	ori	r10, r10, lo16(scan_pitch.2453)				# 1992
	lwz	r10, 0(r10)				# 1992
	addis	r11, 0, ha16(rgb.2450)
	ori	r11, r11, lo16(rgb.2450)				# 1992
	lwz	r11, 0(r11)				# 1992
	addis	r12, 0, ha16(ptrace_dirvec.2459)
	ori	r12, r12, lo16(ptrace_dirvec.2459)				# 1992
	lwz	r12, 0(r12)				# 1992
	addis	r13, 0, ha16(image_center.2452)
	ori	r13, r13, lo16(image_center.2452)				# 1992
	lwz	r13, 0(r13)				# 1992
	addi	r14, 0, 0				# 1992
	addis	r15, 0, ha16(Td252.5768)
	ori	r15, r15, lo16(Td252.5768)				# 1992
	lfs	f3, 0(r15)				# 1992
	cmpwi	cr7, r5, 0				# 1993
	blt	cr7, bge_else.20944				# 1993
	lfs	f4, 0(r10)				# 1995
	lwz	r10, 0(r13)				# 1995
	sub	r10, r5, r10				# 1995
	stw	r6, 0(r3)				# 1995
	stw	r14, -4(r3)				# 1995
	stw	r2, -8(r3)				# 1995
	stw	r5, -12(r3)				# 1995
	stw	r8, -16(r3)				# 1995
	stw	r7, -20(r3)				# 1995
	stw	r11, -24(r3)				# 1995
	stfs	f3, -28(r3)				# 1995
	stfs	f2, -32(r3)				# 1995
	stfs	f1, -36(r3)				# 1995
	stw	r12, -40(r3)				# 1995
	stfs	f0, -44(r3)				# 1995
	stw	r9, -48(r3)				# 1995
	stfs	f4, -52(r3)				# 1995
	mfspr	r31, 8				# 1995
	mr	r2, r10				# 1995
	stw	r31, -56(r3)				# 1995
	addi	r3, r3, -60				# 1995
	bl	min_caml_float_of_int				# 1995
	addi	r3, r3, 60				# 1995
	lwz	r31, -56(r3)				# 1995
	mtspr	8, r31				# 1995
	lfs	f1, -52(r3)				# 1995
	fmul	f0, f1, f0				# 1995
	lwz	r2, -48(r3)				# 1996
	lfs	f1, 0(r2)				# 1996
	fmul	f1, f0, f1				# 1996
	lfs	f2, -44(r3)				# 1996
	fadd	f1, f1, f2				# 1996
	lwz	r5, -40(r3)				# 1996
	stfs	f1, 0(r5)				# 1996
	lfs	f1, 4(r2)				# 1997
	fmul	f1, f0, f1				# 1997
	lfs	f3, -36(r3)				# 1997
	fadd	f1, f1, f3				# 1997
	stfs	f1, 4(r5)				# 1997
	lfs	f1, 8(r2)				# 1998
	fmul	f0, f0, f1				# 1998
	lfs	f1, -32(r3)				# 1998
	fadd	f0, f0, f1				# 1998
	stfs	f0, 8(r5)				# 1998
	lfs	f0, 0(r5)				# 186
	fmul	f0, f0, f0				# 103
	lfs	f4, 4(r5)				# 186
	fmul	f4, f4, f4				# 103
	fadd	f0, f0, f4				# 186
	lfs	f4, 8(r5)				# 186
	fmul	f4, f4, f4				# 103
	fadd	f0, f0, f4				# 186
	mfspr	r31, 8				# 186
	stw	r31, -56(r3)				# 186
	addi	r3, r3, -60				# 186
	bl	min_caml_sqrt				# 186
	addi	r3, r3, 60				# 186
	lwz	r31, -56(r3)				# 186
	mtspr	8, r31				# 186
	lfs	f1, -28(r3)				# 111
	fcmpu	cr7, f0, f1				# 111
	bne	cr7, beq_else.20945				# 111
	addi	r2, 0, 1				# 111
	b	beq_cont.20946				# 111
beq_else.20945:
	addi	r2, 0, 0				# 111
beq_cont.20946:
	cmpwi	cr7, r2, 0				# 187
	bne	cr7, beq_else.20947				# 187
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f2, 0(r31)				# 187
	fdiv	f0, f2, f0				# 187
	b	beq_cont.20948				# 187
beq_else.20947:
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f0, 0(r31)				# 187
beq_cont.20948:
	lwz	r5, -40(r3)				# 188
	lfs	f2, 0(r5)				# 188
	fmul	f2, f2, f0				# 188
	stfs	f2, 0(r5)				# 188
	lfs	f2, 4(r5)				# 189
	fmul	f2, f2, f0				# 189
	stfs	f2, 4(r5)				# 189
	lfs	f2, 8(r5)				# 190
	fmul	f0, f2, f0				# 190
	stfs	f0, 8(r5)				# 190
	lwz	r2, -24(r3)				# 154
	stfs	f1, 0(r2)				# 154
	stfs	f1, 4(r2)				# 155
	stfs	f1, 8(r2)				# 156
	lwz	r6, -20(r3)				# 166
	lfs	f0, 0(r6)				# 166
	lwz	r7, -16(r3)				# 166
	stfs	f0, 0(r7)				# 166
	lfs	f0, 4(r6)				# 167
	stfs	f0, 4(r7)				# 167
	lfs	f0, 8(r6)				# 168
	stfs	f0, 8(r7)				# 168
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f0, 0(r31)				# 2004
	lwz	r6, -12(r3)				# 2004
	slwi	r7, r6, 2				# 2004
	lwz	r8, -8(r3)				# 2004
	lwzx	r7, r8, r7				# 2004
	lwz	r9, -4(r3)				# 2004
	mfspr	r31, 8				# 2004
	mr	r6, r7				# 2004
	mr	r2, r9				# 2004
	stw	r31, -56(r3)				# 2004
	addi	r3, r3, -60				# 2004
	bl	trace_ray.2817				# 2004
	addi	r3, r3, 60				# 2004
	lwz	r31, -56(r3)				# 2004
	mtspr	8, r31				# 2004
	lwz	r2, -12(r3)				# 2005
	slwi	r5, r2, 2				# 2005
	lwz	r6, -8(r3)				# 2005
	lwzx	r5, r6, r5				# 2005
	lwz	r5, 0(r5)				# 453
	lwz	r7, -24(r3)				# 166
	lfs	f0, 0(r7)				# 166
	stfs	f0, 0(r5)				# 166
	lfs	f0, 4(r7)				# 167
	stfs	f0, 4(r5)				# 167
	lfs	f0, 8(r7)				# 168
	stfs	f0, 8(r5)				# 168
	slwi	r5, r2, 2				# 2006
	lwzx	r5, r6, r5				# 2006
	lwz	r5, 24(r5)				# 505
	lwz	r7, 0(r3)				# 507
	stw	r7, 0(r5)				# 507
	slwi	r5, r2, 2				# 2009
	lwzx	r5, r6, r5				# 2009
	lwz	r8, -4(r3)				# 2009
	mfspr	r31, 8				# 2009
	mr	r2, r5				# 2009
	mr	r5, r8				# 2009
	stw	r31, -56(r3)				# 2009
	addi	r3, r3, -60				# 2009
	bl	pretrace_diffuse_rays.2877				# 2009
	addi	r3, r3, 60				# 2009
	lwz	r31, -56(r3)				# 2009
	mtspr	8, r31				# 2009
	lwz	r2, -12(r3)				# 2011
	addi	r5, r2, -1				# 2011
	lwz	r2, 0(r3)				# 137
	addi	r2, r2, 1				# 137
	cmpwi	cr7, r2, 5				# 138
	blt	cr7, bge_else.20949				# 138
	addi	r6, r2, -5				# 138
	b	bge_cont.20950				# 138
bge_else.20949:
	mr	r6, r2				# 138
bge_cont.20950:
	lfs	f0, -44(r3)				# 2011
	lfs	f1, -36(r3)				# 2011
	lfs	f2, -32(r3)				# 2011
	lwz	r2, -8(r3)				# 2011
	b	pretrace_pixels.2880				# 2011
bge_else.20944:
	blr
scan_pixel.2891:
	addis	r9, 0, ha16(rgb.2450)
	ori	r9, r9, lo16(rgb.2450)				# 2031
	lwz	r9, 0(r9)				# 2031
	addis	r10, 0, ha16(image_size.2451)
	ori	r10, r10, lo16(image_size.2451)				# 2031
	lwz	r10, 0(r10)				# 2031
	addi	r11, 0, 0				# 2031
	lwz	r12, 0(r10)				# 2032
	cmpw	cr7, r12, r2				# 2032
	bgt	cr7, ble_else.20952				# 2032
	blr
ble_else.20952:
	slwi	r12, r2, 2				# 2035
	lwzx	r12, r7, r12				# 2035
	lwz	r12, 0(r12)				# 453
	lfs	f0, 0(r12)				# 166
	stfs	f0, 0(r9)				# 166
	lfs	f0, 4(r12)				# 167
	stfs	f0, 4(r9)				# 167
	lfs	f0, 8(r12)				# 168
	stfs	f0, 8(r9)				# 168
	lwz	r12, 4(r10)				# 1871
	addi	r13, r5, 1				# 1871
	cmpw	cr7, r12, r13				# 1871
	bgt	cr7, ble_else.20954				# 1871
	addi	r10, 0, 0				# 1879
	b	ble_cont.20955				# 1871
ble_else.20954:
	cmpwi	cr7, r5, 0				# 1872
	bgt	cr7, ble_else.20956				# 1872
	addi	r10, 0, 0				# 1878
	b	ble_cont.20957				# 1872
ble_else.20956:
	lwz	r10, 0(r10)				# 1873
	addi	r12, r2, 1				# 1873
	cmpw	cr7, r10, r12				# 1873
	bgt	cr7, ble_else.20958				# 1873
	addi	r10, 0, 0				# 1877
	b	ble_cont.20959				# 1873
ble_else.20958:
	cmpwi	cr7, r2, 0				# 1874
	bgt	cr7, ble_else.20960				# 1874
	addi	r10, 0, 0				# 1876
	b	ble_cont.20961				# 1874
ble_else.20960:
	addi	r10, 0, 1				# 1875
ble_cont.20961:
ble_cont.20959:
ble_cont.20957:
ble_cont.20955:
	stw	r8, 0(r3)				# 2038
	stw	r7, -4(r3)				# 2038
	stw	r6, -8(r3)				# 2038
	stw	r5, -12(r3)				# 2038
	stw	r2, -16(r3)				# 2038
	stw	r9, -20(r3)				# 2038
	cmpwi	cr7, r10, 0				# 2038
	bne	cr7, beq_else.20962				# 2038
	slwi	r10, r2, 2				# 2041
	lwzx	r10, r7, r10				# 2041
	mfspr	r31, 8				# 2041
	mr	r5, r11				# 2041
	mr	r2, r10				# 2041
	stw	r31, -24(r3)				# 2041
	addi	r3, r3, -28				# 2041
	bl	do_without_neighbors.2848				# 2041
	addi	r3, r3, 28				# 2041
	lwz	r31, -24(r3)				# 2041
	mtspr	8, r31				# 2041
	b	beq_cont.20963				# 2038
beq_else.20962:
	mfspr	r31, 8				# 2039
	mr	r9, r11				# 2039
	stw	r31, -24(r3)				# 2039
	addi	r3, r3, -28				# 2039
	bl	try_exploit_neighbors.2864				# 2039
	addi	r3, r3, 28				# 2039
	lwz	r31, -24(r3)				# 2039
	mtspr	8, r31				# 2039
beq_cont.20963:
	lwz	r2, -20(r3)				# 1950
	lfs	f0, 0(r2)				# 1950
	mfspr	r31, 8				# 1944
	stw	r31, -24(r3)				# 1944
	addi	r3, r3, -28				# 1944
	bl	min_caml_int_of_float				# 1944
	addi	r3, r3, 28				# 1944
	lwz	r31, -24(r3)				# 1944
	mtspr	8, r31				# 1944
	cmpwi	cr7, r2, 255				# 1945
	bgt	cr7, ble_else.20964				# 1945
	cmpwi	cr7, r2, 0				# 1945
	blt	cr7, bge_else.20966				# 1945
	b	bge_cont.20967				# 1945
bge_else.20966:
	addi	r2, 0, 0				# 1945
bge_cont.20967:
	b	ble_cont.20965				# 1945
ble_else.20964:
	addi	r2, 0, 255				# 1945
ble_cont.20965:
	mfspr	r31, 8				# 1946
	stw	r31, -24(r3)				# 1946
	addi	r3, r3, -28				# 1946
	bl	min_caml_print_int				# 1946
	addi	r3, r3, 28				# 1946
	lwz	r31, -24(r3)				# 1946
	mtspr	8, r31				# 1946
	addi	r2, 0, 32				# 1951
	stw	r2, -24(r3)				# 1951
	mfspr	r31, 8				# 1951
	stw	r31, -28(r3)				# 1951
	addi	r3, r3, -32				# 1951
	bl	min_caml_print_char				# 1951
	addi	r3, r3, 32				# 1951
	lwz	r31, -28(r3)				# 1951
	mtspr	8, r31				# 1951
	lwz	r2, -20(r3)				# 1952
	lfs	f0, 4(r2)				# 1952
	mfspr	r31, 8				# 1944
	stw	r31, -28(r3)				# 1944
	addi	r3, r3, -32				# 1944
	bl	min_caml_int_of_float				# 1944
	addi	r3, r3, 32				# 1944
	lwz	r31, -28(r3)				# 1944
	mtspr	8, r31				# 1944
	cmpwi	cr7, r2, 255				# 1945
	bgt	cr7, ble_else.20968				# 1945
	cmpwi	cr7, r2, 0				# 1945
	blt	cr7, bge_else.20970				# 1945
	b	bge_cont.20971				# 1945
bge_else.20970:
	addi	r2, 0, 0				# 1945
bge_cont.20971:
	b	ble_cont.20969				# 1945
ble_else.20968:
	addi	r2, 0, 255				# 1945
ble_cont.20969:
	mfspr	r31, 8				# 1946
	stw	r31, -28(r3)				# 1946
	addi	r3, r3, -32				# 1946
	bl	min_caml_print_int				# 1946
	addi	r3, r3, 32				# 1946
	lwz	r31, -28(r3)				# 1946
	mtspr	8, r31				# 1946
	lwz	r2, -24(r3)				# 1953
	mfspr	r31, 8				# 1953
	stw	r31, -28(r3)				# 1953
	addi	r3, r3, -32				# 1953
	bl	min_caml_print_char				# 1953
	addi	r3, r3, 32				# 1953
	lwz	r31, -28(r3)				# 1953
	mtspr	8, r31				# 1953
	lwz	r2, -20(r3)				# 1954
	lfs	f0, 8(r2)				# 1954
	mfspr	r31, 8				# 1944
	stw	r31, -28(r3)				# 1944
	addi	r3, r3, -32				# 1944
	bl	min_caml_int_of_float				# 1944
	addi	r3, r3, 32				# 1944
	lwz	r31, -28(r3)				# 1944
	mtspr	8, r31				# 1944
	cmpwi	cr7, r2, 255				# 1945
	bgt	cr7, ble_else.20972				# 1945
	cmpwi	cr7, r2, 0				# 1945
	blt	cr7, bge_else.20974				# 1945
	b	bge_cont.20975				# 1945
bge_else.20974:
	addi	r2, 0, 0				# 1945
bge_cont.20975:
	b	ble_cont.20973				# 1945
ble_else.20972:
	addi	r2, 0, 255				# 1945
ble_cont.20973:
	mfspr	r31, 8				# 1946
	stw	r31, -28(r3)				# 1946
	addi	r3, r3, -32				# 1946
	bl	min_caml_print_int				# 1946
	addi	r3, r3, 32				# 1946
	lwz	r31, -28(r3)				# 1946
	mtspr	8, r31				# 1946
	addi	r2, 0, 10				# 1955
	mfspr	r31, 8				# 1955
	stw	r31, -28(r3)				# 1955
	addi	r3, r3, -32				# 1955
	bl	min_caml_print_char				# 1955
	addi	r3, r3, 32				# 1955
	lwz	r31, -28(r3)				# 1955
	mtspr	8, r31				# 1955
	lwz	r2, -16(r3)				# 2046
	addi	r2, r2, 1				# 2046
	lwz	r5, -12(r3)				# 2046
	lwz	r6, -8(r3)				# 2046
	lwz	r7, -4(r3)				# 2046
	lwz	r8, 0(r3)				# 2046
	b	scan_pixel.2891				# 2046
scan_line.2897:
	addis	r9, 0, ha16(screenz_dir.2458)
	ori	r9, r9, lo16(screenz_dir.2458)				# 2051
	lwz	r9, 0(r9)				# 2051
	addis	r10, 0, ha16(screeny_dir.2457)
	ori	r10, r10, lo16(screeny_dir.2457)				# 2051
	lwz	r10, 0(r10)				# 2051
	addis	r11, 0, ha16(scan_pitch.2453)
	ori	r11, r11, lo16(scan_pitch.2453)				# 2051
	lwz	r11, 0(r11)				# 2051
	addis	r12, 0, ha16(image_size.2451)
	ori	r12, r12, lo16(image_size.2451)				# 2051
	lwz	r12, 0(r12)				# 2051
	addis	r13, 0, ha16(image_center.2452)
	ori	r13, r13, lo16(image_center.2452)				# 2051
	lwz	r13, 0(r13)				# 2051
	addi	r14, 0, 0				# 2051
	lwz	r15, 4(r12)				# 2053
	cmpw	cr7, r15, r2				# 2053
	bgt	cr7, ble_else.20976				# 2053
	blr
ble_else.20976:
	lwz	r15, 4(r12)				# 2055
	addi	r15, r15, -1				# 2055
	stw	r8, 0(r3)				# 2055
	stw	r7, -4(r3)				# 2055
	stw	r6, -8(r3)				# 2055
	stw	r5, -12(r3)				# 2055
	stw	r2, -16(r3)				# 2055
	stw	r14, -20(r3)				# 2055
	cmpw	cr7, r15, r2				# 2055
	bgt	cr7, ble_else.20978				# 2055
	b	ble_cont.20979				# 2055
ble_else.20978:
	addi	r15, r2, 1				# 2056
	lfs	f0, 0(r11)				# 2018
	lwz	r11, 4(r13)				# 2018
	sub	r11, r15, r11				# 2018
	stw	r12, -24(r3)				# 2018
	stw	r9, -28(r3)				# 2018
	stw	r10, -32(r3)				# 2018
	stfs	f0, -36(r3)				# 2018
	mfspr	r31, 8				# 2018
	mr	r2, r11				# 2018
	stw	r31, -40(r3)				# 2018
	addi	r3, r3, -44				# 2018
	bl	min_caml_float_of_int				# 2018
	addi	r3, r3, 44				# 2018
	lwz	r31, -40(r3)				# 2018
	mtspr	8, r31				# 2018
	lfs	f1, -36(r3)				# 2018
	fmul	f0, f1, f0				# 2018
	lwz	r2, -32(r3)				# 2021
	lfs	f1, 0(r2)				# 2021
	fmul	f1, f0, f1				# 2021
	lwz	r5, -28(r3)				# 2021
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
	lwz	r2, -24(r3)				# 2024
	lwz	r2, 0(r2)				# 2024
	addi	r5, r2, -1				# 2024
	lwz	r2, -4(r3)				# 2024
	lwz	r6, 0(r3)				# 2024
	mfspr	r31, 8				# 2024
	fmr	f31, f2				# 2024
	fmr	f2, f0				# 2024
	fmr	f0, f1				# 2024
	fmr	f1, f31				# 2024
	stw	r31, -40(r3)				# 2024
	addi	r3, r3, -44				# 2024
	bl	pretrace_pixels.2880				# 2024
	addi	r3, r3, 44				# 2024
	lwz	r31, -40(r3)				# 2024
	mtspr	8, r31				# 2024
ble_cont.20979:
	lwz	r2, -20(r3)				# 2058
	lwz	r5, -16(r3)				# 2058
	lwz	r6, -12(r3)				# 2058
	lwz	r7, -8(r3)				# 2058
	lwz	r8, -4(r3)				# 2058
	mfspr	r31, 8				# 2058
	stw	r31, -40(r3)				# 2058
	addi	r3, r3, -44				# 2058
	bl	scan_pixel.2891				# 2058
	addi	r3, r3, 44				# 2058
	lwz	r31, -40(r3)				# 2058
	mtspr	8, r31				# 2058
	lwz	r2, -16(r3)				# 2059
	addi	r2, r2, 1				# 2059
	lwz	r5, 0(r3)				# 137
	addi	r5, r5, 2				# 137
	cmpwi	cr7, r5, 5				# 138
	blt	cr7, bge_else.20980				# 138
	addi	r8, r5, -5				# 138
	b	bge_cont.20981				# 138
bge_else.20980:
	mr	r8, r5				# 138
bge_cont.20981:
	lwz	r5, -8(r3)				# 2059
	lwz	r6, -4(r3)				# 2059
	lwz	r7, -12(r3)				# 2059
	b	scan_line.2897				# 2059
init_line_elements.2907:
	addi	r6, 0, 5				# 2092
	addi	r7, 0, 3				# 2092
	addi	r8, 0, 0				# 2092
	addi	r9, 0, 1				# 2092
	addis	r10, 0, ha16(Td252.5768)
	ori	r10, r10, lo16(Td252.5768)				# 2092
	lfs	f0, 0(r10)				# 2092
	cmpwi	cr7, r5, 0				# 2093
	blt	cr7, bge_else.20982				# 2093
	stw	r2, 0(r3)				# 2080
	stw	r5, -4(r3)				# 2080
	stw	r9, -8(r3)				# 2080
	stw	r8, -12(r3)				# 2080
	stw	r6, -16(r3)				# 2080
	stfs	f0, -20(r3)				# 2080
	stw	r7, -24(r3)				# 2080
	mfspr	r31, 8				# 2080
	mr	r2, r7				# 2080
	stw	r31, -28(r3)				# 2080
	addi	r3, r3, -32				# 2080
	bl	min_caml_create_float_array				# 2080
	addi	r3, r3, 32				# 2080
	lwz	r31, -28(r3)				# 2080
	mtspr	8, r31				# 2080
	lfs	f0, -20(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -28(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -32(r3)				# 2068
	addi	r3, r3, -36				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 36				# 2068
	lwz	r31, -32(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -16(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -32(r3)				# 2069
	addi	r3, r3, -36				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 36				# 2069
	lwz	r31, -32(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -20(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -32(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -36(r3)				# 2070
	addi	r3, r3, -40				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 40				# 2070
	lwz	r31, -36(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, -32(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, -20(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -36(r3)				# 2071
	addi	r3, r3, -40				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 40				# 2071
	lwz	r31, -36(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -32(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, -20(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -36(r3)				# 2072
	addi	r3, r3, -40				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 40				# 2072
	lwz	r31, -36(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -32(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, -20(r3)				# 2073
	lwz	r2, -24(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, -36(r3)				# 2073
	addi	r3, r3, -40				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 40				# 2073
	lwz	r31, -36(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -32(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, -16(r3)				# 2082
	lwz	r6, -12(r3)				# 2082
	mfspr	r31, 8				# 2082
	mr	r5, r6				# 2082
	stw	r31, -36(r3)				# 2082
	addi	r3, r3, -40				# 2082
	bl	min_caml_create_array				# 2082
	addi	r3, r3, 40				# 2082
	lwz	r31, -36(r3)				# 2082
	mtspr	8, r31				# 2082
	lwz	r5, -16(r3)				# 2083
	lwz	r6, -12(r3)				# 2083
	stw	r2, -36(r3)				# 2083
	mfspr	r31, 8				# 2083
	mr	r2, r5				# 2083
	mr	r5, r6				# 2083
	stw	r31, -40(r3)				# 2083
	addi	r3, r3, -44				# 2083
	bl	min_caml_create_array				# 2083
	addi	r3, r3, 44				# 2083
	lwz	r31, -40(r3)				# 2083
	mtspr	8, r31				# 2083
	lfs	f0, -20(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -40(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -44(r3)				# 2068
	addi	r3, r3, -48				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 48				# 2068
	lwz	r31, -44(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -16(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -44(r3)				# 2069
	addi	r3, r3, -48				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 48				# 2069
	lwz	r31, -44(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -20(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -44(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -48(r3)				# 2070
	addi	r3, r3, -52				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 52				# 2070
	lwz	r31, -48(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, -44(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, -20(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -48(r3)				# 2071
	addi	r3, r3, -52				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 52				# 2071
	lwz	r31, -48(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -44(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, -20(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -48(r3)				# 2072
	addi	r3, r3, -52				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 52				# 2072
	lwz	r31, -48(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -44(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, -20(r3)				# 2073
	lwz	r2, -24(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, -48(r3)				# 2073
	addi	r3, r3, -52				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 52				# 2073
	lwz	r31, -48(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -44(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lfs	f0, -20(r3)				# 2068
	lwz	r2, -24(r3)				# 2068
	mfspr	r31, 8				# 2068
	stw	r31, -48(r3)				# 2068
	addi	r3, r3, -52				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 52				# 2068
	lwz	r31, -48(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -16(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -48(r3)				# 2069
	addi	r3, r3, -52				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 52				# 2069
	lwz	r31, -48(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -20(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -48(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -52(r3)				# 2070
	addi	r3, r3, -56				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 56				# 2070
	lwz	r31, -52(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, -48(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, -20(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -52(r3)				# 2071
	addi	r3, r3, -56				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 56				# 2071
	lwz	r31, -52(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -48(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, -20(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -52(r3)				# 2072
	addi	r3, r3, -56				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 56				# 2072
	lwz	r31, -52(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -48(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, -20(r3)				# 2073
	lwz	r2, -24(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, -52(r3)				# 2073
	addi	r3, r3, -56				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 56				# 2073
	lwz	r31, -52(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -48(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, -8(r3)				# 2086
	lwz	r6, -12(r3)				# 2086
	mfspr	r31, 8				# 2086
	mr	r5, r6				# 2086
	stw	r31, -52(r3)				# 2086
	addi	r3, r3, -56				# 2086
	bl	min_caml_create_array				# 2086
	addi	r3, r3, 56				# 2086
	lwz	r31, -52(r3)				# 2086
	mtspr	8, r31				# 2086
	lfs	f0, -20(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -52(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -56(r3)				# 2068
	addi	r3, r3, -60				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 60				# 2068
	lwz	r31, -56(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -16(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -56(r3)				# 2069
	addi	r3, r3, -60				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 60				# 2069
	lwz	r31, -56(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -20(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -56(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -60(r3)				# 2070
	addi	r3, r3, -64				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 64				# 2070
	lwz	r31, -60(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, -56(r3)				# 2070
	stw	r2, 4(r5)				# 2070
	lfs	f0, -20(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -60(r3)				# 2071
	addi	r3, r3, -64				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 64				# 2071
	lwz	r31, -60(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -56(r3)				# 2071
	stw	r2, 8(r5)				# 2071
	lfs	f0, -20(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -60(r3)				# 2072
	addi	r3, r3, -64				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 64				# 2072
	lwz	r31, -60(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -56(r3)				# 2072
	stw	r2, 12(r5)				# 2072
	lfs	f0, -20(r3)				# 2073
	lwz	r2, -24(r3)				# 2073
	mfspr	r31, 8				# 2073
	stw	r31, -60(r3)				# 2073
	addi	r3, r3, -64				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 64				# 2073
	lwz	r31, -60(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -56(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	mr	r2, r4				# 2088
	addi	r4, r4, 32				# 2088
	stw	r5, 28(r2)				# 2088
	lwz	r5, -52(r3)				# 2088
	stw	r5, 24(r2)				# 2088
	lwz	r5, -48(r3)				# 2088
	stw	r5, 20(r2)				# 2088
	lwz	r5, -44(r3)				# 2088
	stw	r5, 16(r2)				# 2088
	lwz	r5, -40(r3)				# 2088
	stw	r5, 12(r2)				# 2088
	lwz	r5, -36(r3)				# 2088
	stw	r5, 8(r2)				# 2088
	lwz	r5, -32(r3)				# 2088
	stw	r5, 4(r2)				# 2088
	lwz	r5, -28(r3)				# 2088
	stw	r5, 0(r2)				# 2088
	lwz	r5, -4(r3)				# 2094
	slwi	r6, r5, 2				# 2094
	lwz	r7, 0(r3)				# 2094
	stwx	r2, r7, r6				# 2094
	addi	r5, r5, -1				# 2095
	mr	r2, r7				# 2095
	b	init_line_elements.2907				# 2095
bge_else.20982:
	blr
calc_dirvec.2917:
	addis	r7, 0, ha16(dirvecs.2460)
	ori	r7, r7, lo16(dirvecs.2460)				# 2124
	lwz	r7, 0(r7)				# 2124
	cmpwi	cr7, r2, 5				# 2125
	blt	cr7, bge_else.20983				# 2125
	fmul	f2, f0, f0				# 103
	fmul	f3, f1, f1				# 103
	fadd	f2, f2, f3				# 2126
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f3, 0(r31)				# 2126
	fadd	f2, f2, f3				# 2126
	stw	r6, 0(r3)				# 2126
	stw	r7, -4(r3)				# 2126
	stw	r5, -8(r3)				# 2126
	stfs	f3, -12(r3)				# 2126
	stfs	f1, -16(r3)				# 2126
	stfs	f0, -20(r3)				# 2126
	mfspr	r31, 8				# 2126
	fmr	f0, f2				# 2126
	stw	r31, -24(r3)				# 2126
	addi	r3, r3, -28				# 2126
	bl	min_caml_sqrt				# 2126
	addi	r3, r3, 28				# 2126
	lwz	r31, -24(r3)				# 2126
	mtspr	8, r31				# 2126
	lfs	f1, -20(r3)				# 2127
	fdiv	f1, f1, f0				# 2127
	lfs	f2, -16(r3)				# 2128
	fdiv	f2, f2, f0				# 2128
	lfs	f3, -12(r3)				# 2129
	fdiv	f0, f3, f0				# 2129
	lwz	r2, -8(r3)				# 2132
	slwi	r2, r2, 2				# 2132
	lwz	r5, -4(r3)				# 2132
	lwzx	r2, r5, r2				# 2132
	lwz	r5, 0(r3)				# 2133
	slwi	r6, r5, 2				# 2133
	lwzx	r6, r2, r6				# 2133
	lwz	r6, 0(r6)				# 521
	stfs	f1, 0(r6)				# 147
	stfs	f2, 4(r6)				# 148
	stfs	f0, 8(r6)				# 149
	addi	r6, r5, 40				# 2134
	slwi	r6, r6, 2				# 2134
	lwzx	r6, r2, r6				# 2134
	lwz	r6, 0(r6)				# 521
	fneg	f3, f2				# 107
	stfs	f1, 0(r6)				# 147
	stfs	f0, 4(r6)				# 148
	stfs	f3, 8(r6)				# 149
	addi	r6, r5, 80				# 2135
	slwi	r6, r6, 2				# 2135
	lwzx	r6, r2, r6				# 2135
	lwz	r6, 0(r6)				# 521
	fneg	f4, f1				# 107
	stfs	f0, 0(r6)				# 147
	stfs	f4, 4(r6)				# 148
	stfs	f3, 8(r6)				# 149
	addi	r6, r5, 1				# 2136
	slwi	r6, r6, 2				# 2136
	lwzx	r6, r2, r6				# 2136
	lwz	r6, 0(r6)				# 521
	fneg	f0, f0				# 107
	stfs	f4, 0(r6)				# 147
	stfs	f3, 4(r6)				# 148
	stfs	f0, 8(r6)				# 149
	addi	r6, r5, 41				# 2137
	slwi	r6, r6, 2				# 2137
	lwzx	r6, r2, r6				# 2137
	lwz	r6, 0(r6)				# 521
	stfs	f4, 0(r6)				# 147
	stfs	f0, 4(r6)				# 148
	stfs	f2, 8(r6)				# 149
	addi	r5, r5, 81				# 2138
	slwi	r5, r5, 2				# 2138
	lwzx	r2, r2, r5				# 2138
	lwz	r2, 0(r2)				# 521
	stfs	f0, 0(r2)				# 147
	stfs	f1, 4(r2)				# 148
	stfs	f2, 8(r2)				# 149
	blr
bge_else.20983:
	fmul	f0, f1, f1				# 2116
	addis	r31, 0, ha16(l.16978)
	ori	r31, r31, lo16(l.16978)
	lfs	f1, 0(r31)				# 2116
	fadd	f0, f0, f1				# 2116
	stw	r6, 0(r3)				# 2116
	stw	r5, -8(r3)				# 2116
	stfs	f3, -24(r3)				# 2116
	stfs	f1, -28(r3)				# 2116
	stw	r2, -32(r3)				# 2116
	stfs	f2, -36(r3)				# 2116
	mfspr	r31, 8				# 2116
	stw	r31, -40(r3)				# 2116
	addi	r3, r3, -44				# 2116
	bl	min_caml_sqrt				# 2116
	addi	r3, r3, 44				# 2116
	lwz	r31, -40(r3)				# 2116
	mtspr	8, r31				# 2116
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f1, 0(r31)				# 2117
	fdiv	f2, f1, f0				# 2117
	stfs	f1, -40(r3)				# 2118
	stfs	f0, -44(r3)				# 2118
	mfspr	r31, 8				# 2118
	fmr	f0, f2				# 2118
	stw	r31, -48(r3)				# 2118
	addi	r3, r3, -52				# 2118
	bl	min_caml_atan				# 2118
	addi	r3, r3, 52				# 2118
	lwz	r31, -48(r3)				# 2118
	mtspr	8, r31				# 2118
	lfs	f1, -36(r3)				# 2119
	fmul	f0, f0, f1				# 2119
	stfs	f0, -48(r3)				# 2111
	mfspr	r31, 8				# 2111
	stw	r31, -52(r3)				# 2111
	addi	r3, r3, -56				# 2111
	bl	min_caml_sin				# 2111
	addi	r3, r3, 56				# 2111
	lwz	r31, -52(r3)				# 2111
	mtspr	8, r31				# 2111
	lfs	f1, -48(r3)				# 2111
	stfs	f0, -52(r3)				# 2111
	mfspr	r31, 8				# 2111
	fmr	f0, f1				# 2111
	stw	r31, -56(r3)				# 2111
	addi	r3, r3, -60				# 2111
	bl	min_caml_cos				# 2111
	addi	r3, r3, 60				# 2111
	lwz	r31, -56(r3)				# 2111
	mtspr	8, r31				# 2111
	lfs	f1, -52(r3)				# 2111
	fdiv	f0, f1, f0				# 2111
	lfs	f1, -44(r3)				# 2120
	fmul	f0, f0, f1				# 2120
	lwz	r2, -32(r3)				# 2141
	addi	r2, r2, 1				# 2141
	fmul	f1, f0, f0				# 2116
	lfs	f2, -28(r3)				# 2116
	fadd	f1, f1, f2				# 2116
	stfs	f0, -56(r3)				# 2116
	stw	r2, -60(r3)				# 2116
	mfspr	r31, 8				# 2116
	fmr	f0, f1				# 2116
	stw	r31, -64(r3)				# 2116
	addi	r3, r3, -68				# 2116
	bl	min_caml_sqrt				# 2116
	addi	r3, r3, 68				# 2116
	lwz	r31, -64(r3)				# 2116
	mtspr	8, r31				# 2116
	lfs	f1, -40(r3)				# 2117
	fdiv	f1, f1, f0				# 2117
	stfs	f0, -64(r3)				# 2118
	mfspr	r31, 8				# 2118
	fmr	f0, f1				# 2118
	stw	r31, -68(r3)				# 2118
	addi	r3, r3, -72				# 2118
	bl	min_caml_atan				# 2118
	addi	r3, r3, 72				# 2118
	lwz	r31, -68(r3)				# 2118
	mtspr	8, r31				# 2118
	lfs	f1, -24(r3)				# 2119
	fmul	f0, f0, f1				# 2119
	stfs	f0, -68(r3)				# 2111
	mfspr	r31, 8				# 2111
	stw	r31, -72(r3)				# 2111
	addi	r3, r3, -76				# 2111
	bl	min_caml_sin				# 2111
	addi	r3, r3, 76				# 2111
	lwz	r31, -72(r3)				# 2111
	mtspr	8, r31				# 2111
	lfs	f1, -68(r3)				# 2111
	stfs	f0, -72(r3)				# 2111
	mfspr	r31, 8				# 2111
	fmr	f0, f1				# 2111
	stw	r31, -76(r3)				# 2111
	addi	r3, r3, -80				# 2111
	bl	min_caml_cos				# 2111
	addi	r3, r3, 80				# 2111
	lwz	r31, -76(r3)				# 2111
	mtspr	8, r31				# 2111
	lfs	f1, -72(r3)				# 2111
	fdiv	f0, f1, f0				# 2111
	lfs	f1, -64(r3)				# 2120
	fmul	f1, f0, f1				# 2120
	lfs	f0, -56(r3)				# 2141
	lfs	f2, -36(r3)				# 2141
	lfs	f3, -24(r3)				# 2141
	lwz	r2, -60(r3)				# 2141
	lwz	r5, -8(r3)				# 2141
	lwz	r6, 0(r3)				# 2141
	b	calc_dirvec.2917				# 2141
calc_dirvecs.2925:
	addi	r7, 0, 0				# 2145
	addis	r8, 0, ha16(Td252.5768)
	ori	r8, r8, lo16(Td252.5768)				# 2145
	lfs	f1, 0(r8)				# 2145
	cmpwi	cr7, r2, 0				# 2146
	blt	cr7, bge_else.20985				# 2146
	stw	r2, 0(r3)				# 2148
	stfs	f0, -4(r3)				# 2148
	stfs	f1, -8(r3)				# 2148
	stw	r6, -12(r3)				# 2148
	stw	r5, -16(r3)				# 2148
	stw	r7, -20(r3)				# 2148
	mfspr	r31, 8				# 2148
	stw	r31, -24(r3)				# 2148
	addi	r3, r3, -28				# 2148
	bl	min_caml_float_of_int				# 2148
	addi	r3, r3, 28				# 2148
	lwz	r31, -24(r3)				# 2148
	mtspr	8, r31				# 2148
	addis	r31, 0, ha16(l.17575)
	ori	r31, r31, lo16(l.17575)
	lfs	f1, 0(r31)				# 2148
	fmul	f0, f0, f1				# 2148
	addis	r31, 0, ha16(l.17576)
	ori	r31, r31, lo16(l.17576)
	lfs	f2, 0(r31)				# 2148
	fsub	f2, f0, f2				# 2148
	lfs	f0, -8(r3)				# 2149
	lfs	f3, -4(r3)				# 2149
	lwz	r2, -20(r3)				# 2149
	lwz	r5, -16(r3)				# 2149
	lwz	r6, -12(r3)				# 2149
	stfs	f1, -24(r3)				# 2149
	mfspr	r31, 8				# 2149
	fmr	f1, f0				# 2149
	stw	r31, -28(r3)				# 2149
	addi	r3, r3, -32				# 2149
	bl	calc_dirvec.2917				# 2149
	addi	r3, r3, 32				# 2149
	lwz	r31, -28(r3)				# 2149
	mtspr	8, r31				# 2149
	lwz	r2, 0(r3)				# 2151
	mfspr	r31, 8				# 2151
	stw	r31, -28(r3)				# 2151
	addi	r3, r3, -32				# 2151
	bl	min_caml_float_of_int				# 2151
	addi	r3, r3, 32				# 2151
	lwz	r31, -28(r3)				# 2151
	mtspr	8, r31				# 2151
	lfs	f1, -24(r3)				# 2151
	fmul	f0, f0, f1				# 2151
	addis	r31, 0, ha16(l.16978)
	ori	r31, r31, lo16(l.16978)
	lfs	f1, 0(r31)				# 2151
	fadd	f2, f0, f1				# 2151
	lwz	r2, -12(r3)				# 2152
	addi	r6, r2, 2				# 2152
	lfs	f0, -8(r3)				# 2152
	lfs	f3, -4(r3)				# 2152
	lwz	r5, -20(r3)				# 2152
	lwz	r7, -16(r3)				# 2152
	mfspr	r31, 8				# 2152
	mr	r2, r5				# 2152
	mr	r5, r7				# 2152
	fmr	f1, f0				# 2152
	stw	r31, -28(r3)				# 2152
	addi	r3, r3, -32				# 2152
	bl	calc_dirvec.2917				# 2152
	addi	r3, r3, 32				# 2152
	lwz	r31, -28(r3)				# 2152
	mtspr	8, r31				# 2152
	lwz	r2, 0(r3)				# 2154
	addi	r2, r2, -1				# 2154
	lwz	r5, -16(r3)				# 137
	addi	r5, r5, 1				# 137
	cmpwi	cr7, r5, 5				# 138
	blt	cr7, bge_else.20986				# 138
	addi	r5, r5, -5				# 138
	b	bge_cont.20987				# 138
bge_else.20986:
bge_cont.20987:
	lfs	f0, -4(r3)				# 2154
	lwz	r6, -12(r3)				# 2154
	b	calc_dirvecs.2925				# 2154
bge_else.20985:
	blr
calc_dirvec_rows.2930:
	cmpwi	cr7, r2, 0				# 2160
	blt	cr7, bge_else.20989				# 2160
	stw	r2, 0(r3)				# 2161
	stw	r6, -4(r3)				# 2161
	stw	r5, -8(r3)				# 2161
	mfspr	r31, 8				# 2161
	stw	r31, -12(r3)				# 2161
	addi	r3, r3, -16				# 2161
	bl	min_caml_float_of_int				# 2161
	addi	r3, r3, 16				# 2161
	lwz	r31, -12(r3)				# 2161
	mtspr	8, r31				# 2161
	addis	r31, 0, ha16(l.17575)
	ori	r31, r31, lo16(l.17575)
	lfs	f1, 0(r31)				# 2161
	fmul	f0, f0, f1				# 2161
	addis	r31, 0, ha16(l.17576)
	ori	r31, r31, lo16(l.17576)
	lfs	f1, 0(r31)				# 2161
	fsub	f0, f0, f1				# 2161
	addi	r2, 0, 4				# 2162
	lwz	r5, -8(r3)				# 2162
	lwz	r6, -4(r3)				# 2162
	mfspr	r31, 8				# 2162
	stw	r31, -12(r3)				# 2162
	addi	r3, r3, -16				# 2162
	bl	calc_dirvecs.2925				# 2162
	addi	r3, r3, 16				# 2162
	lwz	r31, -12(r3)				# 2162
	mtspr	8, r31				# 2162
	lwz	r2, 0(r3)				# 2163
	addi	r2, r2, -1				# 2163
	lwz	r5, -8(r3)				# 137
	addi	r5, r5, 2				# 137
	cmpwi	cr7, r5, 5				# 138
	blt	cr7, bge_else.20990				# 138
	addi	r5, r5, -5				# 138
	b	bge_cont.20991				# 138
bge_else.20990:
bge_cont.20991:
	lwz	r6, -4(r3)				# 2163
	addi	r6, r6, 4				# 2163
	b	calc_dirvec_rows.2930				# 2163
bge_else.20989:
	blr
create_dirvec_elements.2936:
	addis	r6, 0, ha16(n_objects.2434)
	ori	r6, r6, lo16(n_objects.2434)				# 2176
	lwz	r6, 0(r6)				# 2176
	addi	r7, 0, 3				# 2176
	addis	r8, 0, ha16(Td252.5768)
	ori	r8, r8, lo16(Td252.5768)				# 2176
	lfs	f0, 0(r8)				# 2176
	cmpwi	cr7, r5, 0				# 2177
	blt	cr7, bge_else.20993				# 2177
	stw	r2, 0(r3)				# 2171
	stw	r5, -4(r3)				# 2171
	stw	r6, -8(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r7				# 2171
	stw	r31, -12(r3)				# 2171
	addi	r3, r3, -16				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, 16				# 2171
	lwz	r31, -12(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, -8(r3)				# 2172
	lwz	r2, 0(r2)				# 2172
	stw	r5, -12(r3)				# 2172
	mfspr	r31, 8				# 2172
	stw	r31, -16(r3)				# 2172
	addi	r3, r3, -20				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, 20				# 2172
	lwz	r31, -16(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, -12(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	mr	r2, r5				# 2173
	lwz	r5, -4(r3)				# 2178
	slwi	r6, r5, 2				# 2178
	lwz	r7, 0(r3)				# 2178
	stwx	r2, r7, r6				# 2178
	addi	r5, r5, -1				# 2179
	mr	r2, r7				# 2179
	b	create_dirvec_elements.2936				# 2179
bge_else.20993:
	blr
create_dirvecs.2939:
	addis	r5, 0, ha16(n_objects.2434)
	ori	r5, r5, lo16(n_objects.2434)				# 2183
	lwz	r5, 0(r5)				# 2183
	addis	r6, 0, ha16(dirvecs.2460)
	ori	r6, r6, lo16(dirvecs.2460)				# 2183
	lwz	r6, 0(r6)				# 2183
	addi	r7, 0, 3				# 2183
	addis	r8, 0, ha16(Td252.5768)
	ori	r8, r8, lo16(Td252.5768)				# 2183
	lfs	f0, 0(r8)				# 2183
	cmpwi	cr7, r2, 0				# 2184
	blt	cr7, bge_else.20995				# 2184
	addi	r8, 0, 120				# 2185
	stw	r6, 0(r3)				# 2171
	stw	r2, -4(r3)				# 2171
	stw	r8, -8(r3)				# 2171
	stw	r5, -12(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r7				# 2171
	stw	r31, -16(r3)				# 2171
	addi	r3, r3, -20				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, 20				# 2171
	lwz	r31, -16(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, -12(r3)				# 2172
	lwz	r2, 0(r2)				# 2172
	stw	r5, -16(r3)				# 2172
	mfspr	r31, 8				# 2172
	stw	r31, -20(r3)				# 2172
	addi	r3, r3, -24				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, 24				# 2172
	lwz	r31, -20(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, -16(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	lwz	r2, -8(r3)				# 2185
	mfspr	r31, 8				# 2185
	stw	r31, -20(r3)				# 2185
	addi	r3, r3, -24				# 2185
	bl	min_caml_create_array				# 2185
	addi	r3, r3, 24				# 2185
	lwz	r31, -20(r3)				# 2185
	mtspr	8, r31				# 2185
	lwz	r5, -4(r3)				# 2185
	slwi	r6, r5, 2				# 2185
	lwz	r7, 0(r3)				# 2185
	stwx	r2, r7, r6				# 2185
	slwi	r2, r5, 2				# 2186
	lwzx	r2, r7, r2				# 2186
	addi	r6, 0, 118				# 2186
	mfspr	r31, 8				# 2186
	mr	r5, r6				# 2186
	stw	r31, -20(r3)				# 2186
	addi	r3, r3, -24				# 2186
	bl	create_dirvec_elements.2936				# 2186
	addi	r3, r3, 24				# 2186
	lwz	r31, -20(r3)				# 2186
	mtspr	8, r31				# 2186
	lwz	r2, -4(r3)				# 2187
	addi	r2, r2, -1				# 2187
	b	create_dirvecs.2939				# 2187
bge_else.20995:
	blr
init_dirvec_constants.2941:
	addis	r6, 0, ha16(n_objects.2434)
	ori	r6, r6, lo16(n_objects.2434)				# 2193
	lwz	r6, 0(r6)				# 2193
	cmpwi	cr7, r5, 0				# 2194
	blt	cr7, bge_else.20997				# 2194
	slwi	r7, r5, 2				# 2195
	lwzx	r7, r2, r7				# 2195
	lwz	r6, 0(r6)				# 1135
	addi	r6, r6, -1				# 1135
	stw	r2, 0(r3)				# 1135
	stw	r5, -4(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r5, r6				# 1135
	mr	r2, r7				# 1135
	stw	r31, -8(r3)				# 1135
	addi	r3, r3, -12				# 1135
	bl	iter_setup_dirvec_constants.2723				# 1135
	addi	r3, r3, 12				# 1135
	lwz	r31, -8(r3)				# 1135
	mtspr	8, r31				# 1135
	lwz	r2, -4(r3)				# 2196
	addi	r5, r2, -1				# 2196
	lwz	r2, 0(r3)				# 2196
	b	init_dirvec_constants.2941				# 2196
bge_else.20997:
	blr
init_vecset_constants.2944:
	addis	r5, 0, ha16(dirvecs.2460)
	ori	r5, r5, lo16(dirvecs.2460)				# 2200
	lwz	r5, 0(r5)				# 2200
	cmpwi	cr7, r2, 0				# 2201
	blt	cr7, bge_else.20999				# 2201
	slwi	r6, r2, 2				# 2202
	lwzx	r5, r5, r6				# 2202
	addi	r6, 0, 119				# 2202
	stw	r2, 0(r3)				# 2202
	mfspr	r31, 8				# 2202
	mr	r2, r5				# 2202
	mr	r5, r6				# 2202
	stw	r31, -4(r3)				# 2202
	addi	r3, r3, -8				# 2202
	bl	init_dirvec_constants.2941				# 2202
	addi	r3, r3, 8				# 2202
	lwz	r31, -4(r3)				# 2202
	mtspr	8, r31				# 2202
	lwz	r2, 0(r3)				# 2203
	addi	r2, r2, -1				# 2203
	b	init_vecset_constants.2944				# 2203
bge_else.20999:
	blr
_min_caml_start: # main entry point
#	main program starts
	addi	r2, 0, 1
	addi	r5, 0, 0
	stw	r2, 0(r3)				# 17
	stw	r5, -4(r3)				# 17
	mfspr	r31, 8				# 17
	stw	r31, -8(r3)				# 17
	addi	r3, r3, -12				# 17
	bl	min_caml_create_array				# 17
	addi	r3, r3, 12				# 17
	lwz	r31, -8(r3)				# 17
	mtspr	8, r31				# 17
	addis	r5, 0, ha16(n_objects.2434)
	ori	r5, r5, lo16(n_objects.2434)
	stw	r2, 0(r5)
	addis	r5, 0, ha16(Td252.5768)
	ori	r5, r5, lo16(Td252.5768)
	lfs	f0, 0(r5)
	lwz	r5, -4(r3)				# 21
	stw	r2, -8(r3)				# 21
	stfs	f0, -12(r3)				# 21
	mfspr	r31, 8				# 21
	mr	r2, r5				# 21
	stw	r31, -16(r3)				# 21
	addi	r3, r3, -20				# 21
	bl	min_caml_create_float_array				# 21
	addi	r3, r3, 20				# 21
	lwz	r31, -16(r3)				# 21
	mtspr	8, r31				# 21
	addis	r5, 0, ha16(dummy.5763)
	ori	r5, r5, lo16(dummy.5763)
	stw	r2, 0(r5)
	addi	r5, 0, 60
	mr	r6, r4				# 22
	addi	r4, r4, 44				# 22
	stw	r2, 40(r6)				# 22
	stw	r2, 36(r6)				# 22
	stw	r2, 32(r6)				# 22
	stw	r2, 28(r6)				# 22
	lwz	r7, -4(r3)				# 22
	stw	r7, 24(r6)				# 22
	stw	r2, 20(r6)				# 22
	stw	r2, 16(r6)				# 22
	stw	r7, 12(r6)				# 22
	stw	r7, 8(r6)				# 22
	stw	r7, 4(r6)				# 22
	stw	r7, 0(r6)				# 22
	mr	r2, r6				# 22
	addis	r6, 0, ha16(Tt259.5765)
	ori	r6, r6, lo16(Tt259.5765)
	stw	r2, 0(r6)
	stw	r5, -16(r3)				# 22
	mfspr	r31, 8				# 22
	mr	r30, r5				# 22
	mr	r5, r2				# 22
	mr	r2, r30				# 22
	stw	r31, -20(r3)				# 22
	addi	r3, r3, -24				# 22
	bl	min_caml_create_array				# 22
	addi	r3, r3, 24				# 22
	lwz	r31, -20(r3)				# 22
	mtspr	8, r31				# 22
	addis	r5, 0, ha16(objects.2435)
	ori	r5, r5, lo16(objects.2435)
	stw	r2, 0(r5)
	addi	r5, 0, 3
	lfs	f0, -12(r3)				# 25
	stw	r2, -20(r3)				# 25
	stw	r5, -24(r3)				# 25
	mfspr	r31, 8				# 25
	mr	r2, r5				# 25
	stw	r31, -28(r3)				# 25
	addi	r3, r3, -32				# 25
	bl	min_caml_create_float_array				# 25
	addi	r3, r3, 32				# 25
	lwz	r31, -28(r3)				# 25
	mtspr	8, r31				# 25
	addis	r5, 0, ha16(screen.2436)
	ori	r5, r5, lo16(screen.2436)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 27
	lwz	r5, -24(r3)				# 27
	stw	r2, -28(r3)				# 27
	mfspr	r31, 8				# 27
	mr	r2, r5				# 27
	stw	r31, -32(r3)				# 27
	addi	r3, r3, -36				# 27
	bl	min_caml_create_float_array				# 27
	addi	r3, r3, 36				# 27
	lwz	r31, -32(r3)				# 27
	mtspr	8, r31				# 27
	addis	r5, 0, ha16(viewpoint.2437)
	ori	r5, r5, lo16(viewpoint.2437)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 29
	lwz	r5, -24(r3)				# 29
	stw	r2, -32(r3)				# 29
	mfspr	r31, 8				# 29
	mr	r2, r5				# 29
	stw	r31, -36(r3)				# 29
	addi	r3, r3, -40				# 29
	bl	min_caml_create_float_array				# 29
	addi	r3, r3, 40				# 29
	lwz	r31, -36(r3)				# 29
	mtspr	8, r31				# 29
	addis	r5, 0, ha16(light.2438)
	ori	r5, r5, lo16(light.2438)
	stw	r2, 0(r5)
	addis	r5, 0, ha16(Td267.5756)
	ori	r5, r5, lo16(Td267.5756)
	lfs	f0, 0(r5)
	lwz	r5, 0(r3)				# 31
	stw	r2, -36(r3)				# 31
	mfspr	r31, 8				# 31
	mr	r2, r5				# 31
	stw	r31, -40(r3)				# 31
	addi	r3, r3, -44				# 31
	bl	min_caml_create_float_array				# 31
	addi	r3, r3, 44				# 31
	lwz	r31, -40(r3)				# 31
	mtspr	8, r31				# 31
	addis	r5, 0, ha16(beam.2439)
	ori	r5, r5, lo16(beam.2439)
	stw	r2, 0(r5)
	addi	r5, 0, 50
	addi	r6, 0, -1
	lwz	r7, 0(r3)				# 33
	stw	r2, -40(r3)				# 33
	stw	r5, -44(r3)				# 33
	mfspr	r31, 8				# 33
	mr	r5, r6				# 33
	mr	r2, r7				# 33
	stw	r31, -48(r3)				# 33
	addi	r3, r3, -52				# 33
	bl	min_caml_create_array				# 33
	addi	r3, r3, 52				# 33
	lwz	r31, -48(r3)				# 33
	mtspr	8, r31				# 33
	addis	r5, 0, ha16(Ta272.5752)
	ori	r5, r5, lo16(Ta272.5752)
	stw	r2, 0(r5)
	mr	r5, r2
	lwz	r2, -44(r3)				# 33
	mfspr	r31, 8				# 33
	stw	r31, -48(r3)				# 33
	addi	r3, r3, -52				# 33
	bl	min_caml_create_array				# 33
	addi	r3, r3, 52				# 33
	lwz	r31, -48(r3)				# 33
	mtspr	8, r31				# 33
	addis	r5, 0, ha16(and_net.2440)
	ori	r5, r5, lo16(and_net.2440)
	stw	r2, 0(r5)
	lwz	r5, -4(r3)				# 35
	slwi	r6, r5, 2				# 35
	lwzx	r2, r2, r6				# 35
	addis	r6, 0, ha16(Ta276.5749)
	ori	r6, r6, lo16(Ta276.5749)
	stw	r2, 0(r6)
	lwz	r6, 0(r3)				# 35
	mfspr	r31, 8				# 35
	mr	r5, r2				# 35
	mr	r2, r6				# 35
	stw	r31, -48(r3)				# 35
	addi	r3, r3, -52				# 35
	bl	min_caml_create_array				# 35
	addi	r3, r3, 52				# 35
	lwz	r31, -48(r3)				# 35
	mtspr	8, r31				# 35
	addis	r5, 0, ha16(Ta277.5748)
	ori	r5, r5, lo16(Ta277.5748)
	stw	r2, 0(r5)
	mr	r5, r2
	lwz	r2, 0(r3)				# 35
	mfspr	r31, 8				# 35
	stw	r31, -48(r3)				# 35
	addi	r3, r3, -52				# 35
	bl	min_caml_create_array				# 35
	addi	r3, r3, 52				# 35
	lwz	r31, -48(r3)				# 35
	mtspr	8, r31				# 35
	addis	r5, 0, ha16(or_net.2441)
	ori	r5, r5, lo16(or_net.2441)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 39
	lwz	r5, 0(r3)				# 39
	stw	r2, -48(r3)				# 39
	mfspr	r31, 8				# 39
	mr	r2, r5				# 39
	stw	r31, -52(r3)				# 39
	addi	r3, r3, -56				# 39
	bl	min_caml_create_float_array				# 39
	addi	r3, r3, 56				# 39
	lwz	r31, -52(r3)				# 39
	mtspr	8, r31				# 39
	addis	r5, 0, ha16(solver_dist.2442)
	ori	r5, r5, lo16(solver_dist.2442)
	stw	r2, 0(r5)
	lwz	r2, 0(r3)				# 41
	lwz	r5, -4(r3)				# 41
	mfspr	r31, 8				# 41
	stw	r31, -52(r3)				# 41
	addi	r3, r3, -56				# 41
	bl	min_caml_create_array				# 41
	addi	r3, r3, 56				# 41
	lwz	r31, -52(r3)				# 41
	mtspr	8, r31				# 41
	addis	r5, 0, ha16(intsec_rectside.2443)
	ori	r5, r5, lo16(intsec_rectside.2443)
	stw	r2, 0(r5)
	addis	r2, 0, ha16(Td283.5742)
	ori	r2, r2, lo16(Td283.5742)
	lfs	f0, 0(r2)
	lwz	r2, 0(r3)				# 43
	mfspr	r31, 8				# 43
	stw	r31, -52(r3)				# 43
	addi	r3, r3, -56				# 43
	bl	min_caml_create_float_array				# 43
	addi	r3, r3, 56				# 43
	lwz	r31, -52(r3)				# 43
	mtspr	8, r31				# 43
	addis	r5, 0, ha16(tmin.2444)
	ori	r5, r5, lo16(tmin.2444)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 45
	lwz	r2, -24(r3)				# 45
	mfspr	r31, 8				# 45
	stw	r31, -52(r3)				# 45
	addi	r3, r3, -56				# 45
	bl	min_caml_create_float_array				# 45
	addi	r3, r3, 56				# 45
	lwz	r31, -52(r3)				# 45
	mtspr	8, r31				# 45
	addis	r5, 0, ha16(intersection_point.2445)
	ori	r5, r5, lo16(intersection_point.2445)
	stw	r2, 0(r5)
	lwz	r2, 0(r3)				# 47
	lwz	r5, -4(r3)				# 47
	mfspr	r31, 8				# 47
	stw	r31, -52(r3)				# 47
	addi	r3, r3, -56				# 47
	bl	min_caml_create_array				# 47
	addi	r3, r3, 56				# 47
	lwz	r31, -52(r3)				# 47
	mtspr	8, r31				# 47
	addis	r5, 0, ha16(intersected_object_id.2446)
	ori	r5, r5, lo16(intersected_object_id.2446)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 49
	lwz	r2, -24(r3)				# 49
	mfspr	r31, 8				# 49
	stw	r31, -52(r3)				# 49
	addi	r3, r3, -56				# 49
	bl	min_caml_create_float_array				# 49
	addi	r3, r3, 56				# 49
	lwz	r31, -52(r3)				# 49
	mtspr	8, r31				# 49
	addis	r5, 0, ha16(nvector.2447)
	ori	r5, r5, lo16(nvector.2447)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 51
	lwz	r2, -24(r3)				# 51
	mfspr	r31, 8				# 51
	stw	r31, -52(r3)				# 51
	addi	r3, r3, -56				# 51
	bl	min_caml_create_float_array				# 51
	addi	r3, r3, 56				# 51
	lwz	r31, -52(r3)				# 51
	mtspr	8, r31				# 51
	addis	r5, 0, ha16(texture_color.2448)
	ori	r5, r5, lo16(texture_color.2448)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 54
	lwz	r2, -24(r3)				# 54
	mfspr	r31, 8				# 54
	stw	r31, -52(r3)				# 54
	addi	r3, r3, -56				# 54
	bl	min_caml_create_float_array				# 54
	addi	r3, r3, 56				# 54
	lwz	r31, -52(r3)				# 54
	mtspr	8, r31				# 54
	addis	r5, 0, ha16(diffuse_ray.2449)
	ori	r5, r5, lo16(diffuse_ray.2449)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 56
	lwz	r2, -24(r3)				# 56
	mfspr	r31, 8				# 56
	stw	r31, -52(r3)				# 56
	addi	r3, r3, -56				# 56
	bl	min_caml_create_float_array				# 56
	addi	r3, r3, 56				# 56
	lwz	r31, -52(r3)				# 56
	mtspr	8, r31				# 56
	addis	r5, 0, ha16(rgb.2450)
	ori	r5, r5, lo16(rgb.2450)
	stw	r2, 0(r5)
	addi	r2, 0, 2
	lwz	r5, -4(r3)				# 59
	stw	r2, -52(r3)				# 59
	mfspr	r31, 8				# 59
	stw	r31, -56(r3)				# 59
	addi	r3, r3, -60				# 59
	bl	min_caml_create_array				# 59
	addi	r3, r3, 60				# 59
	lwz	r31, -56(r3)				# 59
	mtspr	8, r31				# 59
	addis	r5, 0, ha16(image_size.2451)
	ori	r5, r5, lo16(image_size.2451)
	stw	r2, 0(r5)
	lwz	r5, -52(r3)				# 61
	lwz	r6, -4(r3)				# 61
	stw	r2, -56(r3)				# 61
	mfspr	r31, 8				# 61
	mr	r2, r5				# 61
	mr	r5, r6				# 61
	stw	r31, -60(r3)				# 61
	addi	r3, r3, -64				# 61
	bl	min_caml_create_array				# 61
	addi	r3, r3, 64				# 61
	lwz	r31, -60(r3)				# 61
	mtspr	8, r31				# 61
	addis	r5, 0, ha16(image_center.2452)
	ori	r5, r5, lo16(image_center.2452)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 63
	lwz	r5, 0(r3)				# 63
	stw	r2, -60(r3)				# 63
	mfspr	r31, 8				# 63
	mr	r2, r5				# 63
	stw	r31, -64(r3)				# 63
	addi	r3, r3, -68				# 63
	bl	min_caml_create_float_array				# 63
	addi	r3, r3, 68				# 63
	lwz	r31, -64(r3)				# 63
	mtspr	8, r31				# 63
	addis	r5, 0, ha16(scan_pitch.2453)
	ori	r5, r5, lo16(scan_pitch.2453)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 66
	lwz	r5, -24(r3)				# 66
	stw	r2, -64(r3)				# 66
	mfspr	r31, 8				# 66
	mr	r2, r5				# 66
	stw	r31, -68(r3)				# 66
	addi	r3, r3, -72				# 66
	bl	min_caml_create_float_array				# 66
	addi	r3, r3, 72				# 66
	lwz	r31, -68(r3)				# 66
	mtspr	8, r31				# 66
	addis	r5, 0, ha16(startp.2454)
	ori	r5, r5, lo16(startp.2454)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 68
	lwz	r2, -24(r3)				# 68
	mfspr	r31, 8				# 68
	stw	r31, -68(r3)				# 68
	addi	r3, r3, -72				# 68
	bl	min_caml_create_float_array				# 68
	addi	r3, r3, 72				# 68
	lwz	r31, -68(r3)				# 68
	mtspr	8, r31				# 68
	addis	r5, 0, ha16(startp_fast.2455)
	ori	r5, r5, lo16(startp_fast.2455)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 71
	lwz	r2, -24(r3)				# 71
	mfspr	r31, 8				# 71
	stw	r31, -68(r3)				# 71
	addi	r3, r3, -72				# 71
	bl	min_caml_create_float_array				# 71
	addi	r3, r3, 72				# 71
	lwz	r31, -68(r3)				# 71
	mtspr	8, r31				# 71
	addis	r5, 0, ha16(screenx_dir.2456)
	ori	r5, r5, lo16(screenx_dir.2456)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 72
	lwz	r5, -24(r3)				# 72
	stw	r2, -68(r3)				# 72
	mfspr	r31, 8				# 72
	mr	r2, r5				# 72
	stw	r31, -72(r3)				# 72
	addi	r3, r3, -76				# 72
	bl	min_caml_create_float_array				# 72
	addi	r3, r3, 76				# 72
	lwz	r31, -72(r3)				# 72
	mtspr	8, r31				# 72
	addis	r5, 0, ha16(screeny_dir.2457)
	ori	r5, r5, lo16(screeny_dir.2457)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 73
	lwz	r5, -24(r3)				# 73
	stw	r2, -72(r3)				# 73
	mfspr	r31, 8				# 73
	mr	r2, r5				# 73
	stw	r31, -76(r3)				# 73
	addi	r3, r3, -80				# 73
	bl	min_caml_create_float_array				# 73
	addi	r3, r3, 80				# 73
	lwz	r31, -76(r3)				# 73
	mtspr	8, r31				# 73
	addis	r5, 0, ha16(screenz_dir.2458)
	ori	r5, r5, lo16(screenz_dir.2458)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 76
	lwz	r5, -24(r3)				# 76
	stw	r2, -76(r3)				# 76
	mfspr	r31, 8				# 76
	mr	r2, r5				# 76
	stw	r31, -80(r3)				# 76
	addi	r3, r3, -84				# 76
	bl	min_caml_create_float_array				# 76
	addi	r3, r3, 84				# 76
	lwz	r31, -80(r3)				# 76
	mtspr	8, r31				# 76
	addis	r5, 0, ha16(ptrace_dirvec.2459)
	ori	r5, r5, lo16(ptrace_dirvec.2459)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 80
	lwz	r2, -4(r3)				# 80
	mfspr	r31, 8				# 80
	stw	r31, -80(r3)				# 80
	addi	r3, r3, -84				# 80
	bl	min_caml_create_float_array				# 80
	addi	r3, r3, 84				# 80
	lwz	r31, -80(r3)				# 80
	mtspr	8, r31				# 80
	addis	r5, 0, ha16(dummyf.5702)
	ori	r5, r5, lo16(dummyf.5702)
	stw	r2, 0(r5)
	mr	r5, r2
	lwz	r2, -4(r3)				# 81
	stw	r5, -80(r3)				# 81
	mfspr	r31, 8				# 81
	stw	r31, -84(r3)				# 81
	addi	r3, r3, -88				# 81
	bl	min_caml_create_array				# 81
	addi	r3, r3, 88				# 81
	lwz	r31, -84(r3)				# 81
	mtspr	8, r31				# 81
	addis	r5, 0, ha16(dummyff.5703)
	ori	r5, r5, lo16(dummyff.5703)
	stw	r2, 0(r5)
	mr	r5, r4				# 82
	addi	r4, r4, 8				# 82
	stw	r2, 4(r5)				# 82
	lwz	r2, -80(r3)				# 82
	stw	r2, 0(r5)				# 82
	mr	r2, r5				# 82
	addis	r5, 0, ha16(Tt318.5707)
	ori	r5, r5, lo16(Tt318.5707)
	stw	r2, 0(r5)
	mr	r5, r2
	lwz	r2, -4(r3)				# 82
	mfspr	r31, 8				# 82
	stw	r31, -84(r3)				# 82
	addi	r3, r3, -88				# 82
	bl	min_caml_create_array				# 82
	addi	r3, r3, 88				# 82
	lwz	r31, -84(r3)				# 82
	mtspr	8, r31				# 82
	addis	r5, 0, ha16(dummy_vs.5704)
	ori	r5, r5, lo16(dummy_vs.5704)
	stw	r2, 0(r5)
	mr	r5, r2
	addi	r2, 0, 5
	stw	r2, -84(r3)				# 83
	mfspr	r31, 8				# 83
	stw	r31, -88(r3)				# 83
	addi	r3, r3, -92				# 83
	bl	min_caml_create_array				# 83
	addi	r3, r3, 92				# 83
	lwz	r31, -88(r3)				# 83
	mtspr	8, r31				# 83
	addis	r5, 0, ha16(dirvecs.2460)
	ori	r5, r5, lo16(dirvecs.2460)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 87
	lwz	r2, -4(r3)				# 87
	mfspr	r31, 8				# 87
	stw	r31, -88(r3)				# 87
	addi	r3, r3, -92				# 87
	bl	min_caml_create_float_array				# 87
	addi	r3, r3, 92				# 87
	lwz	r31, -88(r3)				# 87
	mtspr	8, r31				# 87
	addis	r5, 0, ha16(dummyf2.5694)
	ori	r5, r5, lo16(dummyf2.5694)
	stw	r2, 0(r5)
	lfs	f0, -12(r3)				# 88
	lwz	r5, -24(r3)				# 88
	stw	r2, -88(r3)				# 88
	mfspr	r31, 8				# 88
	mr	r2, r5				# 88
	stw	r31, -92(r3)				# 88
	addi	r3, r3, -96				# 88
	bl	min_caml_create_float_array				# 88
	addi	r3, r3, 96				# 88
	lwz	r31, -92(r3)				# 88
	mtspr	8, r31				# 88
	addis	r5, 0, ha16(v3.5695)
	ori	r5, r5, lo16(v3.5695)
	stw	r2, 0(r5)
	lwz	r5, -16(r3)				# 89
	lwz	r6, -88(r3)				# 89
	stw	r2, -92(r3)				# 89
	mfspr	r31, 8				# 89
	mr	r2, r5				# 89
	mr	r5, r6				# 89
	stw	r31, -96(r3)				# 89
	addi	r3, r3, -100				# 89
	bl	min_caml_create_array				# 89
	addi	r3, r3, 100				# 89
	lwz	r31, -96(r3)				# 89
	mtspr	8, r31				# 89
	addis	r5, 0, ha16(consts.5696)
	ori	r5, r5, lo16(consts.5696)
	stw	r2, 0(r5)
	mr	r5, r4				# 90
	addi	r4, r4, 8				# 90
	stw	r2, 4(r5)				# 90
	lwz	r2, -92(r3)				# 90
	stw	r2, 0(r5)				# 90
	addis	r6, 0, ha16(light_dirvec.2461)
	ori	r6, r6, lo16(light_dirvec.2461)
	stw	r5, 0(r6)
	lfs	f0, -12(r3)				# 94
	lwz	r6, -4(r3)				# 94
	stw	r5, -96(r3)				# 94
	mfspr	r31, 8				# 94
	mr	r2, r6				# 94
	stw	r31, -100(r3)				# 94
	addi	r3, r3, -104				# 94
	bl	min_caml_create_float_array				# 94
	addi	r3, r3, 104				# 94
	lwz	r31, -100(r3)				# 94
	mtspr	8, r31				# 94
	addis	r5, 0, ha16(dummyf3.5684)
	ori	r5, r5, lo16(dummyf3.5684)
	stw	r2, 0(r5)
	mr	r5, r2
	lwz	r2, -4(r3)				# 95
	stw	r5, -100(r3)				# 95
	mfspr	r31, 8				# 95
	stw	r31, -104(r3)				# 95
	addi	r3, r3, -108				# 95
	bl	min_caml_create_array				# 95
	addi	r3, r3, 108				# 95
	lwz	r31, -104(r3)				# 95
	mtspr	8, r31				# 95
	addis	r5, 0, ha16(dummyff3.5685)
	ori	r5, r5, lo16(dummyff3.5685)
	stw	r2, 0(r5)
	mr	r5, r4				# 96
	addi	r4, r4, 8				# 96
	stw	r2, 4(r5)				# 96
	lwz	r2, -100(r3)				# 96
	stw	r2, 0(r5)				# 96
	mr	r2, r5				# 96
	addis	r5, 0, ha16(dummydv.5686)
	ori	r5, r5, lo16(dummydv.5686)
	stw	r2, 0(r5)
	addi	r5, 0, 180
	mr	r6, r4				# 97
	addi	r4, r4, 12				# 97
	lfs	f0, -12(r3)				# 97
	stfs	f0, 8(r6)				# 97
	stw	r2, 4(r6)				# 97
	lwz	r2, -4(r3)				# 97
	stw	r2, 0(r6)				# 97
	addis	r7, 0, ha16(Tt331.5688)
	ori	r7, r7, lo16(Tt331.5688)
	stw	r6, 0(r7)
	mfspr	r31, 8				# 97
	mr	r2, r5				# 97
	mr	r5, r6				# 97
	stw	r31, -104(r3)				# 97
	addi	r3, r3, -108				# 97
	bl	min_caml_create_array				# 97
	addi	r3, r3, 108				# 97
	lwz	r31, -104(r3)				# 97
	mtspr	8, r31				# 97
	addis	r5, 0, ha16(reflections.2462)
	ori	r5, r5, lo16(reflections.2462)
	stw	r2, 0(r5)
	lwz	r5, 0(r3)				# 101
	lwz	r6, -4(r3)				# 101
	stw	r2, -104(r3)				# 101
	mfspr	r31, 8				# 101
	mr	r2, r5				# 101
	mr	r5, r6				# 101
	stw	r31, -108(r3)				# 101
	addi	r3, r3, -112				# 101
	bl	min_caml_create_array				# 101
	addi	r3, r3, 112				# 101
	lwz	r31, -108(r3)				# 101
	mtspr	8, r31				# 101
	addis	r5, 0, ha16(n_reflections.2463)
	ori	r5, r5, lo16(n_reflections.2463)
	stw	r2, 0(r5)
	addi	r5, 0, 128				# 2295
	lwz	r6, -4(r3)				# 2276
	slwi	r7, r6, 2				# 2276
	lwz	r8, -56(r3)				# 2276
	stwx	r5, r8, r7				# 2276
	lwz	r7, 0(r3)				# 2277
	slwi	r9, r7, 2				# 2277
	stwx	r5, r8, r9				# 2277
	addi	r9, 0, 64				# 2278
	slwi	r10, r6, 2				# 2278
	lwz	r11, -60(r3)				# 2278
	stwx	r9, r11, r10				# 2278
	slwi	r10, r7, 2				# 2279
	stwx	r9, r11, r10				# 2279
	addis	r31, 0, ha16(l.17621)
	ori	r31, r31, lo16(l.17621)
	lfs	f0, 0(r31)				# 2280
	stw	r2, -108(r3)				# 2280
	stfs	f0, -112(r3)				# 2280
	mfspr	r31, 8				# 2280
	mr	r2, r5				# 2280
	stw	r31, -116(r3)				# 2280
	addi	r3, r3, -120				# 2280
	bl	min_caml_float_of_int				# 2280
	addi	r3, r3, 120				# 2280
	lwz	r31, -116(r3)				# 2280
	mtspr	8, r31				# 2280
	lfs	f1, -112(r3)				# 2280
	fdiv	f0, f1, f0				# 2280
	lwz	r2, -4(r3)				# 2280
	slwi	r5, r2, 2				# 2280
	lwz	r6, -64(r3)				# 2280
	stfsx	f0, r6, r5				# 2280
	slwi	r5, r2, 2				# 2102
	lwz	r7, -56(r3)				# 2102
	lwzx	r5, r7, r5				# 2102
	lfs	f0, -12(r3)				# 2080
	lwz	r8, -24(r3)				# 2080
	stw	r5, -116(r3)				# 2080
	mfspr	r31, 8				# 2080
	mr	r2, r8				# 2080
	stw	r31, -120(r3)				# 2080
	addi	r3, r3, -124				# 2080
	bl	min_caml_create_float_array				# 2080
	addi	r3, r3, 124				# 2080
	lwz	r31, -120(r3)				# 2080
	mtspr	8, r31				# 2080
	lfs	f0, -12(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -120(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -124(r3)				# 2068
	addi	r3, r3, -128				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 128				# 2068
	lwz	r31, -124(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -124(r3)				# 2069
	addi	r3, r3, -128				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 128				# 2069
	lwz	r31, -124(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -124(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -128(r3)				# 2070
	addi	r3, r3, -132				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 132				# 2070
	lwz	r31, -128(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -124(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -128(r3)				# 2071
	addi	r3, r3, -132				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 132				# 2071
	lwz	r31, -128(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -124(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -128(r3)				# 2072
	addi	r3, r3, -132				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 132				# 2072
	lwz	r31, -128(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -124(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	addi	r2, 0, 4				# 2073
	lfs	f0, -12(r3)				# 2073
	stw	r2, -128(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -132(r3)				# 2073
	addi	r3, r3, -136				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 136				# 2073
	lwz	r31, -132(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -124(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, -84(r3)				# 2082
	lwz	r6, -4(r3)				# 2082
	mfspr	r31, 8				# 2082
	mr	r5, r6				# 2082
	stw	r31, -132(r3)				# 2082
	addi	r3, r3, -136				# 2082
	bl	min_caml_create_array				# 2082
	addi	r3, r3, 136				# 2082
	lwz	r31, -132(r3)				# 2082
	mtspr	8, r31				# 2082
	lwz	r5, -84(r3)				# 2083
	lwz	r6, -4(r3)				# 2083
	stw	r2, -132(r3)				# 2083
	mfspr	r31, 8				# 2083
	mr	r2, r5				# 2083
	mr	r5, r6				# 2083
	stw	r31, -136(r3)				# 2083
	addi	r3, r3, -140				# 2083
	bl	min_caml_create_array				# 2083
	addi	r3, r3, 140				# 2083
	lwz	r31, -136(r3)				# 2083
	mtspr	8, r31				# 2083
	lfs	f0, -12(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -136(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -140(r3)				# 2068
	addi	r3, r3, -144				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 144				# 2068
	lwz	r31, -140(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -140(r3)				# 2069
	addi	r3, r3, -144				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 144				# 2069
	lwz	r31, -140(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -140(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -144(r3)				# 2070
	addi	r3, r3, -148				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 148				# 2070
	lwz	r31, -144(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -140(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -144(r3)				# 2071
	addi	r3, r3, -148				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 148				# 2071
	lwz	r31, -144(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -140(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -144(r3)				# 2072
	addi	r3, r3, -148				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 148				# 2072
	lwz	r31, -144(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -140(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, -12(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -144(r3)				# 2073
	addi	r3, r3, -148				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 148				# 2073
	lwz	r31, -144(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -140(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lfs	f0, -12(r3)				# 2068
	lwz	r2, -24(r3)				# 2068
	mfspr	r31, 8				# 2068
	stw	r31, -144(r3)				# 2068
	addi	r3, r3, -148				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 148				# 2068
	lwz	r31, -144(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -144(r3)				# 2069
	addi	r3, r3, -148				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 148				# 2069
	lwz	r31, -144(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -144(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -148(r3)				# 2070
	addi	r3, r3, -152				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 152				# 2070
	lwz	r31, -148(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -144(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -148(r3)				# 2071
	addi	r3, r3, -152				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 152				# 2071
	lwz	r31, -148(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -144(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -148(r3)				# 2072
	addi	r3, r3, -152				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 152				# 2072
	lwz	r31, -148(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -144(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, -12(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -148(r3)				# 2073
	addi	r3, r3, -152				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 152				# 2073
	lwz	r31, -148(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -144(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, 0(r3)				# 2086
	lwz	r6, -4(r3)				# 2086
	mfspr	r31, 8				# 2086
	mr	r5, r6				# 2086
	stw	r31, -148(r3)				# 2086
	addi	r3, r3, -152				# 2086
	bl	min_caml_create_array				# 2086
	addi	r3, r3, 152				# 2086
	lwz	r31, -148(r3)				# 2086
	mtspr	8, r31				# 2086
	lfs	f0, -12(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -148(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -152(r3)				# 2068
	addi	r3, r3, -156				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 156				# 2068
	lwz	r31, -152(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -152(r3)				# 2069
	addi	r3, r3, -156				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 156				# 2069
	lwz	r31, -152(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -152(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -156(r3)				# 2070
	addi	r3, r3, -160				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 160				# 2070
	lwz	r31, -156(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -152(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -156(r3)				# 2071
	addi	r3, r3, -160				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 160				# 2071
	lwz	r31, -156(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -152(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -156(r3)				# 2072
	addi	r3, r3, -160				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 160				# 2072
	lwz	r31, -156(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -152(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, -12(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -156(r3)				# 2073
	addi	r3, r3, -160				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 160				# 2073
	lwz	r31, -156(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -152(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	mr	r2, r4				# 2088
	addi	r4, r4, 32				# 2088
	stw	r5, 28(r2)				# 2088
	lwz	r5, -148(r3)				# 2088
	stw	r5, 24(r2)				# 2088
	lwz	r5, -144(r3)				# 2088
	stw	r5, 20(r2)				# 2088
	lwz	r5, -140(r3)				# 2088
	stw	r5, 16(r2)				# 2088
	lwz	r5, -136(r3)				# 2088
	stw	r5, 12(r2)				# 2088
	lwz	r5, -132(r3)				# 2088
	stw	r5, 8(r2)				# 2088
	lwz	r5, -124(r3)				# 2088
	stw	r5, 4(r2)				# 2088
	lwz	r5, -120(r3)				# 2088
	stw	r5, 0(r2)				# 2088
	mr	r5, r2				# 2088
	lwz	r2, -116(r3)				# 2102
	mfspr	r31, 8				# 2102
	stw	r31, -156(r3)				# 2102
	addi	r3, r3, -160				# 2102
	bl	min_caml_create_array				# 2102
	addi	r3, r3, 160				# 2102
	lwz	r31, -156(r3)				# 2102
	mtspr	8, r31				# 2102
	lwz	r5, -4(r3)				# 2103
	slwi	r6, r5, 2				# 2103
	lwz	r7, -56(r3)				# 2103
	lwzx	r6, r7, r6				# 2103
	lwz	r8, -52(r3)				# 2103
	sub	r6, r6, r8				# 2103
	mfspr	r31, 8				# 2103
	mr	r5, r6				# 2103
	stw	r31, -156(r3)				# 2103
	addi	r3, r3, -160				# 2103
	bl	init_line_elements.2907				# 2103
	addi	r3, r3, 160				# 2103
	lwz	r31, -156(r3)				# 2103
	mtspr	8, r31				# 2103
	lwz	r5, -4(r3)				# 2102
	slwi	r6, r5, 2				# 2102
	lwz	r7, -56(r3)				# 2102
	lwzx	r6, r7, r6				# 2102
	lfs	f0, -12(r3)				# 2080
	lwz	r8, -24(r3)				# 2080
	stw	r2, -156(r3)				# 2080
	stw	r6, -160(r3)				# 2080
	mfspr	r31, 8				# 2080
	mr	r2, r8				# 2080
	stw	r31, -164(r3)				# 2080
	addi	r3, r3, -168				# 2080
	bl	min_caml_create_float_array				# 2080
	addi	r3, r3, 168				# 2080
	lwz	r31, -164(r3)				# 2080
	mtspr	8, r31				# 2080
	lfs	f0, -12(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -164(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -168(r3)				# 2068
	addi	r3, r3, -172				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 172				# 2068
	lwz	r31, -168(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -168(r3)				# 2069
	addi	r3, r3, -172				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 172				# 2069
	lwz	r31, -168(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -168(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -172(r3)				# 2070
	addi	r3, r3, -176				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 176				# 2070
	lwz	r31, -172(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -168(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -172(r3)				# 2071
	addi	r3, r3, -176				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 176				# 2071
	lwz	r31, -172(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -168(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -172(r3)				# 2072
	addi	r3, r3, -176				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 176				# 2072
	lwz	r31, -172(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -168(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, -12(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -172(r3)				# 2073
	addi	r3, r3, -176				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 176				# 2073
	lwz	r31, -172(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -168(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, -84(r3)				# 2082
	lwz	r6, -4(r3)				# 2082
	mfspr	r31, 8				# 2082
	mr	r5, r6				# 2082
	stw	r31, -172(r3)				# 2082
	addi	r3, r3, -176				# 2082
	bl	min_caml_create_array				# 2082
	addi	r3, r3, 176				# 2082
	lwz	r31, -172(r3)				# 2082
	mtspr	8, r31				# 2082
	lwz	r5, -84(r3)				# 2083
	lwz	r6, -4(r3)				# 2083
	stw	r2, -172(r3)				# 2083
	mfspr	r31, 8				# 2083
	mr	r2, r5				# 2083
	mr	r5, r6				# 2083
	stw	r31, -176(r3)				# 2083
	addi	r3, r3, -180				# 2083
	bl	min_caml_create_array				# 2083
	addi	r3, r3, 180				# 2083
	lwz	r31, -176(r3)				# 2083
	mtspr	8, r31				# 2083
	lfs	f0, -12(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -176(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -180(r3)				# 2068
	addi	r3, r3, -184				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 184				# 2068
	lwz	r31, -180(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -180(r3)				# 2069
	addi	r3, r3, -184				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 184				# 2069
	lwz	r31, -180(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -180(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -184(r3)				# 2070
	addi	r3, r3, -188				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 188				# 2070
	lwz	r31, -184(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -180(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -184(r3)				# 2071
	addi	r3, r3, -188				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 188				# 2071
	lwz	r31, -184(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -180(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -184(r3)				# 2072
	addi	r3, r3, -188				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 188				# 2072
	lwz	r31, -184(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -180(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, -12(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -184(r3)				# 2073
	addi	r3, r3, -188				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 188				# 2073
	lwz	r31, -184(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -180(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lfs	f0, -12(r3)				# 2068
	lwz	r2, -24(r3)				# 2068
	mfspr	r31, 8				# 2068
	stw	r31, -184(r3)				# 2068
	addi	r3, r3, -188				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 188				# 2068
	lwz	r31, -184(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -184(r3)				# 2069
	addi	r3, r3, -188				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 188				# 2069
	lwz	r31, -184(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -184(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -188(r3)				# 2070
	addi	r3, r3, -192				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 192				# 2070
	lwz	r31, -188(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -184(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -188(r3)				# 2071
	addi	r3, r3, -192				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 192				# 2071
	lwz	r31, -188(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -184(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -188(r3)				# 2072
	addi	r3, r3, -192				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 192				# 2072
	lwz	r31, -188(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -184(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, -12(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -188(r3)				# 2073
	addi	r3, r3, -192				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 192				# 2073
	lwz	r31, -188(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -184(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, 0(r3)				# 2086
	lwz	r6, -4(r3)				# 2086
	mfspr	r31, 8				# 2086
	mr	r5, r6				# 2086
	stw	r31, -188(r3)				# 2086
	addi	r3, r3, -192				# 2086
	bl	min_caml_create_array				# 2086
	addi	r3, r3, 192				# 2086
	lwz	r31, -188(r3)				# 2086
	mtspr	8, r31				# 2086
	lfs	f0, -12(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -188(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -192(r3)				# 2068
	addi	r3, r3, -196				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 196				# 2068
	lwz	r31, -192(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -192(r3)				# 2069
	addi	r3, r3, -196				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 196				# 2069
	lwz	r31, -192(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -192(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -196(r3)				# 2070
	addi	r3, r3, -200				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 200				# 2070
	lwz	r31, -196(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -192(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -196(r3)				# 2071
	addi	r3, r3, -200				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 200				# 2071
	lwz	r31, -196(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -192(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -196(r3)				# 2072
	addi	r3, r3, -200				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 200				# 2072
	lwz	r31, -196(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -192(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, -12(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -196(r3)				# 2073
	addi	r3, r3, -200				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 200				# 2073
	lwz	r31, -196(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -192(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	mr	r2, r4				# 2088
	addi	r4, r4, 32				# 2088
	stw	r5, 28(r2)				# 2088
	lwz	r5, -188(r3)				# 2088
	stw	r5, 24(r2)				# 2088
	lwz	r5, -184(r3)				# 2088
	stw	r5, 20(r2)				# 2088
	lwz	r5, -180(r3)				# 2088
	stw	r5, 16(r2)				# 2088
	lwz	r5, -176(r3)				# 2088
	stw	r5, 12(r2)				# 2088
	lwz	r5, -172(r3)				# 2088
	stw	r5, 8(r2)				# 2088
	lwz	r5, -168(r3)				# 2088
	stw	r5, 4(r2)				# 2088
	lwz	r5, -164(r3)				# 2088
	stw	r5, 0(r2)				# 2088
	mr	r5, r2				# 2088
	lwz	r2, -160(r3)				# 2102
	mfspr	r31, 8				# 2102
	stw	r31, -196(r3)				# 2102
	addi	r3, r3, -200				# 2102
	bl	min_caml_create_array				# 2102
	addi	r3, r3, 200				# 2102
	lwz	r31, -196(r3)				# 2102
	mtspr	8, r31				# 2102
	lwz	r5, -4(r3)				# 2103
	slwi	r6, r5, 2				# 2103
	lwz	r7, -56(r3)				# 2103
	lwzx	r6, r7, r6				# 2103
	lwz	r8, -52(r3)				# 2103
	sub	r6, r6, r8				# 2103
	mfspr	r31, 8				# 2103
	mr	r5, r6				# 2103
	stw	r31, -196(r3)				# 2103
	addi	r3, r3, -200				# 2103
	bl	init_line_elements.2907				# 2103
	addi	r3, r3, 200				# 2103
	lwz	r31, -196(r3)				# 2103
	mtspr	8, r31				# 2103
	lwz	r5, -4(r3)				# 2102
	slwi	r6, r5, 2				# 2102
	lwz	r7, -56(r3)				# 2102
	lwzx	r6, r7, r6				# 2102
	lfs	f0, -12(r3)				# 2080
	lwz	r8, -24(r3)				# 2080
	stw	r2, -196(r3)				# 2080
	stw	r6, -200(r3)				# 2080
	mfspr	r31, 8				# 2080
	mr	r2, r8				# 2080
	stw	r31, -204(r3)				# 2080
	addi	r3, r3, -208				# 2080
	bl	min_caml_create_float_array				# 2080
	addi	r3, r3, 208				# 2080
	lwz	r31, -204(r3)				# 2080
	mtspr	8, r31				# 2080
	lfs	f0, -12(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -204(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -208(r3)				# 2068
	addi	r3, r3, -212				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 212				# 2068
	lwz	r31, -208(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -208(r3)				# 2069
	addi	r3, r3, -212				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 212				# 2069
	lwz	r31, -208(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -208(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -212(r3)				# 2070
	addi	r3, r3, -216				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 216				# 2070
	lwz	r31, -212(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -208(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -212(r3)				# 2071
	addi	r3, r3, -216				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 216				# 2071
	lwz	r31, -212(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -208(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -212(r3)				# 2072
	addi	r3, r3, -216				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 216				# 2072
	lwz	r31, -212(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -208(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, -12(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -212(r3)				# 2073
	addi	r3, r3, -216				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 216				# 2073
	lwz	r31, -212(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -208(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, -84(r3)				# 2082
	lwz	r6, -4(r3)				# 2082
	mfspr	r31, 8				# 2082
	mr	r5, r6				# 2082
	stw	r31, -212(r3)				# 2082
	addi	r3, r3, -216				# 2082
	bl	min_caml_create_array				# 2082
	addi	r3, r3, 216				# 2082
	lwz	r31, -212(r3)				# 2082
	mtspr	8, r31				# 2082
	lwz	r5, -84(r3)				# 2083
	lwz	r6, -4(r3)				# 2083
	stw	r2, -212(r3)				# 2083
	mfspr	r31, 8				# 2083
	mr	r2, r5				# 2083
	mr	r5, r6				# 2083
	stw	r31, -216(r3)				# 2083
	addi	r3, r3, -220				# 2083
	bl	min_caml_create_array				# 2083
	addi	r3, r3, 220				# 2083
	lwz	r31, -216(r3)				# 2083
	mtspr	8, r31				# 2083
	lfs	f0, -12(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -216(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -220(r3)				# 2068
	addi	r3, r3, -224				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 224				# 2068
	lwz	r31, -220(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -220(r3)				# 2069
	addi	r3, r3, -224				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 224				# 2069
	lwz	r31, -220(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -220(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -224(r3)				# 2070
	addi	r3, r3, -228				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 228				# 2070
	lwz	r31, -224(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -220(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -224(r3)				# 2071
	addi	r3, r3, -228				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 228				# 2071
	lwz	r31, -224(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -220(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -224(r3)				# 2072
	addi	r3, r3, -228				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 228				# 2072
	lwz	r31, -224(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -220(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, -12(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -224(r3)				# 2073
	addi	r3, r3, -228				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 228				# 2073
	lwz	r31, -224(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -220(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lfs	f0, -12(r3)				# 2068
	lwz	r2, -24(r3)				# 2068
	mfspr	r31, 8				# 2068
	stw	r31, -224(r3)				# 2068
	addi	r3, r3, -228				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 228				# 2068
	lwz	r31, -224(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -224(r3)				# 2069
	addi	r3, r3, -228				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 228				# 2069
	lwz	r31, -224(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -224(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -228(r3)				# 2070
	addi	r3, r3, -232				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 232				# 2070
	lwz	r31, -228(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -224(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -228(r3)				# 2071
	addi	r3, r3, -232				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 232				# 2071
	lwz	r31, -228(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -224(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -228(r3)				# 2072
	addi	r3, r3, -232				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 232				# 2072
	lwz	r31, -228(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -224(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, -12(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -228(r3)				# 2073
	addi	r3, r3, -232				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 232				# 2073
	lwz	r31, -228(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -224(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	lwz	r2, 0(r3)				# 2086
	lwz	r6, -4(r3)				# 2086
	mfspr	r31, 8				# 2086
	mr	r5, r6				# 2086
	stw	r31, -228(r3)				# 2086
	addi	r3, r3, -232				# 2086
	bl	min_caml_create_array				# 2086
	addi	r3, r3, 232				# 2086
	lwz	r31, -228(r3)				# 2086
	mtspr	8, r31				# 2086
	lfs	f0, -12(r3)				# 2068
	lwz	r5, -24(r3)				# 2068
	stw	r2, -228(r3)				# 2068
	mfspr	r31, 8				# 2068
	mr	r2, r5				# 2068
	stw	r31, -232(r3)				# 2068
	addi	r3, r3, -236				# 2068
	bl	min_caml_create_float_array				# 2068
	addi	r3, r3, 236				# 2068
	lwz	r31, -232(r3)				# 2068
	mr	r5, r2				# 2068
	mtspr	8, r31				# 2068
	lwz	r2, -84(r3)				# 2069
	mfspr	r31, 8				# 2069
	stw	r31, -232(r3)				# 2069
	addi	r3, r3, -236				# 2069
	bl	min_caml_create_array				# 2069
	addi	r3, r3, 236				# 2069
	lwz	r31, -232(r3)				# 2069
	mtspr	8, r31				# 2069
	lfs	f0, -12(r3)				# 2070
	lwz	r5, -24(r3)				# 2070
	stw	r2, -232(r3)				# 2070
	mfspr	r31, 8				# 2070
	mr	r2, r5				# 2070
	stw	r31, -236(r3)				# 2070
	addi	r3, r3, -240				# 2070
	bl	min_caml_create_float_array				# 2070
	addi	r3, r3, 240				# 2070
	lwz	r31, -236(r3)				# 2070
	mtspr	8, r31				# 2070
	lwz	r5, 0(r3)				# 2070
	slwi	r6, r5, 2				# 2070
	lwz	r7, -232(r3)				# 2070
	stwx	r2, r7, r6				# 2070
	lfs	f0, -12(r3)				# 2071
	lwz	r2, -24(r3)				# 2071
	mfspr	r31, 8				# 2071
	stw	r31, -236(r3)				# 2071
	addi	r3, r3, -240				# 2071
	bl	min_caml_create_float_array				# 2071
	addi	r3, r3, 240				# 2071
	lwz	r31, -236(r3)				# 2071
	mtspr	8, r31				# 2071
	lwz	r5, -52(r3)				# 2071
	slwi	r6, r5, 2				# 2071
	lwz	r7, -232(r3)				# 2071
	stwx	r2, r7, r6				# 2071
	lfs	f0, -12(r3)				# 2072
	lwz	r2, -24(r3)				# 2072
	mfspr	r31, 8				# 2072
	stw	r31, -236(r3)				# 2072
	addi	r3, r3, -240				# 2072
	bl	min_caml_create_float_array				# 2072
	addi	r3, r3, 240				# 2072
	lwz	r31, -236(r3)				# 2072
	mtspr	8, r31				# 2072
	lwz	r5, -24(r3)				# 2072
	slwi	r6, r5, 2				# 2072
	lwz	r7, -232(r3)				# 2072
	stwx	r2, r7, r6				# 2072
	lfs	f0, -12(r3)				# 2073
	mfspr	r31, 8				# 2073
	mr	r2, r5				# 2073
	stw	r31, -236(r3)				# 2073
	addi	r3, r3, -240				# 2073
	bl	min_caml_create_float_array				# 2073
	addi	r3, r3, 240				# 2073
	lwz	r31, -236(r3)				# 2073
	mtspr	8, r31				# 2073
	lwz	r5, -232(r3)				# 2073
	stw	r2, 16(r5)				# 2073
	mr	r2, r4				# 2088
	addi	r4, r4, 32				# 2088
	stw	r5, 28(r2)				# 2088
	lwz	r5, -228(r3)				# 2088
	stw	r5, 24(r2)				# 2088
	lwz	r5, -224(r3)				# 2088
	stw	r5, 20(r2)				# 2088
	lwz	r5, -220(r3)				# 2088
	stw	r5, 16(r2)				# 2088
	lwz	r5, -216(r3)				# 2088
	stw	r5, 12(r2)				# 2088
	lwz	r5, -212(r3)				# 2088
	stw	r5, 8(r2)				# 2088
	lwz	r5, -208(r3)				# 2088
	stw	r5, 4(r2)				# 2088
	lwz	r5, -204(r3)				# 2088
	stw	r5, 0(r2)				# 2088
	mr	r5, r2				# 2088
	lwz	r2, -200(r3)				# 2102
	mfspr	r31, 8				# 2102
	stw	r31, -236(r3)				# 2102
	addi	r3, r3, -240				# 2102
	bl	min_caml_create_array				# 2102
	addi	r3, r3, 240				# 2102
	lwz	r31, -236(r3)				# 2102
	mtspr	8, r31				# 2102
	lwz	r5, -4(r3)				# 2103
	slwi	r6, r5, 2				# 2103
	lwz	r7, -56(r3)				# 2103
	lwzx	r6, r7, r6				# 2103
	lwz	r8, -52(r3)				# 2103
	sub	r6, r6, r8				# 2103
	mfspr	r31, 8				# 2103
	mr	r5, r6				# 2103
	stw	r31, -236(r3)				# 2103
	addi	r3, r3, -240				# 2103
	bl	init_line_elements.2907				# 2103
	addi	r3, r3, 240				# 2103
	lwz	r31, -236(r3)				# 2103
	mtspr	8, r31				# 2103
	stw	r2, -236(r3)				# 562
	mfspr	r31, 8				# 562
	stw	r31, -240(r3)				# 562
	addi	r3, r3, -244				# 562
	bl	min_caml_read_float				# 562
	addi	r3, r3, 244				# 562
	lwz	r31, -240(r3)				# 562
	mtspr	8, r31				# 562
	lwz	r2, -4(r3)				# 562
	slwi	r5, r2, 2				# 562
	lwz	r6, -28(r3)				# 562
	stfsx	f0, r6, r5				# 562
	mfspr	r31, 8				# 563
	stw	r31, -240(r3)				# 563
	addi	r3, r3, -244				# 563
	bl	min_caml_read_float				# 563
	addi	r3, r3, 244				# 563
	lwz	r31, -240(r3)				# 563
	mtspr	8, r31				# 563
	lwz	r2, 0(r3)				# 563
	slwi	r5, r2, 2				# 563
	lwz	r6, -28(r3)				# 563
	stfsx	f0, r6, r5				# 563
	mfspr	r31, 8				# 564
	stw	r31, -240(r3)				# 564
	addi	r3, r3, -244				# 564
	bl	min_caml_read_float				# 564
	addi	r3, r3, 244				# 564
	lwz	r31, -240(r3)				# 564
	mtspr	8, r31				# 564
	lwz	r2, -52(r3)				# 564
	slwi	r5, r2, 2				# 564
	lwz	r6, -28(r3)				# 564
	stfsx	f0, r6, r5				# 564
	mfspr	r31, 8				# 566
	stw	r31, -240(r3)				# 566
	addi	r3, r3, -244				# 566
	bl	min_caml_read_float				# 566
	addi	r3, r3, 244				# 566
	lwz	r31, -240(r3)				# 566
	mtspr	8, r31				# 566
	addis	r31, 0, ha16(l.16067)
	ori	r31, r31, lo16(l.16067)
	lfs	f1, 0(r31)				# 555
	fmul	f0, f0, f1				# 555
	stfs	f1, -240(r3)				# 567
	stfs	f0, -244(r3)				# 567
	mfspr	r31, 8				# 567
	stw	r31, -248(r3)				# 567
	addi	r3, r3, -252				# 567
	bl	min_caml_cos				# 567
	addi	r3, r3, 252				# 567
	lwz	r31, -248(r3)				# 567
	mtspr	8, r31				# 567
	lfs	f1, -244(r3)				# 568
	stfs	f0, -248(r3)				# 568
	mfspr	r31, 8				# 568
	fmr	f0, f1				# 568
	stw	r31, -252(r3)				# 568
	addi	r3, r3, -256				# 568
	bl	min_caml_sin				# 568
	addi	r3, r3, 256				# 568
	lwz	r31, -252(r3)				# 568
	mtspr	8, r31				# 568
	stfs	f0, -252(r3)				# 569
	mfspr	r31, 8				# 569
	stw	r31, -256(r3)				# 569
	addi	r3, r3, -260				# 569
	bl	min_caml_read_float				# 569
	addi	r3, r3, 260				# 569
	lwz	r31, -256(r3)				# 569
	mtspr	8, r31				# 569
	lfs	f1, -240(r3)				# 555
	fmul	f0, f0, f1				# 555
	stfs	f0, -256(r3)				# 570
	mfspr	r31, 8				# 570
	stw	r31, -260(r3)				# 570
	addi	r3, r3, -264				# 570
	bl	min_caml_cos				# 570
	addi	r3, r3, 264				# 570
	lwz	r31, -260(r3)				# 570
	mtspr	8, r31				# 570
	lfs	f1, -256(r3)				# 571
	stfs	f0, -260(r3)				# 571
	mfspr	r31, 8				# 571
	fmr	f0, f1				# 571
	stw	r31, -264(r3)				# 571
	addi	r3, r3, -268				# 571
	bl	min_caml_sin				# 571
	addi	r3, r3, 268				# 571
	lwz	r31, -264(r3)				# 571
	mtspr	8, r31				# 571
	lfs	f1, -248(r3)				# 573
	fmul	f2, f1, f0				# 573
	addis	r31, 0, ha16(l.17707)
	ori	r31, r31, lo16(l.17707)
	lfs	f3, 0(r31)				# 573
	fmul	f2, f2, f3				# 573
	lwz	r2, -4(r3)				# 573
	slwi	r5, r2, 2				# 573
	lwz	r6, -76(r3)				# 573
	stfsx	f2, r6, r5				# 573
	addis	r31, 0, ha16(l.17709)
	ori	r31, r31, lo16(l.17709)
	lfs	f2, 0(r31)				# 574
	lfs	f4, -252(r3)				# 574
	fmul	f2, f4, f2				# 574
	lwz	r5, 0(r3)				# 574
	slwi	r7, r5, 2				# 574
	stfsx	f2, r6, r7				# 574
	lfs	f2, -260(r3)				# 575
	fmul	f5, f1, f2				# 575
	fmul	f3, f5, f3				# 575
	lwz	r7, -52(r3)				# 575
	slwi	r8, r7, 2				# 575
	stfsx	f3, r6, r8				# 575
	slwi	r8, r2, 2				# 577
	lwz	r9, -68(r3)				# 577
	stfsx	f2, r9, r8				# 577
	slwi	r8, r5, 2				# 578
	lfs	f3, -12(r3)				# 578
	stfsx	f3, r9, r8				# 578
	fneg	f5, f0				# 107
	slwi	r8, r7, 2				# 579
	stfsx	f5, r9, r8				# 579
	fneg	f4, f4				# 107
	fmul	f0, f4, f0				# 581
	slwi	r8, r2, 2				# 581
	lwz	r9, -72(r3)				# 581
	stfsx	f0, r9, r8				# 581
	fneg	f0, f1				# 107
	slwi	r8, r5, 2				# 582
	stfsx	f0, r9, r8				# 582
	fmul	f0, f4, f2				# 583
	slwi	r8, r7, 2				# 583
	stfsx	f0, r9, r8				# 583
	slwi	r8, r2, 2				# 585
	lwz	r10, -28(r3)				# 585
	lfsx	f0, r10, r8				# 585
	slwi	r8, r2, 2				# 585
	lfsx	f1, r6, r8				# 585
	fsub	f0, f0, f1				# 585
	slwi	r8, r2, 2				# 585
	lwz	r11, -32(r3)				# 585
	stfsx	f0, r11, r8				# 585
	slwi	r8, r5, 2				# 586
	lfsx	f0, r10, r8				# 586
	slwi	r8, r5, 2				# 586
	lfsx	f1, r6, r8				# 586
	fsub	f0, f0, f1				# 586
	slwi	r8, r5, 2				# 586
	stfsx	f0, r11, r8				# 586
	slwi	r8, r7, 2				# 587
	lfsx	f0, r10, r8				# 587
	slwi	r8, r7, 2				# 587
	lfsx	f1, r6, r8				# 587
	fsub	f0, f0, f1				# 587
	slwi	r8, r7, 2				# 587
	stfsx	f0, r11, r8				# 587
	mfspr	r31, 8				# 594
	stw	r31, -264(r3)				# 594
	addi	r3, r3, -268				# 594
	bl	min_caml_read_int				# 594
	addi	r3, r3, 268				# 594
	lwz	r31, -264(r3)				# 594
	mtspr	8, r31				# 594
	mfspr	r31, 8				# 597
	stw	r31, -264(r3)				# 597
	addi	r3, r3, -268				# 597
	bl	min_caml_read_float				# 597
	addi	r3, r3, 268				# 597
	lwz	r31, -264(r3)				# 597
	mtspr	8, r31				# 597
	lfs	f1, -240(r3)				# 555
	fmul	f0, f0, f1				# 555
	stfs	f0, -264(r3)				# 598
	mfspr	r31, 8				# 598
	stw	r31, -268(r3)				# 598
	addi	r3, r3, -272				# 598
	bl	min_caml_sin				# 598
	addi	r3, r3, 272				# 598
	lwz	r31, -268(r3)				# 598
	mtspr	8, r31				# 598
	fneg	f0, f0				# 107
	lwz	r2, 0(r3)				# 599
	slwi	r5, r2, 2				# 599
	lwz	r6, -36(r3)				# 599
	stfsx	f0, r6, r5				# 599
	mfspr	r31, 8				# 600
	stw	r31, -268(r3)				# 600
	addi	r3, r3, -272				# 600
	bl	min_caml_read_float				# 600
	addi	r3, r3, 272				# 600
	lwz	r31, -268(r3)				# 600
	mtspr	8, r31				# 600
	lfs	f1, -240(r3)				# 555
	fmul	f0, f0, f1				# 555
	lfs	f1, -264(r3)				# 601
	stfs	f0, -268(r3)				# 601
	mfspr	r31, 8				# 601
	fmr	f0, f1				# 601
	stw	r31, -272(r3)				# 601
	addi	r3, r3, -276				# 601
	bl	min_caml_cos				# 601
	addi	r3, r3, 276				# 601
	lwz	r31, -272(r3)				# 601
	mtspr	8, r31				# 601
	lfs	f1, -268(r3)				# 602
	stfs	f0, -272(r3)				# 602
	mfspr	r31, 8				# 602
	fmr	f0, f1				# 602
	stw	r31, -276(r3)				# 602
	addi	r3, r3, -280				# 602
	bl	min_caml_sin				# 602
	addi	r3, r3, 280				# 602
	lwz	r31, -276(r3)				# 602
	mtspr	8, r31				# 602
	lfs	f1, -272(r3)				# 603
	fmul	f0, f1, f0				# 603
	lwz	r2, -4(r3)				# 603
	slwi	r5, r2, 2				# 603
	lwz	r6, -36(r3)				# 603
	stfsx	f0, r6, r5				# 603
	lfs	f0, -268(r3)				# 604
	mfspr	r31, 8				# 604
	stw	r31, -276(r3)				# 604
	addi	r3, r3, -280				# 604
	bl	min_caml_cos				# 604
	addi	r3, r3, 280				# 604
	lwz	r31, -276(r3)				# 604
	mtspr	8, r31				# 604
	lfs	f1, -272(r3)				# 605
	fmul	f0, f1, f0				# 605
	lwz	r2, -52(r3)				# 605
	slwi	r5, r2, 2				# 605
	lwz	r6, -36(r3)				# 605
	stfsx	f0, r6, r5				# 605
	mfspr	r31, 8				# 606
	stw	r31, -276(r3)				# 606
	addi	r3, r3, -280				# 606
	bl	min_caml_read_float				# 606
	addi	r3, r3, 280				# 606
	lwz	r31, -276(r3)				# 606
	mtspr	8, r31				# 606
	lwz	r2, -4(r3)				# 606
	slwi	r5, r2, 2				# 606
	lwz	r6, -40(r3)				# 606
	stfsx	f0, r6, r5				# 606
	mfspr	r31, 8				# 748
	stw	r31, -276(r3)				# 748
	addi	r3, r3, -280				# 748
	bl	read_object.2618				# 748
	addi	r3, r3, 280				# 748
	lwz	r31, -276(r3)				# 748
	mtspr	8, r31				# 748
	lwz	r2, -4(r3)				# 785
	mfspr	r31, 8				# 785
	stw	r31, -276(r3)				# 785
	addi	r3, r3, -280				# 785
	bl	read_and_network.2626				# 785
	addi	r3, r3, 280				# 785
	lwz	r31, -276(r3)				# 785
	mtspr	8, r31				# 785
	lwz	r2, -4(r3)				# 786
	mfspr	r31, 8				# 786
	stw	r31, -276(r3)				# 786
	addi	r3, r3, -280				# 786
	bl	read_or_network.2624				# 786
	addi	r3, r3, 280				# 786
	lwz	r31, -276(r3)				# 786
	mtspr	8, r31				# 786
	lwz	r5, -4(r3)				# 786
	slwi	r6, r5, 2				# 786
	lwz	r7, -48(r3)				# 786
	stwx	r2, r7, r6				# 786
	addi	r2, 0, 80				# 1931
	mfspr	r31, 8				# 1931
	stw	r31, -276(r3)				# 1931
	addi	r3, r3, -280				# 1931
	bl	min_caml_print_char				# 1931
	addi	r3, r3, 280				# 1931
	lwz	r31, -276(r3)				# 1931
	mtspr	8, r31				# 1931
	addi	r2, 0, 51				# 1932
	mfspr	r31, 8				# 1932
	stw	r31, -276(r3)				# 1932
	addi	r3, r3, -280				# 1932
	bl	min_caml_print_char				# 1932
	addi	r3, r3, 280				# 1932
	lwz	r31, -276(r3)				# 1932
	mtspr	8, r31				# 1932
	addi	r2, 0, 10				# 1933
	stw	r2, -276(r3)				# 1933
	mfspr	r31, 8				# 1933
	stw	r31, -280(r3)				# 1933
	addi	r3, r3, -284				# 1933
	bl	min_caml_print_char				# 1933
	addi	r3, r3, 284				# 1933
	lwz	r31, -280(r3)				# 1933
	mtspr	8, r31				# 1933
	lwz	r2, -4(r3)				# 1934
	slwi	r5, r2, 2				# 1934
	lwz	r6, -56(r3)				# 1934
	lwzx	r5, r6, r5				# 1934
	mfspr	r31, 8				# 1934
	mr	r2, r5				# 1934
	stw	r31, -280(r3)				# 1934
	addi	r3, r3, -284				# 1934
	bl	min_caml_print_int				# 1934
	addi	r3, r3, 284				# 1934
	lwz	r31, -280(r3)				# 1934
	mtspr	8, r31				# 1934
	addi	r2, 0, 32				# 1935
	stw	r2, -280(r3)				# 1935
	mfspr	r31, 8				# 1935
	stw	r31, -284(r3)				# 1935
	addi	r3, r3, -288				# 1935
	bl	min_caml_print_char				# 1935
	addi	r3, r3, 288				# 1935
	lwz	r31, -284(r3)				# 1935
	mtspr	8, r31				# 1935
	lwz	r2, 0(r3)				# 1936
	slwi	r5, r2, 2				# 1936
	lwz	r6, -56(r3)				# 1936
	lwzx	r5, r6, r5				# 1936
	mfspr	r31, 8				# 1936
	mr	r2, r5				# 1936
	stw	r31, -284(r3)				# 1936
	addi	r3, r3, -288				# 1936
	bl	min_caml_print_int				# 1936
	addi	r3, r3, 288				# 1936
	lwz	r31, -284(r3)				# 1936
	mtspr	8, r31				# 1936
	lwz	r2, -280(r3)				# 1937
	mfspr	r31, 8				# 1937
	stw	r31, -284(r3)				# 1937
	addi	r3, r3, -288				# 1937
	bl	min_caml_print_char				# 1937
	addi	r3, r3, 288				# 1937
	lwz	r31, -284(r3)				# 1937
	mtspr	8, r31				# 1937
	addi	r2, 0, 255				# 1938
	mfspr	r31, 8				# 1938
	stw	r31, -284(r3)				# 1938
	addi	r3, r3, -288				# 1938
	bl	min_caml_print_int				# 1938
	addi	r3, r3, 288				# 1938
	lwz	r31, -284(r3)				# 1938
	mtspr	8, r31				# 1938
	lwz	r2, -276(r3)				# 1939
	mfspr	r31, 8				# 1939
	stw	r31, -284(r3)				# 1939
	addi	r3, r3, -288				# 1939
	bl	min_caml_print_char				# 1939
	addi	r3, r3, 288				# 1939
	lwz	r31, -284(r3)				# 1939
	mtspr	8, r31				# 1939
	lwz	r2, -128(r3)				# 2208
	mfspr	r31, 8				# 2208
	stw	r31, -284(r3)				# 2208
	addi	r3, r3, -288				# 2208
	bl	create_dirvecs.2939				# 2208
	addi	r3, r3, 288				# 2208
	lwz	r31, -284(r3)				# 2208
	mtspr	8, r31				# 2208
	addi	r2, 0, 9				# 2209
	lwz	r5, -4(r3)				# 2209
	mfspr	r31, 8				# 2209
	mr	r6, r5				# 2209
	stw	r31, -284(r3)				# 2209
	addi	r3, r3, -288				# 2209
	bl	calc_dirvec_rows.2930				# 2209
	addi	r3, r3, 288				# 2209
	lwz	r31, -284(r3)				# 2209
	mtspr	8, r31				# 2209
	lwz	r2, -128(r3)				# 2210
	mfspr	r31, 8				# 2210
	stw	r31, -284(r3)				# 2210
	addi	r3, r3, -288				# 2210
	bl	init_vecset_constants.2944				# 2210
	addi	r3, r3, 288				# 2210
	lwz	r31, -284(r3)				# 2210
	mtspr	8, r31				# 2210
	lwz	r2, -4(r3)				# 166
	slwi	r5, r2, 2				# 166
	lwz	r6, -36(r3)				# 166
	lfsx	f0, r6, r5				# 166
	slwi	r5, r2, 2				# 166
	lwz	r7, -92(r3)				# 166
	stfsx	f0, r7, r5				# 166
	lwz	r5, 0(r3)				# 167
	slwi	r8, r5, 2				# 167
	lfsx	f0, r6, r8				# 167
	slwi	r8, r5, 2				# 167
	stfsx	f0, r7, r8				# 167
	lwz	r8, -52(r3)				# 168
	slwi	r9, r8, 2				# 168
	lfsx	f0, r6, r9				# 168
	slwi	r9, r8, 2				# 168
	stfsx	f0, r7, r9				# 168
	slwi	r7, r2, 2				# 1135
	lwz	r9, -8(r3)				# 1135
	lwzx	r7, r9, r7				# 1135
	sub	r7, r7, r5				# 1135
	lwz	r10, -96(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r5, r7				# 1135
	mr	r2, r10				# 1135
	stw	r31, -284(r3)				# 1135
	addi	r3, r3, -288				# 1135
	bl	iter_setup_dirvec_constants.2723				# 1135
	addi	r3, r3, 288				# 1135
	lwz	r31, -284(r3)				# 1135
	mtspr	8, r31				# 1135
	lwz	r2, -4(r3)				# 2289
	slwi	r5, r2, 2				# 2289
	lwz	r6, -8(r3)				# 2289
	lwzx	r5, r6, r5				# 2289
	lwz	r7, 0(r3)				# 2289
	sub	r5, r5, r7				# 2289
	cmpw	cr7, r2, r5				# 2255
	bgt	cr7, ble_else.21001				# 2255
	slwi	r8, r5, 2				# 2256
	lwz	r9, -20(r3)				# 2256
	lwzx	r8, r9, r8				# 2256
	lwz	r9, 8(r8)				# 262
	lwz	r10, -52(r3)				# 2257
	cmpw	cr7, r9, r10				# 2257
	bne	cr7, beq_else.21003				# 2257
	lwz	r9, 28(r8)				# 360
	slwi	r11, r2, 2				# 365
	lfsx	f0, r9, r11				# 365
	addis	r31, 0, ha16(l.16087)
	ori	r31, r31, lo16(l.16087)
	lfs	f1, 0(r31)				# 2258
	fcmpu	cr7, f1, f0				# 109
	bgt	cr7, ble_else.21005				# 109
	addi	r9, 0, 0				# 109
	b	ble_cont.21006				# 109
ble_else.21005:
	addi	r9, 0, 1				# 109
ble_cont.21006:
	cmpw	cr7, r9, r2				# 2258
	bne	cr7, beq_else.21007				# 2258
	b	beq_cont.21008				# 2258
beq_else.21007:
	lwz	r9, 4(r8)				# 252
	cmpw	cr7, r9, r7				# 2261
	bne	cr7, beq_else.21009				# 2261
	slwi	r5, r5, 2				# 2226
	slwi	r9, r2, 2				# 2227
	lwz	r11, -108(r3)				# 2227
	lwzx	r9, r11, r9				# 2227
	lwz	r8, 28(r8)				# 360
	slwi	r12, r2, 2				# 365
	lfsx	f0, r8, r12				# 365
	fsub	f0, f1, f0				# 2228
	slwi	r8, r2, 2				# 2229
	lwz	r12, -36(r3)				# 2229
	lfsx	f1, r12, r8				# 2229
	fneg	f1, f1				# 107
	slwi	r8, r7, 2				# 2230
	lfsx	f2, r12, r8				# 2230
	fneg	f2, f2				# 107
	slwi	r8, r10, 2				# 2231
	lfsx	f3, r12, r8				# 2231
	fneg	f3, f3				# 107
	add	r8, r5, r7				# 2232
	slwi	r13, r2, 2				# 2232
	lfsx	f4, r12, r13				# 2232
	lfs	f5, -12(r3)				# 2171
	lwz	r13, -24(r3)				# 2171
	stfs	f1, -284(r3)				# 2171
	stw	r5, -288(r3)				# 2171
	stw	r9, -292(r3)				# 2171
	stw	r8, -296(r3)				# 2171
	stfs	f0, -300(r3)				# 2171
	stfs	f3, -304(r3)				# 2171
	stfs	f2, -308(r3)				# 2171
	stfs	f4, -312(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r13				# 2171
	fmr	f0, f5				# 2171
	stw	r31, -316(r3)				# 2171
	addi	r3, r3, -320				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, 320				# 2171
	lwz	r31, -316(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, -4(r3)				# 2172
	slwi	r6, r2, 2				# 2172
	lwz	r7, -8(r3)				# 2172
	lwzx	r6, r7, r6				# 2172
	stw	r5, -316(r3)				# 2172
	mfspr	r31, 8				# 2172
	mr	r2, r6				# 2172
	stw	r31, -320(r3)				# 2172
	addi	r3, r3, -324				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, 324				# 2172
	lwz	r31, -320(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, -316(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	lwz	r6, -4(r3)				# 147
	slwi	r7, r6, 2				# 147
	lfs	f0, -312(r3)				# 147
	stfsx	f0, r2, r7				# 147
	lwz	r7, 0(r3)				# 148
	slwi	r8, r7, 2				# 148
	lfs	f0, -308(r3)				# 148
	stfsx	f0, r2, r8				# 148
	lwz	r8, -52(r3)				# 149
	slwi	r9, r8, 2				# 149
	lfs	f1, -304(r3)				# 149
	stfsx	f1, r2, r9				# 149
	slwi	r2, r6, 2				# 1135
	lwz	r9, -8(r3)				# 1135
	lwzx	r2, r9, r2				# 1135
	sub	r2, r2, r7				# 1135
	stw	r5, -320(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r30, r5				# 1135
	mr	r5, r2				# 1135
	mr	r2, r30				# 1135
	stw	r31, -324(r3)				# 1135
	addi	r3, r3, -328				# 1135
	bl	iter_setup_dirvec_constants.2723				# 1135
	addi	r3, r3, 328				# 1135
	lwz	r31, -324(r3)				# 1135
	mtspr	8, r31				# 1135
	mr	r2, r4				# 2221
	addi	r4, r4, 12				# 2221
	lfs	f0, -300(r3)				# 2221
	stfs	f0, 8(r2)				# 2221
	lwz	r5, -320(r3)				# 2221
	stw	r5, 4(r2)				# 2221
	lwz	r5, -296(r3)				# 2221
	stw	r5, 0(r2)				# 2221
	lwz	r5, -292(r3)				# 2221
	slwi	r6, r5, 2				# 2221
	lwz	r7, -104(r3)				# 2221
	stwx	r2, r7, r6				# 2221
	lwz	r2, 0(r3)				# 2233
	add	r6, r5, r2				# 2233
	lwz	r8, -52(r3)				# 2233
	lwz	r9, -288(r3)				# 2233
	add	r10, r9, r8				# 2233
	slwi	r11, r2, 2				# 2233
	lwz	r12, -36(r3)				# 2233
	lfsx	f1, r12, r11				# 2233
	lfs	f2, -12(r3)				# 2171
	lwz	r11, -24(r3)				# 2171
	stw	r6, -324(r3)				# 2171
	stw	r10, -328(r3)				# 2171
	stfs	f1, -332(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r11				# 2171
	fmr	f0, f2				# 2171
	stw	r31, -336(r3)				# 2171
	addi	r3, r3, -340				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, 340				# 2171
	lwz	r31, -336(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, -4(r3)				# 2172
	slwi	r6, r2, 2				# 2172
	lwz	r7, -8(r3)				# 2172
	lwzx	r6, r7, r6				# 2172
	stw	r5, -336(r3)				# 2172
	mfspr	r31, 8				# 2172
	mr	r2, r6				# 2172
	stw	r31, -340(r3)				# 2172
	addi	r3, r3, -344				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, 344				# 2172
	lwz	r31, -340(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, -336(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	lwz	r6, -4(r3)				# 147
	slwi	r7, r6, 2				# 147
	lfs	f0, -284(r3)				# 147
	stfsx	f0, r2, r7				# 147
	lwz	r7, 0(r3)				# 148
	slwi	r8, r7, 2				# 148
	lfs	f1, -332(r3)				# 148
	stfsx	f1, r2, r8				# 148
	lwz	r8, -52(r3)				# 149
	slwi	r9, r8, 2				# 149
	lfs	f1, -304(r3)				# 149
	stfsx	f1, r2, r9				# 149
	slwi	r2, r6, 2				# 1135
	lwz	r9, -8(r3)				# 1135
	lwzx	r2, r9, r2				# 1135
	sub	r2, r2, r7				# 1135
	stw	r5, -340(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r30, r5				# 1135
	mr	r5, r2				# 1135
	mr	r2, r30				# 1135
	stw	r31, -344(r3)				# 1135
	addi	r3, r3, -348				# 1135
	bl	iter_setup_dirvec_constants.2723				# 1135
	addi	r3, r3, 348				# 1135
	lwz	r31, -344(r3)				# 1135
	mtspr	8, r31				# 1135
	mr	r2, r4				# 2221
	addi	r4, r4, 12				# 2221
	lfs	f0, -300(r3)				# 2221
	stfs	f0, 8(r2)				# 2221
	lwz	r5, -340(r3)				# 2221
	stw	r5, 4(r2)				# 2221
	lwz	r5, -328(r3)				# 2221
	stw	r5, 0(r2)				# 2221
	lwz	r5, -324(r3)				# 2221
	slwi	r5, r5, 2				# 2221
	lwz	r6, -104(r3)				# 2221
	stwx	r2, r6, r5				# 2221
	lwz	r2, -52(r3)				# 2234
	lwz	r5, -292(r3)				# 2234
	add	r7, r5, r2				# 2234
	lwz	r8, -24(r3)				# 2234
	lwz	r9, -288(r3)				# 2234
	add	r9, r9, r8				# 2234
	slwi	r10, r2, 2				# 2234
	lwz	r11, -36(r3)				# 2234
	lfsx	f1, r11, r10				# 2234
	lfs	f2, -12(r3)				# 2171
	stw	r7, -344(r3)				# 2171
	stw	r9, -348(r3)				# 2171
	stfs	f1, -352(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r8				# 2171
	fmr	f0, f2				# 2171
	stw	r31, -356(r3)				# 2171
	addi	r3, r3, -360				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, 360				# 2171
	lwz	r31, -356(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, -4(r3)				# 2172
	slwi	r6, r2, 2				# 2172
	lwz	r7, -8(r3)				# 2172
	lwzx	r6, r7, r6				# 2172
	stw	r5, -356(r3)				# 2172
	mfspr	r31, 8				# 2172
	mr	r2, r6				# 2172
	stw	r31, -360(r3)				# 2172
	addi	r3, r3, -364				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, 364				# 2172
	lwz	r31, -360(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, -356(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	lwz	r6, -4(r3)				# 147
	slwi	r7, r6, 2				# 147
	lfs	f0, -284(r3)				# 147
	stfsx	f0, r2, r7				# 147
	lwz	r7, 0(r3)				# 148
	slwi	r8, r7, 2				# 148
	lfs	f0, -308(r3)				# 148
	stfsx	f0, r2, r8				# 148
	lwz	r8, -52(r3)				# 149
	slwi	r9, r8, 2				# 149
	lfs	f0, -352(r3)				# 149
	stfsx	f0, r2, r9				# 149
	slwi	r2, r6, 2				# 1135
	lwz	r9, -8(r3)				# 1135
	lwzx	r2, r9, r2				# 1135
	sub	r2, r2, r7				# 1135
	stw	r5, -360(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r30, r5				# 1135
	mr	r5, r2				# 1135
	mr	r2, r30				# 1135
	stw	r31, -364(r3)				# 1135
	addi	r3, r3, -368				# 1135
	bl	iter_setup_dirvec_constants.2723				# 1135
	addi	r3, r3, 368				# 1135
	lwz	r31, -364(r3)				# 1135
	mtspr	8, r31				# 1135
	mr	r2, r4				# 2221
	addi	r4, r4, 12				# 2221
	lfs	f0, -300(r3)				# 2221
	stfs	f0, 8(r2)				# 2221
	lwz	r5, -360(r3)				# 2221
	stw	r5, 4(r2)				# 2221
	lwz	r5, -348(r3)				# 2221
	stw	r5, 0(r2)				# 2221
	lwz	r5, -344(r3)				# 2221
	slwi	r5, r5, 2				# 2221
	lwz	r6, -104(r3)				# 2221
	stwx	r2, r6, r5				# 2221
	lwz	r2, -24(r3)				# 2235
	lwz	r5, -292(r3)				# 2235
	add	r2, r5, r2				# 2235
	lwz	r5, -4(r3)				# 2235
	slwi	r6, r5, 2				# 2235
	lwz	r7, -108(r3)				# 2235
	stwx	r2, r7, r6				# 2235
	b	beq_cont.21010				# 2261
beq_else.21009:
	cmpw	cr7, r9, r10				# 2263
	bne	cr7, beq_else.21011				# 2263
	slwi	r5, r5, 2				# 2240
	add	r5, r5, r7				# 2240
	slwi	r9, r2, 2				# 2241
	lwz	r11, -108(r3)				# 2241
	lwzx	r9, r11, r9				# 2241
	lwz	r12, 28(r8)				# 360
	slwi	r13, r2, 2				# 365
	lfsx	f0, r12, r13				# 365
	fsub	f0, f1, f0				# 2242
	lwz	r12, 16(r8)				# 320
	slwi	r13, r2, 2				# 195
	lwz	r14, -36(r3)				# 195
	lfsx	f1, r14, r13				# 195
	slwi	r13, r2, 2				# 195
	lfsx	f2, r12, r13				# 195
	fmul	f1, f1, f2				# 195
	slwi	r13, r7, 2				# 195
	lfsx	f2, r14, r13				# 195
	slwi	r13, r7, 2				# 195
	lfsx	f3, r12, r13				# 195
	fmul	f2, f2, f3				# 195
	fadd	f1, f1, f2				# 195
	slwi	r13, r10, 2				# 195
	lfsx	f2, r14, r13				# 195
	slwi	r13, r10, 2				# 195
	lfsx	f3, r12, r13				# 195
	fmul	f2, f2, f3				# 195
	fadd	f1, f1, f2				# 195
	addis	r31, 0, ha16(l.16113)
	ori	r31, r31, lo16(l.16113)
	lfs	f2, 0(r31)				# 2246
	lwz	r12, 16(r8)				# 290
	slwi	r13, r2, 2				# 295
	lfsx	f3, r12, r13				# 295
	fmul	f3, f2, f3				# 2246
	fmul	f3, f3, f1				# 2246
	slwi	r12, r2, 2				# 2246
	lfsx	f4, r14, r12				# 2246
	fsub	f3, f3, f4				# 2246
	lwz	r12, 16(r8)				# 300
	slwi	r13, r7, 2				# 305
	lfsx	f4, r12, r13				# 305
	fmul	f4, f2, f4				# 2247
	fmul	f4, f4, f1				# 2247
	slwi	r12, r7, 2				# 2247
	lfsx	f5, r14, r12				# 2247
	fsub	f4, f4, f5				# 2247
	lwz	r8, 16(r8)				# 310
	slwi	r12, r10, 2				# 315
	lfsx	f5, r8, r12				# 315
	fmul	f2, f2, f5				# 2248
	fmul	f1, f2, f1				# 2248
	slwi	r8, r10, 2				# 2248
	lfsx	f2, r14, r8				# 2248
	fsub	f1, f1, f2				# 2248
	lfs	f2, -12(r3)				# 2171
	lwz	r8, -24(r3)				# 2171
	stw	r9, -364(r3)				# 2171
	stw	r5, -368(r3)				# 2171
	stfs	f0, -372(r3)				# 2171
	stfs	f1, -376(r3)				# 2171
	stfs	f4, -380(r3)				# 2171
	stfs	f3, -384(r3)				# 2171
	mfspr	r31, 8				# 2171
	mr	r2, r8				# 2171
	fmr	f0, f2				# 2171
	stw	r31, -388(r3)				# 2171
	addi	r3, r3, -392				# 2171
	bl	min_caml_create_float_array				# 2171
	addi	r3, r3, 392				# 2171
	lwz	r31, -388(r3)				# 2171
	mr	r5, r2				# 2171
	mtspr	8, r31				# 2171
	lwz	r2, -4(r3)				# 2172
	slwi	r6, r2, 2				# 2172
	lwz	r7, -8(r3)				# 2172
	lwzx	r6, r7, r6				# 2172
	stw	r5, -388(r3)				# 2172
	mfspr	r31, 8				# 2172
	mr	r2, r6				# 2172
	stw	r31, -392(r3)				# 2172
	addi	r3, r3, -396				# 2172
	bl	min_caml_create_array				# 2172
	addi	r3, r3, 396				# 2172
	lwz	r31, -392(r3)				# 2172
	mtspr	8, r31				# 2172
	mr	r5, r4				# 2173
	addi	r4, r4, 8				# 2173
	stw	r2, 4(r5)				# 2173
	lwz	r2, -388(r3)				# 2173
	stw	r2, 0(r5)				# 2173
	lwz	r6, -4(r3)				# 147
	slwi	r7, r6, 2				# 147
	lfs	f0, -384(r3)				# 147
	stfsx	f0, r2, r7				# 147
	lwz	r7, 0(r3)				# 148
	slwi	r8, r7, 2				# 148
	lfs	f0, -380(r3)				# 148
	stfsx	f0, r2, r8				# 148
	lwz	r8, -52(r3)				# 149
	slwi	r9, r8, 2				# 149
	lfs	f0, -376(r3)				# 149
	stfsx	f0, r2, r9				# 149
	slwi	r2, r6, 2				# 1135
	lwz	r9, -8(r3)				# 1135
	lwzx	r2, r9, r2				# 1135
	sub	r2, r2, r7				# 1135
	stw	r5, -392(r3)				# 1135
	mfspr	r31, 8				# 1135
	mr	r30, r5				# 1135
	mr	r5, r2				# 1135
	mr	r2, r30				# 1135
	stw	r31, -396(r3)				# 1135
	addi	r3, r3, -400				# 1135
	bl	iter_setup_dirvec_constants.2723				# 1135
	addi	r3, r3, 400				# 1135
	lwz	r31, -396(r3)				# 1135
	mtspr	8, r31				# 1135
	mr	r2, r4				# 2221
	addi	r4, r4, 12				# 2221
	lfs	f0, -372(r3)				# 2221
	stfs	f0, 8(r2)				# 2221
	lwz	r5, -392(r3)				# 2221
	stw	r5, 4(r2)				# 2221
	lwz	r5, -368(r3)				# 2221
	stw	r5, 0(r2)				# 2221
	lwz	r5, -364(r3)				# 2221
	slwi	r6, r5, 2				# 2221
	lwz	r7, -104(r3)				# 2221
	stwx	r2, r7, r6				# 2221
	lwz	r2, 0(r3)				# 2249
	add	r5, r5, r2				# 2249
	lwz	r6, -4(r3)				# 2249
	slwi	r7, r6, 2				# 2249
	lwz	r8, -108(r3)				# 2249
	stwx	r5, r8, r7				# 2249
	b	beq_cont.21012				# 2263
beq_else.21011:
beq_cont.21012:
beq_cont.21010:
beq_cont.21008:
	b	beq_cont.21004				# 2257
beq_else.21003:
beq_cont.21004:
	b	ble_cont.21002				# 2255
ble_else.21001:
ble_cont.21002:
	lwz	r2, -4(r3)				# 2018
	slwi	r5, r2, 2				# 2018
	lwz	r6, -64(r3)				# 2018
	lfsx	f0, r6, r5				# 2018
	lwz	r5, 0(r3)				# 2018
	slwi	r6, r5, 2				# 2018
	lwz	r7, -60(r3)				# 2018
	lwzx	r6, r7, r6				# 2018
	sub	r6, r2, r6				# 2018
	stfs	f0, -396(r3)				# 2018
	mfspr	r31, 8				# 2018
	mr	r2, r6				# 2018
	stw	r31, -400(r3)				# 2018
	addi	r3, r3, -404				# 2018
	bl	min_caml_float_of_int				# 2018
	addi	r3, r3, 404				# 2018
	lwz	r31, -400(r3)				# 2018
	mtspr	8, r31				# 2018
	lfs	f1, -396(r3)				# 2018
	fmul	f0, f1, f0				# 2018
	lwz	r6, -4(r3)				# 2021
	slwi	r2, r6, 2				# 2021
	lwz	r5, -72(r3)				# 2021
	lfsx	f1, r5, r2				# 2021
	fmul	f1, f0, f1				# 2021
	slwi	r2, r6, 2				# 2021
	lwz	r7, -76(r3)				# 2021
	lfsx	f2, r7, r2				# 2021
	fadd	f1, f1, f2				# 2021
	lwz	r2, 0(r3)				# 2022
	slwi	r8, r2, 2				# 2022
	lfsx	f2, r5, r8				# 2022
	fmul	f2, f0, f2				# 2022
	slwi	r8, r2, 2				# 2022
	lfsx	f3, r7, r8				# 2022
	fadd	f2, f2, f3				# 2022
	lwz	r8, -52(r3)				# 2023
	slwi	r9, r8, 2				# 2023
	lfsx	f3, r5, r9				# 2023
	fmul	f0, f0, f3				# 2023
	slwi	r5, r8, 2				# 2023
	lfsx	f3, r7, r5				# 2023
	fadd	f0, f0, f3				# 2023
	slwi	r5, r6, 2				# 2024
	lwz	r7, -56(r3)				# 2024
	lwzx	r5, r7, r5				# 2024
	sub	r5, r5, r2				# 2024
	lwz	r2, -196(r3)				# 2024
	mfspr	r31, 8				# 2024
	fmr	f31, f2				# 2024
	fmr	f2, f0				# 2024
	fmr	f0, f1				# 2024
	fmr	f1, f31				# 2024
	stw	r31, -400(r3)				# 2024
	addi	r3, r3, -404				# 2024
	bl	pretrace_pixels.2880				# 2024
	addi	r3, r3, 404				# 2024
	lwz	r31, -400(r3)				# 2024
	mtspr	8, r31				# 2024
	lwz	r2, -4(r3)				# 2291
	lwz	r5, -156(r3)				# 2291
	lwz	r6, -196(r3)				# 2291
	lwz	r7, -236(r3)				# 2291
	lwz	r8, -52(r3)				# 2291
	mfspr	r31, 8				# 2291
	stw	r31, -400(r3)				# 2291
	addi	r3, r3, -404				# 2291
	bl	scan_line.2897				# 2291
	addi	r3, r3, 404				# 2291
	lwz	r31, -400(r3)				# 2291
	mtspr	8, r31				# 2291
#	main program ends
	flush
	halt
