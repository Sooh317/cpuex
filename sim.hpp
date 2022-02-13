#pragma once
#include <iostream>
#include <fstream>
#include <map>
#include <set>
#include "struct.hpp"
#include "option.hpp"
#include "instruction.hpp"
#include "struct.hpp"
#include "decode.hpp"
#include "util.hpp"
#include "step.hpp"
#include "fpu.hpp"
#include "cache.hpp"





INSTR instr_fetch_fast(CPU& cpu, const FASTMEMORY &mem){
    unsigned int pc = addr_to_index(cpu.pc);
    cpu.pc += 4;
    return mem.instr[pc];
}

void exec_fast(CPU& cpu, FASTMEMORY& mem, FPU& fpu, FASTCACHE& cache){
    while(1){
        auto[opc, d, a, b] = instr_fetch_fast(cpu, mem);
        int c, ea, tmp;
        [[maybe_unused]] int bo, bi;
        [[maybe_unused]] bool cond_ok, ctr_ok;
        switch(opc){
            case ADD:
                cpu.gpr[d] = cpu.gpr[a] + cpu.gpr[b];
                break;
            case SUB:
                cpu.gpr[d] = cpu.gpr[a] - cpu.gpr[b];
                break;
            case ADDI:
                cpu.gpr[d] = (a ? cpu.gpr[a] : 0) + b;
                break;
            case ADDIS:
                cpu.gpr[d] = (a ? cpu.gpr[a] : 0) + int(b << 16);
                break;
            case CMPWI:
                if(cpu.gpr[a] < b) c = 0b100;
                else if(cpu.gpr[a] > b) c = 0b010;
                else c = 0b001;
                clear_and_set(cpu.cr, 4*7, 4*7 + 3, c << 1); // cr7のみ
                break;
            case CMPW:
                a = cpu.gpr[a];
                b = cpu.gpr[b];
                if(a < b) c = 0b100;
                else if(a > b) c = 0b010;
                else c = 0b001;
                clear_and_set(cpu.cr, 4*7, 4*7 + 3, c << 1); // cr7のみ
                break;
            case B:
                cpu.pc = d;
                break;
            case BGT:   
                cond_ok = kth_bit(cpu.cr, 7*4+1); // cr7のみ
                if(cond_ok) cpu.pc = a;
                break;
            case BLT:
                cond_ok = kth_bit(cpu.cr, 7*4);// cr7のみ
                if(cond_ok) cpu.pc = a;
                break;
            case BGE:
                if(!kth_bit(cpu.cr, 7*4)) cpu.pc = a;
                break;
            case BNE:
                if(!kth_bit(cpu.cr, 7*4+2)) cpu.pc = a;
                break;
            case BL:    
                cpu.lr = cpu.pc;
                cpu.pc = d;
                break;
            case BLR:
                //print_binary_int(cpu.lr);
                cpu.pc = segment(cpu.lr, 0, 29) << 2;
                break;
            case BCL:
                cpu.lr = cpu.pc;
                if(!kth_bit(d, 2, 5)) cpu.ctr--;
                ctr_ok = kth_bit(d, 2, 5) || ((cpu.ctr != 0) ^ kth_bit(d, 3, 5));
                cond_ok = kth_bit(d, 0, 5) || (kth_bit(cpu.cr, a) ^ (!kth_bit(d, 1, 5)));
                if(ctr_ok && cond_ok) cpu.pc = b;
                break;
            case BCTR:
                cpu.pc = segment(cpu.ctr, 0, 29) << 2;
                break;
            case BCTRL:
                cpu.lr = cpu.pc;
                cpu.pc = segment(cpu.ctr, 0, 29) << 2;
                break;
            case LWZ: 
                ea = (b ? cpu.gpr[b] : 0) + a;
                cpu.gpr[d] = cache.lw(ea, mem);
                break;
            case LWZU:
                ea = cpu.gpr[b] + a;
                cpu.gpr[d] = cache.lw(ea, mem);
                cpu.gpr[b] = ea;
                break;
            case STW:   
                ea = (b ? cpu.gpr[b] : 0) + a;
                cache.swi(ea, mem, cpu.gpr[d]);
                break;
            case STWU:
                ea = cpu.gpr[b] + a;
                cache.swi(ea, mem, cpu.gpr[d]);
                cpu.gpr[b] = ea;
                break;
            case MFSPR:
                if(a == 0b01000) cpu.gpr[d] = cpu.lr;
                else if(a == 0b01001) cpu.gpr[d] = cpu.ctr;
                break;
            case MR:
                cpu.gpr[d] = cpu.gpr[a];
                break;
            case MTSPR:
                if(d == 0b01000) cpu.lr = cpu.gpr[a];
                else if(d == 0b01001) cpu.ctr = cpu.gpr[a];
                break;
            case XORIS:
                cpu.gpr[d] = cpu.gpr[a] ^ (b << 16);
                break;
            case FCTIWZ:
                cpu.gpr[d] = int(std::trunc(cpu.fpr[a]));
                break;
            case FCFIW:
                cpu.fpr[d] = float(cpu.gpr[a]);
                break;
            case IN:
                cpu.gpr[d] = mem.sld[mem.sldpointer++];
                break;
            case OUT: // imm + 1 byte目はどこ
                // a = 3 - a;
                cpu.write(segment(cpu.gpr[d], 8*3, 8*3 + 7));
                break;
            case FLUSH: // 
                cpu.flush();
                break;
            case ORI:
                cpu.gpr[d] = cpu.gpr[a] | (b & bitmask(16));
                break;
            case FABS:
                cpu.fpr[d] = std::abs(cpu.fpr[a]); // 多分これで問題ないよね...
                break;
            case FADD:
                cpu.fpr[d] = TasukuFukami::fadd(cpu.fpr[a], cpu.fpr[b]);
                break;
            case FCMPU: // NaNについては存在しないとする
                if(cpu.fpr[a] < cpu.fpr[b]) c = 0b1000;
                else if(cpu.fpr[a] > cpu.fpr[b]) c = 0b0100;
                else c = 0b0010;
                clear_and_set(cpu.cr, 4*7, 4*7 + 3, c);
                break;
            case FDIV:
                cpu.fpr[d] = TasukuFukami::fdiv(cpu.fpr[a], cpu.fpr[b], fpu);
                break;
            case FMR:
                cpu.fpr[d] = cpu.fpr[a];
                break;
            case FMUL:
                cpu.fpr[d] = TasukuFukami::fmul(cpu.fpr[a], cpu.fpr[b]);
                break;
            case FNEG:
                cpu.fpr[d] = -cpu.fpr[a];
                break;
            case FSUB:
                cpu.fpr[d] = TasukuFukami::fsub(cpu.fpr[a], cpu.fpr[b]);
                break;
            case FSQRT:
                cpu.fpr[d] = TasukuFukami::fsqrt(cpu.fpr[d], fpu);
                break;
            case FFLOOR: // stdを使ってます
                cpu.fpr[d] = std::floor(cpu.fpr[d]);
                break;
            case FHALF: // なにこれ
                cpu.fpr[d] = TasukuFukami::fmul(cpu.fpr[a], 0.5);
                break;
            case FCOS:
                cpu.fpr[d] = TasukuFukami::cos(cpu.fpr[a], fpu);
                break;
            case FSIN:
                cpu.fpr[d] = TasukuFukami::sin(cpu.fpr[a], fpu);
                break;
            case FATAN:
                cpu.fpr[d] = TasukuFukami::atan(cpu.fpr[d], fpu);
                break;
            case LFS:
                tmp = (b == 0 ? 0 : cpu.gpr[b]);
                ea = tmp + a;
                cpu.fpr[d] = bit_cast<float, int>(cache.lw(ea, mem));
                break;
            case LFSX:
                tmp = (a == 0 ? 0 : cpu.gpr[a]);
                ea = tmp + cpu.gpr[b];
                cpu.fpr[d] = bit_cast<float, int>(cache.lw(ea, mem));
                break;
            case STFSX:
                tmp = (a == 0 ? 0 : cpu.gpr[a]);
                ea = tmp + cpu.gpr[b];
                cache.swf(ea, mem, cpu.fpr[d]);
                break;
            case LWZX:
                tmp = (a == 0 ? 0 : cpu.gpr[a]);
                ea = tmp + cpu.gpr[b];
                cpu.gpr[d] = cache.lw(ea, mem);
                break;
            case MULLI:
                cpu.gpr[d] = int(((long long)cpu.gpr[a] * (long long)b) & bitmask(32));
                break;
            case MULHWU:
                cpu.gpr[d] = int(((((unsigned long long)cpu.gpr[a] & bitmask(32)) * ((unsigned long long)cpu.gpr[b] & bitmask(32)))) >> 32);
                break;
            case SLWI:
                cpu.gpr[d] = (cpu.gpr[a] & bitmask(32 - b)) << b;
                break;
            case SRWI:
                cpu.gpr[d] = (cpu.gpr[a] >> b) & bitmask(32 - b);
                break;
            case STFS: // LFSと同じ
                tmp = (b == 0 ? 0 : cpu.gpr[b]);
                ea = tmp + a;
                cache.swf(ea, mem, cpu.fpr[d]);
                break;
            case STWX:
                tmp = (a == 0 ? 0 : cpu.gpr[a]);
                ea = cpu.gpr[b] + tmp;
                cache.swi(ea, mem, cpu.gpr[d]);
                break;
            case HALT:
                return;
            default:
                cpu.pc -= 4;    
                assert(false);
                break;
        }
    }
}


