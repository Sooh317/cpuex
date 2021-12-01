	.text
	.globl _min_caml_start
	.align 2
_min_caml_start: # main entry point
	mfspr	r0, 8
	stw	r30, -8(r1)
	stw	r31, -4(r1)
	stw	r0, 8(r1)
	stwu	r1, -96(r1)
#	main program starts
	addi	r2, 0, 123
	mfspr	r31, 8				# 1
	stw	r31, 4(r3)				# 1
	addi	r3, r3, 8				# 1
	bl	min_caml_print_int				# 1
	addi	r3, r3, -8				# 1
	lwz	r31, 4(r3)				# 1
	mtspr	8, r31				# 1
	addi	r2, 0, -456
	mfspr	r31, 8				# 2
	stw	r31, 4(r3)				# 2
	addi	r3, r3, 8				# 2
	bl	min_caml_print_int				# 2
	addi	r3, r3, -8				# 2
	lwz	r31, 4(r3)				# 2
	mtspr	8, r31				# 2
	addi	r2, 0, 789
	mfspr	r31, 8				# 3
	stw	r31, 4(r3)				# 3
	addi	r3, r3, 8				# 3
	bl	min_caml_print_int				# 3
	addi	r3, r3, -8				# 3
	lwz	r31, 4(r3)				# 3
	mtspr	8, r31				# 3
#	main program ends
	lwz	r1, 0(r1)
	lwz	r0, 8(r1)
	mtspr	8, r0
	lwz	r30, -8(r1)
	lwz	r31, -4(r1)
	blr