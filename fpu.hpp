#pragma once
#include <iostream>
#include <fstream>
#include <string> 
#include <vector>
#include <random>
#include <algorithm>
#include "struct.hpp"
#include "util.hpp"

/**
 * float 
 * 左から見て
 * 0 -> sig
 * 1 ~ 8 -> exp
 * 9 ~ 31 -> manti
**/ 

/**
 * ストレステスト
**/

struct fpu_t{
private:
    static const int FINV_TABLE_LINE = 1024;
    static const int ATAN_TABLE_LINE = 1786;
    static const int FSQRT_TABLE_LINE = 1024;
    const std::vector<int> heads = {0, 1, 2, 4, 8, 16, 32, 64, 128,\
                                    256, 512, 768, 1024, 1280, 1408,\
                                    1536, 1600,1664, 1696, 1728, 1744, \
                                    1760, 1768, 1776,1780, 1782, 1783, 1784, 1785};
    const std::vector<int> depdict = {0, 0, 1, 2, 3, 4, 5, 6, 7,\
                                      8, 8, 8, 8, 7, 7, 6, 6, 5,\
                                      5, 4, 4, 3, 3, 2, 1, 0, 0, 0, 0};
    int cnt_sqrt, cnt_inv, cnt_atan;
    std::vector<std::pair<float, float>> fsqrttable;
    std::vector<std::pair<float, float>> finvtable;
    std::vector<std::pair<float, float>> atantable;
public:
    fpu_t():cnt_sqrt(0), cnt_inv(0), cnt_atan(0){
        fsqrttable.resize(FSQRT_TABLE_LINE);
        finvtable.resize(FINV_TABLE_LINE);
        atantable.resize(ATAN_TABLE_LINE);
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
        else if(cnt_atan != ATAN_TABLE_LINE){
            ok = false;
            std::cerr << "cnt_atan : " << cnt_atan << " is less than " << ATAN_TABLE_LINE << std::endl;
        }
        if(ok) std::cerr << "fpu check success" << std::endl;
        else{
            std::cerr << "fpu check failed\n";
            exit(0);
        }
        return;
    }
    int Depdict(int x)const{return depdict[10 + x];}
    int Heads(int x)const{return heads[x];}
    std::pair<float, float> Fsqrttable(int x)const{return fsqrttable[x];}
    std::pair<float, float> Finvtable(int x)const{return finvtable[x];}
    std::pair<float, float> Atantable(int x)const{return atantable[x];}
};
using FPU = fpu_t;


float float_parse(const std::string &s){
    union { float f; int i; } d;
    d.i = btoi(s);
    return d.f;
}

void init_fpu(FPU& fpu){
    std::ifstream ifs("fsqrttable.mem");
    if(ifs){
        std::string s;
        while(ifs >> s){
            fpu.add_data_fsqrt(float_parse(s.substr(0, 32)), float_parse(s.substr(32, 32)));
        }
    }
    ifs.close();
    ifs.open("finvtable.mem");
    if(ifs){
        std::string s;
        while(ifs >> s){
            fpu.add_data_finv(float_parse(s.substr(0, 32)), float_parse(s.substr(32, 32)));
        }
    }
    ifs.close();
    ifs.open("atantable.mem");
    if(ifs){
        std::string s;
        while(ifs >> s){
            fpu.add_data_atan(float_parse(s.substr(0, 32)), float_parse(s.substr(32, 32)));
        }
    }
    fpu.check();
}

inline double tofloat64(float f){
    return double(f);
}

void print_float(float f){
    union { float f; int i; } d;
    d.f = f;
    std::cout << "value : " << f << '\n';
    std::cout << "sig   : " << kth_bit(d.i, 0) \
              << "\nexp : " << segment(d.i, 1, 8) \
              << "\nman : " << segment(d.i, 9, 31) << '\n';
    print_binary_int(d.i);
}


inline float make_float(int sig, int exp, int manti){
    union { float f; int i; } d;
    d.i = (sig << 31) | (exp << 23) | manti;
    return d.f;
}

