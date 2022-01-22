import random
import struct 
import os
import math


class FloatNotValid(Exception):
    pass
class SigErr(Exception):
    pass 
class ExpErr(Exception):
    pass 
class MantiErr(Exception):
    pass

def double_to_hex(f):
    """ float値を16進数文字列に変換する
    参考: https://note.nkmk.me/python-float-hex/
    """
    return hex(struct.unpack('>Q', struct.pack('>d', f))[0])


def double_to_bin(f):
    """ 数値を2進数の文字列(64bit長)に変換する
    double_to_bin(1.0)  => 0b0011111111110000000000000000000000000000000000000000000000000000
    double_to_bin(-1.0) => 0b1011111111110000000000000000000000000000000000000000000000000000
    """
    b = bin(int(double_to_hex(f), 16))
    bits = b[2:]
    if len(bits) < 64:  # 0が省略されてるとき
        b = b[0:2] + "0"*(64-len(bits)) + bits
    return b


class myfloat:
    """class to emulate float 32.

    Args:
        sig (int): sign, 1bit. 0 = positive, 1 = negative.
        exp (int): exponent bits, 8 bits.
        manti (int): mantissa, 1 + 23bits (includes the leading 1).
    """
    def __init__(self, sig: int, exp: int, manti: int):
        self.data = (sig, exp, manti) 
        self.sig, self.exp, self.manti = self.data
        self.valid()

    def __neg__(self):
        """Negation. Returns a myfloat obj whose sign bit is the inverse of self.

        Returns:
            myfloat: myfloat obj whose value is (-self).
        """
        sig, exp, manti = self.data 
        return myfloat((1+sig) % 2, exp, manti)

    def __abs__(self):
        """Absolute value of self.
        
        Returns:
            myfloat: abs(self).
        """
        return myfloat(0, self.exp, self.manti)

    def __eq__(self, other):
        return self.data == other.data

    def valid(self):
        """Check if values given to constructer is valid.

        A sign bit must be 0 or 1. Exponet bits x should be 0 <= x < 2**8.
        Mantissa x should be 2**23 <= x < 2**24.
        """
        if self.sig < 0 or self.sig > 1:
            raise SigErr(f"illegal sign {self.sig} given.")
        if self.exp < 0 or self.exp >= 2**8:
            raise ExpErr(f"illegal exponent {self.exp} given.")
        if self.manti < 2**23 or self.manti >= 2**24:
            raise MantiErr(f"illegal mantissa {self.manti} given.")
        if(self.sig < 0 or self.sig > 1 
            or self.exp < 0 or self.exp >= 2**8
            or self.manti < 2**23 or self.manti >= 2**24):
            raise FloatNotValid(f"illegal value ({self.sig}, {self.exp}, {self.manti}) given to constructor.")

    def tostring(self):
        """Convert self to a string of length 32, each of which shows the value of a single bit.
        
        Returns:
            str: The string which represents bit array of self.
        """
        strsig = str(self.sig)

        strexp = bin(self.exp)[2:]
        strexp = "0"*(8-len(strexp)) + strexp

        strmanti = bin(self.manti)[3:]

        strfloat = strsig + strexp + strmanti 
        # print(len(strsig), len(strexp), len(strmanti))
        assert len(strfloat) == 32 

        return strfloat

    def tofloat64(self):
        """Convert self to float in Python (double in C, double precision).

        Returns:
            float: A float whose value is closest to self.
        """
        sig = bin(self.sig)[2:]
        exp = bin(self.exp - 127 + 1023)[2:]
        exp = "0"*(11-len(exp)) + exp

        manti = (bin(self.manti) + "0"*29)[3:]

        if self.exp == 0:
            exp = "0"*11
            manti = "0"*52

        b = struct.pack(">Q", int(sig+exp+manti, 2))
        return struct.unpack(">d", b)[0]

    def print(self):
        """Print data in a readable way.
        """
        print("decode:")
        print(f"sig: {self.data[0]}, exp: {self.data[1]} \
= {self.data[1] - 127}, manti = {self.data[2]}")
        # print(self.data)
        print("binary:")
        flstr = self.tostring()
        print(flstr[0], flstr[1:9], flstr[9:])


