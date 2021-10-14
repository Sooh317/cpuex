#include "util.hpp"

void print_binary_int(int a){
    for(int i = 31; i >= 0; i--){
        std::cerr << (a >> i & 1);
    }
    std::cerr << std::endl;
}

void clear_and_set(int &k, int l, int r, int v){ // clear [l, r] and substitute v
    int tmp = ~0;
    for(int i = l; i <= r; i++) tmp ^= 1 << i;
    k = (k & tmp) | (v << l);
}

int kth_bit(int a, int k){
    return (a >> k) & 1;
}

int segment(int a, int l, int r){
    int res = 0;
    for(int i = 0; l + i <= r; i++){
        res |= ((a >> (l + i)) & 1) << i;
    }
    return res;
}

int lo16(int x){return (x & 0xffff);}
int ha16(int x){return (x & 0xffff0000);}