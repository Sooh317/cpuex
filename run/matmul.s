	.data
	.literal4
	.align 2
l.371:	 # 12.000000
	.long	1094713344
	.align 2
l.368:	 # 11.000000
	.long	1093664768
	.align 2
l.365:	 # 10.000000
	.long	1092616192
	.align 2
l.362:	 # 9.000000
	.long	1091567616
	.align 2
l.359:	 # 8.000000
	.long	1090519040
	.align 2
l.356:	 # 7.000000
	.long	1088421888
	.align 2
l.353:	 # 6.000000
	.long	1086324736
	.align 2
l.350:	 # 5.000000
	.long	1084227584
	.align 2
l.347:	 # 4.000000
	.long	1082130432
	.align 2
l.344:	 # 3.000000
	.long	1077936128
	.align 2
l.341:	 # 2.000000
	.long	1073741824
	.align 2
l.338:	 # 1.000000
	.long	1065353216
	.align 2
l.336:	 # 0.000000
	.long	0
	.text
	.globl _min_caml_start
	.align 2
loop3.279:
	lwz	r5, -16(r1)				# 6
	lwz	r6, -12(r1)				# 6
	lwz	r7, -8(r1)				# 6
	lwz	r8, -4(r1)				# 6
	lwz	r9, 0(r1)				# 6
	lwz	r10, 4(r1)				# 6
	cmpw	cr7, r10, r2				# 7
	bgt	cr7, ble_else.432				# 7
	slwi	r10, r6, 2				# 8
	lwzx	r10, r7, r10				# 8
	slwi	r11, r6, 2				# 8
	lwzx	r7, r7, r11				# 8
	slwi	r11, r5, 2				# 8
	lfsx	f0, r7, r11				# 8
	slwi	r6, r6, 2				# 8
	lwzx	r6, r9, r6				# 8
	slwi	r7, r2, 2				# 8
	lfsx	f1, r6, r7				# 8
	slwi	r6, r2, 2				# 8
	lwzx	r6, r8, r6				# 8
	slwi	r7, r5, 2				# 8
	lfsx	f2, r6, r7				# 8
	fmul	f1, f1, f2				# 8
	fadd	f0, f0, f1				# 8
	slwi	r5, r5, 2				# 8
	stfsx	f0, r10, r5				# 8
	addi	r2, r2, -1				# 9
	lwz	r30, 0(r1)				# 9
	mtspr	9, r30
	bctr				# 9
ble_else.432:
	blr
loop2.272:
	lwz	r5, -16(r1)				# 4
	lwz	r6, -12(r1)				# 4
	lwz	r7, -8(r1)				# 4
	lwz	r8, -4(r1)				# 4
	lwz	r9, 0(r1)				# 4
	lwz	r10, 4(r1)				# 4
	cmpw	cr7, r10, r2				# 5
	bgt	cr7, ble_else.434				# 5
	mr	r11, r4				# 6
	addi	r4, r4, 28				# 6
	addis	r12, r12, ha16(loop3.279)
	ori	r12, r12, lo16(loop3.279)				# 6
	stw	r12, 0(r11)				# 6
	stw	r2, 24(r11)				# 6
	stw	r6, 20(r11)				# 6
	stw	r7, 16(r11)				# 6
	stw	r8, 12(r11)				# 6
	stw	r9, 8(r11)				# 6
	stw	r10, 4(r11)				# 6
	addi	r5, r5, -1				# 10
	stw	r1, 0(r3)				# 10
	stw	r2, -4(r3)				# 10
	mfspr	r31, 8				# 10
	mr	r2, r5				# 10
	mr	r1, r11				# 10
	stw	r31, -8(r3)				# 10
	addi	r3, r3, -12				# 10
	lwz	r31, 0(r1)				# 10
	mtspr	9, r31				# 10
	bctrl				# 10
	addi	r3, r3, 12				# 10
	lwz	r31, -8(r3)				# 10
	mtspr	8, r31				# 10
	lwz	r2, -4(r3)				# 11
	addi	r2, r2, -1				# 11
	lwz	r1, 0(r3)				# 11
	lwz	r30, 0(r1)				# 11
	mtspr	9, r30
	bctr				# 11
