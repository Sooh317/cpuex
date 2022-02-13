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
#include "fpu.hpp"
#include "cache.hpp"
#include "result.hpp"

int main(int argc, char* argv[]){
    std::cout << std::setprecision(20);
    CPU cpu;
    MEMORY_PRO* mem_pro;
    FASTMEMORY* mem;
    CACHE_PRO* cache_pro;
    FASTCACHE* cache;
    OPTION option;
    FPU fpu;
    TasukuFukami::init_fpu(fpu);

    init_option(option, argc, argv);
    option.show_option();

    if(option.exec_mode == 0){
        cache = new FASTCACHE;
        mem = new FASTMEMORY;
    }
    else{ 
        cache_pro = new CACHE_PRO;
        mem_pro = new MEMORY_PRO;
    }

    init_memory(cache, mem, cache_pro, mem_pro, option);

    if(option.binTOasm || option.asmTObin){
        translator(mem, mem_pro, option);
        return 0;
    }

    init_cpu(cpu, option, mem, mem_pro);

    execution(cpu, mem, cache, mem_pro, option, fpu, cache_pro);

    show_result(cpu, mem_pro, cache_pro, option);

    if(option.exec_mode == 0){
        delete cache;
        delete mem;
    }
    else{ 
        delete cache_pro;
        delete mem_pro;
    }

    return 0;
}

