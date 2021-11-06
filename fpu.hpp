#include <iostream>
#include <string> 
#include <vector>
#include <unordered_map>
#include "struct.hpp"
#include "util.hpp"

/**
 * float 
 * 左から見て
 * 0 -> sig
 * 1 ~ 8 -> exp
 * 9 ~ 31 -> manti
**/ 

struct fpu_t{
    std::vector<std::pair<float, float>> fsqrttable;
    std::vector<std::pair<float, float>> finvtable;
    std::vector<std::pair<float, float>> atantable;
    std::vector<int> heads;
    std::unordered_map<int, int> depdict;
    fpu_t(){}
};
using FPU = fpu_t;


std::string f_tostring(float f){
    union { float f; int i; } d;
    d.f = f;
    std::string s;
    for(int i = 31; i >= 0; i--){
        s += ((d.i >> i & 1) ? '1' : '0');
    }
    return s;
}

// これ怪しい
inline double tofloat64(float f){
    return double(f);
}

void print_float(float f){
    union { float f; int i; } d;
    d.f = f;
    std::cout << "value : " << f << '\n';
    std::cout << "sig : " << kth_bit(d.i, 0) \
              << "exp : " << segment(d.i, 1, 8) \
              << "man : " << segment(d.i, 9, 31) << '\n';
    print_binary_int(d.i);
}

int manti2int(float f){
    union { float f; int i; } d;
    d.f = f;
    return ((1 << 23) | segment(d.i, 9, 31));
}

float float_parse(const std::string &s){
    union { float f; int i; } d;
    d.i = btoi(s);
    return d.f;
}

inline float make_float(int sig, int exp, int manti){
    union { float f; int i; } d;
    d.i = (sig << 31) | (exp << 23) | manti;
    return d.f;
}

float fadd(float f, float g, FPU& fpu){
    union { float f; int i; } a, b, pre, post;
    a.f = f, b.f = g;
    int exp_a = segment(a.i, 1, 8), exp_b = segment(b.i, 1, 8);
    if(exp_a < exp_b) pre = b, post = a;
    else if(exp_a > exp_b) pre = a, post = b;
    else{
        if(segment(a.i, 9, 31) > segment(b.i, 9, 31)) pre = a, post = b;
        else pre = b, post = a;
    }
    int newexp = segment(pre.i, 1, 8);
    int expdiff = newexp - segment(post.i, 1, 8);
    int newmanti;
    if(segment(post.i, 1, 8) == 0) newmanti = segment(pre.i, 9, 31);
    else if(kth_bit(pre.i, 0) == kth_bit(post.i, 0)){
        newmanti = segment(pre.i, 9, 31) + (segment(post.i, 9, 31) >> expdiff);
        // わからない
    }
    else{
        newmanti = segment(pre.i, 9, 31) - (segment(post.i, 9, 31) >> expdiff);
        if(newmanti == 0) newmanti = 1 << 23, newexp = 0;
        else{
            // わからない
        }
    }
    if(newexp < 0) newexp = 0;
    return make_float(kth_bit(pre.i, 0), newexp, newmanti);
}

float fsub(float f, float g, FPU& fpu){
    return fadd(f, -g, fpu);
}

float fmul(float f, float g, FPU& fpu){
    union { float f; int i; } a, b;
    a.f = f, b.f = g;
    int manti1 = segment(a.i, 9, 31);
    int manti2 = segment(b.i, 9, 31);

    // bits は leading-1 は省略してるとする
    std::vector<int> bits = {manti1};
    std::vector<int> carry(24, 0);

    for(int i = 0; i < 23; i++){
        if(kth_bit(manti2, i, 23)) bits.emplace_back(manti1);
        else bits.emplace_back(0);
    }
    // step1 
    for(int i = 0; i < 12; i++){
        int uno = bits[2*i] << 1;
        int dos = uno + (1 << 23 | bits[2*i + 1]);
        bits[2*i] = (dos & MASK24);
        if(dos >= (1 << 24)) carry[2*i] = 1;
    }
    // step2
    // bits[2k]のleading-1は24bit目にある
    for(int i = 0; i < 6; i++){
        int uno = (bits[4*i] & MASK23) << 2;
        int dos = uno + (1 << 24 | bits[4*i + 2]);
        bits[4*i] = (((bits[4*i] >> 23) & 1) << 25) | (dos & MASK25);
        if(dos >= (1 << 25)) carry[4*i + 1] = 1;
    }
    // step3
    // bits[4k]のleading-1は26bit目にある
    for(int i = 0; i < 3; i++){
        int uno = (bits[8*i] & MASK23) << 4;
        int dos = uno + (1 << 26 | bits[8*i + 4]);
        bits[8*i] = (((bits[8*i] >> 23) & MASK3) << 27) | (dos & MASK27);
        if(dos >= (1 << 27)) carry[8*i + 3] = 1;
    }
    // step4
    // bits[8k]のleading-1は30bit目にある
    int c = 0;
    for(int i = 0; i < 24; i++) c |= carry[i] << (23 - i);
    int uno = ((1 << 30) | bits[0]) + (c << 8);
    int dos = ((((1 << 30) | bits[8]) >> 8) & MASK23) + ((((1 << 30) | bits[16]) >> 16) & MASK16);
    // final

    int ans = (uno >> 5) + (dos >> 5);
    int tmp = ans, cnt = 0;
    while(tmp) cnt++, tmp >>= 1;

    int newsig = kth_bit(a.i, 0, 32) ^ kth_bit(b.i, 0, 32);
    int newexp = segment(a.i, 1, 8) + segment(b.i, 1, 8) - 127;
    int newmanti = ans >> (cnt - 24);
    if(cnt == 27) newexp++;
    if(newexp < 1 || kth_bit(a.i, 0, 32) == 0 || kth_bit(b.i, 0, 32)) newexp = 0;

    return make_float(newsig, newexp, newmanti & MASK23);
}