ble_else.434:
	blr
loop1.267:
	lwz	r5, -12(r1)				# 2
	lwz	r6, -8(r1)				# 2
	lwz	r7, -4(r1)				# 2
	lwz	r8, 0(r1)				# 2
	lwz	r9, 4(r1)				# 2
	addi	r10, 0, 0				# 3
	cmpwi	cr7, r2, 0				# 3
	blt	cr7, bge_else.436				# 3
	mr	r11, r4				# 4
	addi	r4, r4, 28				# 4
	addis	r12, r12, ha16(loop2.272)
	ori	r12, r12, lo16(loop2.272)				# 4
	stw	r12, 0(r11)				# 4
	stw	r6, 24(r11)				# 4
	stw	r2, 20(r11)				# 4
	stw	r7, 16(r11)				# 4
	stw	r8, 12(r11)				# 4
	stw	r9, 8(r11)				# 4
	stw	r10, 4(r11)				# 4
	addi	r5, r5, -1				# 12
	stw	r1, 0(r3)				# 12
	stw	r2, -4(r3)				# 12
	mfspr	r31, 8				# 12
	mr	r2, r5				# 12
	mr	r1, r11				# 12
	stw	r31, -8(r3)				# 12
	addi	r3, r3, -12				# 12
	lwz	r31, 0(r1)				# 12
	mtspr	9, r31				# 12
	bctrl				# 12
	addi	r3, r3, 12				# 12
	lwz	r31, -8(r3)				# 12
	mtspr	8, r31				# 12
	lwz	r2, -4(r3)				# 13
	addi	r2, r2, -1				# 13
	lwz	r1, 0(r3)				# 13
	lwz	r30, 0(r1)				# 13
	mtspr	9, r30
	bctr				# 13
bge_else.436:
	blr
mul.140:
	mr	r1, r4				# 2
	addi	r4, r4, 24				# 2
	addis	r10, r10, ha16(loop1.267)
	ori	r10, r10, lo16(loop1.267)				# 2
	stw	r10, 0(r1)				# 2
	stw	r6, 20(r1)				# 2
	stw	r5, 16(r1)				# 2
	stw	r9, 12(r1)				# 2
	stw	r8, 8(r1)				# 2
	stw	r7, 4(r1)				# 2
	addi	r2, r2, -1				# 14
	lwz	r30, 0(r1)				# 14
	mtspr	9, r30
	bctr				# 14
init.254:
	lwz	r5, -8(r1)				# 18
	lwz	r6, -4(r1)				# 18
	lwz	r7, 0(r1)				# 18
	lfs	f0, 4(r1)				# 18
	cmpw	cr7, r7, r2				# 19
	bgt	cr7, ble_else.438				# 19
	stw	r1, 0(r3)				# 20
	stw	r6, -4(r3)				# 20
	stw	r2, -8(r3)				# 20
	mfspr	r31, 8				# 20
	mr	r2, r5				# 20
	stw	r31, -12(r3)				# 20
	addi	r3, r3, -16				# 20
	bl	min_caml_create_float_array				# 20
	addi	r3, r3, 16				# 20
	lwz	r31, -12(r3)				# 20
	mtspr	8, r31				# 20
	lwz	r5, -8(r3)				# 20
	slwi	r6, r5, 2				# 20
	lwz	r7, -4(r3)				# 20
	stwx	r2, r7, r6				# 20
	addi	r2, r5, -1				# 21
	lwz	r1, 0(r3)				# 21
	lwz	r30, 0(r1)				# 21
	mtspr	9, r30
	bctr				# 21
ble_else.438:
	blr
