	.data
    .literal4
LF_PI:
	.long 1078530011
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
	addi 	r2, 0, 10	# '\n' == 10 (LF)
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
	blt		cr7, Lprint_int_halt
	cmpwi	cr7, r2, 200
	blt		cr7, Lprint_int_lt200
	addi	r5, 0, 50
	out		r5, 0
	addi	r2, r2, -200
	b		Lprint_int_2d
Lprint_int_lt200:
	cmpwi	cr7, r2, 100
	blt		cr7, Lprint_int_lt100
	addi	r5, 0, 49
	out		r5, 0
	addi	r2, r2, -100
	b		Lprint_int_2d
Lprint_int_lt100:
	addi	r5, 0, 48
	out		r5, 0
Lprint_int_2d:			# r2 < 100
	addi	r5, 0, 9
Lprint_int_loop:
	slwi	r6, r5, 3
	slwi	r7, r5, 1
	add		r6, r6, r7		# r6 == r5 * 10
	cmpw	cr7, r6, r2
	bgt		cr7, Lprint_int_cont
	b		Lprint_int_d1
Lprint_int_cont:
	addi	r5, r5, -1
	b		Lprint_int_loop
Lprint_int_d1:
	addi	r5, r5, 48
	out		r5, 0
	sub		r2, r2, r6
	addi	r2, r2, 48
	out		r2, 0
	blr
Lprint_int_halt:
	halt
	halt
	halt
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
	stw		r2, 0(r3)
	lfs		f0, 0(r3)
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
	addi  	r6, r6, -1
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
	# A -> f0
	addis	r2, 0, 0x4000		# 2.0
	stw		r2, 0(r3)
	lfs		f2, 0(r3)		# 2.0 -> f2
	addis	r5, 0, ha16(LF_PI)
	ori		r5, r5, lo16(LF_PI)
	lfs		f1, 0(r5)
	fmul	f3, f1, f2		# 2PI -> f3
	fmr		f1, f3		# P -> f1
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
	fhalf	f1, f1
	fcmpu	cr7, f0, f3
	bge		cr7, Lreduce_to_2pi_Age2pi
Lreduce_to_2pi_Alt2pi:
	blr

#	cos
	.text
	.align 	2
	.globl min_caml_cos
min_caml_cos:
	fcos	f0, f0
	blr

#	sin
	.text
	.align 	2
	.globl 	min_caml_sin
min_caml_sin:
	fsin	f0, f0
	blr

#	atan
	.text
	.align 	2
	.globl min_caml_atan
min_caml_atan:
	fatan	f0, f0
	blr