#pragma once
#include <iostream>
#include <fstream>
#include <string> 
#include <vector>
#include <random>
#include <algorithm>
#include <cmath>
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
private:
    static const int FINV_TABLE_LINE = 1024;
    static const int ATAN_TABLE_LINE = 1786;
    static const int FSQRT_TABLE_LINE = 1024;
    static const int SIN_TABLE_LINE = 405;
    static const int COS_TABLE_LINE = 258;
    const std::vector<int> heads = {0, 1, 2, 4, 8, 16, 32, 64, 128,\
                                    256, 512, 768, 1024, 1280, 1408,\
                                    1536, 1600,1664, 1696, 1728, 1744, \
                                    1760, 1768, 1776,1780, 1782, 1783, 1784, 1785};
    const std::vector<int> depdict = {0, 0, 1, 2, 3, 4, 5, 6, 7,\
                                      8, 8, 8, 8, 7, 7, 6, 6, 5,\
                                      5, 4, 4, 3, 3, 2, 1, 0, 0, 0, 0};
    const std::vector<int> inddict = {0, 2, 4, 6, 10, 18, 34, 66, 130, 258};
    const std::vector<int> taglendict = {1, 1, 1, 2, 3, 4, 5, 6, 7, 8};
    int cnt_sqrt, cnt_inv, cnt_atan, cnt_sin, cnt_cos;
    std::vector<std::pair<float, float>> fsqrttable;
    std::vector<std::pair<float, float>> finvtable;
    std::vector<std::pair<float, float>> atantable;
    std::vector<std::pair<float, float>> sintable;
    std::vector<std::pair<float, float>> costable;
public:
    float PI;
    float HALFPI;
    double LONGHALFPI;
    double NIPI;
    double PINI;
    double MYPINI, MYNIPI;
    int64_t IMYPINI, IMYNIPI;
    fpu_t():cnt_sqrt(0), cnt_inv(0), cnt_atan(0), cnt_sin(0), cnt_cos(0){
        fsqrttable.resize(FSQRT_TABLE_LINE);
        finvtable.resize(FINV_TABLE_LINE);
        atantable.resize(ATAN_TABLE_LINE);
        sintable.resize(SIN_TABLE_LINE);
        costable.resize(COS_TABLE_LINE);
    }
    void add_data_fsqrt(const float f, const float g){
        assert(cnt_sqrt < FSQRT_TABLE_LINE);
        fsqrttable[cnt_sqrt++] = std::make_pair(f, g);
    }
    void add_data_finv(const float f, const float g){
        assert(cnt_inv < FINV_TABLE_LINE);
        finvtable[cnt_inv++] = std::make_pair(f, g);
    }
    void add_data_atan(const float f, const float g){
        assert(cnt_atan < ATAN_TABLE_LINE);
        atantable[cnt_atan++] = std::make_pair(f, g);
    }
    void add_data_sin(const float f, const float g){
        assert(cnt_sin < SIN_TABLE_LINE);
        sintable[cnt_sin++] = std::make_pair(f, g);
    }
    void add_data_cos(const float f, const float g){
        assert(cnt_cos < COS_TABLE_LINE);
        costable[cnt_cos++] = std::make_pair(f, g);
    }
    void check(){
        bool ok = true;
        if(cnt_sqrt != FSQRT_TABLE_LINE){
            ok = false;
            std::cerr << "cnt_sqrt : " << cnt_sqrt << " is less than " << FSQRT_TABLE_LINE << std::endl;
        }
        if(cnt_inv != FINV_TABLE_LINE){
            ok = false;
            std::cerr << "cnt_inv : " << cnt_inv << " is less than " << FINV_TABLE_LINE << std::endl;
        }
        if(cnt_atan != ATAN_TABLE_LINE){
            ok = false;
            std::cerr << "cnt_atan : " << cnt_atan << " is less than " << ATAN_TABLE_LINE << std::endl;
        }
        if(cnt_sin != SIN_TABLE_LINE){
            ok = false;
            std::cerr << "cnt_sin : " << cnt_sin << " is less than " << SIN_TABLE_LINE << std::endl;
        }
        if(cnt_cos != COS_TABLE_LINE){
            ok = false;
            std::cerr << "cnt_cos : " << cnt_cos << " is less than " << COS_TABLE_LINE << std::endl;
        }
        if(ok) std::cerr << "fpu loading success" << std::endl;
        else{
            std::cerr << "fpu loading failed\n";
            exit(0);
        }
        return;
    }
    int Depdict(int x)const{return depdict[10 + x];}
    int Heads(int x)const{return heads[x];}
    int Inddict(int x)const{return inddict[9 + x];}
    int Taglendict(int x)const{return taglendict[9 + x];}
    std::pair<float, float> Fsqrttable(int x)const{return fsqrttable[x];}
    std::pair<float, float> Finvtable(int x)const{return finvtable[x];}
    std::pair<float, float> Atantable(int x)const{return atantable[x];}
    std::pair<float, float> Sintable(int x)const{return sintable[x];}
    std::pair<float, float> Costable(int x)const{return costable[x];}
};
using FPU = fpu_t;

