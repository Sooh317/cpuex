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
#include "cache.hpp"
#include "result.hpp"

int main(int argc, char* argv[]){
    CPU cpu;
    MEMORY mem;
    CACHE_PRO cache_pro;
    OPTION option;
    FPU fpu;
    TasukuFukami::init_fpu(fpu);
    //fpu_test(fpu);

    init_option(option, argc, argv);
    option.show_option();
    init_memory(cache_pro, mem, option);

    if(option.binTOasm || option.asmTObin){
        translator(mem, option);
        return 0;
    }

    init_cpu(cpu, option, mem.lbl);

    execution(cpu, mem, option, fpu, cache_pro);

    show_result(cpu);

    return 0;
}
