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

char flushed[1024*1024];

int main(int argc, char* argv[]){
    CPU cpu;
    MEMORY mem;
    CACHE cache;
    OPTION option;
    FPU fpu;
    init_fpu(fpu);

    init_option(option, argc, argv);
    option.show_option();

    if(option.binTOasm || option.asmTObin){
        translator(mem, option);
        return 0;
    }

    init_memory(mem, option);


    std::cout << "loading success!" << std::endl;
    //show_lable(mem.lbl);

    init_cpu(cpu, option, mem.lbl);

    execution(cpu, mem, option, fpu, cache);

    return 0;
}