namespace TasukuFukami{
    double round(double f, int k);

    float float_parse(const std::string &s){
        int d;
        d = btoi(s);
        return bit_cast<float, int>(d);
    }

    void init_fpu(FPU& fpu){
        std::ifstream ifs("fputable/fsqrttable.mem");
        if(ifs){
            std::string s;
            while(ifs >> s){
                fpu.add_data_fsqrt(float_parse(s.substr(0, 32)), float_parse(s.substr(32, 32)));
            }
        }
        ifs.close();
        ifs.open("fputable/finvtable.mem");
        if(ifs){
            std::string s;
            while(ifs >> s){
                fpu.add_data_finv(float_parse(s.substr(0, 32)), float_parse(s.substr(32, 32)));
            }
        }
        ifs.close();
        ifs.open("fputable/atantable.mem");
        if(ifs){
            std::string s;
            while(ifs >> s){
                fpu.add_data_atan(float_parse(s.substr(0, 32)), float_parse(s.substr(32, 32)));
            }
        }
        ifs.close();
        ifs.open("fputable/sintable.mem");
        if(ifs){
            std::string s;
            while(ifs >> s){
                fpu.add_data_sin(float_parse(s.substr(0, 32)), float_parse(s.substr(32, 32)));
            }
        }
        ifs.close();
        ifs.open("fputable/costable.mem");
        if(ifs){
            std::string s;
            while(ifs >> s){
                fpu.add_data_cos(float_parse(s.substr(0, 32)), float_parse(s.substr(32, 32)));
            }
        }
        int d = 0b01000000010010010000111111011011;
        fpu.PI = bit_cast<float, int>(d);
        d = 0b00111111110010010000111111011011;
        fpu.HALFPI = bit_cast<float, int>(d);
        uint64_t e;
        e = 0b11111111111001001000011111101101010100010001000010110100100000ull;
        fpu.LONGHALFPI = bit_cast<double, uint64_t>(e);
        e = 0b11111111100100010111110011000001101101110010011100100010000011ull;
        fpu.NIPI = bit_cast<double, uint64_t>(e);
        e = 0b11111111111001001000011111101101010100010001000010110100011000ull;
        fpu.PINI = bit_cast<double, uint64_t>(e);
        fpu.MYPINI = round(fpu.PINI, 26);
        fpu.IMYPINI = int64_t(fpu.MYPINI * (1<<26));
        fpu.MYNIPI = round(fpu.NIPI, 25);
        fpu.IMYNIPI = int64_t(fpu.MYNIPI * (1<<26));
        fpu.check();
    }

    void print_float(float f){
        int d;
        d = bit_cast<int, float>(f);
        std::cout << "value : " << f << '\n';
        std::cout << "sig   : " << kth_bit(d, 0) \
                  << "\nexp : " << ((d >> 23) & bitmask(8)) << " = " << (int)((d >> 23) & bitmask(8)) - 127 \
                  << "\nman : " << ((1 << 23) | (d & bitmask(23))) << '\n';
        print_binary_int(d);
    }

    void print_double(double f){
        int64_t d;
        d = bit_cast<int64_t, double>(f);
        std::cout << "value : " << f << '\n';
        for(int i = 63; i >= 0; i--){
            std::cout << (d >> i & 1);
        }
        std::cout << '\n';
    }


