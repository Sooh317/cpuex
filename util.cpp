#include "util.hpp"

// [0,1,2,...,31]
// MSB        LSB
// 自分から見た2進とは異なることに注意
// i -> (31 - i) 桁目として計算すると都合が良い

// [0,1,2...,31]をプリント
void print_binary_int(int a){
    for(int i = 0; i < 32; i++){
        std::cerr << (a >> i & 1);
    }
    std::cerr << std::endl;
}

int bp(int k){
    assert(k <= 31);
    return 31 - k;
}

// 以下全てマニュアルの処理を実現する関数
// kth_bit は実際には 31 - k 桁目にあるとして扱う

void clear_and_set(int &k, int l, int r, int v){ // clear [l, r] and substitute v
    l = bp(l), r = bp(r);
    for(int i = r; i <= l; i++){
        k &= ((~0) ^ (1<<i)); // i桁目zero-clear
        k |= (v >> (i - r) & 1) << i;
    }
}

int kth_bit(int a, int k){
    return (a >> bp(k)) & 1;
}

int segment(int a, int l, int r){
    int res = 0;
    l = bp(l), r = bp(r);
    for(int i = 0; r + i <= l; i++){
        res |= (a >> (r + i) & 1) << i;
    }
    return res;
}

// low -> [16, ..., 31]
int lo16(int x){return (x & 0xffff);}
// high -> [0, ..., 15]
int ha16(int x){return (x & 0xffff0000) >> 16;}
