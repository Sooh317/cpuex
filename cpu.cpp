#include "cpu.hpp"

void init_cpu(CPU& cpu, std::map<std::string, int> &lbl, const std::string& main, int sp){
    cpu.gpr[1] = sp; 
    assert(lbl.find(main) != lbl.end());
    cpu.pc = lbl[main];
    return;
}