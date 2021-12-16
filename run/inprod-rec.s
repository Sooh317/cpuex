	.data
	.literal4
	.align 2
l.44:	 # 1000000.000000
	.long	1232348160
	.align 2
l.43:	 # 4.560000
	.long	1083304837
	.align 2
l.42:	 # 1.230000
	.long	1067282596
	.align 2
l.39:	 # 0.000000
	.long	0
	.text
	.globl _min_caml_start
	.align 2
inprod.17:
	cmpwi	cr7, r6, 0				# 2
	blt	cr7, bge_else.54				# 2
	slwi	r7, r6, 2				# 3
	lfsx	f0, r2, r7				# 3
	slwi	r7, r6, 2				# 3
	lfsx	f1, r5, r7				# 3
	fmul	f0, f0, f1				# 3
	addi	r6, r6, -1				# 3
	stfs	f0, 0(r3)				# 3
	mfspr	r31, 8				# 3
	stw	r31, -4(r3)				# 3
	addi	r3, r3, -8				# 3
	bl	inprod.17				# 3
	addi	r3, r3, 8				# 3
	lwz	r31, -4(r3)				# 3
	mtspr	8, r31				# 3
	lfs	f1, 0(r3)				# 3
	fadd	f0, f1, f0				# 3
	blr
bge_else.54:
	addis	r31, 0, ha16(l.39)
	ori	r31, r31, lo16(l.39)
	lfs	f0, 0(r31)				# 2
	blr
_min_caml_start: # main entry point
#	main program starts
	addi	r2, 0, 3				# 4
	addis	r31, 0, ha16(l.42)
	ori	r31, r31, lo16(l.42)
	lfs	f0, 0(r31)				# 4
	stw	r2, 0(r3)				# 4
	mfspr	r31, 8				# 4
	stw	r31, -4(r3)				# 4
	addi	r3, r3, -8				# 4
	bl	min_caml_create_float_array				# 4
	addi	r3, r3, 8				# 4
	lwz	r31, -4(r3)				# 4
	mtspr	8, r31				# 4
	addis	r31, 0, ha16(l.43)
	ori	r31, r31, lo16(l.43)
	lfs	f0, 0(r31)				# 5
	lwz	r5, 0(r3)				# 5
	stw	r2, -4(r3)				# 5
	mfspr	r31, 8				# 5
	mr	r2, r5				# 5
	stw	r31, -8(r3)				# 5
	addi	r3, r3, -12				# 5
	bl	min_caml_create_float_array				# 5
	addi	r3, r3, 12				# 5
	lwz	r31, -8(r3)				# 5
	mr	r5, r2				# 5
	mtspr	8, r31				# 5
	addis	r31, 0, ha16(l.44)
	ori	r31, r31, lo16(l.44)
	lfs	f0, 0(r31)				# 6
	addi	r6, 0, 2				# 6
	lwz	r2, -4(r3)				# 6
	stfs	f0, -8(r3)				# 6
	mfspr	r31, 8				# 6
	stw	r31, -12(r3)				# 6
	addi	r3, r3, -16				# 6
	bl	inprod.17				# 6
	addi	r3, r3, 16				# 6
	lwz	r31, -12(r3)				# 6
	mtspr	8, r31				# 6
	lfs	f1, -8(r3)				# 6
	fmul	f0, f1, f0				# 6
	mfspr	r31, 8				# 6
	stw	r31, -12(r3)				# 6
	addi	r3, r3, -16				# 6
	bl	min_caml_truncate				# 6
	addi	r3, r3, 16				# 6
	lwz	r31, -12(r3)				# 6
	mtspr	8, r31				# 6
	mfspr	r31, 8				# 6
	stw	r31, -12(r3)				# 6
	addi	r3, r3, -16				# 6
	bl	min_caml_print_int				# 6
	addi	r3, r3, 16				# 6
	lwz	r31, -12(r3)				# 6
	mtspr	8, r31				# 6
#	main program ends
	flush
	halt
