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


int main(int argc, char* argv[]){
    CPU cpu;
    MEMORY mem;
    OPTION option;

    init_memory(mem);

    // assuming the entry point is _min_caml_start
    init_cpu(cpu, mem.lbl, "_min_caml_start", 1024);

    init_option(option, argc, argv, mem.lbl);

    execution(cpu, mem, option);

    printout(cpu.gpr[2]);
    
    return 0;
}
