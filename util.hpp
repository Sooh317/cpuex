#pragma once
#include <iostream>
#include "struct.hpp"
#include <string>
#include <cassert>

#define MASK1 0b1
#define MASK2 0b11
#define MASK3 0b111
#define MASK4 0xf
#define MASK5 0x1f
#define MASK6 0x3f
#define MASK7 0x7f
#define MASK8 0xff
#define MASK9 0x1ff
#define MASK10 0x3ff
#define MASK11 0x7ff
#define MASK12 0xfff
#define MASK13 0x1fff
#define MASK14 0x3fff
#define MASK15 0x7fff
#define MASK16 0xffff
#define MASK17 0x1ffff
#define MASK18 0x3ffff
#define MASK19 0x7ffff
#define MASK20 0xfffff
#define MASK21 0x1fffff
#define MASK22 0x3fffff
#define MASK23 0x7fffff
#define MASK24 0xffffff
#define MASK25 0x1ffffff
#define MASK26 0x3ffffff
#define MASK27 0x7ffffff
#define MASK28 0xfffffff
#define MASK29 0x1fffffff
#define MASK30 0x3fffffff
#define MASK31 0x7fffffff
#define MASK32 0xffffffff



#define printerr(x) std::cerr << (x) << std::endl;
#define printout(x) std::cout << (x) << std::endl;
#define warning(x) std::cerr << "## WARNING ##\n" << x << " is unknown" << std::endl;
#define rep(i,n) for(int i = 0; i < n; i++)
/*
void print_binary_int(int);
int lo16(int);
int ha16(int);
void clear_and_set(int&, int, int, int);
int kth_bit(int, int, int field = 32);
int segment(int, int, int);
int btoi(const std::string&);
int exts(const std::string&, int base = 0);
*/

// [0,1,2,...,31]
// MSB        LSB
// 自分から見た2進とは異なることに注意
// i -> (31 - i) 桁目として計算すると都合が良い

// [0,1,2...,31]をプリント
void print_binary_int(int a){
    for(int i = 31; i >= 0; i--){
        std::cout << (a >> i & 1);
        if(i % 8 == 0) std::cout << " ";
    }
    std::cout << std::endl;
}

inline int bp(int k){
    assert(k <= 31);
    return 31 - k;
}

int cut_bit(int a, int l, int r){ // [l, r]
    l = bp(l), r = bp(r);
    a >>= r;
    switch (l - r + 1){
    case 1:
        return a & MASK1;
    case 2:
        return a & MASK2;
    case 3:
        return a & MASK3;
    case 4:
        return a & MASK4;
    case 5:
        return a & MASK5;
    case 6:
        return a & MASK6;
    case 7:
        return a & MASK7;
    case 8:
        return a & MASK8;
    case 9:
        return a & MASK9;
    case 10:
        return a & MASK10;
    case 11:
        return a & MASK11;
    case 12:
        return a & MASK12;
    case 13:
        return a & MASK13;
    case 14:
        return a & MASK14;
    case 15:
        return a & MASK15;
    case 16:
        return a & MASK16;
    case 17:
        return a & MASK17;
    case 18:
        return a & MASK18;
    case 19:
        return a & MASK19;
    case 20:
        return a & MASK20;
    case 21:
        return a & MASK21;
    case 22:
        return a & MASK22;
    case 23:
        return a & MASK23;
    case 24:
        return a & MASK24;
    case 25:
        return a & MASK25;
    case 26:
        return a & MASK26;
    case 27:
        return a & MASK27;
    case 28:
        return a & MASK28;
    case 29:
        return a & MASK29;
    case 30:
        return a & MASK30;
    case 31:
        return a & MASK31;
    case 32:
        return a & MASK32;
    default:
        assert(false);
    }    
    return -1;
}


// 以下全てマニュアルの処理を実現する関数
// kth_bit は実際には 31 - k 桁目(左からk番目)にあるとして扱う

void clear_and_set(int &k, int l, int r, int v){ // clear [l, r] and substitute v
    l = bp(l), r = bp(r);
    int32_t mask = ~(((1 << (l - r + 1)) - 1) << r);
    k = (k & mask) | (v << r);
}

inline int kth_bit(int a, int k, int field = 32){
    assert(k < field);
    return (a >> (field - 1 - k)) & 1;
}

// [l, r]
int segment(int a, int l, int r){
    int res = 0;
    l = bp(l), r = bp(r);
    for(int i = 0; r + i <= l; i++){
        res |= (a >> (r + i) & 1) << i;
    }
    return res;
}

// low -> [16, ..., 31]
inline int lo16(int x){return (x & 0xffff);}
// high -> [0, ..., 15]
inline int ha16(int x){return (x & 0xffff0000) >> 16;}

int btoi(const std::string& s){
    int res = 0;
    for(int i = 0; i < (int)s.size(); i++){
        res |= (s[s.size() - 1 - i] - '0') << i;
    }
    return res;
}

int exts(const std::string& s, int base = 0){
    int res = btoi(s);
    res <<= base;
    if(s[0] == '1'){
        if(s.size() == 16) res |= 0xffff0000;
    }
    return res;
}


