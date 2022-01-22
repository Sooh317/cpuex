#pragma once
#include <iostream>
#include "struct.hpp"
#include <string>
#include <cassert>
#include <cstdint>
#include <fmt/core.h>

using u32 = std::uint32_t;

constexpr u32 bitmask(int x) { return (1u << x) - 1u;}

#define printerr(x) std::cerr << (x) << std::endl;
#define printout(x) std::cout << (x) << std::endl;
#define warning(x) std::cerr << "## WARNING ##\n" << x << " is unknown" << std::endl;
#define rep(i,n) for(int i = 0; i < n; i++)

// [0,1,2,...,31]
// MSB        LSB
// i -> (31 - i) 桁目として計算すると都合が良い

// [0,1,2...,31]をプリント
void print_binary_int(int a){
    for(int i = 31; i >= 0; i--){
        std::cout << (a >> i & 1);
        if(i % 8 == 0) std::cout << " ";
    }
    std::cout << '\n';
}

void print_binary_int1(int a){
    for(int i = 31; i >= 0; i--){
        std::cout << (a >> i & 1);
        if(i && i % 8 == 0) std::cout << " ";
    }
}

void print_binary_int_nspace(int a, bool nl = true){
    for(int i = 31; i >= 0; i--){
        std::cout << (a >> i & 1);
    }
    if(nl) std::cout << '\n';
}

constexpr int bp(int k){ return 31 - k;}

// 以下全てマニュアルの処理を実現する関数
// kth_bit は実際には 31 - k 桁目(左からk番目)にあるとして扱う

void clear_and_set(uint32_t &k, int l, int r, int v){ // clear [l, r] and substitute v
    l = bp(l), r = bp(r);
    int32_t mask = ~(((1 << (l - r + 1)) - 1) << r);
    k = (k & mask) | (v << r);
}

inline int kth_bit(int a, int k, int field = 32){ return (a >> (field - 1 - k)) & 1;}

// [l, r]
int segment(int a, int l, int r){
    int d = r - l + 1;
    r = bp(r);
    return (a >> r) & bitmask(d);
}

// low -> [16, ..., 31]
inline int lo16(int x){return (x & 0xffff);}
// high -> [0, ..., 15]
inline int ha16(int x){return x >> 16;}

int btoi(const std::string& s){
    int res = 0;
    for(int i = 0; i < (int)s.size(); i++){
        res |= (s[s.size() - 1 - i] - '0') << i;
    }
    return res;
}

template<typename To, typename From>
To bit_cast(const From& from) noexcept {
  To result;
  std::memcpy(&result, &from, sizeof(To));
  return result;
}

int exts(const std::string& s, int base){
    int res = btoi(s);
    res <<= base;
    if(s[0] == '1'){
        if(s.size() == 16) res |= 0xffff0000;
    }
    return res;
}

inline int exts(int v){
    return (v >> 15 & 1 ? (v | 0xffff0000) : v);
}

inline int addr_to_index(int k){ return k >> 2;}

inline void console_B(){
    std::cout << "\033[36m> " << std::flush;
}
inline void console_E(){
    std::cout << "\033[m";
}

