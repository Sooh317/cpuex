#pragma once
#include <assert.h>
#include <iostream>
#include <map>
#include "struct.hpp"
#include "option.hpp"
#include "instruction.hpp"
#include "struct.hpp"
#include "decode.hpp"
#include "util.hpp"
#include "fpu.hpp"

extern char flushed[1024*1024];
int flush = 0;

constexpr int addr_to_index(int k){ return k >> 2;}

INSTR instr_fetch(CPU& cpu, const MEMORY &mem){
    assert(cpu.pc < (unsigned int)mem.index);
    unsigned int pc = addr_to_index(cpu.pc);
    cpu.pc += 4;
    return mem.instr[pc];
}

bool exec(CPU& cpu, MEMORY&mem, OPTION& option, FPU& fpu){
    auto[opc, d, a, b] = instr_fetch(cpu, mem);
    if(option.display_assembly) show_instr(opc, d, a, b);
    if(option.display_binary) show_instr_binary(opc, d, a, b);
    int c, bi, ea, tmp;
    [[maybe_unused]] int bo;
    bool cond_ok, ctr_ok;
    switch(opc){
        case ADD:
            cpu.gpr[d] = cpu.gpr[a] + cpu.gpr[b];
            return false;
        case SUB:
            cpu.gpr[d] = cpu.gpr[a] - cpu.gpr[b];
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
        case CMPW:
            a = cpu.gpr[a];
            b = cpu.gpr[b];
            if(a < b) c = 0b100;
            else if(a > b) c = 0b010;
            else c = 0b001;
            tmp = cpu.cr;
            clear_and_set(tmp, 4*d, 4*d + 3, (c << 1) | (cpu.xer & 1));
            cpu.cr = tmp;
            return false;
        case BGT:   
            //bo = 0b01100;
            bi = d*4 + 1;
            cond_ok = kth_bit(cpu.cr, bi);
            if(cond_ok) cpu.pc = a;
            return false;
        case BLT:
            bi = d*4;
            cond_ok = kth_bit(cpu.cr, bi);
            if(cond_ok) cpu.pc = a;
            return false;
        case BNE:
            bi = d*4 + 2;
            cond_ok = kth_bit(cpu.cr, bi) ^ 1;
            if(cond_ok) cpu.pc = a;
            return false;
        case BL:    
            cpu.lr = cpu.pc;
            cpu.pc = d;
            return false;
        case BLR:
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
        case BCTRL:
            cpu.lr = cpu.pc;
            cpu.pc = segment(cpu.ctr, 0, 29) << 2;
            return false;
        case LWZ: 
            cpu.gpr[d] = mem.data.at(addr_to_index((b ? cpu.gpr[b] : 0) + a)).i;
            return false;
        case LWZU:
            ea = cpu.gpr[b] + a;
            cpu.gpr[d] = mem.data.at(addr_to_index(ea)).i;
            cpu.gpr[b] = ea;
            return false;
        case STW:   
            mem.data.at(addr_to_index((b ? cpu.gpr[b] : 0) + a)).i = cpu.gpr[d];
            return false;
        case STWU:
            ea = cpu.gpr[b] + a;
            mem.data.at(addr_to_index(ea)).i = cpu.gpr[d];
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
        case XORIS:
            cpu.gpr[d] = cpu.gpr[a] ^ (b << 16);
            return false;
        case FCTIWZ:
            cpu.gpr[d] = int(std::floor(cpu.fpr[a]));
            return false;
        case FCFIW:
            cpu.fpr[d] = float(cpu.gpr[a]);
            return false;
        case IN:
            std::cin >> tmp;
            cpu.gpr[d] = tmp;
            return false;
        case OUT: // imm + 1 byte目はどこ
            cpu.send_buf[cpu.sbptr++] = char(segment(cpu.gpr[d], 4*a, 4*a + 7));
            cpu.show_sendbuf();
            return false;
        case FLUSH: // 
            for(int i = 0; i < cpu.sbptr; i++) flushed[flush++] = cpu.send_buf[i];
            cpu.sbptr = 0;
            return false;
        case ORI:
            cpu.gpr[d] = cpu.gpr[a] | b;
            return false;
        case FABS:
            cpu.fpr[d] = std::abs(cpu.fpr[a]); // 多分これで問題ないよね...
            return false;
        case FADD:
            cpu.fpr[d] = fadd(cpu.fpr[a], cpu.fpr[b]);
            return false;
        case FCMPU: // NaNについては存在しないとする
            if(cpu.fpr[a] < cpu.fpr[b]) c = 0b1000;
            else if(cpu.fpr[a] > cpu.fpr[b]) c = 0b0100;
            else c = 0b0010;
            // fpcc 無視してます
            tmp = cpu.cr;
            clear_and_set(tmp, 4*d, 4*d + 3, c);
            cpu.cr = tmp;
            return false;
        case FDIV:
            cpu.fpr[d] = fdiv(cpu.fpr[a], cpu.fpr[b], fpu);
            return false;
        case FMR:
            cpu.fpr[d] = cpu.fpr[a];
            return false;
        case FMUL:
            cpu.fpr[d] = fmul(cpu.fpr[a], cpu.fpr[b]);
            return false;
        case FNEG:
            cpu.fpr[d] = -cpu.fpr[a];
            return false;
        case FSUB:
            cpu.fpr[d] = fsub(cpu.fpr[a], cpu.fpr[b]);
            return false;
        case FSQRT:
            cpu.fpr[d] = fsqrt(cpu.fpr[d], fpu);
            return false;
        case FFLOOR: // stdを使ってます
            cpu.fpr[d] = std::floor(cpu.fpr[d]);
            return false;
        case FHALF: // なにこれ
            cpu.fpr[d] = cpu.fpr[d] / 2.0;
            return false;
        case FCOS: // stdを使ってる
            cpu.fpr[d] = std::cos(cpu.fpr[d]);
            return false;
        case FSIN: // stdを使ってる
            cpu.fpr[d] = std::sin(cpu.fpr[d]);
            return false;
        case FATAN:
            cpu.fpr[d] = atan(cpu.fpr[d], fpu);
            return false;
        case LFS:
            tmp = (b == 0 ? 0 : cpu.gpr[b]);
            ea = tmp + a;
            cpu.fpr[d] = mem.data[addr_to_index(ea)].f;
            return false;
        case LFSX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = tmp + cpu.gpr[b];
            cpu.fpr[d] = mem.data[addr_to_index(ea)].f;
            return false;
        case STFSX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = tmp + cpu.gpr[b];
            mem.data[addr_to_index(ea)].f = cpu.fpr[d];
            return false;
        case LWZX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = tmp + cpu.gpr[b];
            cpu.gpr[d] = mem.data[addr_to_index(ea)].i;
            return false;
        case MULLI:
            cpu.gpr[d] = int(((long long)cpu.gpr[a] * (long long)b) & bitmask(32));
            return false;
        case MULHWU:
            cpu.gpr[d] = (int)((((long long)cpu.gpr[a] * (long long)cpu.gpr[b])) >> 32);
            return false;
        case SLWI:
            cpu.gpr[d] = cpu.gpr[a] << b;
            return false;
        case SRWI:
            cpu.gpr[d] = cpu.gpr[a] >> b;
            return false;
        case STFS: // LFSと同じ
            tmp = (b == 0 ? 0 : cpu.gpr[b]);
            ea = tmp + a;
            mem.data[addr_to_index(ea)].f = cpu.fpr[d];
            return false;
        case STWX:
            tmp = (a == 0 ? 0 : cpu.gpr[a]);
            ea = cpu.gpr[b] + a;
            mem.data[addr_to_index(ea)].i = cpu.gpr[d];
            return false;
        case HALT:
            return true;
        default:
            warning(opcode_to_string(opc));
            assert(false);
            return false;
    }
}

