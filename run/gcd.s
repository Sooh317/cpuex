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
	mr	r29, r5				# 3
	mr	r5, r2				# 3
	mr	r2, r29				# 3
	b	gcd.7				# 3
_min_caml_start: # main entry point
	mfspr	r0, 8
	stw	r30, -8(r1)
	stw	r31, -4(r1)
	stw	r0, 8(r1)
	stwu	r1, -96(r1)
#	main program starts
	addi	r2, 0, 21600
	addis	r5, 0, 5				# 4
	ori	r5, r5, 9820				# 4
	mfspr	r31, 8				# 4
	stw	r31, 4(r3)				# 4
	addi	r3, r3, 8				# 4
	bl	gcd.7				# 4
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