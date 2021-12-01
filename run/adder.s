	.text
	.globl _min_caml_start
	.align 2
adder.11:
	lwz	r5, 4(r1)				# 2
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
	addi	r2, 0, 3
	mfspr	r31, 8				# 4
	stw	r31, 0(r3)				# 4
	addi	r3, r3, 4				# 4
	bl	make_adder.5				# 4
	addi	r3, r3, -4				# 4
	lwz	r31, 0(r3)				# 4
	mr	r1, r2				# 4
	mtspr	8, r31				# 4
	addi	r2, 0, 7
	mfspr	r31, 8				# 4
	stw	r31, 0(r3)				# 4
	addi	r3, r3, 4				# 4
	lwz	r31, 0(r1)				# 4
	mtspr	9, r31				# 4
	bctrl				# 4
	addi	r3, r3, -4				# 4
	lwz	r31, 0(r3)				# 4
	mtspr	8, r31				# 4
	mfspr	r31, 8				# 4
	stw	r31, 0(r3)				# 4
	addi	r3, r3, 4				# 4
	bl	min_caml_print_int				# 4
	addi	r3, r3, -4				# 4
	lwz	r31, 0(r3)				# 4
	mtspr	8, r31				# 4
#	main program ends
	halt