float fadd(float f, float g){
    union { float f; int i; } a, b, pre, post;
    a.f = f, b.f = g;
    int exp_a = (a.i >> 23) & MASK8, exp_b = (b.i >> 23) & MASK8;
    if(exp_a < exp_b) pre = b, post = a;
    else if(exp_a > exp_b) pre = a, post = b;
    else{
        if((a.i & MASK23) > (b.i & MASK23)) pre = a, post = b;
        else pre = b, post = a;
    }
    int newexp = (pre.i >> 23) & MASK8;
    int expdiff = newexp - ((post.i >> 23) & MASK8);
    int newmanti;

    if(((post.i >> 23) & MASK8) == 0) newmanti = (pre.i & MASK23); //post_exp = 0
    else if(kth_bit(pre.i, 0) == kth_bit(post.i, 0)){
        newmanti = ((1 << 23) | (pre.i & MASK23));
        if(expdiff < 32) newmanti += (((1 << 23) | (post.i & MASK23)) >> expdiff);
        if(newmanti >= 1 << 24){
            newmanti = (newmanti ^ (1 << 24)) >> 1; // 最上位clear
            newexp++;
        }
        else newmanti ^= 1 << 23;
    }
    else{
        newmanti = ((1 << 23) | (pre.i & MASK23));
        if(expdiff < 32) newmanti -= (((1 << 23) | (post.i & MASK23)) >> expdiff);
        if(newmanti == 0) newexp = 0;
        else{
            while(newmanti < (1 << 23)){
                newmanti <<= 1;
                newexp--;
            }
            newmanti ^= (1 << 23); // 最上位clear
        }
    }
    if(newexp < 0) newexp = 0;
    return make_float(kth_bit(pre.i, 0), newexp, newmanti);
}

float fsub(float f, float g){
    return fadd(f, -g);
}

float fmul(float f, float g){
    union { float f; int i; } a, b;
    a.f = f, b.f = g;
    int manti1 = a.i & MASK23;
    int manti2 = b.i & MASK23;

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
    int newexp = ((a.i >> 23) & MASK8) + ((b.i >> 23) & MASK8) - 127;
    int newmanti = ans >> (cnt - 24);
    if(cnt == 27) newexp++;
    if(newexp < 1 || kth_bit(a.i, 0, 32) == 0 || kth_bit(b.i, 0, 32)) newexp = 0;

    return make_float(newsig, newexp, newmanti & MASK23);
}

float fsqrt(float f, const FPU& fpu){
    union { float f; int i; } d, tmp;
    d.f = f;
    int tag = ((d.i >> 14) & MASK10) ^ (1 << 9);
    auto [midy, mydydx] = fpu.Fsqrttable(tag);
    int exp = (d.i >> 23 & 1) ? 127 : 128;
    float midx = make_float(0, exp, (((d.i >> 14) & MASK9) << 14) | (1 << 13));
    float target = make_float(0, exp, d.i & MASK23);
    float dx = fsub(target, midx);
    float ydiff = fmul(dx, mydydx);
    float myans = fadd(midy, ydiff);
    tmp.f = myans;
    int newexp = (d.i >> 24 & MASK7) - ((d.i >> 23 & 1) ? 63 : 64) + ((tmp.i >> 23) & MASK8);
    if((d.i >> 23 & MASK8) == 0) newexp = 0;
    return make_float(0, newexp, tmp.i & MASK23);
}

float finv(float f, const FPU& fpu){
    union { float f; int i; } d, normfl, tmp;
    d.f = f;
    int sig = kth_bit(d.i, 0);
    int oldexp = (d.i >> 23 & MASK8) - 127;
    normfl.f = make_float(0, 127, d.i & MASK23);
    int tag = (normfl.i >> 13) & MASK10;
    auto [midy, mydydx] = fpu.Finvtable(tag);
    d.i = ((d.i >> 13) << 13) | (1 << 12);
    float dx = fsub(normfl.f, d.f);
    float ydiff = fmul(dx, mydydx);
    float myans = fadd(midy, ydiff);
    tmp.f = myans;
    int newexp = (tmp.i >> 23 & MASK8) - oldexp;
    int manti = tmp.i & MASK23;
    if(newexp < 0){
        std::cerr << "exp too small, given float.exp may be more than 126" << std::endl;
        assert(false);
    }
    return make_float(sig, newexp, manti);
}   

float fdiv(float f, float g, const FPU& fpu){
    union { float f; int i; } a, b, core;
    a.f = f, b.f = g;
    core.f = fmul(make_float(0, 127, a.i & MASK23), finv(make_float(0, 127, b.i & MASK23), fpu));
    int sig = kth_bit(a.i, 0) ^ kth_bit(b.i, 0);
    int diffexp = (a.i >> 23 & MASK8) - (b.i >> 23 & MASK8);
    int newexp = std::max(0, (core.i >> 23 & MASK8) + diffexp);
    return make_float(sig, newexp, core.i & MASK23);
}

