#include <map>
#include <string>
#include <cassert>
#include "option.hpp"
#include "struct.hpp"

//void init_cpu(CPU&, OPTION&, std::map<std::string, int>&, int);

// stack pointer　初期値 -> 2^25 - 1
void init_cpu(CPU& cpu, OPTION& option, FASTMEMORY* mem, MEMORY* mem_pro, int sp = (DATA_SIZE - 1) * 4){
    cpu.gpr[3] = sp; 
    cpu.gpr[4] = 60000;
    cpu.lr = 0xffffffff;
    auto lbl = (option.exec_mode == 1 ? mem_pro->lbl : mem->lbl);
    if(!option.binary){
        assert(lbl.find("_min_caml_start") != lbl.end());
        cpu.pc = lbl["_min_caml_start"];
    }
    else cpu.pc = 0;
    return;
}