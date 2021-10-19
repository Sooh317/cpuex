#include <iostream>
#include <string>
#include <map>
#include "struct.hpp"
#include "decode.hpp"
#include "sim.hpp"
#include "memory.hpp"
#include "cpu.hpp"
#include "instruction.hpp"
#include "util.hpp"


int main(int argc, char* argv[]){
    //std::ios_base::sync_with_stdio(false);
    CPU cpu;
    MEMORY mem;
    std::map<std::string, int> lbl;

    init_memory(argc, argv, mem, lbl);

    init_cpu(cpu, lbl, "_min_caml_start", 1024);

    simulate_whole(cpu, mem);

    printout(cpu.gpr[2]);
    
    return 0;
}
