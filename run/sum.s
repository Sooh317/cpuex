	.text
	.globl _min_caml_start
	.align 2
sum.7:
	cmpwi	cr7, r2, 0				# 2
	bgt	cr7, ble_else.17				# 2
	addi	r2, 0, 0
	blr
ble_else.17:
	addi	r5, r2, -1				# 3
	stw	r2, 0(r3)				# 3
	mfspr	r31, 8				# 3
	mr	r2, r5				# 3
	stw	r31, 4(r3)				# 3
	addi	r3, r3, 8				# 3
	bl	sum.7				# 3
	addi	r3, r3, -8				# 3
	lwz	r31, 4(r3)				# 3
	mtspr	8, r31				# 3
	lwz	r5, 0(r3)				# 3
	add	r2, r2, r5				# 3
	blr
_min_caml_start: # main entry point
	addi	r2, 0, 10000
	mfspr	r31, 8				# 4
	stw	r31, 0(r3)				# 4
	addi	r3, r3, 4				# 4
	bl	sum.7				# 4
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