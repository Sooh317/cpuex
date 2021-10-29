#pragma once
#include <iostream>
#include "struct.hpp"
#include <string>
#include <cassert>

#define MASK3 0b111
#define MASK5 0b11111
#define MASK10 0x3ff
#define MASK14 0x3fff
#define MASK16 0xffff
#define MASK24 0xffffff



#define printerr(x) std::cerr << (x) << std::endl;
#define printout(x) std::cout << (x) << std::endl;
#define warning(x) std::cerr << "## WARNING ##\n" << x << " is unknown" << std::endl;
#define rep(i,n) for(int i = 0; i < n; i++)

void print_binary_int(int);
int lo16(int);
int ha16(int);
void clear_and_set(int&, int, int, int);
int kth_bit(int, int, int field = 32);
int segment(int, int, int);
int btoi(const std::string&);
int exts(const std::string&, int base = 0);