    inline float make_float(unsigned sig, int exp, unsigned manti){
        int d = (sig << 31) | (exp << 23) | (manti & bitmask(23));
        return bit_cast<float, int>(d);
    }

    float fadd(float f, float g){
        int a = bit_cast<int, float>(f), b = bit_cast<int, float>(g);
        int pre, post;
        int exp_a = (a >> 23) & bitmask(8), exp_b = (b >> 23) & bitmask(8);
        if(exp_a < exp_b) pre = b, post = a;
        else if(exp_a > exp_b) pre = a, post = b;
        else{
            if((a & bitmask(23)) >= (b & bitmask(23))) pre = a, post = b;
            else pre = b, post = a;
        }
        int newexp = (pre >> 23) & bitmask(8);
        int expdiff = newexp - ((post >> 23) & bitmask(8));
        unsigned newmanti;

        if(((post >> 23) & bitmask(8)) == 0) newmanti = (pre & bitmask(23)); //post_exp = 0
        else if(kth_bit(pre, 0) == kth_bit(post, 0)){
            newmanti = ((1 << 23) | (pre & bitmask(23)));
            if(expdiff < 32) newmanti += (((1 << 23) | (post & bitmask(23))) >> expdiff);
            if(newmanti >= 1 << 24){
                newmanti = (newmanti ^ (1 << 24)) >> 1; // 最上位clear
                newexp++;
            }
            else newmanti ^= 1 << 23;
        }
        else{
            newmanti = ((1 << 23) | (pre & bitmask(23)));
            if(expdiff < 32) newmanti -= (((1 << 23) | (post & bitmask(23))) >> expdiff);
            if(newmanti == 0) newexp = 0;
            else{
                while(newmanti < (1 << 23)){
                    newmanti <<= 1;
                    newexp--;
                }
                newmanti ^= (1 << 23); // 最上位clear
            }
        }
        if(newexp < 0){
            newexp = 0;
            newmanti = 0;
        }
        return make_float(kth_bit(pre, 0), newexp, newmanti);
    }

    float fsub(float f, float g){
        return fadd(f, -g);
    }

    // float fmul(float f, float g){
    //     int a = bit_cast<int, float>(f), b = bit_cast<int, float>(g);
    //     unsigned manti1 = a & bitmask(23);
    //     unsigned manti2 = b & bitmask(23);

    //     std::vector<unsigned> bits = {(1 << 23 | manti1)};
    //     std::vector<unsigned> carry(23, 0);

    //     for(int i = 0; i < 23; i++){
    //         if(kth_bit(manti2, i, 23)) bits.emplace_back((1 << 23 | manti1));
    //         else bits.emplace_back(0);
    //     }

    //     // step1 
    //     for(int i = 0; i < 12; i++){
    //         unsigned uno = (bits[2*i] & bitmask(23)) << 1;
    //         unsigned dos = uno + bits[2*i + 1];
    //         bits[2*i] = (((bits[2*i] >> 23) & bitmask(1)) << 24) | (dos & bitmask(24));
    //         if(dos >= (1 << 24)) carry[2*i] = 1;
    //     }

    //     // step2
    //     for(int i = 0; i < 6; i++){
    //         unsigned uno = (bits[4*i] & bitmask(23)) << 2;
    //         unsigned dos = uno + bits[4*i + 2];
    //         bits[4*i] = (((bits[4*i] >> 23) & bitmask(2)) << 25) | (dos & bitmask(25));
    //         if(dos >= (1 << 25)) carry[4*i + 1] = 1;
    //     }

    //     // step3
    //     for(int i = 0; i < 3; i++){
    //         unsigned uno = (bits[8*i] & bitmask(23)) << 4;
    //         unsigned dos = uno + bits[8*i + 4];
    //         bits[8*i] = (((bits[8*i] >> 23) & bitmask(4)) << 27) | (dos & bitmask(27));
    //         if(dos >= (1 << 27)) carry[8*i + 3] = 1;
    //     }
    //     // step4
    //     unsigned c = 0;
    //     for(int i = 0; i < 23; i++) c |= carry[i] << (22 - i);
    //     unsigned uno = bits[0] + (c << 8);
    //     unsigned dos = (bits[8] >> 8) + (bits[16] >> 16);

