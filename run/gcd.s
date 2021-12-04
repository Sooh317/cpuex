	.text
	.globl _min_caml_start
	.align 2
gcd.7:
	cmpwi	cr7, r2, 0				# 2
	bgt	cr7, ble_else.17				# 2
	mr	r2, r5				# 2
	blr
ble_else.17:
	cmpw	cr7, r2, r5				# 3
	bgt	cr7, ble_else.18				# 3
	sub	r5, r5, r2				# 3
	b	gcd.7				# 3
ble_else.18:
	sub	r2, r2, r5				# 3
	mr	r30, r5				# 3
	mr	r5, r2				# 3
	mr	r2, r30				# 3
	b	gcd.7				# 3
_min_caml_start: # main entry point
	addi	r2, 0, 21600
	addis	r5, 0, 5				# 4
	ori	r5, r5, 9820				# 4
	mfspr	r31, 8				# 4
	stw	r31, 0(r3)				# 4
	addi	r3, r3, 4				# 4
	bl	gcd.7				# 4
	addi	r3, r3, -4				# 4
	lwz	r31, 0(r3)				# 4
	mtspr	8, r31				# 4
	mfspr	r31, 8				# 4
	stw	r31, 0(r3)				# 4
	addi	r3, r3, 4				# 4
#	bl	min_caml_print_int				# 4
	addi	r3, r3, -4				# 4
	lwz	r31, 0(r3)				# 4
	mtspr	8, r31				# 4
#	main program ends
	halt