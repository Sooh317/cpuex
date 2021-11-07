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
    // CPU cpu;
    // MEMORY mem;
    // //CACHE cache;
    // OPTION option;
    FPU fpu;
    init_fpu(fpu);
    fpu_test(fpu);
/*
    init_option(option, argc, argv);
    option.show_option();

    if(option.binTOasm || option.asmTObin){
        translator(option);
        return 0;
    }

    init_memory(mem, option);
    
    // assuming the entry point is _min_caml_start
    init_cpu(cpu, option, mem.lbl, 1024);

    execution(cpu, mem, option);
*/
    
    
    return 0;
}