    //     // final
    //     unsigned ans = (uno >> 5) + (dos >> 5);

    //     unsigned tmp = ans, cnt = 0;

    //     while(tmp) cnt++, tmp >>= 1;

    //     unsigned newsig = kth_bit(a, 0, 32) ^ kth_bit(b, 0, 32);
    //     int newexp = ((a >> 23) & bitmask(8)) + ((b >> 23) & bitmask(8)) - 127;
    //     unsigned newmanti = ans >> (cnt - 24);

    //     if(cnt == 27) newexp++;
    //     if(newexp < 1 || ((a >> 23) & bitmask(8)) == 0 || ((b >> 23) & bitmask(8)) == 0) newexp = 0;

    //     return make_float(newsig, newexp, newmanti);
    // }

    float fmul(float f, float g){
        auto x = bit_cast<u32>(f);
        auto y = bit_cast<u32>(g);
        auto m1 = (x & bitmask(23)) | (1 << 23);
        auto m2 = (y & bitmask(23)) | (1 << 23);
        auto high1 = m1 >> 11;
        auto high2 = m2 >> 11;
        auto low1 = m1 & bitmask(11);
        auto low2 = m2 & bitmask(11);
        auto mul0 = high1 * high2;
        auto mul1 = high1 * low2;
        auto mul2 = high2 * low1;
        auto add0 = (mul1 >> 10) + (mul2 >> 10);
        auto add1 = mul0 + (add0 >> 1);
        auto manti = ((add1 & (1 << 25)) ? ((add1 & bitmask(25)) >> 2) : ((add1 & bitmask(24)) >> 1));
        auto s1 = x >> 31;
        auto s2 = y >> 31;
        int e1 = (x >> 23) & bitmask(8);
        int e2 = (y >> 23) & bitmask(8);
        auto sig = s1 ^ s2;
        int exp = e1 + e2 + ((add1 & (1 << 25)) ? 1 : 0) - 127 * 2;
        exp = ((e1 == 0 || e2 == 0) ? 0 : exp < -126 ? 0 : (bitmask(8) & (exp + 127)));
        auto res = (sig << 31) | (exp << 23) | manti;
        return bit_cast<float>(res);
    }

    float fsqrt(float f, const FPU& fpu){
        int d = bit_cast<int, float>(f);
        unsigned tag = ((d >> 14) & bitmask(10)) ^ (1 << 9);
        auto [midy, mydydx] = fpu.Fsqrttable(tag);
        int exp = (d >> 23 & 1) ? 127 : 128;
        float midx = make_float(0, exp, (((d >> 14) & bitmask(9)) << 14) | (1 << 13));
        float target = make_float(0, exp, d);
        float dx = fsub(target, midx);
        float ydiff = fmul(dx, mydydx);
        float myans = fadd(midy, ydiff);
        int tmp = bit_cast<int, float>(myans);
        int newexp = (d >> 24 & bitmask(7)) - ((d >> 23 & 1) ? 63 : 64) + ((tmp >> 23) & bitmask(8));
        if((d >> 23 & bitmask(8)) == 0) newexp = 0;
        return make_float(0, newexp, tmp);
    }

    float finv(float f, const FPU& fpu){
        int d = bit_cast<int, float>(f);
        unsigned sig = kth_bit(d, 0);
        int oldexp = (d >> 23 & bitmask(8)) - 127;
        float normflf = make_float(0, 127, d);
        int normfl = bit_cast<int, float>(normflf);
        unsigned tag = (normfl >> 13) & bitmask(10);
        auto [midy, mydydx] = fpu.Finvtable(tag);
        d = ((d >> 13) << 13) | (1 << 12);
        float df = bit_cast<float, int>(d);
        float dx = fsub(normflf, df);
        float ydiff = fmul(dx, mydydx);
        float myans = fadd(midy, ydiff);
        int tmp = bit_cast<int, float>(myans);
        int newexp = (tmp >> 23 & bitmask(8)) - oldexp;
        unsigned manti = tmp & bitmask(23);
        if(newexp < 0){
            std::cerr << "exp too small, given float.exp may be more than 126" << std::endl;
            assert(false);
        }
        return make_float(sig, newexp, manti);
    }   

