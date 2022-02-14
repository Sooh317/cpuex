#include <map>
#include <string>
#include <cassert>
#include "option.hpp"
#include "struct.hpp"

//void init_cpu(CPU&, OPTION&, std::map<std::string, int>&, int);

// stack pointer　初期値 -> 2^25 - 1
void init_cpu(CPU& cpu, int sp = (DATA_SIZE - 1)){
    cpu.gpr[3].i = sp; 
    cpu.gpr[4].i = 60000;
    cpu.lr = 0xffffffff;
    cpu.pc = 0;
    return;
}