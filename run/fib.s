	.text
	.globl _min_caml_start
	.align 2
fib.10:
	cmpwi	cr7, r2, 1				# 2
	bgt	cr7, ble_else.23				# 2
	blr
ble_else.23:
	addi	r5, r2, -1				# 3
	stw	r2, 0(r3)				# 3
	mfspr	r31, 8				# 3
	mr	r2, r5				# 3
	stw	r31, -4(r3)				# 3
	addi	r3, r3, -8				# 3
	bl	fib.10				# 3
	addi	r3, r3, 8				# 3
	lwz	r31, -4(r3)				# 3
	mtspr	8, r31				# 3
	lwz	r5, 0(r3)				# 3
	addi	r5, r5, -2				# 3
	stw	r2, -4(r3)				# 3
	mfspr	r31, 8				# 3
	mr	r2, r5				# 3
	stw	r31, -8(r3)				# 3
	addi	r3, r3, -12				# 3
	bl	fib.10				# 3
	addi	r3, r3, 12				# 3
	lwz	r31, -8(r3)				# 3
	mtspr	8, r31				# 3
	lwz	r5, -4(r3)				# 3
	add	r2, r5, r2				# 3
	blr
_min_caml_start: # main entry point
#	main program starts
	addi	r2, 0, 10				# 4
	mfspr	r31, 8				# 4
	stw	r31, 0(r3)				# 4
	addi	r3, r3, -4				# 4
	bl	fib.10				# 4
	addi	r3, r3, 4				# 4
	lwz	r31, 0(r3)				# 4
	mtspr	8, r31				# 4
	mfspr	r31, 8				# 4
	stw	r31, 0(r3)				# 4
	addi	r3, r3, -4				# 4
	bl	min_caml_print_int				# 4
	addi	r3, r3, 4				# 4
	lwz	r31, 0(r3)				# 4
	mtspr	8, r31				# 4
#	main program ends
	flush
	halt
