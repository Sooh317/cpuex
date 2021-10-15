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

// submem と mem の切り替え
int simulate_whole(CPU& cpu, MEMORY &mem){
    for(int i = 0; i <= 100; i++){
        INSTR next = instr_fetch(cpu, mem);
        if(exec(next, cpu, mem)) return 0;
    }
    return 0;
}

bool exec(INSTR instr, CPU& cpu, MEMORY&mem){
    auto[opc, d, a, b] = instr;
    std::cout << cpu.pc - 4 << " " << opcode_to_string(opc) << " " << d << " " << a << " " << b << std::endl;
    int c, bo, bi, ea, tmp;
    bool cond_ok, ctr_ok;
    switch(opc){
        case ADD:
            cpu.gpr[d] = cpu.gpr[a] + cpu.gpr[b];
            return false;
        case ADDI:
            cpu.gpr[d] = (a ? cpu.gpr[a] : 0) + b;
            return false;
        case ADDIS:
            cpu.gpr[d] = (a ? cpu.gpr[a] : 0) + b << 16;
            return false;
        case CMPWI:
            //std::cerr << opcode_to_string(CMPWI) << " " << cpu.gpr[a] << " " << b << std::endl;
            c = 0;
            if(cpu.gpr[a] < b) c = 0b100;
            else if(cpu.gpr[a] > b) c = 0b010;
            else c = 0b001;
            tmp = cpu.cr;
            clear_and_set(tmp, 4*d, 4*d + 3, (c << 1) | (cpu.xer & 1));
            cpu.cr = tmp;
            return false;
        case BGT:   
            bo = 12, bi = d*4 + 1;
            if(!kth_bit(bo, 2, 5)) cpu.ctr--;
            ctr_ok = kth_bit(bo, 2, 5) || ((cpu.ctr != 0) ^ kth_bit(bo, 3, 5));
            cond_ok = kth_bit(bo, 0, 5) || (kth_bit(cpu.cr, bi) ^ (!kth_bit(bo, 1, 5)));
            if(ctr_ok && cond_ok) cpu.pc = a;
            return false;
        case BL:    
            cpu.lr = cpu.pc;
            cpu.pc = d;
            return false;
        case BLR: // 未完成
            if(cpu.pc == mem.index) return true; // program ends
            bo = 20, bi = 0;
            if(!kth_bit(bo, 2, 5)) cpu.ctr--;
            ctr_ok = kth_bit(bo, 2, 5) || ((cpu.ctr != 0) ^ kth_bit(bo, 3, 5));
            cond_ok = kth_bit(bo, 0, 5) || (kth_bit(cpu.cr, bi) ^ (!kth_bit(bo, 1, 5)));
            if(ctr_ok && cond_ok) cpu.pc = segment(cpu.lr, 0, 29) << 2;
            else return false;
        case BCL: // わかんない
            cpu.lr = cpu.pc;
            if(!kth_bit(bo, 2, 5)) cpu.ctr--;
            ctr_ok = kth_bit(bo, 2, 5) || ((cpu.ctr != 0) ^ kth_bit(bo, 3, 5));
            cond_ok = kth_bit(bo, 0, 5) || (kth_bit(cpu.cr, bi) ^ (!kth_bit(bo, 1, 5)));
            if(ctr_ok && cond_ok) cpu.pc = cpu.pc - 4 + (b << 2);
            return false;
        case BCTR:
            bo = 20, bi = 0;
            cond_ok = kth_bit(bo, 0, 5) || (kth_bit(cpu.cr, bi) ^ (!kth_bit(bo, 1, 5)));
            if(cond_ok) cpu.pc = segment(cpu.ctr, 0, 29) << 2;
            return false;
        case LWZ:
            cpu.gpr[d] = mem.data[addr_to_index((b ? cpu.gpr[b] : 0) + a)];
            return false;
        case LWZU:
            ea = cpu.gpr[b] + a;
            cpu.gpr[d] = mem.data[addr_to_index(ea)];
            cpu.gpr[b] = ea;
            return false;
        case STW:   
            mem.data[addr_to_index((b ? cpu.gpr[b] : 0) + a)] = cpu.gpr[d];
            return false;
        case STWU:
            ea = cpu.gpr[b] + a;
            mem.data[addr_to_index(ea)] = cpu.gpr[d];
            cpu.gpr[b] = ea;
            return false;
        case MFSPR:
            assert((a >> 5) == 0);
            if(a == 0b00001) cpu.gpr[d] = cpu.xer;
            else if(a == 0b01000) cpu.gpr[d] = cpu.lr;
            else if(a == 0b01001) cpu.gpr[d] = cpu.ctr;
            else assert(false);
            return false;
        case MR:
            cpu.gpr[d] = cpu.gpr[a];
            return false;
        case MTSPR:
            assert((a >> 5) == 0);
            if(d == 0b00001) cpu.xer = cpu.gpr[a];
            else if(d == 0b01000) cpu.lr = cpu.gpr[a];
            else if(d == 0b01001) cpu.ctr = cpu.gpr[a];
            else assert(false);
            return false;
        default:
            assert(false);
            return false;
    }
}