def manti2int(sig: str):
    """mantissa to integer. 23bit string to 1 + 23 bits integer.

    Args:
        sig (str): A string of length 23 which represents mantissa.

    Returns:
        int: A int value whose bit pattern is the same as {1'b1, sig}.
    """
    sig = "1" + sig 
    sig = int(sig, 2)
    return sig


def float_parse(operand: str):
    """string of one operand to myfloat(sign, exp, manti).

    Args:
        operand (str): A string of length 32 which represents 32bit float.

    Returns:
        myfloat: myfloat object.
    """
    return myfloat(int(operand[0], 2), int(operand[-31:-23], 2), manti2int(operand[-23:]))


def rand_float():
    """Generate myfloat of random value.

    Returns:
        myfloat: myfloat object of random value.
    """
    ans = ""
    for _ in range(32):
        ans += str(random.randint(0, 1))

    return float_parse(ans)


def print_float(str_floats, operation):
    """(Deprecated) given a string of (op1, op2, ret) split by space, 
    print everything needed. type operation: (op1(str), op2(str)) -> tuple
    """
    tup_float = str_floats.split()

    print("operands:")
    print(tup_float[0])
    print(float_parse(tup_float[0]).data)
    print(tup_float[1])
    print(float_parse(tup_float[1]).data)

    print("returned:")
    print(tup_float[2])
    print(float_parse(tup_float[2]).data)
    print("")

    calc = operation(*tup_float[:2])
    retfloat = tup_float[2]

    # main part
    print("sign:")
    print(f"returned: {retfloat[0]}, calc: {calc[0]}")

    print("exp:")
    print(f"returned: {int(retfloat[1:9], 2)-127}, calc: {calc[1]-127}")

    print("returned significand:")
    print("1" + (retfloat[-23:]))

    print("expected significand:")
    print(bin(calc[2])[2:])
    
    return


def fadd(op1, op2):
    """Emulate fadd module.

    Logic is a little complicated to be sure that it returns exactly the same
    value as fadd module written in verilog.

    Args:
        op1 (myfloat): augend.
        op2 (myfloat): addend.

    Returns:
        myfloat: sum.
    """
    # op1, op2 = map(fpu.float_parse, [op1, op2])
    op1, op2 = map(lambda x: x.data, (op1, op2))
    
    if op1[1] < op2[1]:
        op_pre, op_post = op2, op1 
    elif op1[1] > op2[1]:
        op_pre, op_post = op1, op2 
    else:
        if op1[2] > op2[2]:
            op_pre, op_post = op1, op2 
        else:
            op_pre, op_post = op2, op1 
    
    newexp = op_pre[1]
    expdiff = op_pre[1] - op_post[1]

    if op_post[1] == 0:
        newmanti = op_pre[2]
        newexp = op_pre[1]
    elif op_pre[0] == op_post[0]:
        # addition
        newmanti = op_pre[2] + (op_post[2] >> expdiff)
        if len(bin(newmanti)[2:]) > 24:
            newmanti = newmanti >> 1
            newexp += 1
    else:
        # subtraction
        newmanti = op_pre[2] - (op_post[2] >> expdiff)
        if newmanti == 0:
            newmanti = 1 << 23
            newexp = 0
        else:
            while len(bin(newmanti)[2:]) < 24:
                newmanti <<= 1
                newexp -= 1 

    if newexp < 0:
        newexp = 0 
        newmanti = 1 << 23

    return myfloat(op_pre[0], newexp, newmanti)


"""Add fadd operation as a method of myfloat.
"""
myfloat.__add__ = lambda self, other: fadd(self, other)


# def __sub__(self, other):
#     """Emulate fsub module.
#     """
#     return self + (-other)


"""Same for fsub.
"""
# myfloat.__sub__ = __sub__
myfloat.__sub__ = lambda self, other: self + (-other)


