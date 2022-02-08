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





INSTR instr_fetch_fast(CPU& cpu, const MEMORY &mem){
    unsigned int pc = addr_to_index(cpu.pc);
    cpu.pc += 4;
    return mem.instr[pc];
}

void exec_fast(CPU& cpu, MEMORY_PRO& mem, FPU& fpu, CACHE& cache){
    while(1){
        auto[opc, d, a, b] = instr_fetch_fast(cpu, mem);
        int c, ea, tmp;
        [[maybe_unused]] int bo, bi;
        bool cond_ok, ctr_ok, ovf = false;
        switch(opc){
        case IN:
            cpu.gpr[d].i = mem.sld[mem.sldpointer++];
            continue;
        case OUT: // imm + 1 byte目はどこ
            cpu.write(segment(cpu.gpr[d].i, 8*3, 8*3 + 7));
            continue;

        case FLUSH:
            cpu.flush();
            continue;
        case HALT:
            return;

        case ADD:
            cpu.gpr[d].i = cpu.gpr[a].i + cpu.gpr[b].i;
            continue;
        case ADDI:
            cpu.gpr[d].i = (a ? cpu.gpr[a].i : 0) + exts(b);
            continue;
        case ADDIS:
            cpu.gpr[d].i = (a ? cpu.gpr[a].i : 0) + int(b << 16);
            continue;
        case SUB:
            cpu.gpr[d].i = cpu.gpr[a].i - cpu.gpr[b].i;
            continue;
        case SLWI:
            cpu.gpr[d].i = (cpu.gpr[a].i & bitmask(32 - b)) << b;
            continue;
        case SRWI: // bitmask抜いた
            cpu.gpr[d].i = cpu.gpr[a].i >> b;
            continue;
        case ORI:
            cpu.gpr[d].i = cpu.gpr[a].i | (b & bitmask(16));
            continue;

        case CMPW:
            if(cpu.gpr[a].i < cpu.gpr[b].i) c = 0b1000;
            else if(cpu.gpr[a].i > cpu.gpr[b].i) c = 0b0100;
            else c = 0b0010;
            clear_and_set(cpu.cr, 4*7, 4*7 + 3, c); // cr7のみ
            continue;
        case CMPWI:
            c = 0;
            tmp = exts(b);
            if(cpu.gpr[a].i < tmp) c = 0b1000;
            else if(cpu.gpr[a].i > tmp) c = 0b0100;
            else c = 0b0010;
            clear_and_set(cpu.cr, 4*7, 4*7 + 3, c); // cr7のみ
            continue;
        case FCMPU: // NaNについては存在しないとする
            if(cpu.gpr[a].f < cpu.gpr[b].f) c = 0b1000;
            else if(cpu.gpr[a].f > cpu.gpr[b].f) c = 0b0100;
            else c = 0b0010;
            // fpcc 無視してます
            clear_and_set(cpu.cr, 4*7, 4*7 + 3, c);
            continue;

        case B:
            cpu.pc = d;
            continue;
        case BL:    
            cpu.lr = cpu.pc;
            cpu.pc = d;
            continue;
        case BGE:
            cond_ok = kth_bit(cpu.cr, 7*4); // cr7のみ
            if(!cond_ok) cpu.pc = a;
            continue;
        case BLR:
            cpu.pc = segment(cpu.lr, 0, 29) << 2;
            continue;

        case LWZ: 
            ea = (b ? cpu.gpr[b].i : 0) + exts(a);
            cpu.gpr[d].i = cache.lw(ea, mem);
            continue;
        case LWZX:
            tmp = (a == 0 ? 0 : cpu.gpr[a].i);
            ea = tmp + cpu.gpr[b].f;
            cpu.gpr[d].i = cache.lw(ea, mem);
            continue;
        case STW:   
            ea = (b ? cpu.gpr[b].i : 0) + exts(a);
            cache.swi(ea, mem, cpu.gpr[d].i);
            continue;
        case STWX:
            tmp = (a == 0 ? 0 : cpu.gpr[a].i);
            ea = cpu.gpr[b].i + tmp;
            cache.swi(ea, mem, cpu.gpr[d].i);
            continue;

        case MFSPR:
            assert((a >> 5) == 0);
            if(a == 0b00001) cpu.gpr[d].i = cpu.xer;
            else if(a == 0b01000) cpu.gpr[d].i = cpu.lr;
            else if(a == 0b01001) cpu.gpr[d].i = cpu.ctr;
            else{
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            continue;
        case MR:
            cpu.gpr[d].i = cpu.gpr[a].i;
            continue;
        case MTSPR:
            assert((d >> 5) == 0);
            if(d == 0b00001) cpu.xer = cpu.gpr[a].i;
            else if(d == 0b01000) cpu.lr = cpu.gpr[a].i;
            else if(d == 0b01001) cpu.ctr = cpu.gpr[a].i;
            else{
                cpu.pc -= 4;
                output_cur_info(cpu, mem, option);
                assert(false);
            }
            continue;

        case FADD:
            cpu.gpr[d].f = TasukuFukami::fadd(cpu.gpr[a].f, cpu.gpr[b].f);
            continue;
        case FSUB:
            cpu.gpr[d].f = TasukuFukami::fsub(cpu.gpr[a].f, cpu.gpr[b].f);
            continue;
        case FMUL:
            cpu.gpr[d].f = TasukuFukami::fmul(cpu.gpr[a].f, cpu.gpr[b].f);
            continue;
        case FDIV:
            cpu.gpr[d].f = TasukuFukami::fdiv(cpu.gpr[a].f, cpu.gpr[b].f, fpu, ovf);
            continue;
        case FABS:
            cpu.gpr[d].f = std::abs(cpu.gpr[a].f); // 多分これで問題ないよね...
            continue;
        case FNEG:
            cpu.gpr[d].f = -cpu.gpr[a].f;
            continue;
        case FSQRT:
            cpu.gpr[d].f = TasukuFukami::fsqrt(cpu.gpr[d].f, fpu);
            continue;
        case FFLOOR: // stdを使ってます
            cpu.gpr[d].f = std::floor(cpu.gpr[d].f);
            continue;
        case FHALF: // なにこれ
            cpu.gpr[d].f = TasukuFukami::fmul(cpu.gpr[a].f, 0.5);
            continue;
        case FSIN:
            cpu.gpr[d].f = TasukuFukami::sin(cpu.gpr[a].f, fpu);
            continue;
        case FCOS:
            cpu.gpr[d].f = TasukuFukami::cos(cpu.gpr[a].f, fpu);
            continue;
        case FATAN:
            cpu.gpr[d].f = TasukuFukami::atan(cpu.gpr[a].f, fpu);
            continue;
        case FCTIWZ:
            cpu.gpr[d].i = int(std::trunc(cpu.gpr[a].f));
            continue;
        case FCFIW:
            cpu.gpr[d].f = float(cpu.gpr[a].i);
            continue;
            
        default:
            cpu.pc -= 4;    
            output_cur_info(cpu, mem, option);
            warning(opcode_to_string(opc));
            assert(false);
            continue;
    }
}


void translator(MEMORY_PRO& mem, OPTION& option){
    std::ifstream ifs;
    std::string s;
    if(option.binTOasm){
        if(option.binary) ifs.open("run/bin");
        while((option.binary ? ifs : std::cin) >> s){
            auto[opc, d, a, b] = decode_bin(s);
            show_instr(mem, opc, d, a, b);
        }
    }
    else{
        if(option.assembly){
            INSTR_KIND opc;
            int d, a, b;
            for(int i = 0; i < mem.index / 4; i++){
                opc = mem.instr[i].opcode;
                d = mem.instr[i].rd;
                a = mem.instr[i].ra;
                b = mem.instr[i].rb;
                // if(i == 0) std::cout << opc << " " << d << " " << a << " " << b << std::endl;
                show_instr_binary(opc, d, a, b);
            }
        }
        else{
            while(std::getline(option.assembly ? ifs : std::cin, s)){
                auto vec = remove_chars(s, " ,\t\n");
                if(vec.size() == 0) continue;
                auto[opc, d, a, b] = recognize_instr(mem, vec);
                show_instr_binary(opc, d, a, b);
            }
        }
    }
}

void execution(CPU& cpu, MEMORY_PRO& mem_pro, OPTION& option, FPU& fpu, CACHE_PRO& cache_pro){
    if(option.exec_mode == 0){
        CACHE cache = (CACHE)cache_pro;
        exec_fast(cpu, mem_pro, fpu, cache);
        cache_pro.hit = cache.hit;
        cache_pro.miss = cache.miss;
        cache_pro.write_back = cache.write_back;
    }
    else if(option.exec_mode == 1) simulate_step(cpu, mem_pro, option, fpu, cache_pro);
}
