	.data
	.literal4
	.align 2
Ti4.20:
	.long	123
	.align 2
Tu3.11:
	.long	0
	.align 2
Ti6.18:
	.long	-456
	.align 2
Tu2.12:
	.long	0
	.align 2
Ti9.15:
	.long	789
	.align 2
Tu1.13:
	.long	0
	.align 2
Ti10.14:
	.long	99887733
	.text
	.globl _min_caml_start
	.align 2
_min_caml_start: # main entry point
#	main program starts
	addis	r2, r2, ha16(Ti4.20)
	ori	r2, r2, lo16(Ti4.20)
	lwz	r2, 0(r2)
	addis	r5, r5, ha16(Tu3.11)
	ori	r5, r5, lo16(Tu3.11)
	addis	r6, r6, ha16(Ti6.18)
	ori	r6, r6, lo16(Ti6.18)
	lwz	r6, 0(r6)
	addis	r7, r7, ha16(Tu2.12)
	ori	r7, r7, lo16(Tu2.12)
	addis	r8, r8, ha16(Ti9.15)
	ori	r8, r8, lo16(Ti9.15)
	lwz	r8, 0(r8)
	addis	r9, r9, ha16(Tu1.13)
	ori	r9, r9, lo16(Tu1.13)
	addis	r10, r10, ha16(Ti10.14)
	ori	r10, r10, lo16(Ti10.14)
	lwz	r10, 0(r10)
	stw	r10, 0(r3)				# 1
	stw	r9, -4(r3)				# 1
	stw	r8, -8(r3)				# 1
	stw	r7, -12(r3)				# 1
	stw	r6, -16(r3)				# 1
	stw	r5, -20(r3)				# 1
	mfspr	r31, 8				# 1
	stw	r31, -24(r3)				# 1
	addi	r3, r3, -28				# 1
	bl	min_caml_print_int				# 1
	addi	r3, r3, 28				# 1
	lwz	r31, -24(r3)				# 1
	mtspr	8, r31				# 1
	lwz	r2, -20(r3)
	stw	r0, 0(r2)
	lwz	r2, -16(r3)				# 2
	mfspr	r31, 8				# 2
	stw	r31, -24(r3)				# 2
	addi	r3, r3, -28				# 2
	bl	min_caml_print_int				# 2
	addi	r3, r3, 28				# 2
	lwz	r31, -24(r3)				# 2
	mtspr	8, r31				# 2
	lwz	r2, -12(r3)
	stw	r0, 0(r2)
	lwz	r2, -8(r3)				# 3
	mfspr	r31, 8				# 3
	stw	r31, -24(r3)				# 3
	addi	r3, r3, -28				# 3
	bl	min_caml_print_int				# 3
	addi	r3, r3, 28				# 3
	lwz	r31, -24(r3)				# 3
	mtspr	8, r31				# 3
	lwz	r2, -4(r3)
	stw	r0, 0(r2)
	lwz	r2, 0(r3)				# 4
	mfspr	r31, 8				# 4
	stw	r31, -24(r3)				# 4
	addi	r3, r3, -28				# 4
	bl	min_caml_print_int				# 4
	addi	r3, r3, 28				# 4
	lwz	r31, -24(r3)				# 4
	mtspr	8, r31				# 4
#	main program ends
	halt