def fmul(op1, op2):
    """Emulate fmul module.

    Again logic is complicated to emulate fmul in verilog.

    Args:
        op1 (myfloat): multiplicand.
        op2 (myfloat): multiplier.

    Returns:
        myfloat: product.
    """
    strmanti1, strmanti2 = map(lambda flt: bin(flt.manti)[2:], (op1, op2))

    assert len(strmanti1) == 24 and len(strmanti2) == 24 

    bits = []
    for i in strmanti2:
        if i == "1":
            bits += [strmanti1]
        elif i == "0":
            bits += ["0"*24] 
        else:
            raise FloatNotValid("failed to convert myfloat to string.")

    carry = ["0" for _ in range(23)]

    # print(bits)
    # step1
    for i in range(12):
        uno = int(bits[i*2][-23:], 2) << 1
        dos = uno + int(bits[i*2+1], 2)

        # 25 bits
        bits[i*2] = bits[i*2][:-23] + ("0"*24 + bin(dos)[2:])[-24:]
        # print(len(bits[i*2]))
        assert len(bits[i*2]) == 25

        # print(len(bin(dos)[2:]))
        if len(bin(dos)[2:]) == 25:
            # print("carry1")
            carry[i*2] = "1"

    # print(bits)
    # step2
    for i in range(6):
        uno = int(bits[i*4][-23:], 2) << 2
        dos = uno + int(bits[i*4+2], 2)

        bits[i*4] = bits[i*4][:-23] + ("0"*24 + bin(dos)[2:])[-25:]
        assert len(bits[i*4]) == 27

        if len(bin(dos)[2:]) == 26:
            # print("carry2")
            carry[i*4 + 2 - 1] = "1"

    # print(bits)
    # step3 
    for i in range(3):
        uno = int(bits[i*8][-23:], 2) << 4
        dos = uno + int(bits[i*8+4], 2)

        bits[i*8] = bits[i*8][:-23] + ("0"*27 + bin(dos)[2:])[-27:]
        assert len(bits[i*8]) == 31

        if len(bin(dos)[2:]) == 28:
            # print("carry3")
            carry[i*8 + 4 - 1] = "1"

    # print(bits)
    # step4 
    uno = int(bits[0], 2) + (int("".join(carry), 2) << 8)
    assert len(bin(uno)[2:]) == 31 or len(bin(uno)[2:]) == 32
    dos = int(bits[8][:23], 2) + int(bits[16][:15], 2)

    # final 
    ans = int(("0"*5 + bin(uno)[2:])[:-5], 2) + int(("0"*5 + bin(dos)[2:])[:-5], 2)

    # print(len(bin(ans)[2:]))
    assert len(bin(ans)[2:]) == 26 or len(bin(ans)[2:]) == 27

    newsig = op1.sig ^ op2.sig 
    newexp = op1.exp + op2. exp - 127 
    newmanti = int(bin(ans)[2:][:24], 2)
    if len(bin(ans)[2:]) == 27:
        newexp += 1

    if newexp < 1 or op1.exp == 0 or op2.exp == 0:
        newexp = 0

    return myfloat(newsig, newexp, newmanti)

# def fmul(op1, op2):
#     """Updated fmul, emulates fmul module.

#     Again logic is complicated to emulate fmul in verilog.

#     Args:
#         op1 (myfloat): multiplicand.
#         op2 (myfloat): multiplier.

#     Returns:
#         myfloat: product.
#     """
#     high1 = op1.manti >> 11
#     high2 = op2.manti >> 11 

#     low1 = op1.manti & bitmaskn(11)
#     low2 = op2.manti & bitmaskn(11)

#     mul0 = high1 * high2 
#     mul1 = high1 * low2 
#     mul2 = high2 * low1 

#     add0 = (mul1 >> 10) + (mul2 >> 10) 
#     add1 = mul0 + (add0 >> 1)

#     manti = ((add1 & bitmaskn(25)) >> 2) if (add1 & (1 << 25)) else ((add1 & bitmaskn(24)) >> 1)  
#     manti += 1 << 23

#     sig = op1.sig ^ op2.sig 
#     exp = op1.exp + op2.exp + (1 if add1 & (1<<25) else 0) - 127*2
    
