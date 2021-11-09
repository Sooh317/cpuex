#include <iostream>
#include <string>
#include <map>
#include "struct.hpp"
#include "decode.hpp"
#include "sim.hpp"
#include "memory.hpp"
#include "cpu.hpp"
#include "instruction.hpp"
#include "option.hpp"
#include "util.hpp"
#include "fpu.hpp"
//#include "cache.hpp"


int main(int argc, char* argv[]){
    CPU cpu;
    MEMORY mem;
    //CACHE cache;
    OPTION option;
    FPU fpu;
    init_fpu(fpu);

    init_option(option, argc, argv);
    option.show_option();

    mem.lbl["label"] = 0b1010101010101100;
    ;
    if(option.binTOasm || option.asmTObin){
        translator(mem, option);
        return 0;
    }


    init_memory(mem, option);
    
    // assuming the entry point is _min_caml_start
    init_cpu(cpu, option, mem.lbl, 1024);

    execution(cpu, mem, option, fpu);

    return 0;
}
