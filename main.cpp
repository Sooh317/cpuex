#include <iostream>
#include <iomanip>
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
#include "step.hpp"
#include "fpu.hpp"
#include "cache.hpp"
#include "result.hpp"

int main(int argc, char* argv[]){
    std::cout << std::setprecision(20);
    CPU cpu;
    MEMORY_PRO mem_pro;
    CACHE_PRO cache_pro;
    OPTION option;
    FPU fpu;
    TasukuFukami::init_fpu(fpu);

    init_option(option, argc, argv);
    option.show_option();

    init_memory(cache_pro, mem_pro, option);
    
    if(option.binTOasm || option.asmTObin){
        translator(mem_pro, option);
        return 0;
    }

    init_cpu(cpu);

    execution(cpu, mem_pro, option, fpu, cache_pro);

    show_result(cpu, mem_pro, cache_pro);

    return 0;
}