#     if (op1.exp == 0) or (op2.exp == 0):
#         exp = 0
#     elif exp < -126:
#         exp = 0
#     else:
#         exp = bitmaskn(8) & (exp + 127) 

#     return myfloat(sig, exp, manti)


myfloat.__mul__ = lambda self, other: fmul(self, other)


def float64tomyfloat(a):
    """Convert float (in Python, double precision floating point number) to myfloat.

    Args:
        a (float): float (in Python) value.

    Returns:
        myfloat: the input value represented in the form of myfloat.
    """
    b = struct.pack(">d", a)
    c = struct.unpack(">Q", b)[0]

    cdash = bin(c)[2:]
    astr = "0"*(64-len(cdash)) + cdash 

    sig = int(astr[0], 2) 
    exp = int(astr[1:12], 2) - 1023 + 127
    # double 0 
    if exp == -896:
        exp = 0
    manti = int("1"+astr[12:35], 2)
    if astr[35] == "1":
        manti += 1
    if manti == (1<<24):
        manti = 1<<23 
        exp += 1
    amyfl = myfloat(sig, exp, manti)
    
    return amyfl


"""Load fsqrttable for linear approximation in fsqrt.
"""
with open("fputable/fsqrttable.mem", "r") as f:
    fsqrttable = f.readlines()
    fsqrttable = [i.rstrip() for i in fsqrttable]


def fsqrt(fl):
    """Emulate fsqrt, returns square root of input.

    Call fsub, fadd, fmul inside the function so that the return value 
    is exactly the same as fsqrt in verilog.

    Args:
        fl (myfloat): operand.

    Returns:
        myfloat: calculated value.
    """
    flstr = fl.tostring()
    tagstr = flstr[-24:-14]
    if tagstr[0] == "0":
        tagstr = "1" + tagstr[1:]
    else:
        tagstr = "0" + tagstr[1:]
    tag = int(tagstr, 2)
    data = fsqrttable[tag]
    midy, mydydx = map(float_parse, (data[:32], data[32:]))

    if flstr[-24] == "1":
        exp = 127
    else:
        exp = 128

    midx = myfloat(0, exp, (1<<23) + int(flstr[-23:-14]+"1"+"0"*13, 2))
    target = myfloat(0, exp, (1<<23) + int(flstr[-23:], 2))

    dx = target - midx 
    ydiff = dx * mydydx 
    myans = midy + ydiff 

    if flstr[-24] == "1":
        newexp = (int(flstr[1:8] + "0", 2) >> 1) - 63 + myans.exp
    else:
        newexp = (int(flstr[1:8] + "0", 2) >> 1) - 64 + myans.exp

    if fl.exp == 0:
        newexp = 0

    return myfloat(0, newexp, myans.manti)


"""Load finv table.
"""
with open("fputable/finvtable.mem", "r") as f:
    finvtable = f.readlines()
    finvtable = [i.rstrip() for i in finvtable]


def finv(fl): 
    """Emulate finv.

    Args:
        fl (myfloat): operand.

    Returns:
        myfloat: returns 1/fl.
    """   
    normfl = myfloat(0, 127, fl.manti)
    flstr = normfl.tostring()
    tag = int(flstr[-23:-13], 2)
    data = finvtable[tag]
    midy, mydydx = map(float_parse, (data[:32], data[32:]))
    
    midx = float_parse(flstr[:-13]+"1"+"0"*12)
    dx = normfl - midx 
    ydiff = dx*mydydx

    myans = midy + ydiff 
    
    oldexp = fl.exp - 127
    newexp = (myans.exp - 127 - oldexp) + 127

    sig, exp, manti = fl.sig, newexp, myans.manti

    if newexp < 0:
        raise Exception("exp too small, given float.exp may be\
more than 126")

    ans = myfloat(sig, exp, manti)
    return ans 
    

class FDivOvf(Exception):
    pass


