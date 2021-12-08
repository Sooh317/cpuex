	.literal4
LF_PI:
	.long 1078530011
LF_HALFPI:
	.long 1070141403
LF_HALFPI:
	.long 1070141403
LF_QUATPI:
	.long 1061752795
# 	.text
# 	.align	2
# 	.globl 	min_caml_print_newline
# min_caml_print_newline:
# 	mfspr 	r0, 8
# 	stw		r30, -8(r1)
# 	stw		r31, -4(r1)
# 	stw 	r0, 8(r1)
# 	stw	r3, 12(r1)
# 	stw	r4, 16(r1)
# 	stwu  	r1, -80(r1)
# 	mr 	r30, r1
# 	li	r3, 10
# 	bl 	putchar
# 	lwz 	r1, 0(r1)
# 	lwz 	r0, 8(r1)
# 	lwz	r3, 12(r1)
# 	lwz	r4, 16(r1)
# 	mtspr 	8, r0
# 	lwz		r30, -8(r1)
# 	lwz		r31, -4(r1)
# 	blr
# 	.section __TEXT, __picsymbolstub1, symbol_stubs, pure_instructions, 32
# 	.align 	5
# putchar:
# 	.indirect_symbol _putchar
# 	mfspr 	r0, 8
# 	bcl 	20, 31, L1spb
# L1spb:
# 	mfspr 	r11, 8
# 	addis 	r11, r11, ha16(putchar_lazy-L1spb)
# 	mtspr 	8, r0
# 	lwzu 	r12, lo16(putchar_lazy-L1spb)(r11)
# 	mtspr 	9, r12
# 	bctr
# 	.lazy_symbol_pointer
# putchar_lazy:
# 	.indirect_symbol _putchar
# 	.long	dyld_stub_binding_helper
# 	.subsections_via_symbols

#	print_newline
	.text
	.align 	2
	.globl	min_caml_print_newline
min_caml_print_newline:
	addi 	r2, 0, 13	# '\n' == 13
	out		r2, 0
	blr
# print_int(x)
# 	if (x == 0) {
# 		putchar('0');
# 		return;
# 	}
# 	if (x < 0) {
# 		putchar('-');
# 		x *= -1;
# 	}
# 	let count = 0;
# 	while (x != 0) {
# 		let y = x / 10;
# 		let z = x - y * 10;
# 		push(z);
# 		x = y;
# 		++count;
# 	}
# 	while (count != 0) {
# 		let x = pop();
# 		putchar('0' + x)
# 		--count;
# 	}
# 	return;
	.text
	.align 	2
	.globl	min_caml_print_int
min_caml_print_int:
	cmpwi	cr7, r2, 0
	addi	r5, 0, 0
	bgt		cr7, Lprint_int_gtzero
	bne		cr7, Lprint_int_nezero
	addi 	r2, 0, 48		# '0' == 48
	out 	r2, 0
	blr
Lprint_int_nezero:
	addi 	r3, 0, 45		# '-' == 45
	out 	r3, 0
	mulli	r2, -1
Lprint_int_gtzero:
	# count -> r5
	# y -> r6
	# z -> r7
	# x / 10 を掛け算に置き換える最適化
	addis	r6, 0, 52428
	ori		r6, r6, 52429
	mulhwu	r6,	r2, r6
	srwi 	r6, r6, 3
	mulli	r7, r6, 10
	sub		r7, r2, r7
	stw		r7, -4(r3)
	addi 	r3, r3, -4
	mr		r2, r6
	addi	r5, r5, 1
	cmpwi	cr7, r2, 0
	bne		cr7, Lprint_int_gtzero
Lprint_int_nonempty:
	stw		r2, 0(r3)
	addi 	r3, r3, 4
	addi 	r2, r2, 48		# '0' == 48
	out 	r2, 0
	addi	r5, r5, -1
	cmpwi	cr7, r5, 0
	bne		cr7, Lprint_int_nonempty
	blr
#	print_byte
	.text
	.align 	2
	.globl	min_caml_print_char
min_caml_print_char:
	.globl	min_caml_print_byte
min_caml_print_byte:
	out		r2, 0
	blr
#	read_int
	.text
	.align 	2
	.globl	min_caml_read_int
min_caml_read_int:
	in		r2
	blr
#	read_float
	.text
	.align 	2
	.globl	min_caml_read_float
min_caml_read_float:
	in		r2
	blr
#	create_array
	.text
	.align	2
	.globl	min_caml_create_array