int simulate_whole(CPU& cpu, MEMORY &mem, OPTION& option, FPU& fpu){
    while(!exec(cpu, mem, option, fpu));
    std::cerr << "program finised!" << std::endl;
    return 0;
}

SHOW show_what(const std::vector<std::string>& s){
    SHOW ss;
    for(const char& c : s[0]){
        if(c == 's') ss.next = false;
        else if(c == 'g') ss.gr = true;
        else if(c == 'f') ss.fr = true;
        else if(c == 'c') ss.cr = true;
        else if(c == 't') ss.ctr = true;
        else if(c == 'l') ss.lr = true;
        else if(c == 'M') ss.M = true;
        else if(c == 'm') ss.m = true;
    }
    if(s.size() >= 2){
        for(int i = 1; i < (int)s.size(); i++) ss.addr.emplace_back(stoi(s[i]));
    }
    return ss;
}


int simulate_step(CPU& cpu, MEMORY &mem, OPTION& option, FPU& fpu){
    bool tmpb = false, tmpa = false;
    std::swap(tmpa, option.display_assembly);
    std::swap(tmpb, option.display_binary);
    while(1){
        option.label_ask(mem.lbl);
        if(!option.jump_to_label) break;
        exec(cpu, mem, option, fpu);
        while(cpu.pc != (unsigned int)option.label_addr){
            if(exec(cpu, mem, option, fpu)){
                std::cerr << "program finished!" << std::endl;
                return 0;
            }
        }
    }
    std::swap(tmpa, option.display_assembly);
    std::swap(tmpb, option.display_binary);

    std::string s;
    std::getline(std::cin, s);
    while(std::cout << "\033[36m> " << std::flush, std::getline(std::cin, s)){
        std::cout << "\033[m";
        SHOW ss = show_what(remove_chars(s, " -,"));
        if(ss.gr) cpu.show_gpr();
        if(ss.fr) cpu.show_fpr();
        if(ss.lr) cpu.show_lr();
        if(ss.cr) cpu.show_cr();
        if(ss.ctr) cpu.show_ctr();
        if(ss.m) mem.show_memory(ss);
        else if(ss.M) mem.show_memory(ss);
        if(ss.next) continue;
        if(exec(cpu, mem, option, fpu)){
            std::cerr << "program finished!" << std::endl;
            return 0;
        }
    }
    return 0;
}


void execution(CPU& cpu, MEMORY& mem, OPTION& option, FPU& fpu){
    if(option.exec_mode == 0) simulate_whole(cpu, mem, option, fpu);
    else if(option.exec_mode == 1) simulate_step(cpu, mem, option, fpu);
}


void translator(MEMORY& mem, OPTION& option){
    std::ifstream ifs;
    std::string s;
    mem.lbl["L"] = 0;
    if(option.binTOasm){
        if(option.binary) ifs.open("assembly_binary/binary.txt");
        while((option.binary ? ifs : std::cin) >> s){
            auto[opc, d, a, b] = decode_bin(s);
            show_instr(opc, d, a, b);
        }
    }
    else{
        if(option.assembly) ifs.open("assembly_binary/assembly.s");
        while(std::getline(option.assembly ? ifs : std::cin, s)){
            auto vec = remove_chars(s, " ,\t\n");
            if(vec.size() == 0) continue;
            auto [opc, d, a, b] = recognize_instr(mem.lbl, vec);
            show_instr_binary(opc, d, a, b);
        }
    }
}