float fsqrt(float f, FPU& fpu){
    union { float f; int i; } d, tmp;
    d.f = f;
    int tag = ((d.i >> 14) & MASK10) ^ (1 << 9);
    auto [midy, mydydx] = fpu.fsqrttable.at(tag);
    int exp = (d.i >> 23 & 1) ? 127 : 128;
    float midx = make_float(0, exp, (((d.i >> 14) & MASK9) << 14) | (1 << 13));
    float target = make_float(0, exp, d.i & MASK23);
    float dx = fsub(target, midx, fpu);
    float ydiff = fmul(dx, mydydx, fpu);
    float myans = fadd(midy, ydiff, fpu);
    tmp.f = myans;
    int newexp = (d.i >> 24 & MASK7) - ((d.i >> 23 & 1) ? 63 : 64) + ((tmp.i >> 23) & MASK8);
    if((d.i >> 23 & MASK8) == 0) newexp = 0;
    return make_float(0, newexp, tmp.i & MASK23);
}

float finv(float f, FPU& fpu){
    union { float f; int i; } d, normfl, tmp;
    d.f = f;
    int sig = kth_bit(d.i, 0);
    int oldexp = (d.i >> 23 & MASK8) - 127;
    normfl.f = make_float(0, 127, d.i & MASK23);
    int tag = (normfl.i >> 13) & MASK10;
    auto [midy, mydydx] = fpu.finvtable.at(tag);
    d.i = ((d.i >> 13) << 13) | (1 << 12);
    float dx = fsub(normfl.f, d.f, fpu);
    float ydiff = fmul(dx, mydydx, fpu);
    float myans = fadd(midy, ydiff, fpu);
    tmp.f = myans;
    int newexp = (tmp.i >> 23 & MASK8) - oldexp;
    int manti = tmp.i & MASK23;
    if(newexp < 0){
        std::cerr << "exp too small, given float.exp may be more than 126" << std::endl;
        assert(false);
    }
    return make_float(sig, newexp, manti);
}   

float fdiv(float f, float g, FPU& fpu){
    union { float f; int i; } a, b, core;
    a.f = f, b.f = g;
    core.f = fmul(make_float(0, 127, a.i & MASK23), finv(make_float(0, 127, b.i & MASK23), fpu), fpu);
    int sig = kth_bit(a.i, 0) ^ kth_bit(b.i, 0);
    int diffexp = (a.i >> 23 & MASK8) - (b.i >> 23 & MASK8);
    int newexp = std::max(0, (core.i >> 23 & MASK8) + diffexp);
    return make_float(sig, newexp, core.i >> MASK23);
}

float atan(float f, FPU& fpu){
    union { float f; int i; } d;
    d.f = f;
    int sig = kth_bit(d.i, 0);
    int exp = d.i >> 23 & MASK8;
    int manti = d.i & MASK23;
    if(exp >= 19 + 127){
        union { float f; int i; } tmp;
        tmp.i = 0b00111111110010010000111111001111 | (sig << 31);
        return tmp.f;
    }
    if(-125 + 127 <= exp && exp <= -11 + 127){
        union { float f; int i; } tmp;
        tmp.i = 0b00111111011111111111111111111011;
        return fmul(f, tmp.f, fpu);
    }
    if(exp == -127 + 127){
        return make_float(sig, 0, 1<<23);
    }
    int depth = fpu.depdict[exp - 127];
    int head = fpu.heads[exp - 127 + 10];

    float mymidy, mydydx, mymidx;
    if(depth > 0){
        int offset = cut_bit(manti, 9, 9 + depth - 1);
        mymidy = fpu.atantable[head + offset].first;
        mydydx = fpu.atantable[head + offset].second;
        offset |= 1 << depth;
        offset = offset << (23 - depth) | (1 << (22 - depth));
        mymidx = make_float(0, exp, offset);
    }
    else{
        mymidy = fpu.atantable[head].first;
        mydydx = fpu.atantable[head].second;
        mymidx = make_float(0, exp, (1<<23) + (1<<22));
    }
    float mydx = fsub(make_float(0, exp, manti), mymidx, fpu);
    float ydiff = fmul(mydydx, mydx, fpu);
    union { float f; int i; } myans;
    myans.f = fadd(mymidy, ydiff, fpu);
    return make_float(sig, myans.i >> 23 & MASK8, myans.i & MASK23);
}