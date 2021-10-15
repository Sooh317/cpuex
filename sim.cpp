#include "sim.hpp"
#include "instruction.hpp"
#include "struct.hpp"
#include "util.hpp"

int addr_to_index(int k){return k >> 2;}

INSTR instr_fetch(CPU& cpu, const MEMORY &mem){
    assert(cpu.pc < mem.index);
    unsigned int pc = addr_to_index(cpu.pc);
    cpu.pc += 4;
    return mem.instr[pc];
}

int simulate_whole(CPU& cpu, MEMORY &mem, MEMORY &submem){
    for(int i = 0; i < mem.index >> 2; i++){
        INSTR next = instr_fetch(cpu, mem);
        if(cpu.pc < mem.index) exec(next, cpu, mem);
        else{
            while(cpu.pc >= mem.index){
                INSTR subnext = instr_fetch(cpu, submem);
                exec(subnext, cpu, mem);
            }
        }
    }
    return 0;
}

void exec(INSTR instr, CPU& cpu, MEMORY&mem){
    auto[opc, d, a, b] = instr;
    std::cout << opcode_to_string(opc) << " " << d << " " << a << " " << b << std::endl;
    int c, bo, bi, ea, tmp;
    bool cond_ok, ctr_ok;
    switch(opc){
        case ADD:
            cpu.gpr[d] = cpu.gpr[a] + cpu.gpr[b];
            return;
        case ADDI:
            cpu.gpr[d] = (a ? cpu.gpr[a] : 0) + b;
            return;
        case ADDIS:
            cpu.gpr[d] = (a ? cpu.gpr[a] : 0) + b << 16;
            return;
        case CMPWI:
            c = 0;
            if(cpu.gpr[a] < b) c = 0b100;
            else if(cpu.gpr[a] > b) c = 0b010;
            else c = 0b001;
            tmp = cpu.cr;
            clear_and_set(tmp, 4*d, 4*d + 3, c << (cpu.xer & 1));
            cpu.cr = tmp;
            return;
        case BGT:   
            bo = 12, bi = 1;
            if(!kth_bit(bo, 2)) cpu.ctr--;
            ctr_ok = kth_bit(bo, 2) || ((cpu.ctr != 0) ^ kth_bit(bo, 3));
            cond_ok = kth_bit(bo, 0) || (kth_bit(cpu.cr, bi) == kth_bit(bo, 1));
            if(ctr_ok && cond_ok) cpu.pc = a;
            return;
        case BL:    
            cpu.pc = d;
            return;
        case BLR: // 未完成
            bo = 20, bi = 0;
            if(!kth_bit(bo, 2)) cpu.ctr--;
            ctr_ok = kth_bit(bo, 2) || ((cpu.ctr != 0) ^ kth_bit(bo, 3));
            cond_ok = kth_bit(bo, 0) || (kth_bit(cpu.cr, bi) == kth_bit(bo, 1));
            if(ctr_ok && cond_ok) cpu.pc = segment(cpu.lr, 0, 29) << 2;
            return;
        case BCL:
            cpu.lr = cpu.pc + 4;
            if(!kth_bit(bo, 2)) cpu.ctr--;
            ctr_ok = kth_bit(bo, 2) || ((cpu.ctr != 0) ^ kth_bit(bo, 3));
            cond_ok = kth_bit(bo, 0) || (kth_bit(cpu.cr, bi) == kth_bit(bo, 1));
            if(ctr_ok && cond_ok) cpu.pc = cpu.pc - 4 + b;
            return;
        case BCTR:
            bo = 20, bi = 0;
            cond_ok = kth_bit(bo, 0) || (kth_bit(cpu.cr, bi) == kth_bit(bo, 1));
            if(cond_ok) cpu.pc = segment(cpu.ctr, 0, 29) << 2;
            return;
        case LWZ:
            cpu.gpr[d] = mem.data[addr_to_index((b ? cpu.gpr[b] : 0) + a)];
            return;
        case LWZU:
            ea = cpu.gpr[b] + a;
            cpu.gpr[d] = mem.data[addr_to_index(ea)];
            cpu.gpr[b] = ea;
            return;
        case STW:   
            mem.data[addr_to_index((b ? cpu.gpr[b] : 0) + a)] = cpu.gpr[d];
            return;
        case STWU:
            ea = cpu.gpr[b] + a;
            mem.data[addr_to_index(ea)] = cpu.gpr[d];
            cpu.gpr[b] = ea;
            return;
        case MFSPR:
            assert((a >> 5) == 0);
            if(a == 0b00001) cpu.gpr[d] = cpu.xer;
            else if(a == 0b01000) cpu.gpr[d] = cpu.lr;
            else if(a == 0b01001) cpu.gpr[d] = cpu.ctr;
            else assert(false);
            return;
        case MR:
            cpu.gpr[d] = cpu.gpr[a];
            return;
        case MTSPR:
            assert((a >> 5) == 0);
            if(a == 0b00001) cpu.xer = cpu.gpr[d];
            else if(a == 0b01000) cpu.lr = cpu.gpr[d];
            else if(a == 0b01001) cpu.ctr = cpu.gpr[d];
            return;
        default:
            assert(false);
            return;
    }
}
