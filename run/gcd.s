	.text
	.globl _min_caml_start
	.align 2
gcd.7:
	cmpwi	cr7, r2, 0				# 2
	bne	cr7, beq_else.17				# 2
	mr	r2, r5				# 2
	blr
beq_else.17:
	cmpw	cr7, r2, r5				# 3
	bgt	cr7, ble_else.18				# 3
	sub	r5, r5, r2				# 3
	b	gcd.7				# 3
ble_else.18:
	sub	r2, r2, r5				# 4
	mr	r30, r5				# 4
	mr	r5, r2				# 4
	mr	r2, r30				# 4
	b	gcd.7				# 4
_min_caml_start: # main entry point
#	main program starts
	addi	r2, 0, 21600				# 5
	addis	r5, 0, 5				# 5
	ori	r5, r5, 9820				# 5
	mfspr	r31, 8				# 5
	stw	r31, 0(r3)				# 5
	addi	r3, r3, -4				# 5
	bl	gcd.7				# 5
	addi	r3, r3, 4				# 5
	lwz	r31, 0(r3)				# 5
	mtspr	8, r31				# 5
	mfspr	r31, 8				# 5
	stw	r31, 0(r3)				# 5
	addi	r3, r3, -4				# 5
	bl	min_caml_print_int				# 5
	addi	r3, r3, 4				# 5
	lwz	r31, 0(r3)				# 5
	mtspr	8, r31				# 5
#	main program ends
	flush
	halt
