#include "cpu.hpp"

void init_cpu(CPU& cpu, OPTION& option, std::map<std::string, int> &lbl, int sp){
    cpu.gpr[1] = sp; 
    if(!option.binary){
        assert(lbl.find("_min_caml_start") != lbl.end());
        cpu.pc = lbl["_min_caml_start"];
    }
    else cpu.pc = 0;
    return;
}