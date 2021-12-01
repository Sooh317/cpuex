	.text
	.globl _min_caml_start
	.align 2
ack.15:
	cmpwi	cr7, r2, 0				# 2
	bgt	cr7, ble_else.33				# 2
	addi	r2, r5, 1				# 2
	blr
ble_else.33:
	cmpwi	cr7, r5, 0				# 3
	bgt	cr7, ble_else.34				# 3
	addi	r5, 0, 1
	addi	r2, r2, -1				# 3
	b	ack.15				# 3
ble_else.34:
	addi	r6, r2, -1				# 4
	addi	r5, r5, -1				# 4
	stw	r6, 0(r3)				# 4
	mfspr	r31, 8				# 4
	stw	r31, 4(r3)				# 4
	addi	r3, r3, 8				# 4
	bl	ack.15				# 4
	addi	r3, r3, -8				# 4
	lwz	r31, 4(r3)				# 4
	mr	r5, r2				# 4
	mtspr	8, r31				# 4
	lwz	r2, 0(r3)				# 4
	b	ack.15				# 4
_min_caml_start: # main entry point
	addi	r2, 0, 3
	addi	r5, 0, 10
	mfspr	r31, 8				# 5
	stw	r31, 0(r3)				# 5
	addi	r3, r3, 4				# 5
	bl	ack.15				# 5
	addi	r3, r3, -4				# 5
	lwz	r31, 0(r3)				# 5
	mtspr	8, r31				# 5
	mfspr	r31, 8				# 5
	stw	r31, 0(r3)				# 5
	addi	r3, r3, 4				# 5
	bl	min_caml_print_int				# 5
	addi	r3, r3, -4				# 5
	lwz	r31, 0(r3)				# 5
	mtspr	8, r31				# 5
#	main program ends
	halt
