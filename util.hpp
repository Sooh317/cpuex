#pragma once
#include <iostream>
#include "struct.hpp"
#include <string>

#define print(x) std::cerr << x << std::endl;
#define warning(x) std::cerr << "## WARNING ##\n" << x << " is unknown" << std::endl;

void print_binary_int(int);
int lo16(int);
int ha16(int);
void clear_and_set(int&, int, int, int);
int kth_bit(int, int);
int segment(int, int, int);
std::string opcode_to_string(INSTR_KIND);