float atan(float f, const FPU& fpu){
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
        return fmul(f, tmp.f);
    }
    if(exp == -127 + 127){
        return make_float(sig, 0, 1<<23);
    }
    int depth = fpu.Depdict(exp - 127);
    int head = fpu.Heads(exp - 127 + 10);

    float mymidy, mydydx, mymidx;
    if(depth > 0){
        int offset = cut_bit(manti, 9, 9 + depth - 1);
        std::tie(mymidy, mydydx) = fpu.Atantable(head + offset);
        offset |= 1 << depth;
        offset = offset << (23 - depth) | (1 << (22 - depth));
        mymidx = make_float(0, exp, offset);
    }
    else{
        std::tie(mymidy, mydydx) = fpu.Atantable(head);
        mymidx = make_float(0, exp, (1<<23) + (1<<22));
    }
    float mydx = fsub(make_float(0, exp, manti), mymidx);
    float ydiff = fmul(mydydx, mydx);
    union { float f; int i; } myans;
    myans.f = fadd(mymidy, ydiff);
    return make_float(sig, myans.i >> 23 & MASK8, myans.i & MASK23);
}


#define TEST_NUM 1000000000


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
    union { float f; int i; } f, g;
    double c = 1.0;
    double myans, ans, l, r;
    if(tag == 0 || tag == 1) for(int i = 0; i < 23; i++) c /= 2.0;
    else if(tag == 2) for(int i = 0; i < 22; i++) c /= 2.0;
    else for(int i = 0; i < 20; i++) c /= 2.0;

    if(tag == 0 || tag == 1){
        for(int i = 0; i < TEST_NUM; i++){
            f.i = mt(), g.i = mt();
            if(!range_check(f.f, LOW, HIGH)) continue;
            if(!range_check(g.f, LOW, HIGH)) continue;
            if(tag == 0) myans = fadd(f.f, g.f), ans = f.f + g.f;
            else myans = fsub(f.f, g.f), ans = f.f - g.f;
            if(!range_check(ans, LOW, HIGH)) continue;
            l = abs(myans - ans);
            r = max({c*abs(f.f), c*abs(g.f), c*abs(ans), EPS});
            if(l < r) continue;
            else{
                cout << (tag ? "fsub " : "fadd ") << "test failed:\n";
                cout << "f \n";
                print_float(f.f);
                cout << "\ng \n";
                print_float(g.f);
                cout << "\nmyans \n";
                print_float(myans);
                cout << "\nans \n";
                print_float(ans);
                exit(0);
            }
        }
    }
    else if(tag == 2 || tag == 3){
        for(int i = 0; i < TEST_NUM; i++){
            f.i = mt(), g.i = mt();
            if(!range_check(f.f, LOW, HIGH)) continue;
            if((tag == 3 && g.f == 0) || !range_check(g.f, LOW, HIGH)) continue;
            if(tag == 2) myans = fmul(f.f, g.f), ans = f.f * g.f;
            else myans = fdiv(f.f, g.f, fpu), ans = f.f / g.f;
            if(!range_check(ans, LOW, HIGH)) continue;
            l = abs(myans - ans);
            r = max({c*abs(ans), EPS});
            if(l < r) continue;
            else{
                cout << (tag == 2 ? "fmul " : "fdiv ") << "test failed:\n";
                cout << "f \n";
                print_float(f.f);
                cout << "\ng \n";
                print_float(g.f);
                cout << "\nmyans \n";
                print_float(myans);
                cout << "\nans \n";
                print_float(ans);
                exit(0);
            }
        }
    }
    else if(tag == 4){
        for(int i = 0; i < TEST_NUM; i++){
            f.i = mt();
            if(f.f == 0 || range_check(f.f, 0, HIGH)){
                myans = fsqrt(f.f, fpu), ans = pow(f.f, 0.5);
                l = abs(myans - ans);
                r = max(c*ans, EPS);
                if(l < r) continue;
                else{
                    cout << "fsqrt test failed:\n";
                    cout << "f \n";
                    print_float(f.f);
                    cout << "\nmyans \n";
                    print_float(myans);
                    cout << "\nans \n";
                    print_float(ans);
                    exit(0);
                }
            }
        }
    }
    else if(tag == 5){
        for(int i = 0; i < TEST_NUM; i++){
            f.i = mt();
            if(!range_check(f.f, LOW, HIGH)) continue;
            myans = atan(f.f, fpu), ans = atan(f.f);
            l = abs(myans - ans);
            r = max(c*abs(ans), EPS);
            if(l < r) continue;
            cout << "atan test failed:\n";
            cout << "f \n";
            print_float(f.f);
            cout << "\nmyans \n";
            print_float(myans);
            cout << "\nans \n";
            print_float(ans);
            exit(0);
        }
    }
    cerr << "fadd test success!" << endl; 
}

void fpu_test(const FPU& fpu){
    double EPS = 1.0;
    double LOW = -0.5, HIGH = 2.0;
    for(int i = 0; i < 126; i++){
        EPS /= 2.0;
        LOW /= 2.0;
        HIGH *= 2.0;
    }
    for(int i = 0; i <= 5; i++){
        test(EPS, LOW, HIGH, i, fpu);
    }
}