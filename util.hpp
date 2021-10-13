#pragma once
#include <iostream>

#define print(x) std::cerr << x << std::endl;
#define warning(x) std::cerr << "## WARNING ##\n" << x << " is unknown" << std::endl;

void print_binary_int(int);
int lo16(int);
int ha16(int);