    float fdiv(float f, float g, const FPU& fpu, bool& ovf){
        int a = bit_cast<int, float>(f), b = bit_cast<int, float>(g);
        float ccore = fmul(make_float(0, 127, a), finv(make_float(0, 127, b), fpu));
        int core = bit_cast<int, float>(ccore);
        unsigned sig = kth_bit(a, 0) ^ kth_bit(b, 0);
        int diffexp = (a >> 23 & bitmask(8)) - (b >> 23 & bitmask(8));
        int newexp = std::max(0, (int)(core >> 23 & bitmask(8)) + diffexp);
        if(((a >> 23) & bitmask(8)) == 0 || ((b >> 23) & bitmask(8)) == 0) newexp = 0;
        if(newexp >= 256){
            ovf = 1;
            std::cerr << "### overflowing in fdiv ###" << std::endl;
            print_float(f);
            print_float(g);
            print_float(f / g);
            double res = (double)f / (double)g;
            std::cout << res << std::endl;
        }
        return make_float(sig, newexp, core);
    }

    float atan(float f, const FPU& fpu){
        int d = bit_cast<int, float>(f);
        unsigned sig = kth_bit(d, 0);
        int exp = d >> 23 & bitmask(8);
        unsigned manti = d & bitmask(23);
        if(exp >= 19 + 127){
            int tmp = 0b00111111110010010000111111001111 | (sig << 31);
            return bit_cast<float, int>(tmp);
        }
        if(-125 + 127 <= exp && exp <= -11 + 127){
            int tmp = 0b00111111011111111111111111111011;
            return fmul(f, bit_cast<float, int>(tmp));
        }
        if(exp == -126 + 127){
            int tmp = 0b00000000110000000000000000000000;
            return make_float(sig, (tmp >> 23) & bitmask(8), tmp);
        }
        if(exp == -127 + 127){
            return make_float(sig, 0, 0);
        }
        unsigned  depth = fpu.Depdict(exp - 127);
        unsigned  head = fpu.Heads(exp - 127 + 10);

        float mymidy, mydydx, mymidx;
        if(depth > 0){
            unsigned  offset = segment(manti, 9, 9 + depth - 1);
            std::tie(mymidy, mydydx) = fpu.Atantable(head + offset);
            offset |= 1 << depth;
            offset = offset << (23 - depth) | (1 << (22 - depth));
            mymidx = make_float(0, exp, offset);
        }
        else{
            std::tie(mymidy, mydydx) = fpu.Atantable(head);
            mymidx = make_float(0, exp, (1<<22));
        }
        float mydx = fsub(make_float(0, exp, manti), mymidx);
        float ydiff = fmul(mydydx, mydx);
        float myansf = fadd(mymidy, ydiff);
        int myans = bit_cast<int, float>(myansf);
        return make_float(sig, myans >> 23 & bitmask(8), myans);
    }

    float sin_core(float f, const FPU& fpu){
        // union {float f; int i;} d;
        // d.f = f;
        // int exp = ((d.i >> 23) & bitmask(8)) - 127;
        int d = bit_cast<int, float>(f);
        int exp = ((d >> 23) & bitmask(8)) - 127;
        if(-9 <= exp && exp <= 0){
            // int tag = (d.i & bitmask(23)) >> (23 - fpu.Taglendict(exp));
            int tag = (d & bitmask(23)) >> (23 - fpu.Taglendict(exp));
            auto[mysep, mydydx] = fpu.Sintable(fpu.Inddict(exp) + tag);
            return fadd(mysep, fmul(mydydx, f));
        }
        else if(-125 <= exp && exp <= -10){
            d = 0b00111111011111111111111111010101;
            return fmul(bit_cast<float, int>(d), f);
        }
        else if(exp == -126){
            d = 0b00000000110000000000000000000000;
            return bit_cast<float, int>(d);
        }
        else{
            return make_float(0, 0, 0);
        }
    }

