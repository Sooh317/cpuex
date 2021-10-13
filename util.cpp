#include "util.hpp"

void print_binary_int(int a){
    for(int i = 31; i >= 0; i--){
        std::cerr << (a >> i & 1);
    }
    std::cerr << std::endl;
}

int lo16(int x){return (x & 0xffff);}
int ha16(int x){return (x & 0xffff0000);}