make.148:
	lwz	r6, -4(r1)				# 16
	lwz	r7, 0(r1)				# 16
	lfs	f0, 4(r1)				# 16
	stw	r2, 0(r3)				# 17
	stfs	f0, -4(r3)				# 17
	stw	r7, -8(r3)				# 17
	stw	r5, -12(r3)				# 17
	mfspr	r31, 8				# 17
	mr	r5, r6				# 17
	stw	r31, -16(r3)				# 17
	addi	r3, r3, -20				# 17
	bl	min_caml_create_array				# 17
	addi	r3, r3, 20				# 17
	lwz	r31, -16(r3)				# 17
	mtspr	8, r31				# 17
	mr	r1, r4				# 18
	addi	r4, r4, 20				# 18
	addis	r5, r5, ha16(init.254)
	ori	r5, r5, lo16(init.254)				# 18
	stw	r5, 0(r1)				# 18
	lwz	r5, -12(r3)				# 18
	stw	r5, 16(r1)				# 18
	stw	r2, 12(r1)				# 18
	lwz	r5, -8(r3)				# 18
	stw	r5, 8(r1)				# 18
	lfs	f0, -4(r3)				# 18
	stfs	f0, 4(r1)				# 18
	lwz	r5, 0(r3)				# 22
	addi	r5, r5, -1				# 22
	stw	r2, -16(r3)				# 22
	mfspr	r31, 8				# 22
	mr	r2, r5				# 22
	stw	r31, -20(r3)				# 22
	addi	r3, r3, -24				# 22
	lwz	r31, 0(r1)				# 22
	mtspr	9, r31				# 22
	bctrl				# 22
	addi	r3, r3, 24				# 22
	lwz	r31, -20(r3)				# 22
	mtspr	8, r31				# 22
	lwz	r2, -16(r3)				# 23
	blr
