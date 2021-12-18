	.data
	.literal4
	.align 2
l.73:	 # 6.000000
	.long	1086324736
	.align 2
l.72:	 # 5.000000
	.long	1084227584
	.align 2
l.71:	 # 4.000000
	.long	1082130432
	.align 2
l.66:	 # 3.000000
	.long	1077936128
	.align 2
l.65:	 # 2.000000
	.long	1073741824
	.align 2
l.64:	 # 1.000000
	.long	1065353216
	.align 2
l.63:	 # 1000000.000000
	.long	1232348160
	.text
	.globl _min_caml_start
	.align 2
getx.23:
	lfs	f0, 0(r2)				# 1
	blr
gety.25:
	lfs	f0, 4(r2)				# 2
	blr
getz.27:
	lfs	f0, 8(r2)				# 3
	blr
inprod.29:
	stw	r2, 0(r3)				# 5
	stw	r5, -4(r3)				# 5
	mfspr	r31, 8				# 5
	stw	r31, -8(r3)				# 5
	addi	r3, r3, -12				# 5
	bl	getx.23				# 5
	addi	r3, r3, 12				# 5
	lwz	r31, -8(r3)				# 5
	mtspr	8, r31				# 5
	lwz	r2, -4(r3)				# 5
	stfs	f0, -8(r3)				# 5
	mfspr	r31, 8				# 5
	stw	r31, -12(r3)				# 5
	addi	r3, r3, -16				# 5
	bl	getx.23				# 5
	addi	r3, r3, 16				# 5
	lwz	r31, -12(r3)				# 5
	mtspr	8, r31				# 5
	lfs	f1, -8(r3)				# 5
	fmul	f0, f1, f0				# 5
	lwz	r2, 0(r3)				# 5
	stfs	f0, -12(r3)				# 5
	mfspr	r31, 8				# 5
	stw	r31, -16(r3)				# 5
	addi	r3, r3, -20				# 5
	bl	gety.25				# 5
	addi	r3, r3, 20				# 5
	lwz	r31, -16(r3)				# 5
	mtspr	8, r31				# 5
	lwz	r2, -4(r3)				# 5
	stfs	f0, -16(r3)				# 5
	mfspr	r31, 8				# 5
	stw	r31, -20(r3)				# 5
	addi	r3, r3, -24				# 5
	bl	gety.25				# 5
	addi	r3, r3, 24				# 5
	lwz	r31, -20(r3)				# 5
	mtspr	8, r31				# 5
	lfs	f1, -16(r3)				# 5
	fmul	f0, f1, f0				# 5
	lfs	f1, -12(r3)				# 5
	fadd	f0, f1, f0				# 5
	lwz	r2, 0(r3)				# 5
	stfs	f0, -20(r3)				# 5
	mfspr	r31, 8				# 5
	stw	r31, -24(r3)				# 5
	addi	r3, r3, -28				# 5
	bl	getz.27				# 5
	addi	r3, r3, 28				# 5
	lwz	r31, -24(r3)				# 5
	mtspr	8, r31				# 5
	lwz	r2, -4(r3)				# 5
	stfs	f0, -24(r3)				# 5
	mfspr	r31, 8				# 5
	stw	r31, -28(r3)				# 5
	addi	r3, r3, -32				# 5
	bl	getz.27				# 5
	addi	r3, r3, 32				# 5
	lwz	r31, -28(r3)				# 5
	mtspr	8, r31				# 5
	lfs	f1, -24(r3)				# 5
	fmul	f0, f1, f0				# 5
	lfs	f1, -20(r3)				# 5
	fadd	f0, f1, f0				# 5
	blr
_min_caml_start: # main entry point
#	main program starts
	addis	r31, 0, ha16(l.63)
	ori	r31, r31, lo16(l.63)
	lfs	f0, 0(r31)				# 6
	addis	r31, 0, ha16(l.64)
	ori	r31, r31, lo16(l.64)
	lfs	f1, 0(r31)				# 6
	addis	r31, 0, ha16(l.65)
	ori	r31, r31, lo16(l.65)
	lfs	f2, 0(r31)				# 6
	addis	r31, 0, ha16(l.66)
	ori	r31, r31, lo16(l.66)
	lfs	f3, 0(r31)				# 6
	mr	r2, r4				# 6
	addi	r4, r4, 12				# 6
	stfs	f3, 8(r2)				# 6
	stfs	f2, 4(r2)				# 6
	stfs	f1, 0(r2)				# 6
	addis	r31, 0, ha16(l.71)
	ori	r31, r31, lo16(l.71)
	lfs	f1, 0(r31)				# 6
	addis	r31, 0, ha16(l.72)
	ori	r31, r31, lo16(l.72)
	lfs	f2, 0(r31)				# 6
	addis	r31, 0, ha16(l.73)
	ori	r31, r31, lo16(l.73)
	lfs	f3, 0(r31)				# 6
	mr	r5, r4				# 6
	addi	r4, r4, 12				# 6
	stfs	f3, 8(r5)				# 6
	stfs	f2, 4(r5)				# 6
	stfs	f1, 0(r5)				# 6
	stfs	f0, 0(r3)				# 6
	mfspr	r31, 8				# 6
	stw	r31, -4(r3)				# 6
	addi	r3, r3, -8				# 6
	bl	inprod.29				# 6
	addi	r3, r3, 8				# 6
	lwz	r31, -4(r3)				# 6
	mtspr	8, r31				# 6
	lfs	f1, 0(r3)				# 6
	fmul	f0, f1, f0				# 6
	mfspr	r31, 8				# 6
	stw	r31, -4(r3)				# 6
	addi	r3, r3, -8				# 6
	bl	min_caml_truncate				# 6
	addi	r3, r3, 8				# 6
	lwz	r31, -4(r3)				# 6
	mtspr	8, r31				# 6
	mfspr	r31, 8				# 6
	stw	r31, -4(r3)				# 6
	addi	r3, r3, -8				# 6
	bl	min_caml_print_int				# 6
	addi	r3, r3, 8				# 6
	lwz	r31, -4(r3)				# 6
	mtspr	8, r31				# 6
#	main program ends
	flush
	halt
