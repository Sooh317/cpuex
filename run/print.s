	.data
	.literal4
	.align 2
Tu2.9:
	.long	0
	.align 2
Tu1.10:
	.long	0
	.text
	.globl _min_caml_start
	.align 2
_min_caml_start: # main entry point
#	main program starts
	addi	r2, 0, 123
	mfspr	r31, 8				# 1
	stw	r31, 0(r3)				# 1
	addi	r3, r3, -4				# 1
	bl	min_caml_print_int				# 1
	addi	r3, r3, 4				# 1
	lwz	r31, 0(r3)				# 1
	mtspr	8, r31				# 1
	addis	r2, 0, ha16(Tu2.9)
	ori	r2, r2, lo16(Tu2.9)
	stw	r0, 0(r2)
	addi	r2, 0, -456
	mfspr	r31, 8				# 2
	stw	r31, 0(r3)				# 2
	addi	r3, r3, -4				# 2
	bl	min_caml_print_int				# 2
	addi	r3, r3, 4				# 2
	lwz	r31, 0(r3)				# 2
	mtspr	8, r31				# 2
	addis	r2, 0, ha16(Tu1.10)
	ori	r2, r2, lo16(Tu1.10)
	stw	r0, 0(r2)
	addi	r2, 0, 789
	mfspr	r31, 8				# 3
	stw	r31, 0(r3)				# 3
	addi	r3, r3, -4				# 3
	bl	min_caml_print_int				# 3
	addi	r3, r3, 4				# 3
	lwz	r31, 0(r3)				# 3
	mtspr	8, r31				# 3
#	main program ends
	flush
	halt