def fdiv(op1, op2):
    """Emulate fdiv module using finv.

    Args:
        op1 (myfloat): dividend.
        op2 (myfloat): divisor.

    Returns:
        myfloat: quotient. 
    """
    core = myfloat(0, 127, op1.manti)*finv(myfloat(0, 127, op2.manti))
    sig = op1.sig ^ op2.sig 
    diffexp = (op1.exp - 127) - (op2.exp - 127) 
    newexp = core.exp + diffexp 
    newexp = max(0, newexp)

    if (op1.exp == 0) or (op2.exp == 0):
        newexp = 0

    try:
        return myfloat(sig, newexp, core.manti)
    except ExpErr:
        raise FDivOvf


myfloat.__truediv__ = lambda self, other: fdiv(self, other)


"""data for atan.
"""
depdict = {-10: 0,
 -9: 0,
 -8: 1,
 -7: 2,
 -6: 3,
 -5: 4,
 -4: 5,
 -3: 6,
 -2: 7,
 -1: 8,
 0: 8,
 1: 8,
 2: 8,
 3: 7,
 4: 7,
 5: 6,
 6: 6,
 7: 5,
 8: 5,
 9: 4,
 10: 4,
 11: 3,
 12: 3,
 13: 2,
 14: 1,
 15: 0,
 16: 0,
 17: 0,
 18: 0}
heads = "0 1 2 4 8 16 32 64 128 256 512 768 1024 1280 1408 1536 1600 1664 1696 1728 1744 1760 1768 1776 1780 1782 1783 1784 1785".split()
heads = [int(i) for i in heads]


with open("fputable/atantable.mem", "r") as f:
    atantable = f.readlines()
    atantable = [i.rstrip() for i in atantable]


def atan(fl):
    """atan module.

    Linear approximation using table. Table size is different according
    to the exponent of input.

    Args:
        fl (mystr): operand.

    Returns:
        myfloat: atan(x).
    """
    sig, exp, manti = fl.data
    if (exp >= 19+127):
        base = float_parse('00111111110010010000111111001111')
        return myfloat(sig, base.exp, base.manti)
    elif (-125+127 <= exp and exp <= -11 + 127):
        dydx = float_parse('00111111011111111111111111111011')
        return fl*dydx 
    elif (exp == -126+127):
        base = float_parse('00000000110000000000000000000000')
        return myfloat(sig, base.exp, base.manti)
    elif (exp == -127+127):
        return myfloat(sig, 0, 1<<23)
    else:
        assert -10+127 <= exp and exp <= 18+127 
        depth = depdict[exp-127]
        head = heads[exp-127-(-10)]

        if depth > 0:
            # print("debug0")
            data = atantable[head + int(bin(manti)[3:3+depth], 2)]
            # print(head + int(bin(manti)[3:3+depth], 2))
            mymidy, mydydx = map(float_parse, (data[:32], data[32:]))
            
            mymidx = myfloat(0, exp, int(bin(manti)[2:2+1+depth] + "1" + "0"*(23-1-depth), 2))
            # mymidx.print()

        else:
            data = atantable[head]
            mymidy, mydydx = map(float_parse, (data[:32], data[32:]))
            mymidx = myfloat(0, exp, (1<<23) + (1<<22))

        mydx = myfloat(0, exp, manti) - mymidx 
        ydiff = mydydx * mydx 
        myans = mymidy + ydiff 
        # print(mydx.tofloat64(), ydiff.tofloat64(), myans.tofloat64())

        return myfloat(sig, myans.exp, myans.manti)


class SinOutOfRange(Exception):
    pass 


PI = float64tomyfloat(math.pi)
HALFPI = myfloat(0, PI.exp - 1, PI.manti)


with open("fputable/sintable.mem") as f:
    sintable = f.readlines() 
    sintable = [i.rstrip() for i in sintable]


