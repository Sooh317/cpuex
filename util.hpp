#pragma once
#include <iostream>
#include "struct.hpp"
#include <string>
#include <cassert>
#include <cstdint>
#include <fmt/core.h>

using u32 = std::uint32_t;

constexpr u32 bitmask(int x) {
    return (1u << x) - 1u;
}

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
    return a & bitmask(l - r + 1);
}

int mask(int x){
    return x;
}
int rotl(int x, int y){
    return x;
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