void translator(FASTMEMORY* mem, MEMORY_PRO* mem_pro, OPTION& option){
    std::ifstream ifs;
    std::string s;
    if(option.binTOasm){
        if(option.binary) ifs.open("run/bin");
        while((option.binary ? ifs : std::cin) >> s){
            auto[opc, d, a, b] = decode_bin(s);
            show_instr(*mem_pro, opc, d, a, b);
        }
    }
    else{
        if(option.assembly){
            INSTR_KIND opc;
            int d, a, b;
            for(int i = 0; i < mem_pro->index / 4; i++){
                opc = mem_pro->instr[i].opcode;
                d = mem_pro->instr[i].rd;
                a = mem_pro->instr[i].ra;
                b = mem_pro->instr[i].rb;
                // if(i == 0) std::cout << opc << " " << d << " " << a << " " << b << std::endl;
                show_instr_binary(opc, d, a, b);
            }
        }
        else{
            while(std::getline(option.assembly ? ifs : std::cin, s)){
                auto vec = remove_chars(s, " ,\t\n");
                if(vec.size() == 0) continue;
                auto[opc, d, a, b] = recognize_instr(mem, mem_pro, vec, option);
                show_instr_binary(opc, d, a, b);
            }
        }
    }
}

void execution(CPU& cpu, FASTMEMORY* mem, FASTCACHE* cache, MEMORY_PRO* mem_pro, OPTION& option, FPU& fpu, CACHE_PRO* cache_pro){
    if(option.exec_mode == 0){
        exec_fast(cpu, *mem, fpu, *cache);
    }
    else if(option.exec_mode == 1){
        
        simulate_step(cpu, *mem_pro, option, fpu, *cache_pro);
    }
}