def sin_core(fl):
    """calculate sin when op is in [0, pi/2].

    Args:
        fl (myfloat): operand.

    Returns:
        myfloat: returns |sin(x)|, always positive.
    """
    inddict = {-9: 0, -8: 2, -7: 4, -6: 6, -5: 10, -4: 18, -3: 34, -2: 66, -1: 130, 0: 258}
    taglendict = {-9: 1, -8: 1, -7: 1, -6: 2, -5: 3, -4: 4, -3: 5, -2: 6, -1: 7, 0: 8}
    if (fl.tofloat64() > HALFPI.tofloat64()) or (-fl.tofloat64() > HALFPI.tofloat64()):
        raise SinOutOfRange(fl.tofloat64())

    exp = fl.exp - 127
    if -9 <= exp and exp <= 0:
        tag = bin(fl.manti)[3:][:taglendict[exp]]
        # print(tag)
        data = sintable[inddict[exp] + int(tag, 2)]
        mysep, mydydx = map(float_parse, (data[:32], data[32:]))

        myans = mysep + mydydx*fl 

        return myans 

    elif -125 <= exp and exp <= -10:
        mydydx = float_parse("00111111011111111111111111010101")
        return mydydx*fl

    elif exp == -126:
        return float_parse("00000000110000000000000000000000")

    elif exp == -127:
        return myfloat(0, 0, 1<<23)


longhalfpi = "110010010000111111011010101000100010000101101001"


def cos_exp0(fl):
    """calculate cos for float whose exp = 0.

    Only float of exp = 0 is supposed to be given.
    Returns negative value if and only if HALFPI is given as fl,
    for HALFPI is slightly bigger than actual pi/2.

    Args:
        fl (myfloat): operand.

    Returns:
        myfloat: returns cos(fl).
    """
    if fl == HALFPI:
        # math.pi/2 - HALFPI
        theta = float_parse("00110011001110111011110100101111")
        retfromsin = sin_core(theta)
        
        return myfloat(1, retfromsin.exp, retfromsin.manti)

    else:
        # theta must be positive
        theta = int(longhalfpi, 2) - fl.tofloat64() * 2**47
        bintheta = bin(int(theta))[2:]
        theta = int(bintheta[:24] + "0"*(len(bintheta) - 24), 2)
        theta = theta * 2**(-47)

        return sin_core(float64tomyfloat(theta))


class CosOutOfRange(Exception):
    pass 


with open("fputable/costable.mem") as f:
    costable = f.readlines() 
    costable = [i.rstrip() for i in costable]


def cos_core(fl):
    """cos.

    Calls cos_exp0 internally as a special case where exp = 0.

    Args:
        fl (myfloat): operand.

    Returns:
        myfloat: cos(x), always returns positive value except for HALFPI.
    """
    inddict = {-9: 0, -8: 2, -7: 4, -6: 6, -5: 10, -4: 18, -3: 34, -2: 66, -1: 130}
    taglendict = {-9: 1, -8: 1, -7: 1, -6: 2, -5: 3, -4: 4, -3: 5, -2: 6, -1: 7}

    if fl.tofloat64() > HALFPI.tofloat64():
        raise CosOutOfRange(fl.tofloat64())

    exp = fl.exp - 127

    if -9 <= exp and exp <= -1:
        tag = bin(fl.manti)[3:][:taglendict[exp]]
        data = costable[inddict[exp] + int(tag, 2)]
        mysep, mydydx = map(float_parse, (data[:32], data[32:]))
        myans = mysep + mydydx*fl 
        return myans 
    elif exp <= -10:
        return myfloat(0, 127, 1<<23)
    else:
        return cos_exp0(fl)


NIPI = 2/math.pi 
PINI = math.pi/2


def myround(fl64: float, k: int, display=False):
    """kbit below point round.

    Function used inside reduction.

    Args:
        fl64 (float): Input.
        k (int): Precision of the return value.
            Specify bit length below the floating point.
        display (bool): Specify true when need to display internal variables.

    Returns:
        float: Rounded float value.

    """
    if fl64 < 0:
        raise Exception("negative fl64 in myround.")

    count = 0
    if fl64 != 0:
        while fl64 < 1:
            fl64 *= 2
            count += 1
    floored = (math.floor((fl64)*(1 << k)))
    
    if display:
        binfl = bin(floored)[2:]
        print(binfl)
    return floored / (1 << (k + count))


