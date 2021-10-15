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
    CPU cpu;
    MEMORY mem; // submem for library
    std::map<std::string, int> lbl;
    init_memory(argc, argv, mem, lbl);
    init_cpu(cpu, lbl, "_min_caml_start");
    simulate_whole(cpu, mem);

    return 0;
}