min_caml_create_array:	
	mr		r6, r2
	mr		r2, r4
create_array_loop:
	cmpwi	cr7, r6, 0
	bne		cr7, create_array_cont
	b		create_array_exit
create_array_exit:
	blr
create_array_cont:
	stw		r5, 0(r4)
	subi  	r6, r6, 1
	addi	r4, r4, 4
	b		create_array_loop
#	create_float_array
	.globl	min_caml_create_float_array
min_caml_create_float_array:
	mr		r5, r2
	mr		r2, r4
create_float_array_loop:
	cmpwi	cr7, r5, 0
	bne		cr7, create_float_array_cont
	blr
create_float_array_cont:
	stfs	f0, 0(r4)
	addi	r5, r5, -1
	addi	r4, r4, 4
	b		create_float_array_loop
#	fabs
	.text
	.align 	2
	.globl	min_caml_fabs
min_caml_fabs:
	fabs	f0, f0
	blr
#	sqrt
	.text
	.align 	2
	.globl min_caml_sqrt
min_caml_sqrt:
	fsqrt 	f0, f0
	blr
# 	floor
	.text
	.align 	2
	.globl 	min_caml_floor
min_caml_floor:
	ffloor	f0, f0
	blr
	.text
	.align 	2
	.globl	min_caml_int_of_float
min_caml_int_of_float:
	.globl	min_caml_truncate
min_caml_truncate:
	fctiwz	r2, f0
	blr
#	float_of_int
# float_of_int(x) {
# 	if (x == 0)
# 		return 0;
# 	if (x == INT_MIN)
# 		return 0b1100'1111'0000'0000'0000'0000'0000'0000';
# 	let sgn = 0;
# 	if (x & 1 << 31 != 0) {
# 		sgn = 1;
# 		x *= -1;
# 	}
# 	let clz = cntlzw(x);
# 	let y = clz - 8;
# 	let exp, frac;
# 	if (y < 0) {
# 		// 桁落ち発生
# 		y *= -1;
# 		frac = x >> y;
# 		exp = y + 23 + 127;
# 	} else {
# 		x <<= y;
# 		frac = x << y;
# 		exp = 23 - y + 127;
# 	}
# 	frac = frac & 0xcfffff;
# 	let a = sgn << 31 | exp << 23 | frac;
# 	return a;
# }
	.globl	min_caml_float_of_int
min_caml_float_of_int:
	fcfiw	f0, r2
	blr

# 	cmpwi	cr7, r2, 0
# 	bne		cr7, Lfloat_of_int_nonzero
# 	addi	r5, 0, 0
# 	stw		r5,	0(r3)
# 	lfs		f0, 0(r3)
# 	blr
# Lfloat_of_int_nonzero:
# 	addis	r5, 0, 0x8000
# 	cmpwi	cr7, r2, r5
# 	bne		cr7, Lfloat_of_int_nonint_min
# 	addis	r5, 0, 0b1100111100000000
# 	stw		r5,	0(r3)
# 	lfs		f0, 0(r3)
# 	blr
# Lfloat_of_int_nonint_min:
# # sgn -> r5
# 	addi	r5, 0, 0
# 	andis	r2, r2, 0x8000
# 	cmpwi	cr7, r2, 0
# 	bne		cr7, Lfloat_of_int_nonnegative
# 	mulli	r2, r2, -1
# 	addis 	r5, 0, 0x8000
# Lfloat_of_int_nonnegative:
# # clz, y -> r6
# # exp -> r7
# # frac -> r8
# 	cntlzw	r6,	r2

#	reduce_to_2pi (internal)
	.text
	.align 	2
	.globl min_caml_reduce_to_2pi
min_caml_reduce_to_2pi:
	# 2.0
	addis	r2, 0, 0x4000
	stw		r2, 0(r3)
	addis	r5, 0, ha16(LF_PI)
	add		r5, r5, lo16(LF_PI)
	stw		r5, -4(r3)
	lfs		f2, 0(r3)
	lfs		f1, -4(r3)
	fmul	f3, f1, f2
	fmr		f1, f3
	fcmpu	cr7, f0, f1
	blt		cr7, Lreduce_to_2pi_AltP
Lreduce_to_2pi_AgeP:
	fmul	f1, f1, f2
	fcmpu	cr7, f0, f1
	bge		cr7, Lreduce_to_2pi_AgeP
Lreduce_to_2pi_AltP:
	fcmpu	cr7, f0, f3
	blt		cr7, Lreduce_to_2pi_Alt2pi