    float cos_exp0(float f, const FPU& fpu){
        // union {float f; int i;} theta, retfromsin;
        if(f == fpu.HALFPI){
            int theta = 0b00110011001110111011110100101111;
            float retfromsinf = sin_core(bit_cast<float, int>(theta), fpu);
            int retfromsin = bit_cast<int, float>(retfromsinf);
            return make_float(1, (retfromsin >> 23) & bitmask(8), retfromsin);
        }
        else{ // わからん
            // union {double f; uint64_t i;} tmp;
            double tmpf = fpu.LONGHALFPI - (double)f;
            uint64_t tmp = bit_cast<uint64_t, double>(tmpf);
            float theta = make_float(0, int((tmp >> 52) & bitmask(11)) - 1023 + 127, (tmp >> 29) & bitmask(23));
            return sin_core(theta, fpu);
        }
    }

    float cos_core(float f, const FPU& fpu){
        if(double(f) > fpu.HALFPI){
            std::cerr << "CosOutOfRange\n";
            printerr(f);
            assert(false);
        }
        int d = bit_cast<int, float>(f);
        int exp = int((d >> 23) & bitmask(8)) - 127;
        if(-9 <= exp && exp <= -1){
            int tag = (d & bitmask(23)) >> (23 - fpu.Taglendict(exp));
            auto[mysep, mydydx] = fpu.Costable(fpu.Inddict(exp) + tag);
            return fadd(mysep, fmul(mydydx, f));
        }
        else if(exp <= -10) return make_float(0, 127, 0);
        else return cos_exp0(f, fpu);
    }

    double round(double f, int k){
        if(f < 0){
            std::cerr << "In TasukuFukami::round(), negative f was passed\n";
            assert(false);
        }
        k = 52 - k;
        int64_t i = bit_cast<int64_t, double>(f);
        int64_t mask = 0;
        mask = ((~mask) >> k) << k;
        i &= mask;
        return bit_cast<double, int64_t>(i);
    }

    std::pair<int, float> reduce(float f, const FPU& fpu){
        int fi = bit_cast<int, float>(f);
        double na = ((fi & bitmask(23)) | (1<<23)) * fpu.IMYNIPI;
        na *= std::pow(2, (int(fi >> 23 & bitmask(8)) - 127) - 49);
        int64_t n = std::floor(na);
        double a = na - n;
        a = std::floor(a*(1<<27));
        a *= fpu.IMYPINI;
        a /= (1ll << 53);
        a = TasukuFukami::round(a, 23);
        return std::pair<int, float>(n & 3, float(a));
    }

    float cos(float f, const FPU& fpu){
        if(std::abs(f) > fpu.HALFPI){
            auto[quot, rem] = reduce(f, fpu);
            float absrem = std::abs(rem);
            float core;
            int corei;
            int sig = 0;
            if(quot == 0){
                core = cos_core(absrem, fpu);
                corei = bit_cast<int, float>(core);
                sig = (corei >> 31 & 1);
            }
            else if(quot == 1){
                core = sin_core(absrem, fpu);
                corei = bit_cast<int, float>(core);
                sig = (corei >> 31 & 1) ^ 1;
            }
            else if(quot == 2){
                core = cos_core(absrem, fpu);
                corei = bit_cast<int, float>(core);
                sig = (corei>> 31 & 1) ^ 1;
            }
            else{
                core = sin_core(absrem, fpu);
                corei = bit_cast<int, float>(core);
                sig = (corei >> 31 & 1);
            }
            return make_float(sig, corei >> 23 & bitmask(8), corei);
        }
        else{
            float core = cos_core(std::abs(f), fpu);
            int corei = bit_cast<int, float>(core);
            int sig = (corei >> 31 & 1);
            return make_float(sig, corei >> 23 & bitmask(8), corei);
        }
    }

    float sin(float f, const FPU& fpu){
        int fi = bit_cast<int, float>(f);
        if(std::abs(f) > fpu.HALFPI){
            auto[quot, rem] = reduce(f, fpu);
            float absrem = std::abs(rem);
            float core;
            int corei;
            int sig = 0;
            if(quot == 0){
                core = sin_core(absrem, fpu);
                corei = bit_cast<int, float>(core);
                sig = (corei >> 31 & 1);
            }
            else if(quot == 1){
                core = cos_core(absrem, fpu);
                corei = bit_cast<int, float>(core);
                sig = (corei >> 31 & 1);
            }
            else if(quot == 2){
                core = sin_core(absrem, fpu);
                corei = bit_cast<int, float>(core);
                sig = (corei>> 31 & 1) ^ 1;
            }
            else{
                core = cos_core(absrem, fpu);
                corei = bit_cast<int, float>(core);
                sig = (corei >> 31 & 1) ^ 1;
            }
            return make_float(sig, corei >> 23 & bitmask(8), corei);
        }
        else{
            float core = sin_core(std::abs(f), fpu);
            int corei = bit_cast<int, float>(core);
            int sig = (corei >> 31 & 1);
            return make_float(sig ^ ((fi >> 31) & 1), corei >> 23 & bitmask(8), corei);
        }
    }


}