MYPINI = myround(PINI, 26)
IMYPINI = int(MYPINI * 2**26)

MYNIPI = myround(NIPI, 25)
IMYNIPI = int(MYNIPI * 2**(25 + 1))


def reduce(fl, display=False):
    """Reduce floating point number into [0, pi/2].

    Args:
        fl (myfloat): Input. Must be positive.
        display (bool): Tue when need to display local variables.
    
    Returns:
        Tuple[int, myfloat]: Tuple of (quotient mod 4, remainder).
    """
    # 23 * 26 below point (24*26, NIPI < 1)
    if display:
        print("reduce display:")
        
    na = fl.manti * IMYNIPI 

    if display:
        print("na:")
        binnow = bin(na)[2:]
        print("0"*(51 - len(binnow)) + binnow)

    n = math.floor(na)
    
    a = (na - n)
    a = math.floor(a*2**27)
    # (28*27)
    a *= IMYPINI

    if display:
        print("a:")
        binnow = bin(a)[2:]
        print("0"*(55-len(binnow)) + binnow)
        
    a /= 2**(26+27)
    a = myround(a, 23)

    return n%4, float64tomyfloat(a)


def cos(fl):
    """Calculate cos.

    Args:
        fl (myfloat): Operand.

    Returns:
        myfloat: cos(fl).
    """
    if abs(fl).tofloat64() > HALFPI.tofloat64():
        quot, rem = reduce(fl)

        absrem = abs(rem)
        
        if quot == 0:
            core = cos_core(absrem)
            sig = core.sig
        elif quot == 1:
            core = sin_core(absrem)
            sig = core.sig ^ 1
        elif quot == 2:
            core = cos_core(absrem)
            sig = core.sig ^ 1
        elif quot == 3:
            core = sin_core(absrem)
            sig = core.sig
        else:
            raise Exception("Unexpected quotient from fun: reduce .")
    else:
        core = cos_core(abs(fl))
        sig = core.sig


    return myfloat(sig, core.exp, core.manti)


def sin(fl):
    """Calculate sin.

    Args:
        fl (myfloat): Operand.

    Returns:
        myfloat: sin(fl).
    """
    if abs(fl).tofloat64() > HALFPI.tofloat64():
        quot, rem = reduce(fl)
        absrem = abs(rem)
        
        if quot == 0:
            core = sin_core(absrem)
            sig = core.sig 
        elif quot == 1:
            core = cos_core(absrem)
            sig = core.sig
        elif quot == 2:
            core = sin_core(absrem)
            sig = core.sig ^ 1
        elif quot == 3:
            core = cos_core(absrem)
            sig = core.sig ^ 1
        else:
            raise Exception("Unexpected quot from reduction.")

    else:
        core = sin_core(abs(fl))
        sig = core.sig 

    return myfloat(sig^fl.sig, core.exp, core.manti)


def sincos(sincos:int, fl:myfloat):
    """Emulate sincos module in verilog.

    Given opecode of 0 or 1 and an operand, returns sin or cos of fl
    according to the opecode.

    Args:
        sincos (int): Opecode. 0 for sin, 1 for cos.
        fl (myfloat): Operand.

    Returns:
        myfloat: sin(fl) or cos(fl) according to the opecode given. 
    """
    if sincos == 0:
        return sin(fl)
    elif sincos == 1:
        return cos(fl)
    else:
        raise Exception("unexpected value on sincos.")


def ftoi(fl):
    """ftoi module.

    Args:
        fl (myfloat): operand.

    Returns:
        int: A signed integer value converted from operand.
    """
    if fl.exp >= 150:
        absval = fl.manti << (fl.exp - 150)
    elif fl.exp >= 127:
        rshamt = 150 - fl.exp
        stickyaslsb = fl.manti >> (149 - fl.exp)
        
        absval = (fl.manti >> rshamt) + (stickyaslsb & 1)
    elif fl.exp == 126:
        absval = 1
    else:
        absval = 0

    val = absval * (-1)**fl.sig

    return val


