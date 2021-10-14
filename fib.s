	.text
	.globl _min_caml_start
	.align 2
fib.10:
	cmpwi	cr7, r2, 1
	bgt	cr7, ble_else.24
	blr
ble_else.24:
	addi	r5, r2, -1
	stw	r2, 0(r3)
	mfspr	r31, 8
	mr	r2, r5
	stw	r31, 4(r3)
	addi	r3, r3, 8
	bl	fib.10
	addi	r3, r3, -8
	lwz	r31, 4(r3)
	mtspr	8, r31
	lwz	r5, 0(r3)
	addi	r5, r5, -2
	stw	r2, 4(r3)
	mfspr	r31, 8
	mr	r2, r5
	stw	r31, 12(r3)
	addi	r3, r3, 16
	bl	fib.10
	addi	r3, r3, -16
	lwz	r31, 12(r3)
	mtspr	8, r31
	lwz	r5, 4(r3)
	add	r2, r5, r2
	blr
_min_caml_start: # main entry point
	mfspr	r0, 8
	stmw	r30, -8(r1)
	stw	r0, 8(r1)
	stwu	r1, -96(r1)
#	main program starts
	addi	r2, 0, 30
	mfspr	r31, 8
	stw	r31, 4(r3)
	addi	r3, r3, 8
	bl	fib.10
	addi	r3, r3, -8
	lwz	r31, 4(r3)
	mtspr	8, r31
	mfspr	r31, 8
	stw	r31, 4(r3)
	addi	r3, r3, 8
	bl	min_caml_print_int
	addi	r3, r3, -8
	lwz	r31, 4(r3)
	mtspr	8, r31
#	main program ends
	lwz	r1, 0(r1)
	lwz	r0, 8(r1)
	mtspr	8, r0
	lmw	r30, -8(r1)
	blr