#define TEST_NUM 100000000


bool range_check(double value, double L, double R){
    if(L < value && value < R) return true;
    return false;
}

void test(const double EPS,const double LOW,const double HIGH, int tag, const FPU& fpu){
    using namespace std;
    if(tag == 0) cout << "fadd test start!" << endl;
    else if(tag == 1) cout << "fsub test start!" << endl;
    else if(tag == 2) cout << "fmul test start!" << endl;
    else if(tag == 3) cout << "fdiv test start!" << endl;
    else if(tag == 4) cout << "fsqrt test start!" << endl;
    else if(tag == 5) cout << "atan test start!" << endl;
    random_device rnd;
    mt19937 mt(rnd());
    union{float f; int i;} f, g;
    double c = 1.0;
    double myans, ans, l, r;
    if(tag == 0 || tag == 1) for(int i = 0; i < 23; i++) c /= 2.0;
    else if(tag == 2) for(int i = 0; i < 22; i++) c /= 2.0;
    else if(tag == 3 || tag == 4 || tag == 5) for(int i = 0; i < 20; i++) c /= 2.0;
    else if(tag == 6 || tag == 7) for(int i = 0; i < 18; i++) c /= 2.0;
    if(tag == 0 || tag == 1){
        int cnt = 0;
        while(cnt < TEST_NUM){
            f.i = mt(), g.i = mt();
            if(!range_check(f.f, LOW, HIGH)) continue;
            if(!range_check(g.f, LOW, HIGH)) continue;
            if(tag == 0) myans = TasukuFukami::fadd(f.f, g.f), ans = (double)f.f + (double)g.f;
            else myans = TasukuFukami::fsub(f.f, g.f), ans = (double)f.f - (double)g.f;
            if(!range_check(ans, LOW, HIGH)) continue;
            l = abs(myans - ans);
            r = max({c*abs(f.f), c*abs(g.f), c*abs(ans), EPS});
            if(l < r) cnt++;
            else{
                cout << (tag ? "fsub " : "fadd ") << "test failed:\n";
                cout << "f \n";
                TasukuFukami::print_float(f.f);
                cout << "\ng \n";
                TasukuFukami::print_float(g.f);
                cout << "\nmyans \n";
                TasukuFukami::print_float(myans);
                cout << "\nans \n";
                TasukuFukami::print_float(ans);
                exit(0);
            }
        }
        cerr << (tag == 0 ? "fadd " : "fsub ") << "test success!" << endl; 
        cerr.flush();
    }
    else if(tag == 2 || tag == 3){
        double error = 0;
        int cnt = 0;
        while(cnt < TEST_NUM){
            f.i = mt(), g.i = mt();
            //print_binary_int(f.i);
            //print_binary_int(g.i);
            bool ovf = false;
            if(!range_check(f.f, LOW, HIGH)) continue;
            if(tag == 3){
                if((((g.i >> 23) & bitmask(8)) == 0) || !range_check(g.f, LOW, HIGH)) continue;
                union {float f; int i;} tmp;
                tmp.f = f.f / g.f;
                if(((tmp.i >> 23) & bitmask(8)) == bitmask(8)) continue;
            }
            if(tag == 2) myans = TasukuFukami::fmul(f.f, g.f), ans = (double)f.f * (double)g.f;
            else myans = TasukuFukami::fdiv(f.f, g.f, fpu, ovf), ans = (double)f.f / (double)g.f;
            if(!range_check(ans, LOW, HIGH)) continue;
            if((((f.i >> 23) & bitmask(8)) == 0 || ((g.i >> 23) & bitmask(8)) == 0)){
                union {float f; int i;} d;
                d.f = myans;
                if(((d.i >> 23) & bitmask(8)) == 0){
                    cnt++;
                    continue;
                }
            }
            l = abs(myans - ans);
            r = max({c*abs(ans), EPS});
            error = std::max(error, l / r);
            if(l < r) cnt++;
            else{
                cout << (tag == 2 ? "fmul " : "fdiv ") << "test failed:\n";
                cout << "f \n";
                TasukuFukami::print_float(f.f);
                cout << "\ng \n";
                TasukuFukami::print_float(g.f);
                cout << "\nmyans \n";
                TasukuFukami::print_float(myans);
                cout << "\nans \n";
                TasukuFukami::print_float(ans);
                exit(0);
            }
        }
        printout(error);
        cerr << (tag == 2 ? "fmul " : "fdiv ") << "test success!" << endl; 
        cerr.flush();
    }
    else if(tag == 4){
        int cnt = 0;
        while(cnt < TEST_NUM){
            f.i = mt();
            if(((f.i >> 23) & bitmask(8)) == 0 || range_check(f.f, 0, HIGH)){
                myans = TasukuFukami::fsqrt(f.f, fpu), ans = pow((double)f.f, 0.5);
                if(((f.i >> 23) & bitmask(8)) == 0){
                    union {float f; int i;} d;
                    d.f = myans;
                    if(((d.i >> 23) & bitmask(8)) == 0){
                        cnt++;
                        continue;
                    }
                }
                l = abs(myans - ans);
                r = max(c*ans, EPS);
                if(l < r) cnt++;
                else{
                    cout << "fsqrt test failed:\n";
                    cout << "f \n";
                    TasukuFukami::print_float(f.f);
                    cout << "\nmyans \n";
                    TasukuFukami::print_float(myans);
                    cout << "\nans \n";
                    TasukuFukami::print_float(ans);
                    exit(0);
                }
            }
        }
        cerr << "fsqrt test success!" << endl; 
    }
    else if(tag == 5){
        for(int i = 0; i < TEST_NUM; i++){
            f.i = mt();
            if(!range_check(f.f, LOW, HIGH)) continue;
            myans = TasukuFukami::atan(f.f, fpu), ans = atan((double)f.f);
            l = abs(myans - ans);
            r = max(c*abs(ans), EPS);
            if(l < r) continue;
            cout << "atan test failed:\n";
            cout << "f \n";
            TasukuFukami::print_float(f.f);
            cout << "\nmyans \n";
            TasukuFukami::print_float(myans);
            cout << "\nans \n";
            TasukuFukami::print_float(ans);
            exit(0);
        }
        cerr << "atan test success!" << endl; 
    }
    else if(tag == 6 || tag == 7){
        ifstream f;
        f.open("memo");
        string s;
        while(f >> s){
            int a = btoi(s);
            float f = bit_cast<float, int>(a);
            auto p = TasukuFukami::reduce(f, fpu);
            float myans = (tag == 6 ? TasukuFukami::sin(f, fpu) : TasukuFukami::cos(f, fpu));
            
            int ans = bit_cast<int, float>(myans);
            int ans2 = bit_cast<int, float>(p.second);
            printout(p.first);
            print_binary_int_nspace(ans);
            print_binary_int_nspace(ans2);
        }
    }
}

void fpu_test(const FPU& fpu){
    double EPS = 1.0;
    double LOW = -0.5, HIGH = 2.0;
    for(int i = 0; i < 126; i++){
        EPS /= 2.0;
        LOW /= 2.0;
        HIGH *= 2.0;
    }
    for(int i = 2; i <= 2; i++){
        test(EPS, LOW, HIGH, i, fpu);
    }
    return;
}

void make_test(const double LOW,const double HIGH){
    using namespace std;
    random_device rnd;
    mt19937 mt(rnd());
    ofstream file;
    file.open("memo");
    union{float f; int i;} f;
    for(int i = 0; i < TEST_NUM; i++){
        f.i = mt();
        if(!range_check(f.f, LOW, HIGH)){
            i--;
            continue;
        }
        for(int j = 31; j >= 0; j--) file << (f.i >> j & 1);
        file << '\n';
    }
    file.close();
}

#undef TEST_NUM