def i32tostr(i: int):
    """Add trailing 0 to convert positive integer to str of length 32.

    Args:
        i (int): positive integer in between the range of unsigned int (32bit).

    Returns:
        str: str of length 32 that represents i in binary format.
    """
    istr = bin(i)[2:]
    ans = "0"*(32 - len(istr)) + istr

    return ans


bitmaskn = lambda n: (1<<n) - 1


def itof(op: int):
    """module itof, convert int to myfloat.

    Args:
        op (int): A int whose value is in between the range of 32bit signed integer.
    
    Returns:
        myfloat: The converted value.
    """
    wireop = struct.unpack(">I", struct.pack(">i", op))[0]
    opstr = i32tostr(wireop)
    # print(opstr)

    sig = (opstr[-32] == "1")
    if sig:
        absop = "".join(["0" if i == "1" else "1" for i in opstr])
        absop = int(absop, 2) + 1
    else:
        absop = op
    # print(bin(absop)[2:])

    msbloc = len(bin(absop)[2:]) - 1
    if absop == 0:
        msbloc = 31
    # print(msbloc)

    exp = 127 + msbloc

    if msbloc == 31:
        if sig:
            absval = myfloat(0, 158, 1<<23)
        else:
            absval = myfloat(0, 0, 1<<23)

    elif msbloc > 23:
        rshamt = msbloc - 24
        stickyatlsb = absop >> rshamt 
        manti = (stickyatlsb >> 1) & bitmaskn(23)

        if stickyatlsb & 1:
            if manti == bitmaskn(23):
                absval = myfloat(0, exp + 1, 1<<23)
            else:
                absval = myfloat(0, exp, (1<<23) + manti + 1)

        else:
            absval = myfloat(0, exp, (1<<23) + manti)

    else:
        lshamt = 23 - msbloc 
        lshifted = absop << lshamt

        absval = myfloat(0, exp, (lshifted & bitmaskn(23)) + (1<<23))

    return myfloat(int(sig), absval.exp, absval.manti)


def parseVivadoTest(filename="out.txt"):
    """Parse vivado simulation output into list of data.

    Args:
        filename (str): The name of the output file. Defaults to "out.txt".

    Returns:
        List[str]: A list of data. 
    """
    with open(filename, "r") as f:
        data = f.readlines()
        data = [i.rstrip() for i in data]

    data = data[11:]
    for i in range(-1, -len(data)-1, -1):
        if data[i].startswith("$finish"):
            data = data[:i]
            break

    return data


def test():
    with open('memo') as f:
        while True:
            s = f.readline().rstrip()
            if not s: break
            a = myfloat(int(s[0], 2), int('0b' + s[1:9], 2), int('0b1' + s[9:], 2))
            ans = sin(a)
            [x, y] = reduce(a)
            ss = ans.sig
            ee = ans.exp
            mm = ans.manti
            sss = y.sig
            eee = y.exp
            mmm = y.manti
            print(x)
            print(ss, end='')
            for i in reversed(range(8)): print((ee >> i & 1), end='')
            for i in reversed(range(23)): print((mm >> i & 1), end='')
            print('')
            print(sss, end='')
            for i in reversed(range(8)): print((eee >> i & 1), end='')
            for i in reversed(range(23)): print((mmm >> i & 1), end='')
            print('')
    with open('memo') as f:
        while True:
            s = f.readline().rstrip()
            if not s: break
            a = myfloat(int(s[0], 2), int('0b' + s[1:9], 2), int('0b1' + s[9:], 2))
            ans = cos(a)
            [x, y] = reduce(a)
            ss = ans.sig
            ee = ans.exp
            mm = ans.manti
            sss = y.sig
            eee = y.exp
            mmm = y.manti
            print(x)
            print(ss, end='')
            for i in reversed(range(8)): print((ee >> i & 1), end='')
            for i in reversed(range(23)): print((mm >> i & 1), end='')
            print('')
            print(sss, end='')
            for i in reversed(range(8)): print((eee >> i & 1), end='')
            for i in reversed(range(23)): print((mmm >> i & 1), end='')
            print('')

test()