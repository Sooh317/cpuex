#include "sim.hpp"
#include "struct.hpp"

INSTR instr_fetch(unsigned int pc, const MEMORY &mem){
    assert(pc < INSTR_SIZE);
    return mem.instr[pc];
}

int simulate_whole(CPU& cpu, MEMORY &mem){
    for(int i = 0; i < mem.index; i++){
        INSTR next = instr_fetch(cpu.pc, mem);
        execute_instr(next, cpu);
    }
    return 0;
}

void execute_instr(const INSTR& instr, CPU &cpu){
    
}
