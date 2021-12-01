	.text
	.globl _min_caml_start
	.align 2
adder.11:
	lwz	r5, 4(r30)				# 2
	add	r2, r5, r2				# 2
	blr
make_adder.5:
	mr	r5, r4				# 2
	addi	r4, r4, 8				# 2
	lis	r6, ha16(adder.11)
	addi	r6, r6, lo16(adder.11)
	stw	r6, 0(r5)				# 2
	stw	r2, 4(r5)				# 2
	mr	r2, r5				# 3
	blr
_min_caml_start: # main entry point
	mfspr	r0, 8
	stw	r30, -8(r1)
	stw	r31, -4(r1)
	stw	r0, 8(r1)
	stwu	r1, -96(r1)
#	main program starts
	addi	r2, 0, 3
	mfspr	r31, 8				# 4
	stw	r31, 4(r3)				# 4
	addi	r3, r3, 8				# 4
	bl	make_adder.5				# 4
	addi	r3, r3, -8				# 4
	lwz	r31, 4(r3)				# 4
	mr	r30, r2				# 4
	mtspr	8, r31				# 4
	addi	r2, 0, 7
	mfspr	r31, 8				# 4
	stw	r31, 4(r3)				# 4
	addi	r3, r3, 8				# 4
	lwz	r31, 0(r30)				# 4
	mtspr	9, r31				# 4
	bctrl				# 4
	addi	r3, r3, -8				# 4
	lwz	r31, 4(r3)				# 4
	mtspr	8, r31				# 4
	mfspr	r31, 8				# 4
	stw	r31, 4(r3)				# 4
	addi	r3, r3, 8				# 4
	bl	min_caml_print_int				# 4
	addi	r3, r3, -8				# 4
	lwz	r31, 4(r3)				# 4
	mtspr	8, r31				# 4
#	main program ends
	lwz	r1, 0(r1)
	lwz	r0, 8(r1)
	mtspr	8, r0
	lwz	r30, -8(r1)
	lwz	r31, -4(r1)
	blr