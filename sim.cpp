#include "sim.hpp"
#include "instruction.hpp"
#include "struct.hpp"
#include "util.hpp"

int addr_to_index(int k){
    return k >> 2;
}

INSTR instr_fetch(CPU& cpu, const MEMORY &mem){
    assert(cpu.pc < mem.index);
    unsigned int pc = addr_to_index(cpu.pc);
    cpu.pc += 4;
    return mem.instr[pc];
}

void execution(CPU& cpu, MEMORY& mem, OPTION& option){
    if(option.exec_mode == 0) simulate_whole(cpu, mem, option);
    else if(option.exec_mode == 1) simulate_step(cpu, mem, option);
}

int simulate_whole(CPU& cpu, MEMORY &mem, OPTION& option){
    while(!exec(cpu, mem, option));
    return 0;
}

int simulate_step(CPU& cpu, MEMORY &mem, OPTION& option){
    bool tmp = false;
    std::swap(tmp, option.display);
    while(option.jump_to_label){
        exec(cpu, mem, option);
        while(cpu.pc != option.label_addr){
            if(exec(cpu, mem, option)){
                std::cerr << "program finished!" << std::endl;
                return 0;
            }
        }
        option.label_ask(mem.lbl);
    }
    std::swap(tmp, option.display);

    std::istream::int_type ch;
    while((ch = std::cin.get()) != EOF){
        if(exec(cpu, mem, option)){
            std::cerr << "program finished!" << std::endl;
            return 0;
        }
    }
    return 0;
}

bool exec(CPU& cpu, MEMORY&mem, OPTION& option){
    auto[opc, d, a, b] = instr_fetch(cpu, mem);
    if(option.display){
        show_instr(opc, d, a, b);
        show_instr_binary(opc, d, a, b);
    }
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
            cpu.gpr[d] = (a ? cpu.gpr[a] : 0) + (b << 16);
            return false;
        case CMPWI:
            c = 0;
            if(cpu.gpr[a] < b) c = 0b100;
            else if(cpu.gpr[a] > b) c = 0b010;
            else c = 0b001;
            tmp = cpu.cr;
            clear_and_set(tmp, 4*d, 4*d + 3, (c << 1) | (cpu.xer & 1));
            cpu.cr = tmp;
            return false;
        case BGT:   
            bo = 0b01100, bi = d*4 + 1;
            cond_ok = kth_bit(cpu.cr, bi);
            if(cond_ok) cpu.pc = a;
            return false;
        case BL:    
            cpu.lr = cpu.pc;
            cpu.pc = d;
            return false;
        case BLR:
            if(cpu.pc == mem.index) return true; // program ends
            cpu.pc = segment(cpu.lr, 0, 29) << 2;
            return false;
        case BCL:
            cpu.lr = cpu.pc;
            if(!kth_bit(d, 2, 5)) cpu.ctr--;
            ctr_ok = kth_bit(d, 2, 5) || ((cpu.ctr != 0) ^ kth_bit(d, 3, 5));
            cond_ok = kth_bit(d, 0, 5) || (kth_bit(cpu.cr, a) ^ (!kth_bit(d, 1, 5)));
            if(ctr_ok && cond_ok) cpu.pc = b;
            return false;
        case BCTR:
            cpu.pc = segment(cpu.ctr, 0, 29) << 2;
            return false;
        case LWZ: 
            cpu.gpr[d] = mem.data.at(addr_to_index((b ? cpu.gpr[b] : 0) + a));
            return false;
        case LWZU:
            ea = cpu.gpr[b] + a;
            cpu.gpr[d] = mem.data.at(addr_to_index(ea));
            cpu.gpr[b] = ea;
            return false;
        case STW:   
            mem.data.at(addr_to_index((b ? cpu.gpr[b] : 0) + a)) = cpu.gpr[d];
            return false;
        case STWU:
            ea = cpu.gpr[b] + a;
            mem.data.at(addr_to_index(ea)) = cpu.gpr[d];
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
            assert((d >> 5) == 0);
            if(d == 0b00001) cpu.xer = cpu.gpr[a];
            else if(d == 0b01000) cpu.lr = cpu.gpr[a];
            else if(d == 0b01001) cpu.ctr = cpu.gpr[a];
            else assert(false);
            return false;
        default:
            warning(opcode_to_string(opc));
            assert(false);
            return false;
    }
}