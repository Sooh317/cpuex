#include <iostream>
#include <string>
#include <map>
#include "struct.hpp"
#include "decode.hpp"
#include "sim.hpp"
#include "memory.hpp"
#include "util.hpp"


int main(int argc, char* argv[]){
    CPU cpu;
    MEMORY mem, submem; // submem for library
    std::map<std::string, int> lbl, sublbl;

    init_memory(argc, argv, mem, submem, lbl, sublbl);

    simulate_whole(cpu, mem, submem);
    
    return 0;
}
