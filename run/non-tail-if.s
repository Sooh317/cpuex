	.data
	.literal4
	.align 2
Td1.27:	 # 1.230000
	.long	1067282596
	.align 2
x.13:
	.long	0
	.align 2
Td2.26:	 # 4.560000
	.long	1083304837
	.align 2
y.14:
	.long	0
	.align 2
Td4.24:	 # -7.890000
	.long	-1057195295
	.align 2
z.15:
	.long	0
	.align 2
Ti6.20:
	.long	0
	.align 2
Ti8.21:
	.long	0
	.align 2
Ti9.17:
	.long	0
	.align 2
Ti11.18:
	.long	0
	.align 2
Ti12.16:
	.long	0
	.text
	.globl _min_caml_start
	.align 2
_min_caml_start: # main entry point
#	main program starts
	addis	r2, 0, ha16(Td1.27)
	ori	r2, r2, lo16(Td1.27)
	lfs	f0, 0(r2)
	mfspr	r31, 8				# 1
	stw	r31, 0(r3)				# 1
	addi	r3, r3, -4				# 1
	bl	min_caml_truncate				# 1
	addi	r3, r3, 4				# 1
	lwz	r31, 0(r3)				# 1
	mtspr	8, r31				# 1
	addis	r5, 0, ha16(x.13)
	ori	r5, r5, lo16(x.13)
	stw	r2, 0(r5)
	addis	r5, 0, ha16(Td2.26)
	ori	r5, r5, lo16(Td2.26)
	lfs	f0, 0(r5)
	stw	r2, 0(r3)				# 2
	mfspr	r31, 8				# 2
	stw	r31, -4(r3)				# 2
	addi	r3, r3, -8				# 2
	bl	min_caml_truncate				# 2
	addi	r3, r3, 8				# 2
	lwz	r31, -4(r3)				# 2
	mtspr	8, r31				# 2
	addis	r5, 0, ha16(y.14)
	ori	r5, r5, lo16(y.14)
	stw	r2, 0(r5)
	addis	r5, 0, ha16(Td4.24)
	ori	r5, r5, lo16(Td4.24)
	lfs	f0, 0(r5)
	stw	r2, -4(r3)				# 3
	mfspr	r31, 8				# 3
	stw	r31, -8(r3)				# 3
	addi	r3, r3, -12				# 3
	bl	min_caml_truncate				# 3
	addi	r3, r3, 12				# 3
	lwz	r31, -8(r3)				# 3
	mtspr	8, r31				# 3
	addis	r5, 0, ha16(z.15)
	ori	r5, r5, lo16(z.15)
	stw	r2, 0(r5)
	addi	r5, 0, 0
	cmpw	cr7, r5, r2				# 5
	bgt	cr7, ble_else.59				# 5
	lwz	r6, 0(r3)				# 5
	b	ble_cont.60				# 5
ble_else.59:
	lwz	r6, -4(r3)				# 5
ble_cont.60:
	addis	r7, 0, ha16(Ti6.20)
	ori	r7, r7, lo16(Ti6.20)
	stw	r6, 0(r7)
	lwz	r7, 0(r3)				# 6
	cmpw	cr7, r7, r5				# 6
	bgt	cr7, ble_else.61				# 6
	lwz	r8, -4(r3)				# 6
	b	ble_cont.62				# 6
ble_else.61:
	mr	r8, r2				# 6
ble_cont.62:
	addis	r9, 0, ha16(Ti8.21)
	ori	r9, r9, lo16(Ti8.21)
	stw	r8, 0(r9)
	add	r6, r6, r8				# 5
	addis	r8, 0, ha16(Ti9.17)
	ori	r8, r8, lo16(Ti9.17)
	stw	r6, 0(r8)
	lwz	r8, -4(r3)				# 7
	cmpw	cr7, r5, r8				# 7
	bgt	cr7, ble_else.63				# 7
	b	ble_cont.64				# 7
ble_else.63:
	mr	r2, r7				# 7
ble_cont.64:
	addis	r5, 0, ha16(Ti11.18)
	ori	r5, r5, lo16(Ti11.18)
	stw	r2, 0(r5)
	add	r2, r6, r2				# 5
	addis	r5, 0, ha16(Ti12.16)
	ori	r5, r5, lo16(Ti12.16)
	stw	r2, 0(r5)
	mfspr	r31, 8				# 4
	stw	r31, -8(r3)				# 4
	addi	r3, r3, -12				# 4
	bl	min_caml_print_int				# 4
	addi	r3, r3, 12				# 4
	lwz	r31, -8(r3)				# 4
	mtspr	8, r31				# 4
#	main program ends
	flush
	halt
