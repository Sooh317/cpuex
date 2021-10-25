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

    init_option(option, argc, argv);
    
    init_memory(mem, option);

    // assuming the entry point is _min_caml_start
    init_cpu(cpu, option, mem.lbl, 1024);

    option.show_option();

    execution(cpu, mem, option);

    printout(cpu.gpr[2]);
    
    return 0;
}