_min_caml_start: # main entry point
#	main program starts
	addi	r2, 0, 0				# 15
	addis	r31, r31, ha16(l.336)
	ori	r31, r31, lo16(l.336)
	lfs	f0, 0(r31)				# 15
	stfs	f0, 0(r3)				# 15
	stw	r2, -4(r3)				# 15
	mfspr	r31, 8				# 15
	stw	r31, -8(r3)				# 15
	addi	r3, r3, -12				# 15
	bl	min_caml_create_float_array				# 15
	addi	r3, r3, 12				# 15
	lwz	r31, -8(r3)				# 15
	mtspr	8, r31				# 15
	mr	r1, r4				# 16
	addi	r4, r4, 16				# 16
	addis	r5, r5, ha16(make.148)
	ori	r5, r5, lo16(make.148)				# 16
	stw	r5, 0(r1)				# 16
	stw	r2, 12(r1)				# 16
	lwz	r2, -4(r3)				# 16
	stw	r2, 8(r1)				# 16
	lfs	f0, 0(r3)				# 16
	stfs	f0, 4(r1)				# 16
	addi	r2, 0, 2				# 24
	addi	r5, 0, 3				# 24
	stw	r2, -8(r3)				# 24
	stw	r5, -12(r3)				# 24
	stw	r1, -16(r3)				# 24
	mfspr	r31, 8				# 24
	stw	r31, -20(r3)				# 24
	addi	r3, r3, -24				# 24
	lwz	r31, 0(r1)				# 24
	mtspr	9, r31				# 24
	bctrl				# 24
	addi	r3, r3, 24				# 24
	lwz	r31, -20(r3)				# 24
	mtspr	8, r31				# 24
	lwz	r5, -12(r3)				# 25
	lwz	r6, -8(r3)				# 25
	lwz	r1, -16(r3)				# 25
	stw	r2, -20(r3)				# 25
	mfspr	r31, 8				# 25
	mr	r2, r5				# 25
	mr	r5, r6				# 25
	stw	r31, -24(r3)				# 25
	addi	r3, r3, -28				# 25
	lwz	r31, 0(r1)				# 25
	mtspr	9, r31				# 25
	bctrl				# 25
	addi	r3, r3, 28				# 25
	lwz	r31, -24(r3)				# 25
	mtspr	8, r31				# 25
	lwz	r5, -8(r3)				# 26
	lwz	r1, -16(r3)				# 26
	stw	r2, -24(r3)				# 26
	mfspr	r31, 8				# 26
	mr	r2, r5				# 26
	stw	r31, -28(r3)				# 26
	addi	r3, r3, -32				# 26
	lwz	r31, 0(r1)				# 26
	mtspr	9, r31				# 26
	bctrl				# 26
	addi	r3, r3, 32				# 26
	lwz	r31, -28(r3)				# 26
	mr	r9, r2				# 26
	mtspr	8, r31				# 26
	lwz	r7, -20(r3)				# 27
	lwz	r2, 0(r7)				# 27
	addis	r31, r31, ha16(l.338)
	ori	r31, r31, lo16(l.338)
	lfs	f0, 0(r31)				# 27
	stfs	f0, 0(r2)				# 27
	lwz	r2, 0(r7)				# 27
	addis	r31, r31, ha16(l.341)
	ori	r31, r31, lo16(l.341)
	lfs	f0, 0(r31)				# 27
	stfs	f0, 4(r2)				# 27
	lwz	r2, 0(r7)				# 27
	addis	r31, r31, ha16(l.344)
	ori	r31, r31, lo16(l.344)
	lfs	f0, 0(r31)				# 27
	stfs	f0, 8(r2)				# 27
	lwz	r2, 4(r7)				# 28
	addis	r31, r31, ha16(l.347)
	ori	r31, r31, lo16(l.347)
	lfs	f0, 0(r31)				# 28
	stfs	f0, 0(r2)				# 28
	lwz	r2, 4(r7)				# 28
	addis	r31, r31, ha16(l.350)
	ori	r31, r31, lo16(l.350)
	lfs	f0, 0(r31)				# 28
	stfs	f0, 4(r2)				# 28
	lwz	r2, 4(r7)				# 28
	addis	r31, r31, ha16(l.353)
	ori	r31, r31, lo16(l.353)
	lfs	f0, 0(r31)				# 28
	stfs	f0, 8(r2)				# 28
	lwz	r8, -24(r3)				# 29
	lwz	r2, 0(r8)				# 29
	addis	r31, r31, ha16(l.356)
	ori	r31, r31, lo16(l.356)
	lfs	f0, 0(r31)				# 29
	stfs	f0, 0(r2)				# 29
	lwz	r2, 0(r8)				# 29
	addis	r31, r31, ha16(l.359)
	ori	r31, r31, lo16(l.359)
	lfs	f0, 0(r31)				# 29
	stfs	f0, 4(r2)				# 29
	lwz	r2, 4(r8)				# 30
	addis	r31, r31, ha16(l.362)
	ori	r31, r31, lo16(l.362)
	lfs	f0, 0(r31)				# 30
	stfs	f0, 0(r2)				# 30
	lwz	r2, 4(r8)				# 30
	addis	r31, r31, ha16(l.365)
	ori	r31, r31, lo16(l.365)
	lfs	f0, 0(r31)				# 30
	stfs	f0, 4(r2)				# 30
	lwz	r2, 8(r8)				# 31
	addis	r31, r31, ha16(l.368)
	ori	r31, r31, lo16(l.368)
	lfs	f0, 0(r31)				# 31
	stfs	f0, 0(r2)				# 31
	lwz	r2, 8(r8)				# 31
	addis	r31, r31, ha16(l.371)
	ori	r31, r31, lo16(l.371)
	lfs	f0, 0(r31)				# 31
	stfs	f0, 4(r2)				# 31
	lwz	r2, -8(r3)				# 32
	lwz	r5, -12(r3)				# 32
	stw	r9, -28(r3)				# 32
	mfspr	r31, 8				# 32
	mr	r6, r2				# 32
	stw	r31, -32(r3)				# 32
	addi	r3, r3, -36				# 32
	bl	mul.140				# 32
	addi	r3, r3, 36				# 32
	lwz	r31, -32(r3)				# 32
	mtspr	8, r31				# 32
	lwz	r2, -28(r3)				# 33
	lwz	r5, 0(r2)				# 33
	lfs	f0, 0(r5)				# 33
	mfspr	r31, 8				# 33
	stw	r31, -32(r3)				# 33
	addi	r3, r3, -36				# 33
	bl	min_caml_truncate				# 33
	addi	r3, r3, 36				# 33
	lwz	r31, -32(r3)				# 33
	mtspr	8, r31				# 33
	mfspr	r31, 8				# 33
	stw	r31, -32(r3)				# 33
	addi	r3, r3, -36				# 33
	bl	min_caml_print_int				# 33
	addi	r3, r3, 36				# 33
	lwz	r31, -32(r3)				# 33
	mtspr	8, r31				# 33
	mfspr	r31, 8				# 34
	stw	r31, -32(r3)				# 34
	addi	r3, r3, -36				# 34
	bl	min_caml_print_newline				# 34
	addi	r3, r3, 36				# 34
	lwz	r31, -32(r3)				# 34
	mtspr	8, r31				# 34
	lwz	r2, -28(r3)				# 35
	lwz	r5, 0(r2)				# 35
	lfs	f0, 4(r5)				# 35
	mfspr	r31, 8				# 35
	stw	r31, -32(r3)				# 35
	addi	r3, r3, -36				# 35
	bl	min_caml_truncate				# 35
	addi	r3, r3, 36				# 35
	lwz	r31, -32(r3)				# 35
	mtspr	8, r31				# 35
	mfspr	r31, 8				# 35
	stw	r31, -32(r3)				# 35
	addi	r3, r3, -36				# 35
	bl	min_caml_print_int				# 35
	addi	r3, r3, 36				# 35
	lwz	r31, -32(r3)				# 35
	mtspr	8, r31				# 35
	mfspr	r31, 8				# 36
	stw	r31, -32(r3)				# 36
	addi	r3, r3, -36				# 36
	bl	min_caml_print_newline				# 36
	addi	r3, r3, 36				# 36
	lwz	r31, -32(r3)				# 36
	mtspr	8, r31				# 36
	lwz	r2, -28(r3)				# 37
	lwz	r5, 4(r2)				# 37
	lfs	f0, 0(r5)				# 37
	mfspr	r31, 8				# 37
	stw	r31, -32(r3)				# 37
	addi	r3, r3, -36				# 37
	bl	min_caml_truncate				# 37
	addi	r3, r3, 36				# 37
	lwz	r31, -32(r3)				# 37
	mtspr	8, r31				# 37
	mfspr	r31, 8				# 37
	stw	r31, -32(r3)				# 37
	addi	r3, r3, -36				# 37
	bl	min_caml_print_int				# 37
	addi	r3, r3, 36				# 37
	lwz	r31, -32(r3)				# 37
	mtspr	8, r31				# 37
	mfspr	r31, 8				# 38
	stw	r31, -32(r3)				# 38
	addi	r3, r3, -36				# 38
	bl	min_caml_print_newline				# 38
	addi	r3, r3, 36				# 38
	lwz	r31, -32(r3)				# 38
	mtspr	8, r31				# 38
	lwz	r2, -28(r3)				# 39
	lwz	r2, 4(r2)				# 39
	lfs	f0, 4(r2)				# 39
	mfspr	r31, 8				# 39
	stw	r31, -32(r3)				# 39
	addi	r3, r3, -36				# 39
	bl	min_caml_truncate				# 39
	addi	r3, r3, 36				# 39
	lwz	r31, -32(r3)				# 39
	mtspr	8, r31				# 39
	mfspr	r31, 8				# 39
	stw	r31, -32(r3)				# 39
	addi	r3, r3, -36				# 39
	bl	min_caml_print_int				# 39
	addi	r3, r3, 36				# 39
	lwz	r31, -32(r3)				# 39
	mtspr	8, r31				# 39
	mfspr	r31, 8				# 40
	stw	r31, -32(r3)				# 40
	addi	r3, r3, -36				# 40
	bl	min_caml_print_newline				# 40
	addi	r3, r3, 36				# 40
	lwz	r31, -32(r3)				# 40
	mtspr	8, r31				# 40
#	main program ends
	halt