Lreduce_to_2pi_Age2pi:
	fcmpu	cr7, f0, f1
	blt		cr7, Lreduce_to_2pi_if_AltP
	fsub	f0, f0, f1
Lreduce_to_2pi_if_AltP:
	fhalf	f0, f0
	fcmpu	cr7, f0, f3
	bge		cr7, Lreduce_to_2pi_Age2pi
Lreduce_to_2pi_Alt2pi:
	blr

#	cos
	.text
	.align 	2
	.globl min_caml_cos
min_caml_cos:
	mfspr	r2, 8
	addi	r3, r3, -4
	stw		r2, 4(r3)
	fabs	f0, f0
	bl		min_caml_reduce_to_2pi
	addis	r5, 0, ha16(LF_PI)
	add		r5, r5, lo16(LF_PI)
	stw		r5, 0(r3)
	addis	r6, 0, ha16(LF_HALFPI)
	add		r6, r6, lo16(LF_HALFPI)
	stw		r6, -4(r3)
	addis	r7, 0, ha16(LF_QUATPI)
	add		r7, r7, lo16(LF_QUATPI)
	stw		r5, -8(r3)
	lfs		f1, 0(r3)
	lfs		f2, -4(r3)
	lfs		f3, -8(r3)
	addi	r2, 0, 1	# r2 is a sgn (-1 is minus)
	fcmpu	cr7, f0, f1
	blt		cr7, Lcos_ltPi
	fsub	f0, f0, f1
	addi	r2, 0, -1
Lcos_ltPi:
	fcmpu	cr7, f0, f2
	blt		cr7, Lcos_ltHalfPi
	fsub	f0, f1, f0
	mulli	r2, r2, -1
Lcos_ltHalfPi:
	fcmpu	cr7, f3, f0
	blt		cr7, Lcos_gtQuatPi
	fcos	f0, f0
	b		Lcos_end
Lcos_gtQuatPi:
	fsub	f0, f2, f0
	fsin	f0, f0
Lcos_end:
	cmpwi	cr7, 0, r2
	blt		cr7, Lcos_signed
	fneg	f0, f0
Lcos_signed:
	lwz		r2, 4(r3)
	addi	r3, r3, 4
	mtspr	8, r2
	blr

#	sin
	.text
	.align 	2
	.globl 	min_caml_sin
min_caml_sin:
	mfspr	r2, 8
	addi	r3, r3, -8
	stw		r2, 8(r3)
	addi	r5, 0, 0
	stw		r5, 4(r3)
	lfs		f1,	4(r3)
	addi	r6, 0, 1
	fcmpu	cr7, f1, f0
	blt		cr7, Lsin_positive
	addi	r6, 0, -1
Lsin_positive:
	stw		r6, 4(r3)
	fabs	f0, f0
	bl		min_caml_reduce_to_2pi
	lwz		r2, 4(r3)		# r2 is a sgn (-1 is minus)
	addi	r3, r3, 4
	addis	r5, 0, ha16(LF_PI)
	add		r5, r5, lo16(LF_PI)
	stw		r5, 0(r3)
	addis	r6, 0, ha16(LF_HALFPI)
	add		r6, r6, lo16(LF_HALFPI)
	stw		r6, -4(r3)
	addis	r7, 0, ha16(LF_QUATPI)
	add		r7, r7, lo16(LF_QUATPI)
	stw		r5, -8(r3)
	lfs		f1, 0(r3)
	lfs		f2, -4(r3)
	lfs		f3, -8(r3)
	fcmpu	cr7, f0, f1
	blt		cr7, Lsin_ltPi
	fsub	f0, f0, f1
	mulli	r2, r2, -1
Lsin_ltPi:
	fcmpu	cr7, f0, f2
	blt		cr7, Lsin_ltHalfPi
	fsub	f0, f1, f0
Lsin_ltHalfPi:
	fcmpu	cr7, f3, f0
	blt		cr7, Lsin_gtQuatPi
	fcos	f0, f0
	b		Lsin_end
Lsin_gtQuatPi:
	fsub	f0, f2, f0
	fsin	f0, f0
Lsin_end:
	cmpwi	cr7, 0, r2
	blt		cr7, Lsin_signed
	fneg	f0, f0
Lsin_signed:
	lwz		r2, 4(r3)
	addi	r3, r3, 4
	mtspr	8, r2
	blr

#	atan
	.text
	.align 	2
	.globl min_caml_atan
min_caml_atan:
	fatan	f0, f0
	blr
